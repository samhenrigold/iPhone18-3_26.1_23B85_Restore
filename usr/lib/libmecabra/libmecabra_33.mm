void sub_2993A8970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993A89A4(uint64_t result, unint64_t a2, int a3, float a4)
{
  if (a2 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(*(result + 8) + 8 * (a2 - 1));
  }

  v8 = *(result + 40);
  if ((v8 - 3) <= 1)
  {
    if (a3 <= 713)
    {
      if (a3 == 711)
      {
        LOBYTE(a3) = 51;
        goto LABEL_17;
      }

      if (a3 == 713)
      {
        LOBYTE(a3) = 49;
        goto LABEL_17;
      }
    }

    else
    {
      switch(a3)
      {
        case 729:
          LOBYTE(a3) = 53;
          goto LABEL_17;
        case 715:
          LOBYTE(a3) = 52;
          goto LABEL_17;
        case 714:
          LOBYTE(a3) = 50;
          goto LABEL_17;
      }
    }

    LOBYTE(a3) = a3 + 49;
  }

LABEL_17:
  v9 = v8 == 4 || v7 == 0;
  v10 = a3;
  if (!v9 && *(v7 + 16) == *(v7 + 8) && *(v7 + 64) == *(v7 + 56))
  {
    goto LABEL_26;
  }

  v11 = sub_2993B2448(*(result + 32), ***(result + 32), a3);
  if (v11)
  {
    sub_2993A8B64(result, *(*(result + 8) + 8 * a2), 0, v11, a4);
  }

  if (v7)
  {
LABEL_26:
    if ((*(v7 + 168) - 1) >= 2)
    {
      sub_2993A8DC4(result, *(v7 + 8), *(v7 + 16), v10, a2, 1, a4);
      sub_2993A8DC4(result, *(v7 + 32), *(v7 + 40), v10, a2, 1, a4);
      sub_2993A8DC4(result, *(v7 + 56), *(v7 + 64), v10, a2, 1, a4);
      v12 = *(v7 + 80);
      v13 = *(v7 + 88);

      sub_2993A8DC4(result, v12, v13, v10, a2, 1, a4);
    }
  }
}

void sub_2993A8B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v5 = *(a4 + 2);
  if (v5 >= 0x9C2)
  {
    sub_2991D6EC4("bitset test argument out of range");
  }

  if (((*(a1 + 80 + ((v5 >> 3) & 0x1FF8)) >> v5) & 1) == 0)
  {
    if ((*(a1 + 40) - 3) > 2)
    {
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    else if (!a3)
    {
      goto LABEL_9;
    }

    v8.n128_f32[0] = (*(*a3 + 80))(a3, a2);
    if (v8.n128_f32[0] < a5)
    {
      v8.n128_f32[0] = (*(*a3 + 80))(a3);
    }

    (*(*a3 + 40))(a3, v8);
LABEL_9:
    operator new();
  }
}

void sub_2993A8DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2991A893C(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993A8DC4(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, unint64_t a5, int a6, float a7)
{
  if (a2 != a3)
  {
    v12 = a2;
    v34 = a4 + 12495;
    v35 = (a4 - 49);
    v36 = *(*(a1 + 8) + 8 * a5);
    do
    {
      if (*(*v12 + 16) || (*(**v12 + 64))(*v12) == 2)
      {
        return;
      }

      v14 = *(a1 + 40);
      if (v14)
      {
        if (v14 != 1)
        {
          v15 = 0;
          goto LABEL_20;
        }

        v15 = !sub_2993A94BC(a1, 0, (*(a1 + 16) - *(a1 + 8)) >> 3);
      }

      else
      {
        v15 = 1;
      }

      if (a5 >= 2 && v15)
      {
        v16 = *v12;
        if ((*(**v12 + 64))(*v12) == 1 && *(*(v16 + 8) + 2) == 20)
        {
          v17 = *(*(a1 + 8) + 8 * a5 - 8);
          v18 = *(v17 + 32);
          v19 = *(v17 + 40);
          if (v18 != v19)
          {
            while (!sub_2993B00A0(*v18))
            {
              v18 += 2;
              v15 = 1;
              if (v18 == v19)
              {
                goto LABEL_20;
              }
            }

            if (*(*(*(a1 + 8) + 8 * a5 - 16) + 112) == *(*(*(a1 + 8) + 8 * a5 - 16) + 104))
            {
              goto LABEL_47;
            }
          }
        }

        v15 = 1;
      }

LABEL_20:
      v20 = *v12;
      v21 = *(*v12 + 8);
      v22 = sub_2993B2448(*(a1 + 32), v21, a4);
      if (v22)
      {
        v23 = v22;
        v24 = *v20;
        if (a6)
        {
          if ((*(v24 + 40))(v20) >= a5 || (v25 = (*(**v12 + 40))(), v26 = (*(**v12 + 40))() + 1, v27 = *(*(a1 + 8) + 8 * a5), LOWORD(v37) = 0, sub_2992B4A44(v27, &v37, 1), sub_2992B4A44(v27, &v37, 0), v26 >= v37) || *(*(*(a1 + 8) + 8 * ~v25 + 8 * a5) + 16) != *(*(*(a1 + 8) + 8 * ~v25 + 8 * a5) + 8))
          {
            sub_2993A8B64(a1, v36, *v12, v23, a7);
          }
        }

        else
        {
          v31 = (*(v24 + 72))(v20);
          if ((v15 & sub_2993A7D04(a1, v36, v23, v31)) == 1)
          {
            v32 = *(v23 + 2);
            if (v32 == 4 || v32 == 77 || v32 == 55)
            {
              if (a5)
              {
                if (a5 == 1 || (v33 = *(*(a1 + 8) + 8 * a5 - 16), v33[2] == v33[1]) && v33[5] != v33[4])
                {
                  sub_2993A92C8(a1, v36, 0);
                }
              }
            }
          }
        }
      }

      else if (*(a1 + 40) == 4 && a5 && (*(v21 + 8) & 1) != 0)
      {
        v28 = v34;
        if (v35 <= 4)
        {
          v28 = word_299427EB8[v35];
        }

        v29 = 0;
        v30 = word_299413998;
        while (*v30 != v28)
        {
          v29 -= 2;
          ++v30;
          if (v29 == -10)
          {
            goto LABEL_47;
          }
        }

        if (-v29 != -2 && sub_2993B0540(v20, v28) && (a6 & 1) == 0)
        {
          operator new();
        }
      }

LABEL_47:
      v12 += 2;
    }

    while (v12 != a3);
  }
}

void sub_2993A92B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2991A893C(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993A92C8(uint64_t a1, uint64_t a2, int a3)
{
  if ((sub_2992B49BC(a2) & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = **v6;
    if (v7)
    {
      sub_2993B2448(v6, v7, 104);
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    else if (!a3)
    {
      goto LABEL_12;
    }

    v8 = *(a2 + 40);
    while (v8 != *(a2 + 32))
    {
      v9 = *(v8 - 16);
      v8 -= 16;
      if ((*(*v9 + 64))(v9) != 2)
      {
        break;
      }

      v10 = *(a2 + 40);
      v11 = *(v10 - 8);
      if (v11)
      {
        sub_2991A893C(v11);
      }

      *(a2 + 40) = v10 - 16;
    }

LABEL_12:
    operator new();
  }
}

void sub_2993A94A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2991A893C(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2993A94BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 + a3;
  if (a2 >= a2 + a3)
  {
    return 0;
  }

  else
  {
    v4 = 255;
    if (a2 > 0xFF)
    {
      v4 = a2;
    }

    v5 = 1;
    do
    {
      if (v4 == a2)
      {
        sub_2991D6EC4("bitset test argument out of range");
      }

      if ((*(a1 + 504 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2))
      {
        break;
      }

      v5 = ++a2 < v3;
      --a3;
    }

    while (a3);
  }

  return v5;
}

void **sub_2993A9534(void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_299212A8C();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      sub_2992B4E24(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_2992B4E6C(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void sub_2993A9628(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, __int16 a5)
{
  v5 = *(a3 + 2);
  if (v5 >= 0x9C2)
  {
    sub_2991D6EC4("bitset test argument out of range");
  }

  if (((*(a1 + 80 + ((v5 >> 3) & 0x1FF8)) >> v5) & 1) == 0)
  {
    operator new();
  }
}

void sub_2993A97D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2991A893C(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993A9860(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = (*(*a2 + 32))(a2);
  v6 = v4 == v5;
  result = v4 > v5;
  if (v6)
  {
    result = (*(*a1 + 24))(a1);
    if (result)
    {
      result = (*(*a2 + 24))(a2);
      if (result)
      {
        v8 = (*(*a1 + 24))(a1);
        v9 = (*(*a2 + 24))(a2);
        return strcmp(v8, v9) >> 31;
      }
    }
  }

  return result;
}

uint64_t **sub_2993A99A4(uint64_t **result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      v4 = result[1];
      v5 = (result + 1);
      if (*result == (result + 1))
      {
        goto LABEL_9;
      }

      v6 = result[1];
      v7 = (result + 1);
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = *(v6 + 8);
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = *(v3 + 13);
      if (*(v5 + 13) < v9)
      {
LABEL_9:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = (result + 1);
        }

        if (!*v10)
        {
LABEL_20:
          operator new();
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_20;
        }

        while (1)
        {
          while (1)
          {
            v11 = v4;
            v12 = *(v4 + 26);
            if (v12 <= v9)
            {
              break;
            }

            v4 = *v11;
            if (!*v11)
            {
              goto LABEL_20;
            }
          }

          if (v12 >= v9)
          {
            break;
          }

          v4 = v11[1];
          if (!v4)
          {
            goto LABEL_20;
          }
        }
      }

      v13 = v3[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v3[2];
          v8 = *v14 == v3;
          v3 = v14;
        }

        while (!v8);
      }

      v3 = v14;
    }

    while (v14 != a3);
  }

  return result;
}

__CFArray *sub_2993A9B0C(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], (*(a1 + 568) - *(a1 + 560)) >> 3, 0);
  v3 = *(a1 + 560);
  v4 = *(a1 + 568);
  while (v3 != v4)
  {
    v5 = *v3;
    if ((*(**v3 + 64))(*v3) != 2 && *(v5[1] + 2) != 272)
    {
      v6 = (*(*v5 + 16))(v5, 0);
      CFArrayAppendValue(Mutable, v6);
      CFRelease(v6);
    }

    ++v3;
  }

  return Mutable;
}

BOOL sub_2993A9C00(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  v4 = a2 + 1;
  if (a2 + 1 >= v3 >> 3)
  {
    return 1;
  }

  v5 = *(v2 + 8 * a2);
  if ((*(v5 + 168) - 1) < 2)
  {
    return 1;
  }

  v6 = v3 >> 3;
  v8 = *(v5 + 8);
  v7 = *(v5 + 16);
  v9 = a2 + 7;
  if (v6 < a2 + 7)
  {
    v9 = v6;
  }

  if (v7 == v8)
  {
    while (v4 < v9)
    {
      v22 = *(v2 + 8 * v4);
      if ((*(v22 + 168) - 1) < 2)
      {
        break;
      }

      if (!*(v22 + 152))
      {
        return 0;
      }

      v23 = 0;
      ++v4;
      if (*(*(v22 + 136) + 26) <= a2)
      {
        return v23;
      }
    }

    return 1;
  }

  if (v4 >= v9)
  {
    return 1;
  }

  v11 = 0;
  v12 = a2 + 1;
  do
  {
    v13 = *(v2 + 8 * v12);
    if ((*(v13 + 168) - 1) < 2)
    {
      break;
    }

    if (*(v13 + 152))
    {
      v14 = *(*(v13 + 136) + 26);
    }

    else
    {
      v14 = 0;
    }

    if (v12 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v12;
    }

    if (v14 <= a2)
    {
      v11 = v15;
    }

    ++v12;
  }

  while (v9 != v12);
  if (v11 < 1)
  {
    return 1;
  }

  if (v6 >= v11 + 6)
  {
    v16 = v11 + 6;
  }

  else
  {
    v16 = v6;
  }

  if (v6 <= v11)
  {
    v18 = v11;
  }

  else
  {
    v17 = v11;
    v18 = v11;
    do
    {
      v19 = *(v2 + 8 * v17);
      if ((*(v19 + 168) - 1) < 2)
      {
        break;
      }

      if (*(v19 + 152))
      {
        v20 = *(*(v19 + 136) + 26);
      }

      else
      {
        v20 = 0;
      }

      if (v17 <= v18)
      {
        v21 = v18;
      }

      else
      {
        v21 = v17;
      }

      if (v20 <= v11)
      {
        v18 = v21;
      }

      ++v17;
    }

    while (v17 < v16);
  }

  sub_2993AEC04(&v39, *(v2 + 8 * v18) + 136);
  v25 = v41;
  if (v41)
  {
    do
    {
      v26 = v39;
      v27 = *(v39 + 13);
      v23 = v4 == v27;
      if (v4 == v27)
      {
        break;
      }

      v28 = v39[1];
      v29 = v39;
      if (v28)
      {
        do
        {
          v30 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v30 = v29[2];
          v31 = *v30 == v29;
          v29 = v30;
        }

        while (!v31);
      }

      v39 = v30;
      v41 = v25 - 1;
      sub_2991FA400(v40, v26);
      operator delete(v26);
      if (v4 < v27)
      {
        v32 = *(*(a1 + 8) + 8 * v27);
        v33 = *(v32 + 136);
        v34 = (v32 + 144);
        if (v33 != (v32 + 144))
        {
          while (1)
          {
            v38 = *(v33 + 13);
            if (v4 == v38)
            {
              break;
            }

            if (v38 < v27 && v4 < v38)
            {
              sub_29920BF78(&v39, &v38, &v38);
            }

            v36 = v33[1];
            if (v36)
            {
              do
              {
                v37 = v36;
                v36 = *v36;
              }

              while (v36);
            }

            else
            {
              do
              {
                v37 = v33[2];
                v31 = *v37 == v33;
                v33 = v37;
              }

              while (!v31);
            }

            v33 = v37;
            if (v37 == v34)
            {
              goto LABEL_63;
            }
          }

          v23 = 1;
          break;
        }
      }

LABEL_63:
      v25 = v41;
    }

    while (v41);
  }

  else
  {
    v23 = 0;
  }

  sub_29921B8CC(&v39, v40);
  return v23;
}

uint64_t sub_2993A9ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return -1;
  }

  v8 = *(a1 + 32);
  v9 = a4 + 1;
  while (1)
  {
    v10 = sub_2993B23C4(v8, a2, a3, a3 + v9 - 2);
    if (v10)
    {
      if ((v10[4] & 2) != 0)
      {
        v11 = sub_2993B23C4(v8, a2, a3 + v9 - 2, a4 + a3);
        if (v11)
        {
          if ((v11[4] & 2) == 0)
          {
            break;
          }
        }
      }
    }

    if (--v9 < 3)
    {
      return -1;
    }
  }

  return a3 + v9 - 2;
}

void sub_2993A9F8C(void *a1, float *a2)
{
  v4 = a1[5];
  v5 = *a2;
  if (sub_2993A3EB4(*(v4 + 40), v5))
  {
    sub_2993A89A4(v4, a1[6], v5, a2[1]);
    *(*(a1[4] + 8) + 24) = 1;
  }
}

void sub_2993A9FF4(void *a1, float *a2)
{
  v4 = a1[5];
  v5 = *a2;
  if (sub_2993A3EB4(*(v4 + 40), v5))
  {
    sub_2993A89A4(v4, a1[6], v5, a2[1]);
    *(*(a1[4] + 8) + 24) = 1;
  }
}

void sub_2993AA05C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, int a5, int a6)
{
  if (a2 != a3)
  {
    v6 = a6;
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v11 = "Remove";
    if (a5)
    {
      v11 = "Add";
    }

    v41 = v11;
    while (1)
    {
      v12 = *(v9 + 24);
      if (v6 && v12 == 1)
      {
        return;
      }

      v13 = sub_29930AF10();
      if (*v13 == 1 && (v13[9] & 2) != 0)
      {
        v14 = sub_29930AF10();
        v15 = *(v9 + 48);
        v43[2] = *(v9 + 32);
        v43[3] = v15;
        v44 = *(v9 + 64);
        v16 = *(v9 + 16);
        v43[0] = *v9;
        v43[1] = v16;
        sub_29930B514(v14, 0x200u, "%s: <Modification: %p>\n", v41, v43);
      }

      if (v12 == 5)
      {
        v17 = a1[101] + *(v9 + 32);
        if (v17 != -1)
        {
          v18 = *(v9 + 40);
          v19 = v17 + v18 - 1;
          if (sub_2992B4680(*(a1[1] + 8 * v19), *(v9 + 16), a1[6] + 2 * v17, v18, a5))
          {
            if (v19 < a1[62])
            {
              a1[62] = v19;
            }
          }
        }

        goto LABEL_30;
      }

      if ((v7 & 1) == 0)
      {
        break;
      }

LABEL_30:
      v9 += 72;
      if (v9 == v8)
      {
        return;
      }
    }

    v21 = *(v9 + 8);
    v20 = *(v9 + 16);
    v22 = *(v9 + 40);
    v23 = a1[101];
    v24 = v23 + *(v9 + 32);
    v25 = *v9;
    v46[0] = 0;
    v26 = *(v9 + 64);
    v27 = sub_2993AA4A4(a1, v20, v24, v22, v25 + v23, v21, v12, v46);
    if (v27 && (*(*(a1[1] + 8 * (v22 + v24 - 1)) + 168) - 1) >= 2)
    {
      v28 = v27;
      v37 = v22 + v24 - 1;
      v30 = *(v9 + 48);
      v29 = *(v9 + 56);
      v45 = 0;
      v31 = v25 + v23;
      v32 = v29;
      v33 = sub_2993AA4A4(a1, v20, v30, v29, v31, v21, v12, &v45);
      v35 = a1[1];
      if (v33 && (v36 = v30 + v32 - 1, (*(*(v35 + 8 * v36) + 168) - 1) >= 2))
      {
        if (a5)
        {
          operator new();
        }

        if (!sub_2993AA72C(v35, v37, v22, v46[0], v28, v33) || !sub_2993AA72C(a1[1], v36, v32, v45, v33, 0) || v36 >= a1[62])
        {
          goto LABEL_29;
        }
      }

      else
      {
        v34.n128_u64[0] = v26;
        if (!sub_2992B4298(*(v35 + 8 * v37), v28, v22, v46[0], a5, v34))
        {
          goto LABEL_29;
        }

        v36 = v37;
        if (v37 >= a1[62])
        {
          goto LABEL_29;
        }
      }

      a1[62] = v36;
    }

LABEL_29:
    v7 = a4;
    v6 = a6;
    v8 = a3;
    goto LABEL_30;
  }
}

void sub_2993AA488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_2991A893C(a18);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_2993AA4A4(uint64_t a1, CFStringRef theString, CFIndex a3, uint64_t a4, CFIndex a5, uint64_t a6, int a7, _BYTE *a8)
{
  v43 = *MEMORY[0x29EDCA608];
  if (a3 == -1)
  {
    return 0;
  }

  v13 = a3;
  v15 = a5 + a6;
  v40 = theString;
  Length = CFStringGetLength(theString);
  v17 = Length + a4;
  v18 = Length + v15;
  if (a7 != 3)
  {
    v18 = v15;
  }

  v39 = a4;
  if (a7 != 3)
  {
    v17 = a4;
  }

  if (a7 == 4)
  {
    v18 = v15;
  }

  v42 = v18;
  if (a7 == 4)
  {
    v19 = a4 - a6;
  }

  else
  {
    v19 = v17;
  }

  MEMORY[0x2A1C7C4A8](Length);
  if (v19 < 1)
  {
    v21 = 0;
    v26 = 0;
  }

  else
  {
    v41 = a7;
    v37 = a8;
    v38 = &v36;
    v20 = 0;
    v21 = 0;
    if (a5 <= v13)
    {
      v22 = v13;
    }

    else
    {
      v22 = a5;
    }

    v23 = v22 - a5;
    v24 = v41;
    do
    {
      if (v13 < v22 || v13 >= v42)
      {
        sub_2993A3A90(*(a1 + 40), *(*(a1 + 48) + 2 * v13), &v35[v20]);
        ++v21;
        ++v13;
      }

      else if (v24 == 4)
      {
        ++v13;
      }

      else
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(v40, v23);
        sub_2993A3A90(*(a1 + 40), CharacterAtIndex, &v35[v20]);
        ++v21;
        if (v24 == 3)
        {
          ++v22;
        }

        else
        {
          ++v13;
        }

        ++v23;
      }

      if (v21 > 11)
      {
        break;
      }

      v20 = v21;
    }

    while (v19 > v21);
    a8 = v37;
    v26 = 0;
    if (v21 >= 1)
    {
      v27 = v21;
      while (v35[v27 - 1] == 39)
      {
        --v27;
        ++v26;
        if ((v27 + 1) <= 1)
        {
          v26 = v21;
          break;
        }
      }
    }
  }

  *a8 = v26;
  v29 = v21 - v26;
  if (v29 < 1)
  {
    return 0;
  }

  v30 = v39;
  if (v13 < v39)
  {
    do
    {
      if (*(*(a1 + 48) + 2 * v13) == 39)
      {
        *a8 = ++v26;
      }

      ++v13;
    }

    while (v30 != v13);
  }

  v31 = *(a1 + 32);
  v28 = **v31;
  if (v28)
  {
    v32 = 0;
    do
    {
      v28 = sub_2993B2448(v31, v28, v35[v32++]);
      if (v28)
      {
        v33 = v32 >= v29;
      }

      else
      {
        v33 = 1;
      }
    }

    while (!v33);
  }

  return v28;
}

