uint64_t **sub_22125FFE0(uint64_t a1, int a2)
{
  v6 = a2;
  if (a2 == 0xFFFF)
  {
    return 0;
  }

  os_unfair_lock_lock(a1);
  v3 = sub_2210C3024((a1 + 40), &v6);
  if (v3)
  {
    v4 = v3[3];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(a1);
  return v4;
}

void sub_221260060(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  os_unfair_lock_lock(a1);
  if (&a1[50] != a2)
  {
    *(a2 + 32) = a1[58];
    sub_221260A8C(a2, *&a1[54]._os_unfair_lock_opaque, 0);
  }

  os_unfair_lock_unlock(a1);
}

BOOL sub_2212600E4(uint64_t a1, int a2)
{
  v5 = a2;
  if (a2 == 0xFFFF)
  {
    return 0;
  }

  os_unfair_lock_lock(a1);
  v3 = sub_2210C3024((a1 + 200), &v5) != 0;
  os_unfair_lock_unlock(a1);
  return v3;
}

void sub_221260148(uint64_t a1, int a2)
{
  LOWORD(v4) = a2;
  if (a2 != 0xFFFF)
  {
    os_unfair_lock_lock(a1);
    v3 = sub_2210C3024((a1 + 200), &v4);
    if (v3)
    {
      sub_2210CDD3C((a1 + 200), v3);
      if (v4 != 0xFFFFLL)
      {
        TSUIndexSet::removeIndex((a1 + 8));
      }
    }

    os_unfair_lock_unlock(a1);
  }
}

uint64_t sub_2212601C0(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 | v4)
  {
    return sub_22125FA70(a1, v3, v4);
  }

  else
  {
    return 0xFFFFLL;
  }
}

void sub_2212601E0(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  os_unfair_lock_lock(a1);
  sub_221260C20(v6, &a1[10]);
  sub_221260ED4(v5, &a1[50]);
  os_unfair_lock_unlock(a1);
  for (i = v7; i; i = *i)
  {
    if (!sub_2210C3024(v5, i + 8))
    {
      v3[2](v3, i[8], &v8);
      if (v8)
      {
        break;
      }
    }
  }

  sub_2210BDEC0(v5);
  sub_2210BDEC0(v6);
}

void sub_221260298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2210BDEC0(va);

  _Unwind_Resume(a1);
}

uint64_t sub_2212602C8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v5 = a2;
  if (*(a1 + 144))
  {
    v3 = sub_2210C3024((a1 + 120), &v5);
    if (v3)
    {
      return *(v3 + 9);
    }
  }

  return v2;
}

void sub_221260314(os_unfair_lock_s *a1, uint64_t *a2, _OWORD *a3)
{
  v5 = sub_22125FA08(a1, *a2, a2[1]);
  if (v5 != 0xFFFF)
  {
    v6 = v5;
    os_unfair_lock_lock(a1);
    v7 = a3;
    *(sub_221260850(&a1[20]._os_unfair_lock_opaque, a3, &unk_2217E0E20, &v7) + 16) = v6;
    os_unfair_lock_unlock(a1);
  }
}

void sub_221260398(uint64_t a1, __int16 a2, __int16 *a3)
{
  v8 = a2;
  os_unfair_lock_lock(a1);
  *&v7 = &v8;
  v7 = *(sub_221260614((a1 + 40), &v8, &unk_2217E0E20, &v7) + 3);
  v5 = sub_2210875C4((a1 + 80), &v7);
  if (v5)
  {
    sub_2210CDD3C((a1 + 80), v5);
  }

  v9 = &v8;
  *(sub_221260614((a1 + 40), &v8, &unk_2217E0E20, &v9) + 3) = *a3;
  v6 = v8;
  v9 = a3;
  *(sub_221260850((a1 + 80), a3, &unk_2217E0E20, &v9) + 16) = v6;
  os_unfair_lock_unlock(a1);
}

uint64_t *sub_221260474(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
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
      v7 = *(v4 + 32);
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

uint64_t *sub_221260548(uint64_t a1, unsigned __int16 *a2, _WORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 26);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t **sub_221260614(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
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

void *sub_221260850(void *a1, void *a2, uint64_t a3, _OWORD **a4)
{
  v4 = a2[1];
  v5 = v4 ^ *a2;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ *a2;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != *a2 || v10[3] != v4)
  {
    goto LABEL_21;
  }

  return v10;
}

void sub_221260A8C(void *a1, unsigned __int16 *a2, unsigned __int16 *a3)
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
        v9 = a2[8];
        *(v8 + 8) = v9;
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_2211DC0DC(a1, v9, v8 + 8);
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
    sub_221260B98(a1, a2 + 8);
  }
}

void sub_221260B64(void *a1)
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

uint64_t sub_221260C20(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_221260C98(a1, i + 8, (i + 8));
  }

  return a1;
}

uint64_t **sub_221260C98(void *a1, unsigned __int16 *a2, uint64_t a3)
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
      v6 = v3 % a1[1];
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

  if (*(v8 + 8) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t sub_221260ED4(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_22123E79C(a1, i + 8, i + 8);
  }

  return a1;
}

__n128 sub_22126254C(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, uint64_t a4)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v5 = &unk_2834A37F0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 152) = 0;
  *(v5 + 160) = a4;
  *(v5 + 168) = 0;
  *(v5 + 96) = 1;
  memset(&v7[7], 0, 18);
  *(v5 + 176) = 16;
  *(v5 + 184) = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  *(v5 + 200) = 0;
  *(v5 + 208) = 0;
  *(v5 + 216) = 0;
  *(v5 + 217) = *v7;
  result = *&v7[9];
  *(v5 + 226) = *&v7[9];
  *(v5 + 248) = 0;
  return result;
}

void sub_221262614(uint64_t result, TSCEAnyRef *a2, uint64_t a3, uint64_t a4)
{
  refType = a2->_refType;
  if ((refType - 16) >= 2)
  {
    if (refType == 18)
    {
      v8[5] = v4;
      v8[6] = v5;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = sub_2212626D4;
      v8[3] = &unk_278461F28;
      v8[4] = result;
      TSCEAnyRef::forallRefs(a2, v8);
    }

    else if (refType & 0xFFFE) != 0xE || (*(result + 169))
    {
      v7 = *(result + 160);

      TSCEReferenceSet::insertAnyRef(v7, a2, a3, a4);
    }
  }
}

void sub_2212626DC(uint64_t a1@<X0>, unsigned __int16 *a2@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 144);
  v5 = *(v4 - 32);
  *(a2 + 2) = *(v4 - 48);
  *(a2 + 3) = v5;
  a2[32] = *(v4 - 16);
  v6 = *(v4 - 64);
  *a2 = *(v4 - 80);
  *(a2 + 1) = v6;
  v7 = *(v4 - 8);
  *(a2 + 9) = v7;
  v8 = *(a1 + 144);

  *(a1 + 144) = v8 - 80;
  if (*(a1 + 168) == 1 && *a2 - 1 <= 1 && (a2[32] & 1) != 0 || *(a2 + 65) == 1)
  {
    v9 = *(a2 + 12);
    v30.range = *(a2 + 4);
    v30._tableUID = v9;
    v10 = sub_221089E8C(a1);
    v13 = objc_msgSend_tableResolverForTableUID_(v10, v11, &v30._tableUID, v12);

    if (!v13)
    {
      v19 = sub_221089E8C(a1);
      v23 = objc_msgSend_upgradingFormulasMinion(v19, v20, v21, v22);
      v24 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      *v33 = *&v24->var0.var0.coordinate.row;
      *&v33[16] = v24->var0.var0._tableUID._upper;
      objc_msgSend_resetFormulaAt_(v23, v25, v33, v26);

LABEL_31:
      return;
    }

    v15 = objc_msgSend_apparentRangeForRange_rangeContext_(v13, v14, &v30, 0);
    v17 = v15 & 0xFFFF00000000;
    if (v15 == 0x7FFFFFFFLL || v17 == 0x7FFF00000000)
    {
      v18 = v16 & 0xFFFF00000000;
    }

    else
    {
      v18 = v16 & 0xFFFF00000000;
      if (v16 != 0x7FFFFFFF && v18 != 0x7FFF00000000)
      {
        if (WORD2(v15) <= WORD2(v16) && v15 <= v16 && WORD2(v15) == WORD2(v16) && v15 == v16)
        {
          goto LABEL_31;
        }

        if (WORD2(v15) <= WORD2(v16) && v15 <= v16)
        {
LABEL_30:
          v27 = sub_221089E8C(a1);
          *v33 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
          v28 = sub_2212575BC(v27, &v30, v33);

          v29.coordinate = v28;
          v29._tableUID = v30._tableUID;
          TSCERangeRef::TSCERangeRef(&v31, &v29);
          *&v33[6] = v31;
          memset(&v32[7], 0, 18);
          *a2 = 0;
          *(a2 + 1) = *v33;
          *(a2 + 9) = *&v33[16];
          *(a2 + 4) = *&v33[30];
          *(a2 + 40) = 0;
          *(a2 + 41) = *v32;
          *(a2 + 25) = *&v32[9];
          *(a2 + 9) = 0;

          TSCEReferenceSet::insertGeometryVolatileRef(*(a1 + 160), &v30._tableUID);
          goto LABEL_31;
        }
      }
    }

    if (v15 != 0x7FFFFFFFLL && v17 == 0x7FFF00000000 && v18 == 0x7FFF00000000)
    {
      if (v16 == 0x7FFFFFFF || v15 > v16)
      {
        goto LABEL_31;
      }
    }

    else if (v15 != 0x7FFFFFFFLL || v17 == 0x7FFF00000000 || v18 == 0x7FFF00000000 || v16 != 0x7FFFFFFF || WORD2(v15) > WORD2(v16))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }
}

BOOL sub_221262A6C(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFF00000000;
  if (a1 == 0x7FFFFFFFLL || v2 == 0x7FFF00000000)
  {
    v3 = a2 & 0xFFFF00000000;
  }

  else
  {
    v3 = a2 & 0xFFFF00000000;
    if (a2 != 0x7FFFFFFF && v3 != 0x7FFF00000000 && WORD2(a1) <= WORD2(a2) && a1 <= a2)
    {
      return 1;
    }
  }

  if (a1 != 0x7FFFFFFFLL && v2 == 0x7FFF00000000 && v3 == 0x7FFF00000000)
  {
    v4 = 0;
    if (a2 != 0x7FFFFFFF && a1 <= a2)
    {
      return 1;
    }
  }

  else
  {
    v6 = v3 != 0x7FFF00000000 && a2 == 0x7FFFFFFF;
    v7 = v2 != 0x7FFF00000000 && v6;
    v4 = a1 == 0x7FFFFFFFLL && v7;
  }

  return WORD2(a1) <= WORD2(a2) && v4;
}

void sub_221262B44(TSCEASTStreamIterator *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  TSCEASTStreamIterator::rewrite(a1, a2, a3, a4);
  while (*(a1 + 17) != *(a1 + 18))
  {
    sub_2212626DC(a1, &v7._refType);
    sub_221262614(a1, &v7, v5, v6);
  }
}

void sub_221262BB4(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (*(a1 + 136) != v1)
  {
    *&v17._refType = *(v1 - 80);
    v3 = *(v1 - 64);
    v4 = *(v1 - 48);
    v5 = *(v1 - 32);
    *&v17._couldBeIntersection = *(v1 - 16);
    *&v17._spanningRef.rangeRef._tableUID._upper = v4;
    v17._uuidValue = v5;
    *&v17._spanningRef.rangeRef.range._bottomRight.row = v3;
    v6 = *(v1 - 8);
    v17._refSet = v6;
    v7 = *(a1 + 144);

    *(a1 + 144) = v7 - 80;
    if (v17._refType - 1 >= 2)
    {
      if (v17._refType == 16)
      {
LABEL_7:

        return;
      }

      if (v17._refType != 18)
      {
        sub_221262614(a1, &v17, v8, v9);
        goto LABEL_7;
      }
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3321888768;
    v12 = *&v17._spanningRef.rangeRef.range._bottomRight.row;
    v13 = *&v17._spanningRef.rangeRef._tableUID._upper;
    v10[2] = sub_221262D20;
    v10[3] = &unk_2834A3938;
    v10[4] = a1;
    uuidValue = v17._uuidValue;
    v15 = *&v17._couldBeIntersection;
    v11 = *&v17._refType;
    v16 = v6;
    TSCEAnyRef::forallRefs(&v17, v10);

    goto LABEL_7;
  }
}

void sub_221262D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (*a2 == 1 || *(a1 + 40) == 2)
  {
    v6 = *(a2 + 48);
    *&v47._spanningRef.rangeRef._tableUID._upper = *(a2 + 32);
    v47._uuidValue = v6;
    *&v47._couldBeIntersection = *(a2 + 64);
    v7 = *(a2 + 16);
    *&v47._refType = *a2;
    *&v47._spanningRef.rangeRef.range._bottomRight.row = v7;
    v47._refSet = *(a2 + 72);
    if (*(a1 + 104) == 1)
    {
      v47._couldBeIntersection = 1;
    }

    if (*(a1 + 105) == 1)
    {
      v47._isExplicitIntersection = 1;
    }

    rangeRef = v47._spanningRef.rangeRef;
    if ((*(v5 + 168) != 1 || !v47._couldBeIntersection) && !v47._isExplicitIntersection)
    {
      sub_221262614(v5, &v47, v8, v9);
LABEL_44:

      return;
    }

    v10 = sub_221089E8C(v5);
    v13 = objc_msgSend_tableResolverWrapperForTableUID_(v10, v11, &rangeRef._tableUID, v12);

    if (!v13)
    {
      sub_221262614(v5, &v47, v14, v15);
      v23 = sub_221089E8C(v5);
      v27 = objc_msgSend_upgradingFormulasMinion(v23, v24, v25, v26);
      var0 = TSCEFormulaRewriteContext::containingCell(*(v5 + 8))->var0.var0;
      objc_msgSend_resetFormulaAt_(v27, v28, &var0, v29);

LABEL_27:
      goto LABEL_44;
    }

    v16 = TSCETableResolverWrapper::apparentRangeForRange(v13, &rangeRef, 0);
    v44 = v16;
    v45 = v17;
    v20 = v16 & 0xFFFF00000000;
    if (v16 == 0x7FFFFFFFLL || v20 == 0x7FFF00000000)
    {
      v21 = v17 & 0xFFFF00000000;
    }

    else
    {
      v21 = v17 & 0xFFFF00000000;
      if (v17 != 0x7FFFFFFF && v21 != 0x7FFF00000000)
      {
        if (WORD2(v16) <= WORD2(v17) && v16 <= v17 && WORD2(v16) == WORD2(v17) && v16 == v17)
        {
          goto LABEL_43;
        }

        if (WORD2(v16) <= WORD2(v17) && v16 <= v17)
        {
LABEL_40:
          v30 = sub_221089E8C(v5);
          var0.coordinate = TSCEFormulaRewriteContext::containingCell(*(v5 + 8))->var0.var0.coordinate;
          v31 = sub_2212575BC(v30, &rangeRef, &var0);

          if (v31.row != 0x7FFFFFFF && (*&v31 & 0xFFFF00000000) != 0x7FFF00000000)
          {
            var0.coordinate = v31;
            var0._tableUID = rangeRef._tableUID;
            TSCEReferenceSet::insertRef(*(v5 + 160), &var0);
            TSCEReferenceSet::insertGeometryVolatileRef(*(v5 + 160), &rangeRef._tableUID);
            goto LABEL_44;
          }

          v42 = 0;
          v32 = [TSCEEvalRef alloc];
          v34 = objc_msgSend_initWithTableResolver_topLeft_bottomRight_preserveFlags_(v32, v33, v13, &v44, &v45, &v42);
          var0 = TSCEFormulaRewriteContext::containingCell(*(v5 + 8))->var0.var0;
          v23 = objc_msgSend_intersectionWithHostCellRef_rangeContext_(v34, v35, &var0, 0);

          if (v23)
          {
            v39 = objc_msgSend_tractRef(v23, v36, v37, v38);
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v41 = rangeRef;
            v40[2] = sub_221263178;
            v40[3] = &unk_278461F48;
            v40[4] = v5;
            TSCECellTractRefCore::foreachCellRect(v39, v40);
          }

          goto LABEL_27;
        }
      }
    }

    if (v16 != 0x7FFFFFFFLL && v20 == 0x7FFF00000000 && v21 == 0x7FFF00000000)
    {
      if (v17 == 0x7FFFFFFF || v16 > v17)
      {
LABEL_43:
        sub_221262614(v5, &v47, v18, v19);
        goto LABEL_44;
      }
    }

    else if (v16 != 0x7FFFFFFFLL || v20 == 0x7FFF00000000 || v21 == 0x7FFF00000000 || v17 != 0x7FFFFFFF || WORD2(v16) > WORD2(v17))
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v22 = *(a1 + 32);

  sub_221262614(v22, a2, a3, a4);
}

TSCEReferenceSet *sub_221263178(uint64_t a1, const TSUCellRect *a2)
{
  v2 = *(a1 + 32);
  TSCERangeRef::TSCERangeRef(&v6, a2, (a1 + 56));
  return TSCEReferenceSet::insertRef(*(v2 + 160), &v6, v3, v4);
}

id sub_2212631BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  v5 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v5;
  *(a1 + 72) = v4;
  *(a1 + 56) = v3;
  result = *(a2 + 112);
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_221263218(uint64_t a1, uint64_t a2)
{
  sub_221262BB4(a1);
  sub_221262BB4(a1);
  sub_221265A50((a1 + 136), a1 + 176);
  return a2;
}

uint64_t sub_221263258(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (TSCEASTElement::tag(a2, a1) == 70)
  {
    v4 = *(a1 + 144);
    if (*(a1 + 136) != v4)
    {
      v5 = *(v4 - 80);
      v6 = *(v4 - 72);
      *v20 = *(v4 - 64);
      *&v20[16] = *(v4 - 48);
      v8 = *(v4 - 8);
      if (v5 <= 2)
      {
        v18._tableUID = *&v20[8];
        if (*&v20[8] == 0)
        {
          v14 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
          upper = v14->var0.var0._tableUID._upper;
          v18._tableUID._lower = v14->var0.var0._tableUID._lower;
          v18._tableUID._upper = upper;
          v18.coordinate = v6;
          if (!(v18._tableUID._lower | upper))
          {
            goto LABEL_8;
          }
        }

        else
        {
          v18.coordinate = v6;
        }

        objc_msgSend_spillChangedPrecedentForTableUID_spillOrigin_(TSCESpillOwner, v7, &v18._tableUID, &v18);
        v17._refType = 0;
        TSCERangeRef::TSCERangeRef(&v19, &v16);
        v17._spanningRef.rangeRef = v19;
        v17._spanningRef.rangeContext = 0;
        v17._refSet = 0;
        memset(&v17._uuidValue, 0, 18);
        sub_221262614(a1, &v17, v9, v10);

        v16 = v18;
        v17._refType = 0;
        TSCERangeRef::TSCERangeRef(&v19, &v16);
        v17._spanningRef.rangeRef = v19;
        v17._spanningRef.rangeContext = 0;
        v17._refSet = 0;
        memset(&v17._uuidValue, 0, 18);
        sub_221262614(a1, &v17, v11, v12);
      }

LABEL_8:
    }
  }

  sub_221262BB4(a1);
  sub_221265A50((a1 + 136), a1 + 176);
  return a2;
}

uint64_t sub_221263444(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[18];
  v7 = a1 + 17;
  if (a1[17] != v6)
  {
    v13[0] = *(v6 - 80);
    v8 = *(v6 - 64);
    v9 = *(v6 - 48);
    v10 = *(v6 - 32);
    v14 = *(v6 - 16);
    v13[2] = v9;
    v13[3] = v10;
    v13[1] = v8;
    v15 = *(v6 - 8);
    v11 = a1[18];

    a1[18] = v11 - 80;
    if (LOWORD(v13[0]) == 2)
    {
      HIBYTE(v14) = 1;
    }

    sub_221265A50(v7, v13);
  }

  return (*(*a1 + 80))(a1, a2, a3);
}

TSCEASTFunctionElement *sub_221263540(TSCEReferenceSet **a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4);
  v10 = (*(*this + 48))(this, a1);
  if (v6 <= 235)
  {
    if (v6 <= 117)
    {
      if (v6 <= 81)
      {
        if (v6 != 46)
        {
          if (v6 != 64)
          {
            goto LABEL_35;
          }

          TSCEReferenceSet::insertRef(a1[20], 0xD, v8, v9);
          v53 = TSCEASTIteratorBase::linkedResolverUIDForContainingTable(a1);
          v54 = v15;
          objc_msgSend_sheetTableNamePrecedentForTableUID_(TSCEHauntedOwner, v15, &v53, v16);
          goto LABEL_32;
        }
      }

      else if (v6 != 82)
      {
        if (v6 == 97)
        {
          TSCEReferenceSet::insertRef(a1[20], 4, v8, v9);
          v53 = TSCEASTIteratorBase::linkedResolverUIDForContainingTable(a1);
          v54 = v46;
          objc_msgSend_nowPrecedentForTableUID_(TSCEHauntedOwner, v46, &v53, v47);
          goto LABEL_32;
        }

        if (v6 != 114)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_31;
    }

    if (v6 <= 157)
    {
      if ((v6 - 118) >= 2)
      {
        if (v6 != 154)
        {
          goto LABEL_35;
        }

        TSCEReferenceSet::insertRef(a1[20], 5, v8, v9);
        v53 = TSCEASTIteratorBase::linkedResolverUIDForContainingTable(a1);
        v54 = v40;
        objc_msgSend_todayPrecedentForTableUID_(TSCEHauntedOwner, v40, &v53, v41);
LABEL_32:
        TSCEReferenceSet::insertRef(a1[20], &v52);
        goto LABEL_35;
      }

LABEL_16:
      TSCEReferenceSet::insertRef(a1[20], 6, v8, v9);
      v53 = TSCEASTIteratorBase::linkedResolverUIDForContainingTable(a1);
      v54 = v11;
      objc_msgSend_randomPrecedentForTableUID_(TSCEHauntedOwner, v11, &v53, v12);
      goto LABEL_32;
    }

    if (v6 == 158 || v6 == 205)
    {
LABEL_31:
      TSCEReferenceSet::insertRef(a1[20], 7, v8, v9);
      v53 = TSCEASTIteratorBase::linkedResolverUIDForContainingTable(a1);
      v54 = v17;
      objc_msgSend_localePrecedentForTableUID_(TSCEHauntedOwner, v17, &v53, v18);
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  if (v6 > 300)
  {
    if (v6 > 315)
    {
      switch(v6)
      {
        case 0x13C:
          v53 = TSCEASTIteratorBase::linkedResolverUIDForContainingTable(a1);
          v54 = v44;
          objc_msgSend_subtotalPrecedentForTableUID_(TSCEHauntedOwner, v44, &v53, v45);
          goto LABEL_32;
        case 0x151:
          v53 = TSCEASTIteratorBase::linkedResolverUIDForContainingTable(a1);
          v54 = v42;
          objc_msgSend_spillPrecedentForTableUID_(TSCEHauntedOwner, v42, &v53, v43);
          goto LABEL_32;
        case 0x15A:
          goto LABEL_16;
      }

      goto LABEL_35;
    }

    if (v6 != 301)
    {
      if (v6 != 302)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }

    goto LABEL_33;
  }

  if (v6 > 298)
  {
    if (v6 != 299)
    {
LABEL_25:
      v13 = a1[20];
      v14 = 11;
LABEL_34:
      TSCEReferenceSet::insertRef(v13, v14, v8, v9);
      goto LABEL_35;
    }

LABEL_33:
    v13 = a1[20];
    v14 = 12;
    goto LABEL_34;
  }

  if (v6 == 236)
  {
    goto LABEL_31;
  }

  if (v6 == 298)
  {
    goto LABEL_25;
  }

LABEL_35:
  v19 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v7, v6, v9);
  if (v10)
  {
    v20 = v19;
    v21 = v10 - 1;
    do
    {
      v22 = a1[18];
      if (a1[17] == v22)
      {
        break;
      }

      *&v52._refType = *&v22[-1]._rangeRefs.__tree_.__begin_node_;
      v23 = *&v22[-1]._rangeRefs.__tree_.__size_;
      v24 = *&v22[-1]._columnRowUidRefs;
      v25 = *&v22[-1]._geometryVolatileRefs;
      *&v52._couldBeIntersection = v22[-1]._categoryRefs;
      *&v52._spanningRef.rangeRef._tableUID._upper = v24;
      v52._uuidValue = v25;
      *&v52._spanningRef.rangeRef.range._bottomRight.row = v23;
      v52._refSet = v22[-1]._wholeOwnerRefs;
      v26 = a1[18];

      a1[18] = (v26 - 80);
      v30 = *(a1 + 168) == 1 && v52._couldBeIntersection || v52._isExplicitIntersection;
      if (v52._refType != 16)
      {
        v31 = objc_msgSend_maxArguments(v20, v27, v28, v29);
        if ((v31 == -1 || v31 > v21) && (objc_msgSend_argumentSpecForIndex_(v20, v32, v21, v33), v34 = objc_claimAutoreleasedReturnValue(), v34, v34) && ((*(a1 + 171) & 1) != 0 || (objc_msgSend_referenceForGeometryOnly(v34, v35, v36, v37) & 1) == 0))
        {
          if (v52._refType <= 0x12u && ((1 << SLOBYTE(v52._refType)) & 0x40006) != 0)
          {
            v38 = objc_msgSend_argumentType(v34, v35, v36, v37);
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = sub_221263A40;
            v49[3] = &unk_278461F68;
            v50 = v30;
            v49[4] = a1;
            v49[5] = v34;
            v51 = v38;
            TSCEAnyRef::forallRefs(&v52, v49);
          }

          else
          {
            sub_221262614(a1, &v52, v36, v37);
          }
        }

        else
        {
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = sub_221263CBC;
          v48[3] = &unk_278461F28;
          v48[4] = a1;
          TSCEAnyRef::forallRefs(&v52, v48);
        }
      }

      --v21;
    }

    while (v21 != -1);
  }

  sub_221265A50(a1 + 17, (a1 + 22));
  return this;
}

void sub_221263A40(uint64_t a1, TSCEAnyRef *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  tableUID = a2->_spanningRef.rangeRef._tableUID;
  v42.range = a2->_spanningRef.rangeRef.range;
  v42._tableUID = tableUID;
  if (*(a1 + 48) == 1 && objc_msgSend_accessorMode(*(a1 + 40), a2, a3, a4) == 1)
  {
    v8 = *(a1 + 49);
    v9 = v8 == 1 || v8 == 6;
    if (!v9 && v8 != 255)
    {
      v10 = sub_221089E8C(v6);
      v41.rangeRef.range._topLeft = TSCEAnyRef::containedTableUID(a2, v11, v12, v13);
      v41.rangeRef.range._bottomRight = v14;
      v16 = objc_msgSend_tableResolverForTableUID_(v10, v14, &v41, v15);

      if (v16)
      {
        v18 = objc_msgSend_apparentRangeForRange_rangeContext_(v16, v17, &v42, 0);
        if ((v18 == 0x7FFFFFFF || (v18 & 0xFFFF00000000) == 0x7FFF00000000 || v19 == 0x7FFFFFFF || (v19 & 0xFFFF00000000) == 0x7FFF00000000 || WORD2(v18) > WORD2(v19) || v18 > v19 || WORD2(v18) != WORD2(v19) || v18 != v19) && sub_221262A6C(v18, v19))
        {
          v20 = sub_221089E8C(v6);
          v41.rangeRef.range._topLeft = TSCEFormulaRewriteContext::containingCell(*(v6 + 8))->var0.var0.coordinate;
          v21 = sub_2212575BC(v20, &v42, &v41);

          v25 = TSCEAnyRef::containedTableUID(a2, v22, v23, v24);
          v41.rangeRef.range._topLeft = v21;
          v41.rangeRef.range._bottomRight = v25;
          v41.rangeRef._tableUID._lower = v26;
          TSCEReferenceSet::insertRef(*(v6 + 160), &v41);
          TSCEReferenceSet::insertGeometryVolatileRef(*(v6 + 160), &v42._tableUID);

          return;
        }
      }

      else
      {
        v27 = sub_221089E8C(v6);
        v31 = objc_msgSend_upgradingFormulasMinion(v27, v28, v29, v30);
        v32 = TSCEFormulaRewriteContext::containingCell(*(v6 + 8));
        v41.rangeRef.range = *&v32->var0.var0.coordinate.row;
        v41.rangeRef._tableUID._lower = v32->var0.var0._tableUID._upper;
        objc_msgSend_resetFormulaAt_(v31, v33, &v41, v34);
      }
    }
  }

  if (TSCERangeRef::isSpanning(&v42))
  {
    v38 = objc_msgSend_rangeContext(*(a1 + 40), v35, v36, v37);
    v41.rangeRef = v42;
    v41.rangeContext = v38;
    TSCEReferenceSet::insertRef(*(v6 + 160), &v41, v39, v40);
  }

  else
  {
    sub_221262614(v6, a2, v36, v37);
  }
}

TSCEReferenceSet *sub_221263CBC(TSCEReferenceSet *result, TSCEAnyRef *this, uint64_t a3, uint64_t a4)
{
  next = result->_cellRefs.__table_.__first_node_.__next_;
  refType = this->_refType;
  if (refType < 3 || refType == 10)
  {
    v18._lower = TSCEAnyRef::containedTableUID(this, this, a3, a4);
    v18._upper = v17;
    return TSCEReferenceSet::insertGeometryVolatileRef(next[20], &v18);
  }

  else if (refType != 17)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], this, "virtual TSCEASTElement *TSCEASTRefExtractionIterator::functionNode(TSCEASTFunctionElement *)_block_invoke_2", a4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTRefExtractionIterator.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 431, 0, "unhandled case for refType: %d", this->_refType);

    v16 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v16, v13, v14, v15);
  }

  return result;
}

