uint64_t sub_236739EA0(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = *(result + 8);
  v4 = *(v3 + 64);
  v5 = *(*(v4 + 1) + 344);
  v6 = *(v5 + 4 * a2);
  v7 = (a2 << 32) + 0x100000000;
  LODWORD(v8) = *(v5 + (v7 >> 30));
  v9 = *(result + 40);
  v10 = v9 + *(v3 + 48);
  LODWORD(v5) = *(v4 + 12);
  v11 = atomic_load((*(v4 + 3) + 140));
  if (v10 < ((&v9[(v11 * v5)] + 7) & 0xFFFFFFFFFFFFFFF8))
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    v13 = v7 >> 32;
    while (v8 > v6)
    {
      v8 = (v8 - 1);
      result = sub_23673A03C(v8, *v4, *(v4 + 4), *(v4 + 1), *(v4 + 3), *(v4 + 12), *(v4 + 8), *(v4 + 10), *(v4 + 7), *(v4 + 9), v9);
    }

    v14 = *(v4 + 1);
    v15 = *(v14 + 368);
    v16 = *(v15 + 8 * v2);
    if (v16 < *(v15 + 8 * v13))
    {
      do
      {
        v17 = (*(v4 + 11) + 40 * *(*(v14 + 376) + 4 * v16));
        if (atomic_fetch_add_explicit(v17, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v18 = *(v12 + 16);
          if (v18)
          {
            do
            {
              __asm { CASP            X4, X5, X4, X5, [X1] }

              *(v18 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
              *(v18 + 32) = 0;
              _X2 = _X4 & 1 | v18;
              _X7 = 0;
              __asm { CASPL           X6, X7, X2, X3, [X1] }
            }

            while (_X6 != _X4);
            if (_X4)
            {
              result = __ulock_wake();
            }
          }

          *(v12 + 16) = v17;
          *(v12 + 24) = 0;
        }

        ++v16;
        v14 = *(v4 + 1);
      }

      while (v16 < *(*(v14 + 368) + 8 * v13));
    }
  }

  return result;
}

uint64_t sub_23673A03C(uint64_t result, int a2, unsigned int a3, void *a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11)
{
  v14 = result;
  if (a2 == 83)
  {
    v15 = *(a5[9] + 4 * result);
    v16 = *(a5[10] + 4 * result);
    v17 = *(a5[11] + 4 * result);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v18 = v15 + (*(a4[22] + 4 * (result + 1)) - *(a4[22] + 4 * result)) * a3;
  v19 = v15 + (*(a4[22] + 4 * (result + 1)) - *(a4[22] + 4 * result)) * a3;
  if (a2 == 83)
  {
    v19 = *(a5[8] + 4 * result);
  }

  v20 = 8 * (result + 1);
  v21 = (*(a4[25] + v20) - *(a4[25] + 8 * result)) * a3;
  v22 = *(a5[14] + 8 * result) + 8 + 16 * (v18 + v16 + (*(a4[23] + v20) - *(a4[23] + 8 * result)) * a3) * v18;
  v23 = v22 + 16 * (v21 + v17) * v18 + 4 * v18 + 4 * v16;
  if (a2 == 81)
  {
    v24 = 0;
  }

  else
  {
    v24 = (v22 + 16 * (v21 + v17) * v18);
  }

  if (a2 == 81)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  v26 = &v25[v18];
  if (v17 <= 0)
  {
    v26 = 0;
  }

  if (v19)
  {
    v27 = a11;
    v28 = a9;
    v69 = v18 + v17 + v21;
    if (a6 >= 1)
    {
      v29 = 0;
      v30 = a7;
      v31 = a9;
      v32 = a11;
      do
      {
        if (a2 == 81)
        {
          v33 = (a4[22] + 4 * v14);
          v34 = *v33 * a3;
          if (v34 >= (v33[1] * a3))
          {
            v36 = 0;
          }

          else
          {
            v35 = 0;
            do
            {
              v32[v35] = *(v30 + 16 * v34 + 16 * v35);
              ++v35;
            }

            while (v34 + v35 < *(a4[22] + 4 * v14 + 4) * a3);
            v36 = v35;
          }
        }

        else
        {
          if (v19 < 1)
          {
            v36 = 0;
          }

          else
          {
            v37 = v19;
            v38 = v24;
            v39 = v32;
            do
            {
              v41 = *v38++;
              v40 = v41;
              if (v41 < 0)
              {
                v40 = -v40;
              }

              *v39++ = *(a7 + 16 * v29 * a8 + 16 * v40);
              --v37;
            }

            while (v37);
            v36 = v19;
          }

          if (v36 < v18)
          {
            v42 = v36;
            do
            {
              v43 = v25[v42];
              if (v43 < 0)
              {
                v43 = -v43;
              }

              v32[v42++] = *(a9 + 16 * v29 * a10 + 16 * v43);
            }

            while (v18 != v42);
            v36 = v18;
          }
        }

        v44 = a4[25];
        v45 = (v44 + 8 * v14);
        for (i = *v45; i < v45[1]; ++i)
        {
          if (a3 >= 1)
          {
            v47 = v36;
            v36 += a3;
            v48 = a3;
            v49 = v31;
            do
            {
              v32[v47++] = *(v49 + 16 * (*(a4[26] + 4 * i) * a3));
              v49 += 16;
              --v48;
            }

            while (v48);
            v44 = a4[25];
          }

          v45 = (v44 + 8 * v14);
        }

        if (v17 >= 1)
        {
          v50 = v36;
          v51 = v17;
          v52 = v26;
          do
          {
            v53 = *v52++;
            v32[v50++] = *(a9 + 16 * v29 * a10 + 16 * v53);
            --v51;
          }

          while (v51);
        }

        ++v29;
        v32 += v69;
        v30 += 16 * a8;
        v31 += 16 * a10;
      }

      while (v29 != a6);
    }

    if (v18 > v19)
    {
      cblas_zgemm_NEWLAPACK();
    }

    if (v69 > v18)
    {
      cblas_zgemm_NEWLAPACK();
    }

    result = cblas_ztrsm_NEWLAPACK();
    if (a2 == 81)
    {
      if (a6 >= 1)
      {
        v54 = 0;
        v55 = a4[22];
        do
        {
          v56 = (v55 + 4 * v14);
          v57 = v56[1];
          v58 = *v56 * a3;
          v59 = v27;
          if (v58 < (v57 * a3))
          {
            do
            {
              v60 = *v59++;
              *(v28 + 16 * v58++) = v60;
              v55 = a4[22];
            }

            while (v58 < *(v55 + 4 * v14 + 4) * a3);
          }

          ++v54;
          v27 += v69;
          v28 += 16 * a10;
        }

        while (v54 != a6);
      }
    }

    else if (a6 >= 1)
    {
      v61 = 0;
      do
      {
        if (v19 >= 1)
        {
          v62 = v19;
          v63 = v25;
          v64 = v27;
          do
          {
            v66 = *v63++;
            v65 = v66;
            v67 = *v64++;
            *(a9 + 16 * v61 * a10 + 16 * v65) = v67;
            --v62;
          }

          while (v62);
        }

        ++v61;
        v27 += v69;
      }

      while (v61 != a6);
    }
  }

  return result;
}

void _SparseRetainNumeric_Complex_Double(uint64_t a1)
{
  _SparseRetainSymbolic((a1 + 8));
  v2 = *(a1 + 25);
  v3 = v2 > 0x29 || ((1 << v2) & 0x3000000001DLL) == 0;
  if (!v3 || v2 - 81 < 3)
  {
    atomic_fetch_add((*(a1 + 80) + 32), 1u);
  }
}

void _SparseDestroyOpaqueNumeric_Complex_Double(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 25);
    if (v3 <= 0x29)
    {
      if (((1 << v3) & 0x1D) != 0)
      {
        v4 = *(a1 + 32);
        v5 = *(a1 + 72);
        if (atomic_fetch_add((v2 + 32), 0xFFFFFFFF) != 1)
        {
          goto LABEL_24;
        }

        v6 = *(v4 + 64);
        if (v6 >= 1)
        {
          for (i = 0; i < v6; ++i)
          {
            if (**(*(v2 + 40) + 8 * i))
            {
              (*(v4 + 32))();
              v6 = *(v4 + 64);
            }
          }
        }

LABEL_22:
        if ((v5 & 1) == 0)
        {
LABEL_23:
          (*(v4 + 32))(v2);
        }

LABEL_24:
        *(a1 + 80) = 0;
        goto LABEL_25;
      }

      if (((1 << v3) & 0x30000000000) != 0)
      {
        v4 = *(a1 + 32);
        v8 = *(a1 + 72);
        if (atomic_fetch_add((v2 + 32), 0xFFFFFFFF) != 1 || (v8 & 1) != 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 72);
    if (atomic_fetch_add((v2 + 32), 0xFFFFFFFF) != 1)
    {
      goto LABEL_24;
    }

    if (*(v2 + 72))
    {
      v9 = *(v4 + 168);
      if (v9 >= 1)
      {
        for (j = 0; j < v9; ++j)
        {
          if (**(*(v2 + 112) + 8 * j))
          {
            (*(v4 + 32))();
            v9 = *(v4 + 168);
          }
        }
      }
    }

    goto LABEL_22;
  }

LABEL_25:
  _SparseDestroyOpaqueSymbolic((a1 + 8));
  *a1 = -2147483647;
}

void _SparseReleaseOpaquePreconditioner_Complex_Double(uint64_t a1)
{
  if ((*a1 & 0xFFFFFFFE) == 2)
  {
    free(*(a1 + 8));
  }
}

void sub_23673A7C4(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, float64x2_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, int *a12, atomic_uchar *a13)
{
  v13 = *a3;
  v14 = a4 - *a3;
  if (a4 > *a3)
  {
    v15 = a6[16];
    v16 = a6[11];
    v17 = a2;
    v18 = a2 + 1;
    if (*(a10 + 4 * *(v15 + 4 * v13)) < *(v16 + 4 * v18))
    {
      v19 = a6[15];
      v20 = *(v19 + 8 * v18);
      v21 = *(v19 + 8 * a2);
      v22 = *(*(a7 + 40) + 8 * v17);
      v23 = v20 - v21;
      v24 = v20 - v21;
      if (v20 > v21)
      {
        v25 = 0;
        v26 = v15 + 4 * v21;
        do
        {
          *(a11 + 4 * *(v26 + 4 * v25)) = v25;
          ++v25;
        }

        while (v24 != v25);
      }

      v27 = 0;
      v28 = a4 - v13;
      v29 = v15 + 4 * v13;
      do
      {
        v30 = *(v29 + 4 * v27);
        if (*(a10 + 4 * v30) >= *(v16 + 4 * v18))
        {
          if (v13 + v27 >= a4)
          {
            v28 = v27;
            if (a13)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v31 = &a12[v27];
            v32 = v27;
            do
            {
              *v31++ = *(a11 + 4 * *(v29 + 4 * v32++));
            }

            while (v14 != v32);
            v28 = v27;
            v27 = v32;
            if (a13)
            {
              goto LABEL_15;
            }
          }

LABEL_19:

          sub_23673A934(v27, v28, a12, a8, a9, v22 + 8, v23);
          return;
        }

        a12[v27] = *(a11 + 4 * v30);
        *a3 = v13 + v27++ + 1;
      }

      while (v14 != v27);
      v27 = (a4 - v13);
      if (!a13)
      {
        goto LABEL_19;
      }

LABEL_15:
        ;
      }

      sub_23673A934(v27, v28, a12, a8, a9, v22 + 8, v23);
      atomic_store(0, a13);
    }
  }
}

uint64_t sub_23673A934(uint64_t result, int a2, int *a3, float64x2_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 >= 1)
  {
    v7 = 0;
    v8 = result;
    v9 = a3;
    v10 = result;
    do
    {
      if (v7 < v8)
      {
        v11 = a6 + 16 * a3[v7] * a7;
        v12 = v10;
        v13 = a4;
        v14 = v9;
        do
        {
          v15 = *v14++;
          result = v15;
          v16 = *v13++;
          *(v11 + 16 * result) = vaddq_f64(v16, *(v11 + 16 * result));
          --v12;
        }

        while (v12);
      }

      ++v7;
      ++v9;
      a4 += a5 + 1;
      --v10;
    }

    while (v7 != a2);
  }

  return result;
}

void sub_23673A9B0(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, float64x2_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, int *a14, uint64_t a15, atomic_uchar *a16)
{
  v16 = *a4;
  v17 = a6 - *a4;
  if (a6 <= *a4)
  {
    return;
  }

  v18 = a8[16];
  v19 = a8[11];
  v20 = a2;
  v21 = a2 + 1;
  if (*(a12 + 4 * *(v18 + 4 * v16)) >= *(v19 + 4 * v21))
  {
    return;
  }

  v23 = a8[15];
  v24 = *(v23 + 8 * v21);
  v25 = *(v23 + 8 * v20);
  v26 = *(*(a9 + 40) + 8 * v20);
  v27 = v24 - v25;
  v28 = v24 - v25;
  if (v24 > v25)
  {
    v29 = 0;
    v30 = v18 + 4 * v25;
    do
    {
      *(a13 + 4 * *(v30 + 4 * v29)) = v29;
      ++v29;
    }

    while (v28 != v29);
  }

  v31 = 0;
  v32 = v26 + 8;
  v33 = a6 - v16;
  v34 = v16 + 1;
  v35 = v18 + 4 * v16;
  while (1)
  {
    v36 = *(v35 + 4 * v31);
    if (*(a12 + 4 * v36) >= *(v19 + 4 * v21))
    {
      break;
    }

    *(a15 + 4 * v31) = *(a13 + 4 * v36);
    *a4 = v34 + v31++;
    if (v17 == v31)
    {
      goto LABEL_11;
    }
  }

  v33 = v31;
LABEL_11:
  v37 = a5 - a3;
  if (a5 <= a3)
  {
    v37 = 0;
    if (a16)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v38 = (v18 + 4 * a3);
    v39 = a5 - a3;
    v40 = a14;
    do
    {
      v41 = *v38++;
      *v40++ = *(a13 + 4 * v41);
      --v39;
    }

    while (v39);
    if (a16)
    {
LABEL_15:
        ;
      }

      if (v33)
      {
        v42 = 0;
        v43 = v33;
        do
        {
          if (v37)
          {
            v44 = v32 + 16 * v27 * *(a15 + 4 * v42);
            v45 = a14;
            v46 = a10;
            v47 = v37;
            do
            {
              v49 = *v45++;
              v48 = v49;
              v50 = *v46++;
              *(v44 + 16 * v48) = vaddq_f64(v50, *(v44 + 16 * v48));
              --v47;
            }

            while (v47);
          }

          ++v42;
          a10 += a11;
        }

        while (v42 != v43);
      }

      atomic_store(0, a16);
      return;
    }
  }

  if (v33)
  {
    v51 = 0;
    v52 = v33;
    do
    {
      if (v37)
      {
        v53 = v32 + 16 * v27 * *(a15 + 4 * v51);
        v54 = a14;
        v55 = a10;
        v56 = v37;
        do
        {
          v58 = *v54++;
          v57 = v58;
          v59 = *v55++;
          *(v53 + 16 * v57) = vaddq_f64(v59, *(v53 + 16 * v57));
          --v56;
        }

        while (v56);
      }

      ++v51;
      a10 += a11;
    }

    while (v51 != v52);
  }
}

__n128 _SparseGetOptionsFromNumericFactor_Complex_Double@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 80);
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

void sub_23673ABB0(int *a1)
{
  v2 = a1[2];
  if (v2 == *a1)
  {
    v3 = *(a1 + 2);
    v4 = 16 * a1[1] * v2;

    bzero(v3, v4);
  }

  else if (a1[1] >= 1)
  {
    v5 = 0;
    do
    {
      bzero((*(a1 + 2) + 16 * a1[2] * v5++), 16 * *a1);
    }

    while (v5 < a1[1]);
  }
}

void *sub_23673AC48(int *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = malloc_type_malloc(8 * v3 + 4 * v4 + 8 * v4 + 96, 0x10900405D25300CuLL);
  v6 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
  v7 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
  v8 = malloc_type_malloc(8 * v4, 0x100004000313F17uLL);
  v9 = v8;
  if (v4 >= 1)
  {
    v10 = a1 + 5;
    v11 = v4;
    v12 = v6;
    v13 = v7;
    v14 = v8;
    do
    {
      *v12++ = *(v10 - 2);
      *v13++ = *(v10 - 1);
      v15 = *v10;
      v10 += 4;
      *v14++ = v15;
      --v11;
    }

    while (v11);
  }

  v16 = malloc_type_malloc(4 * v2, 0x100004052888210uLL);
  v17 = v16;
  if ((v2 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23673AF1C(v2);
    }

LABEL_14:
    _SparseTrap();
  }

  if ((v3 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23673AF9C(v3);
    }

    goto LABEL_14;
  }

  if ((v4 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23673B01C(v4);
    }

    goto LABEL_14;
  }

  v18 = 0;
  _SparseConvertFromCoordinate_Double(&v22, v2, v3, v4, 1u, v18, v6, v7, v9, ((v5 + 55) & 0xFFFFFFFFFFFFFFF0), v16);
  v19 = *&v22.structure.rowCount;
  v20 = *&v22.structure.rowIndices;
  v5[4] = v22.data;
  *v5 = v19;
  *(v5 + 1) = v20;
  free(v17);
  free(v9);
  free(v7);
  free(v6);
  return v5;
}

_DWORD *sub_23673AE54(int a1, int *a2, uint64_t a3, int a4)
{
  v4 = &a2[4 * a2[2]];
  v5 = v4[3];
  v6 = v4 + 4;
  if (a1)
  {
    v6 += 2 * v5;
    v5 = *v6;
  }

  if (!v5)
  {
    return 0;
  }

  v7 = *a2;
  v8 = v5 / *a2;
  if (a4)
  {
    v9 = malloc_type_malloc(0x18uLL, 0x108004032FBF093uLL);
    *v9 = v7;
    v9[1] = v8;
    v9[2] = v7;
    v9[3] = 0;
    *(v9 + 2) = v6;
  }

  else
  {
    v10 = 8 * v8 * v7;
    v9 = malloc_type_malloc(v10 + 40, 0x108004032FBF093uLL);
    v11 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF0);
    *v9 = v7;
    v9[1] = v8;
    v9[2] = v7;
    v9[3] = 0;
    *(v9 + 2) = v11;
    memcpy(v11, v6, v10);
  }

  return v9;
}

void sub_23673AF1C(int a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_2366B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "rowCount (%d) must be non-negative.\n", v1, 8u);
}

void sub_23673AF9C(int a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_2366B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "columnCount (%d) must be non-negative.\n", v1, 8u);
}

void sub_23673B01C(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = a1;
  _os_log_error_impl(&dword_2366B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "blockCount (%ld) must be non-negative.\n", &v1, 0xCu);
}

uint64_t sub_23673B0A0(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, __n128 a10, float32x4_t a11, double a12, double a13, float32x4_t a14)
{
  v16 = result;
  if (result < 65 || a2 <= 64)
  {
    if (result >= 1)
    {
      v35 = 0;
      v36 = a3;
      v37 = 4 * a4;
      do
      {
        v116 = v35;
        v38 = v16 - v35;
        if (v16 - v35 >= 32)
        {
          v39 = 32;
        }

        else
        {
          v39 = v16 - v35;
        }

        if (a2 >= 1)
        {
          v40 = 0;
          v41 = a6 + 4 * v116 * a7;
          result = v39;
          v118 = v36;
          do
          {
            if (a2 - v40 >= 32)
            {
              v42 = 32;
            }

            else
            {
              v42 = a2 - v40;
            }

            v43 = v40;
            if (a2 - v40 < 1)
            {
              v44 = 0;
              v46 = a4;
            }

            else
            {
              v44 = 0;
              v45 = a5 + 8 * v40;
              v46 = a4;
              do
              {
                v47 = *(v45 + 4 * (2 * v44));
                if (fabsf(v47) == INFINITY)
                {
                  v47 = 0.0;
                }

                v48 = 4 * v44;
                v49 = 4 * v43 + 4 * v44;
                if (v38 < 4)
                {
                  v55 = 0;
                }

                else
                {
                  v50 = 0;
                  v51 = (a8 + 4 * v48);
                  v52 = (v36 + a4 * v49);
                  do
                  {
                    v53 = *v52++;
                    a11 = vmulq_n_f32(v53, v47);
                    *v51 = a11;
                    v54 = v50 + 7;
                    v50 += 4;
                    v51 += 33;
                  }

                  while (v54 < v39);
                  v55 = v50;
                }

                if (v55 < v39)
                {
                  v56 = v36 + a4 * v49;
                  do
                  {
                    *(a8 + 4 * ((33 * (v55 & 0x7FFFFFFC) + v48) | v55 & 3)) = v47 * *(v56 + 4 * v55);
                    ++v55;
                  }

                  while (v55 < v39);
                }

                ++v44;
              }

              while (v44 < v42);
            }

            if (v38 < 4)
            {
              v95 = 0;
            }

            else
            {
              v57 = 0;
              v58 = (a3 + 4 * v43 * v46);
              do
              {
                v59 = v57 | 3;
                v60 = v57;
                if (v57 + 7 < v16)
                {
                  v61 = v58;
                  v62 = v57;
                  do
                  {
                    if (v44 < 1)
                    {
                      v70 = 0uLL;
                      v71 = 0uLL;
                      a14 = 0uLL;
                      v69 = 0uLL;
                      v67 = 0uLL;
                      v68 = 0uLL;
                      v63 = 0uLL;
                      a11 = 0uLL;
                    }

                    else
                    {
                      v63 = 0uLL;
                      v64 = v44;
                      a11 = 0uLL;
                      v65 = v61;
                      v66 = (a8 + 132 * v57);
                      v67 = 0uLL;
                      v68 = 0uLL;
                      a14 = 0uLL;
                      v69 = 0uLL;
                      v70 = 0uLL;
                      v71 = 0uLL;
                      do
                      {
                        v72 = v65[1];
                        v73 = *v66++;
                        v71 = vmlsq_lane_f32(v71, v72, *v73.f32, 0);
                        v70 = vmlsq_lane_f32(v70, *v65, *v73.f32, 0);
                        v69 = vmlsq_lane_f32(v69, v72, *v73.f32, 1);
                        a14 = vmlsq_lane_f32(a14, *v65, *v73.f32, 1);
                        v68 = vmlsq_laneq_f32(v68, v72, v73, 2);
                        v67 = vmlsq_laneq_f32(v67, *v65, v73, 2);
                        a11 = vmlsq_laneq_f32(a11, v72, v73, 3);
                        v63 = vmlsq_laneq_f32(v63, *v65, v73, 3);
                        v65 = (v65 + v37);
                        --v64;
                      }

                      while (v64);
                    }

                    v74 = (v41 + 4 * v57 * a7 + 4 * v62);
                    v75 = (v41 + 4 * (v57 | 1) * a7 + 4 * v62);
                    v76 = (v41 + 4 * (v57 | 2) * a7 + 4 * v62);
                    v77 = (v41 + 4 * v59 * a7 + 4 * v62);
                    if (v43)
                    {
                      v78 = vaddq_f32(v71, v74[1]);
                      *v74 = vaddq_f32(v70, *v74);
                      v74[1] = v78;
                      v79 = vaddq_f32(v69, v75[1]);
                      *v75 = vaddq_f32(a14, *v75);
                      v75[1] = v79;
                      a14 = *v76;
                      v80 = vaddq_f32(v68, v76[1]);
                      *v76 = vaddq_f32(v67, *v76);
                      v76[1] = v80;
                      a11 = vaddq_f32(a11, v77[1]);
                      v63 = vaddq_f32(v63, *v77);
                    }

                    else
                    {
                      *v74 = v70;
                      v74[1] = v71;
                      *v75 = a14;
                      v75[1] = v69;
                      *v76 = v67;
                      v76[1] = v68;
                    }

                    *v77 = v63;
                    v77[1] = a11;
                    v60 = v62 + 8;
                    v81 = v62 + 15;
                    v61 += 2;
                    v62 += 8;
                  }

                  while (v81 < v16);
                }

                if (v60 < v16)
                {
                  v82 = v41 + 4 * v57 * a7;
                  v83 = v41 + 4 * (v57 | 1) * a7;
                  v84 = v41 + 4 * (v57 | 2) * a7;
                  v85 = v41 + 4 * v59 * a7;
                  v86 = v60;
                  v87 = a3 + v37 * v43 + 4 * v60;
                  do
                  {
                    v88 = 0uLL;
                    if (v44 >= 1)
                    {
                      v89 = v44;
                      v90 = v87;
                      v91 = (a8 + 132 * v57);
                      do
                      {
                        a11.i32[0] = *v90;
                        v92 = *v91++;
                        v88 = vmlsq_lane_f32(v88, v92, *a11.f32, 0);
                        v90 = (v90 + v37);
                        --v89;
                      }

                      while (v89);
                    }

                    if (v43)
                    {
                      *(v82 + 4 * v86) = v88.f32[0] + *(v82 + 4 * v86);
                      *(v83 + 4 * v86) = v88.f32[1] + *(v83 + 4 * v86);
                      *(v84 + 4 * v86) = v88.f32[2] + *(v84 + 4 * v86);
                      *(v85 + 4 * v86) = v88.f32[3] + *(v85 + 4 * v86);
                    }

                    else
                    {
                      *(v82 + 4 * v86) = v88.i32[0];
                      *(v83 + 4 * v86) = v88.i32[1];
                      *(v84 + 4 * v86) = v88.i32[2];
                      *(v85 + 4 * v86) = v88.i32[3];
                    }

                    ++v86;
                    v87 += 4;
                  }

                  while (v86 < v16);
                }

                v93 = v57 + 4;
                v94 = v57 + 7;
                ++v58;
                v57 += 4;
              }

              while (v94 < v39);
              v95 = v93;
              v36 = v118;
            }

            if (v95 < v39)
            {
              v96 = (a3 + v37 * v43 + 4 * v95);
              do
              {
                v97 = v95;
                if (v95 + 7 < v16)
                {
                  v98 = v96;
                  v99 = v95;
                  do
                  {
                    v100 = 0uLL;
                    if (v44 < 1)
                    {
                      a11 = 0uLL;
                    }

                    else
                    {
                      v101 = v44;
                      v102 = v98;
                      v103 = (a8 + ((4 * (v95 & 3)) | (528 * (v95 >> 2))));
                      a11 = 0uLL;
                      do
                      {
                        v104 = *v103;
                        v103 += 4;
                        a14.i32[0] = v104;
                        a11 = vmlsq_lane_f32(a11, v102[1], *a14.f32, 0);
                        v100 = vmlsq_lane_f32(v100, *v102, *a14.f32, 0);
                        v102 = (v102 + v37);
                        --v101;
                      }

                      while (v101);
                    }

                    v105 = (v41 + 4 * v95 * a7 + 4 * v99);
                    if (v43)
                    {
                      a11 = vaddq_f32(a11, v105[1]);
                      v100 = vaddq_f32(v100, *v105);
                    }

                    *v105 = v100;
                    v105[1] = a11;
                    v97 = v99 + 8;
                    v106 = v99 + 15;
                    v98 += 2;
                    v99 += 8;
                  }

                  while (v106 < v16);
                }

                if (v97 < v16)
                {
                  v107 = v41 + 4 * v95 * a7;
                  v108 = v97;
                  v109 = a3 + v37 * v43 + 4 * v97;
                  do
                  {
                    v110 = 0.0;
                    if (v44 >= 1)
                    {
                      v111 = v44;
                      v112 = v109;
                      v113 = (a8 + ((4 * (v95 & 3)) | (528 * (v95 >> 2))));
                      do
                      {
                        v114 = *v113;
                        v113 += 4;
                        v110 = v110 - (*v112 * v114);
                        v112 = (v112 + v37);
                        --v111;
                      }

                      while (v111);
                    }

                    if (v43)
                    {
                      v110 = v110 + *(v107 + 4 * v108);
                    }

                    *(v107 + 4 * v108++) = v110;
                    v109 += 4;
                  }

                  while (v108 < v16);
                }

                ++v95;
                v96 = (v96 + 4);
              }

              while (v95 < v39);
            }

            v40 = v44 + v43;
          }

          while (v44 + v43 < a2);
        }

        v35 = v116 + 32;
        v36 += 128;
      }

      while (v116 + 32 < v16);
    }
  }

  else
  {
    v17 = 0;
    v18 = a3;
    v115 = a7 << 8;
    do
    {
      v19 = 0;
      v117 = v17;
      v20 = v16 - v17;
      if (v16 - v17 >= 64)
      {
        v21 = 64;
      }

      else
      {
        v21 = v16 - v17;
      }

      v22 = v21;
      do
      {
        if (a2 - v19 >= 64)
        {
          v23 = 64;
        }

        else
        {
          v23 = a2 - v19;
        }

        v24 = v19;
        if (a2 - v19 < 1)
        {
          v25 = 0;
        }

        else
        {
          v25 = 0;
          v26 = a5 + 8 * v19;
          v27 = 4 * v24;
          do
          {
            v28 = *(v26 + 8 * v25);
            if (fabsf(v28) == INFINITY)
            {
              v28 = 0.0;
            }

            if (v20 < 4)
            {
              v34 = 0;
            }

            else
            {
              v29 = 0;
              v30 = (a8 + (v25 << 8));
              v31 = (v18 + a4 * (v27 + 4 * v25));
              do
              {
                v32 = *v31++;
                *v30++ = vmulq_n_f32(v32, v28);
                v33 = v29 + 7;
                v29 += 4;
              }

              while (v33 < v22);
              v34 = v29;
            }

            if (v34 < v22)
            {
              do
              {
                *(a8 + (v25 << 8) + 4 * v34) = v28 * *(v18 + a4 * (v27 + 4 * v25) + 4 * v34);
                ++v34;
              }

              while (v34 < v22);
            }

            ++v25;
          }

          while (v25 < v23);
        }

        cblas_sgemm_NEWLAPACK();
        result = 64;
        v19 = v25 + v24;
      }

      while ((v25 + v24) < a2);
      a6 += v115;
      v17 = v117 + 64;
      v18 += 256;
    }

    while (v117 + 64 < v16);
  }

  return result;
}

