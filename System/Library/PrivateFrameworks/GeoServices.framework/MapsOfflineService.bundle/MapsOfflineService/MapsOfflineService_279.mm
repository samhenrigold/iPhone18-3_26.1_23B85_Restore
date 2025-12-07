uint64_t sub_10EF4B4(uint64_t ***a1)
{
  if (*(a1 + 23) < 0)
  {
    if (a1[1] == (&dword_0 + 3) && **a1 == 28257 && *(*a1 + 2) == 121)
    {
      return 0;
    }

    if (a1[1] == dword_8 && **a1 == 0x6D61657274737075)
    {
      return 1;
    }

    v3 = a1[1];
    if (v3 != dword_10)
    {
      if (v3 == (dword_8 + 2) && **a1 == 0x657274736E776F64 && *(*a1 + 4) == 28001)
      {
        return 2;
      }

      goto LABEL_45;
    }

    v6 = *a1;
    goto LABEL_39;
  }

  v1 = *(a1 + 23);
  if (v1 <= 9)
  {
    if (v1 != 3)
    {
      if (v1 != 8 || *a1 != 0x6D61657274737075)
      {
        goto LABEL_45;
      }

      return 1;
    }

    if (*a1 != 28257 || *(a1 + 2) != 121)
    {
LABEL_45:
      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      if ((v17 & 0x80u) == 0)
      {
        v13 = v16;
      }

      else
      {
        v13 = v16[0];
      }

      if ((v17 & 0x80u) == 0)
      {
        v14 = v17;
      }

      else
      {
        v14 = v16[1];
      }

      v15 = sub_2D390(exception, v13, v14);
    }

    return 0;
  }

  if (v1 != 10)
  {
    v6 = a1;
    if (v1 != 16)
    {
      goto LABEL_45;
    }

LABEL_39:
    v9 = *v6;
    v10 = v6[1];
    if (v9 != 0x6F645F726F5F7075 || v10 != 0x6D61657274736E77)
    {
      goto LABEL_45;
    }

    return -1;
  }

  if (*a1 != 0x657274736E776F64 || *(a1 + 4) != 28001)
  {
    goto LABEL_45;
  }

  return 2;
}

void sub_10EF71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10EF74C(uint64_t *a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v1 = *(a1 + 23);
    if (v1 <= 6)
    {
      if (v1 == 4)
      {
        if (*a1 != 1347240274)
        {
          goto LABEL_51;
        }

        return 1;
      }

      goto LABEL_35;
    }

    if (v1 != 7)
    {
      if (v1 != 12)
      {
        goto LABEL_51;
      }

      if (*a1 != 0x4148435F4E525554 || *(a1 + 2) != 1279610446)
      {
        if (*a1 != 0x5F52414C55474552 || *(a1 + 2) != 1145130834)
        {
LABEL_35:
          v5 = a1;
          if (v1 != 5)
          {
            goto LABEL_51;
          }

LABEL_36:
          v8 = *v5;
          v9 = *(v5 + 4);
          if (v8 == 1162368079 && v9 == 82)
          {
            return 4;
          }

LABEL_51:
          exception = __cxa_allocate_exception(0x40uLL);
          std::operator+<char>();
          if ((v18 & 0x80u) == 0)
          {
            v14 = v17;
          }

          else
          {
            v14 = v17[0];
          }

          if ((v18 & 0x80u) == 0)
          {
            v15 = v18;
          }

          else
          {
            v15 = v17[1];
          }

          v16 = sub_2D390(exception, v14, v15);
        }

        return 3;
      }

      return 2;
    }

    if (*a1 != 1212631368 || *(a1 + 3) != 1497454408)
    {
      goto LABEL_51;
    }

    return 0;
  }

  if (a1[1] == 7 && **a1 == 1212631368 && *(*a1 + 3) == 1497454408)
  {
    return 0;
  }

  if (a1[1] == 4 && **a1 == 1347240274)
  {
    return 1;
  }

  if (a1[1] == 12 && **a1 == 0x4148435F4E525554 && *(*a1 + 8) == 1279610446)
  {
    return 2;
  }

  if (a1[1] != 12 || (**a1 == 0x5F52414C55474552 ? (v4 = *(*a1 + 8) == 1145130834) : (v4 = 0), !v4))
  {
    if (a1[1] != 5)
    {
      goto LABEL_51;
    }

    v5 = *a1;
    goto LABEL_36;
  }

  return 3;
}

void sub_10EFA14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10EFA44(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = 10;
  strcpy(__p, "max_growth");
  v6 = sub_63D34(a3, __p);
  if (v14 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *a1 = v6;
  *(a1 + 8) = 0;
  v14 = 15;
  strcpy(__p, "use_single_arcs");
  v8 = sub_5F9D0(a3, __p);
  if (v14 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 12) = v8;
  v14 = 20;
  strcpy(__p, "start_at_added_nodes");
  v10 = sub_5F9D0(a3, __p);
  if (v14 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 32) = 0;
  *(a1 + 13) = v10;
  *(a1 + 14) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v14 = 21;
  strcpy(__p, "connector_exploration");
  v12 = sub_5F5AC(a3, __p);
  sub_10EEB90((a1 + 56), v12);
}

void sub_10F01C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  v19 = *(v17 + 24);
  if (v19)
  {
    *(v16 + 64) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10F0278(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(a2 + 8);
  v5 = (v4 - *v4);
  v6 = *v5;
  if (*(a2 + 38))
  {
    if (v6 < 5)
    {
      goto LABEL_11;
    }

    v7 = v5[2];
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else if (v6 < 9 || (v7 = v5[4]) == 0)
  {
LABEL_11:
    v8 = 0;
    v9 = *(a2 + 48);
    v10 = (v9 - *v9);
    v11 = *v10;
    if (*(a2 + 78))
    {
      goto LABEL_12;
    }

LABEL_8:
    if (v11 >= 5)
    {
      v12 = v10[2];
      if (v12)
      {
        goto LABEL_14;
      }
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v8 = *(v4 + v7);
  v9 = *(a2 + 48);
  v10 = (v9 - *v9);
  v11 = *v10;
  if (!*(a2 + 78))
  {
    goto LABEL_8;
  }

LABEL_12:
  if (v11 < 9)
  {
    goto LABEL_15;
  }

  v12 = v10[4];
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_14:
  v13 = *(v9 + v12);
LABEL_16:
  v14 = v8 + 18000;
  v15 = (v8 + 18000) >> 5;
  v16 = v8 - 18000;
  if (v15 < 0x465)
  {
    v16 = v14;
  }

  v17 = v13 - v16;
  if (v17 > 18000)
  {
    v17 -= 36000;
  }

  if (v17 < -17999)
  {
    v17 += 36000;
  }

  if (fabs(v17 / 100.0) > *(a3 + 64))
  {
    return 0;
  }

  v19 = *(a2 + 40);
  v20 = (v19 - *v19);
  if (*v20 < 0x2Fu)
  {
    goto LABEL_34;
  }

  v21 = v20[23];
  if (!v21)
  {
    goto LABEL_34;
  }

  v22 = *(v19 + v21);
  if (v22 <= 0x2A)
  {
    if (((1 << v22) & 0x24810004) != 0)
    {
      v23 = 1;
      v24 = 1;
      v25 = *a3;
      v26 = *(a3 + 8);
      if (*a3 != v26)
      {
        goto LABEL_35;
      }

      goto LABEL_42;
    }

    if (((1 << v22) & 0x50400000000) != 0)
    {
      v24 = 2;
      goto LABEL_41;
    }

    if (v22 == 32)
    {
LABEL_34:
      v23 = 0;
      v24 = 3;
      v25 = *a3;
      v26 = *(a3 + 8);
      if (*a3 != v26)
      {
        goto LABEL_35;
      }

      goto LABEL_42;
    }
  }

  if (v22)
  {
    v24 = 4;
  }

  else
  {
    v24 = 0;
  }

LABEL_41:
  v23 = 1;
  v25 = *a3;
  v26 = *(a3 + 8);
  if (*a3 != v26)
  {
LABEL_35:
    while (*v25 != v24)
    {
      if (++v25 == v26)
      {
        return 0;
      }
    }
  }

LABEL_42:
  if (v25 == v26)
  {
    return 0;
  }

  if (v23 & *(a3 + 93))
  {
    return 1;
  }

  v31 = sub_3E916C(*(a1 + 10024), *(a2 + 72) & 0xFFFFFFFFFFFFFFLL);
  v32 = a2;
  v33 = sub_3E37C0(*(a1 + 10040), *(a2 + 72) & 0xFFFFFFFFFFFFFFLL);
  if (*(a1 + 10088) != 2)
  {
    v34 = 0;
    v35 = *(a1 + 10024);
    v36 = sub_36383C(v35, *(v32 + 72) & 0xFFFFFFFFFFFFFFLL);
    if (v36)
    {
      goto LABEL_48;
    }

LABEL_53:
    v43 = 0.0;
    v39 = a3;
    v40 = a4;
    if (*(a3 + 94) != 1)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v34 = sub_2BC7A8(*(a1 + 10032), v33);
  v35 = *(a1 + 10024);
  v36 = sub_36383C(v35, *(v32 + 72) & 0xFFFFFFFFFFFFFFLL);
  if (!v36)
  {
    goto LABEL_53;
  }

LABEL_48:
  v37 = &v36[-*v36];
  v38 = *v37;
  v39 = a3;
  v40 = a4;
  if (v38 >= 0xB && *(v37 + 5))
  {
    v41 = *&v36[*(v37 + 5)];
    v42 = *(v35 + 3880);
    if (!*(v35 + 3880))
    {
      goto LABEL_60;
    }

LABEL_56:
    if (v38 >= 0x11)
    {
      v44 = *(v37 + 8);
      if (v44)
      {
        v45 = &v36[v44 + *&v36[v44]];
        if (*v45 >= v42)
        {
          v46 = *&v45[2 * v42 + 2];
          if ((v46 + 1) > 1u)
          {
            v47 = v46;
LABEL_62:
            v43 = v47 / 1000.0;
            if (*(a3 + 94) != 1)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          }
        }
      }
    }

    goto LABEL_60;
  }

  v41 = 0xFFFF;
  v42 = *(v35 + 3880);
  if (*(v35 + 3880))
  {
    goto LABEL_56;
  }

LABEL_60:
  if (v41 != 0xFFFF)
  {
    v47 = v41;
    goto LABEL_62;
  }

  v43 = 0.3;
  if (*(a3 + 94) != 1)
  {
    goto LABEL_66;
  }

LABEL_65:
  if (v43 * *(v39 + 96) > v40)
  {
    return 1;
  }

LABEL_66:
  v48 = *(v39 + 88);
  v49 = *(v39 + 90);
  if (*(v39 + 92) == 1)
  {
    result = 0;
    if (v48 > v31 || v49 > v34)
    {
      return result;
    }

    return v43 >= *(v39 + 80);
  }

  result = 1;
  if (v48 > v31 && v49 > v34)
  {
    return v43 >= *(v39 + 80);
  }

  return result;
}

double sub_10F06C8(uint64_t a1, unint64_t *a2, __n128 *a3)
{
  ++*(a1 + 816);
  sub_40D8D4(a1, a2, &v39);
  if (v39)
  {
    v6 = v40;
    v7 = *(a1 + 768) + 144 * *(v40 + 8);
    v8 = a3[3];
    v9 = a3[4];
    v10 = a3[2];
    *(v7 + 24) = a3[1];
    *(v7 + 72) = v9;
    *(v7 + 56) = v8;
    *(v7 + 40) = v10;
    v12 = a3[6];
    v11 = a3[7];
    v13 = a3[8].n128_u64[0];
    *(v7 + 88) = a3[5];
    *(v7 + 136) = v13;
    *(v7 + 120) = v11;
    *(v7 + 104) = v12;
    *(v7 + 8) = *a3;
    v14 = *(v6 + 8);
    v15 = (a1 + 824);
  }

  else
  {
    v16 = 954437177 * ((*(a1 + 776) - *(a1 + 768)) >> 4);
    sub_40D9F8(a1, a2, &v41);
    v17 = v42;
    v18 = *(v41 + 8);
    if (v43 == 1)
    {
      *(v18 + 16 * v42) = *a2;
    }

    *(v18 + 16 * v17 + 8) = v16;
    v19 = *(a1 + 776);
    v20 = *(a1 + 784);
    if (v19 >= v20)
    {
      v28 = *(a1 + 768);
      v29 = 0x8E38E38E38E38E39 * ((v19 - v28) >> 4) + 1;
      if (v29 > 0x1C71C71C71C71C7)
      {
        sub_1794();
      }

      v30 = 0x8E38E38E38E38E39 * ((v20 - v28) >> 4);
      if (2 * v30 > v29)
      {
        v29 = 2 * v30;
      }

      if (v30 >= 0xE38E38E38E38E3)
      {
        v31 = 0x1C71C71C71C71C7;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        if (v31 <= 0x1C71C71C71C71C7)
        {
          operator new();
        }

        sub_1808();
      }

      v32 = a3[4];
      v33 = 16 * ((v19 - v28) >> 4);
      *(v33 + 88) = a3[5];
      v34 = a3[7];
      *(v33 + 104) = a3[6];
      *(v33 + 120) = v34;
      v35 = *a3;
      *(v33 + 24) = a3[1];
      v36 = a3[3];
      *(v33 + 40) = a3[2];
      *(v33 + 56) = v36;
      *(v33 + 72) = v32;
      *v33 = *a2;
      *(v33 + 136) = a3[8].n128_u64[0];
      v27 = v33 + 144;
      v37 = (v33 - (v19 - v28));
      *(v33 + 8) = v35;
      memcpy(v37, v28, v19 - v28);
      *(a1 + 768) = v37;
      *(a1 + 776) = v27;
      *(a1 + 784) = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v19 = *a2;
      *(v19 + 8) = *a3;
      v21 = a3[1];
      v22 = a3[2];
      v23 = a3[3];
      *(v19 + 72) = a3[4];
      *(v19 + 56) = v23;
      *(v19 + 40) = v22;
      *(v19 + 24) = v21;
      v24 = a3[5];
      v25 = a3[6];
      v26 = a3[7];
      *(v19 + 136) = a3[8].n128_u64[0];
      *(v19 + 120) = v26;
      *(v19 + 104) = v25;
      *(v19 + 88) = v24;
      v27 = v19 + 144;
    }

    *(a1 + 776) = v27;
    v15 = (a1 + 824);
    v14 = v16;
  }

  *&result = sub_10F1FF0(v15, v14, a3).n128_u64[0];
  return result;
}

uint64_t sub_10F0978(uint64_t a1, unint64_t *a2, __n128 *a3)
{
  sub_40D8D4(a1, a2, &v44);
  if (v44)
  {
    v6 = v45;
    v7 = *(a1 + 768) + 144 * *(v45 + 8);
    v9 = *(v7 + 8);
    v8 = v7 + 8;
    v10 = a3->n128_u32[0] >= v9;
    if (a3->n128_u32[0] == v9)
    {
      v11 = a3->n128_i32[1];
      v12 = *(v8 + 4);
      if (v11 == v12)
      {
        if (a3->n128_u64[1] >= *(v8 + 8))
        {
          return 0;
        }
      }

      else if (v11 >= v12)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    ++*(a1 + 816);
    *v8 = *a3;
    v26 = a3[1];
    v27 = a3[2];
    v28 = a3[4];
    *(v8 + 48) = a3[3];
    *(v8 + 64) = v28;
    *(v8 + 16) = v26;
    *(v8 + 32) = v27;
    v29 = a3[5];
    v30 = a3[6];
    v31 = a3[7];
    *(v8 + 128) = a3[8].n128_u64[0];
    *(v8 + 96) = v30;
    *(v8 + 112) = v31;
    *(v8 + 80) = v29;
    v32 = *(v6 + 8);
    v33 = (a1 + 824);
  }

  else
  {
    ++*(a1 + 816);
    v14 = 954437177 * ((*(a1 + 776) - *(a1 + 768)) >> 4);
    sub_40D9F8(a1, a2, &v46);
    v15 = v47;
    v16 = *(v46 + 8);
    if (v48 == 1)
    {
      *(v16 + 16 * v47) = *a2;
    }

    *(v16 + 16 * v15 + 8) = v14;
    v17 = *(a1 + 776);
    v18 = *(a1 + 784);
    if (v17 >= v18)
    {
      v34 = *(a1 + 768);
      v35 = 0x8E38E38E38E38E39 * ((v17 - v34) >> 4) + 1;
      if (v35 > 0x1C71C71C71C71C7)
      {
        sub_1794();
      }

      v36 = 0x8E38E38E38E38E39 * ((v18 - v34) >> 4);
      if (2 * v36 > v35)
      {
        v35 = 2 * v36;
      }

      if (v36 >= 0xE38E38E38E38E3)
      {
        v37 = 0x1C71C71C71C71C7;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        if (v37 <= 0x1C71C71C71C71C7)
        {
          operator new();
        }

        sub_1808();
      }

      v38 = a3[4];
      v39 = 16 * ((v17 - v34) >> 4);
      *(v39 + 88) = a3[5];
      v40 = a3[7];
      *(v39 + 104) = a3[6];
      *(v39 + 120) = v40;
      v41 = *a3;
      *(v39 + 24) = a3[1];
      v42 = a3[3];
      *(v39 + 40) = a3[2];
      *(v39 + 56) = v42;
      *(v39 + 72) = v38;
      *v39 = *a2;
      *(v39 + 136) = a3[8].n128_u64[0];
      v25 = v39 + 144;
      v43 = (v39 - (v17 - v34));
      *(v39 + 8) = v41;
      memcpy(v43, v34, v17 - v34);
      *(a1 + 768) = v43;
      *(a1 + 776) = v25;
      *(a1 + 784) = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v17 = *a2;
      *(v17 + 8) = *a3;
      v19 = a3[1];
      v20 = a3[2];
      v21 = a3[3];
      *(v17 + 72) = a3[4];
      *(v17 + 56) = v21;
      *(v17 + 40) = v20;
      *(v17 + 24) = v19;
      v22 = a3[5];
      v23 = a3[6];
      v24 = a3[7];
      *(v17 + 136) = a3[8].n128_u64[0];
      *(v17 + 120) = v24;
      *(v17 + 104) = v23;
      *(v17 + 88) = v22;
      v25 = v17 + 144;
    }

    *(a1 + 776) = v25;
    v33 = (a1 + 824);
    v32 = v14;
  }

  sub_10F1FF0(v33, v32, a3);
  return 1;
}

BOOL sub_10F0C70(void *a1, int a2)
{
  if (*(*a1 + 2) != 1)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = sub_10DF6C4(a1[2]);
  v6 = sub_4C1A94(v4[1253], v5);
  v7 = v4[1254];
  v8 = sub_3E37C0(v4[1255], *(v5 + 32) & 0xFFFFFFFFFFFFFFLL);
  v39 = 0;
  v40 = 0;
  v9 = sub_2BC6DC(v7, v8, &v39);
  v10 = sub_10DF6C4(a1[2]);
  v11 = sub_4C1A94(v4[1253], v10 + 40);
  v12 = v4[1254];
  v13 = sub_3E37C0(v4[1255], *(v10 + 72) & 0xFFFFFFFFFFFFFFLL);
  v39 = 0;
  v40 = 0;
  v14 = sub_2BC6DC(v12, v13, &v39);
  result = 0;
  v18 = *&v6 > -1 && ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v6 - 1) < 0xFFFFFFFFFFFFFLL || (*&v6 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (v18 && v6 > 0.0)
  {
    result = 0;
    v19 = *&v11 <= -1 || ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
    v20 = v19 && (*&v11 - 1) >= 0xFFFFFFFFFFFFFLL;
    v21 = !v20 || (*&v11 & 0x7FFFFFFFFFFFFFFFLL) == 0;
    if (v21 && v11 > 0.0)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_55;
        }

        result = 0;
        v24 = *&v9 > -1 && ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v9 - 1) < 0xFFFFFFFFFFFFFLL || (*&v9 & 0x7FFFFFFFFFFFFFFFLL) == 0;
        if (v24 && v9 > 0.0)
        {
          if (v9 > *(*a1 + 16))
          {
            return 0;
          }

          goto LABEL_55;
        }
      }

      else
      {
        result = 0;
        v27 = *&v14 > -1 && ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v14 - 1) < 0xFFFFFFFFFFFFFLL || (*&v14 & 0x7FFFFFFFFFFFFFFFLL) == 0;
        if (v27 && v14 > 0.0)
        {
          if (v14 > *(*a1 + 16))
          {
            return 0;
          }

LABEL_55:
          v31 = (*&v9 <= -1 || ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v9 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v9 & 0x7FFFFFFFFFFFFFFFLL) != 0 || v9 <= 0.0;
          v32 = v6 / v9;
          if (v31)
          {
            v32 = 1.0;
          }

          v36 = (*&v14 <= -1 || ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v14 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v14 & 0x7FFFFFFFFFFFFFFFLL) != 0 || v14 <= 0.0;
          v37 = v11 / v14;
          if (v36)
          {
            v37 = 1.0;
          }

          v38 = *(*a1 + 8);
          if (a2)
          {
            if (v32 > v38)
            {
              return v37 <= v38;
            }
          }

          else if (v32 > v38)
          {
            return v37 > v38;
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10F0F30(uint64_t a1)
{
  *a1 = &unk_2290750;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_2290750;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_2290750;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_2290750;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_2290750;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = &unk_2290750;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = &unk_2290750;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = &unk_2290750;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2290750;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = &unk_2290750;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_2290750;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 528) = &unk_2290750;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 576) = &unk_2290750;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 624) = &unk_2290750;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 672) = &unk_2290750;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 720) = &unk_2290750;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 804) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 760) = 0u;
  sub_10F10C0((a1 + 824), 2u);
  return a1;
}

void sub_10F1074(_Unwind_Exception *a1)
{
  v3 = v1[99];
  if (v3)
  {
    v1[100] = v3;
    operator delete(v3);
    v4 = v1[96];
    if (!v4)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = v1[96];
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v4;
  operator delete(v4);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

size_t *sub_10F10C0(size_t *a1, unsigned int a2)
{
  *(a1 + 12) = 0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  sub_428E0(a1 + 3, a2);
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) <= 0x7E)
  {
    operator new();
  }

  return a1;
}

void sub_10F1184(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_21E2018(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10F11A8(uint64_t a1)
{
  *a1 = &unk_2290750;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_2290750;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_2290750;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_2290750;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_2290750;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = &unk_2290750;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = &unk_2290750;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = &unk_2290750;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2290750;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = &unk_2290750;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_2290750;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 528) = &unk_2290750;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 576) = &unk_2290750;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 624) = &unk_2290750;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 672) = &unk_2290750;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 720) = &unk_2290750;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 804) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 760) = 0u;
  sub_40D5C8((a1 + 824), 2u);
  return a1;
}