uint64_t sub_2993AA72C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 8 * a2);
  v7 = *(v6 + 56);
  if (v7 == *(v6 + 64))
  {
    return 0;
  }

  for (i = -v7; ; i -= 16)
  {
    v13 = *v7;
    if (*(*(*v7 + 8) + 2) != *(a5 + 2) || (*(*v13 + 40))(*v7) != a3 || *(v13 + 16) != a4)
    {
      goto LABEL_11;
    }

    if (!a6)
    {
      break;
    }

    v14 = *(v13 + 128);
    if (v14 && *(v14 + 8) == a6)
    {
      *(v14 + 120) = v14;
      sub_2992B4EF4(&v23, (16 - i), *(v6 + 64), -i);
      v17 = v16;
      v18 = *(v6 + 64);
      if (v18 != v16)
      {
        do
        {
          v19 = *(v18 - 8);
          if (v19)
          {
            sub_2991A893C(v19);
          }

          v18 -= 16;
        }

        while (v18 != v17);
      }

      goto LABEL_23;
    }

LABEL_11:
    v7 += 16;
    if (v7 == *(v6 + 64))
    {
      return 0;
    }
  }

  if (*(v13 + 120) != v13)
  {
    goto LABEL_11;
  }

  sub_2992B4EF4(&v24, (16 - i), *(v6 + 64), -i);
  v17 = v20;
  v21 = *(v6 + 64);
  if (v21 != v20)
  {
    do
    {
      v22 = *(v21 - 8);
      if (v22)
      {
        sub_2991A893C(v22);
      }

      v21 -= 16;
    }

    while (v21 != v17);
  }

LABEL_23:
  *(v6 + 64) = v17;
  return 1;
}

void sub_2993AA8B4(uint64_t a1, uint64_t a2, const char *a3, const char *a4, void *a5)
{
  if (a3)
  {
    if (!*(*a5 + 16))
    {
      v10 = (*(**a5 + 64))(*a5);
      if (a4 || v10 == 2)
      {
        v11 = *(*(*a5 + 8) + 2);
        v12 = &(&off_29EF15F80)[2 * v11];
        v13 = &(&off_29EF13DA0)[2 * v11];
        v14 = (*(a1 + 40) == 5 ? v12 : v13);
        v40 = v10;
        __src = *v14;
        v15 = strlen(*v14);
        v16 = strlen(a3);
        v17 = v16 + v15;
        if (v16 + v15 <= 6)
        {
          v18 = v16;
          v19 = *(a1 + 680);
          if (v15)
          {
            memmove(*(a1 + 680), __src, v15);
            v19 = *(a1 + 680);
          }

          if (v18)
          {
            memmove(&v19[v15], a3, v18);
            v19 = *(a1 + 680);
          }

          v37 = v15;
          v38 = v18;
          v20 = *(a1 + 32);
          v21 = **v20;
          if (v17)
          {
            v22 = v21 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (!v22)
          {
            v23 = 0;
            do
            {
              v21 = sub_2993B2448(v20, v21, v19[v23++]);
              if (v21)
              {
                v24 = v23 >= v17;
              }

              else
              {
                v24 = 1;
              }
            }

            while (!v24);
          }

          v26 = v37;
          v25 = v38;
          if (v21 && (v21[4] & 2) != 0)
          {
            if (v40 == 2)
            {
              v27 = *(*a5 + 112);
              v28 = &(&off_29EF15F80)[2 * v27];
              v29 = &(&off_29EF13DA0)[2 * v27];
              if (*(*a5 + 20) == 2)
              {
                v29 = v28;
              }

              __src = *v29;
              v26 = strlen(*v29);
            }

            if (a4)
            {
              v25 = strlen(a4);
            }

            v30 = v25 + v26;
            if (v25 + v26 <= 0x13)
            {
              if (v26)
              {
                memmove(v19, __src, v26);
                v19 = *(a1 + 680);
              }

              if (v25)
              {
                if (a4)
                {
                  v31 = a4;
                }

                else
                {
                  v31 = a3;
                }

                memmove(&v19[v26], v31, v25);
                v19 = *(a1 + 680);
              }

              v32 = 0;
              if (v30)
              {
                v33 = v25 + v26;
                do
                {
                  v34 = *v19++;
                  v32 = (1025 * (v32 + v34)) ^ ((1025 * (v32 + v34)) >> 6);
                  --v33;
                }

                while (v33);
                v32 *= 9;
              }

              v35 = sub_2993AF1C4((a1 + 640), 32769 * (v32 ^ (v32 >> 11)));
              if (v35)
              {
                v36 = *(v35 + 10);
                (*(**a5 + 72))();

                sub_2993A9628(a1, a2, v21, v36, v30);
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2993AAB74(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 16) - *(a1 + 8)) >> 3;
  v5 = *(a1 + 40);
  if (v5)
  {
    if (v5 != 5 || (v4 - 14) < 0xFFFFFFFFFFFFFFF4)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  if ((v4 - 14) >= 0xFFFFFFFFFFFFFFF4)
  {
LABEL_8:
    v8 = v4 - 1;
    v7 = 1;
    while (1)
    {
      if (v8 < 0 || *(a2 + 8) - *a2 > 0xCFuLL)
      {
        return v7 & 1;
      }

      v9 = *(*(a1 + 8) + 8 * v8);
      if (v9[2] == v9[1])
      {
        v10 = v9[4];
        v11 = v9[5];
        if (v11 == v10)
        {
          return v7 & 1;
        }
      }

      else
      {
        v10 = v9[4];
        v11 = v9[5];
      }

      v26 = 0uLL;
      v12 = 255;
      while (1)
      {
        if (v10 == v11)
        {
          goto LABEL_25;
        }

        if ((*(*(*v10 + 8) + 8) & 1) != 0 && (*(**v10 + 32))(*v10) <= 2)
        {
          break;
        }

        if (v12 == 255)
        {
          v12 = *(*v10 + 16);
        }

        v10 += 2;
      }

      v13 = *v10;
      v14 = v10[1];
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(&v26 + 1);
      *&v26 = v13;
      *(&v26 + 1) = v14;
      if (v15)
      {
        sub_2991A893C(v15);
LABEL_25:
        v13 = v26;
      }

      if (!v13)
      {
        v19 = *(*(a1 + 8) + 8 * v8);
        v20 = *(v19 + 8);
        if (v20 != *(v19 + 16))
        {
          break;
        }
      }

LABEL_27:
      v16 = v26;
      if (!v26 && v12 != 255)
      {
        if (v8 < v12)
        {
          goto LABEL_47;
        }

        sub_2993A3A90(*(a1 + 40), *(*(a1 + 48) + 2 * (v8 - v12)), *(a1 + 72));
        v17 = *(a1 + 32);
        v18 = **v17;
        if (v18 && sub_2993B2448(v17, v18, **(a1 + 72)))
        {
          operator new();
        }

        v16 = v26;
      }

      if (!v16)
      {
LABEL_47:
        v7 = 0;
        v24 = 1;
        goto LABEL_48;
      }

      sub_2992B4184(a2, &v26);
      v24 = 0;
      v8 -= (*(*v26 + 32))(v26);
LABEL_48:
      if (*(&v26 + 1))
      {
        sub_2991A893C(*(&v26 + 1));
      }

      if (v24)
      {
        return v7 & 1;
      }
    }

    v22 = *v20;
    v21 = v20[1];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      if (sub_2993B0110(v22))
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_38;
      }
    }

    else if (sub_2993B0110(*v20))
    {
LABEL_38:
      v23 = *(&v26 + 1);
      *&v26 = v22;
      *(&v26 + 1) = v21;
      if (v23)
      {
        sub_2991A893C(v23);
      }

LABEL_42:
      if (v21)
      {
        sub_2991A893C(v21);
      }

      goto LABEL_27;
    }

    if (v12 == 255)
    {
      v12 = *(v22 + 16);
    }

    goto LABEL_42;
  }

LABEL_6:
  v7 = 0;
  return v7 & 1;
}

void sub_2993AAF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  sub_2991A893C(v10);
  if (a10)
  {
    sub_2991A893C(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993AAFA4(uint64_t a1, void *a2)
{
  v4 = ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1;
  v5 = 1;
  while ((v4 & 0x8000000000000000) == 0)
  {
    v6 = word_299413998;
    v7 = 10;
    while (*v6 != *(*(a1 + 48) + 2 * v4))
    {
      ++v6;
      v7 -= 2;
      if (!v7)
      {
        v6 = &unk_2994139A2;
        break;
      }
    }

    v8 = v6 != &unk_2994139A2;
    if (v6 == &unk_2994139A2)
    {
      v6 = 0;
    }

    v9 = v6 - word_299413998 != -2 && v8;
    if (v5)
    {
      LOWORD(v23) = 0;
      v10 = *(*(a1 + 8) + 8 * v4);
      v11 = sub_2992B4A44(v10, &v23, v10[2] != v10[1]);
      if (v9)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      if (v11)
      {
        v13 = v23 > v12;
      }

      else
      {
        v13 = 0;
      }

      v5 = !v13;
      if (v9)
      {
LABEL_28:
        if (v4)
        {
          v17 = *(*(a1 + 48) + 2 * v4 - 2);
          if (v17 - 12549 <= 0x24)
          {
            v18 = *(*(a1 + 8) + 8 * v4);
            if (v18[2] != v18[1] || v18[5] != v18[4])
            {
              sub_2993A3A90(*(a1 + 40), v17, *(a1 + 72));
              v19 = *(a1 + 32);
              v20 = **v19;
              if (v20)
              {
                if (sub_2993B2448(v19, v20, **(a1 + 72)))
                {
                  operator new();
                }
              }
            }
          }
        }

        goto LABEL_36;
      }
    }

    else
    {
      v5 = 0;
      if (v9)
      {
        goto LABEL_28;
      }
    }

    v14 = *(*(a1 + 48) + 2 * v4);
    if (v14 - 12549 <= 0x24)
    {
      sub_2993A3A90(*(a1 + 40), v14, *(a1 + 72));
      v15 = *(a1 + 32);
      v16 = **v15;
      if (v16 && sub_2993B2448(v15, v16, **(a1 + 72)))
      {
        operator new();
      }

LABEL_36:
      v21 = 0;
      return v21 & 1;
    }

    --v4;
    if (a2[1] - *a2 >= 0xD1uLL)
    {
      goto LABEL_36;
    }
  }

  v21 = v5 ^ 1;
  return v21 & 1;
}

void sub_2993AB324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2991A893C(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993AB340(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a3;
  v6 = sub_2992B4C88(*(*(a1 + 8) + 8 * a2), a3, a4, (*(a1 + 40) > 5u) | ((0x27u >> *(a1 + 40)) & 1));
  if (!v6)
  {
    v7 = *(a1 + 40) - 3;
    if (v7 > 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = dword_299427EC4[v7];
    }

    sub_2993B24F4(*(a1 + 32), v4, v8);
    operator new();
  }

  return v6;
}

void sub_2993AB50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2991A893C(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993AB524(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a1;
  *(a1 + 792) = a3;
  v43 = *(a1 + 784);
  v44 = a3;
  if (v43 < v43 + a3)
  {
    LOWORD(v54[0]) = v43 + 48;
    sub_29922E664((a1 + 48), v54);
    operator new();
  }

  v5 = *a2;
  v46 = *(a2 + 8);
  if (*a2 != v46)
  {
    v48 = v43 + a3 - 1;
    v42 = (a1 + 760);
    do
    {
      v6 = v5[1] - *v5;
      if (v6)
      {
        v7 = v6 >> 1;
        __p = 0;
        v52 = 0;
        v53 = 0;
        sub_2991A650C(v49, v6 >> 1);
        v8 = 0;
        v9 = v7 - 1;
        v45 = v7;
        if (v7 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v7;
        }

        v11 = v43;
        if (((v44 - v9) & 0xFFFE) != 0)
        {
          v12 = (v44 - v9);
        }

        else
        {
          v12 = 1;
        }

        do
        {
          if (v9 == v8)
          {
            v13 = sub_2993AB340(v4, v48, *(*v5 + 2 * v9), v12);
          }

          else
          {
            v13 = sub_2993AB340(v4, v11, *(*v5 + 2 * v8), 1);
          }

          v14 = v13;
          v15 = v52;
          if (v52 >= v53)
          {
            v17 = (v52 - __p) >> 3;
            if ((v17 + 1) >> 61)
            {
              sub_2993ADF20();
            }

            v18 = (v53 - __p) >> 2;
            if (v18 <= v17 + 1)
            {
              v18 = v17 + 1;
            }

            if (v53 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v19 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v18;
            }

            if (v19)
            {
              sub_29920B86C(&__p, v19);
            }

            v20 = (8 * v17);
            *v20 = v13;
            v16 = 8 * v17 + 8;
            v21 = v20 - (v52 - __p);
            memcpy(v21, __p, v52 - __p);
            v22 = __p;
            __p = v21;
            v52 = v16;
            v53 = 0;
            if (v22)
            {
              operator delete(v22);
            }

            v4 = a1;
          }

          else
          {
            *v52 = v13;
            v16 = (v15 + 8);
          }

          v52 = v16;
          *(v49[0] + v8++) = *(*(v14 + 8) + 2);
          ++v11;
        }

        while (v10 != v8);
        v23 = *(v4 + 768);
        v24 = *(v4 + 776);
        if (v23 >= v24)
        {
          v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *v42) >> 3);
          v27 = v26 + 1;
          if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_299212A8C();
          }

          v28 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *v42) >> 3);
          if (2 * v28 > v27)
          {
            v27 = 2 * v28;
          }

          if (v28 >= 0x555555555555555)
          {
            v29 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v29 = v27;
          }

          v57 = v42;
          if (v29)
          {
            sub_29920DDE0(v42, v29);
          }

          v30 = 24 * v26;
          *v30 = 0;
          *(v30 + 8) = 0;
          *(v30 + 16) = 0;
          *v30 = *v49;
          *(v30 + 16) = v50;
          v49[0] = 0;
          v49[1] = 0;
          v50 = 0;
          v25 = 24 * v26 + 24;
          v31 = *(v4 + 760);
          v32 = *(v4 + 768) - v31;
          v33 = (24 * v26 - v32);
          memcpy(v33, v31, v32);
          v34 = *(v4 + 760);
          *(v4 + 760) = v33;
          *(v4 + 768) = v25;
          v35 = *(v4 + 776);
          *(v4 + 776) = 0;
          v55 = v34;
          v56 = v35;
          v54[0] = v34;
          v54[1] = v34;
          sub_29920DE38(v54);
        }

        else
        {
          *v23 = 0;
          v23[1] = 0;
          v23[2] = 0;
          *v23 = *v49;
          v23[2] = v50;
          v49[0] = 0;
          v49[1] = 0;
          v50 = 0;
          v25 = (v23 + 3);
        }

        *(v4 + 768) = v25;
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v37 = __p + 8 * i;
            if (i >= v45 - 2)
            {
              v38 = 0;
            }

            else
            {
              v38 = *(v37 + 2);
            }

            v39 = *v37;
            v54[0] = *(v37 + 1);
            sub_2993ADFB0((v39 + 32), v54, v54);
            if (v38)
            {
              v58 = *(*(v38 + 8) + 2) + 542 * *(*(v54[0] + 1) + 2);
            }

            else
            {
              v58 = *(*(v54[0] + 1) + 2);
            }

            sub_2993AE214((v39 + 72), v58, &v58);
          }
        }

        if (v49[0])
        {
          v49[1] = v49[0];
          operator delete(v49[0]);
        }

        if (__p)
        {
          v52 = __p;
          operator delete(__p);
        }
      }

      v5 += 3;
    }

    while (v5 != v46);
  }

  if (!*(v4 + 784))
  {
    sub_2993A5BA4(v4, ((*(v4 + 16) - *(v4 + 8)) >> 3) - 1);
  }

  v40 = sub_29930AF10();
  if (*v40 == 1 && (v40[9] & 0x20) != 0)
  {
    v41 = sub_29930AF10();
    sub_2993A664C(v54, v4);
    if (SHIBYTE(v55) >= 0)
    {
      sub_29930B514(v41, 0x2000u, v54);
    }

    else
    {
      sub_29930B514(v41, 0x2000u, v54[0]);
    }

    if (SHIBYTE(v55) < 0)
    {
      operator delete(v54[0]);
    }
  }
}

void sub_2993ABAF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993ABB4C(void *a1, int a2)
{
  v4 = a1[98];
  if (v4)
  {
LABEL_4:
    if (a2 != 2 || v4 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v4 = a1[100];
  if (v4 >= 1)
  {
    a1[98] = v4;
    a1[99] = 0;
    goto LABEL_4;
  }

  if (a2 != 2)
  {
LABEL_13:
    sub_2993A2620(a1, (a1[2] - a1[1]) >> 3, 0);
    a1[98] = (a1[2] - a1[1]) >> 3;
    return;
  }

  v4 = 0;
LABEL_6:
  v5 = a1[1];
  if (v4 >= ((a1[2] - v5) >> 3) || *(*(v5 + 8 * v4) + 168) != 2)
  {
    goto LABEL_13;
  }

  sub_2993A2620(a1, v4, 0);
}

uint64_t sub_2993ABC18(void *a1, int a2)
{
  v2 = a2;
  sub_2993ABB4C(a1, a2);
  v4 = 103;
  if (v2 != 2)
  {
    v4 = 104;
  }

  v5 = a1[v4];
  v6 = v5[6];
  v7 = v5[7];
  v8 = v2 == 1 && v6 == v7;
  v9 = !v8;
  if (v8)
  {
    return v9;
  }

  memset(v24, 0, sizeof(v24));
  if (v6 == v7)
  {
    goto LABEL_34;
  }

  v22 = v4 * 8;
  v23 = v2;
  do
  {
    v10 = *v6;
    v11 = 0;
    v12 = v6[1] - *v6;
    if (v12)
    {
      v13 = v12 >> 1;
      do
      {
        v14 = *v10++;
        v11 = v14 + 542 * v11;
        --v13;
      }

      while (v13);
    }

    v15 = a1[91];
    if (!*&v15)
    {
      goto LABEL_31;
    }

    v16 = vcnt_s8(v15);
    v16.i16[0] = vaddlv_u8(v16);
    if (v16.u32[0] > 1uLL)
    {
      v17 = v11;
      if (*&v15 <= v11)
      {
        v17 = v11 % *&v15;
      }
    }

    else
    {
      v17 = (*&v15 - 1) & v11;
    }

    v18 = *(a1[90] + 8 * v17);
    if (!v18 || (v19 = *v18) == 0)
    {
LABEL_31:
      operator new();
    }

    while (1)
    {
      v20 = v19[1];
      if (v20 == v11)
      {
        break;
      }

      if (v16.u32[0] > 1uLL)
      {
        if (v20 >= *&v15)
        {
          v20 %= *&v15;
        }
      }

      else
      {
        v20 &= *&v15 - 1;
      }

      if (v20 != v17)
      {
        goto LABEL_31;
      }

LABEL_30:
      v19 = *v19;
      if (!v19)
      {
        goto LABEL_31;
      }
    }

    if (v19[2] != v11)
    {
      goto LABEL_30;
    }

    v19[3] = v6[3];
    sub_299335284(v24, v6);
    v6 += 4;
  }

  while (v6 != v7);
  v5 = *(a1 + v22);
  v9 = v9;
  v2 = v23;
LABEL_34:
  sub_2993AB524(a1, v24, v5[9], v2);
  v25 = v24;
  sub_29920E060(&v25);
  return v9;
}

void sub_2993ABEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  sub_29920E060(&a14);
  _Unwind_Resume(a1);
}

BOOL sub_2993ABF28(void *a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  sub_2993ABB4C(a1, a2);
  v3 = a1[108];
  v4 = v3[2] - v3[1];
  if (v4 >= 9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v9 = 0;
    (*(*v3 + 80))(v3, v3[17] + 48);
    __p = 0;
    v7 = 0;
    v8 = 0;
    v13 = 0;
    operator new();
  }

  return v4 > 8;
}

void sub_2993AC250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_2991EDA10(exception_object);
}

void sub_2993AC2F4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 840) == 1)
  {
    sub_29930D578(*(a1 + 864), a2, a3, 1);
  }

  else
  {
    v3 = *(a1 + 824);
    if (v3)
    {
      sub_29922199C(v3, a2, a3);
    }
  }
}