uint64_t sub_221263E14(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 144);
  v4 = *(v3 - 80);
  v32 = *(v3 - 64);
  v33 = *(v3 - 72);
  v34 = *(v3 - 48);
  v35 = *(v3 - 56);
  v39 = *(v3 - 8);
  v5 = *(a1 + 144);

  *(a1 + 144) = v5 - 80;
  v6 = *(v5 - 160);
  v38 = *(v5 - 136);
  v36 = *(v5 - 152);
  v37 = *(v5 - 128);
  v40 = *(v5 - 88);
  v7 = *(a1 + 144);

  *(a1 + 144) = v7 - 80;
  if (*(a1 + 169) == 1 && TSCEASTElement::tag(a2, a1) == 45)
  {
    v8 = (*(*a2 + 96))(a2, a1);
    v43._topLeft = v38;
    v43._bottomRight = v37;
    v14 = objc_msgSend_tractCount(v8, v9, v10, v11);
    if (v14)
    {
      for (i = 0; i < v14; ++i)
      {
        v16 = objc_msgSend_uidTractAtIndex_(v8, v12, i, v13);
        v20 = objc_msgSend_columnUids(v16, v17, v18, v19);
        memset(__p, 0, 24);
        sub_221086EBC(__p, *v20, *(v20 + 8), (*(v20 + 8) - *v20) >> 4);
        v24 = objc_msgSend_rowUids(v16, v21, v22, v23);
        memset(v50, 0, 24);
        sub_221086EBC(v50, *v24, *(v24 + 8), (*(v24 + 8) - *v24) >> 4);
        v26 = *__p;
        v25 = *&__p[8];
        while (v26 != v25)
        {
          if (*(a1 + 169) == 1 && *v26 != 0)
          {
            TSCEReferenceSet::insertColumnRowUid(*(a1 + 160), &v43, v26);
          }

          ++v26;
        }

        v27 = *v50;
        v28 = *&v50[8];
        if (*v50 != *&v50[8])
        {
          do
          {
            if (*(a1 + 169) == 1 && *v27 != 0)
            {
              TSCEReferenceSet::insertColumnRowUid(*(a1 + 160), &v43, v27);
            }

            ++v27;
          }

          while (v27 != v28);
          v27 = *v50;
        }

        if (v27)
        {
          *&v50[8] = v27;
          operator delete(v27);
        }

        if (*__p)
        {
          *&__p[8] = *__p;
          operator delete(*__p);
        }
      }
    }
  }

  *&__p[24] = 0;
  *&__p[32] = 0;
  v46 = 0;
  if ((v6 - 4) < 3u || (v4 - 4) <= 2 || v6 == 16 || v4 == 16)
  {
    goto LABEL_45;
  }

  if (v6)
  {
    if (v6 == 2)
    {
      if (v4 != 2)
      {
        goto LABEL_45;
      }
    }

    else if (v6 != 1 || v4 != 1)
    {
      goto LABEL_45;
    }

    if ((v36 == 0x7FFFFFFF && WORD2(v36) != 0x7FFF || v36 != 0x7FFFFFFF && WORD2(v36) == 0x7FFF) && (v33 == 0x7FFFFFFF && WORD2(v33) != 0x7FFF || v33 != 0x7FFFFFFF && WORD2(v33) == 0x7FFF) && v38 == v35 && v37 == v34)
    {
      memset(&v50[7], 0, 18);
      *__p = 1;
      *&__p[8] = v36;
      *&__p[16] = v32;
      *&__p[24] = v38;
      *&__p[32] = v37;
      v46 = 0;
LABEL_46:
      *v47 = *v50;
      *&v47[9] = *&v50[9];
      v48 = 0;
      goto LABEL_47;
    }

LABEL_45:
    *&__p[24] = 0;
    *&__p[32] = 0;
    v46 = 0;
    memset(&v50[7], 0, 18);
    *__p = 16;
    *&__p[8] = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    goto LABEL_46;
  }

  if (v4 || v38 != v35 || v37 != v34 || (v36 & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (v33 & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    goto LABEL_45;
  }

  memset(&v50[7], 0, 18);
  *__p = 1;
  *&__p[8] = v36;
  *&__p[16] = v33;
  *&__p[24] = v35;
  *&__p[32] = v34;
  v46 = 0;
  *v47 = *v50;
  *&v47[9] = 0u;
  v48 = 0;
  v47[23] = 1;
LABEL_47:
  if (*__p - 1 <= 1)
  {
    v43 = *&__p[8];
    v44 = *&__p[24];
    v42._flags = 0;
    TSCERangeCoordinate::fixInversions(&v43, &v42);
    v29 = v47[23];
    *&v50[6] = v43;
    *&v50[22] = v44;
    memset(&v49[7], 0, 18);
    *__p = 1;
    *&__p[2] = *v50;
    *&__p[18] = *&v50[16];
    *&__p[32] = *(&v44 + 1);
    v46 = 0;
    *&v47[9] = 0u;
    *v47 = *v49;
    v30 = v48;
    v48 = 0;

    v47[23] = v29;
  }

  sub_221265A50((a1 + 136), __p);

  return a2;
}

TSCEASTColonTractElement *sub_2212643BC(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4)
{
  v9 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4);
  if (*(a1 + 169) == 1)
  {
    v10 = (*(*this + 96))(this, a1);
    v77._lower = 0;
    v77._upper = 0;
    if (objc_msgSend_hasTableUID(v9, v11, v12, v13))
    {
      v77._lower = objc_msgSend_tableUID(v9, v14, v15, v16);
    }

    else
    {
      v20 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      upper = v20->var0.var0._tableUID._upper;
      v77._lower = v20->var0.var0._tableUID._lower;
    }

    v77._upper = upper;
    v23 = objc_msgSend_tractCount(v10, upper, v18, v19);
    if (v23)
    {
      for (i = 0; i < v23; ++i)
      {
        v25 = objc_msgSend_uidTractAtIndex_(v10, v21, i, v22);
        v29 = objc_msgSend_columnUids(v25, v26, v27, v28);
        __p = 0;
        v66 = 0uLL;
        sub_221086EBC(&__p, *v29, *(v29 + 8), (*(v29 + 8) - *v29) >> 4);
        v33 = objc_msgSend_rowUids(v25, v30, v31, v32);
        v74 = 0;
        v75 = 0;
        v76 = 0;
        sub_221086EBC(&v74, *v33, *(v33 + 8), (*(v33 + 8) - *v33) >> 4);
        v34 = __p;
        v35 = v66.i64[0];
        while (v34 != v35)
        {
          if (*(a1 + 169) == 1 && *v34 != 0)
          {
            TSCEReferenceSet::insertColumnRowUid(*(a1 + 20), &v77, v34);
          }

          ++v34;
        }

        v36 = v74;
        v37 = v75;
        if (v74 != v75)
        {
          do
          {
            if (*(a1 + 169) == 1 && *v36 != 0)
            {
              TSCEReferenceSet::insertColumnRowUid(*(a1 + 20), &v77, v36);
            }

            ++v36;
          }

          while (v36 != v37);
          v36 = v74;
        }

        if (v36)
        {
          v75 = v36;
          operator delete(v36);
        }

        if (__p)
        {
          v66.i64[0] = __p;
          operator delete(__p);
        }
      }
    }
  }

  if (v9)
  {
    if (objc_msgSend_hasTableUID(v9, v6, v7, v8))
    {
      v41 = objc_msgSend_tableUID(v9, v38, v39, v40);
      __p = v41;
      v66.i64[0] = v42;
      if (*(a1 + 169) == 1 && v41 | v42)
      {
        TSCEReferenceSet::insertTableUid(*(a1 + 20), &__p);
      }
    }

    else
    {
      v43 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      objc_msgSend_setTableUID_(v9, v44, v43->var0.var0._tableUID._lower, v43->var0.var0._tableUID._upper);
    }

    __p = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
    v47 = objc_msgSend_absoluteCellTractRefForHostCell_(v9, v45, &__p, v46);
    v48 = sub_221089E8C(a1);
    v52 = objc_msgSend_emptyReferenceSetWrapper(v48, v49, v50, v51);

    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_2212647D8;
    v72[3] = &unk_278461F90;
    v53 = v52;
    v73 = v53;
    objc_msgSend_foreachAnyRef_(v47, v54, v72, v55);
    if (v53 && (v59 = objc_msgSend_referenceSet(v53, v56, v57, v58), TSCEReferenceSet::count(v59, v60, v61, v62)))
    {
      v63 = v53;
      LOWORD(__p) = 18;
      v66 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 1;
      v71 = v63;
      sub_221265A50(a1 + 17, &__p);
    }

    else
    {
      sub_221265A50(a1 + 17, a1 + 176);
    }
  }

  else
  {
    sub_221265A50(a1 + 17, a1 + 176);
  }

  return this;
}

void sub_2212647D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v3;
  v8 = *(a2 + 64);
  v4 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v4;
  v9 = *(a2 + 72);
  LOBYTE(v8) = 1;
  objc_msgSend_insertAnyRef_(*(a1 + 32), v5, v7, v6);
}

TSCEASTArrayElement *sub_2212649C0(TSCEASTIteratorBase *a1, TSCEASTArrayElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTArrayElement::numColumns(this, a1, a3, a4);
  v9 = TSCEASTArrayElement::numRows(this, a1, v7, v8);
  if (v6)
  {
    v10 = v9;
    for (i = 0; i < v6; ++i)
    {
      if (v10)
      {
        for (j = 0; j < v10; ++j)
        {
          sub_221262BB4(a1);
        }
      }
    }
  }

  sub_221265A50(a1 + 17, a1 + 176);
  return this;
}

uint64_t sub_221264A54(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 48))(a2, a1);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  if (v4 != 1)
  {
    do
    {
      sub_221262BB4(a1);
      --v5;
    }

    while (v5);
LABEL_4:
    sub_221265A50((a1 + 136), a1 + 176);
  }

  return a2;
}

TSCEASTRelativeCoordRefElement *sub_221264AEC(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v4, v5);
  }

  else
  {
    v6 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    lower = v6->var0.var0._tableUID._lower;
    upper = v6->var0.var0._tableUID._upper;
  }

  v27._lower = lower;
  v27._upper = upper;
  sub_221264CC8(a1, &v27, a2);
  v11 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v9, v10);
  v26._flags = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
  v14 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(coordinate, v11, &v26, v13);
  v15 = TSCEASTRelativeCoordRefElement::spansAllRows(a2, a1);
  v16 = TSCEASTRelativeCoordRefElement::spansAllColumns(a2, a1);
  if ((TSCEASTElement::refFlags(a2, a1) & 1) != 0 && *(a1 + 169) == 1 && v27 != 0uLL)
  {
    TSCEReferenceSet::insertTableUid(*(a1 + 160), &v27);
  }

  if ((v14 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    sub_221265A50((a1 + 136), a1 + 176);
  }

  else
  {
    if (v15 || v16)
    {
      v20._tableUID = v27;
      v19 = 2;
      v20.range._topLeft = v14;
      v20.range._bottomRight = v14;
      v21 = 0;
      v25 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 1;
      sub_221265A50((a1 + 136), &v19);
    }

    else
    {
      v18.coordinate = v14;
      v18._tableUID = v27;
      v19 = 0;
      TSCERangeRef::TSCERangeRef(&v20, &v18);
      v21 = 0;
      v25 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      sub_221265A50((a1 + 136), &v19);
    }
  }

  return a2;
}

void sub_221264CC8(uint64_t a1, TSKUIDStruct *a2, uint64_t a3)
{
  if (*(a1 + 169) == 1 && TSCEASTElement::hasUidTracts(a3, a1))
  {
    v22 = (*(*a3 + 96))(a3, a1);
    v11 = objc_msgSend_tractCount(v22, v6, v7, v8);
    if (v11)
    {
      v12 = 0;
      do
      {
        v13 = objc_msgSend_uidTractAtIndex_(v22, v9, v12, v10);
        v17 = objc_msgSend_columnUids(v13, v14, v15, v16);
        v21 = objc_msgSend_rowUids(v13, v18, v19, v20);
        sub_2212650A0(a1, a2, v17, v21);

        ++v12;
      }

      while (v11 > v12);
    }
  }
}

uint64_t sub_221264E00(uint64_t a1, uint64_t a2)
{
  v4 = TSCEASTElement::tag(a2, a1);
  v18._lower = (*(*a2 + 136))(a2, a1);
  v18._upper = v5;
  if (*(a1 + 169) == 1 && (v18._lower | v5) != 0)
  {
    TSCEReferenceSet::insertTableUid(*(a1 + 160), &v18);
  }

  if (v4 == 64)
  {
    v10 = (TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate.column << 32) | 0x7FFFFFFF;
    v11 = (*(*a2 + 136))(a2, a1);
    LOWORD(v18._lower) = 1;
    v18._upper = v10;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    v22 = 0;
    v26 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1;
    sub_221265A50((a1 + 136), &v18);
  }

  else if (v4 == 65)
  {
    v7 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate.row | 0x7FFF00000000;
    v8 = (*(*a2 + 136))(a2, a1);
    LOWORD(v18._lower) = 1;
    v18._upper = v7;
    v19 = v7;
    v20 = v8;
    v21 = v9;
    v22 = 0;
    v26 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1;
    sub_221265A50((a1 + 136), &v18);
  }

  else
  {
    coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
    v14 = (*(*a2 + 136))(a2, a1);
    v17.coordinate = coordinate;
    v17._tableUID._lower = v14;
    v17._tableUID._upper = v15;
    LOWORD(v18._lower) = 0;
    TSCERangeRef::TSCERangeRef(&v18._upper, &v17);
    v22 = 0;
    v26 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    sub_221265A50((a1 + 136), &v18);
  }

  return a2;
}

uint64_t sub_221265020(uint64_t a1, uint64_t a2)
{
  v4 = 17;
  v5 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_221265A50((a1 + 136), &v4);

  return a2;
}

