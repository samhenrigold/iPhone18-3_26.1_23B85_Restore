void sub_77C234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_77C290(uint64_t *a1, unint64_t a2)
{
  if (0x4FBCDA3AC10C9715 * ((a1[2] - *a1) >> 7) < a2)
  {
    if (a2 < 0x864B8A7DE6D1ELL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_77C3C8(uint64_t *a1, unint64_t a2)
{
  if (0x5DDB1ADCB91F64A7 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x52DA224E52347)
    {
      operator new();
    }

    sub_1794();
  }
}

unint64_t sub_77C500(uint64_t a1, void *a2)
{
  result = sub_4D1DC0(a2);
  if (result)
  {
    v4 = *(sub_45AC50(a2) + 8);
    v5 = (v4 - *v4);
    if (*v5 >= 0x11u)
    {
      v6 = v5[8];
      if (v6)
      {
        v7 = (*(v4 + v6) >> 3) & 1;
        result = sub_4D1DC0(a2);
        if (!result)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    v7 = 0;
    result = sub_4D1DC0(a2);
    if (result)
    {
LABEL_7:
      v8 = result;
      v9 = 0;
      for (i = 0; v8 != i; ++i)
      {
        v12 = *(sub_4D1F50(a2, i) + 8);
        v14 = (v12 - *v12);
        if (*v14 >= 0x11u && (v15 = v14[8]) != 0)
        {
          v16 = v7;
          if (v7 != ((*(v12 + v15) & 8) == 0))
          {
            v16 = (*(v12 + v15) & 8) == 0;
LABEL_16:
            v17 = a2[1548];
            v18 = a2[1549];
            if (v17 < v18)
            {
              *v17 = v9;
              *(v17 + 8) = v16;
              v11 = v17 + 16;
            }

            else
            {
              v19 = a2[1547];
              v20 = v17 - v19;
              v21 = (v17 - v19) >> 4;
              v22 = v21 + 1;
              if ((v21 + 1) >> 60)
              {
                sub_1794();
              }

              v23 = v18 - v19;
              if (v23 >> 3 > v22)
              {
                v22 = v23 >> 3;
              }

              if (v23 >= 0x7FFFFFFFFFFFFFF0)
              {
                v24 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v22;
              }

              if (v24)
              {
                if (!(v24 >> 60))
                {
                  operator new();
                }

                sub_1808();
              }

              v25 = 16 * v21;
              *v25 = v9;
              *(v25 + 8) = v16;
              v11 = 16 * v21 + 16;
              memcpy(0, v19, v20);
              a2[1547] = 0;
              a2[1548] = v11;
              a2[1549] = 0;
              if (v19)
              {
                operator delete(v19);
              }
            }

            a2[1548] = v11;
          }
        }

        else
        {
          v16 = 1;
          if (!v7)
          {
            goto LABEL_16;
          }
        }

        result = sub_4D23F8(a2, i, v13);
        v9 += result;
        v7 = v16;
      }
    }
  }

  return result;
}

uint64_t sub_77C700(unsigned int **a1, uint64_t a2)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    return -1;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v2 - *a1);
  v37 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
  v38 = vdupq_n_s64(0x4076800000000000uLL);
  v35 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
  v36 = vdupq_n_s64(0xC066800000000000);
  while (1)
  {
    v10 = *a1;
    v11 = sub_41224(a1, v7);
    v13 = *v10;
    v12 = v10[1];
    if (*v10 == -1 && v12 == -1)
    {
      break;
    }

    v16 = *v11;
    v15 = v11[1];
    if (*v11 == -1 && v15 == -1)
    {
      break;
    }

    v18 = exp(3.14159265 - v12 * 6.28318531 / 4294967300.0);
    v19 = atan((v18 - 1.0 / v18) * 0.5) * 57.2957795 * 0.0174532925;
    v20.i64[0] = v13;
    v20.i64[1] = v16;
    v21 = exp(3.14159265 - v15 * 6.28318531 / 4294967300.0);
    v22 = atan((v21 - 1.0 / v21) * 0.5) * 57.2957795 * 0.0174532925;
    v23 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v20), v38), v37), v36), v35);
    v39 = vsubq_f64(v23, vdupq_laneq_s64(v23, 1)).f64[0];
    v24 = sin((v19 - v22) * 0.5);
    v25 = v24 * v24;
    v26 = cos(v19);
    v27 = v26 * cos(v22);
    v28 = sin(0.5 * v39);
    v29 = atan2(sqrt(v28 * v28 * v27 + v25), sqrt(1.0 - (v28 * v28 * v27 + v25)));
    v30 = (v29 + v29) * 6372797.56 * 100.0;
    if (v30 >= 0.0)
    {
      v31 = v30;
      if (v30 >= 4.50359963e15)
      {
        goto LABEL_21;
      }

      v32 = (v30 + v30) + 1;
    }

    else
    {
      v31 = v30;
      if (v30 <= -4.50359963e15)
      {
        goto LABEL_21;
      }

      v32 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
    }

    v31 = (v32 >> 1);
LABEL_21:
    if (v31 >= 9.22337204e18)
    {
      v9 = 0x7FFFFFFFFFFFFFFELL;
      if (a2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      goto LABEL_4;
    }

    if (v30 >= 0.0)
    {
      if (v30 >= 4.50359963e15)
      {
        goto LABEL_28;
      }

      v33 = (v30 + v30) + 1;
    }

    else
    {
      if (v30 <= -4.50359963e15)
      {
        goto LABEL_28;
      }

      v33 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
    }

    v30 = (v33 >> 1);
LABEL_28:
    v9 = v30;
    if (v30 >= a2)
    {
      break;
    }

LABEL_4:
    if (v9 > v6)
    {
      v6 = v9;
      v5 = v7;
    }

    if (v8 == ++v7)
    {
      return *sub_41224(a1, v5);
    }
  }

  v5 = v7;
  return *sub_41224(a1, v5);
}

unint64_t sub_77CA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_4C35B0(a2);
  if (result - 1 == a3)
  {
    v10 = *a4;
    v11 = *(a4 + 8);
    if (*a4 != v11)
    {
      while (v10[44] != 2)
      {
        v10 += 110;
        if (v10 == v11)
        {
          goto LABEL_11;
        }
      }
    }

    if (v10 == v11)
    {
LABEL_11:
      if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
      {
        sub_78922C(&unk_27337E8);
        __cxa_guard_release(&qword_27339A0);
      }

      v10 = &unk_27337E8;
      v12 = a6;
    }

    else
    {
      v12 = a6;
    }

    return sub_69AE48(v12, v10);
  }

  return result;
}

char **sub_77CB78(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 1128;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_266C800[v6])(&v8, v3 - 1128);
        }

        *(v3 - 2) = -1;
        v3 -= 1128;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_77CEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_77CF1C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  v5 = *a1;
  v9 = 13;
  strcpy(v8, "RouteGuidance");
  memset(v7, 0, sizeof(v7));
  v6 = sub_3AEC94(v5, v8, v7);
  sub_41D7AC(v6, v10);
  a1[2] = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 6) = 0;
  *(a1 + 14) = 0;
  sub_782890((a1 + 2), v10);
}

void sub_77DE18()
{
  v1 = *(v0 + 1648);
  *(v0 + 1648) = 0;
  if (v1)
  {
    JUMPOUT(0x77DDCCLL);
  }

  JUMPOUT(0x77DD78);
}

uint64_t sub_77DE5C(uint64_t a1)
{
  v2 = *(a1 + 4912);
  if (v2)
  {
    *(a1 + 4920) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 1856);
  *(a1 + 1856) = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = *(a1 + 1848);
  *(a1 + 1848) = 0;
  if (v4)
  {
    sub_5135D0((v4 + 1288));
    operator delete();
  }

  v5 = *(a1 + 1840);
  *(a1 + 1840) = 0;
  if (v5)
  {
    if (*(v5 + 31) < 0)
    {
      operator delete(*(v5 + 8));
    }

    operator delete();
  }

  v6 = *(a1 + 1832);
  *(a1 + 1832) = 0;
  if (v6)
  {
    sub_78C74C(a1 + 1832, v6);
  }

  v7 = *(a1 + 1824);
  *(a1 + 1824) = 0;
  if (v7)
  {
    if (*(v7 + 31) < 0)
    {
      operator delete(*(v7 + 8));
    }

    operator delete();
  }

  v8 = *(a1 + 1816);
  *(a1 + 1816) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 1808);
  *(a1 + 1808) = 0;
  if (v9)
  {
    sub_528AB4(v9 + 160);
    operator delete();
  }

  v10 = *(a1 + 1800);
  *(a1 + 1800) = 0;
  if (v10)
  {
    operator delete();
  }

  v11 = *(a1 + 1792);
  *(a1 + 1792) = 0;
  if (v11)
  {
    v12 = *(v11 + 1752);
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    sub_528AB4(v11 + 168);
    operator delete();
  }

  v13 = *(a1 + 1784);
  *(a1 + 1784) = 0;
  if (v13)
  {
    operator delete();
  }

  v14 = *(a1 + 1776);
  *(a1 + 1776) = 0;
  if (v14)
  {
    sub_F4AF44(v14);
    operator delete();
  }

  v15 = *(a1 + 1768);
  *(a1 + 1768) = 0;
  if (v15)
  {
    sub_F26220(v15);
    operator delete();
  }

  v16 = *(a1 + 1760);
  *(a1 + 1760) = 0;
  if (v16)
  {
    sub_78F100(v16);
    operator delete();
  }

  v17 = *(a1 + 1752);
  *(a1 + 1752) = 0;
  if (v17)
  {
    operator delete();
  }

  v18 = *(a1 + 1744);
  *(a1 + 1744) = 0;
  if (v18)
  {
    nullsub_1();
    operator delete();
  }

  v19 = *(a1 + 1736);
  *(a1 + 1736) = 0;
  if (v19)
  {
    operator delete();
  }

  v20 = *(a1 + 1728);
  *(a1 + 1728) = 0;
  if (v20)
  {
    sub_6D2D60(v20);
    operator delete();
  }

  v21 = *(a1 + 1720);
  *(a1 + 1720) = 0;
  if (v21)
  {
    sub_78C26C(a1 + 1720, v21);
  }

  v22 = *(a1 + 1712);
  *(a1 + 1712) = 0;
  if (v22)
  {
    operator delete();
  }

  v23 = *(a1 + 1704);
  *(a1 + 1704) = 0;
  if (v23)
  {
    operator delete();
  }

  v24 = *(a1 + 1696);
  *(a1 + 1696) = 0;
  if (v24)
  {
    operator delete();
  }

  v25 = *(a1 + 1688);
  *(a1 + 1688) = 0;
  if (v25)
  {
    sub_624E38(v25);
    operator delete();
  }

  v26 = *(a1 + 1680);
  *(a1 + 1680) = 0;
  if (v26)
  {
    v27 = *(v26 + 3896);
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    v28 = *(v26 + 24);
    if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    operator delete();
  }

  v29 = *(a1 + 1672);
  *(a1 + 1672) = 0;
  if (v29)
  {
    v30 = *(v29 + 24);
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }

    operator delete();
  }

  v31 = *(a1 + 1664);
  *(a1 + 1664) = 0;
  if (v31)
  {
    sub_78BCF8(a1 + 1664, v31);
  }

  v32 = *(a1 + 1656);
  *(a1 + 1656) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(a1 + 1648);
  *(a1 + 1648) = 0;
  if (v33)
  {
    sub_78BB3C(a1 + 1648, v33);
  }

  v34 = *(a1 + 1640);
  *(a1 + 1640) = 0;
  if (v34)
  {
    operator delete();
  }

  v35 = *(a1 + 1632);
  *(a1 + 1632) = 0;
  if (v35)
  {
    sub_6926D4((v35 + 3568));
    sub_5135D0((v35 + 1304));
    operator delete();
  }

  if (*(a1 + 1631) < 0)
  {
    operator delete(*(a1 + 1608));
  }

  sub_528AB4(a1 + 32);
  return a1;
}

void sub_77E3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v8;
  v23 = v22;
  sub_7E9A4(v74);
  *v23 = 0;
  v23[1] = 0;
  v23[2] = 0;
  v72[1] = 0;
  v72[0] = 0;
  v73 = 0;
  sub_60BAC4(v72, 0x86BCA1AF286BCA1BLL * (v18[1] - *v18));
  sub_78F390(*v18, v18[1], v72);
  v24 = v72[1];
  v25 = v72[0];
  if (v72[0] != v72[1])
  {
    while (sub_4C4A30(v25) && !sub_4C49D0(v25))
    {
      v25 += 128;
      if (v25 == v24)
      {
        v26 = sub_3AF4C0(*v21);
        sub_77EAD4(v21, v18, v20, v12, v27, v28, v29, v30);
        v31 = *v23;
        if (*v23)
        {
          v32 = v23[1];
          v33 = *v23;
          if (v32 != v31)
          {
            do
            {
              v32 = sub_5C1158(v32 - 7808);
            }

            while (v32 != v31);
            v33 = *v23;
          }

          v23[1] = v31;
          operator delete(v33);
        }

        v34 = v59;
        *v23 = v59;
        v23[2] = v60;
        if (*(v21 + 25) == 1 && *(v21 + 1562) == 1)
        {
          v35 = *(v21 + 1631);
          v36 = v35;
          if (v35 < 0)
          {
            v35 = v21[202];
          }

          if (v35 == (&dword_0 + 3))
          {
            v37 = v36 >= 0 ? (v21 + 201) : v21[201];
            v38 = *v37;
            v39 = *(v37 + 2);
            if (v38 == 21062 && v39 == 65)
            {
              v42 = *(&v34 + 1);
              v41 = v34;
              if (v34 == *(&v34 + 1))
              {
LABEL_26:
                sub_6A06BC(v23);
              }

              else
              {
                while (!sub_68D058(v41))
                {
                  v41 += 976;
                  if (v41 == v42)
                  {
                    goto LABEL_26;
                  }
                }
              }
            }
          }
        }

        sub_69FA50(v23);
        sub_7B817C(v21[220], v16, v23, v43, v44, v45, v46, v47);
        sub_7E974(v74);
        sub_51E828(v75, *v21, v26, (v21 + 4));
        sub_51EAC8(v75, v23);
        v21[251] = (round(sub_7EA60(v74)) + v21[251]);
        sub_7E974(v74);
        sub_801884(v21[226], v21 + 1252, v23);
        v21[252] = (round(sub_7EA60(v74)) + v21[252]);
        sub_7E974(v74);
        sub_7DCD04(v21[225], v23);
        v21[253] = (round(sub_7EA60(v74)) + v21[253]);
        sub_780154(v21, v23);
        sub_7E974(v74);
        sub_67A1F8(v69, *v21, 0, *(v21 + 1598), v21 + 201);
        if ((atomic_load_explicit(&qword_27333C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27333C0))
        {
          sub_787F9C(&unk_27331B8);
        }

        if (*(v10 + 8))
        {
          v48 = *v10;
        }

        else
        {
          v48 = &unk_27331B8;
        }

        sub_61491C(v68);
        sub_5D9A10(&v59, *v21, v68, v48, v69);
        if (v72[1] != v72[0])
        {
          v49 = 0;
          v50 = 0;
          v51 = (v72[1] - v72[0]) >> 7;
          do
          {
            sub_5D9C30(&v59, v72[0] + v50, v14, (*v23 + v49));
            v50 += 128;
            v49 += 7808;
            --v51;
          }

          while (v51);
        }

        v21[257] = (round(sub_7EA60(v74)) + v21[257]);
        v52 = *(v21 + 1445);
        sub_7E974(v74);
        if (v52)
        {
          sub_58EAC0(v21[227], v48, v23);
          v53 = *v23;
          v54 = v23[1];
          if (*v23 == v54 || *(v21 + 1554) != 1)
          {
            v55 = 254;
          }

          else
          {
            v55 = 254;
            do
            {
              if (*(v21 + 1554) == 1 && *(v21 + 26) == 1)
              {
                sub_6555D0(v21[212], v69);
              }

              v53 += 7808;
            }

            while (v53 != v54);
          }
        }

        else
        {
          sub_58EAC0(v21[207], v48, v23);
          v55 = 255;
        }

        v21[v55] = (round(sub_7EA60(v74)) + v21[v55]);
        sub_7E974(v74);
        sub_7D1554(v21[232], v23);
        v21[259] = (round(sub_7EA60(v74)) + v21[259]);
        if (v67 < 0)
        {
          operator delete(__p);
        }

        sub_528AB4(&v65);
        sub_559B98(&v64);
        v56 = v63;
        if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v56->__on_zero_shared)(v56);
          std::__shared_weak_count::__release_weak(v56);
        }

        if (v61)
        {
          v62 = v61;
          operator delete(v61);
        }

        sub_77B480(v68);
        if (v71 < 0)
        {
          operator delete(v70);
        }

        sub_7881CC(v75);
        break;
      }
    }

    v25 = v72[0];
  }

  if (v25)
  {
    v57 = v72[1];
    v58 = v25;
    if (v72[1] != v25)
    {
      do
      {
        v57 -= 128;
        sub_60B38C(v57);
      }

      while (v57 != v25);
      v58 = v72[0];
    }

    v72[1] = v25;
    operator delete(v58);
  }
}

void sub_77EA1C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27333C0);
  if (SLOBYTE(STACK[0x306F]) < 0)
  {
    operator delete(STACK[0x3058]);
  }

  sub_7881CC(&STACK[0x3168]);
  sub_60A84C(&STACK[0x3130]);
  sub_5DAA94(v1);
  _Unwind_Resume(a1);
}

