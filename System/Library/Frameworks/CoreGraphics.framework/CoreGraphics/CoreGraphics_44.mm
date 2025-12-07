int *checkSyntax(int *result, const char *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = result[55];
  if (v2 < 1)
  {
    return result;
  }

  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v34 = 1 - v2;
  v35 = v2 - 1;
  while (1)
  {
    LODWORD(v7) = v5 + 1;
    if (v5 + 1 >= v2)
    {
      v7 = v34 + v5;
      if (v34 + v5 >= v2)
      {
        v7 %= v2;
      }
    }

    v8 = *(v3 + 208);
    v9 = v8 + v4;
    if (!*(v8 + v4 + 4))
    {
      __sprintf_chk(v36, 0, 0x100uLL, "zero mask (at %d)", v5);
      result = printf(" ***** %s in autoTrace\n", v36);
      v6 = 1;
    }

    v10 = (v8 + 8 * v7);
    v11 = *(v8 + v4);
    v12 = *v10;
    if (v11 >= *v10)
    {
      if (v7)
      {
        if (v5)
        {
          goto LABEL_14;
        }

        if (v11 >= **(v3 + 128) + v12)
        {
          v13 = 0;
LABEL_15:
          __sprintf_chk(v36, 0, 0x100uLL, "indexes out of order (at %d)", v13);
          result = printf(" ***** %s in autoTrace\n", v36);
          v6 = 1;
        }
      }

      else if (v11 >= **(v3 + 128) + v12)
      {
LABEL_14:
        v13 = v5;
        goto LABEL_15;
      }
    }

    if (*(v9 + 4))
    {
      result = findCorner(v3, *(v8 + v4), 0);
      if (!result)
      {
        __sprintf_chk(v36, 0, 0x100uLL, "corner at point index %d not found (at %d)", *(v8 + v4), v5);
        result = printf(" ***** %s in autoTrace\n", v36);
        v6 = 1;
      }
    }

    v14 = *(v9 + 4);
    if ((v14 & 8) != 0 && (v10[1] & 0x10) == 0)
    {
      __sprintf_chk(v36, 0, 0x100uLL, "missing curve end for curve begin (at %d)", v5);
      result = printf(" ***** %s in autoTrace\n", v36);
      v14 = *(v9 + 4);
      v6 = 1;
    }

    if ((v14 & 2) != 0 && (v10[1] & 4) == 0)
    {
      __sprintf_chk(v36, 0, 0x100uLL, "missing straight line end for straight line begin (at %d)", v5);
      result = printf(" ***** %s in autoTrace\n", v36);
      v14 = *(v9 + 4);
      v6 = 1;
    }

    if (v5)
    {
      v15 = 0;
    }

    else
    {
      v15 = v2;
    }

    v16 = *(v3 + 208) + 8 * (v15 + v5 - 1);
    if ((v14 & 0x10) != 0 && (*(v16 + 4) & 8) == 0)
    {
      __sprintf_chk(v36, 0, 0x100uLL, "missing curve begin for curve end (at %d)", v5);
      result = printf(" ***** %s in autoTrace\n", v36);
      v14 = *(v9 + 4);
      v6 = 1;
    }

    if ((v14 & 4) == 0 || (*(v16 + 4) & 2) != 0)
    {
      break;
    }

    __sprintf_chk(v36, 0, 0x100uLL, "missing straight line begin for straight line end (at %d)", v5);
    result = printf(" ***** %s in autoTrace\n", v36);
    if (v35 == v5)
    {
      goto LABEL_38;
    }

    v6 = 1;
LABEL_36:
    v4 += 8;
    ++v5;
  }

  if (v35 != v5)
  {
    goto LABEL_36;
  }

  if (v6)
  {
LABEL_38:
    v17 = *(v3 + 220);
    putchar(10);
    printf("  ---- after %s ----\n", a2);
    if (v17 >= 1)
    {
      for (i = 0; i != v17; ++i)
      {
        printIPIndex(*(v3 + 208), i);
      }
    }

    putchar(10);
    putchar(10);
    if (*(v3 + 204) >= 1)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        printf("  corner %d (%d-%d) cpi %d\n", v20++, *(*(v3 + 192) + v19), *(*(v3 + 192) + v19 + 4), *(*(v3 + 192) + v19 + 8));
        v19 += 12;
      }

      while (v20 < *(v3 + 204));
    }

    v21 = *(v3 + 128);
    v22 = *v21;
    v23 = *(v21 + 1);
    v24 = *v23;
    v25 = v23[1];
    if (v22 >= 1)
    {
      v26 = v23 + 1;
      v27 = v22;
      v28 = v25;
      v29 = v24;
      while (1)
      {
        v31 = *(v26 - 1);
        v30 = *v26;
        v32 = v31 > v24 ? *(v26 - 1) : v24;
        if (v31 >= v29)
        {
          v24 = v32;
        }

        else
        {
          v29 = *(v26 - 1);
        }

        if (v30 < v28)
        {
          break;
        }

        if (v30 <= v25)
        {
          goto LABEL_55;
        }

LABEL_56:
        v26 += 2;
        v25 = v30;
        if (!--v27)
        {
          return printf("  polygon (%d points) from x [%.2f .. %.2f] y[%.2f .. %.2f]\n", v22, v29, v24, v28, v30);
        }
      }

      v28 = *v26;
LABEL_55:
      v30 = v25;
      goto LABEL_56;
    }

    v29 = *v23;
    v28 = v23[1];
    v30 = v28;
    return printf("  polygon (%d points) from x [%.2f .. %.2f] y[%.2f .. %.2f]\n", v22, v29, v24, v28, v30);
  }

  return result;
}

uint64_t LRLine(uint64_t a1, uint64_t a2, float *a3, float *a4)
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  computeATRRecord(v13, *(a1 + 128), a2, 5);
  v8 = ATRLinearRegression(v13, &v16, &v15 + 1, &v15);
  if (v8)
  {
    v9 = v16;
    v10 = *&v15;
    *a4 = ATRMaxDistanceFromLine(v13, v16, *(&v15 + 1), *&v15);
    ATRAngleOfLine(v10, **(a1 + 128), *(*(a1 + 128) + 8), a2, 5, v9);
    *a3 = v11;
  }

  return v8;
}

float straightLineDistanceDeltaToleranceAtAngle(float a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1 - (floorf(a1 * 4.0) * 0.25);
  if (v1 > 0.125)
  {
    v1 = 0.25 - v1;
  }

  v2 = v1 * 360.0;
  v3 = -2;
  for (i = &dword_1844DEA50; ; i += 2)
  {
    v3 += 2;
    if (v3 == 14)
    {
      break;
    }

    v5 = *(i - 2);
    v6 = *i;
    v7 = v6;
    if (v5 <= v2 && v2 <= v7)
    {
      v9 = SLDDT[(v3 & 0xFFFFFFFE) + 1];
      return v9 + (((v2 - v5) / (v7 - v5)) * (SLDDT[((v3 + 2) & 0xFFFFFFFE) + 1] - v9));
    }
  }

  __sprintf_chk(v11, 0, 0x100uLL, "angle %.3f not found in straightLineDistanceDeltaToleranceAtAngle", (a1 * 360.0));
  printf(" ***** %s in autoTrace\n", v11);
  return 0.099;
}

int *findCorner(uint64_t a1, int a2, int a3)
{
  v3 = **(a1 + 128);
  v4 = *(a1 + 192);
  if (*v4 <= v4[1])
  {
    v5 = 0;
  }

  else
  {
    v5 = **(a1 + 128);
  }

  v6 = *v4 - v5;
  v7 = *(a1 + 204);
  v8 = &v4[3 * v7];
  v9 = *(v8 - 2);
  if (v7 > 1)
  {
    if (v9 >= *(v8 - 3))
    {
      v10 = 0;
    }

    else
    {
      v10 = **(a1 + 128);
    }

    v9 += v10;
  }

  if (v3 + a2 <= v9)
  {
    v11 = v3 + a2;
  }

  else
  {
    v11 = a2;
  }

  if (a2 - v3 >= v6)
  {
    v12 = a2 - v3;
  }

  else
  {
    v12 = v11;
  }

  if (v7 < 1)
  {
LABEL_38:
    if (a3)
    {
      printf(" ***** %s in autoTrace\n", "find corner could not find index");
    }

    return 0;
  }

  else
  {
    v13 = 0;
    v14 = v3 >> 1;
    v15 = *(a1 + 204);
    do
    {
      v16 = (v15 + v13) >> 1;
      result = &v4[3 * v16];
      if ((v15 + v13) > 1)
      {
        v22 = *result;
        v23 = result[1];
        if (*result + v14 >= v23)
        {
          v24 = 0;
        }

        else
        {
          v24 = v3;
        }

        v25 = v23 - v24;
        if (*result - v14 > v23)
        {
          v18 = v23 + v3;
        }

        else
        {
          v18 = v25;
        }
      }

      else
      {
        v19 = *result;
        v18 = result[1];
        if (v18 + v14 >= *result)
        {
          v20 = 0;
        }

        else
        {
          v20 = v3;
        }

        v21 = v19 - v20;
        if (v18 - v14 > v19)
        {
          v22 = v19 + v3;
        }

        else
        {
          v22 = v21;
        }
      }

      if (v18 >= v12)
      {
        v15 = (v15 + v13) >> 1;
        if (v22 <= v12)
        {
          return result;
        }
      }

      else
      {
        v13 = v16 + 1;
      }
    }

    while (v13 < v15);
    while (v4[2] != v12)
    {
      v4 += 3;
      if (!--v7)
      {
        goto LABEL_38;
      }
    }

    return v4;
  }
}

_DWORD *addInterestingPointAtIndex(int a1, int a2, uint64_t a3)
{
  v6 = *(a3 + 12);
  v7 = *a3;
  if (v6 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = *(a3 + 12);
    do
    {
      if (v7[2 * ((v9 + v8) >> 1)] >= a1)
      {
        v9 = (v9 + v8) >> 1;
      }

      else
      {
        v8 = ((v9 + v8) >> 1) + 1;
      }
    }

    while (v8 < v9);
  }

  if (v8 < v6 && (v10 = &v7[2 * v8], *v10 == a1))
  {
    v10[1] |= a2;
  }

  else
  {
    v11 = *(a3 + 8);
    if (v6 >= v11)
    {
      v12 = malloc_type_malloc(8 * v11 + 800, 0x100004000313F17uLL);
      if (!v12)
      {
        printf(" ***** %s in autoTrace\n", "could not extend interesting points list");
        return 0;
      }

      v7 = v12;
      memmove(v12, *a3, 8 * *(a3 + 8));
      *(a3 + 8) += 100;
      free(*a3);
      *a3 = v7;
      v6 = *(a3 + 12);
    }

    v10 = &v7[2 * v8];
    memmove(v10 + 2, v10, 8 * (v6 - v8));
    ++*(a3 + 12);
    *v10 = a1;
    v10[1] = a2;
  }

  return v10;
}

float computeAngleSumAndRange(uint64_t a1, int a2, int a3, float *a4, float *a5)
{
  v5 = *(a1 + 152);
  v6 = *(v5 + 4 * a2);
  v7 = 0.0;
  v8 = v6;
  v9 = v6;
  do
  {
    v10 = *(v5 + 4 * a2) - rintf(*(v5 + 4 * a2) - v6);
    if (v10 >= v8)
    {
      if (v10 > v9)
      {
        v9 = v10;
      }
    }

    else
    {
      v8 = v10;
    }

    v7 = v7 + *(*(a1 + 160) + 4 * a2);
    v11 = a2 + 1;
    if (a2 + 1 >= **(a1 + 128))
    {
      v12 = **(a1 + 128);
    }

    else
    {
      v12 = 0;
    }

    a2 = v11 - v12;
  }

  while (v11 - v12 != a3);
  *a4 = v7;
  result = v9 - v8;
  *a5 = v9 - v8;
  return result;
}

char *appendInterestingPointAtIndex(int a1, int a2, char **a3)
{
  v7 = *(a3 + 2);
  v6 = *(a3 + 3);
  if (v6 < v7)
  {
    v8 = *a3;
LABEL_5:
    *(a3 + 3) = v6 + 1;
    result = &v8[8 * v6];
    *result = a1;
    *(result + 1) = a2;
    return result;
  }

  v9 = malloc_type_malloc(8 * v7 + 800, 0x100004000313F17uLL);
  if (v9)
  {
    v8 = v9;
    memmove(v9, *a3, 8 * *(a3 + 2));
    *(a3 + 2) += 100;
    free(*a3);
    *a3 = v8;
    v6 = *(a3 + 3);
    goto LABEL_5;
  }

  printf(" ***** %s in autoTrace\n", "could not extend interesting points list");
  return 0;
}

int *findNonOrthogonalLines(uint64_t a1)
{
  v1 = a1;
  v107 = *MEMORY[0x1E69E9840];
  v2 = **(a1 + 128);
  result = initInterestingPointList((a1 + 224));
  if (!result)
  {
    return result;
  }

  v105 = 0;
  LODWORD(v4) = *(v1 + 55);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v102 = 0;
    v7 = v2 - 10;
    v8 = 0.0;
    v9 = 0.0;
    v103 = v1;
    v101 = v2 >> 1;
    do
    {
      v10 = v7;
      v11 = v6;
      v12 = v5;
      v13 = v5 + 1;
      LODWORD(v14) = v13;
      if (v13 >= v4)
      {
        v14 = v13 - v4;
        if (v14 >= v4)
        {
          v14 %= v4;
        }
      }

      v15 = v1[26];
      v16 = v15 + 8 * v12;
      v17 = v15 + 8 * v14;
      v18 = *v16;
      v19 = *v17;
      if (*(v16 + 4))
      {
        result = findCorner(v1, *v16, 1);
        if (!result)
        {
          return result;
        }

        v20 = v13;
        v21 = result[1];
      }

      else
      {
        v20 = v13;
        v21 = *v16;
      }

      v22 = v19;
      if (*(v17 + 4))
      {
        result = findCorner(v103, *v17, 1);
        if (!result)
        {
          return result;
        }

        v22 = *result;
      }

      if (v19 <= v18)
      {
        v24 = v21 - *v16;
        if (v24 < 0)
        {
          v24 = *v16 - v21;
        }

        v6 = v11;
        if (v24 <= v101)
        {
          v26 = v22 - *v17;
          if (v26 < 0)
          {
            v26 = *v17 - v22;
          }

          v7 = v10;
          if (v26 <= v101)
          {
            if (v22 <= v21 - v2)
            {
              goto LABEL_48;
            }
          }

          else if (v22 <= v21)
          {
            goto LABEL_48;
          }

          goto LABEL_21;
        }

        v23 = v22 <= v21;
      }

      else
      {
        v23 = v22 <= v21;
        v6 = v11;
      }

      v7 = v10;
      if (v23)
      {
        goto LABEL_48;
      }

LABEL_21:
      v25 = v22 - v21;
      if (v22 == v21)
      {
        if (*(v103 + 220) >= 2)
        {
          __sprintf_chk(v106, 0, 0x100uLL, "zero length curve in findNonOrthogonalLines at point index %d");
          goto LABEL_215;
        }
      }

      else if (v25 >= 0xFFFFFFFE && v2 >= 101 && *(v103 + 220) >= 3)
      {
        __sprintf_chk(v106, 0, 0x100uLL, "findNonOrthogonalLines with reversed point indexes %d and %d");
LABEL_215:
        printf(" ***** %s in autoTrace\n", v106);
        return 1;
      }

      if (v25 <= 0)
      {
        v27 = v2;
      }

      else
      {
        v27 = 0;
      }

      v28 = v27 + v25;
      if ((*(v16 + 4) & 0xA) != 0 || v28 < 21)
      {
LABEL_48:
        v5 = v20;
        v1 = v103;
        goto LABEL_49;
      }

      v30 = v21 + 10;
      v31 = v21 + 10;
      if (v21 + 10 >= v2)
      {
        v33 = v30 - v2;
        if (v31 - v2 >= v2)
        {
          v34 = v2 == 0;
        }

        else
        {
          LODWORD(v31) = v31 - v2;
          v34 = 1;
        }

        if (!v34)
        {
          v31 = v33 % v2;
        }

        v5 = v20;
        v1 = v103;
      }

      else
      {
        v23 = v21 <= -11;
        v5 = v20;
        v1 = v103;
        if (v23)
        {
          v32 = v30 + v2;
          if (v31 + v2 < 0 == __OFADD__(v31, v2))
          {
            LODWORD(v31) = v31 + v2;
          }

          if (v32 < 0 && v2)
          {
            v31 = v32 % v2 + v2;
          }
        }
      }

      v35 = v22 - 11;
      LODWORD(v36) = v22 - 11;
      if (v22 - 11 >= v2)
      {
        if (v35 - v2 >= v2)
        {
          if (v2)
          {
            v36 = (v35 - v2) % v2;
          }
        }

        else
        {
          LODWORD(v36) = v36 - v2;
        }
      }

      else if (v22 <= 10)
      {
        v37 = v35 + v2;
        if (v37 < 0 == __OFADD__(v35, v2))
        {
          LODWORD(v36) = v36 + v2;
        }

        if (v37 < 0 && v2)
        {
          v36 = v37 % v2 + v2;
        }
      }

      if (v31 != v36)
      {
        v38 = v5;
        v39 = 0;
        v40 = -1;
        LODWORD(v5) = v31;
        do
        {
          v41 = v1[18];
          v42 = v7 + v5;
          v43 = v5 - 10;
          v44 = 0.0;
          v45 = 21;
          v46 = *(v41 + 4 * v5);
          v47 = v46;
          do
          {
            if (v43 >= v2)
            {
              if (v43 - v2 >= v2)
              {
                LODWORD(v48) = v43;
              }

              else
              {
                LODWORD(v48) = v43 - v2;
              }

              if (v43 - v2 >= v2 && v2)
              {
                v48 = (v43 - v2) % v2;
              }
            }

            else
            {
              LODWORD(v48) = v43;
              if (v43 < 0)
              {
                LODWORD(v48) = v42 < 0 ? v43 : v42;
                if (v42 < 0 && v2)
                {
                  v48 = v42 % v2 + v2;
                }
              }
            }

            v49 = *(v41 + 4 * v48) - rintf(*(v41 + 4 * v48) - *(v41 + 4 * v5));
            if (v49 > v46)
            {
              v50 = v49;
            }

            else
            {
              v50 = v46;
            }

            if (v49 >= v47)
            {
              v46 = v50;
            }

            else
            {
              v47 = v49;
            }

            v44 = v44 + v49;
            ++v42;
            ++v43;
            --v45;
          }

          while (v45);
          v51 = v44 / 21.0;
          v52 = (v44 / 21.0) - (floorf((v44 / 21.0) * 4.0) * 0.25);
          if (v52 > 0.125)
          {
            v52 = 0.25 - v52;
          }

          v53 = v52 * 360.0;
          v54 = -2;
          v55 = &dword_1844DEA90;
          do
          {
            v54 += 2;
            if (v54 == 20)
            {
              __sprintf_chk(v106, 0, 0x100uLL, "angle %.3f not found in straightLineAngleDeltaToleranceAtAngle", (v51 * 360.0));
              printf(" ***** %s in autoTrace\n", v106);
              v62 = 12.235;
              goto LABEL_104;
            }

            v56 = *(v55 - 2);
            v57 = *v55;
            v55 += 2;
            v58 = v57;
          }

          while (v56 > v53 || v53 > v58);
          v60 = (v53 - v56) / (v58 - v56);
          v61 = SLADT[(v54 & 0xFFFFFFFE) + 1];
          v62 = v61 + (v60 * (SLADT[((v54 + 2) & 0xFFFFFFFELL) + 1] - v61));
          if (v62 < 3.1)
          {
            v62 = 3.1;
          }

LABEL_104:
          v63 = v46 - v51;
          if ((v51 - v47) > (v46 - v51))
          {
            v63 = v51 - v47;
          }

          if (v63 <= v62)
          {
            if (v39)
            {
              if (v40 + 1 >= v2)
              {
                v64 = v2;
              }

              else
              {
                v64 = 0;
              }

              v65 = v51;
              v66 = v8;
              if (v51 >= v9)
              {
                v65 = v9;
                v66 = v8;
                if (v51 > v8)
                {
                  v65 = v9;
                  v66 = v51;
                }
              }

              v67 = v40 + 1 - v64;
              v68 = -2;
              v69 = &dword_1844DEAE8;
              while (1)
              {
                v68 += 2;
                if (v68 == 6)
                {
                  break;
                }

                v70 = *(v69 - 2);
                v71 = *v69;
                v69 += 2;
                v72 = v71;
                if (v70 <= v53 && v53 <= v72)
                {
                  v74 = (v53 - v70) / (v72 - v70);
                  v75 = SLGADT[(v68 & 0xFFFFFFFE) + 1];
                  v76 = v75 + (v74 * (SLGADT[((v68 + 2) & 0xFFFFFFFELL) + 1] - v75));
                  goto LABEL_123;
                }
              }

              __sprintf_chk(v106, 0, 0x100uLL, "angle %.3f not found in straightLineGatheredAngleDeltaToleranceAtAngle", (v51 * 360.0));
              printf(" ***** %s in autoTrace\n", v106);
              v76 = 1.0;
LABEL_123:
              if (v5 == v67 && (v66 - v65) <= v76)
              {
                v6 = (v6 + 1);
                v39 = 1;
                v40 = v5;
                v9 = v65;
                v8 = v66;
              }

              else
              {
                v77 = v102 - 10;
                v78 = v102 - 10;
                if (v102 - 10 >= v2)
                {
                  v80 = v77 - v2;
                  if (v78 - v2 >= v2)
                  {
                    if (v2)
                    {
                      v78 = v80 % v2;
                    }
                  }

                  else
                  {
                    v78 -= v2;
                  }
                }

                else if (v102 <= 9)
                {
                  v79 = v77 + v2;
                  if (v78 + v2 < 0 == __OFADD__(v78, v2))
                  {
                    v78 += v2;
                  }

                  if (v79 < 0 && v2)
                  {
                    v78 = v79 % v2 + v2;
                  }
                }

                v81 = v6 + 20 + v78;
                v82 = v81;
                if (v81 >= v2)
                {
                  v84 = v81 - v2;
                  if (v82 - v2 >= v2)
                  {
                    if (v2)
                    {
                      v82 = v84 % v2;
                    }
                  }

                  else
                  {
                    LODWORD(v82) = v82 - v2;
                  }
                }

                else if (v81 < 0)
                {
                  v83 = v81 + v2;
                  if (v82 + v2 < 0 == __OFADD__(v82, v2))
                  {
                    LODWORD(v82) = v82 + v2;
                  }

                  if (v83 < 0 && v2)
                  {
                    v82 = v83 % v2 + v2;
                  }
                }

                v104 = v82;
                if (outputLineAtIndex(v1, v78, v6 + 20, v1 + 28, &v104, &v105))
                {
                  v85 = v36 - v104;
                  if (v36 - v104 >= v2 / 2)
                  {
                    v86 = v2;
                  }

                  else
                  {
                    v86 = 0;
                  }

                  if (v85 >= v2 / -2)
                  {
                    v87 = -v86;
                  }

                  else
                  {
                    v87 = v2;
                  }

                  if (v85 + v87 < 9)
                  {
                    v5 = v38;
                    goto LABEL_49;
                  }

                  v5 = v104 + 9;
                  if (v104 + 9 >= v2)
                  {
                    if (v5 - v2 >= v2)
                    {
                      if (v2)
                      {
                        v5 = (v5 - v2) % v2;
                      }
                    }

                    else
                    {
                      LODWORD(v5) = v5 - v2;
                    }
                  }

                  else if (v104 <= -10)
                  {
                    v88 = v5 + v2;
                    if (v5 + v2 < 0 == __OFADD__(v5, v2))
                    {
                      LODWORD(v5) = v5 + v2;
                    }

                    if (v88 < 0 && v2)
                    {
                      v5 = v88 % v2 + v2;
                    }
                  }
                }

                v39 = 0;
                result = 0;
                if (v105)
                {
                  return result;
                }
              }
            }

            else
            {
              v39 = 1;
              v40 = v5;
              v102 = v5;
              v6 = 1;
              v9 = v51;
              v8 = v51;
            }
          }

          if (v5 + 1 >= v2)
          {
            v89 = v2;
          }

          else
          {
            v89 = 0;
          }

          if (v5 != v36)
          {
            LODWORD(v5) = v5 + 1 - v89;
          }
        }

        while (v5 != v36);
        v5 = v38;
        if (v39)
        {
          v90 = v102 - 10;
          v91 = v102 - 10;
          if (v102 - 10 >= v2)
          {
            v93 = v90 - v2;
            if (v91 - v2 >= v2)
            {
              if (v2)
              {
                v91 = v93 % v2;
              }
            }

            else
            {
              v91 -= v2;
            }
          }

          else if (v102 <= 9)
          {
            v92 = v90 + v2;
            if (v91 + v2 < 0 == __OFADD__(v91, v2))
            {
              v91 += v2;
            }

            if (v92 < 0 && v2)
            {
              v91 = v92 % v2 + v2;
            }
          }

          v94 = v6 + 19 + v91;
          v95 = v94;
          if (v94 >= v2)
          {
            v97 = v94 - v2;
            if (v95 - v2 >= v2)
            {
              if (v2)
              {
                v95 = v97 % v2;
              }
            }

            else
            {
              LODWORD(v95) = v95 - v2;
            }
          }

          else if (v94 < 0)
          {
            v96 = v94 + v2;
            if (v95 + v2 < 0 == __OFADD__(v95, v2))
            {
              LODWORD(v95) = v95 + v2;
            }

            if (v96 < 0 && v2)
            {
              v95 = v96 % v2 + v2;
            }
          }

          v104 = v95;
          outputLineAtIndex(v1, v91, v6 + 19, v1 + 28, &v104, &v105);
          if (v105)
          {
            return 0;
          }
        }
      }

LABEL_49:
      v4 = *(v1 + 55);
    }

    while (v5 < v4);
  }

  if (debug_auto_trace_syntax == 1)
  {
    checkSyntax(v1, "findNonOrthogonalLines loop");
  }

  if (*(v1 + 59) < 1)
  {
LABEL_206:
    if (debug_auto_trace_syntax == 1)
    {
      checkSyntax(v1, "inserts in findNonOrthogonalLines");
    }

    v100 = v1[28];
    if (v100)
    {
      free(v100);
    }

    v1[28] = 0;
    v1[29] = 0;
    if (debug_auto_trace == 1)
    {
      if (*v1)
      {
        (v1[1])(*v1, 4, v1);
      }
    }

    return 1;
  }

  v98 = 0;
  v99 = 0;
  while (1)
  {
    insertPairIntoInterestingPoints(v1, (v1[28] + v99), (v1[28] + v99 + 8), v1 + 26, &v105);
    if (v105)
    {
      return 0;
    }

    v99 += 16;
    v98 += 2;
    if (*(v1 + 59) <= v98)
    {
      goto LABEL_206;
    }
  }
}

