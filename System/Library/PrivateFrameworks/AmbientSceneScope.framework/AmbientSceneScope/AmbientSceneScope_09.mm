void sub_23F004660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_23EF44860(v47);
  sub_23EF44860(&a47);
  _Unwind_Resume(a1);
}

void sub_23F00469C(_DWORD *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28518D908, &unk_2851798D0, 0);
  if (v4)
  {
    sub_23F004C54(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28518D908, &unk_285179918, 0);
  if (v5)
  {
    sub_23F005180(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799A0, 0);
    if (v6)
    {
      sub_23F005414(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799E8, 0);
    if (v7)
    {
      sub_23F005940(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28518D908, &unk_28518B990, 0);
      if (v8)
      {
        sub_23F005B54(&v10, v8);
      }

      else
      {
        sub_23F004868(&v9, a1);
      }
    }
  }
}

void sub_23F004868(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v12 = 4;
    (*(*a2 + 104))(a2, &v12);
    v10 = v12;
    if (v9 >= 1)
    {
      if (v9 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_23EF886A8(a2, v3 + 16, v10);
      goto LABEL_16;
    }

    sub_23EF886A8(a2, v3 + 16, v12);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v12 = 5;
    (*(*a2 + 104))(a2, &v12);
    v8 = v12;
    if (v7 >= 1)
    {
      if (v7 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_23EF87D4C(a2, v3 + 16, v8);
      goto LABEL_16;
    }

    sub_23EF87D4C(a2, v3 + 16, v12);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    v5 = a2[2];
    v12 = 6;
    (*(*a2 + 104))(a2, &v12);
    v6 = v12;
    if (v5 >= 1)
    {
      if (v5 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_23EF5C460(a2, v3 + 16, v6);
LABEL_16:
      (*(*a2 + 24))(a2);
      goto LABEL_17;
    }

    sub_23EF5C460(a2, v3 + 16, v12);
  }

LABEL_17:
  v11 = a2[2];
  v12 = 2;
  (*(*a2 + 104))(a2, &v12);
  if (v11 < 1)
  {
    sub_23EF90908(a2, (v3 + 200));
  }

  else
  {
    if (v11 == 2)
    {
      v12 = 2;
      (*(*a2 + 104))(a2, &v12);
    }

    (*(*a2 + 16))(a2);
    sub_23EF90908(a2, (v3 + 200));
    (*(*a2 + 24))(a2);
  }
}

void sub_23F004C54(uint64_t *a1, uint64_t a2)
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

        sub_23F2E6438(a2 + 48, v5);
        v7 = sub_23F2E72C0(a2);
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
          v9 = sub_23F2E72C0(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_23F0655DC(&v26, v10);
        }

        sub_23EF54B14(a2, v3 + 16, 6);
      }

      sub_23EF41D6C();
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

    sub_23F2E6438(a2 + 48, v12);
    v14 = sub_23F2E72C0(a2);
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
      v16 = sub_23F2E72C0(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_23F0655DC(&v26, v17);
    }

    sub_23EF830A4(a2, v3 + 16, 5);
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

  sub_23F2E6438(a2 + 48, v19);
  v21 = sub_23F2E72C0(a2);
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
    v23 = sub_23F2E72C0(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_23F0655DC(&v26, v24);
  }

  sub_23EF8390C(a2, v3 + 16, 4);
}

void sub_23F005180(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = *(a2 + 24);
    if (*(v7 + 40) == 1)
    {
      v19 = (v7 + 16);
      sub_23F2FD25C(&v19, 4u);
    }

    else
    {
      sub_23F2FD4DC(&v19, (v7 + 8), 4u);
    }

    sub_23F2F887C(*(a2 + 24));
    sub_23EF84C34(a2, v3 + 16, 4);
  }

  else if (v4 == 1)
  {
    v6 = *(a2 + 24);
    if (*(v6 + 40) == 1)
    {
      v19 = (v6 + 16);
      sub_23F2FD25C(&v19, 5u);
    }

    else
    {
      sub_23F2FD4DC(&v19, (v6 + 8), 5u);
    }

    sub_23F2F887C(*(a2 + 24));
    sub_23EF84B04(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    v5 = *(a2 + 24);
    if (*(v5 + 40) == 1)
    {
      v19 = (v5 + 16);
      sub_23F2FD25C(&v19, 6u);
    }

    else
    {
      sub_23F2FD4DC(&v19, (v5 + 8), 6u);
    }

    sub_23F2F887C(*(a2 + 24));
    sub_23EF57C0C(a2, v3 + 16, 6);
  }

  v8 = *(a2 + 24);
  v9 = *(*(v8 + 88) - 8);
  sub_23F2F866C((v8 + 48), *(v8 + 16) - v9 - 9);
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
    v19 = (v13 + 16);
    sub_23F2FD25C(&v19, 2u);
  }

  else
  {
    sub_23F2FD4DC(&v19, (v13 + 8), 2u);
  }

  sub_23F2F887C(*(a2 + 24));
  sub_23EF8F360(a2, (v3 + 200));
  v14 = *(a2 + 24);
  v15 = *(*(v14 + 88) - 8);
  sub_23F2F866C((v14 + 48), *(v14 + 16) - v15 - 9);
  v16 = *(v14 + 48);
  if (v16)
  {
    memmove((*(v14 + 24) + v15), *(v14 + 56), v16);
  }

  *(v14 + 48) = 0;
  v17 = *(v14 + 80);
  v18 = *(v14 + 88) - 8;
  *(v14 + 88) = v18;
  if (v17 == v18)
  {
    std::ostream::write();
    if (*(v14 + 40) == 1)
    {
      free(*(v14 + 24));
      *(v14 + 40) = 0;
    }
  }
}

void sub_23F005414(uint64_t *a1, uint64_t a2)
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

        sub_23F07903C(a2 + 48, v5);
        v7 = sub_23F2E6C78(a2);
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
          v9 = sub_23F2E6C78(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_23F06357C(&v26, v10);
        }

        sub_23EF58E64(a2, v3 + 16, 6);
      }

      sub_23EF41D6C();
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

    sub_23F07903C(a2 + 48, v12);
    v14 = sub_23F2E6C78(a2);
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
      v16 = sub_23F2E6C78(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_23F06357C(&v26, v17);
    }

    sub_23EF85628(a2, v3 + 16, 5);
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

  sub_23F07903C(a2 + 48, v19);
  v21 = sub_23F2E6C78(a2);
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
    v23 = sub_23F2E6C78(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_23F06357C(&v26, v24);
  }

  sub_23EF85CB4(a2, v3 + 16, 4);
}

void *sub_23F005940(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v16 = *(a2 + 24);
      v19 = *(a2 + 32);
      sub_23EF2F9B0(v16, &v19, 1);
    }

    MEMORY[0x245CAC910](*(a2 + 24), 4);
    ++*(a2 + 40);
    sub_23EF87030(a2, v3 + 16, 4);
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
        sub_23EF41D6C();
      }

      if (*(a2 + 40))
      {
        v5 = *(a2 + 24);
        v17 = *(a2 + 32);
        sub_23EF2F9B0(v5, &v17, 1);
      }

      MEMORY[0x245CAC910](*(a2 + 24), 6);
      ++*(a2 + 40);
      sub_23EF5A720(a2, v3 + 16, 6);
      v6 = *(a2 + 34);
      if (!*(a2 + 40))
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = *(a2 + 24);
      v20 = *(a2 + 32);
      sub_23EF2F9B0(v8, &v20, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      v18 = *(a2 + 32);
      sub_23EF2F9B0(v7, &v18, 1);
    }

    MEMORY[0x245CAC910](*(a2 + 24), 5);
    ++*(a2 + 40);
    sub_23EF86A84(a2, v3 + 16, 5);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v9 = *(a2 + 24);
  v21 = v6;
  sub_23EF2F9B0(v9, &v21, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    v22 = *(a2 + 32);
    sub_23EF2F9B0(v11, &v22, 1);
  }

  MEMORY[0x245CAC910](*(a2 + 24), 2);
  ++*(a2 + 40);
  sub_23EF90134(a2, (v3 + 200));
  v12 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v13 = *(a2 + 24);
    v23 = *(a2 + 32);
    sub_23EF2F9B0(v13, &v23, 1);
  }

  v14 = *(a2 + 24);
  v24 = v12;
  result = sub_23EF2F9B0(v14, &v24, 1);
  ++*(a2 + 40);
  return result;
}

void sub_23F005B54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    __src = 4;
    sub_23F295368((a2 + 24), *(a2 + 32), &__src, &v11, 4);
    v7 = __src;
    sub_23F294D84(a2);
    sub_23EF87798(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    __src = 5;
    sub_23F295368((a2 + 24), *(a2 + 32), &__src, &v11, 4);
    v6 = __src;
    sub_23F294D84(a2);
    sub_23EF87668(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    __src = 6;
    sub_23F295368((a2 + 24), *(a2 + 32), &__src, &v11, 4);
    v5 = __src;
    sub_23F294D84(a2);
    sub_23EF5B8BC(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  __src = 2;
  sub_23F295368((a2 + 24), *(a2 + 32), &__src, &v11, 4);
  sub_23F294D84(a2);
  sub_23EF90694(a2, (v3 + 200));
  v9 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v9 + 10) = *(a2 + 32) - v9 - 18;
  *(a2 + 56) -= 8;
}

void sub_23F005D08(void *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179A70, 0);
  if (v4)
  {
    sub_23F006340(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179AA8, 0);
  if (v5)
  {
    sub_23F006760(&v10, v5);
  }

  v10 = a2;
  v6 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B30, 0);
  if (v6)
  {
    sub_23F006B84(&v10, v6);
  }

  v10 = a2;
  v7 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B68, 0);
  if (v7)
  {
    sub_23F006FA4(&v10, v7);
  }

  v10 = a2;
  v8 = __dynamic_cast(a1, &unk_28518D8F0, &unk_28518B930, 0);
  if (v8)
  {
    sub_23F007474(&v10, v8);
  }

  sub_23F005ED4(&v9, a1);
}

void sub_23F005ED4(uint64_t *a1, void **a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v21);
    sub_23EF53784(v33, v21);
    sub_23EF88F40(v3 + 16, v33);
    if (v45 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v44;
        v7 = __p;
        if (v44 != __p)
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

        v44 = v5;
        operator delete(v7);
      }
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (v32 != 1)
    {
      goto LABEL_66;
    }

    v13 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

    v14 = v31;
    v15 = v30;
    if (v31 == v30)
    {
LABEL_65:
      v31 = v13;
      operator delete(v15);
LABEL_66:
      if (v29 == 1 && v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 == 1 && v22 < 0)
      {
        operator delete(v21[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      v19 = *a2;
      v21[0] = a2[1];
      v20 = v21[0];
      v33[0] = 6;
      v19[13](a2, v33);
      if (v20 < 1)
      {
        if (v33[0] < 3)
        {
          sub_23EF69318(v33, a2, v3 + 16, v33[0]);
        }

        else
        {
          sub_23EF69524(a2, v3 + 16, v33[0]);
        }
      }

      else
      {
        sub_23EF68F0C(v21, a2, v3 + 16, v33[0]);
      }

      v21[0] = a2[1];
      sub_23EF9C95C(v21, a2, (v3 + 200));
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v21);
  sub_23EF53784(v33, v21);
  sub_23EF88F40(v3 + 16, v33);
  if (v45 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v44;
      v11 = __p;
      if (v44 != __p)
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

      v44 = v9;
      operator delete(v11);
    }
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v32 != 1)
  {
    goto LABEL_66;
  }

  v13 = v30;
  if (!v30)
  {
    goto LABEL_66;
  }

  v17 = v31;
  v15 = v30;
  if (v31 == v30)
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
      v15 = v30;
      goto LABEL_65;
    }
  }
}