void *sub_2212650A0(void *result, TSKUIDStruct *a2, TSKUIDStruct **a3, TSKUIDStruct **a4)
{
  if (*(result + 169) == 1)
  {
    v6 = result;
    v7 = *a3;
    v8 = a3[1];
    while (v7 != v8)
    {
      if (*(v6 + 169) == 1 && *v7 != 0)
      {
        result = TSCEReferenceSet::insertColumnRowUid(*(v6 + 160), a2, v7);
      }

      ++v7;
    }

    v10 = *a4;
    v9 = a4[1];
    while (v10 != v9)
    {
      if (*(v6 + 169) == 1 && *v10 != 0)
      {
        result = TSCEReferenceSet::insertColumnRowUid(*(v6 + 160), a2, v10);
      }

      ++v10;
    }
  }

  return result;
}

uint64_t sub_221265160(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  if (TSCEASTElement::refFlags(a2, a1))
  {
    tableUID._lower = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v4, v5);
    tableUID._upper = v6;
    if (*(a1 + 169) == 1 && (tableUID._lower | v6) != 0)
    {
      TSCEReferenceSet::insertTableUid(*(a1 + 160), &tableUID);
    }
  }

  sub_221264CC8(a1, &tableUID, a2);
  return (*(*a1 + 240))(a1, a2);
}

TSCEASTUidReferenceElement *sub_221265218(uint64_t a1, TSCEASTUidReferenceElement *a2)
{
  tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  if (TSCEASTElement::refFlags(a2, a1))
  {
    tableUID._lower = TSCEASTUidReferenceElement::tableUID(a2, a1, v4, v5);
    tableUID._upper = v6;
    if (*(a1 + 169) == 1 && (tableUID._lower | v6) != 0)
    {
      TSCEReferenceSet::insertTableUid(*(a1 + 160), &tableUID);
    }
  }

  sub_221264CC8(a1, &tableUID, a2);
  sub_221265A50((a1 + 136), a1 + 176);
  return a2;
}

TSCEASTCategoryRefElement *sub_2212652B4(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTCategoryRefElement::categoryRef(this, a1, a3, a4);
  TSCEReferenceSet::insertRef(*(a1 + 20), v6);
  if (*(a1 + 170) == 1)
  {
    sub_221265A50(a1 + 17, a1 + 176);
  }

  else
  {
    v73 = 0;
    v74 = 0;
    v7 = sub_221089E8C(a1);
    *v64 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
    v10 = objc_msgSend_tableResolverForTableUID_(v7, v8, v64, v9);

    if (v10)
    {
      v11 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      v73 = objc_msgSend_rowUIDForRowIndex_(v10, v12, v11->var0.var0.coordinate.row, v13);
      v74 = v14;
    }

    else
    {
      v17 = sub_221089E8C(a1);
      v21 = objc_msgSend_upgradingFormulasMinion(v17, v18, v19, v20);
      v22 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      *v64 = *&v22->var0.var0.coordinate.row;
      *&v64[16] = v22->var0.var0._tableUID._upper;
      objc_msgSend_resetFormulaAt_(v21, v23, v64, v24);
    }

    v25 = objc_msgSend_absoluteGroupUid(v6, v14, v15, v16);
    if (v25 | v26)
    {
      objc_msgSend_setRelativeGroupUid_(v6, v26, 0, 0);
    }

    v27 = sub_221089E8C(a1);
    v29 = v27;
    if (v27)
    {
      objc_msgSend_unorderedCellRefsForCategoryRef_atRowUid_(v27, v28, v6, &v73);
    }

    else
    {
      __p = 0;
      v71 = 0;
      v72 = 0;
    }

    if (v71 != __p)
    {
      v32 = *(__p + 1);
      v33 = *(__p + 2);
      *v64 = v32;
      *&v64[8] = v33;
      if (*(a1 + 169) == 1)
      {
        if (v32 | v33)
        {
          TSCEReferenceSet::insertTableUid(*(a1 + 20), v64);
        }
      }
    }

    if (v10)
    {
      objc_msgSend_groupingColumnsPrecedentForCategoryRef_(v10, v30, v6, v31);
      if (*v64 != 0x7FFFFFFF && (*v64 & 0xFFFF00000000) != 0x7FFF00000000 && *&v64[8] != 0)
      {
        v34 = v71;
        if (v71 >= v72)
        {
          v37 = 0xAAAAAAAAAAAAAAABLL * ((v71 - __p) >> 3);
          v38 = v37 + 1;
          if (v37 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_22107C148();
          }

          if (0x5555555555555556 * ((v72 - __p) >> 3) > v38)
          {
            v38 = 0x5555555555555556 * ((v72 - __p) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v72 - __p) >> 3) >= 0x555555555555555)
          {
            v39 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v39 = v38;
          }

          if (v39)
          {
            sub_2210CDBC0(&__p, v39);
          }

          v40 = 8 * ((v71 - __p) >> 3);
          v41 = *v64;
          *(v40 + 16) = *&v64[16];
          *v40 = v41;
          v36 = 24 * v37 + 24;
          v42 = (24 * v37 - (v71 - __p));
          memcpy((v40 - (v71 - __p)), __p, v71 - __p);
          v43 = __p;
          __p = v42;
          v71 = v36;
          v72 = 0;
          if (v43)
          {
            operator delete(v43);
          }
        }

        else
        {
          v35 = *v64;
          v71[2] = *&v64[16];
          *v34 = v35;
          v36 = v34 + 24;
        }

        v71 = v36;
      }
    }

    v44 = __p;
    v45 = v71;
    if (v71 - __p == 24)
    {
      if (__p != v71)
      {
        do
        {
          if (*&v44->coordinate == 0x7FFFFFFF || (*&v44->coordinate & 0xFFFF00000000) == 0x7FFF00000000)
          {
            sub_221265A50(a1 + 17, a1 + 176);
          }

          else
          {
            *v64 = 0;
            TSCERangeRef::TSCERangeRef(&v75, v44);
            *&v64[8] = v75;
            v65 = 0;
            v69 = 0;
            v66 = 0;
            v67 = 0;
            v68 = 0;
            sub_221265A50(a1 + 17, v64);
          }

          ++v44;
        }

        while (v44 != v45);
      }
    }

    else
    {
      v47 = sub_221089E8C(a1);
      v51 = objc_msgSend_emptyReferenceSetWrapper(v47, v48, v49, v50);

      v55 = __p;
      v56 = v71;
      if (__p != v71)
      {
        do
        {
          if (*v55 != 0x7FFFFFFF && (*v55 & 0xFFFF00000000) != 0x7FFF00000000)
          {
            objc_msgSend_insertCellRef_(v51, v52, v55, v54);
          }

          v55 += 3;
        }

        while (v55 != v56);
      }

      v58 = objc_msgSend_referenceSet(v51, v52, v53, v54, *v64);
      if (TSCEReferenceSet::count(v58, v59, v60, v61))
      {
        v62 = v51;
        *v64 = 18;
        *&v64[8] = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        *&v64[24] = 0uLL;
        v65 = 0;
        v68 = 1;
        v69 = v62;
        sub_221265A50(a1 + 17, v64);
      }

      else
      {
        sub_221265A50(a1 + 17, a1 + 176);
      }
    }

    if (__p)
    {
      v71 = __p;
      operator delete(__p);
    }
  }

  return this;
}

void sub_221265708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

TSCEASTViewTractRefElement *sub_2212657C0(uint64_t a1, TSCEASTViewTractRefElement *a2)
{
  tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  if (TSCEASTElement::refFlags(a2, a1))
  {
    tableUID._lower = TSCEASTViewTractRefElement::tableUID(a2, a1, v4, v5);
    tableUID._upper = v6;
    if (*(a1 + 169) == 1 && (tableUID._lower | v6) != 0)
    {
      TSCEReferenceSet::insertTableUid(*(a1 + 160), &tableUID);
    }

    objc_msgSend_pivotRulesChangedPrecedentForTableUID_(TSCEHauntedOwner, v6, &tableUID, v7);
    TSCEReferenceSet::insertRef(*(a1 + 160), &v20);
    objc_msgSend_pivotSortChangedPrecedentForTableUID_(TSCEHauntedOwner, v9, &tableUID, v10);
    TSCEReferenceSet::insertRef(*(a1 + 160), &v20);
    objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v11, &tableUID, v12);
    TSCEReferenceSet::insertRef(*(a1 + 160), &v20);
    *&v20.coordinate.row = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
    v13 = sub_2212C4A5C(&v20, 9);
    v15 = v14;
    v16 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    if ((tableUID._lower != v16->var0.var0._tableUID._lower || tableUID._upper != v16->var0.var0._tableUID._upper) && (tableUID._lower != v13 || tableUID._upper != v15))
    {
      objc_msgSend_summaryModelIsCleanPrecedentForTableUID_(TSCEHauntedOwner, v17, &tableUID, v18);
      TSCEReferenceSet::insertRef(*(a1 + 160), &v20);
    }
  }

  sub_221264CC8(a1, &tableUID, a2);
  sub_221265A50((a1 + 136), a1 + 176);
  return a2;
}

void sub_221265974(void **a1)
{
  *a1 = &unk_2834A37F0;

  v3 = a1 + 17;
  sub_2211FEAB8(&v3);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

uint64_t sub_2212659D8(void **a1)
{
  *a1 = &unk_2834A37F0;

  v4 = a1 + 17;
  sub_2211FEAB8(&v4);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
  return MEMORY[0x223DA1450]();
}

uint64_t sub_221265A50(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_221265ABC(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 16);
    v5 = *(a2 + 32);
    v6 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 32) = v5;
    *(v3 + 48) = v6;
    *(v3 + 16) = v4;
    *(v3 + 72) = *(a2 + 72);
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_221265ABC(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_22107C148();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v13[4] = a1;
  if (v6)
  {
    sub_221265CB4(a1, v6);
  }

  v7 = 80 * v2;
  v13[0] = 0;
  v13[1] = v7;
  v13[3] = 0;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 32) = v9;
  *(v7 + 48) = v10;
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 72) = *(a2 + 72);
  v13[2] = v7 + 80;
  sub_221265BD8(a1, v13);
  v11 = a1[1];
  sub_221265D0C(v13);
  return v11;
}

void sub_221265BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221265D0C(va);
  _Unwind_Resume(a1);
}

void sub_221265BD8(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      *v8 = *v7;
      v9 = *(v7 + 16);
      v10 = *(v7 + 32);
      v11 = *(v7 + 48);
      *(v8 + 64) = *(v7 + 64);
      *(v8 + 32) = v10;
      *(v8 + 48) = v11;
      *(v8 + 16) = v9;
      v12 = *(v7 + 72);
      *(v7 + 72) = 0;
      *(v8 + 72) = v12;
      v7 += 80;
      v8 += 80;
    }

    while (v7 != v4);
    do
    {

      v5 += 80;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v13 = *a1;
  *a1 = v6;
  a1[1] = v13;
  a2[1] = v13;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

void sub_221265CB4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t sub_221265D0C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void TSCECellCoordSet::_addCellRect(TSCECellCoordSet *this, TSUCellRect *a2)
{
  if (TSUCellRect::isValid(a2))
  {
    v4 = TSUCellRect::rows(a2);
    v6 = v5;
    v14.location = v4;
    v14.length = v6;
    TSUIndexRange::TSUIndexRange(&v11, v14);
    TSUIndexSet::TSUIndexSet(&v12, &v11);
    Column = TSUCellRect::firstColumn(a2);
    v8 = TSUCellRect::lastColumn(a2);
    v10 = Column;
    if (Column <= v8)
    {
      do
      {
        v11._begin = &v10;
        v9 = sub_221268CA0(&this->_rowsPerColumn, &v10, &unk_2217E0E50, &v11, &v13);
        TSUIndexSet::addIndexes((v9 + 5), &v12);
        ++v10;
      }

      while (v8 >= v10);
    }

    TSUIndexSet::~TSUIndexSet(&v12);
  }
}

void *TSCECellCoordSet::_addComplexCellCoordSet(TSCECellCoordSet *this, const TSCECellCoordSet *a2)
{
  if (TSUCellRect::isValid(&a2->_rectRepresentation))
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "void TSCECellCoordSet::_addComplexCellCoordSet(const TSCECellCoordSet &)", v5);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellCoordSet.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 33, 0, "Handed a simple set to the complex adder!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  begin_node = this->_rowsPerColumn.__tree_.__begin_node_;
  p_rowsPerColumn = &this->_rowsPerColumn;
  v16 = begin_node;
  v18 = a2->_rowsPerColumn.__tree_.__begin_node_;
  p_end_node = &a2->_rowsPerColumn.__tree_.__end_node_;
  v20 = begin_node == p_rowsPerColumn + 1 || v18 == p_end_node;
  if (!v20)
  {
    do
    {
      v21 = *(v16 + 16);
      v22 = v18[16];
      if (v21 >= v22)
      {
        if (v22 >= v21)
        {
          TSUIndexSet::addIndexes((v16 + 5), (v18 + 20));
          v27 = v16[1];
          if (v27)
          {
            do
            {
              v28 = v27;
              v27 = *v27;
            }

            while (v27);
          }

          else
          {
            do
            {
              v28 = v16[2];
              v20 = *v28 == v16;
              v16 = v28;
            }

            while (!v20);
          }

          v29 = *(v18 + 1);
          if (v29)
          {
            do
            {
              v18 = v29;
              v29 = *v29;
            }

            while (v29);
          }

          else
          {
            do
            {
              v30 = v18;
              v18 = *(v18 + 2);
            }

            while (*v18 != v30);
          }

          v16 = v28;
        }

        else
        {
          sub_221268E34(p_rowsPerColumn, v16, v18 + 16, (v18 + 16));
          v25 = *(v18 + 1);
          if (v25)
          {
            do
            {
              v18 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v18;
              v18 = *(v18 + 2);
            }

            while (*v18 != v26);
          }
        }
      }

      else
      {
        v23 = v16[1];
        if (v23)
        {
          do
          {
            v16 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v16;
            v16 = v16[2];
          }

          while (*v16 != v24);
        }
      }
    }

    while (v16 != p_rowsPerColumn + 1 && v18 != p_end_node);
  }

  return sub_221266060(p_rowsPerColumn, v18, p_end_node);
}

void *sub_221266060(void *result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_221268E34(v5, (v5 + 8), v4 + 16, (v4 + 16));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *TSCECellCoordSet::_convertToComplexRepresentation(TSCECellCoordSet *this, const char *a2, uint64_t a3, uint64_t a4)
{
  if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCECellCoordSet::_convertToComplexRepresentation()", a4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellCoordSet.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 72, 0, "Asked to go complex when we're already complex!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  rectRepresentation = this->_rectRepresentation;
  sub_22107C860(&this->_rowsPerColumn, this->_rowsPerColumn.__tree_.__end_node_.__left_);
  this->_rectRepresentation.size = 0;
  this->_rowsPerColumn.__tree_.__begin_node_ = &this->_rowsPerColumn.__tree_.__end_node_;
  this->_rowsPerColumn.__tree_.__size_ = 0;
  this->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  this->_rectRepresentation.origin = 0;
  TSCECellCoordSet::_addCellRect(this, &rectRepresentation);
  this->_rectRepresentation = xmmword_2217E0E40;
  v14 = rectRepresentation.size.numberOfColumns * rectRepresentation.size.numberOfRows;
  result = TSCECellCoordSet::count(this);
  if (result != v14)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "void TSCECellCoordSet::_convertToComplexRepresentation()", v17);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellCoordSet.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 79, 0, "expected equality between %{public}s and %{public}s", "oldRectRepresentation.count()", "count()", *&rectRepresentation.origin);

    return objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  return result;
}

void TSCECellCoordSet::clear(TSCECellCoordSet *this)
{
  p_end_node = &this->_rowsPerColumn.__tree_.__end_node_;
  sub_22107C860(&this->_rowsPerColumn, this->_rowsPerColumn.__tree_.__end_node_.__left_);
  this->_rectRepresentation.size = 0;
  this->_rowsPerColumn.__tree_.__begin_node_ = p_end_node;
  this->_rowsPerColumn.__tree_.__size_ = 0;
  p_end_node->__left_ = 0;
  this->_rectRepresentation.origin = 0;
}

uint64_t TSCECellCoordSet::count(TSCECellCoordSet *this)
{
  if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    return this->_rectRepresentation.size.numberOfColumns * this->_rectRepresentation.size.numberOfRows;
  }

  begin_node = this->_rowsPerColumn.__tree_.__begin_node_;
  p_end_node = &this->_rowsPerColumn.__tree_.__end_node_;
  if (begin_node == &this->_rowsPerColumn.__tree_.__end_node_)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = TSUIndexSet::count(&begin_node[5]);
    left = begin_node[1].__left_;
    if (left)
    {
      do
      {
        v6 = left;
        left = left->__left_;
      }

      while (left);
    }

    else
    {
      do
      {
        v6 = begin_node[2].__left_;
        v7 = v6->__left_ == begin_node;
        begin_node = v6;
      }

      while (!v7);
    }

    v3 += v4;
    begin_node = v6;
  }

  while (v6 != p_end_node);
  return v3;
}

void TSCECellCoordSet::TSCECellCoordSet(TSCECellCoordSet *this, const TSCECellCoordSet *a2)
{
  this->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  this->_rowsPerColumn.__tree_.__begin_node_ = &this->_rowsPerColumn.__tree_.__end_node_;
  this->_rowsPerColumn.__tree_.__size_ = 0;
  if (this != a2)
  {
    sub_221269108(&this->_rowsPerColumn.__tree_.__begin_node_, a2->_rowsPerColumn.__tree_.__begin_node_, &a2->_rowsPerColumn.__tree_.__end_node_.__left_);
  }

  this->_rectRepresentation = a2->_rectRepresentation;
}

_OWORD *TSCECellCoordSet::operator=(_OWORD *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_221269108(a1 + 2, *(a2 + 16), (a2 + 24));
  }

  *a1 = *a2;
  return a1;
}

TSCECellCoordSet *TSCECellCoordSet::addCellCoord(TSCECellCoordSet *this, TSUCellCoord *a2)
{
  v3 = this;
  if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) == 0 && !*&this->_rectRepresentation.size)
  {
    this->_rectRepresentation.origin = *a2;
    this->_rectRepresentation.size = 0x100000001;
    return this;
  }

  if (TSUCellRect::isValid(&this->_rectRepresentation))
  {
    v4 = *a2;
    this = TSUCellRect::contains(&v3->_rectRepresentation, v4);
    if (this)
    {
      return this;
    }

    TSCECellCoordSet::_convertToComplexRepresentation(v3, v5, v6, v7);
  }

  return sub_221266508(v3, a2);
}

uint64_t sub_221266508(uint64_t a1, unsigned __int16 *a2)
{
  v5 = (a2 + 2);
  v2 = sub_221268CA0(a1 + 16, a2 + 2, &unk_2217E0E50, &v5, &v4);
  return TSUIndexSet::addIndex((v2 + 5));
}

uint64_t TSCECellCoordSet::addCellCoords(TSCECellCoordSet *this, const char *a2, TSUIndexSet *a3, uint64_t a4)
{
  v8 = a2;
  if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    TSCECellCoordSet::_convertToComplexRepresentation(this, a2, a3, a4);
  }

  result = TSUIndexSet::count(a3);
  if (result)
  {
    v10 = &v8;
    v7 = sub_221268CA0(&this->_rowsPerColumn, &v8, &unk_2217E0E50, &v10, &v9);
    return TSUIndexSet::addIndexes((v7 + 5), a3);
  }

  return result;
}

void TSCECellCoordSet::addCellCoords(TSCECellCoordSet *this, TSUCellRect *a2)
{
  if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) == 0 && !*&this->_rectRepresentation.size)
  {
    this->_rectRepresentation = *a2;
    return;
  }

  if (TSUCellRect::isValid(&this->_rectRepresentation))
  {
    if (TSUCellRect::contains(&this->_rectRepresentation, a2))
    {
      return;
    }

    TSCECellCoordSet::_convertToComplexRepresentation(this, v4, v5, v6);
  }

  TSCECellCoordSet::_addCellRect(this, a2);
}

void TSCECellCoordSet::addCellCoords(TSCECellCoordSet *this, TSCECellCoordSet *a2)
{
  if ((*&a2->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) != 0 || *&a2->_rectRepresentation.size)
  {
    if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) != 0 || *&this->_rectRepresentation.size)
    {
      if (TSUCellRect::isValid(&this->_rectRepresentation) && TSUCellRect::isValid(&a2->_rectRepresentation))
      {
        if (TSUCellRect::contains(&a2->_rectRepresentation, &this->_rectRepresentation))
        {
          this->_rectRepresentation = a2->_rectRepresentation;
        }

        else if ((TSUCellRect::contains(&this->_rectRepresentation, &a2->_rectRepresentation) & 1) == 0)
        {
          TSCECellCoordSet::_convertToComplexRepresentation(this, v9, v10, v11);

          sub_221266844(this, a2);
        }
      }

      else
      {
        if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
        {
          TSCECellCoordSet::_convertToComplexRepresentation(this, v6, v7, v8);
        }

        if ((*&a2->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) != 0 || *&a2->_rectRepresentation.size)
        {
          if (TSUCellRect::isValid(&a2->_rectRepresentation))
          {

            TSCECellCoordSet::_addCellRect(this, &a2->_rectRepresentation);
          }

          else
          {

            TSCECellCoordSet::_addComplexCellCoordSet(this, a2);
          }
        }
      }
    }

    else
    {
      this->_rectRepresentation = a2->_rectRepresentation;
      if (this != a2 && (*&a2->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
      {
        begin_node = a2->_rowsPerColumn.__tree_.__begin_node_;
        p_rowsPerColumn = &this->_rowsPerColumn;

        sub_221269108(p_rowsPerColumn, begin_node, &a2->_rowsPerColumn.__tree_.__end_node_.__left_);
      }
    }
  }
}

