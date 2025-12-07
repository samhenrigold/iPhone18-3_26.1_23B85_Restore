void sub_27142381C(uint64_t a1, double *a2, uint64_t a3)
{
  if (a3 < 2)
  {
    sub_271423990(&v13, a1, a2);
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2;
  v14 = 2;
  v6 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  sub_27182F5F0(v6, &v13);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 2;
  v14 = 2;
  v8 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  sub_27182F5F0(v8, &v13);
  v9 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 4;
  v14 = 5;
  v10 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  sub_27182F5F0(v10, &v13);
  v11 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 9;
  v14 = 2;
  v12 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  sub_27182F1C8(v12, &v13);
}

void sub_271423990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  operator new();
}

void sub_271423C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_271423CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_271423CBC(_DWORD *a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  *a1 = *a2;
  v3 = (a1 + 2);
  v6 = *(a2 + 8);
  v4 = a2 + 8;
  v5 = v6;
  v12[0] = 0;
  v12[1] = 0;
  if (v6)
  {
    v5(2, v4, v12, 0, 0);
  }

  if (v12 != v3)
  {
    v7 = *v3;
    if (v12[0])
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (v12[0] | v7)
      {
        if (v12[0])
        {
          v7 = v12[0];
          v9 = v3;
        }

        else
        {
          v9 = v12;
        }

        if (v12[0])
        {
          v10 = v12;
        }

        else
        {
          v10 = v3;
        }

        (v7)(2, v10, v9, 0, 0);
      }
    }

    else
    {
      v13[0] = 0;
      v13[1] = 0;
      (v7)(2, v3, v13, 0, 0);
      (v12[0])(2, v12, v3, 0, 0);
      (v13[0])(2, v13, v12, 0, 0);
      if (v13[0])
      {
        (v13[0])(0, v13, 0, 0, 0);
      }
    }
  }

  if (v12[0])
  {
    (v12[0])(0, v12, 0, 0, 0);
  }

  return a1;
}

void sub_271423E24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271423E44(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v2(0, a1 + 8, 0, 0, 0);
  }

  return a1;
}

void sub_271423E8C(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 104);
  *(a1 + 88) = "camera_type";
  *(a1 + 96) = 11;
  if ((v2 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v3 = a2;
  sub_271421340(a1, &v3);
}

uint64_t sub_271424690(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 <= 1)
  {
    sub_2714247BC(&v9, a2, a3, a4);
  }

  v10 = 0;
  sub_27183FF6C(a2[6], &v10);
  *&v9 = (*(a2[2] + 32))(a2 + 2);
  *(&v9 + 1) = v10;
  sub_2713BF82C((a2 + 3), &v9);
  sub_271424A14(a2, a3);
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

void sub_27142499C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271424A14(uint64_t a1, uint64_t a2)
{
  v37 = 0;
  sub_27183FB7C(*(a1 + 48), &v37);
  *a2 = v37;
  sub_27173A3E8(a2);
  v4 = *a2;
  if (*a2 > 99)
  {
    if (v4 > 109)
    {
      if (v4 == 110)
      {
        v35 = *(a2 + 8);
        v34 = a2 + 8;
        v33 = v35;
        if (v35)
        {
          v36 = v33(3, v34, 0, &unk_28811C9E0, &unk_271891D40);
          if (v36)
          {
            v37 = 2;
            sub_27183FB7C(*(a1 + 48), &v37);
            sub_271426C40(&v37, a1, v36, v37);
            return;
          }
        }

        goto LABEL_37;
      }

      if (v4 == 111)
      {
        v19 = *(a2 + 8);
        v18 = a2 + 8;
        v17 = v19;
        if (v19)
        {
          v20 = v17(3, v18, 0, &unk_28811CA10, &unk_271891E18);
          if (v20)
          {
            v37 = 2;
            sub_27183FB7C(*(a1 + 48), &v37);
            sub_2714271B4(&v37, a1, v20, v37);
            return;
          }
        }

        goto LABEL_37;
      }
    }

    else
    {
      if (v4 == 100)
      {
        v27 = *(a2 + 8);
        v26 = a2 + 8;
        v25 = v27;
        if (v27)
        {
          v28 = v25(3, v26, 0, &unk_28811C9C8, &unk_271891B90);
          if (v28)
          {
            v37 = 2;
            sub_27183FB7C(*(a1 + 48), &v37);
            sub_27142611C(&v37, a1, v28, v37);
            return;
          }
        }

        goto LABEL_37;
      }

      if (v4 == 101)
      {
        v11 = *(a2 + 8);
        v10 = a2 + 8;
        v9 = v11;
        if (v11)
        {
          v12 = v9(3, v10, 0, &unk_28811C9F8, &unk_271891C68);
          if (v12)
          {
            v37 = 2;
            sub_27183FB7C(*(a1 + 48), &v37);
            sub_271426690(&v37, a1, v12, v37);
            return;
          }
        }

        goto LABEL_37;
      }
    }
  }

  else
  {
    if (v4 <= 9)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          return;
        }

        v7 = *(a2 + 8);
        v6 = a2 + 8;
        v5 = v7;
        if (v7)
        {
          v8 = v5(3, v6, 0, &unk_28811CA58, &unk_271891910);
          if (v8)
          {
            v37 = 2;
            sub_27183FB7C(*(a1 + 48), &v37);
            sub_2714252C0(&v37, a1, v8, v37);
            return;
          }
        }
      }

      else
      {
        v23 = *(a2 + 8);
        v22 = a2 + 8;
        v21 = v23;
        if (v23)
        {
          v24 = v21(3, v22, 0, &unk_28811CA28, &unk_27189183C);
          if (v24)
          {
            v37 = 2;
            sub_27183FB7C(*(a1 + 48), &v37);
            sub_271424E0C(&v37, a1, v24, v37);
            return;
          }
        }
      }

LABEL_37:
      sub_27141B114();
    }

    if (v4 == 10)
    {
      v31 = *(a2 + 8);
      v30 = a2 + 8;
      v29 = v31;
      if (v31)
      {
        v32 = v29(3, v30, 0, &unk_28811CA40, &unk_2718919E4);
        if (v32)
        {
          v37 = 2;
          sub_27183FB7C(*(a1 + 48), &v37);
          sub_271425794(&v37, a1, v32, v37);
          return;
        }
      }

      goto LABEL_37;
    }

    if (v4 == 11)
    {
      v15 = *(a2 + 8);
      v14 = a2 + 8;
      v13 = v15;
      if (v15)
      {
        v16 = v13(3, v14, 0, &unk_28811CA70, &unk_271891AB8);
        if (v16)
        {
          v37 = 2;
          sub_27183FB7C(*(a1 + 48), &v37);
          sub_271425C48(&v37, a1, v16, v37);
          return;
        }
      }

      goto LABEL_37;
    }
  }
}

uint64_t sub_271424E0C(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (a4 < 2)
  {
    sub_271424F7C(&v12, a2, a3);
  }

  v13 = 0;
  sub_27183FF6C(a2[6], &v13);
  *&v12 = (*(a2[2] + 32))(a2 + 2);
  *(&v12 + 1) = v13;
  sub_2713BF82C((a2 + 3), &v12);
  v6 = a2[6];
  sub_271840060(v6, a3);
  sub_271840060(v6, (a3 + 4));
  v7 = a2[6];
  sub_271840060(v7, (a3 + 8));
  sub_271840060(v7, (a3 + 12));
  v8 = a2[6];
  sub_27183FB7C(v8, (a3 + 16));
  sub_27183FB7C(v8, (a3 + 20));
  v9 = a2[4];
  result = (*(a2[2] + 32))(a2 + 2);
  v11 = *(v9 - 16) - result + *(v9 - 8);
  if (v11)
  {
    result = (*(a2[2] + 40))(a2 + 2, v11);
  }

  a2[4] -= 16;
  return result;
}

void sub_271424F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  operator new();
}

void sub_271425270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_271425284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_271425298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_2714252AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714252C0(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (a4 < 2)
  {
    sub_271425430(&v12, a2, a3);
  }

  v13 = 0;
  sub_27183FF6C(a2[6], &v13);
  *&v12 = (*(a2[2] + 32))(a2 + 2);
  *(&v12 + 1) = v13;
  sub_2713BF82C((a2 + 3), &v12);
  v6 = a2[6];
  sub_2718401A8(v6, a3);
  sub_2718401A8(v6, (a3 + 8));
  v7 = a2[6];
  sub_2718401A8(v7, (a3 + 16));
  sub_2718401A8(v7, (a3 + 24));
  v8 = a2[6];
  sub_27183FB7C(v8, (a3 + 32));
  sub_27183FB7C(v8, (a3 + 36));
  v9 = a2[4];
  result = (*(a2[2] + 32))(a2 + 2);
  v11 = *(v9 - 16) - result + *(v9 - 8);
  if (v11)
  {
    result = (*(a2[2] + 40))(a2 + 2, v11);
  }

  a2[4] -= 16;
  return result;
}

void sub_271425430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  operator new();
}

void sub_271425744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_271425758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_27142576C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_271425780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271425794(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (a4 < 2)
  {
    sub_271425904(&v12, a2, a3);
  }

  v13 = 0;
  sub_27183FF6C(a2[6], &v13);
  *&v12 = (*(a2[2] + 32))(a2 + 2);
  *(&v12 + 1) = v13;
  sub_2713BF82C((a2 + 3), &v12);
  v6 = a2[6];
  sub_271840060(v6, a3);
  sub_271840060(v6, (a3 + 4));
  v7 = a2[6];
  sub_271840060(v7, (a3 + 8));
  sub_271840060(v7, (a3 + 12));
  v8 = a2[6];
  sub_27183FB7C(v8, (a3 + 16));
  sub_27183FB7C(v8, (a3 + 20));
  v9 = a2[4];
  result = (*(a2[2] + 32))(a2 + 2);
  v11 = *(v9 - 16) - result + *(v9 - 8);
  if (v11)
  {
    result = (*(a2[2] + 40))(a2 + 2, v11);
  }

  a2[4] -= 16;
  return result;
}

void sub_271425904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  operator new();
}

void sub_271425BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_271425C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_271425C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_271425C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271425C48(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (a4 < 2)
  {
    sub_271425DB8(&v12, a2, a3);
  }

  v13 = 0;
  sub_27183FF6C(a2[6], &v13);
  *&v12 = (*(a2[2] + 32))(a2 + 2);
  *(&v12 + 1) = v13;
  sub_2713BF82C((a2 + 3), &v12);
  v6 = a2[6];
  sub_2718401A8(v6, a3);
  sub_2718401A8(v6, (a3 + 8));
  v7 = a2[6];
  sub_2718401A8(v7, (a3 + 16));
  sub_2718401A8(v7, (a3 + 24));
  v8 = a2[6];
  sub_27183FB7C(v8, (a3 + 32));
  sub_27183FB7C(v8, (a3 + 36));
  v9 = a2[4];
  result = (*(a2[2] + 32))(a2 + 2);
  v11 = *(v9 - 16) - result + *(v9 - 8);
  if (v11)
  {
    result = (*(a2[2] + 40))(a2 + 2, v11);
  }

  a2[4] -= 16;
  return result;
}

void sub_271425DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  operator new();
}

void sub_2714260CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_2714260E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_2714260F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_271426108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27142611C(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (a4 < 2)
  {
    sub_2714262CC(&v13, a2, a3);
  }

  v14 = 0;
  sub_27183FF6C(a2[6], &v14);
  *&v13 = (*(a2[2] + 32))(a2 + 2);
  *(&v13 + 1) = v14;
  sub_2713BF82C((a2 + 3), &v13);
  v6 = a2[6];
  sub_271840060(v6, a3);
  sub_271840060(v6, (a3 + 4));
  v7 = a2[6];
  sub_271840060(v7, (a3 + 8));
  sub_271840060(v7, (a3 + 12));
  v8 = a2[6];
  sub_271840060(v8, (a3 + 16));
  sub_271840060(v8, (a3 + 20));
  sub_271840060(v8, (a3 + 24));
  sub_271840060(v8, (a3 + 28));
  sub_271840060(v8, (a3 + 32));
  v9 = a2[6];
  sub_27183FB7C(v9, (a3 + 36));
  sub_27183FB7C(v9, (a3 + 40));
  v10 = a2[4];
  result = (*(a2[2] + 32))(a2 + 2);
  v12 = *(v10 - 16) - result + *(v10 - 8);
  if (v12)
  {
    result = (*(a2[2] + 40))(a2 + 2, v12);
  }

  a2[4] -= 16;
  return result;
}

void sub_2714262CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  memset(v4, 0, sizeof(v4));
  operator new();
}

void sub_27142662C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_271426640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_271426654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_271426668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_27142667C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271426690(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (a4 < 2)
  {
    sub_271426840(&v13, a2, a3);
  }

  v14 = 0;
  sub_27183FF6C(a2[6], &v14);
  *&v13 = (*(a2[2] + 32))(a2 + 2);
  *(&v13 + 1) = v14;
  sub_2713BF82C((a2 + 3), &v13);
  v6 = a2[6];
  sub_2718401A8(v6, a3);
  sub_2718401A8(v6, (a3 + 8));
  v7 = a2[6];
  sub_2718401A8(v7, (a3 + 16));
  sub_2718401A8(v7, (a3 + 24));
  v8 = a2[6];
  sub_2718401A8(v8, (a3 + 32));
  sub_2718401A8(v8, (a3 + 40));
  sub_2718401A8(v8, (a3 + 48));
  sub_2718401A8(v8, (a3 + 56));
  sub_2718401A8(v8, (a3 + 64));
  v9 = a2[6];
  sub_27183FB7C(v9, (a3 + 72));
  sub_27183FB7C(v9, (a3 + 76));
  v10 = a2[4];
  result = (*(a2[2] + 32))(a2 + 2);
  v12 = *(v10 - 16) - result + *(v10 - 8);
  if (v12)
  {
    result = (*(a2[2] + 40))(a2 + 2, v12);
  }

  a2[4] -= 16;
  return result;
}

void sub_271426840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  operator new();
}

void sub_271426BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_271426BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_271426C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_271426C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_271426C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271426C40(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (a4 < 2)
  {
    sub_271426DF0(&v13, a2, a3);
  }

  v14 = 0;
  sub_27183FF6C(a2[6], &v14);
  *&v13 = (*(a2[2] + 32))(a2 + 2);
  *(&v13 + 1) = v14;
  sub_2713BF82C((a2 + 3), &v13);
  v6 = a2[6];
  sub_271840060(v6, a3);
  sub_271840060(v6, (a3 + 4));
  v7 = a2[6];
  sub_271840060(v7, (a3 + 8));
  sub_271840060(v7, (a3 + 12));
  v8 = a2[6];
  sub_271840060(v8, (a3 + 16));
  sub_271840060(v8, (a3 + 20));
  sub_271840060(v8, (a3 + 24));
  sub_271840060(v8, (a3 + 28));
  sub_271840060(v8, (a3 + 32));
  v9 = a2[6];
  sub_27183FB7C(v9, (a3 + 36));
  sub_27183FB7C(v9, (a3 + 40));
  v10 = a2[4];
  result = (*(a2[2] + 32))(a2 + 2);
  v12 = *(v10 - 16) - result + *(v10 - 8);
  if (v12)
  {
    result = (*(a2[2] + 40))(a2 + 2, v12);
  }

  a2[4] -= 16;
  return result;
}