void sub_23F006340(uint64_t *a1, uint64_t a2)
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
    sub_23EF82B6C(v3 + 16, v20);
    sub_23EF53784(v32, v20);
    sub_23EF88F40(v3 + 16, v32);
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
        sub_23EF41D6C();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_23EF5D92C(a2, v3 + 16);
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v20);
  sub_23EF53784(v32, v20);
  sub_23EF88F40(v3 + 16, v32);
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

void sub_23F006760(uint64_t *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v19);
    sub_23EF53784(v31, v19);
    sub_23EF88F40(v3 + 16, v31);
    if (v43 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v42;
        v7 = __p;
        if (v42 != __p)
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

        v42 = v5;
        operator delete(v7);
      }
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (v30 != 1)
    {
      goto LABEL_66;
    }

    v13 = v28;
    if (!v28)
    {
      goto LABEL_66;
    }

    v14 = v29;
    v15 = v28;
    if (v29 == v28)
    {
LABEL_65:
      v29 = v13;
      operator delete(v15);
LABEL_66:
      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 == 1 && v20 < 0)
      {
        operator delete(v19[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      LODWORD(v19[0]) = 6;
      sub_23F2F7EFC(a2[6], v19);
      sub_23EF62320(v19, a2, v3 + 16, LODWORD(v19[0]));
      LODWORD(v19[0]) = 2;
      sub_23F2F7EFC(a2[6], v19);
      sub_23EF93398(v19, a2, (v3 + 200), v19[0]);
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v19);
  sub_23EF53784(v31, v19);
  sub_23EF88F40(v3 + 16, v31);
  if (v43 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v42;
      v11 = __p;
      if (v42 != __p)
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

      v42 = v9;
      operator delete(v11);
    }
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (v30 != 1)
  {
    goto LABEL_66;
  }

  v13 = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  v17 = v29;
  v15 = v28;
  if (v29 == v28)
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
      v15 = v28;
      goto LABEL_65;
    }
  }
}

void sub_23F006B84(uint64_t *a1, uint64_t a2)
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
    sub_23EF82B6C(v3 + 16, v20);
    sub_23EF53784(v32, v20);
    sub_23EF88F40(v3 + 16, v32);
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
        sub_23EF41D6C();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_23EF63AE0(a2, v3 + 16);
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v20);
  sub_23EF53784(v32, v20);
  sub_23EF88F40(v3 + 16, v32);
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

void sub_23F006FA4(uint64_t *a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
LABEL_76:
    LODWORD(v21[0]) = 6;
    sub_23F2F5830(a2, v21);
    if (LODWORD(v21[0]) >= 6)
    {
      v19 = 6;
    }

    else
    {
      v19 = LODWORD(v21[0]);
    }

    if (LODWORD(v21[0]) <= 2)
    {
      sub_23EF65CF0(v21, a2, v3 + 16, v19);
LABEL_95:
      sub_23EF97B5C(v21, a2, (v3 + 200));
    }

    sub_23EF65EFC(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_23F2F7390(a2, v21);
      if (SHIBYTE(v22) < 0)
      {
        if (v21[1] == 1 && *(a2 + 72) == *v21[0])
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v22) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v22) == 1 && *(a2 + 72) == LOBYTE(v21[0]))
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v22) < 0)
      {
LABEL_93:
        operator delete(v21[0]);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v21);
    sub_23EF53784(v34, v21);
    sub_23EF88F40(v3 + 16, v34);
    if (v46 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v45;
        v7 = __p;
        if (v45 != __p)
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

        v45 = v5;
        operator delete(v7);
      }
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v33 != 1)
    {
      goto LABEL_66;
    }

    v13 = v31;
    if (!v31)
    {
      goto LABEL_66;
    }

    v14 = v32;
    v15 = v31;
    if (v32 == v31)
    {
LABEL_65:
      v32 = v13;
      operator delete(v15);
LABEL_66:
      if (v30 == 1 && v29 < 0)
      {
        operator delete(v28);
      }

      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v21);
  sub_23EF53784(v34, v21);
  sub_23EF88F40(v3 + 16, v34);
  if (v46 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v45;
      v11 = __p;
      if (v45 != __p)
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

      v45 = v9;
      operator delete(v11);
    }
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v33 != 1)
  {
    goto LABEL_66;
  }

  v13 = v31;
  if (!v31)
  {
    goto LABEL_66;
  }

  v17 = v32;
  v15 = v31;
  if (v32 == v31)
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
      v15 = v31;
      goto LABEL_65;
    }
  }
}

void sub_23F007474(uint64_t *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v19);
    sub_23EF53784(v31, v19);
    sub_23EF88F40(v3 + 16, v31);
    if (v43 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v42;
        v7 = __p;
        if (v42 != __p)
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

        v42 = v5;
        operator delete(v7);
      }
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (v30 != 1)
    {
      goto LABEL_66;
    }

    v13 = v28;
    if (!v28)
    {
      goto LABEL_66;
    }

    v14 = v29;
    v15 = v28;
    if (v29 == v28)
    {
LABEL_65:
      v29 = v13;
      operator delete(v15);
LABEL_66:
      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 == 1 && v20 < 0)
      {
        operator delete(v19[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      sub_23EF67614(v19, a2, v3 + 16);
      sub_23EF99DA4(v19, a2, v3 + 200);
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v19);
  sub_23EF53784(v31, v19);
  sub_23EF88F40(v3 + 16, v31);
  if (v43 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v42;
      v11 = __p;
      if (v42 != __p)
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

      v42 = v9;
      operator delete(v11);
    }
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (v30 != 1)
  {
    goto LABEL_66;
  }

  v13 = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  v17 = v29;
  v15 = v28;
  if (v29 == v28)
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
      v15 = v28;
      goto LABEL_65;
    }
  }
}

BOOL sub_23F007864(uint64_t a1, uint64_t a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_23EF82E08(a1 + 16, &v40);
  }

  else if (v4 == 1)
  {
    sub_23EF82B6C(a1 + 16, &v40);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88((a1 + 16), &v40);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_23EF82E08(a2 + 16, &v25);
  }

  else if (v5 == 1)
  {
    sub_23EF82B6C(a2 + 16, &v25);
  }

  else
  {
    if (v5)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88((a2 + 16), &v25);
  }

  if (v40 == v25 && v41 == v26 && (v20 = &v42, v21 = &v45, v22 = &v46, v23 = &v49, v24 = &v52, v19[0] = &v27, v19[1] = &v30, v19[2] = &v31, v19[3] = &v34, v19[4] = &__p, sub_23F04C458(&v20, v19)) && *(a1 + 200) == *(a2 + 200) && *(a1 + 208) == *(a2 + 208) && (v6 = *(a1 + 216), v7 = *v6, v8 = *(a2 + 216), v7 == *v8))
  {
    v20 = v19;
    v21 = v6;
    v22 = v8;
    v9 = sub_23F2C7774(v7, &v20);
    if (v39 != 1)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v9 = 0;
    if (v39 != 1)
    {
      goto LABEL_35;
    }
  }

  v10 = __p;
  if (__p)
  {
    v11 = v38;
    v12 = __p;
    if (v38 == __p)
    {
LABEL_34:
      v38 = v10;
      operator delete(v12);
      goto LABEL_35;
    }

    while (1)
    {
      v13 = v11;
      if (*(v11 - 16) == 1 && *(v11 - 41) < 0)
      {
        operator delete(*(v11 - 8));
        v11 -= 12;
        if (*(v13 - 72) == 1)
        {
LABEL_29:
          if (*(v13 - 73) < 0)
          {
            operator delete(*v11);
          }
        }
      }

      else
      {
        v11 -= 12;
        if (*(v13 - 72) == 1)
        {
          goto LABEL_29;
        }
      }

      if (v11 == v10)
      {
        v12 = __p;
        goto LABEL_34;
      }
    }
  }

LABEL_35:
  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v33 == 1 && v32 < 0)
  {
    operator delete(v31);
  }

  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (v54 == 1)
  {
    v14 = v52;
    if (v52)
    {
      v15 = v53;
      v16 = v52;
      if (v53 == v52)
      {
LABEL_57:
        v53 = v14;
        operator delete(v16);
        goto LABEL_58;
      }

      while (1)
      {
        v17 = v15;
        if (*(v15 - 16) == 1 && *(v15 - 41) < 0)
        {
          operator delete(*(v15 - 8));
          v15 -= 12;
          if (*(v17 - 72) == 1)
          {
LABEL_52:
            if (*(v17 - 73) < 0)
            {
              operator delete(*v15);
            }
          }
        }

        else
        {
          v15 -= 12;
          if (*(v17 - 72) == 1)
          {
            goto LABEL_52;
          }
        }

        if (v15 == v14)
        {
          v16 = v52;
          goto LABEL_57;
        }
      }
    }
  }

LABEL_58:
  if (v51 == 1 && v50 < 0)
  {
    operator delete(v49);
  }

  if (v48 == 1 && v47 < 0)
  {
    operator delete(v46);
  }

  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  return v9;
}

void sub_23F007C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_23EF44860(v47);
  sub_23EF44860(&a47);
  _Unwind_Resume(a1);
}