int *findInflectionPoints(void *a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = *a1[16];
  result = initInterestingPointList(a1 + 28);
  if (result)
  {
    v4 = *(a1 + 55);
    if (v4 >= 1)
    {
      v5 = 0;
      while (1)
      {
        LODWORD(v6) = v5 + 1;
        v7 = v5 + 1;
        v8 = v4;
        if (v5 + 1 >= v4)
        {
          v10 = v6 - v4;
          v6 = v6 - v8;
          if (v7 - v8 >= v8)
          {
            v6 = v5 + 1;
            if (v8)
            {
              v6 = v10 % v8;
            }
          }
        }

        else if (v5 > -2)
        {
          v6 = v6;
        }

        else
        {
          v9 = v4 + v6;
          v6 = v8 + v6;
          if (v8 + v7 < 0)
          {
            v6 = v5 + 1;
            if (v8)
            {
              v6 = v9 % v8 + v8;
            }
          }
        }

        v11 = a1[26];
        v12 = (v11 + 8 * v5);
        v13 = v12[1];
        if ((v13 & 0xA) != 0)
        {
          goto LABEL_14;
        }

        v14 = v11 + 8 * v6;
        v15 = *v12;
        v16 = *v14;
        v17 = *v14 - *v12;
        v18 = *v14 <= *v12 ? v2 : 0;
        v19 = v18 + v17;
        v55 = v6 << 32;
        v56 = v6;
        if (v13)
        {
          v22 = v14;
          result = findCorner(a1, v15, 1);
          if (!result)
          {
            return result;
          }

          v20 = result[1];
          v23 = v15;
          v21 = v19;
          v14 = v22;
          while (v23 != v20)
          {
            v24 = v23 + 1;
            if (v24 >= v2)
            {
              v25 = v2;
            }

            else
            {
              v25 = 0;
            }

            v23 = v24 - v25;
            --v21;
            if (v23 == v16)
            {
              v20 = v16;
              break;
            }
          }
        }

        else
        {
          v20 = *v12;
          v21 = v18 + v17;
        }

        if (v20 == v16 && !v21)
        {
          break;
        }

        if (*(v14 + 4))
        {
          v27 = v14;
          result = findCorner(a1, *v14, 1);
          if (!result)
          {
            return result;
          }

          if (v16 == v15)
          {
            v16 = v15;
            v14 = v27;
          }

          else
          {
            v14 = v27;
            while (v16 != *result)
            {
              if (v16 <= 0)
              {
                v30 = v2;
              }

              else
              {
                v30 = 0;
              }

              v16 = v16 + v30 - 1;
              --v21;
              if (v16 == v15)
              {
                v16 = v15;
                goto LABEL_60;
              }
            }

            v16 = *result;
          }
        }

LABEL_60:
        if (v21 <= 3)
        {
          v35 = v12[1];
          if ((v35 & 1) == 0)
          {
            goto LABEL_14;
          }

          v36 = *(v14 + 4);
          if ((v35 & 0xA) != 0 || (*(v14 + 4) & 1) == 0)
          {
            goto LABEL_14;
          }

          if (v19 < 3)
          {
            if ((v35 & 0x10) != 0)
            {
              v36 |= 0x10u;
              *(v14 + 4) = v36;
              v35 = v12[1];
            }

            if ((v35 & 4) != 0)
            {
              *(v14 + 4) = v36 | 4;
            }

            v48 = *(a1 + 55);
            v49 = v48 - 1;
            if (v5 != v48 - 1 && v48 > v56)
            {
              v50 = v55 >> 32;
              do
              {
                *(a1[26] + 8 * v50 - 8) = *(a1[26] + 8 * v50);
                ++v50;
                v51 = *(a1 + 55);
              }

              while (v50 < v51);
              v49 = v51 - 1;
            }

            *(a1 + 55) = v49;
            --v5;
            if (debug_auto_trace_syntax == 1)
            {
              __sprintf_chk(v57, 0, 0x100uLL, "after delete ip index %d", v5);
              checkSyntax(a1, v57);
            }

            goto LABEL_14;
          }

          v29 = v35 | 8;
LABEL_68:
          v12[1] = v29;
          *(v14 + 4) |= 0x10u;
          goto LABEL_14;
        }

        result = addInterestingPointAtIndex(v20, 8, (a1 + 28));
        if (!result)
        {
          return result;
        }

        LOBYTE(v38) = *(a1[20] + 4 * v20) > 0.0;
        v39 = v20;
        do
        {
          v40 = a1[20];
          v41 = *(v40 + 4 * v39);
          v42 = v38 & 1;
          if (v42 == v41 <= 0.0)
          {
            if (v39 <= 0)
            {
              v44 = v2;
            }

            else
            {
              v44 = 0;
            }

            v45 = *(v40 + 4 * (v39 + v44 - 1));
            v43 = v39 + 1;
            if (v39 + 1 >= v2)
            {
              v46 = v2;
            }

            else
            {
              v46 = 0;
            }

            v38 = (((v41 + v45) + *(v40 + 4 * (v43 - v46))) * 0.33333) > 0.0;
            if (v42 != v38 && (v2 & ((v39 - v20) >> 31)) + v39 - v20 >= 6 && (v2 & ((v16 - v39) >> 31)) + v16 - v39 >= 6)
            {
              result = addInterestingPointAtIndex(v39, 16, (a1 + 28));
              if (!result)
              {
                return result;
              }

              result = addInterestingPointAtIndex(v39, 32, (a1 + 28));
              if (!result)
              {
                return result;
              }

              result = addInterestingPointAtIndex(v39, 8, (a1 + 28));
              if (!result)
              {
                return result;
              }
            }
          }

          else
          {
            v43 = v39 + 1;
          }

          if (v43 >= v2)
          {
            v47 = v2;
          }

          else
          {
            v47 = 0;
          }

          v39 = v43 - v47;
        }

        while (v43 - v47 != v16);
        result = addInterestingPointAtIndex(v16, 16, (a1 + 28));
        if (!result)
        {
          return result;
        }

LABEL_14:
        ++v5;
        v4 = *(a1 + 55);
        if (v5 >= v4)
        {
          goto LABEL_103;
        }
      }

      v26 = v12[1];
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }

      if ((v26 & 0xA) != 0)
      {
        goto LABEL_14;
      }

      v28 = *(v14 + 4);
      if ((v28 & 1) == 0)
      {
        goto LABEL_14;
      }

      if (v19 < 3)
      {
        if ((v26 & 0x10) != 0)
        {
          v28 |= 0x10u;
          *(v14 + 4) = v28;
          v26 = v12[1];
        }

        if ((v26 & 4) != 0)
        {
          *(v14 + 4) = v28 | 4;
        }

        v31 = *(a1 + 55);
        v32 = v31 - 1;
        if (v5 != v31 - 1 && v31 > v56)
        {
          v33 = v55 >> 32;
          do
          {
            *(a1[26] + 8 * v33 - 8) = *(a1[26] + 8 * v33);
            ++v33;
            v34 = *(a1 + 55);
          }

          while (v33 < v34);
          v32 = v34 - 1;
        }

        *(a1 + 55) = v32;
        --v5;
        if (debug_auto_trace_syntax == 1)
        {
          __sprintf_chk(v57, 0, 0x100uLL, "after delete ip index %d", v5);
          checkSyntax(a1, v57);
        }

        goto LABEL_14;
      }

      v29 = v26 | 8;
      goto LABEL_68;
    }

LABEL_103:
    if (*(a1 + 59) < 1)
    {
LABEL_107:
      v54 = a1[28];
      if (v54)
      {
        free(v54);
      }

      a1[28] = 0;
      a1[29] = 0;
      if (debug_auto_trace_syntax == 1)
      {
        checkSyntax(a1, "find inflection points");
      }

      if (debug_auto_trace == 1)
      {
        if (*a1)
        {
          (a1[1])(*a1, 5, a1);
        }
      }

      return 1;
    }

    else
    {
      v52 = 0;
      v53 = 0;
      while (1)
      {
        result = addInterestingPointAtIndex(*(a1[28] + v52), *(a1[28] + v52 + 4), (a1 + 26));
        if (!result)
        {
          break;
        }

        ++v53;
        v52 += 8;
        if (v53 >= *(a1 + 59))
        {
          goto LABEL_107;
        }
      }
    }
  }

  return result;
}

uint64_t cutUpCurves(uint64_t a1)
{
  v1 = a1;
  v2 = **(a1 + 128);
  v3 = *(a1 + 220);
  if (v3 == 1)
  {
    v4 = *(a1 + 208);
    v5 = v4[1] != 64 || v2 < 1;
    if (!v5)
    {
      v6 = 0;
      v7 = *(a1 + 152);
      while (1)
      {
        v8 = v6 + 1;
        v9 = v2 - 1 == v6 ? 0 : v6 + 1;
        v10 = *(v7 + 4 * v6);
        if (v10 <= 0.5 && *(v7 + 4 * v9) >= 0.5)
        {
          break;
        }

        if (v10 >= 0.5 && *(v7 + 4 * v9) <= 0.5)
        {
          break;
        }

        ++v6;
        if (v2 == v8)
        {
          goto LABEL_17;
        }
      }

      *v4 = v6;
      v4[1] = 24;
    }
  }

LABEL_17:
  if (debug_auto_trace_syntax == 1)
  {
    checkSyntax(a1, "circle cut");
    v3 = *(v1 + 55);
  }

  if (v3 >= 1)
  {
    v11 = 0;
    v12 = v1[26];
    do
    {
      v13 = v11++;
      LODWORD(v14) = v11;
      v15 = v11 - v3;
      if (v11 >= v3)
      {
        LODWORD(v14) = v11 - v3;
        if (v15 >= v3)
        {
          v14 = v15 % v3;
        }
      }

      v16 = (v12 + 8 * v13);
      v17 = *v16;
      v18 = *(v12 + 8 * v14);
      v19 = __OFSUB__(v18, *v16);
      v20 = v18 - *v16;
      if ((v20 < 0) ^ v19 | (v20 == 0))
      {
        v21 = v2;
      }

      else
      {
        v21 = 0;
      }

      if ((v16[1] & 8) != 0)
      {
        v22 = (v21 + v20);
        if (v22 >= 1)
        {
          v23 = 0;
          v24 = *v1[16];
          v25 = v1[20];
          v26 = v1[21];
          do
          {
            v27 = v17;
            v28 = *(v25 + 4 * v17);
            if (v24 == v22)
            {
              v29 = -1;
              v30 = 1 - v24;
              v31 = v24 + 1;
              v32 = ~v24;
              v33 = v24 - 1;
              v34 = 1;
              do
              {
                LODWORD(v35) = v34 + v27 - v24;
                if (v34 + v27 >= v24)
                {
                  if (v27 + v30 >= v24)
                  {
                    v35 = (v27 + v30) % v24;
                  }
                }

                else
                {
                  LODWORD(v35) = v34 + v27;
                  if (v34 + v27 < 0)
                  {
                    v35 = v27 + v31;
                    if (v27 + v31 < 0)
                    {
                      v35 = v35 % v24 + v24;
                    }
                  }
                }

                LODWORD(v36) = v27 - v34;
                if (v27 + v29 >= v24)
                {
                  if (v27 + v32 >= v24)
                  {
                    v36 = (v27 + v32) % v24;
                  }

                  else
                  {
                    LODWORD(v36) = v36 - v24;
                  }
                }

                else if (v27 + v29 < 0)
                {
                  v36 = v27 + v33;
                  if (v27 + v33 < 0)
                  {
                    v36 = v36 % v24 + v24;
                  }
                }

                ++v34;
                --v29;
                --v33;
                v28 = (v28 + *(v25 + 4 * v35)) + *(v25 + 4 * v36);
                --v32;
                ++v31;
                ++v30;
              }

              while (v29 != -5);
              v37 = 9.0;
            }

            else
            {
              v38 = v24 - 1 + v17;
              v39 = v27 - 1;
              v40 = v24 + v27;
              v41 = v27 - v24;
              v42 = 1;
              v43 = 1;
              do
              {
                if (v23 + v42 < v22)
                {
                  v44 = v27 + v42;
                  if ((v27 + v42) >= v24)
                  {
                    if ((v41 + v42) < v24)
                    {
                      LODWORD(v44) = v41 + v42;
                    }

                    if (v24 && (v41 + v42) >= v24)
                    {
                      v44 = (v41 + v42) % v24;
                    }
                  }

                  else if (v44 < 0)
                  {
                    v45 = v40 + v42;
                    if ((v40 + v42) >= 0)
                    {
                      LODWORD(v44) = v40 + v42;
                    }

                    if (v45 < 0 && v24)
                    {
                      v44 = v45 % v24 + v24;
                    }
                  }

                  v28 = v28 + *(v25 + 4 * v44);
                  ++v43;
                }

                if (v23 >= v42)
                {
                  if (v39 >= v24)
                  {
                    if (v39 - v24 >= v24)
                    {
                      LODWORD(v46) = v39;
                    }

                    else
                    {
                      LODWORD(v46) = v39 - v24;
                    }

                    if (v24 && v39 - v24 >= v24)
                    {
                      v46 = (v39 - v24) % v24;
                    }
                  }

                  else
                  {
                    LODWORD(v46) = v39;
                    if (v39 < 0)
                    {
                      LODWORD(v46) = v38 < 0 ? v39 : v38;
                      if (v38 < 0 && v24)
                      {
                        v46 = v38 % v24 + v24;
                      }
                    }
                  }

                  v28 = v28 + *(v25 + 4 * v46);
                  ++v43;
                }

                ++v42;
                --v38;
                --v39;
              }

              while (v42 != 5);
              v37 = v43;
            }

            *(v26 + 4 * v27) = v28 / v37;
            v47 = v27 + 1;
            if (v47 >= v24)
            {
              v48 = v24;
            }

            else
            {
              v48 = 0;
            }

            v17 = v47 - v48;
            ++v23;
          }

          while (v23 != v22);
        }
      }
    }

    while (v11 != v3);
  }

  result = initInterestingPointList(v1 + 28);
  if (result)
  {
    v81 = v2;
    LODWORD(v50) = *(v1 + 55);
    if (v50 >= 1)
    {
      v51 = 0;
      v52 = 0;
      v53 = 1;
      v83 = v1;
      v82 = v81 >> 1;
      do
      {
        LODWORD(v54) = ++v52;
        if (v53 >= v50)
        {
          v54 = v53 - v50;
          if (v54 >= v50)
          {
            v54 %= v50;
          }
        }

        v55 = v1[26];
        v56 = v1;
        v57 = v55 + 8 * v54;
        v58 = *(v55 + v51);
        v59 = *v57;
        if (*(v55 + v51 + 4))
        {
          result = findCorner(v56, *(v55 + v51), 1);
          if (!result)
          {
            return result;
          }

          v61 = *(result + 4);
          v60 = v61 == v58;
        }

        else
        {
          v60 = 1;
          v61 = *(v55 + v51);
        }

        if (*(v57 + 4))
        {
          v64 = v52;
          v65 = v60;
          result = findCorner(v83, *v57, 1);
          if (!result)
          {
            return result;
          }

          v63 = *result;
          v62 = *result == v59;
          v60 = v65;
          v52 = v64;
        }

        else
        {
          v62 = 1;
          v63 = v59;
        }

        if (v59 > v58)
        {
          goto LABEL_106;
        }

        v66 = v61 - *(v55 + v51);
        if (v66 < 0)
        {
          v66 = *(v55 + v51) - v61;
        }

        if (v66 > v82)
        {
          goto LABEL_106;
        }

        v67 = v63 - *v57;
        if (v67 < 0)
        {
          v67 = *v57 - v63;
        }

        if (v67 <= v82)
        {
          v68 = v63 <= v61 - v81;
        }

        else
        {
LABEL_106:
          v68 = v63 <= v61;
        }

        v1 = v83;
        if (!v68 && (v61 != v63 || v60 && v62) && (*(v55 + v51 + 4) & 8) != 0)
        {
          result = cutUpCurve(v83, v61, v60, v63, v62, v83 + 224);
          if (!result)
          {
            return result;
          }
        }

        v50 = *(v83 + 220);
        v51 += 8;
        v5 = v53++ < v50;
      }

      while (v5);
    }

    v70 = *(v1 + 59);
    if (v70 < 1)
    {
LABEL_133:
      if (debug_auto_trace_syntax == 1)
      {
        checkSyntax(v1, "cut up curves");
      }

      v80 = v1[28];
      if (v80)
      {
        free(v80);
      }

      v1[28] = 0;
      v1[29] = 0;
      if (debug_auto_trace == 1)
      {
        if (*v1)
        {
          (v1[1])(*v1, 6, v1);
        }
      }

      return 1;
    }

    v71 = 0;
    v72 = 0;
    while (1)
    {
      v84 = 0;
      v73 = (v1[28] + v71);
      v75 = *v73;
      v74 = v73[1];
      v76 = indexOfNewInterestingPointAtPointIndex(*v73, (v1 + 26), &v84);
      if (v84 != 1 || (v74 & 0x18) != 24)
      {
        goto LABEL_130;
      }

      v78 = *(v1[26] + 8 * v76 + 4);
      if ((v78 & 0x18) != 8 && (v78 & 0x18) != 16)
      {
        break;
      }

LABEL_132:
      ++v72;
      v71 += 8;
      if (v72 >= v70)
      {
        goto LABEL_133;
      }
    }

    if ((v78 & 4) != 0)
    {
      v74 = 8;
    }

LABEL_130:
    result = addInterestingPointAtIndex(v75, v74, (v1 + 26));
    if (!result)
    {
      return result;
    }

    v70 = *(v1 + 59);
    goto LABEL_132;
  }

  return result;
}

