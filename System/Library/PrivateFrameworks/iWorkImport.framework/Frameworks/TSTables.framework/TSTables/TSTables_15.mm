void sub_2213BCA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2213BCC10(id *a1)
{

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2213BCC4C(id *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

double sub_2213BCC9C(__n128 a1, double a2)
{
  if (a1.n128_f64[0] < 1.0 || a2 < 0.0)
  {
    sub_22137A674("chdtrc", 1);
    return 0.0;
  }

  else
  {
    a1.n128_f64[0] = a1.n128_f64[0] * 0.5;
    v3 = a2 * 0.5;

    return sub_2213BCD48(a1, v3);
  }
}

double sub_2213BCCF4(double a1, double a2)
{
  if (a1 >= 1.0 && (a2 >= 0.0 ? (v2 = a2 <= 1.0) : (v2 = 0), v2))
  {
    v3 = sub_2211F2F2C(a1 * 0.5, a2);
    return v3 + v3;
  }

  else
  {
    sub_22137A674("chdtri", 1);
    return 0.0;
  }
}

double sub_2213BCD48(__n128 a1, double a2)
{
  v3 = 1.0;
  if (a1.n128_f64[0] > 0.0 && a2 > 0.0)
  {
    v4 = a1.n128_f64[0];
    if (a2 < 1.0 || a2 < a1.n128_f64[0])
    {
      return 1.0 - sub_2213BCEA8(a1, a2);
    }

    else
    {
      v6 = -(a2 - a1.n128_f64[0] * log(a2));
      v7 = v6 - sub_221289DC8(v4);
      v3 = 0.0;
      if (v7 >= -*&qword_27CFB4C58)
      {
        v8 = 1.0 - v4;
        v9 = 1.0 - v4 + a2 + 1.0;
        v10 = a2 + 1.0;
        v11 = v9 * a2;
        v12 = (a2 + 1.0) / (v9 * a2);
        v13 = 0.0;
        v14 = 1.0;
        do
        {
          v13 = v13 + 1.0;
          v8 = v8 + 1.0;
          v9 = v9 + 2.0;
          v15 = v10 * v9 - v14 * (v13 * v8);
          v16 = v11 * v9 - a2 * (v13 * v8);
          if (v16 == 0.0)
          {
            v17 = 1.0;
          }

          else
          {
            v17 = fabs((v12 - v15 / v16) / (v15 / v16));
            v12 = v15 / v16;
          }

          if (fabs(v15) > 4.50359963e15)
          {
            v10 = v10 * 2.22044605e-16;
            v15 = v15 * 2.22044605e-16;
            v11 = v11 * 2.22044605e-16;
            v16 = v16 * 2.22044605e-16;
          }

          a2 = v11;
          v14 = v10;
          v10 = v15;
          v11 = v16;
        }

        while (v17 > *&qword_27CFB4C50);
        return exp(v7) * v12;
      }
    }
  }

  return v3;
}

double sub_2213BCEA8(__n128 a1, double a2)
{
  v2 = 0.0;
  if (a1.n128_f64[0] > 0.0 && a2 > 0.0)
  {
    v4 = a1.n128_f64[0];
    if (a2 <= 1.0 || a2 <= a1.n128_f64[0])
    {
      v6 = -(a2 - a1.n128_f64[0] * log(a2));
      v7 = v6 - sub_221289DC8(v4);
      if (v7 >= -*&qword_27CFB4C58)
      {
        v8 = 1.0;
        v9 = 1.0;
        v10 = v4;
        do
        {
          v10 = v10 + 1.0;
          v9 = v9 * (a2 / v10);
          v8 = v8 + v9;
        }

        while (v9 / v8 > *&qword_27CFB4C50);
        return exp(v7) * v8 / v4;
      }
    }

    else
    {
      return 1.0 - sub_2213BCD48(a1, a2);
    }
  }

  return v2;
}

void sub_2213BD3D8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSCEFormulaOwnerDependencies;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_2213BEC40(uint64_t a1, void *a2)
{
  v11 = a2;
  v6 = objc_msgSend_key(v11, v3, v4, v5);
  v9 = objc_msgSend_copyWithContext_(v11, v7, *(a1 + 40), v8);
  objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 32), v10, v9, v6);
}

void sub_2213BF684(uint64_t a1, unint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (HIDWORD(a2))
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Bad key during split enumeration!", "[TSTTableDataListSegment split]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 123);
    v12 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableDataListSegment split]_block_invoke", v14);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v15, v18, 123, 1, "Bad key during split enumeration!");

    TSUCrashBreakpoint();
    abort();
  }

  v20 = a2;
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4);
  objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 40), v8, v7, a2);
  *(*(a1 + 32) + 112) -= objc_msgSend_byteSizeForArchiving(v7, v9, v10, v11);
  sub_221387BB4((*(a1 + 32) + 64), &v20);
  if (*(*(a1 + 32) + 112) <= 0x2000000uLL)
  {
    *a3 = 1;
  }
}

void sub_2213BFDD4(uint64_t a1, void *a2)
{
  v8 = a2;
  v6 = objc_msgSend_key(v8, v3, v4, v5);
  objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 32), v7, v8, v6);
}

void sub_2213C006C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v14 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4);
  v6 = *(a1 + 48);
  v7 = *(v6 + 40);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *(v6 + 32);
  v9 = *v7;
  if (v8 < *v7)
  {
    *(v6 + 32) = v8 + 1;
    objc_msgSend_encodeToArchive_archiver_(v14, v5, *&v7[2 * v8 + 2], *(a1 + 40));
    goto LABEL_8;
  }

  if (v9 == *(v6 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 24));
    v7 = *(v6 + 40);
    v9 = *v7;
  }

  *v7 = v9 + 1;
  v10 = google::protobuf::Arena::CreateMaybeMessage<TST::TableDataList_ListEntry>(*(v6 + 24));
  v11 = *(v6 + 32);
  v12 = *(v6 + 40) + 8 * v11;
  *(v6 + 32) = v11 + 1;
  *(v12 + 8) = v10;
  objc_msgSend_encodeToArchive_archiver_(v14, v13, v10, *(a1 + 40));
LABEL_8:
}

void sub_2213C0318(uint64_t a1, void *a2)
{
  v8 = a2;
  v6 = objc_msgSend_key(v8, v3, v4, v5);
  objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 32), v7, v8, v6);
}

void sub_2213C044C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v14 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4);
  v6 = *(a1 + 48);
  v7 = *(v6 + 40);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *(v6 + 32);
  v9 = *v7;
  if (v8 < *v7)
  {
    *(v6 + 32) = v8 + 1;
    objc_msgSend_encodeToArchive_archiver_(v14, v5, *&v7[2 * v8 + 2], *(a1 + 40));
    goto LABEL_8;
  }

  if (v9 == *(v6 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 24));
    v7 = *(v6 + 40);
    v9 = *v7;
  }

  *v7 = v9 + 1;
  v10 = google::protobuf::Arena::CreateMaybeMessage<TST::TableDataList_ListEntry>(*(v6 + 24));
  v11 = *(v6 + 32);
  v12 = *(v6 + 40) + 8 * v11;
  *(v6 + 32) = v11 + 1;
  *(v12 + 8) = v10;
  objc_msgSend_encodeToArchive_archiver_(v14, v13, v10, *(a1 + 40));
LABEL_8:
}

uint64_t *sub_2213C0608(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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
      v7 = v4 % v5.i32[0];
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

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_2213C0858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

void (**sub_2213C10A0(uint64_t a1))(void)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[2]();
    v1 = vars8;
  }

  return v2;
}

void (**sub_2213C12BC(uint64_t a1))(void)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[2]();
    v1 = vars8;
  }

  return v2;
}

void sub_2213C1714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, void *a32, uint64_t a33, void *__p, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  v40 = *(v38 - 128);
  if (v40)
  {
    *(v38 - 120) = v40;
    operator delete(v40);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_2213C17D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v15 = objc_msgSend_regionFromRange_(TSTCellRegion, v11, a2, a3);
  v16 = *(a1 + 32);
  v17 = v16[2];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = sub_2213C1AD4;
  v45[4] = sub_2213C1AE4;
  v46 = 0;
  if (v17)
  {
    v18 = objc_msgSend_flags(v16, v12, v13, v14);
    v19 = *(a1 + 32);
    v20 = *(v19 + 72);
    v21 = *(v19 + 80);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_2213C1AEC;
    v41[3] = &unk_278464278;
    v44 = v45;
    v43 = *(a1 + 40);
    v42 = v9;
    objc_msgSend_iterateCellsInRegion_flags_searchFlags_clampingRange_usingBlock_(v17, v22, v15, v18, a5, v20, v21, v41);
  }

  else
  {
    v23 = [TSTCellIterator alloc];
    v24 = *(a1 + 32);
    v25 = v24[3];
    v29 = objc_msgSend_flags(v24, v26, v27, v28);
    v31 = objc_msgSend_initWithTableModel_baseRegion_flags_searchFlags_baseClampingRange_(v23, v30, v25, v15, v29, a5, *(*(a1 + 32) + 72), *(*(a1 + 32) + 80));
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_2213C1B7C;
    v37[3] = &unk_278464278;
    v40 = v45;
    v39 = *(a1 + 40);
    v38 = v9;
    objc_msgSend_iterateCellsUsingBlock_(v31, v32, v37, v33);
    objc_msgSend_terminate(v31, v34, v35, v36);
  }

  _Block_object_dispose(v45, 8);

  objc_autoreleasePoolPop(v10);
}

void sub_2213C1A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2213C1AD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2213C1AEC(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_2213C1B7C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_2213C1C0C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_pointerAtIndex_(*(*(a1 + 32) + 48), a2, a2, a4);
  v7 = *(a1 + 40);
  if (a2 >= (*(*(a1 + 56) + 8) - **(a1 + 56)) >> 4)
  {
    if (v7)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3321888768;
      v16[2] = sub_2213C1E88;
      v16[3] = &unk_2834A7100;
      v18 = *(a1 + 48);
      __p = 0;
      v20 = 0;
      v21 = 0;
      sub_22116C9DC(&__p, *(a1 + 64), *(a1 + 72), (*(a1 + 72) - *(a1 + 64)) >> 4);
      v13 = *(a1 + 56);
      v22 = a2;
      v23 = v13;
      v14 = v6;
      v15 = *(a1 + 88);
      v17 = v14;
      v24 = v15;
      (*(v7 + 16))(v7, v16);
      v12 = &v18;

      if (__p)
      {
        v20 = __p;
        operator delete(__p);
      }

      goto LABEL_7;
    }

LABEL_8:
    (*(*(a1 + 48) + 16))();
    goto LABEL_9;
  }

  if (!v7)
  {
    goto LABEL_8;
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_2213C1E5C;
  v25[3] = &unk_2784642C8;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v28[0] = v8;
  v28[1] = v9;
  v28[2] = a2;
  v10 = v6;
  v11 = *(a1 + 32);
  v26 = v10;
  v27 = v11;
  (*(v7 + 16))(v7, v25);
  v12 = v28;

LABEL_7:
LABEL_9:
}

void sub_2213C1E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2213C1EBC(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v2 = (a1 + 48);
  v2[2] = 0;
  return sub_22116C9DC(v2, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 4);
}

void sub_2213C1ED8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t *sub_2213C1EF0(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v2 = (a1 + 64);
  v2[2] = 0;
  return sub_22116C9DC(v2, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 4);
}

void sub_2213C1F0C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }
}

void sub_2213C1F24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_pointerAtIndex_(*(*(a1 + 32) + 48), a2, a2, a4);
  (*(*(a1 + 40) + 16))();
}

void sub_2213C25BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  sub_2210BC30C(&a13);
  sub_22109DBB8(&__p);

  _Unwind_Resume(a1);
}

void sub_2213C2660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2210BC30C(va);
  _Unwind_Resume(a1);
}

void sub_2213C2AC4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2213C2C30(_Unwind_Exception *a1, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2212BC8D4(&a9, a2);

  _Unwind_Resume(a1);
}

void *sub_2213C3030(void *result, unint64_t a2)
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

void sub_2213C30AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_2213C34EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  a10 = &a16;
  sub_2210BC30C(&a10);
  _Unwind_Resume(a1);
}

void sub_2213C36B8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2213C3B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a16 = v17 - 136;
  sub_2210BC30C(&a16);
  a16 = v17 - 112;
  sub_2210BC30C(&a16);

  _Unwind_Resume(a1);
}

void sub_2213C3CEC(uint64_t a1)
{
  *a1 = &unk_2834A3EA8;

  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 184);
  if (v3)
  {
    *(a1 + 192) = v3;
    operator delete(v3);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v4);
}

void sub_2213C3D6C(uint64_t a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_2213C3EDC(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_2210BC8C4(a1, v10);
    }

    sub_22107C148();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    sub_2213C3F48(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 48;
        sub_2210BC394(a1, v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_2213C3F48(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = sub_2210BC910(a1, a2 + v11, a3, *(a1 + 8));
  }
}

void sub_2213C3EDC(char **a1)
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
        v3 -= 48;
        sub_2210BC394(a1, v3);
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

char **sub_2213C3F48(int a1, char **a2, char **a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_2210BD068(a4, *v5, v5[1], (v5[1] - *v5) >> 4);
        sub_2210BD068(a4 + 3, v5[3], v5[4], (v5[4] - v5[3]) >> 4);
      }

      v5 += 6;
      a4 += 6;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *sub_2213C3FCC(uint64_t *a1, uint64_t *a2, char **a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 4)) >= a5)
      {
        v18 = 3 * a5;
        sub_2213C41C8(a1, a2, a1[1], &a2[6 * a5]);
        v17 = &v7[2 * v18];
      }

      else
      {
        a1[1] = sub_2212D83F0(a1, a3 + v16, a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        sub_2213C41C8(a1, v5, v10, &v5[6 * a5]);
        v17 = (v7 + v16);
      }

      sub_2213C3F48(v23, v7, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
    if (v12 > 0x555555555555555)
    {
      sub_22107C148();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x2AAAAAAAAAAAAAALL)
    {
      v15 = 0x555555555555555;
    }

    else
    {
      v15 = v12;
    }

    v26 = a1;
    if (v15)
    {
      sub_2210BC5FC(a1, v15);
    }

    v19 = (16 * (v13 >> 4));
    v23[0] = 0;
    v23[1] = v19;
    v24 = v19;
    v25 = 0;
    v20 = &v19[48 * a5];
    v21 = 48 * a5;
    do
    {
      sub_2212D82F0(v26, v19, v7);
      v19 += 48;
      v7 += 6;
      v21 -= 48;
    }

    while (v21);
    v24 = v20;
    v5 = sub_2213C4268(a1, v23, v5);
    sub_2210BC7C0(v23);
  }

  return v5;
}

uint64_t sub_2213C41C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v9;
      v8[2] = *(v9 + 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      v8[3] = 0;
      v8[4] = 0;
      v8[5] = 0;
      *(v8 + 3) = *(v9 + 24);
      v8[5] = *(v9 + 40);
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      v9 += 48;
      v8 += 6;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_2213C4324(&v11, a2, v7, v6);
}

uint64_t sub_2213C4268(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  sub_2210BC654(a1, a3, a1[1], *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  sub_2210BC654(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = a1[1];
  a1[1] = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = a1[2];
  a1[2] = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_2213C4324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      sub_2213C43A8(a4 - 48, (v7 - 48));
      sub_2213C43A8(a4 - 24, (v7 - 24));
      a4 -= 48;
      v7 -= 48;
    }

    while (v7 != a2);
  }

  return a3;
}

__n128 sub_2213C43A8(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_2213C4808(uint64_t a1)
{
  sub_22123ACF4((*(a1 + 32) + 32), (*(a1 + 40) + 48));
  sub_22123ACF4((*(a1 + 32) + 8), (*(a1 + 40) + 24));
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(v5 + 80);
  v8 = *(v5 + 88);
  v18 = (v6 + 88);
  if (v7 != v8)
  {
    do
    {
      sub_2212895B0(&v18, v7++);
    }

    while (v7 != v8);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
  }

  v9 = *(v5 + 56);
  v10 = *(v5 + 64);
  v18 = (v6 + 72);
  if (v9 != v10)
  {
    do
    {
      sub_2212895B0(&v18, v9++);
    }

    while (v9 != v10);
    v5 = *(a1 + 32);
  }

  if (objc_msgSend_count(*(v5 + 104), v2, v3, v4))
  {
    v14 = objc_msgSend_UIDLookupList(*(*(a1 + 32) + 104), v11, v12, v13);
    v15 = *(a1 + 40);
    *(v15 + 16) |= 1u;
    v16 = *(v15 + 104);
    if (!v16)
    {
      v17 = *(v15 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDLookupListArchive>(v17);
      *(v15 + 104) = v16;
    }

    sub_22137B574(v14, v16);
  }
}

void *sub_2213C4C6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 32) + 104);
  v6 = objc_msgSend_count(v5, a2, a3, a4);
  result = objc_msgSend_reserve_(v5, v7, v6 + ((*(*(a1 + 40) + 8) - **(a1 + 40)) >> 5), v8);
  v12 = *(a1 + 40);
  v13 = *v12;
  v14 = v12[1];
  while (v13 != v14)
  {
    result = objc_msgSend_addCellUID_(*(*(a1 + 32) + 104), v10, v13, v11);
    v13 += 32;
  }

  return result;
}

void *sub_2213C4D58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 32) + 104);
  v6 = objc_msgSend_count(v5, a2, a3, a4);
  result = objc_msgSend_reserve_(v5, v7, v6 + ((*(*(a1 + 40) + 32) - *(*(a1 + 40) + 24)) >> 4) * ((*(*(a1 + 40) + 8) - **(a1 + 40)) >> 4), v8);
  v10 = *(a1 + 40);
  v11 = *(v10 + 24);
  v12 = *(v10 + 32);
  while (v11 != v12)
  {
    v13 = *(a1 + 40);
    v14 = *v13;
    v15 = v13[1];
    while (v14 != v15)
    {
      v16 = *(*(a1 + 32) + 104);
      v14 += 16;
      TSTMakeCellUID(v19);
      result = objc_msgSend_addCellUID_(v16, v17, v19, v18);
    }

    v11 += 16;
  }

  return result;
}

uint64_t sub_2213C4F24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 32) + 104);
  v6 = objc_msgSend_count(v5, a2, a3, a4);
  objc_msgSend_reserve_(v5, v7, *(a1 + 48) + v6, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2213C4FCC;
  v13[3] = &unk_278464318;
  v9 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = *(a1 + 56);
  return objc_msgSend_enumerateCellIDsUsingBlock_(v9, v10, v13, v11);
}

uint64_t sub_2213C4FCC(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 104);
  TSTMakeCellUID(v6);
  return objc_msgSend_addCellUID_(v2, v3, v6, v4);
}

void sub_2213C5468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (a35)
  {
    operator delete(a35);
  }

  _Block_object_dispose(&a38, 8);
  if (a44)
  {
    a45 = a44;
    operator delete(a44);
  }

  _Block_object_dispose(&a47, 8);
  if (a53)
  {
    a54 = a53;
    operator delete(a53);
  }

  sub_2210BC9F8(v55 - 216, *(v55 - 208));
  sub_2210BC9F8(v55 - 192, *(v55 - 184));
  _Block_object_dispose((v55 - 112), 8);
  _Block_object_dispose((v55 - 80), 8);
  _Unwind_Resume(a1);
}

void *sub_2213C5560(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_count(*(a1[4] + 104), a2, a3, a4);
  *(*(a1[5] + 8) + 24) = result;
  *(*(a1[6] + 8) + 24) = *(*(a1[5] + 8) + 24) == 0;
  return result;
}

__n128 sub_2213C55B4(__n128 *a1, __n128 *a2)
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

void sub_2213C55D8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2213C55F0(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  v5 = v3[1];
  v3[1] = v4[6];
  v4[6] = v5;
  v6 = v3[2];
  v3[2] = v4[7];
  v4[7] = v6;
  v7 = v3[3];
  v3[3] = v4[8];
  v4[8] = v7;
  v8 = *(a1 + 32);
  v9 = *(*(a1 + 48) + 8);
  v10 = v8[4];
  v8[4] = v9[6];
  v9[6] = v10;
  v11 = v8[5];
  v8[5] = v9[7];
  v9[7] = v11;
  v12 = v8[6];
  v8[6] = v9[8];
  v9[8] = v12;
  *(*(a1 + 32) + 64) = *(*(a1 + 32) + 56);
  *(*(a1 + 32) + 88) = *(*(a1 + 32) + 80);
  objc_msgSend_compressUIDIndexListFrom_withUIDCount_to_(*(a1 + 32), a2, a1 + 56, (*(*(a1 + 32) + 16) - *(*(a1 + 32) + 8)) >> 4, *(a1 + 32) + 56);
  objc_msgSend_compressUIDIndexListFrom_withUIDCount_to_(*(a1 + 32), v13, a1 + 80, (*(*(a1 + 32) + 40) - *(*(a1 + 32) + 32)) >> 4, *(a1 + 32) + 80);
  *(*(a1 + 32) + 112) = *(a1 + 104);
  v14 = objc_opt_new();
  v15 = *(a1 + 32);
  v16 = *(v15 + 104);
  *(v15 + 104) = v14;
}

uint64_t *sub_2213C5708(uint64_t *a1, uint64_t a2)
{
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  sub_2212A44A0(a1 + 7, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  return sub_2212A44A0(a1 + 10, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
}

void sub_2213C5774(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_2213C5790(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;

    operator delete(v3);
  }
}

void sub_2213C5D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2213C5E68(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5 != v6)
  {
    sub_2210BD068(v5 + 1, *(v6 + 8), *(v6 + 16), (*(v6 + 16) - *(v6 + 8)) >> 4);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
  }

  if (v5 != v6)
  {
    sub_2210BD068(v5 + 4, *(v6 + 32), *(v6 + 40), (*(v6 + 40) - *(v6 + 32)) >> 4);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
  }

  if (v5 != v6)
  {
    sub_22137BB5C(v5 + 7, *(v6 + 56), *(v6 + 64), (*(v6 + 64) - *(v6 + 56)) >> 2);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
  }

  if (v5 != v6)
  {
    sub_22137BB5C(v5 + 10, *(v6 + 80), *(v6 + 88), (*(v6 + 88) - *(v6 + 80)) >> 2);
    v6 = *(a1 + 40);
  }

  v7 = objc_msgSend_copy(*(v6 + 104), a2, a3, a4);
  v8 = *(a1 + 32);
  v9 = *(v8 + 104);
  *(v8 + 104) = v7;

  *(*(a1 + 32) + 112) = *(*(a1 + 40) + 112);
}

int64x2_t sub_2213C63C8(int64x2_t *a1, _OWORD *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_2213C6A80(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 >> 8));
  v7 = *v6 + 16 * v4;
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 16) = *a2;
  result = vaddq_s64(a1[2], xmmword_2217E1930);
  a1[2] = result;
  return result;
}