void sub_271426DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  memset(v4, 0, sizeof(v4));
  operator new();
}

void sub_271427150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_271427164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_271427178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_27142718C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_2714271A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714271B4(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (a4 < 2)
  {
    sub_271427364(&v13, a2, a3);
  }

  v14 = 0;
  sub_27183FF6C(a2[6], &v14);
  *&v13 = (*(a2[2] + 32))(a2 + 2);
  *(&v13 + 1) = v14;
  sub_2713BF82C((a2 + 3), &v13);
  v6 = a2[6];
  sub_2718401A8(v6, a3);
  sub_2718401A8(v6, (a3 + 8));
  v7 = a2[6];
  sub_2718401A8(v7, (a3 + 16));
  sub_2718401A8(v7, (a3 + 24));
  v8 = a2[6];
  sub_2718401A8(v8, (a3 + 32));
  sub_2718401A8(v8, (a3 + 40));
  sub_2718401A8(v8, (a3 + 48));
  sub_2718401A8(v8, (a3 + 56));
  sub_2718401A8(v8, (a3 + 64));
  v9 = a2[6];
  sub_27183FB7C(v9, (a3 + 72));
  sub_27183FB7C(v9, (a3 + 76));
  v10 = a2[4];
  result = (*(a2[2] + 32))(a2 + 2);
  v12 = *(v10 - 16) - result + *(v10 - 8);
  if (v12)
  {
    result = (*(a2[2] + 40))(a2 + 2, v12);
  }

  a2[4] -= 16;
  return result;
}

void sub_271427364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  operator new();
}

void sub_271427700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_271427714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_271427728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_27142773C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_271427750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_271427764(void *a1, uint64_t a2)
{
  v37 = 0;
  sub_27183FB7C(a1[6], &v37);
  *a2 = v37;
  sub_271738768(a2);
  v4 = *a2;
  if (*a2 > 99)
  {
    if (v4 > 109)
    {
      if (v4 == 110)
      {
        v35 = *(a2 + 8);
        v34 = a2 + 8;
        v33 = v35;
        if (v35)
        {
          v36 = v33(3, v34, 0, &unk_28811C9E0, &unk_271891D40);
          if (v36)
          {
            v37 = 2;
            sub_27183FB7C(a1[6], &v37);
            sub_271426C40(&v37, a1, v36, v37);
            return;
          }
        }

        goto LABEL_37;
      }

      if (v4 == 111)
      {
        v19 = *(a2 + 8);
        v18 = a2 + 8;
        v17 = v19;
        if (v19)
        {
          v20 = v17(3, v18, 0, &unk_28811CA10, &unk_271891E18);
          if (v20)
          {
            v37 = 2;
            sub_27183FB7C(a1[6], &v37);
            sub_2714271B4(&v37, a1, v20, v37);
            return;
          }
        }

        goto LABEL_37;
      }
    }

    else
    {
      if (v4 == 100)
      {
        v27 = *(a2 + 8);
        v26 = a2 + 8;
        v25 = v27;
        if (v27)
        {
          v28 = v25(3, v26, 0, &unk_28811C9C8, &unk_271891B90);
          if (v28)
          {
            v37 = 2;
            sub_27183FB7C(a1[6], &v37);
            sub_27142611C(&v37, a1, v28, v37);
            return;
          }
        }

        goto LABEL_37;
      }

      if (v4 == 101)
      {
        v11 = *(a2 + 8);
        v10 = a2 + 8;
        v9 = v11;
        if (v11)
        {
          v12 = v9(3, v10, 0, &unk_28811C9F8, &unk_271891C68);
          if (v12)
          {
            v37 = 2;
            sub_27183FB7C(a1[6], &v37);
            sub_271426690(&v37, a1, v12, v37);
            return;
          }
        }

        goto LABEL_37;
      }
    }
  }

  else
  {
    if (v4 <= 9)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          return;
        }

        v7 = *(a2 + 8);
        v6 = a2 + 8;
        v5 = v7;
        if (v7)
        {
          v8 = v5(3, v6, 0, &unk_28811CA58, &unk_271891910);
          if (v8)
          {
            v37 = 2;
            sub_27183FB7C(a1[6], &v37);
            sub_2714252C0(&v37, a1, v8, v37);
            return;
          }
        }
      }

      else
      {
        v23 = *(a2 + 8);
        v22 = a2 + 8;
        v21 = v23;
        if (v23)
        {
          v24 = v21(3, v22, 0, &unk_28811CA28, &unk_27189183C);
          if (v24)
          {
            v37 = 2;
            sub_27183FB7C(a1[6], &v37);
            sub_271424E0C(&v37, a1, v24, v37);
            return;
          }
        }
      }

LABEL_37:
      sub_27141B114();
    }

    if (v4 == 10)
    {
      v31 = *(a2 + 8);
      v30 = a2 + 8;
      v29 = v31;
      if (v31)
      {
        v32 = v29(3, v30, 0, &unk_28811CA40, &unk_2718919E4);
        if (v32)
        {
          v37 = 2;
          sub_27183FB7C(a1[6], &v37);
          sub_271425794(&v37, a1, v32, v37);
          return;
        }
      }

      goto LABEL_37;
    }

    if (v4 == 11)
    {
      v15 = *(a2 + 8);
      v14 = a2 + 8;
      v13 = v15;
      if (v15)
      {
        v16 = v13(3, v14, 0, &unk_28811CA70, &unk_271891AB8);
        if (v16)
        {
          v37 = 2;
          sub_27183FB7C(a1[6], &v37);
          sub_271425C48(&v37, a1, v16, v37);
          return;
        }
      }

      goto LABEL_37;
    }
  }
}

void sub_271427B5C(uint64_t a1, _DWORD *a2)
{
  v6[0] = *(a1 + 32);
  v4 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v6);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v6[0] = "version";
  v6[1] = 7;
  v7 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182DBE0(a1, &v7);
  if (v7 >= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v7;
  }

  if (v7 < 2)
  {
    sub_271427C58(v6, a1, a2, v5);
  }

  sub_271427EB0(a1, a2);
}

void sub_271427E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271427EB0(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 104);
  *(a1 + 88) = "camera_type";
  *(a1 + 96) = 11;
  if ((v2 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v3 = a2;
  sub_2714286B4(a1, &v3);
}

void sub_2714286B4(void *a1, _DWORD **a2)
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

void sub_2714287A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void sub_271428838(uint64_t a1, float *a2, uint64_t a3)
{
  if (a3 < 2)
  {
    sub_271428964(&v11, a1, a2);
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2;
  v12 = 2;
  v6 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E498(v6, &v11);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 2;
  v12 = 2;
  v8 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E498(v8, &v11);
  v9 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 4;
  v12 = 2;
  v10 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E164(v10, &v11);
}

void sub_271428964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  operator new();
}

void sub_271428CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_271428CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_271428D00(uint64_t a1, double *a2, uint64_t a3)
{
  if (a3 < 2)
  {
    sub_271428E2C(&v11, a1, a2);
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2;
  v12 = 2;
  v6 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E5DC(v6, &v11);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 2;
  v12 = 2;
  v8 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E5DC(v8, &v11);
  v9 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 4;
  v12 = 2;
  v10 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E164(v10, &v11);
}

void sub_271428E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  operator new();
}

void sub_2714291C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_2714291D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_2714291E8(uint64_t a1, float *a2, uint64_t a3)
{
  if (a3 < 2)
  {
    sub_271429314(&v11, a1, a2);
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2;
  v12 = 2;
  v6 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E498(v6, &v11);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 2;
  v12 = 2;
  v8 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E498(v8, &v11);
  v9 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 4;
  v12 = 2;
  v10 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E164(v10, &v11);
}

void sub_271429314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  operator new();
}

void sub_271429688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_27142969C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_2714296B0(uint64_t a1, double *a2, uint64_t a3)
{
  if (a3 < 2)
  {
    sub_2714297DC(&v11, a1, a2);
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2;
  v12 = 2;
  v6 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E5DC(v6, &v11);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 2;
  v12 = 2;
  v8 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E5DC(v8, &v11);
  v9 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 4;
  v12 = 2;
  v10 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E164(v10, &v11);
}

void sub_2714297DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  operator new();
}

void sub_271429B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_271429B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_271429B98(uint64_t a1, float *a2, uint64_t a3)
{
  if (a3 < 2)
  {
    sub_271429D0C(&v13, a1, a2, a3);
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2;
  v14 = 2;
  v6 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E498(v6, &v13);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 2;
  v14 = 2;
  v8 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E498(v8, &v13);
  v9 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 4;
  v14 = 5;
  v10 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E498(v10, &v13);
  v11 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 9;
  v14 = 2;
  v12 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E164(v12, &v13);
}

void sub_271429D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 0u;
  memset(v5, 0, sizeof(v5));
  operator new();
}

void sub_271429FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_271429FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_271429FFC(uint64_t a1, float *a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2;
  v13 = 2;
  v5 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E498(v5, &v12);
  v6 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2 + 2;
  v13 = 2;
  v7 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E498(v7, &v12);
  v8 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v8 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2 + 4;
  v13 = 5;
  v9 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E498(v9, &v12);
  v10 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v10 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2 + 9;
  v13 = 2;
  v11 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E164(v11, &v12);
}

void sub_27142A144(uint64_t a1, double *a2, uint64_t a3)
{
  if (a3 < 2)
  {
    sub_27142A2B8(&v13, a1, a2, a3);
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2;
  v14 = 2;
  v6 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E5DC(v6, &v13);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 2;
  v14 = 2;
  v8 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E5DC(v8, &v13);
  v9 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 4;
  v14 = 5;
  v10 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E5DC(v10, &v13);
  v11 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 9;
  v14 = 2;
  v12 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E164(v12, &v13);
}

void sub_27142A2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  operator new();
}

void sub_27142A5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_27142A5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_27142A5E4(uint64_t a1, double *a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2;
  v13 = 2;
  v5 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E5DC(v5, &v12);
  v6 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2 + 2;
  v13 = 2;
  v7 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E5DC(v7, &v12);
  v8 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v8 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2 + 4;
  v13 = 5;
  v9 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E5DC(v9, &v12);
  v10 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v10 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2 + 9;
  v13 = 2;
  v11 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E164(v11, &v12);
}

void sub_27142A72C(uint64_t a1, float *a2, uint64_t a3)
{
  if (a3 < 2)
  {
    sub_27142A8A0(&v13, a1, a2);
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2;
  v14 = 2;
  v6 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E498(v6, &v13);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 2;
  v14 = 2;
  v8 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E498(v8, &v13);
  v9 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 4;
  v14 = 5;
  v10 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E498(v10, &v13);
  v11 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 9;
  v14 = 2;
  v12 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E164(v12, &v13);
}

void sub_27142A8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  memset(v4, 0, sizeof(v4));
  operator new();
}

void sub_27142AB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_27142AB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_27142AB90(uint64_t a1, double *a2, uint64_t a3)
{
  if (a3 < 2)
  {
    sub_27142AD04(&v13, a1, a2);
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2;
  v14 = 2;
  v6 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E5DC(v6, &v13);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 2;
  v14 = 2;
  v8 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E5DC(v8, &v13);
  v9 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 4;
  v14 = 5;
  v10 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E5DC(v10, &v13);
  v11 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 9;
  v14 = 2;
  v12 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  sub_27182E164(v12, &v13);
}

void sub_27142AD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  operator new();
}

void sub_27142B008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_27142B01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_27142B030(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 104);
  *(a1 + 88) = "camera_type";
  *(a1 + 96) = 11;
  if ((v2 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v3 = a2;
  sub_2714286B4(a1, &v3);
}

void sub_27142BA14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27142BA8C(uint64_t a1, uint64_t a2)
{
  LODWORD(v37) = 0;
  sub_27183A9AC(a1, &v37);
  *a2 = v37;
  sub_27173A3E8(a2);
  v4 = *a2;
  if (*a2 > 99)
  {
    if (v4 > 109)
    {
      if (v4 == 110)
      {
        v35 = *(a2 + 8);
        v34 = a2 + 8;
        v33 = v35;
        if (v35)
        {
          v36 = v33(3, v34, 0, &unk_28811C9E0, &unk_271891D40);
          if (v36)
          {
            v37 = "camera";
            v38 = 6;
            v39 = v36;
            sub_27142C0F0(a1, &v37);
            return;
          }
        }

        goto LABEL_37;
      }

      if (v4 == 111)
      {
        v19 = *(a2 + 8);
        v18 = a2 + 8;
        v17 = v19;
        if (v19)
        {
          v20 = v17(3, v18, 0, &unk_28811CA10, &unk_271891E18);
          if (v20)
          {
            v37 = "camera";
            v38 = 6;
            v39 = v20;
            sub_27142C278(a1, &v37);
            return;
          }
        }

        goto LABEL_37;
      }
    }

    else
    {
      if (v4 == 100)
      {
        v27 = *(a2 + 8);
        v26 = a2 + 8;
        v25 = v27;
        if (v27)
        {
          v28 = v25(3, v26, 0, &unk_28811C9C8, &unk_271891B90);
          if (v28)
          {
            v37 = "camera";
            v38 = 6;
            v39 = v28;
            sub_27142BDE0(a1, &v37);
            return;
          }
        }

        goto LABEL_37;
      }

      if (v4 == 101)
      {
        v11 = *(a2 + 8);
        v10 = a2 + 8;
        v9 = v11;
        if (v11)
        {
          v12 = v9(3, v10, 0, &unk_28811C9F8, &unk_271891C68);
          if (v12)
          {
            v37 = "camera";
            v38 = 6;
            v39 = v12;
            sub_27142BF68(a1, &v37);
            return;
          }
        }

        goto LABEL_37;
      }
    }
  }

  else
  {
    if (v4 <= 9)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          return;
        }

        v7 = *(a2 + 8);
        v6 = a2 + 8;
        v5 = v7;
        if (v7)
        {
          v8 = v5(3, v6, 0, &unk_28811CA58, &unk_271891910);
          if (v8)
          {
            sub_27142C884(&v37, a1, v8);
            return;
          }
        }
      }

      else
      {
        v23 = *(a2 + 8);
        v22 = a2 + 8;
        v21 = v23;
        if (v23)
        {
          v24 = v21(3, v22, 0, &unk_28811CA28, &unk_27189183C);
          if (v24)
          {
            sub_27142C400(&v37, a1, v24);
            return;
          }
        }
      }

LABEL_37:
      sub_27141B114();
    }

    if (v4 == 10)
    {
      v31 = *(a2 + 8);
      v30 = a2 + 8;
      v29 = v31;
      if (v31)
      {
        v32 = v29(3, v30, 0, &unk_28811CA40, &unk_2718919E4);
        if (v32)
        {
          sub_27142CD28(&v37, a1, v32);
          return;
        }
      }

      goto LABEL_37;
    }

    if (v4 == 11)
    {
      v15 = *(a2 + 8);
      v14 = a2 + 8;
      v13 = v15;
      if (v15)
      {
        v16 = v13(3, v14, 0, &unk_28811CA70, &unk_271891AB8);
        if (v16)
        {
          sub_27142D1AC(&v37, a1, v16);
          return;
        }
      }

      goto LABEL_37;
    }
  }
}