uint64_t coalesceStraightLines(void *a1)
{
  v146 = *MEMORY[0x1E69E9840];
  v143 = 0;
  v142 = 0.0;
  v140 = 0;
  v141 = 0;
  v138 = 0;
  v139 = 0;
  v137 = 0.0;
  v136 = 0;
  memset(v135, 0, sizeof(v135));
  v2 = a1[16];
  v121 = *(v2 + 1);
  v134 = *v2;
  v3 = *(a1 + 55);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0.0;
    v8 = 1;
    v9 = 12;
    v10 = 8;
    do
    {
      v11 = v6;
      v12 = a1[26];
      v13 = v12 + 8 * v6++;
      if ((*(v13 + 4) & 2) == 0)
      {
        goto LABEL_51;
      }

      LODWORD(v14) = v6;
      if (v6 < v3)
      {
        v15 = (v12 + v9);
        v14 = v8;
        while (1)
        {
          v16 = *v15;
          v15 += 2;
          if ((v16 & 7) != 6)
          {
            break;
          }

          if (v3 == ++v14)
          {
            LODWORD(v14) = v3;
            break;
          }
        }
      }

      if (v6 == v14 || v11 >= v14)
      {
        goto LABEL_51;
      }

      v122 = v11;
      v124 = v10;
      v126 = v6;
      v128 = v9;
      v17 = 0;
      v130 = v5;
      v18 = (v14 + v5);
      v132 = v4;
      do
      {
        LODWORD(v11) = v11 + 1;
        v19 = *(a1 + 55);
        LODWORD(v20) = v11;
        v21 = v8 + v17 - v19;
        if ((v8 + v17) >= v19)
        {
          LODWORD(v20) = v8 + v17 - v19;
          if (v21 >= v19)
          {
            LODWORD(v20) = v11;
            if (v19)
            {
              v20 = v21 % v19;
            }
          }
        }

        v22 = a1[26];
        v23 = *(v22 + v4);
        v24 = *(v22 + 8 * v20) - v23;
        v25 = v134 & (v24 >> 31);
        computeATRRecord(v135, a1[16], *(v22 + v4), v25 + v24);
        ATRLinearRegression(v135, &v143, &v140, &v139 + 1);
        if (v17 <= 0x12B)
        {
          ATRAngleOfLine(*(&v139 + 1), *a1[16], *(a1[16] + 8), v23, (v25 + v24), v143);
          v145[v17] = v26;
        }

        ++v17;
        v4 += 8;
      }

      while (v18 != v17);
      if (v18 < 0x12C)
      {
        v28 = v145[0];
        v4 = v132;
        if (v18 < 2)
        {
          LODWORD(v29) = 1;
          v32 = 1;
          v31 = v145[0];
          v5 = v130;
          v6 = v126;
          v9 = v128;
          v10 = v124;
          goto LABEL_41;
        }

        v27 = v145[0];
      }

      else
      {
        printf(" ***** %s in autoTrace\n", "too many straight lines in a row");
        v27 = v145[0];
        v28 = v145[0];
        v4 = v132;
      }

      v5 = v130;
      v6 = v126;
      v9 = v128;
      v10 = v124;
      v29 = 1;
      v30 = v27;
      v31 = v27;
      v32 = 1;
      while (1)
      {
        v33 = v30 - rintf(v30 - v27);
        v30 = v145[v29];
        v34 = v30 - rintf(v30 - v27);
        v35 = v34 > v31 ? v34 : v31;
        if (v34 >= v28)
        {
          v31 = v35;
        }

        else
        {
          v28 = v34;
        }

        v36 = (v34 - v33) >= 0.0 ? 1.0 : -1.0;
        if (v29 == 1)
        {
          v7 = v36;
        }

        else if (v7 != v36)
        {
          v32 = 0;
        }

        if (vabds_f32(v34, v33) > 0.0097222)
        {
          break;
        }

        if (v14 + v130 == ++v29)
        {
          LODWORD(v3) = *(a1 + 55);
          goto LABEL_42;
        }
      }

LABEL_41:
      v3 = *(a1 + 55);
      if (v29 == v18)
      {
LABEL_42:
        v37 = v3;
        if (v14 < v3)
        {
          v38 = 8 * v14;
          v39 = v10;
          do
          {
            *(a1[26] + v39) = *(a1[26] + v38);
            v37 = *(a1 + 55);
            LODWORD(v14) = v14 + 1;
            v38 += 8;
            v39 += 8;
          }

          while (v37 > v14);
        }

        v3 = (v37 - (v18 - 1));
        *(a1 + 55) = v3;
        if ((((v31 - v28) > 0.00055556) & v32) == 1)
        {
          v40 = a1[26];
          *(v40 + 8 * v122 + 4) = *(v40 + 8 * v122 + 4) & 0xFFFFFFF5 | 8;
          LODWORD(v41) = v6;
          if (v6 >= v3)
          {
            v42 = v6 - v3;
            LODWORD(v41) = v6 - v3;
            if (v42 >= v3)
            {
              LODWORD(v41) = v6;
              if (v37 != v18 - 1)
              {
                v41 = v42 % v3;
              }
            }
          }

          *(v40 + 8 * v41 + 4) = *(v40 + 8 * v41 + 4) & 0xFFFFFFEB | 0x10;
        }
      }

LABEL_51:
      ++v8;
      --v5;
      v9 += 8;
      v4 += 8;
      v10 += 8;
    }

    while (v6 < v3);
  }

  if (debug_auto_trace_syntax == 1)
  {
    checkSyntax(a1, "coalesce straight lines 1");
    v3 = *(a1 + 55);
  }

  if (v3 >= 1)
  {
    v43 = 0;
    do
    {
      v44 = v43++;
      v45 = v3;
      LODWORD(v46) = v43;
      if (v43 >= v3)
      {
        v46 = v43 - v3;
        if (v46 >= v3)
        {
          v46 %= v3;
        }
      }

      v47 = a1[26];
      v48 = (v47 + 8 * v44);
      v49 = (v47 + 8 * v46);
      v50 = *v48;
      v51 = v48[1];
      if ((~v51 & 0x12) == 0 && (v134 & ((*v49 - v50) >> 31)) + *v49 - v50 <= 3)
      {
        v53 = v49[1];
        if ((v53 & 8) != 0 && ((v53 | v51) & 1) == 0)
        {
          if (v44)
          {
            v45 = 0;
          }

          v54 = *(v47 + 8 * (v44 + v45 - 1));
          if ((v134 & ((v50 - v54) >> 31)) + v50 - v54 >= 3)
          {
            v55 = v134;
            if (v50 > 0)
            {
              v55 = 0;
            }

            findTangentBackwardsFrom(a1, v50 + v55 - 1, v54, &v142, &v141 + 1, &v143, &v140, &v139 + 1);
            LODWORD(v56) = v46 + 1;
            v57 = v46 + 1;
            v58 = *(a1 + 55);
            if (v46 + 1 >= v58)
            {
              LODWORD(v56) = v56 - v58;
              if (v57 - v58 >= v58)
              {
                LODWORD(v56) = v46 + 1;
                if (v58)
                {
                  v56 = (v57 - v58) % v58;
                }
              }
            }

            else if (v46 <= -2)
            {
              LODWORD(v56) = v58 + v56;
              if (v58 + v57 < 0)
              {
                LODWORD(v56) = v46 + 1;
                if (v58)
                {
                  v56 = (v58 + v57) % v58 + v58;
                }
              }
            }

            v59 = *(a1[26] + 8 * v56);
            v60 = *v49;
            if ((v134 & ((v59 - v60) >> 31)) + v59 - v60 >= 3)
            {
              findTangentForwardsFrom(a1, v60, v59, &v141, &v140 + 1, &v143, &v140, &v139 + 1);
              v61 = atan2(*(&v141 + 1), v142) * 0.159154937;
              v62 = atan2(*(&v140 + 1), *&v141) * 0.159154937;
              v63 = v62 - rintf(v62 - v61);
              if (vabds_f32(v61, v63) <= 0.0083333)
              {
                v64 = v134;
                if (*v49 > 0)
                {
                  v64 = 0;
                }

                v65 = (v121 + 8 * (*v49 + v64 - 1));
                v66 = (v121 + 8 * *v48);
                v67 = v65[1] - v66[1];
                v68 = *v65 - *v66;
                v69 = atan2(v67, v68) * 0.159154937;
                v70 = sin((fabsf((v69 - rintf(v69 - v61)) + ((v63 + v61) * -0.5)) * 6.2832)) * sqrtf((v67 * v67) + (v68 * v68));
                if (v70 < 0.33333)
                {
                  if (v44 >= v46)
                  {
                    if (v46 || (LODWORD(v71) = *(a1 + 55), v44 != v71 - 1))
                    {
                      printf(" ***** %s in autoTrace\n", "our assumptions have failed");
                      LODWORD(v71) = *(a1 + 55);
                    }

                    if (v71 >= 2)
                    {
                      v72 = 0;
                      do
                      {
                        *(a1[26] + 8 * v72) = *(a1[26] + 8 * v72 + 8);
                        v73 = v72 + 2;
                        ++v72;
                      }

                      while (v73 < *(a1 + 55));
                      LODWORD(v71) = *(a1 + 55);
                    }
                  }

                  else
                  {
                    LODWORD(v71) = *(a1 + 55);
                    if (v57 < v71)
                    {
                      do
                      {
                        *(a1[26] + 8 * v57 - 16) = *(a1[26] + 8 * v57);
                        ++v57;
                        v71 = *(a1 + 55);
                      }

                      while (v57 < v71);
                    }
                  }

                  *(a1 + 55) = v71 - 2;
                }
              }
            }
          }
        }
      }

      v3 = *(a1 + 55);
    }

    while (v43 < v3);
  }

  v74 = v3;
  if (debug_auto_trace_syntax == 1)
  {
    checkSyntax(a1, "coalesce straight lines 2");
    v74 = *(a1 + 55);
  }

  if (v74 >= 1)
  {
    for (i = 0; i < v74; ++i)
    {
      v76 = i + 1;
      v77 = i + 1;
      v78 = v74;
      if (i + 1 >= v74)
      {
        v81 = v76 - v74;
        v79 = v77 - v74;
        if (v79 >= v74)
        {
          v79 = i + 1;
          if (v74)
          {
            v79 = v81 % v74;
          }
        }
      }

      else
      {
        v79 = v76;
        if (i <= -2)
        {
          v80 = v74 + v76;
          v79 = v74 + v77;
          if (v79 < 0)
          {
            v79 = i + 1;
            if (v74)
            {
              v79 = v80 % v74 + v74;
            }
          }
        }
      }

      v82 = a1[26];
      v83 = (v82 + 8 * i);
      v84 = v83[1];
      if ((v84 & 8) != 0)
      {
        v85 = (v82 + 8 * v79);
        v86 = *v83;
        v87 = (v134 & ((*v85 - v86) >> 31)) + *v85 - v86;
        if (v87 <= 34)
        {
          v88 = v85[1];
          if ((v88 & 0x10) == 0)
          {
LABEL_186:
            __sprintf_chk(v144, 0, 0x100uLL, "curve (starting at %d) not balanced");
            printf(" ***** %s in autoTrace\n", v144);
            return 0;
          }

          if (v85[1] & 8 | v83[1] & 0x10 && ((v88 | v84) & 1) == 0)
          {
            v131 = v79 << 32;
            v133 = v74;
            v123 = (v82 + 8 * v79);
            v125 = v79;
            v127 = *v83;
            v129 = *v85;
            computeAngleSumAndRange(a1, v86, *v85, &v139, &v138 + 1);
            v89 = 1.0 / v87;
            if (fabsf(v89 * *&v139) <= 0.00027778)
            {
              v74 = v133;
              if ((v89 * *(&v138 + 1)) > 0.00027778)
              {
                continue;
              }

              if ((v84 & 0x10) != 0)
              {
                v93 = (v131 + 0x100000000) >> 32;
                v94 = v93 - v78;
                if (v93 >= v78)
                {
                  LODWORD(v95) = v93 - v78;
                  if (v94 >= v78)
                  {
                    v95 = (v131 + 0x100000000) >> 32;
                    if (v133)
                    {
                      v95 = v94 % v78;
                    }
                  }
                }

                else if (v93 < 0)
                {
                  LODWORD(v95) = v93 + v78;
                  if (v93 + v78 < 0)
                  {
                    v95 = (v131 + 0x100000000) >> 32;
                    if (v133)
                    {
                      v95 = (v93 + v78) % v78 + v78;
                    }
                  }
                }

                else
                {
                  v95 = (v131 + 0x100000000) >> 32;
                }

                v100 = *(v82 + 8 * v95);
                v101 = (v134 & ((v100 - v129) >> 31)) + v100 - v129;
                computeAngleSumAndRange(a1, v129, v100, &v138, &v137);
                v102 = 1.0 / v101;
                if (fabsf(*&v138 * v102) <= 0.00027778 && (v102 * v137) <= 0.00027778)
                {
                  v103 = v133;
                  if (v125 && v133 > v125)
                  {
                    v104 = v131 >> 32;
                    do
                    {
                      *(a1[26] + 8 * v104 - 8) = *(a1[26] + 8 * v104);
                      ++v104;
                    }

                    while (v104 < *(a1 + 55));
                    v103 = *(a1 + 55);
                  }

                  v74 = (v103 - 1);
                  *(a1 + 55) = v74;
                  --i;
                  continue;
                }
              }

              else
              {
                if ((v88 & 8) == 0)
                {
                  continue;
                }

                v90 = i - 1;
                if (i <= 0)
                {
                  LODWORD(v91) = v78 + v90;
                  v92 = v127;
                  if (v78 + v90 < 0)
                  {
                    LODWORD(v91) = i - 1;
                    if (v133)
                    {
                      v91 = (v78 + v90) % v78 + v78;
                    }
                  }
                }

                else
                {
                  LODWORD(v91) = i - 1;
                  v92 = v127;
                }

                v96 = *(v82 + 8 * v91);
                v97 = (v134 & ((v92 - v96) >> 31)) + v92 - v96;
                computeAngleSumAndRange(a1, v96, v92, &v138, &v137);
                v98 = 1.0 / v97;
                if (fabsf(*&v138 * v98) <= 0.00027778)
                {
                  v74 = v133;
                  if ((v98 * v137) <= 0.00027778)
                  {
                    *v123 = v127;
                    if ((v84 & 4) != 0)
                    {
                      v88 |= 4u;
                      v123[1] = v88;
                      v99 = v83[1] & 0x10;
                    }

                    else
                    {
                      v99 = 0;
                    }

                    v123[1] = v88 & 0xFFFFFFEF | v99;
                    if (i + 1 < v133)
                    {
                      v105 = i;
                      do
                      {
                        *(a1[26] + 8 * v105) = *(a1[26] + 8 * v105 + 8);
                        v106 = v105 + 2;
                        ++v105;
                      }

                      while (v106 < *(a1 + 55));
                      LODWORD(v74) = *(a1 + 55);
                    }

                    v74 = (v74 - 1);
                    *(a1 + 55) = v74;
                    --i;
                  }

                  continue;
                }
              }
            }

            v74 = v133;
          }
        }
      }
    }
  }

  v107 = v74;
  if (debug_auto_trace_syntax == 1)
  {
    checkSyntax(a1, "coalesce straight lines 3");
    v107 = *(a1 + 55);
  }

  if (v107 >= 1)
  {
    v108 = 0;
    while (1)
    {
      v109 = v108++;
      v110 = v107;
      LODWORD(v111) = v108;
      if (v108 >= v107)
      {
        v111 = v108 - v107;
        if (v111 >= v107)
        {
          v111 %= v107;
        }
      }

      v112 = a1[26];
      v113 = (v112 + 8 * v109);
      v114 = v113[1];
      if ((v114 & 8) == 0)
      {
        goto LABEL_174;
      }

      v115 = (v112 + 8 * v111);
      v116 = *v113;
      v117 = (v134 & ((*v115 - v116) >> 31)) + *v115 - v116;
      if (v117 > 5)
      {
        goto LABEL_174;
      }

      v118 = v115[1];
      if ((v118 & 0x10) == 0)
      {
        goto LABEL_186;
      }

      if (!(v115[1] & 8 | v113[1] & 0x10) || ((v118 | v114) & 1) != 0 || v117 > 2)
      {
        goto LABEL_174;
      }

      if ((v114 & 0x10) != 0)
      {
        break;
      }

      if ((v118 & 8) != 0)
      {
        *v115 = v116;
        if ((v114 & 4) != 0)
        {
          v118 |= 4u;
          v115[1] = v118;
          v119 = v113[1] & 0x10;
        }

        else
        {
          v119 = 0;
        }

        v115[1] = v118 & 0xFFFFFFEF | v119;
        if (v108 < v107)
        {
          do
          {
            *(a1[26] + 8 * v109) = *(a1[26] + 8 * v109 + 8);
            v107 = *(a1 + 55);
            ++v109;
          }

          while (v107 > v109 + 1);
        }

LABEL_173:
        *(a1 + 55) = --v107;
        v110 = v107;
      }

LABEL_174:
      if (v108 >= v110)
      {
        goto LABEL_180;
      }
    }

    if ((v114 & 4) != 0)
    {
      v115[1] = v118 & 0xFFFFFFEB | 4;
    }

    memmove(v113, v113 + 2, 8 * (v107 + ~v109));
    v107 = *(a1 + 55);
    goto LABEL_173;
  }

LABEL_180:
  if (debug_auto_trace_syntax == 1)
  {
    checkSyntax(a1, "coalesce straight lines 4");
  }

  if (debug_auto_trace == 1)
  {
    if (*a1)
    {
      (a1[1])(*a1, 7, a1);
    }
  }

  return 1;
}

BOOL extractCurveRecords(uint64_t a1)
{
  v44 = **(a1 + 128);
  *(a1 + 248) = 100;
  v2 = malloc_type_malloc(0x2260uLL, 0x1000040A005BA8DuLL);
  v3 = v2;
  *(a1 + 240) = v2;
  if (!v2)
  {
    printf(" ***** %s in autoTrace\n", "could not allocate curves list");
    return v3 != 0;
  }

  v43 = v2;
  LODWORD(v4) = *(a1 + 220);
  if (v4 < 1)
  {
    goto LABEL_53;
  }

  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    LODWORD(v8) = ++v6;
    if (v7 >= v4)
    {
      v8 = v7 - v4;
      if (v8 >= v4)
      {
        v8 %= v4;
      }
    }

    v9 = *(a1 + 208);
    v10 = (v9 + v5);
    v11 = *(v9 + v5 + 4);
    if ((v11 & 0xA) != 0)
    {
      if (v11)
      {
        Corner = findCorner(a1, *v10, 0);
        v12 = Corner + 1;
        if (!Corner)
        {
          v12 = (v9 + v5);
        }
      }

      else
      {
        v12 = (v9 + v5);
      }

      v14 = v9 + 8 * v8;
      v15 = *v12;
      v16 = v14;
      if (*(v14 + 4))
      {
        v17 = findCorner(a1, *v14, 0);
        if (v17)
        {
          v16 = v17;
        }

        else
        {
          v16 = v14;
        }
      }

      if (*v16 == v15)
      {
        v18 = v10[1];
        if ((v18 & 8) != 0)
        {
          v19 = -17;
          v20 = -9;
        }

        else
        {
          if ((v18 & 2) == 0)
          {
            goto LABEL_22;
          }

          v19 = -5;
          v20 = -11;
        }

        v10[1] = v18 & v20;
        *(v14 + 4) &= v19;
      }
    }

LABEL_22:
    v4 = *(a1 + 220);
    v5 += 8;
    v21 = v7++ < v4;
  }

  while (v21);
  if (v4 >= 1)
  {
    v22 = 8 * v4;
    v23 = *(a1 + 220);
    do
    {
      if (!*(*(a1 + 208) + 8 * (v23 - 1) + 4))
      {
        if (v23 < v4)
        {
          v24 = v22;
          v25 = v23;
          do
          {
            *(*(a1 + 208) + v24 - 8) = *(*(a1 + 208) + v24);
            LODWORD(v4) = *(a1 + 220);
            ++v25;
            v24 += 8;
          }

          while (v4 > v25);
        }

        LODWORD(v4) = v4 - 1;
        *(a1 + 220) = v4;
      }

      v22 -= 8;
      v21 = v23-- <= 1;
    }

    while (!v21);
    if (v4 >= 1)
    {
      v26 = 0;
      v27 = 0;
      while (2)
      {
        v28 = v27++;
        LODWORD(v29) = v27;
        if (v27 >= v4)
        {
          v29 = v28 - v4 + 1;
          if (v29 >= v4)
          {
            v29 %= v4;
          }
        }

        v30 = *(a1 + 208);
        v31 = (v30 + v26);
        v32 = *(v30 + v26 + 4);
        if ((v32 & 0xA) == 0)
        {
          goto LABEL_52;
        }

        if (v32)
        {
          v34 = findCorner(a1, *v31, 0);
          v33 = v34 + 1;
          if (!v34)
          {
            v33 = (v30 + v26);
          }
        }

        else
        {
          v33 = (v30 + v26);
        }

        v35 = (v30 + 8 * v29);
        v36 = *v33;
        if (v35[1])
        {
          v37 = findCorner(a1, *v35, 0);
          if (v37)
          {
            v35 = v37;
          }
        }

        v38 = *v35;
        if (v38 == v36)
        {
          goto LABEL_52;
        }

        v39 = newCurveFromList((a1 + 240));
        v40 = v31[1];
        if ((v40 & 8) != 0)
        {
          v41 = 1;
LABEL_50:
          *v39 = v41;
        }

        else if ((v40 & 2) != 0)
        {
          v41 = 0;
          goto LABEL_50;
        }

        *(v39 + 1) = v28;
        *(v39 + 2) = v36;
        *(v39 + 12) = v29;
        *(v39 + 13) = v38;
        *(v39 + 21) = (v44 & ((v38 - v36) >> 31)) + v38 - v36;
LABEL_52:
        v4 = *(a1 + 220);
        v26 += 8;
        if (v27 >= v4)
        {
          break;
        }

        continue;
      }
    }
  }

LABEL_53:
  if (debug_auto_trace == 1 && *a1)
  {
    (*(a1 + 8))(*a1, 8, a1);
  }

  v3 = v43;
  if (debug_auto_trace_uninitialized_testing == 1)
  {
    checkCurves(a1, 8);
  }

  return v3 != 0;
}

void computeCurveTangents(uint64_t a1)
{
  v147 = 0;
  v145 = 0;
  v146 = 0;
  v2 = 0uLL;
  memset(v144, 0, sizeof(v144));
  LODWORD(v3) = *(a1 + 252);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 128);
    v6 = *v5;
    v143 = *(v5 + 1);
    v7 = v6 / 8;
    if (v6 / 8 <= 1)
    {
      v7 = 1;
    }

    if (v6 >= 48)
    {
      v7 = 6;
    }

    v142 = v7;
    v8 = &unk_1EA867000;
    do
    {
      v9 = v4++;
      LODWORD(v10) = v4;
      if (v4 >= v3)
      {
        v10 = v4 - v3;
        if (v10 >= v3)
        {
          v10 %= v3;
        }
      }

      v11 = *(a1 + 240);
      v12 = v11 + 88 * v9;
      v13 = v11 + 88 * v10;
      v14 = *(a1 + 208);
      v15 = *(v12 + 48);
      v16 = v14 + 8 * v15;
      v17 = *(v13 + 4);
      if (v15 == v17)
      {
        if ((*(v16 + 4) & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v18 = v15 + 1;
        v19 = *(a1 + 220);
        if (v15 + 1 >= v19)
        {
          LODWORD(v20) = v18 - v19;
          if (v18 - v19 >= v19)
          {
            LODWORD(v20) = v15 + 1;
            if (v19)
            {
              v20 = (v18 - v19) % v19;
            }
          }
        }

        else
        {
          LODWORD(v20) = v15 + 1;
          if (v15 <= -2)
          {
            LODWORD(v20) = v19 + v18;
            if (v19 + v18 < 0)
            {
              LODWORD(v20) = v15 + 1;
              if (v19)
              {
                v20 = (v19 + v18) % v19 + v19;
              }
            }
          }
        }

        if (v17 == v20)
        {
          if (*(v16 + 4))
          {
            goto LABEL_87;
          }

          v21 = v14 + 8 * v17;
        }

        else
        {
          v22 = v15 + 2;
          if (v15 + 2 >= v19)
          {
            LODWORD(v23) = v22 - v19;
            if (v22 - v19 >= v19)
            {
              LODWORD(v23) = v15 + 2;
              if (v19)
              {
                v23 = (v22 - v19) % v19;
              }
            }
          }

          else
          {
            LODWORD(v23) = v15 + 2;
            if (v15 <= -3)
            {
              v23 = v19 + v22;
              if (v19 + v22 < 0)
              {
                v23 = v23 % v19 + v19;
                if (!v19)
                {
                  LODWORD(v23) = v15 + 2;
                }
              }
            }
          }

          if (v17 != v23)
          {
            printf(" ***** %s in autoTrace\n", "too many interesting points in between curves/lines");
            break;
          }

          if (v18 >= v19)
          {
            LODWORD(v24) = v18 - v19;
            if (v18 - v19 >= v19)
            {
              LODWORD(v24) = v15 + 1;
              if (v19)
              {
                v24 = (v18 - v19) % v19;
              }
            }
          }

          else
          {
            LODWORD(v24) = v15 + 1;
            if (v15 <= -2)
            {
              v24 = v19 + v18;
              if (v19 + v18 < 0)
              {
                if (v19)
                {
                  v24 = v24 % v19 + v19;
                }

                else
                {
                  LODWORD(v24) = v15 + 1;
                }
              }
            }
          }

          v21 = v14 + 8 * v24;
        }

        if ((*(v21 + 4) & 1) == 0)
        {
LABEL_45:
          if (*v12)
          {
            if (*v13)
            {
              v25 = v142;
              do
              {
                if (*(v12 + 84) >= v25)
                {
                  v26 = v25;
                }

                else
                {
                  v26 = *(v12 + 84);
                }

                v27 = *(v12 + 52) - v26;
                if (v27 >= v6)
                {
                  v29 = v27 - v6;
                  if (v27 - v6 >= v6)
                  {
                    v30 = v6 == 0;
                  }

                  else
                  {
                    v27 -= v6;
                    v30 = 1;
                  }

                  if (!v30)
                  {
                    v27 = v29 % v6;
                  }
                }

                else if ((v27 & 0x80000000) != 0)
                {
                  v28 = v27 + v6;
                  if (v27 + v6 < 0 == __OFADD__(v27, v6))
                  {
                    v27 += v6;
                  }

                  if (v28 < 0 && v6)
                  {
                    v27 = v28 % v6 + v6;
                  }
                }

                if (*(v13 + 84) > v25)
                {
                  v31 = v25 + 1;
                }

                else
                {
                  v31 = *(v13 + 84);
                }

                v32 = *(v13 + 8) + v31;
                if (v32 >= v6)
                {
                  if (v32 - v6 >= v6)
                  {
                    if (v6)
                    {
                      v32 = (v32 - v6) % v6;
                    }
                  }

                  else
                  {
                    LODWORD(v32) = v32 - v6;
                  }
                }

                else if ((v32 & 0x80000000) != 0)
                {
                  v33 = v32 + v6;
                  if (v32 + v6 < 0 == __OFADD__(v32, v6))
                  {
                    LODWORD(v32) = v32 + v6;
                  }

                  if (v33 < 0 && v6)
                  {
                    v32 = v33 % v6 + v6;
                  }
                }

                v34 = v25 + 1;
                if (v34 - 1 < 3)
                {
                  break;
                }

                v35 = *(*(a1 + 152) + 4 * v32) - *(*(a1 + 152) + 4 * v27);
                v25 = v34 - 2;
              }

              while (vabds_f32(v35, rintf(v35)) >= 0.055556);
              if (v32 <= v27)
              {
                v36 = v6;
              }

              else
              {
                v36 = 0;
              }

              v37 = v36 + v32 - v27;
              if (v37 <= 2)
              {
                v38 = 2;
              }

              else
              {
                v38 = v37;
              }

              computeATRRecord(v144, *(a1 + 128), v27, v38);
              if (ATRLinearRegression(v144, &v147, &v146 + 1, &v146))
              {
                v39 = v147;
                LODWORD(v40) = v146;
                ATRAngleOfLine(*&v146, **(a1 + 128), *(*(a1 + 128) + 8), v27, v38, v147);
                v42 = v41 * 6.2832;
                v43 = *(&v146 + 1);
              }

              else
              {
                v79 = (v143 + 8 * v27);
                if (v27 + 1 >= v6)
                {
                  v80 = v6;
                }

                else
                {
                  v80 = 0;
                }

                v81 = (v143 + 8 * (v27 + 1 - v80));
                v82 = *v81;
                v83 = v81[1];
                v84 = *v79;
                v85 = v79[1];
                v86 = *v81 - *v79;
                v87 = v83 - v85;
                v42 = atan2((v83 - v85), v86);
                if (v42 < 0.0)
                {
                  v88 = v42 + 6.28318531;
                  v42 = v88;
                }

                if (vabds_f32(v82, v84) <= vabds_f32(v83, v85))
                {
                  v39 = 0;
                  v147 = 0;
                  v40 = v86 / v87;
                  v43 = v84 - (v40 * v85);
                }

                else
                {
                  v39 = 1;
                  v147 = 1;
                  v40 = v87 / v86;
                  v43 = v85 - (v40 * v84);
                }

                v146 = __PAIR64__(LODWORD(v43), LODWORD(v40));
              }

              v135 = __sincos_stret(v42);
              v2.n128_u32[1] = HIDWORD(v135.__sinval);
              cosval = v135.__cosval;
              v2.n128_f32[0] = v135.__sinval;
              *(v13 + 20) = cosval;
              *(v13 + 24) = v2.n128_u32[0];
              *(v13 + 36) = v39;
              *(v13 + 40) = v43;
              *(v13 + 44) = v40;
              if (debug_auto_trace_nan_inf_check == 1)
              {
                v2.n128_f32[0] = numericalCheckCurveStart(v13);
              }

              *(v12 + 56) = *(v13 + 20);
              *(v12 + 72) = v39;
              *(v12 + 76) = v43;
              *(v12 + 80) = v40;
              v8 = &unk_1EA867000;
            }

            else
            {
              v72 = *(v13 + 84);
              if (v72 <= 2)
              {
                v73 = 2;
              }

              else
              {
                v73 = v72;
              }

              computeATRRecord(v144, *(a1 + 128), *(v13 + 8), v73);
              if (ATRLinearRegression(v144, &v147, &v146 + 1, &v146))
              {
                v74 = v147;
                v75 = *&v146;
                ATRAngleOfLine(*&v146, **(a1 + 128), *(*(a1 + 128) + 8), *(v13 + 8), v73, v147);
                v77 = v76 * 6.2832;
                v78 = *(&v146 + 1);
              }

              else
              {
                v123 = *(v13 + 8);
                v124 = (v143 + 8 * v123);
                v125 = v123 + 1;
                if (v125 >= v6)
                {
                  v126 = v6;
                }

                else
                {
                  v126 = 0;
                }

                v127 = (v143 + 8 * (v125 - v126));
                v128 = *v127;
                v129 = v127[1];
                v130 = *v124;
                v131 = v124[1];
                v132 = *v127 - *v124;
                v133 = v129 - v131;
                v77 = atan2((v129 - v131), v132);
                if (v77 < 0.0)
                {
                  v134 = v77 + 6.28318531;
                  v77 = v134;
                }

                if (vabds_f32(v128, v130) <= vabds_f32(v129, v131))
                {
                  v74 = 0;
                  v147 = 0;
                  v75 = v132 / v133;
                  *&v146 = v75;
                  v78 = v130 - (v75 * v131);
                }

                else
                {
                  v74 = 1;
                  v147 = 1;
                  v75 = v133 / v132;
                  *&v146 = v75;
                  v78 = v131 - (v75 * v130);
                }

                *(&v146 + 1) = v78;
              }

              v8 = &unk_1EA867000;
              v140 = __sincos_stret(v77);
              v2.n128_u32[1] = HIDWORD(v140.__sinval);
              v141 = v140.__cosval;
              v2.n128_f32[0] = v140.__sinval;
              *(v13 + 20) = v141;
              *(v13 + 24) = v2.n128_u32[0];
              *(v13 + 36) = v74;
              *(v13 + 40) = v78;
              *(v13 + 44) = v75;
              if (debug_auto_trace_nan_inf_check == 1)
              {
                v2.n128_f32[0] = numericalCheckCurveStart(v13);
              }

              *(v12 + 56) = *(v13 + 20);
              *(v12 + 72) = v74;
              *(v12 + 76) = v78;
              *(v12 + 80) = v75;
            }

            if (v8[1946] == 1)
            {
              v2.n128_f32[0] = numericalCheckCurveEnd(v12);
            }

            goto LABEL_178;
          }

          v53 = *(v12 + 84);
          if (v53 <= 2)
          {
            v54 = 2;
          }

          else
          {
            v54 = v53;
          }

          computeATRRecord(v144, *(a1 + 128), *(v12 + 8), v54);
          if (ATRLinearRegression(v144, &v147, &v146 + 1, &v146))
          {
            v55 = v147;
            LODWORD(v56) = v146;
            ATRAngleOfLine(*&v146, **(a1 + 128), *(*(a1 + 128) + 8), *(v12 + 8), v54, v147);
            v58 = v57 * 6.2832;
            v59 = *(&v146 + 1);
          }

          else
          {
            v89 = *(v12 + 8);
            v90 = (v143 + 8 * v89);
            v91 = v89 + 1;
            if (v91 >= v6)
            {
              v92 = v6;
            }

            else
            {
              v92 = 0;
            }

            v93 = (v143 + 8 * (v91 - v92));
            v94 = *v93;
            v95 = v93[1];
            v96 = *v90;
            v97 = v90[1];
            v98 = *v93 - *v90;
            v99 = v95 - v97;
            v58 = atan2((v95 - v97), v98);
            if (v58 < 0.0)
            {
              v100 = v58 + 6.28318531;
              v58 = v100;
            }

            if (vabds_f32(v94, v96) <= vabds_f32(v95, v97))
            {
              v55 = 0;
              v147 = 0;
              v56 = v98 / v99;
              *&v146 = v56;
              v59 = v96 - (v56 * v97);
            }

            else
            {
              v55 = 1;
              v147 = 1;
              v56 = v99 / v98;
              *&v146 = v56;
              v59 = v97 - (v56 * v96);
            }

            *(&v146 + 1) = v59;
          }

          v8 = &unk_1EA867000;
          v137 = __sincos_stret(v58);
          v138 = v137.__cosval;
          sinval = v137.__sinval;
          *(v12 + 56) = v138;
          *(v12 + 60) = sinval;
          *(v12 + 72) = v55;
          *(v12 + 76) = v59;
          *(v12 + 80) = v56;
          if (debug_auto_trace_nan_inf_check == 1)
          {
            numericalCheckCurveEnd(v12);
          }

          computeCurveStartTangentAtCorner(a1, v13);
          v2.n128_f32[0] = fabsf(acosf((*(v13 + 24) * *(v12 + 60)) + (*(v13 + 20) * *(v12 + 56)))) * 0.15915;
          if (v2.n128_f32[0] >= 0.013889)
          {
            if (*(v12 + 52) != *(v13 + 8) && *(v12 + 48) != -1)
            {
              *(v16 + 4) |= 1u;
            }

            goto LABEL_166;
          }

          *(v13 + 20) = *(v12 + 56);
          *(v13 + 36) = v55;
          goto LABEL_165;
        }
      }

LABEL_87:
      if (*v12)
      {
        v151[0] = 0;
        v150 = 0.0;
        v149 = 0;
        v148 = 0;
        findTangentBackwardsFrom(a1, *(v12 + 52), *(v12 + 8), &v149, &v148, v151, &v150, &v149 + 1);
        v44 = v148;
        *(v12 + 56) = v149;
        *(v12 + 60) = v44;
        *(v12 + 72) = v151[0];
        v45 = HIDWORD(v149);
        *(v12 + 76) = v150;
        *(v12 + 80) = v45;
      }

      else
      {
        v46 = *(v12 + 84);
        if (v46 <= 2)
        {
          v47 = 2;
        }

        else
        {
          v47 = v46;
        }

        computeATRRecord(v144, *(a1 + 128), *(v12 + 8), v47);
        if (ATRLinearRegression(v144, &v147, &v146 + 1, &v146))
        {
          v48 = v147;
          v49 = *&v146;
          ATRAngleOfLine(*&v146, **(a1 + 128), *(*(a1 + 128) + 8), *(v12 + 8), v47, v147);
          v51 = v50 * 6.2832;
          v52 = *(&v146 + 1);
        }

        else
        {
          v60 = *(v12 + 8);
          v61 = (v143 + 8 * v60);
          v62 = v60 + 1;
          if (v62 >= v6)
          {
            v63 = v6;
          }

          else
          {
            v63 = 0;
          }

          v64 = (v143 + 8 * (v62 - v63));
          v65 = *v64;
          v66 = v64[1];
          v67 = *v61;
          v68 = v61[1];
          v69 = *v64 - *v61;
          v70 = v66 - v68;
          v51 = atan2((v66 - v68), v69);
          if (v51 < 0.0)
          {
            v71 = v51 + 6.28318531;
            v51 = v71;
          }

          if (vabds_f32(v65, v67) <= vabds_f32(v66, v68))
          {
            v48 = 0;
            v147 = 0;
            v49 = v69 / v70;
            *&v146 = v49;
            v52 = v67 - (v49 * v68);
          }

          else
          {
            v48 = 1;
            v147 = 1;
            v49 = v70 / v69;
            *&v146 = v49;
            v52 = v68 - (v49 * v67);
          }

          *(&v146 + 1) = v52;
        }

        v8 = &unk_1EA867000;
        v101 = __sincos_stret(v51);
        v102 = v101.__cosval;
        v103 = v101.__sinval;
        *(v12 + 56) = v102;
        *(v12 + 60) = v103;
        *(v12 + 72) = v48;
        *(v12 + 76) = v52;
        *(v12 + 80) = v49;
      }

      if (v8[1946] == 1)
      {
        numericalCheckCurveEnd(v12);
      }

      if (*v13)
      {
        v2.n128_f32[0] = computeCurveStartTangentAtCorner(a1, v13);
        goto LABEL_166;
      }

      v104 = *(v13 + 84);
      if (v104 <= 2)
      {
        v105 = 2;
      }

      else
      {
        v105 = v104;
      }

      computeATRRecord(v144, *(a1 + 128), *(v13 + 8), v105);
      if (ATRLinearRegression(v144, &v147, &v146 + 1, &v146))
      {
        v106 = v147;
        LODWORD(v56) = v146;
        ATRAngleOfLine(*&v146, **(a1 + 128), *(*(a1 + 128) + 8), *(v13 + 8), v105, v147);
        v108 = v107 * 6.2832;
        v59 = *(&v146 + 1);
      }

      else
      {
        v109 = *(v13 + 8);
        v110 = (v143 + 8 * v109);
        v111 = v109 + 1;
        if (v111 >= v6)
        {
          v112 = v6;
        }

        else
        {
          v112 = 0;
        }

        v113 = (v143 + 8 * (v111 - v112));
        v114 = *v113;
        v115 = v113[1];
        v116 = *v110;
        v117 = v110[1];
        v118 = *v113 - *v110;
        v119 = v115 - v117;
        v108 = atan2((v115 - v117), v118);
        if (v108 < 0.0)
        {
          v120 = v108 + 6.28318531;
          v108 = v120;
        }

        if (vabds_f32(v114, v116) <= vabds_f32(v115, v117))
        {
          v106 = 0;
          v147 = 0;
          v56 = v118 / v119;
          v59 = v116 - (v56 * v117);
        }

        else
        {
          v106 = 1;
          v147 = 1;
          v56 = v119 / v118;
          v59 = v117 - (v56 * v116);
        }

        v146 = __PAIR64__(LODWORD(v59), LODWORD(v56));
      }

      v121 = __sincos_stret(v108);
      v2.n128_u32[1] = HIDWORD(v121.__sinval);
      v122 = v121.__cosval;
      v2.n128_f32[0] = v121.__sinval;
      *(v13 + 20) = v122;
      *(v13 + 24) = v2.n128_u32[0];
      *(v13 + 36) = v106;
LABEL_165:
      *(v13 + 40) = v59;
      *(v13 + 44) = v56;
LABEL_166:
      if (v8[1946] == 1)
      {
        v2.n128_f32[0] = numericalCheckCurveStart(v13);
      }

LABEL_178:
      v3 = *(a1 + 252);
    }

    while (v4 < v3);
  }

  if (debug_auto_trace == 1 && *a1)
  {
    (*(a1 + 8))(*a1, 9, a1, v2);
  }

  if (debug_auto_trace_uninitialized_testing == 1)
  {

    checkCurves(a1, 9);
  }
}

