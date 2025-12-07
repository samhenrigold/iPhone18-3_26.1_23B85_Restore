void sub_27148AFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

void sub_27148AFE0(_DWORD *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v4)
  {
    sub_27148B5F4(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v5)
  {
    sub_27148C6AC(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v6)
    {
      sub_27148D670(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v7)
    {
      sub_27148E374(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v8)
      {
        sub_27148EA08(&v10, v8);
      }

      else
      {
        sub_27148B1AC(&v9, a1);
      }
    }
  }
}

void sub_27148B1AC(uint64_t *a1, _DWORD *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v15[0] = 4;
    (*(*a2 + 104))(a2, v15);
    v10 = v15[0];
    if (v9 < 1)
    {
      sub_2713DFA84(a2, v3 + 16, v15[0]);
    }

    else
    {
      if (v9 == 2)
      {
        v15[0] = 3;
        (*(*a2 + 104))(a2, v15);
      }

      (*(*a2 + 16))(a2);
      sub_2713DFA84(a2, v3 + 16, v10);
      (*(*a2 + 24))(a2);
    }
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v15[0] = 5;
    (*(*a2 + 104))(a2, v15);
    v8 = v15[0];
    if (v7 < 1)
    {
      sub_2713DF128(a2, v3 + 16, v15[0]);
    }

    else
    {
      if (v7 == 2)
      {
        v15[0] = 3;
        (*(*a2 + 104))(a2, v15);
      }

      (*(*a2 + 16))(a2);
      sub_2713DF128(a2, v3 + 16, v8);
      (*(*a2 + 24))(a2);
    }
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = a2[2];
    v15[0] = 6;
    (*(*a2 + 104))(a2, v15);
    v6 = v15[0];
    if (v5 < 1)
    {
      sub_2713B9F84(a2, v3 + 16, v15[0]);
    }

    else
    {
      if (v5 == 2)
      {
        v15[0] = 3;
        (*(*a2 + 104))(a2, v15);
      }

      (*(*a2 + 16))(a2);
      sub_2713B9F84(a2, v3 + 16, v6);
      (*(*a2 + 24))(a2);
    }
  }

  v11 = *a2;
  v12 = *(a2 + 1);
  v15[0] = 1;
  (*(v11 + 104))(a2, v15);
  v14 = v15[0];
  v13[0] = a2;
  v13[1] = v3 + 200;
  v13[2] = &v12;
  v13[3] = &v14;
  if (v12 < 1)
  {
    sub_27148BEB8(v15, v3 + 200);
    sub_27148F198(a2, v15);
    if (v21 == 1 && v20 < 0)
    {
      operator delete(__p);
    }

    if (v18 == 1 && v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    sub_27148EFC0(v13);
  }
}

void sub_27148B5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2713B14A4(va);
  _Unwind_Resume(a1);
}

void sub_27148B5F4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_27182791C(a2 + 48, v5);
        v7 = sub_2718289B0(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_2718289B0(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_2715CC40C(&v26, v10);
        }

        sub_2713B29CC(a2, v3 + 16, 6);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_27182791C(a2 + 48, v12);
    v14 = sub_2718289B0(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_2718289B0(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_2715CC40C(&v26, v17);
    }

    sub_2713DA6CC(a2, v3 + 16, 5);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_27182791C(a2 + 48, v19);
  v21 = sub_2718289B0(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_2718289B0(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_2715CC40C(&v26, v24);
  }

  sub_2713DAF34(a2, v3 + 16, 4);
}

void sub_27148B9F8(uint64_t a1, _OWORD *a2)
{
  v11[22] = *MEMORY[0x277D85DE8];
  if (**(a1 + 40) <= 1u)
  {
    v3 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v3 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v4 = *(a2 + 2);
  sub_27182791C(a1 + 48, (a1 + 40));
  v5 = sub_2718289B0(a1);
  *(a1 + 40) = v5;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, *"version" == 1936876918) ? (v6 = *"sion" == 1852795251) : (v6 = 0), v6))
  {
    *(a1 + 96) = 1;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v10[0] = 6;
    v11[0] = 1;
    v7 = sub_2718289B0(a1);
    v8 = *v7;
    *v7 = 6;
    v10[0] = v8;
    v9 = v7[1];
    v7[1] = v11[0];
    v11[0] = v9;
    sub_2715CC40C(v11, v8);
  }

  sub_27148BEB8(v10, v4);
  sub_27148BBEC(a1, v10);
}

void sub_27148BBEC(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "src_to_dst";
    *(a1 + 80) = 10;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182791C(a1 + 48, (a1 + 40));
  v5 = sub_2718289B0(a1);
  *(a1 + 40) = v5;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v6 = *(a1 + 72), v7 = *v6, v8 = *(v6 + 3), v7 == *"version") ? (v9 = v8 == *"sion") : (v9 = 0), v9))
  {
    *(a1 + 96) = 1;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v13 = 1;
    v10 = sub_2718289B0(a1);
    v11 = *v10;
    *v10 = 6;
    v12 = v10[1];
    v10[1] = v13;
    v13 = v12;
    sub_2715CC40C(&v13, v11);
  }

  sub_27148BFFC(a1, (a2 + 8));
}

uint64_t sub_27148BEB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  v5 = *(a2 + 88);
  v6 = *(a2 + 104);
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 40);
  *(a1 + 120) = 0;
  *(a1 + 8) = v7;
  *(a1 + 24) = v8;
  *(a1 + 88) = v5;
  *(a1 + 104) = v6;
  *(a1 + 56) = v3;
  *(a1 + 72) = v4;
  *(a1 + 40) = v9;
  *(a1 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    if (*(a2 + 143) < 0)
    {
      v11 = a2;
      sub_271127178((a1 + 120), *(a2 + 120), *(a2 + 128));
      a2 = v11;
    }

    else
    {
      v10 = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 120) = v10;
    }

    *(a1 + 144) = 1;
  }

  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    if (*(a2 + 175) < 0)
    {
      sub_271127178((a1 + 152), *(a2 + 152), *(a2 + 160));
    }

    else
    {
      v12 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v12;
    }

    *(a1 + 176) = 1;
  }

  return a1;
}

void sub_27148BFB0(_Unwind_Exception *exception_object)
{
  if (v1[176] == 1 && v1[175] < 0)
  {
    operator delete(*v3);
  }

  if (v1[144] == 1 && v1[143] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_27148BFFC(uint64_t a1, char *a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = "se3_type";
    *(a1 + 80) = 8;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v4 = 0;
  sub_27148C43C(&v5, &v3, a2);
}

void sub_27148C3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27148C414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27148C428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27148C668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27148C6AC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = *(a2 + 24);
    if (*(v7 + 40) == 1)
    {
      v13 = (v7 + 16);
      sub_2718460EC(&v13, 4u);
    }

    else
    {
      sub_27184636C(&v13, (v7 + 8), 4u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DC010(a2, v3 + 16, 4);
  }

  else if (v4 == 1)
  {
    v6 = *(a2 + 24);
    if (*(v6 + 40) == 1)
    {
      v13 = (v6 + 16);
      sub_2718460EC(&v13, 5u);
    }

    else
    {
      sub_27184636C(&v13, (v6 + 8), 5u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DBEE0(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = *(a2 + 24);
    if (*(v5 + 40) == 1)
    {
      v13 = (v5 + 16);
      sub_2718460EC(&v13, 6u);
    }

    else
    {
      sub_27184636C(&v13, (v5 + 8), 6u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713B5730(a2, v3 + 16, 6);
  }

  v8 = *(a2 + 24);
  v9 = *(*(v8 + 88) - 8);
  sub_2718404E0((v8 + 48), *(v8 + 16) - v9 - 9);
  v10 = *(v8 + 48);
  if (v10)
  {
    memmove((*(v8 + 24) + v9), *(v8 + 56), v10);
  }

  *(v8 + 48) = 0;
  v11 = *(v8 + 80);
  v12 = *(v8 + 88) - 8;
  *(v8 + 88) = v12;
  if (v11 == v12)
  {
    std::ostream::write();
    if (*(v8 + 40) == 1)
    {
      free(*(v8 + 24));
      *(v8 + 40) = 0;
    }
  }

  sub_27148C878(&v13, a2, v3 + 200);
}

void sub_27148C878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 24);
  if (*(v5 + 40) == 1)
  {
    v11[0] = (v5 + 16);
    sub_2718460EC(v11, 1u);
  }

  else
  {
    sub_27184636C(v11, (v5 + 8), 1u);
  }

  sub_271840ADC(*(a2 + 24));
  sub_27148BEB8(v11, a3);
  sub_27148C9F0(a2, v11);
  if (v16 == 1 && v15 < 0)
  {
    operator delete(__p);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11[15]);
  }

  v6 = *(a2 + 24);
  v7 = *(*(v6 + 88) - 8);
  sub_2718404E0((v6 + 48), *(v6 + 16) - v7 - 9);
  v8 = *(v6 + 48);
  if (v8)
  {
    memmove((*(v6 + 24) + v7), *(v6 + 56), v8);
  }

  *(v6 + 48) = 0;
  v9 = *(v6 + 80);
  v10 = *(v6 + 88) - 8;
  *(v6 + 88) = v10;
  if (v9 == v10)
  {
    std::ostream::write();
    if (*(v6 + 40) == 1)
    {
      free(*(v6 + 24));
      *(v6 + 40) = 0;
    }
  }
}

char *sub_27148C9F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v18 = (v4 + 16);
    sub_2718460EC(&v18, 1u);
  }

  else
  {
    sub_27184636C(&v18, (v4 + 8), 1u);
  }

  sub_271840ADC(*(a1 + 24));
  sub_27148CCE0(a1, (a2 + 8));
  v5 = *(a1 + 24);
  v6 = *(*(v5 + 88) - 8);
  sub_2718404E0((v5 + 48), *(v5 + 16) - v6 - 9);
  v7 = *(v5 + 48);
  if (v7)
  {
    memmove((*(v5 + 24) + v6), *(v5 + 56), v7);
  }

  *(v5 + 48) = 0;
  v8 = *(v5 + 80);
  v9 = *(v5 + 88) - 8;
  *(v5 + 88) = v9;
  if (v8 == v9)
  {
    std::ostream::write();
    if (*(v5 + 40) == 1)
    {
      free(*(v5 + 24));
      *(v5 + 40) = 0;
    }
  }

  if (*(a2 + 144) == 1)
  {
    v17 = 1;
    v10 = *(a1 + 24);
    if (*(v10 + 40) == 1)
    {
      v18 = (v10 + 16);
      sub_2718454CC(&v18, &v17);
      v11 = *(a1 + 24);
      if (*(v11 + 40) != 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      LOBYTE(v18) = 1;
      std::ostream::write();
      v11 = *(a1 + 24);
      if (*(v11 + 40) != 1)
      {
LABEL_12:
        sub_271847654((v11 + 8), (a2 + 120));
        if (*(a2 + 176) == 1)
        {
          goto LABEL_22;
        }

LABEL_19:
        v17 = 0;
        v13 = *(a1 + 24);
        if (*(v13 + 40) == 1)
        {
          v18 = (v13 + 16);
          return sub_2718454CC(&v18, &v17);
        }

        else
        {
          LOBYTE(v18) = 0;
          return std::ostream::write();
        }
      }
    }

    v18 = (v11 + 16);
    sub_271847238(&v18, (a2 + 120));
    if (*(a2 + 176) != 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = 0;
    v12 = *(a1 + 24);
    if (*(v12 + 40) == 1)
    {
      v18 = (v12 + 16);
      sub_2718454CC(&v18, &v17);
      if (*(a2 + 176) == 1)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    LOBYTE(v18) = 0;
    std::ostream::write();
    if (*(a2 + 176) != 1)
    {
      goto LABEL_19;
    }
  }

LABEL_22:
  v17 = 1;
  v15 = *(a1 + 24);
  if (*(v15 + 40) == 1)
  {
    v18 = (v15 + 16);
    sub_2718454CC(&v18, &v17);
    v16 = *(a1 + 24);
    if (*(v16 + 40) != 1)
    {
      return sub_271847654((v16 + 8), (a2 + 152));
    }
  }

  else
  {
    LOBYTE(v18) = 1;
    std::ostream::write();
    v16 = *(a1 + 24);
    if (*(v16 + 40) != 1)
    {
      return sub_271847654((v16 + 8), (a2 + 152));
    }
  }

  v18 = (v16 + 16);
  return sub_271847238(&v18, (a2 + 152));
}

uint64_t **sub_27148CCE0(uint64_t a1, char *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v49 = *a2;
  v5 = *(a1 + 24);
  if (*(v5 + 40) == 1)
  {
    *v50 = v5 + 16;
    result = sub_2718454CC(v50, &v49);
  }

  else
  {
    if (v4 < 0)
    {
      v50[0] = -52;
      v50[1] = v4;
    }

    else
    {
      v50[0] = v4;
    }

    result = std::ostream::write();
  }

  v7 = *a2;
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      if (*(a2 + 26))
      {
        sub_2711308D4();
      }

      v11 = *(a1 + 24);
      if (*(v11 + 40) == 1)
      {
        *v50 = v11 + 16;
        sub_271846EFC(&v49, v50, a2 + 2);
        sub_271846EFC(&v49, v50, a2 + 3);
        sub_271846EFC(&v49, v50, a2 + 4);
        sub_271846EFC(&v49, v50, a2 + 5);
      }

      else
      {
        v23 = *(a2 + 2);
        v50[0] = -54;
        *&v50[1] = bswap32(v23);
        std::ostream::write();
        v24 = *(a2 + 3);
        v50[0] = -54;
        *&v50[1] = bswap32(v24);
        std::ostream::write();
        v25 = *(a2 + 4);
        v50[0] = -54;
        *&v50[1] = bswap32(v25);
        std::ostream::write();
        v26 = *(a2 + 5);
        v50[0] = -54;
        *&v50[1] = bswap32(v26);
        std::ostream::write();
      }

      v27 = *(a1 + 24);
      if (*(v27 + 40) == 1)
      {
        *v50 = v27 + 16;
        sub_271846EFC(&v49, v50, a2 + 6);
        sub_271846EFC(&v49, v50, a2 + 7);
        sub_271846EFC(&v49, v50, a2 + 8);
        sub_271846EFC(&v49, v50, a2 + 9);
      }

      else
      {
        v37 = *(a2 + 6);
        v50[0] = -54;
        *&v50[1] = bswap32(v37);
        std::ostream::write();
        v38 = *(a2 + 7);
        v50[0] = -54;
        *&v50[1] = bswap32(v38);
        std::ostream::write();
        v39 = *(a2 + 8);
        v50[0] = -54;
        *&v50[1] = bswap32(v39);
        std::ostream::write();
        v40 = *(a2 + 9);
        v50[0] = -54;
        *&v50[1] = bswap32(v40);
        std::ostream::write();
      }

      v41 = *(a1 + 24);
      if (*(v41 + 40) == 1)
      {
        *v50 = v41 + 16;
        sub_271846EFC(&v49, v50, a2 + 10);
        sub_271846EFC(&v49, v50, a2 + 11);
        sub_271846EFC(&v49, v50, a2 + 12);
        return sub_271846EFC(&v49, v50, a2 + 13);
      }

      else
      {
        v45 = *(a2 + 10);
        v50[0] = -54;
        *&v50[1] = bswap32(v45);
        std::ostream::write();
        v46 = *(a2 + 11);
        v50[0] = -54;
        *&v50[1] = bswap32(v46);
        std::ostream::write();
        v47 = *(a2 + 12);
        v50[0] = -54;
        *&v50[1] = bswap32(v47);
        std::ostream::write();
        v48 = *(a2 + 13);
        v50[0] = -54;
        *&v50[1] = bswap32(v48);
        return std::ostream::write();
      }
    }

    else if (v7 == 5)
    {
      if (*(a2 + 26) != 1)
      {
        sub_2711308D4();
      }

      v9 = *(a1 + 24);
      if (*(v9 + 40) == 1)
      {
        *v50 = v9 + 16;
        sub_271846FE4(&v49, v50, a2 + 1);
        sub_271846FE4(&v49, v50, a2 + 2);
        sub_271846FE4(&v49, v50, a2 + 3);
        sub_271846FE4(&v49, v50, a2 + 4);
      }

      else
      {
        *&v50[1] = bswap64(*(a2 + 1));
        v50[0] = -53;
        std::ostream::write();
        v15 = *(a2 + 2);
        v50[0] = -53;
        *&v50[1] = bswap64(v15);
        std::ostream::write();
        v16 = *(a2 + 3);
        v50[0] = -53;
        *&v50[1] = bswap64(v16);
        std::ostream::write();
        v17 = *(a2 + 4);
        v50[0] = -53;
        *&v50[1] = bswap64(v17);
        std::ostream::write();
      }

      v18 = *(a1 + 24);
      if (*(v18 + 40) == 1)
      {
        *v50 = v18 + 16;
        sub_271846FE4(&v49, v50, a2 + 5);
        sub_271846FE4(&v49, v50, a2 + 6);
        sub_271846FE4(&v49, v50, a2 + 7);
        sub_271846FE4(&v49, v50, a2 + 8);
      }

      else
      {
        *&v50[1] = bswap64(*(a2 + 5));
        v50[0] = -53;
        std::ostream::write();
        v33 = *(a2 + 6);
        v50[0] = -53;
        *&v50[1] = bswap64(v33);
        std::ostream::write();
        v34 = *(a2 + 7);
        v50[0] = -53;
        *&v50[1] = bswap64(v34);
        std::ostream::write();
        v35 = *(a2 + 8);
        v50[0] = -53;
        *&v50[1] = bswap64(v35);
        std::ostream::write();
      }

      v36 = *(a1 + 24);
      if (*(v36 + 40) == 1)
      {
        *v50 = v36 + 16;
        sub_271846FE4(&v49, v50, a2 + 9);
        sub_271846FE4(&v49, v50, a2 + 10);
        sub_271846FE4(&v49, v50, a2 + 11);
        return sub_271846FE4(&v49, v50, a2 + 12);
      }

      else
      {
        *&v50[1] = bswap64(*(a2 + 9));
        v50[0] = -53;
        std::ostream::write();
        v42 = *(a2 + 10);
        v50[0] = -53;
        *&v50[1] = bswap64(v42);
        std::ostream::write();
        v43 = *(a2 + 11);
        v50[0] = -53;
        *&v50[1] = bswap64(v43);
        std::ostream::write();
        v44 = *(a2 + 12);
        v50[0] = -53;
        *&v50[1] = bswap64(v44);
        return std::ostream::write();
      }
    }
  }

  else if (v7 == 1)
  {
    if (*(a2 + 26) != 2)
    {
      sub_2711308D4();
    }

    v10 = *(a1 + 24);
    if (*(v10 + 40) == 1)
    {
      *v50 = v10 + 16;
      sub_271846EFC(&v49, v50, a2 + 2);
      sub_271846EFC(&v49, v50, a2 + 3);
      sub_271846EFC(&v49, v50, a2 + 4);
    }

    else
    {
      v19 = *(a2 + 2);
      v50[0] = -54;
      *&v50[1] = bswap32(v19);
      std::ostream::write();
      v20 = *(a2 + 3);
      v50[0] = -54;
      *&v50[1] = bswap32(v20);
      std::ostream::write();
      v21 = *(a2 + 4);
      v50[0] = -54;
      *&v50[1] = bswap32(v21);
      std::ostream::write();
    }

    v22 = *(a1 + 24);
    if (*(v22 + 40) == 1)
    {
      *v50 = v22 + 16;
      sub_271846EFC(&v49, v50, a2 + 5);
      sub_271846EFC(&v49, v50, a2 + 6);
      return sub_271846EFC(&v49, v50, a2 + 7);
    }

    else
    {
      v30 = *(a2 + 5);
      v50[0] = -54;
      *&v50[1] = bswap32(v30);
      std::ostream::write();
      v31 = *(a2 + 6);
      v50[0] = -54;
      *&v50[1] = bswap32(v31);
      std::ostream::write();
      v32 = *(a2 + 7);
      v50[0] = -54;
      *&v50[1] = bswap32(v32);
      return std::ostream::write();
    }
  }

  else if (v7 == 2)
  {
    if (*(a2 + 26) != 3)
    {
      sub_2711308D4();
    }

    v8 = *(a1 + 24);
    if (*(v8 + 40) == 1)
    {
      *v50 = v8 + 16;
      sub_271846FE4(&v49, v50, a2 + 1);
      sub_271846FE4(&v49, v50, a2 + 2);
      sub_271846FE4(&v49, v50, a2 + 3);
    }

    else
    {
      *&v50[1] = bswap64(*(a2 + 1));
      v50[0] = -53;
      std::ostream::write();
      v12 = *(a2 + 2);
      v50[0] = -53;
      *&v50[1] = bswap64(v12);
      std::ostream::write();
      v13 = *(a2 + 3);
      v50[0] = -53;
      *&v50[1] = bswap64(v13);
      std::ostream::write();
    }

    v14 = *(a1 + 24);
    if (*(v14 + 40) == 1)
    {
      *v50 = v14 + 16;
      sub_271846FE4(&v49, v50, a2 + 4);
      sub_271846FE4(&v49, v50, a2 + 5);
      return sub_271846FE4(&v49, v50, a2 + 6);
    }

    else
    {
      *&v50[1] = bswap64(*(a2 + 4));
      v50[0] = -53;
      std::ostream::write();
      v28 = *(a2 + 5);
      v50[0] = -53;
      *&v50[1] = bswap64(v28);
      std::ostream::write();
      v29 = *(a2 + 6);
      v50[0] = -53;
      *&v50[1] = bswap64(v29);
      return std::ostream::write();
    }
  }

  return result;
}

void sub_27148D670(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_2715DF0F0(a2 + 48, v5);
        v7 = sub_27182815C(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_27182815C(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_2715CA870(&v26, v10);
        }

        sub_2713B6988(a2, v3 + 16, 6);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_2715DF0F0(a2 + 48, v12);
    v14 = sub_27182815C(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_27182815C(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_2715CA870(&v26, v17);
    }

    sub_2713DCA04(a2, v3 + 16, 5);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_2715DF0F0(a2 + 48, v19);
  v21 = sub_27182815C(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_27182815C(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_2715CA870(&v26, v24);
  }

  sub_2713DD090(a2, v3 + 16, 4);
}

void sub_27148DA74(uint64_t a1, uint64_t a2)
{
  v11[22] = *MEMORY[0x277D85DE8];
  if (**(a1 + 40) <= 1u)
  {
    v3 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v3 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v4 = *(a2 + 16);
  sub_2715DF0F0(a1 + 48, (a1 + 40));
  v5 = sub_27182815C(a1);
  *(a1 + 40) = v5;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, *"version" == 1936876918) ? (v6 = *"sion" == 1852795251) : (v6 = 0), v6))
  {
    *(a1 + 96) = 1;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v10[0] = 6;
    v11[0] = 1;
    v7 = sub_27182815C(a1);
    v8 = *v7;
    *v7 = 6;
    v10[0] = v8;
    v9 = v7[1];
    v7[1] = v11[0];
    v11[0] = v9;
    sub_2715CA870(v11, v8);
  }

  sub_27148BEB8(v10, v4);
  sub_27148DC68(a1, v10);
}

void sub_27148DC68(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "src_to_dst";
    *(a1 + 80) = 10;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_2715DF0F0(a1 + 48, (a1 + 40));
  v5 = sub_27182815C(a1);
  *(a1 + 40) = v5;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v6 = *(a1 + 72), v7 = *v6, v8 = *(v6 + 3), v7 == *"version") ? (v9 = v8 == *"sion") : (v9 = 0), v9))
  {
    *(a1 + 96) = 1;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v13 = 1;
    v10 = sub_27182815C(a1);
    v11 = *v10;
    *v10 = 6;
    v12 = v10[1];
    v10[1] = v13;
    v13 = v12;
    sub_2715CA870(&v13, v11);
  }

  sub_27148DF34(a1, (a2 + 8));
}

void sub_27148DF34(uint64_t a1, char *a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = "se3_type";
    *(a1 + 80) = 8;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v4 = 0;
  sub_27148C43C(&v5, &v3, a2);
}

void sub_27148E330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27148E34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27148E360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void *sub_27148E374(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v11 = *(a2 + 24);
      v15 = *(a2 + 32);
      sub_271120E64(v11, &v15, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 4);
    ++*(a2 + 40);
    sub_2713DE40C(a2, v3 + 16, 4);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (v4)
      {
        sub_2711308D4();
      }

      if (*(a2 + 40))
      {
        v5 = *(a2 + 24);
        v13 = *(a2 + 32);
        sub_271120E64(v5, &v13, 1);
      }

      MEMORY[0x2743BE7F0](*(a2 + 24), 6);
      ++*(a2 + 40);
      sub_2713B8244(a2, v3 + 16, 6);
      v6 = *(a2 + 34);
      if (!*(a2 + 40))
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = *(a2 + 24);
      v16 = *(a2 + 32);
      sub_271120E64(v8, &v16, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      v14 = *(a2 + 32);
      sub_271120E64(v7, &v14, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 5);
    ++*(a2 + 40);
    sub_2713DDE60(a2, v3 + 16, 5);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v9 = *(a2 + 24);
  v17 = v6;
  sub_271120E64(v9, &v17, 1);
  ++*(a2 + 40);
  return sub_27148E510(&v12, a2, v3 + 200);
}

void *sub_27148E510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40))
  {
    v5 = *(a2 + 24);
    v10[0] = *(a2 + 32);
    sub_271120E64(v5, v10, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 1);
  ++*(a2 + 40);
  sub_27148BEB8(v10, a3);
  sub_27148E650(a2, v10);
  if (v16 == 1 && v15 < 0)
  {
    operator delete(__p);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v6 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v7 = *(a2 + 24);
    v10[0] = *(a2 + 32);
    sub_271120E64(v7, v10, 1);
  }

  v8 = *(a2 + 24);
  v10[0] = v6;
  result = sub_271120E64(v8, v10, 1);
  ++*(a2 + 40);
  return result;
}

