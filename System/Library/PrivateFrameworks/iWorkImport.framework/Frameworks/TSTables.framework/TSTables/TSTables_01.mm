void sub_2210BA3B0(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = a2;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v18, v22, 16);
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = objc_msgSend_sparseCellList(v11, v5, v6, v7, v18);
        v13 = v12 == 0;

        if (!v13)
        {
          v14 = *(a1 + 32);
          v15 = objc_msgSend_sparseCellList(v11, v5, v6, v7);
          objc_msgSend_appendCellList_(v14, v16, v15, v17);
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v18, v22, 16);
    }

    while (v8);
  }
}

uint64_t sub_2210BA7B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_cellID(v3, v4, v5, v6);
  v8 = *(a1 + 32);
  v31.coordinate = v7;
  v31._tableUID = *v8;
  if (TSCECellRefSet::containsCellRef((a1 + 40), &v31))
  {
    v12 = objc_msgSend_cell(v3, v9, v10, v11);
    if (objc_msgSend_hasFormula(v12, v13, v14, v15))
    {
      v19 = objc_msgSend_formulaObject(v12, v16, v17, v18);
      isSpillFormulaForOriginCell = objc_msgSend_isSpillFormulaForOriginCell_(v19, v20, a1 + 64, v21);

      if (isSpillFormulaForOriginCell)
      {
        objc_msgSend_clearValue(v12, v23, v24, v25);
        objc_msgSend_setFormulaObject_(v12, v26, 0, v27);
        objc_msgSend_setImportWarningSet_(v12, v28, 0, v29);
        isSpillFormulaForOriginCell = 1;
      }
    }

    else
    {
      isSpillFormulaForOriginCell = 0;
    }
  }

  else
  {
    isSpillFormulaForOriginCell = 0;
  }

  return isSpillFormulaForOriginCell;
}

uint64_t sub_2210BA974(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_cell(a2, a2, a3, a4);
  v8 = objc_msgSend_formulaObject(v4, v5, v6, v7);
  isSpillFormula = objc_msgSend_isSpillFormula(v8, v9, v10, v11);

  if (isSpillFormula)
  {
    objc_msgSend_clearValue(v4, v13, v14, v15);
    objc_msgSend_setFormulaObject_(v4, v16, 0, v17);
    objc_msgSend_setImportWarningSet_(v4, v18, 0, v19);
  }

  return isSpillFormula;
}

void sub_2210BAD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  _Block_object_dispose(&a23, 8);
  sub_22107C800(v32 + 48, a30);
  _Block_object_dispose((v33 - 168), 8);
  sub_2210BC30C(&a23);

  _Unwind_Resume(a1);
}

