id sub_1000011A0(dispatch_once_t *predicate)
{
  if (*predicate != -1)
  {
    dispatch_once_f(predicate, predicate, sub_10006A158);
  }

  v2 = predicate[2];

  return v2;
}

uint64_t sub_100001200(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001210(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001220(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001230(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100001394()
{
  if (qword_1000B2B90 != -1)
  {
    dispatch_once(&qword_1000B2B90, &stru_1000A8E90);
  }

  v1 = qword_1000B2B88;

  return v1;
}

void sub_100006A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_10002BEDC(&STACK[0x280]);
  STACK[0x280] = &STACK[0x260];
  sub_10000AD64(&STACK[0x280]);
  sub_10000B0E8(STACK[0x230]);
  sub_10000B144(&a43);
  _Unwind_Resume(a1);
}

void sub_100006C8C(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      sub_10002E420();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100006D60(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_100006D60(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_10001A5DC();
}

void sub_100006DA8(double *a1, double a2, double a3, double a4, double a5)
{
  v9 = a2;
  v10 = fabs(a2);
  v11 = 180.0;
  if (v10 == 180.0)
  {
    goto LABEL_2;
  }

  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v13 = fabs(v10 + -180.0);
    v11 = 180.0;
    if (v10 < 180.0)
    {
      v10 = 180.0;
    }

    if (v10 < 1.0)
    {
      v10 = 1.0;
    }

    if (v13 <= v10 * 2.22044605e-16)
    {
      goto LABEL_2;
    }
  }

  v11 = 180.0;
  if (v9 > 180.0)
  {
    v14 = fmod(v9 + 180.0, 360.0);
    v9 = v14 + -180.0;
    if (v14 + -180.0 != -180.0)
    {
      if (COERCE_UNSIGNED_INT64(fabs(v14 + -180.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_3;
      }

      v15 = fabs(v9);
      v11 = 180.0;
      v16 = fabs(v9 + 180.0);
      if (v15 < 180.0)
      {
        v15 = 180.0;
      }

      if (v15 < 1.0)
      {
        v15 = 1.0;
      }

      if (v16 > v15 * 2.22044605e-16)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_2;
  }

  if (v9 < -180.0)
  {
    v11 = fmod(v9 + -180.0, 360.0) + 180.0;
LABEL_2:
    v9 = v11;
  }

LABEL_3:
  v12 = fabs(a3);
  if (v12 == 90.0)
  {
    goto LABEL_4;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v17 = fabs(v12 + -90.0);
    if (v12 >= 90.0)
    {
      v18 = v12;
    }

    else
    {
      v18 = 90.0;
    }

    if (v18 < 1.0)
    {
      v18 = 1.0;
    }

    if (v17 <= v18 * 2.22044605e-16)
    {
LABEL_4:
      v9 = 0.0;
    }
  }

  v19 = fabs(a4);
  v20 = 180.0;
  if (v19 == 180.0)
  {
    goto LABEL_28;
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v22 = fabs(v19 + -180.0);
    v20 = 180.0;
    if (v19 < 180.0)
    {
      v19 = 180.0;
    }

    if (v19 < 1.0)
    {
      v19 = 1.0;
    }

    if (v22 <= v19 * 2.22044605e-16)
    {
      goto LABEL_28;
    }
  }

  v20 = 180.0;
  if (a4 <= 180.0)
  {
    if (a4 >= -180.0)
    {
      goto LABEL_29;
    }

    v20 = fmod(a4 + -180.0, 360.0) + 180.0;
    goto LABEL_28;
  }

  v23 = fmod(a4 + 180.0, 360.0);
  a4 = v23 + -180.0;
  if (v23 + -180.0 == -180.0)
  {
    goto LABEL_28;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v23 + -180.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v24 = fabs(a4);
    v20 = 180.0;
    v25 = fabs(a4 + 180.0);
    if (v24 < 180.0)
    {
      v24 = 180.0;
    }

    if (v24 < 1.0)
    {
      v24 = 1.0;
    }

    if (v25 <= v24 * 2.22044605e-16)
    {
LABEL_28:
      a4 = v20;
    }
  }

LABEL_29:
  v21 = fabs(a5);
  if (v21 == 90.0)
  {
    goto LABEL_30;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v26 = fabs(v21 + -90.0);
    if (v21 >= 90.0)
    {
      v27 = v21;
    }

    else
    {
      v27 = 90.0;
    }

    if (v27 < 1.0)
    {
      v27 = 1.0;
    }

    if (v26 <= v27 * 2.22044605e-16)
    {
LABEL_30:
      a4 = 0.0;
    }
  }

  if (v12 == 90.0)
  {
    v28 = 1;
  }

  else if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v29 = fabs(v12 + -90.0);
    if (v12 >= 90.0)
    {
      v30 = v12;
    }

    else
    {
      v30 = 90.0;
    }

    if (v30 < 1.0)
    {
      v30 = 1.0;
    }

    v28 = v29 <= v30 * 2.22044605e-16;
  }

  else
  {
    v28 = 0;
  }

  if (v21 == 90.0)
  {
    v31 = 1;
  }

  else
  {
    if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      LOBYTE(v31) = 0;
      v32 = !v28;
      LOBYTE(v33) = 1;
      goto LABEL_74;
    }

    v34 = fabs(v21 + -90.0);
    if (v21 < 90.0)
    {
      v21 = 90.0;
    }

    if (v21 < 1.0)
    {
      v21 = 1.0;
    }

    v31 = v34 <= v21 * 2.22044605e-16;
  }

  v32 = !v28;
  v33 = !v31;
  if (v28)
  {
    v35 = 0.0;
    v36 = 0.0;
    if (!v33)
    {
      goto LABEL_84;
    }
  }

LABEL_74:
  v37 = v32 || v31;
  if ((v28 | v33))
  {
    v38 = a4;
  }

  else
  {
    v38 = v9;
  }

  if (v37)
  {
    v36 = v38;
  }

  else
  {
    v36 = a4;
  }

  if (v37)
  {
    v35 = v9;
  }

  else
  {
    v35 = a4;
  }

  if (v35 == v36)
  {
LABEL_84:
    v39 = v36;
    v40 = v35;
    v36 = v35;
    if (a3 <= a5)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  if (v35 <= v36)
  {
    v41 = a3;
    v40 = v36;
    v36 = v35;
  }

  else
  {
    v41 = a5;
    v40 = v35;
    a5 = a3;
  }

  if (vabdd_f64(v36, v40) <= 180.0)
  {
    a3 = v41;
    v39 = v40;
    goto LABEL_96;
  }

  v39 = v36 + 360.0;
  a3 = v41;
LABEL_95:
  v42 = a3;
  a3 = a5;
  a5 = v42;
  v36 = v40;
LABEL_96:
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v70 = v36;
    v71 = __cxa_guard_acquire(&qword_1000B2BA0);
    v36 = v70;
    if (v71)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      v36 = v70;
    }
  }

  v43 = *&qword_1000B2B98;
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v72 = v36;
    v73 = __cxa_guard_acquire(&qword_1000B2BA0);
    v36 = v72;
    if (v73)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      v36 = v72;
    }
  }

  v44 = *&qword_1000B2B98;
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v74 = v36;
    v75 = __cxa_guard_acquire(&qword_1000B2BA0);
    v36 = v74;
    if (v75)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      v36 = v74;
    }
  }

  v45 = *&qword_1000B2B98;
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v76 = v36;
    v77 = __cxa_guard_acquire(&qword_1000B2BA0);
    v36 = v76;
    if (v77)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      v36 = v76;
    }
  }

  v83 = v39;
  v84 = v36;
  v46 = v36 * v43;
  v47 = a5 * *&qword_1000B2B98;
  v48 = __sincos_stret(v39 * v45 - v46);
  v49 = __sincos_stret(a3 * v44);
  v50 = __sincos_stret(v47);
  v51 = atan2(v48.__sinval * v50.__cosval, v48.__cosval * -(v49.__sinval * v50.__cosval) + v49.__cosval * v50.__sinval);
  v52 = atan2(v49.__cosval * v48.__sinval, v49.__cosval * v50.__sinval * v48.__cosval - v49.__sinval * v50.__cosval);
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B2BA0))
  {
    qword_1000B2B98 = 0x3F91DF46A2529D39;
    __cxa_guard_release(&qword_1000B2BA0);
  }

  v53 = *&qword_1000B2B98;
  v54 = v84;
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v78 = __cxa_guard_acquire(&qword_1000B2BA0);
    v54 = v84;
    if (v78)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      v54 = v84;
    }
  }

  if (v51 == v52)
  {
    v55 = a5;
LABEL_104:
    v56 = v39;
    goto LABEL_146;
  }

  if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v52 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v67 = fabs(v51);
    v68 = fabs(v52);
    v69 = vabdd_f64(v51, v52);
    if (v67 < v68)
    {
      v67 = v68;
    }

    if (v67 < 1.0)
    {
      v67 = 1.0;
    }

    if (v69 <= v67 * 2.22044605e-16)
    {
      v55 = a5;
      goto LABEL_104;
    }
  }

  v58 = a3 * v53;
  v59 = a5 * *&qword_1000B2B98;
  if (a3 > a5)
  {
    v60 = a5;
  }

  else
  {
    v60 = a3;
  }

  if (a3 > a5)
  {
    v55 = a3;
  }

  else
  {
    v55 = a5;
  }

  if (a3 > a5)
  {
    v61 = v51;
  }

  else
  {
    v59 = v58;
    v61 = v52;
  }

  if (a3 > a5)
  {
    v51 = v52;
  }

  v56 = v83;
  if ((atomic_load_explicit(&qword_1000B2BE0, memory_order_acquire) & 1) == 0)
  {
    v79 = v59;
    v80 = __cxa_guard_acquire(&qword_1000B2BE0);
    v54 = v84;
    v59 = v79;
    if (v80)
    {
      qword_1000B2BD8 = 0x3FF921FB54442D18;
      __cxa_guard_release(&qword_1000B2BE0);
      v54 = v84;
      v59 = v79;
    }
  }

  if (v51 >= v61)
  {
    if (v51 <= *&qword_1000B2BD8 || *&qword_1000B2BD8 <= v61)
    {
      goto LABEL_145;
    }
  }

  else if (v51 >= *&qword_1000B2BD8 || *&qword_1000B2BD8 >= v61)
  {
    goto LABEL_145;
  }

  v64 = cos(v59);
  v65 = sin(v51);
  v66 = acos(fabs(v64 * v65));
  if (a3 + a5 >= 0.0)
  {
    v54 = v84;
    if ((atomic_load_explicit(&qword_1000B2BF0, memory_order_acquire) & 1) == 0)
    {
      v82 = __cxa_guard_acquire(&qword_1000B2BF0);
      v54 = v84;
      if (v82)
      {
        qword_1000B2BE8 = 0x404CA5DC1A63C1F8;
        __cxa_guard_release(&qword_1000B2BF0);
        v54 = v84;
      }
    }

    if (v55 < v66 * *&qword_1000B2BE8)
    {
      a3 = v60;
      v55 = v66 * *&qword_1000B2BE8;
      goto LABEL_146;
    }

LABEL_145:
    a3 = v60;
    goto LABEL_146;
  }

  v54 = v84;
  if ((atomic_load_explicit(&qword_1000B2BF0, memory_order_acquire) & 1) == 0)
  {
    v81 = __cxa_guard_acquire(&qword_1000B2BF0);
    v54 = v84;
    if (v81)
    {
      qword_1000B2BE8 = 0x404CA5DC1A63C1F8;
      __cxa_guard_release(&qword_1000B2BF0);
      v54 = v84;
    }
  }

  a3 = *&qword_1000B2BE8 * -v66;
  if (v60 <= a3)
  {
    goto LABEL_145;
  }

LABEL_146:
  *a1 = v54;
  a1[1] = a3;
  a1[2] = v56;
  a1[3] = v55;
}

void sub_1000076E4(double *a1, double *a2, double *a3, double *a4, int a5)
{
  v10 = *a1;
  v11 = fabs(*a1);
  v12 = 180.0;
  if (v11 == 180.0)
  {
    goto LABEL_2;
  }

  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v20 = fabs(v11 + -180.0);
    v12 = 180.0;
    if (v11 < 180.0)
    {
      v11 = 180.0;
    }

    if (v11 < 1.0)
    {
      v11 = 1.0;
    }

    if (v20 <= v11 * 2.22044605e-16)
    {
      goto LABEL_2;
    }
  }

  v12 = 180.0;
  if (v10 > 180.0)
  {
    v21 = fmod(v10 + 180.0, 360.0) + -180.0;
    *a1 = v21;
    if (v21 != -180.0)
    {
      if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_3;
      }

      v22 = fabs(v21);
      v12 = 180.0;
      v23 = fabs(v21 + 180.0);
      if (v22 < 180.0)
      {
        v22 = 180.0;
      }

      if (v22 < 1.0)
      {
        v22 = 1.0;
      }

      if (v23 > v22 * 2.22044605e-16)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_2;
  }

  if (v10 < -180.0)
  {
    v12 = fmod(v10 + -180.0, 360.0) + 180.0;
LABEL_2:
    *a1 = v12;
  }

LABEL_3:
  v13 = *a3;
  v14 = fabs(*a3);
  v15 = 180.0;
  if (v14 == 180.0)
  {
    goto LABEL_4;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v24 = fabs(v14 + -180.0);
    v15 = 180.0;
    if (v14 < 180.0)
    {
      v14 = 180.0;
    }

    if (v14 < 1.0)
    {
      v14 = 1.0;
    }

    if (v24 <= v14 * 2.22044605e-16)
    {
      goto LABEL_4;
    }
  }

  v15 = 180.0;
  if (v13 <= 180.0)
  {
    if (v13 >= -180.0)
    {
      goto LABEL_5;
    }

    v15 = fmod(v13 + -180.0, 360.0) + 180.0;
    goto LABEL_4;
  }

  v13 = fmod(v13 + 180.0, 360.0) + -180.0;
  *a3 = v13;
  if (v13 == -180.0)
  {
    goto LABEL_4;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v25 = fabs(v13);
    v15 = 180.0;
    v26 = fabs(v13 + 180.0);
    if (v25 < 180.0)
    {
      v25 = 180.0;
    }

    if (v25 < 1.0)
    {
      v25 = 1.0;
    }

    if (v26 <= v25 * 2.22044605e-16)
    {
LABEL_4:
      *a3 = v15;
      v13 = v15;
    }
  }

LABEL_5:
  v16 = *a2;
  if (*a2 == -90.0)
  {
    goto LABEL_12;
  }

  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v27 = fabs(v16);
    v28 = fabs(v16 + 90.0);
    if (v27 < 90.0)
    {
      v27 = 90.0;
    }

    if (v27 < 1.0)
    {
      v27 = 1.0;
    }

    if (v28 <= v27 * 2.22044605e-16)
    {
LABEL_12:
      v17 = *a4;
      if (*a4 == -90.0)
      {
        goto LABEL_52;
      }

      if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v18 = fabs(v17);
        v19 = fabs(v17 + 90.0);
        if (v18 < 90.0)
        {
          v18 = 90.0;
        }

        if (v18 < 1.0)
        {
          v18 = 1.0;
        }

        if (v19 <= v18 * 2.22044605e-16)
        {
          goto LABEL_52;
        }
      }
    }
  }

  if (v16 != 90.0)
  {
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_72;
    }

    v30 = fabs(v16);
    v31 = fabs(v16 + -90.0);
    if (v30 < 90.0)
    {
      v30 = 90.0;
    }

    if (v30 < 1.0)
    {
      v30 = 1.0;
    }

    if (v31 > v30 * 2.22044605e-16)
    {
      goto LABEL_72;
    }
  }

  v29 = *a4;
  if (*a4 == 90.0)
  {
    goto LABEL_52;
  }

  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_72;
  }

  v32 = fabs(v29);
  v33 = fabs(v29 + -90.0);
  v34 = v32 >= 90.0 ? v32 : 90.0;
  if (v34 < 1.0)
  {
    v34 = 1.0;
  }

  if (v33 <= v34 * 2.22044605e-16)
  {
LABEL_52:
    *a3 = 0.0;
    *a1 = 0.0;
  }

  else
  {
LABEL_72:
    if (a5)
    {
      *a1 = -180.0;
      *a3 = 180.0;
    }

    else if (*a1 > v13)
    {
      *a3 = v13 + 360.0;
    }
  }
}

void sub_100007B10(double *a1, double *a2)
{
  v4 = a1[5];
  v5 = a1[1];
  v6 = a1;
  if (v4 < v5)
  {
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }

    v47 = fabs(v5);
    v48 = fabs(v4);
    v49 = vabdd_f64(v5, v4);
    if (v47 >= v48)
    {
      v50 = v47;
    }

    else
    {
      v50 = v48;
    }

    if (v50 < 1.0)
    {
      v50 = 1.0;
    }

    v6 = a1;
    if (v49 > v50 * 2.22044605e-16)
    {
LABEL_6:
      v6 = a1 + 4;
    }
  }

  v8 = a1[3];
  v9 = a1[7];
  v10 = a1;
  if (v8 < v9)
  {
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    v51 = fabs(v9);
    v52 = fabs(v8);
    v53 = vabdd_f64(v9, v8);
    if (v51 >= v52)
    {
      v54 = v51;
    }

    else
    {
      v54 = v52;
    }

    if (v54 < 1.0)
    {
      v54 = 1.0;
    }

    v10 = a1;
    if (v53 > v54 * 2.22044605e-16)
    {
LABEL_12:
      v10 = a1 + 4;
    }
  }

  v55 = v10;
  v12 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v60 = 0;
  v13 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v14 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v57 = v14;
  v58 = v13;
  do
  {
    v15 = *&a1[v12];
    v16 = *&a1[v12 + 2];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v15, v14), vceqq_f64(v16, v13))))) & 1) != 0 && v15.f64[1] != 90.0)
    {
      if ((*&v15.f64[1] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_28;
      }

      v17 = fabs(v15.f64[1]);
      v18 = fabs(v15.f64[1] + -90.0);
      if (v17 < 90.0)
      {
        v17 = 90.0;
      }

      if (v17 < 1.0)
      {
        v17 = 1.0;
      }

      if (v18 > v17 * 2.22044605e-16)
      {
LABEL_28:
        if (v16.f64[1] != -90.0)
        {
          if ((*&v16.f64[1] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_36;
          }

          v19 = fabs(v16.f64[1]);
          v20 = fabs(v16.f64[1] + 90.0);
          if (v19 < 90.0)
          {
            v19 = 90.0;
          }

          if (v19 < 1.0)
          {
            v19 = 1.0;
          }

          if (v20 > v19 * 2.22044605e-16)
          {
            if (v16.f64[0] <= 180.0)
            {
              goto LABEL_38;
            }

LABEL_36:
            if (v16.f64[0] == INFINITY)
            {
              goto LABEL_37;
            }

            v21 = fabs(v16.f64[0] + -180.0);
            if (v16.f64[0] >= 180.0)
            {
              v22 = a1[v12 + 2];
            }

            else
            {
              v22 = 180.0;
            }

            if (v22 < 1.0)
            {
              v22 = 1.0;
            }

            if (v21 > v22 * 2.22044605e-16)
            {
LABEL_37:
              v56 = *&a1[v12 + 2];
              *v61 = a1[v12];
              *(&v61[0] + 1) = 0x4066800000000000;
              sub_10000871C(__p, v61);
              *&v61[0] = 0xC066800000000000;
              *(v61 + 1) = *&v56 + -360.0;
              sub_10000871C(__p, v61);
            }

            else
            {
LABEL_38:
              *v61 = a1[v12];
              *(&v61[0] + 1) = *&v16.f64[0];
              sub_10000871C(__p, v61);
            }

            v14 = v57;
            v13 = v58;
          }
        }
      }
    }

    v12 += 4;
  }

  while (v12 != 8);
  if (__p[0] == __p[1])
  {
    v33 = 0.0;
    v42 = 0.0;
  }

  else
  {
    v23 = (__p[0] + 16);
    if (__p[0] + 16 == __p[1])
    {
      v33 = *__p[0];
      v34 = __p[0];
    }

    else
    {
      v24 = (__p[0] + 16);
      v25 = __p[0];
      do
      {
        v26 = *v24;
        v27 = *v25;
        if (*v24 < *v25)
        {
          if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_49;
          }

          v29 = fabs(v27);
          v30 = fabs(v26);
          v31 = vabdd_f64(v27, v26);
          if (v29 >= v30)
          {
            v32 = v29;
          }

          else
          {
            v32 = v30;
          }

          if (v32 < 1.0)
          {
            v32 = 1.0;
          }

          if (v31 > v32 * 2.22044605e-16)
          {
LABEL_49:
            v25 = v24;
          }
        }

        v24 += 2;
      }

      while (v24 != __p[1]);
      v33 = *v25;
      v34 = __p[0];
      do
      {
        v35 = v34[1];
        v36 = v23[1];
        if (v35 < v36)
        {
          if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_64;
          }

          v38 = fabs(v36);
          v39 = fabs(v35);
          v40 = vabdd_f64(v36, v35);
          if (v38 >= v39)
          {
            v41 = v38;
          }

          else
          {
            v41 = v39;
          }

          if (v41 < 1.0)
          {
            v41 = 1.0;
          }

          if (v40 > v41 * 2.22044605e-16)
          {
LABEL_64:
            v34 = v23;
          }
        }

        v23 += 2;
      }

      while (v23 != __p[1]);
    }

    v42 = v34[1];
    v43 = v42 - v33;
    if (v42 - v33 > 180.0)
    {
      if (v43 == INFINITY)
      {
        goto LABEL_83;
      }

      v44 = fabs(v43 + -180.0);
      if (v43 < 180.0)
      {
        v43 = 180.0;
      }

      if (v43 < 1.0)
      {
        v43 = 1.0;
      }

      if (v44 > v43 * 2.22044605e-16)
      {
LABEL_83:
        v45 = (__p[1] - __p[0]) >> 4;
        if (!(v45 >> 60))
        {
          sub_10002F170(v45);
        }

        sub_10002E420();
      }
    }
  }

  *a2 = v33;
  a2[1] = v6[1];
  a2[2] = v42;
  a2[3] = v55[3];
  v46 = __p[0];
  if (__p[0])
  {

    operator delete(v46);
  }
}

void sub_1000086E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000871C(uint64_t a1, _OWORD *a2)
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
      sub_10002E420();
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

      sub_10001A5DC();
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

