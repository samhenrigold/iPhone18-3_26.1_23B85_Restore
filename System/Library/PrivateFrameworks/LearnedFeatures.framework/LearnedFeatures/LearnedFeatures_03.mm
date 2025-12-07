void sub_255AAE2C4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = *a2;
  v4 = v2;
  *a2 = 0uLL;
  sub_255AAF22C((a1 + 128), &v3);
}

void sub_255AAE3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255B0A26C(va);
  _Unwind_Resume(a1);
}

void sub_255AAE3B4(void *a1, unint64_t a2)
{
  v4 = a1 + 17;
  v3 = a1[17];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4)
    {
      v10 = v5[4];
      if (v10 <= a2)
      {
        if (*(v10 + 8) == 1)
        {
          --a1[19];
        }

        v11 = v5[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          v13 = v5;
          do
          {
            v12 = v13[2];
            v14 = *v12 == v13;
            v13 = v12;
          }

          while (!v14);
        }

        if (a1[16] == v5)
        {
          a1[16] = v12;
        }

        --a1[18];
        sub_255AAF524(v3, v5);
        v15 = v5[6];
        if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
          v16 = v5;
        }

        else
        {
          v16 = v5;
        }

        operator delete(v16);
      }
    }
  }
}

void sub_255AAE508(void **a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_255A7B590();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  sub_255AAE8C8(a1, &v10);
}