uint64_t computePoints(uint64_t result)
{
  v1 = result;
  LODWORD(v2) = *(result + 252);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    v6 = *(*(result + 128) + 8);
    v7 = -1.0;
    v8 = 1.0;
    do
    {
      LODWORD(v9) = ++v4;
      if (v5 >= v2)
      {
        v9 = v5 - v2;
        if (v9 >= v2)
        {
          v9 %= v2;
        }
      }

      v10 = *(v1 + 240);
      v11 = v10 + 88 * v9;
      v12 = *(v1 + 208);
      v13 = *(v10 + v3 + 48);
      v14 = (v12 + 8 * v13);
      v15 = *(v11 + 4);
      if (v13 != v15)
      {
        v16 = v13 + 1;
        v17 = *(v1 + 220);
        if (v13 + 1 >= v17)
        {
          LODWORD(v18) = v16 - v17;
          if (v16 - v17 >= v17)
          {
            LODWORD(v18) = v13 + 1;
            if (v17)
            {
              v18 = (v16 - v17) % v17;
            }
          }
        }

        else
        {
          LODWORD(v18) = v13 + 1;
          if (v13 <= -2)
          {
            v18 = v17 + v16;
            if (v17 + v16 < 0)
            {
              v18 = v18 % v17 + v17;
              if (!v17)
              {
                LODWORD(v18) = v13 + 1;
              }
            }
          }
        }

        if (v15 == v18)
        {
          if (v14[1])
          {
            goto LABEL_47;
          }

          v14 = (v12 + 8 * v15);
        }

        else
        {
          v19 = v13 + 2;
          if (v13 + 2 >= v17)
          {
            LODWORD(v20) = v19 - v17;
            if (v19 - v17 >= v17)
            {
              LODWORD(v20) = v13 + 2;
              if (v17)
              {
                v20 = (v19 - v17) % v17;
              }
            }
          }

          else if (v13 > -3)
          {
            LODWORD(v20) = v13 + 2;
          }

          else
          {
            LODWORD(v20) = v17 + v19;
            if (v17 + v19 < 0)
            {
              LODWORD(v20) = v13 + 2;
              if (v17)
              {
                v20 = (v17 + v19) % v17 + v17;
              }
            }
          }

          if (v15 != v20)
          {
            break;
          }

          if (v16 >= v17)
          {
            LODWORD(v13) = v16 - v17;
            if (v16 - v17 >= v17)
            {
              LODWORD(v13) = v16;
              if (v17)
              {
                v13 = (v16 - v17) % v17;
              }
            }
          }

          else if (v13 > -2)
          {
            LODWORD(v13) = v13 + 1;
          }

          else
          {
            LODWORD(v13) = v17 + v16;
            if (v17 + v16 < 0)
            {
              LODWORD(v13) = v16;
              if (v17)
              {
                v13 = (v17 + v16) % v17 + v17;
              }
            }
          }

          v14 = (v12 + 8 * v13);
        }
      }

      if ((v14[1] & 1) == 0)
      {
        v21 = *(v11 + 44);
        if (*(v11 + 36))
        {
          v22 = *(v11 + 44);
        }

        else
        {
          v22 = v7;
        }

        if (*(v11 + 36))
        {
          v21 = v7;
        }

        v23 = sqrtf((v21 * v21) + (v22 * v22));
        if (v23 == 0.0)
        {
          goto LABEL_71;
        }

        v24 = (v6 + 8 * *(v11 + 8));
        v25 = v24[1];
        v26 = v8 / v23;
        v27 = v22 * v26;
        v28 = v21 * v26;
        v29 = ((v25 * v28) + (v27 * *v24)) + (v26 * *(v11 + 40));
        *(v11 + 12) = *v24 - (v29 * v27);
        *(v11 + 16) = v25 - (v29 * v28);
        goto LABEL_69;
      }

LABEL_47:
      v30 = *(v10 + v3 + 80);
      if (*(v10 + v3 + 72))
      {
        v31 = *(v10 + v3 + 80);
      }

      else
      {
        v31 = v7;
      }

      if (*(v10 + v3 + 72))
      {
        v30 = v7;
      }

      v32 = sqrtf((v30 * v30) + (v31 * v31));
      if (v32 == 0.0)
      {
        goto LABEL_71;
      }

      v33 = *v14;
      v34 = v8 / v32;
      v35 = v31 * v34;
      v36 = v30 * v34;
      v37 = v34 * *(v10 + v3 + 76);
      v38 = 0.0;
      v39 = 0.0;
      if (*(v1 + 19) == 1)
      {
        v40 = (v6 + 8 * v33);
        v38 = *v40;
        v39 = v40[1];
        printf("intersection at corner %d (%.2f, %.2f)\n", v33, *v40, v39);
        result = printf("  incoming arc %d-%d end line equation %.6f*x + %.6f*y + %.2f = 0\n", *(v10 + v3 + 8), *(v10 + v3 + 52), v35, v36, v37);
        v8 = 1.0;
      }

      v41 = *(v11 + 44);
      if (*(v11 + 36))
      {
        v42 = *(v11 + 44);
      }

      else
      {
        v42 = v7;
      }

      if (*(v11 + 36))
      {
        v41 = v7;
      }

      v43 = sqrtf((v41 * v41) + (v42 * v42));
      if (v43 == 0.0)
      {
LABEL_71:
        result = printf(" ***** %s in autoTrace\n", "degenerate line");
        break;
      }

      v44 = v8 / v43;
      v45 = v42 * v44;
      v46 = v41 * v44;
      v47 = v44 * *(v11 + 40);
      if (*(v1 + 19) == 1)
      {
        printf("  outgoing arc %d-%d end line equation %.6f*x + %.6f*y + %.2f = 0\n", *(v11 + 8), *(v11 + 52), v45, v46, v47);
        printf("  incoming line distance of corner vertex %.3f\n", (v37 + ((v36 * v39) + (v35 * v38))));
        result = printf("  outgoing line distance of corner vertex %.3f\n", (((v39 * v46) + (v45 * v38)) + v47));
        v8 = 1.0;
      }

      v48 = (v35 * v46) - (v36 * v45);
      if (fabsf(v48) >= 0.08)
      {
        v49 = v8 / v48;
        v50 = (v8 / v48) * ((v36 * v47) - (v37 * v46));
        v51 = v49 * ((v37 * v45) - (v35 * v47));
        *(v11 + 12) = v50;
        *(v11 + 16) = v51;
        *(v11 + 8) = v33;
        if (*(v1 + 19) == 1)
        {
          result = printf("  intersection (%.2f, %.2f)\n", v50, v51);
          v8 = 1.0;
          v50 = *(v11 + 12);
        }

        v7 = -1.0;
        v52 = v6 + 8 * v33;
        if ((((*(v52 + 4) - *(v11 + 16)) * (*(v52 + 4) - *(v11 + 16))) + ((*v52 - v50) * (*v52 - v50))) > 16.0)
        {
          *(v11 + 12) = *v52;
        }
      }

      else
      {
        *(v11 + 12) = *(v6 + 8 * v33);
        *(v11 + 8) = v33;
        v7 = -1.0;
      }

LABEL_69:
      v2 = *(v1 + 252);
      v3 += 88;
    }

    while (v5++ < v2);
  }

  if (debug_auto_trace == 1)
  {
    result = *v1;
    if (*v1)
    {
      result = (*(v1 + 8))(result, 10, v1);
    }
  }

  if (debug_auto_trace_uninitialized_testing == 1)
  {

    return checkCurves(v1, 10);
  }

  return result;
}

uint64_t findSubdividedCurves(uint64_t a1)
{
  v2 = *(a1 + 252);
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      if (*(*(a1 + 240) + 88 * v3))
      {
        result = makeCurve(a1, v3, 0);
        if (!result)
        {
          return result;
        }

        v5 = v3 - v2;
        v2 = *(a1 + 252);
        LODWORD(v3) = v5 + v2;
      }

      v3 = (v3 + 1);
    }

    while (v3 < v2);
    if (v2 >= 1)
    {
      v6 = 0;
      do
      {
        v7 = *(a1 + 240) + 88 * v6;
        if (*v7)
        {
          v8 = v6 + 1;
        }

        else
        {
          *(v7 + 28) = *(v7 + 12);
          v8 = v6 + 1;
          v9 = *(a1 + 252);
          LODWORD(v10) = v6 + 1;
          v11 = v6 + 1 - v9;
          if (v6 + 1 >= v9)
          {
            LODWORD(v10) = v6 + 1 - v9;
            if (v11 >= v9)
            {
              LODWORD(v10) = v6 + 1;
              if (v9)
              {
                v10 = v11 % v9;
              }
            }
          }

          *(*(a1 + 240) + 88 * v6 + 64) = *(*(a1 + 240) + 88 * v10 + 12);
          v2 = *(a1 + 252);
        }

        v6 = v8;
      }

      while (v8 < v2);
    }
  }

  if (debug_auto_trace == 1 && *a1)
  {
    (*(a1 + 8))(*a1, 11, a1);
  }

  if (debug_auto_trace_uninitialized_testing == 1)
  {
    checkCurves(a1, 11);
  }

  return 1;
}

void convertToPaths(uint64_t a1)
{
  if (*(a1 + 252))
  {
    v2 = *(a1 + 240);
    m = CGAffineTransformIdentity;
    CGPathMoveToPoint(*(a1 + 48), &m, *(v2 + 12), *(v2 + 16));
    LODWORD(v3) = *(a1 + 252);
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = 0;
      v6 = 1;
      do
      {
        LODWORD(v7) = ++v5;
        if (v6 >= v3)
        {
          v7 = v6 - v3;
          if (v7 >= v3)
          {
            v7 %= v3;
          }
        }

        v8 = *(a1 + 240);
        v9 = v8 + 88 * v7;
        v10 = *(v8 + v4);
        if (v10 == 1)
        {
          CGPathAddCurveToPoint(*(a1 + 48), &m, *(v8 + v4 + 28), *(v8 + v4 + 32), *(v8 + v4 + 64), *(v8 + v4 + 68), *(v9 + 12), *(v9 + 16));
        }

        else if (!v10)
        {
          CGPathAddLineToPoint(*(a1 + 48), &m, *(v9 + 12), *(v9 + 16));
        }

        v3 = *(a1 + 252);
        v4 += 88;
      }

      while (v6++ < v3);
    }

    CGPathCloseSubpath(*(a1 + 48));
    if (debug_auto_trace == 1)
    {
      if (*a1)
      {
        (*(a1 + 8))(*a1, 12, a1);
      }
    }
  }
}

uint64_t makeCurve(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *(a1 + 240);
  v7 = v6 + 88 * a2;
  LODWORD(v8) = a2 + 1;
  v9 = a2 + 1;
  v10 = *(a1 + 252);
  if (a2 + 1 >= v10)
  {
    v8 = v8 - v10;
    if (v8 >= v10)
    {
      LODWORD(v8) = (v9 - v10) % v10;
    }
  }

  else if (a2 <= -2)
  {
    v8 = v10 + v9;
    if (v10 + v9 < 0)
    {
      v8 = v8 % v10 + v10;
      if (!v10)
      {
        LODWORD(v8) = a2 + 1;
      }
    }
  }

  v12 = *(v7 + 20);
  v11 = *(v7 + 24);
  v13 = *(v7 + 56);
  v14 = *(v7 + 60);
  v15 = (v12 * v14) - (v11 * v13);
  if (v15 == 0.0)
  {
    *v7 = 0;
    return 1;
  }

  v139 = a2 + 1;
  v140 = (a1 + 240);
  v17 = *(a1 + 128);
  v18 = *(v17 + 1);
  v19 = *v17;
  v20 = v6 + 88 * v8;
  v21 = *(v7 + 8);
  v22 = *(v7 + 52);
  if (v21 + 1 >= v19)
  {
    v23 = *v17;
  }

  else
  {
    v23 = 0;
  }

  v24 = v21 + 1 - v23;
  v25 = 0.0;
  if (v24 != v22)
  {
    v26 = *(a1 + 144);
    v27 = *(v26 + 4 * v21);
    do
    {
      v28 = *(v26 + 4 * v24);
      v25 = v25 + ((v28 - v27) - rintf(v28 - v27));
      v29 = v24 + 1;
      if (v29 >= v19)
      {
        v30 = v19;
      }

      else
      {
        v30 = 0;
      }

      v24 = v29 - v30;
      v27 = v28;
    }

    while (v24 != v22);
  }

  v31 = v25;
  v32 = *(v7 + 12);
  v33 = *(v7 + 16);
  v34 = *(v20 + 12);
  v35 = *(v20 + 16);
  v168[0] = 0;
  v141 = v31;
  v36 = *(v7 + 84);
  if (fabsf(v31) > 0.25 && a3 <= 19 && v36 >= 2)
  {
    if (*(a1 + 20) == 1)
    {
      printf(" -- subdividing curve %d-%d -- turn angle %.4f (limit %.4f)\n");
    }

    goto LABEL_85;
  }

  v39 = v34 - v32;
  v40 = v35 - v33;
  v41 = v36 / 4;
  if (v36 / 4 <= 1)
  {
    v41 = 1;
  }

  LODWORD(v42) = 3 * v36 / 4;
  if (v42 >= v36)
  {
    v42 = (v36 - 1);
  }

  else
  {
    v42 = v42;
  }

  v43 = v33;
  v153 = v32;
  v154 = v33;
  if (v41 >= v42)
  {
    v151 = -v13;
    v152 = -v14;
LABEL_65:
    v65 = sqrtf((v40 * v40) + (v39 * v39));
    v142 = v65 / 3.0;
    v143 = v65 / 3.0;
    goto LABEL_66;
  }

  v133 = v35 - v33;
  v134 = v34 - v32;
  v135 = *(v7 + 84);
  v137 = a3;
  v145 = (v33 + v35) * 0.5;
  v146 = (v32 + v34) * 0.5;
  v151 = -v13;
  v152 = -v14;
  v44 = v42 - v41;
  v45 = v21 + v41;
  v46 = v45 + v19;
  v142 = 0.0;
  v47 = -1;
  v155 = *"";
  v144 = 1.0 / v15;
  v143 = 0.0;
  v149 = v12;
  v150 = v11;
  v147 = v14;
  v148 = v13;
  do
  {
    if (v45 >= v19)
    {
      if (v45 - v19 >= v19)
      {
        LODWORD(v48) = v45;
      }

      else
      {
        LODWORD(v48) = v45 - v19;
      }

      if (v45 - v19 >= v19 && v19)
      {
        v48 = (v45 - v19) % v19;
      }
    }

    else
    {
      LODWORD(v48) = v45;
      if (v45 < 0)
      {
        LODWORD(v48) = v46 < 0 ? v45 : v46;
        if (v46 < 0 && v19)
        {
          v48 = v46 % v19 + v19;
        }
      }
    }

    v49 = (v18 + 8 * v48);
    v50 = (*v49 - v146) * 2.6667;
    v51 = (v49[1] - v145) * -2.6667;
    v52 = (v12 * v51) + (v50 * v11);
    v53 = v144 * ((v13 * v51) + (v50 * v14));
    v54 = v153 + (v12 * v53);
    v156 = v144 * v52;
    v158 = v53;
    v55 = v154 + (v11 * v53);
    v56 = v34 + (v151 * (v144 * v52));
    v57 = v35 + (v152 * (v144 * v52));
    v58 = evaluatePointOnCurve(v153, v154, v54, v55, v56, v57, v34, v35, 0.25);
    v160 = v59;
    v162 = v58;
    v60 = evaluatePointOnCurve(v153, v154, v54, v55, v56, v57, v34, v35, 0.75);
    v62 = v61;
    v63 = squaredDistanceFromCurve(v19, v18, v21, v48, v162, v160);
    v64 = v63 + squaredDistanceFromCurve(v19, v18, v48, v22, v60, v62);
    if (v64 >= v155 || v158 < 0.0)
    {
      v12 = v149;
      v11 = v150;
      v14 = v147;
      v13 = v148;
    }

    else
    {
      v12 = v149;
      v11 = v150;
      v14 = v147;
      v13 = v148;
      if (v156 >= 0.0)
      {
        v142 = v156;
        v143 = v158;
        v155 = v64;
        v47 = v48;
      }
    }

    ++v46;
    ++v45;
    --v44;
  }

  while (v44);
  if (v47 == -1)
  {
    v4 = a2;
    a3 = v137;
    v5 = a1;
    v32 = v153;
    v43 = v154;
    v36 = v135;
    v40 = v133;
    v39 = v134;
    goto LABEL_65;
  }

  v4 = a2;
  a3 = v137;
  v5 = a1;
  v32 = v153;
  v43 = v154;
  v36 = v135;
  v40 = v133;
  v39 = v134;
  if (v141 < 3.0 && v135 < 20)
  {
    goto LABEL_65;
  }

  v65 = sqrtf((v133 * v133) + (v134 * v134));
LABEL_66:
  if (a3 > 19 || (v66 = 1.0 / fmaxf(v65, 0.001), v67 = v39 * v66, v68 = (v11 * (v40 * v66)) + (v12 * (v39 * v66)), v69 = ((v14 * (v40 * v66)) + (v13 * v67)) * v142, v32 = v153, v43 = v154, (v69 + (v143 * v68)) <= v65))
  {
    v99 = v32 + (v12 * v143);
    v100 = v43 + (v11 * v143);
    v167 = 0;
    goodnessOfFit(v5, v21, v36, &v167 + 1, &v167, 0.0, 0.0, v99, v100, v34 + (v151 * v142), v35 + (v152 * v142));
    if (*(&v167 + 1) <= *(v5 + 36) || a3 > 19 || *&v167 <= *(v5 + 40))
    {
      *(v7 + 28) = v99;
      *(v7 + 32) = v100;
      result = 1;
      *(v7 + 64) = v34 + (v151 * v142);
      *(v7 + 68) = v35 + (v152 * v142);
      return result;
    }

    if (*(v5 + 20) == 1)
    {
      printf(" -- subdividing curve %d-%d -- point too far from curve %.4f (limit %.4f)\n");
    }
  }

  else
  {
    if (*(v5 + 20) == 1)
    {
      printf(" -- subdividing curve %d-%d -- wings go too far %.4f and %.4f (limit %.4f)\n", v21, v22, (v68 * v143), v69, v65);
      v32 = v153;
      v43 = v154;
      v36 = *(v7 + 84);
    }

    if (v36 <= 29)
    {
      v70 = v65 / 3.0;
      v71 = v34;
      v72 = v32 + (v12 * (v65 / 3.0));
      v73 = v35;
      v74 = v43 + (v11 * v70);
      v75 = v71 + (v151 * v70);
      v76 = v73 + (v152 * v70);
      v77 = v43;
      v78 = v32;
      v79 = evaluatePointOnCurve(v32, v43, v72, v74, v75, v76, v71, v73, 0.25);
      v161 = v80;
      v163 = v79;
      v81 = evaluatePointOnCurve(v78, v77, v72, v74, v75, v76, v71, v73, 0.5);
      v157 = v82;
      v159 = v81;
      v83 = evaluatePointOnCurve(v78, v77, v72, v74, v75, v76, v71, v73, 0.75);
      v85 = v84;
      v86 = *(v7 + 8);
      v87 = *(v7 + 52);
      v88 = *(v5 + 128);
      v89 = *v88;
      v90 = a3;
      v91 = *(v88 + 8);
      v92 = squaredDistanceFromCurve(*v88, v91, v86, v87, v163, v161);
      v93 = squaredDistanceFromCurve(v89, v91, v86, v87, v159, v157);
      v94 = v91;
      a3 = v90;
      v95 = squaredDistanceFromCurve(v89, v94, v86, v87, v83, v85);
      v96 = *(v5 + 40) * *(v5 + 40);
      v97 = v92 < v96 && v93 < v96;
      if (v97 && v95 < v96)
      {
        *(v7 + 28) = v72;
        *(v7 + 32) = v74;
        result = 1;
        *(v7 + 64) = v75;
        *(v7 + 68) = v76;
        return result;
      }
    }
  }

LABEL_85:
  v101 = v5;
  v102 = *(v7 + 84);
  v103 = *(v7 + 8);
  v104 = v103 + v102 / 2;
  v105 = v104;
  if (v104 >= v19)
  {
    v107 = v104 - v19;
    LODWORD(v106) = v105 - v19;
    if (v105 - v19 >= v19)
    {
      LODWORD(v106) = v105;
      if (v19)
      {
        v106 = v107 % v19;
      }
    }
  }

  else if (v104 < 0)
  {
    v108 = v104 + v19;
    LODWORD(v106) = v105 + v19;
    if (v105 + v19 < 0)
    {
      LODWORD(v106) = v105;
      if (v19)
      {
        v106 = v108 % v19 + v19;
      }
    }
  }

  else
  {
    LODWORD(v106) = v103 + v102 / 2;
  }

  if (v103 == v106 || *(v7 + 52) == v106)
  {
    return 1;
  }

  result = newCurveFromList(v140);
  if (result)
  {
    v109 = v102 / 2;
    v110 = v102 - v102 / 2;
    v111 = *(v101 + 240) + 88 * v4;
    memmove((v111 + 88), v111, 88 * (*(v101 + 252) + ~v4));
    v112 = *(v101 + 240) + 88 * v4;
    *(v112 + 48) = -1;
    *(v112 + 52) = v106;
    *(v112 + 84) = v109;
    *(v112 + 92) = -1;
    *(v112 + 96) = v106;
    *(v112 + 100) = *(v18 + 8 * v106);
    *(v112 + 172) = v110;
    if (v109 >= 6)
    {
      v113 = 6;
    }

    else
    {
      v113 = v109;
    }

    v114 = v106 - v113;
    v115 = v106 - v113;
    v116 = v4;
    if (v114 >= v19)
    {
      v118 = v114 - v19;
      v117 = v115 - v19;
      if (v115 - v19 >= v19)
      {
        v117 = v115;
        if (v19)
        {
          v117 = v118 % v19;
        }
      }
    }

    else if ((v115 & 0x80000000) != 0)
    {
      v119 = v114 + v19;
      v117 = v115 + v19;
      if (v115 + v19 < 0)
      {
        v117 = v115;
        if (v19)
        {
          v117 = v119 % v19 + v19;
        }
      }
    }

    else
    {
      v117 = v114;
    }

    if (v110 >= 7)
    {
      v120 = 7;
    }

    else
    {
      v120 = v110;
    }

    LODWORD(v121) = v120 + v106;
    v122 = v121;
    if (v121 >= v19)
    {
      LODWORD(v121) = v121 - v19;
      if (v122 - v19 >= v19)
      {
        LODWORD(v121) = v122;
        if (v19)
        {
          v121 = (v122 - v19) % v19;
        }
      }
    }

    else if ((v121 & 0x80000000) != 0)
    {
      LODWORD(v121) = v121 + v19;
      if (v122 + v19 < 0)
      {
        LODWORD(v121) = v122;
        if (v19)
        {
          v121 = (v122 + v19) % v19 + v19;
        }
      }
    }

    v166 = 0;
    memset(v164, 0, sizeof(v164));
    v123 = v121 - v117;
    v165 = 0;
    v124 = v19 & ((v121 - v117) >> 31);
    computeATRRecord(v164, *(v101 + 128), v117, v124 + v121 - v117);
    ATRLinearRegression(v164, v168, &v166 + 1, &v166);
    v125 = v168[0];
    v126 = v166;
    ATRAngleOfLine(*&v166, **(v101 + 128), *(*(v101 + 128) + 8), v117, (v124 + v123), v168[0]);
    v128 = __sincos_stret((v127 * 6.2832));
    cosval = v128.__cosval;
    sinval = v128.__sinval;
    *(v112 + 108) = cosval;
    *(v112 + 112) = sinval;
    *(v112 + 124) = v125;
    v131 = HIDWORD(v166);
    *(v112 + 128) = HIDWORD(v166);
    *(v112 + 132) = v126;
    *(v112 + 56) = *(v112 + 108);
    *(v112 + 72) = v125;
    *(v112 + 76) = v131;
    *(v112 + 80) = v126;
    Curve = makeCurve(v101, v139, a3 + 1);
    return makeCurve(v101, v116, a3 + 1) & Curve;
  }

  return result;
}