void sub_27148E650(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v13 = *(a1 + 32);
    sub_271120E64(v4, &v13, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), 1);
  ++*(a1 + 40);
  sub_27148E7A4(a1, a2 + 8);
  v5 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v6 = *(a1 + 24);
    v14 = *(a1 + 32);
    sub_271120E64(v6, &v14, 1);
  }

  v7 = *(a1 + 24);
  v15 = v5;
  sub_271120E64(v7, &v15, 1);
  ++*(a1 + 40);
  if (a2[144] == 1)
  {
    v10 = 1;
    sub_2718388F8(a1, &v10);
    sub_271839128(a1, (a2 + 120));
    v8 = a2[176];
    if (v8 != 1)
    {
LABEL_7:
      v11 = 0;
      sub_2718388F8(a1, &v11);
      return;
    }
  }

  else
  {
    v9 = 0;
    sub_2718388F8(a1, &v9);
    v8 = a2[176];
    if (v8 != 1)
    {
      goto LABEL_7;
    }
  }

  v12 = v8;
  sub_2718388F8(a1, &v12);
  sub_271839128(a1, (a2 + 152));
}

void sub_27148E7A4(uint64_t a1, unsigned __int8 *a2)
{
  v6 = *a2;
  sub_2718388F8(a1, &v6);
  v4 = *a2;
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      if (!*(a2 + 26))
      {
        sub_271838C54(a1, a2 + 2);
        sub_271838C54(a1, a2 + 3);
        sub_271838C54(a1, a2 + 4);
        sub_271838C54(a1, a2 + 5);
        sub_271838C54(a1, a2 + 6);
        sub_271838C54(a1, a2 + 7);
        sub_271838C54(a1, a2 + 8);
        sub_271838C54(a1, a2 + 9);
        sub_271838C54(a1, a2 + 10);
        sub_271838C54(a1, a2 + 11);
        sub_271838C54(a1, a2 + 12);
        sub_271838C54(a1, a2 + 13);
        return;
      }
    }

    else
    {
      if (v4 != 5)
      {
        return;
      }

      if (*(a2 + 26) == 1)
      {
        sub_271838EC0(a1, a2 + 1);
        sub_271838EC0(a1, a2 + 2);
        sub_271838EC0(a1, a2 + 3);
        sub_271838EC0(a1, a2 + 4);
        sub_271838EC0(a1, a2 + 5);
        sub_271838EC0(a1, a2 + 6);
        sub_271838EC0(a1, a2 + 7);
        sub_271838EC0(a1, a2 + 8);
        sub_271838EC0(a1, a2 + 9);
        sub_271838EC0(a1, a2 + 10);
        sub_271838EC0(a1, a2 + 11);
        v5 = a2 + 96;
        goto LABEL_10;
      }
    }

    goto LABEL_16;
  }

  if (v4 == 1)
  {
    if (*(a2 + 26) == 2)
    {
      sub_271838C54(a1, a2 + 2);
      sub_271838C54(a1, a2 + 3);
      sub_271838C54(a1, a2 + 4);
      sub_271838C54(a1, a2 + 5);
      sub_271838C54(a1, a2 + 6);
      sub_271838C54(a1, a2 + 7);
      return;
    }

    goto LABEL_16;
  }

  if (v4 != 2)
  {
    return;
  }

  if (*(a2 + 26) != 3)
  {
LABEL_16:
    sub_2711308D4();
  }

  sub_271838EC0(a1, a2 + 1);
  sub_271838EC0(a1, a2 + 2);
  sub_271838EC0(a1, a2 + 3);
  sub_271838EC0(a1, a2 + 4);
  sub_271838EC0(a1, a2 + 5);
  v5 = a2 + 48;
LABEL_10:
  sub_271838EC0(a1, v5);
}

void sub_27148EA08(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v11 = 4;
    sub_27173318C((a2 + 24), *(a2 + 32), &v11, v12, 4);
    v7 = v11;
    sub_2717312C0(a2);
    sub_2713DEB74(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    __src = 5;
    sub_27173318C((a2 + 24), *(a2 + 32), &__src, &v11, 4);
    v6 = __src;
    sub_2717312C0(a2);
    sub_2713DEA44(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v9 = 6;
    sub_27173318C((a2 + 24), *(a2 + 32), &v9, &__src, 4);
    v5 = v9;
    sub_2717312C0(a2);
    sub_2713B93E0(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  sub_27148EB58(&v13, a2, v3 + 200);
}

void sub_27148EB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = 1;
  sub_27173318C((a2 + 24), *(a2 + 32), &v5, v6, 4);
  sub_2717312C0(a2);
  sub_27148BEB8(&v5, a3);
  sub_27148EC7C(a2, &v5);
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v9 == 1 && v8 < 0)
  {
    operator delete(v7);
  }

  *(*(*(a2 + 56) - 8) + *(a2 + 24) + 10) = *(a2 + 32) - (*(*(a2 + 56) - 8) + *(a2 + 24)) - 18;
  *(a2 + 56) -= 8;
}

char *sub_27148EC7C(uint64_t a1, uint64_t a2)
{
  LODWORD(__src) = 1;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 4, 4);
  sub_2717312C0(a1);
  sub_27148EE80(a1, (a2 + 8));
  v4 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v4 + 10) = *(a1 + 32) - v4 - 18;
  *(a1 + 56) -= 8;
  if (*(a2 + 144) == 1)
  {
    LOBYTE(__src) = 1;
    sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 1, 1);
    v5 = *(a2 + 143);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 128);
    }

    __src = v5;
    sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v18, 8);
    v6 = *(a2 + 143);
    if (v6 >= 0)
    {
      v7 = (a2 + 120);
    }

    else
    {
      v7 = *(a2 + 120);
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 143);
    }

    else
    {
      v8 = *(a2 + 128);
    }

    sub_27173318C((a1 + 24), *(a1 + 32), v7, &v7[v8], v8);
    if (*(a2 + 176) != 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    LOBYTE(__src) = 0;
    sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 1, 1);
    if (*(a2 + 176) != 1)
    {
LABEL_11:
      LOBYTE(__src) = 0;
      v9 = *(a1 + 32);
      v10 = (a1 + 24);
      p_src = &__src;
      v12 = &__src + 1;
      v13 = 1;
      return sub_27173318C(v10, v9, p_src, v12, v13);
    }
  }

  LOBYTE(__src) = 1;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 1, 1);
  v14 = *(a2 + 175);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 160);
  }

  __src = v14;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v18, 8);
  v15 = *(a2 + 175);
  if (v15 >= 0)
  {
    p_src = (a2 + 152);
  }

  else
  {
    p_src = *(a2 + 152);
  }

  if (v15 >= 0)
  {
    v13 = *(a2 + 175);
  }

  else
  {
    v13 = *(a2 + 160);
  }

  v9 = *(a1 + 32);
  v10 = (a1 + 24);
  v12 = &p_src[v13];
  return sub_27173318C(v10, v9, p_src, v12, v13);
}

char *sub_27148EE80(uint64_t a1, unsigned __int8 *a2)
{
  __src = *a2;
  result = sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v10, 1);
  v5 = *a2;
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      if (*(a2 + 26))
      {
        goto LABEL_17;
      }

      v6 = 40;
      v8 = 24;
      v7 = 16;
    }

    else
    {
      if (v5 != 5)
      {
        return result;
      }

      if (*(a2 + 26) != 1)
      {
        goto LABEL_17;
      }

      v6 = 72;
      v8 = 40;
      v7 = 32;
    }

    sub_27173318C((a1 + 24), *(a1 + 32), a2 + 8, &a2[v7 + 8], v7);
    goto LABEL_15;
  }

  if (v5 == 1)
  {
    if (*(a2 + 26) == 2)
    {
      v6 = 20;
      v7 = 12;
      v8 = 8;
      goto LABEL_15;
    }

LABEL_17:
    sub_2711308D4();
  }

  if (v5 != 2)
  {
    return result;
  }

  if (*(a2 + 26) != 3)
  {
    goto LABEL_17;
  }

  v6 = 32;
  v7 = 24;
  v8 = 8;
LABEL_15:
  sub_27173318C((a1 + 24), *(a1 + 32), &a2[v8], &a2[v8 + v7], v7);
  return sub_27173318C((a1 + 24), *(a1 + 32), &a2[v6], &a2[v6 + v7], v7);
}

void sub_27148EFC0(uint64_t *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *v3;
  if (*v3 == 2)
  {
    v5[0] = 1;
    (*(*v1 + 104))(v1, v5);
    v4 = *v3;
  }

  if (v4 <= 0)
  {
    sub_27148BEB8(v5, v2);
    sub_27148F198(v1, v5);
    if (v11 == 1 && v10 < 0)
    {
      operator delete(__p);
    }

    if (v8 == 1 && v7 < 0)
    {
      operator delete(v6);
    }
  }

  else
  {
    (*(*v1 + 16))(v1);
    sub_27148BEB8(v5, v2);
    sub_27148F198(v1, v5);
    if (v11 == 1 && v10 < 0)
    {
      operator delete(__p);
    }

    if (v8 == 1 && v7 < 0)
    {
      operator delete(v6);
    }

    (*(*v1 + 24))(v1);
  }
}