void sub_23F007C54(_DWORD *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28518D908, &unk_2851798D0, 0);
  if (v4)
  {
    sub_23F00820C(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28518D908, &unk_285179918, 0);
  if (v5)
  {
    sub_23F008738(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799A0, 0);
    if (v6)
    {
      sub_23F0089CC(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799E8, 0);
    if (v7)
    {
      sub_23F008EF8(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28518D908, &unk_28518B990, 0);
      if (v8)
      {
        sub_23F00910C(&v10, v8);
      }

      else
      {
        sub_23F007E20(&v9, a1);
      }
    }
  }
}

void sub_23F007E20(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v12 = 4;
    (*(*a2 + 104))(a2, &v12);
    v10 = v12;
    if (v9 >= 1)
    {
      if (v9 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_23EF886A8(a2, v3 + 16, v10);
      goto LABEL_16;
    }

    sub_23EF886A8(a2, v3 + 16, v12);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v12 = 5;
    (*(*a2 + 104))(a2, &v12);
    v8 = v12;
    if (v7 >= 1)
    {
      if (v7 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_23EF87D4C(a2, v3 + 16, v8);
      goto LABEL_16;
    }

    sub_23EF87D4C(a2, v3 + 16, v12);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    v5 = a2[2];
    v12 = 6;
    (*(*a2 + 104))(a2, &v12);
    v6 = v12;
    if (v5 >= 1)
    {
      if (v5 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_23EF5C460(a2, v3 + 16, v6);
LABEL_16:
      (*(*a2 + 24))(a2);
      goto LABEL_17;
    }

    sub_23EF5C460(a2, v3 + 16, v12);
  }

LABEL_17:
  v11 = a2[2];
  v12 = 2;
  (*(*a2 + 104))(a2, &v12);
  if (v11 < 1)
  {
    sub_23EFA26BC(a2, (v3 + 200));
  }

  else
  {
    if (v11 == 2)
    {
      v12 = 2;
      (*(*a2 + 104))(a2, &v12);
    }

    (*(*a2 + 16))(a2);
    sub_23EFA26BC(a2, (v3 + 200));
    (*(*a2 + 24))(a2);
  }
}

void sub_23F00820C(uint64_t *a1, uint64_t a2)
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

        sub_23F2E6438(a2 + 48, v5);
        v7 = sub_23F2E72C0(a2);
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
          v9 = sub_23F2E72C0(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_23F0655DC(&v26, v10);
        }

        sub_23EF54B14(a2, v3 + 16, 6);
      }

      sub_23EF41D6C();
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

    sub_23F2E6438(a2 + 48, v12);
    v14 = sub_23F2E72C0(a2);
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
      v16 = sub_23F2E72C0(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_23F0655DC(&v26, v17);
    }

    sub_23EF830A4(a2, v3 + 16, 5);
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

  sub_23F2E6438(a2 + 48, v19);
  v21 = sub_23F2E72C0(a2);
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
    v23 = sub_23F2E72C0(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_23F0655DC(&v26, v24);
  }

  sub_23EF8390C(a2, v3 + 16, 4);
}

void sub_23F008738(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = a2[3];
    if (*(v7 + 40) == 1)
    {
      v19 = (v7 + 16);
      sub_23F2FD25C(&v19, 4u);
    }

    else
    {
      sub_23F2FD4DC(&v19, (v7 + 8), 4u);
    }

    sub_23F2F887C(a2[3]);
    sub_23EF84C34(a2, v3 + 16, 4);
  }

  else if (v4 == 1)
  {
    v6 = a2[3];
    if (*(v6 + 40) == 1)
    {
      v19 = (v6 + 16);
      sub_23F2FD25C(&v19, 5u);
    }

    else
    {
      sub_23F2FD4DC(&v19, (v6 + 8), 5u);
    }

    sub_23F2F887C(a2[3]);
    sub_23EF84B04(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    v5 = a2[3];
    if (*(v5 + 40) == 1)
    {
      v19 = (v5 + 16);
      sub_23F2FD25C(&v19, 6u);
    }

    else
    {
      sub_23F2FD4DC(&v19, (v5 + 8), 6u);
    }

    sub_23F2F887C(a2[3]);
    sub_23EF57C0C(a2, v3 + 16, 6);
  }

  v8 = a2[3];
  v9 = *(*(v8 + 88) - 8);
  sub_23F2F866C((v8 + 48), *(v8 + 16) - v9 - 9);
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

  v13 = a2[3];
  if (*(v13 + 40) == 1)
  {
    v19 = (v13 + 16);
    sub_23F2FD25C(&v19, 2u);
  }

  else
  {
    sub_23F2FD4DC(&v19, (v13 + 8), 2u);
  }

  sub_23F2F887C(a2[3]);
  sub_23EFA10E0(a2, (v3 + 200));
  v14 = a2[3];
  v15 = *(*(v14 + 88) - 8);
  sub_23F2F866C((v14 + 48), *(v14 + 16) - v15 - 9);
  v16 = *(v14 + 48);
  if (v16)
  {
    memmove((*(v14 + 24) + v15), *(v14 + 56), v16);
  }

  *(v14 + 48) = 0;
  v17 = *(v14 + 80);
  v18 = *(v14 + 88) - 8;
  *(v14 + 88) = v18;
  if (v17 == v18)
  {
    std::ostream::write();
    if (*(v14 + 40) == 1)
    {
      free(*(v14 + 24));
      *(v14 + 40) = 0;
    }
  }
}

void sub_23F0089CC(uint64_t *a1, uint64_t a2)
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

        sub_23F07903C(a2 + 48, v5);
        v7 = sub_23F2E6C78(a2);
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
          v9 = sub_23F2E6C78(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_23F06357C(&v26, v10);
        }

        sub_23EF58E64(a2, v3 + 16, 6);
      }

      sub_23EF41D6C();
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

    sub_23F07903C(a2 + 48, v12);
    v14 = sub_23F2E6C78(a2);
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
      v16 = sub_23F2E6C78(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_23F06357C(&v26, v17);
    }

    sub_23EF85628(a2, v3 + 16, 5);
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

  sub_23F07903C(a2 + 48, v19);
  v21 = sub_23F2E6C78(a2);
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
    v23 = sub_23F2E6C78(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_23F06357C(&v26, v24);
  }

  sub_23EF85CB4(a2, v3 + 16, 4);
}

void *sub_23F008EF8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v16 = *(a2 + 24);
      v19 = *(a2 + 32);
      sub_23EF2F9B0(v16, &v19, 1);
    }

    MEMORY[0x245CAC910](*(a2 + 24), 4);
    ++*(a2 + 40);
    sub_23EF87030(a2, v3 + 16, 4);
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
        sub_23EF41D6C();
      }

      if (*(a2 + 40))
      {
        v5 = *(a2 + 24);
        v17 = *(a2 + 32);
        sub_23EF2F9B0(v5, &v17, 1);
      }

      MEMORY[0x245CAC910](*(a2 + 24), 6);
      ++*(a2 + 40);
      sub_23EF5A720(a2, v3 + 16, 6);
      v6 = *(a2 + 34);
      if (!*(a2 + 40))
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = *(a2 + 24);
      v20 = *(a2 + 32);
      sub_23EF2F9B0(v8, &v20, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      v18 = *(a2 + 32);
      sub_23EF2F9B0(v7, &v18, 1);
    }

    MEMORY[0x245CAC910](*(a2 + 24), 5);
    ++*(a2 + 40);
    sub_23EF86A84(a2, v3 + 16, 5);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v9 = *(a2 + 24);
  v21 = v6;
  sub_23EF2F9B0(v9, &v21, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    v22 = *(a2 + 32);
    sub_23EF2F9B0(v11, &v22, 1);
  }

  MEMORY[0x245CAC910](*(a2 + 24), 2);
  ++*(a2 + 40);
  sub_23EFA1E40(a2, (v3 + 200));
  v12 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v13 = *(a2 + 24);
    v23 = *(a2 + 32);
    sub_23EF2F9B0(v13, &v23, 1);
  }

  v14 = *(a2 + 24);
  v24 = v12;
  result = sub_23EF2F9B0(v14, &v24, 1);
  ++*(a2 + 40);
  return result;
}

void sub_23F00910C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    __src = 4;
    sub_23F295368((a2 + 24), *(a2 + 32), &__src, &v11, 4);
    v7 = __src;
    sub_23F294D84(a2);
    sub_23EF87798(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    __src = 5;
    sub_23F295368((a2 + 24), *(a2 + 32), &__src, &v11, 4);
    v6 = __src;
    sub_23F294D84(a2);
    sub_23EF87668(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    __src = 6;
    sub_23F295368((a2 + 24), *(a2 + 32), &__src, &v11, 4);
    v5 = __src;
    sub_23F294D84(a2);
    sub_23EF5B8BC(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  __src = 2;
  sub_23F295368((a2 + 24), *(a2 + 32), &__src, &v11, 4);
  sub_23F294D84(a2);
  sub_23EFA2408(a2, (v3 + 200));
  v9 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v9 + 10) = *(a2 + 32) - v9 - 18;
  *(a2 + 56) -= 8;
}

void sub_23F0092C0(void *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179A70, 0);
  if (v4)
  {
    sub_23F0098EC(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179AA8, 0);
  if (v5)
  {
    sub_23F009DC8(&v10, v5);
  }

  v10 = a2;
  v6 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B30, 0);
  if (v6)
  {
    sub_23F00A1EC(&v10, v6);
  }

  v10 = a2;
  v7 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B68, 0);
  if (v7)
  {
    sub_23F00A6C8(&v10, v7);
  }

  v10 = a2;
  v8 = __dynamic_cast(a1, &unk_28518D8F0, &unk_28518B930, 0);
  if (v8)
  {
    sub_23F00AB98(&v10, v8);
  }

  sub_23F00948C(&v9, a1);
}

void sub_23F00948C(uint64_t *a1, void **a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v21);
    sub_23EF53784(v33, v21);
    sub_23EF88F40(v3 + 16, v33);
    if (v45 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v44;
        v7 = __p;
        if (v44 != __p)
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

        v44 = v5;
        operator delete(v7);
      }
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (v32 != 1)
    {
      goto LABEL_66;
    }

    v13 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

    v14 = v31;
    v15 = v30;
    if (v31 == v30)
    {
LABEL_65:
      v31 = v13;
      operator delete(v15);
LABEL_66:
      if (v29 == 1 && v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 == 1 && v22 < 0)
      {
        operator delete(v21[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      v19 = *a2;
      v21[0] = a2[1];
      v20 = v21[0];
      v33[0] = 6;
      v19[13](a2, v33);
      if (v20 < 1)
      {
        if (v33[0] < 3)
        {
          sub_23EF69318(v33, a2, v3 + 16, v33[0]);
        }

        else
        {
          sub_23EF69524(a2, v3 + 16, v33[0]);
        }
      }

      else
      {
        sub_23EF68F0C(v21, a2, v3 + 16, v33[0]);
      }

      sub_23EFB0DA4(a2, (v3 + 200));
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v21);
  sub_23EF53784(v33, v21);
  sub_23EF88F40(v3 + 16, v33);
  if (v45 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v44;
      v11 = __p;
      if (v44 != __p)
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

      v44 = v9;
      operator delete(v11);
    }
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v32 != 1)
  {
    goto LABEL_66;
  }

  v13 = v30;
  if (!v30)
  {
    goto LABEL_66;
  }

  v17 = v31;
  v15 = v30;
  if (v31 == v30)
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
      v15 = v30;
      goto LABEL_65;
    }
  }
}

void sub_23F0098EC(uint64_t *a1, uint64_t a2)
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
    sub_23EF82B6C(v3 + 16, v20);
    sub_23EF53784(v32, v20);
    sub_23EF88F40(v3 + 16, v32);
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
        sub_23EF41D6C();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_23EF5D92C(a2, v3 + 16);
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v20);
  sub_23EF53784(v32, v20);
  sub_23EF88F40(v3 + 16, v32);
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

void sub_23F009DC8(uint64_t *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v19);
    sub_23EF53784(v31, v19);
    sub_23EF88F40(v3 + 16, v31);
    if (v43 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v42;
        v7 = __p;
        if (v42 != __p)
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

        v42 = v5;
        operator delete(v7);
      }
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (v30 != 1)
    {
      goto LABEL_66;
    }

    v13 = v28;
    if (!v28)
    {
      goto LABEL_66;
    }

    v14 = v29;
    v15 = v28;
    if (v29 == v28)
    {
LABEL_65:
      v29 = v13;
      operator delete(v15);
LABEL_66:
      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 == 1 && v20 < 0)
      {
        operator delete(v19[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      LODWORD(v19[0]) = 6;
      sub_23F2F7EFC(a2[6], v19);
      sub_23EF62320(v19, a2, v3 + 16, LODWORD(v19[0]));
      LODWORD(v19[0]) = 2;
      sub_23F2F7EFC(a2[6], v19);
      sub_23EFA5AC8(v19, a2, (v3 + 200), v19[0]);
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v19);
  sub_23EF53784(v31, v19);
  sub_23EF88F40(v3 + 16, v31);
  if (v43 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v42;
      v11 = __p;
      if (v42 != __p)
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

      v42 = v9;
      operator delete(v11);
    }
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (v30 != 1)
  {
    goto LABEL_66;
  }

  v13 = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  v17 = v29;
  v15 = v28;
  if (v29 == v28)
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
      v15 = v28;
      goto LABEL_65;
    }
  }
}