void sub_100008824(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v12 = *a1;
    v13 = v3 - *a1;
    v14 = 0xEEEEEEEEEEEEEEEFLL * (v13 >> 3) + 1;
    if (v14 > 0x222222222222222)
    {
      sub_10002E420();
    }

    v15 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - v12) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x111111111111111)
    {
      v16 = 0x222222222222222;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 <= 0x222222222222222)
      {
        operator new();
      }

      sub_10001A5DC();
    }

    v17 = a2[5];
    v18 = 8 * (v13 >> 3);
    *(v18 + 64) = a2[4];
    *(v18 + 80) = v17;
    *(v18 + 96) = a2[6];
    *(v18 + 112) = *(a2 + 14);
    v19 = a2[1];
    *v18 = *a2;
    *(v18 + 16) = v19;
    v20 = a2[3];
    v11 = v18 + 120;
    v21 = v18 - v13;
    *(v18 + 32) = a2[2];
    *(v18 + 48) = v20;
    memcpy((v18 - v13), v12, v13);
    *a1 = v21;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    *(v3 + 32) = a2[2];
    *(v3 + 48) = v7;
    *v3 = v5;
    *(v3 + 16) = v6;
    v8 = a2[4];
    v9 = a2[5];
    v10 = a2[6];
    *(v3 + 112) = *(a2 + 14);
    *(v3 + 80) = v9;
    *(v3 + 96) = v10;
    *(v3 + 64) = v8;
    v11 = v3 + 120;
  }

  *(a1 + 8) = v11;
}

void sub_100008988(uint64_t **a1, int *a2, unsigned int *a3)
{
  v3 = **a1;
  v4 = v3 + (*(a2 + 1) << 8);
  v5 = (v3 + (*(a3 + 1) << 8));
  v6 = *(v4 + 8);
  if (v6 == v5[1])
  {
    return;
  }

  v10 = *(v4 + 40);
  v11 = v5[5];
  if (v10 == v11)
  {
    v12 = v6 == v5[2] || v6 == v5[3];
    if (v12 || *(*a1[1] + 32 * v10 + 24) != 1)
    {
      return;
    }
  }

  v13 = *(a2 + 4);
  v14 = *(a2 + 6);
  v15 = *(a3 + 4);
  v16 = *(a3 + 6);
  if (v14 - v13 < 360.0 && v16 - v15 < 360.0)
  {
    v17 = vabdd_f64(v15, v13);
    v18 = 180.0;
    if (v17 != 180.0)
    {
      v19 = v15 - v13;
      if (COERCE__INT64(fabs(v15 - v13)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_52;
      }

      v44 = fabs(v17 + -180.0);
      v18 = 180.0;
      if (v17 < 180.0)
      {
        v17 = 180.0;
      }

      if (v17 < 1.0)
      {
        v17 = 1.0;
      }

      if (v44 > v17 * 2.22044605e-16)
      {
LABEL_52:
        v18 = 180.0;
        if (v19 <= 180.0)
        {
          if (v19 >= -180.0)
          {
            goto LABEL_13;
          }

          v18 = fmod(v19 + -180.0, 360.0) + 180.0;
        }

        else
        {
          v19 = fmod(v19 + 180.0, 360.0) + -180.0;
          if (v19 != -180.0)
          {
            if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_13;
            }

            v45 = fabs(v19);
            v18 = 180.0;
            v46 = fabs(v19 + 180.0);
            if (v45 < 180.0)
            {
              v45 = 180.0;
            }

            if (v45 < 1.0)
            {
              v45 = 1.0;
            }

            if (v46 > v45 * 2.22044605e-16)
            {
LABEL_13:
              if (v19 < 0.0)
              {
                v19 = v19 + 360.0;
              }

              v20 = v13 + v19;
              v21 = v16 - v15 + v13 + v19 + -360.0;
              if (vabdd_f64(v21, v16) < 180.0)
              {
                v21 = v16;
              }

              if (v20 > v14 && v21 < v13)
              {
                return;
              }

              goto LABEL_19;
            }
          }
        }
      }
    }

    v19 = v18;
    goto LABEL_13;
  }

LABEL_19:
  v22 = *(a2 + 7);
  v23 = *(a3 + 5);
  if (v22 >= v23)
  {
    v24 = *(a2 + 5);
    v25 = *(a3 + 7);
    if (v24 <= v25)
    {
      v26 = *(v4 + 56);
      if ((v26 & 0x8000000000000000) == 0 && (v5[7] & 0x8000000000000000) == 0)
      {
        v88 = v5[7];
        v92 = v5;
        v87 = v6;
        v27 = *(a2 + 8) + v26;
        v28 = *(a2 + 9) + v26;
        v84 = *(a3 + 9);
        v85 = *(a3 + 8);
        v29 = *a1[1];
        v93 = (v29 + 32 * v10);
        v30 = *v93 + 16 * v27;
        v31 = (v29 + 32 * v11);
        v32 = *v31;
        v94 = *a2;
        v33 = *v93 + 16 * v28 + 16;
        if (v30 != v33)
        {
          v34 = (v30 + 16);
          v96 = -16 * v28 - *v93;
          do
          {
            if ((v34 + v96) == 16)
            {
              break;
            }

            if (!sub_10000EF08(v94, *v34, v13, v14, v15, v16))
            {
              break;
            }

            v30 += 16;
            ++v27;
            v34 += 2;
          }

          while (v30 != v33);
        }

        v86 = v32;
        v97 = v85 + v88;
        if (v30 != v33)
        {
          v35 = (v33 - 32);
          do
          {
            if ((v35 - v30) == -16 || v35 == v30)
            {
              break;
            }

            if (!sub_10000EF08(-v94, *v35, v13, v14, v15, v16))
            {
              break;
            }

            v35 -= 2;
            v33 -= 16;
          }

          while (v33 != v30);
        }

        v37 = a2[1];
        v38 = v33;
        if (v30 == v33)
        {
          v40 = v30;
          v42 = v32 + 16 * v97;
        }

        else
        {
          v39 = v30 + 16;
          v40 = v30;
          v41 = v27;
          v42 = v32 + 16 * v97;
          while (v38 != v39)
          {
            v43 = *(v39 + 8);
            if (v37 == -1)
            {
              if (v43 <= v25)
              {
                break;
              }
            }

            else
            {
              if (v37 != 1)
              {
                v40 = v30;
                v41 = v27;
                break;
              }

              if (v43 >= v23)
              {
                break;
              }
            }

            v40 += 16;
            ++v41;
            v39 += 16;
            if (v40 == v38)
            {
              break;
            }
          }

          v30 = v40;
          v27 = v41;
        }

        v47 = v32 + 16 * (v84 + v88) + 16;
        if (v38 != v30)
        {
          v48 = v38 - 32;
          v49 = -v40;
          v50 = v38;
          while (v49 + v48 != -16 && v49 + v48 != 0)
          {
            v52 = *(v48 + 8);
            if (v37 == 1)
            {
              if (v52 <= v25)
              {
                break;
              }
            }

            else
            {
              if (v37 != -1)
              {
                goto LABEL_80;
              }

              if (v52 >= v23)
              {
                break;
              }
            }

            v50 -= 16;
            v48 -= 16;
            if (v50 == v30)
            {
              v38 = v30;
              goto LABEL_80;
            }
          }

          v38 = v50;
        }

LABEL_80:
        v95 = v38;
        v53 = *a3;
        if (v42 != v47)
        {
          v54 = (v42 + 16);
          v89 = -(v86 + 16 * (v84 + v88));
          do
          {
            if ((v54 + v89) == 16)
            {
              break;
            }

            if (!sub_10000EF08(v53, *v54, v15, v16, v13, v14))
            {
              break;
            }

            v42 += 16;
            ++v97;
            v54 += 2;
          }

          while (v42 != v47);
        }

        if (v42 == v47)
        {
          v56 = v42;
        }

        else
        {
          v90 = -v53;
          v55 = (v47 - 32);
          v56 = v42;
          v57 = -v42;
          do
          {
            if ((v55 + v57) == -16 || (v55 + v57) == 0)
            {
              break;
            }

            if (!sub_10000EF08(v90, *v55, v15, v16, v13, v14))
            {
              break;
            }

            v47 -= 16;
            v55 -= 2;
          }

          while (v47 != v56);
        }

        v59 = a3[1];
        v60 = v56;
        if (v56 == v47)
        {
          v62 = v56;
          v64 = v95;
        }

        else
        {
          v61 = v56 + 16;
          v62 = v56;
          v64 = v95;
          v63 = v97;
          while (v47 != v61)
          {
            v65 = *(v61 + 8);
            if (v59 == -1)
            {
              if (v65 <= v22)
              {
                break;
              }
            }

            else
            {
              if (v59 != 1)
              {
                v62 = v56;
                v63 = v97;
                break;
              }

              if (v65 >= v24)
              {
                break;
              }
            }

            v62 += 16;
            ++v63;
            v61 += 16;
            if (v62 == v47)
            {
              break;
            }
          }

          v60 = v62;
          v97 = v63;
        }

        if (v47 != v60)
        {
          v66 = v47 - 32;
          v67 = -v62;
          v68 = v47;
          while (v67 + v66 != -16 && v67 + v66 != 0)
          {
            v70 = *(v66 + 8);
            if (v59 == 1)
            {
              if (v70 <= v22)
              {
                break;
              }
            }

            else
            {
              if (v59 != -1)
              {
                goto LABEL_122;
              }

              if (v70 >= v24)
              {
                break;
              }
            }

            v68 -= 16;
            v66 -= 16;
            if (v68 == v60)
            {
              v47 = v60;
              goto LABEL_122;
            }
          }

          v47 = v68;
        }

LABEL_122:
        v71 = 0;
        v103 = 0;
        v104 = 0;
        v105 = -1;
        v106 = 0;
        *&v72 = -1;
        *(&v72 + 1) = -1;
        do
        {
          v73 = &v102[v71];
          *(v73 + 10) = 0;
          *(v73 + 3) = v72;
          *(v73 + 4) = v72;
          *(v73 + 10) = -1;
          *(v73 + 88) = xmmword_100092590;
          *(v73 + 13) = 0;
          *(v73 + 14) = 0;
          *(v73 + 15) = -1;
          *(v73 + 16) = -1;
          *(v73 + 17) = -1;
          *(v73 + 72) = 257;
          *(v73 + 19) = 0;
          *(v73 + 20) = 0;
          *(v73 + 21) = -1;
          *(v73 + 22) = -1;
          *(v73 + 23) = -1;
          v73[192] = 0;
          *(v73 + 50) = 0;
          *(v73 + 102) = 0;
          v71 += 184;
          *(v73 + 26) = -1;
          *(v73 + 27) = -1;
        }

        while (v71 != 368);
        v116 = 1;
        v117 = 0;
        v115 = 0;
        v110 = v87;
        v74 = *(v4 + 32);
        v108 = *(v4 + 48);
        v107 = v74;
        v75 = *(v4 + 64);
        v76 = v30 + 16;
        *(&v108 + 1) = v27;
        v109 = v75;
        if (v30 + 16 != v64)
        {
          v91 = v60 + 16;
          do
          {
            v77 = *(v92 + 2);
            v112 = *(v92 + 3);
            v78 = v92[8];
            v100[0] = v93;
            v100[1] = v30;
            v30 = v76;
            v79 = v92[1];
            v113 = v78;
            v111 = v77;
            v114 = v79;
            *(&v112 + 1) = v97;
            v100[2] = v30;
            v100[3] = 0;
            v80 = v60;
            v81 = v60;
            v83 = v97 + 1;
            v82 = v91;
            v101 = 0;
            while (v82 != v47)
            {
              v98[0] = v31;
              v98[1] = v81;
              v98[2] = v81 + 16;
              v98[3] = 0;
              v99 = 0;
              sub_1000421EC(v100, v98, v102, a1[3], a1[4], a1[2]);
              *(&v112 + 1) = v83++;
              v82 = v81 + 32;
              v81 += 16;
            }

            *(&v108 + 1) = ++v27;
            v76 = v30 + 16;
            v60 = v80;
          }

          while (v30 + 16 != v95);
        }
      }
    }
  }
}