uint64_t sub_27148F198(_DWORD *a1, uint64_t a2)
{
  v4 = a1[2];
  v8 = 1;
  (*(*a1 + 104))(a1, &v8);
  if (v4 < 1)
  {
    sub_27148F414(a1, (a2 + 8));
    v5 = *(a2 + 144);
    if (v5 == 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = 0;
    (*(*a1 + 80))(a1, &v9);
    v6 = *(a2 + 176);
    if (v6 != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v13 = 1;
    (*(*a1 + 104))(a1, &v13);
  }

  (*(*a1 + 16))(a1);
  sub_27148F414(a1, (a2 + 8));
  (*(*a1 + 24))(a1);
  v5 = *(a2 + 144);
  if (v5 != 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v10 = v5;
  (*(*a1 + 80))(a1, &v10);
  (*(*a1 + 144))(a1, a2 + 120);
  v6 = *(a2 + 176);
  if (v6 != 1)
  {
LABEL_6:
    v11 = 0;
    return (*(*a1 + 80))(a1, &v11);
  }

LABEL_9:
  v12 = v6;
  (*(*a1 + 80))(a1, &v12);
  return (*(*a1 + 144))(a1, a2 + 152);
}

void sub_27148F414(_BYTE *a1, char *a2)
{
  sub_27148F720(a1, a2);
  v4 = *a2;
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      if (*(a2 + 26))
      {
        goto LABEL_19;
      }

      v8 = (a2 + 8);
      sub_27148F888(a1, &v8);
    }

    else if (v4 == 5)
    {
      if (*(a2 + 26) != 1)
      {
        goto LABEL_19;
      }

      v8 = (a2 + 8);
      sub_27148FAC4(a1, &v8);
    }
  }

  else
  {
    if (v4 == 1)
    {
      if (*(a2 + 26) == 2)
      {
        (*(*a1 + 128))(a1, a2 + 8);
        (*(*a1 + 128))(a1, a2 + 12);
        (*(*a1 + 128))(a1, a2 + 16);
        (*(*a1 + 128))(a1, a2 + 20);
        (*(*a1 + 128))(a1, a2 + 24);
        v5 = *(*a1 + 128);
        v6 = (a2 + 28);
        v7 = a1;

        goto LABEL_7;
      }

LABEL_19:
      sub_2711308D4();
    }

    if (v4 == 2)
    {
      if (*(a2 + 26) == 3)
      {
        (*(*a1 + 136))(a1, a2 + 8);
        (*(*a1 + 136))(a1, a2 + 16);
        (*(*a1 + 136))(a1, a2 + 24);
        (*(*a1 + 136))(a1, a2 + 32);
        (*(*a1 + 136))(a1, a2 + 40);
        v5 = *(*a1 + 136);
        v6 = (a2 + 48);
        v7 = a1;

LABEL_7:
        v5(v7, v6);
        return;
      }

      goto LABEL_19;
    }
  }
}

void sub_27148F720(_BYTE *a1, char *a2)
{
  if ((a1[12] & 2) != 0)
  {
    v3 = 0;
    sub_27148C43C(&v4, v2, a2);
  }

  v2[0] = *a2;
  (*(*a1 + 80))(a1, v2);
}

void sub_27148F844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27148F860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27148F874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27148F888(uint64_t a1, void *a2)
{
  v3 = *a2;
  (*(*a1 + 128))(a1, *a2);
  (*(*a1 + 128))(a1, v3 + 4);
  (*(*a1 + 128))(a1, v3 + 8);
  (*(*a1 + 128))(a1, v3 + 12);
  (*(*a1 + 128))(a1, v3 + 16);
  (*(*a1 + 128))(a1, v3 + 20);
  (*(*a1 + 128))(a1, v3 + 24);
  (*(*a1 + 128))(a1, v3 + 28);
  (*(*a1 + 128))(a1, v3 + 32);
  (*(*a1 + 128))(a1, v3 + 36);
  (*(*a1 + 128))(a1, v3 + 40);
  v4 = *(*a1 + 128);

  return v4(a1, v3 + 44);
}

uint64_t sub_27148FAC4(uint64_t a1, void *a2)
{
  v3 = *a2;
  (*(*a1 + 136))(a1, *a2);
  (*(*a1 + 136))(a1, v3 + 8);
  (*(*a1 + 136))(a1, v3 + 16);
  (*(*a1 + 136))(a1, v3 + 24);
  (*(*a1 + 136))(a1, v3 + 32);
  (*(*a1 + 136))(a1, v3 + 40);
  (*(*a1 + 136))(a1, v3 + 48);
  (*(*a1 + 136))(a1, v3 + 56);
  (*(*a1 + 136))(a1, v3 + 64);
  (*(*a1 + 136))(a1, v3 + 72);
  (*(*a1 + 136))(a1, v3 + 80);
  v4 = *(*a1 + 136);

  return v4(a1, v3 + 88);
}

void sub_27148FD00(void *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v4)
  {
    sub_271490388(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v5)
  {
    sub_271490F70(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
    if (v6)
    {
      sub_2714919B4(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
    if (v7)
    {
      sub_27149259C(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
      if (v8)
      {
        sub_27149308C(&v10, v8);
      }

      else
      {
        sub_27148FECC(&v9, a1);
      }
    }
  }
}

void sub_27148FECC(uint64_t *a1, void **a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), v23);
    sub_2713B2524(v35, v23);
    sub_2713E031C(v3 + 16, v35);
    if (v47 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v46;
        v11 = __p;
        if (v46 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v46 = v9;
        operator delete(v11);
      }
    }

    if (v44 == 1 && v43 < 0)
    {
      operator delete(v42);
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v34 != 1)
    {
      goto LABEL_66;
    }

    v13 = v32;
    if (!v32)
    {
      goto LABEL_66;
    }

    v17 = v33;
    v15 = v32;
    if (v33 == v32)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v32;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v23);
  sub_2713B2524(v35, v23);
  sub_2713E031C(v3 + 16, v35);
  if (v47 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v46;
      v7 = __p;
      if (v46 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v46 = v5;
      operator delete(v7);
    }
  }

  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v34 != 1)
  {
    goto LABEL_66;
  }

  v13 = v32;
  if (!v32)
  {
    goto LABEL_66;
  }

  v14 = v33;
  v15 = v32;
  if (v33 != v32)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v33 = v13;
  operator delete(v15);
LABEL_66:
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  v19 = *a2;
  v23[0] = a2[1];
  v20 = v23[0];
  v35[0] = 6;
  v19[13](a2, v35);
  if (v20 < 1)
  {
    if (v35[0] < 3u)
    {
      sub_2713C66D4(v35, a2, v3 + 16, v35[0]);
    }

    else
    {
      sub_2713C68E0(a2, v3 + 16, v35[0]);
    }
  }

  else
  {
    sub_2713C62C8(v23, a2, v3 + 16, v35[0]);
  }

  v21 = *a2;
  v23[0] = a2[1];
  v22 = v23[0];
  v35[0] = 1;
  v21[13](a2, v35);
  if (v22 < 1)
  {
    sub_271493E6C(a2, v3 + 200);
  }

  else
  {
    sub_271493CC4(v23, a2, v3 + 200, v35[0]);
  }
}

void sub_271490388(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713BB450(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0((v3 + 16), v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_271490860(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "src_to_dst";
  *(a1 + 96) = 10;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v6[0] = *(a1 + 32);
  v5 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v6);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v6[0] = "version";
  v6[1] = 7;
  v7 = 1;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, &v7);
  sub_2714909B8(a1, (a2 + 8));
}

void sub_2714909B8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 104);
  *(a1 + 88) = "se3_type";
  *(a1 + 96) = 8;
  if ((v2 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v3 = a2;
  sub_271490DEC(a1, &v3);
}

void sub_271490DEC(void *a1, _BYTE **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = sub_27182D6C4(a1);
  ++a1[14];
  v7 = 0;
  v6 = 0uLL;
  sub_2715D6E6C(v3, &v6);
  v5 = v7;
  *__p = v6;
  operator new();
}

void sub_271490EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_271490F70(uint64_t *a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v43;
        v11 = __p;
        if (v43 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v43 = v9;
        operator delete(v11);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v17 = v30;
    v15 = v29;
    if (v30 == v29)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v29;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v43;
      v7 = __p;
      if (v43 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v43 = v5;
      operator delete(v7);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v14 = v30;
  v15 = v29;
  if (v30 != v29)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v30 = v13;
  operator delete(v15);
LABEL_66:
  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23);
  }

  if (v22 == 1 && v21 < 0)
  {
    operator delete(v20[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  LODWORD(v20[0]) = 6;
  sub_27183FB7C(a2[6], v20);
  sub_2713BF6F4(v20, a2, v3 + 16, LODWORD(v20[0]));
  LODWORD(v20[0]) = 1;
  sub_27183FB7C(a2[6], v20);
  return sub_271491394(v20, a2, v3 + 200, v20[0]);
}

uint64_t sub_271491394(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v10 = 0;
  sub_27183FF6C(a2[6], &v10);
  *&v9 = (*(a2[2] + 32))(a2 + 2);
  *(&v9 + 1) = v10;
  sub_2713BF82C((a2 + 3), &v9);
  sub_2714914A0(a2, a3);
  v6 = a2[4];
  result = (*(a2[2] + 32))(a2 + 2);
  v8 = *(v6 - 16) - result + *(v6 - 8);
  if (v8)
  {
    result = (*(a2[2] + 40))(a2 + 2, v8);
  }

  a2[4] -= 16;
  return result;
}

void sub_2714914A0(uint64_t a1, uint64_t a2)
{
  v5 = 1;
  sub_27183FB7C(*(a1 + 48), &v5);
  sub_2714915C4(&v4, a1, a2 + 8, v5);
  v6 = 0;
  sub_27183F824(*(a1 + 48), &v6);
  if (v6)
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      *(a2 + 120) = 0;
      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      *(a2 + 144) = 1;
    }

    sub_2718403E0(*(a1 + 48), (a2 + 120));
  }

  else if (*(a2 + 144))
  {
    if (*(a2 + 143) < 0)
    {
      operator delete(*(a2 + 120));
    }

    *(a2 + 144) = 0;
  }

  v7 = 0;
  sub_27183F824(*(a1 + 48), &v7);
  if (v7)
  {
    if ((*(a2 + 176) & 1) == 0)
    {
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
      *(a2 + 168) = 0;
      *(a2 + 176) = 1;
    }

    sub_2718403E0(*(a1 + 48), (a2 + 152));
  }

  else if (*(a2 + 176))
  {
    if (*(a2 + 175) < 0)
    {
      operator delete(*(a2 + 152));
    }

    *(a2 + 176) = 0;
  }
}

uint64_t sub_2714915C4(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v10 = 0;
  sub_27183FF6C(a2[6], &v10);
  *&v9 = (*(a2[2] + 32))(a2 + 2);
  *(&v9 + 1) = v10;
  sub_2713BF82C((a2 + 3), &v9);
  sub_2714916D0(a2, a3);
  v6 = a2[4];
  result = (*(a2[2] + 32))(a2 + 2);
  v8 = *(v6 - 16) - result + *(v6 - 8);
  if (v8)
  {
    result = (*(a2[2] + 40))(a2 + 2, v8);
  }

  a2[4] -= 16;
  return result;
}

void sub_2714916D0(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  sub_27183F824(*(a1 + 48), &v15);
  v4 = v15;
  *a2 = v15;
  if (v4 <= 3)
  {
    if (v4 != 1)
    {
      if (v4 != 2)
      {
        return;
      }

      if (*(a2 + 104) != 3)
      {
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 104) = 3;
      }

      v5 = *(a1 + 48);
      sub_2718401A8(v5, (a2 + 8));
      sub_2718401A8(v5, (a2 + 16));
      sub_2718401A8(v5, (a2 + 24));
      v6 = *(a1 + 48);
      sub_2718401A8(v6, (a2 + 32));
      sub_2718401A8(v6, (a2 + 40));
      v7 = (a2 + 48);
      goto LABEL_12;
    }

    if (*(a2 + 104) != 2)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 104) = 2;
    }

    v10 = *(a1 + 48);
    sub_271840060(v10, (a2 + 8));
    sub_271840060(v10, (a2 + 12));
    sub_271840060(v10, (a2 + 16));
    v11 = *(a1 + 48);
    sub_271840060(v11, (a2 + 20));
    sub_271840060(v11, (a2 + 24));
    v12 = (a2 + 28);
LABEL_20:
    sub_271840060(v11, v12);
    return;
  }

  if (v4 == 4)
  {
    if (*(a2 + 104))
    {
      *(a2 + 40) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 8) = 0u;
      *(a2 + 104) = 0;
    }

    v13 = *(a1 + 48);
    sub_271840060(v13, (a2 + 8));
    sub_271840060(v13, (a2 + 12));
    sub_271840060(v13, (a2 + 16));
    sub_271840060(v13, (a2 + 20));
    v14 = *(a1 + 48);
    sub_271840060(v14, (a2 + 24));
    sub_271840060(v14, (a2 + 28));
    sub_271840060(v14, (a2 + 32));
    sub_271840060(v14, (a2 + 36));
    v11 = *(a1 + 48);
    sub_271840060(v11, (a2 + 40));
    sub_271840060(v11, (a2 + 44));
    sub_271840060(v11, (a2 + 48));
    v12 = (a2 + 52);
    goto LABEL_20;
  }

  if (v4 != 5)
  {
    return;
  }

  if (*(a2 + 104) != 1)
  {
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 104) = 1;
  }

  v8 = *(a1 + 48);
  sub_2718401A8(v8, (a2 + 8));
  sub_2718401A8(v8, (a2 + 16));
  sub_2718401A8(v8, (a2 + 24));
  sub_2718401A8(v8, (a2 + 32));
  v9 = *(a1 + 48);
  sub_2718401A8(v9, (a2 + 40));
  sub_2718401A8(v9, (a2 + 48));
  sub_2718401A8(v9, (a2 + 56));
  sub_2718401A8(v9, (a2 + 64));
  v6 = *(a1 + 48);
  sub_2718401A8(v6, (a2 + 72));
  sub_2718401A8(v6, (a2 + 80));
  sub_2718401A8(v6, (a2 + 88));
  v7 = (a2 + 96);
LABEL_12:
  sub_2718401A8(v6, v7);
}

void sub_2714919B4(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713C0E9C(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0((v3 + 16), v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_271491E8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "src_to_dst";
  *(a1 + 96) = 10;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v6[0] = *(a1 + 32);
  v5 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v6);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v6[0] = "version";
  v6[1] = 7;
  v7 = 1;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182DBE0(a1, &v7);
  sub_271491FE4(a1, (a2 + 8));
}

void sub_271491FE4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 104);
  *(a1 + 88) = "se3_type";
  *(a1 + 96) = 8;
  if ((v2 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v3 = a2;
  sub_271492418(a1, &v3);
}

void sub_271492418(void *a1, _BYTE **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = sub_27182D2AC(a1);
  ++a1[14];
  v7 = 0;
  v6 = 0uLL;
  sub_2715D666C(v3, &v6);
  v5 = v7;
  *__p = v6;
  operator new();
}

void sub_271492508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_27149259C(uint64_t *a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_2713DA430(v3 + 16, &v22);
      sub_2713B2524(v36, &v22);
      sub_2713E031C(v3 + 16, v36);
      if (v48 == 1)
      {
        v5 = __p;
        if (__p)
        {
          v6 = v47;
          v7 = __p;
          if (v47 != __p)
          {
            do
            {
              v8 = *(v6 - 1);
              v6 -= 3;
              if (v8 < 0)
              {
                operator delete(*v6);
              }
            }

            while (v6 != v5);
            v7 = __p;
          }

          v47 = v5;
          operator delete(v7);
        }
      }

      if (v45 == 1 && v44 < 0)
      {
        operator delete(v43);
      }

      if (v42 == 1 && v41 < 0)
      {
        operator delete(v40);
      }

      if (v39 == 1 && v38 < 0)
      {
        operator delete(v37);
      }

      if (v35 != 1)
      {
        goto LABEL_66;
      }

      v13 = v33;
      if (!v33)
      {
        goto LABEL_66;
      }

      v14 = v34;
      v15 = v33;
      if (v34 == v33)
      {
LABEL_65:
        v34 = v13;
        operator delete(v15);
LABEL_66:
        if (v32 == 1 && v31 < 0)
        {
          operator delete(v30);
        }

        if (v29 == 1 && v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 == 1 && v25 < 0)
        {
          operator delete(v24);
        }

        if (*(v3 + 192))
        {
          sub_2711308D4();
        }

        goto LABEL_76;
      }

      while (1)
      {
        v16 = v14;
        if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
        {
          operator delete(*(v14 - 8));
          v14 -= 12;
          if (*(v16 - 72) == 1)
          {
LABEL_37:
            if (*(v16 - 73) < 0)
            {
              operator delete(*v14);
            }
          }
        }

        else
        {
          v14 -= 12;
          if (*(v16 - 72) == 1)
          {
            goto LABEL_37;
          }
        }

        if (v14 == v13)
        {
          goto LABEL_64;
        }
      }
    }

    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), &v22);
    sub_2713B2524(v36, &v22);
    sub_2713E031C(v3 + 16, v36);
    if (v48 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v47;
        v11 = __p;
        if (v47 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v47 = v9;
        operator delete(v11);
      }
    }

    if (v45 == 1 && v44 < 0)
    {
      operator delete(v43);
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v35 != 1)
    {
      goto LABEL_66;
    }

    v13 = v33;
    if (!v33)
    {
      goto LABEL_66;
    }

    v17 = v34;
    v15 = v33;
    if (v34 == v33)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v33;
        goto LABEL_65;
      }
    }
  }

LABEL_76:
  LODWORD(v22) = 6;
  sub_27183A9AC(a2, &v22);
  if (v22 >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = v22;
  }

  if (v22 > 2)
  {
    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, &v22);
      if (SHIBYTE(v24) < 0)
      {
        if (v23 == 1 && *(a2 + 72) == *v22)
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v24) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v24) == 1 && *(a2 + 72) == v22)
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v24) < 0)
      {
LABEL_93:
        operator delete(v22);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  sub_2713C30AC(&v22, a2, v3 + 16, v19);
LABEL_95:
  LODWORD(v22) = 1;
  sub_27183A9AC(a2, &v22);
  sub_271492B30(a2, v3 + 200);
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a2, &v22);
    if (SHIBYTE(v24) < 0)
    {
      if (v23 == 1 && *(a2 + 72) == *v22)
      {
LABEL_105:
        v21 = 0;
        if (SHIBYTE(v24) < 0)
        {
          goto LABEL_108;
        }

        goto LABEL_96;
      }
    }

    else if (SHIBYTE(v24) == 1 && *(a2 + 72) == v22)
    {
      goto LABEL_105;
    }

    v21 = 1;
    if (SHIBYTE(v24) < 0)
    {
LABEL_108:
      operator delete(v22);
    }

LABEL_96:
    if ((v21 & 1) == 0)
    {
      return;
    }
  }
}