void sub_255AAE870(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_255AAE8C8(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      v11 = &v4[-*a1] >> 2;
      if (v4 == *a1)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_255A7B590();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  a1[2] = (v4 + 8);
}

void sub_255AAEA54(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_255A7B590();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = (v5 - 8);
}

uint64_t *sub_255AAEBEC(uint64_t *result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = *(result + 23);
    v4 = v3;
    v5 = result;
    if (v3 < 0)
    {
      v5 = *result;
      v4 = result[1];
      v6 = v4 - a2;
      if (v4 - a2 >= a3)
      {
        v7 = a3;
      }

      else
      {
        v7 = v4 - a2;
      }

      if (v4 - a2 <= a3)
      {
LABEL_7:
        v8 = v4 - v7;
        if ((v3 & 0x80) == 0)
        {
LABEL_8:
          *(result + 23) = v8 & 0x7F;
LABEL_15:
          *(v5 + v8) = 0;
          return result;
        }

LABEL_14:
        result[1] = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v6 = v3 - a2;
      if (v3 - a2 >= a3)
      {
        v7 = a3;
      }

      else
      {
        v7 = v3 - a2;
      }

      if (v3 - a2 <= a3)
      {
        goto LABEL_7;
      }
    }

    v9 = result;
    memmove(v5 + a2, v5 + a2 + v7, v6 - v7);
    result = v9;
    v8 = v4 - v7;
    if ((*(v9 + 23) & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  return result;
}

void sub_255AAEC90(void **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
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

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v25 = 2 * v24;
      if (2 * v24 <= a4)
      {
        v25 = a4;
      }

      if (v24 >= 0x555555555555555)
      {
        v26 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v26 = v25;
      }

      if (v26 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_255A7B4E8();
  }

  v13 = a1[1];
  v14 = (v13 - v8);
  if (0xAAAAAAAAAAAAAAABLL * (v13 - v8) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          v22 = *(v5 + 23);
          if (*(v8 + 23) < 0)
          {
            if (v22 >= 0)
            {
              v20 = v5;
            }

            else
            {
              v20 = *v5;
            }

            if (v22 >= 0)
            {
              v21 = *(v5 + 23);
            }

            else
            {
              v21 = *(v5 + 1);
            }

            sub_255AAF104(v8, v20, v21);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_255AAF034(v8, *v5, *(v5 + 1));
          }

          else
          {
            v23 = *v5;
            v8[2] = *(v5 + 2);
            *v8 = v23;
          }
        }

        v5 = (v5 + 24);
        v8 += 3;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v29 = *(v13 - 1);
      v13 -= 3;
      if (v29 < 0)
      {
        operator delete(*v13);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v13 != v8)
    {
      v15 = &v14[a2];
      do
      {
        if (v5 != v8)
        {
          v18 = *(v5 + 23);
          if (*(v8 + 23) < 0)
          {
            if (v18 >= 0)
            {
              v16 = v5;
            }

            else
            {
              v16 = *v5;
            }

            if (v18 >= 0)
            {
              v17 = *(v5 + 23);
            }

            else
            {
              v17 = *(v5 + 1);
            }

            sub_255AAF104(v8, v16, v17);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_255AAF034(v8, *v5, *(v5 + 1));
          }

          else
          {
            v19 = *v5;
            v8[2] = *(v5 + 2);
            *v8 = v19;
          }
        }

        v5 = (v5 + 24);
        v8 += 3;
        v14 -= 24;
      }

      while (v14);
      v13 = a1[1];
      v5 = v15;
    }

    v30 = v13;
    v27 = v13;
    if (v5 != a3)
    {
      v27 = v13;
      do
      {
        while ((*(v5 + 23) & 0x80000000) == 0)
        {
          v28 = *v5;
          v27[2] = *(v5 + 2);
          *v27 = v28;
          v27 += 3;
          v5 = (v5 + 24);
          v30 = v27;
          if (v5 == a3)
          {
            goto LABEL_55;
          }
        }

        sub_255A7E018(v27, *v5, *(v5 + 1));
        v5 = (v5 + 24);
        v27 = v30 + 3;
        v30 += 3;
      }

      while (v5 != a3);
    }

LABEL_55:
    a1[1] = v27;
  }
}

void sub_255AAF004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255A80074(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_255AAF01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255A80074(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void *sub_255AAF034(void *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    sub_255A7BCA8();
  }

  *(__dst + 23) = __len;
  v5 = __dst;
  if (__len)
  {
    memmove(__dst, a2, __len);
    v5 = __dst;
  }

  *(v5 + __len) = 0;
  return __dst;
}

void **sub_255AAF104(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2] & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v5 >= __len - v5 + 1)
    {
      operator new();
    }

    sub_255A7BCA8();
  }

  v6 = *a1;
  a1[1] = __len;
  if (__len)
  {
    memmove(v6, a2, __len);
  }

  *(v6 + __len) = 0;
  return a1;
}

uint64_t *sub_255AAF378(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (*(v2 + 24))
    {
      return result;
    }

    v3 = *(v2 + 16);
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = *(v4 + 8);
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = *(v2 + 8);
        v11 = *v10;
        *(v2 + 8) = *v10;
        v12 = v2;
        if (v11)
        {
          *(v11 + 16) = v2;
          v3 = *(v2 + 16);
          v12 = *v3;
        }

        *(v10 + 16) = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        *(v2 + 16) = v10;
        v3 = *(v10 + 16);
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = *(v4 + 8);
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      *(v4 + 8) = v3;
      *(v4 + 16) = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = (v4 + 24);
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = v15[1];
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = *(v2 + 16);
    }

    v3[*v3 != v2] = v15;
    v15[1] = v2;
    v15[2] = v3;
    *(v2 + 16) = v15;
    v3 = v15[2];
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

uint64_t **sub_255AAF524(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      *(v6 + 8) = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
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

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = *(v6 + 8);
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v16 = *(v14 + 8);
      v17 = *v16;
      *(v14 + 8) = *v16;
      if (v17)
      {
        *(v17 + 16) = v14;
      }

      v18 = *(v14 + 16);
      v16[2] = v18;
      v18[*v18 != v14] = v16;
      *v16 = v14;
      *(v14 + 16) = v16;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v19 = *v7;
    if (*v7 && *(v19 + 24) != 1)
    {
      v20 = v7[1];
      if (!v20)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v20 + 24) == 1)
      {
LABEL_62:
        *(v19 + 24) = 1;
        *(v7 + 24) = 0;
        v28 = v19[1];
        *v7 = v28;
        if (v28)
        {
          *(v28 + 16) = v7;
        }

        v29 = v7[2];
        v29[*v29 != v7] = v19;
        v19[1] = v7;
        v19[2] = v29;
        v7[2] = v19;
        v20 = v7;
      }

      else
      {
        v19 = v7;
      }

      v30 = v19[2];
      *(v19 + 24) = *(v30 + 24);
      *(v30 + 24) = 1;
      *(v20 + 24) = 1;
      v31 = *(v30 + 8);
      v32 = *v31;
      *(v30 + 8) = *v31;
      if (v32)
      {
        *(v32 + 16) = v30;
      }

      v33 = *(v30 + 16);
      v31[2] = v33;
      v33[*v33 != v30] = v31;
      *v31 = v30;
      *(v30 + 16) = v31;
      return result;
    }

    v20 = v7[1];
    if (v20 && *(v20 + 24) != 1)
    {
      goto LABEL_61;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v21 = v15[1];
    *v14 = v21;
    if (v21)
    {
      *(v21 + 16) = v14;
    }

    v22 = *(v14 + 16);
    v22[*v22 != v14] = v15;
    v15[1] = v14;
    v15[2] = v22;
    *(v14 + 16) = v15;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_69;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_69:
    v25 = v7;
  }

  else
  {
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v26 = *v25;
    v7[1] = *v25;
    if (v26)
    {
      *(v26 + 16) = v7;
    }

    v27 = v7[2];
    v25[2] = v27;
    v27[*v27 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  v34 = v25[2];
  *(v25 + 24) = *(v34 + 24);
  *(v34 + 24) = 1;
  *(v24 + 24) = 1;
  v35 = *v34;
  v36 = *(*v34 + 8);
  *v34 = v36;
  if (v36)
  {
    *(v36 + 16) = v34;
  }

  v37 = *(v34 + 16);
  v37[*v37 != v34] = v35;
  *(v35 + 8) = v34;
  *(v35 + 16) = v37;
  *(v34 + 16) = v35;
  return result;
}

void sub_255AAF8DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AAF914(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_255AAF944(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000255C30B0CLL)
  {
    if (((v2 & 0x8000000255C30B0CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000255C30B0CLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000255C30B0CLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t **sub_255AAF9B4(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_255A96750(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = *(v2 + 23);
    if (v13 >= 0)
    {
      v14 = *(v2 + 23);
    }

    else
    {
      v14 = v2[1];
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_255AAFB6C(uint64_t a1, __int128 *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x259C491E0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  if ((a1 + 64) != a2)
  {
    if (*(a2 + 23) < 0)
    {
      sub_255AAF034((a1 + 64), *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(a1 + 80) = *(a2 + 2);
      *(a1 + 64) = v6;
    }
  }

  sub_255A7BB60(a1);
  return a1;
}

void sub_255AAFC3C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *sub_255AAFC64(float *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v11[1];
      if (v13 == v6)
      {
        if (v11[2] == v3)
        {
          return v11;
        }
      }

      else if ((v13 & (*&v7 - 1)) != v9)
      {
        goto LABEL_23;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_23;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  if (v11[2] != v3)
  {
    goto LABEL_12;
  }

  return v11;
}

uint64_t *sub_255AAFFD0@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *result;
  v7 = *(*result + 8 * v4);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 != a2);
  if (v8 == result + 2)
  {
    goto LABEL_18;
  }

  v9 = v8[1];
  if (v5.u32[0] > 1uLL)
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

  if (v9 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v10 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v4)
    {
LABEL_19:
      *(v6 + 8 * v4) = 0;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    v12 = *(v11 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v12 >= *&v3)
      {
        v12 %= *&v3;
      }
    }

    else
    {
      v12 &= *&v3 - 1;
    }

    if (v12 != v4)
    {
      *(v6 + 8 * v12) = v8;
      v11 = *a2;
    }
  }

  *v8 = v11;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *sub_255AB0108(float *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v11[1];
      if (v13 == v6)
      {
        if (v11[2] == v3)
        {
          return v11;
        }
      }

      else if ((v13 & (*&v7 - 1)) != v9)
      {
        goto LABEL_23;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_23;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  if (v11[2] != v3)
  {
    goto LABEL_12;
  }

  return v11;
}

uint64_t **sub_255AB0474(float *a1, uint64_t *a2, __int128 *a3)
{
  v3 = a2;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_255A96750(&v25, a2, v6);
  v8 = v7;
  v9 = *(a1 + 2);
  if (!*&v9)
  {
    goto LABEL_43;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v9)
    {
      v11 = v7 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_43:
    operator new();
  }

  v14 = *(v3 + 23);
  if (v14 >= 0)
  {
    v15 = *(v3 + 23);
  }

  else
  {
    v15 = v3[1];
  }

  if (v14 < 0)
  {
    v3 = *v3;
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v13[1];
      if (v20 == v8)
      {
        v21 = *(v13 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v13[3];
        }

        if (v21 == v15)
        {
          v23 = v22 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v23, v3, v15))
          {
            return v13;
          }
        }
      }

      else if ((v20 & (*&v9 - 1)) != v11)
      {
        goto LABEL_43;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_43;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_43;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v3, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_255AB0850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255AB0868(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_255AB0868(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      *(v2 + 40) = 0;
      if (v3)
      {
        sub_255AAE1A0(v2 + 40, v3);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_255AB08D0(unint64_t *result, void *a2, unint64_t a3)
{
  v6 = result[1];
  v7 = result[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) << 6) - 1;
  }

  v9 = result[5];
  v10 = v9 + result[4];
  v11 = v8 - v10;
  if (a3 > v11)
  {
    sub_255AB0A38(result, a3 - v11);
    v9 = result[5];
    v6 = result[1];
    v7 = result[2];
    v10 = result[4] + v9;
  }

  v12 = (v6 + 8 * (v10 >> 9));
  if (v7 != v6)
  {
    v13 = *v12 + 8 * (v10 & 0x1FF);
    v14 = v13;
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_11:
    v16 = v12;
    goto LABEL_22;
  }

  v13 = 0;
  v14 = 0;
  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_8:
  v15 = a3 + ((v14 - *v12) >> 3);
  if (v15 < 1)
  {
    v17 = 511 - v15;
    v16 = &v12[-(v17 >> 9)];
    v14 = *v16 + 8 * (~v17 & 0x1FF);
  }

  else
  {
    v16 = &v12[v15 >> 9];
    v14 = *v16 + 8 * (v15 & 0x1FF);
  }

LABEL_22:
  while (v13 != v14)
  {
    v18 = v14;
    if (v12 != v16)
    {
      v18 = *v12 + 4096;
    }

    if (v13 == v18)
    {
      result[5] = v9;
      if (v12 == v16)
      {
        return;
      }
    }

    else
    {
      v19 = v13;
      do
      {
        *v19++ = a2[2];
        a2 = *a2;
      }

      while (v19 != v18);
      v9 = result[5] + ((v18 - v13) >> 3);
      result[5] = v9;
      if (v12 == v16)
      {
        return;
      }
    }

    v20 = v12[1];
    ++v12;
    v13 = v20;
  }
}

void sub_255AB0A38(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (a1[4] = v6 - (v7 << 9); v7; --v7)
    {
      v12 = a1[1];
      v14 = *v12;
      a1[1] = (v12 + 1);
      sub_255AAE8C8(a1, &v14);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        sub_255A7B590();
      }

      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] -= v7 << 9; v7; --v7)
    {
      v13 = a1[1];
      v14 = *v13;
      a1[1] = (v13 + 1);
      sub_255AAE8C8(a1, &v14);
    }
  }
}

void sub_255AB10CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AB113C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AB1174(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    JUMPOUT(0x259C49320);
  }

  return result;
}

uint64_t sub_255AB11F8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN4tlog15ConsoleAppenderEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN4tlog15ConsoleAppenderEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN4tlog15ConsoleAppenderEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN4tlog15ConsoleAppenderEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255AB1258(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    MEMORY[0x259C49320](v1, 0x10A1C40503A8522);
    return v2;
  }

  return result;
}

uint64_t LFHandleCreateOnDevice(void *a1, int a2, unsigned int a3)
{
  if (a2 > 4)
  {
    if (a2 <= 100)
    {
      if (a2 == 5)
      {
        v9 = 8;
        v5 = operator new(0x10uLL, MEMORY[0x277D826F0]);
        if (!v5)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

      if (a2 == 6)
      {
        v9 = 7;
        v5 = operator new(0x10uLL, MEMORY[0x277D826F0]);
        if (!v5)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }
    }

    else
    {
      switch(a2)
      {
        case 'e':
          v9 = 4;
          v5 = operator new(0x10uLL, MEMORY[0x277D826F0]);
          if (!v5)
          {
            goto LABEL_37;
          }

          goto LABEL_32;
        case 'f':
          v9 = 5;
          v5 = operator new(0x10uLL, MEMORY[0x277D826F0]);
          if (v5)
          {
            goto LABEL_32;
          }

          goto LABEL_37;
        case 'g':
          v9 = 6;
          v5 = operator new(0x10uLL, MEMORY[0x277D826F0]);
          if (!v5)
          {
            goto LABEL_37;
          }

          goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v9 = 2;
        v5 = operator new(0x10uLL, MEMORY[0x277D826F0]);
        if (!v5)
        {
          goto LABEL_37;
        }
      }

      else if (a2 == 3)
      {
        v9 = 3;
        v5 = operator new(0x10uLL, MEMORY[0x277D826F0]);
        if (!v5)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v9 = 9;
        v5 = operator new(0x10uLL, MEMORY[0x277D826F0]);
        if (!v5)
        {
          goto LABEL_37;
        }
      }

LABEL_32:
      if (a3 >= 4)
      {
        v6 = 4;
      }

      else
      {
        v6 = a3;
      }

      v8[0] = &unk_2867CEE68;
      v8[1] = 0;
      sub_255AB6988(v5, &v9, v6, v8);
    }

    if (!a2)
    {
      v9 = 0;
      v5 = operator new(0x10uLL, MEMORY[0x277D826F0]);
      if (!v5)
      {
        goto LABEL_37;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {
      v9 = 1;
      v5 = operator new(0x10uLL, MEMORY[0x277D826F0]);
      if (!v5)
      {
        goto LABEL_37;
      }

      goto LABEL_32;
    }
  }

  v9 = 10;
  v5 = operator new(0x10uLL, MEMORY[0x277D826F0]);
  if (v5)
  {
    goto LABEL_32;
  }

LABEL_37:
  *a1 = 0;
  return 4;
}

uint64_t LFDetectorModelVersion(uint64_t ***a1, uint64_t a2)
{
  if (!a1)
  {
    return 2;
  }

  if (!a2)
  {
    return 3;
  }

  if (!sub_255B57A60(**a1))
  {
    return 7;
  }

  v4 = sub_255B564FC(*a1);
  if ((v5 & 0x100000000) == 0)
  {
    return 9;
  }

  v7 = v4;
  result = 0;
  *a2 = v7;
  *(a2 + 8) = v5;
  return result;
}

uint64_t LFDescriptorModelVersion(uint64_t **a1, uint64_t a2)
{
  if (!a1)
  {
    return 2;
  }

  if (!a2)
  {
    return 3;
  }

  v4 = sub_255B57BC0(**a1);
  v5 = *a1;
  if ((v4 & 1) == 0 && !*(*v5 + 32))
  {
    return 8;
  }

  v6 = sub_255B566C0(v5);
  if ((v7 & 0x100000000) == 0)
  {
    return 9;
  }

  v9 = v6;
  result = 0;
  *a2 = v9;
  *(a2 + 8) = v7;
  return result;
}

uint64_t LFDetectKeypoints(void **a1, const void *a2, uint64_t **a3)
{
  if (!a1)
  {
    return 2;
  }

  if (a2)
  {
    sub_255B01E40(&v4, a2, 1, 0);
  }

  return 3;
}

void sub_255AB1A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void (**a20)(void), uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (v27)
  {
    operator delete(v27);
    if (a27 == 1)
    {
LABEL_3:
      (*a20)(&a20);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a27 == 1)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

void sub_255AB1B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

uint64_t LFComputeDescriptors(uint64_t a1, const void *a2, int **a3, uint64_t **a4)
{
  v5[18] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 2;
  }

  result = 3;
  if (a2 && a3)
  {
    if (*a3)
    {
      sub_255B01E40(v5, a2, 1, 0);
    }
  }

  return result;
}

void sub_255AB2034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, int a32, __int16 a33, char a34, char a35)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255AB20E8(uint64_t a1)
{
  LOBYTE(v5) = 1;
  v6 = &v5;
  v1 = *(a1 + 24);
  if (v1 == -1)
  {
LABEL_7:
    sub_255A7C284();
  }

  v7 = &v6;
  (off_2867D08D8[v1])(&v7, a1);
  if ((v5 & 1) == 0 && *(a1 + 40))
  {
    v5 = &v6;
    v6 = 0;
    v3 = *(a1 + 24);
    if (v3 != -1)
    {
      v7 = &v5;
      (off_2867D08B8[v3])(&v7, a1);
      operator new[]();
    }

    goto LABEL_7;
  }

  return 0;
}

uint64_t LFDetectAndComputeFeatures(uint64_t a1, const void *a2, void *a3)
{
  if (!a1)
  {
    return 2;
  }

  if (a2)
  {
    sub_255B01E40(&v4, a2, 1, 0);
  }

  return 3;
}

void sub_255AB27D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_255AB2B1C(va);
  if (*(v15 - 56) == 1)
  {
    (**(v15 - 112))(v15 - 112);
  }

  _Unwind_Resume(a1);
}

float32x4_t *sub_255AB284C(uint64_t a1, __int128 **a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v4 = a2[1];
  if (*a2 != v4)
  {
    is_mul_ok(0xCCCCCCCCCCCCCCCDLL * ((v4 - *a2) >> 2), 0x14uLL);
    operator new[]();
  }

  v10 = 1;
  v9 = &v10;
  v5 = *(a2 + 12);
  if (v5 == -1)
  {
    goto LABEL_10;
  }

  v11 = &v9;
  (off_2867D08D8[v5])(&v11, a2 + 3);
  if ((v10 & 1) == 0)
  {
    *(a1 + 16) = sub_255AB20E8((a2 + 3));
    *(a1 + 24) = v6;
  }

  v10 = 1;
  v9 = &v10;
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
LABEL_10:
    sub_255A7C284();
  }

  v11 = &v9;
  result = (off_2867D08D8[v7])(&v11, a2 + 9);
  if ((v10 & 1) == 0)
  {
    operator new[]();
  }

  return result;
}

uint64_t sub_255AB2B1C(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    v2 = *(a1 + 96);
    if (v2 != -1)
    {
      (off_2867CECB8[v2])(&v6, a1 + 72);
    }

    *(a1 + 96) = -1;
    v3 = *(a1 + 48);
    if (v3 != -1)
    {
      (off_2867CECB8[v3])(&v7, a1 + 24);
    }

    *(a1 + 48) = -1;
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t LFComputeLocalGlobalDescriptors(uint64_t a1, CVPixelBufferRef pixelBuffer, int **a3, void *a4)
{
  if (!a1)
  {
    return 2;
  }

  result = 3;
  if (pixelBuffer && a3)
  {
    if (*a3)
    {
      CVPixelBufferGetWidth(pixelBuffer);
      CVPixelBufferGetHeight(pixelBuffer);
      kdebug_trace();
      sub_255B01E40(&v6, pixelBuffer, 1, 0);
    }
  }

  return result;
}

void sub_255AB31E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_255AB2B1C(&a22);
  if (*(v38 - 152))
  {
    (**(v38 - 208))(v38 - 208);
  }

  _Unwind_Resume(a1);
}

void *LFKeypointsRelease(void *result)
{
  if (result)
  {
    if (*result)
    {
      v2 = result;
      MEMORY[0x259C492F0](*result, 0x1000C80A86A77D5);
      *v2 = 0;
      v2[1] = 0;
      v1 = vars8;
    }

    JUMPOUT(0x259C49320);
  }

  return result;
}

void *LFDescriptorsRelease(void *result)
{
  if (result)
  {
    v2 = *result;
    if (*result)
    {
      if (!*v2 || (v3 = result, MEMORY[0x259C492F0](*v2, 0x1000C8052888210), result = v3, (v2 = *v3) != 0))
      {
        v4 = result;
        MEMORY[0x259C492F0](v2, 0x1080C80FC6463CFLL);
        result = v4;
      }

      *result = 0;
      result[1] = 0;
      v1 = vars8;
    }

    JUMPOUT(0x259C49320);
  }

  return result;
}

void *LFFeaturesRelease(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      MEMORY[0x259C492F0](v2, 0x1000C80A86A77D5);
      *v1 = 0;
      v1[1] = 0;
    }

    v4 = v1 + 2;
    v3 = v1[2];
    if (v3)
    {
      if (!*v3 || (MEMORY[0x259C492F0](*v3, 0x1000C8052888210), *v4))
      {
        MEMORY[0x259C492F0]();
      }

      *v4 = 0;
      v1[3] = 0;
    }

    v5 = v1[4];
    if (v5)
    {
      MEMORY[0x259C492F0](v5, 0x1000C8052888210);
    }

    v1[4] = 0;
    v1[5] = 0;

    JUMPOUT(0x259C49320);
  }

  return result;
}

uint64_t LFHandleRelease(uint64_t *a1)
{
  if (!a1)
  {
    return 2;
  }

  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = a1;
    (a1[1])(v1);
    a1 = v2;
  }

  MEMORY[0x259C49320](a1, 0xA0C40AFF93C70);
  return 0;
}

uint64_t sub_255AB3534(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    v1 = *(result + 24);
    if (v1 != -1)
    {
      v2 = result;
      (off_2867CECB8[v1])(&v3);
      result = v2;
    }

    *(result + 24) = -1;
  }

  return result;
}

double LearnedFeaturesGetVersion@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x1900000008;
  *a1 = 0x1900000008;
  *(a1 + 8) = 6;
  *(a1 + 16) = &unk_255C2500B;
  return result;
}

double sub_255AB35CC@<D0>(int a1@<W1>, char *a2@<X8>)
{
  if (a1 <= 4u)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        a2[23] = 5;
        strcpy(a2, "error");
      }

      else
      {
        a2[23] = 8;
        strcpy(a2, "no error");
      }

      return *&v3;
    }

    if (a1 == 2)
    {
      a2[23] = 14;
      strcpy(a2, "invalid handle");
      return *&v3;
    }

    if (a1 != 3)
    {
      if (a1 == 4)
      {
        a2[23] = 19;
        *&v3 = *"insufficient memory";
        strcpy(a2, "insufficient memory");
        return *&v3;
      }

      goto LABEL_27;
    }

    a2[23] = 16;
    v4 = "invalid argument";
LABEL_23:
    v3 = *v4;
    *a2 = *v4;
    a2[16] = 0;
    return *&v3;
  }

  if (a1 <= 7u)
  {
    switch(a1)
    {
      case 5u:
        a2[23] = 20;
        *&v3 = *"invalid pixel format";
        strcpy(a2, "invalid pixel format");
        return *&v3;
      case 6u:
        operator new();
      case 7u:
        operator new();
    }

    goto LABEL_27;
  }

  switch(a1)
  {
    case 8u:
      operator new();
    case 9u:
      a2[23] = 16;
      v4 = "no model version";
      goto LABEL_23;
    case 0xAu:
      operator new();
  }