uint64_t checkCurves(uint64_t result, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(result + 252) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = *(result + 240);
    do
    {
      switch(a2)
      {
        case 10:
          strcpy(v9, "compute points");
          break;
        case 9:
          v6 = "compute curve tangents";
LABEL_10:
          *v9 = *v6;
          *&v9[15] = *(v6 + 15);
          break;
        case 8:
          strcpy(v9, "extract curve records");
          break;
        default:
          v6 = "find subdivided curves";
          goto LABEL_10;
      }

      if (*v5 == -419)
      {
        strcpy(v8, "curve::type is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (*(v5 + 4) == -419)
      {
        strcpy(v8, "curve::startIPIndex is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (*(v5 + 8) == -419)
      {
        strcpy(v8, "curve::startIndex is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (a2 >= 10 && *(v5 + 12) == 1.379e-27)
      {
        strcpy(v8, "curve::startPoint.x is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (a2 > 9 && *(v5 + 16) == 1.379e-27)
      {
        strcpy(v8, "curve::startPoint.y is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (a2 >= 9 && *(v5 + 20) == 1.379e-27)
      {
        strcpy(v8, "curve::startTangent.x is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (a2 >= 9 && *(v5 + 24) == 1.379e-27)
      {
        strcpy(v8, "curve::startTangent.y is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (a2 >= 11 && *(v5 + 28) == 1.379e-27)
      {
        strcpy(v8, "curve::startWing.x is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (a2 >= 11 && *(v5 + 32) == 1.379e-27)
      {
        strcpy(v8, "curve::startWing.y is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (a2 >= 9 && *(v5 + 36) == 55)
      {
        strcpy(v8, "curve::startXMajor is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (a2 >= 9 && *(v5 + 40) == 1.379e-27)
      {
        strcpy(v8, "curve::startA is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (a2 >= 9 && *(v5 + 44) == 1.379e-27)
      {
        strcpy(v8, "curve::startB is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (*(v5 + 48) == -419)
      {
        strcpy(v8, "curve::endIPIndex is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (*(v5 + 52) == -419)
      {
        strcpy(v8, "curve::endIndex is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (a2 >= 9 && *(v5 + 56) == 1.379e-27)
      {
        strcpy(v8, "curve::endTangent.x is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (a2 >= 9 && *(v5 + 60) == 1.379e-27)
      {
        strcpy(v8, "curve::endTangent.y is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (a2 >= 11 && *(v5 + 64) == 1.379e-27)
      {
        strcpy(v8, "curve::endWing.x is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (a2 >= 11 && *(v5 + 68) == 1.379e-27)
      {
        strcpy(v8, "curve::endWing.y is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (a2 >= 9 && *(v5 + 72) == 55)
      {
        strcpy(v8, "curve::endXMajor is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (a2 >= 9 && *(v5 + 76) == 1.379e-27)
      {
        strcpy(v8, "curve::endA is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (a2 >= 9 && *(v5 + 80) == 1.379e-27)
      {
        strcpy(v8, "curve::endB is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      if (*(v5 + 84) == -419)
      {
        strcpy(v8, "curve::length is uninitialized");
        __sprintf_chk(v7, 0, 0x100uLL, "%s in %s", v8, v9);
        result = printf(" ***** %s in autoTrace\n", v7);
      }

      ++v4;
      v5 += 88;
    }

    while (v4 < *(v3 + 252));
  }

  return result;
}

char *newCurveFromList(char **a1)
{
  v2 = *(a1 + 3);
  v3 = *(a1 + 2);
  if (v2 >= v3)
  {
    v5 = malloc_type_malloc(88 * v3 + 8800, 0x1000040A005BA8DuLL);
    if (!v5)
    {
      printf(" ***** %s in autoTrace\n", "could not extend curves list");
      return 0;
    }

    v4 = v5;
    memmove(v5, *a1, 88 * *(a1 + 2));
    *(a1 + 2) += 100;
    free(*a1);
    *a1 = v4;
    v2 = *(a1 + 3);
  }

  else
  {
    v4 = *a1;
  }

  result = &v4[88 * v2];
  *(result + 10) = 0;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  *(result + 1) = 0u;
  *(result + 2) = 0u;
  *result = 0u;
  if (debug_auto_trace_uninitialized_testing == 1)
  {
    v7 = vdup_n_s32(0xFFFFFE5D);
    *result = v7;
    *(result + 2) = -419;
    v8 = vdupq_n_s32(0x12DA82E3u);
    *(result + 12) = v8;
    *(result + 28) = v8.i64[0];
    result[36] = 1;
    *(result + 5) = v8.i64[0];
    *(result + 6) = v7;
    *(result + 56) = v8;
    result[72] = 1;
    *(result + 76) = v8.i64[0];
    *(result + 21) = -419;
  }

  ++*(a1 + 3);
  return result;
}

float evaluatePointOnCurve(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9)
{
  v11 = a1 == a3 && a2 == a4 && a5 == a7 && a6 == a8;
  v12 = a1 + (((((((a7 + ((a5 - a3) * -3.0)) - a1) * a9) + (((a1 + (a3 * -2.0)) + a5) * 3.0)) * a9) + ((a3 - a1) * 3.0)) * a9);
  result = a1 + ((a7 - a1) * a9);
  if (!v11)
  {
    return v12;
  }

  return result;
}

float squaredDistanceFromCurve(int a1, uint64_t a2, int a3, int a4, float a5, float a6)
{
  v6 = ((a6 - *(a2 + 8 * a3 + 4)) * (a6 - *(a2 + 8 * a3 + 4))) + ((a5 - *(a2 + 8 * a3)) * (a5 - *(a2 + 8 * a3)));
  for (i = a3 + 1; ; i = v9 + 1)
  {
    v8 = i >= a1 ? a1 : 0;
    v9 = i - v8;
    if (v9 == a4)
    {
      break;
    }

    v10 = (a2 + 8 * v9);
    v11 = (a6 - v10[1]) * (a6 - v10[1]);
    if ((v11 + ((a5 - *v10) * (a5 - *v10))) < v6)
    {
      v6 = v11 + ((a5 - *v10) * (a5 - *v10));
    }
  }

  return v6;
}

void goodnessOfFit(uint64_t a1, uint64_t a2, int a3, float *a4, float *a5, double a6, double a7, float a8, float a9, float a10, float a11)
{
  v14 = *&a7;
  v16 = *(a1 + 128);
  v17 = *(v16 + 1);
  v18 = *v16;
  v19 = (v17 + 8 * a2);
  LODWORD(v20) = a3 + a2;
  v21 = a3 + a2;
  if (a3 + a2 >= v18)
  {
    v22 = v20 - v18;
    LODWORD(v20) = v20 - v18;
    if (v21 - v18 >= v18)
    {
      LODWORD(v20) = a3 + a2;
      if (v18)
      {
        v20 = v22 % v18;
      }
    }
  }

  else if ((v21 & 0x80000000) != 0)
  {
    v23 = v18 + v20;
    LODWORD(v20) = v18 + v20;
    if (v18 + v21 < 0)
    {
      LODWORD(v20) = a3 + a2;
      if (v18)
      {
        v20 = v23 % v18 + v18;
      }
    }
  }

  v25 = *v19;
  v24 = v19[1];
  v26 = v17 + 8 * v20;
  v27 = *v26;
  LODWORD(a7) = *(v26 + 4);
  if (a3 < 3)
  {
    goto LABEL_28;
  }

  v28 = a8 - v25;
  v29 = a9 - v24;
  v30 = *&a7 - a11;
  v31 = ((v25 + ((a8 + a10) * 3.0)) + v27) * 0.125;
  v32 = ((v24 + ((a9 + a11) * 3.0)) + *&a7) * 0.125;
  v33 = ((a8 + (v27 - a10)) - v25) * 0.25;
  v34 = ((a9 + (*&a7 - a11)) - v24) * 0.25;
  v35 = a2 + 1 >= v18 ? v18 : 0;
  v36 = a2 + 1 - v35;
  v37 = (v17 + 8 * v36);
  v39 = *v37;
  v38 = v37[1];
  v40 = a3 - 2;
  LODWORD(v41) = -1;
  v42 = 1.0e12;
  do
  {
    if ((v36 + 1) >= v18)
    {
      v43 = v18;
    }

    else
    {
      v43 = 0;
    }

    v44 = v36 + 1 - v43;
    v45 = (v17 + 8 * v44);
    v46 = v45[1];
    v47 = *v45 - v39;
    v48 = ((v46 - v38) * (v46 - v38)) + (v47 * v47);
    v49 = fabsf(((((v46 - v38) * v31) - (v47 * v32)) + (*v45 * v38)) - (v46 * v39)) / sqrtf(v48);
    v50 = sqrtf(((v32 - v38) * (v32 - v38)) + ((v31 - v39) * (v31 - v39)));
    if (v48 != 0.0)
    {
      v50 = v49;
    }

    if (v50 >= v42)
    {
      v41 = v41;
    }

    else
    {
      v41 = v36;
    }

    if (v50 < v42)
    {
      v42 = v50;
    }

    v38 = v45[1];
    v39 = *v45;
    v36 = v44;
    --v40;
  }

  while (v40);
  if (v41 == -1)
  {
LABEL_28:
    v58 = sqrtf(((*&a7 - v24) * (*&a7 - v24)) + ((v27 - v25) * (v27 - v25)));
    v59 = fmaxf(*&a6, v14);
  }

  else
  {
    v60 = 0;
    v61 = 0;
    v51 = (v18 & ((v41 - a2) >> 31)) + v41 - a2;
    v52 = v31 + (v33 * 0.5);
    v53 = v32 + (v34 * 0.5);
    v54 = v27 + ((v27 - a10) * -0.5);
    v55 = *&a7 + (v30 * -0.5);
    *&a7 = v42;
    goodnessOfFit(a1, a2, v51, &v61 + 1, &v61, a6, a7, v25 + (v28 * 0.5), v24 + (v29 * 0.5), v31 + (v33 * -0.5), v32 + (v34 * -0.5));
    *&v56 = v42;
    *&v57 = v14;
    goodnessOfFit(a1, v41, a3 - v51, &v60 + 1, &v60, v56, v57, v52, v53, v54, v55);
    v58 = *(&v61 + 1) + *(&v60 + 1);
    v59 = fmaxf(*&v61, *&v60);
  }

  *a4 = v58;
  *a5 = v59;
}

void findTangentBackwardsFrom(uint64_t a1, int a2, uint64_t a3, float *a4, float *a5, char *a6, float *a7, float *a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a3;
  v106[0] = 0;
  v105 = 0;
  v104 = 0;
  memset(v103, 0, sizeof(v103));
  v13 = *(a1 + 128);
  v14 = *(v13 + 1);
  v15 = *v13;
  if (a2 <= 0)
  {
    v16 = *v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = a2 + v16 - 1;
  v18 = *(v14 + 8 * a2);
  v19 = vsub_f32(*(v14 + 8 * v17), v18);
  v20 = fabsf(*v19.i32);
  v21 = *&v19.i32[1];
  v22 = fabsf(*&v19.i32[1]);
  if (v20 <= (v22 * 4.0))
  {
    if (v22 <= (v20 * 4.0))
    {
      v102 = a7;
      goto LABEL_37;
    }

    v27 = *v19.i32;
    v23 = a3;
    if (v17 != a3)
    {
      LODWORD(v23) = a2 + v16 - 1;
      do
      {
        if (v23 <= 0)
        {
          v28 = *v13;
        }

        else
        {
          v28 = 0;
        }

        v23 = (v23 + v28 - 1);
        v29 = *(v14 + 8 * v23);
        v20 = vabds_f32(v29, v18.f32[0]);
      }

      while (v20 <= 1.0 && v23 != a3);
      v27 = v29 - v18.f32[0];
    }

    if (v20 <= 1.0)
    {
      v102 = a7;
      *v19.i32 = v27;
      goto LABEL_37;
    }

LABEL_31:
    v31 = a2 - v23;
    if (a2 - v23 >= -1)
    {
      v32 = 0;
    }

    else
    {
      v32 = *v13;
    }

    v33 = v31 + v32;
    v34 = a4;
    v35 = a6;
    v36 = a5;
    computeATRRecord(v103, v13, v23, v31 + v32 + 1);
    ATRLinearRegression(v103, v106, &v105 + 1, &v105);
    v37 = v106[0];
    v38 = *&v105;
    ATRAngleOfLine(*&v105, **(a1 + 128), *(*(a1 + 128) + 8), v23, (v33 + 1), v106[0]);
    v40 = __sincos_stret((v39 * 6.2832));
    cosval = v40.__cosval;
    sinval = v40.__sinval;
    *v34 = cosval;
    *v36 = sinval;
    *v35 = v37;
    v43 = *(&v105 + 1);
    goto LABEL_119;
  }

  v23 = a3;
  if (v17 != a3)
  {
    LODWORD(v23) = a2 + v16 - 1;
    do
    {
      if (v23 <= 0)
      {
        v24 = *v13;
      }

      else
      {
        v24 = 0;
      }

      v23 = (v23 + v24 - 1);
      v25 = *(v14 + 8 * v23 + 4);
      v22 = vabds_f32(v25, v18.f32[1]);
    }

    while (v22 <= 1.0 && v23 != a3);
    v21 = v25 - v18.f32[1];
  }

  if (v22 > 1.0)
  {
    goto LABEL_31;
  }

  v102 = a7;
  *&v19.i32[1] = v21;
LABEL_37:
  v44 = (v15 & ((a2 - a3) >> 31)) + a2 - a3;
  if (v44 <= 10)
  {
    goto LABEL_60;
  }

  v45 = a2 - 10;
  v46 = a2 - 10;
  v99 = a4;
  v100 = a5;
  v101 = a6;
  v97 = v19;
  if (a2 - 10 >= v15)
  {
    v49 = v45 - v15;
    v48 = v46 - v15;
    if (v46 - v15 >= v15)
    {
      v48 = a2 - 10;
      if (v15)
      {
        v48 = v49 % v15;
      }
    }
  }

  else if (a2 > 9)
  {
    v48 = v45;
  }

  else
  {
    v47 = v15 + v45;
    v48 = v15 + v46;
    if (v15 + v46 < 0)
    {
      v48 = a2 - 10;
      if (v15)
      {
        v48 = v47 % v15 + v15;
      }
    }
  }

  computeATRRecord(v103, v13, v48, 10);
  ATRLinearRegression(v103, v106, &v105 + 1, &v105);
  v50 = v106[0];
  v43 = *(&v105 + 1);
  v38 = *&v105;
  v51 = ATRMaxDistanceFromLine(v103, v106[0], *(&v105 + 1), *&v105);
  ATRAngleOfLine(v38, **(a1 + 128), *(*(a1 + 128) + 8), v48, 10, v50);
  v53 = v52;
  v54 = straightLineDistanceDeltaToleranceAtAngle(v52);
  v8 = a8;
  a4 = v99;
  a5 = v100;
  a6 = v101;
  v19 = v97;
  if (v51 >= v54)
  {
    goto LABEL_60;
  }

  if (v44 < 0x15)
  {
    goto LABEL_59;
  }

  v55 = a2 - 20;
  v56 = a2 - 20;
  if (a2 - 20 >= v15)
  {
    v59 = v55 - v15;
    v58 = v56 - v15;
    if (v56 - v15 >= v15)
    {
      v58 = a2 - 20;
      if (v15)
      {
        v58 = v59 % v15;
      }
    }
  }

  else if (a2 > 19)
  {
    v58 = v55;
  }

  else
  {
    v57 = v15 + v55;
    v58 = v15 + v56;
    if (v15 + v56 < 0)
    {
      v58 = a2 - 20;
      if (v15)
      {
        v58 = v57 % v15 + v15;
      }
    }
  }

  computeATRRecord(v103, *(a1 + 128), v58, 20);
  ATRLinearRegression(v103, v106, &v105 + 1, &v105);
  v50 = v106[0];
  v43 = *(&v105 + 1);
  v38 = *&v105;
  v60 = ATRMaxDistanceFromLine(v103, v106[0], *(&v105 + 1), *&v105);
  ATRAngleOfLine(v38, **(a1 + 128), *(*(a1 + 128) + 8), v58, 20, v50);
  v53 = v61;
  v62 = straightLineDistanceDeltaToleranceAtAngle(v61);
  v8 = a8;
  a4 = v99;
  a5 = v100;
  a6 = v101;
  v19 = v97;
  if (v60 >= v62)
  {
LABEL_60:
    v66 = 0;
    v67 = 0;
    v68 = 0;
    do
    {
      v69 = a2 - v66;
      v70 = v69 - v15;
      if (v69 >= v15)
      {
        if (v70 >= v15)
        {
          v72 = v15 == 0;
        }

        else
        {
          LODWORD(v69) = a2 - v66 - v15;
          v72 = 1;
        }

        if (!v72)
        {
          v69 = v70 % v15;
        }
      }

      else if (v69 < 0)
      {
        v71 = v69 + v15;
        if (v69 + v15 < 0 == __OFADD__(v69, v15))
        {
          LODWORD(v69) = v69 + v15;
        }

        if (v71 < 0 && v15)
        {
          v69 = v71 % v15 + v15;
        }
      }

      if (v69 == v10)
      {
        v73 = 0;
      }

      else
      {
        v74 = 0;
        v75 = 8 * v69;
        v76 = v69;
        while (1)
        {
          v77 = v76 <= 0 ? v15 : 0;
          v76 = v76 + v77 - 1;
          v73 = v74 + 1;
          v19 = vsub_f32(*(v14 + 8 * v69), *(v14 + 8 * v76));
          v78 = fabsf(*v19.i32);
          v79 = fabsf(*&v19.i32[1]);
          if (v78 == 2.0 || v79 == 2.0)
          {
            break;
          }

          v82 = v79 != 1.0 && v78 != 1.0;
          v83 = v82 | v67;
          v67 |= v83 ^ 1;
          if (v83)
          {
            v84 = -1;
          }

          else
          {
            v84 = 0;
          }

          v68 = vbsl_s8(vdup_n_s32(v84), v68, v19);
          v74 = v73;
          if (v76 == v10)
          {
            goto LABEL_99;
          }
        }

        if (v76 != v10 && v74 < 4)
        {
          v88 = 1;
          goto LABEL_103;
        }
      }

LABEL_99:
      ++v66;
    }

    while (v66 != 3);
    if ((v67 & 1) == 0)
    {
      v86 = *(v14 + 8 * a2);
      v87 = vsub_f32(v86, *(v14 + 8 * v17));
      LODWORD(v69) = a2;
      v9 = v102;
      goto LABEL_104;
    }

    v88 = 0;
    v75 = 8 * v69;
LABEL_103:
    v9 = v102;
    v87 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v88), 0x1FuLL)), v19, v68);
    v86 = *(v14 + v75);
LABEL_104:
    v89 = 1.0 / fmaxf(sqrtf(vmuls_lane_f32(v87.f32[1], v87, 1) + (v87.f32[0] * v87.f32[0])), 0.001);
    v90 = v89 * v87.f32[0];
    v91 = vmuls_lane_f32(v89, v87, 1);
    if (v73 == 2)
    {
      if (v69 <= 0)
      {
        v92 = v15;
      }

      else
      {
        v92 = 0;
      }

      v86 = vmul_f32(vadd_f32(v86, *(v14 + 8 * (v69 + v92 - 1))), 0x3F0000003F000000);
    }

    v93 = fabsf(v90) <= fabsf(v91);
    v94 = v86.f32[0] - ((v90 / v91) * v86.f32[1]);
    v95 = v86.f32[1] - ((v91 / v90) * v86.f32[0]);
    v96 = !v93;
    if (v93)
    {
      v38 = v90 / v91;
    }

    else
    {
      v38 = v91 / v90;
    }

    *a4 = v90;
    if (v93)
    {
      v43 = v94;
    }

    else
    {
      v43 = v95;
    }

    *a5 = v91;
    *a6 = v96;
  }

  else
  {
LABEL_59:
    v9 = v102;
    v63 = __sincos_stret((v53 * 6.2832));
    v64 = v63.__cosval;
    *v99 = v64;
    v65 = v63.__sinval;
    *v100 = v65;
    *v101 = v50;
  }

LABEL_119:
  *v9 = v43;
  *v8 = v38;
}

float numericalCheckCurveEnd(float *a1)
{
  if (fabsf(a1[14]) == INFINITY || fabsf(a1[15]) == INFINITY)
  {
    printf(" ***** %s in autoTrace\n", "infinity tangent found");
  }

  if (fabsf(a1[19]) == INFINITY || fabsf(a1[20]) == INFINITY)
  {
    printf(" ***** %s in autoTrace\n", "infinity line equation found");
  }

  return a1[20];
}

float computeCurveStartTangentAtCorner(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = 0.0;
  v7 = 0;
  v6 = 0;
  findTangentForwardsFrom(a1, *(a2 + 8), *(a2 + 52), &v7, &v6, &v9, &v8, &v7 + 1);
  v3 = v6;
  *(a2 + 20) = v7;
  *(a2 + 24) = v3;
  *(a2 + 36) = v9;
  v5 = HIDWORD(v7);
  result = v8;
  *(a2 + 40) = v8;
  *(a2 + 44) = v5;
  return result;
}

float numericalCheckCurveStart(float *a1)
{
  if (fabsf(a1[5]) == INFINITY || fabsf(a1[6]) == INFINITY)
  {
    printf(" ***** %s in autoTrace\n", "infinity tangent found");
  }

  if (fabsf(a1[10]) == INFINITY || fabsf(a1[11]) == INFINITY)
  {
    printf(" ***** %s in autoTrace\n", "infinity line equation found");
  }

  return a1[11];
}

void findTangentForwardsFrom(uint64_t a1, uint64_t a2, int a3, float *a4, float *a5, BOOL *a6, float *a7, float *a8)
{
  v8 = a8;
  v9 = a7;
  v110[0] = 0;
  v108 = 0.0;
  v109 = 0.0;
  v107 = 0;
  memset(v106, 0, sizeof(v106));
  v14 = *(a1 + 128);
  v15 = *(v14 + 1);
  v16 = *v14;
  if (a2 + 1 >= v16)
  {
    v17 = *v14;
  }

  else
  {
    v17 = 0;
  }

  v18 = a2 + 1 - v17;
  v19 = (v15 + 8 * v18);
  v20 = (v15 + 8 * a2);
  v21 = v19->f32[0];
  v22 = v19->f32[1];
  v23 = v20->f32[0];
  v24 = v20->f32[1];
  v25 = vabds_f32(v19->f32[0], v20->f32[0]);
  v26 = vabds_f32(v22, v24);
  if (v25 <= (v26 * 4.0))
  {
    if (v26 <= (v25 * 4.0))
    {
      goto LABEL_58;
    }

    v32 = v21 - v23;
    v28 = a3;
    if ((v21 - v23) >= 0.0)
    {
      if (v18 != a3)
      {
        v28 = v18;
        do
        {
          v51 = v28 + 1;
          if (v51 >= v16)
          {
            v52 = *v14;
          }

          else
          {
            v52 = 0;
          }

          v28 = v51 - v52;
          v32 = *(v15 + 8 * v28) - v23;
        }

        while (v32 <= 1.0 && v28 != a3);
      }

      if (v32 > 1.0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v18 != a3)
      {
        v28 = v18;
        do
        {
          v33 = v28 + 1;
          if (v33 >= v16)
          {
            v34 = *v14;
          }

          else
          {
            v34 = 0;
          }

          v28 = v33 - v34;
          v32 = *(v15 + 8 * v28) - v23;
        }

        while (v32 >= -1.0 && v28 != a3);
      }

      if (v32 < -1.0)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    v27 = v22 - v24;
    v28 = a3;
    if ((v22 - v24) < 0.0)
    {
      if (v18 != a3)
      {
        v28 = v18;
        do
        {
          v29 = v28 + 1;
          if (v29 >= v16)
          {
            v30 = *v14;
          }

          else
          {
            v30 = 0;
          }

          v28 = v29 - v30;
          v27 = *(v15 + 8 * v28 + 4) - v24;
        }

        while (v27 >= -1.0 && v28 != a3);
      }

      if (v27 >= -1.0)
      {
        goto LABEL_58;
      }

LABEL_43:
      v39 = v28 - a2;
      if (v39 >= -1)
      {
        v40 = 0;
      }

      else
      {
        v40 = *v14;
      }

      v41 = v39 + v40;
      v42 = a4;
      v43 = a5;
      computeATRRecord(v106, v14, a2, v39 + v40 + 1);
      ATRLinearRegression(v106, v110, &v109, &v108);
      v44 = v110[0];
      v45 = v108;
      ATRAngleOfLine(v108, **(a1 + 128), *(*(a1 + 128) + 8), a2, (v41 + 1), v110[0]);
      v47 = __sincos_stret((v46 * 6.2832));
      cosval = v47.__cosval;
      *v42 = cosval;
      sinval = v47.__sinval;
      *v43 = sinval;
      *a6 = v44;
      v50 = v109;
      goto LABEL_119;
    }

    if (v18 != a3)
    {
      v28 = v18;
      do
      {
        v36 = v28 + 1;
        if (v36 >= v16)
        {
          v37 = *v14;
        }

        else
        {
          v37 = 0;
        }

        v28 = v36 - v37;
        v27 = *(v15 + 8 * v28 + 4) - v24;
      }

      while (v27 <= 1.0 && v28 != a3);
    }

    if (v27 > 1.0)
    {
      goto LABEL_43;
    }
  }

LABEL_58:
  v55 = (v16 & ((a3 - a2) >> 31)) + a3 - a2;
  if (v55 < 11 || (v102 = a4, v103 = a5, computeATRRecord(v106, v14, a2, 10), ATRLinearRegression(v106, v110, &v109, &v108), v56 = v110[0], v45 = v108, v50 = v109, v57 = ATRMaxDistanceFromLine(v106, v110[0], v109, v108), ATRAngleOfLine(v45, **(a1 + 128), *(*(a1 + 128) + 8), a2, 10, v56), v59 = v58, v60 = straightLineDistanceDeltaToleranceAtAngle(v58), a4 = v102, a5 = v103, v57 >= v60) || v55 >= 0x15 && (computeATRRecord(v106, *(a1 + 128), a2, 20), ATRLinearRegression(v106, v110, &v109, &v108), v56 = v110[0], v45 = v108, v50 = v109, v61 = ATRMaxDistanceFromLine(v106, v110[0], v109, v108), ATRAngleOfLine(v45, **(a1 + 128), *(*(a1 + 128) + 8), a2, 20, v56), v59 = v62, v63 = straightLineDistanceDeltaToleranceAtAngle(v62), a4 = v102, a5 = v103, v61 >= v63))
  {
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v8 = a8;
    v9 = a7;
    do
    {
      v70 = v67 + a2;
      v71 = v70 - v16;
      if (v70 >= v16)
      {
        if (v71 >= v16)
        {
          v73 = v16 == 0;
        }

        else
        {
          LODWORD(v70) = v67 + a2 - v16;
          v73 = 1;
        }

        if (!v73)
        {
          v70 = v71 % v16;
        }
      }

      else if (v70 < 0)
      {
        v72 = v70 + v16;
        if (v70 + v16 < 0 == __OFADD__(v70, v16))
        {
          LODWORD(v70) = v70 + v16;
        }

        if (v72 < 0 && v16)
        {
          v70 = v72 % v16 + v16;
        }
      }

      if (v70 == a3)
      {
        v74 = 0;
      }

      else
      {
        v75 = 0;
        v76 = 8 * v70;
        v77 = v70;
        while (1)
        {
          v78 = v77 + 1;
          v79 = v77 + 1 >= v16 ? v16 : 0;
          v77 = v78 - v79;
          v74 = v75 + 1;
          v80 = vsub_f32(*(v15 + 8 * v77), *(v15 + 8 * v70));
          v81 = fabsf(v80.f32[0]);
          v82 = fabsf(v80.f32[1]);
          if (v81 == 2.0 || v82 == 2.0)
          {
            break;
          }

          v85 = v82 != 1.0 && v81 != 1.0;
          v86 = v85 | v68;
          v68 |= v86 ^ 1;
          if (v86)
          {
            v87 = -1;
          }

          else
          {
            v87 = 0;
          }

          v69 = vbsl_s8(vdup_n_s32(v87), v69, v80);
          v75 = v74;
          if (v77 == a3)
          {
            goto LABEL_102;
          }
        }

        if (v77 != a3 && v75 < 4)
        {
          goto LABEL_105;
        }
      }

LABEL_102:
      ++v67;
    }

    while (v67 != 3);
    if (v68)
    {
      v76 = 8 * v70;
      v80 = v69;
LABEL_105:
      v89 = *(v15 + v76);
      goto LABEL_107;
    }

    v89 = *v20;
    v80 = vsub_f32(*v19, *v20);
    LODWORD(v70) = a2;
LABEL_107:
    v90 = vmul_n_f32(v80, 1.0 / fmaxf(sqrtf(COERCE_FLOAT(vmul_f32(v80, v80).i32[1]) + (v80.f32[0] * v80.f32[0])), 0.001));
    if (v74 == 2)
    {
      v91 = v70 + 1;
      if (v91 >= v16)
      {
        v92 = v16;
      }

      else
      {
        v92 = 0;
      }

      v89 = vmul_f32(vadd_f32(v89, *(v15 + 8 * (v91 - v92))), 0x3F0000003F000000);
    }

    v93 = vabs_f32(v90);
    v94 = vcgt_f32(v93, vdup_lane_s32(v93, 1)).u8[0];
    v95 = vdup_lane_s32(v90, 1);
    v96 = vdiv_f32(v90, v95).f32[0];
    v97 = v89.f32[0] - (v89.f32[1] * v96);
    v98 = vdiv_f32(v95, v90).f32[0];
    v99 = v89.f32[1] - (v89.f32[0] * v98);
    v100 = (v94 & 1) == 0;
    v101 = (v94 & 1) != 0;
    if (v100)
    {
      v45 = v96;
    }

    else
    {
      v45 = v98;
    }

    *a4 = v90.f32[0];
    if (v100)
    {
      v50 = v97;
    }

    else
    {
      v50 = v99;
    }

    *a5 = v90.f32[1];
    *a6 = v101;
  }

  else
  {
    v64 = __sincos_stret((v59 * 6.2832));
    v65 = v64.__cosval;
    *v102 = v65;
    v66 = v64.__sinval;
    *v103 = v66;
    *a6 = v56;
    v8 = a8;
    v9 = a7;
  }

LABEL_119:
  *v9 = v50;
  *v8 = v45;
}

uint64_t cutUpCurve(uint64_t a1, uint64_t a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t a6)
{
  v46 = *MEMORY[0x1E69E9840];
  v12 = **(a1 + 128);
  v13 = a4 - a2;
  if (a4 == a2)
  {
    if (*(a1 + 220) >= 2)
    {
      __sprintf_chk(v45, 0, 0x100uLL, "zero length curve in cutUpCurve at point index %d");
LABEL_8:
      printf(" ***** %s in autoTrace\n", v45);
      return 1;
    }
  }

  else if (v13 >= 0xFFFFFFFE && v12 >= 101 && *(a1 + 220) >= 3)
  {
    __sprintf_chk(v45, 0, 0x100uLL, "cutUpCurve with reversed point indexes %d and %d");
    goto LABEL_8;
  }

  *v45 = 0;
  if (v13 <= 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  computeAngleSumAndRange(a1, a2, a4, v45, &v44);
  if (fabsf(*v45) <= 0.16667)
  {
    return 1;
  }

  v15 = v14 + v13;
  v16 = *(a1 + 168);
  v17 = fabsf(*(v16 + 4 * a2));
  v18 = a2;
  LODWORD(v19) = a2;
  v20 = v17;
  do
  {
    v21 = fabsf(*(v16 + 4 * v18));
    v17 = v17 + v21;
    if (v21 <= v20)
    {
      v19 = v19;
    }

    else
    {
      v19 = v18;
    }

    if (v21 > v20)
    {
      v20 = v21;
    }

    v22 = v18 + 1;
    if (v22 >= v12)
    {
      v23 = v12;
    }

    else
    {
      v23 = 0;
    }

    v18 = v22 - v23;
  }

  while (v18 != a4);
  v24 = v20 / (v17 / v15);
  v25 = v24 < 2.2 || v19 == a2;
  if (v25 || v24 <= 1.9)
  {
    goto LABEL_28;
  }

  LODWORD(v41) = v19 - a2;
  v42 = v19 - a2;
  if (v19 - a2 >= v12)
  {
    LODWORD(v41) = v41 - v12;
    if (v42 - v12 >= v12)
    {
      LODWORD(v41) = v19 - a2;
      if (v12)
      {
        v41 = (v42 - v12) % v12;
      }
    }
  }

  else if ((v42 & 0x80000000) != 0)
  {
    LODWORD(v41) = v41 + v12;
    if (v42 + v12 < 0)
    {
      LODWORD(v41) = v19 - a2;
      if (v12)
      {
        v41 = (v42 + v12) % v12 + v12;
      }
    }
  }

  if (v15 / 5 >= v41 || 4 * v15 / 5 <= v41)
  {
LABEL_28:
    if (a2 + 1 >= v12)
    {
      v26 = v12;
    }

    else
    {
      v26 = 0;
    }

    v27 = a2 + 1 - v26;
    if (v27 == a4)
    {
      return 1;
    }

    v28 = a2;
    while (1)
    {
      v29 = v28;
      v28 = v27;
      v30 = *(a1 + 152);
      v31 = *(v30 + 4 * v29);
      v32 = *(v30 + 4 * v28) - rintf(*(v30 + 4 * v28) - v31);
      v33 = ((v29 == a2) & a3) != 0 ? 8 : 24;
      if (v31 <= 0.0 && v32 >= 0.0 || v31 >= 0.0 && v32 <= 0.0 || (v31 <= 0.25 ? (v34 = v32 < 0.25) : (v34 = 1), !v34 || (v31 >= 0.25 ? (v35 = v32 > 0.25) : (v35 = 1), !v35 || (v31 <= 0.5 ? (v36 = v32 < 0.5) : (v36 = 1), !v36 || (v31 >= 0.5 ? (v37 = v32 > 0.5) : (v37 = 1), !v37 || (v31 <= 0.75 ? (v38 = v32 < 0.75) : (v38 = 1), !v38 || v31 >= 0.75 && v32 <= 0.75 || v31 <= 1.0 && v32 >= 1.0 || v31 >= 1.0 && v32 <= 1.0))))))
      {
        result = addInterestingPointAtIndex(v29, v33, a6);
        if (!result)
        {
          break;
        }
      }

      if (v28 + 1 >= v12)
      {
        v40 = v12;
      }

      else
      {
        v40 = 0;
      }

      v27 = v28 + 1 - v40;
      if (v27 == a4)
      {
        return 1;
      }
    }
  }

  else
  {
    result = addInterestingPointAtIndex(v19, 16, a6);
    if (result)
    {
      result = addInterestingPointAtIndex(v19, 8, a6);
      if (result)
      {
        v43 = v19 == a4 ? a5 : 0;
        result = cutUpCurve(a1, a2, a3, v19, v43, a6);
        if (result)
        {
          return (cutUpCurve(a1, v19, 0, a4, a5, a6) & 1) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t indexOfNewInterestingPointAtPointIndex(int a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 0;
  v4 = *(a2 + 12);
  if (v4 < 1)
  {
    result = 0;
  }

  else
  {
    LODWORD(result) = 0;
    v6 = *(a2 + 12);
    do
    {
      v7 = (v6 + result) >> 1;
      v8 = *(*a2 + 8 * v7);
      if (v8 < a1)
      {
        result = v7 + 1;
      }

      else
      {
        result = result;
      }

      if (v8 >= a1)
      {
        v6 = v7;
      }
    }

    while (result < v6);
  }

  if (result < v4 && *(*a2 + 8 * result) == a1)
  {
    *a3 = 1;
  }

  else if (result == v4)
  {
    return 0;
  }

  else
  {
    return result;
  }

  return result;
}

uint64_t outputLineAtIndex(uint64_t a1, uint64_t a2, int a3, char **a4, _DWORD *a5, char *a6)
{
  v10 = *(a1 + 128);
  v11 = *v10;
  v139 = a3;
  v12 = a3 + a2;
  v13 = a3 + a2;
  if (a3 + a2 >= v11)
  {
    v15 = v12 - v11;
    LODWORD(v14) = v13 - v11;
    if (v13 - v11 >= v11)
    {
      LODWORD(v14) = a3 + a2;
      if (v11)
      {
        v14 = v15 % v11;
      }
    }
  }

  else if ((v13 & 0x80000000) != 0)
  {
    v16 = v11 + v12;
    LODWORD(v14) = v11 + v13;
    if (v11 + v13 < 0)
    {
      LODWORD(v14) = a3 + a2;
      if (v11)
      {
        v14 = v16 % v11 + v11;
      }
    }
  }

  else
  {
    LODWORD(v14) = a3 + a2;
  }

  v154 = 0;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0;
  v155[0] = 0;
  computeATRRecord(&v149, v10, a2, a3);
  ATRLinearRegression(&v149, v155, &v154 + 1, &v154);
  v17 = v155[0];
  v18 = *&v154;
  v19 = ATRMaxDistanceFromLine(&v149, v155[0], *(&v154 + 1), *&v154);
  ATRAngleOfLine(v18, **(a1 + 128), *(*(a1 + 128) + 8), a2, v139, v17);
  v21 = v20;
  v22 = *(*(a1 + 144) + 4 * a2) - *(*(a1 + 144) + 4 * v14);
  v23 = v22 - rintf(v22);
  v24 = straightLineDistanceDeltaToleranceAtAngle(v21);
  v25 = v24;
  if (v139 >= 51 && v19 > v24)
  {
    v130 = v23;
    v128 = a5;
    v129 = a6;
    v148 = 0;
    v146 = 0.0;
    v147 = 0.0;
    v136 = v149;
    v27 = v150;
    v26 = v151;
    v127 = a2;
    v131 = v14;
    v28 = v14;
    v30 = DWORD2(v149);
    v29 = HIDWORD(v149);
    while (1)
    {
      v31 = v139;
      v32 = *(v136 + 1);
      v33 = *v136;
      v34 = *&v32[2 * v30];
      v35 = v30 + 1;
      if (v30 + 1 >= *v136)
      {
        v36 = *v136;
      }

      else
      {
        v36 = 0;
      }

      v132 = v36;
      v133 = v30;
      v30 = v35 - v36;
      DWORD2(v149) = v35 - v36;
      v37 = &v32[2 * (v35 - v36)];
      v38 = v29 - 2;
      if (v29 >= 2)
      {
        v39 = 0;
        v40 = &v32[2 * v30];
        v41 = v30;
        do
        {
          v43 = *v40;
          v42 = v40[1];
          if (v39)
          {
            v44 = &v152 + 2;
            if (v43 < *(&v152 + 2) || (v44 = &v153, v43 > *&v153))
            {
              *v44 = v43;
            }

            v45 = &v152 + 3;
            if (v42 >= *(&v152 + 3))
            {
              v45 = &v153 + 1;
              if (v42 <= *(&v153 + 1))
              {
                goto LABEL_27;
              }
            }
          }

          else
          {
            *&v153 = *v40;
            *(&v152 + 2) = v43;
            v45 = &v152 + 3;
            *(&v153 + 1) = v42;
          }

          *v45 = v42;
LABEL_27:
          v46 = v41 + 1;
          v40 += 2;
          if (v41 + 1 < v33)
          {
            ++v41;
          }

          else
          {
            v41 = 0;
          }

          if (v46 >= v33)
          {
            v40 = v32;
          }

          --v39;
        }

        while (v29 + v39 != 1);
      }

      _Q0 = vcvtq_f64_f32(v34);
      v48 = vsubq_f64(v27, _Q0);
      v49 = vmlsq_f64(v26, _Q0, _Q0);
      _D2 = _Q0.f64[1];
      __asm { FMLS            D14, D2, V0.D[0] }

      v56 = a2 + 1 >= v11 ? v11 : 0;
      v57 = v38 + v30 >= v33 ? v33 : 0;
      _Q0 = vcvtq_f64_f32(*&v32[2 * (v38 + v30 - v57)]);
      v59 = vsubq_f64(v48, _Q0);
      v60 = vmlsq_f64(v49, _Q0, _Q0);
      v150 = v59;
      v151 = v60;
      _D1 = _Q0.f64[1];
      __asm { FMLS            D14, D1, V0.D[0] }

      *&v152 = _D14;
      HIDWORD(v149) = v29 - 2;
      if (v29 - 1 >= 2)
      {
        break;
      }

LABEL_56:
      v70 = (a2 + 1 - v56);
      if (v28 <= 0)
      {
        v71 = v11;
      }

      else
      {
        v71 = 0;
      }

      v28 = v28 + v71 - 1;
      v138 = v38;
      v140 = v59;
      v143 = v60;
      ATRLinearRegression(&v149, &v148, &v147, &v146);
      v72 = v148;
      v73 = v146;
      v74 = ATRMaxDistanceFromLine(&v149, v148, v147, v146);
      v139 -= 2;
      v75 = v72;
      a2 = v70;
      ATRAngleOfLine(v73, **(a1 + 128), *(*(a1 + 128) + 8), v70, v31 - 2, v75);
      v77 = v76;
      v78 = *(a1 + 144);
      v79 = *(v78 + 4 * v70);
      v80 = *(v78 + 4 * v28);
      v81 = straightLineDistanceDeltaToleranceAtAngle(v76);
      v82 = v138;
      v27 = v140;
      v26 = v143;
      if (v74 > v81)
      {
        v29 = v138;
        if (v31 > 0x34)
        {
          continue;
        }
      }

      v134 = v30;
      v135 = v11;
      v83 = v127;
      if (v31 >= 0x35)
      {
        v84 = a2;
        v85 = a2;
        v86 = (v79 - v80) - rintf(v79 - v80);
        v87 = v133 - v132 + 1;
        v88 = 1;
        do
        {
          v89 = v28;
          v25 = v81;
          v21 = v77;
          v19 = v74;
          v90 = v86;
          v91 = *v136;
          if (v82 + v87 < *v136)
          {
            v91 = 0;
          }

          v92 = *(*(v136 + 1) + 8 * (v82 + v87 - v91));
          HIDWORD(v149) = v82 + v88;
          v93 = vcvtq_f64_f32(v92);
          v94 = vaddq_f64(v27, v93);
          v95 = vmlaq_f64(v26, v93, v93);
          v150 = v94;
          v151 = v95;
          _D14 = _D14 + v93.f64[0] * v93.f64[1];
          *&v152 = _D14;
          v96 = &v152 + 1;
          if (v92.f32[0] < *(&v152 + 2) || (v96 = &v153, v92.f32[0] > *&v153))
          {
            *v96 = v92.i32[0];
          }

          v141 = v94;
          v144 = v95;
          v97 = &v152 + 12;
          v98 = v135;
          if (v92.f32[1] < *(&v152 + 3) || (v97 = &v153 + 4, v92.f32[1] > *(&v153 + 1)))
          {
            *v97 = v92.i32[1];
          }

          if (v28 + 1 < v135)
          {
            v98 = 0;
          }

          v28 = v28 + 1 - v98;
          ATRLinearRegression(&v149, &v148, &v147, &v146);
          v99 = v148;
          v100 = v146;
          v74 = ATRMaxDistanceFromLine(&v149, v148, v147, v146);
          ATRAngleOfLine(v100, **(a1 + 128), *(*(a1 + 128) + 8), v84, (v139 + v88), v99);
          v77 = v101;
          v102 = *(*(a1 + 144) + 4 * v85) - *(*(a1 + 144) + 4 * v28);
          v86 = v102 - rintf(v102);
          v81 = straightLineDistanceDeltaToleranceAtAngle(v77);
          ++v88;
          ++v87;
          v27 = v141;
          v26 = v144;
          v82 = v138;
        }

        while (v74 <= v81);
        v131 = v89;
        v103 = (v139 + v88);
        v104 = v138 + v88;
        v83 = v84;
        for (i = v135; ; i = v135)
        {
          v106 = *v136;
          if (v134 > 0)
          {
            v106 = 0;
          }

          v107 = v134 + v106 - 1;
          v108 = *(*(v136 + 1) + 8 * v107);
          *(&v149 + 1) = __PAIR64__(v104, v107);
          v109 = vcvtq_f64_f32(v108);
          v110 = vaddq_f64(v27, v109);
          v111 = vmlaq_f64(v26, v109, v109);
          v150 = v110;
          v151 = v111;
          _D14 = _D14 + v109.f64[0] * v109.f64[1];
          *&v152 = _D14;
          v112 = &v152 + 1;
          if (v108.f32[0] < *(&v152 + 2) || (v112 = &v153, v108.f32[0] > *&v153))
          {
            *v112 = v108.i32[0];
          }

          v134 = v107;
          v142 = v110;
          v145 = v111;
          v130 = v90;
          v113 = &v152 + 12;
          if (v108.f32[1] < *(&v152 + 3) || (v113 = &v153 + 4, v108.f32[1] > *(&v153 + 1)))
          {
            *v113 = v108.i32[1];
          }

          v114 = v83 <= 0 ? i : 0;
          v115 = (v83 + v114 - 1);
          ATRLinearRegression(&v149, &v148, &v147, &v146);
          v116 = v148;
          v117 = v146;
          v118 = ATRMaxDistanceFromLine(&v149, v148, v147, v146);
          ATRAngleOfLine(v117, **(a1 + 128), *(*(a1 + 128) + 8), v115, v103, v116);
          v120 = v119;
          v121 = *(a1 + 144);
          v122 = *(v121 + 4 * v115);
          v123 = *(v121 + 4 * v28);
          v124 = straightLineDistanceDeltaToleranceAtAngle(v119);
          v27 = v142;
          v26 = v145;
          if (v118 > v124)
          {
            break;
          }

          ++v104;
          v103 = (v103 + 1);
          v131 = v28;
          v90 = (v122 - v123) - rintf(v122 - v123);
          v19 = v118;
          v21 = v120;
          v25 = v124;
          v83 = v115;
        }
      }

      a5 = v128;
      a6 = v129;
      LODWORD(v14) = v131;
      v23 = v130;
      LODWORD(a2) = v83;
      goto LABEL_89;
    }

    v63 = 0;
    v64 = v30;
    while (1)
    {
      v66 = *v37;
      v65 = v37[1];
      if (v63)
      {
        v67 = &v152 + 2;
        if (v66 < *(&v152 + 2) || (v67 = &v153, v66 > *&v153))
        {
          *v67 = v66;
        }

        v68 = &v152 + 3;
        if (v65 >= *(&v152 + 3))
        {
          v68 = &v153 + 1;
          if (v65 <= *(&v153 + 1))
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
        *&v153 = *v37;
        *(&v152 + 2) = v66;
        v68 = &v152 + 3;
        *(&v153 + 1) = v65;
      }

      *v68 = v65;
LABEL_50:
      v69 = v64 + 1;
      v37 += 2;
      if (v64 + 1 < v33)
      {
        ++v64;
      }

      else
      {
        v64 = 0;
      }

      if (v69 >= v33)
      {
        v37 = v32;
      }

      --v63;
      if (v29 + v63 == 2)
      {
        goto LABEL_56;
      }
    }
  }

LABEL_89:
  if (v19 <= v25)
  {
    if (*(a1 + 17) == 1)
    {
      printf("   *****   line from %d to %d angle %.2f dist %.2f angle sum %.2f\n", a2, v14, v21, v19, v23);
    }

    result = appendInterestingPointAtIndex(a2, 2, a4);
    if (result && (result = appendInterestingPointAtIndex(v14, 4, a4)) != 0)
    {
      v125 = 0;
      *a5 = v14;
      result = 1;
    }

    else
    {
      v125 = 1;
    }
  }

  else
  {
    v125 = 0;
    result = 0;
  }

  *a6 = v125;
  return result;
}

uint64_t printIPIndex(uint64_t a1, int a2)
{
  v2 = (a1 + 8 * a2);
  printf("  %d ", a2);
  printIndexAndMask(*v2, v2[1]);

  return putchar(10);
}

uint64_t printIndexAndMask(int a1, char a2)
{
  result = printf("%3d ", a1);
  if ((a2 & 2) == 0)
  {
    if ((a2 & 4) == 0)
    {
      if ((a2 & 8) == 0)
      {
        if ((a2 & 0x10) == 0)
        {
          if ((a2 & 1) == 0)
          {
            if ((a2 & 0x20) == 0)
            {
              if ((a2 & 0x40) == 0)
              {
                return result;
              }

              goto LABEL_27;
            }

            goto LABEL_25;
          }

LABEL_23:
          result = printf("co");
          if ((a2 & 0x20) != 0)
          {
            goto LABEL_24;
          }

          goto LABEL_14;
        }

LABEL_21:
        result = printf("ce");
        if (a2)
        {
          goto LABEL_22;
        }

        goto LABEL_13;
      }

LABEL_19:
      result = printf("cb");
      if ((a2 & 0x10) != 0)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

LABEL_17:
    result = printf("se");
    if ((a2 & 8) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  result = printf("sb");
  if ((a2 & 4) != 0)
  {
    putchar(124);
    goto LABEL_17;
  }

  if ((a2 & 8) != 0)
  {
LABEL_18:
    putchar(124);
    goto LABEL_19;
  }

LABEL_11:
  if ((a2 & 0x10) != 0)
  {
LABEL_20:
    putchar(124);
    goto LABEL_21;
  }

LABEL_12:
  if (a2)
  {
LABEL_22:
    putchar(124);
    goto LABEL_23;
  }

LABEL_13:
  if ((a2 & 0x20) != 0)
  {
LABEL_24:
    putchar(124);
LABEL_25:
    result = putchar(105);
    if ((a2 & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_14:
  if ((a2 & 0x40) == 0)
  {
    return result;
  }

LABEL_26:
  putchar(124);
LABEL_27:

  return printf("ph");
}

uint64_t pairInsertError(uint64_t a1, int *a2, int a3, int a4, int *a5, int a6, int a7, uint64_t a8, const char *a9)
{
  putchar(10);
  printf("***** %s *****\n", a9);
  puts("  inserting:");
  printf("    ");
  printIndexAndMask(*a2, a2[1]);
  printf(" (insertion index %d merge: %d)\n", a3, a4);
  printf("    ");
  printIndexAndMask(*a5, a5[1]);
  printf(" (insertion index %d merge: %d)\n", a6, a7);
  puts("  into:");
  v17 = *(a8 + 12);
  v18 = a3 - 1;
  if (v17 >= a3)
  {
    if (a3 <= 0)
    {
      LODWORD(v19) = v17 + v18;
      if (v17 + v18 < 0)
      {
        LODWORD(v19) = a3 - 1;
        if (v17)
        {
          v19 = (v17 + v18) % v17 + v17;
        }
      }
    }

    else
    {
      LODWORD(v19) = a3 - 1;
    }
  }

  else
  {
    LODWORD(v19) = v18 - v17;
    if (v18 - v17 >= v17)
    {
      LODWORD(v19) = a3 - 1;
      if (v17)
      {
        v19 = (v18 - v17) % v17;
      }
    }
  }

  v20 = (a6 + 2);
  v21 = v20 < v17;
  if (v20 - v17 >= v17)
  {
    v22 = a6 + 2;
  }

  else
  {
    v21 = 1;
    v22 = v20 - v17;
  }

  if (v20 >= v17)
  {
    v23 = v22;
  }

  else
  {
    v23 = a6 + 2;
  }

  if (v17)
  {
    v24 = v21;
  }

  else
  {
    v24 = 1;
  }

  v25 = (v20 - v17) % v17;
  LODWORD(v26) = v19;
  do
  {
    printIPIndex(*(a1 + 208), v26);
    v27 = v26 + 1;
    v28 = v26 + 1;
    if (v26 + 1 >= v17)
    {
      v31 = v27 - v17;
      if (v28 - v17 >= v17)
      {
        LODWORD(v26) = v26 + 1;
      }

      else
      {
        LODWORD(v26) = v28 - v17;
      }

      if (v28 - v17 >= v17 && v17 != 0)
      {
        v26 = v31 % v17;
      }
    }

    else
    {
      v29 = v26 <= -2;
      LODWORD(v26) = v26 + 1;
      if (v29)
      {
        v30 = v27 + v17;
        LODWORD(v26) = v28 + v17 < 0 != __OFADD__(v28, v17) ? v28 : v28 + v17;
        if (v30 < 0)
        {
          v26 = v30 % v17 + v17;
        }
      }
    }

    v33 = v23;
    if ((v24 & 1) == 0)
    {
      v33 = v25;
    }
  }

  while (v26 != v33);
  v34 = *(a1 + 128);
  v35 = *v34;
  v36 = *(v34 + 1);
  v37 = *v36;
  v38 = v36[1];
  if (v35 >= 1)
  {
    v39 = v36 + 1;
    v40 = v35;
    v41 = v38;
    v42 = v37;
    while (1)
    {
      v44 = *(v39 - 1);
      v43 = *v39;
      v45 = v44 > v37 ? *(v39 - 1) : v37;
      if (v44 >= v42)
      {
        v37 = v45;
      }

      else
      {
        v42 = *(v39 - 1);
      }

      if (v43 < v41)
      {
        break;
      }

      if (v43 <= v38)
      {
        goto LABEL_50;
      }

LABEL_51:
      v39 += 2;
      v38 = v43;
      if (!--v40)
      {
        return printf("  polygon (%d points) from x [%.2f .. %.2f] y[%.2f .. %.2f]\n", v35, v42, v37, v41, v43);
      }
    }

    v41 = *v39;
LABEL_50:
    v43 = v38;
    goto LABEL_51;
  }

  v42 = *v36;
  v41 = v36[1];
  v43 = v41;
  return printf("  polygon (%d points) from x [%.2f .. %.2f] y[%.2f .. %.2f]\n", v35, v42, v37, v41, v43);
}

char *newOpenEnd(int *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 < v3)
  {
    v4 = *(a1 + 1);
LABEL_5:
    result = &v4[8 * v2];
    *a1 = v2 + 1;
    return result;
  }

  v5 = malloc_type_malloc(8 * v3 + 800, 0x100004090D0E795uLL);
  if (v5)
  {
    v4 = v5;
    memmove(v5, *(a1 + 1), 8 * a1[1]);
    a1[1] += 100;
    free(*(a1 + 1));
    *(a1 + 1) = v4;
    v2 = *a1;
    goto LABEL_5;
  }

  printf(" ***** %s in autoTrace\n", "could not extend extract open ends list");
  return 0;
}

void *CGPathCreateWithThresholdedImageDebug(CGImage *a1, int a2, unint64_t a3, unint64_t a4, unsigned __int32 *a5, double a6, double a7)
{
  if (CGPathCreateWithThresholdedImageDebug_debug_predicate != -1)
  {
    dispatch_once(&CGPathCreateWithThresholdedImageDebug_debug_predicate, &__block_literal_global_4619);
  }

  if (debug_auto_trace == 1)
  {
    v14 = a3;
    v15 = a4;
    v16 = a5;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  return createPath(a1, a2, v14, v15, v16, a6, a7);
}

const void *__CGPathCreateWithThresholdedImageDebug_block_invoke()
{
  get_BOOLean_property("DEBUG_AUTO_TRACE", copy_local_domain_value, &debug_auto_trace);
  get_BOOLean_property("DEBUG_AUTO_TRACE_SYNTAX", copy_local_domain_value, &debug_auto_trace_syntax);
  get_BOOLean_property("DEBUG_AUTO_TRACE_NAN_INF_CHECK", copy_local_domain_value, &debug_auto_trace_nan_inf_check);

  return get_BOOLean_property("DEBUG_AUTO_TRACE_UNINITIALIZED_TESTING", copy_local_domain_value, &debug_auto_trace_uninitialized_testing);
}

void url_error(const char *a1, CFStringRef theString)
{
  if (!theString)
  {
    goto LABEL_8;
  }

  Length = CFStringGetLength(theString);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  Mutable = CFDataCreateMutable(0, MaximumSizeForEncoding + 1);
  if (!Mutable)
  {
    goto LABEL_8;
  }

  v7 = Mutable;
  CFDataSetLength(Mutable, MaximumSizeForEncoding + 1);
  MutableBytePtr = CFDataGetMutableBytePtr(v7);
  if (!CFStringGetCString(theString, MutableBytePtr, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    CFRelease(v7);
LABEL_8:
    CGPostError("missing or invalid %s.", a1);
    return;
  }

  BytePtr = CFDataGetBytePtr(v7);
  CGPostError("unrecognized %s: %s.", a1, BytePtr);

  CFRelease(v7);
}

BOOL expand_parameters(__CFDictionary *a1, const __CFString *a2)
{
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a2, @";");
  if (!ArrayBySeparatingStrings)
  {
    return 0;
  }

  v4 = ArrayBySeparatingStrings;
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (Count)
  {
    v6 = Count;
    if (Count >= 1)
    {
      for (i = 0; v6 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        v9 = CFStringCreateArrayBySeparatingStrings(0, ValueAtIndex, @"=");
        v10 = v9 != 0;
        if (!v9)
        {
          goto LABEL_34;
        }

        v11 = v9;
        if (CFArrayGetCount(v9) != 2)
        {
          goto LABEL_32;
        }

        v12 = CFArrayGetValueAtIndex(v11, 0);
        v13 = CFArrayGetValueAtIndex(v11, 1);
        if (CFEqual(v12, @"postscript-name"))
        {
          CFDictionarySetValue(a1, @"postscript-name", v13);
        }

        else
        {
          if (!CFStringHasPrefix(v12, @"var:"))
          {
LABEL_32:
            CFRelease(v11);
            goto LABEL_33;
          }

          Length = CFStringGetLength(v12);
          if (Length != 4)
          {
            v28.location = 4;
            v28.length = Length - 4;
            v15 = CFStringCreateWithSubstring(0, v12, v28);
            if (v15)
            {
              v16 = v15;
              Value = CFDictionaryGetValue(a1, @"variations");
              if (!Value)
              {
                Value = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                CFDictionarySetValue(a1, @"variations", Value);
                if (Value)
                {
                  CFRelease(Value);
                }
              }

              if (!v13)
              {
                goto LABEL_29;
              }

              v18 = CFStringGetLength(v13);
              MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v18, 0x8000100u);
              v20 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x65193BB2uLL);
              if (!CFStringGetCString(v13, v20, MaximumSizeForEncoding + 1, 0x8000100u))
              {
                goto LABEL_23;
              }

              v26 = 0;
              v27 = strtol_l(v20, &v26, 10, 0);
              if (v26 == v20 || *v26)
              {
                valuePtr = strtod_l(v20, &v26, 0);
                if (v26 == v20 || *v26)
                {
LABEL_23:
                  free(v20);
LABEL_29:
                  CFRelease(v16);
                  goto LABEL_9;
                }

                free(v20);
                p_valuePtr = &valuePtr;
                v22 = kCFNumberDoubleType;
              }

              else
              {
                free(v20);
                p_valuePtr = &v27;
                v22 = kCFNumberLongType;
              }

              v23 = CFNumberCreate(0, v22, p_valuePtr);
              if (v23)
              {
                CFDictionarySetValue(Value, v16, v23);
                CFRelease(v23);
              }

              goto LABEL_29;
            }
          }
        }

LABEL_9:
        CFRelease(v11);
      }
    }

    v10 = 1;
  }

  else
  {
LABEL_33:
    v10 = 0;
  }

LABEL_34:
  CFRelease(v4);
  return v10;
}

void CIDFontType0::emit_definitions(CIDFontType0 *this)
{
  if (*(this + 17))
  {
    v2 = *(this + 1);
    v3 = *v2;
    v4 = PDFXRefTableAddObject(*(*v2 + 504));
    PDFDocumentBeginObject(v3, *(this + 14));
    PDFDocumentPrintf(v3, "<<");
    PDFDocumentPrintf(v3, "/Type /Font");
    PDFDocumentPrintf(v3, "/Subtype /Type0");
    PDFDocumentPrintf(v3, "/Encoding /Identity-H");
    PDFDocumentPrintReference(v3, "/DescendantFonts [%R]", v4);
    v5 = (this + 88);
    v6 = this + 88;
    if (*(this + 111) < 0)
    {
      v6 = *v5;
    }

    PDFDocumentPrintf(v3, "/BaseFont /%N", v6);
    v44 = 0;
    if (GetSubsetRegistryOrderingSupplement(*(this + 2), 0, 0, 0, &v44) && v44)
    {
      v7 = PDFXRefTableAddObject(*(v3 + 504));
      PDFDocumentPrintReference(v3, "/ToUnicode %R", v7);
    }

    else
    {
      v7 = 0;
    }

    PDFDocumentPrintf(v3, ">>");
    PDFDocumentEndObject(v3);
    v43 = (this + 88);
    if (v7)
    {
      v47 = 0;
      v48 = 0;
      v46 = &v47;
      if (*(this + 15) != (this + 128))
      {
        operator new();
      }

      v45[0] = this;
      ToUnicode::write<std::set<unsigned short>>(v45, v7, &v46);
      std::__tree<unsigned long>::destroy(v47);
      v5 = (this + 88);
    }

    v8 = **(this + 1);
    PDFDocumentBeginObject(v8, v4);
    PDFDocumentPrintf(v8, "<<");
    PDFDocumentPrintf(v8, "/Type /Font");
    PDFDocumentPrintf(v8, "/Subtype /CIDFontType0");
    v9 = v5;
    if (*(this + 111) < 0)
    {
      v9 = *v5;
    }

    PDFDocumentPrintf(v8, "/BaseFont /%N", v9);
    v52[0] = 0;
    v46 = 0;
    v45[0] = 0;
    if (GetSubsetRegistryOrderingSupplement(*(this + 2), &v46, v45, v52, 0))
    {
      v10 = **(this + 1);
      PDFDocumentPrintf(v10, "/CIDSystemInfo <<");
      PDFDocumentPrintf(v10, "/Registry %T", v46);
      PDFDocumentPrintf(v10, "/Ordering %T", v45[0]);
      PDFDocumentPrintf(v10, "/Supplement %d", v52[0]);
      PDFDocumentPrintf(v10, ">>");
    }

    v11 = PDFXRefTableAddObject(*(v8 + 504));
    PDFDocumentPrintReference(v8, "/W %R", v11);
    PDFDocumentPrintf(v8, "/DW %d", 1000);
    FontDescriptor::FontDescriptor(v45, this, 0);
    PDFDocumentPrintReference(v8, "/FontDescriptor %R", v45[1]);
    PDFDocumentPrintf(v8, ">>");
    PDFDocumentEndObject(v8);
    v12 = **(this + 1);
    PDFDocumentBeginObject(v12, v11);
    PDFDocumentPrintf(v12, "[");
    v47 = 0;
    v48 = 0;
    v46 = &v47;
    font_info = get_font_info(*(this + 2));
    v42 = v8;
    if (font_info)
    {
      v14 = font_info[2];
    }

    else
    {
      v14 = 0.0;
    }

    v15 = *(this + 15);
    v16 = this + 128;
    if (v15 != this + 128)
    {
      do
      {
        advances = 0;
        v50 = *(v15 + 13);
        glyphs = *(v15 + 14);
        CGFontGetGlyphAdvances(*(this + 2), &glyphs, 1uLL, &advances);
        v17 = advances;
        *v52 = &v50;
        *(std::__tree<std::__value_type<unsigned short,int>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,int>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(&v46, v50, v52) + 8) = (((1000 * v17) / v14) + 0.5);
        v18 = *(v15 + 1);
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = *(v15 + 2);
            v20 = *v19 == v15;
            v15 = v19;
          }

          while (!v20);
        }

        v15 = v19;
      }

      while (v19 != v16);
    }

    data = v46;
    while (data != &v47)
    {
      v22 = data;
      v23 = WORD2(data->length);
      v24 = 1;
      v25 = WORD2(data->length);
      v26 = data;
      while (WORD2(v26->length) == v25)
      {
        v27 = LODWORD(v26[1].isa) == LODWORD(v22[1].isa);
        info = v26->info;
        if (info)
        {
          do
          {
            data = info;
            info = info->isa;
          }

          while (info);
        }

        else
        {
          do
          {
            data = v26->data;
            v20 = data->isa == v26;
            v26 = data;
          }

          while (!v20);
        }

        v24 &= v27;
        ++v25;
        v26 = data;
        if (data == &v47)
        {
          if (v24)
          {
            goto LABEL_36;
          }

          goto LABEL_39;
        }
      }

      data = v26;
      if (v24)
      {
LABEL_36:
        if (LODWORD(v22[1].isa) != 1000)
        {
          PDFDocumentPrintf(v12, "%d", v23);
          PDFDocumentPrintf(v12, "%d", v25 - 1);
          PDFDocumentPrintf(v12, "%d");
        }

        continue;
      }

LABEL_39:
      PDFDocumentPrintf(v12, "%d [", v23);
      if (v22 != data)
      {
        do
        {
          PDFDocumentPrintf(v12, "%d", LODWORD(v22[1].isa));
          v29 = v22->info;
          if (v29)
          {
            do
            {
              v30 = v29;
              v29 = v29->isa;
            }

            while (v29);
          }

          else
          {
            do
            {
              v30 = v22->data;
              v20 = v30->isa == v22;
              v22 = v30;
            }

            while (!v20);
          }

          v22 = v30;
        }

        while (v30 != data);
      }

      PDFDocumentPrintf(v12, "]");
    }

    PDFDocumentPrintf(v12, "]");
    PDFDocumentEndObject(v12);
    std::__tree<unsigned long>::destroy(v47);
    v31 = PDFXRefTableAddObject(*(v42 + 504));
    FontDescriptor::emit_definition(v45, v43, v31);
    v32 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040C7309667uLL);
    *v32 = 1;
    v33 = *(this + 15);
    if (v33 != v16)
    {
      do
      {
        CGFontIndexSetAddIndex(v32, *(v33 + 14));
        v34 = *(v33 + 1);
        if (v34)
        {
          do
          {
            v35 = v34;
            v34 = *v34;
          }

          while (v34);
        }

        else
        {
          do
          {
            v35 = *(v33 + 2);
            v20 = *v35 == v33;
            v33 = v35;
          }

          while (!v20);
        }

        v33 = v35;
      }

      while (v35 != v16);
    }

    embedded_font = PDFFont::create_embedded_font(this, v43, v32, 0, 0);
    CGFontIndexSetRelease(v32);
    if (embedded_font)
    {
      Length = CFDataGetLength(embedded_font);
      if ((Length - 0x80000000) >= 0xFFFFFFFF80000001)
      {
        v38 = Length;
        v39 = **(this + 1);
        v40 = PDFStreamCreateWithObjectNumber(v39, v31);
        PDFDocumentBeginObject(*v40, v40[1]);
        PDFDocumentPrintf(*v40, "<<");
        PDFDocumentPrintf(v39, "/Subtype /CIDFontType0C");
        PDFStreamBeginData(v40);
        BytePtr = CFDataGetBytePtr(embedded_font);
        CGDataConsumerPutBytes(v40[3], BytePtr, v38);
        PDFStreamEndData(v40);
        PDFStreamEnd(v40);
        PDFStreamRelease(v40);
      }

      CFRelease(embedded_font);
    }
  }
}

BOOL GetSubsetRegistryOrderingSupplement(CGFont *a1, CFTypeRef *a2, CFTypeRef *a3, int *a4, BOOL *a5)
{
  if (a1)
  {
    v10 = (*(*(a1 + 2) + 424))(*(a1 + 14));
    if (v10)
    {
      v11 = v10;
      Count = CFArrayGetCount(v10);
      if (Count >= 1)
      {
        v13 = Count;
        v14 = 0;
        while (CFArrayGetValueAtIndex(v11, v14) != 1667851367)
        {
          if (v13 == ++v14)
          {
            goto LABEL_7;
          }
        }

        CFRelease(v11);
        if (a2)
        {
          *a2 = @"Adobe";
        }

        if (a3)
        {
          *a3 = @"Identity";
        }

        if (a4)
        {
          *a4 = 0;
        }

        RegistryOrderingSupplement = 1;
        if (a5)
        {
          *a5 = 1;
        }

        return RegistryOrderingSupplement;
      }

LABEL_7:
      CFRelease(v11);
    }
  }

  if (a5)
  {
    v18 = 0;
    v19 = 0;
    if (!a2)
    {
      a2 = &v19;
    }

    if (!a3)
    {
      a3 = &v18;
    }

    RegistryOrderingSupplement = CGFontGetRegistryOrderingSupplement(a1, a2, a3, a4);
    if (RegistryOrderingSupplement)
    {
      if (CFEqual(*a2, @"Adobe"))
      {
        v16 = CFEqual(*a3, @"Identity") != 0;
      }

      else
      {
        v16 = 0;
      }

      *a5 = v16;
    }

    return RegistryOrderingSupplement;
  }

  return CGFontGetRegistryOrderingSupplement(a1, a2, a3, a4);
}

void CIDFontType0::emit_references(uint64_t this)
{
  if (*(this + 136))
  {
    v1 = (this + 64);
    if (*(this + 87) < 0)
    {
      v1 = *v1;
    }

    PDFDocumentPrintNameReferencePair(**(this + 8), "/%N %R", v1, *(this + 112));
  }
}

void CIDFontType0::add_glyphs_to_layout(uint64_t a1, void *a2, char **a3)
{
  v3 = a3[1] - *a3;
  if (v3)
  {
    v7 = v3 >> 1;
    std::vector<unsigned short>::vector[abi:fe200100](&__p, v3 >> 1);
    if (a3[1] != *a3 && v24 != __p)
    {
      v22 = a2;
      if (CGFontGetCIDsForGlyphs(*(a1 + 16), *a3, v7, __p))
      {
        if (v7 <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7;
        }

LABEL_15:
        v15 = 0;
        v16 = (a1 + 128);
        while (v15 < (v24 - __p) >> 1 && v15 < (a3[1] - *a3) >> 1)
        {
          v17 = *(__p + v15);
          v18 = *v16;
          if (!*v16)
          {
LABEL_24:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v19 = v18;
              v20 = *(v18 + 26);
              if (v17 >= v20)
              {
                break;
              }

              v18 = *v19;
              if (!*v19)
              {
                goto LABEL_24;
              }
            }

            if (v20 >= v17)
            {
              break;
            }

            v18 = v19[1];
            if (!v18)
            {
              goto LABEL_24;
            }
          }

          if (++v15 == v8)
          {
            if (v24 == __p)
            {
              break;
            }

            v21 = (a1 + 64);
            if (*(a1 + 87) < 0)
            {
              v21 = *v21;
            }

            layout_append_data(v22, v21, 2, __p, v7);
            if (__p)
            {
              v24 = __p;
              operator delete(__p);
            }

            return;
          }
        }
      }

      else
      {
        v9 = *a3;
        v10 = (a3[1] - *a3) >> 1;
        v11 = __p;
        v12 = (v24 - __p) >> 1;
        if (v7 <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7;
        }

        v13 = v8;
        while (v10 && v12)
        {
          v14 = *v9;
          v9 += 2;
          *v11++ = v14;
          --v12;
          --v10;
          if (!--v13)
          {
            goto LABEL_15;
          }
        }
      }
    }

    __break(1u);
  }
}

void sub_1840BB3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CIDFontType0::~CIDFontType0(CIDFontType0 *this)
{
  *this = &unk_1EF23A8C0;
  std::__tree<unsigned long>::destroy(*(this + 16));
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  PDFFont::~PDFFont(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23A8C0;
  std::__tree<unsigned long>::destroy(*(this + 16));
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  PDFFont::~PDFFont(this);
}

uint64_t CGGlyphGetTrimRegion(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = 0;
  if (a3)
  {
    while (!a2)
    {
LABEL_6:
      if (++v8 == a3)
      {
        v8 = a3;
        goto LABEL_8;
      }
    }

    v9 = (result + v8 * a4);
    v10 = a2;
    while ((*v9 & 0x7BDE) == 0)
    {
      ++v9;
      if (!--v10)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_8:
  *a5 = v8;
  v11 = result + v8 * a4;
  v12 = 0;
  v13 = a3 - v8;
  if (v13)
  {
    while (!a2)
    {
LABEL_13:
      if (++v12 == v13)
      {
        v12 = v13;
        goto LABEL_15;
      }
    }

    v14 = (v11 + (v13 + ~v12) * a4);
    v15 = a2;
    while ((*v14 & 0x7BDE) == 0)
    {
      ++v14;
      if (!--v15)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_15:
  *a6 = v12;
  v16 = 0;
  if (a2)
  {
    while (v13 == v12)
    {
LABEL_20:
      if (++v16 == a2)
      {
        v16 = a2;
        goto LABEL_22;
      }
    }

    v17 = (v11 + 2 * a2 - 2 - 2 * v16);
    v18 = v13 - v12;
    while ((*v17 & 0x7BDE) == 0)
    {
      v17 = (v17 + a4);
      if (!--v18)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_22:
  *a8 = v16;
  v19 = a2 - v16;
  if (a2 == v16)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0;
    while (v13 == v12)
    {
LABEL_28:
      if (++v20 == v19)
      {
        v20 = v19;
        goto LABEL_31;
      }
    }

    v21 = (v11 + 2 * v20);
    v22 = v13 - v12;
    while ((*v21 & 0x7BDE) == 0)
    {
      v21 = (v21 + a4);
      if (!--v22)
      {
        goto LABEL_28;
      }
    }
  }

LABEL_31:
  *a7 = v20;
  return result;
}

BOOL CGSBoundsEqualToBounds(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a4 ^ a2) >> 32 == 0;
  if (a2 != a4)
  {
    v4 = 0;
  }

  return a1 == a3 && v4;
}

void CGSConvertW8toRGBA8888(char *a1, int a2, char *a3, int a4, unsigned int a5, uint64_t a6)
{
  if ((a5 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertW8toRGBA8888", 125, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6);
  }

  v7 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertW8toRGBA8888", 125, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6);
  }

  v8 = a6 - 1;
  v9 = &a1[v8 * a2];
  v10 = &a3[v8 * a4];
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  if (a4 < 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = a3;
  }

  if (a4 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = -a2;
  }

  if (a4 < 0)
  {
    v14 = v9;
  }

  else
  {
    v14 = a1;
  }

  if ((v13 & 0x80000000) != 0)
  {
    v15 = malloc_type_malloc(v11 * a6, 0x65731CFAuLL);
    v16 = v15;
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (a5)
        {
          v18 = &v15[i * v11];
          v19 = a5;
          v20 = &v14[i * v13];
          do
          {
            v21 = *v20++;
            *v18 = v21;
            v18[1] = v21;
            v18[2] = v21;
            v18[3] = -1;
            v18 += 4;
            --v19;
          }

          while (v19);
        }
      }
    }

    CGBlt_copyBytes(4 * a5, v7, v15, v12, v11, v11);

    free(v16);
  }

  else
  {
    red.data = v14;
    red.height = a6;
    red.width = a5;
    red.rowBytes = v13;
    dest.data = v12;
    dest.height = a6;
    dest.width = a5;
    dest.rowBytes = v11;
    vImageConvert_Planar8ToBGRX8888(&red, &red, &red, 0xFFu, &dest, 0);
  }
}

void CGSConvertXRGB8888toRGBA8888(char *a1, int a2, char *a3, int a4, unsigned int a5, uint64_t a6)
{
  if ((a5 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertXRGB8888toRGBA8888", 230, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6);
  }

  v7 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertXRGB8888toRGBA8888", 230, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6);
  }

  v8 = a6 - 1;
  v9 = &a1[v8 * a2];
  v10 = &a3[v8 * a4];
  if (a4 < 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = a3;
  }

  if (a4 >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = -a4;
  }

  if (a4 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = -a2;
  }

  if (a4 < 0)
  {
    v14 = v9;
  }

  else
  {
    v14 = a1;
  }

  if ((v13 & 0x80000000) != 0)
  {
    CGBlt_copyBytes(4 * a5, a6, v14, v11, v13, v12);
    if (v7)
    {
      v15 = 0;
      v16 = v11 + 3;
      do
      {
        if (a5)
        {
          v17 = a5;
          v18 = v16;
          do
          {
            v19 = *v18;
            *(v18 - 3) = *(v18 - 1);
            *(v18 - 1) = v19;
            *v18 = -1;
            v18 += 4;
            --v17;
          }

          while (v17);
        }

        ++v15;
        v16 += v12;
      }

      while (v15 != v7);
    }
  }

  else
  {
    src.data = v14;
    src.height = a6;
    src.width = a5;
    src.rowBytes = v13;
    dest.data = v11;
    dest.height = a6;
    dest.width = a5;
    dest.rowBytes = v12;
    *permuteMap = 197121;
    *backgroundColor = -1;
    vImagePermuteChannelsWithMaskedInsert_ARGB8888(&src, &dest, permuteMap, 1u, backgroundColor, 0);
  }
}

void CGSConvertARGB8888toRGBA8888(char *a1, int a2, char *a3, int a4, unsigned int a5, uint64_t a6)
{
  if ((a5 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertARGB8888toRGBA8888", 264, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6);
  }

  v7 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertARGB8888toRGBA8888", 264, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6);
  }

  v8 = a6 - 1;
  v9 = &a1[v8 * a2];
  v10 = &a3[v8 * a4];
  if (a4 < 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = a3;
  }

  if (a4 >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = -a4;
  }

  if (a4 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = -a2;
  }

  if (a4 < 0)
  {
    v14 = v9;
  }

  else
  {
    v14 = a1;
  }

  if ((v13 & 0x80000000) != 0)
  {
    CGBlt_copyBytes(4 * a5, a6, v14, v11, v13, v12);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (a5)
        {
          v17 = &v11[i * v12];
          v18 = a5;
          do
          {
            v15.i32[0] = *v17;
            v19 = vmovl_u8(v15).u64[0];
            v20 = vext_s8(v19, v19, 2uLL);
            v15 = vuzp1_s8(v20, v20);
            *v17++ = v15.i32[0];
            --v18;
          }

          while (v18);
        }
      }
    }
  }

  else
  {
    src.data = v14;
    src.height = a6;
    src.width = a5;
    src.rowBytes = v13;
    dest.data = v11;
    dest.height = a6;
    dest.width = a5;
    dest.rowBytes = v12;
    *permuteMap = 197121;
    vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0);
  }
}

void CGSConvertRGBX8888toRGBA8888(char *a1, int a2, char *a3, int a4, unsigned int a5, uint64_t a6)
{
  if ((a5 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertRGBX8888toRGBA8888", 297, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6);
  }

  v7 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertRGBX8888toRGBA8888", 297, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6);
  }

  v8 = a6 - 1;
  v9 = &a1[v8 * a2];
  v10 = &a3[v8 * a4];
  if (a4 < 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = a3;
  }

  if (a4 >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = -a4;
  }

  if (a4 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = -a2;
  }

  if (a4 < 0)
  {
    v14 = v9;
  }

  else
  {
    v14 = a1;
  }

  if ((v13 & 0x80000000) != 0)
  {
    CGBlt_copyBytes(4 * a5, a6, v14, v11, v13, v12);
    if (v7)
    {
      v15 = 0;
      v16 = vdupq_n_s64(a5 - 1);
      v17 = v11 + 31;
      do
      {
        if (a5)
        {
          v18 = 0;
          v19 = v17;
          do
          {
            v20 = vdupq_n_s64(v18);
            v21 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_18439C670)));
            if (vuzp1_s8(vuzp1_s16(v21, *v16.i8), *v16.i8).u8[0])
            {
              *(v19 - 28) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v21, *&v16), *&v16).i8[1])
            {
              *(v19 - 24) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_18439C760)))), *&v16).i8[2])
            {
              *(v19 - 20) = -1;
              *(v19 - 16) = -1;
            }

            v22 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_18439C750)));
            if (vuzp1_s8(*&v16, vuzp1_s16(v22, *&v16)).i32[1])
            {
              *(v19 - 12) = -1;
            }

            if (vuzp1_s8(*&v16, vuzp1_s16(v22, *&v16)).i8[5])
            {
              *(v19 - 8) = -1;
            }

            if (vuzp1_s8(*&v16, vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_18439C740))))).i8[6])
            {
              *(v19 - 4) = -1;
              *v19 = -1;
            }

            v23 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_18439C730)));
            if (vuzp1_s8(vuzp1_s16(v23, *v16.i8), *v16.i8).u8[0])
            {
              v19[4] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v23, *&v16), *&v16).i8[1])
            {
              v19[8] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_18439C720)))), *&v16).i8[2])
            {
              v19[12] = -1;
              v19[16] = -1;
            }

            v24 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_18439C710)));
            if (vuzp1_s8(*&v16, vuzp1_s16(v24, *&v16)).i32[1])
            {
              v19[20] = -1;
            }

            if (vuzp1_s8(*&v16, vuzp1_s16(v24, *&v16)).i8[5])
            {
              v19[24] = -1;
            }

            if (vuzp1_s8(*&v16, vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_18439C700))))).i8[6])
            {
              v19[28] = -1;
              v19[32] = -1;
            }

            v18 += 16;
            v19 += 64;
          }

          while (((a5 + 15) & 0xFFFFFFF0) != v18);
        }

        ++v15;
        v17 += v12;
      }

      while (v15 != v7);
    }
  }

  else
  {
    src.data = v14;
    src.height = a6;
    src.width = a5;
    src.rowBytes = v13;
    dest.data = v11;
    dest.height = a6;
    dest.width = a5;
    dest.rowBytes = v12;
    vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, &src, &dest, 1u, 0);
  }
}

void CGSConvertXBGR8888toRGBA8888(char *a1, int a2, char *a3, int a4, unsigned int a5, uint64_t a6)
{
  if ((a5 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertXBGR8888toRGBA8888", 329, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6);
  }

  v7 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertXBGR8888toRGBA8888", 329, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6);
  }

  v8 = a6 - 1;
  v9 = &a1[v8 * a2];
  v10 = &a3[v8 * a4];
  if (a4 < 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = a3;
  }

  if (a4 >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = -a4;
  }

  if (a4 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = -a2;
  }

  if (a4 < 0)
  {
    v14 = v9;
  }

  else
  {
    v14 = a1;
  }

  if ((v13 & 0x80000000) != 0)
  {
    CGBlt_copyBytes(4 * a5, a6, v14, v11, v13, v12);
    if (v7)
    {
      v15 = 0;
      v16 = v11 + 3;
      do
      {
        if (a5)
        {
          v17 = a5;
          v18 = v16;
          do
          {
            v19 = *(v18 - 2);
            v20 = *(v18 - 1);
            *(v18 - 3) = *v18;
            *(v18 - 2) = v20;
            *(v18 - 1) = v19;
            *v18 = -1;
            v18 += 4;
            --v17;
          }

          while (v17);
        }

        ++v15;
        v16 += v12;
      }

      while (v15 != v7);
    }
  }

  else
  {
    src.data = v14;
    src.height = a6;
    src.width = a5;
    src.rowBytes = v13;
    dest.data = v11;
    dest.height = a6;
    dest.width = a5;
    dest.rowBytes = v12;
    *permuteMap = 66051;
    *backgroundColor = -1;
    vImagePermuteChannelsWithMaskedInsert_ARGB8888(&src, &dest, permuteMap, 1u, backgroundColor, 0);
  }
}

void CGSConvertBGRX8888toRGBA8888(char *a1, int a2, char *a3, int a4, unsigned int a5, uint64_t a6)
{
  if ((a5 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertBGRX8888toRGBA8888", 396, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6);
  }

  v7 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertBGRX8888toRGBA8888", 396, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6);
  }

  v8 = a6 - 1;
  v9 = &a1[v8 * a2];
  v10 = &a3[v8 * a4];
  if (a4 < 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = a3;
  }

  if (a4 >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = -a4;
  }

  if (a4 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = -a2;
  }

  if (a4 < 0)
  {
    v14 = v9;
  }

  else
  {
    v14 = a1;
  }

  if ((v13 & 0x80000000) != 0)
  {
    CGBlt_copyBytes(4 * a5, a6, v14, v11, v13, v12);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (a5)
        {
          v16 = &v11[i * v12];
          v17 = a5;
          do
          {
            v18 = *v16;
            *v16 = v16[2];
            v16[2] = v18;
            v16[3] = -1;
            v16 += 4;
            --v17;
          }

          while (v17);
        }
      }
    }
  }

  else
  {
    src.data = v14;
    src.height = a6;
    src.width = a5;
    src.rowBytes = v13;
    dest.data = v11;
    dest.height = a6;
    dest.width = a5;
    dest.rowBytes = v12;
    *permuteMap = 50331906;
    *backgroundColor = -1;
    vImagePermuteChannelsWithMaskedInsert_ARGB8888(&src, &dest, permuteMap, 1u, backgroundColor, 0);
  }
}

void CGSConvertBGRA8888toRGBA8888(char *a1, int a2, char *a3, int a4, unsigned int a5, uint64_t a6)
{
  if ((a5 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertBGRA8888toRGBA8888", 430, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6);
  }

  v7 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertBGRA8888toRGBA8888", 430, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6);
  }

  v8 = a6 - 1;
  v9 = &a1[v8 * a2];
  v10 = &a3[v8 * a4];
  if (a4 < 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = a3;
  }

  if (a4 >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = -a4;
  }

  if (a4 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = -a2;
  }

  if (a4 < 0)
  {
    v14 = v9;
  }

  else
  {
    v14 = a1;
  }

  if ((v13 & 0x80000000) != 0)
  {
    CGBlt_copyBytes(4 * a5, a6, v14, v11, v13, v12);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (a5)
        {
          v16 = &v11[i * v12];
          v17 = a5;
          do
          {
            v18 = *v16;
            *v16 = v16[2];
            v16[2] = v18;
            v16 += 4;
            --v17;
          }

          while (v17);
        }
      }
    }
  }

  else
  {
    src.data = v14;
    src.height = a6;
    src.width = a5;
    src.rowBytes = v13;
    dest.data = v11;
    dest.height = a6;
    dest.width = a5;
    dest.rowBytes = v12;
    *permuteMap = 50331906;
    vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0);
  }
}

void CGSConvertW16toRGBA8888(uint64_t a1, int a2, char *a3, int a4, int a5, uint64_t a6)
{
  if (a5 < 0)
  {
    _CGHandleAssert("CGSConvertW16toRGBA8888", 705, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6);
  }

  v7 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertW16toRGBA8888", 705, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6);
  }

  v8 = a6 - 1;
  if (a4 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = -a4;
  }

  if (a4 < 0)
  {
    v10 = &a3[v8 * a4];
  }

  else
  {
    v10 = a3;
  }

  if (a4 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = -a2;
  }

  if (a4 < 0)
  {
    v12 = a1 + v8 * a2;
  }

  else
  {
    v12 = a1;
  }

  v13 = v12 + ((v11 * v8) & (v11 >> 31));
  v14 = v10;
  if (v13 <= &v10[a6 * v9])
  {
    v15 = v11 >= 0 ? v11 : -v11;
    v14 = v10;
    if (v13 + (v15 * a6) >= v10)
    {
      v14 = malloc_type_malloc(a6 * v9, 0x80A75CA5uLL);
    }
  }

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (a5)
      {
        v17 = &v14[i * v9];
        v18 = a5;
        v19 = (v12 + i * v11);
        do
        {
          v20 = *v19;
          v19 += 2;
          *v17 = v20;
          v17[1] = v20;
          v17[2] = v20;
          v17[3] = -1;
          v17 += 4;
          --v18;
        }

        while (v18);
      }
    }
  }

  if (v14 != v10)
  {
    CGBlt_copyBytes(4 * a5, v7, v14, v10, v9, v9);

    free(v14);
  }
}

void CGSConvertw16toRGBA8888(uint64_t a1, int a2, char *a3, int a4, int a5, uint64_t a6)
{
  if (a5 < 0)
  {
    _CGHandleAssert("CGSConvertw16toRGBA8888", 1131, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6);
  }

  v7 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertw16toRGBA8888", 1131, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6);
  }

  v8 = a6 - 1;
  if (a4 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = -a4;
  }

  if (a4 < 0)
  {
    v10 = &a3[v8 * a4];
  }

  else
  {
    v10 = a3;
  }

  if (a4 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = -a2;
  }

  if (a4 < 0)
  {
    v12 = a1 + v8 * a2;
  }

  else
  {
    v12 = a1;
  }

  v13 = v12 + ((v11 * v8) & (v11 >> 31));
  v14 = v10;
  if (v13 <= &v10[a6 * v9])
  {
    v15 = v11 >= 0 ? v11 : -v11;
    v14 = v10;
    if (v13 + (v15 * a6) >= v10)
    {
      v14 = malloc_type_malloc(a6 * v9, 0x29D43047uLL);
    }
  }

  if (v7)
  {
    v16 = 0;
    v17 = (v12 + 1);
    do
    {
      if (a5)
      {
        v18 = &v14[v16 * v9];
        v19 = a5;
        v20 = v17;
        do
        {
          v21 = *v20;
          v20 += 2;
          *v18 = v21;
          v18[1] = v21;
          v18[2] = v21;
          v18[3] = -1;
          v18 += 4;
          --v19;
        }

        while (v19);
      }

      ++v16;
      v17 += v11;
    }

    while (v16 != v7);
  }

  if (v14 != v10)
  {
    CGBlt_copyBytes(4 * a5, v7, v14, v10, v9, v9);

    free(v14);
  }
}

uint64_t CPPDFClipBufferPush(unsigned int a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 8);
  if (v3 <= v2)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = (v4 + 52 * v2);
  v6 = v5 + 2;
  if (!v5[2])
  {
    if (v2 == a1)
    {
      a1 = *v5;
    }

    if (v3 <= a1)
    {
      *v5 = a1;
      goto LABEL_14;
    }

    *v5 = a1;
    v5 = (v4 + 52 * a1);
LABEL_12:
    *v6 = 0;
    v6 = (v4 + 52 * v2 + 4);
LABEL_14:
    *v6 = 0;
    goto LABEL_15;
  }

  v7 = *a2;
  if (*a2 + 3 >= v3)
  {
    return 0;
  }

  *a2 = v7 + 3;
  *(a2 + 4) = v7;
  if (v3 > v7)
  {
    v8 = (v4 + 52 * v7);
    *v8 = v2;
    v6 = v8 + 2;
    v2 = v7;
    goto LABEL_12;
  }

LABEL_15:
  v5[1] = 0;
  return 1;
}

const void *CGFontGetProperty(uint64_t a1, const void *a2)
{
  if (a1 && a2 && (explicit = atomic_load_explicit((a1 + 88), memory_order_acquire)) != 0)
  {
    return CGPropertiesGetProperty(explicit, a2);
  }

  else
  {
    return 0;
  }
}

void CGFontSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (a1 && a2 && a3)
  {
    v5 = (a1 + 88);
    explicit = atomic_load_explicit((a1 + 88), memory_order_acquire);
    if (!explicit)
    {
      explicit = CGPropertiesCreate();
      v7 = 0;
      atomic_compare_exchange_strong(v5, &v7, explicit);
      if (v7)
      {
        CGPropertiesRelease(explicit);
        explicit = v7;
      }
    }

    CGPropertiesSetProperty(explicit, a2, a3);
  }
}

