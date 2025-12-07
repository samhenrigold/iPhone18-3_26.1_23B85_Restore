void sub_221126A6C(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *v3 = &unk_2834A1DD0;
  *(v3 + 200) = 0;
}

void sub_221126AA8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x4812000000;
  v25 = sub_221126C48;
  v26 = sub_221126C6C;
  v27 = &unk_22188E88F;
  v29 = 0;
  v30 = 0;
  __p = 0;
  lower = objc_msgSend_tableUID(v5, v6, v7, v8);
  if (!lower)
  {
    if (upper)
    {
      lower = 0;
    }

    else
    {
      v11 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      lower = v11->var0.var0._tableUID._lower;
      upper = v11->var0.var0._tableUID._upper;
    }
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_221126C84;
  v16[3] = &unk_27845F788;
  v19 = a1;
  v20 = lower;
  v21 = upper;
  v12 = v5;
  v17 = v12;
  v18 = &v22;
  objc_msgSend_foreachCellRect_(v12, v13, v16, v14);
  v15 = v23;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_221127614(a3, v15[6], v15[7], (v15[7] - v15[6]) >> 3);

  _Block_object_dispose(&v22, 8);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }
}

void sub_221126C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_221126C48(__n128 *a1, __n128 *a2)
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

void sub_221126C6C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_221126C84(uint64_t a1, TSUCellCoord *a2)
{
  v3 = *(a1 + 48);
  v4 = *a2;
  v5 = a2[1];
  v20.range._topLeft = __C(v4, v5);
  v20.range._bottomRight = v6;
  v20._tableUID = *(a1 + 56);
  objc_msgSend_setPreserveFlagsOnSubrange_(*(a1 + 32), v6, &v20, v7);
  TSCERangeRef::fixInversions(&v20);
  bottomRight = v20.range._bottomRight;
  v19.coordinate = v20.range._topLeft;
  v19._tableUID = v20._tableUID;
  v18.coordinate = v20.range._bottomRight;
  v18._tableUID = v20._tableUID;
  v17._flags = (*&v20.range._topLeft >> 47) & 2 | v20.range._topLeft._preserveColumn;
  v9 = (*&v20.range._bottomRight >> 47) & 2;
  v10 = v9 | HIBYTE(*&v20.range._bottomRight);
  v16._flags = v9 | v20.range._bottomRight._preserveColumn;
  tableUID = TSCEFormulaRewriteContext::containingCell(v3[1])->var0.var0._tableUID;
  coordinate = TSCEFormulaRewriteContext::containingCell(v3[1])->var0.var0.coordinate;
  v11 = TSCEASTIteratorBase::createReference(v3, &v19, &v17, &tableUID, &coordinate, 0);
  coordinate = v11;
  if (v19.coordinate.row != bottomRight.row || ((*&bottomRight ^ *&v19.coordinate) & 0x101FFFF00000000) != 0 || v19._tableUID._lower != v18._tableUID._lower || v19._tableUID._upper != v18._tableUID._upper || v17._flags != v10)
  {
    tableUID = TSCEFormulaRewriteContext::containingCell(v3[1])->var0.var0._tableUID;
    v13 = TSCEFormulaRewriteContext::containingCell(v3[1])->var0.var0.coordinate;
    v12 = TSCEASTIteratorBase::createReference(v3, &v18, &v16, &tableUID, &v13, 0);
    TSCEASTRewriter::createBinaryOp(v3, 0x1C, v11, v12);
  }

  if (v11)
  {
    sub_221126E28(*(*(a1 + 40) + 8) + 48, &coordinate);
  }
}

void sub_221126E28(uint64_t a1, void *a2)
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
      sub_221122DC8(a1, v10);
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

TSCEASTFunctionElement *sub_221126EFC(TSCEFormulaRewriteContext **a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4);
  if ((v6 - 113) <= 0x37 && ((1 << (v6 - 113)) & 0x87800478000001) != 0 || (v6 - 30) <= 0x3F && ((1 << (v6 - 30)) & 0x8DC0000000000003) != 0 || (v6 - 14) < 3)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    sub_221127614(&v37, *(this + 3), *(this + 4), (*(this + 4) - *(this + 3)) >> 3);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    if (*(a1 + 200) == 1)
    {
      v7 = v37;
      v8 = v38;
      if (v37 != v38)
      {
        v9 = 0;
        do
        {
          v33 = *v7;
          if (TSCEASTElement::tag(v33, a1) == 67)
          {
            v12 = v33;
            v13 = TSCEASTColonTractElement::relativeTractRef(v33, a1, v10, v11);
            __p = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
            v16 = objc_msgSend_absoluteCellTractRefForHostCell_(v13, v14, &__p, v15);
            if (objc_msgSend_isValid(v16, v17, v18, v19) && (objc_msgSend_isRectangularRange(v16, v20, v21, v22) & 1) == 0)
            {
              sub_221126AA8(a1, v16, &__p);
              v23 = __p;
              v24 = v32;
              while (v23 != v24)
              {
                v30 = *v23;
                sub_221126E28(&v34, &v30);
                ++v23;
              }

              if (v12)
              {
                (*(*v12 + 8))(v12);
              }

              if (__p)
              {
                v32 = __p;
                operator delete(__p);
              }

              v9 = 1;
            }
          }

          else
          {
            sub_221126E28(&v34, &v33);
          }

          ++v7;
        }

        while (v7 != v8);
        v26 = v34;
        if (v9)
        {
          *(this + 4) = *(this + 3);
          v27 = v35;
          if (v26 == v35)
          {
            v28 = v26;
          }

          else
          {
            do
            {
              TSCEASTElementWithChildren::appendChild(this, *v26++);
            }

            while (v26 != v27);
            v26 = v34;
            v28 = v35;
          }

          TSCEASTFunctionElement::setNumArgs(this, ((v28 - v26) >> 3), a1, v25);
          v26 = v34;
        }

        if (v26)
        {
          v35 = v26;
          operator delete(v26);
        }
      }
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }
  }

  return this;
}

void sub_221127174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

TSCEASTColonTractElement *sub_2211271E0(TSCEFormulaRewriteContext **a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4);
  v57.coordinate = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
  v9 = objc_msgSend_absoluteCellTractRefForHostCell_(v6, v7, &v57, v8);
  lower = objc_msgSend_tableUID(v9, v10, v11, v12);
  upper = v13;
  if (!lower)
  {
    if (v13)
    {
      lower = 0;
    }

    else
    {
      v18 = TSCEFormulaRewriteContext::containingCell(a1[1]);
      lower = v18->var0.var0._tableUID._lower;
      upper = v18->var0.var0._tableUID._upper;
    }
  }

  if ((objc_msgSend_isValid(v9, v13, v14, v15) & 1) == 0)
  {
    TSCEASTIteratorBase::createReferenceError(a1, v19, v20, v21);
  }

  if (objc_msgSend_isRectangularRange(v9, v19, v20, v21))
  {
    v57.coordinate = objc_msgSend_topLeft(v9, v22, v23, v24);
    v57._tableUID._lower = lower;
    v57._tableUID._upper = upper;
    v56.coordinate = objc_msgSend_bottomRight(v9, v25, v26, v27);
    v56._tableUID._lower = lower;
    v56._tableUID._upper = upper;
    v28 = (*(*this + 96))(this, a1);
    v55._flags = objc_msgSend_preserveFlags(v9, v29, v30, v31) & 3;
    tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
    coordinate = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
    v32 = TSCEASTIteratorBase::createReference(a1, &v57, &v55, &tableUID, &coordinate, 0);
    v52._flags = (objc_msgSend_preserveFlags(v9, v33, v34, v35) >> 2) & 3;
    v51 = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
    v50 = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
    v36 = TSCEASTIteratorBase::createReference(a1, &v56, &v52, &v51, &v50, 0);
    TSCEASTRewriter::createColonWithUidTractList(a1, v28, v32, v36);
  }

  if (*(a1 + 200) == 1)
  {
    memset(&v57, 0, sizeof(v57));
    v37 = TSCEASTColonTractElement::relativeTractRef(this, a1, v23, v24);
    v56.coordinate = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
    v40 = objc_msgSend_absoluteCellTractRefForHostCell_(v37, v38, &v56, v39);
    if (objc_msgSend_isValid(v40, v41, v42, v43) && (objc_msgSend_isRectangularRange(v40, v44, v45, v46) & 1) == 0)
    {
      sub_221126AA8(a1, v40, &v56);
      v47 = v56.coordinate;
      v48 = v56._tableUID._lower;
      if (*&v56.coordinate != v56._tableUID._lower)
      {
        do
        {
          tableUID._lower = *v47;
          sub_221126E28(&v57, &tableUID);
          ++v47;
        }

        while (v47 != v48);
        v47 = v56.coordinate;
      }

      if (v47)
      {
        v56._tableUID._lower = v47;
        operator delete(v47);
      }
    }

    if (v57._tableUID._lower != *&v57.coordinate)
    {
      if (this)
      {
        (*(*this + 8))(this);
      }

      TSCEASTRewriter::createFunction(a1, 0x11D, &v57, v46);
    }

    if (v57.coordinate)
    {
      v57._tableUID._lower = v57.coordinate;
      operator delete(*&v57.coordinate);
    }
  }

  return this;
}

void sub_22112753C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  v26 = *(v24 - 88);
  if (v26)
  {
    *(v24 - 80) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void sub_2211275DC(TSCEASTRewriter *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_221127614(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221127690(result, a4);
  }

  return result;
}

void sub_221127674(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221127690(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_221122DC8(a1, a2);
  }

  sub_22107C148();
}

void sub_221127924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221127FA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2211287B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v32 = *(v30 - 112);
  if (v32)
  {
    *(v30 - 104) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void sub_221128DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_2210BC9F8(v5 - 56, *(v5 - 48));
  sub_22109DBB8(va);
  sub_22109DBB8(va1);

  _Unwind_Resume(a1);
}

void sub_221128FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  sub_22109DBB8(&a9);
  sub_22109DBB8(va);

  _Unwind_Resume(a1);
}

void sub_2211297B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221129D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22112A1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22112A3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22112A4F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22112A838(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 120), 8);
  v5 = *(v3 - 72);
  if (v5)
  {
    *(v3 - 64) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

__n128 sub_22112A8C4(__n128 *a1, __n128 *a2)
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

void sub_22112A8E8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22112A900(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 32);
  v6.range._topLeft = ((a2 << 32) | 0x7FFFFFFF);
  v6.range._bottomRight = ((((a2 + a3) << 32) + 0xFFFF00000000) & 0xFFFF00000000 | 0x7FFFFFFF);
  v6._tableUID = *(v4 + 96);
  LOBYTE(v5.range._topLeft.row) = *(v4 + 90);
  TSCERangeRef::setPreserveFlags(&v6, &v5);
  v5 = v6;
  sub_22112A984(*(*(a1 + 40) + 8) + 48, &v5);
}

void sub_22112A984(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_22107C148();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_221087FE8(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void sub_22112AA5C(uint64_t a1, unsigned int a2, int a3)
{
  v4 = *(a1 + 32);
  v6.range._topLeft = (a2 | 0x7FFF00000000);
  v6.range._bottomRight = ((a3 + a2 - 1) | 0x7FFF00000000);
  v6._tableUID = *(v4 + 96);
  LOBYTE(v5.range._topLeft.row) = *(v4 + 90);
  TSCERangeRef::setPreserveFlags(&v6, &v5);
  v5 = v6;
  sub_22112A984(*(*(a1 + 40) + 8) + 48, &v5);
}

void sub_22112AAD8(uint64_t a1, TSUCellCoord a2, $925F2A0F20B28CD67DCCD182188DAC27 a3)
{
  v9.origin = a2;
  v9.size = a3;
  v5 = TSUCellRect::bottomRight(&v9);
  v6 = *(a1 + 32);
  v8.range._topLeft = a2;
  v8.range._bottomRight = v5;
  v8._tableUID = *(v6 + 96);
  LOBYTE(v7.range._topLeft.row) = *(v6 + 90);
  TSCERangeRef::setPreserveFlags(&v8, &v7);
  v7 = v8;
  sub_22112A984(*(*(a1 + 40) + 8) + 48, &v7);
}

void sub_22112AF1C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 136), 8);
  v5 = *(v3 - 88);
  if (v5)
  {
    *(v3 - 80) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

__n128 sub_22112AFB0(__n128 *a1, __n128 *a2)
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

void sub_22112AFD4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22112AFEC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v7.range._topLeft = ((a2 << 32) | 0x7FFFFFFF);
  v7.range._bottomRight = ((((a2 + a3) << 32) + 0xFFFF00000000) & 0xFFFF00000000 | 0x7FFFFFFF);
  v7._tableUID = v5[6];
  LOBYTE(v6.range._topLeft.row) = objc_msgSend_viewPreserveFlags(v5, a2, a3, a4);
  TSCERangeRef::setPreserveFlags(&v7, &v6);
  v6 = v7;
  sub_22112A984(*(*(a1 + 40) + 8) + 48, &v6);
}

void sub_22112B070(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v7.range._topLeft = (a2 | 0x7FFF00000000);
  v7.range._bottomRight = ((a3 + a2 - 1) | 0x7FFF00000000);
  v7._tableUID = v5[6];
  LOBYTE(v6.range._topLeft.row) = objc_msgSend_viewPreserveFlags(v5, a2, a3, a4);
  TSCERangeRef::setPreserveFlags(&v7, &v6);
  v6 = v7;
  sub_22112A984(*(*(a1 + 40) + 8) + 48, &v6);
}

void sub_22112B0EC(uint64_t a1, TSUCellCoord a2, $925F2A0F20B28CD67DCCD182188DAC27 a3)
{
  v9.origin = a2;
  v9.size = a3;
  v5 = TSUCellRect::bottomRight(&v9);
  v6 = *(a1 + 32);
  v8.range._topLeft = a2;
  v8.range._bottomRight = v5;
  v8._tableUID = *(v6 + 96);
  LOBYTE(v7.range._topLeft.row) = *(v6 + 90);
  TSCERangeRef::setPreserveFlags(&v8, &v7);
  v7 = v8;
  sub_22112A984(*(*(a1 + 40) + 8) + 48, &v7);
}

void sub_22112B238(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22112B604(_Unwind_Exception *a1, uint64_t a2, TSUIndexSet *a3, TSUIndexSet *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_22109DBB8(&a15);

  _Unwind_Resume(a1);
}

void sub_22112B780(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22112B8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if ((v14 & 1) == 0)
  {
    sub_22109DBB8(va);
  }

  _Unwind_Resume(a1);
}

void sub_22112BE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  sub_22109DBB8(&__p);

  _Unwind_Resume(a1);
}

void sub_22112BF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22112C1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_22109DBB8(&a9);
  sub_22109DBB8(va);

  _Unwind_Resume(a1);
}

uint64_t **sub_22112C58C(uint64_t **a1, unint64_t *a2, unint64_t *a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_22112C610(a1, v4, v6, v6);
      v6 += 2;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t sub_22112C610(uint64_t **a1, void *a2, unint64_t *a3, _OWORD *a4)
{
  v4 = *sub_22112C6A8(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *sub_22112C6A8(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  if (a1 + 1 == a2 || *a5 < *(a2 + 2))
  {
    v5 = *a2;
    if (*a1 == a2)
    {
      v7 = a2;
    }

    else
    {
      if (v5)
      {
        v6 = *a2;
        do
        {
          v7 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        v10 = a2;
        do
        {
          v7 = v10[2];
          v11 = *v7 == v10;
          v10 = v7;
        }

        while (v11);
      }

      if (*(v7 + 2) >= *a5)
      {
        return sub_22112C810(a1, a3, a5);
      }
    }

    if (v5)
    {
      *a3 = v7;
      return v7 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  else if (a2[5] >= a5[1] && a2[4] >= *a5)
  {
    *a3 = a2;
    *a4 = a2;
  }

  else
  {
    v8 = a2[1];
    if (v8)
    {
      v9 = a2[1];
      do
      {
        a4 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      v12 = a2;
      do
      {
        a4 = v12[2];
        v11 = *a4 == v12;
        v12 = a4;
      }

      while (!v11);
    }

    if (a4 != a1 + 1 && *a5 >= *(a4 + 2))
    {
      return sub_22112C810(a1, a3, a5);
    }

    if (v8)
    {
      *a3 = a4;
    }

    else
    {
      *a3 = a2;
      return a2 + 1;
    }
  }

  return a4;
}

void *sub_22112C810(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v7 = *a3;
    v6 = a3[1];
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[5];
        if (__PAIR128__(v6, v7) >= __PAIR128__(v9, v8[4]))
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6 && v8[4] >= v7)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t sub_22112C87C(uint64_t **a1, unint64_t *a2)
{
  v3 = sub_22112C8D0(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_22112C950(a1, v3);
  operator delete(v4);
  return 1;
}

void *sub_22112C8D0(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  do
  {
    v8 = v3[5];
    if (v8 >= v6)
    {
      if (v8 == v6)
      {
        v9 = v3[4];
        v10 = v9 >= v5;
        v11 = v9 < v5;
        if (v10)
        {
          v7 = v3;
        }

        v3 += v11;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2 || __PAIR128__(v6, v5) < *(v7 + 2))
  {
    return v2;
  }

  return v7;
}

uint64_t *sub_22112C950(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_22112C9C4(v6, a2);
  return v3;
}

uint64_t *sub_22112C9C4(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    *(v7 + 8) = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = *(v7 + 16);
    *(v24 + 16) = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    *(v7 + 16) = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t *sub_22112CD44(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22111A0C8(result, a4);
  }

  return result;
}

void sub_22112CDA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_22112CDC0(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22111A0C8(result, a4);
  }

  return result;
}

void sub_22112CE20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_22112E6A0(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
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

void sub_22112E924()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v3 = objc_msgSend_initWithProperties_(v0, v1, 896, v2, 897, 898, 903, 904, 0);
  v4 = qword_27CFB51D8;
  v16 = v3;
  qword_27CFB51D8 = v3;

  if (!qword_27CFB51D8)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSTCellStyle properties]_block_invoke", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 64, 0, "invalid nil value for '%{public}s'", "sProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }
}

void sub_22112EAA0()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v3 = objc_msgSend_initWithProperties_(v0, v1, 898, v2, 0);
  v4 = qword_27CFB51E8;
  v16 = v3;
  qword_27CFB51E8 = v3;

  if (!qword_27CFB51E8)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSTCellStyle propertiesAllowingNSNull]_block_invoke", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 79, 0, "invalid nil value for '%{public}s'", "s_nullProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }
}

void sub_22112EC04()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v3 = objc_msgSend_initWithProperties_(v0, v1, 896, v2, 903, 904, 0);
  v4 = qword_27CFB51F8;
  v16 = v3;
  qword_27CFB51F8 = v3;

  if (!qword_27CFB51F8)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSTCellStyle nonEmphasisCellProperties]_block_invoke", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 97, 0, "invalid nil value for '%{public}s'", "s_nonEmphasisProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }
}

void sub_22112ED74()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v3 = objc_msgSend_initWithProperties_(v0, v1, 898, v2, 903, 904, 0);
  v4 = qword_27CFB5208;
  v16 = v3;
  qword_27CFB5208 = v3;

  if (!qword_27CFB5208)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSTCellStyle categoriesCellProperties]_block_invoke", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 113, 0, "invalid nil value for '%{public}s'", "sProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }
}

void sub_221130530(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_2211307C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221130840(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = a2;
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCellStyle targetSizeForImageData:associatedHint:]_block_invoke", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 419, 0, "invalid nil value for '%{public}s'", "preset");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v19 = *(a1 + 40);
  if (v19 == objc_msgSend_presetID(v9, v6, v7, v8))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_221130BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221130C4C(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  v10 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), a2, a2, a4);
  v9 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v7, a2, v8);
  TSDMixingTypeWithObjects();
  *(*(*(a1 + 56) + 8) + 24) = TSDMixingTypeBestFromMixingTypes();
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_221130F24(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v11 = objc_msgSend_boxedValueForProperty_(a1[4], a2, a2, a4);
  v8 = objc_msgSend_boxedValueForProperty_(a1[5], v6, a2, v7);
  v9 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setBoxedValue_forProperty_(a1[6], v10, v9, a2);
}

void *sub_22113183C(void *a1, unint64_t *a2, uint64_t a3)
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

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void sub_221131E14(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_221131EB0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_221132860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_221132BC0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_221132E08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 0x10)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSTColumnRowTypeWithIndex TSTMakeColumnRowTypeWithIndex(TSTColumnRowType, NSUInteger)", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableConstants.h", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 216, 0, "Type:%ldl or index:%lul is too large for TSTIndexedColumnRowType.", a1, a2);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  return (a2 + 16 * a1);
}

uint64_t sub_221133814(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_summaryModel(*(a1 + 32), a2, a3, a4);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_cellValueTypeAtSummaryModelCoord_(v6, v7, *a2, v8);

  return 0;
}

void sub_221133BF0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221133C10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221133C28(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_defaultCellStyleForTableStyleArea_(*(a1[4] + 16), a2, 15, a4);
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = a1[6];
  if (v8)
  {
    *v8 = 1;
  }
}

void sub_221133C8C(void *a1, const char *a2)
{
  v3 = objc_msgSend_cellStyleOfRowAtIndex_isDefault_(*(a1[4] + 16), a2, *a2, a1[6]);
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_221133CF0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_bodyCellStyle(*(*(a1 + 32) + 8), a2, a3, a4);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_221133EC8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_221133EE8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_defaultTextStyleForTableStyleArea_(*(a1[4] + 16), a2, 15, a4);
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = a1[6];
  if (v8)
  {
    *v8 = 1;
  }
}