void sub_2993AC31C(CFArrayRef theArray@<X2>, const __CFString *a3@<X1>, unint64_t a4@<X3>, char **a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (a3)
  {
    if (theArray)
    {
      if (CFArrayGetCount(theArray))
      {
        Count = CFArrayGetCount(theArray);
        Length = CFStringGetLength(a3);
        v10 = Count < 1;
        v11 = Count - 1;
        if (!v10)
        {
          v12 = Length;
          v13 = 0;
          alloc = *MEMORY[0x29EDB8ED8];
          do
          {
            if (v13 >= a4 || v12 < 0)
            {
              break;
            }

            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
            valuePtr = 0;
            CFNumberGetValue(ValueAtIndex, kCFNumberShortType, &valuePtr);
            v15.length = valuePtr;
            v12 -= valuePtr;
            if (v12 >= 0)
            {
              v15.location = v12;
              v17 = CFStringCreateWithSubstring(alloc, a3, v15);
              sub_299276E1C(v17);
            }

            ++v13;
            --v11;
          }

          while (v11 != -1);
        }
      }
    }
  }
}

void sub_2993AC4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  v20 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993AC530(void *a1, uint64_t a2)
{
  sub_2993A2620(a1, 0, 1);
  v6 = *(a2 + 32);
  v5 = a2 + 32;
  v4 = v6;
  a1[98] = 0;
  v7 = *(v5 + 8);
  v8 = v6 + 3;
  if (v6 != v7 && v8 != v7)
  {
    v10 = *v4;
    do
    {
      if (v4[1] - v10 < (v8[1] - *v8))
      {
        v10 = *v8;
        v4 = v8;
      }

      v8 += 3;
    }

    while (v8 != v7);
  }

  sub_2993AB524(a1, v5, (v4[1] - *v4) >> 1, 2);
  a1[100] = a1[99];
}

void sub_2993AC5CC(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 840) == 1)
  {
    sub_29930D80C(*(a1 + 864), a2);
  }

  else
  {
    v3 = 832;
    if (a3 == 2)
    {
      v3 = 824;
    }

    sub_29921FB9C(*(a1 + v3), a2);
  }
}

void sub_2993AC5F8(uint64_t a1, const __CFString *a2, const __CFArray *a3, int a4)
{
  if (*(a1 + 840) == 1)
  {
    v6 = (*(a1 + 864) + 208);
LABEL_7:
    v9 = *v6;
    goto LABEL_8;
  }

  v7 = 832;
  if (a4 == 2)
  {
    v7 = 824;
  }

  v8 = *(*(a1 + v7) + 8);
  if (v8)
  {
    v6 = (v8 + 32);
    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:
  sub_2993AC31C(a3, a2, v9, __p);
  sub_2993AC5CC(a1, __p, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_2993AC694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993AC6B0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7, _BYTE *a8)
{
  v50 = a4;
  if (!a4)
  {
    return;
  }

  v8 = a3;
  if (a1 >= a3)
  {
    return;
  }

  v10 = a8;
  if (*a8)
  {
    return;
  }

  v11 = a7;
  v13 = a5;
  v14 = (a6[1] - *a6) >> 3;
  v15 = a5[1] - *a5;
  if (v14 >= v15 >> 1)
  {
    if (v14 >= 2 && !sub_2993AE760((*(a6[1] - 16) + 72), *(*(a4 + 8) + 2) + 542 * *(*(*(a6[1] - 8) + 8) + 2)))
    {
      return;
    }
  }

  else
  {
    if (*(*(a4 + 8) + 2) != *(*a5 + 2 * v14))
    {
      return;
    }

    if (a3 - 1 == a1 && v14 + 1 == v15 >> 1)
    {
      *a8 = 1;

      sub_29920E0B4(a7);
      return;
    }
  }

  sub_2993A32F8(a6, &v50);
  if (v8 - 1 == a1)
  {
    __p = 0;
    v48 = 0;
    v49 = 0;
    for (i = (v13[1] - *v13) >> 1; i < (a6[1] - *a6) >> 3; ++i)
    {
      LOWORD(v51) = *(*(*(*a6 + 8 * i) + 8) + 2);
      sub_29922E664(&__p, &v51);
    }

    v33 = v11[1];
    v32 = v11[2];
    if (v33 >= v32)
    {
      v35 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *v11) >> 3);
      if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_299212A8C();
      }

      v36 = 0xAAAAAAAAAAAAAAABLL * ((v32 - *v11) >> 3);
      v37 = 2 * v36;
      if (2 * v36 <= v35 + 1)
      {
        v37 = v35 + 1;
      }

      if (v36 >= 0x555555555555555)
      {
        v38 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v38 = v37;
      }

      v55 = v11;
      if (v38)
      {
        sub_29920DDE0(v11, v38);
      }

      v39 = 24 * v35;
      v51 = 0;
      v52 = v39;
      v53 = 24 * v35;
      v54 = 0;
      *v39 = 0;
      *(v39 + 8) = 0;
      *(v39 + 16) = 0;
      sub_299215EC0((24 * v35), __p, v48, (v48 - __p) >> 1);
      v34 = (v53 + 24);
      v40 = v11[1] - *v11;
      v41 = v52 - v40;
      memcpy((v52 - v40), *v11, v40);
      v42 = *v11;
      *v11 = v41;
      v11[1] = v34;
      v43 = v11[2];
      v11[2] = v54;
      v53 = v42;
      v54 = v43;
      v51 = v42;
      v52 = v42;
      sub_29920DE38(&v51);
    }

    else
    {
      *v33 = 0;
      v33[1] = 0;
      v33[2] = 0;
      sub_299215EC0(v33, __p, v48, (v48 - __p) >> 1);
      v34 = v33 + 3;
      v11[1] = (v33 + 3);
    }

    v11[1] = v34;
    if (__p)
    {
      v48 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v17 = *(v50 + 48);
    if (v17)
    {
      v18 = a1 - a2 + 1;
      v44 = v10;
      v45 = v8;
      do
      {
        v19 = v11;
        v20 = v17[2];
        v21 = *a6;
        v22 = a6[1];
        v23 = (v22 - *a6) >> 3;
        if (v18 <= v23)
        {
          v11 = v19;
          if (v18 < v23)
          {
            a6[1] = v21 + 8 * v18;
          }
        }

        else
        {
          v24 = v13;
          v25 = v19;
          v26 = v18 - v23;
          v27 = a6[2];
          if (v26 > (v27 - v22) >> 3)
          {
            if (!(v18 >> 61))
            {
              v28 = v27 - v21;
              v29 = v28 >> 2;
              if (v28 >> 2 <= v18)
              {
                v29 = a1 - a2 + 1;
              }

              if (v28 >= 0x7FFFFFFFFFFFFFF8)
              {
                v30 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v30 = v29;
              }

              sub_29920B86C(a6, v30);
            }

            sub_2993ADF20();
          }

          bzero(a6[1], 8 * v26);
          a6[1] = v22 + 8 * v26;
          v11 = v25;
          v13 = v24;
          v10 = v44;
          v8 = v45;
        }

        v31 = (*(*v20 + 40))(v20);
        sub_2993AC6B0(a1 + v31, a2, v8, v20, v13, a6, v11, v10);
        v17 = *v17;
      }

      while (v17);
    }
  }
}

void sub_2993ACAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_29920DE38(va);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

CFStringRef sub_2993ACB1C(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    return &stru_2A1F7E6E8;
  }

  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = v3 >> 1;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    while (v1[v4] - 10123 >= 8)
    {
      if (v5 == ++v4)
      {
        v4 = v5;
        break;
      }
    }
  }

  if (v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return CFStringCreateWithCharacters(0, v1, v7);
}

__CFArray *sub_2993ACB8C(uint64_t a1, const __CFArray *a2, CFStringRef theString, const __CFArray *a4, uint64_t *a5)
{
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  Length = CFStringGetLength(theString);
  otherArray = a2;
  Count = CFArrayGetCount(a2);
  theArray = a4;
  v14 = CFArrayGetCount(a4);
  v16 = *a5;
  v15 = a5[1];
  v64 = Count;
  if (v15 != *a5 && Count != 0 && Length != 0 && v10 != v11 && v14 != 0)
  {
    str = theString;
    v60 = a1;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = (v10 - v11) >> 3;
    v62 = v14;
    do
    {
      v29 = *(v16 + 4 * v27);
      if (v29 != 2)
      {
        if (v26)
        {
          v22 = sub_2993AD1F0(otherArray, v22, v64);
          do
          {
            v30 = v24 + 1;
            v31 = *(*(*(v60 + 8) + 8 * v24) + 168) != 2 || v24 >= v28;
            ++v24;
          }

          while (!v31);
          v24 = v30 - 1;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v27);
        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberShortType, &valuePtr);
        v24 += valuePtr;
        v22 += valuePtr;
        v23 += valuePtr;
        ++v25;
        v16 = *a5;
        v15 = a5[1];
        v14 = v62;
      }

      if (++v27 >= ((v15 - v16) >> 2))
      {
        break;
      }

      if (v22 >= v64)
      {
        break;
      }

      if (Length <= v23)
      {
        break;
      }

      if (v24 >= v28)
      {
        break;
      }

      v26 = v29 == 2;
    }

    while (v14 > v25);
    if (v27 == (v15 - v16) >> 2)
    {
      v33 = *MEMORY[0x29EDB8ED8];
      Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
      if (v29 == 2)
      {
        v77.length = Length - v23;
        v77.location = v23;
        v34 = CFStringCreateWithSubstring(v33, str, v77);
        v68 = v34;
        v35 = CFArrayCreateMutable(v33, 0, MEMORY[0x29EDB9000]);
        v67 = v35;
        v78.length = v62 - v25;
        v78.location = v25;
        CFArrayAppendArray(v35, theArray, v78);
        if (v34)
        {
          v36 = v35 == 0;
        }

        else
        {
          v36 = 1;
        }

        if (v36)
        {
          goto LABEL_52;
        }

        v38 = *(v60 + 8);
        v37 = *(v60 + 16);
        v39 = CFArrayGetCount(v35);
        v40 = (v37 - v38) >> 3;
        if (v39 + v24 >= v40)
        {
          goto LABEL_52;
        }

        v41 = v40 - v24;
        if (v40 <= v24)
        {
          goto LABEL_52;
        }

        v42 = 0;
        v43 = *(v60 + 8) + 8 * v24;
        while (*(*v43 + 168) == 2)
        {
          --v42;
          v43 += 8;
          if (v24 - v40 == v42)
          {
            goto LABEL_47;
          }
        }

        if (!v42)
        {
          goto LABEL_52;
        }

        v41 = -v42;
        v40 = v24 - v42;
LABEL_47:
        if (CFArrayGetCount(v35) >= v41)
        {
LABEL_52:
          v65 = 0uLL;
          v66 = 0;
        }

        else
        {
          sub_2993AC31C(v35, v34, 0xFFFFFFFFFFFFFFFFLL, &valuePtr);
          if (valuePtr == v75)
          {
            v65 = 0uLL;
            v66 = 0;
          }

          else
          {
            v44 = v60;
            v45 = v34;
            v46 = (*(v44 + 40) < 6u) & (0x18u >> *(v44 + 40));
            if (v39 == 1 && ((v47 = *(*(v60 + 8) + 8 * (v40 - 1)), *(v47 + 16) != sub_2993AD2A8(*(v47 + 8), *(v47 + 16), &valuePtr, v41)) || (v44 = v60, v46) && (v49 = *(*(v60 + 8) + 8 * (v40 - 1)), v50 = sub_2993AD2A8(*(v49 + 32), *(v49 + 40), &valuePtr, v41), v44 = v60, *(v49 + 40) != v50)))
            {
              v65 = 0uLL;
              v66 = 0;
              v34 = v45;
            }

            else
            {
              v51 = *(*(v44 + 8) + 8 * v24);
              v52 = v51[1];
              v53 = v51[2];
              if (v52 != v53)
              {
                while (*(*(*v52 + 8) + 2) != *valuePtr)
                {
                  v52 += 2;
                  if (v52 == v53)
                  {
                    goto LABEL_69;
                  }
                }
              }

              if (v52 == v53)
              {
LABEL_69:
                v54 = 0;
              }

              else
              {
                v54 = *v52;
              }

              v34 = v45;
              v55 = v46 ^ 1;
              if (v54)
              {
                v55 = 1;
              }

              if ((v55 & 1) == 0)
              {
                v57 = v51[4];
                v56 = v51[5];
                if (v57 != v56)
                {
                  while (*(*(*v57 + 8) + 2) != *valuePtr)
                  {
                    v57 += 2;
                    if (v57 == v56)
                    {
                      goto LABEL_79;
                    }
                  }
                }

                if (v57 == v56)
                {
LABEL_79:
                  v54 = 0;
                }

                else
                {
                  v54 = *v57;
                }
              }

              __p = 0;
              v72 = 0;
              v73 = 0;
              v69 = 0uLL;
              v70 = 0;
              LOBYTE(v76[0]) = 0;
              sub_2993AC6B0(v24, v24, v40, v54, &valuePtr, &__p, &v69, v76);
              if (v76[0])
              {
                v58 = &v65;
              }

              else
              {
                v65 = v69;
                v66 = v70;
                v58 = &v69;
              }

              *v58 = 0;
              *(v58 + 1) = 0;
              *(v58 + 2) = 0;
              v76[0] = &v69;
              sub_29920E060(v76);
              if (__p)
              {
                v72 = __p;
                operator delete(__p);
              }
            }
          }

          if (valuePtr)
          {
            v75 = valuePtr;
            operator delete(valuePtr);
          }

          if (v65 != *(&v65 + 1))
          {
            operator new();
          }
        }

        v22 = sub_2993AD1F0(otherArray, v22, v64);
        valuePtr = &v65;
        sub_29920E060(&valuePtr);
        if (v35)
        {
          CFRelease(v35);
        }

        if (v34)
        {
          CFRelease(v34);
        }
      }

      goto LABEL_57;
    }

    return 0;
  }

  if (v15 != v16)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  v22 = 0;
LABEL_57:
  if (v64 > v22)
  {
    v79.location = v22;
    v79.length = v64 - v22;
    CFArrayAppendArray(Mutable, otherArray, v79);
  }

  return Mutable;
}

void sub_2993AD124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19, const void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  v28 = *(v26 - 120);
  if (v28)
  {
    *(v26 - 112) = v28;
    operator delete(v28);
  }

  sub_2992530BC(&a19, 0);
  sub_299219AB4(&a20, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_2993AD1F0(CFArrayRef theArray, unint64_t idx, unint64_t a3)
{
  v3 = idx;
  if (idx < a3)
  {
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3);
      if (!(**ValueAtIndex[3])(ValueAtIndex[3]) || (**ValueAtIndex[3])(ValueAtIndex[3]) == 1)
      {
        break;
      }

      if (a3 == ++v3)
      {
        return a3;
      }
    }
  }

  return v3;
}

void *sub_2993AD2A8(void *a1, void *a2, unsigned __int16 **a3, uint64_t a4)
{
  v4 = a2;
  if (a1 != a2)
  {
    v7 = a1;
    while (*(*(*v7 + 8) + 2) != **a3 || a4 != (*(**v7 + 40))(*v7))
    {
      v7 += 2;
      if (v7 == v4)
      {
        return v4;
      }
    }

    return v7;
  }

  return v4;
}

void sub_2993AD344(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 840) == 1)
  {
    if (sub_29930BA18(*(a1 + 864), a2, a3) && a3 != 0)
    {

      sub_2993ABF28(a1, 2);
    }
  }

  else
  {
    v7 = *(a1 + 832);
    if (v7)
    {
      (*(*v7 + 16))(v7);
    }

    v8 = *(a1 + 824);
    if (v8)
    {
      sub_299305CD0(v8, a2, a3);
      if (a3)
      {

        sub_2993ABC18(a1, 2);
      }
    }
  }
}