void sub_2213C66E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_2213C6704(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

double sub_2213C6714(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_msgSend__nextCellUID_NoDispatch(v5, a2, a3, a4);
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v6 = *(*(a1 + 40) + 8);
  result = *&v8;
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  return result;
}

void sub_2213C6840(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  do
  {
    v5 = a1[4];
    if (!v5)
    {
      break;
    }

    objc_msgSend__nextCellUID_NoDispatch(v5, a2, a3, a4);
    if (0 == 0)
    {
      break;
    }

    v6 = a1[5];
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    if (v7 >= v8)
    {
      v10 = (v7 - *v6) >> 5;
      v11 = v10 + 1;
      if ((v10 + 1) >> 59)
      {
        sub_22107C148();
      }

      v12 = v8 - *v6;
      if (v12 >> 4 > v11)
      {
        v11 = v12 >> 4;
      }

      v13 = v12 >= 0x7FFFFFFFFFFFFFE0 ? 0x7FFFFFFFFFFFFFFLL : v11;
      if (v13)
      {
        sub_221087FE8(a1[5], v13);
      }

      v14 = (32 * v10);
      *v14 = 0u;
      v14[1] = 0u;
      v9 = 32 * v10 + 32;
      v15 = *(v6 + 8) - *v6;
      v16 = 32 * v10 - v15;
      memcpy(v14 - v15, *v6, v15);
      v17 = *v6;
      *v6 = v16;
      *(v6 + 8) = v9;
      *(v6 + 16) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v7 = 0u;
      v7[1] = 0u;
      v9 = (v7 + 2);
    }

    *(v6 + 8) = v9;
  }

  while (a1[6] > ((*(a1[5] + 8) - *a1[5]) >> 5));
}

void sub_2213C6A80(const void **a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v1) - 1;
  }

  v5 = a1[4];
  if (v4 - &v5[a1[5]] < 0x100)
  {
    v6 = a1[3];
    v7 = *a1;
    v8 = v6 - *a1;
    if (v3 < v8)
    {
      if (v1 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v10[4] = a1;
    sub_221122DC8(a1, v9);
  }

  a1[4] = v5 + 256;
  v10[0] = *(v2 - 1);
  a1[2] = v2 - 8;
  sub_2213C6CC8(a1, v10);
}

void sub_2213C6C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2213C6CC8(const void **a1, void *a2)
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

      sub_221122DC8(a1, v9);
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

void sub_2213C6DD4(unint64_t *a1, void *a2)
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

      sub_221122DC8(a1, v11);
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

uint64_t sub_2213C6EDC(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x100)
  {
    a2 = 1;
  }

  if (v5 < 0x200)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t sub_2213C6F4C(void *a1)
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
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
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

void sub_2213CE784(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2213CE87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2213CEEE0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

unint64_t sub_2213CF1FC(unint64_t a1, unint64_t a2)
{
  v2 = a1 >= a2;
  result = a1 - a2;
  if (!v2)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Tile ID too low for this group!", "NSUInteger _indexForTileID(TSTTableTileID, TSTTableTileID)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileGroup.mm", 21);
    v4 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "NSUInteger _indexForTileID(TSTTableTileID, TSTTableTileID)", v6);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileGroup.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v7, v10, 21, 1, "Tile ID too low for this group!");
    goto LABEL_5;
  }

  if (result >= 0x100)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Tile ID too high for this group!", "NSUInteger _indexForTileID(TSTTableTileID, TSTTableTileID)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileGroup.mm", 24);
    v12 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "NSUInteger _indexForTileID(TSTTableTileID, TSTTableTileID)", v14);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileGroup.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v7, v10, 24, 1, "Tile ID too high for this group!");
LABEL_5:

    TSUCrashBreakpoint();
    abort();
  }

  return result;
}

void sub_2213CF64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  objc_sync_exit(v20);

  _Unwind_Resume(a1);
}

void sub_2213CF7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_2213D0BD4(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2213D0CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2213D0FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213D0FD8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_count(v7, v4, v5, v6);
}

id sub_2213D1224(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v8 = objc_msgSend_year(v4, v5, v6, v7);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v3[6];
  }

  else
  {
    v9 = sub_2213D1894(v3 + 1, v8);
  }

  v10 = v9;

  return v10;
}

void sub_2213D1524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2213D1544(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2213D155C(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a2;
  v4 = a3;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v8 = objc_msgSend_setWithSet_(MEMORY[0x277CBEB58], v6, v4, v7);
  sub_2213D44B0((v5 + 8), &v9, &v9, &v8);
}

void sub_2213D17A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213D17F0(uint64_t a1, unint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v7 = sub_2213D1894((*(a1 + 32) + 8), a2);
  if ((objc_msgSend_isEqualToSet_(v10, v8, v7, v9) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

id sub_2213D1894(void *a1, unint64_t a2)
{
  v7 = 0;
  v8 = a2;
  v3 = sub_2210BE30C(a1, &v8);
  if (v3)
  {
    v4 = v3[3];
    v7 = v4;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    sub_2213D423C(a1, &v8, &v8, &v7);
    v4 = v7;
  }

  v5 = v4;

  return v5;
}

void sub_2213D1DA4(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = a3;
  v5 = sub_2213D1894((*(a1 + 32) + 8), a2);
  objc_msgSend_unionSet_(v5, v6, v8, v7);
}

void sub_2213D1EF0(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = a3;
  v5 = sub_2213D1894((*(a1 + 32) + 8), a2);
  objc_msgSend_minusSet_(v5, v6, v8, v7);
}

void sub_2213D2114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_2213D2144(uint64_t a1, unint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v7 = sub_2213D1894((*(a1 + 32) + 8), a2);
  if ((objc_msgSend_isSubsetOfSet_(v10, v8, v7, v9) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_2213D23AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213D23F8(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = a3;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v18, v22, 16);
  if (v11)
  {
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = objc_msgSend_symbol(*(*(&v18 + 1) + 8 * i), v8, v9, v10, v18);
        isEqualToString = objc_msgSend_isEqualToString_(v14, v15, *(a1 + 32), v16);

        if (isEqualToString)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v18, v22, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_2213D2608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_2213D2620(uint64_t a1, const char *a2, void *a3, _BYTE *a4)
{
  result = objc_msgSend_count(a3, a2, a3, a4);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_2213D27E4(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v7 = objc_msgSend_allObjects(a3, a2, a3, a4);
  objc_msgSend_addObjectsFromArray_(v4, v5, v7, v6);
}

void sub_2213D2984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2213D29A4(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v7 = objc_msgSend_allObjects(a3, a2, a3, a4);
  objc_msgSend_addObjectsFromArray_(v4, v5, v7, v6);
}

void sub_2213D2DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2213D2DD4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v7 = objc_msgSend_symbol(a2, a2, a3, a4);
  objc_msgSend_addObject_(v4, v5, v7, v6);
}

void sub_2213D3024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2213D3044(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a2;
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6, v7))
  {
    v10 = *(*(*(a1 + 32) + 8) + 40);
    v11 = objc_msgSend_setWithSet_(MEMORY[0x277CBEB58], v8, v4, v9);
    sub_2213D44B0((v10 + 8), &v12, &v12, &v11);
  }
}

void sub_2213D32A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2213D3428(uint64_t a1, unint64_t a2, void *a3)
{
  v13 = a3;
  if (objc_msgSend_containsIndex_(*(a1 + 32), v5, a2, v6))
  {
    v10 = sub_2213D1894((*(a1 + 40) + 8), a2);
    objc_msgSend_intersectSet_(v13, v11, v10, v12);
  }

  else
  {
    objc_msgSend_removeAllObjects(v13, v7, v8, v9);
  }
}

void sub_2213D35E4(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = a3;
  v6 = sub_2213D1894((*(a1 + 32) + 8), a2);
  if (v6)
  {
    objc_msgSend_minusSet_(v8, v5, v6, v7);
  }
}

uint64_t sub_2213D37D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_symbol(a2, a2, a3, a4);
  LODWORD(v4) = objc_msgSend_containsObject_(v4, v6, v5, v7);

  return v4 ^ 1;
}

void sub_2213D3A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);

  _Unwind_Resume(a1);
}

void sub_2213D3AF4(void *a1, unint64_t a2, void *a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = sub_2213D1894((*(*(a1[5] + 8) + 40) + 8), a2);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v7;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v17, v21, 16);
  if (v11)
  {
    v12 = *v18;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v17 + 1) + 8 * v13);
      if ((*(a1[4] + 16))(a1[4]))
      {
        objc_msgSend_addObject_(v8, v15, v14, v16, v17);
      }

      if (*(*(a1[6] + 8) + 24))
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, &v17, v21, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

uint64_t sub_2213D3D94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_symbol(a2, a2, a3, a4);
  v8 = objc_msgSend_containsObject_(v4, v6, v5, v7);

  return v8;
}

uint64_t sub_2213D3EB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_symbol(a2, a2, a3, a4);
  isEqualToString = objc_msgSend_isEqualToString_(v5, v6, *(a1 + 32), v7);

  return isEqualToString;
}

void *sub_2213D423C(void *a1, unint64_t *a2, void *a3, id *a4)
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

void sub_2213D449C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

void *sub_2213D44B0(void *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
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

void sub_2213D4708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

void sub_2213D4E30()
{
  v0 = TSULogCreateCategory();
  v1 = TSTPencilCat_log_t;
  TSTPencilCat_log_t = v0;
}

void sub_2213D4FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_2210BDEC0(va);
  _Unwind_Resume(a1);
}

void sub_2213D5364()
{
  v0 = TSULogCreateCategory();
  v1 = TSTPencilCat_log_t;
  TSTPencilCat_log_t = v0;
}

void sub_2213D555C()
{
  v0 = TSULogCreateCategory();
  v1 = TSTPencilCat_log_t;
  TSTPencilCat_log_t = v0;
}

void sub_2213D5818()
{
  v0 = TSULogCreateCategory();
  v1 = TSTPencilCat_log_t;
  TSTPencilCat_log_t = v0;
}

void sub_2213D5F9C(uint64_t a1, void *a2)
{
  v21 = a2;
  v9 = objc_msgSend_table(v21, v3, v4, v5);
  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = objc_msgSend_table(v21, v6, v7, v8);

    if (v10 != v11)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTPencilAnnotationOwner enumerateAnnotationsWithBlock:]_block_invoke", v8);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 272, 0, "Unexpected table info on this annotation.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    }
  }

  objc_msgSend_setTable_(v21, v6, *(a1 + 32), v8);
  (*(*(a1 + 40) + 16))();
}

void sub_2213D62A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v27 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4);
  v12 = objc_msgSend_table(v27, v6, v7, v8);
  if (v12)
  {
    v13 = *(a1 + 40);
    v14 = objc_msgSend_table(v27, v9, v10, v11);

    if (v13 != v14)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTPencilAnnotationOwner _enumerateAnnotationsAndFormulasWithIndexes:block:]_block_invoke", v11);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 286, 0, "Unexpected table info on this annotation.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
    }
  }

  objc_msgSend_setTable_(v27, v9, *(a1 + 40), v11);
  v26 = objc_msgSend_formulaObjectAtIndex_(*(a1 + 48), v24, a2, v25);
  if (v26)
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_2213D6684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213D66C0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = objc_msgSend_uuid(a2, a2, a3, a4);
  LODWORD(v7) = objc_msgSend_isEqualToString_(v7, v9, v8, v10);

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_2213D68EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v34 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4);
  if (!v34)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTPencilAnnotationOwner _annotationsForIndexes:]_block_invoke", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 330, 0, "invalid nil value for '%{public}s'", "annotation");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v20 = objc_msgSend_table(v34, v5, v6, v7);
  if (v20)
  {
    v21 = *(a1 + 40);
    v22 = objc_msgSend_table(v34, v17, v18, v19);

    if (v21 != v22)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTPencilAnnotationOwner _annotationsForIndexes:]_block_invoke", v19);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 332, 0, "Unexpected table info on this annotation.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
    }
  }

  objc_msgSend_setTable_(v34, v17, *(a1 + 40), v19);
  objc_msgSend_addObject_(*(a1 + 48), v32, v34, v33);
}

uint64_t sub_2213D74A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2213D74BC(uint64_t a1, $925F2A0F20B28CD67DCCD182188DAC27 a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  numberOfColumns = a2.numberOfColumns;
  if (!a3)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], *&a2, "[TSTPencilAnnotationOwner _indexesForRows:]_block_invoke", a4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 437, 0, "How do we have a zero-row range here?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = numberOfColumns;
  LOWORD(a2.numberOfColumns) = *(a1 + 80);
  LOWORD(a2.numberOfRows) = v4;
  v28[0] = __C(v16, a2);
  v28[1] = v17;
  v29 = *(a1 + 48);
  v18 = *(a1 + 32);
  if (v18)
  {
    objc_msgSend_formulaCoordsReferringToRange_fromOwner_(v18, v17, v28, a1 + 64);
    v21 = v26;
    if (v26 != v27)
    {
      do
      {
        v22 = *(*(*(a1 + 40) + 8) + 40);
        v23 = objc_msgSend_indexFromCoord_(TSTFormulaStore, v19, v21, v20);
        objc_msgSend_addIndex_(v22, v24, v23, v25);
        v21 += 8;
      }

      while (v21 != v27);
      v21 = v26;
    }

    if (v21)
    {
      operator delete(v21);
    }
  }
}

void sub_2213D797C(uint64_t a1, TSUCellCoord a2, $925F2A0F20B28CD67DCCD182188DAC27 a3)
{
  v39[0] = __C(a2, a3);
  v39[1] = v6;
  v40 = *(a1 + 64);
  v7 = *(a1 + 32);
  if (v7)
  {
    objc_msgSend_formulaCoordsReferringToRange_fromOwner_(v7, v6, v39, a1 + 80);
    v10 = v37;
    v11 = v38;
    if (v37 != v38)
    {
      do
      {
        v12 = objc_msgSend_indexFromCoord_(TSTFormulaStore, v8, v10, v9);
        v16 = objc_msgSend_formulaStore(*(a1 + 40), v13, v14, v15);
        v18 = objc_msgSend_rangeFromFormulaAtIndex_useBoundingRange_(v16, v17, v12, 0);
        v20 = v19;

        v36.origin = v18;
        v36.size = v20;
        if (TSUCellRect::isSpanning(&v36))
        {
          v36.origin = v18;
          v36.size = v20;
          v24 = objc_msgSend_tableModel(*(a1 + 40), v21, v22, v23);
          v28 = objc_msgSend_range(v24, v25, v26, v27);
          v30 = v29;

          if (TSUCellRect::spansAllRows(&v36))
          {
            if ((v28 & 0xFFFF00000000) != 0x7FFF00000000 && v28 == 0x7FFFFFFF)
            {
              v32 = 0;
            }

            else
            {
              v32 = v28;
            }

            v36.origin.row = v32;
            v30 >>= 32;
            p_numberOfRows = &v36.size.numberOfRows;
          }

          else
          {
            v34 = HIDWORD(v28);
            if (v28 != 0x7FFFFFFF && (v28 & 0xFFFF00000000) == 0x7FFF00000000)
            {
              LOWORD(v34) = 0;
            }

            v36.origin.column = v34;
            p_numberOfRows = &v36.size;
          }

          p_numberOfRows->numberOfColumns = v30;
        }

        (*(*(a1 + 56) + 16))();
        v10 += 8;
      }

      while (v10 != v11);
      v10 = v37;
    }

    if (v10)
    {
      v38 = v10;
      operator delete(v10);
    }
  }
}

void sub_2213D7B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2213D7CA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a2;
  if (objc_msgSend_containsModelCellRect_(v17, v10, a5, a6))
  {
    v13 = *(*(*(a1 + 32) + 8) + 40);
    v14 = objc_msgSend_indexFromCoord_(TSTFormulaStore, v11, a3, v12);
    objc_msgSend_addIndex_(v13, v15, v14, v16);
  }
}

void sub_2213D7E94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, TSUCellCoord a5, $925F2A0F20B28CD67DCCD182188DAC27 a6)
{
  v10 = a2;
  if (objc_msgSend_intersectsModelCellRect_(v10, v11, *&a5, *&a6))
  {
    v18.origin = a5;
    v18.size = a6;
    if ((TSUCellRect::contains(&v18, (a1 + 40)) & 1) == 0)
    {
      v14 = *(*(*(a1 + 32) + 8) + 40);
      v15 = objc_msgSend_indexFromCoord_(TSTFormulaStore, v12, a3, v13);
      objc_msgSend_addIndex_(v14, v16, v15, v17);
    }
  }
}

void sub_2213D8028()
{
  v0 = TSULogCreateCategory();
  v1 = TSTPencilCat_log_t;
  TSTPencilCat_log_t = v0;
}

void sub_2213D8428(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_count(v3, v4, v5, v6))
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    v7 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2213D855C;
    v10[3] = &unk_2784646D8;
    v11 = v3;
    v14 = v15;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    objc_msgSend_foreach_(v7, v8, v10, v9);

    _Block_object_dispose(v15, 8);
  }
}

void sub_2213D8520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213D855C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, *(*(*(a1 + 56) + 8) + 24), a4);
  objc_msgSend_setObject_forKey_(*(a1 + 40), v6, v7, a2);
  ++*(*(*(a1 + 56) + 8) + 24);
  if (TSTPencilCat_init_token != -1)
  {
    sub_2216F7938();
  }
}

void sub_2213D8608()
{
  v0 = TSULogCreateCategory();
  v1 = TSTPencilCat_log_t;
  TSTPencilCat_log_t = v0;
}

void sub_2213D87D4(uint64_t a1, void *a2)
{
  v13 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v5 + 40);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = *(v5 + 32);
  v8 = *v6;
  if (v7 < *v6)
  {
    *(v5 + 32) = v7 + 1;
    objc_msgSend_setStrongReference_message_(v4, v3, v13, *&v6[2 * v7 + 2]);
    goto LABEL_8;
  }

  if (v8 == *(v5 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24));
    v6 = *(v5 + 40);
    v8 = *v6;
  }

  *v6 = v8 + 1;
  v9 = MEMORY[0x223DA0390](*(v5 + 24));
  v10 = *(v5 + 32);
  v11 = *(v5 + 40) + 8 * v10;
  *(v5 + 32) = v10 + 1;
  *(v11 + 8) = v9;
  objc_msgSend_setStrongReference_message_(v4, v12, v13, v9);
LABEL_8:
}

double sub_2213D8990(__n128 a1, double a2, double a3)
{
  if (a3 >= 0.0)
  {
    v5 = a1.n128_f64[0] * a3;
    a1.n128_f64[0] = a2;

    return sub_2213BCEA8(a1, v5);
  }

  else
  {
    sub_22137A674("gdtr", 1);
    return 0.0;
  }
}

void sub_2213D8A80()
{
  v0 = [TSTPivotGroupingColumnOptions alloc];
  v2 = objc_msgSend_initWithFlags_sortingAggregateRuleUid_(v0, v1, 0, 0, 0);
  v3 = qword_27CFB54C8;
  qword_27CFB54C8 = v2;
}

void sub_2213D8E38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2213D96C4(uint64_t **a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_22112C810(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_2213D977C(uint64_t **a1, unint64_t *a2)
{
  v3 = sub_22112C8D0(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_2213D97C4(a1, v3);
  return 1;
}

uint64_t *sub_2213D97C4(uint64_t **a1, uint64_t a2)
{
  v3 = sub_22112C950(a1, a2);

  operator delete(a2);
  return v3;
}

void sub_2213D9800(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2213D9800(a1, *a2);
    sub_2213D9800(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_2213D99A8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSTWidthHeightCache;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_2213D9A9C(void *result, unint64_t a2, uint64_t a3)
{
  v3 = 0x8E38E38E38E38E39 * ((result[1] - *result) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    sub_2213DD2E0(result, v5, a3);
  }

  else if (!v4)
  {
    result[1] = *result + 72 * a2;
  }
}

uint64_t sub_2213D9C50(uint64_t result, uint64_t a2, double a3)
{
  if (a2 != 0x7FFFFFFFLL && (a2 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v3 = *(*(result + 32) + 208);
    if (a2 < 0x8E38E38E38E38E39 * ((*(*(result + 32) + 216) - v3) >> 3))
    {
      return sub_2213DD4E4(v3 + 72 * a2 + 8, WORD2(a2), a3);
    }
  }

  return result;
}

void sub_2213DA044(uint64_t a1, const char *a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v9 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], a2, a2, a5);
  v22 = objc_msgSend_objectForKey_(v8, v10, v9, v11);

  if (v22)
  {
    objc_msgSend_tsu_CGFloatValue(v22, v12, v13, v14);
    if (v15 > a3)
    {
      a3 = v15;
    }
  }

  v16 = *(a1 + 32);
  v17 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v12, v13, v14, a3);
  v20 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v18, a2, v19);
  objc_msgSend_setObject_forKey_(v16, v21, v17, v20);
}

BOOL sub_2213DA858(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1 + 16 * v3;
    if (*(v4 + 12) == 2)
    {
      break;
    }

    v5 = *(v4 + 8);
    v6 = v5 < a2 || v5 - a2 >= a3;
    if (v6)
    {
      if (a2 + a3 <= v5)
      {
        *(v4 + 8) = v5 - a3;
      }
    }

    else
    {
      if (v3 <= 2)
      {
        v7 = (a1 + 16 + 16 * v3);
        v8 = v3 - 3;
        do
        {
          *(v7 - 1) = *v7;
          ++v7;
          v6 = __CFADD__(v8++, 1);
        }

        while (!v6);
      }

      *(a1 + 48) = 0;
      *(a1 + 56) = 0x27FFFFFFFLL;
      --v3;
    }
  }

  while (v3++ < 3);
  return *(a1 + 12) == 2;
}

char *sub_2213DAB48(void *a1, char *__src, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (a3 <= (v9 - v8) >> 3)
  {
    v15 = v8 - __src;
    if (a3 <= (v8 - __src) >> 3)
    {
      v18 = a1[1];
      v17 = a3;
    }

    else
    {
      v16 = 0;
      v17 = v15 >> 3;
      v18 = &v8[8 * (a3 - (v15 >> 3))];
      v19 = *a4;
      v20 = (8 * a3 - v15 - 8) >> 3;
      v21 = vdupq_n_s64(v20);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(vdupq_n_s64(v16), xmmword_2217E0F60)));
        if (v22.i8[0])
        {
          *&v8[8 * v16] = v19;
        }

        if (v22.i8[4])
        {
          *&v8[8 * v16 + 8] = v19;
        }

        v16 += 2;
      }

      while (((v20 + 2) & 0x3FFFFFFFFFFFFFFELL) != v16);
      a1[1] = v18;
      if (v8 == __src)
      {
        return __src;
      }
    }

    v23 = &__src[8 * a3];
    v24 = &v18[-8 * a3];
    v25 = v18;
    if (v24 < v8)
    {
      v25 = v18;
      do
      {
        v26 = *v24;
        v24 += 8;
        *v25 = v26;
        v25 += 8;
      }

      while (v24 < v8);
    }

    a1[1] = v25;
    if (v18 != v23)
    {
      memmove(&__src[8 * a3], __src, v18 - v23);
    }

    if (__src <= v5)
    {
      if (a1[1] <= v5)
      {
        v27 = 0;
      }

      else
      {
        v27 = a3;
      }

      v5 += 8 * v27;
    }

    v28 = 0;
    v29 = *v5;
    v30 = vdupq_n_s64(v17 - 1);
    v31 = __src + 8;
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v28), xmmword_2217E0F60)));
      if (v32.i8[0])
      {
        *(v31 - 1) = v29;
      }

      if (v32.i8[4])
      {
        *v31 = v29;
      }

      v28 += 2;
      v31 += 16;
    }

    while (((v17 + 1) & 0xFFFFFFFFFFFFFFFELL) != v28);
    return __src;
  }

  v10 = *a1;
  v11 = a3 + (&v8[-*a1] >> 3);
  if (v11 >> 61)
  {
    sub_22107C148();
  }

  v12 = __src - v10;
  v13 = v9 - v10;
  if (v13 >> 2 > v11)
  {
    v11 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    sub_2210874C4(a1, v14);
  }

  v34 = 0;
  v33 = 8 * (v12 >> 3);
  v35 = *a4;
  v36 = (a3 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
  v37 = v36 - ((a3 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
  v38 = vdupq_n_s64(v36);
  v39 = (v33 + 8);
  do
  {
    v40 = vmovn_s64(vcgeq_u64(v38, vorrq_s8(vdupq_n_s64(v34), xmmword_2217E0F60)));
    if (v40.i8[0])
    {
      *(v39 - 1) = v35;
    }

    if (v40.i8[4])
    {
      *v39 = v35;
    }

    v34 += 2;
    v39 += 2;
  }

  while (v37 != v34);
  memcpy((v33 + 8 * a3), __src, a1[1] - __src);
  v41 = *a1;
  v42 = v33 + 8 * a3 + a1[1] - __src;
  a1[1] = __src;
  v43 = (__src - v41);
  v44 = (v33 - (__src - v41));
  memcpy(v44, v41, v43);
  v45 = *a1;
  *a1 = v44;
  a1[1] = v42;
  a1[2] = 0;
  if (v45)
  {
    operator delete(v45);
  }

  return v33;
}

char *sub_2213DAF88(void *a1, char *__src, unint64_t a3, unint64_t a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (0x8E38E38E38E38E39 * ((v9 - v8) >> 3) >= a3)
  {
    v15 = 0x8E38E38E38E38E39 * ((v8 - __src) >> 3);
    v16 = a1[1];
    v17 = a3;
    if (a3 <= v15)
    {
LABEL_16:
      v23 = &__src[72 * a3];
      v24 = &v16[-72 * a3];
      v25 = v16;
      if (v24 < v8)
      {
        v25 = v16;
        do
        {
          *v25 = *v24;
          v26 = *(v24 + 16);
          v27 = *(v24 + 32);
          v28 = *(v24 + 48);
          *(v25 + 8) = *(v24 + 64);
          *(v25 + 2) = v27;
          *(v25 + 3) = v28;
          *(v25 + 1) = v26;
          v24 += 72;
          v25 += 72;
        }

        while (v24 < v8);
      }

      a1[1] = v25;
      if (v16 != v23)
      {
        memmove(&__src[72 * a3], __src, v16 - v23);
      }

      if (__src <= v5)
      {
        if (a1[1] <= v5)
        {
          v29 = 0;
        }

        else
        {
          v29 = a3;
        }

        v5 += 72 * v29;
      }

      v30 = __src;
      do
      {
        *v30 = *v5;
        v31 = *(v5 + 16);
        v32 = *(v5 + 32);
        v33 = *(v5 + 48);
        *(v30 + 8) = *(v5 + 64);
        *(v30 + 2) = v32;
        *(v30 + 3) = v33;
        *(v30 + 1) = v31;
        v30 += 72;
        --v17;
      }

      while (v17);
      return __src;
    }

    v18 = 0;
    v16 = &v8[72 * (a3 - v15)];
    do
    {
      v19 = &v8[v18];
      *v19 = *a4;
      v20 = *(a4 + 16);
      v21 = *(a4 + 32);
      v22 = *(a4 + 48);
      *(v19 + 8) = *(a4 + 64);
      *(v19 + 2) = v21;
      *(v19 + 3) = v22;
      *(v19 + 1) = v20;
      v18 += 72;
    }

    while (72 * a3 - 8 * ((v8 - __src) >> 3) != v18);
    a1[1] = v16;
    if (v8 != __src)
    {
      v17 = 0x8E38E38E38E38E39 * ((v8 - __src) >> 3);
      goto LABEL_16;
    }

    return __src;
  }

  v10 = *a1;
  v11 = a3 - 0x71C71C71C71C71C7 * (&v8[-*a1] >> 3);
  if (v11 > 0x38E38E38E38E38ELL)
  {
    sub_22107C148();
  }

  v12 = __src - v10;
  v13 = 0x8E38E38E38E38E39 * ((v9 - v10) >> 3);
  if (2 * v13 > v11)
  {
    v11 = 2 * v13;
  }

  if (v13 >= 0x1C71C71C71C71C7)
  {
    v14 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    sub_2213DD488(a1, v14);
  }

  v34 = 8 * (v12 >> 3);
  v35 = (v34 + 72 * a3);
  v36 = 72 * a3;
  v37 = v34;
  do
  {
    *v37 = *a4;
    v38 = *(a4 + 16);
    v39 = *(a4 + 32);
    v40 = *(a4 + 48);
    *(v37 + 64) = *(a4 + 64);
    *(v37 + 32) = v39;
    *(v37 + 48) = v40;
    *(v37 + 16) = v38;
    v37 += 72;
    v36 -= 72;
  }

  while (v36);
  memcpy(v35, __src, a1[1] - __src);
  v41 = *a1;
  v42 = &v35[a1[1] - __src];
  a1[1] = __src;
  v43 = (__src - v41);
  v44 = (v34 - (__src - v41));
  memcpy(v44, v41, v43);
  v45 = *a1;
  *a1 = v44;
  a1[1] = v42;
  a1[2] = 0;
  if (v45)
  {
    operator delete(v45);
  }

  return v34;
}

void sub_2213DB544(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2213DB53CLL);
}

void sub_2213DB868(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2213DB860);
}