void sub_77EAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v147 = v9;
  v11 = v10;
  v13 = v12;
  v14 = v8;
  v16 = v15;
  sub_7E9A4(v198);
  *v16 = 0;
  v16[1] = 0;
  v16[2] = 0;
  sub_781EEC(v16, 0x86BCA1AF286BCA1BLL * ((v13[1] - *v13) >> 3));
  v18 = *v11;
  v17 = v11[1];
  v150 = v16;
  v148 = v11;
  if (*v11 != v17)
  {
    while (*(v18 + 44) != 2)
    {
      v18 += 440;
      if (v18 == v17)
      {
        goto LABEL_6;
      }
    }
  }

  if (v18 == v17)
  {
LABEL_6:
    if (atomic_load_explicit(&qword_27339A0, memory_order_acquire))
    {
      v18 = &unk_27337E8;
    }

    else
    {
      if (__cxa_guard_acquire(&qword_27339A0))
      {
        sub_78922C(&unk_27337E8);
        __cxa_guard_release(&qword_27339A0);
      }

      v18 = &unk_27337E8;
    }
  }

  sub_FA06C4(v193, *v14);
  v19 = *v13;
  v146 = v13[1];
  if (*v13 != v146)
  {
    v145 = v18;
    v149 = 0;
    while (1)
    {
      v21 = v19;
      sub_68C444(v192, v19);
      ++*(v14 + 2080);
      v151 = v21;
      *(v14 + 2084) += sub_4C35B0(v21);
      v22 = sub_4C5154(v21);
      sub_68DB34(v192, v22);
      v23 = sub_4C4AC8(v21);
      sub_68DB2C(v192, v23);
      v24 = sub_4C514C(v21);
      sub_68F8A4(v192, v24);
      nullsub_1();
      v26 = v25;
      v27 = sub_4C35B0(v151);
      sub_782024(v26, v27);
      v28 = *(v14 + 1680);
      nullsub_1();
      v31 = *v29;
      v30 = *(v29 + 8);
      if (*v29 != v30)
      {
        do
        {
          sub_616AAC(v28, v31);
          v31 += 1582;
        }

        while (v31 != v30);
      }

      v32 = *(v14 + 1592);
      v33 = sub_68C590(v192);
      if (v33)
      {
        for (i = 0; i != v33; ++i)
        {
          v35 = sub_68C454(v192, i);
          sub_782530(v14, v151, i, v11, v32, v35);
        }
      }

      v36 = *v14;
      nullsub_1();
      v39 = *v37;
      v38 = v37[1];
      if (*v37 != v38)
      {
        do
        {
          sub_60E420(v39, v36);
          v39 += 12656;
        }

        while (v39 != v38);
      }

      nullsub_1();
      v41 = *v40;
      v42 = v40[1];
      while (v41 != v42)
      {
        v43 = sub_3CF22C(v41);
        v44 = *(v43 + 24) - *(v43 + 16);
        v45 = v44 >> 2;
        v46 = *(v41 + 1208);
        v47 = *(v41 + 1200);
        v48 = (v46 - v47) >> 2;
        v49 = (v44 >> 2) - v48;
        if (v44 >> 2 <= v48)
        {
          if (v44 >> 2 >= v48)
          {
            goto LABEL_36;
          }

          v53 = v47 + v44;
        }

        else
        {
          v50 = *(v41 + 1216);
          if (v49 > (v50 - v46) >> 2)
          {
            if (!(v45 >> 62))
            {
              v51 = v50 - v47;
              if (v51 >> 1 > v45)
              {
                v45 = v51 >> 1;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v52 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v52 = v45;
              }

              if (!(v52 >> 62))
              {
                operator new();
              }

              sub_1808();
            }

            sub_1794();
          }

          memset_pattern16(*(v41 + 1208), &unk_2266850, 4 * v49);
          v53 = v46 + 4 * v49;
        }

        *(v41 + 1208) = v53;
LABEL_36:
        v54 = sub_4D26AC(v41);
        v55 = sub_3CF22C(v41);
        v56 = *(v41 + 1208) - *(v41 + 1200);
        v16 = v150;
        if (v56)
        {
          v57 = 0;
          v58 = *(v55 + 256);
          v59 = v56 >> 2;
          v60 = v58 / 10 + v54;
          v61 = v58 < 0;
          v62 = v58 % 10;
          if (v61)
          {
            v63 = -5;
          }

          else
          {
            v63 = 5;
          }

          v64 = v60 + (((103 * (v63 + v62)) >> 15) & 1) + ((103 * (v63 + v62)) >> 10);
          do
          {
            v65 = sub_4D2720(v41, v57, 0);
            v66 = sub_617018((v41 + 1200), v57);
            if (v65 < 0)
            {
              v67 = -5;
            }

            else
            {
              v67 = 5;
            }

            v68 = 103 * (v67 + v65 % 10);
            v64 += v65 / 10 + ((v68 >> 15) & 1) + (v68 >> 10);
            *v66 = v64;
            ++v57;
          }

          while (v59 != v57);
        }

        v41 += 12656;
      }

      if (!sub_E89A2C(*v14) && *(v14 + 1264) == 2)
      {
        sub_7E974(v198);
        sub_929DE8(*(v14 + 1848), (v14 + 1264));
        *(v14 + 1920) = (round(sub_7EA60(v198)) + *(v14 + 1920));
      }

      sub_7D41D8(*(v14 + 1792));
      sub_7E974(v198);
      sub_8724EC(*(v14 + 1840), v151, v192);
      *(v14 + 1904) = (round(sub_7EA60(v198)) + *(v14 + 1904));
      sub_F31D08(*(v14 + 1768));
      nullsub_1();
      nullsub_1();
      v70 = *v69;
      v71 = v69[1];
      if (*v69 != v71)
      {
        v72 = v149;
        do
        {
          v73 = *(v70 + 1104);
          v74 = *(v70 + 1112);
          if (v73 != v74)
          {
            v75 = v74 - v73 - 2616;
            if (v75 >= 0xA38)
            {
              v78 = v75 / 0xA38 + 1;
              v76 = v72 + (v78 & 0xFFFFFFFE);
              v77 = &v73[2616 * (v78 & 0x3FFFFFFFFFFFFELL)];
              v79 = v72;
              v80 = *(v70 + 1104);
              v81 = v78 & 0x3FFFFFFFFFFFFELL;
              do
              {
                *v80 = v79;
                v80[654] = v79 + 1;
                v80 += 1308;
                v79 += 2;
                v81 -= 2;
              }

              while (v81);
              if (v78 == (v78 & 0x3FFFFFFFFFFFFELL))
              {
                goto LABEL_51;
              }
            }

            else
            {
              v76 = v72;
              v77 = *(v70 + 1104);
            }

            do
            {
              *v77 = v76++;
              v77 += 2616;
            }

            while (v77 != v74);
          }

LABEL_51:
          v72 -= 210151305 * ((v74 - v73) >> 3);
          v70 += 12656;
        }

        while (v70 != v71);
      }

      v82 = sub_68C794(v192);
      if (*(v14 + 1520) == 1)
      {
        nullsub_1();
        v85 = *v83;
        v84 = *(v83 + 8);
        if (*v83 != v84)
        {
          do
          {
            sub_77C500(v14, v85);
            v85 += 1582;
          }

          while (v85 != v84);
        }
      }

      v86 = sub_68C590(v192);
      if (v86)
      {
        for (j = 0; j != v86; ++j)
        {
          v88 = sub_68C454(v192, j);
          v89 = *(v88 + 1104);
          v90 = *(v88 + 1112);
          if (v89 != v90)
          {
            v91 = v90 - v89 - 2616;
            if (v91 >= 0xA38)
            {
              v93 = v91 / 0xA38 + 1;
              v92 = v89 + 2616 * (v93 & 0x3FFFFFFFFFFFFELL);
              v94 = v93 & 0x3FFFFFFFFFFFFELL;
              do
              {
                *(v89 + 8) = j;
                *(v89 + 2624) = j;
                v89 += 5232;
                v94 -= 2;
              }

              while (v94);
              if (v93 == (v93 & 0x3FFFFFFFFFFFFELL))
              {
                continue;
              }
            }

            else
            {
              v92 = *(v88 + 1104);
            }

            do
            {
              *(v92 + 8) = j;
              v92 += 2616;
            }

            while (v92 != v90);
          }
        }
      }

      v95 = *v14;
      nullsub_1();
      v98 = *v96;
      v97 = *(v96 + 8);
      if (*v96 != v97)
      {
        do
        {
          sub_60E82C(v98, v95, v14 + 1000);
          v98 += 1582;
        }

        while (v98 != v97);
      }

      sub_7E974(v198);
      sub_882204(*(v14 + 1824), v192, v14 + 1000);
      *(v14 + 1912) = (round(sub_7EA60(v198)) + *(v14 + 1912));
      sub_7E974(v198);
      sub_817880(*(v14 + 1832));
      *(v14 + 1936) = (round(sub_7EA60(v198)) + *(v14 + 1936));
      v99 = sub_813AFC(*(v14 + 1832));
      *(v14 + 2104) |= v100;
      *(v14 + 2105) |= v101;
      *(v14 + 2096) += v99;
      *(v14 + 2100) += HIDWORD(v99);
      if ((v147 & 1) == 0)
      {
        sub_7E974(v198);
        sub_6BA418(*(v14 + 1720));
        *(v14 + 1944) = (round(sub_7EA60(v198)) + *(v14 + 1944));
      }

      sub_92A4E0();
      nullsub_1();
      v105 = *v103;
      v104 = *(v103 + 8);
      if (*v103 != v104)
      {
        do
        {
          sub_781978(v14, v105, v102);
          v105 += 1582;
        }

        while (v105 != v104);
      }

      sub_5106D0(*(v14 + 1632));
      if (*(v14 + 1264) == 2)
      {
        break;
      }

LABEL_83:
      sub_7E974(v198);
      sub_75138C(*(v14 + 1744));
      *(v14 + 1952) = (round(sub_7EA60(v198)) + *(v14 + 1952));
      sub_7E974(v198);
      sub_57B290(*(v14 + 1648));
      *(v14 + 1968) = (round(sub_7EA60(v198)) + *(v14 + 1968));
      sub_7E974(v198);
      sub_61DA48(*(v14 + 1672));
      *(v14 + 1976) = (round(sub_7EA60(v198)) + *(v14 + 1976));
      sub_7E974(v198);
      nullsub_1();
      *(v14 + 1992) = (round(sub_7EA60(v198)) + *(v14 + 1992));
      sub_7E974(v198);
      sub_7339E4(*(v14 + 1736), v192);
      *(v14 + 2064) = (round(sub_7EA60(v198)) + *(v14 + 2064));
      sub_7E974(v198);
      sub_810754(*(v14 + 1664), v151, v192);
      *(v14 + 1960) = (round(sub_7EA60(v198)) + *(v14 + 1960));
      sub_7E974(v198);
      sub_62F9D8(*(v14 + 1688));
      *(v14 + 1984) = (round(sub_7EA60(v198)) + *(v14 + 1984));
      sub_7E974(v198);
      sub_755FB4(*(v14 + 1752), v192);
      *(v14 + 2000) = (round(sub_7EA60(v198)) + *(v14 + 2000));
      sub_7E974(v198);
      sub_515A30(*(v14 + 1640), v145, v192);
      *(v14 + 2048) = (round(sub_7EA60(v198)) + *(v14 + 2048));
      sub_7E974(v198);
      sub_7B7B20(*(v14 + 1760), v192, __p);
      sub_68F334(v192, __p);
      v110 = __p[0].n128_u64[0];
      if (!__p[0].n128_u64[0])
      {
        goto LABEL_189;
      }

      v111 = __p[0].n128_i64[1];
      v112 = __p[0].n128_u64[0];
      if (__p[0].n128_u64[1] != __p[0].n128_u64[0])
      {
        while (1)
        {
          if (*(v111 - 16) != 1)
          {
            *(v111 - 416) = off_26696C8;
            if ((*(v111 - 385) & 0x80000000) == 0)
            {
              goto LABEL_89;
            }

            goto LABEL_115;
          }

          v113 = *(v111 - 40);
          if (v113)
          {
            break;
          }

LABEL_109:
          if (*(v111 - 49) < 0)
          {
            operator delete(*(v111 - 72));
            if ((*(v111 - 81) & 0x80000000) == 0)
            {
LABEL_111:
              if ((*(v111 - 113) & 0x80000000) == 0)
              {
                goto LABEL_112;
              }

              goto LABEL_124;
            }
          }

          else if ((*(v111 - 81) & 0x80000000) == 0)
          {
            goto LABEL_111;
          }

          operator delete(*(v111 - 104));
          if ((*(v111 - 113) & 0x80000000) == 0)
          {
LABEL_112:
            if ((*(v111 - 137) & 0x80000000) == 0)
            {
              goto LABEL_113;
            }

LABEL_125:
            operator delete(*(v111 - 160));
            if ((*(v111 - 161) & 0x80000000) == 0)
            {
              goto LABEL_114;
            }

            goto LABEL_126;
          }

LABEL_124:
          operator delete(*(v111 - 136));
          if (*(v111 - 137) < 0)
          {
            goto LABEL_125;
          }

LABEL_113:
          if ((*(v111 - 161) & 0x80000000) == 0)
          {
            goto LABEL_114;
          }

LABEL_126:
          operator delete(*(v111 - 184));
LABEL_114:
          sub_33D080(v111 - 376);
          *(v111 - 416) = off_26696C8;
          if ((*(v111 - 385) & 0x80000000) == 0)
          {
LABEL_89:
            if ((*(v111 - 465) & 0x80000000) == 0)
            {
              goto LABEL_90;
            }

            goto LABEL_116;
          }

LABEL_115:
          operator delete(*(v111 - 408));
          if ((*(v111 - 465) & 0x80000000) == 0)
          {
LABEL_90:
            if ((*(v111 - 497) & 0x80000000) == 0)
            {
              goto LABEL_91;
            }

            goto LABEL_117;
          }

LABEL_116:
          operator delete(*(v111 - 488));
          if ((*(v111 - 497) & 0x80000000) == 0)
          {
LABEL_91:
            if ((*(v111 - 521) & 0x80000000) == 0)
            {
              goto LABEL_92;
            }

            goto LABEL_118;
          }

LABEL_117:
          operator delete(*(v111 - 520));
          if ((*(v111 - 521) & 0x80000000) == 0)
          {
LABEL_92:
            if ((*(v111 - 561) & 0x80000000) == 0)
            {
              goto LABEL_93;
            }

            goto LABEL_119;
          }

LABEL_118:
          operator delete(*(v111 - 544));
          if ((*(v111 - 561) & 0x80000000) == 0)
          {
LABEL_93:
            if ((*(v111 - 593) & 0x80000000) == 0)
            {
              goto LABEL_94;
            }

            goto LABEL_120;
          }

LABEL_119:
          operator delete(*(v111 - 584));
          if ((*(v111 - 593) & 0x80000000) == 0)
          {
LABEL_94:
            if (*(v111 - 617) < 0)
            {
              goto LABEL_121;
            }

            goto LABEL_86;
          }

LABEL_120:
          operator delete(*(v111 - 616));
          if (*(v111 - 617) < 0)
          {
LABEL_121:
            operator delete(*(v111 - 640));
          }

LABEL_86:
          v111 -= 1120;
          sub_2C0F28(v111);
          if (v111 == v110)
          {
            v112 = __p[0].n128_u64[0];
            goto LABEL_188;
          }
        }

        v114 = *(v111 - 32);
        v115 = *(v111 - 40);
        if (v114 == v113)
        {
LABEL_108:
          *(v111 - 32) = v113;
          operator delete(v115);
          goto LABEL_109;
        }

        while (1)
        {
          if (*(v114 - 1) < 0)
          {
            operator delete(*(v114 - 3));
            if ((*(v114 - 25) & 0x80000000) == 0)
            {
LABEL_102:
              if (*(v114 - 49) < 0)
              {
                goto LABEL_106;
              }

              goto LABEL_99;
            }
          }

          else if ((*(v114 - 25) & 0x80000000) == 0)
          {
            goto LABEL_102;
          }

          operator delete(*(v114 - 6));
          if (*(v114 - 49) < 0)
          {
LABEL_106:
            operator delete(*(v114 - 9));
          }

LABEL_99:
          v114 -= 31;
          sub_33D5A0(v114);
          if (v114 == v113)
          {
            v115 = *(v111 - 40);
            goto LABEL_108;
          }
        }
      }

LABEL_188:
      __p[0].n128_u64[1] = v110;
      operator delete(v112);
LABEL_189:
      *(v14 + 1928) = (round(sub_7EA60(v198)) + *(v14 + 1928));
      nullsub_1();
      if (*v123 != v123[1])
      {
        nullsub_1();
        v125 = *v124;
        v126 = sub_4D26AC(*v124);
        v127 = sub_4D26B4(v125, 0);
        v128 = sub_4D26B4(v125, 1);
        v129 = sub_4D1DB8(v125);
        v152 = 0x8000000080000000;
        v153 = xmmword_2297C00;
        LODWORD(v153) = 0x7FFFFFFF;
        sub_FA06C8(v193, v126, v127, v128, v129, &v152, __p);
        sub_68DB3C(v192, __p);
      }

      sub_68C448(v192, __p);
      v131 = __p[0].n128_u64[1];
      for (k = __p[0].n128_u64[0]; k != v131; k += 12656)
      {
        v132 = *(k + 1112) - *(k + 1104);
        if (v132)
        {
          v133 = 0;
          v134 = 0x3795876FF3795877 * (v132 >> 3);
          v135 = 1;
          do
          {
            v137 = v135-- != 0;
            sub_721C84(v14 + 2112, *(k + 1104) + v133, *(k + 1096), v137);
            v133 += 2616;
            --v134;
          }

          while (v134);
        }
      }

      v138 = sub_73ED4(v151);
      v11 = v148;
      v139 = *(v138 + 23);
      if ((v139 & 0x80u) != 0)
      {
        v139 = *(v138 + 8);
      }

      if (!v139)
      {
        goto LABEL_216;
      }

      v140 = sub_73ED4(v151);
      if (*(v140 + 23) >= 0)
      {
        v141 = *(v140 + 23);
      }

      else
      {
        v141 = *(v140 + 8);
      }

      if (v141 + 8 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v141 + 8 >= 0x17)
      {
        operator new();
      }

      v153 = 0uLL;
      HIBYTE(v153) = v141 + 8;
      v152 = 0x203A475542454420;
      if (v141)
      {
        if (*(v140 + 23) >= 0)
        {
          v142 = v140;
        }

        else
        {
          v142 = *v140;
        }

        memmove(&v153, v142, v141);
      }

      __p[-1].n128_u8[v141] = 0;
      sub_64BC20(__p, &v152);
      sub_68DD20(v192, __p);
      v11 = v148;
      sub_53A868(__p);
      if (SHIBYTE(v153) < 0)
      {
        operator delete(v152);
        v143 = v16[1];
        if (v143 >= v16[2])
        {
          goto LABEL_217;
        }
      }

      else
      {
LABEL_216:
        v143 = v16[1];
        if (v143 >= v16[2])
        {
LABEL_217:
          v20 = sub_78A7D8(v16, v192);
          goto LABEL_11;
        }
      }

      v20 = sub_789CC8(v143, v192) + 7808;
LABEL_11:
      v149 += v82;
      v16[1] = v20;
      sub_5C1158(v192);
      v19 = v151 + 152;
      if (v151 + 152 == v146)
      {
        goto LABEL_221;
      }
    }

    sub_7E974(v198);
    v106 = *(v14 + 1760);
    __p[0].n128_u8[0] = 0;
    v155 = 0;
    v156 = 0;
    v157 = 0;
    v166 = 0;
    v164 = 0;
    v165 = 0;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    memset(v163, 0, sizeof(v163));
    v170 = 0x3FF0000000000000;
    v171 = 0;
    v172 = 0;
    v173 = 0;
    v174 = 5;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v178 = 0x7FFFFFFF;
    v183 = 0;
    v184 = 0;
    v179 = 0u;
    v180 = 0u;
    v181 = 0u;
    memset(v182, 0, sizeof(v182));
    v185 = -1;
    v186 = 0x7FFFFFFF;
    v187 = 0;
    v188 = 0;
    v189 = -1;
    v190 = -1;
    v191 = 0;
    sub_7B73C4(v106, v192, __p);
    v144 = v82;
    sub_5287C0(__p);
    nullsub_1();
    v108 = *v107;
    v109 = v107[1];
    if (*v107 == v109)
    {
LABEL_82:
      *(v14 + 1928) = (round(sub_7EA60(v198)) + *(v14 + 1928));
      v82 = v144;
      goto LABEL_83;
    }

    while (1)
    {
      v116 = *(v108 + 7416);
      v117 = *(v108 + 7424);
      if (v116 != v117)
      {
        while (!sub_38F64C(v116, 0) || sub_38F538(v116, 0))
        {
          v116 += 1120;
          if (v116 == v117)
          {
            v116 = v117;
            goto LABEL_143;
          }
        }

        if (v116 != v117)
        {
          for (m = v116 + 1120; m != v117; m += 1120)
          {
            if (!sub_38F64C(m, 0) || sub_38F538(m, 0))
            {
              sub_52BE74(v116, m);
              v116 += 1120;
            }
          }
        }
      }

LABEL_143:
      v119 = *(v108 + 7424);
      if (v116 != v119)
      {
        while (v119 != v116)
        {
          if (*(v119 - 16) != 1)
          {
            *(v119 - 416) = off_26696C8;
            if ((*(v119 - 385) & 0x80000000) == 0)
            {
              goto LABEL_149;
            }

            goto LABEL_175;
          }

          v120 = *(v119 - 40);
          if (v120)
          {
            v121 = *(v119 - 32);
            v122 = *(v119 - 40);
            if (v121 == v120)
            {
LABEL_168:
              *(v119 - 32) = v120;
              operator delete(v122);
              goto LABEL_169;
            }

            while (2)
            {
              if (*(v121 - 1) < 0)
              {
                operator delete(*(v121 - 3));
                if (*(v121 - 25) < 0)
                {
                  goto LABEL_165;
                }

LABEL_162:
                if (*(v121 - 49) < 0)
                {
LABEL_166:
                  operator delete(*(v121 - 9));
                }
              }

              else
              {
                if ((*(v121 - 25) & 0x80000000) == 0)
                {
                  goto LABEL_162;
                }

LABEL_165:
                operator delete(*(v121 - 6));
                if (*(v121 - 49) < 0)
                {
                  goto LABEL_166;
                }
              }

              v121 -= 31;
              sub_33D5A0(v121);
              if (v121 == v120)
              {
                v122 = *(v119 - 40);
                goto LABEL_168;
              }

              continue;
            }
          }

LABEL_169:
          if (*(v119 - 49) < 0)
          {
            operator delete(*(v119 - 72));
            if ((*(v119 - 81) & 0x80000000) == 0)
            {
LABEL_171:
              if ((*(v119 - 113) & 0x80000000) == 0)
              {
                goto LABEL_172;
              }

              goto LABEL_184;
            }
          }

          else if ((*(v119 - 81) & 0x80000000) == 0)
          {
            goto LABEL_171;
          }

          operator delete(*(v119 - 104));
          if ((*(v119 - 113) & 0x80000000) == 0)
          {
LABEL_172:
            if ((*(v119 - 137) & 0x80000000) == 0)
            {
              goto LABEL_173;
            }

LABEL_185:
            operator delete(*(v119 - 160));
            if ((*(v119 - 161) & 0x80000000) == 0)
            {
              goto LABEL_174;
            }

            goto LABEL_186;
          }

LABEL_184:
          operator delete(*(v119 - 136));
          if (*(v119 - 137) < 0)
          {
            goto LABEL_185;
          }

LABEL_173:
          if ((*(v119 - 161) & 0x80000000) == 0)
          {
            goto LABEL_174;
          }

LABEL_186:
          operator delete(*(v119 - 184));
LABEL_174:
          sub_33D080(v119 - 376);
          *(v119 - 416) = off_26696C8;
          if ((*(v119 - 385) & 0x80000000) == 0)
          {
LABEL_149:
            if ((*(v119 - 465) & 0x80000000) == 0)
            {
              goto LABEL_150;
            }

            goto LABEL_176;
          }

LABEL_175:
          operator delete(*(v119 - 408));
          if ((*(v119 - 465) & 0x80000000) == 0)
          {
LABEL_150:
            if ((*(v119 - 497) & 0x80000000) == 0)
            {
              goto LABEL_151;
            }

            goto LABEL_177;
          }

LABEL_176:
          operator delete(*(v119 - 488));
          if ((*(v119 - 497) & 0x80000000) == 0)
          {
LABEL_151:
            if ((*(v119 - 521) & 0x80000000) == 0)
            {
              goto LABEL_152;
            }

            goto LABEL_178;
          }

LABEL_177:
          operator delete(*(v119 - 520));
          if ((*(v119 - 521) & 0x80000000) == 0)
          {
LABEL_152:
            if ((*(v119 - 561) & 0x80000000) == 0)
            {
              goto LABEL_153;
            }

            goto LABEL_179;
          }

LABEL_178:
          operator delete(*(v119 - 544));
          if ((*(v119 - 561) & 0x80000000) == 0)
          {
LABEL_153:
            if (*(v119 - 593) < 0)
            {
              goto LABEL_180;
            }

            goto LABEL_154;
          }

LABEL_179:
          operator delete(*(v119 - 584));
          if (*(v119 - 593) < 0)
          {
LABEL_180:
            operator delete(*(v119 - 616));
            if ((*(v119 - 617) & 0x80000000) == 0)
            {
              goto LABEL_145;
            }

            goto LABEL_181;
          }

LABEL_154:
          if ((*(v119 - 617) & 0x80000000) == 0)
          {
            goto LABEL_145;
          }

LABEL_181:
          operator delete(*(v119 - 640));
LABEL_145:
          v119 -= 1120;
          sub_2C0F28(v119);
        }

        *(v108 + 7424) = v116;
      }

      v108 += 12656;
      if (v108 == v109)
      {
        goto LABEL_82;
      }
    }
  }

  v149 = 0;
LABEL_221:
  *(v14 + 2092) = 0;
  *(v14 + 2088) = v149;
  sub_7E974(v198);
  sub_61AC44(*(v14 + 1672), v16);
  *(v14 + 1976) = (round(sub_7EA60(v198)) + *(v14 + 1976));
  if (v196)
  {
    v197 = v196;
    operator delete(v196);
  }

  if (v194)
  {
    v195 = v194;
    operator delete(v194);
  }
}

void sub_780004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  __cxa_guard_abort(&qword_27339A0);
  sub_5DAA94(a23);
  _Unwind_Resume(a1);
}

void sub_780028(_Unwind_Exception *a1)
{
  sub_60B0D4((v2 - 232));
  sub_5DAA94(v1);
  _Unwind_Resume(a1);
}

void sub_780130(_Unwind_Exception *a1)
{
  sub_5C1158(&STACK[0x348]);
  sub_60B0D4((v2 - 232));
  sub_5DAA94(v1);
  _Unwind_Resume(a1);
}

