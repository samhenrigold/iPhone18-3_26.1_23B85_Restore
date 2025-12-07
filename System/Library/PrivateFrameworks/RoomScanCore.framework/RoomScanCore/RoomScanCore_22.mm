void sub_26235BD58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26235BD7C(uint64_t a1)
{
  *a1 = &unk_2874EEE88;
  v2 = *(a1 + 72);
  if (v2)
  {
    free(v2);
    *(a1 + 72) = 0;
  }

  *(a1 + 64) = 0;
  v5 = (a1 + 40);
  sub_2621E1D40(&v5);
  *a1 = &unk_2874EEEC0;
  v3 = *(a1 + 32);
  if (v3)
  {
    free(v3);
    *(a1 + 32) = 0;
  }

  *(a1 + 24) = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    free(v4);
    *(a1 + 16) = 0;
  }

  *(a1 + 8) = 0;

  JUMPOUT(0x266727420);
}

uint64_t sub_26235BE4C(uint64_t a1)
{
  *a1 = &unk_2874EEE88;
  v2 = *(a1 + 72);
  if (v2)
  {
    free(v2);
    *(a1 + 72) = 0;
  }

  *(a1 + 64) = 0;
  v6 = (a1 + 40);
  sub_2621E1D40(&v6);
  *a1 = &unk_2874EEEC0;
  v3 = *(a1 + 32);
  if (v3)
  {
    free(v3);
    *(a1 + 32) = 0;
  }

  *(a1 + 24) = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    free(v4);
    *(a1 + 16) = 0;
  }

  *(a1 + 8) = 0;
  return a1;
}

void sub_26235BEFC(uint64_t a1, unsigned int *a2, double a3)
{
  __B = a3;
  sub_26235C7F4(a1, *a2, a2[1]);
  v5 = *(a2 + 1);
  v6 = *(a1 + 8);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    vDSP_vsmulD(v5, 1, &__B, v6, 1, a2[1] * *a2);
  }
}

void sub_26235BF64(_Unwind_Exception *exception_object)
{
  v3 = v1[1];
  if (v3)
  {
    free(v3);
    v1[1] = 0;
  }

  *v1 = 0;
  _Unwind_Resume(exception_object);
}

double sub_26235BF84(int *a1, uint64_t a2)
{
  v4 = a1[1] * *a1;
  if (v4)
  {
    v5 = malloc_type_malloc(8 * v4, 0x100004000313F17uLL);
    v6 = v5;
    if (v5)
    {
      bzero(v5, 8 * v4);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 1);
  if (v7)
  {
    if (v6)
    {
      v8 = *(a2 + 8);
      if (v8)
      {
        vDSP_vmulD(v7, 1, v8, 1, v6, 1, a1[1] * *a1);
      }
    }
  }

  __C = 0.0;
  vDSP_sveD(v6, 1, &__C, v4);
  v9 = __C;
  if (v6)
  {
    free(v6);
  }

  return v9;
}

double sub_26235C08C(int *a1)
{
  sub_26235BA28(&v4, a1);
  v1 = __C;
  if (__C)
  {
    vDSP_vabsD(__C, 1, __C, 1, v5 * v4);
    v1 = __C;
    if (__C)
    {
      vDSP_vmulD(__C, 1, __C, 1, __C, 1, v5 * v4);
      v1 = __C;
    }
  }

  v7 = 0.0;
  vDSP_sveD(v1, 1, &v7, v5 * v4);
  v2 = v7;
  if (__C)
  {
    free(__C);
  }

  return v2;
}

void sub_26235C13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_26235C154(uint64_t a1, unsigned int *a2, signed int a3, int a4)
{
  v9 = *a2;
  v8 = a2[1];
  if (*a2)
  {
    if (v9 != 1 && v8 >= 2)
    {
      v11 = malloc_type_malloc(8 * v8 * v9, 0x100004000313F17uLL);
      v12 = *(a2 + 1);
      if (v12 && v11)
      {
        vDSP_mtransD(v12, 1, v11, 1, a2[1], *a2);
        cblas_dcopy_NEWLAPACK();
        free(v11);
      }

      v9 = *a2;
      v8 = a2[1];
    }
  }

  *a2 = v8;
  a2[1] = v9;
  v13 = a4 - a3;
  v14 = *(a2 + 1);
  if (!v14 || a3 < 0)
  {
    v15 = 0;
  }

  else if (v8 > a3)
  {
    v15 = (v14 + 8 * v9 * a3);
  }

  else
  {
    v15 = 0;
  }

  v16 = v9 * v13;
  if (v9 * v13)
  {
    v17 = malloc_type_malloc(8 * v16, 0x100004000313F17uLL);
    v18 = v17;
    if (v15 && v17)
    {
      memcpy(v17, v15, 8 * v16);
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = *a2;
  v20 = a2[1];
  if (*a2 && v19 != 1 && v20 >= 2)
  {
    v21 = malloc_type_malloc(8 * v20 * v19, 0x100004000313F17uLL);
    v22 = *(a2 + 1);
    if (v22 && v21)
    {
      vDSP_mtransD(v22, 1, v21, 1, a2[1], *a2);
      cblas_dcopy_NEWLAPACK();
      free(v21);
    }

    v19 = *a2;
    v20 = a2[1];
  }

  *a2 = v20;
  a2[1] = v19;
  sub_26235C7F4(a1, v9, v13);
  if (v18)
  {
    if (v16 && *(a1 + 8) && *(a1 + 4) * *a1)
    {
      if (v13 == 1 || v9 == 1)
      {
        cblas_dcopy_NEWLAPACK();
      }

      else
      {
        vDSP_mtransD(v18, 1, *(a1 + 8), 1, v9, v13);
      }
    }

    free(v18);
  }
}

void sub_26235C3A8(_Unwind_Exception *a1)
{
  v4 = v1[1];
  if (v4)
  {
    free(v4);
    v1[1] = 0;
  }

  *v1 = 0;
  free(v2);
  _Unwind_Resume(a1);
}

void sub_26235C3DC(unsigned int *a1, int a2, int a3, int *a4)
{
  if (*(a1 + 1))
  {
    v4 = *(a4 + 1) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return;
  }

  v9 = *a1;
  v10 = a1[1];
  if (*a1)
  {
    if (v9 != 1 && v10 >= 2)
    {
      v12 = malloc_type_malloc(8 * v10 * v9, 0x100004000313F17uLL);
      v13 = *(a1 + 1);
      if (v13 && v12)
      {
        vDSP_mtransD(v13, 1, v12, 1, a1[1], *a1);
        cblas_dcopy_NEWLAPACK();
        free(v12);
      }

      v9 = *a1;
      v10 = a1[1];
    }
  }

  *a1 = v10;
  a1[1] = v9;
  v14 = *a4 * a4[1];
  if (v14)
  {
    v15 = malloc_type_malloc(8 * v14, 0x100004000313F17uLL);
    v16 = v15;
    if (v15)
    {
      bzero(v15, 8 * v14);
    }
  }

  else
  {
    v16 = 0;
  }

  if (*(a4 + 1))
  {
    v18 = *a4;
    v17 = a4[1];
    v19 = !v14 || v16 == 0;
    if (!v19 && v17 * v18 != 0)
    {
      if (v18 == 1 || v17 == 1)
      {
        cblas_dcopy_NEWLAPACK();
      }

      else
      {
        vDSP_mtransD(*(a4 + 1), 1, v16, 1, v17, v18);
      }
    }
  }

  v21 = *(a1 + 1);
  if (v21)
  {
    if (!v16)
    {
      goto LABEL_36;
    }

    memcpy((v21 + 8 * (a1[1] * a2)), v16, 8 * a1[1] * (a3 - a2));
  }

  else if (!v16)
  {
    goto LABEL_36;
  }

  free(v16);
LABEL_36:
  v22 = *a1;
  v23 = a1[1];
  if (*a1 && v22 != 1 && v23 >= 2)
  {
    v24 = malloc_type_malloc(8 * v23 * v22, 0x100004000313F17uLL);
    v25 = *(a1 + 1);
    if (v25)
    {
      if (v24)
      {
        vDSP_mtransD(v25, 1, v24, 1, a1[1], *a1);
        cblas_dcopy_NEWLAPACK();
        free(v24);
      }
    }

    v22 = *a1;
    v23 = a1[1];
  }

  *a1 = v23;
  a1[1] = v22;
}

void *sub_26235C610(uint64_t a1, unsigned int *a2)
{
  v3 = sub_26235C7F4(a1, *a2, a2[1]);
  v4 = *(a2 + 1);
  result = *(v3 + 8);
  if (v4)
  {
    v6 = result == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = memcpy(result, v4, 8 * *a2 * a2[1]);
    MEMORY[0x28223BE20](v7);
    v8 = dgetrf_NEWLAPACK();
    MEMORY[0x28223BE20](v8);
    return dgetri_NEWLAPACK();
  }

  return result;
}

void sub_26235C744(_Unwind_Exception *exception_object)
{
  v3 = v1[1];
  if (v3)
  {
    free(v3);
    v1[1] = 0;
  }

  *v1 = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sub_26235C764(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = *a2 > *a1;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  if (v3 > 0.0 && *(a2 + 8) < v3)
  {
    return 2;
  }

  v5 = *(a1 + 16);
  if (v5 > 0.0 && *(a2 + 16) < v5)
  {
    return 3;
  }

  v7 = *(a1 + 24);
  if (v7 > 0.0 && *(a2 + 24) < v7)
  {
    return 4;
  }

  v9 = *(a1 + 32);
  if (*(a2 + 32) <= v9 || v9 <= 0.0)
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_26235C7F4(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = 0;
  *a1 = a2;
  *(a1 + 4) = a3;
  if (a3 * a2)
  {
    v4 = malloc_type_malloc(8 * a3 * a2, 0x100004000313F17uLL);
    *(a1 + 8) = v4;
    if (v4)
    {
      bzero(v4, 8 * *(a1 + 4) * *a1);
    }
  }

  return a1;
}

double *sub_26235C858(double *result, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, _BYTE *a10, double *a11, double *a12, _DWORD *a13)
{
  *a13 = 0;
  v13 = *a10;
  v14 = *a7;
  v15 = *a4;
  v16 = *result;
  if (*a4 >= *result)
  {
    v17 = *result;
  }

  else
  {
    v17 = *a4;
  }

  if (v16 >= v15)
  {
    v18 = *result;
  }

  else
  {
    v18 = *a4;
  }

  if (v14 < v18 && v14 > v17)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a10;
  }

  v21 = *a3;
  v22 = v14 - v16;
  if (*a3 * (v14 - v16) >= 0.0)
  {
    v20 = 1;
  }

  v23 = *a12;
  v24 = *a11;
  if (*a12 < *a11)
  {
    v20 = 1;
  }

  if (!v20)
  {
    v25 = *a9;
    v26 = *a8;
    v27 = *a2;
    if (*a8 > *a2)
    {
      v28 = 0;
      *a13 = 1;
      v29 = v27 - v26;
      v30 = v25 + v21 + (v27 - v26) * 3.0 / v22;
      if (v21 >= v25)
      {
        v31 = a3;
      }

      else
      {
        v31 = a9;
      }

      v32 = *v31;
      if (v30 >= *v31)
      {
        v32 = v25 + v21 + (v27 - v26) * 3.0 / v22;
      }

      v33 = v32 * sqrt(-v21 / v32 * (v25 / v32) + v30 / v32 * (v30 / v32));
      v34 = -v33;
      if (v14 >= v16)
      {
        v34 = v33;
      }

      v35 = v16 + (v30 + v34 - v21) / (v25 + v34 + v34 - v21) * v22;
      v36 = v16 + v21 / (v21 + v29 / v22) * 0.5 * v22;
      v37 = vabdd_f64(v35, v16);
      v38 = vabdd_f64(v36, v16);
      v23 = v35 + (v36 - v35) * 0.5;
      if (v37 < v38)
      {
        v23 = v35;
      }

      *a10 = 1;
      *a4 = v14;
      *a5 = *a8;
      *a6 = *a9;
      goto LABEL_42;
    }

    v39 = fabs(v21);
    if (v21 / v39 * v25 < 0.0)
    {
      v40 = 0;
      *a13 = 2;
      v41 = v25 + v21 + (v27 - v26) * 3.0 / v22;
      if (v21 >= v25)
      {
        v42 = a3;
      }

      else
      {
        v42 = a9;
      }

      v43 = *v42;
      if (v41 >= *v42)
      {
        v43 = v41;
      }

      v44 = v43 * sqrt(-v21 / v43 * (v25 / v43) + v41 / v43 * (v41 / v43));
      v45 = -v44;
      if (v14 <= v16)
      {
        v45 = v44;
      }

      v23 = v14 + (v41 + v45 - v25) / (v21 + v45 + v45 - v25) * (v16 - v14);
      v46 = v14 + v25 / (v25 - v21) * (v16 - v14);
      if (vabdd_f64(v23, v14) <= vabdd_f64(v46, v14))
      {
        v23 = v46;
      }

      v13 = 1;
      *a10 = 1;
      *a4 = v16;
      *a5 = *a2;
      *a6 = *a3;
      v14 = *a7;
      goto LABEL_41;
    }

    if (fabs(v25) >= v39)
    {
      *a13 = 4;
      if (v13)
      {
        v40 = 0;
        v56 = *a6;
        v57 = v25 + *a6 + (v26 - *a5) * 3.0 / (v15 - v14);
        v58 = *a9;
        if (*a6 >= v25)
        {
          v58 = *a6;
        }

        if (v57 >= v58)
        {
          v58 = v25 + *a6 + (v26 - *a5) * 3.0 / (v15 - v14);
        }

        v59 = v58 * sqrt(-v56 / v58 * (v25 / v58) + v57 / v58 * (v57 / v58));
        v60 = -v59;
        if (v14 <= v15)
        {
          v60 = v59;
        }

        v23 = v14 + (v57 + v60 - v25) / (v56 + v60 + v60 - v25) * (v15 - v14);
      }

      else
      {
        v40 = 0;
        if (v14 <= v16)
        {
          v23 = v24;
        }
      }

      goto LABEL_41;
    }

    *a13 = 3;
    v50 = v25 + v21 + (v27 - v26) * 3.0 / v22;
    if (v21 >= v25)
    {
      v51 = a3;
    }

    else
    {
      v51 = a9;
    }

    v52 = *v51;
    if (v50 >= *v51)
    {
      v52 = v50;
    }

    v53 = v52 * sqrt(fmax(-v21 / v52 * (v25 / v52) + v50 / v52 * (v50 / v52), 0.0));
    v54 = -v53;
    if (v14 <= v16)
    {
      v54 = v53;
    }

    if (v53 == 0.0 || (v55 = (v50 + v54 - v25) / (v54 + v21 - v25 + v54), v55 >= 0.0))
    {
      if (v14 <= v16)
      {
        v23 = v24;
      }
    }

    else
    {
      v23 = v14 + v55 * (v16 - v14);
    }

    v61 = v14 + v25 / (v25 - v21) * (v16 - v14);
    v62 = vabdd_f64(v14, v23);
    v63 = vabdd_f64(v14, v61);
    if (v13)
    {
      if (v62 < v63)
      {
LABEL_75:
        v40 = 1;
LABEL_41:
        *result = v14;
        *a2 = *a8;
        *a3 = *a9;
        v28 = (v40 & v13) == 0;
LABEL_42:
        v47 = *a12;
        if (v23 < *a12)
        {
          v47 = v23;
        }

        if (*a11 >= v47)
        {
          v47 = *a11;
        }

        *a7 = v47;
        if (!v28)
        {
          v48 = *result + (*a4 - *result) * 0.66;
          v49 = v48 < v47;
          if (*a4 > *result)
          {
            v49 = v47 < v48;
          }

          if (!v49)
          {
            v47 = *result + (*a4 - *result) * 0.66;
          }

          *a7 = v47;
        }

        return result;
      }
    }

    else if (v62 > v63)
    {
      goto LABEL_75;
    }

    v40 = 1;
    v23 = v61;
    goto LABEL_41;
  }

  return result;
}

void sub_26235CC7C(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      sub_2621CBEB0();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t sub_26235CD84(uint64_t result, int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v87 = *v10;
        v88 = *v11;
        if (*(**a3 + 16 * v87 + 8) < *(**a3 + 16 * v88 + 8))
        {
          *v11 = v87;
          *v10 = v88;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v96 = v11 + 1;
      v97 = v11[1];
      v98 = v11 + 2;
      v99 = v11[2];
      v100 = *v11;
      v101 = **a3;
      v102 = *(v101 + 16 * v97 + 8);
      v103 = *(v101 + 16 * *v11 + 8);
      v104 = v99;
      v105 = *(v101 + 16 * v99 + 8);
      if (v102 >= v103)
      {
        if (v105 < v102)
        {
          v106 = v97;
          *v96 = v99;
          *v98 = v97;
          v107 = v11;
          v108 = v11 + 1;
          v104 = v97;
          if (v105 < v103)
          {
            goto LABEL_173;
          }

LABEL_175:
          v162 = *v10;
          if (*(v101 + 16 * v162 + 8) < *(v101 + 16 * v104 + 8))
          {
            *v98 = v162;
            *v10 = v97;
            v163 = *v98;
            v164 = *v96;
            v165 = *(v101 + 16 * v163 + 8);
            if (v165 < *(v101 + 16 * v164 + 8))
            {
              v11[1] = v163;
              v11[2] = v164;
              v166 = *v11;
              if (v165 < *(v101 + 16 * v166 + 8))
              {
                *v11 = v163;
                v11[1] = v166;
              }
            }
          }

          return result;
        }
      }

      else
      {
        v106 = v100;
        if (v105 < v102)
        {
          v107 = v11;
          v108 = v11 + 2;
          v97 = *v11;
          goto LABEL_173;
        }

        *v11 = v97;
        v11[1] = v100;
        v107 = v11 + 1;
        v108 = v11 + 2;
        v97 = v100;
        if (v105 < v103)
        {
LABEL_173:
          *v107 = v99;
          *v108 = v100;
          v104 = v106;
          goto LABEL_175;
        }
      }

      v97 = v99;
      goto LABEL_175;
    }

    if (v12 == 5)
    {
      v86 = **a3;

      return sub_26235D8EC(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, v86);
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v109 = v11 + 1;
          if (v11 + 1 != a2)
          {
            v110 = 0;
            v111 = **a3;
            v112 = v11;
            do
            {
              v114 = *v112;
              v113 = v112[1];
              v112 = v109;
              v115 = *(v111 + 16 * v113 + 8);
              if (v115 < *(v111 + 16 * v114 + 8))
              {
                v116 = v110;
                while (1)
                {
                  *(v11 + v116 + 4) = v114;
                  if (!v116)
                  {
                    break;
                  }

                  v114 = *(v11 + v116 - 4);
                  v116 -= 4;
                  if (v115 >= *(v111 + 16 * v114 + 8))
                  {
                    v117 = (v11 + v116 + 4);
                    goto LABEL_122;
                  }
                }

                v117 = v11;
LABEL_122:
                *v117 = v113;
              }

              v109 = v112 + 1;
              v110 += 4;
            }

            while (v112 + 1 != a2);
          }
        }
      }

      else if (v11 != a2)
      {
        v156 = v11 + 1;
        if (v11 + 1 != a2)
        {
          v157 = **a3;
          do
          {
            v159 = *v9;
            v158 = v9[1];
            v9 = v156;
            v160 = *(v157 + 16 * v158 + 8);
            if (v160 < *(v157 + 16 * v159 + 8))
            {
              do
              {
                *v156 = v159;
                v159 = *(v156 - 2);
                --v156;
              }

              while (v160 < *(v157 + 16 * v159 + 8));
              *v156 = v158;
            }

            v156 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v118 = (v12 - 2) >> 1;
        v119 = *a3;
        v120 = v118;
        do
        {
          v121 = v120;
          if (v118 >= v120)
          {
            v122 = (2 * v120) | 1;
            v123 = &v11[v122];
            v124 = 2 * v120 + 2;
            v125 = *v119;
            if (v124 < v12 && *(v125 + 16 * *v123 + 8) < *(v125 + 16 * v123[1] + 8))
            {
              ++v123;
              v122 = 2 * v121 + 2;
            }

            v126 = &v11[v121];
            v127 = *v123;
            v128 = *v126;
            v129 = *(v125 + 16 * v128 + 8);
            if (*(v125 + 16 * v127 + 8) >= v129)
            {
              do
              {
                v130 = v123;
                *v126 = v127;
                if (v118 < v122)
                {
                  break;
                }

                v131 = 2 * v122;
                v122 = (2 * v122) | 1;
                v123 = &v11[v122];
                v132 = v131 + 2;
                if (v132 < v12 && *(v125 + 16 * *v123 + 8) < *(v125 + 16 * v123[1] + 8))
                {
                  ++v123;
                  v122 = v132;
                }

                v127 = *v123;
                v126 = v130;
              }

              while (*(v125 + 16 * v127 + 8) >= v129);
              *v130 = v128;
            }
          }

          v120 = v121 - 1;
        }

        while (v121);
        v133 = *a3;
        do
        {
          v134 = 0;
          v135 = *v11;
          v136 = *a3;
          v137 = v11;
          do
          {
            v138 = v137;
            v139 = &v137[v134];
            v137 = v139 + 1;
            v140 = 2 * v134;
            result = (2 * v134) | 1;
            v134 = result;
            v141 = v140 + 2;
            if (v141 < v12)
            {
              v143 = v139[2];
              v142 = v139 + 2;
              result = *v136 + 16 * v143;
              if (*(*v136 + 16 * *(v142 - 1) + 8) < *(result + 8))
              {
                v137 = v142;
                v134 = v141;
              }
            }

            *v138 = *v137;
          }

          while (v134 <= (v12 - 2) / 2);
          if (v137 == --a2)
          {
            *v137 = v135;
          }

          else
          {
            *v137 = *a2;
            *a2 = v135;
            v144 = (v137 - v11 + 4) >> 2;
            v145 = v144 < 2;
            v146 = v144 - 2;
            if (!v145)
            {
              v147 = v146 >> 1;
              v148 = &v11[v147];
              v149 = *v148;
              v150 = *v137;
              v151 = *v133;
              v152 = *(*v133 + 16 * v150 + 8);
              if (*(*v133 + 16 * v149 + 8) < v152)
              {
                do
                {
                  v153 = v148;
                  *v137 = v149;
                  if (!v147)
                  {
                    break;
                  }

                  v147 = (v147 - 1) >> 1;
                  v148 = &v11[v147];
                  v149 = *v148;
                  v137 = v153;
                }

                while (*(v151 + 16 * v149 + 8) < v152);
                *v153 = v150;
              }
            }
          }

          v145 = v12-- <= 2;
        }

        while (!v145);
      }

      return result;
    }

    v13 = &v11[v12 >> 1];
    v14 = v13;
    v15 = **a3;
    v16 = *v10;
    v17 = *(v15 + 16 * v16 + 8);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v11;
      v20 = *(v15 + 16 * v18 + 8);
      v21 = *(v15 + 16 * v19 + 8);
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          *v10 = v18;
          v26 = *v13;
          v27 = *v11;
          if (*(v15 + 16 * v26 + 8) < *(v15 + 16 * v27 + 8))
          {
            *v11 = v26;
            *v13 = v27;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          *v11 = v16;
          goto LABEL_27;
        }

        *v11 = v18;
        *v13 = v19;
        v30 = *v10;
        if (*(v15 + 16 * v30 + 8) < v21)
        {
          *v13 = v30;
LABEL_27:
          *v10 = v19;
        }
      }

      v31 = v13 - 1;
      v32 = *(v13 - 1);
      v33 = v11[1];
      v34 = *(v15 + 16 * v32 + 8);
      v35 = *(v15 + 16 * v33 + 8);
      v36 = *(a2 - 2);
      v37 = *(v15 + 16 * v36 + 8);
      if (v34 >= v35)
      {
        if (v37 < v34)
        {
          *v31 = v36;
          *(a2 - 2) = v32;
          v38 = *v31;
          v39 = v11[1];
          if (*(v15 + 16 * v38 + 8) < *(v15 + 16 * v39 + 8))
          {
            v11[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 < v34)
        {
          v11[1] = v36;
          goto LABEL_39;
        }

        v11[1] = v32;
        *v31 = v33;
        v41 = *(a2 - 2);
        if (*(v15 + 16 * v41 + 8) < v35)
        {
          *v31 = v41;
LABEL_39:
          *(a2 - 2) = v33;
        }
      }

      v44 = v13[1];
      v42 = v13 + 1;
      v43 = v44;
      v45 = v11[2];
      v46 = *(v15 + 16 * v44 + 8);
      v47 = *(v15 + 16 * v45 + 8);
      v48 = *(a2 - 3);
      v49 = *(v15 + 16 * v48 + 8);
      if (v46 >= v47)
      {
        if (v49 < v46)
        {
          *v42 = v48;
          *(a2 - 3) = v43;
          v50 = *v42;
          v51 = v11[2];
          if (*(v15 + 16 * v50 + 8) < *(v15 + 16 * v51 + 8))
          {
            v11[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 < v46)
        {
          v11[2] = v48;
          goto LABEL_48;
        }

        v11[2] = v43;
        *v42 = v45;
        v52 = *(a2 - 3);
        if (*(v15 + 16 * v52 + 8) < v47)
        {
          *v42 = v52;
LABEL_48:
          *(a2 - 3) = v45;
        }
      }

      v53 = *v14;
      v54 = *v31;
      v55 = *(v15 + 16 * v53 + 8);
      v56 = *(v15 + 16 * v54 + 8);
      v57 = *v42;
      v58 = *(v15 + 16 * v57 + 8);
      if (v55 >= v56)
      {
        if (v58 >= v55)
        {
          goto LABEL_56;
        }

        *v14 = v57;
        *v42 = v53;
        v42 = v14;
        LODWORD(v53) = v54;
        if (v58 >= v56)
        {
          LODWORD(v53) = v57;
          goto LABEL_56;
        }
      }

      else if (v58 >= v55)
      {
        *v31 = v53;
        *v14 = v54;
        v31 = v14;
        LODWORD(v53) = v57;
        if (v58 >= v56)
        {
          LODWORD(v53) = v54;
LABEL_56:
          v59 = *v11;
          *v11 = v53;
          *v14 = v59;
          goto LABEL_57;
        }
      }

      *v31 = v57;
      *v42 = v54;
      goto LABEL_56;
    }

    v22 = *v11;
    v23 = *v14;
    v24 = *(v15 + 16 * v22 + 8);
    v25 = *(v15 + 16 * v23 + 8);
    if (v24 >= v25)
    {
      if (v17 < v24)
      {
        *v11 = v16;
        *v10 = v22;
        v28 = *v11;
        v29 = *v14;
        if (*(v15 + 16 * v28 + 8) < *(v15 + 16 * v29 + 8))
        {
          *v14 = v28;
          *v11 = v29;
        }
      }

      goto LABEL_57;
    }

    if (v17 < v24)
    {
      *v14 = v16;
LABEL_36:
      *v10 = v23;
      goto LABEL_57;
    }

    *v14 = v22;
    *v11 = v23;
    v40 = *v10;
    if (*(v15 + 16 * v40 + 8) < v25)
    {
      *v11 = v40;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v60 = *v11;
    v61 = v15 + 16 * *v11;
    if (a5)
    {
      v62 = *(v61 + 8);
LABEL_60:
      v63 = v11;
      do
      {
        v64 = v63;
        v66 = v63[1];
        ++v63;
        v65 = v66;
      }

      while (*(v15 + 16 * v66 + 8) < v62);
      v67 = a2;
      if (v64 == v11)
      {
        v67 = a2;
        do
        {
          if (v63 >= v67)
          {
            break;
          }

          v69 = *--v67;
        }

        while (*(v15 + 16 * v69 + 8) >= v62);
      }

      else
      {
        do
        {
          v68 = *--v67;
        }

        while (*(v15 + 16 * v68 + 8) >= v62);
      }

      if (v63 < v67)
      {
        v70 = *v67;
        v71 = v65;
        v72 = v63;
        v73 = v67;
        do
        {
          *v72 = v70;
          *v73 = v71;
          do
          {
            v64 = v72;
            v74 = v72[1];
            ++v72;
            v71 = v74;
          }

          while (*(v15 + 16 * v74 + 8) < v62);
          do
          {
            v75 = *--v73;
            v70 = v75;
          }

          while (*(v15 + 16 * v75 + 8) >= v62);
        }

        while (v72 < v73);
      }

      if (v64 != v11)
      {
        *v11 = *v64;
      }

      *v64 = v60;
      if (v63 < v67)
      {
        goto LABEL_79;
      }

      v76 = sub_26235DAC8(v11, v64, *a3);
      v11 = v64 + 1;
      result = sub_26235DAC8(v64 + 1, a2, *a3);
      if (result)
      {
        a2 = v64;
        if (!v76)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v76)
      {
LABEL_79:
        result = sub_26235CD84(v9, v64, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v64 + 1;
      }
    }

    else
    {
      v62 = *(v61 + 8);
      if (*(v15 + 16 * *(v11 - 1) + 8) < v62)
      {
        goto LABEL_60;
      }

      if (v62 >= *(v15 + 16 * *v10 + 8))
      {
        v78 = (v11 + 1);
        do
        {
          v11 = v78;
          if (v78 >= a2)
          {
            break;
          }

          v78 += 4;
        }

        while (v62 >= *(v15 + 16 * *v11 + 8));
      }

      else
      {
        do
        {
          v77 = v11[1];
          ++v11;
        }

        while (v62 >= *(v15 + 16 * v77 + 8));
      }

      v79 = a2;
      if (v11 < a2)
      {
        v79 = a2;
        do
        {
          v80 = *--v79;
        }

        while (v62 < *(v15 + 16 * v80 + 8));
      }

      if (v11 < v79)
      {
        v81 = *v11;
        v82 = *v79;
        do
        {
          *v11 = v82;
          *v79 = v81;
          do
          {
            v83 = v11[1];
            ++v11;
            v81 = v83;
          }

          while (v62 >= *(v15 + 16 * v83 + 8));
          do
          {
            v84 = *--v79;
            v82 = v84;
          }

          while (v62 < *(v15 + 16 * v84 + 8));
        }

        while (v11 < v79);
      }

      v85 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v85;
      }

      a5 = 0;
      *v85 = v60;
    }
  }

  v89 = *v11;
  v90 = v11[1];
  v91 = **a3;
  v92 = *(v91 + 16 * v90 + 8);
  v93 = *(v91 + 16 * v89 + 8);
  v94 = *v10;
  v95 = *(v91 + 16 * v94 + 8);
  if (v92 >= v93)
  {
    if (v95 < v92)
    {
      v11[1] = v94;
      *v10 = v90;
      v155 = *v11;
      v154 = v11[1];
      if (*(v91 + 16 * v154 + 8) < *(v91 + 16 * v155 + 8))
      {
        *v11 = v154;
        v11[1] = v155;
      }
    }
  }

  else
  {
    if (v95 >= v92)
    {
      *v11 = v90;
      v11[1] = v89;
      v161 = *v10;
      if (*(v91 + 16 * v161 + 8) >= v93)
      {
        return result;
      }

      v11[1] = v161;
    }

    else
    {
      *v11 = v94;
    }

    *v10 = v89;
  }

  return result;
}

int *sub_26235D8EC(int *result, int *a2, int *a3, int *a4, int *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 16 * *a2 + 8);
  v9 = *(a6 + 16 * *result + 8);
  v10 = *a3;
  v11 = *(a6 + 16 * *a3 + 8);
  if (v8 >= v9)
  {
    if (v11 >= v8)
    {
      v12 = v10;
      goto LABEL_13;
    }

    *a2 = v10;
    *a3 = v6;
    v13 = *a2;
    v14 = *result;
    if (*(a6 + 16 * v13 + 8) >= *(a6 + 16 * v14 + 8))
    {
      v12 = v6;
      v10 = v6;
      goto LABEL_13;
    }

    *result = v13;
    *a2 = v14;
    v10 = *a3;
    goto LABEL_11;
  }

  v12 = v7;
  if (v11 >= v8)
  {
    *result = v6;
    *a2 = v7;
    v10 = *a3;
    if (*(a6 + 16 * *a3 + 8) < v9)
    {
      *a2 = v10;
      goto LABEL_9;
    }

LABEL_11:
    v12 = v10;
    goto LABEL_13;
  }

  *result = v10;
LABEL_9:
  *a3 = v7;
  v10 = v7;
LABEL_13:
  v15 = *a4;
  if (*(a6 + 16 * v15 + 8) < *(a6 + 16 * v12 + 8))
  {
    *a3 = v15;
    *a4 = v10;
    v16 = *a3;
    v17 = *a2;
    if (*(a6 + 16 * v16 + 8) < *(a6 + 16 * v17 + 8))
    {
      *a2 = v16;
      *a3 = v17;
      v18 = *a2;
      v19 = *result;
      if (*(a6 + 16 * v18 + 8) < *(a6 + 16 * v19 + 8))
      {
        *result = v18;
        *a2 = v19;
      }
    }
  }

  v20 = *a5;
  v21 = *a4;
  if (*(a6 + 16 * v20 + 8) < *(a6 + 16 * v21 + 8))
  {
    *a4 = v20;
    *a5 = v21;
    v22 = *a4;
    v23 = *a3;
    if (*(a6 + 16 * v22 + 8) < *(a6 + 16 * v23 + 8))
    {
      *a3 = v22;
      *a4 = v23;
      v24 = *a3;
      v25 = *a2;
      if (*(a6 + 16 * v24 + 8) < *(a6 + 16 * v25 + 8))
      {
        *a2 = v24;
        *a3 = v25;
        v26 = *a2;
        v27 = *result;
        if (*(a6 + 16 * v26 + 8) < *(a6 + 16 * v27 + 8))
        {
          *result = v26;
          *a2 = v27;
        }
      }
    }
  }

  return result;
}

BOOL sub_26235DAC8(int *a1, int *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *a3;
      v9 = *(*a3 + 16 * v7 + 8);
      v10 = *(*a3 + 16 * v6 + 8);
      v11 = *(a2 - 1);
      v12 = *(*a3 + 16 * v11 + 8);
      if (v9 >= v10)
      {
        if (v12 < v9)
        {
          a1[1] = v11;
          *(a2 - 1) = v7;
          v37 = *a1;
          v36 = a1[1];
          if (*(v8 + 16 * v36 + 8) < *(v8 + 16 * v37 + 8))
          {
            *a1 = v36;
            a1[1] = v37;
          }
        }

        return 1;
      }

      if (v12 >= v9)
      {
        *a1 = v7;
        a1[1] = v6;
        v47 = *(a2 - 1);
        if (*(v8 + 16 * v47 + 8) >= v10)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_26235D8EC(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *a1;
    v28 = *a3;
    v29 = *(*a3 + 16 * v24 + 8);
    v30 = *(*a3 + 16 * *a1 + 8);
    v31 = v26;
    v32 = *(*a3 + 16 * v26 + 8);
    if (v29 >= v30)
    {
      if (v32 < v29)
      {
        v33 = v24;
        *v23 = v26;
        *v25 = v24;
        v34 = a1;
        v35 = a1 + 1;
        v31 = v24;
        if (v32 >= v30)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v33 = v27;
      if (v32 < v29)
      {
        v34 = a1;
        v35 = a1 + 2;
        v24 = *a1;
LABEL_44:
        *v34 = v26;
        *v35 = v27;
        v31 = v33;
LABEL_46:
        v48 = *(a2 - 1);
        if (*(v28 + 16 * v48 + 8) < *(v28 + 16 * v31 + 8))
        {
          *v25 = v48;
          *(a2 - 1) = v24;
          v49 = *v25;
          v50 = *v23;
          v51 = *(v28 + 16 * v49 + 8);
          if (v51 < *(v28 + 16 * v50 + 8))
          {
            a1[1] = v49;
            a1[2] = v50;
            v52 = *a1;
            if (v51 < *(v28 + 16 * v52 + 8))
            {
              *a1 = v49;
              a1[1] = v52;
            }
          }
        }

        return 1;
      }

      *a1 = v24;
      a1[1] = v27;
      v34 = a1 + 1;
      v35 = a1 + 2;
      v24 = v27;
      if (v32 < v30)
      {
        goto LABEL_44;
      }
    }

    v24 = v26;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 16 * v4 + 8) < *(*a3 + 16 * v5 + 8))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v13 = a1[2];
  v15 = a1[1];
  v16 = *a1;
  v17 = *a3;
  v18 = *(*a3 + 16 * v15 + 8);
  v19 = *(*a3 + 16 * v16 + 8);
  v20 = *(*a3 + 16 * v13 + 8);
  if (v18 < v19)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 >= v18)
    {
      *a1 = v15;
      a1[1] = v16;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v20 >= v19)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v21 = v13;
    *v22 = v16;
    goto LABEL_26;
  }

  if (v20 < v18)
  {
    a1[1] = v13;
    *v14 = v15;
    v21 = a1;
    v22 = a1 + 1;
    if (v20 < v19)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v38 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v39 = 0;
  for (i = 12; ; i += 4)
  {
    v41 = *v38;
    v42 = *v14;
    v43 = *(v17 + 16 * v41 + 8);
    if (v43 < *(v17 + 16 * v42 + 8))
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v42;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v42 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v43 >= *(v17 + 16 * v42 + 8))
        {
          v46 = (a1 + v45);
          goto LABEL_34;
        }
      }

      v46 = a1;
LABEL_34:
      *v46 = v41;
      if (++v39 == 8)
      {
        break;
      }
    }

    v14 = v38++;
    if (v38 == a2)
    {
      return 1;
    }
  }

  return v38 + 1 == a2;
}

void sub_26235DE34(void *a1)
{
  *a1 = &unk_2874EEEF8;
  v2 = a1[15];
  if (v2)
  {
    free(v2);
    a1[15] = 0;
  }

  a1[14] = 0;
  v3 = a1[13];
  if (v3)
  {
    free(v3);
    a1[13] = 0;
  }

  a1[12] = 0;

  JUMPOUT(0x266727420);
}

void *sub_26235DEBC(void *a1)
{
  *a1 = &unk_2874EEEF8;
  v2 = a1[15];
  if (v2)
  {
    free(v2);
    a1[15] = 0;
  }

  a1[14] = 0;
  v3 = a1[13];
  if (v3)
  {
    free(v3);
    a1[13] = 0;
  }

  a1[12] = 0;
  return a1;
}

void *sub_26235DF24(void *a1)
{
  *a1 = &unk_2874EEEC0;
  v2 = a1[4];
  if (v2)
  {
    free(v2);
    a1[4] = 0;
  }

  a1[3] = 0;
  v3 = a1[2];
  if (v3)
  {
    free(v3);
    a1[2] = 0;
  }

  a1[1] = 0;
  return a1;
}

char **sub_26235DF8C(char **a1, char **a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      if (v4 != a3)
      {
        sub_26223200C(a3, *v4, v4[1], (v4[1] - *v4) >> 3);
      }

      v4 += 3;
      a3 += 3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

uint64_t *sub_26235DFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_262234B80(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_26220AA28(v8);
  return v4;
}

void sub_26235E254(void *a1, void *a2, uint64_t *a3)
{
  __p[16] = *MEMORY[0x277D85DE8];
  v4 = a1;
  v85 = a2;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v89, v97, 16);
  if (v8)
  {
    v9 = *v90;
    v10 = vdup_n_s32(0x3DCCCCCDu);
    v11 = vdup_n_s32(0xBDCCCCCD);
    v81 = *v90;
    do
    {
      v12 = 0;
      v82 = v8;
      do
      {
        if (*v90 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v89 + 1) + 8 * v12);
        objc_msgSend_quad(v13, v6, v7);
        v88 = v14;
        objc_msgSend_quad(v13, v15, v16);
        v87 = v17;
        objc_msgSend_quad(v13, v18, v19);
        v86 = v20;
        objc_msgSend_quad(v13, v21, v22);
        v23 = vsubq_f32(v88, v87).u64[0];
        v24.f32[0] = -*(&v23 + 1);
        v24.i32[1] = v23;
        v25 = vmul_f32(v24, v24);
        v25.i32[0] = vadd_f32(v25, vdup_lane_s32(v25, 1)).u32[0];
        v26 = vrsqrte_f32(v25.u32[0]);
        v27 = vmul_f32(v26, vrsqrts_f32(v25.u32[0], vmul_f32(v26, v26)));
        v28 = vmul_n_f32(v24, vmul_f32(v27, vrsqrts_f32(v25.u32[0], vmul_f32(v27, v27))).f32[0]);
        v30 = vmul_f32(vadd_f32(v86, v29), 0x3F0000003F000000);
        v31 = *a3;
        v32 = a3[1];
        v33 = sub_26233D994(*a3, v32, vmla_f32(v30, v10, v28));
        v34 = sub_26233D994(v31, v32, vmla_f32(v30, v11, v28));
        if (!v33 && v34)
        {
          if (v13)
          {
            v35 = *(v13 + 272);
            v37 = *(v13 + 304);
            v36 = *(v13 + 320);
            *(v13 + 272) = *(v13 + 288);
            *(v13 + 288) = v35;
            *(v13 + 304) = v36;
            *(v13 + 320) = v37;
            v38 = *(v13 + 125);
            *(v13 + 125) = *(v13 + 127);
            *(v13 + 127) = v38;
            v39 = *(v13 + 228);
            *(v13 + 228) = *(v13 + 236);
            v6 = *(v13 + 8);
            v7 = *(v13 + 16);
            v40 = v7 - v6;
            v41 = (v7 - v6) >> 4;
            *(v13 + 236) = v39;
            if (v41 >= 2)
            {
              memset(__p, 0, 24);
              sub_2621DDA38(__p, v6, v7, (v7 - v6) >> 4);
              v42 = (v40 >> 4) - 2;
              v43 = __p[0];
              v44 = ((v40 << 28) - 0x100000000) >> 28;
              *(*(v13 + 8) + v44) = *(__p[0] + v42);
              *(*(v13 + 8) + 16 * v42) = *&v43[v44];
              if ((v40 >> 4) >= 3)
              {
                v45 = 0;
                v46 = (v41 << 32) - 0x300000000;
                do
                {
                  *(*(v13 + 8) + 16 * v45++) = *&v43[v46 >> 28];
                  v46 -= 0x100000000;
                }

                while (v42 != v45);
              }

              if (*(v13 + 40) - *(v13 + 32) >= 3uLL)
              {
                v93 = 0uLL;
                *&v94 = 0;
                sub_2621C8E70(&v93, *(v13 + 56), *(v13 + 64), (*(v13 + 64) - *(v13 + 56)) >> 2);
                if ((*(v13 + 40) - *(v13 + 32)) >= 0)
                {
                  operator new();
                }

                sub_2621CBEB0();
              }

              operator delete(v43);
            }
          }

          v47 = objc_msgSend_identifier(v13, v6, v7);
          v50 = objc_msgSend_copy(v47, v48, v49);

          v51 = objc_opt_new();
          sub_2622C533C(v13, v51);

          if (v13)
          {
            *(v13 + 105) = 0;
          }

          if (!objc_msgSend_type(v13, v52, v53))
          {
            v56 = objc_msgSend_identifier(v13, v54, v55);
            v57 = v50;
            v58 = v56;
            if (v85)
            {
              v59 = v57;
              v62 = objc_msgSend_array(MEMORY[0x277CBEB18], v60, v61);
              v63 = sub_2622B261C(v59, v85[5]);
              objc_msgSend_addObjectsFromArray_(v62, v64, v63);

              v65 = sub_2622B261C(v59, v85[4]);
              objc_msgSend_addObjectsFromArray_(v62, v66, v65);

              v67 = sub_2622B261C(v59, v85[6]);
              objc_msgSend_addObjectsFromArray_(v62, v68, v67);

              v69 = sub_2622B261C(v59, v85[7]);
              objc_msgSend_addObjectsFromArray_(v62, v70, v69);

              v71 = sub_2622B261C(v59, v85[12]);
              objc_msgSend_addObjectsFromArray_(v62, v72, v71);

              v73 = sub_2622B261C(v59, v85[13]);
              objc_msgSend_addObjectsFromArray_(v62, v74, v73);

              v95 = 0u;
              v96 = 0u;
              v93 = 0u;
              v94 = 0u;
              v75 = v62;
              v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v76, &v93, __p, 16);
              if (v77)
              {
                v78 = *v94;
                do
                {
                  for (i = 0; i != v77; ++i)
                  {
                    if (*v94 != v78)
                    {
                      objc_enumerationMutation(v75);
                    }

                    sub_2622C534C(*(*(&v93 + 1) + 8 * i), v58);
                  }

                  v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v80, &v93, __p, 16);
                }

                while (v77);
              }

              v9 = v81;
            }
          }

          v8 = v82;
        }

        ++v12;
      }

      while (v12 != v8);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v89, v97, 16);
    }

    while (v8);
  }
}