void sub_271492B30(uint64_t a1, uint64_t a2)
{
  LODWORD(__p[0]) = 1;
  sub_27183A9AC(a1, __p);
  sub_271492DCC(a1, a2 + 8);
  while ((*(a1 + 131) & 1) == 0 && (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a1, __p);
    if (SHIBYTE(v7) < 0)
    {
      if (__p[1] == 1 && *(a1 + 72) == *__p[0])
      {
LABEL_11:
        v4 = 0;
        if (SHIBYTE(v7) < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_2;
      }
    }

    else if (SHIBYTE(v7) == 1 && *(a1 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_11;
    }

    v4 = 1;
    if (SHIBYTE(v7) < 0)
    {
LABEL_14:
      operator delete(__p[0]);
    }

LABEL_2:
    if ((v4 & 1) == 0)
    {
      break;
    }
  }

  v5 = 0;
  sub_271839D90(a1, &v5);
  if (v5)
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      *(a2 + 120) = 0;
      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      *(a2 + 144) = 1;
    }

    ++*(a1 + 80);
    if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
    {
      *(a1 + 132) = 1;
    }

    else
    {
      sub_27183D78C(a1, __p);
      if (*(a2 + 143) < 0)
      {
        operator delete(*(a2 + 120));
      }

      *(a2 + 120) = *__p;
      *(a2 + 136) = v7;
      ++*(a1 + 104);
    }
  }

  else if (*(a2 + 144))
  {
    if (*(a2 + 143) < 0)
    {
      operator delete(*(a2 + 120));
    }

    *(a2 + 144) = 0;
  }

  v5 = 0;
  sub_271839D90(a1, &v5);
  if (v5)
  {
    if ((*(a2 + 176) & 1) == 0)
    {
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
      *(a2 + 168) = 0;
      *(a2 + 176) = 1;
    }

    ++*(a1 + 80);
    if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
    {
      *(a1 + 132) = 1;
    }

    else
    {
      sub_27183D78C(a1, __p);
      if (*(a2 + 175) < 0)
      {
        operator delete(*(a2 + 152));
      }

      *(a2 + 152) = *__p;
      *(a2 + 168) = v7;
      ++*(a1 + 104);
    }
  }

  else if (*(a2 + 176))
  {
    if (*(a2 + 175) < 0)
    {
      operator delete(*(a2 + 152));
    }

    *(a2 + 176) = 0;
  }
}

void sub_271492DCC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  sub_271839D90(a1, &v6);
  v4 = v6;
  *a2 = v6;
  if (v4 > 3)
  {
    if (v4 != 4)
    {
      if (v4 != 5)
      {
        return;
      }

      if (*(a2 + 104) != 1)
      {
        *(a2 + 88) = 0u;
        *(a2 + 72) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 104) = 1;
      }

      sub_27183C0A0(a1, (a2 + 8));
      sub_27183C0A0(a1, (a2 + 16));
      sub_27183C0A0(a1, (a2 + 24));
      sub_27183C0A0(a1, (a2 + 32));
      sub_27183C0A0(a1, (a2 + 40));
      sub_27183C0A0(a1, (a2 + 48));
      sub_27183C0A0(a1, (a2 + 56));
      sub_27183C0A0(a1, (a2 + 64));
      sub_27183C0A0(a1, (a2 + 72));
      sub_27183C0A0(a1, (a2 + 80));
      sub_27183C0A0(a1, (a2 + 88));
      v5 = (a2 + 96);
      goto LABEL_12;
    }

    if (*(a2 + 104))
    {
      *(a2 + 40) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 8) = 0u;
      *(a2 + 104) = 0;
    }

    sub_27183BD60(a1, (a2 + 8));
    sub_27183BD60(a1, (a2 + 12));
    sub_27183BD60(a1, (a2 + 16));
    sub_27183BD60(a1, (a2 + 20));
    sub_27183BD60(a1, (a2 + 24));
    sub_27183BD60(a1, (a2 + 28));
    sub_27183BD60(a1, (a2 + 32));
    sub_27183BD60(a1, (a2 + 36));
    sub_27183BD60(a1, (a2 + 40));
    sub_27183BD60(a1, (a2 + 44));
    sub_27183BD60(a1, (a2 + 48));
    sub_27183BD60(a1, (a2 + 52));
  }

  else
  {
    if (v4 != 1)
    {
      if (v4 != 2)
      {
        return;
      }

      if (*(a2 + 104) != 3)
      {
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 104) = 3;
      }

      sub_27183C0A0(a1, (a2 + 8));
      sub_27183C0A0(a1, (a2 + 16));
      sub_27183C0A0(a1, (a2 + 24));
      sub_27183C0A0(a1, (a2 + 32));
      sub_27183C0A0(a1, (a2 + 40));
      v5 = (a2 + 48);
LABEL_12:
      sub_27183C0A0(a1, v5);
      return;
    }

    if (*(a2 + 104) != 2)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 104) = 2;
    }

    sub_27183BD60(a1, (a2 + 8));
    sub_27183BD60(a1, (a2 + 12));
    sub_27183BD60(a1, (a2 + 16));
    sub_27183BD60(a1, (a2 + 20));
    sub_27183BD60(a1, (a2 + 24));
    sub_27183BD60(a1, (a2 + 28));
  }
}

void *sub_27149308C(uint64_t *a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v43;
        v11 = __p;
        if (v43 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v43 = v9;
        operator delete(v11);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v17 = v30;
    v15 = v29;
    if (v30 == v29)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v29;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v43;
      v7 = __p;
      if (v43 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v43 = v5;
      operator delete(v7);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v14 = v30;
  v15 = v29;
  if (v30 != v29)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v30 = v13;
  operator delete(v15);
LABEL_66:
  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23);
  }

  if (v22 == 1 && v21 < 0)
  {
    operator delete(v20[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  sub_2713C49D0(v20, a2, v3 + 16);
  return sub_27149347C(v20, a2, v3 + 200);
}

void *sub_27149347C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  a2[6] = v3 + 4;
  sub_27173170C(a2);
  sub_271493598(&v13, a2, a3 + 8);
  v13 = "src";
  v14 = 3;
  v15 = a3 + 120;
  sub_2713C4ED8(a2, &v13);
  v13 = "dst";
  v14 = 3;
  v15 = a3 + 152;
  result = sub_2713C4ED8(a2, &v13);
  v10 = a2[12];
  v11 = a2[9];
  a2[6] = *(v10 - 8) + *(v11 - 8) + 8;
  a2[9] = v11 - 8;
  a2[12] = v10 - 8;
  return result;
}

void sub_271493598(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  a2[6] = v3 + 4;
  sub_27173170C(a2);
  sub_271493674(a2, a3);
  v9 = a2[12];
  v10 = a2[9];
  a2[6] = *(v9 - 8) + *(v10 - 8) + 8;
  a2[9] = v10 - 8;
  a2[12] = v9 - 8;
}

double sub_271493674(void *result, uint64_t a2)
{
  v2 = result[6];
  if (result[7] <= v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v3 = *(result[3] + v2);
  result[6] = v2 + 1;
  *a2 = v3;
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      if (*(a2 + 104))
      {
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 104) = 0;
      }

      v6 = a2 + 8;

      *&v4 = sub_271493A30(result, v6).n128_u64[0];
    }

    else if (v3 == 5)
    {
      if (*(a2 + 104) != 1)
      {
        *(a2 + 88) = 0u;
        *(a2 + 72) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 104) = 1;
      }

      v5 = (a2 + 8);

      *&v4 = sub_271493B74(result, v5).n128_u64[0];
    }
  }

  else if (v3 == 1)
  {

    sub_2714937E8(result, a2);
  }

  else if (v3 == 2)
  {

    *&v4 = sub_271493908(result, a2).n128_u64[0];
  }

  return v4;
}

void *sub_2714937E8(void *result, uint64_t a2)
{
  if (*(a2 + 104) != 2)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 104) = 2;
  }

  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xB)
  {
    goto LABEL_10;
  }

  v6 = (result[3] + v2);
  v7 = *v6;
  *(a2 + 16) = *(v6 + 2);
  *(a2 + 8) = v7;
  v8 = result[7];
  v9 = result[6] + 12;
  result[6] = v9;
  v4 = v8 >= v9;
  v10 = v8 - v9;
  if (!v4)
  {
    v10 = 0;
  }

  if (v10 <= 0xB)
  {
LABEL_10:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v11 = result[3] + v9;
  v12 = *v11;
  *(a2 + 28) = *(v11 + 8);
  *(a2 + 20) = v12;
  result[6] += 12;
  return result;
}

__n128 sub_271493908(void *a1, uint64_t a2)
{
  if (*(a2 + 104) != 3)
  {
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 104) = 3;
  }

  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0x17)
  {
    goto LABEL_10;
  }

  v6 = (a1[3] + v2);
  v7 = *v6;
  *(a2 + 24) = *(v6 + 2);
  *(a2 + 8) = v7;
  v8 = a1[7];
  v9 = a1[6] + 24;
  a1[6] = v9;
  v4 = v8 >= v9;
  v10 = v8 - v9;
  if (!v4)
  {
    v10 = 0;
  }

  if (v10 <= 0x17)
  {
LABEL_10:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v11 = (a1[3] + v9);
  result = *v11;
  *(a2 + 48) = v11[1].n128_u64[0];
  *(a2 + 32) = result;
  a1[6] += 24;
  return result;
}

__n128 sub_271493A30(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xF)
  {
    goto LABEL_11;
  }

  *a2 = *(a1[3] + v2);
  v6 = a1[7];
  v7 = a1[6] + 16;
  a1[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 0xF)
  {
    goto LABEL_11;
  }

  *(a2 + 16) = *(a1[3] + v7);
  v9 = a1[7];
  v10 = a1[6] + 16;
  a1[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0xF)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  result = *(a1[3] + v10);
  *(a2 + 32) = result;
  a1[6] += 16;
  return result;
}

__n128 sub_271493B74(void *a1, _OWORD *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0x1F)
  {
    goto LABEL_11;
  }

  v6 = (a1[3] + v2);
  v7 = v6[1];
  *a2 = *v6;
  a2[1] = v7;
  v8 = a1[7];
  v9 = a1[6] + 32;
  a1[6] = v9;
  v4 = v8 >= v9;
  v10 = v8 - v9;
  if (!v4)
  {
    v10 = 0;
  }

  if (v10 <= 0x1F)
  {
    goto LABEL_11;
  }

  v11 = (a1[3] + v9);
  v12 = v11[1];
  a2[2] = *v11;
  a2[3] = v12;
  v13 = a1[7];
  v14 = a1[6] + 32;
  a1[6] = v14;
  v4 = v13 >= v14;
  v15 = v13 - v14;
  if (!v4)
  {
    v15 = 0;
  }

  if (v15 <= 0x1F)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v16 = a1[3] + v14;
  result = *v16;
  v18 = *(v16 + 16);
  a2[4] = *v16;
  a2[5] = v18;
  a1[6] += 32;
  return result;
}

void sub_271493CC4(int *a1, void *a2, uint64_t a3, int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    v9 = 1;
    (*(*a2 + 104))(a2, &v9);
    if (v9 >= 2)
    {
      v8 = v9;
      if ((atomic_load_explicit(&qword_280878D30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878D30))
      {
        sub_2718519B4(qword_280878D18, "cv3d::kit::viz::Transform3Sample]", 0x20uLL);
        __cxa_guard_release(&qword_280878D30);
        sub_271847D5C(qword_280878D18, v8, 1);
      }

      sub_271847D5C(qword_280878D18, v8, 1);
    }

    v6 = *a1;
  }

  if (v6 <= 0)
  {
    sub_271493E6C(a2, a3);
  }

  else
  {
    (*(*a2 + 16))(a2);
    sub_271493E6C(a2, a3);
    (*(*a2 + 24))(a2);
  }
}

void sub_271493E6C(void *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = 1;
  (*(v4 + 104))(a1, &v6);
  if (v5 < 1)
  {
    sub_271494204(a1, (a2 + 8));
  }

  else
  {
    sub_27149405C(&v5, a1, (a2 + 8), v6);
  }

  v7 = 0;
  (*(*a1 + 80))(a1, &v7);
  if (v7)
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      *(a2 + 120) = 0;
      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      *(a2 + 144) = 1;
    }

    (*(*a1 + 144))(a1, a2 + 120);
  }

  else if (*(a2 + 144))
  {
    if (*(a2 + 143) < 0)
    {
      operator delete(*(a2 + 120));
    }

    *(a2 + 144) = 0;
  }

  v8 = 0;
  (*(*a1 + 80))(a1, &v8);
  if (v8)
  {
    if ((*(a2 + 176) & 1) == 0)
    {
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
      *(a2 + 168) = 0;
      *(a2 + 176) = 1;
    }

    (*(*a1 + 144))(a1, a2 + 152);
  }

  else if (*(a2 + 176))
  {
    if (*(a2 + 175) < 0)
    {
      operator delete(*(a2 + 152));
    }

    *(a2 + 176) = 0;
  }
}

void sub_27149405C(int *a1, _BYTE *a2, unsigned __int8 *a3, int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    v9 = 1;
    (*(*a2 + 104))(a2, &v9);
    if (v9 >= 2)
    {
      v8 = v9;
      if ((atomic_load_explicit(&qword_280878D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878D50))
      {
        sub_2718519B4(qword_280878D38, "cv3d::kit::viz::SE3Sample]", 0x19uLL);
        __cxa_guard_release(&qword_280878D50);
        sub_271847D5C(qword_280878D38, v8, 1);
      }

      sub_271847D5C(qword_280878D38, v8, 1);
    }

    v6 = *a1;
  }

  if (v6 <= 0)
  {
    sub_271494204(a2, a3);
  }

  else
  {
    (*(*a2 + 16))(a2);
    sub_271494204(a2, a3);
    (*(*a2 + 24))(a2);
  }
}

void sub_271494204(_BYTE *a1, unsigned __int8 *a2)
{
  v5 = a2;
  sub_27149454C(a1, &v5);
  v4 = *a2;
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      if (*(a2 + 26))
      {
        *(a2 + 24) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 26) = 0;
      }

      v5 = a2 + 8;
      sub_2714946C4(a1, &v5);
    }

    else if (v4 == 5)
    {
      if (*(a2 + 26) != 1)
      {
        *(a2 + 72) = 0u;
        *(a2 + 88) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 26) = 1;
      }

      v5 = a2 + 8;
      sub_271494900(a1, &v5);
    }
  }

  else if (v4 == 1)
  {
    if (*(a2 + 26) != 2)
    {
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *(a2 + 3) = 0;
      *(a2 + 26) = 2;
    }

    (*(*a1 + 128))(a1, a2 + 8);
    (*(*a1 + 128))(a1, a2 + 12);
    (*(*a1 + 128))(a1, a2 + 16);
    (*(*a1 + 128))(a1, a2 + 20);
    (*(*a1 + 128))(a1, a2 + 24);
    (*(*a1 + 128))(a1, a2 + 28);
  }

  else if (v4 == 2)
  {
    if (*(a2 + 26) != 3)
    {
      *(a2 + 40) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 8) = 0u;
      *(a2 + 26) = 3;
    }

    (*(*a1 + 136))(a1, a2 + 8);
    (*(*a1 + 136))(a1, a2 + 16);
    (*(*a1 + 136))(a1, a2 + 24);
    (*(*a1 + 136))(a1, a2 + 32);
    (*(*a1 + 136))(a1, a2 + 40);
    (*(*a1 + 136))(a1, a2 + 48);
  }
}

void sub_27149454C(_BYTE *a1, _BYTE **a2)
{
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  LOBYTE(__p[0]) = 0;
  (*(*a1 + 80))(a1, __p);
  **a2 = __p[0];
}

void sub_271494670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_27184D728(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2714946C4(uint64_t a1, void *a2)
{
  v3 = *a2;
  (*(*a1 + 128))(a1, *a2);
  (*(*a1 + 128))(a1, v3 + 4);
  (*(*a1 + 128))(a1, v3 + 8);
  (*(*a1 + 128))(a1, v3 + 12);
  (*(*a1 + 128))(a1, v3 + 16);
  (*(*a1 + 128))(a1, v3 + 20);
  (*(*a1 + 128))(a1, v3 + 24);
  (*(*a1 + 128))(a1, v3 + 28);
  (*(*a1 + 128))(a1, v3 + 32);
  (*(*a1 + 128))(a1, v3 + 36);
  (*(*a1 + 128))(a1, v3 + 40);
  v4 = *(*a1 + 128);

  return v4(a1, v3 + 44);
}

uint64_t sub_271494900(uint64_t a1, void *a2)
{
  v3 = *a2;
  (*(*a1 + 136))(a1, *a2);
  (*(*a1 + 136))(a1, v3 + 8);
  (*(*a1 + 136))(a1, v3 + 16);
  (*(*a1 + 136))(a1, v3 + 24);
  (*(*a1 + 136))(a1, v3 + 32);
  (*(*a1 + 136))(a1, v3 + 40);
  (*(*a1 + 136))(a1, v3 + 48);
  (*(*a1 + 136))(a1, v3 + 56);
  (*(*a1 + 136))(a1, v3 + 64);
  (*(*a1 + 136))(a1, v3 + 72);
  (*(*a1 + 136))(a1, v3 + 80);
  v4 = *(*a1 + 136);

  return v4(a1, v3 + 88);
}

uint64_t sub_271494DC0(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0((a1 + 16), &v37);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v37);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v37);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_271399EB0((a2 + 16), &v22);
  }

  else if (v5 == 1)
  {
    sub_2713DA430(a2 + 16, &v22);
  }

  else
  {
    if (v5)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a2 + 16, &v22);
  }

  if (v37 != v22 || v38 != v23)
  {
    goto LABEL_23;
  }

  v21[0] = &v39;
  v21[1] = &v42;
  v21[2] = &v43;
  v21[3] = &v46;
  v21[4] = &v49;
  v20[0] = &v24;
  v20[1] = &v27;
  v20[2] = &v28;
  v20[3] = &v31;
  v20[4] = &__p;
  if (!sub_2714FBB90(v21, v20))
  {
    v8 = 0;
    goto LABEL_26;
  }

  if (*(a1 + 200) != *(a2 + 200))
  {
LABEL_23:
    v8 = 0;
    if (v36 != 1)
    {
      goto LABEL_40;
    }

    goto LABEL_27;
  }

  v6 = *(a2 + 256);
  v7 = *(a1 + 256);
  v8 = v7 == v6;
  if (v7 != v6 || !*(a1 + 256) || (v9 = *(a1 + 248), v10 = *(a2 + 248), v8 = v10 == v9, v9 == -1) || v10 != v9)
  {
LABEL_26:
    if (v36 != 1)
    {
      goto LABEL_40;
    }

    goto LABEL_27;
  }

  v21[0] = v20;
  v8 = (off_288131AC0[v9])(v21, a1 + 208, a2 + 208);
  if (v36 != 1)
  {
    goto LABEL_40;
  }