__n128 sub_2210BADB8(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2210BAE20(void *a1, const char *a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v4 = a1[4];
  if (v4)
  {
    objc_msgSend_spillOriginsSpillingIntoRange_inOwner_(v4, a2, v6, a1[5] + 744);
  }

  else
  {
    memset(&v5, 0, sizeof(v5));
  }

  TSCECellRefSet::addCellRefs((*(a1[6] + 8) + 48), &v5);
  sub_22107C800(&v5, v5._coordsForOwnerUid.__tree_.__end_node_.__left_);
}

void sub_2210BAEB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_spillingRangeForFormulaAt_(*(a1 + 32), a2, a2, a4);
  v7 = *(*(a1 + 40) + 680);
  if (v7)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v7, v5, v6, v5);
  }

  else
  {
    *__p = 0u;
    v10 = 0u;
    *v8 = 0u;
  }

  sub_2210BAF64(*(*(a1 + 48) + 8) + 48, v8);
  if (__p[1])
  {
    *&v10 = __p[1];
    operator delete(__p[1]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

uint64_t sub_2210BAF64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_2210BC488(a1, a2);
  }

  else
  {
    sub_2210BC3EC(a1, a2);
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_2210BB218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_2210BB250(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  v7[0] = a2;
  v7[1] = a3;
  result = objc_msgSend_hasSpillingCellsIntersectingRange_inOwner_(*(a1 + 32), a2, v7, a1 + 48);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t *sub_2210BBBE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_221086EBC(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_221086EBC(a1 + 3, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 4);
  return a1;
}

void sub_2210BBC48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2210BBC64(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 8);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 4 * v6;
  if (v4)
  {
    sub_2210BBD68(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 4 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void sub_2210BBD68(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_2216F64D0(a1, (a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  JUMPOUT(0x223DA0450);
}

void *sub_2210BBDBC(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_2210BBE8C(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_2210BBEE4(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_2210BBEE4(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_2210BC0EC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_22107C148();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      sub_22107C1F0(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    sub_22107C098(a1, v11);
    sub_22107C26C(v11);
  }
}

void sub_2210BC1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2210BC1EC(uint64_t *result, void **a2, void **a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

void sub_2210BC26C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_22107C1F0(a1, a2);
  }

  sub_22107C148();
}

void sub_2210BC2A8(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2210BC30C(void ***a1)
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
        v4 -= 48;
        sub_2210BC394(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2210BC394(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

uint64_t *sub_2210BC3EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  sub_221086EBC(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  result = sub_221086EBC(v4 + 3, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 4);
  *(a1 + 8) = v4 + 6;
  return result;
}

void sub_2210BC460(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_2210BC488(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_22107C148();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_2210BC5FC(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_221086EBC(v7, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  sub_221086EBC((v7 + 24), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 4);
  *&v16 = v16 + 48;
  v8 = a1[1];
  v9 = &(*a1)[v15 - v8];
  sub_2210BC654(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_2210BC7C0(&v14);
  return v13;
}

void sub_2210BC5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v9 = *v7;
  if (*v7)
  {
    *(v7 + 8) = v9;
    operator delete(v9);
  }

  sub_2210BC7C0(va);
  _Unwind_Resume(a1);
}

void sub_2210BC5FC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t sub_2210BC654(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v7;
      a4[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v7 + 24);
      a4[5] = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      a4 += 6;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      sub_2210BC394(a1, v5);
      v5 += 48;
    }
  }

  return sub_2210BC734(v9);
}

uint64_t sub_2210BC734(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2210BC76C(a1);
  }

  return a1;
}

void sub_2210BC76C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      sub_2210BC394(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_2210BC7C0(void **a1)
{
  sub_2210BC7F4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2210BC7F4(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    sub_2210BC394(v4, i - 48);
  }
}

uint64_t *sub_2210BC83C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC8C4(result, a4);
  }

  return result;
}

void sub_2210BC8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2210BC30C(&a9);
  _Unwind_Resume(a1);
}

void sub_2210BC8C4(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_2210BC5FC(a1, a2);
  }

  sub_22107C148();
}

uint64_t *sub_2210BC910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      sub_221086EBC(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 4);
      v4[3] = 0;
      v4[4] = 0;
      v4[5] = 0;
      sub_221086EBC(v4 + 3, *(v6 + 24), *(v6 + 32), (*(v6 + 32) - *(v6 + 24)) >> 4);
      v6 += 48;
      v4 = v11 + 6;
      v11 += 6;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_2210BC734(v8);
  return v4;
}

void sub_2210BC9F8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2210BC9F8(a1, *a2);
    sub_2210BC9F8(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_2210BCA4C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_2210BD068(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
    *(a1 + 56) = *(a2 + 56);
    sub_2210BD194((a1 + 24), *(a2 + 40), 0);
    *(a1 + 96) = *(a2 + 96);
    sub_2210BD7E8((a1 + 64), *(a2 + 80), 0);
  }

  return a1;
}

uint64_t *sub_2210BCAC4(uint64_t a1, int a2, unint64_t a3)
{
  v13 = a2;
  v12 = a3;
  v5 = sub_2210BE30C((a1 + 24), &v12);
  v11 = -1;
  if (v5)
  {
    v11 = *(v5 + 6);
    v6 = v11;
    *(v5 + 6) = -1;
    v7 = v6 == -1;
  }

  else
  {
    v14 = &v12;
    result = sub_2210BE3C0((a1 + 24), &v12, &unk_2217E0201, &v14);
    *(result + 6) = a2;
    if (a2 != -1)
    {
      return result;
    }

    v7 = 1;
  }

  v14 = &v12;
  v8 = sub_2210BE5F4((a1 + 64), &v12, &unk_2217E0201, &v14);
  result = sub_2210BE0DC(v8 + 3, &v13, &v13);
  if (!v7)
  {
    v14 = &v12;
    v10 = sub_2210BE5F4((a1 + 64), &v12, &unk_2217E0201, &v14);
    return sub_2210BE0DC(v10 + 3, &v11, &v11);
  }

  return result;
}

uint64_t sub_2210BCBD0(void *a1, uint64_t a2)
{
  if (*a2 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = *(a2 + 8) ^ *a2;
  v4 = sub_2210BE864(a1 + 3, &v11);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(v4 + 6);
  if (v5 != -1)
  {
    v6 = (*a1 + 16 * v5);
    if (*v6 == *a2)
    {
      if (v6[1] == *(a2 + 8))
      {
        return v5;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v8 = sub_2210BE864(a1 + 8, &v11);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8[5];
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    result = *(v9 + 4);
    v10 = (*a1 + 16 * result);
    if (*v10 == *a2 && v10[1] == *(a2 + 8))
    {
      break;
    }

    v9 = *v9;
    if (!v9)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_2210BCCB0(void *a1, uint64_t a2)
{
  if (*a2 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = sub_2210BCBD0(a1, a2);
  if (v4 == -1)
  {
    v4 = (a1[1] - *a1) >> 4;
    sub_221083454(a1, a2);
    sub_2210BCAC4(a1, v4, *(a2 + 8) ^ *a2);
  }

  return v4;
}

void sub_2210BCD30(void *a1, __int128 **a2)
{
  if (a1[1] == *a1)
  {
    sub_221083368(a1, a2[1] - *a2);
  }

  v4 = *a2;
  v5 = a2[1];
  while (v4 != v5)
  {
    v7 = *v4;
    if (v7 != 0 && sub_2210BCBD0(a1, &v7) == -1)
    {
      v6 = (a1[1] - *a1) >> 4;
      sub_221083454(a1, &v7);
      sub_2210BCAC4(a1, v6, *(&v7 + 1) ^ v7);
    }

    ++v4;
  }
}

uint64_t sub_2210BCDEC(void *a1, _OWORD *a2)
{
  if (*a2 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return sub_2210BCCB0(a1, a2);
  }
}

void sub_2210BCE04(uint64_t *a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = 0;
    do
    {
      v3[2](v3, v6, v4, &v7);
      if (v7)
      {
        break;
      }

      v6 = (v6 + 1);
      v4 += 16;
    }

    while (v4 != v5);
  }
}

uint64_t sub_2210BCEA0(void *a1, unsigned int a2)
{
  if (a2 == -1 || a2 >= ((a1[1] - *a1) >> 4))
  {
    return 0;
  }

  else
  {
    return *(*a1 + 16 * a2);
  }
}

void sub_2210BCED4(void *a1)
{
  a1[1] = *a1;
  sub_2210BE918(a1 + 3);

  sub_2210BE984((a1 + 8));
}

TSKUIDStruct **sub_2210BCF18(TSKUIDStruct **result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    while (1)
    {
      v5 = *(a2 + 32);
      if (!v5)
      {
        goto LABEL_7;
      }

      v6 = *(a2 + 24);
      v7 = *v5;
      if (v6 >= *v5)
      {
        break;
      }

      *(a2 + 24) = v6 + 1;
      v8 = *&v5[2 * v6 + 2];
LABEL_9:
      result = TSKUIDStruct::saveToMessage(v2++, v8);
      if (v2 == v3)
      {
        return result;
      }
    }

    if (v7 == *(a2 + 28))
    {
LABEL_7:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
      v5 = *(a2 + 32);
      v7 = *v5;
    }

    *v5 = v7 + 1;
    v8 = MEMORY[0x223DA0360](*(a2 + 16));
    v9 = *(a2 + 24);
    v10 = *(a2 + 32) + 8 * v9;
    *(a2 + 24) = v9 + 1;
    *(v10 + 8) = v8;
    goto LABEL_9;
  }

  return result;
}

uint64_t *sub_2210BCFE0(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 >= 1)
  {
    v4 = result;
    for (i = 0; i != v2; ++i)
    {
      v7 = 0uLL;
      *&v7 = TSKUIDStruct::loadFromMessage(*(*(a2 + 32) + 8 * i + 8), a2);
      *(&v7 + 1) = v6;
      sub_221083454(v4, &v7);
      result = sub_2210BCAC4(v4, i, *(&v7 + 1) ^ v7);
    }
  }

  return result;
}

uint64_t *sub_2210BD068(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_221086F38(v6, v10);
    }

    sub_22107C148();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_2210BD194(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[2];
        v8[2] = v9;
        *(v8 + 6) = *(a2 + 6);
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_2210BD2A8(a1, v9, v8 + 2);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_2210BD75C(a1, a2 + 1);
  }
}

void sub_2210BD274(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *sub_2210BD2A8(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_2210BD4F0(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *sub_2210BD408(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_2210BD4F0(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_2210BD5E0(result, prime);
    }
  }
}

void sub_2210BD5E0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22107C238();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_2210BD7E8(void *result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = result[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*result + 8 * i) = 0;
    }

    v8 = result[2];
    result[2] = 0;
    result[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v11 = v4[2];
        v8[2] = v11;
        if (v8 != v4)
        {
          *(v8 + 14) = *(v4 + 14);
          sub_2210BD960(v8 + 3, v4[5], 0);
          v11 = v8[2];
        }

        v10 = *v8;
        v8[1] = v11;
        v12 = sub_2210BD2A8(result, v11, v8 + 2);
        sub_2210BD408(result, v8, v12);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    sub_2210BD91C(result, v10);
  }

  if (v4 != a3)
  {
    sub_2210BDF0C(result);
  }
}

void sub_2210BD8EC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_2210BD91C(v1, v2);
  __cxa_rethrow();
}

void sub_2210BD91C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_2210BDEC0((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_2210BD960(void *a1, unsigned int *a2, unsigned int *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[4];
        *(v8 + 4) = v9;
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_2210BDA6C(a1, v9, v8 + 4);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_2210BDE38(a1, a2 + 4);
  }
}

void sub_2210BDA38(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t sub_2210BDA6C(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_2210BDBCC(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void sub_2210BDBCC(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_2210BDCBC(result, prime);
    }
  }
}

void sub_2210BDCBC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22107C238();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_2210BDEC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_2210BDF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2210BE018(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2210BE018(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2210BDEC0(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2210BE064(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_2210BE0DC(a1, i + 4, i + 4);
  }

  return a1;
}

uint64_t *sub_2210BE0DC(void *a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void *sub_2210BE30C(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_2210BE3C0(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void *sub_2210BE5F4(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_2210BE850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2210BE018(va);
  _Unwind_Resume(a1);
}

void *sub_2210BE864(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v3 == v8)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_2210BE918(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void sub_2210BE984(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_2210BD91C(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_2210BEC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2210BED70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_2210BED88(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  result = objc_msgSend_cellCount(a2, a2, a3, a4);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

void sub_2210BEE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2210BEE8C(uint64_t a1, void *a2)
{
  v11 = a2;
  v6 = objc_msgSend_maxColumnIndex(v11, v3, v4, v5);
  if (v6 != 0x7FFF)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 24);
    if (v6 <= v8)
    {
      v9 = *(v7 + 24);
    }

    else
    {
      v9 = v6;
    }

    if (v8 == 0x7FFF)
    {
      v10 = v6;
    }

    else
    {
      v10 = v9;
    }

    *(v7 + 24) = v10;
  }
}

void sub_2210BF114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_2210BF12C(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  result = objc_msgSend_bncStorageBufferExists(a2, a2, a3, a4);
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

void sub_2210BF9C0(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = a2;
  v10 = objc_msgSend_tileRowIndex(v28, v5, v6, v7);
  if (v10 != a3)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void _assertTileIndexMatch(TSURowIndex, TSURowIndex)", v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTile.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 41, 0, "TableTile row index %u should match array index %u.", v10, a3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = *(a1 + 40);
  v21 = *(v20 + 40);
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = *(v20 + 32);
  v23 = *v21;
  if (v22 < *v21)
  {
    *(v20 + 32) = v22 + 1;
    objc_msgSend_encodeToArchive_archiver_(v28, v8, *&v21[2 * v22 + 2], *(a1 + 32));
    goto LABEL_10;
  }

  if (v23 == *(v20 + 36))
  {
LABEL_8:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v20 + 24));
    v21 = *(v20 + 40);
    v23 = *v21;
  }

  *v21 = v23 + 1;
  v24 = google::protobuf::Arena::CreateMaybeMessage<TST::TileRowInfo>(*(v20 + 24));
  v25 = *(v20 + 32);
  v26 = *(v20 + 40) + 8 * v25;
  *(v20 + 32) = v25 + 1;
  *(v26 + 8) = v24;
  objc_msgSend_encodeToArchive_archiver_(v28, v27, v24, *(a1 + 32));
LABEL_10:
}

void sub_2210BFC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2210BFC48(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v8 = objc_msgSend_archivingCompatibilityVersion(v10, v5, v6, v7);
  v9 = *(*(a1 + 32) + 8);
  if (v8 > *(v9 + 24))
  {
    *(v9 + 24) = v8;
  }

  if (v8 == 0xA000000000003)
  {
    *a3 = 1;
  }
}

void sub_2210BFEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2210BFF08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2210BFF20(uint64_t a1, void *a2, unsigned int a3)
{
  v16 = a2;
  if (!v16)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableTile populatedRows]_block_invoke", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTile.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 410, 0, "invalid nil value for '%{public}s'", "rowInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  objc_msgSend_addIndex_(*(*(*(a1 + 32) + 8) + 40), v5, a3, v6);
}

void sub_2210C0150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2210C0180(uint64_t a1, void *a2)
{
  v6 = a2;
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_cellCount(v6, v3, v4, v5);
}

void sub_2210C0318(uint64_t a1, void *a2, unsigned int a3)
{
  v10 = a2;
  if (!objc_msgSend_cellCount(v10, v5, v6, v7))
  {
    objc_msgSend_addIndex_(*(a1 + 32), v8, a3, v9);
  }
}

void sub_2210C0A8C(uint64_t a1, void *a2)
{
  v12 = a2;
  objc_msgSend_insertColumnsAtIndex_count_(v12, v3, *(a1 + 44), *(a1 + 40));
  v7 = objc_msgSend_usesWideOffsets(v12, v4, v5, v6);
  v11 = *(a1 + 32);
  if (v7)
  {
    if ((*(v11 + 66) & 1) == 0)
    {
      *(v11 + 66) = 1;
    }
  }

  else if (*(v11 + 66))
  {
    objc_msgSend_convertToWideOffsets(v12, v8, v9, v10);
  }
}

void sub_2210C0C2C(uint64_t a1, void *a2, unsigned int a3)
{
  v8 = a2;
  v7 = objc_msgSend_removeColumnsAtIndex_count_(v8, v5, *(a1 + 44), *(a1 + 40));
  if (v7)
  {
    objc_msgSend_setInt_forKey_(*(a1 + 32), v6, v7, a3);
  }
}

void sub_2210C12F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_2210C1338(uint64_t a1, void *a2, unsigned int a3, _BYTE *a4)
{
  v11 = a2;
  v8 = *(a1 + 48);
  if (a3 >= v8)
  {
    if (*(a1 + 52) >= a3)
    {
      objc_msgSend_replacePointerAtIndex_withPointer_(*(a1 + 32), v7, a3 - v8, v11);
      objc_msgSend_addIndex_(*(*(*(a1 + 40) + 8) + 40), v9, a3, v10);
    }

    else
    {
      *a4 = 1;
    }
  }
}

void sub_2210C17D0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v10 = objc_msgSend_rowInfoForTileRowIndex_(*(a1 + 32), a2, a2, a4);
  if (v10 && !objc_msgSend_cellCount(v10, v6, v7, v8))
  {
    objc_msgSend__removeRowInfo_atTileRowIndex_(*(a1 + 32), v9, v10, a2);
  }
}

void sub_2210C19A8(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = a2;
  v10 = objc_msgSend_tileRowIndex(v31, v4, v5, v6);
  if (v10 != a3)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void _assertTileIndexMatch(TSURowIndex, TSURowIndex)", v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTile.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 41, 0, "TableTile row index %u should match array index %u.", v10, a3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  if (!objc_msgSend_cellCount(v31, v7, v8, v9))
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTTableTile assertListRows]_block_invoke", v21);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTile.mm", v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 941, 0, "In assertListRows, saw a row info that has no cells");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
  }
}

TSCEASTRewriter *sub_2210C1BE4(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834A17A0;
  *(a1 + 25) = v7;
  return a1;
}

TSCEASTColonElement *sub_2210C1C68(TSCEASTIteratorBase *a1, TSCEASTElement *this)
{
  v4 = TSCEASTElement::mutableUndoTractList(this, a1);
  v8 = objc_msgSend_excludedUidsTract(v4, v5, v6, v7);
  if (v8)
  {
    v127 = v4;
    v128 = v8;
    v12 = objc_msgSend_rowColumnInfo(*(a1 + 25), v9, v10, v11);
    v137._flags = 0;
    v131[0] = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
    TSCEASTColonElement::rangeReference(&v135, this, a1, &v137, v131);
    v134 = v135;
    isValid = TSCERangeCoordinate::isValid(&v134);
    if (objc_msgSend_isRows(v12, v14, v15, v16))
    {
      v20 = objc_msgSend_rowUids(v128, v17, v18, v19);
    }

    else
    {
      v20 = objc_msgSend_columnUids(v128, v17, v18, v19);
    }

    if (*v20 != v20[1] && isValid)
    {
      v4 = v127;
      v25 = objc_msgSend_affectedOwnerUID(*(a1 + 25), v21, v22, v23);
      if (v136 == __PAIR128__(v26, v25))
      {
        v27 = sub_221089E8C(a1);
        v29 = objc_msgSend_resolverForTableUID_(v27, v28, v136, *(&v136 + 1));

        v126 = v29;
        if (!v29)
        {
LABEL_66:

          goto LABEL_67;
        }

        if (objc_msgSend_isRows(v12, v30, v31, v32))
        {
          v36 = objc_msgSend_rowUids(v128, v33, v34, v35);
          v38 = objc_msgSend_mutableIndexesForUIDs_isRows_(v29, v37, v36, 1);
          v42 = objc_msgSend_rowOrColumnUuids(v12, v39, v40, v41);
          objc_msgSend_mutableIndexesForUIDs_isRows_(v126, v43, v42, 1);
        }

        else
        {
          v44 = objc_msgSend_columnUids(v128, v33, v34, v35);
          v38 = objc_msgSend_mutableIndexesForUIDs_isRows_(v29, v45, v44, 0);
          v49 = objc_msgSend_rowOrColumnUuids(v12, v46, v47, v48);
          objc_msgSend_mutableIndexesForUIDs_isRows_(v126, v50, v49, 0);
        }

        v123 = v125 = v38;
        v51 = v38;
        if (!objc_msgSend_tsu_intersectsIndexesInIndexSet_(v123, v52, v38, v53))
        {
LABEL_65:

          goto LABEL_66;
        }

        *&v131[0].row = 0u;
        v132 = 0u;
        v133 = 1065353216;
        topLeft = v134._topLeft;
        bottomRight = v134._bottomRight;
        v62 = HIDWORD(*&v134._topLeft);
        v122 = v134._topLeft;
        if (objc_msgSend_isRows(v12, v54, v55, v56))
        {
          row = topLeft.row;
          if (topLeft.row == 0x7FFFFFFFLL || bottomRight == 0x7FFFFFFFLL)
          {
            goto LABEL_49;
          }

          v64 = bottomRight - topLeft.row;
        }

        else
        {
          row = topLeft.column;
          if (topLeft.column == 0x7FFF || WORD2(bottomRight) == 0x7FFF)
          {
            goto LABEL_49;
          }

          v64 = WORD2(bottomRight) - v62;
        }

        LODWORD(v65) = v64 + 1;
        if (v64 != -1)
        {
          v66 = topLeft.row;
          while (objc_msgSend_containsIndex_(v125, v59, row, v61))
          {
            isRows = objc_msgSend_isRows(v12, v59, v67, v61);
            v72 = v12;
            v73 = row;
            v74 = (v62 + 1);
            if (WORD2(bottomRight) == 0x7FFF || (v62 + 1) == 0x7FFF)
            {
              v76 = 0;
            }

            else
            {
              v76 = WORD2(bottomRight) + 1 - (v62 + 1);
            }

            v77 = v66 + 1;
            v78 = bottomRight - v66;
            if (bottomRight == 0x7FFFFFFFLL || v77 == 0x7FFFFFFF)
            {
              v78 = 0;
            }

            if (isRows)
            {
              ++v66;
            }

            else
            {
              LOWORD(v62) = v62 + 1;
            }

            if (isRows)
            {
              row = v77;
            }

            else
            {
              row = v74;
            }

            if (isRows)
            {
              v65 = v78;
            }

            else
            {
              v65 = v76;
            }

            tableUID._lower = 0;
            tableUID._upper = 0;
            v80 = objc_msgSend_isRows(v72, v69, v70, v71);
            tableUID._lower = objc_msgSend_UIDForIndex_isRows_(v126, v81, v73, v80);
            tableUID._upper = v82;
            sub_2210C2B00(v131, &tableUID, &tableUID);
            v12 = v72;
            if (!v65)
            {
              goto LABEL_50;
            }
          }

          v98 = v65 + row;
          v83 = v62;
          v124 = v66;
          do
          {
            v99 = (v98 - 1);
            if (!objc_msgSend_containsIndex_(v125, v59, v99, v61))
            {
              break;
            }

            v100 = objc_msgSend_isRows(v12, v59, v60, v61);
            v104 = ((bottomRight + 0xFFFF00000000) >> 32);
            v105 = v104 == 0x7FFF || v62 == 0x7FFF;
            v106 = (bottomRight - 1);
            v107 = bottomRight - v66;
            v108 = bottomRight & 0xFFFFFFFF00000000;
            bottomRight = bottomRight & 0xFFFF0000FFFFFFFFLL | (((bottomRight + 0xFFFF00000000) >> 32) << 32);
            v109 = v104 - v62 + 1;
            if (v105)
            {
              v109 = 0;
            }

            v110 = v106 == 0x7FFFFFFF || v66 == 0x7FFFFFFF;
            v111 = v106 | v108;
            if (v110)
            {
              v112 = 0;
            }

            else
            {
              v112 = v107;
            }

            v113 = v100 == 0;
            if (v100)
            {
              bottomRight = v111;
            }

            v114 = v12;
            v115 = v83;
            v116 = v113 ? v83 : v66;
            v117 = v113 ? v109 : v112;
            tableUID._lower = 0;
            tableUID._upper = 0;
            v118 = v114;
            v119 = objc_msgSend_isRows(v114, v101, v102, v103);
            tableUID._lower = objc_msgSend_UIDForIndex_isRows_(v126, v120, v99, v119);
            tableUID._upper = v121;
            sub_2210C2B00(v131, &tableUID, &tableUID);
            v98 = v117 + v116;
            v12 = v118;
            v83 = v115;
          }

          while (v117);
LABEL_51:
          v84 = v66 == v134._topLeft.row && v83 << 32 == (*&v134._topLeft & 0xFFFF00000000);
          if (!v84 || (((*&v134._bottomRight ^ bottomRight) & 0xFFFF00000000) == 0 ? (v85 = v134._bottomRight.row == bottomRight) : (v85 = 0), !v85))
          {
            if (objc_msgSend_isRows(v12, v59, v60, v61))
            {
              objc_msgSend_removeFromExcludedUidsTractRowUidsSet_(v127, v86, v131, v87);
            }

            else
            {
              objc_msgSend_removeFromExcludedUidsTractColumnUidsSet_(v127, v86, v131, v87);
            }

            v88 = [TSCECellTractRef alloc];
            tableUID._lower = *&v122 & 0xFFFF000000000000 | v124 | (v83 << 32);
            tableUID._upper = bottomRight;
            v130 = v136;
            v91 = objc_msgSend_initWithRangeRef_(v88, v89, &tableUID, v90);
            objc_msgSend_setPreserveFlags_(v91, v92, v137._flags, v93);
            v94 = [TSCERelativeTractRef alloc];
            tableUID._lower = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
            v96 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v94, v95, v91, &tableUID);
            tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
            TSCEASTIteratorBase::createColonTractRef(a1, v96, v127, &tableUID);
          }

          v4 = v127;
          v51 = v125;
          sub_2210BDEC0(v131);
          goto LABEL_65;
        }

LABEL_49:
        v66 = topLeft.row;
LABEL_50:
        v83 = v62;
        v124 = v66;
        goto LABEL_51;
      }
    }

    else
    {
      v4 = v127;
    }

LABEL_67:

    v8 = v128;
  }

  return this;
}

void sub_2210C223C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  sub_2210BDEC0(va);
  _Unwind_Resume(a1);
}

TSCEASTColonTractElement *sub_2210C2320(TSCEASTIteratorBase *a1, TSCEASTElement *this)
{
  v4 = TSCEASTElement::mutableUndoTractList(this, a1);
  v11 = objc_msgSend_excludedUidsTract(v4, v5, v6, v7);
  if (v11)
  {
    v129 = v4;
    v12 = objc_msgSend_rowColumnInfo(*(a1 + 25), v8, v9, v10);
    if (objc_msgSend_isRows(v12, v13, v14, v15))
    {
      v19 = objc_msgSend_rowUids(v11, v16, v17, v18);
    }

    else
    {
      v19 = objc_msgSend_columnUids(v11, v16, v17, v18);
    }

    v22 = *v19;
    v23 = v19[1];
    v130 = TSCEASTColonTractElement::relativeTractRef(this, a1, v20, v21);
    if (objc_msgSend_hasTableUID(v130, v24, v25, v26))
    {
      lower = objc_msgSend_tableUID(v130, v27, v28, v29);
      upper = v30;
    }

    else
    {
      v35 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      lower = v35->var0.var0._tableUID._lower;
      upper = v35->var0.var0._tableUID._upper;
    }

    if (v22 == v23 || lower != objc_msgSend_affectedOwnerUID(*(a1 + 25), v30, v31, v32) || upper != v36)
    {
      goto LABEL_76;
    }

    v37 = sub_221089E8C(a1);
    v39 = objc_msgSend_resolverForTableUID_(v37, v38, lower, upper);

    if (!v39)
    {
LABEL_75:

LABEL_76:
      v4 = v129;
      goto LABEL_77;
    }

    if (objc_msgSend_isRows(v12, v40, v41, v42))
    {
      v46 = objc_msgSend_rowUids(v11, v43, v44, v45);
      v48 = objc_msgSend_mutableIndexesForUIDs_isRows_(v39, v47, v46, 1);
      v52 = objc_msgSend_rowOrColumnUuids(v12, v49, v50, v51);
      objc_msgSend_mutableIndexesForUIDs_isRows_(v39, v53, v52, 1);
    }

    else
    {
      v54 = objc_msgSend_columnUids(v11, v43, v44, v45);
      v48 = objc_msgSend_mutableIndexesForUIDs_isRows_(v39, v55, v54, 0);
      v59 = objc_msgSend_rowOrColumnUuids(v12, v56, v57, v58);
      objc_msgSend_mutableIndexesForUIDs_isRows_(v39, v60, v59, 0);
    }
    v61 = ;
    v128 = v48;
    if (!objc_msgSend_tsu_intersectsIndexesInIndexSet_(v61, v62, v48, v63))
    {
LABEL_74:

      goto LABEL_75;
    }

    memset(v134, 0, sizeof(v134));
    v135 = 1065353216;
    v127 = v39;
    v122 = v61;
    coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
    v123 = objc_msgSend_absoluteCellTractRefForHostCell_(v130, v64, &coordinate, v65);
    v126 = objc_msgSend_topLeft(v123, v66, v67, v68);
    v72 = objc_msgSend_bottomRight(v123, v69, v70, v71);
    coordinate = v126;
    v133 = v72;
    v125 = v72;
    v79 = HIDWORD(v126);
    if (objc_msgSend_isRows(v12, v73, v74, v75))
    {
      v80 = v126;
      if (v126 != 0x7FFFFFFFLL)
      {
        if (v125 != 0x7FFFFFFFLL)
        {
          v81 = v125 - v126;
          goto LABEL_23;
        }

        v97 = v126;
        v83 = v126;
        v96 = v125;
        v95 = v125;
LABEL_65:
        if (v97 != v83 || ((v83 ^ v97) & 0xFFFF00000000) != 0 || ((v96 ^ v95) & 0xFFFF00000000) != 0 || v95 != v96)
        {
          if (objc_msgSend_isRows(v12, v76, v77, v78))
          {
            objc_msgSend_removeFromExcludedUidsTractRowUidsSet_(v129, v112, v134, v113);
          }

          else
          {
            objc_msgSend_removeFromExcludedUidsTractColumnUidsSet_(v129, v112, v134, v113);
          }

          objc_msgSend_setTopLeft_(v123, v114, &coordinate, v115);
          objc_msgSend_setBottomRight_(v123, v116, &v133, v117);
          v118 = [TSCERelativeTractRef alloc];
          tableUID._lower = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
          v120 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v118, v119, v123, &tableUID);

          tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
          TSCEASTIteratorBase::createColonTractRef(a1, v120, v129, &tableUID);
        }

        v39 = v127;

        sub_2210BDEC0(v134);
        v61 = v122;
        goto LABEL_74;
      }
    }

    else
    {
      v80 = WORD2(v126);
      if (WORD2(v126) != 0x7FFF && WORD2(v125) != 0x7FFF)
      {
        v81 = WORD2(v125) - WORD2(v126);
LABEL_23:
        LODWORD(v82) = v81 + 1;
        if (v81 == -1)
        {
          v95 = v125;
          v97 = v126;
          v83 = v126;
          v96 = v125;
          v48 = v128;
        }

        else
        {
          v124 = HIDWORD(v125);
          v83 = v126;
          v84 = v126;
          while (objc_msgSend_containsIndex_(v128, v76, v80, v78))
          {
            if (objc_msgSend_isRows(v12, v76, v85, v78))
            {
              coordinate.row = v84 + 1;
              v83 = coordinate;
              column = (v84 + 1);
              if (v125 == 0x7FFFFFFFLL || column == 0x7FFFFFFF)
              {
                v82 = 0;
              }

              else
              {
                v82 = (v125 - v84);
              }

              v79 = HIDWORD(*&coordinate);
            }

            else
            {
              coordinate.column = v79 + 1;
              v83 = coordinate;
              v79 = HIDWORD(*&coordinate);
              column = coordinate.column;
              if (WORD2(v125) == 0x7FFF || coordinate.column == 0x7FFF)
              {
                v82 = 0;
              }

              else
              {
                v82 = WORD2(v125) - coordinate.column + 1;
              }
            }

            tableUID._lower = 0;
            tableUID._upper = 0;
            isRows = objc_msgSend_isRows(v12, v86, v87, v88);
            tableUID._lower = objc_msgSend_UIDForIndex_isRows_(v127, v93, v80, isRows);
            tableUID._upper = v94;
            sub_2210C2B00(v134, &tableUID, &tableUID);
            v84 = v83;
            v80 = column;
            if (!v82)
            {
              v95 = v125;
              v96 = v125;
              v48 = v128;
LABEL_62:
              v97 = v126;
              goto LABEL_65;
            }
          }

          v98 = v82 + v80;
          v96 = v125;
          v99 = v125;
          while (1)
          {
            v100 = (v98 - 1);
            v48 = v128;
            v101 = objc_msgSend_containsIndex_(v128, v76, v100, v78);
            v97 = v126;
            if (!v101)
            {
              break;
            }

            if (objc_msgSend_isRows(v12, v76, v77, v78))
            {
              LODWORD(v133) = v99 - 1;
              v96 = v133;
              v105 = v83;
              if (v99 == 0x80000000 || v83 == 0x7FFFFFFFLL)
              {
                v107 = 0;
              }

              else
              {
                v107 = (v99 - v83);
              }

              v124 = HIDWORD(v133);
            }

            else
            {
              v105 = WORD2(v83);
              WORD2(v133) = v124 - 1;
              v96 = v133;
              v124 = HIDWORD(v133);
              if (WORD2(v133) == 0x7FFF || WORD2(v83) == 0x7FFF)
              {
                v107 = 0;
              }

              else
              {
                v107 = WORD2(v133) - WORD2(v83) + 1;
              }
            }

            tableUID._lower = 0;
            tableUID._upper = 0;
            v109 = objc_msgSend_isRows(v12, v102, v103, v104);
            tableUID._lower = objc_msgSend_UIDForIndex_isRows_(v127, v110, v100, v109);
            tableUID._upper = v111;
            sub_2210C2B00(v134, &tableUID, &tableUID);
            v98 = v107 + v105;
            v99 = v96;
            if (!v107)
            {
              v48 = v128;
              v95 = v125;
              goto LABEL_62;
            }
          }

          v95 = v125;
        }

        goto LABEL_65;
      }
    }

    v95 = v125;
    v97 = v126;
    v83 = v126;
    v96 = v125;
    goto LABEL_65;
  }

LABEL_77:

  return this;
}

void sub_2210C2958(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  sub_2210BDEC0(va);
  _Unwind_Resume(a1);
}

void sub_2210C2A2C(id *a1)
{

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2210C2A68(id *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_2210C2AC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void *sub_2210C2B00(void *a1, void *a2, _OWORD *a3)
{
  v3 = a2[1];
  v4 = v3 ^ *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != *a2 || v9[3] != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

uint64_t ***sub_2210C3024(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 8) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t **sub_2210C30DC(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % a1[1];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 8) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

id TSCEFormulaNodeTreeCreator::formulaNodeTreeFromFormula(TSCEFormulaNodeTreeCreator *this, const TSCEASTNodeArray *a2, void *a3, TSCEFormulaRewriteContext *a4, TSCEFormulaRewriteContext *a5)
{
  v8 = this;
  v9 = a3;
  v13 = objc_msgSend_const_astNodeArray(v8, v10, v11, v12);
  if (sub_2215C5C84(v13))
  {
    v15 = 0;
  }

  else
  {
    v15 = TSCEFormulaNodeTreeCreator::formulaNodeTreeFromASTNodeArray(v13, a2, v9, a4, v14);
  }

  return v15;
}

id TSCEFormulaNodeTreeCreator::formulaNodeTreeFromASTNodeArray(TSCEASTNodeArray *this, const TSCEASTNodeArray *a2, void *a3, TSCEFormulaRewriteContext *a4, TSCEFormulaRewriteContext *a5)
{
  v6 = a2;
  v8 = a3;
  v12 = objc_msgSend_documentLocale(a4->var0, v9, v10, v11);
  TSCESymbolTable::TSCESymbolTable(&v22, v12);

  sub_2210C8108(v21, this, v8, a4, &v22, v6);
  TSCEASTRewriter::rewrite(v21, v13, v14, v15);
  v19 = TSCEFormulaNodeTreeCreator::functionNodeRoot(v21, v16, v17, v18);
  TSCEFormulaNodeTreeCreator::~TSCEFormulaNodeTreeCreator(v21);
  v21[0] = &v22._undoSymbolTableMaps.__begin_;
  sub_2210C8268(v21);
  sub_221087B80(&v22._identifierMap);
  sub_2210C82EC(&v22._symbolTableMap);

  return v19;
}

void sub_2210C3F88(_Unwind_Exception *a1)
{
  sub_2210C8214((v2 - 168));

  _Unwind_Resume(a1);
}

id TSCEFormulaNodeTreeCreator::functionNodeRoot(id *this, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_count(this[27], a2, a3, a4))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "TSCEFormulaNode *TSCEFormulaNodeTreeCreator::functionNodeRoot()", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTreeCreator.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 815, 0, "_formulaNodeStack should be empty, all partial work processed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  TSCEFormulaNodeTreeCreator::completedNodeAndChildren(this, v5, v6, v7);
  if (objc_msgSend_count(this[27], v17, v18, v19))
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "TSCEFormulaNode *TSCEFormulaNodeTreeCreator::functionNodeRoot()", v21);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTreeCreator.mm", v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 818, 0, "_formulaNodeStack should now REALLY be empty, we processed remaining work, in theory");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
  }

  v31 = this[26];

  return v31;
}

void TSCEFormulaNodeTreeCreator::~TSCEFormulaNodeTreeCreator(TSCEFormulaNodeTreeCreator *this)
{
  *this = &unk_2834A1908;
  v3 = (this + 280);
  sub_22107C2C0(&v3);
  v3 = (this + 256);
  sub_22107C2C0(&v3);
  v2 = *(this + 29);
  if (v2)
  {
    *(this + 30) = v2;
    operator delete(v2);
  }

  TSCEASTRewriter::~TSCEASTRewriter(this);
}

{
  TSCEFormulaNodeTreeCreator::~TSCEFormulaNodeTreeCreator(this);

  JUMPOUT(0x223DA1450);
}

void TSCEFormulaNodeTreeCreator::addWhitespaceBefore(TSCEFormulaNodeTreeCreator *this, NSString *a2)
{
  v3 = a2;
  v7 = v3;
  if (objc_msgSend_length(v3, v4, v5, v6))
  {
    sub_2210C4258(this + 32, &v7);
    v3 = v7;
  }
}

id sub_2210C4258(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_22107C1F0(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22107C098(a1, v13);
    v7 = a1[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_2210C4338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void TSCEFormulaNodeTreeCreator::addWhitespaceAfter(TSCEFormulaNodeTreeCreator *this, NSString *a2)
{
  v3 = a2;
  v7 = v3;
  if (objc_msgSend_length(v3, v4, v5, v6))
  {
    sub_2210C4258(this + 35, &v7);
    v3 = v7;
  }
}

void TSCEFormulaNodeTreeCreator::addExpression(TSCEFormulaNodeTreeCreator *this, TSCEFormulaNode *a2, int a3)
{
  v9 = a2;
  v80 = a3;
  if (v9)
  {
    for (i = *(this + 33); *(this + 32) != i; i = *(this + 33))
    {
      v11 = *(i - 8);
      v12 = *(this + 33);

      *(this + 33) = v12 - 8;
      v19 = objc_msgSend_whitespaceBefore(v9, v13, v14, v15);
      if (v19)
      {
        v20 = objc_msgSend_whitespaceBefore(v9, v16, v17, v18);
      }

      else
      {
        v20 = &stru_2834BADA0;
      }

      v23 = objc_msgSend_stringByAppendingString_(v11, v21, v20, v22);
      objc_msgSend_setWhitespaceBefore_(v9, v24, v23, v25);
    }

    for (j = *(this + 36); *(this + 35) != j; j = *(this + 36))
    {
      v27 = *(j - 8);
      v28 = *(this + 36);

      *(this + 36) = v28 - 8;
      v35 = objc_msgSend_whitespaceAfter(v9, v29, v30, v31);
      if (v35)
      {
        v36 = objc_msgSend_whitespaceAfter(v9, v32, v33, v34);
      }

      else
      {
        v36 = &stru_2834BADA0;
      }

      v39 = objc_msgSend_stringByAppendingString_(v36, v37, v27, v38);
      objc_msgSend_setWhitespaceAfter_(v9, v40, v39, v41);
    }

    if (objc_msgSend_count(*(this + 28), v6, v7, v8))
    {
      v45 = objc_msgSend_lastObject(*(this + 28), v42, v43, v44);
      objc_msgSend_addObject_(v45, v46, v9, v47);
    }

    else if (!a3)
    {
      if (objc_msgSend_count(*(this + 27), v42, v43, v44))
      {
        v59 = MEMORY[0x277D81150];
        v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "void TSCEFormulaNodeTreeCreator::addExpression(TSCEFormulaNode *__strong, uint32_t)", v58);
        v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTreeCreator.mm", v62);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v64, v60, v63, 99, 0, "Expecting exprNodeStack to be empty in this case, we are top-level");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67);
      }

      objc_msgSend_addObject_(*(this + 27), v57, v9, v58);
      if (*(this + 26))
      {
        v68 = MEMORY[0x277D81150];
        v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "void TSCEFormulaNodeTreeCreator::addExpression(TSCEFormulaNode *__strong, uint32_t)", v44);
        v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTreeCreator.mm", v71);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v73, v69, v72, 101, 0, "Expecting _topLevelExpr to be nil in this case, we are top-level");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76);
      }
    }

    if (*(this + 26))
    {
      if (!a3)
      {
        goto LABEL_25;
      }
    }

    else
    {
      objc_storeStrong(this + 26, a2);
      if (!a3)
      {
LABEL_25:
        TSCEFormulaNodeTreeCreator::completedNodeAndChildren(this, v42, v43, v44);
        goto LABEL_26;
      }
    }

    objc_msgSend_addObject_(*(this + 27), v42, v9, v44);
    v77 = objc_opt_new();
    objc_msgSend_addObject_(*(this + 28), v78, v77, v79);
    sub_2210C47D0(this + 29, &v80);

    if (!v80)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "void TSCEFormulaNodeTreeCreator::addExpression(TSCEFormulaNode *__strong, uint32_t)", v8);
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTreeCreator.mm", v51);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v53, v49, v52, 72, 0, "invalid nil value for '%{public}s'", "exprNode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56);
  }

LABEL_26:
}

void sub_2210C47D0(const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_22107C148();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_2210C836C(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void *TSCEFormulaNodeTreeCreator::completedNodeAndChildren(TSCEFormulaNodeTreeCreator *this, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_count(*(this + 27), a2, a3, a4);
  if (result)
  {
    v190 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v9 = 0x277CCA000uLL;
    while (1)
    {
      v10 = objc_msgSend_lastObject(*(this + 27), v6, v7, v8);
      if (objc_msgSend_count(*(this + 28), v11, v12, v13) && (v17 = *(*(this + 30) - 4), v17))
      {
        v18 = objc_msgSend_lastObject(*(this + 28), v14, v15, v16);
        v22 = objc_msgSend_count(v18, v19, v20, v21);
        v25 = v22 == v17;
        if (v22 == v17)
        {
          objc_msgSend_setChildren_(v10, v23, v18, v24);
          *(this + 30) -= 4;
          objc_msgSend_removeLastObject(*(this + 28), v26, v27, v28);
        }

        else
        {

          v10 = 0;
        }
      }

      else
      {
        v25 = 1;
      }

      if (!objc_msgSend_isColonNode(v10, v14, v15, v16))
      {
        break;
      }

      v32 = objc_msgSend_children(v10, v29, v30, v31);
      v36 = v32;
      if ((*(this + 304) & 1) != 0 && objc_msgSend_count(v32, v33, v34, v35) == 2)
      {
        v39 = objc_msgSend_objectAtIndexedSubscript_(v36, v37, 0, v38);
        v42 = objc_msgSend_objectAtIndexedSubscript_(v36, v40, 1, v41);
        if (objc_msgSend_isReferenceNode(v39, v43, v44, v45) && objc_msgSend_isReferenceNode(v42, v46, v47, v48))
        {
          objc_opt_class();
          v194 = TSUDynamicCast();
          objc_opt_class();
          v49 = TSUDynamicCast();
          if (v194 && v49)
          {
            v191 = v49;
            v192 = v42;
            v53 = objc_msgSend_tableUID(v194, v50, v51, v52);
            v55 = v54;
            v56 = sub_221089E8C(this);
            v58 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v57, v53, v55, v56);

            v189 = v58;
            if (objc_msgSend_isCategorized(v58, v59, v60, v61))
            {
              v62 = v194;
              v63 = v191;
              v67 = objc_msgSend_baseTopLeftCoord(v62, v64, v65, v66);
              v71 = objc_msgSend_baseBottomRightCoord(v63, v68, v69, v70);
              if ((v67 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (v71 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
              {
                v157 = [TSTUIDRectRef alloc];
                v158 = sub_221089E8C(this);
                v9 = 0x277CCA000uLL;
                tableUID = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0._tableUID;
                v195 = v190;
                v196 = tableUID;
                v89 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v157, v160, v158, &v195, 0);

                v161 = [TSCECombinedReferenceFormulaNode alloc];
                v162 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
                v195 = *&v162->var0.var0.coordinate.row;
                v196._lower = v162->var0.var0._tableUID._upper;
                v93 = objc_msgSend_initWithUidRectRef_hostCellRef_(v161, v163, v89, &v195);
              }

              else
              {
                v198._topLeft = v67;
                v198._bottomRight = v71;
                v75 = objc_msgSend_basePreserveFlags(v62, v72, v73, v74);
                v197._flags = v75 & 3 | (4 * (objc_msgSend_basePreserveFlags(v63, v76, v77, v78) & 3));
                TSCERangeCoordinate::fixInversions(&v198, &v197);
                v9 = 0x277CCA000;
                v79 = [TSTUIDRectRef alloc];
                v83 = objc_msgSend_calcEngine(v189, v80, v81, v82);
                v87 = objc_msgSend_tableUID(v189, v84, v85, v86);
                v195 = v198;
                v196._lower = v87;
                v196._upper = v88;
                v89 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v79, v88, v83, &v195, v197._flags);

                v90 = [TSCECombinedReferenceFormulaNode alloc];
                v91 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
                v195 = *&v91->var0.var0.coordinate.row;
                v196._lower = v91->var0.var0._tableUID._upper;
                v93 = objc_msgSend_initWithUidRectRef_hostCellRef_(v90, v92, v89, &v195);
              }

              started = v93;
            }

            else
            {
              v154 = [TSCECombinedReferenceFormulaNode alloc];
              v62 = sub_221089E8C(this);
              started = objc_msgSend_initWithReferenceStart_referenceEnd_calcEngine_(v154, v155, v194, v191, v62);
              v9 = 0x277CCA000;
            }

            if (started)
            {
              if (objc_msgSend_count(*(this + 28), v164, v165, v166))
              {
                v170 = objc_msgSend_lastObject(*(this + 28), v167, v168, v169);
                v173 = v170;
                if (v170)
                {
                  v175 = objc_msgSend_indexOfObjectIdenticalTo_(v170, v171, v10, v172);
                  if (v175 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v188 = MEMORY[0x277D81150];
                    v177 = objc_msgSend_stringWithUTF8String_(*(v9 + 3240), v174, "void TSCEFormulaNodeTreeCreator::completedNodeAndChildren()", v176);
                    v180 = objc_msgSend_stringWithUTF8String_(*(v9 + 3240), v178, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTreeCreator.mm", v179);
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v188, v181, v177, v180, 217, 0, "Expecting to locate a valid replaceIndex");

                    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v182, v183, v184);
                  }

                  else
                  {
                    objc_msgSend_replaceObjectAtIndex_withObject_(v173, v174, v175, started);
                  }
                }
              }

              else
              {
                v173 = 0;
              }

              if (*(this + 26) == v10)
              {
                objc_storeStrong(this + 26, started);
              }
            }

            v49 = v191;
            v42 = v192;
          }

          goto LABEL_48;
        }

        goto LABEL_49;
      }

LABEL_51:

      if (v10)
      {
LABEL_32:
        objc_msgSend_removeLastObject(*(this + 27), v94, v95, v96);
        goto LABEL_53;
      }

LABEL_52:
      v25 = 0;
LABEL_53:

      result = objc_msgSend_count(*(this + 27), v185, v186, v187);
      if (!result || !v25)
      {
        return result;
      }
    }

    if (!objc_msgSend_isContinuedLetNode(v10, v29, v30, v31))
    {
      goto LABEL_31;
    }

    if (objc_msgSend_count(*(this + 27), v94, v95, v96) < 2 || (v100 = *(this + 27), v101 = objc_msgSend_count(v100, v97, v98, v99), objc_msgSend_objectAtIndexedSubscript_(v100, v102, v101 - 2, v103), (v36 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v145 = MEMORY[0x277D81150];
      v146 = objc_msgSend_stringWithUTF8String_(*(v9 + 3240), v97, "void TSCEFormulaNodeTreeCreator::completedNodeAndChildren()", v99);
      v149 = objc_msgSend_stringWithUTF8String_(*(v9 + 3240), v147, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTreeCreator.mm", v148);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v145, v150, v146, v149, 246, 0, "Didn't find a parent LET for LET-continued node");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v151, v152, v153);
LABEL_31:
      if (v10)
      {
        goto LABEL_32;
      }

      goto LABEL_52;
    }

    v105 = objc_msgSend_lastObject(*(this + 28), v97, v104, v99);
    v39 = v105;
    if (v105)
    {
      v111 = objc_msgSend_indexOfObjectIdenticalTo_(v105, v106, v10, v107);
      if (v111 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v193 = objc_msgSend_children(v10, v108, v109, v110);
        if (!objc_msgSend_count(v193, v112, v113, v114))
        {
          v117 = MEMORY[0x277D81150];
          v118 = objc_msgSend_stringWithUTF8String_(*(v9 + 3240), v115, "void TSCEFormulaNodeTreeCreator::completedNodeAndChildren()", v116);
          v121 = objc_msgSend_stringWithUTF8String_(*(v9 + 3240), v119, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTreeCreator.mm", v120);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v117, v122, v118, v121, 257, 0, "CompletedNode should already have its children");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v123, v124, v125);
        }

        objc_msgSend_removeObjectAtIndex_(v39, v115, v111, v116);
        v126 = MEMORY[0x277CCAA78];
        v130 = objc_msgSend_count(v193, v127, v128, v129);
        objc_msgSend_indexSetWithIndexesInRange_(v126, v131, v111, v130);
        v194 = v42 = v193;
        objc_msgSend_insertObjects_atIndexes_(v39, v132, v193, v194);
        v133 = *(this + 30);
        v195._topLeft.row = *(v133 - 4);
        *(this + 30) = v133 - 4;
        v137 = objc_msgSend_count(v193, v134, v135, v136);
        v195._topLeft.row = v137 + v195._topLeft.row - 1;
        sub_2210C47D0(this + 29, &v195);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v138 = v36;
          v142 = objc_msgSend_count(v39, v139, v140, v141);
          objc_msgSend_setNumArgs_(v138, v143, v142, v144);

          v42 = v193;
        }

LABEL_48:

LABEL_49:
      }
    }

    goto LABEL_51;
  }

  return result;
}

TSCEASTBinaryElement *TSCEFormulaNodeTreeCreator::binaryInfixOperatorNode(id *this, TSCEASTBinaryElement *a2)
{
  v4 = TSCEASTElement::tag(a2, this);
  v5 = [TSCEOperatorFormulaNode alloc];
  v8 = objc_msgSend_initWithTag_(v5, v6, v4, v7);
  v11 = objc_msgSend_partialResultForOffset_(this[25], v9, *(a2 + 2), v10);
  objc_msgSend_setPartialResult_(v8, v12, v11, v13);

  TSCEFormulaNodeTreeCreator::addExpression(this, v8, 2);
  return a2;
}

TSCEASTUnaryElement *TSCEFormulaNodeTreeCreator::unaryOperatorNode(id *this, TSCEASTUnaryElement *a2)
{
  v4 = TSCEASTElement::tag(a2, this);
  v5 = [TSCEOperatorFormulaNode alloc];
  v8 = objc_msgSend_initWithTag_(v5, v6, v4, v7);
  v11 = objc_msgSend_partialResultForOffset_(this[25], v9, *(a2 + 2), v10);
  objc_msgSend_setPartialResult_(v8, v12, v11, v13);

  TSCEFormulaNodeTreeCreator::addExpression(this, v8, 1);
  return a2;
}

TSCEASTFunctionElement *TSCEFormulaNodeTreeCreator::functionNode(id *this, TSCEASTFunctionElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTFunctionElement::functionIndex(a2, this, a3, a4);
  v7 = (*(*a2 + 48))(a2, this);
  v10 = TSCEASTFunctionElement::whitespace(a2, this, v8, v9);
  v11 = [TSCEFunctionFormulaNode alloc];
  v13 = objc_msgSend_initWithFunctionIndex_numArgs_(v11, v12, v6, v7);
  objc_msgSend_setWhitespace_(v13, v14, v10, v15);
  v18 = objc_msgSend_partialResultForOffset_(this[25], v16, *(a2 + 2), v17);
  objc_msgSend_setPartialResult_(v13, v19, v18, v20);

  TSCEFormulaNodeTreeCreator::addExpression(this, v13, v7);
  return a2;
}

TSCEASTUnknownFunctionElement *TSCEFormulaNodeTreeCreator::unknownFunctionNode(id *this, TSCEASTUnknownFunctionElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTUnknownFunctionElement::unknownFunctionName(a2, this, a3, a4);
  v7 = (*(*a2 + 48))(a2, this);
  v8 = [TSCEUnknownFunctionFormulaNode alloc];
  v10 = objc_msgSend_initWithFunctionName_numArgs_(v8, v9, v6, v7);
  v13 = objc_msgSend_partialResultForOffset_(this[25], v11, *(a2 + 2), v12);
  objc_msgSend_setPartialResult_(v10, v14, v13, v15);

  TSCEFormulaNodeTreeCreator::addExpression(this, v10, v7);
  return a2;
}

TSCEASTColonElement *TSCEFormulaNodeTreeCreator::colonNode(id *this, TSCEASTColonElement *a2)
{
  v4 = [TSCEColonFormulaNode alloc];
  v6 = objc_msgSend_initWithLeftArg_rightArg_(v4, v5, 0, 0);
  v9 = objc_msgSend_partialResultForOffset_(this[25], v7, *(a2 + 2), v8);
  objc_msgSend_setPartialResult_(v6, v10, v9, v11);

  TSCEFormulaNodeTreeCreator::addExpression(this, v6, 2);
  return a2;
}

TSCEASTColonTractElement *TSCEFormulaNodeTreeCreator::colonTractNode(TSCEFormulaNodeTreeCreator *this, TSCEASTColonTractElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTColonTractElement::relativeTractRef(a2, this, a3, a4);
  if (*(this + 304))
  {
    v94 = 0;
    v92.i64[0] = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0.coordinate;
    v12 = objc_msgSend_absoluteCellTractRefForHostCell_offTable_(v6, v18, &v92, &v94);
    if ((objc_msgSend_hasTableUID(v12, v19, v20, v21) & 1) == 0)
    {
      v25 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
      objc_msgSend_setTableUID_(v12, v26, v25->var0.var0._tableUID._lower, v25->var0.var0._tableUID._upper);
    }

    v27 = objc_msgSend_tableUID(v12, v22, v23, v24);
    v29 = v28;
    v30 = sub_221089E8C(this);
    v32 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v31, v27, v29, v30);

    v36 = objc_msgSend_translator(v32, v33, v34, v35);
    v40 = objc_msgSend_coordinateMapper(v36, v37, v38, v39);

    v43 = objc_msgSend_viewTractRefForBaseTractRef_(v40, v41, v12, v42);
    v44 = [TSTUIDRectRef alloc];
    v45 = sub_221089E8C(this);
    v47 = objc_msgSend_initWithCalcEngine_viewTractRef_(v44, v46, v45, v43);

    v51 = objc_msgSend_preserveFlags(v12, v48, v49, v50);
    objc_msgSend_setBasePreserveFlags_(v47, v52, v51, v53);
    if ((v94 & 1) == 0 && objc_msgSend_isValid(v47, v54, v55, v56) && ((objc_msgSend_spansAllColumns(v12, v57, v58, v59) & 1) != 0 || (v63 = objc_msgSend_numColumns(v12, v60, v61, v62), objc_msgSend_numberOfColumns(v47, v64, v65, v66) == v63)) && ((objc_msgSend_spansAllRows(v12, v60, v61, v62) & 1) != 0 || (v70 = objc_msgSend_numRows(v12, v67, v68, v69), objc_msgSend_numberOfRows(v47, v71, v72, v73) == v70)))
    {
      v74 = [TSCECombinedReferenceFormulaNode alloc];
      v75 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
      v92 = *&v75->var0.var0.coordinate.row;
      v93._lower = v75->var0.var0._tableUID._upper;
      v79 = objc_msgSend_initWithUidRectRef_hostCellRef_(v74, v76, v47, &v92);
      if (!v79)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v80 = [TSTUIDRectRef alloc];
      v81 = sub_221089E8C(this);
      tableUID = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0._tableUID;
      v92 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v93 = tableUID;
      v84 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v80, v83, v81, &v92, 0);

      v85 = [TSCECombinedReferenceFormulaNode alloc];
      v86 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
      v92 = *&v86->var0.var0.coordinate.row;
      v93._lower = v86->var0.var0._tableUID._upper;
      v79 = objc_msgSend_initWithUidRectRef_hostCellRef_(v85, v87, v84, &v92);

      if (!v79)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    v88 = objc_msgSend_partialResultForOffset_(*(this + 25), v77, *(a2 + 2), v78);
    objc_msgSend_setPartialResult_(v79, v89, v88, v90);

    TSCEFormulaNodeTreeCreator::addExpression(this, v79, 0);
    goto LABEL_15;
  }

  v7 = [TSCEColonTractFormulaNode alloc];
  v92.i8[0] = TSCEASTElement::refFlags(a2, this);
  v94 = TSCEASTColonTractElement::colonTractFlags(a2, this, v8, v9);
  v10 = (*(*a2 + 96))(a2, this);
  v12 = objc_msgSend_initWithColonTract_refFlags_colonTractFlags_undoTractList_(v7, v11, v6, &v92, &v94, v10);

  v15 = objc_msgSend_partialResultForOffset_(*(this + 25), v13, *(a2 + 2), v14, v92.i64[0]);
  objc_msgSend_setPartialResult_(v12, v16, v15, v17);

  TSCEFormulaNodeTreeCreator::addExpression(this, v12, 0);
LABEL_16:

  return a2;
}

TSCEASTNumberElement *TSCEFormulaNodeTreeCreator::numberNode(id *this, TSCEASTNumberElement *a2, uint64_t a3, uint64_t a4)
{
  v17 = TSCEASTNumberElement::value(a2, this, a3, a4);
  v18 = v6;
  v7 = [TSCENumberFormulaNode alloc];
  v10 = objc_msgSend_initWithNumber_(v7, v8, &v17, v9);
  v13 = objc_msgSend_partialResultForOffset_(this[25], v11, *(a2 + 2), v12, v17, v18);
  objc_msgSend_setPartialResult_(v10, v14, v13, v15);

  TSCEFormulaNodeTreeCreator::addExpression(this, v10, 0);
  return a2;
}

TSCEASTBooleanElement *TSCEFormulaNodeTreeCreator::BOOLeanNode(id *this, TSCEASTBooleanElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTBooleanElement::value(a2, this, a3, a4);
  v7 = [TSCEBooleanFormulaNode alloc];
  v10 = objc_msgSend_initWithBoolean_(v7, v8, v6, v9);
  v13 = objc_msgSend_partialResultForOffset_(this[25], v11, *(a2 + 2), v12);
  objc_msgSend_setPartialResult_(v10, v14, v13, v15);

  TSCEFormulaNodeTreeCreator::addExpression(this, v10, 0);
  return a2;
}

TSCEASTStringElement *TSCEFormulaNodeTreeCreator::stringNode(id *this, TSCEASTStringElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTStringElement::string(a2, this, a3, a4);
  v7 = [TSCEStringFormulaNode alloc];
  v10 = objc_msgSend_initWithString_(v7, v8, v6, v9);
  v13 = objc_msgSend_partialResultForOffset_(this[25], v11, *(a2 + 2), v12);
  objc_msgSend_setPartialResult_(v10, v14, v13, v15);

  TSCEFormulaNodeTreeCreator::addExpression(this, v10, 0);
  return a2;
}

TSCEASTDateElement *TSCEFormulaNodeTreeCreator::dateNode(id *this, TSCEASTDateElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTDateElement::value(a2, this, a3, a4);
  v9 = TSCEASTDateElement::dateTimeFormat(a2, this, v7, v8);
  if (!objc_msgSend_length(v9, v10, v11, v12))
  {

    v9 = 0;
  }

  v13 = [TSCEDateFormulaNode alloc];
  v15 = objc_msgSend_initWithDate_dateTimeFormat_(v13, v14, v6, v9);
  v18 = objc_msgSend_partialResultForOffset_(this[25], v16, *(a2 + 2), v17);
  objc_msgSend_setPartialResult_(v15, v19, v18, v20);

  TSCEFormulaNodeTreeCreator::addExpression(this, v15, 0);
  return a2;
}

TSCEASTDurationElement *TSCEFormulaNodeTreeCreator::durationNode(id *this, TSCEASTDurationElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTDurationElement::durationFormat(a2, this, a3, a4);
  v21 = TSCEASTDurationElement::unitNum(a2, this, v7, v8);
  LOWORD(v22) = TSCEASTDurationElement::unit(a2, this, v9, v10);
  HIDWORD(v22) = v6 & 0xFFFFFF;
  v11 = [TSCEDurationFormulaNode alloc];
  v14 = objc_msgSend_initWithDuration_(v11, v12, &v21, v13);
  v17 = objc_msgSend_partialResultForOffset_(this[25], v15, *(a2 + 2), v16, *&v21, v22);
  objc_msgSend_setPartialResult_(v14, v18, v17, v19);

  TSCEFormulaNodeTreeCreator::addExpression(this, v14, 0);
  return a2;
}

TSCEASTTagOnlyElement *TSCEFormulaNodeTreeCreator::emptyArgumentNode(id *this, TSCEASTTagOnlyElement *a2)
{
  v4 = [TSCEEmptyFormulaNode alloc];
  inited = objc_msgSend_initAsEmptyNode(v4, v5, v6, v7);
  v11 = objc_msgSend_partialResultForOffset_(this[25], v9, *(a2 + 2), v10);
  objc_msgSend_setPartialResult_(inited, v12, v11, v13);

  TSCEFormulaNodeTreeCreator::addExpression(this, inited, 0);
  return a2;
}

TSCEASTTokenElement *TSCEFormulaNodeTreeCreator::tokenNode(id *this, TSCEASTTokenElement *a2)
{
  v4 = [TSCETokenFormulaNode alloc];
  isOptional = TSCEASTTokenElement::isOptional(a2, this, v5, v6);
  v10 = objc_msgSend_initWithIsOptional_(v4, v8, isOptional, v9);
  v13 = objc_msgSend_partialResultForOffset_(this[25], v11, *(a2 + 2), v12);
  objc_msgSend_setPartialResult_(v10, v14, v13, v15);

  TSCEFormulaNodeTreeCreator::addExpression(this, v10, 0);
  return a2;
}

TSCEASTArrayElement *TSCEFormulaNodeTreeCreator::arrayNode(id *this, TSCEASTArrayElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTArrayElement::numColumns(a2, this, a3, a4);
  v9 = TSCEASTArrayElement::numRows(a2, this, v7, v8);
  v10 = [TSCEArrayFormulaNode alloc];
  v12 = objc_msgSend_initWithNumColumns_numRows_(v10, v11, v6, v9);
  v15 = objc_msgSend_partialResultForOffset_(this[25], v13, *(a2 + 2), v14);
  objc_msgSend_setPartialResult_(v12, v16, v15, v17);

  TSCEFormulaNodeTreeCreator::addExpression(this, v12, v9 * v6);
  return a2;
}

TSCEASTListElement *TSCEFormulaNodeTreeCreator::listNode(id *this, TSCEASTListElement *a2)
{
  v4 = (*(*a2 + 48))(a2, this);
  v5 = [TSCEListFormulaNode alloc];
  v8 = objc_msgSend_initWithNumArgs_(v5, v6, v4, v7);
  v11 = objc_msgSend_partialResultForOffset_(this[25], v9, *(a2 + 2), v10);
  objc_msgSend_setPartialResult_(v8, v12, v11, v13);

  TSCEFormulaNodeTreeCreator::addExpression(this, v8, v4);
  return a2;
}

TSCEASTRelativeCoordRefElement *TSCEFormulaNodeTreeCreator::anyReferenceNode(TSCEFormulaNodeTreeCreator *this, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = TSCEASTElement::refFlags(a2, this);
  v26 = v4;
  v7 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, this, v5, v6);
  v25 = v7;
  v8 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
  if (v4)
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(a2, this, v10, v11);
    upper = v9;
  }

  else
  {
    lower = v8->var0.var0._tableUID._lower;
    upper = v8->var0.var0._tableUID._upper;
  }

  v14 = objc_msgSend_partialResultForOffset_(*(this + 25), v9, *(a2 + 2), v11);
  if (*(this + 304))
  {
    v21 = *(this + 1);
    if ((v4 & 0xC) == 8)
    {
      tableUID = TSCEFormulaRewriteContext::containingCell(v21)->var0.var0._tableUID;
      v28._lower = lower;
      v28._upper = upper;
      TSCEFormulaNodeTreeCreator::processColumnReferenceNode(this, v14, tableUID, v28, (v7 >> 16) >> 16, (v4 >> 4) & 1);
    }

    else
    {
      v22 = TSCEFormulaRewriteContext::containingCell(v21)->var0.var0._tableUID;
      v23._lower = lower;
      v23._upper = upper;
      if ((v4 & 0xC) == 4)
      {
        TSCEFormulaNodeTreeCreator::processRowReferenceNode(this, v14, v22, v23, v7, (v4 >> 5) & 1);
      }

      else
      {
        TSCEFormulaNodeTreeCreator::processCellReferenceNode(this, v14, v22, v23, v7, ((v7 << 16) >> 48), (v4 & 0x20) != 0, (v4 & 0x10) != 0);
      }
    }
  }

  else
  {
    v15 = [TSCERelativeCoordRefFormulaNode alloc];
    v16 = (*(*a2 + 96))(a2, this);
    v18 = objc_msgSend_initWithTableUID_refFlags_relativeCellCoord_undoTractList_(v15, v17, lower, upper, &v26, &v25, v16);

    objc_msgSend_setPartialResult_(v18, v19, v14, v20);
    TSCEFormulaNodeTreeCreator::addExpression(this, v18, 0);
  }

  return a2;
}

void TSCEFormulaNodeTreeCreator::processRowReferenceNode(TSCEFormulaRewriteContext **this, TSCEPartialResult *a2, TSKUIDStruct a3, TSKUIDStruct a4, uint64_t a5, int a6)
{
  upper = a4._upper;
  lower = a4._lower;
  v10 = a3._upper;
  v11 = a3._lower;
  v13 = a2;
  if (a6)
  {
    v14 = 10;
  }

  else
  {
    v14 = 0;
  }

  v15 = TSCEFormulaRewriteContext::containingCell(this[1]);
  if (a6)
  {
    v18 = a5;
    goto LABEL_17;
  }

  v18 = 0x7FFFFFFF;
  if (a5 == 0x7FFFFFFF)
  {
    goto LABEL_17;
  }

  coordinate = v15->var0.var0.coordinate;
  if (a5 >= 1)
  {
    if ((999999 - a5) < coordinate.row)
    {
      goto LABEL_17;
    }

LABEL_12:
    if (coordinate.row == 0x7FFFFFFF)
    {
      v20 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v17);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v22);
      v24 = NSStringFromTSUCellCoord();
      v25 = v20;
      v26 = v45;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v27, v45, v23, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v24);
    }

    else
    {
      v18 = coordinate.row + a5;
      if ((coordinate.row + a5) < 0x7FFFFFFF)
      {
        goto LABEL_17;
      }

      v44 = MEMORY[0x277D81150];
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v17);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v29);
      v43 = a5;
      v26 = v46;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v30, v46, v23, 191, 0, "overflow in row, input row: %d with host row: %lu", v43, coordinate.row);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
    v18 = 0x7FFFFFFF;
    goto LABEL_17;
  }

  if (!a5 || coordinate.row >= -a5)
  {
    goto LABEL_12;
  }

LABEL_17:
  v34 = [TSTUIDRectRef alloc];
  v35 = sub_221089E8C(this);
  v47 = v18 | 0x7FFF00000000;
  v48 = v47;
  v49 = lower;
  v50 = upper;
  v37 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v34, v36, v35, &v47, v14);

  v38 = [TSCECombinedReferenceFormulaNode alloc];
  v47 = TSCEFormulaRewriteContext::containingCell(this[1])->var0.var0.coordinate;
  v48 = v11;
  v49 = v10;
  v40 = objc_msgSend_initWithUidRectRef_hostCellRef_(v38, v39, v37, &v47);
  objc_msgSend_setPartialResult_(v40, v41, v13, v42);
  TSCEFormulaNodeTreeCreator::addExpression(this, v40, 0);
}

void TSCEFormulaNodeTreeCreator::processColumnReferenceNode(TSCEFormulaRewriteContext **this, TSCEPartialResult *a2, TSKUIDStruct a3, TSKUIDStruct a4, int a5, unsigned int a6)
{
  upper = a4._upper;
  lower = a4._lower;
  v37 = a3._upper;
  v10 = a3._lower;
  v12 = a2;
  if (a6)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  v14 = TSCEFormulaRewriteContext::containingCell(this[1]);
  if (a6)
  {
    v17 = a5;
    goto LABEL_14;
  }

  v17 = 0x7FFF;
  if (a5 == 0x7FFF)
  {
    goto LABEL_14;
  }

  coordinate = v14->var0.var0.coordinate;
  if (a5 < 1)
  {
    if (a5 < 0 && -a5 > coordinate.column)
    {
      goto LABEL_14;
    }
  }

  else if (999 - a5 < coordinate.column)
  {
    goto LABEL_14;
  }

  v17 = coordinate.column + a5;
  if ((coordinate.column + a5) >= 0x7FFFu)
  {
    v36 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v23, v19, v22, 168, 0, "overflow in column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

LABEL_14:
  v27 = [TSTUIDRectRef alloc];
  v28 = sub_221089E8C(this);
  v38 = (v17 << 32) | 0x7FFFFFFF;
  v39 = v38;
  v40 = lower;
  v41 = upper;
  v30 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v27, v29, v28, &v38, v13 | a6);

  v31 = [TSCECombinedReferenceFormulaNode alloc];
  v38 = TSCEFormulaRewriteContext::containingCell(this[1])->var0.var0.coordinate;
  v39 = v10;
  v40 = v37;
  v33 = objc_msgSend_initWithUidRectRef_hostCellRef_(v31, v32, v30, &v38);
  objc_msgSend_setPartialResult_(v33, v34, v12, v35);
  TSCEFormulaNodeTreeCreator::addExpression(this, v33, 0);
}

void TSCEFormulaNodeTreeCreator::processCellReferenceNode(TSCEFormulaRewriteContext **this, TSCEPartialResult *a2, TSKUIDStruct a3, TSKUIDStruct a4, void *a5, void *a6, BOOL a7, BOOL a8)
{
  upper = a4._upper;
  lower = a4._lower;
  v12 = a3._upper;
  v13 = a3._lower;
  v15 = a2;
  sub_2210898C4(a6, v16, v17, v18);
  sub_2210899C8(a5, v19, v20, v21);
  sub_2210898C4(a6, v22, v23, v24);
  sub_2210899C8(a5, v25, v26, v27);
  if (a8)
  {
    v28 = 4;
  }

  else
  {
    v28 = 0;
  }

  if (a7)
  {
    v29 = 10;
  }

  else
  {
    v29 = 0;
  }

  v53._flags = v29 | a8 | v28;
  v30 = TSCEFormulaRewriteContext::containingCell(this[1]);
  v32 = 0x100000000000000;
  if (!a8)
  {
    v32 = 0;
  }

  v33 = 0x1000000000000;
  if (!a7)
  {
    v33 = 0;
  }

  coordinate = v30->var0.var0.coordinate;
  v35 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(coordinate, (v33 | v32 | (a6 << 32) | a5), &v53, v31);
  v36 = v35;
  v37 = v35 & 0xFFFF00000000;
  v38 = v35 != 0x7FFFFFFFLL || v37 == 0x7FFF00000000;
  if (!v38 || (v37 == 0x7FFF00000000 ? (v39 = v35 == 0x7FFFFFFFLL) : (v39 = 1), !v39))
  {
    v36 = 0x7FFF7FFFFFFFLL;
  }

  v40 = [TSTUIDRectRef alloc];
  v41 = sub_221089E8C(this);
  v49 = v36;
  v50 = v36;
  v51 = lower;
  v52 = upper;
  v43 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v40, v42, v41, &v49, v53._flags);

  v44 = [TSCECombinedReferenceFormulaNode alloc];
  v49 = TSCEFormulaRewriteContext::containingCell(this[1])->var0.var0.coordinate;
  v50 = v13;
  v51 = v12;
  v46 = objc_msgSend_initWithUidRectRef_hostCellRef_(v44, v45, v43, &v49);
  objc_msgSend_setPartialResult_(v46, v47, v15, v48);
  TSCEFormulaNodeTreeCreator::addExpression(this, v46, 0);
}

TSCEASTRelativeCoordRefElement *TSCEFormulaNodeTreeCreator::referenceErrorNode(TSCEFormulaNodeTreeCreator *this, TSCEASTRelativeCoordRefElement *a2)
{
  if (*(this + 304))
  {
    v13 = [TSTUIDRectRef alloc];
    v14 = sub_221089E8C(this);
    tableUID = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0._tableUID;
    v28 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v29 = tableUID;
    v9 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v13, v16, v14, &v28, 0);

    v17 = [TSCECombinedReferenceFormulaNode alloc];
    v18 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    v28 = *&v18->var0.var0.coordinate.row;
    v29._lower = v18->var0.var0._tableUID._upper;
    v22 = objc_msgSend_initWithUidRectRef_hostCellRef_(v17, v19, v9, &v28);
    if (a2)
    {
      v23 = objc_msgSend_partialResultForOffset_(*(this + 25), v20, *(a2 + 2), v21);
      objc_msgSend_setPartialResult_(v22, v24, v23, v25);
    }

    else
    {
      v23 = 0;
      objc_msgSend_setPartialResult_(v22, v20, 0, v21);
    }

    if (a2)
    {
    }

    TSCEFormulaNodeTreeCreator::addExpression(this, v22, 0);
  }

  else
  {
    v27 = 0;
    if (a2)
    {
      v27 = TSCEASTElement::refFlags(a2, this);
    }

    v28.i64[0] = 0x7FFF7FFFFFFFLL;
    v4 = [TSCERelativeCoordRefFormulaNode alloc];
    v5 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    v9 = objc_msgSend_initWithTableUID_refFlags_relativeCellCoord_undoTractList_(v4, v6, v5->var0.var0._tableUID._lower, v5->var0.var0._tableUID._upper, &v27, &v28, 0);
    if (a2)
    {
      v10 = objc_msgSend_partialResultForOffset_(*(this + 25), v7, *(a2 + 2), v8);
      objc_msgSend_setPartialResult_(v9, v11, v10, v12);
    }

    else
    {
      v10 = 0;
      objc_msgSend_setPartialResult_(v9, v7, 0, v8);
    }

    if (a2)
    {
    }

    TSCEFormulaNodeTreeCreator::addExpression(this, v9, 0);
  }

  return a2;
}

void sub_2210C6C74(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

TSCEASTRelativeCoordRefElement *TSCEFormulaNodeTreeCreator::referenceErrorWithUidsNode(TSCEFormulaNodeTreeCreator *this, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = (*(*a2 + 96))(a2, this);
  v10 = TSCEASTRelativeCoordRefElement::tableUID(a2, this, v5, v6);
  v11 = v7;
  v51[0] = v10;
  v51[1] = v7;
  if (*(this + 304))
  {
    v20 = objc_msgSend_includedUidsTract(v4, v7, v8, v9);
    v14 = v20;
    memset(v50, 0, sizeof(v50));
    *__p = 0u;
    if (v20)
    {
      v24 = objc_msgSend_columnUids(v20, v21, v22, v23);
      v28 = objc_msgSend_rowUids(v14, v25, v26, v27);
      sub_2210BBBE8(v45, v24, v28);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v45;
      v50[0] = upper;
      v45[1] = 0;
      upper = 0;
      v45[0] = 0;
      v29 = v50[1];
      if (v50[1])
      {
        v50[2] = v50[1];
        operator delete(v50[1]);
        v29 = v45[0];
      }

      *&v50[1] = v47;
      v50[3] = v48;
      v48 = 0;
      v47 = 0uLL;
      if (v29)
      {
        v45[1] = v29;
        operator delete(v29);
      }
    }

    v30 = TSCEASTRelativeCoordRefElement::preserveFlags(a2, this);
    v31 = [TSTUIDRectRef alloc];
    v32 = sub_221089E8C(this);
    v34 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v31, v33, v32, v51, __p, v30);

    v35 = [TSCECombinedReferenceFormulaNode alloc];
    v36 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    *v45 = *&v36->var0.var0.coordinate.row;
    upper = v36->var0.var0._tableUID._upper;
    v38 = objc_msgSend_initWithUidRectRef_hostCellRef_(v35, v37, v34, v45);
    v41 = objc_msgSend_partialResultForOffset_(*(this + 25), v39, *(a2 + 2), v40);
    objc_msgSend_setPartialResult_(v38, v42, v41, v43);

    TSCEFormulaNodeTreeCreator::addExpression(this, v38, 0);
    if (v50[1])
    {
      v50[2] = v50[1];
      operator delete(v50[1]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    LOBYTE(v45[0]) = TSCEASTElement::refFlags(a2, this);
    __p[0] = 0x7FFF7FFFFFFFLL;
    v12 = [TSCERelativeCoordRefFormulaNode alloc];
    v14 = objc_msgSend_initWithTableUID_refFlags_relativeCellCoord_undoTractList_(v12, v13, v10, v11, v45, __p, v4);
    v17 = objc_msgSend_partialResultForOffset_(*(this + 25), v15, *(a2 + 2), v16, v45[0]);
    objc_msgSend_setPartialResult_(v14, v18, v17, v19);

    TSCEFormulaNodeTreeCreator::addExpression(this, v14, 0);
  }

  return a2;
}

void sub_2210C6F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_22109DBB8(va);
  _Unwind_Resume(a1);
}

TSCEASTWhitespaceElement *TSCEFormulaNodeTreeCreator::appendWhitespaceNode(TSCEFormulaNodeTreeCreator *this, TSCEASTWhitespaceElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTWhitespaceElement::whitespace(a2, this, a3, a4);
  TSCEFormulaNodeTreeCreator::addWhitespaceAfter(this, v6);

  return a2;
}

TSCEASTWhitespaceElement *TSCEFormulaNodeTreeCreator::prependWhitespaceNode(TSCEFormulaNodeTreeCreator *this, TSCEASTWhitespaceElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTWhitespaceElement::whitespace(a2, this, a3, a4);
  TSCEFormulaNodeTreeCreator::addWhitespaceBefore(this, v6);

  return a2;
}

TSCEASTLetBindElement *TSCEFormulaNodeTreeCreator::letBindNode(TSCEFormulaNodeTreeCreator *this, TSCEASTLetBindElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTLetBindElement::identifier(a2, this, a3, a4);
  isContinuation = TSCEASTLetBindElement::isContinuation(a2, this, v7, v8);
  TSCESymbolTable::beginScope(*(this + 18));
  if (v6)
  {
    if ((*(this + 304) & 8) != 0)
    {
      v10 = TSCESymbolTable::convertToExcelAcceptableIdentifier(*(this + 18), v6);

      v6 = v10;
    }

    Symbol = TSCESymbolTable::createSymbol(*(this + 18), v6);
  }

  else
  {
    Symbol = 0;
  }

  v12 = [TSCEIdentifierFormulaNode alloc];
  v15 = objc_msgSend_initWithIdentifier_(v12, v13, v6, v14);
  objc_msgSend_setSymbol_(v15, v16, Symbol, v17);
  if (isContinuation)
  {
    v18 = [TSCELetBindFormulaNode alloc];
    isContinued = objc_msgSend_initWithIdentifier_isContinued_(v18, v19, v6, 1);
  }

  else
  {
    v23 = [TSCEFunctionFormulaNode alloc];
    isContinued = objc_msgSend_initWithFunctionIndex_numArgs_(v23, v24, 363, 3);
  }

  v25 = isContinued;
  v26 = objc_msgSend_partialResultForOffset_(*(this + 25), v21, *(a2 + 2), v22);
  objc_msgSend_setPartialResult_(v25, v27, v26, v28);

  TSCEFormulaNodeTreeCreator::addExpression(this, v25, 3);
  TSCEFormulaNodeTreeCreator::addExpression(this, v15, 0);

  return a2;
}

TSCEASTLambdaElement *TSCEFormulaNodeTreeCreator::lambdaNode(TSCEFormulaNodeTreeCreator *this, TSCEASTLambdaElement *a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = TSCEASTLambdaElement::identifiers(a2, this, a3, a4);
  v9 = objc_msgSend_count(v34, v6, v7, v8);
  v10 = [TSCEFunctionFormulaNode alloc];
  v33 = objc_msgSend_initWithFunctionIndex_numArgs_(v10, v11, 364, (v9 + 1));
  v14 = objc_msgSend_partialResultForOffset_(*(this + 25), v12, *(a2 + 2), v13);
  objc_msgSend_setPartialResult_(v33, v15, v14, v16);

  TSCEFormulaNodeTreeCreator::addExpression(this, v33, v9 + 1);
  TSCESymbolTable::beginScope(*(this + 18));
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = v34;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v35, v39, 16);
  if (v19)
  {
    v20 = *v36;
    do
    {
      v21 = 0;
      do
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v35 + 1) + 8 * v21);
        v23 = v22;
        if ((*(this + 304) & 8) != 0)
        {
          v23 = TSCESymbolTable::convertToExcelAcceptableIdentifier(*(this + 18), v22);
        }

        Symbol = TSCESymbolTable::createSymbol(*(this + 18), v22);
        v25 = [TSCEIdentifierFormulaNode alloc];
        v28 = objc_msgSend_initWithIdentifier_(v25, v26, v23, v27);
        objc_msgSend_setSymbol_(v28, v29, Symbol, v30);
        TSCEFormulaNodeTreeCreator::addExpression(this, v28, 0);

        ++v21;
      }

      while (v19 != v21);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v31, &v35, v39, 16);
    }

    while (v19);
  }

  return a2;
}