void sub_2213DB9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);

  _Unwind_Resume(a1);
}

__n128 sub_2213DB9E4(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 64) = result;
  return result;
}

__n128 sub_2213DBA0C(void *a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1[4] + 208);
  v4 = (v3 + 72 * a3);
  v15 = *(v4 + 8);
  v13 = v4[2];
  v14 = v4[3];
  v11 = *v4;
  v12 = v4[1];
  if (*(*(a1[5] + 8) + 24) == a2)
  {
    v5 = *(a1[6] + 8) + 48;
  }

  else
  {
    v5 = v3 + 72 * a2;
  }

  *v4 = *v5;
  v6 = *(v5 + 16);
  v7 = *(v5 + 32);
  v8 = *(v5 + 48);
  *(v4 + 8) = *(v5 + 64);
  v4[2] = v7;
  v4[3] = v8;
  v4[1] = v6;
  *(*(a1[5] + 8) + 24) = a3;
  v9 = *(a1[6] + 8);
  *(v9 + 80) = v13;
  *(v9 + 96) = v14;
  *(v9 + 112) = v15;
  result = v12;
  *(v9 + 48) = v11;
  *(v9 + 64) = v12;
  return result;
}

uint64_t sub_2213DC3E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = &a2[a3];
  objc_msgSend_p_deleteRowsStartingWith_upToRow_(*(a1 + 32), a2, a2, &a2[a3]);
  objc_msgSend_removeIndexesInRange_(*(a1 + 40), v7, a2, a3);
  v9 = *(a1 + 40);

  return objc_msgSend_shiftIndexesStartingAtIndex_by_(v9, v8, v6, -a3);
}

uint64_t sub_2213DC450(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_p_insertRows_atRow_(*(a1 + 32), a2, a3, a2);
  objc_msgSend_shiftIndexesStartingAtIndex_by_(*(a1 + 40), v6, a2, a3);
  v8 = *(a1 + 40);

  return objc_msgSend_addIndexesInRange_(v8, v7, a2, a3);
}

void sub_2213DC4B8(uint64_t a1, const char *a2, __int16 a3)
{
  v9 = objc_msgSend_p_deleteColumnsStartingWith_upToColumn_(*(a1 + 32), a2, a2, (a2 + a3));
  if (objc_msgSend_count(v9, v4, v5, v6))
  {
    objc_msgSend_addIndexes_(*(a1 + 40), v7, v9, v8);
  }
}

id *sub_2213DC544(id *result, const char *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = result;
  v23.origin = a2;
  v23.size = a3;
  v6 = *(result + 12);
  v7 = HIDWORD(a3);
  if (v6 <= 26)
  {
    if (v6 > 21)
    {
      if (v6 == 22)
      {
LABEL_32:
        v15 = v5[5];
        v16 = TSUCellRect::rows(&v23);
        return objc_msgSend_addIndexesInRange_(v15, v17, v16, v17);
      }

      if (v6 == 26)
      {
        objc_msgSend_p_moveRowsFrom_toRow_(result[4], a2, a2, a3, *(result + 13), *&v23.origin, *&v23.size);
        v13 = v5[5];
        v14 = *(v5 + 13);

        return objc_msgSend_tsu_moveIndexesInRange_toOffset_(v13, v12, v4, v7, v14);
      }
    }

    else if (v6 == 5)
    {
      v19 = result[4];

      return MEMORY[0x2821F9670](v19, sel_p_moveColumnsFrom_toColumn_, a2, a3);
    }

    else if (v6 == 6)
    {
      v8 = a2 != 0x7FFFFFFF && (a2 & 0xFFFF00000000) == 0x7FFF00000000;
      v9 = v8 ? 0 : HIDWORD(a2);
      v10 = !a3 || WORD2(a2) == 0x7FFF;
      for (i = v10 ? 0x7FFF : a3 + WORD2(a2) - 1; v9 <= i; ++v9)
      {
        result = objc_msgSend_setModelWidth_forColumn_(v5[4], a2, v9, v3, 0.0, *&v23.origin, *&v23.size);
      }
    }
  }

  else if (v6 <= 32)
  {
    if (v6 != 27)
    {
      if (v6 != 29)
      {
        return result;
      }

      goto LABEL_32;
    }

    v20 = a2 == 0x7FFFFFFF;
    if (v20 && (a2 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v21 = 0;
    }

    else
    {
      v21 = a2;
    }

    if (!HIDWORD(a3))
    {
      v20 = 1;
    }

    if (v20)
    {
      v22 = 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 + HIDWORD(a3) - 1;
    }

    while (v21 <= v22)
    {
      result = objc_msgSend_setModelHeight_forRow_(v5[4], a2, v21, v3, 0.0, *&v23.origin, *&v23.size);
      v21 = (v21 + 1);
    }
  }

  else
  {
    if (v6 != 33 && v6 != 41)
    {
      if (v6 != 50)
      {
        return result;
      }

      objc_msgSend_p_resetToRows_andNumColumns_(result[4], a2, HIDWORD(a3), a3, *&v23.origin, *&v23.size);
      goto LABEL_32;
    }

    v18 = result[4];

    return objc_msgSend_resetModelCache(v18, a2, a3, a3);
  }

  return result;
}

uint64_t sub_2213DCB10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2213DCB28(uint64_t a1, const char *a2, uint64_t a3)
{
  v32 = objc_msgSend_p_resetFittingHeightsForRange_(*(a1 + 32), a2, a2, a3);
  if (objc_msgSend_count(v32, v4, v5, v6))
  {
    objc_msgSend_addIndexes_(*(a1 + 40), v7, v32, v8);
    if ((*(a1 + 72) & 1) == 0)
    {
      v11 = *(a1 + 48);
      v12 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v9, v32, v10);
      v15 = objc_msgSend_mergeRangesProppingRowHeightsInRegion_(v11, v13, v12, v14);

      if (objc_msgSend_cellCount(v15, v16, v17, v18))
      {
        v22 = objc_msgSend_cellCount(*(*(*(a1 + 64) + 8) + 40), v19, v20, v21);
        v24 = objc_msgSend_region_addingRegion_(TSTCellRegion, v23, *(*(*(a1 + 64) + 8) + 40), v15);
        v25 = *(*(a1 + 64) + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = v24;

        if (objc_msgSend_cellCount(*(*(*(a1 + 64) + 8) + 40), v27, v28, v29) > v22)
        {
          objc_msgSend_addObject_(*(a1 + 56), v30, v15, v31);
        }
      }
    }
  }
}

uint64_t sub_2213DCC84(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(*(result + 32) + 208) + 72 * a2 + 20;
  do
  {
    if (*(v3 + v2))
    {
      *(v3 + v2) = 1;
    }

    v2 += 16;
  }

  while (v2 != 64);
  return result;
}

uint64_t sub_2213DCD9C(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 32) + 208) + 72 * a2;
  for (i = 68; i != 4; i -= 16)
  {
    if (!*(v2 + i))
    {
      break;
    }

    *(v2 + i) = 2;
  }

  return result;
}

double sub_2213DD238(uint64_t a1)
{
  for (i = 0; i != 64; i += 16)
  {
    v2 = a1 + i;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0x17FFFFFFFLL;
  }

  for (j = 0; j != 64; j += 16)
  {
    v4 = a1 + j;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0x17FFFFFFFLL;
  }

  v5 = 0;
  *a1 = 0;
  do
  {
    v6 = &v12[v5];
    *v6 = 0;
    v6[1] = 0x17FFFFFFFLL;
    ++v5;
  }

  while (v5 != 4);
  for (k = 0; k != 4; ++k)
  {
    v8 = &v12[k];
    *v8 = 0;
    v8[1] = 0x17FFFFFFFLL;
  }

  v9 = v12[1];
  *(a1 + 8) = v12[0];
  *(a1 + 24) = v9;
  result = *&v13;
  v11 = v14;
  *(a1 + 40) = v13;
  *(a1 + 56) = v11;
  return result;
}

void sub_2213DD2E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v6 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 72 * a2;
      v12 = 72 * a2;
      do
      {
        *v5 = *a3;
        v13 = *(a3 + 16);
        v14 = *(a3 + 32);
        v15 = *(a3 + 48);
        *(v5 + 64) = *(a3 + 64);
        *(v5 + 32) = v14;
        *(v5 + 48) = v15;
        *(v5 + 16) = v13;
        v5 += 72;
        v12 -= 72;
      }

      while (v12);
      v5 = v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0x38E38E38E38E38ELL)
    {
      sub_22107C148();
    }

    v9 = 0x8E38E38E38E38E39 * ((v6 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x1C71C71C71C71C7)
    {
      v10 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_2213DD488(a1, v10);
    }

    v16 = 72 * v7;
    v17 = 9 * a2;
    v18 = 72 * v7 + 72 * a2;
    v19 = 8 * v17;
    v20 = 72 * v7;
    do
    {
      *v20 = *a3;
      v21 = *(a3 + 16);
      v22 = *(a3 + 32);
      v23 = *(a3 + 48);
      *(v20 + 64) = *(a3 + 64);
      *(v20 + 32) = v22;
      *(v20 + 48) = v23;
      *(v20 + 16) = v21;
      v20 += 72;
      v19 -= 72;
    }

    while (v19);
    v24 = *(a1 + 8) - *a1;
    v25 = v16 - v24;
    memcpy((v16 - v24), *a1, v24);
    v26 = *a1;
    *a1 = v25;
    *(a1 + 8) = v18;
    *(a1 + 16) = 0;
    if (v26)
    {

      operator delete(v26);
    }
  }
}

void sub_2213DD488(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t sub_2213DD4E4(uint64_t result, int a2, double a3)
{
  v3 = 0;
  for (i = 0; ; --i)
  {
    v5 = result + v3;
    if (*(result + v3 + 8) == a2)
    {
      return result;
    }

    v6 = *(v5 + 12);
    if (v6)
    {
      break;
    }

    if (*v5 < a3)
    {
LABEL_10:
      v7 = (result + v3 + 8);
      v8 = -i;
      v9 = (result + v3 + 12);
      if (v8 <= 2)
      {
        v10 = (result + 48);
        for (j = 3; j > v8; --j)
        {
          *v10 = *(v10 - 1);
          --v10;
        }
      }

      goto LABEL_13;
    }

LABEL_8:
    v3 += 16;
    if (v3 == 64)
    {
      return result;
    }
  }

  if (v6 == 1)
  {
    goto LABEL_10;
  }

  if (v6 != 2)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v12 = result + 16 * ~i;
    if (!*(v12 + 12) && *v12 == a3)
    {
      v7 = (result + v3 + 8);
      v9 = (result + v3 + 12);
LABEL_13:
      *(result + v3) = a3;
      *v7 = a2;
      *v9 = 0;
    }
  }

  return result;
}

void **sub_2213DD5AC(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x8E38E38E38E38E39 * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v9 = 0x8E38E38E38E38E39 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x1C71C71C71C71C7)
      {
        v11 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v11 = v10;
      }

      sub_2213DD720(v6, v11);
    }

    sub_22107C148();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x8E38E38E38E38E39 * ((v12 - v8) >> 3) >= a4)
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

void sub_2213DD720(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_2213DD488(a1, a2);
  }

  sub_22107C148();
}

uint64_t sub_2213DD770(uint64_t result, unsigned int a2, int a3, unsigned int a4)
{
  v4 = a3 + a2;
  v5 = *(result + 8);
  if (a4 <= a2)
  {
    if (v5 >= a4 && v5 < a2)
    {
      v10 = v5 + a3;
      goto LABEL_22;
    }

    if (v5 >= a2 && v5 < v4)
    {
      v10 = a4 - a2 + v5;
      goto LABEL_22;
    }
  }

  else
  {
    if (v5 >= a2 && v5 < v4)
    {
      v10 = a4 - v4 + v5;
LABEL_22:
      *(result + 8) = v10;
      return result;
    }

    if (v4 <= v5 && v5 < a4)
    {
      v10 = v5 - a3;
      goto LABEL_22;
    }
  }

  return result;
}

BOOL sub_2213DD7D8(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v4 = 0;
  do
  {
    v5 = a1 + 16 * v4;
    v6 = *(v5 + 8);
    v8 = v6 >= a2;
    v7 = v6 - a2;
    v8 = !v8 || v7 >= a3;
    if (v8)
    {
      if (*(v5 + 12))
      {
        return *(a1 + 12) == 2;
      }
    }

    else
    {
      if (v4 <= 2)
      {
        v9 = (a1 + 16 + 16 * v4);
        v10 = v4 - 3;
        do
        {
          *(v9 - 1) = *v9;
          ++v9;
          v8 = __CFADD__(v10++, 1);
        }

        while (!v8);
      }

      *(a1 + 48) = 0;
      --v4;
      *(a1 + 56) = 0x7FFFFFFF;
      *(a1 + 60) = a4;
    }
  }

  while (v4++ < 3);
  return *(a1 + 12) == 2;
}

void sub_2213DDB40(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_2213DDD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2213DDD60(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
    if (!a2)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v36 = objc_msgSend_offline(WeakRetained, v33, v34, v35);

      if ((v36 & 1) == 0)
      {
        v56 = objc_loadWeakRetained((a1 + 32));
        objc_msgSend_setOffline_(v56, v37, 1, v38);

        v57 = objc_loadWeakRetained((a1 + 32));
        v42 = objc_msgSend_coordinator(v57, v39, v40, v41);
        v43 = objc_loadWeakRetained((a1 + 32));
        v47 = objc_msgSend_allRequestedKeys(v43, v44, v45, v46);
        objc_msgSend_sourceFetcherDidGoOffline_forKeys_(v42, v48, v43, v47);
      }
    }
  }

  else
  {
    v49 = objc_loadWeakRetained((a1 + 32));
    v6 = objc_msgSend_offline(v49, v3, v4, v5);

    if (v6)
    {
      v50 = objc_loadWeakRetained((a1 + 32));
      objc_msgSend_setOffline_(v50, v7, 0, v8);

      v51 = objc_loadWeakRetained((a1 + 32));
      objc_msgSend_setDoFullRefresh_(v51, v9, 1, v10);

      v52 = objc_loadWeakRetained((a1 + 32));
      v14 = objc_msgSend_coordinator(v52, v11, v12, v13);
      v15 = objc_loadWeakRetained((a1 + 32));
      v19 = objc_msgSend_allRequestedKeys(v15, v16, v17, v18);
      objc_msgSend_sourceFetcherDidGoOnline_forKeys_(v14, v20, v15, v19);

      v53 = objc_loadWeakRetained((a1 + 32));
      v24 = objc_msgSend_newlyRequestedKeys(v53, v21, v22, v23);
      v28 = objc_msgSend_count(v24, v25, v26, v27);

      if (v28)
      {
        v54 = objc_loadWeakRetained((a1 + 32));
        v32 = objc_msgSend_queue(v54, v29, v30, v31);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2213DE034;
        block[3] = &unk_278463428;
        objc_copyWeak(&v59, (a1 + 32));
        dispatch_async(v32, block);

        objc_destroyWeak(&v59);
      }
    }
  }
}

void sub_2213DE034(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_p_refreshSpecifiers(WeakRetained, v1, v2, v3);
}

void sub_2213DE1D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_allRequestedKeys(*(a1 + 40), a2, a3, a4);
  v32 = objc_msgSend_setOfSpecifiersNotContainedInSet_(v5, v7, v6, v8);

  if (objc_msgSend_count(v32, v9, v10, v11))
  {
    v15 = objc_msgSend_newlyRequestedKeys(*(a1 + 40), v12, v13, v14);
    objc_msgSend_insertSpecifiersFromSet_(v15, v16, v32, v17);
  }

  v18 = objc_msgSend_allRequestedKeys(*(a1 + 40), v12, v13, v14);
  objc_msgSend_insertSpecifiersFromSet_(v18, v19, v32, v20);

  v24 = objc_msgSend_allRequestedKeys(*(a1 + 40), v21, v22, v23);
  v28 = objc_msgSend_count(v24, v25, v26, v27);

  if (v28)
  {
    objc_msgSend_resumeUpdating(*(a1 + 40), v29, v30, v31);
  }
}

void sub_2213DE3D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_allRequestedKeys(*(a1 + 32), a2, a3, a4);
  objc_msgSend_removeSpecifiersFromSet_(v5, v6, *(a1 + 40), v7);

  v11 = objc_msgSend_allRequestedKeys(*(a1 + 32), v8, v9, v10);
  v15 = objc_msgSend_count(v11, v12, v13, v14);

  if (!v15)
  {
    v18 = *(a1 + 32);

    MEMORY[0x2821F9670](v18, sel_stopUpdating, v16, v17);
  }
}

void sub_2213DE590()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DE6B0()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DE6F4()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DEB48()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DEB8C()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DEBD0()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DEC14()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DEC58()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DEC9C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_state(*(a1 + 32), a2, a3, a4))
  {
    v8 = *(a1 + 32);

    objc_msgSend_p_refreshSpecifiers(v8, v5, v6, v7);
  }

  else if (__C != -1)
  {
    sub_2216F7A50();
  }
}

void sub_2213DED04()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DED48()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DED8C()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DEDD0()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DEE14()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DF0BC()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DF108()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DF14C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_state(*(a1 + 32), a2, a3, a4))
  {
    objc_msgSend_setEarlyRefreshRequested_(*(a1 + 32), v5, 0, v6);
    v10 = *(a1 + 32);

    objc_msgSend_p_refreshSpecifiers(v10, v7, v8, v9);
  }

  else if (__C != -1)
  {
    sub_2216F7A8C();
  }
}

void sub_2213DF1C0()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DF2C4()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213DF844(uint64_t a1, void *a2)
{
  v7 = a2;
  if (objc_msgSend_canFetchKey_(*(a1 + 32), v3, v7, v4))
  {
    objc_msgSend_insertSpecifier_(*(a1 + 40), v5, v7, v6);
  }
}

void TSCEPartialEvalRewriter::TSCEPartialEvalRewriter(TSCEPartialEvalRewriter *this, TSCEFormulaObject *a2, TSCEFormulaRewriteContext *a3, TSCEEvaluationContext *a4)
{
  v7 = a2;
  v8 = a4;
  v12 = objc_msgSend_astNodeArrayCopy(v7, v9, v10, v11);
  TSCEASTRewriter::TSCEASTRewriter(this, v12, a3, 0);
  *this = &unk_2834A7510;
  v13 = v8;
  *(this + 26) = 0;
  *(this + 25) = v13;
  *(this + 27) = 0;
  *(this + 28) = 0;
  v16 = objc_msgSend_evaluateForPartialResultsWithContext_(v7, v14, v13, v15);
  v17 = *(this + 26);
  *(this + 26) = v16;

  v18 = [TSCEPartialResultTreeEnumerator alloc];
  v21 = objc_msgSend_initWithPartialResultTree_(v18, v19, *(this + 26), v20);
  v22 = *(this + 27);
  *(this + 27) = v21;

  *(this + 152) = 0;
}

void TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(id *this)
{

  TSCEASTRewriter::~TSCEASTRewriter(this);
}

{
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(this);

  JUMPOUT(0x223DA1450);
}