void sub_23F00A1EC(uint64_t *a1, uint64_t a2)
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
    sub_23EF82B6C(v3 + 16, v20);
    sub_23EF53784(v32, v20);
    sub_23EF88F40(v3 + 16, v32);
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
        sub_23EF41D6C();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_23EF63AE0(a2, v3 + 16);
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v20);
  sub_23EF53784(v32, v20);
  sub_23EF88F40(v3 + 16, v32);
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

void sub_23F00A6C8(uint64_t *a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
LABEL_76:
    LODWORD(v21[0]) = 6;
    sub_23F2F5830(a2, v21);
    if (LODWORD(v21[0]) >= 6)
    {
      v19 = 6;
    }

    else
    {
      v19 = LODWORD(v21[0]);
    }

    if (LODWORD(v21[0]) <= 2)
    {
      sub_23EF65CF0(v21, a2, v3 + 16, v19);
LABEL_95:
      sub_23EFAB1F8(v21, a2, (v3 + 200));
    }

    sub_23EF65EFC(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_23F2F7390(a2, v21);
      if (SHIBYTE(v22) < 0)
      {
        if (v21[1] == 1 && *(a2 + 72) == *v21[0])
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v22) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v22) == 1 && *(a2 + 72) == LOBYTE(v21[0]))
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v22) < 0)
      {
LABEL_93:
        operator delete(v21[0]);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v21);
    sub_23EF53784(v34, v21);
    sub_23EF88F40(v3 + 16, v34);
    if (v46 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v45;
        v7 = __p;
        if (v45 != __p)
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

        v45 = v5;
        operator delete(v7);
      }
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v33 != 1)
    {
      goto LABEL_66;
    }

    v13 = v31;
    if (!v31)
    {
      goto LABEL_66;
    }

    v14 = v32;
    v15 = v31;
    if (v32 == v31)
    {
LABEL_65:
      v32 = v13;
      operator delete(v15);
LABEL_66:
      if (v30 == 1 && v29 < 0)
      {
        operator delete(v28);
      }

      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v21);
  sub_23EF53784(v34, v21);
  sub_23EF88F40(v3 + 16, v34);
  if (v46 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v45;
      v11 = __p;
      if (v45 != __p)
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

      v45 = v9;
      operator delete(v11);
    }
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v33 != 1)
  {
    goto LABEL_66;
  }

  v13 = v31;
  if (!v31)
  {
    goto LABEL_66;
  }

  v17 = v32;
  v15 = v31;
  if (v32 == v31)
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
      v15 = v31;
      goto LABEL_65;
    }
  }
}

void sub_23F00AB98(uint64_t *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v19);
    sub_23EF53784(v31, v19);
    sub_23EF88F40(v3 + 16, v31);
    if (v43 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v42;
        v7 = __p;
        if (v42 != __p)
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

        v42 = v5;
        operator delete(v7);
      }
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (v30 != 1)
    {
      goto LABEL_66;
    }

    v13 = v28;
    if (!v28)
    {
      goto LABEL_66;
    }

    v14 = v29;
    v15 = v28;
    if (v29 == v28)
    {
LABEL_65:
      v29 = v13;
      operator delete(v15);
LABEL_66:
      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 == 1 && v20 < 0)
      {
        operator delete(v19[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      sub_23EF67614(v19, a2, v3 + 16);
      sub_23EFADA98(v19, a2, v3 + 200);
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v19);
  sub_23EF53784(v31, v19);
  sub_23EF88F40(v3 + 16, v31);
  if (v43 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v42;
      v11 = __p;
      if (v42 != __p)
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

      v42 = v9;
      operator delete(v11);
    }
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (v30 != 1)
  {
    goto LABEL_66;
  }

  v13 = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  v17 = v29;
  v15 = v28;
  if (v29 == v28)
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
      v15 = v28;
      goto LABEL_65;
    }
  }
}

BOOL sub_23F00AF88(uint64_t a1, uint64_t a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_23EF82E08(a1 + 16, &v40);
  }

  else if (v4 == 1)
  {
    sub_23EF82B6C(a1 + 16, &v40);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88((a1 + 16), &v40);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_23EF82E08(a2 + 16, &v25);
  }

  else if (v5 == 1)
  {
    sub_23EF82B6C(a2 + 16, &v25);
  }

  else
  {
    if (v5)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88((a2 + 16), &v25);
  }

  if (v40 == v25 && v41 == v26 && (v20 = &v42, v21 = &v45, v22 = &v46, v23 = &v49, v24 = &v52, v19[0] = &v27, v19[1] = &v30, v19[2] = &v31, v19[3] = &v34, v19[4] = &__p, sub_23F04C458(&v20, v19)) && *(a1 + 200) == *(a2 + 200) && *(a1 + 208) == *(a2 + 208) && (v6 = *(a1 + 216), v7 = *v6, v8 = *(a2 + 216), v7 == *v8))
  {
    v20 = v19;
    v21 = v6;
    v22 = v8;
    v9 = sub_23F2C7774(v7, &v20);
    if (v39 != 1)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v9 = 0;
    if (v39 != 1)
    {
      goto LABEL_35;
    }
  }

  v10 = __p;
  if (__p)
  {
    v11 = v38;
    v12 = __p;
    if (v38 == __p)
    {
LABEL_34:
      v38 = v10;
      operator delete(v12);
      goto LABEL_35;
    }

    while (1)
    {
      v13 = v11;
      if (*(v11 - 16) == 1 && *(v11 - 41) < 0)
      {
        operator delete(*(v11 - 8));
        v11 -= 12;
        if (*(v13 - 72) == 1)
        {
LABEL_29:
          if (*(v13 - 73) < 0)
          {
            operator delete(*v11);
          }
        }
      }

      else
      {
        v11 -= 12;
        if (*(v13 - 72) == 1)
        {
          goto LABEL_29;
        }
      }

      if (v11 == v10)
      {
        v12 = __p;
        goto LABEL_34;
      }
    }
  }

LABEL_35:
  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v33 == 1 && v32 < 0)
  {
    operator delete(v31);
  }

  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (v54 == 1)
  {
    v14 = v52;
    if (v52)
    {
      v15 = v53;
      v16 = v52;
      if (v53 == v52)
      {
LABEL_57:
        v53 = v14;
        operator delete(v16);
        goto LABEL_58;
      }

      while (1)
      {
        v17 = v15;
        if (*(v15 - 16) == 1 && *(v15 - 41) < 0)
        {
          operator delete(*(v15 - 8));
          v15 -= 12;
          if (*(v17 - 72) == 1)
          {
LABEL_52:
            if (*(v17 - 73) < 0)
            {
              operator delete(*v15);
            }
          }
        }

        else
        {
          v15 -= 12;
          if (*(v17 - 72) == 1)
          {
            goto LABEL_52;
          }
        }

        if (v15 == v14)
        {
          v16 = v52;
          goto LABEL_57;
        }
      }
    }
  }

LABEL_58:
  if (v51 == 1 && v50 < 0)
  {
    operator delete(v49);
  }

  if (v48 == 1 && v47 < 0)
  {
    operator delete(v46);
  }

  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  return v9;
}

void sub_23F00B33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_23EF44860(v47);
  sub_23EF44860(&a47);
  _Unwind_Resume(a1);
}

void sub_23F00B378(_DWORD *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28518D908, &unk_2851798D0, 0);
  if (v4)
  {
    sub_23F00B930(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28518D908, &unk_285179918, 0);
  if (v5)
  {
    sub_23F00BE5C(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799A0, 0);
    if (v6)
    {
      sub_23F00C0F0(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799E8, 0);
    if (v7)
    {
      sub_23F00C61C(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28518D908, &unk_28518B990, 0);
      if (v8)
      {
        sub_23F00C830(&v10, v8);
      }

      else
      {
        sub_23F00B544(&v9, a1);
      }
    }
  }
}

void sub_23F00B544(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v12 = 4;
    (*(*a2 + 104))(a2, &v12);
    v10 = v12;
    if (v9 >= 1)
    {
      if (v9 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_23EF886A8(a2, v3 + 16, v10);
      goto LABEL_16;
    }

    sub_23EF886A8(a2, v3 + 16, v12);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v12 = 5;
    (*(*a2 + 104))(a2, &v12);
    v8 = v12;
    if (v7 >= 1)
    {
      if (v7 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_23EF87D4C(a2, v3 + 16, v8);
      goto LABEL_16;
    }

    sub_23EF87D4C(a2, v3 + 16, v12);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    v5 = a2[2];
    v12 = 6;
    (*(*a2 + 104))(a2, &v12);
    v6 = v12;
    if (v5 >= 1)
    {
      if (v5 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_23EF5C460(a2, v3 + 16, v6);
LABEL_16:
      (*(*a2 + 24))(a2);
      goto LABEL_17;
    }

    sub_23EF5C460(a2, v3 + 16, v12);
  }

LABEL_17:
  v11 = a2[2];
  v12 = 2;
  (*(*a2 + 104))(a2, &v12);
  if (v11 < 1)
  {
    sub_23EFB6630(a2, (v3 + 200));
  }

  else
  {
    if (v11 == 2)
    {
      v12 = 2;
      (*(*a2 + 104))(a2, &v12);
    }

    (*(*a2 + 16))(a2);
    sub_23EFB6630(a2, (v3 + 200));
    (*(*a2 + 24))(a2);
  }
}

void sub_23F00B930(uint64_t *a1, uint64_t a2)
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

        sub_23F2E6438(a2 + 48, v5);
        v7 = sub_23F2E72C0(a2);
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
          v9 = sub_23F2E72C0(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_23F0655DC(&v26, v10);
        }

        sub_23EF54B14(a2, v3 + 16, 6);
      }

      sub_23EF41D6C();
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

    sub_23F2E6438(a2 + 48, v12);
    v14 = sub_23F2E72C0(a2);
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
      v16 = sub_23F2E72C0(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_23F0655DC(&v26, v17);
    }

    sub_23EF830A4(a2, v3 + 16, 5);
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

  sub_23F2E6438(a2 + 48, v19);
  v21 = sub_23F2E72C0(a2);
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
    v23 = sub_23F2E72C0(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_23F0655DC(&v26, v24);
  }

  sub_23EF8390C(a2, v3 + 16, 4);
}

void sub_23F00BE5C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = a2[3];
    if (*(v7 + 40) == 1)
    {
      v19 = (v7 + 16);
      sub_23F2FD25C(&v19, 4u);
    }

    else
    {
      sub_23F2FD4DC(&v19, (v7 + 8), 4u);
    }

    sub_23F2F887C(a2[3]);
    sub_23EF84C34(a2, v3 + 16, 4);
  }

  else if (v4 == 1)
  {
    v6 = a2[3];
    if (*(v6 + 40) == 1)
    {
      v19 = (v6 + 16);
      sub_23F2FD25C(&v19, 5u);
    }

    else
    {
      sub_23F2FD4DC(&v19, (v6 + 8), 5u);
    }

    sub_23F2F887C(a2[3]);
    sub_23EF84B04(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    v5 = a2[3];
    if (*(v5 + 40) == 1)
    {
      v19 = (v5 + 16);
      sub_23F2FD25C(&v19, 6u);
    }

    else
    {
      sub_23F2FD4DC(&v19, (v5 + 8), 6u);
    }

    sub_23F2F887C(a2[3]);
    sub_23EF57C0C(a2, v3 + 16, 6);
  }

  v8 = a2[3];
  v9 = *(*(v8 + 88) - 8);
  sub_23F2F866C((v8 + 48), *(v8 + 16) - v9 - 9);
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

  v13 = a2[3];
  if (*(v13 + 40) == 1)
  {
    v19 = (v13 + 16);
    sub_23F2FD25C(&v19, 2u);
  }

  else
  {
    sub_23F2FD4DC(&v19, (v13 + 8), 2u);
  }

  sub_23F2F887C(a2[3]);
  sub_23EFB5CD8(a2, (v3 + 200));
  v14 = a2[3];
  v15 = *(*(v14 + 88) - 8);
  sub_23F2F866C((v14 + 48), *(v14 + 16) - v15 - 9);
  v16 = *(v14 + 48);
  if (v16)
  {
    memmove((*(v14 + 24) + v15), *(v14 + 56), v16);
  }

  *(v14 + 48) = 0;
  v17 = *(v14 + 80);
  v18 = *(v14 + 88) - 8;
  *(v14 + 88) = v18;
  if (v17 == v18)
  {
    std::ostream::write();
    if (*(v14 + 40) == 1)
    {
      free(*(v14 + 24));
      *(v14 + 40) = 0;
    }
  }
}