void sub_221266844(TSCECellCoordSet *a1, TSCECellCoordSet *this)
{
  if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) != 0 || *&this->_rectRepresentation.size)
  {
    if (TSUCellRect::isValid(&this->_rectRepresentation))
    {

      TSCECellCoordSet::_addCellRect(a1, &this->_rectRepresentation);
    }

    else
    {

      TSCECellCoordSet::_addComplexCellCoordSet(a1, this);
    }
  }
}

uint64_t TSCECellCoordSet::removeCellCoord(TSCECellCoordSet *this, const TSUCellCoord *a2)
{
  if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    v4 = *a2;
    result = TSUCellRect::contains(&this->_rectRepresentation, v4);
    if (!result)
    {
      return result;
    }

    TSCECellCoordSet::_convertToComplexRepresentation(this, v6, v7, v8);
  }

  left = this->_rowsPerColumn.__tree_.__end_node_.__left_;
  if (left)
  {
    column = a2->column;
    p_end_node = &this->_rowsPerColumn.__tree_.__end_node_;
    do
    {
      left_low = LOWORD(left[4].__left_);
      v13 = left_low >= column;
      v14 = left_low < column;
      if (v13)
      {
        p_end_node = left;
      }

      left = left[v14].__left_;
    }

    while (left);
    if (p_end_node != &this->_rowsPerColumn.__tree_.__end_node_ && column >= LOWORD(p_end_node[4].__left_))
    {
      TSUIndexSet::removeIndex(&p_end_node[5]);
      if (!TSUIndexSet::count(&p_end_node[5]))
      {
        sub_221269428(&this->_rowsPerColumn, &a2->column);
      }
    }
  }

  result = TSCECellCoordSet::isEmpty(this);
  if (result)
  {
    this->_rectRepresentation.origin = 0;
    this->_rectRepresentation.size = 0;
  }

  return result;
}

BOOL TSCECellCoordSet::isEmpty(TSCECellCoordSet *this)
{
  v1 = *&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL;
  if (v1 == 0x7FFF7FFFFFFFLL)
  {
    begin_node = this->_rowsPerColumn.__tree_.__begin_node_;
    p_end_node = &this->_rowsPerColumn.__tree_.__end_node_;
    v2 = 1;
    if (begin_node == &this->_rowsPerColumn.__tree_.__end_node_)
    {
      return v2;
    }

    while (1)
    {
      v5 = TSUIndexSet::count(&begin_node[5]);
      if (v5)
      {
        break;
      }

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v7 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v7 = begin_node[2].__left_;
          v8 = v7->__left_ == begin_node;
          begin_node = v7;
        }

        while (!v8);
      }

      v2 = (v5 == 0) & v2;
      begin_node = v7;
      if (v7 == p_end_node)
      {
        return v2;
      }
    }

    return 0;
  }

  if (v1)
  {
    return 0;
  }

  return *&this->_rectRepresentation.size == 0;
}

void TSCECellCoordSet::removeCellCoords(TSCECellCoordSet *this, TSCECellCoordSet *a2)
{
  if (!TSCECellCoordSet::isEmpty(this) && !TSCECellCoordSet::isEmpty(a2))
  {
    if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
    {
      TSCECellCoordSet::_convertToComplexRepresentation(this, v4, v5, v6);
    }

    __p = 0;
    v34 = 0;
    v35 = 0;
    if ((*&a2->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
    {
      begin_node = a2->_rowsPerColumn.__tree_.__begin_node_;
      p_end_node = &a2->_rowsPerColumn.__tree_.__end_node_;
      if (begin_node != p_end_node)
      {
        v9 = &this->_rowsPerColumn.__tree_.__end_node_;
        do
        {
          left = v9->__left_;
          if (v9->__left_)
          {
            left_low = LOWORD(begin_node[4].__left_);
            v12 = &this->_rowsPerColumn.__tree_.__end_node_;
            do
            {
              v13 = LOWORD(left[4].__left_);
              v14 = v13 >= left_low;
              v15 = v13 < left_low;
              if (v14)
              {
                v12 = left;
              }

              left = left[v15].__left_;
            }

            while (left);
            if (v12 != v9 && left_low >= LOWORD(v12[4].__left_))
            {
              TSUIndexSet::removeIndexes(&v12[5], &begin_node[5]);
              if (!TSUIndexSet::count(&v12[5]))
              {
                sub_221266D14(&__p, &begin_node[4]);
              }
            }
          }

          v16 = begin_node[1].__left_;
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = v16->__left_;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = begin_node[2].__left_;
              v24 = v17->__left_ == begin_node;
              begin_node = v17;
            }

            while (!v24);
          }

          begin_node = v17;
        }

        while (v17 != p_end_node);
      }
    }

    else
    {
      v18 = TSUCellRect::rows(&a2->_rectRepresentation);
      v20 = v19;
      v36.location = v18;
      v36.length = v20;
      TSUIndexRange::TSUIndexRange(&v32, v36);
      v21 = this->_rowsPerColumn.__tree_.__begin_node_;
      if (v21 != &this->_rowsPerColumn.__tree_.__end_node_)
      {
        do
        {
          v22 = LOWORD(v21[4].__left_);
          v23 = HIDWORD(*&a2->_rectRepresentation.origin);
          v24 = *&a2->_rectRepresentation.origin != 0x7FFFFFFF && (*&a2->_rectRepresentation.origin & 0xFFFF00000000) == 0x7FFF00000000;
          if (v24 || v22 >= v23)
          {
            size = a2->_rectRepresentation.size;
            v26 = v23 + LOWORD(size.numberOfColumns) - 1;
            if (size.numberOfColumns)
            {
              v27 = WORD2(*&a2->_rectRepresentation.origin) == 0x7FFF;
            }

            else
            {
              v27 = 1;
            }

            if (v27)
            {
              v26 = 0x7FFF;
            }

            if (v22 > v26)
            {
              break;
            }

            TSUIndexSet::removeIndexesInRange(&v21[5], &v32);
            if (!TSUIndexSet::count(&v21[5]))
            {
              sub_221266D14(&__p, &v21[4]);
            }
          }

          origin = v21[1].__left_;
          if (origin)
          {
            do
            {
              v29 = origin;
              origin = origin->_rectRepresentation.origin;
            }

            while (origin);
          }

          else
          {
            do
            {
              v29 = v21[2].__left_;
              v24 = *&v29->_rectRepresentation.origin == v21;
              v21 = v29;
            }

            while (!v24);
          }

          v21 = v29;
        }

        while (v29 != &this->_rowsPerColumn.__tree_.__end_node_);
      }
    }

    v30 = __p;
    v31 = v34;
    while (v30 != v31)
    {
      LOWORD(v32._begin) = *v30;
      sub_221269428(&this->_rowsPerColumn, &v32);
      ++v30;
    }

    if (TSCECellCoordSet::isEmpty(this))
    {
      this->_rectRepresentation.origin = 0;
      this->_rectRepresentation.size = 0;
    }

    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }
  }
}

void sub_221266CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221266D14(const void **a1, unsigned __int16 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      sub_22107C148();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_22115DB94(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 2;
  }

  a1[1] = v6;
}

TSUCellCoord TSCECellCoordSet::popAnyCellCoord(TSCECellCoordSet *this)
{
  v3 = TSCECellCoordSet::anyCellCoord(this);
  if ((*&v3 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    TSCECellCoordSet::removeCellCoord(this, &v3);
  }

  if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL && TSCECellCoordSet::isEmpty(this))
  {
    this->_rectRepresentation.origin = 0;
    this->_rectRepresentation.size = 0;
  }

  return v3;
}

unint64_t TSCECellCoordSet::anyCellCoord(TSCECellCoordSet *this)
{
  origin = this->_rectRepresentation.origin;
  v2 = *&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL;
  if (v2 == 0x7FFF7FFFFFFFLL)
  {
    begin_node = this->_rowsPerColumn.__tree_.__begin_node_;
    p_end_node = &this->_rowsPerColumn.__tree_.__end_node_;
    if (begin_node == &this->_rowsPerColumn.__tree_.__end_node_)
    {
      v4 = 0;
      LOWORD(v3) = 0x7FFF;
      LODWORD(this) = 0x7FFFFFFF;
    }

    else
    {
      do
      {
        LOWORD(v3) = begin_node[4].__left_;
        this = TSUIndexSet::firstIndex(&begin_node[5]);
        if (this != 0x80000000)
        {
          v4 = 0;
          return v4 | (v3 << 32) | this;
        }

        left = begin_node[1].__left_;
        if (left)
        {
          do
          {
            v9 = left;
            left = left->__left_;
          }

          while (left);
        }

        else
        {
          do
          {
            v9 = begin_node[2].__left_;
            v5 = v9->__left_ == begin_node;
            begin_node = v9;
          }

          while (!v5);
        }

        begin_node = v9;
      }

      while (v9 != p_end_node);
      v4 = 0;
      LOWORD(v3) = 0x7FFF;
      LODWORD(this) = 0x7FFFFFFF;
    }
  }

  else
  {
    v3 = HIDWORD(*&origin);
    v4 = *&origin & 0xFFFF000000000000;
    if (v2)
    {
      this = this->_rectRepresentation.origin;
    }

    else
    {
      v5 = *&this->_rectRepresentation.size == 0;
      if (this->_rectRepresentation.size)
      {
        LODWORD(this) = this->_rectRepresentation.origin;
      }

      else
      {
        LODWORD(this) = 0x7FFFFFFF;
      }

      if (v5)
      {
        LOWORD(v3) = 0x7FFF;
        v4 = 0;
      }
    }
  }

  return v4 | (v3 << 32) | this;
}

uint64_t TSCECellCoordSet::operator==(TSCECellCoordSet *this, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (*a2 & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    v4 = TSCECellCoordSet::count(this);
    if (v4 == TSCECellCoordSet::count(a2))
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = sub_221267330;
      v8[3] = &unk_278461FB8;
      v8[4] = &v9;
      v8[5] = a2;
      TSCECellCoordSet::enumerateCoordsUsingBlock(this, v8);
      v5 = *(v10 + 24);
    }

    else
    {
      v5 = 0;
      *(v10 + 24) = 0;
    }
  }

  else
  {
    if (TSUCellRect::isEmpty(&this->_rectRepresentation) && (TSUCellRect::isEmpty(a2) & 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      v5 = *&this->_rectRepresentation.origin == *a2 && ((*a2 ^ *&this->_rectRepresentation.origin) & 0x101FFFF00000000) == 0 && *&this->_rectRepresentation.size == *(a2 + 8);
    }

    *(v10 + 24) = v5;
  }

  _Block_object_dispose(&v9, 8);
  return v5 & 1;
}

void sub_221267100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void TSCECellCoordSet::enumerateCoordsUsingBlock(void *a1, void *a2)
{
  v3 = a2;
  if ((*a1 & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3812000000;
    v19 = sub_221267EDC;
    v20 = nullsub_32;
    v21 = &unk_22188E88F;
    v22 = 0;
    v4 = a1[2];
    v5 = a1 + 3;
    if (v4 != a1 + 3)
    {
      do
      {
        *(v17 + 26) = *(v4 + 16);
        v6 = objc_autoreleasePoolPush();
        v12 = 0;
        v13 = &v12;
        v14 = 0x2020000000;
        v15 = 0;
        v11 = v3;
        TSUIndexSet::enumerateIndexesUsingBlock();
        v7 = *(v13 + 24);

        _Block_object_dispose(&v12, 8);
        objc_autoreleasePoolPop(v6);
        if (v7)
        {
          break;
        }

        v8 = v4[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v4[2];
            v10 = *v9 == v4;
            v4 = v9;
          }

          while (!v10);
        }

        v4 = v9;
      }

      while (v9 != v5);
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    TSUCellRect::enumerateCoordinatesUsingBlock();
  }
}

uint64_t sub_221267330(uint64_t a1, const TSUCellCoord *a2, _BYTE *a3)
{
  result = TSCECellCoordSet::containsCellCoord(*(a1 + 40), a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t TSCECellCoordSet::containsCellCoord(TSCECellCoordSet *this, const TSUCellCoord *a2)
{
  if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    left = this->_rowsPerColumn.__tree_.__end_node_.__left_;
    p_end_node = &this->_rowsPerColumn.__tree_.__end_node_;
    v3 = left;
    if (!left)
    {
      return 0;
    }

    column = a2->column;
    v6 = p_end_node;
    do
    {
      left_low = LOWORD(v3[4].__left_);
      v8 = left_low >= column;
      v9 = left_low < column;
      if (v8)
      {
        v6 = v3;
      }

      v3 = v3[v9].__left_;
    }

    while (v3);
    if (v6 != p_end_node && column >= LOWORD(v6[4].__left_))
    {
      return TSUIndexSet::containsIndex(&v6[5]);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = *a2;
    return TSUCellRect::contains(&this->_rectRepresentation, v11);
  }
}

uint64_t TSCECellCoordSet::intersectsRange(TSCECellCoordSet *this, TSCERangeCoordinate *a2)
{
  if (TSCERangeCoordinate::isValid(a2))
  {
    if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
    {
      TSCERangeCoordinate::asCellRect(a2);
      v45._begin = v30;
      v45._end = v31;
      return TSUCellRect::intersects(&this->_rectRepresentation, &v45);
    }

    topLeft = a2->_topLeft;
    row = a2->_bottomRight.row;
    column = a2->_bottomRight.column;
    v45._begin = topLeft.row;
    v45._end = row;
    left = this->_rowsPerColumn.__tree_.__end_node_.__left_;
    p_end_node = &this->_rowsPerColumn.__tree_.__end_node_;
    v7 = left;
    if (left)
    {
      v10 = p_end_node;
      do
      {
        left_low = LOWORD(v7[4].__left_);
        v12 = left_low >= topLeft.column;
        v13 = left_low < topLeft.column;
        if (v12)
        {
          v10 = v7;
        }

        v7 = v7[v13].__left_;
      }

      while (v7);
      if (v10 != p_end_node)
      {
        do
        {
          if (LOWORD(v10[4].__left_) > column)
          {
            break;
          }

          if (TSUIndexSet::containsIndexesInRange(&v10[5], &v45))
          {
            return 1;
          }

          v14 = v10[1].__left_;
          if (v14)
          {
            do
            {
              v15 = v14;
              v14 = v14->__left_;
            }

            while (v14);
          }

          else
          {
            do
            {
              v15 = v10[2].__left_;
              v23 = v15->__left_ == v10;
              v10 = v15;
            }

            while (!v23);
          }

          v10 = v15;
        }

        while (v15 != p_end_node);
      }
    }

    return 0;
  }

  result = TSCERangeCoordinate::isValidOrSpanning(a2);
  if (!result)
  {
    return result;
  }

  if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    size = this->_rectRepresentation.size;
    origin = this->_rectRepresentation.origin;
    v34 = __C(origin, size);
    result = 0;
    v35 = a2->_topLeft;
    if (*&a2->_topLeft > v33)
    {
      return result;
    }

    bottomRight = a2->_bottomRight;
    if (v34 > bottomRight.row)
    {
      return result;
    }

    if (v35.column <= WORD2(v33) && WORD2(v34) <= bottomRight.column)
    {
      result = 0;
      if (v35.row != 0x7FFFFFFF && (*&v35 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        result = 0;
        if (bottomRight.row != 0x7FFFFFFF && (*&bottomRight & 0xFFFF00000000) != 0x7FFF00000000)
        {
          result = 0;
          if (v35.column <= bottomRight.column && v35.row <= bottomRight.row)
          {
            result = 0;
            if (v34 != 0x7FFFFFFF && (v34 & 0xFFFF00000000) != 0x7FFF00000000)
            {
              result = 0;
              if (v33 != 0x7FFFFFFF && (v33 & 0xFFFF00000000) != 0x7FFF00000000)
              {
                return WORD2(v34) <= WORD2(v33) && v34 <= v33;
              }
            }
          }
        }
      }

      return result;
    }

    return 0;
  }

  v19 = a2->_topLeft;
  v18 = a2->_bottomRight;
  v20 = *&a2->_topLeft & 0xFFFF00000000;
  v21 = *&v18 & 0xFFFF00000000;
  v22 = *&a2->_topLeft;
  v23 = v22 != 0x7FFFFFFF || v20 == 0x7FFF00000000;
  if (!v23 && v21 != 0x7FFF00000000)
  {
    if (v18.row == 0x7FFFFFFF)
    {
      v40 = this->_rowsPerColumn.__tree_.__end_node_.__left_;
      v39 = &this->_rowsPerColumn.__tree_.__end_node_;
      v38 = v40;
      if (v40)
      {
        v41 = a2->_bottomRight.column;
        v42 = v39;
        do
        {
          v19.row = LOWORD(v38[4].__left_);
          v12 = v19.row >= v19.column;
          v19.row = v19.row < v19.column;
          if (v12)
          {
            v42 = v38;
          }

          v38 = v38[v19.row].__left_;
        }

        while (v38);
        if (v42 != v39)
        {
          while (LOWORD(v42[4].__left_) <= v41)
          {
            if (TSUIndexSet::count(&v42[5]))
            {
              return 1;
            }

            v43 = v42[1].__left_;
            if (v43)
            {
              do
              {
                v44 = v43;
                v43 = v43->__left_;
              }

              while (v43);
            }

            else
            {
              do
              {
                v44 = v42[2].__left_;
                v23 = v44->__left_ == v42;
                v42 = v44;
              }

              while (!v23);
            }

            result = 0;
            v42 = v44;
            if (v44 == v39)
            {
              return result;
            }
          }
        }
      }
    }

    return 0;
  }

  result = 0;
  if (v22 != 0x7FFFFFFF && v20 == 0x7FFF00000000 && v21 == 0x7FFF00000000 && v18.row != 0x7FFFFFFFLL)
  {
    v25 = a2->_bottomRight.row;
    v45._begin = *&a2->_topLeft;
    v45._end = v25;
    begin_node = this->_rowsPerColumn.__tree_.__begin_node_;
    v27 = &this->_rowsPerColumn.__tree_.__end_node_;
    if (begin_node != v27)
    {
      while (1)
      {
        result = TSUIndexSet::containsIndexesInRange(&begin_node[5], &v45);
        if (result)
        {
          break;
        }

        v28 = begin_node[1].__left_;
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = v28->__left_;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = begin_node[2].__left_;
            v23 = v29->__left_ == begin_node;
            begin_node = v29;
          }

          while (!v23);
        }

        begin_node = v29;
        if (v29 == v27)
        {
          return result;
        }
      }

      return 1;
    }

    return 0;
  }

  return result;
}

void TSCECellCoordSet::intersectWith(TSCECellCoordSet *this, const TSCECellCoordSet *a2, uint64_t a3, uint64_t a4)
{
  origin = this->_rectRepresentation.origin;
  v7 = origin & 0x101FFFFFFFFFFFFLL;
  if ((origin & 0x101FFFFFFFFFFFFLL) == 0)
  {
    if (this->_rectRepresentation.size)
    {
      v8 = a2->_rectRepresentation.origin;
      v9 = *&a2->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL;
      if (v9)
      {
LABEL_8:
        if (v9 == 0x7FFF7FFFFFFFLL)
        {
          TSCECellCoordSet::_convertToComplexRepresentation(this, a2, *&v8, a4);
          goto LABEL_10;
        }

LABEL_59:
        this->_rectRepresentation.origin = sub_221119E0C(origin, *&this->_rectRepresentation.size, *&v8, *&a2->_rectRepresentation.size);
        this->_rectRepresentation.size = v28;
        return;
      }

      if (a2->_rectRepresentation.size)
      {
        goto LABEL_59;
      }
    }

LABEL_58:
    this->_rectRepresentation.origin = 0;
    this->_rectRepresentation.size = 0;
    return;
  }

  v8 = a2->_rectRepresentation.origin;
  v9 = *&a2->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL;
  if (!v9)
  {
    if (a2->_rectRepresentation.size)
    {
      if (v7 == 0x7FFF7FFFFFFFLL)
      {
LABEL_54:

        TSCECellCoordSet::intersectWith(this, &a2->_rectRepresentation);
        return;
      }

      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (v7 != 0x7FFF7FFFFFFFLL)
  {
    goto LABEL_8;
  }

  if (v9 != 0x7FFF7FFFFFFFLL)
  {
    goto LABEL_54;
  }

LABEL_10:
  __p = 0;
  v31 = 0;
  v32 = 0;
  begin_node = this->_rowsPerColumn.__tree_.__begin_node_;
  p_end_node = &this->_rowsPerColumn.__tree_.__end_node_;
  if (begin_node != &this->_rowsPerColumn.__tree_.__end_node_)
  {
    v12 = a2->_rowsPerColumn.__tree_.__begin_node_;
    do
    {
      if (v12 == &a2->_rowsPerColumn.__tree_.__end_node_)
      {
        break;
      }

      left_low = LOWORD(begin_node[4].__left_);
      v14 = LOWORD(v12[4].__left_);
      if (left_low >= v14)
      {
        if (v14 >= left_low)
        {
          TSUIndexSet::intersectWithIndexes(&begin_node[5], &v12[5]);
          if (!TSUIndexSet::count(&begin_node[5]))
          {
            sub_221266D14(&__p, &begin_node[4]);
          }

          left = begin_node[1].__left_;
          if (left)
          {
            do
            {
              v20 = left;
              left = left->__left_;
            }

            while (left);
          }

          else
          {
            do
            {
              v20 = begin_node[2].__left_;
              v21 = *v20 == begin_node;
              begin_node = v20;
            }

            while (!v21);
          }

          v22 = v12[1].__left_;
          if (v22)
          {
            do
            {
              v12 = v22;
              v22 = v22->__left_;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v12;
              v12 = v12[2].__left_;
            }

            while (v12->__left_ != v23);
          }

          begin_node = v20;
        }

        else
        {
          v17 = v12[1].__left_;
          if (v17)
          {
            do
            {
              v12 = v17;
              v17 = v17->__left_;
            }

            while (v17);
          }

          else
          {
            do
            {
              v18 = v12;
              v12 = v12[2].__left_;
            }

            while (v12->__left_ != v18);
          }
        }
      }

      else
      {
        sub_221266D14(&__p, &begin_node[4]);
        v15 = begin_node[1].__left_;
        if (v15)
        {
          do
          {
            begin_node = v15;
            v15 = v15->__left_;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = begin_node;
            begin_node = begin_node[2].__left_;
          }

          while (begin_node->__left_ != v16);
        }
      }
    }

    while (begin_node != p_end_node);
  }

  if (begin_node != p_end_node)
  {
    do
    {
      sub_221266D14(&__p, &begin_node[4]);
      v24 = begin_node[1].__left_;
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = v24->__left_;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = begin_node[2].__left_;
          v21 = v25->__left_ == begin_node;
          begin_node = v25;
        }

        while (!v21);
      }

      begin_node = v25;
    }

    while (v25 != p_end_node);
  }

  v26 = __p;
  v27 = v31;
  while (v26 != v27)
  {
    v29 = *v26;
    sub_221269428(&this->_rowsPerColumn, &v29);
    ++v26;
  }

  if (TSCECellCoordSet::isEmpty(this))
  {
    this->_rectRepresentation.origin = 0;
    this->_rectRepresentation.size = 0;
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }
}

void sub_221267A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TSCECellCoordSet::intersectWith(TSCECellCoordSet *this, TSUCellRect *a2)
{
  if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) == 0 && !*&this->_rectRepresentation.size || TSUCellRect::isEmpty(a2))
  {
    goto LABEL_34;
  }

  if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && TSUCellRect::isValid(a2))
  {
    this->_rectRepresentation.origin = sub_221119E0C(*&this->_rectRepresentation.origin, *&this->_rectRepresentation.size, *&a2->origin, *&a2->size);
    this->_rectRepresentation.size = v4;
    return;
  }

  if ((TSUCellRect::isValid(a2) & 1) == 0)
  {
    sub_22107C860(&this->_rowsPerColumn, this->_rowsPerColumn.__tree_.__end_node_.__left_);
    this->_rowsPerColumn.__tree_.__begin_node_ = &this->_rowsPerColumn.__tree_.__end_node_;
    this->_rowsPerColumn.__tree_.__size_ = 0;
    this->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
LABEL_34:
    this->_rectRepresentation.origin = 0;
    this->_rectRepresentation.size = 0;
    return;
  }

  if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    TSCECellCoordSet::_convertToComplexRepresentation(this, v5, v6, v7);
  }

  Column = TSUCellRect::firstColumn(a2);
  Row = TSUCellRect::firstRow(a2);
  v10 = TSUCellRect::lastColumn(a2);
  v11 = TSUCellRect::lastRow(a2);
  __p = 0;
  v25 = 0;
  v26 = 0;
  begin_node = this->_rowsPerColumn.__tree_.__begin_node_;
  if (begin_node != &this->_rowsPerColumn.__tree_.__end_node_)
  {
    v13 = v11;
    v14 = v11 + 1;
    do
    {
      left = begin_node[4].__left_;
      if (left < Column || left > v10)
      {
        goto LABEL_23;
      }

      if (Row)
      {
        v22._begin = 0;
        v22._end = (Row - 1);
        TSUIndexSet::removeIndexesInRange(&begin_node[5], &v22);
      }

      Index = TSUIndexSet::lastIndex(&begin_node[5]);
      if (Index > v13)
      {
        v22._begin = v14;
        v22._end = Index;
        TSUIndexSet::removeIndexesInRange(&begin_node[5], &v22);
      }

      if (!TSUIndexSet::count(&begin_node[5]))
      {
LABEL_23:
        sub_221266D14(&__p, &left);
      }

      origin = begin_node[1].__left_;
      if (origin)
      {
        do
        {
          v18 = origin;
          origin = origin->_rectRepresentation.origin;
        }

        while (origin);
      }

      else
      {
        do
        {
          v18 = begin_node[2].__left_;
          v19 = *&v18->_rectRepresentation.origin == begin_node;
          begin_node = v18;
        }

        while (!v19);
      }

      begin_node = v18;
    }

    while (v18 != &this->_rowsPerColumn.__tree_.__end_node_);
    v20 = __p;
    v21 = v25;
    while (v20 != v21)
    {
      LOWORD(v22._begin) = *v20;
      sub_221269428(&this->_rowsPerColumn, &v22);
      ++v20;
    }
  }

  if (TSCECellCoordSet::isEmpty(this))
  {
    this->_rectRepresentation.origin = 0;
    this->_rectRepresentation.size = 0;
  }

  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }
}