uint64_t sub_2993AD430(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[103];
  if (v6)
  {
    sub_29921FB44((v6 + 144));
    *(v6 + 192) = 0;
    sub_29921FA70(v6);
  }

  v7 = a1[108];
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  result = a1[104];
  if (result)
  {
    (*(*result + 24))(result, a2, a3);
    if (a3)
    {

      return sub_2993ABC18(a1, 1);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2993AD50C(uint64_t a1, unint64_t a2, unsigned __int16 *a3, unint64_t a4, uint64_t a5)
{
  if (*(a1 + 800) > a2)
  {
    return 1;
  }

  result = 0;
  if (a4 <= 4)
  {
    v8 = *(a1 + 8);
    if ((*(a1 + 16) - v8) >> 3 > a2)
    {
      v11 = *(v8 + 8 * a2);
      v12 = *a3;
      v13 = sub_2992B4BD8(v11, *a3, 1);
      v14 = v13;
      v15 = *(a1 + 40) - 3;
      if (v15 >= 2)
      {
        if (!v13)
        {
          return 0;
        }
      }

      else if (!v13)
      {
        result = sub_2992B4BD8(v11, word_299422A36[v12 - 428], 0);
        v14 = result;
        if (!result)
        {
          return result;
        }
      }

      v16 = a4 - 2;
      if (a4 != 2)
      {
        v17 = 1;
        while (1)
        {
          if (v15 >= 2)
          {
            result = sub_2993AE760(v14 + 9, a3[v17 + 1] + 542 * a3[v17]);
            if (!result)
            {
              return result;
            }
          }

          if (a5 || v17 != v16)
          {
            v18 = v14[6];
            if (v18)
            {
              v19 = a3[v17];
              while (1)
              {
                v14 = v18[2];
                v20 = *(v14[1] + 2);
                if (v15 > 1)
                {
                  if (v20 == v19)
                  {
                    goto LABEL_16;
                  }
                }

                else if (v20 == word_299422A36[v19 - 428] || v20 == v19)
                {
                  goto LABEL_16;
                }

                v18 = *v18;
                if (!v18)
                {
                  return 0;
                }
              }
            }

            return 0;
          }

LABEL_16:
          if (++v17 > v16)
          {
            if (a5)
            {
              break;
            }

            return 1;
          }
        }
      }

      v22 = v14[6];
      if (v22)
      {
        v23 = a3[a4 - 1];
        while (1)
        {
          v24 = v22[2];
          if (!a5 || (*(*v24 + 40))(v22[2]) == a5)
          {
            v25 = *(v24[1] + 2);
            if (v15 > 1)
            {
              if (v25 == v23)
              {
                return 1;
              }
            }

            else if (v25 == word_299422A36[v23 - 428] || v25 == v23)
            {
              return 1;
            }
          }

          result = 0;
          v22 = *v22;
          if (!v22)
          {
            return result;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2993AD740(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 760);
  v4 = *(a1 + 768);
  if (v3 == v4)
  {
    return 0;
  }

  if (a3 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3;
  }

  v7 = v6 - 1;
  while (!a2 || !sub_299397868(a2, v3))
  {
    result = 0;
    if (v7)
    {
      v3 += 24;
      --v7;
      if (v3 != v4)
      {
        continue;
      }
    }

    return result;
  }

  return 1;
}

size_t sub_2993AD7C0(void *a1, int a2, unsigned int a3)
{
  v4 = &(&off_29EF15F80)[2 * a3];
  if (a2 != 5)
  {
    v4 = &(&off_29EF13DA0)[2 * a3];
  }

  v5 = *v4;
  result = strlen(*v4);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v7 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = result;
  if (result)
  {
    result = memmove(a1, v5, result);
  }

  *(a1 + v7) = 0;
  return result;
}

uint64_t sub_2993AD888(void *a1, const char *a2, const void *a3)
{
  sub_2991D7954(v44);
  v6 = (*(*a3 + 16))(a3, 1);
  __s[1] = v6;
  sub_299277A90(v6, __s);
  v7 = __dynamic_cast(a3, &unk_2A1F77118, &unk_2A1F775F0, 0);
  v8 = strlen(a2);
  if (!v7)
  {
    v32 = sub_2991C0E9C(&v45, a2, v8);
    v33 = __s[0];
    v34 = strlen(__s[0]);
    v35 = sub_2991C0E9C(v32, __s[0], v34);
    v36 = sub_2991C0E9C(v35, ", rawInputLength = ", 19);
    v37 = (*(*a3 + 40))(a3);
    v38 = MEMORY[0x29C29BD70](v36, v37);
    std::ios_base::getloc((v38 + *(*v38 - 24)));
    v39 = std::locale::use_facet(&v50, MEMORY[0x29EDC93D0]);
    (v39->__vftable[2].~facet_0)(v39, 10);
    std::locale::~locale(&v50);
    std::ostream::put();
    std::ostream::flush();
    sub_29927989C(v44, a1);
    if (!v33)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v9 = sub_2991C0E9C(&v45, a2, v8);
  v10 = strlen(__s[0]);
  v11 = sub_2991C0E9C(v9, __s[0], v10);
  v12 = sub_2991C0E9C(v11, ", separatorCount = ", 19);
  v13 = MEMORY[0x29C29BD60](v12, *(v7 + 16));
  v14 = sub_2991C0E9C(v13, ", rawInputLength = ", 19);
  v15 = (*(*a3 + 40))(a3);
  MEMORY[0x29C29BD70](v14, v15);
  if (v7[7])
  {
    sub_2991C0E9C(&v45, " next: ", 7);
  }

  v16 = v7 + 6;
  while (1)
  {
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v17 = v16[2];
    v18 = (*(*v17 + 24))(v17);
    v19 = strlen(v18);
    v20 = sub_2991C0E9C(&v45, v18, v19);
    v21 = sub_2991C0E9C(v20, "(", 1);
    v22 = (*(*v17 + 40))(v17);
    v23 = MEMORY[0x29C29BD70](v21, v22);
    sub_2991C0E9C(v23, "), ", 3);
  }

  if ((*(*v7 + 64))(v7) == 2)
  {
    v24 = sub_2991C0E9C(&v45, " (fuzzy), original = ", 21);
    v25 = *(v7 + 56);
    v26 = &(&off_29EF15F80)[2 * v25];
    v27 = &(&off_29EF13DA0)[2 * v25];
    if (*(v7 + 5) == 2)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    v29 = *v28;
    v30 = strlen(*v28);
    v31 = sub_2991C0E9C(v24, v29, v30);
  }

  else
  {
    v31 = &v45;
  }

  std::ios_base::getloc((v31 + *(*v31 - 24)));
  v42 = std::locale::use_facet(&v50, MEMORY[0x29EDC93D0]);
  (v42->__vftable[2].~facet_0)(v42, 10);
  std::locale::~locale(&v50);
  std::ostream::put();
  std::ostream::flush();
  sub_29927989C(v44, a1);
  v33 = __s[0];
  if (__s[0])
  {
LABEL_13:
    MEMORY[0x29C29BF70](v33, 0x1000C8077774924);
  }

LABEL_14:
  if (v6)
  {
    CFRelease(v6);
  }

  v44[0] = *MEMORY[0x29EDC9528];
  v40 = *(MEMORY[0x29EDC9528] + 72);
  *(v44 + *(v44[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v45 = v40;
  v46 = MEMORY[0x29EDC9570] + 16;
  if (v48 < 0)
  {
    operator delete(v47[7].__locale_);
  }

  v46 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v47);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C29BF00](&v49);
}

void sub_2993ADE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924, a3, a4, a5, a6, a7, a8);
  }

  sub_299219AB4(&a10, 0);
  sub_2991D7BF8(&a11, MEMORY[0x29EDC9528]);
  MEMORY[0x29C29BF00](&a27);
  _Unwind_Resume(a1);
}

void sub_2993ADECC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2993A2A08(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_2993ADF38(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_2993ADFB0(void *a1, void *a2, void *a3)
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

void *sub_2993AE214(void *result, unint64_t a2, void *a3)
{
  v3 = result[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(*result + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

id **sub_2993AE430(id ***a1, id **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2993F6678(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void **sub_2993AE47C(void **a1)
{
  sub_2993AE4B8(a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2993AE4B8(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[3];
      if (v3)
      {
        v1[4] = v3;
        operator delete(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t sub_2993AE504(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_299308124(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void sub_2993AE550(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_2993AE4B8(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_2993AE5AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (!v2)
  {
    v6 = -62;
    v7 = 39;
LABEL_8:
    bzero(v3, 8 * v7);
    goto LABEL_9;
  }

  v4 = (64 - v2);
  if (v4 >= 0x9C2)
  {
    v5 = 2498;
  }

  else
  {
    v5 = (64 - v2);
  }

  *v3++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v2 - v5)) & (-1 << v2));
  v6 = -62 - v5;
  *a1 = v3;
  v7 = (2498 - v5) >> 6;
  if (v4 <= 0x982)
  {
    goto LABEL_8;
  }

LABEL_9:
  if ((v6 & 0x3F) != 0)
  {
    v8 = &v3[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v6 & 0x3F));
  }
}

uint64_t sub_2993AE6D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F76DD0;
  a2[1] = v2;
  return result;
}

uint64_t sub_2993AE714(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F76E30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_2993AE760(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (result[2] == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= *&v2)
        {
          v7 %= *&v2;
        }
      }

      else
      {
        v7 &= *&v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_2993AE810(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
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
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == a2)
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

void sub_2993AE918(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F76E50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993AE9B4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F76EA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993AEA50(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F76EF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993AEAEC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F76F40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993AEB88(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F76F90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t **sub_2993AEC04(uint64_t **a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_2993A99A4(a1, *a2, (a2 + 8));
  return a1;
}

void sub_2993AECC4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993AED00(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993AED38(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_2993AED68(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F77030))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t **sub_2993AEDA8(float *a1, unsigned __int16 a2, _WORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % *(a1 + 1);
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 8) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *sub_2993AF1C4(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2993AF298(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F77058;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993AF314(uint64_t a1, size_t __n)
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

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    sub_29919600C();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
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
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

__n128 sub_2993AF5A4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F770A8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

void sub_2993AF5EC(uint64_t a1, uint64_t *a2, uint64_t a3, double *a4)
{
  v5 = *a2;
  v6 = *a4;
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  if (v10 >= v9)
  {
    v13 = *v8;
    v14 = v10 - *v8;
    v15 = v14 >> 2;
    v16 = (v14 >> 2) + 1;
    if (v16 >> 62)
    {
      sub_299212A8C();
    }

    v17 = v9 - v13;
    if (v17 >> 1 > v16)
    {
      v16 = v17 >> 1;
    }

    v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
    v19 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v19 = v16;
    }

    if (v19)
    {
      sub_2992F86B0(*(a1 + 24), v19);
    }

    v20 = v6;
    *(4 * v15) = v20;
    v12 = 4 * v15 + 4;
    memcpy(0, v13, v14);
    v21 = *v8;
    *v8 = 0;
    *(v8 + 8) = v12;
    *(v8 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    v11 = v6;
    *v10 = v11;
    v12 = (v10 + 1);
  }

  *(v8 + 8) = v12;
  v22 = *(*v5 + 72);
  if (v22)
  {
    LOWORD(v22) = *(v22 + 2);
  }

  LOWORD(v65[0]) = v22;
  __src[1] = 0;
  v64 = 0;
  __src[0] = 0;
  sub_2992220D8(__src, v65, v65 + 1, 1);
  for (i = *(v5 + 8); i; i = i[1])
  {
    if ((*(**i + 24))())
    {
      break;
    }

    v24 = *(*i + 72);
    v25 = v24 ? *(v24 + 2) : 0;
    v26 = __src[1];
    if (__src[1] >= v64)
    {
      v28 = __src[0];
      v29 = __src[1] - __src[0];
      v30 = (__src[1] - __src[0]) >> 1;
      if (v30 <= -2)
      {
        sub_299212A8C();
      }

      if (v64 - __src[0] <= (v30 + 1))
      {
        v31 = v30 + 1;
      }

      else
      {
        v31 = v64 - __src[0];
      }

      if ((v64 - __src[0]) >= 0x7FFFFFFFFFFFFFFELL)
      {
        v32 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v31;
      }

      if (v32)
      {
        sub_299212A48(__src, v32);
      }

      *(2 * v30) = v25;
      v27 = (2 * v30 + 2);
      memcpy(0, v28, v29);
      v33 = __src[0];
      __src[0] = 0;
      __src[1] = v27;
      v64 = 0;
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      *__src[1] = v25;
      v27 = v26 + 2;
    }

    __src[1] = v27;
  }

  v35 = __src[0];
  v34 = __src[1];
  if (__src[0] != __src[1])
  {
    v36 = (__src[1] - __src[0]) >> 1;
    v37 = *(a1 + 32);
    if (v36 <= *v37)
    {
      v36 = *v37;
    }

    *v37 = v36;
    v38 = v34 - 2;
    if (v38 > v35)
    {
      v39 = v35 + 2;
      do
      {
        v40 = *(v39 - 1);
        *(v39 - 1) = *v38;
        *v38 = v40;
        v38 -= 2;
        v18 = v39 >= v38;
        v39 += 2;
      }

      while (!v18);
    }

    v41 = *(a1 + 16);
    v42 = *(v41 + 8);
    v43 = *(v41 + 16);
    if (v42 >= v43)
    {
      v45 = 0xAAAAAAAAAAAAAAABLL * ((v42 - *v41) >> 3);
      v46 = v45 + 1;
      if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_299212A8C();
      }

      v47 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *v41) >> 3);
      if (2 * v47 > v46)
      {
        v46 = 2 * v47;
      }

      if (v47 >= 0x555555555555555)
      {
        v48 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v48 = v46;
      }

      v65[4] = *(a1 + 16);
      if (v48)
      {
        sub_29920DDE0(v41, v48);
      }

      v49 = 24 * v45;
      *v49 = 0;
      *(v49 + 8) = 0;
      *(v49 + 16) = 0;
      *v49 = *__src;
      *(v49 + 16) = v64;
      __src[1] = 0;
      v64 = 0;
      __src[0] = 0;
      v44 = 24 * v45 + 24;
      v50 = *(v41 + 8) - *v41;
      v51 = 24 * v45 - v50;
      memcpy((v49 - v50), *v41, v50);
      v52 = *v41;
      *v41 = v51;
      v65[0] = v52;
      v65[1] = v52;
      *(v41 + 8) = v44;
      v65[2] = v52;
      v53 = *(v41 + 16);
      *(v41 + 16) = 0;
      v65[3] = v53;
      sub_29920DE38(v65);
    }

    else
    {
      *v42 = 0;
      v42[1] = 0;
      v42[2] = 0;
      *v42 = *__src;
      v42[2] = v64;
      __src[0] = 0;
      __src[1] = 0;
      v64 = 0;
      v44 = (v42 + 3);
    }

    *(v41 + 8) = v44;
  }

  if (*(a1 + 40) == 1)
  {
    v54 = *(v5 + 56);
    v55 = *(v5 + 32);
    v56 = *(v5 + 64);
    v57 = v7[91];
    if (!*&v57)
    {
      goto LABEL_70;
    }

    v58 = vcnt_s8(v57);
    v58.i16[0] = vaddlv_u8(v58);
    if (v58.u32[0] > 1uLL)
    {
      v59 = v56;
      if (*&v57 <= v56)
      {
        v59 = v56 % *&v57;
      }
    }

    else
    {
      v59 = (*&v57 - 1) & v56;
    }

    v60 = *(*&v7[90] + 8 * v59);
    if (!v60 || (v61 = *v60) == 0)
    {
LABEL_70:
      operator new();
    }

    while (1)
    {
      v62 = *(v61 + 1);
      if (v62 == v56)
      {
        if (*(v61 + 2) == v56)
        {
          v61[3] = v54 - v55;
          break;
        }
      }

      else
      {
        if (v58.u32[0] > 1uLL)
        {
          if (v62 >= *&v57)
          {
            v62 %= *&v57;
          }
        }

        else
        {
          v62 &= *&v57 - 1;
        }

        if (v62 != v59)
        {
          goto LABEL_70;
        }
      }

      v61 = *v61;
      if (!v61)
      {
        goto LABEL_70;
      }
    }
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }
}

void sub_2993AFBA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  operator delete(v10);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993AFBE4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F77108))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2993AFC30(void *a1, unint64_t a2)
{
  v3 = sub_2993AE810(a1, a2);
  if (!v3)
  {
    return;
  }

  v4 = a1[1];
  v5 = *v3;
  v6 = v3[1];
  v7 = vcnt_s8(v4);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    if (v6 >= *&v4)
    {
      v6 %= *&v4;
    }
  }

  else
  {
    v6 &= *&v4 - 1;
  }

  v8 = *(*a1 + 8 * v6);
  do
  {
    v9 = v8;
    v8 = *v8;
  }

  while (v8 != v3);
  if (v9 == a1 + 2)
  {
    goto LABEL_20;
  }

  v10 = v9[1];
  if (v7.u32[0] > 1uLL)
  {
    if (v10 >= *&v4)
    {
      v10 %= *&v4;
    }
  }

  else
  {
    v10 &= *&v4 - 1;
  }

  if (v10 != v6)
  {
LABEL_20:
    if (v5)
    {
      v11 = *(v5 + 8);
      if (v7.u32[0] > 1uLL)
      {
        v12 = *(v5 + 8);
        if (v11 >= *&v4)
        {
          v12 = v11 % *&v4;
        }
      }

      else
      {
        v12 = v11 & (*&v4 - 1);
      }

      if (v12 == v6)
      {
        goto LABEL_24;
      }
    }

    *(*a1 + 8 * v6) = 0;
    v5 = *v3;
  }

  if (v5)
  {
    v11 = *(v5 + 8);
LABEL_24:
    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v4)
      {
        v11 %= *&v4;
      }
    }

    else
    {
      v11 &= *&v4 - 1;
    }

    if (v11 != v6)
    {
      *(*a1 + 8 * v11) = v9;
      v5 = *v3;
    }
  }

  *v9 = v5;
  *v3 = 0;
  --a1[3];

  operator delete(v3);
}

uint64_t sub_2993AFD98(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = &unk_2A1F77138;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = 0u;
  v5 = (a1 + 32);
  *(a1 + 48) = 0u;
  *(a1 + 64) = *(a2 + 64);
  sub_2992157F8(a1 + 32, *(a2 + 40));
  for (i = *(a2 + 48); i; i = *i)
  {
    sub_2993ADFB0(v5, i + 2, i + 2);
  }

  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = *(a2 + 104);
  sub_2992157F8(a1 + 72, *(a2 + 80));
  for (j = *(a2 + 88); j; j = *j)
  {
    sub_2992EA748((a1 + 72), j + 2, j + 2);
  }

  return a1;
}

void sub_2993AFE90(_Unwind_Exception *a1)
{
  sub_29921ED28(v2);
  sub_29921ED28(v1);
  _Unwind_Resume(a1);
}

void *sub_2993AFEBC(void *a1)
{
  *a1 = &unk_2A1F77138;
  v2 = a1 + 4;
  sub_29921ED28((a1 + 9));
  sub_29921ED28(v2);
  return a1;
}

void sub_2993AFF10(void *a1)
{
  *a1 = &unk_2A1F77138;
  v1 = a1 + 4;
  sub_29921ED28((a1 + 9));
  sub_29921ED28(v1);

  JUMPOUT(0x29C29BFB0);
}

const char *sub_2993AFF84(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1 == 1)
  {
    return "";
  }

  if (v1 == 2)
  {
    v2 = *(*(a1 + 8) + 2);
    v3 = &off_29EF15F80;
  }

  else
  {
    v2 = *(*(a1 + 8) + 2);
    v3 = &off_29EF13DA0;
  }

  return v3[2 * v2];
}

__CFString *sub_2993AFFD4(uint64_t a1, int a2)
{
  v4 = sub_2993A1488(*(*(a1 + 8) + 2), *(a1 + 20));
  v5 = v4;
  if (*(a1 + 16))
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {

    return CFStringCreateCopy(0, v4);
  }

  else
  {
    Length = CFStringGetLength(v4);
    MutableCopy = CFStringCreateMutableCopy(0, Length + *(a1 + 16), v5);
    if (*(a1 + 16))
    {
      v10 = 0;
      do
      {
        CFStringAppend(MutableCopy, @"'");
        ++v10;
      }

      while (v10 < *(a1 + 16));
    }

    return MutableCopy;
  }
}

uint64_t sub_2993B00A0(void *a1)
{
  result = (*(*a1 + 64))(a1);
  if (result != 1)
  {
    return 0;
  }

  v3 = *(a1[1] + 2);
  if (v3 != 4 && v3 != 55 && v3 != 77)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2993B0110(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = *(*(a1 + 8) + 2);
  result = 1;
  if (v1 == 2)
  {
    if ((v2 - 143) < 2 || v2 == 334 || v2 == 757)
    {
      return result;
    }

    return 0;
  }

  if (v2 != 83 && v2 != 162 && v2 != 318)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2993B0168(int *a1, int a2, char a3)
{
  if (a2 == 2)
  {
    if ((a3 & 1) != 0 || (sub_2993B0110(a1) & 1) == 0)
    {
      return *(*(a1 + 1) + 4);
    }

    return 1;
  }

  if (a2 == 1)
  {
    if (a3)
    {
      return *(*(a1 + 1) + 4);
    }

    if (((*(*a1 + 96))(a1) & 1) == 0)
    {
      if ((*(*a1 + 64))(a1) != 9 && ((*(*a1 + 40))(a1) != 2 || (*(*a1 + 64))(a1) == 8))
      {
        return *(*(a1 + 1) + 4);
      }

      v6 = sub_2993A1488(*(*(a1 + 1) + 2), a1[5]);
      v7 = 0;
      while (1)
      {
        v8 = sub_2993A1488((*(*(a1 + 1) + 5) + v7), a1[5]);
        if (!CFStringHasPrefix(v8, v6))
        {
          break;
        }

        v9 = v7++;
        v5 = 5;
        if (v9 >= 4)
        {
          return v5;
        }
      }

      return v7;
    }

    return 1;
  }

  if (a2)
  {
    return *(*(a1 + 1) + 4);
  }

  if (a3 & 1) == 0 && (sub_2993B0110(a1))
  {
    return 1;
  }

  if (((*(*a1 + 64))(a1) & 0xFE) != 2)
  {
    return *(*(a1 + 1) + 4);
  }

  v4 = *(*(a1 + 1) + 2);
  v5 = 16;
  if (v4 != 3 && v4 != 54)
  {
    if (v4 == 76)
    {
      return 17;
    }

    return *(*(a1 + 1) + 4);
  }

  return v5;
}

uint64_t sub_2993B0354(uint64_t a1, unsigned int a2)
{
  if (((*(*a1 + 64))(a1) & 0xFE) != 2 || *(a1 + 20) == 2)
  {
    return (*(*(a1 + 8) + 5) + a2);
  }

  v6 = *(*(a1 + 8) + 2);
  switch(v6)
  {
    case 76:
      v7 = &unk_299427F14;
      return v7[a2 + 1];
    case 54:
      v7 = &unk_299427EF2;
      return v7[a2 + 1];
    case 3:
      v7 = &unk_299427ED0;
      return v7[a2 + 1];
  }

  return (*(*(a1 + 8) + 5) + a2);
}

uint64_t sub_2993B0410(uint64_t a1, unsigned int a2)
{
  if (((*(*a1 + 64))(a1) & 0xFE) == 2 && *(a1 + 20) != 2 && ((v7 = *(*(a1 + 8) + 2), v7 == 3) || v7 == 76 || v7 == 54))
  {
    result = (*(*a1 + 48))(a1, 0, 0);
    if (result)
    {
      v8 = result;
      v9 = 0;
      do
      {
        v10 = (*(*a1 + 56))(a1, v9) == a2;
        result = v10;
        ++v9;
      }

      while (!v10 && v9 < v8);
    }
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 5);
    return v5 <= a2 && *(v4 + 4) + v5 > a2;
  }

  return result;
}

uint64_t sub_2993B0540(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 4);
  if (!*(v2 + 4))
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = sub_2993A1488((*(*(a1 + 8) + 5) + v6), *(a1 + 20));
    if (v7)
    {
      v8 = v7;
      Length = CFStringGetLength(v7);
      if (CFStringGetCharacterAtIndex(v8, Length - 1) == a2)
      {
        break;
      }
    }

    if (++v6 >= v3)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_2993B05D4(void *a1)
{
  *a1 = &unk_2A1F77138;
  v2 = a1 + 4;
  sub_29921ED28((a1 + 9));
  sub_29921ED28(v2);
  return a1;
}

void sub_2993B0628(void *a1)
{
  *a1 = &unk_2A1F77138;
  v1 = a1 + 4;
  sub_29921ED28((a1 + 9));
  sub_29921ED28(v1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993B069C(void *a1)
{
  *a1 = &unk_2A1F77138;
  v2 = a1 + 4;
  sub_29921ED28((a1 + 9));
  sub_29921ED28(v2);
  return a1;
}

void sub_2993B06F0(void *a1)
{
  *a1 = &unk_2A1F77138;
  v1 = a1 + 4;
  sub_29921ED28((a1 + 9));
  sub_29921ED28(v1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993B0764(uint64_t a1, __int16 a2)
{
  v3 = *(*(a1 + 8) + 5) + a2;
  v4 = sub_2993A1488(v3, *(a1 + 20));
  if (!v4)
  {
    return -1;
  }

  v5 = v4;
  Length = CFStringGetLength(v4);
  if (CFStringGetCharacterAtIndex(v5, Length - 1) != *(a1 + 112))
  {
    return -1;
  }

  return v3;
}

CFStringRef sub_2993B07D0(uint64_t a1)
{
  v2 = sub_2993A1488(*(*(a1 + 8) + 2), *(a1 + 20));
  v3 = *MEMORY[0x29EDB8ED8];
  v4 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], (a1 + 112), 1);
  v5 = CFStringCreateWithFormat(v3, 0, @"%@%@", v2, v4);
  CFRelease(v4);
  return v5;
}

void *sub_2993B085C(void *a1)
{
  *a1 = &unk_2A1F77138;
  v2 = a1 + 4;
  sub_29921ED28((a1 + 9));
  sub_29921ED28(v2);
  return a1;
}

void sub_2993B08B0(void *a1)
{
  *a1 = &unk_2A1F77138;
  v1 = a1 + 4;
  sub_29921ED28((a1 + 9));
  sub_29921ED28(v1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993B0934(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A1F77468;
  a1[1] = 0;
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C80BDFB0063);
  }

  return a1;
}

void sub_2993B0990(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A1F77468;
  a1[1] = 0;
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C80BDFB0063);
  }

  JUMPOUT(0x29C29BFB0);
}

CFStringRef sub_2993B0A0C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return CFStringCreateWithCharacters(0, v1, v2);
}

void sub_2993B0B60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*v4);
  }

  v6 = *(v1 + 8);
  *v1 = v3;
  *(v1 + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C29BF70](v6, v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993B0B90(uint64_t a1)
{
  *a1 = &unk_2A1F77578;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 8);
  *a1 = &unk_2A1F77468;
  *(a1 + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C80BDFB0063);
  }

  return a1;
}

void sub_2993B0C1C(uint64_t a1)
{
  sub_2993B0B90(a1);

  JUMPOUT(0x29C29BFB0);
}

BOOL sub_2993B0C54(uint64_t a1, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  v5 = *(a1 + 63);
  if (v5 < 0)
  {
    v5 = *(a1 + 48);
  }

  if (Length != v5)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = *(a1 + 63);
    if (v7 < 0)
    {
      v8 = *(a1 + 48);
    }

    else
    {
      v8 = *(a1 + 63);
    }

    v9 = v6 >= v8;
    if (v6 >= v8)
    {
      break;
    }

    v10 = a1 + 40;
    if ((v7 & 0x80000000) != 0)
    {
      v10 = *(a1 + 40);
    }

    v11 = *(v10 + 2 * v6);
    CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v6++);
  }

  while (v11 == CharacterAtIndex);
  return v9;
}

void *sub_2993B0F20(void *a1)
{
  *a1 = &unk_2A1F77138;
  v2 = a1 + 4;
  sub_29921ED28((a1 + 9));
  sub_29921ED28(v2);
  return a1;
}

void sub_2993B0F74(void *a1)
{
  *a1 = &unk_2A1F77138;
  v1 = a1 + 4;
  sub_29921ED28((a1 + 9));
  sub_29921ED28(v1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993B11A0(void *a1)
{
  *a1 = &unk_2A1F77138;
  v2 = a1 + 4;
  sub_29921ED28((a1 + 9));
  sub_29921ED28(v2);
  return a1;
}

void sub_2993B11F4(void *a1)
{
  *a1 = &unk_2A1F77138;
  v1 = a1 + 4;
  sub_29921ED28((a1 + 9));
  sub_29921ED28(v1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993B1278(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A1F77468;
  a1[1] = 0;
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C80BDFB0063);
  }

  return a1;
}

void sub_2993B12D4(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A1F77468;
  a1[1] = 0;
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C80BDFB0063);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_2993B1370(uint64_t a1, _WORD *a2, uint64_t a3, _WORD *a4, uint64_t a5, __int16 a6)
{
  v10 = a6;
  sub_2993B13F8(__p, a2, a3, a4, a5);
  v7 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v7 = __p[1];
  }

  if (v7)
  {
    sub_2993B15F4((a1 + 16), __p, &v10);
  }

  if ((v9 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2993B13DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993B13F8(_BYTE *a1, _WORD *a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  if (a3 && a5)
  {
    __src = 0;
    v24 = 0;
    v25 = 0;
    sub_299218E20(&__src, a3 + a5 + 1);
    sub_29925493C(&v26, a2, &a2[a3], &__src);
    v10 = v24;
    if (v24 >= v25)
    {
      v12 = __src;
      v13 = v24 - __src;
      v14 = (v24 - __src) >> 1;
      if (v14 <= -2)
      {
        sub_299212A8C();
      }

      if (v25 - __src <= v14 + 1)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = v25 - __src;
      }

      v16 = 0x7FFFFFFFFFFFFFFFLL;
      if (v25 - __src < 0x7FFFFFFFFFFFFFFELL)
      {
        v16 = v15;
      }

      if (v16)
      {
        sub_299212A48(&__src, v16);
      }

      *(2 * v14) = 32;
      v11 = 2 * v14 + 2;
      memcpy(0, v12, v13);
      v17 = __src;
      __src = 0;
      v24 = v11;
      v25 = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v24 = 32;
      v11 = (v10 + 2);
    }

    v24 = v11;
    sub_29925493C(&v26, a4, &a4[a5], &__src);
    v19 = __src;
    v18 = v24;
    v20 = v24 - __src;
    v21 = (v24 - __src) >> 1;
    if (v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_299212A30();
    }

    if (v21 >= 0xB)
    {
      if ((v21 | 3) == 0xB)
      {
        v22 = 13;
      }

      else
      {
        v22 = (v21 | 3) + 1;
      }

      sub_299212A48(a1, v22);
    }

    a1[23] = v20 >> 1;
    if (v18 != v19)
    {
      memmove(a1, v19, v20);
      v19 = __src;
    }

    *&a1[2 * v21] = 0;
    if (v19)
    {
      v24 = v19;
      operator delete(v19);
    }
  }

  else
  {
    a1[23] = 0;
    *a1 = 0;
  }
}

void sub_2993B15D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993B15F4(void *a1, uint64_t a2, __int16 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29922C89C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v6 = *a3;
  operator new();
}

void sub_2993B1920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993B193C(uint64_t a1)
{
  sub_2993B1DE4((a1 + 24));
  if (*(a1 + 72))
  {
    sub_299274058(a1 + 48, *(a1 + 64));
    *(a1 + 64) = 0;
    v2 = *(a1 + 56);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*(a1 + 48) + 8 * i) = 0;
      }
    }

    *(a1 + 72) = 0;
  }
}

uint64_t sub_2993B19A0(uint64_t a1, _WORD *a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  v30[0] = a2;
  v30[1] = a3;
  v29[0] = a4;
  v29[1] = a5;
  sub_2993B13F8(__p, a2, a3, a4, a5);
  v6 = v28;
  if ((v28 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  if (!v6)
  {
    v15 = 0;
    if ((v28 & 0x80) != 0)
    {
      goto LABEL_27;
    }

    return v15;
  }

  v8 = **(a1 + 88);
  v7 = (*(**(a1 + 8) + 232))(*(a1 + 8));
  LODWORD(v8) = sub_299322E10(v8, v7);
  if (*sub_299237120())
  {
    v8 = v8;
  }

  else
  {
    v8 = v8 & 0xFFFFEFFF;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v9 = sub_29923AF34(a1 + 48, __p);
  v10 = *(a1 + 56);
  if (!*&v10)
  {
    goto LABEL_25;
  }

  v11 = v9;
  v12 = vcnt_s8(v10);
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.u32[0];
  if (v12.u32[0] > 1uLL)
  {
    v14 = v9;
    if (v9 >= *&v10)
    {
      v14 = v9 % *&v10;
    }
  }

  else
  {
    v14 = (*&v10 - 1) & v9;
  }

  v16 = *(*(a1 + 48) + 8 * v14);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_25:
    *(v24 + 12) = 0;
    v19 = *(a1 + 8);
    v22[0] = MEMORY[0x29EDCA5F8];
    v22[1] = 0x40000000;
    v22[2] = sub_2993B1D00;
    v22[3] = &unk_29EF21EE8;
    v22[4] = &v23;
    sub_2993E4D48(v19, v30, v29, v8, v22);
  }

  while (1)
  {
    v18 = *(v17 + 1);
    if (v11 == v18)
    {
      break;
    }

    if (v13 > 1)
    {
      if (v18 >= *&v10)
      {
        v18 %= *&v10;
      }
    }

    else
    {
      v18 &= *&v10 - 1;
    }

    if (v18 != v14)
    {
      goto LABEL_25;
    }

LABEL_24:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_25;
    }
  }

  if (!sub_29923AF78(a1 + 48, v17 + 8, __p))
  {
    goto LABEL_24;
  }

  v31 = __p;
  v21 = sub_2993B1EC0((a1 + 48), __p, &v31);
  if (*(a1 + 24) != *(v21 + 5))
  {
    operator new();
  }

  v15 = *(*(v21 + 5) + 40);
  *(v24 + 12) = v15;
  _Block_object_dispose(&v23, 8);
  if ((v28 & 0x80) != 0)
  {
LABEL_27:
    operator delete(__p[0]);
  }

  return v15;
}

void sub_2993B1CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  operator delete(v24);
  _Block_object_dispose(&a15, 8);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_2993B1D1C(void *a1)
{
  *a1 = &unk_2A1F776D8;
  v2 = a1 + 3;
  sub_2992751B4((a1 + 6));
  sub_2993B1DE4(v2);
  return a1;
}

void sub_2993B1D70(void *a1)
{
  *a1 = &unk_2A1F776D8;
  v1 = a1 + 3;
  sub_2992751B4((a1 + 6));
  sub_2993B1DE4(v1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993B1DE4(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = *(v2 + 8);
      sub_299273FB8(a1, v2);
      v2 = v5;
    }
  }
}

uint64_t sub_2993B1E44(uint64_t a1, unint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1065353216;
  sub_2992157F8(a1 + 32, a2);
  return a1;
}

void sub_2993B1EA4(_Unwind_Exception *a1)
{
  sub_2992751B4(v2 + 32);
  sub_2993B1DE4(v1);
  _Unwind_Resume(a1);
}

unsigned __int16 *sub_2993B1EC0(void *a1, unsigned __int16 *a2, __int128 **a3)
{
  v5 = sub_29923AF34(a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = *(v12 + 1);
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_29923AF78(a1, v12 + 8, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_2993B213C(uint64_t a1, char *__s)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_2992BC434(__s, "r", 1, v11);
  v4 = v11[0];
  v11[0] = 0uLL;
  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  if (v5)
  {
    sub_2991A893C(v5);
    if (*(&v11[0] + 1))
    {
      sub_2991A893C(*(&v11[0] + 1));
    }
  }

  v6 = *(a1 + 16);
  v7 = *v6;
  v8 = **v6;
  if (v8 == 1)
  {
    *(a1 + 32) = *(v7 + 4);
    *(a1 + 8) = v7 + *(v7 + 8);
    operator new[]();
  }

  v9 = sub_29930AF10();
  sub_29930B600(v9, "Syllable trie file %s is incompatible (version %d, expected version %d)", __s, v8, 1);
  exception = __cxa_allocate_exception(0x20uLL);
  sub_2991C6CA8(v11, __s);
  sub_2992BCE60(exception, 6, v11);
  __cxa_throw(exception, &unk_2A1F6BA60, sub_2992BCE00);
}

uint64_t *sub_2993B2378(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x20C8093837F09);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_2991A893C(v3);
  }

  return a1;
}

unsigned __int16 *sub_2993B23C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (a4 > a3)
  {
    v6 = **a1;
    v7 = *(a1 + 32);
    v8 = (a2 + 2 * a3);
    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      if (v10 < v7 || v9 > *(a1 + 33))
      {
        break;
      }

      v6 = sub_2993B2448(a1, v6, v9);
      if (v6)
      {
        if (--v4)
        {
          continue;
        }
      }

      return v6;
    }
  }

  return 0;
}

unsigned __int16 *sub_2993B2448(uint64_t a1, unsigned __int16 *a2, int a3)
{
  if (!a2 || *(a1 + 32) > a3 || *(a1 + 33) < a3)
  {
    return 0;
  }

  v3 = *a1;
  if (**a1 == a2)
  {
    v5 = *(*(a1 + 8) + 2 * (a3 - *(a1 + 32)));
  }

  else
  {
    v4 = 0;
    v5 = -1;
    while (*(a2 + 7) > v4)
    {
      v6 = *a2 + v4;
      if (*(a1 + 40) <= v6)
      {
        break;
      }

      if (*(v3[v6] + 9) == a3)
      {
        v5 = *a2 + v4;
      }

      if (*(v3[v6] + 9) >= a3)
      {
        break;
      }

      ++v4;
    }
  }

  if (v5 == 0xFFFF)
  {
    return 0;
  }

  else
  {
    return v3[v5];
  }
}

unsigned __int16 *sub_2993B24F4(unsigned __int16 ***a1, unsigned int a2, int a3)
{
  v5 = **a1;
  if (a3 == 2)
  {
    v8 = 0;
    v9 = &off_29EF15F80;
  }

  else
  {
    if (a3 == 1)
    {
      v6 = (&off_29EF19DC0 + 2 * a2);
      v7 = 2 * v6[1];
      v8 = 1;
      goto LABEL_7;
    }

    v8 = 0;
    v9 = &off_29EF13DA0;
  }

  v6 = &v9[2 * a2];
  v7 = v6[1];
LABEL_7:
  v10 = v7 >> v8;
  if (v7 >> v8)
  {
    v11 = 0;
    v12 = *v6;
    v13 = v8;
    while (1)
    {
      v14 = v11 << v13;
      if (v13)
      {
        v15 = *&v12[v14];
      }

      else
      {
        v15 = v12[v14];
      }

      if (a3 != 1)
      {
        goto LABEL_25;
      }

      if (v15 <= 0x2C9u)
      {
        if (v15 == 711)
        {
          LOBYTE(v15) = 51;
          goto LABEL_25;
        }

        if (v15 == 713)
        {
          LOBYTE(v15) = 49;
          goto LABEL_25;
        }
      }

      else
      {
        switch(v15)
        {
          case 0x2D9u:
            LOBYTE(v15) = 53;
            goto LABEL_25;
          case 0x2CBu:
            LOBYTE(v15) = 52;
            goto LABEL_25;
          case 0x2CAu:
            LOBYTE(v15) = 50;
            goto LABEL_25;
        }
      }

      LOBYTE(v15) = v15 + 49;
LABEL_25:
      v5 = sub_2993B2448(a1, v5, v15);
      if (v5)
      {
        if (v10 != ++v11)
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

uint64_t sub_2993B263C(unsigned __int16 ***a1, unsigned __int16 *a2, uint64_t a3, int a4)
{
  v5 = **a1;
  if (!a3)
  {
    return v5[1];
  }

  v8 = 2 * a3;
  while (1)
  {
    v9 = *a2;
    if (a4 != 1)
    {
      goto LABEL_16;
    }

    if (*a2 <= 0x2C9u)
    {
      if (v9 == 711)
      {
        LOBYTE(v9) = 51;
        goto LABEL_16;
      }

      if (v9 == 713)
      {
        LOBYTE(v9) = 49;
        goto LABEL_16;
      }
    }

    else
    {
      switch(v9)
      {
        case 729:
          LOBYTE(v9) = 53;
          goto LABEL_16;
        case 715:
          LOBYTE(v9) = 52;
          goto LABEL_16;
        case 714:
          LOBYTE(v9) = 50;
          goto LABEL_16;
      }
    }

    LOBYTE(v9) = v9 + 49;
LABEL_16:
    v10 = sub_2993B2448(a1, v5, v9);
    if (!v10)
    {
      return 0xFFFFLL;
    }

    v5 = v10;
    ++a2;
    v8 -= 2;
    if (!v8)
    {
      return v5[1];
    }
  }
}

uint64_t sub_2993B2710(int a1)
{
  switch(a1)
  {
    case 5:
      return sub_2993B2884();
    case 2:
      return sub_2993B27E0();
    case 1:
      return sub_2993B273C();
  }

  return 0;
}

uint64_t sub_2993B273C()
{
  if ((atomic_load_explicit(&qword_2A145FA58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FA58))
  {
    operator new();
  }

  return qword_2A145FA50;
}

uint64_t sub_2993B27E0()
{
  if ((atomic_load_explicit(&qword_2A145FA68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FA68))
  {
    operator new();
  }

  return qword_2A145FA60;
}

uint64_t sub_2993B2884()
{
  if ((atomic_load_explicit(&qword_2A145FA78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FA78))
  {
    operator new();
  }

  return qword_2A145FA70;
}

_WORD *sub_2993B2928(uint64_t a1, _WORD *a2)
{
  if (!a2)
  {
    return *sub_2992FE060();
  }

  result = a2;
  v3 = *a2;
  if (*a2)
  {
    v4 = a2 + 1;
    do
    {
      if (v3 == 44)
      {
        result = v4;
      }

      v5 = *v4++;
      v3 = v5;
    }

    while (v5);
  }

  return result;
}

_WORD *sub_2993B2990(uint64_t a1, _WORD *a2)
{
  if (!a2)
  {
    return *sub_2992FE060();
  }

  result = a2;
  v3 = *a2;
  if (*a2)
  {
    v4 = a2;
    do
    {
      if (v3 == 44)
      {
        break;
      }

      v5 = v4[1];
      ++v4;
      v3 = v5;
    }

    while (v5);
  }

  return result;
}

__int16 *sub_2993B29E8(uint64_t a1, __int16 *a2, int a3)
{
  if (!a2)
  {
    return *sub_2992FE060();
  }

  v3 = *a2;
  if (!*a2)
  {
    return *sub_2992FE060();
  }

  if (a3)
  {
    result = a2;
  }

  else
  {
    result = 0;
  }

  v5 = a3 ^ 1;
  v6 = a2 + 1;
  while (v3 != 44)
  {
LABEL_10:
    v7 = *v6++;
    v3 = v7;
    ++a2;
    if (!v7)
    {
      return *sub_2992FE060();
    }
  }

  if (v5)
  {
    v5 = 0;
    result = v6;
    goto LABEL_10;
  }

  v8 = result ? a2 - result : 0;
  if (!v8 || v8 == 1 && *result == 42)
  {
    return *sub_2992FE060();
  }

  return result;
}

_WORD *sub_2993B2A8C(uint64_t a1, _WORD *a2, int a3)
{
  if (!a2)
  {
    return *sub_2992FE060();
  }

  if (a3 == 1)
  {
    result = a2;
  }

  else
  {
    result = 0;
  }

  v4 = *a2;
  if (*a2)
  {
    v5 = a3 != 1;
    v6 = a2 + 1;
    do
    {
      if (v4 == 44)
      {
        if (!v5)
        {
          return result;
        }

        v5 = 0;
        result = v6;
      }

      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
  }

  return result;
}

__int16 *sub_2993B2B04(uint64_t a1, __int16 *a2, int a3)
{
  if (!a2)
  {
    return *sub_2992FE060();
  }

  v3 = *a2;
  if (!*a2)
  {
    return *sub_2992FE060();
  }

  if (a3)
  {
    result = a2;
  }

  else
  {
    result = 0;
  }

  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  v6 = a2 + 1;
  while (v3 != 44)
  {
LABEL_13:
    v7 = *v6++;
    v3 = v7;
    ++a2;
    if (!v7)
    {
      return *sub_2992FE060();
    }
  }

  if (v5)
  {
    --v5;
    result = v6;
    goto LABEL_13;
  }

  v8 = result ? a2 - result : 0;
  if (!v8 || v8 == 1 && *result == 42)
  {
    return *sub_2992FE060();
  }

  return result;
}

_WORD *sub_2993B2BAC(uint64_t a1, _WORD *a2)
{
  if (!a2)
  {
    return *sub_2992FE060();
  }

  result = a2;
  v3 = *a2;
  if (*a2)
  {
    v4 = a2;
    do
    {
      if (v3 == 44)
      {
        break;
      }

      v5 = v4[1];
      ++v4;
      v3 = v5;
    }

    while (v5);
  }

  return result;
}

__int16 *sub_2993B2C04(uint64_t a1, __int16 *a2, int a3)
{
  if (!a2)
  {
    return *sub_2992FE060();
  }

  v3 = *a2;
  if (!*a2)
  {
    return *sub_2992FE060();
  }

  if (a3)
  {
    result = a2;
  }

  else
  {
    result = 0;
  }

  v5 = a3 ^ 1;
  v6 = a2 + 1;
  while (v3 != 44)
  {
LABEL_10:
    v7 = *v6++;
    v3 = v7;
    ++a2;
    if (!v7)
    {
      return *sub_2992FE060();
    }
  }

  if (v5)
  {
    v5 = 0;
    result = v6;
    goto LABEL_10;
  }

  v8 = result ? a2 - result : 0;
  if (!v8 || v8 == 1 && *result == 42)
  {
    return *sub_2992FE060();
  }

  return result;
}

uint64_t *sub_2993B2CF0(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2993B2D6C(result, a4);
  }

  return result;
}

void sub_2993B2D50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993B2D6C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_299236FB8(a1, a2);
  }

  sub_2993B2DA8();
}

void sub_2993B2DC0(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 256;
  sub_29930B9C8(a1 + 32);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 256;
  sub_29930B9C8(a1 + 88);
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  operator new();
}

void sub_2993B2F94(_Unwind_Exception *a1)
{
  v6 = v3;
  MEMORY[0x29C29BFB0](v6, 0x10F1C40BAA45842);
  MEMORY[0x29C29BFB0](v4, 0x1020C40A95220FALL);
  v8 = v1[21];
  if (v8)
  {
    v1[22] = v8;
    operator delete(v8);
  }

  v9 = *v5;
  if (*v5)
  {
    v1[19] = v9;
    operator delete(v9);
  }

  sub_29930F2E8(v2);
  sub_29930F2E8((v1 + 4));
  _Unwind_Resume(a1);
}

char *sub_2993B3054(void *a1)
{
  v2 = *(a1[1] + 8);
  if (v2)
  {
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
  }

  v3 = *(a1[2] + 8);
  if (v3)
  {
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
  }

  v4 = *(a1[3] + 8);
  if (v4)
  {
    *(v4 + 80) = 0;
    *(v4 + 88) = 0;
  }

  v5 = *(*a1 + 64);
  if (v5 && ((*(*v5 + 24))(v5) & 1) == 0)
  {
    v10 = a1[1];
    v11 = *(*a1 + 64) + 48;
    if (*v10)
    {
      (*(**v10 + 80))(*v10, v11);
      v10 = a1[1];
    }

    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 0x40000000;
    v14[2] = sub_2993B3E90;
    v14[3] = &unk_29EF21F08;
    v14[4] = a1;
    v14[5] = v11;
    v7 = v10[1];
    if (*(v7 + 80))
    {
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
    }

    result = sub_2993B3E90(v14);
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A1461530, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461530))
    {
      v13 = 1;
      qword_2A1461540 = 0;
      unk_2A1461548 = 0;
      qword_2A1461538 = 0;
      sub_2991EB9C8(&qword_2A1461538, &v13, v14, 1uLL);
      __cxa_atexit(sub_2993B3F68, &qword_2A1461538, &dword_29918C000);
      __cxa_guard_release(&qword_2A1461530);
    }

    v6 = a1[1];
    if (*v6)
    {
      (*(**v6 + 80))(*v6, &qword_2A1461538);
      v6 = a1[1];
    }

    v7 = v6[1];
    if (*(v7 + 80))
    {
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      v6 = a1[1];
    }

    v8 = *v6;
    result = sub_2993B3D30((a1 + 4));
    *(result + 2) = 0;
    *(result + 3) = v8;
    *(result + 4) = 0;
    *(result + 1) = 1;
    result[8] = 1;
  }

  v12 = *(v7 + 80);
  *(v7 + 80) = v12 + 1;
  *(v7 + 8 * v12) = result;
  return result;
}

void *sub_2993B32F0(void *a1)
{
  sub_2993B3398(a1);
  v2 = a1[1];
  if (v2)
  {
    v3 = sub_2993B7A50(v2);
    MEMORY[0x29C29BFB0](v3, 0x1020C40A95220FALL);
  }

  v4 = a1[2];
  if (v4)
  {
    v5 = sub_2993B7A50(v4);
    MEMORY[0x29C29BFB0](v5, 0x1020C40A95220FALL);
  }

  v6 = a1[3];
  if (v6)
  {
    v7 = sub_2993B7A50(v6);
    MEMORY[0x29C29BFB0](v7, 0x1020C40A95220FALL);
  }

  v8 = a1[21];
  if (v8)
  {
    a1[22] = v8;
    operator delete(v8);
  }

  v9 = a1[18];
  if (v9)
  {
    a1[19] = v9;
    operator delete(v9);
  }

  sub_29930F2E8((a1 + 11));
  sub_29930F2E8((a1 + 4));
  return a1;
}

char *sub_2993B3398(void *a1)
{
  sub_2993B4140(a1);
  v2 = sub_29930AF10();
  sub_29930B514(v2, 0x800u, "===RESET===\n");
  sub_29930B9C8((a1 + 4));
  sub_29930B9C8((a1 + 11));
  sub_2993B4214((a1 + 21));
  sub_2993B42AC((a1 + 18));

  return sub_2993B3054(a1);
}

void sub_2993B34DC(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2993B4364();
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
      sub_29920B86C(a1, v10);
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

void sub_2993B37AC(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v3, 0x10F1C4047374A1ELL);
  MEMORY[0x29C29BFB0](v1, v2);
  _Unwind_Resume(a1);
}

void sub_2993B3908(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v3, 0x10F1C40BBC815BBLL);
  MEMORY[0x29C29BFB0](v1, v2);
  _Unwind_Resume(a1);
}

void sub_2993B3A58(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v3, 0x10F1C40D0F3DA69);
  MEMORY[0x29C29BFB0](v1, v2);
  _Unwind_Resume(a1);
}

void sub_2993B3A90(uint64_t **a1, uint64_t a2, uint64_t a3, void **a4, int a5, char a6)
{
  if (a5)
  {
    operator new();
  }

  operator new();
}

void sub_2993B3CF8(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v3, 0x10F1C40863EB520);
  MEMORY[0x29C29BFB0](v1, v2);
  _Unwind_Resume(a1);
}

char *sub_2993B3D30(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = &v4[-v2];
    if (0xCCCCCCCCCCCCCCCDLL * (&v4[-v2] >> 3) != v3)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v5 = 40 * *(a1 + 40);
  }

  v6 = malloc_type_malloc(v5, 0x10600404FD43036uLL);
  v4 = v6;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 >= v7)
  {
    v10 = *a1;
    v11 = v8 - *a1;
    v12 = v11 >> 3;
    v13 = (v11 >> 3) + 1;
    if (v13 >> 61)
    {
      sub_2993B4364();
    }

    v14 = v7 - v10;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (!(v15 >> 61))
      {
        operator new();
      }

      sub_29919600C();
    }

    *(8 * v12) = v6;
    v9 = 8 * v12 + 8;
    memcpy(0, v10, v11);
    *a1 = 0;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v8 = v6;
    v9 = (v8 + 1);
  }

  *(a1 + 8) = v9;
  *(a1 + 24) = v4;
LABEL_19:
  ++*(a1 + 48);
  *(a1 + 32) = v4 + 40;
  return v4;
}

char *sub_2993B3E90(uint64_t a1)
{
  v2 = *(a1 + 32);
  LMLanguageModelJointProbability();
  v4 = -v3;
  v5 = **(v2 + 8);
  v6 = *(a1 + 40);
  v7 = sub_2993B3D30(v2 + 32);
  v8 = v7;
  v9 = *v6;
  v10 = v6[1] - *v6;
  *(v7 + 2) = v4;
  *(v7 + 3) = v5;
  *(v7 + 4) = 0;
  if ((v10 >> 2) > 2)
  {
    *v7 = *&v9[v10 - 8];
    v7[8] = 2;
  }

  else
  {
    v11 = v10 >> 2;
    memcpy(&v7[-4 * (v10 >> 2) + 8], v9, v10);
    v8[8] = v11;
  }

  return v8;
}

uint64_t sub_2993B3F68(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

char *sub_2993B3F9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = **(v1 + 8);
  result = sub_2993B3D30(v1 + 32);
  *(result + 2) = 0;
  *(result + 3) = v2;
  *(result + 4) = 0;
  *(result + 1) = 1;
  result[8] = 1;
  return result;
}

char *sub_2993B3FE0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = &v4[-v2];
    if (0xAAAAAAAAAAAAAAABLL * (&v4[-v2] >> 5) != v3)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v5 = 96 * *(a1 + 40);
  }

  v6 = malloc_type_malloc(v5, 0x1060040C2C571E4uLL);
  v4 = v6;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 >= v7)
  {
    v10 = *a1;
    v11 = v8 - *a1;
    v12 = v11 >> 3;
    v13 = (v11 >> 3) + 1;
    if (v13 >> 61)
    {
      sub_2993B4364();
    }

    v14 = v7 - v10;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (!(v15 >> 61))
      {
        operator new();
      }

      sub_29919600C();
    }

    *(8 * v12) = v6;
    v9 = 8 * v12 + 8;
    memcpy(0, v10, v11);
    *a1 = 0;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v8 = v6;
    v9 = (v8 + 1);
  }

  *(a1 + 8) = v9;
  *(a1 + 24) = v4;
LABEL_19:
  ++*(a1 + 48);
  *(a1 + 32) = v4 + 96;
  return v4;
}

char *sub_2993B4140(uint64_t a1)
{
  result = sub_29930AF10();
  if (*result == 1 && (result[9] & 8) != 0)
  {
    v3 = sub_29930AF10();
    sub_29930B514(v3, 0x800u, "===cummulative stats since last reset===\n");
    v4 = sub_29930AF10();
    sub_29930B514(v4, 0x800u, "hypotheses created = %ld\n", *(a1 + 80));
    v5 = sub_29930AF10();
    sub_29930B514(v5, 0x800u, "hypothesis sets created = %ld\n", *(a1 + 136));
    v6 = sub_29930AF10();
    sub_29930B514(v6, 0x800u, "words created = %ld\n", (*(a1 + 176) - *(a1 + 168)) >> 3);
    v7 = sub_29930AF10();
    return sub_29930B514(v7, 0x800u, "word groups created = %ld\n", (*(a1 + 152) - *(a1 + 144)) >> 3);
  }

  return result;
}

void sub_2993B4214(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    do
    {
      if (*v2)
      {
        v4 = sub_2993B7A50(*v2);
        MEMORY[0x29C29BFB0](v4, 0x1020C40A95220FALL);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v2)
  {

    operator delete(v2);
  }
}

void sub_2993B42AC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    do
    {
      v4 = *v2;
      if (*v2)
      {
        v5 = *(v4 + 40);
        if (v5)
        {
          *(v4 + 48) = v5;
          operator delete(v5);
        }

        v6 = sub_2993BA1E4(v4);
        MEMORY[0x29C29BFB0](v6, 0x10E0C40A81385DBLL);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v2)
  {

    operator delete(v2);
  }
}

uint64_t sub_2993B437C(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = *(a1 + 80);
  if (v11 > a2)
  {
    *(a1 + 80) = a2;
    v11 = a2;
  }

  if (!v11)
  {
    v15 = (*(*(a6 + 8) + 16))(a4);
    v16 = *(a1 + 80);
    *(a1 + 8 * v16) = v15;
    *(a1 + 80) = v16 + 1;
LABEL_12:
    *(a1 + 88) = a3;
    return 1;
  }

  if (v11 < a2 || *(*(a1 + 8 * v11 - 8) + 16) > a4.n128_f64[0])
  {
    v12 = (*(*(a6 + 8) + 16))(a4);
    v13 = a7 ^ 1u;
    v14 = *(a1 + 80);
    if (v14 > v13)
    {
      while (*(*(a1 + 8 * v13) + 16) <= *(v12 + 16))
      {
        if (v14 == ++v13)
        {
          goto LABEL_9;
        }
      }

      v18 = v14 - (v14 == a2);
      if ((v18 - 1) >= v13)
      {
        v19 = v18;
        do
        {
          *(a1 + 8 * v19) = *(a1 + 8 * v19 - 8);
          v20 = v19 - 2;
          --v19;
        }

        while (v20 >= v13);
      }

      *(a1 + 8 * v13) = v12;
      *(a1 + 80) = v18 + 1;
      if (v13)
      {
        return 1;
      }

      goto LABEL_12;
    }

LABEL_9:
    if (v14 < a2)
    {
      *(a1 + 80) = v14 + 1;
      *(a1 + 8 * v14) = v12;
      return 1;
    }
  }

  return 0;
}

void sub_2993B44C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v19 = a1;
  v5 = *(a5 + 16);
  v6 = *(a5 + 40);
  if (*(a5 + 32) >= 0xAuLL)
  {
    v7 = 10;
  }

  else
  {
    v7 = *(a5 + 32);
  }

  v8 = a3[10];
  if (v6)
  {
    v9 = *(a5 + 16);
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v11 = a3;
    v13 = *(a5 + 48);
    v14 = 1.79769313e308;
    do
    {
      v15 = *v11;
      v16 = *(*v11 + 16);
      if (v13 && *(v13 + 408) == 50 && *(v13 + 416) <= v16 || v9 && *(v6 + 408) == 50 && *(v6 + 416) <= v16)
      {
        break;
      }

      if (v14 == 1.79769313e308)
      {
        v14 = v16 + 2.0;
      }

      else if (v16 > v14)
      {
        return;
      }

      v18 = sub_2993B462C(a1, *v11, a2, a5);
      if (!v9 || *(v6 + 408) != 50 || *(v6 + 416) > v18)
      {
        v17.n128_f64[0] = v18;
        a1 = sub_2993B437C(v19, v7, v15, v17, a2, a5, v5);
        if (a1)
        {
          if (v6)
          {
            a1 = sub_2993651F0(v6 + 8, v18);
          }
        }
      }

      ++v11;
      --v8;
    }

    while (v8);
  }
}

double sub_2993B462C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 8) == 3)
  {
    return *(a2 + 16);
  }

  v8 = *(*(a4 + 24) + 72);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (*(v9 + 5) != 1 || (v10 = *(v9 + 40)) == 0)
    {
      v10 = *(v9 + 32);
    }
  }

  else
  {
    v10 = 0;
  }

  v5 = sub_2992F5B3C(a2, a3, v10) + *(a2 + 16) + 0.25;
  v11 = *(a3 + 16);
  v12 = (*(*a3 + 24))(a3);
  if (v11)
  {
    v13 = *v11;
    if (!*v11)
    {
      v15 = *(v11 + 9);
      goto LABEL_20;
    }

    v14 = *(v13 + 8);
    v15 = *(v11 + 9);
    if (v14 < 4)
    {
      goto LABEL_20;
    }

    if (v15 - 9) < 9 && ((0x127u >> (v15 - 9)))
    {
      v16 = 0;
    }

    else
    {
      if (v14 >= 6)
      {
        v5 = v5 + -4.0;
        goto LABEL_20;
      }

      v16 = 1;
    }

    if ((v16 & (*(*a3 + 88))(a3)) == 0)
    {
      v5 = v5 + -2.0;
    }

LABEL_20:
    if (v12 == 502)
    {
      v5 = v5 + 1.7;
    }

    v17 = *(*(a4 + 24) + 72);
    if (v17)
    {
      v18 = *(v17 + 8);
      if (*(v18 + 5) != 1 || (v19 = *(v18 + 40)) == 0)
      {
        v19 = *(v18 + 32);
      }
    }

    else
    {
      v19 = 0;
    }

    v28 = 0;
    v20 = (*(*a3 + 32))(a3, &v28);
    if (v28)
    {
      v21 = v20;
      v22 = 0;
      while (!sub_299384558(v19, *(v21 + 4 * v22)))
      {
        if (++v22 >= v28)
        {
          goto LABEL_31;
        }
      }

      v23 = 2.0;
    }

    else
    {
LABEL_31:
      if ((v15 - 10) >= 2)
      {
        if (v15 == 9)
        {
          for (i = *(a3 + 24); i != *(a3 + 32); ++i)
          {
            if (!*i)
            {
              goto LABEL_32;
            }
          }
        }

        goto LABEL_40;
      }

LABEL_32:
      v23 = -4.5;
    }

    v5 = v5 + v23;
LABEL_40:
    if (v15 == 16)
    {
      v5 = v5 + 1.5;
    }

    if (v13 && (*(v13 + 40) & 0x10) != 0)
    {
      v5 = v5 + (1.0 - *(v13 + 56)) * 4.0;
    }
  }

  if (v12 == 2)
  {
    v25 = *(*(a2 + 24) + 16);
    if (v25 && (*(v25 + 28) & 0x20) != 0)
    {
      return v5 + 1.6;
    }

    else
    {
      v26 = *(a2 + 32);
      if (v26 && (*(**v26 + 24))() == 1 && !*(*(a2 + 24) + 8))
      {
        return v5 + -1.0;
      }
    }
  }

  return v5;
}