void sub_221133F4C(void *a1, const char *a2)
{
  v3 = objc_msgSend_textStyleOfRowAtIndex_isDefault_(*(a1[4] + 16), a2, *a2, a1[6]);
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_221133FB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_bodyTextStyle(*(*(a1 + 32) + 8), a2, a3, a4);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_221134334(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_221134354(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_defaultCellStyleForTableStyleArea_(*(a1[4] + 16), a2, 16, a4);
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = a1[6];
  if (v8)
  {
    *v8 = 1;
  }
}

void sub_2211343B8(void *a1, const char *a2)
{
  v3 = objc_msgSend_cellStyleOfColumnAtIndex_isDefault_(*(a1[4] + 16), a2, *a2, a1[6]);
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_22113441C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_bodyCellStyle(*(*(a1 + 32) + 8), a2, a3, a4);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_2211345F4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_221134614(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_defaultTextStyleForTableStyleArea_(*(a1[4] + 16), a2, 16, a4);
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = a1[6];
  if (v8)
  {
    *v8 = 1;
  }
}

void sub_221134678(void *a1, const char *a2)
{
  v3 = objc_msgSend_textStyleOfColumnAtIndex_isDefault_(*(a1[4] + 16), a2, *a2, a1[6]);
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_2211346DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_bodyTextStyle(*(*(a1 + 32) + 8), a2, a3, a4);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_221134F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v23 - 104), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221134F60(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_summaryModel(*(a1[4] + 8), a2, a3, a4);
  v8 = objc_msgSend_cellStyleAtModelCellCoord_isDefault_(v6, v7, *a2, *(a1[5] + 8) + 24);

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v8);
  }

  return 0;
}

uint64_t sub_221135008(void *a1, const char *a2)
{
  v3 = objc_msgSend_cellStyleAtModelCellCoord_isDefault_(*(a1[4] + 16), a2, *a2, *(a1[5] + 8) + 24);
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v3);
  }

  return 0;
}

void sub_221135230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v23 - 104), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_22113525C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_summaryModel(*(a1[4] + 8), a2, a3, a4);
  v8 = objc_msgSend_textStyleAtModelCellCoord_isDefault_(v6, v7, *a2, *(a1[5] + 8) + 24);

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v8);
  }

  return 0;
}

uint64_t sub_221135304(void *a1, const char *a2)
{
  v3 = objc_msgSend_textStyleAtModelCellCoord_isDefault_(*(a1[4] + 16), a2, *a2, *(a1[5] + 8) + 24);
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v3);
  }

  return 0;
}

uint64_t sub_221135CA4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_summaryModel(*(a1 + 32), a2, a3, a4);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_cellExistsAtCellCoord_(v6, v7, *a2, v8);

  return 0;
}

void sub_221135F20(_Unwind_Exception *a1, TSUIndexSet *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char *a29)
{
  TSUIndexSet::~TSUIndexSet(&a10);

  _Block_object_dispose(&a20, 8);
  sub_22107C860(v32 + 64, a29);
  _Unwind_Resume(a1);
}

void sub_221135FB0(uint64_t a1, TSUCellCoord a2)
{
  v51 = a2;
  if ((TSCECellCoordSet::containsCellCoord((*(*(a1 + 40) + 8) + 48), &v51) & 1) == 0)
  {
    TSCECellCoordSet::addCellCoord((*(*(a1 + 40) + 8) + 48), &v51);
    column = v51.column;
    if (column >= objc_msgSend_numberOfHeaderColumns(*(a1 + 32), v4, v5, v6))
    {
      row = v51.row;
      if (row >= objc_msgSend_numberOfHeaderRows(*(a1 + 32), v7, v8, v9))
      {
        v13 = objc_msgSend_groupLevelAtSummaryColumn_(*(a1 + 32), v11, v51.column, v12);
        v19 = objc_msgSend_groupLevelAtSummaryRow_(*(a1 + 32), v14, v51.row, v15);
        if (v13 == 255)
        {
          *&v50 = 0;
          v50._singleRange._begin = 0;
          *&v50 = objc_msgSend_bodyRange(*(a1 + 32), v16, v17, v18);
          v50._singleRange._begin = v24;
          v25 = MEMORY[0x277CCAB58];
          v26 = TSUCellRect::columns(&v50);
          v23 = objc_msgSend_indexSetWithIndexesInRange_(v25, v27, v26, v27);
          v31 = objc_msgSend_indexesForSummaryColumns(*(a1 + 32), v28, v29, v30);
          objc_msgSend_removeIndexes_(v23, v32, v31, v33);
        }

        else
        {
          v23 = objc_msgSend_indexesForSummaryColumnsAtGroupLevel_(*(a1 + 32), v16, v13, v18);
        }

        if (v19 == 255)
        {
          *&v50 = objc_msgSend_bodyRange(*(a1 + 32), v20, v21, v22);
          v50._singleRange._begin = v35;
          v36 = MEMORY[0x277CCAB58];
          v37 = TSUCellRect::rows(&v50);
          v34 = objc_msgSend_indexSetWithIndexesInRange_(v36, v38, v37, v38);
          v42 = objc_msgSend_indexesForSummaryRows(*(a1 + 32), v39, v40, v41);
          objc_msgSend_removeIndexes_(v34, v43, v42, v44);

          if (!v23)
          {
LABEL_13:

            return;
          }
        }

        else
        {
          v34 = objc_msgSend_indexesForSummaryRowsAtGroupLevel_(*(a1 + 32), v20, v19, v22);
          if (!v23)
          {
            goto LABEL_13;
          }
        }

        if (v34)
        {
          MEMORY[0x223D9F7A0](&v50, v34);
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3321888768;
          v48[2] = sub_221136264;
          v48[3] = &unk_2834A1FB0;
          v48[4] = *(a1 + 40);
          *&v49 = -1;
          *&v45.f64[0] = 0x8000000080000000;
          *&v45.f64[1] = 0x8000000080000000;
          v49._singleRange = vnegq_f64(v45);
          v49._multipleRanges = 0;
          TSUIndexSet::operator=();
          objc_msgSend_enumerateIndexesUsingBlock_(v23, v46, v48, v47);
          TSUIndexSet::~TSUIndexSet(&v49);
          TSUIndexSet::~TSUIndexSet(&v50);
        }

        goto LABEL_13;
      }
    }
  }
}

uint64_t sub_221136280(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v2 = a1 + 40;
  *v2 = v3 | 3;
  *&v4.f64[0] = 0x8000000080000000;
  *&v4.f64[1] = 0x8000000080000000;
  *(v2 + 8) = vnegq_f64(v4);
  *(v2 + 24) = 0;
  return TSUIndexSet::operator=();
}

void sub_2211364A4(uint64_t a1, void *a2)
{
  v12 = a2;
  if (objc_msgSend_rowCount(v12, v3, v4, v5))
  {
    v9 = *(a1 + 32);
    v10 = objc_msgSend_groupUid(v12, v6, v7, v8);
    objc_msgSend_addUUID_(v9, v11, v10, v11);
  }
}

void sub_22113662C(uint64_t a1, void *a2)
{
  v12 = a2;
  if (objc_msgSend_rowCount(v12, v3, v4, v5))
  {
    v9 = *(a1 + 32);
    v10 = objc_msgSend_groupUid(v12, v6, v7, v8);
    objc_msgSend_addUUID_(v9, v11, v10, v11);
  }
}

void sub_2211367FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v20 = v19;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221136854(uint64_t a1, const char *a2, uint64_t a3)
{
  v45 = objc_msgSend_groupNodeForGroupUid_(*(a1 + 32), a2, a2, a3);
  v12 = objc_msgSend_groupLevel(v45, v6, v7, v8);
  if (v12)
  {
    if (v12 < objc_msgSend_numberOfRowLevels(*(a1 + 40), v9, v10, v11))
    {
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 24);
      if (v15 >= v12)
      {
        LOBYTE(v15) = v12;
      }

      *(v14 + 24) = v15;
      v16 = objc_msgSend_viewRowIndexForRowUID_(*(a1 + 40), v13, a2, a3);
      v18 = objc_msgSend_indexesForSummaryRowsFromGroupLevel_toGroupLevel_(*(*(a1 + 40) + 8), v17, 1, v12);
      v22 = objc_msgSend_mutableCopy(v18, v19, v20, v21);

      v26 = objc_msgSend_numberOfHeaderRows(*(*(a1 + 40) + 8), v23, v24, v25);
      objc_msgSend_addIndex_(v22, v27, (v26 - 1), v28);
      LODWORD(v18) = objc_msgSend_indexLessThanIndex_(v22, v29, v16, v30);
      v34 = objc_msgSend_rowAggregateGroupSize(*(a1 + 40), v31, v32, v33);
      objc_msgSend_addIndexesInRange_(*(a1 + 48), v35, (v18 + 1), v34 + v16 - (v18 + 1));
    }
  }

  else
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTPivotTranslator indexesForRowsContainedByGroupUIDs:]_block_invoke", v11);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotTranslator.mm", v39);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v37, v40, 1035, 0, "do not call with root group");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44);
  }
}

void sub_221136B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v20 = v19;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221136BEC(uint64_t a1, const char *a2, uint64_t a3)
{
  v45 = objc_msgSend_groupNodeForGroupUid_(*(a1 + 32), a2, a2, a3);
  v12 = objc_msgSend_groupLevel(v45, v6, v7, v8);
  if (v12)
  {
    if (v12 < objc_msgSend_numberOfColumnLevels(*(a1 + 40), v9, v10, v11))
    {
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 24);
      if (v15 >= v12)
      {
        LOBYTE(v15) = v12;
      }

      *(v14 + 24) = v15;
      v16 = objc_msgSend_viewColumnIndexForColumnUID_(*(a1 + 40), v13, a2, a3);
      v18 = objc_msgSend_indexesForSummaryColumnsFromGroupLevel_toGroupLevel_(*(*(a1 + 40) + 8), v17, 1, v12);
      v22 = objc_msgSend_mutableCopy(v18, v19, v20, v21);

      v26 = objc_msgSend_numberOfHeaderColumns(*(*(a1 + 40) + 8), v23, v24, v25);
      objc_msgSend_addIndex_(v22, v27, (v26 - 1), v28);
      LOWORD(v18) = objc_msgSend_indexLessThanIndex_(v22, v29, v16, v30);
      v34 = objc_msgSend_columnAggregateGroupSize(*(a1 + 40), v31, v32, v33);
      objc_msgSend_addIndexesInRange_(*(a1 + 48), v35, (v18 + 1), (v16 + v34 - 1) - (v18 + 1) + 1);
    }
  }

  else
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTPivotTranslator indexesForColumnsContainedByGroupUIDs:]_block_invoke", v11);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotTranslator.mm", v39);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v37, v40, 1069, 0, "do not call with root group");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44);
  }
}

void sub_2211375AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = v3;
  v8 = objc_msgSend_groupUid(v3, v5, v6, v7);
  v10 = objc_msgSend_columnIndexForColumnUID_(v4, v9, v8, v9);
  objc_msgSend_addIndexesInRange_(*(a1 + 40), v11, v10, *(a1 + 48));
}

void sub_221137FC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = v3;
  v8 = objc_msgSend_groupUid(v3, v5, v6, v7);
  v10 = objc_msgSend_rowIndexForRowUID_(v4, v9, v8, v9);
  objc_msgSend_addIndexesInRange_(*(a1 + 40), v11, v10, *(a1 + 48));
}

void sub_22113897C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10)
{
  sub_22107C2C0(&a10);

  _Unwind_Resume(a1);
}

void sub_2211389A0(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_22113C904(a1, v5);
  }
}

uint64_t sub_221138A3C(uint64_t a1)
{
  if (!a1)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Never call me without a row", "TSUColumnIndex _maxColumnIndex(TSTTableTileRowInfo *__unsafe_unretained)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 795);
    v8 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "TSUColumnIndex _maxColumnIndex(TSTTableTileRowInfo *__unsafe_unretained)", v10);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v11, v14, 795, 1, "Never call me without a row");

    TSUCrashBreakpoint();
    abort();
  }

  if (*(a1 + 90) != 1)
  {
    *(a1 + 88) = 0x7FFF;
    if (*(a1 + 8))
    {
      v2 = *(a1 + 40);
      if (*(a1 + 40))
      {
        v1 = (v2 - 1) + 1;
        do
        {
          v3 = v1--;
          if (v3 != 0x8000 && v2 > v1 && *(*(a1 + 32) + 2 * v1) != -1)
          {
            goto LABEL_21;
          }
        }

        while (v1 > 0);
      }
    }

    else
    {
      if (*(a1 + 42))
      {
        LOWORD(v1) = 0x7FFF;
LABEL_22:
        *(a1 + 90) = 1;
        return v1;
      }

      v4 = *(a1 + 80);
      if (*(a1 + 80))
      {
        v5 = (v4 - 1) + 1;
        do
        {
          v6 = v5--;
          if (v6 != 0x8000 && v4 > v5)
          {
            LOWORD(v1) = v5;
            if (*(*(a1 + 72) + 2 * v5) != -1)
            {
              goto LABEL_21;
            }
          }
        }

        while (v5 > 0);
      }
    }

    LOWORD(v1) = 0x7FFF;
LABEL_21:
    *(a1 + 88) = v1;
    goto LABEL_22;
  }

  LOWORD(v1) = *(a1 + 88);
  return v1;
}

void sub_221138D14(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = *(a1 + 24);
  if (v3)
  {
    free(v3);
    *(a1 + 24) = 0;
  }

  *(a1 + 32) = 0;
  *(a1 + 34) = 0;
}

void *sub_221139174(uint64_t a1, int a2, const void **a3, void *a4)
{
  v4 = a4;
  *(a1 + 31) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (*(a3 + 23) >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  sub_221139394(a1, v8, a3, a4);
  if (*(a3 + 23) >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  result = memcpy(*a1, v9, v8);
  v11 = *(v4 + 23);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = v4[1];
  }

  if (v12 < 0)
  {
    v4 = *v4;
  }

  if (a2)
  {
    *(a1 + 34) = 1;
    if (v11 == 510)
    {
      for (i = 254; *(v4 + i) == -1; --i)
      {
        v11 -= 2;
        if (!v11)
        {
          return result;
        }
      }
    }
  }

  if (v11)
  {
    v14 = (v11 >> 1) - 1;
    v15 = v14;
    if (v14 >= 0xFEu)
    {
      v15 = 254;
    }

    v16 = 510;
    if (v11 < 0x1FE)
    {
      v16 = v11;
    }

    if (a2)
    {
      v17 = v11;
    }

    else
    {
      v14 = v15;
      v17 = v16;
    }

    sub_221139CC8(a1, v14);
    v18 = *(a1 + 24);

    return memcpy(v18, v4, v17);
  }

  return result;
}

uint64_t sub_2211392B0(uint64_t result)
{
  if (!result)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Never call me without a row", "void _invalidateMaxColumnIndex(TSTTableTileRowInfo *__unsafe_unretained)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 804);
    v1 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "void _invalidateMaxColumnIndex(TSTTableTileRowInfo *__unsafe_unretained)", v3);
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v6);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v1, v8, v4, v7, 804, 1, "Never call me without a row");

    TSUCrashBreakpoint();
    abort();
  }

  *(result + 88) = 0x7FFF;
  *(result + 90) = 0;
  return result;
}

void **sub_221139394(void **result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  result[1] = a2;
  v5 = result[2];
  if (v5 < a2)
  {
    v6 = result;
    if (a2 >= 0x41)
    {
      if (a2 >= 0x81)
      {
        if (a2 >= 0x201)
        {
          if (a2 >= 0x401)
          {
            v7 = (a2 >> (flsll(2048) - 1) << 11) + 2048;
          }

          else
          {
            v7 = 1024;
          }
        }

        else
        {
          v7 = 512;
        }
      }

      else
      {
        v7 = 128;
      }
    }

    else
    {
      v7 = 64;
    }

    if (v7 >= 0x3FFFC)
    {
      v8 = 262140;
    }

    else
    {
      v8 = v7;
    }

    v6[2] = v8;
    result = malloc_type_realloc(*v6, v8, 0x100004077774924uLL);
    *v6 = result;
    v4 = v6[1];
    v5 = v6[2];
  }

  if (v4 > v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void _updateCellBufferSize(TSTTableTileRowBuffer *, NSUInteger)", a4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 270, 0, "Row data buffer is too small!");

    v18 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v18, v15, v16, v17);
  }

  return result;
}

void sub_2211395B0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_221139C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  _Block_object_dispose(&__p, 8);

  _Unwind_Resume(a1);
}

void **sub_221139CC8(void **result, unsigned int a2)
{
  v2 = *(result + 16);
  if (v2 <= a2)
  {
    v3 = result;
    if (*(result + 34))
    {
      v4 = a2 | (a2 >> 1) | ((a2 | (a2 >> 1)) >> 2);
      v5 = ((v4 | (v4 >> 4) | (((v4 | (v4 >> 4)) & 0xFF00) >> 8)) + 1);
      if (v5 <= 0x10)
      {
        v6 = 16;
      }

      else
      {
        v6 = v5;
      }

      if (v5 >= 0x801)
      {
        TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Too many columns for our row storage!", "void _extendOffsetArrayForMaxIndex(TSTTableTileRowBuffer *, TSUColumnIndex)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 328);
        v7 = MEMORY[0x277D81150];
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void _extendOffsetArrayForMaxIndex(TSTTableTileRowBuffer *, TSUColumnIndex)", v9);
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v12);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v10, v13, 328, 1, "Too many columns for our row storage!");
        goto LABEL_15;
      }
    }

    else
    {
      if ((a2 + 1) >= 0x100u)
      {
        TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Can't grow to wide columns in a row buffer not converted for wide offsets", "void _extendOffsetArrayForMaxIndex(TSTTableTileRowBuffer *, TSUColumnIndex)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 324);
        v17 = MEMORY[0x277D81150];
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "void _extendOffsetArrayForMaxIndex(TSTTableTileRowBuffer *, TSUColumnIndex)", v19);
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v21);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v10, v13, 324, 1, "Can't grow to wide columns in a row buffer not converted for wide offsets");
LABEL_15:

        TSUCrashBreakpoint();
        abort();
      }

      v6 = 255;
    }

    v15 = malloc_type_realloc(result[3], (2 * v6), 0x1000040BDFB0063uLL);
    v3[3] = v15;
    *(v3 + 16) = v6;
    v16 = &v15[2 * v2];

    return memset(v16, 255, (2 * (v6 - v2)));
  }

  return result;
}

__n128 sub_221139EDC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_221139EF4(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = sub_221139F78(a1[4] + 48, a3, *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 24), a1[8]);
  sub_2213974DC(a1[9], v5, *(a1[7] + 8) + 48);
  *(*(a1[5] + 8) + 24) = v3;
  ++*(*(a1[6] + 8) + 24);
}

const char *sub_221139F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = a2;
  sub_221139394(a1, *(a1 + 8) + a5, a3, a4);
  v10 = sub_22113C5B8(a1, v8, v7, a5);
  v12 = v8;
  v13 = v10;
  if (v8 < v7 && a4)
  {
    v28 = v8;
    v29 = v10;
    sub_22113C758(a1, v10, a5, v11);
    v13 = v29;
    v12 = v8;
    v14 = v8 + 1;
    do
    {
      if (v14 != 0x7FFF)
      {
        v15 = *(a1 + 32);
        if (v15 > v14)
        {
          v16 = *(*(a1 + 24) + 2 * v14);
          if (v16 != 0xFFFF)
          {
            v17 = *(a1 + 34);
            if (*(a1 + 34))
            {
              v18 = 4 * v16;
            }

            else
            {
              v18 = *(*(a1 + 24) + 2 * v14);
            }

            if (v14 >= 0xFFu && (v17 & 1) == 0)
            {
              sub_22113A218(a1);
              v13 = v29;
              v12 = v28;
              v15 = *(a1 + 32);
              v17 = 1;
            }

            if (v15 <= v14)
            {
              sub_221139CC8(a1, v14);
              v13 = v29;
              v12 = v28;
            }

            v19 = v18 + a5;
            if (v18 + a5 == 0x7FFFFFFFFFFFFFFFLL)
            {
              LOWORD(v19) = -1;
            }

            else if (v17)
            {
              v19 >>= 2;
            }

            *(*(a1 + 24) + 2 * v14) = v19;
          }
        }
      }

      ++v14;
    }

    while (v7 >= v14);
  }

  v20 = *(a1 + 34);
  if (v12 >= 0xFF && (*(a1 + 34) & 1) == 0)
  {
    v24 = v12;
    v25 = v13;
    sub_22113A218(a1);
    v13 = v25;
    v12 = v24;
    v20 = 1;
  }

  if (*(a1 + 32) <= v12)
  {
    v26 = v12;
    v27 = v13;
    sub_221139CC8(a1, v12);
    v13 = v27;
    v12 = v26;
  }

  v21 = v13 >> 2;
  if ((v20 & 1) == 0)
  {
    LOWORD(v21) = v13;
  }

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = -1;
  }

  else
  {
    v22 = v21;
  }

  *(*(a1 + 24) + 2 * v12) = v22;
  return &v13[*a1];
}