void sub_23F00C0F0(uint64_t *a1, uint64_t a2)
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

        sub_23F07903C(a2 + 48, v5);
        v7 = sub_23F2E6C78(a2);
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
          v9 = sub_23F2E6C78(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_23F06357C(&v26, v10);
        }

        sub_23EF58E64(a2, v3 + 16, 6);
      }

      sub_23EF41D6C();
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

    sub_23F07903C(a2 + 48, v12);
    v14 = sub_23F2E6C78(a2);
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
      v16 = sub_23F2E6C78(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_23F06357C(&v26, v17);
    }

    sub_23EF85628(a2, v3 + 16, 5);
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

  sub_23F07903C(a2 + 48, v19);
  v21 = sub_23F2E6C78(a2);
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
    v23 = sub_23F2E6C78(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_23F06357C(&v26, v24);
  }

  sub_23EF85CB4(a2, v3 + 16, 4);
}

void *sub_23F00C61C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v16 = *(a2 + 24);
      v19 = *(a2 + 32);
      sub_23EF2F9B0(v16, &v19, 1);
    }

    MEMORY[0x245CAC910](*(a2 + 24), 4);
    ++*(a2 + 40);
    sub_23EF87030(a2, v3 + 16, 4);
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
        sub_23EF41D6C();
      }

      if (*(a2 + 40))
      {
        v5 = *(a2 + 24);
        v17 = *(a2 + 32);
        sub_23EF2F9B0(v5, &v17, 1);
      }

      MEMORY[0x245CAC910](*(a2 + 24), 6);
      ++*(a2 + 40);
      sub_23EF5A720(a2, v3 + 16, 6);
      v6 = *(a2 + 34);
      if (!*(a2 + 40))
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = *(a2 + 24);
      v20 = *(a2 + 32);
      sub_23EF2F9B0(v8, &v20, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      v18 = *(a2 + 32);
      sub_23EF2F9B0(v7, &v18, 1);
    }

    MEMORY[0x245CAC910](*(a2 + 24), 5);
    ++*(a2 + 40);
    sub_23EF86A84(a2, v3 + 16, 5);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v9 = *(a2 + 24);
  v21 = v6;
  sub_23EF2F9B0(v9, &v21, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    v22 = *(a2 + 32);
    sub_23EF2F9B0(v11, &v22, 1);
  }

  MEMORY[0x245CAC910](*(a2 + 24), 2);
  ++*(a2 + 40);
  sub_23EFB63E8(a2, (v3 + 200));
  v12 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v13 = *(a2 + 24);
    v23 = *(a2 + 32);
    sub_23EF2F9B0(v13, &v23, 1);
  }

  v14 = *(a2 + 24);
  v24 = v12;
  result = sub_23EF2F9B0(v14, &v24, 1);
  ++*(a2 + 40);
  return result;
}

void sub_23F00C830(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    __src = 4;
    sub_23F295368((a2 + 24), *(a2 + 32), &__src, &v11, 4);
    v7 = __src;
    sub_23F294D84(a2);
    sub_23EF87798(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    __src = 5;
    sub_23F295368((a2 + 24), *(a2 + 32), &__src, &v11, 4);
    v6 = __src;
    sub_23F294D84(a2);
    sub_23EF87668(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    __src = 6;
    sub_23F295368((a2 + 24), *(a2 + 32), &__src, &v11, 4);
    v5 = __src;
    sub_23F294D84(a2);
    sub_23EF5B8BC(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  __src = 2;
  sub_23F295368((a2 + 24), *(a2 + 32), &__src, &v11, 4);
  sub_23F294D84(a2);
  sub_23EFB6514(a2, (v3 + 200));
  v9 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v9 + 10) = *(a2 + 32) - v9 - 18;
  *(a2 + 56) -= 8;
}

void sub_23F00C9E4(void *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179A70, 0);
  if (v4)
  {
    sub_23F00D010(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179AA8, 0);
  if (v5)
  {
    sub_23F00D4EC(&v10, v5);
  }

  v10 = a2;
  v6 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B30, 0);
  if (v6)
  {
    sub_23F00D910(&v10, v6);
  }

  v10 = a2;
  v7 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B68, 0);
  if (v7)
  {
    sub_23F00DDEC(&v10, v7);
  }

  v10 = a2;
  v8 = __dynamic_cast(a1, &unk_28518D8F0, &unk_28518B930, 0);
  if (v8)
  {
    sub_23F00E2BC(&v10, v8);
  }

  sub_23F00CBB0(&v9, a1);
}

void sub_23F00CBB0(uint64_t *a1, void **a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v21);
    sub_23EF53784(v33, v21);
    sub_23EF88F40(v3 + 16, v33);
    if (v45 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v44;
        v7 = __p;
        if (v44 != __p)
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

        v44 = v5;
        operator delete(v7);
      }
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (v32 != 1)
    {
      goto LABEL_66;
    }

    v13 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

    v14 = v31;
    v15 = v30;
    if (v31 == v30)
    {
LABEL_65:
      v31 = v13;
      operator delete(v15);
LABEL_66:
      if (v29 == 1 && v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 == 1 && v22 < 0)
      {
        operator delete(v21[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      v19 = *a2;
      v21[0] = a2[1];
      v20 = v21[0];
      v33[0] = 6;
      v19[13](a2, v33);
      if (v20 < 1)
      {
        if (v33[0] < 3)
        {
          sub_23EF69318(v33, a2, v3 + 16, v33[0]);
        }

        else
        {
          sub_23EF69524(a2, v3 + 16, v33[0]);
        }
      }

      else
      {
        sub_23EF68F0C(v21, a2, v3 + 16, v33[0]);
      }

      sub_23EFC4570(a2, (v3 + 200));
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v21);
  sub_23EF53784(v33, v21);
  sub_23EF88F40(v3 + 16, v33);
  if (v45 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v44;
      v11 = __p;
      if (v44 != __p)
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

      v44 = v9;
      operator delete(v11);
    }
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v32 != 1)
  {
    goto LABEL_66;
  }

  v13 = v30;
  if (!v30)
  {
    goto LABEL_66;
  }

  v17 = v31;
  v15 = v30;
  if (v31 == v30)
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
      v15 = v30;
      goto LABEL_65;
    }
  }
}

void sub_23F00D010(uint64_t *a1, uint64_t a2)
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
    sub_23EF82B6C(v3 + 16, v20);
    sub_23EF53784(v32, v20);
    sub_23EF88F40(v3 + 16, v32);
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
        sub_23EF41D6C();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_23EF5D92C(a2, v3 + 16);
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v20);
  sub_23EF53784(v32, v20);
  sub_23EF88F40(v3 + 16, v32);
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

void sub_23F00D4EC(uint64_t *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v19);
    sub_23EF53784(v31, v19);
    sub_23EF88F40(v3 + 16, v31);
    if (v43 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v42;
        v7 = __p;
        if (v42 != __p)
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

        v42 = v5;
        operator delete(v7);
      }
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (v30 != 1)
    {
      goto LABEL_66;
    }

    v13 = v28;
    if (!v28)
    {
      goto LABEL_66;
    }

    v14 = v29;
    v15 = v28;
    if (v29 == v28)
    {
LABEL_65:
      v29 = v13;
      operator delete(v15);
LABEL_66:
      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 == 1 && v20 < 0)
      {
        operator delete(v19[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      LODWORD(v19[0]) = 6;
      sub_23F2F7EFC(a2[6], v19);
      sub_23EF62320(v19, a2, v3 + 16, LODWORD(v19[0]));
      LODWORD(v19[0]) = 2;
      sub_23F2F7EFC(a2[6], v19);
      sub_23EFB9464(v19, a2, (v3 + 200), v19[0]);
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v19);
  sub_23EF53784(v31, v19);
  sub_23EF88F40(v3 + 16, v31);
  if (v43 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v42;
      v11 = __p;
      if (v42 != __p)
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

      v42 = v9;
      operator delete(v11);
    }
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (v30 != 1)
  {
    goto LABEL_66;
  }

  v13 = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  v17 = v29;
  v15 = v28;
  if (v29 == v28)
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
      v15 = v28;
      goto LABEL_65;
    }
  }
}

void sub_23F00D910(uint64_t *a1, uint64_t a2)
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
    sub_23EF82B6C(v3 + 16, v20);
    sub_23EF53784(v32, v20);
    sub_23EF88F40(v3 + 16, v32);
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
        sub_23EF41D6C();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_23EF63AE0(a2, v3 + 16);
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v20);
  sub_23EF53784(v32, v20);
  sub_23EF88F40(v3 + 16, v32);
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

void sub_23F00DDEC(uint64_t *a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
LABEL_76:
    LODWORD(v21[0]) = 6;
    sub_23F2F5830(a2, v21);
    if (LODWORD(v21[0]) >= 6)
    {
      v19 = 6;
    }

    else
    {
      v19 = LODWORD(v21[0]);
    }

    if (LODWORD(v21[0]) <= 2)
    {
      sub_23EF65CF0(v21, a2, v3 + 16, v19);
LABEL_95:
      sub_23EFBEA44(v21, a2, (v3 + 200));
    }

    sub_23EF65EFC(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_23F2F7390(a2, v21);
      if (SHIBYTE(v22) < 0)
      {
        if (v21[1] == 1 && *(a2 + 72) == *v21[0])
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v22) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v22) == 1 && *(a2 + 72) == LOBYTE(v21[0]))
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v22) < 0)
      {
LABEL_93:
        operator delete(v21[0]);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v21);
    sub_23EF53784(v34, v21);
    sub_23EF88F40(v3 + 16, v34);
    if (v46 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v45;
        v7 = __p;
        if (v45 != __p)
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

        v45 = v5;
        operator delete(v7);
      }
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v33 != 1)
    {
      goto LABEL_66;
    }

    v13 = v31;
    if (!v31)
    {
      goto LABEL_66;
    }

    v14 = v32;
    v15 = v31;
    if (v32 == v31)
    {
LABEL_65:
      v32 = v13;
      operator delete(v15);
LABEL_66:
      if (v30 == 1 && v29 < 0)
      {
        operator delete(v28);
      }

      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v21);
  sub_23EF53784(v34, v21);
  sub_23EF88F40(v3 + 16, v34);
  if (v46 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v45;
      v11 = __p;
      if (v45 != __p)
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

      v45 = v9;
      operator delete(v11);
    }
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v33 != 1)
  {
    goto LABEL_66;
  }

  v13 = v31;
  if (!v31)
  {
    goto LABEL_66;
  }

  v17 = v32;
  v15 = v31;
  if (v32 == v31)
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
      v15 = v31;
      goto LABEL_65;
    }
  }
}