void sub_2993B4938(uint64_t *__return_ptr a1@<X8>, CFLocaleIdentifier localeIdentifier@<X2>, const __CFURL *a3@<X0>, const __CFString *a4@<X1>, Boolean a5@<W3>)
{
  cf = 0;
  if (a3)
  {
    PathComponent = CFURLCopyLastPathComponent(a3);
    v12 = PathComponent;
    if (CFStringCompare(PathComponent, a4, 0))
    {
      cf = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x29EDB8ED8], a3, a4, a5);
      if (!PathComponent)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    sub_2992BF1BC(&cf, a3);
    if (PathComponent)
    {
LABEL_8:
      CFRelease(PathComponent);
    }
  }

  else
  {
    v10 = sub_29936D2B8(localeIdentifier);
    v12 = v10;
    if (!v10)
    {
      *a1 = 0;
      goto LABEL_15;
    }

    cf = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x29EDB8ED8], v10, a4, a5);
    CFRelease(v10);
  }

LABEL_9:
  v12 = 0;
  if (CFURLResourceIsReachable(cf, &v12))
  {
    v11 = cf;
    cf = 0;
  }

  else
  {
    if (v12)
    {
      CFRelease(v12);
    }

    v11 = 0;
  }

  *a1 = v11;
LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2993B4A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_29920FE30(&a9, 0);
  sub_29920FE30(&a10, 0);
  _Unwind_Resume(a1);
}