id sub_26235E988(float32x2_t *a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v314 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v253 = a4;
  v256 = a6;
  v257 = v10;
  v254 = v11;
  if (!a1)
  {
    v255 = 0;
    goto LABEL_136;
  }

  v255 = objc_msgSend_copy(v10, v12, v13);
  v16 = objc_msgSend_walls(v10, v14, v15);
  v19 = objc_msgSend_count(v16, v17, v18);
  v22 = objc_msgSend_curvedWalls(v10, v20, v21);
  v25 = objc_msgSend_count(v22, v23, v24);

  v28 = v25 + v19;
  v258 = objc_msgSend_count(v11, v26, v27);
  if (!(v25 + v19 + v258))
  {
    goto LABEL_136;
  }

  memset(v301, 0, sizeof(v301));
  v297 = 0u;
  v298 = 0u;
  v299 = 0u;
  v300 = 0u;
  v31 = objc_msgSend_walls(v257, v29, v30);
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v297, v313, 16);
  if (v35)
  {
    v36 = *v298;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v298 != v36)
        {
          objc_enumerationMutation(v31);
        }

        v38 = *(*(&v297 + 1) + 8 * i);
        objc_msgSend_quad(v38, v33, v34);
        *&v305 = v39;
        sub_2621CBA84(v301, &v305);
        objc_msgSend_quad(v38, v40, v41);
        *&v305 = v42;
        sub_2621CBA84(v301, &v305);
      }

      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v33, &v297, v313, 16);
    }

    while (v35);
  }

  v296 = 0u;
  v294 = 0u;
  v295 = 0u;
  v293 = 0u;
  v45 = objc_msgSend_curvedWalls(v257, v43, v44);
  v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v293, v312, 16);
  if (v49)
  {
    v50 = *v294;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v294 != v50)
        {
          objc_enumerationMutation(v45);
        }

        v52 = *(*(&v293 + 1) + 8 * j);
        objc_msgSend_quad(v52, v47, v48);
        *&v305 = v53;
        sub_2621CBA84(v301, &v305);
        objc_msgSend_quad(v52, v54, v55);
        *&v305 = v56;
        sub_2621CBA84(v301, &v305);
      }

      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v47, &v293, v312, 16);
    }

    while (v49);
  }

  v291 = 0u;
  v292 = 0u;
  v289 = 0u;
  v290 = 0u;
  v59 = objc_msgSend_curvedWalls(v257, v57, v58);
  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v289, v311, 16);
  if (v63)
  {
    v64 = *v290;
    do
    {
      for (k = 0; k != v63; ++k)
      {
        if (*v290 != v64)
        {
          objc_enumerationMutation(v59);
        }

        v66 = *(*(&v289 + 1) + 8 * k);
        objc_msgSend_startOrientation(v66, v61, v62);
        v68 = v67;
        objc_msgSend_endOrientation(v66, v69, v70);
        v72 = (v71 * 3.1416) / 180.0;
        for (m = ((v68 * 3.1416) / 180.0) + 0.05236; m < v72; m = m + 0.05236)
        {
          v74 = cosf(m);
          objc_msgSend_radius(v66, v75, v76);
          v78 = v77;
          v79 = sinf(m);
          objc_msgSend_radius(v66, v80, v81);
          v83 = v82;
          objc_msgSend_circleCenter(v66, v84, v85);
          v86.f32[0] = v74 * v78;
          v86.f32[1] = v79 * v83;
          *&v305 = vadd_f32(v86, v87);
          sub_2621CBA84(v301, &v305);
        }
      }

      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v61, &v289, v311, 16);
    }

    while (v63);
  }

  v287 = 0u;
  v288 = 0u;
  v285 = 0u;
  v286 = 0u;
  v88 = v11;
  v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v285, v310, 16);
  if (v92)
  {
    v93 = *v286;
    do
    {
      for (n = 0; n != v92; ++n)
      {
        if (*v286 != v93)
        {
          objc_enumerationMutation(v88);
        }

        v95 = *(*(&v285 + 1) + 8 * n);
        v96 = objc_msgSend_boxesDict(v95, v90, v91);
        v98 = objc_msgSend_objectForKey_(v96, v97, @"rawdetection");
        v99 = v98 == 0;

        if (!v99)
        {
          memset(v309, 0, sizeof(v309));
          v308 = 0u;
          v307 = 0u;
          v306 = 0u;
          v305 = 0u;
          v100 = objc_msgSend_boxesDict(v95, v90, v91);
          v102 = objc_msgSend_objectForKeyedSubscript_(v100, v101, @"rawdetection");
          sub_262211250(&v305, v102);

          __p[0] = v305;
          sub_2621CBA84(v301, __p);
          __p[0] = v306;
          sub_2621CBA84(v301, __p);
          __p[0] = v307;
          sub_2621CBA84(v301, __p);
          __p[0] = v308;
          sub_2621CBA84(v301, __p);
        }
      }

      v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v90, &v285, v310, 16);
    }

    while (v92);
  }

  if (v28 <= 3 && (a5 & 1) == 0)
  {
    v108 = a1[5].i8[0];
    if (v253 && (a1[5].i8[0] & 1) == 0)
    {
      v109 = v253[14];
      v112 = objc_msgSend_count(v109, v110, v111) == 0;

      if (!v112)
      {
        v113 = *(v253[10] + 48);
        if ((a1[5].i8[0] & 1) == 0)
        {
          a1[5].i8[0] = 1;
        }

        a1[4] = v113;
        goto LABEL_46;
      }

      v108 = a1[5].i8[0];
    }

    if (v108)
    {
LABEL_46:
      sub_2621CBA84(v301, &a1[4]);
    }
  }

  LOBYTE(v305) = 0;
  LOBYTE(v309[0]) = 0;
  if (!v256)
  {
    goto LABEL_64;
  }

  v114 = objc_msgSend_floors(v256, v103, v104);
  v117 = objc_msgSend_count(v114, v115, v116) == 0;

  if (v117)
  {
    goto LABEL_64;
  }

  v120 = objc_msgSend_floors(v256, v118, v119);
  v122 = objc_msgSend_objectAtIndexedSubscript_(v120, v121, 0);
  v125 = objc_msgSend_identifier(v122, v123, v124);
  v128 = objc_msgSend_copy(v125, v126, v127);
  v129 = a1[6];
  a1[6] = v128;

  v132 = objc_msgSend_floors(v256, v130, v131);
  v134 = objc_msgSend_objectAtIndexedSubscript_(v132, v133, 0);
  objc_msgSend_quad(v134, v135, v136);
  DWORD2(v305) = v137;
  DWORD2(v306) = v138;
  DWORD2(v307) = v139;
  *&v305 = v140;
  *&v306 = v141;
  DWORD2(v308) = v142;
  *&v307 = v143;
  *&v308 = v144;
  if ((v309[0] & 1) == 0)
  {
    LOBYTE(v309[0]) = 1;
  }

  if ((v309[0] & 1) == 0)
  {
    sub_2622386B8();
  }

  __p[1] = 0;
  __p[0] = 0;
  *&v273 = 0;
  sub_2621DDA38(__p, &v305, v309, 4uLL);
  v145 = __p[0];
  if ((__p[1] - __p[0]) == 64)
  {
    v146 = vsubq_f32(*(__p[0] + 1), *__p[0]);
    v147 = vmulq_f32(v146, v146).u64[0];
    *v147.i32 = sqrtf(vaddv_f32(v147));
    if (*v147.i32 >= 0.000001)
    {
      v148 = vdiv_f32(*v146.f32, vdup_lane_s32(v147, 0));
      if ((a1[2].i8[0] & 1) == 0)
      {
        a1[2].i8[0] = 1;
      }

      a1[1] = v148;
    }

    else if (a1[2].i8[0] == 1)
    {
      a1[2].i8[0] = 0;
    }

LABEL_63:
    operator delete(v145);
    goto LABEL_64;
  }

  if (a1[2].i8[0] == 1)
  {
    a1[2].i8[0] = 0;
  }

  if (v145)
  {
    goto LABEL_63;
  }