uint64_t sub_23673BA10(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = result;
  if (result < 65 || a2 <= 64)
  {
    if (result < 1)
    {
      return result;
    }

    v31 = 0;
    v32 = a3;
    v33 = 8 * a4;
    while (1)
    {
      v147 = v31;
      v34 = v11 - v31;
      v35 = v11 - v31 >= 32 ? 32 : v11 - v31;
      if (a2 >= 1)
      {
        break;
      }

LABEL_101:
      v31 = v147 + 32;
      v32 += 256;
      if (v147 + 32 >= v11)
      {
        return result;
      }
    }

    v36 = 0;
    v37 = a6 + 8 * v147 * a7;
    result = v35;
    while (1)
    {
      v38 = a2 - v36 >= 32 ? 32 : a2 - v36;
      v39 = v36;
      if (a2 - v36 < 1)
      {
        v40 = 0;
        v42 = a4;
      }

      else
      {
        v40 = 0;
        v41 = a5 + 16 * v36;
        v42 = a4;
        do
        {
          v43 = *(v41 + 8 * (2 * v40));
          if (fabs(v43) == INFINITY)
          {
            v43 = 0.0;
          }

          v44 = 4 * v40;
          v45 = 8 * v39 + 8 * v40;
          if (v34 < 4)
          {
            v52 = 0;
          }

          else
          {
            v46 = 0;
            v47 = (a8 + 8 * v44);
            v48 = (v32 + a4 * v45);
            do
            {
              v50 = *v48;
              v49 = v48[1];
              v48 += 2;
              v51 = v46 + 7;
              *v47 = vmulq_n_f64(v50, v43);
              v47[1] = vmulq_n_f64(v49, v43);
              v46 += 4;
              v47 += 66;
            }

            while (v51 < v35);
            v52 = v46;
          }

          if (v52 < v35)
          {
            v53 = v32 + a4 * v45;
            do
            {
              *(a8 + 8 * ((33 * (v52 & 0x7FFFFFFC) + v44) | v52 & 3)) = v43 * *(v53 + 8 * v52);
              ++v52;
            }

            while (v52 < v35);
          }

          ++v40;
        }

        while (v40 < v38);
      }

      if (v34 >= 4)
      {
        break;
      }

      v123 = 0;
LABEL_79:
      if (v123 < v35)
      {
        v124 = (a3 + v33 * v39 + 8 * v123);
        do
        {
          v125 = v123;
          if (v123 + 7 < v11)
          {
            v126 = v124;
            v127 = v123;
            do
            {
              v128 = 0uLL;
              if (v40 < 1)
              {
                v132 = 0uLL;
                v133 = 0uLL;
                v134 = 0uLL;
              }

              else
              {
                v129 = v40;
                v130 = v126;
                v131 = (a8 + ((8 * (v123 & 3)) | (1056 * (v123 >> 2))));
                v132 = 0uLL;
                v133 = 0uLL;
                v134 = 0uLL;
                do
                {
                  v135 = *v131;
                  v131 += 4;
                  v133 = vmlsq_lane_f64(v133, v130[2], v135, 0);
                  v132 = vmlsq_lane_f64(v132, v130[1], v135, 0);
                  v128 = vmlsq_lane_f64(v128, *v130, v135, 0);
                  v134 = vmlsq_lane_f64(v134, v130[3], v135, 0);
                  v130 = (v130 + v33);
                  --v129;
                }

                while (v129);
              }

              v136 = (v37 + 8 * v123 * a7 + 8 * v127);
              if (v39)
              {
                v132 = vaddq_f64(v132, v136[1]);
                v128 = vaddq_f64(v128, *v136);
                v133 = vaddq_f64(v133, v136[2]);
                v134 = vaddq_f64(v134, v136[3]);
              }

              *v136 = v128;
              v136[1] = v132;
              v136[2] = v133;
              v136[3] = v134;
              v125 = v127 + 8;
              v137 = v127 + 15;
              v126 += 4;
              v127 += 8;
            }

            while (v137 < v11);
          }

          if (v125 < v11)
          {
            v138 = v37 + 8 * v123 * a7;
            v139 = v125;
            v140 = a3 + v33 * v39 + 8 * v125;
            do
            {
              v141 = 0.0;
              if (v40 >= 1)
              {
                v142 = v40;
                v143 = v140;
                v144 = (a8 + ((8 * (v123 & 3)) | (1056 * (v123 >> 2))));
                do
                {
                  v145 = *v144;
                  v144 += 4;
                  v141 = v141 - *v143 * v145;
                  v143 = (v143 + v33);
                  --v142;
                }

                while (v142);
              }

              if (v39)
              {
                v141 = v141 + *(v138 + 8 * v139);
              }

              *(v138 + 8 * v139++) = v141;
              v140 += 8;
            }

            while (v139 < v11);
          }

          ++v123;
          v124 = (v124 + 8);
        }

        while (v123 < v35);
      }

      v36 = v40 + v39;
      if (v40 + v39 >= a2)
      {
        goto LABEL_101;
      }
    }

    v54 = 0;
    v55 = (a3 + 8 * v39 * v42);
    while (1)
    {
      v56 = v54 | 3;
      v57 = v54;
      if (v54 + 7 < v11)
      {
        v58 = v55;
        v59 = v54;
        do
        {
          if (v40 < 1)
          {
            v75 = 0uLL;
            v76 = 0uLL;
            v77 = 0uLL;
            v78 = 0uLL;
            v71 = 0uLL;
            v72 = 0uLL;
            v73 = 0uLL;
            v74 = 0uLL;
            v67 = 0uLL;
            v68 = 0uLL;
            v69 = 0uLL;
            v70 = 0uLL;
            v60 = 0uLL;
            v62 = 0uLL;
            v64 = 0uLL;
            v66 = 0uLL;
          }

          else
          {
            v60 = 0uLL;
            v61 = v40;
            v62 = 0uLL;
            v63 = v58;
            v64 = 0uLL;
            v65 = (a8 + 264 * v54);
            v66 = 0uLL;
            v67 = 0uLL;
            v68 = 0uLL;
            v69 = 0uLL;
            v70 = 0uLL;
            v71 = 0uLL;
            v72 = 0uLL;
            v73 = 0uLL;
            v74 = 0uLL;
            v75 = 0uLL;
            v76 = 0uLL;
            v77 = 0uLL;
            v78 = 0uLL;
            do
            {
              v80 = v63[2];
              v79 = v63[3];
              v81 = v63[1];
              v83 = *v65;
              v82 = v65[1];
              v65 += 2;
              v76 = vmlsq_lane_f64(v76, v81, v83.f64[0], 0);
              v75 = vmlsq_lane_f64(v75, *v63, v83.f64[0], 0);
              v77 = vmlsq_lane_f64(v77, v80, v83.f64[0], 0);
              v78 = vmlsq_lane_f64(v78, v79, v83.f64[0], 0);
              v72 = vmlsq_laneq_f64(v72, v81, v83, 1);
              v71 = vmlsq_laneq_f64(v71, *v63, v83, 1);
              v73 = vmlsq_laneq_f64(v73, v80, v83, 1);
              v74 = vmlsq_laneq_f64(v74, v79, v83, 1);
              v68 = vmlsq_lane_f64(v68, v81, v82.f64[0], 0);
              v67 = vmlsq_lane_f64(v67, *v63, v82.f64[0], 0);
              v69 = vmlsq_lane_f64(v69, v80, v82.f64[0], 0);
              v70 = vmlsq_lane_f64(v70, v79, v82.f64[0], 0);
              v62 = vmlsq_laneq_f64(v62, v81, v82, 1);
              v60 = vmlsq_laneq_f64(v60, *v63, v82, 1);
              v64 = vmlsq_laneq_f64(v64, v80, v82, 1);
              v63 = (v63 + v33);
              v66 = vmlsq_laneq_f64(v66, v79, v82, 1);
              --v61;
            }

            while (v61);
          }

          v84 = (v37 + 8 * v54 * a7 + 8 * v59);
          v85 = (v37 + 8 * (v54 | 1) * a7 + 8 * v59);
          v86 = (v37 + 8 * (v54 | 2) * a7 + 8 * v59);
          v87 = (v37 + 8 * v56 * a7 + 8 * v59);
          if (v39)
          {
            v88 = vaddq_f64(v78, v84[3]);
            v89 = vaddq_f64(v77, v84[2]);
            v90 = vaddq_f64(v76, v84[1]);
            *v84 = vaddq_f64(v75, *v84);
            v84[1] = v90;
            v84[2] = v89;
            v84[3] = v88;
            v91 = vaddq_f64(v73, v85[2]);
            v92 = vaddq_f64(v72, v85[1]);
            v93 = vaddq_f64(v74, v85[3]);
            *v85 = vaddq_f64(v71, *v85);
            v85[1] = v92;
            v85[2] = v91;
            v85[3] = v93;
            v94 = vaddq_f64(v69, v86[2]);
            v95 = vaddq_f64(v68, v86[1]);
            v96 = vaddq_f64(v70, v86[3]);
            *v86 = vaddq_f64(v67, *v86);
            v86[1] = v95;
            v86[2] = v94;
            v86[3] = v96;
            v97 = vaddq_f64(v64, v87[2]);
            v98 = vaddq_f64(v62, v87[1]);
            v99 = vaddq_f64(v66, v87[3]);
            *v87 = vaddq_f64(v60, *v87);
            v87[1] = v98;
            v87[2] = v97;
            v87[3] = v99;
          }

          else
          {
            *v84 = v75;
            v84[1] = v76;
            v84[2] = v77;
            v84[3] = v78;
            *v85 = v71;
            v85[1] = v72;
            v85[2] = v73;
            v85[3] = v74;
            *v86 = v67;
            v86[1] = v68;
            v86[2] = v69;
            v86[3] = v70;
            v87[2] = v64;
            v87[3] = v66;
            *v87 = v60;
            v87[1] = v62;
          }

          v57 = v59 + 8;
          v100 = v59 + 15;
          v58 += 4;
          v59 += 8;
        }

        while (v100 < v11);
      }

      if (v57 < v11)
      {
        break;
      }

LABEL_76:
      v121 = v54 + 4;
      v122 = v54 + 7;
      v55 += 2;
      v54 += 4;
      if (v122 >= v35)
      {
        v123 = v121;
        goto LABEL_79;
      }
    }

    v101 = v37 + 8 * v54 * a7;
    v102 = v37 + 8 * (v54 | 1) * a7;
    v103 = v37 + 8 * (v54 | 2) * a7;
    v104 = v37 + 8 * v56 * a7;
    v105 = v57;
    v106 = a3 + v33 * v39 + 8 * v57;
    while (1)
    {
      if (v40 < 1)
      {
        v111 = 0.0;
        _D3 = 0.0;
        v110 = 0.0;
        _D1 = 0.0;
        if (!v39)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v107 = v40;
        v108 = v106;
        v109 = (a8 + 264 * v54);
        v110 = 0.0;
        v111 = 0.0;
        do
        {
          _D5 = *v108;
          _Q7 = *v109;
          _Q6 = v109[1];
          v109 += 2;
          v111 = v111 - *&_Q7 * *v108;
          __asm { FMLS            D3, D5, V7.D[1] }

          v110 = v110 - *&_Q6 * *v108;
          __asm { FMLS            D1, D5, V6.D[1] }

          v108 = (v108 + v33);
          --v107;
        }

        while (v107);
        if (!v39)
        {
LABEL_74:
          *(v101 + 8 * v105) = v111;
          *(v102 + 8 * v105) = _D3;
          *(v103 + 8 * v105) = v110;
          goto LABEL_75;
        }
      }

      *(v101 + 8 * v105) = v111 + *(v101 + 8 * v105);
      *(v102 + 8 * v105) = _D3 + *(v102 + 8 * v105);
      *(v103 + 8 * v105) = v110 + *(v103 + 8 * v105);
      _D1 = _D1 + *(v104 + 8 * v105);
LABEL_75:
      *(v104 + 8 * v105++) = _D1;
      v106 += 8;
      if (v105 >= v11)
      {
        goto LABEL_76;
      }
    }
  }

  v12 = 0;
  v13 = a3;
  v146 = a7 << 9;
  do
  {
    v14 = 0;
    v152 = v12;
    v15 = v11 - v12;
    if (v11 - v12 >= 64)
    {
      v16 = 64;
    }

    else
    {
      v16 = v11 - v12;
    }

    v17 = v16;
    do
    {
      if (a2 - v14 >= 64)
      {
        v18 = 64;
      }

      else
      {
        v18 = a2 - v14;
      }

      v19 = v14;
      if (a2 - v14 < 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = 0;
        v21 = a5 + 16 * v14;
        v22 = 8 * v19;
        do
        {
          v23 = *(v21 + 16 * v20);
          if (fabs(v23) == INFINITY)
          {
            v23 = 0.0;
          }

          if (v15 < 4)
          {
            v30 = 0;
          }

          else
          {
            v24 = 0;
            v25 = (a8 + (v20 << 9));
            v26 = (v13 + a4 * (v22 + 8 * v20));
            do
            {
              v28 = *v26;
              v27 = v26[1];
              v26 += 2;
              v29 = v24 + 7;
              *v25 = vmulq_n_f64(v28, v23);
              v25[1] = vmulq_n_f64(v27, v23);
              v25 += 2;
              v24 += 4;
            }

            while (v29 < v17);
            v30 = v24;
          }

          if (v30 < v17)
          {
            do
            {
              *(a8 + (v20 << 9) + 8 * v30) = v23 * *(v13 + a4 * (v22 + 8 * v20) + 8 * v30);
              ++v30;
            }

            while (v30 < v17);
          }

          ++v20;
        }

        while (v20 < v18);
      }

      cblas_dgemm_NEWLAPACK();
      result = 64;
      v14 = v20 + v19;
    }

    while ((v20 + v19) < a2);
    a6 += v146;
    v12 = v152 + 64;
    v13 += 512;
  }

  while (v152 + 64 < v11);
  return result;
}

uint64_t sub_23673C4A4(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, float32x4_t a12)
{
  v16 = result;
  __asm { FMOV            V0.4S, #-1.0 }

  if (result < 33 || a2 <= 32)
  {
    if (result < 1)
    {
      return result;
    }

    v48 = 0;
    v49 = 8 * a4;
    v50 = vnegq_f64(_Q0);
    for (i = a3; ; i += 256)
    {
      v152 = v48;
      v52 = v16 - v48;
      v53 = v16 - v48 >= 32 ? 32 : v16 - v48;
      if (a2 >= 1)
      {
        break;
      }

LABEL_114:
      v48 = v152 + 32;
      if (v152 + 32 >= v16)
      {
        return result;
      }
    }

    v54 = 0;
    v55 = a6 + 8 * v152 * a7;
    result = v53;
    v156 = v53;
    while (1)
    {
      v56 = a2 - v54 >= 32 ? 32 : a2 - v54;
      v57 = v54;
      if (a2 - v54 < 1)
      {
        v58 = 0;
      }

      else
      {
        v58 = 0;
        v59 = a5 + 16 * v54;
        v60 = 8 * v54;
        do
        {
          v61 = (v59 + 8 * (2 * v58));
          v62 = *v61;
          v63 = v61[1];
          v64 = fabsf(*v61) == INFINITY;
          if (fabsf(v63) == INFINITY)
          {
            v64 = 1;
          }

          if (v64)
          {
            a12.f32[0] = 0.0;
          }

          else
          {
            a12.f32[0] = v62;
          }

          if (v64)
          {
            v65 = 0.0;
          }

          else
          {
            v65 = v63;
          }

          v66 = vmulq_n_f32(v50, v65);
          v67 = 4 * v58;
          v68 = v60 + 8 * v58;
          if (v52 < 4)
          {
            v76 = 0;
          }

          else
          {
            v69 = 0;
            v70 = vdupq_lane_s32(*a12.f32, 0);
            v71 = (a8 + 8 * v67);
            v72 = (i + a4 * v68);
            do
            {
              v74 = *v72;
              v73 = v72[1];
              v72 += 2;
              v75 = v69 + 7;
              *v71 = vmlaq_f32(vmulq_f32(v66, vrev64q_s32(v74)), v70, v74);
              v71[1] = vmlaq_f32(vmulq_f32(v66, vrev64q_s32(v73)), v70, v73);
              v69 += 4;
              v71 += 66;
            }

            while (v75 < result);
            v76 = v69;
          }

          if (v76 < v53)
          {
            *a12.f32 = vdup_lane_s32(*a12.f32, 0);
            v77 = i + a4 * v68;
            do
            {
              *(a8 + 8 * ((33 * (v76 & 0x7FFFFFFC) + v67) | v76 & 3)) = vmla_f32(vmul_f32(*v66.f32, vrev64_s32(*(v77 + 8 * v76))), *a12.f32, *(v77 + 8 * v76));
              ++v76;
            }

            while (v76 < result);
          }

          ++v58;
        }

        while (v58 < v56);
      }

      __asm { FMOV            V2.2S, #-1.0 }

      if (v52 >= 4)
      {
        break;
      }

      v129 = 0;
LABEL_92:
      if (v129 < v53)
      {
        v130 = (a3 + v49 * v57 + 8 * v129);
        do
        {
          v131 = v129;
          if (v129 + 3 < v16)
          {
            v132 = v130;
            v133 = v129;
            do
            {
              a12 = 0uLL;
              if (v58 < 1)
              {
                v137 = 0uLL;
              }

              else
              {
                v134 = v58;
                v135 = v132;
                v136 = (a8 + 8 * ((33 * (v129 & 0x7FFFFFFC)) & 0xFFFFFFFC | v129 & 3));
                v137 = 0uLL;
                do
                {
                  v138 = *v136;
                  v136 += 4;
                  v139 = vmulq_lane_f32(v50, v138, 1);
                  v137 = vsubq_f32(v137, vmlaq_n_f32(vmulq_f32(vrev64q_s32(v135[1]), v139), v135[1], v138.f32[0]));
                  a12 = vsubq_f32(a12, vmlaq_n_f32(vmulq_f32(vrev64q_s32(*v135), v139), *v135, v138.f32[0]));
                  v135 = (v135 + v49);
                  --v134;
                }

                while (v134);
              }

              v140 = (v55 + 8 * v129 * a7 + 8 * v133);
              if (v57)
              {
                v137 = vaddq_f32(v137, v140[1]);
                a12 = vaddq_f32(a12, *v140);
              }

              *v140 = a12;
              v140[1] = v137;
              v131 = v133 + 4;
              v141 = v133 + 7;
              v132 += 2;
              v133 += 4;
            }

            while (v141 < v16);
          }

          if (v131 < v16)
          {
            v142 = v55 + 8 * v129 * a7;
            v143 = v131;
            v144 = a3 + v49 * v57 + 8 * v131;
            do
            {
              a12.i64[0] = 0;
              if (v58 >= 1)
              {
                v145 = v58;
                v146 = v144;
                v147 = (a8 + 8 * ((33 * (v129 & 0x7FFFFFFC)) & 0xFFFFFFFC | v129 & 3));
                do
                {
                  v148 = *v147;
                  v147 += 4;
                  *a12.f32 = vsub_f32(*a12.f32, vmla_n_f32(vmul_f32(vrev64_s32(*v146), vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), v148, 1)), *v146, v148.f32[0]));
                  v146 = (v146 + v49);
                  --v145;
                }

                while (v145);
              }

              if (v57)
              {
                *a12.f32 = vadd_f32(*a12.f32, *(v142 + 8 * v143));
              }

              *(v142 + 8 * v143++) = a12.i64[0];
              v144 += 8;
            }

            while (v143 < v16);
          }

          ++v129;
          v130 = (v130 + 8);
        }

        while (v129 < result);
      }

      v54 = v58 + v57;
      if (v58 + v57 >= a2)
      {
        goto LABEL_114;
      }
    }

    v79 = 0;
    v80 = a3 + 8 * v57 * a4;
    while (1)
    {
      v81 = v79 | 3;
      v82 = v79;
      if ((v79 | 3uLL) < v16)
      {
        v83 = v80;
        v84 = v79;
        do
        {
          if (v58 < 1)
          {
            v93 = 0uLL;
            v94 = 0uLL;
            v91 = 0uLL;
            v92 = 0uLL;
            v89 = 0uLL;
            v90 = 0uLL;
            a12 = 0uLL;
            v86 = 0uLL;
          }

          else
          {
            a12 = 0uLL;
            v85 = v58;
            v86 = 0uLL;
            v87 = v83;
            v88 = (a8 + 264 * v79);
            v89 = 0uLL;
            v90 = 0uLL;
            v91 = 0uLL;
            v92 = 0uLL;
            v93 = 0uLL;
            v94 = 0uLL;
            do
            {
              v95 = *(v87 + 16);
              v96 = vrev64q_s32(*v87);
              v97 = vrev64q_s32(v95);
              v99 = *v88;
              v98 = v88[1];
              v88 += 2;
              v100 = vmulq_lane_f32(v50, *v99.f32, 1);
              v94 = vsubq_f32(v94, vmlaq_n_f32(vmulq_f32(v97, v100), v95, v99.f32[0]));
              v93 = vsubq_f32(v93, vmlaq_n_f32(vmulq_f32(v96, v100), *v87, v99.f32[0]));
              v101 = vmulq_laneq_f32(v50, v99, 3);
              v92 = vsubq_f32(v92, vmlaq_laneq_f32(vmulq_f32(v97, v101), v95, v99, 2));
              v91 = vsubq_f32(v91, vmlaq_laneq_f32(vmulq_f32(v96, v101), *v87, v99, 2));
              v102 = vmulq_lane_f32(v50, *v98.f32, 1);
              v90 = vsubq_f32(v90, vmlaq_n_f32(vmulq_f32(v97, v102), v95, v98.f32[0]));
              v89 = vsubq_f32(v89, vmlaq_n_f32(vmulq_f32(v96, v102), *v87, v98.f32[0]));
              v103 = vmulq_laneq_f32(v50, v98, 3);
              v86 = vsubq_f32(v86, vmlaq_laneq_f32(vmulq_f32(v97, v103), v95, v98, 2));
              a12 = vsubq_f32(a12, vmlaq_laneq_f32(vmulq_f32(v96, v103), *v87, v98, 2));
              v87 += v49;
              --v85;
            }

            while (v85);
          }

          v104 = (v55 + 8 * v79 * a7 + 8 * v84);
          v105 = (v55 + 8 * (v79 | 1) * a7 + 8 * v84);
          v106 = (v55 + 8 * (v79 | 2) * a7 + 8 * v84);
          v107 = (v55 + 8 * v81 * a7 + 8 * v84);
          if (v57)
          {
            v108 = vaddq_f32(v94, v104[1]);
            *v104 = vaddq_f32(v93, *v104);
            v104[1] = v108;
            v109 = vaddq_f32(v92, v105[1]);
            *v105 = vaddq_f32(v91, *v105);
            v105[1] = v109;
            v110 = vaddq_f32(v90, v106[1]);
            *v106 = vaddq_f32(v89, *v106);
            v106[1] = v110;
            v86 = vaddq_f32(v86, v107[1]);
            a12 = vaddq_f32(a12, *v107);
          }

          else
          {
            *v104 = v93;
            v104[1] = v94;
            *v105 = v91;
            v105[1] = v92;
            *v106 = v89;
            v106[1] = v90;
          }

          *v107 = a12;
          v107[1] = v86;
          v82 = v84 + 4;
          v111 = v84 + 7;
          v83 += 32;
          v84 += 4;
        }

        while (v111 < v16);
      }

      if (v82 < v16)
      {
        break;
      }

LABEL_89:
      v127 = v79 + 4;
      v128 = v79 + 7;
      v80 += 32;
      v79 += 4;
      if (v128 >= result)
      {
        v129 = v127;
        v53 = v156;
        goto LABEL_92;
      }
    }

    v112 = v55 + 8 * v79 * a7;
    v113 = v55 + 8 * (v79 | 1) * a7;
    v114 = v55 + 8 * (v79 | 2) * a7;
    v115 = v55 + 8 * v81 * a7;
    v116 = v82;
    v117 = a3 + v49 * v57 + 8 * v82;
    while (1)
    {
      if (v58 < 1)
      {
        v123 = 0;
        v122 = 0;
        v121 = 0;
        a12.i64[0] = 0;
        if (!v57)
        {
          goto LABEL_87;
        }
      }

      else
      {
        a12.i64[0] = 0;
        v118 = v58;
        v119 = v117;
        v120 = (a8 + 264 * v79);
        v121 = 0;
        v122 = 0;
        v123 = 0;
        do
        {
          v124 = vrev64_s32(*v119);
          v126 = *v120;
          v125 = v120[1];
          v120 += 2;
          v123 = vsub_f32(v123, vmla_n_f32(vmul_f32(v124, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), *v126.f32, 1)), *v119, v126.f32[0]));
          v122 = vsub_f32(v122, vmla_laneq_f32(vmul_f32(v124, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D2), v126, 3)), *v119, v126, 2));
          v121 = vsub_f32(v121, vmla_n_f32(vmul_f32(v124, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), *v125.f32, 1)), *v119, v125.f32[0]));
          *a12.f32 = vsub_f32(*a12.f32, vmla_laneq_f32(vmul_f32(v124, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D2), v125, 3)), *v119, v125, 2));
          v119 = (v119 + v49);
          --v118;
        }

        while (v118);
        if (!v57)
        {
LABEL_87:
          *(v112 + 8 * v116) = v123;
          *(v113 + 8 * v116) = v122;
          *(v114 + 8 * v116) = v121;
          goto LABEL_88;
        }
      }

      *(v112 + 8 * v116) = vadd_f32(v123, *(v112 + 8 * v116));
      *(v113 + 8 * v116) = vadd_f32(v122, *(v113 + 8 * v116));
      *(v114 + 8 * v116) = vadd_f32(v121, *(v114 + 8 * v116));
      *a12.f32 = vadd_f32(*a12.f32, *(v115 + 8 * v116));
LABEL_88:
      *(v115 + 8 * v116++) = a12.i64[0];
      v117 += 8;
      if (v116 == v16)
      {
        goto LABEL_89;
      }
    }
  }

  v22 = 0;
  v150 = a7 << 9;
  v155 = vnegq_f64(_Q0);
  v23 = a3;
  v149 = result;
  do
  {
    v24 = 0;
    v151 = v22;
    v25 = v149 - v22;
    if (v149 - v22 >= 64)
    {
      v26 = 64;
    }

    else
    {
      v26 = v149 - v22;
    }

    v27 = v26;
    do
    {
      if (a2 - v24 >= 64)
      {
        v28 = 64;
      }

      else
      {
        v28 = a2 - v24;
      }

      v29 = v24;
      if (a2 - v24 < 1)
      {
        v30 = 0;
      }

      else
      {
        v30 = 0;
        v31 = a5 + 16 * v24;
        do
        {
          v32 = (v31 + 16 * v30);
          v33 = *v32;
          v34 = v32[1];
          v35 = fabsf(*v32) == INFINITY;
          if (fabsf(v34) == INFINITY)
          {
            v35 = 1;
          }

          if (v35)
          {
            *&a10 = 0.0;
          }

          else
          {
            *&a10 = v33;
          }

          if (v35)
          {
            v36 = 0.0;
          }

          else
          {
            v36 = v34;
          }

          v37 = vmulq_n_f32(v155, v36);
          v38 = 8 * v29 + 8 * v30;
          if (v25 < 4)
          {
            v46 = 0;
          }

          else
          {
            v39 = 0;
            v40 = vdupq_lane_s32(*&a10, 0);
            v41 = (a8 + (v30 << 9));
            v42 = (v23 + a4 * v38);
            do
            {
              v44 = *v42;
              v43 = v42[1];
              v42 += 2;
              v45 = v39 + 7;
              *v41 = vmlaq_f32(vmulq_f32(v37, vrev64q_s32(v44)), v40, v44);
              v41[1] = vmlaq_f32(vmulq_f32(v37, vrev64q_s32(v43)), v40, v43);
              v41 += 2;
              v39 += 4;
            }

            while (v45 < v27);
            v46 = v39;
          }

          if (v46 < v27)
          {
            a10 = COERCE_DOUBLE(vdup_lane_s32(*&a10, 0));
            v47 = v23 + a4 * v38;
            do
            {
              *(a8 + (v30 << 9) + 8 * v46) = vmla_f32(vmul_f32(*v37.f32, vrev64_s32(*(v47 + 8 * v46))), *&a10, *(v47 + 8 * v46));
              ++v46;
            }

            while (v46 < v27);
          }

          ++v30;
        }

        while (v30 < v28);
      }

      result = cblas_cgemm_NEWLAPACK();
      v24 = v30 + v29;
    }

    while ((v30 + v29) < a2);
    a6 += v150;
    v22 = v151 + 64;
    v23 += 512;
  }

  while (v151 + 64 < v16);
  return result;
}