const __CFNumber *CGFontGetIntProperty(uint64_t a1, const void *a2, void *a3)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = atomic_load_explicit((a1 + 88), memory_order_acquire);
      if (result)
      {
        result = CGPropertiesGetProperty(result, a2);
        if (result)
        {
          v6 = result;
          v7 = CFGetTypeID(result);
          if (v7 == CFNumberGetTypeID())
          {
            return (CFNumberGetValue(v6, kCFNumberIntType, a3) != 0);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void CGFontSetIntProperty(uint64_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CGFontSetProperty(a1, @"com.apple.CoreGraphics.CGPDFFontFormat", v3);
  CFRelease(v3);
}

void std::vector<std::variant<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 16;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>,(std::__variant_detail::_Trait)1>::__destroy[abi:fe200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>,(std::__variant_detail::_Trait)1>::__destroy[abi:fe200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 != -1)
  {
    result = (off_1EF23A928[v2])(&v3, result);
  }

  *(v1 + 8) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8fe200100IOZNS0_6__dtorINS0_8__traitsIJN10applesauce2CF9ObjectRefIP21CGPDFStructureElementEENSA_IP22CGPDFMarkedContentItemEEEEELNS0_6_TraitE1EE9__destroyB8fe200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSD_SG_EEEEEEDcSK_DpT0_(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8fe200100IOZNS0_6__dtorINS0_8__traitsIJN10applesauce2CF9ObjectRefIP21CGPDFStructureElementEENSA_IP22CGPDFMarkedContentItemEEEEELNS0_6_TraitE1EE9__destroyB8fe200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSD_SG_EEEEEEDcSK_DpT0_(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

void PDFStructureElement::SetAttribute(PDFStructureElement *this, __CFString *a2, const void *a3)
{
  v5 = a2;
  v6 = *(this + 5);
  v7 = v5;
  if (a3)
  {
    [v6 setObject:a3 forKey:v5];
  }

  else
  {
    [v6 removeObjectForKey:v5];
  }
}

const void **applesauce::CF::ObjectRef<CGPDFStructureElement *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::variant<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:fe200100]<std::allocator<std::variant<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>>,std::variant<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    do
    {
      *a3 = 0;
      *(a3 + 8) = -1;
      std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>,(std::__variant_detail::_Trait)1>::__destroy[abi:fe200100](a3);
      v7 = *(v6 + 8);
      if (v7 != -1)
      {
        v8 = a3;
        (off_1EF23A938[v7])(&v8, v6);
        *(a3 + 8) = v7;
      }

      v6 += 16;
      a3 += 16;
    }

    while (v6 != a2);
    do
    {
      result = std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>,(std::__variant_detail::_Trait)1>::__destroy[abi:fe200100](v5);
      v5 += 16;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<std::variant<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>,(std::__variant_detail::_Trait)1>::__destroy[abi:fe200100](i - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:fe200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>>::__generic_construct[abi:fe200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>> &&>(void **result, void *a2)
{
  **result = *a2;
  *a2 = 0;
  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:fe200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>>::__generic_construct[abi:fe200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>> &&>(void **result, void *a2)
{
  **result = *a2;
  *a2 = 0;
  return result;
}

const void **applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void PDFStructureElement::Emit(PDFStructureElement *this, PDFDocument *a2, uint64_t a3, unint64_t a4)
{
  *(this + 6) = a4;
  v15[0] = 0;
  v15[1] = 0;
  v14[11] = v15;
  v5 = *(this + 2);
  for (i = *(this + 3); v5 != i; v5 += 16)
  {
    if (v5 && *(v5 + 8) == 1)
    {
      operator new();
    }
  }

  v8 = *(this + 2);
  v7 = *(this + 3);
  if (v8 != v7)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(1uLL);
  }

  PDFDocumentBeginObject(a2, a4);
  PDFDocumentPrintf(a2, "<<");
  Name = CGPDFTagTypeGetName(*this);
  PDFDocumentPrintf(a2, "/S %s", Name);
  PDFDocumentPrintf(a2, "/P %R", a3);
  v10 = *(this + 5);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___ZN19PDFStructureElement4EmitEP11PDFDocumentmm_block_invoke;
  v14[3] = &__block_descriptor_40_e35_v32__0__NSString_8__NSString_16_B24l;
  v14[4] = a2;
  [v10 enumerateKeysAndObjectsUsingBlock:v14];
  if (*(this + 2) == *(this + 3))
  {
    goto LABEL_12;
  }

  PDFDocumentPrintf(a2, "/K");
  if (*(this + 3) - *(this + 2) != 16)
  {
    PDFDocumentPrintf(a2, "[");
    if (*(this + 3) == *(this + 2))
    {
      PDFDocumentPrintf(a2, "]", v11);
LABEL_12:
      PDFDocumentPrintf(a2, ">>");
      PDFDocumentEndObject(a2);
      std::__tree<unsigned long>::destroy(v15[0]);
      return;
    }
  }

  __break(1u);
}

void sub_1840BD590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  operator delete(v25);
  std::__tree<unsigned long>::destroy(a25);
  _Unwind_Resume(a1);
}

void std::__throw_bad_variant_access[abi:fe200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5410], std::bad_variant_access::~bad_variant_access);
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:fe200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<PDFStructureElement::Emit(PDFDocument *,unsigned long,unsigned long)::$_1,PDFStructureElement::Emit(PDFDocument *,unsigned long,unsigned long)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF<CGPDFMarkedContentItem *>> const&>(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*(*a2 + 16) || *(v3 + 24) != *(v2 + 32))
  {
    v4 = PDFXRefTableAddObject(*(*(v2 + 24) + 504));
    **(v2 + 40) = v4;
    v5 = *(v2 + 24);
    v6 = *(v2 + 32);
    PDFDocumentBeginObject(v5, v4);
    PDFDocumentPrintf(v5, "<<");
    if (*(v3 + 24) != v6)
    {
      PDFDocumentPrintf(v5, "/Pg %R", *(v3 + 24));
    }

    v7 = *(v3 + 16);
    if (v7)
    {
      v8 = "/Type /OBJR";
    }

    else
    {
      v8 = "/Type /MCR";
    }

    if (v7)
    {
      v9 = "/Obj %R";
    }

    else
    {
      v9 = "/MCID %d";
    }

    PDFDocumentPrintf(v5, v8);
    PDFDocumentPrintf(v5, v9, *(v3 + 32));
    PDFDocumentPrintf(v5, ">>");

    return PDFDocumentEndObject(v5);
  }

  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:fe200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<PDFStructureElement::Emit(PDFDocument *,unsigned long,unsigned long)::$_1,PDFStructureElement::Emit(PDFDocument *,unsigned long,unsigned long)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF<CGPDFMarkedContentItem *>> const&>(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = PDFXRefTableAddObject(*(**a1 + 504));
  **(v3 + 16) = v4;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = (*a2 + 16);

  PDFStructureElement::Emit(v7, v5, v6, v4);
}

void PDFStructureElement::EnumerateMarkedContentItemsRecursively(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v4 != v5)
  {
    do
    {
      v7[0] = &v8;
      v7[1] = &v8;
      v6 = *(v4 + 8);
      if (v6 == -1)
      {
        std::__throw_bad_variant_access[abi:fe200100]();
      }

      v9 = v7;
      (off_1EF23A958[v6])(&v9, v4);
      v4 += 16;
    }

    while (v4 != v5);
    v3 = v8;
  }
}

CFTypeRef CGPDFSourceRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}