void sub_780154(uint64_t a1, char ***a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v7 = 0;
  }

  else
  {
    v5 = v3 + 976;
    do
    {
      v6 = sub_68E170(v3);
      v7 = v6 != 0;
      if (v6)
      {
        break;
      }

      v3 += 976;
      v14 = v5 == v4;
      v5 += 976;
    }

    while (!v14);
    v3 = *a2;
    v4 = a2[1];
    if (*a2 != v4)
    {
      v8 = v3 + 976;
      do
      {
        v9 = sub_68DFF0(v3);
        if (v9)
        {
          break;
        }

        v3 += 976;
        v14 = v8 == v4;
        v8 += 976;
      }

      while (!v14);
      v3 = *a2;
      v4 = a2[1];
      v106 = v9 != 0;
      v107 = v7;
      if (*a2 != v4)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  v106 = 0;
  v107 = v7;
  if (v3 != v4)
  {
LABEL_12:
    v10 = v3 + 976;
    do
    {
      v11 = sub_68F328(v3);
      v12 = v11[1];
      v14 = v12 == *v11;
      v13 = v12 != *v11;
      v3 += 976;
      v14 = !v14 || v10 == v4;
      v10 += 976;
    }

    while (!v14);
    v109 = v13;
    v112 = *a2;
    v110 = a2[1];
    if (*a2 == v110)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_22:
  v109 = 0;
  v112 = v3;
  v110 = v4;
  if (v3 == v4)
  {
    return;
  }

LABEL_23:
  if (v107)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (v106)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v104 = v16;
  v105 = v15;
  if (v109)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v108 = v17;
  do
  {
    if (*(a1 + 24) != 1)
    {
      goto LABEL_189;
    }

    sub_68E258(v112, __p);
    sub_68E0D8(v112, &v120);
    v124 = 0uLL;
    v125 = 0;
    v19 = __p[0];
    v114 = __p[1];
    if (__p[0] == __p[1])
    {
      v117[0] = 0;
      v117[1] = 0;
      v36 = v105;
      v118 = 0;
    }

    else
    {
      do
      {
        v20 = *(&v124 + 1);
        if (*(&v124 + 1) >= v125)
        {
          v22 = v124;
          v23 = 0x70913F8BCD29C245 * ((*(&v124 + 1) - v124) >> 3) + 1;
          if (v23 > 0x3A196B1EDD80E8)
          {
            sub_1794();
          }

          if (0xE1227F179A53848ALL * ((v125 - v124) >> 3) > v23)
          {
            v23 = 0xE1227F179A53848ALL * ((v125 - v124) >> 3);
          }

          if ((0x70913F8BCD29C245 * ((v125 - v124) >> 3)) >= 0x1D0CB58F6EC074)
          {
            v24 = 0x3A196B1EDD80E8;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            if (v24 <= 0x3A196B1EDD80E8)
            {
              operator new();
            }

            sub_1808();
          }

          v25 = 8 * ((*(&v124 + 1) - v124) >> 3);
          *v25 = 0u;
          *(v25 + 16) = 0u;
          *(v25 + 32) = 0u;
          *(v25 + 48) = 0u;
          *(v25 + 64) = 0u;
          *(v25 + 80) = 0u;
          *(v25 + 96) = 0u;
          *(v25 + 112) = 0u;
          *(v25 + 160) = 0;
          *(v25 + 128) = 0u;
          *(v25 + 144) = 0u;
          *(v25 + 4) = -1;
          *(v25 + 16) = 0;
          *(v25 + 24) = 0;
          *(v25 + 8) = 0;
          *(v25 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v25 + 40) = -1;
          *(v25 + 48) = 0x7FFFFFFF;
          *(v25 + 56) = 0u;
          *(v25 + 72) = 0u;
          *(v25 + 88) = 0u;
          *(v25 + 104) = 0u;
          *(v25 + 113) = 0u;
          *(v25 + 140) = 0;
          *(v25 + 132) = 0;
          *(v25 + 154) = 0;
          *(v25 + 148) = 0;
          v26 = v25 - (v20 - v22);
          *(v25 + 1120) = 0;
          if (v22 != v20)
          {
            v27 = v25 - (v20 - v22);
            v28 = v22;
            do
            {
              *v27 = 0;
              *(v27 + 1120) = -1;
              v29 = v28[280];
              if (v29 != -1)
              {
                v126[0] = v27;
                (off_266C810[v29])(v126, v28);
                *(v27 + 1120) = v29;
              }

              v28 += 282;
              v27 += 1128;
            }

            while (v28 != v20);
            v26 = v25 - (v20 - v22);
            do
            {
              v30 = v22[280];
              if (v30 != -1)
              {
                (off_266C800[v30])(v126, v22);
              }

              v22[280] = -1;
              v22 += 282;
            }

            while (v22 != v20);
            v22 = v124;
          }

          v21 = v25 + 1128;
          *&v124 = v26;
          v125 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          **(&v124 + 1) = 0u;
          *(v20 + 16) = 0u;
          *(v20 + 32) = 0u;
          *(v20 + 48) = 0u;
          *(v20 + 64) = 0u;
          *(v20 + 80) = 0u;
          *(v20 + 96) = 0u;
          *(v20 + 112) = 0u;
          *(v20 + 160) = 0;
          *(v20 + 128) = 0u;
          *(v20 + 144) = 0u;
          *(v20 + 4) = -1;
          *(v20 + 16) = 0;
          *(v20 + 24) = 0;
          *(v20 + 8) = 0;
          *(v20 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v20 + 40) = -1;
          *(v20 + 48) = 0x7FFFFFFF;
          *(v20 + 56) = 0u;
          *(v20 + 72) = 0u;
          *(v20 + 88) = 0u;
          *(v20 + 104) = 0u;
          *(v20 + 113) = 0u;
          *(v20 + 140) = 0;
          *(v20 + 132) = 0;
          *(v20 + 154) = 0;
          *(v20 + 148) = 0;
          *(v20 + 1120) = 0;
          v21 = v20 + 1128;
        }

        *(&v124 + 1) = v21;
        v31 = *(v21 - 8);
        if (v31 != -1)
        {
          (off_266C800[v31])(v126, v21 - 1128);
        }

        *(v21 - 8) = -1;
        sub_52A464(v21 - 1128, v19);
        *(v21 - 8) = 0;
        v19 += 168;
      }

      while (v19 != v114);
      v32 = v124;
      *v117 = v124;
      v118 = v125;
      LOBYTE(v124) = 0;
      if (v107)
      {
        v33 = *(&v32 + 1);
        v34 = v32;
        if (*(&v32 + 1) == v32)
        {
          v36 = 2;
        }

        else
        {
          v35 = v32;
          do
          {
            if (sub_78F9E4(&v124, v35, 0) && (sub_78F9E4(&v124, v35, 1) & 1) != 0)
            {
              v36 = 6;
              goto LABEL_82;
            }

            v35 += 1128;
          }

          while (v35 != v33);
          v37 = v34;
          do
          {
            if (sub_78F9E4(&v124, v37, 1))
            {
              v36 = 4;
              goto LABEL_82;
            }

            v37 += 1128;
          }

          while (v37 != v33);
          while (!sub_78F9E4(&v124, v34, 0))
          {
            v34 += 1128;
            if (v34 == v33)
            {
              v36 = 7;
              goto LABEL_82;
            }
          }

          v36 = 5;
        }
      }

      else
      {
        v36 = 1;
      }
    }

LABEL_82:
    v119 = v36;
    sub_68DFA4(v112, &v119);
    v38 = v117[0];
    if (v117[0])
    {
      v39 = v117[1];
      if (v117[1] != v117[0])
      {
        do
        {
          v40 = v39 - 1128;
          v41 = *(v39 - 2);
          if (v41 != -1)
          {
            (off_266C800[v41])(&v124, v39 - 1128);
          }

          *(v39 - 2) = -1;
          v39 -= 1128;
        }

        while (v40 != v38);
        v38 = v117[0];
      }

      operator delete(v38);
    }

    v124 = 0uLL;
    v125 = 0;
    v42 = v120;
    v115 = v121;
    if (v120 == v121)
    {
      v117[0] = 0;
      v117[1] = 0;
      v59 = v104;
      v118 = 0;
    }

    else
    {
      do
      {
        v43 = *(&v124 + 1);
        if (*(&v124 + 1) >= v125)
        {
          v45 = v124;
          v46 = 0x70913F8BCD29C245 * ((*(&v124 + 1) - v124) >> 3) + 1;
          if (v46 > 0x3A196B1EDD80E8)
          {
            sub_1794();
          }

          if (0xE1227F179A53848ALL * ((v125 - v124) >> 3) > v46)
          {
            v46 = 0xE1227F179A53848ALL * ((v125 - v124) >> 3);
          }

          if ((0x70913F8BCD29C245 * ((v125 - v124) >> 3)) >= 0x1D0CB58F6EC074)
          {
            v47 = 0x3A196B1EDD80E8;
          }

          else
          {
            v47 = v46;
          }

          if (v47)
          {
            if (v47 <= 0x3A196B1EDD80E8)
            {
              operator new();
            }

            sub_1808();
          }

          v48 = 8 * ((*(&v124 + 1) - v124) >> 3);
          *v48 = 0u;
          *(v48 + 16) = 0u;
          *(v48 + 32) = 0u;
          *(v48 + 48) = 0u;
          *(v48 + 64) = 0u;
          *(v48 + 80) = 0u;
          *(v48 + 96) = 0u;
          *(v48 + 112) = 0u;
          *(v48 + 160) = 0;
          *(v48 + 128) = 0u;
          *(v48 + 144) = 0u;
          *(v48 + 4) = -1;
          *(v48 + 16) = 0;
          *(v48 + 24) = 0;
          *(v48 + 8) = 0;
          *(v48 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v48 + 40) = -1;
          *(v48 + 48) = 0x7FFFFFFF;
          *(v48 + 56) = 0u;
          *(v48 + 72) = 0u;
          *(v48 + 88) = 0u;
          *(v48 + 104) = 0u;
          *(v48 + 113) = 0u;
          *(v48 + 140) = 0;
          *(v48 + 132) = 0;
          *(v48 + 154) = 0;
          *(v48 + 148) = 0;
          v49 = v48 - (v43 - v45);
          *(v48 + 1120) = 0;
          if (v45 != v43)
          {
            v50 = v48 - (v43 - v45);
            v51 = v45;
            do
            {
              *v50 = 0;
              *(v50 + 1120) = -1;
              v52 = v51[280];
              if (v52 != -1)
              {
                v126[0] = v50;
                (off_266C810[v52])(v126, v51);
                *(v50 + 1120) = v52;
              }

              v51 += 282;
              v50 += 1128;
            }

            while (v51 != v43);
            v49 = v48 - (v43 - v45);
            do
            {
              v53 = v45[280];
              if (v53 != -1)
              {
                (off_266C800[v53])(v126, v45);
              }

              v45[280] = -1;
              v45 += 282;
            }

            while (v45 != v43);
            v45 = v124;
          }

          v44 = v48 + 1128;
          *&v124 = v49;
          v125 = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          **(&v124 + 1) = 0u;
          *(v43 + 16) = 0u;
          *(v43 + 32) = 0u;
          *(v43 + 48) = 0u;
          *(v43 + 64) = 0u;
          *(v43 + 80) = 0u;
          *(v43 + 96) = 0u;
          *(v43 + 112) = 0u;
          *(v43 + 160) = 0;
          *(v43 + 128) = 0u;
          *(v43 + 144) = 0u;
          *(v43 + 4) = -1;
          *(v43 + 16) = 0;
          *(v43 + 24) = 0;
          *(v43 + 8) = 0;
          *(v43 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v43 + 40) = -1;
          *(v43 + 48) = 0x7FFFFFFF;
          *(v43 + 56) = 0u;
          *(v43 + 72) = 0u;
          *(v43 + 88) = 0u;
          *(v43 + 104) = 0u;
          *(v43 + 113) = 0u;
          *(v43 + 140) = 0;
          *(v43 + 132) = 0;
          *(v43 + 154) = 0;
          *(v43 + 148) = 0;
          *(v43 + 1120) = 0;
          v44 = v43 + 1128;
        }

        *(&v124 + 1) = v44;
        v54 = *(v44 - 8);
        if (v54 != -1)
        {
          (off_266C800[v54])(v126, v44 - 1128);
        }

        *(v44 - 8) = -1;
        sub_52A464(v44 - 1128, v42);
        *(v44 - 8) = 0;
        v42 += 168;
      }

      while (v42 != v115);
      v55 = v124;
      *v117 = v124;
      v118 = v125;
      LOBYTE(v124) = 0;
      if (v106)
      {
        v56 = *(&v55 + 1);
        v57 = v55;
        if (*(&v55 + 1) == v55)
        {
          v59 = 2;
        }

        else
        {
          v58 = v55;
          do
          {
            if (sub_78F9E4(&v124, v58, 0) && (sub_78F9E4(&v124, v58, 1) & 1) != 0)
            {
              v59 = 6;
              goto LABEL_135;
            }

            v58 += 1128;
          }

          while (v58 != v56);
          v60 = v57;
          do
          {
            if (sub_78F9E4(&v124, v60, 1))
            {
              v59 = 4;
              goto LABEL_135;
            }

            v60 += 1128;
          }

          while (v60 != v56);
          while (!sub_78F9E4(&v124, v57, 0))
          {
            v57 += 1128;
            if (v57 == v56)
            {
              v59 = 7;
              goto LABEL_135;
            }
          }

          v59 = 5;
        }
      }

      else
      {
        v59 = 1;
      }
    }

LABEL_135:
    v119 = v59;
    sub_68DFC4(v112, &v119);
    v61 = v117[0];
    if (v117[0])
    {
      v62 = v117[1];
      if (v117[1] != v117[0])
      {
        do
        {
          v63 = v62 - 1128;
          v64 = *(v62 - 2);
          if (v64 != -1)
          {
            (off_266C800[v64])(&v124, v62 - 1128);
          }

          *(v62 - 2) = -1;
          v62 -= 1128;
        }

        while (v63 != v61);
        v61 = v117[0];
      }

      operator delete(v61);
    }

    v65 = v120;
    if (v120)
    {
      v66 = v121;
      v67 = v120;
      if (v121 == v120)
      {
LABEL_165:
        v121 = v65;
        operator delete(v67);
        goto LABEL_166;
      }

      while (1)
      {
        if (*(v66 - 9) < 0)
        {
          operator delete(*(v66 - 4));
          v68 = *(v66 - 8);
          if (!v68)
          {
LABEL_149:
            if ((*(v66 - 65) & 0x80000000) == 0)
            {
              goto LABEL_150;
            }

            goto LABEL_161;
          }
        }

        else
        {
          v68 = *(v66 - 8);
          if (!v68)
          {
            goto LABEL_149;
          }
        }

        v69 = *(v66 - 7);
        v70 = v68;
        if (v69 != v68)
        {
          do
          {
            v71 = *(v69 - 1);
            v69 -= 3;
            if (v71 < 0)
            {
              operator delete(*v69);
            }
          }

          while (v69 != v68);
          v70 = *(v66 - 8);
        }

        *(v66 - 7) = v68;
        operator delete(v70);
        if ((*(v66 - 65) & 0x80000000) == 0)
        {
LABEL_150:
          if ((*(v66 - 89) & 0x80000000) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_162;
        }

LABEL_161:
        operator delete(*(v66 - 11));
        if ((*(v66 - 89) & 0x80000000) == 0)
        {
LABEL_151:
          if (*(v66 - 137) < 0)
          {
            goto LABEL_163;
          }

          goto LABEL_146;
        }

LABEL_162:
        operator delete(*(v66 - 14));
        if (*(v66 - 137) < 0)
        {
LABEL_163:
          operator delete(*(v66 - 20));
        }

LABEL_146:
        v66 -= 21;
        if (v66 == v65)
        {
          v67 = v120;
          goto LABEL_165;
        }
      }
    }

LABEL_166:
    v72 = __p[0];
    if (!__p[0])
    {
      goto LABEL_189;
    }

    v73 = __p[1];
    v74 = __p[0];
    if (__p[1] != __p[0])
    {
      while (1)
      {
        if (*(v73 - 9) < 0)
        {
          operator delete(*(v73 - 4));
          v75 = *(v73 - 8);
          if (!v75)
          {
LABEL_172:
            if ((*(v73 - 65) & 0x80000000) == 0)
            {
              goto LABEL_173;
            }

            goto LABEL_184;
          }
        }

        else
        {
          v75 = *(v73 - 8);
          if (!v75)
          {
            goto LABEL_172;
          }
        }

        v76 = *(v73 - 7);
        v77 = v75;
        if (v76 != v75)
        {
          do
          {
            v78 = *(v76 - 1);
            v76 -= 3;
            if (v78 < 0)
            {
              operator delete(*v76);
            }
          }

          while (v76 != v75);
          v77 = *(v73 - 8);
        }

        *(v73 - 7) = v75;
        operator delete(v77);
        if ((*(v73 - 65) & 0x80000000) == 0)
        {
LABEL_173:
          if ((*(v73 - 89) & 0x80000000) == 0)
          {
            goto LABEL_174;
          }

          goto LABEL_185;
        }

LABEL_184:
        operator delete(*(v73 - 11));
        if ((*(v73 - 89) & 0x80000000) == 0)
        {
LABEL_174:
          if (*(v73 - 137) < 0)
          {
            goto LABEL_186;
          }

          goto LABEL_169;
        }

LABEL_185:
        operator delete(*(v73 - 14));
        if (*(v73 - 137) < 0)
        {
LABEL_186:
          operator delete(*(v73 - 20));
        }

LABEL_169:
        v73 -= 21;
        if (v73 == v72)
        {
          v74 = __p[0];
          break;
        }
      }
    }

    __p[1] = v72;
    operator delete(v74);
LABEL_189:
    v79 = sub_68F328(v112);
    v124 = 0uLL;
    v125 = 0;
    v80 = *v79;
    v116 = v79[1];
    if (*v79 == v116)
    {
      __p[0] = 0;
      __p[1] = 0;
      v99 = v108;
      v123 = 0;
      goto LABEL_235;
    }

    do
    {
      v81 = *(&v124 + 1);
      if (*(&v124 + 1) >= v125)
      {
        v85 = v124;
        v87 = 0x70913F8BCD29C245 * ((*(&v124 + 1) - v124) >> 3) + 1;
        if (v87 > 0x3A196B1EDD80E8)
        {
          sub_1794();
        }

        if (0xE1227F179A53848ALL * ((v125 - v124) >> 3) > v87)
        {
          v87 = 0xE1227F179A53848ALL * ((v125 - v124) >> 3);
        }

        if ((0x70913F8BCD29C245 * ((v125 - v124) >> 3)) >= 0x1D0CB58F6EC074)
        {
          v88 = 0x3A196B1EDD80E8;
        }

        else
        {
          v88 = v87;
        }

        if (v88)
        {
          if (v88 <= 0x3A196B1EDD80E8)
          {
            operator new();
          }

          sub_1808();
        }

        v89 = 8 * ((*(&v124 + 1) - v124) >> 3);
        *v89 = 0u;
        *(v89 + 16) = 0u;
        *(v89 + 32) = 0u;
        *(v89 + 48) = 0u;
        *(v89 + 64) = 0u;
        *(v89 + 80) = 0u;
        *(v89 + 96) = 0u;
        *(v89 + 112) = 0u;
        *(v89 + 160) = 0;
        *(v89 + 128) = 0u;
        *(v89 + 144) = 0u;
        *(v89 + 4) = -1;
        *(v89 + 16) = 0;
        *(v89 + 24) = 0;
        *(v89 + 8) = 0;
        *(v89 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v89 + 40) = -1;
        *(v89 + 48) = 0x7FFFFFFF;
        *(v89 + 56) = 0u;
        *(v89 + 72) = 0u;
        *(v89 + 88) = 0u;
        *(v89 + 104) = 0u;
        *(v89 + 113) = 0u;
        *(v89 + 140) = 0;
        *(v89 + 132) = 0;
        *(v89 + 154) = 0;
        *(v89 + 148) = 0;
        v86 = v81 - v85;
        v90 = v89 - (v81 - v85);
        *(v89 + 1120) = 0;
        if (v85 != v81)
        {
          v113 = v89 - v86;
          v91 = (v89 - v86);
          v92 = v85;
          do
          {
            *v91 = 0;
            v91[280] = -1;
            v93 = v92[280];
            if (v93 != -1)
            {
              v120 = v91;
              (off_266C810[v93])(&v120, v92);
              v91[280] = v93;
            }

            v92 += 282;
            v91 += 282;
          }

          while (v92 != v81);
          do
          {
            v94 = v85[280];
            if (v94 != -1)
            {
              (off_266C800[v94])(&v120, v85);
            }

            v85[280] = -1;
            v85 += 282;
          }

          while (v85 != v81);
          v85 = v124;
          v90 = v113;
        }

        v82 = v89 + 1128;
        *&v124 = v90;
        v125 = 0;
        if (v85)
        {
          operator delete(v85);
        }

        *(&v124 + 1) = v89 + 1128;
        v83 = v89;
        v84 = *(v89 + 1120);
        if (v84 != -1)
        {
LABEL_215:
          (off_266C800[v84])(&v120, v83);
        }
      }

      else
      {
        **(&v124 + 1) = 0u;
        *(v81 + 16) = 0u;
        *(v81 + 32) = 0u;
        *(v81 + 48) = 0u;
        *(v81 + 64) = 0u;
        *(v81 + 80) = 0u;
        *(v81 + 96) = 0u;
        *(v81 + 112) = 0u;
        *(v81 + 160) = 0;
        *(v81 + 128) = 0u;
        *(v81 + 144) = 0u;
        *(v81 + 4) = -1;
        *(v81 + 16) = 0;
        *(v81 + 24) = 0;
        *(v81 + 8) = 0;
        *(v81 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v81 + 40) = -1;
        *(v81 + 48) = 0x7FFFFFFF;
        *(v81 + 56) = 0u;
        *(v81 + 72) = 0u;
        *(v81 + 88) = 0u;
        *(v81 + 104) = 0u;
        *(v81 + 113) = 0u;
        *(v81 + 140) = 0;
        *(v81 + 132) = 0;
        *(v81 + 154) = 0;
        *(v81 + 148) = 0;
        *(v81 + 1120) = 0;
        v82 = v81 + 1128;
        *(&v124 + 1) = v82;
        v83 = v82 - 1128;
        v84 = *(v82 - 8);
        if (v84 != -1)
        {
          goto LABEL_215;
        }
      }

      *(v82 - 8) = -1;
      sub_52B7D8(v83, v80);
      *(v82 - 8) = 1;
      v80 += 1120;
    }

    while (v80 != v116);
    v95 = v124;
    *__p = v124;
    v123 = v125;
    LOBYTE(v124) = 0;
    if (v109)
    {
      v96 = *(&v95 + 1);
      v97 = v95;
      if (*(&v95 + 1) == v95)
      {
        v99 = 2;
      }

      else
      {
        v98 = v95;
        do
        {
          if (sub_78F9E4(&v124, v98, 0) && (sub_78F9E4(&v124, v98, 1) & 1) != 0)
          {
            v99 = 6;
            goto LABEL_235;
          }

          v98 += 1128;
        }

        while (v98 != v96);
        v100 = v97;
        do
        {
          if (sub_78F9E4(&v124, v100, 1))
          {
            v99 = 4;
            goto LABEL_235;
          }

          v100 += 1128;
        }

        while (v100 != v96);
        while (!sub_78F9E4(&v124, v97, 0))
        {
          v97 += 1128;
          if (v97 == v96)
          {
            v99 = 7;
            goto LABEL_235;
          }
        }

        v99 = 5;
      }
    }

    else
    {
      v99 = 1;
    }

LABEL_235:
    LODWORD(v117[0]) = v99;
    sub_68DFE4(v112, v117);
    v18 = __p[0];
    if (__p[0])
    {
      v101 = __p[1];
      if (__p[1] != __p[0])
      {
        do
        {
          v102 = v101 - 1128;
          v103 = *(v101 - 2);
          if (v103 != -1)
          {
            (off_266C800[v103])(&v124, v101 - 1128);
          }

          *(v101 - 2) = -1;
          v101 -= 1128;
        }

        while (v102 != v18);
        v18 = __p[0];
      }

      operator delete(v18);
    }

    v112 += 976;
  }

  while (v112 != v110);
}

void sub_781168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va2, a16);
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, char *);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  va_copy(va2, va1);
  v23 = va_arg(va2, void *);
  v25 = va_arg(va2, void);
  v26 = va_arg(va2, void);
  sub_77CB78(va);
  sub_51B6E0(va1);
  sub_51B6E0(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_78127C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  v15 = v14;
  v16 = sub_3AF4C0(*v8);
  sub_51E828(v18, *v13, v16, (v13 + 4));
  sub_51E82C(v18, v12, v10, v15);
  return sub_7881CC(v18);
}

void sub_781340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_7881CC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_781358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v12 = v11;
  LODWORD(v11) = *(result + 1264);
  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
  if (v11 == 2)
  {
    v13 = v10;
    v14 = v9;
    v15 = result;
    sub_77B990(v12, *(v9 + 24));
    sub_112D984(v49, *(v15 + 1264), *v15);
    for (i = *(v14 + 16); i; i = *i)
    {
      if (!sub_4C2B90((i + 2)))
      {
        v17 = sub_4C2C3C((i + 2));
        v18 = v17;
        v19 = *(v17 + 232) ? 228 : 96;
        if (*(v17 + v19) <= *(v15 + 365) && (*(v17 + 167) != 1 || (*(v15 + 27) & 1) != 0) && (!sub_38F6F0(v17) || sub_1131728(v49, v18)))
        {
          sub_73B5F8((v18 + 72), (v15 + 125), __p);
          v20 = sub_4C2C84((i + 2));
          LOBYTE(v42) = v20;
          v21 = v12[1];
          if (v21 >= v12[2])
          {
            v22 = sub_7883E4(v12, v18, __p, &v42);
          }

          else
          {
            sub_658D94(v12[1], v18, __p, v20);
            v22 = v21 + 1120;
          }

          v12[1] = v22;
          if (SBYTE7(v45) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    if (*(v15 + 28))
    {
      sub_78D4A4(*v13, v13[1], v12, __p);
      v42 = *__p;
      v43 = v45;
      v23 = v46;
      v24 = v47;
      v25 = v48;
      while (1)
      {
        v26 = v42 == v23 && *(&v42 + 1) == v24;
        if (v26 && v43 == v25)
        {
          break;
        }

        v28 = ***(&v42 + 1) + 464 * *(*(&v42 + 1) + 8);
        sub_73B5F8((v28 + 72), (v15 + 125), v40);
        LOBYTE(v39) = 0;
        BYTE8(v39) = 0;
        v29 = v12[1];
        if (v29 >= v12[2])
        {
          v30 = sub_788580(v12, &v39, v28, v40);
        }

        else
        {
          sub_658C94(v12[1], &v39, v28, v40);
          v30 = v29 + 1120;
        }

        v12[1] = v30;
        if (v41 < 0)
        {
          operator delete(v40[0]);
        }

        sub_77BAC0(&v42);
      }
    }

    else if (*(v15 + 29) == 1)
    {
      sub_78D4A4(*v13, v13[1], v12, __p);
      v42 = *__p;
      v43 = v45;
      v31 = v46;
      v32 = v47;
      v33 = v48;
      while (1)
      {
        v34 = v42 == v31 && *(&v42 + 1) == v32;
        if (v34 && v43 == v33)
        {
          break;
        }

        v36 = ***(&v42 + 1) + 464 * *(*(&v42 + 1) + 8);
        if (*(v36 + 352) == 1 && sub_1131728(v49, v36))
        {
          sub_73B5F8((v36 + 72), (v15 + 125), v40);
          LOBYTE(v39) = 0;
          BYTE8(v39) = 0;
          v37 = v12[1];
          if (v37 >= v12[2])
          {
            v38 = sub_788580(v12, &v39, v36, v40);
          }

          else
          {
            sub_658C94(v12[1], &v39, v36, v40);
            v38 = v37 + 1120;
          }

          v12[1] = v38;
          if (v41 < 0)
          {
            operator delete(v40[0]);
          }
        }

        sub_77BAC0(&v42);
      }
    }

    return sub_3E3DF0(v49);
  }

  return result;
}

void sub_7816A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_3E3DF0(&a33);
  sub_5706DC(v33);
  _Unwind_Resume(a1);
}

void sub_781768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  v15 = v14;
  sub_67A1F8(v29, *v8, 0, *(v8 + 1598), (v8 + 1608));
  if ((atomic_load_explicit(&qword_27335D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27335D0))
  {
    sub_787F9C(&unk_27333C8);
  }

  v16 = *(v10 + 8);
  v17 = *v10;
  sub_61491C(v28);
  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = &unk_27333C8;
  }

  sub_5D9A10(v20, *v13, v28, v18, v29);
  sub_5DA2A0(v20, v12, v15);
  if (v27 < 0)
  {
    operator delete(__p);
  }

  sub_528AB4(&v25);
  sub_559B98(&v24);
  v19 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  sub_77B480(v28);
  if (v31 < 0)
  {
    operator delete(v30);
  }
}

void sub_781924(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27335D0);
  if (*(v1 + 2375) < 0)
  {
    operator delete(STACK[0x3058]);
  }

  _Unwind_Resume(a1);
}

void sub_781978(uint64_t a1, void *a2, double a3)
{
  v3 = a2[156];
  v4 = a2[157];
  if (v3 != v4)
  {
    v7 = a2 + 512;
    while (1)
    {
      v8 = *(v3 + 152);
      if (v8)
      {
        v9 = 0;
        for (i = 0; i != v8; ++i)
        {
          v9 += sub_4D23F8(a2, i, a3);
        }

        if (v9 > *(a1 + 16))
        {
          return;
        }
      }

      else if (*(a1 + 16) < 0)
      {
        return;
      }

      if (sub_734C10(v3))
      {
        break;
      }

      v3 += 160;
      if (v3 == v4)
      {
        return;
      }
    }

    v11 = *(v3 + 152);
    sub_5139E8(&v25, v3);
    sub_78D600(a2[138] + 392, &v25, &v35, 1uLL);
    if (v34 < 0)
    {
      operator delete(__p);
      if ((v32 & 0x80000000) == 0)
      {
LABEL_14:
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

    else if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(v31);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_15:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }

LABEL_21:
    operator delete(v29);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_16:
      if ((SHIBYTE(v26) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }

LABEL_22:
    operator delete(v27);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_17:
      if (v11 == -1)
      {
        return;
      }

LABEL_24:
      if (v11 >= *(sub_578320(a2 + 138, 1uLL) + 24))
      {
        return;
      }

      v12 = sub_4D1F50(a2, v11);
      sub_2B7A20(*(a1 + 8), *(v12 + 32) & 0xFFFFFFFFFFFFFFLL, &v25);
      sub_31BF20(&v25, &v23);
      if (*(&v25 + 1))
      {
        v26 = *(&v25 + 1);
        operator delete(*(&v25 + 1));
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 2) < 2)
      {
        goto LABEL_86;
      }

      v13 = sub_41224(&v23, 0);
      v14 = sub_41224(&v23, 1uLL);
      if (*v14 == *v13)
      {
        v15 = v13[1];
        v16 = v14[1];
        j = 0.0;
        if (v15 == v16)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v16 = v14[1];
        v15 = v13[1];
      }

      v18 = -(*v13 - *v14);
      if (*v14 - *v13 < (*v13 - *v14))
      {
        v18 = (*v14 - *v13);
      }

        ;
      }

        ;
      }

LABEL_38:
      v19 = (j + 180.0) / 45.0 + 0.5;
      if (v19 <= 0)
      {
        v20 = -(-v19 & 7);
      }

      else
      {
        v20 = v19 & 7;
      }

      v21 = v7 + 418;
      v22 = *(v7 + 3367);
      if (v20 > 3)
      {
        if (v20 <= 5)
        {
          if (v20 == 4)
          {
            if (v22 < 0)
            {
              a2[931] = 1;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 1;
            }

            *v21++ = 78;
          }

          else
          {
            if (v22 < 0)
            {
              a2[931] = 2;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 2;
            }

            *v21 = 17742;
            v21 += 2;
          }

          goto LABEL_85;
        }

        if (v20 == 6)
        {
          if (v22 < 0)
          {
            a2[931] = 1;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 1;
          }

          *v21++ = 69;
          goto LABEL_85;
        }

        if (v20 == 7)
        {
          if (v22 < 0)
          {
            a2[931] = 2;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 2;
          }

          *v21 = 17747;
          v21 += 2;
          goto LABEL_85;
        }
      }

      else
      {
        if (v20 > 1)
        {
          if (v20 == 2)
          {
            if (v22 < 0)
            {
              a2[931] = 1;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 1;
            }

            *v21++ = 87;
          }

          else
          {
            if (v22 < 0)
            {
              a2[931] = 2;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 2;
            }

            *v21 = 22350;
            v21 += 2;
          }

          goto LABEL_85;
        }

        if (!v20)
        {
          if (v22 < 0)
          {
            a2[931] = 1;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 1;
          }

          *v21++ = 83;
          goto LABEL_85;
        }

        if (v20 == 1)
        {
          if (v22 < 0)
          {
            a2[931] = 2;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 2;
          }

          *v21 = 22355;
          v21 += 2;
          goto LABEL_85;
        }
      }

      if (v22 < 0)
      {
        a2[931] = 0;
        v21 = a2[930];
      }

      else
      {
        *(v7 + 3367) = 0;
      }

LABEL_85:
      *v21 = 0;
LABEL_86:
      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      return;
    }

LABEL_23:
    operator delete(v25);
    if (v11 == -1)
    {
      return;
    }

    goto LABEL_24;
  }
}

