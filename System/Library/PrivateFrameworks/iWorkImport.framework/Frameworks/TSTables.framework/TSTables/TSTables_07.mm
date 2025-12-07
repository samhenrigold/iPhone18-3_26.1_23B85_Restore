void sub_2211F14E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v6 = v4[7];
  v5 = v4[8];
  if (v6 >= v5)
  {
    v8 = v4[6];
    v9 = (v6 - v8) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      sub_22107C148();
    }

    v11 = v5 - v8;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_221086F74((v4 + 6), v12);
    }

    v13 = (16 * v9);
    *v13 = a2;
    v13[1] = a3;
    v7 = 16 * v9 + 16;
    v14 = v4[6];
    v15 = v4[7] - v14;
    v16 = (16 * v9 - v15);
    memcpy(v16, v14, v15);
    v17 = v4[6];
    v4[6] = v16;
    v4[7] = v7;
    v4[8] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v6 = a2;
    v6[1] = a3;
    v7 = (v6 + 2);
  }

  v4[7] = v7;
}

void sub_2211F16CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211F16EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2211F1704(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v11._lower = a2;
  v11._upper = a3;
  v6 = TSKUIDStruct::description(&v11);
  v7 = *(*(*(a1 + 32) + 8) + 40);
  if (v7)
  {
    objc_msgSend_appendFormat_(v7, v4, @", %@", v5, v6);
  }

  else
  {
    v8 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v4, v6, v5);
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void sub_2211F18BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *sub_2211F18E0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7[0] = a2;
  v7[1] = a3;
  result = sub_2210875C4((*(a1 + 32) + 8), v7);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_2211F1A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *sub_2211F1A54(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7[0] = a2;
  v7[1] = a3;
  result = sub_2210875C4((*(a1 + 32) + 8), v7);
  if (!result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_2211F1C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_2211F1C94(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_2211F1CA4(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *a4 = 1;
  return result;
}

void sub_2211F24C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void *sub_2211F24EC(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_p_addUUID_(*(a1 + 32), a2, a2, a3);
  if (result)
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    if (!v8)
    {
      v9 = objc_opt_new();
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v8 = *(*(*(a1 + 40) + 8) + 40);
    }

    return objc_msgSend_addUUID_(v8, v7, a2, a3);
  }

  return result;
}

void sub_2211F265C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *sub_2211F2678(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_p_removeUUID_(*(a1 + 32), a2, a2, a3);
  v5 = *(*(a1 + 40) + 8);
  if (result)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(v5 + 24);
  }

  *(v5 + 24) = v6 & 1;
  return result;
}

void sub_2211F27D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void *sub_2211F27F4(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_p_removeUUID_(*(a1 + 32), a2, a2, a3);
  if (result)
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    if (!v8)
    {
      v9 = objc_opt_new();
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v8 = *(*(*(a1 + 40) + 8) + 40);
    }

    return objc_msgSend_addUUID_(v8, v7, a2, a3);
  }

  return result;
}

void sub_2211F2900(void *a1, uint64_t *a2, uint64_t *a3)
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
        *(v8 + 1) = *(a2 + 1);
        v9 = *v8;
        v10 = v8[3] ^ v8[2];
        v8[1] = v10;
        v11 = sub_2211F2A14(a1, v10, v8 + 2);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v9;
        if (!v9)
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
    sub_2211F2DE8(a1, a2 + 1);
  }
}

void sub_2211F29E0(void *a1)
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

void *sub_2211F2A14(uint64_t a1, unint64_t a2, void *a3)
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

    sub_2211F2B78(a1, v13);
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

    if (v19 == a2)
    {
      v21 = v16[2] == *a3 && v16[3] == a3[1];
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 != (v17 & 1);
    v24 = v17 & v23;
    v17 |= v23;
  }

  while (v24 != 1);
  return result;
}

void sub_2211F2B78(uint64_t result, size_t __n)
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

      sub_2211F2C68(result, prime);
    }
  }
}

void sub_2211F2C68(uint64_t a1, unint64_t a2)
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

uint64_t *sub_2211F2E78(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221086F38(result, a4);
  }

  return result;
}

void sub_2211F2ED8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2211F2EF4(void *a1, void *a2)
{
  result = sub_2210875C4(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

double sub_2211F2F2C(long double a1, double a2)
{
  v4 = *&qword_27CFB4C68;
  v5 = qword_27CFB4C50;
  v6 = 1.0 / (a1 * 9.0);
  v27 = 1.0;
  sub_2214A7870(a2);
  v8 = 1.0 - v6 - v7 * sqrt(v6);
  v9 = v8 * (v8 * (v8 * a1));
  v10.n128_f64[0] = sub_221289DC8(a1);
  v11 = 0.0;
  v26 = *&v5;
  if (v9 > v4 || v9 < 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v12 = v10.n128_f64[0];
    v13 = 0;
    v14 = 0.0;
    v27 = 1.0;
    do
    {
      v10.n128_f64[0] = a1;
      v15 = sub_2213BCD48(v10, v9);
      v10.n128_f64[0] = v27;
      if (v15 < v14 || v15 > v27)
      {
        break;
      }

      if (v15 >= a2)
      {
        v11 = v9;
      }

      else
      {
        v4 = v9;
      }

      if (v15 >= a2)
      {
        v10.n128_f64[0] = v15;
      }

      else
      {
        v14 = v15;
      }

      v27 = v10.n128_f64[0];
      v10.n128_f64[0] = -(v9 - (a1 + -1.0) * log(v9)) - v12;
      if (v10.n128_f64[0] < -*&qword_27CFB4C58)
      {
        break;
      }

      v10.n128_f64[0] = (v15 - a2) / -exp(v10.n128_f64[0]);
      if (fabs(v10.n128_f64[0] / v9) < *&qword_27CFB4C50)
      {
        return v9;
      }

      v9 = v9 - v10.n128_f64[0];
      if (v13 > 8)
      {
        break;
      }

      ++v13;
    }

    while (v9 <= v4 && v9 >= v11);
  }

  v18 = 5.0;
  if (v4 == *&qword_27CFB4C68)
  {
    if (v9 <= 0.0)
    {
      v20 = 1.0;
    }

    else
    {
      v20 = v9;
    }

    v19 = 0.0625;
    while (1)
    {
      v20 = v20 * (v19 + 1.0);
      v10.n128_f64[0] = a1;
      v10.n128_f64[0] = sub_2213BCD48(v10, v20);
      if (v10.n128_f64[0] < a2)
      {
        break;
      }

      v19 = v19 + v19;
      if (v4 != *&qword_27CFB4C68)
      {
        v20 = v4;
        goto LABEL_35;
      }
    }

    v14 = v10.n128_f64[0];
LABEL_35:
    v18 = 5.0;
  }

  else
  {
    v20 = v4;
  }

  v21 = 0;
  v22 = v26 * v18;
  v23 = 400;
  v24 = 0.5;
  do
  {
    v9 = v11 + v24 * (v20 - v11);
    v10.n128_f64[0] = a1;
    v10.n128_f64[0] = sub_2213BCD48(v10, v9);
    if (fabs((v20 - v11) / (v20 + v11)) < v22 || v9 <= 0.0 || fabs((v10.n128_f64[0] - a2) / a2) < v22)
    {
      break;
    }

    if (v10.n128_f64[0] >= a2)
    {
      if (v21 < 0)
      {
        v21 = 0;
        v24 = 0.5;
      }

      else
      {
        v24 = v21 < 2 ? (a2 - v14) / (v10.n128_f64[0] - v14) : v24 * 0.5 + 0.5;
      }

      ++v21;
      v11 = v9;
      v27 = v10.n128_f64[0];
    }

    else
    {
      if (v21 <= 0)
      {
        v24 = v21 > -2 ? (a2 - v10.n128_f64[0]) / (v27 - v10.n128_f64[0]) : v24 * 0.5;
      }

      else
      {
        v21 = 0;
        v24 = 0.5;
      }

      --v21;
      v20 = v9;
      v14 = v10.n128_f64[0];
    }

    --v23;
  }

  while (v23);
  if (v9 == 0.0)
  {
    sub_22137A674("igami", 4);
  }

  return v9;
}

uint64_t sub_2211F3230(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v4 = &unk_2834A2E58;
  *(a1 + 136) = objc_opt_new();
  *(a1 + 144) = 0;
  *(a1 + 152) = 256;
  *(a1 + 96) = 1;
  return a1;
}

void sub_2211F32AC(uint64_t a1, int a2)
{
  *(a1 + 152) = a2;
  if (a2 && !*(a1 + 144))
  {
    v3 = objc_opt_new();
    v4 = *(a1 + 144);
    *(a1 + 144) = v3;
  }
}

id sub_2211F330C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 152) == 1 && objc_msgSend_count(*(a1 + 144), a2, a3, a4))
  {
    v8 = objc_msgSend_lastObject(*(a1 + 144), v5, v6, v7);
    objc_msgSend_removeLastObject(*(a1 + 144), v9, v10, v11);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_2211F339C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5 && (*(a1 + 152) & 1) != 0)
  {
    objc_msgSend_addObject_(*(a1 + 144), v3, v5, v4);
  }
}

void sub_2211F340C(uint64_t a1, void *a2)
{
  v55 = a2;
  if (v55 && (*(a1 + 152) & 1) != 0)
  {
    v7 = sub_2211F330C(a1, v4, v5, v6);
    v11 = sub_2211F330C(a1, v8, v9, v10);
    if (!objc_msgSend_isEqualToString_(v55, v12, @":", v13))
    {
      v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v55, @"(%@ %@ %@)", v15, v11, v55, v7);
      sub_2211F339C(a1, v16);
LABEL_26:

      goto LABEL_27;
    }

    v16 = objc_msgSend_componentsSeparatedByString_(v11, v14, @"::", v15);
    v19 = objc_msgSend_componentsSeparatedByString_(v7, v17, @"::", v18);
    if (objc_msgSend_count(v16, v20, v21, v22) == 2 && objc_msgSend_count(v19, v23, v24, v25) == 2)
    {
      v26 = objc_msgSend_objectAtIndexedSubscript_(v16, v23, 0, v25);
      v2 = objc_msgSend_objectAtIndexedSubscript_(v19, v27, 0, v28);
      isEqualToString = objc_msgSend_isEqualToString_(v26, v29, v2, v30);

      if (isEqualToString)
      {
        v32 = objc_msgSend_objectAtIndexedSubscript_(v19, v23, 1, v25);

        v7 = v32;
      }
    }

    if (objc_msgSend_count(v16, v23, v24, v25) == 2 && objc_msgSend_count(v19, v33, v34, v35) == 2)
    {
      v36 = objc_msgSend_objectAtIndexedSubscript_(v16, v33, 1, v35);
      v2 = objc_msgSend_objectAtIndexedSubscript_(v19, v37, 1, v38);
      if (objc_msgSend_isEqualToString_(v36, v39, v2, v40))
      {

LABEL_24:
        sub_2211F339C(a1, v11);
        goto LABEL_25;
      }

      v54 = v36;
      v41 = 1;
    }

    else
    {
      v41 = 0;
    }

    if (objc_msgSend_count(v16, v33, v34, v35) == 1 && objc_msgSend_count(v19, v42, v43, v44) == 1)
    {
      v46 = objc_msgSend_objectAtIndexedSubscript_(v16, v45, 0, v44);
      v49 = objc_msgSend_objectAtIndexedSubscript_(v19, v47, 0, v48);
      v52 = objc_msgSend_isEqualToString_(v46, v50, v49, v51);

      if (v41)
      {

        if (v52)
        {
          goto LABEL_24;
        }
      }

      else if (v52)
      {
        goto LABEL_24;
      }
    }

    else if (v41)
    {
    }

    v53 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v55, @"%@%@%@", v44, v11, v55, v7);
    sub_2211F339C(a1, v53);

LABEL_25:
    goto LABEL_26;
  }

LABEL_27:
}

void sub_2211F36F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, id a14)
{
  if (v18)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2211F37A4(uint64_t a1, void *a2)
{
  v15 = a2;
  if (v15 && (*(a1 + 152) & 1) != 0)
  {
    v6 = sub_2211F330C(a1, v3, v4, v5);
    if (objc_msgSend_hasPrefix_(v6, v7, @"("), v8 && objc_msgSend_hasSuffix_(v6, v9, @""), v10))
    {
      v11 = v6;
    }

    else
    {
      v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"(%@)", v10, v6);
    }

    v13 = v11;
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"(%@%@)", v12, v15, v11);
    sub_2211F339C(a1, v14);
  }
}

void sub_2211F38CC(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (v5 && (*(a1 + 152) & 1) != 0)
  {
    v15 = v5;
    if (a3 < 1)
    {
      goto LABEL_10;
    }

    v9 = 0;
    do
    {
      v12 = sub_2211F330C(a1, v6, v7, v8);
      if (v9)
      {
        v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%@,%@", v11, v12, v9);

        v9 = v13;
      }

      else
      {
        v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%@", v11, v12);
      }

      --a3;
    }

    while (a3);
    if (!v9)
    {
LABEL_10:
      v9 = &stru_2834BADA0;
    }

    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v15, @"%@(%@)", v8, v15, v9);
    sub_2211F339C(a1, v14);

    v5 = v15;
  }
}

id sub_2211F3A28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 152) == 1)
  {
    if (objc_msgSend_count(*(a1 + 144), a2, a3, a4) != 1)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "NSString *TSCEASTDescriptionIterator::prettyDescription()", v7);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTDescriptionIterator.mm", v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 142, 0, "Should only have one argument on _argStack at this point, the final result. ArgStack: %@", *(a1 + 144));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    }

    v17 = sub_2211F330C(a1, v5, v6, v7);
  }

  else
  {
    v17 = *(a1 + 136);
  }

  return v17;
}

uint64_t sub_2211F3B34(uint64_t a1, uint64_t a2)
{
  v4 = TSCEASTElement::tag(a2, a1);
  if ((v4 - 1) >= 0xC)
  {
    v10 = v4;
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "virtual TSCEASTElement *TSCEASTDescriptionIterator::binaryInfixOperatorNode(TSCEASTBinaryElement *)", v6);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTDescriptionIterator.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 207, 0, "Unknown operator tag: %d", v10);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    v8 = &stru_2834BADA0;
    v9 = &stru_2834BADA0;
  }

  else
  {
    v7 = (v4 - 1);
    v8 = off_278461440[v7];
    v9 = off_2784614A0[v7];
  }

  sub_2211F340C(a1, v8);
  objc_msgSend_appendString_(*(a1 + 136), v20, v9, v21);
  return a2;
}

uint64_t sub_2211F3C64(uint64_t a1, uint64_t a2, int a3)
{
  v6 = TSCEASTElement::tag(a2, a1);
  v10 = v6;
  if (v6 <= 14)
  {
    if (v6 == 13)
    {
      v11 = @"op- ";
      v12 = @"-";
      if (a3)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }

    if (v6 == 14)
    {
      v11 = @"op+ ";
      v12 = @"+";
      if (!a3)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

LABEL_19:
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "virtual TSCEASTElement *TSCEASTDescriptionIterator::unaryOperatorNode(TSCEASTUnaryElement *, BOOL)", v9);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTDescriptionIterator.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 249, 0, "Unknown operator tag: %d", v10);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    v12 = &stru_2834BADA0;
    v11 = &stru_2834BADA0;
    if (a3)
    {
      goto LABEL_16;
    }

LABEL_20:
    sub_2211F37A4(a1, v12);
    goto LABEL_23;
  }

  if (v6 == 15)
  {
    v11 = @"% ";
    v12 = &stru_2834BADA0;
    if (!a3)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v6 == 69)
  {
    v11 = @"op@ ";
    v12 = @"@";
    if (!a3)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v6 != 70)
  {
    goto LABEL_19;
  }

  v11 = @"op# ";
  v12 = @"#";
  if (!a3)
  {
    goto LABEL_20;
  }

LABEL_16:
  if (*(a1 + 152) == 1)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = sub_2211F330C(a1, v12, v8, v9);
    v17 = v14;
    if (v10 == 70)
    {
      objc_msgSend_stringWithFormat_(v13, v15, @"((%@)#)", v16, v14);
    }

    else
    {
      objc_msgSend_stringWithFormat_(v13, v15, @"((%@)%%)", v16, v14);
    }
    v18 = ;
    sub_2211F339C(a1, v18);
  }

LABEL_23:
  objc_msgSend_appendString_(*(a1 + 136), v12, v11, v9);
  return a2;
}

TSCEASTFunctionElement *sub_2211F3EDC(TSCEASTIteratorBase *a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4);
  v7 = (*(*this + 48))(this, a1);
  v10 = TSCEASTFunctionElement::whitespace(this, a1, v8, v9);
  v13 = objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v11, v6, v12);
  sub_2211F38CC(a1, v13, v7);
  v19 = objc_msgSend_length(v10, v14, v15, v16);
  v20 = *(a1 + 17);
  if (v19)
  {
    objc_msgSend_appendFormat_(v20, v17, @"%@{%i args, ws:'%@'} ", v18, v13, v7, v10);
  }

  else
  {
    objc_msgSend_appendFormat_(v20, v17, @"%@{%i args} ", v18, v13, v7);
  }

  return this;
}

TSCEASTUnknownFunctionElement *sub_2211F3FF8(id *a1, TSCEASTUnknownFunctionElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTUnknownFunctionElement::unknownFunctionName(this, a1, a3, a4);
  v7 = (*(*this + 48))(this, a1);
  sub_2211F38CC(a1, v6, v7);
  objc_msgSend_appendFormat_(a1[17], v8, @"unknownFunction: %@{%i args} ", v9, v6, v7);

  return this;
}

uint64_t sub_2211F40AC(uint64_t a1, uint64_t a2)
{
  if (TSCEASTElement::tag(a2, a1) == 45)
  {
    v4 = (*(*a2 + 96))(a2, a1);
    v8 = v4;
    if ((*(a1 + 153) & 1) != 0 || !objc_msgSend_tractCount(v4, v5, v6, v7))
    {
      sub_2211F340C(a1, @":");
      objc_msgSend_appendString_(*(a1 + 136), v16, @":", v17);
    }

    else
    {
      v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"[: %@]", v10, v8);
      sub_2211F340C(a1, v11);
      objc_msgSend_appendFormat_(*(a1 + 136), v12, @"%@ ", v13, v11);
    }
  }

  else
  {
    sub_2211F340C(a1, @":");
    objc_msgSend_appendString_(*(a1 + 136), v14, @":", v15);
  }

  return a2;
}

TSCEASTColonTractElement *sub_2211F41F0(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4);
  v10 = objc_msgSend_tableUID(v6, v7, v8, v9);
  v12 = v11;
  v78._lower = v10;
  v78._upper = v11;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = sub_2211F4694;
  v76 = sub_2211F46A4;
  v77 = 0;
  v71 = 0;
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
  v71 = coordinate;
  if (coordinate.row == 0x7FFFFFFF || (*&coordinate & 0xFFFF00000000) == 0x7FFF00000000)
  {
    if (objc_msgSend_preserveFlags(v6, v13, v14, v15) == 15)
    {
      coordinate = 0;
      v71 = 0;
    }

    else
    {
      coordinate = v71;
    }
  }

  if (coordinate.row != 0x7FFFFFFF && (*&coordinate & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v23 = objc_msgSend_absoluteCellTractRefForHostCell_(v6, v13, &v71, v15);
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = sub_2211F46AC;
    v70[3] = &unk_278461420;
    v70[4] = &v72;
    objc_msgSend_foreachAnyRef_(v23, v24, v70, v25);
LABEL_17:

    goto LABEL_19;
  }

  if (objc_msgSend_isRectangularRange(v6, v13, v14, v15) && !objc_msgSend_preserveFlags(v6, v19, v20, v21))
  {
    v69 = objc_msgSend_relativeTopLeft(v6, v19, v22, v21);
    v68 = objc_msgSend_relativeBottomRight(v6, v59, v60, v61);
    v62 = MEMORY[0x277CCAB68];
    v23 = TSCERelativeCellCoordinate::description(&v69);
    v63 = TSCERelativeCellCoordinate::description(&v68);
    v66 = objc_msgSend_stringWithFormat_(v62, v64, @"%@:%@", v65, v23, v63, v68);
    v67 = v73[5];
    v73[5] = v66;

    goto LABEL_17;
  }

  v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v19, @"[%@]", v21, v6);
  v29 = v73[5];
  v73[5] = v28;

LABEL_19:
  if (!v73[5])
  {
    v30 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v26, @"<error in colonTractNode() - got nil>", v27);
    v31 = v73[5];
    v73[5] = v30;

    v32 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "virtual TSCEASTElement *TSCEASTDescriptionIterator::colonTractNode(TSCEASTColonTractElement *)", v34);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTDescriptionIterator.mm", v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v35, v38, 380, 0, "Why would this happen?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42);
  }

  if (v10 | v12)
  {
    v43 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    if (v10 != v43->var0.var0._tableUID._lower || v12 != v43->var0.var0._tableUID._upper)
    {
      v44 = MEMORY[0x277CCAB68];
      v45 = TSKUIDStruct::description(&v78);
      v48 = objc_msgSend_stringWithFormat_(v44, v46, @"%@::%@", v47, v45, v73[5]);
      v49 = v73[5];
      v73[5] = v48;
    }
  }

  if ((*(a1 + 153) & 1) == 0)
  {
    v50 = (*(*this + 96))(this, a1);
    if (objc_msgSend_tractCount(v50, v51, v52, v53))
    {
      v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v54, @"%@{%@}", v55, v73[5], v50);
      v57 = v73[5];
      v73[5] = v56;
    }
  }

  objc_msgSend_appendString_(*(a1 + 17), v26, v73[5], v27);
  sub_2211F339C(a1, v73[5]);
  _Block_object_dispose(&v72, 8);

  return this;
}