void sub_100009160(void *a1)
{
  if (a1)
  {
    sub_100009160(*a1);
    sub_100009160(a1[1]);
    v2 = a1[7];
    if (v2)
    {
      a1[8] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void sub_1000091BC(void *a1)
{
  if (a1)
  {
    sub_1000091BC(*a1);
    sub_1000091BC(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      a1[7] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

__n128 sub_100009218(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = a2 - 3;
  v11 = &a2[-5].n128_i8[8];
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        result.n128_u64[0] = a2[-1].n128_u64[1];
        if (result.n128_f64[0] > v12[1].n128_f64[0])
        {
          v192 = v12[1].n128_u64[0];
          v162 = *v12;
          v86 = *(a2 - 24);
          v12[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v12 = v86;
          result = v162;
          a2[-1].n128_u64[1] = v192;
          *(a2 - 24) = v162;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v90 = v12[2].n128_f64[1];
      v91 = v12[4].n128_f64[0];
      if (v90 <= v12[1].n128_f64[0])
      {
        if (v91 > v90)
        {
          v132 = v12[2].n128_i64[1];
          result = *(v12 + 24);
          *(v12 + 24) = v12[3];
          v12[2].n128_u64[1] = v12[4].n128_u64[0];
          v12[3] = result;
          v12[4].n128_u64[0] = v132;
          if (v12[2].n128_f64[1] > v12[1].n128_f64[0])
          {
            v196 = v12[1].n128_i64[0];
            v168 = *v12;
            *v12 = *(v12 + 24);
            v12[1].n128_u64[0] = v12[2].n128_u64[1];
            result.n128_u64[1] = v168.n128_u64[1];
            *(v12 + 24) = v168;
            v12[2].n128_u64[1] = v196;
          }
        }
      }

      else
      {
        if (v91 > v90)
        {
          v194 = v12[1].n128_i64[0];
          v164 = *v12;
          *v12 = v12[3];
          v12[1].n128_u64[0] = v12[4].n128_u64[0];
          result.n128_u64[1] = v164.n128_u64[1];
          v12[3] = v164;
          v92 = v194;
          goto LABEL_183;
        }

        v198 = v12[1].n128_i64[0];
        v171 = *v12;
        *v12 = *(v12 + 24);
        v12[1].n128_u64[0] = v12[2].n128_u64[1];
        *(v12 + 24) = v171;
        v12[2].n128_u64[1] = v198;
        if (v91 > v12[2].n128_f64[1])
        {
          v92 = v12[2].n128_i64[1];
          result = *(v12 + 24);
          *(v12 + 24) = v12[3];
          v12[2].n128_u64[1] = v12[4].n128_u64[0];
          v12[3] = result;
LABEL_183:
          v12[4].n128_u64[0] = v92;
        }
      }

      result.n128_u64[0] = a2[-1].n128_u64[1];
      if (result.n128_f64[0] <= v12[4].n128_f64[0])
      {
        return result;
      }

      result = v12[3];
      v137 = v12[4].n128_u64[0];
      v138 = a2[-1].n128_i64[1];
      v12[3] = *v9;
      v12[4].n128_u64[0] = v138;
      a2[-1].n128_u64[1] = v137;
      *v9 = result;
      result.n128_u64[0] = v12[4].n128_u64[0];
      if (result.n128_f64[0] <= v12[2].n128_f64[1])
      {
        return result;
      }

      v139 = v12[2].n128_i64[1];
      result = *(v12 + 24);
      *(v12 + 24) = v12[3];
      v12[2].n128_u64[1] = v12[4].n128_u64[0];
      v12[3] = result;
      v12[4].n128_u64[0] = v139;
LABEL_187:
      result.n128_u64[0] = v12[2].n128_u64[1];
      if (result.n128_f64[0] > v12[1].n128_f64[0])
      {
        v199 = v12[1].n128_i64[0];
        v172 = *v12;
        *v12 = *(v12 + 24);
        v12[1].n128_u64[0] = v12[2].n128_u64[1];
        result = v172;
        *(v12 + 24) = v172;
        v12[2].n128_u64[1] = v199;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_10004F36C(v12, (v12 + 24), v12 + 3, (v12 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v93 = (v12 + 24);
      v95 = v12 == a2 || v93 == a2;
      if (a4)
      {
        if (!v95)
        {
          v96 = 0;
          v97 = v12;
          do
          {
            result.n128_u64[0] = v97[2].n128_u64[1];
            v98 = v97[1].n128_f64[0];
            v97 = v93;
            if (result.n128_f64[0] > v98)
            {
              v165 = *v93;
              v99 = v96;
              while (1)
              {
                v100 = v12 + v99;
                *(v100 + 24) = *(v12 + v99);
                *(v100 + 5) = *(v12[1].n128_u64 + v99);
                if (!v99)
                {
                  break;
                }

                v99 -= 24;
                if (result.n128_f64[0] <= *(v100 - 1))
                {
                  v101 = &v12[1].n128_i64[1] + v99;
                  goto LABEL_129;
                }
              }

              v101 = v12;
LABEL_129:
              *v101 = v165;
              *(v101 + 16) = result.n128_u64[0];
            }

            v93 = (v97 + 24);
            v96 += 24;
          }

          while (&v97[1].n128_i8[8] != a2);
        }
      }

      else if (!v95)
      {
        do
        {
          result.n128_u64[0] = a1[2].n128_u64[1];
          v133 = a1[1].n128_f64[0];
          a1 = v93;
          if (result.n128_f64[0] > v133)
          {
            v169 = *v93;
            v134 = v93;
            do
            {
              *v134 = *(v134 - 24);
              v134[1].n128_u64[0] = v134[-1].n128_u64[1];
              v135 = v134[-2].n128_f64[0];
              v134 = (v134 - 24);
            }

            while (result.n128_f64[0] > v135);
            *v134 = v169;
            v134[1].n128_u64[0] = result.n128_u64[0];
          }

          v93 = (v93 + 24);
        }

        while (&a1[1].n128_i8[8] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v102 = (v14 - 2) >> 1;
        v103 = v102;
        do
        {
          v104 = v103;
          if (v102 >= v103)
          {
            v105 = (2 * v103) | 1;
            v106 = &v12->n128_f64[3 * v105];
            if (2 * v104 + 2 < v14 && v106[2] > v106[5])
            {
              v106 += 3;
              v105 = 2 * v104 + 2;
            }

            v107 = &v12->n128_f64[3 * v104];
            v108 = v107[2];
            if (v106[2] <= v108)
            {
              v166 = *v107;
              do
              {
                v109 = v107;
                v107 = v106;
                v110 = *v106;
                v109[2] = v106[2];
                *v109 = v110;
                if (v102 < v105)
                {
                  break;
                }

                v111 = 2 * v105;
                v105 = (2 * v105) | 1;
                v106 = &v12->n128_f64[3 * v105];
                v112 = v111 + 2;
                if (v112 < v14 && v106[2] > v106[5])
                {
                  v106 += 3;
                  v105 = v112;
                }
              }

              while (v106[2] <= v108);
              *v107 = v166;
              v107[2] = v108;
            }
          }

          v103 = v104 - 1;
        }

        while (v104);
        v113 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v114 = 0;
          v195 = v12[1].n128_u64[0];
          v167 = *v12;
          v115 = v12;
          do
          {
            v116 = v115 + 24 * v114;
            v117 = (v116 + 24);
            v118 = (2 * v114) | 1;
            v114 = 2 * v114 + 2;
            if (v114 >= v113)
            {
              v114 = v118;
            }

            else
            {
              v119 = *(v116 + 5);
              v120 = *(v116 + 8);
              v121 = (v116 + 48);
              if (v119 <= v120)
              {
                v114 = v118;
              }

              else
              {
                v117 = v121;
              }
            }

            v122 = *v117;
            v115[1].n128_u64[0] = v117[1].n128_u64[0];
            *v115 = v122;
            v115 = v117;
          }

          while (v114 <= ((v113 - 2) >> 1));
          a2 = (a2 - 24);
          if (v117 == a2)
          {
            result = v167;
            v117[1].n128_u64[0] = v195;
            *v117 = v167;
          }

          else
          {
            v123 = *a2;
            v117[1].n128_u64[0] = a2[1].n128_u64[0];
            *v117 = v123;
            result = v167;
            a2[1].n128_u64[0] = v195;
            *a2 = v167;
            v124 = v117 - v12 + 24;
            if (v124 >= 25)
            {
              v125 = (-2 - 0x5555555555555555 * (v124 >> 3)) >> 1;
              v126 = (v12 + 24 * v125);
              result.n128_u64[0] = v117[1].n128_u64[0];
              if (v126[1].n128_f64[0] > result.n128_f64[0])
              {
                v142 = *v117;
                do
                {
                  v127 = v117;
                  v117 = v126;
                  v128 = *v126;
                  v127[1].n128_u64[0] = v126[1].n128_u64[0];
                  *v127 = v128;
                  if (!v125)
                  {
                    break;
                  }

                  v125 = (v125 - 1) >> 1;
                  v126 = (v12 + 24 * v125);
                }

                while (v126[1].n128_f64[0] > result.n128_f64[0]);
                *v117 = v142;
                v117[1].n128_u64[0] = result.n128_u64[0];
              }
            }
          }
        }

        while (v113-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = a2[-1].n128_f64[1];
    if (v13 >= 0xC01)
    {
      v18 = v16[1].n128_f64[0];
      if (v18 <= v12[1].n128_f64[0])
      {
        if (v17 > v18)
        {
          v175 = v16[1].n128_u64[0];
          v145 = *v16;
          v22 = *v9;
          v16[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v16 = v22;
          a2[-1].n128_u64[1] = v175;
          *v9 = v145;
          if (v16[1].n128_f64[0] > v12[1].n128_f64[0])
          {
            v176 = v12[1].n128_u64[0];
            v146 = *v12;
            v23 = *v16;
            v12[1].n128_u64[0] = v16[1].n128_u64[0];
            *v12 = v23;
            v16[1].n128_u64[0] = v176;
            *v16 = v146;
          }
        }
      }

      else
      {
        if (v17 > v18)
        {
          v173 = v12[1].n128_u64[0];
          v143 = *v12;
          v19 = *v9;
          v12[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v12 = v19;
          goto LABEL_26;
        }

        v179 = v12[1].n128_u64[0];
        v149 = *v12;
        v24 = *v16;
        v12[1].n128_u64[0] = v16[1].n128_u64[0];
        *v12 = v24;
        v16[1].n128_u64[0] = v179;
        *v16 = v149;
        if (a2[-1].n128_f64[1] > v16[1].n128_f64[0])
        {
          v173 = v16[1].n128_u64[0];
          v143 = *v16;
          v25 = *v9;
          v16[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v16 = v25;
LABEL_26:
          a2[-1].n128_u64[1] = v173;
          *v9 = v143;
        }
      }

      v26 = &v12->n128_f64[3 * v15];
      v27 = (v26 - 3);
      v28 = *(v26 - 1);
      v29 = a2[-2].n128_f64[0];
      if (v28 <= v12[2].n128_f64[1])
      {
        if (v29 > v28)
        {
          v180 = *(v26 - 1);
          v150 = *v27;
          v33 = *v10;
          *(v26 - 1) = a2[-2].n128_f64[0];
          *v27 = v33;
          a2[-2].n128_u64[0] = v180;
          *v10 = v150;
          if (*(v26 - 1) > v12[2].n128_f64[1])
          {
            v34 = *(v12 + 24);
            v35 = v12[2].n128_u64[1];
            v36 = v27[1].n128_i64[0];
            *(v12 + 24) = *v27;
            v12[2].n128_u64[1] = v36;
            v27[1].n128_u64[0] = v35;
            *v27 = v34;
          }
        }
      }

      else
      {
        if (v29 > v28)
        {
          v30 = *(v12 + 24);
          v31 = v12[2].n128_i64[1];
          v32 = a2[-2].n128_i64[0];
          *(v12 + 24) = *v10;
          v12[2].n128_u64[1] = v32;
          goto LABEL_38;
        }

        v38 = *(v12 + 24);
        v39 = v12[2].n128_u64[1];
        v40 = v27[1].n128_i64[0];
        *(v12 + 24) = *v27;
        v12[2].n128_u64[1] = v40;
        v27[1].n128_u64[0] = v39;
        *v27 = v38;
        if (a2[-2].n128_f64[0] > v27[1].n128_f64[0])
        {
          v182 = v27[1].n128_i64[0];
          v152 = *v27;
          v41 = *v10;
          v27[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v27 = v41;
          v30 = v152;
          v31 = v182;
LABEL_38:
          a2[-2].n128_u64[0] = v31;
          *v10 = v30;
        }
      }

      v42 = v12 + 24 * v15;
      v43 = *(v42 + 5);
      v44 = a2[-4].n128_f64[1];
      if (v43 <= v12[4].n128_f64[0])
      {
        if (v44 > v43)
        {
          v183 = *(v42 + 5);
          v153 = *(v42 + 24);
          v48 = *v11;
          *(v42 + 5) = a2[-4].n128_u64[1];
          *(v42 + 24) = v48;
          a2[-4].n128_u64[1] = v183;
          *v11 = v153;
          if (*(v42 + 5) > v12[4].n128_f64[0])
          {
            v49 = v12[3];
            v50 = v12[4].n128_i64[0];
            v51 = *(v42 + 5);
            v12[3] = *(v42 + 24);
            v12[4].n128_u64[0] = v51;
            *(v42 + 5) = v50;
            *(v42 + 24) = v49;
          }
        }
      }

      else
      {
        if (v44 > v43)
        {
          v45 = v12[3];
          v46 = v12[4].n128_u64[0];
          v47 = a2[-4].n128_i64[1];
          v12[3] = *v11;
          v12[4].n128_u64[0] = v47;
          goto LABEL_47;
        }

        v52 = v12[3];
        v53 = v12[4].n128_i64[0];
        v54 = *(v42 + 5);
        v12[3] = *(v42 + 24);
        v12[4].n128_u64[0] = v54;
        *(v42 + 5) = v53;
        *(v42 + 24) = v52;
        if (a2[-4].n128_f64[1] > *(v42 + 5))
        {
          v184 = *(v42 + 5);
          v154 = *(v42 + 24);
          v55 = *v11;
          *(v42 + 5) = a2[-4].n128_u64[1];
          *(v42 + 24) = v55;
          v45 = v154;
          v46 = v184;
LABEL_47:
          a2[-4].n128_u64[1] = v46;
          *v11 = v45;
        }
      }

      v56 = v16[1].n128_f64[0];
      v57 = *(v42 + 5);
      if (v56 <= v27[1].n128_f64[0])
      {
        if (v57 > v56)
        {
          v186 = v16[1].n128_u64[0];
          v156 = *v16;
          *v16 = *(v42 + 24);
          v16[1].n128_u64[0] = *(v42 + 5);
          *(v42 + 5) = v186;
          *(v42 + 24) = v156;
          if (v16[1].n128_f64[0] > v27[1].n128_f64[0])
          {
            v187 = v27[1].n128_u64[0];
            v157 = *v27;
            *v27 = *v16;
            v27[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v187;
            *v16 = v157;
          }
        }
      }

      else
      {
        if (v57 > v56)
        {
          v185 = v27[1].n128_u64[0];
          v155 = *v27;
          *v27 = *(v42 + 24);
          v27[1].n128_u64[0] = *(v42 + 5);
          goto LABEL_56;
        }

        v188 = v27[1].n128_u64[0];
        v158 = *v27;
        *v27 = *v16;
        v27[1].n128_u64[0] = v16[1].n128_u64[0];
        v16[1].n128_u64[0] = v188;
        *v16 = v158;
        if (*(v42 + 5) > v16[1].n128_f64[0])
        {
          v185 = v16[1].n128_u64[0];
          v155 = *v16;
          *v16 = *(v42 + 24);
          v16[1].n128_u64[0] = *(v42 + 5);
LABEL_56:
          *(v42 + 5) = v185;
          *(v42 + 24) = v155;
        }
      }

      v189 = v12[1].n128_u64[0];
      v159 = *v12;
      result = *v16;
      v12[1].n128_u64[0] = v16[1].n128_u64[0];
      *v12 = result;
      result.n128_u64[1] = v159.n128_u64[1];
      v16[1].n128_u64[0] = v189;
      *v16 = v159;
      goto LABEL_58;
    }

    v20 = v12[1].n128_f64[0];
    if (v20 <= v16[1].n128_f64[0])
    {
      if (v17 > v20)
      {
        v177 = v12[1].n128_u64[0];
        v147 = *v12;
        result = *v9;
        v12[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v12 = result;
        result.n128_u64[1] = v147.n128_u64[1];
        a2[-1].n128_u64[1] = v177;
        *v9 = v147;
        if (v12[1].n128_f64[0] > v16[1].n128_f64[0])
        {
          v178 = v16[1].n128_u64[0];
          v148 = *v16;
          result = *v12;
          v16[1].n128_u64[0] = v12[1].n128_u64[0];
          *v16 = result;
          result.n128_u64[1] = v148.n128_u64[1];
          v12[1].n128_u64[0] = v178;
          *v12 = v148;
        }
      }

      goto LABEL_58;
    }

    if (v17 > v20)
    {
      v174 = v16[1].n128_u64[0];
      v144 = *v16;
      v21 = *v9;
      v16[1].n128_u64[0] = a2[-1].n128_u64[1];
      *v16 = v21;
LABEL_35:
      result.n128_u64[1] = v144.n128_u64[1];
      a2[-1].n128_u64[1] = v174;
      *v9 = v144;
      goto LABEL_58;
    }

    v181 = v16[1].n128_u64[0];
    v151 = *v16;
    result = *v12;
    v16[1].n128_u64[0] = v12[1].n128_u64[0];
    *v16 = result;
    result.n128_u64[1] = v151.n128_u64[1];
    v12[1].n128_u64[0] = v181;
    *v12 = v151;
    if (a2[-1].n128_f64[1] > v12[1].n128_f64[0])
    {
      v174 = v12[1].n128_u64[0];
      v144 = *v12;
      v37 = *v9;
      v12[1].n128_u64[0] = a2[-1].n128_u64[1];
      *v12 = v37;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      result.n128_u64[0] = v12[1].n128_u64[0];
LABEL_61:
      v58 = 0;
      v140 = *v12;
      do
      {
        v59 = v12[2].n128_f64[v58 + 1];
        v58 += 3;
      }

      while (v59 > result.n128_f64[0]);
      v60 = (v12 + v58 * 8);
      v61 = a2;
      if (v58 == 3)
      {
        v64 = a2;
        while (v60 < v64)
        {
          v62 = v64 - 24;
          v65 = *(v64 - 8);
          v64 -= 24;
          if (v65 > result.n128_f64[0])
          {
            goto LABEL_71;
          }
        }

        v62 = v64;
      }

      else
      {
        do
        {
          v62 = v61 - 24;
          v63 = *(v61 - 8);
          v61 -= 24;
        }

        while (v63 <= result.n128_f64[0]);
      }

LABEL_71:
      v12 = v60;
      if (v60 < v62)
      {
        v66 = v62;
        do
        {
          v190 = v12[1].n128_i64[0];
          v160 = *v12;
          v67 = *v66;
          v12[1].n128_u64[0] = *(v66 + 16);
          *v12 = v67;
          *(v66 + 16) = v190;
          *v66 = v160;
          do
          {
            v68 = v12[2].n128_f64[1];
            v12 = (v12 + 24);
          }

          while (v68 > result.n128_f64[0]);
          do
          {
            v69 = *(v66 - 8);
            v66 -= 24;
          }

          while (v69 <= result.n128_f64[0]);
        }

        while (v12 < v66);
      }

      v70 = &v12[-2].n128_i8[8];
      if (&v12[-2].n128_i8[8] != a1)
      {
        v71 = *v70;
        a1[1].n128_u64[0] = v12[-1].n128_u64[1];
        *a1 = v71;
      }

      *v70 = v140;
      v12[-1].n128_u64[1] = result.n128_u64[0];
      if (v60 < v62)
      {
        goto LABEL_82;
      }

      v72 = sub_10004F5B4(a1, &v12[-2].n128_i8[8], result);
      if (sub_10004F5B4(v12, a2, v73))
      {
        a2 = (v12 - 24);
        if (!v72)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v72)
      {
LABEL_82:
        result = sub_100009218(a1, &v12[-2].n128_u64[1], a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      result.n128_u64[0] = v12[1].n128_u64[0];
      if (v12[-1].n128_f64[1] > result.n128_f64[0])
      {
        goto LABEL_61;
      }

      v141 = *v12;
      if (result.n128_f64[0] <= a2[-1].n128_f64[1])
      {
        v76 = &v12[1].n128_u64[1];
        do
        {
          v12 = v76;
          if (v76 >= a2)
          {
            break;
          }

          v77 = *(v76 + 16);
          v76 += 24;
        }

        while (result.n128_f64[0] <= v77);
      }

      else
      {
        v74 = v12;
        do
        {
          v12 = (v74 + 24);
          v75 = v74[2].n128_f64[1];
          v74 = (v74 + 24);
        }

        while (result.n128_f64[0] <= v75);
      }

      v78 = a2;
      if (v12 < a2)
      {
        v79 = a2;
        do
        {
          v78 = v79 - 24;
          v80 = *(v79 - 8);
          v79 -= 24;
        }

        while (result.n128_f64[0] > v80);
      }

      while (v12 < v78)
      {
        v191 = v12[1].n128_i64[0];
        v161 = *v12;
        v81 = *v78;
        v12[1].n128_u64[0] = *(v78 + 16);
        *v12 = v81;
        *(v78 + 16) = v191;
        *v78 = v161;
        do
        {
          v82 = v12[2].n128_f64[1];
          v12 = (v12 + 24);
        }

        while (result.n128_f64[0] <= v82);
        do
        {
          v83 = *(v78 - 8);
          v78 -= 24;
        }

        while (result.n128_f64[0] > v83);
      }

      v84 = &v12[-2].n128_i8[8];
      if (&v12[-2].n128_i8[8] != a1)
      {
        v85 = *v84;
        a1[1].n128_u64[0] = v12[-1].n128_u64[1];
        *a1 = v85;
      }

      a4 = 0;
      *v84 = v141;
      v12[-1].n128_u64[1] = result.n128_u64[0];
    }
  }

  result.n128_u64[0] = v12[2].n128_u64[1];
  v87 = a2[-1].n128_f64[1];
  if (result.n128_f64[0] <= v12[1].n128_f64[0])
  {
    if (v87 <= result.n128_f64[0])
    {
      return result;
    }

    result = *(v12 + 24);
    v130 = v12[2].n128_u64[1];
    v131 = a2[-1].n128_i64[1];
    *(v12 + 24) = *v9;
    v12[2].n128_u64[1] = v131;
    a2[-1].n128_u64[1] = v130;
    *v9 = result;
    goto LABEL_187;
  }

  if (v87 <= result.n128_f64[0])
  {
    v197 = v12[1].n128_i64[0];
    v170 = *v12;
    *v12 = *(v12 + 24);
    v12[1].n128_u64[0] = v12[2].n128_u64[1];
    result.n128_u64[1] = v170.n128_u64[1];
    *(v12 + 24) = v170;
    v12[2].n128_u64[1] = v197;
    result.n128_u64[0] = a2[-1].n128_u64[1];
    if (result.n128_f64[0] <= v12[2].n128_f64[1])
    {
      return result;
    }

    result = *(v12 + 24);
    v89 = v12[2].n128_u64[1];
    v136 = a2[-1].n128_i64[1];
    *(v12 + 24) = *v9;
    v12[2].n128_u64[1] = v136;
  }

  else
  {
    v193 = v12[1].n128_u64[0];
    v163 = *v12;
    v88 = *v9;
    v12[1].n128_u64[0] = a2[-1].n128_u64[1];
    *v12 = v88;
    result = v163;
    v89 = v193;
  }

  a2[-1].n128_u64[1] = v89;
  *v9 = result;
  return result;
}

void sub_10000A20C(void ***a1)
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
        v6 = v4 - 6;
        sub_10000A2F0(*(v4 - 5));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10000A294(void *a1)
{
  if (a1)
  {
    sub_10000A294(*a1);
    sub_10000A294(a1[1]);
    sub_100054B84(a1[11]);
    sub_10000A2F0(a1[8]);

    operator delete(a1);
  }
}

void sub_10000A2F0(void *a1)
{
  if (a1)
  {
    sub_10000A2F0(*a1);
    sub_10000A2F0(a1[1]);

    operator delete(a1);
  }
}

double sub_10000A33C(double *a1, double *a2)
{
  v2 = a1[1];
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v25 = a2;
    v29 = a1;
    v16 = __cxa_guard_acquire(&qword_1000B2BA0);
    a2 = v25;
    a1 = v29;
    if (v16)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      a2 = v25;
      a1 = v29;
    }
  }

  v3 = *&qword_1000B2B98;
  v4 = a2[1];
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v26 = a2;
    v30 = a1;
    v17 = v3;
    v18 = __cxa_guard_acquire(&qword_1000B2BA0);
    v3 = v17;
    v19 = v18;
    a2 = v26;
    a1 = v30;
    if (v19)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      v3 = v17;
      a2 = v26;
      a1 = v30;
    }
  }

  v5 = *&qword_1000B2B98;
  v6 = *a2;
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v31 = a1;
    v27 = v3;
    v20 = v6;
    v21 = __cxa_guard_acquire(&qword_1000B2BA0);
    v6 = v20;
    v3 = v27;
    v22 = v21;
    a1 = v31;
    if (v22)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      v6 = v20;
      v3 = v27;
      a1 = v31;
    }
  }

  v7 = *&qword_1000B2B98;
  v8 = *a1;
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v24 = v6;
    v28 = v3;
    v32 = v7;
    v23 = __cxa_guard_acquire(&qword_1000B2BA0);
    v3 = v28;
    v7 = v32;
    v6 = v24;
    if (v23)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      v3 = v28;
      v7 = v32;
      v6 = v24;
    }
  }

  v9 = v6 * v7;
  v10 = tan(v2 * v3 * 0.5);
  v11 = tan(v4 * v5 * 0.5);
  v12 = (v10 + v11) / (v10 * v11 + 1.0);
  v13 = tan((v9 - v8 * *&qword_1000B2B98) * 0.5);
  v14 = atan(v12 * v13);
  return v14 + v14;
}

void sub_10000A590(void *a1)
{
  if (a1)
  {
    sub_10000A590(*a1);
    sub_10000A590(a1[1]);
    sub_10000A2F0(a1[9]);

    operator delete(a1);
  }
}

BOOL sub_10000A5E4(double *a1, double *a2)
{
  v2 = *a1;
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v23 = a1;
    v29 = a2;
    v27 = v2;
    v14 = __cxa_guard_acquire(&qword_1000B2BA0);
    v2 = v27;
    a2 = v29;
    v15 = v14;
    a1 = v23;
    if (v15)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      v2 = v27;
      a1 = v23;
      a2 = v29;
    }
  }

  v3 = *&qword_1000B2B98;
  v4 = *a1;
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v30 = a2;
    v28 = v2;
    v20 = v3;
    v24 = v4;
    v16 = __cxa_guard_acquire(&qword_1000B2BA0);
    v3 = v20;
    v4 = v24;
    v2 = v28;
    a2 = v30;
    if (v16)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      v3 = v20;
      v4 = v24;
      v2 = v28;
      a2 = v30;
    }
  }

  v5 = v2 * v3;
  v6 = floor(v4 * *&qword_1000B2B98 / 6.28318531);
  v7 = *a2;
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v31 = a2;
    v19 = v7;
    v21 = v5;
    v25 = v6;
    v17 = __cxa_guard_acquire(&qword_1000B2BA0);
    v5 = v21;
    v6 = v25;
    v7 = v19;
    a2 = v31;
    if (v17)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      v5 = v21;
      v6 = v25;
      v7 = v19;
      a2 = v31;
    }
  }

  v8 = v5 - v6 * 6.28318531;
  v9 = v7 * *&qword_1000B2B98;
  v10 = *a2;
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v22 = v8;
    v32 = v9;
    v26 = v10;
    v18 = __cxa_guard_acquire(&qword_1000B2BA0);
    v8 = v22;
    v10 = v26;
    v9 = v32;
    if (v18)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      v8 = v22;
      v10 = v26;
      v9 = v32;
    }
  }

  result = 0;
  v12 = v9 - floor(v10 * *&qword_1000B2B98 / 6.28318531) * 6.28318531;
  if (v8 >= v12)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  if (v12 < v8)
  {
    v8 = v12;
  }

  if (v13 > 3.14159265 && v8 < 3.14159265)
  {
    return v13 - v8 > 3.14159265;
  }

  return result;
}

uint64_t *sub_10000A860(uint64_t **a1, uint64_t *a2, _OWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_16:
    operator new();
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  while (1)
  {
    while (1)
    {
      v7 = v3;
      v8 = v3[4];
      if (v4 != v8)
      {
        if (v4 >= v8)
        {
          if (v8 >= v4)
          {
            return v7;
          }

          goto LABEL_15;
        }

        goto LABEL_12;
      }

      v9 = v7[5];
      if (v5 != v9)
      {
        break;
      }

      v10 = v7[6];
      if (v6 >= v10)
      {
        if (v10 >= v6)
        {
          return v7;
        }

        goto LABEL_15;
      }

LABEL_12:
      v3 = *v7;
      if (!*v7)
      {
        goto LABEL_16;
      }
    }

    if (v5 < v9)
    {
      goto LABEL_12;
    }

    if (v9 >= v5)
    {
      return v7;
    }

LABEL_15:
    v3 = v7[1];
    if (!v3)
    {
      goto LABEL_16;
    }
  }
}

uint64_t *sub_10000A9B0(uint64_t *result, uint64_t *a2)
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

void **sub_10000AB4C(void **result, char *__src, char *a3, unint64_t a4)
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

      sub_1000593F8(v6, v11);
    }

    sub_10002E420();
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

void *sub_10000ACA8(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_10002E420();
  }

  return a1;
}

void sub_10000AD48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000AD64(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 4);
        v6 -= 32;
        v7 = v8;
        if (v8)
        {
          *(v4 - 3) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_10000ADF4(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10000AE70(result, a4);
  }

  return result;
}

void sub_10000AE54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000AE70(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_100006D60(a2);
  }

  sub_10002E420();
}

uint64_t *sub_10000AEB0(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_10000ADF4(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v6 != v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3);
    if (v7 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_10002E4C8(v7);
    }

    sub_10002E420();
  }

  return result;
}