void sub_10F12EC(_Unwind_Exception *a1)
{
  v3 = v1[99];
  if (v3)
  {
    v1[100] = v3;
    operator delete(v3);
    v4 = v1[96];
    if (!v4)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = v1[96];
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v4;
  operator delete(v4);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

void *sub_10F1338(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_F8A300(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_40D5C8(v5 + 103, a2);
  if (0xAAAAAAAAAAAAAAABLL * ((a1[98] - a1[96]) >> 3) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_10F1450(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

void sub_10F14B0(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a2;
  v9 = *a1;
  v10 = (a1[1] - *a1) >> 2;
  if (v10 <= a2)
  {
    v11 = a2 + 1;
    v36 = -1;
    if (v11 <= v10)
    {
      if (v11 < v10)
      {
        a1[1] = v9 + 4 * v11;
      }
    }

    else
    {
      v12 = a4;
      sub_569AC(a1, v11 - v10, &v36);
      a4 = v12;
      v9 = *a1;
    }
  }

  v13 = (a1 + 6);
  v15 = a1[7];
  v14 = a1[8];
  if (v15 >= v14)
  {
    v35 = a3;
    v17 = *v13;
    v18 = v15 - *v13;
    v19 = v18 >> 2;
    v20 = (v18 >> 2) + 1;
    if (v20 >> 62)
    {
      sub_1794();
    }

    v21 = a4;
    v22 = v14 - v17;
    if (v22 >> 1 > v20)
    {
      v20 = v22 >> 1;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v20;
    }

    if (v23)
    {
      if (!(v23 >> 62))
      {
        operator new();
      }

LABEL_34:
      sub_1808();
    }

    *(4 * v19) = *(v9 + 4 * v8);
    v16 = 4 * v19 + 4;
    memcpy(0, v17, v18);
    a1[6] = 0;
    a1[7] = v16;
    a1[8] = 0;
    if (v17)
    {
      operator delete(v17);
    }

    a4 = v21;
    a3 = v35;
  }

  else
  {
    *v15 = *(v9 + 4 * v8);
    v16 = (v15 + 4);
  }

  v24 = a1[3];
  a1[7] = v16;
  v25 = a1[4];
  v26 = a1[5];
  v27 = v25 - v24;
  v28 = (v25 - v24) >> 4;
  *(v9 + 4 * v8) = v28;
  if (v25 < v26)
  {
    *v25 = a3;
    *(v25 + 1) = a4;
    v29 = (v25 + 16);
    goto LABEL_33;
  }

  v30 = v28 + 1;
  if ((v28 + 1) >> 60)
  {
    sub_1794();
  }

  v31 = v26 - v24;
  if (v31 >> 3 > v30)
  {
    v30 = v31 >> 3;
  }

  if (v31 >= 0x7FFFFFFFFFFFFFF0)
  {
    v32 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v32 = v30;
  }

  if (v32)
  {
    if (!(v32 >> 60))
    {
      operator new();
    }

    goto LABEL_34;
  }

  v33 = (16 * v28);
  *v33 = a3;
  v33[1] = a4;
  v29 = 16 * v28 + 16;
  memcpy(0, v24, v27);
  a1[3] = 0;
  a1[4] = v29;
  a1[5] = 0;
  if (v24)
  {
    operator delete(v24);
  }

LABEL_33:
  a1[4] = v29;
  v34 = ((v29 - a1[3]) >> 4) - 1;
  *a5 = a1 + 3;
  *(a5 + 8) = v13;
  *(a5 + 16) = v34;
}

void sub_10F1724(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = 0;
  ++*(a1 + 816);
  v7 = *a2;
  v8 = 265 * ((~v7 + (v7 << 21)) ^ ((~v7 + (v7 << 21)) >> 24));
  v9 = 2147483649u * ((21 * (v8 ^ (v8 >> 14))) ^ ((21 * (v8 ^ (v8 >> 14))) >> 28));
  v10 = (a1 + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(*v10 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_6:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_9;
    }

    v6 += 8;
    v11 = v6 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    if (*(v17 + 8 * v18) == v7)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  if (v12 == v18)
  {
LABEL_9:
    v19 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 776) - *(a1 + 768)) >> 3);
    sub_F8B0C4(a1, a2, &v38);
    v20 = v39;
    v21 = *(v38 + 8);
    if (v40 == 1)
    {
      *(v21 + 8 * v39) = *a2;
    }

    *(v21 + 8 * v20 + 4) = v19;
    v22 = *(a1 + 776);
    v23 = *(a1 + 784);
    if (v22 >= v23)
    {
      v25 = *(a1 + 768);
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v25) >> 3) + 1;
      if (v26 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      v27 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v25) >> 3);
      if (2 * v27 > v26)
      {
        v26 = 2 * v27;
      }

      if (v27 >= 0x555555555555555)
      {
        v28 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        if (v28 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1808();
      }

      v33 = 8 * ((v22 - v25) >> 3);
      *v33 = *a2;
      *(v33 + 8) = *a3;
      v24 = v33 + 24;
      if (v25 != v22)
      {
        v34 = v25;
        v35 = 8 * ((v22 - v25) >> 3) - (v22 - v25);
        do
        {
          v36 = *v34;
          *(v35 + 16) = v34[2];
          *v35 = v36;
          v35 += 24;
          v34 += 3;
        }

        while (v34 != v22);
      }

      *(a1 + 768) = 8 * ((v22 - v25) >> 3) - (v22 - v25);
      *(a1 + 776) = v24;
      *(a1 + 784) = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v22 = *a2;
      *(v22 + 2) = *a3;
      v24 = (v22 + 6);
    }

    *(a1 + 776) = v24;
    v37 = *(a1 + 848);
    if (v19 >= ((*(a1 + 856) - v37) >> 2) || *(v37 + 4 * v19) == -1)
    {
      sub_40E0E8((a1 + 824), v19, a3);
    }

    else
    {
      sub_40E27C((a1 + 824), v19, a3);
    }

    return;
  }

  v29 = v17 + 8 * v18;
  v30 = *(a1 + 768) + 24 * *(v29 + 4);
  *(v30 + 8) = *a3;
  *(v30 + 16) |= a3[1];
  v31 = *(v29 + 4);
  v32 = *(a1 + 848);
  if (v31 >= (*(a1 + 856) - v32) >> 2 || *(v32 + 4 * v31) == -1)
  {

    sub_40E0E8((a1 + 824), v31, a3);
  }

  else
  {

    sub_40E27C((a1 + 824), v31, a3);
  }
}

uint64_t sub_10F1AD8(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = 0;
  v7 = *a2;
  v8 = 265 * ((~v7 + (v7 << 21)) ^ ((~v7 + (v7 << 21)) >> 24));
  v9 = 2147483649u * ((21 * (v8 ^ (v8 >> 14))) ^ ((21 * (v8 ^ (v8 >> 14))) >> 28));
  v10 = (a1 + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(*v10 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_6:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_9;
    }

    v6 += 8;
    v11 = v6 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    if (*(v17 + 8 * v18) == v7)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  if (v12 == v18)
  {
LABEL_9:
    ++*(a1 + 816);
    v19 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 776) - *(a1 + 768)) >> 3);
    sub_F8B0C4(a1, a2, &v45);
    v20 = v46;
    v21 = *(v45 + 8);
    if (v47 == 1)
    {
      *(v21 + 8 * v46) = *a2;
    }

    *(v21 + 8 * v20 + 4) = v19;
    v22 = *(a1 + 776);
    v23 = *(a1 + 784);
    if (v22 >= v23)
    {
      v25 = *(a1 + 768);
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v25) >> 3) + 1;
      if (v26 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      v27 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v25) >> 3);
      if (2 * v27 > v26)
      {
        v26 = 2 * v27;
      }

      if (v27 >= 0x555555555555555)
      {
        v28 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        if (v28 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1808();
      }

      v38 = 8 * ((v22 - v25) >> 3);
      *v38 = *a2;
      *(v38 + 8) = *a3;
      v24 = v38 + 24;
      if (v25 != v22)
      {
        v39 = v25;
        v40 = 8 * ((v22 - v25) >> 3) - (v22 - v25);
        do
        {
          v41 = *v39;
          *(v40 + 16) = v39[2];
          *v40 = v41;
          v40 += 24;
          v39 += 3;
        }

        while (v39 != v22);
      }

      *(a1 + 768) = 8 * ((v22 - v25) >> 3) - (v22 - v25);
      *(a1 + 776) = v24;
      *(a1 + 784) = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v22 = *a2;
      *(v22 + 2) = *a3;
      v24 = (v22 + 6);
    }

    *(a1 + 776) = v24;
    v42 = *(a1 + 848);
    if (v19 < ((*(a1 + 856) - v42) >> 2) && *(v42 + 4 * v19) != -1)
    {
      v37 = (a1 + 824);
      LODWORD(v35) = v19;
      goto LABEL_34;
    }

    v43 = (a1 + 824);
    LODWORD(v35) = v19;
    goto LABEL_36;
  }

  v29 = v17 + 8 * v18;
  v31 = *(v29 + 4);
  v30 = (v29 + 4);
  v32 = *(a1 + 768) + 24 * v31;
  v34 = *(v32 + 8);
  v33 = (v32 + 8);
  if (*a3 < v34)
  {
    ++*(a1 + 816);
    *v33 = *a3;
    v33[1] |= a3[1];
    v35 = *v30;
    v36 = *(a1 + 848);
    if (v35 < (*(a1 + 856) - v36) >> 2 && *(v36 + 4 * v35) != -1)
    {
      v37 = (a1 + 824);
LABEL_34:
      sub_40E27C(v37, v35, a3);
      return 1;
    }

    v43 = (a1 + 824);
LABEL_36:
    sub_40E0E8(v43, v35, a3);
    return 1;
  }

  return 0;
}

uint64_t sub_10F1E64(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v4 = a2[1];
  v3 = a2[2];
  v5 = *a1 + 40;
  v6 = *a2;
  while (1)
  {
    v9 = *(v5 + 32);
    LODWORD(v21) = v9;
    BYTE6(v21) = BYTE6(v9);
    WORD2(v21) = WORD2(v9);
    if (sub_10E2DA0(v6, &v21))
    {
      goto LABEL_5;
    }

    if (*(v5 + 38))
    {
      v10 = 24;
    }

    else
    {
      v10 = 16;
    }

    v11 = *(v5 + v10);
    if (!v11)
    {
      v7 = 0.0;
      goto LABEL_4;
    }

    v12 = (v11 - *v11);
    v13 = *v12;
    if (v13 >= 0xB && v12[5])
    {
      v14 = *(v11 + v12[5]);
      v15 = *(*(v4 + 10024) + 3880);
      if (!*(*(v4 + 10024) + 3880))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v14 = 0xFFFF;
      v15 = *(*(v4 + 10024) + 3880);
      if (!*(*(v4 + 10024) + 3880))
      {
        goto LABEL_20;
      }
    }

    if (v13 >= 0x11)
    {
      v16 = v12[8];
      if (v16)
      {
        v17 = (v11 + v16 + *(v11 + v16));
        if (*v17 >= v15)
        {
          v18 = *(v17 + v15 + 1);
          if ((v18 + 1) > 1u)
          {
            v19 = v18;
            goto LABEL_22;
          }
        }
      }
    }

LABEL_20:
    if (v14 != 0xFFFF)
    {
      v19 = v14;
LABEL_22:
      v7 = v19 / 1000.0;
      goto LABEL_4;
    }

    v7 = 0.3;
LABEL_4:
    if (v7 > *(v3 + 64))
    {
      return 1;
    }

LABEL_5:
    v8 = v5 + 56;
    v5 += 96;
    if (v8 == v2)
    {
      return 0;
    }
  }
}

__n128 sub_10F1FF0(uint64_t *a1, unsigned int a2, __n128 *a3)
{
  v3 = a1[3];
  if (a2 >= ((a1[4] - v3) >> 2) || (v4 = *(v3 + 4 * a2), v4 == -1))
  {
    sub_10F2250(a1, a2, a3);
    return result;
  }

  v5 = *a1 + 24 * v4;
  v7 = *(v5 + 8);
  v6 = *(v5 + 12);
  v8 = *(v5 + 16);
  result = *a3;
  *(v5 + 8) = *a3;
  if (a3->n128_u32[0] == v7)
  {
    v10 = a3->n128_i32[1];
    if (v10 == v6)
    {
      if (a3->n128_u64[1] >= v8)
      {
        goto LABEL_21;
      }

      goto LABEL_9;
    }

    if (v10 >= v6)
    {
LABEL_21:
      v29 = (4 * v4) | 1;
      v30 = *(a1 + 12);
      if (v29 >= v30)
      {
        return result;
      }

      v31 = 4 * v4;
      while (1)
      {
        v32 = v31 + 5;
        if (v32 >= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v32;
        }

        if (v32 <= v29)
        {
          return result;
        }

        v34 = *a1;
        v35 = v4;
        v36 = *a1 + 24 * v4;
        v38 = *(v36 + 8);
        v37 = *(v36 + 12);
        v39 = *(v36 + 16);
        v40 = (*a1 + 24 * v29 + 16);
        v4 = -1;
        do
        {
          v41 = *(v40 - 2);
          if (v41 == v38)
          {
            v42 = *(v40 - 1);
            if (v42 == v37)
            {
              v42 = v37;
              if (*v40 < v39)
              {
                goto LABEL_28;
              }
            }

            else if (v42 < v37)
            {
              goto LABEL_28;
            }
          }

          else if (v41 < v38)
          {
            v42 = *(v40 - 1);
LABEL_28:
            v39 = *v40;
            v37 = v42;
            v38 = *(v40 - 2);
            v4 = v29;
          }

          ++v29;
          v40 += 3;
        }

        while (v29 < v33);
        if (v4 < v30)
        {
          v43 = v34 + 24 * v4;
          v44 = 24 * v35;
          v45 = v34 + v44;
          v46 = *v43;
          *v43 = *v45;
          *v45 = v46;
          result = *(v43 + 8);
          *(v43 + 8) = *(v45 + 8);
          *(v45 + 8) = result;
          v47 = *(*a1 + 24 * v4);
          v48 = a1[3];
          v49 = *(*a1 + v44);
          LODWORD(v44) = *(v48 + 4 * v47);
          *(v48 + 4 * v47) = *(v48 + 4 * v49);
          *(v48 + 4 * v49) = v44;
          v31 = 4 * v4;
          v29 = (4 * v4) | 1;
          v30 = *(a1 + 12);
          if (v29 < v30)
          {
            continue;
          }
        }

        return result;
      }
    }
  }

  else if (a3->n128_u32[0] >= v7)
  {
    goto LABEL_21;
  }

LABEL_9:
  if (!v4)
  {
    return result;
  }

  v11 = *a1;
  while (1)
  {
    v17 = v4 - 1;
    v18 = (v4 - 1) >> 2;
    v19 = v11 + 24 * v18;
    v20 = (v19 + 8);
    v21 = *(v19 + 8);
    v22 = v11 + 24 * v4;
    v24 = *(v22 + 8);
    v23 = (v22 + 8);
    v25 = v21 >= v24;
    if (v21 == v24)
    {
      break;
    }

    if (!v25)
    {
      return result;
    }

LABEL_13:
    v12 = *v22;
    *v22 = *v19;
    *v19 = v12;
    result = *v23;
    *v23 = *v20;
    *v20 = result;
    v11 = *a1;
    v13 = *(*a1 + 24 * v4);
    v14 = a1[3];
    v15 = *(*a1 + 24 * v18);
    v16 = *(v14 + 4 * v13);
    *(v14 + 4 * v13) = *(v14 + 4 * v15);
    *(v14 + 4 * v15) = v16;
    v4 = v17 >> 2;
    if (v17 < 4)
    {
      return result;
    }
  }

  v26 = *(v19 + 12);
  v27 = *(v22 + 12);
  v28 = v26 < v27;
  if (v26 == v27)
  {
    v28 = *(v19 + 16) < *(v22 + 16);
  }

  if (!v28)
  {
    goto LABEL_13;
  }

  return result;
}

void sub_10F2250(uint64_t *a1, unsigned int a2, __int128 *a3)
{
  v6 = a2;
  v8 = a1[3];
  v9 = a1[4];
  v7 = a1 + 3;
  v10 = v9 - v8;
  v11 = (v9 - v8) >> 2;
  if (v11 <= a2)
  {
    do
    {
      v14 = (v10 >> 1) | 1;
      if (v11 <= v10 >> 1)
      {
        sub_42CC4(v7, v14 - v11);
        v8 = a1[3];
        v9 = a1[4];
        v10 = v9 - v8;
        v15 = (v9 - v8) >> 2;
        if (v11 < v15)
        {
LABEL_12:
          memset((v8 + 4 * v11), 255, v10 - 4 * v11);
        }
      }

      else if (v14 >= v11)
      {
        v10 = v9 - v8;
        v15 = (v9 - v8) >> 2;
        if (v11 < v15)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v9 = v8 + 4 * v14;
        a1[4] = v9;
        v10 = 4 * v14;
        v15 = (4 * v14) >> 2;
        if (v11 < v15)
        {
          goto LABEL_12;
        }
      }

      v11 = v15;
    }

    while (v15 <= v6);
  }

  v34 = a2;
  v35 = *a3;
  sub_10F2428(a1, &v34);
  v12 = *(a1 + 12);
  *(a1[3] + 4 * v6) = v12;
  *(a1 + 12) = v12 + 1;
  if (v12)
  {
    v13 = *a1;
    do
    {
      v22 = v12 - 1;
      v23 = (v12 - 1) >> 2;
      v24 = (v13 + 24 * v23);
      v25 = (v24 + 2);
      v26 = v24[2];
      v27 = (v13 + 24 * v12);
      v29 = v27[2];
      v28 = (v27 + 2);
      v30 = v26 >= v29;
      if (v26 == v29)
      {
        v31 = v24[3];
        v32 = v27[3];
        v33 = v31 < v32;
        if (v31 == v32)
        {
          v33 = *(v24 + 2) < *(v27 + 2);
        }

        if (v33)
        {
          return;
        }
      }

      else if (!v30)
      {
        return;
      }

      v16 = *v27;
      *v27 = *v24;
      *v24 = v16;
      v17 = *v28;
      *v28 = *v25;
      *v25 = v17;
      v13 = *a1;
      v18 = *(*a1 + 24 * v12);
      v19 = a1[3];
      v20 = *(*a1 + 24 * v23);
      v21 = *(v19 + 4 * v18);
      *(v19 + 4 * v18) = *(v19 + 4 * v20);
      *(v19 + 4 * v20) = v21;
      v12 = v22 >> 2;
    }

    while (v22 > 3);
  }
}