void sub_221267CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSCECellCoordSet::removeCoordsForColumns(TSCECellCoordSet *this, TSUIndexSet *a2)
{
  if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    return TSUIndexSet::enumerateIndexesUsingBlock();
  }

  v3 = TSUCellRect::columns(&this->_rectRepresentation);
  v5 = v4;
  v8.location = v3;
  v8.length = v5;
  TSUIndexRange::TSUIndexRange(&v7, v8);
  result = TSUIndexSet::containsIndexesInRange(a2, &v7);
  if (result)
  {
    return TSUIndexSet::enumerateIndexesUsingBlock();
  }

  return result;
}

uint64_t sub_221267DD8(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  return sub_221269428((v2 + 16), &v4);
}

TSCECellCoordSet *TSCECellCoordSet::removeCoordsForRows(TSCECellCoordSet *this, TSUIndexSet *a2)
{
  v3 = this;
  if (*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (v4 = TSUCellRect::rows(&this->_rectRepresentation), v6 = v5, v13.location = v4, v13.length = v6, TSUIndexRange::TSUIndexRange(&v12, v13), this = TSUIndexSet::containsIndexesInRange(a2, &v12), (this))
  {
    begin_node = v3->_rowsPerColumn.__tree_.__begin_node_;
    p_end_node = &v3->_rowsPerColumn.__tree_.__end_node_;
    if (begin_node != p_end_node)
    {
      do
      {
        this = TSUIndexSet::removeIndexes(&begin_node[5], a2);
        left = begin_node[1].__left_;
        if (left)
        {
          do
          {
            v10 = left;
            left = left->__left_;
          }

          while (left);
        }

        else
        {
          do
          {
            v10 = begin_node[2].__left_;
            v11 = v10->__left_ == begin_node;
            begin_node = v10;
          }

          while (!v11);
        }

        begin_node = v10;
      }

      while (v10 != p_end_node);
    }
  }

  return this;
}

uint64_t sub_221267EEC(void *a1, int a2, _BYTE *a3)
{
  *(*(a1[5] + 8) + 48) = a2;
  result = (*(a1[4] + 16))();
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

void TSCECellCoordSet::enumerateColumnsUsingBlock(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*a1 & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    v4 = *(a1 + 16);
    v5 = (a1 + 24);
    if (v4 != v5)
    {
      do
      {
        *&v16 = 0;
        v3[2](v3, *(v4 + 16), (v4 + 5), &v16);
        if (*&v16)
        {
          break;
        }

        v6 = v4[1];
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = v4[2];
            v8 = *v7 == v4;
            v4 = v7;
          }

          while (!v8);
        }

        v4 = v7;
      }

      while (v7 != v5);
    }
  }

  else
  {
    v9 = TSUCellRect::rows(a1);
    v11 = v10;
    v17.location = v9;
    v17.length = v11;
    TSUIndexRange::TSUIndexRange(&v15, v17);
    TSUIndexSet::TSUIndexSet(&v16, &v15);
    v13 = v3;
    *&v14 |= 3u;
    *&v12.f64[0] = 0x8000000080000000;
    *&v12.f64[1] = 0x8000000080000000;
    v14._singleRange = vnegq_f64(v12);
    v14._multipleRanges = 0;
    TSUIndexSet::operator=();
    TSUCellRect::enumerateColumnsUsingBlock();
    TSUIndexSet::~TSUIndexSet(&v14);

    TSUIndexSet::~TSUIndexSet(&v16);
  }
}

void sub_2212680E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  TSUIndexSet::~TSUIndexSet((v15 + 40));

  TSUIndexSet::~TSUIndexSet((v16 - 64));
  _Unwind_Resume(a1);
}

uint64_t sub_221268124(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = 0;
  result = (*(*(a1 + 32) + 16))(*(a1 + 32), a2, a1 + 40, &v5);
  if (v5 == 1)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t TSCECellCoordSet::minColumn(TSCECellCoordSet *this)
{
  origin = this->_rectRepresentation.origin;
  v2 = *&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL;
  if (v2 == 0x7FFF7FFFFFFFLL)
  {
    if (this->_rowsPerColumn.__tree_.__size_)
    {
      return *(this->_rowsPerColumn.__tree_.__begin_node_ + 16);
    }

    return 0x7FFF;
  }

  if (!v2 && !*&this->_rectRepresentation.size)
  {
    return 0x7FFF;
  }

  if (origin.row != 0x7FFFFFFF && (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  else
  {
    return WORD2(*&this->_rectRepresentation.origin);
  }
}

uint64_t TSCECellCoordSet::maxColumn(TSCECellCoordSet *this)
{
  origin = this->_rectRepresentation.origin;
  v2 = *&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL;
  if (v2 != 0x7FFF7FFFFFFFLL)
  {
    if (v2 || *&this->_rectRepresentation.size)
    {
      size = this->_rectRepresentation.size;
      if (size.numberOfColumns)
      {
        v4 = origin.column == 0x7FFF;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0x7FFF;
      }

      else
      {
        return (origin.column + LOWORD(size.numberOfColumns) - 1);
      }
    }

    return 0x7FFF;
  }

  if (!this->_rowsPerColumn.__tree_.__size_)
  {
    return 0x7FFF;
  }

  left = this->_rowsPerColumn.__tree_.__end_node_.__left_;
  p_end_node = &this->_rowsPerColumn.__tree_.__end_node_;
  v7 = left;
  if (left)
  {
    do
    {
      v9 = v7;
      v7 = v7[1].__left_;
    }

    while (v7);
  }

  else
  {
    do
    {
      v9 = p_end_node[2].__left_;
      v4 = v9->__left_ == p_end_node;
      p_end_node = v9;
    }

    while (v4);
  }

  return LOWORD(v9[4].__left_);
}

void TSCECellCoordSet::allRowIndexes(TSCECellCoordSet *this@<X0>, TSUIndexSet *a2@<X8>)
{
  TSUIndexSet::TSUIndexSet(a2);
  if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    begin_node = this->_rowsPerColumn.__tree_.__begin_node_;
    p_end_node = &this->_rowsPerColumn.__tree_.__end_node_;
    if (begin_node != p_end_node)
    {
      do
      {
        TSUIndexSet::addIndexes(a2, &begin_node[5]);
        left = begin_node[1].__left_;
        if (left)
        {
          do
          {
            v7 = left;
            left = left->__left_;
          }

          while (left);
        }

        else
        {
          do
          {
            v7 = begin_node[2].__left_;
            v8 = v7->__left_ == begin_node;
            begin_node = v7;
          }

          while (!v8);
        }

        begin_node = v7;
      }

      while (v7 != p_end_node);
    }
  }

  else
  {
    v9 = TSUCellRect::rows(&this->_rectRepresentation);
    v11 = v10;
    v14.location = v9;
    v14.length = v11;
    TSUIndexRange::TSUIndexRange(&v12, v14);
    TSUIndexSet::TSUIndexSet(&v13, &v12);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v13);
  }
}

void sub_221268374(_Unwind_Exception *a1, uint64_t a2, TSUIndexSet *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  TSUIndexSet::~TSUIndexSet(&a11);
  TSUIndexSet::~TSUIndexSet(v11);
  _Unwind_Resume(a1);
}

uint64_t TSCECellCoordSet::boundingBox(TSCECellCoordSet *this)
{
  origin = this->_rectRepresentation.origin;
  v3 = *&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL;
  if (v3 == 0x7FFF7FFFFFFFLL)
  {
    begin_node = this->_rowsPerColumn.__tree_.__begin_node_;
    p_end_node = &this->_rowsPerColumn.__tree_.__end_node_;
    if (begin_node == &this->_rowsPerColumn.__tree_.__end_node_)
    {
      v7 = 0;
      v8 = 0x7FFFFFFF;
    }

    else
    {
      v7 = 0;
      v8 = 0x7FFFFFFF;
      do
      {
        if (TSUIndexSet::count(&begin_node[5]))
        {
          Index = TSUIndexSet::firstIndex(&begin_node[5]);
          if (v8 >= Index)
          {
            v8 = Index;
          }

          v10 = TSUIndexSet::lastIndex(&begin_node[5]);
          if (v7 <= v10)
          {
            v7 = v10;
          }
        }

        left = begin_node[1].__left_;
        if (left)
        {
          do
          {
            v12 = left;
            left = left->__left_;
          }

          while (left);
        }

        else
        {
          do
          {
            v12 = begin_node[2].__left_;
            v13 = v12->__left_ == begin_node;
            begin_node = v12;
          }

          while (!v13);
        }

        begin_node = v12;
      }

      while (v12 != p_end_node);
    }

    origin = 0x7FFF7FFFFFFFLL;
    v14 = TSCECellCoordSet::minColumn(this);
    v15 = TSCECellCoordSet::maxColumn(this);
    if (v8 != 0x7FFFFFFF && v14 != 0x7FFF)
    {
      v16 = v7;
      if (v7 != 0x7FFFFFFF)
      {
        v17 = v15;
        if (v15 != 0x7FFF)
        {
          if ((v8 | (v14 << 32)) != 0x7FFF7FFFFFFFLL)
          {
            if ((v7 | (v15 << 32)) == 0x7FFF7FFFFFFFLL || v8 == v7 && v14 == v15)
            {
              v16 = v8;
              v17 = v14;
            }

            else
            {
              if (v14 >= v15)
              {
                v18 = v15;
              }

              else
              {
                v18 = v14;
              }

              if (v8 >= v7)
              {
                v16 = v7;
              }

              else
              {
                v16 = v8;
              }

              v17 = v18;
            }
          }

          return v16 | (v17 << 32);
        }
      }
    }
  }

  else if (!v3 && !*&this->_rectRepresentation.size)
  {
    return 0x7FFF7FFFFFFFLL;
  }

  return origin;
}

void TSCECellCoordSet::encodeToArchive(TSCECellCoordSet *this, TSCE::CellCoordSetArchive *a2)
{
  if ((*&this->_rectRepresentation.origin & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    begin_node = this->_rowsPerColumn.__tree_.__begin_node_;
    p_end_node = &this->_rowsPerColumn.__tree_.__end_node_;
    if (begin_node != &this->_rowsPerColumn.__tree_.__end_node_)
    {
      while (1)
      {
        left_low = LOWORD(begin_node[4].__left_);
        if (TSUIndexSet::firstIndex(&begin_node[5]) != 0x80000000)
        {
          break;
        }

LABEL_16:
        left = begin_node[1].__left_;
        if (left)
        {
          do
          {
            v16 = left;
            left = left->__left_;
          }

          while (left);
        }

        else
        {
          do
          {
            v16 = begin_node[2].__left_;
            v17 = v16->__left_ == begin_node;
            begin_node = v16;
          }

          while (!v17);
        }

        begin_node = v16;
        if (v16 == p_end_node)
        {
          return;
        }
      }

      v6 = *(a2 + 4);
      if (!v6)
      {
        goto LABEL_9;
      }

      v7 = *(a2 + 6);
      v8 = *v6;
      if (v7 < *v6)
      {
        *(a2 + 6) = v7 + 1;
        v9 = *&v6[2 * v7 + 2];
LABEL_11:
        v12 = *(v9 + 16);
        *(v9 + 32) = left_low;
        *(v9 + 16) = v12 | 3;
        v13 = *(v9 + 24);
        if (!v13)
        {
          v14 = *(v9 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v14);
          *(v9 + 24) = v13;
        }

        sub_22126A644(&begin_node[5], v13);
        goto LABEL_16;
      }

      if (v8 == *(a2 + 7))
      {
LABEL_9:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
        v6 = *(a2 + 4);
        v8 = *v6;
      }

      *v6 = v8 + 1;
      v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive_ColumnEntry>(*(a2 + 2));
      v10 = *(a2 + 6);
      v11 = *(a2 + 4) + 8 * v10;
      *(a2 + 6) = v10 + 1;
      *(v11 + 8) = v9;
      goto LABEL_11;
    }
  }

  else
  {
    v18 = TSUCellRect::rows(&this->_rectRepresentation);
    v20 = v19;
    v25.location = v18;
    v25.length = v20;
    TSUIndexRange::TSUIndexRange(&v23, v25);
    TSUIndexSet::TSUIndexSet(&v24, &v23);
    *&v22 = -1;
    *&v21.f64[0] = 0x8000000080000000;
    *&v21.f64[1] = 0x8000000080000000;
    v22._singleRange = vnegq_f64(v21);
    v22._multipleRanges = 0;
    TSUIndexSet::operator=();
    TSUCellRect::enumerateColumnsUsingBlock();
    TSUIndexSet::~TSUIndexSet(&v22);
    TSUIndexSet::~TSUIndexSet(&v24);
  }
}

void sub_2212687B4(_Unwind_Exception *a1)
{
  TSUIndexSet::~TSUIndexSet((v1 + 40));
  TSUIndexSet::~TSUIndexSet((v2 - 80));
  _Unwind_Resume(a1);
}

uint64_t sub_2212687D8(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = *(v4 + 24);
  v7 = *v5;
  if (v6 < *v5)
  {
    *(v4 + 24) = v6 + 1;
    v8 = *&v5[2 * v6 + 2];
    goto LABEL_8;
  }

  if (v7 == *(v4 + 28))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 16));
    v5 = *(v4 + 32);
    v7 = *v5;
  }

  *v5 = v7 + 1;
  v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive_ColumnEntry>(*(v4 + 16));
  v9 = *(v4 + 24);
  v10 = *(v4 + 32) + 8 * v9;
  *(v4 + 24) = v9 + 1;
  *(v10 + 8) = v8;
LABEL_8:
  v11 = *(v8 + 16);
  *(v8 + 32) = a2;
  *(v8 + 16) = v11 | 3;
  v12 = *(v8 + 24);
  if (!v12)
  {
    v13 = *(v8 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v13);
    *(v8 + 24) = v12;
  }

  return sub_22126A644(a1 + 40, v12);
}

void TSCECellCoordSet::loadFromArchive(TSCECellCoordSet *this, const TSCE::CellCoordSetArchive *a2)
{
  TSUIndexSet::TSUIndexSet(&v39);
  TSUIndexSet::TSUIndexSet((&v38 + 2));
  sub_22107C860(&this->_rowsPerColumn, this->_rowsPerColumn.__tree_.__end_node_.__left_);
  this->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  this->_rowsPerColumn.__tree_.__size_ = 0;
  this->_rowsPerColumn.__tree_.__begin_node_ = &this->_rowsPerColumn.__tree_.__end_node_;
  v4 = *(a2 + 6);
  if (v4 < 1)
  {
    goto LABEL_24;
  }

  v5 = 1;
  v6 = 8;
  do
  {
    v7 = *(*(a2 + 4) + v6);
    *&v38 = *(v7 + 32);
    v8 = *(v7 + 24);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = &TSCE::_IndexSetArchive_default_instance_;
    }

    sub_22126A778(v9, &v37);
    if (TSUIndexSet::count(&v37))
    {
      v41 = &v38;
      sub_221268CA0(&this->_rowsPerColumn, &v38, &unk_2217E0E50, &v41, &v40);
      TSUIndexSet::operator=();
      if (!TSUIndexSet::count((&v38 + 2)))
      {
        v5 = (*&v37 & 1) == 0 && ((*&v37 & 2) != 0 || *(v37._multipleRanges + 1) == 1);
        TSUIndexSet::operator=();
      }

      if (v5)
      {
        v5 = TSUIndexSet::operator==();
      }

      else
      {
        v5 = 0;
      }

      TSUIndexSet::addIndex(&v39);
    }

    TSUIndexSet::~TSUIndexSet(&v37);
    v6 += 8;
    --v4;
  }

  while (v4);
  if (v5)
  {
LABEL_24:
    if ((*&v39 & 1) == 0 && ((*&v39 & 2) != 0 || *(v39._multipleRanges + 1) == 1))
    {
      v10 = TSUIndexSet::firstIndex(&v39);
      v11 = TSUIndexSet::lastIndex(&v39);
      Index = TSUIndexSet::firstIndex((&v38 + 2));
      v13 = TSUIndexSet::lastIndex((&v38 + 2));
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v36 = v13;
        v16 = MEMORY[0x277D81150];
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", v15);
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v19);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 168, 0, "Invalid column range");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
        v13 = v36;
      }

      if (Index == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = MEMORY[0x277D81150];
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", v15);
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v28);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 169, 0, "Invalid row range");
        v31 = 0x7FFF7FFFFFFFLL;

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
        v35 = 0;
      }

      else
      {
        v35 = 0;
        v31 = 0x7FFF7FFFFFFFLL;
        if (v10 != 0x7FFFFFFFFFFFFFFFLL && v11 - v10 != -1 && v13 - Index != -1)
        {
          v31 = Index | (v10 << 32);
          v35 = (v11 - v10 + 1) | ((v13 - Index + 1) << 32);
        }
      }

      this->_rectRepresentation.origin = v31;
      this->_rectRepresentation.size = v35;
      goto LABEL_35;
    }
  }

  if (!TSUIndexSet::count(&v39))
  {
    this->_rectRepresentation.origin = 0;
    this->_rectRepresentation.size = 0;
LABEL_35:
    sub_22107C860(&this->_rowsPerColumn, this->_rowsPerColumn.__tree_.__end_node_.__left_);
    this->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
    this->_rowsPerColumn.__tree_.__size_ = 0;
    this->_rowsPerColumn.__tree_.__begin_node_ = &this->_rowsPerColumn.__tree_.__end_node_;
    goto LABEL_36;
  }

  this->_rectRepresentation = xmmword_2217E0E40;
LABEL_36:
  TSUIndexSet::~TSUIndexSet((&v38 + 2));
  TSUIndexSet::~TSUIndexSet(&v39);
}