uint64_t sub_23673D0B8(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  if (result < 33 || a2 <= 32)
  {
    if (result < 1)
    {
      return result;
    }

    v42 = 0;
    v43 = 16 * a4;
    v44 = xmmword_23681FB50;
    for (i = a3; ; i += 512)
    {
      v210 = v42;
      v46 = v12 - v42;
      v47 = v12 - v42 >= 32 ? 32 : v12 - v42;
      if (a2 >= 1)
      {
        break;
      }

LABEL_114:
      v42 = v210 + 32;
      if (v210 + 32 >= v12)
      {
        return result;
      }
    }

    v48 = 0;
    v49 = a6 + 16 * v42 * a7;
    result = v47;
    while (1)
    {
      v50 = a2 - v48 >= 32 ? 32 : a2 - v48;
      v51 = v48;
      if (a2 - v48 < 1)
      {
        v52 = 0;
      }

      else
      {
        v52 = 0;
        v53 = a5 + 32 * v48;
        v54 = 16 * v48;
        do
        {
          v55 = (v53 + 16 * (2 * v52));
          v56 = *v55;
          v57 = v55[1];
          v58 = fabs(*v55) == INFINITY;
          if (fabs(v57) == INFINITY)
          {
            v58 = 1;
          }

          if (v58)
          {
            v59 = 0.0;
          }

          else
          {
            v59 = v56;
          }

          if (v58)
          {
            v60 = 0.0;
          }

          else
          {
            v60 = v57;
          }

          v61 = vmulq_n_f64(v44, v60);
          v62 = 4 * v52;
          v63 = v54 + 16 * v52;
          if (v46 < 4)
          {
            v72 = 0;
          }

          else
          {
            v64 = 0;
            v65 = vdupq_lane_s64(*&v59, 0);
            v66 = (a8 + 16 * v62);
            v67 = (i + a4 * v63);
            do
            {
              v68 = vmlaq_f64(vmulq_f64(v61, vextq_s8(v67[3], v67[3], 8uLL)), v65, v67[3]);
              v69 = vmlaq_f64(vmulq_f64(v61, vextq_s8(v67[1], v67[1], 8uLL)), v65, v67[1]);
              v70 = vmlaq_f64(vmulq_f64(v61, vextq_s8(v67[2], v67[2], 8uLL)), v65, v67[2]);
              *v66 = vmlaq_f64(vmulq_f64(v61, vextq_s8(*v67, *v67, 8uLL)), v65, *v67);
              v66[1] = v69;
              v71 = v64 + 7;
              v66[2] = v70;
              v66[3] = v68;
              v64 += 4;
              v66 += 132;
              v67 += 4;
            }

            while (v71 < v47);
            v72 = v64;
          }

          if (v72 < v47)
          {
            v73 = vdupq_lane_s64(*&v59, 0);
            v74 = i + a4 * v63;
            do
            {
              *(a8 + 16 * ((33 * (v72 & 0x7FFFFFFC) + v62) | v72 & 3)) = vmlaq_f64(vmulq_f64(v61, vextq_s8(*(v74 + 16 * v72), *(v74 + 16 * v72), 8uLL)), v73, *(v74 + 16 * v72));
              ++v72;
            }

            while (v72 < v47);
          }

          ++v52;
        }

        while (v52 < v50);
      }

      if (v46 >= 4)
      {
        break;
      }

      v186 = 0;
LABEL_92:
      if (v186 < v47)
      {
        v187 = (a3 + v43 * v51 + 16 * v186);
        do
        {
          v188 = v186;
          if (v186 + 3 < v12)
          {
            v189 = v187;
            v190 = v186;
            do
            {
              v191 = 0uLL;
              if (v52 < 1)
              {
                v195 = 0uLL;
                v196 = 0uLL;
                v197 = 0uLL;
              }

              else
              {
                v192 = v52;
                v193 = v189;
                v194 = (a8 + 16 * ((33 * (v186 & 0x7FFFFFFC)) & 0xFFFFFFFC | v186 & 3));
                v195 = 0uLL;
                v196 = 0uLL;
                v197 = 0uLL;
                do
                {
                  v198 = *v194;
                  v194 += 4;
                  v199 = vmulq_laneq_f64(v44, v198, 1);
                  v197 = vsubq_f64(v197, vmlaq_n_f64(vmulq_f64(vextq_s8(v193[3], v193[3], 8uLL), v199), v193[3], v198.f64[0]));
                  v196 = vsubq_f64(v196, vmlaq_n_f64(vmulq_f64(vextq_s8(v193[2], v193[2], 8uLL), v199), v193[2], v198.f64[0]));
                  v195 = vsubq_f64(v195, vmlaq_n_f64(vmulq_f64(vextq_s8(v193[1], v193[1], 8uLL), v199), v193[1], v198.f64[0]));
                  v191 = vsubq_f64(v191, vmlaq_n_f64(vmulq_f64(vextq_s8(*v193, *v193, 8uLL), v199), *v193, v198.f64[0]));
                  v193 = (v193 + v43);
                  --v192;
                }

                while (v192);
              }

              v200 = (v49 + 16 * v186 * a7 + 16 * v190);
              if (v51)
              {
                v195 = vaddq_f64(v195, v200[1]);
                v191 = vaddq_f64(v191, *v200);
                v196 = vaddq_f64(v196, v200[2]);
                v197 = vaddq_f64(v197, v200[3]);
              }

              *v200 = v191;
              v200[1] = v195;
              v200[2] = v196;
              v200[3] = v197;
              v188 = v190 + 4;
              v201 = v190 + 7;
              v189 += 4;
              v190 += 4;
            }

            while (v201 < v12);
          }

          if (v188 < v12)
          {
            v202 = v49 + 16 * v186 * a7;
            v203 = v188;
            v204 = a3 + v43 * v51 + 16 * v188;
            do
            {
              v205 = 0uLL;
              if (v52 >= 1)
              {
                v206 = v52;
                v207 = v204;
                v208 = (a8 + 16 * ((33 * (v186 & 0x7FFFFFFC)) & 0xFFFFFFFC | v186 & 3));
                do
                {
                  v209 = *v208;
                  v208 += 4;
                  v205 = vsubq_f64(v205, vmlaq_n_f64(vmulq_f64(vextq_s8(*v207, *v207, 8uLL), vmulq_laneq_f64(v44, v209, 1)), *v207, v209.f64[0]));
                  v207 = (v207 + v43);
                  --v206;
                }

                while (v206);
              }

              if (v51)
              {
                v205 = vaddq_f64(v205, *(v202 + 16 * v203));
              }

              *(v202 + 16 * v203++) = v205;
              v204 += 16;
            }

            while (v203 < v12);
          }

          ++v186;
          ++v187;
        }

        while (v186 < v47);
      }

      v48 = v52 + v51;
      if (v52 + v51 >= a2)
      {
        goto LABEL_114;
      }
    }

    v75 = 0;
    v76 = a3 + 16 * v51 * a4;
    while (1)
    {
      v77 = v75 | 3;
      v78 = v75;
      if ((v75 | 3uLL) < v12)
      {
        v79 = v76;
        v80 = v75;
        do
        {
          if (v52 < 1)
          {
            v96 = 0uLL;
            v97 = 0uLL;
            v98 = 0uLL;
            v99 = 0uLL;
            v92 = 0uLL;
            v93 = 0uLL;
            v94 = 0uLL;
            v95 = 0uLL;
            v88 = 0uLL;
            v89 = 0uLL;
            v90 = 0uLL;
            v91 = 0uLL;
            v81 = 0uLL;
            v83 = 0uLL;
            v85 = 0uLL;
            v87 = 0uLL;
          }

          else
          {
            v81 = 0uLL;
            v82 = v52;
            v83 = 0uLL;
            v84 = v79;
            v85 = 0uLL;
            v86 = (a8 + 528 * v75);
            v87 = 0uLL;
            v88 = 0uLL;
            v89 = 0uLL;
            v90 = 0uLL;
            v91 = 0uLL;
            v92 = 0uLL;
            v93 = 0uLL;
            v94 = 0uLL;
            v95 = 0uLL;
            v96 = 0uLL;
            v97 = 0uLL;
            v98 = 0uLL;
            v99 = 0uLL;
            do
            {
              v216 = v96;
              v218 = v95;
              v219 = v94;
              v220 = v93;
              v221 = v92;
              v101 = *(v84 + 32);
              v100 = *(v84 + 48);
              v102 = *(v84 + 16);
              v103 = vextq_s8(*v84, *v84, 8uLL);
              v104 = vextq_s8(v102, v102, 8uLL);
              v105 = vextq_s8(v101, v101, 8uLL);
              v106 = vextq_s8(v100, v100, 8uLL);
              v107 = v86[2];
              v108 = v86[3];
              v110 = *v86;
              v109 = v86[1];
              v86 += 4;
              v111 = vmulq_laneq_f64(xmmword_23681FB50, v110, 1);
              v112 = vmulq_f64(v106, v111);
              v113 = vmulq_f64(v105, v111);
              v114 = vmulq_f64(v104, v111);
              v115 = vmlaq_n_f64(vmulq_f64(v103, v111), *v84, v110.f64[0]);
              v116 = vmlaq_n_f64(v114, v102, v110.f64[0]);
              v117 = vmlaq_n_f64(v113, v101, v110.f64[0]);
              v118 = vmlaq_n_f64(v112, v100, v110.f64[0]);
              v119 = vmulq_laneq_f64(xmmword_23681FB50, v109, 1);
              v120 = vmulq_f64(v106, v119);
              v121 = vmulq_f64(v105, v119);
              v122 = v91;
              v123 = v90;
              v124 = v88;
              v125 = v81;
              v126 = vmulq_f64(v104, v119);
              v127 = vmlaq_n_f64(vmulq_f64(v103, v119), *v84, v109.f64[0]);
              v128 = vmlaq_n_f64(v126, v102, v109.f64[0]);
              v129 = vmlaq_n_f64(v121, v101, v109.f64[0]);
              v130 = vmlaq_n_f64(v120, v100, v109.f64[0]);
              v131 = vmulq_laneq_f64(xmmword_23681FB50, v107, 1);
              v132 = v83;
              v133 = vmulq_f64(v106, v131);
              v134 = vmulq_f64(v105, v131);
              v135 = vmulq_f64(v104, v131);
              v136 = vmlaq_n_f64(vmulq_f64(v103, v131), *v84, v107.f64[0]);
              v137 = vmlaq_n_f64(v135, v102, v107.f64[0]);
              v138 = vmlaq_n_f64(v134, v101, v107.f64[0]);
              v139 = vmlaq_n_f64(v133, v100, v107.f64[0]);
              v140 = vmulq_laneq_f64(xmmword_23681FB50, v108, 1);
              v141 = vmlaq_n_f64(vmulq_f64(v103, v140), *v84, v108.f64[0]);
              v142 = vmlaq_n_f64(vmulq_f64(v104, v140), v102, v108.f64[0]);
              v143 = vmlaq_n_f64(vmulq_f64(v105, v140), v101, v108.f64[0]);
              v144 = vmlaq_n_f64(vmulq_f64(v106, v140), v100, v108.f64[0]);
              v99 = vsubq_f64(v99, v118);
              v98 = vsubq_f64(v98, v117);
              v97 = vsubq_f64(v97, v116);
              v96 = vsubq_f64(v216, v115);
              v95 = vsubq_f64(v218, v130);
              v94 = vsubq_f64(v219, v129);
              v93 = vsubq_f64(v220, v128);
              v145 = v125;
              v146 = v124;
              v147 = v123;
              v148 = v122;
              v92 = vsubq_f64(v221, v127);
              v91 = vsubq_f64(v148, v139);
              v90 = vsubq_f64(v147, v138);
              v89 = vsubq_f64(v89, v137);
              v88 = vsubq_f64(v146, v136);
              v87 = vsubq_f64(v87, v144);
              v85 = vsubq_f64(v85, v143);
              v83 = vsubq_f64(v132, v142);
              v81 = vsubq_f64(v145, v141);
              v84 += v43;
              --v82;
            }

            while (v82);
          }

          v149 = (v49 + 16 * v75 * a7 + 16 * v80);
          v150 = (v49 + 16 * (v75 | 1) * a7 + 16 * v80);
          v151 = (v49 + 16 * (v75 | 2) * a7 + 16 * v80);
          v152 = (v49 + 16 * v77 * a7 + 16 * v80);
          if (v51)
          {
            v153 = vaddq_f64(v99, v149[3]);
            v154 = vaddq_f64(v98, v149[2]);
            v155 = vaddq_f64(v97, v149[1]);
            *v149 = vaddq_f64(v96, *v149);
            v149[1] = v155;
            v149[2] = v154;
            v149[3] = v153;
            v156 = vaddq_f64(v94, v150[2]);
            v157 = vaddq_f64(v93, v150[1]);
            v158 = vaddq_f64(v95, v150[3]);
            *v150 = vaddq_f64(v92, *v150);
            v150[1] = v157;
            v150[2] = v156;
            v150[3] = v158;
            v159 = vaddq_f64(v90, v151[2]);
            v160 = vaddq_f64(v89, v151[1]);
            v161 = vaddq_f64(v91, v151[3]);
            *v151 = vaddq_f64(v88, *v151);
            v151[1] = v160;
            v151[2] = v159;
            v151[3] = v161;
            v162 = vaddq_f64(v85, v152[2]);
            v163 = vaddq_f64(v83, v152[1]);
            v164 = vaddq_f64(v87, v152[3]);
            *v152 = vaddq_f64(v81, *v152);
            v152[1] = v163;
            v152[2] = v162;
            v152[3] = v164;
          }

          else
          {
            *v149 = v96;
            v149[1] = v97;
            v149[2] = v98;
            v149[3] = v99;
            *v150 = v92;
            v150[1] = v93;
            v150[2] = v94;
            v150[3] = v95;
            *v151 = v88;
            v151[1] = v89;
            v151[2] = v90;
            v151[3] = v91;
            v152[2] = v85;
            v152[3] = v87;
            *v152 = v81;
            v152[1] = v83;
          }

          v78 = v80 + 4;
          v165 = v80 + 7;
          v79 += 64;
          v80 += 4;
          v44 = xmmword_23681FB50;
        }

        while (v165 < v12);
      }

      if (v78 < v12)
      {
        break;
      }

LABEL_89:
      v184 = v75 + 4;
      v185 = v75 + 7;
      v76 += 64;
      v75 += 4;
      if (v185 >= v47)
      {
        v186 = v184;
        goto LABEL_92;
      }
    }

    v166 = v49 + 16 * v75 * a7;
    v167 = v49 + 16 * (v75 | 1) * a7;
    v168 = v49 + 16 * (v75 | 2) * a7;
    v169 = v49 + 16 * v77 * a7;
    v170 = v78;
    v171 = a3 + v43 * v51 + 16 * v78;
    while (1)
    {
      if (v52 < 1)
      {
        v178 = 0uLL;
        v177 = 0uLL;
        v176 = 0uLL;
        v172 = 0uLL;
        if (!v51)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v172 = 0uLL;
        v173 = v52;
        v174 = v171;
        v175 = (a8 + 528 * v75);
        v176 = 0uLL;
        v177 = 0uLL;
        v178 = 0uLL;
        do
        {
          v179 = vextq_s8(*v174, *v174, 8uLL);
          v181 = v175[2];
          v180 = v175[3];
          v183 = *v175;
          v182 = v175[1];
          v175 += 4;
          v178 = vsubq_f64(v178, vmlaq_n_f64(vmulq_f64(v179, vmulq_laneq_f64(v44, v183, 1)), *v174, v183.f64[0]));
          v177 = vsubq_f64(v177, vmlaq_n_f64(vmulq_f64(v179, vmulq_laneq_f64(v44, v182, 1)), *v174, v182.f64[0]));
          v176 = vsubq_f64(v176, vmlaq_n_f64(vmulq_f64(v179, vmulq_laneq_f64(v44, v181, 1)), *v174, v181.f64[0]));
          v172 = vsubq_f64(v172, vmlaq_n_f64(vmulq_f64(v179, vmulq_laneq_f64(v44, v180, 1)), *v174, v180.f64[0]));
          v174 = (v174 + v43);
          --v173;
        }

        while (v173);
        if (!v51)
        {
LABEL_87:
          *(v166 + 16 * v170) = v178;
          *(v167 + 16 * v170) = v177;
          *(v168 + 16 * v170) = v176;
          *(v169 + 16 * v170) = v172;
          goto LABEL_88;
        }
      }

      *(v166 + 16 * v170) = vaddq_f64(v178, *(v166 + 16 * v170));
      *(v167 + 16 * v170) = vaddq_f64(v177, *(v167 + 16 * v170));
      *(v168 + 16 * v170) = vaddq_f64(v176, *(v168 + 16 * v170));
      *(v169 + 16 * v170) = vaddq_f64(v172, *(v169 + 16 * v170));
LABEL_88:
      ++v170;
      v171 += 16;
      if (v170 == v12)
      {
        goto LABEL_89;
      }
    }
  }

  v13 = 0;
  v215 = a7 << 10;
  v14 = a3;
  v214 = result;
  do
  {
    v15 = 0;
    v217 = v13;
    v16 = v214 - v13;
    if (v214 - v13 >= 64)
    {
      v17 = 64;
    }

    else
    {
      v17 = v214 - v13;
    }

    v18 = v17;
    do
    {
      if (a2 - v15 >= 64)
      {
        v19 = 64;
      }

      else
      {
        v19 = a2 - v15;
      }

      v20 = v15;
      if (a2 - v15 < 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = 0;
        v22 = a5 + 32 * v15;
        do
        {
          v23 = (v22 + 32 * v21);
          v24 = *v23;
          v25 = v23[1];
          v26 = fabs(*v23) == INFINITY;
          if (fabs(v25) == INFINITY)
          {
            v26 = 1;
          }

          if (v26)
          {
            v27 = 0.0;
          }

          else
          {
            v27 = v24;
          }

          if (v26)
          {
            v28 = 0.0;
          }

          else
          {
            v28 = v25;
          }

          v29 = vmulq_n_f64(xmmword_23681FB50, v28);
          v30 = 16 * v20 + 16 * v21;
          if (v16 < 4)
          {
            v39 = 0;
          }

          else
          {
            v31 = 0;
            v32 = vdupq_lane_s64(*&v27, 0);
            v33 = (a8 + (v21 << 10));
            v34 = (v14 + a4 * v30);
            do
            {
              v35 = vmlaq_f64(vmulq_f64(v29, vextq_s8(v34[3], v34[3], 8uLL)), v32, v34[3]);
              v36 = vmlaq_f64(vmulq_f64(v29, vextq_s8(v34[1], v34[1], 8uLL)), v32, v34[1]);
              v37 = vmlaq_f64(vmulq_f64(v29, vextq_s8(v34[2], v34[2], 8uLL)), v32, v34[2]);
              *v33 = vmlaq_f64(vmulq_f64(v29, vextq_s8(*v34, *v34, 8uLL)), v32, *v34);
              v33[1] = v36;
              v38 = v31 + 7;
              v33[2] = v37;
              v33[3] = v35;
              v31 += 4;
              v34 += 4;
              v33 += 4;
            }

            while (v38 < v18);
            v39 = v31;
          }

          if (v39 < v18)
          {
            v40 = vdupq_lane_s64(*&v27, 0);
            v41 = v14 + a4 * v30;
            do
            {
              *(a8 + (v21 << 10) + 16 * v39) = vmlaq_f64(vmulq_f64(v29, vextq_s8(*(v41 + 16 * v39), *(v41 + 16 * v39), 8uLL)), v40, *(v41 + 16 * v39));
              ++v39;
            }

            while (v39 < v18);
          }

          ++v21;
        }

        while (v21 < v19);
      }

      result = cblas_zgemm_NEWLAPACK();
      v15 = v21 + v20;
    }

    while ((v21 + v20) < a2);
    a6 += v215;
    v13 = v217 + 64;
    v14 += 1024;
  }

  while (v217 + 64 < v12);
  return result;
}

uint64_t sub_23673DFC4(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, float32x4_t a13)
{
  v17 = result;
  __asm
  {
    FMOV            V0.4S, #-1.0
    FMOV            V8.2S, #1.0
    FMOV            V1.4S, #1.0
  }

  if (result < 33 || a2 <= 32)
  {
    if (result < 1)
    {
      return result;
    }

    v55 = 0;
    v56 = 8 * a4;
    v57 = vnegq_f64(_Q0);
    v58 = vnegq_f64(_Q1);
    for (i = a3; ; i += 256)
    {
      v164 = v55;
      v60 = v17 - v55;
      v61 = v17 - v55 >= 32 ? 32 : v17 - v55;
      if (a2 >= 1)
      {
        break;
      }

LABEL_114:
      v55 = v164 + 32;
      if (v164 + 32 >= v17)
      {
        return result;
      }
    }

    v62 = 0;
    v63 = a6 + 8 * v164 * a7;
    result = v61;
    v168 = v61;
    while (1)
    {
      v64 = a2 - v62 >= 32 ? 32 : a2 - v62;
      v65 = v62;
      if (a2 - v62 < 1)
      {
        v66 = 0;
      }

      else
      {
        v66 = 0;
        v67 = a5 + 16 * v62;
        v68 = 8 * v62;
        do
        {
          v69 = (v67 + 8 * (2 * v66));
          v70 = *v69;
          v71 = v69[1];
          v72 = fabsf(*v69) == INFINITY;
          if (fabsf(v71) == INFINITY)
          {
            v72 = 1;
          }

          if (v72)
          {
            a13.f32[0] = 0.0;
          }

          else
          {
            a13.f32[0] = v70;
          }

          if (v72)
          {
            v73 = 0.0;
          }

          else
          {
            v73 = v71;
          }

          v74 = vmulq_n_f32(v57, v73);
          v75 = 4 * v66;
          v76 = v68 + 8 * v66;
          if (v60 < 4)
          {
            v86 = 0;
          }

          else
          {
            v77 = 0;
            v78 = vdupq_lane_s32(*a13.f32, 0);
            v79 = (a8 + 8 * v75);
            v80 = (i + a4 * v76);
            do
            {
              v81 = *v80;
              v82 = v80[1];
              v80 += 2;
              v83 = vmulq_f32(v82, v58);
              v84 = vmulq_f32(v81, v58);
              v85 = v77 + 7;
              *v79 = vmlaq_f32(vmulq_f32(v74, vrev64q_s32(v84)), v78, v84);
              v79[1] = vmlaq_f32(vmulq_f32(v74, vrev64q_s32(v83)), v78, v83);
              v77 += 4;
              v79 += 66;
            }

            while (v85 < result);
            v86 = v77;
          }

          if (v86 < v61)
          {
            *a13.f32 = vdup_lane_s32(*a13.f32, 0);
            v87 = i + a4 * v76;
            do
            {
              v88 = vmul_f32(*(v87 + 8 * v86), COERCE_FLOAT32X2_T(-_D8));
              *(a8 + 8 * ((33 * (v86 & 0x7FFFFFFC) + v75) | v86 & 3)) = vmla_f32(vmul_f32(*v74.f32, vrev64_s32(v88)), *a13.f32, v88);
              ++v86;
            }

            while (v86 < result);
          }

          ++v66;
        }

        while (v66 < v64);
      }

      __asm { FMOV            V3.2S, #-1.0 }

      if (v60 >= 4)
      {
        break;
      }

      v140 = 0;
LABEL_92:
      if (v140 < v61)
      {
        v141 = (a3 + v56 * v65 + 8 * v140);
        do
        {
          v142 = v140;
          if (v140 + 3 < v17)
          {
            v143 = v141;
            v144 = v140;
            do
            {
              a13 = 0uLL;
              if (v66 < 1)
              {
                v148 = 0uLL;
              }

              else
              {
                v145 = v66;
                v146 = v143;
                v147 = (a8 + 8 * ((33 * (v140 & 0x7FFFFFFC)) & 0xFFFFFFFC | v140 & 3));
                v148 = 0uLL;
                do
                {
                  v149 = *v147;
                  v147 += 4;
                  v150 = vmulq_lane_f32(v57, v149, 1);
                  v148 = vsubq_f32(v148, vmlaq_n_f32(vmulq_f32(vrev64q_s32(v146[1]), v150), v146[1], v149.f32[0]));
                  a13 = vsubq_f32(a13, vmlaq_n_f32(vmulq_f32(vrev64q_s32(*v146), v150), *v146, v149.f32[0]));
                  v146 = (v146 + v56);
                  --v145;
                }

                while (v145);
              }

              v151 = (v63 + 8 * v140 * a7 + 8 * v144);
              if (v65)
              {
                v148 = vaddq_f32(v148, v151[1]);
                a13 = vaddq_f32(a13, *v151);
              }

              *v151 = a13;
              v151[1] = v148;
              v142 = v144 + 4;
              v152 = v144 + 7;
              v143 += 2;
              v144 += 4;
            }

            while (v152 < v17);
          }

          if (v142 < v17)
          {
            v153 = v63 + 8 * v140 * a7;
            v154 = v142;
            v155 = a3 + v56 * v65 + 8 * v142;
            do
            {
              a13.i64[0] = 0;
              if (v66 >= 1)
              {
                v156 = v66;
                v157 = v155;
                v158 = (a8 + 8 * ((33 * (v140 & 0x7FFFFFFC)) & 0xFFFFFFFC | v140 & 3));
                do
                {
                  v159 = *v158;
                  v158 += 4;
                  *a13.f32 = vsub_f32(*a13.f32, vmla_n_f32(vmul_f32(vrev64_s32(*v157), vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), v159, 1)), *v157, v159.f32[0]));
                  v157 = (v157 + v56);
                  --v156;
                }

                while (v156);
              }

              if (v65)
              {
                *a13.f32 = vadd_f32(*a13.f32, *(v153 + 8 * v154));
              }

              *(v153 + 8 * v154++) = a13.i64[0];
              v155 += 8;
            }

            while (v154 < v17);
          }

          ++v140;
          v141 = (v141 + 8);
        }

        while (v140 < result);
      }

      v62 = v66 + v65;
      if (v66 + v65 >= a2)
      {
        goto LABEL_114;
      }
    }

    v90 = 0;
    v91 = a3 + 8 * v65 * a4;
    while (1)
    {
      v92 = v90 | 3;
      v93 = v90;
      if ((v90 | 3uLL) < v17)
      {
        v94 = v91;
        v95 = v90;
        do
        {
          if (v66 < 1)
          {
            v104 = 0uLL;
            v105 = 0uLL;
            v102 = 0uLL;
            v103 = 0uLL;
            v100 = 0uLL;
            v101 = 0uLL;
            a13 = 0uLL;
            v97 = 0uLL;
          }

          else
          {
            a13 = 0uLL;
            v96 = v66;
            v97 = 0uLL;
            v98 = v94;
            v99 = (a8 + 264 * v90);
            v100 = 0uLL;
            v101 = 0uLL;
            v102 = 0uLL;
            v103 = 0uLL;
            v104 = 0uLL;
            v105 = 0uLL;
            do
            {
              v106 = *(v98 + 16);
              v107 = vrev64q_s32(*v98);
              v108 = vrev64q_s32(v106);
              v110 = *v99;
              v109 = v99[1];
              v99 += 2;
              v111 = vmulq_lane_f32(v57, *v110.f32, 1);
              v105 = vsubq_f32(v105, vmlaq_n_f32(vmulq_f32(v108, v111), v106, v110.f32[0]));
              v104 = vsubq_f32(v104, vmlaq_n_f32(vmulq_f32(v107, v111), *v98, v110.f32[0]));
              v112 = vmulq_laneq_f32(v57, v110, 3);
              v103 = vsubq_f32(v103, vmlaq_laneq_f32(vmulq_f32(v108, v112), v106, v110, 2));
              v102 = vsubq_f32(v102, vmlaq_laneq_f32(vmulq_f32(v107, v112), *v98, v110, 2));
              v113 = vmulq_lane_f32(v57, *v109.f32, 1);
              v101 = vsubq_f32(v101, vmlaq_n_f32(vmulq_f32(v108, v113), v106, v109.f32[0]));
              v100 = vsubq_f32(v100, vmlaq_n_f32(vmulq_f32(v107, v113), *v98, v109.f32[0]));
              v114 = vmulq_laneq_f32(v57, v109, 3);
              v97 = vsubq_f32(v97, vmlaq_laneq_f32(vmulq_f32(v108, v114), v106, v109, 2));
              a13 = vsubq_f32(a13, vmlaq_laneq_f32(vmulq_f32(v107, v114), *v98, v109, 2));
              v98 += v56;
              --v96;
            }

            while (v96);
          }

          v115 = (v63 + 8 * v90 * a7 + 8 * v95);
          v116 = (v63 + 8 * (v90 | 1) * a7 + 8 * v95);
          v117 = v63 + 8 * (v90 | 2) * a7 + 8 * v95;
          v118 = (v63 + 8 * v92 * a7 + 8 * v95);
          if (v65)
          {
            v119 = vaddq_f32(v105, v115[1]);
            *v115 = vaddq_f32(v104, *v115);
            v115[1] = v119;
            v120 = vaddq_f32(v103, v116[1]);
            *v116 = vaddq_f32(v102, *v116);
            v116[1] = v120;
            v121 = *(v117 + 16);
            *v117 = vaddq_f32(v100, *v117);
            *(v117 + 16) = vaddq_f32(v101, v121);
            v97 = vaddq_f32(v97, v118[1]);
            a13 = vaddq_f32(a13, *v118);
          }

          else
          {
            *v115 = v104;
            v115[1] = v105;
            *v116 = v102;
            v116[1] = v103;
            *v117 = v100;
            *(v117 + 16) = v101;
          }

          *v118 = a13;
          v118[1] = v97;
          v93 = v95 + 4;
          v122 = v95 + 7;
          v94 += 32;
          v95 += 4;
        }

        while (v122 < v17);
      }

      if (v93 < v17)
      {
        break;
      }

LABEL_89:
      v138 = v90 + 4;
      v139 = v90 + 7;
      v91 += 32;
      v90 += 4;
      if (v139 >= result)
      {
        v140 = v138;
        v61 = v168;
        goto LABEL_92;
      }
    }

    v123 = v63 + 8 * v90 * a7;
    v124 = v63 + 8 * (v90 | 1) * a7;
    v125 = v63 + 8 * (v90 | 2) * a7;
    v126 = v63 + 8 * v92 * a7;
    v127 = v93;
    v128 = a3 + v56 * v65 + 8 * v93;
    while (1)
    {
      if (v66 < 1)
      {
        v134 = 0;
        v133 = 0;
        v132 = 0;
        a13.i64[0] = 0;
        if (!v65)
        {
          goto LABEL_87;
        }
      }

      else
      {
        a13.i64[0] = 0;
        v129 = v66;
        v130 = v128;
        v131 = (a8 + 264 * v90);
        v132 = 0;
        v133 = 0;
        v134 = 0;
        do
        {
          v135 = vrev64_s32(*v130);
          v137 = *v131;
          v136 = v131[1];
          v131 += 2;
          v134 = vsub_f32(v134, vmla_n_f32(vmul_f32(v135, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), *v137.f32, 1)), *v130, v137.f32[0]));
          v133 = vsub_f32(v133, vmla_laneq_f32(vmul_f32(v135, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D3), v137, 3)), *v130, v137, 2));
          v132 = vsub_f32(v132, vmla_n_f32(vmul_f32(v135, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), *v136.f32, 1)), *v130, v136.f32[0]));
          *a13.f32 = vsub_f32(*a13.f32, vmla_laneq_f32(vmul_f32(v135, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D3), v136, 3)), *v130, v136, 2));
          v130 = (v130 + v56);
          --v129;
        }

        while (v129);
        if (!v65)
        {
LABEL_87:
          *(v123 + 8 * v127) = v134;
          *(v124 + 8 * v127) = v133;
          *(v125 + 8 * v127) = v132;
          goto LABEL_88;
        }
      }

      *(v123 + 8 * v127) = vadd_f32(v134, *(v123 + 8 * v127));
      *(v124 + 8 * v127) = vadd_f32(v133, *(v124 + 8 * v127));
      *(v125 + 8 * v127) = vadd_f32(v132, *(v125 + 8 * v127));
      *a13.f32 = vadd_f32(*a13.f32, *(v126 + 8 * v127));
LABEL_88:
      *(v126 + 8 * v127++) = a13.i64[0];
      v128 += 8;
      if (v127 == v17)
      {
        goto LABEL_89;
      }
    }
  }

  v25 = 0;
  v161 = a7 << 9;
  v163 = vnegq_f64(_Q0);
  v26 = vnegq_f64(_Q1);
  v27 = a3;
  v160 = result;
  v167 = v26;
  do
  {
    v28 = 0;
    v162 = v25;
    v29 = v160 - v25;
    if (v160 - v25 >= 64)
    {
      v30 = 64;
    }

    else
    {
      v30 = v160 - v25;
    }

    v31 = v30;
    do
    {
      if (a2 - v28 >= 64)
      {
        v32 = 64;
      }

      else
      {
        v32 = a2 - v28;
      }

      v33 = v28;
      if (a2 - v28 < 1)
      {
        v34 = 0;
      }

      else
      {
        v34 = 0;
        v35 = a5 + 16 * v28;
        do
        {
          v36 = (v35 + 16 * v34);
          v37 = *v36;
          v38 = v36[1];
          v39 = fabsf(*v36) == INFINITY;
          if (fabsf(v38) == INFINITY)
          {
            v39 = 1;
          }

          if (v39)
          {
            *_Q1.f64 = 0.0;
          }

          else
          {
            *_Q1.f64 = v37;
          }

          if (v39)
          {
            v40 = 0.0;
          }

          else
          {
            v40 = v38;
          }

          v41 = vmulq_n_f32(v163, v40);
          v42 = 8 * v33 + 8 * v34;
          if (v29 < 4)
          {
            v52 = 0;
          }

          else
          {
            v43 = 0;
            v44 = vdupq_lane_s32(*&_Q1.f64[0], 0);
            v45 = (a8 + (v34 << 9));
            v46 = (v27 + a4 * v42);
            do
            {
              v47 = *v46;
              v48 = v46[1];
              v46 += 2;
              v49 = vmulq_f32(v48, v26);
              v50 = vmulq_f32(v47, v26);
              v51 = v43 + 7;
              *v45 = vmlaq_f32(vmulq_f32(v41, vrev64q_s32(v50)), v44, v50);
              v45[1] = vmlaq_f32(vmulq_f32(v41, vrev64q_s32(v49)), v44, v49);
              v45 += 2;
              v43 += 4;
            }

            while (v51 < v31);
            v52 = v43;
          }

          if (v52 < v31)
          {
            *&_Q1.f64[0] = vdup_lane_s32(*&_Q1.f64[0], 0);
            v53 = v27 + a4 * v42;
            do
            {
              v54 = vmul_f32(*(v53 + 8 * v52), COERCE_FLOAT32X2_T(-_D8));
              *(a8 + (v34 << 9) + 8 * v52++) = vmla_f32(vmul_f32(*v41.f32, vrev64_s32(v54)), *&_Q1.f64[0], v54);
            }

            while (v52 < v31);
          }

          ++v34;
        }

        while (v34 < v32);
      }

      result = cblas_cgemm_NEWLAPACK();
      v26 = v167;
      v28 = v34 + v33;
    }

    while ((v34 + v33) < a2);
    a6 += v161;
    v25 = v162 + 64;
    v27 += 512;
  }

  while (v162 + 64 < v17);
  return result;
}