void sub_10000AFD0(_Unwind_Exception *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000B008(&a10);
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_10000B008(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10000B098(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_1000187A0(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10000B0E8(void *a1)
{
  if (a1)
  {
    sub_10000B0E8(*a1);
    sub_10000B0E8(a1[1]);
    v2 = a1[16];
    if (v2)
    {
      a1[17] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t sub_10000B144(uint64_t a1)
{
  sub_10000B218(*(a1 + 232));
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  v10 = (a1 + 136);
  sub_10000B008(&v10);
  v3 = *(a1 + 112);
  if (v3)
  {
    *(a1 + 120) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    v5 = *(a1 + 96);
    v6 = *(a1 + 88);
    if (v5 != v4)
    {
      do
      {
        v5 -= 88;
        sub_10000B26C(v5);
      }

      while (v5 != v4);
      v6 = *(a1 + 88);
    }

    *(a1 + 96) = v4;
    operator delete(v6);
  }

  v10 = (a1 + 64);
  sub_10000AD64(&v10);
  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

void sub_10000B218(void *a1)
{
  if (a1)
  {
    sub_10000B218(*a1);
    sub_10000B218(a1[1]);
    sub_10000A2F0(a1[6]);

    operator delete(a1);
  }
}

void sub_10000B26C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

BOOL sub_10000B2C4(double a1, double a2, double a3, double a4)
{
  v7 = a1;
  v8 = fabs(a1);
  v9 = 180.0;
  if (v8 == 180.0)
  {
    goto LABEL_2;
  }

  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v11 = fabs(v8 + -180.0);
    v9 = 180.0;
    if (v8 < 180.0)
    {
      v8 = 180.0;
    }

    if (v8 < 1.0)
    {
      v8 = 1.0;
    }

    if (v11 <= v8 * 2.22044605e-16)
    {
      goto LABEL_2;
    }
  }

  v9 = 180.0;
  if (v7 > 180.0)
  {
    v12 = fmod(v7 + 180.0, 360.0);
    v7 = v12 + -180.0;
    if (v12 + -180.0 != -180.0)
    {
      if (COERCE_UNSIGNED_INT64(fabs(v12 + -180.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_3;
      }

      v13 = fabs(v7);
      v9 = 180.0;
      v14 = fabs(v7 + 180.0);
      if (v13 < 180.0)
      {
        v13 = 180.0;
      }

      if (v13 < 1.0)
      {
        v13 = 1.0;
      }

      if (v14 > v13 * 2.22044605e-16)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_2;
  }

  if (v7 < -180.0)
  {
    v9 = fmod(v7 + -180.0, 360.0) + 180.0;
LABEL_2:
    v7 = v9;
  }

LABEL_3:
  v10 = fabs(a2);
  if (v10 == 90.0)
  {
    goto LABEL_4;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v15 = fabs(v10 + -90.0);
    if (v10 >= 90.0)
    {
      v16 = v10;
    }

    else
    {
      v16 = 90.0;
    }

    if (v16 < 1.0)
    {
      v16 = 1.0;
    }

    if (v15 <= v16 * 2.22044605e-16)
    {
LABEL_4:
      v7 = 0.0;
    }
  }

  v17 = fabs(a3);
  v18 = 180.0;
  if (v17 == 180.0)
  {
    goto LABEL_28;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v20 = fabs(v17 + -180.0);
    v18 = 180.0;
    if (v17 < 180.0)
    {
      v17 = 180.0;
    }

    if (v17 < 1.0)
    {
      v17 = 1.0;
    }

    if (v20 <= v17 * 2.22044605e-16)
    {
      goto LABEL_28;
    }
  }

  v18 = 180.0;
  if (a3 <= 180.0)
  {
    if (a3 >= -180.0)
    {
      goto LABEL_29;
    }

    v18 = fmod(a3 + -180.0, 360.0) + 180.0;
    goto LABEL_28;
  }

  v21 = fmod(a3 + 180.0, 360.0);
  a3 = v21 + -180.0;
  if (v21 + -180.0 == -180.0)
  {
    goto LABEL_28;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v21 + -180.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v22 = fabs(a3);
    v18 = 180.0;
    v23 = fabs(a3 + 180.0);
    if (v22 < 180.0)
    {
      v22 = 180.0;
    }

    if (v22 < 1.0)
    {
      v22 = 1.0;
    }

    if (v23 <= v22 * 2.22044605e-16)
    {
LABEL_28:
      a3 = v18;
    }
  }

LABEL_29:
  v19 = fabs(a4);
  if (v19 == 90.0)
  {
    goto LABEL_30;
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v24 = fabs(v19 + -90.0);
    if (v19 >= 90.0)
    {
      v25 = v19;
    }

    else
    {
      v25 = 90.0;
    }

    if (v25 < 1.0)
    {
      v25 = 1.0;
    }

    if (v24 <= v25 * 2.22044605e-16)
    {
LABEL_30:
      a3 = 0.0;
    }
  }

  if (v7 != a3)
  {
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    v27 = fabs(v7);
    v28 = fabs(a3);
    v29 = vabdd_f64(v7, a3);
    if (v27 < v28)
    {
      v27 = v28;
    }

    if (v27 < 1.0)
    {
      v27 = 1.0;
    }

    if (v29 > v27 * 2.22044605e-16)
    {
      return 0;
    }
  }

  if (a2 == a4)
  {
    return 1;
  }

  result = 0;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v30 = vabdd_f64(a2, a4);
    if (v10 >= v19)
    {
      v19 = v10;
    }

    if (v19 < 1.0)
    {
      v19 = 1.0;
    }

    return v30 <= v19 * 2.22044605e-16;
  }

  return result;
}

uint64_t sub_10000B6C4(double **a1, uint64_t a2)
{
  v190 = 0;
  *(&v185 + *(v185 - 3)) = v4;
  v5 = (&v185 + *(v185 - 3));
  std::ios_base::init(v5, &v186);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  sub_10000D26C(&v186, 16);
  v184 = &v185;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    v8 = 60;
    while ((*v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v6[1] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v6 += 2;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_18;
  }

LABEL_6:
  sub_10000D430(&v184, 0);
  v10 = *a1;
  v9 = a1[1];
  if ((v9 - *a1) < 0x40)
  {
    goto LABEL_7;
  }

  v11 = 0;
  v12 = *a1;
  do
  {
    v13 = v11;
    if (v12 != v9)
    {
      v14 = *v12;
      v15 = v12[1];
      while (sub_10000B2C4(*v12, v12[1], v14, v15))
      {
        v12 += 2;
        if (v12 == v9)
        {
          goto LABEL_16;
        }
      }
    }

    if (v12 == v9)
    {
      break;
    }

    v11 = v13 + 1;
  }

  while (v13 < 4);
LABEL_16:
  if (v13 < 3)
  {
LABEL_17:
    v8 = 11;
    goto LABEL_18;
  }

  v18 = sub_10000B2C4(*v10, v10[1], *(v9 - 2), *(v9 - 1));
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = 20;
  }

  sub_10000D430(&v184, v19);
  if (!v18)
  {
    goto LABEL_19;
  }

  sub_10000D430(&v184, 0);
  if (sub_10000DA1C(*a1, a1[1], &v184))
  {
    goto LABEL_19;
  }

  v20 = *a1;
  v21 = a1[1];
  if ((v21 - *a1) < 0x40)
  {
    goto LABEL_103;
  }

  v22 = v20 + 2;
  if (v20 + 2 == v21)
  {
    goto LABEL_103;
  }

  v23 = 0;
  v24 = 0.0;
  do
  {
    v25 = *(v22 - 2);
    v26 = *v22;
    if (v25 != *v22)
    {
      if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_38;
      }

      v28 = fabs(v25);
      v29 = fabs(v26);
      v30 = vabdd_f64(v25, v26);
      if (v28 >= v29)
      {
        v31 = v28;
      }

      else
      {
        v31 = v29;
      }

      if (v31 < 1.0)
      {
        v31 = 1.0;
      }

      if (v30 > v31 * 2.22044605e-16)
      {
LABEL_38:
        v24 = v24 + sub_10000A33C(v22 - 2, v22);
        v23 += sub_10000A5E4(v22 - 2, v22);
      }
    }

    v22 += 2;
  }

  while (v22 != v21);
  if (v23)
  {
    v32 = ((v23 >> 1) + 1);
    v33 = fabs(v24);
    v34 = -v33;
    v35 = -(v33 - v32 * 6.28318531);
    v36 = -(v34 + v32 * 6.28318531);
    if (v24 <= 0.0)
    {
      v24 = v35;
    }

    else
    {
      v24 = v36;
    }
  }

  if (v24 <= 0.0)
  {
LABEL_103:
    v8 = 22;
    goto LABEL_18;
  }

  sub_10000D430(&v184, 0);
  v37 = a1[3];
  if (v37 != a1[4])
  {
    v178 = a1[4];
    while (1)
    {
      for (i = *v37; i != *(v37 + 1); i += 2)
      {
        v8 = 60;
        if ((*i & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (i[1] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          goto LABEL_18;
        }
      }

      sub_10000D430(&v184, 0);
      v40 = *v37;
      v39 = *(v37 + 1);
      if (v39 - *v37 < 0x40)
      {
        break;
      }

      v180 = v37;
      v41 = 0;
      v42 = *v37;
      do
      {
        v43 = v41;
        if (v42 != v39)
        {
          v44 = *v42;
          v45 = v42[1];
          while (sub_10000B2C4(*v42, v42[1], v44, v45))
          {
            v42 += 2;
            if (v42 == v39)
            {
              goto LABEL_69;
            }
          }
        }

        if (v42 == v39)
        {
          break;
        }

        v41 = v43 + 1;
      }

      while (v43 < 4);
LABEL_69:
      if (v43 < 3)
      {
        goto LABEL_17;
      }

      v46 = sub_10000B2C4(*v40, v40[1], *(v39 - 2), *(v39 - 1));
      if (v46)
      {
        v47 = 0;
      }

      else
      {
        v47 = 20;
      }

      sub_10000D430(&v184, v47);
      if (!v46)
      {
        goto LABEL_19;
      }

      sub_10000D430(&v184, 0);
      if (sub_10000DA1C(*v180, v180[1], &v184))
      {
        goto LABEL_19;
      }

      v48 = *v180;
      v49 = v180[1];
      if ((v49 - *v180) < 0x40)
      {
        goto LABEL_103;
      }

      v50 = v48 + 2;
      if (v48 + 2 == v49)
      {
        goto LABEL_103;
      }

      v51 = 0;
      v52 = 0.0;
      do
      {
        v53 = *(v50 - 2);
        v54 = *v50;
        if (v53 != *v50)
        {
          if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_83;
          }

          v56 = fabs(v53);
          v57 = fabs(v54);
          v58 = vabdd_f64(v53, v54);
          if (v56 >= v57)
          {
            v59 = v56;
          }

          else
          {
            v59 = v57;
          }

          if (v59 < 1.0)
          {
            v59 = 1.0;
          }

          if (v58 > v59 * 2.22044605e-16)
          {
LABEL_83:
            v52 = v52 + sub_10000A33C(v50 - 2, v50);
            v51 += sub_10000A5E4(v50 - 2, v50);
          }
        }

        v50 += 2;
      }

      while (v50 != v49);
      if (v51)
      {
        v60 = (v51 >> 1) + 1;
        v61 = fabs(v52);
        v62 = -v61;
        v63 = -(v61 - v60 * 6.28318531);
        if (v52 <= 0.0)
        {
          v52 = v63;
        }

        else
        {
          v52 = -(v62 + v60 * 6.28318531);
        }
      }

      if (v52 >= 0.0)
      {
        goto LABEL_103;
      }

      sub_10000D430(&v184, 0);
      v37 = (v180 + 3);
      if (v180 + 3 == v178)
      {
        goto LABEL_99;
      }
    }

LABEL_7:
    v8 = 10;
LABEL_18:
    sub_10000D430(&v184, v8);
LABEL_19:
    v16 = 0;
    goto LABEL_20;
  }

LABEL_99:
  v193 = 0u;
  v194 = 0u;
  v192 = 0u;
  v195 = 0;
  v205 = 0;
  v204 = 0;
  v206 = 0;
  sub_10000E064(a1, &v204, 0);
  *&v216.f64[0] = a1;
  *&v216.f64[1] = &v191;
  v217.i64[0] = &v195 + 1;
  v217.i64[1] = &v192;
  v218 = &v195;
  LODWORD(v219) = 0;
  BYTE4(v219) = 1;
  v64 = v204;
  v65 = v205;
  if (0xEEEEEEEEEEEEEEEFLL * ((v205 - v204) >> 3) < 0x11)
  {
LABEL_104:
    while (v64 != v65)
    {
      v66 = v64;
      v64 = (v64 + 120);
      v67 = v64;
      if (v64 != v65)
      {
        while ((sub_10000E720(&v216, v66, v67) & 1) != 0)
        {
          v67 += 15;
          v65 = v205;
          if (v67 == v205)
          {
            goto LABEL_104;
          }
        }

        break;
      }
    }
  }

  else
  {
    v208 = 0;
    v207 = 0;
    v209 = 0;
    v213 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v214 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    while (1)
    {
      v202[0] = v64;
      if (v64 == v65)
      {
        break;
      }

      sub_10001911C(&v213, v64 + 2);
      sub_100019324(&v207, v202);
      v64 = (v64 + 120);
    }

    sub_100019424(v213.i64, &v207, 0, &v216);
    if (v207)
    {
      operator delete(v207);
    }
  }

  if (v204)
  {
    operator delete(v204);
  }

  if (v195 == 1)
  {
    sub_10000D430(&v184, 21);
    v68 = v184;
    v69 = v194;
    v70 = v194 / 0x14;
    v71 = *(*(&v192 + 1) + 8 * (v194 / 0x14));
    sub_10000D6F4(v184, ". A self-intersection point was found at ", 41);
    sub_10000D63C(&v213, ", ");
    sub_10000D63C(&v207, "(");
    sub_10000D63C(&v204, ")");
    sub_10000D63C(v202, ", ");
    sub_10000D63C(v200, "(");
    sub_10000D63C(v198, ")");
    sub_10000D63C(v196, ", ");
    v72 = (v71 + 200 * (v69 - 20 * v70));
    sub_10002EA58(&v216, v72, &v213, &v207, &v204, v202, v200, v198, v196);
    sub_10002EEE0(v68, *&v216.f64[0], &v216.f64[1]);
    std::ostream::flush();
    if (v230 < 0)
    {
      operator delete(v229);
    }

    if (v228 < 0)
    {
      operator delete(v227);
    }

    if (v226 < 0)
    {
      operator delete(v225);
    }

    if (v224 < 0)
    {
      operator delete(v223);
    }

    if (v222 < 0)
    {
      operator delete(v221);
    }

    if (SHIBYTE(v220) < 0)
    {
      operator delete(v218);
    }

    if (v217.i8[15] < 0)
    {
      operator delete(*&v216.f64[1]);
    }

    if (v197 < 0)
    {
      operator delete(v196[0]);
    }

    if (v199 < 0)
    {
      operator delete(v198[0]);
    }

    if (v201 < 0)
    {
      operator delete(v200[0]);
    }

    if (v203 < 0)
    {
      operator delete(v202[0]);
    }

    if (SHIBYTE(v206) < 0)
    {
      operator delete(v204);
    }

    if (SHIBYTE(v209) < 0)
    {
      operator delete(v207);
    }

    if (v214.i8[7] < 0)
    {
      operator delete(v213.i64[0]);
    }

    sub_10000D6F4(v68, "; method: ", 10);
    v73 = v72[4];
    if (v73 > 8)
    {
      v74 = 63;
    }

    else
    {
      v74 = aDitmces[v73];
    }

    LOBYTE(v216.f64[0]) = v74;
    sub_10000D6F4(v68, &v216, 1);
    sub_10000D6F4(v68, "; operations: ", 14);
    v83 = v72[10];
    if (v83 >= 6)
    {
      v84 = 63;
    }

    else
    {
      v84 = 0x6F637869752DuLL >> (8 * v83);
    }

    LOBYTE(v216.f64[0]) = v84;
    sub_10000D6F4(v68, &v216, 1);
    sub_10000D6F4(v68, "/", 1);
    v85 = v72[30];
    if (v85 >= 6)
    {
      v86 = 63;
    }

    else
    {
      v86 = 0x6F637869752DuLL >> (8 * v85);
    }

    LOBYTE(v216.f64[0]) = v86;
    sub_10000D6F4(v68, &v216, 1);
    sub_10000D6F4(v68, "; segment IDs {source, multi, ring, segment}: ", 46);
    sub_10000D6F4(v68, "{", 1);
    v87 = std::ostream::operator<<();
    sub_10000D6F4(v87, ", ", 2);
    v88 = std::ostream::operator<<();
    sub_10000D6F4(v88, ", ", 2);
    v89 = std::ostream::operator<<();
    sub_10000D6F4(v89, ", ", 2);
    v90 = std::ostream::operator<<();
    sub_10000D6F4(v90, "}", 1);
    sub_10000D6F4(v68, "/", 1);
    sub_10000D6F4(v68, "{", 1);
    v91 = std::ostream::operator<<();
    sub_10000D6F4(v91, ", ", 2);
    v92 = std::ostream::operator<<();
    sub_10000D6F4(v92, ", ", 2);
    v93 = std::ostream::operator<<();
    sub_10000D6F4(v93, ", ", 2);
    v94 = std::ostream::operator<<();
    sub_10000D6F4(v94, "}", 1);
    goto LABEL_250;
  }

  sub_10000D430(&v184, 0);
  v173 = *(&v192 + 1) + 8 * (v194 / 0x14);
  if (v193 == *(&v192 + 1))
  {
    v171 = 0;
    v78 = a1[3];
    v79 = a1[4];
    v209 = 0;
    v208 = 0;
    v176 = 0;
    v207 = &v208;
    v170 = 1;
  }

  else
  {
    v75 = *(*(&v192 + 1) + 8 * (v194 / 0x14));
    v76 = v75 + 200 * (v194 % 0x14);
    v77 = *(*(&v192 + 1) + 8 * ((*(&v194 + 1) + v194) / 0x14uLL)) + 200 * ((*(&v194 + 1) + v194) % 0x14uLL);
    v78 = a1[3];
    v79 = a1[4];
    v209 = 0;
    v208 = 0;
    v176 = v77;
    v207 = &v208;
    v171 = v76;
    if (v76 != v77)
    {
      v80 = (*(&v192 + 1) + 8 * (v194 / 0x14));
      while (1)
      {
        v81 = (v76 + 144);
        if (*(v76 + 64) == -1)
        {
          goto LABEL_150;
        }

        if (*v81 == -1)
        {
          break;
        }

LABEL_151:
        v76 += 200;
        if (v76 - *v80 == 4000)
        {
          v82 = v80[1];
          ++v80;
          v76 = v82;
        }

        if (v76 == v176)
        {
          v170 = 0;
          goto LABEL_165;
        }
      }

      v81 = (v76 + 64);
LABEL_150:
      sub_1000332D0(&v207, *v81, v81);
      goto LABEL_151;
    }

    v170 = 1;
    v176 = v75 + 200 * (v194 % 0x14);
  }

LABEL_165:
  v181 = v78;
  v175 = v79;
  if (v78 != v79)
  {
    v95 = 0;
    for (j = v78; j != v79; j += 3)
    {
      v97 = v208;
      if (!v208)
      {
        goto LABEL_174;
      }

      v98 = &v208;
      do
      {
        if (v97[4] >= v95)
        {
          v98 = v97;
        }

        v97 = v97[v97[4] < v95];
      }

      while (v97);
      if (v98 == &v208 || v95 < v98[4])
      {
LABEL_174:
        v99 = *a1;
        v100 = a1[1];
        if ((v100 - *a1) < 0x40 || (v101 = *j, v216 = 0uLL, v217.i8[0] = 0, v99 + 2 == v100))
        {
LABEL_215:
          sub_10000D430(&v184, 30);
          sub_10000A2F0(v208);
LABEL_250:
          v16 = 0;
          goto LABEL_251;
        }

        v174 = j;
        do
        {
          if (!sub_100016EF0(v101, v99, v99 + 2, &v216))
          {
            break;
          }

          v102 = v99 + 4;
          v99 += 2;
        }

        while (v102 != v100);
        j = v174;
        if ((v217.i8[0] & 1) == 0)
        {
          if (LODWORD(v216.f64[1]) && HIDWORD(v216.f64[1]) && SLODWORD(v216.f64[1]) >= 1)
          {
            if (!(LODWORD(v216.f64[0]) + HIDWORD(v216.f64[0])))
            {
              goto LABEL_215;
            }
          }

          else if (!LODWORD(v216.f64[0]))
          {
            goto LABEL_215;
          }
        }

        v79 = v175;
      }

      ++v95;
    }
  }

  v104 = v171;
  v103 = v173;
  if ((v170 & 1) == 0)
  {
    do
    {
      sub_1000332D0(&v207, *(v104 + 64), (v104 + 64));
      sub_1000332D0(&v207, *(v104 + 144), (v104 + 144));
      v104 += 200;
      if (v104 - *v103 == 4000)
      {
        v105 = v103[1];
        ++v103;
        v104 = v105;
      }
    }

    while (v104 != v176);
  }

  if (v181 == v79)
  {
    v106 = 0;
    v107 = 0;
  }

  else
  {
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = 0;
    do
    {
      v110 = v208;
      if (!v208)
      {
        goto LABEL_201;
      }

      v111 = &v208;
      do
      {
        if (v110[4] >= v109)
        {
          v111 = v110;
        }

        v110 = v110[v110[4] < v109];
      }

      while (v110);
      if (v111 == &v208 || v109 < v111[4])
      {
LABEL_201:
        v112 = 0xAAAAAAAAAAAAAAABLL * ((v108 - v106) >> 4);
        v113 = v112 + 1;
        if (v112 + 1 > 0x555555555555555)
        {
          sub_10002E420();
        }

        if (0x5555555555555556 * (-v106 >> 4) > v113)
        {
          v113 = 0x5555555555555556 * (-v106 >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v106 >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v114 = 0x555555555555555;
        }

        else
        {
          v114 = v113;
        }

        if (v114)
        {
          if (v114 <= 0x555555555555555)
          {
            operator new();
          }

          sub_10001A5DC();
        }

        v115 = 48 * v112;
        *v115 = v181;
        *(v115 + 40) = 0;
        v108 = 48 * v112 + 48;
        v116 = v107 - v106;
        v117 = (v115 + 48 * ((v107 - v106) / -48));
        memcpy(v117, v106, v116);
        if (v106)
        {
          operator delete(v106);
        }

        v106 = v117;
        v107 = v108;
      }

      ++v109;
      v181 += 3;
    }

    while (v181 != v175);
  }

  LOBYTE(v204) = 0;
  v205 = &v191;
  if (0xAAAAAAAAAAAAAAABLL * ((v107 - v106) >> 4) < 0x11)
  {
    if (v106 == v107 || (v120 = (v106 + 48), (v106 + 48) == v107))
    {
LABEL_242:
      v127 = 0;
      v128 = 1;
      goto LABEL_245;
    }

    v121 = v106;
    v182 = v106;
    while (2)
    {
      v122 = v121;
      v121 = v120;
      v123 = v120;
      do
      {
        v124 = *v122;
        v125 = *v123;
        strcpy(&v216, "FFFFFFFFF");
        sub_100035B80(v124, v125, &v216, &v191);
        if (BYTE1(v216.f64[1]) != 1)
        {
          v126 = LOBYTE(v216.f64[0]) != 84 && LOBYTE(v216.f64[0]) - 48 >= 0xA;
          if (!v126 || BYTE1(v216.f64[0]) == 84 || BYTE1(v216.f64[0]) - 48 <= 9 || BYTE3(v216.f64[0]) == 84 || BYTE3(v216.f64[0]) - 48 < 0xA)
          {
            LOBYTE(v204) = 1;
            v106 = v182;
            goto LABEL_244;
          }
        }

        v123 += 6;
      }

      while (v123 != v107);
      v127 = 0;
      v120 = v121 + 6;
      v128 = 1;
      v106 = v182;
      if (v121 + 6 != v107)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v213 = 0uLL;
    v214.i64[0] = 0;
    v216 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v217 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v202[0] = v106;
    if (v106 != v107)
    {
      v118 = v106;
      do
      {
        v119 = sub_100033918(v118);
        sub_10001911C(&v216, v119);
        sub_100019324(&v213, v202);
        v118 += 6;
        v202[0] = v118;
      }

      while (v118 != v107);
    }

    sub_1000333E8(v216.f64, &v213, 0, &v204);
    if (v213.i64[0])
    {
      operator delete(v213.i64[0]);
    }

    if ((v204 & 1) == 0)
    {
      goto LABEL_242;
    }

LABEL_244:
    v128 = 0;
    v127 = 31;
  }

LABEL_245:
  sub_10000D430(&v184, v127);
  if (v106)
  {
    operator delete(v106);
    sub_10000A2F0(v208);
    if ((v128 & 1) == 0)
    {
      goto LABEL_250;
    }
  }

  else
  {
    sub_10000A2F0(v208);
    if (!v128)
    {
      goto LABEL_250;
    }
  }

  v129 = v194 / 0x14;
  if (v193 == *(&v192 + 1))
  {
    v130 = 0;
    v179 = 0;
  }

  else
  {
    v130 = *(*(&v192 + 1) + 8 * v129) + 200 * (v194 % 0x14);
    v179 = *(*(&v192 + 1) + 8 * ((*(&v194 + 1) + v194) / 0x14uLL)) + 200 * ((*(&v194 + 1) + v194) % 0x14uLL);
  }

  v131 = 0xAAAAAAAAAAAAAAABLL * (a1[4] - a1[3]);
  v219 = 0;
  v218 = 0;
  v217.i64[1] = 0;
  v217.i64[0] = &v217.i64[1];
  v221 = 0;
  v220 = 0;
  v213.i64[0] = &v219;
  v213.i8[8] = 0;
  v216 = (v131 + 1);
  if (v131 != -1)
  {
    if (v131 + 1 <= 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000116D0(v131 + 1);
    }

    sub_10002E420();
  }

  if (v130 != v179)
  {
    v132 = *(&v192 + 1) + 8 * v129;
    do
    {
      v213 = (*(v130 + 64) + 1);
      v133 = sub_10003F914(&v217, v213.u64[0], 0, &v213);
      v183 = v132;
      v213 = (*(v130 + 144) + 1);
      v134 = sub_10003F914(&v217, v213.u64[0], 0, &v213);
      v213.i64[0] = *&v216.f64[1] + *&v216.f64[0];
      v213.i64[1] = v130;
      v135 = sub_10003F914(&v217, *&v216.f64[1] + *&v216.f64[0], v130, &v213);
      if (v136)
      {
        v213.i64[1] = 0;
        v214.i64[0] = 0;
        v213.i64[0] = &v213.i64[1];
        v137 = v220;
        if (v220 >= v221)
        {
          v177 = 0xAAAAAAAAAAAAAAABLL * ((v220 - v219) >> 3);
          v139 = v177 + 1;
          if (v177 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10002E420();
          }

          if (0x5555555555555556 * ((v221 - v219) >> 3) > v139)
          {
            v139 = 0x5555555555555556 * ((v221 - v219) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v221 - v219) >> 3) >= 0x555555555555555)
          {
            v140 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v140 = v139;
          }

          if (v140)
          {
            sub_1000116D0(v140);
          }

          v141 = 8 * ((v220 - v219) >> 3);
          *v141 = &v213.i64[1];
          *(v141 + 8) = v213.i64[1];
          *(v141 + 16) = 0;
          *v141 = 24 * v177 + 8;
          v142 = v220;
          v143 = v219;
          v144 = v220 - v219;
          if (v220 != v219)
          {
            v172 = v220 - v219;
            v145 = 0;
            v146 = -8 * ((v220 - v219) >> 3) + 24 * v177;
            do
            {
              v147 = (v146 + v145);
              *v147 = *&v143[v145];
              v148 = &v143[v145 + 8];
              v149 = *v148;
              *(v146 + v145 + 8) = *v148;
              v150 = v146 + v145 + 8;
              v151 = *&v143[v145 + 16];
              v147[2] = v151;
              if (v151)
              {
                *(v149 + 16) = v150;
                *&v143[v145] = v148;
                *v148 = 0;
                *&v143[v145 + 16] = 0;
              }

              else
              {
                *v147 = v150;
              }

              v145 += 24;
            }

            while (&v143[v145] != v142);
            do
            {
              sub_10000A2F0(*(v143 + 1));
              v143 += 24;
            }

            while (v143 != v142);
            v143 = v219;
            v140 = 0;
            v141 = 24 * v177;
            v144 = v172;
          }

          v138 = (v141 + 24);
          v219 = (v141 - v144);
          v220 = (v141 + 24);
          v221 = v140;
          if (v143)
          {
            operator delete(v143);
          }
        }

        else
        {
          *v220 = &v213.i64[1];
          *(v137 + 1) = v213.i64[1];
          *(v137 + 2) = 0;
          *v137 = v137 + 8;
          v138 = v137 + 24;
        }

        v220 = v138;
        sub_10000A2F0(v213.i64[1]);
        ++*&v216.f64[1];
      }

      v213.i64[0] = v133;
      v207 = v135;
      sub_10003FCD8(v219 + 3 * v133[4], v135, &v207);
      sub_10003FCD8(v219 + 3 * v135[4], v133, v213.i64);
      v213.i64[0] = v134;
      v207 = v135;
      sub_10003FCD8(v219 + 3 * v134[4], v135, &v207);
      sub_10003FCD8(v219 + 3 * v135[4], v134, v213.i64);
      v130 += 200;
      v132 = v183;
      if (v130 - *v183 == 4000)
      {
        v132 = (v183 + 1);
        v130 = v183[1];
      }
    }

    while (v130 != v179);
  }

  v209 = 0;
  v207 = 0;
  v208 = 0;
  v152 = *&v216.f64[1] + *&v216.f64[0];
  if (*&v216.f64[1] + *&v216.f64[0])
  {
    if ((v152 & 0x8000000000000000) == 0)
    {
      sub_100011728(((v152 - 1) >> 6) + 1);
    }

    sub_10002E420();
  }

  v211 = 0;
  v210 = 0;
  v212 = 0;
  v153 = v217.i64[0];
  if (v217.i64[0] == &v217.u64[1])
  {
LABEL_313:
    v168 = 0;
    goto LABEL_315;
  }

  v154 = 0uLL;
  while (((*((v153[4] >> 3) & 0x1FFFFFFFFFFFFFF8) >> v153[4]) & 1) != 0)
  {
LABEL_307:
    v166 = v153[1];
    if (v166)
    {
      do
      {
        v167 = v166;
        v166 = *v166;
      }

      while (v166);
    }

    else
    {
      do
      {
        v167 = v153[2];
        v165 = *v167 == v153;
        v153 = v167;
      }

      while (!v165);
    }

    v153 = v167;
    if (v167 == &v217.u64[1])
    {
      goto LABEL_313;
    }
  }

  v204 = v153;
  v214 = v154;
  v215 = v154;
  v213 = v154;
  sub_10003FDB0(&v213, &v204);
  do
  {
LABEL_290:
    if (!v215.i64[1])
    {
      sub_100040230(&v213);
      v154 = 0uLL;
      goto LABEL_307;
    }

    v155 = v214.i64[0];
    v156 = ((v214.i64[0] - v213.i64[1]) << 6) - 1;
    if (v214.i64[0] == v213.i64[1])
    {
      v156 = 0;
    }

    v157 = v215.i64[0] + v215.i64[1] - 1;
    v158 = *(*(v213.i64[1] + ((v157 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v157 & 0x1FF));
    --v215.i64[1];
    if (v156 - v157 >= 0x400)
    {
      operator delete(*(v214.i64[0] - 8));
      v214.i64[0] = v155 - 8;
    }

    *((*(v158 + 32) >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << *(v158 + 32);
    v159 = *(v158 + 32);
    v160 = v219 + 24 * v159;
    v161 = *v160;
  }

  while (*v160 == v160 + 1);
  while (1)
  {
    v162 = *(v161[4] + 32);
    if (v162 == *(8 * v159))
    {
      goto LABEL_299;
    }

    if ((*((v162 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v162))
    {
      break;
    }

    *(8 * v162) = v159;
    sub_10003FDB0(&v213, v161 + 4);
LABEL_299:
    v163 = v161[1];
    if (v163)
    {
      do
      {
        v164 = v163;
        v163 = *v163;
      }

      while (v163);
    }

    else
    {
      do
      {
        v164 = v161[2];
        v165 = *v164 == v161;
        v161 = v164;
      }

      while (!v165);
    }

    v159 = *(v158 + 32);
    v161 = v164;
    if (v164 == (v219 + 24 * v159 + 8))
    {
      goto LABEL_290;
    }
  }

  sub_100040230(&v213);
  operator delete(0);
  v168 = 1;
LABEL_315:
  if (v168)
  {
    v169 = 32;
  }

  else
  {
    v169 = 0;
  }

  sub_10000D430(&v184, v169);
  v16 = v168 ^ 1u;
  v213.i64[0] = &v219;
  sub_100011770(&v213);
  sub_10000A2F0(v217.i64[1]);
LABEL_251:
  sub_1000117F8(&v192);
LABEL_20:
  std::stringbuf::str();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v216;
  *(a2 + 16) = v217.i64[0];
  if (v188 < 0)
  {
    operator delete(v187[7].__locale_);
  }

  std::locale::~locale(v187);
  std::ostream::~ostream();
  std::ios::~ios();
  return v16;
}

void sub_10000D060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_100040230(&STACK[0x250]);
  sub_1000402FC(&STACK[0x220]);
  sub_10004033C(&STACK[0x280]);
  sub_1000117F8(&a55);
  sub_100040380(&a21);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10000D26C(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_10000D328(a1);
  return a1;
}

void sub_10000D300(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_10000D328(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_10000D430(std::string **a1, int a2)
{
  v4 = *a1;
  sub_10000D63C(&__str, "");
  std::string::operator=(v4 + 3, &__str);
  sub_10000D328(&v4->__r_.__value_.__l.__size_);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::ios_base::clear((*a1 + *((*a1)->__r_.__value_.__r.__words[0] - 24)), 0);
  v5 = *a1;
  if (a2 > 21)
  {
    if (a2 <= 31)
    {
      switch(a2)
      {
        case 22:
          v6 = "Geometry has wrong orientation";
          goto LABEL_36;
        case 30:
          v6 = "Geometry has interior rings defined outside the outer boundary";
          goto LABEL_36;
        case 31:
          v6 = "Geometry has nested interior rings";
          goto LABEL_36;
      }
    }

    else if (a2 > 49)
    {
      if (a2 == 50)
      {
        v6 = "Box has corners in wrong order";
        goto LABEL_36;
      }

      if (a2 == 60)
      {
        v6 = "Geometry has point(s) with invalid coordinate(s)";
        goto LABEL_36;
      }
    }

    else
    {
      if (a2 == 32)
      {
        v6 = "Geometry has disconnected interior";
        goto LABEL_36;
      }

      if (a2 == 40)
      {
        v6 = "Multi-polygon has intersecting interiors";
        goto LABEL_36;
      }
    }

    goto LABEL_35;
  }

  if (a2 <= 11)
  {
    switch(a2)
    {
      case 0:
        v6 = "Geometry is valid";
        goto LABEL_36;
      case 10:
        v6 = "Geometry has too few points";
        goto LABEL_36;
      case 11:
        v6 = "Geometry has wrong topological dimension";
        goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (a2 <= 19)
  {
    if (a2 == 12)
    {
      v6 = "Geometry has spikes";
      goto LABEL_36;
    }

    if (a2 == 13)
    {
      v6 = "Geometry has duplicate (consecutive) points";
      goto LABEL_36;
    }

LABEL_35:
    v6 = "";
    goto LABEL_36;
  }

  if (a2 == 20)
  {
    v6 = "Geometry is defined as closed but is open";
  }

  else
  {
    v6 = "Geometry has invalid self-intersections";
  }

LABEL_36:
  v7 = strlen(v6);
  return sub_10000D6F4(v5, v6, v7);
}

void sub_10000D620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10000D63C(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10002E7A8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void *sub_10000D6F4(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v20 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_10002E7A8();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_10000D99C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x10000D970);
}

uint64_t sub_10000DA1C(double *a1, double *a2, std::string **a3)
{
  v6 = a1;
  if (a1 != a2)
  {
    v6 = a1 + 2;
    if (a1 + 2 == a2)
    {
      goto LABEL_37;
    }

    v7 = *a1;
    v8 = a1[1];
    while (sub_10000B2C4(*v6, v6[1], v7, v8))
    {
      v6 += 2;
      if (v6 == a2)
      {
        goto LABEL_37;
      }
    }
  }

  if (v6 != a2)
  {
    v9 = v6 + 2;
    if (v6 + 2 != a2)
    {
      v10 = *v6;
      v11 = v6[1];
      while (sub_10000B2C4(*v9, v9[1], v10, v11))
      {
        v9 += 2;
        if (v9 == a2)
        {
          goto LABEL_37;
        }
      }

      if (v9 != a2)
      {
        v12 = a1;
        while (1)
        {
          v13 = v9;
          if (!sub_10000DCA4(v9, v6, v12))
          {
            v14 = *v9;
            v15 = *v12;
            v33 = *v6;
            v34 = v14;
            v32 = v15;
            if (sub_100018888(&v34, &v33, &v32) <= 0)
            {
              break;
            }
          }

          if (v9 != a2)
          {
            v9 += 2;
            if (v13 + 2 == a2)
            {
              goto LABEL_24;
            }

            v16 = *v13;
            v17 = v13[1];
            while (sub_10000B2C4(*v9, v9[1], v16, v17))
            {
              v9 += 2;
              if (v9 == a2)
              {
                goto LABEL_24;
              }
            }
          }

          v12 = v6;
          v6 = v13;
          if (v9 == a2)
          {
LABEL_24:
            v19 = *(a2 - 2);
            v20 = *(a2 - 1);
            v18 = a2 - 2;
            v21 = *a1;
            v22 = a1[1];
            if (!sub_10000B2C4(*a1, v22, v19, v20))
            {
              goto LABEL_37;
            }

            v23 = a1;
            i = a1;
            if (a1 != a2)
            {
              while (v18 != a1)
              {
                v25 = *(v18 - 2);
                v26 = *(v18 - 1);
                v18 -= 2;
                if (!sub_10000B2C4(v25, v26, v19, v20))
                {
                  v23 = v18 + 2;
                  goto LABEL_30;
                }
              }

              v23 = a1;
LABEL_30:
              for (i = a1 + 2; i != a2; i += 2)
              {
                if (!sub_10000B2C4(*i, i[1], v21, v22))
                {
                  goto LABEL_35;
                }
              }

              i = a2;
            }

LABEL_35:
            if (sub_10000DCA4(i, a1, v23 - 2))
            {
              goto LABEL_37;
            }

            v27 = *i;
            v28 = *(v23 - 1);
            v33 = *a1;
            v34 = v27;
            v32 = v28;
            if (sub_100018888(&v34, &v33, &v32) > 0)
            {
              goto LABEL_37;
            }

            sub_10000D430(a3, 12);
            v30 = *a3;
            v31 = a1;
LABEL_40:
            sub_10002E7C0(v30, v31);
            return 1;
          }
        }

        sub_10000D430(a3, 12);
        v30 = *a3;
        v31 = v6;
        goto LABEL_40;
      }
    }
  }

LABEL_37:
  sub_10000D430(a3, 0);
  return 0;
}

uint64_t sub_10000DCA4(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v39 = a1;
    v41 = a2;
    v46 = a3;
    v29 = __cxa_guard_acquire(&qword_1000B2BA0);
    a2 = v41;
    a3 = v46;
    v30 = v29;
    a1 = v39;
    if (v30)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      a1 = v39;
      a2 = v41;
      a3 = v46;
    }
  }

  v4 = *&qword_1000B2B98;
  v5 = a1[1];
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v42 = a2;
    v47 = a3;
    v31 = __cxa_guard_acquire(&qword_1000B2BA0);
    a2 = v42;
    a3 = v47;
    if (v31)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      a2 = v42;
      a3 = v47;
    }
  }

  v6 = *&qword_1000B2B98;
  v7 = *a2;
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v43 = a2;
    v48 = a3;
    v32 = __cxa_guard_acquire(&qword_1000B2BA0);
    a2 = v43;
    a3 = v48;
    if (v32)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      a2 = v43;
      a3 = v48;
    }
  }

  v8 = *&qword_1000B2B98;
  v9 = a2[1];
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v49 = a3;
    v33 = v8;
    v34 = __cxa_guard_acquire(&qword_1000B2BA0);
    v8 = v33;
    a3 = v49;
    if (v34)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      v8 = v33;
      a3 = v49;
    }
  }

  v10 = *&qword_1000B2B98;
  v11 = *a3;
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v50 = a3;
    v35 = v8;
    v40 = v10;
    v44 = v11;
    v36 = __cxa_guard_acquire(&qword_1000B2BA0);
    v10 = v40;
    v11 = v44;
    v8 = v35;
    a3 = v50;
    if (v36)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      v10 = v40;
      v11 = v44;
      v8 = v35;
      a3 = v50;
    }
  }

  v12 = v3 * v4;
  v13 = v5 * v6;
  v14 = v7 * v8;
  v15 = v9 * v10;
  v45 = v11 * *&qword_1000B2B98;
  v16 = a3[1];
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v37 = v5 * v6;
    v38 = __cxa_guard_acquire(&qword_1000B2BA0);
    v13 = v37;
    if (v38)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      v13 = v37;
    }
  }

  v17 = v16 * *&qword_1000B2B98;
  v18 = __sincos_stret(v13);
  v19 = __sincos_stret(v12);
  v20 = __sincos_stret(v15);
  v21 = __sincos_stret(v14);
  v22 = __sincos_stret(v17);
  v23 = __sincos_stret(v45);
  v24 = v23.__sinval * ((v18.__sinval * (v21.__cosval * v20.__cosval) - v19.__cosval * v18.__cosval * v20.__sinval) * v22.__cosval) + (v19.__sinval * v18.__cosval * v20.__sinval - v18.__sinval * (v21.__sinval * v20.__cosval)) * v22.__cosval * v23.__cosval + (v19.__cosval * v18.__cosval * (v21.__sinval * v20.__cosval) - v19.__sinval * v18.__cosval * (v21.__cosval * v20.__cosval)) * v22.__sinval;
  if (v24 == 0.0)
  {
    return 0;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v23.__sinval * ((v18.__sinval * (v21.__cosval * v20.__cosval) - v19.__cosval * v18.__cosval * v20.__sinval) * v22.__cosval) + (v19.__sinval * v18.__cosval * v20.__sinval - v18.__sinval * (v21.__sinval * v20.__cosval)) * v22.__cosval * v23.__cosval + (v19.__cosval * v18.__cosval * (v21.__sinval * v20.__cosval) - v19.__sinval * v18.__cosval * (v21.__cosval * v20.__cosval)) * v22.__sinval)) < 0x7FF0000000000000)
  {
    v26 = fabs(v24);
    v27 = 1.0;
    if (v26 >= 1.0)
    {
      v27 = v26;
    }

    v28 = v27 * 2.22044605e-16;
    if (v24 > 0.0)
    {
      result = 1;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }

    if (v26 <= v28)
    {
      return 0;
    }
  }

  else if (v24 > 0.0)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_10000E064(double **result, float64x2_t **a2, unsigned int a3)
{
  a2[1] = *a2;
  v5 = a3;
  v6 = *result;
  v7 = result[1];
  if ((v7 - *result) >= 0x11)
  {
    *&v25 = v5;
    *(&v25 + 1) = -1;
    v26 = -1;
    sub_10000E174(a2, v6, v7, &v25);
  }

  v9 = result[3];
  v8 = result[4];
  if (v9 != v8)
  {
    v10 = 0;
    do
    {
      v11 = *v9;
      v12 = v9[1];
      if ((v12 - *v9) >= 0x11)
      {
        *&v25 = v5;
        *(&v25 + 1) = -1;
        v26 = v10;
        sub_10000E174(a2, v11, v12, &v25);
        v8 = result[4];
      }

      v9 += 3;
      ++v10;
    }

    while (v9 != v8);
  }

  v13 = *a2;
  v14 = a2[1];
  if (*a2 != v14)
  {
    __asm { FMOV            V0.2D, #1.0 }

    do
    {
      v20 = v13[2];
      v21 = v13[3];
      v22 = vabsq_f64(v20);
      v23 = vsubq_f64(v20, vmulq_f64(vbslq_s8(vcgtq_f64(_Q0, v22), _Q0, v22), xmmword_100092570));
      v24 = vabsq_f64(v21);
      v13[2] = v23;
      v13[3] = vaddq_f64(v21, vmulq_f64(vbslq_s8(vcgtq_f64(_Q0, v24), _Q0, v24), xmmword_100092570));
      v13 = (v13 + 120);
    }

    while (v13 != v14);
  }
}

void sub_10000E174(void *a1, double *a2, double *a3, __int128 *a4)
{
  if (a3 == a2)
  {
    return;
  }

  v5 = a1;
  *(&v50 + 1) = -1;
  v51 = -1;
  v54 = -1;
  v55 = 0xFFFFFFFFFFFFFFFFLL;
  v56 = 0;
  v57 = 0;
  v58 = -1;
  v59 = 0;
  v44 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v45 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v52 = v45;
  v53 = v44;
  v49 = 0;
  *&v50 = -1;
  v6 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v7 = a2 + 2;
  if (a2 + 2 == a3)
  {
    goto LABEL_83;
  }

  v43 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v9 = 0;
  v10 = 0;
  v47 = (a3 - a2) >> 4;
  v11 = *a2;
  v12 = a2[1];
  v13 = 1;
  v48 = 1;
  do
  {
    v15 = *v7;
    v14 = v7[1];
    v16 = vabdd_f64(*v7, v11);
    v17 = 180.0;
    if (v16 == 180.0)
    {
      goto LABEL_5;
    }

    v18 = v15 - v11;
    if (COERCE__INT64(fabs(v15 - v11)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v24 = fabs(v16 + -180.0);
      v17 = 180.0;
      if (v16 < 180.0)
      {
        v16 = 180.0;
      }

      if (v16 < 1.0)
      {
        v16 = 1.0;
      }

      if (v24 <= v16 * 2.22044605e-16)
      {
        goto LABEL_5;
      }
    }

    if (v18 <= 180.0)
    {
      if (v18 < -180.0)
      {
        v17 = fmod(v18 + -180.0, 360.0) + 180.0;
LABEL_5:
        v18 = v17;
      }
    }

    else
    {
      v18 = fmod(v18 + 180.0, 360.0) + -180.0;
      v17 = 180.0;
      if (v18 == -180.0)
      {
        goto LABEL_5;
      }

      if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v25 = fabs(v18);
        v26 = fabs(v18 + 180.0);
        if (v25 < 180.0)
        {
          v25 = 180.0;
        }

        if (v25 < 1.0)
        {
          v25 = 1.0;
        }

        v27 = v26 > v25 * 2.22044605e-16;
        v17 = 180.0;
        if (!v27)
        {
          goto LABEL_5;
        }
      }
    }

    if (v18 >= 0.0)
    {
      v19 = 0;
    }

    else
    {
      v19 = -1;
    }

    if (v18 > 0.0)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    if (v14 >= v12)
    {
      v21 = 0;
    }

    else
    {
      v21 = -1;
    }

    if (v14 > v12)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    if (!v20)
    {
      if (v11 == v15)
      {
        goto LABEL_55;
      }

      if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v28 = fabs(v11);
        v29 = fabs(v15);
        v30 = vabdd_f64(v11, v15);
        if (v28 < v29)
        {
          v28 = v29;
        }

        if (v28 < 1.0)
        {
          v28 = 1.0;
        }

        if (v30 <= v28 * 2.22044605e-16)
        {
LABEL_55:
          if (v12 == v14)
          {
            goto LABEL_21;
          }

          if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v31 = fabs(v12);
            v32 = fabs(v14);
            v33 = vabdd_f64(v12, v14);
            if (v31 < v32)
            {
              v31 = v32;
            }

            if (v31 < 1.0)
            {
              v31 = 1.0;
            }

            if (v33 <= v31 * 2.22044605e-16)
            {
LABEL_21:
              v23 = 1;
              v20 = -99;
              v22 = -99;
              if (!v9)
              {
                goto LABEL_67;
              }

              goto LABEL_58;
            }
          }
        }
      }

      v20 = 0;
    }

    v23 = 0;
    if (!v9)
    {
      goto LABEL_67;
    }

LABEL_58:
    if (v20 != v49 || v9 > 0xA || v22 != HIDWORD(v49))
    {
      if ((v57 & 1) == 0)
      {
        v43 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
      }

      sub_100008824(a1, &v49);
      v55 = xmmword_100092580;
      v49 = 0;
      v52 = v45;
      v53 = v44;
      v59 = 0;
LABEL_67:
      v50 = *a4;
      v51 = *(a4 + 2);
      v57 = v23;
      v58 = v10;
      v54 = v13 - 1;
      v56 = v47;
      if (!(v23 & 1 | ((v48 & 1) == 0)))
      {
        v48 = 0;
        LOBYTE(v59) = 1;
      }

      v49 = __PAIR64__(v22, v20);
      sub_100006DA8(v52.f64, v11, v12, v15, v14);
      goto LABEL_70;
    }

    sub_100006DA8(v64, v11, v12, v15, v14);
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v52, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)), vceqq_f64(v53, vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL)))))))
    {
      v62 = v52.f64[1];
      v63 = v52.f64[0];
      v60 = v53.f64[1];
      v61 = v53.f64[0];
      v34 = vabdd_f64(v52.f64[0], v53.f64[0]);
      if (v34 < 360.0)
      {
        v40 = vabdd_f64(360.0, v34);
        v41 = fmax(v34, 360.0);
        if (v41 < 1.0)
        {
          v41 = 1.0;
        }

        v35 = v40 <= v41 * 2.22044605e-16;
      }

      else
      {
        v35 = 1;
      }

      v36 = v52.f64[1];
      v37 = v53.f64[1];
      sub_1000076E4(&v63, &v62, &v61, &v60, v35);
      v39 = v63;
      v38 = v61;
    }

    else
    {
      v36 = 1.79769313e308;
      v37 = -1.79769313e308;
      v38 = -1.79769313e308;
      v39 = 1.79769313e308;
    }

    v64[4] = v39;
    v64[5] = v36;
    v64[6] = v38;
    v64[7] = v37;
    sub_100007B10(v64, v52.f64);