LABEL_64:
  if (v28)
  {
    v149 = v28;
  }

  else
  {
    v149 = 2 * v258;
  }

  sub_262298008(v284, &a1[1], v301, v149, v105, v106, v107);
  v151 = v284[0];
  if ((v284[1] - v284[0]) != 32)
  {
    goto LABEL_132;
  }

  for (ii = 0; ii != 4; ++ii)
  {
    if (v257)
    {
      v153 = v257[4];
    }

    else
    {
      v153 = 0;
    }

    *&v150 = v151[ii];
    DWORD2(v150) = v153;
    *(&v280 + ii) = v150;
  }

  v154 = objc_alloc_init(RS3DSurface);
  v155 = v154;
  *__p = v280;
  v273 = v281;
  v274 = v282;
  *v275 = v283;
  v251 = v154;
  if (v154)
  {
    objc_copyStruct(&v154[1], __p, 64, 1, 0);
    *(v155 + 104) = 5;
    sub_2622C533C(v155, *&a1[6]);
    *(v155 + 105) = 1;
    *(v155 + 108) = 1065353216;
  }

  else
  {
    sub_2622C533C(0, *&a1[6]);
  }

  if (a5)
  {
    memset(v302, 0, sizeof(v302));
    v276 = 0u;
    v277 = 0u;
    v278 = 0u;
    v279 = 0u;
    v158 = objc_msgSend_curvedWalls(v257, v156, v157);
    v162 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v159, &v276, v304, 16);
    if (v162)
    {
      v163 = *v277;
      do
      {
        for (jj = 0; jj != v162; ++jj)
        {
          if (*v277 != v163)
          {
            objc_enumerationMutation(v158);
          }

          v165 = *(*(&v276 + 1) + 8 * jj);
          v166 = objc_msgSend_identifier(v165, v160, v161);
          v169 = objc_msgSend_UUIDString(v166, v167, v168);
          v170 = v169;
          v173 = objc_msgSend_UTF8String(v169, v171, v172);
          sub_2621D0F64(&v271, v173);
          objc_msgSend_quad(v165, v174, v175);
          v259 = v176;
          objc_msgSend_quad(v165, v177, v178);
          sub_2621CC174(__p, &v271, 1, v259, v179);
          if (SHIBYTE(v271.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v271.__r_.__value_.__l.__data_);
          }

          sub_2621CC20C(v302, __p);
          if (v275[0])
          {
            v275[1] = v275[0];
            operator delete(v275[0]);
          }

          if (SBYTE7(v273) < 0)
          {
            operator delete(__p[0]);
          }
        }

        v162 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v160, &v276, v304, 16);
      }

      while (v162);
    }

    v269 = 0u;
    v270 = 0u;
    v267 = 0u;
    v268 = 0u;
    v182 = objc_msgSend_walls(v257, v180, v181);
    v186 = objc_msgSend_countByEnumeratingWithState_objects_count_(v182, v183, &v267, v303, 16);
    if (v186)
    {
      v187 = *v268;
      do
      {
        for (kk = 0; kk != v186; ++kk)
        {
          if (*v268 != v187)
          {
            objc_enumerationMutation(v182);
          }

          v189 = *(*(&v267 + 1) + 8 * kk);
          v190 = objc_msgSend_identifier(v189, v184, v185);
          v193 = objc_msgSend_UUIDString(v190, v191, v192);
          v194 = v193;
          v197 = objc_msgSend_UTF8String(v193, v195, v196);
          sub_2621D0F64(&v266, v197);
          objc_msgSend_quad(v189, v198, v199);
          v260 = v200;
          objc_msgSend_quad(v189, v201, v202);
          sub_2621CC174(__p, &v266, 0, v260, v203);
          if (SHIBYTE(v266.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v266.__r_.__value_.__l.__data_);
          }

          sub_2621CC20C(v302, __p);
          if (v275[0])
          {
            v275[1] = v275[0];
            operator delete(v275[0]);
          }

          if (SBYTE7(v273) < 0)
          {
            operator delete(__p[0]);
          }
        }

        v186 = objc_msgSend_countByEnumeratingWithState_objects_count_(v182, v184, &v267, v303, 16);
      }

      while (v186);
    }

    memset(v263, 0, sizeof(v263));
    sub_262291970(&v264, v302, 1, v263);
    __p[0] = v263;
    sub_2621CC514(__p);
    v205 = v264;
    v204 = v265;
    v206 = v265 - v264;
    v207 = 0xCCCCCCCCCCCCCCCDLL * (v265 - v264);
    if (v207 >= 4)
    {
      if ((v309[0] & 1) == 0)
      {
        v305 = v280;
        v306 = v281;
        v307 = v282;
        v308 = v283;
        LOBYTE(v309[0]) = 1;
      }

      sub_2621CD160(__p, 4uLL);
      v208 = 0;
      v209 = v264;
      v210 = __p[0];
      v211 = v207;
      v212 = v207;
      while (1)
      {
        v213 = *(&v305 + v208);
        if (v208)
        {
          v214 = (v212 + 1) % v207;
          v212 = v207;
          if ((v214 + 3 - v208) % v207 != v211)
          {
            v215 = 3.4028e38;
            v212 = v207;
            do
            {
              v216 = vsub_f32(*&v213, v209[5 * v214]);
              v217 = sqrtf(vaddv_f32(vmul_f32(v216, v216)));
              if (v217 < v215)
              {
                v215 = v217;
                v212 = v214;
              }

              if (v214 + 1 == v207)
              {
                v214 = 0;
              }

              else
              {
                ++v214;
              }
            }

            while ((v214 + 3 - v208) % v207 != v211);
          }

          v210[v208] = v212;
        }

        else
        {
          v212 = v207;
          if (v204 != v205)
          {
            v218 = 0;
            v219 = 3.4028e38;
            v220 = v209;
            v212 = v207;
            do
            {
              v221 = *v220;
              v220 += 5;
              v222 = vsub_f32(*&v213, v221);
              v223 = sqrtf(vaddv_f32(vmul_f32(v222, v222)));
              if (v223 < v219)
              {
                v219 = v223;
                v212 = v218;
              }

              ++v218;
            }

            while (v207 != v218);
          }

          *v210 = v212;
          v211 = v212;
        }

        if (++v208 == 4)
        {
          if ((v206 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_2621CBEB0();
        }
      }
    }

    LOBYTE(v262) = 0;
    sub_26232C090(__p, 4, &v262);
    LODWORD(v261) = 1036831949;
    sub_2621CD1D8(&v262, 4uLL, &v261);
    sub_2621CBF10(1uLL);
  }

  v224 = objc_msgSend_array(MEMORY[0x277CBEB18], v156, v157);
  objc_msgSend_addObject_(v224, v225, v251);
  sub_2622AE960(v255, v224);
  v228 = objc_msgSend_walls(v255, v226, v227);
  v231 = objc_msgSend_count(v228, v229, v230);
  v234 = objc_msgSend_walls(v257, v232, v233);
  if (v231 < objc_msgSend_count(v234, v235, v236))
  {

LABEL_130:
    sub_2622B1D54(v255, v239, v240);
    goto LABEL_131;
  }

  v241 = objc_msgSend_curvedWalls(v255, v237, v238);
  v244 = objc_msgSend_count(v241, v242, v243);
  v247 = objc_msgSend_curvedWalls(v257, v245, v246);
  LODWORD(v244) = v244 < objc_msgSend_count(v247, v248, v249);

  if (v244)
  {
    goto LABEL_130;
  }

LABEL_131:

  v151 = v284[0];
LABEL_132:
  if (v151)
  {
    operator delete(v151);
  }

  if (v301[0])
  {
    operator delete(v301[0]);
  }

LABEL_136:

  return v255;
}

void sub_262360974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  operator delete(v65);
  a54 = &a65;
  sub_2621CC5A0(&a54);
  a65 = &STACK[0x478];
  sub_2621CC628(&a65);

  if (STACK[0x348])
  {
    operator delete(STACK[0x348]);
  }

  if (STACK[0x460])
  {
    operator delete(STACK[0x460]);
  }

  _Unwind_Resume(a1);
}

void sub_262360F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a2;
  while (1)
  {
    sub_2623616E4(a1, v4);
    a1 += 40;
    v4 += 40;
    if (v4 == a3)
    {
      break;
    }

    if (a1 == v6)
    {
      v6 = v4;
    }
  }

  if (a1 != v6)
  {
    v7 = v6;
    do
    {
      while (1)
      {
        sub_2623616E4(a1, v6);
        a1 += 40;
        v6 += 40;
        if (v6 == a3)
        {
          break;
        }

        if (a1 == v7)
        {
          v7 = v6;
        }
      }

      v6 = v7;
    }

    while (a1 != v7);
  }
}

char *sub_262360FF0(char *__src, char *a2, char *a3)
{
  v3 = a2 - __src;
  if (a2 != __src)
  {
    v4 = a3 - a2;
    if (a3 != a2)
    {
      v5 = __src;
      if (__src + 1 == a2)
      {
        v6 = *__src;
        __src = memmove(__src, a2, a3 - a2);
        v5[v4] = v6;
      }

      else if (a2 + 1 == a3)
      {
        v7 = *(a3 - 1);
        if (a3 - 1 != __src)
        {
          __src = memmove(__src + 1, __src, a3 - 1 - __src);
        }

        *v5 = v7;
      }

      else if (v3 == v4)
      {
        v8 = __src + 1;
        v9 = a2 + 1;
        do
        {
          v10 = *(v8 - 1);
          *(v8 - 1) = *(v9 - 1);
          *(v9 - 1) = v10;
          if (v8 == a2)
          {
            break;
          }

          ++v8;
        }

        while (v9++ != a3);
      }

      else
      {
        v12 = a2 - __src;
        do
        {
          v13 = v12;
          v12 = v4;
          v4 = v13 % v4;
        }

        while (v4);
        v14 = &__src[v12];
        do
        {
          v16 = *--v14;
          v15 = v16;
          v17 = &v14[v3];
          v18 = v14;
          do
          {
            v19 = v17;
            *v18 = *v17;
            v20 = (a3 - v17);
            if (v3 >= v20)
            {
              v17 = (a2 - v20);
            }

            else
            {
              v17 = &v19[v3];
            }

            v18 = v19;
          }

          while (v17 != v14);
          *v19 = v15;
        }

        while (v14 != __src);
      }
    }
  }

  return __src;
}

double sub_262361124(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = a4;
  v16 = a2;
  *&v14 = a6;
  *(&v14 + 1) = a7;
  for (i = 0; v15 != a5; a4 = v15)
  {
    v10 = v16;
    v16 = sub_2623611FC(v16, a3, a4 + 4);
    sub_262361424((v16 == v10), &v16, &v15, &v14, &i);
    if (v16 == a3)
    {
      break;
    }

    v11 = v15;
    v15 = sub_2623611FC(v15, a5, v16 + 4);
    sub_262361424((v15 == v11), &v16, &v15, &v14, &i);
  }

  *a1 = a3;
  *(a1 + 8) = a5;
  result = *&v14;
  *(a1 + 16) = v14;
  return result;
}

void *sub_2623611FC(void *a1, void *a2, void *a3)
{
  if (a1 == a2)
  {
    return a2;
  }

  v4 = a1;
  if ((sub_26225E3EC(a1 + 4, a3) & 0x80) != 0)
  {
    v7 = 1;
LABEL_6:
    if (v7)
    {
      v8 = 0;
      v9 = v4;
      while (v9 != a2)
      {
        v10 = v9[1];
        v11 = v9;
        if (v10)
        {
          do
          {
            v9 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v9 = v11[2];
            v12 = *v9 == v11;
            v11 = v9;
          }

          while (!v12);
        }

        if (++v8 == v7)
        {
          v13 = v7;
          v8 = v7;
          goto LABEL_28;
        }
      }

      v13 = v7;
    }

    else
    {
      v13 = 0;
      v8 = 0;
      v9 = v4;
    }

LABEL_28:
    while (v9 != a2)
    {
      if ((sub_26225E3EC(v9 + 4, a3) & 0x80) == 0)
      {
        goto LABEL_33;
      }

      v7 *= 2;
      v4 = v9;
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = 0;
      v13 = -v7;
      if (-v7 > 1)
      {
        v14 = -v7;
      }

      else
      {
        v14 = 1;
      }

      while (v9 != a2)
      {
        v15 = *v9;
        v16 = v9;
        if (*v9)
        {
          do
          {
            v9 = v15;
            v15 = v15[1];
          }

          while (v15);
        }

        else
        {
          do
          {
            v9 = v16[2];
            v12 = *v9 == v16;
            v16 = v9;
          }

          while (v12);
        }

        if (++v8 == v14)
        {
          v8 = v14;
          goto LABEL_28;
        }
      }
    }

    v9 = a2;
LABEL_33:
    v17 = v8 - v13 + v7;
    if (v17)
    {
      if (v17 == 1)
      {
        return v9;
      }

      else
      {
        do
        {
          v18 = v17 >> 1;
          v19 = v4;
          if (v17 >= 2)
          {
            v20 = v17 >> 1;
            v21 = v4;
            do
            {
              v22 = v21[1];
              if (v22)
              {
                do
                {
                  v19 = v22;
                  v22 = *v22;
                }

                while (v22);
              }

              else
              {
                do
                {
                  v19 = v21[2];
                  v12 = *v19 == v21;
                  v21 = v19;
                }

                while (!v12);
              }

              v21 = v19;
            }

            while (v20-- > 1);
          }

          if ((sub_26225E3EC(v19 + 4, a3) & 0x80) != 0)
          {
            v24 = v19[1];
            if (v24)
            {
              do
              {
                v4 = v24;
                v24 = *v24;
              }

              while (v24);
            }

            else
            {
              do
              {
                v4 = v19[2];
                v12 = *v4 == v19;
                v19 = v4;
              }

              while (!v12);
            }

            v18 = v17 + ~v18;
          }

          v17 = v18;
        }

        while (v18);
      }
    }
  }

  return v4;
}

uint64_t **sub_262361424(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t ****a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = sub_262361530(*a4, a4[1], (*a2 + 32), *a2 + 32);
      a4[1] = result;
      v9 = result[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = result[2];
          v11 = *v10 == result;
          result = v10;
        }

        while (!v11);
      }

      a4[1] = v10;
      v12 = *a2;
      v13 = *(*a2 + 8);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      *a2 = v14;
      v15 = *a3;
      v16 = *(*a3 + 8);
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v15[2];
          v11 = *v17 == v15;
          v15 = v17;
        }

        while (!v11);
      }

      v18 = 0;
      *a3 = v17;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  *a5 = v18;
  return result;
}

uint64_t **sub_262361530(uint64_t ***a1, uint64_t **a2, void *a3, uint64_t a4)
{
  v8 = (a1 + 1);
  if (a1 + 1 != a2 && (sub_26225E3EC(a3, a2 + 4) & 0x80) == 0)
  {
    if ((sub_26225E3EC(a2 + 4, a3) & 0x80) == 0)
    {
      v20[3] = a2;
      v21 = a2;
      v9 = a2;
      if (!a2)
      {
        goto LABEL_25;
      }

      return v9;
    }

    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v19 = a2;
      do
      {
        v15 = v19[2];
        v17 = *v15 == v19;
        v19 = v15;
      }

      while (!v17);
    }

    if (v15 == v8 || (sub_26225E3EC(a3, v15 + 4) & 0x80) != 0)
    {
      if (v13)
      {
        v21 = v15;
      }

      else
      {
        v21 = a2;
        v15 = (a2 + 1);
      }

      goto LABEL_22;
    }

LABEL_19:
    v15 = sub_26225E318(a1, &v21, a3);
    goto LABEL_22;
  }

  v10 = *a2;
  if (*a1 == a2)
  {
    v12 = a2;
  }

  else
  {
    if (v10)
    {
      v11 = *a2;
      do
      {
        v12 = v11;
        v11 = v11[1];
      }

      while (v11);
    }

    else
    {
      v16 = a2;
      do
      {
        v12 = v16[2];
        v17 = *v12 == v16;
        v16 = v12;
      }

      while (v17);
    }

    if ((sub_26225E3EC(v12 + 4, a3) & 0x80) == 0)
    {
      goto LABEL_19;
    }
  }

  if (!v10)
  {
    v21 = a2;
    goto LABEL_25;
  }

  v21 = v12;
  v15 = v12 + 1;
LABEL_22:
  v9 = *v15;
  if (!*v15)
  {
LABEL_25:
    sub_262293118(v20, a1, a4);
  }

  return v9;
}

void sub_2623616E4(uint64_t a1, uint64_t a2)
{
  sub_262292E28(v8, a1);
  sub_262339704(v6, a1, a2);
  sub_2621CC7B4(v7);
  sub_262339704(v4, a2, v8);
  sub_2621CC7B4(v5);
  sub_2621CC7B4(v9);
}

void sub_262361768(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v3 = *(a1 + 48);
    *(a1 + 48) = v2;

    if (*(a1 + 40) == 1)
    {
      *(a1 + 40) = 0;
    }

    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 0;
    }
  }
}

uint64_t sub_262361958(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = 0.0;
  v7 = 0.0;
  if (v4)
  {
    v7 = v4[3];
  }

  if (v5)
  {
    v6 = v5[3];
  }

  if (v7 >= v6)
  {
    v9 = 0.0;
    v10 = 0.0;
    if (v4)
    {
      v10 = v4[3];
    }

    if (v5)
    {
      v9 = v5[3];
    }

    v8 = v10 > v9;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

uint64_t sub_2623619D8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  objc_msgSend_timestamp(a2, v5, v6);
  v8 = v7;
  objc_msgSend_timestamp(v4, v9, v10);
  if (v8 < v11)
  {
    v12 = -1;
  }

  else
  {
    v12 = v8 > v11;
  }

  return v12;
}

void sub_262361A44(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = (v4 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_2621CBEB0();
    }

    v10 = v3 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v12 = (v4 - *a1) >> 4;
    v13 = 16 * v8;
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    *(v13 + 8) = *(a2 + 2);
    v6 = 16 * v8 + 16;
    v15 = v6;
    v16 = 16 * v8 - 16 * v12;
    if (v7 != v4)
    {
      v17 = v7;
      v18 = v16;
      do
      {
        v19 = *v17;
        *v17 = 0;
        *v18 = v19;
        *(v18 + 8) = *(v17 + 2);
        v17 += 2;
        v18 += 16;
      }

      while (v17 != v4);
      do
      {
        v20 = *v7;
        v7 += 2;
      }

      while (v7 != v4);
      v7 = *a1;
      v15 = v6;
    }

    *a1 = v16;
    *(a1 + 8) = v15;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    *(v4 + 8) = *(a2 + 2);
    v6 = v4 + 16;
  }

  *(a1 + 8) = v6;
}

void sub_262361BB8(char *a1, char *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v136 = a2 - 16;
    v8 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v8;
          v9 = &a2[-v8] >> 4;
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3uLL:
                v67 = *(v8 + 24);
                v68 = *(a2 - 2);
                if (v67 <= *(v8 + 8))
                {
                  if (v68 <= v67)
                  {
                    return;
                  }

                  v65 = v8 + 16;
                  v66 = a2 - 16;
                  goto LABEL_174;
                }

                if (v68 > v67)
                {
                  goto LABEL_113;
                }

                sub_2623626B8(v8, v8 + 16);
                if (*(a2 - 2) <= *(v8 + 24))
                {
                  return;
                }

                v69 = v8 + 16;
LABEL_114:
                v70 = a2 - 16;
LABEL_115:

                sub_2623626B8(v69, v70);
                return;
              case 4uLL:

                sub_26236271C(v8, v8 + 16, v8 + 32, v136);
                return;
              case 5uLL:
                sub_26236271C(v8, v8 + 16, v8 + 32, v8 + 48);
                if (*(a2 - 2) <= *(v8 + 56))
                {
                  return;
                }

                sub_2623626B8(v8 + 48, v136);
                if (*(v8 + 56) <= *(v8 + 40))
                {
                  return;
                }

                sub_2623626B8(v8 + 32, v8 + 48);
                if (*(v8 + 40) <= *(v8 + 24))
                {
                  return;
                }

                v65 = v8 + 16;
                v66 = (v8 + 32);
LABEL_174:
                sub_2623626B8(v65, v66);
                if (*(v8 + 24) <= *(v8 + 8))
                {
                  return;
                }

                v70 = (v8 + 16);
                v69 = v8;
                goto LABEL_115;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              if (*(a2 - 2) <= *(v8 + 8))
              {
                return;
              }

LABEL_113:
              v69 = v8;
              goto LABEL_114;
            }
          }

          if (v9 <= 23)
          {
            v71 = (v8 + 16);
            v73 = v8 == a2 || v71 == a2;
            if (a4)
            {
              if (!v73)
              {
                v74 = 0;
                v75 = v8;
                do
                {
                  v76 = *(v75 + 24);
                  v77 = *(v75 + 8);
                  v75 = v71;
                  if (v76 > v77)
                  {
                    v78 = *v71;
                    *v71 = 0;
                    v79 = v74;
                    while (1)
                    {
                      v80 = &a1[v79];
                      v81 = *&a1[v79];
                      *v80 = 0;
                      v82 = *&a1[v79 + 16];
                      *(v80 + 2) = v81;

                      *(v80 + 6) = *(v80 + 2);
                      if (!v79)
                      {
                        break;
                      }

                      v79 -= 16;
                      if (v76 <= *(v80 - 2))
                      {
                        v83 = &a1[v79 + 16];
                        goto LABEL_136;
                      }
                    }

                    v83 = a1;
LABEL_136:
                    v84 = *v83;
                    *v83 = v78;

                    *(v83 + 2) = v76;
                  }

                  v71 = (v75 + 16);
                  v74 += 16;
                }

                while ((v75 + 16) != a2);
              }
            }

            else if (!v73)
            {
              do
              {
                v129 = v71;
                v130 = *(a1 + 6);
                if (v130 > *(a1 + 2))
                {
                  v131 = *v71;
                  *v71 = 0;
                  do
                  {
                    v132 = a1;
                    v133 = *a1;
                    *a1 = 0;
                    v134 = *(a1 + 2);
                    *(a1 + 2) = v133;

                    *(a1 + 6) = *(a1 + 2);
                    a1 -= 16;
                  }

                  while (v130 > *(v132 - 2));
                  v135 = *(a1 + 2);
                  *(a1 + 2) = v131;

                  *(a1 + 6) = v130;
                }

                v71 = v129 + 16;
                a1 = v129;
              }

              while (v129 + 16 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v8 != a2)
            {
              v85 = v10 >> 1;
              v86 = v10 >> 1;
              do
              {
                v87 = v86;
                if (v85 >= v86)
                {
                  v88 = (2 * v86) | 1;
                  v89 = &a1[16 * v88];
                  if (2 * v87 + 2 < v9)
                  {
                    v90 = *(v89 + 2);
                    v91 = *(v89 + 6);
                    v89 += 16 * (v90 > v91);
                    if (v90 > v91)
                    {
                      v88 = 2 * v87 + 2;
                    }
                  }

                  v92 = &a1[16 * v87];
                  v93 = *(v92 + 2);
                  if (*(v89 + 2) <= v93)
                  {
                    v94 = *v92;
                    *v92 = 0;
                    do
                    {
                      v95 = v92;
                      v92 = v89;
                      v96 = *v89;
                      *v92 = 0;
                      v97 = *v95;
                      *v95 = v96;

                      *(v95 + 2) = *(v92 + 2);
                      if (v85 < v88)
                      {
                        break;
                      }

                      v98 = (2 * v88) | 1;
                      v89 = &a1[16 * v98];
                      if (2 * v88 + 2 < v9)
                      {
                        v99 = *(v89 + 2);
                        v100 = *(v89 + 6);
                        v89 += 16 * (v99 > v100);
                        if (v99 > v100)
                        {
                          v98 = 2 * v88 + 2;
                        }
                      }

                      v88 = v98;
                    }

                    while (*(v89 + 2) <= v93);
                    v101 = *v92;
                    *v92 = v94;

                    *(v92 + 2) = v93;
                  }
                }

                v86 = v87 - 1;
              }

              while (v87);
              do
              {
                v102 = 0;
                v103 = *a1;
                *a1 = 0;
                v104 = *(a1 + 2);
                v105 = a1;
                do
                {
                  v106 = &v105[16 * v102];
                  v107 = v106 + 16;
                  if (2 * v102 + 2 >= v9)
                  {
                    v102 = (2 * v102) | 1;
                  }

                  else
                  {
                    v108 = *(v106 + 6);
                    v109 = *(v106 + 10);
                    v110 = v106 + 32;
                    if (v108 <= v109)
                    {
                      v102 = (2 * v102) | 1;
                    }

                    else
                    {
                      v107 = v110;
                      v102 = 2 * v102 + 2;
                    }
                  }

                  v111 = *v107;
                  *v107 = 0;
                  v112 = *v105;
                  *v105 = v111;

                  *(v105 + 2) = *(v107 + 2);
                  v105 = v107;
                }

                while (v102 <= ((v9 - 2) >> 1));
                v113 = a2 - 16;
                if (v107 == a2 - 16)
                {
                  v128 = *v107;
                  *v107 = v103;

                  *(v107 + 2) = v104;
                }

                else
                {
                  v114 = *(a2 - 2);
                  *(a2 - 2) = 0;
                  v115 = *v107;
                  *v107 = v114;

                  *(v107 + 2) = *(a2 - 2);
                  v116 = *(a2 - 2);
                  *(a2 - 2) = v103;

                  *(a2 - 2) = v104;
                  v117 = (v107 - a1 + 16) >> 4;
                  v118 = v117 < 2;
                  v119 = v117 - 2;
                  if (!v118)
                  {
                    v120 = v119 >> 1;
                    v121 = &a1[16 * (v119 >> 1)];
                    v122 = *(v107 + 2);
                    if (*(v121 + 2) > v122)
                    {
                      v123 = *v107;
                      *v107 = 0;
                      do
                      {
                        v124 = v107;
                        v107 = v121;
                        v125 = *v121;
                        *v107 = 0;
                        v126 = *v124;
                        *v124 = v125;

                        *(v124 + 2) = *(v107 + 2);
                        if (!v120)
                        {
                          break;
                        }

                        v120 = (v120 - 1) >> 1;
                        v121 = &a1[16 * v120];
                      }

                      while (*(v121 + 2) > v122);
                      v127 = *v107;
                      *v107 = v123;

                      *(v107 + 2) = v122;
                    }
                  }
                }

                a2 = v113;
                v118 = v9-- <= 2;
              }

              while (!v118);
            }

            return;
          }

          v11 = v8 + 16 * (v9 >> 1);
          v12 = *(a2 - 2);
          if (v9 >= 0x81)
          {
            v13 = *(v11 + 8);
            if (v13 <= *(a1 + 2))
            {
              if (v12 <= v13 || (sub_2623626B8(&a1[16 * (v9 >> 1)], v136), *(v11 + 8) <= *(a1 + 2)))
              {
LABEL_26:
                v19 = *(v11 - 8);
                v20 = *(a2 - 6);
                if (v19 <= *(a1 + 6))
                {
                  if (v20 <= v19 || (sub_2623626B8(v11 - 16, (a2 - 32)), *(v11 - 8) <= *(a1 + 6)))
                  {
LABEL_39:
                    v23 = *(v11 + 24);
                    v24 = *(a2 - 10);
                    if (v23 <= *(a1 + 10))
                    {
                      if (v24 <= v23 || (sub_2623626B8(v11 + 16, (a2 - 48)), *(v11 + 24) <= *(a1 + 10)))
                      {
LABEL_48:
                        v27 = *(v11 + 8);
                        v28 = *(v11 + 24);
                        if (v27 <= *(v11 - 8))
                        {
                          if (v28 <= v27)
                          {
                            goto LABEL_57;
                          }

                          sub_2623626B8(v11, v11 + 16);
                          if (*(v11 + 8) <= *(v11 - 8))
                          {
                            goto LABEL_57;
                          }

                          v30 = v11 - 16;
                          v29 = v11;
                        }

                        else if (v28 <= v27)
                        {
                          sub_2623626B8(v11 - 16, v11);
                          if (*(v11 + 24) <= *(v11 + 8))
                          {
LABEL_57:
                            v31 = *a1;
                            *a1 = 0;
                            v32 = *v11;
                            *v11 = 0;
                            v33 = *a1;
                            *a1 = v32;

                            v34 = *v11;
                            *v11 = v31;

                            v35 = *(a1 + 2);
                            *(a1 + 2) = *(v11 + 8);
                            *(v11 + 8) = v35;
                            goto LABEL_58;
                          }

                          v29 = v11 + 16;
                          v30 = v11;
                        }

                        else
                        {
                          v29 = v11 + 16;
                          v30 = v11 - 16;
                        }

                        sub_2623626B8(v30, v29);
                        goto LABEL_57;
                      }

                      v25 = a1 + 32;
                      v26 = (v11 + 16);
                    }

                    else
                    {
                      v25 = a1 + 32;
                      if (v24 <= v23)
                      {
                        sub_2623626B8(v25, v11 + 16);
                        if (*(a2 - 10) <= *(v11 + 24))
                        {
                          goto LABEL_48;
                        }

                        v25 = (v11 + 16);
                      }

                      v26 = a2 - 48;
                    }

                    sub_2623626B8(v25, v26);
                    goto LABEL_48;
                  }

                  v21 = a1 + 16;
                  v22 = (v11 - 16);
                }

                else
                {
                  v21 = a1 + 16;
                  if (v20 <= v19)
                  {
                    sub_2623626B8(v21, v11 - 16);
                    if (*(a2 - 6) <= *(v11 - 8))
                    {
                      goto LABEL_39;
                    }

                    v21 = (v11 - 16);
                  }

                  v22 = a2 - 32;
                }

                sub_2623626B8(v21, v22);
                goto LABEL_39;
              }

              v14 = a1;
              v15 = &a1[16 * (v9 >> 1)];
            }

            else
            {
              v14 = a1;
              if (v12 <= v13)
              {
                sub_2623626B8(a1, &a1[16 * (v9 >> 1)]);
                if (*(a2 - 2) <= *(v11 + 8))
                {
                  goto LABEL_26;
                }

                v14 = &a1[16 * (v9 >> 1)];
              }

              v15 = a2 - 16;
            }

            sub_2623626B8(v14, v15);
            goto LABEL_26;
          }

          v16 = *(a1 + 2);
          if (v16 > *(v11 + 8))
          {
            v17 = &a1[16 * (v9 >> 1)];
            if (v12 <= v16)
            {
              sub_2623626B8(v17, a1);
              if (*(a2 - 2) <= *(a1 + 2))
              {
                goto LABEL_58;
              }

              v17 = a1;
            }

            v18 = a2 - 16;
            goto LABEL_34;
          }

          if (v12 > v16)
          {
            sub_2623626B8(a1, v136);
            if (*(a1 + 2) > *(v11 + 8))
            {
              v17 = &a1[16 * (v9 >> 1)];
              v18 = a1;
LABEL_34:
              sub_2623626B8(v17, v18);
            }
          }

LABEL_58:
          --a3;
          if (a4)
          {
            break;
          }

          v36 = *(a1 + 2);
          if (*(a1 - 2) > v36)
          {
            goto LABEL_61;
          }

          v52 = *a1;
          *a1 = 0;
          if (v36 <= *(a2 - 2))
          {
            v55 = a1 + 16;
            do
            {
              v8 = v55;
              if (v55 >= a2)
              {
                break;
              }

              v56 = *(v55 + 2);
              v55 += 16;
            }

            while (v36 <= v56);
          }

          else
          {
            v53 = a1;
            do
            {
              v8 = (v53 + 16);
              v54 = *(v53 + 6);
              v53 += 16;
            }

            while (v36 <= v54);
          }

          v57 = a2;
          if (v8 < a2)
          {
            v58 = a2;
            do
            {
              v57 = v58 - 16;
              v59 = *(v58 - 2);
              v58 -= 16;
            }

            while (v36 > v59);
          }

          while (v8 < v57)
          {
            sub_2623626B8(v8, v57);
            do
            {
              v60 = *(v8 + 24);
              v8 += 16;
            }

            while (v36 <= v60);
            do
            {
              v61 = *(v57 - 2);
              v57 -= 16;
            }

            while (v36 > v61);
          }

          if ((v8 - 16) != a1)
          {
            v62 = *(v8 - 16);
            *(v8 - 16) = 0;
            v63 = *a1;
            *a1 = v62;

            *(a1 + 2) = *(v8 - 8);
          }

          v64 = *(v8 - 16);
          *(v8 - 16) = v52;

          a4 = 0;
          *(v8 - 8) = v36;
        }

        v36 = *(a1 + 2);