void sub_781E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_781EEC(uint64_t *a1, unint64_t a2)
{
  if (0x4FBCDA3AC10C9715 * ((a1[2] - *a1) >> 7) < a2)
  {
    if (a2 < 0x864B8A7DE6D1ELL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_782024(uint64_t *a1, unint64_t a2)
{
  if (0x5DDB1ADCB91F64A7 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x52DA224E52347)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_78215C(uint64_t *a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  v10 = sub_3B1D8C(*a1);
  sub_2AD1B4(v10, a2, a3, v38);
  *a5 = v44;
  *(a5 + 8) = v45;
  v11 = (a5 + 192);
  if ((a5 + 192) != v38)
  {
    if (*(a5 + 215) < 0)
    {
      if (v39 >= 0)
      {
        v12 = v38;
      }

      else
      {
        v12 = v38[0];
      }

      if (v39 >= 0)
      {
        v13 = HIBYTE(v39);
      }

      else
      {
        v13 = v38[1];
      }

      sub_13B38(v11, v12, v13);
    }

    else if (v39 < 0)
    {
      sub_13A68(v11, v38[0], v38[1]);
    }

    else
    {
      *v11 = *v38;
      *(a5 + 208) = v39;
    }
  }

  v14 = (a5 + 240);
  if ((a5 + 240) != &v40)
  {
    if (*(a5 + 263) < 0)
    {
      if (v41 >= 0)
      {
        v15 = &v40;
      }

      else
      {
        v15 = v40;
      }

      if (v41 >= 0)
      {
        v16 = HIBYTE(v41);
      }

      else
      {
        v16 = *(&v40 + 1);
      }

      sub_13B38(v14, v15, v16);
    }

    else if (v41 < 0)
    {
      sub_13A68(v14, v40, *(&v40 + 1));
    }

    else
    {
      *v14 = v40;
      *(a5 + 256) = v41;
    }
  }

  v17 = (a5 + 216);
  if ((a5 + 216) != &v42)
  {
    if (*(a5 + 239) < 0)
    {
      if (v43 >= 0)
      {
        v18 = &v42;
      }

      else
      {
        v18 = v42;
      }

      if (v43 >= 0)
      {
        v19 = HIBYTE(v43);
      }

      else
      {
        v19 = *(&v42 + 1);
      }

      sub_13B38(v17, v18, v19);
    }

    else if (v43 < 0)
    {
      sub_13A68(v17, v42, *(&v42 + 1));
    }

    else
    {
      *v17 = v42;
      *(a5 + 232) = v43;
    }
  }

  *(a5 + 466) = sub_2ADAD0(v10, a2, a3);
  if ((a4 & 1) == 0)
  {
    sub_2ACDFC(v10, a2, a3, &v36);
    v20 = v36;
    v21 = v37;
    if (v36 == v37)
    {
      if (!v36)
      {
        goto LABEL_58;
      }

      goto LABEL_51;
    }

    do
    {
      if (*(v20 + 16) == 1)
      {
        sub_2B79D0(a1[1], *v20, &v32);
        sub_31BF20(&v32, v35);
        if (__p)
        {
          v34 = __p;
          operator delete(__p);
        }

        v32 = sub_77C700(v35, v20[1]);
        LODWORD(__p) = v22;
        v23 = *(a5 + 320);
        if (v23 >= *(a5 + 328))
        {
          v24 = sub_78996C((a5 + 312), &v32, (v20 + 3));
        }

        else
        {
          sub_E67B74(*(a5 + 320), &v32, (v20 + 3));
          v24 = v23 + 176;
          *(a5 + 320) = v23 + 176;
        }

        *(a5 + 320) = v24;
        if (v35[0])
        {
          v35[1] = v35[0];
          operator delete(v35[0]);
        }
      }

      v20 += 6;
    }

    while (v20 != v21);
    v20 = v36;
    if (v36)
    {
LABEL_51:
      v25 = v37;
      v26 = v20;
      if (v37 != v20)
      {
        do
        {
          v27 = *(v25 - 3);
          if (v27)
          {
            *(v25 - 2) = v27;
            operator delete(v27);
          }

          v25 -= 6;
        }

        while (v25 != v20);
        v26 = v36;
      }

      v37 = v20;
      operator delete(v26);
    }
  }

LABEL_58:
  sub_99F0C(&v48);
  v28 = v46;
  if (v46)
  {
    v29 = v47;
    v30 = v46;
    if (v47 != v46)
    {
      do
      {
        v31 = *(v29 - 1);
        v29 -= 3;
        if (v31 < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != v28);
      v30 = v46;
    }

    v47 = v28;
    operator delete(v30);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
    if ((SHIBYTE(v41) & 0x80000000) == 0)
    {
LABEL_68:
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
        return;
      }

LABEL_72:
      operator delete(v38[0]);
      return;
    }
  }

  else if ((SHIBYTE(v41) & 0x80000000) == 0)
  {
    goto LABEL_68;
  }

  operator delete(v40);
  if (SHIBYTE(v39) < 0)
  {
    goto LABEL_72;
  }
}

void sub_7824B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2AE47C(va);
  _Unwind_Resume(a1);
}

void sub_7824C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  *(v20 + 320) = v21;
  if (__p)
  {
    operator delete(__p);
  }

  sub_2ABB28(&a18);
  sub_2AE47C(va);
  _Unwind_Resume(a1);
}

std::chrono::steady_clock::time_point sub_782530(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, int a5, uint64_t a6)
{
  v12 = (a6 + 0x2000);
  v13 = sub_4C35B0(a2) - 1;
  v14 = sub_4C4B30(a2);
  v15 = v13 != a3 && v14;
  if (a3)
  {
    v16 = 1;
  }

  else
  {
    v16 = (a5 & 0xFFFFFFFD) == 9;
  }

  v17 = v16;
  sub_69CBCC(a6, v17);
  sub_69CBD8(a6, v15);
  v18 = sub_4C49C0(a2, a3);
  v19 = sub_3EB950(v18);
  sub_69D1D4(a6, *v19 & 0xFFFFFF);
  v20 = sub_4D1DB0(v18);
  sub_69D1E4(a6, *v20 & 0xFFFFFF);
  v21 = sub_4D1F60(a6);
  v22 = (*v21 - **v21);
  v23 = *v22;
  if (*(v21 + 38))
  {
    if (v23 >= 0x9B)
    {
      v24 = v22[77];
      if (v24)
      {
        v25 = 2;
        goto LABEL_17;
      }
    }
  }

  else if (v23 >= 0x9B)
  {
    v24 = v22[77];
    if (v24)
    {
      v25 = 1;
LABEL_17:
      v12[3360] = (*(*v21 + v24) & v25) != 0;
      sub_7E974(a1 + 1864);
      v27 = *a4;
      v26 = a4[1];
      if (*a4 != v26)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }
  }

  v12[3360] = 0;
  sub_7E974(a1 + 1864);
  v27 = *a4;
  v26 = a4[1];
  if (*a4 != v26)
  {
LABEL_20:
    while (*(v27 + 44) != 1)
    {
      v27 += 440;
      if (v27 == v26)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_23:
  if (v27 == v26)
  {
LABEL_24:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v27 = &unk_27337E8;
  }

  v28 = sub_4D2130(a6);
  v29 = v28;
  if (*(v28 + 112))
  {
    sub_78215C(a1, *(v28 + 104), *(v28 + 112), 1, a6 + 10344);
  }

  v30 = *v19;
  if (v30 != 0xFFFF)
  {
    v31 = v30 - 1;
    if (*(a1 + 1248) == 2)
    {
      v31 = *v19;
    }

    if (v31 != 0xFFFF)
    {
      v32 = sub_E6309C(a4, v31);
      sub_69CBE4(a6, v32);
    }
  }

  if (!a3 && !*(v29 + 112))
  {
    sub_69CBE4(a6, v27);
  }

  v33 = -1;
  if (*(v19 + 2) == 3 && *v19 == 0xFFFF)
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
  }

  v12[2619] = v35;
  v36 = sub_73F54(a6);
  if (*(v36 + 112))
  {
    sub_78215C(a1, *(v36 + 104), *(v36 + 112), 0, a6 + 11088);
  }

  v37 = *v20;
  if (v37 != 0xFFFF)
  {
    v33 = *v20;
    v38 = *(a1 + 1248) == 2 ? *v20 : v37 - 1;
    if (v38 != 0xFFFF)
    {
      v39 = sub_E6309C(a4, v38);
      sub_69AE48(a6, v39);
      v33 = *v20;
    }
  }

  if (*(v20 + 2) == 3 && ~v33 == 0)
  {
    v41 = 2;
  }

  else
  {
    v41 = 1;
  }

  v12[3363] = v41;
  *(a1 + 1896) = (round(sub_7EA60(a1 + 1864)) + *(a1 + 1896));

  return sub_7E9E0(a1 + 1864);
}

void sub_782B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_782B8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  v5 = *a1;
  v9 = 13;
  strcpy(v8, "RouteGuidance");
  memset(v7, 0, sizeof(v7));
  v6 = sub_3AEC94(v5, v8, v7);
  sub_41D820(v6, v10);
  a1[2] = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 6) = 0;
  *(a1 + 14) = 0;
  sub_787824((a1 + 2), v10);
}

void sub_783A54()
{
  v1 = *(v0 + 1648);
  *(v0 + 1648) = 0;
  if (v1)
  {
    JUMPOUT(0x783A08);
  }

  JUMPOUT(0x7839B4);
}

uint64_t sub_783A98(uint64_t a1)
{
  v2 = *(a1 + 4912);
  if (v2)
  {
    *(a1 + 4920) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 1856);
  *(a1 + 1856) = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = *(a1 + 1848);
  *(a1 + 1848) = 0;
  if (v4)
  {
    sub_5135D0((v4 + 1288));
    operator delete();
  }

  v5 = *(a1 + 1840);
  *(a1 + 1840) = 0;
  if (v5)
  {
    if (*(v5 + 31) < 0)
    {
      operator delete(*(v5 + 8));
    }

    operator delete();
  }

  v6 = *(a1 + 1832);
  *(a1 + 1832) = 0;
  if (v6)
  {
    sub_78C74C(a1 + 1832, v6);
  }

  v7 = *(a1 + 1824);
  *(a1 + 1824) = 0;
  if (v7)
  {
    if (*(v7 + 31) < 0)
    {
      operator delete(*(v7 + 8));
    }

    operator delete();
  }

  v8 = *(a1 + 1816);
  *(a1 + 1816) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 1808);
  *(a1 + 1808) = 0;
  if (v9)
  {
    sub_528AB4(v9 + 160);
    operator delete();
  }

  v10 = *(a1 + 1800);
  *(a1 + 1800) = 0;
  if (v10)
  {
    operator delete();
  }

  v11 = *(a1 + 1792);
  *(a1 + 1792) = 0;
  if (v11)
  {
    v12 = *(v11 + 1752);
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    sub_528AB4(v11 + 168);
    operator delete();
  }

  v13 = *(a1 + 1784);
  *(a1 + 1784) = 0;
  if (v13)
  {
    operator delete();
  }

  v14 = *(a1 + 1776);
  *(a1 + 1776) = 0;
  if (v14)
  {
    sub_F4AF44(v14);
    operator delete();
  }

  v15 = *(a1 + 1768);
  *(a1 + 1768) = 0;
  if (v15)
  {
    sub_F26220(v15);
    operator delete();
  }

  v16 = *(a1 + 1760);
  *(a1 + 1760) = 0;
  if (v16)
  {
    sub_78FDB8(v16);
    operator delete();
  }

  v17 = *(a1 + 1752);
  *(a1 + 1752) = 0;
  if (v17)
  {
    operator delete();
  }

  v18 = *(a1 + 1744);
  *(a1 + 1744) = 0;
  if (v18)
  {
    nullsub_1();
    operator delete();
  }

  v19 = *(a1 + 1736);
  *(a1 + 1736) = 0;
  if (v19)
  {
    operator delete();
  }

  v20 = *(a1 + 1728);
  *(a1 + 1728) = 0;
  if (v20)
  {
    sub_6D2D60(v20);
    operator delete();
  }

  v21 = *(a1 + 1720);
  *(a1 + 1720) = 0;
  if (v21)
  {
    sub_78C26C(a1 + 1720, v21);
  }

  v22 = *(a1 + 1712);
  *(a1 + 1712) = 0;
  if (v22)
  {
    sub_5135D0((v22 + 1312));
    operator delete();
  }

  v23 = *(a1 + 1704);
  *(a1 + 1704) = 0;
  if (v23)
  {
    operator delete();
  }

  v24 = *(a1 + 1696);
  *(a1 + 1696) = 0;
  if (v24)
  {
    operator delete();
  }

  v25 = *(a1 + 1688);
  *(a1 + 1688) = 0;
  if (v25)
  {
    sub_624E38(v25);
    operator delete();
  }

  v26 = *(a1 + 1680);
  *(a1 + 1680) = 0;
  if (v26)
  {
    v27 = *(v26 + 3896);
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    v28 = *(v26 + 24);
    if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    operator delete();
  }

  v29 = *(a1 + 1672);
  *(a1 + 1672) = 0;
  if (v29)
  {
    v30 = *(v29 + 24);
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }

    operator delete();
  }

  v31 = *(a1 + 1664);
  *(a1 + 1664) = 0;
  if (v31)
  {
    sub_78BCF8(a1 + 1664, v31);
  }

  v32 = *(a1 + 1656);
  *(a1 + 1656) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(a1 + 1648);
  *(a1 + 1648) = 0;
  if (v33)
  {
    sub_78BB3C(a1 + 1648, v33);
  }

  v34 = *(a1 + 1640);
  *(a1 + 1640) = 0;
  if (v34)
  {
    operator delete();
  }

  v35 = *(a1 + 1632);
  *(a1 + 1632) = 0;
  if (v35)
  {
    sub_6926D4((v35 + 3568));
    sub_5135D0((v35 + 1304));
    operator delete();
  }

  if (*(a1 + 1631) < 0)
  {
    operator delete(*(a1 + 1608));
  }

  sub_528AB4(a1 + 32);
  return a1;
}

void sub_78402C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v8;
  v19 = v18;
  sub_7E9A4(v65);
  *v19 = 0;
  v19[1] = 0;
  v19[2] = 0;
  v63[1] = 0;
  v63[0] = 0;
  v64 = 0;
  sub_60BAC4(v63, 0x86BCA1AF286BCA1BLL * (v14[1] - *v14));
  sub_78FFF4(*v14, v14[1], v63);
  v20 = v63[1];
  v21 = v63[0];
  if (v63[0] != v63[1])
  {
    while (sub_4C6700(v21) && !sub_4C49D0(v21))
    {
      v21 += 128;
      if (v21 == v20)
      {
        v22 = sub_3AF4C0(*v17);
        sub_784728(v17, v14, v16, v12, v23, v24, v25, v26);
        v27 = *v19;
        if (*v19)
        {
          v28 = v19[1];
          v29 = *v19;
          if (v28 != v27)
          {
            do
            {
              v28 = sub_78B5C0(v28 - 7808);
            }

            while (v28 != v27);
            v29 = *v19;
          }

          v19[1] = v27;
          operator delete(v29);
        }

        v30 = v50;
        *v19 = v50;
        v19[2] = v51;
        if (*(v17 + 25) == 1 && *(v17 + 1562) == 1)
        {
          v31 = *(v17 + 1631);
          v32 = v31;
          if (v31 < 0)
          {
            v31 = v17[202];
          }

          if (v31 == (&dword_0 + 3))
          {
            v33 = v32 >= 0 ? (v17 + 201) : v17[201];
            v34 = *v33;
            v35 = *(v33 + 2);
            if (v34 == 21062 && v35 == 65)
            {
              v38 = *(&v30 + 1);
              v37 = v30;
              if (v30 == *(&v30 + 1))
              {
LABEL_26:
                sub_6A0978(v19);
              }

              else
              {
                while ((sub_6905BC(v37) & 1) == 0)
                {
                  v37 += 976;
                  if (v37 == v38)
                  {
                    goto LABEL_26;
                  }
                }
              }
            }
          }
        }

        nullsub_1();
        nullsub_1();
        sub_7E974(v65);
        sub_523320(v66, *v17, v22, (v17 + 4));
        sub_523324(v66, v19);
        v17[251] = (round(sub_7EA60(v65)) + v17[251]);
        sub_7E974(v65);
        sub_80528C(v17[226], v17 + 1252, v19);
        v17[252] = (round(sub_7EA60(v65)) + v17[252]);
        sub_7E974(v65);
        sub_7E29A0(v17[225], v19);
        v17[253] = (round(sub_7EA60(v65)) + v17[253]);
        sub_785DEC(v17, v19);
        sub_7E974(v65);
        sub_67A1F8(v60, *v17, 2u, *(v17 + 1598), v17 + 201);
        if ((atomic_load_explicit(&qword_27337E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27337E0))
        {
          sub_787F9C(&unk_27335D8);
        }

        if (*(v10 + 8))
        {
          v39 = *v10;
        }

        else
        {
          v39 = &unk_27335D8;
        }

        sub_61491C(v59);
        sub_5D9A10(&v50, *v17, v59, v39, v60);
        if (v63[1] != v63[0])
        {
          v40 = 0;
          v41 = 0;
          v42 = (v63[1] - v63[0]) >> 7;
          do
          {
            nullsub_1();
            v41 += 128;
            v40 += 7808;
            --v42;
          }

          while (v42);
        }

        v17[257] = (round(sub_7EA60(v65)) + v17[257]);
        v43 = *(v17 + 1445);
        sub_7E974(v65);
        if (v43)
        {
          sub_591040(v17[227], v39, v19);
          v44 = *v19;
          v45 = v19[1];
          if (*v19 == v45 || *(v17 + 1554) != 1)
          {
            v46 = 254;
          }

          else
          {
            v46 = 254;
            do
            {
              if (*(v17 + 1554) == 1 && *(v17 + 26) == 1)
              {
                sub_6555B4();
              }

              v44 += 7808;
            }

            while (v44 != v45);
          }
        }

        else
        {
          sub_591040(v17[207], v39, v19);
          v46 = 255;
        }

        v17[v46] = (round(sub_7EA60(v65)) + v17[v46]);
        sub_7E974(v65);
        sub_7D1AFC(v17[232], v19);
        v17[259] = (round(sub_7EA60(v65)) + v17[259]);
        if (v58 < 0)
        {
          operator delete(__p);
        }

        sub_528AB4(&v56);
        sub_559B98(&v55);
        v47 = v54;
        if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v47->__on_zero_shared)(v47);
          std::__shared_weak_count::__release_weak(v47);
        }

        if (v52)
        {
          v53 = v52;
          operator delete(v52);
        }

        sub_77B480(v59);
        if (v62 < 0)
        {
          operator delete(v61);
        }

        sub_7881CC(v66);
        break;
      }
    }

    v21 = v63[0];
  }

  if (v21)
  {
    v48 = v63[1];
    v49 = v21;
    if (v63[1] != v21)
    {
      do
      {
        v48 -= 128;
        sub_60B38C(v48);
      }

      while (v48 != v21);
      v49 = v63[0];
    }

    v63[1] = v21;
    operator delete(v49);
  }
}

void sub_784670(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27337E0);
  if (SLOBYTE(STACK[0x306F]) < 0)
  {
    operator delete(STACK[0x3058]);
  }

  sub_7881CC(&STACK[0x3168]);
  sub_60A84C(&STACK[0x3130]);
  sub_785D84(v1);
  _Unwind_Resume(a1);
}