void sub_2211F4610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211F4694(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2211F46AC(uint64_t a1, TSCEAnyRef *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (v6)
  {
    objc_msgSend_appendString_(v6, a2, @" | ", a4);
  }

  else
  {
    v7 = objc_opt_new();
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  if (a2->_refType - 1 >= 2)
  {
    v14 = *(*(*(a1 + 32) + 8) + 40);
    if (a2->_refType)
    {
      v19 = TSCEAnyRef::description(a2);
      objc_msgSend_appendFormat_(v14, v17, @"Unexpected refType: %@", v18, v19);
    }

    else
    {
      v19 = NSStringFromTSUCellCoord();
      objc_msgSend_appendString_(v14, v15, v19, v16);
    }
  }

  else
  {
    v10 = *(*(*(a1 + 32) + 8) + 40);
    v19 = NSStringFromTSUCellCoord();
    v11 = NSStringFromTSUCellCoord();
    objc_msgSend_appendFormat_(v10, v12, @"%@:%@", v13, v19, v11);
  }
}

TSCEASTViewTractRefElement *sub_2211F481C(id *a1, TSCEASTViewTractRefElement *this, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 152) == 1 && (sub_221089E8C(a1), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = TSCEASTViewTractRefElement::viewTractRef(this, a1, a3, a4);
    v8 = sub_221089E8C(a1);
    v37 = objc_msgSend_tableUID(v7, v9, v10, v11);
    v38._lower = v12;
    v14 = objc_msgSend_tableResolverForTableUID_(v8, v12, &v37, v13);

    if (v14)
    {
      v17 = objc_msgSend_cellTractRefForViewTractRef_(v14, v15, v7, v16);
      v21 = objc_msgSend_description(v17, v18, v19, v20);
    }

    else
    {
      v21 = @"<#REF! VTR>";
    }
  }

  else
  {
    TSCEASTViewTractRefElement::uidReference(&v37, this, a1, a3, a4);
    v22 = v37;
    v23 = MEMORY[0x277CCACA8];
    v24 = sub_22122B9BC(&v37);
    v21 = objc_msgSend_stringWithFormat_(v23, v25, @"ViewTractRef(%@ Preserve:%u) ", v26, v22, v24);
    if (v38 != 0uLL)
    {
      v27 = TSKUIDStruct::description(&v38);
      v30 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"%@::%@", v29, v27, v21);

      v21 = v30;
    }
  }

  objc_msgSend_appendFormat_(a1[17], v31, @"%@ ", v32, v21);
  v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v33, @"%@", v34, v21);
  sub_2211F339C(a1, v35);

  return this;
}

TSCEASTNumberElement *sub_2211F4A8C(TSCEASTIteratorBase *a1, TSCEASTNumberElement *this, uint64_t a3, uint64_t a4)
{
  v17._decimal.w[0] = TSCEASTNumberElement::value(this, a1, a3, a4);
  v17._decimal.w[1] = v6;
  v7 = MEMORY[0x277CCACA8];
  v8 = TSUDecimal::description(&v17);
  v11 = objc_msgSend_stringWithFormat_(v7, v9, @"%@", v10, v8);
  sub_2211F339C(a1, v11);

  v12 = *(a1 + 17);
  v13 = TSUDecimal::description(&v17);
  objc_msgSend_appendFormat_(v12, v14, @"%@ ", v15, v13);

  return this;
}

TSCEASTBooleanElement *sub_2211F4B68(id *a1, TSCEASTBooleanElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTBooleanElement::value(this, a1, a3, a4);
  v7 = @"FALSE";
  if (v6)
  {
    v7 = @"TRUE";
  }

  v8 = v7;
  sub_2211F339C(a1, v8);
  objc_msgSend_appendFormat_(a1[17], v9, @"%@ ", v10, v8);

  return this;
}

TSCEASTStringElement *sub_2211F4C00(id *a1, TSCEASTStringElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTStringElement::string(this, a1, a3, a4);
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%@", v8, v6);
  sub_2211F339C(a1, v9);

  objc_msgSend_appendFormat_(a1[17], v10, @"%@ ", v11, v6);
  return this;
}

TSCEASTDateElement *sub_2211F4CB0(id *a1, TSCEASTDateElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTDateElement::value(this, a1, a3, a4);
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%@", v8, v6);
  sub_2211F339C(a1, v9);

  objc_msgSend_appendFormat_(a1[17], v10, @"%@ ", v11, v6);
  return this;
}

TSCEASTDurationElement *sub_2211F4D60(id *a1, TSCEASTDurationElement *this, uint64_t a3, uint64_t a4)
{
  v9 = TSCEASTDurationElement::unitNum(this, a1, a3, a4);
  if (*(a1 + 152) == 1)
  {
    v10 = TSCEASTDurationElement::unit(this, a1, v7, v8);
    sub_221387CBC(v10);
    v11 = TSUDurationFormatterFormatFromDurationUnits();
    v15 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v12, v13, v14);
    v16 = TSUDurationFormatterStringFromTimeIntervalWithFormat();

    v17 = v16;
  }

  else
  {
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"unit%lf", v8, v9, *&v9);;
  }

  sub_2211F339C(a1, v17);
  objc_msgSend_appendString_(a1[17], v18, v17, v19);

  return this;
}

uint64_t sub_2211F4E84(uint64_t a1, uint64_t a2)
{
  sub_2211F339C(a1, @"<empty>");
  objc_msgSend_appendString_(*(a1 + 136), v4, @"<empty> ", v5);
  return a2;
}

uint64_t sub_2211F4EC8(uint64_t a1, uint64_t a2)
{
  sub_2211F339C(a1, @"<token>");
  objc_msgSend_appendString_(*(a1 + 136), v4, @"token ", v5);
  return a2;
}

TSCEASTArrayElement *sub_2211F4F0C(id *a1, TSCEASTArrayElement *this, uint64_t a3, uint64_t a4)
{
  v4 = this;
  v6 = TSCEASTArrayElement::numColumns(this, a1, a3, a4);
  v9 = TSCEASTArrayElement::numRows(v4, a1, v7, v8);
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"array cols:%d rows:%d ", v11, v6, v9);;
  if (*(a1 + 152) == 1)
  {
    v36 = v12;
    v16 = objc_msgSend_string(MEMORY[0x277CCACA8], v13, v14, v15);
    v20 = v16;
    v35 = v4;
    if (v6)
    {
      v21 = 0;
      do
      {
        if (v9)
        {
          v22 = 0;
          do
          {
            v23 = sub_2211F330C(a1, v17, v18, v19);
            if (objc_msgSend_length(v20, v24, v25, v26))
            {
              v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, @"%@ %@", v28, v23, v20);;
            }

            else
            {
              v29 = v23;
            }

            v30 = v29;

            ++v22;
            v20 = v30;
          }

          while (v22 < v9);
        }

        else
        {
          v30 = v20;
        }

        ++v21;
        v20 = v30;
      }

      while (v21 < v6);
    }

    else
    {
      v30 = v16;
    }

    v31 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"{%@ %@}", v19, v36, v30);

    sub_2211F339C(a1, v31);
    v4 = v35;
    objc_msgSend_appendString_(a1[17], v32, v31, v33);
  }

  else
  {
    v31 = v12;
    objc_msgSend_appendString_(a1[17], v13, v12, v15);
  }

  return v4;
}

uint64_t sub_2211F50E4(uint64_t a1, uint64_t a2)
{
  v6 = (*(*a2 + 48))(a2, a1);
  if (*(a1 + 152) == 1)
  {
    sub_2211F38CC(a1, &stru_2834BADA0, v6);
  }

  else
  {
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"<list, len:%d>", v5, v6);
    sub_2211F38CC(a1, v9, v6);
  }

  objc_msgSend_appendFormat_(*(a1 + 136), v7, @"list; length:%d ", v8, v6);
  return a2;
}

TSCEASTLetBindElement *sub_2211F520C(id *a1, TSCEASTLetBindElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTLetBindElement::identifier(this, a1, a3, a4);
  isContinuation = TSCEASTLetBindElement::isContinuation(this, a1, v7, v8);
  v13 = isContinuation;
  if (a1[19])
  {
    v16 = sub_2211F330C(a1, v10, v11, v12);
    if (v13)
    {
      v17 = @"-continued";
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"LET%@(%@, %@, "), v15, @"-continued", v6, v16;
    }

    else
    {
      v17 = &stru_2834BADA0;
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"LET%@(%@, %@, "), v15, &stru_2834BADA0, v6, v16;
    }
    v18 = ;
    sub_2211F339C(a1, v18);

    goto LABEL_9;
  }

  if (!isContinuation)
  {
    v17 = &stru_2834BADA0;
LABEL_9:
    objc_msgSend_appendFormat_(a1[17], v10, @"LET%@<ident=%@> ", v12, v17, v6);
    goto LABEL_10;
  }

  objc_msgSend_appendFormat_(a1[17], v10, @"LET%@<ident=%@> ", v12, @"-continued", v6);
LABEL_10:

  return this;
}

TSCEASTLambdaElement *sub_2211F5338(id *a1, TSCEASTLambdaElement *this, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = TSCEASTLambdaElement::identifiers(this, a1, a3, a4);
  v9 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v7, @"LAMBDA("), v8;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v6;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v25, v29, 16);
  if (v14)
  {
    v15 = *v26;
    do
    {
      v16 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_appendFormat_(v9, v12, @"%@, ", v13, *(*(&v25 + 1) + 8 * v16++));
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v25, v29, 16);
    }

    while (v14);
  }

  if (*(a1 + 152) == 1)
  {
    v20 = sub_2211F330C(a1, v17, v18, v19);
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"%@%@"), v22, v9, v20, v25);
    sub_2211F339C(a1, v23);
  }

  objc_msgSend_appendFormat_(a1[17], v17, @"%@, _"), v19, v9);

  return this;
}

const char *sub_2211F5540(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 152) == 1)
  {
    v6 = sub_2211F330C(a1, a2, a3, a4);
    v10 = sub_2211F330C(a1, v7, v8, v9);
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%@%@"), v12, v10, v6);
    sub_2211F339C(a1, v13);
  }

  objc_msgSend_appendString_(*(a1 + 136), a2, @" <End Scope>", a4);
  return a2;
}

TSCEASTVariableElement *sub_2211F561C(id *a1, TSCEASTVariableElement *this, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x277CCACA8];
  v7 = TSCEASTVariableElement::symbol(this, a1, a3, a4);
  v12 = objc_msgSend_stringWithFormat_(v6, v8, @"(var %u)", v9, v7);
  if (*(a1 + 152) == 1)
  {
    sub_2211F339C(a1, v12);
  }

  objc_msgSend_appendString_(a1[17], v10, v12, v11);

  return this;
}

TSCEASTRelativeCoordRefElement *sub_2211F56BC(TSCEASTIteratorBase *a1, TSCEASTRelativeCoordRefElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTRelativeCoordRefElement::relativeCoord(this, a1, a3, a4);
  v7 = HIDWORD(v6);
  v8 = v6;
  v9 = TSCEASTElement::refFlags(this, a1);
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
  v13 = (*&coordinate & 0xFFFF00000000) == 0x7FFF00000000 || coordinate.row == 0x7FFFFFFF;
  if (!v13 || (v9 & 0x30) == 0x30)
  {
    if (v7 == 0x7FFF)
    {
      v14 = 0;
    }

    else
    {
      if ((v9 & 0x10) == 0)
      {
        TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      }

      v14 = TSUColumnLabel();
    }

    if (v8 == 0x7FFFFFFF)
    {
      v17 = 0;
    }

    else
    {
      if ((v9 & 0x20) == 0)
      {
        TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      }

      v17 = TSURowLabel();
    }

    if ((v9 & 0x10) != 0)
    {
      v29 = @"$";
    }

    else
    {
      v29 = &stru_2834BADA0;
    }

    v19 = v29;
    if ((v9 & 0x20) != 0)
    {
      v30 = @"$";
    }

    else
    {
      v30 = &stru_2834BADA0;
    }

    v31 = v30;
    v24 = v31;
    v34 = (v9 >> 2) & 3;
    if (v34 > 1)
    {
      if (v34 != 2)
      {
        v38 = MEMORY[0x277D81150];
        v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "virtual TSCEASTElement *TSCEASTDescriptionIterator::anyReferenceNode(TSCEASTRelativeCoordRefElement *)", v33);
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTDescriptionIterator.mm", v41);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v39, v42, 638, 0, "We shouldn't actually reach here - the tag indicates this reference is valid or spanning");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
        goto LABEL_48;
      }

      v35 = v19;
      v36 = v14;
    }

    else
    {
      v35 = v31;
      v36 = v17;
      if (!v34)
      {
        v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v32, @"%@%@%@%@", v33, v19, v14, v31, v17);
        goto LABEL_45;
      }
    }

    v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v32, @"%@%@", v33, v35, v36);
    goto LABEL_45;
  }

  if ((v9 & 0x10) != 0)
  {
    TSUColumnLabel();
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%+d", v11, v7);
  }
  v14 = ;
  if ((v9 & 0x20) != 0)
  {
    TSURowLabel();
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%+d", v16, v8);
  }
  v17 = ;
  v18 = @"C";
  if ((v9 & 0x10) != 0)
  {
    v18 = @"$";
  }

  v19 = v18;
  v20 = @"R";
  if ((v9 & 0x20) != 0)
  {
    v20 = @"$";
  }

  v21 = v20;
  v24 = v21;
  v25 = (v9 >> 2) & 3;
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = v19;
      v27 = v14;
      goto LABEL_26;
    }

    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "virtual TSCEASTElement *TSCEASTDescriptionIterator::anyReferenceNode(TSCEASTRelativeCoordRefElement *)", v23);
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTDescriptionIterator.mm", v50);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v52, v48, v51, 656, 0, "We shouldn't actually reach here - the tag indicates this reference is valid or spanning");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55);
LABEL_48:
    v37 = @"#REF!";
    goto LABEL_49;
  }

  v26 = v21;
  v27 = v17;
  if (v25)
  {
LABEL_26:
    v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"[%@%@]", v23, v26, v27);
    goto LABEL_45;
  }

  v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"[%@%@, %@%@]", v23, v19, v14, v21, v17);
LABEL_45:
  v37 = v28;
LABEL_49:

  v56 = (*(*this + 96))(this, a1);
  v60 = v56;
  if ((*(a1 + 153) & 1) == 0 && objc_msgSend_tractCount(v56, v57, v58, v59))
  {
    v62 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v61, @"%@ %@", v59, v37, v60);

    v37 = v62;
  }

  if (v9)
  {
    v78._lower = TSCEASTRelativeCoordRefElement::tableUID(this, a1, v58, v59);
    v78._upper = v63;
    v64 = sub_221089E8C(a1);
    v67 = objc_msgSend_tableResolverForTableUID_(v64, v65, &v78, v66);

    if (v67)
    {
      objc_msgSend_tableName(v67, v68, v69, v70);
    }

    else
    {
      TSKUIDStruct::description(&v78);
    }
    v71 = ;
    v74 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v72, @"%@::%@", v73, v71, v37);

    v37 = v74;
  }

  sub_2211F339C(a1, v37);
  objc_msgSend_appendString_(*(a1 + 17), v75, v37, v76);

  return this;
}

uint64_t sub_2211F5C5C(uint64_t a1, uint64_t a2)
{
  sub_2211F339C(a1, @"#REF!");
  objc_msgSend_appendString_(*(a1 + 136), v4, @"#REF!", v5);
  return a2;
}

TSCEASTWhitespaceElement *sub_2211F5CA8(id *a1, TSCEASTWhitespaceElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTWhitespaceElement::whitespace(this, a1, a3, a4);
  objc_msgSend_appendFormat_(a1[17], v7, @"append ws: '%@'", v8, v6);

  return this;
}

TSCEASTWhitespaceElement *sub_2211F5D1C(id *a1, TSCEASTWhitespaceElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTWhitespaceElement::whitespace(this, a1, a3, a4);
  objc_msgSend_appendFormat_(a1[17], v7, @"prepend ws: '%@'", v8, v6);

  return this;
}

TSCEASTRelativeCoordRefElement *sub_2211F5D90(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
  v5 = (*(*a2 + 96))(a2, a1);
  if (*(a1 + 153))
  {
    v6 = @"#REF! ";
  }

  else if (TSCEASTElement::refFlags(a2, a1))
  {
    v23._lower = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v8, v9);
    v23._upper = v12;
    v13 = MEMORY[0x277CCACA8];
    v14 = TSKUIDStruct::description(&v23);
    v17 = v14;
    v18 = @"$";
    if ((v4 & 2) != 0)
    {
      v19 = @"$";
    }

    else
    {
      v19 = @"-";
    }

    if ((v4 & 1) == 0)
    {
      v18 = @"-";
    }

    v6 = objc_msgSend_stringWithFormat_(v13, v15, @"#REF(%@%@, %@:: %@)! ", v16, v18, v19, v14, v5);
  }

  else
  {
    v10 = @"$";
    if (v4)
    {
      v11 = @"$";
    }

    else
    {
      v11 = @"-";
    }

    if ((v4 & 2) == 0)
    {
      v10 = @"-";
    }

    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"#REF(%@%@, %@)! ", v9, v11, v10, v5);
  }

  sub_2211F339C(a1, v6);
  objc_msgSend_appendString_(*(a1 + 136), v20, v6, v21);

  return a2;
}

uint64_t sub_2211F5F44(uint64_t a1, uint64_t a2)
{
  v19._lower = (*(*a2 + 136))(a2, a1);
  v19._upper = v4;
  v5 = TSCEASTElement::tag(a2, a1);
  v6 = MEMORY[0x277CCACA8];
  if (v5 == 64)
  {
    v7 = TSKUIDStruct::description(&v19);
    v10 = objc_msgSend_stringWithFormat_(v6, v11, @"linkedColumnRef(%@) ", v12, v7);
  }

  else
  {
    if (v5 == 65)
    {
      v7 = TSKUIDStruct::description(&v19);
      objc_msgSend_stringWithFormat_(v6, v8, @"linkedRowRef(%@) ", v9, v7);
    }

    else
    {
      v7 = TSKUIDStruct::description(&v19);
      objc_msgSend_stringWithFormat_(v6, v13, @"linkedCellRef(%@) ", v14, v7);
    }
    v10 = ;
  }

  v15 = v10;

  sub_2211F339C(a1, v15);
  objc_msgSend_appendString_(*(a1 + 136), v16, v15, v17);

  return a2;
}

TSCEASTUidReferenceElement *sub_2211F60B0(id *a1, TSCEASTUidReferenceElement *this, uint64_t a3, uint64_t a4)
{
  TSCEASTUidReferenceElement::uidReference(&v24, this, a1, a3, a4);
  v6 = v24;
  v7 = MEMORY[0x277CCACA8];
  v8 = sub_22122B9BC(&v24);
  v13 = objc_msgSend_stringWithFormat_(v7, v9, @"UidRef(%@ Preserve:%u) ", v10, v6, v8);
  if (v25 == 0uLL)
  {
    objc_msgSend_appendFormat_(a1[17], v11, @"%@ ", v12, v13);
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"%@", v21, v13);
    sub_2211F339C(a1, v14);
  }

  else
  {
    v23 = v25;
    v14 = TSKUIDStruct::description(&v23);
    objc_msgSend_appendFormat_(a1[17], v15, @"%@::%@ ", v16, v14, v13);
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%@::%@", v18, v14, v13);
    sub_2211F339C(a1, v19);
  }

  return this;
}

TSCEASTCategoryRefElement *sub_2211F623C(id *a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTCategoryRefElement::categoryRef(this, a1, a3, a4);
  v10 = objc_msgSend_description(v6, v7, v8, v9);
  objc_msgSend_appendString_(a1[17], v11, v10, v12);
  sub_2211F339C(a1, v10);

  return this;
}