uint64_t sub_27142BDE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  LODWORD(__p[0]) = 2;
  sub_27183A9AC(a1, __p);
  if (LODWORD(__p[0]) < 2)
  {
    sub_27142D650(__p, a1, v3);
  }

  sub_27183BD60(a1, v3);
  sub_27183BD60(a1, v3 + 1);
  sub_27183BD60(a1, v3 + 2);
  sub_27183BD60(a1, v3 + 3);
  sub_27183BD60(a1, v3 + 4);
  sub_27183BD60(a1, v3 + 5);
  sub_27183BD60(a1, v3 + 6);
  sub_27183BD60(a1, v3 + 7);
  sub_27183BD60(a1, v3 + 8);
  sub_27183A9AC(a1, v3 + 9);
  sub_27183A9AC(a1, v3 + 10);
  while ((*(a1 + 131) & 1) == 0 && (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a1, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a1 + 72) == *__p[0])
      {
LABEL_12:
        v4 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a1 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v4 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v4 & 1) == 0)
    {
      return a1;
    }
  }

  return a1;
}

uint64_t sub_27142BF68(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  LODWORD(__p[0]) = 2;
  sub_27183A9AC(a1, __p);
  if (LODWORD(__p[0]) < 2)
  {
    sub_27142DA04(__p, a1, v3);
  }

  sub_27183C0A0(a1, v3);
  sub_27183C0A0(a1, (v3 + 8));
  sub_27183C0A0(a1, (v3 + 16));
  sub_27183C0A0(a1, (v3 + 24));
  sub_27183C0A0(a1, (v3 + 32));
  sub_27183C0A0(a1, (v3 + 40));
  sub_27183C0A0(a1, (v3 + 48));
  sub_27183C0A0(a1, (v3 + 56));
  sub_27183C0A0(a1, (v3 + 64));
  sub_27183A9AC(a1, (v3 + 72));
  sub_27183A9AC(a1, (v3 + 76));
  while ((*(a1 + 131) & 1) == 0 && (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a1, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a1 + 72) == *__p[0])
      {
LABEL_12:
        v4 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a1 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v4 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v4 & 1) == 0)
    {
      return a1;
    }
  }

  return a1;
}

uint64_t sub_27142C0F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  LODWORD(__p[0]) = 2;
  sub_27183A9AC(a1, __p);
  if (LODWORD(__p[0]) < 2)
  {
    sub_27142DDF4(__p, a1, v3);
  }

  sub_27183BD60(a1, v3);
  sub_27183BD60(a1, v3 + 1);
  sub_27183BD60(a1, v3 + 2);
  sub_27183BD60(a1, v3 + 3);
  sub_27183BD60(a1, v3 + 4);
  sub_27183BD60(a1, v3 + 5);
  sub_27183BD60(a1, v3 + 6);
  sub_27183BD60(a1, v3 + 7);
  sub_27183BD60(a1, v3 + 8);
  sub_27183A9AC(a1, v3 + 9);
  sub_27183A9AC(a1, v3 + 10);
  while ((*(a1 + 131) & 1) == 0 && (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a1, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a1 + 72) == *__p[0])
      {
LABEL_12:
        v4 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a1 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v4 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v4 & 1) == 0)
    {
      return a1;
    }
  }

  return a1;
}

uint64_t sub_27142C278(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  LODWORD(__p[0]) = 2;
  sub_27183A9AC(a1, __p);
  if (LODWORD(__p[0]) < 2)
  {
    sub_27142E1A8(__p, a1, v3);
  }

  sub_27183C0A0(a1, v3);
  sub_27183C0A0(a1, (v3 + 8));
  sub_27183C0A0(a1, (v3 + 16));
  sub_27183C0A0(a1, (v3 + 24));
  sub_27183C0A0(a1, (v3 + 32));
  sub_27183C0A0(a1, (v3 + 40));
  sub_27183C0A0(a1, (v3 + 48));
  sub_27183C0A0(a1, (v3 + 56));
  sub_27183C0A0(a1, (v3 + 64));
  sub_27183A9AC(a1, (v3 + 72));
  sub_27183A9AC(a1, (v3 + 76));
  while ((*(a1 + 131) & 1) == 0 && (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a1, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a1 + 72) == *__p[0])
      {
LABEL_12:
        v4 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a1 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v4 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v4 & 1) == 0)
    {
      return a1;
    }
  }

  return a1;
}

void sub_27142C400(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  LODWORD(__p[0]) = 2;
  sub_27183A9AC(a2, __p);
  if (LODWORD(__p[0]) < 2)
  {
    sub_27142C54C(__p, a2, a3);
  }

  sub_27183BD60(a2, a3);
  sub_27183BD60(a2, a3 + 1);
  sub_27183BD60(a2, a3 + 2);
  sub_27183BD60(a2, a3 + 3);
  sub_27183A9AC(a2, a3 + 4);
  sub_27183A9AC(a2, a3 + 5);
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a2, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a2 + 72) == *__p[0])
      {
LABEL_12:
        v5 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a2 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v5 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v5 & 1) == 0)
    {
      return;
    }
  }
}

void sub_27142C54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  operator new();
}

void sub_27142C834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_27142C848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_27142C85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_27142C870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_27142C884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(__p[0]) = 2;
  sub_27183A9AC(a2, __p);
  if (LODWORD(__p[0]) < 2)
  {
    sub_27142C9D0(__p, a2, a3);
  }

  sub_27183C0A0(a2, a3);
  sub_27183C0A0(a2, (a3 + 8));
  sub_27183C0A0(a2, (a3 + 16));
  sub_27183C0A0(a2, (a3 + 24));
  sub_27183A9AC(a2, (a3 + 32));
  sub_27183A9AC(a2, (a3 + 36));
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a2, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a2 + 72) == *__p[0])
      {
LABEL_12:
        v5 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a2 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v5 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v5 & 1) == 0)
    {
      return;
    }
  }
}

void sub_27142C9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  operator new();
}

void sub_27142CCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_27142CCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_27142CD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_27142CD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_27142CD28(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  LODWORD(__p[0]) = 2;
  sub_27183A9AC(a2, __p);
  if (LODWORD(__p[0]) < 2)
  {
    sub_27142CE74(__p, a2, a3);
  }

  sub_27183BD60(a2, a3);
  sub_27183BD60(a2, a3 + 1);
  sub_27183BD60(a2, a3 + 2);
  sub_27183BD60(a2, a3 + 3);
  sub_27183A9AC(a2, a3 + 4);
  sub_27183A9AC(a2, a3 + 5);
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a2, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a2 + 72) == *__p[0])
      {
LABEL_12:
        v5 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a2 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v5 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v5 & 1) == 0)
    {
      return;
    }
  }
}

void sub_27142CE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  operator new();
}

void sub_27142D15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_27142D170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_27142D184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_27142D198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_27142D1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(__p[0]) = 2;
  sub_27183A9AC(a2, __p);
  if (LODWORD(__p[0]) < 2)
  {
    sub_27142D2F8(__p, a2, a3);
  }

  sub_27183C0A0(a2, a3);
  sub_27183C0A0(a2, (a3 + 8));
  sub_27183C0A0(a2, (a3 + 16));
  sub_27183C0A0(a2, (a3 + 24));
  sub_27183A9AC(a2, (a3 + 32));
  sub_27183A9AC(a2, (a3 + 36));
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a2, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a2 + 72) == *__p[0])
      {
LABEL_12:
        v5 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a2 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v5 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v5 & 1) == 0)
    {
      return;
    }
  }
}

void sub_27142D2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  operator new();
}

void sub_27142D600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_27142D614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_27142D628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_27142D63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_27142D650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  memset(v4, 0, sizeof(v4));
  operator new();
}

void sub_27142D9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_27142D9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_27142D9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_27142D9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_27142D9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_27142DA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  operator new();
}

void sub_27142DD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_27142DDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_27142DDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_27142DDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_27142DDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_27142DDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  memset(v4, 0, sizeof(v4));
  operator new();
}

void sub_27142E144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_27142E158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_27142E16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_27142E180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_27142E194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_27142E1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  operator new();
}

void sub_27142E534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_27142E548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_27142E55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_27142E570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_27142E584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_27142E598(uint64_t a1, uint64_t a2)
{
  LODWORD(v37) = 0;
  sub_27183A9AC(a1, &v37);
  *a2 = v37;
  sub_271738768(a2);
  v4 = *a2;
  if (*a2 > 99)
  {
    if (v4 > 109)
    {
      if (v4 == 110)
      {
        v35 = *(a2 + 8);
        v34 = a2 + 8;
        v33 = v35;
        if (v35)
        {
          v36 = v33(3, v34, 0, &unk_28811C9E0, &unk_271891D40);
          if (v36)
          {
            v37 = "camera";
            v38 = 6;
            v39 = v36;
            sub_27142C0F0(a1, &v37);
            return;
          }
        }

        goto LABEL_37;
      }

      if (v4 == 111)
      {
        v19 = *(a2 + 8);
        v18 = a2 + 8;
        v17 = v19;
        if (v19)
        {
          v20 = v17(3, v18, 0, &unk_28811CA10, &unk_271891E18);
          if (v20)
          {
            v37 = "camera";
            v38 = 6;
            v39 = v20;
            sub_27142C278(a1, &v37);
            return;
          }
        }

        goto LABEL_37;
      }
    }

    else
    {
      if (v4 == 100)
      {
        v27 = *(a2 + 8);
        v26 = a2 + 8;
        v25 = v27;
        if (v27)
        {
          v28 = v25(3, v26, 0, &unk_28811C9C8, &unk_271891B90);
          if (v28)
          {
            v37 = "camera";
            v38 = 6;
            v39 = v28;
            sub_27142BDE0(a1, &v37);
            return;
          }
        }

        goto LABEL_37;
      }

      if (v4 == 101)
      {
        v11 = *(a2 + 8);
        v10 = a2 + 8;
        v9 = v11;
        if (v11)
        {
          v12 = v9(3, v10, 0, &unk_28811C9F8, &unk_271891C68);
          if (v12)
          {
            v37 = "camera";
            v38 = 6;
            v39 = v12;
            sub_27142BF68(a1, &v37);
            return;
          }
        }

        goto LABEL_37;
      }
    }
  }

  else
  {
    if (v4 <= 9)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          return;
        }

        v7 = *(a2 + 8);
        v6 = a2 + 8;
        v5 = v7;
        if (v7)
        {
          v8 = v5(3, v6, 0, &unk_28811CA58, &unk_271891910);
          if (v8)
          {
            sub_27142C884(&v37, a1, v8);
            return;
          }
        }
      }

      else
      {
        v23 = *(a2 + 8);
        v22 = a2 + 8;
        v21 = v23;
        if (v23)
        {
          v24 = v21(3, v22, 0, &unk_28811CA28, &unk_27189183C);
          if (v24)
          {
            sub_27142C400(&v37, a1, v24);
            return;
          }
        }
      }

LABEL_37:
      sub_27141B114();
    }

    if (v4 == 10)
    {
      v31 = *(a2 + 8);
      v30 = a2 + 8;
      v29 = v31;
      if (v31)
      {
        v32 = v29(3, v30, 0, &unk_28811CA40, &unk_2718919E4);
        if (v32)
        {
          sub_27142CD28(&v37, a1, v32);
          return;
        }
      }

      goto LABEL_37;
    }

    if (v4 == 11)
    {
      v15 = *(a2 + 8);
      v14 = a2 + 8;
      v13 = v15;
      if (v15)
      {
        v16 = v13(3, v14, 0, &unk_28811CA70, &unk_271891AB8);
        if (v16)
        {
          sub_27142D1AC(&v37, a1, v16);
          return;
        }
      }

      goto LABEL_37;
    }
  }
}

void sub_27142E8EC(uint64_t a1, void *a2, _DWORD *a3)
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

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_27142E9E4(&v13, a2, a3, v7);
  }

  sub_27173170C(a2);
  sub_27142EC3C(a2, a3);
  v10 = a2[12];
  v11 = a2[9];
  a2[6] = *(v10 - 8) + *(v11 - 8) + 8;
  a2[9] = v11 - 8;
  a2[12] = v10 - 8;
}

void sub_27142EBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27142EC3C(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v8 = *(a1[3] + v2);
  a1[6] = v2 + 4;
  *a2 = v8;
  sub_27173A3E8(a2);
  v9 = *a2;
  if (*a2 > 99)
  {
    if (v9 > 109)
    {
      if (v9 == 110)
      {
        v40 = *(a2 + 8);
        v39 = a2 + 8;
        v38 = v40;
        if (v40)
        {
          v41 = v38(3, v39, 0, &unk_28811C9E0, &unk_271891D40);
          if (v41)
          {
            sub_2714317DC(&v49, a1, v41);
            return;
          }
        }

        goto LABEL_40;
      }

      if (v9 == 111)
      {
        v24 = *(a2 + 8);
        v23 = a2 + 8;
        v22 = v24;
        if (v24)
        {
          v25 = v22(3, v23, 0, &unk_28811CA10, &unk_271891E18);
          if (v25)
          {
            sub_271431F14(&v50, a1, v25);
            return;
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      if (v9 == 100)
      {
        v32 = *(a2 + 8);
        v31 = a2 + 8;
        v30 = v32;
        if (v32)
        {
          v33 = v30(3, v31, 0, &unk_28811C9C8, &unk_271891B90);
          if (v33)
          {
            sub_271430930(&v47, a1, v33);
            return;
          }
        }

        goto LABEL_40;
      }

      if (v9 == 101)
      {
        v16 = *(a2 + 8);
        v15 = a2 + 8;
        v14 = v16;
        if (v16)
        {
          v17 = v14(3, v15, 0, &unk_28811C9F8, &unk_271891C68);
          if (v17)
          {
            sub_271431068(&v48, a1, v17);
            return;
          }
        }

        goto LABEL_40;
      }
    }
  }

  else
  {
    if (v9 <= 9)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          return;
        }

        v12 = *(a2 + 8);
        v11 = a2 + 8;
        v10 = v12;
        if (v12)
        {
          v13 = v10(3, v11, 0, &unk_28811CA58, &unk_271891910);
          if (v13)
          {
            sub_27142F600(&v44, a1, v13);
            return;
          }
        }
      }

      else
      {
        v28 = *(a2 + 8);
        v27 = a2 + 8;
        v26 = v28;
        if (v28)
        {
          v29 = v26(3, v27, 0, &unk_28811CA28, &unk_27189183C);
          if (v29)
          {
            sub_27142EFB0(&v43, a1, v29);
            return;
          }
        }
      }

LABEL_40:
      sub_27141B114();
    }

    if (v9 == 10)
    {
      v36 = *(a2 + 8);
      v35 = a2 + 8;
      v34 = v36;
      if (v36)
      {
        v37 = v34(3, v35, 0, &unk_28811CA40, &unk_2718919E4);
        if (v37)
        {
          sub_27142FC70(&v45, a1, v37);
          return;
        }
      }

      goto LABEL_40;
    }

    if (v9 == 11)
    {
      v20 = *(a2 + 8);
      v19 = a2 + 8;
      v18 = v20;
      if (v20)
      {
        v21 = v18(3, v19, 0, &unk_28811CA70, &unk_271891AB8);
        if (v21)
        {
          sub_2714302C0(&v46, a1, v21);
          return;
        }
      }

      goto LABEL_40;
    }
  }
}