void sub_784728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v145 = v9;
  v11 = v10;
  v13 = v12;
  v14 = v8;
  v16 = v15;
  sub_7E9A4(v197);
  *v16 = 0;
  v16[1] = 0;
  v16[2] = 0;
  sub_78749C(v16, 0x86BCA1AF286BCA1BLL * ((v13[1] - *v13) >> 3));
  v18 = *v11;
  v17 = v11[1];
  v149 = v16;
  v146 = v11;
  if (*v11 != v17)
  {
    while (v18[44] != 2)
    {
      v18 += 110;
      if (v18 == v17)
      {
        goto LABEL_6;
      }
    }
  }

  if (v18 == v17)
  {
LABEL_6:
    if (atomic_load_explicit(&qword_27339A0, memory_order_acquire))
    {
      v18 = &unk_27337E8;
    }

    else
    {
      if (__cxa_guard_acquire(&qword_27339A0))
      {
        sub_78922C(&unk_27337E8);
        __cxa_guard_release(&qword_27339A0);
      }

      v18 = &unk_27337E8;
    }
  }

  sub_FA06C4(v192, *v14);
  v19 = *v13;
  v144 = v13[1];
  if (*v13 != v144)
  {
    v148 = 0;
    v143 = v18;
    while (1)
    {
      v21 = v19;
      sub_6916D0(v191, v19);
      ++*(v14 + 2080);
      v150 = v21;
      *(v14 + 2084) += sub_4C35B0(v21);
      v22 = sub_4C5154(v21);
      sub_68DB34(v191, v22);
      v23 = sub_4C4AC8(v21);
      sub_68DB2C(v191, v23);
      v24 = sub_4C514C(v21);
      sub_68F8A4(v191, v24);
      nullsub_1();
      v26 = v25;
      v27 = sub_4C35B0(v150);
      sub_7875D4(v26, v27);
      v28 = *(v14 + 1680);
      nullsub_1();
      v31 = *v29;
      v30 = *(v29 + 8);
      if (*v29 != v30)
      {
        do
        {
          sub_790B9C(v28, v31);
          v31 += 1582;
        }

        while (v31 != v30);
      }

      v32 = *(v14 + 1592);
      v33 = sub_68C590(v191);
      if (v33)
      {
        for (i = 0; i != v33; ++i)
        {
          v35 = sub_68C454(v191, i);
          sub_78770C(v14, v150, i, v11, v32, v35);
        }
      }

      v36 = *v14;
      nullsub_1();
      v39 = *v37;
      v38 = v37[1];
      if (*v37 != v38)
      {
        do
        {
          sub_79163C(v39, v36);
          v39 += 12656;
        }

        while (v39 != v38);
      }

      nullsub_1();
      v41 = *v40;
      v42 = v40[1];
      while (v41 != v42)
      {
        v43 = sub_3CF22C(v41);
        v44 = *(v43 + 24) - *(v43 + 16);
        v45 = v44 >> 2;
        v46 = *(v41 + 1208);
        v47 = *(v41 + 1200);
        v48 = (v46 - v47) >> 2;
        v49 = (v44 >> 2) - v48;
        if (v44 >> 2 <= v48)
        {
          if (v44 >> 2 >= v48)
          {
            goto LABEL_36;
          }

          v53 = v47 + v44;
        }

        else
        {
          v50 = *(v41 + 1216);
          if (v49 > (v50 - v46) >> 2)
          {
            if (!(v45 >> 62))
            {
              v51 = v50 - v47;
              if (v51 >> 1 > v45)
              {
                v45 = v51 >> 1;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v52 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v52 = v45;
              }

              if (!(v52 >> 62))
              {
                operator new();
              }

              sub_1808();
            }

            sub_1794();
          }

          memset_pattern16(*(v41 + 1208), &unk_2266850, 4 * v49);
          v53 = v46 + 4 * v49;
        }

        *(v41 + 1208) = v53;
LABEL_36:
        v54 = sub_4D26AC(v41);
        v55 = sub_3CF22C(v41);
        v56 = *(v41 + 1208) - *(v41 + 1200);
        v16 = v149;
        if (v56)
        {
          v57 = 0;
          v58 = *(v55 + 256);
          v59 = v56 >> 2;
          v60 = v58 / 10 + v54;
          v61 = v58 < 0;
          v62 = v58 % 10;
          if (v61)
          {
            v63 = -5;
          }

          else
          {
            v63 = 5;
          }

          v64 = v60 + (((103 * (v63 + v62)) >> 15) & 1) + ((103 * (v63 + v62)) >> 10);
          do
          {
            v65 = sub_4D2720(v41, v57, 0);
            v66 = sub_617018((v41 + 1200), v57);
            if (v65 < 0)
            {
              v67 = -5;
            }

            else
            {
              v67 = 5;
            }

            v68 = 103 * (v67 + v65 % 10);
            v64 += v65 / 10 + ((v68 >> 15) & 1) + (v68 >> 10);
            *v66 = v64;
            ++v57;
          }

          while (v59 != v57);
        }

        v41 += 12656;
      }

      sub_7E974(v197);
      sub_6555B4();
      *(v14 + 1920) = (round(sub_7EA60(v197)) + *(v14 + 1920));
      sub_7D4260(*(v14 + 1792));
      sub_7E974(v197);
      sub_876D4C(*(v14 + 1840), v150, v191);
      *(v14 + 1904) = (round(sub_7EA60(v197)) + *(v14 + 1904));
      nullsub_1();
      nullsub_1();
      nullsub_1();
      v70 = *v69;
      v71 = v69[1];
      if (*v69 != v71)
      {
        v72 = v148;
        do
        {
          v73 = *(v70 + 1104);
          v74 = *(v70 + 1112);
          if (v73 != v74)
          {
            v75 = v74 - v73 - 2616;
            if (v75 >= 0xA38)
            {
              v78 = v75 / 0xA38 + 1;
              v76 = v72 + (v78 & 0xFFFFFFFE);
              v77 = &v73[2616 * (v78 & 0x3FFFFFFFFFFFFELL)];
              v79 = v72;
              v80 = *(v70 + 1104);
              v81 = v78 & 0x3FFFFFFFFFFFFELL;
              do
              {
                *v80 = v79;
                v80[654] = v79 + 1;
                v80 += 1308;
                v79 += 2;
                v81 -= 2;
              }

              while (v81);
              if (v78 == (v78 & 0x3FFFFFFFFFFFFELL))
              {
                goto LABEL_48;
              }
            }

            else
            {
              v76 = v72;
              v77 = *(v70 + 1104);
            }

            do
            {
              *v77 = v76++;
              v77 += 2616;
            }

            while (v77 != v74);
          }

LABEL_48:
          v72 -= 210151305 * ((v74 - v73) >> 3);
          v70 += 12656;
        }

        while (v70 != v71);
      }

      v147 = sub_69187C(v191);
      if (*(v14 + 1520) == 1)
      {
        nullsub_1();
        v84 = *v82;
        v83 = *(v82 + 8);
        if (*v82 != v83)
        {
          do
          {
            sub_77C500(v14, v84);
            v84 += 1582;
          }

          while (v84 != v83);
        }
      }

      v85 = sub_68C590(v191);
      if (v85)
      {
        for (j = 0; j != v85; ++j)
        {
          v87 = sub_68C454(v191, j);
          v88 = *(v87 + 1104);
          v89 = *(v87 + 1112);
          if (v88 != v89)
          {
            v90 = v89 - v88 - 2616;
            if (v90 >= 0xA38)
            {
              v92 = v90 / 0xA38 + 1;
              v91 = v88 + 2616 * (v92 & 0x3FFFFFFFFFFFFELL);
              v93 = v92 & 0x3FFFFFFFFFFFFELL;
              do
              {
                *(v88 + 8) = j;
                *(v88 + 2624) = j;
                v88 += 5232;
                v93 -= 2;
              }

              while (v93);
              if (v92 == (v92 & 0x3FFFFFFFFFFFFELL))
              {
                continue;
              }
            }

            else
            {
              v91 = *(v87 + 1104);
            }

            do
            {
              *(v91 + 8) = j;
              v91 += 2616;
            }

            while (v91 != v89);
          }
        }
      }

      v94 = *v14;
      nullsub_1();
      v97 = *v95;
      v96 = *(v95 + 8);
      if (*v95 != v96)
      {
        do
        {
          sub_791A1C(v97, v94, v14 + 1000);
          v97 += 1582;
        }

        while (v97 != v96);
      }

      sub_7E974(v197);
      sub_885CC4(*(v14 + 1824), v191, v14 + 1000);
      *(v14 + 1912) = (round(sub_7EA60(v197)) + *(v14 + 1912));
      sub_7E974(v197);
      sub_81C160(*(v14 + 1832));
      *(v14 + 1936) = (round(sub_7EA60(v197)) + *(v14 + 1936));
      v98 = sub_813AFC(*(v14 + 1832));
      *(v14 + 2104) |= v99;
      *(v14 + 2105) |= v100;
      *(v14 + 2096) += v98;
      *(v14 + 2100) += HIDWORD(v98);
      if ((v145 & 1) == 0)
      {
        sub_7E974(v197);
        nullsub_1();
        *(v14 + 1944) = (round(sub_7EA60(v197)) + *(v14 + 1944));
      }

      sub_92A608();
      sub_59C7B0(*(v14 + 1712));
      nullsub_1();
      v104 = *v102;
      v103 = *(v102 + 8);
      if (*v102 != v103)
      {
        do
        {
          sub_786F14(v14, v104, v101);
          v104 += 1582;
        }

        while (v104 != v103);
      }

      sub_5123B0(*(v14 + 1632));
      sub_7E974(v197);
      v105 = *(v14 + 1760);
      __p[0].n128_u8[0] = 0;
      v154 = 0;
      v155 = 0;
      v156 = 0;
      v165 = 0;
      v163 = 0;
      v164 = 0;
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v157 = 0u;
      v158 = 0u;
      v159 = 0u;
      v160 = 0u;
      v161 = 0u;
      memset(v162, 0, sizeof(v162));
      v169 = 0x3FF0000000000000;
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v173 = 5;
      v174 = 0u;
      v175 = 0u;
      v176 = 0u;
      v177 = 0x7FFFFFFF;
      v182 = 0;
      v183 = 0;
      v178 = 0u;
      v179 = 0u;
      v180 = 0u;
      memset(v181, 0, sizeof(v181));
      v184 = -1;
      v185 = 0x7FFFFFFF;
      v186 = 0;
      v187 = 0;
      v188 = -1;
      v189 = -1;
      v190 = 0;
      sub_7BC398(v105, v191, __p);
      sub_5287C0(__p);
      nullsub_1();
      v108 = *v106;
      v107 = v106[1];
      while (v108 != v107)
      {
        v109 = *(v108 + 7416);
        v110 = *(v108 + 7424);
        if (v109 != v110)
        {
          while (!sub_38F64C(v109, 2) || sub_38F538(v109, 2))
          {
            v109 += 1120;
            if (v109 == v110)
            {
              v109 = v110;
              goto LABEL_95;
            }
          }

          if (v109 != v110)
          {
            for (k = v109 + 1120; k != v110; k += 1120)
            {
              if (!sub_38F64C(k, 2) || sub_38F538(k, 2))
              {
                sub_52BE74(v109, k);
                v109 += 1120;
              }
            }
          }
        }

LABEL_95:
        v112 = *(v108 + 7424);
        if (v109 != v112)
        {
          while (v112 != v109)
          {
            if (*(v112 - 16) != 1)
            {
              *(v112 - 416) = off_26696C8;
              if ((*(v112 - 385) & 0x80000000) == 0)
              {
                goto LABEL_101;
              }

              goto LABEL_127;
            }

            v113 = *(v112 - 40);
            if (v113)
            {
              v114 = *(v112 - 32);
              v115 = *(v112 - 40);
              if (v114 == v113)
              {
LABEL_120:
                *(v112 - 32) = v113;
                operator delete(v115);
                goto LABEL_121;
              }

              while (2)
              {
                if (*(v114 - 1) < 0)
                {
                  operator delete(*(v114 - 3));
                  if (*(v114 - 25) < 0)
                  {
                    goto LABEL_117;
                  }

LABEL_114:
                  if (*(v114 - 49) < 0)
                  {
LABEL_118:
                    operator delete(*(v114 - 9));
                  }
                }

                else
                {
                  if ((*(v114 - 25) & 0x80000000) == 0)
                  {
                    goto LABEL_114;
                  }

LABEL_117:
                  operator delete(*(v114 - 6));
                  if (*(v114 - 49) < 0)
                  {
                    goto LABEL_118;
                  }
                }

                v114 -= 31;
                sub_33D5A0(v114);
                if (v114 == v113)
                {
                  v115 = *(v112 - 40);
                  goto LABEL_120;
                }

                continue;
              }
            }

LABEL_121:
            if (*(v112 - 49) < 0)
            {
              operator delete(*(v112 - 72));
              if ((*(v112 - 81) & 0x80000000) == 0)
              {
LABEL_123:
                if ((*(v112 - 113) & 0x80000000) == 0)
                {
                  goto LABEL_124;
                }

                goto LABEL_136;
              }
            }

            else if ((*(v112 - 81) & 0x80000000) == 0)
            {
              goto LABEL_123;
            }

            operator delete(*(v112 - 104));
            if ((*(v112 - 113) & 0x80000000) == 0)
            {
LABEL_124:
              if ((*(v112 - 137) & 0x80000000) == 0)
              {
                goto LABEL_125;
              }

LABEL_137:
              operator delete(*(v112 - 160));
              if ((*(v112 - 161) & 0x80000000) == 0)
              {
                goto LABEL_126;
              }

              goto LABEL_138;
            }

LABEL_136:
            operator delete(*(v112 - 136));
            if (*(v112 - 137) < 0)
            {
              goto LABEL_137;
            }

LABEL_125:
            if ((*(v112 - 161) & 0x80000000) == 0)
            {
              goto LABEL_126;
            }

LABEL_138:
            operator delete(*(v112 - 184));
LABEL_126:
            sub_33D080(v112 - 376);
            *(v112 - 416) = off_26696C8;
            if ((*(v112 - 385) & 0x80000000) == 0)
            {
LABEL_101:
              if ((*(v112 - 465) & 0x80000000) == 0)
              {
                goto LABEL_102;
              }

              goto LABEL_128;
            }

LABEL_127:
            operator delete(*(v112 - 408));
            if ((*(v112 - 465) & 0x80000000) == 0)
            {
LABEL_102:
              if ((*(v112 - 497) & 0x80000000) == 0)
              {
                goto LABEL_103;
              }

              goto LABEL_129;
            }

LABEL_128:
            operator delete(*(v112 - 488));
            if ((*(v112 - 497) & 0x80000000) == 0)
            {
LABEL_103:
              if ((*(v112 - 521) & 0x80000000) == 0)
              {
                goto LABEL_104;
              }

              goto LABEL_130;
            }

LABEL_129:
            operator delete(*(v112 - 520));
            if ((*(v112 - 521) & 0x80000000) == 0)
            {
LABEL_104:
              if ((*(v112 - 561) & 0x80000000) == 0)
              {
                goto LABEL_105;
              }

              goto LABEL_131;
            }

LABEL_130:
            operator delete(*(v112 - 544));
            if ((*(v112 - 561) & 0x80000000) == 0)
            {
LABEL_105:
              if (*(v112 - 593) < 0)
              {
                goto LABEL_132;
              }

              goto LABEL_106;
            }

LABEL_131:
            operator delete(*(v112 - 584));
            if (*(v112 - 593) < 0)
            {
LABEL_132:
              operator delete(*(v112 - 616));
              if ((*(v112 - 617) & 0x80000000) == 0)
              {
                goto LABEL_97;
              }

              goto LABEL_133;
            }

LABEL_106:
            if ((*(v112 - 617) & 0x80000000) == 0)
            {
              goto LABEL_97;
            }

LABEL_133:
            operator delete(*(v112 - 640));
LABEL_97:
            v112 -= 1120;
            sub_2C0F28(v112);
          }

          *(v108 + 7424) = v109;
        }

        v108 += 12656;
      }

      *(v14 + 1928) = (round(sub_7EA60(v197)) + *(v14 + 1928));
      sub_7E974(v197);
      nullsub_1();
      *(v14 + 1952) = (round(sub_7EA60(v197)) + *(v14 + 1952));
      sub_7E974(v197);
      sub_5816A8(*(v14 + 1648));
      *(v14 + 1968) = (round(sub_7EA60(v197)) + *(v14 + 1968));
      sub_7E974(v197);
      sub_61FEC8(*(v14 + 1672));
      *(v14 + 1976) = (round(sub_7EA60(v197)) + *(v14 + 1976));
      sub_7E974(v197);
      nullsub_1();
      *(v14 + 1992) = (round(sub_7EA60(v197)) + *(v14 + 1992));
      sub_7E974(v197);
      nullsub_1();
      *(v14 + 2064) = (round(sub_7EA60(v197)) + *(v14 + 2064));
      sub_7E974(v197);
      nullsub_1();
      *(v14 + 1960) = (round(sub_7EA60(v197)) + *(v14 + 1960));
      sub_7E974(v197);
      sub_636098(*(v14 + 1688));
      *(v14 + 1984) = (round(sub_7EA60(v197)) + *(v14 + 1984));
      sub_7E974(v197);
      sub_7567B4(*(v14 + 1752), v191);
      *(v14 + 2000) = (round(sub_7EA60(v197)) + *(v14 + 2000));
      sub_7E974(v197);
      sub_5165DC(*(v14 + 1640), v143, v191);
      *(v14 + 2048) = (round(sub_7EA60(v197)) + *(v14 + 2048));
      sub_7E974(v197);
      sub_7BC6C0(*(v14 + 1760), v191, __p);
      sub_68F334(v191, __p);
      v116 = __p[0].n128_u64[0];
      if (__p[0].n128_u64[0])
      {
        break;
      }

LABEL_185:
      *(v14 + 1928) = (round(sub_7EA60(v197)) + *(v14 + 1928));
      nullsub_1();
      if (*v122 != v122[1])
      {
        nullsub_1();
        v124 = *v123;
        v125 = sub_4D26AC(*v123);
        v126 = sub_4D26B4(v124, 0);
        v127 = sub_4D26B4(v124, 1);
        v128 = sub_4D1DB8(v124);
        v151 = 0x8000000080000000;
        v152 = xmmword_2297C00;
        LODWORD(v152) = 0x7FFFFFFF;
        sub_FA06C8(v192, v125, v126, v127, v128, &v151, __p);
        sub_68DB3C(v191, __p);
      }

      sub_68C448(v191, __p);
      v130 = __p[0].n128_u64[1];
      for (m = __p[0].n128_u64[0]; m != v130; m += 12656)
      {
        v131 = *(m + 1112) - *(m + 1104);
        if (v131)
        {
          v132 = 0;
          v133 = 0x3795876FF3795877 * (v131 >> 3);
          v134 = 1;
          do
          {
            v136 = v134-- != 0;
            sub_721C84(v14 + 2112, *(m + 1104) + v132, *(m + 1096), v136);
            v132 += 2616;
            --v133;
          }

          while (v133);
        }
      }

      v137 = sub_73ED4(v150);
      v11 = v146;
      v138 = *(v137 + 23);
      if ((v138 & 0x80u) != 0)
      {
        v138 = *(v137 + 8);
      }

      if (!v138)
      {
        goto LABEL_212;
      }

      v139 = sub_73ED4(v150);
      if (*(v139 + 23) >= 0)
      {
        v140 = *(v139 + 23);
      }

      else
      {
        v140 = *(v139 + 8);
      }

      if (v140 + 8 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v140 + 8 >= 0x17)
      {
        operator new();
      }

      v152 = 0uLL;
      HIBYTE(v152) = v140 + 8;
      v151 = 0x203A475542454420;
      if (v140)
      {
        if (*(v139 + 23) >= 0)
        {
          v141 = v139;
        }

        else
        {
          v141 = *v139;
        }

        memmove(&v152, v141, v140);
      }

      __p[-1].n128_u8[v140] = 0;
      sub_64BC20(__p, &v151);
      sub_68DD20(v191, __p);
      v11 = v146;
      sub_53A868(__p);
      if (SHIBYTE(v152) < 0)
      {
        operator delete(v151);
        v142 = v16[1];
        if (v142 >= v16[2])
        {
          goto LABEL_213;
        }
      }

      else
      {
LABEL_212:
        v142 = v16[1];
        if (v142 >= v16[2])
        {
LABEL_213:
          v20 = sub_78B454(v16, v191);
          goto LABEL_11;
        }
      }

      v20 = sub_78A944(v142, v191) + 7808;
LABEL_11:
      v148 += v147;
      v16[1] = v20;
      sub_78B5C0(v191);
      v19 = v150 + 152;
      if (v150 + 152 == v144)
      {
        goto LABEL_217;
      }
    }

    v117 = __p[0].n128_i64[1];
    v118 = __p[0].n128_u64[0];
    if (__p[0].n128_u64[1] == __p[0].n128_u64[0])
    {
LABEL_184:
      __p[0].n128_u64[1] = v116;
      operator delete(v118);
      goto LABEL_185;
    }

    while (1)
    {
      if (*(v117 - 16) != 1)
      {
        *(v117 - 416) = off_26696C8;
        if ((*(v117 - 385) & 0x80000000) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_171;
      }

      v119 = *(v117 - 40);
      if (v119)
      {
        break;
      }

LABEL_165:
      if (*(v117 - 49) < 0)
      {
        operator delete(*(v117 - 72));
        if ((*(v117 - 81) & 0x80000000) == 0)
        {
LABEL_167:
          if ((*(v117 - 113) & 0x80000000) == 0)
          {
            goto LABEL_168;
          }

          goto LABEL_180;
        }
      }

      else if ((*(v117 - 81) & 0x80000000) == 0)
      {
        goto LABEL_167;
      }

      operator delete(*(v117 - 104));
      if ((*(v117 - 113) & 0x80000000) == 0)
      {
LABEL_168:
        if ((*(v117 - 137) & 0x80000000) == 0)
        {
          goto LABEL_169;
        }

LABEL_181:
        operator delete(*(v117 - 160));
        if ((*(v117 - 161) & 0x80000000) == 0)
        {
          goto LABEL_170;
        }

        goto LABEL_182;
      }

LABEL_180:
      operator delete(*(v117 - 136));
      if (*(v117 - 137) < 0)
      {
        goto LABEL_181;
      }

LABEL_169:
      if ((*(v117 - 161) & 0x80000000) == 0)
      {
        goto LABEL_170;
      }

LABEL_182:
      operator delete(*(v117 - 184));
LABEL_170:
      sub_33D080(v117 - 376);
      *(v117 - 416) = off_26696C8;
      if ((*(v117 - 385) & 0x80000000) == 0)
      {
LABEL_145:
        if ((*(v117 - 465) & 0x80000000) == 0)
        {
          goto LABEL_146;
        }

        goto LABEL_172;
      }

LABEL_171:
      operator delete(*(v117 - 408));
      if ((*(v117 - 465) & 0x80000000) == 0)
      {
LABEL_146:
        if ((*(v117 - 497) & 0x80000000) == 0)
        {
          goto LABEL_147;
        }

        goto LABEL_173;
      }

LABEL_172:
      operator delete(*(v117 - 488));
      if ((*(v117 - 497) & 0x80000000) == 0)
      {
LABEL_147:
        if ((*(v117 - 521) & 0x80000000) == 0)
        {
          goto LABEL_148;
        }

        goto LABEL_174;
      }

LABEL_173:
      operator delete(*(v117 - 520));
      if ((*(v117 - 521) & 0x80000000) == 0)
      {
LABEL_148:
        if ((*(v117 - 561) & 0x80000000) == 0)
        {
          goto LABEL_149;
        }

        goto LABEL_175;
      }

LABEL_174:
      operator delete(*(v117 - 544));
      if ((*(v117 - 561) & 0x80000000) == 0)
      {
LABEL_149:
        if ((*(v117 - 593) & 0x80000000) == 0)
        {
          goto LABEL_150;
        }

        goto LABEL_176;
      }

LABEL_175:
      operator delete(*(v117 - 584));
      if ((*(v117 - 593) & 0x80000000) == 0)
      {
LABEL_150:
        if (*(v117 - 617) < 0)
        {
          goto LABEL_177;
        }

        goto LABEL_142;
      }

LABEL_176:
      operator delete(*(v117 - 616));
      if (*(v117 - 617) < 0)
      {
LABEL_177:
        operator delete(*(v117 - 640));
      }

LABEL_142:
      v117 -= 1120;
      sub_2C0F28(v117);
      if (v117 == v116)
      {
        v118 = __p[0].n128_u64[0];
        goto LABEL_184;
      }
    }

    v120 = *(v117 - 32);
    v121 = *(v117 - 40);
    if (v120 == v119)
    {
LABEL_164:
      *(v117 - 32) = v119;
      operator delete(v121);
      goto LABEL_165;
    }

    while (1)
    {
      if (*(v120 - 1) < 0)
      {
        operator delete(*(v120 - 3));
        if ((*(v120 - 25) & 0x80000000) == 0)
        {
LABEL_158:
          if (*(v120 - 49) < 0)
          {
            goto LABEL_162;
          }

          goto LABEL_155;
        }
      }

      else if ((*(v120 - 25) & 0x80000000) == 0)
      {
        goto LABEL_158;
      }

      operator delete(*(v120 - 6));
      if (*(v120 - 49) < 0)
      {
LABEL_162:
        operator delete(*(v120 - 9));
      }

LABEL_155:
      v120 -= 31;
      sub_33D5A0(v120);
      if (v120 == v119)
      {
        v121 = *(v117 - 40);
        goto LABEL_164;
      }
    }
  }

  v148 = 0;
LABEL_217:
  *(v14 + 2092) = 0;
  *(v14 + 2088) = v148;
  sub_7E974(v197);
  sub_61AC44(*(v14 + 1672), v16);
  *(v14 + 1976) = (round(sub_7EA60(v197)) + *(v14 + 1976));
  if (v195)
  {
    v196 = v195;
    operator delete(v195);
  }

  if (v193)
  {
    v194 = v193;
    operator delete(v193);
  }
}

void sub_785C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  __cxa_guard_abort(&qword_27339A0);
  sub_785D84(a25);
  _Unwind_Resume(a1);
}

void sub_785C58(_Unwind_Exception *a1)
{
  sub_60B0D4((v2 - 232));
  sub_785D84(v1);
  _Unwind_Resume(a1);
}

void sub_785D60(_Unwind_Exception *a1)
{
  sub_78B5C0(&STACK[0x358]);
  sub_60B0D4((v2 - 232));
  sub_785D84(v1);
  _Unwind_Resume(a1);
}