void sub_2211F62C8(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_2211F630C(id *a1)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

void sub_2211F6EF4(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *v3 = &unk_2834A2FC8;
  *(v3 + 200) = 256;
  *(v3 + 202) = 0;
}

void sub_2211F6F38(_BYTE *a1, TSCEASTElementWithChildren *a2, void *a3)
{
  v4 = a2;
  if (TSCEASTElement::tag(a2, a1) == 26 && (*(*v4 + 48))(v4, a1) == 1)
  {
    v4 = TSCEASTElementWithChildren::child(v4, 0);
  }

  if (a3)
  {
    v9 = objc_msgSend_rangeContext(a3, v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  TSCEASTRewriter::createIntersectionOp(a1, v9, v4, v8);
}

TSCEASTElementWithChildren *sub_2211F6FF0(TSCEASTRewriter *a1, TSCEASTElementWithChildren *this)
{
  v4 = TSCEASTElementWithChildren::child(this, 0);
  if ((*(*v4 + 88))(v4, a1))
  {
    v5 = (*(*this + 80))(this, a1);
    v7 = objc_msgSend_argumentSpecForIndex_numArgs_(v5, v6, 0, 1);
    sub_2211F6F38(a1, v4, v7);
  }

  return this;
}

TSCEASTElementWithChildren *sub_2211F70D8(TSCEASTRewriter *a1, TSCEASTElementWithChildren *a2)
{
  v4 = TSCEASTElement::tag(a2, a1);
  if (v4 != 28)
  {
    if (v4 == 70)
    {
      *(a1 + 202) = 1;
    }

    else
    {
      v5 = 0;
      v6 = 1;
      do
      {
        v7 = v6;
        v8 = TSCEASTElementWithChildren::child(a2, v5);
        if ((*(*v8 + 88))(v8, a1))
        {
          v9 = (*(*a2 + 80))(a2, a1);
          v11 = objc_msgSend_argumentSpecForIndex_numArgs_(v9, v10, v5, 2);
          sub_2211F6F38(a1, v8, v11);
        }

        v6 = 0;
        v5 = 1;
      }

      while ((v7 & 1) != 0);
    }
  }

  return a2;
}

TSCEASTFunctionElement *sub_2211F7200(TSCEASTIteratorBase *a1, TSCEASTFunctionElement *a2)
{
  v4 = (*(*a2 + 80))(a2, a1);
  v5 = (*(*a2 + 48))(a2, a1);
  v8 = TSCEASTFunctionElement::functionIndex(a2, a1, v6, v7);
  if (objc_msgSend_versionShippedIn(v4, v9, v10, v11) <= 8)
  {
    if (!v5)
    {
      return a2;
    }

    v13 = 0;
    while (1)
    {
      v14 = objc_msgSend_argumentSpecForIndex_numArgs_(v4, v12, v13, v5);
      v18 = objc_msgSend_disallowArrayModeFanout(v14, v15, v16, v17);
      if ((*(a1 + 200) & 1) == 0 && (v8 == 47 || v8 == 314 || v8 == 203))
      {
        v19 = v13 == 0;
        if (!(v19 | (v18 ^ 1) & 1))
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v18)
        {
          goto LABEL_46;
        }

        v19 = 0;
      }

      v20 = TSCEASTElementWithChildren::child(a2, v13);
      if (TSCEASTElement::tag(v20, a1) == 25)
      {
        goto LABEL_46;
      }

      v23 = objc_msgSend_argumentType(v14, v12, v21, v22);
      if (v23 <= 0x15)
      {
        if (((1 << v23) & 0x2001BC) != 0)
        {
          if (objc_msgSend_accessorMode(v14, v12, v24, v25) != 1)
          {
            v29 = objc_msgSend_accessorMode(v14, v26, v27, v28) == 0;
LABEL_27:
            v32 = v29;
            if (((v19 | v32) & 1) == 0)
            {
              goto LABEL_46;
            }
          }

LABEL_44:
          v34 = TSCEASTElementWithChildren::child(a2, v13);
          if ((*(*v34 + 88))(v34, a1))
          {
            sub_2211F6F38(a1, v34, v14);
          }

          goto LABEL_46;
        }

        if (((1 << v23) & 0x10002) != 0)
        {
          goto LABEL_18;
        }

        if (v23 == 6)
        {
          v30 = objc_msgSend_accessorMode(v14, v12, v24, v25);
          v29 = v8 != 323 && v13 != 0 && v30 == 1;
          goto LABEL_27;
        }
      }

      if (v23 != 255)
      {
        goto LABEL_44;
      }

      if ((objc_msgSend_disallowArrayModeFanout(v4, v12, v24, v25) & 1) == 0)
      {
        if (v8 == 235 || !v13)
        {
          goto LABEL_44;
        }

        if (v8 != 19 && v8 != 62)
        {
          if (v8 != 336)
          {
            goto LABEL_44;
          }

          if (v13 != v5 - 1)
          {
            if (v5 < 3)
            {
              goto LABEL_44;
            }

            v33 = 2;
            while (v13 != v33)
            {
              v33 += 2;
              if (v33 >= v5)
              {
                goto LABEL_44;
              }
            }
          }
        }
      }

LABEL_18:
      if (v19)
      {
        goto LABEL_44;
      }

LABEL_46:
      if (++v13 == v5)
      {
        return a2;
      }
    }
  }

  *(a1 + 202) = 1;
  return a2;
}

void sub_2211F74D4(TSCEASTElementWithChildren **a1)
{
  v2 = a1[13];
  if (v2)
  {
    if ((*(*v2 + 88))(v2, a1))
    {
      if (TSCEASTElement::tag(a1[13], a1) != 66 || (TSCEASTCategoryRefElement::categoryRef(a1[13], a1, v3, v4), v5 = objc_claimAutoreleasedReturnValue(), mayReturnArray = objc_msgSend_mayReturnArray(v5, v6, v7, v8), v5, (mayReturnArray & 1) != 0))
      {
        sub_2211F6F38(a1, a1[13], 0);
      }
    }
  }
}

void sub_2211F7590(TSCEASTRewriter *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

TSCENumberValue *sub_2211F78B4(void *a1, void *a2, void *a3, uint64_t a4, int a5, void *a6)
{
  v111 = *MEMORY[0x277D85DE8];
  v94 = a1;
  v11 = a3;
  v92 = a6;
  v15 = objc_msgSend_uppercaseString(v11, v12, v13, v14);

  TSUDecimal::operator=();
  TSUDecimal::operator=();
  switch(a4)
  {
    case 2:
      v18 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v16, @"0B", v17, 0);
      v93 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v23, @"B", v24, 0);
      break;
    case 8:
      v18 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v16, @"0O", v17, @"O", 0);
      v93 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v21, @"O", v22, 0);
      break;
    case 0x10:
      v18 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v16, @"0X", v17, @"U+", 0);
      v93 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v19, @"H", v20, 0);
      break;
    default:
      v18 = 0;
      v93 = 0;
      break;
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v25 = v18;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v104, v110, 16);
  if (v27)
  {
    v28 = *v105;
    while (2)
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v105 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v104 + 1) + 8 * i);
        if (objc_msgSend_hasPrefix_(v15, v31, v30, v32))
        {
          v49 = objc_msgSend_length(v30, v33, v34, v35);
          v48 = objc_msgSend_substringFromIndex_(v15, v50, v49, v51);
          v37 = v25;
LABEL_27:

          goto LABEL_28;
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v36, &v104, v110, 16);
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v37 = v93;
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v100, v109, 16);
  if (v39)
  {
    v40 = *v101;
    while (2)
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v101 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v30 = *(*(&v100 + 1) + 8 * j);
        if (objc_msgSend_hasSuffix_(v15, v42, v30, v43))
        {
          v52 = objc_msgSend_length(v15, v44, v45, v46);
          v56 = objc_msgSend_length(v30, v53, v54, v55);
          v48 = objc_msgSend_substringToIndex_(v15, v57, v52 - v56, v58);
          goto LABEL_27;
        }
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v47, &v100, v109, 16);
      if (v39)
      {
        continue;
      }

      break;
    }
  }

  v48 = v15;
LABEL_28:

  v64 = objc_msgSend_length(v48, v59, v60, v61) - 1;
  while ((v64 & 0x8000000000000000) == 0)
  {
    v65 = objc_msgSend_characterAtIndex_(v48, v62, v64, v63);
    v67 = v65;
    if (a4 == 26)
    {
      TSUDecimal::operator+=();
      v68 = v67 - 65;
    }

    else
    {
      if (v65 <= 0x39)
      {
        v69 = -48;
      }

      else
      {
        v69 = -55;
      }

      v68 = v69 + v65;
    }

    if (a4 <= v68 || v68 < 0)
    {
      v81 = objc_msgSend_invalidBaseCharacterErrorForCharacter_base_(TSCEError, v66, v67, a4);
      v77 = objc_msgSend_raiseErrorOrConvert_(v94, v82, v81, v83);

      goto LABEL_52;
    }

    TSUDecimal::operator=();
    *&v97._tskFormat = v98;
    TSUDecimal::operator*=();
    v99 = v98;
    TSUDecimal::operator+=();
    TSUDecimal::operator=();
    TSUDecimal::operator*=();
    TSUDecimal::operator=();
    --v64;
    if ((TSUDecimal::operator<=() & 1) == 0)
    {
      v71 = objc_msgSend_functionName(a2, v62, v70, v63);
      v74 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v72, v71, v73);
      v77 = objc_msgSend_raiseErrorOrConvert_(v94, v75, v74, v76);

      goto LABEL_52;
    }
  }

  if (a5)
  {
    TSUDecimal::operator=();
    if ((TSUDecimal::operator<=() & 1) == 0 && objc_msgSend_characterAtIndex_(v48, v78, 0, v79) != 48)
    {
      for (k = 0x80000000; ; k *= 2)
      {
        TSUDecimal::operator=();
        if ((TSUDecimal::operator<=() & 1) != 0 && !TSUDecimal::operator==())
        {
          break;
        }
      }

      TSUDecimal::operator=();
      TSUDecimal::operator-=();
    }
  }

  v84 = [TSCENumberValue alloc];
  v77 = objc_msgSend_initWithDecimal_(v84, v85, v108, v86);
  if (v92)
  {
    TSCEFormat::TSCEFormat(&v96, v92, 0);
    TSCEFormat::TSCEFormat(&v97, &v96);
    objc_msgSend_setFormat_(v77, v87, &v97, v88);
  }

  else
  {
    TSCEFormat::TSCEFormat(&v95, 256);
    TSCEFormat::TSCEFormat(&v97, &v95);
    objc_msgSend_setFormat_(v77, v89, &v97, v90);
  }

LABEL_52:

  return v77;
}

TSCENumberValue *sub_2211F8024(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  v15 = a3;
  if ((atomic_load_explicit(&qword_27CFB52B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27CFB52B0))
  {
    TSUDecimal::operator=();
    __cxa_guard_release(&qword_27CFB52B0);
  }

  v33[0] = objc_msgSend_decimalRepresentation(v15, v12, v13, v14);
  v33[1] = v16;
  if (TSUDecimal::operator<())
  {
    v20 = objc_msgSend_functionName(a2, v17, v18, v19);
    v23 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v21, v20, v22);
    v26 = objc_msgSend_raiseErrorOrConvert_(v11, v24, v23, v25);
  }

  else
  {
    v27 = objc_alloc(MEMORY[0x277D80620]);
    v20 = objc_msgSend_initWithBase_basePlaces_baseUseMinusSign_(v27, v28, a4, a5, a6);
    v29 = [TSCENumberValue alloc];
    TSCEFormat::TSCEFormat(&v32, v20, 0);
    v26 = objc_msgSend_initWithDecimal_format_(v29, v30, v33, &v32);
  }

  return v26;
}

void sub_2211F819C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27CFB52B0);

  _Unwind_Resume(a1);
}

void sub_2211F82F8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSCEFormulaObject;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_2211F8A3C(_Unwind_Exception *a1, TSCEASTNodeArray *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(va, a2);
  _Unwind_Resume(a1);
}

void sub_2211F8BDC(_Unwind_Exception *a1, TSCEASTNodeArray *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(va, a2);
  _Unwind_Resume(a1);
}

void sub_2211F8C6C(_Unwind_Exception *a1, TSCEASTNodeArray *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(va, a2);
  _Unwind_Resume(a1);
}

void sub_2211F95EC()
{
  v0 = objc_alloc(MEMORY[0x277D806A0]);
  v2 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v0, v1, 258, 2, 0, 0);
  v3 = qword_27CFB52B8;
  qword_27CFB52B8 = v2;
}

void sub_2211F9D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2211FEA54(&a9);

  _Unwind_Resume(a1);
}

void sub_2211F9DCC(TSCEASTNodeArray *a1@<X0>, TSCECalculationEngine *a2@<X1>, uint64_t *a3@<X8>)
{
  memset(v9, 0, 24);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v14, a2, v9);
  TSCEASTStreamIterator::TSCEASTStreamIterator(v9, a1, &v14);
  v9[0].coordinate = &unk_2834A3150;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v10 = 1;
  TSCEASTStreamIterator::rewrite(v9, v5, v6, v7);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_2211FECD0(a3, v11, v12, v12 - v11);
  v9[0].coordinate = &unk_2834A3150;
  v15 = &v11;
  sub_22107C2C0(&v15);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v9, v8);
}

void sub_2211F9F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2211FEDAC(va);
  _Unwind_Resume(a1);
}

void sub_2211FA0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22134B390(va);
  _Unwind_Resume(a1);
}

void sub_2211FA2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_22134B390(va);
  _Unwind_Resume(a1);
}

void sub_2211FA4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2210F3B18(va);

  _Unwind_Resume(a1);
}

void sub_2211FB47C(_Unwind_Exception *a1, TSCEASTNodeArray *a2, void *a3, uint64_t a4, void *a5, ...)
{
  va_start(va, a5);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(va, a2);

  _Unwind_Resume(a1);
}

void sub_2211FB764(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_2211FB7A8(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A4B40;
  sub_2210BDEC0(a1 + 152);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

BOOL sub_2211FB7FC(void *a1, uint64_t a2)
{
  v3 = (a2 + 16);
  do
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    v4 = sub_221119F90(a1, v3 + 2);
    if (!v4)
    {
      break;
    }
  }

  while (v4[4] == v3[4] && v4[5] == v3[5]);
  return v3 == 0;
}

void sub_2211FC3E0(_Unwind_Exception *a1, TSCEASTNodeArray *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(&a9, a2);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(va, v26);
  _Unwind_Resume(a1);
}

void sub_2211FC4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TSCEASTRewriter::~TSCEASTRewriter(va);

  _Unwind_Resume(a1);
}

void sub_2211FC5C0(_Unwind_Exception *a1, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(&a9, a2);

  _Unwind_Resume(a1);
}

void sub_2211FC6D0(_Unwind_Exception *a1, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(&a9, a2);

  _Unwind_Resume(a1);
}

void sub_2211FCA08(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x10F1C40BB21CAEALL);

  _Unwind_Resume(a1);
}

void sub_2211FD5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(&a9);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(va, v42);
  _Unwind_Resume(a1);
}

void sub_2211FD72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  TSCEASTRewriter::~TSCEASTRewriter(&a10);

  _Unwind_Resume(a1);
}

void sub_2211FD91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(&a10);

  TSCEASTRewriter::~TSCEASTRewriter(&a39);
  _Unwind_Resume(a1);
}

void sub_2211FDAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(&a9);

  _Unwind_Resume(a1);
}

void sub_2211FDDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(&a9);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(va, v41);

  _Unwind_Resume(a1);
}

void sub_2211FE9F0(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A49B0;
  v2 = a1 + 136;
  sub_2210BDEC0(a1 + 176);
  sub_2210BDEC0(v2);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v3);
}

void sub_2211FEA54(id *a1)
{
  *a1 = &unk_2834A37F0;

  v3 = a1 + 17;
  sub_2211FEAB8(&v3);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_2211FEAB8(void ***a1)
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
        v6 = v4 - 10;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2211FEB44(void **a1)
{
  *a1 = &unk_2834A3150;
  v4 = a1 + 17;
  sub_22107C2C0(&v4);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
  return MEMORY[0x223DA1450]();
}

TSCEASTCategoryRefElement *sub_2211FEBB4(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTCategoryRefElement::categoryRef(this, a1, a3, a4);
  v8 = *(a1 + 18);
  v7 = *(a1 + 19);
  if (v8 >= v7)
  {
    v10 = *(a1 + 17);
    v11 = (v8 - v10) >> 3;
    if ((v11 + 1) >> 61)
    {
      sub_22107C148();
    }

    v12 = v7 - v10;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    v20 = a1 + 136;
    if (v14)
    {
      sub_22107C1F0(a1 + 136, v14);
    }

    v16 = 0;
    v17 = (8 * v11);
    v19 = 0;
    *v17 = v6;
    v18 = 8 * v11 + 8;
    sub_22107C098(a1 + 136, &v16);
    v9 = *(a1 + 18);
    sub_22107C26C(&v16);
  }

  else
  {
    *v8 = v6;
    v9 = v8 + 1;
    *(a1 + 18) = v9;
  }

  *(a1 + 18) = v9;
  return this;
}

void sub_2211FECB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2211FECD0(uint64_t *result, void **a2, void **a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

void sub_2211FED50(void **a1)
{
  *a1 = &unk_2834A3150;
  v3 = a1 + 17;
  sub_22107C2C0(&v3);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_2211FEDAC(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_2211FEDF0(id *a1)
{
  *a1 = &unk_2834A1A70;
  sub_2210BDEC0((a1 + 36));
  sub_2210BDEC0((a1 + 31));
  sub_2210BDEC0((a1 + 26));

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2211FEE60(id *a1)
{
  *a1 = &unk_2834A83C8;
  sub_2210BDEC0((a1 + 26));

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2211FEEBC(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A9B38;
  sub_2210BDEC0(a1 + 152);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_2211FEF10(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A4B40;
  sub_2210BDEC0(a1 + 152);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_2211FFE84(uint64_t a1, char *__s)
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

void sub_2211FFF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2212004E0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2212076E4(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_22107C2C0(va);

  _Unwind_Resume(a1);
}

void sub_221207E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  a26 = &a14;
  sub_22107C2C0(&a26);

  _Unwind_Resume(a1);
}

void sub_221207F00(TSCEPartialEvalRewriter *a1, TSCEFormulaObject *a2, TSCEFormulaRewriteContext *a3, TSCEEvaluationContext *a4)
{
  TSCEPartialEvalRewriter::TSCEPartialEvalRewriter(a1, a2, a3, a4);
  *v4 = &unk_2834A32C0;
  *(v4 + 232) = 0;
}

uint64_t sub_221207F38(uint64_t a1, uint64_t a2)
{
  if (TSCEASTElement::tag(a2, a1) == 70)
  {
    *(a1 + 233) = 1;
  }

  return a2;
}

TSCEASTElementWithChildren *sub_221207F8C(id *a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4)
{
  v4 = this;
  v6 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4);
  v9 = (*(*v4 + 48))(v4, a1);
  if (v6 == 280)
  {
    v10 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v7, 280, v8);
    TSCEPartialEvalRewriter::bakeChildNodesToValues(a1, v4, v9, v10, 0);
  }

  v14 = a1[28];
  v15 = v6 == 23 || v6 == 130;
  if (v15 && v9 == 2)
  {
    v16 = TSCEASTElementWithChildren::child(v4, 0);
    TSCEASTRewriter::createFunction(a1, v6, v16, v17, v18, v19, v20, v21, 0);
  }

  v22 = objc_msgSend_value(v14, v11, v12, v13);
  v26 = v22;
  if (v6 == 280 && (objc_msgSend_isError(v22, v23, v24, v25) & 1) != 0)
  {
    TSCEASTIteratorBase::createReferenceError(a1, v23, v27, v25);
  }

  v28 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v23, v6, v25);
  v32 = v28;
  if (v28)
  {
    if (objc_msgSend_versionShippedIn(v28, v29, v30, v31) >= 2 && v6 != 280 && v6 != 285)
    {
      v4 = TSCEPartialEvalRewriter::bakeForSingleValue(a1, v26, 0, v32, 1);
      v33 = [TSCEPartialResult alloc];
      v36 = objc_msgSend_initWithValue_(v33, v34, v26, v35);
      TSCEPartialEvalRewriter::setPartialResult(a1, v36);
    }
  }

  else
  {
    *(a1 + 233) = 1;
  }

  return v4;
}

TSCEASTArrayElement *sub_221208234(TSCEASTIteratorBase *a1, TSCEASTArrayElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTArrayElement::numColumns(this, a1, a3, a4);
  v9 = TSCEASTArrayElement::numRows(this, a1, v7, v8);
  TSCEPartialEvalRewriter::bakeChildNodesToValues(a1, this, v9 * v6, 0, 1);
  return this;
}

TSCEASTRelativeCoordRefElement *sub_221208298(id *a1, TSCEASTRelativeCoordRefElement *this, uint64_t a3, uint64_t a4)
{
  if ((a1[29] & 1) == 0)
  {
    v6 = TSCEASTRelativeCoordRefElement::tableUID(this, a1, a3, a4);
    if (v6 | v7)
    {
      v10 = v6;
      v11 = v7;
      v12 = objc_msgSend_containingTable(a1[25], v7, v8, v9);
      if (v10 != *v12 || v11 != v12[1])
      {
        *(a1 + 233) = 1;
      }
    }
  }

  return this;
}

void sub_221208310(id *a1)
{
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_221208378(void *a1, TSUCellCoord a2, $925F2A0F20B28CD67DCCD182188DAC27 a3, uint64_t a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v47.origin = a2;
  v47.size = a3;
  v5 = a1[2];
  if (v5)
  {
    v6 = a1[1];
    v58.location = TSUCellRect::rows(&v47);
    v58.length = v7;
    v57.location = v6;
    v57.length = v5;
    v10 = NSUnionRange(v57, v58);
    length = v10.length;
    location = v10.location;
  }

  else
  {
    location = TSUCellRect::rows(&v47);
  }

  a1[1] = location;
  a1[2] = length;
  origin = v47.origin;
  v11 = TSUCellCoord::encodeAsUInt(&origin);
  origin = ((v47.origin.row + v47.size.numberOfRows - 1) | *&v47.origin & 0xFFFF00000000);
  v12 = TSUCellCoord::encodeAsUInt(&origin);
  origin = ((*&v47.origin + (*&v47.size << 32) + 0xFFFF00000000) & 0xFFFF00000000 | v47.origin.row);
  v13 = TSUCellCoord::encodeAsUInt(&origin);
  v14 = 0;
  origin = v11;
  v49 = 1;
  v50 = v11;
  v51 = 3;
  v52 = v12;
  v53 = 2;
  v54 = v13;
  v55 = 4;
  do
  {
    v46 = *(&origin.row + v14);
    v15 = sub_22120ABE8(a1 + 8, &v46);
    if (v15)
    {
      v45 = v15[4];
      v18 = sub_2210BE30C(a1 + 3, &v45);
      if (!v18)
      {
        v19 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "void TSTCellRegionGathererMap::joinAndAddRange(TSTCellRange, NSUInteger)", v17);
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRegionGatherer.mm", v22);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 184, 0, "_cellRanges does not match encodedCoordToCandidateIndexMap");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
      }

      v28 = v18[3];
      v29 = v18[4];
      size = v47.size;
      v31 = sub_2211C1FC4(v28, v29, *&v47.origin, *&v47.size);
      v33 = (HIDWORD(v32) * v32);
      v34 = size.numberOfRows * size.numberOfColumns + (HIDWORD(v29) * v29);
      v35 = v33 == v34;
      v36 = (v33 == v34 ? v31 : 0x7FFF7FFFFFFFLL);
      v37 = v35 ? v32 : 0;
      v44.origin = v36;
      v44.size = v37;
      if (TSUCellRect::isValid(&v44))
      {
        sub_2211E5A9C(a1 + 3, &v45);
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = sub_221208878;
        v43[3] = &unk_278461500;
        v43[4] = a1;
        sub_221208710(v28, v29, v43);
        v39 = v44.origin;
        v40 = v44.size;
        sub_221208378(a1, v39, v40, a4 + 1);
        return;
      }
    }

    v14 += 16;
  }

  while (v14 != 64);
  if (TSUCellRect::isValidOrSpanning(&v47))
  {
    *&v46 = *a1;
    *a1 = v46 + 1;
    origin = &v46;
    v38 = sub_22120ACE4(a1 + 3, &v46, &unk_2217E0910, &origin);
    *(v38 + 3) = v47;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_2212088A8;
    v42[3] = &unk_278461520;
    v42[4] = a1;
    v42[5] = v46;
    sub_221208710(*&v47.origin, *&v47.size, v42);
  }
}

void sub_221208710(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1 + 0xFFFF00000000;
  v7 = a1 & 0xFFFF00000000;
  if ((a1 & 0xFFFF00000000) != 0)
  {
    v16 = (v6 & 0xFFFF00000000 | a1);
    v8 = TSUCellCoord::encodeAsUInt(&v16);
    v5[2](v5, v8, 4);
  }

  v9 = a1;
  v10 = a1 + 0xFFFFFFFFLL;
  if (v9)
  {
    v16 = (v10 | v7);
    v11 = TSUCellCoord::encodeAsUInt(&v16);
    v5[2](v5, v11, 2);
  }

  v12 = v6 + (a2 << 32);
  if ((v12 & 0xFFF800000000uLL) >> 35 <= 0x7C)
  {
    v16 = ((v12 + 0x100000000) & 0xFFFF00000000 | v9);
    v13 = TSUCellCoord::encodeAsUInt(&v16);
    v5[2](v5, v13, 3);
  }

  v14 = v10 + HIDWORD(a2);
  if (v14 <= 0xF423F)
  {
    v16 = ((v14 + 1) & 0x1FFFFF | v7);
    v15 = TSUCellCoord::encodeAsUInt(&v16);
    v5[2](v5, v15, 1);
  }
}

uint64_t *sub_221208878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_22120ACAC((*(a1 + 32) + 64), v4);
}

uint64_t *sub_2212088A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v6;
  result = sub_22120AF18((v3 + 64), v6, &unk_2217E0910, &v7);
  result[4] = v4;
  return result;
}

void sub_2212088FC(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  for (i = *(a1 + 40); i; i = *i)
  {
    v4 = *(i + 1);
    v5 = i[4];
    sub_221083454(a2, (&v4 + 8));
  }
}

void sub_221208964(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221209574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2212095A0(uint64_t a1, char *a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  objc_msgSend_combineNonOverlappingCellRanges_addingOverlappingCellRanges_(TSTCellRegion, a2, &__p, a1);
  v3 = v6;
  if (v6 != v7)
  {
    do
    {
      v4 = *v3;
      v5 = *(v3 + 8);
      sub_221208378(a2, v4, v5, 0);
      v3 += 16;
    }

    while (v3 != v7);
    v3 = v6;
  }

  if (v3)
  {
    operator delete(v3);
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_22120963C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221209670(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = 0u;
  v5 = (a4 + 24);
  *(a4 + 40) = 0u;
  *(a4 + 56) = 1065353216;
  *(a4 + 64) = 0u;
  v6 = (a4 + 64);
  *(a4 + 80) = 0u;
  *(a4 + 96) = 1065353216;
  *a4 = xmmword_2217E08F0;
  *(a4 + 16) = 0;
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = v7 - *a1;
  v10 = v9 >> 4;
  if ((v9 >> 4) < 0x65 || a3 < 2)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    sub_22116C9DC(&v42, v8, v7, v9 >> 4);
    sub_2212095A0(&v42, a4);
    v12 = v42;
    if (!v42)
    {
      return;
    }

    v43 = v42;
    goto LABEL_37;
  }

  v40 = v6;
  v41 = v5;
  v14 = a2 + (a3 >> 1);
  v15 = a3 - (a3 >> 1);
  v38 = a3 >> 1;
  v16 = sub_221209C58(0, 0x3E8, a2, a3 >> 1);
  v18 = v17;
  v36 = v15;
  v37 = v14;
  v19 = sub_221209C58(0, 0x3E8, v14, v15);
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  if (v8 != v7)
  {
    v21 = v19;
    v22 = v20;
    do
    {
      v23 = *v8;
      v24 = v8[1];
      v72.origin = sub_221119E0C(*v8, v24, v16, v18);
      v72.size = v25;
      v61.origin = sub_221119E0C(v23, v24, v21, v22);
      v61.size = v26;
      if (TSUCellRect::isValid(&v72))
      {
        sub_221083454(&v86, &v72);
      }

      if (TSUCellRect::isValid(&v61))
      {
        sub_221083454(&v83, &v61);
      }

      v8 += 2;
    }

    while (v8 != v7);
    v8 = *a1;
    v7 = *(a1 + 8);
    v10 = (v7 - *a1) >> 4;
  }

  v72.origin = 0;
  v72.size = &v72;
  v73 = 0x9812000000;
  v74 = sub_221209E10;
  v75 = sub_221209E68;
  v76 = &unk_22188E88F;
  memset(v79, 0, sizeof(v79));
  v80 = 1065353216;
  memset(v81, 0, sizeof(v81));
  v82 = 1065353216;
  v77 = xmmword_2217E08F0;
  v78 = 0;
  v61.origin = 0;
  v61.size = &v61;
  v62 = 0x9812000000;
  v63 = sub_221209E10;
  v64 = sub_221209E68;
  v65 = &unk_22188E88F;
  memset(v68, 0, sizeof(v68));
  memset(v70, 0, sizeof(v70));
  v69 = 1065353216;
  v71 = 1065353216;
  v66 = xmmword_2217E08F0;
  v67 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = sub_221209EA4;
  block[3] = &unk_2834A3450;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  sub_22116C9DC(&v48, v8, v7, v10);
  v51 = 0;
  v52 = 0;
  v53 = 0;
  sub_22116C9DC(&v51, v86, v87, (v87 - v86) >> 4);
  block[4] = &v72;
  v54 = a2;
  v55 = v38;
  __p = 0;
  v57 = 0;
  v58 = 0;
  sub_22116C9DC(&__p, v83, v84, (v84 - v83) >> 4);
  block[5] = &v61;
  v59 = v37;
  v60 = v36;
  dispatch_apply(2uLL, 0, block);
  size = v72.size;
  v28 = v61.size;
  if (*(*&v72.size + 96) <= *(*&v61.size + 96))
  {
    v30 = *(*&v61.size + 48);
    *(a4 + 16) = *(*&v61.size + 64);
    *a4 = v30;
    if (*&v28 + 48 != a4)
    {
      *(a4 + 56) = *(*&v28 + 104);
      sub_22120A47C(v41, *(*&v28 + 88), 0);
      *(a4 + 96) = *(*&v28 + 144);
      sub_22120A624(v40, *(*&v28 + 128), 0);
      size = v72.size;
    }

    sub_2212088FC(*&size + 48, &v45);
  }

  else
  {
    v29 = *(*&v72.size + 48);
    *(a4 + 16) = *(*&v72.size + 64);
    *a4 = v29;
    if (*&size + 48 != a4)
    {
      *(a4 + 56) = *(*&size + 104);
      sub_22120A47C(v41, *(*&size + 88), 0);
      *(a4 + 96) = *(*&size + 144);
      sub_22120A624(v40, *(*&size + 128), 0);
      v28 = v61.size;
    }

    sub_2212088FC(*&v28 + 48, &v45);
  }

  v31 = v45;
  v32 = v46;
  if (v45 != v46)
  {
    v33 = v45;
    do
    {
      v34 = *v33;
      v35 = *(v33 + 1);
      sub_221208378(a4, v34, v35, 0);
      v33 += 16;
    }

    while (v33 != v32);
  }

  if (v31)
  {
    operator delete(v31);
  }

  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  _Block_object_dispose(&v61, 8);
  sub_2210BDEC0(v70);
  sub_2210BDEC0(v68);
  _Block_object_dispose(&v72, 8);
  sub_2210BDEC0(v81);
  sub_2210BDEC0(v79);
  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  v12 = v86;
  if (v86)
  {
    v87 = v86;
LABEL_37:
    operator delete(v12);
  }
}

void sub_221209B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Block_object_dispose(&a42, 8);
  sub_2210BDEC0(v61 + 112);
  sub_2210BDEC0(v61 + 72);
  _Block_object_dispose(va, 8);
  sub_2210BDEC0(v60 + 112);
  sub_2210BDEC0(v60 + 72);
  v64 = *(v62 - 136);
  if (v64)
  {
    *(v62 - 128) = v64;
    operator delete(v64);
  }

  v65 = *(v62 - 112);
  if (v65)
  {
    *(v62 - 104) = v65;
    operator delete(v65);
  }

  sub_2210BDEC0(a15);
  sub_2210BDEC0(a16);
  _Unwind_Resume(a1);
}

unint64_t sub_221209C58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", a4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 168, 0, "Invalid column range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", a4);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 169, 0, "Invalid row range");
    v23 = 0x7FFF7FFFFFFFLL;

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  else
  {
    v27 = a3 | (a1 << 32);
    if (!a4)
    {
      v27 = 0x7FFF7FFFFFFFLL;
    }

    if (!a2)
    {
      v27 = 0x7FFF7FFFFFFFLL;
    }

    if (a1 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0x7FFF7FFFFFFFLL;
    }

    else
    {
      return v27;
    }
  }

  return v23;
}

uint64_t sub_221209E10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v4;
  sub_221088030(a1 + 72, (a2 + 72));

  return sub_221088030(a1 + 112, (a2 + 112));
}

uint64_t sub_221209E68(uint64_t a1)
{
  sub_2210BDEC0(a1 + 112);

  return sub_2210BDEC0(a1 + 72);
}

void sub_221209EA4(void *a1, uint64_t a2)
{
  v3 = a1[7] - a1[6];
  if (a2)
  {
    v4 = a1[14];
    v5 = a1[15];
    v6 = (v5 - v4) >> 4;
    if (v3 <= v5 - v4)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      sub_22116C9DC(&v13, v4, v5, v6);
      sub_2212095A0(&v13, (*(a1[5] + 8) + 48));
      v8 = v13;
      if (!v13)
      {
        return;
      }

      v14 = v13;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      v16 = 0;
      sub_22116C9DC(&v16, v4, v5, v6);
      sub_221209670(&v16, a1[17], a1[18], &v25);
      v7 = *(a1[5] + 8);
      *(v7 + 48) = v25;
      *(v7 + 64) = v26;
      sub_22120A3D8(v7 + 72, v27);
      sub_22120A3D8(v7 + 112, v28);
      sub_2210BDEC0(v28);
      sub_2210BDEC0(v27);
      v8 = v16;
      if (!v16)
      {
        return;
      }

      v17 = v16;
    }
  }

  else
  {
    v9 = a1[9];
    v10 = a1[10];
    v11 = (v10 - v9) >> 4;
    if (v3 <= v10 - v9)
    {
      __p = 0;
      v20 = 0;
      v21 = 0;
      sub_22116C9DC(&__p, v9, v10, v11);
      sub_2212095A0(&__p, (*(a1[4] + 8) + 48));
      v8 = __p;
      if (!__p)
      {
        return;
      }

      v20 = __p;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v22 = 0;
      sub_22116C9DC(&v22, v9, v10, v11);
      sub_221209670(&v22, a1[12], a1[13], &v25);
      v12 = *(a1[4] + 8);
      *(v12 + 48) = v25;
      *(v12 + 64) = v26;
      sub_22120A3D8(v12 + 72, v27);
      sub_22120A3D8(v12 + 112, v28);
      sub_2210BDEC0(v28);
      sub_2210BDEC0(v27);
      v8 = v22;
      if (!v22)
      {
        return;
      }

      v23 = v22;
    }
  }

  operator delete(v8);
}