uint64_t sub_23673EC50(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  if (result < 33 || a2 <= 32)
  {
    if (result < 1)
    {
      return result;
    }

    v44 = 0;
    v45 = 16 * a4;
    v46 = xmmword_23681FB50;
    v47 = xmmword_23681FD30;
    for (i = a3; ; i += 512)
    {
      v216 = v44;
      v49 = v12 - v44;
      v50 = v12 - v44 >= 32 ? 32 : v12 - v44;
      if (a2 >= 1)
      {
        break;
      }

LABEL_114:
      v44 = v216 + 32;
      if (v216 + 32 >= v12)
      {
        return result;
      }
    }

    v51 = 0;
    v52 = a6 + 16 * v44 * a7;
    result = v50;
    while (1)
    {
      v53 = a2 - v51 >= 32 ? 32 : a2 - v51;
      v54 = v51;
      if (a2 - v51 < 1)
      {
        v55 = 0;
      }

      else
      {
        v55 = 0;
        v56 = a5 + 32 * v51;
        v57 = 16 * v51;
        do
        {
          v58 = (v56 + 16 * (2 * v55));
          v59 = *v58;
          v60 = v58[1];
          v61 = fabs(*v58) == INFINITY;
          if (fabs(v60) == INFINITY)
          {
            v61 = 1;
          }

          if (v61)
          {
            v62 = 0.0;
          }

          else
          {
            v62 = v59;
          }

          if (v61)
          {
            v63 = 0.0;
          }

          else
          {
            v63 = v60;
          }

          v64 = vmulq_n_f64(v46, v63);
          v65 = 4 * v55;
          v66 = v57 + 16 * v55;
          if (v49 < 4)
          {
            v76 = 0;
          }

          else
          {
            v67 = 0;
            v68 = vdupq_lane_s64(*&v62, 0);
            v69 = (a8 + 16 * v65);
            v70 = (i + a4 * v66);
            do
            {
              v71 = vmulq_f64(v70[2], v47);
              v72 = vmulq_f64(v70[3], v47);
              v73 = vmulq_f64(*v70, v47);
              v74 = vmulq_f64(v70[1], v47);
              v69[2] = vmlaq_f64(vmulq_f64(v64, vextq_s8(v71, v71, 8uLL)), v68, v71);
              v69[3] = vmlaq_f64(vmulq_f64(v64, vextq_s8(v72, v72, 8uLL)), v68, v72);
              v75 = v67 + 7;
              *v69 = vmlaq_f64(vmulq_f64(v64, vextq_s8(v73, v73, 8uLL)), v68, v73);
              v69[1] = vmlaq_f64(vmulq_f64(v64, vextq_s8(v74, v74, 8uLL)), v68, v74);
              v67 += 4;
              v69 += 132;
              v70 += 4;
            }

            while (v75 < v50);
            v76 = v67;
          }

          if (v76 < v50)
          {
            v77 = vdupq_lane_s64(*&v62, 0);
            v78 = i + a4 * v66;
            do
            {
              v79 = vmulq_f64(*(v78 + 16 * v76), v47);
              *(a8 + 16 * ((33 * (v76 & 0x7FFFFFFC) + v65) | v76 & 3)) = vmlaq_f64(vmulq_f64(v64, vextq_s8(v79, v79, 8uLL)), v77, v79);
              ++v76;
            }

            while (v76 < v50);
          }

          ++v55;
        }

        while (v55 < v53);
      }

      if (v49 >= 4)
      {
        break;
      }

      v192 = 0;
LABEL_92:
      if (v192 < v50)
      {
        v193 = (a3 + v45 * v54 + 16 * v192);
        do
        {
          v194 = v192;
          if (v192 + 3 < v12)
          {
            v195 = v193;
            v196 = v192;
            do
            {
              v197 = 0uLL;
              if (v55 < 1)
              {
                v201 = 0uLL;
                v202 = 0uLL;
                v203 = 0uLL;
              }

              else
              {
                v198 = v55;
                v199 = v195;
                v200 = (a8 + 16 * ((33 * (v192 & 0x7FFFFFFC)) & 0xFFFFFFFC | v192 & 3));
                v201 = 0uLL;
                v202 = 0uLL;
                v203 = 0uLL;
                do
                {
                  v204 = *v200;
                  v200 += 4;
                  v205 = vmulq_laneq_f64(v46, v204, 1);
                  v203 = vsubq_f64(v203, vmlaq_n_f64(vmulq_f64(vextq_s8(v199[3], v199[3], 8uLL), v205), v199[3], v204.f64[0]));
                  v202 = vsubq_f64(v202, vmlaq_n_f64(vmulq_f64(vextq_s8(v199[2], v199[2], 8uLL), v205), v199[2], v204.f64[0]));
                  v201 = vsubq_f64(v201, vmlaq_n_f64(vmulq_f64(vextq_s8(v199[1], v199[1], 8uLL), v205), v199[1], v204.f64[0]));
                  v197 = vsubq_f64(v197, vmlaq_n_f64(vmulq_f64(vextq_s8(*v199, *v199, 8uLL), v205), *v199, v204.f64[0]));
                  v199 = (v199 + v45);
                  --v198;
                }

                while (v198);
              }

              v206 = (v52 + 16 * v192 * a7 + 16 * v196);
              if (v54)
              {
                v201 = vaddq_f64(v201, v206[1]);
                v197 = vaddq_f64(v197, *v206);
                v202 = vaddq_f64(v202, v206[2]);
                v203 = vaddq_f64(v203, v206[3]);
              }

              *v206 = v197;
              v206[1] = v201;
              v206[2] = v202;
              v206[3] = v203;
              v194 = v196 + 4;
              v207 = v196 + 7;
              v195 += 4;
              v196 += 4;
            }

            while (v207 < v12);
          }

          if (v194 < v12)
          {
            v208 = v52 + 16 * v192 * a7;
            v209 = v194;
            v210 = a3 + v45 * v54 + 16 * v194;
            do
            {
              v211 = 0uLL;
              if (v55 >= 1)
              {
                v212 = v55;
                v213 = v210;
                v214 = (a8 + 16 * ((33 * (v192 & 0x7FFFFFFC)) & 0xFFFFFFFC | v192 & 3));
                do
                {
                  v215 = *v214;
                  v214 += 4;
                  v211 = vsubq_f64(v211, vmlaq_n_f64(vmulq_f64(vextq_s8(*v213, *v213, 8uLL), vmulq_laneq_f64(v46, v215, 1)), *v213, v215.f64[0]));
                  v213 = (v213 + v45);
                  --v212;
                }

                while (v212);
              }

              if (v54)
              {
                v211 = vaddq_f64(v211, *(v208 + 16 * v209));
              }

              *(v208 + 16 * v209++) = v211;
              v210 += 16;
            }

            while (v209 < v12);
          }

          ++v192;
          ++v193;
        }

        while (v192 < v50);
      }

      v51 = v55 + v54;
      if (v55 + v54 >= a2)
      {
        goto LABEL_114;
      }
    }

    v80 = 0;
    v81 = a3 + 16 * v54 * a4;
    while (1)
    {
      v82 = v80 | 3;
      v83 = v80;
      if ((v80 | 3uLL) < v12)
      {
        v84 = v81;
        v85 = v80;
        do
        {
          if (v55 < 1)
          {
            v101 = 0uLL;
            v102 = 0uLL;
            v103 = 0uLL;
            v104 = 0uLL;
            v97 = 0uLL;
            v98 = 0uLL;
            v99 = 0uLL;
            v100 = 0uLL;
            v93 = 0uLL;
            v94 = 0uLL;
            v95 = 0uLL;
            v96 = 0uLL;
            v86 = 0uLL;
            v88 = 0uLL;
            v90 = 0uLL;
            v92 = 0uLL;
          }

          else
          {
            v86 = 0uLL;
            v87 = v55;
            v88 = 0uLL;
            v89 = v84;
            v90 = 0uLL;
            v91 = (a8 + 528 * v80);
            v92 = 0uLL;
            v93 = 0uLL;
            v94 = 0uLL;
            v95 = 0uLL;
            v96 = 0uLL;
            v97 = 0uLL;
            v98 = 0uLL;
            v99 = 0uLL;
            v100 = 0uLL;
            v101 = 0uLL;
            v102 = 0uLL;
            v103 = 0uLL;
            v104 = 0uLL;
            do
            {
              v222 = v97;
              v224 = v102;
              v225 = v101;
              v226 = v100;
              v227 = v99;
              v228 = v98;
              v106 = *(v89 + 32);
              v105 = *(v89 + 48);
              v107 = *(v89 + 16);
              v108 = vextq_s8(*v89, *v89, 8uLL);
              v109 = vextq_s8(v107, v107, 8uLL);
              v110 = vextq_s8(v106, v106, 8uLL);
              v111 = vextq_s8(v105, v105, 8uLL);
              v112 = v91[2];
              v113 = v91[3];
              v115 = *v91;
              v114 = v91[1];
              v91 += 4;
              v116 = vmulq_laneq_f64(xmmword_23681FB50, v115, 1);
              v117 = vmulq_f64(v111, v116);
              v118 = vmulq_f64(v110, v116);
              v119 = vmulq_f64(v109, v116);
              v120 = vmlaq_n_f64(vmulq_f64(v108, v116), *v89, v115.f64[0]);
              v121 = vmlaq_n_f64(v119, v107, v115.f64[0]);
              v122 = vmlaq_n_f64(v118, v106, v115.f64[0]);
              v123 = vmlaq_n_f64(v117, v105, v115.f64[0]);
              v124 = vmulq_laneq_f64(xmmword_23681FB50, v114, 1);
              v125 = vmulq_f64(v111, v124);
              v126 = v96;
              v127 = v94;
              v128 = v86;
              v129 = vmulq_f64(v110, v124);
              v130 = v95;
              v131 = v88;
              v132 = vmulq_f64(v109, v124);
              v133 = vmlaq_n_f64(vmulq_f64(v108, v124), *v89, v114.f64[0]);
              v134 = vmlaq_n_f64(v132, v107, v114.f64[0]);
              v135 = vmlaq_n_f64(v129, v106, v114.f64[0]);
              v136 = vmlaq_n_f64(v125, v105, v114.f64[0]);
              v137 = vmulq_laneq_f64(xmmword_23681FB50, v112, 1);
              v138 = vmulq_f64(v111, v137);
              v139 = vmulq_f64(v110, v137);
              v140 = vmulq_f64(v109, v137);
              v141 = vmlaq_n_f64(vmulq_f64(v108, v137), *v89, v112.f64[0]);
              v142 = vmlaq_n_f64(v140, v107, v112.f64[0]);
              v143 = vmlaq_n_f64(v139, v106, v112.f64[0]);
              v144 = vmlaq_n_f64(v138, v105, v112.f64[0]);
              v145 = vmulq_laneq_f64(xmmword_23681FB50, v113, 1);
              v146 = vmlaq_n_f64(vmulq_f64(v108, v145), *v89, v113.f64[0]);
              v147 = vmlaq_n_f64(vmulq_f64(v109, v145), v107, v113.f64[0]);
              v148 = vmlaq_n_f64(vmulq_f64(v110, v145), v106, v113.f64[0]);
              v149 = vmlaq_n_f64(vmulq_f64(v111, v145), v105, v113.f64[0]);
              v104 = vsubq_f64(v104, v123);
              v103 = vsubq_f64(v103, v122);
              v102 = vsubq_f64(v224, v121);
              v101 = vsubq_f64(v225, v120);
              v100 = vsubq_f64(v226, v136);
              v99 = vsubq_f64(v227, v135);
              v150 = v128;
              v151 = v127;
              v152 = v126;
              v98 = vsubq_f64(v228, v134);
              v153 = v131;
              v154 = v130;
              v97 = vsubq_f64(v222, v133);
              v96 = vsubq_f64(v152, v144);
              v95 = vsubq_f64(v154, v143);
              v94 = vsubq_f64(v151, v142);
              v93 = vsubq_f64(v93, v141);
              v92 = vsubq_f64(v92, v149);
              v90 = vsubq_f64(v90, v148);
              v88 = vsubq_f64(v153, v147);
              v86 = vsubq_f64(v150, v146);
              v89 += v45;
              --v87;
            }

            while (v87);
          }

          v155 = (v52 + 16 * v80 * a7 + 16 * v85);
          v156 = (v52 + 16 * (v80 | 1) * a7 + 16 * v85);
          v157 = (v52 + 16 * (v80 | 2) * a7 + 16 * v85);
          v158 = (v52 + 16 * v82 * a7 + 16 * v85);
          if (v54)
          {
            v159 = vaddq_f64(v104, v155[3]);
            v160 = vaddq_f64(v103, v155[2]);
            v161 = vaddq_f64(v102, v155[1]);
            *v155 = vaddq_f64(v101, *v155);
            v155[1] = v161;
            v155[2] = v160;
            v155[3] = v159;
            v162 = vaddq_f64(v99, v156[2]);
            v163 = vaddq_f64(v98, v156[1]);
            v164 = vaddq_f64(v100, v156[3]);
            *v156 = vaddq_f64(v97, *v156);
            v156[1] = v163;
            v156[2] = v162;
            v156[3] = v164;
            v165 = vaddq_f64(v95, v157[2]);
            v166 = vaddq_f64(v94, v157[1]);
            v167 = vaddq_f64(v96, v157[3]);
            *v157 = vaddq_f64(v93, *v157);
            v157[1] = v166;
            v157[2] = v165;
            v157[3] = v167;
            v168 = vaddq_f64(v90, v158[2]);
            v169 = vaddq_f64(v88, v158[1]);
            v170 = vaddq_f64(v92, v158[3]);
            *v158 = vaddq_f64(v86, *v158);
            v158[1] = v169;
            v158[2] = v168;
            v158[3] = v170;
          }

          else
          {
            *v155 = v101;
            v155[1] = v102;
            v155[2] = v103;
            v155[3] = v104;
            *v156 = v97;
            v156[1] = v98;
            v156[2] = v99;
            v156[3] = v100;
            *v157 = v93;
            v157[1] = v94;
            v157[2] = v95;
            v157[3] = v96;
            v158[2] = v90;
            v158[3] = v92;
            *v158 = v86;
            v158[1] = v88;
          }

          v47 = xmmword_23681FD30;
          v46 = xmmword_23681FB50;
          v83 = v85 + 4;
          v171 = v85 + 7;
          v84 += 64;
          v85 += 4;
        }

        while (v171 < v12);
      }

      if (v83 < v12)
      {
        break;
      }

LABEL_89:
      v190 = v80 + 4;
      v191 = v80 + 7;
      v81 += 64;
      v80 += 4;
      if (v191 >= v50)
      {
        v192 = v190;
        goto LABEL_92;
      }
    }

    v172 = v52 + 16 * v80 * a7;
    v173 = v52 + 16 * (v80 | 1) * a7;
    v174 = v52 + 16 * (v80 | 2) * a7;
    v175 = v52 + 16 * v82 * a7;
    v176 = v83;
    v177 = a3 + v45 * v54 + 16 * v83;
    while (1)
    {
      if (v55 < 1)
      {
        v184 = 0uLL;
        v183 = 0uLL;
        v182 = 0uLL;
        v178 = 0uLL;
        if (!v54)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v178 = 0uLL;
        v179 = v55;
        v180 = v177;
        v181 = (a8 + 528 * v80);
        v182 = 0uLL;
        v183 = 0uLL;
        v184 = 0uLL;
        do
        {
          v185 = vextq_s8(*v180, *v180, 8uLL);
          v187 = v181[2];
          v186 = v181[3];
          v189 = *v181;
          v188 = v181[1];
          v181 += 4;
          v184 = vsubq_f64(v184, vmlaq_n_f64(vmulq_f64(v185, vmulq_laneq_f64(v46, v189, 1)), *v180, v189.f64[0]));
          v183 = vsubq_f64(v183, vmlaq_n_f64(vmulq_f64(v185, vmulq_laneq_f64(v46, v188, 1)), *v180, v188.f64[0]));
          v182 = vsubq_f64(v182, vmlaq_n_f64(vmulq_f64(v185, vmulq_laneq_f64(v46, v187, 1)), *v180, v187.f64[0]));
          v178 = vsubq_f64(v178, vmlaq_n_f64(vmulq_f64(v185, vmulq_laneq_f64(v46, v186, 1)), *v180, v186.f64[0]));
          v180 = (v180 + v45);
          --v179;
        }

        while (v179);
        if (!v54)
        {
LABEL_87:
          *(v172 + 16 * v176) = v184;
          *(v173 + 16 * v176) = v183;
          *(v174 + 16 * v176) = v182;
          *(v175 + 16 * v176) = v178;
          goto LABEL_88;
        }
      }

      *(v172 + 16 * v176) = vaddq_f64(v184, *(v172 + 16 * v176));
      *(v173 + 16 * v176) = vaddq_f64(v183, *(v173 + 16 * v176));
      *(v174 + 16 * v176) = vaddq_f64(v182, *(v174 + 16 * v176));
      *(v175 + 16 * v176) = vaddq_f64(v178, *(v175 + 16 * v176));
LABEL_88:
      ++v176;
      v177 += 16;
      if (v176 == v12)
      {
        goto LABEL_89;
      }
    }
  }

  v13 = 0;
  v221 = a7 << 10;
  v14 = a3;
  v220 = result;
  do
  {
    v15 = 0;
    v223 = v13;
    v16 = v220 - v13;
    if (v220 - v13 >= 64)
    {
      v17 = 64;
    }

    else
    {
      v17 = v220 - v13;
    }

    v18 = v17;
    do
    {
      if (a2 - v15 >= 64)
      {
        v19 = 64;
      }

      else
      {
        v19 = a2 - v15;
      }

      v20 = v15;
      if (a2 - v15 < 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = 0;
        v22 = a5 + 32 * v15;
        do
        {
          v23 = (v22 + 32 * v21);
          v24 = *v23;
          v25 = v23[1];
          v26 = fabs(*v23) == INFINITY;
          if (fabs(v25) == INFINITY)
          {
            v26 = 1;
          }

          if (v26)
          {
            v27 = 0.0;
          }

          else
          {
            v27 = v24;
          }

          if (v26)
          {
            v28 = 0.0;
          }

          else
          {
            v28 = v25;
          }

          v29 = vmulq_n_f64(xmmword_23681FB50, v28);
          v30 = 16 * v20 + 16 * v21;
          if (v16 < 4)
          {
            v40 = 0;
          }

          else
          {
            v31 = 0;
            v32 = vdupq_lane_s64(*&v27, 0);
            v33 = (a8 + (v21 << 10));
            v34 = (v14 + a4 * v30);
            do
            {
              v35 = vmulq_f64(v34[2], xmmword_23681FD30);
              v36 = vmulq_f64(v34[3], xmmword_23681FD30);
              v37 = vmulq_f64(*v34, xmmword_23681FD30);
              v38 = vmulq_f64(v34[1], xmmword_23681FD30);
              v33[2] = vmlaq_f64(vmulq_f64(v29, vextq_s8(v35, v35, 8uLL)), v32, v35);
              v33[3] = vmlaq_f64(vmulq_f64(v29, vextq_s8(v36, v36, 8uLL)), v32, v36);
              v39 = v31 + 7;
              *v33 = vmlaq_f64(vmulq_f64(v29, vextq_s8(v37, v37, 8uLL)), v32, v37);
              v33[1] = vmlaq_f64(vmulq_f64(v29, vextq_s8(v38, v38, 8uLL)), v32, v38);
              v33 += 4;
              v31 += 4;
              v34 += 4;
            }

            while (v39 < v18);
            v40 = v31;
          }

          if (v40 < v18)
          {
            v41 = vdupq_lane_s64(*&v27, 0);
            v42 = v14 + a4 * v30;
            do
            {
              v43 = vmulq_f64(*(v42 + 16 * v40), xmmword_23681FD30);
              *(a8 + (v21 << 10) + 16 * v40++) = vmlaq_f64(vmulq_f64(v29, vextq_s8(v43, v43, 8uLL)), v41, v43);
            }

            while (v40 < v18);
          }

          ++v21;
        }

        while (v21 < v19);
      }

      result = cblas_zgemm_NEWLAPACK();
      v15 = v21 + v20;
    }

    while ((v21 + v20) < a2);
    a6 += v221;
    v13 = v223 + 64;
    v14 += 1024;
  }

  while (v223 + 64 < v12);
  return result;
}

uint64_t sub_23673FC10(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, float32x4_t a11, uint64_t a12, uint64_t a13)
{
  v100 = result;
  v94 = a2;
  if (a2 < 65 || a3 <= 64)
  {
    if (a2 >= 1)
    {
      v27 = 0;
      v28 = 4 * a6;
      do
      {
        v29 = a5;
        v96 = v27;
        v30 = a2 - v27;
        if (a2 - v27 >= 32)
        {
          v31 = 32;
        }

        else
        {
          v31 = a2 - v27;
        }

        v32 = a4;
        if (a3 >= 1)
        {
          v33 = 0;
          result = v31;
          do
          {
            if (a3 - v33 >= 32)
            {
              v34 = 32;
            }

            else
            {
              v34 = a3 - v33;
            }

            v35 = v33;
            if (a3 - v33 < 1)
            {
              v36 = 0;
            }

            else
            {
              v36 = 0;
              v37 = a7 + 8 * v33;
              do
              {
                v38 = *(v37 + 4 * (2 * v36));
                if (fabsf(v38) == INFINITY)
                {
                  v38 = 0.0;
                }

                if (v30 >= 1)
                {
                  v39 = 0;
                  do
                  {
                    *(a13 + 4 * ((33 * (v39 & 0x7FFFFFFC) + 4 * v36) | v39 & 3)) = v38 * *(v29 + a6 * (4 * v35 + 4 * v36) + 4 * v39);
                    ++v39;
                  }

                  while (v39 < v31);
                }

                ++v36;
              }

              while (v36 < v34);
            }

            v40 = v32 + 4 * v35 * a6;
            if (v30 < 4)
            {
              v84 = 0;
            }

            else
            {
              v41 = 0;
              v42 = v32 + v28 * v35;
              do
              {
                v43 = v41 | 3;
                v44 = v41 * a12;
                if (v100 < 8)
                {
                  v73 = 0;
                }

                else
                {
                  v45 = 0;
                  v46 = (v41 | 1) * a12;
                  v47 = (v41 | 2) * a12;
                  v48 = v40;
                  v49 = v43 * a12;
                  do
                  {
                    if (v36 < 1)
                    {
                      v58 = 0uLL;
                      v59 = 0uLL;
                      v56 = 0uLL;
                      v57 = 0uLL;
                      v54 = 0uLL;
                      v55 = 0uLL;
                      v50 = 0uLL;
                      a11 = 0uLL;
                    }

                    else
                    {
                      v50 = 0uLL;
                      v51 = v36;
                      a11 = 0uLL;
                      v52 = v48;
                      v53 = (a13 + 132 * v41);
                      v54 = 0uLL;
                      v55 = 0uLL;
                      v56 = 0uLL;
                      v57 = 0uLL;
                      v58 = 0uLL;
                      v59 = 0uLL;
                      do
                      {
                        v60 = v52[1];
                        v61 = *v53++;
                        v59 = vmlsq_lane_f32(v59, v60, *v61.f32, 0);
                        v58 = vmlsq_lane_f32(v58, *v52, *v61.f32, 0);
                        v57 = vmlsq_lane_f32(v57, v60, *v61.f32, 1);
                        v56 = vmlsq_lane_f32(v56, *v52, *v61.f32, 1);
                        v55 = vmlsq_laneq_f32(v55, v60, v61, 2);
                        v54 = vmlsq_laneq_f32(v54, *v52, v61, 2);
                        a11 = vmlsq_laneq_f32(a11, v60, v61, 3);
                        v50 = vmlsq_laneq_f32(v50, *v52, v61, 3);
                        v52 = (v52 + v28);
                        --v51;
                      }

                      while (v51);
                    }

                    v62 = (a8 + 4 * (v44 + v45));
                    if (v35)
                    {
                      v63 = vaddq_f32(v59, v62[1]);
                      *v62 = vaddq_f32(v58, *v62);
                      v62[1] = v63;
                      v64 = (a8 + 4 * (v46 + v45));
                      v65 = vaddq_f32(v57, v64[1]);
                      *v64 = vaddq_f32(v56, *v64);
                      v64[1] = v65;
                      v66 = (a8 + 4 * (v47 + v45));
                      v67 = vaddq_f32(v55, v66[1]);
                      *v66 = vaddq_f32(v54, *v66);
                      v66[1] = v67;
                      v68 = (a8 + 4 * (v49 + v45));
                      a11 = vaddq_f32(a11, v68[1]);
                      v50 = vaddq_f32(v50, *v68);
                    }

                    else
                    {
                      *v62 = v58;
                      v62[1] = v59;
                      v69 = (a8 + 4 * (v46 + v45));
                      *v69 = v56;
                      v69[1] = v57;
                      v70 = (a8 + 4 * (v47 + v45));
                      *v70 = v54;
                      v70[1] = v55;
                      v68 = (a8 + 4 * (v49 + v45));
                    }

                    *v68 = v50;
                    v68[1] = a11;
                    v71 = v45 + 8;
                    v72 = v45 + 15;
                    v48 += 2;
                    v45 += 8;
                  }

                  while (v72 < v100);
                  v73 = v71;
                }

                if (v73 < v100)
                {
                  v74 = (v41 | 1) * a12;
                  v75 = (v41 | 2) * a12;
                  v76 = (v42 + 4 * v73);
                  v77 = v43 * a12;
                  do
                  {
                    v78 = 0uLL;
                    if (v36 >= 1)
                    {
                      v79 = v36;
                      v80 = v76;
                      v81 = (a13 + 132 * v41);
                      do
                      {
                        a11.i32[0] = *v80;
                        v82 = *v81++;
                        v78 = vmlsq_lane_f32(v78, v82, *a11.f32, 0);
                        v80 = (v80 + v28);
                        --v79;
                      }

                      while (v79);
                    }

                    v83 = v44 + v73;
                    if (v35)
                    {
                      *(a8 + 4 * v83) = v78.f32[0] + *(a8 + 4 * v83);
                      *(a8 + 4 * (v74 + v73)) = v78.f32[1] + *(a8 + 4 * (v74 + v73));
                      *(a8 + 4 * (v75 + v73)) = v78.f32[2] + *(a8 + 4 * (v75 + v73));
                      *(a8 + 4 * (v77 + v73)) = v78.f32[3] + *(a8 + 4 * (v77 + v73));
                    }

                    else
                    {
                      *(a8 + 4 * v83) = v78.i32[0];
                      *(a8 + 4 * (v74 + v73)) = v78.i32[1];
                      *(a8 + 4 * (v75 + v73)) = v78.i32[2];
                      *(a8 + 4 * (v77 + v73)) = v78.i32[3];
                    }

                    ++v73;
                    ++v76;
                  }

                  while (v73 != v100);
                }

                LODWORD(v84) = v41 + 4;
                v85 = v41 + 7;
                v41 += 4;
              }

              while (v85 < v31);
              v84 = v84;
              v32 = a4;
            }

            if (v84 < v31)
            {
              do
              {
                if (v100 >= 1)
                {
                  v86 = 0;
                  v87 = v40;
                  do
                  {
                    v88 = 0.0;
                    if (v36 >= 1)
                    {
                      v89 = v36;
                      v90 = v87;
                      v91 = (a13 + ((4 * (v84 & 3)) | (528 * (v84 >> 2))));
                      do
                      {
                        v92 = *v91;
                        v91 += 4;
                        v88 = v88 - (*v90 * v92);
                        v90 = (v90 + v28);
                        --v89;
                      }

                      while (v89);
                    }

                    v93 = v84 * a12 + v86;
                    if (v35)
                    {
                      v88 = v88 + *(a8 + 4 * v93);
                    }

                    *(a8 + 4 * v93) = v88;
                    ++v86;
                    ++v87;
                  }

                  while (v86 != v100);
                }

                ++v84;
              }

              while (v84 < v31);
            }

            v33 = v36 + v35;
          }

          while (v36 + v35 < a3);
        }

        a5 = v29 + 128;
        a8 += a12 << 7;
        a2 = v94;
        v27 = v96 + 32;
      }

      while (v96 + 32 < v94);
    }
  }

  else
  {
    v16 = 0;
    do
    {
      v17 = 0;
      v95 = v16;
      v18 = a2 - v16;
      if (a2 - v16 >= 64)
      {
        v19 = 64;
      }

      else
      {
        v19 = a2 - v16;
      }

      v20 = v19;
      do
      {
        if (a3 - v17 >= 64)
        {
          v21 = 64;
        }

        else
        {
          v21 = a3 - v17;
        }

        v22 = v17;
        if (a3 - v17 < 1)
        {
          v23 = 0;
        }

        else
        {
          v23 = 0;
          v24 = a7 + 8 * v17;
          do
          {
            v25 = *(v24 + 8 * v23);
            if (fabsf(v25) == INFINITY)
            {
              v25 = 0.0;
            }

            if (v18 >= 1)
            {
              v26 = 0;
              do
              {
                *(a13 + (v23 << 8) + 4 * v26) = v25 * *(a5 + a6 * (4 * v22 + 4 * v23) + 4 * v26);
                ++v26;
              }

              while (v26 < v20);
            }

            ++v23;
          }

          while (v23 < v21);
        }

        result = cblas_sgemm_NEWLAPACK();
        v17 = v23 + v22;
      }

      while ((v23 + v22) < a3);
      a5 += 256;
      a8 += a12 << 8;
      a2 = v94;
      v16 = v95 + 64;
    }

    while (v95 + 64 < v94);
  }

  return result;
}

uint64_t sub_236740398(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v131 = result;
  v125 = a2;
  if (a2 < 65 || a3 <= 64)
  {
    if (a2 >= 1)
    {
      v24 = 0;
      v25 = 8 * a6;
      do
      {
        v127 = v24;
        v26 = a2 - v24;
        if (a2 - v24 >= 32)
        {
          v27 = 32;
        }

        else
        {
          v27 = a2 - v24;
        }

        v28 = a4;
        v29 = v131;
        if (a3 >= 1)
        {
          v30 = 0;
          result = v27;
          do
          {
            if (a3 - v30 >= 32)
            {
              v31 = 32;
            }

            else
            {
              v31 = a3 - v30;
            }

            v32 = v30;
            if (a3 - v30 < 1)
            {
              v33 = 0;
              v35 = a6;
            }

            else
            {
              v33 = 0;
              v34 = a7 + 16 * v30;
              v35 = a6;
              do
              {
                v36 = *(v34 + 8 * (2 * v33));
                if (fabs(v36) == INFINITY)
                {
                  v36 = 0.0;
                }

                if (v26 >= 1)
                {
                  v37 = 0;
                  do
                  {
                    *(a10 + 8 * ((33 * (v37 & 0x7FFFFFFC) + 4 * v33) | v37 & 3)) = v36 * *(a5 + a6 * (8 * v32 + 8 * v33) + 8 * v37);
                    ++v37;
                  }

                  while (v37 < v27);
                }

                ++v33;
              }

              while (v33 < v31);
            }

            v38 = v28 + 8 * v32 * v35;
            if (v26 < 4)
            {
              v115 = 0;
            }

            else
            {
              v39 = 0;
              v40 = v28 + v25 * v32;
              do
              {
                v41 = v39 | 3;
                v42 = v39 * a9;
                if (v29 < 8)
                {
                  v94 = 0;
                }

                else
                {
                  v43 = a5;
                  v44 = 0;
                  v45 = (v39 | 1) * a9;
                  v46 = (v39 | 2) * a9;
                  v47 = v38;
                  v48 = v41 * a9;
                  do
                  {
                    if (v33 < 1)
                    {
                      v64 = 0uLL;
                      v65 = 0uLL;
                      v66 = 0uLL;
                      v67 = 0uLL;
                      v60 = 0uLL;
                      v61 = 0uLL;
                      v62 = 0uLL;
                      v63 = 0uLL;
                      v56 = 0uLL;
                      v57 = 0uLL;
                      v58 = 0uLL;
                      v59 = 0uLL;
                      v49 = 0uLL;
                      v51 = 0uLL;
                      v53 = 0uLL;
                      v55 = 0uLL;
                    }

                    else
                    {
                      v49 = 0uLL;
                      v50 = v33;
                      v51 = 0uLL;
                      v52 = v47;
                      v53 = 0uLL;
                      v54 = (a10 + 264 * v39);
                      v55 = 0uLL;
                      v56 = 0uLL;
                      v57 = 0uLL;
                      v58 = 0uLL;
                      v59 = 0uLL;
                      v60 = 0uLL;
                      v61 = 0uLL;
                      v62 = 0uLL;
                      v63 = 0uLL;
                      v64 = 0uLL;
                      v65 = 0uLL;
                      v66 = 0uLL;
                      v67 = 0uLL;
                      do
                      {
                        v69 = v52[2];
                        v68 = v52[3];
                        v70 = v52[1];
                        v72 = *v54;
                        v71 = v54[1];
                        v54 += 2;
                        v65 = vmlsq_lane_f64(v65, v70, v72.f64[0], 0);
                        v64 = vmlsq_lane_f64(v64, *v52, v72.f64[0], 0);
                        v66 = vmlsq_lane_f64(v66, v69, v72.f64[0], 0);
                        v67 = vmlsq_lane_f64(v67, v68, v72.f64[0], 0);
                        v61 = vmlsq_laneq_f64(v61, v70, v72, 1);
                        v60 = vmlsq_laneq_f64(v60, *v52, v72, 1);
                        v62 = vmlsq_laneq_f64(v62, v69, v72, 1);
                        v63 = vmlsq_laneq_f64(v63, v68, v72, 1);
                        v57 = vmlsq_lane_f64(v57, v70, v71.f64[0], 0);
                        v56 = vmlsq_lane_f64(v56, *v52, v71.f64[0], 0);
                        v58 = vmlsq_lane_f64(v58, v69, v71.f64[0], 0);
                        v59 = vmlsq_lane_f64(v59, v68, v71.f64[0], 0);
                        v51 = vmlsq_laneq_f64(v51, v70, v71, 1);
                        v49 = vmlsq_laneq_f64(v49, *v52, v71, 1);
                        v53 = vmlsq_laneq_f64(v53, v69, v71, 1);
                        v52 = (v52 + v25);
                        v55 = vmlsq_laneq_f64(v55, v68, v71, 1);
                        --v50;
                      }

                      while (v50);
                    }

                    v73 = (a8 + 8 * (v42 + v44));
                    if (v32)
                    {
                      v74 = vaddq_f64(v67, v73[3]);
                      v75 = vaddq_f64(v66, v73[2]);
                      v76 = vaddq_f64(v65, v73[1]);
                      *v73 = vaddq_f64(v64, *v73);
                      v73[1] = v76;
                      v73[2] = v75;
                      v73[3] = v74;
                      v77 = (a8 + 8 * (v45 + v44));
                      v78 = vaddq_f64(v62, v77[2]);
                      v79 = vaddq_f64(v61, v77[1]);
                      v80 = vaddq_f64(v63, v77[3]);
                      *v77 = vaddq_f64(v60, *v77);
                      v77[1] = v79;
                      v77[2] = v78;
                      v77[3] = v80;
                      v81 = (a8 + 8 * (v46 + v44));
                      v82 = vaddq_f64(v58, v81[2]);
                      v83 = vaddq_f64(v57, v81[1]);
                      v84 = vaddq_f64(v59, v81[3]);
                      *v81 = vaddq_f64(v56, *v81);
                      v81[1] = v83;
                      v81[2] = v82;
                      v81[3] = v84;
                      v85 = (a8 + 8 * (v48 + v44));
                      v86 = vaddq_f64(v53, v85[2]);
                      v87 = vaddq_f64(v51, v85[1]);
                      v88 = vaddq_f64(v55, v85[3]);
                      *v85 = vaddq_f64(v49, *v85);
                      v85[1] = v87;
                      v85[2] = v86;
                      v85[3] = v88;
                    }

                    else
                    {
                      *v73 = v64;
                      v73[1] = v65;
                      v73[2] = v66;
                      v73[3] = v67;
                      v89 = (a8 + 8 * (v45 + v44));
                      *v89 = v60;
                      v89[1] = v61;
                      v89[2] = v62;
                      v89[3] = v63;
                      v90 = (a8 + 8 * (v46 + v44));
                      *v90 = v56;
                      v90[1] = v57;
                      v90[2] = v58;
                      v90[3] = v59;
                      v91 = (a8 + 8 * (v48 + v44));
                      v91[2] = v53;
                      v91[3] = v55;
                      *v91 = v49;
                      v91[1] = v51;
                    }

                    v92 = v44 + 8;
                    v93 = v44 + 15;
                    v47 += 4;
                    v44 += 8;
                  }

                  while (v93 < v131);
                  v94 = v92;
                  a5 = v43;
                  v29 = v131;
                }

                if (v94 < v29)
                {
                  v95 = (v39 | 1) * a9;
                  v96 = (v39 | 2) * a9;
                  v97 = (v40 + 8 * v94);
                  v98 = v41 * a9;
                  do
                  {
                    if (v33 < 1)
                    {
                      v103 = 0.0;
                      _D3 = 0.0;
                      v102 = 0.0;
                      _D1 = 0.0;
                    }

                    else
                    {
                      v99 = v33;
                      v100 = v97;
                      v101 = (a10 + 264 * v39);
                      v102 = 0.0;
                      v103 = 0.0;
                      do
                      {
                        _D5 = *v100;
                        _Q7 = *v101;
                        _Q6 = v101[1];
                        v101 += 2;
                        v103 = v103 - *&_Q7 * *v100;
                        __asm { FMLS            D3, D5, V7.D[1] }

                        v102 = v102 - *&_Q6 * *v100;
                        __asm { FMLS            D1, D5, V6.D[1] }

                        v100 = (v100 + v25);
                        --v99;
                      }

                      while (v99);
                    }

                    v113 = v42 + v94;
                    if (v32)
                    {
                      *(a8 + 8 * v113) = v103 + *(a8 + 8 * v113);
                      *(a8 + 8 * (v95 + v94)) = _D3 + *(a8 + 8 * (v95 + v94));
                      *(a8 + 8 * (v96 + v94)) = v102 + *(a8 + 8 * (v96 + v94));
                      v114 = v98 + v94;
                      _D1 = _D1 + *(a8 + 8 * (v98 + v94));
                    }

                    else
                    {
                      *(a8 + 8 * v113) = v103;
                      *(a8 + 8 * (v95 + v94)) = _D3;
                      *(a8 + 8 * (v96 + v94)) = v102;
                      v114 = v98 + v94;
                    }

                    *(a8 + 8 * v114) = _D1;
                    ++v94;
                    ++v97;
                  }

                  while (v94 != v131);
                }

                LODWORD(v115) = v39 + 4;
                v116 = v39 + 7;
                v39 += 4;
              }

              while (v116 < v27);
              v115 = v115;
              v28 = a4;
            }

            if (v115 < v27)
            {
              do
              {
                if (v29 >= 1)
                {
                  v117 = 0;
                  v118 = v38;
                  do
                  {
                    v119 = 0.0;
                    if (v33 >= 1)
                    {
                      v120 = v33;
                      v121 = v118;
                      v122 = (a10 + ((8 * (v115 & 3)) | (1056 * (v115 >> 2))));
                      do
                      {
                        v123 = *v122;
                        v122 += 4;
                        v119 = v119 - *v121 * v123;
                        v121 = (v121 + v25);
                        --v120;
                      }

                      while (v120);
                    }

                    v124 = v115 * a9 + v117;
                    if (v32)
                    {
                      v119 = v119 + *(a8 + 8 * v124);
                    }

                    *(a8 + 8 * v124) = v119;
                    ++v117;
                    ++v118;
                  }

                  while (v117 != v131);
                }

                ++v115;
              }

              while (v115 < v27);
            }

            v30 = v33 + v32;
          }

          while (v33 + v32 < a3);
        }

        a5 += 256;
        a8 += a9 << 8;
        a2 = v125;
        v24 = v127 + 32;
      }

      while (v127 + 32 < v125);
    }
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = 0;
      v126 = v13;
      v15 = a2 - v13;
      if (a2 - v13 >= 64)
      {
        v16 = 64;
      }

      else
      {
        v16 = a2 - v13;
      }

      v17 = v16;
      do
      {
        if (a3 - v14 >= 64)
        {
          v18 = 64;
        }

        else
        {
          v18 = a3 - v14;
        }

        v19 = v14;
        if (a3 - v14 < 1)
        {
          v20 = 0;
        }

        else
        {
          v20 = 0;
          v21 = a7 + 16 * v14;
          do
          {
            v22 = *(v21 + 16 * v20);
            if (fabs(v22) == INFINITY)
            {
              v22 = 0.0;
            }

            if (v15 >= 1)
            {
              v23 = 0;
              do
              {
                *(a10 + (v20 << 9) + 8 * v23) = v22 * *(a5 + a6 * (8 * v19 + 8 * v20) + 8 * v23);
                ++v23;
              }

              while (v23 < v17);
            }

            ++v20;
          }

          while (v20 < v18);
        }

        result = cblas_dgemm_NEWLAPACK();
        v14 = v20 + v19;
      }

      while ((v20 + v19) < a3);
      a5 += 512;
      a8 += a9 << 9;
      a2 = v125;
      v13 = v126 + 64;
    }

    while (v126 + 64 < v125);
  }

  return result;
}