LABEL_70:
    v9 = *(&v55 + 1) + 1;
    v10 += v23 ^ 1u;
    v7 += 2;
    v55 = __PAIR128__(*(&v55 + 1), v13++) + __PAIR128__(1, 0);
    v11 = v15;
    v12 = v14;
  }

  while (v7 != a3);
  if (v9)
  {
    v5 = a1;
    v6 = v43;
    if ((v57 & 1) == 0)
    {
      v6 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
    }

    sub_100008824(a1, &v49);
  }

  else
  {
    v5 = a1;
    v6 = v43;
  }

LABEL_83:
  if (v6 < 0xEEEEEEEEEEEEEEEFLL * ((v5[1] - *v5) >> 3))
  {
    v42 = *v5 + 120 * v6;
    if ((*(v42 + 96) & 1) == 0)
    {
      *(v42 + 113) = 1;
    }
  }
}

uint64_t sub_10000E720(uint64_t a1, double *a2, double *a3)
{
  v6 = a2[4];
  v7 = a2[6];
  v8 = a3[4];
  v9 = a3[6];
  if (v7 - v6 < 360.0 && v9 - v8 < 360.0)
  {
    v10 = vabdd_f64(v8, v6);
    v11 = 180.0;
    if (v10 != 180.0)
    {
      v12 = v8 - v6;
      if (COERCE__INT64(fabs(v8 - v6)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_98;
      }

      v82 = fabs(v10 + -180.0);
      v11 = 180.0;
      if (v10 < 180.0)
      {
        v10 = 180.0;
      }

      if (v10 < 1.0)
      {
        v10 = 1.0;
      }

      if (v82 > v10 * 2.22044605e-16)
      {
LABEL_98:
        v11 = 180.0;
        if (v12 <= 180.0)
        {
          if (v12 >= -180.0)
          {
            goto LABEL_5;
          }

          v11 = fmod(v12 + -180.0, 360.0) + 180.0;
        }

        else
        {
          v12 = fmod(v12 + 180.0, 360.0) + -180.0;
          if (v12 != -180.0)
          {
            if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_5;
            }

            v83 = fabs(v12);
            v11 = 180.0;
            v84 = fabs(v12 + 180.0);
            if (v83 < 180.0)
            {
              v83 = 180.0;
            }

            if (v83 < 1.0)
            {
              v83 = 1.0;
            }

            if (v84 > v83 * 2.22044605e-16)
            {
LABEL_5:
              if (v12 < 0.0)
              {
                v12 = v12 + 360.0;
              }

              v13 = v6 + v12;
              v14 = v9 - v8 + v6 + v12 + -360.0;
              if (vabdd_f64(v14, v9) < 180.0)
              {
                v14 = v9;
              }

              if (v13 > v7 && v14 < v6)
              {
                return 1;
              }

              goto LABEL_11;
            }
          }
        }
      }
    }

    v12 = v11;
    goto LABEL_5;
  }

LABEL_11:
  if (a2[7] >= a3[5] && a2[5] <= a3[7] && (a2[12] & 1) == 0 && (a3[12] & 1) == 0)
  {
    v15 = *a1;
    v16 = *(a2 + 3);
    v17 = *a1;
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = &v15[3][3 * v16];
    }

    v18 = *v17;
    v19 = *(a3 + 3);
    if ((v19 & 0x8000000000000000) == 0)
    {
      v15 = &v15[3][3 * v19];
    }

    v92 = *(a1 + 16);
    v93 = *(a1 + 8);
    v94 = *(a1 + 32);
    v20 = v17[1];
    v91 = *(a1 + 40);
    v88 = *(a1 + 44);
    v21 = *v15;
    v22 = v15[1];
    v23 = *a2;
    v105 = *a3;
    v25 = *(a2 + 8);
    v24 = *(a2 + 9);
    v100 = *(a1 + 24);
    v101 = *(a2 + 13);
    v26 = &v18[2 * v25];
    v104 = &v18[2 * v24 + 2];
    v87 = *v17;
    if (16 * v25 != 16 * v24 && sub_10000EF08(v23, v26[2], v6, v7, v8, v9))
    {
      v27 = v25 + 1;
      v28 = v101 + 1;
      v29 = v26 + 4;
      do
      {
        v25 = v27;
        v30 = v28;
        v31 = v29;
        if (v29 == v104)
        {
          break;
        }

        v29 += 2;
        v32 = sub_10000EF08(v23, *v31, v6, v7, v8, v9);
        v27 = v25 + 1;
        v28 = v30 + 1;
      }

      while (v32);
      v101 = v30;
      v26 = v31 - 2;
      v18 = v87;
    }

    v33 = v26 + 2;
    if (v26 + 2 != v104)
    {
      v34 = &v18[2 * (v26 != v18)];
      if (v33 != v20)
      {
        v34 = v26 + 2;
      }

      v35 = v34 != v18;
      v36 = v34 + 2;
      v37 = &v18[2 * v35];
      if (v36 == v20)
      {
        v36 = v37;
      }

      v97 = v36;
      v38 = -v23;
      v86 = v21 + 2;
      v98 = v20;
      v89 = v22;
      v90 = v21;
      while (1)
      {
        v96 = v33;
        v39 = a2[4];
        v40 = a2[6];
        v41 = a3[4];
        v42 = a3[6];
        if (sub_10000EF08(v38, *v26, v39, v40, v41, v42))
        {
          break;
        }

        v125[0] = a2;
        v125[1] = v25;
        v85 = v26;
        v125[2] = v26;
        v125[3] = v96;
        v125[4] = v97;
        v125[5] = v18;
        v125[6] = v20;
        v126 = 1;
        v127 = 0;
        v43 = *(a3 + 13);
        v44 = *(a3 + 8);
        v45 = &v21[2 * v44];
        v106 = &v86[2 * *(a3 + 9)];
        if (v45 + 2 != v106)
        {
          if (sub_10000EF08(v105, v45[2], v41, v42, v39, v40))
          {
            v46 = v44 + 1;
            v47 = v43 + 1;
            v48 = &v21[2 * v44 + 4];
            do
            {
              v44 = v46;
              v43 = v47;
              v49 = v48;
              if (v48 == v106)
              {
                break;
              }

              v48 += 16;
              v50 = sub_10000EF08(v105, *v49, v41, v42, v39, v40);
              v46 = v44 + 1;
              v47 = v43 + 1;
            }

            while (v50);
            v45 = v49 - 2;
            v22 = v89;
            v21 = v90;
          }

          else
          {
            v45 = &v21[2 * v44];
          }

          v20 = v98;
        }

        v51 = v45 + 2;
        if (v45 + 2 != v106)
        {
          v95 = v25;
          v52 = &v21[2 * (v45 != v21)];
          if (v51 != v22)
          {
            v52 = v45 + 2;
          }

          v53 = v52 != v21;
          v54 = v52 + 2;
          v55 = &v21[2 * v53];
          if (v54 == v22)
          {
            v54 = v55;
          }

          ++v101;
          v102 = v54;
          while (1)
          {
            v103 = v51;
            v56 = v45;
            if (sub_10000EF08(-v105, *v45, a3[4], a3[6], a2[4], a2[6]))
            {
LABEL_86:
              v25 = v95;
              goto LABEL_87;
            }

            v57 = *(a2 + 2);
            v58 = *(a3 + 2);
            *&v59 = -1;
            *(&v59 + 1) = -1;
            v60 = v56;
            v61 = v103;
            if (v57 != v58)
            {
              break;
            }

            v62 = *(a2 + 3) != *(a3 + 3) || v88 == 0;
            if (v62 || v43 != v101 && (v95 || *(a2 + 11) - 2 > v44))
            {
              break;
            }

LABEL_77:
            v45 = v60 + 2;
            v51 = v61 + 2;
            ++v44;
            v79 = &v21[2 * (v102 != v21)];
            if (v102 + 2 != v22)
            {
              v79 = v102 + 2;
            }

            v102 = v79;
            ++v43;
            if (v51 == v106)
            {
              goto LABEL_86;
            }
          }

          v63 = 0;
          v122[0] = a3;
          v122[1] = v44;
          v122[2] = v56;
          v122[3] = v103;
          v122[4] = v102;
          v122[5] = v21;
          v122[6] = v22;
          v123 = 0;
          v124 = 0;
          v108 = 0;
          v109 = 0;
          v110 = -1;
          v111 = 0;
          do
          {
            v64 = &v107 + v63;
            *(v64 + 10) = 0;
            *(v64 + 3) = v59;
            *(v64 + 4) = v59;
            *(v64 + 10) = -1;
            *(v64 + 88) = xmmword_100092590;
            v63 += 80;
            *(v64 + 13) = 0;
            *(v64 + 14) = 0;
          }

          while (v63 != 160);
          v65 = *(a2 + 3);
          v112 = v91;
          v113 = v57;
          v114 = v65;
          v115 = v95;
          v66 = *(a3 + 3);
          v116 = -1;
          v117 = v91;
          v118 = v58;
          v119 = v66;
          v120 = v44;
          v121 = -1;
          v99 = v100[5];
          sub_10001100C(v125, v122, &v107, v93, v92, v100);
          v67 = v100[4];
          v69 = v100[1];
          v68 = v100[2];
          if (v68 == v69)
          {
            v70 = 0;
          }

          else
          {
            v70 = *(v69 + 8 * (v67 / 0x14)) + 200 * (v67 % 0x14);
          }

          v128 = (v69 + 8 * (v67 / 0x14));
          v129 = v70;
          sub_10001162C(&v128, v99);
          v71 = v128;
          v72 = v129;
          if (v68 == v69)
          {
            v73 = 0;
          }

          else
          {
            v73 = *(v69 + 8 * ((v100[5] + v67) / 0x14)) + 200 * ((v100[5] + v67) % 0x14);
          }

          v20 = v98;
          v22 = v89;
          v21 = v90;
          v60 = v56;
          v61 = v103;
          while (1)
          {
            if (v72 == v73)
            {
              *v94 = 0;
              goto LABEL_77;
            }

            if (*(v72 + 64) == *(v72 + 144))
            {
              break;
            }

            v74 = *(v72 + 16);
            v75 = *(v72 + 40);
            if ((v74 != 4 || v75 != 2) && (v74 != 3 || v75 != 2))
            {
              break;
            }

            if (*(v72 + 120) != 2)
            {
              break;
            }

            v72 += 200;
            if (v72 - *v71 == 4000)
            {
              v78 = v71[1];
              ++v71;
              v72 = v78;
            }
          }

          result = 0;
          *v94 = 1;
          return result;
        }

        ++v101;
LABEL_87:
        v26 = v85 + 2;
        v33 = v96 + 2;
        ++v25;
        v18 = v87;
        v80 = &v87[2 * (v97 != v87)];
        if (v97 + 2 != v20)
        {
          v80 = v97 + 2;
        }

        v97 = v80;
        result = 1;
        v38 = -v23;
        if (v33 == v104)
        {
          return result;
        }
      }
    }
  }

  return 1;
}