void sub_22120A050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_22120A0A8(uint64_t *a1, uint64_t a2)
{
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_22116C9DC(a1 + 6, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 4);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  sub_22116C9DC(a1 + 9, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 4);
  a1[14] = 0;
  a1[15] = 0;
  a1[16] = 0;
  return sub_22116C9DC(a1 + 14, *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 4);
}

void sub_22120A134(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_22120A168(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;

    operator delete(v4);
  }
}

void sub_22120A2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  v16 = *(v14 - 56);
  if (v16)
  {
    *(v14 - 48) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_22120A3D8(uint64_t a1, uint64_t *a2)
{
  sub_2210BE918(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_22120A47C(void *a1, uint64_t *a2, uint64_t *a3)
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
        *(v8 + 3) = *(a2 + 3);
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
    sub_22120A590(a1, (a2 + 2));
  }
}

void sub_22120A55C(void *a1)
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

void sub_22120A624(void *a1, uint64_t *a2, uint64_t *a3)
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
        v8[6] = *(a2 + 6);
        *(v8 + 2) = v9;
        *(v8 + 4) = a2[4];
        v10 = *v8;
        sub_22120A72C(a1, v8);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v11 = *v8;
        operator delete(v8);
        v8 = v11;
      }

      while (v11);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_22120AB60(a1, (a2 + 2));
  }
}

void sub_22120A6F8(void *a1)
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

uint64_t sub_22120A72C(void *a1, uint64_t a2)
{
  v4 = a2 + 16;
  v5 = *(a2 + 16) ^ (*(a2 + 24) << 12);
  *(a2 + 8) = v5;
  v6 = sub_22120A77C(a1, v5, v4);
  sub_2210BD408(a1, a2, v6);
  return a2;
}

uint64_t sub_22120A77C(uint64_t a1, unint64_t a2, uint64_t a3)
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

    sub_22120A8E8(a1, v13);
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

    if (v19 == a2)
    {
      v21 = *(v16 + 16) == *a3 && *(v16 + 24) == *(a3 + 8);
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 != (v17 & 1);
    v24 = v17 & v23;
    v17 |= v23;
  }

  while (v24 != 1);
  return result;
}

void sub_22120A8E8(uint64_t result, size_t __n)
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

      sub_22120A9D8(result, prime);
    }
  }
}

void sub_22120A9D8(uint64_t a1, unint64_t a2)
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

uint64_t *sub_22120ABE8(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v4 = *a2 ^ (v3 << 12);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2 ^ (v3 << 12);
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = v4 & (*&v2 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (result[2] == *a2 && *(result + 6) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v2)
        {
          v9 %= *&v2;
        }
      }

      else
      {
        v9 &= *&v2 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_22120ACAC(void *a1, uint64_t a2)
{
  result = sub_22120ABE8(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

void *sub_22120ACE4(void *a1, unint64_t *a2, uint64_t a3, void **a4)
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

uint64_t *sub_22120AF18(void *a1, uint64_t a2, uint64_t a3, _OWORD **a4)
{
  v4 = *(a2 + 8);
  v5 = *a2 ^ (v4 << 12);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = *a2 ^ (v4 << 12);
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

  if (v10[2] != *a2 || *(v10 + 6) != v4)
  {
    goto LABEL_21;
  }

  return v10;
}

void *sub_22120B15C(void *a1, unsigned int *a2, uint64_t a3, void **a4)
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

void TSCEASTRewriter::TSCEASTRewriter(TSCEASTRewriter *this, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, TSCESymbolTable *a4)
{
  TSCEASTIteratorBase::TSCEASTIteratorBase(this, a2, a3);
  *v5 = &unk_2834A3490;
  *(v5 + 140) = 0;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 144) = a4;
  *(v5 + 152) = 1;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 1065353216;
}

{
  TSCEASTIteratorBase::TSCEASTIteratorBase(this, a2, a3);
  *v5 = &unk_2834A3490;
  *(v5 + 140) = 0;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 144) = a4;
  *(v5 + 152) = 1;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 1065353216;
}

void TSCEASTRewriter::~TSCEASTRewriter(TSCEASTRewriter *this)
{
  *this = &unk_2834A3490;
  v2 = *(this + 13);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_2210BDEC0(this + 160);
  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  TSCEASTIteratorBase::~TSCEASTIteratorBase(this, v3);
}

{
  TSCEASTRewriter::~TSCEASTRewriter(this);

  JUMPOUT(0x223DA1450);
}

uint64_t TSCEASTRewriter::loadAsTree(TSCEASTRewriter *this, const char *a2, uint64_t a3, uint64_t a4)
{
  result = *(this + 13);
  if (result)
  {
    return result;
  }

  v6 = *(this + 2);
  if (!v6)
  {
    return 0;
  }

  v58 = *(this + 2);
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v60 = *(v6 + 8);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  __p = 0;
  v53 = 0;
  v54 = 0;
  if (v60)
  {
    while (1)
    {
      v8 = v59;
      v7 = v60;
      if (v59 < v60)
      {
        if (!v61)
        {
          break;
        }

        v9 = v61[1];
        if (*v61 == v9 || v59 < *(v9 - 8))
        {
          break;
        }
      }

      v10 = v53;
      v11 = *(v53 - 1);
      if (v11)
      {
        if (v56 == v55)
        {
          v12 = MEMORY[0x277D81150];
          v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCEASTElement *TSCEASTRewriter::loadAsTree()", a4);
          v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTRewriter.mm", v15);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 47, 0, "An incomplete node needs one argument - the root of the thunk expression");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
        }

        if (TSCEASTElement::tag(v11, this) != 27 && TSCEASTElement::tag(v11, this) != 56)
        {
          v23 = MEMORY[0x277D81150];
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "TSCEASTElement *TSCEASTRewriter::loadAsTree()", v22);
          v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTRewriter.mm", v26);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 48, 0, "ONLY expecting embedded thunk nodes to exercise this path");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
        }

        v32 = *(v56 - 1);
        v56 -= 8;
        TSCEASTElementWithChildren::appendChild(v11, v32);
        v51 = v11;
        sub_221126E28(&v55, &v51);
        v10 = v53;
      }

      v53 = v10 - 1;
      TSCEASTNodeArrayReader::popEndPoint(&v58);
      if (__p == v53)
      {
        v8 = v59;
        v7 = v60;
        break;
      }
    }

    if (v8 < v7 && (!v61 || (v33 = v61[1], *v61 == v33) || v8 < *(v33 - 8)) || __p != v53)
    {
      v51 = 0;
      v34 = *(*v58 + v8);
      v59 = v8 + 1;
      switch(v34)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
          operator new();
        case 13:
        case 14:
        case 15:
        case 70:
          operator new();
        case 16:
        case 17:
        case 33:
        case 34:
          operator new();
        case 18:
          operator new();
        case 19:
          operator new();
        case 20:
          operator new();
        case 21:
          operator new();
        case 22:
          operator new();
        case 23:
          operator new();
        case 24:
          operator new();
        case 25:
          operator new();
        case 26:
          operator new();
        case 27:
        case 56:
          operator new();
        case 28:
        case 45:
          operator new();
        case 29:
        case 36:
          operator new();
        case 30:
          operator new();
        case 31:
        case 32:
          operator new();
        case 50:
          operator new();
        case 52:
          operator new();
        case 53:
          operator new();
        case 54:
          operator new();
        case 55:
          operator new();
        case 63:
        case 64:
        case 65:
          operator new();
        case 66:
          operator new();
        case 67:
          operator new();
        case 68:
          operator new();
        case 69:
          operator new();
        default:
          v37 = MEMORY[0x277D81150];
          v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCEASTElement *TSCEASTRewriter::loadAsTree()", a4);
          v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTRewriter.mm", v40);
          if (v51)
          {
            v45 = *(v51 + 1);
          }

          else
          {
            v45 = 0;
          }

          v46 = TSCEASTNodeArray::codeString(*(this + 2), v41, v42, v43);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v47, v38, v44, 281, 0, "%d is not a valid node tag, seen at offset: %lu, seen in %{public}@", v34, v45, v46);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50);
          break;
      }

      goto LABEL_54;
    }
  }

  v36 = v55;
  v35 = v56;
  if (v56 - v55 == 8)
  {
    goto LABEL_52;
  }

  if (!*(*(this + 2) + 8))
  {
    if (v56 == v55)
    {
LABEL_60:
      while (v36 != v35)
      {
        if (*v36)
        {
          (*(**v36 + 8))(*v36);
        }

        v36 += 8;
      }

      goto LABEL_61;
    }

LABEL_52:
    v35 = v56 - 8;
    *(this + 13) = *(v56 - 1);
    v56 = v35;
    goto LABEL_60;
  }

LABEL_54:
  *(this + 13) = 0;
LABEL_61:
  if (__p)
  {
    v53 = __p;
    operator delete(__p);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  sub_22120E388(&v58);
  return *(this + 13);
}

void sub_22120C5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  sub_22120E388(v27 - 120);
  _Unwind_Resume(a1);
}

void *sub_22120C7F0(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*result)
  {
    if (*(*result + 8) >= a2)
    {
      result[1] = a2;
    }

    else
    {
      v5 = MEMORY[0x277D81150];
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArrayReader::setOffset(size_t)", a4);
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.h", v8);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 232, 0, "Can't set offset more than one past bytes used, offset: %lu in formula", a2);

      v14 = MEMORY[0x277D81150];

      return objc_msgSend_logBacktraceThrottled(v14, v11, v12, v13);
    }
  }

  return result;
}

_BYTE *TSCEASTRewriter::removeFunctionNode(_BYTE *this, TSCEASTFunctionElement *a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  if (a2)
  {
    v5 = this;
    sub_22120CA10(this, a2, a3, a4);
    v5[140] = 1;
    sub_22120CA10(v5, v6, v7, v8);
    if ((*(*a2 + 56))(a2) != 1)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "void TSCEASTRewriter::removeFunctionNode(TSCEASTFunctionElement *)", v10);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTRewriter.mm", v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 348, 0, "removeFunctionNode error: node has more than one child");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    }

    return sub_22120E3DC(v5 + 20, &v20, &v20);
  }

  return this;
}

_BYTE *sub_22120CA10(_BYTE *result, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  if (result[96] == 1)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTIteratorBase::willModify()", a4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTIteratorBase.h", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 86, 0, "Attempting to modify an iterator marked as readOnly.");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  v4[97] = 1;
  return result;
}

uint64_t TSCEASTRewriter::clearRemovalOfFunctionNode(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  if (!a2)
  {
    return 0;
  }

  v3 = sub_2210CDC18((a1 + 160), &v13);
  if (!v3)
  {
    return 0;
  }

  v7 = v3;
  sub_22120CA10(a1, v4, v5, v6);
  v8 = 1;
  *(a1 + 140) = 1;
  sub_22120CA10(a1, v9, v10, v11);
  sub_2210CDD3C((a1 + 160), v7);
  return v8;
}