LABEL_61:
        v37 = *a1;
        *a1 = 0;
        v38 = a1;
        do
        {
          v39 = v38;
          v38 += 16;
        }

        while (*(v39 + 6) > v36);
        v40 = a2;
        if (v39 == a1)
        {
          v43 = a2;
          while (v38 < v43)
          {
            v41 = v43 - 16;
            v44 = *(v43 - 2);
            v43 -= 16;
            if (v44 > v36)
            {
              goto LABEL_71;
            }
          }

          v41 = v43;
        }

        else
        {
          do
          {
            v41 = v40 - 16;
            v42 = *(v40 - 2);
            v40 -= 16;
          }

          while (v42 <= v36);
        }

LABEL_71:
        if (v38 >= v41)
        {
          v8 = v38;
        }

        else
        {
          v45 = v41;
          v8 = v38;
          do
          {
            sub_2623626B8(v8, v45);
            do
            {
              v46 = *(v8 + 24);
              v8 += 16;
            }

            while (v46 > v36);
            do
            {
              v47 = *(v45 - 8);
              v45 -= 16;
            }

            while (v47 <= v36);
          }

          while (v8 < v45);
        }

        if ((v8 - 16) != a1)
        {
          v48 = *(v8 - 16);
          *(v8 - 16) = 0;
          v49 = *a1;
          *a1 = v48;

          *(a1 + 2) = *(v8 - 8);
        }

        v50 = *(v8 - 16);
        *(v8 - 16) = v37;

        *(v8 - 8) = v36;
        if (v38 >= v41)
        {
          break;
        }

LABEL_84:
        sub_262361BB8(a1, (v8 - 16), a3, a4 & 1);
        a4 = 0;
      }

      v51 = sub_262362834(a1, (v8 - 16));
      if (sub_262362834(v8, a2))
      {
        break;
      }

      if (!v51)
      {
        goto LABEL_84;
      }
    }

    a2 = (v8 - 16);
    if (!v51)
    {
      continue;
    }

    break;
  }
}

void sub_262362638(void ***a1)
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
        v6 = *(v4 - 2);
        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2623626B8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;

  v7 = *a2;
  *a2 = v4;

  v8 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v8;
}

void sub_26236271C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 8);
  v9 = *(a3 + 8);
  if (v8 <= *(a1 + 8))
  {
    if (v9 > v8)
    {
      sub_2623626B8(a2, a3);
      if (*(a2 + 8) > *(v7 + 8))
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 > v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      sub_2623626B8(a1, v10);
      goto LABEL_10;
    }

    sub_2623626B8(a1, a2);
    if (*(a3 + 8) > *(a2 + 8))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 8) > *(a3 + 8))
  {
    sub_2623626B8(a3, a4);
    if (*(a3 + 8) > *(a2 + 8))
    {
      sub_2623626B8(a2, a3);
      if (*(a2 + 8) > *(v7 + 8))
      {

        sub_2623626B8(v7, a2);
      }
    }
  }
}

BOOL sub_262362834(char *a1, char *a2)
{
  v3 = a1;
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *(a1 + 6);
        v9 = *(a2 - 2);
        if (v8 > *(a1 + 2))
        {
          if (v9 <= v8)
          {
            sub_2623626B8(a1, (a1 + 16));
            if (*(a2 - 2) <= *(v3 + 6))
            {
              return 1;
            }

            a1 = v3 + 16;
          }

          v5 = a2 - 16;
          goto LABEL_31;
        }

        if (v9 <= v8)
        {
          return 1;
        }

        v6 = a1 + 16;
        v7 = a2 - 16;
        break;
      case 4:
        sub_26236271C(a1, (a1 + 16), (a1 + 32), (a2 - 16));
        return 1;
      case 5:
        sub_26236271C(a1, (a1 + 16), (a1 + 32), (a1 + 48));
        if (*(a2 - 2) <= *(v3 + 14))
        {
          return 1;
        }

        sub_2623626B8((v3 + 48), (a2 - 16));
        if (*(v3 + 14) <= *(v3 + 10))
        {
          return 1;
        }

        sub_2623626B8((v3 + 32), (v3 + 48));
        if (*(v3 + 10) <= *(v3 + 6))
        {
          return 1;
        }

        v6 = v3 + 16;
        v7 = v3 + 32;
        break;
      default:
        goto LABEL_16;
    }

    sub_2623626B8(v6, v7);
    if (*(v3 + 6) > *(v3 + 2))
    {
      v5 = v3 + 16;
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 2) > *(a1 + 2))
    {
      v5 = a2 - 16;
LABEL_24:
      a1 = v3;
LABEL_31:
      sub_2623626B8(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 32;
  v11 = *(a1 + 6);
  v12 = *(a1 + 10);
  if (v11 > *(a1 + 2))
  {
    if (v12 <= v11)
    {
      sub_2623626B8(a1, (a1 + 16));
      if (*(v3 + 10) <= *(v3 + 6))
      {
        goto LABEL_36;
      }

      a1 = v3 + 16;
    }

    v13 = (v3 + 32);
    goto LABEL_35;
  }

  if (v12 > v11)
  {
    sub_2623626B8((a1 + 16), (a1 + 32));
    if (*(v3 + 6) > *(v3 + 2))
    {
      v13 = (v3 + 16);
      a1 = v3;
LABEL_35:
      sub_2623626B8(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 48;
  if (v3 + 48 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(v14 + 2);
    if (v17 > *(v10 + 2))
    {
      v18 = *v14;
      *v14 = 0;
      v19 = v15;
      while (1)
      {
        v20 = &v3[v19];
        v21 = *&v3[v19 + 32];
        *(v20 + 4) = 0;
        v22 = *&v3[v19 + 48];
        *(v20 + 6) = v21;

        *(v20 + 14) = *(v20 + 10);
        if (v19 == -32)
        {
          break;
        }

        v19 -= 16;
        if (v17 <= *(v20 + 6))
        {
          v23 = &v3[v19 + 48];
          goto LABEL_44;
        }
      }

      v23 = v3;
LABEL_44:
      v24 = *v23;
      *v23 = v18;

      *(v23 + 8) = v17;
      if (++v16 == 8)
      {
        return v14 + 16 == a2;
      }
    }

    v10 = v14;
    v15 += 16;
    v14 += 16;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void sub_262362D50(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_2621C74C4(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_262362DD4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_2621C7004(v4 - 5);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

RSFloorPlan *sub_262362E58(float *a1, void *a2, void *a3)
{
  v203[16] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v154 = v4;
  v155 = a1;
  if (!a1)
  {
LABEL_28:
    v24 = 0;
    goto LABEL_179;
  }

  if (!v4 || !objc_msgSend_count(v4, v5, v6))
  {
    if (a3)
    {
      v22 = MEMORY[0x277CCA9B8];
      v197 = *MEMORY[0x277CBEE30];
      v198 = @"Insufficient input!";
      v157 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, &v198, &v197, 1);
      objc_msgSend_errorWithDomain_code_userInfo_(v22, v23, @"com.apple.RoomScanCoreError", -1002);
      *a3 = v24 = 0;

      goto LABEL_179;
    }

    goto LABEL_28;
  }

  v176[0] = 0;
  v176[1] = 0;
  v177 = 0;
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  v164 = 0u;
  v7 = v154;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v199, v203, 16);
  if (v9)
  {
    v10 = *v200;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v200 != v10)
        {
          objc_enumerationMutation(v7);
        }

        *v189 = sub_262378FF8(*(*(&v199 + 1) + 8 * i));
        sub_2621D9F60(v176, v189);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v12, &v199, v203, 16);
    }

    while (v9);
    v164 = *v176;
  }

  v13 = v164;
  if (v164 == *(&v164 + 1))
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = v15 - v14;
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 2);
      v18 = v17 + 1;
      if (v17 + 1 > 0x1555555555555555)
      {
        sub_2621CBEB0();
      }

      if (0x5555555555555556 * (-v14 >> 2) > v18)
      {
        v18 = 0x5555555555555556 * (-v14 >> 2);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v14 >> 2) >= 0xAAAAAAAAAAAAAAALL)
      {
        v19 = 0x1555555555555555;
      }

      else
      {
        v19 = v18;
      }

      if (v19)
      {
        sub_262241270(v19);
      }

      v20 = 4 * ((v15 - v14) >> 2);
      *v20 = *v13;
      *(v20 + 8) = -1;
      v15 = v20 + 12;
      v21 = 12 * v17 + 12 * (v16 / -12);
      memcpy((v20 + 12 * (v16 / -12)), v14, v16);
      if (v14)
      {
        operator delete(v14);
      }

      v14 = v21;
      v13 += 2;
    }

    while (v13 != *(&v164 + 1));
  }

  v25 = v155[54];
  v182 = 0;
  v183 = 0;
  __p = 0;
  v26 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 2);
  sub_262349634(&__p, v14, v15, v26);
  sub_2623496B0(v189, 1, &__p, v25 * 0.5);
  if (__p)
  {
    v182 = __p;
    operator delete(__p);
  }

  sub_262336EFC(v189);
  v27 = DWORD1(v191);
  v178 = 0;
  v179 = 0;
  v180 = 0;
  sub_262349634(&v178, v189[0], v189[1], 0xAAAAAAAAAAAAAAABLL * ((v189[1] - v189[0]) >> 2));
  if (v27 == 1)
  {
    v173 = 0;
    __dst = 0;
    v175 = 0;
  }

  else
  {
    *v185 = 0u;
    v186 = 0u;
    LODWORD(v187) = 1065353216;
    LODWORD(v172) = 0;
    if (v15 == v14)
    {
      v38 = 0;
      __dst = 0;
      v175 = 0;
      v173 = 0;
    }

    else
    {
      v28 = 0;
      v29 = v178;
      v30 = 8;
      do
      {
        v171 = *&v29[v30];
        v167 = &v171;
        v31 = sub_2621C65A4(v185, v171, &v167);
        sub_2621C7CD0((v31 + 3), &v172);
        LODWORD(v172) = ++v28;
        v30 += 12;
      }

      while (v26 > v28);
      v32 = v186;
      __dst = 0;
      v175 = 0;
      v173 = 0;
      if (v186)
      {
        v33 = (v155[56] * ((v176[1] - v176[0]) >> 4));
        do
        {
          v34 = v32[3];
          v35 = v32[4];
          v36 = (v35 - v34) >> 2;
          if (v35 - v34 == 4 || v36 < v33)
          {
            sub_262282F1C(&v173, __dst, v34, v35, v36);
          }

          v32 = *v32;
        }

        while (v32);
        v38 = v186;
      }

      else
      {
        v38 = 0;
      }
    }

    sub_2621C7150(v38);
    v39 = v185[0];
    v185[0] = 0;
    if (v39)
    {
      operator delete(v39);
    }
  }

  if (v178)
  {
    operator delete(v178);
  }

  if (v189[0])
  {
    v189[1] = v189[0];
    operator delete(v189[0]);
  }

  if (v14)
  {
    operator delete(v14);
  }

  v40 = v176[0];
  v41 = v176[1];
  if (v176[0] == v176[1])
  {
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v42 = 0;
    v43 = 0;
    do
    {
      v44 = v43 - v42;
      v45 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 2) + 1;
      if (v45 > 0x1555555555555555)
      {
        sub_2621CBEB0();
      }

      if (0x5555555555555556 * (-v42 >> 2) > v45)
      {
        v45 = 0x5555555555555556 * (-v42 >> 2);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v42 >> 2) >= 0xAAAAAAAAAAAAAAALL)
      {
        v46 = 0x1555555555555555;
      }

      else
      {
        v46 = v45;
      }

      if (v46)
      {
        sub_262241270(v46);
      }

      v47 = 4 * ((v43 - v42) >> 2);
      *v47 = v40[2];
      *(v47 + 4) = 0xFFFFFFFF00000000;
      v43 = v47 + 12;
      v48 = (v47 + 12 * (v44 / -12));
      memcpy(v48, v42, v44);
      if (v42)
      {
        operator delete(v42);
      }

      v42 = v48;
      v40 += 4;
    }

    while (v40 != v41);
  }

  v49 = v155[55];
  v182 = 0;
  v183 = 0;
  __p = 0;
  v50 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 2);
  sub_262349634(&__p, v42, v43, v50);
  sub_2623496B0(v189, 1, &__p, v49 * 0.5);
  if (__p)
  {
    v182 = __p;
    operator delete(__p);
  }

  sub_262336EFC(v189);
  v51 = DWORD1(v191);
  v178 = 0;
  v179 = 0;
  v180 = 0;
  sub_262349634(&v178, v189[0], v189[1], 0xAAAAAAAAAAAAAAABLL * ((v189[1] - v189[0]) >> 2));
  if (v51 == 1)
  {
    v167 = 0;
    v168 = 0;
    v169 = 0;
  }

  else
  {
    *v185 = 0u;
    v186 = 0u;
    LODWORD(v187) = 1065353216;
    v171 = 0;
    if (v43 == v42)
    {
      v62 = 0;
      v168 = 0;
      v169 = 0;
      v167 = 0;
    }

    else
    {
      v52 = 0;
      v53 = v178;
      v54 = 8;
      do
      {
        v170 = *&v53[v54];
        v172 = &v170;
        v55 = sub_2621C65A4(v185, v170, &v172);
        sub_2621C7CD0((v55 + 3), &v171);
        v171 = ++v52;
        v54 += 12;
      }

      while (v50 > v52);
      v56 = v186;
      v168 = 0;
      v169 = 0;
      v167 = 0;
      if (v186)
      {
        v57 = (v155[56] * ((v176[1] - v176[0]) >> 4));
        do
        {
          v58 = v56[3];
          v59 = v56[4];
          v60 = (v59 - v58) >> 2;
          if (v59 - v58 == 4 || v60 < v57)
          {
            sub_262282F1C(&v167, v168, v58, v59, v60);
          }

          v56 = *v56;
        }

        while (v56);
        v62 = v186;
      }

      else
      {
        v62 = 0;
      }
    }

    sub_2621C7150(v62);
    v63 = v185[0];
    v185[0] = 0;
    if (v63)
    {
      operator delete(v63);
    }
  }

  if (v178)
  {
    operator delete(v178);
  }

  if (v189[0])
  {
    v189[1] = v189[0];
    operator delete(v189[0]);
  }

  if (v42)
  {
    operator delete(v42);
  }

  v158 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v66 = v173;
  v65 = __dst;
  if (v173 != __dst)
  {
    v67 = v173;
    do
    {
      objc_msgSend_addIndex_(v158, v64, *v67++);
    }

    while (v67 != v65);
  }

  v68 = v167;
  v69 = v168;
  if (v167 != v168)
  {
    v70 = v167;
    do
    {
      objc_msgSend_addIndex_(v158, v64, *v70++);
    }

    while (v70 != v69);
  }

  if (v68)
  {
    operator delete(v68);
  }

  if (v66)
  {
    operator delete(v66);
  }

  if (v176[0])
  {
    operator delete(v176[0]);
  }

  v71 = objc_alloc(MEMORY[0x277CBEB18]);
  v153 = objc_msgSend_initWithArray_(v71, v72, v7);
  if (objc_msgSend_count(v158, v73, v74))
  {
    if (a3)
    {
      v77 = MEMORY[0x277CCA9B8];
      v195 = *MEMORY[0x277CBEE30];
      v196 = @"Outlier Room is found!";
      v78 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v75, &v196, &v195, 1);
      *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v77, v79, @"com.apple.RoomScanCoreError", -1001, v78);
    }

    objc_msgSend_removeObjectsAtIndexes_(v153, v75, v158);
  }

  if (v153 && objc_msgSend_count(v153, v75, v76))
  {
    v152 = v153;
    v81 = objc_msgSend_sortedArrayUsingComparator_(v152, v80, &unk_2874EEF50);
    v191 = 0u;
    v192 = 0u;
    *v189 = 0u;
    v190 = 0u;
    obj = v81;
    v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v82, v189, v203, 16);
    if (v85)
    {
      v86 = 0;
      v87 = 0;
      v160 = *v190;
      do
      {
        v88 = 0;
        v161 = v85;
        do
        {
          if (*v190 != v160)
          {
            objc_enumerationMutation(obj);
          }

          v89 = *(v189[1] + v88);
          *v185 = 0u;
          v186 = 0u;
          v187 = 0u;
          v188 = 0u;
          v90 = objc_msgSend_walls(v89, v83, v84);
          v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v91, v185, &v199, 16);
          v162 = v88;
          if (v94)
          {
            v95 = *v186;
            do
            {
              for (j = 0; j != v94; ++j)
              {
                if (*v186 != v95)
                {
                  objc_enumerationMutation(v90);
                }

                v97 = *(v185[1] + j);
                objc_msgSend_quad(v97, v92, v93);
                v166 = v98;
                objc_msgSend_quad(v97, v99, v100);
                v102 = fminf(v166, v101);
                v103 = v87 - v86;
                v104 = 0xAAAAAAAAAAAAAAABLL * ((v87 - v86) >> 2) + 1;
                if (v104 > 0x1555555555555555)
                {
                  sub_2621CBEB0();
                }

                if (0x5555555555555556 * (-v86 >> 2) > v104)
                {
                  v104 = 0x5555555555555556 * (-v86 >> 2);
                }

                if (0xAAAAAAAAAAAAAAABLL * (-v86 >> 2) >= 0xAAAAAAAAAAAAAAALL)
                {
                  v105 = 0x1555555555555555;
                }

                else
                {
                  v105 = v104;
                }

                if (v105)
                {
                  sub_262241270(v105);
                }

                v106 = 4 * ((v87 - v86) >> 2);
                *v106 = v102;
                *(v106 + 4) = 0xFFFFFFFF00000000;
                v87 = v106 + 12;
                v107 = (v106 + 12 * (v103 / -12));
                memcpy(v107, v86, v103);
                if (v86)
                {
                  operator delete(v86);
                }

                v86 = v107;
              }

              v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v92, v185, &v199, 16);
            }

            while (v94);
          }

          v88 = v162 + 1;
        }

        while (v162 + 1 != v161);
        v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v83, v189, v203, 16);
      }

      while (v85);

      if (v87 == v86)
      {
        v130 = 0;
      }

      else
      {
        v179 = 0;
        v180 = 0;
        v178 = 0;
        sub_262349634(&v178, v86, v87, 0xAAAAAAAAAAAAAAABLL * ((v87 - v86) >> 2));
        sub_2623496B0(&__p, 1, &v178, 1.75);
        if (v178)
        {
          v179 = v178;
          operator delete(v178);
        }

        sub_262336EFC(&__p);
        v165 = v184;
        v176[0] = 0;
        v176[1] = 0;
        v177 = 0;
        sub_262349634(v176, __p, v182, 0xAAAAAAAAAAAAAAABLL * ((v182 - __p) >> 2));
        v110 = objc_msgSend_count(obj, v108, v109);
        LODWORD(v167) = 0;
        sub_2621DE86C(&v173, v110, &v167);
        v163 = v110;
        if (v110)
        {
          v112 = 0;
          v113 = 0;
          v114 = v176[0];
          do
          {
            v115 = 0;
            v116 = 0;
            v117 = 0.0;
            while (1)
            {
              v118 = objc_msgSend_objectAtIndexedSubscript_(obj, v111, v112);
              v121 = objc_msgSend_walls(v118, v119, v120);
              v124 = objc_msgSend_count(v121, v122, v123) > v115;

              if (!v124)
              {
                break;
              }

              v125 = v114[3 * v113 + 2];
              v126 = __OFSUB__(v125, 1);
              v127 = v125 - 1;
              if (v127 < 0 == v126)
              {
                v117 = v117 + v127;
                ++v113;
                ++v116;
              }

              ++v115;
            }

            if (v116 > 0)
            {
              v117 = v117 / v116;
            }

            *(v173 + v112++) = llroundf(v117);
          }

          while (v112 != v163);
        }

        v130 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v111, v165);
        if (v165 >= 1)
        {
          do
          {
            v131 = objc_msgSend_array(MEMORY[0x277CBEB18], v128, v129);
            objc_msgSend_addObject_(v130, v132, v131);

            --v165;
          }

          while (v165);
        }

        if (v163)
        {
          for (k = 0; k != v163; ++k)
          {
            v134 = objc_msgSend_objectAtIndexedSubscript_(obj, v128, k);
            v136 = objc_msgSend_objectAtIndexedSubscript_(v130, v135, *(v173 + k));
            objc_msgSend_addObject_(v136, v137, v134);
          }
        }

        if (v173)
        {
          __dst = v173;
          operator delete(v173);
        }

        if (v176[0])
        {
          operator delete(v176[0]);
        }

        if (__p)
        {
          v182 = __p;
          operator delete(__p);
        }
      }

      if (v86)
      {
        operator delete(v86);
      }
    }

    else
    {

      v130 = 0;
    }

    v140 = objc_msgSend_count(v130, v138, v139);
    v142 = v140;
    if (v140)
    {
      LODWORD(v199) = 2139095039;
      sub_2621CD1D8(v203, v140, &v199);
      v24 = objc_opt_new();
      if (v142 >= 1)
      {
        v144 = (v142 & 0x7FFFFFFF) + 1;
        do
        {
          v145 = objc_msgSend_objectAtIndexedSubscript_(v130, v143, v144 - 2);
          v146 = sub_262364054(v155, v145, (v144 - 2), v203, a3);
          objc_msgSend_appendFloorPlan_(v24, v147, v146);

          --v144;
        }

        while (v144 > 1);
      }

      if (v203[0])
      {
        v203[1] = v203[0];
        operator delete(v203[0]);
      }
    }

    else
    {
      if (a3)
      {
        v148 = MEMORY[0x277CCA9B8];
        v193 = *MEMORY[0x277CBEE30];
        v194 = @"Insufficient input!";
        v149 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v141, &v194, &v193, 1);
        *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v148, v150, @"com.apple.RoomScanCoreError", -1002, v149);
      }

      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