TSCEASTEndScopeElement *TSCEFormulaNodeTreeCreator::endScopeNode(TSCESymbolTable **this, TSCEASTEndScopeElement *a2, uint64_t a3, uint64_t a4)
{
  TSCESymbolTable::endScope(this[18], a2, a3, a4);
  if ((this[38] & 4) != 0)
  {
    v6 = [TSCEEndScopeFormulaNode alloc];
    inited = objc_msgSend_initAsEndScope(v6, v7, v8, v9);
    TSCEFormulaNodeTreeCreator::addExpression(this, inited, 0);
  }

  return a2;
}

TSCEASTVariableElement *TSCEFormulaNodeTreeCreator::variableNode(TSCEFormulaNodeTreeCreator *this, TSCEASTVariableElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTVariableElement::symbol(a2, this, a3, a4);
  v7 = TSCESymbolTable::identifierForSymbol(*(this + 18), v6);
  if ((*(this + 304) & 8) != 0)
  {
    v8 = TSCESymbolTable::convertToExcelAcceptableIdentifier(*(this + 18), v7);

    v7 = v8;
  }

  v9 = [TSCEVariableFormulaNode alloc];
  v11 = objc_msgSend_initWithSymbol_identifier_(v9, v10, v6, v7);
  v14 = objc_msgSend_partialResultForOffset_(*(this + 25), v12, *(a2 + 2), v13);
  objc_msgSend_setPartialResult_(v11, v15, v14, v16);

  TSCEFormulaNodeTreeCreator::addExpression(this, v11, 0);
  return a2;
}