TSCEASTElementWithChildren *TSCEASTRewriter::nodeByRemovingNodeIfNeeded(TSCEASTRewriter *a1, TSCEASTElementWithChildren *a2)
{
  v2 = a2;
  if (a2)
  {
    if (*(a1 + 23))
    {
      v4 = TSCEASTElement::tag(a2, a1);
      if (v4 <= 0x22 && ((1 << v4) & 0x600030000) != 0)
      {
        v7 = v2;
        if (sub_22120E640(a1 + 20, &v7))
        {
          if ((*(*v2 + 56))(v2))
          {
            v5 = TSCEASTElementWithChildren::child(v2, 0);
            return TSCEASTRewriter::nodeByRemovingNodeIfNeeded(a1, v5);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

id TSCEASTRewriter::description(TSCEASTRewriter *this, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(this + 13);
  if (v5 || (TSCEASTRewriter::loadAsTree(this, a2, a3, a4), (v5 = *(this + 13)) != 0))
  {
    v8 = MEMORY[0x277CCAB68];
    v9 = (*(*v5 + 104))(v5, this, 0);
    v12 = objc_msgSend_stringWithFormat_(v8, v10, @"TSCEASTRewriter<%p>:\n%@", v11, this, v9);
  }

  else
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v6, @"TSCEASTRewriter<%p>:\n%@", v7, this, @"no tree (root is NULL)");
  }

  return v12;
}

void TSCEASTRewriter::rewrite(TSCEASTRewriter *this, const char *a2, uint64_t a3, uint64_t a4)
{
  TSCEASTRewriter::loadAsTree(this, a2, a3, a4);
  v5 = *(this + 13);
  if (v5)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v6 = (this + 112);
    *(this + 15) = *(this + 14);
    *(this + 34) = 0;
    *&v44 = v5;
    DWORD2(v44) = 0;
    sub_22120D118(&v45, &v44);
    *&v44 = 0;
    sub_221126E28(this + 112, &v44);
    v7 = v45;
    v8 = v46;
    while (v45 != v46)
    {
      v11 = *(v8 - 2);
      v9 = v8 - 4;
      v10 = v11;
      v12 = v9[2];
      v46 = v9;
      *(this + 34) = v12;
      v13 = *(this + 15);
      v16 = *(v13 - 8);
      v14 = v13 - 8;
      v15 = v16;
      if (v10)
      {
        (*(*this + 312))(this, v10);
        v17 = (*(*this + 40))(this, v10);
        if (v17 == v10)
        {
          goto LABEL_14;
        }

        v10 = v17;
        if (v15)
        {
          TSCEASTElementWithChildren::setChildAtIndex(v15, v17, v12, this);
          if (v10)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_22120CA10(this, v18, v19, v20);
          *(this + 140) = 1;
          sub_22120CA10(this, v22, v23, v24);
          *(this + 13) = v10;
          if (v10)
          {
LABEL_14:
            if ((*(v10 + 16) & 2) != 0)
            {
              if ((*(*v10 + 56))(v10))
              {
                v26 = *(this + 34);
                *&v44 = 0;
                DWORD2(v44) = v26;
                sub_22120D118(&v45, &v44);
                v28 = *(this + 15);
                v27 = *(this + 16);
                if (v28 >= v27)
                {
                  v31 = (v28 - *v6) >> 3;
                  if ((v31 + 1) >> 61)
                  {
                    sub_22107C148();
                  }

                  v32 = v27 - *v6;
                  v33 = v32 >> 2;
                  if (v32 >> 2 <= (v31 + 1))
                  {
                    v33 = v31 + 1;
                  }

                  if (v32 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v34 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v34 = v33;
                  }

                  if (v34)
                  {
                    sub_221122DC8(this + 112, v34);
                  }

                  *(8 * v31) = v10;
                  v29 = 8 * v31 + 8;
                  v35 = *(this + 14);
                  v36 = *(this + 15) - v35;
                  v37 = (8 * v31 - v36);
                  memcpy(v37, v35, v36);
                  v38 = *(this + 14);
                  *(this + 14) = v37;
                  *(this + 15) = v29;
                  *(this + 16) = 0;
                  if (v38)
                  {
                    operator delete(v38);
                  }
                }

                else
                {
                  *v28 = v10;
                  v29 = (v28 + 1);
                }

                *(this + 15) = v29;
                v39 = *(v10 + 3);
                v40 = *(v10 + 4);
                if (v40 != v39)
                {
                  v41 = ((v40 - v39) >> 3) - 1;
                  do
                  {
                    v43 = *(v40 - 8);
                    v40 -= 8;
                    v42 = v43;
                    if (v43)
                    {
                      *&v44 = v42;
                      DWORD2(v44) = v41;
                      sub_22120D118(&v45, &v44);
                      v39 = *(v10 + 3);
                    }

                    --v41;
                  }

                  while (v40 != v39);
                }
              }
            }

            else
            {
              v25 = *(this + 34);
              *&v44 = v10;
              DWORD2(v44) = v25;
              sub_22120D118(&v45, &v44);
            }
          }
        }
      }

      else
      {
        *(this + 15) = v14;
        if (v15)
        {
          v21 = TSCEASTElement::tag(v15, this);
          if (v21 <= 44)
          {
            if (v21 == 27)
            {
LABEL_21:
              v30 = (*this + 192);
            }

            else
            {
              if (v21 != 28)
              {
                goto LABEL_39;
              }

LABEL_22:
              v30 = (*this + 72);
            }

            (*v30)(this, v15);
            goto LABEL_39;
          }

          if (v21 == 45)
          {
            goto LABEL_22;
          }

          if (v21 == 56)
          {
            goto LABEL_21;
          }
        }
      }

LABEL_39:
      v7 = v45;
      v8 = v46;
    }

    if (v7)
    {
      operator delete(v7);
    }
  }
}

void sub_22120D0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22120D118(uint64_t a1, _OWORD *a2)
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
      sub_22107C148();
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

      sub_22107C238();
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

TSCEASTNodeArray *TSCEASTRewriter::resultArray(TSCEASTRewriter *this)
{
  v1 = *(this + 2);
  if ((*(this + 140) & 1) != 0 || *(this + 4))
  {
    operator new();
  }

  *(this + 2) = 0;
  return v1;
}

void sub_22120D758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_2210BDEC0(&a15);
  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_22120D7E8(TSCEASTNodeArray *this, const char *__src, unint64_t a3, uint64_t a4)
{
  if (!this->var0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], __src, "void TSCEASTNodeArray::writeBytes(const uint8_t *, size_t)", a4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.h", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 180, 0, "invalid nil value for '%{public}s'", "_nodeArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  var1 = this->var1;
  if (this->var2 - var1 < a3 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, a3, a3, a4);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  memcpy(&var0[var1], __src, a3);
  this->var1 += a3;
}

void sub_22120D918(TSCEASTNodeArray *this, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!this->var0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArray::write(const T &) [T = unsigned long]", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.h", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 171, 0, "invalid nil value for '%{public}s'", "_nodeArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  var1 = this->var1;
  if (this->var2 - var1 < 8 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 8uLL, a3, a4);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  *&var0[var1] = *a2;
  this->var1 += 8;
}

_BYTE *TSCEASTRewriter::createDeepCopy(TSCEASTRewriter *this, TSCEASTElement *a2, uint64_t a3, uint64_t a4)
{
  sub_22120CA10(this, a2, a3, a4);
  v6 = (*(*a2 + 24))(a2, this + 24, this);
  v6[16] = v6[16] & 0xFC | 1;
  v7 = *a2;
  if (v8)
  {
    v9 = v8;
    v10 = (*(v7 + 56))(a2);
    if (v10)
    {
      v11 = v10;
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        do
        {
          v15 = TSCEASTElementWithChildren::child(v9, v14);
          DeepCopy = TSCEASTRewriter::createDeepCopy(this, v15);
          TSCEASTElementWithChildren::setChildAtIndex(v13, DeepCopy, v14, this);
          v14 = (v14 + 1);
        }

        while (v11 != v14);
      }
    }
  }

  return v6;
}

void TSCEASTRewriter::createUnaryOp(_BYTE *a1, const char *a2, TSCEASTElement *a3, uint64_t a4)
{
  v4 = a2;
  sub_22120CA10(a1, a2, a3, a4);
  TSCEASTTagOnlyElement::appendTagOnlyElement((a1 + 24), v4, v6, v7);
  operator new();
}

void TSCEASTRewriter::createIntersectionOp(_BYTE *a1, const char *a2, TSCEASTElement *a3, uint64_t a4)
{
  v4 = a2;
  sub_22120CA10(a1, a2, a3, a4);
  TSCEASTIntersectionElement::appendIntersectionElement((a1 + 24), v4, v6, v7);
  operator new();
}

void TSCEASTRewriter::createBinaryOp(_BYTE *a1, const char *a2, TSCEASTElement *a3, TSCEASTElement *a4)
{
  v4 = a2;
  sub_22120CA10(a1, a2, a3, a4);
  TSCEASTTagOnlyElement::appendTagOnlyElement((a1 + 24), v4, v6, v7);
  operator new();
}

void TSCEASTRewriter::createThunk(TSCEASTRewriter *this, TSCEASTElement *a2, uint64_t a3, uint64_t a4)
{
  sub_22120CA10(this, a2, a3, a4);
  TSCEASTThunkElement::appendThunkNodeHeader((this + 24), 0, 27, v5);
  operator new();
}

void TSCEASTRewriter::createFunction(_BYTE *a1, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a3;
  memset(__p, 0, sizeof(__p));
  if (a3)
  {
    sub_221126E28(__p, &v15);
    v13 = &a9;
    do
    {
      v11 = v13++;
      v12 = *v11;
      if (!v12)
      {
        break;
      }

      sub_221126E28(__p, &v12);
    }

    while (v12);
  }

  TSCEASTRewriter::createFunction(a1, a2, __p, a4);
}

void sub_22120DEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TSCEASTRewriter::createFunction(_BYTE *a1, TSCEASTNodeArray *a2, TSCEASTElement ***a3, uint64_t a4)
{
  sub_22120CA10(a1, a2, a3, a4);
  TSCEASTFunctionElement::appendFunctionElement((a1 + 24), a2, (a3[1] - *a3) >> 3, 0, v7);
  operator new();
}

void TSCEASTRewriter::createIf(TSCEASTRewriter *this, TSCEASTElement *a2, TSCEASTElement *a3, TSCEASTElement *a4)
{
  if (TSCEASTElement::tag(a3, this) != 27)
  {
    TSCEASTRewriter::createThunk(this, a3, v8, v9);
  }

  if (a4)
  {
    if (TSCEASTElement::tag(a4, this) != 27)
    {
      TSCEASTRewriter::createThunk(this, a4, v14, v9);
    }
  }

  TSCEASTRewriter::createFunction(this, 0x3E, a2, v9, v10, v11, v12, v13, a3);
}

void TSCEASTRewriter::createColonWithUidTractList(TSCEASTRewriter *this, TSCEUndoTractList *a2, TSCEASTElement *a3, TSCEASTElement *a4)
{
  v10 = a2;
  if (v10)
  {
    sub_22120CA10(this, v7, v8, v9);
    TSCEASTColonElement::appendColonWithUidTractListElement((this + 24), v10, v11);
    operator new();
  }

  TSCEASTRewriter::createBinaryOp(this, 0x1C, a3, a4);
}

void TSCEASTRewriter::createList(TSCEASTRewriter *this, TSCEASTElement *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v9 = a2;
  memset(__p, 0, sizeof(__p));
  if (a2)
  {
    sub_221126E28(__p, &v9);
    va_copy(v7, va);
    do
    {
      v5 = v7;
      v7 += 8;
      v6 = *v5;
      if (!v6)
      {
        break;
      }

      sub_221126E28(__p, &v6);
    }

    while (v6);
  }

  TSCEASTRewriter::createList(this, __p, a3, a4);
}

void sub_22120E1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TSCEASTRewriter::createList(_BYTE *a1, TSCEASTElement ***a2, uint64_t a3, uint64_t a4)
{
  sub_22120CA10(a1, a2, a3, a4);
  TSCEASTListElement::appendListNode((a1 + 24), ((a2[1] - *a2) >> 3), v6, v7);
  operator new();
}

void TSCEASTRewriter::createArray(_BYTE *a1, const char *a2, TSCEASTElement ***a3, uint64_t a4)
{
  sub_22120CA10(a1, a2, a3, a4);
  TSCEASTArrayElement::appendArrayNode((a1 + 24), a2, WORD2(a2), v6);
  operator new();
}

uint64_t sub_22120E388(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x223DA1450](v2, 0x10C402FEFCB83);
  }

  return a1;
}

void *sub_22120E3DC(void *a1, void *a2, void *a3)
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

void *sub_22120E640(void *a1, void *a2)
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
    if (v5 == v10)
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

void *sub_22120E72C(void *a1, void *a2, void *a3)
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

void sub_22120F158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose(&a24, 8);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_22120F1BC(__n128 *a1, __n128 *a2)
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

void sub_22120F1E0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22120F1F8(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_2210CDBC0(a1, a2);
    }

    sub_22107C148();
  }
}

__n128 sub_22120F2B8(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

void sub_22120F2F4(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_22107C148();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_2210CDBC0(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
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
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void sub_22120F60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22120F650(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_aggNodeForColumnUid_(v3, v4, *(a1 + 32) + 72, v5);
  v10 = objc_msgSend_formulaCoord(v6, v7, v8, v9);
  v14 = objc_msgSend_groupByUid(*(a1 + 40), v11, v12, v13);
  *&v16 = v10;
  *(&v16 + 1) = v14;
  v17 = v15;
  sub_22120F2F4(*(*(a1 + 48) + 8) + 48, &v16);
}

void sub_22120F950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_22120F980(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22120F998(uint64_t a1, void *a2)
{
  v10 = a2;
  v5 = objc_msgSend_aggNodeForGroupNode_(*(a1 + 32), v3, v10, v4);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_msgSend_rebuildFormulasForAggNode_(v10, v8, *(*(*(a1 + 40) + 8) + 40), v9);
}

uint64_t *sub_22120FC6C(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22120FCE8(result, a4);
  }

  return result;
}

void sub_22120FCCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22120FCE8(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_2210CDBC0(a1, a2);
  }

  sub_22107C148();
}

void TSCETableResolverWrapper::~TSCETableResolverWrapper(TSCETableResolverWrapper *this)
{
}

{
}

uint64_t TSCETableResolverWrapper::apparentTractRefForTractRef@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  if (result)
  {
    return MEMORY[0x2821F9670](result, sel_apparentTractRefForTractRef_rangeContext_, a2, a3);
  }

  *(a4 + 80) = 0;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  return result;
}

id TSCETableResolverWrapper::cellsModifiedInCurrentRecalcCycle@<X0>(TSCETableResolverWrapper *this@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = this->var0;
  if (result)
  {
    return MEMORY[0x2821F9670](result, sel_cellsModifiedInCurrentRecalcCycle, a2, a3);
  }

  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

id TSCETableResolverWrapper::readValueForReference(id *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_readValueForReference_fromCellRef_outValue_readOptions_(*a1, a2, a2, a3, a4, a5);

  return v5;
}

void TSCETableResolverWrapper::formatFromCell(TSCETableResolverWrapper *this@<X0>, TSCEEvalRef *a2@<X1>, const TSUCellCoord *a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = a2;
  v8 = v7;
  if (this->var0)
  {
    objc_msgSend_format_fromCell_(this->var0, v7, v7, a3);
  }

  else
  {
    *a4 = 0u;
    a4[1] = 0u;
  }
}

id TSCETableResolverWrapper::canonicalCellReferenceForReference(TSCETableResolverWrapper *this, TSCEEvalRef *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_canonicalCellReferenceForReference_(this->var0, a2, a2, a4);

  return v4;
}

id TSCETableResolverWrapper::valuesForViewTractRef(id *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_valuesForViewTractRef_hidingActionMask_outError_outGeometricPrecedents_forceHidingOfPivotFiltered_(*a1, a2, a2, a3, a4, a5, a6);

  return v6;
}

id TSCETableResolverWrapper::cellTractRefForViewTractRef(TSCETableResolverWrapper *this, TSCEViewTractRef *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_cellTractRefForViewTractRef_(this->var0, a2, a2, a4);

  return v4;
}

TSCEEvalRef *TSCETableResolverWrapper::makeReferenceWithTopLeft(TSCETableResolverWrapper *this, const TSUCellCoord *a2, const TSUCellCoord *a3, const TSUPreserveFlags *a4)
{
  v8 = [TSCEEvalRef alloc];
  v10 = objc_msgSend_initWithTableResolver_topLeft_bottomRight_preserveFlags_(v8, v9, this, a2, a3, a4);

  return v10;
}

void sub_221210CFC(_Unwind_Exception *a1)
{
  v7 = *(v5 - 120);
  if (v7)
  {
    *(v5 - 112) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void sub_221213A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, void *a36)
{
  v42 = *(v40 - 152);
  if (v42)
  {
    *(v40 - 144) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(a1);
}

void sub_221213C50(uint64_t a1, unsigned int *a2, void *a3)
{
  v12 = a3;
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v5, *a2, v6);
  v10 = objc_msgSend_reorganizeValueForSorting_(v12, v8, *(a1 + 40), v9);
  objc_msgSend_setReorganizeValue_atIndex_(v7, v11, v10, *(a1 + 48));
}

void sub_221213D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v5, *(a2 + 4), v6);
  v10 = objc_msgSend_reorganizeValueForSorting_(v12, v8, *(a1 + 40), v9);
  objc_msgSend_setReorganizeValue_atIndex_(v7, v11, v10, *(a1 + 48));
}

uint64_t sub_221213F6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = a3;
  v10 = *(*(a1 + 32) + 8) - **(a1 + 32);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = 0;
  v12 = v10 >> 3;
  do
  {
    v13 = *(**(a1 + 32) + 8 * v11) != 1;
    v14 = objc_msgSend_reorganizeValueAtIndex_(v5, v6, v11, v8);
    v17 = objc_msgSend_reorganizeValueAtIndex_(v9, v15, v11, v16);
    v18 = sub_2216AE13C(v14, v17, v13, *(a1 + 40));
    v19 = v18;
    ++v11;
    if (v18)
    {
      v20 = 1;
    }

    else
    {
      v20 = v11 >= v12;
    }
  }

  while (!v20);
  if (!v18)
  {
LABEL_9:
    v21 = objc_msgSend_columnOrRowIndex(v5, v6, v7, v8);
    if (v21 < objc_msgSend_columnOrRowIndex(v9, v22, v23, v24))
    {
      v19 = -1;
    }

    else
    {
      v19 = 1;
    }
  }

  return v19;
}

void sub_22121470C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  v36 = *(v34 - 160);
  if (v36)
  {
    *(v34 - 152) = v36;
    operator delete(v36);
  }

  *(v34 - 160) = v34 - 136;
  sub_22107C2C0((v34 - 160));

  _Unwind_Resume(a1);
}

id sub_22121488C(void *a1, id *a2)
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

void sub_22121496C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_221214980(uint64_t a1, unsigned int *a2, void *a3)
{
  v12 = a3;
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v5, *a2, v6);
  v10 = objc_msgSend_reorganizeValueForSorting_(v12, v8, *(a1 + 40), v9);
  objc_msgSend_setReorganizeValue_atIndex_(v7, v11, v10, *(a1 + 48));
}

void sub_221214A3C(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v5, *(a2 + 4), v6);
  v10 = objc_msgSend_reorganizeValueForSorting_(v12, v8, *(a1 + 40), v9);
  objc_msgSend_setReorganizeValue_atIndex_(v7, v11, v10, *(a1 + 48));
}

void sub_221215D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, void **a12, uint64_t a13, id a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  sub_22107C2C0(&a12);

  _Unwind_Resume(a1);
}

__n128 sub_2212163F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 48) = v2;
  v3 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 64) = v3;
  result = *(a2 + 72);
  v5 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v5;
  *(a1 + 72) = result;
  return result;
}

void sub_221216428(uint64_t a1)
{
  v2 = *(a1 + 48);
}

void sub_221216474(uint64_t a1, const char *a2)
{
  if (*(a1 + 64))
  {
    v3 = 0;
    v4 = a2 << 32;
    do
    {
      v5 = objc_msgSend_valueAtGridCoord_accessContext_(*(a1 + 32), a2, v4, *(*(a1 + 48) + 8) + 48);
      objc_msgSend_setValue_atCoord_(*(a1 + 40), v6, v5, *(*(a1 + 56) + 8) + 48);
      sub_2211786BC((*(*(a1 + 56) + 8) + 48), (a1 + 72));

      ++v3;
      ++v4;
    }

    while (v3 < *(a1 + 64));
  }

  *(*(*(a1 + 56) + 8) + 48) = (*(*(*(a1 + 56) + 8) + 52) + 1) << 32;
}

void sub_221216538(uint64_t a1, const char *a2)
{
  if (*(a1 + 68))
  {
    v3 = 0;
    v4 = a2;
    do
    {
      v5 = objc_msgSend_valueAtGridCoord_accessContext_(*(a1 + 32), a2, v4, *(*(a1 + 48) + 8) + 48);
      objc_msgSend_setValue_atCoord_(*(a1 + 40), v6, v5, *(*(a1 + 56) + 8) + 48);
      sub_2211786BC((*(*(a1 + 56) + 8) + 48), (a1 + 72));

      ++v3;
      v4 += 0x100000000;
    }

    while (v3 < *(a1 + 68));
  }

  *(*(*(a1 + 56) + 8) + 48) = (*(*(*(a1 + 56) + 8) + 48) + 1);
}

void sub_221216EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17)
{
  v22 = v21;

  _Unwind_Resume(a1);
}

void sub_2212171F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_2212189EC(uint64_t a1, void *a2)
{
  v20 = a2;
  objc_storeStrong((*(a1 + 32) + 64), a2);
  if (*(a1 + 40) == 1)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 80);
    if (v8 != objc_msgSend_presetID(*(v7 + 64), v4, v5, v6))
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableStylePreset loadFromUnarchiver:]_block_invoke", v10);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStylePreset.mm", v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 168, 0, "expected equality between %{public}s and %{public}s", "_tempUpgradePresetID", "_styleNetwork.presetID");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    }

    *(*(a1 + 32) + 80) = 0x7FFFFFFFFFFFFFFFLL;
  }
}