LABEL_27:
  v8 = 0;
  v10 = v7;
  v11 = "invalid error code: ";
  v12 = v7;
  v13 = "invalid error code: ";
  v14 = "invalid error code: ";
  v9.__r_.__value_.__r.__words[0] = &v10;
  sub_255AB59D4(&v9);
  std::to_string(&v9, a1);
  v10 = v7;
  v11 = &v9;
  v12 = v7;
  v13 = &v9;
  v14 = &v9;
  if (v8 == -1)
  {
    sub_255A7C284();
  }

  v15 = &v10;
  (off_2867CED50[v8])(&v15, v7);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (v8 == -1)
  {
    sub_255A7C284();
  }

  v10 = &v9;
  (off_2867CED68[v8])(&v10, v7);
  if (v8 != -1)
  {
    (off_2867CED38[v8])(&v10, v7);
  }

  return *&v3;
}

void sub_255AB3A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A81658(va);
  _Unwind_Resume(a1);
}

void sub_255AB3A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_255A81658(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x255AB3A18);
}

void (***sub_255AB3A4C())(std::error_category *__hidden this)
{
  if (atomic_load_explicit(&qword_27F7DCFA0, memory_order_acquire))
  {
    return &off_281D60C40;
  }

  if (__cxa_guard_acquire(&qword_27F7DCFA0))
  {
    __cxa_atexit(std::error_category::~error_category, &off_281D60C40, &dword_255A74000);
    __cxa_guard_release(&qword_27F7DCFA0);
  }

  return &off_281D60C40;
}

void sub_255AB3ACC(uint64_t a1)
{
  std::mutex::lock(a1);
  if (*(a1 + 184) == 1)
  {
    if (*(a1 + 176) == 1)
    {
      if (*(a1 + 168) == 1)
      {
        if (*(a1 + 167) < 0)
        {
          operator delete(*(a1 + 144));
        }

        if (*(a1 + 135) < 0)
        {
          operator delete(*(a1 + 112));
        }
      }

      if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
      {
        operator delete(*(a1 + 80));
      }
    }

    *(a1 + 184) = 0;
  }

  std::mutex::unlock(a1);
}

void sub_255AB3B68(std::mutex *a1@<X0>, void *a2@<X8>)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[48] == 1)
  {
    sub_255C02F80(&v4, &a1[1]);
  }

  *a2 = 0;
  a2[1] = 0;

  std::mutex::unlock(a1);
}

void sub_255AB3C08(std::mutex *a1@<X0>, void *a2@<X8>)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[48] == 1)
  {
    sub_255C0B718(&a1[1], &__p);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v6 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], p_p, size, 0x8000100u, 0);
    sub_255C01F04(&v8, v6);
  }

  *a2 = 0;
  a2[1] = 0;
  std::mutex::unlock(a1);
}

void sub_255AB3D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_255AB3D60(std::mutex *this, char a2, uint64_t a3, void *a4)
{
  v61 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    goto LABEL_22;
  }

  *v40 = *a3;
  LOBYTE(v41) = 0;
  LOBYTE(v51) = 0;
  if (*(a3 + 112) == 1)
  {
    sub_255A7DEBC(&v41, (a3 + 16));
    LOBYTE(v51) = 1;
  }

  std::mutex::lock(this);
  if (this[2].__m_.__opaque[48] == 1)
  {
    sub_255AB555C(&this[1], v40);
    std::mutex::unlock(this);
    if (v51 != 1)
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  *&this[1].__m_.__sig = *v40;
  this[1].__m_.__opaque[8] = 0;
  this[2].__m_.__opaque[40] = 0;
  if (v51 == 1)
  {
    this[1].__m_.__opaque[32] = 0;
    if (v43 == 1)
    {
      *&this[1].__m_.__opaque[8] = v41;
      *&this[1].__m_.__opaque[24] = v42;
      v42.__locale_ = 0;
      v41 = 0uLL;
      this[1].__m_.__opaque[32] = 1;
    }

    this[1].__m_.__opaque[40] = 0;
    this[2].__m_.__opaque[32] = 0;
    if (v49 == 1)
    {
      v7 = v46;
      this[2].__m_.__sig = v45;
      *&this[1].__m_.__opaque[40] = *v44;
      v44[0] = 0;
      v44[1] = 0;
      *this[2].__m_.__opaque = v7;
      *&this[2].__m_.__opaque[8] = *__p;
      *&this[2].__m_.__opaque[24] = v48;
      v45 = 0;
      __p[0] = 0;
      __p[1] = 0;
      v48 = 0;
      this[2].__m_.__opaque[32] = 1;
    }

    this[2].__m_.__opaque[40] = 1;
  }

  this[2].__m_.__opaque[48] = 1;
  std::mutex::unlock(this);
  if (v51 == 1)
  {
LABEL_14:
    if (v49 == 1)
    {
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v45) < 0)
      {
        operator delete(v44[0]);
      }
    }

    if (v43 == 1 && SHIBYTE(v42.__locale_) < 0)
    {
      operator delete(v41);
    }
  }

LABEL_22:
  if (a4)
  {
    sub_255C02F80(v40, a3);
  }

  if ((atomic_load_explicit(&qword_27F7DCFB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCFB0))
  {
    sub_255C093B0(&v55);
    BYTE7(v41) = 10;
    strcpy(v40, "cv3dapi.lf");
    qword_27F7DCFA8 = sub_255AACC28(&v55, v40);
    if (SBYTE7(v41) < 0)
    {
      operator delete(v40[0]);
    }

    __cxa_guard_release(&qword_27F7DCFB0);
  }

  result = qword_27F7DCFA8;
  v54 = qword_27F7DCFA8;
  if (**(qword_27F7DCFA8 + 48) <= 5)
  {
    v9 = *(qword_27F7DCFA8 + 64);
    result = sub_255AAC4C0(qword_27F7DCFA8, "OSLogSurrogateAppender", 1, 0);
    v10 = result;
    if ((result != 0) | v9 & 1)
    {
      sub_255A7EBE8(v40);
      sub_255C0B718(a3, &v55);
      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v55;
      }

      else
      {
        v11 = v55.__r_.__value_.__r.__words[0];
      }

      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v55.__r_.__value_.__l.__size_;
      }

      sub_255A7F9C8(&v41, v11, size);
      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
        v13 = v52;
        if ((v52 & 0x10) == 0)
        {
LABEL_35:
          if ((v13 & 8) == 0)
          {
            v14 = 0;
            v39 = 0;
            goto LABEL_46;
          }

          v16 = v43;
          v14 = (v44[1] - v43);
          if ((v44[1] - v43) > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_89:
            sub_255A7BCA8();
          }

LABEL_41:
          if (v14 >= 0x17)
          {
            operator new();
          }

          v39 = v14;
          if (v14)
          {
            memmove(&__dst, v16, v14);
          }

LABEL_46:
          *(&__dst + v14) = 0;
          v31[0] = &v54;
          v31[1] = std::chrono::steady_clock::now().__d_.__rep_;
          v31[2] = std::chrono::system_clock::now().__d_.__rep_;
          v32 = 5;
          v33 = "unknown file";
          v34 = 145;
          v36 = 0;
          v37 = 0;
          v35 = "unknown function";
          if (v39 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          v18 = *v31[0];
          v19 = (*v31[0] + 8);
          v20 = *(*v31[0] + 31);
          __s = p_dst;
          if ((v20 & 0x8000000000000000) != 0)
          {
            v19 = *(v18 + 8);
            v20 = *(v18 + 16);
          }

          if ((atomic_load_explicit(&qword_27F7DC5F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC5F8))
          {
            sub_255AB5AC8(&qword_27F7DC5D8);
            __cxa_guard_release(&qword_27F7DC5F8);
          }

          if (byte_27F7DC5EF >= 0)
          {
            v21 = &qword_27F7DC5D8;
          }

          else
          {
            v21 = qword_27F7DC5D8;
          }

          if (byte_27F7DC5EF >= 0)
          {
            v22 = byte_27F7DC5EF;
          }

          else
          {
            v22 = unk_27F7DC5E0;
          }

          v55.__r_.__value_.__r.__words[0] = os_log_create(v21, v19);
          if (v22 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_255A7BCA8();
          }

          if (v22 >= 0x17)
          {
            operator new();
          }

          v56 = v22;
          if (v22)
          {
            memmove(&v55.__r_.__value_.__r.__words[1], v21, v22);
          }

          *(&v55.__r_.__value_.__r.__words[1] + v22) = 0;
          LOBYTE(v57) = 1;
          if (v20 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_255A7BCA8();
          }

          if (v20 >= 0x17)
          {
            operator new();
          }

          v59 = v20;
          if (v20)
          {
            memmove(&v58, v19, v20);
            *(&v58 + v20) = 0;
            v60 = 1;
            v23 = v55.__r_.__value_.__r.__words[0];
            if ((v59 & 0x80000000) == 0)
            {
LABEL_68:
              if (v57 != 1)
              {
                goto LABEL_75;
              }

              goto LABEL_73;
            }
          }

          else
          {
            LOBYTE(v58) = 0;
            v60 = 1;
            v23 = v55.__r_.__value_.__r.__words[0];
            if ((v59 & 0x80000000) == 0)
            {
              goto LABEL_68;
            }
          }

          operator delete(v58);
          if (v57 != 1)
          {
LABEL_75:
            if (v23)
            {
              os_release(v23);
            }

            if (v10 && *(v10 + 24))
            {
              _os_log_pack_size();
              MEMORY[0x259C49330]();
              operator new();
            }

            if (v10)
            {
              v24 = 3;
            }

            else
            {
              v24 = 2;
            }

            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v25 = v24;
            }

            else
            {
              v25 = 2;
            }

            LODWORD(v55.__r_.__value_.__l.__data_) = 136315138;
            *(v55.__r_.__value_.__r.__words + 4) = __s;
            v26 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_255A74000, v23, 16, "%s", &v55);
            if (v26)
            {
              free(v26);
            }

            if (v9)
            {
              v27 = &__dst;
              if (v39 < 0)
              {
                v27 = __dst;
              }

              sub_255AA9530(v31, "%s", v27);
              sub_255AB4DA0(v31);
            }

            sub_255AB4DA0(v31);
            v28 = v37;
            if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v28->__on_zero_shared)(v28);
              std::__shared_weak_count::__release_weak(v28);
            }

            if (v39 < 0)
            {
              operator delete(__dst);
            }

            v40[0] = *MEMORY[0x277D82818];
            v29 = *(MEMORY[0x277D82818] + 72);
            *(v40 + *(v40[0] - 3)) = *(MEMORY[0x277D82818] + 64);
            *&v41 = v29;
            *(&v41 + 1) = MEMORY[0x277D82878] + 16;
            if (v50 < 0)
            {
              operator delete(__p[1]);
            }

            *(&v41 + 1) = MEMORY[0x277D82868] + 16;
            std::locale::~locale(&v42);
            std::iostream::~basic_iostream();
            return MEMORY[0x259C49250](&v53);
          }