void TSCEPartialEvalRewriter::willRewriteNode(id *this, TSCEASTElement *a2)
{
  v3 = TSCEASTElement::tag(a2, this);
  if (v3 > 0x38)
  {
    goto LABEL_6;
  }

  if (((1 << v3) & 0x100000188000000) != 0)
  {
    v7 = 0;
    goto LABEL_8;
  }

  if (v3 == 52)
  {
    v8 = this + 27;
    v9 = objc_msgSend_nextResult(this[27], v4, v5, v6);
  }

  else
  {
LABEL_6:
    v8 = this + 27;
  }

  v7 = objc_msgSend_nextResult(*v8, v4, v5, v6);
LABEL_8:
  v10 = this[28];
  this[28] = v7;
}

void TSCEPartialEvalRewriter::setPartialResult(id *this, TSCEPartialResult *a2)
{
  v3 = a2;
  objc_msgSend_setCurrentResult_(this[27], v4, v3, v5);
  v6 = this[28];
  this[28] = v3;
}

TSCEASTUnknownFunctionElement *TSCEPartialEvalRewriter::unknownFunctionNode(TSCEPartialEvalRewriter *this, TSCEASTUnknownFunctionElement *a2, uint64_t a3, uint64_t a4)
{
  v5 = TSCEASTUnknownFunctionElement::unknownFunctionName(a2, this, a3, a4);
  objc_msgSend_unknownFunctionError_(TSCEError, v6, v5, v7);

  return a2;
}

uint64_t TSCEPartialEvalRewriter::anyReferenceNode(void *a1, uint64_t a2)
{
  v4 = TSCEASTElement::refFlags(a2, a1);
  v5 = v4 & 0xC;
  v6 = *a1;
  if (v4)
  {
    if (v5 == 8)
    {
      v7 = v6[44];
      v8 = a1;
      v9 = a2;
    }

    else if (v5 == 4)
    {
      v7 = v6[45];
      v8 = a1;
      v9 = a2;
    }

    else
    {
      v7 = v6[43];
      v8 = a1;
      v9 = a2;
    }
  }

  else if (v5 == 8)
  {
    v7 = v6[41];
    v8 = a1;
    v9 = a2;
  }

  else if (v5 == 4)
  {
    v7 = v6[42];
    v8 = a1;
    v9 = a2;
  }

  else
  {
    v7 = v6[40];
    v8 = a1;
    v9 = a2;
  }

  return v7(v8, v9);
}

TSCEASTRelativeCoordRefElement *TSCEPartialEvalRewriter::referenceErrorNode(TSCEPartialEvalRewriter *this, TSCEASTRelativeCoordRefElement *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_invalidReferenceError(TSCEError, a2, a3, a4);

  return a2;
}

TSCEASTRelativeCoordRefElement *TSCEPartialEvalRewriter::referenceErrorWithUidsNode(TSCEPartialEvalRewriter *this, TSCEASTRelativeCoordRefElement *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_invalidReferenceError(TSCEError, a2, a3, a4);

  return a2;
}

TSCEASTUidReferenceElement *TSCEPartialEvalRewriter::uidReferenceNode(TSCEPartialEvalRewriter *this, TSCEASTUidReferenceElement *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual TSCEASTElement *TSCEPartialEvalRewriter::uidReferenceNode(TSCEASTUidReferenceElement *)", a4);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEPartialEvalRewriter.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 387, 0, "uidReferenceNode() seen while evaluating");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  objc_msgSend_invalidReferenceError(TSCEError, v14, v15, v16);

  return a2;
}

TSCEASTFunctionElement *TSCEPartialEvalRewriter::rewriteFunctionToRemoveNumberToDateCoercions(id *this, TSCEASTFunctionElement *a2, uint64_t a3, uint64_t a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = TSCEASTFunctionElement::functionIndex(a2, this, a3, a4);
  v43 = a2;
  v7 = (*(*a2 + 48))(a2, this);
  v8 = sub_221089E8C(this);
  v44 = objc_msgSend_XLImportDateMode(v8, v9, v10, v11);

  v42 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v12, v6, v13);
  v41 = this[28];
  v46 = objc_msgSend_children(v41, v14, v15, v16);
  v17 = v42;
  if (objc_msgSend_maxArguments(v42, v18, v19, v20) && v7)
  {
    v23 = 0;
    v47 = v7;
    do
    {
      if (objc_msgSend_preferredTypeForArgumentIndex_(v17, v21, v23, v22) == 3)
      {
        v24 = objc_msgSend_objectAtIndexedSubscript_(v46, v21, v23, v22);
        v48 = v24;
        if (v24)
        {
          objc_msgSend_value(v24, v25, v26, v27);
        }

        else
        {
          objc_msgSend_nilValue(TSCENilValue, v25, v26, v27);
        }
        v49 = ;
        v30 = objc_msgSend_deepType_(v49, v28, this[25], v29);
        if (v30 == 5 || !v30)
        {
          v33 = TSCEASTElementWithChildren::child(v43, v23);
          switch(v44)
          {
            case 0u:
              goto LABEL_13;
            case 1u:
              objc_msgSend_dateWithSerialNumber_dateMode_(TSCECalendar, v31, 1, v32, 0.0);
              objc_claimAutoreleasedReturnValue();
              TSCEASTRewriter::createDeepCopy(this, v33, v34, v35);
              TSCEASTRewriter::createDeepCopy(this, v33, v36, v37);
              TSUDecimal::operator=();
              TSCEASTIteratorBase::createNumber(this, &v50, v38, v39);
            case 2u:
LABEL_13:
              v45 = objc_msgSend_dateWithSerialNumber_dateMode_(TSCECalendar, v31, v44, v32, 0.0);
              TSCEASTIteratorBase::createDate(this, v45, 0, 0, 1);
          }
        }

        v17 = v42;
      }

      ++v23;
    }

    while (v23 != v47);
  }

  return v43;
}

uint64_t TSCEPartialEvalRewriter::bakeForSingleValue(id *this, TSCEValue *a2, uint64_t a3, TSCEFunctionSpec *a4, _BOOL4 a5)
{
  v8 = a2;
  v201 = a4;
  v15 = 0;
  switch(objc_msgSend_nativeType(v8, v9, v10, v11))
  {
    case 0u:
      TSUDecimal::operator=();
      TSCEASTIteratorBase::createNumber(this, v202, v110, v111);
    case 1u:
    case 0x10u:
      v16 = this[25];
      v208 = 0;
      v17 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v12, v16, v201, a3, 0, &v208);
      v18 = v208;
      v21 = objc_msgSend_deepResolveInPlace_(v17, v19, this[25], v20);
      v25 = objc_msgSend_abstractBackingGrid(v17, v22, v23, v24);
      v29 = v25;
      if (v25)
      {
        v199 = v25;
        v30 = objc_msgSend_count(v25, v26, v27, v28);
        __p[0] = 0;
        __p[1] = 0;
        v207 = 0;
        *v202 = this[25];
        *&v202[8] = v201;
        *&v202[16] = 0;
        *&v202[24] = a3;
        *&v202[28] = 0;
        *&v202[31] = 0;
        v203 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v204 = 0;
        v205 = 0;
        if (v30)
        {
          for (i = 0; i != v30; ++i)
          {
            v35 = objc_msgSend_valueAtIndex_accessContext_(v29, v31, i, v202);
            v38 = TSCEPartialEvalRewriter::bakeForSingleValue(this, v35, a3, v201, a5);
            if (!v38)
            {
              v43 = MEMORY[0x277D81150];
              v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "TSCEASTElement *TSCEPartialEvalRewriter::bakeForSingleValue(TSCEValue *__strong, int, TSCEFunctionSpec *__strong, BOOL)", v37);
              v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEPartialEvalRewriter.mm", v46);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v48, v44, v47, 735, 0, "bake failed for array element, pushing empty arg");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51);
              TSCEASTIteratorBase::createTagOnlyOp(this, 0x17, v52, v53);
            }

            v39 = __p[1];
            if (__p[1] < v207)
            {
              *__p[1] = v38;
              v54 = v39 + 8;
            }

            else
            {
              v40 = (__p[1] - __p[0]) >> 3;
              if ((v40 + 1) >> 61)
              {
                sub_22107C148();
              }

              v41 = (v207 - __p[0]) >> 2;
              if (v41 <= v40 + 1)
              {
                v41 = v40 + 1;
              }

              if (v207 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
              {
                v42 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v42 = v41;
              }

              if (v42)
              {
                sub_221122DC8(__p, v42);
              }

              *(8 * v40) = v38;
              v54 = (8 * v40 + 8);
              v55 = (8 * v40 - (__p[1] - __p[0]));
              memcpy(v55, __p[0], __p[1] - __p[0]);
              v56 = __p[0];
              __p[0] = v55;
              __p[1] = v54;
              v207 = 0;
              if (v56)
              {
                operator delete(v56);
              }

              v29 = v199;
            }

            __p[1] = v54;
          }
        }

        if (objc_msgSend_gridKind(v29, v31, v32, v33))
        {
          if (v30 >= 0xFFFFFFFF)
          {
            v60 = MEMORY[0x277D81150];
            v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "TSCEASTElement *TSCEPartialEvalRewriter::bakeForSingleValue(TSCEValue *__strong, int, TSCEFunctionSpec *__strong, BOOL)", v59);
            v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEPartialEvalRewriter.mm", v63);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v65, v61, v64, 743, 0, "too many arguments to fit in a list node!");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68);
          }

          TSCEASTRewriter::createList(this, __p, v58, v59);
        }

        v164 = objc_msgSend_dimensions(v29, v57, v58, v59);
        TSCEASTRewriter::createArray(this, v164, __p, v165);
      }

      v15 = 0;

      goto LABEL_56;
    case 2u:
      v133 = objc_msgSend_asBooleanValue(v8, v12, v13, v14);
      v18 = v133;
      if (v133)
      {
        v137 = objc_msgSend_asBool(v133, v134, v135, v136);
        TSCEASTIteratorBase::createBool(this, v137, v138, v139);
      }

      goto LABEL_54;
    case 3u:
      v140 = objc_msgSend_asDateValue(v8, v12, v13, v14);
      v18 = v140;
      if (v140)
      {
        objc_msgSend_format(v140, v141, v142, v143);
        if (*&v202[8] == 261)
        {
          objc_msgSend_format(v18, v144, v145, v146);
          v150 = TSCEFormat::dateTimeFormat(v202, v147, v148, v149);
          v154 = objc_msgSend_date(v18, v151, v152, v153);
          v158 = objc_msgSend_formatString(v150, v155, v156, v157);
          TSCEASTIteratorBase::createDate(this, v154, v158, 0, 1);
        }

        v193 = objc_msgSend_date(v18, v144, v145, v146);
        TSCEASTIteratorBase::createDate(this, v193, 0, 0, 1);
      }

      goto LABEL_54;
    case 5u:
      v79 = objc_msgSend_asNumberValue(v8, v12, v13, v14);
      v18 = v79;
      if (v79)
      {
        *v202 = objc_msgSend_decimalRepresentation(v79, v80, v81, v82);
        *&v202[8] = v83;
        TSCEASTIteratorBase::createNumber(this, v202, v84, v85);
      }

      goto LABEL_54;
    case 6u:
      v112 = objc_msgSend_asReferenceValue(v8, v12, v13, v14);
      v18 = v112;
      if (!v112)
      {
        goto LABEL_54;
      }

      if (!a5)
      {
        v167 = objc_msgSend_range(v112, v113, v114, v115);
        v169 = v168;
        __p[0] = v167;
        __p[1] = v168;
        v172 = objc_msgSend_preserveFlags(v18, v168, v170, v171);
        LOBYTE(v209._row) = v172;
        v176 = objc_msgSend_tableUID(v18, v173, v174, v175);
        v180 = v176;
        v181 = v177;
        if (v167 != v169 || ((v169 ^ v167) & 0x101FFFF00000000) != 0 || ((v172 ^ (v172 >> 2)) & 3) != 0)
        {
          TSCERangeCoordinate::setPreserveFlags(__p, &v209);
          v182 = [TSCERelativeTractRef alloc];
          *v202 = *__p;
          *&v202[16] = v180;
          *&v202[24] = v181;
          v186 = objc_msgSend_containingCell(this[25], v183, v184, v185);
          v188 = objc_msgSend_initWithRangeRef_hostCell_(v182, v187, v202, v186);
          v192 = objc_msgSend_containingTable(this[25], v189, v190, v191);
          TSCEASTIteratorBase::createColonTractRef(this, v188, 0, v192);
        }

        *v202 = v167;
        *&v202[8] = v176;
        *&v202[16] = v177;
        v194 = objc_msgSend_containingTable(this[25], v177, v178, v179);
        v198 = objc_msgSend_containingCell(this[25], v195, v196, v197);
        TSCEASTIteratorBase::createReferenceWithHostCell(this, v202, &v209, v194, v198, 0);
      }

      v17 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v112, v113, this[25], 0);
      v15 = TSCEPartialEvalRewriter::bakeForSingleValue(this, v17, a3, v201, 1);
LABEL_56:

      goto LABEL_57;
    case 7u:
      if (objc_msgSend_isRichTextValue(v8, v12, v13, v14))
      {
        v119 = objc_msgSend_asRichTextValue(v8, v116, v117, v118);
        v18 = v119;
        if (v119)
        {
          v123 = objc_msgSend_asString(v119, v120, v121, v122);
          TSCEASTIteratorBase::createString(this, v123);
        }
      }

      else
      {
        v159 = objc_msgSend_asStringValue(v8, v116, v117, v118);
        v18 = v159;
        if (v159)
        {
          v163 = objc_msgSend_asString(v159, v160, v161, v162);
          TSCEASTIteratorBase::createString(this, v163);
        }
      }

      goto LABEL_54;
    case 9u:
      TSCEASTIteratorBase::createReferenceError(this, v12, v13, v14);
    case 0xAu:
      TSCEASTIteratorBase::createTagOnlyOp(this, 0x17, v13, v14);
    case 0xCu:
      TSCEASTIteratorBase::createToken(this, 1, v13, v14);
    case 0xDu:
      for (j = objc_msgSend_isThunk(v8, v12, v13, v14); j; j = objc_msgSend_isThunk(v106, v107, v108, v109))
      {
        v87 = this[25];
        v91 = objc_msgSend_copy(v87, v88, v89, v90);

        v95 = objc_msgSend_asThunkValue(v8, v92, v93, v94);
        v96 = [TSCEFormulaObject alloc];
        v100 = objc_msgSend_ast(v95, v97, v98, v99);
        v103 = objc_msgSend_initWithNodeArray_(v96, v101, v100, v102);
        v106 = objc_msgSend_evaluateWithContext_(v103, v104, v91, v105);

        v8 = v106;
      }

      v15 = TSCEPartialEvalRewriter::bakeForSingleValue(this, v8, a3, v201, a5);
      break;
    case 0xEu:
      v74 = objc_msgSend_asCategoryRefValue(v8, v12, v13, v14);
      v18 = v74;
      if (v74)
      {
        v78 = objc_msgSend_categoryRef(v74, v75, v76, v77);
        TSCEASTIteratorBase::createCategoryRef(this, v78);
      }

      goto LABEL_54;
    case 0x11u:
      v69 = objc_msgSend_asViewTractRefValue(v8, v12, v13, v14);
      v18 = v69;
      if (v69)
      {
        v73 = objc_msgSend_viewTractRef(v69, v70, v71, v72);
        TSCEASTIteratorBase::createViewTractRef(this, v73);
      }

LABEL_54:
      v15 = 0;
LABEL_57:

      break;
    case 0x13u:
      v124 = MEMORY[0x277D81150];
      v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "TSCEASTElement *TSCEPartialEvalRewriter::bakeForSingleValue(TSCEValue *__strong, int, TSCEFunctionSpec *__strong, BOOL)", v14);
      v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEPartialEvalRewriter.mm", v127);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v124, v129, v125, v128, 693, 0, "Cannot bake a TSCEFunctorValue down to a simple value");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v130, v131, v132);
      v15 = 0;
      break;
    default:
      break;
  }

  return v15;
}

void TSCEPartialEvalRewriter::bakeChildNodesToValues(id *this, TSCEASTElementWithChildren *a2, int a3, TSCEFunctionSpec *a4, _BOOL4 a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v30 = this[28];
  v32 = objc_msgSend_children(v30, v9, v10, v11);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = objc_msgSend_copy(v32, v12, v13, v14);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v33, v37, 16);
  if (v19)
  {
    LODWORD(v20) = 0;
    v21 = *v34;
    do
    {
      v22 = 0;
      v20 = v20;
      do
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = objc_msgSend_value(*(*(&v33 + 1) + 8 * v22), v16, v17, v18);
        v24 = TSCEPartialEvalRewriter::bakeForSingleValue(this, v23, v20, v8, a5);
        if (v24)
        {
          TSCEASTElementWithChildren::setChildAtIndex(a2, v24, v20, this);
          v25 = [TSCEPartialResult alloc];
          v28 = objc_msgSend_initWithValue_(v25, v26, v23, v27);
          objc_msgSend_setObject_atIndexedSubscript_(v32, v29, v28, v20);
        }

        ++v20;
        ++v22;
      }

      while (v19 != v22);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v33, v37, 16);
    }

    while (v19);
  }
}

id TSCEArgumentAccessor::TSUFormattedDateValueFromDateString(TSCEArgumentAccessor *this, NSString *a2, TSCEEvaluationContext *a3)
{
  v4 = this;
  v8 = objc_msgSend_locale(a2, v5, v6, v7);
  v22 = 0;
  v9 = TSUCreateDateFromString();
  v10 = 0;

  if (v9)
  {
    v14 = objc_alloc(MEMORY[0x277D80658]);
    v17 = objc_msgSend_initWithFormatString_(v14, v15, v10, v16);
    TSCEFormat::TSCEFormat(&v21, v17, 0);
    v19 = objc_msgSend_dateValue_format_(TSCEDateValue, v18, v9, &v21);
  }

  else
  {
    v19 = objc_msgSend_nilValue(TSCENilValue, v11, v12, v13);
  }

  return v19;
}

uint64_t TSCEArgumentAccessor::shouldEarlyReturnForEmpty(id *a1, TSCEGridAccessContext *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_valueIsEmptyWithContext_(*a1, a2, a2->var0, a4))
  {
    v9 = objc_msgSend_nativeType(*a1, v6, v7, v8);
    v13 = TSCEGridAccessContext::argSpec(a2, v10, v11, v12);
    v14 = v13;
    if (v13)
    {
      LODWORD(v13) = objc_msgSend_argumentType(v13, v6, v7, v8);
    }

    if (v9 != 6 || v13 != -1 && v13 != 6 && (!v14 || !objc_msgSend_referenceForGeometryOnly(v14, v6, v7, v8)))
    {
      goto LABEL_10;
    }
  }

  result = objc_msgSend_isNil(*a1, v6, v7, v8);
  if (result)
  {
LABEL_10:
    *a1 = objc_msgSend_nilValue(TSCENilValue, v6, v7, v8);
    return 1;
  }

  return result;
}

id TSCEArgumentAccessor::boundsCheckAndCoerce(void *a1, TSCEGridAccessContext *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  if ((objc_msgSend_isNil(a1, a2, a3, a4) & 1) != 0 || (v11 = TSCEGridAccessContext::argSpec(a2, v8, v9, v10)) == 0)
  {
LABEL_6:
    v19 = a1;
    goto LABEL_7;
  }

  v15 = v11;
  v16 = objc_msgSend_argumentType(v11, v12, v13, v14);
  if (v16 != 8)
  {
    if (v16 == 5)
    {
      var1 = a2->var1;
      v18 = a2->var0;
      *a4 = TSCEArgumentAccessor::checkBoundsAndUnits(a1, v18, var1, v15, a2->var3, v5);
    }

    goto LABEL_6;
  }

  v19 = TSCEArgumentAccessor::coerceValueToNumberOrDate(a1, a2->var0, a2->var1, a2->var3, v5, a4);
LABEL_7:

  return v19;
}

id TSCEArgumentAccessor::checkBoundsAndUnits(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, int a6)
{
  v11 = a1;
  objc_msgSend_minValue(a4, v12, v13, v14);
  v16 = v15;
  objc_msgSend_maxValue(a4, v17, v18, v19);
  v21 = v20;
  v25 = objc_msgSend_disallowCurrency(a4, v22, v23, v24);
  v29 = objc_msgSend_disallowDuration(a4, v26, v27, v28);
  v33 = v29;
  v34 = v16 != INFINITY;
  if (v21 != INFINITY)
  {
    v34 = 1;
  }

  if (((v34 | v25 | v29) & 1) == 0)
  {
    v42 = objc_msgSend_argumentType(a4, v30, v31, v32);
    v43 = 0;
    if (a6 != 5 && v42 != 15)
    {
      v91 = 0;
      v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v11, v41, a2, a3, a5, &v91);
      v43 = v91;
    }

    v45 = v43;
    goto LABEL_78;
  }

  v93 = 0;
  v35 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v11, v30, a2, a3, a5, &v93);
  v36 = v93;
  if (v36)
  {
    v40 = v36;

    goto LABEL_79;
  }

  hasUnits = objc_msgSend_hasUnits(v35, v37, v38, v39);
  if (hasUnits)
  {
    v50 = objc_msgSend_dimension(v35, v46, v47, v48);
    if (v50 != 4)
    {

      goto LABEL_64;
    }
  }

  v92._decimal.w[0] = objc_msgSend_decimalRepresentation(v35, v46, v47, v48);
  v92._decimal.w[1] = v51;
  TSUDecimal::doubleValue(&v92);
  v53 = v52;

  if (!objc_msgSend_integerOnly(a4, v54, v55, v56))
  {
LABEL_28:
    if (v16 == INFINITY || v21 == INFINITY)
    {
      if (v16 == INFINITY || v21 != INFINITY)
      {
        v50 = 4;
        if (v16 != INFINITY || v21 == INFINITY)
        {
LABEL_64:
          if ((v25 | v33) & hasUnits)
          {
            if (v50 == 4)
            {
              v84 = v25;
            }

            else
            {
              v84 = 0;
            }

            if (v84 == 1)
            {
              v85 = objc_msgSend_functionName(a3, v57, v58, v59);
              v87 = objc_msgSend_currencyNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v86, v85, (a5 + 1));
LABEL_75:
              v83 = v87;

              goto LABEL_77;
            }

            if (v50)
            {
              v88 = 0;
            }

            else
            {
              v88 = v33;
            }

            if (v88 == 1)
            {
              v85 = objc_msgSend_functionName(a3, v57, v58, v59);
              v87 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v89, v85, (a5 + 1));
              goto LABEL_75;
            }
          }

          v83 = 0;
          goto LABEL_77;
        }

        if (objc_msgSend_maxInclusive(a4, v57, v58, v59))
        {
          if (v53 <= v21)
          {
            goto LABEL_64;
          }

          v73 = objc_msgSend_functionName(a3, v57, v58, v59);
          v75 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_upperBound_upperBoundInclusive_(TSCEError, v78, (a5 + 1), v73, 1, v21);
        }

        else
        {
          if (v53 < v21)
          {
            goto LABEL_64;
          }

          v73 = objc_msgSend_functionName(a3, v57, v58, v59);
          v75 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_upperBound_upperBoundInclusive_(TSCEError, v82, (a5 + 1), v73, 0, v21);
        }

        goto LABEL_62;
      }

      if (objc_msgSend_minInclusive(a4, v57, v58, v59))
      {
        if (v53 >= v16)
        {
          goto LABEL_63;
        }

        v73 = objc_msgSend_functionName(a3, v57, v58, v59);
        v75 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v76, (a5 + 1), v73, 1, v16);
      }

      else
      {
        if (v53 > v16)
        {
          goto LABEL_63;
        }

        v73 = objc_msgSend_functionName(a3, v57, v58, v59);
        v75 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v80, (a5 + 1), v73, 0, v16);
      }
    }

    else
    {
      if (objc_msgSend_minInclusive(a4, v57, v58, v59) && objc_msgSend_maxInclusive(a4, v57, v58, v59))
      {
        if (v53 < v16 || v53 > v21)
        {
          v73 = objc_msgSend_functionName(a3, v57, v58, v59);
          v75 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v74, (a5 + 1), v73, 1, 1, v16, v21);
          goto LABEL_62;
        }

LABEL_63:
        v50 = 4;
        goto LABEL_64;
      }

      if (objc_msgSend_minInclusive(a4, v57, v58, v59) && (objc_msgSend_maxInclusive(a4, v57, v58, v59) & 1) == 0)
      {
        if (v53 >= v16 && v53 < v21)
        {
          goto LABEL_63;
        }

        v73 = objc_msgSend_functionName(a3, v57, v58, v59);
        v75 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v81, (a5 + 1), v73, 1, 0, v16, v21);
      }

      else if ((objc_msgSend_minInclusive(a4, v57, v58, v59) & 1) != 0 || !objc_msgSend_maxInclusive(a4, v57, v58, v59))
      {
        if (v53 > v16 && v53 < v21)
        {
          goto LABEL_63;
        }

        v73 = objc_msgSend_functionName(a3, v57, v58, v59);
        v75 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v79, (a5 + 1), v73, 0, 0, v16, v21);
      }

      else
      {
        if (v53 > v16 && v53 <= v21)
        {
          goto LABEL_63;
        }

        v73 = objc_msgSend_functionName(a3, v57, v58, v59);
        v75 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v77, (a5 + 1), v73, 0, 1, v16, v21);
      }
    }