TSCEASTUidReferenceElement *TSCEFormulaNodeTreeCreator::uidReferenceNode(TSCEFormulaNodeTreeCreator *this, TSCEASTUidReferenceElement *a2)
{
  v4 = (*(*a2 + 96))(a2, this);
  lower = TSCEASTUidReferenceElement::tableUID(a2, this, v5, v6);
  upper = v7;
  if (!lower)
  {
    if (v7)
    {
      lower = 0;
    }

    else
    {
      v10 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
      lower = v10->var0.var0._tableUID._lower;
      upper = v10->var0.var0._tableUID._upper;
    }
  }

  v11 = [TSCEUidReferenceFormulaNode alloc];
  v23 = TSCEASTElement::refFlags(a2, this);
  v22 = TSCEASTUidReferenceElement::colonTractFlags(a2, this, v12, v13);
  v15 = objc_msgSend_initWithTableUID_refFlags_colonTractFlags_undoTractList_(v11, v14, lower, upper, &v23, &v22, v4);
  v18 = objc_msgSend_partialResultForOffset_(*(this + 25), v16, *(a2 + 2), v17);
  objc_msgSend_setPartialResult_(v15, v19, v18, v20);

  TSCEFormulaNodeTreeCreator::addExpression(this, v15, 0);
  return a2;
}

TSCEASTViewTractRefElement *TSCEFormulaNodeTreeCreator::viewTractRefNode(TSCEFormulaNodeTreeCreator *this, TSCEASTViewTractRefElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTViewTractRefElement::tableUID(a2, this, a3, a4);
  v92 = v6;
  v93 = v7;
  if (v6 | v7)
  {
    lower = v6;
    upper = v7;
  }

  else
  {
    v12 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    lower = v12->var0.var0._tableUID._lower;
    upper = v12->var0.var0._tableUID._upper;
    v92 = lower;
    v93 = upper;
  }

  if (*(this + 304))
  {
    TSCEASTViewTractRefElement::uidReference(v91, a2, this, v8, v9);
    v29 = objc_msgSend_activeUidTract(v91[0], v26, v27, v28);
    v33 = v29;
    if (!v29)
    {
      v56 = MEMORY[0x277D81150];
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "virtual TSCEASTElement *TSCEFormulaNodeTreeCreator::viewTractRefNode(TSCEASTViewTractRefElement *)", v32);
      v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTreeCreator.mm", v59);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v61, v57, v60, 722, 0, "viewTractRef is expected to have an active tract");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64);
LABEL_34:

      return a2;
    }

    v34 = objc_msgSend_columnUids(v29, v30, v31, v32);
    v38 = objc_msgSend_rowUids(v33, v35, v36, v37);
    v39 = sub_221089E8C(this);
    v41 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v40, lower, upper, v39);

    if (!v41)
    {
      (*(*this + 240))(this, 0);
LABEL_33:

      goto LABEL_34;
    }

    v44 = TSCEASTViewTractRefElement::viewTractRef(a2, this, v42, v43);
    memset(v90, 0, sizeof(v90));
    *__p = 0u;
    if (objc_msgSend_isFixedAtZeroRef(v44, v45, v46, v47))
    {
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v79[0] = objc_msgSend_columnUIDForColumnIndex_(v41, v48, 0, v49);
      v79[1] = v50;
      sub_221083454(&v86, v79);
      v79[0] = objc_msgSend_rowUIDForRowIndex_(v41, v51, 0, v52);
      v79[1] = v53;
      sub_221083454(&v83, v79);
      sub_2210BBBE8(v79, &v86, &v83);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v79;
      v90[0] = v80;
      v79[1] = 0;
      v80 = 0;
      v79[0] = 0;
      v54 = v90[1];
      if (v90[1])
      {
        v90[2] = v90[1];
        operator delete(v90[1]);
        v54 = v79[0];
      }

      *&v90[1] = v81;
      v90[3] = v82;
      v82 = 0;
      v81 = 0uLL;
      if (v54)
      {
        v79[1] = v54;
        operator delete(v54);
      }

      if (v83)
      {
        v84 = v83;
        operator delete(v83);
      }

      v55 = v86;
      if (!v86)
      {
        goto LABEL_28;
      }

      v87 = v86;
    }

    else
    {
      sub_2210BBBE8(v79, v34, v38);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v79;
      v90[0] = v80;
      v79[1] = 0;
      v80 = 0;
      v79[0] = 0;
      v55 = v90[1];
      if (v90[1])
      {
        v90[2] = v90[1];
        operator delete(v90[1]);
        v55 = v79[0];
      }

      *&v90[1] = v81;
      v90[3] = v82;
      v82 = 0;
      v81 = 0uLL;
      if (!v55)
      {
        goto LABEL_28;
      }

      v79[1] = v55;
    }

    operator delete(v55);