uint64_t sub_236740BF0(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, float32x4_t a12, uint64_t a13, uint64_t a14)
{
  v146 = result;
  __asm { FMOV            V0.4S, #-1.0 }

  v140 = a2;
  if (a2 < 33 || a3 <= 32)
  {
    if (a2 >= 1)
    {
      v48 = 0;
      v49 = 8 * a6;
      v50 = vnegq_f64(_Q0);
      do
      {
        v143 = v48;
        v51 = a2 - v48;
        if (a2 - v48 >= 32)
        {
          v52 = 32;
        }

        else
        {
          v52 = a2 - v48;
        }

        v53 = v146;
        if (a3 >= 1)
        {
          v54 = 0;
          result = v52;
          do
          {
            if (a3 - v54 >= 32)
            {
              v55 = 32;
            }

            else
            {
              v55 = a3 - v54;
            }

            v56 = v54;
            if (a3 - v54 < 1)
            {
              v57 = 0;
            }

            else
            {
              v57 = 0;
              v58 = a7 + 16 * v54;
              v59 = 8 * v54;
              do
              {
                v60 = (v58 + 8 * (2 * v57));
                v61 = *v60;
                v62 = v60[1];
                v63 = fabsf(*v60) == INFINITY;
                if (fabsf(v62) == INFINITY)
                {
                  v63 = 1;
                }

                if (v63)
                {
                  a12.f32[0] = 0.0;
                }

                else
                {
                  a12.f32[0] = v61;
                }

                if (v63)
                {
                  v64 = 0.0;
                }

                else
                {
                  v64 = v62;
                }

                v65 = vmulq_n_f32(v50, v64);
                v66 = 4 * v57;
                v67 = v59 + 8 * v57;
                if (v51 < 4)
                {
                  v74 = 0;
                }

                else
                {
                  v68 = 0;
                  v69 = vdupq_lane_s32(*a12.f32, 0);
                  v70 = (a14 + 8 * v66);
                  v71 = a6 * v67;
                  do
                  {
                    v72 = *(a5 + v71 + 16);
                    v73 = v68 + 7;
                    *v70 = vmlaq_f32(vmulq_f32(v65, vrev64q_s32(*(a5 + v71))), v69, *(a5 + v71));
                    v70[1] = vmlaq_f32(vmulq_f32(v65, vrev64q_s32(v72)), v69, v72);
                    v68 += 4;
                    v70 += 66;
                    v71 += 32;
                  }

                  while (v73 < v52);
                  v74 = v68;
                }

                if (v74 < v52)
                {
                  *a12.f32 = vdup_lane_s32(*a12.f32, 0);
                  v75 = a5 + a6 * v67;
                  do
                  {
                    *(a14 + 8 * ((33 * (v74 & 0x7FFFFFFC) + v66) | v74 & 3)) = vmla_f32(vmul_f32(*v65.f32, vrev64_s32(*(v75 + 8 * v74))), *a12.f32, *(v75 + 8 * v74));
                    ++v74;
                  }

                  while (v74 < v52);
                }

                ++v57;
              }

              while (v57 < v55);
            }

            __asm { FMOV            V2.2S, #-1.0 }

            if (v51 < 4)
            {
              v131 = 0;
            }

            else
            {
              v77 = 0;
              do
              {
                v78 = v77 | 3;
                v79 = v77 * a13;
                if (v53 < 4)
                {
                  v115 = 0;
                }

                else
                {
                  v80 = 0;
                  v81 = (v77 | 1) * a13;
                  v82 = (v77 | 2) * a13;
                  v83 = a4 + 8 * v56 * a6;
                  v84 = v78 * a13;
                  do
                  {
                    if (v57 < 1)
                    {
                      v93 = 0uLL;
                      v94 = 0uLL;
                      v91 = 0uLL;
                      v92 = 0uLL;
                      v89 = 0uLL;
                      v90 = 0uLL;
                      a12 = 0uLL;
                      v86 = 0uLL;
                    }

                    else
                    {
                      a12 = 0uLL;
                      v85 = v57;
                      v86 = 0uLL;
                      v87 = v83;
                      v88 = (a14 + 264 * v77);
                      v89 = 0uLL;
                      v90 = 0uLL;
                      v91 = 0uLL;
                      v92 = 0uLL;
                      v93 = 0uLL;
                      v94 = 0uLL;
                      do
                      {
                        v95 = *(v87 + 16);
                        v96 = vrev64q_s32(*v87);
                        v97 = vrev64q_s32(v95);
                        v99 = *v88;
                        v98 = v88[1];
                        v88 += 2;
                        v100 = vmulq_lane_f32(v50, *v99.f32, 1);
                        v94 = vsubq_f32(v94, vmlaq_n_f32(vmulq_f32(v97, v100), v95, v99.f32[0]));
                        v93 = vsubq_f32(v93, vmlaq_n_f32(vmulq_f32(v96, v100), *v87, v99.f32[0]));
                        v101 = vmulq_laneq_f32(v50, v99, 3);
                        v92 = vsubq_f32(v92, vmlaq_laneq_f32(vmulq_f32(v97, v101), v95, v99, 2));
                        v91 = vsubq_f32(v91, vmlaq_laneq_f32(vmulq_f32(v96, v101), *v87, v99, 2));
                        v102 = vmulq_lane_f32(v50, *v98.f32, 1);
                        v90 = vsubq_f32(v90, vmlaq_n_f32(vmulq_f32(v97, v102), v95, v98.f32[0]));
                        v89 = vsubq_f32(v89, vmlaq_n_f32(vmulq_f32(v96, v102), *v87, v98.f32[0]));
                        v103 = vmulq_laneq_f32(v50, v98, 3);
                        v86 = vsubq_f32(v86, vmlaq_laneq_f32(vmulq_f32(v97, v103), v95, v98, 2));
                        a12 = vsubq_f32(a12, vmlaq_laneq_f32(vmulq_f32(v96, v103), *v87, v98, 2));
                        v87 += v49;
                        --v85;
                      }

                      while (v85);
                    }

                    v104 = (a8 + 8 * (v79 + v80));
                    if (v56)
                    {
                      v105 = vaddq_f32(v94, v104[1]);
                      *v104 = vaddq_f32(v93, *v104);
                      v104[1] = v105;
                      v106 = (a8 + 8 * (v81 + v80));
                      v107 = vaddq_f32(v92, v106[1]);
                      *v106 = vaddq_f32(v91, *v106);
                      v106[1] = v107;
                      v108 = (a8 + 8 * (v82 + v80));
                      v109 = vaddq_f32(v90, v108[1]);
                      *v108 = vaddq_f32(v89, *v108);
                      v108[1] = v109;
                      v110 = (a8 + 8 * (v84 + v80));
                      v86 = vaddq_f32(v86, v110[1]);
                      a12 = vaddq_f32(a12, *v110);
                    }

                    else
                    {
                      *v104 = v93;
                      v104[1] = v94;
                      v111 = (a8 + 8 * (v81 + v80));
                      *v111 = v91;
                      v111[1] = v92;
                      v112 = (a8 + 8 * (v82 + v80));
                      *v112 = v89;
                      v112[1] = v90;
                      v110 = (a8 + 8 * (v84 + v80));
                    }

                    *v110 = a12;
                    v110[1] = v86;
                    v113 = v80 + 4;
                    v114 = v80 + 7;
                    v83 += 32;
                    v80 += 4;
                  }

                  while (v114 < v146);
                  v115 = v113;
                  v53 = v146;
                }

                if (v115 < v53)
                {
                  v116 = (v77 | 1) * a13;
                  v117 = (v77 | 2) * a13;
                  v118 = a4 + v49 * v56 + 8 * v115;
                  v119 = v78 * a13;
                  do
                  {
                    if (v57 < 1)
                    {
                      v125 = 0;
                      v124 = 0;
                      v123 = 0;
                      a12.i64[0] = 0;
                    }

                    else
                    {
                      a12.i64[0] = 0;
                      v120 = v57;
                      v121 = v118;
                      v122 = (a14 + 264 * v77);
                      v123 = 0;
                      v124 = 0;
                      v125 = 0;
                      do
                      {
                        v126 = vrev64_s32(*v121);
                        v128 = *v122;
                        v127 = v122[1];
                        v122 += 2;
                        v125 = vsub_f32(v125, vmla_n_f32(vmul_f32(v126, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), *v128.f32, 1)), *v121, v128.f32[0]));
                        v124 = vsub_f32(v124, vmla_laneq_f32(vmul_f32(v126, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D2), v128, 3)), *v121, v128, 2));
                        v123 = vsub_f32(v123, vmla_n_f32(vmul_f32(v126, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), *v127.f32, 1)), *v121, v127.f32[0]));
                        *a12.f32 = vsub_f32(*a12.f32, vmla_laneq_f32(vmul_f32(v126, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D2), v127, 3)), *v121, v127, 2));
                        v121 = (v121 + v49);
                        --v120;
                      }

                      while (v120);
                    }

                    v129 = v79 + v115;
                    if (v56)
                    {
                      *(a8 + 8 * v129) = vadd_f32(v125, *(a8 + 8 * v129));
                      *(a8 + 8 * (v116 + v115)) = vadd_f32(v124, *(a8 + 8 * (v116 + v115)));
                      *(a8 + 8 * (v117 + v115)) = vadd_f32(v123, *(a8 + 8 * (v117 + v115)));
                      v130 = v119 + v115;
                      *a12.f32 = vadd_f32(*a12.f32, *(a8 + 8 * (v119 + v115)));
                    }

                    else
                    {
                      *(a8 + 8 * v129) = v125;
                      *(a8 + 8 * (v116 + v115)) = v124;
                      *(a8 + 8 * (v117 + v115)) = v123;
                      v130 = v119 + v115;
                    }

                    *(a8 + 8 * v130) = a12.i64[0];
                    ++v115;
                    v118 += 8;
                  }

                  while (v115 != v146);
                }

                LODWORD(v131) = v77 + 4;
                v132 = v77 + 7;
                v77 += 4;
              }

              while (v132 < v52);
              v131 = v131;
            }

            if (v131 < v52)
            {
              do
              {
                if (v53 >= 1)
                {
                  v133 = 0;
                  v134 = (a4 + 8 * v56 * a6);
                  do
                  {
                    a12.i64[0] = 0;
                    if (v57 >= 1)
                    {
                      v135 = v57;
                      v136 = v134;
                      v137 = (a14 + 8 * ((33 * (v131 & 0x7FFFFFFC)) & 0xFFFFFFFC | v131 & 3));
                      do
                      {
                        v138 = *v137;
                        v137 += 4;
                        *a12.f32 = vsub_f32(*a12.f32, vmla_n_f32(vmul_f32(vrev64_s32(*v136), vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), v138, 1)), *v136, v138.f32[0]));
                        v136 = (v136 + v49);
                        --v135;
                      }

                      while (v135);
                    }

                    v139 = v131 * a13 + v133;
                    if (v56)
                    {
                      *a12.f32 = vadd_f32(*a12.f32, *(a8 + 8 * v139));
                    }

                    *(a8 + 8 * v139) = a12.i64[0];
                    ++v133;
                    ++v134;
                  }

                  while (v133 != v146);
                }

                ++v131;
              }

              while (v131 < v52);
            }

            v54 = v57 + v56;
          }

          while (v57 + v56 < a3);
        }

        a5 += 256;
        a8 += a13 << 8;
        v48 = v143 + 32;
        a2 = v140;
      }

      while (v143 + 32 < v140);
    }
  }

  else
  {
    v23 = 0;
    v142 = vnegq_f64(_Q0);
    v24 = a2;
    do
    {
      v25 = 0;
      v141 = v23;
      v26 = v24 - v23;
      if (v24 - v23 >= 64)
      {
        v27 = 64;
      }

      else
      {
        v27 = v24 - v23;
      }

      v28 = v27;
      do
      {
        if (a3 - v25 >= 64)
        {
          v29 = 64;
        }

        else
        {
          v29 = a3 - v25;
        }

        v30 = v25;
        if (a3 - v25 < 1)
        {
          v31 = 0;
        }

        else
        {
          v31 = 0;
          v32 = a7 + 16 * v25;
          do
          {
            v33 = (v32 + 16 * v31);
            v34 = *v33;
            v35 = v33[1];
            v36 = fabsf(*v33) == INFINITY;
            if (fabsf(v35) == INFINITY)
            {
              v36 = 1;
            }

            if (v36)
            {
              *&a10 = 0.0;
            }

            else
            {
              *&a10 = v34;
            }

            if (v36)
            {
              v37 = 0.0;
            }

            else
            {
              v37 = v35;
            }

            v38 = vmulq_n_f32(v142, v37);
            v39 = 8 * v30 + 8 * v31;
            if (v26 < 4)
            {
              v46 = 0;
            }

            else
            {
              v40 = 0;
              v41 = vdupq_lane_s32(*&a10, 0);
              v42 = (a14 + (v31 << 9));
              v43 = a6 * v39;
              do
              {
                v44 = *(a5 + v43 + 16);
                v45 = v40 + 7;
                *v42 = vmlaq_f32(vmulq_f32(v38, vrev64q_s32(*(a5 + v43))), v41, *(a5 + v43));
                v42[1] = vmlaq_f32(vmulq_f32(v38, vrev64q_s32(v44)), v41, v44);
                v42 += 2;
                v40 += 4;
                v43 += 32;
              }

              while (v45 < v28);
              v46 = v40;
            }

            if (v46 < v28)
            {
              a10 = COERCE_DOUBLE(vdup_lane_s32(*&a10, 0));
              v47 = a5 + a6 * v39;
              do
              {
                *(a14 + (v31 << 9) + 8 * v46) = vmla_f32(vmul_f32(*v38.f32, vrev64_s32(*(v47 + 8 * v46))), *&a10, *(v47 + 8 * v46));
                ++v46;
              }

              while (v46 < v28);
            }

            ++v31;
          }

          while (v31 < v29);
        }

        result = cblas_cgemm_NEWLAPACK();
        v25 = v31 + v30;
      }

      while ((v31 + v30) < a3);
      a5 += 512;
      a8 += a13 << 9;
      v24 = v140;
      v23 = v141 + 64;
    }

    while (v141 + 64 < v140);
  }

  return result;
}

uint64_t sub_236741754(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v205 = result;
  if (a2 < 33 || a3 <= 32)
  {
    if (a2 >= 1)
    {
      v43 = 0;
      v44 = 16 * a6;
      v45 = xmmword_23681FB50;
      v46 = a2;
      do
      {
        v201 = v43;
        v47 = v46 - v43;
        if (v46 - v43 >= 32)
        {
          v48 = 32;
        }

        else
        {
          v48 = v46 - v43;
        }

        v49 = v205;
        if (a3 >= 1)
        {
          v50 = 0;
          result = v48;
          do
          {
            if (a3 - v50 >= 32)
            {
              v51 = 32;
            }

            else
            {
              v51 = a3 - v50;
            }

            v52 = v50;
            if (a3 - v50 < 1)
            {
              v53 = 0;
            }

            else
            {
              v53 = 0;
              v54 = a7 + 32 * v50;
              v55 = 16 * v50;
              do
              {
                v56 = (v54 + 16 * (2 * v53));
                v57 = *v56;
                v58 = v56[1];
                v59 = fabs(*v56) == INFINITY;
                if (fabs(v58) == INFINITY)
                {
                  v59 = 1;
                }

                if (v59)
                {
                  v60 = 0.0;
                }

                else
                {
                  v60 = v57;
                }

                if (v59)
                {
                  v61 = 0.0;
                }

                else
                {
                  v61 = v58;
                }

                v62 = vmulq_n_f64(v45, v61);
                v63 = 4 * v53;
                v64 = v55 + 16 * v53;
                if (v47 < 4)
                {
                  v73 = 0;
                }

                else
                {
                  v65 = 0;
                  v66 = vdupq_lane_s64(*&v60, 0);
                  v67 = (a10 + 16 * v63);
                  v68 = a6 * v64;
                  do
                  {
                    v69 = vmlaq_f64(vmulq_f64(v62, vextq_s8(*(a5 + v68 + 16), *(a5 + v68 + 16), 8uLL)), v66, *(a5 + v68 + 16));
                    v70 = vmlaq_f64(vmulq_f64(v62, vextq_s8(*(a5 + v68), *(a5 + v68), 8uLL)), v66, *(a5 + v68));
                    v71 = vmlaq_f64(vmulq_f64(v62, vextq_s8(*(a5 + v68 + 48), *(a5 + v68 + 48), 8uLL)), v66, *(a5 + v68 + 48));
                    v67[2] = vmlaq_f64(vmulq_f64(v62, vextq_s8(*(a5 + v68 + 32), *(a5 + v68 + 32), 8uLL)), v66, *(a5 + v68 + 32));
                    v67[3] = v71;
                    v72 = v65 + 7;
                    *v67 = v70;
                    v67[1] = v69;
                    v65 += 4;
                    v67 += 132;
                    v68 += 64;
                  }

                  while (v72 < v48);
                  v73 = v65;
                }

                if (v73 < v48)
                {
                  v74 = vdupq_lane_s64(*&v60, 0);
                  v75 = a5 + a6 * v64;
                  do
                  {
                    *(a10 + 16 * ((33 * (v73 & 0x7FFFFFFC) + v63) | v73 & 3)) = vmlaq_f64(vmulq_f64(v62, vextq_s8(*(v75 + 16 * v73), *(v75 + 16 * v73), 8uLL)), v74, *(v75 + 16 * v73));
                    ++v73;
                  }

                  while (v73 < v48);
                }

                ++v53;
              }

              while (v53 < v51);
            }

            if (v47 < 4)
            {
              v191 = 0;
            }

            else
            {
              v76 = 0;
              do
              {
                v77 = v76 | 3;
                v78 = v76 * a9;
                if (v49 < 4)
                {
                  v173 = 0;
                }

                else
                {
                  v79 = 0;
                  v80 = (v76 | 1) * a9;
                  v81 = (v76 | 2) * a9;
                  v82 = a4 + 16 * v52 * a6;
                  v83 = v77 * a9;
                  do
                  {
                    if (v53 < 1)
                    {
                      v99 = 0uLL;
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v95 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v91 = 0uLL;
                      v92 = 0uLL;
                      v93 = 0uLL;
                      v94 = 0uLL;
                      v84 = 0uLL;
                      v86 = 0uLL;
                      v88 = 0uLL;
                      v90 = 0uLL;
                    }

                    else
                    {
                      v84 = 0uLL;
                      v85 = v53;
                      v86 = 0uLL;
                      v87 = v82;
                      v88 = 0uLL;
                      v89 = (a10 + 528 * v76);
                      v90 = 0uLL;
                      v91 = 0uLL;
                      v92 = 0uLL;
                      v93 = 0uLL;
                      v94 = 0uLL;
                      v95 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      do
                      {
                        v206 = v99;
                        v208 = v98;
                        v209 = v97;
                        v210 = v96;
                        v211 = v95;
                        v104 = *(v87 + 32);
                        v103 = *(v87 + 48);
                        v105 = *(v87 + 16);
                        v106 = vextq_s8(*v87, *v87, 8uLL);
                        v107 = vextq_s8(v105, v105, 8uLL);
                        v108 = vextq_s8(v104, v104, 8uLL);
                        v109 = vextq_s8(v103, v103, 8uLL);
                        v110 = v89[2];
                        v111 = v89[3];
                        v113 = *v89;
                        v112 = v89[1];
                        v89 += 4;
                        v114 = vmulq_laneq_f64(xmmword_23681FB50, v113, 1);
                        v115 = vmulq_f64(v109, v114);
                        v116 = vmulq_f64(v108, v114);
                        v117 = vmulq_f64(v107, v114);
                        v118 = vmlaq_n_f64(vmulq_f64(v106, v114), *v87, v113.f64[0]);
                        v119 = vmlaq_n_f64(v117, v105, v113.f64[0]);
                        v120 = vmlaq_n_f64(v116, v104, v113.f64[0]);
                        v121 = vmlaq_n_f64(v115, v103, v113.f64[0]);
                        v122 = vmulq_laneq_f64(xmmword_23681FB50, v112, 1);
                        v123 = vmulq_f64(v109, v122);
                        v124 = vmulq_f64(v108, v122);
                        v125 = v94;
                        v126 = v92;
                        v127 = v84;
                        v128 = vmulq_f64(v107, v122);
                        v129 = vmlaq_n_f64(vmulq_f64(v106, v122), *v87, v112.f64[0]);
                        v130 = vmlaq_n_f64(v128, v105, v112.f64[0]);
                        v131 = vmlaq_n_f64(v124, v104, v112.f64[0]);
                        v132 = vmlaq_n_f64(v123, v103, v112.f64[0]);
                        v133 = vmulq_laneq_f64(xmmword_23681FB50, v110, 1);
                        v134 = v91;
                        v135 = v86;
                        v136 = vmulq_f64(v109, v133);
                        v137 = vmulq_f64(v108, v133);
                        v138 = vmulq_f64(v107, v133);
                        v139 = vmlaq_n_f64(vmulq_f64(v106, v133), *v87, v110.f64[0]);
                        v140 = vmlaq_n_f64(v138, v105, v110.f64[0]);
                        v141 = vmlaq_n_f64(v137, v104, v110.f64[0]);
                        v142 = vmlaq_n_f64(v136, v103, v110.f64[0]);
                        v143 = vmulq_laneq_f64(xmmword_23681FB50, v111, 1);
                        v144 = vmlaq_n_f64(vmulq_f64(v106, v143), *v87, v111.f64[0]);
                        v145 = vmlaq_n_f64(vmulq_f64(v107, v143), v105, v111.f64[0]);
                        v146 = vmlaq_n_f64(vmulq_f64(v108, v143), v104, v111.f64[0]);
                        v147 = vmlaq_n_f64(vmulq_f64(v109, v143), v103, v111.f64[0]);
                        v102 = vsubq_f64(v102, v121);
                        v101 = vsubq_f64(v101, v120);
                        v100 = vsubq_f64(v100, v119);
                        v99 = vsubq_f64(v206, v118);
                        v98 = vsubq_f64(v208, v132);
                        v97 = vsubq_f64(v209, v131);
                        v96 = vsubq_f64(v210, v130);
                        v148 = v127;
                        v149 = v126;
                        v150 = v125;
                        v95 = vsubq_f64(v211, v129);
                        v94 = vsubq_f64(v150, v142);
                        v151 = v135;
                        v93 = vsubq_f64(v93, v141);
                        v92 = vsubq_f64(v149, v140);
                        v91 = vsubq_f64(v134, v139);
                        v90 = vsubq_f64(v90, v147);
                        v88 = vsubq_f64(v88, v146);
                        v86 = vsubq_f64(v151, v145);
                        v84 = vsubq_f64(v148, v144);
                        v87 += v44;
                        --v85;
                      }

                      while (v85);
                    }

                    v152 = (a8 + 16 * (v78 + v79));
                    if (v52)
                    {
                      v153 = vaddq_f64(v102, v152[3]);
                      v154 = vaddq_f64(v101, v152[2]);
                      v155 = vaddq_f64(v100, v152[1]);
                      *v152 = vaddq_f64(v99, *v152);
                      v152[1] = v155;
                      v152[2] = v154;
                      v152[3] = v153;
                      v156 = (a8 + 16 * (v80 + v79));
                      v157 = vaddq_f64(v97, v156[2]);
                      v158 = vaddq_f64(v96, v156[1]);
                      v159 = vaddq_f64(v98, v156[3]);
                      *v156 = vaddq_f64(v95, *v156);
                      v156[1] = v158;
                      v156[2] = v157;
                      v156[3] = v159;
                      v160 = (a8 + 16 * (v81 + v79));
                      v161 = vaddq_f64(v93, v160[2]);
                      v162 = vaddq_f64(v92, v160[1]);
                      v163 = vaddq_f64(v94, v160[3]);
                      *v160 = vaddq_f64(v91, *v160);
                      v160[1] = v162;
                      v160[2] = v161;
                      v160[3] = v163;
                      v164 = (a8 + 16 * (v83 + v79));
                      v165 = vaddq_f64(v88, v164[2]);
                      v166 = vaddq_f64(v86, v164[1]);
                      v167 = vaddq_f64(v90, v164[3]);
                      *v164 = vaddq_f64(v84, *v164);
                      v164[1] = v166;
                      v164[2] = v165;
                      v164[3] = v167;
                    }

                    else
                    {
                      *v152 = v99;
                      v152[1] = v100;
                      v152[2] = v101;
                      v152[3] = v102;
                      v168 = (a8 + 16 * (v80 + v79));
                      *v168 = v95;
                      v168[1] = v96;
                      v168[2] = v97;
                      v168[3] = v98;
                      v169 = (a8 + 16 * (v81 + v79));
                      *v169 = v91;
                      v169[1] = v92;
                      v169[2] = v93;
                      v169[3] = v94;
                      v170 = (a8 + 16 * (v83 + v79));
                      v170[2] = v88;
                      v170[3] = v90;
                      *v170 = v84;
                      v170[1] = v86;
                    }

                    v45 = xmmword_23681FB50;
                    v171 = v79 + 4;
                    v172 = v79 + 7;
                    v82 += 64;
                    v79 += 4;
                  }

                  while (v172 < v205);
                  v173 = v171;
                  v49 = v205;
                }

                if (v173 < v49)
                {
                  v174 = (v76 | 1) * a9;
                  v175 = (v76 | 2) * a9;
                  v176 = a4 + v44 * v52 + 16 * v173;
                  v177 = v77 * a9;
                  do
                  {
                    if (v53 < 1)
                    {
                      v184 = 0uLL;
                      v183 = 0uLL;
                      v182 = 0uLL;
                      v178 = 0uLL;
                    }

                    else
                    {
                      v178 = 0uLL;
                      v179 = v53;
                      v180 = v176;
                      v181 = (a10 + 528 * v76);
                      v182 = 0uLL;
                      v183 = 0uLL;
                      v184 = 0uLL;
                      do
                      {
                        v185 = vextq_s8(*v180, *v180, 8uLL);
                        v187 = v181[2];
                        v186 = v181[3];
                        v189 = *v181;
                        v188 = v181[1];
                        v181 += 4;
                        v184 = vsubq_f64(v184, vmlaq_n_f64(vmulq_f64(v185, vmulq_laneq_f64(v45, v189, 1)), *v180, v189.f64[0]));
                        v183 = vsubq_f64(v183, vmlaq_n_f64(vmulq_f64(v185, vmulq_laneq_f64(v45, v188, 1)), *v180, v188.f64[0]));
                        v182 = vsubq_f64(v182, vmlaq_n_f64(vmulq_f64(v185, vmulq_laneq_f64(v45, v187, 1)), *v180, v187.f64[0]));
                        v178 = vsubq_f64(v178, vmlaq_n_f64(vmulq_f64(v185, vmulq_laneq_f64(v45, v186, 1)), *v180, v186.f64[0]));
                        v180 = (v180 + v44);
                        --v179;
                      }

                      while (v179);
                    }

                    v190 = v78 + v173;
                    if (v52)
                    {
                      *(a8 + 16 * v190) = vaddq_f64(v184, *(a8 + 16 * v190));
                      *(a8 + 16 * (v174 + v173)) = vaddq_f64(v183, *(a8 + 16 * (v174 + v173)));
                      *(a8 + 16 * (v175 + v173)) = vaddq_f64(v182, *(a8 + 16 * (v175 + v173)));
                      *(a8 + 16 * (v177 + v173)) = vaddq_f64(v178, *(a8 + 16 * (v177 + v173)));
                    }

                    else
                    {
                      *(a8 + 16 * v190) = v184;
                      *(a8 + 16 * (v174 + v173)) = v183;
                      *(a8 + 16 * (v175 + v173)) = v182;
                      *(a8 + 16 * (v177 + v173)) = v178;
                    }

                    ++v173;
                    v176 += 16;
                  }

                  while (v173 != v205);
                }

                LODWORD(v191) = v76 + 4;
                v192 = v76 + 7;
                v76 += 4;
              }

              while (v192 < v48);
              v191 = v191;
            }

            if (v191 < v48)
            {
              do
              {
                if (v49 >= 1)
                {
                  v193 = 0;
                  v194 = (a4 + 16 * v52 * a6);
                  do
                  {
                    v195 = 0uLL;
                    if (v53 >= 1)
                    {
                      v196 = v53;
                      v197 = v194;
                      v198 = (a10 + 16 * ((33 * (v191 & 0x7FFFFFFC)) & 0xFFFFFFFC | v191 & 3));
                      do
                      {
                        v199 = *v198;
                        v198 += 4;
                        v195 = vsubq_f64(v195, vmlaq_n_f64(vmulq_f64(vextq_s8(*v197, *v197, 8uLL), vmulq_laneq_f64(v45, v199, 1)), *v197, v199.f64[0]));
                        v197 = (v197 + v44);
                        --v196;
                      }

                      while (v196);
                    }

                    v200 = v191 * a9 + v193;
                    if (v52)
                    {
                      v195 = vaddq_f64(v195, *(a8 + 16 * v200));
                    }

                    *(a8 + 16 * v200) = v195;
                    ++v193;
                    ++v194;
                  }

                  while (v193 != v205);
                }

                ++v191;
              }

              while (v191 < v48);
            }

            v50 = v53 + v52;
          }

          while (v53 + v52 < a3);
        }

        a5 += 512;
        a8 += a9 << 9;
        v46 = a2;
        v43 = v201 + 32;
      }

      while (v201 + 32 < a2);
    }
  }

  else
  {
    v14 = 0;
    v15 = a2;
    do
    {
      v16 = 0;
      v207 = v14;
      v17 = v15 - v14;
      if (v15 - v14 >= 64)
      {
        v18 = 64;
      }

      else
      {
        v18 = v15 - v14;
      }

      v19 = v18;
      do
      {
        if (a3 - v16 >= 64)
        {
          v20 = 64;
        }

        else
        {
          v20 = a3 - v16;
        }

        v21 = v16;
        if (a3 - v16 < 1)
        {
          v22 = 0;
        }

        else
        {
          v22 = 0;
          v23 = a7 + 32 * v16;
          do
          {
            v24 = (v23 + 32 * v22);
            v25 = *v24;
            v26 = v24[1];
            v27 = fabs(*v24) == INFINITY;
            if (fabs(v26) == INFINITY)
            {
              v27 = 1;
            }

            if (v27)
            {
              v28 = 0.0;
            }

            else
            {
              v28 = v25;
            }

            if (v27)
            {
              v29 = 0.0;
            }

            else
            {
              v29 = v26;
            }

            v30 = vmulq_n_f64(xmmword_23681FB50, v29);
            v31 = 16 * v21 + 16 * v22;
            if (v17 < 4)
            {
              v40 = 0;
            }

            else
            {
              v32 = 0;
              v33 = vdupq_lane_s64(*&v28, 0);
              v34 = (a10 + (v22 << 10));
              v35 = a6 * v31;
              do
              {
                v36 = vmlaq_f64(vmulq_f64(v30, vextq_s8(*(a5 + v35 + 16), *(a5 + v35 + 16), 8uLL)), v33, *(a5 + v35 + 16));
                v37 = vmlaq_f64(vmulq_f64(v30, vextq_s8(*(a5 + v35), *(a5 + v35), 8uLL)), v33, *(a5 + v35));
                v38 = vmlaq_f64(vmulq_f64(v30, vextq_s8(*(a5 + v35 + 48), *(a5 + v35 + 48), 8uLL)), v33, *(a5 + v35 + 48));
                v34[2] = vmlaq_f64(vmulq_f64(v30, vextq_s8(*(a5 + v35 + 32), *(a5 + v35 + 32), 8uLL)), v33, *(a5 + v35 + 32));
                v34[3] = v38;
                v39 = v32 + 7;
                *v34 = v37;
                v34[1] = v36;
                v34 += 4;
                v32 += 4;
                v35 += 64;
              }

              while (v39 < v19);
              v40 = v32;
            }

            if (v40 < v19)
            {
              v41 = vdupq_lane_s64(*&v28, 0);
              v42 = a5 + a6 * v31;
              do
              {
                *(a10 + (v22 << 10) + 16 * v40) = vmlaq_f64(vmulq_f64(v30, vextq_s8(*(v42 + 16 * v40), *(v42 + 16 * v40), 8uLL)), v41, *(v42 + 16 * v40));
                ++v40;
              }

              while (v40 < v19);
            }

            ++v22;
          }

          while (v22 < v20);
        }

        result = cblas_zgemm_NEWLAPACK();
        v16 = v22 + v21;
      }

      while ((v22 + v21) < a3);
      a5 += 1024;
      a8 += a9 << 10;
      v14 = v207 + 64;
      v15 = a2;
    }

    while (v207 + 64 < a2);
  }

  return result;
}