void **sub_785D84(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_78B5C0(v3 - 7808);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_785DEC(uint64_t a1, char ***a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v7 = 0;
  }

  else
  {
    v5 = v3 + 976;
    do
    {
      v6 = sub_68E170(v3);
      v7 = v6 != 0;
      if (v6)
      {
        break;
      }

      v3 += 976;
      v14 = v5 == v4;
      v5 += 976;
    }

    while (!v14);
    v3 = *a2;
    v4 = a2[1];
    if (*a2 != v4)
    {
      v8 = v3 + 976;
      do
      {
        v9 = sub_68DFF0(v3);
        if (v9)
        {
          break;
        }

        v3 += 976;
        v14 = v8 == v4;
        v8 += 976;
      }

      while (!v14);
      v3 = *a2;
      v4 = a2[1];
      v106 = v9 != 0;
      v107 = v7;
      if (*a2 != v4)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  v106 = 0;
  v107 = v7;
  if (v3 != v4)
  {
LABEL_12:
    v10 = v3 + 976;
    do
    {
      v11 = sub_68F328(v3);
      v12 = v11[1];
      v14 = v12 == *v11;
      v13 = v12 != *v11;
      v3 += 976;
      v14 = !v14 || v10 == v4;
      v10 += 976;
    }

    while (!v14);
    v109 = v13;
    v112 = *a2;
    v110 = a2[1];
    if (*a2 == v110)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_22:
  v109 = 0;
  v112 = v3;
  v110 = v4;
  if (v3 == v4)
  {
    return;
  }

LABEL_23:
  if (v107)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (v106)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v104 = v16;
  v105 = v15;
  if (v109)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v108 = v17;
  do
  {
    if (*(a1 + 24) != 1)
    {
      goto LABEL_189;
    }

    sub_69250C(v112, __p);
    sub_692474(v112, &v120);
    v124 = 0uLL;
    v125 = 0;
    v19 = __p[0];
    v114 = __p[1];
    if (__p[0] == __p[1])
    {
      v117[0] = 0;
      v117[1] = 0;
      v36 = v105;
      v118 = 0;
    }

    else
    {
      do
      {
        v20 = *(&v124 + 1);
        if (*(&v124 + 1) >= v125)
        {
          v22 = v124;
          v23 = 0x70913F8BCD29C245 * ((*(&v124 + 1) - v124) >> 3) + 1;
          if (v23 > 0x3A196B1EDD80E8)
          {
            sub_1794();
          }

          if (0xE1227F179A53848ALL * ((v125 - v124) >> 3) > v23)
          {
            v23 = 0xE1227F179A53848ALL * ((v125 - v124) >> 3);
          }

          if ((0x70913F8BCD29C245 * ((v125 - v124) >> 3)) >= 0x1D0CB58F6EC074)
          {
            v24 = 0x3A196B1EDD80E8;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            if (v24 <= 0x3A196B1EDD80E8)
            {
              operator new();
            }

            sub_1808();
          }

          v25 = 8 * ((*(&v124 + 1) - v124) >> 3);
          *v25 = 0u;
          *(v25 + 16) = 0u;
          *(v25 + 32) = 0u;
          *(v25 + 48) = 0u;
          *(v25 + 64) = 0u;
          *(v25 + 80) = 0u;
          *(v25 + 96) = 0u;
          *(v25 + 112) = 0u;
          *(v25 + 160) = 0;
          *(v25 + 128) = 0u;
          *(v25 + 144) = 0u;
          *(v25 + 4) = -1;
          *(v25 + 16) = 0;
          *(v25 + 24) = 0;
          *(v25 + 8) = 0;
          *(v25 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v25 + 40) = -1;
          *(v25 + 48) = 0x7FFFFFFF;
          *(v25 + 56) = 0u;
          *(v25 + 72) = 0u;
          *(v25 + 88) = 0u;
          *(v25 + 104) = 0u;
          *(v25 + 113) = 0u;
          *(v25 + 140) = 0;
          *(v25 + 132) = 0;
          *(v25 + 154) = 0;
          *(v25 + 148) = 0;
          v26 = v25 - (v20 - v22);
          *(v25 + 1120) = 0;
          if (v22 != v20)
          {
            v27 = v25 - (v20 - v22);
            v28 = v22;
            do
            {
              *v27 = 0;
              *(v27 + 1120) = -1;
              v29 = v28[280];
              if (v29 != -1)
              {
                v126[0] = v27;
                (off_266C810[v29])(v126, v28);
                *(v27 + 1120) = v29;
              }

              v28 += 282;
              v27 += 1128;
            }

            while (v28 != v20);
            v26 = v25 - (v20 - v22);
            do
            {
              v30 = v22[280];
              if (v30 != -1)
              {
                (off_266C800[v30])(v126, v22);
              }

              v22[280] = -1;
              v22 += 282;
            }

            while (v22 != v20);
            v22 = v124;
          }

          v21 = v25 + 1128;
          *&v124 = v26;
          v125 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          **(&v124 + 1) = 0u;
          *(v20 + 16) = 0u;
          *(v20 + 32) = 0u;
          *(v20 + 48) = 0u;
          *(v20 + 64) = 0u;
          *(v20 + 80) = 0u;
          *(v20 + 96) = 0u;
          *(v20 + 112) = 0u;
          *(v20 + 160) = 0;
          *(v20 + 128) = 0u;
          *(v20 + 144) = 0u;
          *(v20 + 4) = -1;
          *(v20 + 16) = 0;
          *(v20 + 24) = 0;
          *(v20 + 8) = 0;
          *(v20 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v20 + 40) = -1;
          *(v20 + 48) = 0x7FFFFFFF;
          *(v20 + 56) = 0u;
          *(v20 + 72) = 0u;
          *(v20 + 88) = 0u;
          *(v20 + 104) = 0u;
          *(v20 + 113) = 0u;
          *(v20 + 140) = 0;
          *(v20 + 132) = 0;
          *(v20 + 154) = 0;
          *(v20 + 148) = 0;
          *(v20 + 1120) = 0;
          v21 = v20 + 1128;
        }

        *(&v124 + 1) = v21;
        v31 = *(v21 - 8);
        if (v31 != -1)
        {
          (off_266C800[v31])(v126, v21 - 1128);
        }

        *(v21 - 8) = -1;
        sub_52A464(v21 - 1128, v19);
        *(v21 - 8) = 0;
        v19 += 168;
      }

      while (v19 != v114);
      v32 = v124;
      *v117 = v124;
      v118 = v125;
      LOBYTE(v124) = 0;
      if (v107)
      {
        v33 = *(&v32 + 1);
        v34 = v32;
        if (*(&v32 + 1) == v32)
        {
          v36 = 2;
        }

        else
        {
          v35 = v32;
          do
          {
            if (sub_79208C(&v124, v35, 0) && (sub_79208C(&v124, v35, 1) & 1) != 0)
            {
              v36 = 6;
              goto LABEL_82;
            }

            v35 += 1128;
          }

          while (v35 != v33);
          v37 = v34;
          do
          {
            if (sub_79208C(&v124, v37, 1))
            {
              v36 = 4;
              goto LABEL_82;
            }

            v37 += 1128;
          }

          while (v37 != v33);
          while (!sub_79208C(&v124, v34, 0))
          {
            v34 += 1128;
            if (v34 == v33)
            {
              v36 = 7;
              goto LABEL_82;
            }
          }

          v36 = 5;
        }
      }

      else
      {
        v36 = 1;
      }
    }

LABEL_82:
    v119 = v36;
    sub_68DFA4(v112, &v119);
    v38 = v117[0];
    if (v117[0])
    {
      v39 = v117[1];
      if (v117[1] != v117[0])
      {
        do
        {
          v40 = v39 - 1128;
          v41 = *(v39 - 2);
          if (v41 != -1)
          {
            (off_266C800[v41])(&v124, v39 - 1128);
          }

          *(v39 - 2) = -1;
          v39 -= 1128;
        }

        while (v40 != v38);
        v38 = v117[0];
      }

      operator delete(v38);
    }

    v124 = 0uLL;
    v125 = 0;
    v42 = v120;
    v115 = v121;
    if (v120 == v121)
    {
      v117[0] = 0;
      v117[1] = 0;
      v59 = v104;
      v118 = 0;
    }

    else
    {
      do
      {
        v43 = *(&v124 + 1);
        if (*(&v124 + 1) >= v125)
        {
          v45 = v124;
          v46 = 0x70913F8BCD29C245 * ((*(&v124 + 1) - v124) >> 3) + 1;
          if (v46 > 0x3A196B1EDD80E8)
          {
            sub_1794();
          }

          if (0xE1227F179A53848ALL * ((v125 - v124) >> 3) > v46)
          {
            v46 = 0xE1227F179A53848ALL * ((v125 - v124) >> 3);
          }

          if ((0x70913F8BCD29C245 * ((v125 - v124) >> 3)) >= 0x1D0CB58F6EC074)
          {
            v47 = 0x3A196B1EDD80E8;
          }

          else
          {
            v47 = v46;
          }

          if (v47)
          {
            if (v47 <= 0x3A196B1EDD80E8)
            {
              operator new();
            }

            sub_1808();
          }

          v48 = 8 * ((*(&v124 + 1) - v124) >> 3);
          *v48 = 0u;
          *(v48 + 16) = 0u;
          *(v48 + 32) = 0u;
          *(v48 + 48) = 0u;
          *(v48 + 64) = 0u;
          *(v48 + 80) = 0u;
          *(v48 + 96) = 0u;
          *(v48 + 112) = 0u;
          *(v48 + 160) = 0;
          *(v48 + 128) = 0u;
          *(v48 + 144) = 0u;
          *(v48 + 4) = -1;
          *(v48 + 16) = 0;
          *(v48 + 24) = 0;
          *(v48 + 8) = 0;
          *(v48 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v48 + 40) = -1;
          *(v48 + 48) = 0x7FFFFFFF;
          *(v48 + 56) = 0u;
          *(v48 + 72) = 0u;
          *(v48 + 88) = 0u;
          *(v48 + 104) = 0u;
          *(v48 + 113) = 0u;
          *(v48 + 140) = 0;
          *(v48 + 132) = 0;
          *(v48 + 154) = 0;
          *(v48 + 148) = 0;
          v49 = v48 - (v43 - v45);
          *(v48 + 1120) = 0;
          if (v45 != v43)
          {
            v50 = v48 - (v43 - v45);
            v51 = v45;
            do
            {
              *v50 = 0;
              *(v50 + 1120) = -1;
              v52 = v51[280];
              if (v52 != -1)
              {
                v126[0] = v50;
                (off_266C810[v52])(v126, v51);
                *(v50 + 1120) = v52;
              }

              v51 += 282;
              v50 += 1128;
            }

            while (v51 != v43);
            v49 = v48 - (v43 - v45);
            do
            {
              v53 = v45[280];
              if (v53 != -1)
              {
                (off_266C800[v53])(v126, v45);
              }

              v45[280] = -1;
              v45 += 282;
            }

            while (v45 != v43);
            v45 = v124;
          }

          v44 = v48 + 1128;
          *&v124 = v49;
          v125 = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          **(&v124 + 1) = 0u;
          *(v43 + 16) = 0u;
          *(v43 + 32) = 0u;
          *(v43 + 48) = 0u;
          *(v43 + 64) = 0u;
          *(v43 + 80) = 0u;
          *(v43 + 96) = 0u;
          *(v43 + 112) = 0u;
          *(v43 + 160) = 0;
          *(v43 + 128) = 0u;
          *(v43 + 144) = 0u;
          *(v43 + 4) = -1;
          *(v43 + 16) = 0;
          *(v43 + 24) = 0;
          *(v43 + 8) = 0;
          *(v43 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v43 + 40) = -1;
          *(v43 + 48) = 0x7FFFFFFF;
          *(v43 + 56) = 0u;
          *(v43 + 72) = 0u;
          *(v43 + 88) = 0u;
          *(v43 + 104) = 0u;
          *(v43 + 113) = 0u;
          *(v43 + 140) = 0;
          *(v43 + 132) = 0;
          *(v43 + 154) = 0;
          *(v43 + 148) = 0;
          *(v43 + 1120) = 0;
          v44 = v43 + 1128;
        }

        *(&v124 + 1) = v44;
        v54 = *(v44 - 8);
        if (v54 != -1)
        {
          (off_266C800[v54])(v126, v44 - 1128);
        }

        *(v44 - 8) = -1;
        sub_52A464(v44 - 1128, v42);
        *(v44 - 8) = 0;
        v42 += 168;
      }

      while (v42 != v115);
      v55 = v124;
      *v117 = v124;
      v118 = v125;
      LOBYTE(v124) = 0;
      if (v106)
      {
        v56 = *(&v55 + 1);
        v57 = v55;
        if (*(&v55 + 1) == v55)
        {
          v59 = 2;
        }

        else
        {
          v58 = v55;
          do
          {
            if (sub_79208C(&v124, v58, 0) && (sub_79208C(&v124, v58, 1) & 1) != 0)
            {
              v59 = 6;
              goto LABEL_135;
            }

            v58 += 1128;
          }

          while (v58 != v56);
          v60 = v57;
          do
          {
            if (sub_79208C(&v124, v60, 1))
            {
              v59 = 4;
              goto LABEL_135;
            }

            v60 += 1128;
          }

          while (v60 != v56);
          while (!sub_79208C(&v124, v57, 0))
          {
            v57 += 1128;
            if (v57 == v56)
            {
              v59 = 7;
              goto LABEL_135;
            }
          }

          v59 = 5;
        }
      }

      else
      {
        v59 = 1;
      }
    }

LABEL_135:
    v119 = v59;
    sub_68DFC4(v112, &v119);
    v61 = v117[0];
    if (v117[0])
    {
      v62 = v117[1];
      if (v117[1] != v117[0])
      {
        do
        {
          v63 = v62 - 1128;
          v64 = *(v62 - 2);
          if (v64 != -1)
          {
            (off_266C800[v64])(&v124, v62 - 1128);
          }

          *(v62 - 2) = -1;
          v62 -= 1128;
        }

        while (v63 != v61);
        v61 = v117[0];
      }

      operator delete(v61);
    }

    v65 = v120;
    if (v120)
    {
      v66 = v121;
      v67 = v120;
      if (v121 == v120)
      {
LABEL_165:
        v121 = v65;
        operator delete(v67);
        goto LABEL_166;
      }

      while (1)
      {
        if (*(v66 - 9) < 0)
        {
          operator delete(*(v66 - 4));
          v68 = *(v66 - 8);
          if (!v68)
          {
LABEL_149:
            if ((*(v66 - 65) & 0x80000000) == 0)
            {
              goto LABEL_150;
            }

            goto LABEL_161;
          }
        }

        else
        {
          v68 = *(v66 - 8);
          if (!v68)
          {
            goto LABEL_149;
          }
        }

        v69 = *(v66 - 7);
        v70 = v68;
        if (v69 != v68)
        {
          do
          {
            v71 = *(v69 - 1);
            v69 -= 3;
            if (v71 < 0)
            {
              operator delete(*v69);
            }
          }

          while (v69 != v68);
          v70 = *(v66 - 8);
        }

        *(v66 - 7) = v68;
        operator delete(v70);
        if ((*(v66 - 65) & 0x80000000) == 0)
        {
LABEL_150:
          if ((*(v66 - 89) & 0x80000000) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_162;
        }

LABEL_161:
        operator delete(*(v66 - 11));
        if ((*(v66 - 89) & 0x80000000) == 0)
        {
LABEL_151:
          if (*(v66 - 137) < 0)
          {
            goto LABEL_163;
          }

          goto LABEL_146;
        }

LABEL_162:
        operator delete(*(v66 - 14));
        if (*(v66 - 137) < 0)
        {
LABEL_163:
          operator delete(*(v66 - 20));
        }

LABEL_146:
        v66 -= 21;
        if (v66 == v65)
        {
          v67 = v120;
          goto LABEL_165;
        }
      }
    }

LABEL_166:
    v72 = __p[0];
    if (!__p[0])
    {
      goto LABEL_189;
    }

    v73 = __p[1];
    v74 = __p[0];
    if (__p[1] != __p[0])
    {
      while (1)
      {
        if (*(v73 - 9) < 0)
        {
          operator delete(*(v73 - 4));
          v75 = *(v73 - 8);
          if (!v75)
          {
LABEL_172:
            if ((*(v73 - 65) & 0x80000000) == 0)
            {
              goto LABEL_173;
            }

            goto LABEL_184;
          }
        }

        else
        {
          v75 = *(v73 - 8);
          if (!v75)
          {
            goto LABEL_172;
          }
        }

        v76 = *(v73 - 7);
        v77 = v75;
        if (v76 != v75)
        {
          do
          {
            v78 = *(v76 - 1);
            v76 -= 3;
            if (v78 < 0)
            {
              operator delete(*v76);
            }
          }

          while (v76 != v75);
          v77 = *(v73 - 8);
        }

        *(v73 - 7) = v75;
        operator delete(v77);
        if ((*(v73 - 65) & 0x80000000) == 0)
        {
LABEL_173:
          if ((*(v73 - 89) & 0x80000000) == 0)
          {
            goto LABEL_174;
          }

          goto LABEL_185;
        }

LABEL_184:
        operator delete(*(v73 - 11));
        if ((*(v73 - 89) & 0x80000000) == 0)
        {
LABEL_174:
          if (*(v73 - 137) < 0)
          {
            goto LABEL_186;
          }

          goto LABEL_169;
        }

LABEL_185:
        operator delete(*(v73 - 14));
        if (*(v73 - 137) < 0)
        {
LABEL_186:
          operator delete(*(v73 - 20));
        }

LABEL_169:
        v73 -= 21;
        if (v73 == v72)
        {
          v74 = __p[0];
          break;
        }
      }
    }

    __p[1] = v72;
    operator delete(v74);
LABEL_189:
    v79 = sub_68F328(v112);
    v124 = 0uLL;
    v125 = 0;
    v80 = *v79;
    v116 = v79[1];
    if (*v79 == v116)
    {
      __p[0] = 0;
      __p[1] = 0;
      v99 = v108;
      v123 = 0;
      goto LABEL_235;
    }

    do
    {
      v81 = *(&v124 + 1);
      if (*(&v124 + 1) >= v125)
      {
        v85 = v124;
        v87 = 0x70913F8BCD29C245 * ((*(&v124 + 1) - v124) >> 3) + 1;
        if (v87 > 0x3A196B1EDD80E8)
        {
          sub_1794();
        }

        if (0xE1227F179A53848ALL * ((v125 - v124) >> 3) > v87)
        {
          v87 = 0xE1227F179A53848ALL * ((v125 - v124) >> 3);
        }

        if ((0x70913F8BCD29C245 * ((v125 - v124) >> 3)) >= 0x1D0CB58F6EC074)
        {
          v88 = 0x3A196B1EDD80E8;
        }

        else
        {
          v88 = v87;
        }

        if (v88)
        {
          if (v88 <= 0x3A196B1EDD80E8)
          {
            operator new();
          }

          sub_1808();
        }

        v89 = 8 * ((*(&v124 + 1) - v124) >> 3);
        *v89 = 0u;
        *(v89 + 16) = 0u;
        *(v89 + 32) = 0u;
        *(v89 + 48) = 0u;
        *(v89 + 64) = 0u;
        *(v89 + 80) = 0u;
        *(v89 + 96) = 0u;
        *(v89 + 112) = 0u;
        *(v89 + 160) = 0;
        *(v89 + 128) = 0u;
        *(v89 + 144) = 0u;
        *(v89 + 4) = -1;
        *(v89 + 16) = 0;
        *(v89 + 24) = 0;
        *(v89 + 8) = 0;
        *(v89 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v89 + 40) = -1;
        *(v89 + 48) = 0x7FFFFFFF;
        *(v89 + 56) = 0u;
        *(v89 + 72) = 0u;
        *(v89 + 88) = 0u;
        *(v89 + 104) = 0u;
        *(v89 + 113) = 0u;
        *(v89 + 140) = 0;
        *(v89 + 132) = 0;
        *(v89 + 154) = 0;
        *(v89 + 148) = 0;
        v86 = v81 - v85;
        v90 = v89 - (v81 - v85);
        *(v89 + 1120) = 0;
        if (v85 != v81)
        {
          v113 = v89 - v86;
          v91 = (v89 - v86);
          v92 = v85;
          do
          {
            *v91 = 0;
            v91[280] = -1;
            v93 = v92[280];
            if (v93 != -1)
            {
              v120 = v91;
              (off_266C810[v93])(&v120, v92);
              v91[280] = v93;
            }

            v92 += 282;
            v91 += 282;
          }

          while (v92 != v81);
          do
          {
            v94 = v85[280];
            if (v94 != -1)
            {
              (off_266C800[v94])(&v120, v85);
            }

            v85[280] = -1;
            v85 += 282;
          }

          while (v85 != v81);
          v85 = v124;
          v90 = v113;
        }

        v82 = v89 + 1128;
        *&v124 = v90;
        v125 = 0;
        if (v85)
        {
          operator delete(v85);
        }

        *(&v124 + 1) = v89 + 1128;
        v83 = v89;
        v84 = *(v89 + 1120);
        if (v84 != -1)
        {
LABEL_215:
          (off_266C800[v84])(&v120, v83);
        }
      }

      else
      {
        **(&v124 + 1) = 0u;
        *(v81 + 16) = 0u;
        *(v81 + 32) = 0u;
        *(v81 + 48) = 0u;
        *(v81 + 64) = 0u;
        *(v81 + 80) = 0u;
        *(v81 + 96) = 0u;
        *(v81 + 112) = 0u;
        *(v81 + 160) = 0;
        *(v81 + 128) = 0u;
        *(v81 + 144) = 0u;
        *(v81 + 4) = -1;
        *(v81 + 16) = 0;
        *(v81 + 24) = 0;
        *(v81 + 8) = 0;
        *(v81 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v81 + 40) = -1;
        *(v81 + 48) = 0x7FFFFFFF;
        *(v81 + 56) = 0u;
        *(v81 + 72) = 0u;
        *(v81 + 88) = 0u;
        *(v81 + 104) = 0u;
        *(v81 + 113) = 0u;
        *(v81 + 140) = 0;
        *(v81 + 132) = 0;
        *(v81 + 154) = 0;
        *(v81 + 148) = 0;
        *(v81 + 1120) = 0;
        v82 = v81 + 1128;
        *(&v124 + 1) = v82;
        v83 = v82 - 1128;
        v84 = *(v82 - 8);
        if (v84 != -1)
        {
          goto LABEL_215;
        }
      }

      *(v82 - 8) = -1;
      sub_52B7D8(v83, v80);
      *(v82 - 8) = 1;
      v80 += 1120;
    }

    while (v80 != v116);
    v95 = v124;
    *__p = v124;
    v123 = v125;
    LOBYTE(v124) = 0;
    if (v109)
    {
      v96 = *(&v95 + 1);
      v97 = v95;
      if (*(&v95 + 1) == v95)
      {
        v99 = 2;
      }

      else
      {
        v98 = v95;
        do
        {
          if (sub_79208C(&v124, v98, 0) && (sub_79208C(&v124, v98, 1) & 1) != 0)
          {
            v99 = 6;
            goto LABEL_235;
          }

          v98 += 1128;
        }

        while (v98 != v96);
        v100 = v97;
        do
        {
          if (sub_79208C(&v124, v100, 1))
          {
            v99 = 4;
            goto LABEL_235;
          }

          v100 += 1128;
        }

        while (v100 != v96);
        while (!sub_79208C(&v124, v97, 0))
        {
          v97 += 1128;
          if (v97 == v96)
          {
            v99 = 7;
            goto LABEL_235;
          }
        }

        v99 = 5;
      }
    }

    else
    {
      v99 = 1;
    }

LABEL_235:
    LODWORD(v117[0]) = v99;
    sub_68DFE4(v112, v117);
    v18 = __p[0];
    if (__p[0])
    {
      v101 = __p[1];
      if (__p[1] != __p[0])
      {
        do
        {
          v102 = v101 - 1128;
          v103 = *(v101 - 2);
          if (v103 != -1)
          {
            (off_266C800[v103])(&v124, v101 - 1128);
          }

          *(v101 - 2) = -1;
          v101 -= 1128;
        }

        while (v102 != v18);
        v18 = __p[0];
      }

      operator delete(v18);
    }

    v112 += 976;
  }

  while (v112 != v110);
}

void sub_786E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va2, a16);
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, char *);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  va_copy(va2, va1);
  v23 = va_arg(va2, void *);
  v25 = va_arg(va2, void);
  v26 = va_arg(va2, void);
  sub_77CB78(va);
  sub_51B6E0(va1);
  sub_51B6E0(va2);
  _Unwind_Resume(a1);
}

void sub_786F14(uint64_t a1, void *a2, double a3)
{
  v3 = a2[156];
  v4 = a2[157];
  if (v3 != v4)
  {
    v7 = a2 + 512;
    while (1)
    {
      v8 = *(v3 + 152);
      if (v8)
      {
        v9 = 0;
        for (i = 0; i != v8; ++i)
        {
          v9 += sub_4D23F8(a2, i, a3);
        }

        if (v9 > *(a1 + 16))
        {
          return;
        }
      }

      else if (*(a1 + 16) < 0)
      {
        return;
      }

      if (sub_734C10(v3))
      {
        break;
      }

      v3 += 160;
      if (v3 == v4)
      {
        return;
      }
    }

    v11 = *(v3 + 152);
    sub_5139E8(&v25, v3);
    sub_78D600(a2[138] + 392, &v25, &v35, 1uLL);
    if (v34 < 0)
    {
      operator delete(__p);
      if ((v32 & 0x80000000) == 0)
      {
LABEL_14:
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

    else if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(v31);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_15:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }

LABEL_21:
    operator delete(v29);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_16:
      if ((SHIBYTE(v26) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }

LABEL_22:
    operator delete(v27);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_17:
      if (v11 == -1)
      {
        return;
      }

LABEL_24:
      if (v11 >= *(sub_578320(a2 + 138, 1uLL) + 24))
      {
        return;
      }

      v12 = sub_4D1F50(a2, v11);
      sub_2B7A20(*(a1 + 8), (((*(v12 + 36) & 0x20000000) << 19) | (*(v12 + 36) << 32) | *(v12 + 32)) ^ 0x1000000000000, &v25);
      sub_31BF20(&v25, &v23);
      if (*(&v25 + 1))
      {
        v26 = *(&v25 + 1);
        operator delete(*(&v25 + 1));
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 2) < 2)
      {
        goto LABEL_86;
      }

      v13 = sub_41224(&v23, 0);
      v14 = sub_41224(&v23, 1uLL);
      if (*v14 == *v13)
      {
        v15 = v13[1];
        v16 = v14[1];
        j = 0.0;
        if (v15 == v16)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v16 = v14[1];
        v15 = v13[1];
      }

      v18 = -(*v13 - *v14);
      if (*v14 - *v13 < (*v13 - *v14))
      {
        v18 = (*v14 - *v13);
      }

        ;
      }

        ;
      }

LABEL_38:
      v19 = (j + 180.0) / 45.0 + 0.5;
      if (v19 <= 0)
      {
        v20 = -(-v19 & 7);
      }

      else
      {
        v20 = v19 & 7;
      }

      v21 = v7 + 418;
      v22 = *(v7 + 3367);
      if (v20 > 3)
      {
        if (v20 <= 5)
        {
          if (v20 == 4)
          {
            if (v22 < 0)
            {
              a2[931] = 1;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 1;
            }

            *v21++ = 78;
          }

          else
          {
            if (v22 < 0)
            {
              a2[931] = 2;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 2;
            }

            *v21 = 17742;
            v21 += 2;
          }

          goto LABEL_85;
        }

        if (v20 == 6)
        {
          if (v22 < 0)
          {
            a2[931] = 1;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 1;
          }

          *v21++ = 69;
          goto LABEL_85;
        }

        if (v20 == 7)
        {
          if (v22 < 0)
          {
            a2[931] = 2;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 2;
          }

          *v21 = 17747;
          v21 += 2;
          goto LABEL_85;
        }
      }

      else
      {
        if (v20 > 1)
        {
          if (v20 == 2)
          {
            if (v22 < 0)
            {
              a2[931] = 1;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 1;
            }

            *v21++ = 87;
          }

          else
          {
            if (v22 < 0)
            {
              a2[931] = 2;
              v21 = a2[930];
            }

            else
            {
              *(v7 + 3367) = 2;
            }

            *v21 = 22350;
            v21 += 2;
          }

          goto LABEL_85;
        }

        if (!v20)
        {
          if (v22 < 0)
          {
            a2[931] = 1;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 1;
          }

          *v21++ = 83;
          goto LABEL_85;
        }

        if (v20 == 1)
        {
          if (v22 < 0)
          {
            a2[931] = 2;
            v21 = a2[930];
          }

          else
          {
            *(v7 + 3367) = 2;
          }

          *v21 = 22355;
          v21 += 2;
          goto LABEL_85;
        }
      }

      if (v22 < 0)
      {
        a2[931] = 0;
        v21 = a2[930];
      }

      else
      {
        *(v7 + 3367) = 0;
      }

LABEL_85:
      *v21 = 0;
LABEL_86:
      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      return;
    }

LABEL_23:
    operator delete(v25);
    if (v11 == -1)
    {
      return;
    }

    goto LABEL_24;
  }
}