LABEL_28:
    v65 = [TSTUIDRectRef alloc];
    v66 = sub_221089E8C(this);
    v68 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v65, v67, v66, &v92, __p, 15);

    v69 = [TSCECombinedReferenceFormulaNode alloc];
    v70 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    *v79 = *&v70->var0.var0.coordinate.row;
    v80 = v70->var0.var0._tableUID._upper;
    v72 = objc_msgSend_initWithUidRectRef_hostCellRef_(v69, v71, v68, v79);
    v75 = objc_msgSend_partialResultForOffset_(*(this + 25), v73, *(a2 + 2), v74);
    objc_msgSend_setPartialResult_(v72, v76, v75, v77);

    TSCEFormulaNodeTreeCreator::addExpression(this, v72, 0);
    if (v90[1])
    {
      v90[2] = v90[1];
      operator delete(v90[1]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    goto LABEL_33;
  }

  v13 = [TSCEViewTractRefFormulaNode alloc];
  v16 = TSCEASTViewTractRefElement::viewTractRef(a2, this, v14, v15);
  LOBYTE(__p[0]) = TSCEASTElement::refFlags(a2, this);
  LOBYTE(v79[0]) = TSCEASTViewTractRefElement::colonTractFlags(a2, this, v17, v18);
  v20 = objc_msgSend_initWithViewTractRef_refFlags_colonTractFlags_(v13, v19, v16, __p, v79);

  v23 = objc_msgSend_partialResultForOffset_(*(this + 25), v21, *(a2 + 2), v22);
  objc_msgSend_setPartialResult_(v20, v24, v23, v25);

  TSCEFormulaNodeTreeCreator::addExpression(this, v20, 0);
  return a2;
}

void sub_2210C7C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  sub_22109DBB8(va);

  _Unwind_Resume(a1);
}

TSCEASTLinkedRefElement *TSCEFormulaNodeTreeCreator::linkedRefNode(TSCEFormulaNodeTreeCreator *this, TSCEASTLinkedRefElement *a2)
{
  v4 = (*(*a2 + 136))(a2, this);
  v6 = v5;
  v7 = TSCEASTElement::tag(a2, this);
  v8 = [TSCELinkedRefFormulaNode alloc];
  v10 = objc_msgSend_initWithLinkTable_linkTag_(v8, v9, v4, v6, v7);
  TSCEFormulaNodeTreeCreator::addExpression(this, v10, 0);

  return a2;
}

TSCEASTCategoryRefElement *TSCEFormulaNodeTreeCreator::categoryRefNode(TSCEFormulaNodeTreeCreator *this, TSCEASTCategoryRefElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTCategoryRefElement::categoryRef(a2, this, a3, a4);
  v10 = v6;
  if (*(this + 304))
  {
    if ((objc_msgSend_preserveFlags(v6, v7, v8, v9) & 2) == 0)
    {
      v23 = objc_msgSend_groupByUid(v10, v20, v21, v22);
      v25 = v24;
      v26 = sub_221089E8C(this);
      v28 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v27, v23, v25, v26);

      if (v28)
      {
        v32 = objc_msgSend_tableInfo(v28, v29, v30, v31);
        v36 = objc_msgSend_tableUID(v32, v33, v34, v35);
        v38 = v37;
        v39 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
        if (v36 == v39->var0.var0._tableUID._lower)
        {
          upper = v39->var0.var0._tableUID._upper;

          if (v38 == upper)
          {
            v41 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
            lower = v41->var0.var0._tableUID._lower;
            v43 = v41->var0.var0._tableUID._upper;
            v44 = sub_221089E8C(this);
            v46 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v45, lower, v43, v44);

            v50 = objc_msgSend_translator(v46, v47, v48, v49);
            v51 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
            *&v66 = objc_msgSend_rowUIDForBaseRowIndex_(v50, v52, v51->var0.var0.coordinate.row, v53);
            *(&v66 + 1) = v54;

            tableUID = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0._tableUID;
            v56 = objc_msgSend_resolveCategoryRef_atRowUid_inHostTable_(v28, v55, v10, &v66, &tableUID);

            v10 = v56;
          }
        }

        else
        {
        }
      }
    }

    v57 = [TSCECombinedReferenceFormulaNode alloc];
    v58 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    v66 = *&v58->var0.var0.coordinate.row;
    v67 = v58->var0.var0._tableUID._upper;
    v14 = objc_msgSend_initWithCategoryRef_hostCellRef_(v57, v59, v10, &v66);
    v62 = objc_msgSend_partialResultForOffset_(*(this + 25), v60, *(a2 + 2), v61);
    objc_msgSend_setPartialResult_(v14, v63, v62, v64);

    TSCEFormulaNodeTreeCreator::addExpression(this, v14, 0);
  }

  else
  {
    v11 = [TSCECategoryRefFormulaNode alloc];
    v14 = objc_msgSend_initWithCategoryRef_(v11, v12, v10, v13);
    v17 = objc_msgSend_partialResultForOffset_(*(this + 25), v15, *(a2 + 2), v16);
    objc_msgSend_setPartialResult_(v14, v18, v17, v19);

    TSCEFormulaNodeTreeCreator::addExpression(this, v14, 0);
  }

  return a2;
}

uint64_t sub_2210C8108(uint64_t a1, TSCEASTNodeArray *a2, void *a3, TSCEFormulaRewriteContext *a4, TSCESymbolTable *a5, int a6)
{
  v11 = a3;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a4, a5);
  *a1 = &unk_2834A1908;
  v12 = v11;
  *(a1 + 200) = v12;
  *(a1 + 208) = 0;
  *(a1 + 216) = objc_opt_new();
  *(a1 + 224) = objc_opt_new();
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 304) = a6;
  *(a1 + 96) = 1;

  return a1;
}

void sub_2210C81D4(_Unwind_Exception *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(v1);

  _Unwind_Resume(a1);
}

id *sub_2210C8214(id *a1)
{
  v3 = a1 + 12;
  sub_2210C8268(&v3);
  sub_221087B80((a1 + 7));
  sub_2210C82EC((a1 + 2));

  return a1;
}