LABEL_179:

  return v24;
}

void sub_262363D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (v50)
  {
    operator delete(v50);
  }

  _Unwind_Resume(a1);
}

void **sub_262364054(uint64_t a1, void *a2, const char *a3, void *a4, void *a5)
{
  v1159 = *MEMORY[0x277D85DE8];
  obj = a2;
  v8 = objc_msgSend_count(obj, v6, v7);
  sub_26220EDA4(&v1085, v8);
  v11 = 0;
  v1084 = a1;
  while (objc_msgSend_count(obj, v9, v10) > v11)
  {
    v13 = objc_msgSend_objectAtIndexedSubscript_(obj, v12, v11);
    v14 = sub_26236A948(a1, v13);
    *(v1085 + v11) = v14;

    ++v11;
    a1 = v1084;
  }

  obja = obj;
  v1151[1] = 0;
  v1151[0] = 0;
  *&v1152 = 0;
  v15 = v1085;
  v16 = v1086;
  if (v1085 == v1086)
  {
    v18 = 0;
    v17 = 0;
  }

  else
  {
    do
    {
      *&buf = __sincosf_stret(*v15 * 4.0);
      DWORD2(buf) = -1;
      sub_262240B6C(v1151, &buf);
      ++v15;
    }

    while (v15 != v16);
    v17 = v1151[0];
    v18 = v1151[1];
  }

  v19 = *(a1 + 228);
  *&v1148 = 0;
  __p = 0uLL;
  sub_262349634(&__p, v17, v18, 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 2));
  v20 = (v19 * 4.0) / 180.0 * 3.14159265;
  sub_2623496B0(&buf, 1, &__p, v20);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  sub_262336EFC(&buf);
  v21 = DWORD1(v1124);
  v1139 = 0uLL;
  v1140 = 0;
  sub_262349634(&v1139, buf, *(&buf + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&buf + 1) - buf) >> 2));
  v1135 = 0uLL;
  *&v1136 = 0;
  if (v21 == 1)
  {
    v1029 = objc_alloc_init(MEMORY[0x277CCAA78]);
    goto LABEL_57;
  }

  memset(v1141, 0, 32);
  *&v1141[32] = 1065353216;
  LODWORD(v1118) = 0;
  v1076 = v1139;
  if (*(&v1139 + 1) != v1139)
  {
    v24 = 0;
    v25 = 0xAAAAAAAAAAAAAAABLL * ((*(&v1139 + 1) - v1139) >> 2);
    v26 = (v1139 + 8);
    do
    {
      v27 = *v26;
      v26 += 3;
      src.i32[0] = v27;
      *&v1114 = &src;
      v28 = sub_2621C65A4(v1141, v27, &v1114);
      sub_2621C7CD0((v28 + 3), &v1118);
      LODWORD(v1118) = ++v24;
    }

    while (v25 > v24);
  }

  v29 = objc_msgSend_count(obja, v22, v23);
  v31 = *&v1141[16];
  if (*&v1141[16])
  {
    v32 = (*(a1 + 232) * v29);
    do
    {
      v33 = v31[3];
      v34 = v31[4];
      v35 = (v34 - v33) >> 2;
      if (v34 - v33 == 4 || v35 < v32)
      {
        sub_262282F1C(&v1135, *(&v1135 + 1), v33, v34, v35);
      }

      v31 = *v31;
    }

    while (v31);
    v37 = v1135;
    if (*(&v1135 + 1) != v1135)
    {
      v38 = v1135;
      v39 = objc_msgSend_count(obja, v30, v33);
      sub_262370CD4(&v1114, v39);
      for (i = 0; objc_msgSend_count(obja, v40, v41) > i; ++i)
      {
        v44 = objc_msgSend_objectAtIndexedSubscript_(obja, v43, i);
        v47 = objc_msgSend_floors(v44, v45, v46);

        if (objc_msgSend_count(v47, v48, v49))
        {
          v51 = objc_msgSend_objectAtIndexedSubscript_(v47, v50, 0);
          if (objc_msgSend_polygonSize(v51, v52, v53))
          {
            v56 = v1114;
            v57 = objc_msgSend_polygonSize(v51, v54, v55);
            sub_26220F5A0((v56 + 24 * i), v57);
            v62 = objc_msgSend_polygon(v51, v58, v59);
            for (j = 0; objc_msgSend_polygonSize(v51, v60, v61) > j; ++j)
            {
              *&v1118 = *v62;
              sub_2621CBA84(v1114 + 24 * i, &v1118);
              v62 += 2;
            }
          }
        }
      }

      v1029 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v66 = *(&v1135 + 1);
      if (v37 != *(&v1135 + 1))
      {
        v67 = v37;
        do
        {
          v68 = *v67;
          if (*(v1114 + 24 * v68 + 8) != *(v1114 + 24 * v68))
          {
            v69 = 0;
            v70 = 0;
            v71 = *(v1076 + 12 * v68 + 8);
            v72 = 0.0;
            v73 = (v1076 + 8);
            while (objc_msgSend_count(obja, v64, v65) > v70)
            {
              if (v68 != v70 && *(v1114 + v69 + 8) != *(v1114 + v69) && *v73 != v71)
              {
                LODWORD(v74) = 1036831949;
                sub_26233E420(&v1118, *(v1114 + 24 * v68), *(v1114 + 24 * v68 + 8), (v1114 + v69), v74);
                v75 = *(&v1118 + 1) ? v1118 / *(&v1118 + 1) : 0.0;
                if (v75 >= v72)
                {
                  v72 = v75;
                }
              }

              ++v70;
              v73 += 3;
              v69 += 24;
            }

            v37 = v38;
            if (v72 > *(v1084 + 236))
            {
              objc_msgSend_addIndex_(v1029, v64, v68);
            }
          }

          ++v67;
        }

        while (v67 != v66);
      }

      *&v1118 = &v1114;
      sub_2621E1CB0(&v1118);
      goto LABEL_53;
    }
  }

  else
  {
    v37 = 0;
  }

  v1029 = objc_alloc_init(MEMORY[0x277CCAA78]);
LABEL_53:
  sub_2621C7150(*&v1141[16]);
  v76 = *v1141;
  *v1141 = 0;
  if (v76)
  {
    operator delete(v76);
  }

  if (v37)
  {
    *(&v1135 + 1) = v37;
    operator delete(v37);
  }

LABEL_57:
  if (v1139)
  {
    operator delete(v1139);
  }

  if (buf)
  {
    *(&buf + 1) = buf;
    operator delete(buf);
  }

  if (v1151[0])
  {
    operator delete(v1151[0]);
  }

  v77 = sub_26236ADAC(obja, v1029, a5);

  objb = v77;
  if (objc_msgSend_count(objb, v78, v79) < 2)
  {
    goto LABEL_121;
  }

  v82 = objc_msgSend_count(objb, v80, v81);
  v83 = v1084;
  LODWORD(buf) = 0;
  sub_2621CD1D8(v1141, v82, &buf);
  for (k = 0; objc_msgSend_count(objb, v84, v85) > k; ++k)
  {
    v88 = objc_msgSend_objectAtIndexedSubscript_(objb, v87, k);
    v89 = sub_26236A948(v83, v88);
    *(*v1141 + 4 * k) = v89;

    v83 = v1084;
  }

  v1151[1] = 0;
  v1151[0] = 0;
  *&v1152 = 0;
  v90 = *v1141;
  v91 = *&v1141[8];
  if (*v1141 == *&v1141[8])
  {
    v93 = 0;
    v92 = 0;
  }

  else
  {
    do
    {
      *&buf = __sincosf_stret(*v90 * 4.0);
      DWORD2(buf) = -1;
      sub_262240B6C(v1151, &buf);
      ++v90;
    }

    while (v90 != v91);
    v92 = v1151[0];
    v93 = v1151[1];
  }

  v94 = *(v83 + 208);
  *&v1148 = 0;
  __p = 0uLL;
  sub_262349634(&__p, v92, v93, 0xAAAAAAAAAAAAAAABLL * ((v93 - v92) >> 2));
  v95 = v94 * 4.0 / 180.0 * 3.14159265 * 0.5;
  sub_2623496B0(&buf, 1, &__p, v95);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  sub_262336EFC(&buf);
  v96 = SDWORD1(v1124);
  v1139 = 0uLL;
  v1140 = 0;
  sub_262349634(&v1139, buf, *(&buf + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&buf + 1) - buf) >> 2));
  if (v96)
  {
    *&v1114 = 0;
    sub_262378F74(&v1135, v96, &v1114);
    LODWORD(v1118) = 0;
    sub_2621CD1D8(&v1114, v96, &v1118);
    v97 = v1139;
    if (*(&v1139 + 1) != v1139)
    {
      v98 = 0;
      v99 = 0xAAAAAAAAAAAAAAABLL * ((*(&v1139 + 1) - v1139) >> 2);
      v100 = (v1139 + 8);
      do
      {
        v101 = *v100 - 1;
        if (*v100 >= 1)
        {
          *(v1135 + 8 * v101) = vadd_f32(*(v100 - 2), *(v1135 + 8 * v101));
          *(v1114 + 4 * v101) = *(v1114 + 4 * v101) + 1.0;
        }

        ++v98;
        v100 += 3;
      }

      while (v99 > v98);
    }

    v102 = v1114 + 4;
    _ZF = v1114 == *(&v1114 + 1) || v102 == *(&v1114 + 1);
    v104 = v1114;
    if (!_ZF)
    {
      v105 = *v1114;
      v104 = v1114;
      v106 = (v1114 + 4);
      do
      {
        v107 = *v106++;
        v108 = v107;
        if (v105 < v107)
        {
          v105 = v108;
          v104 = v102;
        }

        v102 = v106;
      }

      while (v106 != *(&v1114 + 1));
    }

    v109 = v104 - v1114;
    v110 = (v1114 + ((v104 - v1114) << 30 >> 30));
    v111 = vld1_dup_f32(v110);
    v112 = vdiv_f32(*(v1135 + ((v104 - v1114) << 30 >> 29)), v111);
    v115 = atan2f(v112.f32[0], v112.f32[1]);
    if (v115 >= 0.0)
    {
      v117 = v115;
    }

    else
    {
      v116 = v115 + 6.28318531;
      v117 = v116;
    }

    v118 = objc_msgSend_count(objb, v113, v114);
    src.i32[0] = 0;
    sub_2621CD1D8(&v1118, v118, &src);
    v121 = 0;
    v122 = v109 >> 2;
    v123 = v117 * 0.25;
    while (objc_msgSend_count(objb, v119, v120) > v121)
    {
      v124 = v97[3 * v121 + 2];
      _VF = __OFSUB__(v124, 1);
      v126 = v124 - 1;
      if (v126 < 0 == _VF && v126 == v122)
      {
        v127 = 0;
        v128 = *(*v1141 + 4 * v121);
        v129 = 3.4028e38;
        do
        {
          v130 = v123 + *&dword_2623A8BA0[v127];
          if (vabds_f32(v128, v130) < fabsf(v129))
          {
            v129 = v128 - v130;
          }

          ++v127;
        }

        while (v127 != 3);
        *(v1118 + 4 * v121) = v129;
      }

      ++v121;
    }

    for (m = 0; objc_msgSend_count(objb, v119, v120) > m; ++m)
    {
      v133 = objc_msgSend_objectAtIndexedSubscript_(objb, v132, m);
      v136 = v133;
      if (v133)
      {
        v139 = objc_msgSend_walls(v133, v134, v135);
        if (v139)
        {
          v140 = objc_msgSend_walls(v136, v137, v138);
          v143 = objc_msgSend_count(v140, v141, v142) == 0;

          if (!v143)
          {
            v1077 = sub_262378FF8(v136);
            v144 = vnegq_f32(v1077);
            v144.i32[2] = 0;
            src = v144;
            objc_copyStruct(v136 + 32, &src, 16, 1, 0);
            v136[5] = 0;
            sub_2622B4144(v136);
            src = 0u;
            objc_copyStruct(v136 + 32, &src, 16, 1, 0);
            v136[5] = *(v1118 + 4 * m);
            sub_2622B4144(v136);
            v145 = v1077;
            v145.n128_u32[2] = 0;
            src = v145;
            objc_copyStruct(v136 + 32, &src, 16, 1, 0);
            v136[5] = 0;
            sub_2622B4144(v136);
            src = 0u;
            objc_copyStruct(v136 + 32, &src, 16, 1, 0);
          }
        }
      }
    }

    if (v1118)
    {
      *(&v1118 + 1) = v1118;
      operator delete(v1118);
    }

    if (v1114)
    {
      *(&v1114 + 1) = v1114;
      operator delete(v1114);
    }

    if (v1135)
    {
      *(&v1135 + 1) = v1135;
      operator delete(v1135);
    }

    if (!v97)
    {
      goto LABEL_115;
    }
  }

  else
  {
    v97 = v1139;
    if (!v1139)
    {
      goto LABEL_115;
    }
  }

  operator delete(v97);
LABEL_115:
  if (buf)
  {
    *(&buf + 1) = buf;
    operator delete(buf);
  }

  if (v92)
  {
    operator delete(v92);
  }

  if (*v1141)
  {
    *&v1141[8] = *v1141;
    operator delete(*v1141);
  }

LABEL_121:

  objc = objb;
  v1028 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v148 = objc_msgSend_count(objc, v146, v147);
  if (v148 >= 2)
  {
    v1044 = v148;
    v153 = objc_msgSend_array(MEMORY[0x277CBEB18], v149, v150);
    for (n = 0; objc_msgSend_count(objc, v151, v152) > n; ++n)
    {
      v156 = objc_msgSend_objectAtIndexedSubscript_(objc, v155, n);
      v1153 = 0u;
      v1154 = 0u;
      *v1151 = 0u;
      v1152 = 0u;
      v159 = objc_msgSend_walls(v156, v157, v158);
      v162 = objc_msgSend_countByEnumeratingWithState_objects_count_(v159, v160, v1151, &buf, 16);
      if (v162)
      {
        v163 = *v1152;
        do
        {
          for (ii = 0; ii != v162; ++ii)
          {
            if (*v1152 != v163)
            {
              objc_enumerationMutation(v159);
            }

            v165 = *(v1151[1] + ii);
            if (v165)
            {
              *(v165 + 160) = n;
            }
          }

          v162 = objc_msgSend_countByEnumeratingWithState_objects_count_(v159, v161, v1151, &buf, 16);
        }

        while (v162);
      }

      v168 = objc_msgSend_walls(v156, v166, v167);
      objc_msgSend_addObjectsFromArray_(v153, v169, v168);
    }

    sub_262377468(&v1139, v153);
    v172 = 0;
    v1135 = 0uLL;
    *&v1136 = 0;
    __p = 0u;
    v1148 = 0u;
    LODWORD(v1149) = 1065353216;
    v173 = v1139;
    v1078 = v1139 + 48;
    __src = 1;
    v1053 = v1139;
    while (objc_msgSend_count(v153, v170, v171) > v172)
    {
      v177 = objc_msgSend_objectAtIndexedSubscript_(v153, v174, v172);
      if (v177)
      {
        v178 = &v173[48 * v172];
        v179 = v1078;
        for (jj = __src; objc_msgSend_count(v153, v175, v176) > jj; ++jj)
        {
          v184 = objc_msgSend_objectAtIndexedSubscript_(v153, v181, jj);
          if (v184)
          {
            v185 = objc_msgSend_identifier(v177, v182, v183);
            v188 = objc_msgSend_identifier(v184, v186, v187);
            isEqual = objc_msgSend_isEqual_(v185, v189, v188);

            if ((isEqual & 1) == 0 && v177[20] != v184[20])
            {
              sub_26229E1DC(v1141, v178, v179, (v1084 + 8));
              if (*v1141 == -1)
              {
                if (sub_2621DCE38(*v178, v178[1], *v179, v179[1]))
                {
                  *&v1114 = __PAIR64__(jj, v172);
                  sub_26223C48C(&v1135, &v1114);
                }
              }

              else
              {
                *&v1114 = v1141;
                v191 = sub_262377054(&__p, *v1141, &v1114);
                *&v1114 = __PAIR64__(jj, v172);
                sub_26223C48C((v191 + 3), &v1114);
              }

              if (*(&v1142 + 1))
              {
                *&v1143 = *(&v1142 + 1);
                operator delete(*(&v1142 + 1));
              }

              if (*&v1141[56])
              {
                *&v1141[64] = *&v1141[56];
                operator delete(*&v1141[56]);
              }
            }
          }

          v179 += 6;
        }
      }

      ++v172;
      ++__src;
      v1078 += 48;
      v173 = v1053;
    }

    v192 = *(&v1135 + 1);
    __srca = v1135;
    if (*(&v1135 + 1) != v1135)
    {
      v193 = v1044 & 0x7FFFFFFF;
      sub_262370CD4(v1141, v193);
      v195 = 0;
      do
      {
        v196 = v193;
        v197 = objc_msgSend_objectAtIndexedSubscript_(objc, v194, v195);
        v200 = v197;
        *&v1115 = 0;
        v1114 = 0uLL;
        if (v197)
        {
          v201 = objc_msgSend_floors(v197, v198, v199);
          v204 = v201;
          if (v201 && objc_msgSend_count(v201, v202, v203))
          {
            v206 = objc_msgSend_objectAtIndexedSubscript_(v204, v205, 0);
            if (objc_msgSend_polygonSize(v206, v207, v208))
            {
              v211 = objc_msgSend_polygonSize(v206, v209, v210);
              sub_26220F5A0(&v1114, v211);
              v216 = objc_msgSend_polygon(v206, v212, v213);
              for (kk = 0; objc_msgSend_polygonSize(v206, v214, v215) > kk; ++kk)
              {
                *&v1118 = *v216;
                sub_2621CBA84(&v1114, &v1118);
                v216 += 2;
              }
            }
          }
        }

        v218 = *v1141 + 24 * v195;
        v219 = *v218;
        if (*v218)
        {
          *(v218 + 8) = v219;
          operator delete(v219);
          *v218 = 0;
          *(v218 + 8) = 0;
          *(v218 + 16) = 0;
        }

        *v218 = v1114;
        *(v218 + 16) = v1115;

        ++v195;
        v193 = v196;
      }

      while (v195 != v196);
      v220 = 0;
      do
      {
        v221 = objc_msgSend_objectAtIndexedSubscript_(objc, v194, v220);
        v224 = objc_msgSend_walls(v221, v222, v223);
        v1079 = v221;
        v227 = objc_msgSend_count(v224, v225, v226);

        if (v227)
        {
          sub_26220EDA4(&v1114, v196);
          sub_26220EDA4(&v1118, v196);
          v229 = __srca;
          do
          {
            v230 = objc_msgSend_objectAtIndexedSubscript_(v153, v228, *v229);
            if (v230)
            {
              v231 = v230[20];
            }

            else
            {
              v231 = 0;
            }

            v232 = v231 == v220;

            if (v232)
            {
              v234 = objc_msgSend_objectAtIndexedSubscript_(v153, v233, v229[1]);
              if (v234)
              {
                v235 = v234[20];
              }

              else
              {
                LODWORD(v235) = 0;
              }

              if ((sub_262378E34(*v229, v235, &__p, v153) & 1) == 0)
              {
                *(v1114 + 4 * v235) = *(v1114 + 4 * v235) + 1.0;
              }
            }

            v236 = objc_msgSend_objectAtIndexedSubscript_(v153, v233, v229[1]);
            if (v236)
            {
              v237 = v236[20];
            }

            else
            {
              v237 = 0;
            }

            v238 = v237 == v220;

            if (v238)
            {
              v240 = objc_msgSend_objectAtIndexedSubscript_(v153, v228, *v229);
              if (v240)
              {
                v241 = v240[20];
              }

              else
              {
                LODWORD(v241) = 0;
              }

              if ((sub_262378E34(v229[1], v241, &__p, v153) & 1) == 0)
              {
                *(v1114 + 4 * v241) = *(v1114 + 4 * v241) + 1.0;
              }
            }

            v229 += 2;
          }

          while (v229 != v192);
          v242 = v196;
          v243 = v1114;
          v244 = v227;
          v245 = 0.0;
          do
          {
            v246 = *v243++;
            v247 = v246 / v244;
            if (*&v245 < (v246 / v244))
            {
              *&v245 = v247;
            }

            --v242;
          }

          while (v242);
          if (*&v245 > *(v1084 + 240))
          {
            v248 = v1148;
            if (v1148)
            {
              v249 = 0.0;
              do
              {
                if (*(v248 + 4) != 3)
                {
                  v250 = v248[3];
                  v251 = v248[4];
                  while (v250 != v251)
                  {
                    v252 = *v250;
                    v253 = v250[1];
                    if ((v252 & 0x80000000) == 0 && objc_msgSend_count(v153, v228, v239) > v252)
                    {
                      v254 = objc_msgSend_objectAtIndexedSubscript_(v153, v228, v252);
                      v255 = v254 ? v254[20] : 0;
                      v256 = v255 == v220;

                      if (v256)
                      {
                        v249 = v249 + 1.0;
                      }
                    }

                    if ((v253 & 0x80000000) == 0 && objc_msgSend_count(v153, v228, v239) > v253)
                    {
                      v257 = objc_msgSend_objectAtIndexedSubscript_(v153, v228, v253);
                      v258 = v257 ? v257[20] : 0;
                      v259 = v258 == v220;

                      if (v259)
                      {
                        v249 = v249 + 1.0;
                      }
                    }

                    v250 += 2;
                  }
                }

                v248 = *v248;
              }

              while (v248);
            }

            else
            {
              v249 = 0.0;
            }

            if ((v249 / v244) <= *(v1084 + 248) && *(*v1141 + 24 * v220 + 8) != *(*v1141 + 24 * v220))
            {
              v260 = v196;
              v261 = 0;
              v262 = 0.0;
              v263 = v220;
              do
              {
                if (v263 && *(*v1141 + v261 + 8) != *(*v1141 + v261))
                {
                  LODWORD(v245) = 1036831949;
                  sub_26233E420(&src, *(*v1141 + 24 * v220), *(*v1141 + 24 * v220 + 8), (*v1141 + v261), v245);
                  if (src.i64[1])
                  {
                    *&v245 = src.u64[0] / src.u64[1];
                  }

                  else
                  {
                    v245 = 0.0;
                  }

                  if (v262 < *&v245)
                  {
                    v262 = *&v245;
                  }
                }

                v261 += 24;
                --v263;
                --v260;
              }

              while (v260);
              if (v262 > *(v1084 + 244))
              {
                objc_msgSend_addIndex_(v1028, v228, v220);
              }
            }
          }

          if (v1118)
          {
            *(&v1118 + 1) = v1118;
            operator delete(v1118);
          }

          v221 = v1079;
          if (v1114)
          {
            *(&v1114 + 1) = v1114;
            operator delete(v1114);
          }
        }

        ++v220;
      }

      while (v220 != v196);
      *&v1114 = v1141;
      sub_2621E1CB0(&v1114);
      v173 = v1053;
    }

    sub_2621C7150(v1148);
    v264 = __p;
    *&__p = 0;
    if (v264)
    {
      operator delete(v264);
    }

    if (__srca)
    {
      operator delete(__srca);
    }

    if (v173)
    {
      operator delete(v173);
    }
  }

  v265 = sub_26236ADAC(objc, v1028, a5);

  v266 = v1084;
  sub_26236AF10(v1084, v265);
  sub_26236CC8C(v1084, v265);
  __srcb = v265;
  v267 = 0;
  *v268.i32 = *(v1084 + 656) * 0.5;
  v269 = vdup_lane_s32(v268, 0);
  do
  {
    v1054 = v267;
    v270 = expf(v267 * -0.25);
    sub_262377468(&__p, *(v266 + 256));
    sub_262377468(&v1139, *(v266 + 264));
    v273 = 0;
    objd = v270 * -0.4;
    while (objc_msgSend_count(__srcb, v271, v272) > v273)
    {
      v276 = objc_msgSend_objectAtIndexedSubscript_(__srcb, v274, v273);
      buf = 0uLL;
      *&v1123 = 0;
      memset(v1141, 0, 24);
      v278 = *(v1084 + 344);
      v279 = v276;
      if (v278)
      {
        v280 = __p;
        while (1)
        {
          v281 = v278[3];
          v282 = v278[4];
          if (v281 != v282)
          {
            break;
          }

LABEL_297:
          v278 = *v278;
          if (!v278)
          {
            goto LABEL_298;
          }
        }

        v283 = v281 + 1;
        while (2)
        {
          v284 = objc_msgSend_objectAtIndexedSubscript_(*(v1084 + 256), v275, *(v283 - 1));
          if (v284)
          {
            v285 = v284[20];
          }

          else
          {
            v285 = 0;
          }

          v287 = objc_msgSend_objectAtIndexedSubscript_(*(v1084 + 256), v286, *v283);
          if (v287)
          {
            v288 = v287[20];
          }

          else
          {
            v288 = 0;
          }

          if (v285 != v273 && v288 != v273)
          {
            goto LABEL_290;
          }

          if (v285 == v273)
          {
            v289 = v283 - 1;
          }

          else
          {
            v289 = v283;
          }

          if (v285 == v273)
          {
            v290 = v283;
          }

          else
          {
            v290 = v283 - 1;
          }

          v291 = (v280 + 48 * *v289);
          v292 = (v280 + 48 * *v290);
          v293 = *v292;
          v294 = v292[1];
          v296 = *v291;
          v295 = v291[1];
          *&v1135 = v296;
          *(&v1135 + 1) = v295;
          *&v1114 = v293;
          *(&v1114 + 1) = v294;
          v297 = vmul_f32(vadd_f32(v296, v295), 0x3F0000003F000000);
          v298 = *(v278 + 4);
          if (v298 <= 4)
          {
            if (v298 != 3)
            {
              if (v298 == 4)
              {
                v299 = vmla_f32(vmul_f32(vmla_f32(vmul_f32(v294, 0x3F0000003F000000), 0x3F0000003F000000, v293), 0x3F0000003F000000), 0x3F0000003F000000, v297);
                v300 = vsub_f32(v295, v296);
                v301 = vaddv_f32(vmul_f32(vsub_f32(v299, v296), v300));
                v302 = vaddv_f32(vmul_f32(v300, v300));
                if (v302 < 0.000001)
                {
                  v302 = 0.000001;
                }

                v303 = vsub_f32(vmla_n_f32(v296, v300, v301 / v302), v299);
                v304 = vmul_f32(v303, v303);
                v305 = 0;
                if (sqrtf(vaddv_f32(v304)) >= 0.000001)
                {
                  v306 = vadd_f32(v304, vdup_lane_s32(v304, 1)).u32[0];
                  v307 = vrsqrte_f32(v306);
                  v308 = vmul_f32(v307, vrsqrts_f32(v306, vmul_f32(v307, v307)));
                  v305 = vmul_n_f32(v303, vmul_f32(v308, vrsqrts_f32(v306, vmul_f32(v308, v308))).f32[0]);
                }

                v309 = vmla_f32(v299, v305, v269);
                goto LABEL_288;
              }

LABEL_278:
              v309 = v297;
              goto LABEL_288;
            }

LABEL_290:
            v344 = v283 + 1;
            v283 += 2;
            v276 = v279;
            if (v344 == v282)
            {
              goto LABEL_297;
            }

            continue;
          }

          break;
        }

        if (v298 != 5)
        {
          if (v298 != 6)
          {
            goto LABEL_278;
          }

          v310 = vsub_f32(v294, v293);
          v311 = vaddv_f32(vmul_f32(vsub_f32(v296, v293), v310));
          v312 = vaddv_f32(vmul_f32(v310, v310));
          if (v312 < 0.000001)
          {
            v312 = 0.000001;
          }

          v313 = vmla_n_f32(v293, v310, v311 / v312);
          v314 = vsub_f32(v313, v293);
          v315 = vsub_f32(v313, v294);
          v316 = v313;
          if (vaddv_f32(vmul_f32(v314, v315)) > 0.00001)
          {
            v317 = vmul_f32(v314, v314);
            v318 = vmul_f32(v315, v315);
            v319 = vsqrt_f32(vadd_f32(vzip1_s32(v317, v318), vzip2_s32(v317, v318)));
            v316 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v319, 1), v319)), 0), v294, v293);
          }

          v320 = vmla_n_f32(v293, v310, vaddv_f32(vmul_f32(vsub_f32(v295, v293), v310)) / v312);
          v321 = vsub_f32(v320, v293);
          v322 = vsub_f32(v320, v294);
          v323 = v320;
          if (vaddv_f32(vmul_f32(v321, v322)) > 0.00001)
          {
            v324 = vmul_f32(v321, v321);
            v325 = vmul_f32(v322, v322);
            v322 = vzip1_s32(v324, v325);
            v326 = vsqrt_f32(vadd_f32(v322, vzip2_s32(v324, v325)));
            v323 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v326, 1), v326)), 0), v294, v293);
          }

          v327 = vsub_f32(v313, v316);
          v328 = vmul_f32(v327, v327);
          v328.f32[0] = sqrtf(vaddv_f32(v328));
          v322.i32[0] = *(v1084 + 72);
          v329 = vsub_f32(vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(v322, v328)), 0), v313, v316), v313);
          v330 = vsub_f32(v320, v323);
          v331 = vmul_f32(v330, v330);
          v331.f32[0] = sqrtf(vaddv_f32(v331));
          v309 = vadd_f32(vadd_f32(vmul_f32(vadd_f32(v313, v320), 0x3F0000003F000000), v329), vsub_f32(vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(v322, v331)), 0), v320, v323), v320));
          goto LABEL_288;
        }

        sub_2621DCD34(v1151, &v1135, &v1114);
        v332 = *(v1084 + 72);
        if (*v1151[0] < v332)
        {
LABEL_282:
          v333 = v296;
        }

        else
        {
          if (*(v1151[0] + 1) < v332)
          {
            v293 = v294;
            goto LABEL_282;
          }

          v333 = v295;
          if (*(v1151[0] + 2) >= v332)
          {
            v293 = v294;
            v333 = v295;
            if (*(v1151[0] + 3) >= v332)
            {
              operator delete(v1151[0]);
              goto LABEL_290;
            }
          }
        }

        v1080 = v333;
        v334 = vmla_f32(vmul_f32(v293, 0x3F0000003F000000), 0x3F0000003F000000, v333);
        v335 = vsub_f32(v295, v296);
        v336 = vaddv_f32(vmul_f32(vsub_f32(v334, v296), v335));
        v337 = vaddv_f32(vmul_f32(v335, v335));
        if (v337 < 0.000001)
        {
          v337 = 0.000001;
        }

        v338 = vsub_f32(vmla_n_f32(v296, v335, v336 / v337), v334);
        v339 = vmul_f32(v338, v338);
        v340 = 0;
        if (sqrtf(vaddv_f32(v339)) >= 0.000001)
        {
          v341 = vadd_f32(v339, vdup_lane_s32(v339, 1)).u32[0];
          v342 = vrsqrte_f32(v341);
          v343 = vmul_f32(v342, vrsqrts_f32(v341, vmul_f32(v342, v342)));
          v340 = vmul_n_f32(v338, vmul_f32(v343, vrsqrts_f32(v341, vmul_f32(v343, v343))).f32[0]);
        }

        v309 = vmla_f32(v334, v340, v269);
        operator delete(v1151[0]);
        v297 = v1080;