void sub_23F00E2BC(uint64_t *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v19);
    sub_23EF53784(v31, v19);
    sub_23EF88F40(v3 + 16, v31);
    if (v43 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v42;
        v7 = __p;
        if (v42 != __p)
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

        v42 = v5;
        operator delete(v7);
      }
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (v30 != 1)
    {
      goto LABEL_66;
    }

    v13 = v28;
    if (!v28)
    {
      goto LABEL_66;
    }

    v14 = v29;
    v15 = v28;
    if (v29 == v28)
    {
LABEL_65:
      v29 = v13;
      operator delete(v15);
LABEL_66:
      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 == 1 && v20 < 0)
      {
        operator delete(v19[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      sub_23EF67614(v19, a2, v3 + 16);
      sub_23EFC12A4(v19, a2, v3 + 200);
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v19);
  sub_23EF53784(v31, v19);
  sub_23EF88F40(v3 + 16, v31);
  if (v43 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v42;
      v11 = __p;
      if (v42 != __p)
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

      v42 = v9;
      operator delete(v11);
    }
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (v30 != 1)
  {
    goto LABEL_66;
  }

  v13 = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  v17 = v29;
  v15 = v28;
  if (v29 == v28)
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
      v15 = v28;
      goto LABEL_65;
    }
  }
}

void *sub_23F00E91C(void *a1)
{
  *a1 = &unk_28517B958;
  sub_23EF44860((a1 + 6));
  result = a1;
  a1[1] = &unk_28517B9A0;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_23F00E9DC(void *a1)
{
  *a1 = &unk_28517B958;
  sub_23EF44860((a1 + 6));
  a1[1] = &unk_28517B9A0;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23F00EAC0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394658, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394658))
    {
      sub_23F00FEA8(&stru_27E394640);
      __cxa_guard_release(&qword_27E394658);
    }
  }

  v3 = *(a1 + 8);
  v2 = a1 + 8;
  (*(v3 + 24))(__p, v2);
  sub_23EF44334(&stru_27E394640, "{", __p, ",", v2 + 24, "}");
}

void sub_23F00EBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F00EBDC(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 12;
}

void *sub_23F00EC58(void *result)
{
  *result = &unk_28517B9A0;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_23F00ECEC(void *a1)
{
  *a1 = &unk_28517B958;
  sub_23EF44860((a1 + 6));
  result = a1;
  a1[1] = &unk_28517B9A0;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_23F00EDAC(void *a1)
{
  *a1 = &unk_28517B958;
  sub_23EF44860((a1 + 6));
  a1[1] = &unk_28517B9A0;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23F00EE80(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394638, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394638))
    {
      sub_23F00FC04();
    }
  }

  sub_23F00F6C0(qword_27E394620, "{", a1 + 8, ",", a1 + 32, "}");
}

void sub_23F00EF34(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_23F00EF60(void *a1)
{
  *a1 = &unk_28517B9A0;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F00F008(void *a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28517BF90, &unk_28517B9C0, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v5 = result;
      v6 = a1[1];
      v7 = *v6;
      v8 = *(v5 + 8);
      if (v7 == *v8)
      {
        v9[0] = &v10;
        v9[1] = v6;
        v9[2] = v8;
        return sub_23F2C7774(v7, v9);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_23F00F0DC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394618, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394618))
    {
      sub_23F00F5DC(qword_27E394600);
      __cxa_guard_release(&qword_27E394618);
    }
  }

  sub_23F00F184(qword_27E394600, "{", (a1 + 8), "}");
}

void sub_23F00F184(__int128 *a1, uint64_t a2, _BYTE **a3, uint64_t a4)
{
  v9 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_23EF34EA4(&v7, *a1, *(a1 + 1));
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 2);
  }

  v9 = 1;
  v10 = &v7;
  v11 = a2;
  v12[0] = &v7;
  v12[1] = a2;
  v12[2] = a2;
  sub_23EF4248C(v12, &v7);
  sub_23F00F330(&v6, &v7, a3);
}

void sub_23F00F2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F00F2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F00F2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F00F308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F00F31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F00F598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F00F5DC(std::string *a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 21;
  strcpy(&__p, "cv3d::kit::con::Lines");
  sub_23F301470(v2, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23EF6A9B0(v2, a1);
  if (v3 < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_23F00F690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F00F6C0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_23EF34EA4(&v9, *a1, *(a1 + 1));
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 2);
  }

  v11 = 1;
  v12 = &v9;
  v13 = a2;
  v14[0] = &v9;
  v14[1] = a2;
  v14[2] = a2;
  sub_23EF4248C(v14, &v9);
  sub_23F00F8F0(&v8, &v9, a3);
}

void sub_23F00F860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F00F878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F00F88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F00F8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F00F8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F00F8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F00F8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F00FB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  __cxa_guard_abort(&qword_27E394618);
  v24 = a23;
  a23 = 0;
  if (!v24)
  {
    _Unwind_Resume(a1);
  }

  sub_23F302A54(&a23, v24);
  _Unwind_Resume(a1);
}