void sub_2993B4AE4(const __CFURL *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  sub_2993B4938(&url, a3, a1, a2, 1u);
  v6 = url;
  if (url)
  {
    v7 = *MEMORY[0x29EDB8ED8];
    CFURLCreateCopyAppendingPathComponent(*MEMORY[0x29EDB8ED8], url, @"model.bin", 0);
    CFURLCreateCopyAppendingPathComponent(v7, v6, @"sp.model", 0);
    if (CFStringCompare(a3, @"ko", 1uLL))
    {
      if (CFStringCompare(a3, @"th", 1uLL))
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  *a4 = 0;
}

void sub_2993B51A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993B5350(const __CFURL *a1, const __CFString *a2, const __CFString *a3)
{
  sub_2993B4938(&v4, a3, a1, a2, 0);
  if (v4)
  {
    operator new();
  }

  operator new();
}

void sub_2993B53FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x29C29BFB0](v3, 0x10F2C4093187FD8);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993B5454(int a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v6 = sub_299225D3C(a2, kMecabraContextOptionPrivateMode);
    v7 = *MEMORY[0x29EDB8F00];
    v8 = v6 == *MEMORY[0x29EDB8F00];
    v9 = sub_299225D3C(a2, kMecabraContextOptionNoPruning);
    v10 = ((v8 & 1) << 18) | 0x800000;
    if (v9 != v7)
    {
      v10 = v8 << 18;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 | (2 * a1) & 0x4000;
  if (!a3)
  {
    v11 |= 2u;
  }

  if ((*&a1 & 0x200000) != 0)
  {
    return v11;
  }

  else
  {
    return v11 | 0x2000;
  }
}

uint64_t **sub_2993B550C(uint64_t **result)
{
  v1 = result[6];
  if ((result[7] - v1) >= 9)
  {
    v2 = result;
    result = *v1;
    if (*v1)
    {
      result = ((*result)[12])(result);
      if (result != 83)
      {
        v3 = v2[6];
        if ((v2[7] - v3) >= 9)
        {
          v4 = 1;
          while (1)
          {
            result = (*(*v3[v4] + 96))(v3[v4]);
            if (result == 83)
            {
              break;
            }

            ++v4;
            v3 = v2[6];
            if (v4 >= v2[7] - v3)
            {
              return result;
            }
          }

          sub_2992AC320(v2, v4, &v6);
          result = v6;
          if (v6)
          {
            v5 = (*v6)[2];

            return v5();
          }
        }
      }
    }
  }

  return result;
}

uint64_t **sub_2993B562C(uint64_t **result)
{
  v1 = result[7] - result[6];
  if (v1 >= 2)
  {
    v2 = v1 >= 5 ? 5 : result[7] - result[6];
    v3 = v1 - 1;
    v4 = v3 >= v2 ? v2 : v3;
    v5 = v4 >= 3 ? 3 : v4;
    if (v3)
    {
      v6 = result;
      v7 = 0;
      do
      {
        v8 = v7;
        while (*(v6[6][v8] + 154) == 1)
        {
          if (v2 == ++v8)
          {
            return result;
          }
        }

        if (v8 == -1)
        {
          break;
        }

        result = sub_2992AC5B4(v6, v8, v7++);
      }

      while (v7 != v5);
    }
  }

  return result;
}

void sub_2993B56E0(unint64_t a1, const __CFArray *a2, void *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = sub_2993652F8(0xFu);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = a1;
    _os_log_debug_impl(&dword_29918C000, v6, OS_LOG_TYPE_DEBUG, "%s nbest:", buf, 0xCu);
  }

  if (a3[1] != *a3)
  {
    v7 = 0;
    do
    {
      v8 = sub_2993652F8(0xFu);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
        v10 = *(*a3 + 4 * v7);
        *buf = 134218498;
        v12 = v7;
        v13 = 2112;
        v14 = ValueAtIndex;
        v15 = 2048;
        v16 = v10;
        _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "\tIndex: %zu candidate: %@ score: %f", buf, 0x20u);
      }

      ++v7;
    }

    while (v7 < (a3[1] - *a3) >> 2);
  }
}