id sub_221218FAC(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

void sub_2212192F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_221219314(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v4 = *(*(*(result + 32) + 8) + 24);
  if (v4 >= a3)
  {
    v4 = a3;
  }

  if (v4)
  {
    v5 = *(*(result + 40) + 8);
    if (*(v5 + 24) >= v4)
    {
      *(v5 + 24) = a2 + a3 - v4;
      *(*(*(result + 32) + 8) + 24) -= v4;
      if (*(*(*(result + 32) + 8) + 24))
      {
        return result;
      }
    }

    else
    {
      *(v5 + 24) = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  *a4 = 1;
  return result;
}

void sub_221219494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2212194B8(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  v5 = *(v4 + 24);
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *(v4 + 24);
  }

  *(v4 + 24) = v5 - v6;
  if (!*(*(*(result + 32) + 8) + 24))
  {
    *(*(*(result + 40) + 8) + 24) = a2 + v6 - 1;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_221219970(uint64_t a1)
{
  if ((a1 - 1) > 0x19)
  {
    return 0;
  }

  else
  {
    return qword_2217E0930[a1 - 1];
  }
}

uint64_t sub_221219994(unint64_t a1)
{
  if (a1 > 0x19)
  {
    return 0;
  }

  else
  {
    return qword_2217E0A00[a1];
  }
}

uint64_t sub_2212199B4(uint64_t a1)
{
  if ((a1 - 1) > 0x19)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return qword_2217E0AD0[a1 - 1];
  }
}

uint64_t sub_2212199D8(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_2217E0BA0[a1];
  }
}

uint64_t sub_2212199F8(uint64_t a1)
{
  if (a1 <= 19)
  {
    if (a1 == 9)
    {
      return 2;
    }

    if (a1 == 10)
    {
      return 3;
    }
  }

  else
  {
    switch(a1)
    {
      case 20:
        return 1;
      case 23:
        return 0;
      case 25:
        return 4;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t sub_221219A58(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_2217E0BC8[a1];
  }
}

uint64_t sub_221219A78(uint64_t a1)
{
  if ((a1 - 1) > 0x17)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return qword_2217E0C20[a1 - 1];
  }
}

uint64_t sub_221219A9C(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_2217E0CE0[a1];
  }
}

uint64_t sub_221219ABC(uint64_t a1)
{
  if (a1 > 19)
  {
    if (a1 != 20)
    {
      if (a1 == 23)
      {
        return 0;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }

    return 1;
  }

  else
  {
    if (a1 != 9)
    {
      if (a1 == 10)
      {
        return 3;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }

    return 2;
  }
}

__CFString *sub_221219B0C(uint64_t a1)
{
  if ((a1 - 1) > 0x1A)
  {
    return 0;
  }

  else
  {
    return off_278461718[a1 - 1];
  }
}

__CFString *sub_221219B30(uint64_t a1)
{
  if ((a1 - 1) > 0x1A)
  {
    return @"Not Set";
  }

  else
  {
    return off_2784617F0[a1 - 1];
  }
}

void sub_221219BE0(_Unwind_Exception *a1, uint64_t a2, TSUIndexSet *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  TSUIndexSet::~TSUIndexSet(&a11);

  _Unwind_Resume(a1);
}

void sub_22121A218(_Unwind_Exception *a1)
{
  TSUIndexSet::~TSUIndexSet((v3 - 208));
  TSUIndexSet::~TSUIndexSet((v3 - 176));
  TSUIndexSet::~TSUIndexSet((v3 - 144));
  TSUIndexSet::~TSUIndexSet((v3 - 112));

  _Unwind_Resume(a1);
}

uint64_t sub_22121A2E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v2 = a1 + 48;
  *v2 = v3 | 3;
  *&v4.f64[0] = 0x8000000080000000;
  *&v4.f64[1] = 0x8000000080000000;
  *(v2 + 8) = vnegq_f64(v4);
  *(v2 + 24) = 0;
  return TSUIndexSet::operator=();
}

uint64_t sub_22121A310(uint64_t a1, int64x2_t *a2)
{
  v2 = *(a1 + 32);
  v4 = vsubq_s64(*a2, vdupq_n_s64(*(*(a1 + 40) + 4)));
  return TSUIndexSet::addIndexesInRange((*(v2 + 8) + 48), &v4);
}

uint64_t sub_22121A354(uint64_t a1, int64x2_t *a2)
{
  v2 = *(a1 + 32);
  v4 = vsubq_s64(*a2, vdupq_n_s64(**(a1 + 40)));
  return TSUIndexSet::addIndexesInRange((*(v2 + 8) + 48), &v4);
}

void sub_22121C220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  TSUIndexSet::~TSUIndexSet((v45 + 48));
  _Block_object_dispose(va, 8);
  TSUIndexSet::~TSUIndexSet((v44 + 48));
  _Block_object_dispose((v46 - 256), 8);
  TSUIndexSet::~TSUIndexSet((v43 + 48));
  _Block_object_dispose((v46 - 176), 8);
  TSUIndexSet::~TSUIndexSet((v42 + 48));
  _Unwind_Resume(a1);
}

void *sub_22121C2B4(void *result, void *a2)
{
  v2 = result;
  v3 = *(result[7] + 4);
  v4 = a2[1];
  v5 = *a2 + v3;
  v6 = v5 < 0 != __OFADD__(*a2, v3);
  *(*(result[4] + 8) + 24) |= v6;
  if (v4 + v3 < 0 || (v7 = v3 + v4, v7 == 0x7FFF) || (v8 = (v5 & ~(v5 >> 31)), v8 > v7))
  {
    *(*(result[4] + 8) + 24) = 1;
  }

  else
  {
    v9._begin = v8;
    v9._end = v7;
    TSUIndexSet::addIndexesInRange((*(result[5] + 8) + 48), &v9);
    return TSUIndexSet::addIndexesInRange((*(v2[6] + 8) + 48), &v9);
  }

  return result;
}

uint64_t sub_22121C370(uint64_t result, void *a2)
{
  v2 = result;
  v3 = **(result + 56);
  v4 = a2[1];
  v5 = *a2 + v3;
  v6 = v5 < 0 != __OFADD__(*a2, v3);
  *(*(*(result + 32) + 8) + 24) |= v6;
  if (v4 + v3 < 0 || ((v7 = v5 & ~(v5 >> 31), v8 = (v3 + v4), v8 != 0x7FFFFFFF) ? (v9 = v7 > v8) : (v9 = 1), v9 || (v10._begin = v7, v10._end = v8, (v8 & 0x80000000) != 0)))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  else
  {
    TSUIndexSet::addIndexesInRange((*(*(result + 40) + 8) + 48), &v10);
    return TSUIndexSet::addIndexesInRange((*(*(v2 + 48) + 8) + 48), &v10);
  }

  return result;
}

unint64_t sub_22121C524(void *a1, void *a2, unsigned int a3, void *a4, char a5, int a6, void *a7, void *a8, unsigned int *a9, void *a10)
{
  v12 = a1;
  v13 = a4;
  TSUDecimal::operator=();
  v178 = objc_msgSend_nilValue(TSCENilValue, v14, v15, v16);
  v174 = objc_msgSend_zero(TSCENumberValue, v17, v18, v19);
  v23 = objc_msgSend_count(v13, v20, v21, v22);
  v172 = a7;
  v24 = v12;
  v189[0] = v24;
  v189[1] = a2;
  v190 = 0;
  *v191 = 0;
  v192 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v193 = 0;
  v194 = 0;
  v31 = objc_msgSend_hidingActionMask(v24, v25, v26, v27);
  *&v191[7] = v31 != 0;
  v188[0] = 0;
  v188[1] = 0;
  v187 = v188;
  if (v23)
  {
    v177 = 0;
    v171 = 0;
    v32 = 0;
    v33 = 0;
    while (1)
    {
      v34 = objc_msgSend_valueAtIndex_accessContext_(v13, v28, v33, v189);
      v38 = v34;
      if (!v31)
      {
        goto LABEL_31;
      }

      if ((v191[10] & v31) == 0)
      {
        break;
      }

LABEL_56:

LABEL_57:
      if (++v33 == v23)
      {
        goto LABEL_63;
      }
    }

    if ((v31 & 0x40) != 0 && (objc_msgSend_isNil(v34, v35, v36, v37) & 1) == 0)
    {
      if (objc_msgSend_isThunk(v38, v35, v39, v37))
      {
        v43 = objc_msgSend_unwrapThunk_(v24, v40, v38, v42);

        v38 = v43;
      }

      if (objc_msgSend_isReferenceValue(v38, v40, v41, v42))
      {
        v44 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v38, v35, v24, a2, a3, a10);
        v180._decimal.w[0] = objc_msgSend_tableUID(v44, v45, v46, v47);
        v180._decimal.w[1] = v48;
        objc_msgSend_subtotalPrecedentForTableUID_(TSCEHauntedOwner, v48, &v180, v49);
        v185._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
        v185._coordsForOwnerUid.__tree_.__size_ = 0;
        v185._coordsForOwnerUid.__tree_.__begin_node_ = &v185._coordsForOwnerUid.__tree_.__end_node_;
        if (*a10)
        {
          TSUDecimal::operator=();
          v53 = 1;
        }

        else
        {
          v54 = objc_msgSend_tableUID(v44, v50, v51, v52);
          for (i = v188[0]; i; i = *i)
          {
            if (__PAIR128__(v55, v54) >= *(i + 2))
            {
              if (i[5] >= v55 && i[4] >= v54)
              {
                v180._decimal.w[0] = objc_msgSend_tableUID(v44, v55, v56, v57);
                v180._decimal.w[1] = v97;
                v98 = sub_22121D288(&v187, v180._decimal.w);
                TSCECellRefSet::operator=(&v185, v98);
                goto LABEL_22;
              }

              ++i;
            }
          }

          v59 = objc_msgSend_calcEngine(v24, v55, v56, v57);
          v62 = v59;
          if (v59)
          {
            objc_msgSend_cellDependentsOfCell_(v59, v60, v186, v61);
          }

          else
          {
            v180 = 0;
            *v181 = 0;
          }

          TSCECellRefSet::operator=(&v185, &v180);
          sub_22107C800(&v180, v180._decimal.w[1]);

          v180._decimal.w[0] = objc_msgSend_tableUID(v44, v63, v64, v65);
          v180._decimal.w[1] = v66;
          TSCECellRefSet::TSCECellRefSet(v181, &v185);
          sub_22121E5E0(&v187, v180._decimal.w, &v180);
          sub_22107C800(v181, *&v181[8]);
LABEL_22:
          if (v44)
          {
            objc_msgSend_anyRef(v44, v67, v68, v69);
            v70 = v180._decimal.w[1];
            v71 = *(&v183 + 1);
          }

          else
          {
            v71 = 0;
            v70 = 0;
            v182 = 0u;
            v183 = 0u;
            memset(v181, 0, sizeof(v181));
            v180 = 0;
          }

          v184.coordinate = v70;
          v184._tableUID = *&v181[8];

          v53 = TSCECellRefSet::containsCellRef(&v185, &v184) ? 4 : 0;
        }

        sub_22107C800(&v185, v185._coordsForOwnerUid.__tree_.__end_node_.__left_);

        if (v53)
        {

          if (v53 != 4)
          {
            goto LABEL_124;
          }

          goto LABEL_57;
        }
      }
    }

LABEL_31:
    v72 = objc_msgSend_deepType_(v38, v35, v24, v37);
    if ((objc_msgSend_isNil(v38, v73, v74, v75) & 1) == 0)
    {
      if (objc_msgSend_isNil(v178, v76, v77, v78))
      {
        v82 = v38;

        v178 = v82;
      }

      if (a6 && v72 == 2)
      {
        if ((v32 & 0xFFFFFFFE) == 2)
        {
          v156 = objc_msgSend_functionName(a2, v79, v80, v81);
          *a10 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v157, v156, v158);

LABEL_116:
          TSUDecimal::operator=();
          goto LABEL_123;
        }

        objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v38, v79, v24, a2, 0, a10);
        TSUDecimal::operator=();
        TSUDecimal::operator+=();
        if (*a10)
        {
          goto LABEL_116;
        }

        v32 = 1;
      }

      else
      {
        v180._decimal.w[0] = sub_2212560F4(v24, a2, v38, 0, a10);
        v180._decimal.w[1] = v83;
        if (*a10)
        {
          goto LABEL_116;
        }

        if (v72 == 5)
        {
          v86 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v38, v83, v24, a2, 0, a10);
          v89 = v86;
          if (*a10)
          {
            goto LABEL_121;
          }

          if (v171)
          {
            if ((objc_msgSend_dimensionsMatchModuloCurrency_(v174, v87, v86, v88) & 1) == 0)
            {
              v165 = objc_msgSend_functionName(a2, v90, v91, v92);
              *a10 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v166, v165, v167);

LABEL_121:
              TSUDecimal::operator=();
LABEL_122:

LABEL_123:
              goto LABEL_124;
            }
          }

          else
          {
            v93 = v86;

            v174 = v93;
          }

          if (objc_msgSend_hasUnits(v89, v90, v91, v92) && !objc_msgSend_dimension(v89, v94, v95, v96))
          {
            if ((v32 - 1) <= 1)
            {
LABEL_120:
              v162 = objc_msgSend_functionName(a2, v94, v95, v96);
              *a10 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v163, v162, v164);

              TSUDecimal::operator=();
              goto LABEL_122;
            }

            v32 = 3;
          }

          else
          {
            if (v32 == 2)
            {
              goto LABEL_120;
            }

            v32 = 1;
          }

          v171 = 1;
        }

        else if (v72 == 3)
        {
          if ((v32 & 0xFFFFFFFD) == 1)
          {
            v159 = objc_msgSend_functionName(a2, v83, v84, v85);
            *a10 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v160, v159, v161);

            goto LABEL_116;
          }

          v32 = 2;
        }

        TSUDecimal::operator+=();
      }

      ++v177;
    }

    goto LABEL_56;
  }

  v177 = 0;
LABEL_63:
  if (v172)
  {
    *v172 = v178;
  }

  if (v177)
  {
    TSUDecimal::operator=();
    v180 = v195;
    TSUDecimal::operator/=();
    v179 = v180;
    if (a8)
    {
      *a8 = sub_22125621C(&v179, v178, v24, a2, 0);
    }

    if (a9)
    {
      *a9 = v177;
    }

    TSUDecimal::operator=();
    if (v23)
    {
      v102 = 0;
      while (1)
      {
        v103 = objc_msgSend_valueAtIndex_accessContext_(v13, v99, v102, v189);
        v107 = v103;
        if (!v31)
        {
          goto LABEL_100;
        }

        if ((v191[10] & v31) == 0)
        {
          break;
        }

LABEL_106:

LABEL_107:
        if (++v102 == v23)
        {
          goto LABEL_110;
        }
      }

      if ((v31 & 0x40) != 0 && (objc_msgSend_isNil(v103, v104, v105, v106) & 1) == 0)
      {
        if (objc_msgSend_isThunk(v107, v104, v108, v106))
        {
          v112 = objc_msgSend_unwrapThunk_(v24, v109, v107, v111);

          v107 = v112;
        }

        if (objc_msgSend_isReferenceValue(v107, v109, v110, v111))
        {
          v113 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v107, v104, v24, a2, a3, a10);
          v180._decimal.w[0] = objc_msgSend_tableUID(v113, v114, v115, v116);
          v180._decimal.w[1] = v117;
          objc_msgSend_subtotalPrecedentForTableUID_(TSCEHauntedOwner, v117, &v180, v118);
          v185._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
          v185._coordsForOwnerUid.__tree_.__size_ = 0;
          v185._coordsForOwnerUid.__tree_.__begin_node_ = &v185._coordsForOwnerUid.__tree_.__end_node_;
          if (*a10)
          {
            TSUDecimal::operator=();
            v122 = 1;
          }

          else
          {
            v123 = objc_msgSend_tableUID(v113, v119, v120, v121);
            for (j = v188[0]; j; j = *j)
            {
              if (__PAIR128__(v124, v123) >= *(j + 2))
              {
                if (j[5] >= v124 && j[4] >= v123)
                {
                  v180._decimal.w[0] = objc_msgSend_tableUID(v113, v124, v125, v126);
                  v180._decimal.w[1] = v154;
                  v155 = sub_22121D288(&v187, v180._decimal.w);
                  TSCECellRefSet::operator=(&v185, v155);
                  goto LABEL_91;
                }

                ++j;
              }
            }

            v128 = objc_msgSend_calcEngine(v24, v124, v125, v126);
            v131 = v128;
            if (v128)
            {
              objc_msgSend_cellDependentsOfCell_(v128, v129, v186, v130);
            }

            else
            {
              v180 = 0;
              *v181 = 0;
            }

            TSCECellRefSet::operator=(&v185, &v180);
            sub_22107C800(&v180, v180._decimal.w[1]);

            v180._decimal.w[0] = objc_msgSend_tableUID(v113, v132, v133, v134);
            v180._decimal.w[1] = v135;
            TSCECellRefSet::TSCECellRefSet(v181, &v185);
            sub_22121E5E0(&v187, v180._decimal.w, &v180);
            sub_22107C800(v181, *&v181[8]);
LABEL_91:
            if (v113)
            {
              objc_msgSend_anyRef(v113, v136, v137, v138);
              v139 = v180._decimal.w[1];
              v140 = *(&v183 + 1);
            }

            else
            {
              v140 = 0;
              v139 = 0;
              v182 = 0u;
              v183 = 0u;
              memset(v181, 0, sizeof(v181));
              v180 = 0;
            }

            v184.coordinate = v139;
            v184._tableUID = *&v181[8];

            v122 = TSCECellRefSet::containsCellRef(&v185, &v184) ? 7 : 0;
          }

          sub_22107C800(&v185, v185._coordsForOwnerUid.__tree_.__end_node_.__left_);

          if (v122)
          {

            if (v122 != 7)
            {
              goto LABEL_124;
            }

            goto LABEL_107;
          }
        }
      }

LABEL_100:
      v141 = objc_msgSend_deepType_(v107, v104, v24, v106);
      if ((objc_msgSend_isNil(v107, v142, v143, v144) & 1) == 0)
      {
        if (a6 && v141 == 2)
        {
          v148 = objc_msgSend_asBooleanValue(v107, v145, v146, v147);
          objc_msgSend_asBool(v148, v149, v150, v151);
          TSUDecimal::operator=();
          v180 = *&v185._coordsForOwnerUid.__tree_.__begin_node_;
          TSUDecimal::operator-=();
          v186[0] = v180;

          TSUDecimal::operator*=();
          TSUDecimal::operator+=();
        }

        else
        {
          v152 = sub_2212560F4(v24, a2, v107, 0, a10);
          if (*a10)
          {
            TSUDecimal::operator=();

            goto LABEL_124;
          }

          v180._decimal.w[0] = v152;
          v180._decimal.w[1] = v153;
          TSUDecimal::operator-=();
          v186[0] = v180;
          TSUDecimal::operator*=();
          *&v185._coordsForOwnerUid.__tree_.__begin_node_ = v180;
          TSUDecimal::operator+=();
        }
      }

      goto LABEL_106;
    }

LABEL_110:
    if (v177 != 1 || (a5 & 1) != 0)
    {
      TSUDecimal::operator=();
      v180 = v195;
      TSUDecimal::operator/=();
      v196 = v180;
    }

    else
    {
      *a10 = objc_msgSend_divideByZeroError(TSCEError, (v177 - 1), v100, v101);
      TSUDecimal::operator=();
    }
  }

  else
  {
    *a10 = objc_msgSend_divideByZeroError(TSCEError, 0, v29, v30);
    TSUDecimal::operator=();
  }

LABEL_124:
  sub_22121E580(&v187, v188[0]);

  return v196._decimal.w[0];
}

void sub_22121D09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_22121E580(v24 - 240, *(v24 - 232));

  _Unwind_Resume(a1);
}

uint64_t sub_22121D288(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_22112C810(a1, &v4, a2);
  if (!v2)
  {
    sub_2211E6334("map::at:  key not found");
  }

  return v2 + 48;
}

TSCENumberValue *sub_22121D2C8(void *a1, void *a2, void *a3, uint64_t a4, char a5, int a6, void *a7, unsigned int *a8)
{
  v15 = a1;
  v16 = a3;
  v68[0] = 0;
  v61 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v16, v17, v15, a2, a4, 1, v68);
  v18 = v68[0];
  if (v18)
  {
    v22 = v18;
    v23 = objc_msgSend_raiseErrorOrConvert_(v15, v19, v18, v21);
    v24 = v61;
    goto LABEL_19;
  }

  v25 = objc_msgSend_nilValue(TSCENilValue, v19, v20, v21);
  v65 = 0;
  v66 = v25;
  v60 = a8;
  v24 = v61;
  v26 = sub_22121C524(v15, a2, a4, v61, a5, a6, &v66, a7, v60, &v65);
  v28 = v27;
  v29 = v66;

  v30 = v65;
  v67._decimal.w[0] = v26;
  v67._decimal.w[1] = v28;
  if (!v30)
  {
    v33 = objc_msgSend_deepType_(v29, v31, v15, v32);
    if (v33 == 5)
    {
      v64 = 0;
      v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v29, v34, v15, a2, a4, &v64);
      v22 = v64;
      if (v22)
      {
        v23 = objc_msgSend_raiseErrorOrConvert_(v15, v45, v22, v47);

        goto LABEL_18;
      }

      if (objc_msgSend_isDuration(v44, v45, v46, v47))
      {
        v53 = objc_msgSend_unit(v44, v50, v51, v52);
        TSUDecimal::doubleValue(&v67);
        sub_22121D648(v53, v54);
        TSUDecimal::operator=();
      }

      TSUDecimal::doubleValue(&v67);
      TSUDecimal::operator=();
      v23 = objc_msgSend_variantWithDecimal_(v44, v55, &v63, v56);

      if (v61)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v33 == 3)
      {
        v35 = [TSCENumberValue alloc];
        TSUDecimal::doubleValue(&v67);
        objc_msgSend_daysToSeconds_(TSCECalendar, v37, v38, v39, sqrt(v36));
        TSUDecimal::operator=();
        v41 = objc_msgSend_initWithDecimal_baseUnit_(v35, v40, &v63, 3);
      }

      else
      {
        TSUDecimal::doubleValue(&v67);
        TSUDecimal::operator=();
        v41 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v48, &v63, v49);
      }

      v23 = v41;
      if (v61)
      {
LABEL_12:
        objc_msgSend_formatWithContext_(v61, v42, v15, v43);
LABEL_17:
        TSCEFormat::TSCEFormat(&v63, &v62);
        objc_msgSend_setFormat_(v23, v57, &v63, v58);
        v22 = 0;
        goto LABEL_18;
      }
    }

    memset(&v62, 0, sizeof(v62));
    goto LABEL_17;
  }

  v22 = v30;
  v23 = objc_msgSend_raiseErrorOrConvert_(v15, v31, v30, v32);
LABEL_18:

LABEL_19:

  return v23;
}

double sub_22121D648(int a1, double result)
{
  if (a1 <= 3)
  {
    if (a1 == 2)
    {
      v2 = 2.73386103e-12;
    }

    else
    {
      if (a1 != 3)
      {
        return result;
      }

      v2 = 1.33959191e-10;
    }
  }

  else
  {
    switch(a1)
    {
      case 4:
        v2 = 0.0000000771604938;
        break;
      case 5:
        v2 = 0.000277777778;
        break;
      case 7:
        v2 = 1000000.0;
        break;
      default:
        return result;
    }
  }

  return result * v2;
}

id sub_22121D6B8(void *a1, void *a2, void *a3, char a4, int a5)
{
  v5 = sub_22121D2C8(a1, a2, a3, 0, a4, a5, 0, 0);

  return v5;
}

id sub_22121D6F8(void *a1, void *a2, void *a3, char a4, int a5)
{
  v9 = a1;
  v10 = a3;
  v14 = objc_msgSend_nilValue(TSCENilValue, v11, v12, v13);
  v50 = 0;
  v51 = v14;
  v15 = sub_22121C524(v9, a2, 0, v10, a4, a5, &v51, 0, 0, &v50);
  v17 = v16;
  v18 = v51;

  v19 = v50;
  v23 = v19;
  v52[0] = v15;
  v52[1] = v17;
  if (v19)
  {
    if (objc_msgSend_isMismatchedUnitsError(v19, v20, v21, v22))
    {
      v27 = objc_msgSend_functionName(a2, v24, v25, v26);
      v29 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v28, v27, 1);

      v23 = v29;
    }

    v30 = objc_msgSend_errorValue_(TSCEErrorValue, v24, v23, v26);
    goto LABEL_15;
  }

  if (objc_msgSend_deepType_(v18, v20, v9, v22) == 5)
  {
    v49 = 0;
    v33 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v31, v9, a2, 0, &v49);
    v34 = v49;
    v23 = v34;
    if (v34)
    {
      if (objc_msgSend_isMismatchedUnitsError(v34, v35, v36, v37))
      {
        v41 = objc_msgSend_functionName(a2, v38, v39, v40);
        v43 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v42, v41, 1);

        v23 = v43;
      }

      v44 = objc_msgSend_errorValue_(TSCEErrorValue, v38, v23, v40);
      goto LABEL_12;
    }

    v47 = objc_msgSend_errorForDuration_argumentIndex_(v33, v35, a2, 1);
    if (v47)
    {
      v44 = objc_msgSend_errorValue_(TSCEErrorValue, v45, v47, v46);
      v23 = v47;
LABEL_12:

      goto LABEL_16;
    }
  }

  v23 = 0;
  v30 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v31, v52, v32);