uint64_t sub_236742568(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, float32x4_t a13, uint64_t a14, uint64_t a15)
{
  v156 = result;
  __asm
  {
    FMOV            V0.4S, #-1.0
    FMOV            V8.2S, #1.0
    FMOV            V1.4S, #1.0
  }

  v149 = a2;
  if (a2 < 33 || a3 <= 32)
  {
    if (a2 >= 1)
    {
      v54 = 0;
      v55 = 8 * a6;
      v56 = vnegq_f64(_Q0);
      v57 = vnegq_f64(_Q1);
      do
      {
        v154 = v54;
        v58 = a2 - v54;
        if (a2 - v54 >= 32)
        {
          v59 = 32;
        }

        else
        {
          v59 = a2 - v54;
        }

        v60 = v156;
        if (a3 >= 1)
        {
          v61 = 0;
          result = v59;
          do
          {
            if (a3 - v61 >= 32)
            {
              v62 = 32;
            }

            else
            {
              v62 = a3 - v61;
            }

            v63 = v61;
            if (a3 - v61 < 1)
            {
              v64 = 0;
            }

            else
            {
              v64 = 0;
              v65 = a7 + 16 * v61;
              v66 = 8 * v61;
              do
              {
                v67 = (v65 + 8 * (2 * v64));
                v68 = *v67;
                v69 = v67[1];
                v70 = fabsf(*v67) == INFINITY;
                if (fabsf(v69) == INFINITY)
                {
                  v70 = 1;
                }

                if (v70)
                {
                  a13.f32[0] = 0.0;
                }

                else
                {
                  a13.f32[0] = v68;
                }

                if (v70)
                {
                  v71 = 0.0;
                }

                else
                {
                  v71 = v69;
                }

                v72 = vmulq_n_f32(v56, v71);
                v73 = 4 * v64;
                v74 = v66 + 8 * v64;
                if (v58 < 4)
                {
                  v82 = 0;
                }

                else
                {
                  v75 = 0;
                  v76 = vdupq_lane_s32(*a13.f32, 0);
                  v77 = (a15 + 8 * v73);
                  v78 = a6 * v74;
                  do
                  {
                    v79 = vmulq_f32(*(a5 + v78 + 16), v57);
                    v80 = vmulq_f32(*(a5 + v78), v57);
                    v81 = v75 + 7;
                    *v77 = vmlaq_f32(vmulq_f32(v72, vrev64q_s32(v80)), v76, v80);
                    v77[1] = vmlaq_f32(vmulq_f32(v72, vrev64q_s32(v79)), v76, v79);
                    v75 += 4;
                    v77 += 66;
                    v78 += 32;
                  }

                  while (v81 < v59);
                  v82 = v75;
                }

                if (v82 < v59)
                {
                  *a13.f32 = vdup_lane_s32(*a13.f32, 0);
                  v83 = a5 + a6 * v74;
                  do
                  {
                    v84 = vmul_f32(*(v83 + 8 * v82), COERCE_FLOAT32X2_T(-_D8));
                    *(a15 + 8 * ((33 * (v82 & 0x7FFFFFFC) + v73) | v82 & 3)) = vmla_f32(vmul_f32(*v72.f32, vrev64_s32(v84)), *a13.f32, v84);
                    ++v82;
                  }

                  while (v82 < v59);
                }

                ++v64;
              }

              while (v64 < v62);
            }

            __asm { FMOV            V3.2S, #-1.0 }

            if (v58 < 4)
            {
              v140 = 0;
            }

            else
            {
              v86 = 0;
              do
              {
                v87 = v86 | 3;
                v88 = v86 * a14;
                if (v60 < 4)
                {
                  v124 = 0;
                }

                else
                {
                  v89 = 0;
                  v90 = (v86 | 1) * a14;
                  v91 = (v86 | 2) * a14;
                  v92 = a4 + 8 * v63 * a6;
                  v93 = v87 * a14;
                  do
                  {
                    if (v64 < 1)
                    {
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      a13 = 0uLL;
                      v95 = 0uLL;
                    }

                    else
                    {
                      a13 = 0uLL;
                      v94 = v64;
                      v95 = 0uLL;
                      v96 = v92;
                      v97 = (a15 + 264 * v86);
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      do
                      {
                        v104 = *(v96 + 16);
                        v105 = vrev64q_s32(*v96);
                        v106 = vrev64q_s32(v104);
                        v108 = *v97;
                        v107 = v97[1];
                        v97 += 2;
                        v109 = vmulq_lane_f32(v56, *v108.f32, 1);
                        v103 = vsubq_f32(v103, vmlaq_n_f32(vmulq_f32(v106, v109), v104, v108.f32[0]));
                        v102 = vsubq_f32(v102, vmlaq_n_f32(vmulq_f32(v105, v109), *v96, v108.f32[0]));
                        v110 = vmulq_laneq_f32(v56, v108, 3);
                        v101 = vsubq_f32(v101, vmlaq_laneq_f32(vmulq_f32(v106, v110), v104, v108, 2));
                        v100 = vsubq_f32(v100, vmlaq_laneq_f32(vmulq_f32(v105, v110), *v96, v108, 2));
                        v111 = vmulq_lane_f32(v56, *v107.f32, 1);
                        v99 = vsubq_f32(v99, vmlaq_n_f32(vmulq_f32(v106, v111), v104, v107.f32[0]));
                        v98 = vsubq_f32(v98, vmlaq_n_f32(vmulq_f32(v105, v111), *v96, v107.f32[0]));
                        v112 = vmulq_laneq_f32(v56, v107, 3);
                        v95 = vsubq_f32(v95, vmlaq_laneq_f32(vmulq_f32(v106, v112), v104, v107, 2));
                        a13 = vsubq_f32(a13, vmlaq_laneq_f32(vmulq_f32(v105, v112), *v96, v107, 2));
                        v96 += v55;
                        --v94;
                      }

                      while (v94);
                    }

                    v113 = (a8 + 8 * (v88 + v89));
                    if (v63)
                    {
                      v114 = vaddq_f32(v103, v113[1]);
                      *v113 = vaddq_f32(v102, *v113);
                      v113[1] = v114;
                      v115 = (a8 + 8 * (v90 + v89));
                      v116 = vaddq_f32(v101, v115[1]);
                      *v115 = vaddq_f32(v100, *v115);
                      v115[1] = v116;
                      v117 = (a8 + 8 * (v91 + v89));
                      v118 = v117[1];
                      *v117 = vaddq_f32(v98, *v117);
                      v117[1] = vaddq_f32(v99, v118);
                      v119 = (a8 + 8 * (v93 + v89));
                      v95 = vaddq_f32(v95, v119[1]);
                      a13 = vaddq_f32(a13, *v119);
                    }

                    else
                    {
                      *v113 = v102;
                      v113[1] = v103;
                      v120 = (a8 + 8 * (v90 + v89));
                      *v120 = v100;
                      v120[1] = v101;
                      v121 = (a8 + 8 * (v91 + v89));
                      *v121 = v98;
                      v121[1] = v99;
                      v119 = (a8 + 8 * (v93 + v89));
                    }

                    *v119 = a13;
                    v119[1] = v95;
                    v122 = v89 + 4;
                    v123 = v89 + 7;
                    v92 += 32;
                    v89 += 4;
                  }

                  while (v123 < v156);
                  v124 = v122;
                  v60 = v156;
                }

                if (v124 < v60)
                {
                  v125 = (v86 | 1) * a14;
                  v126 = (v86 | 2) * a14;
                  v127 = a4 + v55 * v63 + 8 * v124;
                  v128 = v87 * a14;
                  do
                  {
                    if (v64 < 1)
                    {
                      v134 = 0;
                      v133 = 0;
                      v132 = 0;
                      a13.i64[0] = 0;
                    }

                    else
                    {
                      a13.i64[0] = 0;
                      v129 = v64;
                      v130 = v127;
                      v131 = (a15 + 264 * v86);
                      v132 = 0;
                      v133 = 0;
                      v134 = 0;
                      do
                      {
                        v135 = vrev64_s32(*v130);
                        v137 = *v131;
                        v136 = v131[1];
                        v131 += 2;
                        v134 = vsub_f32(v134, vmla_n_f32(vmul_f32(v135, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), *v137.f32, 1)), *v130, v137.f32[0]));
                        v133 = vsub_f32(v133, vmla_laneq_f32(vmul_f32(v135, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D3), v137, 3)), *v130, v137, 2));
                        v132 = vsub_f32(v132, vmla_n_f32(vmul_f32(v135, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), *v136.f32, 1)), *v130, v136.f32[0]));
                        *a13.f32 = vsub_f32(*a13.f32, vmla_laneq_f32(vmul_f32(v135, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D3), v136, 3)), *v130, v136, 2));
                        v130 = (v130 + v55);
                        --v129;
                      }

                      while (v129);
                    }

                    v138 = v88 + v124;
                    if (v63)
                    {
                      *(a8 + 8 * v138) = vadd_f32(v134, *(a8 + 8 * v138));
                      *(a8 + 8 * (v125 + v124)) = vadd_f32(v133, *(a8 + 8 * (v125 + v124)));
                      *(a8 + 8 * (v126 + v124)) = vadd_f32(v132, *(a8 + 8 * (v126 + v124)));
                      v139 = v128 + v124;
                      *a13.f32 = vadd_f32(*a13.f32, *(a8 + 8 * (v128 + v124)));
                    }

                    else
                    {
                      *(a8 + 8 * v138) = v134;
                      *(a8 + 8 * (v125 + v124)) = v133;
                      *(a8 + 8 * (v126 + v124)) = v132;
                      v139 = v128 + v124;
                    }

                    *(a8 + 8 * v139) = a13.i64[0];
                    ++v124;
                    v127 += 8;
                  }

                  while (v124 != v156);
                }

                LODWORD(v140) = v86 + 4;
                v141 = v86 + 7;
                v86 += 4;
              }

              while (v141 < v59);
              v140 = v140;
            }

            if (v140 < v59)
            {
              do
              {
                if (v60 >= 1)
                {
                  v142 = 0;
                  v143 = (a4 + 8 * v63 * a6);
                  do
                  {
                    a13.i64[0] = 0;
                    if (v64 >= 1)
                    {
                      v144 = v64;
                      v145 = v143;
                      v146 = (a15 + 8 * ((33 * (v140 & 0x7FFFFFFC)) & 0xFFFFFFFC | v140 & 3));
                      do
                      {
                        v147 = *v146;
                        v146 += 4;
                        *a13.f32 = vsub_f32(*a13.f32, vmla_n_f32(vmul_f32(vrev64_s32(*v145), vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), v147, 1)), *v145, v147.f32[0]));
                        v145 = (v145 + v55);
                        --v144;
                      }

                      while (v144);
                    }

                    v148 = v140 * a14 + v142;
                    if (v63)
                    {
                      *a13.f32 = vadd_f32(*a13.f32, *(a8 + 8 * v148));
                    }

                    *(a8 + 8 * v148) = a13.i64[0];
                    ++v142;
                    ++v143;
                  }

                  while (v142 != v156);
                }

                ++v140;
              }

              while (v140 < v59);
            }

            v61 = v64 + v63;
          }

          while (v64 + v63 < a3);
        }

        a5 += 256;
        a8 += a14 << 8;
        v54 = v154 + 32;
        a2 = v149;
      }

      while (v154 + 32 < v149);
    }
  }

  else
  {
    v26 = 0;
    v151 = vnegq_f64(_Q0);
    v27 = vnegq_f64(_Q1);
    v28 = a2;
    v153 = v27;
    do
    {
      v29 = 0;
      v150 = v26;
      v30 = v28 - v26;
      if (v28 - v26 >= 64)
      {
        v31 = 64;
      }

      else
      {
        v31 = v28 - v26;
      }

      v32 = v31;
      do
      {
        if (a3 - v29 >= 64)
        {
          v33 = 64;
        }

        else
        {
          v33 = a3 - v29;
        }

        v34 = v29;
        if (a3 - v29 < 1)
        {
          v35 = 0;
        }

        else
        {
          v35 = 0;
          v36 = a7 + 16 * v29;
          do
          {
            v37 = (v36 + 16 * v35);
            v38 = *v37;
            v39 = v37[1];
            v40 = fabsf(*v37) == INFINITY;
            if (fabsf(v39) == INFINITY)
            {
              v40 = 1;
            }

            if (v40)
            {
              *_Q1.f64 = 0.0;
            }

            else
            {
              *_Q1.f64 = v38;
            }

            if (v40)
            {
              v41 = 0.0;
            }

            else
            {
              v41 = v39;
            }

            v42 = vmulq_n_f32(v151, v41);
            v43 = 8 * v34 + 8 * v35;
            if (v30 < 4)
            {
              v51 = 0;
            }

            else
            {
              v44 = 0;
              v45 = vdupq_lane_s32(*&_Q1.f64[0], 0);
              v46 = (a15 + (v35 << 9));
              v47 = a6 * v43;
              do
              {
                v48 = vmulq_f32(*(a5 + v47 + 16), v27);
                v49 = vmulq_f32(*(a5 + v47), v27);
                v50 = v44 + 7;
                *v46 = vmlaq_f32(vmulq_f32(v42, vrev64q_s32(v49)), v45, v49);
                v46[1] = vmlaq_f32(vmulq_f32(v42, vrev64q_s32(v48)), v45, v48);
                v46 += 2;
                v44 += 4;
                v47 += 32;
              }

              while (v50 < v32);
              v51 = v44;
            }

            if (v51 < v32)
            {
              *&_Q1.f64[0] = vdup_lane_s32(*&_Q1.f64[0], 0);
              v52 = a5 + a6 * v43;
              do
              {
                v53 = vmul_f32(*(v52 + 8 * v51), COERCE_FLOAT32X2_T(-_D8));
                *(a15 + (v35 << 9) + 8 * v51++) = vmla_f32(vmul_f32(*v42.f32, vrev64_s32(v53)), *&_Q1.f64[0], v53);
              }

              while (v51 < v32);
            }

            ++v35;
          }

          while (v35 < v33);
        }

        result = cblas_cgemm_NEWLAPACK();
        v27 = v153;
        v29 = v35 + v34;
      }

      while ((v35 + v34) < a3);
      a5 += 512;
      a8 += a14 << 9;
      v28 = v149;
      v26 = v150 + 64;
    }

    while (v150 + 64 < v149);
  }

  return result;
}

uint64_t sub_236743144(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v209 = result;
  if (a2 < 33 || a3 <= 32)
  {
    if (a2 >= 1)
    {
      v45 = 0;
      v46 = 16 * a6;
      v47 = xmmword_23681FB50;
      v48 = xmmword_23681FD30;
      v49 = a2;
      do
      {
        v205 = v45;
        v50 = v49 - v45;
        if (v49 - v45 >= 32)
        {
          v51 = 32;
        }

        else
        {
          v51 = v49 - v45;
        }

        v52 = v209;
        if (a3 >= 1)
        {
          v53 = 0;
          result = v51;
          do
          {
            if (a3 - v53 >= 32)
            {
              v54 = 32;
            }

            else
            {
              v54 = a3 - v53;
            }

            v55 = v53;
            if (a3 - v53 < 1)
            {
              v56 = 0;
            }

            else
            {
              v56 = 0;
              v57 = a7 + 32 * v53;
              v58 = 16 * v53;
              do
              {
                v59 = (v57 + 16 * (2 * v56));
                v60 = *v59;
                v61 = v59[1];
                v62 = fabs(*v59) == INFINITY;
                if (fabs(v61) == INFINITY)
                {
                  v62 = 1;
                }

                if (v62)
                {
                  v63 = 0.0;
                }

                else
                {
                  v63 = v60;
                }

                if (v62)
                {
                  v64 = 0.0;
                }

                else
                {
                  v64 = v61;
                }

                v65 = vmulq_n_f64(v47, v64);
                v66 = 4 * v56;
                v67 = v58 + 16 * v56;
                if (v50 < 4)
                {
                  v77 = 0;
                }

                else
                {
                  v68 = 0;
                  v69 = vdupq_lane_s64(*&v63, 0);
                  v70 = (a10 + 16 * v66);
                  v71 = a6 * v67;
                  do
                  {
                    v72 = vmulq_f64(*(a5 + v71 + 32), v48);
                    v73 = vmulq_f64(*(a5 + v71 + 48), v48);
                    v74 = vmulq_f64(*(a5 + v71), v48);
                    v75 = vmulq_f64(*(a5 + v71 + 16), v48);
                    v70[2] = vmlaq_f64(vmulq_f64(v65, vextq_s8(v72, v72, 8uLL)), v69, v72);
                    v70[3] = vmlaq_f64(vmulq_f64(v65, vextq_s8(v73, v73, 8uLL)), v69, v73);
                    v76 = v68 + 7;
                    *v70 = vmlaq_f64(vmulq_f64(v65, vextq_s8(v74, v74, 8uLL)), v69, v74);
                    v70[1] = vmlaq_f64(vmulq_f64(v65, vextq_s8(v75, v75, 8uLL)), v69, v75);
                    v68 += 4;
                    v70 += 132;
                    v71 += 64;
                  }

                  while (v76 < v51);
                  v77 = v68;
                }

                if (v77 < v51)
                {
                  v78 = vdupq_lane_s64(*&v63, 0);
                  v79 = a5 + a6 * v67;
                  do
                  {
                    v80 = vmulq_f64(*(v79 + 16 * v77), v48);
                    *(a10 + 16 * ((33 * (v77 & 0x7FFFFFFC) + v66) | v77 & 3)) = vmlaq_f64(vmulq_f64(v65, vextq_s8(v80, v80, 8uLL)), v78, v80);
                    ++v77;
                  }

                  while (v77 < v51);
                }

                ++v56;
              }

              while (v56 < v54);
            }

            if (v50 < 4)
            {
              v195 = 0;
            }

            else
            {
              v81 = 0;
              do
              {
                v82 = v81 | 3;
                v83 = v81 * a9;
                if (v52 < 4)
                {
                  v177 = 0;
                }

                else
                {
                  v84 = 0;
                  v85 = (v81 | 1) * a9;
                  v86 = (v81 | 2) * a9;
                  v87 = a4 + 16 * v55 * a6;
                  v88 = v82 * a9;
                  do
                  {
                    if (v56 < 1)
                    {
                      v104 = 0uLL;
                      v105 = 0uLL;
                      v106 = 0uLL;
                      v107 = 0uLL;
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v89 = 0uLL;
                      v91 = 0uLL;
                      v93 = 0uLL;
                      v95 = 0uLL;
                    }

                    else
                    {
                      v89 = 0uLL;
                      v90 = v56;
                      v91 = 0uLL;
                      v92 = v87;
                      v93 = 0uLL;
                      v94 = (a10 + 528 * v81);
                      v95 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v104 = 0uLL;
                      v105 = 0uLL;
                      v106 = 0uLL;
                      v107 = 0uLL;
                      do
                      {
                        v210 = v99;
                        v212 = v104;
                        v213 = v103;
                        v214 = v102;
                        v215 = v101;
                        v216 = v100;
                        v109 = *(v92 + 32);
                        v108 = *(v92 + 48);
                        v110 = *(v92 + 16);
                        v111 = vextq_s8(*v92, *v92, 8uLL);
                        v112 = vextq_s8(v110, v110, 8uLL);
                        v113 = vextq_s8(v109, v109, 8uLL);
                        v114 = vextq_s8(v108, v108, 8uLL);
                        v115 = v94[2];
                        v116 = v94[3];
                        v118 = *v94;
                        v117 = v94[1];
                        v94 += 4;
                        v119 = vmulq_laneq_f64(xmmword_23681FB50, v118, 1);
                        v120 = vmulq_f64(v114, v119);
                        v121 = vmulq_f64(v113, v119);
                        v122 = vmulq_f64(v112, v119);
                        v123 = vmlaq_n_f64(vmulq_f64(v111, v119), *v92, v118.f64[0]);
                        v124 = vmlaq_n_f64(v122, v110, v118.f64[0]);
                        v125 = vmlaq_n_f64(v121, v109, v118.f64[0]);
                        v126 = vmlaq_n_f64(v120, v108, v118.f64[0]);
                        v127 = vmulq_laneq_f64(xmmword_23681FB50, v117, 1);
                        v128 = vmulq_f64(v114, v127);
                        v129 = v98;
                        v130 = v89;
                        v131 = vmulq_f64(v113, v127);
                        v132 = v97;
                        v133 = v91;
                        v134 = vmulq_f64(v112, v127);
                        v135 = vmlaq_n_f64(vmulq_f64(v111, v127), *v92, v117.f64[0]);
                        v136 = vmlaq_n_f64(v134, v110, v117.f64[0]);
                        v137 = vmlaq_n_f64(v131, v109, v117.f64[0]);
                        v138 = vmlaq_n_f64(v128, v108, v117.f64[0]);
                        v139 = vmulq_laneq_f64(xmmword_23681FB50, v115, 1);
                        v140 = vmulq_f64(v114, v139);
                        v141 = vmulq_f64(v113, v139);
                        v142 = vmulq_f64(v112, v139);
                        v143 = vmlaq_n_f64(vmulq_f64(v111, v139), *v92, v115.f64[0]);
                        v144 = vmlaq_n_f64(v142, v110, v115.f64[0]);
                        v145 = vmlaq_n_f64(v141, v109, v115.f64[0]);
                        v146 = vmlaq_n_f64(v140, v108, v115.f64[0]);
                        v147 = vmulq_laneq_f64(xmmword_23681FB50, v116, 1);
                        v148 = vmlaq_n_f64(vmulq_f64(v111, v147), *v92, v116.f64[0]);
                        v149 = vmlaq_n_f64(vmulq_f64(v112, v147), v110, v116.f64[0]);
                        v150 = vmlaq_n_f64(vmulq_f64(v113, v147), v109, v116.f64[0]);
                        v151 = vmlaq_n_f64(vmulq_f64(v114, v147), v108, v116.f64[0]);
                        v107 = vsubq_f64(v107, v126);
                        v106 = vsubq_f64(v106, v125);
                        v105 = vsubq_f64(v105, v124);
                        v104 = vsubq_f64(v212, v123);
                        v103 = vsubq_f64(v213, v138);
                        v102 = vsubq_f64(v214, v137);
                        v152 = v130;
                        v153 = v129;
                        v101 = vsubq_f64(v215, v136);
                        v154 = v133;
                        v155 = v132;
                        v100 = vsubq_f64(v216, v135);
                        v99 = vsubq_f64(v210, v146);
                        v98 = vsubq_f64(v153, v145);
                        v97 = vsubq_f64(v155, v144);
                        v96 = vsubq_f64(v96, v143);
                        v95 = vsubq_f64(v95, v151);
                        v93 = vsubq_f64(v93, v150);
                        v91 = vsubq_f64(v154, v149);
                        v89 = vsubq_f64(v152, v148);
                        v92 += v46;
                        --v90;
                      }

                      while (v90);
                    }

                    v156 = (a8 + 16 * (v83 + v84));
                    if (v55)
                    {
                      v157 = vaddq_f64(v107, v156[3]);
                      v158 = vaddq_f64(v106, v156[2]);
                      v159 = vaddq_f64(v105, v156[1]);
                      *v156 = vaddq_f64(v104, *v156);
                      v156[1] = v159;
                      v156[2] = v158;
                      v156[3] = v157;
                      v160 = (a8 + 16 * (v85 + v84));
                      v161 = vaddq_f64(v102, v160[2]);
                      v162 = vaddq_f64(v101, v160[1]);
                      v163 = vaddq_f64(v103, v160[3]);
                      *v160 = vaddq_f64(v100, *v160);
                      v160[1] = v162;
                      v160[2] = v161;
                      v160[3] = v163;
                      v164 = (a8 + 16 * (v86 + v84));
                      v165 = vaddq_f64(v98, v164[2]);
                      v166 = vaddq_f64(v97, v164[1]);
                      v167 = vaddq_f64(v99, v164[3]);
                      *v164 = vaddq_f64(v96, *v164);
                      v164[1] = v166;
                      v164[2] = v165;
                      v164[3] = v167;
                      v168 = (a8 + 16 * (v88 + v84));
                      v169 = vaddq_f64(v93, v168[2]);
                      v170 = vaddq_f64(v91, v168[1]);
                      v171 = vaddq_f64(v95, v168[3]);
                      *v168 = vaddq_f64(v89, *v168);
                      v168[1] = v170;
                      v168[2] = v169;
                      v168[3] = v171;
                    }

                    else
                    {
                      *v156 = v104;
                      v156[1] = v105;
                      v156[2] = v106;
                      v156[3] = v107;
                      v172 = (a8 + 16 * (v85 + v84));
                      *v172 = v100;
                      v172[1] = v101;
                      v172[2] = v102;
                      v172[3] = v103;
                      v173 = (a8 + 16 * (v86 + v84));
                      *v173 = v96;
                      v173[1] = v97;
                      v173[2] = v98;
                      v173[3] = v99;
                      v174 = (a8 + 16 * (v88 + v84));
                      v174[2] = v93;
                      v174[3] = v95;
                      *v174 = v89;
                      v174[1] = v91;
                    }

                    v48 = xmmword_23681FD30;
                    v47 = xmmword_23681FB50;
                    v175 = v84 + 4;
                    v176 = v84 + 7;
                    v87 += 64;
                    v84 += 4;
                  }

                  while (v176 < v209);
                  v177 = v175;
                  v52 = v209;
                }

                if (v177 < v52)
                {
                  v178 = (v81 | 1) * a9;
                  v179 = (v81 | 2) * a9;
                  v180 = a4 + v46 * v55 + 16 * v177;
                  v181 = v82 * a9;
                  do
                  {
                    if (v56 < 1)
                    {
                      v188 = 0uLL;
                      v187 = 0uLL;
                      v186 = 0uLL;
                      v182 = 0uLL;
                    }

                    else
                    {
                      v182 = 0uLL;
                      v183 = v56;
                      v184 = v180;
                      v185 = (a10 + 528 * v81);
                      v186 = 0uLL;
                      v187 = 0uLL;
                      v188 = 0uLL;
                      do
                      {
                        v189 = vextq_s8(*v184, *v184, 8uLL);
                        v191 = v185[2];
                        v190 = v185[3];
                        v193 = *v185;
                        v192 = v185[1];
                        v185 += 4;
                        v188 = vsubq_f64(v188, vmlaq_n_f64(vmulq_f64(v189, vmulq_laneq_f64(v47, v193, 1)), *v184, v193.f64[0]));
                        v187 = vsubq_f64(v187, vmlaq_n_f64(vmulq_f64(v189, vmulq_laneq_f64(v47, v192, 1)), *v184, v192.f64[0]));
                        v186 = vsubq_f64(v186, vmlaq_n_f64(vmulq_f64(v189, vmulq_laneq_f64(v47, v191, 1)), *v184, v191.f64[0]));
                        v182 = vsubq_f64(v182, vmlaq_n_f64(vmulq_f64(v189, vmulq_laneq_f64(v47, v190, 1)), *v184, v190.f64[0]));
                        v184 = (v184 + v46);
                        --v183;
                      }

                      while (v183);
                    }

                    v194 = v83 + v177;
                    if (v55)
                    {
                      *(a8 + 16 * v194) = vaddq_f64(v188, *(a8 + 16 * v194));
                      *(a8 + 16 * (v178 + v177)) = vaddq_f64(v187, *(a8 + 16 * (v178 + v177)));
                      *(a8 + 16 * (v179 + v177)) = vaddq_f64(v186, *(a8 + 16 * (v179 + v177)));
                      *(a8 + 16 * (v181 + v177)) = vaddq_f64(v182, *(a8 + 16 * (v181 + v177)));
                    }

                    else
                    {
                      *(a8 + 16 * v194) = v188;
                      *(a8 + 16 * (v178 + v177)) = v187;
                      *(a8 + 16 * (v179 + v177)) = v186;
                      *(a8 + 16 * (v181 + v177)) = v182;
                    }

                    ++v177;
                    v180 += 16;
                  }

                  while (v177 != v209);
                }

                LODWORD(v195) = v81 + 4;
                v196 = v81 + 7;
                v81 += 4;
              }

              while (v196 < v51);
              v195 = v195;
            }

            if (v195 < v51)
            {
              do
              {
                if (v52 >= 1)
                {
                  v197 = 0;
                  v198 = (a4 + 16 * v55 * a6);
                  do
                  {
                    v199 = 0uLL;
                    if (v56 >= 1)
                    {
                      v200 = v56;
                      v201 = v198;
                      v202 = (a10 + 16 * ((33 * (v195 & 0x7FFFFFFC)) & 0xFFFFFFFC | v195 & 3));
                      do
                      {
                        v203 = *v202;
                        v202 += 4;
                        v199 = vsubq_f64(v199, vmlaq_n_f64(vmulq_f64(vextq_s8(*v201, *v201, 8uLL), vmulq_laneq_f64(v47, v203, 1)), *v201, v203.f64[0]));
                        v201 = (v201 + v46);
                        --v200;
                      }

                      while (v200);
                    }

                    v204 = v195 * a9 + v197;
                    if (v55)
                    {
                      v199 = vaddq_f64(v199, *(a8 + 16 * v204));
                    }

                    *(a8 + 16 * v204) = v199;
                    ++v197;
                    ++v198;
                  }

                  while (v197 != v209);
                }

                ++v195;
              }

              while (v195 < v51);
            }

            v53 = v56 + v55;
          }

          while (v56 + v55 < a3);
        }

        a5 += 512;
        a8 += a9 << 9;
        v49 = a2;
        v45 = v205 + 32;
      }

      while (v205 + 32 < a2);
    }
  }

  else
  {
    v14 = 0;
    v15 = a2;
    do
    {
      v16 = 0;
      v211 = v14;
      v17 = v15 - v14;
      if (v15 - v14 >= 64)
      {
        v18 = 64;
      }

      else
      {
        v18 = v15 - v14;
      }

      v19 = v18;
      do
      {
        if (a3 - v16 >= 64)
        {
          v20 = 64;
        }

        else
        {
          v20 = a3 - v16;
        }

        v21 = v16;
        if (a3 - v16 < 1)
        {
          v22 = 0;
        }

        else
        {
          v22 = 0;
          v23 = a7 + 32 * v16;
          do
          {
            v24 = (v23 + 32 * v22);
            v25 = *v24;
            v26 = v24[1];
            v27 = fabs(*v24) == INFINITY;
            if (fabs(v26) == INFINITY)
            {
              v27 = 1;
            }

            if (v27)
            {
              v28 = 0.0;
            }

            else
            {
              v28 = v25;
            }

            if (v27)
            {
              v29 = 0.0;
            }

            else
            {
              v29 = v26;
            }

            v30 = vmulq_n_f64(xmmword_23681FB50, v29);
            v31 = 16 * v21 + 16 * v22;
            if (v17 < 4)
            {
              v41 = 0;
            }

            else
            {
              v32 = 0;
              v33 = vdupq_lane_s64(*&v28, 0);
              v34 = (a10 + (v22 << 10));
              v35 = a6 * v31;
              do
              {
                v36 = vmulq_f64(*(a5 + v35 + 32), xmmword_23681FD30);
                v37 = vmulq_f64(*(a5 + v35 + 48), xmmword_23681FD30);
                v38 = vmulq_f64(*(a5 + v35), xmmword_23681FD30);
                v39 = vmulq_f64(*(a5 + v35 + 16), xmmword_23681FD30);
                v34[2] = vmlaq_f64(vmulq_f64(v30, vextq_s8(v36, v36, 8uLL)), v33, v36);
                v34[3] = vmlaq_f64(vmulq_f64(v30, vextq_s8(v37, v37, 8uLL)), v33, v37);
                v40 = v32 + 7;
                *v34 = vmlaq_f64(vmulq_f64(v30, vextq_s8(v38, v38, 8uLL)), v33, v38);
                v34[1] = vmlaq_f64(vmulq_f64(v30, vextq_s8(v39, v39, 8uLL)), v33, v39);
                v34 += 4;
                v32 += 4;
                v35 += 64;
              }

              while (v40 < v19);
              v41 = v32;
            }

            if (v41 < v19)
            {
              v42 = vdupq_lane_s64(*&v28, 0);
              v43 = a5 + a6 * v31;
              do
              {
                v44 = vmulq_f64(*(v43 + 16 * v41), xmmword_23681FD30);
                *(a10 + (v22 << 10) + 16 * v41++) = vmlaq_f64(vmulq_f64(v30, vextq_s8(v44, v44, 8uLL)), v42, v44);
              }

              while (v41 < v19);
            }

            ++v22;
          }

          while (v22 < v20);
        }

        result = cblas_zgemm_NEWLAPACK();
        v16 = v22 + v21;
      }

      while ((v22 + v21) < a3);
      a5 += 1024;
      a8 += a9 << 10;
      v14 = v211 + 64;
      v15 = a2;
    }

    while (v211 + 64 < a2);
  }

  return result;
}