LABEL_27:
  v11 = __p;
  if (__p)
  {
    v12 = v35;
    v13 = __p;
    if (v35 == __p)
    {
LABEL_39:
      v35 = v11;
      operator delete(v13);
      goto LABEL_40;
    }

    while (1)
    {
      v14 = v12;
      if (*(v12 - 16) == 1 && *(v12 - 41) < 0)
      {
        operator delete(*(v12 - 8));
        v12 -= 12;
        if (*(v14 - 72) == 1)
        {
LABEL_34:
          if (*(v14 - 73) < 0)
          {
            operator delete(*v12);
          }
        }
      }

      else
      {
        v12 -= 12;
        if (*(v14 - 72) == 1)
        {
          goto LABEL_34;
        }
      }

      if (v12 == v11)
      {
        v13 = __p;
        goto LABEL_39;
      }
    }
  }

LABEL_40:
  if (v33 == 1 && v32 < 0)
  {
    operator delete(v31);
  }

  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (v51 == 1)
  {
    v15 = v49;
    if (v49)
    {
      v16 = v50;
      v17 = v49;
      if (v50 == v49)
      {
LABEL_62:
        v50 = v15;
        operator delete(v17);
        goto LABEL_63;
      }

      while (1)
      {
        v18 = v16;
        if (*(v16 - 16) == 1 && *(v16 - 41) < 0)
        {
          operator delete(*(v16 - 8));
          v16 -= 12;
          if (*(v18 - 72) == 1)
          {
LABEL_57:
            if (*(v18 - 73) < 0)
            {
              operator delete(*v16);
            }
          }
        }

        else
        {
          v16 -= 12;
          if (*(v18 - 72) == 1)
          {
            goto LABEL_57;
          }
        }

        if (v16 == v15)
        {
          v17 = v49;
          goto LABEL_62;
        }
      }
    }
  }

LABEL_63:
  if (v48 == 1 && v47 < 0)
  {
    operator delete(v46);
  }

  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  return v8;
}

void sub_2714951A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

BOOL sub_2714951E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 != *a3)
  {
    return 0;
  }

  v3 = *(a2 + 16);
  v4 = *(a3 + 16);
  if (v3 != v4 || v3 == 0)
  {
    if (v3 != v4)
    {
      return 0;
    }
  }

  else if (*(a2 + 8) != *(a3 + 8))
  {
    return 0;
  }

  v6 = *(a3 + 32);
  v7 = *(a2 + 32);
  result = v7 == v6;
  if (v7 == v6 && v7 != 0)
  {
    return *(a2 + 24) == *(a3 + 24);
  }

  return result;
}

BOOL sub_271495254(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (*a2 != *a3 || *(a2 + 1) != *(a3 + 1))
  {
    return 0;
  }

  v3 = a3[24];
  v4 = a2[24];
  result = v4 == v3;
  if (v4 == v3 && v4 != 0)
  {
    return *(a2 + 2) == *(a3 + 2);
  }

  return result;
}

void sub_2714952A8(void *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v4)
  {
    sub_271495890(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v5)
  {
    sub_27149689C(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v6)
    {
      sub_271497248(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v7)
    {
      sub_271498254(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v8)
      {
        sub_2714988A0(&v10, v8);
      }

      else
      {
        sub_271495474(&v9, a1);
      }
    }
  }
}

uint64_t sub_271495474(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    LODWORD(v18) = 4;
    (*(*a2 + 104))(a2, &v18);
    v10 = v18;
    if (v9 >= 1)
    {
      if (v9 == 2)
      {
        LODWORD(v18) = 3;
        (*(*a2 + 104))(a2, &v18);
      }

      (*(*a2 + 16))(a2);
      sub_2713DFA84(a2, v3 + 16, v10);
      goto LABEL_16;
    }

    sub_2713DFA84(a2, v3 + 16, v18);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    LODWORD(v18) = 5;
    (*(*a2 + 104))(a2, &v18);
    v8 = v18;
    if (v7 >= 1)
    {
      if (v7 == 2)
      {
        LODWORD(v18) = 3;
        (*(*a2 + 104))(a2, &v18);
      }

      (*(*a2 + 16))(a2);
      sub_2713DF128(a2, v3 + 16, v8);
      goto LABEL_16;
    }

    sub_2713DF128(a2, v3 + 16, v18);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = a2[2];
    LODWORD(v18) = 6;
    (*(*a2 + 104))(a2, &v18);
    v6 = v18;
    if (v5 >= 1)
    {
      if (v5 == 2)
      {
        LODWORD(v18) = 3;
        (*(*a2 + 104))(a2, &v18);
      }

      (*(*a2 + 16))(a2);
      sub_2713B9F84(a2, v3 + 16, v6);
LABEL_16:
      (*(*a2 + 24))(a2);
      goto LABEL_17;
    }

    sub_2713B9F84(a2, v3 + 16, v18);
  }

LABEL_17:
  v11 = a2[2];
  LODWORD(v18) = 2;
  (*(*a2 + 104))(a2, &v18);
  v12 = v18;
  if (v11 < 1)
  {
    v16 = *(v3 + 216);
    v18 = *(v3 + 200);
    v19 = v16;
    v17 = *(v3 + 248);
    v20 = *(v3 + 232);
    v21 = v17;
    return sub_271498E24(a2, &v18, v12);
  }

  else
  {
    if (v11 == 2)
    {
      LODWORD(v18) = 1;
      (*(*a2 + 104))(a2, &v18);
    }

    (*(*a2 + 16))(a2);
    v13 = *(v3 + 216);
    v18 = *(v3 + 200);
    v19 = v13;
    v14 = *(v3 + 248);
    v20 = *(v3 + 232);
    v21 = v14;
    sub_271498E24(a2, &v18, v12);
    return (*(*a2 + 24))(a2);
  }
}