LABEL_15:
  v44 = v30;
LABEL_16:

  return v44;
}

id sub_22121D9AC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v10 = objc_msgSend_count(v6, v7, v8, v9);
  v11 = v5;
  v39[0] = v11;
  v39[1] = a2;
  v40 = 0;
  v41[0] = 0;
  *(v41 + 7) = 0;
  v42 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v43 = 0;
  v44 = 0;
  v15 = objc_msgSend_locale(v11, v12, v13, v14);
  v19 = objc_opt_new();
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v21 = objc_msgSend_valueAtIndex_accessContext_(v6, v16, i, v39);
      v25 = objc_msgSend_nativeType(v21, v22, v23, v24);
      if (v25 && v25 != 10)
      {
        v27 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v26, v21, v15);
        v33 = objc_msgSend_canonicalKeyString(v27, v28, v29, v30);
        if (v33)
        {
          objc_msgSend_addObject_(v19, v31, v33, v32);
        }
      }
    }
  }

  objc_msgSend_count(v19, v16, v17, v18);
  TSUDecimal::operator=();
  v36 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v34, v38, v35);

  return v36;
}

id sub_22121DBB4(void *a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v10 = objc_msgSend_count(v6, v7, v8, v9);
  v11 = v5;
  v49[0] = v11;
  v49[1] = a2;
  v50 = 0;
  v51[0] = 0;
  *(v51 + 7) = 0;
  v52 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v53 = 0;
  v54 = 0;
  v15 = objc_msgSend_locale(v11, v12, v13, v14);
  v17 = objc_opt_new();
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v19 = objc_msgSend_valueAtIndex_accessContext_(v6, v16, i, v49);
      v23 = objc_msgSend_nativeType(v19, v20, v21, v22);
      if (v23 && v23 != 10)
      {
        v25 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v24, v19, v15);
        v31 = objc_msgSend_canonicalKeyString(v25, v26, v27, v28);
        if (v31)
        {
          objc_msgSend_addObject_(v17, v29, v31, v30);
        }
      }
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v32 = v17;
  v34 = 0;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v45, v55, 16);
  if (v37)
  {
    v38 = *v46;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v46 != v38)
        {
          objc_enumerationMutation(v32);
        }

        if (objc_msgSend_countForObject_(v32, v35, *(*(&v45 + 1) + 8 * j), v36) > 1)
        {
          ++v34;
        }
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v45, v55, 16);
    }

    while (v37);
  }

  TSUDecimal::operator=();
  v42 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v40, v44, v41);

  return v42;
}

id sub_22121DE90(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v11 = objc_msgSend_nilValue(TSCENilValue, v7, v8, v9);
  if (v6)
  {
    v12 = objc_msgSend_evaluateVector_context_functionSpec_(TSCEFunction_MEDIAN, v10, v6, v5, a2);

    v11 = v12;
  }

  return v11;
}

id sub_22121DF48(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v11 = objc_msgSend_nilValue(TSCENilValue, v7, v8, v9);
  if (v6)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 1057;
    v18 = 1;
    v19 = -50266102;
    v20 = 253;
    v12 = objc_msgSend_evaluateVector_context_functionSpec_resultFormat_(TSCEFunction_MODE, v10, v6, v5, a2, &v14);

    v11 = v12;
  }

  return v11;
}

id sub_22121E03C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v10 = v5;
  if (objc_msgSend_deepType_(v5, v6, v4, v7) == 9)
  {
    v11 = objc_msgSend_errorWithContext_(v5, v8, v4, v9);
    v10 = v5;
    if ((objc_msgSend_isAbortedError(v11, v12, v13, v14) & 1) == 0)
    {
      v10 = v5;
      if ((objc_msgSend_isCircularReferenceError(v11, v15, v16, v17) & 1) == 0)
      {
        v10 = objc_msgSend_stringValue_(TSCEStringValue, v18, @"–", v19);
      }
    }
  }

  return v10;
}

TSCENumberValue *sub_22121E128(void *a1, void *a2, TSCEValue *a3)
{
  v5 = a1;
  v9 = a2;
  if (!a3)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "TSCEValue *TSCEComputeSubtraction(TSCEValue *__strong, TSCEValue *__strong, TSULocale *__unsafe_unretained)", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAggregateEval.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 449, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  if (TSCEArgumentAccessor::shouldTreatValueAsDateArgumentWithLocale(v5, a3, v7))
  {
    if (!TSCEArgumentAccessor::shouldTreatValueAsDateArgumentWithLocale(v9, a3, v20))
    {
      v40 = objc_msgSend_asDateWithLocale_(v5, v22, a3, v23);
      v43 = objc_msgSend_asNumberWithLocale_(v9, v41, a3, v42);
      if (objc_msgSend_isDuration(v43, v44, v45, v46))
      {
        objc_msgSend_rawTimeIntervalValue(v43, v47, v48, v49);
      }

      else
      {
        objc_msgSend_timeIntervalRepresentation(v43, v47, v48, v49);
        v53 = v63 * 24.0 * 60.0 * 60.0;
      }

      v64 = objc_msgSend_dateByAddingTimeInterval_(v40, v50, v51, v52, -v53);

      if (v5)
      {
        objc_msgSend_format(v5, v65, v66, v67);
      }

      else
      {
        memset(&v82, 0, sizeof(v82));
      }

      v34 = objc_msgSend_dateValue_format_(TSCEDateValue, v65, v64, &v82);

      goto LABEL_32;
    }

    v24 = objc_msgSend_asDateWithLocale_(v5, v22, a3, v23);
    v27 = objc_msgSend_asDateWithLocale_(v9, v25, a3, v26);
    objc_msgSend_timeIntervalSinceDate_(v24, v28, v27, v29);
    v31 = sub_221387C00(v30);
    v32 = [TSCENumberValue alloc];
    TSUDecimal::operator=();
    v34 = objc_msgSend_initWithDecimal_baseUnit_(v32, v33, &v82, v31);
    goto LABEL_30;
  }

  if (objc_msgSend_deepType_(v9, v19, 0, v21) != 3)
  {
    if (objc_msgSend_isNil(v5, v35, v36, v37))
    {
      objc_msgSend_unitlessZero(TSCENumberValue, v54, v55, v56);
    }

    else
    {
      objc_msgSend_asNumberWithLocale_(v5, v54, a3, v56);
    }
    v24 = ;
    if (objc_msgSend_isNil(v9, v57, v58, v59))
    {
      objc_msgSend_unitlessZero(TSCENumberValue, v60, v61, v62);
    }

    else
    {
      objc_msgSend_asNumberWithLocale_(v9, v60, a3, v62);
    }
    v27 = ;
    v81 = 0;
    v69 = objc_msgSend_subtract_functionSpec_outError_(v24, v68, v27, 0, &v81);
    v73 = v81;
    if (v73)
    {
      v74 = objc_msgSend_errorValue_(TSCEErrorValue, v70, v73, v72);
LABEL_29:
      v34 = v74;

LABEL_30:
      goto LABEL_31;
    }

    if (v5)
    {
      objc_msgSend_format(v5, v70, v71, v72);
      if (v9)
      {
LABEL_25:
        objc_msgSend_format(v9, v70, v71, v72);
LABEL_28:
        TSCEFormat::formatByMergingWithFormat(&v78, &v80, &v79, v71, v72);
        TSCEFormat::TSCEFormat(&v82, &v78);
        objc_msgSend_setFormat_(v69, v75, &v82, v76);
        v74 = v69;
        goto LABEL_29;
      }
    }

    else
    {
      memset(&v80, 0, sizeof(v80));
      if (v9)
      {
        goto LABEL_25;
      }
    }

    memset(&v79, 0, sizeof(v79));
    goto LABEL_28;
  }

  v24 = objc_msgSend_numberMinusDateError(TSCEError, v35, v36, v37);
  v34 = objc_msgSend_errorValue_(TSCEErrorValue, v38, v24, v39);
LABEL_31:

LABEL_32:

  return v34;
}

void sub_22121E580(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_22121E580(a1, *a2);
    sub_22121E580(a1, a2[1]);
    sub_22107C800((a2 + 6), a2[7]);

    operator delete(a2);
  }
}

void *sub_22121E5E0(uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  result = *sub_22112C810(a1, &v4, a2);
  if (!result)
  {
    sub_22121E660();
  }

  return result;
}

void sub_22121E6E0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_22121E6FC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_22121E6FC(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_22107C800((a2 + 6), a2[7]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_22121E75C(int a1)
{
  result = 0;
  switch(a1)
  {
    case 256:
    case 258:
    case 259:
    case 262:
    case 267:
    case 269:
    case 270:
      result = 1;
      break;
    case 257:
    case 274:
      result = 2;
      break;
    case 260:
    case 271:
      result = 5;
      break;
    case 261:
    case 272:
      result = 3;
      break;
    case 263:
      goto LABEL_8;
    case 264:
    case 265:
    case 266:
    case 273:
      return result;
    case 268:
      result = 4;
      break;
    default:
      if (a1 == 1)
      {
LABEL_8:
        result = 6;
      }

      break;
  }

  return result;
}

uint64_t sub_22121E814(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return word_2217E0D20[(a1 - 1)];
  }
}

uint64_t sub_22121E83C(int a1)
{
  v1 = sub_22121E75C(a1);

  return sub_22121E814(v1);
}

TSTTableStyle *sub_221220220(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D80AB8]);
  objc_msgSend_initDefaultPropertyMap_presetID_colors_alternate_(TSTTableStyle, v3, v2, a1[6], a1[4], a1[7]);
  v4 = [TSTTableStyle alloc];
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v5, a1[5], 0, v2, 0);

  return isVariation;
}

id sub_2212202B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80EC8], a2, *(a1 + 32), a4);
  v8 = objc_msgSend_defaultValueForProperty_(MEMORY[0x277D80EC8], v6, 16, v7);
  objc_msgSend_setValue_forProperty_(v5, v9, v8, 16);

  objc_msgSend_setCGFloatValue_forProperty_(v5, v10, 17, v11, *(a1 + 40));

  return v5;
}

id sub_221220360(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_defaultTableNameShapeStyleWithContext_(TSTTableStyleNetwork, a2, *(a1 + 32), a4);

  return v4;
}

TSTCellStyle *sub_22122039C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_alloc_init(MEMORY[0x277D80AB8]);
  objc_msgSend_initDefaultPropertyMap_forTableStyleArea_presetID_colors_alternate_(TSTCellStyle, v8, v7, a5, a1[6], a1[4], a1[7]);
  v9 = [TSTCellStyle alloc];
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v9, v10, a1[5], 0, v7, 0);

  return isVariation;
}

id sub_22122043C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80EC8], a2, *(a1 + 32), a4);
  v8 = objc_msgSend_defaultValueForProperty_(MEMORY[0x277D80EC8], v6, 16, v7);
  objc_msgSend_setValue_forProperty_(v5, v9, v8, 16);

  objc_msgSend_setCGFloatValue_forProperty_(v5, v10, 17, v11, *(a1 + 40));

  return v5;
}

void sub_221220934(uint64_t a1, const char *a2)
{
  v32 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, a2, *(a1 + 56), a2);
  v5 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v4, *(a1 + 56), a2);
  v6 = objc_alloc_init(MEMORY[0x277D80AB8]);
  objc_msgSend_initDefaultPropertyMap_forTableStyleArea_presetID_colors_alternate_(TSTCellStyle, v7, v6, a2, *(a1 + 56), *(a1 + 32), *(a1 + 64));
  v8 = [TSTCellStyle alloc];
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v8, v9, *(a1 + 40), 0, v6, 0);
  objc_msgSend_addStyle_withIdentifier_(*(a1 + 48), v11, isVariation, v32);
  if ((a2 - 15) >= 3)
  {
    v12 = objc_alloc(MEMORY[0x277D80EC8]);
    v13 = *(a1 + 40);
    v17 = objc_msgSend_defaultPropertyMap(MEMORY[0x277D80EC8], v14, v15, v16);
    v19 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v12, v18, v13, 0, v17, 0);

    v22 = objc_msgSend_defaultValueForProperty_(MEMORY[0x277D80EC8], v20, 16, v21);
    objc_msgSend_setValue_forProperty_(v19, v23, v22, 16);

    objc_msgSend_setCGFloatValue_forProperty_(v19, v24, 17, v25, *(a1 + 72));
    v29 = *(a1 + 64);
    if ((v29 | 2) == 6)
    {
      if (a2 != 1)
      {
        goto LABEL_8;
      }
    }

    else if (a2 != 1 || v29 != 2)
    {
      goto LABEL_8;
    }

    v30 = objc_msgSend_whiteColor(MEMORY[0x277D801F8], v26, v27, v28);
    objc_msgSend_setValue_forProperty_(v19, v31, v30, 48);

LABEL_8:
    objc_msgSend_addStyle_withIdentifier_(*(a1 + 48), v26, v19, v5);
  }
}

void sub_221220FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  _Block_object_dispose(&a18, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221221094(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2212210AC(uint64_t a1, const char *a2)
{
  v15 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, a2, *(a1 + 48), a2);
  objc_opt_class();
  v6 = objc_msgSend_cascadedStyleWithIdentifier_(*(a1 + 32), v4, v15, v5);
  v7 = TSUCheckedDynamicCast();

  if (v7)
  {
    objc_msgSend_setCellStyle_forTableStyleArea_(*(*(*(a1 + 40) + 8) + 40), v8, v7, a2);
  }

  if ((a2 - 15) >= 3)
  {
    v9 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v8, *(a1 + 48), a2);
    objc_opt_class();
    v12 = objc_msgSend_cascadedStyleWithIdentifier_(*(a1 + 32), v10, v9, v11);
    v13 = TSUCheckedDynamicCast();

    if (v13)
    {
      objc_msgSend_setTextStyle_forTableStyleArea_(*(*(*(a1 + 40) + 8) + 40), v14, v13, a2);
    }
  }
}

void sub_221221DB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v11 = objc_msgSend_cellStyleForTableStyleArea_(*(a1 + 32), a2, a2, a4);
  v7 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v6, *(a1 + 48), a2);
  objc_opt_class();
  v8 = (*(*(a1 + 40) + 16))();
  v9 = TSUCheckedDynamicCast();

  objc_msgSend_setCellStyle_forTableStyleArea_(*(a1 + 32), v10, v9, a2);
}

void sub_221221ED4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v11 = objc_msgSend_textStyleForTableStyleArea_(*(a1 + 32), a2, a2, a4);
  v7 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v6, *(a1 + 48), a2);
  objc_opt_class();
  v8 = (*(*(a1 + 40) + 16))();
  v9 = TSUCheckedDynamicCast();

  objc_msgSend_setTextStyle_forTableStyleArea_(*(a1 + 32), v10, v9, a2);
}

id sub_221222128(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

void sub_2212223A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_22122243C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_msgSend_stylesheet(*(a1 + 32), a2, a3, a4);
  v6 = objc_msgSend_variationOfStyle_propertyMap_(v9, v5, *(a1 + 32), *(a1 + 40));
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_22122258C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_221222660(void *a1, unint64_t a2)
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

    sub_22122B648(a1, v5);
  }
}

void sub_2212226E8(void *a1, unint64_t a2)
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

    sub_22122B748(a1, v5);
  }
}

void sub_2212235A8(_Unwind_Exception *a1)
{
  *(v7 - 120) = v6;

  _Unwind_Resume(a1);
}

BOOL sub_2212236D4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a1 + 8) - v2;
  v5 = *a2;
  return v4 == *(a2 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

void sub_2212237C0()
{
  v0 = objc_opt_class();
  v18 = objc_msgSend_properties(v0, v1, v2, v3);
  v6 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], v4, 790, v5, 792, 794, 798, 799, 0);
  v10 = objc_msgSend_mutableCopy(v18, v7, v8, v9);
  objc_msgSend_removeProperties_(v10, v11, v6, v12);
  v16 = objc_msgSend_copy(v10, v13, v14, v15);
  v17 = qword_27CFB52D0;
  qword_27CFB52D0 = v16;
}

void sub_2212239A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2212239D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v13 = a2;
  v10 = objc_msgSend_styleForStyleNetworkIndex_(*(a1 + 32), v8, a4, v9);
  v11 = *(*(a1 + 48) + 8);
  if (*(v11 + 24) == 1)
  {
    v12 = (*(*(a1 + 40) + 16))();
    v11 = *(*(a1 + 48) + 8);
  }

  else
  {
    v12 = 0;
  }

  *(v11 + 24) = v12;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a5 = 1;
  }
}

void sub_221224320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221224358(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v16 = v7;
  v9 = v8;
  if ((objc_msgSend_containsStyle_(v9, v10, v16, v11) & 1) == 0)
  {

    goto LABEL_5;
  }

  v15 = objc_msgSend_stylesheet(v16, v12, v13, v14);

  if (v15 != v9)
  {
LABEL_5:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a5 = 1;
  }
}

void sub_221224F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, ...)
{
  va_start(va, a22);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221224FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 + 32;
  v5 = *(a1 + 32);
  v6 = *(v7 + 8);
  v8 = *(v5[12] + 8 * a2);
  v9 = objc_msgSend_presetID(v5, a2, a3, a4);
  v11 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v10, v9, a2);
  (*(v6 + 16))(v6, v8);
}

void sub_2212250B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 + 32;
  v5 = *(a1 + 32);
  v6 = *(v7 + 8);
  v8 = *(v5[15] + 8 * a2);
  v9 = objc_msgSend_presetID(v5, a2, a3, a4);
  v11 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v10, v9, a2);
  (*(v6 + 16))(v6, v8);
}

void sub_2212255B4(void *a1, uint64_t a2)
{
  v2 = *(*(a1[4] + 96) + 8 * a2);
  if (v2)
  {
    v3 = a1[5];
    v5 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, a2, a1[6], a2);
    objc_msgSend_setObject_forKey_(v3, v4, v2, v5);
  }
}

void sub_221225658(void *a1, uint64_t a2)
{
  v2 = *(*(a1[4] + 120) + 8 * a2);
  if (v2)
  {
    v3 = a1[5];
    v5 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, a2, a1[6], a2);
    objc_msgSend_setObject_forKey_(v3, v4, v2, v5);
  }
}

void sub_221225D04(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v10 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, a2, a1[6], a2);
  v7 = objc_msgSend_objectForKey_(v4, v5, v10, v6);
  v8 = *(a1[4] + 96);
  v9 = *(v8 + 8 * a2);
  *(v8 + 8 * a2) = v7;
}

void sub_221225DA8(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v10 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, a2, a1[6], a2);
  v7 = objc_msgSend_objectForKey_(v4, v5, v10, v6);
  v8 = *(a1[4] + 120);
  v9 = *(v8 + 8 * a2);
  *(v8 + 8 * a2) = v7;
}

void sub_221226FEC(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (*(v6 + 72))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTTableStyleNetwork loadFromArchive:unarchiver:]_block_invoke", v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1267, 0, "_tableStyle must be nil when loading from an archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    v6 = *(a1 + 32);
  }

  v16 = *(v6 + 72);
  *(v6 + 72) = v5;
}

void sub_221227390(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (*(v6 + 80))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTTableStyleNetwork loadFromArchive:unarchiver:]_block_invoke_30", v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1407, 0, "_tableNameStyle must be nil when loading from an archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    v6 = *(a1 + 32);
  }

  v16 = *(v6 + 80);
  *(v6 + 80) = v5;
}

void sub_221227494(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (*(v6 + 88))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTTableStyleNetwork loadFromArchive:unarchiver:]_block_invoke_31", v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1413, 0, "_tableNameShapeStyle must be nil when loading from an archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    v6 = *(a1 + 32);
  }

  v16 = *(v6 + 88);
  *(v6 + 88) = v5;
}

uint64_t sub_2212275E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_generateCategoryStylesConnectedToStylesheet_(*(a1 + 32), a2, 1, a4);
  v7 = *(a1 + 32);

  return objc_msgSend_generatePivotStylesConnectedToStylesheet_(v7, v5, 1, v6);
}

void sub_221228C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_2212290B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_221229694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14)
{
  if (v20 != a14)
  {
  }

  _Unwind_Resume(a1);
}

void sub_221229A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v13 != v12)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t sub_221229CA8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
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

void sub_22122B648(uint64_t a1, unint64_t a2)
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

void sub_22122B734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22122B748(uint64_t a1, unint64_t a2)
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

void sub_22122B834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22122B8B4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v5;
  v6 = *(a1 + 24) & 0xFE | *a3 & 1;
  *(a1 + 24) = v6;
  v7 = v6 & 0xFFFFFFFD | (2 * ((*a3 >> 1) & 1));
  *(a1 + 24) = v7;
  v8 = v7 & 0xFFFFFFFB | (4 * ((*a3 >> 2) & 1));
  *(a1 + 24) = v8;
  *(a1 + 24) = v8 & 0xF7 | *a3 & 8;
  return a1;
}

uint64_t sub_22122B930(uint64_t a1, _OWORD *a2, void *a3, _BYTE *a4)
{
  *a1 = a3;
  *(a1 + 8) = *a2;
  v7 = *(a1 + 24) & 0xFE | *a4 & 1;
  *(a1 + 24) = v7;
  v8 = v7 & 0xFFFFFFFD | (2 * ((*a4 >> 1) & 1));
  *(a1 + 24) = v8;
  v9 = v8 & 0xFFFFFFFB | (4 * ((*a4 >> 2) & 1));
  *(a1 + 24) = v9;
  *(a1 + 24) = v9 & 0xF7 | *a4 & 8;
  return a1;
}

void TSCEASTNodeArray::TSCEASTNodeArray(TSCEASTNodeArray *this, unint64_t a2, uint64_t a3, uint64_t a4)
{
  this->var0 = 0;
  this->var1 = 0;
  this->var2 = 0;
  this->var3 = 1;
  TSCEASTNodeArray::resizeCapacity(this, a2, a3, a4);
}

{
  this->var0 = 0;
  this->var1 = 0;
  this->var2 = 0;
  this->var3 = 1;
  TSCEASTNodeArray::resizeCapacity(this, a2, a3, a4);
}