uint64_t sub_236743FF8(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, __n128 a10, __n128 a11, double a12, double a13, __n128 a14)
{
  v16 = result;
  if (result < 65 || a2 <= 64)
  {
    if (result >= 1)
    {
      v35 = 0;
      v36 = a3;
      v37 = 4 * a4;
      do
      {
        v115 = v35;
        v38 = v16 - v35;
        if (v16 - v35 >= 32)
        {
          v39 = 32;
        }

        else
        {
          v39 = v16 - v35;
        }

        if (a2 >= 1)
        {
          v40 = 0;
          v41 = a6 + 4 * v115 * a7;
          result = v39;
          do
          {
            if (a2 - v40 >= 32)
            {
              v42 = 32;
            }

            else
            {
              v42 = a2 - v40;
            }

            v43 = v40;
            if (a2 - v40 < 1)
            {
              v44 = 0;
              v46 = a4;
            }

            else
            {
              v44 = 0;
              v45 = a5 + 8 * v40;
              v46 = a4;
              do
              {
                v47 = *(v45 + 4 * (2 * v44));
                if (fabsf(v47) == INFINITY)
                {
                  v47 = 0.0;
                }

                v48 = 4 * v44;
                v49 = 4 * v43 + 4 * v44;
                if (v38 < 4)
                {
                  v55 = 0;
                }

                else
                {
                  v50 = 0;
                  v51 = (a8 + 4 * v48);
                  v52 = (v36 + a4 * v49);
                  do
                  {
                    v53 = *v52++;
                    a11 = vmulq_n_f32(v53, v47);
                    *v51 = a11;
                    v54 = v50 + 7;
                    v50 += 4;
                    v51 += 33;
                  }

                  while (v54 < v39);
                  v55 = v50;
                }

                if (v55 < v39)
                {
                  v56 = v36 + a4 * v49;
                  do
                  {
                    *(a8 + 4 * ((33 * (v55 & 0x7FFFFFFC) + v48) | v55 & 3)) = v47 * *(v56 + 4 * v55);
                    ++v55;
                  }

                  while (v55 < v39);
                }

                ++v44;
              }

              while (v44 < v42);
            }

            if (v38 < 4)
            {
              v94 = 0;
            }

            else
            {
              v57 = 0;
              v58 = (a3 + 4 * v43 * v46);
              do
              {
                v59 = v57 | 3;
                v60 = v57;
                if (v57 + 7 < v16)
                {
                  v61 = v58;
                  v62 = v57;
                  do
                  {
                    if (v44 < 1)
                    {
                      v72 = 0uLL;
                      v73 = 0uLL;
                      v70 = 0uLL;
                      v71 = 0uLL;
                      v68 = 0uLL;
                      v69 = 0uLL;
                      v63 = 0uLL;
                      v65 = 0uLL;
                    }

                    else
                    {
                      v63 = 0uLL;
                      v64 = v44;
                      v65 = 0uLL;
                      v66 = v61;
                      v67 = (a8 + 132 * v57);
                      v68 = 0uLL;
                      v69 = 0uLL;
                      v70 = 0uLL;
                      v71 = 0uLL;
                      v72 = 0uLL;
                      v73 = 0uLL;
                      do
                      {
                        v74 = v66[1];
                        v75 = *v67++;
                        v73 = vmlsq_lane_f32(v73, v74, *v75.f32, 0);
                        v72 = vmlsq_lane_f32(v72, *v66, *v75.f32, 0);
                        v71 = vmlsq_lane_f32(v71, v74, *v75.f32, 1);
                        v70 = vmlsq_lane_f32(v70, *v66, *v75.f32, 1);
                        v69 = vmlsq_laneq_f32(v69, v74, v75, 2);
                        v68 = vmlsq_laneq_f32(v68, *v66, v75, 2);
                        v65 = vmlsq_laneq_f32(v65, v74, v75, 3);
                        v63 = vmlsq_laneq_f32(v63, *v66, v75, 3);
                        v66 = (v66 + v37);
                        --v64;
                      }

                      while (v64);
                    }

                    v76 = (v41 + 4 * v57 * a7 + 4 * v62);
                    v77 = vaddq_f32(v73, v76[1]);
                    *v76 = vaddq_f32(v72, *v76);
                    v76[1] = v77;
                    v78 = (v41 + 4 * (v57 | 1) * a7 + 4 * v62);
                    v79 = vaddq_f32(v71, v78[1]);
                    *v78 = vaddq_f32(v70, *v78);
                    v78[1] = v79;
                    v80 = (v41 + 4 * (v57 | 2) * a7 + 4 * v62);
                    a14 = *v80;
                    v81 = vaddq_f32(v69, v80[1]);
                    *v80 = vaddq_f32(v68, *v80);
                    v80[1] = v81;
                    v82 = (v41 + 4 * v59 * a7 + 4 * v62);
                    a11 = vaddq_f32(v65, v82[1]);
                    *v82 = vaddq_f32(v63, *v82);
                    v82[1] = a11;
                    v60 = v62 + 8;
                    v83 = v62 + 15;
                    v61 += 2;
                    v62 += 8;
                  }

                  while (v83 < v16);
                }

                if (v60 < v16)
                {
                  v84 = v41 + 4 * v59 * a7;
                  v85 = v60;
                  v86 = a3 + v37 * v43 + 4 * v60;
                  do
                  {
                    v87 = 0uLL;
                    if (v44 >= 1)
                    {
                      v88 = v44;
                      v89 = v86;
                      v90 = (a8 + 132 * v57);
                      do
                      {
                        a11.n128_u32[0] = *v89;
                        v91 = *v90++;
                        v87 = vmlsq_lane_f32(v87, v91, a11.n128_u64[0], 0);
                        v89 = (v89 + v37);
                        --v88;
                      }

                      while (v88);
                    }

                    *(v41 + 4 * v57 * a7 + 4 * v85) = v87.f32[0] + *(v41 + 4 * v57 * a7 + 4 * v85);
                    *(v41 + 4 * (v57 | 1) * a7 + 4 * v85) = v87.f32[1] + *(v41 + 4 * (v57 | 1) * a7 + 4 * v85);
                    *(v41 + 4 * (v57 | 2) * a7 + 4 * v85) = v87.f32[2] + *(v41 + 4 * (v57 | 2) * a7 + 4 * v85);
                    *(v84 + 4 * v85) = v87.f32[3] + *(v84 + 4 * v85);
                    ++v85;
                    v86 += 4;
                  }

                  while (v85 < v16);
                }

                v92 = v57 + 4;
                v93 = v57 + 7;
                ++v58;
                v57 += 4;
              }

              while (v93 < v39);
              v94 = v92;
            }

            if (v94 < v39)
            {
              v95 = (a3 + v37 * v43 + 4 * v94);
              do
              {
                v96 = v94;
                if (v94 + 7 < v16)
                {
                  v97 = v95;
                  v98 = v94;
                  do
                  {
                    v99 = 0uLL;
                    if (v44 < 1)
                    {
                      v103 = 0uLL;
                    }

                    else
                    {
                      v100 = v44;
                      v101 = v97;
                      v102 = (a8 + ((4 * (v94 & 3)) | (528 * (v94 >> 2))));
                      v103 = 0uLL;
                      do
                      {
                        v104 = *v102;
                        v102 += 4;
                        a14.n128_u32[0] = v104;
                        v103 = vmlsq_lane_f32(v103, v101[1], a14.n128_u64[0], 0);
                        v99 = vmlsq_lane_f32(v99, *v101, a14.n128_u64[0], 0);
                        v101 = (v101 + v37);
                        --v100;
                      }

                      while (v100);
                    }

                    v105 = (v41 + 4 * v94 * a7 + 4 * v98);
                    a11 = vaddq_f32(v103, v105[1]);
                    *v105 = vaddq_f32(v99, *v105);
                    v105[1] = a11;
                    v96 = v98 + 8;
                    v106 = v98 + 15;
                    v97 += 2;
                    v98 += 8;
                  }

                  while (v106 < v16);
                }

                if (v96 < v16)
                {
                  v107 = v96;
                  v108 = a3 + v37 * v43 + 4 * v96;
                  do
                  {
                    v109 = 0.0;
                    if (v44 >= 1)
                    {
                      v110 = v44;
                      v111 = v108;
                      v112 = (a8 + ((4 * (v94 & 3)) | (528 * (v94 >> 2))));
                      do
                      {
                        v113 = *v112;
                        v112 += 4;
                        v109 = v109 - (*v111 * v113);
                        v111 = (v111 + v37);
                        --v110;
                      }

                      while (v110);
                    }

                    *(v41 + 4 * v94 * a7 + 4 * v107) = v109 + *(v41 + 4 * v94 * a7 + 4 * v107);
                    ++v107;
                    v108 += 4;
                  }

                  while (v107 < v16);
                }

                ++v94;
                v95 = (v95 + 4);
              }

              while (v94 < v39);
            }

            v40 = v44 + v43;
          }

          while (v44 + v43 < a2);
        }

        v35 = v115 + 32;
        v36 += 128;
      }

      while (v115 + 32 < v16);
    }
  }

  else
  {
    v17 = 0;
    v18 = a3;
    v114 = a7 << 8;
    do
    {
      v19 = 0;
      v116 = v17;
      v20 = v16 - v17;
      if (v16 - v17 >= 64)
      {
        v21 = 64;
      }

      else
      {
        v21 = v16 - v17;
      }

      v22 = v21;
      do
      {
        if (a2 - v19 >= 64)
        {
          v23 = 64;
        }

        else
        {
          v23 = a2 - v19;
        }

        v24 = v19;
        if (a2 - v19 < 1)
        {
          v25 = 0;
        }

        else
        {
          v25 = 0;
          v26 = a5 + 8 * v19;
          v27 = 4 * v24;
          do
          {
            v28 = *(v26 + 8 * v25);
            if (fabsf(v28) == INFINITY)
            {
              v28 = 0.0;
            }

            if (v20 < 4)
            {
              v34 = 0;
            }

            else
            {
              v29 = 0;
              v30 = (a8 + (v25 << 8));
              v31 = (v18 + a4 * (v27 + 4 * v25));
              do
              {
                v32 = *v31++;
                *v30++ = vmulq_n_f32(v32, v28);
                v33 = v29 + 7;
                v29 += 4;
              }

              while (v33 < v22);
              v34 = v29;
            }

            if (v34 < v22)
            {
              do
              {
                *(a8 + (v25 << 8) + 4 * v34) = v28 * *(v18 + a4 * (v27 + 4 * v25) + 4 * v34);
                ++v34;
              }

              while (v34 < v22);
            }

            ++v25;
          }

          while (v25 < v23);
        }

        cblas_sgemm_NEWLAPACK();
        result = 64;
        v19 = v25 + v24;
      }

      while ((v25 + v24) < a2);
      a6 += v114;
      v17 = v116 + 64;
      v18 += 256;
    }

    while (v116 + 64 < v16);
  }

  return result;
}

uint64_t sub_236744920(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = result;
  if (result < 65 || a2 <= 64)
  {
    if (result >= 1)
    {
      v31 = 0;
      v32 = a3;
      v33 = 8 * a4;
      do
      {
        v146 = v31;
        v34 = v11 - v31;
        if (v11 - v31 >= 32)
        {
          v35 = 32;
        }

        else
        {
          v35 = v11 - v31;
        }

        if (a2 >= 1)
        {
          v36 = 0;
          v37 = a6 + 8 * v146 * a7;
          result = v35;
          do
          {
            if (a2 - v36 >= 32)
            {
              v38 = 32;
            }

            else
            {
              v38 = a2 - v36;
            }

            v39 = v36;
            if (a2 - v36 < 1)
            {
              v40 = 0;
              v42 = a4;
            }

            else
            {
              v40 = 0;
              v41 = a5 + 16 * v36;
              v42 = a4;
              do
              {
                v43 = *(v41 + 8 * (2 * v40));
                if (fabs(v43) == INFINITY)
                {
                  v43 = 0.0;
                }

                v44 = 4 * v40;
                v45 = 8 * v39 + 8 * v40;
                if (v34 < 4)
                {
                  v52 = 0;
                }

                else
                {
                  v46 = 0;
                  v47 = (a8 + 8 * v44);
                  v48 = (v32 + a4 * v45);
                  do
                  {
                    v50 = *v48;
                    v49 = v48[1];
                    v48 += 2;
                    v51 = v46 + 7;
                    *v47 = vmulq_n_f64(v50, v43);
                    v47[1] = vmulq_n_f64(v49, v43);
                    v46 += 4;
                    v47 += 66;
                  }

                  while (v51 < v35);
                  v52 = v46;
                }

                if (v52 < v35)
                {
                  v53 = v32 + a4 * v45;
                  do
                  {
                    *(a8 + 8 * ((33 * (v52 & 0x7FFFFFFC) + v44) | v52 & 3)) = v43 * *(v53 + 8 * v52);
                    ++v52;
                  }

                  while (v52 < v35);
                }

                ++v40;
              }

              while (v40 < v38);
            }

            if (v34 < 4)
            {
              v120 = 0;
            }

            else
            {
              v54 = 0;
              v55 = (a3 + 8 * v39 * v42);
              v148 = v39;
              v56 = a3 + v33 * v39;
              do
              {
                v57 = v54 | 3;
                v58 = v54;
                if (v54 + 7 < v11)
                {
                  v59 = v55;
                  v60 = v54;
                  do
                  {
                    if (v40 < 1)
                    {
                      v76 = 0uLL;
                      v77 = 0uLL;
                      v78 = 0uLL;
                      v79 = 0uLL;
                      v72 = 0uLL;
                      v73 = 0uLL;
                      v74 = 0uLL;
                      v75 = 0uLL;
                      v68 = 0uLL;
                      v69 = 0uLL;
                      v70 = 0uLL;
                      v71 = 0uLL;
                      v61 = 0uLL;
                      v63 = 0uLL;
                      v65 = 0uLL;
                      v67 = 0uLL;
                    }

                    else
                    {
                      v61 = 0uLL;
                      v62 = v40;
                      v63 = 0uLL;
                      v64 = v59;
                      v65 = 0uLL;
                      v66 = (a8 + 264 * v54);
                      v67 = 0uLL;
                      v68 = 0uLL;
                      v69 = 0uLL;
                      v70 = 0uLL;
                      v71 = 0uLL;
                      v72 = 0uLL;
                      v73 = 0uLL;
                      v74 = 0uLL;
                      v75 = 0uLL;
                      v76 = 0uLL;
                      v77 = 0uLL;
                      v78 = 0uLL;
                      v79 = 0uLL;
                      do
                      {
                        v81 = v64[2];
                        v80 = v64[3];
                        v82 = v64[1];
                        v84 = *v66;
                        v83 = v66[1];
                        v66 += 2;
                        v77 = vmlsq_lane_f64(v77, v82, v84.f64[0], 0);
                        v76 = vmlsq_lane_f64(v76, *v64, v84.f64[0], 0);
                        v78 = vmlsq_lane_f64(v78, v81, v84.f64[0], 0);
                        v79 = vmlsq_lane_f64(v79, v80, v84.f64[0], 0);
                        v73 = vmlsq_laneq_f64(v73, v82, v84, 1);
                        v72 = vmlsq_laneq_f64(v72, *v64, v84, 1);
                        v74 = vmlsq_laneq_f64(v74, v81, v84, 1);
                        v75 = vmlsq_laneq_f64(v75, v80, v84, 1);
                        v69 = vmlsq_lane_f64(v69, v82, v83.f64[0], 0);
                        v68 = vmlsq_lane_f64(v68, *v64, v83.f64[0], 0);
                        v70 = vmlsq_lane_f64(v70, v81, v83.f64[0], 0);
                        v71 = vmlsq_lane_f64(v71, v80, v83.f64[0], 0);
                        v63 = vmlsq_laneq_f64(v63, v82, v83, 1);
                        v61 = vmlsq_laneq_f64(v61, *v64, v83, 1);
                        v65 = vmlsq_laneq_f64(v65, v81, v83, 1);
                        v64 = (v64 + v33);
                        v67 = vmlsq_laneq_f64(v67, v80, v83, 1);
                        --v62;
                      }

                      while (v62);
                    }

                    v85 = (v37 + 8 * v54 * a7 + 8 * v60);
                    v86 = vaddq_f64(v79, v85[3]);
                    v87 = vaddq_f64(v77, v85[1]);
                    v88 = vaddq_f64(v78, v85[2]);
                    *v85 = vaddq_f64(v76, *v85);
                    v85[1] = v87;
                    v85[2] = v88;
                    v85[3] = v86;
                    v89 = (v37 + 8 * (v54 | 1) * a7 + 8 * v60);
                    v90 = vaddq_f64(v74, v89[2]);
                    v91 = vaddq_f64(v73, v89[1]);
                    v92 = vaddq_f64(v75, v89[3]);
                    *v89 = vaddq_f64(v72, *v89);
                    v89[1] = v91;
                    v89[2] = v90;
                    v89[3] = v92;
                    v93 = (v37 + 8 * (v54 | 2) * a7 + 8 * v60);
                    v94 = vaddq_f64(v70, v93[2]);
                    v95 = vaddq_f64(v69, v93[1]);
                    v96 = vaddq_f64(v71, v93[3]);
                    *v93 = vaddq_f64(v68, *v93);
                    v93[1] = v95;
                    v93[2] = v94;
                    v93[3] = v96;
                    v97 = (v37 + 8 * v57 * a7 + 8 * v60);
                    v98 = vaddq_f64(v65, v97[2]);
                    v99 = vaddq_f64(v63, v97[1]);
                    v100 = vaddq_f64(v67, v97[3]);
                    *v97 = vaddq_f64(v61, *v97);
                    v97[1] = v99;
                    v97[2] = v98;
                    v97[3] = v100;
                    v58 = v60 + 8;
                    LODWORD(v97) = v60 + 15;
                    v59 += 4;
                    v60 += 8;
                  }

                  while (v97 < v11);
                }

                if (v58 < v11)
                {
                  v101 = v37 + 8 * v57 * a7;
                  v102 = v58;
                  v103 = (v56 + 8 * v58);
                  do
                  {
                    if (v40 < 1)
                    {
                      v108 = 0.0;
                      _D3 = 0.0;
                      v107 = 0.0;
                      _D1 = 0.0;
                    }

                    else
                    {
                      v104 = v40;
                      v105 = v103;
                      v106 = (a8 + 264 * v54);
                      v107 = 0.0;
                      v108 = 0.0;
                      do
                      {
                        _D5 = *v105;
                        _Q7 = *v106;
                        _Q6 = v106[1];
                        v106 += 2;
                        v108 = v108 - *&_Q7 * *v105;
                        __asm { FMLS            D3, D5, V7.D[1] }

                        v107 = v107 - *&_Q6 * *v105;
                        __asm { FMLS            D1, D5, V6.D[1] }

                        v105 = (v105 + v33);
                        --v104;
                      }

                      while (v104);
                    }

                    *(v37 + 8 * v54 * a7 + 8 * v102) = v108 + *(v37 + 8 * v54 * a7 + 8 * v102);
                    *(v37 + 8 * (v54 | 1) * a7 + 8 * v102) = _D3 + *(v37 + 8 * (v54 | 1) * a7 + 8 * v102);
                    *(v37 + 8 * (v54 | 2) * a7 + 8 * v102) = v107 + *(v37 + 8 * (v54 | 2) * a7 + 8 * v102);
                    *(v101 + 8 * v102) = _D1 + *(v101 + 8 * v102);
                    ++v102;
                    ++v103;
                  }

                  while (v102 < v11);
                }

                v118 = v54 + 4;
                v119 = v54 + 7;
                v55 += 2;
                v54 += 4;
              }

              while (v119 < v35);
              v120 = v118;
              v39 = v148;
            }

            if (v120 < v35)
            {
              v121 = (a3 + v33 * v39 + 8 * v120);
              do
              {
                v122 = v120;
                if (v120 + 7 < v11)
                {
                  v123 = v121;
                  v124 = v120;
                  do
                  {
                    v125 = 0uLL;
                    if (v40 < 1)
                    {
                      v129 = 0uLL;
                      v130 = 0uLL;
                      v131 = 0uLL;
                    }

                    else
                    {
                      v126 = v40;
                      v127 = v123;
                      v128 = (a8 + ((8 * (v120 & 3)) | (1056 * (v120 >> 2))));
                      v129 = 0uLL;
                      v130 = 0uLL;
                      v131 = 0uLL;
                      do
                      {
                        v132 = *v128;
                        v128 += 4;
                        v130 = vmlsq_lane_f64(v130, v127[2], v132, 0);
                        v129 = vmlsq_lane_f64(v129, v127[1], v132, 0);
                        v125 = vmlsq_lane_f64(v125, *v127, v132, 0);
                        v131 = vmlsq_lane_f64(v131, v127[3], v132, 0);
                        v127 = (v127 + v33);
                        --v126;
                      }

                      while (v126);
                    }

                    v133 = (v37 + 8 * v120 * a7 + 8 * v124);
                    v134 = vaddq_f64(v131, v133[3]);
                    v135 = vaddq_f64(v129, v133[1]);
                    v136 = vaddq_f64(v130, v133[2]);
                    *v133 = vaddq_f64(v125, *v133);
                    v133[1] = v135;
                    v133[2] = v136;
                    v133[3] = v134;
                    v122 = v124 + 8;
                    v137 = v124 + 15;
                    v123 += 4;
                    v124 += 8;
                  }

                  while (v137 < v11);
                }

                if (v122 < v11)
                {
                  v138 = v122;
                  v139 = a3 + v33 * v39 + 8 * v122;
                  do
                  {
                    v140 = 0.0;
                    if (v40 >= 1)
                    {
                      v141 = v40;
                      v142 = v139;
                      v143 = (a8 + ((8 * (v120 & 3)) | (1056 * (v120 >> 2))));
                      do
                      {
                        v144 = *v143;
                        v143 += 4;
                        v140 = v140 - *v142 * v144;
                        v142 = (v142 + v33);
                        --v141;
                      }

                      while (v141);
                    }

                    *(v37 + 8 * v120 * a7 + 8 * v138) = v140 + *(v37 + 8 * v120 * a7 + 8 * v138);
                    ++v138;
                    v139 += 8;
                  }

                  while (v138 < v11);
                }

                ++v120;
                v121 = (v121 + 8);
              }

              while (v120 < v35);
            }

            v36 = v40 + v39;
          }

          while (v40 + v39 < a2);
        }

        v31 = v146 + 32;
        v32 += 256;
      }

      while (v146 + 32 < v11);
    }
  }

  else
  {
    v12 = 0;
    v13 = a3;
    v145 = a7 << 9;
    do
    {
      v14 = 0;
      v147 = v12;
      v15 = v11 - v12;
      if (v11 - v12 >= 64)
      {
        v16 = 64;
      }

      else
      {
        v16 = v11 - v12;
      }

      v17 = v16;
      do
      {
        if (a2 - v14 >= 64)
        {
          v18 = 64;
        }

        else
        {
          v18 = a2 - v14;
        }

        v19 = v14;
        if (a2 - v14 < 1)
        {
          v20 = 0;
        }

        else
        {
          v20 = 0;
          v21 = a5 + 16 * v14;
          v22 = 8 * v19;
          do
          {
            v23 = *(v21 + 16 * v20);
            if (fabs(v23) == INFINITY)
            {
              v23 = 0.0;
            }

            if (v15 < 4)
            {
              v30 = 0;
            }

            else
            {
              v24 = 0;
              v25 = (a8 + (v20 << 9));
              v26 = (v13 + a4 * (v22 + 8 * v20));
              do
              {
                v28 = *v26;
                v27 = v26[1];
                v26 += 2;
                v29 = v24 + 7;
                *v25 = vmulq_n_f64(v28, v23);
                v25[1] = vmulq_n_f64(v27, v23);
                v25 += 2;
                v24 += 4;
              }

              while (v29 < v17);
              v30 = v24;
            }

            if (v30 < v17)
            {
              do
              {
                *(a8 + (v20 << 9) + 8 * v30) = v23 * *(v13 + a4 * (v22 + 8 * v20) + 8 * v30);
                ++v30;
              }

              while (v30 < v17);
            }

            ++v20;
          }

          while (v20 < v18);
        }

        cblas_dgemm_NEWLAPACK();
        result = 64;
        v14 = v20 + v19;
      }

      while ((v20 + v19) < a2);
      a6 += v145;
      v12 = v147 + 64;
      v13 += 512;
    }

    while (v147 + 64 < v11);
  }

  return result;
}

uint64_t sub_236745364(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, __n128 a12)
{
  v16 = result;
  __asm { FMOV            V0.4S, #-1.0 }

  if (result < 33 || a2 <= 32)
  {
    if (result >= 1)
    {
      v48 = 0;
      v49 = 8 * a4;
      v50 = vnegq_f64(_Q0);
      v51 = a3;
      do
      {
        v154 = v48;
        v52 = v16 - v48;
        if (v16 - v48 >= 32)
        {
          v53 = 32;
        }

        else
        {
          v53 = v16 - v48;
        }

        if (a2 >= 1)
        {
          v54 = 0;
          v55 = a6 + 8 * v154 * a7;
          result = v53;
          do
          {
            if (a2 - v54 >= 32)
            {
              v56 = 32;
            }

            else
            {
              v56 = a2 - v54;
            }

            v158 = v54;
            v57 = 0;
            if (a2 - v54 >= 1)
            {
              v58 = a5 + 16 * v54;
              v59 = 8 * v54;
              do
              {
                v60 = (v58 + 8 * (2 * v57));
                v61 = *v60;
                v62 = v60[1];
                v63 = fabsf(*v60) == INFINITY;
                if (fabsf(v62) == INFINITY)
                {
                  v63 = 1;
                }

                if (v63)
                {
                  a12.n128_f32[0] = 0.0;
                }

                else
                {
                  a12.n128_f32[0] = v61;
                }

                if (v63)
                {
                  v64 = 0.0;
                }

                else
                {
                  v64 = v62;
                }

                v65 = vmulq_n_f32(v50, v64);
                v66 = 4 * v57;
                v67 = v59 + 8 * v57;
                if (v52 < 4)
                {
                  v75 = 0;
                }

                else
                {
                  v68 = 0;
                  v69 = vdupq_lane_s32(a12.n128_u64[0], 0);
                  v70 = (a8 + 8 * v66);
                  v71 = (v51 + a4 * v67);
                  do
                  {
                    v73 = *v71;
                    v72 = v71[1];
                    v71 += 2;
                    v74 = v68 + 7;
                    *v70 = vmlaq_f32(vmulq_f32(v65, vrev64q_s32(v73)), v69, v73);
                    v70[1] = vmlaq_f32(vmulq_f32(v65, vrev64q_s32(v72)), v69, v72);
                    v68 += 4;
                    v70 += 66;
                  }

                  while (v74 < v53);
                  v75 = v68;
                }

                if (v75 < v53)
                {
                  a12.n128_u64[0] = vdup_lane_s32(a12.n128_u64[0], 0);
                  v76 = v51 + a4 * v67;
                  do
                  {
                    *(a8 + 8 * ((33 * (v75 & 0x7FFFFFFC) + v66) | v75 & 3)) = vmla_f32(vmul_f32(*v65.f32, vrev64_s32(*(v76 + 8 * v75))), a12.n128_u64[0], *(v76 + 8 * v75));
                    ++v75;
                  }

                  while (v75 < v53);
                }

                ++v57;
              }

              while (v57 < v56);
            }

            __asm { FMOV            V2.2S, #-1.0 }

            if (v52 < 4)
            {
              v128 = 0;
            }

            else
            {
              v78 = 0;
              v79 = a3 + 8 * v158 * a4;
              do
              {
                v80 = v78 | 3;
                v81 = v78;
                if ((v78 | 3uLL) < v16)
                {
                  v82 = v79;
                  v83 = v78;
                  do
                  {
                    if (v57 < 1)
                    {
                      v93 = 0uLL;
                      v94 = 0uLL;
                      v91 = 0uLL;
                      v92 = 0uLL;
                      v89 = 0uLL;
                      v90 = 0uLL;
                      v84 = 0uLL;
                      v86 = 0uLL;
                    }

                    else
                    {
                      v84 = 0uLL;
                      v85 = v57;
                      v86 = 0uLL;
                      v87 = v82;
                      v88 = (a8 + 264 * v78);
                      v89 = 0uLL;
                      v90 = 0uLL;
                      v91 = 0uLL;
                      v92 = 0uLL;
                      v93 = 0uLL;
                      v94 = 0uLL;
                      do
                      {
                        v95 = *(v87 + 16);
                        v96 = vrev64q_s32(*v87);
                        v97 = vrev64q_s32(v95);
                        v99 = *v88;
                        v98 = v88[1];
                        v88 += 2;
                        v100 = vmulq_lane_f32(v50, *v99.f32, 1);
                        v94 = vsubq_f32(v94, vmlaq_n_f32(vmulq_f32(v97, v100), v95, v99.f32[0]));
                        v93 = vsubq_f32(v93, vmlaq_n_f32(vmulq_f32(v96, v100), *v87, v99.f32[0]));
                        v101 = vmulq_laneq_f32(v50, v99, 3);
                        v92 = vsubq_f32(v92, vmlaq_laneq_f32(vmulq_f32(v97, v101), v95, v99, 2));
                        v91 = vsubq_f32(v91, vmlaq_laneq_f32(vmulq_f32(v96, v101), *v87, v99, 2));
                        v102 = vmulq_lane_f32(v50, *v98.f32, 1);
                        v90 = vsubq_f32(v90, vmlaq_n_f32(vmulq_f32(v97, v102), v95, v98.f32[0]));
                        v89 = vsubq_f32(v89, vmlaq_n_f32(vmulq_f32(v96, v102), *v87, v98.f32[0]));
                        v103 = vmulq_laneq_f32(v50, v98, 3);
                        v86 = vsubq_f32(v86, vmlaq_laneq_f32(vmulq_f32(v97, v103), v95, v98, 2));
                        v84 = vsubq_f32(v84, vmlaq_laneq_f32(vmulq_f32(v96, v103), *v87, v98, 2));
                        v87 += v49;
                        --v85;
                      }

                      while (v85);
                    }

                    v104 = (v55 + 8 * v78 * a7 + 8 * v83);
                    v105 = vaddq_f32(v94, v104[1]);
                    *v104 = vaddq_f32(v93, *v104);
                    v104[1] = v105;
                    v106 = (v55 + 8 * (v78 | 1) * a7 + 8 * v83);
                    v107 = vaddq_f32(v92, v106[1]);
                    *v106 = vaddq_f32(v91, *v106);
                    v106[1] = v107;
                    v108 = (v55 + 8 * (v78 | 2) * a7 + 8 * v83);
                    v109 = vaddq_f32(v90, v108[1]);
                    *v108 = vaddq_f32(v89, *v108);
                    v108[1] = v109;
                    v110 = v55 + 8 * v80 * a7 + 8 * v83;
                    v111 = *(v110 + 16);
                    a12 = vaddq_f32(v84, *v110);
                    *v110 = a12;
                    *(v110 + 16) = vaddq_f32(v86, v111);
                    v81 = v83 + 4;
                    v112 = v83 + 7;
                    v82 += 32;
                    v83 += 4;
                  }

                  while (v112 < v16);
                }

                if (v81 < v16)
                {
                  v113 = v55 + 8 * v80 * a7;
                  v114 = v81;
                  v115 = a3 + v49 * v158 + 8 * v81;
                  do
                  {
                    if (v57 < 1)
                    {
                      v122 = 0;
                      v121 = 0;
                      v120 = 0;
                      v116 = 0;
                    }

                    else
                    {
                      v116 = 0;
                      v117 = v57;
                      v118 = v115;
                      v119 = (a8 + 264 * v78);
                      v120 = 0;
                      v121 = 0;
                      v122 = 0;
                      do
                      {
                        v123 = vrev64_s32(*v118);
                        v125 = *v119;
                        v124 = v119[1];
                        v119 += 2;
                        v122 = vsub_f32(v122, vmla_n_f32(vmul_f32(v123, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), *v125.f32, 1)), *v118, v125.f32[0]));
                        v121 = vsub_f32(v121, vmla_laneq_f32(vmul_f32(v123, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D2), v125, 3)), *v118, v125, 2));
                        v120 = vsub_f32(v120, vmla_n_f32(vmul_f32(v123, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), *v124.f32, 1)), *v118, v124.f32[0]));
                        v116 = vsub_f32(v116, vmla_laneq_f32(vmul_f32(v123, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D2), v124, 3)), *v118, v124, 2));
                        v118 = (v118 + v49);
                        --v117;
                      }

                      while (v117);
                    }

                    *(v55 + 8 * v78 * a7 + 8 * v114) = vadd_f32(v122, *(v55 + 8 * v78 * a7 + 8 * v114));
                    *(v55 + 8 * (v78 | 1) * a7 + 8 * v114) = vadd_f32(v121, *(v55 + 8 * (v78 | 1) * a7 + 8 * v114));
                    *(v55 + 8 * (v78 | 2) * a7 + 8 * v114) = vadd_f32(v120, *(v55 + 8 * (v78 | 2) * a7 + 8 * v114));
                    a12.n128_u64[0] = vadd_f32(v116, *(v113 + 8 * v114));
                    *(v113 + 8 * v114++) = a12.n128_u64[0];
                    v115 += 8;
                  }

                  while (v114 != v16);
                }

                v126 = v78 + 4;
                v127 = v78 + 7;
                v79 += 32;
                v78 += 4;
              }

              while (v127 < v53);
              v128 = v126;
            }

            if (v128 < v53)
            {
              v129 = (a3 + v49 * v158 + 8 * v128);
              do
              {
                v130 = v128;
                if (v128 + 3 < v16)
                {
                  v131 = v129;
                  v132 = v128;
                  do
                  {
                    v133 = 0uLL;
                    if (v57 < 1)
                    {
                      v137 = 0uLL;
                    }

                    else
                    {
                      v134 = v57;
                      v135 = v131;
                      v136 = (a8 + 8 * ((33 * (v128 & 0x7FFFFFFC)) & 0xFFFFFFFC | v128 & 3));
                      v137 = 0uLL;
                      do
                      {
                        v138 = *v136;
                        v136 += 4;
                        v139 = vmulq_lane_f32(v50, v138, 1);
                        v137 = vsubq_f32(v137, vmlaq_n_f32(vmulq_f32(vrev64q_s32(v135[1]), v139), v135[1], v138.f32[0]));
                        v133 = vsubq_f32(v133, vmlaq_n_f32(vmulq_f32(vrev64q_s32(*v135), v139), *v135, v138.f32[0]));
                        v135 = (v135 + v49);
                        --v134;
                      }

                      while (v134);
                    }

                    v140 = v55 + 8 * v128 * a7 + 8 * v132;
                    v141 = *(v140 + 16);
                    a12 = vaddq_f32(v133, *v140);
                    *v140 = a12;
                    *(v140 + 16) = vaddq_f32(v137, v141);
                    v130 = v132 + 4;
                    v142 = v132 + 7;
                    v131 += 2;
                    v132 += 4;
                  }

                  while (v142 < v16);
                }

                if (v130 < v16)
                {
                  v143 = v55 + 8 * v128 * a7;
                  v144 = v130;
                  v145 = a3 + v49 * v158 + 8 * v130;
                  do
                  {
                    v146 = 0;
                    if (v57 >= 1)
                    {
                      v147 = v57;
                      v148 = v145;
                      v149 = (a8 + 8 * ((33 * (v128 & 0x7FFFFFFC)) & 0xFFFFFFFC | v128 & 3));
                      do
                      {
                        v150 = *v149;
                        v149 += 4;
                        v146 = vsub_f32(v146, vmla_n_f32(vmul_f32(vrev64_s32(*v148), vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), v150, 1)), *v148, v150.f32[0]));
                        v148 = (v148 + v49);
                        --v147;
                      }

                      while (v147);
                    }

                    a12.n128_u64[0] = vadd_f32(v146, *(v143 + 8 * v144));
                    *(v143 + 8 * v144++) = a12.n128_u64[0];
                    v145 += 8;
                  }

                  while (v144 < v16);
                }

                ++v128;
                v129 = (v129 + 8);
              }

              while (v128 < v53);
            }

            v54 = v57 + v158;
          }

          while (v57 + v158 < a2);
        }

        v48 = v154 + 32;
        v51 += 256;
      }

      while (v154 + 32 < v16);
    }
  }

  else
  {
    v22 = 0;
    v152 = a7 << 9;
    v157 = vnegq_f64(_Q0);
    v23 = a3;
    v151 = result;
    do
    {
      v24 = 0;
      v153 = v22;
      v25 = v151 - v22;
      if (v151 - v22 >= 64)
      {
        v26 = 64;
      }

      else
      {
        v26 = v151 - v22;
      }

      v27 = v26;
      do
      {
        if (a2 - v24 >= 64)
        {
          v28 = 64;
        }

        else
        {
          v28 = a2 - v24;
        }

        v29 = v24;
        if (a2 - v24 < 1)
        {
          v30 = 0;
        }

        else
        {
          v30 = 0;
          v31 = a5 + 16 * v24;
          do
          {
            v32 = (v31 + 16 * v30);
            v33 = *v32;
            v34 = v32[1];
            v35 = fabsf(*v32) == INFINITY;
            if (fabsf(v34) == INFINITY)
            {
              v35 = 1;
            }

            if (v35)
            {
              *&a10 = 0.0;
            }

            else
            {
              *&a10 = v33;
            }

            if (v35)
            {
              v36 = 0.0;
            }

            else
            {
              v36 = v34;
            }

            v37 = vmulq_n_f32(v157, v36);
            v38 = 8 * v29 + 8 * v30;
            if (v25 < 4)
            {
              v46 = 0;
            }

            else
            {
              v39 = 0;
              v40 = vdupq_lane_s32(*&a10, 0);
              v41 = (a8 + (v30 << 9));
              v42 = (v23 + a4 * v38);
              do
              {
                v44 = *v42;
                v43 = v42[1];
                v42 += 2;
                v45 = v39 + 7;
                *v41 = vmlaq_f32(vmulq_f32(v37, vrev64q_s32(v44)), v40, v44);
                v41[1] = vmlaq_f32(vmulq_f32(v37, vrev64q_s32(v43)), v40, v43);
                v41 += 2;
                v39 += 4;
              }

              while (v45 < v27);
              v46 = v39;
            }

            if (v46 < v27)
            {
              a10 = COERCE_DOUBLE(vdup_lane_s32(*&a10, 0));
              v47 = v23 + a4 * v38;
              do
              {
                *(a8 + (v30 << 9) + 8 * v46) = vmla_f32(vmul_f32(*v37.f32, vrev64_s32(*(v47 + 8 * v46))), *&a10, *(v47 + 8 * v46));
                ++v46;
              }

              while (v46 < v27);
            }

            ++v30;
          }

          while (v30 < v28);
        }

        result = cblas_cgemm_NEWLAPACK();
        v24 = v30 + v29;
      }

      while ((v30 + v29) < a2);
      a6 += v152;
      v22 = v153 + 64;
      v23 += 512;
    }

    while (v153 + 64 < v16);
  }

  return result;
}