uint64_t sub_22113A218(uint64_t result)
{
  v1 = *(result + 32);
  if (*(result + 32))
  {
    v2 = *(result + 24);
    do
    {
      v3 = *v2;
      if ((v3 - 1) <= 0xFFFD)
      {
        if ((v3 & 3) != 0)
        {
          TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Encountered a bad offset while widening!", "void _convertBufferToWideIndexes(TSTTableTileRowBuffer *)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 287);
          v4 = MEMORY[0x277D81150];
          v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "void _convertBufferToWideIndexes(TSTTableTileRowBuffer *)", v6);
          v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v9);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v7, v10, 287, 1, "Encountered a bad offset while widening!");

          TSUCrashBreakpoint();
          abort();
        }

        *v2 >>= 2;
      }

      ++v2;
      --v1;
    }

    while (v1);
  }

  *(result + 34) = 1;
  return result;
}

BOOL sub_22113C374(unsigned __int8 *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (v4 != 5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSTCellStorageVersionCheck(TSTCellStorage *)", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.h", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 138, 0, "Can't parse cell storage header version %d!", v4);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v12, v13, v14);
  }

  return v4 == 5;
}

void *sub_22113C508(void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

unint64_t sub_22113C5B8(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = 0;
  if (a2 && a3 != 0x7FFF)
  {
    if (a2 <= a3)
    {
      v6 = a2;
      while (1)
      {
        if (v6 != 0x7FFF && *(a1 + 32) > v6)
        {
          v8 = *(*(a1 + 24) + 2 * v6);
          if (v8 != 0xFFFF)
          {
            break;
          }
        }

        if (a3 + 1 == ++v6)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      if (*(a1 + 34))
      {
        return 4 * v8;
      }

      else
      {
        return *(*(a1 + 24) + 2 * v6);
      }
    }

    else
    {
      v4 = *(a1 + 8) - a4;
      if (*(a1 + 32) <= a3 || (v5 = *(*(a1 + 24) + 2 * a3), v5 == 0xFFFF))
      {
        v5 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else if (*(a1 + 34))
      {
        v5 *= 4;
      }

      if (v4 <= v5)
      {
        TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Computed impossible insertion point.", "NSUInteger _offsetForInsertInBuffer(TSTTableTileRowBuffer *, TSUColumnIndex, TSUColumnIndex, NSInteger)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 531);
        v10 = MEMORY[0x277D81150];
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "NSUInteger _offsetForInsertInBuffer(TSTTableTileRowBuffer *, TSUColumnIndex, TSUColumnIndex, NSInteger)", v12);
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v15);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v13, v16, 531, 1, "Computed impossible insertion point.");

        TSUCrashBreakpoint();
        abort();
      }
    }
  }

  return v4;
}

void *sub_22113C758(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  if (262140 - v7 <= a3)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void _shiftCellStorageInBuffer(TSTTableTileRowBuffer *, NSUInteger, NSInteger)", a4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 505, 0, "Row storage buffer overflow!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = v7 - &a2[a3 & ~(a3 >> 63)];
  if (v17 < 0)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Corrupt cellStorage shift. Crashing!", "void _shiftCellStorageInBuffer(TSTTableTileRowBuffer *, NSUInteger, NSInteger)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 512);
    v20 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "void _shiftCellStorageInBuffer(TSTTableTileRowBuffer *, NSUInteger, NSInteger)", v22);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v23, v26, 512, 1, "Corrupt cellStorage shift. Crashing!");

    TSUCrashBreakpoint();
    abort();
  }

  v18 = &a2[*a1];

  return memmove(&v18[a3], v18, v17);
}

void sub_22113C904(uint64_t a1, unint64_t a2)
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

void sub_22113C9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22113CF38(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v11._lower = a2;
  v11._upper = a3;
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 32);
  v6 = *v4;
  if (v5 >= *v4)
  {
    if (v6 != *(v3 + 36))
    {
LABEL_7:
      *v4 = v6 + 1;
      v7 = MEMORY[0x223DA0360](*(v3 + 24));
      v8 = *(v3 + 32);
      v9 = *(v3 + 40) + 8 * v8;
      *(v3 + 32) = v8 + 1;
      *(v9 + 8) = v7;
      return TSKUIDStruct::saveToMessage(&v11, v7);
    }

LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 24));
    v4 = *(v3 + 40);
    v6 = *v4;
    goto LABEL_7;
  }

  *(v3 + 32) = v5 + 1;
  v7 = *&v4[2 * v5 + 2];
  return TSKUIDStruct::saveToMessage(&v11, v7);
}

uint64_t sub_22113CFEC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v11._lower = a2;
  v11._upper = a3;
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 56);
  v6 = *v4;
  if (v5 >= *v4)
  {
    if (v6 != *(v3 + 60))
    {
LABEL_7:
      *v4 = v6 + 1;
      v7 = MEMORY[0x223DA0360](*(v3 + 48));
      v8 = *(v3 + 56);
      v9 = *(v3 + 64) + 8 * v8;
      *(v3 + 56) = v8 + 1;
      *(v9 + 8) = v7;
      return TSKUIDStruct::saveToMessage(&v11, v7);
    }

LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 48));
    v4 = *(v3 + 64);
    v6 = *v4;
    goto LABEL_7;
  }

  *(v3 + 56) = v5 + 1;
  v7 = *&v4[2 * v5 + 2];
  return TSKUIDStruct::saveToMessage(&v11, v7);
}

uint64_t sub_22113D1F8(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *a1 = &unk_2834A1FF0;
  *(a1 + 136) = 0;
  *(a1 + 138) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = v7;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 96) = 1;
  return a1;
}

void sub_22113D290(uint64_t a1, uint64_t a2)
{
  v3 = TSCEASTElement::tag(a2, a1) - 16;
  if (v3 > 0x32)
  {
    goto LABEL_5;
  }

  if (((1 << v3) & 0x4000000000015) != 0)
  {
    return;
  }

  if (v3 == 8)
  {
    v4[0] = 24;
    v5 = 0;
    sub_22113D334((a1 + 176), v4);
  }

  else
  {
LABEL_5:
    *(a1 + 138) = 1;
  }
}

uint64_t sub_22113D334(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_22113E3A8(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(v3 + 8) = v4;
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

TSCEASTNumberElement *sub_22113D388(TSCEASTIteratorBase *a1, TSCEASTNumberElement *this, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x277CCABB0];
  v14._decimal.w[0] = TSCEASTNumberElement::value(this, a1, a3, a4);
  v14._decimal.w[1] = v7;
  v8 = TSUDecimal::truncateWithRounding(&v14);
  v11 = objc_msgSend_numberWithInteger_(v6, v9, v8, v10);
  LOBYTE(v14._decimal.w[0]) = 18;
  v14._decimal.w[1] = v11;
  v12 = v11;
  sub_22113D334(a1 + 22, &v14);

  return this;
}

TSCEASTStringElement *sub_22113D434(TSCEASTIteratorBase *a1, TSCEASTStringElement *this, uint64_t a3, uint64_t a4)
{
  TSCEASTStringElement::string(this, a1, a3, a4);
  v9 = v8[0] = 20;
  v6 = v9;
  sub_22113D334(a1 + 22, v8);

  return this;
}

TSCEASTFunctionElement *sub_22113D4C0(id *a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4);
  if ((a1[17] & 1) != 0 || v6 != 298)
  {
    goto LABEL_16;
  }

  *(a1 + 136) = 1;
  v7 = (*(*this + 48))(this, a1);
  if (!v7 || (v8 = v7, v9 = a1[22], v10 = (a1[23] - v9) >> 4, v10 < v7))
  {
    *(a1 + 136) = 0;
    *(a1 + 138) = 1;
    return this;
  }

  v11 = &v9[16 * (v10 - v7)];
  if (*v11 != 20)
  {
    goto LABEL_15;
  }

  objc_storeStrong(a1 + 18, v11[1]);
  if (v8 == 1)
  {
    goto LABEL_8;
  }

  v13 = (a1[22] + 16 * (((a1[23] - a1[22]) >> 4) - v8));
  v14 = *(v13 + 16);
  if (v14 == 18)
  {
    v26 = v13[3];
    v30 = objc_msgSend_integerValue(v26, v27, v28, v29);
    a1[19] = sub_221219994(v30);

    return this;
  }

  if (v14 == 24)
  {
LABEL_8:
    a1[19] = 24;
    return this;
  }

  if (v14 != 20)
  {
LABEL_15:
    *(a1 + 136) = 0;
LABEL_16:
    *(a1 + 138) = 1;
    return this;
  }

  v15 = a1[21];
  if (!v15)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "virtual TSCEASTElement *TSTCellSpecFormulaExtractor::functionNode(TSCEASTFunctionElement *)", v12);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormulaSpec.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 156, 0, "Need a locale to parse stock formulas.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
    v15 = a1[21];
  }

  a1[19] = sub_22128EC98(v13[3], v15);
  return this;
}

TSCEASTCategoryRefElement *sub_22113D6B4(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 137) == 1)
  {
    *(a1 + 138) = 1;
  }

  else
  {
    *(a1 + 137) = 1;
    v6 = TSCEASTCategoryRefElement::categoryRef(this, a1, a3, a4);
    *(a1 + 160) = objc_msgSend_type(v6, v7, v8, v9);
  }

  v11[0] = 66;
  v12 = 0;
  sub_22113D334(a1 + 22, v11);

  return this;
}

void sub_22113D8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_22113E2B4(va);
  _Unwind_Resume(a1);
}

void sub_22113DD38(_Unwind_Exception *exception_object)
{
  if (v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_22113E064(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_22113E22C(id *a1)
{
  *a1 = &unk_2834A1FF0;
  v4 = a1 + 22;
  sub_22113E320(&v4);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
  return MEMORY[0x223DA1450]();
}

void sub_22113E2B4(id *a1)
{
  *a1 = &unk_2834A1FF0;
  v3 = a1 + 22;
  sub_22113E320(&v3);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_22113E320(void ***a1)
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
        v6 = v4 - 2;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_22113E3A8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    sub_22107C148();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  v18 = a1;
  if (v6)
  {
    sub_22113E4C8(a1, v6);
  }

  v9 = 16 * v5;
  v15 = 0;
  v16 = v9;
  *v9 = *a2;
  v10 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v9 + 8) = v10;
  v17 = (16 * v5 + 16);
  sub_22113E510(a1, v3, v4, 0);
  v11 = *a1;
  *a1 = 0;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_22113E580(&v15);
  return v14;
}

void sub_22113E4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_22113E580(va);
  _Unwind_Resume(a1);
}

void sub_22113E4C8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_22107C238();
}

void sub_22113E510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(v6 + 8) = 0;
      *(a4 + 8) = v7;
      v6 += 16;
      a4 += 16;
    }

    while (v6 != a3);
    while (v5 != a3)
    {

      v5 += 16;
    }
  }
}