LABEL_62:
    v83 = v75;

    if (v83)
    {
LABEL_77:
      v45 = v83;
      goto LABEL_78;
    }

    goto LABEL_63;
  }

  if (v16 == INFINITY)
  {
    goto LABEL_27;
  }

  if (objc_msgSend_minInclusive(a4, v57, v58, v59))
  {
    if (v53 < v16)
    {
      v63 = objc_msgSend_functionName(a3, v57, v58, v59);
      if (v21 == INFINITY)
      {
        objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v60, (a5 + 1), v63, 1, v16);
      }

      else
      {
        v64 = objc_msgSend_maxInclusive(a4, v60, v61, v62);
        objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v65, (a5 + 1), v63, 1, v64, v16, v21);
      }

      goto LABEL_18;
    }

LABEL_27:
    v53 = trunc(v53);
    goto LABEL_28;
  }

  if (v53 > v16)
  {
    goto LABEL_27;
  }

  v63 = objc_msgSend_functionName(a3, v57, v58, v59);
  if (v21 == INFINITY)
  {
    objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v67, (a5 + 1), v63, 0, v16);
  }

  else
  {
    v70 = objc_msgSend_maxInclusive(a4, v67, v68, v69);
    objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v71, (a5 + 1), v63, 0, v70, v16, v21);
  }

  v66 = LABEL_18:;
  v72 = v66;

  if (!v72)
  {
    goto LABEL_27;
  }

  v45 = v72;
LABEL_78:
  v40 = v45;
LABEL_79:

  return v40;
}

id TSCEArgumentAccessor::coerceValueToNumberOrDate(void *a1, NSString *a2, void *a3, uint64_t a4, unsigned int a5, void *a6)
{
  if (a5 > 0x10)
  {
    goto LABEL_9;
  }

  if (((1 << a5) & 0x1002B) != 0)
  {
    v11 = a1;
    goto LABEL_4;
  }

  if (a5 != 9)
  {
LABEL_9:
    v16 = objc_msgSend_argumentSpecForIndex_(a3, a2, a4, a4);
    if (objc_msgSend_isOptional(v16, v17, v18, v19) && (objc_msgSend_isTokenOrEmptyArg(a1, v20, v21, v22) & 1) != 0)
    {
      v11 = 0;
    }

    else
    {
      v31 = 0;
      v23 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(a1, v20, a2, a3, a4, &v31);
      v25 = TSCEArgumentAccessor::TSUFormattedDateValueFromDateString(v23, a2, v24);
      if (objc_msgSend_isNil(v25, v26, v27, v28))
      {
        v30 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(a1, v29, a2, a3, a4, a6);
      }

      else
      {
        v30 = v25;
      }

      v11 = v30;
    }

    goto LABEL_4;
  }

  v13 = objc_msgSend_errorWithContext_(a1, a2, a2, a4);
  *a6 = v13;
  v11 = objc_msgSend_errorValue_(TSCEErrorValue, v14, v13, v15);

LABEL_4:

  return v11;
}

uint64_t TSCEArgumentAccessor::isFromAReference(TSCEArgumentAccessor *this, TSCEValue *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v6 = objc_msgSend_nativeType(this, a2, a3, a4);
  if (v6 == 6)
  {
    v10 = 1;
  }

  else
  {
    v10 = v4;
  }

  if (v6 == 7 && v4)
  {
    v11 = objc_msgSend_asStringValue(this, v7, v8, v9);
    v15 = v11;
    if (v11)
    {
      v10 = v10 & (objc_msgSend_isLiteralString(v11, v12, v13, v14) ^ 1);
    }
  }

  return v10;
}

uint64_t TSCEArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual TSCEError *TSCEArgumentAccessor::convertToNilIfIgnoring(TSCEValue *__autoreleasing *, TSCEGridAccessContext &, BOOL)", a4);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEArgumentAccessor.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 319, 0, "Should be unreachable now - each derived type needs to implement its specific accessing, context: %d", *(a1 + 8));

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return 0;
}

uint64_t TSCEArgumentAccessor::argAccessorForContext(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (qword_27CFB54D8 != -1)
  {
    sub_2216F7AB4();
  }

  switch(a1)
  {
    case 0:
      result = qword_27CFB54E0;
      break;
    case 1:
      result = qword_27CFB54F8;
      break;
    case 2:
      result = qword_27CFB5500;
      break;
    case 3:
      result = qword_27CFB5508;
      break;
    case 4:
      result = qword_27CFB5518;
      break;
    case 5:
      result = qword_27CFB5510;
      break;
    case 6:
      result = qword_27CFB5520;
      break;
    case 7:
      result = qword_27CFB5528;
      break;
    case 8:
      result = qword_27CFB5530;
      break;
    case 9:
      result = qword_27CFB5538;
      break;
    case 10:
      result = qword_27CFB5540;
      break;
    case 11:
      result = qword_27CFB5548;
      break;
    case 12:
      result = qword_27CFB5550;
      break;
    case 13:
      result = qword_27CFB5558;
      break;
    case 14:
      result = qword_27CFB54E8;
      break;
    case 15:
      result = qword_27CFB54F0;
      break;
    case 16:
      result = qword_27CFB5560;
      break;
    default:
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "static TSCEArgumentAccessor *TSCEArgumentAccessor::argAccessorForContext(TSCEArgumentContext)", a4);
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEArgumentAccessor.mm", v9);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 404, 0, "No argument accessor class for context: %d", a1);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
      result = 0;
      break;
  }

  return result;
}

id TSCENoCheckArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, id *a2, TSCEGridAccessContext *a3, uint64_t a4)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4) & 1) != 0 || (objc_msgSend_isNil(*a2, v6, v7, v8))
  {
    v9 = 0;
  }

  else
  {
    v10 = a3->var0;
    v11 = *a2;
    v20 = 0;
    v13 = objc_msgSend_deepType_outError_(v11, v12, v10, &v20);
    v14 = v20;
    v15 = *a2;
    v19 = v14;
    v16 = TSCEArgumentAccessor::boundsCheckAndCoerce(v15, a3, v13, &v19);
    v9 = v19;

    v17 = v16;
    *a2 = v16;
  }

  return v9;
}

id TSCEAndArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, id *a2, TSCEGridAccessContext *a3, TSCEValue *a4)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4))
  {
    v7 = 0;
    goto LABEL_23;
  }

  v8 = a3->var0;
  v12 = objc_msgSend_nativeType(*a2, v9, v10, v11);
  v13 = *a2;
  v43 = 0;
  v15 = objc_msgSend_deepType_outError_(v13, v14, v8, &v43);
  v16 = v43;
  if (TSCEArgumentAccessor::isFromAReference(*a2, a4, v17, v18))
  {
    if ((v15 & 0xFFFFFFFB) == 3)
    {
      *a2 = objc_msgSend_nilValue(TSCENilValue, v19, v20, v21);
    }

    goto LABEL_16;
  }

  v22 = objc_msgSend_locale(v8, v19, v20, v21);
  var1 = a3->var1;
  if (v12 == 3)
  {
    v31 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v19, *a2, v8, a3->var1, a3->var3);

    v16 = v31;
    goto LABEL_16;
  }

  if (v12 != 7)
  {
LABEL_16:
    isNil = objc_msgSend_isNil(*a2, v19, v20, v21);
    if (v16)
    {
      v36 = 1;
    }

    else
    {
      v36 = isNil;
    }

    if ((v36 & 1) == 0)
    {
      v37 = *a2;
      v41 = 0;
      v38 = TSCEArgumentAccessor::boundsCheckAndCoerce(v37, a3, v15, &v41);
      v16 = v41;
      v39 = v38;
      *a2 = v38;
    }

    v7 = v16;
    goto LABEL_22;
  }

  v24 = v22;
  v25 = *a2;
  var3 = a3->var3;
  v42 = v16;
  v27 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v25, v19, v8, var1, var3, &v42);
  v28 = v42;

  if (!v28)
  {
    if (objc_msgSend_localizedStringIsTrue_(v24, v29, v27, v30) & 1) != 0 || (objc_msgSend_localizedStringIsFalse_(v24, v32, v27, v33))
    {
      v16 = 0;
    }

    else
    {
      v16 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v34, *a2, v8, var1, a3->var3);
    }

    goto LABEL_16;
  }

  v7 = v28;

LABEL_22:
LABEL_23:

  return v7;
}

id TSCESumArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, id *a2, TSCEGridAccessContext *a3, TSCEValue *a4)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4))
  {
    v7 = 0;
    goto LABEL_30;
  }

  v8 = a3->var0;
  v12 = objc_msgSend_nativeType(*a2, v9, v10, v11);
  v13 = *a2;
  v58 = 0;
  v15 = objc_msgSend_deepType_outError_(v13, v14, v8, &v58);
  v16 = v58;
  if (TSCEArgumentAccessor::isFromAReference(*a2, a4, v17, v18))
  {
    if (v15 == 7 || v15 == 2)
    {
      *a2 = objc_msgSend_nilValue(TSCENilValue, v19, v20, v21);
    }

    goto LABEL_23;
  }

  v22 = objc_msgSend_locale(v8, v19, v20, v21);
  var1 = a3->var1;
  if (v12 == 2)
  {
    v31 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v19, *a2, v8, a3->var1, a3->var3);

    v16 = v31;
    goto LABEL_23;
  }

  if (v12 != 7)
  {
LABEL_23:
    isNil = objc_msgSend_isNil(*a2, v19, v20, v21);
    if (v16)
    {
      v50 = 1;
    }

    else
    {
      v50 = isNil;
    }

    if ((v50 & 1) == 0)
    {
      v51 = *a2;
      v55 = 0;
      v52 = TSCEArgumentAccessor::boundsCheckAndCoerce(v51, a3, v15, &v55);
      v16 = v55;
      v53 = v52;
      *a2 = v52;
    }

    v7 = v16;
    goto LABEL_29;
  }

  v24 = *a2;
  var3 = a3->var3;
  v57 = v16;
  v26 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v24, v19, v8, var1, var3, &v57);
  v27 = v57;

  if (!v27)
  {
    if (objc_msgSend_length(v26, v28, v29, v30))
    {
      v38 = TSUCreateDateFromString();
      if (v38)
      {
        *a2 = objc_msgSend_dateValue_(TSCEDateValue, v35, v38, v37);
        v15 = 3;
      }

      else
      {
        v39 = objc_msgSend_asStringValue(*a2, v35, v36, v37);
        v41 = v39;
        if (v39)
        {
          v42 = a3->var3;
          v56 = 0;
          v43 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v39, v40, v8, var1, v42, &v56);
          v44 = v56;
          v45 = v43;
          *a2 = v43;
          if (v44)
          {
            *a2 = objc_msgSend_nilValue(TSCENilValue, v46, v47, v48);
          }

          else
          {
            v15 = 5;
          }
        }
      }
    }

    else
    {
      *a2 = objc_msgSend_nilValue(TSCENilValue, v32, v33, v34);
    }

    v16 = 0;
    goto LABEL_23;
  }

  v7 = v27;

LABEL_29:
LABEL_30:

  return v7;
}

id TSCEProductArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, id *a2, TSCEGridAccessContext *a3, TSCEValue *a4)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4))
  {
    v7 = 0;
    goto LABEL_24;
  }

  v8 = a3->var0;
  v12 = objc_msgSend_nativeType(*a2, v9, v10, v11);
  v13 = *a2;
  v51 = 0;
  v15 = objc_msgSend_deepType_outError_(v13, v14, v8, &v51);
  v16 = v51;
  if (TSCEArgumentAccessor::isFromAReference(*a2, a4, v17, v18))
  {
    if (v15 == 7 || v15 == 2)
    {
LABEL_16:
      *a2 = objc_msgSend_nilValue(TSCENilValue, v19, v20, v21);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  var1 = a3->var1;
  v23 = objc_msgSend_locale(v8, v19, v20, v21);
  if (v12 <= 6u)
  {
    if (v12 == 2 || v12 == 3)
    {
      v31 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v19, *a2, v8, var1, a3->var3);

      v16 = v31;
    }

    goto LABEL_17;
  }

  if (v12 == 10)
  {
    goto LABEL_16;
  }

  if (v12 != 7)
  {
LABEL_17:
    isNil = objc_msgSend_isNil(*a2, v19, v20, v21);
    if (v16)
    {
      v33 = 1;
    }

    else
    {
      v33 = isNil;
    }

    if ((v33 & 1) == 0)
    {
      v34 = *a2;
      v48 = 0;
      v35 = TSCEArgumentAccessor::boundsCheckAndCoerce(v34, a3, v15, &v48);
      v16 = v48;
      v36 = v35;
      *a2 = v35;
    }

    v7 = v16;
    goto LABEL_23;
  }

  v24 = *a2;
  var3 = a3->var3;
  v50 = v16;
  v26 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v24, v19, v8, var1, var3, &v50);
  v27 = v50;

  if (!v27)
  {
    if (objc_msgSend_length(v26, v28, v29, v30))
    {
      v43 = TSUCreateDateFromString();
      if (v43)
      {
        v44 = objc_msgSend_dateValue_(TSCEDateValue, v41, v43, v42);
        v16 = 0;
        v15 = 3;
      }

      else
      {
        v45 = *a2;
        v46 = a3->var3;
        v49 = 0;
        v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v45, v41, v8, var1, v46, &v49);
        v16 = v49;
        v15 = 5;
      }

      v47 = v44;
      *a2 = v44;
    }

    else
    {
      objc_msgSend_nilValue(TSCENilValue, v38, v39, v40);
      v15 = 0;
      *a2 = v16 = 0;
    }

    goto LABEL_17;
  }

  v7 = v27;

LABEL_23:
LABEL_24:

  return v7;
}

id TSCEModeArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, id *a2, uint64_t a3, TSCEValue *a4)
{
  v7 = *a3;
  v11 = objc_msgSend_nativeType(*a2, v8, v9, v10);
  v12 = *a2;
  v75 = 0;
  v14 = objc_msgSend_deepType_outError_(v12, v13, v7, &v75);
  v15 = v75;
  v19 = TSCEGridAccessContext::argSpec(a3, v16, v17, v18);
  v23 = v19;
  if (v19)
  {
    v24 = objc_msgSend_argumentType(v19, v20, v21, v22);
  }

  else
  {
    v24 = 0;
  }

  if (!objc_msgSend_valueIsEmptyWithContext_(*a2, v20, v7, v22))
  {
    v28 = v11;
    goto LABEL_18;
  }

  if (v11 == 6)
  {
    v28 = 6;
    if (v24 == 6 || v24 == 255)
    {
LABEL_18:
      if (objc_msgSend_isNil(*a2, v25, v26, v27))
      {
        objc_msgSend_nilValue(TSCENilValue, v34, v35, v36);
        *a2 = v37 = 0;
        goto LABEL_46;
      }

      v38 = TSCEArgumentAccessor::isFromAReference(*a2, a4, v35, v36);
      v42 = *(a3 + 8);
      if (v38)
      {
        if (v14 != 7 && v14 != 2)
        {
          if (!v14)
          {
            v43 = objc_msgSend_nilValue(TSCENilValue, v39, v40, v41);
            v14 = 0;
LABEL_34:
            *a2 = v43;
            goto LABEL_39;
          }

          goto LABEL_39;
        }

        if (TSCERangeRef::isReferenceRange((a3 + 40)))
        {
          if (v14 == 7 || v14 == 2)
          {
            v43 = objc_msgSend_nilValue(TSCENilValue, v39, v40, v41);
            goto LABEL_34;
          }

LABEL_39:
          isNil = objc_msgSend_isNil(*a2, v39, v40, v41);
          if (v15)
          {
            v56 = 1;
          }

          else
          {
            v56 = isNil;
          }

          if ((v56 & 1) == 0)
          {
            v57 = *a2;
            v71 = 0;
            v58 = TSCEArgumentAccessor::boundsCheckAndCoerce(v57, a3, v14, &v71);
            v15 = v71;
            v59 = v58;
            *a2 = v58;
          }

          v33 = v15;
          goto LABEL_45;
        }

        v53 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v39, *a2, v7, v42, *(a3 + 24));
      }

      else if (v28 == 2)
      {
        v53 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v39, *a2, v7, *(a3 + 8), *(a3 + 24));
      }

      else
      {
        if (v28 != 10)
        {
          if (v28 == 7)
          {
            v44 = objc_msgSend_locale(v7, v39, v40, v41);
            v45 = *a2;
            v46 = *(a3 + 24);
            v73 = v15;
            v48 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v45, v47, v7, v42, v46, &v73);
            v49 = v73;

            if (v49)
            {
              v15 = v49;

              v37 = v15;
              goto LABEL_46;
            }

            if (objc_msgSend_length(v48, v50, v51, v52))
            {
              v66 = TSUCreateDateFromString();
              if (v66)
              {
                v67 = objc_msgSend_dateValue_(TSCEDateValue, v64, v66, v65);
                v15 = 0;
                v14 = 3;
              }

              else
              {
                v68 = *a2;
                v69 = *(a3 + 24);
                v72 = 0;
                v67 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v68, v64, v7, v42, v69, &v72);
                v15 = v72;
                v14 = 5;
              }

              v70 = v67;
              *a2 = v67;
            }

            else
            {
              objc_msgSend_nilValue(TSCENilValue, v61, v62, v63);
              v14 = 0;
              *a2 = v15 = 0;
            }
          }

          goto LABEL_39;
        }

        v53 = objc_msgSend_emptyArgumentError(TSCEError, v39, v40, v41);
      }

      v54 = v53;

      v15 = v54;
      goto LABEL_39;
    }
  }

  if (TSCERangeRef::isReferenceRange((a3 + 40)))
  {
LABEL_13:
    if (v11 == 6 && v23 && (objc_msgSend_referenceForGeometryOnly(v23, v25, v26, v27) & 1) != 0)
    {
      v28 = 6;
    }

    else
    {
      objc_msgSend_nilValue(TSCENilValue, v25, v26, v27);
      *a2 = v28 = 0;
    }

    goto LABEL_18;
  }

  v29 = objc_msgSend_functionName(*(a3 + 8), v25, v26, v27);
  v30 = *(a3 + 56);
  v74[0] = *(a3 + 40);
  v74[1] = v30;
  v32 = objc_msgSend_referenceToEmptyCellErrorForFunctionName_rangeReference_(TSCEError, v31, v29, v74);

  if (!v32)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v33 = v32;
LABEL_45:
  v15 = v33;
  v37 = v33;
LABEL_46:

  return v37;
}

id TSCEGcdArgumentAccessor::convertToNilIfIgnoring(int a1, TSCEArgumentAccessor **a2, TSCEGridAccessContext *a3, TSCEValue *a4)
{
  v6 = TSCEArgumentAccessor::isFromAReference(*a2, a4, a3, a4);
  v7 = a3->var0;
  v11 = objc_msgSend_nativeType(*a2, v8, v9, v10);
  v12 = *a2;
  v62 = 0;
  v14 = objc_msgSend_deepType_outError_(v12, v13, v7, &v62);
  v15 = v62;
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, v16, v17))
  {
    *a2 = objc_msgSend_nilValue(TSCENilValue, v18, v19, v20);
  }

  var1 = a3->var1;
  if (v6)
  {
    if (TSCERangeRef::isReferenceRange(&a3->var11))
    {
      if (objc_msgSend_isNil(*a2, v18, v19, v20))
      {
        v22 = objc_msgSend_zero(TSCENumberValue, v18, v19, v20);
LABEL_22:
        *a2 = v22;
        v14 = 5;
        goto LABEL_23;
      }

      if (v14 == 7)
      {
        v34 = objc_msgSend_locale(v7, v18, v19, v20);
        TSUDecimal::operator=();
        v35 = MEMORY[0x277D81290];
        v36 = *a2;
        var3 = a3->var3;
        v60 = v15;
        v39 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v36, v38, v7, var1, var3, &v60);
        v40 = v60;

        v42 = objc_msgSend_numberValueFromString_locale_outDecimalValue_(v35, v41, v39, v34, v61);
        if (v42)
        {
          v15 = v40;
        }

        else
        {
          v49 = *a2;
          v50 = a3->var1;
          v15 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v51, v49, v7, v50, a3->var3);
        }

        v22 = objc_msgSend_zero(TSCENumberValue, v43, v44, v45);
        goto LABEL_22;
      }

      if ((v14 & 0xFFFFFFFE) != 2)
      {
        goto LABEL_23;
      }

      v46 = *a2;
      v47 = a3->var1;
      v29 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v48, v46, v7, v47, a3->var3);

LABEL_19:
      v15 = v29;
      goto LABEL_23;
    }

    if (!v11)
    {
      *a2 = objc_msgSend_nilValue(TSCENilValue, v18, v19, v20);
    }
  }

  else
  {
    if (v11 == 7)
    {
      v23 = objc_msgSend_locale(v7, v18, v19, v20);
      TSUDecimal::operator=();
      v24 = MEMORY[0x277D81290];
      v25 = *a2;
      v26 = a3->var3;
      v59 = v15;
      v28 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v25, v27, v7, var1, v26, &v59);
      v29 = v59;

      v31 = objc_msgSend_numberValueFromString_locale_outDecimalValue_(v24, v30, v28, v23, v61);
      if ((v31 & 1) == 0)
      {
        v32 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v18, *a2, v7, var1, a3->var3);

        v29 = v32;
      }

      goto LABEL_19;
    }

    if ((v11 & 0xFFFFFFFE) == 2)
    {
      v33 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v18, *a2, v7, a3->var1, a3->var3);

      v15 = v33;
    }
  }

LABEL_23:
  isNil = objc_msgSend_isNil(*a2, v18, v19, v20);
  if (v15)
  {
    v53 = 1;
  }

  else
  {
    v53 = isNil;
  }

  if ((v53 & 1) == 0)
  {
    v54 = *a2;
    v58 = 0;
    v55 = TSCEArgumentAccessor::boundsCheckAndCoerce(v54, a3, v14, &v58);
    v15 = v58;
    v56 = v55;
    *a2 = v55;
  }

  return v15;
}

id TSCEStatArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, id *a2, TSCEGridAccessContext *a3, TSCEValue *a4)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4))
  {
    v7 = 0;
    goto LABEL_25;
  }

  v8 = a3->var0;
  v12 = objc_msgSend_nativeType(*a2, v9, v10, v11);
  v13 = *a2;
  v98 = 0;
  v15 = objc_msgSend_deepType_outError_(v13, v14, v8, &v98);
  v16 = v98;
  v20 = TSCEGridAccessContext::argSpec(a3, v17, v18, v19);
  if (v20)
  {
    v24 = objc_msgSend_argumentContext(v20, v21, v22, v23);
  }

  else
  {
    v24 = 0;
  }

  v25 = TSCEArgumentAccessor::isFromAReference(*a2, a4, v22, v23);
  if (v24 == 6)
  {
    if (!v25)
    {
      var1 = a3->var1;
      if (v12 == 2)
      {
        v65 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v26, *a2, v8, a3->var1, a3->var3);

        v16 = v65;
        goto LABEL_18;
      }

      if (v12 != 7)
      {
        goto LABEL_18;
      }

      v57 = objc_msgSend_locale(v8, v26, v27, v28);
      v58 = *a2;
      var3 = a3->var3;
      v97 = v16;
      v50 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v58, v60, v8, var1, var3, &v97);
      v61 = v97;

      if (v61)
      {
        v55 = v61;
        goto LABEL_36;
      }

      if (objc_msgSend_length(v50, v62, v63, v64))
      {
        v71 = TSUCreateDateFromString();
        if (v71)
        {
          objc_msgSend_dateValue_(TSCEDateValue, v75, v71, v76);
          *a2 = v16 = 0;
          v15 = 3;
          goto LABEL_57;
        }

        v78 = *a2;
        v86 = *a2;
        v87 = a3->var3;
        v96 = 0;
        v89 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v86, v88, v8, var1, v87, &v96);
        v16 = v96;
        v90 = v89;
        *a2 = v89;
        if (v16)
        {
          v85 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v91, v78, v8, var1, a3->var3);
          goto LABEL_54;
        }

LABEL_55:
        v15 = 5;
        goto LABEL_56;
      }

      v77 = objc_msgSend_nilValue(TSCENilValue, v72, v73, v74);
LABEL_49:
      v15 = 0;
      v16 = 0;
      *a2 = v77;
LABEL_58:

      goto LABEL_18;
    }

    if (v15 != 7 && v15 != 2)
    {
      goto LABEL_18;
    }

LABEL_15:
    v29 = objc_msgSend_nilValue(TSCENilValue, v26, v27, v28);
    goto LABEL_16;
  }

  if (v24 != 7)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "virtual TSCEError *TSCEStatArgumentAccessor::convertToNilIfIgnoring(TSCEValue *__autoreleasing *, TSCEGridAccessContext &, BOOL)", v28);
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEArgumentAccessor.mm", v33);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v31, v34, 907, 0, "Wrong context for this method.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38);
    goto LABEL_18;
  }

  if (v25)
  {
    if (v15 == 7)
    {
      *a2 = objc_msgSend_zero(TSCENumberValue, v26, v27, v28);
      v15 = 5;
      goto LABEL_18;
    }

    if (!v15)
    {
      v29 = objc_msgSend_nilValue(TSCENilValue, v26, v27, v28);
      v15 = 0;
LABEL_16:
      *a2 = v29;
    }

LABEL_18:
    isNil = objc_msgSend_isNil(*a2, v26, v27, v28);
    if (v16)
    {
      v40 = 1;
    }

    else
    {
      v40 = isNil;
    }

    if ((v40 & 1) == 0)
    {
      v41 = *a2;
      v93 = 0;
      v42 = TSCEArgumentAccessor::boundsCheckAndCoerce(v41, a3, v15, &v93);
      v16 = v93;
      v43 = v42;
      *a2 = v42;
    }

    v7 = v16;
    goto LABEL_24;
  }

  if (v12 == 2)
  {
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v12 != 7)
  {
    goto LABEL_18;
  }

  v45 = a3->var1;
  v46 = objc_msgSend_locale(v8, v26, v27, v28);
  v47 = *a2;
  v48 = a3->var3;
  v95 = v16;
  v50 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v47, v49, v8, v45, v48, &v95);
  v51 = v95;

  if (!v51)
  {
    if (objc_msgSend_length(v50, v52, v53, v54))
    {
      v71 = TSUCreateDateFromString();
      if (v71)
      {
        objc_msgSend_dateValue_(TSCEDateValue, v69, v71, v70);
        *a2 = v16 = 0;
LABEL_57:

        goto LABEL_58;
      }

      v78 = *a2;
      v79 = *a2;
      v80 = a3->var3;
      v94 = 0;
      v82 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v79, v81, v8, v45, v80, &v94);
      v16 = v94;
      v83 = v82;
      *a2 = v82;
      if (v16)
      {
        v85 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v84, v78, v8, v45, a3->var3);
LABEL_54:
        v92 = v85;

        v15 = 9;
        v16 = v92;
LABEL_56:

        goto LABEL_57;
      }

      goto LABEL_55;
    }

    v77 = objc_msgSend_nilValue(TSCENilValue, v66, v67, v68);
    goto LABEL_49;
  }

  v55 = v51;
LABEL_36:
  v7 = v55;

LABEL_24:
LABEL_25:

  return v7;
}

id TSCECountArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, id *a2, TSCEGridAccessContext *a3, TSCEValue *a4)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4))
  {
    v7 = 0;
    goto LABEL_44;
  }

  v8 = a3->var0;
  v12 = objc_msgSend_nativeType(*a2, v9, v10, v11);
  v13 = *a2;
  v76 = 0;
  v15 = objc_msgSend_deepType_outError_(v13, v14, v8, &v76);
  v7 = v76;
  v19 = TSCEGridAccessContext::argSpec(a3, v16, v17, v18);
  if (v19)
  {
    v23 = objc_msgSend_argumentContext(v19, v20, v21, v22);
  }

  else
  {
    v23 = 0;
  }

  v24 = TSCEArgumentAccessor::isFromAReference(*a2, a4, v21, v22);
  if (v23 != 8)
  {
    if (v23 == 9)
    {
      if (v15)
      {
        v28 = 0;
      }

      else
      {
        v28 = v24;
      }

      if (v28 != 1)
      {
        goto LABEL_38;
      }

      v29 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27);
      goto LABEL_13;
    }

    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "virtual TSCEError *TSCECountArgumentAccessor::convertToNilIfIgnoring(TSCEValue *__autoreleasing *, TSCEGridAccessContext &, BOOL)", v27);
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEArgumentAccessor.mm", v45);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v47, v43, v46, 997, 0, "Wrong context for this method.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50);
    goto LABEL_38;
  }

  if (!v15 || v24 && (v15 == 7 || v15 == 2))
  {
    *a2 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27);
  }

  isNil = objc_msgSend_isNil(*a2, v25, v26, v27);
  if (v12 == 9)
  {
    v35 = 1;
  }

  else
  {
    v35 = isNil;
  }

  v36 = *a2;
  if ((v35 & 1) == 0)
  {
    v37 = TSCEArgumentAccessor::valueSufficesForArgumentType(v36, 5, v12, v15, v8, 0);
    v36 = *a2;
    if ((v37 & 1) == 0)
    {
      if (TSCEArgumentAccessor::valueSufficesForArgumentType(v36, 3, v12, v15, v8, 0))
      {
        v41 = objc_msgSend_isNil(*a2, v38, v39, v40);
        goto LABEL_29;
      }

      v36 = objc_msgSend_nilValue(TSCENilValue, v38, v39, v40);
      *a2 = v36;
    }
  }

  v41 = objc_msgSend_isNil(v36, v32, v33, v34);
LABEL_29:
  if ((v41 & 1) == 0)
  {
    v51 = *a2;
    v53 = a3->var1;
    var3 = a3->var3;
    if (v15 == 2)
    {
      v75 = v7;
      v55 = &v75;
      objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v51, v52, v8, v53, var3, &v75);
    }

    else
    {
      v74 = v7;
      v55 = &v74;
      v56 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v51, v52, v8, v53, var3, &v74);
    }

    v30 = *v55;

    if ((objc_msgSend_isInvalidReferenceError(v30, v57, v58, v59) & 1) != 0 || objc_msgSend_isCircularReferenceError(v30, v25, v60, v27))
    {
      v29 = objc_msgSend_errorValue_(TSCEErrorValue, v25, v30, v27);
      goto LABEL_36;
    }

    if (!v30 || v15 != 3)
    {
      goto LABEL_37;
    }

    v67 = *a2;
    v68 = a3->var1;
    v69 = a3->var3;
    v73 = 0;
    v71 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v67, v70, v8, v68, v69, &v73);
    v7 = v73;

    if (!v7)
    {
      goto LABEL_38;
    }

    v29 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27);
LABEL_13:
    v30 = v7;
LABEL_36:
    *a2 = v29;
LABEL_37:
    v7 = v30;
  }

LABEL_38:
  v61 = objc_msgSend_isNil(*a2, v25, v26, v27);
  if (v7)
  {
    v62 = 1;
  }

  else
  {
    v62 = v61;
  }

  if ((v62 & 1) == 0)
  {
    v63 = *a2;
    v72 = 0;
    v64 = TSCEArgumentAccessor::boundsCheckAndCoerce(v63, a3, v15, &v72);
    v7 = v72;
    v65 = v64;
    *a2 = v64;
  }

LABEL_44:

  return v7;
}

uint64_t TSCEArgumentAccessor::valueSufficesForArgumentType(void *a1, const char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a2 + 1;
  if (a2 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a4;
  }

  if (a2 == -1)
  {
    v7 = 1;
  }

  if (a3 != 1)
  {
    v7 = a3;
  }

  if ((v6 > 7 || ((1 << v6) & 0x85) == 0) && (a3 & 0xFFFFFFF7) == 6)
  {
    v10 = a4;
  }

  else
  {
    v10 = v7;
  }

  v11 = a6;
  v15 = 0;
  v16 = 1;
  switch(a2)
  {
    case -1:
    case 0:
    case 1:
    case 6:
    case 15:
    case 18:
      goto LABEL_62;
    case 2:
      if (v10 > 0xC)
      {
        goto LABEL_18;
      }

      if (((1 << v10) & 0x1425) != 0)
      {
        goto LABEL_61;
      }

      if (v10 != 7)
      {
        goto LABEL_18;
      }

      if (!a6)
      {
        v11 = objc_msgSend_locale(a5, a2, a3, a4);
      }

      if (a5)
      {
        v71 = 0;
        v26 = objc_msgSend_asString_outError_(a1, a2, a5, &v71);
        v15 = v71;
      }

      else
      {
        v26 = objc_msgSend_asStringWithLocale_(a1, a2, v11, a4);
        v15 = 0;
      }

      if (objc_msgSend_localizedStringIsTrue_(v11, v30, v26, v31))
      {
        goto LABEL_92;
      }

      IsFalse = objc_msgSend_localizedStringIsFalse_(v11, v60, v26, v61);
      goto LABEL_86;
    case 3:
      v15 = 0;
      if (v10 > 4u)
      {
        if (v10 == 5)
        {
          goto LABEL_62;
        }

        if (v10 == 7)
        {
          if (!a6)
          {
            v11 = objc_msgSend_locale(a5, a2, a3, a4);
          }

          if (a5)
          {
            v72 = 0;
            v42 = objc_msgSend_asString_outError_(a1, a2, a5, &v72);
            v15 = v72;
          }

          else
          {
            v42 = objc_msgSend_asStringWithLocale_(a1, a2, v11, a4);
            v15 = 0;
          }

          objc_msgSend_lock(MEMORY[0x277D81288], v43, v44, v45);
          v26 = TSUCreateDateFromString();

          objc_msgSend_unlock(MEMORY[0x277D81288], v57, v58, v59);
          v16 = v26 != 0;
          goto LABEL_92;
        }
      }

      else if (!v10 || v10 == 3)
      {
        goto LABEL_62;
      }

      goto LABEL_18;
    case 4:
      if (v10 == 4)
      {
        goto LABEL_61;
      }

      if (v10 == 7)
      {
        if (!a6)
        {
          v11 = objc_msgSend_locale(a5, a2, a3, a4);
        }

        if (a5)
        {
          v69 = 0;
          v46 = objc_msgSend_asString_outError_(a1, a2, a5, &v69);
          v15 = v69;
        }

        else
        {
          v46 = objc_msgSend_asStringWithLocale_(a1, a2, v11, a4);
          v15 = 0;
        }

        objc_msgSend_lock(MEMORY[0x277D81288], v47, v48, v49);
        v16 = TSUDurationFormatterTimeIntervalFromString();

        objc_msgSend_unlock(MEMORY[0x277D81288], v50, v51, v52);
        goto LABEL_62;
      }

      if (v10 != 5)
      {
        goto LABEL_18;
      }

      if (!a6)
      {
        v11 = objc_msgSend_locale(a5, a2, a3, a4);
      }

      if (a5)
      {
        v70 = 0;
        v26 = objc_msgSend_asNumber_outError_(a1, a2, a5, &v70);
        v15 = v70;
      }

      else
      {
        v26 = objc_msgSend_asNumberWithLocale_(a1, a2, v11, a4);
        v15 = 0;
      }

      IsFalse = objc_msgSend_isDuration(v26, v27, v28, v29);
LABEL_86:
      v16 = IsFalse;
      goto LABEL_92;
    case 5:
      if (v10 > 0xC)
      {
        goto LABEL_18;
      }

      if (((1 << v10) & 0x1425) != 0)
      {
LABEL_61:
        v15 = 0;
      }

      else if (v10 == 7)
      {
        if (!a6)
        {
          v11 = objc_msgSend_locale(a5, a2, a3, a4);
        }

        if (a5)
        {
          v76 = 0;
          v26 = objc_msgSend_asString_outError_(a1, a2, a5, &v76);
          v15 = v76;
        }

        else
        {
          v26 = objc_msgSend_asStringWithLocale_(a1, a2, v11, a4);
          v15 = 0;
        }

        if (objc_msgSend_length(v26, v32, v33, v34))
        {
          MEMORY[0x223D9F8D0](v75, v11);
          TSUUnivNumberParser::parseAsNumber(&v73, v75, v26);
          if (v74 == -999)
          {
            objc_msgSend_lock(MEMORY[0x277D81288], v62, v63, v64);
            v16 = TSUDurationFormatterTimeIntervalFromString();
            objc_msgSend_unlock(MEMORY[0x277D81288], v65, v66, v67);
          }

          MEMORY[0x223D9F890](&v73);
          sub_2211AF274(v75);
        }

LABEL_92:
      }

      else
      {
LABEL_18:
        v15 = 0;
        v16 = 0;
      }

LABEL_62:

      return v16;
    case 7:
      if (v10 > 0xC || ((1 << v10) & 0x14AD) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_61;
    case 8:
      if (TSCEArgumentAccessor::valueSufficesForArgumentType(a1, 5, v10, a4, a5, a6) & 1) != 0 || (TSCEArgumentAccessor::valueSufficesForArgumentType(a1, 3, v10, a4, a5, v11))
      {
        goto LABEL_61;
      }

      if (!v11)
      {
        v11 = objc_msgSend_locale(a5, v35, v36, v37);
      }

      if (a5)
      {
        v68 = 0;
        v26 = objc_msgSend_asString_outError_(a1, v35, a5, &v68);
        v15 = v68;
      }

      else
      {
        v26 = objc_msgSend_asStringWithLocale_(a1, v35, v11, v37);
        v15 = 0;
      }

      if (v26)
      {
        objc_msgSend_lock(MEMORY[0x277D81288], v38, v39, v40);
        v16 = TSUDurationFormatterTimeIntervalFromString();
        objc_msgSend_unlock(MEMORY[0x277D81288], v54, v55, v56);
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_92;
    case 9:
      if (v10 == 9)
      {
        goto LABEL_61;
      }

      goto LABEL_18;
    case 10:
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "static BOOL TSCEArgumentAccessor::valueSufficesForArgumentType(TSCEValue *__unsafe_unretained, TSCEArgumentType, TSCEArgumentType, TSCEArgumentType, TSCEEvaluationContext *__unsafe_unretained, TSULocale *__unsafe_unretained)", a4);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEArgumentAccessor.mm", v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 1350, 0, "empty arguments should never be required");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
      goto LABEL_18;
    case 12:
      if (v10 == 12)
      {
        goto LABEL_61;
      }

      goto LABEL_18;
    case 19:
      if (v10 == 19)
      {
        goto LABEL_61;
      }

      goto LABEL_18;
    case 21:
      if ((TSCEArgumentAccessor::valueSufficesForArgumentType(a1, 5, v10, a4, a5, a6) & 1) == 0)
      {
        v16 = TSCEArgumentAccessor::valueSufficesForArgumentType(a1, 2, v10, a4, a5, v11);
      }

      goto LABEL_61;
    default:
      goto LABEL_18;
  }
}

void sub_2213E574C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  objc_end_catch();
  MEMORY[0x223D9F890](va);
  sub_2211AF274(va1);

  _Unwind_Resume(a1);
}

id TSCEVarArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, id *a2, TSCEGridAccessContext *a3, TSCEValue *a4)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4))
  {
    v7 = 0;
    goto LABEL_54;
  }

  v8 = a3->var0;
  v12 = objc_msgSend_nativeType(*a2, v9, v10, v11);
  v13 = *a2;
  v91 = 0;
  v15 = objc_msgSend_deepType_outError_(v13, v14, v8, &v91);
  v16 = v91;
  v20 = TSCEGridAccessContext::argSpec(a3, v17, v18, v19);
  if (v20)
  {
    v24 = objc_msgSend_argumentContext(v20, v21, v22, v23);
  }

  else
  {
    v24 = 0;
  }

  v25 = TSCEArgumentAccessor::isFromAReference(*a2, a4, v22, v23);
  if (v24 == 10)
  {
    if (!v25)
    {
      var1 = a3->var1;
      if (v12 != 2)
      {
        if (v12 == 10)
        {
LABEL_31:
          *a2 = objc_msgSend_zero(TSCENumberValue, v26, v27, v28);
          v15 = 5;
          goto LABEL_47;
        }

        if (v12 != 7)
        {
LABEL_47:
          isNil = objc_msgSend_isNil(*a2, v26, v27, v28);
          if (v16)
          {
            v81 = 1;
          }

          else
          {
            v81 = isNil;
          }

          if ((v81 & 1) == 0)
          {
            v82 = *a2;
            v86 = 0;
            v83 = TSCEArgumentAccessor::boundsCheckAndCoerce(v82, a3, v15, &v86);
            v16 = v86;
            v84 = v83;
            *a2 = v83;
          }

          v16 = v16;
          v7 = v16;
          goto LABEL_53;
        }

        v56 = objc_msgSend_locale(v8, v26, v27, v28);
        v57 = *a2;
        var3 = a3->var3;
        v90 = v16;
        v43 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v57, v59, v8, var1, var3, &v90);
        v44 = v90;

        if (!v44)
        {
          if (objc_msgSend_length(v43, v60, v61, v62))
          {
            v53 = TSUCreateDateFromString();
            if (v53)
            {
              v54 = objc_msgSend_dateValue_(TSCEDateValue, v70, v53, v71);
              goto LABEL_38;
            }

            v77 = *a2;
            v78 = a3->var3;
            v89 = 0;
            v72 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v77, v70, v8, var1, v78, &v89);
            v76 = v89;
LABEL_44:
            v16 = v76;
            v15 = 5;
            goto LABEL_45;
          }

          v73 = objc_msgSend_nilValue(TSCENilValue, v67, v68, v69);
LABEL_41:
          v15 = 0;
          v16 = 0;
          *a2 = v73;
LABEL_46:

          goto LABEL_47;
        }

        goto LABEL_28;
      }

LABEL_34:
      v66 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v26, *a2, v8, a3->var1, a3->var3);

      v16 = v66;
      goto LABEL_47;
    }

    if (v15 != 2)
    {
      if (v15 == 9)
      {
        v63 = objc_msgSend_functionName(a3->var1, v26, v27, v28);
        v7 = objc_msgSend_argumentErrorForFunctionName_(TSCEError, v64, v63, v65);

        goto LABEL_53;
      }

      if (v15 != 7)
      {
        goto LABEL_47;
      }
    }

LABEL_15:
    *a2 = objc_msgSend_nilValue(TSCENilValue, v26, v27, v28);
    goto LABEL_47;
  }

  if (v24 != 11)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "virtual TSCEError *TSCEVarArgumentAccessor::convertToNilIfIgnoring(TSCEValue *__autoreleasing *, TSCEGridAccessContext &, BOOL)", v28);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEArgumentAccessor.mm", v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 1119, 0, "Wrong context for this method.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
    goto LABEL_47;
  }

  if (v25)
  {
    if (v15 == 7)
    {
      goto LABEL_31;
    }

    goto LABEL_47;
  }

  if (v12 == 2)
  {
    if (!a4)
    {
      goto LABEL_47;
    }

    goto LABEL_15;
  }

  v38 = a3->var1;
  if (v12 == 3)
  {
    goto LABEL_34;
  }

  if (v12 != 7)
  {
    goto LABEL_47;
  }

  v39 = objc_msgSend_locale(v8, v26, v27, v28);
  v40 = *a2;
  v41 = a3->var3;
  v88 = v16;
  v43 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v40, v42, v8, v38, v41, &v88);
  v44 = v88;

  if (!v44)
  {
    if (objc_msgSend_length(v43, v45, v46, v47))
    {
      v53 = TSUCreateDateFromString();
      if (v53)
      {
        v54 = objc_msgSend_dateValue_(TSCEDateValue, v51, v53, v52);
LABEL_38:
        v72 = v54;
        v16 = 0;
        v15 = 3;
LABEL_45:
        v79 = v72;
        *a2 = v72;

        goto LABEL_46;
      }

      v74 = *a2;
      v75 = a3->var3;
      v87 = 0;
      v72 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v74, v51, v8, v38, v75, &v87);
      v76 = v87;
      goto LABEL_44;
    }

    v73 = objc_msgSend_nilValue(TSCENilValue, v48, v49, v50);
    goto LABEL_41;
  }

LABEL_28:
  v16 = v44;

  v7 = v16;
LABEL_53:

LABEL_54:

  return v7;
}

id TSCEMatchArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, TSCEArgumentAccessor **a2, TSCEGridAccessContext *a3, TSCEValue *a4)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4))
  {
    v7 = 0;
  }

  else
  {
    v8 = a3->var0;
    v9 = *a2;
    v27 = 0;
    v11 = objc_msgSend_deepType_outError_(v9, v10, v8, &v27);
    v7 = v27;
    v14 = TSCEArgumentAccessor::isFromAReference(*a2, a4, v12, v13);
    if (v11)
    {
      v18 = 0;
    }

    else
    {
      v18 = v14;
    }

    if (v18)
    {
      v19 = objc_msgSend_nilValue(TSCENilValue, v15, v16, v17);
      *a2 = v19;
    }

    else
    {
      v19 = *a2;
    }

    isNil = objc_msgSend_isNil(v19, v15, v16, v17);
    if (v7)
    {
      v21 = 1;
    }

    else
    {
      v21 = isNil;
    }

    if ((v21 & 1) == 0)
    {
      v22 = *a2;
      v26 = 0;
      v23 = TSCEArgumentAccessor::boundsCheckAndCoerce(v22, a3, v11, &v26);
      v7 = v26;
      v24 = v23;
      *a2 = v23;
    }
  }

  return v7;
}

id TSCEDateVectorArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, TSCEArgumentAccessor **a2, TSCEGridAccessContext *a3, TSCEValue *a4)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4))
  {
    v7 = 0;
  }

  else
  {
    v8 = a3->var0;
    v9 = *a2;
    v30 = 0;
    v11 = objc_msgSend_deepType_outError_(v9, v10, v8, &v30);
    v7 = v30;
    v14 = TSCEArgumentAccessor::isFromAReference(*a2, a4, v12, v13);
    if (v11 == 2)
    {
      v18 = v14;
    }

    else
    {
      v18 = 0;
    }

    if (v18 == 1)
    {
      v19 = *a2;
      v20 = a3->var1;
      v22 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v21, v19, v8, v20, a3->var3);

      v7 = v22;
    }

    isNil = objc_msgSend_isNil(*a2, v15, v16, v17);
    if (v7)
    {
      v24 = 1;
    }

    else
    {
      v24 = isNil;
    }

    if ((v24 & 1) == 0)
    {
      v25 = *a2;
      v29 = 0;
      v26 = TSCEArgumentAccessor::boundsCheckAndCoerce(v25, a3, v11, &v29);
      v7 = v29;
      v27 = v26;
      *a2 = v26;
    }
  }

  return v7;
}