uint64_t sub_236745F3C(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  if (result < 33 || a2 <= 32)
  {
    if (result >= 1)
    {
      v42 = 0;
      v43 = 16 * a4;
      v44 = xmmword_23681FB50;
      v45 = a3;
      do
      {
        v210 = v42;
        v46 = v12 - v42;
        if (v12 - v42 >= 32)
        {
          v47 = 32;
        }

        else
        {
          v47 = v12 - v42;
        }

        if (a2 >= 1)
        {
          v48 = 0;
          v49 = a6 + 16 * v42 * a7;
          result = v47;
          do
          {
            if (a2 - v48 >= 32)
            {
              v50 = 32;
            }

            else
            {
              v50 = a2 - v48;
            }

            v213 = v48;
            v51 = 0;
            if (a2 - v48 >= 1)
            {
              v52 = a5 + 32 * v48;
              v53 = 16 * v48;
              do
              {
                v54 = (v52 + 16 * (2 * v51));
                v55 = *v54;
                v56 = v54[1];
                v57 = fabs(*v54) == INFINITY;
                if (fabs(v56) == INFINITY)
                {
                  v57 = 1;
                }

                if (v57)
                {
                  v58 = 0.0;
                }

                else
                {
                  v58 = v55;
                }

                if (v57)
                {
                  v59 = 0.0;
                }

                else
                {
                  v59 = v56;
                }

                v60 = vmulq_n_f64(v44, v59);
                v61 = 4 * v51;
                v62 = v53 + 16 * v51;
                if (v46 < 4)
                {
                  v71 = 0;
                }

                else
                {
                  v63 = 0;
                  v64 = vdupq_lane_s64(*&v58, 0);
                  v65 = (a8 + 16 * v61);
                  v66 = (v45 + a4 * v62);
                  do
                  {
                    v67 = vmlaq_f64(vmulq_f64(v60, vextq_s8(v66[3], v66[3], 8uLL)), v64, v66[3]);
                    v68 = vmlaq_f64(vmulq_f64(v60, vextq_s8(v66[1], v66[1], 8uLL)), v64, v66[1]);
                    v69 = vmlaq_f64(vmulq_f64(v60, vextq_s8(v66[2], v66[2], 8uLL)), v64, v66[2]);
                    *v65 = vmlaq_f64(vmulq_f64(v60, vextq_s8(*v66, *v66, 8uLL)), v64, *v66);
                    v65[1] = v68;
                    v70 = v63 + 7;
                    v65[2] = v69;
                    v65[3] = v67;
                    v63 += 4;
                    v65 += 132;
                    v66 += 4;
                  }

                  while (v70 < v47);
                  v71 = v63;
                }

                if (v71 < v47)
                {
                  v72 = vdupq_lane_s64(*&v58, 0);
                  v73 = v45 + a4 * v62;
                  do
                  {
                    *(a8 + 16 * ((33 * (v71 & 0x7FFFFFFC) + v61) | v71 & 3)) = vmlaq_f64(vmulq_f64(v60, vextq_s8(*(v73 + 16 * v71), *(v73 + 16 * v71), 8uLL)), v72, *(v73 + 16 * v71));
                    ++v71;
                  }

                  while (v71 < v47);
                }

                ++v51;
              }

              while (v51 < v50);
            }

            if (v46 < 4)
            {
              v183 = 0;
            }

            else
            {
              v74 = 0;
              v75 = a3 + 16 * v213 * a4;
              do
              {
                v76 = v74 | 3;
                v77 = v74;
                if ((v74 | 3uLL) < v12)
                {
                  v78 = v75;
                  v79 = v74;
                  do
                  {
                    if (v51 < 1)
                    {
                      v95 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v91 = 0uLL;
                      v92 = 0uLL;
                      v93 = 0uLL;
                      v94 = 0uLL;
                      v87 = 0uLL;
                      v88 = 0uLL;
                      v89 = 0uLL;
                      v90 = 0uLL;
                      v80 = 0uLL;
                      v82 = 0uLL;
                      v84 = 0uLL;
                      v86 = 0uLL;
                    }

                    else
                    {
                      v80 = 0uLL;
                      v81 = v51;
                      v82 = 0uLL;
                      v83 = v78;
                      v84 = 0uLL;
                      v85 = (a8 + 528 * v74);
                      v86 = 0uLL;
                      v87 = 0uLL;
                      v88 = 0uLL;
                      v89 = 0uLL;
                      v90 = 0uLL;
                      v91 = 0uLL;
                      v92 = 0uLL;
                      v93 = 0uLL;
                      v94 = 0uLL;
                      v95 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      do
                      {
                        v217 = v93;
                        v219 = v94;
                        v220 = v91;
                        v221 = v89;
                        v222 = v80;
                        v100 = *(v83 + 32);
                        v99 = *(v83 + 48);
                        v101 = *(v83 + 16);
                        v102 = vextq_s8(*v83, *v83, 8uLL);
                        v103 = vextq_s8(v101, v101, 8uLL);
                        v104 = vextq_s8(v100, v100, 8uLL);
                        v105 = vextq_s8(v99, v99, 8uLL);
                        v106 = v85[2];
                        v107 = v85[3];
                        v109 = *v85;
                        v108 = v85[1];
                        v85 += 4;
                        v110 = vmulq_laneq_f64(xmmword_23681FB50, v109, 1);
                        v111 = vmulq_f64(v105, v110);
                        v112 = vmulq_f64(v104, v110);
                        v113 = vmulq_f64(v103, v110);
                        v114 = vmlaq_n_f64(vmulq_f64(v102, v110), *v83, v109.f64[0]);
                        v115 = vmlaq_n_f64(v113, v101, v109.f64[0]);
                        v116 = vmlaq_n_f64(v112, v100, v109.f64[0]);
                        v117 = vmlaq_n_f64(v111, v99, v109.f64[0]);
                        v118 = vmulq_laneq_f64(xmmword_23681FB50, v108, 1);
                        v119 = v90;
                        v120 = v82;
                        v121 = vmulq_f64(v105, v118);
                        v122 = v84;
                        v123 = vmulq_f64(v104, v118);
                        v124 = v87;
                        v125 = vmulq_f64(v103, v118);
                        v126 = vmlaq_n_f64(vmulq_f64(v102, v118), *v83, v108.f64[0]);
                        v127 = vmlaq_n_f64(v125, v101, v108.f64[0]);
                        v128 = vmlaq_n_f64(v123, v100, v108.f64[0]);
                        v129 = vmlaq_n_f64(v121, v99, v108.f64[0]);
                        v130 = vmulq_laneq_f64(xmmword_23681FB50, v106, 1);
                        v131 = v86;
                        v132 = vmulq_f64(v105, v130);
                        v133 = v88;
                        v134 = vmulq_f64(v104, v130);
                        v135 = vmulq_f64(v103, v130);
                        v136 = vmlaq_n_f64(vmulq_f64(v102, v130), *v83, v106.f64[0]);
                        v137 = vmlaq_n_f64(v135, v101, v106.f64[0]);
                        v138 = vmlaq_n_f64(v134, v100, v106.f64[0]);
                        v139 = vmlaq_n_f64(v132, v99, v106.f64[0]);
                        v140 = vmulq_laneq_f64(xmmword_23681FB50, v107, 1);
                        v141 = vmlaq_n_f64(vmulq_f64(v102, v140), *v83, v107.f64[0]);
                        v142 = vmlaq_n_f64(vmulq_f64(v103, v140), v101, v107.f64[0]);
                        v143 = vmlaq_n_f64(vmulq_f64(v104, v140), v100, v107.f64[0]);
                        v144 = vmlaq_n_f64(vmulq_f64(v105, v140), v99, v107.f64[0]);
                        v98 = vsubq_f64(v98, v117);
                        v97 = vsubq_f64(v97, v116);
                        v96 = vsubq_f64(v96, v115);
                        v95 = vsubq_f64(v95, v114);
                        v94 = vsubq_f64(v219, v129);
                        v145 = v120;
                        v146 = v119;
                        v93 = vsubq_f64(v217, v128);
                        v147 = v122;
                        v92 = vsubq_f64(v92, v127);
                        v91 = vsubq_f64(v220, v126);
                        v90 = vsubq_f64(v146, v139);
                        v89 = vsubq_f64(v221, v138);
                        v88 = vsubq_f64(v133, v137);
                        v87 = vsubq_f64(v124, v136);
                        v86 = vsubq_f64(v131, v144);
                        v84 = vsubq_f64(v147, v143);
                        v82 = vsubq_f64(v145, v142);
                        v80 = vsubq_f64(v222, v141);
                        v83 += v43;
                        --v81;
                      }

                      while (v81);
                    }

                    v148 = (v49 + 16 * v74 * a7 + 16 * v79);
                    v149 = vaddq_f64(v98, v148[3]);
                    v150 = vaddq_f64(v96, v148[1]);
                    v151 = vaddq_f64(v95, *v148);
                    v152 = vaddq_f64(v97, v148[2]);
                    *v148 = v151;
                    v148[1] = v150;
                    v148[2] = v152;
                    v148[3] = v149;
                    v153 = (v49 + 16 * (v74 | 1) * a7 + 16 * v79);
                    v154 = vaddq_f64(v93, v153[2]);
                    v155 = vaddq_f64(v92, v153[1]);
                    v156 = vaddq_f64(v94, v153[3]);
                    *v153 = vaddq_f64(v91, *v153);
                    v153[1] = v155;
                    v153[2] = v154;
                    v153[3] = v156;
                    v157 = (v49 + 16 * (v74 | 2) * a7 + 16 * v79);
                    v158 = vaddq_f64(v89, v157[2]);
                    v159 = vaddq_f64(v88, v157[1]);
                    v160 = vaddq_f64(v90, v157[3]);
                    *v157 = vaddq_f64(v87, *v157);
                    v157[1] = v159;
                    v157[2] = v158;
                    v157[3] = v160;
                    v161 = (v49 + 16 * v76 * a7 + 16 * v79);
                    v162 = vaddq_f64(v84, v161[2]);
                    v163 = vaddq_f64(v82, v161[1]);
                    v164 = vaddq_f64(v86, v161[3]);
                    *v161 = vaddq_f64(v80, *v161);
                    v161[1] = v163;
                    v161[2] = v162;
                    v161[3] = v164;
                    v77 = v79 + 4;
                    v165 = v79 + 7;
                    v78 += 64;
                    v79 += 4;
                  }

                  while (v165 < v12);
                }

                v44 = xmmword_23681FB50;
                if (v77 < v12)
                {
                  v166 = v49 + 16 * v76 * a7;
                  v167 = v77;
                  v168 = a3 + v43 * v213 + 16 * v77;
                  do
                  {
                    if (v51 < 1)
                    {
                      v175 = 0uLL;
                      v174 = 0uLL;
                      v173 = 0uLL;
                      v169 = 0uLL;
                    }

                    else
                    {
                      v169 = 0uLL;
                      v170 = v51;
                      v171 = v168;
                      v172 = (a8 + 528 * v74);
                      v173 = 0uLL;
                      v174 = 0uLL;
                      v175 = 0uLL;
                      do
                      {
                        v176 = vextq_s8(*v171, *v171, 8uLL);
                        v178 = v172[2];
                        v177 = v172[3];
                        v180 = *v172;
                        v179 = v172[1];
                        v172 += 4;
                        v175 = vsubq_f64(v175, vmlaq_n_f64(vmulq_f64(v176, vmulq_laneq_f64(xmmword_23681FB50, v180, 1)), *v171, v180.f64[0]));
                        v174 = vsubq_f64(v174, vmlaq_n_f64(vmulq_f64(v176, vmulq_laneq_f64(xmmword_23681FB50, v179, 1)), *v171, v179.f64[0]));
                        v173 = vsubq_f64(v173, vmlaq_n_f64(vmulq_f64(v176, vmulq_laneq_f64(xmmword_23681FB50, v178, 1)), *v171, v178.f64[0]));
                        v169 = vsubq_f64(v169, vmlaq_n_f64(vmulq_f64(v176, vmulq_laneq_f64(xmmword_23681FB50, v177, 1)), *v171, v177.f64[0]));
                        v171 = (v171 + v43);
                        --v170;
                      }

                      while (v170);
                    }

                    *(v49 + 16 * v74 * a7 + 16 * v167) = vaddq_f64(v175, *(v49 + 16 * v74 * a7 + 16 * v167));
                    *(v49 + 16 * (v74 | 1) * a7 + 16 * v167) = vaddq_f64(v174, *(v49 + 16 * (v74 | 1) * a7 + 16 * v167));
                    *(v49 + 16 * (v74 | 2) * a7 + 16 * v167) = vaddq_f64(v173, *(v49 + 16 * (v74 | 2) * a7 + 16 * v167));
                    *(v166 + 16 * v167) = vaddq_f64(v169, *(v166 + 16 * v167));
                    ++v167;
                    v168 += 16;
                  }

                  while (v167 != v12);
                }

                v181 = v74 + 4;
                v182 = v74 + 7;
                v75 += 64;
                v74 += 4;
              }

              while (v182 < v47);
              v183 = v181;
            }

            if (v183 < v47)
            {
              v184 = (a3 + v43 * v213 + 16 * v183);
              do
              {
                v185 = v183;
                if (v183 + 3 < v12)
                {
                  v186 = v184;
                  v187 = v183;
                  do
                  {
                    v188 = 0uLL;
                    if (v51 < 1)
                    {
                      v192 = 0uLL;
                      v193 = 0uLL;
                      v194 = 0uLL;
                    }

                    else
                    {
                      v189 = v51;
                      v190 = v186;
                      v191 = (a8 + 16 * ((33 * (v183 & 0x7FFFFFFC)) & 0xFFFFFFFC | v183 & 3));
                      v192 = 0uLL;
                      v193 = 0uLL;
                      v194 = 0uLL;
                      do
                      {
                        v195 = *v191;
                        v191 += 4;
                        v196 = vmulq_laneq_f64(v44, v195, 1);
                        v194 = vsubq_f64(v194, vmlaq_n_f64(vmulq_f64(vextq_s8(v190[3], v190[3], 8uLL), v196), v190[3], v195.f64[0]));
                        v193 = vsubq_f64(v193, vmlaq_n_f64(vmulq_f64(vextq_s8(v190[2], v190[2], 8uLL), v196), v190[2], v195.f64[0]));
                        v192 = vsubq_f64(v192, vmlaq_n_f64(vmulq_f64(vextq_s8(v190[1], v190[1], 8uLL), v196), v190[1], v195.f64[0]));
                        v188 = vsubq_f64(v188, vmlaq_n_f64(vmulq_f64(vextq_s8(*v190, *v190, 8uLL), v196), *v190, v195.f64[0]));
                        v190 = (v190 + v43);
                        --v189;
                      }

                      while (v189);
                    }

                    v197 = (v49 + 16 * v183 * a7 + 16 * v187);
                    v198 = vaddq_f64(v194, v197[3]);
                    v199 = vaddq_f64(v192, v197[1]);
                    v200 = vaddq_f64(v188, *v197);
                    v201 = vaddq_f64(v193, v197[2]);
                    *v197 = v200;
                    v197[1] = v199;
                    v197[2] = v201;
                    v197[3] = v198;
                    v185 = v187 + 4;
                    v202 = v187 + 7;
                    v186 += 4;
                    v187 += 4;
                  }

                  while (v202 < v12);
                }

                if (v185 < v12)
                {
                  v203 = v185;
                  v204 = a3 + v43 * v213 + 16 * v185;
                  do
                  {
                    v205 = 0uLL;
                    if (v51 >= 1)
                    {
                      v206 = v51;
                      v207 = v204;
                      v208 = (a8 + 16 * ((33 * (v183 & 0x7FFFFFFC)) & 0xFFFFFFFC | v183 & 3));
                      do
                      {
                        v209 = *v208;
                        v208 += 4;
                        v205 = vsubq_f64(v205, vmlaq_n_f64(vmulq_f64(vextq_s8(*v207, *v207, 8uLL), vmulq_laneq_f64(v44, v209, 1)), *v207, v209.f64[0]));
                        v207 = (v207 + v43);
                        --v206;
                      }

                      while (v206);
                    }

                    *(v49 + 16 * v183 * a7 + 16 * v203) = vaddq_f64(v205, *(v49 + 16 * v183 * a7 + 16 * v203));
                    ++v203;
                    v204 += 16;
                  }

                  while (v203 < v12);
                }

                ++v183;
                ++v184;
              }

              while (v183 < v47);
            }

            v48 = v51 + v213;
          }

          while (v51 + v213 < a2);
        }

        v42 = v210 + 32;
        v45 += 512;
      }

      while (v210 + 32 < v12);
    }
  }

  else
  {
    v13 = 0;
    v216 = a7 << 10;
    v14 = a3;
    v215 = result;
    do
    {
      v15 = 0;
      v218 = v13;
      v16 = v215 - v13;
      if (v215 - v13 >= 64)
      {
        v17 = 64;
      }

      else
      {
        v17 = v215 - v13;
      }

      v18 = v17;
      do
      {
        if (a2 - v15 >= 64)
        {
          v19 = 64;
        }

        else
        {
          v19 = a2 - v15;
        }

        v20 = v15;
        if (a2 - v15 < 1)
        {
          v21 = 0;
        }

        else
        {
          v21 = 0;
          v22 = a5 + 32 * v15;
          do
          {
            v23 = (v22 + 32 * v21);
            v24 = *v23;
            v25 = v23[1];
            v26 = fabs(*v23) == INFINITY;
            if (fabs(v25) == INFINITY)
            {
              v26 = 1;
            }

            if (v26)
            {
              v27 = 0.0;
            }

            else
            {
              v27 = v24;
            }

            if (v26)
            {
              v28 = 0.0;
            }

            else
            {
              v28 = v25;
            }

            v29 = vmulq_n_f64(xmmword_23681FB50, v28);
            v30 = 16 * v20 + 16 * v21;
            if (v16 < 4)
            {
              v39 = 0;
            }

            else
            {
              v31 = 0;
              v32 = vdupq_lane_s64(*&v27, 0);
              v33 = (a8 + (v21 << 10));
              v34 = (v14 + a4 * v30);
              do
              {
                v35 = vmlaq_f64(vmulq_f64(v29, vextq_s8(v34[3], v34[3], 8uLL)), v32, v34[3]);
                v36 = vmlaq_f64(vmulq_f64(v29, vextq_s8(v34[1], v34[1], 8uLL)), v32, v34[1]);
                v37 = vmlaq_f64(vmulq_f64(v29, vextq_s8(v34[2], v34[2], 8uLL)), v32, v34[2]);
                *v33 = vmlaq_f64(vmulq_f64(v29, vextq_s8(*v34, *v34, 8uLL)), v32, *v34);
                v33[1] = v36;
                v38 = v31 + 7;
                v33[2] = v37;
                v33[3] = v35;
                v31 += 4;
                v34 += 4;
                v33 += 4;
              }

              while (v38 < v18);
              v39 = v31;
            }

            if (v39 < v18)
            {
              v40 = vdupq_lane_s64(*&v27, 0);
              v41 = v14 + a4 * v30;
              do
              {
                *(a8 + (v21 << 10) + 16 * v39) = vmlaq_f64(vmulq_f64(v29, vextq_s8(*(v41 + 16 * v39), *(v41 + 16 * v39), 8uLL)), v40, *(v41 + 16 * v39));
                ++v39;
              }

              while (v39 < v18);
            }

            ++v21;
          }

          while (v21 < v19);
        }

        result = cblas_zgemm_NEWLAPACK();
        v15 = v21 + v20;
      }

      while ((v21 + v20) < a2);
      a6 += v216;
      v13 = v218 + 64;
      v14 += 1024;
    }

    while (v218 + 64 < v12);
  }

  return result;
}

uint64_t sub_236746DEC(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, __n128 a13)
{
  v17 = result;
  __asm
  {
    FMOV            V0.4S, #-1.0
    FMOV            V8.2S, #1.0
    FMOV            V1.4S, #1.0
  }

  if (result < 33 || a2 <= 32)
  {
    if (result >= 1)
    {
      v55 = 0;
      v56 = 8 * a4;
      v57 = vnegq_f64(_Q0);
      v58 = vnegq_f64(_Q1);
      v59 = a3;
      do
      {
        v166 = v55;
        v60 = v17 - v55;
        if (v17 - v55 >= 32)
        {
          v61 = 32;
        }

        else
        {
          v61 = v17 - v55;
        }

        if (a2 >= 1)
        {
          v62 = 0;
          v63 = a6 + 8 * v166 * a7;
          result = v61;
          do
          {
            if (a2 - v62 >= 32)
            {
              v64 = 32;
            }

            else
            {
              v64 = a2 - v62;
            }

            v170 = v62;
            v65 = 0;
            if (a2 - v62 >= 1)
            {
              v66 = a5 + 16 * v62;
              v67 = 8 * v62;
              do
              {
                v68 = (v66 + 8 * (2 * v65));
                v69 = *v68;
                v70 = v68[1];
                v71 = fabsf(*v68) == INFINITY;
                if (fabsf(v70) == INFINITY)
                {
                  v71 = 1;
                }

                if (v71)
                {
                  a13.n128_f32[0] = 0.0;
                }

                else
                {
                  a13.n128_f32[0] = v69;
                }

                if (v71)
                {
                  v72 = 0.0;
                }

                else
                {
                  v72 = v70;
                }

                v73 = vmulq_n_f32(v57, v72);
                v74 = 4 * v65;
                v75 = v67 + 8 * v65;
                if (v60 < 4)
                {
                  v85 = 0;
                }

                else
                {
                  v76 = 0;
                  v77 = vdupq_lane_s32(a13.n128_u64[0], 0);
                  v78 = (a8 + 8 * v74);
                  v79 = (v59 + a4 * v75);
                  do
                  {
                    v80 = *v79;
                    v81 = v79[1];
                    v79 += 2;
                    v82 = vmulq_f32(v81, v58);
                    v83 = vmulq_f32(v80, v58);
                    v84 = v76 + 7;
                    *v78 = vmlaq_f32(vmulq_f32(v73, vrev64q_s32(v83)), v77, v83);
                    v78[1] = vmlaq_f32(vmulq_f32(v73, vrev64q_s32(v82)), v77, v82);
                    v76 += 4;
                    v78 += 66;
                  }

                  while (v84 < v61);
                  v85 = v76;
                }

                if (v85 < v61)
                {
                  a13.n128_u64[0] = vdup_lane_s32(a13.n128_u64[0], 0);
                  v86 = v59 + a4 * v75;
                  do
                  {
                    v87 = vmul_f32(*(v86 + 8 * v85), COERCE_FLOAT32X2_T(-_D8));
                    *(a8 + 8 * ((33 * (v85 & 0x7FFFFFFC) + v74) | v85 & 3)) = vmla_f32(vmul_f32(*v73.f32, vrev64_s32(v87)), a13.n128_u64[0], v87);
                    ++v85;
                  }

                  while (v85 < v61);
                }

                ++v65;
              }

              while (v65 < v64);
            }

            __asm { FMOV            V3.2S, #-1.0 }

            if (v60 < 4)
            {
              v139 = 0;
            }

            else
            {
              v89 = 0;
              v90 = a3 + 8 * v170 * a4;
              do
              {
                v91 = v89 | 3;
                v92 = v89;
                if ((v89 | 3uLL) < v17)
                {
                  v93 = v90;
                  v94 = v89;
                  do
                  {
                    if (v65 < 1)
                    {
                      v104 = 0uLL;
                      v105 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v95 = 0uLL;
                      v97 = 0uLL;
                    }

                    else
                    {
                      v95 = 0uLL;
                      v96 = v65;
                      v97 = 0uLL;
                      v98 = v93;
                      v99 = (a8 + 264 * v89);
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v104 = 0uLL;
                      v105 = 0uLL;
                      do
                      {
                        v106 = *(v98 + 16);
                        v107 = vrev64q_s32(*v98);
                        v108 = vrev64q_s32(v106);
                        v110 = *v99;
                        v109 = v99[1];
                        v99 += 2;
                        v111 = vmulq_lane_f32(v57, *v110.f32, 1);
                        v105 = vsubq_f32(v105, vmlaq_n_f32(vmulq_f32(v108, v111), v106, v110.f32[0]));
                        v104 = vsubq_f32(v104, vmlaq_n_f32(vmulq_f32(v107, v111), *v98, v110.f32[0]));
                        v112 = vmulq_laneq_f32(v57, v110, 3);
                        v103 = vsubq_f32(v103, vmlaq_laneq_f32(vmulq_f32(v108, v112), v106, v110, 2));
                        v102 = vsubq_f32(v102, vmlaq_laneq_f32(vmulq_f32(v107, v112), *v98, v110, 2));
                        v113 = vmulq_lane_f32(v57, *v109.f32, 1);
                        v101 = vsubq_f32(v101, vmlaq_n_f32(vmulq_f32(v108, v113), v106, v109.f32[0]));
                        v100 = vsubq_f32(v100, vmlaq_n_f32(vmulq_f32(v107, v113), *v98, v109.f32[0]));
                        v114 = vmulq_laneq_f32(v57, v109, 3);
                        v97 = vsubq_f32(v97, vmlaq_laneq_f32(vmulq_f32(v108, v114), v106, v109, 2));
                        v95 = vsubq_f32(v95, vmlaq_laneq_f32(vmulq_f32(v107, v114), *v98, v109, 2));
                        v98 += v56;
                        --v96;
                      }

                      while (v96);
                    }

                    v115 = (v63 + 8 * v89 * a7 + 8 * v94);
                    v116 = vaddq_f32(v105, v115[1]);
                    *v115 = vaddq_f32(v104, *v115);
                    v115[1] = v116;
                    v117 = (v63 + 8 * (v89 | 1) * a7 + 8 * v94);
                    v118 = vaddq_f32(v103, v117[1]);
                    *v117 = vaddq_f32(v102, *v117);
                    v117[1] = v118;
                    v119 = v63 + 8 * (v89 | 2) * a7 + 8 * v94;
                    v120 = *(v119 + 16);
                    *v119 = vaddq_f32(v100, *v119);
                    *(v119 + 16) = vaddq_f32(v101, v120);
                    v121 = v63 + 8 * v91 * a7 + 8 * v94;
                    v122 = *(v121 + 16);
                    a13 = vaddq_f32(v95, *v121);
                    *v121 = a13;
                    *(v121 + 16) = vaddq_f32(v97, v122);
                    v92 = v94 + 4;
                    v123 = v94 + 7;
                    v93 += 32;
                    v94 += 4;
                  }

                  while (v123 < v17);
                }

                if (v92 < v17)
                {
                  v124 = v63 + 8 * v91 * a7;
                  v125 = v92;
                  v126 = a3 + v56 * v170 + 8 * v92;
                  do
                  {
                    if (v65 < 1)
                    {
                      v133 = 0;
                      v132 = 0;
                      v131 = 0;
                      v127 = 0;
                    }

                    else
                    {
                      v127 = 0;
                      v128 = v65;
                      v129 = v126;
                      v130 = (a8 + 264 * v89);
                      v131 = 0;
                      v132 = 0;
                      v133 = 0;
                      do
                      {
                        v134 = vrev64_s32(*v129);
                        v136 = *v130;
                        v135 = v130[1];
                        v130 += 2;
                        v133 = vsub_f32(v133, vmla_n_f32(vmul_f32(v134, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), *v136.f32, 1)), *v129, v136.f32[0]));
                        v132 = vsub_f32(v132, vmla_laneq_f32(vmul_f32(v134, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D3), v136, 3)), *v129, v136, 2));
                        v131 = vsub_f32(v131, vmla_n_f32(vmul_f32(v134, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), *v135.f32, 1)), *v129, v135.f32[0]));
                        v127 = vsub_f32(v127, vmla_laneq_f32(vmul_f32(v134, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D3), v135, 3)), *v129, v135, 2));
                        v129 = (v129 + v56);
                        --v128;
                      }

                      while (v128);
                    }

                    *(v63 + 8 * v89 * a7 + 8 * v125) = vadd_f32(v133, *(v63 + 8 * v89 * a7 + 8 * v125));
                    *(v63 + 8 * (v89 | 1) * a7 + 8 * v125) = vadd_f32(v132, *(v63 + 8 * (v89 | 1) * a7 + 8 * v125));
                    *(v63 + 8 * (v89 | 2) * a7 + 8 * v125) = vadd_f32(v131, *(v63 + 8 * (v89 | 2) * a7 + 8 * v125));
                    a13.n128_u64[0] = vadd_f32(v127, *(v124 + 8 * v125));
                    *(v124 + 8 * v125++) = a13.n128_u64[0];
                    v126 += 8;
                  }

                  while (v125 != v17);
                }

                v137 = v89 + 4;
                v138 = v89 + 7;
                v90 += 32;
                v89 += 4;
              }

              while (v138 < v61);
              v139 = v137;
            }

            if (v139 < v61)
            {
              v140 = (a3 + v56 * v170 + 8 * v139);
              do
              {
                v141 = v139;
                if (v139 + 3 < v17)
                {
                  v142 = v140;
                  v143 = v139;
                  do
                  {
                    v144 = 0uLL;
                    if (v65 < 1)
                    {
                      v148 = 0uLL;
                    }

                    else
                    {
                      v145 = v65;
                      v146 = v142;
                      v147 = (a8 + 8 * ((33 * (v139 & 0x7FFFFFFC)) & 0xFFFFFFFC | v139 & 3));
                      v148 = 0uLL;
                      do
                      {
                        v149 = *v147;
                        v147 += 4;
                        v150 = vmulq_lane_f32(v57, v149, 1);
                        v148 = vsubq_f32(v148, vmlaq_n_f32(vmulq_f32(vrev64q_s32(v146[1]), v150), v146[1], v149.f32[0]));
                        v144 = vsubq_f32(v144, vmlaq_n_f32(vmulq_f32(vrev64q_s32(*v146), v150), *v146, v149.f32[0]));
                        v146 = (v146 + v56);
                        --v145;
                      }

                      while (v145);
                    }

                    v151 = v63 + 8 * v139 * a7 + 8 * v143;
                    v152 = *(v151 + 16);
                    a13 = vaddq_f32(v144, *v151);
                    *v151 = a13;
                    *(v151 + 16) = vaddq_f32(v148, v152);
                    v141 = v143 + 4;
                    v153 = v143 + 7;
                    v142 += 2;
                    v143 += 4;
                  }

                  while (v153 < v17);
                }

                if (v141 < v17)
                {
                  v154 = v63 + 8 * v139 * a7;
                  v155 = v141;
                  v156 = a3 + v56 * v170 + 8 * v141;
                  do
                  {
                    v157 = 0;
                    if (v65 >= 1)
                    {
                      v158 = v65;
                      v159 = v156;
                      v160 = (a8 + 8 * ((33 * (v139 & 0x7FFFFFFC)) & 0xFFFFFFFC | v139 & 3));
                      do
                      {
                        v161 = *v160;
                        v160 += 4;
                        v157 = vsub_f32(v157, vmla_n_f32(vmul_f32(vrev64_s32(*v159), vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), v161, 1)), *v159, v161.f32[0]));
                        v159 = (v159 + v56);
                        --v158;
                      }

                      while (v158);
                    }

                    a13.n128_u64[0] = vadd_f32(v157, *(v154 + 8 * v155));
                    *(v154 + 8 * v155++) = a13.n128_u64[0];
                    v156 += 8;
                  }

                  while (v155 < v17);
                }

                ++v139;
                v140 = (v140 + 8);
              }

              while (v139 < v61);
            }

            v62 = v65 + v170;
          }

          while (v65 + v170 < a2);
        }

        v55 = v166 + 32;
        v59 += 256;
      }

      while (v166 + 32 < v17);
    }
  }

  else
  {
    v25 = 0;
    v163 = a7 << 9;
    v165 = vnegq_f64(_Q0);
    v26 = vnegq_f64(_Q1);
    v27 = a3;
    v162 = result;
    v169 = v26;
    do
    {
      v28 = 0;
      v164 = v25;
      v29 = v162 - v25;
      if (v162 - v25 >= 64)
      {
        v30 = 64;
      }

      else
      {
        v30 = v162 - v25;
      }

      v31 = v30;
      do
      {
        if (a2 - v28 >= 64)
        {
          v32 = 64;
        }

        else
        {
          v32 = a2 - v28;
        }

        v33 = v28;
        if (a2 - v28 < 1)
        {
          v34 = 0;
        }

        else
        {
          v34 = 0;
          v35 = a5 + 16 * v28;
          do
          {
            v36 = (v35 + 16 * v34);
            v37 = *v36;
            v38 = v36[1];
            v39 = fabsf(*v36) == INFINITY;
            if (fabsf(v38) == INFINITY)
            {
              v39 = 1;
            }

            if (v39)
            {
              *_Q1.f64 = 0.0;
            }

            else
            {
              *_Q1.f64 = v37;
            }

            if (v39)
            {
              v40 = 0.0;
            }

            else
            {
              v40 = v38;
            }

            v41 = vmulq_n_f32(v165, v40);
            v42 = 8 * v33 + 8 * v34;
            if (v29 < 4)
            {
              v52 = 0;
            }

            else
            {
              v43 = 0;
              v44 = vdupq_lane_s32(*&_Q1.f64[0], 0);
              v45 = (a8 + (v34 << 9));
              v46 = (v27 + a4 * v42);
              do
              {
                v47 = *v46;
                v48 = v46[1];
                v46 += 2;
                v49 = vmulq_f32(v48, v26);
                v50 = vmulq_f32(v47, v26);
                v51 = v43 + 7;
                *v45 = vmlaq_f32(vmulq_f32(v41, vrev64q_s32(v50)), v44, v50);
                v45[1] = vmlaq_f32(vmulq_f32(v41, vrev64q_s32(v49)), v44, v49);
                v45 += 2;
                v43 += 4;
              }

              while (v51 < v31);
              v52 = v43;
            }

            if (v52 < v31)
            {
              *&_Q1.f64[0] = vdup_lane_s32(*&_Q1.f64[0], 0);
              v53 = v27 + a4 * v42;
              do
              {
                v54 = vmul_f32(*(v53 + 8 * v52), COERCE_FLOAT32X2_T(-_D8));
                *(a8 + (v34 << 9) + 8 * v52++) = vmla_f32(vmul_f32(*v41.f32, vrev64_s32(v54)), *&_Q1.f64[0], v54);
              }

              while (v52 < v31);
            }

            ++v34;
          }

          while (v34 < v32);
        }

        result = cblas_cgemm_NEWLAPACK();
        v26 = v169;
        v28 = v34 + v33;
      }

      while ((v34 + v33) < a2);
      a6 += v163;
      v25 = v164 + 64;
      v27 += 512;
    }

    while (v164 + 64 < v17);
  }

  return result;
}