uint64_t sub_22113E580(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_22113E644(unsigned int **a1, TSUCellCoord *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v18._topLeft = __C(v5, v6);
  v18._bottomRight = v7;
  result = TSCERangeCoordinate::isValid(&v18);
  if (result)
  {
    result = TSCERangeCoordinate::isSpanning(&v18);
    if ((result & 1) == 0)
    {
      *&v17 = v18._topLeft.column | (v18._topLeft.row << 32);
      *(&v17 + 1) = v18._bottomRight.column | (v18._bottomRight.row << 32);
      return sub_22113E6C8(a1, &v17, a3, a1, 0, v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  return result;
}

uint64_t sub_22113E6C8(uint64_t a1, _OWORD *a2, uint64_t a3, unsigned int **a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v15 = 0;
  v13 = sub_22113EC64(a1, a2, a3, *a4, &v15, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  if (v13)
  {
    operator new();
  }

  return v13;
}

uint64_t sub_22113E774(unsigned int **a1, TSUCellCoord *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v13._topLeft = __C(v5, v6);
  v13._bottomRight = v7;
  result = TSCERangeCoordinate::isValid(&v13);
  if (result)
  {
    result = TSCERangeCoordinate::isSpanning(&v13);
    if ((result & 1) == 0)
    {
      column = v13._topLeft.column;
      row = v13._topLeft.row;
      v11 = v13._bottomRight.column;
      v12 = v13._bottomRight.row;
      return sub_22113E7F4(a1, &column, a3, a1);
    }
  }

  return result;
}

uint64_t sub_22113E7F4(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int **a4)
{
  v22 = 0;
  v6 = sub_22113FA1C(a1, a2, a3, *a4, &v22);
  if ((v6 & 1) == 0)
  {
    for (i = v22; v22; i = v22)
    {
      v16 = i[1];
      if (*v16 <= 0)
      {
        v22 = *i;
      }

      else
      {
        v17 = 0;
        v18 = (v16 + 6);
        do
        {
          sub_22113E6C8(a1, (v18 - 16), v18, a4, v16[1], v7, v8, v9, v10, v11, v12, v13, v14);
          ++v17;
          v18 += 32;
        }

        while (v17 < *v16);
        i = v22;
        v16 = v22[1];
        v22 = *v22;
        if (!v16)
        {
          goto LABEL_10;
        }
      }

      MEMORY[0x223DA1450](v16, 0x1022C404B60D9C5);
LABEL_10:
      MEMORY[0x223DA1450](i, 0x20C40A4A59CD2);
    }

    v19 = *a4;
    if (**a4 == 1 && v19[1] >= 1)
    {
      v20 = *(v19 + 3);
      MEMORY[0x223DA1450]();
      *a4 = v20;
    }
  }

  return v6;
}

void sub_22113E934(int **a1, TSUCellCoord *a2, void *a3)
{
  v5 = a3;
  v6 = *a2;
  v7 = a2[1];
  v13._topLeft = __C(v6, v7);
  v13._bottomRight = v8;
  if (TSCERangeCoordinate::isValid(&v13))
  {
    column = v13._topLeft.column;
    row = v13._topLeft.row;
    v11 = v13._bottomRight.column;
    v12 = v13._bottomRight.row;
    sub_22113E9D0(a1, *a1, &column, v5);
  }
}

uint64_t sub_22113E9D0(uint64_t a1, int *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *a2;
  if (a2[1] <= 0)
  {
    if (v8 >= 1)
    {
      v14 = 0;
      while (2)
      {
        v15 = 0;
        v16 = &a2[8 * v14 + 2];
        v17 = 1;
        while (1)
        {
          v18 = v17;
          if (*(a3 + 4 * v15) > v16->i32[v15 + 2] || v16->i32[v15] > *(a3 + 8 + 4 * v15))
          {
            break;
          }

          v17 = 0;
          v15 = 1;
          if ((v18 & 1) == 0)
          {
            v19.i64[0] = 0xFFFFFFFFFFFFLL;
            v19.i64[1] = 0xFFFFFFFFFFFFLL;
            v27 = vandq_s8(vsraq_n_u64(vshlq_n_s64(*v16, 0x20uLL), *v16, 0x20uLL), v19);
            v25 = 0;
            v26 = 0;
            TSCERangeCoordinate::asCellRect(&v27);
            v25 = v20;
            v26 = v21;
            v24 = 0;
            v7[2](v7, &v25, v16 + 1, &v24);
            if (v24)
            {
LABEL_23:
              v22 = 0;
              goto LABEL_22;
            }

            v8 = *a2;
            break;
          }
        }

        if (++v14 < v8)
        {
          continue;
        }

        break;
      }
    }
  }

  else if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      v10 = 0;
      v11 = &a2[8 * i + 2];
      v12 = 1;
      while (1)
      {
        v13 = v12;
        if (*(a3 + 4 * v10) > v11[v10 + 2] || v11[v10] > *(a3 + 8 + 4 * v10))
        {
          break;
        }

        v12 = 0;
        v10 = 1;
        if ((v13 & 1) == 0)
        {
          if (!sub_22113E9D0(a1, *(v11 + 2), a3, v7))
          {
            goto LABEL_23;
          }

          v8 = *a2;
          break;
        }
      }
    }
  }

  v22 = 1;
LABEL_22:

  return v22;
}

void sub_22113EBD4(uint64_t a1, int *a2)
{
  if (a2[1] >= 1 && *a2 >= 1)
  {
    v4 = 0;
    v5 = 6;
    do
    {
      sub_22113EBD4(a1, *&a2[v5]);
      ++v4;
      v5 += 8;
    }

    while (v4 < *a2);
  }

  JUMPOUT(0x223DA1450);
}

uint64_t sub_22113EC64(uint64_t a1, _OWORD *a2, uint64_t a3, unsigned int *a4, void *a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v43 = *MEMORY[0x277D85DE8];
  v19 = a4[1];
  if (v19 <= a6)
  {
    if (v19 != a6)
    {
      return 0;
    }

    v26 = *a2;
    v41 = *a2;
    *&v42 = *a3;
    DWORD2(v42) = *(a3 + 8);
    v31 = *a4;
    if (v31 <= 15)
    {
      result = 0;
      v38 = &a4[8 * v31];
      v39 = v41;
      *(v38 + 6) = v42;
      *(v38 + 2) = v39;
      goto LABEL_17;
    }

LABEL_8:
    sub_22113F094(a1, a4, &v41, a5, *&v26, a8, a9, a10);
  }

  v40 = 0;
  v21 = &a4[8 * sub_22113EE40(a7, a8, a9, a10, a11, a12, a13, a14, a1, a2, a4) + 2];
  v22 = sub_22113EC64(a1, a2, a3, *(v21 + 2), &v40, a6);
  if (v22)
  {
    v23 = sub_22113EFCC(v22, *(v21 + 2));
    *v21 = v23;
    *(v21 + 1) = v24;
    *&v42 = v40;
    *&v41 = sub_22113EFCC(v23, v40);
    *(&v41 + 1) = v25;
    v27 = *a4;
    if (v27 <= 15)
    {
      result = 0;
      v29 = &a4[8 * v27 + 2];
      v30 = v42;
      *v29 = v41;
      *(v29 + 1) = v30;
LABEL_17:
      ++*a4;
      return result;
    }

    goto LABEL_8;
  }

  v32 = 0;
  v33 = &v41;
  v34 = 1;
  do
  {
    v35 = v34;
    v36 = v21[v32];
    if (v36 >= *(a2 + v32))
    {
      v36 = *(a2 + v32);
    }

    v37 = *(a2 + v32 + 2);
    if (v37 <= v21[v32 + 2])
    {
      v37 = v21[v32 + 2];
    }

    *v33 = v36;
    *(&v41 + v32 + 2) = v37;
    v33 = &v41 + 1;
    v32 = 1;
    v34 = 0;
  }

  while ((v35 & 1) != 0);
  result = 0;
  *v21 = v41;
  return result;
}

uint64_t sub_22113EE40(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v11 = *a11;
  if (v11 < 1)
  {
    return 0;
  }

  v12 = 0;
  result = 0;
  v14 = a11 + 2;
  v15 = 0.0;
  v16 = -1.0;
  v17 = 1;
  do
  {
    v18 = 0;
    v19 = &v14[8 * v12];
    v20 = v19 + 2;
    v21 = 1;
    v22 = 0.0;
    do
    {
      v23 = v21;
      LODWORD(a6) = v20[v18];
      LODWORD(a7) = v19[v18];
      a7 = *&a7;
      a6 = (*&a6 - a7) * 0.5;
      v22 = v22 + a6 * a6;
      v18 = 1;
      v21 = 0;
    }

    while ((v23 & 1) != 0);
    v24 = 0;
    v25 = sqrt(v22);
    v26 = v25 * v25;
    v27 = &v41;
    v28 = 1;
    do
    {
      v29 = v28;
      v30 = v19[v24];
      if (v30 >= *(a10 + 4 * v24))
      {
        v30 = *(a10 + 4 * v24);
      }

      v31 = *(a10 + 8 + 4 * v24);
      if (v31 <= v20[v24])
      {
        v31 = v20[v24];
      }

      *v27 = v30;
      *(&v41 + v24 + 2) = v31;
      v27 = &v41 + 1;
      v24 = 1;
      v28 = 0;
    }

    while ((v29 & 1) != 0);
    v32 = 0;
    v40 = v41;
    v33 = 0.0;
    v34 = &v40;
    v35 = 1;
    do
    {
      v36 = v35;
      LODWORD(a7) = *(&v40 + v32 + 2);
      LODWORD(a8) = *v34;
      a8 = *&a8;
      a7 = (*&a7 - a8) * 0.5;
      v33 = v33 + a7 * a7;
      v34 = (&v40 + 4);
      v32 = 1;
      v35 = 0;
    }

    while ((v36 & 1) != 0);
    v37 = v26 * 3.141593;
    v38 = sqrt(v33);
    a6 = v38 * v38 * 3.141593 - v37;
    if ((a6 < v16) | v17 & 1 || (a6 == v16 ? (v39 = v37 < v15) : (v39 = 0), v39))
    {
      v15 = v37;
      result = v12;
      v16 = a6;
    }

    v17 = 0;
    ++v12;
  }

  while (v12 != v11);
  return result;
}

uint64_t sub_22113EFCC(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = a2 + 2;
  do
  {
    v6 = &v5[8 * v3];
    if (v4)
    {
      v7 = 0;
      v8 = &v17;
      v9 = &v16;
      v10 = 1;
      do
      {
        v11 = *v9;
        if (v6[v7] < v11)
        {
          v11 = v6[v7];
        }

        v12 = *(&v16 + v7 + 2);
        if (v12 <= v6[v7 + 2])
        {
          v12 = v6[v7 + 2];
        }

        *(&v17 + v7 + 2) = v12;
        v13 = v10;
        *v8 = v11;
        v9 = &v16 + 1;
        v8 = &v17 + 1;
        v7 = 1;
        v10 = 0;
      }

      while ((v13 & 1) != 0);
      v14 = v17;
    }

    else
    {
      v14 = *v6;
    }

    v16 = v14;
    ++v3;
    v4 = 1;
  }

  while (v3 != v2);
  return v16;
}

void sub_22113F094(uint64_t a1, void *a2, _OWORD *a3, void *a4, double a5, double a6, double a7, double a8)
{
  v9.n128_f64[0] = sub_22113F128(a5, a6, a7, a8, a1, a2, a3, v16);
  sub_22113F250(a1, v16, 8, v9, v10, v11, v12, v13, v14, v15);
  operator new();
}

double sub_22113F128(double a1, double a2, double a3, double a4, uint64_t a5, void *a6, _OWORD *a7, uint64_t a8)
{
  v8 = 0;
  v9 = (a8 + 200);
  do
  {
    v10 = &v9[v8 / 2];
    v11 = *&a6[v8 + 3];
    *v10 = *&a6[v8 + 1];
    v10[1] = v11;
    v8 += 4;
  }

  while (v8 != 64);
  v12 = a7[1];
  *(a8 + 712) = *a7;
  *(a8 + 728) = v12;
  *(a8 + 744) = 17;
  v13 = (a8 + 748);
  *(a8 + 748) = *v9;
  v14 = a8 + 756;
  for (i = 1; i != 17; ++i)
  {
    v16 = 0;
    v17 = &v9[2 * i];
    v18 = &v29;
    v19 = 1;
    do
    {
      v20 = v19;
      v21 = *(v17 + v16);
      if (v21 >= *(v13 + v16))
      {
        v21 = *(v13 + v16);
      }

      v22 = *(v14 + 4 * v16);
      if (v22 <= *(v17 + v16 + 2))
      {
        v22 = *(v17 + v16 + 2);
      }

      *v18 = v21;
      *(&v29 + v16 + 2) = v22;
      v18 = &v29 + 1;
      v16 = 1;
      v19 = 0;
    }

    while ((v20 & 1) != 0);
    *v13 = v29;
  }

  v23 = 0;
  v24 = 0.0;
  v25 = 1;
  do
  {
    v26 = v25;
    LODWORD(a3) = *(v14 + 4 * v23);
    LODWORD(a4) = *(v13 + v23);
    a4 = *&a4;
    a3 = (*&a3 - a4) * 0.5;
    v24 = v24 + a3 * a3;
    v23 = 1;
    v25 = 0;
  }

  while ((v26 & 1) != 0);
  v27 = sqrt(v24);
  *(a8 + 768) = v27 * v27 * 3.141593;
  result = NAN;
  *a6 = 0xFFFFFFFF00000000;
  return result;
}

uint64_t sub_22113F250(uint64_t a1, uint64_t a2, int a3, __n128 a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  *(a2 + 144) = 0;
  v10 = *(a2 + 744);
  *(a2 + 148) = 0;
  *(a2 + 184) = 0;
  v58 = (a2 + 184);
  v59 = a2 + 144;
  *(a2 + 192) = 0;
  *(a2 + 68) = v10;
  *(a2 + 72) = a3;
  if (v10 >= 1)
  {
    v11 = a2;
    do
    {
      v11[19] = 0;
      *v11++ = -1;
      --v10;
    }

    while (v10);
  }

  v12 = sub_22113F6AC(a4, a5, a6, a7, a8, a9, a10, a1, a2);
  result = a2;
  v19 = *(a2 + 144);
  v20 = *(a2 + 148);
  v21 = *(a2 + 68);
  if (v20 + v19 < v21)
  {
    v60 = 0;
    v22 = a2 + 76;
    v23 = a2 + 200;
    while (1)
    {
      v24 = v21 - *(result + 72);
      if (v19 >= v24 || v20 >= v24)
      {
        break;
      }

      if (v21 < 1)
      {
        v28 = v60;
        v27 = HIDWORD(v60);
      }

      else
      {
        v26 = 0;
        v12 = -1.0;
        v28 = v60;
        v27 = HIDWORD(v60);
        do
        {
          if (!*(v22 + 4 * v26))
          {
            v29 = 0;
            v30 = v23 + 32 * v26;
            v31 = v30 + 8;
            v32 = &v64;
            v33 = 1;
            do
            {
              v34 = v33;
              v35 = *(a2 + 152 + 4 * v29);
              if (v35 >= *(v30 + 4 * v29))
              {
                v35 = *(v30 + 4 * v29);
              }

              v36 = *(v31 + 4 * v29);
              if (v36 <= *(a2 + 160 + 4 * v29))
              {
                v36 = *(a2 + 160 + 4 * v29);
              }

              *v32 = v35;
              *(&v64 + v29 + 2) = v36;
              v32 = &v64 + 1;
              v29 = 1;
              v33 = 0;
            }

            while ((v34 & 1) != 0);
            v37 = 0;
            v63 = v64;
            v38 = &v64;
            v39 = 1;
            do
            {
              v40 = v39;
              v41 = *(a2 + 168 + 4 * v37);
              if (v41 >= *(v30 + 4 * v37))
              {
                v41 = *(v30 + 4 * v37);
              }

              v42 = *(v31 + 4 * v37);
              if (v42 <= *(a2 + 176 + 4 * v37))
              {
                v42 = *(a2 + 176 + 4 * v37);
              }

              *v38 = v41;
              *(&v64 + v37 + 2) = v42;
              v38 = &v64 + 1;
              v37 = 1;
              v39 = 0;
            }

            while ((v40 & 1) != 0);
            v43 = 0;
            v62 = v64;
            v44 = 0.0;
            v45 = &v63;
            v46 = 1;
            do
            {
              v47 = v46;
              LODWORD(v14) = *(&v63 + v43 + 2);
              LODWORD(v15) = *v45;
              v15 = *&v15;
              v14 = (*&v14 - v15) * 0.5;
              v44 = v44 + v14 * v14;
              v45 = (&v63 + 4);
              v43 = 1;
              v46 = 0;
            }

            while ((v47 & 1) != 0);
            v48 = 0;
            v49 = sqrt(v44);
            v50 = v49 * v49;
            v51 = 0.0;
            v52 = &v62;
            v53 = 1;
            do
            {
              v54 = v53;
              LODWORD(v16) = *(&v62 + v48 + 2);
              LODWORD(v17) = *v52;
              v17 = *&v17;
              v16 = (*&v16 - v17) * 0.5;
              v51 = v51 + v16 * v16;
              v52 = (&v62 + 4);
              v48 = 1;
              v53 = 0;
            }

            while ((v54 & 1) != 0);
            v55 = sqrt(v51);
            v15 = *(result + 192);
            v13 = v55 * v55 * 3.141593 - v15 - (v50 * 3.141593 - *v58);
            v14 = -v13;
            if (v13 >= 0.0)
            {
              v14 = v13;
            }

            if (v14 <= v12)
            {
              if (v14 == v12 && *(v59 + 4 * (v13 < 0.0)) < *(v59 + 4 * v28))
              {
                v28 = v13 < 0.0;
                v27 = v26;
              }
            }

            else
            {
              v28 = v13 < 0.0;
              v27 = v26;
              v12 = v14;
            }
          }

          ++v26;
        }

        while (v26 != v21);
      }

      v60 = __PAIR64__(v27, v28);
      v12 = sub_22113F90C(v12, v13, v14, v15, result, v27, v28, a2);
      v23 = a2 + 200;
      v22 = a2 + 76;
      result = a2;
      v19 = *(a2 + 144);
      v20 = *(a2 + 148);
      v21 = *(a2 + 68);
      if (v20 + v19 >= v21)
      {
        return result;
      }
    }

    v56 = v19 >= v24;
    if (v21 >= 1)
    {
      for (i = 0; i < v21; ++i)
      {
        if (!*(result + 4 * i + 76))
        {
          v12 = sub_22113F90C(v12, v13, v14, v15, result, i, v56, a2);
          result = a2;
          v21 = *(a2 + 68);
        }
      }
    }
  }

  return result;
}

uint64_t sub_22113F5B4(uint64_t result, int *a2, int *a3, uint64_t a4)
{
  if (*(a4 + 68) >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = (a4 + 200);
    v10 = a3 + 2;
    v11 = a2 + 2;
    while (1)
    {
      v12 = *(a4 + 4 * v8);
      if (v12 == 1)
      {
        break;
      }

      if (!v12)
      {
        v13 = *a2;
        if (v13 <= 15)
        {
          v17 = &v11[8 * v13];
          v18 = v9[1];
          *v17 = *v9;
          *(v17 + 1) = v18;
          ++*a2;
          goto LABEL_12;
        }

        v14 = v7;
        v15 = a2;
        goto LABEL_9;
      }

LABEL_12:
      ++v8;
      v9 += 2;
      if (v8 >= *(a4 + 68))
      {
        return result;
      }
    }

    v16 = *a3;
    if (v16 <= 15)
    {
      v19 = &v10[8 * v16];
      v20 = v9[1];
      *v19 = *v9;
      *(v19 + 1) = v20;
      ++*a3;
      goto LABEL_12;
    }

    v14 = v7;
    v15 = a3;
LABEL_9:
    result = sub_22113F094(v14, v15, v9, 0);
    goto LABEL_12;
  }

  return result;
}

double sub_22113F6AC(__n128 a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9)
{
  v46 = *MEMORY[0x277D85DE8];
  v10 = *(a9 + 68);
  if (v10 < 1)
  {
    goto LABEL_7;
  }

  v11 = 0;
  v12 = a9 + 200;
  a2 = 0.5;
  a1.n128_u64[0] = 0x400921FB82C2BD7FLL;
  do
  {
    v13 = 0;
    v14 = v12 + 32 * v11;
    v15 = 0.0;
    v16 = 1;
    do
    {
      a8 = v16;
      LODWORD(a4) = *(v14 + 8 + 4 * v13);
      LODWORD(a5) = *(v14 + 4 * v13);
      a5 = *&a5;
      a4 = (*&a4 - a5) * 0.5;
      v15 = v15 + a4 * a4;
      v13 = 1;
      v16 = 0;
    }

    while ((a8 & 1) != 0);
    v17 = sqrt(v15);
    a3 = v17 * v17 * 3.141593;
    *(&v45[1] + v11++) = a3;
  }

  while (v11 != v10);
  if (v10 == 1)
  {
LABEL_7:
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v18 = 0;
    a2 = -1.0 - *(a9 + 768);
    v21 = 1;
    a3 = 0.5;
    do
    {
      a8 = v20++;
      v22 = v12 + 32 * a8;
      a4 = *(&v45[1] + a8);
      v23 = v21;
      do
      {
        v24 = 0;
        v25 = v12 + 32 * v23;
        v26 = v45;
        v27 = 1;
        do
        {
          v28 = v27;
          v29 = *(v25 + 4 * v24);
          if (v29 >= *(v22 + 4 * v24))
          {
            v29 = *(v22 + 4 * v24);
          }

          v30 = *(v22 + 8 + 4 * v24);
          if (v30 <= *(v25 + 8 + 4 * v24))
          {
            v30 = *(v25 + 8 + 4 * v24);
          }

          *v26 = v29;
          *(v45 + v24 + 2) = v30;
          v26 = v45 + 1;
          v24 = 1;
          v27 = 0;
        }

        while ((v28 & 1) != 0);
        v31 = 0;
        v44 = v45[0];
        v32 = 0.0;
        v33 = &v44;
        v34 = 1;
        do
        {
          v35 = v34;
          LODWORD(a6) = *(&v44 + v31 + 2);
          LODWORD(a7) = *v33;
          a7 = *&a7;
          a6 = (*&a6 - a7) * 0.5;
          v32 = v32 + a6 * a6;
          v33 = (&v44 + 4);
          v31 = 1;
          v34 = 0;
        }

        while ((v35 & 1) != 0);
        v36 = sqrt(v32);
        a6 = *(&v45[1] + v23);
        v37 = v36 * v36 * 3.141593 - a4 - a6;
        if (v37 > a2)
        {
          v18 = a8;
          v19 = v23;
          a2 = v37;
        }

        ++v23;
      }

      while (v23 != v10);
      ++v21;
    }

    while (v20 != v10 - 1);
  }

  v39 = sub_22113F90C(a1.n128_f64[0], a2, a3, a4, a8, v18, 0, a9);

  return sub_22113F90C(v39, v40, v41, v42, v38, v19, 1, a9);
}

double sub_22113F90C(double a1, double a2, double a3, double a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  v8 = (a8 + 4 * a6);
  *v8 = a7;
  v8[19] = 1;
  v9 = a7;
  v10 = (a8 + 32 * a6 + 200);
  v11 = (a8 + 16 * a7 + 152);
  if (*(a8 + 144 + 4 * a7))
  {
    v12 = 0;
    v13 = &v25;
    v14 = 1;
    do
    {
      v15 = v14;
      v16 = *(v11 + v12);
      if (v16 >= *(v10 + v12))
      {
        v16 = *(v10 + v12);
      }

      v17 = *(v10 + v12 + 2);
      if (v17 <= *(v11 + v12 + 2))
      {
        v17 = *(v11 + v12 + 2);
      }

      *v13 = v16;
      *(&v25 + v12 + 2) = v17;
      v13 = &v25 + 1;
      v12 = 1;
      v14 = 0;
    }

    while ((v15 & 1) != 0);
    v18 = v25;
  }

  else
  {
    v18 = *v10;
  }

  *v11 = v18;
  v19 = 0;
  v20 = 0.0;
  v21 = 1;
  do
  {
    v22 = v21;
    LODWORD(a3) = *(v11 + v19 + 2);
    LODWORD(a4) = *(v11 + v19);
    a4 = *&a4;
    a3 = (*&a3 - a4) * 0.5;
    v20 = v20 + a3 * a3;
    v19 = 1;
    v21 = 0;
  }

  while ((v22 & 1) != 0);
  v23 = sqrt(v20);
  result = v23 * v23 * 3.141593;
  *(a8 + 8 * v9 + 184) = result;
  ++*(a8 + 144 + 4 * v9);
  return result;
}

uint64_t sub_22113FA1C(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int *a4, void *a5)
{
  v8 = *a4;
  if (a4[1] <= 0)
  {
    if (v8 >= 1)
    {
      v18 = 0;
      v19 = a4 + 2;
      v20 = *a3;
      v21 = *(a3 + 4);
      while (2)
      {
        v22 = 0;
        v23 = &v19[8 * v18];
        v24 = 1;
        while (1)
        {
          v25 = v24;
          if (*(a2 + 4 * v22) != v23[v22] || *(a2 + 8 + 4 * v22) != v23[v22 + 2])
          {
            break;
          }

          v24 = 0;
          v22 = 1;
          if ((v25 & 1) == 0)
          {
            v26 = *(v23 + 2);
            if (v20 == v26 && ((v26 ^ v20) & 0x101FFFF00000000) == 0 && v21 == *(v23 + 12))
            {
              result = 0;
              v30 = &v19[8 * v8 - 8];
              v31 = *(v30 + 1);
              v32 = &v19[8 * v18];
              *v32 = *v30;
              *(v32 + 1) = v31;
              *a4 = v8 - 1;
              return result;
            }

            break;
          }
        }

        if (++v18 != v8)
        {
          continue;
        }

        break;
      }
    }
  }

  else if (v8 >= 1)
  {
    v11 = 0;
    v12 = a4 + 2;
    while (2)
    {
      v13 = 0;
      v14 = &v12[8 * v11];
      v15 = 1;
      while (1)
      {
        v16 = v15;
        if (*(a2 + 4 * v13) > v14[v13 + 2] || v14[v13] > *(a2 + 8 + 4 * v13))
        {
          break;
        }

        v15 = 0;
        v13 = 1;
        if ((v16 & 1) == 0)
        {
          v17 = sub_22113FA1C(a1, a2, a3, *(v14 + 2), a5);
          if (!v17)
          {
            if (**(v14 + 2) < 8)
            {
              operator new();
            }

            v28 = sub_22113EFCC(v17, *(v14 + 2));
            result = 0;
            *v14 = v28;
            *(v14 + 1) = v29;
            return result;
          }

          LODWORD(v8) = *a4;
          break;
        }
      }

      if (++v11 < v8)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

uint64_t sub_221140090(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (!a1)
  {
    goto LABEL_15;
  }

  v10 = objc_msgSend_length(v3, v4, v5, v6);
  if (v10)
  {
    v11 = objc_msgSend_characterAtIndex_(v7, v8, 0, v9);
  }

  else
  {
    v11 = 0;
  }

  v14 = objc_msgSend_rangeOfCharacterFromSet_(v7, v8, *(a1 + 168), v9);
  IsMember = v14 != 0x7FFFFFFFFFFFFFFFLL;
  if (v10 && v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (objc_msgSend_characterIsMember_(*(a1 + 136), v12, v11, v13))
    {
      goto LABEL_12;
    }

    v18 = *(a1 + 136);
    v19 = objc_msgSend_characterAtIndex_(v7, v16, v10 - 1, v17);
    if (objc_msgSend_characterIsMember_(v18, v20, v19, v21) & 1) != 0 || (objc_msgSend_characterIsMember_(*(a1 + 104), v22, v11, v23))
    {
      goto LABEL_12;
    }

    IsMember = objc_msgSend_characterIsMember_(*(a1 + 112), v24, v11, v25);
  }

  if (IsMember)
  {
LABEL_12:
    LOBYTE(v26) = 1;
    goto LABEL_13;
  }

  if (objc_msgSend_rangeOfCharacterFromSet_(v7, v12, *(a1 + 104), v13) == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_15:
    LOBYTE(v26) = 0;
    goto LABEL_13;
  }

  v33 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v28, v7, v29);
  v26 = 0;
  while ((objc_msgSend_isAtEnd(v33, v30, v31, v32) & 1) == 0)
  {
    objc_msgSend_scanUpToCharactersFromSet_intoString_(v33, v34, *(a1 + 136), 0);
    objc_msgSend_scanCharactersFromSet_intoString_(v33, v35, *(a1 + 136), 0);
    v26 |= objc_msgSend_scanCharactersFromSet_intoString_(v33, v36, *(a1 + 104), 0);
  }

LABEL_13:
  return v26 & 1;
}

id sub_22114022C(void *a1, void *a2, char a3)
{
  v8 = a2;
  if (a1)
  {
    if ((a3 & 1) != 0 || sub_221140090(a1, v8))
    {
      v9 = objc_msgSend_mutableCopy(v8, v5, v6, v7);
      v10 = a1[1];
      v11 = a1[2];
      v15 = objc_msgSend_length(v9, v12, v13, v14);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v9, v16, v10, v11, 2, 0, v15);
      v17 = a1[3];
      v18 = a1[4];
      v22 = objc_msgSend_length(v9, v19, v20, v21);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v9, v23, v17, v18, 2, 0, v22);
      v24 = a1[5];
      v25 = a1[6];
      v29 = objc_msgSend_length(v9, v26, v27, v28);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v9, v30, v24, v25, 2, 0, v29);
      v31 = a1[7];
      v32 = a1[8];
      v36 = objc_msgSend_length(v9, v33, v34, v35);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v9, v37, v31, v32, 2, 0, v36);
      objc_msgSend_insertString_atIndex_(v9, v38, a1[1], 0);
      v39 = a1[1];
      v43 = objc_msgSend_length(v9, v40, v41, v42);
      objc_msgSend_insertString_atIndex_(v9, v44, v39, v43);
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void *sub_221140390(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    a1 = sub_22114022C(a1, v3, 1);
  }

  return a1;
}

void *sub_2211403F8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    a1 = sub_22114022C(a1, v3, 0);
  }

  return a1;
}

id sub_221140460(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (a1)
  {
    if (objc_msgSend_length(v3, v4, v5, v6))
    {
      v10 = objc_msgSend_characterAtIndex_(v7, v8, 0, v9);
      IsMember = objc_msgSend_characterIsMember_(*(a1 + 144), v11, v10, v12);
    }

    else
    {
      IsMember = objc_msgSend_characterIsMember_(*(a1 + 144), v8, 0, v9);
    }

    if (IsMember)
    {
      v16 = objc_msgSend_stringByTrimmingCharactersInSet_(v7, v14, *(a1 + 136), v15);
      v22 = objc_msgSend_length(v16, v17, v18, v19);
      if (v22 >= 2 && (v23 = *(a1 + 104), v24 = objc_msgSend_characterAtIndex_(v16, v20, 0, v21), objc_msgSend_characterIsMember_(v23, v25, v24, v26)) && (v29 = *(a1 + 104), v30 = objc_msgSend_characterAtIndex_(v16, v27, v22 - 1, v28), objc_msgSend_characterIsMember_(v29, v31, v30, v32)))
      {
        v36 = objc_msgSend_mutableCopy(v16, v33, v34, v35);
        v40 = objc_msgSend_length(v36, v37, v38, v39);
        objc_msgSend_deleteCharactersInRange_(v36, v41, v40 - 1, 1);
        objc_msgSend_deleteCharactersInRange_(v36, v42, 0, 1);
        if (objc_msgSend_length(v36, v43, v44, v45))
        {
          v50 = *(a1 + 8);
          v49 = *(a1 + 16);
          v51 = objc_msgSend_length(v36, v46, v47, v48);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v36, v52, v49, v50, 2, 0, v51);
          v54 = *(a1 + 24);
          v53 = *(a1 + 32);
          v58 = objc_msgSend_length(v36, v55, v56, v57);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v36, v59, v53, v54, 2, 0, v58);
          v61 = *(a1 + 40);
          v60 = *(a1 + 48);
          v65 = objc_msgSend_length(v36, v62, v63, v64);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v36, v66, v60, v61, 2, 0, v65);
          v69 = a1 + 56;
          v67 = *(a1 + 56);
          v68 = *(v69 + 8);
          v73 = objc_msgSend_length(v36, v70, v71, v72);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v36, v74, v68, v67, 2, 0, v73);
        }
      }

      else
      {
        v36 = v7;
      }
    }

    else
    {
      v36 = v7;
    }
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