void sub_2210C8268(void ***a1)
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
        v4 = sub_2210C82EC(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2210C82EC(uint64_t a1)
{
  sub_2210C8328(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2210C8328(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_2210C836C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t sub_2210C8FF8(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834A1A70;
  *(a1 + 200) = v7;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 1065353216;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 1065353216;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 1065353216;
  return a1;
}

TSCEASTCategoryRefElement *sub_2210C90A4(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4)
{
  v4 = this;
  v6 = TSCEASTCategoryRefElement::mutableCategoryRef(this, a1, a3, a4);
  if (objc_msgSend_isValid(v6, v7, v8, v9))
  {
    v13 = objc_msgSend_regionMovedInfo(*(a1 + 25), v10, v11, v12);
    v17 = objc_msgSend_originalSrcTableUID(v13, v14, v15, v16);
    if (v17 | v18)
    {
      v21 = objc_msgSend_originalSrcTableUID(v13, v18, v19, v20);
      v23 = v22;
      if (v21 != objc_msgSend_srcTableUID(v13, v22, v24, v25) || v23 != v26)
      {
        v54 = sub_221089E8C(a1);
        *&v156.coordinate.row = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1._tableUID;
        v30 = objc_msgSend_tableOrLinkedResolverForTableUID_(v54, v55, &v156, v56);

        if (v30)
        {
          v60 = objc_msgSend_groupByUUID(v30, v57, v58, v59);
          v62 = v61;
          if (v60 == objc_msgSend_groupByUid(v6, v61, v63, v64) && v62 == v65 && (objc_msgSend_preserveFlags(v6, v65, v66, v67) & 2) != 0)
          {
            v71 = objc_msgSend_tableTranslator(v30, v68, v69, v70);
            if (v71)
            {
              v72 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
              v156.coordinate = objc_msgSend_rowUIDForBaseRowIndex_(v71, v73, v72->var0.var1.coordinate.row, v74);
              v156._tableUID._lower = v75;
              if (*&v156.coordinate | v75)
              {
                v78 = objc_msgSend_dstTableUID(v13, v75, v76, v77);
                v80 = v79;
                v81 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
                if (v78 == v81->var0.var1._tableUID._lower && v80 == v81->var0.var1._tableUID._upper)
                {
                  v86 = objc_msgSend_absoluteGroupUid(v6, v82, v83, v84);
                  v88 = v87;
                  v89 = 0;
                  v90 = 0;
                  tableUID._lower = v86;
                  tableUID._upper = v88;
                  __p = 0;
                  v152 = 0;
                  if (!(v86 | v88) || (v90 = objc_msgSend_convertToRelativeAncestorUid_rowUid_(v30, 0, &tableUID, &v156), __p = v90, v152 = v89, v90 != tableUID._lower) || v89 != tableUID._upper)
                  {
                    if (v90 | v89)
                    {
                      objc_msgSend_setAsRelativeWithGroupUid_(v6, v89, &__p, v85);
                      TSCEASTCategoryRefElement::setCategoryRef(v4, v6, a1);
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_77;
      }
    }

    v27 = sub_221089E8C(a1);
    *&v156.coordinate.row = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
    v30 = objc_msgSend_tableOrLinkedResolverForTableUID_(v27, v28, &v156, v29);

    if (!v30 || (v34 = objc_msgSend_groupByUUID(v30, v31, v32, v33), v36 = v35, v34 != objc_msgSend_groupByUid(v6, v35, v37, v38)) || v36 != v39)
    {
LABEL_34:
      v91 = *(a1 + 25);
      v93 = sub_221089E8C(a1);
      if (v91)
      {
        objc_msgSend_flattenedCellRefForCategoryRef_calcEngine_(v91, v92, v6, v93);
      }

      else
      {
        memset(&v156, 0, sizeof(v156));
      }

      if (v156.coordinate.row == 0x7FFFFFFF || (*&v156.coordinate & 0xFFFF00000000) == 0x7FFF00000000 || *&v156._tableUID == 0)
      {
        if (objc_msgSend_isValid(v6, v94, v95, v96))
        {
          v101 = objc_msgSend_absoluteGroupUid(v6, v98, v99, v100);
          if (v101 | v102)
          {
            v103 = sub_221089E8C(a1);
            v106 = v103;
            if (v103)
            {
              objc_msgSend_categoryRefsForSpanningCategoryRef_(v103, v104, v6, v105);
            }

            else
            {
              tableUID._lower = 0;
              tableUID._upper = 0;
              v155 = 0;
            }

            __p = 0;
            v152 = 0;
            v153 = 0;
            lower = tableUID._lower;
            upper = tableUID._upper;
            if (tableUID._lower == tableUID._upper)
            {
              v123 = 0;
              v124 = 0;
              v125 = tableUID._lower;
            }

            else
            {
              do
              {
                v109 = *lower;
                v110 = *(a1 + 25);
                v112 = sub_221089E8C(a1);
                if (v110)
                {
                  objc_msgSend_flattenedCellRefForCategoryRef_calcEngine_(v110, v111, v109, v112);
                }

                else
                {
                  memset(v150, 0, sizeof(v150));
                }

                if (*v150 != 0x7FFFFFFF && (*v150 & 0xFFFF00000000) != 0x7FFF00000000 && *&v150[8] != 0)
                {
                  v113 = v152;
                  if (v152 >= v153)
                  {
                    v116 = 0xAAAAAAAAAAAAAAABLL * ((v152 - __p) >> 3);
                    v117 = v116 + 1;
                    if (v116 + 1 > 0xAAAAAAAAAAAAAAALL)
                    {
                      sub_22107C148();
                    }

                    if (0x5555555555555556 * ((v153 - __p) >> 3) > v117)
                    {
                      v117 = 0x5555555555555556 * ((v153 - __p) >> 3);
                    }

                    if (0xAAAAAAAAAAAAAAABLL * ((v153 - __p) >> 3) >= 0x555555555555555)
                    {
                      v118 = 0xAAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v118 = v117;
                    }

                    if (v118)
                    {
                      sub_2210CDBC0(&__p, v118);
                    }

                    v119 = 8 * ((v152 - __p) >> 3);
                    v120 = *v150;
                    *(v119 + 16) = *&v150[16];
                    *v119 = v120;
                    v115 = 24 * v116 + 24;
                    v121 = (24 * v116 - (v152 - __p));
                    memcpy((v119 - (v152 - __p)), __p, v152 - __p);
                    v122 = __p;
                    __p = v121;
                    v152 = v115;
                    v153 = 0;
                    if (v122)
                    {
                      operator delete(v122);
                    }
                  }

                  else
                  {
                    v114 = *v150;
                    *(v152 + 2) = *&v150[16];
                    *v113 = v114;
                    v115 = (v113 + 24);
                  }

                  v152 = v115;
                }

                ++lower;
              }

              while (lower != upper);
              v123 = __p;
              v124 = v152;
              lower = tableUID._lower;
              v125 = tableUID._upper;
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v124 - v123) >> 3) == (v125 - lower) >> 3)
            {
              v126 = [TSCECellTractRef alloc];
              v129 = objc_msgSend_initWithCellRefVector_(v126, v127, &__p, v128);
              v133 = v129;
              if (v129 && objc_msgSend_isValid(v129, v130, v131, v132))
              {
                v137 = objc_msgSend_preserveFlags(v6, v134, v135, v136);
                v141 = objc_msgSend_preserveFlags(v6, v138, v139, v140);
                objc_msgSend_setPreserveFlags_(v133, v142, v137 & 3 | (4 * (v141 & 3u)), v143);
                objc_msgSend_setPreserveRectangular_(v133, v144, 0, v145);
                v146 = [TSCERelativeTractRef alloc];
                *v150 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1.coordinate;
                v148 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v146, v147, v133, v150);
                *v150 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1._tableUID;
                TSCEASTIteratorBase::createColonTractRef(a1, v148, 0, v150);
              }

              v123 = __p;
            }

            if (v123)
            {
              v152 = v123;
              operator delete(v123);
            }

            __p = &tableUID;
            sub_22107C2C0(&__p);
          }
        }
      }

      else
      {
        v150[0] = objc_msgSend_preserveFlags(v6, v94, v95, v96);
        tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1._tableUID;
        __p = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1.coordinate;
        v97 = TSCEASTIteratorBase::createReference(a1, &v156, v150, &tableUID, &__p, 0);
        (*(*a1 + 24))(a1, v4);
        v4 = v97;
      }

LABEL_77:

      goto LABEL_78;
    }

    v42 = objc_msgSend_tableTranslator(v30, v39, v40, v41);
    if (!v42 || (v156.coordinate = 0, v156._tableUID._lower = 0, v43 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1)), v156.coordinate = objc_msgSend_rowUIDForBaseRowIndex_(v42, v44, v43->var0.var0.coordinate.row, v45), v156._tableUID._lower = v46, !(*&v156.coordinate | v46)))
    {
LABEL_33:

      goto LABEL_34;
    }

    tableUID._lower = 0;
    tableUID._upper = 0;
    __p = objc_msgSend_relativeGroupUid(v6, v46, v47, v48);
    v152 = v49;
    if (__p | v49)
    {
      v52 = objc_msgSend_resolveRelativeAncestorUid_sourceRowUID_(v30, v49, &__p, &v156);
      tableUID._lower = v52;
      tableUID._upper = v53;
      if (v52 == __p && v53 == v152)
      {
        tableUID._lower = 0;
        tableUID._upper = 0;
LABEL_30:
        v52 = objc_msgSend_absoluteGroupUid(v6, v53, v50, v51);
        tableUID._lower = v52;
        tableUID._upper = v53;
LABEL_31:
        if (v52 | v53)
        {
          objc_msgSend_setAsAbsoluteWithGroupUid_(v6, v53, &tableUID, v51);
          TSCEASTCategoryRefElement::setCategoryRef(v4, v6, a1);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v52 = tableUID._lower;
      v53 = tableUID._upper;
    }

    if (v52 | v53)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_78:

  return v4;
}

uint64_t sub_2210C9944(void *a1, uint64_t a2)
{
  v4 = TSCEASTElement::refFlags(a2, a1);
  v5 = *a1;
  if (v4)
  {
    v6 = *(v5 + 328);
    v7 = a1;
    v8 = a2;
  }

  else
  {
    v6 = *(v5 + 320);
    v7 = a1;
    v8 = a2;
  }

  return v6(v7, v8);
}

TSCEASTRelativeCoordRefElement *sub_2210C99F8(uint64_t a1, TSCEASTRelativeCoordRefElement *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v6 = objc_msgSend_regionMovedInfo(*(a1 + 200), a2, a3, a4);
  v224 = v6;
  v7 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  lower = v7->var0.var0._tableUID._lower;
  upper = v7->var0.var0._tableUID._upper;
  v15 = lower == objc_msgSend_srcTableUID(v6, v10, v11, v12) && upper == v13;
  v16 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v17 = v16->var0.var0._tableUID._lower;
  v18 = v16->var0.var0._tableUID._upper;
  v24 = v17 == objc_msgSend_originalSrcTableUID(v6, v19, v20, v21) && v18 == v22;
  v25 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v26 = v25->var0.var0._tableUID._lower;
  v27 = v25->var0.var0._tableUID._upper;
  v35 = v26 == objc_msgSend_dstTableUID(v6, v28, v29, v30) && v27 == v31;
  if (v15 || v24 || v35)
  {
    if (v15)
    {
      v36 = objc_msgSend_srcColumnUids(v6, v31, v32, v33);
      v37 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      if (objc_msgSend_containsIndex_(v36, v38, v37->var0.var0.coordinate.column, v39))
      {
        v43 = objc_msgSend_srcRowUids(v6, v40, v41, v42);
        v44 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        v47 = objc_msgSend_containsIndex_(v43, v45, v44->var0.var0.coordinate.row, v46);

        if (v47)
        {
          v48 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
          v49 = sub_2212C7330(v48);
          v50 = 0;
LABEL_27:
          v51 = TSCEASTRelativeCoordRefElement::relativeCoord(v4, a1, v32, v33);
          v216 = v50;
          LOBYTE(v234._row) = TSCEASTRelativeCoordRefElement::preserveFlags(v4, a1);
          row = v234._row;
          coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
          tableUID = 0uLL;
          tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
          v53 = sub_221089E8C(a1);
          v56 = objc_msgSend_tableOrLinkedResolverForTableUID_(v53, v54, &tableUID, v55);

          v219 = v56;
          if (v56 && (objc_msgSend_tableTranslator(v56, v57, v58, v59), (v60 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v223 = v60;
            coordinate = objc_msgSend_chromeCellCoordForBaseCellCoord_(v60, v61, coordinate, v59);
          }

          else
          {
            v223 = 0;
          }

          v62 = coordinate;
          v65 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v62, v51, &v234, v59);
          if (v223)
          {
            v65 = objc_msgSend_baseCellCoordForChromeCellCoord_(v223, v63, v65, v64);
          }

          v222 = TSCEASTRelativeCoordRefElement::spansAllColumns(v4, a1);
          v66 = TSCEASTRelativeCoordRefElement::spansAllRows(v4, a1);
          v221 = v222 || v66;
          v220 = !v222 && !v66;
          v218 = v66;
          if (v15)
          {
            if (!v222 && !v66 || v66)
            {
              if (WORD2(v65) == 0x7FFF || (objc_msgSend_srcColumnUids(v224, v67, v68, v69), v70 = objc_claimAutoreleasedReturnValue(), v73 = objc_msgSend_containsIndex_(v70, v71, WORD2(v65), v72), v70, (v73 & 1) != 0))
              {
LABEL_41:
                if (((v222 | v220) & 1) == 0)
                {
                  if (v218)
                  {
                    v74 = objc_msgSend_spanningColumns(v224, v67, v68, v69);
                    goto LABEL_47;
                  }

LABEL_46:
                  v74 = 1;
LABEL_47:
                  if ((!v24 | v221))
                  {
                    v78 = !v24 & v220;
                  }

                  else
                  {
                    v79 = objc_msgSend_originalSrcColumnUids(v224, v67, v68, v69);
                    if (objc_msgSend_containsIndex_(v79, v80, WORD2(v65), v81))
                    {
                      v85 = objc_msgSend_originalSrcRowUids(v224, v82, v83, v84);
                      v88 = objc_msgSend_containsIndex_(v85, v86, v65, v87);

                      v78 = v88 ^ 1;
                    }

                    else
                    {

                      v78 = 1;
                    }
                  }

                  v89 = 0;
                  if (v74 & 1 | ((v78 & 1) == 0))
                  {
                    v91 = v219;
                  }

                  else
                  {
                    v90 = !v35;
                    v91 = v219;
                    if (!v90)
                    {
                      v92 = objc_msgSend_dstColumnUids(v224, v67, v68, v69);
                      if (objc_msgSend_containsIndex_(v92, v93, WORD2(v65), v94))
                      {
                        v98 = objc_msgSend_dstRowUids(v224, v95, v96, v97);
                        v89 = objc_msgSend_containsIndex_(v98, v99, v65, v100);
                      }

                      else
                      {
                        v89 = 0;
                      }
                    }
                  }

                  v231.coordinate = v4;
                  v101 = sub_2210CDC18((a1 + 288), &v231);
                  if (v101)
                  {
                    v231.coordinate = v4;
                    sub_2210CDD04((a1 + 288), &v231);
                  }

                  if (!v49 && (v74 & 1) != 0)
                  {
                    v89 &= v216;
                    v74 &= v216;
                  }

                  v231.coordinate = v4;
                  if (sub_2210CDC18((a1 + 208), &v231))
                  {
                    v231.coordinate = v4;
                    sub_2210CDD04((a1 + 208), &v231);
                    v89 = 0;
                    v74 = 0;
                  }

                  v231.coordinate = v4;
                  if (sub_2210CDC18((a1 + 248), &v231))
                  {
                    v231.coordinate = v4;
                    sub_2210CDD04((a1 + 248), &v231);
                    v89 = 0;
                  }

                  if (((v49 | v74) & 1) == 0 && !v89)
                  {
                    goto LABEL_128;
                  }

                  v232 = 0;
                  v232 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
                  v102 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
                  v103 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
                  v231.coordinate = v102;
                  v231._tableUID = v103->var0.var0._tableUID;
                  v217 = TSCEASTElement::mutableUndoTractList(v4, a1);
                  if (v49)
                  {
                    v107 = *(a1 + 200);
                    if (v107)
                    {
                      objc_msgSend_updatedCellRefForOriginalCellRef_(v107, v104, &v231, v106);
                    }

                    else
                    {
                      memset(&v230, 0, sizeof(v230));
                    }

                    v231 = v230;
                  }

                  if (((v101 == 0) & v89) == 1 && (*(a1 + 98) & 1) == 0)
                  {
                    if (WORD2(v65) == 0x7FFF)
                    {
                      v108 = 0;
                      v109 = 0;
                    }

                    else
                    {
                      v110 = objc_msgSend_dstColumnUids(v224, v104, v105, v106);
                      v109 = objc_msgSend_uidForIndex_(v110, v111, WORD2(v65), v112);
                      v108 = v113;
                    }

                    if (v65 == 0x7FFFFFFF)
                    {
                      v114 = 0;
                      v115 = 0;
                    }

                    else
                    {
                      v116 = objc_msgSend_dstRowUids(v224, v104, v105, v106);
                      v115 = objc_msgSend_uidForIndex_(v116, v117, v65, v118);
                      v114 = v119;
                    }

                    v120 = [TSCEUndoTract alloc];
                    v215 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v120, v121, v109, v108, v115, v114, 2);
                  }

                  else
                  {
                    v215 = 0;
                  }

                  v122 = HIDWORD(v65);
                  if (!v74)
                  {
                    goto LABEL_100;
                  }

                  if (!(v221 & 1 | ((objc_msgSend_isInverse(*(a1 + 200), v104, v105, v106) & 1) == 0)))
                  {
                    v126 = objc_msgSend_preMoveRegionUidTract(v217, v123, v124, v125);
                    v130 = v126;
                    if (v126)
                    {
                      v131 = objc_msgSend_rowUids(v126, v127, v128, v129);
                      if (v131[1] - *v131 == 16)
                      {
                        v135 = objc_msgSend_columnUids(v130, v132, v133, v134);
                        if (v135[1] - *v135 == 16)
                        {
                          if (WORD2(v65) == 0x7FFF)
                          {
                            v139 = 0;
                            v212 = 0;
                          }

                          else
                          {
                            v140 = objc_msgSend_srcColumnUids(v224, v136, v137, v138);
                            v143 = objc_msgSend_uidForIndex_(v140, v141, WORD2(v65), v142);
                            v212 = v144;
                            v139 = v143;
                          }

                          if (v65 == 0x7FFFFFFF)
                          {
                            v145 = 0;
                            v146 = 0;
                          }

                          else
                          {
                            v147 = objc_msgSend_srcRowUids(v224, v136, v137, v138);
                            v145 = objc_msgSend_uidForIndex_(v147, v148, v65, v149);
                            v146 = v150;
                          }

                          v154 = *(objc_msgSend_columnUids(v130, v136, v137, v138, v212) + 8);
                          if (*(v154 - 16) == v139 && *(v154 - 8) == v213)
                          {
                            v155 = *(objc_msgSend_rowUids(v130, v151, v152, v153) + 8);
                            if (*(v155 - 16) == v145 && *(v155 - 8) == v146)
                            {

                              objc_msgSend_dropTract_(v217, v156, v130, v157);
                              v215 = 0;
LABEL_100:
                              v158 = 1;
LABEL_109:
                              if (v122 == 0x7FFF && ((v220 | v218) & 1) != 0 || v65 == 0x7FFFFFFF && ((v222 | v220) & 1) != 0)
                              {
                                TSCEASTIteratorBase::createReferenceError(a1, v104, v105, v106);
                              }

                              v230.coordinate.row = v65;
                              *&v230.coordinate.column = v122;
                              v230._tableUID = v232;
                              v184 = v231.coordinate;
                              v228 = v231.coordinate;
                              v185 = sub_221089E8C(a1);
                              v226 = v231._tableUID;
                              v188 = objc_msgSend_tableOrLinkedResolverForTableUID_(v185, v186, &v226, v187);

                              if (v188)
                              {
                                v192 = objc_msgSend_tableTranslator(v188, v189, v190, v191);
                                v195 = v192;
                                if (v192)
                                {
                                  v228 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v192, v193, v184, v194);
                                }
                              }

                              v196 = sub_221089E8C(a1);
                              v199 = objc_msgSend_tableOrLinkedResolverForTableUID_(v196, v197, &v232, v198);

                              if (v199 && objc_msgSend_isCategorized(v199, v200, v201, v202))
                              {
                                v203 = objc_msgSend_tableTranslator(v199, v200, v201, v202);
                                v206 = v203;
                                if (v203)
                                {
                                  v225 = v230;
                                  objc_msgSend_chromeCellRefForBaseCellRef_(v203, v204, &v225, v205);
                                  *&v230.coordinate.row = v226;
                                  v230._tableUID._upper = v227;
                                }
                              }

                              LOBYTE(v234._row) = row & 3;
                              if (((v158 | v221) & 1) == 0)
                              {
                                v207 = objc_msgSend_dstUidForSrcUid(v224, v200, v201, v202);
                                objc_msgSend_remapUsingUidMap_(v217, v208, v207, v209);
                              }

                              if (v215)
                              {
                                objc_msgSend_appendUidTract_(v217, v200, v215, v202);
                              }

                              v226 = v231._tableUID;
                              v210 = TSCEASTIteratorBase::createReference(a1, &v230, &v234, &v226, &v228, v217);
                              (*(*a1 + 24))(a1, v4);

                              v4 = v210;
LABEL_128:

                              goto LABEL_129;
                            }
                          }
                        }
                      }
                    }
                  }

                  v230.coordinate = 0;
                  v230._tableUID._lower = 0;
                  if (WORD2(v65) == 0x7FFF)
                  {
                    v230.coordinate = 0;
                    v230._tableUID._lower = 0;
                  }

                  else
                  {
                    v159 = objc_msgSend_srcColumnUids(v224, v123, v124, v125);
                    v230.coordinate = objc_msgSend_uidForIndex_(v159, v160, WORD2(v65), v161);
                    v230._tableUID._lower = v162;
                  }

                  v226._lower = 0;
                  v226._upper = 0;
                  if (v65 == 0x7FFFFFFF)
                  {
                    v226._lower = 0;
                    v226._upper = 0;
                  }

                  else
                  {
                    v163 = objc_msgSend_srcRowUids(v224, v123, v124, v125);
                    v226._lower = objc_msgSend_uidForIndex_(v163, v164, v65, v165);
                    v226._upper = v166;
                  }

                  v225.coordinate = objc_msgSend_dstUidForSrcUid_(v224, v123, &v230, v125);
                  v225._tableUID._lower = v167;
                  v228 = 0;
                  v229 = 0;
                  v228 = objc_msgSend_dstUidForSrcUid_(v224, v167, &v226, v168);
                  v229 = v169;
                  v232._lower = objc_msgSend_dstTableUID(v224, v169, v170, v171);
                  v232._upper = v172;
                  v175 = objc_msgSend_dstColumnUids(v224, v172, v173, v174);
                  LOWORD(v122) = objc_msgSend_columnIndexForUid_(v175, v176, &v225, v177);

                  v181 = objc_msgSend_dstRowUids(v224, v178, v179, v180);
                  LODWORD(v65) = objc_msgSend_rowIndexForUid_(v181, v182, &v228, v183);

                  v158 = 0;
                  goto LABEL_109;
                }

LABEL_42:
                if (v65 != 0x7FFFFFFF)
                {
                  v75 = objc_msgSend_srcRowUids(v224, v67, v68, v69);
                  v74 = objc_msgSend_containsIndex_(v75, v76, v65, v77);

                  goto LABEL_47;
                }

                goto LABEL_46;
              }
            }

            else
            {
              if (!v222)
              {
                goto LABEL_41;
              }

              if (objc_msgSend_spanningRows(v224, v67, v68, v69))
              {
                goto LABEL_42;
              }
            }
          }

          v74 = 0;
          goto LABEL_47;
        }
      }

      else
      {
      }
    }

    v49 = 0;
    v50 = 1;
    goto LABEL_27;
  }

LABEL_129:

  return v4;
}

TSCEASTRelativeCoordRefElement *sub_2210CA600(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  v2 = a2;
  if (TSCEASTElement::refFlags(a2, a1))
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(v2, a1, v4, v5);
  }

  else
  {
    v8 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    lower = v8->var0.var0._tableUID._lower;
    upper = v8->var0.var0._tableUID._upper;
  }

  v317._lower = lower;
  v317._upper = upper;
  v11 = objc_msgSend_regionMovedInfo(*(a1 + 200), upper, v6, v7);
  v12 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v13 = v12->var0.var0._tableUID._lower;
  v14 = v12->var0.var0._tableUID._upper;
  if (v13 == objc_msgSend_srcTableUID(v11, v15, v16, v17) && v14 == v18)
  {
    v27 = 1;
  }

  else
  {
    v20 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    v21 = v20->var0.var0._tableUID._lower;
    v22 = v20->var0.var0._tableUID._upper;
    v27 = v21 == objc_msgSend_srcCondStyleOwnerUID(v11, v23, v24, v25) && v22 == v26;
  }

  v28 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v29 = v28->var0.var0._tableUID._lower;
  v30 = v28->var0.var0._tableUID._upper;
  if (v29 == objc_msgSend_originalSrcTableUID(v11, v31, v32, v33) && v30 == v34)
  {
    v44 = 1;
  }

  else
  {
    v38 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    v39 = v38->var0.var0._tableUID._lower;
    v40 = v38->var0.var0._tableUID._upper;
    v44 = v39 == objc_msgSend_originalSrcCondStyleOwnerUID(v11, v41, v42, v43) && v40 == v34;
  }

  v49 = v317._lower == objc_msgSend_srcTableUID(v11, v34, v35, v36) && v317._upper == v45;
  v54 = v317._lower == objc_msgSend_dstTableUID(v11, v45, v46, v47) && v317._upper == v50;
  if (v27 || v44 || v49 || v54)
  {
    if (v27)
    {
      v55 = objc_msgSend_srcColumnUids(v11, v50, v51, v52);
      v56 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      if (objc_msgSend_containsIndex_(v55, v57, v56->var0.var0.coordinate.column, v58))
      {
        v62 = objc_msgSend_srcRowUids(v11, v59, v60, v61);
        v63 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        v66 = objc_msgSend_containsIndex_(v62, v64, v63->var0.var0.coordinate.row, v65);
      }

      else
      {
        v66 = 0;
      }

      if (!v44)
      {
LABEL_42:
        v78 = 0;
        if (v66)
        {
LABEL_43:
          v79 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
          v80 = sub_2212C7330(v79);
          goto LABEL_47;
        }

LABEL_46:
        v80 = 0;
LABEL_47:
        v81 = TSCEASTRelativeCoordRefElement::relativeCoord(v2, a1, v51, v52);
        v294 = v80;
        v82 = v78;
        v289 = TSCEASTRelativeCoordRefElement::preserveFlags(v2, a1);
        v316._flags = v289;
        v291 = v66;
        coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        v84 = sub_221089E8C(a1);
        *&v314.coordinate.row = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
        v87 = objc_msgSend_tableOrLinkedResolverForTableUID_(v84, v85, &v314, v86);

        v297 = v87;
        if (v87)
        {
          v91 = objc_msgSend_tableTranslator(v87, v88, v89, v90);
          v94 = v91;
          if (v91)
          {
            coordinate = objc_msgSend_chromeCellCoordForBaseCellCoord_(v91, v92, coordinate, v93);
          }
        }

        v95 = coordinate;
        v302 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v95, v81, &v316, v90);
        v96 = sub_221089E8C(a1);
        v99 = objc_msgSend_tableOrLinkedResolverForTableUID_(v96, v97, &v317, v98);
        v301 = HIDWORD(v302);

        v296 = v99;
        if (v99)
        {
          v103 = objc_msgSend_tableTranslator(v99, v100, v101, v102);
          v106 = v103;
          if (v103)
          {
            v107 = objc_msgSend_baseCellCoordForChromeCellCoord_(v103, v104, v302, v105);
            v301 = HIDWORD(v107);
            v302 = v107;
          }
        }

        v298 = TSCEASTRelativeCoordRefElement::spansAllColumns(v2, a1);
        v108 = TSCEASTRelativeCoordRefElement::spansAllRows(v2, a1);
        v300 = v298 || v108;
        v299 = !v298 && !v108;
        v293 = v108;
        if (v49)
        {
          if (!v298 && !v108 || v108)
          {
            if (v301 == 0x7FFF || (objc_msgSend_srcColumnUids(v11, v109, v110, v111), v112 = objc_claimAutoreleasedReturnValue(), v115 = objc_msgSend_containsIndex_(v112, v113, v301, v114), v112, (v115 & 1) != 0))
            {
LABEL_63:
              if (((v298 | v299) & 1) == 0)
              {
                if (v293)
                {
                  v116 = objc_msgSend_spanningColumns(v11, v109, v110, v111);
                  goto LABEL_69;
                }

LABEL_68:
                v116 = 1;
LABEL_69:
                v120 = objc_msgSend_originalSrcTableUID(v11, v109, v110, v111);
                v124 = 0;
                v126 = v317._lower == v120 && v317._upper == v121;
                if ((v116 | v300 | v126 & v82 & v299))
                {
                  v127 = v294;
                }

                else
                {
                  v127 = v294;
                  if (v54)
                  {
                    v128 = objc_msgSend_dstColumnUids(v11, v121, v122, v123);
                    if (objc_msgSend_containsIndex_(v128, v129, v301, v130))
                    {
                      v134 = objc_msgSend_dstRowUids(v11, v131, v132, v133);
                      v124 = objc_msgSend_containsIndex_(v134, v135, v302, v136);
                    }

                    else
                    {
                      v124 = 0;
                    }
                  }
                }

                v314.coordinate = v2;
                v137 = sub_2210CDC18((a1 + 288), &v314);
                if (v137)
                {
                  v314.coordinate = v2;
                  sub_2210CDD04((a1 + 288), &v314);
                }

                if (!v127 && (v116 & 1) != 0)
                {
                  v116 &= v291 ^ 1;
                  v124 &= v291 ^ 1;
                }

                v314.coordinate = v2;
                if (sub_2210CDC18((a1 + 208), &v314))
                {
                  v314.coordinate = v2;
                  sub_2210CDD04((a1 + 208), &v314);
                  v116 = 0;
                  v124 = 0;
                }

                v314.coordinate = v2;
                if (sub_2210CDC18((a1 + 248), &v314))
                {
                  v314.coordinate = v2;
                  sub_2210CDD04((a1 + 248), &v314);
                  v124 = 0;
                }

                if (v300 & 1 | ((*(a1 + 100) & 1) == 0) || !v49)
                {
                  v150 = v2;
                  v141 = v296;
                  if (v127)
                  {
                    goto LABEL_102;
                  }
                }

                else
                {
                  v141 = v296;
                  if (((v116 ^ 1) & 1) == 0)
                  {
                    v142 = objc_msgSend_srcTableUID(v11, v138, v139, v140);
                    v144 = v143;
                    if (v142 != objc_msgSend_dstTableUID(v11, v143, v145, v146) || v144 != v147)
                    {
                      TSCEASTIteratorBase::createReferenceError(a1, v147, v148, v149);
                    }
                  }

                  v150 = v2;
                  if (v127)
                  {
                    goto LABEL_102;
                  }
                }

                if ((v116 & 1) == 0 && !v124)
                {
LABEL_175:

                  goto LABEL_176;
                }

LABEL_102:
                v295 = v150;
                v315 = v317;
                v151 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
                v152 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
                v314.coordinate = v151;
                v314._tableUID = v152->var0.var0._tableUID;
                v292 = TSCEASTElement::mutableUndoTractList(v295, a1);
                if (v127)
                {
                  v156 = *(a1 + 200);
                  if (v156)
                  {
                    objc_msgSend_updatedCellRefForOriginalCellRef_(v156, v153, &v314, v155);
                  }

                  else
                  {
                    memset(&v313, 0, sizeof(v313));
                  }

                  v314 = v313;
                }

                if (((v137 == 0) & v124) == 1 && (*(a1 + 98) & 1) == 0)
                {
                  if (v301 == 0x7FFF)
                  {
                    v157 = 0;
                    v158 = 0;
                  }

                  else
                  {
                    v159 = objc_msgSend_dstColumnUids(v11, v153, v154, v155);
                    v158 = objc_msgSend_uidForIndex_(v159, v160, v301, v161);
                    v157 = v162;
                  }

                  if (v302 == 0x7FFFFFFF)
                  {
                    v163 = 0;
                    v164 = 0;
                  }

                  else
                  {
                    v165 = objc_msgSend_dstRowUids(v11, v153, v154, v155);
                    v164 = objc_msgSend_uidForIndex_(v165, v166, v302, v167);
                    v163 = v168;
                  }

                  v169 = [TSCEUndoTract alloc];
                  v290 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v169, v170, v158, v157, v164, v163, 2);
                }

                else
                {
                  v290 = 0;
                }

                if (!v116)
                {
                  goto LABEL_133;
                }

                if (!(v300 & 1 | ((objc_msgSend_isInverse(*(a1 + 200), v153, v154, v155) & 1) == 0)))
                {
                  v174 = objc_msgSend_preMoveRegionUidTract(v292, v171, v172, v173);
                  v178 = v174;
                  if (v174)
                  {
                    v179 = objc_msgSend_rowUids(v174, v175, v176, v177);
                    if (v179[1] - *v179 == 16)
                    {
                      v183 = objc_msgSend_columnUids(v178, v180, v181, v182);
                      if (v183[1] - *v183 == 16)
                      {
                        if (v301 == 0x7FFF)
                        {
                          v187 = 0;
                          v188 = 0;
                        }

                        else
                        {
                          v189 = objc_msgSend_srcColumnUids(v11, v184, v185, v186);
                          v187 = objc_msgSend_uidForIndex_(v189, v190, v301, v191);
                          v188 = v192;
                        }

                        if (v302 == 0x7FFFFFFF)
                        {
                          v193 = 0;
                          v194 = 0;
                        }

                        else
                        {
                          v195 = objc_msgSend_srcRowUids(v11, v184, v185, v186);
                          v193 = objc_msgSend_uidForIndex_(v195, v196, v302, v197);
                          v194 = v198;
                        }

                        v202 = *(objc_msgSend_columnUids(v178, v184, v185, v186) + 8);
                        if (*(v202 - 16) == v187 && *(v202 - 8) == v188)
                        {
                          v203 = *(objc_msgSend_rowUids(v178, v199, v200, v201) + 8);
                          if (*(v203 - 16) == v193 && *(v203 - 8) == v194)
                          {

                            objc_msgSend_dropTract_(v292, v204, v178, v205);
                            v290 = 0;
LABEL_133:
                            v206 = 1;
LABEL_156:
                            if (v301 == 0x7FFF && ((v299 | v293) & 1) != 0 || v302 == 0x7FFFFFFF && ((v298 | v299) & 1) != 0)
                            {
                              TSCEASTIteratorBase::createReferenceError(a1, v153, v154, v155);
                            }

                            v313.coordinate.row = v302;
                            v313.coordinate.column = v301;
                            v313._tableUID = v315;
                            v316._flags = v289 & 3;
                            if (((v206 | v300) & 1) == 0)
                            {
                              v259 = objc_msgSend_dstUidForSrcUid(v11, v153, v154, v155);
                              objc_msgSend_remapUsingUidMap_(v292, v260, v259, v261);
                            }

                            if (v290)
                            {
                              objc_msgSend_appendUidTract_(v292, v153, v290, v155);
                            }

                            v262 = v314.coordinate;
                            v311 = v314.coordinate;
                            v263 = sub_221089E8C(a1);
                            tableUID = v314._tableUID;
                            v266 = objc_msgSend_tableOrLinkedResolverForTableUID_(v263, v264, &tableUID, v265);

                            if (v266)
                            {
                              v270 = objc_msgSend_tableTranslator(v266, v267, v268, v269);
                              v273 = v270;
                              if (v270)
                              {
                                v311 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v270, v271, v262, v272);
                              }
                            }

                            v274 = sub_221089E8C(a1);
                            v277 = objc_msgSend_tableOrLinkedResolverForTableUID_(v274, v275, &v315, v276);

                            if (v277 && objc_msgSend_isCategorized(v277, v278, v279, v280))
                            {
                              v284 = objc_msgSend_tableTranslator(v277, v281, v282, v283);
                              v287 = v284;
                              if (v284)
                              {
                                v303 = v313;
                                objc_msgSend_chromeCellRefForBaseCellRef_(v284, v285, &v303, v286);
                                *&v313.coordinate.row = tableUID;
                                v313._tableUID._upper = v305;
                              }
                            }

                            tableUID = v314._tableUID;
                            v2 = TSCEASTIteratorBase::createReference(a1, &v313, &v316, &tableUID, &v311, v292);
                            (*(*a1 + 24))(a1, v295);

                            v297 = v266;
                            goto LABEL_175;
                          }
                        }
                      }
                    }
                  }
                }

                v313.coordinate = 0;
                v313._tableUID._lower = 0;
                if (v301 == 0x7FFF)
                {
                  v313.coordinate = 0;
                  v313._tableUID._lower = 0;
                }

                else
                {
                  v207 = objc_msgSend_srcColumnUids(v11, v171, v172, v173);
                  v313.coordinate = objc_msgSend_uidForIndex_(v207, v208, v301, v209);
                  v313._tableUID._lower = v210;
                }

                tableUID._lower = 0;
                tableUID._upper = 0;
                if (v302 == 0x7FFFFFFF)
                {
                  tableUID._lower = 0;
                  tableUID._upper = 0;
                }

                else
                {
                  v211 = objc_msgSend_srcRowUids(v11, v171, v172, v173);
                  tableUID._lower = objc_msgSend_uidForIndex_(v211, v212, v302, v213);
                  tableUID._upper = v214;
                }

                v303.coordinate = objc_msgSend_dstUidForSrcUid_(v11, v171, &v313, v173);
                v303._tableUID._lower = v215;
                v311 = 0;
                v312 = 0;
                v311 = objc_msgSend_dstUidForSrcUid_(v11, v215, &tableUID, v216);
                v312 = v217;
                v315._lower = objc_msgSend_dstTableUID(v11, v217, v218, v219);
                v315._upper = v220;
                v223 = objc_msgSend_dstColumnUids(v11, v220, v221, v222);
                LOWORD(v301) = objc_msgSend_columnIndexForUid_(v223, v224, &v303, v225);

                v229 = objc_msgSend_dstRowUids(v11, v226, v227, v228);
                v232 = objc_msgSend_rowIndexForUid_(v229, v230, &v311, v231);

                LODWORD(v302) = v232;
                v234 = v232 != 0x7FFFFFFF || v301 == 0x7FFF;
                if (((v234 | v300) & 1) == 0)
                {
                  v235 = sub_221089E8C(a1);
                  v238 = objc_msgSend_tableResolverForTableUID_(v235, v236, &v315, v237);

                  if (v297 && v238)
                  {
                    v242 = objc_msgSend_coordMapper(v238, v239, v240, v241);
                    if ((objc_msgSend_isIdentityMapping(v242, v243, v244, v245) & 1) == 0)
                    {
                      v309 = 0;
                      v310 = 0;
                      v246 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
                      v309 = objc_msgSend_rowUIDForRowIndex_(v297, v247, v246->var0.var1.coordinate.row, v248);
                      v310 = v249;
                      v308[0] = objc_msgSend_convertToRelativeAncestorUid_rowUid_(v238, v249, &v311, &v309);
                      v308[1] = v250;
                      v252 = objc_msgSend_groupLevelForGroupUid_(v238, v250, &v311, v251);
                      if (v252 != 255)
                      {
                        v307 = v316._flags | 1;
                        v253 = [TSCECategoryRef alloc];
                        v306[0] = objc_msgSend_groupByUUID(v238, v254, v255, v256);
                        v306[1] = v257;
                        v258 = objc_msgSend_initWithGroupByUID_relGroupUID_absGroupUid_columnUid_aggType_groupLevel_aggrIndexLevel_preserveFlags_(v253, v257, v306, v308, &v311, &v303, 11, v252, -1, &v307);
                        TSCEASTIteratorBase::createCategoryRef(a1, v258);
                      }
                    }
                  }
                }

                v206 = 0;
                goto LABEL_156;
              }

LABEL_64:
              if (v302 != 0x7FFFFFFF)
              {
                v117 = objc_msgSend_srcRowUids(v11, v109, v110, v111);
                v116 = objc_msgSend_containsIndex_(v117, v118, v302, v119);

                goto LABEL_69;
              }

              goto LABEL_68;
            }
          }

          else
          {
            if (!v298)
            {
              goto LABEL_63;
            }

            if (objc_msgSend_spanningRows(v11, v109, v110, v111))
            {
              goto LABEL_64;
            }
          }
        }

        v116 = 0;
        goto LABEL_69;
      }
    }

    else
    {
      v66 = 0;
      if (!v44)
      {
        goto LABEL_42;
      }
    }

    v67 = objc_msgSend_originalSrcColumnUids(v11, v50, v51, v52);
    v68 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    if (objc_msgSend_containsIndex_(v67, v69, v68->var0.var0.coordinate.column, v70))
    {
      v74 = objc_msgSend_originalSrcRowUids(v11, v71, v72, v73);
      v75 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      v78 = objc_msgSend_containsIndex_(v74, v76, v75->var0.var0.coordinate.row, v77);
    }

    else
    {
      v78 = 0;
    }

    if (v66)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

LABEL_176:

  return v2;
}

void sub_2210CB5F4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v224 = a3;
  *a6 = *a2;
  *(a6 + 16) = *(a2 + 16);
  v233 = *(a2 + 8);
  v14 = objc_msgSend_regionMovedInfo(*(a1 + 200), v11, v12, v13);
  v15 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  lower = v15->var0.var0._tableUID._lower;
  upper = v15->var0.var0._tableUID._upper;
  if (lower == objc_msgSend_srcTableUID(v14, v18, v19, v20) && upper == v21)
  {
    v30 = 1;
  }

  else
  {
    v23 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    v24 = v23->var0.var0._tableUID._lower;
    v25 = v23->var0.var0._tableUID._upper;
    v30 = v24 == objc_msgSend_srcCondStyleOwnerUID(v14, v26, v27, v28) && v25 == v29;
  }

  v31 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v32 = v31->var0.var0._tableUID._lower;
  v33 = v31->var0.var0._tableUID._upper;
  if (v32 == objc_msgSend_originalSrcTableUID(v14, v34, v35, v36) && v33 == v37)
  {
    v47 = 1;
  }

  else
  {
    v41 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    v42 = v41->var0.var0._tableUID._lower;
    v43 = v41->var0.var0._tableUID._upper;
    v47 = v42 == objc_msgSend_originalSrcCondStyleOwnerUID(v14, v44, v45, v46) && v43 == v37;
  }

  v220 = a4;
  v222 = a5;
  v52 = v233 == objc_msgSend_srcTableUID(v14, v37, v38, v39) && *(&v233 + 1) == v48;
  v57 = v233 == objc_msgSend_dstTableUID(v14, v48, v49, v50) && *(&v233 + 1) == v53;
  if (v30 || v47 || v52 || v57)
  {
    if (v30)
    {
      v58 = objc_msgSend_srcColumnUids(v14, v53, v54, v55);
      v59 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      if (objc_msgSend_containsIndex_(v58, v60, v59->var0.var0.coordinate.column, v61))
      {
        v65 = objc_msgSend_srcRowUids(v14, v62, v63, v64);
        v66 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        v217 = objc_msgSend_containsIndex_(v65, v67, v66->var0.var0.coordinate.row, v68);
      }

      else
      {
        v217 = 0;
      }

      if (!v47)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v217 = 0;
      if (!v47)
      {
LABEL_39:
        v80 = 0;
        goto LABEL_42;
      }
    }

    v69 = objc_msgSend_originalSrcColumnUids(v14, v53, v54, v55);
    v70 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    if (objc_msgSend_containsIndex_(v69, v71, v70->var0.var0.coordinate.column, v72))
    {
      v76 = objc_msgSend_originalSrcRowUids(v14, v73, v74, v75);
      v77 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      v80 = objc_msgSend_containsIndex_(v76, v78, v77->var0.var0.coordinate.row, v79);
    }

    else
    {
      v80 = 0;
    }

LABEL_42:
    if (v217)
    {
      v81 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      v82 = sub_2212C7330(v81);
    }

    else
    {
      v82 = 0;
    }

    v83 = *a2;
    v84 = sub_221089E8C(a1);
    v87 = objc_msgSend_tableOrLinkedResolverForTableUID_(v84, v85, &v233, v86);
    v225 = HIDWORD(v83);

    v218 = v87;
    if (v87)
    {
      v91 = objc_msgSend_tableTranslator(v87, v88, v89, v90);
      v94 = v91;
      if (v91)
      {
        v95 = objc_msgSend_baseCellCoordForChromeCellCoord_(v91, v92, v83, v93);
        *(a6 + 8) = v233;
        *a6 = v95;
        v83 = v95;
        v225 = HIDWORD(v95);
      }
    }

    v97 = v225 != 0x7FFF && v83 != 0x7FFFFFFF;
    v219 = v97;
    if (!v52)
    {
      goto LABEL_66;
    }

    if (v225 != 0x7FFF || v83 == 0x7FFFFFFF)
    {
      if (v225 == 0x7FFF)
      {
        if (v83 == 0x7FFFFFFF)
        {
          v98 = 1;
          goto LABEL_67;
        }
      }

      else
      {
        v99 = objc_msgSend_srcColumnUids(v14, v88, v89, v90);
        v102 = objc_msgSend_containsIndex_(v99, v100, v225, v101);

        if ((v102 & 1) == 0)
        {
LABEL_66:
          v98 = 0;
          goto LABEL_67;
        }

        if (v83 == 0x7FFFFFFF)
        {
          v98 = objc_msgSend_spanningColumns(v14, v88, v89, v90);
LABEL_67:
          v106 = objc_msgSend_originalSrcTableUID(v14, v88, v89, v90);
          if (v98)
          {
            v110 = 0;
            v111 = v82 | v217 ^ 1;
LABEL_69:
            v112 = v219;
            goto LABEL_84;
          }

          v111 = 0;
          v114 = v233 == v106 && *(&v233 + 1) == v107;
          if (v114 & v80 & v219)
          {
            v110 = 0;
            v112 = v219;
          }

          else
          {
            if (!v219)
            {
              v110 = 0;
              goto LABEL_69;
            }

            v115 = !v57;
            v110 = 0;
            v112 = v219;
            if (!v115)
            {
              v116 = objc_msgSend_dstColumnUids(v14, v107, v108, v109);
              if (objc_msgSend_containsIndex_(v116, v117, v225, v118))
              {
                v122 = objc_msgSend_dstRowUids(v14, v119, v120, v121);
                v110 = objc_msgSend_containsIndex_(v122, v123, v83, v124);
              }

              else
              {
                v110 = 0;
              }

              v111 = 0;
            }
          }

LABEL_84:
          v125 = (v220 ^ 1) & v111;
          v126 = ((v220 | v222) ^ 1) & v110;
          if (*(a1 + 100) & v112 & v52)
          {
            v127 = v218;
            if (v125)
            {
              v128 = objc_msgSend_srcTableUID(v14, v107, v108, v109);
              v130 = v129;
              if (v128 == objc_msgSend_dstTableUID(v14, v129, v131, v132) && v130 == v133)
              {
                v125 = 1;
                goto LABEL_95;
              }

              v82 = 0;
              v125 = 0;
              v126 = 0;
              *(a6 + 8) = 0;
              *(a6 + 16) = 0;
              *a6 = 0x7FFF7FFFFFFFLL;
LABEL_93:
              if ((v125 & 1) == 0 && !v126)
              {
                goto LABEL_137;
              }

LABEL_95:
              v135 = *(&v233 + 1);
              v134 = v233;
              coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
              v137 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
              *v232 = coordinate;
              *&v232[8] = v137->var0.var0._tableUID;
              if (v82)
              {
                v141 = *(a1 + 200);
                if (v141)
                {
                  objc_msgSend_updatedCellRefForOriginalCellRef_(v141, v138, v232, v140);
                }

                else
                {
                  v230 = 0uLL;
                  v231 = 0;
                }

                *v232 = v230;
                *&v232[16] = v231;
              }

              if (!v125)
              {
                v182 = v225;
                v183 = v225;
                v184 = v83;
                goto LABEL_119;
              }

              if ((objc_msgSend_isInverse(*(a1 + 200), v138, v139, v140) & v219) == 1)
              {
                v145 = objc_msgSend_preMoveRegionUidTract(v224, v142, v143, v144);
                v149 = v145;
                if (v145)
                {
                  v150 = objc_msgSend_rowUids(v145, v146, v147, v148);
                  if (v150[1] - *v150 == 16)
                  {
                    v154 = objc_msgSend_columnUids(v149, v151, v152, v153);
                    if (v154[1] - *v154 == 16)
                    {
                      v158 = objc_msgSend_srcColumnUids(v14, v155, v156, v157);
                      v161 = objc_msgSend_uidForIndex_(v158, v159, v225, v160);
                      v163 = v162;

                      v167 = objc_msgSend_srcRowUids(v14, v164, v165, v166);
                      v170 = objc_msgSend_uidForIndex_(v167, v168, v83, v169);
                      v221 = v171;
                      v223 = v170;

                      v178 = *(objc_msgSend_columnUids(v149, v172, v173, v174) + 8);
                      if (*(v178 - 16) == v161 && *(v178 - 8) == v163)
                      {
                        v181 = *(objc_msgSend_rowUids(v149, v175, v176, v177) + 8);
                        if (*(v181 - 16) == v223 && *(v181 - 8) == v221)
                        {
                          objc_msgSend_dropTract_(v224, v179, v149, v180);

                          *a6 = v83 | (v225 << 32);
                          *(a6 + 8) = v134;
                          *(a6 + 16) = v135;
LABEL_136:
                          v127 = v218;
LABEL_137:

                          goto LABEL_138;
                        }
                      }
                    }
                  }
                }

                v230 = 0uLL;
              }

              else
              {
                v230 = 0uLL;
                if (v225 == 0x7FFF)
                {
                  v230 = 0uLL;
LABEL_115:
                  if (v83 == 0x7FFFFFFF)
                  {
                    v228 = 0;
                    v229 = 0;
                  }

                  else
                  {
                    v189 = objc_msgSend_srcRowUids(v14, v142, v143, v144);
                    v228 = objc_msgSend_uidForIndex_(v189, v190, v83, v191);
                    v229 = v192;
                  }

                  v227[0] = objc_msgSend_dstUidForSrcUid_(v14, v142, &v230, v144);
                  v227[1] = v193;
                  v226[0] = objc_msgSend_dstUidForSrcUid_(v14, v193, &v228, v194);
                  v226[1] = v195;
                  v134 = objc_msgSend_dstTableUID(v14, v195, v196, v197);
                  v135 = v198;
                  v201 = objc_msgSend_dstColumnUids(v14, v198, v199, v200);
                  v183 = objc_msgSend_columnIndexForUid_(v201, v202, v227, v203);

                  v207 = objc_msgSend_dstRowUids(v14, v204, v205, v206);
                  v184 = objc_msgSend_rowIndexForUid_(v207, v208, v226, v209);

                  v182 = v225;
LABEL_119:
                  v211 = v182 != 0x7FFF || v83 == 0x7FFFFFFF;
                  if (v183 == 0x7FFF && v211 || (v225 != 0x7FFF ? (v212 = v83 == 0x7FFFFFFF) : (v212 = 0), v212 ? (v213 = 0) : (v213 = 1), v184 == 0x7FFFFFFF && v213))
                  {
                    *(a6 + 8) = 0;
                    *(a6 + 16) = 0;
                    *a6 = 0x7FFF7FFFFFFFLL;
                  }

                  else
                  {
                    *a6 = v184 | (v183 << 32);
                    *(a6 + 8) = v134;
                    *(a6 + 16) = v135;
                    if ((v125 & v219) == 1)
                    {
                      v214 = objc_msgSend_dstUidForSrcUid(v14, v138, v139, v140);
                      objc_msgSend_remapUsingUidMap_(v224, v215, v214, v216);
                    }
                  }

                  goto LABEL_136;
                }
              }

              v185 = objc_msgSend_srcColumnUids(v14, v142, v143, v144);
              *&v230 = objc_msgSend_uidForIndex_(v185, v186, v225, v187);
              *(&v230 + 1) = v188;

              goto LABEL_115;
            }
          }

          else
          {
            v127 = v218;
          }

          if (v82)
          {
            goto LABEL_95;
          }

          goto LABEL_93;
        }
      }
    }

    else if ((objc_msgSend_spanningRows(v14, v88, v89, v90) & 1) == 0)
    {
      goto LABEL_66;
    }

    v103 = objc_msgSend_srcRowUids(v14, v88, v89, v90);
    v98 = objc_msgSend_containsIndex_(v103, v104, v83, v105);

    goto LABEL_67;
  }

LABEL_138:
}

TSCEASTColonElement *sub_2210CBF4C(uint64_t a1, TSCEASTColonElement *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_regionMovedInfo(*(a1 + 200), a2, a3, a4);
  v132._flags = 0;
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
  TSCEASTColonElement::rangeReference(&v129, a2, a1, &v132, &coordinate);
  v128 = v129;
  isValid = TSCERangeCoordinate::isValid(&v128);
  v12 = objc_msgSend_srcTableUID(v7, v9, v10, v11);
  v17 = v130 == v12 && v131 == v13;
  v18 = objc_msgSend_dstTableUID(v7, v13, v14, v15);
  v21 = v130 == v18 && v131 == v19;
  if (!isValid || !v17 && !v21)
  {
    goto LABEL_81;
  }

  v22 = TSCEASTElementWithChildren::child(a2, 0);
  coordinate = (*(*v22 + 40))(v22, a1);
  sub_2210CDD80((a1 + 288), &coordinate, &coordinate);
  v23 = TSCEASTElementWithChildren::child(a2, 1u);
  coordinate = (*(*v23 + 40))(v23, a1);
  sub_2210CDD80((a1 + 288), &coordinate, &coordinate);
  topLeft = v128._topLeft;
  bottomRight = v128._bottomRight;
  if (!v17)
  {
    goto LABEL_49;
  }

  v28 = (*&v128._topLeft & 0xFFFF00000000) != 0x7FFF00000000 || v128._topLeft.row == 0x7FFFFFFFLL;
  v29 = v28;
  if (!v28)
  {
LABEL_27:
    v33 = objc_msgSend_srcRowUids(v7, v24, v25, v26);
    v32 = objc_msgSend_containsIndex_(v33, v34, topLeft, v35);

    if (!v29)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v4 = objc_msgSend_srcColumnUids(v7, v24, v25, v26);
  if (objc_msgSend_containsIndex_(v4, v30, WORD2(topLeft), v31))
  {
    if (topLeft != 0x7FFFFFFFLL || (topLeft & 0xFFFF00000000) == 0x7FFF00000000)
    {
      goto LABEL_27;
    }

    v32 = 1;
  }

  else
  {
    v32 = 0;
  }

LABEL_30:

LABEL_31:
  v39 = (bottomRight & 0xFFFF00000000) != 0x7FFF00000000 || bottomRight == 0x7FFFFFFFLL;
  v40 = v39;
  if (v39)
  {
    v4 = objc_msgSend_srcColumnUids(v7, v36, v37, v38);
    if (!objc_msgSend_containsIndex_(v4, v41, WORD2(bottomRight), v42))
    {
      v43 = 0;
      goto LABEL_46;
    }

    if (bottomRight == 0x7FFFFFFFLL && (bottomRight & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v43 = 1;
LABEL_46:

      goto LABEL_47;
    }
  }

  v44 = objc_msgSend_srcRowUids(v7, v36, v37, v38);
  v43 = objc_msgSend_containsIndex_(v44, v45, bottomRight, v46);

  if (v40)
  {
    goto LABEL_46;
  }

LABEL_47:
  if (v32 != v43)
  {
    v47 = TSCEASTElementWithChildren::child(a2, 0);
    coordinate = (*(*v47 + 40))(v47, a1);
    sub_2210CDD80((a1 + 208), &coordinate, &coordinate);
    v48 = TSCEASTElementWithChildren::child(a2, 1u);
    coordinate = (*(*v48 + 40))(v48, a1);
    sub_2210CDD80((a1 + 208), &coordinate, &coordinate);
LABEL_49:
    if (!v21)
    {
      goto LABEL_81;
    }

    goto LABEL_50;
  }

  if (!v32 || !objc_msgSend_isInverse(*(a1 + 200), v24, v25, v26))
  {
    if (!v21)
    {
      goto LABEL_81;
    }

    goto LABEL_50;
  }

  v60 = TSCEASTElement::mutableUndoTractList(a2, a1);
  v67 = objc_msgSend_preMoveRegionUidTract(v60, v61, v62, v63);
  if (v67)
  {
    __p[0] = 0;
    *&v123 = 0;
    coordinate = objc_msgSend_srcTableUID(v7, v64, v65, v66);
    v126 = v68;
    v71 = objc_msgSend_columnUids(v67, v68, v69, v70);
    v75 = objc_msgSend_rowUids(v67, v72, v73, v74);
    v76 = TSCEASTRelativeCoordRefElement::rangeCoordinateUsingUuids(a1, &coordinate, v71, v75, __p, &v123);
    if (v128._topLeft.row == v76 && ((*&v128._topLeft ^ v76) & 0xFFFF00000000) == 0 && v128._bottomRight.row == v77 && ((*&v128._bottomRight ^ v77) & 0xFFFF00000000) == 0)
    {
      v78 = TSCEASTElementWithChildren::child(a2, 0);
      coordinate = (*(*v78 + 40))(v78, a1);
      sub_2210CDD80((a1 + 208), &coordinate, &coordinate);
      v79 = TSCEASTElementWithChildren::child(a2, 1u);
      coordinate = (*(*v79 + 40))(v79, a1);
      sub_2210CDD80((a1 + 208), &coordinate, &coordinate);
      objc_msgSend_dropTract_(v60, v80, v67, v81);
      v82 = TSCEASTElementWithChildren::child(a2, 0);
      v83 = TSCEASTElementWithChildren::child(a2, 1u);
      TSCEASTRewriter::createColonWithUidTractList(a1, v60, v82, v83);
    }
  }

  if (v21)
  {
LABEL_50:
    v49 = objc_msgSend_dstColumnUids(v7, v24, v25, v26);
    v50 = WORD2(topLeft);
    if (objc_msgSend_containsIndex_(v49, v51, WORD2(topLeft), v52))
    {
      v56 = objc_msgSend_dstRowUids(v7, v53, v54, v55);
      v59 = objc_msgSend_containsIndex_(v56, v57, topLeft, v58);
    }

    else
    {
      v59 = 0;
    }

    v87 = objc_msgSend_dstColumnUids(v7, v84, v85, v86);
    if (objc_msgSend_containsIndex_(v87, v88, WORD2(bottomRight), v89))
    {
      v93 = objc_msgSend_dstRowUids(v7, v90, v91, v92);
      v96 = objc_msgSend_containsIndex_(v93, v94, bottomRight, v95);

      if ((v59 & v96) == 1)
      {
        v97 = TSCEASTElementWithChildren::child(a2, 0);
        coordinate = (*(*v97 + 40))(v97, a1);
        sub_2210CDD80((a1 + 248), &coordinate, &coordinate);
        v98 = TSCEASTElementWithChildren::child(a2, 1u);
        coordinate = (*(*v98 + 40))(v98, a1);
        sub_2210CDD80((a1 + 248), &coordinate, &coordinate);
        if ((*(a1 + 98) & 1) == 0)
        {
          coordinate = 0;
          v126 = 0;
          v127 = 0;
          memset(__p, 0, sizeof(__p));
          if (WORD2(topLeft) <= WORD2(bottomRight))
          {
            v102 = HIDWORD(topLeft);
            do
            {
              v123 = 0uLL;
              if (v102 == 0x7FFF)
              {
                v123 = 0uLL;
              }

              else
              {
                v103 = objc_msgSend_dstColumnUids(v7, v99, v100, v101);
                *&v123 = objc_msgSend_uidForIndex_(v103, v104, v50, v105);
                *(&v123 + 1) = v106;
              }

              sub_221083454(&coordinate, &v123);
              LOWORD(v102) = v102 + 1;
              v50 = v102;
            }

            while (v102 <= WORD2(bottomRight));
          }

          for (; topLeft <= bottomRight; topLeft = (topLeft + 1))
          {
            v123 = 0uLL;
            if (topLeft == 0x7FFFFFFF)
            {
              v123 = 0uLL;
            }

            else
            {
              v107 = objc_msgSend_dstRowUids(v7, v99, v100, v101);
              *&v123 = objc_msgSend_uidForIndex_(v107, v108, topLeft, v109);
              *(&v123 + 1) = v110;
            }

            sub_221083454(__p, &v123);
          }

          v111 = [TSCEUndoTract alloc];
          v113 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v111, v112, &coordinate, __p, 2);
          objc_msgSend_setIsRangeRef_(v113, v114, 1, v115);
          v116 = TSCEASTElement::mutableUndoTractList(a2, a1);
          objc_msgSend_appendUidTract_(v116, v117, v113, v118);
          v119 = TSCEASTElementWithChildren::child(a2, 0);
          v120 = TSCEASTElementWithChildren::child(a2, 1u);
          TSCEASTRewriter::createColonWithUidTractList(a1, v116, v119, v120);
        }
      }
    }

    else
    {
    }
  }

LABEL_81:

  return a2;
}

TSCEASTColonTractElement *sub_2210CC878(uint64_t a1, TSCEASTColonTractElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_regionMovedInfo(*(a1 + 200), a2, a3, a4);
  v254 = v6;
  v9 = TSCEASTColonTractElement::relativeTractRef(a2, a1, v7, v8);
  v253 = TSCEASTElement::mutableUndoTractList(a2, a1);
  tableUID._lower = objc_msgSend_tableUID(v9, v10, v11, v12);
  tableUID._upper = v13;
  if (!(tableUID._lower | v13))
  {
    tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  }

  v14 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  lower = v14->var0.var0._tableUID._lower;
  upper = v14->var0.var0._tableUID._upper;
  v21 = lower == objc_msgSend_srcTableUID(v6, v17, v18, v19) && upper == v20;
  v250 = a2;
  if (v21)
  {
    v29 = 1;
  }

  else
  {
    v22 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    v23 = v22->var0.var0._tableUID._lower;
    v24 = v22->var0.var0._tableUID._upper;
    v29 = v23 == objc_msgSend_srcCondStyleOwnerUID(v6, v25, v26, v27) && v24 == v28;
  }

  v30 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v32 = v30->var0.var0._tableUID._lower;
  v31 = v30->var0.var0._tableUID._upper;
  if (v32 == objc_msgSend_originalSrcTableUID(v6, v33, v34, v35) && v31 == v36)
  {
    v39 = 1;
  }

  else
  {
    v40 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    v41 = v40->var0.var0._tableUID._lower;
    v42 = v40->var0.var0._tableUID._upper;
    v39 = v41 == objc_msgSend_originalSrcCondStyleOwnerUID(v6, v43, v44, v45) && v42 == v36;
  }

  v50 = tableUID._lower == objc_msgSend_srcTableUID(v6, v36, v37, v38) && tableUID._upper == v46;
  v53 = tableUID._lower == objc_msgSend_dstTableUID(v6, v46, v47, v48) && tableUID._upper == v51;
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
  v266 = coordinate;
  v55 = sub_221089E8C(a1);
  *v265 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  v58 = objc_msgSend_tableOrLinkedResolverForTableUID_(v55, v56, v265, v57);

  v251 = v58;
  if (v58)
  {
    v62 = objc_msgSend_tableTranslator(v58, v59, v60, v61);
    v65 = v62;
    if (v62)
    {
      v266 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v62, v63, coordinate, v64);
    }
  }

  v66 = sub_221089E8C(a1);
  v252 = objc_msgSend_tableOrLinkedResolverForTableUID_(v66, v67, &tableUID, v68);

  if (!v50 && !v53)
  {
    if (((v29 | v39) & 1) == 0)
    {
      v97 = 0;
LABEL_149:
      v228 = v251;
      v229 = v252;
      v230 = v250;
      goto LABEL_150;
    }

    v249 = v9;
LABEL_51:
    v53 = 0;
    v95 = 0;
    v96 = 0;
LABEL_119:
    v124 = v249;
    goto LABEL_120;
  }

  v249 = v9;
  v245 = objc_msgSend_absoluteCellTractRefForHostCell_(v9, v69, &v266, v70);
  v74 = objc_msgSend_topLeft(v245, v71, v72, v73);
  v81 = objc_msgSend_bottomRight(v245, v75, v76, v77);
  v82 = HIDWORD(v74);
  v247 = HIDWORD(v81);
  if (v252)
  {
    v83 = objc_msgSend_tableTranslator(v252, v78, v79, v80);
    v86 = v83;
    v246 = v81;
    v87 = v74;
    if (v83)
    {
      v87 = objc_msgSend_baseCellCoordForChromeCellCoord_(v83, v84, v74, v85);
      v82 = HIDWORD(v87);
      v246 = objc_msgSend_baseCellCoordForChromeCellCoord_(v86, v88, v81, v89);
      v247 = HIDWORD(v246);
    }

    if (v50)
    {
      goto LABEL_38;
    }

LABEL_54:
    if (v53)
    {
      v95 = 0;
      goto LABEL_92;
    }

    if (((v29 | v39) & 1) == 0)
    {
      v97 = 0;
      v9 = v249;
      goto LABEL_149;
    }

    goto LABEL_51;
  }

  v246 = v81;
  v87 = v74;
  if (!v50)
  {
    goto LABEL_54;
  }

LABEL_38:
  v90 = v87 != 0x7FFFFFFF && v82 == 0x7FFF;
  v91 = !v90;
  if (v90)
  {
    goto LABEL_56;
  }

  v39 = objc_msgSend_srcColumnUids(v254, v78, v79, v80);
  if (!objc_msgSend_containsIndex_(v39, v92, v82, v93))
  {
    v94 = 0;
    goto LABEL_61;
  }

  if (v87 != 0x7FFFFFFF || v82 == 0x7FFF)
  {
LABEL_56:
    v98 = objc_msgSend_srcRowUids(v254, v78, v79, v80);
    v94 = objc_msgSend_containsIndex_(v98, v99, v87, v100);

    if (!v91)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v94 = 1;
LABEL_61:

LABEL_62:
  v104 = v246 != 0x7FFFFFFF && v247 == 0x7FFF;
  v105 = !v104;
  if (!v104)
  {
    v244 = objc_msgSend_srcColumnUids(v254, v101, v102, v103);
    if (!objc_msgSend_containsIndex_(v244, v106, v247, v107))
    {
      v108 = 0;
      goto LABEL_76;
    }

    if (v246 == 0x7FFFFFFF && v247 != 0x7FFF)
    {
      v108 = 1;
LABEL_76:

      goto LABEL_77;
    }
  }

  v109 = objc_msgSend_srcRowUids(v254, v101, v102, v103);
  v108 = objc_msgSend_containsIndex_(v109, v110, v246, v111);

  if (v105)
  {
    goto LABEL_76;
  }

LABEL_77:
  if ((v94 & v108 & 1) == 0)
  {
    v95 = v94 ^ v108;
    if (v53)
    {
      goto LABEL_92;
    }

LABEL_88:
    v96 = 0;
    v124 = 0;
    goto LABEL_118;
  }

  if (!objc_msgSend_isInverse(*(a1 + 200), v78, v79, v80))
  {
    v95 = 0;
    if (v53)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v112 = objc_msgSend_preMoveRegionUidTract(v253, v78, v79, v80);
  if (v112)
  {
    v263 = 0;
    *&v261 = 0;
    *v265 = objc_msgSend_srcTableUID(v254, v78, v79, v80);
    *&v265[8] = v113;
    v116 = objc_msgSend_columnUids(v112, v113, v114, v115);
    v120 = objc_msgSend_rowUids(v112, v117, v118, v119);
    v121 = TSCEASTRelativeCoordRefElement::rangeCoordinateUsingUuids(a1, v265, v116, v120, &v263, &v261);
    if (v74 == v121 && ((v121 ^ v74) & 0xFFFF00000000) == 0 && ((v122 ^ v81) & 0xFFFF00000000) == 0 && v81 == v122)
    {
      objc_msgSend_dropTract_(v253, v122, v112, v123);
      v124 = v249;

      v53 = 0;
      v96 = 1;
      v95 = 1;
      goto LABEL_118;
    }
  }

  v96 = 0;
  if (!v53)
  {
    v124 = 0;
    v95 = 0;
    v53 = 0;
    goto LABEL_118;
  }

  v95 = 0;
LABEL_92:
  v125 = objc_msgSend_dstColumnUids(v254, v78, v79, v80);
  if (objc_msgSend_containsIndex_(v125, v126, v82, v127))
  {
    v131 = objc_msgSend_dstRowUids(v254, v128, v129, v130);
    v134 = objc_msgSend_containsIndex_(v131, v132, v87, v133);
  }

  else
  {
    v134 = 0;
  }

  v138 = objc_msgSend_dstColumnUids(v254, v135, v136, v137);
  if ((objc_msgSend_containsIndex_(v138, v139, v247, v140) & 1) == 0)
  {

    goto LABEL_100;
  }

  v144 = objc_msgSend_dstRowUids(v254, v141, v142, v143);
  v147 = objc_msgSend_containsIndex_(v144, v145, v246, v146);

  if ((v134 & v147) != 1)
  {
LABEL_100:
    v96 = 0;
    v124 = 0;
    v53 = 0;
    goto LABEL_118;
  }

  if (*(a1 + 98))
  {
    v96 = 0;
    v124 = 0;
  }

  else
  {
    memset(v265, 0, sizeof(v265));
    v263 = 0;
    v264 = 0;
    if (v82 <= v247)
    {
      do
      {
        v151 = v82;
        v261 = 0uLL;
        if (v82 == 0x7FFF)
        {
          v261 = 0uLL;
        }

        else
        {
          v152 = objc_msgSend_dstColumnUids(v254, v148, v149, v150);
          *&v261 = objc_msgSend_uidForIndex_(v152, v153, v82, v154);
          *(&v261 + 1) = v155;
        }

        sub_221083454(v265, &v261);
        LOWORD(v82) = v82 + 1;
      }

      while ((v151 + 1) <= v247);
    }

    for (; v87 <= v246; v87 = (v87 + 1))
    {
      v261 = 0uLL;
      if (v87 == 0x7FFFFFFF)
      {
        v261 = 0uLL;
      }

      else
      {
        v156 = objc_msgSend_dstRowUids(v254, v148, v149, v150);
        *&v261 = objc_msgSend_uidForIndex_(v156, v157, v87, v158);
        *(&v261 + 1) = v159;
      }

      sub_221083454(&v263, &v261);
    }

    v160 = [TSCEUndoTract alloc];
    v162 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v160, v161, v265, &v263, 2);
    objc_msgSend_setIsRangeRef_(v162, v163, 1, v164);
    objc_msgSend_appendUidTract_(v253, v165, v162, v166);
    v124 = v249;

    if (v263)
    {
      v264._lower = v263;
      operator delete(v263);
    }

    if (*v265)
    {
      *&v265[8] = *v265;
      operator delete(*v265);
    }

    v96 = 1;
  }

  v53 = 1;
LABEL_118:

  if (!v124)
  {
    goto LABEL_119;
  }

LABEL_120:
  v169 = objc_msgSend_absoluteCellTractRefForHostCell_(v124, v167, &v266, v168);
  v248 = v96;
  v173 = objc_msgSend_topLeft(v169, v170, v171, v172);
  *v265 = v173;
  *&v265[8] = tableUID;
  v177 = objc_msgSend_bottomRight(v169, v174, v175, v176);
  v263 = v177;
  v264 = tableUID;
  sub_2210CB5F4(a1, v265, v253, v95, v53, &v261);
  sub_2210CB5F4(a1, &v263, v253, v95, v53, v260);
  v178 = sub_221089E8C(a1);
  v179 = *(&v261 + 1);
  v180 = v262;
  v258[0] = *(&v261 + 8);
  v258[1] = v262;
  v183 = objc_msgSend_tableOrLinkedResolverForTableUID_(v178, v181, v258, v182);

  if (v183 && objc_msgSend_isCategorized(v183, v184, v185, v186))
  {
    v188 = objc_msgSend_tableTranslator(v183, v184, v185, v187);
    v191 = v188;
    if (v188)
    {
      v256 = v261;
      v257 = v262;
      objc_msgSend_chromeCellRefForBaseCellRef_(v188, v189, &v256, v190);
      v261 = *&v258[0].row;
      v262 = v259;
      v256 = v260[0];
      v257 = *&v260[1];
      objc_msgSend_chromeCellRefForBaseCellRef_(v191, v192, &v256, v193);
      v260[0] = *&v258[0].row;
      *&v260[1] = v259;
      v179 = *(&v261 + 1);
      v180 = v262;
    }
  }

  *&v256 = 0;
  if ((v261 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || !(v179 | v180))
  {
    v194 = 1;
  }

  else
  {
    v258[0] = v173;
    v255 = v261;
    v194 = 0;
    *&v256 = TSUCellCoord::offsetBetween(v258, &v255, v185);
  }

  if ((*&v260[0] & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || *(v260 + 8) == 0)
  {
    v196 = 0;
    LODWORD(v197) = 0;
    v194 = 1;
  }

  else
  {
    v258[0] = v177;
    v255 = *&v260[0];
    v195 = TSUCellCoord::offsetBetween(v258, &v255, v185);
    v196 = v195;
    v197 = HIDWORD(v195);
  }

  objc_msgSend_setTableUID_(v169, v184, v179, v180);
  v198 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var1.coordinate;
  v255 = v198;
  v199 = sub_221089E8C(a1);
  *&v258[0].row = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var1._tableUID;
  v202 = objc_msgSend_tableOrLinkedResolverForTableUID_(v199, v200, v258, v201);

  if (v202)
  {
    v206 = objc_msgSend_tableTranslator(v202, v203, v204, v205);
    v209 = v206;
    if (v206)
    {
      v255 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v206, v207, *&v198, v208);
    }
  }

  if ((v194 & 1) == 0)
  {
    if (v256 == __PAIR64__(v197, v196))
    {
      objc_msgSend_adjustIndexesBy_(v169, v203, &v256, v205);
    }

    else if (v252)
    {
      v210 = objc_msgSend_tableTranslator(v252, v203, v204, v205);
      v213 = v210;
      if (v210)
      {
        v214 = objc_msgSend_viewTractRefForChromeTractRef_(v210, v211, v169, v212);
        objc_msgSend_adjustIndexesBy_(v169, v215, &v256, v216);
        v220 = objc_msgSend_rows(v214, v217, v218, v219);
        objc_msgSend_setRows_(v169, v221, v220, v222);
      }
    }
  }

  v223 = [TSCERelativeTractRef alloc];
  v97 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v223, v224, v169, &v255);

  if (v194)
  {
    TSCEASTIteratorBase::createReferenceError(a1, v225, v226, v227);
  }

  v9 = v249;
  if (!v97)
  {
    goto LABEL_149;
  }

  v228 = v251;
  v229 = v252;
  v230 = v250;
  if (v248)
  {
    goto LABEL_148;
  }

  v232 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v234 = v232->var0.var0._tableUID._lower;
  v233 = v232->var0.var0._tableUID._upper;
  v235 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  if (v234 != v235->var0.var1._tableUID._lower || v233 != v235->var0.var1._tableUID._upper)
  {
    goto LABEL_148;
  }

  v239 = objc_msgSend_tableUID(v249, v236, v237, v238);
  if (!(v239 | v240))
  {
    v242 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    objc_msgSend_setTableUID_(v249, v243, v242->var0.var0._tableUID._lower, v242->var0.var0._tableUID._upper);
  }

  if ((objc_msgSend_isEqual_(v97, v240, v249, v241) & 1) == 0)
  {
LABEL_148:
    *v265 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var1._tableUID;
    TSCEASTIteratorBase::createColonTractRef(a1, v97, v253, v265);
  }

LABEL_150:

  return v230;
}

const char *sub_2210CD6B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_regionMovedInfo(*(a1 + 200), a2, a3, a4);
  v10 = objc_msgSend_srcTableUID(v6, v7, v8, v9);
  v12 = v11;
  if (v10 != objc_msgSend_dstTableUID(v6, v11, v13, v14) || v12 != v15)
  {
    v17 = (*(*a2 + 136))(a2, a1);
    v19 = v18;
    if (v17 == objc_msgSend_srcTableUID(v6, v18, v20, v21) && v19 == v22)
    {
      v26 = objc_msgSend_srcColumnUids(v6, v22, v23, v24);
      v27 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      if (objc_msgSend_containsIndex_(v26, v28, v27->var0.var0.coordinate.column, v29))
      {
        v33 = objc_msgSend_srcRowUids(v6, v30, v31, v32);
        v34 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        if (objc_msgSend_containsIndex_(v33, v35, v34->var0.var0.coordinate.row, v36))
        {
          v37 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
          v38 = sub_2212C7330(v37);

          if (v38)
          {
            v44[0] = objc_msgSend_dstTableUID(v6, v39, v40, v41);
            v44[1] = v42;
            (*(*a2 + 144))(a2, v44, a1);
          }

          goto LABEL_16;
        }
      }
    }
  }

LABEL_16:

  return a2;
}

TSCEASTRelativeCoordRefElement *sub_2210CD864(uint64_t a1, TSCEASTRelativeCoordRefElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_regionMovedInfo(*(a1 + 200), a2, a3, a4);
  v7 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  lower = v7->var0.var0._tableUID._lower;
  upper = v7->var0.var0._tableUID._upper;
  v16 = lower == objc_msgSend_srcTableUID(v6, v10, v11, v12) && upper == v13;
  if (v16 || ((v17 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8)), v18 = v17->var0.var0._tableUID._lower, v19 = v17->var0.var0._tableUID._upper, v18 == objc_msgSend_srcCondStyleOwnerUID(v6, v20, v21, v22)) ? (v23 = v19 == v13) : (v23 = 0), v23))
  {
    v24 = objc_msgSend_srcColumnUids(v6, v13, v14, v15);
    v25 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    if (objc_msgSend_containsIndex_(v24, v26, v25->var0.var0.coordinate.column, v27))
    {
      v31 = objc_msgSend_srcRowUids(v6, v28, v29, v30);
      v32 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      v35 = objc_msgSend_containsIndex_(v31, v33, v32->var0.var0.coordinate.row, v34);

      if (v35)
      {
        v39 = objc_msgSend_srcTableUID(v6, v36, v37, v38);
        v41 = v40;
        if (v39 != objc_msgSend_dstTableUID(v6, v40, v42, v43) || v41 != v44)
        {
          if ((v47 = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v45, v46), v49 = v48, v59._lower = v47, v59._upper = v48, v47 == objc_msgSend_srcTableUID(v6, v48, v50, v51)) && v49 == v52 || v47 == objc_msgSend_dstTableUID(v6, v52, v53, v54) && v49 == v55)
          {
            v58._flags = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
            v56 = TSCEASTElement::mutableUndoTractList(a2, a1);
            TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v56, &v59, &v58);
          }
        }
      }
    }

    else
    {
    }
  }

  return a2;
}