void sub_787440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_78749C(uint64_t *a1, unint64_t a2)
{
  if (0x4FBCDA3AC10C9715 * ((a1[2] - *a1) >> 7) < a2)
  {
    if (a2 < 0x864B8A7DE6D1ELL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_7875D4(uint64_t *a1, unint64_t a2)
{
  if (0x5DDB1ADCB91F64A7 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x52DA224E52347)
    {
      operator new();
    }

    sub_1794();
  }
}

unint64_t sub_78770C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_4C35B0(a2);
  if (result - 1 == a3)
  {
    v10 = *a4;
    v11 = *(a4 + 8);
    if (*a4 != v11)
    {
      while (v10[44] != 2)
      {
        v10 += 110;
        if (v10 == v11)
        {
          goto LABEL_11;
        }
      }
    }

    if (v10 == v11)
    {
LABEL_11:
      if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
      {
        sub_78922C(&unk_27337E8);
        __cxa_guard_release(&qword_27339A0);
      }

      v10 = &unk_27337E8;
      v12 = a6;
    }

    else
    {
      v12 = a6;
    }

    return sub_69AE48(v12, v10);
  }

  return result;
}

void sub_787AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_787B20(uint64_t a1)
{
  result = 0.0;
  *a1 = 0;
  *(a1 + 8) = 0;
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  v3 = vnegq_f64(v2);
  *(a1 + 16) = v3;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v3;
  *(a1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = v3;
  *(a1 + 112) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = v3;
  *(a1 + 152) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = v3;
  *(a1 + 192) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = v3;
  *(a1 + 232) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = v3;
  *(a1 + 272) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 304) = v3;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = v3;
  *(a1 + 352) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 384) = v3;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = v3;
  *(a1 + 432) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 464) = v3;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = v3;
  *(a1 + 512) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 544) = v3;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0;
  *(a1 + 576) = v3;
  *(a1 + 592) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0;
  *(a1 + 616) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 624) = v3;
  *(a1 + 640) = 0;
  *(a1 + 648) = 0;
  *(a1 + 656) = v3;
  *(a1 + 672) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 704) = v3;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = v3;
  *(a1 + 752) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0;
  *(a1 + 776) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 784) = v3;
  *(a1 + 800) = 0;
  *(a1 + 808) = 0;
  *(a1 + 816) = v3;
  *(a1 + 832) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 840) = 0;
  *(a1 + 848) = 0;
  *(a1 + 856) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 864) = v3;
  *(a1 + 880) = 0;
  *(a1 + 888) = 0;
  *(a1 + 896) = v3;
  *(a1 + 912) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 920) = 0;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 944) = v3;
  *(a1 + 960) = 0;
  *(a1 + 968) = 0;
  *(a1 + 976) = v3;
  *(a1 + 992) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1000) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1024) = v3;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1056) = v3;
  *(a1 + 1072) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1080) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1096) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1104) = v3;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1136) = v3;
  *(a1 + 1152) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1160) = 0;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1184) = v3;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = v3;
  *(a1 + 1232) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1240) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1256) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1264) = v3;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0;
  *(a1 + 1296) = v3;
  *(a1 + 1312) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1320) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 1336) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1344) = v3;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 0;
  *(a1 + 1376) = v3;
  *(a1 + 1392) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1400) = 0;
  *(a1 + 1408) = 0;
  *(a1 + 1416) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1424) = v3;
  *(a1 + 1440) = 0;
  *(a1 + 1448) = 0;
  *(a1 + 1456) = v3;
  *(a1 + 1472) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1480) = 0;
  *(a1 + 1488) = 0;
  *(a1 + 1496) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1504) = v3;
  *(a1 + 1520) = 0;
  *(a1 + 1528) = 0;
  *(a1 + 1536) = v3;
  *(a1 + 1552) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1560) = 0;
  *(a1 + 1568) = 0;
  *(a1 + 1576) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1584) = v3;
  *(a1 + 1600) = 0;
  *(a1 + 1608) = 0;
  *(a1 + 1616) = v3;
  *(a1 + 1632) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1640) = 0;
  *(a1 + 1648) = 0;
  *(a1 + 1656) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1664) = v3;
  *(a1 + 1680) = 0;
  *(a1 + 1688) = 0;
  *(a1 + 1696) = v3;
  *(a1 + 1712) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1720) = 0;
  *(a1 + 1728) = 0;
  *(a1 + 1736) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1744) = v3;
  *(a1 + 1760) = 0;
  *(a1 + 1768) = 0;
  *(a1 + 1776) = v3;
  *(a1 + 1792) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1800) = 0;
  *(a1 + 1808) = 0;
  *(a1 + 1816) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1824) = v3;
  *(a1 + 1840) = 0;
  *(a1 + 1848) = 0;
  *(a1 + 1856) = v3;
  *(a1 + 1872) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1880) = 0;
  *(a1 + 1888) = 0;
  *(a1 + 1896) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1904) = v3;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 0;
  *(a1 + 1936) = v3;
  *(a1 + 1952) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1960) = 0;
  *(a1 + 1968) = 0;
  *(a1 + 1976) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1984) = v3;
  *(a1 + 2000) = 0;
  *(a1 + 2008) = 0;
  *(a1 + 2016) = v3;
  *(a1 + 2032) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2040) = 0;
  *(a1 + 2048) = 0;
  *(a1 + 2056) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2064) = v3;
  *(a1 + 2080) = 0;
  *(a1 + 2088) = 0;
  *(a1 + 2096) = v3;
  *(a1 + 2112) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2120) = 0;
  *(a1 + 2128) = 0;
  *(a1 + 2136) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2144) = v3;
  *(a1 + 2160) = 0;
  *(a1 + 2168) = 0;
  *(a1 + 2176) = v3;
  *(a1 + 2192) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2200) = 0;
  *(a1 + 2208) = 0;
  *(a1 + 2216) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2224) = v3;
  *(a1 + 2240) = 0;
  *(a1 + 2248) = 0;
  *(a1 + 2256) = v3;
  *(a1 + 2272) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2280) = 0;
  *(a1 + 2288) = 0;
  *(a1 + 2296) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2304) = v3;
  *(a1 + 2320) = 0;
  *(a1 + 2328) = 0;
  *(a1 + 2336) = v3;
  *(a1 + 2352) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2360) = 0;
  *(a1 + 2368) = 0;
  *(a1 + 2376) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2384) = v3;
  *(a1 + 2400) = 0;
  *(a1 + 2408) = 0;
  *(a1 + 2416) = v3;
  *(a1 + 2432) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2440) = 0;
  *(a1 + 2448) = 0;
  *(a1 + 2456) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2464) = v3;
  *(a1 + 2480) = 0;
  *(a1 + 2488) = 0;
  *(a1 + 2496) = v3;
  *(a1 + 2512) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2520) = 0;
  *(a1 + 2528) = 0;
  *(a1 + 2536) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2544) = v3;
  *(a1 + 2560) = 0;
  *(a1 + 2568) = 0;
  *(a1 + 2576) = v3;
  *(a1 + 2592) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2600) = 0;
  *(a1 + 2608) = 0;
  *(a1 + 2616) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2624) = v3;
  *(a1 + 2640) = 0;
  *(a1 + 2648) = 0;
  *(a1 + 2656) = v3;
  *(a1 + 2672) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2680) = 0;
  *(a1 + 2688) = 0;
  *(a1 + 2696) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2704) = v3;
  *(a1 + 2720) = 0;
  *(a1 + 2728) = 0;
  *(a1 + 2752) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2776) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2736) = v3;
  *(a1 + 2760) = 0;
  *(a1 + 2768) = 0;
  *(a1 + 2784) = v3;
  *(a1 + 2816) = 0;
  *(a1 + 2800) = 0u;
  return result;
}

void sub_787F9C(uint64_t a1)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *a1 = 0x7FFFFFFF;
  *(a1 + 4) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  sub_5F328(a1 + 56);
  *(a1 + 96) = 0;
  sub_5F328(a1 + 104);
  *(a1 + 156) = 0u;
  *(a1 + 144) = 0x8000000080000000;
  *(a1 + 152) = -1;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 252) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 196) = -1;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1065353216;
  *(a1 + 256) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 272) = 1065353216;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 320) = 0x7FFFFFFF;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 324) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 344) = 0x7FFFFFFF;
  *(a1 + 348) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 368) = 0x7FFFFFFF;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 372) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 392) = 0x7FFFFFFF;
  *(a1 + 396) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 416) = 0x7FFFFFFF;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 420) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 440) = -1;
  v3 = 16;
  strcpy(__p, "EVRequestContext");
  sub_44F3E4(a1 + 448, __p);
}

void sub_788140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_44CCC4(v19);
  sub_44C974((v15 + 8));
  sub_44C624(v15);
  sub_44C028(v18);
  v21 = *v17;
  *v17 = 0;
  if (v21)
  {
    sub_44FF58(v17, v21);
  }

  sub_44FBAC(v16);
  sub_44FA80(v14);
  _Unwind_Resume(a1);
}

void sub_7881A0(_Unwind_Exception *a1)
{
  sub_5C010(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_7881CC(uint64_t a1)
{
  v2 = a1 + 4096;
  if ((*(a1 + 0x1FFF) & 0x80000000) == 0)
  {
    if ((*(a1 + 8167) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 8144));
    v3 = *(a1 + 8128);
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 8168));
  if (*(v2 + 4071) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = *(a1 + 8128);
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

LABEL_9:
  sub_559B98(a1 + 5416);
  sub_6E3B8((a1 + 5400));
  sub_528AB4(a1 + 3824);
  sub_528AB4(a1 + 2248);
  v4 = *(a1 + 2192);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 2064);
  if (v5)
  {
    v6 = *(a1 + 2072);
    v7 = *(a1 + 2064);
    if (v6 == v5)
    {
LABEL_22:
      *(a1 + 2072) = v5;
      operator delete(v7);
      goto LABEL_23;
    }

    while (1)
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 3));
        v8 = v6 - 6;
        if (*(v6 - 25) < 0)
        {
LABEL_20:
          operator delete(*v8);
        }
      }

      else
      {
        v8 = v6 - 6;
        if (*(v6 - 25) < 0)
        {
          goto LABEL_20;
        }
      }

      v6 = v8;
      if (v8 == v5)
      {
        v7 = *(a1 + 2064);
        goto LABEL_22;
      }
    }
  }

LABEL_23:
  v9 = *(a1 + 2024);
  if (v9)
  {
    do
    {
      v10 = *v9;
      sub_253B4((v9 + 2));
      operator delete(v9);
      v9 = v10;
    }

    while (v10);
  }

  v11 = *(a1 + 2008);
  *(a1 + 2008) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  sub_528AB4(a1 + 16);
  return a1;
}

uint64_t sub_788390(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1120;
    sub_3A9518(i - 1120);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_7883E4(void **a1, uint64_t a2, __int128 *a3, char *a4)
{
  v4 = 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 5);
  v5 = v4 + 1;
  if (v4 + 1 > 0x3A83A83A83A83ALL)
  {
    sub_1794();
  }

  if (0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 5) > v5)
  {
    v5 = 0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 5);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 5) >= 0x1D41D41D41D41DLL)
  {
    v7 = 0x3A83A83A83A83ALL;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x3A83A83A83A83ALL)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 32 * ((a1[1] - *a1) >> 5);
  sub_658D94(v17, a2, a3, *a4);
  v8 = 1120 * v4 + 1120;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 - v10;
  v12 = &v11[v17];
  if (v10 != *a1)
  {
    v13 = *a1;
    v14 = &v11[v17];
    do
    {
      v15 = sub_529850(v14, v13);
      v13 += 1120;
      v14 = v15 + 1120;
    }

    while (v13 != v10);
    do
    {
      sub_3A9518(v9);
      v9 += 1120;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v12;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_78856C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_788390(va);
  _Unwind_Resume(a1);
}

uint64_t sub_788580(void **a1, _OWORD *a2, uint64_t a3, __int128 *a4)
{
  v4 = 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 5);
  v5 = v4 + 1;
  if (v4 + 1 > 0x3A83A83A83A83ALL)
  {
    sub_1794();
  }

  if (0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 5) > v5)
  {
    v5 = 0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 5);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 5) >= 0x1D41D41D41D41DLL)
  {
    v7 = 0x3A83A83A83A83ALL;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x3A83A83A83A83ALL)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 32 * ((a1[1] - *a1) >> 5);
  sub_658C94(v17, a2, a3, a4);
  v8 = 1120 * v4 + 1120;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 - v10;
  v12 = &v11[v17];
  if (v10 != *a1)
  {
    v13 = *a1;
    v14 = &v11[v17];
    do
    {
      v15 = sub_529850(v14, v13);
      v13 += 1120;
      v14 = v15 + 1120;
    }

    while (v13 != v10);
    do
    {
      sub_3A9518(v9);
      v9 += 1120;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v12;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_788708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_788390(va);
  _Unwind_Resume(a1);
}

uint64_t sub_78871C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *a2 = 0u;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = v5;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a2 + 136) = 0u;
  v8 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v8;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a2 + 176) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = 0;
  *(a2 + 200) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = 0;
  *(a2 + 224) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a2 + 248) = 0u;
  v9 = *(a2 + 272);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a1 + 272) = v9;
  LODWORD(v9) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 280) = v9;
  v10 = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 288) = v10;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0u;
  v11 = *(a2 + 312);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 312) = v11;
  *(a2 + 320) = 0u;
  *(a2 + 312) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 352) = 0;
  *(a2 + 336) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 376) = 0;
  *(a2 + 360) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 400) = 0;
  *(a2 + 384) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 408) = 0u;
  v12 = *(a2 + 432);
  *(a2 + 424) = 0;
  *(a2 + 432) = 0;
  *(a1 + 432) = v12;
  LODWORD(v12) = *(a2 + 440);
  *(a1 + 444) = *(a2 + 444);
  *(a1 + 440) = v12;
  v13 = *(a2 + 448);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 448) = v13;
  *(a2 + 448) = 0;
  *(a2 + 456) = 0u;
  v14 = *(a2 + 472);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 472) = v14;
  *(a2 + 480) = 0u;
  *(a2 + 472) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a2 + 512) = 0;
  *(a2 + 496) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a2 + 536) = 0;
  *(a2 + 520) = 0u;
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *(a2 + 560) = 0;
  *(a2 + 544) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a2 + 584) = 0;
  *(a2 + 568) = 0u;
  v15 = *(a2 + 592);
  *(a2 + 592) = 0;
  *(a1 + 592) = v15;
  LODWORD(v15) = *(a2 + 600);
  *(a1 + 604) = *(a2 + 604);
  *(a1 + 600) = v15;
  v16 = *(a2 + 608);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 608) = v16;
  *(a2 + 608) = 0;
  *(a2 + 616) = 0u;
  v17 = *(a2 + 632);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 632) = v17;
  *(a2 + 640) = 0u;
  *(a2 + 632) = 0;
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 672) = *(a2 + 672);
  *(a2 + 672) = 0;
  *(a2 + 656) = 0u;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 688) = *(a2 + 688);
  *(a2 + 696) = 0;
  *(a2 + 680) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = 0;
  *(a2 + 704) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 736) = *(a2 + 736);
  *(a2 + 744) = 0;
  *(a2 + 728) = 0u;
  v18 = *(a2 + 752);
  *(a2 + 752) = 0;
  *(a1 + 752) = v18;
  LODWORD(v18) = *(a2 + 760);
  *(a1 + 764) = *(a2 + 764);
  *(a1 + 760) = v18;
  v19 = *(a2 + 768);
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 768) = v19;
  *(a2 + 768) = 0;
  *(a2 + 776) = 0u;
  v20 = *(a2 + 792);
  *(a1 + 808) = *(a2 + 808);
  *(a1 + 792) = v20;
  *(a2 + 800) = 0u;
  *(a2 + 792) = 0;
  *(a1 + 832) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 832) = *(a2 + 832);
  *(a2 + 832) = 0;
  *(a2 + 816) = 0u;
  *(a1 + 856) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 848) = *(a2 + 848);
  *(a2 + 856) = 0;
  *(a2 + 840) = 0u;
  *(a1 + 880) = 0;
  *(a1 + 864) = 0u;
  *(a1 + 864) = *(a2 + 864);
  *(a1 + 880) = *(a2 + 880);
  *(a2 + 880) = 0;
  *(a2 + 864) = 0u;
  *(a1 + 904) = 0;
  *(a1 + 888) = 0u;
  *(a1 + 888) = *(a2 + 888);
  *(a1 + 896) = *(a2 + 896);
  *(a2 + 904) = 0;
  *(a2 + 888) = 0u;
  v21 = *(a2 + 912);
  *(a2 + 912) = 0;
  *(a1 + 912) = v21;
  LODWORD(v21) = *(a2 + 920);
  *(a1 + 924) = *(a2 + 924);
  *(a1 + 920) = v21;
  v22 = *(a2 + 928);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 928) = v22;
  *(a2 + 928) = 0;
  *(a2 + 936) = 0u;
  v23 = *(a2 + 952);
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 952) = v23;
  *(a2 + 960) = 0u;
  *(a2 + 952) = 0;
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  *(a1 + 976) = *(a2 + 976);
  *(a1 + 992) = *(a2 + 992);
  *(a2 + 992) = 0;
  *(a2 + 976) = 0u;
  *(a1 + 1016) = 0;
  *(a1 + 1000) = 0u;
  *(a1 + 1000) = *(a2 + 1000);
  *(a1 + 1008) = *(a2 + 1008);
  *(a2 + 1016) = 0;
  *(a2 + 1000) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1024) = 0u;
  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1040) = *(a2 + 1040);
  *(a2 + 1040) = 0;
  *(a2 + 1024) = 0u;
  *(a1 + 1064) = 0;
  *(a1 + 1048) = 0u;
  *(a1 + 1048) = *(a2 + 1048);
  *(a1 + 1056) = *(a2 + 1056);
  *(a2 + 1064) = 0;
  *(a2 + 1048) = 0u;
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0u;
  *(a1 + 1072) = *(a2 + 1072);
  *(a1 + 1088) = *(a2 + 1088);
  *(a2 + 1088) = 0;
  *(a2 + 1072) = 0u;
  v24 = *(a2 + 1096);
  *(a2 + 1096) = 0;
  *(a1 + 1096) = v24;
  LODWORD(v24) = *(a2 + 1104);
  *(a1 + 1108) = *(a2 + 1108);
  *(a1 + 1104) = v24;
  v25 = *(a2 + 1112);
  *(a1 + 1128) = *(a2 + 1128);
  *(a1 + 1112) = v25;
  *(a2 + 1112) = 0;
  *(a2 + 1128) = 0;
  *(a2 + 1120) = 0;
  v26 = *(a2 + 1136);
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1136) = v26;
  *(a2 + 1152) = 0;
  *(a2 + 1144) = 0;
  *(a2 + 1136) = 0;
  *(a1 + 1160) = *(a2 + 1160);
  *(a1 + 1168) = 0;
  *(a1 + 1200) = -1;
  v27 = *(a2 + 1200);
  if (v27 != -1)
  {
    v44 = a1 + 1168;
    (off_266C7C8[v27])(&v44, a2 + 1168);
    *(a1 + 1200) = v27;
  }

  *(a1 + 1208) = *(a2 + 1208);
  v28 = *(a2 + 1216);
  *(a1 + 1232) = *(a2 + 1232);
  *(a1 + 1216) = v28;
  *(a2 + 1224) = 0u;
  *(a2 + 1216) = 0;
  *(a1 + 1240) = *(a2 + 1240);
  v29 = *(a2 + 1248);
  *(a1 + 1264) = *(a2 + 1264);
  *(a1 + 1248) = v29;
  *(a2 + 1256) = 0u;
  *(a2 + 1248) = 0;
  *(a1 + 1272) = *(a2 + 1272);
  *(a1 + 1280) = *(a2 + 1280);
  *(a1 + 1296) = 0u;
  *(a1 + 1288) = 0;
  *(a1 + 1288) = *(a2 + 1288);
  *(a1 + 1296) = *(a2 + 1296);
  *(a2 + 1304) = 0;
  *(a2 + 1288) = 0u;
  *(a1 + 1328) = 0;
  *(a1 + 1312) = 0u;
  *(a1 + 1312) = *(a2 + 1312);
  *(a1 + 1328) = *(a2 + 1328);
  *(a2 + 1328) = 0;
  *(a2 + 1312) = 0u;
  sub_55A4D0(a1 + 1336, a2 + 1336);
  sub_55A4D0(a1 + 1832, a2 + 1832);
  *(a1 + 2344) = 0;
  *(a1 + 2328) = 0u;
  *(a1 + 2328) = *(a2 + 2328);
  *(a1 + 2336) = *(a2 + 2336);
  *(a2 + 2344) = 0;
  *(a2 + 2328) = 0u;
  *(a1 + 2368) = 0;
  *(a1 + 2352) = 0u;
  *(a1 + 2352) = *(a2 + 2352);
  *(a1 + 2368) = *(a2 + 2368);
  *(a2 + 2368) = 0;
  *(a2 + 2352) = 0u;
  sub_61009C(a1 + 2376, a2 + 2376);
  *(a1 + 7176) = 0u;
  *(a1 + 7192) = 0;
  *(a1 + 7176) = *(a2 + 7176);
  *(a1 + 7184) = *(a2 + 7184);
  *(a2 + 7176) = 0u;
  *(a2 + 7192) = 0;
  v30 = *(a2 + 7200);
  *(a1 + 7208) = *(a2 + 7208);
  *(a1 + 7200) = v30;
  v31 = *(a2 + 7216);
  *(a1 + 7232) = *(a2 + 7232);
  *(a1 + 7216) = v31;
  *(a2 + 7232) = 0;
  *(a2 + 7224) = 0;
  v32 = *(a2 + 7240);
  *(a2 + 7216) = 0;
  v33 = *(a2 + 7256);
  *(a1 + 7240) = v32;
  *(a1 + 7256) = v33;
  *(a2 + 7256) = 0;
  *(a2 + 7248) = 0;
  *(a2 + 7240) = 0;
  *(a1 + 7264) = 0;
  *(a1 + 7296) = -1;
  v34 = *(a2 + 7296);
  if (v34 != -1)
  {
    v44 = a1 + 7264;
    (off_266C7C8[v34])(&v44, a2 + 7264);
    *(a1 + 7296) = v34;
  }

  *(a1 + 7304) = *(a2 + 7304);
  v35 = *(a2 + 7312);
  *(a1 + 7328) = *(a2 + 7328);
  *(a1 + 7312) = v35;
  *(a2 + 7320) = 0u;
  *(a2 + 7312) = 0;
  *(a1 + 7336) = *(a2 + 7336);
  v36 = *(a2 + 7344);
  *(a1 + 7360) = *(a2 + 7360);
  *(a1 + 7344) = v36;
  *(a2 + 7352) = 0u;
  *(a2 + 7344) = 0;
  *(a1 + 7368) = *(a2 + 7368);
  *(a1 + 7384) = 0u;
  *(a1 + 7376) = 0;
  *(a1 + 7376) = *(a2 + 7376);
  *(a1 + 7392) = *(a2 + 7392);
  *(a2 + 7392) = 0;
  *(a2 + 7376) = 0u;
  *(a1 + 7400) = 0u;
  *(a1 + 7416) = 0;
  *(a1 + 7400) = *(a2 + 7400);
  *(a1 + 7408) = *(a2 + 7408);
  *(a2 + 7400) = 0u;
  *(a2 + 7416) = 0;
  v37 = *(a2 + 7424);
  *(a1 + 7440) = *(a2 + 7440);
  *(a1 + 7424) = v37;
  *(a2 + 7424) = 0;
  *(a2 + 7432) = 0u;
  v38 = *(a2 + 7464);
  *(a1 + 7448) = *(a2 + 7448);
  *(a1 + 7464) = v38;
  *(a2 + 7456) = 0u;
  *(a2 + 7448) = 0;
  v39 = *(a2 + 7472);
  *(a1 + 7488) = *(a2 + 7488);
  *(a1 + 7472) = v39;
  *(a2 + 7488) = 0;
  *(a2 + 7472) = 0u;
  *(a1 + 7496) = 0u;
  *(a1 + 7512) = 0;
  *(a1 + 7496) = *(a2 + 7496);
  *(a1 + 7504) = *(a2 + 7504);
  *(a2 + 7496) = 0u;
  *(a2 + 7512) = 0;
  *(a1 + 7536) = 0;
  *(a1 + 7520) = 0u;
  *(a1 + 7520) = *(a2 + 7520);
  *(a1 + 7536) = *(a2 + 7536);
  *(a2 + 7536) = 0;
  *(a2 + 7520) = 0u;
  *(a1 + 7544) = 0u;
  *(a1 + 7560) = 0;
  *(a1 + 7544) = *(a2 + 7544);
  *(a1 + 7552) = *(a2 + 7552);
  *(a2 + 7544) = 0u;
  *(a2 + 7560) = 0;
  *(a1 + 7584) = 0;
  *(a1 + 7568) = 0u;
  *(a1 + 7568) = *(a2 + 7568);
  *(a1 + 7584) = *(a2 + 7584);
  *(a2 + 7584) = 0;
  *(a2 + 7568) = 0u;
  *(a1 + 7592) = 0u;
  *(a1 + 7608) = 0;
  *(a1 + 7592) = *(a2 + 7592);
  *(a1 + 7600) = *(a2 + 7600);
  *(a2 + 7592) = 0u;
  *(a2 + 7608) = 0;
  *(a1 + 7616) = *(a2 + 7616);
  *(a1 + 7632) = 0u;
  *(a1 + 7624) = 0;
  *(a1 + 7624) = *(a2 + 7624);
  *(a1 + 7632) = *(a2 + 7632);
  *(a2 + 7624) = 0u;
  *(a2 + 7640) = 0;
  *(a1 + 7664) = 0;
  *(a1 + 7648) = 0u;
  *(a1 + 7648) = *(a2 + 7648);
  *(a1 + 7664) = *(a2 + 7664);
  *(a2 + 7664) = 0;
  *(a2 + 7648) = 0u;
  *(a1 + 7672) = 0u;
  *(a1 + 7688) = 0;
  *(a1 + 7672) = *(a2 + 7672);
  *(a1 + 7680) = *(a2 + 7680);
  *(a2 + 7672) = 0u;
  *(a2 + 7688) = 0;
  *(a1 + 7712) = 0;
  *(a1 + 7696) = 0u;
  *(a1 + 7696) = *(a2 + 7696);
  *(a1 + 7712) = *(a2 + 7712);
  *(a2 + 7712) = 0;
  *(a2 + 7696) = 0u;
  v40 = *(a2 + 7720);
  *(a2 + 7720) = 0;
  *(a1 + 7720) = v40;
  LODWORD(v40) = *(a2 + 7728);
  *(a1 + 7732) = *(a2 + 7732);
  *(a1 + 7728) = v40;
  v41 = *(a2 + 7752);
  *(a1 + 7736) = *(a2 + 7736);
  *(a1 + 7752) = v41;
  *(a2 + 7736) = 0;
  *(a2 + 7744) = 0u;
  v42 = *(a2 + 7760);
  *(a1 + 7776) = *(a2 + 7776);
  *(a1 + 7760) = v42;
  *(a2 + 7768) = 0u;
  *(a2 + 7760) = 0;
  *(a1 + 7784) = 0u;
  *(a1 + 7800) = 0;
  *(a1 + 7784) = *(a2 + 7784);
  *(a1 + 7792) = *(a2 + 7792);
  *(a2 + 7784) = 0u;
  *(a2 + 7800) = 0;
  return a1;
}

double sub_78922C(uint64_t a1)
{
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  *a1 = -1;
  *(a1 + 8) = 0x7FFFFFFF;
  *(a1 + 16) = -1;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1935635296;
  *(a1 + 56) = 0;
  *(a1 + 63) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 112) = 100;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = vnegq_f64(v1);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 184) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = -1;
  *(a1 + 392) = -1;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 432) = 0;
  *(a1 + 436) = 0;
  return result;
}