void *sub_22114067C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    a1 = sub_2211406EC(a1, v3, 0, 1u);
  }

  return a1;
}

id sub_2211406EC(void *a1, void *a2, char a3, unsigned __int8 a4)
{
  v7 = a2;
  v10 = v7;
  if (a1)
  {
    v11 = objc_msgSend_stringByTrimmingCharactersInSet_(v7, v8, a1[17], v9);
    v15 = objc_msgSend_length(v11, v12, v13, v14);
    if (v15 >= objc_msgSend_length(v10, v16, v17, v18))
    {
      v25 = &stru_2834BADA0;
    }

    else
    {
      v22 = objc_msgSend_length(v11, v19, v20, v21);
      v25 = objc_msgSend_substringFromIndex_(v10, v23, v22, v24);
    }

    if (objc_msgSend_length(v11, v19, v20, v21))
    {
      v28 = a1[13];
      v29 = objc_msgSend_characterAtIndex_(v11, v26, 0, v27);
      IsMember = objc_msgSend_characterIsMember_(v28, v30, v29, v31);
      if (IsMember)
      {
        if ((a3 & 1) == 0 && objc_msgSend_length(v10, v32, v33, v34) == 2)
        {
          v36 = a1[13];
          v37 = objc_msgSend_characterAtIndex_(v10, v32, 1, v34);
          if (objc_msgSend_characterIsMember_(v36, v38, v37, v39))
          {
            v40 = objc_msgSend_substringFromIndex_(v10, v32, 1, v34);
LABEL_16:
            v98 = v40;
LABEL_26:

            goto LABEL_27;
          }
        }
      }

      if (IsMember)
      {
        v41 = objc_msgSend_mutableCopyWithZone_(v11, v32, 0, v34);
        objc_msgSend_deleteCharactersInRange_(v41, v42, 0, 1);
        if (objc_msgSend_length(v41, v43, v44, v45))
        {
          objc_msgSend_rangeOfString_(v41, v46, a1[9], v47);
          objc_msgSend_rangeOfString_(v41, v48, a1[10], v49);
          objc_msgSend_rangeOfString_(v41, v50, a1[12], v51);
          objc_msgSend_rangeOfString_(v41, v52, a1[11], v53);
          v54 = a1[2];
          v55 = a1[9];
          v59 = objc_msgSend_length(v41, v56, v57, v58);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v41, v60, v54, v55, 2, 0, v59);
          v61 = a1[4];
          v62 = a1[10];
          v66 = objc_msgSend_length(v41, v63, v64, v65);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v41, v67, v61, v62, 2, 0, v66);
          v68 = a1[6];
          v69 = a1[12];
          v73 = objc_msgSend_length(v41, v70, v71, v72);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v41, v74, v68, v69, 2, 0, v73);
          v75 = a1[8];
          v76 = a1[11];
          v80 = objc_msgSend_length(v41, v77, v78, v79);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v41, v81, v75, v76, 2, 0, v80);
          v85 = objc_msgSend_length(v41, v82, v83, v84);
          v86 = a1[13];
          v87 = v85 - 1;
          v90 = objc_msgSend_characterAtIndex_(v41, v88, v85 - 1, v89);
          if (objc_msgSend_characterIsMember_(v86, v91, v90, v92))
          {
            objc_msgSend_deleteCharactersInRange_(v41, v93, v87, 1);
          }

          else
          {
            objc_msgSend_appendString_(v41, v93, v25, v94);

            v25 = &stru_2834BADA0;
          }

          if (objc_msgSend_length(v41, v95, v96, v97))
          {
            v102 = a1[9];
            v103 = a1[1];
            v104 = objc_msgSend_length(v41, v99, v100, v101);
            objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v41, v105, v102, v103, 2, 0, v104);
            v106 = a1[10];
            v107 = a1[3];
            v111 = objc_msgSend_length(v41, v108, v109, v110);
            objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v41, v112, v106, v107, 2, 0, v111);
            v113 = a1[12];
            v114 = a1[5];
            v118 = objc_msgSend_length(v41, v115, v116, v117);
            objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v41, v119, v113, v114, 2, 0, v118);
            v120 = a1[11];
            v121 = a1[7];
            v125 = objc_msgSend_length(v41, v122, v123, v124);
            objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v41, v126, v120, v121, 2, 0, v125);
          }
        }

        v127 = sub_221140390(a1, v41);
        v130 = objc_msgSend_stringByAppendingString_(v127, v128, v25, v129);
        hasPrefix = objc_msgSend_hasPrefix_(v130, v131, v10, v132);

        if (hasPrefix)
        {
          v136 = v41;
        }

        else
        {
          v136 = v10;
        }

        if (hasPrefix & a4)
        {
          objc_msgSend_appendString_(v41, v134, v25, v135);
          v136 = v41;
        }

        v98 = v136;

        goto LABEL_26;
      }
    }

    v40 = v10;
    goto LABEL_16;
  }

  v98 = 0;
LABEL_27:

  return v98;
}

id sub_221140B28(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (a1)
  {
    a1 = objc_msgSend_mutableCopyWithZone_(v3, v4, 0, v5);
    if (objc_msgSend_length(a1, v7, v8, v9))
    {
      v13 = objc_msgSend_length(a1, v10, v11, v12);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(a1, v14, @"\\s+", @" ", 1024, 0, v13);
    }
  }

  return a1;
}

id sub_221140BD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (a1)
  {
    v8 = objc_msgSend_length(v3, v4, v5, v6);
    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v8)
    {
      v11 = 0;
      v12 = 0;
      v32 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = objc_msgSend_characterAtIndex_(v7, v9, v13, v10, v30);
        IsMember = objc_msgSend_characterIsMember_(*(a1 + 104), v17, v16, v18);
        v22 = objc_msgSend_characterIsMember_(*(a1 + 120), v20, v16, v21);
        if (v15)
        {
          v14 = IsMember;
        }

        if (v14 & IsMember)
        {
          v15 = 0;
          v12 = 0;
          v11 ^= 1u;
          v14 = 1;
        }

        else if (v22)
        {
          if (v11)
          {
            v15 = 0;
            v12 = 0;
            v11 = 1;
          }

          else if (v12)
          {
            v23 = objc_msgSend_substringWithRange_(v7, v9, v32, ~v32 + v13);
            objc_msgSend_addObject_(v30, v24, v23, v25);
            v32 = v13 + 1;

            v14 = 0;
            v12 = 0;
            v11 = 0;
            v15 = 1;
          }

          else
          {
            v15 = 0;
            v11 = 0;
            v12 = 1;
          }
        }

        else
        {
          v15 = 0;
          v12 = 0;
        }

        ++v13;
      }

      while (v8 != v13);
    }

    else
    {
      v32 = 0;
    }

    v26 = objc_msgSend_substringWithRange_(v7, v9, v32, v8 - v32, v30);
    objc_msgSend_addObject_(v31, v27, v26, v28);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

id *sub_221140DD4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = a3;
  if (a1)
  {
    v10 = objc_msgSend_length(v5, v6, v7, v8);
    v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v10)
    {
      v13 = 0;
      v36 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = objc_msgSend_characterAtIndex_(v5, v11, v14, v12, v34);
        IsMember = objc_msgSend_characterIsMember_(a1[13], v18, v17, v19);
        v23 = objc_msgSend_characterIsMember_(v9, v21, v17, v22);
        if (v16)
        {
          v15 = IsMember;
        }

        if (v15 & IsMember)
        {
          v16 = 0;
          v13 ^= 1u;
          v15 = 1;
        }

        else if (v23)
        {
          if (v13)
          {
            v16 = 0;
            v13 = 1;
          }

          else
          {
            v24 = objc_msgSend_substringWithRange_(v5, v11, v36, v14 - v36);
            objc_msgSend_addObject_(v34, v25, v24, v26);
            v36 = v14 + 1;

            v15 = 0;
            v13 = 0;
            v16 = 1;
          }
        }

        else
        {
          v16 = 0;
        }

        ++v14;
      }

      while (v10 != v14);
    }

    else
    {
      v36 = 0;
    }

    v27 = objc_msgSend_substringWithRange_(v5, v11, v36, v10 - v36, v34);
    objc_msgSend_addObject_(v35, v28, v27, v29);
    a1 = objc_msgSend_copy(v35, v30, v31, v32);
  }

  return a1;
}

id *sub_221140FC8(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    a1 = sub_221140DD4(a1, v3, a1[15]);
  }

  return a1;
}

id *sub_221141034(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    a1 = sub_221140DD4(a1, v3, a1[16]);
  }

  return a1;
}

uint64_t sub_2211410A0(uint64_t a1, NSUInteger a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (a1 && ((v12 = objc_msgSend_length(v5, v6, v7, v8), v12 >= a2) ? (v23 = a2) : (v13 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEStringManipulator formulaQuoteContextAtCharIndex:inString:]", v11), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringManipulator.mm", v16), v17 = objc_claimAutoreleasedReturnValue(), v33.location = 0, v33.length = v12, NSStringFromRange(v33), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v17, 527, 0, "charIndex %lu not within string range %@", a2, v18), v18, v17, v14, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22), v23 = v12), v23))
  {
    v24 = 0;
    LODWORD(v25) = 0;
    do
    {
      v26 = objc_msgSend_characterAtIndex_(v9, v10, v24, v11);
      if (objc_msgSend_characterIsMember_(*(a1 + 152), v27, v26, v28))
      {
        if (v25 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v25;
        }

        if (v25 == 1)
        {
          v25 = 0;
        }

        else
        {
          v25 = v29;
        }
      }

      else
      {
        IsMember = objc_msgSend_characterIsMember_(*(a1 + 160), v10, v26, v11);
        if (v25)
        {
          v31 = v25;
        }

        else
        {
          v31 = 2;
        }

        if (v25 == 2)
        {
          v31 = 0;
        }

        if (IsMember)
        {
          v25 = v31;
        }

        else
        {
          v25 = v25;
        }
      }

      ++v24;
    }

    while (v23 != v24);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

id sub_221141254(void *a1, void *a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = sub_221140B28(a1, v3);

    v78 = a1;
    v73 = v4;
    if (objc_msgSend_rangeOfCharacterFromSet_(v4, v5, a1[17], v6) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = v4;
      v79 = v3;
    }

    else
    {
      v75 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v7, v4, v8);
      v9 = objc_opt_new();
      objc_msgSend_setCharactersToBeSkipped_(v75, v10, v9, v11);

      v74 = objc_opt_new();
      while ((objc_msgSend_isAtEnd(v75, v12, v13, v14) & 1) == 0)
      {
        v16 = a1[17];
        v85 = 0;
        objc_msgSend_scanUpToCharactersFromSet_intoString_(v75, v15, v16, &v85);
        v17 = v85;
        if (objc_msgSend_length(v17, v18, v19, v20))
        {
          objc_msgSend_addObject_(v74, v21, v17, v22);
        }

        v23 = a1[17];
        v84 = 0;
        objc_msgSend_scanCharactersFromSet_intoString_(v75, v24, v23, &v84);
        v25 = v84;
        if (objc_msgSend_length(v25, v26, v27, v28))
        {
          objc_msgSend_addObject_(v74, v29, v25, v30);
        }
      }

      v79 = objc_opt_new();
      v34 = objc_msgSend_count(v74, v31, v32, v33);
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      obj = v74;
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v80, v86, 16);
      if (v39)
      {
        v40 = 0;
        v41 = 0;
        v42 = *v81;
        v76 = v34 - 1;
        do
        {
          v43 = 0;
          do
          {
            if (*v81 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v44 = 0;
            v45 = *(*(&v80 + 1) + 8 * v43);
            if (v40 && v40 < v76)
            {
              v46 = v78[17];
              v47 = objc_msgSend_characterAtIndex_(*(*(&v80 + 1) + 8 * v43), v36, 0, v38);
              if (objc_msgSend_characterIsMember_(v46, v48, v47, v49))
              {
                v50 = objc_msgSend_objectAtIndexedSubscript_(obj, v36, v40 - 1, v38);
                v53 = objc_msgSend_objectAtIndexedSubscript_(obj, v51, v40 + 1, v52);
                v57 = objc_msgSend_length(v50, v54, v55, v56);
                v60 = objc_msgSend_characterAtIndex_(v50, v58, v57 - 1, v59);
                v63 = objc_msgSend_characterAtIndex_(v53, v61, 0, v62);
                v44 = (objc_msgSend_characterIsMember_(v78[21], v64, v60, v65) & 1) == 0 && (objc_msgSend_characterIsMember_(v78[21], v66, v63, v67) & 1) == 0 && !TSUFormulaOperatorForChar() && !TSUFormulaOperatorForChar() && sub_2211410A0(v78, v41, v73) == 0;
              }

              else
              {
                v44 = 0;
              }
            }

            v70 = objc_msgSend_length(v45, v36, v37, v38);
            if (v44)
            {
              objc_msgSend_appendString_(v79, v68, @" ∩ ", v69);
            }

            else
            {
              objc_msgSend_appendString_(v79, v68, v45, v69);
            }

            v41 += v70;
            ++v40;
            ++v43;
          }

          while (v39 != v43);
          v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v80, v86, 16);
          v39 = v71;
        }

        while (v71);
      }

      v3 = v73;
    }
  }

  else
  {
    v79 = 0;
  }

  return v79;
}

uint64_t sub_221141800(uint64_t a1)
{
  for (i = *(a1 + 16); i; i = *i)
  {
    v3 = i[3];
    if (v3)
    {
      v4 = sub_221141800(v3);
      MEMORY[0x223DA1450](v4, 0x10A0C40026B2379);
    }
  }

  return sub_2210BDEC0(a1);
}