LABEL_73:
          if (v56 < 0)
          {
            operator delete(v55.__r_.__value_.__l.__size_);
          }

          goto LABEL_75;
        }
      }

      else
      {
        v13 = v52;
        if ((v52 & 0x10) == 0)
        {
          goto LABEL_35;
        }
      }

      v15 = v51;
      if (v51 < v46)
      {
        v51 = v46;
        v15 = v46;
      }

      v16 = v45;
      v14 = (v15 - v45);
      if (v15 - v45 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_89;
      }

      goto LABEL_41;
    }
  }

  return result;
}

void sub_255AB4BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  __cxa_guard_abort(&qword_27F7DC5F8);
  sub_255AB5950(&a13);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_255A7F000(&a28, MEMORY[0x277D82818]);
  MEMORY[0x259C49250](&a44);
  _Unwind_Resume(a1);
}

void sub_255AB4D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_255A7E1F4(va);
  _Unwind_Resume(a1);
}

void sub_255AB4DA0(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = (*v1 + 8);
      if (*(*v1 + 31) < 0)
      {
        v4 = *v4;
      }

      v5 = *(a1 + 8);
      v6 = *(a1 + 24);
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 64);
      v12 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = v4;
      v14 = v5;
      v15 = v6;
      v16 = v7;
      v17 = v8;
      v18 = v9;
      v19 = v3;
      v20 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v6 >= **(*v1 + 48))
      {
        sub_255AACB68(*v1, &v13);
        v10 = v20;
      }

      if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }

      if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }

      v11 = *(a1 + 64);
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      if (v11)
      {
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }
}

void sub_255AB4F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_255AB58D8(va1);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255AB4F68(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30.__r_.__value_.__r.__words[0] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = *(a2 + 8);
    v6 = strlen(v5);
    if (v6 <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_3;
    }

LABEL_24:
    sub_255A7BCA8();
  }

  v5 = &unk_255C2500B;
  v6 = strlen(&unk_255C2500B);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_24;
  }

LABEL_3:
  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v27 = v6;
  if (v6)
  {
    memmove(&__dst, v5, v6);
  }

  *(&__dst + v7) = 0;
  v8 = v27;
  v9 = v26;
  if ((v27 & 0x80u) == 0)
  {
    v10 = v27;
  }

  else
  {
    v10 = v26;
  }

  if (v10)
  {
    if ((v27 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v12 = memchr(p_dst, 32, v10);
    if (v12)
    {
      v13 = v12 - p_dst;
    }

    else
    {
      v13 = -1;
    }

    v14 = memchr(p_dst, 40, v10);
    v15 = v14 - p_dst;
    if (!v14)
    {
      v15 = -1;
    }

    v16 = v13 + 1;
    if ((v8 & 0x80) == 0)
    {
LABEL_21:
      if (v16 <= v8)
      {
        v17 = &__dst;
        goto LABEL_28;
      }

LABEL_46:
      sub_255A93C24();
    }
  }

  else
  {
    v13 = -1;
    v15 = -1;
    v16 = 0;
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_21;
    }
  }

  if (v9 < v16)
  {
    goto LABEL_46;
  }

  v17 = __dst;
  v8 = v9;
LABEL_28:
  v18 = v15 + ~v13;
  if (v8 - v16 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v8 - v16;
  }

  if (v19 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (v19 >= 0x17)
  {
    operator new();
  }

  v23 = v19;
  if (v19)
  {
    memmove(v22, v17 + v16, v19);
  }

  *(v22 + v19) = 0;
  v28.__r_.__value_.__r.__words[0] = "in function ";
  v28.__r_.__value_.__l.__size_ = 12;
  v20 = v23;
  v21 = v22;
  if ((v23 & 0x80u) != 0)
  {
    v21 = v22[0];
    v20 = v22[1];
  }

  v28.__r_.__value_.__r.__words[2] = v21;
  v29 = v20;
  sub_255A7F250(&v28, &v30, 0, 0, &__p);
  sub_255C0C4F0(a1, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v23 & 0x80000000) == 0)
    {
LABEL_41:
      if ((v27 & 0x80000000) == 0)
      {
        return;
      }

LABEL_45:
      operator delete(__dst);
      return;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  operator delete(v22[0]);
  if (v27 < 0)
  {
    goto LABEL_45;
  }
}

void sub_255AB526C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a21);
  _Unwind_Resume(exception_object);
}

uint64_t sub_255AB52E0(std::mutex *this, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a3)
  {
    LOBYTE(v11) = 0;
    v19 = 0;
    sub_255A7E3F0(&v20, a3, &v11);
    sub_255AB4F68(&v20, a5, v30);
    sub_255AB3D60(this, a2, v30, a4);
    if (v39 == 1)
    {
      if (v38 == 1)
      {
        if (v37 < 0)
        {
          operator delete(v36);
        }

        if (v35 < 0)
        {
          operator delete(v34);
        }
      }

      if (v33 == 1 && v32 < 0)
      {
        operator delete(v31);
      }
    }

    if (v29 == 1)
    {
      if (v28 == 1)
      {
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 < 0)
        {
          operator delete(v24);
        }
      }

      if (v23 == 1 && v22 < 0)
      {
        operator delete(v21);
      }
    }

    if (v19 == 1)
    {
      if (v18 == 1)
      {
        if (v17 < 0)
        {
          operator delete(v16);
        }

        if (v15 < 0)
        {
          operator delete(v14);
        }
      }

      if (v13 == 1 && v12 < 0)
      {
        operator delete(v11);
      }
    }
  }

  else if (a2)
  {
    std::mutex::lock(this);
    if (this[2].__m_.__opaque[48] == 1)
    {
      if (this[2].__m_.__opaque[40] == 1)
      {
        if (this[2].__m_.__opaque[32] == 1)
        {
          if (this[2].__m_.__opaque[31] < 0)
          {
            operator delete(*&this[2].__m_.__opaque[8]);
          }

          if (SHIBYTE(this[2].__m_.__sig) < 0)
          {
            operator delete(*&this[1].__m_.__opaque[40]);
          }
        }

        if (this[1].__m_.__opaque[32] == 1 && this[1].__m_.__opaque[31] < 0)
        {
          operator delete(*&this[1].__m_.__opaque[8]);
        }
      }

      this[2].__m_.__opaque[48] = 0;
    }

    std::mutex::unlock(this);
  }

  return a3;
}

void sub_255AB54E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_255A7E1F4(v3 - 168);
  sub_255A7E1F4(va1);
  sub_255A7E144(va);
  _Unwind_Resume(a1);
}

void sub_255AB5510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7E144(va);
  _Unwind_Resume(a1);
}

void sub_255AB5524(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AB555C(uint64_t result, uint64_t a2)
{
  *result = *a2;
  if (*(result + 112) != *(a2 + 112))
  {
    if (*(result + 112))
    {
      if (*(result + 104) != 1)
      {
        goto LABEL_13;
      }

      if (*(result + 103) < 0)
      {
        v5 = result;
        operator delete(*(result + 80));
        result = v5;
      }

      if (*(result + 71) < 0)
      {
        v14 = result;
        operator delete(*(result + 48));
        result = v14;
        if (*(v14 + 40) == 1)
        {
LABEL_14:
          if (*(result + 39) < 0)
          {
            v15 = result;
            operator delete(*(result + 16));
            result = v15;
            *(v15 + 112) = 0;
          }

          else
          {
            *(result + 112) = 0;
          }

          return result;
        }
      }

      else
      {
LABEL_13:
        if (*(result + 40) == 1)
        {
          goto LABEL_14;
        }
      }

      v7 = 0;
    }

    else
    {
      *(result + 16) = 0;
      *(result + 40) = 0;
      if (*(a2 + 40) == 1)
      {
        v6 = *(a2 + 16);
        *(result + 32) = *(a2 + 32);
        *(result + 16) = v6;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 16) = 0;
        *(result + 40) = 1;
      }

      *(result + 48) = 0;
      *(result + 104) = 0;
      v7 = 1;
      if (*(a2 + 104) == 1)
      {
        v8 = *(a2 + 48);
        *(result + 64) = *(a2 + 64);
        *(result + 48) = v8;
        *(a2 + 56) = 0;
        *(a2 + 64) = 0;
        *(a2 + 48) = 0;
        *(result + 72) = *(a2 + 72);
        v9 = *(a2 + 80);
        *(result + 96) = *(a2 + 96);
        *(result + 80) = v9;
        *(a2 + 88) = 0;
        *(a2 + 96) = 0;
        *(a2 + 80) = 0;
        *(result + 104) = 1;
        *(result + 112) = 1;
        return result;
      }
    }

    *(result + 112) = v7;
    return result;
  }

  if (*(result + 112))
  {
    if (*(result + 40) == *(a2 + 40))
    {
      if (*(result + 40))
      {
        if (*(result + 39) < 0)
        {
          v2 = result;
          v3 = a2;
          operator delete(*(result + 16));
          a2 = v3;
          result = v2;
        }

        v4 = *(a2 + 16);
        *(result + 32) = *(a2 + 32);
        *(result + 16) = v4;
        *(a2 + 39) = 0;
        *(a2 + 16) = 0;
      }
    }

    else if (*(result + 40))
    {
      if (*(result + 39) < 0)
      {
        v10 = result;
        v11 = a2;
        operator delete(*(result + 16));
        a2 = v11;
        result = v10;
      }

      *(result + 40) = 0;
    }

    else
    {
      v12 = *(a2 + 16);
      *(result + 32) = *(a2 + 32);
      *(result + 16) = v12;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(result + 40) = 1;
    }

    v13 = result;
    sub_255AB57A4(result + 48, (a2 + 48));
    return v13;
  }

  return result;
}

void sub_255AB57A4(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 56) != *(a2 + 56))
  {
    if (!*(a1 + 56))
    {
      v7 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v7;
      *(a2 + 8) = 0uLL;
      *a2 = 0;
      *(a1 + 24) = *(a2 + 3);
      v8 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v8;
      *(a2 + 40) = 0uLL;
      *(a2 + 4) = 0;
      *(a1 + 56) = 1;
      return;
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else if ((*(a1 + 23) & 0x80000000) == 0)
    {
LABEL_12:
      *(a1 + 56) = 0;
      return;
    }

    operator delete(*a1);
    *(a1 + 56) = 0;
    return;
  }

  if (*(a1 + 56))
  {
    if (*(a1 + 23) < 0)
    {
      v3 = a2;
      operator delete(*a1);
      a2 = v3;
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
    *(a1 + 24) = *(a2 + 3);
    if (*(a1 + 55) < 0)
    {
      v5 = a2;
      operator delete(*(a1 + 32));
      a2 = v5;
    }

    v6 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 32) = v6;
    *(a2 + 55) = 0;
    *(a2 + 32) = 0;
  }
}