void sub_2993B5860(void *a1)
{
  sub_29925E920(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993B5898(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v29 = *MEMORY[0x29EDCA608];
  (*(*a1 + 32))(&__p);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  (*(**(a1 + 1) + 144))(&v22);
  sub_2991ED2F4(&v22);
  if (a3 && *(a2 + 2 * a3 - 2) != 32)
  {
    v8 = a4[1];
    v11 = *(v8 - 4);
    v9 = v8 - 4;
    v10 = v11;
    if (a1[13] == v11)
    {
      a4[1] = v9;
    }

    else if (!sub_299358910(a1, v10))
    {
      v13 = (*(**(a1 + 1) + 512))(*(a1 + 1), v10);
      if (v12 >= v12 - 3)
      {
        v14 = v12 - 3;
      }

      else
      {
        v14 = v12;
      }

      *(a4[1] - 4) = (*(**(a1 + 1) + 504))(*(a1 + 1), v13, v14);
    }
  }

  v15 = sub_2993652F8(7u);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = sub_2993652F8(7u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = v24;
      v18 = __p;
      sub_29935858C(a4, " ", 1uLL, &v21);
      p_p = &__p;
      if (v17 < 0)
      {
        p_p = v18;
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v21;
      }

      else
      {
        v20 = v21.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v26 = p_p;
      v27 = 2080;
      v28 = v20;
      _os_log_debug_impl(&dword_29918C000, v16, OS_LOG_TYPE_DEBUG, "Context: input = [%s]: ids = [%s]", buf, 0x16u);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }
    }
  }

  if (v24 < 0)
  {
    operator delete(__p);
  }
}

void sub_2993B5B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  v21 = *v19;
  if (*v19)
  {
    *(v19 + 8) = v21;
    operator delete(v21);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993B5BEC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  sub_29939F510(*a2, v3);
  if (v3)
  {
    v4 = 2 * v3;
    v5 = v2;
    do
    {
      if (*v5 - 12593 >= 0x33)
      {
        break;
      }

      ++v5;
      v4 -= 2;
    }

    while (v4);
  }

  return v2;
}

uint64_t sub_2993B5C50(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F778C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2993B6F6C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  MEMORY[0x29C29BFB0](v21, 0x10E1C408D9C284ALL, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_2993B6FBC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v8 = 0;
  v11 = a6;
  v10 = 0;
  if (*(a1 + 24) >= 2uLL)
  {
    sub_2993B7024(a1, a7, &v11, &v10, a8, 1, a2, a3, __SPAIR64__(a5, a4));
    return v10;
  }

  return v8;
}

uint64_t sub_2993B7024(uint64_t a1, unint64_t a2, void *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a8)
  {
    v16 = *(a1 + 8);
    goto LABEL_32;
  }

  v12 = 0;
  v13 = HIDWORD(a9);
  while (1)
  {
    if (HIDWORD(a9) == 1)
    {
      v15 = *(a7 + v12);
      goto LABEL_12;
    }

    if (HIDWORD(a9) == 2 && (v12 & 1) == 0)
    {
      v14 = *(a7 + v12);
      if (a9)
      {
        if (v14 == 63)
        {
          if (!*(a7 + v12 + 1))
          {
            goto LABEL_20;
          }
        }

        else if (v14 == 42 && !*(a7 + v12 + 1))
        {
LABEL_38:
          v28 = a8 - v13;
          v29 = a7 + v13;

          return sub_2993B72E4(a1, a2, a3, a4, a5, a6, v29, v28, a9);
        }

        goto LABEL_14;
      }

      if (!*(a7 + v12))
      {
        break;
      }
    }

LABEL_14:
    v16 = *(a1 + 8);
    v17 = *(v16 + 8 * a6) + *(a7 + v12) + 1;
    if (*(v16 + 8 * v17 + 4) != a6)
    {
      return 0;
    }

    ++v12;
    ++v13;
    a6 = v17;
    if (a8 == v12)
    {
      LODWORD(a6) = v17;
LABEL_32:
      v25 = (v16 + 8 * *(v16 + 8 * a6));
      if (v25[1] == a6)
      {
        v26 = *v25;
        if (v26 < 0)
        {
          if (*a3)
          {
            --*a3;
          }

          else if (a2)
          {
            v30 = *a4;
            v31 = *a4 + 1;
            *a4 = v31;
            *(a5 + 24 * v30 + 8) = -v26;
            if (v31 >= a2)
            {
              return 1;
            }
          }

          else
          {
            ++*a4;
          }
        }
      }

      return 0;
    }
  }

  v15 = *(a7 + v12 + 1);
LABEL_12:
  if (v15 == 42)
  {
    goto LABEL_38;
  }

  if (!(2 * (v15 == 63)))
  {
    goto LABEL_14;
  }

LABEL_20:
  v32 = a8 - v13;
  LODWORD(v18) = *(*(a1 + 8) + 8 * a6);
  v19 = 256;
  while (1)
  {
    v18 = (v18 + 1);
    v20 = (*(a1 + 8) + 8 * v18);
    if (v20[1] == a6)
    {
      break;
    }

LABEL_29:
    v24 = v19-- != 0;
    if (v19 == 0 || !v24)
    {
      return 0;
    }
  }

  if (HIDWORD(a9) != 2)
  {
    v21 = 1;
    if (sub_2993B7024(a1, a2, a3, a4, a5, v18, a7 + v13, v32, a9 | 0x100000000))
    {
      return v21;
    }

    goto LABEL_29;
  }

  v22 = (*v20 + 1);
  v23 = 257;
  while (*(*(a1 + 8) + 8 * v22 + 4) != v18 || !sub_2993B7024(a1, a2, a3, a4, a5, v22, a7 + v13, v32, a9 | 0x200000000))
  {
    v22 = (v22 + 1);
    if (--v23 <= 1)
    {
      goto LABEL_29;
    }
  }

  return 1;
}

uint64_t sub_2993B72E4(uint64_t a1, unint64_t a2, void *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a6;
  if (!sub_2993B7024(a1, a2, a3, a4, a5, a6, a7, a8, a9))
  {
    v26 = a5;
    v27 = a7;
    v28 = a8;
    LODWORD(v19) = *(*(a1 + 8) + 8 * v11);
    v20 = 256;
    while (1)
    {
      v19 = (v19 + 1);
      v21 = (*(a1 + 8) + 8 * v19);
      v22 = v11;
      if (v21[1] == v11)
      {
        if (HIDWORD(a9) == 2)
        {
          v23 = (*v21 + 1);
          v24 = 257;
          while (*(*(a1 + 8) + 8 * v23 + 4) != v19 || !sub_2993B72E4(a1, a2, a3, a4, v26, v23, v27, v28, a9 | 0x200000000))
          {
            v23 = (v23 + 1);
            if (--v24 <= 1)
            {
              goto LABEL_14;
            }
          }

          return 1;
        }

        if (HIDWORD(a9) == 1)
        {
          v17 = 1;
          if (sub_2993B72E4(a1, a2, a3, a4, v26, v19, v27, v28, a9 | 0x100000000))
          {
            return v17;
          }
        }
      }

LABEL_14:
      v25 = v20-- != 0;
      v11 = v22;
      if (v20 == 0 || !v25)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_2993B744C(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, unsigned __int16 **a5, int a6, int a7, double a8)
{
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F778F8;
  *(a1 + 8) = 0;
  *(a1 + 24) = &unk_2A1F779F0;
  v12 = a3[1];
  v17 = *a3;
  v18 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a2[1];
  v15 = *a2;
  v16 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_299254548(a1 + 32, &v17, &v15, a4, a5);
  if (v16)
  {
    sub_2991A893C(v16);
  }

  if (v18)
  {
    sub_2991A893C(v18);
  }

  *(a1 + 112) = a8;
  *(a1 + 120) = a6;
  *(a1 + 124) = a7;
  return a1;
}

void sub_2993B7534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_2991A893C(a10);
  }

  if (a12)
  {
    sub_2991A893C(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993B7564(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return a1 + 32;
  }
}

uint64_t sub_2993B7574(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    sub_2992546AC(a1 + 32);
  }

  return v2;
}

uint64_t sub_2993B75A4(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = 8;
  if (v1[16])
  {
    v2 = 0;
  }

  result = *&v1[v2];
  if (!result)
  {
    return *v1;
  }

  return result;
}

uint64_t sub_2993B75CC(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = 8;
  if (v1[16])
  {
    v2 = 0;
  }

  result = *&v1[v2];
  if (!result)
  {
    return *v1;
  }

  return result;
}

uint64_t sub_2993B7600(uint64_t a1, uint64_t *a2, int a3, unsigned __int16 **a4, int a5)
{
  v8 = *a2;
  v7 = a2[1];
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F77B98;
  *(a1 + 8) = 0;
  *(a1 + 24) = &unk_2A1F77C90;
  v14 = v8;
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = 0;
  v13 = 0;
  sub_299254548(a1 + 32, &v14, &v12, a3, a4);
  if (v13)
  {
    sub_2991A893C(v13);
  }

  if (v15)
  {
    sub_2991A893C(v15);
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = a5;
  *(a1 + 124) = 1536;
  v9 = *(a1 + 80);
  *a1 = &unk_2A1F77A18;
  *(a1 + 24) = &unk_2A1F77B10;
  v10 = CFRetain(*v9);
  *(a1 + 136) = v10;
  *(a1 + 128) = CFStringCreateWithFormat(0, 0, @" %@", v10);
  return a1;
}

void sub_2993B7744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_2991A893C(a12);
  }

  if (a14)
  {
    sub_2991A893C(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993B7780(uint64_t a1)
{
  *a1 = &unk_2A1F77A18;
  *(a1 + 24) = &unk_2A1F77B10;
  CFRelease(*(a1 + 128));
  CFRelease(*(a1 + 136));
  *a1 = &unk_2A1F77B98;
  *(a1 + 24) = &unk_2A1F77C90;
  sub_299254760((a1 + 32));
  return a1;
}

void sub_2993B7838(uint64_t a1)
{
  sub_2993B7780(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993B7920(void *a1)
{
  *a1 = &unk_2A1F778F8;
  a1[3] = &unk_2A1F779F0;
  sub_299254760(a1 + 4);
  return a1;
}

void sub_2993B7988(void *a1)
{
  *a1 = &unk_2A1F778F8;
  a1[3] = &unk_2A1F779F0;
  sub_299254760(a1 + 4);

  JUMPOUT(0x29C29BFB0);
}

uint64_t *sub_2993B7A50(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 16) == 1)
  {
    v3 = a1[1];
    if (v3)
    {
      MEMORY[0x29C29BFB0](v3, 0x1060C40C2C571E4);
    }
  }

  return a1;
}

uint64_t sub_2993B7AC8(void *a1, uint64_t a2)
{
  v2 = a1[5];
  if (!v2)
  {
    sub_2993B7B44(a1);
  }

  if ((v2 + a2) > a1[3])
  {
    sub_2993B7B44(a1);
  }

  v3 = *(*a1 + 8 * a1[4]);
  a1[5] = v2 + a2;
  return v3 + v2;
}

void sub_2993B7C78(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, uint64_t a6, char a7, char a8, char a9, char a10)
{
  *a1 = a2;
  *(a1 + 4) = 0;
  *(a1 + 5) = a7;
  *(a1 + 6) = a8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = a6;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  operator new();
}

void sub_2993B7F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_29920FE30(&a9, 0);
  sub_29920FE30(&a10, 0);
  v15 = v10[23];
  v10[23] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  sub_29920FE30(v13, 0);
  sub_29920FE30(v12, 0);
  sub_29920FE30(v11, 0);
  v16 = v10[18];
  if (v16)
  {
    sub_2991A893C(v16);
  }

  v17 = v10[16];
  if (v17)
  {
    sub_2991A893C(v17);
  }

  v18 = v10[14];
  if (v18)
  {
    sub_2991A893C(v18);
  }

  v19 = v10[12];
  if (v19)
  {
    sub_2991A893C(v19);
  }

  v20 = v10[10];
  if (v20)
  {
    sub_2991A893C(v20);
  }

  v21 = v10[8];
  if (v21)
  {
    sub_2991A893C(v21);
  }

  v22 = v10[6];
  if (v22)
  {
    sub_2991A893C(v22);
  }

  v23 = v10[4];
  if (v23)
  {
    sub_2991A893C(v23);
  }

  v24 = v10[2];
  if (v24)
  {
    sub_2991A893C(v24);
  }

  _Unwind_Resume(a1);
}

void sub_2993B803C(unsigned int *a1, int a2)
{
  v46 = *MEMORY[0x29EDCA608];
  sub_29920E714(*a1, *(a1 + 20), *(a1 + 22), *(a1 + 21), *(a1 + 6), a2, &v34);
  v4 = v34;
  v34 = 0uLL;
  v5 = *(a1 + 2);
  *(a1 + 2) = v4;
  if (v5)
  {
    sub_2991A893C(v5);
    if (*(&v34 + 1))
    {
      sub_2991A893C(*(&v34 + 1));
    }
  }

  sub_299213DA0(*a1, a2, &v34);
  v6 = v34;
  v34 = 0uLL;
  v7 = *(a1 + 12);
  *(a1 + 22) = v6;
  if (v7)
  {
    sub_2991A893C(v7);
    if (*(&v34 + 1))
    {
      sub_2991A893C(*(&v34 + 1));
    }
  }

  sub_299332E80(*a1, a2, &v34);
  v8 = v34;
  v34 = 0uLL;
  v9 = *(a1 + 14);
  *(a1 + 26) = v8;
  if (v9)
  {
    sub_2991A893C(v9);
    if (*(&v34 + 1))
    {
      sub_2991A893C(*(&v34 + 1));
    }
  }

  sub_299230DF4(*a1, &v34);
  v33 = a2;
  v10 = v34;
  v34 = 0uLL;
  v11 = *(a1 + 16);
  *(a1 + 30) = v10;
  if (v11)
  {
    sub_2991A893C(v11);
    if (*(&v34 + 1))
    {
      sub_2991A893C(*(&v34 + 1));
    }
  }

  v12 = *a1;
  v13 = sub_2992774EC(*a1);
  sub_2991C6CA8(&ptr, v13);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  *&v34 = MEMORY[0x29EDCA5F8];
  *(&v34 + 1) = 0x40000000;
  v35 = sub_2993B92E8;
  v36 = &unk_29EF21F50;
  v37 = &v39;
  v38 = v12;
  if ((atomic_load_explicit(&qword_2A1461558, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461558))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_2A1461560, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461560))
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &stru_2A145FAE0, &dword_29918C000);
    __cxa_guard_release(&qword_2A1461560);
  }

  std::mutex::lock(&stru_2A145FAE0);
  v14 = qword_2A1461550;
  v15 = sub_2991C0548(qword_2A1461550, &ptr);
  v16 = v14[1];
  if (!*&v16)
  {
    goto LABEL_31;
  }

  v17 = v15;
  v18 = vcnt_s8(v16);
  v18.i16[0] = vaddlv_u8(v18);
  v19 = v18.u32[0];
  if (v18.u32[0] > 1uLL)
  {
    v20 = v15;
    if (v15 >= *&v16)
    {
      v20 = v15 % *&v16;
    }
  }

  else
  {
    v20 = (*&v16 - 1) & v15;
  }

  v21 = *(*v14 + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_31:
    v24 = sub_2993652F8(0xDu);
    v25 = os_signpost_id_make_with_pointer(v24, &ptr);
    v26 = sub_2993652F8(0xDu);
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v27 = v26;
      if (os_signpost_enabled(v26))
      {
        p_ptr = &ptr;
        if (v44 < 0)
        {
          p_ptr = ptr;
        }

        *buf = 136315138;
        *&buf[4] = p_ptr;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "SingletonResourceManagerLoad", "Load resource with key: [%s]", buf, 0xCu);
      }
    }

    *buf = (v35)(&v34);
    operator new();
  }

  while (1)
  {
    v23 = v22[1];
    if (v23 == v17)
    {
      break;
    }

    if (v19 > 1)
    {
      if (v23 >= *&v16)
      {
        v23 %= *&v16;
      }
    }

    else
    {
      v23 &= *&v16 - 1;
    }

    if (v23 != v20)
    {
      goto LABEL_31;
    }

LABEL_30:
    v22 = *v22;
    if (!v22)
    {
      goto LABEL_31;
    }
  }

  if (!sub_2991C09F4(v14, v22 + 2, &ptr))
  {
    goto LABEL_30;
  }

  v30 = v22[6];
  if (!v30 || v30->__shared_owners_ == -1)
  {
    goto LABEL_31;
  }

  v31 = std::__shared_weak_count::lock(v30);
  if (v31)
  {
    v32 = v22[5];
    std::mutex::unlock(&stru_2A145FAE0);
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_2991A893C(v31);
  }

  else
  {
    std::mutex::unlock(&stru_2A145FAE0);
    v32 = 0;
  }

  if (v33 && (v40[3] & 1) == 0)
  {
    sub_2993B9104(v32);
  }

  _Block_object_dispose(&v39, 8);
  if (v44 < 0)
  {
    operator delete(ptr);
  }

  v29 = *(a1 + 18);
  *(a1 + 17) = v32;
  *(a1 + 18) = v31;
  if (v29)
  {
    sub_2991A893C(v29);
  }
}

uint64_t sub_2993B8B28(uint64_t a1)
{
  v2 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29920FE30((a1 + 176), 0);
  sub_29920FE30((a1 + 168), 0);
  sub_29920FE30((a1 + 160), 0);
  v3 = *(a1 + 144);
  if (v3)
  {
    sub_2991A893C(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    sub_2991A893C(v4);
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    sub_2991A893C(v5);
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    sub_2991A893C(v6);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    sub_2991A893C(v7);
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    sub_2991A893C(v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    sub_2991A893C(v9);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    sub_2991A893C(v10);
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    sub_2991A893C(v11);
  }

  return a1;
}

void sub_2993B8C0C(void *a1, int a2)
{
  sub_299321FA0(*(a1[11] + 8));
  v4 = a1[5];
  if (v4)
  {
    sub_299210C88(a1[5]);
    v5 = atomic_load((v4 + 40));
    if (v5 == 2)
    {
      if (*v4)
      {
        v6 = a1[5];
        sub_299210C88(v6);
        atomic_load((v6 + 40));
        LMLanguageModelReset();
      }
    }
  }

  if (a2)
  {
    v7 = a1[3];
    if (v7)
    {
      sub_299210C88(a1[3]);
      v8 = atomic_load((v7 + 40));
      if (v8 == 2)
      {
        if (*v7)
        {
          v9 = a1[3];
          sub_299210C88(v9);
          atomic_load((v9 + 40));
          LMLanguageModelReset();
        }
      }
    }
  }

  v10 = a1[1];

  sub_29920F9CC(v10);
}

void sub_2993B8CEC(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (v1 && (*(v1 + 112) & 8) != 0)
  {
    v3 = sub_2993652F8(0xDu);
    v4 = os_signpost_id_make_with_pointer(v3, a1);
    v5 = sub_2993652F8(0xDu);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "LanguageModelLoaderReload", "Reload for LMLoader", buf, 2u);
      }
    }

    sub_29920F28C(*(a1 + 8));
  }
}

void sub_2993B8E44(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 152);
    if ((*(v2 + 112) & 0x80) != 0)
    {
      v3 = *(v2 + 136);
      if (v3)
      {
        v4 = *MEMORY[0x29EDB8ED8];
        v5 = CFURLCreateWithFileSystemPath(*MEMORY[0x29EDB8ED8], v3, kCFURLPOSIXPathStyle, 1u);
        PathComponent = CFURLCreateCopyDeletingLastPathComponent(v4, v5);
        sub_29920FE30((a1 + 176), PathComponent);
        v7 = *(a1 + 8);
        v8 = CFURLCreateCopyDeletingLastPathComponent(v4, v5);
        sub_29920FE30((v7 + 16), v8);
        if (v5)
        {
          CFRelease(v5);
        }
      }

      else
      {
        sub_29920FE30((a1 + 176), 0);
        sub_29920FE30((*(a1 + 8) + 16), 0);
      }

      *(*(a1 + 152) + 112) &= ~0x80uLL;
    }
  }
}