uint64_t *sub_221268CA0(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_8:
    sub_221268D68();
  }

  v6 = *a2;
  while (1)
  {
    while (1)
    {
      v7 = v5;
      v8 = *(v5 + 32);
      if (v6 >= v8)
      {
        break;
      }

      v5 = *v7;
      if (!*v7)
      {
        goto LABEL_8;
      }
    }

    if (v8 >= v6)
    {
      return v7;
    }

    v5 = v7[1];
    if (!v5)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_221268DE8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      TSUIndexSet::~TSUIndexSet((v2 + 40));
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_221268E34(uint64_t **a1, uint64_t *a2, unsigned __int16 *a3, uint64_t a4)
{
  v4 = *sub_221268EC8(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    sub_221269070();
  }

  return v4;
}

uint64_t *sub_221268EC8(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 16), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 16) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 16))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *sub_221269108(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_2212692E8(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 16) = *(v9 + 16);
          TSUIndexSet::operator=();
          sub_221269278(v5, v14);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_2212692E8(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_22126933C(&v12);
  }

  if (a2 != a3)
  {
    sub_221269394(v5, a2 + 16);
  }

  return result;
}

void sub_221269264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22126933C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_221269278(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 16))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  sub_2210BBE8C(a1, v3, v5, a2);
  return a2;
}

void *sub_2212692E8(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_22126933C(uint64_t a1)
{
  sub_22107C860(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_22107C860(*a1, v2);
  }

  return a1;
}

uint64_t sub_221269428(uint64_t **a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 1;
  do
  {
    v5 = *(v2 + 16);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == a1 + 1 || v3 < *(v4 + 16))
  {
    return 0;
  }

  sub_22112C950(a1, v4);
  TSUIndexSet::~TSUIndexSet((v4 + 5));
  operator delete(v4);
  return 1;
}

void *sub_221269658(uint64_t a1, const UUID *a2)
{
  v4 = MEMORY[0x277D809E0];
  if (*(a1 + 32))
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = MEMORY[0x277D809E0];
  }

  TSKUIDStruct::loadFromMessage(v5, a2);
  if (*(a1 + 24))
  {
    v7 = *(a1 + 24);
  }

  else
  {
    v7 = v4;
  }

  TSKUIDStruct::loadFromMessage(v7, v6);

  return TSKMakeUIDStructCoord();
}

int *sub_2212696E0@<X0>(int *result@<X0>, const UUID *a2@<X1>, unint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  if (result[6] >= 1)
  {
    v4 = result;
    v5 = 1;
    do
    {
      v6 = TSKUIDStruct::loadFromMessage(*(*(v4 + 7) + 8 * v5), a2);
      v8 = v7;
      v11[0] = TSKUIDStruct::loadFromMessage(*(*(v4 + 4) + 8 * v5), v7);
      v11[1] = v9;
      v12 = v11;
      result = sub_22123067C(a3, v11, &unk_2217E0E51, &v12);
      *(result + 4) = v6;
      *(result + 5) = v8;
    }

    while (v5++ < v4[6]);
  }

  return result;
}

unint64_t sub_2212697C0(_DWORD *a1)
{
  v1 = a1[4];
  if (v1)
  {
    LOWORD(v3) = BYTE2(a1[6]);
    v2 = a1[6];
  }

  else
  {
    v2 = 0x7FFFFFFF;
    if ((~v1 & 6) != 0)
    {
      LOWORD(v3) = 0x7FFF;
    }

    else
    {
      v3 = a1[7];
      v4 = v3 < 0x8000;
      v5 = a1[8] >= 0;
      if (v4 && v5)
      {
        v2 = a1[8];
      }

      else
      {
        v2 = 0x7FFFFFFF;
      }

      if (!v4 || !v5)
      {
        LOWORD(v3) = 0x7FFF;
      }
    }
  }

  return v2 | (v3 << 32);
}

int *sub_221269820(int *result, _DWORD *a2)
{
  v2 = *(result + 2);
  v3 = a2[4];
  a2[4] = v3 | 2;
  v4 = *result;
  a2[4] = v3 | 6;
  a2[7] = v2;
  a2[8] = v4;
  return result;
}

int *sub_221269844(int *result, _DWORD *a2)
{
  v2 = *(result + 2);
  v3 = a2[4];
  a2[4] = v3 | 1;
  v4 = *result;
  a2[6] = v2;
  a2[7] = v4;
  v5 = *(result + 6);
  a2[4] = v3 | 7;
  v6 = result[2];
  a2[4] = v3 | 0xF;
  a2[8] = v5;
  a2[9] = v6;
  return result;
}

unint64_t sub_22126987C(_DWORD *a1)
{
  v1 = a1[7];
  v2 = a1[9];
  if (a1[8] >= a1[6])
  {
    v3 = a1[6];
  }

  else
  {
    v3 = a1[8];
  }

  if (v2 >= v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = v2;
  }

  return v4 | (v3 << 32);
}

int *sub_2212698B8(int *result, _DWORD *a2)
{
  v2 = *result;
  if (*result != 1)
  {
    a2[4] |= 1u;
    a2[6] = v2;
  }

  v3 = result[1];
  if (v3 != 1)
  {
    a2[4] |= 2u;
    a2[7] = v3;
  }

  return result;
}

_DWORD *sub_2212698FC(int *a1, uint64_t a2)
{
  *(a2 + 16) |= 1u;
  v4 = *(a2 + 24);
  if (!v4)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v5);
    *(a2 + 24) = v4;
  }

  v6 = *(a1 + 2);
  v7 = v4[4];
  v4[4] = v7 | 2;
  v8 = *a1;
  v4[4] = v7 | 6;
  v4[7] = v6;
  v4[8] = v8;
  *(a2 + 16) |= 2u;
  result = *(a2 + 32);
  if (!result)
  {
    v10 = *(a2 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSCE::ColumnRowSize>(v10);
    *(a2 + 32) = result;
  }

  v11 = a1[2];
  if (v11 != 1)
  {
    result[4] |= 1u;
    result[6] = v11;
  }

  v12 = a1[3];
  if (v12 != 1)
  {
    result[4] |= 2u;
    result[7] = v12;
  }

  return result;
}

unint64_t sub_2212699D8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = *(a1 + 24);
  }

  else
  {
    v1 = &TSCE::_CellCoordinateArchive_default_instance_;
  }

  return sub_2212697C0(v1);
}

uint64_t sub_221269A28(int *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  v4 = *(a2 + 16);
  *(a2 + 16) = v4 | 2;
  v5 = *a1;
  *(a2 + 32) = v3;
  *(a2 + 36) = v5;
  v9 = *(a1 + 2);
  *(a2 + 16) = v4 | 7;
  v6 = *(a2 + 24);
  if (!v6)
  {
    v7 = *(a2 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x223DA0300](v7);
    *(a2 + 24) = v6;
  }

  return TSKUIDStruct::saveToMessage(&v9, v6);
}

int *sub_221269AA8(int *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (v4 != 0x7FFF)
  {
    *(a2 + 16) |= 4u;
    *(a2 + 36) = v4;
  }

  v5 = *result;
  if (*result != 0x7FFFFFFF)
  {
    *(a2 + 16) |= 2u;
    *(a2 + 32) = v5;
  }

  if (*(result + 2) != 0)
  {
    *(a2 + 16) |= 1u;
    v6 = *(a2 + 24);
    if (!v6)
    {
      v7 = *(a2 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x223DA0360](v7);
      *(a2 + 24) = v6;
    }

    result = TSKUIDStruct::saveToMessage((v3 + 8), v6);
  }

  v8 = *(v3 + 24) & 1;
  v9 = *(a2 + 16);
  *(a2 + 16) = v9 | 8;
  *(a2 + 40) = v8;
  v10 = (*(v3 + 24) & 2) != 0;
  *(a2 + 16) = v9 | 0x18;
  *(a2 + 41) = v10;
  v11 = (*(v3 + 24) & 4) != 0;
  *(a2 + 16) = v9 | 0x38;
  *(a2 + 42) = v11;
  v12 = (*(v3 + 24) >> 3) & 1;
  *(a2 + 16) = v9 | 0x78;
  *(a2 + 43) = v12;
  return result;
}

uint64_t sub_221269BB4@<X0>(uint64_t result@<X0>, const UUID *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v5 = *(result + 16);
  v6 = *(result + 36);
  if ((v5 & 2) != 0)
  {
    v7 = *(result + 32);
  }

  else
  {
    v7 = 0x7FFFFFFFLL;
  }

  v8 = *(result + 40) & ((*(result + 16) & 8u) >> 3);
  v9 = *(result + 41) & ((*(result + 16) & 0x10u) >> 4);
  if (v5)
  {
    result = TSKUIDStruct::loadFromMessage(*(result + 24), a2);
    v10 = *(v3 + 16);
  }

  else
  {
    v10 = *(result + 16);
  }

  v11 = 0x100000000000000;
  if (!v8)
  {
    v11 = 0;
  }

  if ((v5 & 4) != 0)
  {
    v12 = v6;
  }

  else
  {
    v12 = 0x7FFFLL;
  }

  v13 = 0x1000000000000;
  if (!v9)
  {
    v13 = 0;
  }

  *a3 = v11 | v13 | (v12 << 32) | v7;
  *(a3 + 8) = result;
  *(a3 + 16) = a2;
  if (v9)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14 | v8 | *(a3 + 24) & 0xF0;
  *(a3 + 24) = v15;
  if ((v10 & 0x20) != 0)
  {
    if (*(v3 + 42))
    {
      v16 = 4;
    }

    else
    {
      v16 = 0;
    }

    v15 |= v16;
    *(a3 + 24) = v15;
  }

  if ((v10 & 0x40) != 0)
  {
    if (*(v3 + 43))
    {
      v17 = 8;
    }

    else
    {
      v17 = 0;
    }

    *(a3 + 24) = v15 & 0xF7 | v17;
  }

  return result;
}

uint64_t TSCERangeRefEncodeToArchive(const TSCERangeRef *a1, TSCE::RangeReferenceArchive *a2)
{
  *(a2 + 4) |= 1u;
  v4 = *(a2 + 3);
  if (!v4)
  {
    v5 = *(a2 + 1);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x223DA0300](v5);
    *(a2 + 3) = v4;
  }

  result = TSKUIDStruct::saveToMessage(&a1->_tableUID, v4);
  column = a1->range._topLeft.column;
  v8 = *(a2 + 4);
  *(a2 + 4) = v8 | 2;
  row = a1->range._topLeft.row;
  *(a2 + 8) = column;
  *(a2 + 9) = row;
  v10 = a1->range._bottomRight.column;
  *(a2 + 4) = v8 | 0xE;
  v11 = a1->range._bottomRight.row;
  *(a2 + 4) = v8 | 0x1E;
  *(a2 + 10) = v10;
  *(a2 + 11) = v11;
  return result;
}

uint64_t TSCERangeRefFromArchive@<X0>(const TSCE::RangeReferenceArchive *a1@<X0>, unint64_t *a3@<X8>)
{
  result = TSKUIDStruct::loadFromMessage();
  v6 = *(a1 + 11) | (*(a1 + 20) << 32);
  *a3 = *(a1 + 9) | (*(a1 + 16) << 32);
  a3[1] = v6;
  a3[2] = result;
  a3[3] = v7;
  return result;
}

uint64_t sub_221269DB8@<X0>(uint64_t a1@<X0>, unint64_t *a3@<X8>)
{
  result = TSKUIDStruct::loadFromMessage();
  *a3 = *(a1 + 36) | (*(a1 + 32) << 32);
  a3[1] = result;
  a3[2] = v6;
  return result;
}

void sub_221269E08(void *a1, uint64_t a2)
{
  v3 = a1;
  v61._lower = objc_msgSend_groupByUid(v3, v4, v5, v6);
  v61._upper = v7;
  *(a2 + 16) |= 1u;
  v8 = *(a2 + 24);
  if (!v8)
  {
    v9 = *(a2 + 8);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = MEMORY[0x223DA0360](v9);
    *(a2 + 24) = v8;
  }

  TSKUIDStruct::saveToMessage(&v61, v8);
  v61._lower = objc_msgSend_columnUid(v3, v10, v11, v12, v61._lower, v61._upper);
  v61._upper = v13;
  *(a2 + 16) |= 2u;
  v14 = *(a2 + 32);
  if (!v14)
  {
    v15 = *(a2 + 8);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    v14 = MEMORY[0x223DA0360](v15);
    *(a2 + 32) = v14;
  }

  TSKUIDStruct::saveToMessage(&v61, v14);
  v19 = objc_msgSend_type(v3, v16, v17, v18, v61._lower, v61._upper);
  *(a2 + 16) |= 0x40u;
  *(a2 + 72) = v19;
  v23 = objc_msgSend_groupLevel(v3, v20, v21, v22);
  *(a2 + 16) |= 0x80u;
  *(a2 + 76) = v23;
  v27 = objc_msgSend_aggrIndexLevel(v3, v24, v25, v26);
  v31 = *(a2 + 16);
  *(a2 + 88) = v27;
  *(a2 + 16) = v31 | 0x1008;
  v32 = *(a2 + 48);
  if (!v32)
  {
    v33 = *(a2 + 8);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    v32 = google::protobuf::Arena::CreateMaybeMessage<TSCE::PreserveColumnRowFlagsArchive>(v33);
    *(a2 + 48) = v32;
  }

  v34 = objc_msgSend_preserveFlags(v3, v28, v29, v30);
  v35 = *(v32 + 16);
  *(v32 + 25) = v34 & 1;
  *(v32 + 24) = (v34 & 2) != 0;
  *(v32 + 27) = (v34 & 4) != 0;
  *(v32 + 16) = v35 | 0xF;
  *(v32 + 26) = (v34 & 8) != 0;
  if (objc_msgSend_relativeColumn(v3, v36, v37, v38) != 0x7FFF)
  {
    v42 = objc_msgSend_relativeColumn(v3, v39, v40, v41);
    *(a2 + 16) |= 0x100u;
    *(a2 + 80) = v42;
  }

  v43 = objc_msgSend_relativeGroupUid(v3, v39, v40, v41);
  if (v43 | v44)
  {
    v61._lower = objc_msgSend_relativeGroupUid(v3, v44, v45, v46);
    v61._upper = v47;
    *(a2 + 16) |= 0x10u;
    v48 = *(a2 + 56);
    if (!v48)
    {
      v49 = *(a2 + 8);
      if (v49)
      {
        v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
      }

      v48 = MEMORY[0x223DA0360](v49);
      *(a2 + 56) = v48;
    }

    TSKUIDStruct::saveToMessage(&v61, v48);
  }

  v50 = objc_msgSend_absoluteGroupUid(v3, v44, v45, v46, v61._lower, v61._upper);
  if (v50 | v51)
  {
    v61._lower = objc_msgSend_absoluteGroupUid(v3, v51, v52, v53);
    v61._upper = v54;
    *(a2 + 16) |= 0x20u;
    v55 = *(a2 + 64);
    if (!v55)
    {
      v56 = *(a2 + 8);
      if (v56)
      {
        v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
      }

      v55 = MEMORY[0x223DA0360](v56);
      *(a2 + 64) = v55;
    }

    TSKUIDStruct::saveToMessage(&v61, v55);
  }

  if (!objc_msgSend_options(v3, v51, v52, v53, v61._lower, v61._upper))
  {
    goto LABEL_32;
  }

  v60 = objc_msgSend_options(v3, v57, v58, v59);
  if ((v60 & 1) == 0)
  {
    if ((v60 & 2) == 0)
    {
      goto LABEL_30;
    }

LABEL_34:
    *(a2 + 16) |= 0x400u;
    *(a2 + 85) = 1;
    if ((v60 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  *(a2 + 16) |= 0x200u;
  *(a2 + 84) = 1;
  if ((v60 & 2) != 0)
  {
    goto LABEL_34;
  }

LABEL_30:
  if ((v60 & 4) != 0)
  {
LABEL_31:
    *(a2 + 16) |= 0x800u;
    *(a2 + 86) = 1;
  }

LABEL_32:
}

TSCECategoryRef *sub_22126A0F4(uint64_t a1, const UUID *a2)
{
  v3 = MEMORY[0x277D809E0];
  if (*(a1 + 24))
  {
    v4 = *(a1 + 24);
  }

  else
  {
    v4 = MEMORY[0x277D809E0];
  }

  v39[0] = TSKUIDStruct::loadFromMessage(v4, a2);
  v39[1] = v5;
  if (*(a1 + 32))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = v3;
  }

  v38[0] = TSKUIDStruct::loadFromMessage(v6, v5);
  v38[1] = v7;
  v8 = *(a1 + 72);
  v9 = *(a1 + 76);
  v10 = *(a1 + 16);
  v11 = *(a1 + 88);
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  LOBYTE(v12) = v10;
  if ((v10 & 0x10) != 0)
  {
    v36 = TSKUIDStruct::loadFromMessage(*(a1 + 56), v7);
    v37 = v7;
    v12 = *(a1 + 16);
  }

  if ((v12 & 0x20) != 0)
  {
    v34 = TSKUIDStruct::loadFromMessage(*(a1 + 64), v7);
    v35 = v16;
  }

  else if ((v12 & 4) != 0)
  {
    v13 = *(a1 + 40);
    v14 = *(v13 + 24);
    if (v14 >= 1)
    {
      v15 = 8;
      do
      {
        TSP::UUIDData::UUIDData(&v40, *(*(v13 + 32) + v15));
        if (v40 == v41)
        {
          v36 = v40;
          v37 = v40;
        }

        else
        {
          v34 = v40;
          v35 = v41;
        }

        v15 += 8;
        --v14;
      }

      while (v14);
    }
  }

  LOBYTE(v40) = 0;
  v17 = *(a1 + 16);
  if ((v17 & 8) != 0)
  {
    v18 = *(a1 + 48);
    if (v18[24])
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19 | v18[25];
    if (v18[27])
    {
      v21 = 4;
    }

    else
    {
      v21 = 0;
    }

    if (v18[26])
    {
      v22 = 8;
    }

    else
    {
      v22 = 0;
    }

    LOBYTE(v40) = v22 | v21 | v20;
  }

  if ((v10 & 0x1000) != 0)
  {
    v23 = v11;
  }

  else
  {
    v23 = -1;
  }

  if ((v17 & 0x100) != 0)
  {
    v24 = *(a1 + 80);
  }

  else
  {
    v24 = 0x7FFF;
  }

  v25 = *(a1 + 84) & (v17 << 22 >> 31);
  if (*(a1 + 85))
  {
    LOBYTE(v26) = v25 | 2;
  }

  else
  {
    v26 = *(a1 + 84) & (v17 << 22 >> 31);
  }

  if ((v17 & 0x400) != 0)
  {
    LOBYTE(v25) = v26;
  }

  if (*(a1 + 86))
  {
    v27 = v25 | 4;
  }

  else
  {
    v27 = v25;
  }

  if ((v17 & 0x800) != 0)
  {
    v28 = v27;
  }

  else
  {
    v28 = v25;
  }

  v29 = [TSCECategoryRef alloc];
  LOWORD(v33) = v24;
  BYTE2(v33) = v28;
  v31 = objc_msgSend_initWithGroupByUID_relGroupUID_absGroupUid_columnUid_aggType_groupLevel_aggrIndexLevel_preserveFlags_relativeColumn_options_(v29, v30, v39, &v36, &v34, v38, v8, v9, v23, &v40, v33);

  return v31;
}

void sub_22126A2E4(void *a1, uint64_t a2)
{
  v3 = a1;
  v38._lower = objc_msgSend_tableUID(v3, v4, v5, v6);
  v38._upper = v7;
  *(a2 + 16) |= 1u;
  v8 = *(a2 + 24);
  if (!v8)
  {
    v9 = *(a2 + 8);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = MEMORY[0x223DA0360](v9);
    *(a2 + 24) = v8;
  }

  TSKUIDStruct::saveToMessage(&v38, v8);
  v16 = objc_msgSend_tract(v3, v10, v11, v12, v38._lower, v38._upper);
  if (v16)
  {
    *(a2 + 16) |= 2u;
    v17 = *(a2 + 32);
    if (!v17)
    {
      v18 = *(a2 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidTract>(v18);
      *(a2 + 32) = v17;
    }

    objc_msgSend_saveToArchive_(v16, v13, v17, v15);
  }

  v22 = objc_msgSend_preserveFlags(v3, v13, v14, v15);
  if (v22)
  {
    *(a2 + 16) |= 4u;
    v23 = *(a2 + 40);
    if (!v23)
    {
      v24 = *(a2 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::PreserveColumnRowFlagsArchive>(v24);
      *(a2 + 40) = v23;
    }

    v25 = *(v23 + 16);
    *(v23 + 25) = v22 & 1;
    *(v23 + 24) = (v22 & 2) != 0;
    *(v23 + 27) = (v22 & 4) != 0;
    *(v23 + 16) = v25 | 0xF;
    *(v23 + 26) = (v22 & 8) != 0;
  }

  if (objc_msgSend_columnGroupLevel(v3, v19, v20, v21) != 255)
  {
    v29 = objc_msgSend_columnGroupLevel(v3, v26, v27, v28);
    *(a2 + 16) |= 0x10u;
    *(a2 + 52) = v29;
  }

  if (objc_msgSend_rowGroupLevel(v3, v26, v27, v28) != 255)
  {
    v33 = objc_msgSend_rowGroupLevel(v3, v30, v31, v32);
    *(a2 + 16) |= 0x20u;
    *(a2 + 56) = v33;
  }

  if (objc_msgSend_aggregateIndexLevel(v3, v30, v31, v32) != 0xFFFF)
  {
    v37 = objc_msgSend_aggregateIndexLevel(v3, v34, v35, v36);
    *(a2 + 16) |= 8u;
    *(a2 + 48) = v37;
  }
}

TSCEViewTractRef *sub_22126A4CC(uint64_t a1, const UUID *a2)
{
  if (*(a1 + 24))
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v3 = MEMORY[0x277D809E0];
  }

  v29 = TSKUIDStruct::loadFromMessage(v3, a2);
  v30 = v4;
  if ((*(a1 + 16) & 2) != 0)
  {
    v9 = [TSCEUndoTract alloc];
    if (*(a1 + 32))
    {
      v8 = objc_msgSend_initWithArchive_(v9, v10, *(a1 + 32), v11, v29, v30);
    }

    else
    {
      v8 = objc_msgSend_initWithArchive_(v9, v10, &TSCE::_ASTNodeArrayArchive_ASTUidTract_default_instance_, v11, v29, v30);
    }
  }

  else
  {
    v5 = [TSCEUndoTract alloc];
    v8 = objc_msgSend_initWithPurpose_(v5, v6, 4, v7, v29, v30);
  }

  v12 = v8;
  v13 = *(a1 + 16);
  if ((v13 & 4) != 0)
  {
    v15 = *(a1 + 40);
    if (v15[24])
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 | v15[25];
    if (v15[27])
    {
      v18 = 4;
    }

    else
    {
      v18 = 0;
    }

    if (v15[26])
    {
      v19 = 8;
    }

    else
    {
      v19 = 0;
    }

    v14 = (v17 | v18 | v19) & 0xFLL;
  }

  else
  {
    v14 = 0;
  }

  v21 = *(a1 + 52);
  v20 = *(a1 + 56);
  v22 = *(a1 + 48);
  v23 = [TSCEViewTractRef alloc];
  if ((v13 & 8) != 0)
  {
    v25 = v22;
  }

  else
  {
    v25 = -1;
  }

  if ((v13 & 0x10) != 0)
  {
    v26 = v21;
  }

  else
  {
    v26 = -1;
  }

  if ((v13 & 0x20) != 0)
  {
    v26 = v20;
  }

  v27 = objc_msgSend_initWithTract_tableUID_preserveFlags_columnGroupLevel_rowGroupLevel_aggrIndexLevel_(v23, v24, v12, &v29, v14, v26, 255, v25);

  return v27;
}

_DWORD *sub_22126A6B0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 24);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(v3 + 24) = v5 + 1;
    result = *&v4[2 * v5 + 2];
    goto LABEL_8;
  }

  if (v6 == *(v3 + 28))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 16));
    v4 = *(v3 + 32);
    v6 = *v4;
  }

  *v4 = v6 + 1;
  result = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive_IndexSetEntry>(*(v3 + 16));
  v8 = *(v3 + 24);
  v9 = *(v3 + 32) + 8 * v8;
  *(v3 + 24) = v8 + 1;
  *(v9 + 8) = result;