LABEL_288:
        LODWORD(v1118) = 0;
        v1151[0] = vsub_f32(vmla_lane_f32(vmul_n_f32(0x800000003F800000, v297.f32[0]), 0x3F80000000000000, v297, 1), v309);
        sub_2621C8F2C(&buf, &v1118);
        sub_2621CBA84(v1141, v1151);
        if (*(v278 + 4) == 4)
        {
          sub_2621C8F2C(&buf, &v1118);
          sub_2621CBA84(v1141, v1151);
        }

        goto LABEL_290;
      }

LABEL_298:
      v345 = *(v1084 + 384);
      if (v345)
      {
        v346 = v1139;
        do
        {
          v347 = v345[3];
          v348 = v345[4];
          if (v347 != v348)
          {
            v349 = v347 + 1;
            do
            {
              v350 = objc_msgSend_objectAtIndexedSubscript_(*(v1084 + 264), v275, *(v349 - 1));
              if (v350)
              {
                v351 = v350[20];
              }

              else
              {
                v351 = 0;
              }

              v353 = objc_msgSend_objectAtIndexedSubscript_(*(v1084 + 264), v352, *v349);
              if (v353)
              {
                v354 = v353[20];
              }

              else
              {
                v354 = 0;
              }

              if (v351 == v273 || v354 == v273)
              {
                if (v351 == v273)
                {
                  v355 = v349 - 1;
                }

                else
                {
                  v355 = v349;
                }

                v356 = (v346 + 48 * *v355);
                v358 = *v356;
                v357 = v356[1];
                v359 = vmul_f32(vadd_f32(*v356, v357), 0x3F0000003F000000);
                v360 = v359;
                if (*(v345 + 4) == 4)
                {
                  if (v351 == v273)
                  {
                    v361 = v349;
                  }

                  else
                  {
                    v361 = v349 - 1;
                  }

                  v362 = vmla_f32(vmul_f32(vmla_f32(vmul_f32(*(v346 + 48 * *v361 + 8), 0x3F0000003F000000), 0x3F0000003F000000, *(v346 + 48 * *v361)), 0x3F0000003F000000), 0x3F0000003F000000, v359);
                  v363 = vsub_f32(v357, v358);
                  v364 = vaddv_f32(vmul_f32(vsub_f32(v362, v358), v363));
                  v365 = vaddv_f32(vmul_f32(v363, v363));
                  if (v365 < 0.000001)
                  {
                    v365 = 0.000001;
                  }

                  v366 = vmla_n_f32(v358, v363, v364 / v365);
                  v367 = vsub_f32(v366, v358);
                  v368 = vsub_f32(v366, v357);
                  if (vaddv_f32(vmul_f32(v367, v368)) > 0.00001)
                  {
                    v369 = vmul_f32(v367, v367);
                    v370 = vmul_f32(v368, v368);
                    v371 = vsqrt_f32(vadd_f32(vzip1_s32(v369, v370), vzip2_s32(v369, v370)));
                    v366 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v371, 1), v371)), 0), v357, v358);
                  }

                  v372 = vsub_f32(v366, v362);
                  v373 = vmul_f32(v372, v372);
                  v374 = 0;
                  if (sqrtf(vaddv_f32(v373)) >= 0.000001)
                  {
                    v375 = vadd_f32(v373, vdup_lane_s32(v373, 1)).u32[0];
                    v376 = vrsqrte_f32(v375);
                    v377 = vmul_f32(v376, vrsqrts_f32(v375, vmul_f32(v376, v376)));
                    v374 = vmul_n_f32(v372, vmul_f32(v377, vrsqrts_f32(v375, vmul_f32(v377, v377))).f32[0]);
                  }

                  v360 = vmla_f32(v362, v374, v269);
                }

                LODWORD(v1135) = 0;
                v1151[0] = vsub_f32(vmla_lane_f32(vmul_n_f32(0x800000003F800000, v359.f32[0]), 0x3F80000000000000, v359, 1), v360);
                sub_2621C8F2C(&buf, &v1135);
                sub_2621CBA84(v1141, v1151);
                if (*(v345 + 4) == 4)
                {
                  sub_2621C8F2C(&buf, &v1135);
                  sub_2621CBA84(v1141, v1151);
                }
              }

              v378 = v349 + 1;
              v349 += 2;
              v276 = v279;
            }

            while (v378 != v348);
          }

          v345 = *v345;
        }

        while (v345);
      }

      v379 = buf;
      if (*(&buf + 1) == buf)
      {
        v387 = 0.0;
        v389 = 0;
        v383 = *v1141;
        if (*v1141)
        {
          goto LABEL_336;
        }
      }

      else
      {
        v380 = 0.0;
        v381 = buf;
        do
        {
          v382 = *v381++;
          v380 = v380 + v382;
        }

        while (v381 != *(&buf + 1));
        v383 = *v1141;
        v384 = 0;
        if (*v1141 != *&v1141[8])
        {
          v385 = *v1141;
          do
          {
            v386 = *v385++;
            v384 = vadd_f32(v384, v386);
          }

          while (v385 != *&v1141[8]);
        }

        v387 = (v380 * objd) / ((*(&buf + 1) - buf) >> 2);
        v388 = vmul_n_f32(v384, objd);
        *v384.i32 = ((*&v1141[8] - *v1141) >> 3);
        v389 = vdiv_f32(v388, vdup_lane_s32(v384, 0));
        if (*v1141)
        {
LABEL_336:
          operator delete(v383);
        }
      }

      if (v379)
      {
        operator delete(v379);
      }

      if (v276)
      {
        v276[5] = v387;
        *&v277 = v389;
        buf = v277;
        objc_copyStruct(v276 + 32, &buf, 16, 1, 0);
      }

      ++v273;
    }

    v390 = __srcb;
    memset(v1141, 0, 64);
    obje = v390;
    v392 = objc_msgSend_countByEnumeratingWithState_objects_count_(obje, v391, v1141, &buf, 16);
    if (v392)
    {
      v393 = **&v1141[16];
      do
      {
        for (mm = 0; mm != v392; ++mm)
        {
          if (**&v1141[16] != v393)
          {
            objc_enumerationMutation(obje);
          }

          sub_2622B4144(*(*&v1141[8] + 8 * mm));
        }

        v392 = objc_msgSend_countByEnumeratingWithState_objects_count_(obje, v395, v1141, &buf, 16);
      }

      while (v392);
    }

    if (v1139)
    {
      operator delete(v1139);
    }

    v266 = v1084;
    if (__p)
    {
      operator delete(__p);
    }

    v267 = v1054 + 1;
  }

  while (v1054 != 9);

  v396 = v1084;
  sub_26236E9C8(v1084, obje);
  v1033 = objc_msgSend_array(MEMORY[0x277CBEB18], v397, v398);
  v399 = *(v1084 + 624);
  v400 = *(v1084 + 616);
  v401 = 0xCCCCCCCCCCCCCCCDLL * ((v399 - v400) >> 3);
  sub_262371EA8(&src, v401);
  v402 = *(v1084 + 448);
  v403 = *(v1084 + 456);
  if (v402 != v403)
  {
    if (v401 <= 1)
    {
      v401 = 1;
    }

    do
    {
      if (v399 != v400)
      {
        v404 = 0;
        v405 = 0;
        v406 = v401;
        do
        {
          v407 = *(v1084 + 616);
          if (sub_2621C719C((v407 + v404), *v402) || sub_2621C719C((v407 + v404), *(v402 + 4)))
          {
            sub_262371F84((src.i64[0] + v405), v402);
          }

          v405 += 24;
          v404 += 40;
          --v406;
        }

        while (v406);
      }

      v402 += 12;
    }

    while (v402 != v403);
  }

  v1030 = src.i64[1];
  v408 = src.i64[0];
  if (src.i64[0] != src.i64[1])
  {
    do
    {
      *v1151 = 0u;
      v1152 = 0u;
      LODWORD(v1153) = 1065353216;
      v409 = *v408;
      v410 = v408[1];
      if (*v408 == v410)
      {
        v413 = 0;
        v414 = 0;
        v1103 = 0uLL;
        *&v1104 = 0;
      }

      else
      {
        do
        {
          sub_2621C729C(v1151, *v409, v409);
          v412 = v409[1];
          v411 = v409 + 1;
          sub_2621C729C(v1151, v412, v411);
          v409 = v411 + 2;
        }

        while (v409 != v410);
        v413 = v1152;
        v1103 = 0uLL;
        *&v1104 = 0;
        v414 = 0;
        if (v1152)
        {
          v415 = v1152;
          do
          {
            ++v414;
            v415 = *v415;
          }

          while (v415);
        }
      }

      v1034 = v408;
      sub_2623720A0(&v1103, v413, v414);
      log = v1033;
      v417 = *(&v1103 + 1);
      v418 = v1103;
      if (*(&v1103 + 1) - v1103 >= 5uLL)
      {
        *&v1148 = 0;
        v419 = 0uLL;
        __p = 0u;
        buf = 0u;
        v1123 = 0u;
        LODWORD(v1124) = 1065353216;
        memset(v1141, 0, 32);
        *&v1141[32] = 1065353216;
        v1140 = 0;
        v1139 = 0u;
        if (v1103 == *(&v1103 + 1))
        {
          goto LABEL_393;
        }

        do
        {
          v420 = *v418;
          v421 = objc_msgSend_objectAtIndexedSubscript_(*(v396 + 256), v416, *v418);
          v422 = sub_26223FCEC(v421).n128_u64[0];
          v424 = v423;
          objc_msgSend_quad(v421, v425, v426);
          v1082 = v427;
          objc_msgSend_quad(v421, v428, v429);
          v430 = v1082;
          *&v1114 = v422;
          *(&v1114 + 2) = v420;
          HIDWORD(v1114) = 0;
          *&v1115 = __PAIR64__(v431, v1082);
          v1083 = v431;
          *&v1136 = 0;
          v1135 = 0uLL;
          sub_2621DC430(&v1135, &v1114, &v1115 + 2, 6uLL);
          *&v1118 = v424;
          *(&v1118 + 2) = v420;
          HIDWORD(v1118) = 1065353216;
          *&v1119 = __PAIR64__(v1083, v430);
          *&v1115 = 0;
          v1114 = 0uLL;
          sub_2621DC430(&v1114, &v1118, &v1119 + 2, 6uLL);
          sub_2622F3228(&__p, &v1135);
          sub_2622F3228(&__p, &v1114);
          v432 = vceq_f32(v422, v424);
          if ((vpmin_u32(v432, v432).u32[0] & 0x80000000) == 0)
          {
            v433 = vsub_f32(vext_s8(v424, v422, 4uLL), vext_s8(v422, v424, 4uLL));
            v434 = vmul_f32(v433, v433);
            v434.i32[0] = vadd_f32(v434, vdup_lane_s32(v434, 1)).u32[0];
            v435 = vrsqrte_f32(v434.u32[0]);
            v436 = vmul_f32(v435, vrsqrts_f32(v434.u32[0], vmul_f32(v435, v435)));
            v437 = vmul_n_f32(v433, vmul_f32(v436, vrsqrts_f32(v434.u32[0], vmul_f32(v436, v436))).f32[0]);
            v438 = vneg_f32(v437);
            v439 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v437.f32[0] < 0.0), 0x1FuLL)), v438, v437);
            *v438.i32 = -*&v439.i32[1];
            *&v1118 = vzip1_s32(v438, v439);
            sub_2621CBA84(&v1139, &v1118);
          }

          if (v1114)
          {
            operator delete(v1114);
          }

          if (v1135)
          {
            operator delete(v1135);
          }

          ++v418;
          v396 = v1084;
        }

        while (v418 != v417);
        v442 = v1139;
        v419 = __p;
        if (*(&v1139 + 1) == v1139)
        {
LABEL_393:
          v456 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*(&v419 + 1) - v419) >> 3));
          if (*(&v419 + 1) == v419)
          {
            v457 = 0;
          }

          else
          {
            v457 = v456;
          }

          sub_262374FE8(v419, *(&v419 + 1), v457, 1);
        }

        else
        {
          v443 = 0;
          *&v1114 = 0;
          v444 = 0;
          if (__p != *(&__p + 1))
          {
            v445 = __p;
            do
            {
              v446 = *v445;
              v445 += 3;
              v441 = *v446;
              v444 = vadd_f32(v444, *v446);
              *&v1114 = v444;
            }

            while (v445 != *(&__p + 1));
          }

          v447 = 0xAAAAAAAAAAAAAAABLL * ((*(&__p + 1) - __p) >> 3);
          *v441.i32 = v447;
          *&v1114 = vdiv_f32(v444, vdup_lane_s32(v441, 0));
          *&v1118 = 0;
          do
          {
            v448 = *v442++;
            v449.i32[1] = v448.i32[1];
            v443 = vadd_f32(v448, v443);
            *&v1118 = v443;
          }

          while (v442 != *(&v1139 + 1));
          *v449.i32 = ((*(&v1139 + 1) - v1139) >> 3);
          v450 = vdiv_f32(v443, vdup_lane_s32(v449, 0));
          v451 = vmul_f32(v450, v450);
          v451.i32[0] = vadd_f32(v451, vdup_lane_s32(v451, 1)).u32[0];
          v452 = vrsqrte_f32(v451.u32[0]);
          v453 = vmul_f32(v452, vrsqrts_f32(v451.u32[0], vmul_f32(v452, v452)));
          v440.n128_u64[0] = vmul_n_f32(v450, vmul_f32(v453, vrsqrts_f32(v451.u32[0], vmul_f32(v453, v453))).f32[0]);
          *&v1118 = v440.n128_u64[0];
          *&v1135 = &v1114;
          *(&v1135 + 1) = &v1118;
          v454 = 126 - 2 * __clz(v447);
          if (__p == *(&__p + 1))
          {
            v455 = 0;
          }

          else
          {
            v455 = v454;
          }

          sub_26237332C(__p, *(&__p + 1), &v1135, v455, 1, v440);
        }

        if (*(&__p + 1) != __p)
        {
          v1135 = 0uLL;
          *&v1136 = 0;
          sub_2621C8E70(&v1135, *__p, *(__p + 8), (*(__p + 8) - *__p) >> 2);
          sub_2621CBEC8(1uLL);
        }

        if (v1139)
        {
          operator delete(v1139);
        }

        sub_2621C74C4(v1141);
        sub_2621C74C4(&buf);
        *&buf = &__p;
        sub_2621E1D40(&buf);
        v418 = v1103;
      }

      if (v418)
      {
        operator delete(v418);
      }

      sub_2621C74C4(v1151);
      v408 = v1034 + 3;
      v396 = v1084;
    }

    while (v1034 + 3 != v1030);
  }

  *&buf = &src;
  sub_2621E1CB0(&buf);

  v460 = objc_msgSend_array(MEMORY[0x277CBEB18], v458, v459);
  v461 = obje;
  v1081 = v460;
  *v1151 = 0u;
  v1152 = 0u;
  v1153 = 0u;
  v1154 = 0u;
  v1055 = v461;
  v463 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1055, v462, v1151, &buf, 16);
  if (v463)
  {
    v466 = v463;
    __srcc = *v1152;
    do
    {
      for (nn = 0; nn != v466; ++nn)
      {
        if (*v1152 != __srcc)
        {
          objc_enumerationMutation(v1055);
        }

        v468 = *(v1151[1] + nn);
        __p = 0u;
        v1148 = 0u;
        v1149 = 0u;
        v1150 = 0u;
        v469 = objc_msgSend_walls(v468, v464, v465);
        v473 = objc_msgSend_countByEnumeratingWithState_objects_count_(v469, v470, &__p, v1141, 16);
        if (v473)
        {
          v474 = *v1148;
          do
          {
            for (i1 = 0; i1 != v473; ++i1)
            {
              if (*v1148 != v474)
              {
                objc_enumerationMutation(v469);
              }

              v476 = *(*(&__p + 1) + 8 * i1);
              if (!v476 || (v476[106] & 1) == 0 && (v476[107] & 1) == 0)
              {
                v477 = objc_msgSend_copy(*(*(&__p + 1) + 8 * i1), v471, v472);
                objc_msgSend_addObject_(v1081, v478, v477);

                v479 = objc_alloc_init(MEMORY[0x277CBEB18]);
                objc_msgSend_addObject_(v479, v480, v476);
                v481 = *(v1084 + 648);
                v484 = objc_msgSend_identifier(v476, v482, v483);
                objc_msgSend_setObject_forKeyedSubscript_(v481, v485, v479, v484);
              }
            }

            v473 = objc_msgSend_countByEnumeratingWithState_objects_count_(v469, v471, &__p, v1141, 16);
          }

          while (v473);
        }
      }

      v466 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1055, v464, v1151, &buf, 16);
    }

    while (v466);
  }

  *&v1091 = v1084;
  v486 = v1033;
  v487 = v1081;
  __p = 0uLL;
  *&v1148 = 0;
  v1139 = 0uLL;
  v1140 = 0;
  *&v1095 = &__p;
  *(&v1095 + 1) = &v1139;
  v1045 = v487;
  sub_262372EC0(&v1095, v486);
  sub_262372EC0(&v1095, v487);
  v488 = v1139;
  if (*(&__p + 1) == __p)
  {
    goto LABEL_489;
  }

  v489 = v487;
  if (*(&v1139 + 1) != v1139)
  {
    v490 = *(v1091 + 164);
    *&v1136 = 0;
    v1135 = 0uLL;
    sub_262349634(&v1135, __p, *(&__p + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&__p + 1) - __p) >> 2));
    sub_2623496B0(&buf, 1, &v1135, v490);
    if (v1135)
    {
      *(&v1135 + 1) = v1135;
      operator delete(v1135);
    }

    sub_262336EFC(&buf);
    v491 = *(v1091 + 160);
    *&v1115 = 0;
    v1114 = 0uLL;
    sub_262349634(&v1114, v1139, *(&v1139 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v1139 + 1) - v1139) >> 2));
    sub_2623496B0(v1141, 1, &v1114, v491);
    if (v1114)
    {
      *(&v1114 + 1) = v1114;
      operator delete(v1114);
    }

    sub_262336EFC(v1141);
    v492 = SDWORD1(v1124);
    v1118 = 0uLL;
    *&v1119 = 0;
    sub_262349634(&v1118, buf, *(&buf + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&buf + 1) - buf) >> 2));
    v493 = *&v1141[36];
    src = 0uLL;
    *&v1108 = 0;
    sub_262349634(&src, *v1141, *&v1141[8], 0xAAAAAAAAAAAAAAABLL * ((*&v1141[8] - *v1141) >> 2));
    if (!v492 || !v493)
    {
      goto LABEL_480;
    }

    v1151[0] = 0;
    sub_26237302C(&v1103, v493, v1151);
    if (src.i64[1] != src.i64[0])
    {
      v494 = 0xAAAAAAAAAAAAAAABLL * ((src.i64[1] - src.i64[0]) >> 2);
      if (v494 <= 1)
      {
        v494 = 1;
      }

      v495 = v1103 - 8;
      v496 = (src.i64[0] + 8);
      __asm { FMOV            V0.2S, #1.0 }

      do
      {
        v499 = *v496;
        if (v499 >= 1)
        {
          v500.i32[1] = HIDWORD(_D0);
          v500.i32[0] = *(v496 - 2);
          *(v495 + 8 * v499) = vadd_f32(*(v495 + 8 * v499), v500);
        }

        v496 += 3;
        --v494;
      }

      while (v494);
    }

    if (v493 >= 1)
    {
      v501 = v1103;
      v502 = v493;
      do
      {
        *v501 = *v501 / v501[1];
        v501 += 2;
        --v502;
      }

      while (v502);
    }

    v1151[0] = 0;
    sub_26237302C(&v1099, v492, v1151);
    if (*(&v1118 + 1) != v1118)
    {
      v503 = 0xAAAAAAAAAAAAAAABLL * ((*(&v1118 + 1) - v1118) >> 2);
      if (v503 <= 1)
      {
        v503 = 1;
      }

      v504 = v1099 - 8;
      v505 = (v1118 + 8);
      __asm { FMOV            V0.2S, #1.0 }

      do
      {
        v507 = *v505;
        if (v507 >= 1)
        {
          v508.i32[1] = HIDWORD(_D0);
          v508.i32[0] = *(v505 - 2);
          *(v504 + 8 * v507) = vadd_f32(*(v504 + 8 * v507), v508);
        }

        v505 += 3;
        --v503;
      }

      while (v503);
    }

    if (v492 <= 0)
    {
      LODWORD(v1087) = 0;
      v511 = v1099;
    }

    else
    {
      v509 = v1099;
      v510 = v492;
      do
      {
        *v509 = *v509 / v509[1];
        v509 += 2;
        --v510;
      }

      while (v510);
      LODWORD(v1087) = 0;
      v511 = v1099;
      if (v492 != 1)
      {
        v512 = *(v1091 + 184);
        v513 = (v1099 + 4);
        v514 = 0.0;
        v515 = 0.0;
        do
        {
          v516 = *v513;
          if (*v513 > (v514 * v512))
          {
            v517 = (v516 * *(v513 - 1)) + (v515 * v514);
            v514 = v514 + v516;
            v515 = v517 / v514;
            *&v1087 = v515;
          }

          v513 += 2;
          --v492;
        }

        while (v492);
LABEL_461:
        if ((a3 + 1) >= (a4[1] - *a4) >> 2)
        {
          v518 = 3.4028e38;
        }

        else
        {
          v518 = *(*a4 + 4 * (a3 + 1));
        }

        if (v493 < 1)
        {
          v520 = -3.4028e38;
        }

        else
        {
          v519 = v1103;
          v520 = -3.4028e38;
          do
          {
            v521 = *v519;
            v519 += 2;
            v522 = v521;
            if (v521 > v520 && v522 <= v518)
            {
              v520 = v522;
            }

            --v493;
          }

          while (v493);
        }

        if (v520 <= (v518 - *(v1091 + 192)))
        {
          v520 = v518 - *(v1091 + 196);
        }

        v1151[0] = &v1091;
        v1151[1] = &v1103;
        *&v1152 = &v1087;
        *(&v1152 + 1) = &src;
        *&v1153 = v520;
        sub_2623730C8(v1151, v486, 0);
        v526 = objc_msgSend_count(v486, v524, v525);
        sub_2623730C8(v1151, v487, v526);
        *(*a4 + 4 * a3) = v1087;
        if (v1099)
        {
          *(&v1099 + 1) = v1099;
          operator delete(v1099);
        }

        if (v1103)
        {
          *(&v1103 + 1) = v1103;
          operator delete(v1103);
        }

LABEL_480:
        if (src.i64[0])
        {
          src.i64[1] = src.i64[0];
          operator delete(src.i64[0]);
        }

        if (v1118)
        {
          operator delete(v1118);
        }

        if (*v1141)
        {
          *&v1141[8] = *v1141;
          operator delete(*v1141);
        }

        if (buf)
        {
          *(&buf + 1) = buf;
          operator delete(buf);
        }

        v488 = v1139;
LABEL_489:
        v489 = v487;
        goto LABEL_490;
      }
    }

    LODWORD(v1087) = *v511;
    goto LABEL_461;
  }

LABEL_490:
  if (v488)
  {
    *(&v1139 + 1) = v488;
    operator delete(v488);
    v489 = v487;
  }

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
    v489 = v487;
  }

  *&v1095 = v1084;
  v527 = v1055;
  v1035 = v486;
  *&v1091 = v1035;
  *&v1099 = &v1095;
  *(&v1099 + 1) = &v1091;
  v1135 = 0u;
  v1136 = 0u;
  v1137 = 0u;
  v1138 = 0u;
  v1049 = v527;
  v531 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1049, v528, &v1135, &buf, 16);
  if (v531)
  {
    v1056 = *v1136;
    do
    {
      v532 = 0;
      __srcd = v531;
      do
      {
        if (*v1136 != v1056)
        {
          objc_enumerationMutation(v1049);
        }

        v533 = *(*(&v1135 + 1) + 8 * v532);
        v1114 = 0u;
        v1115 = 0u;
        v1116 = 0u;
        v1117 = 0u;
        v534 = objc_msgSend_doors(v533, v529, v530);
        v536 = objc_msgSend_countByEnumeratingWithState_objects_count_(v534, v535, &v1114, v1141, 16);
        if (v536)
        {
          v537 = *v1115;
          do
          {
            for (i2 = 0; i2 != v536; ++i2)
            {
              if (*v1115 != v537)
              {
                objc_enumerationMutation(v534);
              }

              sub_2623724D8(&v1099, *(*(&v1114 + 1) + 8 * i2), @"door", v533);
            }

            v536 = objc_msgSend_countByEnumeratingWithState_objects_count_(v534, v539, &v1114, v1141, 16);
          }

          while (v536);
        }

        v1120 = 0u;
        v1121 = 0u;
        v1118 = 0u;
        v1119 = 0u;
        v542 = objc_msgSend_opendoors(v533, v540, v541);
        v544 = objc_msgSend_countByEnumeratingWithState_objects_count_(v542, v543, &v1118, v1151, 16);
        if (v544)
        {
          v545 = *v1119;
          do
          {
            for (i3 = 0; i3 != v544; ++i3)
            {
              if (*v1119 != v545)
              {
                objc_enumerationMutation(v542);
              }

              sub_2623724D8(&v1099, *(*(&v1118 + 1) + 8 * i3), @"opendoor", v533);
            }

            v544 = objc_msgSend_countByEnumeratingWithState_objects_count_(v542, v547, &v1118, v1151, 16);
          }

          while (v544);
        }

        v1109 = 0u;
        v1110 = 0u;
        src = 0u;
        v1108 = 0u;
        v550 = objc_msgSend_openings(v533, v548, v549);
        v552 = objc_msgSend_countByEnumeratingWithState_objects_count_(v550, v551, &src, &__p, 16);
        if (v552)
        {
          v553 = *v1108;
          do
          {
            for (i4 = 0; i4 != v552; ++i4)
            {
              if (*v1108 != v553)
              {
                objc_enumerationMutation(v550);
              }

              sub_2623724D8(&v1099, *(src.i64[1] + 8 * i4), @"opening", v533);
            }

            v552 = objc_msgSend_countByEnumeratingWithState_objects_count_(v550, v555, &src, &__p, 16);
          }

          while (v552);
        }

        v1105 = 0u;
        v1106 = 0u;
        v1103 = 0u;
        v1104 = 0u;
        v558 = objc_msgSend_windows(v533, v556, v557);
        v560 = objc_msgSend_countByEnumeratingWithState_objects_count_(v558, v559, &v1103, &v1139, 16);
        if (v560)
        {
          v561 = *v1104;
          do
          {
            for (i5 = 0; i5 != v560; ++i5)
            {
              if (*v1104 != v561)
              {
                objc_enumerationMutation(v558);
              }

              sub_2623724D8(&v1099, *(*(&v1103 + 1) + 8 * i5), @"window", v533);
            }

            v560 = objc_msgSend_countByEnumeratingWithState_objects_count_(v558, v563, &v1103, &v1139, 16);
          }

          while (v560);
        }

        ++v532;
      }

      while (v532 != __srcd);
      v531 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1049, v529, &v1135, &buf, 16);
    }

    while (v531);
  }

  v1016 = objc_msgSend_array(MEMORY[0x277CBEB18], v564, v565);
  sub_262371014(v1084, v1016, *(v1084 + 264), v1084 + 368);

  v1017 = objc_msgSend_array(MEMORY[0x277CBEB18], v566, v567);
  sub_262371014(v1084, v1017, *(v1084 + 272), v1084 + 408);

  v568 = v1049;
  v569 = v1016;
  v570 = v1017;
  v1118 = 0u;
  v1119 = 0u;
  v1120 = 0u;
  v1121 = 0u;
  v571 = v568;
  loga = v571;
  v573 = objc_msgSend_countByEnumeratingWithState_objects_count_(v571, v572, &v1118, &buf, 16);
  if (v573)
  {
    v1057 = *v1119;
    do
    {
      __srce = v573;
      for (i6 = 0; i6 != __srce; ++i6)
      {
        if (*v1119 != v1057)
        {
          objc_enumerationMutation(v571);
        }

        v577 = *(*(&v1118 + 1) + 8 * i6);
        src = 0u;
        v1108 = 0u;
        v1109 = 0u;
        v1110 = 0u;
        v578 = objc_msgSend_doors(v577, v574, v575);
        v582 = objc_msgSend_countByEnumeratingWithState_objects_count_(v578, v579, &src, v1141, 16);
        if (v582)
        {
          v583 = *v1108;
          do
          {
            for (i7 = 0; i7 != v582; ++i7)
            {
              if (*v1108 != v583)
              {
                objc_enumerationMutation(v578);
              }

              v585 = *(src.i64[1] + 8 * i7);
              if (!v585 || (v585[106] & 1) == 0)
              {
                v586 = objc_msgSend_copy(v585, v580, v581);
                objc_msgSend_addObject_(v569, v587, v586);
              }
            }

            v582 = objc_msgSend_countByEnumeratingWithState_objects_count_(v578, v580, &src, v1141, 16);
          }

          while (v582);
        }

        v1105 = 0u;
        v1106 = 0u;
        v1103 = 0u;
        v1104 = 0u;
        v590 = objc_msgSend_opendoors(v577, v588, v589);
        v594 = objc_msgSend_countByEnumeratingWithState_objects_count_(v590, v591, &v1103, v1151, 16);
        if (v594)
        {
          v595 = *v1104;
          do
          {
            for (i8 = 0; i8 != v594; ++i8)
            {
              if (*v1104 != v595)
              {
                objc_enumerationMutation(v590);
              }

              v597 = *(*(&v1103 + 1) + 8 * i8);
              if (!v597 || (v597[106] & 1) == 0)
              {
                v598 = objc_msgSend_copy(v597, v592, v593);
                objc_msgSend_addObject_(v569, v599, v598);
              }
            }

            v594 = objc_msgSend_countByEnumeratingWithState_objects_count_(v590, v592, &v1103, v1151, 16);
          }

          while (v594);
        }

        v1101 = 0u;
        v1102 = 0u;
        v1099 = 0u;
        v1100 = 0u;
        v602 = objc_msgSend_openings(v577, v600, v601);
        v606 = objc_msgSend_countByEnumeratingWithState_objects_count_(v602, v603, &v1099, &__p, 16);
        if (v606)
        {
          v607 = *v1100;
          do
          {
            for (i9 = 0; i9 != v606; ++i9)
            {
              if (*v1100 != v607)
              {
                objc_enumerationMutation(v602);
              }

              v609 = *(*(&v1099 + 1) + 8 * i9);
              if (!v609 || (v609[106] & 1) == 0)
              {
                v610 = objc_msgSend_copy(v609, v604, v605);
                objc_msgSend_addObject_(v569, v611, v610);
              }
            }

            v606 = objc_msgSend_countByEnumeratingWithState_objects_count_(v602, v604, &v1099, &__p, 16);
          }

          while (v606);
        }

        v1097 = 0u;
        v1098 = 0u;
        v1095 = 0u;
        v1096 = 0u;
        v614 = objc_msgSend_windows(v577, v612, v613);
        v618 = objc_msgSend_countByEnumeratingWithState_objects_count_(v614, v615, &v1095, &v1139, 16);
        if (v618)
        {
          v619 = *v1096;
          do
          {
            for (i10 = 0; i10 != v618; ++i10)
            {
              if (*v1096 != v619)
              {
                objc_enumerationMutation(v614);
              }

              v621 = *(*(&v1095 + 1) + 8 * i10);
              if (!v621 || (v621[106] & 1) == 0)
              {
                v622 = objc_msgSend_copy(v621, v616, v617);
                objc_msgSend_addObject_(v570, v623, v622);
              }
            }

            v618 = objc_msgSend_countByEnumeratingWithState_objects_count_(v614, v616, &v1095, &v1139, 16);
          }

          while (v618);
        }

        v571 = loga;
      }

      v573 = objc_msgSend_countByEnumeratingWithState_objects_count_(loga, v574, &v1118, &buf, 16);
    }

    while (v573);
  }

  v1094 = 0u;
  v1092 = 0u;
  v1093 = 0u;
  v1091 = 0u;
  v624 = v569;
  v628 = objc_msgSend_countByEnumeratingWithState_objects_count_(v624, v625, &v1091, &v1135, 16);
  if (v628)
  {
    v629 = *v1092;
    do
    {
      for (i11 = 0; i11 != v628; ++i11)
      {
        if (*v1092 != v629)
        {
          objc_enumerationMutation(v624);
        }

        v631 = *(*(&v1091 + 1) + 8 * i11);
        v632 = *(v1084 + 640);
        v633 = objc_msgSend_parentIdentifier(v631, v626, v627);
        v635 = objc_msgSend_objectForKeyedSubscript_(v632, v634, v633);

        if (v635)
        {
          v638 = objc_msgSend_copy(v635, v636, v637);
          sub_2622C534C(v631, v638);
        }
      }

      v628 = objc_msgSend_countByEnumeratingWithState_objects_count_(v624, v626, &v1091, &v1135, 16);
    }

    while (v628);
  }

  v1089 = 0u;
  v1090 = 0u;
  v1087 = 0u;
  v1088 = 0u;
  v639 = v570;
  v643 = objc_msgSend_countByEnumeratingWithState_objects_count_(v639, v640, &v1087, &v1114, 16);
  if (v643)
  {
    v644 = *v1088;
    do
    {
      for (i12 = 0; i12 != v643; ++i12)
      {
        if (*v1088 != v644)
        {
          objc_enumerationMutation(v639);
        }

        v646 = *(*(&v1087 + 1) + 8 * i12);
        v647 = *(v1084 + 640);
        v648 = objc_msgSend_parentIdentifier(v646, v641, v642);
        v650 = objc_msgSend_objectForKeyedSubscript_(v647, v649, v648);

        if (v650)
        {
          v653 = objc_msgSend_copy(v650, v651, v652);
          sub_2622C534C(v646, v653);
        }
      }

      v643 = objc_msgSend_countByEnumeratingWithState_objects_count_(v639, v641, &v1087, &v1114, 16);
    }

    while (v643);
  }

  v1012 = loga;
  v654 = v1035;
  v1011 = v1045;
  v1009 = v624;
  v1010 = v639;
  v1118 = 0u;
  v1119 = 0u;
  v1120 = 0u;
  v1121 = 0u;
  v1050 = v654;
  v657 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1050, v655, &v1118, &__p, 16);
  if (v657)
  {
    v658 = *v1119;
    do
    {
      for (i13 = 0; i13 != v657; ++i13)
      {
        if (*v1119 != v658)
        {
          objc_enumerationMutation(v1050);
        }

        v660 = *(*(&v1118 + 1) + 8 * i13);
        if (v660)
        {
          v660[2] = v660[1];
          v660[11] = v660[10];
          v660[5] = v660[4];
          v660[8] = v660[7];
        }
      }

      v657 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1050, v656, &v1118, &__p, 16);
    }

    while (v657);
  }

  v661 = objc_opt_new();
  v1109 = 0u;
  v1110 = 0u;
  src = 0u;
  v1108 = 0u;
  v662 = v1012;
  v665 = objc_msgSend_countByEnumeratingWithState_objects_count_(v662, v663, &src, &v1139, 16);
  if (v665)
  {
    v666 = *v1108;
    do
    {
      for (i14 = 0; i14 != v665; ++i14)
      {
        if (*v1108 != v666)
        {
          objc_enumerationMutation(v662);
        }

        objc_msgSend_appendFloorPlan_(v661, v664, *(src.i64[1] + 8 * i14));
      }

      v665 = objc_msgSend_countByEnumeratingWithState_objects_count_(v662, v664, &src, &v1139, 16);
    }

    while (v665);
  }

  v1019 = v661;
  v1020 = v662;
  v1008 = v1050;
  v1013 = v1011;
  objc_opt_self();
  v668 = v1008;
  v669 = v1013;
  v1018 = v668;
  objc_opt_self();
  LOBYTE(buf) = 0;
  BYTE4(buf) = 0;
  *v1141 = &buf;
  sub_262370E1C(v1141, v668);
  sub_262370E1C(v1141, v669);
  v1015 = v669;

  v672 = *&buf;
  if ((buf & 0x100000000) != 0)
  {
    logb = objc_msgSend_objects(v1019, v670, v671);
    v1138 = 0u;
    v1137 = 0u;
    v1136 = 0u;
    v1135 = 0u;
    v1021 = v1020;
    v1026 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1021, v673, &v1135, &buf, 16);
    if (v1026)
    {
      v676 = 0;
      v677 = v672;
      v1023 = *v1136;
      do
      {
        v1031 = 0;
        do
        {
          if (*v1136 != v1023)
          {
            objc_enumerationMutation(v1021);
          }

          v678 = *(*(&v1135 + 1) + 8 * v1031);
          if (v678)
          {
            v679 = v678[4];
          }

          else
          {
            v679 = 0.0;
          }

          v680 = objc_msgSend_objects(v678, v674, v675);
          v683 = objc_msgSend_count(v680, v681, v682);

          if (v683 + v676 > objc_msgSend_count(logb, v684, v685))
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x266727130](exception, "Inconsistent object counts between aggregated_floorplan and source_floorplans.");
            __cxa_throw(exception, &unk_2874EF270, MEMORY[0x277D82600]);
          }

          if (v676 < v683 + v676)
          {
            v686 = v677 - v679;
            v1036 = v683 + v676;
            do
            {
              i17 = objc_msgSend_objectAtIndexedSubscript_(logb, v674, v676);
              v690 = objc_msgSend_type(i17, v688, v689);
              __srcf = i17;
              v1046 = v676;
              v692 = objc_msgSend_isEqual_(v690, v691, @"Stairs");

              if ((v692 & 1) == 0)
              {
                v1103 = 0uLL;
                *&v1104 = 0;
                v1114 = 0u;
                v1115 = 0u;
                v1116 = 0u;
                v1117 = 0u;
                v695 = objc_msgSend_boxesDict(i17, v693, v694);
                v699 = objc_msgSend_countByEnumeratingWithState_objects_count_(v695, v696, &v1114, v1141, 16);
                if (v699)
                {
                  v1058 = *v1115;
                  do
                  {
                    for (i15 = 0; i15 != v699; ++i15)
                    {
                      if (*v1115 != v1058)
                      {
                        objc_enumerationMutation(v695);
                      }

                      v701 = *(*(&v1114 + 1) + 8 * i15);
                      v1157 = 0u;
                      v1158 = 0u;
                      v1155 = 0u;
                      v1156 = 0u;
                      v1153 = 0u;
                      v1154 = 0u;
                      *v1151 = 0u;
                      v1152 = 0u;
                      v702 = objc_msgSend_boxesDict(i17, v697, v698);
                      v704 = objc_msgSend_objectForKeyedSubscript_(v702, v703, v701);
                      sub_262211250(v1151, v704);

                      for (i16 = 1; i16 != 17; i16 += 2)
                      {
                        *&v1151[i16] = v686 + *&v1151[i16];
                      }

                      v706 = v701;
                      v707 = *(&v1103 + 1);
                      if (*(&v1103 + 1) >= v1104)
                      {
                        v709 = v1103;
                        v710 = *(&v1103 + 1) - v1103;
                        v711 = 0x8E38E38E38E38E39 * ((*(&v1103 + 1) - v1103) >> 4) + 1;
                        if (v711 > 0x1C71C71C71C71C7)
                        {
                          sub_2621CBEB0();
                        }

                        if (0x1C71C71C71C71C72 * ((v1104 - v1103) >> 4) > v711)
                        {
                          v711 = 0x1C71C71C71C71C72 * ((v1104 - v1103) >> 4);
                        }

                        if (0x8E38E38E38E38E39 * ((v1104 - v1103) >> 4) >= 0xE38E38E38E38E3)
                        {
                          v712 = 0x1C71C71C71C71C7;
                        }

                        else
                        {
                          v712 = v711;
                        }

                        if (v712)
                        {
                          if (v712 <= 0x1C71C71C71C71C7)
                          {
                            operator new();
                          }

                          sub_2621C6A34();
                        }

                        v713 = 16 * ((*(&v1103 + 1) - v1103) >> 4);
                        *v713 = v706;
                        v714 = v1156;
                        *(v713 + 80) = v1155;
                        *(v713 + 96) = v714;
                        v715 = v1158;
                        *(v713 + 112) = v1157;
                        *(v713 + 128) = v715;
                        v716 = v1152;
                        *(v713 + 16) = *v1151;
                        *(v713 + 32) = v716;
                        v717 = v1154;
                        v718 = v713 - v710;
                        *(v713 + 48) = v1153;
                        *(v713 + 64) = v717;
                        if (v709 != v707)
                        {
                          v719 = v709;
                          v720 = v718;
                          do
                          {
                            v721 = *v719;
                            *v719 = 0;
                            *v720 = v721;
                            v722 = *(v719 + 1);
                            v723 = *(v719 + 2);
                            v724 = *(v719 + 4);
                            *(v720 + 48) = *(v719 + 3);
                            *(v720 + 64) = v724;
                            *(v720 + 16) = v722;
                            *(v720 + 32) = v723;
                            v725 = *(v719 + 5);
                            v726 = *(v719 + 6);
                            v727 = *(v719 + 8);
                            *(v720 + 112) = *(v719 + 7);
                            *(v720 + 128) = v727;
                            *(v720 + 80) = v725;
                            *(v720 + 96) = v726;
                            v719 += 18;
                            v720 += 144;
                          }

                          while (v719 != v707);
                          do
                          {

                            v709 += 18;
                          }

                          while (v709 != v707);
                          v709 = v1103;
                        }

                        v708 = (v713 + 144);
                        *&v1103 = v718;
                        *(&v1103 + 1) = v708;
                        *&v1104 = 0;
                        if (v709)
                        {
                          operator delete(v709);
                        }
                      }

                      else
                      {
                        **(&v1103 + 1) = v706;
                        *(v707 + 5) = v1155;
                        *(v707 + 6) = v1156;
                        *(v707 + 7) = v1157;
                        *(v707 + 8) = v1158;
                        *(v707 + 1) = *v1151;
                        *(v707 + 2) = v1152;
                        *(v707 + 3) = v1153;
                        *(v707 + 4) = v1154;
                        v708 = v707 + 18;
                      }

                      i17 = __srcf;
                      *(&v1103 + 1) = v708;
                    }

                    v699 = objc_msgSend_countByEnumeratingWithState_objects_count_(v695, v697, &v1114, v1141, 16);
                  }

                  while (v699);
                }

                v729 = *(&v1103 + 1);
                v728 = v1103;
                for (i17 = __srcf; v728 != v729; v728 = &v730[8])
                {
                  v731 = *v728;
                  v730 = (v728 + 2);
                  sub_26223FC2C(__srcf, v730, v731);
                }

                v1151[0] = &v1103;
                sub_262370D9C(v1151);
              }

              v676 = v1046 + 1;
            }

            while (v1046 + 1 < v1036);
          }

          v1031 = v1031 + 1;
        }

        while (v1031 != v1026);
        v732 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1021, v674, &v1135, &buf, 16);
        v1026 = v732;
      }

      while (v732);
    }
  }

  else
  {
    if (qword_27FF0C060 != -1)
    {
      dispatch_once(&qword_27FF0C060, &unk_2874EE100);
    }

    logb = qword_27FF0C058;
    if (os_log_type_enabled(logb, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_2621C3000, logb, OS_LOG_TYPE_DEBUG, "Unable to get merged floor height; abort object height adjustment.", &buf, 2u);
    }
  }

  v1059 = objc_msgSend_array(MEMORY[0x277CBEB18], v733, v734);
  objc_msgSend_addObjectsFromArray_(v1059, v735, v1018);
  objc_msgSend_addObjectsFromArray_(v1059, v736, v1015);
  v737 = v1019;
  v738 = v1059;
  v739 = v1009;
  v1014 = v1010;
  objc_opt_self();
  logc = objc_opt_new();
  sub_2622AE900(logc, v738);
  v742 = objc_msgSend_array(MEMORY[0x277CBEB18], v740, v741);
  v745 = objc_msgSend_array(MEMORY[0x277CBEB18], v743, v744);
  v748 = objc_msgSend_array(MEMORY[0x277CBEB18], v746, v747);
  v1138 = 0u;
  v1137 = 0u;
  v1136 = 0u;
  v1135 = 0u;
  v1047 = v739;
  v750 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1047, v749, &v1135, v1151, 16);
  if (v750)
  {
    v751 = *v1136;
    do
    {
      for (i18 = 0; i18 != v750; ++i18)
      {
        if (*v1136 != v751)
        {
          objc_enumerationMutation(v1047);
        }

        v753 = *(*(&v1135 + 1) + 8 * i18);
        v756 = objc_msgSend_type(v753, v754, v755);
        v757 = v742;
        if (v756 == 2)
        {
          goto LABEL_672;
        }

        if (v756 == 3)
        {
          v757 = v748;
LABEL_672:
          objc_msgSend_addObject_(v757, v757, v753);
          goto LABEL_673;
        }

        v757 = v745;
        if (v756 == 4)
        {
          goto LABEL_672;
        }

LABEL_673:
      }

      v750 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1047, v758, &v1135, v1151, 16);
    }

    while (v750);
  }

  sub_26223FCDC(logc, v742);
  sub_2622AE920(logc, v748);
  sub_26223FCBC(logc, v745);
  sub_2622AE910(logc, v1014);
  v761 = objc_msgSend_curvedWalls(v737, v759, v760);
  sub_2622AE930(logc, v761);

  v764 = objc_msgSend_curvedDoors(v737, v762, v763);
  sub_2622AE940(logc, v764);

  v767 = objc_msgSend_curvedWindows(v737, v765, v766);
  sub_2622AE950(logc, v767);

  v770 = objc_msgSend_roomTypes(v737, v768, v769);
  sub_2622AE970(logc, v770);

  v773 = logc;
  if (logc)
  {
    sub_26229CF80(&buf);
    memset(&v1141[8], 0, 64);
    v1142 = 0u;
    v1143 = 0u;
    v1145 = 0;
    *v1141 = &unk_2874EF0B8;
    v1144 = 0;
    v1146 = 257;
    sub_262241864(&buf, logc, 0, v1141);
    *v1141 = &unk_2874EF0B8;
    if (v1145)
    {
      sub_2621D1B78(v1145);
    }

    sub_262241820(v1134);
    v774 = v1133;
    v1133 = 0;
    if (v774)
    {
      operator delete(v774);
    }

    sub_26229D160(&buf);
    v773 = logc;
  }

  v775 = objc_msgSend_walls(v773, v771, v772);
  v778 = objc_msgSend_openings(v773, v776, v777);
  v781 = objc_msgSend_objects(v737, v779, v780);
  v782 = sub_2622B27C4(v775, v778, v781);
  sub_26223FCCC(logc, v782);

  v785 = objc_msgSend_walls(logc, v783, v784);
  memset(v1141, 0, 64);
  v786 = v785;
  v789 = objc_msgSend_countByEnumeratingWithState_objects_count_(v786, v787, v1141, &buf, 16);
  if (v789)
  {
    v790 = **&v1141[16];
    do
    {
      for (i19 = 0; i19 != v789; ++i19)
      {
        if (**&v1141[16] != v790)
        {
          objc_enumerationMutation(v786);
        }

        v792 = *(*&v1141[8] + 8 * i19);
        if (v792 && *(v792 + 132) < *(v1084 + 144))
        {
          *(v792 + 132) = 0;
        }
      }

      v789 = objc_msgSend_countByEnumeratingWithState_objects_count_(v786, v788, v1141, &buf, 16);
    }

    while (v789);
  }

  sub_2622AEE64(logc, v793, v794);
  v795 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (logc)
  {
    isa_high = HIDWORD(logc[1].isa);
    isa = logc[2].isa;
  }

  else
  {
    isa_high = 0;
    isa = 0;
  }

  v1022 = isa_high;
  v797 = v1020;
  v1027 = v795;
  v1103 = 0uLL;
  *&v1104 = 0;
  v1114 = 0u;
  v1115 = 0u;
  v1116 = 0u;
  v1117 = 0u;
  v1032 = v797;
  v799 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1032, v798, &v1114, &v1135, 16);
  if (v799)
  {
    v1037 = *v1115;
    do
    {
      v800 = 0;
      v1051 = v799;
      do
      {
        if (*v1115 != v1037)
        {
          objc_enumerationMutation(v1032);
        }

        v801 = v800;
        v1060 = *(*(&v1114 + 1) + 8 * v800);
        v806 = objc_msgSend_roomTypes(v1060, v802, v803);
        for (i20 = 0; objc_msgSend_count(v806, v804, v805) > i20; ++i20)
        {
          v809 = objc_msgSend_objectAtIndexedSubscript_(v806, v808, i20);
          v812 = objc_msgSend_label(v809, v810, v811);
          v813 = v812 == 0;

          if (v813)
          {
            if (qword_27FF0C060 != -1)
            {
              dispatch_once(&qword_27FF0C060, &unk_2874EE100);
            }

            v845 = qword_27FF0C058;
            if (os_log_type_enabled(v845, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&dword_2621C3000, v845, OS_LOG_TYPE_ERROR, "Invalid label in RSRoomType, skipping", &buf, 2u);
            }

            goto LABEL_737;
          }

          v815 = objc_msgSend_objectAtIndexedSubscript_(v806, v814, i20);
          v818 = objc_msgSend_polygon(v815, v816, v817);
          if (!objc_msgSend_count(v818, v819, v820))
          {

LABEL_712:
            if (qword_27FF0C060 != -1)
            {
              dispatch_once(&qword_27FF0C060, &unk_2874EE100);
            }

            v845 = qword_27FF0C058;
            if (os_log_type_enabled(v845, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&dword_2621C3000, v845, OS_LOG_TYPE_ERROR, "Invalid polygon in RSRoomType, skipping", &buf, 2u);
            }

LABEL_737:

            continue;
          }

          v822 = objc_msgSend_objectAtIndexedSubscript_(v806, v821, i20);
          v825 = objc_msgSend_polygon(v822, v823, v824);
          v828 = objc_msgSend_points(v825, v826, v827) == 0;

          if (v828)
          {
            goto LABEL_712;
          }

          for (i21 = 0; ; ++i21)
          {
            v831 = objc_msgSend_objectAtIndexedSubscript_(v806, v829, i20);
            v834 = objc_msgSend_polygon(v831, v832, v833);
            v837 = objc_msgSend_count(v834, v835, v836) > i21;

            if (!v837)
            {
              break;
            }

            v839 = objc_msgSend_objectAtIndexedSubscript_(v806, v838, i20);
            v842 = objc_msgSend_polygon(v839, v840, v841);
            objc_msgSend_points(v842, v843, v844);
          }

          v846 = objc_msgSend_objectAtIndexedSubscript_(v806, v838, i20);
          objc_msgSend_polygonCenter(v846, v847, v848);
          v850 = objc_msgSend_objectAtIndexedSubscript_(v806, v849, i20);
          objc_msgSend_polygonCenter(v850, v851, v852);

          v854 = objc_msgSend_objectAtIndexedSubscript_(v806, v853, i20);
          v855 = *(&v1103 + 1);
          if (*(&v1103 + 1) >= v1104)
          {
            v857 = v1103;
            v858 = (*(&v1103 + 1) - v1103) >> 3;
            v859 = v858 + 1;
            if ((v858 + 1) >> 61)
            {
              sub_2621CBEB0();
            }

            v860 = v1104 - v1103;
            if ((v1104 - v1103) >> 2 > v859)
            {
              v859 = v860 >> 2;
            }

            if (v860 >= 0x7FFFFFFFFFFFFFF8)
            {
              v861 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v861 = v859;
            }

            if (v861)
            {
              if (!(v861 >> 61))
              {
                operator new();
              }

              sub_2621C6A34();
            }

            v862 = (8 * v858);
            v863 = &v862[-((*(&v1103 + 1) - v1103) >> 3)];
            *v862 = v854;
            v856 = v862 + 1;
            if (v857 != v855)
            {
              v864 = v857;
              v865 = v863;
              do
              {
                v866 = *v864;
                *v864++ = 0;
                *v865++ = v866;
              }

              while (v864 != v855);
              do
              {
              }

              while (v857 != v855);
              v857 = v1103;
            }

            *&v1103 = v863;
            *(&v1103 + 1) = v856;
            *&v1104 = 0;
            if (v857)
            {
              operator delete(v857);
            }
          }

          else
          {
            **(&v1103 + 1) = v854;
            v856 = v855 + 1;
          }

          *(&v1103 + 1) = v856;
        }

        v800 = v801 + 1;
      }

      while ((v801 + 1) != v1051);
      v799 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1032, v867, &v1114, &v1135, 16);
    }

    while (v799);
  }

  v868 = *(&v1103 + 1) - v1103;
  v869 = ((*(&v1103 + 1) - v1103) >> 3);
  sub_262370CD4(&v1099, v869);
  v872 = (v868 >> 3) & 0x7FFFFFFF;
  __srcg = v868 >> 3;
  if ((v868 >> 3) >= 1)
  {
    v873 = 0;
    do
    {
      v874 = objc_msgSend_polygon(*(v1103 + 8 * v873), v870, v871);
      v875 = v1099;
      v878 = objc_msgSend_count(v874, v876, v877);
      sub_26220F5A0((v875 + 24 * v873), v878);
      v883 = objc_msgSend_points(v874, v879, v880);
      for (i22 = 0; objc_msgSend_count(v874, v881, v882) > i22; ++i22)
      {
        *&buf = *(v883 + 8 * i22);
        sub_2621CBA84(v1099 + 24 * v873, &buf);
      }

      ++v873;
    }

    while (v873 != v872);
  }

  sub_2621E1C0C(&v1095, v869);
  *v1141 = 0;
  if (__srcg <= 0)
  {
    v1091 = 0uLL;
    *&v1092 = 0;
    v1118 = 0u;
    v1119 = 0u;
    LODWORD(v1120) = 1065353216;
  }

  else
  {
    v887 = 0;
    v888 = 1;
    v889 = 24;
    do
    {
      LODWORD(v1151[0]) = v887 + 1;
      v890 = v889;
      v891 = v888;
      v892 = v887 + 1;
      if (v887 + 1 < v872)
      {
        do
        {
          v893 = objc_msgSend_label(*(v1103 + 8 * v887), v885, v886);
          v896 = objc_msgSend_label(*(v1103 + 8 * v888), v894, v895);
          v898 = objc_msgSend_isEqual_(v893, v897, v896);

          if (v898)
          {
            LODWORD(v899) = 1036831949;
            sub_26233E420(&buf, *(v1099 + 24 * v887), *(v1099 + 24 * v887 + 8), (v1099 + v890), v899);
            v900 = buf / v1123;
            if ((buf / *(&buf + 1)) >= v900)
            {
              v900 = buf / *(&buf + 1);
            }

            if (v900 >= *(v1084 + 188))
            {
              sub_2621C7CD0(v1095 + 24 * v887, v1151);
              sub_2621C7CD0(v1095 + v890, v1141);
            }
          }

          LODWORD(v1151[0]) = ++v888;
          v890 += 24;
        }

        while (v872 != v888);
      }

      *v1141 = v887 + 1;
      v888 = v891 + 1;
      v889 += 24;
      ++v887;
    }

    while (v892 != v872);
    v901 = 0;
    v1091 = 0uLL;
    *&v1092 = 0;
    v1118 = 0u;
    v1119 = 0u;
    LODWORD(v1120) = 1065353216;
    LODWORD(__p) = 0;
    do
    {
      if (!sub_2621C719C(&v1118, v901))
      {
        v1151[1] = 0;
        v1151[0] = 0;
        *&v1152 = 0;
        v1123 = 0u;
        v1124 = 0u;
        buf = 0u;
        sub_26228324C(&buf, &__p);
        sub_2621C729C(&v1118, v901, &__p);
        while (*(&v1124 + 1))
        {
          v902 = *(*(*(&buf + 1) + ((v1124 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v1124 & 0x3FF));
          *v1141 = v902;
          --*(&v1124 + 1);
          *&v1124 = v1124 + 1;
          if (v1124 >= 0x800)
          {
            operator delete(**(&buf + 1));
            *(&buf + 1) += 8;
            *&v1124 = v1124 - 1024;
          }

          sub_2621C7CD0(v1151, v1141);
          v903 = v1095 + 24 * v902;
          v904 = *v903;
          v905 = *(v903 + 8);
          while (v904 != v905)
          {
            LODWORD(v1139) = *v904;
            v906 = v1139;
            if (!sub_2621C719C(&v1118, v1139))
            {
              sub_26228324C(&buf, &v1139);
              sub_2621C729C(&v1118, v906, &v1139);
            }

            ++v904;
          }
        }

        v907 = *(&v1091 + 1);
        if (*(&v1091 + 1) >= v1092)
        {
          v910 = 0xAAAAAAAAAAAAAAABLL * ((*(&v1091 + 1) - v1091) >> 3);
          v911 = v910 + 1;
          if (v910 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_2621CBEB0();
          }

          if (0x5555555555555556 * ((v1092 - v1091) >> 3) > v911)
          {
            v911 = 0x5555555555555556 * ((v1092 - v1091) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v1092 - v1091) >> 3) >= 0x555555555555555)
          {
            v912 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v912 = v911;
          }

          *&v1141[32] = &v1091;
          if (v912)
          {
            sub_2621E1E3C(v912);
          }

          v913 = (8 * ((*(&v1091 + 1) - v1091) >> 3));
          *v1141 = 0;
          *&v1141[8] = v913;
          *&v1141[16] = v913;
          *&v1141[24] = 0;
          *v913 = 0;
          v913[1] = 0;
          v913[2] = 0;
          sub_2621C8B60((24 * v910), v1151[0], v1151[1], (v1151[1] - v1151[0]) >> 2);
          v909 = *&v1141[16] + 24;
          v914 = (*&v1141[8] - (*(&v1091 + 1) - v1091));
          memcpy(v914, v1091, *(&v1091 + 1) - v1091);
          v915 = v1091;
          v916 = v1092;
          *&v1091 = v914;
          *(&v1091 + 1) = v909;
          *&v1092 = *&v1141[24];
          *&v1141[16] = v915;
          *&v1141[24] = v916;
          *&v1141[8] = v915;
          *v1141 = v915;
          sub_26220AA90(v1141);
          v908 = v1151[0];
        }

        else
        {
          **(&v1091 + 1) = 0;
          v907[1] = 0;
          v907[2] = 0;
          v908 = v1151[0];
          sub_2621C8B60(v907, v1151[0], v1151[1], (v1151[1] - v1151[0]) >> 2);
          v909 = (v907 + 3);
        }

        *(&v1091 + 1) = v909;
        sub_262283C10(&buf);
        if (v908)
        {
          operator delete(v908);
        }

        v901 = __p;
      }

      LODWORD(__p) = ++v901;
    }

    while (v901 < __srcg);
  }

  objc_msgSend_removeAllObjects(v1027, v885, v886);
  v1038 = *(&v1091 + 1);
  if (v1091 != *(&v1091 + 1))
  {
    __asm { FMOV            V0.2S, #-5.0 }

    v920 = vdup_n_s32(0x3CA3D70Au);
    __asm { FMOV            V14.2S, #1.0 }

    v922 = v1091;
    __asm { FMOV            V9.2S, #5.0 }

    do
    {
      v1052 = v922;
      v925 = v922;
      v924 = *v922;
      v926 = v925[1] - v924;
      if (v926)
      {
        if (v926 != 1)
        {
          objc_msgSend_label(*(v1103 + 8 * *v924), v917, v918);
          objc_claimAutoreleasedReturnValue();
          v1087 = 0uLL;
          *&v1088 = 0;
          v932 = *v1052;
          v933 = v1052[1];
          if (*v1052 == v933)
          {
            v943 = 0;
            v934 = 0;
            v945 = 0x80000000800000;
            v946 = vneg_f32(0x80000000800000);
            v944 = 1;
          }

          else
          {
            v934 = 0;
            do
            {
              v935 = v1099 + 24 * *v932;
              if (v934 >= v1088)
              {
                v936 = 0xAAAAAAAAAAAAAAABLL * ((v934 - v1087) >> 3);
                v937 = v936 + 1;
                if (v936 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_2621CBEB0();
                }

                if (0x5555555555555556 * ((v1088 - v1087) >> 3) > v937)
                {
                  v937 = 0x5555555555555556 * ((v1088 - v1087) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v1088 - v1087) >> 3) >= 0x555555555555555)
                {
                  v938 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v938 = v937;
                }

                *&v1124 = &v1087;
                if (v938)
                {
                  sub_2621E1EE4(v938);
                }

                v939 = (8 * ((v934 - v1087) >> 3));
                *&buf = 0;
                *(&buf + 1) = v939;
                v1123 = v939;
                *v939 = 0;
                v939[1] = 0;
                v939[2] = 0;
                sub_2621CC8B4((24 * v936), *v935, *(v935 + 8), (*(v935 + 8) - *v935) >> 3);
                v934 = (v1123 + 24);
                v940 = (*(&buf + 1) - (*(&v1087 + 1) - v1087));
                memcpy(v940, v1087, *(&v1087 + 1) - v1087);
                v941 = v1087;
                v942 = v1088;
                *&v1087 = v940;
                *(&v1087 + 1) = v934;
                *&v1088 = *(&v1123 + 1);
                *&v1123 = v941;
                *(&v1123 + 1) = v942;
                *(&buf + 1) = v941;
                *&buf = v941;
                sub_26220AA90(&buf);
              }

              else
              {
                *v934 = 0;
                v934[1] = 0;
                v934[2] = 0;
                sub_2621CC8B4(v934, *v935, *(v935 + 8), (*(v935 + 8) - *v935) >> 3);
                v934 += 3;
              }

              *(&v1087 + 1) = v934;
              ++v932;
            }

            while (v932 != v933);
            v943 = v1087;
            v944 = v1087 == v934;
            v945 = 0x80000000800000;
            v946 = vneg_f32(0x80000000800000);
            if (v1087 != v934)
            {
              v947 = v1087;
              do
              {
                for (i23 = *v947; i23 != v947[1]; ++i23)
                {
                  v949 = *i23;
                  v946 = vbsl_s8(vcgt_f32(v946, v949), v949, v946);
                  v945 = vbsl_s8(vcgt_f32(v949, v945), v949, v945);
                }

                v947 += 3;
              }

              while (v947 != v934);
            }
          }

          v950 = vsub_f32(v945, v946);
          v1113 = (v950.f32[0] / 0.02) + 10;
          v1112 = (v950.f32[1] / 0.02) + 10;
          src = 0uLL;
          *&v1108 = 0;
          v1061 = v934;
          if (!v944)
          {
            do
            {
              memset(v1141, 0, 24);
              sub_26220F5A0(v1141, (v943[1] - *v943) >> 3);
              v951 = *v943;
              v952 = v943[1];
              if (*v943 != v952)
              {
                v953 = *&v1141[16];
                v954 = *&v1141[8];
                v955 = *v1141;
                do
                {
                  v956 = vadd_f32(vdiv_f32(vsub_f32(*v951, v946), v920), _D9);
                  v957 = -v956.f32[0];
                  if (v956.f32[0] >= 0.0)
                  {
                    v957 = v956.f32[0];
                  }

                  v958 = v957;
                  v959 = v957 - v957;
                  if (v959 < 0.5)
                  {
                    v960 = v958;
                  }

                  else
                  {
                    v960 = v958 + 1;
                  }

                  v961 = (v958 & 1) + v958;
                  if (v959 != 0.5)
                  {
                    v961 = v960;
                  }

                  if (v956.f32[0] < 0.0)
                  {
                    v961 = -v961;
                  }

                  LODWORD(v962) = v961;
                  v963 = -v956.f32[1];
                  if (v956.f32[1] >= 0.0)
                  {
                    v963 = v956.f32[1];
                  }

                  v964 = v963;
                  v965 = v963 - v963;
                  if (v965 < 0.5)
                  {
                    v966 = v964;
                  }

                  else
                  {
                    v966 = v964 + 1;
                  }

                  v967 = (v964 & 1) + v964;
                  if (v965 != 0.5)
                  {
                    v967 = v966;
                  }

                  if (v956.f32[1] < 0.0)
                  {
                    v967 = -v967;
                  }

                  HIDWORD(v962) = v967;
                  if (v954 >= v953)
                  {
                    v968 = v954 - v955;
                    v969 = (v954 - v955) >> 3;
                    v970 = v969 + 1;
                    if ((v969 + 1) >> 61)
                    {
                      *&v1141[16] = v953;
                      *&v1141[8] = v954;
                      *v1141 = v955;
                      sub_2621CBEB0();
                    }

                    if ((v953 - v955) >> 2 > v970)
                    {
                      v970 = (v953 - v955) >> 2;
                    }

                    if (v953 - v955 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v971 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v971 = v970;
                    }

                    if (v971)
                    {
                      sub_2621CBEC8(v971);
                    }

                    v953 = 0;
                    *(8 * v969) = v962;
                    v954 = (8 * v969 + 8);
                    memcpy(0, v955, v968);
                    if (v955)
                    {
                      operator delete(v955);
                    }

                    v955 = 0;
                  }

                  else
                  {
                    *v954 = v962;
                    v954 += 8;
                  }

                  ++v951;
                }

                while (v951 != v952);
                *&v1141[16] = v953;
                *&v1141[8] = v954;
                *v1141 = v955;
                v934 = v1061;
              }

              v972 = src.i64[1];
              if (src.i64[1] >= v1108)
              {
                v975 = 0xAAAAAAAAAAAAAAABLL * ((src.i64[1] - src.i64[0]) >> 3);
                v976 = v975 + 1;
                if (v975 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_2621CBEB0();
                }

                if (0x5555555555555556 * ((v1108 - src.i64[0]) >> 3) > v976)
                {
                  v976 = 0x5555555555555556 * ((v1108 - src.i64[0]) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v1108 - src.i64[0]) >> 3) >= 0x555555555555555)
                {
                  v977 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v977 = v976;
                }

                *&v1124 = &src;
                if (v977)
                {
                  if (v977 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  sub_2621C6A34();
                }

                v978 = (8 * ((src.i64[1] - src.i64[0]) >> 3));
                *&buf = 0;
                *(&buf + 1) = v978;
                v1123 = v978;
                v978[1] = 0;
                v978[2] = 0;
                *v978 = 0;
                sub_262341F64((24 * v975), *v1141, *&v1141[8], (*&v1141[8] - *v1141) >> 3);
                v974 = (v1123 + 24);
                v979 = (*(&buf + 1) - (src.i64[1] - src.i64[0]));
                memcpy(v979, src.i64[0], src.i64[1] - src.i64[0]);
                v980 = src.i64[0];
                v981 = v1108;
                src.i64[0] = v979;
                src.i64[1] = v974;
                *&v1108 = *(&v1123 + 1);
                *&v1123 = v980;
                *(&v1123 + 1) = v981;
                *(&buf + 1) = v980;
                *&buf = v980;
                sub_26220AA90(&buf);
                v973 = *v1141;
              }

              else
              {
                *src.i64[1] = 0;
                v972[1] = 0;
                v972[2] = 0;
                v973 = *v1141;
                sub_262341F64(v972, *v1141, *&v1141[8], (*&v1141[8] - *v1141) >> 3);
                v974 = v972 + 3;
              }

              src.i64[1] = v974;
              if (v973)
              {
                operator delete(v973);
              }

              v943 += 3;
            }

            while (v943 != v934);
          }

          sub_2622D4838(&buf, &v1113, &v1112);
          sub_26225F17C(v1151, 0, &buf);
          v1111 = 1;
          v987 = src.i64[1];
          for (i24 = src.i64[0]; i24 != v987; i24 += 3)
          {
            sub_2621DA470(v1151, *i24, i24[1], &v1111, v982, v983, v984, v985);
          }

          v1123 = 0u;
          v1124 = 0u;
          buf = 0u;
          sub_26222D2A8(&v1125, v1151);
          v1132 = 0;
          v1131 = 0u;
          v1130 = 0u;
          v1129 = 0u;
          buf = v1126;
          v1123 = v1127;
          v1124 = v1128;
          sub_26233EBDC(&v1139, &buf);
        }

        v927 = objc_msgSend_copy(*(v1103 + 8 * *v924), v917, v918);
        v928 = v927;
        if (v927)
        {
          *(v927 + 8) = isa;
          *(v927 + 12) = v1022;
        }

        v929 = (v1099 + 24 * **v1052);
        sub_26233E620(*v929, v929[1]);
        if (v928)
        {
          v928[7] = v931;
        }

        objc_msgSend_addObject_(v1027, v930, v928);
      }

      v922 = v1052 + 3;
    }

    while (v1052 + 3 != v1038);
  }

  sub_2621C74C4(&v1118);
  *&buf = &v1091;
  sub_2621E1CB0(&buf);
  *&buf = &v1095;
  sub_2621E1CB0(&buf);
  *&buf = &v1099;
  sub_2621E1CB0(&buf);
  *&buf = &v1103;
  sub_2621C512C(&buf);

  sub_2622AE970(logc, v1027);
  sub_262337358(*(v1084 + 664), v1032, logc);
  v988 = v1032;
  v989 = logc;
  sub_2622B0C74(v989, a3, v990);
  memset(v1141, 0, 64);
  v991 = v988;
  v994 = objc_msgSend_countByEnumeratingWithState_objects_count_(v991, v992, v1141, &buf, 16);
  if (v994)
  {
    v995 = **&v1141[16];
    do
    {
      for (i25 = 0; i25 != v994; ++i25)
      {
        if (**&v1141[16] != v995)
        {
          objc_enumerationMutation(v991);
        }

        sub_2622B0C74(*(*&v1141[8] + 8 * i25), a3, v993);
      }

      v994 = objc_msgSend_countByEnumeratingWithState_objects_count_(v991, v997, v1141, &buf, 16);
    }

    while (v994);
  }

  v998 = v991;
  v999 = v989;
  memset(v1141, 0, 64);
  v1000 = v998;
  v1002 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1000, v1001, v1141, &buf, 16);
  if (v1002)
  {
    v1003 = **&v1141[16];
    do
    {
      for (i26 = 0; i26 != v1002; ++i26)
      {
        if (**&v1141[16] != v1003)
        {
          objc_enumerationMutation(v1000);
        }

        sub_2622B1A88(*(*&v1141[8] + 8 * i26));
      }

      v1002 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1000, v1005, v1141, &buf, 16);
    }

    while (v1002);
  }

  sub_2622B1A88(v999);
  if (v1085)
  {
    v1086 = v1085;
    operator delete(v1085);
  }

  return v999;
}