void *sub_27142EFB0(uint64_t a1, void *a2, void *a3)
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

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_27142F0A8(&v14, a2, a3, v7);
  }

  sub_27173170C(a2);
  result = sub_27142F378(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_27142F0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  operator new();
}

void sub_27142F350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_27142F364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void *sub_27142F378(void *result, void *a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    goto LABEL_11;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 8;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 7)
  {
    goto LABEL_11;
  }

  a2[1] = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 8;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 7)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  a2[2] = *(result[3] + v10);
  result[6] += 8;
  return result;
}

void *sub_27142F4BC(void *result, void *a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    goto LABEL_11;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 8;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 7)
  {
    goto LABEL_11;
  }

  a2[1] = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 8;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 7)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  a2[2] = *(result[3] + v10);
  result[6] += 8;
  return result;
}

void *sub_27142F600(uint64_t a1, void *a2, uint64_t a3)
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

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_27142F6F8(&v14, a2, a3, v7);
  }

  sub_27173170C(a2);
  result = sub_27142F9E8(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_27142F6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  operator new();
}

void sub_27142F9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_27142F9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void *sub_27142F9E8(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
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

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 16;
  result[6] = v7;
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

  *(a2 + 16) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 16;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 7)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(a2 + 32) = *(result[3] + v10);
  result[6] += 8;
  return result;
}

void *sub_27142FB2C(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
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

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 16;
  result[6] = v7;
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

  *(a2 + 16) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 16;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 7)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(a2 + 32) = *(result[3] + v10);
  result[6] += 8;
  return result;
}

void *sub_27142FC70(uint64_t a1, void *a2, void *a3)
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

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_27142FD68(&v14, a2, a3, v7);
  }

  sub_27173170C(a2);
  result = sub_271430038(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_27142FD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  operator new();
}

void sub_271430010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_271430024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void *sub_271430038(void *result, void *a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    goto LABEL_11;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 8;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 7)
  {
    goto LABEL_11;
  }

  a2[1] = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 8;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 7)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  a2[2] = *(result[3] + v10);
  result[6] += 8;
  return result;
}

void *sub_27143017C(void *result, void *a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    goto LABEL_11;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 8;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 7)
  {
    goto LABEL_11;
  }

  a2[1] = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 8;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 7)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  a2[2] = *(result[3] + v10);
  result[6] += 8;
  return result;
}

void *sub_2714302C0(uint64_t a1, void *a2, uint64_t a3)
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

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_2714303B8(&v14, a2, a3, v7);
  }

  sub_27173170C(a2);
  result = sub_2714306A8(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_2714303B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  operator new();
}

void sub_271430680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_271430694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void *sub_2714306A8(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
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

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 16;
  result[6] = v7;
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

  *(a2 + 16) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 16;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 7)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(a2 + 32) = *(result[3] + v10);
  result[6] += 8;
  return result;
}

void *sub_2714307EC(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
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

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 16;
  result[6] = v7;
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

  *(a2 + 16) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 16;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 7)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(a2 + 32) = *(result[3] + v10);
  result[6] += 8;
  return result;
}

void *sub_271430930(uint64_t a1, void *a2, uint64_t a3)
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

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_271430A28(&v14, a2, a3, v7);
  }

  sub_27173170C(a2);
  result = sub_271430D18(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_271430A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 0u;
  memset(v5, 0, sizeof(v5));
  operator new();
}

void sub_271430CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_271430D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void *sub_271430D18(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    goto LABEL_14;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 8;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 7)
  {
    goto LABEL_14;
  }

  *(a2 + 8) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 8;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0x13)
  {
    goto LABEL_14;
  }

  v12 = result[3] + v10;
  v13 = *v12;
  *(a2 + 32) = *(v12 + 16);
  *(a2 + 16) = v13;
  v14 = result[7];
  v15 = result[6] + 20;
  result[6] = v15;
  v4 = v14 >= v15;
  v16 = v14 - v15;
  if (!v4)
  {
    v16 = 0;
  }

  if (v16 <= 7)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(a2 + 36) = *(result[3] + v15);
  result[6] += 8;
  return result;
}

void *sub_271430EC0(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    goto LABEL_14;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 8;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 7)
  {
    goto LABEL_14;
  }

  *(a2 + 8) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 8;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0x13)
  {
    goto LABEL_14;
  }

  v12 = result[3] + v10;
  v13 = *v12;
  *(a2 + 32) = *(v12 + 16);
  *(a2 + 16) = v13;
  v14 = result[7];
  v15 = result[6] + 20;
  result[6] = v15;
  v4 = v14 >= v15;
  v16 = v14 - v15;
  if (!v4)
  {
    v16 = 0;
  }

  if (v16 <= 7)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(a2 + 36) = *(result[3] + v15);
  result[6] += 8;
  return result;
}

void *sub_271431068(uint64_t a1, void *a2, uint64_t a3)
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

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_271431160(&v14, a2, a3, v7);
  }

  sub_27173170C(a2);
  result = sub_27143148C(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_271431160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  operator new();
}

void sub_271431464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_271431478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void *sub_27143148C(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xF)
  {
    goto LABEL_14;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 16;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 0xF)
  {
    goto LABEL_14;
  }

  *(a2 + 16) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 16;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0x27)
  {
    goto LABEL_14;
  }

  v12 = result[3] + v10;
  v13 = *v12;
  v14 = *(v12 + 16);
  *(a2 + 64) = *(v12 + 32);
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  v15 = result[7];
  v16 = result[6] + 40;
  result[6] = v16;
  v4 = v15 >= v16;
  v17 = v15 - v16;
  if (!v4)
  {
    v17 = 0;
  }

  if (v17 <= 7)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(a2 + 72) = *(result[3] + v16);
  result[6] += 8;
  return result;
}

void *sub_271431634(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xF)
  {
    goto LABEL_14;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 16;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 0xF)
  {
    goto LABEL_14;
  }

  *(a2 + 16) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 16;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0x27)
  {
    goto LABEL_14;
  }

  v12 = result[3] + v10;
  v13 = *v12;
  v14 = *(v12 + 16);
  *(a2 + 64) = *(v12 + 32);
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  v15 = result[7];
  v16 = result[6] + 40;
  result[6] = v16;
  v4 = v15 >= v16;
  v17 = v15 - v16;
  if (!v4)
  {
    v17 = 0;
  }

  if (v17 <= 7)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(a2 + 72) = *(result[3] + v16);
  result[6] += 8;
  return result;
}

void *sub_2714317DC(uint64_t a1, void *a2, uint64_t a3)
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

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_2714318D4(&v14, a2, a3, v7);
  }

  sub_27173170C(a2);
  result = sub_271431BC4(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_2714318D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 0u;
  memset(v5, 0, sizeof(v5));
  operator new();
}

void sub_271431B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_271431BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void *sub_271431BC4(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    goto LABEL_14;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 8;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 7)
  {
    goto LABEL_14;
  }

  *(a2 + 8) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 8;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0x13)
  {
    goto LABEL_14;
  }

  v12 = result[3] + v10;
  v13 = *v12;
  *(a2 + 32) = *(v12 + 16);
  *(a2 + 16) = v13;
  v14 = result[7];
  v15 = result[6] + 20;
  result[6] = v15;
  v4 = v14 >= v15;
  v16 = v14 - v15;
  if (!v4)
  {
    v16 = 0;
  }

  if (v16 <= 7)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(a2 + 36) = *(result[3] + v15);
  result[6] += 8;
  return result;
}

void *sub_271431D6C(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    goto LABEL_14;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 8;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 7)
  {
    goto LABEL_14;
  }

  *(a2 + 8) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 8;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0x13)
  {
    goto LABEL_14;
  }

  v12 = result[3] + v10;
  v13 = *v12;
  *(a2 + 32) = *(v12 + 16);
  *(a2 + 16) = v13;
  v14 = result[7];
  v15 = result[6] + 20;
  result[6] = v15;
  v4 = v14 >= v15;
  v16 = v14 - v15;
  if (!v4)
  {
    v16 = 0;
  }

  if (v16 <= 7)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(a2 + 36) = *(result[3] + v15);
  result[6] += 8;
  return result;
}

void *sub_271431F14(uint64_t a1, void *a2, uint64_t a3)
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

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_27143200C(&v14, a2, a3, v7);
  }

  sub_27173170C(a2);
  result = sub_271432338(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_27143200C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  operator new();
}

void sub_271432310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_271432324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void *sub_271432338(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xF)
  {
    goto LABEL_14;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 16;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 0xF)
  {
    goto LABEL_14;
  }

  *(a2 + 16) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 16;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0x27)
  {
    goto LABEL_14;
  }

  v12 = result[3] + v10;
  v13 = *v12;
  v14 = *(v12 + 16);
  *(a2 + 64) = *(v12 + 32);
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  v15 = result[7];
  v16 = result[6] + 40;
  result[6] = v16;
  v4 = v15 >= v16;
  v17 = v15 - v16;
  if (!v4)
  {
    v17 = 0;
  }

  if (v17 <= 7)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(a2 + 72) = *(result[3] + v16);
  result[6] += 8;
  return result;
}

void *sub_2714324E0(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xF)
  {
    goto LABEL_14;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 16;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 0xF)
  {
    goto LABEL_14;
  }

  *(a2 + 16) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 16;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0x27)
  {
    goto LABEL_14;
  }

  v12 = result[3] + v10;
  v13 = *v12;
  v14 = *(v12 + 16);
  *(a2 + 64) = *(v12 + 32);
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  v15 = result[7];
  v16 = result[6] + 40;
  result[6] = v16;
  v4 = v15 >= v16;
  v17 = v15 - v16;
  if (!v4)
  {
    v17 = 0;
  }

  if (v17 <= 7)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(a2 + 72) = *(result[3] + v16);
  result[6] += 8;
  return result;
}

void sub_271432688(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v8 = *(a1[3] + v2);
  a1[6] = v2 + 4;
  *a2 = v8;
  sub_271738768(a2);
  v9 = *a2;
  if (*a2 > 99)
  {
    if (v9 > 109)
    {
      if (v9 == 110)
      {
        v40 = *(a2 + 8);
        v39 = a2 + 8;
        v38 = v40;
        if (v40)
        {
          v41 = v38(3, v39, 0, &unk_28811C9E0, &unk_271891D40);
          if (v41)
          {
            sub_2714317DC(&v49, a1, v41);
            return;
          }
        }

        goto LABEL_40;
      }

      if (v9 == 111)
      {
        v24 = *(a2 + 8);
        v23 = a2 + 8;
        v22 = v24;
        if (v24)
        {
          v25 = v22(3, v23, 0, &unk_28811CA10, &unk_271891E18);
          if (v25)
          {
            sub_271431F14(&v50, a1, v25);
            return;
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      if (v9 == 100)
      {
        v32 = *(a2 + 8);
        v31 = a2 + 8;
        v30 = v32;
        if (v32)
        {
          v33 = v30(3, v31, 0, &unk_28811C9C8, &unk_271891B90);
          if (v33)
          {
            sub_271430930(&v47, a1, v33);
            return;
          }
        }

        goto LABEL_40;
      }

      if (v9 == 101)
      {
        v16 = *(a2 + 8);
        v15 = a2 + 8;
        v14 = v16;
        if (v16)
        {
          v17 = v14(3, v15, 0, &unk_28811C9F8, &unk_271891C68);
          if (v17)
          {
            sub_271431068(&v48, a1, v17);
            return;
          }
        }

        goto LABEL_40;
      }
    }
  }

  else
  {
    if (v9 <= 9)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          return;
        }

        v12 = *(a2 + 8);
        v11 = a2 + 8;
        v10 = v12;
        if (v12)
        {
          v13 = v10(3, v11, 0, &unk_28811CA58, &unk_271891910);
          if (v13)
          {
            sub_27142F600(&v44, a1, v13);
            return;
          }
        }
      }

      else
      {
        v28 = *(a2 + 8);
        v27 = a2 + 8;
        v26 = v28;
        if (v28)
        {
          v29 = v26(3, v27, 0, &unk_28811CA28, &unk_27189183C);
          if (v29)
          {
            sub_27142EFB0(&v43, a1, v29);
            return;
          }
        }
      }

LABEL_40:
      sub_27141B114();
    }

    if (v9 == 10)
    {
      v36 = *(a2 + 8);
      v35 = a2 + 8;
      v34 = v36;
      if (v36)
      {
        v37 = v34(3, v35, 0, &unk_28811CA40, &unk_2718919E4);
        if (v37)
        {
          sub_27142FC70(&v45, a1, v37);
          return;
        }
      }

      goto LABEL_40;
    }

    if (v9 == 11)
    {
      v20 = *(a2 + 8);
      v19 = a2 + 8;
      v18 = v20;
      if (v20)
      {
        v21 = v18(3, v19, 0, &unk_28811CA70, &unk_271891AB8);
        if (v21)
        {
          sub_2714302C0(&v46, a1, v21);
          return;
        }
      }

      goto LABEL_40;
    }
  }
}

void sub_2714329FC(int *a1, uint64_t *a2, _DWORD *a3, uint64_t a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_10;
    }

    v8 = a4;
    v10 = 2;
    (*(*a2 + 104))(a2, &v10);
    if (v10 >= 3)
    {
      v9 = v10;
      if ((atomic_load_explicit(&qword_280878B30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878B30))
      {
        sub_271432BD4();
      }

      sub_271847D5C(qword_280878B18, v9, 2);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    sub_271432F30(a2, a3);
    (*(*a2 + 24))(a2);
    return;
  }

  if (a4 <= 1)
  {
LABEL_10:
    sub_271432CD8(&v11, a2, a3, a4);
  }

  sub_271432F30(a2, a3);
}