void sub_2210CDACC(id *a1)
{
  *a1 = &unk_2834A1A70;
  sub_2210BDEC0((a1 + 36));
  sub_2210BDEC0((a1 + 31));
  sub_2210BDEC0((a1 + 26));

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2210CDB3C(id *a1)
{
  *a1 = &unk_2834A1A70;
  sub_2210BDEC0((a1 + 36));
  sub_2210BDEC0((a1 + 31));
  sub_2210BDEC0((a1 + 26));

  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_2210CDBC0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_22107C238();
}

void *sub_2210CDC18(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2210CDD04(void *a1, void *a2)
{
  result = sub_2210CDC18(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_2210CDD3C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_221087680(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_2210CDD80(void *a1, void *a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void *sub_2210CE644(void *a1, unsigned int *a2, void *a3)
{
  v3 = *a2 + 16 * *(a2 + 2);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2 + 16 * *(a2 + 2);
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  v9 = *a2;
  while (1)
  {
    v10 = v8[1];
    if (v10 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v4)
      {
        v10 %= *&v4;
      }
    }

    else
    {
      v10 &= *&v4 - 1;
    }

    if (v10 != v6)
    {
      goto LABEL_23;
    }

LABEL_22:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  v11 = v8[2];
  v13 = v11 == v9;
  v12 = (v9 ^ v11) & 0x101FFFF00000000;
  v13 = v13 && v12 == 0;
  if (!v13)
  {
    goto LABEL_22;
  }

  return v8;
}

void sub_2210EBE44()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EBE5C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EBE74()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EBE8C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EBEB0()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EBEC8()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EBEEC()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EBF04()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EBFB0()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EBFF0()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC008()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC098()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC0B0()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC0C8()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC0E0()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC1A4()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC1F0()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC208()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC2CC()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC2E4()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC2FC()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC314()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC32C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC378()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC390()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC3DC()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC3F4()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC40C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC424()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC43C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC454()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC46C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC484()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC504()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC51C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC534()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC54C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC564()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC57C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC594()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC5AC()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC658()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC670()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC6C4()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC6DC()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC6F4()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC748()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC79C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC8A4()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC9B8()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC9D0()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECA1C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECB04()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECB1C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECB34()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECB4C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECB64()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECB7C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECC38()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECC84()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECC9C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECEA8()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECF74()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECF8C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECFD8()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ED224(unint64_t a1@<X0>, void *a3@<X8>, uint64_t a4)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_2210ED528(a3, a1);
  TSUDecimal::operator=();
  v14 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v6, v13, v7);
  sub_2210ED5B8(a3, &v14);

  v12 = &a4;
  if (a1 >= 2)
  {
    v8 = a1 - 1;
    do
    {
      ++v12;
      TSUDecimal::operator=();
      v11 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v9, v13, v10);
      sub_2210ED5B8(a3, &v11);

      --v8;
    }

    while (v8);
  }
}

void sub_2210ED350(uint64_t a1@<X0>, const char *a2@<X1>, void *a3@<X8>, uint64_t a4@<X3>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v9[0] = objc_msgSend_BOOLValue_(TSCEBooleanValue, a2, a1, a4);
  sub_2210ED5B8(a3, v9);

  v8 = objc_msgSend_BOOLValue_(TSCEBooleanValue, v6, a2, v7);
  sub_2210ED5B8(a3, &v8);
}

void sub_2210ED3E0(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_22107C2C0(va);
  _Unwind_Resume(a1);
}

void sub_2210ED414(void *a1@<X8>, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_2210ED528(a1, 6uLL);
  v11 = objc_msgSend_stringValue_(TSCEStringValue, v3, @"D", v4);
  sub_2210ED5B8(a1, &v11);

  v12 = &a2;
  v5 = 5;
  do
  {
    v6 = v12++;
    v9 = *v6;
    if (v9)
    {
      v10 = objc_msgSend_stringValue_(TSCEStringValue, v7, v9, v8);
      sub_2210ED5B8(a1, &v10);
    }

    --v5;
  }

  while (v5);
}

void sub_2210ED4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, ...)
{
  va_start(va, a7);

  sub_22107C2C0(va);
  _Unwind_Resume(a1);
}

void *sub_2210ED528(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_22107C1F0(result, a2);
    }

    sub_22107C148();
  }

  return result;
}

void sub_2210ED5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void *sub_2210ED5B8(void *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *result) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *result;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = result;
    if (v11)
    {
      sub_22107C1F0(result, v11);
    }

    v13[0] = 0;
    v13[1] = 8 * v8;
    v13[3] = 0;
    v12 = *a2;
    *a2 = 0;
    *(8 * v8) = v12;
    v13[2] = 8 * v8 + 8;
    sub_22107C098(result, v13);
    v7 = v3[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
    result[1] = v7;
  }

  v3[1] = v7;
  return result;
}