id TSCEStrictNumberArgumentAccessor::convertToNilIfIgnoring(uint64_t a1, id *a2, TSCEGridAccessContext *a3, uint64_t a4)
{
  if (TSCEArgumentAccessor::shouldEarlyReturnForEmpty(a2, a3, a3, a4))
  {
    v6 = 0;
  }

  else
  {
    v7 = a3->var0;
    v8 = *a2;
    v26 = 0;
    v10 = objc_msgSend_deepType_outError_(v8, v9, v7, &v26);
    v6 = v26;
    if (v10)
    {
      v14 = v10 == 5;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v15 = *a2;
      v16 = a3->var1;
      v18 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v17, v15, v7, v16, a3->var3);

      v6 = v18;
    }

    isNil = objc_msgSend_isNil(*a2, v11, v12, v13);
    if (v6)
    {
      v20 = 1;
    }

    else
    {
      v20 = isNil;
    }

    if ((v20 & 1) == 0)
    {
      v21 = *a2;
      v25 = 0;
      v22 = TSCEArgumentAccessor::boundsCheckAndCoerce(v21, a3, v10, &v25);
      v6 = v25;
      v23 = v22;
      *a2 = v22;
    }
  }

  return v6;
}

uint64_t TSCEArgumentAccessor::shouldTreatValueAsDateArgument(TSCEArgumentAccessor *this, TSCEValue *a2, TSCEEvaluationContext *a3)
{
  v13 = 0;
  v5 = objc_msgSend_deepType_outError_(this, a2, a2, &v13);
  v9 = v13;
  v10 = 0;
  if (v5 && v5 != 5)
  {
    v11 = objc_msgSend_nativeType(this, v6, v7, v8);
    v10 = TSCEArgumentAccessor::valueSufficesForArgumentType(this, 3, v11, v5, a2, 0);
  }

  return v10;
}

uint64_t TSCEArgumentAccessor::shouldTreatValueAsDateArgumentWithLocale(TSCEArgumentAccessor *this, TSCEValue *a2, TSULocale *a3)
{
  v13 = 0;
  v5 = objc_msgSend_deepType_outError_(this, a2, 0, &v13);
  v9 = v13;
  v10 = 0;
  if (v5 && v5 != 5)
  {
    v11 = objc_msgSend_nativeType(this, v6, v7, v8);
    v10 = TSCEArgumentAccessor::valueSufficesForArgumentType(this, 3, v11, v5, 0, a2);
  }

  return v10;
}

void sub_2213E6BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TSCEFormulasToSet;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_2213E6DD0(uint64_t a1)
{
  v24 = objc_opt_new();
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  if ((*(v2 + 32) & 2) != 0 && (isEmpty = TSCECellRefSet::isEmpty((v2 + 40)), v2 = *(a1 + 32), (isEmpty & 1) == 0))
  {
    v13 = *(v2 + 144);
    os_unfair_lock_unlock((v2 + 8));
    if ((v13 & 1) == 0)
    {
      objc_msgSend__flushFormulasToRemoveWithDepTracker_startTime_timeout_(*(a1 + 32), v14, *(a1 + 40), v24, 0.2);
      objc_msgSend_timeIntervalSinceNow(v24, v15, v16, v17);
      if (v18 < -0.2)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    os_unfair_lock_unlock((v2 + 8));
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  v4 = *(a1 + 32);
  if ((*(v4 + 32) & 4) != 0 && *(v4 + 112))
  {
    v5 = *(v4 + 144);
    os_unfair_lock_unlock((v4 + 8));
    if ((v5 & 1) == 0)
    {
      objc_msgSend__flushFormulasToReplaceWithDepTracker_startTime_timeout_(*(a1 + 32), v6, *(a1 + 40), v24, 0.2);
      objc_msgSend_timeIntervalSinceNow(v24, v7, v8, v9);
      if (v10 < -0.2)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    os_unfair_lock_unlock((v4 + 8));
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  v11 = *(a1 + 32);
  if ((*(v11 + 32) & 8) != 0 && (v12 = TSCECellRefSet::isEmpty((v11 + 64)), v11 = *(a1 + 32), (v12 & 1) == 0))
  {
    v19 = *(v11 + 144);
    os_unfair_lock_unlock((v11 + 8));
    if ((v19 & 1) == 0)
    {
      objc_msgSend__flushFormulasToResetWithDepTracker_startTime_timeout_(*(a1 + 32), v20, *(a1 + 40), v24, 0.2);
      objc_msgSend_timeIntervalSinceNow(v24, v21, v22, v23);
    }
  }

  else
  {
    os_unfair_lock_unlock((v11 + 8));
  }

LABEL_13:
  os_unfair_lock_lock((*(a1 + 32) + 8));
  *(*(a1 + 32) + 145) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

void sub_2213E7234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2213E7534(va);

  _Unwind_Resume(a1);
}

void sub_2213E7278(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = (a1 + 96);
  v5 = *(a1 + 96);
  if (v5 == 0x7FFFFFFF || (v5 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulasToSet replaceFormula:atCellCoord:inOwner:replaceOptions:]_block_invoke", a4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v11);
    v13 = NSStringFromTSUCellCoord();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v12, 240, 0, "Can only place formulas at valid, non-spanning cell coords, not: %@", v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  if (*(a1 + 32))
  {
    if (*v6 != 0x7FFFFFFF && (*v6 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v22 = objc_msgSend_emptyReferenceSetWrapper(*(*(a1 + 40) + 16), a2, a3, a4);
      if (!v22)
      {
        v23 = MEMORY[0x277D81150];
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSCEFormulasToSet replaceFormula:atCellCoord:inOwner:replaceOptions:]_block_invoke", v21);
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v26);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 244, 0, "invalid nil value for '%{public}s'", "precedents");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
      }

      v32 = *(a1 + 32);
      v33 = objc_msgSend_referenceSet(v22, v19, v20, v21);
      v34 = *(*(a1 + 40) + 16);
      v39 = *(a1 + 96);
      v40 = *(a1 + 48);
      objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v32, v35, v33, v34, &v39, 0, 1);
      v36 = *(a1 + 40);
      TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v38, a1 + 64);
      objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v36, v37, v6, a1 + 48, v22, &v38);
    }
  }
}

uint64_t sub_2213E74DC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  TSCEReplaceFormulaOptions::operator=(a1 + 24, a2 + 24);
  objc_storeStrong((a1 + 56), *(a2 + 7));
  objc_storeStrong((a1 + 64), *(a2 + 8));
  return a1;
}

void sub_2213E7688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2213E7534(va);

  _Unwind_Resume(a1);
}

uint64_t sub_2213E78A4(uint64_t a1, TSUCellCoord *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5.coordinate = *a2;
  v5._tableUID = *v3;
  return TSCECellRefSet::removeCellRef((v2 + 64), &v5);
}

TSCECellCoordSet *sub_2213E7B34(uint64_t a1, TSUCellCoord *a2)
{
  v3 = *a2;
  v8.coordinate = *a2;
  v8._tableUID = *(a1 + 40);
  v4 = *(a1 + 32);
  tableUID = v8._tableUID;
  v5 = sub_2210875C4((v4 + 88), &tableUID);
  if (v5)
  {
    tableUID._lower = v3;
    sub_2213E9A58(v5 + 4, &tableUID);
  }

  TSCECellRefSet::removeCellRef((*(a1 + 32) + 64), &v8);
  return TSCECellRefSet::addCellRef((*(a1 + 32) + 40), &v8);
}

TSCECellCoordSet *sub_2213E7CF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v7 = *(a2 + 8);
  v5 = sub_2210875C4((v4 + 88), &v7);
  if (v5)
  {
    *&v7 = *a2;
    sub_2213E9A58(v5 + 4, &v7);
  }

  TSCECellRefSet::removeCellRef((*(a1 + 32) + 64), a2);
  return TSCECellRefSet::addCellRef((*(a1 + 32) + 40), a2);
}

void sub_2213E81F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);

  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  sub_22107C800(v41 + 48, a33);
  _Block_object_dispose(va, 8);

  _Block_object_dispose((v42 - 224), 8);
  _Block_object_dispose((v42 - 192), 8);
  sub_22107C800(v42 - 144, *(v42 - 136));

  _Unwind_Resume(a1);
}

TSCECellCoordSet *sub_2213E82A8(uint64_t a1, const TSCECellRef *a2, _BYTE *a3)
{
  result = TSCECellRefSet::addCellRef((*(*(a1 + 32) + 8) + 48), a2);
  if (++*(*(*(a1 + 40) + 8) + 24) >= 0x12CuLL)
  {
    *a3 = 1;
  }

  return result;
}

void *sub_2213E830C(uint64_t a1, const TSCECellRef *a2, _BYTE *a3)
{
  v6 = *(a1 + 32);
  tableUID = a2->_tableUID;
  objc_msgSend_removeFormulaForOwner_cellCoord_(v6, a2, &tableUID, *&a2->coordinate);
  result = TSCECellRefSet::addCellRef((*(*(a1 + 48) + 8) + 48), a2);
  if (*(a1 + 40))
  {
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      v11 = *(*(a1 + 64) + 8);
      if (*(v11 + 24) >= 0x15uLL)
      {
        *(v11 + 24) = 0;
        result = objc_msgSend_timeIntervalSinceNow(*(a1 + 40), v8, v9, v10);
        if (*(a1 + 72) < -v12)
        {
          *a3 = 1;
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }
      }
    }
  }

  ++*(*(*(a1 + 64) + 8) + 24);
  return result;
}

void sub_2213E86B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  sub_2213E7534((v34 - 176));

  _Unwind_Resume(a1);
}

void sub_2213E870C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 + 40;
  v4 = *(a1 + 40);
  if (v4 != 0x7FFFFFFF && (v4 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v11 = objc_msgSend_formulaObject(*(a1 + 120), a2, a3, a4);
    if (v11)
    {
      v15 = objc_msgSend_emptyReferenceSetWrapper(*(*(a1 + 32) + 16), v8, v9, v10);
      if (!v15)
      {
        v16 = MEMORY[0x277D81150];
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSCEFormulasToSet _flushFormulasToReplaceWithDepTracker:startTime:timeout:]_block_invoke", v14);
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v19);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 579, 0, "invalid nil value for '%{public}s'", "precedents");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
      }

      v25 = objc_msgSend_referenceSet(v15, v12, v13, v14);
      objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v11, v26, v25, *(*(a1 + 32) + 16), v5, 0, 1);
      v27 = *(a1 + 32);
      v31 = *(a1 + 40);
      v30 = *(a1 + 48);
      TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v29, a1 + 88);
      objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v27, v28, &v31, &v30, v15, &v29);
    }
  }
}

void sub_2213E88D0(uint64_t a1)
{
  v2 = *(a1 + 112);
}

BOOL sub_2213E90F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  result = 0;
  if (v5)
  {
    objc_msgSend_timeIntervalSinceNow(v5, a2, a3, a4);
    if (*(a1 + 40) < -v6)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2213E91EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions((a1 + 24), a3);
  *(a1 + 56) = v7;
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_2213E9258(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions((a1 + 24), a3);
  *(a1 + 56) = 0;
  *(a1 + 64) = v7;
  return a1;
}

uint64_t sub_2213E92C4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions((a1 + 24), a2 + 24);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 64) = *(a2 + 8);
  return a1;
}

void *sub_2213E931C(void *a1, void *a2, uint64_t a3, _OWORD **a4)
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

void sub_2213E957C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2213E9590(va);
  _Unwind_Resume(a1);
}

char **sub_2213E9590(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2213E95DC(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2213E95DC(uint64_t a1)
{
  sub_2213E9618(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2213E9618(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_2213E965C(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_2213E9698(void *a1, unsigned int *a2)
{
  v2 = *a2 + 16 * *(a2 + 2);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 + 16 * *(a2 + 2);
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_23:
    sub_2213E98E4();
  }

  v8 = *a2;
  while (1)
  {
    v9 = result[1];
    if (v9 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  v10 = result[2];
  v12 = v10 == v8;
  v11 = (v8 ^ v10) & 0x101FFFF00000000;
  v12 = v12 && v11 == 0;
  if (!v12)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_2213E98C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11)
{
  if (a10)
  {
    sub_2213E99A0(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2213E9984(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_2213E99A0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_2213E99A0(uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_2213E9A0C(void *a1, void *a2)
{
  result = sub_2210875C4(a1, a2);
  if (result)
  {
    sub_221087680(a1, result, v4);
    sub_2213E9590(v4);
    return 1;
  }

  return result;
}

uint64_t sub_2213E9A58(void *a1, unsigned int *a2)
{
  result = sub_221087F14(a1, a2);
  if (result)
  {
    sub_2213E9A90(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_2213E9A90(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_221087680(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    sub_2213E99A0(&v6, v3);
  }

  return v2;
}

uint64_t sub_2213E9ADC(uint64_t a1)
{
  sub_2213E9B18(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2213E9B18(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_2213E95DC((v2 + 4));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_2213EB388(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_2213EB7F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = objc_msgSend_baseIndex(v3, v5, v6, v7);
  LODWORD(v4) = objc_msgSend_containsIndex_(v4, v9, v8, v10);

  return v4 ^ 1;
}

void sub_2213EC0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, TSUIndexSet *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  TSUIndexSet::~TSUIndexSet(&a22);
  TSUIndexSet::~TSUIndexSet((v38 + 40));
  _Block_object_dispose(&a34, 8);
  *(v41 - 96) = v39;
  sub_22107C2C0((v41 - 96));

  TSUIndexSet::~TSUIndexSet(v40 + 1);
  TSUIndexSet::~TSUIndexSet((v41 - 192));

  _Unwind_Resume(a1);
}

__n128 sub_2213EC198(__n128 *a1, __n128 *a2)
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

uint64_t sub_2213EC1E8(uint64_t result, unsigned int *a2)
{
  for (i = *a2; i <= a2[2]; ++i)
  {
    v4 = TSUIndexSet::enumerateRangesUsingBlock();
  }

  return v4;
}

void sub_2213EC2C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  if (*(a2 + 4) >= *a2)
  {
    v7 = *a2;
    do
    {
      v8 = *(a1 + 48);
      if (v8 <= *(a1 + 60) && *(a1 + 64) >= v4)
      {
        v37 = (v8 | (v4 << 32));
        v31 = *(a1 + 40);
        v36[0]._flags = 0;
        v32 = TSCETableResolverWrapper::makeReferenceWithTopLeft(v31, &v37, &v37, v36);
        v33 = [TSCEReferenceValue alloc];
        v35 = 0;
        *&v36[0]._flags = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v33, v34, v32, &unk_2217E1AEC, &v35, 1, 0);
        sub_221179A54((*(*(a1 + 32) + 8) + 48), v36);
      }

      else
      {
        v9 = MEMORY[0x277D81150];
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEFunction___CHART evaluateForArgsWithContext:functionSpec:arguments:]_block_invoke_2", a4);
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEChartFunctions.mm", v12);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 88, 0, "apparentTractRefForTractRef let us exceeed tableSize?? (%d,%d)", v7, *(a1 + 48));

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
        v18 = *(*(a1 + 32) + 8);
        v22 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v19, v20, v21);
        v24 = v18[7];
        v23 = v18[8];
        if (v24 >= v23)
        {
          v26 = v18[6];
          v27 = (v24 - v26) >> 3;
          if ((v27 + 1) >> 61)
          {
            sub_22107C148();
          }

          v28 = v23 - v26;
          v29 = v28 >> 2;
          if (v28 >> 2 <= (v27 + 1))
          {
            v29 = v27 + 1;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF8)
          {
            v30 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v29;
          }

          v41 = v18 + 6;
          if (v30)
          {
            sub_22107C1F0((v18 + 6), v30);
          }

          v37 = 0;
          v38 = (8 * v27);
          v40 = 0;
          *v38 = v22;
          v39 = 8 * v27 + 8;
          sub_22107C098((v18 + 6), &v37);
          v25 = v18[7];
          sub_22107C26C(&v37);
        }

        else
        {
          *v24 = v22;
          v25 = v24 + 1;
          v18[7] = v25;
        }

        v18[7] = v25;
      }

      LOWORD(v4) = v4 + 1;
      v7 = v4;
    }

    while (*(a2 + 4) >= v4);
  }
}

__n128 sub_2213EC558(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) |= 3u;
  *&v4.f64[0] = 0x8000000080000000;
  *&v4.f64[1] = 0x8000000080000000;
  v6 = vnegq_f64(v4);
  *(a1 + 48) = v6;
  *(a1 + 64) = 0;
  TSUIndexSet::operator=();
  *(a1 + 72) |= 3u;
  *(a1 + 80) = v6;
  *(a1 + 96) = 0;
  TSUIndexSet::operator=();
  result = *(a2 + 104);
  *(a1 + 117) = *(a2 + 117);
  *(a1 + 104) = result;
  return result;
}

void sub_2213EC604(uint64_t a1)
{
  TSUIndexSet::~TSUIndexSet((a1 + 72));

  TSUIndexSet::~TSUIndexSet((a1 + 40));
}

uint64_t sub_2213EC640(uint64_t a1, uint64_t a2)
{
  *a1 |= 3u;
  *&v4.f64[0] = 0x8000000080000000;
  *&v4.f64[1] = 0x8000000080000000;
  v7 = vnegq_f64(v4);
  *(a1 + 8) = v7;
  *(a1 + 24) = 0;
  TSUIndexSet::operator=();
  *(a1 + 32) |= 3u;
  *(a1 + 40) = v7;
  *(a1 + 56) = 0;
  TSUIndexSet::operator=();
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 64) = v5;
  return a1;
}

void sub_2213ECB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16)
{
  v22 = v20;

  _Unwind_Resume(a1);
}

void sub_2213ECB74(uint64_t a1, void *a2)
{
  v112 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  v7 = objc_msgSend_modelCellID(v3, v4, v5, v6);
  v11 = objc_msgSend_layoutMergeRange(v3, v8, v9, v10);
  v13 = v12;
  v16 = objc_msgSend_wpColumn(v3, v12, v14, v15);
  objc_msgSend_sizeOfText(v3, v17, v18, v19);
  v25 = v24;
  if (v16)
  {
    if (objc_msgSend_hasContent(v3, v20, v21, v22) && (objc_msgSend_layoutCacheFlags(v3, v20, v21, v22) & 1) != 0 && !objc_msgSend_verticalAlignment(v3, v20, v21, v22))
    {
      v26 = *(a1 + 32);
      v27 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v20, (v7 << 15) | WORD2(v7), v22);
      objc_msgSend_setObject_forKey_(v26, v28, v16, v27);
    }
  }

  else if (v23 == *MEMORY[0x277CBF3A8] && v24 == *(MEMORY[0x277CBF3A8] + 8))
  {
    goto LABEL_58;
  }

  if ((objc_msgSend_inDynamicLayout(v3, v20, v21, v22) & 1) == 0 && objc_msgSend_cellPropsRowHeight(v3, v30, v31, v32))
  {
    if (v11 != 0x7FFFFFFF && (v11 & 0xFFFF00000000) != 0x7FFF00000000 && v13 >> 32 && v13)
    {
      objc_msgSend_paddingInsets(v3, v33, v34, v35);
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v47 = objc_msgSend_cell(v3, v44, v45, v46);
      if (objc_msgSend_valueType(v47, v48, v49, v50) == 6)
      {
        v54 = objc_msgSend_cell(v3, v51, v52, v53);
        v58 = objc_msgSend_formatType(v54, v55, v56, v57) == 263;
      }

      else
      {
        v58 = 0;
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
      v90 = objc_msgSend_cellRange(WeakRetained, v87, v88, v89);
      v92 = v91;

      v93 = objc_loadWeakRetained((*(a1 + 40) + 8));
      v98 = objc_msgSend_mergeRangesForLayoutPass(v93, v94, v95, v96);
      v99 = 0;
      v100 = 0x7FFFLL;
      v101 = 0x7FFFFFFF;
      if (v90 != 0x7FFFFFFF)
      {
        v102 = 0;
        if ((v90 & 0xFFFF00000000) == 0x7FFF00000000)
        {
          goto LABEL_56;
        }

        v99 = 0;
        v100 = 0x7FFFLL;
        if (HIDWORD(v92))
        {
          v102 = 0;
          if (v92)
          {
            v101 = *MEMORY[0x277D813C8];
            v100 = *(MEMORY[0x277D813C8] + 4);
            v99 = *(MEMORY[0x277D813C8] + 8);
            if (WORD2(v11) <= WORD2(v90))
            {
              v103 = WORD2(v90);
            }

            else
            {
              v103 = WORD2(v11);
            }

            v97 = v90;
            if (v11 <= v90)
            {
              v104 = v90;
            }

            else
            {
              v104 = v11;
            }

            LOWORD(v105) = v13 + WORD2(v11) - 1;
            if (WORD2(v11) == 0x7FFF || v13 == 0)
            {
              LOWORD(v105) = 0x7FFF;
            }

            v105 = v105;
            v107 = v92 + WORD2(v90) - 1;
            if (WORD2(v90) == 0x7FFF || v92 == 0)
            {
              v107 = 0x7FFF;
            }

            if (v105 >= v107)
            {
              v105 = v107;
            }

            if (v11 + HIDWORD(v13) - 1 >= (v90 + HIDWORD(v92) - 1))
            {
              v109 = v90 + HIDWORD(v92) - 1;
            }

            else
            {
              v109 = v11 + HIDWORD(v13) - 1;
            }

            v110 = v109 >= v104;
            v111 = v109 - v104;
            if (v110 && v103 <= v105)
            {
              objc_msgSend_addRange_height_paddingInsets_isCheckbox_(v98, v90, (v103 << 32) | v104, (v105 - v103 + 1) | ((v111 + 1) << 32), v58, v25, v37, v39, v41, v43);
LABEL_57:

              goto LABEL_58;
            }

            v102 = *(MEMORY[0x277D813C8] + 6) << 48;
          }

LABEL_56:
          objc_msgSend_addRange_height_paddingInsets_isCheckbox_(v98, v97, v102 | (v100 << 32) | v101, v99, v58, v25, v37, v39, v41, v43);
          goto LABEL_57;
        }
      }

      v102 = 0;
      goto LABEL_56;
    }

    v59 = objc_msgSend_modelCellID(v3, v33, v34, v35);
    v63 = objc_msgSend_cell(v3, v60, v61, v62);
    if (objc_msgSend_valueType(v63, v64, v65, v66) == 6)
    {
      v70 = objc_msgSend_cell(v3, v67, v68, v69);
      objc_msgSend_formatType(v70, v71, v72, v73);
    }

    if (v25 > 0.0)
    {
      objc_msgSend_paddingInsets(v3, v74, v75, v76);
      v78 = v77;
      objc_msgSend_paddingInsets(v3, v79, v80, v81);
      v85 = v25 + v78 + v84;
      if (v85 < 8.0)
      {
        v85 = 8.0;
      }

      objc_msgSend_addFittingHeight_forCellID_(*(a1 + 48), v82, v59, v83, v85);
    }
  }

LABEL_58:
}

void sub_2213ED5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  _Block_object_dispose(&a17, 8);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  v28 = *(v26 - 88);
  if (v28)
  {
    *(v26 - 80) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2213ED618(__n128 *a1, __n128 *a2)
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

void sub_2213ED63C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2213ED654(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v30._lower = objc_msgSend_rowUIDForRowIndex_(*(a1 + 32), a2, a2, a4);
  v30._upper = v6;
  v7 = sub_2210875C4((*(a1 + 40) + 8), &v30);
  if (v7)
  {
    v11 = *(a1 + 32);
    v12 = v7[4];
    if (v12)
    {
      objc_msgSend_uuidsAsVector(v12, v8, v9, v10);
    }

    else
    {
      __p = 0;
      v28 = 0;
      v29 = 0;
    }

    v25 = objc_msgSend_columnIndexesForUIDs_(v11, v8, &__p, v10);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_2213ED840;
    v26[3] = &unk_278464958;
    v26[5] = a2;
    v26[6] = 1;
    v26[4] = *(a1 + 48);
    objc_msgSend_enumerateRangesUsingBlock_(v25, v23, v26, v24);
  }

  else if (v30 != 0uLL)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTConcurrentMutableCellUIDSet reapAccumulatedCellRegionWithTable:]_block_invoke", v10);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentMutableCellUIDSet.mm", v16);
    v18 = TSKUIDStruct::description(&v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v17, 110, 0, "Search not found: %{public}@", v18);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }
}

void sub_2213ED7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  v22 = v21;

  _Unwind_Resume(a1);
}

void sub_2213ED840(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[5];
  v7 = a1[6];
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0x7FFFFFFFFFFFFFFFLL, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", a4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 168, 0, "Invalid column range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", a4);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 169, 0, "Invalid row range");
    v24 = 0x7FFF7FFFFFFFLL;

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    v28 = 0;
  }

  else
  {
    v29 = v8 | (a2 << 32);
    v30 = a3 | (v7 << 32);
    if (!v7)
    {
      v29 = 0x7FFF7FFFFFFFLL;
      v30 = 0;
    }

    if (!a3)
    {
      v29 = 0x7FFF7FFFFFFFLL;
      v30 = 0;
    }

    if (a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = 0x7FFF7FFFFFFFLL;
    }

    else
    {
      v24 = v29;
    }

    if (a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = 0;
    }

    else
    {
      v28 = v30;
    }
  }

  v31 = *(a1[4] + 8);
  v33 = v31[7];
  v32 = v31[8];
  if (v33 >= v32)
  {
    v35 = v31[6];
    v36 = (v33 - v35) >> 4;
    v37 = v36 + 1;
    if ((v36 + 1) >> 60)
    {
      sub_22107C148();
    }

    v38 = v32 - v35;
    if (v38 >> 3 > v37)
    {
      v37 = v38 >> 3;
    }

    if (v38 >= 0x7FFFFFFFFFFFFFF0)
    {
      v39 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v39 = v37;
    }

    if (v39)
    {
      sub_221086F74((v31 + 6), v39);
    }

    v40 = (16 * v36);
    *v40 = v24;
    v40[1] = v28;
    v34 = 16 * v36 + 16;
    v41 = v31[6];
    v42 = v31[7] - v41;
    v43 = 16 * v36 - v42;
    memcpy(v40 - v42, v41, v42);
    v44 = v31[6];
    v31[6] = v43;
    v31[7] = v34;
    v31[8] = 0;
    if (v44)
    {
      operator delete(v44);
    }
  }

  else
  {
    *v33 = v24;
    v33[1] = v28;
    v34 = (v33 + 2);
  }

  v31[7] = v34;
}

void *sub_2213EDAC0(void *a1, void *a2, uint64_t a3, _OWORD **a4)
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

void sub_2213EDD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087224(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2213EF280(TSUDecimal *a1, TSUDecimal *a2, void *a3)
{
  v5 = a3;
  TSUDecimal::doubleValue(a1);
  v7 = v6;
  TSUDecimal::doubleValue(a2);
  v9 = v8;
  if (TSUDecimal::operator==())
  {
    v13 = 0;
  }

  else
  {
    v14 = objc_msgSend_isEqualViaFormattingAsDouble::(v5, v10, v11, v12, v7, v9);
    v15 = -1;
    if (v7 >= v9)
    {
      v15 = 1;
    }

    if (v14)
    {
      v13 = 0;
    }

    else
    {
      v13 = v15;
    }
  }

  return v13;
}

TSCEASTRewriter *sub_2213F245C(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834A7AC8;
  *(a1 + 25) = v7;
  return a1;
}

TSCEASTElementWithChildren *sub_2213F24E0(uint64_t a1, TSCEASTElementWithChildren *this)
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = TSCEASTElementWithChildren::child(this, 0);
  v5 = TSCEASTElementWithChildren::child(this, 1u);
  if (v4)
  {
    v6 = v5;
    if (v5)
    {
      v7 = (*(*v4 + 40))(v4, a1);
      v8 = (*(*v6 + 40))(v6, a1);
      v9 = TSCEASTElement::tag(v7, a1);
      v39 = a1;
      v10 = TSCEASTElement::tag(v8, a1);
      if (TSCEASTRelativeCoordRefElement::isReferenceTag(v9) && TSCEASTRelativeCoordRefElement::isReferenceTag(v10))
      {
        v50[0] = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        (*(*v7 + 136))(v51, v7, a1, v50);
        __p = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        (*(*v8 + 136))(v50, v8, a1, &__p);
        v11 = v51[1];
        v12 = v50[1];
        v40 = v50[2];
        v41 = v51[2];
        TSCEASTRelativeCoordRefElement::preserveFlags(v7, a1);
        TSCEASTRelativeCoordRefElement::preserveFlags(v8, a1);
        if (v11 != v12 || v41 != v40)
        {
          __p = 0;
          v48 = 0;
          v49 = 0;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          obj = *(a1 + 200);
          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v43, v52, 16);
          if (!v17)
          {
            goto LABEL_30;
          }

          v38 = *v44;
          while (1)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v44 != v38)
              {
                objc_enumerationMutation(obj);
              }

              v19 = objc_msgSend_second(*(*(&v43 + 1) + 8 * i), v14, v15, v16);
              v25 = objc_msgSend_count(v19, v20, v21, v22);
              if (!v25)
              {
                goto LABEL_23;
              }

              v26 = 0;
              LOBYTE(v27) = 0;
              v28 = 0;
              while (1)
              {
                v29 = objc_msgSend_objectAtIndex_(v19, v23, v28, v24);
                v42.coordinate = 0;
                v42._tableUID._lower = 0;
                v30 = TSKMakeUIDStructFromNSUUID();
                v42.coordinate = v30;
                v42._tableUID._lower = v31;
                if ((v27 & 1) == 0)
                {
                  v27 = 0;
                  if (v11 != v30 || v41 != v31)
                  {
                    goto LABEL_21;
                  }

                  goto LABEL_20;
                }

                if (v12 == v30 && v40 == v31)
                {
                  break;
                }

LABEL_20:
                sub_221083454(&__p, &v42);
                v27 = 1;
LABEL_21:

                v26 = ++v28 >= v25;
                if (v25 == v28)
                {
                  if (v27)
                  {

                    LOBYTE(v17) = 1;
                    goto LABEL_30;
                  }

LABEL_23:

                  goto LABEL_25;
                }
              }

              sub_221083454(&__p, &v42);

              if (!v26)
              {
                LOBYTE(v17) = 0;
                goto LABEL_30;
              }

LABEL_25:
              ;
            }

            v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v43, v52, 16);
            if (!v17)
            {
LABEL_30:

              if ((v48 - __p) > 0xFFFFFFFE0)
              {
                v35 = 1;
              }

              else
              {
                v35 = v17;
              }

              if (v48 != __p && (v35 & 1) == 0)
              {
                TSCEASTIteratorBase::createBool(v39, 0, v33, v34);
              }

              TSCEASTIteratorBase::createReferenceError(v39, v32, v33, v34);
            }
          }
        }
      }
    }
  }

  return this;
}

void sub_2213F2AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2213F2B30(id *a1)
{

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2213F2B6C(id *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_2213F2DBC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSTWPTokenAttachment;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_2213F33D8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 80), a2);
  v6 = a2;
  objc_msgSend_setTokenAttachment_(*(*(a1 + 32) + 80), v4, *(a1 + 32), v5);
}