void sub_271432CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271432EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271432F30(uint64_t *a1, uint64_t a2)
{
  v45 = a2;
  sub_271433BB0(a1, &v45);
  sub_27173A3E8(a2);
  v4 = *a2;
  if (*a2 > 99)
  {
    if (v4 > 109)
    {
      if (v4 == 110)
      {
        v41 = *(a2 + 8);
        v40 = a2 + 8;
        v39 = v41;
        if (!v41)
        {
          goto LABEL_45;
        }

        v42 = v39(3, v40, 0, &unk_28811C9E0, &unk_271891D40);
        if (!v42)
        {
          goto LABEL_45;
        }

        v43 = *a1;
        v45 = a1[1];
        v44 = v45;
        v48 = 2;
        (*(v43 + 104))(a1, &v48);
        if (v44 < 1)
        {
          sub_271437E54(a1, v42, v48);
        }

        else
        {
          sub_271437ACC(&v45, a1, v42, v48);
        }
      }

      else if (v4 == 111)
      {
        v21 = *(a2 + 8);
        v20 = a2 + 8;
        v19 = v21;
        if (!v21)
        {
          goto LABEL_45;
        }

        v22 = v19(3, v20, 0, &unk_28811CA10, &unk_271891E18);
        if (!v22)
        {
          goto LABEL_45;
        }

        v23 = *a1;
        v45 = a1[1];
        v24 = v45;
        v48 = 2;
        (*(v23 + 104))(a1, &v48);
        if (v24 < 1)
        {
          sub_271438A00(a1, v22, v48);
        }

        else
        {
          sub_271438678(&v45, a1, v22, v48);
        }
      }
    }

    else if (v4 == 100)
    {
      v31 = *(a2 + 8);
      v30 = a2 + 8;
      v29 = v31;
      if (!v31)
      {
        goto LABEL_45;
      }

      v32 = v29(3, v30, 0, &unk_28811C9C8, &unk_271891B90);
      if (!v32)
      {
        goto LABEL_45;
      }

      v33 = *a1;
      v45 = a1[1];
      v34 = v45;
      v48 = 2;
      (*(v33 + 104))(a1, &v48);
      if (v34 < 1)
      {
        sub_2714366C0(a1, v32, v48);
      }

      else
      {
        sub_271436338(&v45, a1, v32, v48);
      }
    }

    else if (v4 == 101)
    {
      v11 = *(a2 + 8);
      v10 = a2 + 8;
      v9 = v11;
      if (!v11)
      {
        goto LABEL_45;
      }

      v12 = v9(3, v10, 0, &unk_28811C9F8, &unk_271891C68);
      if (!v12)
      {
        goto LABEL_45;
      }

      v13 = *a1;
      v45 = a1[1];
      v14 = v45;
      v48 = 2;
      (*(v13 + 104))(a1, &v48);
      if (v14 < 1)
      {
        sub_27143726C(a1, v12, v48);
      }

      else
      {
        sub_271436EE4(&v45, a1, v12, v48);
      }
    }
  }

  else
  {
    if (v4 <= 9)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          return;
        }

        v7 = *(a2 + 8);
        v6 = a2 + 8;
        v5 = v7;
        if (v7)
        {
          v8 = v5(3, v6, 0, &unk_28811CA58, &unk_271891910);
          if (v8)
          {
            v45 = "camera";
            v46 = 6;
            v47 = v8;
            sub_271433628(a1, &v45);
            return;
          }
        }
      }

      else
      {
        v27 = *(a2 + 8);
        v26 = a2 + 8;
        v25 = v27;
        if (v27)
        {
          v28 = v25(3, v26, 0, &unk_28811CA28, &unk_27189183C);
          if (v28)
          {
            v45 = "camera";
            v46 = 6;
            v47 = v28;
            sub_271433450(a1, &v45);
            return;
          }
        }
      }

LABEL_45:
      sub_27141B114();
    }

    if (v4 == 10)
    {
      v37 = *(a2 + 8);
      v36 = a2 + 8;
      v35 = v37;
      if (v37)
      {
        v38 = v35(3, v36, 0, &unk_28811CA40, &unk_2718919E4);
        if (v38)
        {
          v45 = "camera";
          v46 = 6;
          v47 = v38;
          sub_271433800(a1, &v45);
          return;
        }
      }

      goto LABEL_45;
    }

    if (v4 == 11)
    {
      v17 = *(a2 + 8);
      v16 = a2 + 8;
      v15 = v17;
      if (v17)
      {
        v18 = v15(3, v16, 0, &unk_28811CA70, &unk_271891AB8);
        if (v18)
        {
          v45 = "camera";
          v46 = 6;
          v47 = v18;
          sub_2714339D8(a1, &v45);
          return;
        }
      }

      goto LABEL_45;
    }
  }
}

void *sub_271433450(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v6 = a1[1];
  v7 = 2;
  (*(v4 + 104))(a1, &v7);
  if (v6 < 1)
  {
    if (v7 < 2)
    {
      sub_2714342CC(&v8, a1, v3);
    }

    (*(*a1 + 128))(a1, v3);
    (*(*a1 + 128))(a1, v3 + 4);
    (*(*a1 + 128))(a1, v3 + 8);
    (*(*a1 + 128))(a1, v3 + 12);
    (*(*a1 + 104))(a1, v3 + 16);
    (*(*a1 + 104))(a1, v3 + 20);
    return a1;
  }

  else
  {
    sub_271433D28(&v6, a1, v3, v7);
    return a1;
  }
}

void *sub_271433628(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v6 = a1[1];
  v7 = 2;
  (*(v4 + 104))(a1, &v7);
  if (v6 < 1)
  {
    if (v7 < 2)
    {
      sub_271434C40(&v8, a1, v3);
    }

    (*(*a1 + 136))(a1, v3);
    (*(*a1 + 136))(a1, v3 + 8);
    (*(*a1 + 136))(a1, v3 + 16);
    (*(*a1 + 136))(a1, v3 + 24);
    (*(*a1 + 104))(a1, v3 + 32);
    (*(*a1 + 104))(a1, v3 + 36);
    return a1;
  }

  else
  {
    sub_27143469C(&v6, a1, v3, v7);
    return a1;
  }
}

void *sub_271433800(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v6 = a1[1];
  v7 = 2;
  (*(v4 + 104))(a1, &v7);
  if (v6 < 1)
  {
    if (v7 < 2)
    {
      sub_2714355D4(&v8, a1, v3);
    }

    (*(*a1 + 128))(a1, v3);
    (*(*a1 + 128))(a1, v3 + 4);
    (*(*a1 + 128))(a1, v3 + 8);
    (*(*a1 + 128))(a1, v3 + 12);
    (*(*a1 + 104))(a1, v3 + 16);
    (*(*a1 + 104))(a1, v3 + 20);
    return a1;
  }

  else
  {
    sub_271435030(&v6, a1, v3, v7);
    return a1;
  }
}

void *sub_2714339D8(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v6 = a1[1];
  v7 = 2;
  (*(v4 + 104))(a1, &v7);
  if (v6 < 1)
  {
    if (v7 < 2)
    {
      sub_271435F48(&v8, a1, v3);
    }

    (*(*a1 + 136))(a1, v3);
    (*(*a1 + 136))(a1, v3 + 8);
    (*(*a1 + 136))(a1, v3 + 16);
    (*(*a1 + 136))(a1, v3 + 24);
    (*(*a1 + 104))(a1, v3 + 32);
    (*(*a1 + 104))(a1, v3 + 36);
    return a1;
  }

  else
  {
    sub_2714359A4(&v6, a1, v3, v7);
    return a1;
  }
}

void sub_271433BB0(_BYTE *a1, _DWORD **a2)
{
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  LODWORD(__p[0]) = 0;
  (*(*a1 + 104))(a1, __p);
  **a2 = __p[0];
}

void sub_271433CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_27184D728(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271433D28(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_17;
    }

    v8 = a4;
    v13 = 2;
    (*(*a2 + 104))(a2, &v13);
    if (v13 >= 3)
    {
      v12 = v13;
      if ((atomic_load_explicit(&qword_280878B50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878B50))
      {
        sub_271433FB8();
      }

      sub_271847D5C(qword_280878B38, v12, 2);
    }

    v6 = *a1;
    a4 = v8;
  }

  v10 = a4 > 1 && v6 > 0;
  if (v10)
  {
    (*(*a2 + 16))(a2);
    goto LABEL_14;
  }

  if (a4 < 2)
  {
LABEL_17:
    sub_2714342CC(&v14, a2, a3);
  }

LABEL_14:
  (*(*a2 + 128))(a2, a3);
  (*(*a2 + 128))(a2, a3 + 4);
  (*(*a2 + 128))(a2, a3 + 8);
  (*(*a2 + 128))(a2, a3 + 12);
  (*(*a2 + 104))(a2, a3 + 16);
  result = (*(*a2 + 104))(a2, a3 + 20);
  if (v10)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_27143408C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714340BC(const void **a1@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 7;
  strcpy(v9, "float32");
  sub_271851C68("cv3d::kit::cam::PixelOrigin::Center]", 35, &v11);
  sub_271851C68("2U]", 2, &v12);
  sub_2711309E8(__p, v9, 3uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_11:
      if ((v10 & 0x80000000) == 0)
      {
        return;
      }

LABEL_15:
      operator delete(v9[0]);
      return;
    }
  }

  else if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  if (v10 < 0)
  {
    goto LABEL_15;
  }
}

void sub_271434234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_27137F4D0(&a10);
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a18 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a13);
      _Unwind_Resume(a1);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_2714342CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  operator new();
}

void sub_271434674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_271434688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27143469C(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_17;
    }

    v8 = a4;
    v13 = 2;
    (*(*a2 + 104))(a2, &v13);
    if (v13 >= 3)
    {
      v12 = v13;
      if ((atomic_load_explicit(&qword_280878B70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878B70))
      {
        sub_27143492C();
      }

      sub_271847D5C(qword_280878B58, v12, 2);
    }

    v6 = *a1;
    a4 = v8;
  }

  v10 = a4 > 1 && v6 > 0;
  if (v10)
  {
    (*(*a2 + 16))(a2);
    goto LABEL_14;
  }

  if (a4 < 2)
  {
LABEL_17:
    sub_271434C40(&v14, a2, a3);
  }

LABEL_14:
  (*(*a2 + 136))(a2, a3);
  (*(*a2 + 136))(a2, a3 + 8);
  (*(*a2 + 136))(a2, a3 + 16);
  (*(*a2 + 136))(a2, a3 + 24);
  (*(*a2 + 104))(a2, a3 + 32);
  result = (*(*a2 + 104))(a2, a3 + 36);
  if (v10)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_271434A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271434A30(const void **a1@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 7;
  strcpy(v9, "float64");
  sub_271851C68("cv3d::kit::cam::PixelOrigin::Center]", 35, &v11);
  sub_271851C68("2U]", 2, &v12);
  sub_2711309E8(__p, v9, 3uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_11:
      if ((v10 & 0x80000000) == 0)
      {
        return;
      }

LABEL_15:
      operator delete(v9[0]);
      return;
    }
  }

  else if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  if (v10 < 0)
  {
    goto LABEL_15;
  }
}

void sub_271434BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_27137F4D0(&a10);
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a18 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a13);
      _Unwind_Resume(a1);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_271434C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  operator new();
}

void sub_271435008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_27143501C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271435030(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_17;
    }

    v8 = a4;
    v13 = 2;
    (*(*a2 + 104))(a2, &v13);
    if (v13 >= 3)
    {
      v12 = v13;
      if ((atomic_load_explicit(&qword_280878B90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878B90))
      {
        sub_2714352C0();
      }

      sub_271847D5C(qword_280878B78, v12, 2);
    }

    v6 = *a1;
    a4 = v8;
  }

  v10 = a4 > 1 && v6 > 0;
  if (v10)
  {
    (*(*a2 + 16))(a2);
    goto LABEL_14;
  }

  if (a4 < 2)
  {
LABEL_17:
    sub_2714355D4(&v14, a2, a3);
  }

LABEL_14:
  (*(*a2 + 128))(a2, a3);
  (*(*a2 + 128))(a2, a3 + 4);
  (*(*a2 + 128))(a2, a3 + 8);
  (*(*a2 + 128))(a2, a3 + 12);
  (*(*a2 + 104))(a2, a3 + 16);
  result = (*(*a2 + 104))(a2, a3 + 20);
  if (v10)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_271435394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714353C4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 7;
  strcpy(v9, "float32");
  sub_271851C68("cv3d::kit::cam::PixelOrigin::Corner]", 35, &v11);
  sub_271851C68("2U]", 2, &v12);
  sub_2711309E8(__p, v9, 3uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_11:
      if ((v10 & 0x80000000) == 0)
      {
        return;
      }

LABEL_15:
      operator delete(v9[0]);
      return;
    }
  }

  else if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  if (v10 < 0)
  {
    goto LABEL_15;
  }
}

void sub_27143553C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_27137F4D0(&a10);
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a18 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a13);
      _Unwind_Resume(a1);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_2714355D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  operator new();
}

void sub_27143597C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

void sub_271435990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715CA6A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714359A4(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_17;
    }

    v8 = a4;
    v13 = 2;
    (*(*a2 + 104))(a2, &v13);
    if (v13 >= 3)
    {
      v12 = v13;
      if ((atomic_load_explicit(&qword_280878BB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878BB0))
      {
        sub_271435C34();
      }

      sub_271847D5C(qword_280878B98, v12, 2);
    }

    v6 = *a1;
    a4 = v8;
  }

  v10 = a4 > 1 && v6 > 0;
  if (v10)
  {
    (*(*a2 + 16))(a2);
    goto LABEL_14;
  }

  if (a4 < 2)
  {
LABEL_17:
    sub_271435F48(&v14, a2, a3);
  }

LABEL_14:
  (*(*a2 + 136))(a2, a3);
  (*(*a2 + 136))(a2, a3 + 8);
  (*(*a2 + 136))(a2, a3 + 16);
  (*(*a2 + 136))(a2, a3 + 24);
  (*(*a2 + 104))(a2, a3 + 32);
  result = (*(*a2 + 104))(a2, a3 + 36);
  if (v10)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_271435D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271435D38(const void **a1@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 7;
  strcpy(v9, "float64");
  sub_271851C68("cv3d::kit::cam::PixelOrigin::Corner]", 35, &v11);
  sub_271851C68("2U]", 2, &v12);
  sub_2711309E8(__p, v9, 3uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_11:
      if ((v10 & 0x80000000) == 0)
      {
        return;
      }

LABEL_15:
      operator delete(v9[0]);
      return;
    }
  }

  else if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  if (v10 < 0)
  {
    goto LABEL_15;
  }
}

void sub_271435EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_27137F4D0(&a10);
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a18 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a13);
      _Unwind_Resume(a1);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_271435F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  operator new();
}

void sub_271436310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

void sub_271436324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173EA70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271436338(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_8;
    }

    v8 = a4;
    v12 = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_280878BD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878BD0))
      {
        sub_271436908();
      }

      sub_271847D5C(qword_280878BB8, v11, 2);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    (*(*a2 + 128))(a2, a3);
    (*(*a2 + 128))(a2, a3 + 4);
    (*(*a2 + 128))(a2, a3 + 8);
    (*(*a2 + 128))(a2, a3 + 12);
    (*(*a2 + 128))(a2, a3 + 16);
    (*(*a2 + 128))(a2, a3 + 20);
    (*(*a2 + 128))(a2, a3 + 24);
    (*(*a2 + 128))(a2, a3 + 28);
    (*(*a2 + 128))(a2, a3 + 32);
    (*(*a2 + 104))(a2, a3 + 36);
    (*(*a2 + 104))(a2, a3 + 40);
    return (*(*a2 + 24))(a2);
  }

LABEL_8:
  if (a4 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a4;
  }

  return sub_2714366C0(a2, a3, v10);
}

uint64_t sub_2714366C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 2)
  {
    sub_271436A0C(&v7, a1, a2);
  }

  (*(*a1 + 128))(a1, a2);
  (*(*a1 + 128))(a1, a2 + 4);
  (*(*a1 + 128))(a1, a2 + 8);
  (*(*a1 + 128))(a1, a2 + 12);
  (*(*a1 + 128))(a1, a2 + 16);
  (*(*a1 + 128))(a1, a2 + 20);
  (*(*a1 + 128))(a1, a2 + 24);
  (*(*a1 + 128))(a1, a2 + 28);
  (*(*a1 + 128))(a1, a2 + 32);
  (*(*a1 + 104))(a1, a2 + 36);
  v5 = *(*a1 + 104);

  return v5(a1, a2 + 40);
}