BOOL sub_10000EF08(int a1, double a2, double a3, double a4, double a5, double a6)
{
  result = 0;
  v9 = a2 > a6 || a2 < a5;
  if (!v9 || a6 - a5 >= 360.0)
  {
    return result;
  }

  v12 = a4;
  v14 = a2 - a5;
  v15 = vabdd_f64(a2, a5);
  v16 = 180.0;
  if (v15 != 180.0)
  {
    if (COERCE_UNSIGNED_INT64(fabs(a2 - a5)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_32;
    }

    v23 = fabs(v15 + -180.0);
    v16 = 180.0;
    if (v15 >= 180.0)
    {
      v24 = v15;
    }

    else
    {
      v24 = 180.0;
    }

    if (v24 < 1.0)
    {
      v24 = 1.0;
    }

    if (v23 > v24 * 2.22044605e-16)
    {
LABEL_32:
      v16 = 180.0;
      if (v14 <= 180.0)
      {
        v17 = a2 - a5;
        if (v14 >= -180.0)
        {
          goto LABEL_9;
        }

        v38 = v14 + -180.0;
        v40 = a3;
        v41 = fmod(v38, 360.0);
        a3 = v40;
        v12 = a4;
        v14 = a2 - a5;
        v16 = v41 + 180.0;
      }

      else
      {
        v25 = v14 + 180.0;
        v27 = a3;
        v28 = fmod(v25, 360.0);
        a3 = v27;
        v12 = a4;
        v14 = a2 - a5;
        v17 = v28 + -180.0;
        if (v17 != -180.0)
        {
          if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_9;
          }

          v29 = fabs(v17);
          v16 = 180.0;
          v30 = fabs(v17 + 180.0);
          if (v29 < 180.0)
          {
            v29 = 180.0;
          }

          if (v29 < 1.0)
          {
            v29 = 1.0;
          }

          if (v30 > v29 * 2.22044605e-16)
          {
            goto LABEL_9;
          }
        }
      }
    }
  }

  v17 = v16;
LABEL_9:
  if (v17 < 0.0)
  {
    v17 = v17 + 360.0;
  }

  if (v17 + a5 <= a6)
  {
    return 0;
  }

  if (a1 != -1)
  {
    if (a1 == 1)
    {
      v18 = 180.0;
      if (v15 != 180.0)
      {
        if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_59;
        }

        v42 = fabs(v15 + -180.0);
        v18 = 180.0;
        if (v15 >= 180.0)
        {
          v43 = v15;
        }

        else
        {
          v43 = 180.0;
        }

        if (v43 < 1.0)
        {
          v43 = 1.0;
        }

        if (v42 > v43 * 2.22044605e-16)
        {
LABEL_59:
          v18 = 180.0;
          if (v14 <= 180.0)
          {
            if (v14 >= -180.0)
            {
              goto LABEL_16;
            }

            v58 = a3;
            v59 = fmod(v14 + -180.0, 360.0);
            a3 = v58;
            v18 = v59 + 180.0;
          }

          else
          {
            v44 = a3;
            v45 = fmod(v14 + 180.0, 360.0);
            a3 = v44;
            v14 = v45 + -180.0;
            if (v45 + -180.0 != -180.0)
            {
              if (COERCE_UNSIGNED_INT64(fabs(v45 + -180.0)) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_16;
              }

              v46 = fabs(v14);
              v18 = 180.0;
              v47 = fabs(v14 + 180.0);
              if (v46 < 180.0)
              {
                v46 = 180.0;
              }

              if (v46 < 1.0)
              {
                v46 = 1.0;
              }

              if (v47 > v46 * 2.22044605e-16)
              {
LABEL_16:
                v19 = vabdd_f64(a3, a5);
                v20 = 180.0;
                if (v19 != 180.0)
                {
                  v21 = a3 - a5;
                  if (COERCE__INT64(fabs(a3 - a5)) > 0x7FEFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_74;
                  }

                  v48 = fabs(v19 + -180.0);
                  v20 = 180.0;
                  if (v19 < 180.0)
                  {
                    v19 = 180.0;
                  }

                  if (v19 < 1.0)
                  {
                    v19 = 1.0;
                  }

                  if (v48 > v19 * 2.22044605e-16)
                  {
LABEL_74:
                    v20 = 180.0;
                    if (v21 <= 180.0)
                    {
                      if (v21 >= -180.0)
                      {
                        goto LABEL_18;
                      }

                      v20 = fmod(v21 + -180.0, 360.0) + 180.0;
                    }

                    else
                    {
                      v21 = fmod(v21 + 180.0, 360.0) + -180.0;
                      if (v21 != -180.0)
                      {
                        if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                        {
                          goto LABEL_18;
                        }

                        v49 = fabs(v21);
                        v20 = 180.0;
                        v50 = fabs(v21 + 180.0);
                        if (v49 < 180.0)
                        {
                          v49 = 180.0;
                        }

                        if (v49 < 1.0)
                        {
                          v49 = 1.0;
                        }

                        if (v50 > v49 * 2.22044605e-16)
                        {
                          goto LABEL_18;
                        }
                      }
                    }
                  }
                }

                v21 = v20;
LABEL_18:
                v22 = v21 <= 0.0;
                if (v21 > v14)
                {
                  v22 = 0;
                }

                return v14 < 0.0 && v22;
              }
            }
          }
        }
      }

      v14 = v18;
      goto LABEL_16;
    }

    return 0;
  }

  v31 = vabdd_f64(a2, a6);
  v32 = 180.0;
  if (v31 == 180.0)
  {
    goto LABEL_42;
  }

  v33 = a2 - a6;
  if (COERCE__INT64(fabs(a2 - a6)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v51 = fabs(v31 + -180.0);
    v32 = 180.0;
    if (v31 < 180.0)
    {
      v31 = 180.0;
    }

    if (v31 < 1.0)
    {
      v31 = 1.0;
    }

    if (v51 <= v31 * 2.22044605e-16)
    {
      goto LABEL_42;
    }
  }

  v32 = 180.0;
  if (v33 <= 180.0)
  {
    if (v33 >= -180.0)
    {
      goto LABEL_43;
    }

    v32 = fmod(v33 + -180.0, 360.0) + 180.0;
    goto LABEL_42;
  }

  v52 = fmod(v33 + 180.0, 360.0);
  v33 = v52 + -180.0;
  if (v52 + -180.0 == -180.0)
  {
    goto LABEL_42;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v52 + -180.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v53 = fabs(v33);
    v32 = 180.0;
    v54 = fabs(v33 + 180.0);
    if (v53 < 180.0)
    {
      v53 = 180.0;
    }

    if (v53 < 1.0)
    {
      v53 = 1.0;
    }

    if (v54 <= v53 * 2.22044605e-16)
    {
LABEL_42:
      v33 = v32;
    }
  }

LABEL_43:
  v34 = vabdd_f64(v12, a6);
  v35 = 180.0;
  if (v34 != 180.0)
  {
    v36 = v12 - a6;
    if (COERCE__INT64(fabs(v12 - a6)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_104;
    }

    v55 = fabs(v34 + -180.0);
    v35 = 180.0;
    if (v34 < 180.0)
    {
      v34 = 180.0;
    }

    if (v34 < 1.0)
    {
      v34 = 1.0;
    }

    if (v55 > v34 * 2.22044605e-16)
    {
LABEL_104:
      v35 = 180.0;
      if (v36 <= 180.0)
      {
        if (v36 >= -180.0)
        {
          goto LABEL_45;
        }

        v35 = fmod(v36 + -180.0, 360.0) + 180.0;
      }

      else
      {
        v36 = fmod(v36 + 180.0, 360.0) + -180.0;
        if (v36 != -180.0)
        {
          if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_45;
          }

          v56 = fabs(v36);
          v35 = 180.0;
          v57 = fabs(v36 + 180.0);
          if (v56 < 180.0)
          {
            v56 = 180.0;
          }

          if (v56 < 1.0)
          {
            v56 = 1.0;
          }

          if (v57 > v56 * 2.22044605e-16)
          {
            goto LABEL_45;
          }
        }
      }
    }
  }

  v36 = v35;
LABEL_45:
  v37 = v33 > 0.0;
  if (v36 < 0.0)
  {
    v37 = 0;
  }

  return v33 <= v36 && v37;
}