void sub_262369838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, void *a26, void *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, void *a37, uint64_t a38, void *a39, uint64_t a40, void *a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float sub_26236A948(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_walls(v3, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);

  if (!v9)
  {
    v22 = 0.0;
    goto LABEL_43;
  }

  v12 = objc_msgSend_walls(v3, v10, v11);
  sub_262377468(&v64, v12);

  v62 = 0;
  v63 = 0;
  memset(v60, 0, sizeof(v60));
  v61 = 0;
  v13 = v64;
  v14 = v65;
  if (v64 == v65)
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v15 = v64 + 32;
    do
    {
      v16 = v15 - 2;
      v17 = vsub_f32(*(v15 - 2), *(v15 - 24));
      LODWORD(v51) = sqrtf(vaddv_f32(vmul_f32(v17, v17)));
      if (*&v51 >= *(a1 + 200))
      {
        v18 = atanf(-COERCE_FLOAT(*v15) / COERCE_FLOAT(HIDWORD(*v15)));
        if (v18 < 0.0)
        {
          v19 = v18 + 1.57079633;
          v18 = v19;
        }

        v57 = __sincosf_stret(v18 * 4.0);
        LODWORD(v58) = -1;
        sub_262240B6C(&v61, &v57);
        sub_2621C8F2C(v60, &v51);
      }

      v15 += 3;
    }

    while (v16 + 3 != v14);
    v21 = v61;
    v20 = v62;
  }

  v23 = *(a1 + 204);
  v55 = 0;
  v56 = 0;
  __p = 0;
  sub_262349634(&__p, v21, v20, 0xAAAAAAAAAAAAAAABLL * ((v20 - v21) >> 2));
  v24 = v23 * 4.0 / 180.0 * 3.14159265 * 0.5;
  sub_2623496B0(&v57, 1, &__p, v24);
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  sub_262336EFC(&v57);
  v25 = v59;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  sub_262349634(&v51, v57, v58, 0xAAAAAAAAAAAAAAABLL * ((v58 - v57) >> 2));
  if (v25)
  {
    v48 = 0;
    sub_262378F74(v50, v25, &v48);
    v47 = 0;
    sub_2621CD1D8(&v48, v25, &v47);
    v26 = v51;
    if (v52 != v51)
    {
      v27 = 0;
      v28 = v60[0];
      v29 = 0xAAAAAAAAAAAAAAABLL * (v52 - v51);
      v30 = v51 + 2;
      do
      {
        v31 = *v30 - 1;
        if (*v30 >= 1)
        {
          *(v50[0] + v31) = vmla_n_f32(*(v50[0] + 8 * v31), *(v30 - 2), v28[v27]);
          v48[v31] = v28[v27] + v48[v31];
        }

        ++v27;
        v30 += 3;
      }

      while (v29 > v27);
    }

    v32 = v48;
    v33 = v48 + 1;
    v34 = v48 == v49 || v33 == v49;
    v35 = v48;
    if (!v34)
    {
      v36 = *v48;
      v35 = v48;
      v37 = v48 + 1;
      do
      {
        v38 = *v37++;
        v39 = v38;
        if (v36 < v38)
        {
          v36 = v39;
          v35 = v33;
        }

        v33 = v37;
      }

      while (v37 != v49);
    }

    v40 = (v48 + ((v35 - v48) << 30 >> 30));
    v41 = vld1_dup_f32(v40);
    v42 = vdiv_f32(*(v50[0] + ((v35 - v48) << 30 >> 29)), v41);
    v43 = atan2f(v42.f32[0], v42.f32[1]);
    if (v43 >= 0.0)
    {
      v45 = v43;
    }

    else
    {
      v44 = v43 + 6.28318531;
      v45 = v44;
    }

    v49 = v32;
    operator delete(v32);
    if (v50[0])
    {
      v50[1] = v50[0];
      operator delete(v50[0]);
    }

    v22 = v45 * 0.25;
    if (!v26)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v22 = 0.0;
    v26 = v51;
    if (!v51)
    {
      goto LABEL_35;
    }
  }

  operator delete(v26);
LABEL_35:
  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  if (v60[0])
  {
    operator delete(v60[0]);
  }

  if (v21)
  {
    operator delete(v21);
  }

  if (v13)
  {
    operator delete(v13);
  }

LABEL_43:

  return v22;
}