uint64_t sub_255AB58D8(uint64_t result)
{
  v1 = *(result + 64);
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

uint64_t sub_255AB5950(uint64_t a1)
{
  sub_255AB4DA0(a1);
  v2 = *(a1 + 64);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  return a1;
}

size_t sub_255AB59D4(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CED38[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_255AB5AC8(uint64_t a1@<X8>)
{
  sub_255C0AAFC(&v6);
  if (v12 == 1)
  {
    v3 = v6;
    v13[0] = v7;
    LOWORD(v13[1]) = v8;
    v4 = v9;
    v2 = v10;
    v5 = v11;
  }

  else
  {
    v4 = 0;
    qmemcpy(v13, "e.cv3d", 6);
    v5 = 14;
    v3 = 0x6C7070612E6D6F63;
  }

  *a1 = v3;
  *(a1 + 8) = v13[0];
  *(a1 + 12) = v13[1];
  *(a1 + 14) = v4;
  *(a1 + 15) = v2;
  *(a1 + 23) = v5;
  *(a1 + 24) = 1;
}

uint64_t sub_255AB5B7C(uint64_t result)
{
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_255AB5BC0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AB5BF8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x259C49320);
  }

  return result;
}

uint64_t sub_255AB5C18(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIvE27__shared_ptr_default_deleteIv13os_log_pack_sEE")
  {
    if (((v2 & "NSt3__110shared_ptrIvE27__shared_ptr_default_deleteIv13os_log_pack_sEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIvE27__shared_ptr_default_deleteIv13os_log_pack_sEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIvE27__shared_ptr_default_deleteIv13os_log_pack_sEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_255AB5C98(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867CEDE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255AB5CEC(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_255AB5D04(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AB5D7C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 16);
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

uint64_t *sub_255AB5E44(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v2 + 16);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x259C49320](v2, 0x10F0C40B62ED6C6);
  }

  return a1;
}

uint64_t sub_255AB5F3C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_2867CEED8[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t sub_255AB5F98(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_2867CEED8[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t sub_255AB5FF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  *a1 = &unk_2867C8750;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = sub_255B04718(a2);
  return a1;
}

void sub_255AB6070(uint64_t a1@<X0>, char *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  if (v4 == 1)
  {
    v9 = *(a1 + 8);
    if (v9)
    {
      v11 = *v9;
      v10 = v9[1];
      if (v10 && (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
        if (!v11)
        {
          goto LABEL_25;
        }
      }

      else if (!v11)
      {
        goto LABEL_25;
      }

      v12 = sub_255BFBBB8(a1);
      if (v12 == 875704422 || v12 == 1278226488 || v12 == 875704438)
      {
        v14 = *(a1 + 8);
        v13 = *(a1 + 16);
        v16[0] = &unk_2867C4068;
        v16[1] = v14;
        v16[2] = v13;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        sub_255B3D368(v16, 0, &v17);
      }

      goto LABEL_21;
    }

LABEL_25:
    v15 = 3;
    goto LABEL_26;
  }

  if (v4)
  {
    sub_255A7C284();
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_25;
  }

  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      if (v7)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_7:
  v8 = sub_255B00FAC(a1);
  if (v8 == 875704422 || v8 == 1278226488 || v8 == 875704438)
  {
    sub_255ADF6E0(a1, 0, &v17);
  }

LABEL_21:
  v15 = 5;
LABEL_26:
  *a2 = v15;
  a2[56] = 0;
}

void sub_255AB68F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (*(v30 - 137) < 0)
  {
    operator delete(*(v30 - 160));
    if ((v29 & 1) == 0)
    {
LABEL_6:
      sub_255A7A508(va);
      sub_255A7A508(&a27);
      sub_255AB8668(&a13);
      sub_255AB86FC(&a20);
      sub_255BFA730(&a10);
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

void sub_255AB695C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_255AB86FC(va);
  _Unwind_Resume(a1);
}

void sub_255AB6970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255AB6988(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 < 0xAu)
  {
    v9 = *a2;
    sub_255ABA0BC(&v9, v10);
    if (a3 < 4)
    {
      sub_255A7F908(*(a4 + 8), v8);
      sub_255B5619C(&v11, v10, a3, v8);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_255AB9DAC();
    std::logic_error::logic_error(exception, &v12);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2798073B8, MEMORY[0x277D82610]);
  }

  v6 = __cxa_allocate_exception(0x10uLL);
  sub_255AB9BD8();
  std::logic_error::logic_error(v6, &v12);
  v6->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v6, off_2798073B8, MEMORY[0x277D82610]);
}

void sub_255AB6BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (*(v17 - 33) < 0)
  {
    operator delete(*(v17 - 56));
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_255A7F5A0(va);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  sub_255A7F5A0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_255AB6CA0(uint64_t *a1)
{
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    if (*(v2 + 184) == 1 && *(v2 + 176) == 1)
    {
      if (*(v2 + 168) == 1)
      {
        if (*(v2 + 167) < 0)
        {
          operator delete(*(v2 + 144));
        }

        if (*(v2 + 135) < 0)
        {
          operator delete(*(v2 + 112));
        }
      }

      if (*(v2 + 104) == 1 && *(v2 + 103) < 0)
      {
        operator delete(*(v2 + 80));
      }
    }

    std::mutex::~mutex(v2);
    MEMORY[0x259C49320]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    (a1[1])();
  }

  return a1;
}

unint64_t sub_255AB6D64(uint64_t **a1)
{
  v2 = sub_255B57BC0(**a1);
  v3 = *a1;
  if ((v2 & 1) == 0 && !*(*v3 + 32))
  {
    return 2;
  }

  v4 = sub_255B566C0(v3);
  if ((v5 & 0x100000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 3;
  }

  if ((v5 & 0x100000000) != 0)
  {
    v7 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v7 = 0;
  }

  return v7 | v6;
}

uint64_t sub_255AB6DFC@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_255B57BC0(**a1);
  if ((result & 1) == 0)
  {
    *a4 = 2;
    *(a4 + 48) = 0;
    return result;
  }

  result = sub_255B57EF0(*a1, a2 + 32);
  if ((result & 1) == 0)
  {
    *a4 = 0;
    *(a4 + 48) = 0;
    return result;
  }

  sub_255B56BA4(*a1, a2, a3, (*a1)[3], v11);
  v16 = 0;
  v15 = &v16;
  if (v12 == -1)
  {
    sub_255A7C284();
  }

  v17 = &v15;
  result = (off_2867D08B8[v12])(&v17, v11);
  if (v16 != 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 2))
  {
    *a4 = 4;
    *(a4 + 48) = 0;
    v10 = v12;
    if (v12 == -1)
    {
      return result;
    }

    return (off_2867CF010[v10])(&v17, v11);
  }

  *a4 = 0;
  *(a4 + 24) = -1;
  v9 = v12;
  if (v12 != -1)
  {
    v17 = a4;
    result = (off_2867CF030[v12])(&v17, v11);
    *(a4 + 24) = v9;
  }

  *(a4 + 32) = v13;
  *(a4 + 40) = v14;
  *(a4 + 48) = 1;
  v10 = v12;
  if (v12 != -1)
  {
    return (off_2867CF010[v10])(&v17, v11);
  }

  return result;
}

void sub_255AB6FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255ABA020(va);
  _Unwind_Resume(a1);
}

void sub_255AB6FC0(uint64_t ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_255B57280(**a1);
  v7 = *a1;
  if (v6)
  {
    v8 = *v7;
    v9 = v8[4];
    if (v9)
    {
      v10 = v8[5];
      __p = v8[4];
      v20 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = (*(*v9 + 24))(v9, a2 + 32);
      if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v18 = v11;
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
        if (v18)
        {
          goto LABEL_8;
        }
      }

      else if (v11)
      {
LABEL_8:
        if (sub_255B57BC0(**a1) && (sub_255B57A60(**a1) & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_15;
      }
    }

LABEL_34:
    *a3 = 0;
    *(a3 + 120) = 0;
    return;
  }

  if ((sub_255B57A60(*v7) & 1) == 0)
  {
LABEL_23:
    v17 = 1;
LABEL_25:
    *a3 = v17;
    *(a3 + 120) = 0;
    return;
  }

  if ((sub_255B57BC0(**a1) & 1) == 0)
  {
    v17 = 2;
    goto LABEL_25;
  }

  if ((sub_255B57D20(*a1, a2 + 32) & 1) == 0 || (sub_255B57EF0(*a1, a2 + 32) & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_15:
  sub_255B56F10(*a1, a2, (*a1)[2], (*a1)[3], &__p);
  v30 = &v31;
  v31 = 0;
  if (v23 == -1)
  {
    sub_255A7C284();
  }

  v32 = &v30;
  (off_2867D08B8[v23])(&v32, v22);
  v12 = v20;
  if (v31 == 0xCCCCCCCCCCCCCCCDLL * ((v20 - __p) >> 2))
  {
    *a3 = __p;
    *(a3 + 8) = v12;
    *(a3 + 16) = v21;
    v20 = 0;
    v21 = 0;
    __p = 0;
    *(a3 + 24) = 0;
    *(a3 + 48) = -1;
    v13 = v23;
    if (v23 != -1)
    {
      v32 = (a3 + 24);
      (off_2867CF030[v23])(&v32, v22);
      *(a3 + 48) = v13;
    }

    v14 = v24;
    *(a3 + 72) = 0;
    *(a3 + 56) = v14;
    v15 = v27;
    *(a3 + 64) = v25;
    *(a3 + 96) = -1;
    if (v15 != -1)
    {
      v32 = (a3 + 72);
      (off_2867CF030[v15])(&v32, v26);
      *(a3 + 96) = v15;
    }

    *(a3 + 104) = v28;
    *(a3 + 112) = v29;
    *(a3 + 120) = 1;
    v16 = v27;
    if (v27 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  *a3 = 4;
  *(a3 + 120) = 0;
  v16 = v27;
  if (v27 != -1)
  {
LABEL_28:
    (off_2867CF010[v16])(&v32, v26);
  }

LABEL_29:
  v27 = -1;
  if (v23 != -1)
  {
    (off_2867CF010[v23])(&v32, v22);
  }

  v23 = -1;
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }
}

uint64_t sub_255AB7344(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 != -1)
  {
    (off_2867CF010[v2])(&v6, a1 + 72);
  }

  *(a1 + 96) = -1;
  v3 = *(a1 + 48);
  if (v3 != -1)
  {
    (off_2867CF010[v3])(&v7, a1 + 24);
  }

  *(a1 + 48) = -1;
  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_255AB73DC(uint64_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if ((sub_255B57BC0(**a1) & 1) == 0)
  {
    *a4 = 2;
    *(a4 + 120) = 0;
    return;
  }

  if ((sub_255B57EF0(*a1, a2 + 32) & 1) == 0)
  {
    goto LABEL_26;
  }

  v8 = **a1;
  v9 = *(v8 + 32);
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = *(v8 + 40);
  __p[0] = *(v8 + 32);
  __p[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = (*(*v9 + 24))(v9, a2 + 32);
  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v11)
    {
      goto LABEL_9;
    }

LABEL_26:
    *a4 = 0;
    *(a4 + 120) = 0;
    return;
  }

  v16 = v11;
  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if ((v16 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  sub_255B575B0(*a1, a2, a3, (*a1)[3], __p);
  v27 = &v28;
  v28 = 0;
  if (v20 == -1)
  {
    sub_255A7C284();
  }

  v29 = &v27;
  (off_2867D08B8[v20])(&v29, v19);
  if (v28 == 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 2))
  {
    *a4 = *__p;
    *(a4 + 16) = v18;
    __p[1] = 0;
    v18 = 0;
    __p[0] = 0;
    *(a4 + 24) = 0;
    *(a4 + 48) = -1;
    v12 = v20;
    if (v20 != -1)
    {
      v29 = (a4 + 24);
      (off_2867CF030[v20])(&v29, v19);
      *(a4 + 48) = v12;
    }

    v13 = v21;
    *(a4 + 72) = 0;
    *(a4 + 56) = v13;
    v14 = v24;
    *(a4 + 64) = v22;
    *(a4 + 96) = -1;
    if (v14 != -1)
    {
      v29 = (a4 + 72);
      (off_2867CF030[v14])(&v29, v23);
      *(a4 + 96) = v14;
    }

    *(a4 + 104) = v25;
    *(a4 + 112) = v26;
    *(a4 + 120) = 1;
    v15 = v24;
    if (v24 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  *a4 = 4;
  *(a4 + 120) = 0;
  v15 = v24;
  if (v24 != -1)
  {
LABEL_20:
    (off_2867CF010[v15])(&v29, v23);
  }

LABEL_21:
  v24 = -1;
  if (v20 != -1)
  {
    (off_2867CF010[v20])(&v29, v19);
  }

  v20 = -1;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t sub_255AB7738@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v9 = a1;
  sub_255ABA0BC(&v9, &v6);
  if (HIDWORD(v6) == 1 && v7 == 1)
  {
    sub_255B6393C(5);
  }

  if (HIDWORD(v6) == 1)
  {
    v4 = 0;
  }

  else
  {
    if (HIDWORD(v6) != 2)
    {
      *a2 = 0;
      a2[1] = 0;
      return sub_255A7F5A0(&v8);
    }

    v4 = 1;
  }

  sub_255B88418(v4, a2);
  return sub_255A7F5A0(&v8);
}

void sub_255AB77C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A7F5A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255AB77F8(uint64_t result)
{
  v1 = *(result + 8);
  *(result + 8) = 0;
  if (v1)
  {
    v2 = result;
    (*(result + 16))(v1);
    return v2;
  }

  return result;
}

void sub_255AB7838(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v1)
  {
    (*(a1 + 16))(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AB7898(uint64_t a1, uint64_t a2, void **a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  sub_255AB6070(a2, &v20);
  if (v26 != 1)
  {
    return v20;
  }

  v14 = &unk_2867C5610;
  v7 = v21;
  v8 = v22;
  if (v22)
  {
    p_shared_owners = &v22->__shared_owners_;
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = v25;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = v23;
    v18 = v24;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = v7;
    v16 = v8;
    v19 = v10;
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_9;
      }
    }

    else
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_9:
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  else
  {
    v15 = v21;
    v16 = 0;
    v17 = v23;
    v18 = v24;
    v19 = v25;
  }

  sub_255AB6DFC((a1 + 8), &v14, *a3, v27);
  v12 = v16;
  if (!v16 || atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v29)
    {
      goto LABEL_13;
    }

LABEL_21:
    if (v27[0] >= 5u)
    {
      v11 = 6;
    }

    else
    {
      v11 = 0x109080706uLL >> (8 * LOBYTE(v27[0]));
    }

    if ((v26 & 1) == 0)
    {
      return v11;
    }

LABEL_25:
    (*v20)(&v20);
    return v11;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if ((v29 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_13:
  if (operator new(0x20uLL, MEMORY[0x277D826F0]))
  {
    operator new();
  }

  *a4 = 0;
  if ((v29 & 1) != 0 && v28 != -1)
  {
    (off_2867CF010[v28])(&v14, v27);
  }

  v11 = 0;
  if (v26)
  {
    goto LABEL_25;
  }

  return v11;
}

void sub_255AB7BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255AB7CA8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_255AB6070(a2, &v25);
  if (v31 != 1)
  {
    return v25;
  }

  v13 = &unk_2867C5610;
  v5 = v26;
  v6 = v27;
  if (v27)
  {
    p_shared_owners = &v27->__shared_owners_;
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = v30;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v16 = v28;
    v17 = v29;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v5;
    v15 = v6;
    v18 = v8;
    if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_9;
      }
    }

    else
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_9:
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  else
  {
    v14 = v26;
    v15 = 0;
    v16 = v28;
    v17 = v29;
    v18 = v30;
  }

  sub_255AB6FC0((a1 + 8), &v13, __p);
  v10 = v15;
  if (!v15 || atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_25:
    if (LODWORD(__p[0]) >= 5)
    {
      v9 = 6;
    }

    else
    {
      v9 = 0x109080706uLL >> (8 * LOBYTE(__p[0]));
    }

    if ((v31 & 1) == 0)
    {
      return v9;
    }

LABEL_29:
    (*v25)(&v25);
    return v9;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if ((v24 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  v11 = operator new(0x58uLL, MEMORY[0x277D826F0]);
  if (v11)
  {
    sub_255ABA4F0(v11 + 1, __p);
  }

  *a3 = 0;
  if (v24)
  {
    if (v23 != -1)
    {
      (off_2867CF010[v23])(&v13, &v22);
    }

    v23 = -1;
    if (v21 != -1)
    {
      (off_2867CF010[v21])(&v13, &v20);
    }

    v21 = -1;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  v9 = 0;
  if (v31)
  {
    goto LABEL_29;
  }

  return v9;
}

void sub_255AB7F9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  MEMORY[0x259C49310](v33, MEMORY[0x277D826F0], a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  *v32 = 0;
  if ((a32 & 1) == 0)
  {
    JUMPOUT(0x255AB7ED8);
  }

  JUMPOUT(0x255AB7E74);
}

void sub_255AB7FD4(_Unwind_Exception *a1)
{
  sub_255A98B3C();
  if (*(v1 - 56))
  {
    (**(v1 - 112))(v1 - 112);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255AB801C(uint64_t a1, uint64_t a2, void **a3, void *a4)
{
  if ((*a3)[1] == **a3)
  {
    LOBYTE(v12) = 3;
    return v12;
  }

  kdebug_trace();
  sub_255AB6070(a2, &v28);
  if (v34 != 1)
  {
    LOBYTE(v12) = v28;
    return v12;
  }

  kdebug_trace();
  v16 = &unk_2867C5610;
  v8 = v29;
  v9 = v30;
  if (!v30)
  {
    v17 = v29;
    v18 = 0;
    v19 = v31;
    v20 = v32;
    v21 = v33;
    goto LABEL_12;
  }

  p_shared_owners = &v30->__shared_owners_;
  atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = v33;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v19 = v31;
  v20 = v32;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = v8;
  v18 = v9;
  v21 = v11;
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_12;
    }
  }

  else
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_12;
    }
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
LABEL_12:
  sub_255AB73DC((a1 + 8), &v16, *a3, __p);
  v13 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  kdebug_trace();
  if ((v27 & 1) == 0)
  {
    if (LODWORD(__p[0]) >= 5)
    {
      LOBYTE(v12) = 6;
      if ((v34 & 1) == 0)
      {
        return v12;
      }
    }

    else
    {
      v12 = 0x109080706uLL >> (8 * LOBYTE(__p[0]));
      if ((v34 & 1) == 0)
      {
        return v12;
      }
    }

    goto LABEL_31;
  }

  v35 = &v36;
  v36 = 0;
  if (v24 == -1)
  {
    sub_255A7C284();
  }

  v16 = &v35;
  (off_2867D08B8[v24])(&v16, v23);
  v14 = operator new(0x58uLL, MEMORY[0x277D826F0]);
  if (v14)
  {
    sub_255ABA4F0(v14 + 1, __p);
  }

  *a4 = 0;
  kdebug_trace();
  if (v27)
  {
    if (v26 != -1)
    {
      (off_2867CF010[v26])(&v16, &v25);
    }

    v26 = -1;
    if (v24 != -1)
    {
      (off_2867CF010[v24])(&v16, v23);
    }

    v24 = -1;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
      LOBYTE(v12) = 0;
      if ((v34 & 1) == 0)
      {
        return v12;
      }

      goto LABEL_31;
    }
  }

  LOBYTE(v12) = 0;
  if (v34)
  {
LABEL_31:
    (*v28)(&v28);
  }

  return v12;
}

void sub_255AB840C(void *a1)
{
  MEMORY[0x259C49310](v1, MEMORY[0x277D826F0]);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x255AB82CCLL);
}

void sub_255AB843C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_255AB2B1C(va);
  if (*(v16 - 88) == 1)
  {
    (**(v16 - 144))(v16 - 144);
  }

  _Unwind_Resume(a1);
}

void sub_255AB84A4(uint64_t a1, void *a2)
{
  *a2 = &unk_2867C8750;
  v2 = a2[2];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_255AB853C(uint64_t a1, void *a2)
{
  *a2 = &unk_2867C4068;
  v2 = a2[2];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void *sub_255AB85D4(void *result)
{
  *result = &unk_2867CEF28;
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

void *sub_255AB8668(void *result)
{
  *result = &unk_2867C7CC0;
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

void *sub_255AB86FC(void *result)
{
  *result = &unk_2867C7DC0;
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

void sub_255AB8790(void *a1)
{
  *a1 = &unk_2867C7CC0;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AB8864(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

void sub_255AB88F4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_255AB8C54(&v16, a2);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v16.__r_.__value_.__r.__words[0] = v4;
      v16.__r_.__value_.__l.__size_ = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      *&v16.__r_.__value_.__l.__data_ = v4;
    }
  }

  else
  {
    *&v16.__r_.__value_.__l.__data_ = 0uLL;
  }

  v6 = *(a2 + 24);
  v7 = v6 == 0;
  if (!*(a2 + 28))
  {
    v7 = 1;
  }

  v8 = *(a2 + 32) << 32;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a2 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a2 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v12 = qword_27F7DD608, v13 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_26:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_27F7DD608;
      v13 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_27F7DD630)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a2 + 52);
  size = v16.__r_.__value_.__l.__size_;
  if (v16.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v16.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    *a1 = *&v16.__r_.__value_.__l.__data_;
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    *(a1 + 32) = v9;
    *(a1 + 40) = v14;
    if (!atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);

      std::__shared_weak_count::__release_weak(size);
    }
  }

  else
  {
    *a1 = v16.__r_.__value_.__r.__words[0];
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    *(a1 + 32) = v9;
    *(a1 + 40) = v14;
  }
}

void sub_255AB8C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_255AB8C54(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27F7DCFB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCFB8))
  {
    sub_255AB8D58();
    __cxa_guard_release(&qword_27F7DCFB8);
  }

  if ((atomic_load_explicit(&qword_27F7DCFC0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27F7DCFC0))
    {
      sub_255AB8DF0();
      __cxa_guard_release(&qword_27F7DCFC0);
    }
  }

  v3 = *(a2 + 48);
  sub_255A9906C("Attempting to create an ", &qword_27F7DCFD0, " from an ", &stru_27F7DCFE8, " but the image is of incompatible format ", &v3);
}

void sub_255AB8D58()
{
  v1 = 11;
  strcpy(__p, "SharedImage");
  sub_255A9A55C(__p, &qword_27F7DCFD0);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_255AB8DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AB8DF0()
{
  v1 = 11;
  strcpy(__p, "SharedImage");
  sub_255A9A93C(__p, &stru_27F7DCFE8);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_255AB8E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AB8E88(void *a1)
{
  *a1 = &unk_2867C7DC0;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AB8F38@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(result + 24);
  *(a2 + 8) = *(result + 32);
  return result;
}

uint64_t sub_255AB8F4C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

void sub_255AB8FDC(void *a1)
{
  *a1 = &unk_2867CEF28;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AB90B0(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

void *sub_255AB9140(void *result)
{
  *result = &unk_2867C7D00;
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

void sub_255AB91D4(void *a1)
{
  *a1 = &unk_2867C7D00;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AB92A8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

void sub_255AB9338(uint64_t a1, uint64_t a2)
{
  v24.__r_.__value_.__r.__words[2] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27F7DCFC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCFC8))
  {
    sub_255AB9708();
  }

  if ((atomic_load_explicit(&qword_27F7DCFB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DCFB8))
  {
    sub_255AB8D58();
    __cxa_guard_release(&qword_27F7DCFB8);
  }

  v20.__r_.__value_.__r.__words[0] = "Attempting to create an ";
  v20.__r_.__value_.__l.__size_ = 24;
  v4 = &qword_27F7DCFD0;
  v5 = byte_27F7DD017;
  if (byte_27F7DD017 >= 0)
  {
    v6 = &qword_27F7DD000;
  }

  else
  {
    v5 = qword_27F7DD008;
    v6 = qword_27F7DD000;
  }

  v20.__r_.__value_.__r.__words[2] = v6;
  v21 = v5;
  v22 = " from an ";
  v23 = 9;
  v7 = byte_27F7DCFE7;
  if (byte_27F7DCFE7 < 0)
  {
    v7 = unk_27F7DCFD8;
    v4 = qword_27F7DCFD0;
  }

  v24.__r_.__value_.__r.__words[0] = v4;
  v24.__r_.__value_.__l.__size_ = v7;
  sub_255A7F250(&v20, &v24.__r_.__value_.__r.__words[2], 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v20.__r_.__value_.__r.__words[0] = p_p;
    v20.__r_.__value_.__l.__size_ = size;
    v20.__r_.__value_.__r.__words[2] = " but the other image contains an incompatible buffer type ";
    v21 = 58;
    v22 = v11;
    v23 = v12;
    sub_255A7F250(&v20, &v24, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __p.__r_.__value_.__l.__size_;
  }

  v17 = v16 + 46;
  if (v16 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  if (v17 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v17;
  if (v15 >= 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v18, v16);
  strcpy((a1 + v16), " but the other image does not contain a buffer");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_32:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_255AB96E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AB9708()
{
  v4 = *MEMORY[0x277D85DE8];
  v0[23] = 11;
  strcpy(v0, "SharedImage");
  sub_255C0F2C0("cv3d::kit::img::Format::Gray8u]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_255C0EAC8(&v3, &__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_255AB99E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_255AB9B44(void *result)
{
  *result = &unk_2867C7D00;
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

uint64_t sub_255AB9BD8()
{
  v2 = 0;
  v3[0] = v1;
  v3[1] = "invalid descriptor type";
  v3[2] = v1;
  v3[3] = "invalid descriptor type";
  v3[4] = "invalid descriptor type";
  v4 = v3;
  sub_255AB9CB8(&v4);
  if (v2 == -1)
  {
    sub_255A7C284();
  }

  v3[0] = &v4;
  result = (off_2867CEF00[v2])(v3, v1);
  if (v2 != -1)
  {
    return (off_2867CEEE8[v2])(v3, v1);
  }

  return result;
}

size_t sub_255AB9CB8(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CEEE8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

uint64_t sub_255AB9DAC()
{
  v2 = 0;
  v3[0] = v1;
  v3[1] = "invalid device type";
  v3[2] = v1;
  v3[3] = "invalid device type";
  v3[4] = "invalid device type";
  v4 = v3;
  sub_255AB9E8C(&v4);
  if (v2 == -1)
  {
    sub_255A7C284();
  }

  v3[0] = &v4;
  result = (off_2867CEF00[v2])(v3, v1);
  if (v2 != -1)
  {
    return (off_2867CEEE8[v2])(v3, v1);
  }

  return result;
}

size_t sub_255AB9E8C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CEEE8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

__n128 sub_255AB9F80(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *a2 = 0uLL;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_255AB9FA8(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *a2 = 0uLL;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_255AB9FD0(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *a2 = 0uLL;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_255AB9FF8(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *a2 = 0uLL;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_255ABA020(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_2867CF010[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t *sub_255ABA07C(uint64_t *result)
{
  if (result)
  {
    sub_255AB6CA0(result);

    JUMPOUT(0x259C49320);
  }

  return result;
}

unsigned __int8 *sub_255ABA0BC@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (v2 >= 0xA)
  {
    sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/FeatureExtractionApi/src/FeatureExtractionApiUtil.cpp", 61, &unk_255C2500B, 0, "invalid detector descriptor type", 0x20uLL, sub_255C101E0);
    abort();
  }

  v3 = dword_255C318D8[v2];
  v4 = dword_255C31900[v2];
  v5 = dword_255C31928[v2];
  *a2 = v3;
  *(a2 + 4) = v4;
  *(a2 + 8) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_2867CE598;
  return result;
}

uint64_t sub_255ABA164(unsigned int *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    v2 = 6;
  }

  else
  {
    v2 = 0x109080706uLL >> (8 * v1);
  }

  return v2 & 0xF;
}

void sub_255ABA190(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_15;
  }

  v5 = *v3;
  v4 = v3[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = a1;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a1 = v9;
      if (v5)
      {
        goto LABEL_5;
      }

LABEL_15:
      *a2 = 3;
      a2[56] = 0;
      return;
    }
  }

  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_5:
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v10 = &unk_2867C8750;
  v11 = v6;
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = v11;
    v7 = v12;
  }

  v13[0] = &unk_2867C8750;
  v13[1] = v6;
  v13[2] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = 0;
  v15 = sub_255B04718(&v10);
  sub_255AB6070(v13, a2);
  if (v14 != -1)
  {
    (off_2867CEED8[v14])(&v16, v13);
  }

  v14 = -1;
  v10 = &unk_2867C8750;
  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255ABA368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_255AB5F98(va1);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255ABA384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_255AB5F3C(va1);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255ABA6A0(_Unwind_Exception *a1)
{
  sub_255A7A508(v1 + 16);
  sub_255A7A508(v1);
  _Unwind_Resume(a1);
}

void sub_255ABA890(_Unwind_Exception *a1)
{
  sub_255A7A508(v1 + 16);
  sub_255A7A508(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_255ABA8C0(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_255ABA938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255ABA9C4(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_255ABAA3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

void *sub_255ABAAC8(void *result)
{
  v1 = result[6];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = result[4];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    result = v4;
  }

  v5 = result[2];
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  return result;
}

void *sub_255ABABE0(void *a1)
{
  *a1 = &unk_2867C9808;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v2 && atomic_fetch_add(v2 + 6, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v4 = a1[9];
  if (v4 && atomic_fetch_add(v4 + 6, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[10];
  if (v5 && atomic_fetch_add(v5 + 6, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;

  return sub_255ABAAC8(a1);
}

void sub_255ABACFC(void *a1)
{
  *a1 = &unk_2867C9808;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v2 && atomic_fetch_add(v2 + 6, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v4 = a1[9];
  if (v4 && atomic_fetch_add(v4 + 6, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[10];
  if (v5 && atomic_fetch_add(v5 + 6, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_255ABAAC8(a1);

  JUMPOUT(0x259C49320);
}

void sub_255ABAE4C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867C3A18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255ABAEA0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void sub_255ABAEDC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867CF060;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255ABAF30(uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  if (v2 != -1)
  {
    result = (off_2867CF0A0[v2])(&v3, result + 24);
  }

  *(v1 + 48) = -1;
  return result;
}

void sub_255ABAF8C(int a1@<W0>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v4 = a3[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    operator new();
  }

  if (a1 == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_2867C8750;
    *(a4 + 24) = 0;
  }
}

void sub_255ABB410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255B016E0(&a9);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255ABB430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_255ABB44C(int a1, uint64_t a2, __n128 a3)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (*(a2 + 24) != 1)
        {
LABEL_26:
          sub_255A7C284();
        }

        goto LABEL_24;
      }

      return a3.n128_u64[0];
    }

    if (*(a2 + 24))
    {
      goto LABEL_26;
    }

    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v11 = v5;
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = v11;
    }

    v10 = &unk_2867C7FE0;
    if (v5)
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7, a3);
          std::__shared_weak_count::__release_weak(v7);
        }
      }

      if (v8)
      {
        sub_255B0A2E4(v11);
      }
    }

    sub_255ABB690(v13, &v10);
    v9 = v14;
    sub_255B01870(&v10);
    return v9;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      return a3.n128_u64[0];
    }

    if (*(a2 + 24) != 3)
    {
      goto LABEL_26;
    }

    sub_255ABB984(a2, &v10);
    sub_255ABB690(v13, &v10);
    a3.n128_u64[0] = v14;
    v10 = &unk_2867C8750;
    v3 = v12;
    if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return a3.n128_u64[0];
    }

    v9 = a3.n128_u64[0];
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    return v9;
  }

  if (*(a2 + 24) != 2)
  {
    goto LABEL_26;
  }

LABEL_24:
  sub_255ABB690(v13, a2);
  return v14;
}

void sub_255ABB654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255B016E0(va);
  _Unwind_Resume(a1);
}

void sub_255ABB668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

void sub_255ABB67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

size_t sub_255ABB690(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v7 = qword_27F7DD608, v8 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_12:
        qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v7 != v8);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_255B013DC(a2, 0);
  v12 = sub_255B04C10(a2);
  v13 = sub_255B04E4C(a2);
  result = sub_255B05088(a2);
  v15 = v12;
  v16 = v12 | (v13 << 32);
  if (v13)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  *a1 = v11;
  a1[1] = v18;
  a1[2] = (result << 32) | 1;
  if (HIDWORD(v18) * result == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v20 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_27:
        v24 = qword_27F7DD620;
        v23 = *algn_27F7DD628;

        return v24(v23, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v20 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v22 = *v19;
      v21 = *(v19 + 8);
      v19 += 16;
      v22(v21, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v19 != v20);
    if (byte_27F7DD630)
    {
      goto LABEL_27;
    }

LABEL_32:
    abort();
  }

  return result;
}

void sub_255ABB984(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0 && (v5 = *a1) != 0)
  {
    *a2 = &unk_2867C8750;
    a2[1] = v5;
    a2[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_2867C8750;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a2[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 223, &unk_255C2500B, 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_255C101E0);
    abort();
  }
}

uint64_t sub_255ABBB08(uint64_t a1, int a2, int a3, _DWORD *a4, char a5)
{
  v12 = a5;
  *a1 = &unk_2867C8360;
  *(a1 + 8) = a2;
  sub_255ABAF8C(a2, a4, a1 + 16);
  if (*a4)
  {
    v9 = a4[1] == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    *(a1 + 48) = *a4;
  }

  else
  {
    *(a1 + 48) = sub_255ABB44C(a2, a1 + 16, v8);
    *(a1 + 56) = v10;
  }

  if (!sub_255ABC258(a1))
  {
    sub_255ABC490(a1, v14);
    sub_255ABC89C(a1, v13);
    v15[0] = v13;
    v15[1] = &v12;
    sub_255AF21DC(v15);
    sub_255B01ABC(v14);
  }

  return a1;
}

void sub_255ABBBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255B01ABC(va);
  sub_255ABBC2C(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_255ABBC2C(uint64_t a1)
{
  *a1 = &unk_2867C8360;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

uint64_t sub_255ABBCA4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t sub_255ABBD00(uint64_t a1, _DWORD *a2, __int128 *a3)
{
  *a1 = &unk_2867C8360;
  *(a1 + 8) = 0;
  sub_255ABAF8C(0, a2, a1 + 16);
  if (*a2)
  {
    v7 = a2[1] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    *(a1 + 48) = *a2;
  }

  else
  {
    *(a1 + 48) = sub_255ABB44C(0, a1 + 16, v6);
    *(a1 + 56) = v8;
  }

  v10 = *a3;
  v11 = *(a3 + 2);
  if (!sub_255ABC258(a1))
  {
    sub_255ABC490(a1, v13);
    sub_255ABC89C(a1, v12);
    sub_255AF2374(&v10, v12);
    sub_255B01ABC(v13);
  }

  return a1;
}

void sub_255ABBDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_255B01ABC(va);
  sub_255ABBC2C(v15);
  _Unwind_Resume(a1);
}

void sub_255ABBE30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_255A7C284();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_2867C8750;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_2867C8750;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_2867C8750;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_255B044C0(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_2867C4068;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_2867C8750;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_255ABC0D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 40);
  if (v2 <= 1)
  {
    if (v2 >= 2)
    {
LABEL_21:
      sub_255A7C284();
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    *a2 = &unk_2867C8750;
    a2[1] = v8;
    a2[2] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    return;
  }

  if (v2 != 3)
  {
    goto LABEL_21;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_14;
  }

  v4 = a2;
  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5)
  {
    v4[1] = 0;
    v4[2] = 0;
    *v4 = &unk_2867C8750;
    return;
  }

  v6 = *(a1 + 16);
  a2 = v4;
  if (!v6)
  {
LABEL_14:
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_2867C8750;
    if (!v5)
    {
      return;
    }

    goto LABEL_17;
  }

  *v4 = &unk_2867C8750;
  v4[1] = v6;
  v4[2] = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_17:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = v5;
    (v5->__on_zero_shared)();

    std::__shared_weak_count::__release_weak(v9);
  }
}

BOOL sub_255ABC258(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 <= 1)
  {
    if (v1 >= 2)
    {
LABEL_25:
      sub_255A7C284();
    }

    goto LABEL_10;
  }

  if (v1 == 2)
  {
LABEL_10:
    v4 = *(a1 + 32);
    v9 = *(a1 + 24);
    v10 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v1 != 3)
  {
    goto LABEL_25;
  }

  if (!*(a1 + 24))
  {
    v3 = 0;
    goto LABEL_22;
  }

  v3 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v3 || !*(a1 + 16))
  {
LABEL_22:
    v9 = 0;
    v10 = 0;
    if (!v3)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

  v9 = *(a1 + 16);
  v10 = v3;
  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_23:
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v3;
    (v3->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_12:
  if (v9)
  {
    v6 = *v9;
    v5 = v9[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6 == 0;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  return v6 == 0;
}

void sub_255ABC490(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C8750;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C7FC0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_255B0A3E8(a2[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_2867C8750;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C7FC0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_255A7C284();
    }

    sub_255ABB984((a1 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a2 = &unk_2867C8750;
    a2[1] = v16;
    a2[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a2[1];
    }

    *a2 = &unk_2867C7FC0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_255B0A3E8(a2[1]);
      }
    }

    v21[0] = &unk_2867C8750;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *a2 = &unk_2867C8750;
    a2[1] = v4;
    a2[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a2[1];
    }

    *a2 = &unk_2867C7FC0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_255B0A3E8(a2[1]);
      }
    }
  }
}

void sub_255ABC844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255B016E0(v3);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255ABC89C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_255ABC258(a1))
  {
    if (*(a1 + 52))
    {
      v4 = *(a1 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a1 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a2 = 0;
    a2[1] = v5;
    a2[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v13 = qword_27F7DD608, v14 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_35:
        v19 = qword_27F7DD620;
        v18 = *algn_27F7DD628;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_27F7DD608;
      v14 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_27F7DD630)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a1 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    v20 = &unk_2867C8750;
    v21 = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        v20 = &unk_2867C8750;
        v21 = v9;
        v22 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_2867C8750;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_255ABB690(a2, &v20);
  v20 = &unk_2867C8750;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_255ABCBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255ABCBF0(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_2867C8750;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2867C7FE0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_255B0A2E4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_2867C8750;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2867C7FE0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_255A7C284();
    }

    sub_255ABB984((a2 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_2867C8750;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2867C7FE0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_255B0A2E4(a1[1]);
      }
    }

    v21[0] = &unk_2867C8750;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_2867C8750;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2867C7FE0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_255B0A2E4(a1[1]);
      }
    }
  }
}

void sub_255ABCFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255B016E0(v3);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255ABCFFC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v2 = *(a2 + 28) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2867C8750;
  *(a1 + 24) = 0;
}

void sub_255ABD118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_255ABD134(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    sub_255A7C284();
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v10 = v3;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = v10;
  }

  v9 = &unk_2867C7FE0;
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        if (!v6)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    if (v6)
    {
LABEL_8:
      sub_255B0A2E4(v10);
    }
  }

LABEL_9:
  sub_255ABD264(v12, &v9);
  v7 = v14;
  *a1 = v13;
  *(a1 + 16) = v7;
  *(a1 + 32) = v15;
  return sub_255B01870(&v9);
}

void sub_255ABD23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255B016E0(va);
  _Unwind_Resume(a1);
}

void sub_255ABD250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

size_t sub_255ABD264(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v7 = qword_27F7DD608, v8 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_12:
        qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v7 != v8);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_255B013DC(a2, 0);
  v12 = sub_255B04C10(a2);
  v13 = sub_255B04E4C(a2);
  result = sub_255B05088(a2);
  v15 = v12;
  v16 = v12 | (v13 << 32);
  if (v13)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  HIDWORD(v25) = v18;
  LODWORD(v25) = 2;
  *a1 = v11;
  *(a1 + 8) = v25;
  *(a1 + 16) = HIDWORD(v18);
  *(a1 + 20) = 0x200000001;
  *(a1 + 28) = result;
  *(a1 + 32) = v18;
  *(a1 + 40) = (result << 32) | 2;
  if (HIDWORD(v18) * result == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v20 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_27:
        v24 = qword_27F7DD620;
        v23 = *algn_27F7DD628;

        return v24(v23, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v20 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v22 = *v19;
      v21 = *(v19 + 8);
      v19 += 16;
      v22(v21, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v19 != v20);
    if (byte_27F7DD630)
    {
      goto LABEL_27;
    }

LABEL_32:
    abort();
  }

  return result;
}

void sub_255ABD5EC(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3 && (v3 = std::__shared_weak_count::lock(v3)) != 0 && (v5 = *a2) != 0)
  {
    *a1 = &unk_2867C8750;
    a1[1] = v5;
    a1[2] = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
    *a1 = &unk_2867C8750;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v3;
    (v3->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a1[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 223, &unk_255C2500B, 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_255C101E0);
    abort();
  }
}

uint64_t sub_255ABD770(uint64_t a1)
{
  *a1 = &unk_2867C82D0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

uint64_t sub_255ABD7E8(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  *a1 = &unk_2867C82D0;
  *(a1 + 8) = 0;
  sub_255ABCFFC(a1 + 16, a2);
  if (*(a2 + 6))
  {
    v6 = *(a2 + 7) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 80) = *(a2 + 4);
    *(a1 + 48) = v7;
    *(a1 + 64) = v8;
  }

  else
  {
    sub_255ABD134(a1 + 48, a1 + 16);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_255ABC258(a1))
  {
    sub_255ABDBB8(v13, a1);
    sub_255ABDFC4(v12, a1);
    sub_255AF26F0(v11, v12);
    sub_255B01ABC(v13);
  }

  return a1;
}

void sub_255ABD8D8(_Unwind_Exception *a1)
{
  sub_255B01ABC((v2 - 56));
  sub_255ABD770(v1);
  _Unwind_Resume(a1);
}

void sub_255ABD910(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_255A7C284();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_2867C8750;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_2867C8750;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_2867C8750;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_255B044C0(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_2867C4068;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_2867C8750;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_255ABDBB8(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_2867C8750;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2867C7FC0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_255B0A3E8(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_2867C8750;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2867C7FC0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_255A7C284();
    }

    sub_255ABD5EC(v21, (a2 + 16));
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_2867C8750;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2867C7FC0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_255B0A3E8(a1[1]);
      }
    }

    v21[0] = &unk_2867C8750;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_2867C8750;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2867C7FC0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_255B0A3E8(a1[1]);
      }
    }
  }
}

void sub_255ABDF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255B016E0(v3);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255ABDFC4(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (sub_255ABC258(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v19) = 2;
    *(&v19 + 4) = v6;
    v7 = 2 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
    v10 = __PAIR64__(DWORD1(v19), 2);
    LODWORD(v19) = 1;
    *(&v19 + 4) = v9;
    v11 = v19;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    return;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_255A7C284();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    *&v19 = &unk_2867C8750;
    *(&v19 + 1) = v16;
    v20 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        *&v19 = &unk_2867C8750;
        *(&v19 + 1) = v14;
        v20 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v19 + 1) = 0;
  v20 = 0;
  *&v19 = &unk_2867C8750;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v18);
    }
  }

LABEL_22:
  sub_255ABD264(a1, &v19);
  *&v19 = &unk_2867C8750;
  v17 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_255ABE25C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_2867C8750;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2867C7FE0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_255B0A2E4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_2867C8750;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2867C7FE0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_255A7C284();
    }

    sub_255ABD5EC(v21, (a2 + 16));
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_2867C8750;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2867C7FE0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_255B0A2E4(a1[1]);
      }
    }

    v21[0] = &unk_2867C8750;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_2867C8750;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2867C7FE0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_255B0A2E4(a1[1]);
      }
    }
  }
}

void sub_255ABE610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255B016E0(v3);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255ABE668(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v2 = *(a2 + 28) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2867C8750;
  *(a1 + 24) = 0;
}

void sub_255ABE780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_255ABE79C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    sub_255A7C284();
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v10 = v3;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = v10;
  }

  v9 = &unk_2867C7FE0;
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        if (!v6)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    if (v6)
    {
LABEL_8:
      sub_255B0A2E4(v10);
    }
  }

LABEL_9:
  sub_255ABE8CC(v12, &v9);
  v7 = v14;
  *a1 = v13;
  *(a1 + 16) = v7;
  *(a1 + 32) = v15;
  return sub_255B01870(&v9);
}

void sub_255ABE8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255B016E0(va);
  _Unwind_Resume(a1);
}

void sub_255ABE8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255B01870(va);
  _Unwind_Resume(a1);
}

size_t sub_255ABE8CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v7 = qword_27F7DD608, v8 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_12:
        qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v7 != v8);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_255B013DC(a2, 0);
  v12 = sub_255B04C10(a2);
  v13 = sub_255B04E4C(a2);
  result = sub_255B05088(a2);
  v15 = v12;
  v16 = v12 | (v13 << 32);
  if (v13)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  HIDWORD(v25) = v18;
  LODWORD(v25) = 3;
  *a1 = v11;
  *(a1 + 8) = v25;
  *(a1 + 16) = HIDWORD(v18);
  *(a1 + 20) = 0x300000001;
  *(a1 + 28) = result;
  *(a1 + 32) = v18;
  *(a1 + 40) = (result << 32) | 3;
  if (HIDWORD(v18) * result == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v20 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_27:
        v24 = qword_27F7DD620;
        v23 = *algn_27F7DD628;

        return v24(v23, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v20 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v22 = *v19;
      v21 = *(v19 + 8);
      v19 += 16;
      v22(v21, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v19 != v20);
    if (byte_27F7DD630)
    {
      goto LABEL_27;
    }

LABEL_32:
    abort();
  }

  return result;
}