uint64_t sub_221141878(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  v12 = a1;
  sub_221142374(v13, &v12);
  v4 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
    while (1)
    {
      v5 = *(*(*(&v13[0] + 1) + ((v14 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v14 & 0x1FF));
      *&v14 = v14 + 1;
      *(&v14 + 1) = v4 - 1;
      if (v14 >= 0x400)
      {
        operator delete(**(&v13[0] + 1));
        *(&v13[0] + 1) += 8;
        *&v14 = v14 - 512;
      }

      v6 = *(v5 + 40);
      if (v6)
      {
        v7 = v6;
        v3[2](v3, v7, &v15);
      }

      if (v15)
      {
        break;
      }

      for (i = (v5 + 16); ; sub_221142374(v13, i + 3))
      {
        i = *i;
        if (!i)
        {
          break;
        }
      }

      v9 = v15;
      v4 = *(&v14 + 1);
      if (!*(&v14 + 1) || (v15 & 1) != 0)
      {
        goto LABEL_15;
      }
    }

    v9 = 1;
LABEL_15:
    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  sub_221142278(v13);

  return v10 & 1;
}

void sub_2211419AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_221142278(va);

  _Unwind_Resume(a1);
}

void sub_221141CA4(uint64_t a1, void *a2)
{
  v8 = a2;
  v6 = objc_msgSend_copy(v8, v3, v4, v5);
  v7 = *(a1 + 40);
  *(a1 + 40) = v6;
}

void sub_221142108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_221142278(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_221142324(a1);
}

uint64_t sub_221142324(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_221142374(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    sub_2211423FC(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void sub_2211423FC(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_22107C1F0(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_2211425D0(a1, &v9);
}

void sub_221142584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2211425D0(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_22107C1F0(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_2211426D8(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_22107C1F0(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_2211427E4(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_22107C1F0(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_2211428EC(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_22107C1F0(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

uint64_t **sub_2211429F8(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
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

uint64_t *sub_221142C34(void *a1, unsigned __int16 *a2)
{
  result = sub_2210C3024(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

void sub_221143144(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_221143624(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0x2000;
  }

  else
  {
    return dword_2217E0498[a1];
  }
}

unsigned __int8 *sub_221143644(unsigned __int8 *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    result = sub_221143678(result, a2, a3, a4);
    if (result)
    {
      return *(v4 + 2);
    }
  }

  return result;
}

BOOL sub_221143678(unsigned __int8 *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (v4 != 5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSTCellStorageVersionCheck(TSTCellStorage *)", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.h", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 138, 0, "Can't parse cell storage header version %d!", v4);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v12, v13, v14);
  }

  return v4 == 5;
}

uint64_t sub_221143750(unsigned int a1)
{
  if (a1)
  {
    v1 = vdupq_n_s16(a1);
    v2.i64[0] = 0x4000400040004;
    v2.i64[1] = 0x4000400040004;
    v3 = vandq_s8(vshlq_u16(v1, xmmword_2217E0470), v2);
    v1.i64[0] = *&vshl_u16(*v1.i8, 0xFFF3FFF4FFF5FFF6) & 0xFFC4FFC4FFC4FFC4;
    v3.i16[0] = vaddvq_s16(v3);
    v1.i16[0] = vaddv_s16(*v1.i8);
    v4 = v3.i32[0] + v1.i32[0];
    v1.i16[0] = vaddv_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(a1), xmmword_2217E0480)), 0x4000400040004));
    return (v4 + v1.i32[0] + ((a1 >> 18) & 4) + ((a1 >> 1) & 4 | (8 * ((a1 >> 2) & 1))) + (__rbit32(a1 & 3) >> 27));
  }

  else
  {
    LOWORD(v5) = 0;
  }

  return v5;
}

uint64_t sub_2211437F4(unsigned int a1)
{
  if (a1)
  {
    v1 = sub_221143750(a1);
    v4 = v1 + 12;
    if ((v1 & 3) != 0)
    {
      v5 = MEMORY[0x277D81150];
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "UInt16 TSTCellStorageSizeForHeaderFlags(TSTCellStorageFieldFlags)", v3);
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v8);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 154, 0, "Storage size should be four-byte-aligned!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    }
  }

  else
  {
    return 12;
  }

  return v4;
}

uint64_t sub_2211438C8(void *a1)
{
  v1 = a1;
  v2 = sub_221143910(v1);
  v3 = sub_2211437F4(v2);

  return v3;
}

uint64_t sub_221143910(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_valueType(v1, v2, v3, v4);
  hasCellStyle = objc_msgSend_hasCellStyle(v1, v6, v7, v8);
  hasTextStyle = objc_msgSend_hasTextStyle(v1, v9, v10, v11);
  hasConditionalStyle = objc_msgSend_hasConditionalStyle(v1, v12, v13, v14);
  hasFormula = objc_msgSend_hasFormula(v1, v15, v16, v17);
  hasControl = objc_msgSend_hasControl(v1, v18, v19, v20);
  hasFormulaSyntaxError = objc_msgSend_hasFormulaSyntaxError(v1, v21, v22, v23);
  v27 = objc_msgSend_cellFormatKind(v1, v24, v25, v26);
  hasNumberFormat = objc_msgSend_hasNumberFormat(v1, v28, v29, v30);
  hasCurrencyFormat = objc_msgSend_hasCurrencyFormat(v1, v32, v33, v34);
  hasDateFormat = objc_msgSend_hasDateFormat(v1, v36, v37, v38);
  hasDurationFormat = objc_msgSend_hasDurationFormat(v1, v40, v41, v42);
  hasTextFormat = objc_msgSend_hasTextFormat(v1, v44, v45, v46);
  hasBooleanFormat = objc_msgSend_hasBooleanFormat(v1, v48, v49, v50);
  hasCommentStorage = objc_msgSend_hasCommentStorage(v1, v52, v53, v54);
  hasImportWarningSet = objc_msgSend_hasImportWarningSet(v1, v56, v57, v58);
  if ((v5 & 0xFFFFFFF7) == 2)
  {
    v60 = 3;
  }

  else
  {
    v60 = 2;
  }

  if ((v5 & 0xFE) == 6)
  {
    v61 = v60;
  }

  else
  {
    v61 = (v5 & 0xFFFFFFF7) == 2;
  }

  if (v5 == 5)
  {
    v61 |= 4u;
  }

  if (v5 == 3)
  {
    v61 |= 8u;
  }

  if (v5 == 9)
  {
    v61 |= 0x10u;
  }

  if (hasCellStyle)
  {
    v61 |= 0x20u;
  }

  if (hasTextStyle)
  {
    v61 |= 0x40u;
  }

  if (hasConditionalStyle)
  {
    v61 |= 0x180u;
  }

  if (hasFormula)
  {
    v61 |= 0x200u;
  }

  if (hasControl)
  {
    v61 |= 0x400u;
  }

  if (hasFormulaSyntaxError)
  {
    v61 |= 0x800u;
  }

  if (v27)
  {
    v61 |= 0x1000u;
  }

  if (hasNumberFormat)
  {
    v61 |= 0x2000u;
  }

  if (hasCurrencyFormat)
  {
    v61 |= 0x4000u;
  }

  if (hasDateFormat)
  {
    v61 |= 0x8000u;
  }

  if (hasDurationFormat)
  {
    v61 |= 0x10000u;
  }

  if (hasTextFormat)
  {
    v61 |= 0x20000u;
  }

  if (hasBooleanFormat)
  {
    v61 |= 0x40000u;
  }

  if (hasCommentStorage)
  {
    v61 |= 0x80000u;
  }

  if (hasImportWarningSet)
  {
    v62 = v61 | 0x100000;
  }

  else
  {
    v62 = v61;
  }

  return v62;
}

void sub_221143B30(void *a1, uint64_t a2)
{
  v3 = a1;
  *a2 = 5;
  v4 = sub_221143910(v3);
  *(a2 + 1) = objc_msgSend_valueType(v3, v5, v6, v7);
  *(a2 + 4) = objc_msgSend_cellFlags(v3, v8, v9, v10);
  *(a2 + 6) = objc_msgSend_explicitFormatFlags(v3, v11, v12, v13);
  if (v4)
  {
    TSUDecimal::operator=();
    if (*(a2 + 1) == 10)
    {
      v23 = objc_msgSend_currencyDecimalValue(v3, v20, v21, v22);
    }

    else
    {
      v23 = objc_msgSend_numberDecimalValue(v3, v20, v21, v22);
    }

    v233._decimal.w[0] = v23;
    v233._decimal.w[1] = v24;
    *(a2 + 12) = TSUDecimal::low(&v233);
    *(a2 + 20) = TSUDecimal::high(&v233);
    v18 = v4 & 0x1FFFFE;
    v17 = 16;
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v18 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v17 = 0;
    v18 = v4;
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  objc_msgSend_underlyingDoubleValue(v3, v14, v15, v16);
  *(a2 + v17 + 12) = v25;
  v17 |= 8u;
  v18 &= 0x1FFFFDu;
  if ((v18 & 4) == 0)
  {
LABEL_4:
    if ((v18 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v26 = objc_msgSend_dateValue(v3, v14, v15, v16);
  objc_msgSend_timeIntervalSinceReferenceDate(v26, v27, v28, v29);
  v31 = v30;

  *(a2 + v17 + 12) = v31;
  v17 += 8;
  v18 = v18 & 0xFFFFFFFB;
  if ((v18 & 8) == 0)
  {
LABEL_5:
    v19 = v4;
    if ((v18 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_29:
  v32 = objc_msgSend_stringID(v3, v14, v15, v16);
  if (v32)
  {
    *(a2 + v17 + 12) = v32;
    v17 += 4;
    v19 = v4;
  }

  else
  {
    v89 = MEMORY[0x277D81150];
    v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
    v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v92);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v89, v94, v90, v93, 369, 0, "Cell claims to have a string, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v95, v96, v97);
    v19 = v4 & 0x1FFFF7;
  }

  v18 = v18 & 0xFFFFFFF7;
  if ((v18 & 0x10) == 0)
  {
LABEL_6:
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_32:
  v33 = objc_msgSend_richTextID(v3, v14, v15, v16);
  if (v33)
  {
    *(a2 + v17 + 12) = v33;
    v17 += 4;
  }

  else
  {
    v98 = MEMORY[0x277D81150];
    v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
    v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v101);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v103, v99, v102, 383, 0, "Cell claims to have rich text, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105, v106);
    v19 &= ~0x10u;
  }

  v18 = v18 & 0xFFFFFFEF;
  if ((v18 & 0x20) == 0)
  {
LABEL_7:
    if ((v18 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_35:
  v34 = objc_msgSend_cellStyleID(v3, v14, v15, v16);
  if (v34)
  {
    *(a2 + v17 + 12) = v34;
    v17 += 4;
  }

  else
  {
    v107 = MEMORY[0x277D81150];
    v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
    v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v110);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v107, v112, v108, v111, 397, 0, "Cell claims to have a cell style, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v113, v114, v115);
    v19 &= ~0x20u;
  }

  v18 = v18 & 0xFFFFFFDF;
  if ((v18 & 0x40) == 0)
  {
LABEL_8:
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_38:
  v35 = objc_msgSend_textStyleID(v3, v14, v15, v16);
  if (v35)
  {
    *(a2 + v17 + 12) = v35;
    v17 += 4;
  }

  else
  {
    v116 = MEMORY[0x277D81150];
    v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
    v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v119);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v116, v121, v117, v120, 411, 0, "Cell claims to have a text style, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v122, v123, v124);
    v19 &= ~0x40u;
  }

  v18 = v18 & 0xFFFFFFBF;
  if ((v18 & 0x80) == 0)
  {
LABEL_9:
    if ((v18 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_41:
  v36 = objc_msgSend_conditionalStyleID(v3, v14, v15, v16);
  if (v36)
  {
    *(a2 + v17 + 12) = v36;
    v17 += 4;
  }

  else
  {
    v125 = MEMORY[0x277D81150];
    v126 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
    v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v127, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v128);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v125, v130, v126, v129, 425, 0, "Cell claims to have conditional style, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v131, v132, v133);
    v19 &= ~0x80u;
  }

  v18 = v18 & 0xFFFFFF7F;
  if ((v18 & 0x100) == 0)
  {
LABEL_10:
    if ((v18 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_44:
  if (v3)
  {
    v37 = objc_msgSend_conditionalStyleAppliedRule(v3, v14, v15, v16);
  }

  else
  {
    v37 = 15;
  }

  *(a2 + v17 + 12) = v37;
  v17 += 4;
  v18 = v18 & 0xFFFFFEFF;
  if ((v18 & 0x200) == 0)
  {
LABEL_11:
    if ((v18 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

LABEL_48:
  v38 = objc_msgSend_formulaID(v3, v14, v15, v16);
  if (v38)
  {
    *(a2 + v17 + 12) = v38;
    v17 += 4;
  }

  else
  {
    v134 = MEMORY[0x277D81150];
    v135 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
    v138 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v136, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v137);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v134, v139, v135, v138, 447, 0, "Cell claims to have a formula, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v140, v141, v142);
    v19 &= ~0x200u;
  }

  v18 = v18 & 0xFFFFFDFF;
  if ((v18 & 0x400) == 0)
  {
LABEL_12:
    if ((v18 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_54;
  }

LABEL_51:
  v39 = objc_msgSend_controlCellSpecID(v3, v14, v15, v16);
  if (v39)
  {
    *(a2 + v17 + 12) = v39;
    v17 += 4;
  }

  else
  {
    v143 = MEMORY[0x277D81150];
    v144 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
    v147 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v145, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v146);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v143, v148, v144, v147, 461, 0, "Cell claims to have a control, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v149, v150, v151);
    v19 &= ~0x400u;
  }

  v18 = v18 & 0xFFFFFBFF;
  if ((v18 & 0x800) == 0)
  {
LABEL_13:
    if ((v18 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_54:
  v40 = objc_msgSend_formulaSyntaxErrorID(v3, v14, v15, v16);
  if (v40)
  {
    *(a2 + v17 + 12) = v40;
    v17 += 4;
  }

  else
  {
    v152 = MEMORY[0x277D81150];
    v153 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
    v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v154, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v155);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v152, v157, v153, v156, 475, 0, "Cell claims to have a formula syntax error, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v158, v159, v160);
    v19 &= ~0x800u;
  }

  v18 = v18 & 0xFFFFF7FF;
  if ((v18 & 0x1000) == 0)
  {
LABEL_14:
    if ((v18 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_60;
  }

LABEL_57:
  v41 = objc_msgSend_cellFormatKind(v3, v14, v15, v16);
  if (!v41)
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v45);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v47, v43, v46, 484, 0, "Can't archive a bad format kind!");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v48, v49, v50);
  }

  *(a2 + v17 + 12) = v41;
  v17 += 4;
  v18 = v18 & 0xFFFFEFFF;
  if ((v18 & 0x2000) == 0)
  {
LABEL_15:
    if ((v18 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_60:
  v51 = objc_msgSend_numberFormatID(v3, v14, v15, v16);
  if (v51)
  {
    *(a2 + v17 + 12) = v51;
    LOWORD(v17) = v17 + 4;
  }

  else
  {
    v161 = MEMORY[0x277D81150];
    v162 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
    v165 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v163, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v164);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v161, v166, v162, v165, 498, 0, "Cell claims to have a number format, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v167, v168, v169);
    v19 &= ~0x2000u;
  }

  v18 = v18 & 0xFFFFDFFF;
  if ((v18 & 0x4000) == 0)
  {
LABEL_16:
    if ((v18 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_63:
  v52 = objc_msgSend_currencyFormatID(v3, v14, v15, v16);
  if (v52)
  {
    *(a2 + v17 + 12) = v52;
    LOWORD(v17) = v17 + 4;
  }

  else
  {
    v170 = MEMORY[0x277D81150];
    v171 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
    v174 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v172, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v173);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v170, v175, v171, v174, 512, 0, "Cell claims to have a currency format, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v176, v177, v178);
    v19 &= ~0x4000u;
  }

  v18 = v18 & 0xFFFFBFFF;
  if ((v18 & 0x8000) == 0)
  {
LABEL_17:
    if ((v18 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

LABEL_66:
  v53 = objc_msgSend_dateFormatID(v3, v14, v15, v16);
  if (v53)
  {
    *(a2 + v17 + 12) = v53;
    LOWORD(v17) = v17 + 4;
  }

  else
  {
    v179 = MEMORY[0x277D81150];
    v180 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
    v183 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v181, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v182);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v179, v184, v180, v183, 526, 0, "Cell claims to have a date format, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v185, v186, v187);
    v19 &= ~0x8000u;
  }

  v18 = v18 & 0xFFFF7FFF;
  if ((v18 & 0x10000) == 0)
  {
LABEL_18:
    if ((v18 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_72;
  }

LABEL_69:
  v54 = objc_msgSend_durationFormatID(v3, v14, v15, v16);
  if (v54)
  {
    *(a2 + v17 + 12) = v54;
    LOWORD(v17) = v17 + 4;
  }

  else
  {
    v188 = MEMORY[0x277D81150];
    v189 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
    v192 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v190, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v191);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v188, v193, v189, v192, 540, 0, "Cell claims to have a duration format, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v194, v195, v196);
    v19 &= ~0x10000u;
  }

  v18 = v18 & 0xFFFEFFFF;
  if ((v18 & 0x20000) == 0)
  {
LABEL_19:
    if ((v18 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_75;
  }

LABEL_72:
  v55 = objc_msgSend_textFormatID(v3, v14, v15, v16);
  if (v55)
  {
    *(a2 + v17 + 12) = v55;
    LOWORD(v17) = v17 + 4;
  }

  else
  {
    v197 = MEMORY[0x277D81150];
    v198 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
    v201 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v199, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v200);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v197, v202, v198, v201, 554, 0, "Cell claims to have a text format, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v203, v204, v205);
    v19 &= ~0x20000u;
  }

  v18 = v18 & 0xFFFDFFFF;
  if ((v18 & 0x40000) == 0)
  {
LABEL_20:
    if ((v18 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_78;
  }

LABEL_75:
  v56 = objc_msgSend_BOOLeanFormatID(v3, v14, v15, v16);
  if (v56)
  {
    *(a2 + v17 + 12) = v56;
    LOWORD(v17) = v17 + 4;
  }

  else
  {
    v206 = MEMORY[0x277D81150];
    v207 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
    v210 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v208, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v209);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v206, v211, v207, v210, 568, 0, "Cell claims to have a BOOLean format, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v212, v213, v214);
    v19 &= ~0x40000u;
  }

  v18 = v18 & 0xFFFBFFFF;
  if ((v18 & 0x80000) == 0)
  {
LABEL_21:
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_81;
  }

LABEL_78:
  v57 = objc_msgSend_commentStorageID(v3, v14, v15, v16);
  if (v57)
  {
    *(a2 + v17 + 12) = v57;
    LOWORD(v17) = v17 + 4;
  }

  else
  {
    v215 = MEMORY[0x277D81150];
    v216 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
    v219 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v217, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v218);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v215, v220, v216, v219, 582, 0, "Cell claims to have a comment storage, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v221, v222, v223);
    v19 &= ~0x80000u;
  }

  v18 = v18 & 0xFFF7FFFF;
  if ((v18 & 0x100000) != 0)
  {
LABEL_81:
    v58 = objc_msgSend_importWarningSetID(v3, v14, v15, v16);
    if (v58)
    {
      *(a2 + v17 + 12) = v58;
      LOWORD(v17) = v17 + 4;
    }

    else
    {
      v224 = MEMORY[0x277D81150];
      v225 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
      v228 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v226, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v227);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v224, v229, v225, v228, 596, 0, "Cell claims to have an import warning set, but has no key for it!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v230, v231, v232);
      v19 &= ~0x100000u;
    }

    v18 = v18 & 0xFFEFFFFF;
  }

LABEL_84:
  *(a2 + 8) = v19;
  if (v19 != v4)
  {
    v59 = MEMORY[0x277D81150];
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v62);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v64, v60, v63, 606, 0, "Could not archive all computed storage elements!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67);
  }

  if (v18)
  {
    v68 = MEMORY[0x277D81150];
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v16);
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v71);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v73, v69, v72, 612, 0, "Failed to process all storage elements in TSTCellToCellStorage! Starting flags:%u Final flags:%u", v4, v18);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76);
  }

  v77 = sub_221143678(a2, v14, v15, v16);
  if (v77)
  {
    v77 = *(a2 + 8);
  }

  if (v17 + 12 != sub_2211437F4(v77))
  {
    v80 = MEMORY[0x277D81150];
    v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v79);
    v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v83);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v85, v81, v84, 615, 0, "Size miscalculation!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87, v88);
  }
}

void sub_221144998(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_clear(v3, v4, v5, v6);
  if (!a1 || !sub_221143678(a1, v7, v8, v9))
  {
    goto LABEL_57;
  }

  v12 = *(a1 + 1);
  objc_msgSend_setValueType_(v3, v10, *(a1 + 1), v11);
  objc_msgSend_setCellFlags_(v3, v13, *(a1 + 4), v14);
  objc_msgSend_setExplicitFormatFlags_(v3, v15, *(a1 + 6), v16);
  v20 = *(a1 + 8);
  if (v20)
  {
    TSUDecimal::TSUDecimal(&v39);
    if (v12 == 10)
    {
      objc_msgSend_setCurrencyDecimalValue_roundToDoublePrecision_(v3, v22, v39._decimal.w[0], v39._decimal.w[1], 0);
    }

    else
    {
      objc_msgSend_setNumberDecimalValue_roundToDoublePrecision_(v3, v22, v39._decimal.w[0], v39._decimal.w[1], 0);
    }

    v21 = 16;
    if ((v20 & 2) == 0)
    {
LABEL_5:
      if ((v20 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v21 = 0;
    if ((v20 & 2) == 0)
    {
      goto LABEL_5;
    }
  }

  v23 = *(a1 + v21 + 12);
  if (v12 == 7)
  {
    objc_msgSend_setDurationTimeIntervalValue_(v3, v17, v18, v19, v23);
  }

  else if (v12 == 6)
  {
    objc_msgSend_setBoolValue_(v3, v17, v23 != 0.0, v19);
  }

  v21 |= 8u;
  if ((v20 & 4) == 0)
  {
LABEL_6:
    if ((v20 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  v24 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v17, v18, v19, *(a1 + v21 + 12));
  objc_msgSend_setDateValue_(v3, v25, v24, v26);

  v21 += 8;
  if ((v20 & 8) == 0)
  {
LABEL_7:
    if ((v20 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  objc_msgSend_setStringID_(v3, v17, *(a1 + v21 + 12), v19);
  v21 += 4;
  if ((v20 & 0x10) == 0)
  {
LABEL_8:
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  objc_msgSend_setRichTextID_(v3, v17, *(a1 + v21 + 12), v19);
  v21 += 4;
  if ((v20 & 0x20) == 0)
  {
LABEL_9:
    if ((v20 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  objc_msgSend_setCellStyleID_(v3, v17, *(a1 + v21 + 12), v19);
  v21 += 4;
  if ((v20 & 0x40) == 0)
  {
LABEL_10:
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  objc_msgSend_setTextStyleID_(v3, v17, *(a1 + v21 + 12), v19);
  v21 += 4;
  if ((v20 & 0x80) == 0)
  {
LABEL_11:
    if ((v20 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  objc_msgSend_setConditionalStyleID_(v3, v17, *(a1 + v21 + 12), v19);
  v21 += 4;
  if ((v20 & 0x100) == 0)
  {
LABEL_12:
    if ((v20 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  objc_msgSend_setConditionalStyleAppliedRule_(v3, v17, *(a1 + v21 + 12), v19);
  v21 += 4;
  if ((v20 & 0x200) == 0)
  {
LABEL_13:
    if ((v20 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  objc_msgSend_setFormulaID_(v3, v17, *(a1 + v21 + 12), v19);
  v21 += 4;
  if ((v20 & 0x400) == 0)
  {
LABEL_14:
    if ((v20 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  objc_msgSend_setControlCellSpecID_(v3, v17, *(a1 + v21 + 12), v19);
  v21 += 4;
  if ((v20 & 0x800) == 0)
  {
LABEL_15:
    if ((v20 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  objc_msgSend_setFormulaSyntaxErrorID_(v3, v17, *(a1 + v21 + 12), v19);
  v21 += 4;
  if ((v20 & 0x1000) == 0)
  {
LABEL_16:
    if ((v20 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  objc_msgSend_suggestCellFormatKind_(v3, v17, *(a1 + v21 + 12), v19);
  v21 += 4;
  if ((v20 & 0x2000) == 0)
  {
LABEL_17:
    if ((v20 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  objc_msgSend_setNumberFormatID_(v3, v17, *(a1 + v21 + 12), v19);
  LOWORD(v21) = v21 + 4;
  if ((v20 & 0x4000) == 0)
  {
LABEL_18:
    if ((v20 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  objc_msgSend_setCurrencyFormatID_(v3, v17, *(a1 + v21 + 12), v19);
  LOWORD(v21) = v21 + 4;
  if ((v20 & 0x8000) == 0)
  {
LABEL_19:
    if ((v20 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  objc_msgSend_setDateFormatID_(v3, v17, *(a1 + v21 + 12), v19);
  LOWORD(v21) = v21 + 4;
  if ((v20 & 0x10000) == 0)
  {
LABEL_20:
    if ((v20 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  objc_msgSend_setDurationFormatID_(v3, v17, *(a1 + v21 + 12), v19);
  LOWORD(v21) = v21 + 4;
  if ((v20 & 0x20000) == 0)
  {
LABEL_21:
    if ((v20 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  objc_msgSend_setTextFormatID_(v3, v17, *(a1 + v21 + 12), v19);
  LOWORD(v21) = v21 + 4;
  if ((v20 & 0x40000) == 0)
  {
LABEL_22:
    if ((v20 & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  objc_msgSend_setBooleanFormatID_(v3, v17, *(a1 + v21 + 12), v19);
  LOWORD(v21) = v21 + 4;
  if ((v20 & 0x80000) == 0)
  {
LABEL_23:
    if ((v20 & 0x100000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_51:
  objc_msgSend_setCommentStorageID_(v3, v17, *(a1 + v21 + 12), v19);
  LOWORD(v21) = v21 + 4;
  if ((v20 & 0x100000) != 0)
  {
LABEL_52:
    objc_msgSend_setImportWarningSetID_(v3, v17, *(a1 + v21 + 12), v19);
    LOWORD(v21) = v21 + 4;
  }

LABEL_53:
  v27 = sub_221143678(a1, v17, v18, v19);
  if (v27)
  {
    v27 = *(a1 + 8);
  }

  if (v21 + 12 != sub_2211437F4(v27))
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "void TSTCellStorageToCell(TSTCellStorage *, TSTCell *__strong)", v29);
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v33);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v31, v34, 823, 0, "Size miscalculation!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38);
  }

LABEL_57:
}

uint64_t sub_221144DAC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return -1;
  }

  sub_221143678(a1, a2, a3, a4);
  v6 = *(a1 + 8);
  if ((v6 & a2) == 0)
  {
    return -1;
  }

  if (v6)
  {
    if (a2 == 1)
    {
      return 0;
    }

    v7 = 16;
    if ((v6 & 2) == 0)
    {
LABEL_5:
      if ((v6 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v7 = 0;
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }
  }

  if (a2 == 2)
  {
    return v7;
  }

  v7 |= 8u;
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_20:
  if (a2 == 4)
  {
    return v7;
  }

  v7 += 8;
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_22:
  if (a2 == 8)
  {
    return v7;
  }

  v7 += 4;
  if ((v6 & 0x10) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_24:
  if (a2 == 16)
  {
    return v7;
  }

  v7 += 4;
  if ((v6 & 0x20) == 0)
  {
LABEL_9:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_26:
  if (a2 == 32)
  {
    return v7;
  }

  v7 += 4;
  if ((v6 & 0x40) == 0)
  {
LABEL_10:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_11;
    }

LABEL_30:
    if (a2 == 128)
    {
      return v7;
    }

    v7 += 4;
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_28:
  if (a2 == 64)
  {
    return v7;
  }

  v7 += 4;
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_30;
  }

LABEL_11:
  if ((v6 & 0x100) != 0)
  {
LABEL_32:
    if (a2 == 256)
    {
      return v7;
    }

    v7 += 4;
  }

LABEL_34:
  if ((v6 & 0x200) != 0)
  {
    if (a2 == 512)
    {
      return v7;
    }

    v7 += 4;
  }

  if ((v6 & 0x400) != 0)
  {
    if (a2 == 1024)
    {
      return v7;
    }

    v7 += 4;
  }

  if ((v6 & 0x800) != 0)
  {
    if (a2 == 2048)
    {
      return v7;
    }

    v7 += 4;
  }

  if ((v6 & 0x1000) != 0)
  {
    if (a2 == 4096)
    {
      return v7;
    }

    v7 += 4;
  }

  if ((v6 & 0x2000) != 0)
  {
    if (a2 == 0x2000)
    {
      return v7;
    }

    v7 += 4;
  }

  if ((v6 & 0x4000) != 0)
  {
    if (a2 == 0x4000)
    {
      return v7;
    }

    v7 += 4;
  }

  if ((v6 & 0x8000) != 0)
  {
    if (a2 == 0x8000)
    {
      return v7;
    }

    v7 += 4;
  }

  if ((v6 & 0x10000) != 0)
  {
    if (a2 == 0x10000)
    {
      return v7;
    }

    v7 += 4;
  }

  if ((v6 & 0x20000) != 0)
  {
    if (a2 == 0x20000)
    {
      return v7;
    }

    v7 += 4;
  }

  if ((v6 & 0x40000) != 0)
  {
    if (a2 == 0x40000)
    {
      return v7;
    }

    v7 += 4;
  }

  if ((v6 & 0x80000) != 0)
  {
    if (a2 == 0x80000)
    {
      return v7;
    }

    v7 += 4;
  }

  if ((v6 & 0x100000) == 0)
  {
    goto LABEL_70;
  }

  if (a2 != 0x100000)
  {
    v7 += 4;
LABEL_70:
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Can't get offset for unknown element 0x%02x, offset:%hu!", "UInt16 p_OffsetForElementInStorage(TSTCellStorage *, TSTCellStorageFieldFlags)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", 1002, a2, v7);
    v9 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "UInt16 p_OffsetForElementInStorage(TSTCellStorage *, TSTCellStorageFieldFlags)", v11);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v12, v15, 1002, 1, "Can't get offset for unknown element 0x%02x, offset:%hu!", a2, v7);

    TSUCrashBreakpoint();
    abort();
  }

  return v7;
}

unsigned __int8 *sub_22114503C(unsigned __int8 *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = a2;
    v5 = result;
    sub_221143678(result, a2, a3, a4);
    return ((*(v5 + 2) & v4) != 0);
  }

  return result;
}

uint64_t sub_221145078(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_221144DAC(a1, a2, a3, a4);
  if (v5 == 0xFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + v5 + 12);
  }
}

double sub_2211450B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_221144DAC(a1, a2, a3, a4);
  if (v5 == 0xFFFF)
  {
    return 0.0;
  }

  else
  {
    return *(a1 + v5 + 12);
  }
}

unint64_t sub_2211450F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (sub_221144DAC(a1, a2, a3, a4) == 0xFFFF)
  {
    TSUDecimal::operator=();
  }

  else
  {
    TSUDecimal::TSUDecimal(&v5);
  }

  return v5._decimal.w[0];
}

void sub_221145810(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t TSCERelativeCellCoordinate::offsetBy(TSCERelativeCellCoordinate *this, int a2, int a3, int a4, int a5)
{
  column = this->_column;
  if (a2)
  {
    v6 = column == 0x7FFF;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  row = this->_row;
  if (a3)
  {
    v9 = row == 0x7FFFFFFF;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = -32766 - a2 > column;
  if (a2 >= 0)
  {
    v11 = 0;
  }

  if (a2 >= 1)
  {
    v11 = 32766 - a2 < column;
  }

  v12 = !v11;
  if (v7)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (a4)
  {
    v13 = 1;
  }

  v14 = a5 | v10;
  v15 = -2147483646 - a3 > row;
  if (a3 >= 0)
  {
    v15 = 0;
  }

  if (a3 >= 1)
  {
    v15 = 2147483646 - a3 < row;
  }

  v16 = !v15;
  if (v14)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  v18 = v13 & v17;
  if (v18 == 1)
  {
    if (column == 0x7FFF)
    {
      v19 = 1;
    }

    else
    {
      v19 = a4;
    }

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = a2;
    }

    this->_column = v20 + column;
    if (row == 0x7FFFFFFF)
    {
      v21 = 1;
    }

    else
    {
      v21 = a5;
    }

    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = a3;
    }

    this->_row = v22 + row;
  }

  return v18;
}

TSCERelativeCellCoordinate *TSCERelativeCellCoordinate::setPreserveFlags(TSCERelativeCellCoordinate *this, const TSUPreserveFlags *a2)
{
  flags = a2->_flags;
  this->_preserveColumn = a2->_flags & 1;
  this->_preserveRow = (flags & 2) != 0;
  return this;
}

unint64_t TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(TSCERelativeCellCoordinate *this, TSUCellCoord a2, TSUCellCoord a3, const TSUPreserveFlags *a4)
{
  if ((*&a2 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    v4 = *a3.row;
    v5 = 0x7FFF;
    v6 = 0x7FFFFFFFLL;
  }

  else
  {
    v4 = *a3.row;
    v7 = this >> 32;
    if (v4)
    {
      LOWORD(v7) = 0;
    }

    v8 = a2.column - v7;
    if (a2.column == 0x7FFF)
    {
      v5 = 0x7FFF;
    }

    else
    {
      v5 = v8;
    }

    v6 = 0x7FFFFFFFLL;
    if ((v4 & 2) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = this;
    }

    v10 = a2.row - v9;
    if (a2.row != 0x7FFFFFFF)
    {
      v6 = v10;
    }
  }

  return ((v4 & 1) << 56) | (((v4 >> 1) & 1) << 48) | (v5 << 32) | v6;
}

unint64_t TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(TSUCellCoord a1, const char *a2, const TSUPreserveFlags *a3, uint64_t a4)
{
  v4 = 0x7FFF7FFFFFFFLL;
  if ((a2 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    flags = a3->_flags;
    if ((HIBYTE(a2) & 1) != (a3->_flags & 1))
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellCoord TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(TSUCellCoord, TSCERelativeCellCoordinate, const TSUPreserveFlags &)", a4);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.mm", v12);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 119, 0, "Wrong sticky setting");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
      flags = a3->_flags;
    }

    if (((a2 >> 48) & 1) != (flags & 2) >> 1)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellCoord TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(TSUCellCoord, TSCERelativeCellCoordinate, const TSUPreserveFlags &)", a4);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.mm", v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 120, 0, "Wrong sticky setting");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
    }

    v27 = WORD2(a2) + a1.column;
    if (WORD2(a2) == 0x7FFF)
    {
      v27 = 0x7FFF;
    }

    if ((a2 & 0x100000000000000) != 0)
    {
      v27 = WORD2(a2);
    }

    LODWORD(v28) = a2 + a1.row;
    if (a2 == 0x7FFFFFFF)
    {
      LODWORD(v28) = 0x7FFFFFFF;
    }

    if ((a2 & 0x1000000000000) != 0)
    {
      LODWORD(v28) = a2;
    }

    if (v28 < 0)
    {
      v28 = 0x7FFFFFFFLL;
    }

    else
    {
      v28 = v28;
    }

    if (v27 < 0)
    {
      v27 = 0x7FFF;
    }

    v29 = v28 != 0x7FFFFFFF || a2 == 0x7FFFFFFF;
    v30 = v27 != 0x7FFF || WORD2(a2) == 0x7FFF;
    if (v30 && v29)
    {
      return v28 | (v27 << 32);
    }
  }

  return v4;
}

__n128 TSCERelativeCellRef::cellRefForHostCoord@<Q0>(TSCERelativeCellRef *this@<X0>, const TSUCellCoord *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  if ((*(this + 24) & 4) != 0)
  {
    if ((*(this + 24) & 8) == 0)
    {
      LODWORD(v10) = this->relativeCoord._column;
      if (*(this + 24))
      {
LABEL_6:
        v11 = 0;
LABEL_10:
        LODWORD(row) = 0x7FFFFFFF;
        goto LABEL_32;
      }

      if (v10 != 0x7FFF)
      {
        v13 = *a2;
        if (v10 < 1)
        {
          if ((v10 & 0x80000000) != 0 && -v10 > WORD2(v13))
          {
            goto LABEL_30;
          }
        }

        else if (999 - v10 < WORD2(v13))
        {
          goto LABEL_30;
        }

        LOWORD(v10) = v10 + WORD2(v13);
        if (v10 >= 0x7FFFu)
        {
          v14 = MEMORY[0x277D81150];
          v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", a4);
          v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v17);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 168, 0, "overflow in column");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
        }

        goto LABEL_6;
      }
    }

LABEL_30:
    v11 = 0;
    LODWORD(row) = 0x7FFFFFFF;
    goto LABEL_31;
  }

  v6 = *a2;
  if ((*(this + 24) & 8) != 0)
  {
    row = this->relativeCoord._row;
    if ((*(this + 24) & 2) != 0)
    {
      v11 = 0;
LABEL_31:
      LOWORD(v10) = 0x7FFF;
      goto LABEL_32;
    }

    if (row == 0x7FFFFFFF)
    {
      v11 = 0;
      LOWORD(v10) = 0x7FFF;
      goto LABEL_10;
    }

    if (row < 1)
    {
      if (row && v6.row < -row)
      {
        goto LABEL_30;
      }
    }

    else if ((999999 - row) < v6.row)
    {
      goto LABEL_30;
    }

    if (v6.row == 0x7FFFFFFF)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", a4);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v26);
      v28 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v27, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v28);
    }

    else
    {
      if ((row + v6.row) < 0x7FFFFFFF)
      {
        v11 = 0;
        LOWORD(v10) = 0x7FFF;
        LODWORD(row) = row + v6.row;
        goto LABEL_32;
      }

      v30 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", a4);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v32);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v33, v24, v27, 191, 0, "overflow in row, input row: %d with host row: %lu", row, v6.row);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
    goto LABEL_30;
  }

  relativeCoord = this->relativeCoord;
  v38._flags = *(this + 24) & 3;
  v8 = v6;
  v9 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v8, relativeCoord, &v38, a4);
  v10 = HIDWORD(v9);
  v11 = v9 & 0xFFFF000000000000;
  LODWORD(row) = v9;
LABEL_32:
  *a3 = v11 | (v10 << 32) | row;
  result = this->tableUID;
  *(a3 + 8) = result;
  return result;
}

__CFString *TSCERelativeCellRef::description(TSCERelativeCellRef *this)
{
  v2 = *(this + 24);
  if ((v2 & 4) == 0)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = TSKUIDStruct::description(&this->tableUID);
    v7 = v4;
    if ((v2 & 8) != 0)
    {
      if ((*(this + 24) & 2) != 0)
      {
        objc_msgSend_stringWithFormat_(v3, v5, @"%@::(_,%@%d)", v6, v4, @"$", this->relativeCoord._row);
      }

      else
      {
        objc_msgSend_stringWithFormat_(v3, v5, @"%@::(_,%@%d)", v6, v4, &stru_2834BADA0, this->relativeCoord._row);
      }
    }

    else
    {
      if (*(this + 24))
      {
        v8 = @"$";
      }

      else
      {
        v8 = &stru_2834BADA0;
      }

      column = this->relativeCoord._column;
      if ((*(this + 24) & 2) != 0)
      {
        objc_msgSend_stringWithFormat_(v3, v5, @"%@::(%@%d,%@%d)", v6, v4, v8, column, @"$", this->relativeCoord._row);
      }

      else
      {
        objc_msgSend_stringWithFormat_(v3, v5, @"%@::(%@%d,%@%d)", v6, v4, v8, column, &stru_2834BADA0, this->relativeCoord._row);
      }
    }

    goto LABEL_16;
  }

  if ((*(this + 24) & 8) == 0)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = TSKUIDStruct::description(&this->tableUID);
    v7 = v11;
    if (*(this + 24))
    {
      objc_msgSend_stringWithFormat_(v10, v12, @"%@::(%@%d,_)", v13, v11, @"$", this->relativeCoord._column);
    }

    else
    {
      objc_msgSend_stringWithFormat_(v10, v12, @"%@::(%@%d,_)", v13, v11, &stru_2834BADA0, this->relativeCoord._column);
    }

    v14 = LABEL_16:;

    goto LABEL_18;
  }

  v14 = @"#REF!";
LABEL_18:

  return v14;
}

void sub_22114801C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_221148044(__n128 *a1, __n128 *a2)
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

void sub_221148068(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_221148080(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v23 = v3;
  v8 = objc_msgSend_groupingColumnUid(v3, v5, v6, v7);
  v10 = v9;
  v12 = v4[7];
  v11 = v4[8];
  if (v12 >= v11)
  {
    v14 = v4[6];
    v15 = v12 - v14;
    v16 = (v12 - v14) >> 4;
    v17 = v16 + 1;
    if ((v16 + 1) >> 60)
    {
      sub_22107C148();
    }

    v18 = v11 - v14;
    if (v18 >> 3 > v17)
    {
      v17 = v18 >> 3;
    }

    v19 = v18 >= 0x7FFFFFFFFFFFFFF0;
    v20 = 0xFFFFFFFFFFFFFFFLL;
    if (!v19)
    {
      v20 = v17;
    }

    if (v20)
    {
      sub_221086F74((v4 + 6), v20);
    }

    v21 = (16 * v16);
    *v21 = v8;
    v21[1] = v10;
    v13 = 16 * v16 + 16;
    memcpy(0, v14, v15);
    v22 = v4[6];
    v4[6] = 0;
    v4[7] = v13;
    v4[8] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v12 = v8;
    v12[1] = v9;
    v13 = (v12 + 2);
  }

  v4[7] = v13;
}

uint64_t *sub_22114847C(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  v20._lower = a3;
  v20._upper = a4;
  v19._lower = a5;
  v19._upper = a6;
  v18._lower = a7;
  v18._upper = a8;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v10 = TSKUIDStruct::CFUUIDBytes(&v20);
  *a1 = v10 ^ v11;
  a1[1] = a2;
  v12 = TSKUIDStruct::CFUUIDBytes(&v19);
  v14 = v13;
  v15 = TSKUIDStruct::CFUUIDBytes(&v18);
  a1[2] = (((v15 + v16) >> 32) + v15 + v16) | (v12 ^ v14) & 0xFFFFFFFF00000000 ^ ((v12 ^ v14) << 32);
  return a1;
}

void TSCERandGenerator::TSCERandGenerator(TSCERandGenerator *this, uint64_t a2, const TSKUIDStruct *a3, const TSKUIDStruct *a4, const TSKUIDStruct *a5)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = sub_22114847C(this, a2, a3->_lower, a3->_upper, a4->_lower, a4->_upper, a5->_lower, a5->_upper);
  v6 = *v5;
  v7 = v5[2];
  sub_2212CBD1C((v5 + 3), &v6, 0x18u);
}

uint64_t TSCERandGenerator::setNewDocumentSeed(TSCERandGenerator *this, unint64_t a2)
{
  v3[3] = *MEMORY[0x277D85DE8];
  this->var0.var1 = a2;
  v3[0] = this->var0.var0;
  v3[1] = a2;
  v3[2] = this->var0.var2;
  return sub_2212CBD1C(&this->var1, v3, 0x18u);
}

void TSCERandGenerator::randomDouble(TSCERandGenerator *this)
{
    ;
  }
}

void TSCERandGenerator::randWithMinMax(TSCERandGenerator *this, double a2, double a3)
{
  if (a2 <= a3)
  {
    TSCERandGenerator::randomDouble(this);
  }
}

uint64_t TSCERandGenerator::randomUid(TSCERandGenerator *this)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_2212CBDCC(&this->var1.var0, v2, 0x10u);
  return v2[0];
}

id sub_221148718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = TSUDefaultDateOnlyMediumFormat();
  v4 = objc_alloc(MEMORY[0x277D80658]);
  v7 = objc_msgSend_initWithFormatString_(v4, v5, v3, v6);

  return v7;
}

id sub_221148774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = TSUDefaultTimeOnlyShortFormat();
  v4 = objc_alloc(MEMORY[0x277D80658]);
  v7 = objc_msgSend_initWithFormatString_(v4, v5, v3, v6);

  return v7;
}

uint64_t sub_2211487D0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D811A0];
  v6 = objc_msgSend_formatString(a1, a2, a3, a4);
  v9 = objc_msgSend_datePortionOfDateTimeFormatString_(v5, v7, v6, v8);

  v13 = objc_msgSend_formatString(a1, v10, v11, v12);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v14, v13, v15);

  return isEqualToString;
}

BOOL sub_221148850(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_formatString(a1, a2, a3, a4);
  v7 = objc_msgSend_rangeOfString_(v4, v5, @"a", v6);

  return v7 != 0x7FFFFFFFFFFFFFFFLL;
}

void sub_22114EED8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_22114F320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v20 = *(v18 - 128);
  if (v20)
  {
    *(v18 - 120) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22114F414(uint64_t a1, const TSCEFormat *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_22114F468(a1, a2);
  }

  else
  {
    TSCEFormat::TSCEFormat(*(a1 + 8), a2);
    result = v3 + 32;
    *(a1 + 8) = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22114F468(TSCEFormat *a1, const TSCEFormat *a2)
{
  v2 = (*&a1->_formatType - a1->_tskFormat) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_22107C148();
  }

  v6 = *&a1->_durationFormat - a1->_tskFormat;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_22114F634(a1, v7);
  }

  __p = 0;
  v11 = 32 * v2;
  v13 = 0;
  TSCEFormat::TSCEFormat((32 * v2), a2);
  v12 = 32 * v2 + 32;
  sub_22114F594(a1, &__p);
  v8 = *&a1->_formatType;
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 31) & 0xFFFFFFFFFFFFFFE0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_22114F55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

TSCEFormat *sub_22114F594(TSCEFormat *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  tskFormat = result->_tskFormat;
  v6 = *&result->_formatType;
  v7 = (v4 + result->_tskFormat - v6);
  if (v6 != result->_tskFormat)
  {
    result = (v4 + result->_tskFormat - v6);
    do
    {
      TSCEFormat::TSCEFormat(result, tskFormat);
      tskFormat = (tskFormat + 32);
      result = v8 + 1;
    }

    while (tskFormat != v6);
    tskFormat = v3->_tskFormat;
  }

  a2[1] = v7;
  v3->_tskFormat = v7;
  *&v3->_formatType = tskFormat;
  a2[1] = tskFormat;
  v9 = *&v3->_formatType;
  *&v3->_formatType = a2[2];
  a2[2] = v9;
  v10 = *&v3->_durationFormat;
  *&v3->_durationFormat = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void sub_22114F634(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_22107C238();
}

TSCEASTStreamIterator *sub_22114F67C(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v5 = &unk_2834A2160;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  v6 = a3->var1;
  v10 = v6;
  if (v6 && *(objc_msgSend_tableUIDMap(v6, v7, v8, v9) + 24))
  {
    *(a1 + 17) = objc_msgSend_tableUIDMap(v10, v11, v12, v13);
  }

  TSCEFormulaRewriteContext::setRestoreBadRefs(a3, 1);

  return a1;
}

TSCEASTRelativeCoordRefElement *sub_22114F72C(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  v6 = TSCEASTElement::refFlags(a2, a1);
  if (v6)
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v4, v5);
    upper = v10;
  }

  else
  {
    v7 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    lower = v7->var0.var0._tableUID._lower;
    upper = v7->var0.var0._tableUID._upper;
  }

  v68._lower = lower;
  v68._upper = upper;
  v67._flags = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
  v66 = coordinate;
  if (v6)
  {
    v12 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    if (lower == v12->var0.var0._tableUID._lower && upper == v12->var0.var0._tableUID._upper)
    {
      v19 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v13, v14);
      v20 = coordinate;
      v65 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v20, v19, &v67, v21);
      v22 = (*(*a2 + 96))(a2, a1);
      TSCEASTIteratorBase::createLocalReference(a1, &v65, &v67, &v66, v22);
    }

    v16 = *(a1 + 136);
    if (v16)
    {
      v17 = sub_221119F90(v16, &v68);
      if (v17)
      {
        v68 = v17[2];
        TSCEASTRelativeCoordRefElement::setTableUID(a2, &v68, a1, v18);
      }
    }
  }

  if (TSCEASTElement::hasUidTracts(a2, a1))
  {
    v23 = sub_221089E8C(a1);
    v26 = v23;
    if (!v23)
    {
      goto LABEL_36;
    }

    v27 = objc_msgSend_tableOrLinkedResolverForTableUID_(v23, v24, &v68, v25);
    if (!v27)
    {
      goto LABEL_36;
    }

    (*(*a2 + 136))(&v65, a2, a1, &v66);
    v30 = TSCEASTElement::refFlags(a2, a1) & 0xC;
    if (v30 == 4)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
    }

    else
    {
      v32 = objc_msgSend_columnUIDForColumnIndex_(v27, v28, v65.column, v29);
      v33 = v28;
      v31 = (v32 | v28) == 0;
      if (v30 == 8)
      {
        if (v32 | v28)
        {
          v34 = 0;
          v35 = 0;
LABEL_25:
          v38 = TSCEASTElement::mutableUndoTractList(a2, a1);
          v39 = [TSCEUndoTract alloc];
          v41 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v39, v40, v32, v33, v34, v35, 4);
          objc_msgSend_appendUidTract_(v38, v42, v41, v43);
          v44 = TSCEASTElement::refFlags(a2, a1);
          v67._flags = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
          v46 = objc_msgSend_cellTractRefWithUidTractList_onTable_preserveFlags_rewriteContext_(TSCECellTractRef, v45, v38, &v68, v67._flags, *(a1 + 8));
          v50 = v46;
          if (v46)
          {
            if (objc_msgSend_isSingleCellOrSpanningRange(v46, v47, v48, v49))
            {
              isRangeRef = TSCEFormulaRewriteContext::isRangeRef(*(a1 + 8));
            }

            else
            {
              isRangeRef = 1;
            }

            if (*(a1 + 144) == 1)
            {

              v38 = 0;
            }

            if (isRangeRef)
            {
              flags = v67._flags;
              objc_msgSend_setPreserveFlags_(v50, v51, v67._flags & 0xF, v53);
              v56 = [TSCERelativeTractRef alloc];
              v58 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v56, v57, v50, &v66);
              *&v64.coordinate.row = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
              v59._flags = v44;
              v60 = v44 & 0xC0 | (16 * ((flags >> 2) & 3)) | 2;
              TSCEASTIteratorBase::createColonTractRef(a1, v59, v60, v58, v38, &v64);
            }

            v64.coordinate = objc_msgSend_topLeft(v50, v51, v52, v53);
            v64._tableUID = v68;
            tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
            v61._flags = v44;
            TSCEASTIteratorBase::createReference(a1, &v64, v61, &tableUID, &v66, v38);
          }
        }

LABEL_35:

LABEL_36:
        return a2;
      }
    }

    v34 = objc_msgSend_rowUIDForRowIndex_(v27, v28, v65.row, v29);
    v35 = v36;
    if (v34 | v36)
    {
      v37 = v31;
    }

    else
    {
      v37 = 1;
    }

    if ((v37 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  return a2;
}

TSCEASTColonTractElement *sub_22114FBA4(TSCEFormulaRewriteContext **a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4);
  v10 = v6;
  if (v6)
  {
    if (objc_msgSend_hasTableUID(v6, v7, v8, v9))
    {
      if (a1[17])
      {
        __p = objc_msgSend_tableUID(v10, v11, v12, v13);
        __dst = v14;
        v15 = sub_221119F90(a1[17], &__p);
        if (v15)
        {
          objc_msgSend_setTableUID_(v10, v16, v15[4], v15[5]);
          TSCEASTColonTractElement::setRelativeTractRef(this, v10, 0, a1, 1);
        }
      }
    }
  }

  v17 = TSCEASTElement::mutableUndoTractList(this, a1);
  __p = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
  v20 = objc_msgSend_absoluteCellTractRefForHostCell_(v10, v18, &__p, v19);
  v159._lower = 0;
  v159._upper = 0;
  if (objc_msgSend_hasTableUID(v10, v21, v22, v23))
  {
    v159._lower = objc_msgSend_tableUID(v10, v24, v25, v26);
  }

  else
  {
    v28 = TSCEFormulaRewriteContext::containingCell(a1[1]);
    upper = v28->var0.var0._tableUID._upper;
    v159._lower = v28->var0.var0._tableUID._lower;
  }

  v159._upper = upper;
  v29 = sub_221089E8C(a1);
  v32 = v29;
  if (v29)
  {
    v36 = objc_msgSend_tableOrLinkedResolverForTableUID_(v29, v30, &v159, v31);
    if (v36 && v20)
    {
      v143 = v17;
      v145 = objc_msgSend_spansAllRows(v20, v33, v34, v35);
      v147 = objc_msgSend_spansAllColumns(v20, v37, v38, v39);
      if ((v147 & v145) == 1)
      {
        v42 = MEMORY[0x277D81150];
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "virtual TSCEASTElement *TSCEASTRepairBadRefsRewriter::colonTractNode(TSCEASTColonTractElement *)", v41);
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTRepairBadRefsRewriter.mm", v45);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v47, v43, v46, 154, 0, "Can't have a reference spanning both columns and rows");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50);
      }

      __p = 0;
      __dst = 0;
      v158 = 0;
      v153 = 0;
      v154 = 0;
      v155 = 0;
      if (TSCEFormulaRewriteContext::tableSizeGrowing(a1[1]))
      {
        v144 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v51, v52, v53);
        v149 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v54, v55, v56);
      }

      else
      {
        v149 = 0;
        v144 = 0;
      }

      if (v147)
      {
        operator new();
      }

      v57 = objc_msgSend_columns(v20, v51, v52, v53);
      v58 = TSUIndexSet::asNSIndexSet(v57);
      objc_msgSend_columnUIDsForColumnIndexes_(v36, v59, v58, v60);
      if (v144)
      {
        v65 = __p;
        v64 = __dst;
        if (objc_msgSend_count(v58, v61, v62, v63) > ((v64 - v65) >> 4))
        {
          v69 = objc_msgSend_mutableCopy(v58, v66, v67, v68);
          v72 = objc_msgSend_mutableColumnIndexesForUIDs_(v36, v70, &v152, v71);
          objc_msgSend_removeIndexes_(v69, v73, v72, v74);
          objc_msgSend_addIndexes_(v144, v75, v69, v76);
        }
      }

      sub_2210F0C88(&__p, __dst, *&v152.coordinate, v152._tableUID._lower, (v152._tableUID._lower - *&v152.coordinate) >> 4);
      if (v152.coordinate)
      {
        v152._tableUID._lower = v152.coordinate;
        operator delete(*&v152.coordinate);
      }

      if (v145)
      {
        operator new();
      }

      v80 = objc_msgSend_rows(v20, v77, v78, v79);
      v81 = TSUIndexSet::asNSIndexSet(v80);
      objc_msgSend_rowUIDsForRowIndexes_(v36, v82, v81, v83);
      if (v149)
      {
        coordinate = v152.coordinate;
        lower = v152._tableUID._lower;
        if (objc_msgSend_count(v81, v84, v85, v86) > ((lower - *&coordinate) >> 4))
        {
          v92 = objc_msgSend_mutableCopy(v81, v89, v90, v91);
          v95 = objc_msgSend_mutableRowIndexesForUIDs_(v36, v93, &v152, v94);
          objc_msgSend_removeIndexes_(v92, v96, v95, v97);
          objc_msgSend_addIndexes_(v149, v98, v92, v99);
        }
      }

      sub_2210F0C88(&v153, v154, *&v152.coordinate, v152._tableUID._lower, (v152._tableUID._lower - *&v152.coordinate) >> 4);
      if (v152.coordinate)
      {
        v152._tableUID._lower = v152.coordinate;
        operator delete(*&v152.coordinate);
      }

      v17 = v143;
      if (!objc_msgSend_count(v149, v100, v101, v102) && !objc_msgSend_count(v144, v103, v104, v105) && v154 != v153 && __dst != __p)
      {
        v106 = [TSCEUndoTract alloc];
        v108 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v106, v107, &__p, &v153, 4);
        objc_msgSend_setIsRangeRef_(v108, v109, 1, v110);
        isRectangularRange = objc_msgSend_isRectangularRange(v20, v111, v112, v113);
        objc_msgSend_setPreserveRectangularRange_(v108, v115, isRectangularRange, v116);
        objc_msgSend_appendUidTract_(v143, v117, v108, v118);
        v119 = TSCEASTElement::refFlags(this, a1);
        v17 = v143;
        v146 = TSCEASTColonTractElement::colonTractFlags(this, a1, v120, v121);
        v148 = v119;
        v125 = objc_msgSend_preserveFlags(v10, v122, v123, v124);
        v127 = objc_msgSend_cellTractRefWithUidTractList_onTable_preserveFlags_rewriteContext_(TSCECellTractRef, v126, v143, &v159, v125, a1[1]);
        v131 = v127;
        if (v127)
        {
          if (objc_msgSend_isSingleCellOrSpanningRange(v127, v128, v129, v130))
          {
            isRangeRef = TSCEFormulaRewriteContext::isRangeRef(a1[1]);
          }

          else
          {
            isRangeRef = 1;
          }

          if (*(a1 + 144) == 1)
          {

            v143 = 0;
          }

          if (isRangeRef)
          {
            objc_msgSend_setPreserveFlags_(v131, v132, v125 & 0xF, v134);
            v136 = [TSCERelativeTractRef alloc];
            v152.coordinate = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
            v138 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v136, v137, v131, &v152);
            *&v152.coordinate.row = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
            v139._flags = v148;
            v140._flags = v146;
            TSCEASTIteratorBase::createColonTractRef(a1, v139, v140, v138, v143, &v152);
          }

          v152.coordinate = objc_msgSend_topLeft(v131, v132, v133, v134);
          v152._tableUID = v159;
          tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
          v150 = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
          v141._flags = v148;
          TSCEASTIteratorBase::createReference(a1, &v152, v141, &tableUID, &v150, v143);
        }
      }

      if (v153)
      {
        v154 = v153;
        operator delete(v153);
      }

      if (__p)
      {
        __dst = __p;
        operator delete(__p);
      }
    }
  }

  else
  {
    v36 = 0;
  }

  return this;
}

void sub_221150250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2211503D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144) == 1 && TSCEASTElement::hasUidTracts(a2, a1))
  {

    TSCEASTIteratorBase::createTagOnlyOp(a1, 0x1C, v4, v5);
  }

  return a2;
}

uint64_t sub_221150438(uint64_t a1, uint64_t a2)
{
  v9[0] = (*(*a2 + 136))(a2, a1);
  v9[1] = v4;
  v5 = *(a1 + 136);
  if (v5)
  {
    v6 = sub_221119F90(v5, v9);
    if (v6)
    {
      v8 = *(v6 + 2);
      (*(*a2 + 144))(a2, &v8, a1);
    }
  }

  return a2;
}

TSCEASTRelativeCoordRefElement *sub_2211504E4(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  v2 = a2;
  tableUID._lower = 0;
  tableUID._upper = 0;
  if (TSCEASTElement::refFlags(a2, a1))
  {
    tableUID._lower = TSCEASTRelativeCoordRefElement::tableUID(v2, a1, v4, v5);
    tableUID._upper = v6;
    v7 = *(a1 + 136);
    if (v7)
    {
      v8 = sub_221119F90(v7, &tableUID);
      if (v8)
      {
        tableUID = v8[2];
        TSCEASTRelativeCoordRefElement::setTableUID(v2, &tableUID, a1, v9);
        hasUidTracts = TSCEASTElement::hasUidTracts(v2, a1);
        goto LABEL_8;
      }
    }
  }

  else
  {
    tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  }

  if (!TSCEASTElement::hasUidTracts(v2, a1))
  {
    return v2;
  }

  hasUidTracts = 1;
LABEL_8:
  v11 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  if (*&v11->var0.var0.coordinate == 0x7FFFFFFF || (*&v11->var0.var0.coordinate & 0xFFFF00000000) == 0x7FFF00000000)
  {
    if (*(a1 + 144) & hasUidTracts)
    {
      TSCEASTIteratorBase::createReferenceError(a1, v12, v13, v14);
    }
  }

  else
  {
    v16 = (*(*v2 + 16))(v2);
    v19 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
    coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
    return TSCEASTIteratorBase::convertReferenceErrorToRef(a1, v16, &v19, &coordinate, 0);
  }

  return v2;
}

void sub_22115064C(uint64_t a1, TSCEASTUidReferenceElement *a2)
{
  tableUID._lower = 0;
  tableUID._upper = 0;
  if (TSCEASTElement::refFlags(a2, a1))
  {
    tableUID._lower = TSCEASTUidReferenceElement::tableUID(a2, a1, v4, v5);
    tableUID._upper = v6;
    v7 = *(a1 + 136);
    if (v7)
    {
      v8 = sub_221119F90(v7, &tableUID);
      if (v8)
      {
        tableUID = v8[2];
        TSCEASTUidReferenceElement::setTableUID(a2, &tableUID, a1, v9);
      }
    }
  }

  else
  {
    tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  }

  v10 = TSCEASTElement::mutableUndoTractList(a2, a1);
  v13 = TSCEASTUidReferenceElement::preserveFlags(a2, a1, v11, v12);
  v38._flags = v13;
  v15 = objc_msgSend_cellTractRefWithUidTractList_onTable_preserveFlags_rewriteContext_(TSCECellTractRef, v14, v10, &tableUID, v13, *(a1 + 8));
  v19 = v15;
  if (v15)
  {
    if (objc_msgSend_isSingleCellOrSpanningRange(v15, v16, v17, v18))
    {
      isRangeRef = TSCEFormulaRewriteContext::isRangeRef(*(a1 + 8));
    }

    else
    {
      isRangeRef = 1;
    }

    coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
    v21 = TSCEASTElement::refFlags(a2, a1);
    v24 = TSCEASTUidReferenceElement::colonTractFlags(a2, a1, v22, v23);
    if (isRangeRef)
    {
      v28 = v24;
      objc_msgSend_setPreserveFlags_(v19, v25, v13 & 0xF, v27);
      v29 = [TSCERelativeTractRef alloc];
      v31 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v29, v30, v19, &coordinate);
      *&v36.coordinate.row = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
      v32._flags = v21;
      v33._flags = v28;
      TSCEASTIteratorBase::createColonTractRef(a1, v32, v33, v31, v10, &v36);
    }

    v36.coordinate = objc_msgSend_topLeft(v19, v25, v26, v27);
    v36._tableUID = tableUID;
    v35 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
    v34._flags = v21;
    TSCEASTIteratorBase::createReference(a1, &v36, v34, &v35, &coordinate, v10);
  }

  TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v10, &tableUID, &v38);
}

TSCEASTCategoryRefElement *sub_2211508AC(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *a2)
{
  if (*(a1 + 17))
  {
    v13[0] = (*(*a2 + 136))(a2, a1);
    v13[1] = v4;
    v5 = sub_221119F90(*(a1 + 17), v13);
    if (v5)
    {
      v8 = v5[4];
      v9 = v5[5];
      v10 = TSCEASTCategoryRefElement::mutableCategoryRef(a2, a1, v6, v7);
      objc_msgSend_setGroupByUid_(v10, v11, v8, v9);
      TSCEASTCategoryRefElement::setCategoryRef(a2, v10, a1);
    }
  }

  return a2;
}

void sub_221150980(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

void sub_221151CB8(void *a1, unint64_t a2, id *a3)
{
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v7 = *a1 + 8 * a2;
      while (v4 != v7)
      {
        v8 = *(v4 - 8);
        v4 -= 8;
      }

      a1[1] = v7;
    }
  }

  else
  {
    v6 = a2 - v5;

    sub_221159600(a1, v6, a3);
  }
}

void sub_2211527B4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2 + 205;
  v14 = objc_msgSend_groupingColumnsForOwnerIndex_(*(a1 + 32), a2, (a2 + 205), a4);
  v8 = objc_msgSend_registerGroupByForColumns_ownerIndex_hiddenStates_groupBySet_(*(a1 + 40), v7, v14, v6, *(*(a1 + 32) + 40));
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 8 * a2);
  *(v9 + 8 * a2) = v8;
  v11 = v8;

  objc_msgSend_setAggregates_(v11, v12, *(*(a1 + 32) + 448), v13);
}

void sub_221153170(_Unwind_Exception *a1)
{
  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_2211531C0(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_22107C148();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_2210874C4(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

void sub_2211539C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, TSUIndexSet *a12, void *__p, uint64_t a14, uint64_t a15, void *__pa)
{
  if (__pa)
  {
    operator delete(__pa);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_221153A98(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_22115A08C(a1, a2);
  }

  else
  {
    sub_22115A034(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

id *sub_2211543D8(id *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v9 = a3;
  if (*(result + 40) >= 2u)
  {
    v4 = result;
    v5 = 1;
    do
    {
      v6 = sub_2211A8E7C(&v8, v5, a3, a4);
      result = objc_msgSend_addUUID_(v4[4], v7, v6, v7, v8, v9);
      ++v5;
    }

    while (v5 < *(v4 + 40));
  }

  return result;
}

void sub_221156CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSUIndexSet::~TSUIndexSet(&a9);

  TSUIndexSet::~TSUIndexSet(v10);
  _Unwind_Resume(a1);
}

void sub_221156FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22115767C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2211576E4(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    sub_22115A320(result, a2 - v2);
  }
}

void sub_221157A18(_Unwind_Exception *a1, TSUIndexSet *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v23 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);

  TSUIndexSet::~TSUIndexSet(va);
  sub_221087B80(va1);
  v22 = *(v20 - 112);
  if (v22)
  {
    *(v20 - 104) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void *sub_221157CEC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v11[0] = objc_msgSend_columnUIDForColumnIndex_(*(a1 + 32), a2, a2, a4);
  v11[1] = v6;
  result = objc_msgSend_columnGroupLevelForColumnUID_(*(a1 + 40), v6, v11, v7);
  if (result != *(a1 + 56))
  {
    return objc_msgSend_addIndex_(*(a1 + 48), v9, v4, v10);
  }

  return result;
}

void *sub_221157EE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v11[0] = objc_msgSend_rowUIDForRowIndex_(*(a1 + 32), a2, a2, a4);
  v11[1] = v6;
  result = objc_msgSend_rowGroupLevelForRowUID_(*(a1 + 40), v6, v11, v7);
  if (result != *(a1 + 56))
  {
    return objc_msgSend_addIndex_(*(a1 + 48), v9, v4, v10);
  }

  return result;
}

void *sub_2211580F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  result = objc_msgSend_aggregateIndexForColumnIndex_(*(a1 + 32), a2, a2, a4);
  if (result != *(a1 + 48))
  {
    v9 = *(a1 + 40);

    return objc_msgSend_addIndex_(v9, v7, v4, v8);
  }

  return result;
}

void *sub_22115830C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  result = objc_msgSend_aggregateIndexForRowIndex_(*(a1 + 32), a2, a2, a4);
  if (result != *(a1 + 48))
  {
    v9 = *(a1 + 40);

    return objc_msgSend_addIndex_(v9, v7, v5, v8);
  }

  return result;
}

void sub_221158A6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = objc_msgSend_groupUid(v3, v5, v6, v7);
  v13 = objc_msgSend_columnIndexForColumnUID_(v4, v9, v8, v9);
  if (*(a1 + 72) == 1)
  {
    v14 = *(a1 + 40);
    v21[0] = objc_msgSend_groupUid(v3, v10, v11, v12);
    v21[1] = v15;
    isColumnGroupUIDCollapsed = objc_msgSend_isColumnGroupUIDCollapsed_(v14, v15, v21, v16);
  }

  else
  {
    isColumnGroupUIDCollapsed = 0;
  }

  if (v13 != 0x7FFF && (isColumnGroupUIDCollapsed & 1) == 0)
  {
    objc_msgSend_addIndex_(*(a1 + 48), v10, v13, v12);
    if (*(*(a1 + 56) + 464) == 1)
    {
      v20 = v13 + *(a1 + 64);
      while (1)
      {
        LOWORD(v13) = v13 + 1;
        if (v13 >= v20)
        {
          break;
        }

        objc_msgSend_addIndex_(*(a1 + 48), v18, v13, v19);
      }
    }
  }
}

void sub_221158B64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = objc_msgSend_groupUid(v3, v5, v6, v7);
  v13 = objc_msgSend_rowIndexForRowUID_(v4, v9, v8, v9);
  if (*(a1 + 72) == 1)
  {
    v14 = *(a1 + 40);
    v23[0] = objc_msgSend_groupUid(v3, v10, v11, v12);
    v23[1] = v15;
    isRowGroupUIDCollapsed = objc_msgSend_isRowGroupUIDCollapsed_(v14, v15, v23, v16);
  }

  else
  {
    isRowGroupUIDCollapsed = 0;
  }

  if (v13 != 0x7FFFFFFF && (isRowGroupUIDCollapsed & 1) == 0)
  {
    objc_msgSend_addIndex_(*(a1 + 48), v10, v13, v12);
    if (!*(*(a1 + 56) + 464))
    {
      v20 = v13 + *(a1 + 64);
      for (i = v13 + 1; i < v20; i = v22)
      {
        v22 = i + 1;
        objc_msgSend_addIndex_(*(a1 + 48), v18, i, v19);
      }
    }
  }
}

void *sub_221159600(void *result, unint64_t a2, id *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (a2 <= (v6 - v7) >> 3)
  {
    if (a2)
    {
      v12 = 8 * a2;
      v13 = &v7[a2];
      do
      {
        result = *a3;
        *v7++ = result;
        v12 -= 8;
      }

      while (v12);
      v7 = v13;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = v7 - *result;
    v9 = a2 + (v8 >> 3);
    if (v9 >> 61)
    {
      sub_22107C148();
    }

    v10 = v6 - *result;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v17[4] = result;
    if (v11)
    {
      sub_22107C1F0(result, v11);
    }

    v14 = (8 * (v8 >> 3));
    v17[0] = 0;
    v17[1] = v14;
    v17[3] = 0;
    v15 = 8 * a2;
    v16 = &v14[a2];
    do
    {
      *v14++ = *a3;
      v15 -= 8;
    }

    while (v15);
    v17[2] = v16;
    sub_22107C098(v5, v17);
    return sub_22107C26C(v17);
  }

  return result;
}

void sub_221159714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_221159728(uint64_t result)
{
  if (*(result + 24))
  {
    sub_221159784(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void sub_221159784(uint64_t a1, id *a2)
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

void *sub_2211597C8(void *a1, void *a2, _OWORD *a3, uint64_t *a4)
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

void sub_221159A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221159A40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_221159A40(uint64_t a1)
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

void sub_221159A8C(uint64_t result)
{
  if (*(result + 24))
  {
    sub_221159AE8(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void sub_221159AE8(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        v2[5] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_221159B34(void *a1, void *a2, uint64_t a3, _OWORD **a4)
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