void sub_2714369DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271436A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  memset(v4, 0, sizeof(v4));
  operator new();
}

void sub_271436EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_271436ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271436EE4(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_8;
    }

    v8 = a4;
    v12 = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_280878BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878BF0))
      {
        sub_2714374B4();
      }

      sub_271847D5C(qword_280878BD8, v11, 2);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    (*(*a2 + 136))(a2, a3);
    (*(*a2 + 136))(a2, a3 + 8);
    (*(*a2 + 136))(a2, a3 + 16);
    (*(*a2 + 136))(a2, a3 + 24);
    (*(*a2 + 136))(a2, a3 + 32);
    (*(*a2 + 136))(a2, a3 + 40);
    (*(*a2 + 136))(a2, a3 + 48);
    (*(*a2 + 136))(a2, a3 + 56);
    (*(*a2 + 136))(a2, a3 + 64);
    (*(*a2 + 104))(a2, a3 + 72);
    (*(*a2 + 104))(a2, a3 + 76);
    return (*(*a2 + 24))(a2);
  }

LABEL_8:
  if (a4 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a4;
  }

  return sub_27143726C(a2, a3, v10);
}

uint64_t sub_27143726C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 2)
  {
    sub_2714375B8(&v7, a1, a2);
  }

  (*(*a1 + 136))(a1, a2);
  (*(*a1 + 136))(a1, a2 + 8);
  (*(*a1 + 136))(a1, a2 + 16);
  (*(*a1 + 136))(a1, a2 + 24);
  (*(*a1 + 136))(a1, a2 + 32);
  (*(*a1 + 136))(a1, a2 + 40);
  (*(*a1 + 136))(a1, a2 + 48);
  (*(*a1 + 136))(a1, a2 + 56);
  (*(*a1 + 136))(a1, a2 + 64);
  (*(*a1 + 104))(a1, a2 + 72);
  v5 = *(*a1 + 104);

  return v5(a1, a2 + 76);
}

void sub_271437588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714375B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  operator new();
}

void sub_271437AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_271437AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271437ACC(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_8;
    }

    v8 = a4;
    v12 = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_280878C10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878C10))
      {
        sub_27143809C();
      }

      sub_271847D5C(qword_280878BF8, v11, 2);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    (*(*a2 + 128))(a2, a3);
    (*(*a2 + 128))(a2, a3 + 4);
    (*(*a2 + 128))(a2, a3 + 8);
    (*(*a2 + 128))(a2, a3 + 12);
    (*(*a2 + 128))(a2, a3 + 16);
    (*(*a2 + 128))(a2, a3 + 20);
    (*(*a2 + 128))(a2, a3 + 24);
    (*(*a2 + 128))(a2, a3 + 28);
    (*(*a2 + 128))(a2, a3 + 32);
    (*(*a2 + 104))(a2, a3 + 36);
    (*(*a2 + 104))(a2, a3 + 40);
    return (*(*a2 + 24))(a2);
  }

LABEL_8:
  if (a4 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a4;
  }

  return sub_271437E54(a2, a3, v10);
}

uint64_t sub_271437E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 2)
  {
    sub_2714381A0(&v7, a1, a2);
  }

  (*(*a1 + 128))(a1, a2);
  (*(*a1 + 128))(a1, a2 + 4);
  (*(*a1 + 128))(a1, a2 + 8);
  (*(*a1 + 128))(a1, a2 + 12);
  (*(*a1 + 128))(a1, a2 + 16);
  (*(*a1 + 128))(a1, a2 + 20);
  (*(*a1 + 128))(a1, a2 + 24);
  (*(*a1 + 128))(a1, a2 + 28);
  (*(*a1 + 128))(a1, a2 + 32);
  (*(*a1 + 104))(a1, a2 + 36);
  v5 = *(*a1 + 104);

  return v5(a1, a2 + 40);
}

void sub_271438170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714381A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  memset(v4, 0, sizeof(v4));
  operator new();
}

void sub_271438650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

void sub_271438664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27173C6A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271438678(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_8;
    }

    v8 = a4;
    v12 = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_280878C30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878C30))
      {
        sub_271438C48();
      }

      sub_271847D5C(qword_280878C18, v11, 2);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    (*(*a2 + 136))(a2, a3);
    (*(*a2 + 136))(a2, a3 + 8);
    (*(*a2 + 136))(a2, a3 + 16);
    (*(*a2 + 136))(a2, a3 + 24);
    (*(*a2 + 136))(a2, a3 + 32);
    (*(*a2 + 136))(a2, a3 + 40);
    (*(*a2 + 136))(a2, a3 + 48);
    (*(*a2 + 136))(a2, a3 + 56);
    (*(*a2 + 136))(a2, a3 + 64);
    (*(*a2 + 104))(a2, a3 + 72);
    (*(*a2 + 104))(a2, a3 + 76);
    return (*(*a2 + 24))(a2);
  }

LABEL_8:
  if (a4 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a4;
  }

  return sub_271438A00(a2, a3, v10);
}

uint64_t sub_271438A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 2)
  {
    sub_271438D4C(&v7, a1, a2);
  }

  (*(*a1 + 136))(a1, a2);
  (*(*a1 + 136))(a1, a2 + 8);
  (*(*a1 + 136))(a1, a2 + 16);
  (*(*a1 + 136))(a1, a2 + 24);
  (*(*a1 + 136))(a1, a2 + 32);
  (*(*a1 + 136))(a1, a2 + 40);
  (*(*a1 + 136))(a1, a2 + 48);
  (*(*a1 + 136))(a1, a2 + 56);
  (*(*a1 + 136))(a1, a2 + 64);
  (*(*a1 + 104))(a1, a2 + 72);
  v5 = *(*a1 + 104);

  return v5(a1, a2 + 76);
}

void sub_271438D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271438D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  operator new();
}

void sub_271439238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_27143924C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27173C824(va);
  _Unwind_Resume(a1);
}

void sub_271439260(uint64_t *a1, uint64_t a2)
{
  v45 = a2;
  sub_271433BB0(a1, &v45);
  sub_271738768(a2);
  v4 = *a2;
  if (*a2 > 99)
  {
    if (v4 > 109)
    {
      if (v4 == 110)
      {
        v41 = *(a2 + 8);
        v40 = a2 + 8;
        v39 = v41;
        if (!v41)
        {
          goto LABEL_45;
        }

        v42 = v39(3, v40, 0, &unk_28811C9E0, &unk_271891D40);
        if (!v42)
        {
          goto LABEL_45;
        }

        v43 = *a1;
        v45 = a1[1];
        v44 = v45;
        v48 = 2;
        (*(v43 + 104))(a1, &v48);
        if (v44 < 1)
        {
          sub_271437E54(a1, v42, v48);
        }

        else
        {
          sub_271437ACC(&v45, a1, v42, v48);
        }
      }

      else if (v4 == 111)
      {
        v21 = *(a2 + 8);
        v20 = a2 + 8;
        v19 = v21;
        if (!v21)
        {
          goto LABEL_45;
        }

        v22 = v19(3, v20, 0, &unk_28811CA10, &unk_271891E18);
        if (!v22)
        {
          goto LABEL_45;
        }

        v23 = *a1;
        v45 = a1[1];
        v24 = v45;
        v48 = 2;
        (*(v23 + 104))(a1, &v48);
        if (v24 < 1)
        {
          sub_271438A00(a1, v22, v48);
        }

        else
        {
          sub_271438678(&v45, a1, v22, v48);
        }
      }
    }

    else if (v4 == 100)
    {
      v31 = *(a2 + 8);
      v30 = a2 + 8;
      v29 = v31;
      if (!v31)
      {
        goto LABEL_45;
      }

      v32 = v29(3, v30, 0, &unk_28811C9C8, &unk_271891B90);
      if (!v32)
      {
        goto LABEL_45;
      }

      v33 = *a1;
      v45 = a1[1];
      v34 = v45;
      v48 = 2;
      (*(v33 + 104))(a1, &v48);
      if (v34 < 1)
      {
        sub_2714366C0(a1, v32, v48);
      }

      else
      {
        sub_271436338(&v45, a1, v32, v48);
      }
    }

    else if (v4 == 101)
    {
      v11 = *(a2 + 8);
      v10 = a2 + 8;
      v9 = v11;
      if (!v11)
      {
        goto LABEL_45;
      }

      v12 = v9(3, v10, 0, &unk_28811C9F8, &unk_271891C68);
      if (!v12)
      {
        goto LABEL_45;
      }

      v13 = *a1;
      v45 = a1[1];
      v14 = v45;
      v48 = 2;
      (*(v13 + 104))(a1, &v48);
      if (v14 < 1)
      {
        sub_27143726C(a1, v12, v48);
      }

      else
      {
        sub_271436EE4(&v45, a1, v12, v48);
      }
    }
  }

  else
  {
    if (v4 <= 9)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          return;
        }

        v7 = *(a2 + 8);
        v6 = a2 + 8;
        v5 = v7;
        if (v7)
        {
          v8 = v5(3, v6, 0, &unk_28811CA58, &unk_271891910);
          if (v8)
          {
            v45 = "camera";
            v46 = 6;
            v47 = v8;
            sub_271433628(a1, &v45);
            return;
          }
        }
      }

      else
      {
        v27 = *(a2 + 8);
        v26 = a2 + 8;
        v25 = v27;
        if (v27)
        {
          v28 = v25(3, v26, 0, &unk_28811CA28, &unk_27189183C);
          if (v28)
          {
            v45 = "camera";
            v46 = 6;
            v47 = v28;
            sub_271433450(a1, &v45);
            return;
          }
        }
      }

LABEL_45:
      sub_27141B114();
    }

    if (v4 == 10)
    {
      v37 = *(a2 + 8);
      v36 = a2 + 8;
      v35 = v37;
      if (v37)
      {
        v38 = v35(3, v36, 0, &unk_28811CA40, &unk_2718919E4);
        if (v38)
        {
          v45 = "camera";
          v46 = 6;
          v47 = v38;
          sub_271433800(a1, &v45);
          return;
        }
      }

      goto LABEL_45;
    }

    if (v4 == 11)
    {
      v17 = *(a2 + 8);
      v16 = a2 + 8;
      v15 = v17;
      if (v17)
      {
        v18 = v15(3, v16, 0, &unk_28811CA70, &unk_271891AB8);
        if (v18)
        {
          v45 = "camera";
          v46 = 6;
          v47 = v18;
          sub_2714339D8(a1, &v45);
          return;
        }
      }

      goto LABEL_45;
    }
  }
}

void sub_271439780(void *a1, __int128 *a2, __int128 *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  *a2 = 0uLL;
  sub_27113523C(&v3, a3 + 1);
  operator new();
}

void sub_271439BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void *);
  (*(*v3 + 8))(v3, a2);
  sub_2711F7EF0(va);
  sub_271399200(va1);
  _Unwind_Resume(a1);
}

void sub_271439BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271399200(va);
  _Unwind_Resume(a1);
}

void sub_271439C1C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_27182791C(a2 + 48, (a2 + 40));
  v5 = sub_2718289B0(a2);
  *(a2 + 40) = v5;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v5 < 2u)
  {
    *(a2 + 72) = "version";
    *(a2 + 80) = 7;
    *(a2 + 88) = 1;
    if (*"version" == 1936876918 && *"sion" == 1852795251)
    {
      *(a2 + 96) = 2;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
      v10 = a3[1];
      v13 = *a3;
      v14 = v10;
      if (!v10)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  LOBYTE(v13) = 6;
  v14 = 2;
  v7 = sub_2718289B0(a2);
  v8 = *v7;
  *v7 = 6;
  LOBYTE(v13) = v8;
  v9 = v7[1];
  v7[1] = v14;
  v14 = v9;
  sub_2715CC40C(&v14, v8);
  v10 = a3[1];
  v13 = *a3;
  v14 = v10;
  if (v10)
  {
LABEL_9:
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_10:
  sub_271439DE0(a2, &v13, 2u);
  v11 = v14;
  if (v14 && !atomic_fetch_add((v14 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(a2 + 56);
  *(a2 + 40) = *(v12 - 8);
  *(a2 + 56) = v12 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }
}

void sub_271439DE0(uint64_t a1, void *a2, unsigned int a3)
{
  if (a3 > 2)
  {
    v9 = sub_2715CA638(a2);
    sub_2715D17E4(v10, v9);
  }

  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "dictionary";
    *(a1 + 80) = 10;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = sub_2715CA5C8(a2);
  sub_2715D5748(v10, *v5);
  v6 = sub_2718289B0(a1);
  v7 = *v6;
  *v6 = v10[0];
  v10[0] = v7;
  v8 = v6[1];
  v6[1] = v11;
  v11 = v8;
  sub_2715CC40C(&v11, v7);
}

void sub_271439F30(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = "dictionary";
    *(a1 + 80) = 10;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_271150BA0(&v3, a2);
}

void sub_27143A07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2715CC40C((v4 + 8), v3);
  sub_27181A92C(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143A0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143A0B8(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = sub_2715CA638(v4);
  sub_2715D17E4(v5, v3);
}

void sub_27143A1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27112F828(va);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27143A1EC(uint64_t a1, unint64_t a2)
{
  v30 = 0u;
  memset(v29, 0, sizeof(v29));
  sub_2715D1938(&v25, a2);
  v3 = v25;
  *&v29[0] = v25;
  *(v29 + 8) = v26;
  v4 = v27;
  *(&v29[1] + 1) = v27;
  v24 = v28;
  v30 = v28;
  v5 = v26;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 3);
  v7 = *(a1 + 24);
  if (*(v7 + 40) == 1)
  {
    v25 = (v7 + 16);
    sub_271846AEC(&v25, v6);
  }

  else
  {
    sub_271846E00((v7 + 8), v6);
  }

  v8 = *(a1 + 24);
  if (*(v8 + 40) == 1)
  {
    v25 = (v8 + 16);
    if (v5 != v3)
    {
      v9 = v3;
      do
      {
        sub_271847238(&v25, v9);
        v9 += 3;
      }

      while (v9 != v5);
    }
  }

  else if (v5 != v3)
  {
    v10 = v3;
    do
    {
      sub_271847654((v8 + 8), v10);
      v10 += 3;
    }

    while (v10 != v5);
  }

  v11 = v24;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v24 - v4);
  v13 = *(a1 + 24);
  if (*(v13 + 40) == 1)
  {
    v25 = (v13 + 16);
    sub_271846AEC(&v25, v12);
  }

  else
  {
    sub_271846E00((v13 + 8), v12);
  }

  if (v4 == v24)
  {
    if (!v4)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v14 = v4;
  do
  {
    v15 = *(a1 + 24);
    if (*(v15 + 40) == 1)
    {
      v25 = (v15 + 16);
      sub_2718460EC(&v25, 2u);
    }

    else
    {
      sub_27184636C(&v25, (v15 + 8), 2u);
    }

    sub_271840ADC(*(a1 + 24));
    sub_27143A654(a1, v14);
    v16 = *(a1 + 24);
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

    v14 += 3;
  }

  while (v14 != v24);
  if (v4)
  {
    do
    {
      v21 = *(v11 - 1);
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v11 -= 3;
    }

    while (v11 != v4);
    v4 = *(&v29[1] + 1);
    v3 = *&v29[0];
LABEL_34:
    operator delete(v4);
  }

LABEL_35:
  if (v3)
  {
    v22 = *(&v29[0] + 1);
    while (v22 != v3)
    {
      v23 = *(v22 - 1);
      v22 -= 3;
      if (v23 < 0)
      {
        operator delete(*v22);
      }
    }

    operator delete(v3);
  }
}

void sub_27143A4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143A4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143A508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143A51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143A530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143A544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void ***sub_27143A558(void ***a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 3;
      }

      while (v3 != v2);
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  v6 = *a1;
  if (*a1)
  {
    v7 = a1[1];
    v8 = *a1;
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *a1;
    }

    a1[1] = v6;
    operator delete(v8);
  }

  return a1;
}

void sub_27143A654(uint64_t a1, const void **a2)
{
  v4 = *a2;
  LOWORD(v13) = *a2;
  v5 = *(a1 + 24);
  if (*(v5 + 40) != 1)
  {
    if (v4 > 0x7F)
    {
      if (v4 > 0xFF)
      {
        __p.__r_.__value_.__s.__data_[0] = -51;
        *(&__p.__r_.__value_.__l.__data_ + 1) = __rev16(v4);
        std::ostream::write();
        v6 = *a2;
        if (v6 <= 1)
        {
          goto LABEL_9;
        }
      }

      else
      {
        __p.__r_.__value_.__s.__data_[0] = -52;
        __p.__r_.__value_.__s.__data_[1] = v4;
        std::ostream::write();
        v6 = *a2;
        if (v6 <= 1)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = v4;
      std::ostream::write();
      v6 = *a2;
      if (v6 <= 1)
      {
        goto LABEL_9;
      }
    }

LABEL_3:
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        sub_27143B290(a2 + 1);
      }

      if (v6 == 4)
      {
        sub_27143B4FC(a2 + 1);
      }

      goto LABEL_34;
    }

    v8 = a2[1];
    if (v8 && (TypeID = CFBooleanGetTypeID(), CFGetTypeID(v8) == TypeID))
    {
      v10 = CFBooleanGetValue(v8) != 0;
      LOWORD(v13) = v10 | 0x100;
      v11 = *(a1 + 24);
      if (*(v11 + 40) != 1)
      {
LABEL_19:
        if (v10)
        {
          v12 = -61;
        }

        else
        {
          v12 = -62;
        }

        __p.__r_.__value_.__s.__data_[0] = v12;
        std::ostream::write();
        return;
      }
    }

    else
    {
      v10 = 0;
      LOWORD(v13) = 0;
      v11 = *(a1 + 24);
      if (*(v11 + 40) != 1)
      {
        goto LABEL_19;
      }
    }

    __p.__r_.__value_.__r.__words[0] = v11 + 16;
    sub_2718470CC(&__p, &v13);
    return;
  }

  __p.__r_.__value_.__r.__words[0] = v5 + 16;
  sub_2718459EC(&__p, &v13);
  v6 = *a2;
  if (v6 > 1)
  {
    goto LABEL_3;
  }

LABEL_9:
  if (!v6)
  {
    sub_27143B19C(a2 + 1);
  }

  if (v6 != 1)
  {
LABEL_34:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 281, "", 0, "invalid value type identifier", 0x1DuLL, sub_271852CA8);
    abort();
  }

  sub_2718098EC(a2[1], &__p);
  v7 = *(a1 + 24);
  if (*(v7 + 40) == 1)
  {
    v13 = (v7 + 16);
    sub_271847238(&v13, &__p);
  }

  else
  {
    sub_271847654((v7 + 8), &__p);
  }

  if (v15 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_27143B060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112F828(v11 - 80);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143B07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27112F828(va);
  sub_27112F828(v15 - 80);
  _Unwind_Resume(a1);
}

void sub_27143B098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27143B19C(const void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    TypeID = CFNumberGetTypeID();
    if (CFGetTypeID(v2) == TypeID)
    {
      CFRetain(v2);
      sub_27143B84C(&v4, v2);
    }
  }

  sub_27143B84C(&v4, 0);
}