void sub_255ABEC54(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3 && (v3 = std::__shared_weak_count::lock(v3)) != 0 && (v5 = *a2) != 0)
  {
    *a1 = &unk_2867C8750;
    a1[1] = v5;
    a1[2] = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
    *a1 = &unk_2867C8750;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v3;
    (v3->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a1[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/CVImage.cpp", 223, &unk_255C2500B, 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_255C101E0);
    abort();
  }
}

uint64_t sub_255ABEDD8(uint64_t a1)
{
  *a1 = &unk_2867C8240;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

uint64_t sub_255ABEE50(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  *a1 = &unk_2867C8240;
  *(a1 + 8) = 0;
  sub_255ABE668(a1 + 16, a2);
  if (*(a2 + 6))
  {
    v6 = *(a2 + 7) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 80) = *(a2 + 4);
    *(a1 + 48) = v7;
    *(a1 + 64) = v8;
  }

  else
  {
    sub_255ABE79C(a1 + 48, a1 + 16);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_255ABC258(a1))
  {
    sub_255ABF220(v13, a1);
    sub_255ABF62C(v12, a1);
    sub_255AF2C3C(v11, v12);
    sub_255B01ABC(v13);
  }

  return a1;
}

void sub_255ABEF40(_Unwind_Exception *a1)
{
  sub_255B01ABC((v2 - 56));
  sub_255ABEDD8(v1);
  _Unwind_Resume(a1);
}

void sub_255ABEF78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_255A7C284();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_2867C8750;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_2867C8750;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_2867C8750;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_255B044C0(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_2867C4068;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_2867C8750;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_255ABF220(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_2867C8750;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2867C7FC0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_255B0A3E8(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_2867C8750;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2867C7FC0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_255A7C284();
    }

    sub_255ABEC54(v21, (a2 + 16));
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_2867C8750;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2867C7FC0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_255B0A3E8(a1[1]);
      }
    }

    v21[0] = &unk_2867C8750;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_2867C8750;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2867C7FC0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_255B0A3E8(a1[1]);
      }
    }
  }
}