void sub_2213F4870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  a21 = &a31;
  sub_22107C2C0(&a21);
  a21 = (v32 - 160);
  sub_22107C2C0(&a21);
  v34 = *(v32 - 136);
  if (v34)
  {
    operator delete(v34);
  }

  a21 = (v32 - 112);
  sub_22107C2C0(&a21);

  _Unwind_Resume(a1);
}

void sub_2213F4AD0(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_22107C148();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_22133500C(a1, v7);
    v4 = *(a1 + 8);
  }

  *(a1 + 8) = v4 + 1;
  v8 = *a1;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *&v8[8 * v9] | v10;
  }

  else
  {
    v11 = *&v8[8 * v9] & ~v10;
  }

  *&v8[8 * v9] = v11;
}

uint64_t *sub_2213F5020(uint64_t *result, void **a2, void **a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

id TSTExpressionTreeCreator::expressionTreeFromFormula(TSTExpressionTreeCreator *this, TSCEFormulaRewriteContext *a2, TSCEFormulaRewriteContext *a3, TSPObjectContext *a4)
{
  v7 = this;
  v8 = a3;
  v12 = objc_msgSend_const_astNodeArray(v7, v9, v10, v11);
  if (sub_2215C5C84(v12))
  {
    v13 = 0;
  }

  else
  {
    v13 = TSTExpressionTreeCreator::expressionTreeFromASTNodeArray(v12, a2, v8, a4);
  }

  return v13;
}

id TSTExpressionTreeCreator::expressionTreeFromASTNodeArray(TSCEASTNodeArray *this, TSCEFormulaRewriteContext *a2, TSCEFormulaRewriteContext *a3, TSPObjectContext *a4)
{
  v4 = a4;
  v7 = a3;
  v11 = objc_msgSend_documentLocale(a2->var0, v8, v9, v10);
  TSCESymbolTable::TSCESymbolTable(&v21, v11);

  sub_2213F9488(v20, this, a2, &v21, v7, v4);
  TSCEASTRewriter::rewrite(v20, v12, v13, v14);
  v18 = TSTExpressionTreeCreator::expressionNode(v20, v15, v16, v17);
  TSTExpressionTreeCreator::~TSTExpressionTreeCreator(v20);
  v20[0] = &v21._undoSymbolTableMaps.__begin_;
  sub_2210C8268(v20);
  sub_221087B80(&v21._identifierMap);
  sub_2210C82EC(&v21._symbolTableMap);

  return v18;
}

void sub_2213F5240(_Unwind_Exception *a1)
{
  sub_2210C8214((v2 - 168));

  _Unwind_Resume(a1);
}

id TSTExpressionTreeCreator::expressionNode(id *this, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_count(this[28], a2, a3, a4))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "TSTExpressionNode *TSTExpressionTreeCreator::expressionNode()", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 867, 0, "_exprNodeStack should be empty, all partial work processed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  TSTExpressionTreeCreator::completedNodeAndChildren(this, v5, v6, v7);
  v20 = objc_msgSend_count(this[28], v17, v18, v19);
  if (v20)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "TSTExpressionNode *TSTExpressionTreeCreator::expressionNode()", v22);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 870, 0, "_exprNodeStack should now REALLY be empty, we processed remaining work, in theory");

    v20 = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
  }

  v32 = this[27];
  if (v32)
  {
    v33 = TSTExpressionTreeCreator::combineSpillRangeOpIntoRefNode(v20, v32);
    v34 = this[27];
    this[27] = v33;

    v35 = this[27];
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

void TSTExpressionTreeCreator::~TSTExpressionTreeCreator(TSTExpressionTreeCreator *this)
{
  *this = &unk_2834A7C30;
  v3 = (this + 288);
  sub_22107C2C0(&v3);
  v3 = (this + 264);
  sub_22107C2C0(&v3);
  v2 = *(this + 30);
  if (v2)
  {
    *(this + 31) = v2;
    operator delete(v2);
  }

  TSCEASTRewriter::~TSCEASTRewriter(this);
}

{
  TSTExpressionTreeCreator::~TSTExpressionTreeCreator(this);

  JUMPOUT(0x223DA1450);
}

void TSTExpressionTreeCreator::addWhitespaceBefore(TSTExpressionTreeCreator *this, NSString *a2)
{
  v3 = a2;
  v7 = v3;
  if (objc_msgSend_length(v3, v4, v5, v6))
  {
    sub_2210C4258(this + 33, &v7);
    v3 = v7;
  }
}

void TSTExpressionTreeCreator::addWhitespaceAfter(TSTExpressionTreeCreator *this, NSString *a2)
{
  v3 = a2;
  v7 = v3;
  if (objc_msgSend_length(v3, v4, v5, v6))
  {
    sub_2210C4258(this + 36, &v7);
    v3 = v7;
  }
}

void TSTExpressionTreeCreator::addExpression(TSTExpressionTreeCreator *this, TSTExpressionNode *a2, int a3)
{
  v9 = a2;
  v80 = a3;
  if (v9)
  {
    for (i = *(this + 34); *(this + 33) != i; i = *(this + 34))
    {
      v11 = *(i - 8);
      v12 = *(this + 34);

      *(this + 34) = v12 - 8;
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

    for (j = *(this + 37); *(this + 36) != j; j = *(this + 37))
    {
      v27 = *(j - 8);
      v28 = *(this + 37);

      *(this + 37) = v28 - 8;
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

    if (objc_msgSend_count(*(this + 29), v6, v7, v8))
    {
      v45 = objc_msgSend_lastObject(*(this + 29), v42, v43, v44);
      objc_msgSend_addObject_(v45, v46, v9, v47);
    }

    else if (!a3)
    {
      if (objc_msgSend_count(*(this + 28), v42, v43, v44))
      {
        v59 = MEMORY[0x277D81150];
        v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "void TSTExpressionTreeCreator::addExpression(TSTExpressionNode *__strong, uint32_t)", v58);
        v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v62);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v64, v60, v63, 127, 0, "Expecting exprNodeStack to be empty in this case, we are top-level");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67);
      }

      objc_msgSend_addObject_(*(this + 28), v57, v9, v58);
      if (*(this + 27))
      {
        v68 = MEMORY[0x277D81150];
        v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "void TSTExpressionTreeCreator::addExpression(TSTExpressionNode *__strong, uint32_t)", v44);
        v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v71);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v73, v69, v72, 129, 0, "Expecting _topLevelExpr to be nil in this case, we are top-level");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76);
      }
    }

    if (*(this + 27))
    {
      if (!a3)
      {
        goto LABEL_25;
      }
    }

    else
    {
      objc_storeStrong(this + 27, a2);
      if (!a3)
      {
LABEL_25:
        TSTExpressionTreeCreator::completedNodeAndChildren(this, v42, v43, v44);
        goto LABEL_26;
      }
    }

    objc_msgSend_addObject_(*(this + 28), v42, v9, v44);
    v77 = objc_opt_new();
    objc_msgSend_addObject_(*(this + 29), v78, v77, v79);
    sub_2210C47D0(this + 30, &v80);

    if (!v80)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "void TSTExpressionTreeCreator::addExpression(TSTExpressionNode *__strong, uint32_t)", v8);
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v51);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v53, v49, v52, 100, 0, "invalid nil value for '%{public}s'", "exprNode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56);
  }

LABEL_26:
}

void *TSTExpressionTreeCreator::completedNodeAndChildren(TSTExpressionTreeCreator *this, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_count(*(this + 28), a2, a3, a4);
  if (result)
  {
    v208 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    while (1)
    {
      v9 = objc_msgSend_lastObject(*(this + 28), v6, v7, v8);
      if (objc_msgSend_count(*(this + 29), v10, v11, v12) && (v16 = *(*(this + 31) - 4), v16))
      {
        v17 = objc_msgSend_lastObject(*(this + 29), v13, v14, v15);
        v21 = objc_msgSend_count(v17, v18, v19, v20);
        v24 = v21 == v16;
        if (v21 == v16)
        {
          objc_msgSend_setChildren_(v9, v22, v17, v23);
          *(this + 31) -= 4;
          objc_msgSend_removeLastObject(*(this + 29), v25, v26, v27);
        }

        else
        {

          v9 = 0;
        }
      }

      else
      {
        v24 = 1;
      }

      if (objc_msgSend_isColonNode(v9, v13, v14, v15))
      {
        break;
      }

      if (objc_msgSend_isContinuedLetNode(v9, v28, v29, v30))
      {
        if (objc_msgSend_count(*(this + 28), v102, v103, v104) < 2 || (v108 = *(this + 28), v109 = objc_msgSend_count(v108, v105, v106, v107), objc_msgSend_objectAtIndexedSubscript_(v108, v110, v109 - 2, v111), (v31 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v157 = MEMORY[0x277D81150];
          v158 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, "void TSTExpressionTreeCreator::completedNodeAndChildren()", v107);
          v161 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v159, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v160);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v157, v162, v158, v161, 279, 0, "Didn't find a parent LET for LET-continued node");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v163, v164, v165);
LABEL_37:
          if (v9)
          {
            goto LABEL_38;
          }

          goto LABEL_61;
        }

        v113 = objc_msgSend_lastObject(*(this + 29), v105, v112, v107);
        v37 = v113;
        if (v113)
        {
          v119 = objc_msgSend_indexOfObjectIdenticalTo_(v113, v114, v9, v115);
          if (v119 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v40 = objc_msgSend_children(v9, v116, v117, v118);
            if (!objc_msgSend_count(v40, v120, v121, v122))
            {
              v125 = MEMORY[0x277D81150];
              v126 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v123, "void TSTExpressionTreeCreator::completedNodeAndChildren()", v124);
              v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v127, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v128);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v125, v130, v126, v129, 290, 0, "CompletedNode should already have its children");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v131, v132, v133);
            }

            objc_msgSend_removeObjectAtIndex_(v37, v123, v119, v124);
            v134 = MEMORY[0x277CCAA78];
            v138 = objc_msgSend_count(v40, v135, v136, v137);
            v47 = objc_msgSend_indexSetWithIndexesInRange_(v134, v139, v119, v138);
            objc_msgSend_insertObjects_atIndexes_(v37, v140, v40, v47);
            v141 = *(this + 31);
            v211._topLeft.row = *(v141 - 4);
            *(this + 31) = v141 - 4;
            v145 = objc_msgSend_count(v40, v142, v143, v144);
            v211._topLeft.row = v145 + v211._topLeft.row - 1;
            sub_2210C47D0(this + 30, &v211);
LABEL_57:

            goto LABEL_58;
          }
        }

LABEL_59:

        goto LABEL_60;
      }

      if (!objc_msgSend_isFunctionNode(v9, v102, v103, v104))
      {
        goto LABEL_37;
      }

      objc_opt_class();
      v31 = TSUDynamicCast();
      objc_msgSend_resurrectModeTokens(v31, v149, v150, v151);
LABEL_60:

      if (v9)
      {
LABEL_38:
        objc_msgSend_removeLastObject(*(this + 28), v146, v147, v148);
        goto LABEL_62;
      }

LABEL_61:
      v24 = 0;
LABEL_62:

      result = objc_msgSend_count(*(this + 28), v192, v193, v194);
      if (!result || !v24)
      {
        return result;
      }
    }

    v31 = objc_msgSend_children(v9, v28, v29, v30);
    if (objc_msgSend_count(v31, v32, v33, v34) != 2)
    {
      goto LABEL_60;
    }

    v37 = objc_msgSend_objectAtIndexedSubscript_(v31, v35, 0, v36);
    v40 = objc_msgSend_objectAtIndexedSubscript_(v31, v38, 1, v39);
    if (objc_msgSend_isReferenceNode(v37, v41, v42, v43) && objc_msgSend_isReferenceNode(v40, v44, v45, v46))
    {
      objc_opt_class();
      v47 = TSUDynamicCast();
      objc_opt_class();
      v48 = TSUDynamicCast();
      v52 = v48;
      if (v47 && v48 && (objc_msgSend_spillRangeSuffix(v47, v49, v50, v51) & 1) == 0 && (objc_msgSend_spillRangeSuffix(v52, v53, v54, v55) & 1) == 0 && (objc_msgSend_isCategoryRef(v47, v56, v57, v58) & 1) == 0 && (objc_msgSend_isCategoryRef(v52, v59, v60, v61) & 1) == 0)
      {
        v203 = objc_msgSend_tableUID(v47, v62, v63, v64);
        v66 = v65;
        v67 = sub_221089E8C(this);
        v69 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v68, v203, v66, v67);

        v207 = v69;
        if (objc_msgSend_isCategorized(v69, v70, v71, v72))
        {
          v73 = v47;
          v201 = v52;
          v204 = v73;
          v77 = objc_msgSend_baseTopLeftCoord(v73, v74, v75, v76);
          v81 = objc_msgSend_baseBottomRightCoord(v201, v78, v79, v80);
          if ((v77 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (v81 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
          {
            v171 = [TSTReferenceNode alloc];
            v199 = *(this + 25);
            v197 = sub_221089E8C(this);
            tableUID = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0._tableUID;
            v211 = v208;
            v212 = tableUID;
            v173 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
            v209 = *&v173->var0.var0.coordinate.row;
            upper = v173->var0.var0._tableUID._upper;
            LOBYTE(v195) = *(this + 208);
            started = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v171, v174, v199, v197, &v211, 0, &v209, 0, v195);
          }

          else
          {
            v209._topLeft = v77;
            v209._bottomRight = v81;
            v85 = objc_msgSend_basePreserveFlags(v204, v82, v83, v84);
            v213._flags = v85 & 3 | (4 * (objc_msgSend_basePreserveFlags(v201, v86, v87, v88) & 3));
            TSCERangeCoordinate::fixInversions(&v209, &v213);
            v198 = [TSTUIDRectRef alloc];
            v92 = objc_msgSend_calcEngine(v69, v89, v90, v91);
            v96 = objc_msgSend_tableUID(v69, v93, v94, v95);
            v211 = v209;
            v212._lower = v96;
            v212._upper = v97;
            v199 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v198, v97, v92, &v211, v213._flags);

            v98 = [TSTReferenceNode alloc];
            v197 = *(this + 25);
            v196 = sub_221089E8C(this);
            v99 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
            v211 = *&v99->var0.var0.coordinate.row;
            v212._lower = v99->var0.var0._tableUID._upper;
            started = objc_msgSend_initWithContext_calculationEngine_uidRectRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v98, v100, v197, v196, v199, &v211, 0, *(this + 208));
          }
        }

        else
        {
          v166 = [TSTReferenceNode alloc];
          started = objc_msgSend_initWithReferenceStart_referenceEnd_suppressAutomaticNamedReferenceInvalidation_(v166, v167, v47, v52, *(this + 208));
        }

        if (started)
        {
          if (objc_msgSend_count(*(this + 29), v168, v169, v170) && (objc_msgSend_lastObject(*(this + 29), v175, v176, v177), (v178 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v205 = v178;
            v182 = objc_msgSend_indexOfObjectIdenticalTo_(v178, v179, v9, v180);
            if (v182 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v184 = MEMORY[0x277D81150];
              v202 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v181, "void TSTExpressionTreeCreator::completedNodeAndChildren()", v183);
              v200 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v185, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v186);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v184, v187, v202, v200, 250, 0, "Expecting to locate a valid replaceIndex");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v188, v189, v190);
            }

            else
            {
              objc_msgSend_replaceObjectAtIndex_withObject_(v205, v181, v182, started);
            }

            v191 = v205;
          }

          else
          {
            v191 = 0;
          }

          if (*(this + 27) == v9)
          {
            v206 = v191;
            objc_storeStrong(this + 27, started);
            v191 = v206;
          }
        }
      }

      goto LABEL_57;
    }

    if (objc_msgSend_isReferenceNode(v37, v44, v45, v46) || objc_msgSend_isReferenceNode(v40, v152, v153, v154))
    {
      objc_opt_class();
      v47 = TSUDynamicCast();
      objc_msgSend_setRangeWithFunction_(v47, v155, 1, v156);
      goto LABEL_57;
    }

LABEL_58:

    goto LABEL_59;
  }

  return result;
}