void sub_27143B290(const void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    TypeID = CFArrayGetTypeID();
    if (CFGetTypeID(v2) == TypeID)
    {
      CFRetain(v2);
      sub_27143BCB8(&v4, v2);
    }
  }

  sub_27143BCB8(&v4, 0);
}

void sub_27143B384(uint64_t *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_271135560();
  }
}

void sub_27143B4FC(const void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v2) == TypeID)
    {
      CFRetain(v2);
      sub_271150CCC(&v4, v2);
    }
  }

  sub_271150CCC(&v4, 0);
}

void sub_27143B808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27143BA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_27143BAD0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27143BB08(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_27143BB2C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_27143BB8C(void *a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  sub_27143B84C(&v4, v3);
}

void sub_27143BEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_27143BF3C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27143BF74(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_27143BF98(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27143BFF8(unint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = 24 * v2 + 24;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *(v12 + 8) = *(v11 + 1);
      v11[1] = 0;
      v11[2] = 0;
      v11 += 3;
      v12 += 24;
    }

    while (v11 != v9);
    do
    {
      v13 = v8[2];
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v8 += 3;
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

void sub_27143C19C(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  operator new();
}

void sub_27143C210(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CFRelease(v1);
  }

  __cxa_rethrow();
}

void sub_27143C240(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27143C278(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_27143C29C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPKvEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPKvEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPKvEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPKvEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_27143C2FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_2715DF0F0(a2 + 48, (a2 + 40));
  v5 = sub_27182815C(a2);
  *(a2 + 40) = v5;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v5 < 2u)
  {
    *(a2 + 72) = "version";
    *(a2 + 80) = 7;
    *(a2 + 88) = 1;
    if (*"version" == 1936876918 && *"sion" == 1852795251)
    {
      *(a2 + 96) = 2;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
      v10 = a3[1];
      v13 = *a3;
      v14 = v10;
      if (!v10)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  LOBYTE(v13) = 6;
  v14 = 2;
  v7 = sub_27182815C(a2);
  v8 = *v7;
  *v7 = 6;
  LOBYTE(v13) = v8;
  v9 = v7[1];
  v7[1] = v14;
  v14 = v9;
  sub_2715CA870(&v14, v8);
  v10 = a3[1];
  v13 = *a3;
  v14 = v10;
  if (v10)
  {
LABEL_9:
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_10:
  sub_27143C4C0(a2, &v13, 2u);
  v11 = v14;
  if (v14 && !atomic_fetch_add((v14 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(a2 + 56);
  *(a2 + 40) = *(v12 - 8);
  *(a2 + 56) = v12 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }
}

void sub_27143C4C0(uint64_t a1, void *a2, unsigned int a3)
{
  if (a3 > 2)
  {
    v9 = sub_2715CA638(a2);
    sub_2715D17E4(v10, v9);
  }

  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "dictionary";
    *(a1 + 80) = 10;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = sub_2715CA558(a2);
  sub_2715D7FA4(v10, *v5);
  v6 = sub_27182815C(a1);
  v7 = *v6;
  *v6 = v10[0];
  v10[0] = v7;
  v8 = v6[1];
  v6[1] = v11;
  v11 = v8;
  sub_2715CA870(&v11, v7);
}

void sub_27143C610(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = "dictionary";
    *(a1 + 80) = 10;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_271150BA0(&v3, a2);
}

void sub_27143C75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2715CA870((v4 + 8), v3);
  sub_27181A638(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143C784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143C798(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = sub_2715CA638(v4);
  sub_2715D17E4(v5, v3);
}

void sub_27143C89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27112F828(va);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27143C8CC(uint64_t a1, unint64_t a2)
{
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  sub_2715D1938(&v23, a2);
  v3 = v23;
  *&v27[0] = v23;
  v4 = v24;
  *(v27 + 8) = v24;
  v5 = v25;
  *(&v27[1] + 1) = v25;
  v22 = v26;
  v28 = v26;
  if (*(a1 + 40))
  {
    v21 = v24;
    v6 = *(a1 + 24);
    LOBYTE(v23) = *(a1 + 32);
    sub_271120E64(v6, &v23, 1);
    v4 = v21;
  }

  v7 = v4;
  MEMORY[0x2743BE850](*(a1 + 24), 0xAAAAAAAAAAAAAAABLL * (v4 - v3));
  v8 = *(a1 + 40) + 1;
  *(a1 + 40) = v8;
  if (v7 != v3)
  {
    v9 = v3;
    do
    {
      sub_271839128(a1, v9);
      v9 += 24;
    }

    while (v9 != v7);
    v8 = *(a1 + 40);
  }

  if (v8)
  {
    v10 = *(a1 + 24);
    LOBYTE(v23) = *(a1 + 32);
    sub_271120E64(v10, &v23, 1);
  }

  v11 = v22;
  MEMORY[0x2743BE850](*(a1 + 24), 0xAAAAAAAAAAAAAAABLL * (v22 - v5));
  v12 = *(a1 + 40) + 1;
  *(a1 + 40) = v12;
  if (v22 == v5)
  {
    if (!v5)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v13 = v5;
  do
  {
    if (v12)
    {
      v14 = *(a1 + 24);
      LOBYTE(v23) = *(a1 + 32);
      sub_271120E64(v14, &v23, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), 2);
    ++*(a1 + 40);
    sub_27143CBB0(a1, v13);
    v15 = *(a1 + 34);
    if (*(a1 + 40))
    {
      v16 = *(a1 + 24);
      LOBYTE(v23) = *(a1 + 32);
      sub_271120E64(v16, &v23, 1);
    }

    v17 = *(a1 + 24);
    LOBYTE(v23) = v15;
    sub_271120E64(v17, &v23, 1);
    v12 = *(a1 + 40) + 1;
    *(a1 + 40) = v12;
    v13 += 3;
  }

  while (v13 != v22);
  if (v5)
  {
    do
    {
      v18 = *(v11 - 1);
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      v11 -= 3;
    }

    while (v11 != v5);
    v5 = *(&v27[1] + 1);
    v3 = *&v27[0];
LABEL_24:
    operator delete(v5);
  }

LABEL_25:
  if (v3)
  {
    v19 = *(&v27[0] + 1);
    while (v19 != v3)
    {
      v20 = *(v19 - 1);
      v19 -= 3;
      if (v20 < 0)
      {
        operator delete(*v19);
      }
    }

    operator delete(v3);
  }
}

void sub_27143CB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143CB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143CB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143CB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143CB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143CBB0(uint64_t a1, const void **a2)
{
  v4 = *a2;
  if (*(a1 + 40))
  {
    v5 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_271120E64(v5, &__p, 1);
  }

  MEMORY[0x2743BE830](*(a1 + 24), v4);
  ++*(a1 + 40);
  v6 = *a2;
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        sub_27143B290(a2 + 1);
      }

      if (v6 == 4)
      {
        sub_27143B4FC(a2 + 1);
      }

      goto LABEL_24;
    }

    v7 = a2[1];
    if (v7)
    {
      TypeID = CFBooleanGetTypeID();
      if (CFGetTypeID(v7) != TypeID)
      {
        v7 = 0;
        if (!*(a1 + 40))
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v7 = CFBooleanGetValue(v7) != 0;
    }

    if (!*(a1 + 40))
    {
LABEL_18:
      MEMORY[0x2743BE7B0](*(a1 + 24), v7);
      ++*(a1 + 40);
      return;
    }

LABEL_17:
    v9 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_271120E64(v9, &__p, 1);
    goto LABEL_18;
  }

  if (!*a2)
  {
    sub_27143B19C(a2 + 1);
  }

  if (v6 != 1)
  {
LABEL_24:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 281, "", 0, "invalid value type identifier", 0x1DuLL, sub_271852CA8);
    abort();
  }

  sub_2718098EC(a2[1], &__p);
  sub_271839128(a1, &__p);
  if (v11 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_27143D3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112F828(v11 - 80);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143D3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27112F828(va);
  sub_27112F828(v15 - 80);
  _Unwind_Resume(a1);
}

void sub_27143D3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143D40C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27143D4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  sub_2712C9E78(va2);
  sub_27112F828(va);
  sub_271392A1C(va3);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27143D4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_271392A1C(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143D504(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = sub_2715CA638(v4);
  sub_2715D17E4(v5, v3);
}

void sub_27143D608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27112F828(va);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27143D638(uint64_t a1, unint64_t a2)
{
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  sub_2715D1938(&v18, a2);
  v3 = v18;
  *&v22[0] = v18;
  *(v22 + 8) = v19;
  v4 = v20;
  *(&v22[1] + 1) = v20;
  v17 = v21;
  v23 = v21;
  v5 = v19;
  __src = 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3);
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v25, 8);
  if (v5 != v3)
  {
    v6 = v3;
    do
    {
      v7 = *(v6 + 23);
      if ((v7 & 0x80u) != 0)
      {
        v7 = v6[1];
      }

      v18 = v7;
      sub_27173318C((a1 + 24), *(a1 + 32), &v18, &v19, 8);
      v8 = *(v6 + 23);
      if (v8 >= 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = *v6;
      }

      if (v8 >= 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v6[1];
      }

      sub_27173318C((a1 + 24), *(a1 + 32), v9, &v9[v10], v10);
      v6 += 3;
    }

    while (v6 != v5);
  }

  v11 = v17;
  v18 = 0xAAAAAAAAAAAAAAABLL * (v17 - v4);
  sub_27173318C((a1 + 24), *(a1 + 32), &v18, &v19, 8);
  if (v4 == v17)
  {
    if (!v4)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v12 = v4;
  do
  {
    LODWORD(__src) = 2;
    sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 4, 4);
    sub_2717312C0(a1);
    sub_27143D924(a1, v12);
    v13 = *(*(a1 + 56) - 8) + *(a1 + 24);
    *(v13 + 10) = *(a1 + 32) - v13 - 18;
    *(a1 + 56) -= 8;
    v12 += 3;
  }

  while (v12 != v17);
  if (v4)
  {
    do
    {
      v14 = *(v11 - 1);
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v11 -= 3;
    }

    while (v11 != v4);
    v4 = *(&v22[1] + 1);
    v3 = *&v22[0];
LABEL_23:
    operator delete(v4);
  }

LABEL_24:
  if (v3)
  {
    v15 = *(&v22[0] + 1);
    while (v15 != v3)
    {
      v16 = *(v15 - 1);
      v15 -= 3;
      if (v16 < 0)
      {
        operator delete(*v15);
      }
    }

    operator delete(v3);
  }
}

void sub_27143D8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143D8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143D8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143D8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143D910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143D924(uint64_t a1, const void **a2)
{
  LOWORD(__p.__r_.__value_.__l.__data_) = *a2;
  sub_27173318C((a1 + 24), *(a1 + 32), &__p, &__p.__r_.__value_.__s.__data_[2], 2);
  v4 = *a2;
  if (v4 <= 1)
  {
    if (!*a2)
    {
      sub_27143B19C(a2 + 1);
    }

    if (v4 != 1)
    {
LABEL_27:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 281, "", 0, "invalid value type identifier", 0x1DuLL, sub_271852CA8);
      abort();
    }

    sub_2718098EC(a2[1], &__p);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    __src = size;
    sub_27173318C((a1 + 24), *(a1 + 32), &__src, v13, 8);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v7 = __p.__r_.__value_.__l.__size_;
    }

    sub_27173318C((a1 + 24), *(a1 + 32), p_p, p_p + v7, v7);
    if (v15 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        sub_27143B290(a2 + 1);
      }

      if (v4 == 4)
      {
        sub_27143B4FC(a2 + 1);
      }

      goto LABEL_27;
    }

    v8 = a2[1];
    if (v8 && (TypeID = CFBooleanGetTypeID(), CFGetTypeID(v8) == TypeID))
    {
      v10 = CFBooleanGetValue(v8) != 0;
      v11 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = v10 | (v11 << 8);
    sub_27173318C((a1 + 24), *(a1 + 32), &__p, &__p.__r_.__value_.__s.__data_[1], 1);
  }
}

void sub_27143E0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112F828(v11 - 80);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143E108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27112F828(va);
  sub_27112F828(v15 - 80);
  _Unwind_Resume(a1);
}

void sub_27143E124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143E14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  sub_27112F828(v18 - 80);
  sub_27112F828(&a14);
  _Unwind_Resume(a1);
}

void sub_27143E178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27143E1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  sub_2712C9E78(va2);
  sub_27112F828(va);
  sub_271392A1C(va3);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27143E210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_271392A1C(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143E230(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = sub_2715CA638(v4);
  sub_2715D17E4(v5, v3);
}

void sub_27143E334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27112F828(va);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27143E364(uint64_t *a1, unint64_t a2)
{
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  sub_2715D1938(&v13, a2);
  v3 = v13;
  *&v17[0] = v13;
  *(v17 + 8) = v14;
  v4 = v15;
  *(&v17[1] + 1) = v15;
  v12 = v16;
  v18 = v16;
  v5 = *a1;
  v6 = v14;
  v13 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3);
  (*(v5 + 120))(a1, &v13);
  if (v6 != v3)
  {
    v7 = v3;
    do
    {
      (*(*a1 + 144))(a1, v7);
      v7 += 12;
    }

    while (v7 != v6);
  }

  v8 = v12;
  v19 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v4) >> 3);
  (*(*a1 + 120))(a1, &v19);
  v13 = v4;
  *&v14 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v4) >> 3);
  sub_27143E5B4(a1, &v13);
  if (v4)
  {
    if (v12 != v4)
    {
      do
      {
        v9 = *(v8 - 1);
        if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        v8 -= 12;
      }

      while (v8 != v4);
      v4 = *(&v17[1] + 1);
      v3 = *&v17[0];
    }

    operator delete(v4);
  }

  if (v3)
  {
    v10 = *(&v17[0] + 1);
    while (v10 != v3)
    {
      v11 = *(v10 - 1);
      v10 -= 3;
      if (v11 < 0)
      {
        operator delete(*v10);
      }
    }

    operator delete(v3);
  }
}