void sub_271495890(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_27182791C(a2 + 48, v5);
        v7 = sub_2718289B0(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          *(&v26 + 1) = 6;
          v9 = sub_2718289B0(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = *(&v26 + 1);
          *(&v26 + 1) = v11;
          sub_2715CC40C(&v26 + 1, v10);
        }

        sub_2713B29CC(a2, v3 + 16, 6);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_27182791C(a2 + 48, v12);
    v14 = sub_2718289B0(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      *(&v26 + 1) = 5;
      v16 = sub_2718289B0(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = *(&v26 + 1);
      *(&v26 + 1) = v18;
      sub_2715CC40C(&v26 + 1, v17);
    }

    sub_2713DA6CC(a2, v3 + 16, 5);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_27182791C(a2 + 48, v19);
  v21 = sub_2718289B0(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    *(&v26 + 1) = 4;
    v23 = sub_2718289B0(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = *(&v26 + 1);
    *(&v26 + 1) = v25;
    sub_2715CC40C(&v26 + 1, v24);
  }

  sub_2713DAF34(a2, v3 + 16, 4);
}

void sub_271495DCC(uint64_t result, unsigned __int8 *a2, unsigned int a3)
{
  v6 = (result + 40);
  if (**(result + 40) <= 1u)
  {
    *(result + 72) = "sync_type";
    v7 = result + 72;
    v9 = (result + 88);
    v8 = *(result + 88);
    *(result + 80) = 9;
    v10 = (result + 80);
    if ((v8 & 1) == 0)
    {
      *v9 = 1;
    }

    v11 = *a2;
    goto LABEL_11;
  }

  v9 = (result + 88);
  v7 = result + 72;
  v10 = (result + 80);
  v11 = *a2;
  if ((*(result + 88) & 1) == 0 || *(result + 80) != 7 || (**v7 == *"version" ? (v12 = *(*v7 + 3) == *"sion") : (v12 = 0), !v12))
  {
LABEL_11:
    LOBYTE(v25) = 6;
    v26[0] = v11;
    v13 = sub_2718289B0(result);
    v14 = *v13;
    *v13 = 6;
    LOBYTE(v25) = v14;
    v15 = v13[1];
    v13[1] = v26[0];
    v26[0] = v15;
    sub_2715CC40C(v26, v14);
  }

  if (a3 < 2)
  {
    return;
  }

  v16 = *a2;
  if (!*a2)
  {
    return;
  }

  if (v16 == 2)
  {
    if (*(a2 + 12) == 1)
    {
      v25 = "value";
      v26[0] = 5;
      v26[1] = (a2 + 8);
      sub_271496450(result, &v25);
      return;
    }

LABEL_34:
    sub_2711308D4();
  }

  if (v16 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "invalid sync type");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*(a2 + 12))
  {
    goto LABEL_34;
  }

  if (**v6 <= 1u)
  {
    v17 = *v9;
    *v7 = "value";
    *v10 = 5;
    if ((v17 & 1) == 0)
    {
      *v9 = 1;
    }
  }

  sub_27182791C(result + 48, v6);
  v18 = sub_2718289B0(result);
  *(result + 40) = v18;
  if (*(result + 88))
  {
    *v9 = 0;
  }

  if (*v18 < 2u && ((*v7 = "version", *v10 = 7, *v9 = 1, **v7 == *"version") ? (v19 = *(*v7 + 3) == *"sion") : (v19 = 0), v19))
  {
    *(result + 96) = 1;
    *(result + 100) = 1;
    *(result + 88) = 0;
  }

  else
  {
    LOBYTE(v25) = 6;
    v26[0] = 1;
    v20 = sub_2718289B0(result);
    v21 = *v20;
    *v20 = 6;
    LOBYTE(v25) = v21;
    v22 = v20[1];
    v20[1] = v26[0];
    v26[0] = v22;
    sub_2715CC40C(v26, v21);
  }

  sub_2714960F8(result, a2 + 1);
  v23 = *(result + 56);
  *(result + 40) = *(v23 - 8);
  *(result + 56) = v23 - 8;
  if (*(result + 88) == 1)
  {
    *v9 = 0;
  }
}

void sub_2714960F8(uint64_t result, void ***a2)
{
  v4 = *(result + 40);
  if (*v4 <= 1u)
  {
    *(result + 72) = "sync_command_id";
    v5 = result + 72;
    v7 = (result + 88);
    v6 = *(result + 88);
    *(result + 80) = 15;
    v8 = (result + 80);
    if ((v6 & 1) == 0)
    {
      *v7 = 1;
    }

    goto LABEL_10;
  }

  v7 = (result + 88);
  v5 = result + 72;
  v8 = (result + 80);
  if ((*(result + 88) & 1) == 0 || *(result + 80) != 7 || (**v5 == *"version" ? (v9 = *(*v5 + 3) == *"sion") : (v9 = 0), !v9))
  {
LABEL_10:
    v25 = *a2;
    v10 = sub_2718289B0(result);
    v11 = *v10;
    *v10 = 6;
    v12 = v10[1];
    v10[1] = v25;
    v25 = v12;
    sub_2715CC40C(&v25, v11);
    v4 = *(result + 40);
  }

  if (*v4 <= 1u)
  {
    v13 = *v7;
    *v5 = "proceed_n";
    *v8 = 9;
    if ((v13 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  if ((a2[2] & 1) == 0)
  {
    v25 = 0;
    v15 = sub_2718289B0(result);
    v16 = *v15;
    *v15 = 0;
    goto LABEL_23;
  }

  if (*v7 != 1 || *v8 != 7 || (**v5 == *"version" ? (v14 = *(*v5 + 3) == *"sion") : (v14 = 0), !v14))
  {
    v25 = a2[1];
    v15 = sub_2718289B0(result);
    v16 = *v15;
    *v15 = 6;
LABEL_23:
    v17 = v15[1];
    v15[1] = v25;
    v25 = v17;
    sub_2715CC40C(&v25, v16);
  }

  if (**(result + 40) <= 1u)
  {
    v18 = *v7;
    *v5 = "proceed_until";
    *v8 = 13;
    if ((v18 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  if ((a2[4] & 1) == 0)
  {
    v25 = 0;
    v23 = sub_2718289B0(result);
    v21 = *v23;
    *v23 = 0;
    v24 = v23[1];
    v23[1] = v25;
    v25 = v24;
    goto LABEL_36;
  }

  if (*v7 != 1 || *v8 != 7 || (**v5 == *"version" ? (v19 = *(*v5 + 3) == *"sion") : (v19 = 0), !v19))
  {
    v25 = a2[3];
    v20 = sub_2718289B0(result);
    v21 = *v20;
    *v20 = 6;
    v22 = v20[1];
    v20[1] = v25;
    v25 = v22;
LABEL_36:
    sub_2715CC40C(&v25, v21);
  }
}

void sub_271496450(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = *(a2 + 16);
  sub_27182791C(a1 + 48, v3);
  v6 = sub_2718289B0(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 >= 2u)
  {
    v7 = (a1 + 80);
    v9 = a1 + 72;
  }

  else
  {
    *(a1 + 72) = "version";
    *(a1 + 80) = 7;
    v7 = (a1 + 80);
    *(a1 + 88) = 1;
    v9 = a1 + 72;
    v8 = *(a1 + 72);
    v10 = *v8;
    v11 = *(v8 + 3);
    if (v10 == *"version" && v11 == *"sion")
    {
      *(a1 + 96) = 1;
      *(a1 + 100) = 1;
      *(a1 + 88) = 0;
      if (*v6 >= 2u)
      {
        goto LABEL_24;
      }

      *v9 = "status";
      *v7 = 6;
LABEL_17:
      *(a1 + 88) = 1;
      goto LABEL_24;
    }
  }

  v33 = 1;
  v13 = sub_2718289B0(a1);
  v14 = *v13;
  *v13 = 6;
  v15 = v13[1];
  v13[1] = v33;
  v33 = v15;
  sub_2715CC40C(&v33, v14);
  v16 = *(a1 + 40);
  v17 = *(a1 + 88);
  if (*v16 < 2u)
  {
    *v9 = "status";
    *v7 = 6;
    if (v17)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if ((*(a1 + 88) & 1) == 0 || *v7 != 7 || (**v9 == *"version" ? (v18 = *(*v9 + 3) == *"sion") : (v18 = 0), !v18))
  {
LABEL_24:
    v33 = *v5;
    v19 = sub_2718289B0(a1);
    v20 = *v19;
    *v19 = 6;
    v21 = v19[1];
    v19[1] = v33;
    v33 = v21;
    sub_2715CC40C(&v33, v20);
    v16 = *(a1 + 40);
    v22 = *(a1 + 88);
    if (*v16 <= 1u)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v22 = 1;
  if (*v16 <= 1u)
  {
LABEL_25:
    *v9 = "sync_id";
    *v7 = 7;
    if ((v22 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }

    goto LABEL_29;
  }

LABEL_28:
  if ((v22 & (*v7 == 7)) != 1)
  {
LABEL_33:
    v33 = *(v5 + 1);
    v24 = sub_2718289B0(a1);
    v25 = *v24;
    *v24 = 6;
    v26 = v24[1];
    v24[1] = v33;
    v33 = v26;
    sub_2715CC40C(&v33, v25);
    v16 = *v3;
    goto LABEL_34;
  }

LABEL_29:
  if (**v9 != *"version" || *(*v9 + 3) != *"sion")
  {
    goto LABEL_33;
  }

LABEL_34:
  if (*v16 <= 1u)
  {
    v27 = *(a1 + 88);
    *(a1 + 72) = "acknowledge_until";
    *(a1 + 80) = 17;
    if ((v27 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  if ((v5[24] & 1) == 0)
  {
    v33 = 0;
    v29 = sub_2718289B0(a1);
    v30 = *v29;
    *v29 = 0;
    goto LABEL_46;
  }

  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || (**v9 == *"version" ? (v28 = *(*v9 + 3) == *"sion") : (v28 = 0), !v28))
  {
    v33 = *(v5 + 2);
    v29 = sub_2718289B0(a1);
    v30 = *v29;
    *v29 = 6;
LABEL_46:
    v31 = v29[1];
    v29[1] = v33;
    v33 = v31;
    sub_2715CC40C(&v33, v30);
  }

  v32 = *(a1 + 56);
  *(a1 + 40) = *(v32 - 8);
  *(a1 + 56) = v32 - 8;
  if (*(a1 + 88) == 1)
  {
    *(a1 + 88) = 0;
  }
}

void sub_27149689C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = *(a2 + 24);
    if (*(v7 + 40) == 1)
    {
      *&v21[0] = v7 + 16;
      sub_2718460EC(v21, 4u);
    }

    else
    {
      sub_27184636C(v21, (v7 + 8), 4u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DC010(a2, v3 + 16, 4);
  }

  else if (v4 == 1)
  {
    v6 = *(a2 + 24);
    if (*(v6 + 40) == 1)
    {
      *&v21[0] = v6 + 16;
      sub_2718460EC(v21, 5u);
    }

    else
    {
      sub_27184636C(v21, (v6 + 8), 5u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DBEE0(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = *(a2 + 24);
    if (*(v5 + 40) == 1)
    {
      *&v21[0] = v5 + 16;
      sub_2718460EC(v21, 6u);
    }

    else
    {
      sub_27184636C(v21, (v5 + 8), 6u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713B5730(a2, v3 + 16, 6);
  }

  v8 = *(a2 + 24);
  v9 = *(*(v8 + 88) - 8);
  sub_2718404E0((v8 + 48), *(v8 + 16) - v9 - 9);
  v10 = *(v8 + 48);
  if (v10)
  {
    memmove((*(v8 + 24) + v9), *(v8 + 56), v10);
  }

  *(v8 + 48) = 0;
  v11 = *(v8 + 80);
  v12 = *(v8 + 88) - 8;
  *(v8 + 88) = v12;
  if (v11 == v12)
  {
    std::ostream::write();
    if (*(v8 + 40) == 1)
    {
      free(*(v8 + 24));
      *(v8 + 40) = 0;
    }
  }

  v13 = *(a2 + 24);
  if (*(v13 + 40) == 1)
  {
    *&v21[0] = v13 + 16;
    sub_2718460EC(v21, 2u);
  }

  else
  {
    sub_27184636C(v21, (v13 + 8), 2u);
  }

  sub_271840ADC(*(a2 + 24));
  v14 = *(v3 + 216);
  v21[0] = *(v3 + 200);
  v21[1] = v14;
  v15 = *(v3 + 248);
  v21[2] = *(v3 + 232);
  v21[3] = v15;
  sub_271496B48(a2, v21, 2u);
  v16 = *(a2 + 24);
  v17 = *(*(v16 + 88) - 8);
  sub_2718404E0((v16 + 48), *(v16 + 16) - v17 - 9);
  v18 = *(v16 + 48);
  if (v18)
  {
    memmove((*(v16 + 24) + v17), *(v16 + 56), v18);
  }

  *(v16 + 48) = 0;
  v19 = *(v16 + 80);
  v20 = *(v16 + 88) - 8;
  *(v16 + 88) = v20;
  if (v19 == v20)
  {
    std::ostream::write();
    if (*(v16 + 40) == 1)
    {
      free(*(v16 + 24));
      *(v16 + 40) = 0;
    }
  }
}

void sub_271496B48(uint64_t a1, char *a2, unsigned int a3)
{
  v6 = *a2;
  v16 = *a2;
  v7 = *(a1 + 24);
  if (*(v7 + 40) == 1)
  {
    v17 = (v7 + 16);
    sub_2718454CC(&v17, &v16);
    if (a3 < 2)
    {
      return;
    }
  }

  else if (v6 < 0)
  {
    LOBYTE(v17) = -52;
    BYTE1(v17) = v6;
    std::ostream::write();
    if (a3 < 2)
    {
      return;
    }
  }

  else
  {
    LOBYTE(v17) = v6;
    std::ostream::write();
    if (a3 < 2)
    {
      return;
    }
  }

  v8 = *a2;
  if (*a2)
  {
    if (v8 == 2)
    {
      if (*(a2 + 12) == 1)
      {
        sub_271496FC8(&v17, a1, a2 + 8);
        return;
      }
    }

    else
    {
      if (v8 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "invalid sync type");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (!*(a2 + 12))
      {
        v9 = *(a1 + 24);
        if (*(v9 + 40) == 1)
        {
          v17 = (v9 + 16);
          sub_2718460EC(&v17, 1u);
        }

        else
        {
          sub_27184636C(&v17, (v9 + 8), 1u);
        }

        sub_271840ADC(*(a1 + 24));
        sub_271496D74(a1, a2 + 1);
        v10 = *(a1 + 24);
        v11 = *(*(v10 + 88) - 8);
        sub_2718404E0((v10 + 48), *(v10 + 16) - v11 - 9);
        v12 = *(v10 + 48);
        if (v12)
        {
          memmove((*(v10 + 24) + v11), *(v10 + 56), v12);
        }

        *(v10 + 48) = 0;
        v13 = *(v10 + 80);
        v14 = *(v10 + 88) - 8;
        *(v10 + 88) = v14;
        if (v13 == v14)
        {
          std::ostream::write();
          if (*(v10 + 40) == 1)
          {
            free(*(v10 + 24));
            *(v10 + 40) = 0;
          }
        }

        return;
      }
    }

    sub_2711308D4();
  }
}

char *sub_271496D74(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) != 1)
  {
    sub_271846E00((v4 + 8), *a2);
    if (*(a2 + 16) != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v12 = 1;
    v6 = *(a1 + 24);
    if (*(v6 + 40) == 1)
    {
      v13 = (v6 + 16);
      sub_2718454CC(&v13, &v12);
      v7 = *(a1 + 24);
      if (*(v7 + 40) != 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      LOBYTE(v13) = 1;
      std::ostream::write();
      v7 = *(a1 + 24);
      if (*(v7 + 40) != 1)
      {
LABEL_9:
        sub_271846E00((v7 + 8), a2[1]);
        if (*(a2 + 32) == 1)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }
    }

    v13 = (v7 + 16);
    sub_271846AEC(&v13, a2[1]);
    if (*(a2 + 32) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v13 = (v4 + 16);
  sub_271846AEC(&v13, *a2);
  if (*(a2 + 16) == 1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v12 = 0;
  v5 = *(a1 + 24);
  if (*(v5 + 40) == 1)
  {
    v13 = (v5 + 16);
    sub_2718454CC(&v13, &v12);
    if (*(a2 + 32) == 1)
    {
      goto LABEL_16;
    }

LABEL_12:
    v12 = 0;
    v8 = *(a1 + 24);
    if (*(v8 + 40) == 1)
    {
      v13 = (v8 + 16);
      return sub_2718454CC(&v13, &v12);
    }

    else
    {
      LOBYTE(v13) = 0;
      return std::ostream::write();
    }
  }

  LOBYTE(v13) = 0;
  std::ostream::write();
  if (*(a2 + 32) != 1)
  {
    goto LABEL_12;
  }

LABEL_16:
  v12 = 1;
  v10 = *(a1 + 24);
  if (*(v10 + 40) == 1)
  {
    v13 = (v10 + 16);
    sub_2718454CC(&v13, &v12);
    v11 = *(a1 + 24);
    if (*(v11 + 40) != 1)
    {
      return sub_271846E00((v11 + 8), a2[3]);
    }
  }

  else
  {
    LOBYTE(v13) = 1;
    std::ostream::write();
    v11 = *(a1 + 24);
    if (*(v11 + 40) != 1)
    {
      return sub_271846E00((v11 + 8), a2[3]);
    }
  }

  v13 = (v11 + 16);
  return sub_271846AEC(&v13, a2[3]);
}

void sub_271496FC8(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a2 + 24);
  if (*(v5 + 40) == 1)
  {
    v18 = (v5 + 16);
    sub_2718460EC(&v18, 1u);
    sub_271840ADC(*(a2 + 24));
    v6 = *(a2 + 24);
    if (*(v6 + 40) != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v18 = (v6 + 16);
    sub_2718454CC(&v18, a3);
    v8 = *(a2 + 24);
    if (*(v8 + 40) == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  sub_27184636C(&v18, (v5 + 8), 1u);
  sub_271840ADC(*(a2 + 24));
  v6 = *(a2 + 24);
  if (*(v6 + 40) == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *a3;
  if (v7 < 0)
  {
    LOBYTE(v18) = -52;
    BYTE1(v18) = v7;
  }

  else
  {
    LOBYTE(v18) = *a3;
  }

  std::ostream::write();
  v8 = *(a2 + 24);
  if (*(v8 + 40) == 1)
  {
LABEL_13:
    v18 = (v8 + 16);
    sub_271846AEC(&v18, *(a3 + 1));
    if (a3[24] == 1)
    {
      goto LABEL_14;
    }

LABEL_8:
    v17 = 0;
    v9 = *(a2 + 24);
    if (*(v9 + 40) == 1)
    {
      v18 = (v9 + 16);
      sub_2718454CC(&v18, &v17);
    }

    else
    {
      LOBYTE(v18) = 0;
      std::ostream::write();
    }

    goto LABEL_19;
  }

LABEL_7:
  sub_271846E00((v8 + 8), *(a3 + 1));
  if (a3[24] != 1)
  {
    goto LABEL_8;
  }

LABEL_14:
  v17 = 1;
  v10 = *(a2 + 24);
  if (*(v10 + 40) == 1)
  {
    v18 = (v10 + 16);
    sub_2718454CC(&v18, &v17);
    v11 = *(a2 + 24);
    if (*(v11 + 40) != 1)
    {
LABEL_16:
      sub_271846E00((v11 + 8), *(a3 + 2));
      goto LABEL_19;
    }
  }

  else
  {
    LOBYTE(v18) = 1;
    std::ostream::write();
    v11 = *(a2 + 24);
    if (*(v11 + 40) != 1)
    {
      goto LABEL_16;
    }
  }

  v18 = (v11 + 16);
  sub_271846AEC(&v18, *(a3 + 2));
LABEL_19:
  v12 = *(a2 + 24);
  v13 = *(*(v12 + 88) - 8);
  sub_2718404E0((v12 + 48), *(v12 + 16) - v13 - 9);
  v14 = *(v12 + 48);
  if (v14)
  {
    memmove((*(v12 + 24) + v13), *(v12 + 56), v14);
  }

  *(v12 + 48) = 0;
  v15 = *(v12 + 80);
  v16 = *(v12 + 88) - 8;
  *(v12 + 88) = v16;
  if (v15 == v16)
  {
    std::ostream::write();
    if (*(v12 + 40) == 1)
    {
      free(*(v12 + 24));
      *(v12 + 40) = 0;
    }
  }
}

void sub_271497248(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_2715DF0F0(a2 + 48, v5);
        v7 = sub_27182815C(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          *(&v26 + 1) = 6;
          v9 = sub_27182815C(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = *(&v26 + 1);
          *(&v26 + 1) = v11;
          sub_2715CA870(&v26 + 1, v10);
        }

        sub_2713B6988(a2, v3 + 16, 6);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_2715DF0F0(a2 + 48, v12);
    v14 = sub_27182815C(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      *(&v26 + 1) = 5;
      v16 = sub_27182815C(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = *(&v26 + 1);
      *(&v26 + 1) = v18;
      sub_2715CA870(&v26 + 1, v17);
    }

    sub_2713DCA04(a2, v3 + 16, 5);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_2715DF0F0(a2 + 48, v19);
  v21 = sub_27182815C(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    *(&v26 + 1) = 4;
    v23 = sub_27182815C(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = *(&v26 + 1);
    *(&v26 + 1) = v25;
    sub_2715CA870(&v26 + 1, v24);
  }

  sub_2713DD090(a2, v3 + 16, 4);
}

void sub_271497784(uint64_t result, unsigned __int8 *a2, unsigned int a3)
{
  v6 = (result + 40);
  if (**(result + 40) <= 1u)
  {
    *(result + 72) = "sync_type";
    v7 = result + 72;
    v9 = (result + 88);
    v8 = *(result + 88);
    *(result + 80) = 9;
    v10 = (result + 80);
    if ((v8 & 1) == 0)
    {
      *v9 = 1;
    }

    v11 = *a2;
    goto LABEL_11;
  }

  v9 = (result + 88);
  v7 = result + 72;
  v10 = (result + 80);
  v11 = *a2;
  if ((*(result + 88) & 1) == 0 || *(result + 80) != 7 || (**v7 == *"version" ? (v12 = *(*v7 + 3) == *"sion") : (v12 = 0), !v12))
  {
LABEL_11:
    LOBYTE(v25) = 6;
    v26[0] = v11;
    v13 = sub_27182815C(result);
    v14 = *v13;
    *v13 = 6;
    LOBYTE(v25) = v14;
    v15 = v13[1];
    v13[1] = v26[0];
    v26[0] = v15;
    sub_2715CA870(v26, v14);
  }

  if (a3 < 2)
  {
    return;
  }

  v16 = *a2;
  if (!*a2)
  {
    return;
  }

  if (v16 == 2)
  {
    if (*(a2 + 12) == 1)
    {
      v25 = "value";
      v26[0] = 5;
      v26[1] = (a2 + 8);
      sub_271497E08(result, &v25);
      return;
    }

LABEL_34:
    sub_2711308D4();
  }

  if (v16 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "invalid sync type");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*(a2 + 12))
  {
    goto LABEL_34;
  }

  if (**v6 <= 1u)
  {
    v17 = *v9;
    *v7 = "value";
    *v10 = 5;
    if ((v17 & 1) == 0)
    {
      *v9 = 1;
    }
  }

  sub_2715DF0F0(result + 48, v6);
  v18 = sub_27182815C(result);
  *(result + 40) = v18;
  if (*(result + 88))
  {
    *v9 = 0;
  }

  if (*v18 < 2u && ((*v7 = "version", *v10 = 7, *v9 = 1, **v7 == *"version") ? (v19 = *(*v7 + 3) == *"sion") : (v19 = 0), v19))
  {
    *(result + 96) = 1;
    *(result + 100) = 1;
    *(result + 88) = 0;
  }

  else
  {
    LOBYTE(v25) = 6;
    v26[0] = 1;
    v20 = sub_27182815C(result);
    v21 = *v20;
    *v20 = 6;
    LOBYTE(v25) = v21;
    v22 = v20[1];
    v20[1] = v26[0];
    v26[0] = v22;
    sub_2715CA870(v26, v21);
  }

  sub_271497AB0(result, a2 + 1);
  v23 = *(result + 56);
  *(result + 40) = *(v23 - 8);
  *(result + 56) = v23 - 8;
  if (*(result + 88) == 1)
  {
    *v9 = 0;
  }
}

void sub_271497AB0(uint64_t result, void ***a2)
{
  v4 = *(result + 40);
  if (*v4 <= 1u)
  {
    *(result + 72) = "sync_command_id";
    v5 = result + 72;
    v7 = (result + 88);
    v6 = *(result + 88);
    *(result + 80) = 15;
    v8 = (result + 80);
    if ((v6 & 1) == 0)
    {
      *v7 = 1;
    }

    goto LABEL_10;
  }

  v7 = (result + 88);
  v5 = result + 72;
  v8 = (result + 80);
  if ((*(result + 88) & 1) == 0 || *(result + 80) != 7 || (**v5 == *"version" ? (v9 = *(*v5 + 3) == *"sion") : (v9 = 0), !v9))
  {
LABEL_10:
    v25 = *a2;
    v10 = sub_27182815C(result);
    v11 = *v10;
    *v10 = 6;
    v12 = v10[1];
    v10[1] = v25;
    v25 = v12;
    sub_2715CA870(&v25, v11);
    v4 = *(result + 40);
  }

  if (*v4 <= 1u)
  {
    v13 = *v7;
    *v5 = "proceed_n";
    *v8 = 9;
    if ((v13 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  if ((a2[2] & 1) == 0)
  {
    v25 = 0;
    v15 = sub_27182815C(result);
    v16 = *v15;
    *v15 = 0;
    goto LABEL_23;
  }

  if (*v7 != 1 || *v8 != 7 || (**v5 == *"version" ? (v14 = *(*v5 + 3) == *"sion") : (v14 = 0), !v14))
  {
    v25 = a2[1];
    v15 = sub_27182815C(result);
    v16 = *v15;
    *v15 = 6;
LABEL_23:
    v17 = v15[1];
    v15[1] = v25;
    v25 = v17;
    sub_2715CA870(&v25, v16);
  }

  if (**(result + 40) <= 1u)
  {
    v18 = *v7;
    *v5 = "proceed_until";
    *v8 = 13;
    if ((v18 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  if ((a2[4] & 1) == 0)
  {
    v25 = 0;
    v23 = sub_27182815C(result);
    v21 = *v23;
    *v23 = 0;
    v24 = v23[1];
    v23[1] = v25;
    v25 = v24;
    goto LABEL_36;
  }

  if (*v7 != 1 || *v8 != 7 || (**v5 == *"version" ? (v19 = *(*v5 + 3) == *"sion") : (v19 = 0), !v19))
  {
    v25 = a2[3];
    v20 = sub_27182815C(result);
    v21 = *v20;
    *v20 = 6;
    v22 = v20[1];
    v20[1] = v25;
    v25 = v22;
LABEL_36:
    sub_2715CA870(&v25, v21);
  }
}

void sub_271497E08(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = *(a2 + 16);
  sub_2715DF0F0(a1 + 48, v3);
  v6 = sub_27182815C(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 >= 2u)
  {
    v7 = (a1 + 80);
    v9 = a1 + 72;
  }

  else
  {
    *(a1 + 72) = "version";
    *(a1 + 80) = 7;
    v7 = (a1 + 80);
    *(a1 + 88) = 1;
    v9 = a1 + 72;
    v8 = *(a1 + 72);
    v10 = *v8;
    v11 = *(v8 + 3);
    if (v10 == *"version" && v11 == *"sion")
    {
      *(a1 + 96) = 1;
      *(a1 + 100) = 1;
      *(a1 + 88) = 0;
      if (*v6 >= 2u)
      {
        goto LABEL_24;
      }

      *v9 = "status";
      *v7 = 6;
LABEL_17:
      *(a1 + 88) = 1;
      goto LABEL_24;
    }
  }

  v33 = 1;
  v13 = sub_27182815C(a1);
  v14 = *v13;
  *v13 = 6;
  v15 = v13[1];
  v13[1] = v33;
  v33 = v15;
  sub_2715CA870(&v33, v14);
  v16 = *(a1 + 40);
  v17 = *(a1 + 88);
  if (*v16 < 2u)
  {
    *v9 = "status";
    *v7 = 6;
    if (v17)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if ((*(a1 + 88) & 1) == 0 || *v7 != 7 || (**v9 == *"version" ? (v18 = *(*v9 + 3) == *"sion") : (v18 = 0), !v18))
  {
LABEL_24:
    v33 = *v5;
    v19 = sub_27182815C(a1);
    v20 = *v19;
    *v19 = 6;
    v21 = v19[1];
    v19[1] = v33;
    v33 = v21;
    sub_2715CA870(&v33, v20);
    v16 = *(a1 + 40);
    v22 = *(a1 + 88);
    if (*v16 <= 1u)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v22 = 1;
  if (*v16 <= 1u)
  {
LABEL_25:
    *v9 = "sync_id";
    *v7 = 7;
    if ((v22 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }

    goto LABEL_29;
  }

LABEL_28:
  if ((v22 & (*v7 == 7)) != 1)
  {
LABEL_33:
    v33 = *(v5 + 1);
    v24 = sub_27182815C(a1);
    v25 = *v24;
    *v24 = 6;
    v26 = v24[1];
    v24[1] = v33;
    v33 = v26;
    sub_2715CA870(&v33, v25);
    v16 = *v3;
    goto LABEL_34;
  }

LABEL_29:
  if (**v9 != *"version" || *(*v9 + 3) != *"sion")
  {
    goto LABEL_33;
  }

LABEL_34:
  if (*v16 <= 1u)
  {
    v27 = *(a1 + 88);
    *(a1 + 72) = "acknowledge_until";
    *(a1 + 80) = 17;
    if ((v27 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  if ((v5[24] & 1) == 0)
  {
    v33 = 0;
    v29 = sub_27182815C(a1);
    v30 = *v29;
    *v29 = 0;
    goto LABEL_46;
  }

  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || (**v9 == *"version" ? (v28 = *(*v9 + 3) == *"sion") : (v28 = 0), !v28))
  {
    v33 = *(v5 + 2);
    v29 = sub_27182815C(a1);
    v30 = *v29;
    *v29 = 6;
LABEL_46:
    v31 = v29[1];
    v29[1] = v33;
    v33 = v31;
    sub_2715CA870(&v33, v30);
  }

  v32 = *(a1 + 56);
  *(a1 + 40) = *(v32 - 8);
  *(a1 + 56) = v32 - 8;
  if (*(a1 + 88) == 1)
  {
    *(a1 + 88) = 0;
  }
}

void *sub_271498254(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v18 = *(a2 + 24);
      LOBYTE(v19[0]) = *(a2 + 32);
      sub_271120E64(v18, v19, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 4);
    ++*(a2 + 40);
    sub_2713DE40C(a2, v3 + 16, 4);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (v4)
      {
        sub_2711308D4();
      }

      if (*(a2 + 40))
      {
        v5 = *(a2 + 24);
        LOBYTE(v19[0]) = *(a2 + 32);
        sub_271120E64(v5, v19, 1);
      }

      MEMORY[0x2743BE7F0](*(a2 + 24), 6);
      ++*(a2 + 40);
      sub_2713B8244(a2, v3 + 16, 6);
      v6 = *(a2 + 34);
      if (!*(a2 + 40))
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = *(a2 + 24);
      LOBYTE(v19[0]) = *(a2 + 32);
      sub_271120E64(v8, v19, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      LOBYTE(v19[0]) = *(a2 + 32);
      sub_271120E64(v7, v19, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 5);
    ++*(a2 + 40);
    sub_2713DDE60(a2, v3 + 16, 5);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v9 = *(a2 + 24);
  LOBYTE(v19[0]) = v6;
  sub_271120E64(v9, v19, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    LOBYTE(v19[0]) = *(a2 + 32);
    sub_271120E64(v11, v19, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 2);
  ++*(a2 + 40);
  v12 = *(v3 + 216);
  v19[0] = *(v3 + 200);
  v19[1] = v12;
  v13 = *(v3 + 248);
  v19[2] = *(v3 + 232);
  v19[3] = v13;
  sub_271498480(a2, v19, 2u);
  v14 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v15 = *(a2 + 24);
    LOBYTE(v19[0]) = *(a2 + 32);
    sub_271120E64(v15, v19, 1);
  }

  v16 = *(a2 + 24);
  LOBYTE(v19[0]) = v14;
  result = sub_271120E64(v16, v19, 1);
  ++*(a2 + 40);
  return result;
}

void sub_271498480(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v12 = *a2;
  sub_2718388F8(a1, &v12);
  if (a3 < 2)
  {
    return;
  }

  v6 = *a2;
  if (!*a2)
  {
    return;
  }

  if (v6 == 2)
  {
    if (*(a2 + 12) == 1)
    {
      sub_271498744(&v13, a1, (a2 + 8));
      return;
    }

LABEL_14:
    sub_2711308D4();
  }

  if (v6 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "invalid sync type");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*(a2 + 12))
  {
    goto LABEL_14;
  }

  if (*(a1 + 40))
  {
    v7 = *(a1 + 24);
    v14 = *(a1 + 32);
    sub_271120E64(v7, &v14, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), 1);
  ++*(a1 + 40);
  sub_2714985FC(a1, (a2 + 8));
  v8 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v9 = *(a1 + 24);
    v15 = *(a1 + 32);
    sub_271120E64(v9, &v15, 1);
  }

  v10 = *(a1 + 24);
  v16 = v8;
  sub_271120E64(v10, &v16, 1);
  ++*(a1 + 40);
}

void sub_2714985FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v12 = *(a1 + 32);
    sub_271120E64(v4, &v12, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), *a2);
  ++*(a1 + 40);
  if (*(a2 + 16) == 1)
  {
    v9 = 1;
    sub_2718388F8(a1, &v9);
    if (*(a1 + 40))
    {
      v5 = *(a1 + 24);
      v13 = *(a1 + 32);
      sub_271120E64(v5, &v13, 1);
    }

    MEMORY[0x2743BE850](*(a1 + 24), *(a2 + 8));
    ++*(a1 + 40);
    v6 = *(a2 + 32);
    if (v6 != 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    sub_2718388F8(a1, &v8);
    v6 = *(a2 + 32);
    if (v6 != 1)
    {
LABEL_7:
      v10 = 0;
      sub_2718388F8(a1, &v10);
      return;
    }
  }

  v11 = v6;
  sub_2718388F8(a1, &v11);
  if (*(a1 + 40))
  {
    v7 = *(a1 + 24);
    v14 = *(a1 + 32);
    sub_271120E64(v7, &v14, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), *(a2 + 24));
  ++*(a1 + 40);
}

void *sub_271498744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 40))
  {
    v5 = *(a2 + 24);
    v15 = *(a2 + 32);
    sub_271120E64(v5, &v15, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 1);
  ++*(a2 + 40);
  sub_2718388F8(a2, a3);
  if (*(a2 + 40))
  {
    v6 = *(a2 + 24);
    v16 = *(a2 + 32);
    sub_271120E64(v6, &v16, 1);
  }

  MEMORY[0x2743BE850](*(a2 + 24), *(a3 + 8));
  ++*(a2 + 40);
  if (*(a3 + 24) != 1)
  {
    v13 = 0;
    sub_2718388F8(a2, &v13);
    v9 = *(a2 + 34);
    if (!*(a2 + 40))
    {
      goto LABEL_12;
    }

LABEL_11:
    v10 = *(a2 + 24);
    v18 = *(a2 + 32);
    sub_271120E64(v10, &v18, 1);
    goto LABEL_12;
  }

  v14 = 1;
  sub_2718388F8(a2, &v14);
  if (*(a2 + 40))
  {
    v7 = *(a2 + 24);
    v17 = *(a2 + 32);
    sub_271120E64(v7, &v17, 1);
  }

  MEMORY[0x2743BE850](*(a2 + 24), *(a3 + 16));
  v8 = *(a2 + 40) + 1;
  *(a2 + 40) = v8;
  v9 = *(a2 + 34);
  if (v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  v11 = *(a2 + 24);
  v19 = v9;
  result = sub_271120E64(v11, &v19, 1);
  ++*(a2 + 40);
  return result;
}

char *sub_2714988A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    LODWORD(v14[0]) = 4;
    sub_27173318C((a2 + 24), *(a2 + 32), v14, v14 + 4, 4);
    v7 = LODWORD(v14[0]);
    sub_2717312C0(a2);
    sub_2713DEB74(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    LODWORD(v14[0]) = 5;
    sub_27173318C((a2 + 24), *(a2 + 32), v14, v14 + 4, 4);
    v6 = v14[0];
    sub_2717312C0(a2);
    sub_2713DEA44(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    LODWORD(v14[0]) = 6;
    sub_27173318C((a2 + 24), *(a2 + 32), v14, v14 + 4, 4);
    v5 = LODWORD(v14[0]);
    sub_2717312C0(a2);
    sub_2713B93E0(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  LODWORD(v14[0]) = 2;
  sub_27173318C((a2 + 24), *(a2 + 32), v14, v14 + 4, 4);
  v9 = v14[0];
  sub_2717312C0(a2);
  v10 = *(v3 + 216);
  v14[0] = *(v3 + 200);
  v14[1] = v10;
  v11 = *(v3 + 248);
  v14[2] = *(v3 + 232);
  v14[3] = v11;
  result = sub_271498A6C(a2, v14, v9);
  v13 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v13 + 10) = *(a2 + 32) - v13 - 18;
  *(a2 + 56) -= 8;
  return result;
}

char *sub_271498A6C(uint64_t a1, char *a2, unsigned int a3)
{
  __src = *a2;
  result = sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v11, 1);
  if (a3 >= 2)
  {
    v7 = *a2;
    if (*a2)
    {
      if (v7 == 2)
      {
        if (*(a2 + 12) == 1)
        {
          return sub_271498D08(&v13, a1, a2 + 8);
        }
      }

      else
      {
        if (v7 != 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "invalid sync type");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        if (!*(a2 + 12))
        {
          v11 = 1;
          sub_27173318C((a1 + 24), *(a1 + 32), &v11, v12, 4);
          sub_2717312C0(a1);
          result = sub_271498BD8(a1, a2 + 8);
          v8 = *(*(a1 + 56) - 8) + *(a1 + 24);
          *(v8 + 10) = *(a1 + 32) - v8 - 18;
          *(a1 + 56) -= 8;
          return result;
        }
      }

      sub_2711308D4();
    }
  }

  return result;
}

char *sub_271498BD8(uint64_t a1, char *__src)
{
  sub_27173318C((a1 + 24), *(a1 + 32), __src, __src + 8, 8);
  if (__src[16] == 1)
  {
    __srca = 1;
    sub_27173318C((a1 + 24), *(a1 + 32), &__srca, &v7, 1);
    sub_27173318C((a1 + 24), *(a1 + 32), __src + 8, __src + 16, 8);
    if (__src[32] != 1)
    {
LABEL_3:
      v7 = 0;
      return sub_27173318C((a1 + 24), *(a1 + 32), &v7, &v8, 1);
    }
  }

  else
  {
    v5 = 0;
    sub_27173318C((a1 + 24), *(a1 + 32), &v5, &__srca, 1);
    if (__src[32] != 1)
    {
      goto LABEL_3;
    }
  }

  v8 = 1;
  sub_27173318C((a1 + 24), *(a1 + 32), &v8, &v9, 1);
  return sub_27173318C((a1 + 24), *(a1 + 32), __src + 24, __src + 32, 8);
}

char *sub_271498D08(uint64_t a1, uint64_t a2, char *a3)
{
  __src = 1;
  sub_27173318C((a2 + 24), *(a2 + 32), &__src, v13, 4);
  sub_2717312C0(a2);
  sub_27173318C((a2 + 24), *(a2 + 32), a3, (a3 | 1), 1);
  sub_27173318C((a2 + 24), *(a2 + 32), a3 + 8, a3 + 16, 8);
  if (a3[24] == 1)
  {
    v15 = 1;
    sub_27173318C((a2 + 24), *(a2 + 32), &v15, &v16, 1);
    v5 = *(a2 + 32);
    v6 = (a2 + 24);
    v7 = a3 + 16;
    v8 = a3 + 24;
    v9 = 8;
  }

  else
  {
    v14 = 0;
    v5 = *(a2 + 32);
    v6 = (a2 + 24);
    v7 = &v14;
    v8 = &v15;
    v9 = 1;
  }

  result = sub_27173318C(v6, v5, v7, v8, v9);
  v11 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v11 + 10) = *(a2 + 32) - v11 - 18;
  *(a2 + 56) -= 8;
  return result;
}

uint64_t sub_271498E24(int *a1, unsigned __int8 *a2, unsigned int a3)
{
  LOBYTE(v10) = *a2;
  result = (*(*a1 + 80))(a1, &v10);
  if (a3 < 2)
  {
    return result;
  }

  v7 = *a2;
  if (!*a2)
  {
    return result;
  }

  if (v7 == 2)
  {
    if (*(a2 + 12) == 1)
    {
      v10 = *(a1 + 1);
      return sub_2714991DC(&v10, a1, (a2 + 8));
    }

LABEL_14:
    sub_2711308D4();
  }

  if (v7 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "invalid sync type");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*(a2 + 12))
  {
    goto LABEL_14;
  }

  v8 = a1[2];
  LODWORD(v10) = 1;
  (*(*a1 + 104))(a1, &v10);
  if (v8 < 1)
  {
    return sub_271499040(a1, (a2 + 8));
  }

  if (v8 == 2)
  {
    LODWORD(v10) = 1;
    (*(*a1 + 104))(a1, &v10);
  }

  (*(*a1 + 16))(a1);
  sub_271499040(a1, (a2 + 8));
  return (*(*a1 + 24))(a1);
}

uint64_t sub_271499040(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 120))(a1);
  if (*(a2 + 16) == 1)
  {
    v7 = 1;
    (*(*a1 + 80))(a1, &v7);
    (*(*a1 + 120))(a1, a2 + 8);
    v4 = *(a2 + 32);
    if (v4 != 1)
    {
LABEL_3:
      v8 = 0;
      return (*(*a1 + 80))(a1, &v8);
    }
  }

  else
  {
    v6 = 0;
    (*(*a1 + 80))(a1, &v6);
    v4 = *(a2 + 32);
    if (v4 != 1)
    {
      goto LABEL_3;
    }
  }

  v9 = v4;
  (*(*a1 + 80))(a1, &v9);
  return (*(*a1 + 120))(a1, a2 + 24);
}

uint64_t sub_2714991DC(int *a1, uint64_t a2, uint64_t a3)
{
  v7 = 1;
  (*(*a2 + 104))(a2, &v7);
  if (*a1 >= 1)
  {
    return sub_271499380(a1, a2, a3);
  }

  (*(*a2 + 80))(a2, a3);
  (*(*a2 + 120))(a2, a3 + 8);
  if (*(a3 + 24) == 1)
  {
    v9 = 1;
    (*(*a2 + 80))(a2, &v9);
    return (*(*a2 + 120))(a2, a3 + 16);
  }

  else
  {
    v8 = 0;
    return (*(*a2 + 80))(a2, &v8);
  }
}

uint64_t sub_271499380(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    v8 = 1;
    (*(*a2 + 104))(a2, &v8);
    v5 = *a1;
  }

  if (v5 > 0)
  {
    (*(*a2 + 16))(a2);
  }

  (*(*a2 + 80))(a2, a3);
  (*(*a2 + 120))(a2, a3 + 8);
  if (*(a3 + 24) != 1)
  {
    v9 = 0;
    result = (*(*a2 + 80))(a2, &v9);
    if (v5 < 1)
    {
      return result;
    }

    return (*(*a2 + 24))(a2);
  }

  v10 = 1;
  (*(*a2 + 80))(a2, &v10);
  result = (*(*a2 + 120))(a2, a3 + 16);
  if (v5 >= 1)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_27149953C(void *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v4)
  {
    sub_271499BC4(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v5)
  {
    sub_27149A698(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
    if (v6)
    {
      sub_27149B0AC(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
    if (v7)
    {
      sub_27149BB80(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
      if (v8)
      {
        sub_27149C554(&v10, v8);
      }

      else
      {
        sub_271499708(&v9, a1);
      }
    }
  }
}

uint64_t sub_271499708(uint64_t *a1, void **a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), v24);
    sub_2713B2524(v36, v24);
    sub_2713E031C(v3 + 16, v36);
    if (v48 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v47;
        v11 = __p;
        if (v47 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v47 = v9;
        operator delete(v11);
      }
    }

    if (v45 == 1 && v44 < 0)
    {
      operator delete(v43);
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v35 != 1)
    {
      goto LABEL_66;
    }

    v13 = v33;
    if (!v33)
    {
      goto LABEL_66;
    }

    v17 = v34;
    v15 = v33;
    if (v34 == v33)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v33;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v24);
  sub_2713B2524(v36, v24);
  sub_2713E031C(v3 + 16, v36);
  if (v48 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v47;
      v7 = __p;
      if (v47 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v47 = v5;
      operator delete(v7);
    }
  }

  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v35 != 1)
  {
    goto LABEL_66;
  }

  v13 = v33;
  if (!v33)
  {
    goto LABEL_66;
  }

  v14 = v34;
  v15 = v33;
  if (v34 != v33)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v34 = v13;
  operator delete(v15);
LABEL_66:
  if (v32 == 1 && v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  v19 = *a2;
  v24[0] = a2[1];
  v20 = v24[0];
  v36[0] = 6;
  v19[13](a2, v36);
  if (v20 < 1)
  {
    if (v36[0] < 3)
    {
      sub_2713C66D4(v36, a2, v3 + 16, v36[0]);
    }

    else
    {
      sub_2713C68E0(a2, v3 + 16, v36[0]);
    }
  }

  else
  {
    sub_2713C62C8(v24, a2, v3 + 16, v36[0]);
  }

  v21 = *a2;
  v24[0] = a2[1];
  v22 = v24[0];
  v36[0] = 2;
  v21[13](a2, v36);
  if (v22 < 1)
  {
    return sub_27149D25C(a2, v3 + 200, v36[0]);
  }

  else
  {
    return sub_27149D0AC(v24, a2, v3 + 200, v36[0]);
  }
}

void sub_271499BC4(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713BB450(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0((v3 + 16), v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_27149A0A0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 104);
  *(a1 + 88) = "sync_type";
  *(a1 + 96) = 9;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  LOBYTE(v17) = 0;
  sub_27182E90C(a1, &v17);
  v7 = v17;
  *a2 = v17;
  if (a3 >= 2 && v7)
  {
    if (v7 == 2)
    {
      if (*(a2 + 56) == 1)
      {
        v9 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        if (v9 != 1)
        {
          *(a2 + 48) = 1;
        }
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 48) = 1;
        *(a2 + 56) = 1;
      }

      v10 = *(a1 + 104);
      *(a1 + 88) = "value";
      *(a1 + 96) = 5;
      if ((v10 & 1) == 0)
      {
        *(a1 + 104) = 1;
      }

      v17 = *(a1 + 32);
      v11 = sub_27182D6C4(a1);
      ++*(a1 + 112);
      *(a1 + 32) = v11;
      sub_27182D194(a1 + 40, &v17);
      sub_2717313F0(a1 + 64, (a1 + 112));
      *(a1 + 112) = 0;
      if (*(a1 + 104) == 1)
      {
        *(a1 + 104) = 0;
      }

      v17 = "version";
      v18 = 7;
      v19 = 1;
      *(a1 + 88) = "version";
      *(a1 + 96) = 7;
      *(a1 + 104) = 1;
      sub_27182EB6C(a1, &v19);
      sub_27149A56C(a1, a2 + 8);
    }

    else
    {
      if (v7 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "invalid sync type");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (*(a2 + 56) == 1)
      {
        v8 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        if (v8)
        {
          *(a2 + 48) = 0;
        }
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        *(a2 + 56) = 1;
      }

      v12 = *(a1 + 104);
      *(a1 + 88) = "value";
      *(a1 + 96) = 5;
      if ((v12 & 1) == 0)
      {
        *(a1 + 104) = 1;
      }

      v17 = *(a1 + 32);
      v13 = sub_27182D6C4(a1);
      ++*(a1 + 112);
      *(a1 + 32) = v13;
      sub_27182D194(a1 + 40, &v17);
      sub_2717313F0(a1 + 64, (a1 + 112));
      *(a1 + 112) = 0;
      if (*(a1 + 104) == 1)
      {
        *(a1 + 104) = 0;
      }

      v17 = "version";
      v18 = 7;
      v19 = 1;
      *(a1 + 88) = "version";
      *(a1 + 96) = 7;
      *(a1 + 104) = 1;
      sub_27182EB6C(a1, &v19);
      sub_27149A3AC(a1, a2 + 8);
    }

    v14 = *(a1 + 48);
    *(a1 + 32) = *(v14 - 8);
    v15 = *(a1 + 72);
    *(a1 + 112) = *(v15 - 8);
    *(a1 + 48) = v14 - 8;
    *(a1 + 72) = v15 - 8;
  }
}

void sub_27149A3AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "sync_command_id";
  *(a1 + 96) = 15;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v5 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v12 = 0;
  sub_2715D693C(v5, &v12);
  *a2 = v12;
  v6 = *(a1 + 104);
  *(a1 + 88) = "proceed_n";
  *(a1 + 96) = 9;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  if (!*sub_27182D6C4(a1))
  {
    ++*(a1 + 112);
    if (*(a2 + 16) == 1)
    {
      *(a2 + 16) = 0;
      v11 = *(a1 + 104);
      *(a1 + 88) = "proceed_until";
      *(a1 + 96) = 13;
      if ((v11 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = *(a1 + 104);
      *(a1 + 88) = "proceed_until";
      *(a1 + 96) = 13;
      if ((v9 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_10:
    if (!*sub_27182D6C4(a1))
    {
      goto LABEL_15;
    }

LABEL_11:
    v10 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    v12 = 0;
    sub_2715D693C(v10, &v12);
    *(a2 + 24) = v12;
    *(a2 + 32) = 1;
    return;
  }

  v7 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v12 = 0;
  sub_2715D693C(v7, &v12);
  *(a2 + 8) = v12;
  *(a2 + 16) = 1;
  v8 = *(a1 + 104);
  *(a1 + 88) = "proceed_until";
  *(a1 + 96) = 13;
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_14:
  *(a1 + 104) = 1;
  if (*sub_27182D6C4(a1))
  {
    goto LABEL_11;
  }

LABEL_15:
  ++*(a1 + 112);
  if (*(a2 + 32) == 1)
  {
    *(a2 + 32) = 0;
  }
}

void sub_27149A56C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "status";
  *(a1 + 96) = 6;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_27182E90C(a1, a2);
  v5 = *(a1 + 104);
  *(a1 + 88) = "sync_id";
  *(a1 + 96) = 7;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v6 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v9 = 0;
  sub_2715D693C(v6, &v9);
  *(a2 + 8) = v9;
  v7 = *(a1 + 104);
  *(a1 + 88) = "acknowledge_until";
  *(a1 + 96) = 17;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  if (*sub_27182D6C4(a1))
  {
    v8 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    v9 = 0;
    sub_2715D693C(v8, &v9);
    *(a2 + 16) = v9;
    *(a2 + 24) = 1;
  }

  else
  {
    ++*(a1 + 112);
    if (*(a2 + 24) == 1)
    {
      *(a2 + 24) = 0;
    }
  }
}

uint64_t sub_27149A698(uint64_t *a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v43;
        v11 = __p;
        if (v43 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v43 = v9;
        operator delete(v11);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v17 = v30;
    v15 = v29;
    if (v30 == v29)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v29;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v43;
      v7 = __p;
      if (v43 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v43 = v5;
      operator delete(v7);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v14 = v30;
  v15 = v29;
  if (v30 != v29)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v30 = v13;
  operator delete(v15);
LABEL_66:
  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23);
  }

  if (v22 == 1 && v21 < 0)
  {
    operator delete(v20[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  LODWORD(v20[0]) = 6;
  sub_27183FB7C(a2[6], v20);
  sub_2713BF6F4(v20, a2, v3 + 16, LODWORD(v20[0]));
  LODWORD(v20[0]) = 2;
  sub_27183FB7C(a2[6], v20);
  return sub_27149AABC(v20, a2, v3 + 200, v20[0]);
}

uint64_t sub_27149AABC(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v13 = 0;
  sub_27183FF6C(a2[6], &v13);
  v7 = a2 + 2;
  *&v12 = (*(a2[2] + 32))(a2 + 2);
  *(&v12 + 1) = v13;
  sub_2713BF82C((a2 + 3), &v12);
  if (a4 >= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = a4;
  }

  sub_27149ABCC(a2, a3, v8);
  v9 = a2[4];
  result = (*(*v7 + 32))(a2 + 2);
  v11 = *(v9 - 16) - result + *(v9 - 8);
  if (v11)
  {
    result = (*(*v7 + 40))(a2 + 2, v11);
  }

  a2[4] -= 16;
  return result;
}

void sub_27149ABCC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v10 = 0;
  sub_27183F824(*(a1 + 48), &v10);
  v6 = v10;
  *a2 = v10;
  if (a3 >= 2 && v6)
  {
    if (v6 == 2)
    {
      if (*(a2 + 56) == 1)
      {
        v8 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        if (v8 != 1)
        {
          *(a2 + 48) = 1;
        }
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 48) = 1;
        *(a2 + 56) = 1;
      }

      v14 = 1;
      sub_27183FB7C(*(a1 + 48), &v14);
      sub_27149AF5C(&v13, a1, a2 + 8);
    }

    else
    {
      if (v6 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "invalid sync type");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (*(a2 + 56) == 1)
      {
        v7 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        if (v7)
        {
          *(a2 + 48) = 0;
        }
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        *(a2 + 56) = 1;
      }

      v12 = 1;
      sub_27183FB7C(*(a1 + 48), &v12);
      sub_27149AD88(&v11, a1, a2 + 8, v12);
    }
  }
}

uint64_t sub_27149AD88(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v10 = 0;
  sub_27183FF6C(a2[6], &v10);
  *&v9 = (*(a2[2] + 32))(a2 + 2);
  *(&v9 + 1) = v10;
  sub_2713BF82C((a2 + 3), &v9);
  sub_27149AE94(a2, a3);
  v6 = a2[4];
  result = (*(a2[2] + 32))(a2 + 2);
  v8 = *(v6 - 16) - result + *(v6 - 8);
  if (v8)
  {
    result = (*(a2[2] + 40))(a2 + 2, v8);
  }

  a2[4] -= 16;
  return result;
}

void sub_27149AE94(uint64_t a1, uint64_t a2)
{
  sub_27183FF6C(*(a1 + 48), a2);
  v4 = 0;
  sub_27183F824(*(a1 + 48), &v4);
  if (v4)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
    }

    sub_27183FF6C(*(a1 + 48), (a2 + 8));
  }

  else if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
  }

  v5 = 0;
  sub_27183F824(*(a1 + 48), &v5);
  if (v5)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      *(a2 + 24) = 0;
      *(a2 + 32) = 1;
    }

    sub_27183FF6C(*(a1 + 48), (a2 + 24));
  }

  else if (*(a2 + 32))
  {
    *(a2 + 32) = 0;
  }
}

uint64_t sub_27149AF5C(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = 0;
  sub_27183FF6C(a2[6], &v9);
  *&v8 = (*(a2[2] + 32))(a2 + 2);
  *(&v8 + 1) = v9;
  sub_2713BF82C((a2 + 3), &v8);
  sub_27183F824(a2[6], a3);
  sub_27183FF6C(a2[6], (a3 + 8));
  LOBYTE(v8) = 0;
  sub_27183F824(a2[6], &v8);
  if (v8)
  {
    if ((*(a3 + 24) & 1) == 0)
    {
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
    }

    sub_27183FF6C(a2[6], (a3 + 16));
  }

  else if (*(a3 + 24))
  {
    *(a3 + 24) = 0;
  }

  v5 = a2[4];
  result = (*(a2[2] + 32))(a2 + 2);
  v7 = *(v5 - 16) - result + *(v5 - 8);
  if (v7)
  {
    result = (*(a2[2] + 40))(a2 + 2, v7);
  }

  a2[4] -= 16;
  return result;
}

void sub_27149B0AC(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713C0E9C(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0((v3 + 16), v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_27149B588(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 104);
  *(a1 + 88) = "sync_type";
  *(a1 + 96) = 9;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  LOBYTE(v17) = 0;
  sub_27182D980(a1, &v17);
  v7 = v17;
  *a2 = v17;
  if (a3 >= 2 && v7)
  {
    if (v7 == 2)
    {
      if (*(a2 + 56) == 1)
      {
        v9 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        if (v9 != 1)
        {
          *(a2 + 48) = 1;
        }
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 48) = 1;
        *(a2 + 56) = 1;
      }

      v10 = *(a1 + 104);
      *(a1 + 88) = "value";
      *(a1 + 96) = 5;
      if ((v10 & 1) == 0)
      {
        *(a1 + 104) = 1;
      }

      v17 = *(a1 + 32);
      v11 = sub_27182D2AC(a1);
      ++*(a1 + 112);
      *(a1 + 32) = v11;
      sub_27182D194(a1 + 40, &v17);
      sub_2717313F0(a1 + 64, (a1 + 112));
      *(a1 + 112) = 0;
      if (*(a1 + 104) == 1)
      {
        *(a1 + 104) = 0;
      }

      v17 = "version";
      v18 = 7;
      v19 = 1;
      *(a1 + 88) = "version";
      *(a1 + 96) = 7;
      *(a1 + 104) = 1;
      sub_27182DBE0(a1, &v19);
      sub_27149BA54(a1, a2 + 8);
    }

    else
    {
      if (v7 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "invalid sync type");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (*(a2 + 56) == 1)
      {
        v8 = *(a2 + 48);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        if (v8)
        {
          *(a2 + 48) = 0;
        }
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        *(a2 + 56) = 1;
      }

      v12 = *(a1 + 104);
      *(a1 + 88) = "value";
      *(a1 + 96) = 5;
      if ((v12 & 1) == 0)
      {
        *(a1 + 104) = 1;
      }

      v17 = *(a1 + 32);
      v13 = sub_27182D2AC(a1);
      ++*(a1 + 112);
      *(a1 + 32) = v13;
      sub_27182D194(a1 + 40, &v17);
      sub_2717313F0(a1 + 64, (a1 + 112));
      *(a1 + 112) = 0;
      if (*(a1 + 104) == 1)
      {
        *(a1 + 104) = 0;
      }

      v17 = "version";
      v18 = 7;
      v19 = 1;
      *(a1 + 88) = "version";
      *(a1 + 96) = 7;
      *(a1 + 104) = 1;
      sub_27182DBE0(a1, &v19);
      sub_27149B894(a1, a2 + 8);
    }

    v14 = *(a1 + 48);
    *(a1 + 32) = *(v14 - 8);
    v15 = *(a1 + 72);
    *(a1 + 112) = *(v15 - 8);
    *(a1 + 48) = v14 - 8;
    *(a1 + 72) = v15 - 8;
  }
}

void sub_27149B894(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "sync_command_id";
  *(a1 + 96) = 15;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v5 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v12 = 0;
  sub_2715D613C(v5, &v12);
  *a2 = v12;
  v6 = *(a1 + 104);
  *(a1 + 88) = "proceed_n";
  *(a1 + 96) = 9;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  if (!*sub_27182D2AC(a1))
  {
    ++*(a1 + 112);
    if (*(a2 + 16) == 1)
    {
      *(a2 + 16) = 0;
      v11 = *(a1 + 104);
      *(a1 + 88) = "proceed_until";
      *(a1 + 96) = 13;
      if ((v11 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = *(a1 + 104);
      *(a1 + 88) = "proceed_until";
      *(a1 + 96) = 13;
      if ((v9 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_10:
    if (!*sub_27182D2AC(a1))
    {
      goto LABEL_15;
    }

LABEL_11:
    v10 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    v12 = 0;
    sub_2715D613C(v10, &v12);
    *(a2 + 24) = v12;
    *(a2 + 32) = 1;
    return;
  }

  v7 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v12 = 0;
  sub_2715D613C(v7, &v12);
  *(a2 + 8) = v12;
  *(a2 + 16) = 1;
  v8 = *(a1 + 104);
  *(a1 + 88) = "proceed_until";
  *(a1 + 96) = 13;
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_14:
  *(a1 + 104) = 1;
  if (*sub_27182D2AC(a1))
  {
    goto LABEL_11;
  }

LABEL_15:
  ++*(a1 + 112);
  if (*(a2 + 32) == 1)
  {
    *(a2 + 32) = 0;
  }
}

void sub_27149BA54(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "status";
  *(a1 + 96) = 6;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_27182D980(a1, a2);
  v5 = *(a1 + 104);
  *(a1 + 88) = "sync_id";
  *(a1 + 96) = 7;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v6 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v9 = 0;
  sub_2715D613C(v6, &v9);
  *(a2 + 8) = v9;
  v7 = *(a1 + 104);
  *(a1 + 88) = "acknowledge_until";
  *(a1 + 96) = 17;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  if (*sub_27182D2AC(a1))
  {
    v8 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    v9 = 0;
    sub_2715D613C(v8, &v9);
    *(a2 + 16) = v9;
    *(a2 + 24) = 1;
  }

  else
  {
    ++*(a1 + 112);
    if (*(a2 + 24) == 1)
    {
      *(a2 + 24) = 0;
    }
  }
}

void sub_27149BB80(uint64_t *a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_2713DA430(v3 + 16, &v23);
      sub_2713B2524(v37, &v23);
      sub_2713E031C(v3 + 16, v37);
      if (v49 == 1)
      {
        v5 = __p;
        if (__p)
        {
          v6 = v48;
          v7 = __p;
          if (v48 != __p)
          {
            do
            {
              v8 = *(v6 - 1);
              v6 -= 3;
              if (v8 < 0)
              {
                operator delete(*v6);
              }
            }

            while (v6 != v5);
            v7 = __p;
          }

          v48 = v5;
          operator delete(v7);
        }
      }

      if (v46 == 1 && v45 < 0)
      {
        operator delete(v44);
      }

      if (v43 == 1 && v42 < 0)
      {
        operator delete(v41);
      }

      if (v40 == 1 && v39 < 0)
      {
        operator delete(v38);
      }

      if (v36 != 1)
      {
        goto LABEL_66;
      }

      v13 = v34;
      if (!v34)
      {
        goto LABEL_66;
      }

      v14 = v35;
      v15 = v34;
      if (v35 == v34)
      {
LABEL_65:
        v35 = v13;
        operator delete(v15);
LABEL_66:
        if (v33 == 1 && v32 < 0)
        {
          operator delete(v31);
        }

        if (v30 == 1 && v29 < 0)
        {
          operator delete(v28);
        }

        if (v27 == 1 && v26 < 0)
        {
          operator delete(v25);
        }

        if (*(v3 + 192))
        {
          sub_2711308D4();
        }

        goto LABEL_76;
      }

      while (1)
      {
        v16 = v14;
        if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
        {
          operator delete(*(v14 - 8));
          v14 -= 12;
          if (*(v16 - 72) == 1)
          {
LABEL_37:
            if (*(v16 - 73) < 0)
            {
              operator delete(*v14);
            }
          }
        }

        else
        {
          v14 -= 12;
          if (*(v16 - 72) == 1)
          {
            goto LABEL_37;
          }
        }

        if (v14 == v13)
        {
          goto LABEL_64;
        }
      }
    }

    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), &v23);
    sub_2713B2524(v37, &v23);
    sub_2713E031C(v3 + 16, v37);
    if (v49 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v48;
        v11 = __p;
        if (v48 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v48 = v9;
        operator delete(v11);
      }
    }

    if (v46 == 1 && v45 < 0)
    {
      operator delete(v44);
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v36 != 1)
    {
      goto LABEL_66;
    }

    v13 = v34;
    if (!v34)
    {
      goto LABEL_66;
    }

    v17 = v35;
    v15 = v34;
    if (v35 == v34)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v34;
        goto LABEL_65;
      }
    }
  }

LABEL_76:
  LODWORD(v23) = 6;
  sub_27183A9AC(a2, &v23);
  if (v23 >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = v23;
  }

  if (v23 > 2)
  {
    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, &v23);
      if (SHIBYTE(v25) < 0)
      {
        if (v24 == 1 && *(a2 + 72) == *v23)
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v25) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v25) == 1 && *(a2 + 72) == v23)
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v25) < 0)
      {
LABEL_93:
        operator delete(v23);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  sub_2713C30AC(&v23, a2, v3 + 16, v19);
LABEL_95:
  LODWORD(v23) = 2;
  sub_27183A9AC(a2, &v23);
  if (v23 >= 2)
  {
    v21 = 2;
  }

  else
  {
    v21 = v23;
  }

  sub_27149C114(a2, v3 + 200, v21);
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a2, &v23);
    if (SHIBYTE(v25) < 0)
    {
      if (v24 == 1 && *(a2 + 72) == *v23)
      {
LABEL_108:
        v22 = 0;
        if (SHIBYTE(v25) < 0)
        {
          goto LABEL_111;
        }

        goto LABEL_99;
      }
    }

    else if (SHIBYTE(v25) == 1 && *(a2 + 72) == v23)
    {
      goto LABEL_108;
    }

    v22 = 1;
    if (SHIBYTE(v25) < 0)
    {
LABEL_111:
      operator delete(v23);
    }

LABEL_99:
    if ((v22 & 1) == 0)
    {
      return;
    }
  }
}