uint64_t sub_7892DC(void **a1, uint64_t a2)
{
  v2 = 0x4FBCDA3AC10C9715 * ((a1[1] - *a1) >> 7);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x864B8A7DE6D1DLL)
  {
    sub_1794();
  }

  if (0x9F79B47582192E2ALL * ((a1[2] - *a1) >> 7) > v3)
  {
    v3 = 0x9F79B47582192E2ALL * ((a1[2] - *a1) >> 7);
  }

  if ((0x4FBCDA3AC10C9715 * ((a1[2] - *a1) >> 7)) >= 0x4325C53EF368ELL)
  {
    v5 = 0x864B8A7DE6D1DLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x864B8A7DE6D1DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (a1[1] - *a1) >> 7 << 7;
  sub_78871C(v6, a2);
  v7 = 7808 * v2 + 7808;
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 + v6 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = sub_78871C(v12, v11);
      v11 += 7808;
      v12 = v13 + 7808;
    }

    while (v11 != v9);
    do
    {
      sub_789448(v8);
      v8 += 7808;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t sub_789448(uint64_t a1)
{
  v2 = *(a1 + 7784);
  if (v2)
  {
    v3 = *(a1 + 7792);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_53A868(v3 - 160);
      }

      while (v3 != v2);
      v4 = *(a1 + 7784);
    }

    *(a1 + 7792) = v2;
    operator delete(v4);
  }

  sub_53A868(a1 + 7624);
  v5 = *(a1 + 7592);
  if (v5)
  {
    v6 = *(a1 + 7600);
    v7 = *(a1 + 7592);
    if (v6 != v5)
    {
      do
      {
        v8 = v6 - 1128;
        v9 = *(v6 - 8);
        if (v9 != -1)
        {
          (off_266C7F0[v9])(&v45, v6 - 1128);
        }

        *(v6 - 8) = -1;
        v6 -= 1128;
      }

      while (v8 != v5);
      v7 = *(a1 + 7592);
    }

    *(a1 + 7600) = v5;
    operator delete(v7);
  }

  v10 = *(a1 + 7568);
  if (v10)
  {
    v11 = *(a1 + 7576);
    v12 = *(a1 + 7568);
    if (v11 != v10)
    {
      do
      {
        v13 = v11 - 1128;
        v14 = *(v11 - 8);
        if (v14 != -1)
        {
          (off_266C7F0[v14])(&v46, v11 - 1128);
        }

        *(v11 - 8) = -1;
        v11 -= 1128;
      }

      while (v13 != v10);
      v12 = *(a1 + 7568);
    }

    *(a1 + 7576) = v10;
    operator delete(v12);
  }

  v15 = *(a1 + 7544);
  if (v15)
  {
    v16 = *(a1 + 7552);
    v17 = *(a1 + 7544);
    if (v16 != v15)
    {
      do
      {
        v16 = sub_3A9518(v16 - 1120);
      }

      while (v16 != v15);
      v17 = *(a1 + 7544);
    }

    *(a1 + 7552) = v15;
    operator delete(v17);
  }

  v18 = *(a1 + 7520);
  if (v18)
  {
    v19 = *(a1 + 7528);
    v20 = *(a1 + 7520);
    if (v19 != v18)
    {
      do
      {
        v19 = sub_3A9518(v19 - 1120);
      }

      while (v19 != v18);
      v20 = *(a1 + 7520);
    }

    *(a1 + 7528) = v18;
    operator delete(v20);
  }

  v21 = *(a1 + 7496);
  if (v21)
  {
    *(a1 + 7504) = v21;
    operator delete(v21);
  }

  if (*(a1 + 7495) < 0)
  {
    operator delete(*(a1 + 7472));
    if ((*(a1 + 7471) & 0x80000000) == 0)
    {
LABEL_36:
      if ((*(a1 + 7447) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_45;
    }
  }

  else if ((*(a1 + 7471) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(*(a1 + 7448));
  if ((*(a1 + 7447) & 0x80000000) == 0)
  {
LABEL_37:
    v22 = *(a1 + 7400);
    if (!v22)
    {
      goto LABEL_38;
    }

LABEL_46:
    v25 = *(a1 + 7408);
    if (v25 == v22)
    {
      *(a1 + 7408) = v22;
      operator delete(v22);
      v23 = *(a1 + 7376);
      if (v23)
      {
        goto LABEL_53;
      }
    }

    else
    {
      do
      {
        if (*(v25 - 1) < 0)
        {
          operator delete(*(v25 - 3));
        }

        v25 -= 5;
      }

      while (v25 != v22);
      v26 = *(a1 + 7400);
      *(a1 + 7408) = v22;
      operator delete(v26);
      v23 = *(a1 + 7376);
      if (v23)
      {
        goto LABEL_53;
      }
    }

LABEL_39:
    if ((*(a1 + 7367) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_57;
  }

LABEL_45:
  operator delete(*(a1 + 7424));
  v22 = *(a1 + 7400);
  if (v22)
  {
    goto LABEL_46;
  }

LABEL_38:
  v23 = *(a1 + 7376);
  if (!v23)
  {
    goto LABEL_39;
  }

LABEL_53:
  v27 = *(a1 + 7384);
  v28 = v23;
  if (v27 != v23)
  {
    do
    {
      v27 = sub_5C0F34(v27 - 816);
    }

    while (v27 != v23);
    v28 = *(a1 + 7376);
  }

  *(a1 + 7384) = v23;
  operator delete(v28);
  if ((*(a1 + 7367) & 0x80000000) == 0)
  {
LABEL_40:
    if ((*(a1 + 7335) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_58:
    operator delete(*(a1 + 7312));
    v24 = *(a1 + 7296);
    if (v24 == -1)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_57:
  operator delete(*(a1 + 7344));
  if (*(a1 + 7335) < 0)
  {
    goto LABEL_58;
  }

LABEL_41:
  v24 = *(a1 + 7296);
  if (v24 != -1)
  {
LABEL_59:
    (off_266C7A0[v24])(&v47, a1 + 7264);
  }

LABEL_60:
  *(a1 + 7296) = -1;
  if (*(a1 + 7263) < 0)
  {
    operator delete(*(a1 + 7240));
    if ((*(a1 + 7239) & 0x80000000) == 0)
    {
LABEL_62:
      v29 = *(a1 + 7176);
      if (!v29)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }
  }

  else if ((*(a1 + 7239) & 0x80000000) == 0)
  {
    goto LABEL_62;
  }

  operator delete(*(a1 + 7216));
  v29 = *(a1 + 7176);
  if (v29)
  {
LABEL_63:
    *(a1 + 7184) = v29;
    operator delete(v29);
  }

LABEL_64:
  sub_5C1688(a1 + 2376);
  sub_559E70((a1 + 1288));
  if ((*(a1 + 1271) & 0x80000000) == 0)
  {
    if ((*(a1 + 1239) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_72:
    operator delete(*(a1 + 1216));
    v30 = *(a1 + 1200);
    if (v30 == -1)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  operator delete(*(a1 + 1248));
  if (*(a1 + 1239) < 0)
  {
    goto LABEL_72;
  }

LABEL_66:
  v30 = *(a1 + 1200);
  if (v30 != -1)
  {
LABEL_73:
    (off_266C7A0[v30])(&v48, a1 + 1168);
  }

LABEL_74:
  *(a1 + 1200) = -1;
  sub_53A868(a1 + 1000);
  v31 = *(a1 + 976);
  if (v31)
  {
    v32 = *(a1 + 984);
    v33 = *(a1 + 976);
    if (v32 != v31)
    {
      do
      {
        v34 = *(v32 - 1);
        v32 -= 3;
        if (v34 < 0)
        {
          operator delete(*v32);
        }
      }

      while (v32 != v31);
      v33 = *(a1 + 976);
    }

    *(a1 + 984) = v31;
    operator delete(v33);
  }

  sub_53A868(a1 + 816);
  sub_53A868(a1 + 656);
  sub_53A868(a1 + 496);
  sub_53A868(a1 + 336);
  sub_53A868(a1 + 176);
  v35 = *(a1 + 136);
  if (v35)
  {
    v36 = *(a1 + 144);
    v37 = *(a1 + 136);
    if (v36 != v35)
    {
      do
      {
        if (*(v36 - 32) == 1)
        {
          sub_3A9518(v36 - 1152);
        }

        v36 -= 1168;
      }

      while (v36 != v35);
      v37 = *(a1 + 136);
    }

    *(a1 + 144) = v35;
    operator delete(v37);
  }

  v38 = *(a1 + 24);
  if (v38)
  {
    v39 = *(a1 + 32);
    v40 = *(a1 + 24);
    if (v39 != v38)
    {
      do
      {
        v39 -= 176;
        sub_5C17B4(v39);
      }

      while (v39 != v38);
      v40 = *(a1 + 24);
    }

    *(a1 + 32) = v38;
    operator delete(v40);
  }

  v41 = *a1;
  if (*a1)
  {
    v42 = *(a1 + 8);
    v43 = *a1;
    if (v42 != v41)
    {
      do
      {
        v42 = sub_693598(v42 - 12656);
      }

      while (v42 != v41);
      v43 = *a1;
    }

    *(a1 + 8) = v41;
    operator delete(v43);
  }

  return a1;
}

uint64_t sub_78996C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v21 = 16 * ((a1[1] - *a1) >> 4);
  sub_E67B74(v21, a2, a3);
  v7 = 176 * v3 + 176;
  v8 = *a1;
  v9 = a1[1];
  v10 = v21 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v21 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 1);
      v14 = *(v11 + 2);
      v15 = *(v11 + 3);
      *(v12 + 63) = *(v11 + 63);
      *(v12 + 32) = v14;
      *(v12 + 48) = v15;
      *(v12 + 16) = v13;
      *(v12 + 80) = 0;
      *(v12 + 88) = 0;
      *(v12 + 72) = 0;
      *(v12 + 72) = *(v11 + 9);
      *(v12 + 88) = v11[11];
      v11[9] = 0;
      v11[10] = 0;
      v11[11] = 0;
      v16 = *(v11 + 6);
      *(v12 + 112) = *(v11 + 112);
      *(v12 + 96) = v16;
      v17 = *(v11 + 15);
      *(v12 + 136) = *(v11 + 17);
      *(v12 + 120) = v17;
      *(v12 + 152) = v11[19];
      *(v12 + 160) = *(v11 + 10);
      v11[19] = 0;
      v11[20] = 0;
      v11[21] = 0;
      v11 += 22;
      v12 += 176;
    }

    while (v11 != v9);
    do
    {
      v18 = v8[19];
      if (v18)
      {
        operator delete(v18);
      }

      v19 = v8[9];
      if (v19)
      {
        v8[10] = v19;
        operator delete(v19);
      }

      v8 += 22;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_789B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_789B8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_789B8C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 176;
    v4 = *(i - 24);
    if (v4)
    {
      operator delete(v4);
    }

    v5 = *(i - 104);
    if (v5)
    {
      *(i - 96) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_789C10(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  v3 = *(a2 + 8);
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v4 = *(a2 + 32);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 32) = v4;
  v5 = *(a2 + 56);
  *(v2 + 72) = *(a2 + 72);
  *(v2 + 56) = v5;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  v6 = *(a2 + 80);
  *(v2 + 96) = *(a2 + 96);
  *(v2 + 80) = v6;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 104) = *(a2 + 104);
  *(v2 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(v2 + 128) = *(a2 + 128);
  result = *(a2 + 136);
  *(v2 + 152) = *(a2 + 152);
  *(v2 + 136) = result;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  *(v2 + 160) = *(a2 + 160);
  return result;
}

uint64_t sub_789CC8(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *a2 = 0u;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = v5;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a2 + 136) = 0u;
  v8 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v8;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a2 + 176) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = 0;
  *(a2 + 200) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = 0;
  *(a2 + 224) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a2 + 248) = 0u;
  v9 = *(a2 + 272);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a1 + 272) = v9;
  LODWORD(v9) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 280) = v9;
  v10 = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 288) = v10;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0u;
  v11 = *(a2 + 312);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 312) = v11;
  *(a2 + 320) = 0u;
  *(a2 + 312) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 352) = 0;
  *(a2 + 336) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 376) = 0;
  *(a2 + 360) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 400) = 0;
  *(a2 + 384) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 408) = 0u;
  v12 = *(a2 + 432);
  *(a2 + 424) = 0;
  *(a2 + 432) = 0;
  *(a1 + 432) = v12;
  LODWORD(v12) = *(a2 + 440);
  *(a1 + 444) = *(a2 + 444);
  *(a1 + 440) = v12;
  v13 = *(a2 + 448);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 448) = v13;
  *(a2 + 448) = 0;
  *(a2 + 456) = 0u;
  v14 = *(a2 + 472);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 472) = v14;
  *(a2 + 480) = 0u;
  *(a2 + 472) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a2 + 512) = 0;
  *(a2 + 496) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a2 + 536) = 0;
  *(a2 + 520) = 0u;
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *(a2 + 560) = 0;
  *(a2 + 544) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a2 + 584) = 0;
  *(a2 + 568) = 0u;
  v15 = *(a2 + 592);
  *(a2 + 592) = 0;
  *(a1 + 592) = v15;
  LODWORD(v15) = *(a2 + 600);
  *(a1 + 604) = *(a2 + 604);
  *(a1 + 600) = v15;
  v16 = *(a2 + 608);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 608) = v16;
  *(a2 + 608) = 0;
  *(a2 + 616) = 0u;
  v17 = *(a2 + 632);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 632) = v17;
  *(a2 + 640) = 0u;
  *(a2 + 632) = 0;
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 672) = *(a2 + 672);
  *(a2 + 672) = 0;
  *(a2 + 656) = 0u;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 688) = *(a2 + 688);
  *(a2 + 696) = 0;
  *(a2 + 680) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = 0;
  *(a2 + 704) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 736) = *(a2 + 736);
  *(a2 + 744) = 0;
  *(a2 + 728) = 0u;
  v18 = *(a2 + 752);
  *(a2 + 752) = 0;
  *(a1 + 752) = v18;
  LODWORD(v18) = *(a2 + 760);
  *(a1 + 764) = *(a2 + 764);
  *(a1 + 760) = v18;
  v19 = *(a2 + 768);
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 768) = v19;
  *(a2 + 768) = 0;
  *(a2 + 776) = 0u;
  v20 = *(a2 + 792);
  *(a1 + 808) = *(a2 + 808);
  *(a1 + 792) = v20;
  *(a2 + 800) = 0u;
  *(a2 + 792) = 0;
  *(a1 + 832) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 832) = *(a2 + 832);
  *(a2 + 832) = 0;
  *(a2 + 816) = 0u;
  *(a1 + 856) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 848) = *(a2 + 848);
  *(a2 + 856) = 0;
  *(a2 + 840) = 0u;
  *(a1 + 880) = 0;
  *(a1 + 864) = 0u;
  *(a1 + 864) = *(a2 + 864);
  *(a1 + 880) = *(a2 + 880);
  *(a2 + 880) = 0;
  *(a2 + 864) = 0u;
  *(a1 + 904) = 0;
  *(a1 + 888) = 0u;
  *(a1 + 888) = *(a2 + 888);
  *(a1 + 896) = *(a2 + 896);
  *(a2 + 904) = 0;
  *(a2 + 888) = 0u;
  v21 = *(a2 + 912);
  *(a2 + 912) = 0;
  *(a1 + 912) = v21;
  LODWORD(v21) = *(a2 + 920);
  *(a1 + 924) = *(a2 + 924);
  *(a1 + 920) = v21;
  v22 = *(a2 + 928);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 928) = v22;
  *(a2 + 928) = 0;
  *(a2 + 936) = 0u;
  v23 = *(a2 + 952);
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 952) = v23;
  *(a2 + 960) = 0u;
  *(a2 + 952) = 0;
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  *(a1 + 976) = *(a2 + 976);
  *(a1 + 992) = *(a2 + 992);
  *(a2 + 992) = 0;
  *(a2 + 976) = 0u;
  *(a1 + 1016) = 0;
  *(a1 + 1000) = 0u;
  *(a1 + 1000) = *(a2 + 1000);
  *(a1 + 1008) = *(a2 + 1008);
  *(a2 + 1016) = 0;
  *(a2 + 1000) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1024) = 0u;
  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1040) = *(a2 + 1040);
  *(a2 + 1040) = 0;
  *(a2 + 1024) = 0u;
  *(a1 + 1064) = 0;
  *(a1 + 1048) = 0u;
  *(a1 + 1048) = *(a2 + 1048);
  *(a1 + 1056) = *(a2 + 1056);
  *(a2 + 1064) = 0;
  *(a2 + 1048) = 0u;
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0u;
  *(a1 + 1072) = *(a2 + 1072);
  *(a1 + 1088) = *(a2 + 1088);
  *(a2 + 1088) = 0;
  *(a2 + 1072) = 0u;
  v24 = *(a2 + 1096);
  *(a2 + 1096) = 0;
  *(a1 + 1096) = v24;
  LODWORD(v24) = *(a2 + 1104);
  *(a1 + 1108) = *(a2 + 1108);
  *(a1 + 1104) = v24;
  v25 = *(a2 + 1112);
  *(a1 + 1128) = *(a2 + 1128);
  *(a1 + 1112) = v25;
  *(a2 + 1112) = 0;
  *(a2 + 1128) = 0;
  *(a2 + 1120) = 0;
  v26 = *(a2 + 1136);
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1136) = v26;
  *(a2 + 1152) = 0;
  *(a2 + 1144) = 0;
  *(a2 + 1136) = 0;
  *(a1 + 1160) = *(a2 + 1160);
  *(a1 + 1168) = 0;
  *(a1 + 1200) = -1;
  v27 = *(a2 + 1200);
  if (v27 != -1)
  {
    v44 = a1 + 1168;
    (off_266C7C8[v27])(&v44, a2 + 1168);
    *(a1 + 1200) = v27;
  }

  *(a1 + 1208) = *(a2 + 1208);
  v28 = *(a2 + 1216);
  *(a1 + 1232) = *(a2 + 1232);
  *(a1 + 1216) = v28;
  *(a2 + 1224) = 0u;
  *(a2 + 1216) = 0;
  *(a1 + 1240) = *(a2 + 1240);
  v29 = *(a2 + 1248);
  *(a1 + 1264) = *(a2 + 1264);
  *(a1 + 1248) = v29;
  *(a2 + 1256) = 0u;
  *(a2 + 1248) = 0;
  *(a1 + 1272) = *(a2 + 1272);
  *(a1 + 1280) = *(a2 + 1280);
  *(a1 + 1296) = 0u;
  *(a1 + 1288) = 0;
  *(a1 + 1288) = *(a2 + 1288);
  *(a1 + 1296) = *(a2 + 1296);
  *(a2 + 1304) = 0;
  *(a2 + 1288) = 0u;
  *(a1 + 1328) = 0;
  *(a1 + 1312) = 0u;
  *(a1 + 1312) = *(a2 + 1312);
  *(a1 + 1328) = *(a2 + 1328);
  *(a2 + 1328) = 0;
  *(a2 + 1312) = 0u;
  sub_55A4D0(a1 + 1336, a2 + 1336);
  sub_55A4D0(a1 + 1832, a2 + 1832);
  *(a1 + 2344) = 0;
  *(a1 + 2328) = 0u;
  *(a1 + 2328) = *(a2 + 2328);
  *(a1 + 2336) = *(a2 + 2336);
  *(a2 + 2344) = 0;
  *(a2 + 2328) = 0u;
  *(a1 + 2368) = 0;
  *(a1 + 2352) = 0u;
  *(a1 + 2352) = *(a2 + 2352);
  *(a1 + 2368) = *(a2 + 2368);
  *(a2 + 2368) = 0;
  *(a2 + 2352) = 0u;
  sub_61009C(a1 + 2376, a2 + 2376);
  *(a1 + 7176) = 0u;
  *(a1 + 7192) = 0;
  *(a1 + 7176) = *(a2 + 7176);
  *(a1 + 7184) = *(a2 + 7184);
  *(a2 + 7176) = 0u;
  *(a2 + 7192) = 0;
  v30 = *(a2 + 7200);
  *(a1 + 7208) = *(a2 + 7208);
  *(a1 + 7200) = v30;
  v31 = *(a2 + 7216);
  *(a1 + 7232) = *(a2 + 7232);
  *(a1 + 7216) = v31;
  *(a2 + 7232) = 0;
  *(a2 + 7224) = 0;
  v32 = *(a2 + 7240);
  *(a2 + 7216) = 0;
  v33 = *(a2 + 7256);
  *(a1 + 7240) = v32;
  *(a1 + 7256) = v33;
  *(a2 + 7256) = 0;
  *(a2 + 7248) = 0;
  *(a2 + 7240) = 0;
  *(a1 + 7264) = 0;
  *(a1 + 7296) = -1;
  v34 = *(a2 + 7296);
  if (v34 != -1)
  {
    v44 = a1 + 7264;
    (off_266C7C8[v34])(&v44, a2 + 7264);
    *(a1 + 7296) = v34;
  }

  *(a1 + 7304) = *(a2 + 7304);
  v35 = *(a2 + 7312);
  *(a1 + 7328) = *(a2 + 7328);
  *(a1 + 7312) = v35;
  *(a2 + 7320) = 0u;
  *(a2 + 7312) = 0;
  *(a1 + 7336) = *(a2 + 7336);
  v36 = *(a2 + 7344);
  *(a1 + 7360) = *(a2 + 7360);
  *(a1 + 7344) = v36;
  *(a2 + 7352) = 0u;
  *(a2 + 7344) = 0;
  *(a1 + 7368) = *(a2 + 7368);
  *(a1 + 7384) = 0u;
  *(a1 + 7376) = 0;
  *(a1 + 7376) = *(a2 + 7376);
  *(a1 + 7392) = *(a2 + 7392);
  *(a2 + 7392) = 0;
  *(a2 + 7376) = 0u;
  *(a1 + 7400) = 0u;
  *(a1 + 7416) = 0;
  *(a1 + 7400) = *(a2 + 7400);
  *(a1 + 7408) = *(a2 + 7408);
  *(a2 + 7400) = 0u;
  *(a2 + 7416) = 0;
  v37 = *(a2 + 7424);
  *(a1 + 7440) = *(a2 + 7440);
  *(a1 + 7424) = v37;
  *(a2 + 7424) = 0;
  *(a2 + 7432) = 0u;
  v38 = *(a2 + 7464);
  *(a1 + 7448) = *(a2 + 7448);
  *(a1 + 7464) = v38;
  *(a2 + 7456) = 0u;
  *(a2 + 7448) = 0;
  v39 = *(a2 + 7472);
  *(a1 + 7488) = *(a2 + 7488);
  *(a1 + 7472) = v39;
  *(a2 + 7488) = 0;
  *(a2 + 7472) = 0u;
  *(a1 + 7496) = 0u;
  *(a1 + 7512) = 0;
  *(a1 + 7496) = *(a2 + 7496);
  *(a1 + 7504) = *(a2 + 7504);
  *(a2 + 7496) = 0u;
  *(a2 + 7512) = 0;
  *(a1 + 7536) = 0;
  *(a1 + 7520) = 0u;
  *(a1 + 7520) = *(a2 + 7520);
  *(a1 + 7536) = *(a2 + 7536);
  *(a2 + 7536) = 0;
  *(a2 + 7520) = 0u;
  *(a1 + 7544) = 0u;
  *(a1 + 7560) = 0;
  *(a1 + 7544) = *(a2 + 7544);
  *(a1 + 7552) = *(a2 + 7552);
  *(a2 + 7544) = 0u;
  *(a2 + 7560) = 0;
  *(a1 + 7584) = 0;
  *(a1 + 7568) = 0u;
  *(a1 + 7568) = *(a2 + 7568);
  *(a1 + 7584) = *(a2 + 7584);
  *(a2 + 7584) = 0;
  *(a2 + 7568) = 0u;
  *(a1 + 7592) = 0u;
  *(a1 + 7608) = 0;
  *(a1 + 7592) = *(a2 + 7592);
  *(a1 + 7600) = *(a2 + 7600);
  *(a2 + 7592) = 0u;
  *(a2 + 7608) = 0;
  *(a1 + 7616) = *(a2 + 7616);
  *(a1 + 7632) = 0u;
  *(a1 + 7624) = 0;
  *(a1 + 7624) = *(a2 + 7624);
  *(a1 + 7632) = *(a2 + 7632);
  *(a2 + 7624) = 0u;
  *(a2 + 7640) = 0;
  *(a1 + 7664) = 0;
  *(a1 + 7648) = 0u;
  *(a1 + 7648) = *(a2 + 7648);
  *(a1 + 7664) = *(a2 + 7664);
  *(a2 + 7664) = 0;
  *(a2 + 7648) = 0u;
  *(a1 + 7672) = 0u;
  *(a1 + 7688) = 0;
  *(a1 + 7672) = *(a2 + 7672);
  *(a1 + 7680) = *(a2 + 7680);
  *(a2 + 7672) = 0u;
  *(a2 + 7688) = 0;
  *(a1 + 7712) = 0;
  *(a1 + 7696) = 0u;
  *(a1 + 7696) = *(a2 + 7696);
  *(a1 + 7712) = *(a2 + 7712);
  *(a2 + 7712) = 0;
  *(a2 + 7696) = 0u;
  v40 = *(a2 + 7720);
  *(a2 + 7720) = 0;
  *(a1 + 7720) = v40;
  LODWORD(v40) = *(a2 + 7728);
  *(a1 + 7732) = *(a2 + 7732);
  *(a1 + 7728) = v40;
  v41 = *(a2 + 7752);
  *(a1 + 7736) = *(a2 + 7736);
  *(a1 + 7752) = v41;
  *(a2 + 7736) = 0;
  *(a2 + 7744) = 0u;
  v42 = *(a2 + 7760);
  *(a1 + 7776) = *(a2 + 7776);
  *(a1 + 7760) = v42;
  *(a2 + 7768) = 0u;
  *(a2 + 7760) = 0;
  *(a1 + 7784) = 0u;
  *(a1 + 7800) = 0;
  *(a1 + 7784) = *(a2 + 7784);
  *(a1 + 7792) = *(a2 + 7792);
  *(a2 + 7784) = 0u;
  *(a2 + 7800) = 0;
  return a1;
}