LABEL_8:
  v10 = result[4];
  result[4] = v10 | 1;
  v12 = *a2;
  v11 = a2[1];
  result[6] = *a2;
  if (v12 != v11)
  {
    result[4] = v10 | 3;
    result[7] = v11;
  }

  return result;
}

void sub_22126A778(uint64_t a1@<X0>, TSUIndexSet *a2@<X8>)
{
  TSUIndexSet::TSUIndexSet(a2);
  v4 = *(a1 + 24);
  if (v4 >= 1)
  {
    v5 = 8;
    do
    {
      v6 = *(*(a1 + 32) + v5);
      v7 = *(v6 + 24);
      if ((*(v6 + 16) & 2) != 0)
      {
        v7 = *(v6 + 28);
      }

      v8._begin = *(v6 + 24);
      v8._end = v7;
      TSUIndexSet::addIndexesInRange(a2, &v8);
      v5 += 8;
      --v4;
    }

    while (v4);
  }
}

void sub_22126A810(int16x4_t *a1, void *a2)
{
  v3 = a2;
  v13 = 0;
  v11 = 0uLL;
  v12 = a1[4].i8[0];
  v4 = *a1->i8;
  v5.i64[0] = 0xFFFFFFFFLL;
  v5.i64[1] = 0xFFFFFFFFLL;
  v6.i64[0] = 0xFFFF00000000;
  v6.i64[1] = 0xFFFF00000000;
  v6.i32[0] = vuzp1_s16(vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(*a1->i8, v6), vdupq_n_s64(0x7FFF00000000uLL)))), *a1).u32[0];
  v6.i32[1] = vuzp1_s16(*a1, vmovn_s64(vceqq_s64(vandq_s8(*a1, v5), vdupq_n_s64(0x7FFFFFFFuLL)))).i32[1];
  v7 = *a1;
  if (vminv_u16(*v6.i8))
  {
    if (v7.u16[2] <= WORD6(v4))
    {
      v8 = HIDWORD(*&v7);
      do
      {
        v11 = *a1[2].i8;
        v9 = (v8 << 32) | 0x7FFFFFFF;
        v10 = v9;
        v3[2](v3, &v9, &v13);
        if (v13)
        {
          break;
        }

        LOWORD(v8) = v8 + 1;
      }

      while (a1[1].u16[2] >= v8);
    }
  }

  else if (DWORD2(v4) >= v7.i32[0])
  {
    do
    {
      v11 = *a1[2].i8;
      v9 = v7.u32[0] | 0x7FFF00000000;
      v10 = v9;
      v3[2](v3, &v9, &v13);
      if (v13 == 1)
      {
        break;
      }

      ++v7.i32[0];
    }

    while (v7.i32[0] <= a1[1].i32[0]);
  }
}

__n128 sub_22126B670(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_22126B680(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (++*(*(a1[4] + 8) + 24) == a1[6])
  {
    v13 = v6;
    v10 = objc_msgSend_range(v6, v7, v8, v9);
    v11 = *(a1[5] + 8);
    *(v11 + 48) = v10;
    *(v11 + 56) = v12;
    *a4 = 1;
    v6 = v13;
  }
}

id sub_22126B954(void *a1, double a2)
{
  v6 = a1;
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "NSString *TSTStringForDouble(double, TSULocale *__strong)", v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTNumberNode.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 261, 0, "A locale is required here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    v6 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v16, v17, v18);
  }

  if (a2 == 0.0 || (v19 = fabs(a2), v19 < 1.0e21) && v19 > 1.0e-20)
  {
    v20 = objc_msgSend_checkoutNumberFormatter(v6, v3, v4, v5);
    v21 = 0;
    StringWithValue = objc_msgSend_createStringWithValue_(v20, v22, v23, v24, a2);
  }

  else
  {
    v20 = objc_msgSend_checkoutScientificNumberFormatter(v6, v3, v4, v5);
    v21 = 1;
    StringWithValue = objc_msgSend_createStringWithValue_(v20, v28, v29, v30, a2);
  }

  v31 = StringWithValue;
  if (v21)
  {
    objc_msgSend_returnScientificNumberFormatter_(v6, v26, v20, v27);
  }

  else
  {
    objc_msgSend_returnNumberFormatter_(v6, v26, v20, v27);
  }

  return v31;
}

void sub_22126BD50(_Unwind_Exception *a1)
{
  MEMORY[0x223D9F890](v5 - 136);

  _Unwind_Resume(a1);
}

void sub_22126D050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_22126D0F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22126D10C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_besselj_(*(a1 + 32), a2, *(a1 + 40), a4);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_22126D474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void sub_22126D518(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_bessely_(*(a1 + 32), a2, *(a1 + 40), a4);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_22126E014(_Unwind_Exception *a1)
{
  v10 = *(v8 - 88);
  if (v10)
  {
    *(v8 - 80) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void sub_22126E4D4(_Unwind_Exception *a1)
{
  v10 = *(v8 - 88);
  if (v10)
  {
    *(v8 - 80) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void sub_22126E98C(_Unwind_Exception *a1)
{
  v10 = *(v8 - 88);
  if (v10)
  {
    *(v8 - 80) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void sub_22126EE80(_Unwind_Exception *a1)
{
  v10 = *(v8 - 88);
  if (v10)
  {
    *(v8 - 80) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void sub_22126F37C(_Unwind_Exception *a1)
{
  v10 = *(v8 - 88);
  if (v10)
  {
    *(v8 - 80) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void sub_221271C84(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *v3 = &unk_2834A39F8;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
}

TSCEASTFunctionElement *sub_221271CC4(TSCEASTIteratorBase *a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4)
{
  if (TSCEASTFunctionElement::functionIndex(this, a1, a3, a4) == 304)
  {
    v6 = (*(*this + 80))(this, a1);
    TSCEASTFunctionElement::setFunctionIndex(this, 0x175, a1, v7);
    v11 = *(a1 + 50);
    if (v11 <= 1)
    {
      v11 = 1;
    }

    *(a1 + 50) = v11;
    v12 = objc_msgSend_functionName(v6, v8, v9, v10);
    v13 = *(a1 + 26);
    *(a1 + 26) = v12;
  }

  return this;
}

TSCEASTFunctionElement *sub_221271DBC(TSCEASTIteratorBase *a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4)
{
  if ((TSCEASTFunctionElement::functionIndex(this, a1, a3, a4) & 0xFFFFFFFD) == 0x130)
  {
    return this;
  }

  return TSCEPartialEvalRewriter::rewriteFunctionToRemoveNumberToDateCoercions(a1, this, v6, v7);
}

TSCEASTElementWithChildren *sub_221271E20(uint64_t a1, TSCEASTElementWithChildren *a2)
{
  v82[4] = *MEMORY[0x277D85DE8];
  v4 = TSCEASTElement::tag(a2, a1);
  if ((v4 - 1) >= 0xC)
  {
    v8 = v4;
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "virtual TSCEASTElement *TSCEASTExcelImportRewriter::binaryInfixOperatorNode(TSCEASTBinaryElement *)", v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTExcelImportRewriter.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 112, 0, "Unknown operator tag: %d", v8);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
    v7 = 0;
  }

  else
  {
    v7 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v5, word_2217E0EBE[(v4 - 1)], v6);
  }

  v18 = *(a1 + 224);
  v22 = objc_msgSend_children(v18, v19, v20, v21);
  v26 = objc_msgSend_nilValue(TSCENilValue, v23, v24, v25);
  if (objc_msgSend_count(v22, v27, v28, v29))
  {
    v32 = objc_msgSend_objectAtIndexedSubscript_(v22, v30, 0, v31);
    v36 = objc_msgSend_value(v32, v33, v34, v35);

    v26 = v36;
  }

  if (objc_msgSend_deepType_(v26, v30, *(a1 + 200), v31) == 5)
  {
    v38 = *(a1 + 200);
    v82[0] = 0;
    v39 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v37, v38, v7, 0, v82);
    v40 = v82[0];
    if (v40)
    {
      v44 = v39;
      v39 = v40;
    }

    else
    {
      isDuration = objc_msgSend_isDuration(v39, v41, v42, v43);
      v44 = objc_msgSend_nilValue(TSCENilValue, v45, v46, v47);
      if (objc_msgSend_count(v22, v48, v49, v50) >= 2)
      {
        v53 = objc_msgSend_objectAtIndexedSubscript_(v22, v51, 1, v52);
        v57 = objc_msgSend_value(v53, v54, v55, v56);

        v44 = v57;
      }

      if (objc_msgSend_deepType_(v44, v51, *(a1 + 200), v52) == 5)
      {
        v59 = *(a1 + 200);
        v81 = 0;
        v60 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v44, v58, v59, v7, 1, &v81);
        v61 = v81;
        if (v61)
        {
          v65 = v60;
          v60 = v61;
        }

        else
        {
          v67 = objc_msgSend_isDuration(v60, v62, v63, v64);
          if (isDuration != v67)
          {
            if (isDuration)
            {
              v68 = TSCEASTElementWithChildren::child(a2, 0);
              TSCEASTRewriter::createFunction(a1, 0x116, v68, v69, v70, v71, v72, v73, 0);
            }

            if (v67)
            {
              v74 = TSCEASTElementWithChildren::child(a2, 1u);
              TSCEASTRewriter::createFunction(a1, 0x116, v74, v75, v76, v77, v78, v79, 0);
            }
          }
        }
      }
    }
  }

  return a2;
}

void sub_2212722D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, id a20)
{
  a19 = &a13;
  sub_22107C2C0(&a19);

  _Unwind_Resume(a1);
}

void sub_221272424(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == 268 || a2 == 261)
  {
    v6 = objc_msgSend_root(*(a1 + 208), a2, a3, a4);
    v10 = v6;
    if (v6)
    {
      objc_msgSend_value(v6, v7, v8, v9);
    }

    else
    {
      objc_msgSend_nilValue(TSCENilValue, v7, v8, v9);
    }
    v11 = ;
    if (objc_msgSend_deepType_(v11, v12, *(a1 + 200), v13) != 5)
    {
      goto LABEL_19;
    }

    if (v4 == 261)
    {
      v23 = *(a1 + 200);
      v45 = 0;
      v16 = objc_msgSend_asNumber_outError_(v11, v14, v23, &v45);
      v17 = v45;
      if ((objc_msgSend_hasUnits(v16, v24, v25, v26) & 1) == 0)
      {
        v30 = objc_msgSend_calcEngine(*(a1 + 200), v27, v28, v29);
        v34 = objc_msgSend_XLImportDateMode(v30, v31, v32, v33);

        v40 = TSCEPartialEvalRewriter::baseDateForMode(v34, v35, v36, v37);
        switch(v34)
        {
          case 0:
            goto LABEL_15;
          case 1:
            TSCEASTRewriter::createDeepCopy(a1, *(a1 + 104), v38, v39);
            TSCEASTRewriter::createDeepCopy(a1, *(a1 + 104), v41, v42);
            TSUDecimal::operator=();
            TSCEASTIteratorBase::createNumber(a1, &v46, v43, v44);
          case 2:
LABEL_15:
            TSCEASTIteratorBase::createDate(a1, v40, 0, 0, 1);
        }
      }
    }

    else
    {
      if (v4 != 268)
      {
LABEL_19:

        return;
      }

      v15 = *(a1 + 200);
      v47 = 0;
      v16 = objc_msgSend_asNumber_outError_(v11, v14, v15, &v47);
      v17 = v47;
      if ((objc_msgSend_isDuration(v16, v18, v19, v20) & 1) == 0)
      {
        TSUDecimal::operator=();
        TSCEASTIteratorBase::createNumber(a1, &v46, v21, v22);
      }
    }

    goto LABEL_19;
  }
}

void sub_2212727B8(id *a1)
{

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2212727F4(id *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_221272848(id *a1)
{
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(a1);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_221272880(uint64_t *result, void **a2, void **a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

void sub_221272900(double a1)
{
  v2 = fabs(*&qword_27CFB4C78 * a1);
  if (v2 >= 1.0)
  {
    if (v2 >= 8.0)
    {
      sub_2215C4B34(dbl_27CFB4220, 5, v2);
      v3 = &unk_27CFB4250;
      v4 = v2;
      v5 = 6;
    }

    else
    {
      sub_2215C4B34(dbl_27CFB4198, 8, v2);
      v3 = &unk_27CFB41E0;
      v4 = v2;
      v5 = 8;
    }

    sub_2215C4B50(v3, v5, v4);
    sub_22141EAB0(-1, a1);
  }

  else
  {
    sub_2212729F0(*&qword_27CFB4C78 * a1);
  }
}

void sub_2212729F0(double a1)
{
  if (fabs(a1) <= 1.0)
  {
    v1 = a1 * a1;
    sub_2215C4B34(dbl_27CFB4280, 4, a1 * a1);
    sub_2215C4B50(dbl_27CFB42A8, 5, v1);
  }

  else
  {
    sub_221272A64(a1);
  }
}

void sub_221272A64(double a1)
{
  v2 = -a1;
  if (a1 >= 0.0)
  {
    v3 = a1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 >= 1.0)
  {
    if (v2 * a1 >= -*&qword_27CFB4C58)
    {
      sub_22141EAB0(-1, a1);
      if (v3 >= 8.0)
      {
        sub_2215C4B34(dbl_27CFB4220, 5, v3);
        v4 = &unk_27CFB4250;
        v5 = v3;
        v6 = 6;
      }

      else
      {
        sub_2215C4B34(dbl_27CFB4198, 8, v3);
        v4 = &unk_27CFB41E0;
        v5 = v3;
        v6 = 8;
      }

      sub_2215C4B50(v4, v6, v5);
    }
  }

  else
  {
    sub_2212729F0(a1);
  }
}

void sub_221274B78(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_221277104(uint64_t a1, void *a2, unsigned __int16 a3)
{
  v5 = a2;
  v9 = v5;
  if (!v5 || (*(*(a1 + 32) + 34) & a3) != 0 || objc_msgSend_formatType(v5, v6, v7, v8) == *(a1 + 40))
  {
    v13 = 0;
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = objc_msgSend_formatType(v9, v10, v11, v12);
    objc_msgSend_clearSpareFormatOfType_(v15, v17, v16, v18);
    v13 = 1;
  }

  return v13;
}

void sub_2212786B8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

uint64_t **sub_2212789DC(uint64_t **a1, uint64_t **a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  if (a1 != a2)
  {
    sub_2212797AC(a1, *a2, a2 + 1);
  }

  return a1;
}

void *sub_221278A44(uint64_t **a1, uint64_t a2, _OWORD *a3)
{
  v6 = a3;
  v4 = sub_221279B64(a1, a3, &unk_2217E0EFC, &v6);
  return sub_221345900((v4 + 48), a2);
}

void sub_221278A98(uint64_t **result, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v9 = v3 + 4;
      v5 = sub_221279B64(result, v3 + 4, &unk_2217E0EFC, &v9);
      sub_221345950((v5 + 48), v3 + 6);
      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }
}

void sub_221278B40(uint64_t **a1, void *a2, unint64_t *a3)
{
  if (*a3 == 0)
  {

    sub_221278A98(a1, a2);
  }

  else
  {
    v6 = sub_22112C8D0(a2, a3);
    if (a2 + 1 != v6)
    {
      v7 = v6;
      v9 = a3;
      v8 = sub_221279B64(a1, a3, &unk_2217E0EFC, &v9);
      sub_221345950((v8 + 48), v7 + 6);
    }
  }
}

void *sub_221278BF8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  result = sub_22112C8D0(a1, a3);
  if ((a1 + 8) != result)
  {
    v7 = result;
    sub_221345A60((result + 6), a2);
    result = sub_221345B40(v7 + 6);
    if (result)
    {

      return sub_221279C0C(a1, a3);
    }
  }

  return result;
}

uint64_t sub_221278C84(void *a1)
{
  v1 = a1 + 1;
  v2 = *a1;
  if (*a1 == a1 + 1)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = sub_221345ADC(v2 + 6);
    v5 = v2[1];
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
        v6 = v2[2];
        v7 = *v6 == v2;
        v2 = v6;
      }

      while (!v7);
    }

    v3 += v4;
    v2 = v6;
  }

  while (v6 != v1);
  return v3;
}

uint64_t sub_221278D0C(void *a1)
{
  v1 = a1 + 1;
  v2 = *a1;
  v3 = 1;
  if (*a1 != a1 + 1)
  {
    while (1)
    {
      v4 = sub_221345B40(v2 + 6);
      if (!v4)
      {
        break;
      }

      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v3 = v4 & v3;
      v2 = v6;
      if (v6 == v1)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_221278D98(void *a1, void *a2)
{
  v3 = a2;
  v6 = *a1;
  v4 = a1 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      v18 = *(v5 + 2);
      v7 = objc_autoreleasePoolPush();
      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x2020000000;
      v17 = 0;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_221278F0C;
      v12[3] = &unk_2784620F8;
      v8 = v3;
      v15 = v18;
      v13 = v8;
      v14 = v16;
      sub_221345BAC(v5 + 6, v12);

      _Block_object_dispose(v16, 8);
      objc_autoreleasePoolPop(v7);
      v9 = v5[1];
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
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v5 = v10;
    }

    while (v10 != v4);
  }
}

void sub_221278EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_221278F0C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

void sub_221278F68(uint64_t a1, unint64_t *a2, void *a3)
{
  v5 = a3;
  v6 = sub_22112C8D0(a1, a2);
  if ((a1 + 8) != v6)
  {
    v7 = objc_autoreleasePoolPush();
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v13 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_221279094;
    v8[3] = &unk_278462120;
    v10 = v12;
    v11 = a2;
    v9 = v5;
    sub_221345BAC(v6 + 6, v8);

    _Block_object_dispose(v12, 8);
    objc_autoreleasePoolPop(v7);
  }
}

uint64_t sub_221279094(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

void sub_2212790F0(void *result, uint64_t a2)
{
  v2 = result + 1;
  v3 = *result;
  if (*result != result + 1)
  {
    while (1)
    {
      v18 = *(v3 + 2);
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
      *(v8 + 16) |= 1u;
      v11 = *(v8 + 24);
      if (!v11)
      {
        v12 = *(v8 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x223DA0360](v12);
        *(v8 + 24) = v11;
      }

      TSKUIDStruct::saveToMessage(&v18, v11);
      *(v8 + 16) |= 2u;
      v13 = *(v8 + 32);
      if (!v13)
      {
        v14 = *(v8 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidCoordSetArchive>(v14);
        *(v8 + 32) = v13;
      }

      sub_221345CC8(v3 + 6, v13);
      v15 = v3[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v3[2];
          v17 = *v16 == v3;
          v3 = v16;
        }

        while (!v17);
      }

      v3 = v16;
      if (v16 == v2)
      {
        return;
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
    v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidCellRefSetArchive_OwnerEntry>(*(a2 + 16));
    v9 = *(a2 + 24);
    v10 = *(a2 + 32) + 8 * v9;
    *(a2 + 24) = v9 + 1;
    *(v10 + 8) = v8;
    goto LABEL_9;
  }
}

void sub_22127926C(uint64_t **a1, uint64_t a2)
{
  v4 = (a1 + 1);
  sub_2212796F0(a1, a1[1]);
  *a1 = v4;
  a1[2] = 0;
  *v4 = 0;
  v6 = *(a2 + 24);
  if (v6 >= 1)
  {
    v7 = MEMORY[0x277D809E0];
    v8 = 8;
    do
    {
      v9 = *(*(a2 + 32) + v8);
      v14 = 0;
      v15 = 0;
      if (*(v9 + 24))
      {
        v10 = *(v9 + 24);
      }

      else
      {
        v10 = v7;
      }

      v14 = TSKUIDStruct::loadFromMessage(v10, v5);
      v15 = v11;
      v16 = &v14;
      v12 = sub_221279B64(a1, &v14, &unk_2217E0EFC, &v16);
      if (*(v9 + 32))
      {
        v13 = *(v9 + 32);
      }

      else
      {
        v13 = &TSCE::_UidCoordSetArchive_default_instance_;
      }

      sub_221345F58(v12 + 48, v13);
      v8 += 8;
      --v6;
    }

    while (v6);
  }
}

void sub_221279358(void *a1@<X0>, void *a2@<X1>, TSCECellRefSet *a3@<X8>)
{
  v5 = a2;
  v6 = v5;
  v14 = 0;
  v15 = &v14;
  v16 = 0x4812000000;
  v17 = sub_221279520;
  v18 = sub_22127952C;
  v19 = &unk_22188E88F;
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  if (v5)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = sub_221279538;
    v12[4] = sub_221279548;
    v13 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_221279550;
    v8[3] = &unk_278462148;
    v10 = v12;
    v9 = v5;
    v11 = &v14;
    sub_221278D98(a1, v8);

    _Block_object_dispose(v12, 8);
    v7 = v15;
  }

  else
  {
    v7 = &v14;
  }

  TSCECellRefSet::TSCECellRefSet(a3, v7 + 2);
  _Block_object_dispose(&v14, 8);
  sub_22107C800(&v20, v21[0]);
}

void sub_2212794D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose(&a22, 8);
  sub_22107C800(v30 + 48, a29);

  _Unwind_Resume(a1);
}

uint64_t sub_221279538(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

TSCECellCoordSet *sub_221279550(uint64_t a1, const char *a2, TSKUIDStruct *a3, uint64_t a4)
{
  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (!v7 || (objc_msgSend_tableUID(v7, a2, a3, a4) == a3->_lower ? (v8 = a2 == a3->_upper) : (v8 = 0), !v8))
  {
    v9 = objc_msgSend_tableResolverForTableUID_(*(a1 + 32), a2, a3, a4);
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    v13 = objc_msgSend_columnIndexForColumnUID_(result, a2, a2, a4);
    result = objc_msgSend_rowIndexForRowUID_(*(*(*(a1 + 40) + 8) + 40), v14, (a2 + 16), v15);
    if ((result != 0x7FFFFFFF || *(a2 + 1) == 0) && (v13 != 0x7FFF || *a2 == 0))
    {
      v16 = *(*(a1 + 48) + 8);
      v17.coordinate.row = result;
      *&v17.coordinate.column = v13;
      v17._tableUID = *a3;
      return TSCECellRefSet::addCellRef(v16 + 2, &v17);
    }
  }

  return result;
}

uint64_t **sub_221279658(uint64_t **result, unint64_t *a2, void *a3)
{
  v4 = result;
  if (*a2 != *a3)
  {
    result = sub_22112C8D0(result, a2);
    if (v4 + 1 != result)
    {
      v5 = result;
      v7 = a3;
      v6 = sub_221279B64(v4, a3, &unk_2217E0EFC, &v7);
      return sub_221345818(v6 + 48, v5 + 6);
    }
  }

  return result;
}

void sub_2212796F0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2212796F0(a1, *a2);
    sub_2212796F0(a1, a2[1]);
    sub_221279750((a2 + 6), a2[7]);

    operator delete(a2);
  }
}

void sub_221279750(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_221279750(a1, *a2);
    sub_221279750(a1, a2[1]);
    sub_2210BDEC0((a2 + 6));

    operator delete(a2);
  }
}

uint64_t **sub_2212797AC(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_2212692E8(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 2) = *(v9 + 2);
          sub_221345818((v8 + 6), v9 + 6);
          v10 = sub_221279938(v5, &v16, v15 + 2);
          sub_2210BBE8C(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_2212692E8(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_221279994(&v13);
  }

  if (a2 != a3)
  {
    sub_2212799EC(v5);
  }

  return result;
}

void *sub_221279938(uint64_t a1, void *a2, _OWORD *a3)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*a3 >= *(v4 + 2))
        {
          break;
        }

        v4 = *v4;
        v6 = v3;
        if (!*v3)
        {
          goto LABEL_9;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v6 = v3 + 1;
  }

  else
  {
    v6 = v3;
  }

LABEL_9:
  *a2 = v3;
  return v6;
}

uint64_t sub_221279994(uint64_t a1)
{
  sub_2212796F0(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_2212796F0(*a1, v2);
  }

  return a1;
}

void sub_221279A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11)
{
  if (a10)
  {
    sub_221279B04(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_221279AE8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_221279B04(v3, v2);
  _Unwind_Resume(a1);
}

void sub_221279B04(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_221279750((a2 + 6), a2[7]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_221279B64(uint64_t **a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_22112C810(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_221279C0C(uint64_t **a1, unint64_t *a2)
{
  v3 = sub_22112C8D0(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_221279C54(a1, v3);
  return 1;
}

uint64_t *sub_221279C54(uint64_t **a1, uint64_t a2)
{
  v3 = sub_22112C950(a1, a2);
  sub_221279750(a2 + 48, *(a2 + 56));
  operator delete(a2);
  return v3;
}

_BYTE *sub_22127A500(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (*(v5 + 176) == 1)
  {
    v6 = objc_msgSend_count(*(v5 + 184), a2, a3, a4);
    v10 = objc_msgSend_p_cellCount(*(a1 + 32), v7, v8, v9);
  }

  else
  {
    v6 = (*(v5 + 72) - *(v5 + 64)) >> 3;
    v10 = objc_msgSend_p_cellCount(v5, a2, a3, a4);
  }

  *(*(a1 + 32) + 180) = v6 != v10;
  result = *(a1 + 32);
  if (result[180] == 1)
  {
    result = objc_msgSend_p_cellCount(result, v11, v12, v13);
    if (result != 1)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTCellMap loadFromUnarchiver:]_block_invoke_2", v16);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 205, 0, "creating a one-to-many cell map but starting with more than one cell");

      v26 = MEMORY[0x277D81150];

      return objc_msgSend_logBacktraceThrottled(v26, v23, v24, v25);
    }
  }

  return result;
}

void sub_22127ADE8(uint64_t a1, void *a2)
{
  v13 = a2;
  v6 = objc_msgSend_cellLists(*(a1 + 32), v3, v4, v5);
  v10 = objc_msgSend_copy(v13, v7, v8, v9);
  objc_msgSend_addObject_(v6, v11, v10, v12);
}

void sub_22127AE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_22127B6EC(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4)
{
  v8 = a3 / 0x9C4;
  v9 = objc_msgSend_cellLists(*(a1 + 32), a2, a3, a4);
  v17 = objc_msgSend_objectAtIndex_(v9, v10, v8, v11);

  v12 = *(a1 + 40);
  objc_opt_class();
  v15 = objc_msgSend_cellAtIndex_(v17, v13, a3 - 2500 * v8, v14);
  v16 = TSUDynamicCast();
  (*(v12 + 16))(v12, a2, v16, a3, a4);
}

void sub_22127BA3C(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  v5 = *(a1 + 32);
  v9 = &v8;
  v6 = sub_221280404((v5 + 96), &v8, &unk_2217E0EFD, &v9);
  v7 = v6[3];
  v6[3] = v4;
}

void sub_22127BBB8(uint64_t a1, _OWORD *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9 = a2;
  v7 = sub_221280680((v6 + 136), a2, &unk_2217E0EFD, &v9);
  v8 = v7[6];
  v7[6] = v5;
}

void sub_22127C5B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_msgSend_clearDataListIDs(v6, v3, v4, v5);
  }
}

void sub_22127C614(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_msgSend_clearDataListIDs(v6, v3, v4, v5);
  }
}

void sub_22127CB40(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_221119F90(*(a1 + 40), a2);
  v7 = sub_221119F90(*(a1 + 48), a2 + 2);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = *(a1 + 32);
    TSTMakeCellUID(v11);
    objc_msgSend_addCell_andCellUID_(v9, v10, v5, v11);
  }
}

void sub_22127CF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  _Block_object_dispose((v33 - 152), 8);
  sub_22107C2C0(&a23);

  _Unwind_Resume(a1);
}

__n128 sub_22127CFA8(__n128 *a1, __n128 *a2)
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

__n128 sub_22127CFF8(__n128 *a1, __n128 *a2)
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

void sub_22127D01C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22127D034(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      sub_221087FE8(a1, a2);
    }

    sub_22107C148();
  }
}

void sub_22127D0D4(uint64_t a1, _OWORD *a2, void *a3)
{
  v5 = a3;
  v26 = v5;
  if ((*(a1 + 48) & 1) == 0)
  {
    v9 = v5;
    v26 = objc_msgSend_copy(v5, v6, v7, v8);
  }

  sub_22116A130((*(*(a1 + 32) + 8) + 48), &v26);
  v10 = *(*(a1 + 40) + 8);
  v11 = v10[7];
  v12 = v10[8];
  if (v11 >= v12)
  {
    v15 = v10[6];
    v16 = (v11 - v15) >> 5;
    v17 = v16 + 1;
    if ((v16 + 1) >> 59)
    {
      sub_22107C148();
    }

    v18 = v12 - v15;
    if (v18 >> 4 > v17)
    {
      v17 = v18 >> 4;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFE0)
    {
      v19 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      sub_221087FE8((v10 + 6), v19);
    }

    v20 = (32 * v16);
    v21 = a2[1];
    *v20 = *a2;
    v20[1] = v21;
    v14 = 32 * v16 + 32;
    v22 = v10[6];
    v23 = v10[7] - v22;
    v24 = v20 - v23;
    memcpy(v20 - v23, v22, v23);
    v25 = v10[6];
    v10[6] = v24;
    v10[7] = v14;
    v10[8] = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    v13 = a2[1];
    *v11 = *a2;
    v11[1] = v13;
    v14 = (v11 + 2);
  }

  v10[7] = v14;
}

void sub_22127D210(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a2;
  v4 = a3;
  v9 = v4;
  if ((*(a1 + 48) & 1) == 0)
  {
    v8 = v4;
    v9 = objc_msgSend_copy(v4, v5, v6, v7, v9, v10);
  }

  sub_22116A130((*(*(a1 + 40) + 8) + 48), &v9);
  sub_22111D090(*(a1 + 32) + 64, &v10);
}

void sub_22127D728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);

  _Block_object_dispose(va, 8);
  sub_22107C860(v34 + 64, *(v33 + 120));

  _Unwind_Resume(a1);
}