void sub_10000F564(uint64_t a1, double *a2, double *a3, double *a4, double *a5)
{
  v336 = 0;
  v335[0] = a2;
  v335[1] = a3;
  v334[0] = a4;
  v334[1] = a5;
  v10 = *a2;
  v11 = a2[1];
  v12 = sub_10000B2C4(*a2, v11, *a3, a3[1]);
  v13 = *a5;
  v14 = a5[1];
  v15 = sub_10000B2C4(*a4, a4[1], *a5, v14);
  v16 = v15;
  if (v12 && v15)
  {
    v17 = sub_10000B2C4(v10, v11, v13, v14);
    v18 = 0;
    if (v17)
    {
      do
      {
        v19 = &v338[v18];
        *(v19 + 40) = xmmword_100092590;
        *(v19 + 7) = 0;
        *(v19 + 8) = 0;
        *(v19 + 72) = xmmword_1000925A0;
        v18 += 56;
        v19[88] = 0;
      }

      while (v18 != 112);
LABEL_25:
      *v338 = 1;
      *&v338[8] = v10;
      *&v338[16] = v11;
      memset(v337 + 2, 0, 40);
      v65 = v343;
      *(a1 + 96) = v342;
      *(a1 + 112) = v65;
      *(a1 + 128) = v344;
      *(a1 + 144) = v345;
      v66 = v339;
      *(a1 + 32) = *&v338[32];
      *(a1 + 48) = v66;
      v67 = v341;
      *(a1 + 64) = v340;
      *(a1 + 80) = v67;
      v68 = *&v338[16];
      *a1 = *v338;
      *(a1 + 16) = v68;
      *(a1 + 152) = 48;
      v69 = v337[1];
      *(a1 + 154) = v337[0];
LABEL_408:
      *(a1 + 170) = v69;
      v97 = *(&v337[1] + 10);
      goto LABEL_409;
    }

    *v338 = 0;
    do
    {
      v58 = &v338[v18];
      *(v58 + 40) = xmmword_100092590;
      *(v58 + 7) = 0;
      *(v58 + 8) = 0;
      *(v58 + 72) = xmmword_1000925A0;
      v18 += 56;
      v58[88] = 0;
    }

    while (v18 != 112);
    goto LABEL_407;
  }

  v20 = sub_100011510(a2);
  v22 = v21;
  v24 = v23;
  v333[0] = v20;
  v333[1] = v21;
  v333[2] = v23;
  v25 = sub_100011510(a3);
  v308 = v26;
  v309 = v25;
  v332[0] = v25;
  v332[1] = v26;
  v307 = v27;
  v332[2] = v27;
  v28 = sub_100011510(a4);
  v30 = v29;
  v32 = v31;
  v331[0] = v28;
  v331[1] = v29;
  v331[2] = v31;
  v33 = sub_100011510(a5);
  v35 = v28;
  v36 = v33;
  v38 = v37;
  v39 = v34;
  v330[0] = v33;
  v330[1] = v37;
  v330[2] = v34;
  v328 = 0;
  v329 = 0;
  v40 = v30 * v34 - v32 * v37;
  v41 = v32 * v33 - v35 * v34;
  v42 = v35 * v37 - v30 * v33;
  v325 = v40;
  v326 = v41;
  v327 = v42;
  v324 = 0.0;
  v43 = 0.0;
  if (v16)
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 1;
    v48 = 0.0;
    v50 = v308;
    v49 = v309;
    v51 = v307;
    goto LABEL_10;
  }

  v52 = 1.0;
  v48 = 1.0 - (v32 * v34 + v30 * v38 + v35 * v33);
  v324 = v48;
  v50 = v308;
  v49 = v309;
  v51 = v307;
  if (v48 == 0.0)
  {
    goto LABEL_9;
  }

  if (COERCE_UNSIGNED_INT64(fabs(1.0 - (v32 * v34 + v30 * v38 + v35 * v33))) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v71 = fabs(v48);
    if (v71 >= 1.0)
    {
      v52 = v71;
    }

    if (v71 <= v52 * 2.22044605e-16)
    {
LABEL_9:
      v44 = 0;
      v45 = 0;
      v324 = 0.0;
      v46 = 1;
      v48 = 0.0;
      v47 = 1;
      goto LABEL_10;
    }
  }

  v72 = v24 * v42 + v41 * v22 + v40 * v20;
  if (v72 == 0.0)
  {
    goto LABEL_32;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v24 * v42 + v41 * v22 + v40 * v20)) < 0x7FF0000000000000)
  {
    v186 = fabs(v72);
    v187 = 1.0;
    if (v186 >= 1.0)
    {
      v187 = v186;
    }

    v188 = v187 * 2.22044605e-16;
    if (v72 > 0.0)
    {
      v45 = 1;
    }

    else
    {
      v45 = -1;
    }

    if (v186 <= v188)
    {
LABEL_32:
      v45 = 0;
    }
  }

  else if (v72 > 0.0)
  {
    v45 = 1;
  }

  else
  {
    v45 = -1;
  }

  v189 = v307 * v42 + v41 * v308 + v40 * v309;
  if (v189 != 0.0)
  {
    if (COERCE_UNSIGNED_INT64(fabs(v307 * v42 + v41 * v308 + v40 * v309)) >= 0x7FF0000000000000)
    {
      if (v189 > 0.0)
      {
        v44 = 1;
      }

      else
      {
        v44 = -1;
      }

      goto LABEL_245;
    }

    v190 = fabs(v189);
    v191 = 1.0;
    if (v190 >= 1.0)
    {
      v191 = v190;
    }

    v192 = v191 * 2.22044605e-16;
    if (v189 > 0.0)
    {
      v44 = 1;
    }

    else
    {
      v44 = -1;
    }

    if (v190 > v192)
    {
      goto LABEL_245;
    }
  }

  v44 = 0;
LABEL_245:
  v328 = __PAIR64__(v44, v45);
  if (v44 * v45 == 1)
  {
    v193 = 0;
    *v338 = 0;
    do
    {
      v194 = &v338[v193];
      *(v194 + 40) = xmmword_100092590;
      *(v194 + 7) = 0;
      *(v194 + 8) = 0;
      *(v194 + 72) = xmmword_1000925A0;
      v193 += 56;
      v194[88] = 0;
    }

    while (v193 != 112);
    goto LABEL_407;
  }

  v46 = 0;
  v47 = 0;
LABEL_10:
  v53 = v22 * v51 - v24 * v50;
  v54 = v24 * v49 - v20 * v51;
  v321 = v53;
  v322 = v54;
  v55 = v20 * v50 - v22 * v49;
  v323 = v55;
  v320 = 0.0;
  if (v12)
  {
    v56 = 0;
    v57 = 0;
    goto LABEL_17;
  }

  v59 = 1.0 - (v24 * v51 + v22 * v50 + v20 * v49);
  v320 = v59;
  if (v59 == 0.0)
  {
    goto LABEL_16;
  }

  if (COERCE_UNSIGNED_INT64(fabs(1.0 - (v24 * v51 + v22 * v50 + v20 * v49))) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v74 = fabs(v59);
    v75 = 1.0;
    if (v74 >= 1.0)
    {
      v75 = v74;
    }

    if (v74 <= v75 * 2.22044605e-16)
    {
LABEL_16:
      v56 = 0;
      v57 = 0;
      v320 = 0.0;
      v46 = 1;
LABEL_17:
      v60 = 1;
      if (v47)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }
  }

  v76 = v55 * v32 + v54 * v30 + v53 * v35;
  if (v76 == 0.0)
  {
    goto LABEL_41;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v55 * v32 + v54 * v30 + v53 * v35)) < 0x7FF0000000000000)
  {
    v195 = fabs(v76);
    v196 = 1.0;
    if (v195 >= 1.0)
    {
      v196 = v195;
    }

    v197 = v196 * 2.22044605e-16;
    if (v76 > 0.0)
    {
      v57 = 1;
    }

    else
    {
      v57 = -1;
    }

    if (v195 <= v197)
    {
LABEL_41:
      v57 = 0;
    }
  }

  else if (v76 > 0.0)
  {
    v57 = 1;
  }

  else
  {
    v57 = -1;
  }

  v198 = v55 * v39 + v54 * v38 + v53 * v36;
  if (v198 == 0.0)
  {
LABEL_257:
    v56 = 0;
    goto LABEL_268;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v55 * v39 + v54 * v38 + v53 * v36)) < 0x7FF0000000000000)
  {
    v199 = fabs(v198);
    v200 = 1.0;
    if (v199 >= 1.0)
    {
      v200 = v199;
    }

    v201 = v200 * 2.22044605e-16;
    if (v198 > 0.0)
    {
      v56 = 1;
    }

    else
    {
      v56 = -1;
    }

    if (v199 <= v201)
    {
      goto LABEL_257;
    }
  }

  else if (v198 > 0.0)
  {
    v56 = 1;
  }

  else
  {
    v56 = -1;
  }