void sub_255ABF5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255B016E0(v3);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255ABF62C(uint64_t a1, uint64_t a2)
{
  if (sub_255ABC258(a2))
  {

    sub_255AF2EE8(a1, 0, (a2 + 72));
    return;
  }

  v4 = *(a2 + 40);
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
LABEL_23:
      sub_255A7C284();
    }

    goto LABEL_14;
  }

  if (v4 == 2)
  {
LABEL_14:
    v8 = *(a2 + 24);
    v7 = *(a2 + 32);
    v11 = &unk_2867C8750;
    v12 = v8;
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    goto LABEL_23;
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    if (v5)
    {
      v6 = *(a2 + 16);
      if (v6)
      {
        v11 = &unk_2867C8750;
        v12 = v6;
        v13 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_21;
      }
    }
  }

  v12 = 0;
  v13 = 0;
  v11 = &unk_2867C8750;
  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_16:
  sub_255ABE8CC(a1, &v11);
  v11 = &unk_2867C8750;
  v9 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_255ABF834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255B02AA4(va);
  _Unwind_Resume(a1);
}

void sub_255ABF848(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_2867C8750;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2867C7FE0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_255B0A2E4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_2867C8750;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2867C7FE0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_255A7C284();
    }

    sub_255ABEC54(v21, (a2 + 16));
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_2867C8750;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2867C7FE0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_255B0A2E4(a1[1]);
      }
    }

    v21[0] = &unk_2867C8750;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_2867C8750;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2867C7FE0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_255B0A2E4(a1[1]);
      }
    }
  }
}