uint64_t sub_22127D824(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *(a2 + 1);
  v9[0] = *a2;
  v9[1] = v6;
  result = objc_msgSend_cellIDForCellUID_(v5, a2, v9, a4);
  v10 = result;
  if (result != 0x7FFFFFFF && (result & 0xFFFF00000000) != 0x7FFF00000000)
  {
    return TSCECellCoordSet::addCellCoord((*(*(a1 + 40) + 8) + 48), &v10);
  }

  return result;
}

void sub_22127D890(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = *(a2 + 1);
  v13[0] = *a2;
  v13[1] = v8;
  v14 = objc_msgSend_cellIDForCellUID_(v7, a2, v13, a4);
  if (v14.row != 0x7FFFFFFF && (*&v14 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    if (!*(a1 + 56) || (objc_msgSend_p_cellAtIndex_inCellListArray_(*(a1 + 40), v9, a3, *(a1 + 48)), v11 = objc_claimAutoreleasedReturnValue(), v12 = (*(*(a1 + 56) + 16))(), v11, (v12 & 1) != 0))
    {
      TSCECellCoordSet::addCellCoord((*(*(a1 + 72) + 8) + 48), &v14);
    }

    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      *a4 = 1;
    }
  }
}

void sub_22127DAA4(uint64_t a1, _OWORD *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2[1];
  v13[0] = *a2;
  v13[1] = v7;
  v11 = objc_msgSend_cellIDForCellUID_(v6, v8, v13, v9);
  if (v11 != 0x7FFFFFFF && (v11 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    objc_msgSend_p_shallowAddCell_atCellCoord_(*(a1 + 40), v10, v5, v11);
  }
}

void sub_22127DEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  _Block_object_dispose(va, 8);
  sub_2210BDEC0(v22 + 48);

  _Unwind_Resume(a1);
}

void sub_22127DF30(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = sub_2210875C4((*(*(a1 + 40) + 8) + 48), (a2 + 16));
  v6 = v7;
  if (v5)
  {
    objc_msgSend_addCell_andCellUID_(*(a1 + 32), v7, v7, a2);
    v6 = v7;
  }
}

void sub_22127DFBC(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = sub_2210875C4((*(*(a1 + 40) + 8) + 48), a2);
  v6 = v7;
  if (v5)
  {
    objc_msgSend_addCell_andCellUID_(*(a1 + 32), v7, v7, a2);
    v6 = v7;
  }
}

void sub_22127E970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  _Block_object_dispose(&a24, 8);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_22127EA24(__n128 *a1, __n128 *a2)
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

void sub_22127EA48(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22127EA60(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *(a2 + 1);
  v8[0] = *a2;
  v8[1] = v6;
  v9 = objc_msgSend_cellIDForCellUID_(v5, a2, v8, a4);
  if (v9 != 0x7FFFFFFF && (v9 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    sub_22111D090(*(*(a1 + 40) + 8) + 48, &v9);
  }
}

void sub_22127EACC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = *(a2 + 1);
  v14[0] = *a2;
  v14[1] = v7;
  v15 = objc_msgSend_cellIDForCellUID_(v6, a2, v14, a4);
  if (v15 != 0x7FFFFFFF && (v15 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v10 = objc_msgSend_p_cellAtIndex_inCellListArray_(*(a1 + 40), v8, a3, *(a1 + 48));
    sub_22111D090(*(*(a1 + 56) + 8) + 48, &v15);
    v13 = objc_msgSend_p_addCell_(*(a1 + 40), v11, v10, v12);
  }
}

void sub_22127ED1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22127ED40(uint64_t a1, void *a2)
{
  v6 = a2;
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_count(v6, v3, v4, v5);
}

void *sub_22127F618(void *result, uint64_t *a2)
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

void sub_22127F6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22127FEA0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v22 = objc_msgSend_objectLocale(*(a1 + 32), a2, a3, a4);
  if (!v22)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCellList loadFromUnarchiver:]_block_invoke", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1332, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = *(a1 + 32) + 64;
  v17 = *v16;
  v18 = *(v16 + 8);
  while (v17 != v18)
  {
    v19 = *v17;
    objc_msgSend_setLocale_(v19, v20, v22, v21);

    ++v17;
  }
}

uint64_t *sub_22128026C(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_221123150(v6, v10);
    }

    sub_22107C148();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
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

void *sub_221280404(void *a1, unsigned int *a2, uint64_t a3, void **a4)
{
  v4 = *a2 + 16 * *(a2 + 2);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2 + 16 * *(a2 + 2);
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
LABEL_23:
    operator new();
  }

  v10 = *a2;
  while (1)
  {
    v11 = v9[1];
    if (v11 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v7)
    {
      goto LABEL_23;
    }

LABEL_22:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  v12 = v9[2];
  v14 = v12 == v10;
  v13 = (v10 ^ v12) & 0x101FFFF00000000;
  v14 = v14 && v13 == 0;
  if (!v14)
  {
    goto LABEL_22;
  }

  return v9;
}

void sub_22128066C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

void *sub_221280680(void *a1, void *a2, uint64_t a3, _OWORD **a4)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[1];
  v7 = v5 ^ v4 ^ *a2 ^ v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v5 ^ v4 ^ *a2 ^ v6;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v8)
      {
        v13 %= *&v8;
      }
    }

    else
    {
      v13 &= *&v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (v12[4] != v4 || v12[5] != v5 || v12[2] != *a2 || v12[3] != v6)
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_221280900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221280914(va);
  _Unwind_Resume(a1);
}

uint64_t sub_221280914(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_221280960(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[1];
  v6 = v4 ^ v3 ^ *a2 ^ v5;
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ v3 ^ *a2 ^ v5;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = (*&v2 - 1) & v6;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v11 == v6)
    {
      if (result[4] == v3 && result[5] == v4 && result[2] == *a2 && result[3] == v5)
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v2)
        {
          v11 %= *&v2;
        }
      }

      else
      {
        v11 &= *&v2 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_221280A48(unint64_t a1, void *a2, void *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_2210C2B00(a1, v5, v5);
      v5 += 2;
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t sub_221280AC4(uint64_t a1)
{
  sub_221280B00(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_221280B00(uint64_t a1, id *a2)
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

void sub_221280C6C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSTStrokeWidthCache;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_221280CE8(char **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = &(*a1)[32 * a2];
      while (v3 != v6)
      {
        v7 = *(v3 - 3);
        if (v7)
        {
          *(v3 - 2) = v7;
          operator delete(v7);
        }

        v3 -= 32;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_221281694(a1, v5);
  }
}

void sub_2212812A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  v31 = v29;

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221281314(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_22107C148();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_22107C1F0(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

__n128 sub_2212813E8(__n128 *a1, __n128 *a2)
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

void sub_22128140C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_221281424(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a3;
  v8 = *(*(a1 + 32) + 8);
  v9 = v8[6];
  v10 = v8[7];
  if (v9 == v10 || *(v10 - 1) != a4)
  {
    v14 = v8[8];
    if (v10 >= v14)
    {
      v16 = v10 - v9;
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3);
      v18 = v17 + 1;
      if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_22107C148();
      }

      v19 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v9) >> 3);
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x555555555555555)
      {
        v18 = 0xAAAAAAAAAAAAAAALL;
      }

      if (v18)
      {
        sub_2210CDBC0((v8 + 6), v18);
      }

      v20 = 24 * v17;
      *v20 = a2;
      *(v20 + 8) = v4;
      *(v20 + 16) = a4;
      v15 = 24 * v17 + 24;
      v21 = (24 * v17 - v16);
      memcpy(v21, v9, v16);
      v22 = v8[6];
      v8[6] = v21;
      v8[7] = v15;
      v8[8] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v10 = a2;
      *(v10 + 1) = a3;
      v15 = (v10 + 24);
      *(v10 + 2) = a4;
    }

    v8[7] = v15;
  }

  else
  {
    v12 = *(v10 - 3);
    v11 = *(v10 - 2);
    if (v12 != 0x7FFFFFFFFFFFFFFFLL && v11 != 0)
    {
      if (a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        a2 = *(v10 - 3);
        v4 = *(v10 - 2);
      }

      else
      {
        if (v12 >= a2)
        {
          v23 = a2;
        }

        else
        {
          v23 = *(v10 - 3);
        }

        v24 = v11 + v12;
        if (v11 + v12 <= a2 + a3)
        {
          v24 = a2 + a3;
        }

        v25 = v24 - v23;
        if (a3)
        {
          a2 = v23;
        }

        else
        {
          a2 = *(v10 - 3);
        }

        if (a3)
        {
          v4 = v25;
        }

        else
        {
          v4 = *(v10 - 2);
        }
      }
    }

    *(v10 - 3) = a2;
    *(v10 - 2) = v4;
  }

  v26 = *(*(a1 + 40) + 8);
  v27 = *(v26 + 24);
  if (v27 < a4)
  {
    v27 = a4;
  }

  *(v26 + 24) = v27;
}

void sub_221281694(char **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(a1[1], 32 * a2);
      v5 += 32 * a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      sub_22107C148();
    }

    v8 = v6 >> 5;
    v9 = v4 - *a1;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v18 = a1;
    if (v10)
    {
      sub_2212817BC(a1, v10);
    }

    v15 = 0;
    v16 = 32 * v8;
    bzero((32 * v8), 32 * a2);
    v17 = 32 * v8 + 32 * a2;
    v11 = a1[1];
    v12 = (32 * v8 + *a1 - v11);
    sub_221281804(a1, *a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = a1[2];
    *(a1 + 1) = v17;
    *&v17 = v13;
    *(&v17 + 1) = v14;
    v15 = v13;
    v16 = v13;
    sub_221281948(&v15);
  }
}

void sub_2212817A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221281948(va);
  _Unwind_Resume(a1);
}

void sub_2212817BC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t sub_221281804(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;
  v11 = a4;
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
    v6 = a2;
    do
    {
      *a4 = *v6;
      a4[2] = 0;
      a4[3] = 0;
      a4[1] = 0;
      *(a4 + 1) = *(v6 + 8);
      a4[3] = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 4;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }

  return sub_2212818C8(v9);
}

uint64_t sub_2212818C8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_221281900(a1);
  }

  return a1;
}

void sub_221281900(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 32;
  }
}

uint64_t sub_221281948(uint64_t a1)
{
  sub_221281980(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_221281980(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 32;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

uint64_t *sub_2212819E0(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_22120FCE8(v6, v11);
    }

    sub_22107C148();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_221281B3C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_221281B90(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_221281B90(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void sub_221282420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  v30 = *(v28 - 120);
  if (v30)
  {
    *(v28 - 112) = v30;
    operator delete(v30);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void sub_221282950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_221282B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221282DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

id sub_2212830D4(TSKUIDStruct **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, a1[1] - *a1, a4);
  v9 = *a1;
  v10 = a1[1];
  while (v9 != v10)
  {
    v11 = TSKUIDStruct::NSUUIDValue(v9);
    objc_msgSend_addObject_(v8, v12, v11, v13);

    ++v9;
  }

  v14 = objc_msgSend_copy(v8, v5, v6, v7);

  return v14;
}

void sub_221283490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2212834C8(__n128 *a1, __n128 *a2)
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

void sub_2212834EC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_221283504(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3 - 1 + a2;
  if (!__CFADD__(a3 - 1, a2))
  {
    v4 = a2;
    v6 = 16 * a2;
    do
    {
      sub_221083454(*(*(a1 + 40) + 8) + 48, (*(*(a1 + 32) + 64) + v6));
      ++v4;
      v6 += 16;
    }

    while (v4 <= v3);
  }
}