void TSCEASTNodeArray::resizeCapacity(TSCEASTNodeArray *this, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!this->var0)
  {
    v6 = a2 <= 8 ? 8 : a2;
    this->var1 = 0;
    this->var2 = v6;
    v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
    this->var0 = v7;
    if (!v7)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArray::resizeCapacity(size_t)", a4);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.mm", v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 177, 0, "No nodeArray allocated.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    }
  }

  var1 = this->var1;
  var2 = this->var2;
  if (var2 < var1)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArray::resizeCapacity(size_t)", a4);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.mm", v22);
    v27 = TSCEASTNodeArray::codeString(this, v24, v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v28, v20, v23, 180, 0, "You are going to crash very soon. You have overwritten your node array: %{public}@", v27);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
    var1 = this->var1;
    var2 = this->var2;
  }

  if (var2 - var1 < a2)
  {
    v32 = (var2 + a2);
    v33 = 2 * var2;
    v34 = var2 == 0;
    v35 = 8;
    if (!v34)
    {
      v35 = v33;
    }

    if (v32 > v35)
    {
      v35 = v32;
    }

    v36 = (v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = malloc_type_malloc(v36, 0x100004077774924uLL);
    memcpy(v37, this->var0, this->var1);
    free(this->var0);
    this->var0 = v37;
    this->var2 = v36;
    if (v36 - this->var1 < a2)
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "void TSCEASTNodeArray::resizeCapacity(size_t)", v39);
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.mm", v43);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v45, v41, v44, 197, 0, "resize didn't grow array enough");

      v49 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v49, v46, v47, v48);
    }
  }
}

void TSCEASTNodeArray::TSCEASTNodeArray(TSCEASTNodeArray *this, char *a2, unint64_t a3)
{
  this->var0 = a2;
  this->var1 = a3;
  this->var2 = a3;
  this->var3 = 0;
}

{
  this->var0 = a2;
  this->var1 = a3;
  this->var2 = a3;
  this->var3 = 0;
}

void TSCEASTNodeArray::~TSCEASTNodeArray(TSCEASTNodeArray *this)
{
  if (this->var3)
  {
    free(this->var0);
  }
}

{
  if (this->var3)
  {
    free(this->var0);
  }
}

void TSCEASTNodeArray::TSCEASTNodeArray(TSCEASTNodeArray *this, const TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4)
{
  this->var0 = 0;
  this->var1 = 0;
  this->var2 = 0;
  this->var3 = 1;
  TSCEASTNodeArray::resizeCapacity(this, a2->var2, a3, a4);
  TSCEASTNodeArray::appendNodeArrayContents(this, a2, v6, v7);
}

{
  this->var0 = 0;
  this->var1 = 0;
  this->var2 = 0;
  this->var3 = 1;
  TSCEASTNodeArray::resizeCapacity(this, a2->var2, a3, a4);
  TSCEASTNodeArray::appendNodeArrayContents(this, a2, v6, v7);
}

TSCEASTNodeArray *TSCEASTNodeArray::appendNodeArrayContents(TSCEASTNodeArray *this, const TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a2->var0)
    {
      v5 = this;
      v6 = a2->var1 + this->var1;
      TSCEASTNodeArray::resizeCapacity(this, v6, a3, a4);
      this = memcpy(&v5->var0[v5->var1], a2->var0, a2->var1);
      v5->var1 = v6;
    }
  }

  return this;
}

TSCEASTNodeArray *TSCEASTNodeArray::copyNodeArray(TSCEASTNodeArray *this, const TSCEASTNodeArray *a2)
{
  if (this)
  {
    TSCEASTNodeArray::deepCopy(this);
  }

  return this;
}

TSCEASTNodeArray *TSCEASTNodeArray::freeNodeArray(TSCEASTNodeArray *this, TSCEASTNodeArray *a2)
{
  if (this)
  {
    if (this->var3)
    {
      free(this->var0);
    }

    JUMPOUT(0x223DA1450);
  }

  return this;
}

id TSCEASTNodeArray::codeString(TSCEASTNodeArray *this, const char *a2, uint64_t a3, uint64_t a4)
{
  var1 = this->var1;
  if (this->var2 >= var1)
  {
    var2 = this->var1;
  }

  else
  {
    var2 = this->var2;
  }

  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], a2, @"uint8_t _nodeArray[%d] = {\n\t", a4, var1);
  if (var2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      objc_msgSend_appendFormat_(v9, v7, @"%d, ", v8, this->var0[v10]);
      if (v11 >= 20)
      {
        objc_msgSend_appendFormat_(v9, v7, @"\n\t", v8);
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      ++v10;
    }

    while (var2 != v10);
  }

  objc_msgSend_appendFormat_(v9, v7, @" };\n", v8);
  if (this->var1 > this->var2)
  {
    objc_msgSend_appendFormat_(v9, v12, @"(limited by _capacity of %lu)\n", v13, this->var2);
  }

  return v9;
}

void TSCEASTNodeArray::writeString(TSCEASTNodeArray *this, id a2)
{
  v4 = a2;
  v8 = objc_msgSend_UTF8String(a2, v5, v6, v7);
  v11 = v8;
  if (v8)
  {
    v12 = strlen(v8) + 1;
  }

  else
  {
    v12 = 1;
  }

  TSCEASTNodeArray::resizeCapacity(this, v12 + 8, v9, v10);
  if (this->var0)
  {
    *&this->var0[this->var1] = v12;
    v15 = this->var1 + 8;
    this->var1 = v15;
    if (v11)
    {
      memcpy(&this->var0[v15], v11, v12);
      this->var1 += v12;
    }

    else
    {

      TSCEASTNodeArray::writeUInt8(this, 0, v13, v14);
    }
  }
}

void TSCEASTNodeArray::writeUInt8(TSCEASTNodeArray *this, char a2, uint64_t a3, uint64_t a4)
{
  var1 = this->var1;
  if (this->var2 == var1 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 1uLL, a3, a4);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  var0[var1] = a2;
  ++this->var1;
}

void TSCEASTNodeArray::writeUInt16(TSCEASTNodeArray *this, __int16 a2, uint64_t a3, uint64_t a4)
{
  var1 = this->var1;
  if (this->var2 - var1 < 2 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 2uLL, a3, a4);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  *&var0[var1] = a2;
  this->var1 += 2;
}

void TSCEASTNodeArray::writeUInt32(TSCEASTNodeArray *this, int a2, uint64_t a3, uint64_t a4)
{
  var1 = this->var1;
  if (this->var2 - var1 < 4 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 4uLL, a3, a4);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  *&var0[var1] = a2;
  this->var1 += 4;
}

void TSCEASTNodeArray::writeUInt64(TSCEASTNodeArray *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  var1 = this->var1;
  if (this->var2 - var1 < 8 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 8uLL, a3, a4);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  *&var0[var1] = a2;
  this->var1 += 8;
}

void TSCEASTNodeArray::writeDouble(TSCEASTNodeArray *this, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  var1 = this->var1;
  if (this->var2 - var1 < 8 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 8uLL, a4, a5);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  *&var0[var1] = a2;
  this->var1 += 8;
}

void TSCEASTNodeArray::writeUidList(TSCEASTNodeArray *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[1] - *a2;
  TSCEASTNodeArray::writeUInt32(a1, v6 >> 4, a3, a4);
  if ((v6 >> 4))
  {
    v9 = 0;
    v10 = v6 & 0xFFFFFFFF0;
    do
    {
      sub_22122C498(a1, (*a2 + v9), v7, v8);
      v9 += 16;
    }

    while (v10 != v9);
  }
}

__n128 sub_22122C498(TSCEASTNodeArray *this, __n128 *a2, uint64_t a3, uint64_t a4)
{
  if (!this->var0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArray::write(const T &) [T = TSKUIDStruct]", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.h", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 171, 0, "invalid nil value for '%{public}s'", "_nodeArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  var1 = this->var1;
  if (this->var2 - var1 < 0x10 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 0x10uLL, a3, a4);
    var0 = this->var0;
    if (!this->var0)
    {
      return result;
    }

    var1 = this->var1;
  }

  result = *a2;
  *&var0[var1] = *a2;
  this->var1 += 16;
  return result;
}

void TSCEASTNodeArray::writeUidSet(TSCEASTNodeArray *this, TSCEUIDSet *a2)
{
  v3 = a2;
  v7 = objc_msgSend_count(v3, v4, v5, v6);
  TSCEASTNodeArray::writeUInt32(this, v7, v8, v9);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22122C65C;
  v12[3] = &unk_27845D920;
  v12[4] = this;
  objc_msgSend_foreachUuid_(v3, v10, v12, v11);
}

double sub_22122C65C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5.n128_u64[0] = a2;
  v5.n128_u64[1] = a3;
  *&result = sub_22122C498(*(a1 + 32), &v5, a3, a4).n128_u64[0];
  return result;
}

void TSCEASTNodeArray::writeUidTract(TSCEASTNodeArray *this, TSCEUndoTract *a2)
{
  v33 = a2;
  v6 = objc_msgSend_columnUids(v33, v3, v4, v5);
  TSCEASTNodeArray::writeUidList(this, v6, v7, v8);
  v12 = objc_msgSend_rowUids(v33, v9, v10, v11);
  TSCEASTNodeArray::writeUidList(this, v12, v13, v14);
  isRangeRef = objc_msgSend_isRangeRef(v33, v15, v16, v17);
  TSCEASTNodeArray::writeUInt8(this, isRangeRef, v19, v20);
  v24 = objc_msgSend_preserveRectangularRange(v33, v21, v22, v23);
  TSCEASTNodeArray::writeUInt8(this, v24, v25, v26);
  v30 = objc_msgSend_purpose(v33, v27, v28, v29);
  TSCEASTNodeArray::writeUInt8(this, v30, v31, v32);
}

void TSCEASTNodeArray::writeUidTractList(TSCEASTNodeArray *this, TSCEUndoTractList *a2)
{
  v17 = a2;
  v6 = objc_msgSend_tractCount(v17, v3, v4, v5);
  TSCEASTNodeArray::writeUInt8(this, v6, v7, v8);
  if (v6)
  {
    v12 = 0;
    do
    {
      v13 = objc_msgSend_uidTractAtIndex_(v17, v9, v12, v11);
      TSCEASTNodeArray::writeUidTract(this, v13);

      ++v12;
    }

    while (v6 > v12);
  }

  v14 = objc_msgSend_preserveFlags(v17, v9, v10, v11);
  TSCEASTNodeArray::writeUInt8(this, v14, v15, v16);
}

uint64_t TSCEASTNodeArray::writeIndexSet(TSCEASTNodeArray *this, const TSUIndexSet *a2, uint64_t a3, uint64_t a4)
{
  if (*a2)
  {
    v4 = 0;
  }

  else if ((*a2 & 2) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a2->_multipleRanges + 2);
  }

  TSCEASTNodeArray::writeUInt32(this, v4, a3, a4);
  return TSUIndexSet::enumerateRangesUsingBlock();
}

void sub_22122C8C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  v8 = a2[1];
  v9 = v5;
  sub_22122C908(v4, &v9, a3, a4);
  sub_22122C908(v4, &v8, v6, v7);
}

void sub_22122C908(TSCEASTNodeArray *this, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!this->var0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArray::write(const T &) [T = int]", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.h", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 171, 0, "invalid nil value for '%{public}s'", "_nodeArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  var1 = this->var1;
  if (this->var2 - var1 < 4 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 4uLL, a3, a4);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  *&var0[var1] = *a2;
  this->var1 += 4;
}

void TSCEASTNodeArray::writeRelativeTractRef(TSCEASTNodeArray *this, TSCEASTRefFlags a2, TSCEASTColonTractFlags a3, TSCERelativeTractRef *a4)
{
  v7 = a4;
  v11 = v7;
  if (v7)
  {
    objc_msgSend_verifySpanningSettings(v7, v8, v9, v10);
    TSCEASTNodeArray::writeUInt8(this, a3._flags, v12, v13);
    if (a2._flags)
    {
      v35.n128_u64[0] = objc_msgSend_tableUID(v11, v14, v15, v16);
      v35.n128_u64[1] = v18;
      *&v17 = sub_22122C498(this, &v35, v19, v20).n128_u64[0];
    }

    v21 = a2._flags & 0xC;
    if (v21 == 4 || (v22 = objc_msgSend_relativeColumns(v11, v14, v15, v16, v17), TSCEASTNodeArray::writeIndexSet(this, v22, v23, v24), v21 != 8))
    {
      v26 = objc_msgSend_relativeRows(v11, v14, v15, v16, v17);
      TSCEASTNodeArray::writeIndexSet(this, v26, v27, v28);
      if (v21 == 4)
      {
LABEL_10:
        v32 = objc_msgSend_rows(v11, v14, v15, v16);
        TSCEASTNodeArray::writeIndexSet(this, v32, v33, v34);
        goto LABEL_11;
      }

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v29 = objc_msgSend_columns(v11, v14, v15, v16);
    TSCEASTNodeArray::writeIndexSet(this, v29, v30, v31);
    if ((v25 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
}

uint64_t TSCEASTNodeArray::nodeTagAtOffset(TSCEASTNodeArray *this, unint64_t a2)
{
  if (this->var1 <= a2)
  {
    return 0;
  }

  else
  {
    return this->var0[a2];
  }
}

void *TSCEASTNodeArray::appendAsThunk(TSCEASTNodeArray *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v7 = *(a2 + 8) + 9;
  TSCEASTNodeArray::resizeCapacity(a1, v7, a3, a4);
  a1->var0[a1->var1] = v4;
  *&a1->var0[a1->var1 + 1] = *(a2 + 8);
  result = memcpy(&a1->var0[a1->var1 + 9], *a2, *(a2 + 8));
  a1->var1 += v7;
  return result;
}

unint64_t TSCEASTNodeArray::appendReference(TSCEASTNodeArray *this, const TSCECellRef *a2, BOOL a3, const TSUPreserveFlags *a4)
{
  v6 = *&a4->_flags;
  lower = a2->_tableUID._lower;
  upper = a2->_tableUID._upper;
  coordinate = a2->coordinate;
  v11 = *&a4[8]._flags != lower || *&a4[16]._flags != upper;
  HIBYTE(v19._upper) = a3;
  v12 = (&v19._upper + 7);
  RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(v6, coordinate, v12, a4);
  v15 = a2->_tableUID._lower;
  v16 = a2->_tableUID._upper;
  if (!v11)
  {
    v15 = 0;
    v16 = 0;
  }

  v18.n128_u64[0] = v15;
  v18.n128_u64[1] = v16;
  v19._lower = RelativeCellCoordinateFromAbsoluteCoordinates;
  return TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(this, &v18, &v19, (&v19._upper + 7), 0, v14);
}

uint64_t TSCEASTNodeArray::appendRangeReference(TSCEASTNodeArray *this, const TSCERangeRef *a2, unsigned int a3, const TSUPreserveFlags *a4)
{
  v13.coordinate = a2->range._topLeft;
  v13._tableUID = a2->_tableUID;
  result = TSCEASTNodeArray::appendReference(this, &v13, a3 & 3, a4);
  bottomRight = a2->range._bottomRight;
  if (*&a2->range._topLeft != bottomRight.row || ((*&bottomRight ^ *&a2->range._topLeft) & 0x101FFFF00000000) != 0)
  {
    v13 = *&a2->range._bottomRight.row;
    TSCEASTNodeArray::appendReference(this, &v13, (a3 >> 2) & 3, a4);

    return TSCEASTBinaryElement::appendBinaryElement(this, 28, v11, v12);
  }

  return result;
}

BOOL TSCEASTNodeArray::containsTag(TSCEASTNodeArray *a1, char a2)
{
  memset(v6, 0, sizeof(v6));
  v7 = 1065353216;
  v5 = a2;
  sub_22122DC98(v6, &v5, &v5);
  v3 = TSCEASTNodeArray::containsAnyOfTags(a1, v6);
  sub_2210BDEC0(v6);
  return v3;
}

void sub_22122CD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2210BDEC0(va);
  _Unwind_Resume(a1);
}

BOOL TSCEASTNodeArray::containsAnyOfTags(TSCEASTNodeArray *a1, void *a2)
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v9);
  sub_22134B2F4(v8, a1, &v9);
  v4 = sub_22134B3CC(v8);
  v5 = 0;
  while (v4 && !v5)
  {
    v7 = TSCEASTElement::tag(v4, v8);
    v5 = sub_22122DECC(a2, &v7) != 0;
    v4 = sub_22134B3CC(v8);
  }

  sub_22134B390(v8);
  return v5;
}

void sub_22122CE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22134B390(va);
  _Unwind_Resume(a1);
}

__CFString *TSCEASTNodeArray::description(TSCEASTNodeArray *this)
{
  if (this->var1)
  {
    v2 = [TSCEFormulaObject alloc];
    v5 = objc_msgSend_initWithNodeArray_(v2, v3, this, v4);
    v8 = objc_msgSend_descriptionForLevel_(v5, v6, 3, v7);
  }

  else
  {
    v8 = @"empty nodeArray";
  }

  return v8;
}

void TSCEASTNodeArrayReader::pushEndPoint(TSCEASTNodeArrayReader *this, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 2) < a2)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArrayReader::pushEndPoint(size_t)", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 453, 0, "We shouldn't be making the array seem larger when pushing a new end-point");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  v15 = *(this + 3);
  if (!v15)
  {
    operator new();
  }

  v17 = v15[1];
  v16 = v15[2];
  if (v17 >= v16)
  {
    v19 = *v15;
    v20 = v17 - *v15;
    v21 = v20 >> 3;
    v22 = (v20 >> 3) + 1;
    if (v22 >> 61)
    {
      sub_22107C148();
    }

    v23 = v16 - v19;
    if (v23 >> 2 > v22)
    {
      v22 = v23 >> 2;
    }

    v24 = v23 >= 0x7FFFFFFFFFFFFFF8;
    v25 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v24)
    {
      v25 = v22;
    }

    if (v25)
    {
      sub_2210874C4(v15, v25);
    }

    *(8 * v21) = a2;
    v18 = 8 * v21 + 8;
    memcpy(0, v19, v20);
    v26 = *v15;
    *v15 = 0;
    v15[1] = v18;
    v15[2] = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v17 = a2;
    v18 = (v17 + 1);
  }

  v15[1] = v18;
}

void *TSCEASTNodeArrayReader::popEndPoint(void *this)
{
  v1 = this[3];
  if (!v1 || (v2 = v1[1], *v1 == v2))
  {
    this[1] = this[2] + 1;
  }

  else
  {
    v1[1] = v2 - 8;
  }

  return this;
}

void TSCEASTNodeArrayReader::readUidList(TSCEASTNodeArrayReader *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 1);
  v4 = *(**this + v3);
  *(this + 1) = v3 + 4;
  if (v4)
  {
    v6 = 0;
    do
    {
      v7 = *(this + 1);
      v8 = *(**this + v7);
      *(this + 1) = v7 + 16;
      v9 = a2[2];
      if (v6 >= v9)
      {
        v10 = *a2;
        v11 = v6 - *a2;
        v12 = v11 >> 4;
        v13 = (v11 >> 4) + 1;
        if (v13 >> 60)
        {
          sub_22107C148();
        }

        v14 = v9 - v10;
        if (v14 >> 3 > v13)
        {
          v13 = v14 >> 3;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF0)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          sub_221086F74(a2, v15);
        }

        *(16 * v12) = v8;
        v6 = (16 * v12 + 16);
        memcpy(0, v10, v11);
        v16 = *a2;
        *a2 = 0;
        a2[1] = v6;
        a2[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v6 = v8;
        v6 += 16;
      }

      a2[1] = v6;
      --v4;
    }

    while (v4);
  }
}

void sub_22122D1DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **TSCEASTNodeArrayReader::skipUndoTract(uint64_t **this)
{
  v1 = **this;
  v2 = (&this[1][2 * *(this[1] + v1)] + 4);
  this[1] = v2;
  this[1] = (&v2[2 * *(v2 + v1)] + 7);
  return this;
}

TSCEMutableUIDSet *TSCEASTNodeArrayReader::readUidSet(TSCEASTNodeArrayReader *this)
{
  v3 = objc_opt_new();
  v4 = *(this + 1);
  v5 = *(**this + v4);
  for (*(this + 1) = v4 + 4; v5; --v5)
  {
    v6 = *(this + 1);
    v7 = (**this + v6);
    v8 = *v7;
    v9 = v7[1];
    *(this + 1) = v6 + 16;
    objc_msgSend_addUUID_(v3, v2, v8, v9);
  }

  return v3;
}

TSCEUndoTractList *TSCEASTNodeArrayReader::readUndoTractList(uint64_t **this)
{
  v4 = objc_opt_new();
  v5 = this[1];
  v6 = **this;
  v7 = *(v5 + v6);
  v8 = (v5 + 1);
  this[1] = (v5 + 1);
  if (v7)
  {
    for (i = 0; i < v7; ++i)
    {
      v10 = objc_opt_new();
      TSCEASTNodeArrayReader::readUidList(this, &v37);
      v14 = objc_msgSend_columnUids(v10, v11, v12, v13);
      v15 = *v14;
      if (*v14)
      {
        *(v14 + 8) = v15;
        operator delete(v15);
        *v14 = 0;
        *(v14 + 8) = 0;
        *(v14 + 16) = 0;
      }

      *v14 = v37;
      *(v14 + 16) = v38;
      TSCEASTNodeArrayReader::readUidList(this, &v37);
      v21 = objc_msgSend_rowUids(v10, v16, v17, v18);
      v22 = *v21;
      if (*v21)
      {
        *(v21 + 8) = v22;
        operator delete(v22);
        *v21 = 0;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
      }

      *v21 = v37;
      *(v21 + 16) = v38;
      v23 = this[1];
      v24 = *(v23 + **this);
      this[1] = (v23 + 1);
      objc_msgSend_setIsRangeRef_(v10, v19, v24 == 1, v20);
      v25 = this[1];
      v26 = *(v25 + **this);
      this[1] = (v25 + 1);
      objc_msgSend_setPreserveRectangularRange_(v10, v27, v26 == 1, v28);
      v29 = this[1];
      v30 = *(v29 + **this);
      this[1] = (v29 + 1);
      objc_msgSend_setPurpose_(v10, v31, v30, v32);
      objc_msgSend_appendUidTract_(v4, v33, v10, v34);
    }

    v8 = this[1];
    v6 = **this;
  }

  v35 = *(v8 + v6);
  this[1] = (v8 + 1);
  objc_msgSend_setPreserveFlags_(v4, v2, v35, v3);

  return v4;
}