void sub_10F2428(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
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
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 8 * ((v3 - *a1) >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = 24 * v8 + 24;
  v13 = 24 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

unsigned int **sub_10F2574(unsigned int **result)
{
  v1 = *result;
  result[3][**result] = -1;
  v2 = *(result + 12);
  *(result + 12) = v2 - 1;
  if (v2 != 1)
  {
    v3 = v1 + 24 * (v2 - 1);
    *v1 = *v3;
    *(v1 + 8) = *(v3 + 8);
    v4 = *result;
    result[3][**result] = 0;
    v5 = *(result + 12);
    if (v5 >= 2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 1;
      while (1)
      {
        v9 = v6 + 5;
        if (v9 >= v5)
        {
          v10 = v5;
        }

        else
        {
          v10 = v9;
        }

        if (v9 <= v8)
        {
          break;
        }

        v11 = v7;
        v12 = v4 + 24 * v7;
        v14 = *(v12 + 8);
        v13 = *(v12 + 12);
        v15 = *(v12 + 16);
        v16 = (v4 + 24 * v8 + 16);
        v7 = -1;
        do
        {
          v17 = *(v16 - 2);
          if (v17 == v14)
          {
            v18 = *(v16 - 1);
            if (v18 == v13)
            {
              v18 = v13;
              if (*v16 < v15)
              {
                goto LABEL_9;
              }
            }

            else if (v18 < v13)
            {
              goto LABEL_9;
            }
          }

          else if (v17 < v14)
          {
            v18 = *(v16 - 1);
LABEL_9:
            v15 = *v16;
            v13 = v18;
            v14 = *(v16 - 2);
            v7 = v8;
          }

          ++v8;
          v16 += 3;
        }

        while (v8 < v10);
        if (v7 < v5)
        {
          v19 = (v4 + 24 * v7);
          v20 = 6 * v11;
          v21 = (v4 + v20 * 4);
          v22 = *v19;
          *v19 = *v21;
          *v21 = v22;
          v23 = *(v19 + 2);
          *(v19 + 2) = *(v21 + 2);
          *(v21 + 2) = v23;
          v4 = *result;
          v24 = (*result)[6 * v7];
          v25 = result[3];
          v26 = (*result)[v20];
          v27 = v25[v24];
          v25[v24] = v25[v26];
          v25[v26] = v27;
          v6 = 4 * v7;
          v8 = (4 * v7) | 1;
          v5 = *(result + 12);
          if (v8 < v5)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  result[1] -= 6;
  return result;
}

void sub_10F26F8()
{
  byte_27C277F = 3;
  LODWORD(qword_27C2768) = 5136193;
  byte_27C2797 = 3;
  LODWORD(qword_27C2780) = 5136194;
  byte_27C27AF = 3;
  LODWORD(qword_27C2798) = 5136195;
  byte_27C27C7 = 15;
  strcpy(&qword_27C27B0, "vehicle_mass_kg");
  byte_27C27DF = 21;
  strcpy(&xmmword_27C27C8, "vehicle_cargo_mass_kg");
  byte_27C27F7 = 19;
  strcpy(&qword_27C27E0, "vehicle_aux_power_w");
  byte_27C280F = 15;
  strcpy(&qword_27C27F8, "dcdc_efficiency");
  strcpy(&qword_27C2810, "drive_train_efficiency");
  HIBYTE(word_27C2826) = 22;
  operator new();
}

void sub_10F28D4(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C2826) < 0)
  {
    sub_21E7F84();
  }

  sub_21E7F90();
  _Unwind_Resume(a1);
}

uint64_t sub_10F28F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a7;
  v36 = a7;
  v34 = sub_F98E1C(a6, *(a1 + 60));
  if (a2)
  {
    v16 = sub_3068E4(a7);
    v17 = *v16;
    v18 = v16[1];
    if (*v16 != v18)
    {
      v19 = v16;
      while (1)
      {
        v20 = *(v17 + 104);
        v21 = *(v17 + 160);
        v39 = *(v17 + 144);
        v40 = v21;
        v41 = *(v17 + 176);
        v42 = *(v17 + 192);
        v22 = *(v17 + 128);
        v37 = *(v17 + 112);
        v38 = v22;
        if (v20 == v34 && sub_F71798(&v37, a3))
        {
          break;
        }

        v17 += 200;
        if (v17 == v18)
        {
          v17 = v18;
          break;
        }
      }

      v18 = v19[1];
    }

    if (v17 == v18 || (v23 = *v17, *v17 == -1))
    {
      v24 = sub_10E2C8C(a7);
      v45 = v34;
      v44 = 0;
      v43[0] = &v44;
      v43[1] = &v45;
      v43[2] = a3;
      sub_10F3998(v24, v43, &v37);
      if (*(&v37 + 1) == *(v24 + 456) + 200 * *(v24 + 248))
      {
        v23 = -1;
      }

      else
      {
        v23 = **(&v37 + 1);
      }
    }
  }

  else
  {
    v23 = sub_10E0980(a7, &v34);
    if (v23 == -1)
    {
      goto LABEL_41;
    }
  }

  v25 = sub_10E2C7C(a7);
  v26 = *(v25 + 96);
  if (v23 >= ((*(v25 + 104) - v26) >> 2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v33 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v27 = v25;
  v28 = *(v26 + 4 * v23);
  if (!*(a1 + 72))
  {
    *&v37 = &v36;
    *(&v37 + 1) = a5;
    *&v38 = &v35;
    if (v28 != 0xFFFFFFFFLL)
    {
      while (!sub_10F3234(&v37, (*(v27 + 120) + 176 * v28)))
      {
        v28 = *(*(v27 + 144) + 4 * v28);
        if (v28 == -1)
        {
          goto LABEL_41;
        }
      }

      if (a4)
      {
        result = sub_10E2C7C(a7);
        v30 = *(v27 + 120) + 176 * v28;
        goto LABEL_42;
      }
    }

LABEL_41:
    result = sub_10E2C7C(a7);
    v30 = 0;
    goto LABEL_42;
  }

  if (a4)
  {
    *&v37 = a1;
    *(&v37 + 1) = a6;
    *&v38 = &v36;
    *(&v38 + 1) = a5;
    v29 = 0xFFFFFFFFLL;
    *&v39 = &v35;
    if (v28 != 0xFFFFFFFFLL)
    {
      v29 = 0xFFFFFFFFLL;
      while (!sub_10F3634(&v37, (*(v27 + 120) + 176 * v28)))
      {
        v28 = *(*(v27 + 144) + 4 * v28);
        if (v28 == -1)
        {
          goto LABEL_35;
        }
      }

LABEL_34:
      v29 = v28;
    }
  }

  else
  {
    *&v37 = a1;
    *(&v37 + 1) = a6;
    *&v38 = &v36;
    v29 = 0xFFFFFFFFLL;
    if (v28 != 0xFFFFFFFFLL)
    {
      v29 = 0xFFFFFFFFLL;
      while (!sub_10F3800(&v37, (*(v27 + 120) + 176 * v28)))
      {
        v28 = *(*(v27 + 144) + 4 * v28);
        if (v28 == -1)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_34;
    }
  }

LABEL_35:
  if (v29 == 0xFFFFFFFFLL)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(v27 + 120) + 176 * v29;
  }

  result = sub_10E2C7C(a7);
LABEL_42:
  *a8 = result;
  *(a8 + 8) = v23;
  *(a8 + 16) = v30;
  *(a8 + 24) = 0;
  return result;
}

uint64_t sub_10F2C1C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a7;
  v36 = a7;
  v34 = sub_F94B9C(a6, *(a1 + 60));
  if (a2)
  {
    v16 = sub_3068E4(a7);
    v17 = *v16;
    v18 = v16[1];
    if (*v16 != v18)
    {
      v19 = v16;
      while (1)
      {
        v20 = *(v17 + 104);
        v21 = *(v17 + 160);
        v39 = *(v17 + 144);
        v40 = v21;
        v41 = *(v17 + 176);
        v42 = *(v17 + 192);
        v22 = *(v17 + 128);
        v37 = *(v17 + 112);
        v38 = v22;
        if (v20 == v34 && sub_F71798(&v37, a3))
        {
          break;
        }

        v17 += 200;
        if (v17 == v18)
        {
          v17 = v18;
          break;
        }
      }

      v18 = v19[1];
    }

    if (v17 == v18 || (v23 = *v17, *v17 == -1))
    {
      v24 = sub_10E2C8C(a7);
      v45 = v34;
      v44 = 0;
      v43[0] = &v44;
      v43[1] = &v45;
      v43[2] = a3;
      sub_10F3998(v24, v43, &v37);
      if (*(&v37 + 1) == *(v24 + 456) + 200 * *(v24 + 248))
      {
        v23 = -1;
      }

      else
      {
        v23 = **(&v37 + 1);
      }
    }
  }

  else
  {
    v23 = sub_10E0980(a7, &v34);
    if (v23 == -1)
    {
      goto LABEL_41;
    }
  }

  v25 = sub_10E2C7C(a7);
  v26 = *(v25 + 96);
  if (v23 >= ((*(v25 + 104) - v26) >> 2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v33 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v27 = v25;
  v28 = *(v26 + 4 * v23);
  if (!*(a1 + 72))
  {
    *&v37 = &v36;
    *(&v37 + 1) = a5;
    *&v38 = &v35;
    if (v28 != 0xFFFFFFFFLL)
    {
      while (!sub_10F3234(&v37, (*(v27 + 120) + 176 * v28)))
      {
        v28 = *(*(v27 + 144) + 4 * v28);
        if (v28 == -1)
        {
          goto LABEL_41;
        }
      }

      if (a4)
      {
        result = sub_10E2C7C(a7);
        v30 = *(v27 + 120) + 176 * v28;
        goto LABEL_42;
      }
    }

LABEL_41:
    result = sub_10E2C7C(a7);
    v30 = 0;
    goto LABEL_42;
  }

  if (a4)
  {
    *&v37 = a1;
    *(&v37 + 1) = a6;
    *&v38 = &v36;
    *(&v38 + 1) = a5;
    v29 = 0xFFFFFFFFLL;
    *&v39 = &v35;
    if (v28 != 0xFFFFFFFFLL)
    {
      v29 = 0xFFFFFFFFLL;
      while (!sub_10F3634(&v37, (*(v27 + 120) + 176 * v28)))
      {
        v28 = *(*(v27 + 144) + 4 * v28);
        if (v28 == -1)
        {
          goto LABEL_35;
        }
      }

LABEL_34:
      v29 = v28;
    }
  }

  else
  {
    *&v37 = a1;
    *(&v37 + 1) = a6;
    *&v38 = &v36;
    v29 = 0xFFFFFFFFLL;
    if (v28 != 0xFFFFFFFFLL)
    {
      v29 = 0xFFFFFFFFLL;
      while (!sub_10F3800(&v37, (*(v27 + 120) + 176 * v28)))
      {
        v28 = *(*(v27 + 144) + 4 * v28);
        if (v28 == -1)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_34;
    }
  }

LABEL_35:
  if (v29 == 0xFFFFFFFFLL)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(v27 + 120) + 176 * v29;
  }

  result = sub_10E2C7C(a7);
LABEL_42:
  *a8 = result;
  *(a8 + 8) = v23;
  *(a8 + 16) = v30;
  *(a8 + 24) = 0;
  return result;
}

uint64_t sub_10F2F44@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = sub_F98E1C(a4, *(a1 + 64));
  if (a2)
  {
    v10 = sub_10E2C84(a5);
    v11 = *v10;
    v12 = v10[1];
    if (*v10 != v12)
    {
      v13 = v10;
      while (1)
      {
        v14 = *(v11 + 8);
        v15 = *(v11 + 64);
        v21[2] = *(v11 + 48);
        v21[3] = v15;
        v21[4] = *(v11 + 80);
        v22 = *(v11 + 96);
        v16 = *(v11 + 32);
        v21[0] = *(v11 + 16);
        v21[1] = v16;
        if (v14 == v20 && sub_F71798(v21, a3))
        {
          break;
        }

        v11 += 200;
        if (v11 == v12)
        {
          v11 = v12;
          break;
        }
      }

      v12 = v13[1];
    }

    if (v11 == v12 || (v17 = *v11, *v11 == -1))
    {
      v18 = sub_10E2C8C(a5);
      v25 = v20;
      v24 = 1;
      v23[0] = &v24;
      v23[1] = &v25;
      v23[2] = a3;
      sub_10F3998(v18, v23, v21);
      if (*(&v21[0] + 1) == *(v18 + 456) + 200 * *(v18 + 248))
      {
        v17 = -1;
      }

      else
      {
        v17 = **(&v21[0] + 1);
      }
    }
  }

  else
  {
    v17 = sub_10E0980(a5, &v20);
  }

  result = sub_10E2C7C(a5);
  *a6 = result;
  *(a6 + 8) = v17;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  return result;
}

uint64_t sub_10F30BC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = sub_F94B9C(a4, *(a1 + 64));
  if (a2)
  {
    v10 = sub_10E2C84(a5);
    v11 = *v10;
    v12 = v10[1];
    if (*v10 != v12)
    {
      v13 = v10;
      while (1)
      {
        v14 = *(v11 + 8);
        v15 = *(v11 + 64);
        v21[2] = *(v11 + 48);
        v21[3] = v15;
        v21[4] = *(v11 + 80);
        v22 = *(v11 + 96);
        v16 = *(v11 + 32);
        v21[0] = *(v11 + 16);
        v21[1] = v16;
        if (v14 == v20 && sub_F71798(v21, a3))
        {
          break;
        }

        v11 += 200;
        if (v11 == v12)
        {
          v11 = v12;
          break;
        }
      }

      v12 = v13[1];
    }

    if (v11 == v12 || (v17 = *v11, *v11 == -1))
    {
      v18 = sub_10E2C8C(a5);
      v25 = v20;
      v24 = 1;
      v23[0] = &v24;
      v23[1] = &v25;
      v23[2] = a3;
      sub_10F3998(v18, v23, v21);
      if (*(&v21[0] + 1) == *(v18 + 456) + 200 * *(v18 + 248))
      {
        v17 = -1;
      }

      else
      {
        v17 = **(&v21[0] + 1);
      }
    }
  }

  else
  {
    v17 = sub_10E0980(a5, &v20);
  }

  result = sub_10E2C7C(a5);
  *a6 = result;
  *(a6 + 8) = v17;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  return result;
}

BOOL sub_10F3234(uint64_t a1, unsigned int *a2)
{
  if (sub_10DF6A4(a2))
  {
    return 0;
  }

  v5 = *a1;
  v14 = sub_3F80(a2);
  v13[0] = &v14;
  v6 = sub_10E2C8C(*v5);
  if (sub_10F3510(v6, v13))
  {
    goto LABEL_4;
  }

  v10 = sub_10E2C84(*v5);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (*v10 != v12)
  {
    while (*v11 != *v13[0])
    {
      v11 += 50;
      if (v11 == v12)
      {
        return 0;
      }
    }

LABEL_4:
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    v9 = sub_3F80(a2);
    sub_10F332C(v7, v9, v13);
    return sub_F71798(v8, v13);
  }

  return 0;
}

void *sub_10F332C@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10E2C8C(*a1);
  v7 = v6[57];
  v8 = v6[31];
  v9 = v7 + 200 * v8;
  if (v8)
  {
    v10 = 200 * v8;
    while (sub_1106280((v6 + 32), v7) || v6[29] && sub_1106280((v6 + 4), v7))
    {
      v7 += 200;
      v10 -= 200;
      if (!v10)
      {
        v7 = v9;
        break;
      }
    }
  }

  v11 = sub_10E2C8C(*a1);
  v12 = *(v11 + 456) + 200 * *(v11 + 248);
  while (v7 != v12 && *v7 != a2)
  {
    do
    {
      v7 += 200;
    }

    while (v7 != v9 && (sub_1106280((v6 + 32), v7) || v6[29] && sub_1106280((v6 + 4), v7)));
  }

  result = sub_10E2C8C(*a1);
  if (v7 != result[57] + 200 * result[31])
  {
    goto LABEL_23;
  }

  v7 = *sub_10E2C84(*a1);
  v14 = sub_10E2C84(*a1);
  v15 = *(v14 + 8);
  if (v7 != v15)
  {
    while (*v7 != a2)
    {
      v7 += 200;
      if (v7 == v15)
      {
        v7 = *(v14 + 8);
        break;
      }
    }
  }

  result = sub_10E2C84(*a1);
  if (v7 == result[1])
  {
    *a3 = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0x3FF0000000000000;
    *(a3 + 48) = 1;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    *(a3 + 72) = 2359296000;
    *(a3 + 79) = 0;
  }

  else
  {
LABEL_23:
    v16 = *(v7 + 32);
    *a3 = *(v7 + 16);
    *(a3 + 16) = v16;
    v17 = *(v7 + 48);
    v18 = *(v7 + 64);
    v19 = *(v7 + 80);
    *(a3 + 80) = *(v7 + 96);
    *(a3 + 48) = v18;
    *(a3 + 64) = v19;
    *(a3 + 32) = v17;
  }

  return result;
}

BOOL sub_10F3510(void *a1, _DWORD **a2)
{
  v4 = a1[57];
  v5 = a1[31];
  v6 = (v4 + 200 * v5);
  if (!v5)
  {
    return 0;
  }

  v7 = 200 * v5;
  while (sub_1106280((a1 + 32), v4) || a1[29] && sub_1106280((a1 + 4), v4))
  {
    v4 += 200;
    v7 -= 200;
    if (!v7)
    {
      v4 = v6;
      break;
    }
  }

  v8 = v4;
  v9 = a1[57] + 200 * a1[31];
  if (v8 == v9)
  {
    return 0;
  }

  v10 = *a2;
  while (1)
  {
    result = *v8 == *v10;
    if (*v8 == *v10)
    {
      break;
    }

    do
    {
      v8 += 50;
    }

    while (v8 != v6 && (sub_1106280((a1 + 32), v8) || a1[29] && sub_1106280((a1 + 4), v8)));
    if (v8 == v9)
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_10F3634(void *a1, unsigned int *a2)
{
  if (!sub_10DF6A4(a2))
  {
    return 0;
  }

  v4 = sub_10DF6C4(a2);
  v5 = *(*a1 + 72);
  v6 = *(v5 + 40);
  if (*(v4 + 32) != v6)
  {
    return 0;
  }

  if (*(v4 + 36) != WORD2(v6) || *(v4 + 38) != BYTE6(v6))
  {
    return 0;
  }

  v7 = *(v5 + 80);
  if (*(v4 + 72) != v7)
  {
    return 0;
  }

  if (*(v4 + 76) != WORD2(v7) || *(v4 + 78) != BYTE6(v7))
  {
    return 0;
  }

  if (*(v5 + 88) != *(v4 + 80))
  {
    return 0;
  }

  v8 = *(v5 + 96) ^ *(v4 + 88);
  if ((v8 & 3) != 0 || ((*(v5 + 92) ^ *(v4 + 84)) & 0x7FFF) != 0)
  {
    return 0;
  }

  v9 = *(v5 + 94);
  if ((v8 & 0x7C) != 0 || v9 != *(v4 + 86))
  {
    return 0;
  }

  v12 = a1[2];
  v21 = sub_3F80(a2);
  v20[0] = &v21;
  v13 = sub_10E2C8C(*v12);
  if (sub_10F3510(v13, v20))
  {
    goto LABEL_18;
  }

  v17 = sub_10E2C84(*v12);
  v18 = *v17;
  v19 = *(v17 + 8);
  if (*v17 == v19)
  {
    return 0;
  }

  while (*v18 != *v20[0])
  {
    v18 += 50;
    if (v18 == v19)
    {
      return 0;
    }
  }

LABEL_18:
  v15 = a1[3];
  v14 = a1[4];
  v16 = sub_3F80(a2);
  sub_10F332C(v14, v16, v20);
  return sub_F71798(v15, v20);
}

BOOL sub_10F3800(void *a1, unsigned int *a2)
{
  result = sub_10DF6A4(a2);
  if (result)
  {
    v5 = sub_10DF6C4(a2);
    v6 = *(*a1 + 72);
    v7 = *(v6 + 40);
    if (*(v5 + 32) == v7)
    {
      v8 = v5;
      result = 0;
      if (*(v8 + 36) == WORD2(v7) && *(v8 + 38) == BYTE6(v7))
      {
        v9 = *(v6 + 80);
        if (*(v8 + 72) != v9)
        {
          return 0;
        }

        result = 0;
        if (*(v8 + 76) == WORD2(v9) && *(v8 + 78) == BYTE6(v9))
        {
          if (*(v6 + 88) != *(v8 + 80))
          {
            return 0;
          }

          v10 = *(v6 + 96) ^ *(v8 + 88);
          if ((v10 & 3) != 0 || ((*(v6 + 92) ^ *(v8 + 84)) & 0x7FFF) != 0)
          {
            return 0;
          }

          v11 = *(v8 + 86);
          v12 = *(v6 + 94);
          if ((v10 & 0x7C) != 0 || v12 != v11)
          {
            return 0;
          }

          v14 = a1[2];
          v23 = sub_3F80(a2);
          v22 = &v23;
          v15 = sub_10E2C8C(*v14);
          if (sub_10F3510(v15, &v22))
          {
            return 0;
          }

          v16 = sub_10E2C84(*v14);
          v17 = v16[1];
          if (*v16 == v17)
          {
            return 1;
          }

          else
          {
            v18 = *v22;
            v19 = *v16 + 200;
            do
            {
              v20 = *(v19 - 200);
              result = v20 != v18;
              v21 = v20 == v18 || v19 == v17;
              v19 += 200;
            }

            while (!v21);
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10F3998@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = result;
  v6 = *(result + 456);
  v7 = *(result + 248);
  v8 = v6 + 200 * v7;
  v23 = a3;
  if (v7)
  {
    v9 = 200 * v7;
    while (1)
    {
      result = sub_1106280((v4 + 32), v6);
      if ((result & 1) == 0)
      {
        if (!v4[29])
        {
          break;
        }

        result = sub_1106280((v4 + 4), v6);
        if (!result)
        {
          break;
        }
      }

      v6 += 200;
      v9 -= 200;
      if (!v9)
      {
        v6 = v8;
        break;
      }
    }

    v10 = v6;
    v11 = v4[57] + 200 * v4[31];
    if (v10 != v11)
    {
      v12 = *a2;
      v13 = *(a2 + 8);
      v14 = *(a2 + 16);
      do
      {
        v15 = 104;
        if (*v12)
        {
          v15 = 8;
        }

        v16 = *(v10 + v15);
        if (*v12)
        {
          v17 = 16;
        }

        else
        {
          v17 = 112;
        }

        v18 = v10 + v17;
        v19 = *(v18 + 16);
        v24[0] = *v18;
        v24[1] = v19;
        v20 = *(v18 + 32);
        v21 = *(v18 + 48);
        v22 = *(v18 + 64);
        v25 = *(v18 + 80);
        v24[3] = v21;
        v24[4] = v22;
        v24[2] = v20;
        if (v16 == *v13)
        {
          result = sub_F71798(v24, v14);
          if (result)
          {
            break;
          }
        }

        while (1)
        {
          v10 += 200;
          if (v10 == v8)
          {
            break;
          }

          result = sub_1106280((v4 + 32), v10);
          if ((result & 1) == 0)
          {
            if (!v4[29])
            {
              break;
            }

            result = sub_1106280((v4 + 4), v10);
            if (!result)
            {
              break;
            }
          }
        }
      }

      while (v10 != v11);
    }
  }

  else
  {
    v10 = *(result + 456);
  }

  *v23 = v4;
  v23[1] = v10;
  v23[2] = v8;
  return result;
}

void sub_10F3B38()
{
  byte_27C2887 = 3;
  LODWORD(qword_27C2870) = 5136193;
  byte_27C289F = 3;
  LODWORD(qword_27C2888) = 5136194;
  byte_27C28B7 = 3;
  LODWORD(qword_27C28A0) = 5136195;
  byte_27C28CF = 15;
  strcpy(&qword_27C28B8, "vehicle_mass_kg");
  byte_27C28E7 = 21;
  strcpy(&xmmword_27C28D0, "vehicle_cargo_mass_kg");
  byte_27C28FF = 19;
  strcpy(&qword_27C28E8, "vehicle_aux_power_w");
  byte_27C2917 = 15;
  strcpy(&qword_27C2900, "dcdc_efficiency");
  strcpy(&qword_27C2918, "drive_train_efficiency");
  HIBYTE(word_27C292E) = 22;
  operator new();
}

void sub_10F3D14(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C292E) < 0)
  {
    sub_21E8060();
  }

  sub_21E806C();
  _Unwind_Resume(a1);
}

uint64_t sub_10F3D34(uint64_t a1, void *a2)
{
  v9 = 7;
  strcpy(__p, "enabled");
  v4 = sub_5F9D0(a2, __p);
  if (v9 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  *(a1 + 8) = vnegq_f64(v6);
  *(a1 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 32) = 257;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (v4)
  {
    v9 = 15;
    strcpy(__p, "search_radius_m");
    *(a1 + 8) = sub_64514();
    if (v9 < 0)
    {
      operator delete(*__p);
    }

    v9 = 16;
    strcpy(__p, "plateau_length_m");
    *(a1 + 16) = sub_64514();
    if (v9 < 0)
    {
      operator delete(*__p);
    }

    v9 = 16;
    strcpy(__p, "advance_length_m");
    *(a1 + 24) = sub_64514();
    if (v9 < 0)
    {
      operator delete(*__p);
    }

    v9 = 17;
    strcpy(__p, "ignore_slip_roads");
    *(a1 + 32) = sub_5F9D0(a2, __p);
    if (v9 < 0)
    {
      operator delete(*__p);
    }

    operator new();
  }

  return a1;
}

void sub_10F4040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10F4508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10F4550(char *a1, void *a2)
{
  v7 = 13;
  strcpy(__p, "add_all_paths");
  v3 = sub_5F9D0(a2, __p);
  if (v7 < 0)
  {
    v4 = v3;
    operator delete(__p[0]);
    *a1 = v4;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator new();
  }

  *a1 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(a1 + 1) = 0x3FF0000000000000;
  *(a1 + 4) = 0;
  *(a1 + 11) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 6) = 16843009;
  *(a1 + 2) = xmmword_22AFB20;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  *(a1 + 4) = xmmword_22AFB30;
  *(a1 + 20) = 0x7FFFFFFF;
  *(a1 + 11) = 0x7FFFFFFFFFFFFFFFLL;
  return a1;
}

void sub_10F4738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10F475C(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v6[7] = 14;
  strcpy(__p, "check_path_set");
  v3 = sub_5F9D0(a2, __p);
  if ((v6[7] & 0x80000000) != 0)
  {
    v4 = v3;
    operator delete(__p[0]);
    v3 = v4;
  }

  *(a1 + 16) = v3;
  operator new();
}

void sub_10F4CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10F4CF4(uint64_t a1, void *a2)
{
  v14 = 6;
  strcpy(__p, "enable");
  v4 = sub_5F9D0(a2, __p);
  if (v14 < 0)
  {
    v6 = v4;
    operator delete(__p[0]);
    v7 = v6;
    *a1 = v6;
    *(a1 + 8) = 0;
    v5 = (a1 + 8);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (!v7)
    {
      return a1;
    }
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = 0;
    v5 = (a1 + 8);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (!v4)
    {
      return a1;
    }
  }

  v14 = 5;
  strcpy(__p, "modes");
  v8 = sub_5F680(a2, __p);
  if (v14 < 0)
  {
    v9 = v8;
    operator delete(__p[0]);
    v8 = v9;
  }

  v10 = *v8;
  if (v10 != v8[1])
  {
    if (*(v10 + 8) == 5)
    {
      v11 = *v10;
      if (*(a1 + 16) < *(a1 + 24))
      {
        sub_10F475C(*(a1 + 16), v11);
      }

      sub_1102514(v5, v11);
    }

    sub_5AF20();
  }

  return a1;
}

void sub_10F4E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v18 = *v16;
  if (*v16)
  {
    *(v15 + 16) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10F4EA0(uint64_t a1, void *a2)
{
  BYTE7(v13) = 6;
  strcpy(__p, "enable");
  v4 = sub_5F9D0(a2, __p);
  if (SBYTE7(v13) < 0)
  {
    v5 = v4;
    operator delete(__p[0]);
    v4 = v5;
  }

  *a1 = v4;
  *(a1 + 4) = 0x1400000032;
  *(a1 + 12) = 30;
  *(a1 + 16) = xmmword_22AFB40;
  *(a1 + 32) = 0;
  *(a1 + 40) = xmmword_22AFB50;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 56) = _Q0;
  *(a1 + 72) = _Q0;
  *(a1 + 88) = _Q0;
  *(a1 + 104) = 0x3FF0000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 16843009;
  *(a1 + 128) = xmmword_22AFB20;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = xmmword_22AFB30;
  *(a1 + 176) = 0x7FFFFFFF;
  *(a1 + 184) = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    BYTE7(v13) = 10;
    strcpy(__p, "num_rounds");
    *(a1 + 4) = sub_353010(a2, __p);
    if (SBYTE7(v13) < 0)
    {
      operator delete(__p[0]);
    }

    operator new();
  }

  return a1;
}

void sub_10F54F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10F554C(uint64_t a1, void *a2)
{
  v9 = 15;
  strcpy(__p, "ignore_closures");
  v4 = sub_5F9D0(a2, __p);
  if (v9 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v9 = 19;
  strcpy(__p, "familiar_arc_factor");
  v6 = sub_63D34(a2, __p);
  if (v9 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 8) = v6;
  operator new();
}

void sub_10F56F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10F5720(uint64_t a1, void *a2)
{
  v11 = 6;
  strcpy(__p, "enable");
  v4 = sub_5F9D0(a2, __p);
  if (v11 < 0)
  {
    v7 = v4;
    operator delete(__p[0]);
    v8 = v7;
    *a1 = v7;
    *(a1 + 8) = 0;
    v5 = (a1 + 8);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (!v8)
    {
      return a1;
    }
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = 0;
    v5 = (a1 + 8);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (!v4)
    {
      return a1;
    }
  }

  v11 = 6;
  strcpy(__p, "rounds");
  v9 = sub_5F680(a2, __p);
  sub_10F586C(v9, v5);
  if ((v11 & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(__p[0]);
  return a1;
}

void sub_10F5828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v18 = *v16;
  if (*v16)
  {
    *(v15 + 16) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10F586C(uint64_t *a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) + ((a1[1] - *a1) >> 4);
  if (0xAAAAAAAAAAAAAAABLL * ((a2[2] - *a2) >> 3) < v2)
  {
    if (v2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v3 = *a1;
  if (*a1 != a1[1])
  {
    v4 = a2[1];
    if (v4 < a2[2])
    {
      if (*(v3 + 8) == 5)
      {
        sub_10F554C(v4, *v3);
      }

      sub_5AF20();
    }

    sub_1102DC0(a2, v3);
  }
}

uint64_t sub_10F59D0(uint64_t a1, void *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  *(a1 + 8) = vnegq_f64(v3);
  *(a1 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 32) = 0;
  *(a1 + 32) = 257;
  *(a1 + 56) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 88) = 16843009;
  *(a1 + 96) = xmmword_22AFB20;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = xmmword_22AFB30;
  *(a1 + 144) = 0x7FFFFFFF;
  *(a1 + 152) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 196) = 0x1400000032;
  *(a1 + 204) = 30;
  *(a1 + 208) = xmmword_22AFB40;
  *(a1 + 232) = xmmword_22AFB50;
  __asm { FMOV            V3.2D, #1.0 }

  *(a1 + 248) = _Q3;
  *(a1 + 264) = 0x3FF0000000000000;
  *(a1 + 272) = _Q3;
  *(a1 + 288) = _Q3;
  *(a1 + 312) = 16843009;
  *(a1 + 320) = xmmword_22AFB20;
  *(a1 + 336) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = xmmword_22AFB30;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 368) = 0x7FFFFFFF;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  v13 = 6;
  strcpy(__p, "enable");
  v9 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v10 = v9;
    operator delete(__p[0]);
    v9 = v10;
  }

  *(a1 + 416) = v9;
  *(a1 + 417) = 0;
  *(a1 + 419) = 0;
  *(a1 + 447) = 8;
  strcpy((a1 + 424), "standard");
  *(a1 + 471) = 8;
  strcpy((a1 + 448), "standard");
  *(a1 + 472) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 480) = -1;
  if (v9)
  {
    operator new();
  }

  return a1;
}

void sub_10F6300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v24 + 471) < 0)
  {
    operator delete(*v26);
  }

  if (*(v24 + 447) < 0)
  {
    operator delete(*v25);
  }

  v30 = *(v28 + 200);
  if (v30)
  {
    *(v24 + 400) = v30;
    operator delete(v30);
    v31 = *v27;
    if (!*v27)
    {
LABEL_9:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v31 = *v27;
    if (!*v27)
    {
      goto LABEL_9;
    }
  }

  *(v24 + 176) = v31;
  operator delete(v31);
  _Unwind_Resume(exception_object);
}

void sub_10F6400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    JUMPOUT(0x10F63C4);
  }

  JUMPOUT(0x10F63C8);
}

void sub_10F6418(void *a1, uint64_t *a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  *a1 = a2;
  v7 = (a1 + 1);
  v8 = sub_1014AF0(a6);
  sub_F8FE74(v7, a2, v8);
}

void sub_10F6A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  v33 = *(v26 + 11848);
  if (v33)
  {
    *(v26 + 11856) = v33;
    operator delete(v33);
    v34 = *(v26 + 11824);
    if (!v34)
    {
LABEL_3:
      v35 = *(v26 + 11800);
      if (!v35)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v34 = *(v26 + 11824);
    if (!v34)
    {
      goto LABEL_3;
    }
  }

  *(v26 + 11832) = v34;
  operator delete(v34);
  v35 = *(v26 + 11800);
  if (!v35)
  {
LABEL_4:
    sub_360988(v26 + v27);
    sub_360988(v26 + 10264);
    v36 = *(v26 + 10240);
    if (!v36)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(v26 + 11808) = v35;
  operator delete(v35);
  sub_360988(v26 + v27);
  sub_360988(v26 + 10264);
  v36 = *(v26 + 10240);
  if (!v36)
  {
LABEL_5:
    v37 = *v30;
    if (!*v30)
    {
LABEL_7:
      sub_21DB4B4(v26 + v31);
      sub_34BE0((v26 + 10136));
      v38 = *(v26 + 10112);
      if (v38)
      {
        operator delete(v38);
      }

      if (*v29)
      {
        operator delete(*v29);
      }

      sub_21DB4B4(v26 + v28);
      sub_A95860(v26 + 9960);
      sub_10F6CDC((v26 + 9936));
      sub_FEA108((v26 + 9880));
      sub_FEA164(v26 + 9384);
      sub_CDE540(v26 + 4432);
      sub_404134(v25);
      _Unwind_Resume(a1);
    }

LABEL_6:
    *(v26 + 10224) = v37;
    operator delete(v37);
    goto LABEL_7;
  }

LABEL_11:
  *(v26 + 10248) = v36;
  operator delete(v36);
  v37 = *v30;
  if (!*v30)
  {
    goto LABEL_7;
  }

  goto LABEL_6;
}

void sub_10F6C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void **a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1A104(&a17);
    if (a25 < 0)
    {
LABEL_5:
      operator delete(a20);
      sub_404134(v25);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a17);
    if (a25 < 0)
    {
      goto LABEL_5;
    }
  }

  JUMPOUT(0x10F6C7CLL);
}

char **sub_10F6CDC(char **a1)
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
        v5 = *(v3 - 10);
        if (v5)
        {
          *(v3 - 9) = v5;
          operator delete(v5);
        }

        v3 -= 88;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_10F6D58(uint64_t a1@<X0>, void *a2@<X1>, char **a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = (a1 + 0x2000);
  sub_7E9A4(v102);
  sub_10F78E0(a1);
  *a4 = 0;
  a4[1] = 0;
  v85 = a4;
  a4[2] = 0;
  v84 = v8;
  if ((v8[1608] & 1) == 0)
  {
    v19 = *a3;
    v20 = a3[1];
    if (*a3 == v20)
    {
      goto LABEL_115;
    }

    while (1)
    {
      strcpy(v87, "Input Passthrough");
      HIBYTE(v87[2]) = 17;
      memset(__p, 0, sizeof(__p));
      LODWORD(v89) = -1;
      sub_10F7B00(a1, v19, a4, v87);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v87[2]) < 0)
        {
LABEL_14:
          operator delete(v87[0]);
        }
      }

      else if (SHIBYTE(v87[2]) < 0)
      {
        goto LABEL_14;
      }

      v19 += 48;
      if (v19 == v20)
      {
        goto LABEL_115;
      }
    }
  }

  v9 = sub_73EDC(a2);
  v10 = a2;
  v11 = sub_73EE4(a2);
  if (sub_1107E08(a2) != 0x7FFFFFFF && *v9 != v9[1] && *v11 != v11[1])
  {
    v12 = sub_1107EE0(a2);
    *(a1 + 4332) = sub_2FEF94(v12);
    v13 = sub_1107EF4(a2);
    *(a1 + 4336) = sub_2FEF94(v13);
    v82 = *(sub_681D7C(a2) + 72);
    v14 = sub_1107EE0(a2);
    v81 = (a1 + 9936);
    sub_10F8340((a1 + 9936), v14);
    v15 = sub_1107EF4(a2);
    v16 = *(a1 + 10144);
    v17 = *(a1 + 10136);
    v18 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 3);
    if (v15 <= v18)
    {
      if (v15 < v18)
      {
        v36 = v17 + 24 * v15;
        if (v16 != v36)
        {
          v37 = *(a1 + 10144);
          do
          {
            v39 = *(v37 - 24);
            v37 -= 24;
            v38 = v39;
            if (v39)
            {
              *(v16 - 16) = v38;
              operator delete(v38);
            }

            v16 = v37;
          }

          while (v37 != v36);
        }

        *(a1 + 10144) = v36;
      }
    }

    else
    {
      sub_11028B4(a1 + 10136, v15 - v18);
    }

    v40 = sub_1107EF4(v10);
    v41 = *(a1 + 11800);
    v42 = (*(a1 + 11808) - v41) >> 1;
    if (v40 <= v42)
    {
      if (v40 < v42)
      {
        *(a1 + 11808) = v41 + 2 * v40;
      }
    }

    else
    {
      sub_1102AB0(a1 + 11800, v40 - v42);
    }

    v43 = sub_1107EF4(v10);
    v44 = *(a1 + 11832);
    v45 = *(a1 + 11824);
    v46 = v43 - (v44 - v45);
    if (v43 <= v44 - v45)
    {
      if (v43 < v44 - v45)
      {
        *(a1 + 11832) = v45 + v43;
      }
    }

    else
    {
      if (*(a1 + 11840) - v44 < v46)
      {
        if ((v43 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v47 = v10;
      v48 = v43 + v45;
      bzero(*(a1 + 11832), v46);
      *(a1 + 11832) = v48;
      v10 = v47;
    }

    v49 = sub_1107EF4(v10);
    v50 = *(a1 + 11856);
    v51 = *(a1 + 11848);
    v52 = v49 - (v50 - v51);
    if (v49 <= v50 - v51)
    {
      if (v49 < v50 - v51)
      {
        *(a1 + 11856) = v51 + v49;
      }
    }

    else
    {
      if (*(a1 + 11864) - v50 < v52)
      {
        if ((v49 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v53 = v10;
      v54 = v49 + v51;
      bzero(*(a1 + 11856), v52);
      *(a1 + 11856) = v54;
      v10 = v53;
    }

    __n = v10;
    v55 = sub_1107EE0(v10);
    if (v55)
    {
      v56 = 0;
      v57 = v55;
      do
      {
        v87[0] = -1;
        v87[2] = 0;
        __p[0] = 0;
        v87[1] = 0;
        __p[1] = v82;
        LODWORD(__p[2]) = 0;
        *&v90 = 0;
        v89 = 0uLL;
        BYTE8(v90) = 0;
        v91 = -1;
        v58 = *(a1 + 9944);
        if (v58 >= *(a1 + 9952))
        {
          v62 = sub_1102BF8(v81, v87);
          v63 = v87[1];
          *(a1 + 9944) = v62;
          if (v63)
          {
            v87[2] = v63;
            operator delete(v63);
          }
        }

        else
        {
          *v58 = v87[0];
          *(v58 + 8) = 0;
          *(v58 + 16) = 0;
          *(v58 + 24) = 0;
          *(v58 + 8) = *&v87[1];
          *(v58 + 24) = __p[0];
          v87[1] = 0;
          v87[2] = 0;
          __p[0] = 0;
          v60 = v89;
          v59 = v90;
          v61 = *&__p[1];
          *(v58 + 80) = v91;
          *(v58 + 48) = v60;
          *(v58 + 64) = v59;
          *(v58 + 32) = v61;
          *(a1 + 9944) = v58 + 88;
        }

        LODWORD(v87[0]) = v56;
        sub_1107F28(__n, v87, v86);
        v64 = v86[0];
        v65 = v86[1];
        while (v64 != v65)
        {
          v66 = *(v64 + 2);
          v67 = *(v64 + 3);
          while (v66 != v67)
          {
            sub_43ECB4((a1 + 4392), *v66, v87);
            *(*(a1 + 11824) + *v64) |= v87[0] != v87[1];
            v68 = v87[0];
            if (v87[0] == v87[1])
            {
              v69 = 0;
            }

            else
            {
              do
              {
                v69 = *(**v68 + 464 * v68[1] + 352);
                if (v69)
                {
                  break;
                }

                v68 += 2;
              }

              while (v68 != v87[1]);
            }

            *(*(a1 + 11848) + *v64) |= v69;
            if (v87[0])
            {
              v87[1] = v87[0];
              operator delete(v87[0]);
            }

            ++v66;
          }

          v64 += 52;
        }

        ++v56;
      }

      while (v56 != v57);
    }

    v70 = sub_1107EE0(__n);
    sub_4D9168(a1 + 10088, v70, 0);
    v71 = sub_1107EE0(__n);
    sub_4D9168(a1 + 10112, v71, 0);
    sub_10F84A4(a1, __n, a3, v85);
    v72 = *(a1 + 9936);
    v73 = *(a1 + 9944);
    v87[0] = v72;
    v87[1] = v73;
    v74 = *(a1 + 9952);
    v87[2] = v74;
    *(a1 + 9944) = 0;
    *(a1 + 9952) = 0;
    *v81 = 0;
    sub_10F99C8(a1, __n, v85);
    sub_10FB648(a1, __n, v85);
    v75 = *v81;
    if (*v81)
    {
      v76 = *(a1 + 9944);
      v77 = *v81;
      if (v76 != v75)
      {
        do
        {
          v78 = *(v76 - 10);
          if (v78)
          {
            *(v76 - 9) = v78;
            operator delete(v78);
          }

          v76 -= 88;
        }

        while (v76 != v75);
        v77 = *v81;
      }

      *(a1 + 9944) = v75;
      operator delete(v77);
      *v81 = 0;
      *(a1 + 9944) = 0;
      *(a1 + 9952) = 0;
    }

    *(a1 + 9936) = v72;
    *(a1 + 9944) = v73;
    *(a1 + 9952) = v74;
    memset(v87, 0, sizeof(v87));
    if (v84[1352] == 1)
    {
      v79 = *(a1 + 9552);
      for (i = *(a1 + 9560); v79 != i; v79 += 24)
      {
        sub_10FCA0C(a1, __n, v79, v85);
      }
    }

    if (v84[1610] == 1)
    {
      sub_10FD23C(a1, __n);
    }

    goto LABEL_115;
  }

  v21 = *a3;
  v22 = a3[1];
  if (*a3 == v22)
  {
    goto LABEL_115;
  }

  while (2)
  {
    sub_F6371C(v21, v97);
    sub_F63818(v21, &v92);
    v23 = sub_10F7FDC(v97, &v92);
    if (v95)
    {
      v96 = v95;
      operator delete(v95);
    }

    if (v93)
    {
      v94 = v93;
      operator delete(v93);
    }

    if (v100)
    {
      v101 = v100;
      operator delete(v100);
    }

    if (v98)
    {
      v99 = v98;
      operator delete(v98);
    }

    if (v23)
    {
      strcpy(v87, "Input Passthrough");
      HIBYTE(v87[2]) = 17;
      strcpy(__p, "hard-blocked");
      BYTE5(__p[1]) = 0;
      HIWORD(__p[1]) = 0;
      HIBYTE(__p[2]) = 12;
      v24 = v84[1680];
      LODWORD(v89) = -1;
      if ((v24 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    nullsub_1();
    v26 = *v25;
    v27 = *(v25 + 8);
    if (*v25 == v27)
    {
LABEL_50:
      strcpy(v87, "Input Passthrough");
      HIBYTE(v87[2]) = 17;
      memset(__p, 0, sizeof(__p));
      LODWORD(v89) = -1;
      sub_10F7B00(a1, v21, v85, v87);
      goto LABEL_51;
    }

    while (1)
    {
      sub_1168CF4(a1 + 4432, v26, v87);
      if (v87[0] == v87[1])
      {
        v29 = v89;
        if (__p[0] == __p[1])
        {
          v28 = v89 != *(&v89 + 1);
          if (!v89)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v28 = 1;
          if (!v89)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        v28 = 1;
        v29 = v89;
        if (!v89)
        {
          goto LABEL_44;
        }
      }

      v30 = *(&v89 + 1);
      v31 = v29;
      if (*(&v89 + 1) != v29)
      {
        v32 = *(&v89 + 1);
        do
        {
          v34 = *(v32 - 3);
          v32 -= 24;
          v33 = v34;
          if (v34)
          {
            *(v30 - 2) = v33;
            operator delete(v33);
          }

          v30 = v32;
        }

        while (v32 != v29);
        v31 = v89;
      }

      *(&v89 + 1) = v29;
      operator delete(v31);
LABEL_44:
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v87[0])
      {
        v87[1] = v87[0];
        operator delete(v87[0]);
      }

      if (v28)
      {
        break;
      }

      v26 += 69;
      if (v26 == v27)
      {
        goto LABEL_50;
      }
    }

    strcpy(v87, "Input Passthrough");
    HIBYTE(v87[2]) = 17;
    strcpy(__p, "maneuver-closure");
    HIBYTE(__p[2]) = 16;
    v35 = v84[1680];
    LODWORD(v89) = -1;
    if ((v35 & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_28:
    sub_11D4B54(v21, a1 + 9880, v87, 1);
LABEL_51:
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_54:
    if (SHIBYTE(v87[2]) < 0)
    {
      operator delete(v87[0]);
    }

    v21 += 48;
    if (v21 != v22)
    {
      continue;
    }

    break;
  }

LABEL_115:
  *(a1 + 4312) = sub_7EA60(v102);
}

void sub_10F780C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void ***a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1AB28(&a19);
  sub_CDCD6C(a16);
  _Unwind_Resume(a1);
}

void sub_10F78E0(uint64_t a1)
{
  *(a1 + 4360) = 0u;
  *(a1 + 4376) = 0u;
  *(a1 + 4328) = 0u;
  *(a1 + 4344) = 0u;
  *(a1 + 4312) = 0u;
  v2 = *(a1 + 9944);
  v3 = *(a1 + 9936);
  while (v2 != v3)
  {
    v4 = *(v2 - 80);
    if (v4)
    {
      *(v2 - 72) = v4;
      operator delete(v4);
    }

    v2 -= 88;
  }

  *(a1 + 9944) = v3;
  v5 = *(a1 + 10008);
  v6 = *(a1 + 10016);
  if (v5 != v6)
  {
    do
    {
      v7 = *v5++;
      *(*(a1 + 9984) + ((v7 >> 3) & 0x1FF8)) &= ~(1 << v7);
      *(*(a1 + 9960) + 4 * v7) = 0x7FFFFFFF;
    }

    while (v5 != v6);
    v5 = *(a1 + 10008);
  }

  *(a1 + 10016) = v5;
  *(a1 + 10096) = 0;
  *(a1 + 10120) = 0;
  *(a1 + 10064) = *(a1 + 10056);
  *(a1 + 10040) = *(a1 + 10032);
  *(a1 + 10080) = 0;
  *(a1 + 10192) = *(a1 + 10184);
  *(a1 + 10168) = *(a1 + 10160);
  v8 = a1 + 10264;
  v9 = 768;
  *(a1 + 10248) = *(a1 + 10240);
  *(a1 + 10208) = 0;
  do
  {
    if (*(v8 + 16))
    {
      v10 = *(v8 + 24);
      if (v10 >= 0x80)
      {
        operator delete(*v8);
        *(v8 + 40) = 0;
        *v8 = &unk_2290750;
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
      }

      else if (v10)
      {
        *(v8 + 16) = 0;
        memset(*v8, 128, v10 + 8);
        *(*v8 + v10) = -1;
        v11 = *(v8 + 24);
        if (v11 == 7)
        {
          v12 = 6;
        }

        else
        {
          v12 = v11 - (v11 >> 3);
        }

        *(v8 + 40) = v12 - *(v8 + 16);
      }
    }

    v8 += 48;
    v9 -= 48;
  }

  while (v9);
  v13 = a1 + 11032;
  v14 = 768;
  do
  {
    if (*(v13 + 16))
    {
      v15 = *(v13 + 24);
      if (v15 >= 0x80)
      {
        operator delete(*v13);
        *(v13 + 40) = 0;
        *v13 = &unk_2290750;
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
      }

      else if (v15)
      {
        *(v13 + 16) = 0;
        memset(*v13, 128, v15 + 8);
        *(*v13 + v15) = -1;
        v16 = *(v13 + 24);
        if (v16 == 7)
        {
          v17 = 6;
        }

        else
        {
          v17 = v16 - (v16 >> 3);
        }

        *(v13 + 40) = v17 - *(v13 + 16);
      }
    }

    v13 += 48;
    v14 -= 48;
  }

  while (v14);
}

void sub_10F7B00(uint64_t a1, uint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v7 = a1 + 0x2000;
  if (*(a1 + 9801) == 1)
  {
    v32 = a4;
    std::operator+<char>();
    v33 = sub_58BBC(a2);
    v34 = v40 >= 0 ? &v38 : v38;
    v35 = v40 >= 0 ? HIBYTE(v40) : v39;
    std::string::append(v33, v34, v35);
    a4 = v32;
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v38);
      a4 = v32;
    }
  }

  if (*(v7 + 1680) == 1)
  {
    sub_11D4B54(a2, a1 + 9880, a4, 0);
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v8 = *a2;
  v9 = a2[1];
  __p = &v38;
  LOBYTE(v37) = 0;
  if (v9 != v8)
  {
    if (0xF128CFC4A33F128DLL * ((v9 - v8) >> 3) < 0x76B981DAE6076CLL)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a2 + 47) < 0)
  {
    sub_325C(&v41, a2[3], a2[4]);
  }

  else
  {
    v41 = *(a2 + 3);
    v42 = a2[5];
  }

  nullsub_1();
  v11 = *v10;
  v12 = sub_F63FD8(&v38);
  v13 = *(a1 + 9928);
  if (*(v12 + 82))
  {
    v14 = 0x40000;
  }

  else
  {
    v14 = 0;
  }

  v17 = v13 > -1 && ((v13 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v13 - 1) < 0xFFFFFFFFFFFFFLL || (v13 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (v17 && *(v12 + 73) == 1 && *(v12 + 72) == 1)
  {
    v18 = *(v12 + 24);
    v19 = *&v18 <= -1 || ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
    v20 = v19 && (*&v18 - 1) >= 0xFFFFFFFFFFFFFLL;
    v21 = !v20 || (*&v18 & 0x7FFFFFFFFFFFFFFFLL) == 0;
    v22 = !v21 || v18 <= 0.0;
    if (!v22 && v18 > *(a1 + 9928))
    {
      v14 |= 0x20000uLL;
    }
  }

  sub_F6E648(v11, v14);
  nullsub_1();
  v25 = *v24;
  v26 = *(v24 + 8);
  if (*v24 != v26)
  {
    do
    {
      sub_116528C(a1 + 4432, v25, &__p);
      v27 = __p;
      v28 = __p != v37;
      if (__p == v37)
      {
        v28 = 0;
      }

      else
      {
        while (*(*v27[1] + 464 * v27[2] + 352) != 1)
        {
          v27 += 3;
          if (v27 == v37)
          {
            goto LABEL_52;
          }
        }

        v28 |= 2uLL;
      }

LABEL_52:
      sub_F6E648(v25, v28);
      if (__p)
      {
        v37 = __p;
        operator delete(__p);
      }

      v25 += 69;
    }

    while (v25 != v26);
  }

  sub_F74288(a3, &v38, 0);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  v29 = v38;
  if (v38)
  {
    v30 = v39;
    v31 = v38;
    if (v39 != v38)
    {
      do
      {
        v30 = sub_4547F0(v30 - 552);
      }

      while (v30 != v29);
      v31 = v38;
    }

    v39 = v29;
    operator delete(v31);
  }
}

void sub_10F7E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10F7F1C(uint64_t a1, __int128 *a2, __int128 *a3, int a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v7;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v8 = *a3;
      *(a1 + 40) = *(a3 + 2);
      *(a1 + 24) = v8;
      *(a1 + 48) = a4;
      return a1;
    }
  }

  sub_325C((a1 + 24), *a3, *(a3 + 1));
  *(a1 + 48) = a4;
  return a1;
}

void sub_10F7FC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10F7FDC(__int128 *a1, __int128 *a2)
{
  v19 = *a1;
  v2 = *(a1 + 3);
  v20 = *(a1 + 2);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v3 = *(a1 + 4);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v5 = *(a1 + 6);
  v4 = *(a1 + 7);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *a2;
  v6 = *(a2 + 3);
  v12 = *(a2 + 2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v7 = *(a2 + 4);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v9 = *(a2 + 6);
  v8 = *(a2 + 7);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 0;
}

void sub_10F82B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_10F8340(void *a1, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_10F84A4(uint64_t a1, void *a2, char **a3, unint64_t *a4)
{
  v171 = a1 + 0x2000;
  v5 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    while ((sub_F63F64(v5, 3) & 1) == 0)
    {
      v5 += 48;
      if (v5 == v4)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_5;
  }

LABEL_4:
  if (*(v171 + 1256) != 1)
  {
    v190 = 0;
    v191 = 0;
    v192 = 0;
    v27 = a2;
    v28 = sub_1107EE0(a2);
    if (v28)
    {
      v29 = 0;
      v30 = *(a1 + 9936);
      do
      {
        *(v30 + 16) = *(v30 + 8);
        *(v30 + 40) = 0x7FFFFFFF;
        *(v30 + 48) = -NAN;
        *(v30 + 56) = 0x7FFFFFFFFFFFFFFFLL;
        *(v30 + 72) = 0;
        *v30 = v29;
        *(v30 + 4) = -1;
        v30 += 88;
        ++v29;
      }

      while (v28 != v29);
    }

    v31 = *(a1 + 9456) * sub_1107E08(a2);
    if (v31 >= 0.0)
    {
      if (v31 >= 4.50359963e15)
      {
        goto LABEL_61;
      }

      v32 = (v31 + v31) + 1;
    }

    else
    {
      if (v31 <= -4.50359963e15)
      {
        goto LABEL_61;
      }

      v32 = (v31 + v31) - 1 + (((v31 + v31) - 1) >> 63);
    }

    v31 = (v32 >> 1);
LABEL_61:
    v33 = sub_1107E08(a2);
    v34 = v31;
    if (*(a1 + 9464) + v33 > v31)
    {
      v34 = *(a1 + 9464) + v33;
    }

    v166 = v34;
    v35 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4);
    v36 = (-21845 * ((a3[1] - *a3) >> 4));
    v170 = (-21845 * ((a3[1] - *a3) >> 4));
    if (-21845 * ((a3[1] - *a3) >> 4))
    {
      v37 = 0;
      v167 = 0;
      v38 = 0;
      v39 = 0;
      v175 = 0;
      do
      {
        if (sub_F63FF4(&(*a3)[48 * v37]) != 1 || (nullsub_1(), !sub_F695B8(*v40)) || (v41 = sub_F63FEC(&(*a3)[48 * v37]), sub_4389AC((a1 + 4392), v41)))
        {
          if (v38 != v39)
          {
            v42 = *(a1 + 9936);
            v43 = v38;
            do
            {
              v44 = v42 + 88 * *v43;
              *(v44 + 4) = -1;
              *(v44 + 16) = *(v44 + 8);
              *(v44 + 40) = 0x7FFFFFFF;
              *(v44 + 48) = -NAN;
              *(v44 + 56) = 0x7FFFFFFFFFFFFFFFLL;
              *(v44 + 72) = 0;
              v45 = *v43++;
              *(v42 + 88 * v45) = v45;
            }

            while (v43 != v39);
          }

          v188 = 0u;
          v189 = 0u;
          *v187 = 0u;
          v46 = sub_73EDC(a2);
          v47 = *v46;
          v48 = v46[1];
          v49 = v38;
          if (*v46 != v48)
          {
            do
            {
              while (1)
              {
                v50 = *v47;
                *(*(a1 + 9936) + 88 * v50 + 40) = 0;
                v51 = *(a1 + 9936) + 88 * v50;
                *(v51 + 48) = 0;
                *(v51 + 56) = 0;
                v52 = v187[1];
                if (v188 == v187[1])
                {
                  v53 = 0;
                }

                else
                {
                  v53 = ((v188 - v187[1]) << 7) - 1;
                }

                v54 = *(&v189 + 1);
                v55 = *(&v189 + 1) + v189;
                if (v53 == *(&v189 + 1) + v189)
                {
                  sub_110578C(v187);
                  v54 = *(&v189 + 1);
                  v52 = v187[1];
                  v55 = v189 + *(&v189 + 1);
                }

                *(*&v52[(v55 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v55 & 0x3FF)) = v50;
                *(&v189 + 1) = v54 + 1;
                if (v38 >= v175)
                {
                  break;
                }

                *v38++ = v50;
                v47 += 50;
                if (v47 == v48)
                {
                  goto LABEL_92;
                }
              }

              v56 = v38 - v49;
              v57 = v38 - v49;
              v58 = v57 + 1;
              if ((v57 + 1) >> 62)
              {
                sub_1794();
              }

              if ((v175 - v49) >> 1 > v58)
              {
                v58 = (v175 - v49) >> 1;
              }

              if (v175 - v49 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v59 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v59 = v58;
              }

              if (v59)
              {
                if (!(v59 >> 62))
                {
                  operator new();
                }

                sub_1808();
              }

              v60 = (4 * v57);
              v175 = 0;
              *v60 = v50;
              v38 = v60 + 1;
              memcpy(0, v49, v56);
              v49 = 0;
              v47 += 50;
            }

            while (v47 != v48);
          }

LABEL_92:
          v61 = *(&v189 + 1);
          v62 = a2;
          v63 = v175;
          if (!*(&v189 + 1))
          {
            goto LABEL_223;
          }

LABEL_93:
          v64 = ((v188 - v187[1]) << 7) - 1;
          if (v188 == v187[1])
          {
            v64 = 0;
          }

          v65 = *(*(v187[1] + (((v189 + v61 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v189 + v61 - 1) & 0x3FF));
          v186 = v65;
          v66 = *(a1 + 9936) + 88 * v65;
          v178 = *(v66 + 48);
          v179 = *(v66 + 40);
          v177 = *(v66 + 52);
          v176 = *(v66 + 56);
          v67 = *(v66 + 64);
          *(&v189 + 1) = v61 - 1;
          if (v64 - (v61 + v189) + 1 >= 0x800)
          {
            operator delete(*(v188 - 8));
            *&v188 = v188 - 8;
          }

          v68 = v178 == -1 || v177 == 0x7FFFFFFF;
          v69 = v68 || v176 == 0x7FFFFFFFFFFFFFFFLL;
          v70 = !v69;
          v174 = v70;
          v175 = v63;
          if (!v69 && sub_1101310(a1, v62, v65, a1 + 9472) != -1)
          {
            v143 = *a3;
            v165 = v165 & 0xFFFF000000000000 | 0x7475706E49;
            v203[0] = v165;
            HIBYTE(v203[2]) = 5;
            strcpy(v204, "invalid-detour");
            HIBYTE(v204[1]) = 0;
            HIBYTE(v204[2]) = 14;
            v144 = *(v171 + 1680);
            LODWORD(v205) = -1;
            if (v144)
            {
              sub_11D4B54(&v143[48 * v37], a1 + 9880, v203, 1);
              if (SHIBYTE(v204[2]) < 0)
              {
                operator delete(v204[0]);
              }
            }

            if (SHIBYTE(v203[2]) < 0)
            {
              v145 = v203[0];
              goto LABEL_222;
            }

LABEL_223:
            v147 = v187[1];
            v148 = v188;
            *(&v189 + 1) = 0;
            v149 = (v188 - v187[1]) >> 3;
            if (v149 >= 3)
            {
              do
              {
                operator delete(*v147);
                v148 = v188;
                v147 = (v187[1] + 8);
                v187[1] = v147;
                v149 = (v188 - v147) >> 3;
              }

              while (v149 > 2);
            }

            if (v149 == 1)
            {
              v150 = 512;
LABEL_229:
              *&v189 = v150;
            }

            else if (v149 == 2)
            {
              v150 = 1024;
              goto LABEL_229;
            }

            if (v147 != v148)
            {
              do
              {
                v151 = *v147++;
                operator delete(v151);
              }

              while (v147 != v148);
              if (v188 != v187[1])
              {
                *&v188 = v188 + ((v187[1] - v188 + 7) & 0xFFFFFFFFFFFFFFF8);
              }
            }

            if (v187[0])
            {
              operator delete(v187[0]);
            }

            v39 = v38;
            v38 = v49;
            goto LABEL_66;
          }

          if (sub_1108134(v62, v186))
          {
            v106 = 0;
            memset(v203, 0, sizeof(v203));
            v204[0] = -1;
            HIDWORD(v205) = 0x7FFFFFFF;
            v206 = 0;
            v107 = *(a1 + 9936) + 88 * v65;
            LODWORD(v205) = *(v107 + 40);
            *&v204[1] = *(v107 + 48);
            do
            {
              v109 = *(v107 + 32);
              if (v106 < v203[2])
              {
                *v106++ = v109;
              }

              else
              {
                v110 = v203[0];
                v111 = v106 - v203[0];
                v112 = v106 - v203[0];
                v113 = v112 + 1;
                if ((v112 + 1) >> 61)
                {
                  sub_1794();
                }

                v114 = v203[2] - v203[0];
                if ((v203[2] - v203[0]) >> 2 > v113)
                {
                  v113 = v114 >> 2;
                }

                if (v114 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v115 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v115 = v113;
                }

                if (v115)
                {
                  if (!(v115 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v116 = v112;
                v117 = (8 * v112);
                v118 = &v117[-v116];
                *v117 = v109;
                v106 = v117 + 1;
                memcpy(v118, v110, v111);
                v203[0] = v118;
                v203[1] = v106;
                v203[2] = 0;
                if (v110)
                {
                  operator delete(v110);
                }
              }

              v203[1] = v106;
              v108 = *(a1 + 9936);
              LODWORD(v65) = *(v108 + 88 * v65 + 4);
              v107 = v108 + 88 * v65;
            }

            while (*(v107 + 4) != -1);
            v119 = v203[0];
            v120 = v106 - 1;
            if (v203[0] != v106 && v120 > v203[0])
            {
              v122 = (v106 - 2);
              v123 = v203[0] + 1;
              if (v106 - 2 > v203[0] + 1)
              {
                v123 = v106 - 2;
              }

              v124 = v123 - v203[0];
              v125 = v124 - 8;
              v68 = v124 == 8;
              v126 = v124 != 8;
              v127 = 1;
              if (!v68)
              {
                v127 = 2;
              }

              v128 = v127 + ((v125 - v126) >> 4);
              if (v128 < 0xA)
              {
                goto LABEL_201;
              }

              v68 = v125 == 0;
              v129 = (v125 - (v125 != 0)) >> 4;
              if (!v68)
              {
                ++v129;
              }

              if (v203[0] < v106 && &v120[-v129] < &v203[0][v129 + 1])
              {
                goto LABEL_201;
              }

              v130 = v128 & 0x1FFFFFFFFFFFFFFCLL;
              v120 = (v120 - v130 * 8);
              v131 = &v203[0][v130];
              v132 = v203[0] + 2;
              v133 = v128 & 0x1FFFFFFFFFFFFFFCLL;
              do
              {
                v134 = *(v132 - 1);
                v135 = *v132;
                v136 = vextq_s8(v122[-1], v122[-1], 8uLL);
                *(v132 - 1) = vextq_s8(*v122, *v122, 8uLL);
                *v132 = v136;
                v122[-1] = vextq_s8(v135, v135, 8uLL);
                *v122 = vextq_s8(v134, v134, 8uLL);
                v132 += 4;
                v122 -= 2;
                v133 -= 4;
              }

              while (v133);
              v119 = v131;
              if (v128 != (v128 & 0x1FFFFFFFFFFFFFFCLL))
              {
LABEL_201:
                v137 = v119 + 1;
                do
                {
                  v138 = *(v137 - 1);
                  *(v137 - 1) = *v120;
                  *v120-- = v138;
                }

                while (v137++ < v120);
              }

              v119 = v203[0];
              v106 = v203[1];
            }

            LODWORD(v204[0]) = (*v119)[1];
            HIDWORD(v204[0]) = (*(v106 - 1))[2];
            sub_10FF5FC(a1, v203);
            if (v205 <= v166)
            {
              v140 = sub_58BBC(&(*a3)[48 * v37]);
              v164 = v164 & 0xFFFF000000000000 | 0x7475706E49;
              v181 = v164;
              v182 = 5;
              if (*(v140 + 23) < 0)
              {
                sub_325C(&v183, *v140, *(v140 + 8));
              }

              else
              {
                v141 = *v140;
                v184 = *(v140 + 16);
                v183 = v141;
              }

              v185 = -1;
              v146 = sub_11000CC(a1, v203, a2, a4, 0, 0, &v181);
              if (SHIBYTE(v184) < 0)
              {
                operator delete(v183);
                if (v182 < 0)
                {
                  goto LABEL_237;
                }
              }

              else
              {
                if ((v182 & 0x80000000) == 0)
                {
                  goto LABEL_219;
                }

LABEL_237:
                operator delete(v181);
              }

LABEL_219:
              v167 += v146;
            }

            v145 = v203[0];
            if (v203[0])
            {
              v203[1] = v203[0];
LABEL_222:
              operator delete(v145);
            }

            goto LABEL_223;
          }

          sub_110802C(v62, &v186, &v190);
          v72 = v190;
          v71 = v191;
          if (v190 == v191)
          {
            goto LABEL_130;
          }

          v73 = v190;
          do
          {
            if (*(*v73 + 40) == 1)
            {
              do
              {
                while (1)
                {
                  v74 = *(*v72 + 8);
                  v75 = *(a1 + 9936) + 88 * v74;
                  *(v75 + 40) = v179;
                  *(v75 + 48) = v178;
                  *(v75 + 52) = v177;
                  *(v75 + 56) = v176;
                  *(v75 + 4) = v65;
                  *(v75 + 32) = *v72;
                  v76 = v187[1];
                  v77 = ((v188 - v187[1]) << 7) - 1;
                  v68 = v188 == v187[1];
                  *v75 = v74;
                  if (v68)
                  {
                    v77 = 0;
                  }

                  v78 = *(&v189 + 1);
                  v79 = *(&v189 + 1) + v189;
                  if (v77 == *(&v189 + 1) + v189)
                  {
                    sub_110578C(v187);
                    v78 = *(&v189 + 1);
                    v76 = v187[1];
                    v79 = v189 + *(&v189 + 1);
                  }

                  *(*&v76[(v79 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v79 & 0x3FF)) = v74;
                  *(&v189 + 1) = v78 + 1;
                  if (v38 >= v63)
                  {
                    break;
                  }

                  *v38++ = v74;
                  v72 += 8;
                  if (v72 == v71)
                  {
                    goto LABEL_130;
                  }
                }

                v80 = v38 - v49;
                v81 = v38 - v49;
                v82 = v81 + 1;
                if ((v81 + 1) >> 62)
                {
                  sub_1794();
                }

                if ((v63 - v49) >> 1 > v82)
                {
                  v82 = (v63 - v49) >> 1;
                }

                if (v63 - v49 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v83 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v83 = v82;
                }

                if (v83)
                {
                  if (!(v83 >> 62))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v84 = (4 * v81);
                v63 = 0;
                *v84 = v74;
                v38 = v84 + 1;
                memcpy(0, v49, v80);
                v49 = 0;
                v72 += 8;
              }

              while (v72 != v71);
LABEL_130:
              v62 = a2;
              goto LABEL_131;
            }

            v73 += 8;
          }

          while (v73 != v191);
          while (1)
          {
            v85 = *v72;
            v86 = *(*v72 + 96);
            v87 = *(*v72 + 104);
            if (v86 != v87)
            {
              while (v37 != *v86)
              {
                if (++v86 == v87)
                {
                  goto LABEL_134;
                }
              }
            }

            if (v86 != v87)
            {
              v88 = *(v85 + 156);
              if (v88 != 0x7FFFFFFF)
              {
                v89 = *(v85 + 8);
                v90 = *(a1 + 9936) + 88 * v89;
                if (*(v90 + 40) != 0x7FFFFFFF)
                {
                  v104 = *a3;
                  v168 = v168 & 0xFFFF000000000000 | 0x7475706E49;
                  v203[0] = v168;
                  HIBYTE(v203[2]) = 5;
                  strcpy(v204, "self-loop");
                  WORD1(v204[1]) = 0;
                  HIDWORD(v204[1]) = 0;
                  HIBYTE(v204[2]) = 9;
                  v105 = *(v171 + 1680);
                  LODWORD(v205) = -1;
                  v62 = a2;
                  if (v105)
                  {
                    sub_11D4B54(&v104[48 * v37], a1 + 9880, v203, 1);
                    if (SHIBYTE(v204[2]) < 0)
                    {
                      operator delete(v204[0]);
                    }
                  }

                  if (SHIBYTE(v203[2]) < 0)
                  {
                    operator delete(v203[0]);
                  }

LABEL_131:
                  v61 = *(&v189 + 1);
                  if (!*(&v189 + 1))
                  {
                    v175 = v63;
                    goto LABEL_223;
                  }

                  goto LABEL_93;
                }

                *(v90 + 40) = v88 + v179;
                if (v174)
                {
                  v91 = *(v85 + 120);
                  if (v91 != -1)
                  {
                    v92 = *(v85 + 124);
                    if (v92 != 0x7FFFFFFF)
                    {
                      v93 = *(v85 + 128);
                      if (v93 != 0x7FFFFFFFFFFFFFFFLL)
                      {
                        *(v90 + 48) = (v91 + v178) | ((v92 + v177) << 32);
                        *(v90 + 56) = v93 + v176;
                      }
                    }
                  }
                }

                *(v90 + 4) = v65;
                *(v90 + 32) = *v72;
                v94 = v187[1];
                v95 = ((v188 - v187[1]) << 7) - 1;
                v68 = v188 == v187[1];
                *v90 = v89;
                *(v90 + 64) = v67 + *(v85 + 160);
                if (v68)
                {
                  v96 = 0;
                }

                else
                {
                  v96 = v95;
                }

                v97 = *(&v189 + 1);
                v98 = *(&v189 + 1) + v189;
                if (v96 == *(&v189 + 1) + v189)
                {
                  sub_110578C(v187);
                  v97 = *(&v189 + 1);
                  v94 = v187[1];
                  v98 = v189 + *(&v189 + 1);
                }

                *(*&v94[(v98 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v98 & 0x3FF)) = v89;
                *(&v189 + 1) = v97 + 1;
                if (v38 < v63)
                {
                  *v38++ = v89;
                }

                else
                {
                  v99 = v38 - v49;
                  v100 = v38 - v49;
                  v101 = v100 + 1;
                  if ((v100 + 1) >> 62)
                  {
                    sub_1794();
                  }

                  if ((v63 - v49) >> 1 > v101)
                  {
                    v101 = (v63 - v49) >> 1;
                  }

                  if (v63 - v49 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v102 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v102 = v101;
                  }

                  if (v102)
                  {
                    if (!(v102 >> 62))
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v103 = (4 * v100);
                  v63 = 0;
                  *v103 = v89;
                  v38 = v103 + 1;
                  memcpy(0, v49, v99);
                  v49 = 0;
                }
              }
            }

LABEL_134:
            v72 += 8;
            if (v72 == v71)
            {
              goto LABEL_130;
            }
          }
        }

        v142 = *a3;
        strcpy(v203, "Input");
        HIBYTE(v203[2]) = 5;
        memset(v204, 0, sizeof(v204));
        LODWORD(v205) = -1;
        sub_10F7B00(a1, &v142[48 * v37], a4, v203);
        if (SHIBYTE(v204[2]) < 0)
        {
          operator delete(v204[0]);
          if ((SHIBYTE(v203[2]) & 0x80000000) == 0)
          {
            goto LABEL_66;
          }
        }

        else if ((SHIBYTE(v203[2]) & 0x80000000) == 0)
        {
          goto LABEL_66;
        }

        operator delete(v203[0]);
LABEL_66:
        ++v37;
      }

      while (v37 != v170);
      v27 = a2;
      v35 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4);
      v36 = v167;
      if (v35 != v167)
      {
        goto LABEL_241;
      }
    }

    else if (v35 != (-21845 * ((a3[1] - *a3) >> 4)))
    {
LABEL_241:
      *(a1 + 4340) += v35 - v36;
    }

    v152 = sub_1107EE0(v27);
    if (v152)
    {
      v153 = *(a1 + 9936);
      v154 = 0;
      v155 = v152 - 1;
      if (v152 == 1)
      {
        goto LABEL_244;
      }

      v158 = !is_mul_ok(v155, 0x58uLL);
      v159 = 88 * v155;
      if (v153 + 40 + v159 < (v153 + 40))
      {
        goto LABEL_244;
      }

      if (v153 + 52 + v159 < (v153 + 52))
      {
        goto LABEL_244;
      }

      if (v158)
      {
        goto LABEL_244;
      }

      v154 = v152 & 0xFFFFFFFFFFFFFFFELL;
      v160 = (v153 + 160);
      v161 = -NAN;
      v162 = v152 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        *(v160 - 39) = -1;
        *(v160 - 17) = -1;
        v163 = *(v160 - 8);
        *(v160 - 18) = *(v160 - 19);
        *(v160 - 7) = v163;
        *(v160 - 30) = 0x7FFFFFFF;
        *(v160 - 8) = 0x7FFFFFFF;
        *(v160 - 14) = v161;
        *(v160 - 3) = v161;
        *(v160 - 13) = 0x7FFFFFFFFFFFFFFFLL;
        *(v160 - 2) = 0x7FFFFFFFFFFFFFFFLL;
        *(v160 - 88) = 0;
        *v160 = 0;
        v160 += 176;
        v162 -= 2;
      }

      while (v162);
      if (v152 != v154)
      {
LABEL_244:
        v156 = (v153 + 88 * v154 + 72);
        v157 = v152 - v154;
        do
        {
          *(v156 - 17) = -1;
          *(v156 - 7) = *(v156 - 8);
          *(v156 - 8) = 0x7FFFFFFF;
          *(v156 - 3) = -NAN;
          *(v156 - 2) = 0x7FFFFFFFFFFFFFFFLL;
          *v156 = 0;
          v156 += 88;
          --v157;
        }

        while (v157);
      }
    }

    if (v190)
    {
      v191 = v190;
      operator delete(v190);
    }

    return;
  }

LABEL_5:
  v7 = *a3;
  v6 = a3[1];
  if (*a3 == v6)
  {
    goto LABEL_47;
  }

  while (2)
  {
    sub_F6371C(v7, v198);
    sub_F63818(v7, &v193);
    v8 = sub_1101CA4(v198, &v193);
    if (__p)
    {
      v197 = __p;
      operator delete(__p);
    }

    if (v194)
    {
      v195 = v194;
      operator delete(v194);
    }

    if (v201)
    {
      v202 = v201;
      operator delete(v201);
    }

    if (v199)
    {
      v200 = v199;
      operator delete(v199);
    }

    if (v8)
    {
      strcpy(v203, "Input Passthrough");
      HIBYTE(v203[2]) = 17;
      strcpy(v204, "blocked");
      HIBYTE(v204[2]) = 7;
      v9 = *(v171 + 1680);
      LODWORD(v205) = -1;
      if ((v9 & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_18;
    }

    nullsub_1();
    v12 = *v10;
    v11 = *(v10 + 8);
    if (*v10 == v11)
    {
LABEL_40:
      strcpy(v203, "Input Passthrough");
      HIBYTE(v203[2]) = 17;
      memset(v204, 0, sizeof(v204));
      LODWORD(v205) = -1;
      sub_10F7B00(a1, v7, a4, v203);
      goto LABEL_41;
    }

    while (1)
    {
      sub_1168CF4(a1 + 4432, v12, v203);
      if (v203[0] == v203[1])
      {
        v14 = v205;
        if (v204[0] == v204[1])
        {
          v13 = v205 != v206;
          if (!v205)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v13 = 1;
          if (!v205)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        v13 = 1;
        v14 = v205;
        if (!v205)
        {
          goto LABEL_34;
        }
      }

      v15 = v206;
      v16 = v14;
      if (v206 != v14)
      {
        v17 = v206;
        do
        {
          v19 = *(v17 - 3);
          v17 -= 24;
          v18 = v19;
          if (v19)
          {
            *(v15 - 2) = v18;
            operator delete(v18);
          }

          v15 = v17;
        }

        while (v17 != v14);
        v16 = v205;
      }

      v206 = v14;
      operator delete(v16);
LABEL_34:
      if (v204[0])
      {
        v204[1] = v204[0];
        operator delete(v204[0]);
      }

      if (v203[0])
      {
        v203[1] = v203[0];
        operator delete(v203[0]);
      }

      if (v13)
      {
        break;
      }

      v12 += 69;
      if (v12 == v11)
      {
        goto LABEL_40;
      }
    }

    strcpy(v203, "Input Passthrough");
    HIBYTE(v203[2]) = 17;
    strcpy(v204, "maneuver-closure");
    HIBYTE(v204[2]) = 16;
    v20 = *(v171 + 1680);
    LODWORD(v205) = -1;
    if ((v20 & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_18:
    sub_11D4B54(v7, a1 + 9880, v203, 1);
LABEL_41:
    if (SHIBYTE(v204[2]) < 0)
    {
      operator delete(v204[0]);
    }

LABEL_44:
    if (SHIBYTE(v203[2]) < 0)
    {
      operator delete(v203[0]);
    }

    v7 += 6;
    if (v7 != v6)
    {
      continue;
    }

    break;
  }

LABEL_47:
  v21 = sub_681D7C(a2);
  v22 = *(v21 + 72);
  v23 = *(v21 + 80);
  if (v22 != v23)
  {
    v24 = v22 + 96;
    do
    {
      v26 = (*(a1 + 10136) + 24 * *(v24 - 96));
      if (v24 != v26)
      {
        sub_C4E558(v26, *v24, *(v24 + 8), (*(v24 + 8) - *v24) >> 1);
      }

      v25 = v24 + 112;
      v24 += 208;
    }

    while (v25 != v23);
  }
}

void sub_10F9844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, char a46)
{
  sub_1AB28(v47 - 176);
  sub_2B2E00(&a36);
  if (v46)
  {
    operator delete(v46);
    v49 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v49 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  a44 = v49;
  operator delete(v49);
  _Unwind_Resume(a1);
}

void sub_10F99C8(uint64_t a1, void *a2, unint64_t *a3)
{
  v283 = a1 + 0x2000;
  if (*(a1 + 9576) != 1)
  {
    return;
  }

  v3 = a2;
  v4 = a1;
  v316 = 0;
  v317 = 0;
  v318 = 0;
  v5 = sub_1107EE0(a2);
  v6 = sub_1107EF4(v3);
  if (v6)
  {
    if (!(v6 >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  if (v5)
  {
    if (!(v5 >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  v313 = 0;
  v314 = 0;
  v315 = 0;
  sub_3D41C(&v313, 0);
  sub_10F8340((v4 + 9936), 0);
  memset(__p, 0, sizeof(__p));
  sub_1103278(&v311, 0, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v310 = 0x7FFFFFFF;
  v284 = *(v4 + 9580);
  if (!v284)
  {
    goto LABEL_309;
  }

  v282 = 0;
  v285 = 0;
  v286 = 0;
  v287 = (*(v4 + 9592) * 0 + 0.5);
  v297 = v4;
  v288 = v3;
  do
  {
    ++*(v4 + 4352);
    if (v286 > *(v4 + 9584))
    {
      break;
    }

    v7 = *(v4 + 9944);
    v8 = *(v4 + 9936);
    while (v7 != v8)
    {
      v9 = *(v7 - 80);
      if (v9)
      {
        *(v7 - 72) = v9;
        operator delete(v9);
      }

      v7 -= 88;
    }

    *(v4 + 9944) = v8;
    *(v4 + 10064) = *(v4 + 10056);
    *(v4 + 10040) = *(v4 + 10032);
    *(v4 + 10080) = 0;
    v10 = v312;
    if (v311 != v312)
    {
      v11 = v312 - v311 - 24;
      v12 = v311;
      if (v11 <= 0x17)
      {
        goto LABEL_336;
      }

      v13 = v11 / 0x18 + 1;
      v12 = v311 + 24 * (v13 & 0x1FFFFFFFFFFFFFFELL);
      v14 = (v311 + 24);
      v15 = v13 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        v16 = *v14;
        *(v14 - 2) = *(v14 - 3);
        v14[1] = v16;
        v14 += 6;
        v15 -= 2;
      }

      while (v15);
      if (v13 != (v13 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_336:
        do
        {
          v12[1] = *v12;
          v12 += 3;
        }

        while (v12 != v10);
      }
    }

    v314 = 0;
    v17 = sub_73EDC(v3);
    v18 = *v17;
    v292 = v17[1];
    if (*v17 != v292)
    {
      while (1)
      {
        v296 = v18;
        v189 = *v18;
        if ((atomic_load_explicit(byte_2733EE8, memory_order_acquire) & 1) == 0)
        {
          sub_21E813C();
        }

        v190 = *(v4 + 9944);
        v191 = *(v4 + 9936);
        __p[0] = (v189 | 0xFFFFFFFF00000000);
        __p[2] = 0;
        v299[0] = 0;
        __p[1] = 0;
        v299[1] = &unk_2733E18;
        LODWORD(v299[2]) = 0;
        *&v301 = 0;
        v300 = 0uLL;
        BYTE8(v301) = 0;
        v302 = -1;
        if (v190 >= *(v4 + 9952))
        {
          v195 = sub_1102BF8((v4 + 9936), __p);
          v196 = __p[1];
          *(v4 + 9944) = v195;
          if (v196)
          {
            __p[2] = v196;
            operator delete(v196);
          }
        }

        else
        {
          *v190 = __p[0];
          *(v190 + 8) = 0;
          *(v190 + 16) = 0;
          *(v190 + 24) = 0;
          *(v190 + 8) = *&__p[1];
          *(v190 + 24) = v299[0];
          __p[1] = 0;
          __p[2] = 0;
          v299[0] = 0;
          v193 = v300;
          v192 = v301;
          v194 = *&v299[1];
          *(v190 + 80) = v302;
          *(v190 + 48) = v193;
          *(v190 + 64) = v192;
          *(v190 + 32) = v194;
          *(v4 + 9944) = v190 + 88;
        }

        v197 = v314;
        if (v314 == v315 << 6)
        {
          if ((v314 + 1) < 0)
          {
            sub_1794();
          }

          if (v314 > 0x3FFFFFFFFFFFFFFELL)
          {
            v198 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else if (v315 << 7 <= (v314 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v198 = (v314 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          else
          {
            v198 = v315 << 7;
          }

          sub_3D41C(&v313, v198);
          v197 = v314;
        }

        v199 = 0x2E8BA2E8BA2E8BA3 * ((v190 - v191) >> 3);
        v314 = v197 + 1;
        *&v313[(v197 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v197);
        LODWORD(__p[0]) = 0;
        v200 = v199;
        v201 = *(v297 + 10064);
        v202 = *(v297 + 10056);
        v203 = v201 - v202;
        v204 = (v201 - v202) >> 2;
        if (v204 <= v199)
        {
          break;
        }

        if (*&v202[4 * v199] == -1)
        {
          v205 = v199;
          v206 = v297;
          v207 = *(v297 + 10040);
          v208 = *(v297 + 10048);
          if (v207 < v208)
          {
            goto LABEL_236;
          }

          goto LABEL_202;
        }

        sub_F8B8B0((v297 + 10032), v199, __p);
LABEL_184:
        v18 = v296 + 50;
        v4 = v297;
        if (v296 + 50 == v292)
        {
          goto LABEL_27;
        }
      }

      while (1)
      {
        v215 = (v203 >> 1) | 1;
        if (v204 <= v203 >> 1)
        {
          v217 = v215 - v204;
          v218 = *(v297 + 10072);
          if (v217 <= (v218 - v201) >> 2)
          {
            bzero(v201, 4 * v217);
            v201 += 4 * v217;
            *(v297 + 10064) = v201;
            v203 = v201 - v202;
            v216 = (v201 - v202) >> 2;
            if (v204 < v216)
            {
              goto LABEL_234;
            }
          }

          else
          {
            v219 = v201 - v202;
            v220 = (v201 - v202) >> 2;
            v221 = v220 + v217;
            if ((v220 + v217) >> 62)
            {
              sub_1794();
            }

            v222 = v218 - v202;
            if (v222 >> 1 > v221)
            {
              v221 = v222 >> 1;
            }

            if (v222 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v223 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v223 = v221;
            }

            if (v223)
            {
              if (!(v223 >> 62))
              {
                operator new();
              }

LABEL_326:
              sub_1808();
            }

            v224 = (v201 - v202) >> 2;
            v225 = (4 * v220);
            bzero(v225, 4 * v217);
            v201 = &v225[4 * v217];
            v226 = &v225[-4 * v224];
            memcpy(v226, v202, v219);
            *(v297 + 10056) = v226;
            *(v297 + 10064) = v201;
            *(v297 + 10072) = 0;
            if (v202)
            {
              operator delete(v202);
              v201 = *(v297 + 10064);
              v202 = *(v297 + 10056);
              v203 = v201 - v202;
              v216 = (v201 - v202) >> 2;
              if (v204 < v216)
              {
                goto LABEL_234;
              }
            }

            else
            {
              v202 = &v225[-4 * v224];
              v203 = v201 - v226;
              v216 = (v201 - v226) >> 2;
              if (v204 < v216)
              {
                goto LABEL_234;
              }
            }
          }
        }

        else
        {
          if (v215 < v204)
          {
            v201 = &v202[4 * v215];
            *(v297 + 10064) = v201;
            v203 = 4 * v215;
            v216 = (4 * v215) >> 2;
            if (v204 >= v216)
            {
              goto LABEL_211;
            }

LABEL_234:
            memset(&v202[4 * v204], 255, v203 - 4 * v204);
            goto LABEL_211;
          }

          v203 = v201 - v202;
          v216 = (v201 - v202) >> 2;
          if (v204 < v216)
          {
            goto LABEL_234;
          }
        }

LABEL_211:
        v204 = v216;
        if (v216 > v200)
        {
          v205 = (LODWORD(__p[0]) << 32) | v200;
          v206 = v297;
          v207 = *(v297 + 10040);
          v208 = *(v297 + 10048);
          if (v207 < v208)
          {
LABEL_236:
            *v207 = v205;
            v227 = v207 + 1;
            goto LABEL_239;
          }

LABEL_202:
          v209 = *(v206 + 10032);
          v210 = v207 - v209;
          v211 = (v207 - v209) >> 3;
          v212 = v211 + 1;
          if ((v211 + 1) >> 61)
          {
            sub_1794();
          }

          v213 = v208 - v209;
          if (v213 >> 2 > v212)
          {
            v212 = v213 >> 2;
          }

          if (v213 >= 0x7FFFFFFFFFFFFFF8)
          {
            v214 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v214 = v212;
          }

          if (v214)
          {
            if (!(v214 >> 61))
            {
              operator new();
            }

            goto LABEL_326;
          }

          v228 = (v207 - v209) >> 3;
          v229 = (8 * v211);
          v230 = (8 * v211 - 8 * v228);
          *v229 = v205;
          v227 = v229 + 1;
          memcpy(v230, v209, v210);
          *(v297 + 10032) = v230;
          *(v297 + 10040) = v227;
          *(v297 + 10048) = 0;
          if (v209)
          {
            operator delete(v209);
          }

LABEL_239:
          *(v297 + 10040) = v227;
          v231 = *(v297 + 10080);
          *(*(v297 + 10056) + 4 * v200) = v231;
          *(v297 + 10080) = v231 + 1;
          if (v231)
          {
            v232 = *(v297 + 10032);
            do
            {
              v233 = v231 - 1;
              v234 = (v231 - 1) >> 2;
              v235 = (v232 + 8 * v234);
              v236 = (v232 + 8 * v231);
              v237 = v235[1];
              v238 = v236[1];
              if (v237 < v238)
              {
                break;
              }

              v239 = *v236;
              *v236 = *v235;
              v236[1] = v237;
              *v235 = v239;
              v235[1] = v238;
              v232 = *(v297 + 10032);
              v240 = *(v232 + 8 * v231);
              v241 = *(v297 + 10056);
              v242 = *(v232 + 8 * v234);
              v243 = *(v241 + 4 * v240);
              *(v241 + 4 * v240) = *(v241 + 4 * v242);
              *(v241 + 4 * v242) = v243;
              v231 = v233 >> 2;
            }

            while (v233 >= 4);
          }

          goto LABEL_184;
        }
      }
    }

LABEL_27:
    ++v286;
    if (!*(v4 + 10080))
    {
      v3 = v288;
      goto LABEL_13;
    }

    v289 = 0;
    v3 = v288;
    while (1)
    {
      v19 = *(v4 + 10032);
      v20 = v19[1];
      v309 = *v19;
      v308 = *(*(v4 + 9936) + 88 * v309);
      *(*(v4 + 10056) + 4 * *v19) = -1;
      v21 = *(v4 + 10080) - 1;
      *(v4 + 10080) = v21;
      if (v21)
      {
        *v19 = *&v19[2 * v21];
        v22 = *(v4 + 10032);
        *(*(v4 + 10056) + 4 * *v22) = 0;
        v23 = *(v4 + 10080);
        if (v23 >= 2)
        {
          v24 = 0;
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v24 + 5;
            if (v27 >= v23)
            {
              v28 = v23;
            }

            else
            {
              v28 = v27;
            }

            if (v27 <= v26)
            {
              break;
            }

            v29 = v25;
            v30 = v22[2 * v25 + 1];
            v31 = &v22[2 * v26 + 1];
            v25 = -1;
            v32 = v30;
            do
            {
              v34 = *v31;
              v31 += 2;
              v33 = v34;
              if (v34 < v32)
              {
                v32 = v33;
                v25 = v26;
              }

              ++v26;
            }

            while (v26 < v28);
            if (v25 >= v23)
            {
              break;
            }

            v35 = 2 * v25;
            v36 = &v22[v35];
            v37 = 8 * v29;
            v38 = *&v22[v35];
            *v36 = *(v22 + v37);
            v36[1] = v30;
            *(v22 + v37) = v38;
            v22 = *(v4 + 10032);
            v39 = v22[v35];
            v40 = *(v4 + 10056);
            v41 = *(v22 + v37);
            LODWORD(v37) = *(v40 + 4 * v39);
            *(v40 + 4 * v39) = *(v40 + 4 * v41);
            *(v40 + 4 * v41) = v37;
            v24 = 4 * v25;
            v26 = (4 * v25) | 1;
            v23 = *(v4 + 10080);
          }

          while (v26 < v23);
        }
      }

      *(v4 + 10040) -= 8;
      v42 = *(4 * v308);
      if (!v42)
      {
        goto LABEL_30;
      }

      *(4 * v308) = v42 - 1;
      v43 = v309;
      *&v313[(v309 >> 3) & 0x1FFFFFF8] |= 1 << v309;
      ++*(v4 + 4360);
      if (++v289 > v287)
      {
        ++*(v4 + 4356);
        goto LABEL_13;
      }

      v44 = sub_1101310(v4, v3, v43, v4 + 9696);
      if (v44 != -1)
      {
        v45 = v309;
        v290 = v44;
        if (v309 == v44)
        {
          goto LABEL_29;
        }

        while (1)
        {
          v46 = (*(v4 + 9936) + 88 * v45);
          v47 = *v46;
          v291 = v46[1];
          ++*(4 * v47);
          v48 = v311 + 24 * v47;
          v50 = *v48;
          v49 = *(v48 + 1);
          v293 = v49;
          if (*v48 != v49)
          {
            break;
          }

LABEL_49:
          v45 = v291;
          if (v291 == v290)
          {
            goto LABEL_29;
          }
        }

        while (1)
        {
          v51 = *v50;
          if (((*&v313[(v51 >> 3) & 0x1FFFFFF8] >> v51) & 1) == 0)
          {
            break;
          }

LABEL_52:
          v50 += 2;
          if (v50 == v49)
          {
            goto LABEL_49;
          }
        }

        v294 = v50;
        v52 = *(v4 + 10064);
        v53 = *(v4 + 10056);
        v54 = v52 - v53;
        v55 = (v52 - v53) >> 2;
        if (v55 > v51)
        {
          v56 = *&v53[4 * v51];
          if (v56 == -1)
          {
LABEL_86:
            v50 = v294;
            v83 = v51 | (v294[1] << 32);
            v84 = *(v4 + 10040);
            v85 = *(v4 + 10048);
            if (v84 >= v85)
            {
              v87 = *(v4 + 10032);
              v88 = v84 - v87;
              v89 = (v84 - v87) >> 3;
              v90 = v89 + 1;
              if ((v89 + 1) >> 61)
              {
                sub_1794();
              }

              v91 = v85 - v87;
              if (v91 >> 2 > v90)
              {
                v90 = v91 >> 2;
              }

              if (v91 >= 0x7FFFFFFFFFFFFFF8)
              {
                v92 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v92 = v90;
              }

              if (v92)
              {
                if (!(v92 >> 61))
                {
                  operator new();
                }

                goto LABEL_323;
              }

              v114 = (v84 - v87) >> 3;
              v115 = (8 * v89);
              v116 = (8 * v89 - 8 * v114);
              *v115 = v83;
              v86 = v115 + 1;
              memcpy(v116, v87, v88);
              *(v4 + 10032) = v116;
              *(v4 + 10040) = v86;
              *(v4 + 10048) = 0;
              if (v87)
              {
                operator delete(v87);
              }
            }

            else
            {
              *v84 = v83;
              v86 = v84 + 1;
            }

            v49 = v293;
            *(v4 + 10040) = v86;
            v117 = *(v4 + 10080);
            *(*(v4 + 10056) + 4 * v51) = v117;
            *(v4 + 10080) = v117 + 1;
            if (v117)
            {
              v118 = *(v4 + 10032);
              do
              {
                v119 = v117 - 1;
                v120 = (v117 - 1) >> 2;
                v121 = (v118 + 8 * v120);
                v122 = (v118 + 8 * v117);
                v123 = v121[1];
                v124 = v122[1];
                if (v123 < v124)
                {
                  break;
                }

                v125 = *v122;
                *v122 = *v121;
                v122[1] = v123;
                *v121 = v125;
                v121[1] = v124;
                v118 = *(v4 + 10032);
                v126 = *(v118 + 8 * v117);
                v127 = *(v4 + 10056);
                v128 = *(v118 + 8 * v120);
                v129 = *(v127 + 4 * v126);
                *(v127 + 4 * v126) = *(v127 + 4 * v128);
                *(v127 + 4 * v128) = v129;
                v117 = v119 >> 2;
              }

              while (v119 >= 4);
            }
          }

          else
          {
            v57 = *(v4 + 10032) + 8 * v56;
            v58 = *(v57 + 4);
            v59 = v50[1];
            *(v57 + 4) = v59;
            if (v59 >= v58)
            {
              v93 = (4 * v56) | 1;
              v94 = *(v4 + 10080);
              v49 = v293;
              if (v93 < v94)
              {
                v95 = 4 * v56;
                do
                {
                  v96 = v95 + 5;
                  if (v96 >= v94)
                  {
                    v97 = v94;
                  }

                  else
                  {
                    v97 = v96;
                  }

                  if (v96 <= v93)
                  {
                    break;
                  }

                  v98 = *(v4 + 10032);
                  v99 = v56;
                  v100 = *(v98 + 8 * v56 + 4);
                  v101 = (v98 + 8 * v93 + 4);
                  LODWORD(v56) = -1;
                  v102 = v100;
                  do
                  {
                    v104 = *v101;
                    v101 += 2;
                    v103 = v104;
                    if (v104 < v102)
                    {
                      v102 = v103;
                      LODWORD(v56) = v93;
                    }

                    ++v93;
                  }

                  while (v93 < v97);
                  if (v56 >= v94)
                  {
                    break;
                  }

                  v105 = 8 * v56;
                  v106 = (v98 + v105);
                  v107 = 8 * v99;
                  v108 = *(v98 + v105);
                  *v106 = *(v98 + v107);
                  v106[1] = v100;
                  *(v98 + v107) = v108;
                  v109 = *(v4 + 10032);
                  v110 = *(v109 + v105);
                  v111 = *(v4 + 10056);
                  v112 = *(v109 + v107);
                  v113 = *(v111 + 4 * v110);
                  *(v111 + 4 * v110) = *(v111 + 4 * v112);
                  *(v111 + 4 * v112) = v113;
                  v95 = 4 * v56;
                  v93 = (4 * v56) | 1;
                  v94 = *(v4 + 10080);
                }

                while (v93 < v94);
              }
            }

            else
            {
              v49 = v293;
              if (v56)
              {
                v60 = *(v4 + 10032);
                do
                {
                  v61 = v56 - 1;
                  v62 = (v56 - 1) >> 2;
                  v63 = (v60 + 8 * v62);
                  v64 = (v60 + 8 * v56);
                  v65 = v63[1];
                  v66 = v64[1];
                  if (v65 < v66)
                  {
                    break;
                  }

                  v67 = *v64;
                  *v64 = *v63;
                  v64[1] = v65;
                  *v63 = v67;
                  v63[1] = v66;
                  v60 = *(v4 + 10032);
                  v56 = *(v60 + 8 * v56);
                  v68 = *(v4 + 10056);
                  v69 = *(v60 + 8 * v62);
                  v70 = *(v68 + 4 * v56);
                  *(v68 + 4 * v56) = *(v68 + 4 * v69);
                  *(v68 + 4 * v69) = v70;
                  LODWORD(v56) = v61 >> 2;
                }

                while (v61 >= 4);
              }
            }
          }

          goto LABEL_52;
        }

        while (1)
        {
          v71 = (v54 >> 1) | 1;
          if (v55 <= v54 >> 1)
          {
            v73 = v71 - v55;
            v74 = *(v4 + 10072);
            if (v73 <= (v74 - v52) >> 2)
            {
              bzero(v52, 4 * v73);
              v52 += 4 * v73;
              *(v4 + 10064) = v52;
              v54 = v52 - v53;
              v72 = (v52 - v53) >> 2;
              if (v55 < v72)
              {
                goto LABEL_85;
              }
            }

            else
            {
              v75 = v52 - v53;
              v76 = (v52 - v53) >> 2;
              v77 = v76 + v73;
              if ((v76 + v73) >> 62)
              {
                sub_1794();
              }

              v78 = v74 - v53;
              if (v78 >> 1 > v77)
              {
                v77 = v78 >> 1;
              }

              if (v78 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v79 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v79 = v77;
              }

              if (v79)
              {
                if (!(v79 >> 62))
                {
                  operator new();
                }

LABEL_323:
                sub_1808();
              }

              v80 = (v52 - v53) >> 2;
              v4 = v297;
              v81 = (4 * v76);
              bzero(v81, 4 * v73);
              v52 = &v81[4 * v73];
              v82 = &v81[-4 * v80];
              memcpy(v82, v53, v75);
              *(v297 + 10056) = v82;
              *(v297 + 10064) = v52;
              *(v297 + 10072) = 0;
              if (v53)
              {
                operator delete(v53);
                v52 = *(v297 + 10064);
                v53 = *(v297 + 10056);
                v54 = v52 - v53;
                v72 = (v52 - v53) >> 2;
                if (v55 < v72)
                {
                  goto LABEL_85;
                }
              }

              else
              {
                v53 = v82;
                v54 = v52 - v82;
                v72 = (v52 - v82) >> 2;
                if (v55 < v72)
                {
                  goto LABEL_85;
                }
              }
            }
          }

          else
          {
            if (v71 < v55)
            {
              v52 = &v53[4 * v71];
              *(v4 + 10064) = v52;
              v54 = 4 * v71;
              v72 = (4 * v71) >> 2;
              if (v55 >= v72)
              {
                goto LABEL_62;
              }

LABEL_85:
              memset(&v53[4 * v55], 255, v54 - 4 * v55);
              goto LABEL_62;
            }

            v54 = v52 - v53;
            v72 = (v52 - v53) >> 2;
            if (v55 < v72)
            {
              goto LABEL_85;
            }
          }

LABEL_62:
          v55 = v72;
          if (v72 > v51)
          {
            goto LABEL_86;
          }
        }
      }

      if (sub_1108134(v3, v308))
      {
        break;
      }

      sub_110802C(v3, &v308, &v316);
      v130 = v316;
      v131 = v317;
      if (v316 != v317)
      {
        while (1)
        {
          v132 = *v130;
          if (*(*v130 + 156) != 0x7FFFFFFF && *(v132 + 120) != -1 && *(v132 + 124) != 0x7FFFFFFF && *(v132 + 128) != 0x7FFFFFFFFFFFFFFFLL && (sub_1100E44(v4, v132, v309) & 1) == 0)
          {
            v134 = *v130;
            v135 = **v130;
            v136 = (*(v4 + 11800) + 2 * v135);
            if (v136[1] != 1 || *v136 == 1)
            {
              break;
            }
          }

LABEL_122:
          if (++v130 == v131)
          {
            goto LABEL_29;
          }
        }

        v137 = v20;
        v138 = *(v134 + 156);
        v139 = v309;
        v140 = v4;
        v295 = *(v4 + 9936);
        v141 = v295 + 88 * v309;
        v142 = *(v141 + 40);
        LODWORD(v133) = *(4 * v135);
        v143 = v133;
        *&v144 = pow(*(v140 + 9624) * v133, *(v140 + 9632));
        v145 = *&v144;
        LOBYTE(v144) = *(*(v140 + 11824) + v135);
        v146 = pow(*(v140 + 9640) * v143, *(v140 + 9648)) * v144;
        v147 = *(v134 + 136);
        if ((v147 & 0x2000) != 0)
        {
          v148 = 1.0;
        }

        else
        {
          v148 = 0.0;
        }

        v149 = pow(*(v140 + 9656) * v143, *(v140 + 9664)) * v148;
        if ((v147 & 0x1000) != 0)
        {
          v150 = 1.0;
        }

        else
        {
          v150 = 0.0;
        }

        v151 = pow(*(v140 + 9672) * v143, *(v140 + 9680)) * v150;
        if ((v147 & 0x800) != 0)
        {
          v152 = 1.0;
        }

        else
        {
          v152 = 0.0;
        }

        v153 = v152 * *(v140 + 9688);
        v154 = (v153 + v153);
        if (v153 > -4.50359963e15)
        {
          v155 = ((v154 - 1) / 2);
        }

        else
        {
          v155 = v153;
        }

        v156 = (v154 + 1) >> 1;
        if (v153 < 4.50359963e15)
        {
          v157 = v156;
        }

        else
        {
          v157 = v153;
        }

        if (v153 >= 0.0)
        {
          v158 = v157;
        }

        else
        {
          v158 = v155;
        }

        v159 = (v145 + 1.0 + v146 + v149 + v151) * v138;
        if (v159 >= 0.0)
        {
          if (v159 < 4.50359963e15)
          {
            v160 = (v159 + v159) + 1;
            goto LABEL_153;
          }
        }

        else if (v159 > -4.50359963e15)
        {
          v160 = (v159 + v159) - 1 + (((v159 + v159) - 1) >> 63);
LABEL_153:
          v159 = (v160 >> 1);
        }

        v161 = v142 + v138;
        v20 = v137;
        LODWORD(v304) = v137 + v158 + v159;
        v162 = *(v134 + 128) + *(v141 + 56);
        v163 = (*(v141 + 48) + *(v134 + 120)) | ((*(v134 + 124) + *(v141 + 52)) << 32);
        v164 = *(v141 + 64);
        v165 = *(v134 + 160);
        v166 = *(v134 + 8);
        v167 = *(v297 + 9944);
        __p[0] = __PAIR64__(v139, v166);
        __p[2] = 0;
        v299[0] = 0;
        __p[1] = 0;
        v299[1] = *v130;
        LODWORD(v299[2]) = v161;
        *&v300 = v163;
        *(&v300 + 1) = v162;
        *&v301 = v164 + v165;
        BYTE8(v301) = 0;
        v302 = -1;
        if (v167 >= *(v297 + 9952))
        {
          v171 = sub_1102BF8((v297 + 9936), __p);
          v172 = __p[1];
          *(v297 + 9944) = v171;
          if (v172)
          {
            __p[2] = v172;
            operator delete(v172);
          }
        }

        else
        {
          *v167 = __p[0];
          *(v167 + 8) = 0;
          *(v167 + 16) = 0;
          *(v167 + 24) = 0;
          *(v167 + 8) = *&__p[1];
          *(v167 + 24) = v299[0];
          __p[1] = 0;
          __p[2] = 0;
          v299[0] = 0;
          v169 = v300;
          v168 = v301;
          v170 = *&v299[1];
          *(v167 + 80) = v302;
          *(v167 + 48) = v169;
          *(v167 + 64) = v168;
          *(v167 + 32) = v170;
          *(v297 + 9944) = v167 + 88;
        }

        v173 = 0x2E8BA2E8BA2E8BA3 * ((v167 - v295) >> 3);
        v174 = v311 + 24 * v166;
        v176 = *(v174 + 1);
        v175 = *(v174 + 2);
        if (v176 >= v175)
        {
          v178 = *v174;
          v179 = v176 - *v174;
          v180 = v179 >> 3;
          v181 = (v179 >> 3) + 1;
          if (v181 >> 61)
          {
            sub_1794();
          }

          v182 = v175 - v178;
          if (v182 >> 2 > v181)
          {
            v181 = v182 >> 2;
          }

          if (v182 >= 0x7FFFFFFFFFFFFFF8)
          {
            v183 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v183 = v181;
          }

          if (v183)
          {
            if (!(v183 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v184 = (8 * v180);
          v185 = v304;
          *v184 = v173;
          v184[1] = v185;
          v177 = 8 * v180 + 8;
          memcpy(0, v178, v179);
          *v174 = 0;
          *(v174 + 1) = v177;
          *(v174 + 2) = 0;
          if (v178)
          {
            operator delete(v178);
          }
        }

        else
        {
          *v176 = v173;
          v176[1] = v304;
          v177 = (v176 + 2);
        }

        *(v174 + 1) = v177;
        v186 = v314;
        if (v314 == v315 << 6)
        {
          if ((v314 + 1) < 0)
          {
            sub_1794();
          }

          if (v314 > 0x3FFFFFFFFFFFFFFELL)
          {
            v187 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else if (v315 << 7 <= (v314 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v187 = (v314 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          else
          {
            v187 = v315 << 7;
          }

          sub_3D41C(&v313, v187);
          v186 = v314;
        }

        v314 = v186 + 1;
        *&v313[(v186 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v186);
        if (*(4 * v166))
        {
          v188 = *(v297 + 10056);
          if (v173 >= ((*(v297 + 10064) - v188) >> 2) || *(v188 + 4 * v173) == -1)
          {
            sub_F8B720((v297 + 10032), v173, &v304);
          }

          else
          {
            sub_F8B8B0((v297 + 10032), v173, &v304);
          }
        }

        v4 = v297;
        goto LABEL_122;
      }

LABEL_29:
      v3 = v288;
LABEL_30:
      if (!*(v4 + 10080))
      {
        goto LABEL_13;
      }
    }

    sub_10FF428(v4, &v309, &v304);
    if (*(v283 + 1192) == 1 && (sub_10FF980(v4, &v304) & 1) == 0)
    {
      strcpy(__p, "PenaltySearch");
      HIWORD(__p[1]) = 0;
      HIBYTE(__p[2]) = 13;
      strcpy(v299, "not-locally-optimal");
      HIBYTE(v299[2]) = 19;
      v250 = *(v283 + 1680);
      LODWORD(v300) = v285;
      if (v250)
      {
        sub_1100700(v4, &v304, v3, v319);
        sub_11D4B54(v319, v297 + 9880, __p, 1);
        sub_454784(v319);
        v3 = v288;
        v4 = v297;
        if (SHIBYTE(v299[2]) < 0)
        {
          operator delete(v299[0]);
        }
      }

      if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
      {
        goto LABEL_302;
      }

      v251 = __p[0];
      goto LABEL_301;
    }

    v244 = v310;
    if (v310 == 0x7FFFFFFF)
    {
      v244 = v306;
      v310 = v306;
    }

    v245 = v304;
    v246 = v305;
    if (v304 != v305)
    {
      do
      {
        v247 = *v245++;
        ++*(4 * *v247);
      }

      while (v245 != v246);
    }

    if (v307 != v306)
    {
      v248 = *(v4 + 9616) * v306;
      if (v248 >= 0.0)
      {
        if (v248 < 4.50359963e15)
        {
          v249 = (v248 + v248) + 1;
LABEL_260:
          v248 = (v249 >> 1);
        }
      }

      else if (v248 > -4.50359963e15)
      {
        v249 = (v248 + v248) - 1 + (((v248 + v248) - 1) >> 63);
        goto LABEL_260;
      }

      if (v307 <= v248)
      {
        v252 = *(v4 + 9600) * v244;
        if (v252 >= 0.0)
        {
          if (v252 < 4.50359963e15)
          {
            v253 = (v252 + v252) + 1;
LABEL_267:
            v252 = (v253 >> 1);
          }
        }

        else if (v252 > -4.50359963e15)
        {
          v253 = (v252 + v252) - 1 + (((v252 + v252) - 1) >> 63);
          goto LABEL_267;
        }

        v254 = *(v4 + 9608) + v244;
        if (v254 <= v252)
        {
          v254 = v252;
        }

        if (v306 <= v254)
        {
          strcpy(__p, "PenaltySearch");
          HIBYTE(__p[2]) = 13;
          v280 &= 0xFFFFFFFFFFFFFF00;
          v299[0] = v280;
          HIBYTE(v299[2]) = 0;
          LODWORD(v300) = v285;
          v258 = sub_11000CC(v4, &v304, v3, a3, 0, 0, __p);
          if (SHIBYTE(v299[2]) < 0)
          {
            operator delete(v299[0]);
            if (SHIBYTE(__p[2]) < 0)
            {
              goto LABEL_286;
            }

LABEL_283:
            if (v258)
            {
              goto LABEL_284;
            }

LABEL_287:
            v259 = v282;
          }

          else
          {
            if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
            {
              goto LABEL_283;
            }

LABEL_286:
            operator delete(__p[0]);
            if (!v258)
            {
              goto LABEL_287;
            }

LABEL_284:
            v259 = v282 + 1;
            *(v4 + 4344) = vadd_s32(*(v4 + 4344), 0x100000001);
          }

          v286 = 0;
          v260 = 0;
          v282 = v259;
          if (v259 < *(v4 + 9588))
          {
            goto LABEL_302;
          }

          goto LABEL_303;
        }
      }
    }

    *(v303 + 3) = 0;
    v303[0] = 0;
    if (*(v283 + 1680) == 1)
    {
      sub_D7B0(__p);
      v261 = sub_5733D0(&v306, *(v4 + 9616));
      if (v307 > v261)
      {
        sub_4A5C(&__p[2], "max_sharing-over-threshold", 26);
      }

      v262 = sub_5733D0(&v310, *(v4 + 9600));
      v263 = *(v4 + 9608) + v310;
      if (v262 > v263)
      {
        v263 = v262;
      }

      if (v306 > v263)
      {
        sub_4A5C(&__p[2], "time-over-threshold", 19);
      }

      v264 = sub_4A5C(&__p[2], " time=", 6);
      v265 = sub_72140(v264, v306);
      v266 = sub_4A5C(v265, " max_sharing=", 13);
      v267 = sub_72140(v266, v307);
      sub_4A5C(v267, " max_sharing_factor=", 20);
      v268 = std::ostream::operator<<();
      v269 = sub_4A5C(v268, " minimum_time=", 14);
      v270 = sub_72140(v269, v310);
      sub_4A5C(v270, " max_time_increase_factor=", 26);
      v271 = std::ostream::operator<<();
      v272 = sub_4A5C(v271, " max_absolute_time_increase=", 28);
      sub_72140(v272, *(v4 + 9608));
      sub_DAE4(__p, v319);
      v255 = v319[0];
      v273 = v319[1];
      v303[0] = *v320;
      *(v303 + 3) = *&v320[3];
      v257 = v321;
      sub_DBE4(__p);
      v256 = v273;
      v3 = v288;
    }

    else
    {
      v255 = 0;
      v256 = 0;
      v257 = 0;
    }

    strcpy(__p, "PenaltySearch");
    HIBYTE(__p[2]) = 13;
    if (v257 < 0)
    {
      sub_325C(v299, v255, v256);
    }

    else
    {
      v299[0] = v255;
      v299[1] = v256;
      LODWORD(v299[2]) = v303[0];
      *(&v299[2] + 3) = *(v303 + 3);
      HIBYTE(v299[2]) = v257;
    }

    LODWORD(v300) = v285;
    if (*(v283 + 1680) == 1)
    {
      sub_1100700(v4, &v304, v3, v319);
      sub_11D4B54(v319, v4 + 9880, __p, 1);
      sub_454784(v319);
      v3 = v288;
      if (SHIBYTE(v299[2]) < 0)
      {
        goto LABEL_298;
      }

LABEL_278:
      if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
      {
        goto LABEL_279;
      }

LABEL_299:
      operator delete(__p[0]);
      if ((v257 & 0x80) == 0)
      {
        goto LABEL_302;
      }

LABEL_300:
      v251 = v255;
LABEL_301:
      operator delete(v251);
      goto LABEL_302;
    }

    if ((SHIBYTE(v299[2]) & 0x80000000) == 0)
    {
      goto LABEL_278;
    }

LABEL_298:
    operator delete(v299[0]);
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_299;
    }

LABEL_279:
    if (v257 < 0)
    {
      goto LABEL_300;
    }

LABEL_302:
    v260 = 1;
LABEL_303:
    if (v304)
    {
      v305 = v304;
      operator delete(v304);
    }

    if ((v260 & 1) == 0)
    {
      break;
    }

LABEL_13:
    ++v285;
  }

  while (v285 != v284);
LABEL_309:
  v274 = v311;
  if (v311)
  {
    v275 = v312;
    v276 = v311;
    if (v312 != v311)
    {
      v277 = v312;
      do
      {
        v279 = *(v277 - 3);
        v277 -= 24;
        v278 = v279;
        if (v279)
        {
          *(v275 - 2) = v278;
          operator delete(v278);
        }

        v275 = v277;
      }

      while (v277 != v274);
      v276 = v311;
    }

    v312 = v274;
    operator delete(v276);
  }

  if (v313)
  {
    operator delete(v313);
  }

  if (v316)
  {
    v317 = v316;
    operator delete(v316);
  }
}

void sub_10FB478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, uint64_t a63)
{
  sub_454784(v65 - 200);
  sub_1AB28(&a25);
  if (__p)
  {
    a62 = __p;
    operator delete(__p);
  }

  sub_34BE0(&a65);
  v67 = a19;
  v68 = *(v65 - 248);
  if (v68)
  {
    operator delete(v68);
    v67 = a19;
    if (!a19)
    {
LABEL_5:
      if (!a20)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (!a19)
  {
    goto LABEL_5;
  }

  operator delete(v67);
  if (!a20)
  {
LABEL_6:
    v69 = *(v65 - 224);
    if (!v69)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a20);
  v69 = *(v65 - 224);
  if (!v69)
  {
LABEL_7:
    _Unwind_Resume(a1);
  }

LABEL_11:
  *(v65 - 216) = v69;
  operator delete(v69);
  _Unwind_Resume(a1);
}

void sub_10FB648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_7E9A4(v6);
  if (*(a1 + 9768))
  {
    sub_681D7C(a2);
    sub_1103420();
  }

  *(a1 + 4320) = sub_7EA60(v5);
}

void sub_10FC914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, void *a36, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
    v38 = a22;
    if (!a22)
    {
LABEL_3:
      v39 = a32;
      if (!a32)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v38 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v38);
  v39 = a32;
  if (!a32)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v39);
  _Unwind_Resume(exception_object);
}

void sub_10FCA0C(uint64_t a1, void *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a4;
  if (*(a3 + 16) != 1 || (v8 = sub_45AC50(a4), v9 = sub_588D8(v4), v8 == v9))
  {
LABEL_6:
    *(a1 + 10064) = *(a1 + 10056);
    *(a1 + 10040) = *(a1 + 10032);
    *(a1 + 10080) = 0;
    v11 = sub_1107EE0(a2);
    if (v11)
    {
      v12 = 0;
      v13 = *(a1 + 9936);
      do
      {
        *(v13 + 16) = *(v13 + 8);
        *(v13 + 40) = 0x7FFFFFFF;
        *(v13 + 48) = -NAN;
        *(v13 + 56) = 0x7FFFFFFFFFFFFFFFLL;
        *(v13 + 72) = 0;
        *v13 = v12;
        *(v13 + 4) = -1;
        v13 += 88;
        ++v12;
      }

      while (v11 != v12);
    }

    v14 = sub_73EDC(a2);
    v15 = *v14;
    v16 = *(v14 + 8);
    if (*v14 != v16)
    {
      do
      {
        while (1)
        {
          v17 = *v15;
          *(*(a1 + 9936) + 88 * v17 + 40) = 0;
          v18 = *(a1 + 9936) + 88 * v17;
          *(v18 + 48) = 0;
          *(v18 + 56) = 0;
          LODWORD(__p[0]) = 0;
          v19 = *(a1 + 10056);
          if (v17 < (*(a1 + 10064) - v19) >> 2 && *(v19 + 4 * v17) != -1)
          {
            break;
          }

          sub_F8B720((a1 + 10032), v17, __p);
          v15 += 50;
          if (v15 == v16)
          {
            goto LABEL_15;
          }
        }

        sub_F8B8B0((a1 + 10032), v17, __p);
        v15 += 50;
      }

      while (v15 != v16);
    }

LABEL_15:
    v89 = 0;
    v90 = 0;
    v91 = 0;
    if (!*(a1 + 10080))
    {
      goto LABEL_70;
    }

    v74 = v4;
    while (1)
    {
      v20 = *(a1 + 10032);
      v21 = *v20;
      v22 = v20[1];
      v87 = v21;
      v88 = v21;
      *(*(a1 + 10056) + 4 * v21) = -1;
      v23 = *(a1 + 10080) - 1;
      *(a1 + 10080) = v23;
      if (v23)
      {
        *v20 = *&v20[2 * v23];
        v24 = *(a1 + 10032);
        *(*(a1 + 10056) + 4 * *v24) = 0;
        v25 = *(a1 + 10080);
        if (v25 >= 2)
        {
          v26 = 0;
          v27 = 0;
          v28 = 1;
          do
          {
            v29 = v26 + 5;
            if (v29 >= v25)
            {
              v30 = v25;
            }

            else
            {
              v30 = v29;
            }

            if (v29 <= v28)
            {
              break;
            }

            v31 = v27;
            v32 = v24[2 * v27 + 1];
            v33 = &v24[2 * v28 + 1];
            v27 = -1;
            v34 = v32;
            do
            {
              v36 = *v33;
              v33 += 2;
              v35 = v36;
              if (v36 < v34)
              {
                v34 = v35;
                v27 = v28;
              }

              ++v28;
            }

            while (v28 < v30);
            if (v27 >= v25)
            {
              break;
            }

            v37 = 2 * v27;
            v38 = &v24[v37];
            v39 = 8 * v31;
            v40 = *&v24[v37];
            *v38 = *(v24 + v39);
            v38[1] = v32;
            *(v24 + v39) = v40;
            v24 = *(a1 + 10032);
            v41 = v24[v37];
            v42 = *(a1 + 10056);
            v43 = *(v24 + v39);
            LODWORD(v39) = *(v42 + 4 * v41);
            *(v42 + 4 * v41) = *(v42 + 4 * v43);
            *(v42 + 4 * v43) = v39;
            v26 = 4 * v27;
            v28 = (4 * v27) | 1;
            v25 = *(a1 + 10080);
          }

          while (v28 < v25);
        }
      }

      *(a1 + 10040) -= 8;
      if (sub_1108134(a2, v88))
      {
        break;
      }

      sub_110802C(a2, &v88, &v89);
      v44 = v89;
      v45 = v90;
      while (v44 != v45)
      {
        v51 = *v44;
        if (*(*v44 + 156) != 0x7FFFFFFF && *(v51 + 120) != -1 && *(v51 + 124) != 0x7FFFFFFF && *(v51 + 128) != 0x7FFFFFFFFFFFFFFFLL && (*a3 & *(v51 + 136)) == 0 && !(*(a3 + 8) & *(v51 + 144) | *(v51 + 136) & 0x800) && (sub_1100E44(a1, v51, v87) & 1) == 0)
        {
          v52 = *v44;
          if ((*a3 & 1) == 0 || !*(*(a1 + 11824) + *v52))
          {
            v53 = v52[2];
            v54 = 39;
            if (*(a3 + 17))
            {
              v54 = 31;
            }

            v55 = v52[v54] + v22;
            LODWORD(__p[0]) = v55;
            v56 = *(a1 + 9936) + 88 * v53;
            v57 = *(v56 + 40);
            if (v57 == 0x7FFFFFFF || v55 < v57)
            {
              v59 = *(a1 + 10056);
              if (v53 >= (*(a1 + 10064) - v59) >> 2 || *(v59 + 4 * v53) == -1)
              {
                sub_F8B720((a1 + 10032), v53, __p);
              }

              else
              {
                sub_F8B8B0((a1 + 10032), v53, __p);
              }

              *(v56 + 40) = __p[0];
              v46 = v87;
              v47 = *(a1 + 9936) + 88 * v87;
              v48 = (*(v47 + 48) + *(*v44 + 120));
              v49 = (*(*v44 + 124) + *(v47 + 52));
              v50 = *(*v44 + 128) + *(v47 + 56);
              *(v56 + 48) = v48 | (v49 << 32);
              *(v56 + 56) = v50;
              *(v56 + 4) = v46;
              *(v56 + 32) = *v44;
              *v56 = v53;
            }

            v4 = v74;
          }
        }

        ++v44;
      }

      if (!*(a1 + 10080))
      {
        goto LABEL_70;
      }
    }

    *(v86 + 3) = 0;
    v86[0] = 0;
    if (*(a1 + 9872) != 1)
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      goto LABEL_59;
    }

    sub_D7B0(__p);
    v65 = *a3;
    v66 = *(a3 + 8);
    sub_F62E04(v65, 0, ",", &v75);
    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = &v75;
    }

    else
    {
      v67 = v75.__r_.__value_.__r.__words[0];
    }

    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v75.__r_.__value_.__l.__size_;
    }

    sub_4A5C(v85, v67, size);
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    sub_1102FF0(v66, 0, ",", &v75);
    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = &v75;
    }

    else
    {
      v69 = v75.__r_.__value_.__r.__words[0];
    }

    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v70 = v75.__r_.__value_.__l.__size_;
    }

    sub_4A5C(v85, v69, v70);
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    sub_DAE4(__p, &v75);
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      v73 = v75.__r_.__value_.__l.__size_;
      operator delete(v75.__r_.__value_.__l.__data_);
      if (v73)
      {
        goto LABEL_94;
      }
    }

    else if (*(&v75.__r_.__value_.__s + 23))
    {
LABEL_94:
      sub_DAE4(__p, v81);
      if ((v82 & 0x80u) == 0)
      {
        v71 = v81;
      }

      else
      {
        v71 = v81[0];
      }

      if ((v82 & 0x80u) == 0)
      {
        v72 = v82;
      }

      else
      {
        v72 = v81[1];
      }

      v80 = 44;
      sub_1100D60(&v83, v71, v72, &v80);
      sub_23E08("AvoidedFeatures=", &v83, &v75);
      v61 = v75.__r_.__value_.__l.__size_;
      v62 = v75.__r_.__value_.__r.__words[0];
      v86[0] = v75.__r_.__value_.__r.__words[2];
      *(v86 + 3) = *(&v75.__r_.__value_.__r.__words[2] + 3);
      v60 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
      *(&v75.__r_.__value_.__s + 23) = 0;
      v75.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (v82 < 0)
      {
        operator delete(v81[0]);
      }

      goto LABEL_106;
    }

    v60 = 0;
    v61 = 0;
    v62 = 0;
LABEL_106:
    sub_DBE4(__p);
LABEL_59:
    sub_10FF428(a1, &v87, __p);
    strcpy(&v75, "AvoidPath");
    *(&v75.__r_.__value_.__s + 23) = 9;
    if (v60 < 0)
    {
      sub_325C(v76, v62, v61);
    }

    else
    {
      v76[0] = v62;
      v76[1] = v61;
      *v77 = v86[0];
      *&v77[3] = *(v86 + 3);
      v78 = v60;
    }

    v79 = -1;
    v63 = sub_11000CC(a1, __p, a2, v4, 0, 1, &v75);
    if (v78 < 0)
    {
      operator delete(v76[0]);
      if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_64:
        v64 = __p[0];
        if (!__p[0])
        {
LABEL_66:
          if (v63)
          {
            ++*(a1 + 4364);
            ++*(a1 + 4344);
          }

          if (v60 < 0)
          {
            operator delete(v62);
          }

LABEL_70:
          if (v89)
          {
            v90 = v89;
            operator delete(v89);
          }

          return;
        }

LABEL_65:
        __p[1] = v64;
        operator delete(v64);
        goto LABEL_66;
      }
    }

    else if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    operator delete(v75.__r_.__value_.__l.__data_);
    v64 = __p[0];
    if (!__p[0])
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v10 = v9;
  while ((*a3 & sub_F63EFC(v8)) != 0)
  {
    v8 += 6;
    if (v8 == v10)
    {
      goto LABEL_6;
    }
  }
}

void sub_10FD128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  sub_DBE4(&a33);
  v36 = *(v34 - 112);
  if (!v36)
  {
    _Unwind_Resume(a1);
  }

  *(v34 - 104) = v36;
  operator delete(v36);
  _Unwind_Resume(a1);
}

void sub_10FD23C(uint64_t *a1, uint64_t a2)
{
  v29 = 0u;
  v30 = 0u;
  v31 = 1065353216;
  sub_5C0C0(v28);
  sub_3AF6B4(*a1);
  v3 = sub_681D7C(a2);
  v25 = (((*(v3 + 56) - *(v3 + 48)) << 30) - 0x100000000) >> 32;
  if (v25)
  {
    v14 = 0;
    do
    {
      v15 = sub_681D7C(a2);
      v16 = v14 + 1;
      v17 = v15[6];
      if (v16 >= (v15[7] - v17) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v24 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v18 = *(v17 + 4 * v14);
      v19 = *(v17 + 4 * v16);
      if (v18 != v19)
      {
        v20 = v15[9];
        v21 = v20 + 208 * v19;
        v22 = v20 + 208 * v18;
        do
        {
          if ((!*(v22 + 80) || !*(v22 + 48) || !*(v22 + 56)) && (*(v22 + 40) & 1) == 0)
          {
            memset(v27, 0, sizeof(v27));
            __p = v27;
            LOBYTE(v34) = 0;
            operator new();
          }

          v22 += 208;
        }

        while (v22 != v21);
      }

      ++v14;
    }

    while (v14 != v25);
  }

  if (v30)
  {
    sub_5C0C4(v28);
  }

  sub_5E354(v28, &__p);
  sub_6BA20((a1 + 1484), &__p);
  v4 = v35;
  if (v35)
  {
    do
    {
      v5 = *v4;
      v6 = *(v4 + 12);
      if (v6 != -1)
      {
        (off_2675550[v6])(&__dst, v4 + 5);
      }

      *(v4 + 12) = -1;
      if (*(v4 + 39) < 0)
      {
        operator delete(v4[2]);
      }

      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  sub_3DB9A4(v28);
  v8 = v30;
  if (v30)
  {
    do
    {
      v10 = *v8;
      v11 = v8[9];
      if (v11)
      {
        v8[10] = v11;
        operator delete(v11);
      }

      v12 = v8[6];
      if (v12)
      {
        v8[7] = v12;
        operator delete(v12);
      }

      v13 = v8[3];
      if (v13)
      {
        v8[4] = v13;
        operator delete(v13);
      }

      operator delete(v8);
      v8 = v10;
    }

    while (v10);
  }

  v9 = v29;
  *&v29 = 0;
  if (v9)
  {
    operator delete(v9);
  }
}

void sub_10FF194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, void *a61)
{
  sub_3DB9A4(&a48);
  v62 = a61;
  if (a61)
  {
    do
    {
      v64 = *v62;
      v65 = v62[9];
      if (v65)
      {
        v62[10] = v65;
        operator delete(v65);
      }

      v66 = v62[6];
      if (v66)
      {
        v62[7] = v66;
        operator delete(v66);
      }

      v67 = v62[3];
      if (v67)
      {
        v62[4] = v67;
        operator delete(v67);
      }

      operator delete(v62);
      v62 = v64;
    }

    while (v64);
  }

  v63 = __p;
  __p = 0;
  if (v63)
  {
    operator delete(v63);
  }

  _Unwind_Resume(a1);
}

void sub_10FF428(uint64_t a1@<X0>, unsigned int *a2@<X1>, char **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = -1;
  *(a3 + 13) = 0x7FFFFFFF;
  a3[7] = 0;
  v5 = *a2;
  v6 = *(a1 + 9936) + 88 * v5;
  *(a3 + 12) = *(v6 + 40);
  *(a3 + 2) = *(v6 + 48);
  do
  {
    v29 = *(v6 + 32);
    sub_4C7358(a3, &v29);
    v7 = *(a1 + 9936);
    LODWORD(v5) = *(v7 + 88 * v5 + 4);
    v6 = v7 + 88 * v5;
  }

  while (*(v6 + 4) != -1);
  v8 = *a3;
  v9 = a3[1];
  v10 = (v9 - 8);
  if (*a3 != v9 && v10 > v8)
  {
    v12 = (v9 - 16);
    v13 = &v8->i8[8];
    if (v9 - 16 > &v8->u64[1])
    {
      v13 = (v9 - 16);
    }

    v14 = (v13 - 8);
    if (v14 == v8)
    {
      v15 = *a3;
    }

    else
    {
      v15 = &v8->i8[1];
    }

    v16 = v14 == v8;
    v17 = (v14 - v15) >> 4;
    if (!v16)
    {
      ++v17;
    }

    if (v17 < 0x13 || v8 < v9 && v9 - 8 * v17 - 8 < &v8->u64[v17 + 1])
    {
      goto LABEL_21;
    }

    v18 = v17 + 1;
    v19 = (v17 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v10 = (v10 - 8 * v19);
    v20 = (v8 + 8 * v19);
    v21 = v8 + 1;
    v22 = v19;
    do
    {
      v23 = v21[-1];
      v24 = *v21;
      v25 = vextq_s8(v12[-1], v12[-1], 8uLL);
      v21[-1] = vextq_s8(*v12, *v12, 8uLL);
      *v21 = v25;
      v12[-1] = vextq_s8(v24, v24, 8uLL);
      *v12 = vextq_s8(v23, v23, 8uLL);
      v21 += 2;
      v12 -= 2;
      v22 -= 4;
    }

    while (v22);
    v8 = v20;
    if (v18 != v19)
    {
LABEL_21:
      v26 = &v8->u64[1];
      do
      {
        v27 = *(v26 - 8);
        *(v26 - 8) = v10->i64[0];
        v10->i64[0] = v27;
        v10 = (v10 - 8);
        v28 = v26 >= v10;
        v26 += 8;
      }

      while (!v28);
    }

    v8 = *a3;
  }

  *(a3 + 6) = *(v8->i64[0] + 4);
  *(a3 + 7) = *(*(a3[1] - 1) + 8);
  sub_10FF5FC(a1, a3);
}

void sub_10FF5DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10FF5FC(uint64_t a1, unsigned int ***a2)
{
  v3 = *(a1 + 10008);
  v4 = *(a1 + 10016);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3++;
      *(*(a1 + 9984) + ((v5 >> 3) & 0x1FF8)) &= ~(1 << v5);
      *(*(a1 + 9960) + 4 * v5) = 0x7FFFFFFF;
    }

    while (v3 != v4);
    v3 = *(a1 + 10008);
  }

  *(a1 + 10016) = v3;
  v6 = *a2;
  v40 = a2[1];
  if (*a2 != v40)
  {
    do
    {
      v7 = *(a1 + 10136) + 24 * **v6;
      v9 = *v7;
      v8 = *(v7 + 8);
      while (v9 != v8)
      {
        v10 = *v9;
        v15 = *(a1 + 9968);
        v16 = *(a1 + 9960);
        v17 = (v15 - v16) >> 2;
        if (v17 <= v10)
        {
          v18 = v10 + 1;
          v19 = v18 - v17;
          v20 = *(a1 + 9976);
          if (v19 > (v20 - v15) >> 2)
          {
            v21 = v20 - v16;
            if (v21 >> 1 > v18)
            {
              v18 = v21 >> 1;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v18 = 0x3FFFFFFFFFFFFFFFLL;
            }

            if (!(v18 >> 62))
            {
              operator new();
            }

            goto LABEL_46;
          }

          memset_pattern16(*(a1 + 9968), &unk_2266850, 4 * v19);
          *(a1 + 9968) = v15 + 4 * v19;
          sub_4D9168(a1 + 9984, *v9 + 1, 0);
          v10 = *v9;
        }

        v11 = *(a1 + 9984);
        v12 = *(v11 + 8 * (v10 >> 6));
        if (((1 << v10) & v12) == 0)
        {
          *(v11 + 8 * (v10 >> 6)) = (1 << v10) | v12;
          v22 = *(a1 + 10016);
          v23 = *(a1 + 10024);
          if (v22 >= v23)
          {
            v25 = *(a1 + 10008);
            v26 = v22 - v25;
            v27 = (v22 - v25) >> 1;
            if (v27 <= -2)
            {
              sub_1794();
            }

            v28 = v23 - v25;
            if (v28 <= v27 + 1)
            {
              v29 = v27 + 1;
            }

            else
            {
              v29 = v28;
            }

            if (v28 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v30 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v29;
            }

            if (v30)
            {
              if ((v30 & 0x8000000000000000) == 0)
              {
                operator new();
              }

LABEL_46:
              sub_1808();
            }

            v31 = (v22 - v25) >> 1;
            v32 = (2 * v27);
            v33 = (2 * v27 - 2 * v31);
            *v32 = v10;
            v24 = v32 + 1;
            memcpy(v33, v25, v26);
            *(a1 + 10008) = v33;
            *(a1 + 10016) = v24;
            *(a1 + 10024) = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v22 = v10;
            v24 = v22 + 2;
          }

          *(a1 + 10016) = v24;
          v10 = *v9;
        }

        v13 = *(a1 + 9960);
        v14 = *(v13 + 4 * v10);
        if (v14 == 0x7FFFFFFF)
        {
          v14 = 0;
        }

        *(v13 + 4 * v10) = v14 + (*v6)[39];
        ++v9;
      }

      ++v6;
    }

    while (v6 != v40);
  }

  *(a2 + 13) = 0;
  v34 = *(a1 + 10008);
  v35 = *(a1 + 10016);
  if (v34 != v35)
  {
    v36 = 0;
    do
    {
      v37 = *(*(a1 + 9960) + 4 * *v34);
      if (v37 != 0x7FFFFFFF)
      {
        if (v36 >= v37)
        {
          v38 = a2 + 13;
        }

        else
        {
          v38 = (*(a1 + 9960) + 4 * *v34);
        }

        v36 = *v38;
        *(a2 + 13) = v36;
      }

      ++v34;
    }

    while (v34 != v35);
  }
}

uint64_t sub_10FF980(uint64_t a1, void *a2)
{
  v12 = a1;
  v2 = a2[1] - *a2;
  if (v2)
  {
    v5 = 0;
    v6 = v2 >> 3;
    do
    {
      v7 = *(*a2 + 8 * v5);
      v8 = *(a1 + 11800) + 2 * *v7;
      if (*(v7 + 40) == 1)
      {
        *v8 = 257;
      }

      else
      {
        if ((*(v8 + 1) & 1) == 0)
        {
          ++*(a1 + 4372);
          *(a1 + 4376) += *(v7 + 16);
          sub_10FFAA4(&v12, a2, v5, v11);
          v9 = sub_10FFF54(a1, v11);
          *v8 = v9 ^ 1 | 0x100;
          *(a1 + 4384) += v9;
          sub_4547F0(v11);
        }

        if (*v8 != 1)
        {
          return 0;
        }
      }

      ++v5;
    }

    while (v6 != v5);
  }

  return 1;
}

uint64_t sub_10FFAA4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  sub_F6BEE8(v47);
  if (a3)
  {
    v6 = *(v5 + 9856);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = a3;
      do
      {
        --v7;
        v8 = *(*a2 + 8 * v7);
        if (*(v8 + 40))
        {
          break;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v9 != v10)
        {
          operator new();
        }
      }

      while (v7 && v6 >= 0);
    }
  }

  v11 = a3;
  sub_F6C6A0(v47, (*(*(*a2 + 8 * a3) + 24) - *(*(*a2 + 8 * a3) + 16)) >> 3);
  v12 = *(*a2 + 8 * a3);
  v13 = *(v12 + 16);
  for (i = *(v12 + 24); v13 != i; ++v13)
  {
    sub_F6C3B8(v47, *v13, 0);
  }

  v15 = *(v5 + 9856);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    do
    {
      if (++v11 >= ((a2[1] - *a2) >> 3))
      {
        break;
      }

      v17 = *(*a2 + 8 * v11);
      if (*(v17 + 40))
      {
        break;
      }

      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v18 != v19)
      {
        v20 = v18 + 8;
        do
        {
          while (1)
          {
            sub_F6C3B8(v47, *(v20 - 8), 0);
            v22 = **(v20 - 8);
            v23 = (v22 - *v22);
            if (*v23 < 9u)
            {
              break;
            }

            v24 = v23[4];
            if (!v24)
            {
              break;
            }

            v16 += *(v22 + v24);
            v15 = *(v5 + 9856);
            v25 = v16 > v15 || v20 == v19;
            v20 += 8;
            if (v25)
            {
              goto LABEL_13;
            }
          }

          v15 = *(v5 + 9856);
          v21 = v16 > v15 || v20 == v19;
          v20 += 8;
        }

        while (!v21);
      }

LABEL_13:
      ;
    }

    while (v16 <= v15);
  }

  *a4 = *v47;
  *(a4 + 16) = *&v47[16];
  memset(v47, 0, sizeof(v47));
  *(a4 + 24) = v48;
  *(a4 + 40) = v49;
  v48 = 0u;
  v49 = 0;
  *(a4 + 96) = v53;
  v26 = v52;
  *(a4 + 64) = v51;
  *(a4 + 80) = v26;
  *(a4 + 48) = v50;
  *(a4 + 104) = v54;
  *(a4 + 120) = v55;
  v54 = 0u;
  v55 = 0;
  *(a4 + 128) = v56;
  v27 = v59;
  *(a4 + 144) = v57;
  v56 = 0u;
  *(a4 + 152) = v58;
  *(a4 + 168) = v27;
  v58 = 0u;
  v57 = 0;
  v59 = 0;
  v28 = v60;
  v29 = v61;
  v30 = v64;
  *(a4 + 208) = v62;
  *(a4 + 176) = v28;
  *(a4 + 192) = v29;
  *(a4 + 216) = v63;
  *(a4 + 232) = v30;
  v63 = 0u;
  v64 = 0;
  *(a4 + 240) = v65;
  v31 = v82;
  *(a4 + 256) = v66;
  v65 = 0u;
  v32 = v67;
  v33 = v69;
  *(a4 + 280) = v68;
  *(a4 + 296) = v33;
  *(a4 + 264) = v32;
  v34 = v70;
  v35 = v71;
  v36 = v73;
  *(a4 + 344) = v72;
  *(a4 + 360) = v36;
  *(a4 + 312) = v34;
  *(a4 + 328) = v35;
  v37 = v74;
  v38 = v75;
  v39 = v77;
  *(a4 + 408) = v76;
  *(a4 + 424) = v39;
  *(a4 + 376) = v37;
  *(a4 + 392) = v38;
  v40 = v78;
  v41 = v79;
  v42 = v81;
  *(a4 + 472) = v80;
  *(a4 + 488) = v42;
  *(a4 + 440) = v40;
  *(a4 + 456) = v41;
  *(a4 + 504) = v31;
  v66 = 0;
  v82 = 0;
  v43 = v84;
  *(a4 + 512) = v83;
  *(a4 + 528) = v43;
  *(a4 + 544) = v85;
  v83 = 0u;
  v84 = 0u;
  v85 = 0;
  return sub_4547F0(v47);
}

void sub_10FFF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (v12)
  {
    operator delete(v12);
  }

  sub_4547F0(va);
  _Unwind_Resume(a1);
}

unint64_t sub_10FFF54(uint64_t a1, void *a2)
{
  result = sub_F6D024(a2);
  if (result)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = sub_F6D17C(a2, v7);
      if (*(a1 + 9417) != 1 || (v9 = v8[1]) == 0 || (v10 = (v9 - *v9), *v10 < 0x11u) || (v11 = v10[8]) == 0 || (*(v9 + v11) & 4) == 0)
      {
        if (*(a1 + 9416) != 1 || (v12 = (*v8 - **v8), *v12 < 0x2Fu) || (v13 = v12[23]) == 0 || ((v14 = *(*v8 + v13), v15 = v14 > 0x2A, v16 = (1 << v14) & 0x50426810004, !v15) ? (v17 = v16 == 0) : (v17 = 1), v17))
        {
          if (v6 >= *(a1 + 9408))
          {
            if (sub_1102008(a1, a2, v7))
            {
              return 1;
            }

            v6 = 0;
          }

          else
          {
            v18 = (*v8 - **v8);
            if (*v18 >= 9u)
            {
              v19 = v18[4];
              if (v19)
              {
                v6 += *(*v8 + v19);
              }
            }
          }
        }
      }

      if (v5 == ++v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_11000CC(uint64_t a1, unsigned int ***a2, void *a3, unint64_t *a4, char a5, int a6, uint64_t *a7)
{
  v9 = sub_F73E78(a4);
  v11 = *a2;
  v10 = a2[1];
  v65 = a2;
  if (*a2 != v10)
  {
    v12 = v9;
    do
    {
      v14 = *(a1 + 10136) + 24 * **v11;
      v16 = *(v14 + 8);
      v15 = *(v14 + 16);
      if (v16 < v15)
      {
        *v16 = v12;
        v13 = (v16 + 1);
      }

      else
      {
        v17 = *v14;
        v18 = v16 - *v14;
        v19 = v18 >> 1;
        if (v18 >> 1 <= -2)
        {
          sub_1794();
        }

        v20 = v15 - v17;
        if (v20 <= v19 + 1)
        {
          v21 = v19 + 1;
        }

        else
        {
          v21 = v20;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v22 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1808();
        }

        *(2 * v19) = v12;
        v13 = 2 * v19 + 2;
        memcpy(0, v17, v18);
        *v14 = 0;
        *(v14 + 8) = v13;
        *(v14 + 16) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      *(v14 + 8) = v13;
      ++v11;
    }

    while (v11 != v10);
  }

  sub_1100700(a1, v65, a3, &v77);
  if (*(a1 + 9801))
  {
    sub_D7B0(&v70);
    v38 = *(a7 + 47);
    if (v38 >= 0)
    {
      v39 = a7 + 3;
    }

    else
    {
      v39 = a7[3];
    }

    if (v38 >= 0)
    {
      v40 = *(a7 + 47);
    }

    else
    {
      v40 = a7[4];
    }

    v41 = sub_4A5C(&v72, v39, v40);
    v42 = sub_4A5C(v41, " PathGraphExtStg=", 17);
    v43 = *(a7 + 23);
    if (v43 >= 0)
    {
      v44 = a7;
    }

    else
    {
      v44 = *a7;
    }

    if (v43 >= 0)
    {
      v45 = *(a7 + 23);
    }

    else
    {
      v45 = a7[1];
    }

    sub_4A5C(v42, v44, v45);
    if (*(a7 + 12) == -1)
    {
      sub_4A5C(&v72, "-", 1);
      std::ostream::operator<<();
    }

    v46 = sub_4A5C(&v72, " reference_cost=", 16);
    v47 = sub_706EC(v46, v65[4], v65[5]);
    v48 = sub_4A5C(v47, " time=", 6);
    sub_72140(v48, *(v65 + 12));
    sub_DAE4(&v70, v68);
    v49 = sub_58BBC(&v77);
    if ((v69 & 0x80u) == 0)
    {
      v50 = v68;
    }

    else
    {
      v50 = v68[0];
    }

    if ((v69 & 0x80u) == 0)
    {
      v51 = v69;
    }

    else
    {
      v51 = v68[1];
    }

    std::string::append(v49, v50, v51);
    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    sub_DBE4(&v70);
    if (a5)
    {
LABEL_41:
      if (*(a1 + 9872) == 1)
      {
        v52 = sub_F73E78(a4);
        sub_F74004(a4, &v77, a6);
        if (v52 != sub_F73E78(a4))
        {
          sub_D7B0(&v70);
          v53 = *(a7 + 47);
          if (v53 >= 0)
          {
            v54 = a7 + 3;
          }

          else
          {
            v54 = a7[3];
          }

          if (v53 >= 0)
          {
            v55 = *(a7 + 47);
          }

          else
          {
            v55 = a7[4];
          }

          v56 = sub_4A5C(&v72, v54, v55);
          v57 = sub_4A5C(v56, " reference_cost=", 16);
          v58 = sub_706EC(v57, v65[4], v65[5]);
          v59 = sub_4A5C(v58, " time=", 6);
          sub_72140(v59, *(v65 + 12));
          sub_DAE4(&v70, v66);
          sub_10F7F1C(v68, a7, v66, *(a7 + 12));
          sub_11D4B54(&v77, a1 + 9880, v68, 0);
          sub_1AB28(v68);
          if (v67 < 0)
          {
            operator delete(v66[0]);
          }

          sub_DBE4(&v70);
          v33 = 1;
          if (v80 < 0)
          {
            goto LABEL_44;
          }

          goto LABEL_45;
        }
      }

      else
      {
        sub_F74288(a4, &v77, a6);
      }

      v33 = 1;
      if (v80 < 0)
      {
        goto LABEL_44;
      }

      goto LABEL_45;
    }
  }

  else if (a5)
  {
    goto LABEL_41;
  }

  nullsub_1();
  v24 = *v23;
  v25 = *(v23 + 8);
  if (*v23 == v25)
  {
    goto LABEL_41;
  }

  while (1)
  {
    sub_1168CF4(a1 + 4432, v24, &v70);
    if (v70 == v71)
    {
      v27 = __p;
      if (v73 == v74)
      {
        v26 = __p != v76;
        if (!__p)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v26 = 1;
        if (!__p)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v26 = 1;
      v27 = __p;
      if (!__p)
      {
        goto LABEL_35;
      }
    }

    v28 = v76;
    v29 = v27;
    if (v76 != v27)
    {
      v30 = v76;
      do
      {
        v32 = *(v30 - 3);
        v30 -= 24;
        v31 = v32;
        if (v32)
        {
          *(v28 - 2) = v31;
          operator delete(v31);
        }

        v28 = v30;
      }

      while (v30 != v27);
      v29 = __p;
    }

    v76 = v27;
    operator delete(v29);
LABEL_35:
    if (v73)
    {
      v74 = v73;
      operator delete(v73);
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    if (v26)
    {
      break;
    }

    v24 += 69;
    if (v24 == v25)
    {
      goto LABEL_41;
    }
  }

  if (*(a1 + 9872) == 1)
  {
    sub_3608D0(v68, "maneuver-closure");
    sub_10F7F1C(&v70, a7, v68, *(a7 + 12));
    sub_11D4B54(&v77, a1 + 9880, &v70, 1);
    sub_1AB28(&v70);
    if (v69 < 0)
    {
      operator delete(v68[0]);
    }
  }

  v33 = 0;
  if (v80 < 0)
  {
LABEL_44:
    operator delete(v79);
  }

LABEL_45:
  v34 = v77;
  if (v77)
  {
    v35 = v78;
    v36 = v77;
    if (v78 != v77)
    {
      do
      {
        v35 = sub_4547F0(v35 - 552);
      }

      while (v35 != v34);
      v36 = v77;
    }

    v78 = v34;
    operator delete(v36);
  }

  return v33;
}

void sub_110062C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1AB28(&a31);
  if (a26 < 0)
  {
    operator delete(__p);
    sub_454784(v31 - 136);
    _Unwind_Resume(a1);
  }

  sub_454784(v31 - 136);
  _Unwind_Resume(a1);
}

void sub_1100700(uint64_t a1@<X0>, unsigned int ***a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v57 = 0;
  v56[0] = &v57 + 1;
  v56[1] = &v57;
  v56[2] = a1;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v8 = sub_49E278(&v53);
  v9 = *(a2 + 6);
  v54 = v8;
  v10 = sub_11081F4(a3, v9);
  sub_F68F20(v8 - 552, v10);
  v12 = *a2;
  v11 = a2[1];
  if (*a2 == v11)
  {
    v13 = 0;
    goto LABEL_9;
  }

  if (v11 - 1 == v12)
  {
    v13 = 0;
    v14 = *a2;
    do
    {
LABEL_8:
      v20 = *v14++;
      v13 += (*(v20 + 24) - *(v20 + 16)) >> 3;
    }

    while (v14 != v11);
    goto LABEL_9;
  }

  v15 = 0;
  v16 = 0;
  v17 = (((v11 - 1) - v12) >> 3) + 1;
  v14 = &v12[v17 & 0x3FFFFFFFFFFFFFFELL];
  v18 = v12 + 1;
  v19 = v17 & 0x3FFFFFFFFFFFFFFELL;
  do
  {
    v15 += (*(*(v18 - 1) + 3) - *(*(v18 - 1) + 2)) >> 3;
    v16 += (*(*v18 + 3) - *(*v18 + 2)) >> 3;
    v18 += 2;
    v19 -= 2;
  }

  while (v19);
  v13 = v16 + v15;
  if (v17 != (v17 & 0x3FFFFFFFFFFFFFFELL))
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_F6C6A0((v54 - 552), v13);
  v21 = *a2;
  v22 = a2[1];
  if (*a2 != v22)
  {
    do
    {
      v23 = *v21;
      v24 = (*v21)[2];
      if (*(*v21 + 40) == 1)
      {
        v25 = v23[1];
        sub_1100B5C(v56, v54 - 552);
        v26 = sub_1108230(a3, v25);
        v27 = *(v26 + 16);
        v51[0] = *v26;
        v51[1] = v27;
        v28 = *(v26 + 32);
        v29 = *(v26 + 48);
        v30 = *(v26 + 64);
        v52 = *(v26 + 80);
        v51[3] = v29;
        v51[4] = v30;
        v51[2] = v28;
        sub_F6901C(v54 - 552, v51);
        v31 = v54;
        if (v54 >= v55)
        {
          v32 = sub_49E278(&v53);
        }

        else
        {
          sub_F6BEE8(v54);
          v32 = v31 + 552;
        }

        v54 = v32;
        v37 = sub_1108260(a3, v24);
        v38 = *(v37 + 16);
        v49[0] = *v37;
        v49[1] = v38;
        v39 = *(v37 + 32);
        v40 = *(v37 + 48);
        v41 = *(v37 + 64);
        v50 = *(v37 + 80);
        v49[3] = v40;
        v49[4] = v41;
        v49[2] = v39;
        sub_F68F20(v54 - 552, v49);
        v57 = 0;
      }

      else
      {
        sub_F6E648(v54 - 552, *(v23 + 17) & 0xFFFFFFFFFFF9FFFCLL);
        v33 = *v21;
        v34 = **v21;
        HIBYTE(v57) = (HIBYTE(v57) | *(*(a1 + 11824) + v34)) != 0;
        LOBYTE(v57) = (v57 | *(*(a1 + 11848) + v34)) != 0;
        if (v33[20] && *(v33 + 6) && *(v33 + 7))
        {
          sub_F6C100(v54 - 552, *(v33 + 11), v33 + 6, *(v33 + 23) != *(v33 + 24));
          sub_1100B5C(v56, v54 - 552);
          if (sub_1108134(a3, v24))
          {
            v47 = v54;
            v48 = sub_110820C(a3, v24);
            sub_F6901C(v47 - 552, v48);
            sub_F63300(a4, &v53);
            goto LABEL_26;
          }
        }

        else
        {
          v35 = *(v33 + 2);
          for (i = *(v33 + 3); v35 != i; ++v35)
          {
            sub_F6C3B8((v54 - 552), *v35, *(*v21 + 23) != *(*v21 + 24));
          }
        }
      }

      ++v21;
    }

    while (v21 != v22);
  }

  sub_1100B5C(v56, v54 - 552);
  v42 = v54;
  v43 = sub_110820C(a3, *(a2 + 7));
  sub_F6901C(v42 - 552, v43);
  sub_F63300(a4, &v53);
LABEL_26:
  v44 = v53;
  if (v53)
  {
    v45 = v54;
    v46 = v53;
    if (v54 != v53)
    {
      do
      {
        v45 = sub_4547F0(v45 - 552);
      }

      while (v45 != v44);
      v46 = v53;
    }

    v54 = v44;
    operator delete(v46);
  }
}