void sub_2993B8F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

void sub_2993B8F40(unsigned int *a1)
{
  v2 = *(*(a1 + 19) + 112);
  if ((v2 & 0x40) != 0 && *a1 == 2)
  {
    v3 = *(a1 + 3);
    if (v3)
    {
      v4 = atomic_load((v3 + 40));
      if (v4 == 1)
      {
        v2 = *(*(a1 + 19) + 112);
        goto LABEL_12;
      }

      v5 = *a1;
    }

    else
    {
      v5 = 2;
    }

    sub_29920E2A4(v5, *(a1 + 6), 1, &v14);
    v6 = v14;
    v14 = 0uLL;
    v7 = *(a1 + 4);
    *(a1 + 6) = v6;
    if (v7)
    {
      sub_2991A893C(v7);
      if (*(&v14 + 1))
      {
        sub_2991A893C(*(&v14 + 1));
      }
    }

    v8 = *(a1 + 19);
    v2 = *(v8 + 112) & 0xFFFFFFFFFFFFFFBFLL;
    *(v8 + 112) = v2;
  }

LABEL_12:
  if ((v2 & 0x20) != 0 && *a1 == 1)
  {
    v9 = *(a1 + 7);
    if (v9)
    {
      v10 = atomic_load((v9 + 40));
      if (v10 == 1)
      {
        return;
      }

      v11 = *a1;
    }

    else
    {
      v11 = 1;
    }

    sub_2992D7E44(v11, 1, &v14);
    v12 = v14;
    v14 = 0uLL;
    v13 = *(a1 + 8);
    *(a1 + 14) = v12;
    if (v13)
    {
      sub_2991A893C(v13);
      if (*(&v14 + 1))
      {
        sub_2991A893C(*(&v14 + 1));
      }
    }

    *(*(a1 + 19) + 112) &= ~0x20uLL;
  }
}

void sub_2993B9068(uint64_t a1, int a2)
{
  if (*a1 == a2)
  {
    sub_29920F28C(*(a1 + 8));
  }

  *a1 = a2;
  sub_2993B803C(a1, 1);
  v3 = *(a1 + 32);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (v3)
  {

    sub_2991A893C(v3);
  }
}

uint64_t sub_2993B9184(uint64_t a1)
{
  if ((*(a1 + 4) == 1 && (v1 = *(a1 + 72)) != 0 || (v1 = *(a1 + 56)) != 0) && (sub_29929A360(v1), v2 = atomic_load(v1 + 10), v2 == 2))
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

void sub_2993B91E0(uint64_t a1, int a2)
{
  if (*(a1 + 4) != a2 || (*(*(a1 + 152) + 113) & 5) != 0)
  {
    *(a1 + 4) = a2;
    if (a2)
    {
      v3 = *(a1 + 152);
      v4 = *(v3 + 112);
      if ((v4 & 0x100) != 0)
      {
        v5 = *(v3 + 152);
        *(v3 + 112) = v4 & 0xFFFFFFFFFFFFFEFFLL;
      }

      else
      {
        v5 = 0;
      }

      sub_29920FC34(*(a1 + 8), 1, v5);
      if ((*(*(a1 + 152) + 113) & 4) != 0)
      {
        v7 = *a1;
        if ((*a1 - 1) <= 1)
        {
          v8 = *(a1 + 72);
          if (!v8)
          {
            goto LABEL_14;
          }

          v9 = atomic_load((v8 + 40));
          if (v9 != 1)
          {
            v7 = *a1;
LABEL_14:
            sub_2992D891C(v7, 1, &v12);
            v10 = v12;
            v12 = 0uLL;
            v11 = *(a1 + 80);
            *(a1 + 72) = v10;
            if (v11)
            {
              sub_2991A893C(v11);
              if (*(&v12 + 1))
              {
                sub_2991A893C(*(&v12 + 1));
              }
            }
          }
        }

        *(*(a1 + 152) + 112) &= ~0x400uLL;
      }
    }

    else
    {
      v6 = *(a1 + 8);
      if (*(v6 + 5))
      {
        *(v6 + 5) = 0;
      }
    }
  }
}

void sub_2993B9374(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v3, 0x1070C40FE1C109FLL);
  MEMORY[0x29C29BFB0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_2993B93AC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_299329210((v2 + 8), 0);
    MEMORY[0x29C29BFB0](v2, 0x1020C40D5A9D86FLL);
  }

  return a1;
}

void sub_2993B9404(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993B943C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    sub_299329210((v1 + 8), 0);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2993B949C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F77D10))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993B94E4(int a1, __CFDictionary *a2, void *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  result = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F6D008, 0);
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = (*(*result + 96))(result);
  if (v6 != 76 && v6 != 74)
  {
    return 0;
  }

  if ((*(*v5 + 408))(v5) != 2)
  {
    return 0;
  }

  if ((*(*v5 + 200))(v5))
  {
    return 0;
  }

  v7 = v5[20];
  (*(*v5 + 552))(v5);
  if (v7 > v8)
  {
    return 0;
  }

  (*(*v5 + 552))(v5);
  valuePtr = v9 - v5[20];
  v10 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(a2, @"phraseLearningCandidateKeystrokeSavings", v10);
  if (v10)
  {
    CFRelease(v10);
  }

  return 1;
}

uint64_t sub_2993B96F4(uint64_t a1, int a2)
{
  v4 = sub_2992FE060();
  *a1 = 0;
  *(a1 + 8) = CFStringCreateWithCharacters(0, *v4, v4[1]);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = a2;
  *(a1 + 32) = 0xD00000001;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = a2 & 1;
  return a1;
}

void sub_2993B9754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 64) = 1;
  v4 = *(a2 + 40);
  v26 = *(a2 + 48);
  if (v4 != v26)
  {
    while (1)
    {
      v5 = *v4;
      v6 = (*v4)[1];
      if (v6[10])
      {
        v7 = *v6;
        if (*v6)
        {
          v8 = *v5;
          v9 = (*v5)[2];
          if (v9)
          {
            v10 = *(v9 + 36);
            v11 = v10 > 0x11;
            v12 = 0x1B1FFu >> v10;
            v13 = v11 ? 1 : v12;
          }

          else
          {
            v13 = 1;
          }

          if ((*(*v8 + 104))(*v5))
          {
            v14 = (*(*v8 + 40))(v8);
            v16 = *(a1 + 40);
            v15 = *(a1 + 48);
            if (v16 != v15)
            {
              break;
            }
          }
        }
      }

LABEL_27:
      if (++v4 == v26)
      {
        return;
      }
    }

    v17 = v14;
    while (1)
    {
      v18 = *v16;
      v19 = **v16;
      if (!v19 || !(*(*v19 + 104))(**v16) || ((*(*v19 + 40))(v19) & 4) != 0 && (*(v8 + 2) - 1) > 1 || (v17 & 4) != 0 && (v19[2] - 1) > 1)
      {
        goto LABEL_26;
      }

      v20 = v18[1];
      v21 = *(v20 + 88);
      if (v21)
      {
        v22 = *(v21 + 16);
        v23 = 1.79769313e308;
        if (v22 != 1.79769313e308)
        {
          v23 = v22 + 2.2;
        }

        if ((v13 & 1) == 0)
        {
LABEL_25:
          sub_2993B44C8(v20, *v18, v5[1], *v5, a4);
          goto LABEL_26;
        }
      }

      else
      {
        v23 = 1.79769313e308;
        if ((v13 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      if (*(v7 + 16) <= v23)
      {
        goto LABEL_25;
      }

LABEL_26:
      if (++v16 == v15)
      {
        goto LABEL_27;
      }
    }
  }
}

void sub_2993B996C(uint64_t a1, uint64_t a2)
{
  sub_2991D7954(&v15);
  sub_2993BA218(a1, __p);
  if ((v14 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    sub_2991C0E9C(&v16, v5, v14);
  }

  else
  {
    sub_2991C0E9C(&v16, v5, __p[1]);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  if (v6 != v7)
  {
    v9 = 0;
    if (((v6 - v7) >> 3) <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = (v6 - v7) >> 3;
    }

    do
    {
      v11 = sub_29939D4F4(**(*(a1 + 40) + 8 * v9), a2, 1);
      CFArrayAppendValue(Mutable, v11);
      CFRelease(v11);
      ++v9;
    }

    while (v10 != v9);
  }

  v12 = CFStringCreateByCombiningStrings(0, Mutable, @" ");
  CFRelease(Mutable);
  sub_29922E740(a2, v12);
}

void sub_2993B9D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, char a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_2991D7BF8(&a15, MEMORY[0x29EDC9528]);
  MEMORY[0x29C29BF00](va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993BA164(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  *a1 = a2;
  v15 = *(a3 + 8);
  if (!a2 || v15)
  {
    v16 = CFStringCreateWithCharacters(0, *a3, v15);
  }

  else
  {
    v16 = sub_299397500(a2);
  }

  *(a1 + 8) = v16;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 28) = a6;
  *(a1 + 32) = a8;
  *(a1 + 36) = a7;
  return a1;
}

uint64_t sub_2993BA1E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_2993BA218@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  sub_2991D7954(v35);
  if (v4)
  {
    v5 = sub_2991C0E9C(&v36, "type = ", 7);
    v6 = MEMORY[0x29C29BD40](v5, a1[7]);
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v7 = std::locale::use_facet(&v32, MEMORY[0x29EDC93D0]);
    (v7->__vftable[2].~facet_0)(v7, 10);
    std::locale::~locale(&v32);
    std::ostream::put();
    std::ostream::flush();
    sub_2991C0E9C(&v36, "syllable IDs: ", 14);
    v8 = *(*a1 + 8);
    if (v8)
    {
      v9 = *(*a1 + 16);
      v10 = *(*a1 + 8);
      do
      {
        v11 = MEMORY[0x29C29BD70](&v36, *v9);
        v12 = sub_2991C0E9C(v11, "(", 1);
        v13 = sub_2993A1488(*v9, **a1);
        sub_299278568(v13, &v32);
        if ((v34 & 0x80u) == 0)
        {
          locale = &v32;
        }

        else
        {
          locale = v32.__locale_;
        }

        if ((v34 & 0x80u) == 0)
        {
          v15 = sub_2991C0E9C(v12, locale, v34);
        }

        else
        {
          v15 = sub_2991C0E9C(v12, locale, v33);
        }

        sub_2991C0E9C(v15, "), ", 3);
        if (v34 < 0)
        {
          operator delete(v32.__locale_);
        }

        ++v9;
        --v10;
      }

      while (v10);
    }

    std::ios_base::getloc((&v36 + *(v36 - 24)));
    v16 = std::locale::use_facet(&v32, MEMORY[0x29EDC93D0]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&v32);
    std::ostream::put();
    std::ostream::flush();
    sub_2991C0E9C(&v36, "Syllable Lengths:", 17);
    if (v8)
    {
      v17 = (*(*a1 + 32) + 2);
      do
      {
        v18 = MEMORY[0x29C29BD30](&v36, *v17 + *(v17 - 2));
        sub_2991C0E9C(v18, ", ", 2);
        v17 += 4;
        --v8;
      }

      while (v8);
    }

    std::ios_base::getloc((&v36 + *(v36 - 24)));
    v19 = std::locale::use_facet(&v32, MEMORY[0x29EDC93D0]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v32);
    std::ostream::put();
    std::ostream::flush();
  }

  else
  {
    v20 = sub_2991C0E9C(&v36, "synthetic word group:", 21);
    std::ios_base::getloc((v20 + *(*v20 - 24)));
    v21 = std::locale::use_facet(&v32, MEMORY[0x29EDC93D0]);
    (v21->__vftable[2].~facet_0)(v21, 10);
    std::locale::~locale(&v32);
    std::ostream::put();
    std::ostream::flush();
  }

  v22 = sub_2991C0E9C(&v36, "length = ", 9);
  v23 = MEMORY[0x29C29BD60](v22, *(a1 + 2));
  v24 = sub_2991C0E9C(v23, ", trieValue = ", 14);
  v25 = MEMORY[0x29C29BD40](v24, a1[6]);
  std::ios_base::getloc((v25 + *(*v25 - 24)));
  v26 = std::locale::use_facet(&v32, MEMORY[0x29EDC93D0]);
  (v26->__vftable[2].~facet_0)(v26, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  if ((v43 & 0x10) != 0)
  {
    v28 = v42;
    if (v42 < v39)
    {
      v42 = v39;
      v28 = v39;
    }

    v29 = v38[4].__locale_;
  }

  else
  {
    if ((v43 & 8) == 0)
    {
      v27 = 0;
      a2[23] = 0;
      goto LABEL_31;
    }

    v29 = v38[1].__locale_;
    v28 = v38[3].__locale_;
  }

  v27 = v28 - v29;
  if ((v28 - v29) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  if (v27 >= 0x17)
  {
    operator new();
  }

  a2[23] = v27;
  if (v27)
  {
    memmove(a2, v29, v27);
  }

LABEL_31:
  a2[v27] = 0;
  v35[0] = *MEMORY[0x29EDC9528];
  v30 = *(MEMORY[0x29EDC9528] + 72);
  *(v35 + *(v35[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v36 = v30;
  v37 = MEMORY[0x29EDC9570] + 16;
  if (v41 < 0)
  {
    operator delete(__p);
  }

  v37 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v38);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C29BF00](&v44);
}

void sub_2993BA83C(_Unwind_Exception *a1, uint64_t a2, std::locale a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  std::locale::~locale(&a10);
  sub_2991D7BF8(&a13, MEMORY[0x29EDC9528]);
  MEMORY[0x29C29BF00](va);
  _Unwind_Resume(a1);
}

void sub_2993BA898(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2993BA874);
}

void sub_2993BAD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*a13 + 16))(a13, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_2993BADAC(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, int a5)
{
  v63 = *MEMORY[0x29EDCA608];
  v9 = sub_2993652F8(5u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v51 = CFStringCreateWithCharacters(0, *a3, *(a3 + 8));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v51;
    _os_log_debug_impl(&dword_29918C000, v9, OS_LOG_TYPE_DEBUG, "[ThaiAutocorrector::analyze] analysisStr: [%@]", &buf, 0xCu);
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    operator new();
  }

  if (!((*(a3 + 64) == 0) | (((*(**(a1 + 16) + 24))(*(a1 + 16)) & 1) == 0)))
  {
    *&buf = &unk_2A1F77DE8;
    *(&buf + 1) = a1;
    p_buf = &buf;
    sub_29939BB74(0xFFuLL, v53);
    sub_29922C4C8(&buf);
    v10 = v53[0];
    if (v53[0] != v53[1])
    {
      v11 = *(v53[0] + 23);
      if (v11 >= 0)
      {
        v12 = v53[0];
      }

      else
      {
        v12 = *v53[0];
      }

      if (v11 >= 0)
      {
        v13 = *(v53[0] + 23);
      }

      else
      {
        v13 = *(v53[0] + 8);
      }

      v14 = *(a3 + 8);
      if (*(a1 + 40))
      {
        if (v13 <= v14)
        {
          v15 = 0;
          v16 = 0;
          v17 = 83;
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      if (v13 == v14)
      {
        v18 = memcmp(v12, *a3, 2 * v13);
        v15 = v18 != 0;
        v16 = 0;
        if (v18)
        {
          v17 = 0;
        }

        else
        {
          v17 = 83;
        }
      }

      else
      {
        if (v13 > v14)
        {
LABEL_21:
          v15 = *(a1 + 40) ^ 1;
          v17 = 71;
          v16 = 1;
          goto LABEL_23;
        }

        v16 = 0;
        v17 = 0;
        v15 = 1;
      }

LABEL_23:
      sub_2993BA934(&v54, v12, v13, *a3, v14, (v10 + 24), (v10 + 48), v15, *(v10 + 72), v16, v17);
    }

    v54 = v53;
    sub_29922C548(&v54);
  }

  (*(*a1 + 24))(a1, a2, a4);
  __src = 0;
  v56 = 0;
  v57 = 0;
  v20 = a2[6];
  v19 = a2[7];
  if (v20 != v19)
  {
    v21 = 0;
    do
    {
      if (v21 >= v57)
      {
        v23 = __src;
        v24 = v21 - __src;
        v25 = (v21 - __src) >> 3;
        v26 = v25 + 1;
        if ((v25 + 1) >> 61)
        {
          sub_299212A8C();
        }

        v27 = v57 - __src;
        if ((v57 - __src) >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v26 = 0x1FFFFFFFFFFFFFFFLL;
        }

        p_src = &__src;
        if (v26)
        {
          sub_29920B86C(&__src, v26);
        }

        v28 = (v21 - __src) >> 3;
        v29 = (8 * v25);
        v30 = *v20;
        *v20 = 0;
        v31 = (8 * v25 - 8 * v28);
        *v29 = v30;
        v21 = (v29 + 1);
        memcpy(v31, v23, v24);
        v32 = __src;
        v33 = v57;
        __src = v31;
        v56 = v21;
        v57 = 0;
        v60 = v32;
        p_buf = v33;
        *&buf = v32;
        *(&buf + 1) = v32;
        sub_2992737D8(&buf);
        v19 = a2[7];
      }

      else
      {
        v22 = *v20;
        *v20 = 0;
        *v21 = v22;
        v21 += 8;
      }

      v56 = v21;
      ++v20;
    }

    while (v20 != v19);
  }

  sub_299273BA0(a2 + 1);
  sub_29921ECBC(a2 + 6);
  v35 = __src;
  v34 = v56;
  if (__src != v56)
  {
    do
    {
      *(*v35 + 184) = 1;
      *&buf = &unk_2A1F65308;
      p_buf = &buf;
      sub_2992AB710(a2, v35, 1, 0, &buf);
      sub_29921F128(&buf);
      ++v35;
    }

    while (v35 != v34);
  }

  __p[0] = &unk_2A1F65CF8;
  __p[1] = sub_2992AD278;
  __p[3] = __p;
  sub_2992AB9D4(a2, __p);
  sub_29922D72C(__p);
  __p[0] = &__src;
  sub_29921EC68(__p);
  v37 = a2[6];
  v38 = a2[7];
  if (v37 != v38)
  {
    while (1)
    {
      v39 = *v37;
      if (*v37)
      {
        break;
      }

LABEL_61:
      if (++v37 == v38)
      {
        goto LABEL_62;
      }
    }

    v40 = (*(*v39 + 112))(*v37);
    if ((*(*v39 + 96))(v39) == 71)
    {
      v41 = *(v39 + 55);
      v42 = *(v39 + 87);
      if ((v42 & 0x80u) != 0)
      {
        v42 = *(v39 + 72);
      }

      if ((v41 & 0x80u) != 0)
      {
        v41 = *(v39 + 40);
      }

      v43 = v41 - v42;
      if (v43 <= 0)
      {
        v44 = 0;
      }

      else
      {
        v44 = 8000 * v43;
      }
    }

    else
    {
      if ((*(*v39 + 96))(v39) != 83)
      {
LABEL_60:
        (*(**v37 + 480))(*v37, v40);
        goto LABEL_61;
      }

      if ((*(*v39 + 48))(v39))
      {
        v45 = 0;
        v46 = 0;
        do
        {
          v47 = (*(*v39 + 128))(v39, v45);
          if (v47 == 1)
          {
            v48 = 0;
          }

          else
          {
            v48 = v47;
          }

          v46 += v48;
          ++v45;
        }

        while (v45 < (*(*v39 + 48))(v39));
        v44 = -3000 * v46;
      }

      else
      {
        v44 = 0;
      }
    }

    v40 = (v44 + v40);
    goto LABEL_60;
  }

LABEL_62:
  if ((a5 & 0x800000) == 0)
  {
    if ((atomic_load_explicit(qword_2A1461568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A1461568))
    {
      qword_2A1461578 = 3;
      unk_2A1461580 = xmmword_299402230;
      __cxa_guard_release(qword_2A1461568);
    }

    if ((atomic_load_explicit(&qword_2A1461570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461570))
    {
      qword_2A1461590 = 3;
      unk_2A1461598 = xmmword_2994284C0;
      __cxa_guard_release(&qword_2A1461570);
    }

    v49 = *(a1 + 40);
    v50 = 2;
    *&buf = &unk_2A1F77F68;
    if (v49)
    {
      v50 = 5;
    }

    BYTE8(buf) = v49;
    p_buf = &buf;
    sub_299398A70(a1, a2, &qword_2A1461568[v50], &buf);
    sub_29922D9BC(&buf);
  }

  sub_2993988CC(a1, a2, v36);
}