void sub_27143E564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143E578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143E58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143E5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27143A558(va);
  _Unwind_Resume(a1);
}

void sub_27143E5B4(_DWORD *result, unsigned __int16 **a2)
{
  v2 = a2[1];
  if (v2)
  {
    v4 = *a2;
    v5 = 24 * v2;
    do
    {
      while (1)
      {
        v6 = result[2];
        v8 = 2;
        (*(*result + 104))(result, &v8);
        if (v6 >= 1)
        {
          break;
        }

        sub_27143E854(result, v4);
        v4 += 12;
        v5 -= 24;
        if (!v5)
        {
          return;
        }
      }

      if (v6 == 2)
      {
        v7 = 2;
        (*(*result + 104))(result, &v7);
      }

      (*(*result + 16))(result);
      sub_27143E854(result, v4);
      (*(*result + 24))(result);
      v4 += 12;
      v5 -= 24;
    }

    while (v5);
  }
}

void sub_27143E710(int *a1, _DWORD *a2, unsigned __int16 *a3)
{
  v6 = 2;
  (*(*a2 + 104))(a2, &v6);
  if (*a1 < 1 || *a1 == 2 && (v7 = 2, (*(*a2 + 104))(a2, &v7), *a1 <= 0))
  {
    sub_27143E854(a2, a3);
  }

  else
  {
    (*(*a2 + 16))(a2);
    sub_27143E854(a2, a3);
    (*(*a2 + 24))(a2);
  }
}

void sub_27143E854(_DWORD *a1, unsigned __int16 *a2)
{
  sub_27143F1DC(a1, a2);
  v4 = *a2;
  if (v4 <= 1)
  {
    if (!*a2)
    {
      sub_27143B19C(a2 + 1);
    }

    if (v4 != 1)
    {
LABEL_19:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 281, "", 0, "invalid value type identifier", 0x1DuLL, sub_271852CA8);
      abort();
    }

    sub_2718098EC(*(a2 + 1), &__p);
    (*(*a1 + 144))(a1, &__p);
    if (v10 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        sub_27143B290(a2 + 1);
      }

      if (v4 == 4)
      {
        sub_27143B4FC(a2 + 1);
      }

      goto LABEL_19;
    }

    v5 = *(a2 + 1);
    if (v5 && (TypeID = CFBooleanGetTypeID(), CFGetTypeID(v5) == TypeID))
    {
      v7 = CFBooleanGetValue(v5) != 0;
      v8 = 1;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = v7 | (v8 << 8);
    (*(*a1 + 32))(a1, &__p);
  }
}

void sub_27143F0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112F828(v11 - 80);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143F0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27112F828(va);
  sub_27112F828(v15 - 80);
  _Unwind_Resume(a1);
}

void sub_27143F0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27143F0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27143F1DC(_BYTE *a1, unsigned __int16 *a2)
{
  if ((a1[12] & 2) != 0)
  {
    v3 = 0;
    sub_27143B5F0(&v4, v2, a2);
  }

  v2[0] = *a2;
  (*(*a1 + 96))(a1, v2);
}

void sub_27143F300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27143F31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27143F330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27143F344(uint64_t a1, uint64_t *a2)
{
  v6[0] = *(a1 + 32);
  v4 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v6);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v6[0] = "version";
  v6[1] = 7;
  v7 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, &v7);
  if (v7 >= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v7;
  }

  if (v7 < 2)
  {
    sub_27143F440(v6, a1, a2, v5);
  }

  sub_27143F560(a1, a2, v5);
}

void sub_27143F560(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (a3 <= 2)
  {
    v3 = *(a1 + 104);
    *(a1 + 88) = "dictionary";
    *(a1 + 96) = 10;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    operator new();
  }

  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  sub_271810928(&v4);
}

void sub_27143F7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, uint64_t *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_2715CA1BC(va);
  sub_27181A92C(va1);
  _Unwind_Resume(a1);
}

void sub_27143F7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x2743BF050](v13, 0x10E2C40590DAB7CLL, a3, a4, a5, a6, a7);
  sub_27181A92C(va);
  _Unwind_Resume(a1);
}

void sub_27143F7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27181A92C(va);
  _Unwind_Resume(a1);
}

void sub_27143F830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27181A92C(va);
  _Unwind_Resume(a1);
}

void sub_27143F844(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  *(a1 + 88) = "dictionary";
  *(a1 + 96) = 10;
  if ((v2 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  operator new();
}

void sub_27143F9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27181A92C(va);
  _Unwind_Resume(a1);
}

void sub_27143F9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27181A92C(va);
  _Unwind_Resume(a1);
}

void sub_27143FB48(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (a3 <= 2)
  {
    v3 = *(a1 + 104);
    *(a1 + 88) = "dictionary";
    *(a1 + 96) = 10;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    operator new();
  }

  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  sub_271810928(&v4);
}

void sub_27143FD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, uint64_t *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_2715CA1BC(va);
  sub_27181A92C(va1);
  _Unwind_Resume(a1);
}

void sub_27143FDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x2743BF050](v13, 0x10E2C40590DAB7CLL, a3, a4, a5, a6, a7);
  sub_27181A92C(va);
  _Unwind_Resume(a1);
}

void sub_27143FDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27181A92C(va);
  _Unwind_Resume(a1);
}

void sub_27143FE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27181A92C(va);
  _Unwind_Resume(a1);
}

void sub_27143FF74(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 > 1)
  {
    v7 = 0;
    sub_27183FF6C(a2[6], &v7);
    *&v6 = (*(a2[2] + 32))(a2 + 2);
    *(&v6 + 1) = v7;
    sub_2713BF82C((a2 + 3), &v6);
    sub_2714400B0(a2, a3, 2);
  }

  sub_2714400B0(a2, a3, a4);
}

void sub_2714400B0(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    sub_271810928(&v3);
  }

  sub_2714401D8(&v3, a1, a2);
}

void sub_271440358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15)
{
  sub_271167834(&a14, a15);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271440378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27112F828(va);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271440394(uint64_t a1, uint64_t a2)
{
  *__p = 0u;
  v11 = 0u;
  *v9 = 0u;
  sub_2713BFFC0(a1, v9);
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v11 - __p[1]) >> 3);
  sub_27183FF6C(*(a1 + 48), &v12);
  v3 = v11;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v11 - __p[1]) >> 3);
  v5 = v12 - v4;
  if (v12 > v4)
  {
    sub_271440840(&__p[1], v5);
    v6 = __p[1];
    if (__p[1] == v11)
    {
      goto LABEL_15;
    }

LABEL_14:
    LODWORD(v14[0]) = 2;
    sub_27183FB7C(*(a1 + 48), v14);
    v15 = v14[0];
    v14[0] = a1;
    v14[1] = v6;
    v14[2] = &v13;
    v14[3] = &v15;
    sub_271440A68(v14);
  }

  if (v12 >= v4)
  {
    v6 = __p[1];
    if (__p[1] != v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = __p[1] + 24 * v12;
    if (v11 != v7)
    {
      do
      {
        v8 = *(v3 - 1);
        if (v8)
        {
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8, v5);
            std::__shared_weak_count::__release_weak(v8);
          }
        }

        v3 -= 24;
      }

      while (v3 != v7);
    }

    *&v11 = v7;
    v6 = __p[1];
    if (__p[1] != v7)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  sub_2715D1F68(v9, v14);
}

void sub_2714406E0(uint64_t a1, unint64_t *a2)
{
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  sub_27183FF6C(*(a1 + 48), &v11);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v6 = v11 - v5;
  if (v11 > v5)
  {
    sub_271440840(a2, v6);
    v9 = a2;
    j = *a2;
    i = v9[1];
    if (j == i)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v11 >= v5)
  {
    i = a2[1];
    j = *a2;
    if (j == v4)
    {
      return;
    }

    goto LABEL_14;
  }

  for (i = *a2 + 24 * v11; v4 != i; v4 -= 24)
  {
    v10 = *(v4 - 8);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10, v6);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  a2[1] = i;
  for (j = *a2; j != i; j += 24)
  {
LABEL_14:
    v13 = 2;
    sub_27183FB7C(*(a1 + 48), &v13);
    sub_271440B9C(&v12, a1, j, v13);
  }
}

void sub_271440840(unint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = (v3 + 8);
      v11 = 24 * a2;
      do
      {
        *v10 = 0;
        v10[1] = 0;
        v10 += 3;
        v11 -= 24;
      }

      while (v11);
      a1[1] = v9;
    }

    else
    {
      a1[1] = v3;
    }
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v12 = 24 * v5;
    v13 = 24 * a2;
    v14 = 24 * v5 + 24 * a2;
    v15 = (24 * v5 + 8);
    do
    {
      *v15 = 0;
      v15[1] = 0;
      v15 += 3;
      v13 -= 24;
    }

    while (v13);
    v16 = *a1;
    v17 = a1[1];
    v18 = v12 + *a1 - v17;
    if (v17 != *a1)
    {
      v19 = *a1;
      v20 = v18;
      do
      {
        *v20 = *v19;
        *(v20 + 8) = *(v19 + 1);
        v19[1] = 0;
        v19[2] = 0;
        v19 += 3;
        v20 += 24;
      }

      while (v19 != v17);
      do
      {
        v21 = v16[2];
        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
        }

        v16 += 3;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    *a1 = v18;
    a1[1] = v14;
    a1[2] = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_271440A68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *a1[3];
  if (v3 > 1)
  {
    v5 = 0;
    sub_27183FF6C(*(v1 + 48), &v5);
    *&v4 = (*(*(v1 + 16) + 32))(v1 + 16);
    *(&v4 + 1) = v5;
    sub_2713BF82C(v1 + 24, &v4);
    sub_271440EC0(v1, v2);
  }

  sub_271440CC8(&v4, v1, v2, v3);
}

uint64_t sub_271440B9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 <= 1)
  {
    sub_271440CC8(&v9, a2, a3, a4);
  }

  v10 = 0;
  sub_27183FF6C(a2[6], &v10);
  *&v9 = (*(a2[2] + 32))(a2 + 2);
  *(&v9 + 1) = v10;
  sub_2713BF82C((a2 + 3), &v9);
  sub_271440EC0(a2, a3);
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

void sub_271440CC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  sub_271442E8C(a2, &v4);
}

void sub_271440E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271440E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271440EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2712C9E78(va);
  _Unwind_Resume(a1);
}

void sub_271440EC0(void *a1, _WORD *a2)
{
  LOWORD(__p[0]) = 0;
  sub_27183F9D0(a1[6], __p);
  v4 = LOWORD(__p[0]);
  *a2 = __p[0];
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        if (v4 == 4)
        {
          __p[1] = 0;
          v13 = 0;
          __p[0] = &__p[1];
          sub_271810928(__p);
        }

        sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 250, "", 0, "invalid value type identifier", 0x1DuLL, sub_271852CA8);
        abort();
      }

      v9[0] = 0;
      v9[1] = 0;
      v10 = 0;
      sub_2714406E0(a1, v9);
      __p[1] = 0;
      v13 = 0;
      __p[0] = 0;
      sub_271441EDC(__p, 0xAAAAAAAAAAAAAAABLL * ((v9[1] - v9[0]) >> 3));
      sub_271442024(v9[0], v9[1], __p);
      sub_271442434();
    }

    LOBYTE(v11) = 0;
    sub_2718402EC(a1[6], &v11);
    v8 = MEMORY[0x277CBED28];
    if (!v11)
    {
      v8 = MEMORY[0x277CBED10];
    }

    sub_271809A48(__p, *v8);
  }

  if (v4)
  {
    __p[0] = 0;
    __p[1] = 0;
    v13 = 0;
    sub_2718403E0(a1[6], __p);
    if (SHIBYTE(v13) >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (SHIBYTE(v13) >= 0)
    {
      v6 = HIBYTE(v13);
    }

    else
    {
      v6 = __p[1];
    }

    v7 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v5, v6, 0x8000100u, 0);
    sub_2715CB2C0(v9, v7);
  }

  LOBYTE(__p[0]) = 7;
  LOBYTE(__p[1]) = 7;
  operator new();
}

void sub_2714417F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_27112F828(va);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27144180C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_27112F828(&a17);
  sub_271347F18(&a9);
  sub_271392A1C(&a13);
  _Unwind_Resume(a1);
}

void sub_271441870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, char *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_271347F18(va1);
  sub_271392A1C(va);
  _Unwind_Resume(a1);
}

void sub_271441928(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_27143C19C(&v5, v3);
}