void sub_23F00FCD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F00FD08(const void **a1@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 21;
  strcpy(&__p, "cv3d::kit::con::Lines");
  sub_23F301470(v9, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23EF6A9B0(v9, &v12);
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  sub_23EF42150(v8, &v12, 1uLL);
  sub_23F302CF4(a1, v8, a2);
  v4 = v8[0];
  if (v8[0])
  {
    v5 = v8[1];
    v6 = v8[0];
    if (v8[1] != v8[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v8[0];
    }

    v8[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_23F00FE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23EF3291C(&a9);
  if (*(v9 - 25) < 0)
  {
    operator delete(*(v9 - 48));
  }

  _Unwind_Resume(a1);
}

void sub_23F00FEA8(std::string *a1@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  HIBYTE(v7[2]) = 16;
  strcpy(v7, "viz::PackageData");
  *(&__p.__r_.__value_.__s + 23) = 21;
  strcpy(&__p, "cv3d::kit::con::Lines");
  sub_23F301470(v8, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23EF6A9B0(v8, &v11);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  v13 = 12;
  strcpy(v12, "viz::Package");
  sub_23F302E84("12U]", 3, &v14);
  v16 = 4;
  strcpy(v15, "void");
  sub_23EF42150(v6, &v11, 4uLL);
  sub_23F302CF4(v7, v6, a1);
  v2 = v6[0];
  if (v6[0])
  {
    v3 = v6[1];
    v4 = v6[0];
    if (v6[1] != v6[0])
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = v6[0];
    }

    v6[1] = v2;
    operator delete(v4);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v12[0]);
  if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v7[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(v7[0]);
    return;
  }

LABEL_22:
  operator delete(v11.__r_.__value_.__l.__data_);
  if (SHIBYTE(v7[2]) < 0)
  {
    goto LABEL_23;
  }
}

void sub_23F0100DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  sub_23EF3291C(&a10);
  if (a54 < 0)
  {
    operator delete(__p);
    if ((a48 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a42 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a48 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a43);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a36 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a31);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a37);
  if ((a36 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void *sub_23F01019C(void *a1)
{
  *a1 = &unk_28517B958;
  sub_23EF44860((a1 + 6));
  result = a1;
  a1[1] = &unk_28517B9A0;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

BOOL sub_23F01025C(uint64_t a1, uint64_t a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_23EF82E08(a1 + 16, &v40);
  }

  else if (v4 == 1)
  {
    sub_23EF82B6C(a1 + 16, &v40);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88((a1 + 16), &v40);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_23EF82E08(a2 + 16, &v25);
  }

  else if (v5 == 1)
  {
    sub_23EF82B6C(a2 + 16, &v25);
  }

  else
  {
    if (v5)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88((a2 + 16), &v25);
  }

  if (v40 == v25 && v41 == v26 && (v20 = &v42, v21 = &v45, v22 = &v46, v23 = &v49, v24 = &v52, v19[0] = &v27, v19[1] = &v30, v19[2] = &v31, v19[3] = &v34, v19[4] = &__p, sub_23F04C458(&v20, v19)) && *(a1 + 200) == *(a2 + 200) && *(a1 + 208) == *(a2 + 208) && (v6 = *(a1 + 216), v7 = *v6, v8 = *(a2 + 216), v7 == *v8))
  {
    v20 = v19;
    v21 = v6;
    v22 = v8;
    v9 = sub_23F2C7774(v7, &v20);
    if (v39 != 1)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v9 = 0;
    if (v39 != 1)
    {
      goto LABEL_35;
    }
  }

  v10 = __p;
  if (__p)
  {
    v11 = v38;
    v12 = __p;
    if (v38 == __p)
    {
LABEL_34:
      v38 = v10;
      operator delete(v12);
      goto LABEL_35;
    }

    while (1)
    {
      v13 = v11;
      if (*(v11 - 16) == 1 && *(v11 - 41) < 0)
      {
        operator delete(*(v11 - 8));
        v11 -= 12;
        if (*(v13 - 72) == 1)
        {
LABEL_29:
          if (*(v13 - 73) < 0)
          {
            operator delete(*v11);
          }
        }
      }

      else
      {
        v11 -= 12;
        if (*(v13 - 72) == 1)
        {
          goto LABEL_29;
        }
      }

      if (v11 == v10)
      {
        v12 = __p;
        goto LABEL_34;
      }
    }
  }

LABEL_35:
  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v33 == 1 && v32 < 0)
  {
    operator delete(v31);
  }

  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (v54 == 1)
  {
    v14 = v52;
    if (v52)
    {
      v15 = v53;
      v16 = v52;
      if (v53 == v52)
      {
LABEL_57:
        v53 = v14;
        operator delete(v16);
        goto LABEL_58;
      }

      while (1)
      {
        v17 = v15;
        if (*(v15 - 16) == 1 && *(v15 - 41) < 0)
        {
          operator delete(*(v15 - 8));
          v15 -= 12;
          if (*(v17 - 72) == 1)
          {
LABEL_52:
            if (*(v17 - 73) < 0)
            {
              operator delete(*v15);
            }
          }
        }

        else
        {
          v15 -= 12;
          if (*(v17 - 72) == 1)
          {
            goto LABEL_52;
          }
        }

        if (v15 == v14)
        {
          v16 = v52;
          goto LABEL_57;
        }
      }
    }
  }

LABEL_58:
  if (v51 == 1 && v50 < 0)
  {
    operator delete(v49);
  }

  if (v48 == 1 && v47 < 0)
  {
    operator delete(v46);
  }

  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  return v9;
}

void sub_23F010610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_23EF44860(v47);
  sub_23EF44860(&a47);
  _Unwind_Resume(a1);
}

void sub_23F01064C(_DWORD *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28518D908, &unk_2851798D0, 0);
  if (v4)
  {
    sub_23F010C04(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28518D908, &unk_285179918, 0);
  if (v5)
  {
    sub_23F011A84(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799A0, 0);
    if (v6)
    {
      sub_23F011E94(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799E8, 0);
    if (v7)
    {
      sub_23F012D14(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28518D908, &unk_28518B990, 0);
      if (v8)
      {
        sub_23F013054(&v10, v8);
      }

      else
      {
        sub_23F010818(&v9, a1);
      }
    }
  }
}

void sub_23F010818(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v12 = 4;
    (*(*a2 + 104))(a2, &v12);
    v10 = v12;
    if (v9 >= 1)
    {
      if (v9 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_23EF886A8(a2, v3 + 16, v10);
      goto LABEL_16;
    }

    sub_23EF886A8(a2, v3 + 16, v12);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v12 = 5;
    (*(*a2 + 104))(a2, &v12);
    v8 = v12;
    if (v7 >= 1)
    {
      if (v7 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_23EF87D4C(a2, v3 + 16, v8);
      goto LABEL_16;
    }

    sub_23EF87D4C(a2, v3 + 16, v12);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    v5 = a2[2];
    v12 = 6;
    (*(*a2 + 104))(a2, &v12);
    v6 = v12;
    if (v5 >= 1)
    {
      if (v5 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_23EF5C460(a2, v3 + 16, v6);
LABEL_16:
      (*(*a2 + 24))(a2);
      goto LABEL_17;
    }

    sub_23EF5C460(a2, v3 + 16, v12);
  }

LABEL_17:
  v11 = a2[2];
  v12 = 1;
  (*(*a2 + 104))(a2, &v12);
  if (v11 < 1)
  {
    sub_23F013324(a2, (v3 + 200));
  }

  else
  {
    if (v11 == 2)
    {
      v12 = 1;
      (*(*a2 + 104))(a2, &v12);
    }

    (*(*a2 + 16))(a2);
    sub_23F013324(a2, (v3 + 200));
    (*(*a2 + 24))(a2);
  }
}

void sub_23F010C04(uint64_t *a1, uint64_t a2)
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

        sub_23F2E6438(a2 + 48, v5);
        v7 = sub_23F2E72C0(a2);
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
          v9 = sub_23F2E72C0(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_23F0655DC(&v26, v10);
        }

        sub_23EF54B14(a2, v3 + 16, 6);
      }

      sub_23EF41D6C();
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

    sub_23F2E6438(a2 + 48, v12);
    v14 = sub_23F2E72C0(a2);
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
      v16 = sub_23F2E72C0(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_23F0655DC(&v26, v17);
    }

    sub_23EF830A4(a2, v3 + 16, 5);
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

  sub_23F2E6438(a2 + 48, v19);
  v21 = sub_23F2E72C0(a2);
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
    v23 = sub_23F2E72C0(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_23F0655DC(&v26, v24);
  }

  sub_23EF8390C(a2, v3 + 16, 4);
}

void sub_23F01112C(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v2 = *(a2 + 3);
  v4 = *(a2 + 2);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = "value_type";
  v6[1] = 10;
  v6[2] = &v3;
  sub_23EF83FFC(a1, v6);
}

void sub_23F011354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F0655DC((v9 + 8), 6);
  sub_23EF50E84(&a9);
  _Unwind_Resume(a1);
}

void sub_23F011388(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_23F2C6BA0((a2 + 16), 6);
        if (*(a2 + 8))
        {
          v12 = *(*(a2 + 16) + 40);
          sub_23F2E6438(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E72C0(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v12;
          v20 = 2;
          sub_23F2E9D84(a3, &v19);
        }
      }

      else
      {
        sub_23F2C6BA0((a2 + 16), 7);
        if (*(a2 + 8))
        {
          v10 = *(*(a2 + 16) + 40);
          sub_23F2E6438(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E72C0(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v10;
          v20 = 2;
          sub_23F2EA094(a3, &v19);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_23F2C6BA0((a2 + 16), 8);
          if (*(a2 + 8))
          {
            v14 = *(*(a2 + 16) + 40);
            sub_23F2E6438(a3 + 48, (a3 + 40));
            *(a3 + 40) = sub_23F2E72C0(a3);
            if (*(a3 + 88) == 1)
            {
              *(a3 + 88) = 0;
            }

            v19 = v14;
            v20 = 2;
            sub_23F2EA3A4(a3, &v19);
          }

          break;
        case 11:
          sub_23F2C6BA0((a2 + 16), 11);
          v16 = *(a2 + 8);
          if (v16)
          {
            v17 = *(*(a2 + 16) + 40);
            do
            {
              sub_23F2E6438(a3 + 48, (a3 + 40));
              *(a3 + 40) = sub_23F2E72C0(a3);
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v19 = v17;
              v20 = 2;
              sub_23F2EAAD8(a3, &v19);
              v19 = v17 + 8;
              v20 = 2;
              sub_23F2EAAD8(a3, &v19);
              v18 = *(a3 + 56);
              *(a3 + 40) = *(v18 - 8);
              *(a3 + 56) = v18 - 8;
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v17 += 16;
              --v16;
            }

            while (v16);
          }

          break;
        case 12:
          sub_23F2C6BA0((a2 + 16), 12);
          v6 = *(a2 + 8);
          if (v6)
          {
            v7 = *(*(a2 + 16) + 40);
            do
            {
              sub_23F2E6438(a3 + 48, (a3 + 40));
              *(a3 + 40) = sub_23F2E72C0(a3);
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v19 = v7;
              v20 = 2;
              sub_23F2EAF38(a3, &v19);
              v19 = v7 + 16;
              v20 = 2;
              sub_23F2EAF38(a3, &v19);
              v8 = *(a3 + 56);
              *(a3 + 40) = *(v8 - 8);
              *(a3 + 56) = v8 - 8;
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v7 += 32;
              --v6;
            }

            while (v6);
          }

          break;
        default:
          goto LABEL_60;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_60;
      }

      sub_23F2C6BA0((a2 + 16), 1);
      if (*(a2 + 8))
      {
        v9 = *(*(a2 + 16) + 40);
        sub_23F2E6438(a3 + 48, (a3 + 40));
        *(a3 + 40) = sub_23F2E72C0(a3);
        if (*(a3 + 88) == 1)
        {
          *(a3 + 88) = 0;
        }

        v19 = v9;
        v20 = 2;
        sub_23F2E9F0C(a3, &v19);
      }
    }

    else
    {
      sub_23F2C6BA0((a2 + 16), 0);
      if (*(a2 + 8))
      {
        v11 = *(*(a2 + 16) + 40);
        sub_23F2E6438(a3 + 48, (a3 + 40));
        *(a3 + 40) = sub_23F2E72C0(a3);
        if (*(a3 + 88) == 1)
        {
          *(a3 + 88) = 0;
        }

        v19 = v11;
        v20 = 2;
        sub_23F2E76F4(a3, &v19);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F2C6BA0((a2 + 16), 2);
        if (*(a2 + 8))
        {
          v13 = *(*(a2 + 16) + 40);
          sub_23F2E6438(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E72C0(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v13;
          v20 = 2;
          sub_23F2EA21C(a3, &v19);
        }

        break;
      case 3:
        sub_23F2C6BA0((a2 + 16), 3);
        if (*(a2 + 8))
        {
          v15 = *(*(a2 + 16) + 40);
          sub_23F2E6438(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E72C0(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v15;
          v20 = 2;
          sub_23F2EA52C(a3, &v19);
        }

        break;
      case 5:
        sub_23F2C6BA0((a2 + 16), 5);
        if (*(a2 + 8))
        {
          v5 = *(*(a2 + 16) + 40);
          sub_23F2E6438(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E72C0(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v5;
          v20 = 2;
          sub_23F2E9C18(a3, &v19);
        }

        return;
      default:
LABEL_60:

        sub_23F2F1304(a1);
    }
  }
}

void sub_23F011A84(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = a2[3];
    if (*(v7 + 40) == 1)
    {
      v19 = (v7 + 16);
      sub_23F2FD25C(&v19, 4u);
    }

    else
    {
      sub_23F2FD4DC(&v19, (v7 + 8), 4u);
    }

    sub_23F2F887C(a2[3]);
    sub_23EF84C34(a2, v3 + 16, 4);
  }

  else if (v4 == 1)
  {
    v6 = a2[3];
    if (*(v6 + 40) == 1)
    {
      v19 = (v6 + 16);
      sub_23F2FD25C(&v19, 5u);
    }

    else
    {
      sub_23F2FD4DC(&v19, (v6 + 8), 5u);
    }

    sub_23F2F887C(a2[3]);
    sub_23EF84B04(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    v5 = a2[3];
    if (*(v5 + 40) == 1)
    {
      v19 = (v5 + 16);
      sub_23F2FD25C(&v19, 6u);
    }

    else
    {
      sub_23F2FD4DC(&v19, (v5 + 8), 6u);
    }

    sub_23F2F887C(a2[3]);
    sub_23EF57C0C(a2, v3 + 16, 6);
  }

  v8 = a2[3];
  v9 = *(*(v8 + 88) - 8);
  sub_23F2F866C((v8 + 48), *(v8 + 16) - v9 - 9);
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

  v13 = a2[3];
  if (*(v13 + 40) == 1)
  {
    v19 = (v13 + 16);
    sub_23F2FD25C(&v19, 1u);
  }

  else
  {
    sub_23F2FD4DC(&v19, (v13 + 8), 1u);
  }

  sub_23F2F887C(a2[3]);
  sub_23F011D18(a2, (v3 + 200));
  v14 = a2[3];
  v15 = *(*(v14 + 88) - 8);
  sub_23F2F866C((v14 + 48), *(v14 + 16) - v15 - 9);
  v16 = *(v14 + 48);
  if (v16)
  {
    memmove((*(v14 + 24) + v15), *(v14 + 56), v16);
  }

  *(v14 + 48) = 0;
  v17 = *(v14 + 80);
  v18 = *(v14 + 88) - 8;
  *(v14 + 88) = v18;
  if (v17 == v18)
  {
    std::ostream::write();
    if (*(v14 + 40) == 1)
    {
      free(*(v14 + 24));
      *(v14 + 40) = 0;
    }
  }
}

void sub_23F011D18(uint64_t *a1, __int128 *a2)
{
  v7 = *a2;
  v3 = *(a2 + 3);
  v8 = *(a2 + 2);
  v9 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(v11) = v7;
  v4 = a1[3];
  if (*(v4 + 40) == 1)
  {
    v10[0] = (v4 + 16);
    sub_23F2FC63C(v10, &v11);
  }

  else
  {
    if (v7 < 0)
    {
      LOBYTE(v10[0]) = -52;
      BYTE1(v10[0]) = v7;
    }

    else
    {
      LOBYTE(v10[0]) = v7;
    }

    std::ostream::write();
  }

  v5 = a1[3];
  if (*(v5 + 40) == 1)
  {
    v10[0] = (v5 + 16);
    sub_23F2FDC5C(v10, *(&v7 + 1));
  }

  else
  {
    sub_23F2FDF70((v5 + 8), *(&v7 + 1));
  }

  v11 = xmmword_278C74508;
  v10[0] = &v7;
  v10[1] = a1;
  v10[2] = &v11;
  sub_23EFA125C(v7, v10);
  v6 = v9;
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void sub_23F011E94(uint64_t *a1, uint64_t a2)
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

        sub_23F07903C(a2 + 48, v5);
        v7 = sub_23F2E6C78(a2);
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
          v9 = sub_23F2E6C78(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_23F06357C(&v26, v10);
        }

        sub_23EF58E64(a2, v3 + 16, 6);
      }

      sub_23EF41D6C();
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

    sub_23F07903C(a2 + 48, v12);
    v14 = sub_23F2E6C78(a2);
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
      v16 = sub_23F2E6C78(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_23F06357C(&v26, v17);
    }

    sub_23EF85628(a2, v3 + 16, 5);
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

  sub_23F07903C(a2 + 48, v19);
  v21 = sub_23F2E6C78(a2);
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
    v23 = sub_23F2E6C78(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_23F06357C(&v26, v24);
  }

  sub_23EF85CB4(a2, v3 + 16, 4);
}

void sub_23F0123BC(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v2 = *(a2 + 3);
  v4 = *(a2 + 2);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = "value_type";
  v6[1] = 10;
  v6[2] = &v3;
  sub_23EF861C8(a1, v6);
}

void sub_23F0125E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F06357C((v9 + 8), 6);
  sub_23EF50E84(&a9);
  _Unwind_Resume(a1);
}

void sub_23F012618(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_23F2C6BA0((a2 + 16), 6);
        if (*(a2 + 8))
        {
          v12 = *(*(a2 + 16) + 40);
          sub_23F07903C(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E6C78(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v12;
          v20 = 2;
          sub_23F2E7EF4(a3, &v19);
        }
      }

      else
      {
        sub_23F2C6BA0((a2 + 16), 7);
        if (*(a2 + 8))
        {
          v10 = *(*(a2 + 16) + 40);
          sub_23F07903C(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E6C78(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v10;
          v20 = 2;
          sub_23F2E8204(a3, &v19);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_23F2C6BA0((a2 + 16), 8);
          if (*(a2 + 8))
          {
            v14 = *(*(a2 + 16) + 40);
            sub_23F07903C(a3 + 48, (a3 + 40));
            *(a3 + 40) = sub_23F2E6C78(a3);
            if (*(a3 + 88) == 1)
            {
              *(a3 + 88) = 0;
            }

            v19 = v14;
            v20 = 2;
            sub_23F2E8514(a3, &v19);
          }

          break;
        case 11:
          sub_23F2C6BA0((a2 + 16), 11);
          v16 = *(a2 + 8);
          if (v16)
          {
            v17 = *(*(a2 + 16) + 40);
            do
            {
              sub_23F07903C(a3 + 48, (a3 + 40));
              *(a3 + 40) = sub_23F2E6C78(a3);
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v19 = v17;
              v20 = 2;
              sub_23F2E8C48(a3, &v19);
              v19 = v17 + 8;
              v20 = 2;
              sub_23F2E8C48(a3, &v19);
              v18 = *(a3 + 56);
              *(a3 + 40) = *(v18 - 8);
              *(a3 + 56) = v18 - 8;
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v17 += 16;
              --v16;
            }

            while (v16);
          }

          break;
        case 12:
          sub_23F2C6BA0((a2 + 16), 12);
          v6 = *(a2 + 8);
          if (v6)
          {
            v7 = *(*(a2 + 16) + 40);
            do
            {
              sub_23F07903C(a3 + 48, (a3 + 40));
              *(a3 + 40) = sub_23F2E6C78(a3);
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v19 = v7;
              v20 = 2;
              sub_23F2E90A8(a3, &v19);
              v19 = v7 + 16;
              v20 = 2;
              sub_23F2E90A8(a3, &v19);
              v8 = *(a3 + 56);
              *(a3 + 40) = *(v8 - 8);
              *(a3 + 56) = v8 - 8;
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v7 += 32;
              --v6;
            }

            while (v6);
          }

          break;
        default:
          goto LABEL_60;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_60;
      }

      sub_23F2C6BA0((a2 + 16), 1);
      if (*(a2 + 8))
      {
        v9 = *(*(a2 + 16) + 40);
        sub_23F07903C(a3 + 48, (a3 + 40));
        *(a3 + 40) = sub_23F2E6C78(a3);
        if (*(a3 + 88) == 1)
        {
          *(a3 + 88) = 0;
        }

        v19 = v9;
        v20 = 2;
        sub_23F2E807C(a3, &v19);
      }
    }

    else
    {
      sub_23F2C6BA0((a2 + 16), 0);
      if (*(a2 + 8))
      {
        v11 = *(*(a2 + 16) + 40);
        sub_23F07903C(a3 + 48, (a3 + 40));
        *(a3 + 40) = sub_23F2E6C78(a3);
        if (*(a3 + 88) == 1)
        {
          *(a3 + 88) = 0;
        }

        v19 = v11;
        v20 = 2;
        sub_23F2E7154(a3, &v19);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F2C6BA0((a2 + 16), 2);
        if (*(a2 + 8))
        {
          v13 = *(*(a2 + 16) + 40);
          sub_23F07903C(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E6C78(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v13;
          v20 = 2;
          sub_23F2E838C(a3, &v19);
        }

        break;
      case 3:
        sub_23F2C6BA0((a2 + 16), 3);
        if (*(a2 + 8))
        {
          v15 = *(*(a2 + 16) + 40);
          sub_23F07903C(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E6C78(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v15;
          v20 = 2;
          sub_23F2E869C(a3, &v19);
        }

        break;
      case 5:
        sub_23F2C6BA0((a2 + 16), 5);
        if (*(a2 + 8))
        {
          v5 = *(*(a2 + 16) + 40);
          sub_23F07903C(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E6C78(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v5;
          v20 = 2;
          sub_23F2E7D88(a3, &v19);
        }

        return;
      default:
LABEL_60:

        sub_23F2F1304(a1);
    }
  }
}

void *sub_23F012D14(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v16 = *(a2 + 24);
      v19 = *(a2 + 32);
      sub_23EF2F9B0(v16, &v19, 1);
    }

    MEMORY[0x245CAC910](*(a2 + 24), 4);
    ++*(a2 + 40);
    sub_23EF87030(a2, v3 + 16, 4);
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
        sub_23EF41D6C();
      }

      if (*(a2 + 40))
      {
        v5 = *(a2 + 24);
        v17 = *(a2 + 32);
        sub_23EF2F9B0(v5, &v17, 1);
      }

      MEMORY[0x245CAC910](*(a2 + 24), 6);
      ++*(a2 + 40);
      sub_23EF5A720(a2, v3 + 16, 6);
      v6 = *(a2 + 34);
      if (!*(a2 + 40))
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = *(a2 + 24);
      v20 = *(a2 + 32);
      sub_23EF2F9B0(v8, &v20, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      v18 = *(a2 + 32);
      sub_23EF2F9B0(v7, &v18, 1);
    }

    MEMORY[0x245CAC910](*(a2 + 24), 5);
    ++*(a2 + 40);
    sub_23EF86A84(a2, v3 + 16, 5);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v9 = *(a2 + 24);
  v21 = v6;
  sub_23EF2F9B0(v9, &v21, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    v22 = *(a2 + 32);
    sub_23EF2F9B0(v11, &v22, 1);
  }

  MEMORY[0x245CAC910](*(a2 + 24), 1);
  ++*(a2 + 40);
  sub_23F012F28(a2, (v3 + 200));
  v12 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v13 = *(a2 + 24);
    v23 = *(a2 + 32);
    sub_23EF2F9B0(v13, &v23, 1);
  }

  v14 = *(a2 + 24);
  v24 = v12;
  result = sub_23EF2F9B0(v14, &v24, 1);
  ++*(a2 + 40);
  return result;
}

void sub_23F012F28(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v3 = *(a2 + 3);
  v7 = *(a2 + 2);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(v9[0]) = v6;
  sub_23F2F3D94(a1, v9);
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    LOBYTE(v9[0]) = *(a1 + 32);
    sub_23EF2F9B0(v4, v9, 1);
  }

  MEMORY[0x245CAC960](*(a1 + 24), *(&v6 + 1));
  ++*(a1 + 40);
  v10 = xmmword_278C74508;
  v9[0] = &v6;
  v9[1] = a1;
  v9[2] = &v10;
  sub_23EFA1F6C(v6, v9);
  v5 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_23F013054(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    __src = 4;
    sub_23F295368((a2 + 24), *(a2 + 32), &__src, &v11, 4);
    v7 = __src;
    sub_23F294D84(a2);
    sub_23EF87798(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    __src = 5;
    sub_23F295368((a2 + 24), *(a2 + 32), &__src, &v11, 4);
    v6 = __src;
    sub_23F294D84(a2);
    sub_23EF87668(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    __src = 6;
    sub_23F295368((a2 + 24), *(a2 + 32), &__src, &v11, 4);
    v5 = __src;
    sub_23F294D84(a2);
    sub_23EF5B8BC(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  __src = 1;
  sub_23F295368((a2 + 24), *(a2 + 32), &__src, &v11, 4);
  sub_23F294D84(a2);
  sub_23F013208(a2, (v3 + 200));
  v9 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v9 + 10) = *(a2 + 32) - v9 - 18;
  *(a2 + 56) -= 8;
}

void sub_23F013208(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(__src[0]) = v5;
  sub_23F295368((a1 + 24), *(a1 + 32), __src, __src + 1, 1);
  sub_23F295368((a1 + 24), *(a1 + 32), &v5 + 8, &v6, 8);
  v9 = xmmword_278C74508;
  __src[0] = &v5;
  __src[1] = a1;
  __src[2] = &v9;
  sub_23EFA2524(v5, __src);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_23F013324(_BYTE *a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_23EF88DD8(a1, &v5);
  (*(*a1 + 120))(a1, &v5 + 8);
  v9 = xmmword_278C74508;
  v8[0] = &v5;
  v8[1] = a1;
  v8[2] = &v9;
  sub_23EFA27D8(v5, v8);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_23F013440(void *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179A70, 0);
  if (v4)
  {
    sub_23F013A6C(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179AA8, 0);
  if (v5)
  {
    sub_23F015C88(&v10, v5);
  }

  v10 = a2;
  v6 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B30, 0);
  if (v6)
  {
    sub_23F0174E4(&v10, v6);
  }

  v10 = a2;
  v7 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B68, 0);
  if (v7)
  {
    sub_23F019700(&v10, v7);
  }

  v10 = a2;
  v8 = __dynamic_cast(a1, &unk_28518D8F0, &unk_28518B930, 0);
  if (v8)
  {
    sub_23F01AF9C(&v10, v8);
  }

  sub_23F01360C(&v9, a1);
}

void sub_23F01360C(uint64_t *a1, void **a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v21);
    sub_23EF53784(v33, v21);
    sub_23EF88F40(v3 + 16, v33);
    if (v45 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v44;
        v7 = __p;
        if (v44 != __p)
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

        v44 = v5;
        operator delete(v7);
      }
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (v32 != 1)
    {
      goto LABEL_66;
    }

    v13 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

    v14 = v31;
    v15 = v30;
    if (v31 == v30)
    {
LABEL_65:
      v31 = v13;
      operator delete(v15);
LABEL_66:
      if (v29 == 1 && v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 == 1 && v22 < 0)
      {
        operator delete(v21[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      v19 = *a2;
      v21[0] = a2[1];
      v20 = v21[0];
      v33[0] = 6;
      v19[13](a2, v33);
      if (v20 < 1)
      {
        if (v33[0] < 3)
        {
          sub_23EF69318(v33, a2, v3 + 16, v33[0]);
        }

        else
        {
          sub_23EF69524(a2, v3 + 16, v33[0]);
        }
      }

      else
      {
        sub_23EF68F0C(v21, a2, v3 + 16, v33[0]);
      }

      sub_23F01CCB4(a2, (v3 + 200));
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
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v21);
  sub_23EF53784(v33, v21);
  sub_23EF88F40(v3 + 16, v33);
  if (v45 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v44;
      v11 = __p;
      if (v44 != __p)
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

      v44 = v9;
      operator delete(v11);
    }
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v32 != 1)
  {
    goto LABEL_66;
  }

  v13 = v30;
  if (!v30)
  {
    goto LABEL_66;
  }

  v17 = v31;
  v15 = v30;
  if (v31 == v30)
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
      v15 = v30;
      goto LABEL_65;
    }
  }
}