LABEL_268:
  v329 = __PAIR64__(v56, v57);
  if (v56 * v57 == 1)
  {
    v202 = 0;
    *v338 = 0;
    do
    {
      v203 = &v338[v202];
      *(v203 + 40) = xmmword_100092590;
      *(v203 + 7) = 0;
      *(v203 + 8) = 0;
      *(v203 + 72) = xmmword_1000925A0;
      v202 += 56;
      v203[88] = 0;
    }

    while (v202 != 112);
    goto LABEL_407;
  }

  v204 = sqrt(v55 * v55 + v54 * v54 + v53 * v53);
  if (v204 == 0.0)
  {
    goto LABEL_274;
  }

  if ((*&v204 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_281;
  }

  v205 = fabs(v204);
  v206 = 1.0;
  if (v205 >= 1.0)
  {
    v206 = v205;
  }

  if (v205 <= v206 * 2.22044605e-16)
  {
LABEL_274:
    if (!v44 || !v45)
    {
      v44 = 0;
      v45 = 0;
      v328 = 0;
    }

    v60 = 1;
  }

  else
  {
LABEL_281:
    v60 = 0;
    v53 = v53 / v204;
    v54 = v54 / v204;
    v321 = v53;
    v322 = v54;
    v55 = v55 / v204;
    v323 = v55;
  }

  v43 = 1.0 - (v24 * v51 + v22 * v50 + v20 * v49);
  if (v47)
  {
    goto LABEL_22;
  }

LABEL_18:
  v61 = sqrt(v42 * v42 + v41 * v41 + v40 * v40);
  if (v61 != 0.0)
  {
    if ((*&v61 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_46;
    }

    v77 = fabs(v61);
    v78 = 1.0;
    if (v77 >= 1.0)
    {
      v78 = v77;
    }

    if (v77 > v78 * 2.22044605e-16)
    {
LABEL_46:
      v70 = 0;
      v40 = v40 / v61;
      v41 = v41 / v61;
      v325 = v40;
      v326 = v41;
      v42 = v42 / v61;
      v327 = v42;
      goto LABEL_47;
    }
  }

  if (!v56 || !v57)
  {
    v56 = 0;
    v57 = 0;
    v329 = 0;
  }

LABEL_22:
  if (v60)
  {
    v10 = *a2;
    v11 = a2[1];
    v62 = sub_10000B2C4(*a2, v11, *a5, a5[1]);
    v63 = 0;
    if (v62)
    {
      do
      {
        v64 = &v338[v63];
        *(v64 + 40) = xmmword_100092590;
        *(v64 + 7) = 0;
        *(v64 + 8) = 0;
        *(v64 + 72) = xmmword_1000925A0;
        v63 += 56;
        v64[88] = 0;
      }

      while (v63 != 112);
      goto LABEL_25;
    }

    *v338 = 0;
    do
    {
      v73 = &v338[v63];
      *(v73 + 40) = xmmword_100092590;
      *(v73 + 7) = 0;
      *(v73 + 8) = 0;
      *(v73 + 72) = xmmword_1000925A0;
      v63 += 56;
      v73[88] = 0;
    }

    while (v63 != 112);
LABEL_407:
    memset(v337 + 2, 0, 32);
    v243 = v343;
    *(a1 + 96) = v342;
    *(a1 + 112) = v243;
    *(a1 + 128) = v344;
    v244 = v339;
    *(a1 + 32) = *&v338[32];
    *(a1 + 48) = v244;
    v245 = v341;
    *(a1 + 64) = v340;
    *(a1 + 80) = v245;
    v246 = *&v338[16];
    *a1 = *v338;
    *(a1 + 16) = v246;
    v69 = v337[1];
    *(a1 + 154) = v337[0];
    *(&v337[2] + 2) = 0;
    *(a1 + 144) = v345;
    *(a1 + 152) = 100;
    goto LABEL_408;
  }

  v70 = 1;
LABEL_47:
  v79 = v57 | v56;
  v306 = v48;
  if (!(v45 | v44))
  {
    if (!v79)
    {
      goto LABEL_66;
    }

    v89 = &v329 + 4;
    LODWORD(v329) = 0;
LABEL_65:
    *v89 = 0;
LABEL_66:
    v80 = v55 * v42 + v54 * v41 + v53 * v40;
    if (!v60)
    {
      goto LABEL_51;
    }

LABEL_67:
    v317 = 0.0;
    if (!sub_100031EF4(a4, a5, a2, v331, &v325, v333, v332, &v324, &v317, v46))
    {
      v108 = 0;
      *v338 = 0;
      do
      {
        v109 = &v338[v108];
        *(v109 + 40) = xmmword_100092590;
        *(v109 + 7) = 0;
        *(v109 + 8) = 0;
        *(v109 + 72) = xmmword_1000925A0;
        v108 += 56;
        v109[88] = 0;
      }

      while (v108 != 112);
      goto LABEL_407;
    }

    if (v306 >= 0.0)
    {
      v90 = v317;
    }

    else
    {
      v90 = -v317;
    }

    if (v306 >= 0.0)
    {
      v91 = v306;
    }

    else
    {
      v91 = -v306;
    }

    v92 = 0.0;
    if (v306 != 0.0)
    {
      v92 = v90 * 1000000.0 / v91;
    }

    for (i = 0; i != 112; i += 56)
    {
      v94 = a1 + i;
      *(v94 + 40) = xmmword_100092590;
      *(v94 + 56) = 0;
      *(v94 + 64) = 0;
      *(v94 + 72) = xmmword_1000925A0;
      *(v94 + 88) = 0;
    }

    *a1 = 1;
    *(a1 + 8) = *a2;
    if ((atomic_load_explicit(&qword_1000B2C00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B2C00))
    {
      qword_1000B2BF8 = 0x3FF0000000000000;
      __cxa_guard_release(&qword_1000B2C00);
    }

    v95 = qword_1000B2BF8;
    *(a1 + 88) = 1;
    *(a1 + 40) = 0;
    *(a1 + 48) = v95;
    *(a1 + 56) = 0;
    *(a1 + 64) = v90;
    *(a1 + 72) = v91;
    *(a1 + 80) = v92;
    goto LABEL_80;
  }

  if (!v79)
  {
    v89 = &v328 + 4;
    LODWORD(v328) = 0;
    goto LABEL_65;
  }

  v80 = v55 * v42 + v54 * v41 + v53 * v40;
  v81 = fabs(v80);
  if (v81 != 1.0)
  {
    if (COERCE_UNSIGNED_INT64(fabs(v55 * v42 + v54 * v41 + v53 * v40)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_97;
    }

    v110 = fabs(v81 + -1.0);
    if (v81 < 1.0)
    {
      v81 = 1.0;
    }

    if (v110 > v81 * 2.22044605e-16)
    {
LABEL_97:
      if ((v60 | v70) == 1)
      {
        v111 = 0;
        *v338 = 0;
        do
        {
          v112 = &v338[v111];
          *(v112 + 40) = xmmword_100092590;
          *(v112 + 7) = 0;
          *(v112 + 8) = 0;
          *(v112 + 72) = xmmword_1000925A0;
          v111 += 56;
          v112[88] = 0;
        }

        while (v111 != 112);
        goto LABEL_407;
      }

      v180 = v43;
      LODWORD(v312) = 0;
      v317 = 0.0;
      v314 = 0.0;
      if (sub_100019BD0(a2, a3, a4, a5, v333, v332, v331, v330, &v321, &v325, &v328, &v320, &v324, v337, &v317, &v314, &v312))
      {
        *&v341 = &v336;
        v181 = v317;
        *&v338[24] = v317;
        *&v338[32] = v180;
        if (v180 < 0.0)
        {
          v181 = -v317;
          v180 = -v180;
          *&v338[24] = -v317;
          *&v338[32] = v180;
        }

        v182 = v306;
        v183 = 0.0;
        if (v180 != 0.0)
        {
          v183 = v181 * 1000000.0 / v180;
        }

        v184 = v314;
        *&v338[40] = v183;
        *&v339 = v314;
        *(&v339 + 1) = v306;
        if (v306 < 0.0)
        {
          v184 = -v314;
          v182 = -v306;
          *&v339 = -v314;
          *(&v339 + 1) = -v306;
        }

        v185 = 0.0;
        if (v182 != 0.0)
        {
          v185 = v184 * 1000000.0 / v182;
        }

        *&v340 = v185;
        *v338 = v337[0];
        *&v338[16] = *&v337[1];
        DWORD2(v340) = v312;
        sub_10001A118(a1, &v328, v338, a2, a3, a4, a5);
      }

      else
      {
        sub_100031E10(a1);
      }

      return;
    }
  }

  v328 = 0;
  v329 = 0;
  if (v60)
  {
    goto LABEL_67;
  }

LABEL_51:
  if (v70)
  {
    v82 = v43;
    v317 = 0.0;
    if (!sub_100031EF4(a2, a3, a4, v333, &v321, v331, v330, &v320, &v317, v46))
    {
      v113 = 0;
      *v338 = 0;
      do
      {
        v114 = &v338[v113];
        *(v114 + 40) = xmmword_100092590;
        *(v114 + 7) = 0;
        *(v114 + 8) = 0;
        *(v114 + 72) = xmmword_1000925A0;
        v113 += 56;
        v114[88] = 0;
      }

      while (v113 != 112);
      goto LABEL_407;
    }

    v83 = v82 == 0.0;
    if (v82 >= 0.0)
    {
      v84 = v317;
    }

    else
    {
      v82 = -v82;
      v84 = -v317;
    }

    v85 = 0.0;
    if (!v83)
    {
      v85 = v84 * 1000000.0 / v82;
    }

    for (j = 0; j != 112; j += 56)
    {
      v87 = a1 + j;
      *(v87 + 40) = xmmword_100092590;
      *(v87 + 56) = 0;
      *(v87 + 64) = 0;
      *(v87 + 72) = xmmword_1000925A0;
      *(v87 + 88) = 0;
    }

    *a1 = 1;
    *(a1 + 8) = *a4;
    if ((atomic_load_explicit(&qword_1000B2C00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B2C00))
    {
      qword_1000B2BF8 = 0x3FF0000000000000;
      __cxa_guard_release(&qword_1000B2C00);
    }

    v88 = qword_1000B2BF8;
    *(a1 + 88) = 1;
    *(a1 + 40) = v84;
    *(a1 + 48) = v82;
    *(a1 + 56) = v85;
    *(a1 + 64) = 0;
    *(a1 + 72) = v88;
    *(a1 + 80) = 0;
LABEL_80:
    memset(&v338[2], 0, 40);
    *(a1 + 152) = 48;
    v96 = *&v338[16];
    *(a1 + 154) = *v338;
    *(a1 + 170) = v96;
    v97 = *&v338[26];
LABEL_409:
    *(a1 + 180) = v97;
    return;
  }

  v98 = -v22;
  v99 = v24 * v32 + v22 * v30 + v20 * v35;
  v100 = 1.0 - v99;
  v101 = -(1.0 - v99);
  if ((v35 * -v22 + v20 * v30) * v55 + v54 * (v32 * -v20 + v24 * v35) + v53 * (v30 * -v24 + v22 * v32) < 0.0)
  {
    v102 = -(1.0 - v99);
  }

  else
  {
    v102 = 1.0 - v99;
  }

  if (v102 <= -2.0)
  {
    v103 = v102 + 4.0;
  }

  else
  {
    v103 = v102;
  }

  v104 = fabs(v103);
  v105 = v306;
  if (v104 > 0.00000001)
  {
    goto LABEL_88;
  }

  v107 = 0.0;
  if (v103 != 0.0)
  {
    v115 = 1.0;
    if (v104 >= 1.0)
    {
      v115 = v104;
    }

    if (v104 > v115 * 2.22044605e-16)
    {
      v287 = v41;
      v259 = v53;
      v264 = v43;
      v254 = v54;
      v256 = v80;
      v293 = v35;
      v278 = v40;
      v282 = v42;
      v252 = v55;
      v270 = v101;
      v274 = v100;
      v249 = v103;
      v116 = sub_10000B2C4(*a2, a2[1], *a4, a4[1]);
      v103 = v249;
      v98 = -v22;
      v101 = v270;
      v100 = v274;
      v42 = v282;
      v55 = v252;
      v54 = v254;
      v80 = v256;
      v53 = v259;
      v107 = 0.0;
      v41 = v287;
      v35 = v293;
      v40 = v278;
      v51 = v307;
      v50 = v308;
      v49 = v309;
      v43 = v264;
      v105 = v306;
      if (!v116)
      {
LABEL_88:
        v106 = vabdd_f64(v43, v103);
        if (v106 <= 0.00000001)
        {
          v107 = v43;
          if (v43 - v103 != 0.0)
          {
            v117 = 1.0;
            if (v106 >= 1.0)
            {
              v117 = v106;
            }

            v107 = v43;
            if (v106 > v117 * 2.22044605e-16)
            {
              v288 = v41;
              v260 = v53;
              v265 = v43;
              v255 = v54;
              v257 = v80;
              v294 = v35;
              v279 = v40;
              v283 = v42;
              v251 = v98;
              v253 = v55;
              v271 = v101;
              v275 = v100;
              v250 = v103;
              v118 = sub_10000B2C4(*a3, a3[1], *a4, a4[1]);
              v98 = v251;
              v55 = v253;
              v101 = v271;
              v100 = v275;
              v42 = v283;
              v54 = v255;
              v80 = v257;
              v53 = v260;
              v43 = v265;
              v41 = v288;
              v35 = v294;
              v40 = v279;
              v51 = v307;
              v50 = v308;
              v49 = v309;
              v105 = v306;
              if (v118)
              {
                v107 = v265;
              }

              else
              {
                v107 = v250;
              }
            }
          }
        }

        else
        {
          v107 = v103;
        }
      }
    }
  }

  v119 = -v32;
  v120 = -v35;
  v121 = -v30;
  if ((v36 * v98 + v20 * v38) * v55 + v54 * (v39 * -v20 + v24 * v36) + v53 * (v38 * -v24 + v22 * v39) < 0.0)
  {
    v122 = -(1.0 - (v24 * v39 + v22 * v38 + v20 * v36));
  }

  else
  {
    v122 = 1.0 - (v24 * v39 + v22 * v38 + v20 * v36);
  }

  if (v122 <= -2.0)
  {
    v123 = v122 + 4.0;
  }

  else
  {
    v123 = v122;
  }

  v124 = fabs(v123);
  if (v124 > 0.00000001)
  {
    goto LABEL_132;
  }

  v126 = 0.0;
  if (v123 != 0.0)
  {
    v127 = 1.0;
    if (v124 >= 1.0)
    {
      v127 = v124;
    }

    if (v124 > v127 * 2.22044605e-16)
    {
      v289 = v41;
      v128 = v43;
      v258 = v80;
      v295 = v35;
      v280 = v40;
      v284 = v42;
      v302 = v107;
      v272 = v101;
      v276 = v100;
      v266 = -v35;
      v129 = sub_10000B2C4(*a2, a2[1], *a5, a5[1]);
      v119 = -v32;
      v120 = v266;
      v121 = -v30;
      v107 = v302;
      v101 = v272;
      v100 = v276;
      v42 = v284;
      v41 = v289;
      v35 = v295;
      v40 = v280;
      v51 = v307;
      v50 = v308;
      v49 = v309;
      v80 = v258;
      v43 = v128;
      v105 = v306;
      if (!v129)
      {
LABEL_132:
        v125 = vabdd_f64(v43, v123);
        if (v125 <= 0.00000001)
        {
          v126 = v43;
          if (v43 - v123 != 0.0)
          {
            v130 = 1.0;
            if (v125 >= 1.0)
            {
              v130 = v125;
            }

            v126 = v43;
            if (v125 > v130 * 2.22044605e-16)
            {
              v290 = v41;
              v126 = v43;
              v131 = v80;
              v296 = v35;
              v299 = v121;
              v281 = v40;
              v285 = v42;
              v303 = v107;
              v273 = v101;
              v277 = v100;
              v261 = v119;
              v267 = v120;
              v132 = sub_10000B2C4(*a3, a3[1], *a5, a5[1]);
              v119 = v261;
              v120 = v267;
              v121 = v299;
              v107 = v303;
              v101 = v273;
              v100 = v277;
              v42 = v285;
              v41 = v290;
              v35 = v296;
              v40 = v281;
              v51 = v307;
              v50 = v308;
              v49 = v309;
              v80 = v131;
              v43 = v126;
              v105 = v306;
              if (!v132)
              {
                v126 = v123;
              }
            }
          }
        }

        else
        {
          v126 = v123;
        }
      }
    }
  }

  if ((v20 * v121 + v35 * v22) * v42 + v41 * (v24 * v120 + v32 * v20) + v40 * (v22 * v119 + v30 * v24) < 0.0)
  {
    v133 = v101;
  }

  else
  {
    v133 = v100;
  }

  if (v133 <= -2.0)
  {
    v134 = v133 + 4.0;
  }

  else
  {
    v134 = v133;
  }

  v135 = fabs(v134);
  if (v135 > 0.00000001)
  {
    goto LABEL_153;
  }

  v137 = 0.0;
  if (v134 != 0.0)
  {
    v138 = 1.0;
    if (v135 >= 1.0)
    {
      v138 = v135;
    }

    if (v135 > v138 * 2.22044605e-16)
    {
      v291 = v41;
      v139 = v43;
      v140 = v80;
      v297 = v35;
      v300 = v121;
      v141 = v40;
      v286 = v42;
      v304 = v107;
      v262 = v119;
      v268 = v120;
      v142 = sub_10000B2C4(*a4, a4[1], *a2, a2[1]);
      v119 = v262;
      v120 = v268;
      v121 = v300;
      v107 = v304;
      v42 = v286;
      v41 = v291;
      v35 = v297;
      v40 = v141;
      v51 = v307;
      v50 = v308;
      v49 = v309;
      v80 = v140;
      v43 = v139;
      v105 = v306;
      if (!v142)
      {
LABEL_153:
        v136 = vabdd_f64(v105, v134);
        if (v136 <= 0.00000001)
        {
          v137 = v105;
          if (v105 - v134 != 0.0)
          {
            v143 = 1.0;
            if (v136 >= 1.0)
            {
              v143 = v136;
            }

            v137 = v105;
            if (v136 > v143 * 2.22044605e-16)
            {
              v292 = v41;
              v144 = v43;
              v145 = v80;
              v298 = v35;
              v301 = v121;
              v146 = v40;
              v147 = v42;
              v305 = v107;
              v263 = v119;
              v269 = v120;
              v148 = sub_10000B2C4(*a5, a5[1], *a2, a2[1]);
              v119 = v263;
              v120 = v269;
              v121 = v301;
              v107 = v305;
              v41 = v292;
              v42 = v147;
              v40 = v146;
              v35 = v298;
              v51 = v307;
              v50 = v308;
              v49 = v309;
              v80 = v145;
              v43 = v144;
              v105 = v306;
              if (v148)
              {
                v137 = v306;
              }

              else
              {
                v137 = v134;
              }
            }
          }
        }

        else
        {
          v137 = v134;
        }
      }
    }
  }

  if ((v49 * v121 + v35 * v50) * v42 + v41 * (v51 * v120 + v32 * v49) + v40 * (v50 * v119 + v30 * v51) < 0.0)
  {
    v149 = -(1.0 - (v51 * v32 + v30 * v50 + v35 * v49));
  }

  else
  {
    v149 = 1.0 - (v51 * v32 + v30 * v50 + v35 * v49);
  }

  if (v149 <= -2.0)
  {
    v150 = v149 + 4.0;
  }

  else
  {
    v150 = v149;
  }

  v151 = fabs(v150);
  if (v151 > 0.00000001)
  {
    goto LABEL_175;
  }

  v153 = 0.0;
  if (v150 != 0.0)
  {
    v154 = 1.0;
    if (v151 >= 1.0)
    {
      v154 = v151;
    }

    if (v151 > v154 * 2.22044605e-16)
    {
      v155 = v43;
      v156 = v80;
      v157 = v107;
      v158 = sub_10000B2C4(*a4, a4[1], *a3, a3[1]);
      v107 = v157;
      v80 = v156;
      v43 = v155;
      v105 = v306;
      if (!v158)
      {
LABEL_175:
        v152 = vabdd_f64(v105, v150);
        if (v152 > 0.00000001)
        {
          goto LABEL_176;
        }

        v153 = v105;
        if (v105 - v150 != 0.0)
        {
          v159 = 1.0;
          if (v152 >= 1.0)
          {
            v159 = v152;
          }

          v153 = v105;
          if (v152 > v159 * 2.22044605e-16)
          {
            v160 = v43;
            v161 = v80;
            v162 = v107;
            v163 = sub_10000B2C4(*a5, a5[1], *a3, a3[1]);
            v107 = v162;
            v80 = v161;
            v43 = v160;
            v105 = v306;
            v153 = v306;
            if (!v163)
            {
LABEL_176:
              v153 = v150;
            }
          }
        }
      }
    }
  }

  v317 = v137;
  v318 = v105;
  v164 = v137;
  v165 = v105;
  if (v105 < 0.0)
  {
    v164 = -v137;
    v165 = -v105;
    v317 = -v137;
    v318 = -v105;
  }

  v166 = 0.0;
  if (v165 != 0.0)
  {
    v166 = v164 * 1000000.0 / v165;
  }

  v319 = v166;
  v167 = v153;
  v168 = v105;
  v314 = v153;
  v315 = v105;
  if (v105 < 0.0)
  {
    v167 = -v153;
    v168 = -v105;
    v314 = -v153;
    v315 = -v105;
  }

  v169 = 0.0;
  if (v168 != 0.0)
  {
    v169 = v167 * 1000000.0 / v168;
  }

  v316 = v169;
  v170 = v107;
  v171 = v43;
  *&v312 = v107;
  *(&v312 + 1) = v43;
  if (v43 < 0.0)
  {
    v170 = -v107;
    v171 = -v43;
    *&v312 = -v107;
    *(&v312 + 1) = -v43;
  }

  v172 = 0.0;
  if (v171 != 0.0)
  {
    v172 = v170 * 1000000.0 / v171;
  }

  v313 = v172;
  v173 = v126;
  v174 = v43;
  *&v310 = v126;
  *(&v310 + 1) = v43;
  if (v43 < 0.0)
  {
    v173 = -v126;
    v174 = -v43;
    *&v310 = -v126;
    *(&v310 + 1) = -v43;
  }

  v175 = 0.0;
  if (v174 != 0.0)
  {
    v175 = v173 * 1000000.0 / v174;
  }

  v311 = v175;
  if (v107 == 0.0)
  {
    goto LABEL_205;
  }

  if ((*&v107 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v177 = fabs(v107);
    v178 = vabdd_f64(0.0, v107);
    if (v177 < 1.0)
    {
      v177 = 1.0;
    }

    if (v178 <= v177 * 2.22044605e-16)
    {
LABEL_205:
      v176 = 1;
      goto LABEL_212;
    }
  }

  if (v126 == 0.0)
  {
    goto LABEL_211;
  }

  if ((*&v126 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v210 = fabs(v126);
    v211 = vabdd_f64(0.0, v126);
    if (v210 < 1.0)
    {
      v210 = 1.0;
    }

    if (v211 <= v210 * 2.22044605e-16)
    {
LABEL_211:
      v176 = 3;
      goto LABEL_212;
    }
  }

  if (v107 < v126)
  {
    if (v107 <= 0.0)
    {
      if (v126 >= 0.0)
      {
        v176 = 2;
      }

      else
      {
        v176 = 4;
      }

      goto LABEL_212;
    }

LABEL_316:
    v176 = 0;
    goto LABEL_212;
  }

  if (v107 < 0.0)
  {
    goto LABEL_316;
  }

  if (v126 <= 0.0)
  {
    v176 = 2;
  }

  else
  {
    v176 = 4;
  }

LABEL_212:
  if (v43 == v107)
  {
LABEL_213:
    v179 = 1;
    goto LABEL_320;
  }

  if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v43 != v126)
    {
      goto LABEL_308;
    }

LABEL_291:
    v179 = 3;
    goto LABEL_320;
  }

  v207 = fabs(v43);
  if ((*&v107 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v208 = fabs(v107);
    v209 = vabdd_f64(v43, v107);
    if (v207 >= v208)
    {
      v208 = v207;
    }

    if (v208 < 1.0)
    {
      v208 = 1.0;
    }

    if (v209 <= v208 * 2.22044605e-16)
    {
      goto LABEL_213;
    }
  }

  if (v43 == v126)
  {
    goto LABEL_291;
  }

  if ((*&v126 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v212 = fabs(v126);
    v213 = vabdd_f64(v43, v126);
    if (v207 < v212)
    {
      v207 = v212;
    }

    if (v207 < 1.0)
    {
      v207 = 1.0;
    }

    if (v213 <= v207 * 2.22044605e-16)
    {
      goto LABEL_291;
    }
  }

LABEL_308:
  if (v107 >= v126)
  {
    if (v43 <= v107)
    {
      if (v43 >= v126)
      {
        v179 = 2;
      }

      else
      {
        v179 = 4;
      }

      goto LABEL_320;
    }
  }

  else if (v43 >= v107)
  {
    if (v43 <= v126)
    {
      v179 = 2;
    }

    else
    {
      v179 = 4;
    }

    goto LABEL_320;
  }

  v179 = 0;
LABEL_320:
  if (v137 == 0.0)
  {
    goto LABEL_321;
  }

  if ((*&v137 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v215 = fabs(v137);
    v216 = vabdd_f64(0.0, v137);
    if (v215 < 1.0)
    {
      v215 = 1.0;
    }

    if (v216 <= v215 * 2.22044605e-16)
    {
LABEL_321:
      v214 = 1;
      goto LABEL_328;
    }
  }

  if (v153 == 0.0)
  {
    goto LABEL_327;
  }

  if ((*&v153 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v221 = fabs(v153);
    v222 = vabdd_f64(0.0, v153);
    if (v221 < 1.0)
    {
      v221 = 1.0;
    }

    if (v222 <= v221 * 2.22044605e-16)
    {
LABEL_327:
      v214 = 3;
      goto LABEL_328;
    }
  }

  if (v137 < v153)
  {
    if (v137 <= 0.0)
    {
      if (v153 >= 0.0)
      {
        v214 = 2;
      }

      else
      {
        v214 = 4;
      }

      goto LABEL_328;
    }

LABEL_364:
    v214 = 0;
    goto LABEL_328;
  }

  if (v137 < 0.0)
  {
    goto LABEL_364;
  }

  if (v153 <= 0.0)
  {
    v214 = 2;
  }

  else
  {
    v214 = 4;
  }

LABEL_328:
  if (v105 == v137)
  {
LABEL_329:
    v217 = 1;
    goto LABEL_368;
  }

  if ((*&v105 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v105 != v153)
    {
      goto LABEL_356;
    }

LABEL_340:
    v217 = 3;
    goto LABEL_368;
  }

  v218 = fabs(v105);
  if ((*&v137 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v219 = fabs(v137);
    v220 = vabdd_f64(v105, v137);
    if (v218 >= v219)
    {
      v219 = v218;
    }

    if (v219 < 1.0)
    {
      v219 = 1.0;
    }

    if (v220 <= v219 * 2.22044605e-16)
    {
      goto LABEL_329;
    }
  }

  if (v105 == v153)
  {
    goto LABEL_340;
  }

  if ((*&v153 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v223 = fabs(v153);
    v224 = vabdd_f64(v105, v153);
    if (v218 < v223)
    {
      v218 = v223;
    }

    if (v218 < 1.0)
    {
      v218 = 1.0;
    }

    if (v224 <= v218 * 2.22044605e-16)
    {
      goto LABEL_340;
    }
  }

LABEL_356:
  if (v137 >= v153)
  {
    if (v105 <= v137)
    {
      if (v105 >= v153)
      {
        v217 = 2;
      }

      else
      {
        v217 = 4;
      }

      goto LABEL_368;
    }
  }

  else if (v105 >= v137)
  {
    if (v105 <= v153)
    {
      v217 = 2;
    }

    else
    {
      v217 = 4;
    }

    goto LABEL_368;
  }

  v217 = 0;
LABEL_368:
  if (v176 == 3)
  {
    v317 = v105;
    v318 = v105;
    v232 = v105;
    if (v105 < 0.0)
    {
      v232 = -v105;
      v317 = -v105;
      v318 = -v105;
    }

    v233 = 0.0;
    v234 = 0.0;
    if (v232 != 0.0)
    {
      v234 = v232 * 1000000.0 / v232;
    }

    v319 = v234;
    *&v310 = 0;
    v235 = v43;
    *(&v310 + 1) = v43;
    if (v43 < 0.0)
    {
      *&v310 = 0x8000000000000000;
      v235 = -v43;
      *(&v310 + 1) = -v43;
      v233 = -0.0;
    }

    v236 = v233 / v235;
    if (v235 == 0.0)
    {
      v236 = 0.0;
    }

    v311 = v236;
  }

  else if (v176 == 1)
  {
    v317 = 0.0;
    v318 = v105;
    v225 = 0.0;
    v226 = 0.0;
    v227 = v105;
    if (v105 < 0.0)
    {
      v317 = -0.0;
      v227 = -v105;
      v318 = -v105;
      v226 = -0.0;
    }

    v228 = v226 / v227;
    if (v227 == 0.0)
    {
      v229 = 0.0;
    }

    else
    {
      v229 = v228;
    }

    v319 = v229;
    *&v312 = 0;
    *(&v312 + 1) = v43;
    v230 = v43;
    if (v43 < 0.0)
    {
      *&v312 = 0x8000000000000000;
      v230 = -v43;
      *(&v312 + 1) = -v43;
      v225 = -0.0;
    }

    v231 = v225 / v230;
    if (v230 == 0.0)
    {
      v231 = 0.0;
    }

    v313 = v231;
  }

  if (v179 == 3)
  {
    v314 = v105;
    v315 = v105;
    if (v105 < 0.0)
    {
      v105 = -v105;
      v314 = v105;
      v315 = v105;
    }

    v239 = 0.0;
    if (v105 != 0.0)
    {
      v239 = v105 * 1000000.0 / v105;
    }

    v316 = v239;
    *&v310 = v43;
    *(&v310 + 1) = v43;
    if (v43 < 0.0)
    {
      v43 = -v43;
      *&v310 = v43;
      *(&v310 + 1) = v43;
    }

    v240 = 0.0;
    if (v43 != 0.0)
    {
      v240 = v43 * 1000000.0 / v43;
    }

    v311 = v240;
  }

  else if (v179 == 1)
  {
    v314 = 0.0;
    v315 = v105;
    v237 = 0.0;
    if (v105 >= 0.0)
    {
      v238 = 0.0;
    }

    else
    {
      v314 = -0.0;
      v105 = -v105;
      v315 = v105;
      v238 = -0.0;
    }

    v247 = v238 / v105;
    if (v105 != 0.0)
    {
      v237 = v247;
    }

    v316 = v237;
    *&v312 = v43;
    *(&v312 + 1) = v43;
    if (v43 < 0.0)
    {
      v43 = -v43;
      *&v312 = v43;
      *(&v312 + 1) = v43;
    }

    v248 = 0.0;
    if (v43 != 0.0)
    {
      v248 = v43 * 1000000.0 / v43;
    }

    v313 = v248;
  }

  else if (!(v176 | v179) || v176 >= 4 && v179 >= 4)
  {
    v241 = 0;
    *v338 = 0;
    do
    {
      v242 = &v338[v241];
      *(v242 + 40) = xmmword_100092590;
      *(v242 + 7) = 0;
      *(v242 + 8) = 0;
      *(v242 + 72) = xmmword_1000925A0;
      v241 += 56;
      v242[88] = 0;
    }

    while (v241 != 112);
    goto LABEL_407;
  }

  sub_100032158(a1, v335, v334, v80 < 0.0, v176, v179, v214, v217, &v317, &v314, &v312, &v310);
}

unint64_t *sub_10001100C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v70 = a1;
  v71 = a2;
  v73 = a1;
  v74 = a2;
  v75[1] = a2;
  v75[2] = a1;
  sub_10000F564(&v76, *(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24));
  v92 = a4;
  v93 = a5;
  if (v87 == 100)
  {
    return a6;
  }

  v12 = a3[11];
  *v57 = a3[10];
  *&v57[16] = v12;
  v58 = *(a3 + 24);
  v13 = a3[7];
  *&v53[16] = a3[6];
  v54 = v13;
  v14 = a3[9];
  v55 = a3[8];
  v56 = v14;
  v15 = a3[3];
  v52[0] = a3[2];
  v52[1] = v15;
  v16 = a3[5];
  v52[2] = a3[4];
  *v53 = v16;
  v17 = a3[1];
  v50 = *a3;
  v51 = v17;
  if (v87 <= 0x68u)
  {
    if (v87 != 99)
    {
      if (v87 != 101 || (v88 & 1) != 0)
      {
        return a6;
      }

      sub_100031AF4(&v50, &v76, &v72);
LABEL_30:
      v35 = &v50;
LABEL_31:
      sub_100032AE8(a6, v35);
      return a6;
    }

    if ((v88 & 1) == 0)
    {
      if (v90)
      {
        sub_100031614(a1, a2, &v50, &v76, &v87, &v72);
      }

      else
      {
        sub_100031AF4(&v50, &v76, &v72);
        LODWORD(v51) = 5;
      }

      goto LABEL_30;
    }

    v19 = a3[11];
    *v68 = a3[10];
    *&v68[16] = v19;
    v69 = *(a3 + 24);
    v20 = a3[7];
    *&v64[16] = a3[6];
    v65 = v20;
    v21 = a3[9];
    v66 = a3[8];
    v67 = v21;
    v22 = a3[3];
    v61 = a3[2];
    v62 = v22;
    v23 = a3[5];
    v63 = a3[4];
    *v64 = v23;
    v24 = a3[1];
    v59 = *a3;
    v60 = v24;
    v25 = v91;
    if (v90 == 1)
    {
      v26 = v73;
      v27 = *(v73 + 16);
      v28 = *(v73 + 24);
      if ((*(v73 + 80) & 1) == 0)
      {
        v30 = *v28;
        v29 = v28[1];
        v31 = *(v73 + 32);
        if (sub_10000B2C4(*v28, v29, *v31, v31[1]))
        {
          v32 = *(*v73 + 88) + 1;
          while (--v32)
          {
            v33 = v31 + 2;
            *(v26 + 32) = v31 + 2;
            if (v31 + 2 == *(v26 + 48))
            {
              v34 = *(v26 + 40);
              *(v26 + 32) = v34;
              v33 = v34;
              if (*(v26 + 56) == 1)
              {
                v33 = v34 + 2;
                *(v26 + 32) = v34 + 2;
                if (v31 == v34)
                {
                  *(v26 + 32) = v34;
                  v33 = v34;
                }
              }
            }

            v31 = v33;
            if (!sub_10000B2C4(v30, v29, *v33, v33[1]))
            {
              goto LABEL_34;
            }
          }
        }

        v33 = v31;
LABEL_34:
        *(v26 + 64) = *v33;
        *(v26 + 80) = 1;
      }

      v37 = sub_10000DCA4(v27, v28, (v26 + 64));
      if (v37 == 1)
      {
        v38 = 2;
        goto LABEL_39;
      }

      if (v37)
      {
        v38 = 1;
LABEL_39:
        DWORD2(v65) = 3;
        DWORD2(v61) = v38;
        LODWORD(v60) = 5;
        *&v64[24] = v84;
        v59 = v78;
        *&v64[8] = v83;
        *&v68[8] = v85;
        *&v68[24] = v86;
        sub_100032AE8(a6, &v59);
      }
    }

    if (v25 != 1)
    {
      return a6;
    }

    v39 = v74;
    v40 = *(v74 + 16);
    v41 = *(v74 + 24);
    if ((*(v74 + 80) & 1) == 0)
    {
      v43 = *v41;
      v42 = v41[1];
      v44 = *(v74 + 32);
      if (sub_10000B2C4(*v41, v42, *v44, v44[1]))
      {
        v45 = *(*v39 + 88) + 1;
        while (--v45)
        {
          v46 = v44 + 2;
          *(v39 + 32) = v44 + 2;
          if (v44 + 2 == *(v39 + 48))
          {
            v47 = *(v39 + 40);
            *(v39 + 32) = v47;
            v46 = v47;
            if (*(v39 + 56) == 1)
            {
              v46 = v47 + 2;
              *(v39 + 32) = v47 + 2;
              if (v44 == v47)
              {
                *(v39 + 32) = v47;
                v46 = v47;
              }
            }
          }

          v44 = v46;
          if (!sub_10000B2C4(v43, v42, *v46, v46[1]))
          {
            goto LABEL_52;
          }
        }
      }

      v46 = v44;
LABEL_52:
      *(v39 + 64) = *v46;
      *(v39 + 80) = 1;
    }

    v48 = sub_10000DCA4(v40, v41, (v39 + 64));
    if (v48 == 1)
    {
      v49 = 2;
    }

    else
    {
      if (!v48)
      {
        return a6;
      }

      v49 = 1;
    }

    DWORD2(v65) = v49;
    DWORD2(v61) = 3;
    LODWORD(v60) = 5;
    v59 = v77;
    *&v64[8] = v79;
    *&v64[24] = v80;
    *&v68[8] = v81;
    *&v68[24] = v82;
    v35 = &v59;
    goto LABEL_31;
  }

  switch(v87)
  {
    case 'i':
      LODWORD(v51) = 2;
      v50 = v77;
      *&v53[8] = v79;
      *&v53[24] = v80;
      *&v57[8] = v81;
      *&v57[24] = v82;
      v18 = v89 == 1;
      DWORD2(v52[5 * (v89 != 1)]) = 1;
      DWORD2(v52[5 * v18]) = 2;
      goto LABEL_30;
    case 't':
      sub_100030F34(&v50, &v76, &v87, &v72);
      goto LABEL_30;
    case 'm':
      if (v91 == 1)
      {
        sub_1000303C4(&v50, &v76, &v87, &v72);
      }

      else
      {
        sub_10003097C(&v50, &v76, &v87, v75);
      }

      goto LABEL_30;
  }

  return a6;
}

double sub_100011510(double *a1)
{
  v1 = *a1;
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0)
  {
    v8 = a1;
    v7 = __cxa_guard_acquire(&qword_1000B2BA0);
    a1 = v8;
    if (v7)
    {
      qword_1000B2B98 = 0x3F91DF46A2529D39;
      __cxa_guard_release(&qword_1000B2BA0);
      a1 = v8;
    }
  }

  v2 = *&qword_1000B2B98;
  v3 = a1[1];
  if ((atomic_load_explicit(&qword_1000B2BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B2BA0))
  {
    qword_1000B2B98 = 0x3F91DF46A2529D39;
    __cxa_guard_release(&qword_1000B2BA0);
  }

  v4 = v1 * v2;
  cosval = __sincos_stret(v3 * *&qword_1000B2B98).__cosval;
  return __sincos_stret(v4).__cosval * cosval;
}

void *sub_10001162C(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x70A3D70A3D70A3D7 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 19 - v3;
      v6 = &v2[-(v5 / 0x14)];
      *result = v6;
      v4 = *v6 + 200 * (20 * (v5 / 0x14) - v5) + 3800;
    }

    else
    {
      *result = &v2[v3 / 0x14];
      v4 = v2[v3 / 0x14] + 200 * (v3 % 0x14);
    }

    result[1] = v4;
  }

  return result;
}

void sub_1000116D0(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_10001A5DC();
}

void sub_100011728(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_10001A5DC();
}

void sub_100011770(void ***a1)
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
        v6 = v4 - 3;
        sub_10000A2F0(*(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1000117F8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 10;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 20;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}