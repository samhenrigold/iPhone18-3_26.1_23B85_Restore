uint64_t sub_297809648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  j_j_nullsub_1();
  sub_29780968C(v6, a2, a3);
  return a1;
}

void sub_29780968C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2977FD5AC(a2, a3);

  sub_2978096E8(a1, a2, a3, v6);
}

void sub_2978096E8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (sub_297808C00() < a4)
  {
    sub_297808C38();
  }

  if (sub_297808C50(a4))
  {
    sub_297803470(a1, a4);
    j_nullsub_1();
  }

  else
  {
    v8 = sub_297808C5C(a4);
    v9 = sub_2978095E0(a1, v8 + 1);
    v11 = v10;
    nullsub_1();
    sub_2977FE390(a1, v9);
    sub_297808C98(a1, v11);
    sub_2977FD5DC(a1, a4);
  }

  nullsub_1();
  v13 = sub_2978097D8(a2, a3, v12);
  v14 = 0;
  sub_297803464(v13, &v14);
  nullsub_1();
}

char *sub_2978097D8(uint64_t a1, uint64_t a2, char *a3)
{
  nullsub_1();
  v6 = a2 - a1;
  sub_297808CA4(a3, v7, v6);
  return &a3[v6];
}

BOOL sub_297809824()
{
  sub_297809870();
  sub_297809904(&unk_2A13A2778);
  sub_29780995C();
  sub_297809870();

  return sub_2978099F4(&unk_2A13A2778);
}

void sub_297809870()
{
  if ((atomic_load_explicit(&qword_2A13A2788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13A2788))
  {
    sub_2978035A4(&unk_2A13A2778, 1);
    __cxa_atexit(sub_2978035A8, &unk_2A13A2778, &dword_2977F7000);

    __cxa_guard_release(&qword_2A13A2788);
  }
}

BOOL sub_297809904(uint64_t a1)
{
  if (sub_2978100EC())
  {

    return sub_297805AF8(a1);
  }

  else
  {
    ++*(a1 + 8);
    return 1;
  }
}

uint64_t sub_29780995C()
{
  sub_297809A4C();
  result = sub_297809AF0(qword_2A13A2790);
  v1 = result;
  if (result)
  {
    v2 = 0;
    do
    {
      sub_297809A4C();
      sub_297809ADC(qword_2A13A2790, v2);
      v3 = sub_2978037C8();
      result = stat(v3, &v4);
      if (!result && (v4.st_mode & 0xF000) == 0x8000)
      {
        result = unlink(v3);
      }

      ++v2;
    }

    while (v1 != v2);
  }

  return result;
}

BOOL sub_2978099F4(uint64_t a1)
{
  if (sub_2978100EC())
  {

    return sub_297805B1C(a1);
  }

  else
  {
    --*(a1 + 8);
    return 1;
  }
}

void sub_297809A4C()
{
  if ((atomic_load_explicit(&qword_2A13A27A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13A27A8))
  {
    sub_297809B88(&unk_2A13A2790);
    __cxa_atexit(sub_297809B8C, &unk_2A13A2790, &dword_2977F7000);

    __cxa_guard_release(&qword_2A13A27A8);
  }
}

uint64_t sub_297809B0C()
{
  nullsub_1();

  return sub_2978082EC();
}

uint64_t sub_297809B50(int a1)
{
  v2 = pthread_self();

  return pthread_kill(v2, a1);
}

void sub_297809B90(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  j_j_nullsub_1();
}

uint64_t sub_297809B9C(uint64_t a1)
{
  sub_2977FDEF4();
  sub_297809BDC(&v3);
  return a1;
}

uint64_t *sub_297809BDC(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    sub_297809C4C(result);
    nullsub_1();
    v3 = *a1;
    v4 = *v3;
    v5 = sub_297809C9C(v3);

    return sub_297809C98(v3, v4, v5);
  }

  return result;
}

void sub_297809C4C(uint64_t *a1)
{
  sub_297809AF0(a1);
  sub_297809CBC(a1, *a1);

  nullsub_1();
}

uint64_t sub_297809CBC(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = sub_297809D18(v3, v5))
  {
    i -= 24;
    nullsub_1();
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_297809D34(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_297809DDC(a1, a2);
  }

  else
  {
    sub_297809D74(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_297809D74(uint64_t a1, uint64_t a2)
{
  sub_297809E80(v6, a1, 1);
  nullsub_1();
  sub_297809E84(a1, v4, a2);
  v7 += 24;
  return sub_297809E88(v6);
}

uint64_t sub_297809DDC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_297809AF0(a1);
  v5 = sub_297809EBC(a1, v4 + 1);
  v6 = sub_297809AF0(a1);
  sub_297809F34(v10, v5, v6, a1);
  nullsub_1();
  sub_297809E84(a1, v7, a2);
  v11 += 24;
  sub_297809F38(a1, v10);
  v8 = a1[1];
  sub_29780A01C(v10);
  return v8;
}

void *sub_297809E8C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  v3 = *(a2 + 8);
  result[1] = v3;
  result[2] = v3 + 24 * a3;
  return result;
}

unint64_t sub_297809EBC(void *a1, unint64_t a2)
{
  v4 = sub_29780A020();
  if (v4 < a2)
  {
    sub_29780A05C();
  }

  v5 = v4;
  if (sub_297809C9C(a1) < v4 >> 1)
  {
    return *sub_29780338C();
  }

  return v5;
}

void sub_297809F38(uint64_t *a1, uint64_t *a2)
{
  nullsub_1();
  v4 = a2[1] + *a1 - a1[1];
  nullsub_1();
  v6 = v5;
  nullsub_1();
  v8 = v7;
  nullsub_1();
  sub_29780A154(a1, v6, v8);
  a2[1] = v4;
  a1[1] = *a1;
  sub_2977FDE84(a1, a2 + 1);
  sub_2977FDE84(a1 + 1, a2 + 2);
  sub_2977FDE84(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_297809AF0(a1);

  nullsub_1();
}

uint64_t sub_29780A020()
{
  v2 = sub_29780A074();
  v1 = sub_297803390();
  return *sub_297802578(&v2, &v1);
}

uint64_t *sub_29780A084(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v6 = sub_29780A0D8(a4, a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 + 24 * a3;
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v7;
  a1[3] = v6 + 24 * a2;
  return a1;
}

uint64_t sub_29780A100(uint64_t a1, unint64_t a2)
{
  if (sub_29780A074(a1) < a2)
  {
    sub_29780339C();
  }

  return sub_29780A148();
}

void *sub_29780A154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  nullsub_1();
  v6 = v5;
  nullsub_1();

  return memcpy(v6, v7, a3 - a2);
}

uint64_t *sub_29780A1B0(uint64_t *a1)
{
  sub_29780A204(a1);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[4];
    v4 = sub_29780A20C(a1);
    sub_297809C98(v3, v2, v4);
  }

  return a1;
}

uint64_t sub_29780A230(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 32);
      *(v4 + 16) = v2 - 24;
      nullsub_1();
      result = sub_297809D18(v5, v6);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_29780A294()
{
  nullsub_1();

  return sub_2978082EC();
}

void sub_29780A2D4(void *a1, uint64_t a2)
{
  sub_297809AF0(a1);
  sub_297809CBC(a1, a2);

  nullsub_1();
}

void *sub_29780A338(uint64_t a1)
{
  free(*(a1 + 8));
  v2 = *(a1 + 20);
  if (v2 < 0x11)
  {
    v3 = 32;
  }

  else
  {
    v3 = 1 << (sub_29780A3C4(v2) + 1);
  }

  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = v3;
  v4 = malloc_type_malloc(8 * v3, 0x80040B8603338uLL);
  *(a1 + 8) = v4;
  v5 = 8 * *(a1 + 16);

  return memset(v4, 255, v5);
}

uint64_t sub_29780A3EC(uint64_t a1, uint64_t a2)
{
  if (sub_29780A4F8(a1))
  {
    v4 = *a1;
    v5 = *(a1 + 20);
    if (v5)
    {
      v6 = 8 * v5;
      v7 = *a1;
      while (*v7 != a2)
      {
        ++v7;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_6;
        }
      }

      return 0;
    }

LABEL_6:
    v8 = *(a1 + 16);
    if (v5 < v8)
    {
      *(a1 + 20) = v5 + 1;
      v4[v5] = a2;
      return 1;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    LODWORD(v5) = *(a1 + 20);
  }

  if (3 * v8 <= 4 * v5)
  {
    if (v8 >= 0x40)
    {
      v8 *= 2;
    }

    else
    {
      v8 = 128;
    }

    goto LABEL_15;
  }

  if (v8 - (v5 + *(a1 + 24)) < v8 >> 3)
  {
LABEL_15:
    sub_29780A508(a1, v8);
  }

  v9 = sub_29780A5FC(a1, a2);
  if (*v9 != a2)
  {
    v11 = v9;
    v10 = *v9;
    if (v10 == sub_29780A6B4())
    {
      --*(a1 + 24);
    }

    *v11 = a2;
    ++*(a1 + 20);
    return 1;
  }

  return 0;
}

void sub_29780A508(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = sub_29780A4F8(a1);
  v7 = malloc_type_malloc(8 * a2, 0x80040B8603338uLL);
  *(a1 + 8) = v7;
  *(a1 + 16) = a2;
  memset(v7, 255, 8 * a2);
  if (v6)
  {
    v8 = *(a1 + 20);
    if (v8)
    {
      v9 = 8 * v8;
      do
      {
        v10 = *v5++;
        *sub_29780A5FC(a1, v10) = v10;
        v9 -= 8;
      }

      while (v9);
    }
  }

  else
  {
    if (v4)
    {
      v11 = 8 * v4;
      v12 = v5;
      do
      {
        v13 = *v12;
        if (v13 != sub_29780A6B4() && v13 != sub_2978027E4())
        {
          *sub_29780A5FC(a1, v13) = v13;
        }

        ++v12;
        v11 -= 8;
      }

      while (v11);
    }

    free(v5);
    *(a1 + 24) = 0;
  }
}

void *sub_29780A5FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29780A784(a2);
  v5 = *(a1 + 16) - 1;
  v6 = *(a1 + 8);
  v7 = v4 & v5;
  v8 = (v6 + 8 * (v4 & v5));
  v9 = *v8;
  if (*v8 != a2)
  {
    v10 = 0;
    v11 = 1;
    while (v9 != sub_2978027E4())
    {
      v12 = *v8;
      v13 = sub_29780A6B4();
      if (v10)
      {
        v14 = 0;
      }

      else
      {
        v14 = v12 == v13;
      }

      if (v14)
      {
        v10 = v8;
      }

      v15 = v7 + v11++;
      v7 = v15 & v5;
      v8 = (v6 + 8 * (v15 & v5));
      v9 = *v8;
      if (*v8 == a2)
      {
        return v8;
      }
    }

    if (v10)
    {
      return v10;
    }
  }

  return v8;
}

uint64_t sub_29780A6BC(uint64_t a1, uint64_t a2)
{
  if (sub_29780A4F8(a1))
  {
    v4 = *(a1 + 20);
    if (v4)
    {
      v5 = *a1;
      v6 = *a1 + 8 * v4;
      v7 = 8 * v4;
      while (*v5 != a2)
      {
        ++v5;
        v7 -= 8;
        if (!v7)
        {
          return 0;
        }
      }

      *v5 = *(v6 - 8);
      *(v6 - 8) = sub_2978027E4();
      --*(a1 + 20);
      return 1;
    }

    return 0;
  }

  v8 = sub_29780A5FC(a1, a2);
  if (*v8 != a2)
  {
    return 0;
  }

  *v8 = sub_29780A6B4();
  *(a1 + 20) = vadd_s32(*(a1 + 20), 0x1FFFFFFFFLL);
  return 1;
}

uint64_t sub_29780A790(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  *a1 = a2;
  *(a1 + 16) = a4[2];
  *(a1 + 24) = *(a4 + 6);
  if (sub_29780A4F8(a4))
  {
    v7 = *a1;
    *(a1 + 8) = *a1;
    memcpy(v7, a4[1], 8 * *(a1 + 16));
  }

  else
  {
    v8 = *a4;
    *(a1 + 8) = a4[1];
    a4[1] = v8;
  }

  *(a4 + 5) = 0;
  *(a4 + 6) = 0;
  *(a4 + 4) = a3;
  return a1;
}

int *sub_29780A814(int *result, int *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

uint64_t sub_29780A828(uint64_t a1)
{
  if (!sub_29780A4F8(a1))
  {
    free(*(a1 + 8));
  }

  return a1;
}

char *sub_29780A85C(char **a1, char *a2, size_t a3, uint64_t a4)
{
  v8 = sub_29780A908(a1);
  v9 = sub_29780A914(a1);
  if (a4 + 2 * v9 <= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = a4 + 2 * v9;
  }

  if (*a1 == a2)
  {
    v12 = malloc_type_malloc(v10, 0x40363E54uLL);
    result = memcpy(v12, *a1, v8);
  }

  else
  {
    result = malloc_type_realloc(*a1, v10, 0xC1522080uLL);
    v12 = result;
  }

  *a1 = v12;
  a1[1] = &v12[v8];
  a1[2] = &v12[v10];
  return result;
}

uint64_t sub_29780A924(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    j__free(v2);
  }

  while (!sub_297806904(a1))
  {
    v3 = *sub_29780A9C0(a1);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    sub_29780A9CC(a1);
  }

  sub_297809B8C(a1 + 3);

  return sub_29780A9D8(a1);
}

uint64_t sub_29780A9E4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29780BFD4(v7);
  v7[0] = a2;
  v7[1] = a3;
  sub_29780BFD8(a1, v7);
  return sub_29780AAE8(a1);
}

uint64_t sub_29780AA3C(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = sub_29780AAE8(a1);
  v4 = v3;
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = sub_2977FB720(&v11);
    v7 = sub_29780AAF8(a1, v5);
    if (v6 >= sub_2977FB7B8(*v7))
    {
      v8 = sub_2977FB720(&v11);
      v9 = sub_29780AAF8(a1, v5);
      if (v8 <= sub_2977FD5B0(*v9))
      {
        break;
      }
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return (v5 + 1);
}

uint64_t sub_29780AB04(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v17 = a2;
  if (!a3)
  {
    v3 = sub_29780AA3C(a1, a2);
  }

  v5 = sub_29780AC8C(a1, v3);
  v16 = 1;
  v6 = sub_2977FB7B8(v5);
  v7 = v6;
  v8 = a1[6];
  v9 = v6;
  if (v8)
  {
    v9 = v6;
    if (*v8 == v3)
    {
      v10 = *(v8 + 8);
      v9 = v6;
      if (v10 <= sub_2977FB720(&v17))
      {
        v9 = *(v8 + 8);
        v16 = *(v8 + 16);
      }
    }
  }

  for (v15[0] = sub_29780ACAC(v9); sub_29780ACE0(v15, &v17); v15[0] = sub_29780ACAC(++v9))
  {
    if (*v9 == 10)
    {
      ++v16;
    }
  }

  v11 = a1[6];
  if (!v11)
  {
    v11 = sub_2977FA198();
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 0;
    a1[6] = v11;
  }

  *v11 = v3;
  v11[1] = v9;
  *(v11 + 4) = v16;
  sub_2977FB7C0(v15, v7, &v9[-v7]);
  sub_2977FB7B4(v14, "\n\r");
  v14[0] = &v9[-v7 - sub_29780FA6C(v15, v14[0], v14[1], 0xFFFFFFFFFFFFFFFFLL)];
  v15[0] = sub_29780ACF4(&v16, v14);
  v15[1] = v12;
  sub_29780AD24(&v18, v15);
  return v18;
}

void **sub_29780AD28(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  sub_29780AE44(&v15);
  result = sub_29780AE30(&v16, &v15);
  if ((result & 1) == 0)
  {
    v6 = sub_29780AA3C(a1, v16);
    v7 = sub_29780AE48(a1, v6);
    sub_29780AD28(a1, *(v7 + 8), a3);
    v8 = sub_297801F64(a3, "Included from ");
    v9 = sub_29780AE48(a1, v6);
    v10 = (*(**v9 + 16))(*v9);
    v11 = sub_297801F64(v8, v10);
    v12 = sub_297801F64(v11, ":");
    v13 = sub_29780AE50(a1, v16, v6);
    v14 = sub_297801FA0(v12, v13);
    return sub_297801F64(v14, ":\n");
  }

  return result;
}

uint64_t sub_29780AE68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v12 = a3;
  v49 = *MEMORY[0x29EDCA608];
  v46[1] = a6;
  v47 = a2;
  v46[0] = a5;
  sub_29780B1B8(v48);
  sub_29780AE44(v45);
  sub_297802744(&v44);
  if (sub_29780B1BC(&v47))
  {
    v36 = a7;
    v15 = sub_29780AA3C(a1, v47);
    v16 = sub_29780AC8C(a1, v15);
    v17 = (*(*v16 + 16))(v16);
    v18 = sub_2977FB720(&v47);
    v19 = sub_2977FB7B8(v16);
    v20 = v19;
    while (v18 != v19)
    {
      v22 = *--v18;
      v21 = v22;
      if (v22 == 13 || v21 == 10)
      {
        v20 = v18 + 1;
        break;
      }
    }

    v24 = sub_2977FB720(&v47);
    v25 = sub_2977FD5B0(v16);
    v37 = a9;
    if (v24 != v25)
    {
      while (1)
      {
        v26 = *v24;
        if (v26 == 10 || v26 == 13)
        {
          break;
        }

        if (++v24 == v25)
        {
          v24 = v25;
          break;
        }
      }
    }

    sub_297809454();
    sub_2978046C4(&v44, &v43);
    std::string::~string(&v43);
    v28 = sub_2977FB7B8(v46);
    v29 = v28;
    if (v28)
    {
      v30 = 0;
      do
      {
        *&v43.__r_.__value_.__l.__data_ = *sub_29780AAF8(v46, v30);
        if (sub_29780B1CC(&v43) && sub_2977FB720(&v43) <= v24 && sub_2977FB720(&v43.__r_.__value_.__l.__size_) >= v20)
        {
          if (sub_2977FB720(&v43) < v20)
          {
            v43.__r_.__value_.__r.__words[0] = sub_29780ACAC(v20);
          }

          if (sub_2977FB720(&v43.__r_.__value_.__l.__size_) > v24)
          {
            v43.__r_.__value_.__l.__size_ = sub_29780ACAC(v24);
          }

          v39[0] = sub_2977FB720(&v43) - v20;
          v38[0] = sub_2977FB720(&v43.__r_.__value_.__l.__size_) - v20;
          v41 = sub_2977FD958(v39, v38);
          v42 = v31;
          sub_29780B1D0(v40, &v41);
          sub_2978040A4(v48, v40);
        }

        ++v30;
      }

      while (v29 != v30);
    }

    v43.__r_.__value_.__r.__words[0] = sub_29780AB04(a1, v47, v15);
    sub_29780B1D4(v45, &v43);
    a7 = v36;
    a9 = v37;
  }

  else
  {
    v17 = "<unknown>";
  }

  v32 = v47;
  sub_2977FB7B4(&v41, v17);
  v33 = v45[0];
  v34 = v45[1] - 1;
  sub_297812960(a4, &v43);
  sub_2978044E8(v40, &v43);
  sub_2978044E8(v39, &v44);
  sub_29780B1E8(v38, v48);
  sub_29780B1EC(a9, a1, v32, v41, v42, v33, v34, v12, v40[0], v40[1], v39[0], v39[1], v38[0], v38[1], a7, a8);
  std::string::~string(&v43);
  std::string::~string(&v44);
  return sub_2977FD134(v48);
}

_DWORD *sub_29780B1D4(_DWORD *result, _DWORD *a2)
{
  *result = *a2;
  result[1] = a2[1];
  return result;
}

void sub_29780B210(void *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[7];
  if (v6)
  {
    v7 = a1[8];

    v6(a3, v7);
  }

  else
  {
    v8 = a4;
    v13 = sub_2977FB7B8(a3);
    if (sub_29780B1BC(&v13))
    {
      v10 = sub_2977FB7B8(a3);
      v11 = sub_29780AA3C(a1, v10);
      v12 = sub_29780AE48(a1, v11);
      sub_29780AD28(a1, *(v12 + 8), a2);
    }

    sub_29780B2DC(a3, 0, a2, v8);
  }
}

void sub_29780B2DC(uint64_t a1, char *a2, void **a3, int a4)
{
  v7 = (*(*a3 + 6))(a3) & a4;
  if (v7 == 1)
  {
    (*(*a3 + 2))(a3, 8, 1, 0);
  }

  if (a2 && *a2)
  {
    v8 = sub_297801F64(a3, a2);
    sub_297801F64(v8, ": ");
  }

  if (!sub_29780347C(a1 + 16))
  {
    if (sub_2978034A0((a1 + 16), "-"))
    {
      sub_297801F64(a3, "<stdin>");
    }

    else
    {
      sub_29780BB74(a3, a1 + 16);
    }

    if (*(a1 + 40) != -1)
    {
      v9 = sub_2978028D8(a3, 58);
      sub_29780BBD0(v9, *(a1 + 40));
      if (*(a1 + 44) != -1)
      {
        v10 = sub_2978028D8(a3, 58);
        sub_29780BBD0(v10, *(a1 + 44) + 1);
      }
    }

    sub_297801F64(a3, ": ");
  }

  v11 = *(a1 + 48);
  if (v11 == 2)
  {
    v12 = "note: ";
    if (v7)
    {
      v13 = 0;
      goto LABEL_23;
    }
  }

  else if (v11 == 1)
  {
    v12 = "warning: ";
    if (v7)
    {
      v13 = 5;
      goto LABEL_23;
    }
  }

  else
  {
    if (v11)
    {
      goto LABEL_25;
    }

    v12 = "error: ";
    if (v7)
    {
      v13 = 1;
LABEL_23:
      (*(*a3 + 2))(a3, v13, 1, 0);
    }
  }

  sub_297801F64(a3, v12);
LABEL_25:
  if (v7)
  {
    (*(*a3 + 3))(a3);
    (*(*a3 + 2))(a3, 8, 1, 0);
    v14 = sub_29780BB74(a3, a1 + 56);
    sub_2978028D8(v14, 10);
    (*(*a3 + 3))(a3);
  }

  else
  {
    v15 = sub_29780BB74(a3, a1 + 56);
    sub_2978028D8(v15, 10);
  }

  if (*(a1 + 40) != -1 && *(a1 + 44) != -1)
  {
    v16 = sub_29780739C(a1 + 80);
    v17 = sub_2978073D8(a1 + 80);
    sub_29780BBD8(v16, v17, sub_29780BC44);
    v50.__r_.__value_.__r.__words[0] = v18;
    v48.__r_.__value_.__r.__words[0] = sub_2978073D8(a1 + 80);
    if (sub_29780852C(&v50, &v48))
    {
      sub_2978044E8(&v50, a1 + 80);
      sub_29780BC4C(a3, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
    }

    else
    {
      v19 = sub_2978032A4(a1 + 80);
      sub_29780BCFC(&v50, v19 + 1, 32);
      v20 = sub_29780BD00((a1 + 104));
      v21 = v20;
      if (v20)
      {
        v22 = 0;
        do
        {
          v23 = sub_2977FE5F8((a1 + 104), v22);
          v24 = v23[1];
          v25 = sub_29780327C(&v50, *v23);
          v48.__r_.__value_.__r.__words[0] = v24;
          v46 = sub_2978032A4(&v50);
          v26 = sub_297802578(&v48, &v46);
          v27 = sub_29780327C(&v50, *v26);
          v49 = 126;
          sub_29780BD10(v25, v27, &v49);
          ++v22;
        }

        while (v21 != v22);
      }

      sub_297802744(&v48);
      sub_29780BF48(&v46, a1 + 128);
      v28 = sub_2977FB720(a1 + 8) - *(a1 + 44);
      v29 = sub_2978032A4(a1 + 80);
      v30 = sub_2977FB6F0(v28, v29);
      sub_29780BD14(&v50, &v48, v46, v47, v30, v31);
      if (v19 >= *(a1 + 44))
      {
        v32 = *(a1 + 44);
      }

      else
      {
        v32 = v19;
      }

      *sub_29780327C(&v50, v32) = 94;
      v33 = sub_29780BF4C(&v50, 32, 0xFFFFFFFFFFFFFFFFLL);
      std::string::erase(&v50, v33 + 1, 0xFFFFFFFFFFFFFFFFLL);
      sub_2978044E8(&v46, a1 + 80);
      sub_29780BC4C(a3, v46, v47);
      if (v7)
      {
        (*(*a3 + 2))(a3, 2, 1, 0);
      }

      v34 = sub_2978032A4(&v50);
      v35 = v34;
      if (v34)
      {
        v36 = 0;
        v37 = 0;
        do
        {
          if (sub_2978032A4(a1 + 80) > v36 && *sub_29780BFAC(a1 + 80, v36) == 9)
          {
            do
            {
              v38 = sub_29780327C(&v50, v36);
              sub_2978028D8(a3, *v38);
              ++v37;
            }

            while ((v37 & 7) != 0);
          }

          else
          {
            v39 = sub_29780327C(&v50, v36);
            sub_2978028D8(a3, *v39);
            ++v37;
          }

          ++v36;
        }

        while (v36 != v35);
      }

      sub_2978028D8(a3, 10);
      if (v7)
      {
        (*(*a3 + 3))(a3);
      }

      if (!sub_29780347C(&v48))
      {
        v40 = sub_2978032A4(&v48);
        if (v40)
        {
          v41 = v40;
          v42 = 0;
          for (i = 0; i < v41; ++i)
          {
            if (i < sub_2978032A4(a1 + 80) && *sub_29780BFAC(a1 + 80, i) == 9)
            {
              do
              {
                v44 = sub_29780327C(&v48, i);
                sub_2978028D8(a3, *v44);
                if (*sub_29780327C(&v48, i) != 32)
                {
                  ++i;
                }

                ++v42;
              }

              while ((v42 & 7) != 0 && i != v41);
            }

            else
            {
              v45 = sub_29780327C(&v48, i);
              sub_2978028D8(a3, *v45);
              ++v42;
            }
          }
        }

        sub_2978028D8(a3, 10);
      }

      std::string::~string(&v48);
      std::string::~string(&v50);
    }
  }
}

uint64_t sub_29780B92C(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v14[39] = *MEMORY[0x29EDCA608];
  sub_29780AE68(a1, a3, a4, a5, a6, a7, a9, a10, v14);
  sub_29780B210(a1, a2, v14, a11);
  return sub_29780B9D0(v14);
}

uint64_t sub_29780BA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v29[0] = a4;
  v29[1] = a5;
  v28[0] = a9;
  v28[1] = a10;
  v27[0] = a11;
  v27[1] = a12;
  v26[0] = a13;
  v26[1] = a14;
  v25[0] = a15;
  v25[1] = a16;
  *a1 = a2;
  *(a1 + 8) = a3;
  sub_297801F5C(v29);
  *(a1 + 40) = a6;
  *(a1 + 44) = a7;
  *(a1 + 48) = a8;
  sub_297801F5C(v28);
  sub_297801F5C(v27);
  sub_29780BB4C(v26, a1 + 104);
  v20 = sub_2977FB720(v25);
  v21 = sub_29780BB5C(v25);
  sub_29780BB6C(a1 + 128, v20, v21);
  v22 = sub_2977FB720(a1 + 128);
  v23 = sub_2977FB7B8(a1 + 128);
  sub_29780BB70(v22, v23);
  return a1;
}

void **sub_29780BB74(void **a1, uint64_t a2)
{
  sub_2978037CC(a2);
  v5 = v4;
  v6 = sub_2978046C0(a2);

  return sub_29781E2C0(a1, v5, v6);
}

void sub_29780BBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a2;
  for (i = a1; sub_29780852C(&i, &v5); sub_297808548(&i))
  {
    v4 = sub_2977FB720(&i);
    if (a3(*v4))
    {
      break;
    }
  }
}

uint64_t sub_29780BC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3;
  v4 = sub_2977FB7B8(v10);
  v5 = v4;
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (sub_297803A20(v10, v6) == 9)
      {
        do
        {
          sub_2978028D8(a1, 32);
          ++v7;
        }

        while ((v7 & 7) != 0);
      }

      else
      {
        v8 = sub_297803A20(v10, v6);
        sub_2978028D8(a1, v8);
        ++v7;
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return sub_2978028D8(a1, 10);
}

unint64_t sub_29780BD14(uint64_t a1, std::string *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35[0] = a3;
  v35[1] = a4;
  v34[0] = a5;
  v34[1] = a6;
  result = sub_297806914(v35);
  if ((result & 1) == 0)
  {
    v9 = sub_2977FB720(v34);
    v10 = sub_2977FB728(v34);
    v11 = sub_2977FB720(v35);
    result = sub_29780BB5C(v35);
    if (v11 != result)
    {
      v12 = result;
      v13 = 0;
      v26 = v9;
      v27 = a1;
      do
      {
        v32 = sub_29780C788(v11);
        v33 = v14;
        sub_2977FB7B4(&v30, "\n\r\t");
        result = sub_29780F7E0(&v32, v30, v31, 0);
        if (result == -1)
        {
          v32 = sub_29780C7B8(v11);
          v33 = v15;
          result = sub_2977FB720(&v32);
          if (result <= v10)
          {
            result = sub_2977FB720(&v33);
            if (result >= v9)
            {
              if (sub_2977FB720(&v32) >= v9)
              {
                v16 = sub_2977FB720(&v32) - v9;
              }

              else
              {
                v16 = 0;
              }

              if (v13 > v16)
              {
                v17 = (v13 + 1);
              }

              else
              {
                v17 = v16;
              }

              v30 = sub_29780C788(v11);
              v31 = v18;
              v13 = v17 + sub_2977FB7B8(&v30);
              if (sub_2978032A4(a2) < v13)
              {
                std::string::resize(a2, v13, 32);
              }

              v30 = sub_29780C788(v11);
              v31 = v19;
              sub_2977FB720(&v30);
              v29[0] = sub_29780C788(v11);
              v29[1] = v20;
              sub_2977FB728(v29);
              v28 = sub_29780739C(a2);
              sub_29780C7E0(&v28, v17);
              sub_29780C7C4();
              v21 = sub_2977FB720(&v33);
              v22 = v10;
              if (v21 < v10)
              {
                v22 = sub_2977FB720(&v33);
              }

              v9 = v26;
              v23 = (v22 - v26);
              v24 = sub_29780327C(v27, v16);
              v25 = sub_29780327C(v27, v23);
              LOBYTE(v30) = 126;
              result = sub_29780BD10(v24, v25, &v30);
            }
          }
        }

        v11 += 40;
      }

      while (v11 != v12);
    }
  }

  return result;
}

unint64_t sub_29780BF4C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2978037CC(a1);
  v7 = v6;
  v8 = sub_2978032A4(a1);

  return sub_29780EC40(v7, v8, a2, a3);
}

uint64_t sub_29780C008(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29780C0B0(a1, a2);
  }

  else
  {
    sub_29780C048(a1, a2);
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29780C048(uint64_t a1, uint64_t a2)
{
  sub_29780C154(v6, a1, 1);
  nullsub_1();
  sub_29780C158(a1, v4, a2);
  v7 += 16;
  return sub_297809E88(v6);
}

uint64_t sub_29780C0B0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_29780AAE8(a1);
  v5 = sub_29780C17C(a1, v4 + 1);
  v6 = sub_29780AAE8(a1);
  sub_29780C1F4(v10, v5, v6, a1);
  nullsub_1();
  sub_29780C158(a1, v7, a2);
  v11 += 16;
  sub_29780C1F8(a1, v10);
  v8 = a1[1];
  sub_29780C2DC(v10);
  return v8;
}

void *sub_29780C15C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  v3 = *(a2 + 8);
  result[1] = v3;
  result[2] = v3 + 16 * a3;
  return result;
}

__n128 sub_29780C170(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t sub_29780C17C(void *a1, unint64_t a2)
{
  v4 = sub_29780C2E0();
  if (v4 < a2)
  {
    sub_29780A05C();
  }

  v5 = v4;
  if (sub_29780C31C(a1) < v4 >> 1)
  {
    return *sub_29780338C();
  }

  return v5;
}

void sub_29780C1F8(uint64_t *a1, uint64_t *a2)
{
  nullsub_1();
  v4 = a2[1] + *a1 - a1[1];
  nullsub_1();
  v6 = v5;
  nullsub_1();
  v8 = v7;
  nullsub_1();
  sub_29780A154(a1, v6, v8);
  a2[1] = v4;
  a1[1] = *a1;
  sub_2977FDE84(a1, a2 + 1);
  sub_2977FDE84(a1 + 1, a2 + 2);
  sub_2977FDE84(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_29780AAE8(a1);

  nullsub_1();
}

uint64_t sub_29780C2E0()
{
  v2 = sub_29780C330();
  v1 = sub_297803390();
  return *sub_297802578(&v2, &v1);
}

uint64_t *sub_29780C33C(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v6 = sub_29780C38C(a4, a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 + 16 * a3;
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v7;
  a1[3] = v6 + 16 * a2;
  return a1;
}

uint64_t sub_29780C3B4(uint64_t a1, unint64_t a2)
{
  if (sub_29780C330(a1) < a2)
  {
    sub_29780339C();
  }

  return sub_29780C3FC();
}

uint64_t *sub_29780C404(uint64_t *a1)
{
  sub_29780C458(a1);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[4];
    v4 = sub_29780C460(a1);
    sub_297809C98(v3, v2, v4);
  }

  return a1;
}

void sub_29780C478(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    nullsub_1();
    j_nullsub_1();
  }
}

uint64_t sub_29780C4E4(uint64_t a1)
{
  sub_29780C530(a1 + 128);
  sub_29780C534(a1 + 104);
  std::string::~string((a1 + 80));
  std::string::~string((a1 + 56));
  std::string::~string((a1 + 16));
  return a1;
}

void *sub_29780C53C(void *a1)
{
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FB7B8(a1);
  sub_29780C594(v2, v3);
  if (!sub_2977FDA84(a1))
  {
    v4 = sub_2977FB720(a1);
    free(v4);
  }

  return a1;
}

uint64_t sub_29780C594(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v2 -= 40;
      result = sub_29780C5D8(v2);
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_29780C608(uint64_t a1)
{
  sub_2977FDEF4();
  sub_29780C648(&v3);
  return a1;
}

uint64_t *sub_29780C648(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    sub_29780C6B8(result);
    nullsub_1();
    v3 = *a1;
    v4 = *v3;
    v5 = sub_29780C708(v3);

    return sub_29780C704(v3, v4, v5);
  }

  return result;
}

void sub_29780C6B8(uint64_t *a1)
{
  sub_29780BD00(a1);
  sub_29780C71C(a1, *a1);

  nullsub_1();
}

void sub_29780C71C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 8)
  {
    nullsub_1();
    j_nullsub_1();
  }

  *(a1 + 8) = a2;
}

uint64_t sub_29780C7E0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_29780C94C(&v3, a2);
  return v3;
}

uint64_t sub_29780C814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FD8FC(a1, a2);
  v7 = v6;
  v8 = sub_29780C8A4(a3);
  v9 = sub_2977FD944(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2977FD988(a1, v9);
  v13 = sub_29780C8A8(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

void sub_29780C8E0(uint64_t a1)
{
  v1 = a1;
  sub_2977FB720(&v1);
  nullsub_1();
}

uint64_t sub_29780C90C(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v3 = sub_29780C8D4(&v5);
  return sub_29780C7E0(&v5, a2 - v3);
}

uint64_t sub_29780C95C(uint64_t a1)
{
  sub_2977FDEF4();
  sub_29780C99C(&v3);
  return a1;
}

uint64_t *sub_29780C99C(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    sub_29780CA0C(result);
    nullsub_1();
    v3 = *a1;
    v4 = *v3;
    v5 = sub_29780C31C(v3);

    return sub_297809C98(v3, v4, v5);
  }

  return result;
}

void sub_29780CA0C(uint64_t *a1)
{
  sub_29780AAE8(a1);
  sub_29780CA58(a1, *a1);

  nullsub_1();
}

void sub_29780CA58(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 16)
  {
    nullsub_1();
    j_nullsub_1();
  }

  *(a1 + 8) = a2;
}

uint64_t *sub_29780CAB4(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_297803A7C(a2);
  a1[1] = sub_29780CAF4(a2);
  return a1;
}

void sub_29780CB38(void *a1, uint64_t a2)
{
  sub_29780AAE8(a1);
  sub_29780CA58(a1, a2);

  nullsub_1();
}

uint64_t sub_29780CB90(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    nullsub_1();
    sub_29780548C(v2);
  }

  return a1;
}

uint64_t sub_29780CBC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    j_nullsub_1();
    return *v1;
  }

  else
  {
    sub_2978055DC(&v3);
  }

  return v3;
}

uint64_t sub_29780CC0C(uint64_t result, _DWORD *a2, void *a3)
{
  *result = *a2;
  *(result + 8) = *a3;
  return result;
}

_DWORD *sub_29780CC20(_DWORD *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *result = *a2;
  result[1] = v2;
  return result;
}

int32x2_t sub_29780CC40(int32x2_t *a1, int64x2_t *a2)
{
  result = vmovn_s64(*a2);
  *a1 = result;
  return result;
}

uint64_t *sub_29780CC50(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_297803A7C(a2);
  a1[1] = sub_29780406C(a2);
  return a1;
}

uint64_t *sub_29780CC94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  j_j_nullsub_1();
  v6 = sub_29780CCF4(a2, a3);
  sub_29780CCF8(a1, a2, a3, v6);
  return a1;
}

void sub_29780CCF8(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_2977FDEF4();
  sub_29780CD8C(v8, &v9);
  if (a4)
  {
    sub_29780CD98(a1, a4);
    sub_29780CDFC(a1, a2, a3, a4);
  }

  sub_29780CE64(&v9);
  j_nullsub_1();
}

void sub_29780CD98(uint64_t *a1, unint64_t a2)
{
  if (sub_29780CE7C() < a2)
  {
    sub_29780A05C();
  }

  v4 = sub_29780CEB8(a1, a2);
  *a1 = v4;
  a1[1] = v4;
  a1[2] = v4 + 8 * v5;

  nullsub_1();
}

uint64_t sub_29780CDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29780CF3C(v8, a1, a4);
  v9 = sub_29780CF40(a1, a2, a3, v9);
  return sub_297809E88(v8);
}

uint64_t sub_29780CE7C()
{
  v2 = sub_29780CEE0();
  v1 = sub_297803390();
  return *sub_297802578(&v2, &v1);
}

uint64_t sub_29780CEEC(uint64_t a1, unint64_t a2)
{
  if (sub_29780CEE0(a1) < a2)
  {
    sub_29780339C();
  }

  return sub_29780CF34();
}

uint64_t sub_29780CF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2977FD8FC(a2, a3);
  v8 = v7;
  j_j_nullsub_1();
  v10 = sub_29780CFC8(a1, v6, v8, v9);

  return sub_2977FD98C(a4, v10);
}

void *sub_29780CFB4(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  v3 = *(a2 + 8);
  result[1] = v3;
  result[2] = v3 + 8 * a3;
  return result;
}

uint64_t sub_29780CFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  sub_29780D0AC(&v10, a1, &v12, &v13);
  sub_29780D074(&v10, &v11);
  for (; a2 != a3; v13 += 8)
  {
    nullsub_1();
    sub_29780D0B0(a1, v7, a2);
    a2 += 8;
  }

  sub_29780CE64(&v11);
  v8 = v13;
  j_nullsub_1();
  return v8;
}

uint64_t sub_29780D074@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  return sub_29780CE70(a2, &v3);
}

void *sub_29780D0B4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

uint64_t sub_29780D0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29780D114(a1, 4u);
  sub_29780D120(v6, a2, a3);
  return a1;
}

uint64_t sub_29780D120(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29780D1E8(a2, a3);
  v7 = sub_2977FD5B0(a1);
  if (v6 > 0xCCCCCCCCCCCCCCCDLL * ((v7 - sub_2977FB7B8(a1)) >> 3))
  {
    v8 = sub_29780CAF4(a1);
    sub_29780D1EC(a1, v8 + v6);
  }

  v9 = sub_2977FB7B8(a1);
  sub_29780D2E4(a2, a3, v9);
  v10 = sub_2977FB7B8(a1) + 40 * v6;

  return sub_2977FD5DC(a1, v10);
}

uint64_t sub_29780D1EC(void *a1, unint64_t a2)
{
  v4 = sub_29780D318(a1);
  v5 = sub_29780CAF4(a1);
  v6 = sub_2977FB4FC(v4 + 2);
  if (v6 <= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v6;
  }

  v8 = malloc_type_malloc(40 * v7, 0x10520405FBB4089uLL);
  v9 = sub_2977FB720(a1);
  v10 = sub_2977FB7B8(a1);
  sub_29780D35C(v9, v10, v8);
  v11 = sub_2977FB720(a1);
  v12 = sub_2977FB7B8(a1);
  sub_29780C594(v11, v12);
  if (!sub_2977FDA84(a1))
  {
    v13 = sub_2977FB720(a1);
    free(v13);
  }

  sub_2977FD5DC(a1, v8 + 40 * v5);
  *a1 = v8;
  result = sub_2977FB720(a1);
  a1[2] = result + 40 * v7;
  return result;
}

uint64_t sub_29780D35C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      result = sub_29780D3B4(a3, v5);
      v5 += 40;
      a3 += 40;
    }

    while (v5 != a2);
  }

  return result;
}

_OWORD *sub_29780D3B8(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;
  sub_297808AB4();
  return a1;
}

uint64_t sub_29780D3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v7 = a1;
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      if (sub_2977FD678())
      {
        break;
      }

      sub_29780D468(v6, v4);
      v4 += 40;
      v6 += 40;
      v7 = v4;
    }

    while (v4 != a2);
  }

  sub_2977FD680(&v8, &v7, &v6);
  return v8;
}

uint64_t sub_29780D46C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::basic_string((a1 + 16), (a2 + 16));
  return a1;
}

void sub_29780D4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  nullsub_1();
  j_j_nullsub_1();
  v5 = v4;
  j_j_nullsub_1();
  sub_29780D548(v5, v6, a3);
  j_j_nullsub_1();
  j_j_nullsub_1();

  nullsub_1();
}

uint64_t sub_29780D548(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = 2 * sub_29780D5B4(0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3));

  return sub_29780D5DC(a1, a2, a3, v6, 1);
}

unint64_t sub_29780D5B4(unint64_t result)
{
  if (result)
  {
    return 63 - sub_29780D8CC(result);
  }

  return result;
}

uint64_t sub_29780D5DC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v23 = a2;
  v24 = result;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = v7 - v8;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 3);
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3uLL:
          v23 = (v7 - 40);
          return sub_29780D8EC(v8, (v8 + 40), (v7 - 40), a3);
        case 4uLL:
          v23 = (v7 - 40);
          return sub_29780D9B4(v8, (v8 + 40), (v8 + 80), (v7 - 40), a3);
        case 5uLL:
          v23 = (v7 - 40);
          return sub_29780DA6C(v8, (v8 + 40), (v8 + 80), (v8 + 120), (v7 - 40), a3);
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v23 = (v7 - 40);
        result = sub_29780D8D4(a3, (v7 - 40), v8);
        if (result)
        {
          return sub_29780D8E0(&v24, &v23);
        }

        return result;
      }
    }

    if (v10 <= 959)
    {
      break;
    }

    if (i == 1)
    {
      return sub_29780DD08(v8, v7, v7, a3);
    }

    v12 = v11 >> 1;
    v13 = (v7 - 40);
    if (v10 < 0x1401)
    {
      sub_29780D8EC(&v8[40 * (v11 >> 1)], v8, v13, a3);
      if (a5)
      {
LABEL_17:
        v7 = v23;
        goto LABEL_18;
      }
    }

    else
    {
      sub_29780D8EC(v8, &v8[40 * (v11 >> 1)], v13, a3);
      v14 = v23;
      v15 = 5 * v12;
      v16 = 40 * v12;
      v17 = 40 * v12 - 40;
      sub_29780D8EC((v24 + 40), &v24[v17], v23 - 80, a3);
      v16 += 40;
      sub_29780D8EC((v24 + 80), &v24[v16], v14 - 120, a3);
      sub_29780D8EC(&v24[v17], &v24[8 * v15], &v24[v16], a3);
      v22 = &v24[8 * v15];
      sub_29780D8E0(&v24, &v22);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    v18 = sub_29780D8D4(a3, (v24 - 40), v24);
    v7 = v23;
    if ((v18 & 1) == 0)
    {
      result = sub_29780DD9C(v24, v23, a3);
      v8 = result;
LABEL_26:
      a5 = 0;
      v24 = v8;
      a4 = -i;
      goto LABEL_2;
    }

LABEL_18:
    v19 = sub_29780DF10(v24, v7, a3);
    if ((v20 & 1) == 0)
    {
      goto LABEL_25;
    }

    v21 = sub_29780E08C(v24, v19, a3);
    v8 = (v19 + 40);
    result = sub_29780E08C((v19 + 40), v7, a3);
    if (result)
    {
      if (v21)
      {
        return result;
      }

      v23 = v19;
      v8 = v24;
      v7 = v19;
    }

    else
    {
      if (!v21)
      {
LABEL_25:
        result = sub_29780D5DC(v24, v19, a3, -i, a5 & 1);
        v8 = (v19 + 40);
        goto LABEL_26;
      }

      v24 = (v19 + 40);
    }
  }

  if (a5)
  {
    return sub_29780DB4C(v8, v7, a3);
  }

  else
  {
    return sub_29780DC30(v8, v7, a3);
  }
}

uint64_t sub_29780D8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v13 = a1;
  v11 = a3;
  v7 = sub_29780D8D4(a4, a2, a1);
  result = sub_29780D8D4(a4, a3, a2);
  if (v7)
  {
    if (result)
    {
      v9 = &v13;
LABEL_9:
      v10 = &v11;
      goto LABEL_10;
    }

    sub_29780D8E0(&v13, &v12);
    if (sub_29780D8D4(a4, v11, v12))
    {
      v9 = &v12;
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    sub_29780D8E0(&v12, &v11);
    if (sub_29780D8D4(a4, v12, v13))
    {
      v9 = &v13;
      v10 = &v12;
LABEL_10:
      sub_29780D8E0(v9, v10);
    }
  }

  return 1;
}

uint64_t sub_29780D9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a1;
  v11 = a4;
  v12 = a3;
  sub_29780D8EC(a1, a2, a3, a5);
  result = sub_29780D8D4(a5, a4, a3);
  if (result)
  {
    sub_29780D8E0(&v12, &v11);
    result = sub_29780D8D4(a5, v12, a2);
    if (result)
    {
      sub_29780D8E0(&v13, &v12);
      result = sub_29780D8D4(a5, v13, a1);
      if (result)
      {
        return sub_29780D8E0(&v14, &v13);
      }
    }
  }

  return result;
}

uint64_t sub_29780DA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a2;
  v17 = a1;
  v14 = a4;
  v15 = a3;
  v13 = a5;
  sub_29780D9B4(a1, a2, a3, a4, a6);
  result = sub_29780D8D4(a6, a5, a4);
  if (result)
  {
    sub_29780D8E0(&v14, &v13);
    result = sub_29780D8D4(a6, v14, a3);
    if (result)
    {
      sub_29780D8E0(&v15, &v14);
      result = sub_29780D8D4(a6, v15, a2);
      if (result)
      {
        sub_29780D8E0(&v16, &v15);
        result = sub_29780D8D4(a6, v16, a1);
        if (result)
        {
          return sub_29780D8E0(&v17, &v16);
        }
      }
    }
  }

  return result;
}

uint64_t sub_29780DB4C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v15[5] = v3;
    v15[6] = v4;
    v6 = result;
    v7 = result + 40;
    v15[0] = result + 40;
    if (result + 40 != a2)
    {
      v9 = result;
      do
      {
        result = sub_29780D8D4(a3, v7, v9);
        if (result)
        {
          v10 = sub_29780E4F4(v15);
          sub_29780D3B4(v14, v10);
          v13 = v9;
          v11 = v15[0];
          do
          {
            v12 = sub_29780E4F4(&v13);
            sub_29780E4C4(v11, v12);
            v11 = v13;
            if (v13 == v6)
            {
              break;
            }

            v13 = (v13 - 40);
          }

          while ((sub_29780D8D4(a3, v14, v13) & 1) != 0);
          sub_29780E4C4(v11, v14);
          result = sub_29780C5D8(v14);
        }

        v9 = v15[0];
        v7 = v15[0] + 40;
        v15[0] = v7;
      }

      while (v7 != a2);
    }
  }

  return result;
}

uint64_t sub_29780DC30(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v14[5] = v3;
    v14[6] = v4;
    v6 = result;
    v7 = result + 40;
    for (v14[0] = result + 40; v7 != a2; v14[0] = v7)
    {
      result = sub_29780D8D4(a3, v7, v6);
      if (result)
      {
        v9 = sub_29780E4F4(v14);
        sub_29780D3B4(v13, v9);
        v12 = v6;
        v10 = v14[0];
        do
        {
          v11 = sub_29780E4F4(&v12);
          sub_29780E4C4(v10, v11);
          v10 = v12;
          v12 = (v12 - 40);
        }

        while ((sub_29780D8D4(a3, v13, v12) & 1) != 0);
        sub_29780E4C4(v10, v13);
        result = sub_29780C5D8(v13);
      }

      v6 = v14[0];
      v7 = v14[0] + 40;
    }
  }

  return result;
}

_OWORD *sub_29780DD08(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 == a2)
  {

    return sub_29780E51C(a2, a3);
  }

  else
  {
    nullsub_1();
    v8 = sub_29780E524(a1, a2, a3, a4);
    nullsub_1();
    return v8;
  }
}

unint64_t sub_29780DD9C(_OWORD *a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v16 = a1;
  v15 = a2;
  v6 = sub_29780E4F4(&v16);
  sub_29780D3B4(v14, v6);
  if (sub_29780D8D4(a3, v14, v4 - 40))
  {
    do
    {
      v16 += 40;
    }

    while ((sub_29780D8D4(a3, v14, v16) & 1) == 0);
  }

  else
  {
    do
    {
      v7 = v16 + 40;
      v16 = v7;
    }

    while (v7 < v4 && !sub_29780D8D4(a3, v14, v7));
  }

  v8 = v16;
  if (v16 < v4)
  {
    do
    {
      v4 -= 40;
      v15 = v4;
    }

    while ((sub_29780D8D4(a3, v14, v4) & 1) != 0);
    v8 = v16;
  }

  if (v8 < v4)
  {
    do
    {
      sub_29780D8E0(&v16, &v15);
      do
      {
        v16 += 40;
      }

      while (!sub_29780D8D4(a3, v14, v16));
      do
      {
        v15 -= 40;
      }

      while ((sub_29780D8D4(a3, v14, v15) & 1) != 0);
      v8 = v16;
    }

    while (v16 < v15);
  }

  v9 = (v8 - 40);
  v13 = (v8 - 40);
  if ((v8 - 40) != a1)
  {
    v10 = sub_29780E4F4(&v13);
    sub_29780E4C4(a1, v10);
    v9 = v13;
  }

  sub_29780E4C4(v9, v14);
  v11 = v16;
  sub_29780C5D8(v14);
  return v11;
}

uint64_t sub_29780DF10(_OWORD *a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v15 = a2;
  v16 = a1;
  v6 = sub_29780E4F4(&v16);
  sub_29780D3B4(v14, v6);
  do
  {
    v16 += 40;
  }

  while ((sub_29780D8D4(a3, v16, v14) & 1) != 0);
  if ((v16 - 40) == a1)
  {
    do
    {
      if (v16 >= v4)
      {
        break;
      }

      v4 -= 40;
      v15 = v4;
    }

    while ((sub_29780D8D4(a3, v4, v14) & 1) == 0);
  }

  else
  {
    do
    {
      v4 -= 40;
      v15 = v4;
    }

    while (!sub_29780D8D4(a3, v4, v14));
  }

  v7 = v16;
  v13 = v16 >= v4;
  if (v16 < v4)
  {
    do
    {
      sub_29780D8E0(&v16, &v15);
      do
      {
        v16 += 40;
      }

      while ((sub_29780D8D4(a3, v16, v14) & 1) != 0);
      do
      {
        v15 -= 40;
      }

      while (!sub_29780D8D4(a3, v15, v14));
      v7 = v16;
    }

    while (v16 < v15);
  }

  v8 = (v7 - 40);
  v12 = v7 - 40;
  if ((v7 - 40) != a1)
  {
    v9 = sub_29780E4F4(&v12);
    sub_29780E4C4(a1, v9);
    v8 = v12;
  }

  sub_29780E4C4(v8, v14);
  v10 = sub_29780EB40(&v12, &v13);
  sub_29780C5D8(v14);
  return v10;
}

BOOL sub_29780E08C(_OWORD *a1, char *a2, uint64_t a3)
{
  v19 = a1;
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_29780D8EC(a1, a1 + 40, (a2 - 40), a3);
        return 1;
      case 4:
        sub_29780D9B4(a1, a1 + 40, (a1 + 5), (a2 - 40), a3);
        return 1;
      case 5:
        sub_29780DA6C(a1, a1 + 40, (a1 + 5), a1 + 120, (a2 - 40), a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v18 = a2 - 40;
      if (sub_29780D8D4(a3, (a2 - 40), a1))
      {
        sub_29780D8E0(&v19, &v18);
      }

      return 1;
    }
  }

  v7 = (a1 + 5);
  sub_29780D8EC(a1, a1 + 40, (a1 + 5), a3);
  v8 = a1 + 120;
  v17 = (a1 + 120);
  if (a1 + 120 != a2)
  {
    v9 = 0;
    do
    {
      if (sub_29780D8D4(a3, v8, v7))
      {
        v10 = sub_29780E4F4(&v17);
        sub_29780D3B4(v16, v10);
        v15 = v7;
        v11 = v17;
        do
        {
          v12 = sub_29780E4F4(&v15);
          sub_29780E4C4(v11, v12);
          v11 = v15;
          if (v15 == a1)
          {
            break;
          }

          v15 = (v15 - 40);
        }

        while ((sub_29780D8D4(a3, v16, v15) & 1) != 0);
        sub_29780E4C4(v11, v16);
        if (++v9 == 8)
        {
          v17 = (v17 + 40);
          v13 = v17 == a2;
          sub_29780C5D8(v16);
          return v13;
        }

        sub_29780C5D8(v16);
      }

      v7 = v17;
      v8 = v17 + 40;
      v17 = v8;
    }

    while (v8 != a2);
  }

  return 1;
}

uint64_t sub_29780E278(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FB720(a1);
  if (v4 != sub_2977FB720(a2))
  {
    v5 = sub_2977FB720(a1);
    v6 = a2;
    return v5 < sub_2977FB720(v6);
  }

  v7 = sub_2977FB720(a1 + 8);
  if (v7 != sub_2977FB720(a2 + 8))
  {
    v5 = sub_2977FB720(a1 + 8);
    v6 = a2 + 8;
    return v5 < sub_2977FB720(v6);
  }

  return sub_29780E330(a1 + 16, a2 + 16);
}

uint64_t sub_29780E34C(uint64_t a1, uint64_t a2)
{
  *&v5 = sub_29780E41C(a2);
  *(&v5 + 1) = v3;
  return sub_29780E38C(a1, &v5);
}

uint64_t sub_29780E38C(uint64_t a1, __int128 *a2)
{
  v10 = *a2;
  v9 = sub_2978032A4(a1);
  v8 = sub_2977FB7B8(&v10);
  sub_2978037CC(a1);
  v4 = v3;
  v5 = sub_2977FB720(&v10);
  v6 = sub_297802578(&v9, &v8);
  result = j__memcmp(v4, v5, *v6);
  if (!result)
  {
    if (v9 >= v8)
    {
      return v9 > v8;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_29780E41C(uint64_t a1)
{
  sub_2978037CC(a1);
  v3 = v2;
  v4 = sub_2978032A4(a1);
  sub_2977FB7C0(&v6, v3, v4);
  return v6;
}

uint64_t sub_29780E46C(_OWORD *a1, _OWORD *a2)
{
  sub_29780D3B4(v5, a1);
  sub_29780E4C4(a1, a2);
  sub_29780E4C4(a2, v5);
  return sub_29780C5D8(v5);
}

_OWORD *sub_29780E4C4(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;
  sub_2978046C4((a1 + 1), a2 + 1);
  return a1;
}

_OWORD *sub_29780E524(char *a1, char *a2, char *a3, uint64_t a4)
{
  v12 = a1;
  if (a1 == a2)
  {

    return sub_29780E51C(a2, a3);
  }

  else
  {
    v7 = a1;
    sub_29780E624(a1, a2, a4);
    v11 = a2;
    if (a2 != a3)
    {
      v8 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v7) >> 3);
      v9 = a2;
      do
      {
        if (sub_29780D8D4(a4, v9, v12))
        {
          sub_29780D8E0(&v11, &v12);
          sub_29780E6AC(v12, a4, v8, v12);
        }

        v9 = v11 + 40;
        v11 = v9;
      }

      while (v9 != a3);
      v7 = v12;
    }

    sub_29780E82C(v7, a2, a4);
    return v11;
  }
}

uint64_t sub_29780E624(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 - result >= 41)
  {
    v4 = result;
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - result) >> 3);
    v6 = (v5 - 2) >> 1;
    v7 = v6 + 1;
    v8 = (result + 40 * v6);
    do
    {
      result = sub_29780E6AC(v4, a3, v5, v8);
      v8 = (v8 - 40);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_29780E6AC(uint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v22 = a4;
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - result) >> 3)))
    {
      v10 = (0x999999999999999ALL * ((a4 - result) >> 3)) | 1;
      v11 = result + 40 * v10;
      v21 = v11;
      v12 = 0x999999999999999ALL * ((a4 - result) >> 3) + 2;
      if (v12 < a3 && sub_29780D8D4(a2, result + 40 * v10, v11 + 40))
      {
        v21 = (v11 + 40);
        v11 += 40;
        v10 = v12;
      }

      result = sub_29780D8D4(a2, v11, a4);
      if ((result & 1) == 0)
      {
        v13 = sub_29780E4F4(&v22);
        sub_29780D3B4(v20, v13);
        while (1)
        {
          v14 = sub_29780E4F4(&v21);
          sub_29780E4C4(v22, v14);
          v15 = v21;
          v22 = v21;
          if (v7 < v10)
          {
            break;
          }

          v16 = 2 * v10;
          v10 = (2 * v10) | 1;
          v17 = v6 + 40 * v10;
          v21 = v17;
          v18 = v16 + 2;
          if (v16 + 2 < a3)
          {
            v19 = sub_29780D8D4(a2, v17, v17 + 40);
            v17 = v21;
            if (v19)
            {
              v17 = v21 + 40;
              v21 = (v21 + 40);
              v10 = v18;
            }
          }

          if (sub_29780D8D4(a2, v17, v20))
          {
            v15 = v22;
            break;
          }
        }

        sub_29780E4C4(v15, v20);
        return sub_29780C5D8(v20);
      }
    }
  }

  return result;
}

void sub_29780E82C(char *a1, uint64_t a2, uint64_t a3)
{
  if (a2 - a1 >= 41)
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    v6 = a2;
    do
    {
      sub_29780E8C8(a1, v6, a3, v5);
      v6 -= 40;
    }

    while (v5-- > 2);
  }

  nullsub_1();
}

char *sub_29780E8C8(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = result;
  if (a4 >= 2)
  {
    v7 = sub_29780E4F4(&v13);
    sub_29780D3B4(v11, v7);
    v8 = sub_29780E9A4(v13, a3, a4);
    v9 = v8;
    v12 = (a2 - 40);
    if (v8 == (a2 - 40))
    {
      sub_29780E4C4(v8, v11);
    }

    else
    {
      v10 = sub_29780E4F4(&v12);
      sub_29780E4C4(v9, v10);
      sub_29780E4C4(v12, v11);
      sub_29780EA6C(v13, v9 + 40, a3, 0xCCCCCCCCCCCCCCCDLL * ((v9 + 40 - v13) >> 3));
    }

    return sub_29780C5D8(v11);
  }

  return result;
}

_OWORD *sub_29780E9A4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 40 * v6;
    v13 = v8 + 40;
    v9 = 2 * v6;
    v6 = (2 * v6) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3 && sub_29780D8D4(a2, (v8 + 40), (v8 + 80)))
    {
      v13 = (v13 + 40);
      v6 = v10;
    }

    v11 = sub_29780E4F4(&v13);
    sub_29780E4C4(a1, v11);
    a1 = v13;
  }

  while (v6 <= v7);
  return v13;
}

uint64_t sub_29780EA6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v15[5] = v4;
    v15[6] = v5;
    v8 = result;
    v9 = v6 >> 1;
    v14 = (result + 40 * (v6 >> 1));
    v15[0] = (a2 - 40);
    result = sub_29780D8D4(a3, v14, a2 - 40);
    if (result)
    {
      v10 = sub_29780E4F4(v15);
      sub_29780D3B4(v13, v10);
      while (1)
      {
        v11 = sub_29780E4F4(&v14);
        sub_29780E4C4(v15[0], v11);
        v12 = v14;
        v15[0] = v14;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v14 = (v8 + 40 * v9);
        if ((sub_29780D8D4(a3, v14, v13) & 1) == 0)
        {
          v12 = v15[0];
          break;
        }
      }

      sub_29780E4C4(v12, v13);
      return sub_29780C5D8(v13);
    }
  }

  return result;
}

uint64_t sub_29780EB74(uint64_t result, void *a2, _BYTE *a3)
{
  *result = *a2;
  *(result + 8) = *a3;
  return result;
}

_BYTE *sub_29780EB90(_BYTE *a1, uint64_t a2, char *a3)
{
  nullsub_1();

  return sub_29780EBD8(a1, v5, a3);
}

_BYTE *sub_29780EBD8(_BYTE *result, uint64_t a2, char *a3)
{
  if (a2 >= 1)
  {
    v3 = *a3;
    v4 = a2 + 1;
    do
    {
      *result++ = v3;
      --v4;
    }

    while (v4 > 1);
  }

  return result;
}

uint64_t sub_29780EBFC(uint64_t a1, std::string::size_type a2, std::string::value_type a3)
{
  j_j_nullsub_1();
  std::string::__init(v6, a2, a3);
  return a1;
}

unint64_t sub_29780EC40(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a3;
  if (a4 < a2)
  {
    v5 = a4 + 1;
  }

  else
  {
    v5 = a2;
  }

  v6 = a1 - 1;
  while (v5)
  {
    if (!sub_29780EC98(*(v6 + v5--), v4))
    {
      return v5;
    }
  }

  return -1;
}

uint64_t sub_29780ECDC(uint64_t a1, int a2, int a3)
{
  *(a1 + 20) = a3;
  if (a2)
  {
    sub_29780ED1C(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  return a1;
}

void *sub_29780ED1C(uint64_t a1, int a2)
{
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 16;
  }

  *(a1 + 8) = v3;
  result = malloc_type_calloc((v3 + 1), 0xCuLL, 0x80040B8603338uLL);
  *a1 = result;
  result[*(a1 + 8)] = 2;
  return result;
}

uint64_t sub_29780ED7C(uint64_t a1, const void *a2, const void *a3)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    sub_29780ED1C(a1, 16);
    v6 = *(a1 + 8);
  }

  v7 = sub_29780EEC4(a2, a3);
  v8 = v6 - 1;
  v9 = *a1 + 8 * *(a1 + 8) + 8;
  v10 = v7 & (v6 - 1);
  v11 = v10;
  v12 = *(*a1 + 8 * v10);
  if (v12)
  {
    v14 = 0xFFFFFFFFLL;
    v15 = 1;
    do
    {
      v20 = v14;
      if (v12 == sub_2978027E4())
      {
        if (v20 == -1)
        {
          v14 = v11;
        }

        else
        {
          v14 = v20;
        }
      }

      else if (*(v9 + 4 * v10) == v7)
      {
        v16 = *(a1 + 20);
        v17 = sub_2977FB5F0(v12);
        sub_2977FB7C0(v21, v12 + v16, v17);
        v18 = sub_297804D28(a2, a3, v21[0], v21[1]);
        v14 = v20;
        if (v18)
        {
          return v11;
        }
      }

      else
      {
        v14 = v20;
      }

      v19 = v11 + v15++;
      v10 = v19 & v8;
      v12 = *(*a1 + 8 * v10);
      v11 = v10;
    }

    while (v12);
    if (v14 == -1)
    {
      v11 = v10;
    }

    else
    {
      v11 = v14;
    }

    if (v14 != -1)
    {
      v10 = v14;
    }
  }

  *(v9 + 4 * v10) = v7;
  return v11;
}

uint64_t sub_29780EEC4(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  result = sub_2977FB7B8(v5);
  if (result)
  {
    v3 = result;
    LODWORD(result) = 0;
    for (i = 0; i != v3; ++i)
    {
      result = 33 * result + sub_297803A20(v5, i);
    }
  }

  return result;
}

uint64_t sub_29780EF2C(uint64_t a1, const void *a2, const void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = sub_29780EEC4(a2, a3);
  v8 = v3 - 1;
  v9 = v7 & (v3 - 1);
  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v7;
  v13 = *a1 + 8 * *(a1 + 8) + 8;
  v14 = 1;
  while (1)
  {
    if (v10 != sub_2978027E4() && *(v13 + 4 * v9) == v12)
    {
      v15 = *(a1 + 20);
      v16 = sub_2977FB5F0(v10);
      sub_2977FB7C0(v18, v10 + v15, v16);
      if (sub_297804D28(a2, a3, v18[0], v18[1]))
      {
        break;
      }
    }

    v17 = v9 + v14++;
    v9 = v17 & v8;
    v10 = *(*a1 + 8 * v9);
    result = 0xFFFFFFFFLL;
    if (!v10)
    {
      return result;
    }
  }

  return v9;
}

uint64_t sub_29780F02C(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 20);
  v5 = sub_2977FB5F0(a2);
  sub_2977FB7C0(v7, a2 + v4, v5);
  return sub_29780F088(a1, v7[0], v7[1]);
}

uint64_t sub_29780F088(uint64_t a1, const void *a2, const void *a3)
{
  v4 = sub_29780EF2C(a1, a2, a3);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = *(*a1 + 8 * v4);
  *(*a1 + 8 * v4) = sub_2978027E4();
  *(a1 + 12) = vadd_s32(*(a1 + 12), 0x1FFFFFFFFLL);
  return v5;
}

uint64_t sub_29780F0F4(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 12);
  if (3 * v6 >= 4 * v5)
  {
    if (v6 - (v5 + *(a1 + 16)) > v6 >> 3)
    {
      return a2;
    }

    v7 = *(a1 + 8);
    v8 = *(a1 + 8);
  }

  else
  {
    v7 = 2 * v6;
    v8 = 2 * v6;
  }

  v9 = malloc_type_calloc((v8 + 1), 0xCuLL, 0x2004093837F09uLL);
  v10 = &v9[v7];
  *v10 = 2;
  v11 = v10 + 1;
  v12 = *(a1 + 8);
  v24 = v8;
  if (v12)
  {
    v13 = 0;
    v14 = v4 + 8 * v6 + 8;
    v15 = v8 - 1;
    v16 = a2;
    do
    {
      v17 = *(*a1 + 8 * v13);
      if (v17 && v17 != sub_2978027E4())
      {
        v18 = *(v14 + 4 * v13);
        v19 = v18 & v15;
        v20 = &v9[v19];
        if (*v20)
        {
          v21 = 1;
          do
          {
            v22 = v19 + v21++;
            v19 = v22 & v15;
          }

          while (v9[v19]);
          v20 = &v9[v19];
        }

        *v20 = v17;
        *(v11 + v19) = v18;
        if (v13 == v16)
        {
          a2 = v19;
        }

        else
        {
          a2 = a2;
        }
      }

      ++v13;
    }

    while (v13 != v12);
  }

  free(*a1);
  *a1 = v9;
  *(a1 + 8) = v24;
  *(a1 + 16) = 0;
  return a2;
}

uint64_t sub_29780F248(char **a1, char *a2, unint64_t a3)
{
  v6 = *a1;
  v7 = sub_2978045D4(a1[1], a3);
  result = sub_29780F2AC(v6, a2, v7);
  if (!result)
  {
    v9 = a1[1];
    v10 = v9 == a3;
    if (v9 < a3)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    if (v10)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

uint64_t sub_29780F2AC(char *a1, char *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  while (1)
  {
    v6 = *a1++;
    v7 = sub_29780F604(v6);
    v8 = *a2++;
    v9 = sub_29780F604(v8);
    if (v7 != v9)
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  if (v7 < v9)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_29780F320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v15[0] = a2;
  v15[1] = a3;
  v8 = sub_2977FB720(a1);
  v9 = sub_2977FB7B8(a1);
  sub_2977FB7C0(v14, v8, v9);
  v10 = sub_2977FB720(v15);
  v11 = sub_2977FB7B8(v15);
  sub_2977FB7C0(v13, v10, v11);
  return sub_29780F3B4(v14[0], v14[1], v13[0], v13[1], v6, v5);
}

uint64_t sub_29780F3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  v36 = *MEMORY[0x29EDCA608];
  v34[0] = a1;
  v34[1] = a2;
  v33[0] = a3;
  v33[1] = a4;
  v27 = sub_2977FB7B8(v34);
  v8 = sub_2977FB7B8(v33);
  sub_29780AE44(v32);
  if (2 * (v8 + 1) < 0x41)
  {
    v9 = &v35;
  }

  else
  {
    v9 = sub_2977FA198();
    sub_297810000(v32, v9);
  }

  v10 = 0;
  do
  {
    *&v9[4 * v10] = v10;
    ++v10;
  }

  while (v8 >= v10);
  if (v27)
  {
    v11 = &v9[4 * v8 + 4];
    v12 = 1;
    v26 = a6;
    v25 = v8;
    while (1)
    {
      v13 = v11;
      v11 = v9;
      *v13 = v12;
      v31 = v12;
      v14 = v12;
      if (v8)
      {
        v15 = 0;
        v16 = (v13 + 4);
        v28 = v11;
        v17 = (v11 + 4);
        do
        {
          if (a5)
          {
            v18 = *(v17 - 4);
            v19 = *sub_297803268(v34, v12 - 1);
            if (v19 == *sub_297803268(v33, v15))
            {
              v20 = v18;
            }

            else
            {
              v20 = v18 + 1;
            }

            v30 = v20;
            v29 = *sub_2977FA590((v16 - 1), v17) + 1;
            v21 = *sub_2977FA590(&v30, &v29);
          }

          else
          {
            v22 = *sub_297803268(v34, v12 - 1);
            if (v22 == *sub_297803268(v33, v15))
            {
              v21 = *(v17 - 4);
            }

            else
            {
              v21 = *sub_2977FA590((v16 - 1), v17) + 1;
            }
          }

          *v16 = v21;
          v14 = *sub_2977FA590(&v31, v16);
          v31 = v14;
          ++v16;
          v17 += 4;
          ++v15;
          --v8;
        }

        while (v8);
        a6 = v26;
        v8 = v25;
        v11 = v28;
      }

      if (a6 && v14 > a6)
      {
        break;
      }

      ++v12;
      v9 = v13;
      if (v12 > v27)
      {
        goto LABEL_25;
      }
    }

    v23 = a6 + 1;
  }

  else
  {
    v13 = v9;
LABEL_25:
    v23 = *&v13[4 * v8];
  }

  sub_297810018(v32);
  return v23;
}

uint64_t sub_29780F604(signed __int8 a1)
{
  v1 = a1;
  if (a1 - 65 < 0x1A)
  {
    return (a1 | 0x20);
  }

  return v1;
}

unint64_t sub_29780F620(uint64_t *a1, const void *a2, size_t a3, unint64_t a4)
{
  v27 = *MEMORY[0x29EDCA608];
  v22 = a2;
  v23 = a3;
  v6 = sub_2977FB7B8(&v22);
  v7 = a1[1];
  v8 = v7 - v6;
  if (v7 < v6)
  {
    return -1;
  }

  v10 = v6;
  if (v7 < 0x10 || v6 - 256 <= 0xFFFFFFFFFFFFFF00)
  {
    v18 = v8 + 1;
    v19 = sub_2978045D4(a4, v8 + 1);
    if (v19 == v18)
    {
      return -1;
    }

    a4 = v19;
    while (1)
    {
      *&v24[0] = sub_297805EA4(a1, a4, v10);
      *(&v24[0] + 1) = v20;
      if (sub_2977FB778(v24, v22, v23))
      {
        break;
      }

      if (v18 == ++a4)
      {
        return -1;
      }
    }
  }

  else
  {
    if (v7 <= a4)
    {
      return -1;
    }

    v25 = vdupq_n_s8(v6);
    v26 = v25;
    v24[12] = v25;
    v24[13] = v25;
    v24[10] = v25;
    v24[11] = v25;
    v24[8] = v25;
    v24[9] = v25;
    v24[6] = v25;
    v24[7] = v25;
    v24[4] = v25;
    v24[5] = v25;
    v24[2] = v25;
    v24[3] = v25;
    v24[0] = v25;
    v24[1] = v25;
    v11 = v6 - 1;
    if (v6 != 1)
    {
      v12 = 0;
      v13 = 1;
      do
      {
        *(v24 + sub_297803A20(&v22, v12)) = v11 - v12;
        v12 = v13;
      }

      while (v11 != v13++);
      v7 = a1[1];
    }

    v15 = v7 - a4;
    if (v10 > (v7 - a4))
    {
      return -1;
    }

    while (1)
    {
      a4 = a4;
      v21[0] = sub_297805EA4(a1, a4, v10);
      v21[1] = v16;
      if (sub_2977FB778(v21, v22, v23))
      {
        break;
      }

      v17 = *(v24 + sub_297803A20(a1, v11 + a4));
      v15 -= v17;
      LODWORD(a4) = a4 + v17;
      if (v15 < v10)
      {
        return -1;
      }
    }
  }

  return a4;
}

unint64_t sub_29780F7E0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[0] = a2;
  v13[1] = a3;
  sub_29780F8A8(v12);
  if (sub_2977FB7B8(v13))
  {
    v6 = 0;
    do
    {
      v7 = sub_297803A20(v13, v6);
      sub_29780F8AC(v12, v7, 1);
      ++v6;
    }

    while (v6 != sub_2977FB7B8(v13));
  }

  v8 = sub_2978045D4(a4, a1[1]);
  v9 = a1[1];
  if (v8 == v9)
  {
    return -1;
  }

  v10 = v8;
  while (!sub_29780F904(v12, *(*a1 + v10)))
  {
    if (v9 == ++v10)
    {
      return -1;
    }
  }

  return v10;
}

uint64_t sub_29780F8AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 0x100)
  {
    sub_29780339C();
  }

  v3 = a3;
  v7[0] = sub_29781006C();
  v7[1] = v5;
  sub_297810070(v7, v3);
  return a1;
}

BOOL sub_29780F904(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x100)
  {
    sub_29780339C();
  }

  v4[0] = sub_29781006C(a1);
  v4[1] = v2;
  return sub_2978100D8(v4);
}

unint64_t sub_29780F944(void *a1, unsigned __int8 a2, unint64_t a3)
{
  result = sub_2978045D4(a3, a1[1]);
  v6 = a1[1];
  if (result == v6)
  {
    return -1;
  }

  while (*(*a1 + result) == a2)
  {
    if (v6 == ++result)
    {
      return -1;
    }
  }

  return result;
}

unint64_t sub_29780F9A4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[0] = a2;
  v13[1] = a3;
  sub_29780F8A8(v12);
  if (sub_2977FB7B8(v13))
  {
    v6 = 0;
    do
    {
      v7 = sub_297803A20(v13, v6);
      sub_29780F8AC(v12, v7, 1);
      ++v6;
    }

    while (v6 != sub_2977FB7B8(v13));
  }

  v8 = sub_2978045D4(a4, a1[1]);
  v9 = a1[1];
  if (v8 == v9)
  {
    return -1;
  }

  v10 = v8;
  while (sub_29780F904(v12, *(*a1 + v10)))
  {
    if (v9 == ++v10)
    {
      return -1;
    }
  }

  return v10;
}

unint64_t sub_29780FA6C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[0] = a2;
  v13[1] = a3;
  sub_29780F8A8(v12);
  if (sub_2977FB7B8(v13))
  {
    v6 = 0;
    do
    {
      v7 = sub_297803A20(v13, v6);
      sub_29780F8AC(v12, v7, 1);
      ++v6;
    }

    while (v6 != sub_2977FB7B8(v13));
  }

  v8 = sub_2978045D4(a4, a1[1]);
  while (v8)
  {
    v9 = v8 - 1;
    v10 = sub_29780F904(v12, *(*a1 + v8 - 1));
    v8 = v9;
    if (v10)
    {
      return v9;
    }
  }

  return -1;
}

unint64_t sub_29780FB30(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v15[0] = a2;
  v15[1] = a3;
  sub_29780F8A8(v14);
  v6 = sub_2977FB7B8(v15);
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = sub_297803A20(v15, i);
      sub_29780F8AC(v14, v9, 1);
    }
  }

  v10 = sub_2978045D4(a4, a1[1]);
  while (v10)
  {
    v11 = v10 - 1;
    v12 = sub_29780F904(v14, *(*a1 + v10 - 1));
    v10 = v11;
    if (!v12)
    {
      return v11;
    }
  }

  return -1;
}

uint64_t sub_29780FBF0(__int128 *a1, uint64_t a2, const void *a3, size_t a4, int a5, int a6)
{
  v14 = *a1;
  if (sub_2977FB720(&v14))
  {
    v11 = 0;
    do
    {
      if ((a5 & 0x80000000) == 0 && v11 >= a5)
      {
        break;
      }

      sub_29780FCD8(&v14, a3, a4, v13);
      if ((a6 & 1) != 0 || sub_2977FB7B8(v13))
      {
        sub_297803F88(a2, v13);
      }

      v14 = v13[1];
      ++v11;
    }

    while (sub_2977FB720(&v14));
  }

  result = sub_2977FB720(&v14);
  if (result)
  {
    result = sub_2977FB7B8(&v14);
    if (result || a6)
    {
      return sub_297803F88(a2, &v14);
    }
  }

  return result;
}

uint64_t sub_29780FCD8@<X0>(uint64_t *a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  v14[0] = a2;
  v14[1] = a3;
  v6 = sub_29780F620(a1, a2, a3, 0);
  if (v6 == -1)
  {
    sub_297804560(v13);
    return sub_297804550(a1, v13, a4);
  }

  else
  {
    v7 = v6;
    v13[0] = sub_297804564(a1, 0, v6);
    v13[1] = v8;
    v9 = sub_2977FB7B8(v14);
    v12[0] = sub_297804564(a1, v9 + v7, 0xFFFFFFFFFFFFFFFFLL);
    v12[1] = v10;
    return sub_297804550(v13, v12, a4);
  }
}

uint64_t sub_29780FD80(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t *a4)
{
  v5 = a3;
  v12 = a1;
  v13 = a2;
  if (!a3)
  {
    v5 = sub_29780FED8(&v12);
  }

  if (sub_297806914(&v12))
  {
    return 1;
  }

  for (*a4 = 0; !sub_297806914(&v12); v13 = v11)
  {
    if (sub_297803A20(&v12, 0) < 48 || sub_297803A20(&v12, 0) >= 58)
    {
      if (sub_297803A20(&v12, 0) < 97 || sub_297803A20(&v12, 0) >= 123)
      {
        if (sub_297803A20(&v12, 0) < 65 || sub_297803A20(&v12, 0) > 90)
        {
          return 1;
        }

        v7 = -55;
      }

      else
      {
        v7 = -87;
      }
    }

    else
    {
      v7 = -48;
    }

    v8 = v7 + sub_297803A20(&v12, 0);
    if (v8 >= v5)
    {
      return 1;
    }

    v9 = *a4;
    v10 = *a4 * v5 + v8;
    *a4 = v10;
    if (v10 / v5 < v9)
    {
      return 1;
    }

    v12 = sub_297805EA4(&v12, 1uLL, 0xFFFFFFFFFFFFFFFFLL);
  }

  return 0;
}

uint64_t sub_29780FED8(uint64_t *a1)
{
  sub_2977FB7B4(&v7, "0x");
  if (sub_297807C54(a1, v7, v8))
  {
    *a1 = sub_297805EA4(a1, 2uLL, 0xFFFFFFFFFFFFFFFFLL);
    a1[1] = v2;
    return 16;
  }

  else
  {
    sub_2977FB7B4(&v7, "0b");
    if (sub_297807C54(a1, v7, v8))
    {
      v3 = 2;
      *a1 = sub_297805EA4(a1, 2uLL, 0xFFFFFFFFFFFFFFFFLL);
      a1[1] = v4;
    }

    else
    {
      sub_2977FB7B4(&v7, "0o");
      if (sub_297807C54(a1, v7, v8))
      {
        *a1 = sub_297805EA4(a1, 2uLL, 0xFFFFFFFFFFFFFFFFLL);
        a1[1] = v5;
        return 8;
      }

      else
      {
        sub_2977FB7B4(&v7, "0");
        if (sub_297807C54(a1, v7, v8))
        {
          return 8;
        }

        else
        {
          return 10;
        }
      }
    }
  }

  return v3;
}

double sub_29780FFF4(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_297810000(void **result, void *a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    sub_29781001C(result, v3);
  }
}

void sub_29781001C(int a1, void *a2)
{
  if (a2)
  {
    j__free(a2);
  }
}

void sub_297810058(void **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_29781001C(a1, v1);
  }
}

uint64_t sub_297810070(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (a2)
  {
    v3 = **result | v2;
  }

  else
  {
    v3 = **result & ~v2;
  }

  **result = v3;
  return result;
}

__int128 *sub_2978100F4()
{
  if ((atomic_load_explicit(&qword_2A13A27C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13A27C0))
  {
    sub_297808A80(&xmmword_2A13A27B0, 0x8000000000000000, 0);
    __cxa_guard_release(&qword_2A13A27C0);
  }

  return &xmmword_2A13A27B0;
}

uint64_t sub_297810158(uint64_t result)
{
  v1 = 1000000000;
  v2 = *(result + 8);
  if (v2 <= 999999999)
  {
    v5 = *result;
    if (v2 >= -999999999)
    {
      goto LABEL_15;
    }

    v6 = -1999999999 - v2;
    if (v2 > 0x88CA6C01)
    {
      v6 = 0;
    }

    v7 = ((__PAIR64__(v6, v2) - 2294967297u) >> 32) / 0x3B9ACA00;
    if (v2 < 0x88CA6C01)
    {
      ++v7;
    }

    v5 += ~v7;
    v2 += 1000000000 * v7 + 1000000000;
  }

  else
  {
    v3 = v2 - 1000000000;
    if ((v2 - 1000000000) <= 0x3B9AC9FF)
    {
      v4 = *result;
    }

    else
    {
      v4 = *result + 1;
    }

    v2 -= 2000000000;
    if (v3 < 0x3B9ACA00)
    {
      v2 = v3;
    }

    v5 = v4 + 1;
  }

  *result = v5;
  *(result + 8) = v2;
LABEL_15:
  if (v5 >= 1)
  {
    if ((v2 & 0x80000000) == 0)
    {
      return result;
    }

    v8 = -1;
LABEL_22:
    *result = v5 + v8;
    *(result + 8) = v2 + v1;
    return result;
  }

  if (v5 && v2 >= 1)
  {
    v8 = 1;
    v1 = -1000000000;
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_297810254()
{
  v1.tv_usec = 0;
  v1.tv_sec = 0;
  if (gettimeofday(&v1, 0))
  {
    sub_2978100F4();
    return xmmword_2A13A27B0;
  }

  else
  {
    sub_297808A80(&v2, v1.tv_sec - 946684800, (1000 * v1.tv_usec));
  }

  return v2;
}

uint64_t sub_2978102CC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 7)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 3) == *(v6 + 3))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297810340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 10)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 8) == *(v6 + 8))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_2978103B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 5)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 4) == *(v6 + 4))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297810428(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 3)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 2) == *(v6 + 2))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_29781049C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 4 && *a2 == *sub_2977FB720(a1))
  {
    *(a1 + 16) = a3;
  }

  return a1;
}

uint64_t sub_297810504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 6)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 4) == *(v6 + 4))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297810578(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 8 && *a2 == *sub_2977FB720(a1))
  {
    *(a1 + 16) = a3;
  }

  return a1;
}

uint64_t sub_2978105E0(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v2 = a2;
  }

  return *v2;
}

uint64_t sub_2978105F4(uint64_t a1, uint64_t a2)
{
  sub_297812960(a2, a1);
  sub_297810B64(a1);
  *(a1 + 24) = sub_297810694();
  sub_297810B64(a1);
  *(a1 + 28) = sub_297810BA0();
  sub_297810EB8(a1);
  *(a1 + 32) = sub_297810D78();
  sub_297811170(a1);
  *(a1 + 36) = sub_297810F0C();
  sub_29781131C(a1);
  *(a1 + 40) = sub_2978111DC();
  sub_29781131C(a1);
  v3 = sub_297811388();
  *(a1 + 44) = v3;
  if (!v3)
  {
    *(a1 + 44) = sub_29781140C(a1);
  }

  return a1;
}

uint64_t sub_297810694()
{
  v0 = sub_2978102C8();
  v92 = 24;
  v1 = sub_297811CD4(v0, "i386", "i486", "i586", "i686", &v92);
  v91 = 24;
  v2 = sub_297811D40(v1, "i786", "i886", "i986", &v91);
  v90 = 25;
  v3 = sub_297811D9C(v2, "amd64", "x86_64", "x86_64h", &v90);
  v89 = 11;
  v4 = sub_2978102CC(v3, "powerpc", &v89);
  v88 = 12;
  v5 = sub_297811DF8(v4, "powerpc64", "ppu", &v88);
  v87 = 13;
  v6 = sub_297811E3C(v5, "powerpc64le", &v87);
  v86 = 3;
  v7 = sub_2978102CC(v6, "aarch64", &v86);
  v85 = 4;
  v8 = sub_297810340(v7, "aarch64_be", &v85);
  v84 = 3;
  v9 = sub_2978103B4(v8, "arm64", &v84);
  v83 = 1;
  v10 = sub_297811EB0(v9, "arm", "xscale", &v83);
  v82 = 1;
  v11 = sub_297811EF4(v10, "armv", &v82);
  v81 = 2;
  v12 = sub_2978103B4(v11, "armeb", &v81);
  v80 = 2;
  v13 = sub_297811F5C(v12, "armebv", &v80);
  v79 = 22;
  v14 = sub_2978103B4(v13, "thumb", &v79);
  v78 = 22;
  v15 = sub_297811F5C(v14, "thumbv", &v78);
  v77 = 23;
  v16 = sub_2978102CC(v15, "thumbeb", &v77);
  v76 = 23;
  v17 = sub_297811FD0(v16, "thumbebv", &v76);
  v75 = 10;
  v18 = sub_297810504(v17, "msp430", &v75);
  v74 = 6;
  v19 = sub_297812038(v18, "mips", "mipseb", "mipsallegrex", &v74);
  v73 = 7;
  v20 = sub_297812094(v19, "mipsel", "mipsallegrexel", &v73);
  v72 = 8;
  v21 = sub_2978120D8(v20, "mips64", "mips64eb", &v72);
  v71 = 9;
  v22 = sub_297810578(v21, "mips64el", &v71);
  v70 = 14;
  v23 = sub_29781049C(v22, "r600", &v70);
  v69 = 5;
  v24 = sub_2978102CC(v23, "hexagon", &v69);
  v68 = 20;
  v25 = sub_2978103B4(v24, "s390x", &v68);
  v67 = 18;
  v26 = sub_2978103B4(v25, "sparc", &v67);
  v66 = 19;
  v27 = sub_29781211C(v26, "sparcv9", "sparc64", &v66);
  v65 = 21;
  v28 = sub_297810428(v27, "tce", &v65);
  v64 = 26;
  v29 = sub_2978103B4(v28, "xcore", &v64);
  v63 = 27;
  v30 = sub_2978103B4(v29, "nvptx", &v63);
  v62 = 28;
  v31 = sub_2978102CC(v30, "nvptx64", &v62);
  v61 = 29;
  v32 = sub_297810504(v31, "igil32", &v61);
  v60 = 30;
  v33 = sub_297810504(v32, "igil64", &v60);
  v59 = 31;
  v34 = sub_2978103B4(v33, "air64", &v59);
  v58 = 32;
  v35 = sub_2978102CC(v34, "amdil64", &v58);
  v57 = 33;
  v36 = sub_297810504(v35, "gpu_32", &v57);
  v56 = 34;
  v37 = sub_297810504(v36, "gpu_64", &v56);
  v55 = 35;
  v38 = sub_29781049C(v37, "le32", &v55);
  v54 = 36;
  v39 = sub_2978103B4(v38, "amdil", &v54);
  v53 = 37;
  v40 = sub_29781049C(v39, "spir", &v53);
  v52 = 38;
  v41 = sub_297810504(v40, "spir64", &v52);
  v51 = 39;
  v42 = sub_2978102CC(v41, "kalimba", &v51);
  v50 = 15;
  v43 = sub_29781049C(v42, "agx0", &v50);
  v49 = 16;
  v44 = sub_29781049C(v43, "agx1", &v49);
  v48 = 17;
  v45 = sub_29781049C(v44, "agx2", &v48);
  v47 = 0;
  return sub_2978105E0(v45, &v47);
}

uint64_t sub_297810B64(uint64_t a1)
{
  sub_2978044E8(v2, a1);
  sub_297804298(v2, 45, &v3);
  return v3;
}

uint64_t sub_297810BA0()
{
  v0 = sub_2978102C8();
  v38 = 1;
  v1 = sub_2978122BC(v0, "v8", &v38);
  v37 = 1;
  v2 = sub_297812334(v1, "v8a", &v37);
  v36 = 2;
  v3 = sub_2978122BC(v2, "v7", &v36);
  v35 = 2;
  v4 = sub_297812334(v3, "v7a", &v35);
  v34 = 3;
  v5 = sub_2978123B8(v4, "v7em", &v34);
  v33 = 2;
  v6 = sub_297812334(v5, "v7l", &v33);
  v32 = 4;
  v7 = sub_297812334(v6, "v7m", &v32);
  v31 = 2;
  v8 = sub_297812334(v7, "v7r", &v31);
  v30 = 5;
  v9 = sub_297812334(v8, "v7s", &v30);
  v29 = 6;
  v10 = sub_297812334(v9, "v7k", &v29);
  v28 = 7;
  v11 = sub_2978122BC(v10, "v6", &v28);
  v27 = 8;
  v12 = sub_297812334(v11, "v6m", &v27);
  v26 = 9;
  v13 = sub_2978123B8(v12, "v6t2", &v26);
  v25 = 10;
  v14 = sub_2978122BC(v13, "v5", &v25);
  v24 = 10;
  v15 = sub_297812334(v14, "v5e", &v24);
  v23 = 10;
  v16 = sub_297812334(v15, "v5t", &v23);
  v22 = 11;
  v17 = sub_2978123B8(v16, "v5te", &v22);
  v21 = 12;
  v18 = sub_297812334(v17, "v4t", &v21);
  v20 = 0;
  return sub_2978105E0(v18, &v20);
}

uint64_t sub_297810D78()
{
  v0 = sub_2978102C8();
  v24 = 1;
  v1 = sub_2978103B4(v0, "apple", &v24);
  v23 = 2;
  v2 = sub_29781243C(v1, "pc", &v23);
  v22 = 3;
  v3 = sub_29781049C(v2, "scei", &v22);
  v21 = 4;
  v4 = sub_297810428(v3, "bgp", &v21);
  v20 = 5;
  v5 = sub_297810428(v4, "bgq", &v20);
  v19 = 6;
  v6 = sub_297810428(v5, "fsl", &v19);
  v18 = 7;
  v7 = sub_297810428(v6, "ibm", &v18);
  v17 = 8;
  v8 = sub_297810428(v7, "img", &v17);
  v16 = 9;
  v9 = sub_297810428(v8, "mti", &v16);
  v15 = 10;
  v10 = sub_297810504(v9, "nvidia", &v15);
  v14 = 11;
  v11 = sub_297810428(v10, "csr", &v14);
  v13 = 0;
  return sub_2978105E0(v11, &v13);
}

uint64_t sub_297810EB8(uint64_t a1)
{
  sub_2978044E8(v2, a1);
  sub_297804298(v2, 45, &v3);
  v5 = v4;
  sub_297804298(&v5, 45, &v3);
  return v3;
}

uint64_t sub_297810F0C()
{
  v0 = sub_2978102C8();
  v48 = 1;
  v1 = sub_297811F5C(v0, "darwin", &v48);
  v47 = 2;
  v2 = sub_2978124A4(v1, "dragonfly", &v47);
  v46 = 3;
  v3 = sub_297812518(v2, "freebsd", &v46);
  v45 = 4;
  v4 = sub_29781258C(v3, "ios", &v45);
  v44 = 5;
  v5 = sub_297811FD0(v4, "kfreebsd", &v44);
  v43 = 6;
  v6 = sub_297812600(v5, "linux", &v43);
  v42 = 7;
  v7 = sub_29781258C(v6, "lv2", &v42);
  v41 = 8;
  v8 = sub_297811F5C(v7, "macosx", &v41);
  v40 = 9;
  v9 = sub_297811F5C(v8, "netbsd", &v40);
  v39 = 10;
  v10 = sub_297812518(v9, "openbsd", &v39);
  v38 = 11;
  v11 = sub_297812518(v10, "solaris", &v38);
  v37 = 12;
  v12 = sub_297812600(v11, "win32", &v37);
  v36 = 12;
  v13 = sub_297812518(v12, "windows", &v36);
  v35 = 13;
  v14 = sub_297812600(v13, "haiku", &v35);
  v34 = 14;
  v15 = sub_297812600(v14, "minix", &v34);
  v33 = 15;
  v16 = sub_297812600(v15, "rtems", &v33);
  v32 = 16;
  v17 = sub_297811EF4(v16, "nacl", &v32);
  v31 = 17;
  v18 = sub_29781258C(v17, "cnk", &v31);
  v30 = 18;
  v19 = sub_297811F5C(v18, "bitrig", &v30);
  v29 = 19;
  v20 = sub_29781258C(v19, "aix", &v29);
  v28 = 20;
  v21 = sub_297811EF4(v20, "cuda", &v28);
  v27 = 21;
  v22 = sub_297811EF4(v21, "nvcl", &v27);
  v26 = 22;
  v23 = sub_297811EF4(v22, "tvos", &v26);
  v25 = 0;
  return sub_2978105E0(v23, &v25);
}

uint64_t sub_297811170(uint64_t a1)
{
  sub_2978044E8(v2, a1);
  sub_297804298(v2, 45, &v3);
  v5 = v4;
  sub_297804298(&v5, 45, &v3);
  v5 = v4;
  sub_297804298(&v5, 45, &v3);
  return v3;
}

uint64_t sub_2978111DC()
{
  v0 = sub_2978102C8();
  v24 = 7;
  v1 = sub_297811F5C(v0, "eabihf", &v24);
  v23 = 6;
  v2 = sub_297811EF4(v1, "eabi", &v23);
  v22 = 3;
  v3 = sub_2978124A4(v2, "gnueabihf", &v22);
  v21 = 2;
  v4 = sub_297812518(v3, "gnueabi", &v21);
  v20 = 4;
  v5 = sub_297811F5C(v4, "gnux32", &v20);
  v19 = 5;
  v6 = sub_297811F5C(v5, "code16", &v19);
  v18 = 1;
  v7 = sub_29781258C(v6, "gnu", &v18);
  v17 = 8;
  v8 = sub_297812518(v7, "android", &v17);
  v16 = 9;
  v9 = sub_297811EF4(v8, "msvc", &v16);
  v15 = 10;
  v10 = sub_297812518(v9, "itanium", &v15);
  v14 = 11;
  v11 = sub_297811F5C(v10, "cygnus", &v14);
  v13 = 0;
  return sub_2978105E0(v11, &v13);
}

uint64_t sub_29781131C(uint64_t a1)
{
  sub_2978044E8(v2, a1);
  sub_297804298(v2, 45, v3);
  v5 = v4;
  sub_297804298(&v5, 45, v3);
  v5 = v4;
  sub_297804298(&v5, 45, v3);
  return v4;
}

uint64_t sub_297811388()
{
  sub_2978102C8();
  v7 = 1;
  v0 = sub_2978123B8(v8, "coff", &v7);
  v6 = 2;
  v1 = sub_297812334(v0, "elf", &v6);
  v5 = 3;
  v2 = sub_297812674(v1, "macho", &v5);
  v4 = 0;
  return sub_2978105E0(v2, &v4);
}

uint64_t sub_29781140C(uint64_t a1)
{
  if (sub_2978126F8(a1))
  {
    return 3;
  }

  if (sub_297812744(a1))
  {
    return 1;
  }

  return 2;
}

uint64_t sub_297811454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v54 = *MEMORY[0x29EDCA608];
  *&v52 = a1;
  *(&v52 + 1) = a2;
  sub_2978068FC(v53);
  sub_2977FB7B4(&v51, "-");
  sub_29780FBF0(&v52, v53, v51, *(&v51 + 1), -1, 1);
  if (sub_2978094B8(v53))
  {
    sub_29780942C(v53, 0);
    v4 = sub_297810694() != 0;
  }

  else
  {
    v4 = 0;
  }

  if (sub_2978094B8(v53) < 2)
  {
    v5 = 0;
  }

  else
  {
    sub_29780942C(v53, 1u);
    v5 = sub_297810D78() != 0;
  }

  if (sub_2978094B8(v53) < 3)
  {
    v6 = 0;
    v48 = 0;
    v9 = 0;
  }

  else
  {
    sub_29780942C(v53, 2u);
    v6 = sub_297810F0C();
    v7 = sub_29780942C(v53, 2u);
    sub_2977FB7B4(&v51, "cygwin");
    v48 = sub_297807C54(v7, v51, *(&v51 + 1));
    v8 = sub_29780942C(v53, 2u);
    sub_2977FB7B4(&v51, "mingw");
    v9 = sub_297807C54(v8, v51, *(&v51 + 1));
  }

  if (sub_2978094B8(v53) < 4)
  {
    v10 = 0;
  }

  else
  {
    sub_29780942C(v53, 3u);
    v10 = sub_2978111DC();
  }

  v47 = a3;
  if (sub_2978094B8(v53) < 5)
  {
    v11 = 0;
  }

  else
  {
    sub_29780942C(v53, 4u);
    v11 = sub_297811388();
  }

  v50[0] = v4;
  v50[1] = v5;
  v12 = v6;
  v50[2] = v6 != 0;
  v50[3] = v10 != 0;
  if (!sub_297811B28())
  {
    goto LABEL_68;
  }

  v13 = 0;
  v14 = 0;
  do
  {
    if ((v50[v13] & 1) != 0 || !sub_2978094B8(v53))
    {
      goto LABEL_67;
    }

    v15 = 0;
    v16 = 0;
    while (1)
    {
      if (sub_297811B28() > v15 && (v50[v15] & 1) != 0)
      {
        goto LABEL_37;
      }

      v51 = *sub_29780942C(v53, v16);
      if (v14 <= 1)
      {
        if (v14)
        {
          if (sub_297810D78())
          {
            goto LABEL_41;
          }
        }

        else if (sub_297810694())
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if (v14 != 2)
      {
        break;
      }

      v17 = sub_297810F0C();
      sub_2977FB7B4(&v49, "cygwin");
      v18 = sub_297807C54(&v51, v49.n128_u64[0], v49.n128_u64[1]);
      sub_2977FB7B4(&v49, "mingw");
      v19 = sub_297807C54(&v51, v49.n128_u64[0], v49.n128_u64[1]);
      v9 = v19;
      v12 = v17;
      if (v17 || v18 || v19)
      {
        v48 = v18;
        goto LABEL_41;
      }

      v48 = 0;
      v12 = 0;
LABEL_37:
      v15 = ++v16;
      if (sub_2978094B8(v53) == v16)
      {
        goto LABEL_67;
      }
    }

    v10 = sub_2978111DC();
    if (v10)
    {
      goto LABEL_41;
    }

    v20 = sub_297811388();
    if (!v20)
    {
      v11 = 0;
      goto LABEL_37;
    }

    v11 = v20;
LABEL_41:
    if (v14 >= v16)
    {
      while (v16 < v14)
      {
        sub_2977FB7B4(&v49, &byte_2978FC3E5);
        if (sub_2978094B8(v53) > v16)
        {
          v25 = v16;
          do
          {
            v26 = sub_29780942C(v53, v25);
            sub_297811B30(&v49, v26);
            if (sub_297806914(&v49))
            {
              break;
            }

            v27 = v25 + 1;
            do
            {
              v25 = v27;
              v28 = v27;
              if (sub_297811B28() <= v27)
              {
                break;
              }

              v27 = v25 + 1;
            }

            while ((v50[v28] & 1) != 0);
          }

          while (sub_2978094B8(v53) > v28);
        }

        if (!sub_297806914(&v49))
        {
          sub_297803F88(v53, &v49);
        }

        v29 = v16 + 1;
        do
        {
          v16 = v29;
          if (sub_297811B28() <= v29)
          {
            break;
          }

          v29 = v16 + 1;
        }

        while ((v50[v16] & 1) != 0);
      }
    }

    else
    {
      sub_2977FB7B4(&v49, &byte_2978FC3E5);
      v21 = sub_29780942C(v53, v16);
      sub_297811B30(&v49, v21);
      if (!sub_297806914(&v49))
      {
        v22 = v14;
        do
        {
          if (sub_297811B28() > v22)
          {
            v23 = v22;
            while (v50[v23] == 1)
            {
              v23 = ++v22;
              if (sub_297811B28() <= v22)
              {
                goto LABEL_50;
              }
            }
          }

          LODWORD(v23) = v22;
LABEL_50:
          v24 = sub_29780942C(v53, v23);
          sub_297811B30(&v49, v24);
          v22 = v23 + 1;
        }

        while (!sub_297806914(&v49));
      }
    }

    v50[v13] = 1;
LABEL_67:
    v13 = ++v14;
  }

  while (sub_297811B28() != v14);
LABEL_68:
  if (v12 == 12)
  {
    sub_297811B4C(v53, 4u);
    sub_2977FB7B4(&v51, "windows");
    v30 = sub_29780942C(v53, 2u);
    *v30 = v51;
    v31 = v47;
    v32 = v48;
    if (!v10)
    {
      if (v11 <= 1)
      {
        sub_2977FB7B4(&v51, "msvc");
        v33 = 3;
        goto LABEL_87;
      }

      v35 = sub_297811C34(v11);
LABEL_77:
      sub_2977FB7B4(&v51, v35);
      v37 = sub_29780942C(v53, 3u);
      *v37 = v51;
      v32 = v48;
    }
  }

  else
  {
    v31 = v47;
    if (v9)
    {
      sub_297811B4C(v53, 4u);
      sub_2977FB7B4(&v51, "windows");
      v34 = sub_29780942C(v53, 2u);
      *v34 = v51;
      v35 = "gnu";
      goto LABEL_77;
    }

    v32 = v48;
    if (v48)
    {
      sub_297811B4C(v53, 4u);
      sub_2977FB7B4(&v51, "windows");
      v36 = sub_29780942C(v53, 2u);
      *v36 = v51;
      v35 = "cygnus";
      goto LABEL_77;
    }
  }

  v38 = v9 || v32;
  v40 = v12 == 12 && v10 != 0;
  if (((v38 | v40) & 1) != 0 && v11 >= 2)
  {
    sub_297811B4C(v53, 5u);
    v41 = sub_297811C34(v11);
    sub_2977FB7B4(&v51, v41);
    v33 = 4;
LABEL_87:
    v42 = sub_29780942C(v53, v33);
    *v42 = v51;
  }

  sub_297802744(v31);
  v43 = sub_2978094B8(v53);
  if (v43)
  {
    for (i = 0; i != v43; ++i)
    {
      if (i)
      {
        sub_297804334(v31, 45);
      }

      v45 = sub_29780942C(v53, i);
      sub_29780435C(v31, *v45, v45[1]);
    }
  }

  return sub_2977FD134(v53);
}

__n128 sub_297811B30(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a1 = *a2;
  *a2 = result;
  return result;
}

unint64_t sub_297811B4C(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  if (sub_2978094B8(a1) <= a2)
  {
    result = sub_2978094B8(a1);
    if (result >= v3)
    {
      return result;
    }

    if (sub_297809610(a1) < v3)
    {
      sub_297804120(a1, v3);
    }

    v6 = sub_2977FB7B8(a1);
    v7 = sub_2977FB720(a1) + 16 * v3;
    while (v6 != v7)
    {
      sub_297804560(v6);
      v6 += 16;
    }
  }

  else
  {
    sub_2977FB720(a1);
    sub_2977FB7B8(a1);
    nullsub_1();
  }

  v4 = sub_2977FB720(a1) + 16 * v3;

  return sub_2977FD5DC(a1, v4);
}

uint64_t sub_297811C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = sub_2977FB720(v7);
  v5 = sub_2977FB728(v7);
  sub_29781295C(a1, v4, v5);
  return a1;
}

uint64_t sub_297811CC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v2 = a2;
  }

  return *v2;
}

uint64_t sub_297811CD4(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, uint64_t a6)
{
  v10 = sub_29781049C(a1, a2, a6);
  v11 = sub_29781049C(v10, a3, a6);
  v12 = sub_29781049C(v11, a4, a6);

  return sub_29781049C(v12, a5, a6);
}

uint64_t sub_297811D40(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  v8 = sub_29781049C(a1, a2, a5);
  v9 = sub_29781049C(v8, a3, a5);

  return sub_29781049C(v9, a4, a5);
}

uint64_t sub_297811D9C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v8 = sub_2978103B4(a1, a2, a5);
  v9 = sub_297810504(v8, a3, a5);

  return sub_2978102CC(v9, a4, a5);
}

uint64_t sub_297811DF8(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v6 = sub_297812160(a1, a2, a4);

  return sub_297810428(v6, a3, a4);
}

uint64_t sub_297811E3C(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 11)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 3) == *(v6 + 3))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297811EB0(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_297810428(a1, a2, a4);

  return sub_297810504(v6, a3, a4);
}

uint64_t sub_297811EF4(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) >= 4 && *a2 == *sub_2977FB720(a1))
  {
    *(a1 + 16) = a3;
  }

  return a1;
}

uint64_t sub_297811F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) >= 6)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 4) == *(v6 + 4))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297811FD0(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) >= 8 && *a2 == *sub_2977FB720(a1))
  {
    *(a1 + 16) = a3;
  }

  return a1;
}

uint64_t sub_297812038(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_29781049C(a1, a2, a5);
  v9 = sub_297810504(v8, a3, a5);

  return sub_2978121D4(v9, a4, a5);
}

uint64_t sub_297812094(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_297810504(a1, a2, a4);

  return sub_297812248(v6, a3, a4);
}

uint64_t sub_2978120D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_297810504(a1, a2, a4);

  return sub_297810578(v6, a3, a4);
}

uint64_t sub_29781211C(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v6 = sub_2978102CC(a1, a2, a4);

  return sub_2978102CC(v6, a3, a4);
}

uint64_t sub_297812160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 9)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 8) == *(v6 + 8))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_2978121D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 12)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 8) == *(v6 + 8))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297812248(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 14)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 6) == *(v6 + 6))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_2978122BC(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) >= 2)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *(v6 + sub_2977FB7B8(a1) - 2))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297812334(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) >= 3)
  {
    v6 = sub_2977FB720(a1);
    v7 = sub_2977FB7B8(a1);
    if (*a2 == *(v6 + v7 - 3) && *(a2 + 2) == *(v6 + v7 - 1))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_2978123B8(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) >= 4)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *(v6 + sub_2977FB7B8(a1) - 4))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

void *sub_297812430(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  return result;
}

uint64_t sub_29781243C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 2 && *a2 == *sub_2977FB720(a1))
  {
    *(a1 + 16) = a3;
  }

  return a1;
}

uint64_t sub_2978124A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) >= 9)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 8) == *(v6 + 8))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297812518(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) >= 7)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 3) == *(v6 + 3))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_29781258C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) >= 3)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 2) == *(v6 + 2))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297812600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) >= 5)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 4) == *(v6 + 4))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297812674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) >= 5)
  {
    v6 = sub_2977FB720(a1);
    v7 = sub_2977FB7B8(a1);
    if (*a2 == *(v6 + v7 - 5) && *(a2 + 4) == *(v6 + v7 - 1))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

BOOL sub_2978126F8(uint64_t a1)
{
  if (sub_297812794(a1))
  {
    return 1;
  }

  return sub_2978127D0(a1);
}

BOOL sub_297812744(uint64_t a1)
{
  if (sub_297811C44(a1) == 12)
  {
    return 1;
  }

  return sub_297812840(a1);
}

uint64_t sub_297812794(uint64_t a1)
{
  result = sub_297811C44(a1);
  if (result != 1)
  {
    return sub_297811C44(a1) == 8;
  }

  return result;
}

BOOL sub_2978127D0(uint64_t a1)
{
  if (sub_297811C44(a1) == 4)
  {
    return 1;
  }

  return sub_297812820(a1);
}

BOOL sub_297812840(uint64_t a1)
{
  if (sub_29781288C(a1))
  {
    return 1;
  }

  return sub_2978128D0(a1);
}

uint64_t sub_297812918(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 16) = 773;
  *result = a2;
  *(result + 8) = a3;
  return result;
}

__n128 sub_297812928(std::string *a1, uint64_t a2)
{
  v3 = std::string::basic_string(a1, a2);
  result = *(a2 + 24);
  v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  *&v3[1].__r_.__value_.__l.__data_ = result;
  return result;
}

std::string *sub_297812960@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (__PAIR64__(*(a1 + 17), *(a1 + 16)) == 0x100000004)
  {
    v4 = *a1;

    return std::string::basic_string(a2, v4);
  }

  else
  {
    sub_297804E28(v8);
    v7[0] = sub_297812A04(a1, v8);
    v7[1] = v6;
    sub_297802728(v7, a2);
    return sub_297801F60(v8);
  }
}

uint64_t sub_297812A04(uint64_t *a1, uint64_t a2)
{
  if (sub_297812B28(a1))
  {
    return sub_297812B78(a1);
  }

  sub_297812A78(a1, a2);
  v5 = sub_297803A7C(a2);
  v6 = sub_2977FD0D4(a2);
  sub_2977FB7C0(&v7, v5, v6);
  return v7;
}

uint64_t sub_297812A78(unint64_t **a1, uint64_t a2)
{
  sub_29781F238(v4, a2);
  sub_297812ABC(a1, v4);
  return sub_29781F290(v4);
}

void **sub_297812ABC(unint64_t **a1, void **a2)
{
  v4 = *a1;
  v5 = sub_297807D1C(a1);
  sub_297812CBC(v5, a2, v4, v5);
  v6 = a1[1];
  v7 = sub_297808130(a1);

  return sub_297812CBC(v7, a2, v6, v7);
}

uint64_t sub_297812B28(uint64_t a1)
{
  if (sub_297808130(a1) == 1)
  {
    v2 = sub_297807D1C(a1);
    v3 = 0x3Au >> v2;
    if (v2 > 5)
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t sub_297812B78(uint64_t *a1)
{
  v2 = sub_297807D1C(a1);
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      sub_2978044E8(&v4, *a1);
    }

    else
    {
      return **a1;
    }
  }

  else if (v2 == 1)
  {
    sub_297804560(&v4);
  }

  else
  {
    sub_2977FB7B4(&v4, *a1);
  }

  return v4;
}

uint64_t sub_297812BF8(char **a1, uint64_t a2)
{
  if (!sub_2978080DC(a1))
  {
    goto LABEL_5;
  }

  v4 = sub_297807D1C(a1);
  if (v4 == 4)
  {
    v8 = *a1;
    v5 = sub_2978037C8();
    v6 = sub_2978032A4(v8);
    goto LABEL_6;
  }

  if (v4 != 3)
  {
LABEL_5:
    sub_297812A78(a1, a2);
    v9 = 0;
    sub_2977FCD50(a2, &v9);
    sub_297806E8C(a2);
    v5 = sub_297803A7C(a2);
    v6 = sub_2977FD0D4(a2);
LABEL_6:
    sub_2977FB7C0(&v10, v5, v6);
    return v10;
  }

  sub_2977FB7B4(&v10, *a1);
  return v10;
}

void **sub_297812CBC(uint64_t a1, void **a2, unint64_t *a3, int a4)
{
  if (a4 > 7)
  {
    if (a4 > 10)
    {
      switch(a4)
      {
        case 11:
          return sub_29781E460(a2, *a3);
        case 12:
          return sub_29781E464(a2, *a3);
        case 13:
          return sub_29781E4B4(a2, *a3);
      }
    }

    else if (a4 == 8)
    {
      return sub_29780BBD0(a2, a3);
    }

    else if (a4 == 9)
    {
      return sub_29781E1EC(a2, *a3);
    }

    else
    {
      return sub_29781E410(a2, *a3);
    }
  }

  else if (a4 > 4)
  {
    if (a4 == 5)
    {
      return sub_297801FA8(a2, *a3, a3[1]);
    }

    else if (a4 == 6)
    {
      return sub_2978028D8(a2, a3);
    }

    else
    {
      return sub_297801FA0(a2, a3);
    }
  }

  else
  {
    switch(a4)
    {
      case 2:
        return sub_297812ABC(a3, a2);
      case 3:
        return sub_297801F64(a2, a3);
      case 4:
        return sub_29780BB74(a2, a3);
    }
  }

  return result;
}

uint64_t sub_297812DE0(uint64_t a1)
{
  v1 = a1;
  v2 = off_2A1A90108();
  v3 = *v2;
  if (!*v2)
  {
    v4 = v2;
    v3 = sub_2977FA198();
    sub_297812E7C(v6, &unk_2978F4F78);
    sub_2977FB7C0(v3, v6[0], v6[1]);
    *v4 = v3;
  }

  if (HIWORD(v1) > 0x10u)
  {
    return 0;
  }

  else
  {
    return sub_297812E80(v3, v1) ^ 1;
  }
}

uint64_t sub_297812E80(void *a1, int a2)
{
  v6 = a2;
  v3 = sub_2977FB720(a1);
  v4 = sub_2978130B8(a1);
  return sub_2978130B4(v3, v4, &v6);
}

uint64_t sub_297812ECC(uint64_t a1, uint64_t a2)
{
  v15[0] = a1;
  v15[1] = a2;
  v2 = sub_2977FB7B8(v15);
  v3 = 0;
  v4 = 0;
  while (v3 < v2)
  {
    v5 = sub_297803A20(v15, v3);
    v6 = sub_297802B4C(v5);
    if (!v6)
    {
      return 4294967294;
    }

    v7 = v6;
    v8 = v3 + v6;
    if (v8 > sub_2977FB7B8(v15))
    {
      return 4294967294;
    }

    v9 = sub_2977FB720(v15);
    v12 = &v14;
    v13 = (v9 + v3);
    if (sub_297802F84(&v13, (v9 + v3 + v7), &v12, v15, 0))
    {
      return 4294967294;
    }

    v10 = sub_297812FA8(v14);
    v4 = (v10 + v4);
    v3 = v8;
    if (v10 < 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t sub_297812FA8(uint64_t a1)
{
  v1 = a1;
  if (!sub_297812DE0(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = off_2A1A90120();
  v3 = *v2;
  if (!*v2)
  {
    v4 = v2;
    v3 = sub_2977FA198();
    sub_2978132E4(&v9, &unk_2978F6098);
    sub_2977FB7C0(v3, v9, v10);
    *v4 = v3;
  }

  if (sub_297812E80(v3, v1))
  {
    return 0;
  }

  v6 = off_2A1A90138();
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = sub_2977FA198();
    sub_2978132E8(&v9, &unk_2978F6768);
    sub_2977FB7C0(v7, v9, v10);
    *v8 = v7;
  }

  if (sub_297812E80(v7, v1))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void *sub_2978130A8(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 548;
  return result;
}

uint64_t sub_297813150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2978131AC(a1, a2);

  return sub_2978131B0(a1, a3, v9, a4, a5);
}

uint64_t sub_2978131B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = a3;
    do
    {
      v10 = sub_297813258(v8);
      v14 = a1;
      sub_297813260(&v14, v10);
      v11 = sub_297813268(a5, v14);
      v12 = sub_297813264(a4, v11, a2);
      if (v12)
      {
        v8 += ~v10;
      }

      else
      {
        v8 = v10;
      }

      if (v12)
      {
        a1 = v14 + 8;
      }
    }

    while (v8);
  }

  return a1;
}

void *sub_29781326C(void *a1)
{
  nullsub_1();

  return sub_2978132AC(a1, v2);
}

void *sub_2978132EC(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 218;
  return result;
}

void *sub_2978132F8(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 15;
  return result;
}

void sub_297813328(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_297813790(a1);
  v5 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = *(v4 + 32);
  if (!sub_297813870(a1 + 56))
  {
    sub_297813F38(a1 + 56);
  }

  if (sub_297813870(a1 + 56))
  {

    sub_297813F74((a1 + 96));
  }
}

uint64_t sub_2978133A4(uint64_t a1, uint64_t a2)
{
  v16[0] = a1;
  v16[1] = a2;
  v2 = sub_2977FB720(v16);
  v3 = sub_2977FB728(v16);
  v4 = *v2;
  if (*v2 < 0)
  {
    v5 = v2 + 1;
    if (v2 + 1 != v3 && (v4 & 0xE0) == 0xC0 && (*v5 & 0xC0) == 0x80 && (HIDWORD(v14) = *v5 & 0x3F | ((v4 & 0x1F) << 6), (v4 & 0x1Fu) >= 2))
    {
      v13 = 2;
    }

    else
    {
      v6 = v2 + 2;
      if (v2 + 2 != v3 && (v4 & 0xF0) == 0xE0 && (*v5 & 0xC0) == 0x80 && (*v6 & 0xC0) == 0x80 && (v7 = ((v4 & 0xF) << 12) | ((*v5 & 0x3F) << 6), HIDWORD(v14) = v7 | *v6 & 0x3F, v7 >= 0x800) && ((v4 & 0xFu) > 0xD || v7 >> 11 <= 0x1A))
      {
        v13 = 3;
      }

      else
      {
        if (v2 + 3 == v3 || (v4 & 0xF8) != 0xF0 || (v8 = *v5, (v8 & 0xC0) != 0x80) || (v9 = *v6, (v9 & 0xC0) != 0x80) || (v10 = v2[3], (v10 & 0xC0) != 0x80) || (v11 = ((v4 & 7) << 18) | ((v8 & 0x3F) << 12), HIDWORD(v14) = v10 & 0x3F | ((v9 & 0x3F) << 6) | v11, (v11 - 1114112) < 0xFFF00000))
        {
          v14 = 0;
          v15 = sub_2978182B8(&v14 + 4, &v14);
          sub_2978182E8(&v17, &v15);
          return v17;
        }

        v13 = 4;
      }
    }

    LODWORD(v14) = v13;
    v15 = sub_2978182B8(&v14 + 4, &v14);
    sub_2978182E8(&v17, &v15);
    return v17;
  }

  HIDWORD(v14) = 1;
  v15 = sub_297818284(v2, &v14 + 4);
  sub_2978182B4(&v17, &v15);
  return v17;
}

uint64_t sub_297813588(uint64_t result, uint64_t a2)
{
  if (result > 0x7F)
  {
    if (result > 0x7FF)
    {
      if (WORD1(result))
      {
        if (WORD1(result) > 0x10u)
        {
          return result;
        }

        v7 = (result >> 12) & 0x3F | 0x80;
        v8 = (result >> 6) & 0x3F | 0x80;
        v9 = result & 0x3F | 0x80;
        v13 = (result >> 18) | 0xF0;
        sub_2977FCD50(a2, &v13);
        v12 = v7;
        sub_2977FCD50(a2, &v12);
        v11 = v8;
        sub_2977FCD50(a2, &v11);
        v10 = v9;
        v3 = &v10;
      }

      else
      {
        v5 = (result >> 6) & 0x3F | 0x80;
        v6 = result & 0x3F | 0x80;
        v16 = (result >> 12) | 0xE0;
        sub_2977FCD50(a2, &v16);
        v15 = v5;
        sub_2977FCD50(a2, &v15);
        v14 = v6;
        v3 = &v14;
      }
    }

    else
    {
      v4 = result & 0x3F | 0x80;
      v18 = (result >> 6) | 0xC0;
      sub_2977FCD50(a2, &v18);
      v17 = v4;
      v3 = &v17;
    }
  }

  else
  {
    v19 = result;
    v3 = &v19;
  }

  return sub_2977FCD50(a2, v3);
}

uint64_t sub_2978136B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;
  *(a1 + 32) = xmmword_2978F67E0;
  *(a1 + 48) = 257;
  *(a1 + 50) = 0;
  sub_297813784(a1 + 56);
  sub_297813788(a1 + 240);
  sub_29781378C(a1 + 280);
  sub_2977FB7B4(v10, "YAML");
  v7 = sub_297804A04(a2, a3, v10[0], v10[1], 1);
  *(a1 + 8) = v7;
  v8 = *a1;
  sub_29780AE44(v10);
  sub_29780A9E4(v8, v7, v10[0]);
  *(a1 + 16) = sub_2977FB7B8(*(a1 + 8));
  *(a1 + 24) = sub_2977FD5B0(*(a1 + 8));
  return a1;
}

uint64_t sub_297813790(uint64_t a1)
{
  for (i = 0; ; i = 1)
  {
    v3 = sub_297813870(a1 + 56);
    if (((i & 1) != 0 || v3) && (sub_2978138A8(a1) & 1) == 0)
    {
      break;
    }

    sub_297813E24(a1);
    sub_297813EF8(v9);
    sub_297813E1C(a1 + 56);
    sub_2977FDEF4();
    v9[0] = v8;
    v4 = sub_2977FB720(a1 + 280);
    v5 = sub_2977FB7B8(a1 + 280);
    v6 = sub_297813EFC(v4, v5, v9);
    if (v6 == sub_2977FB7B8(a1 + 280))
    {
      return sub_297813E1C(a1 + 56);
    }
  }

  sub_297813D7C(a1 + 56);
  sub_297813E18(v9);
  sub_297813DD4(a1 + 56, v9);
  return sub_297813E1C(a1 + 56);
}

BOOL sub_297813870(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (!v1)
  {
    return 1;
  }

  sub_297818118();
  return v1 == v2;
}

uint64_t sub_2978138A8(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    sub_297814928(a1);
    return 1;
  }

  sub_297814868(a1);
  if (*(a1 + 16) == *(a1 + 24))
  {
    sub_297814C84(a1);
    return 1;
  }

  sub_297813E24(a1);
  sub_2978146B4(a1, *(a1 + 36));
  v2 = *(a1 + 16);
  v3 = *v2;
  if (*(a1 + 36))
  {
    goto LABEL_5;
  }

  if (v3 == 37)
  {

    return sub_297814D1C(a1);
  }

  if ((v2 + 4) > *(a1 + 24))
  {
LABEL_5:
    if (*v2 <= 0x39u)
    {
      if (*v2 <= 0x26u)
      {
        if (v3 == 33)
        {
          goto LABEL_56;
        }

        if (v3 == 34)
        {
LABEL_55:
          v8 = a1;
          v9 = 1;
LABEL_73:

          return sub_297815564(v8, v9);
        }

        if (v3 != 38)
        {
          goto LABEL_82;
        }

LABEL_37:
        v6 = a1;
        v7 = 0;
        goto LABEL_38;
      }

      if (*v2 <= 0x2Bu)
      {
        if (v3 == 39)
        {
LABEL_72:
          v8 = a1;
          v9 = 0;
          goto LABEL_73;
        }

        if (v3 != 42)
        {
          goto LABEL_82;
        }

        goto LABEL_22;
      }

      if (v3 == 44)
      {
        goto LABEL_69;
      }

      if (v3 != 45)
      {
        goto LABEL_82;
      }

LABEL_53:
      if (sub_29781442C(a1, v2 + 1))
      {
        sub_29781517C(a1);
        return 1;
      }

      goto LABEL_82;
    }
  }

  else if (*v2 <= 0x39u)
  {
    if (*v2 <= 0x29u)
    {
      if (*v2 <= 0x25u)
      {
        if (v3 != 33)
        {
          if (v3 != 34)
          {
            goto LABEL_82;
          }

          goto LABEL_55;
        }

LABEL_56:

        return sub_297815CD4(a1);
      }

      if (v3 != 38)
      {
        if (v3 != 39)
        {
          goto LABEL_82;
        }

        goto LABEL_72;
      }

      goto LABEL_37;
    }

    if (*v2 <= 0x2Cu)
    {
      if (v3 != 42)
      {
        if (v3 != 44)
        {
          goto LABEL_82;
        }

LABEL_69:
        sub_297815100(a1);
        return 1;
      }

LABEL_22:
      v6 = a1;
      v7 = 1;
LABEL_38:

      return sub_297815A64(v6, v7);
    }

    if (v3 != 45)
    {
      if (v3 == 46 && v2[1] == 46 && v2[2] == 46 && sub_29781442C(a1, v2 + 3))
      {
        sub_297814EF8(a1, 0);
        return 1;
      }

      goto LABEL_82;
    }

    if (v2[1] == 45 && v2[2] == 45 && sub_29781442C(a1, v2 + 3))
    {
      v4 = 1;
      sub_297814EF8(a1, 1);
      return v4;
    }

    goto LABEL_53;
  }

  if (*v2 > 0x5Cu)
  {
    if (*v2 > 0x7Bu)
    {
      if (v3 == 124)
      {
        goto LABEL_47;
      }

      if (v3 == 125)
      {
        sub_297815068(a1, 0);
        return 1;
      }
    }

    else
    {
      if (v3 == 93)
      {
        v4 = 1;
        sub_297815068(a1, 1);
        return v4;
      }

      if (v3 == 123)
      {
        sub_297814F84(a1, 0);
        return 1;
      }
    }

LABEL_82:
    sub_2977FB7C0(v13, v2, 1);
    v10 = *(a1 + 16);
    if ((sub_29781442C(a1, v10) & 1) == 0)
    {
      if (sub_29780F7E0(v13, v12[0], v12[1], 0) == -1)
      {
        return sub_297815790(a1);
      }

      v10 = *(a1 + 16);
    }

    v11 = *v10;
    if (v11 != 45 || sub_29781442C(a1, v10 + 1)) && (*(a1 + 44) || v11 != 63 && v11 != 58 || (sub_29781442C(a1, v10 + 1) & 1) == 0 && (v11 != 58 || (v10 + 2) >= *(a1 + 24) || v10[1] != 58 || (sub_29781442C(a1, v10 + 2))))
    {
      sub_2978036E0(v12, "Unrecognized character while tokenizing.");
      sub_297815DF8(a1, v12);
      return 0;
    }

    return sub_297815790(a1);
  }

  if (*v2 > 0x3Eu)
  {
    if (v3 == 63)
    {
      if (*(a1 + 44) || sub_29781442C(a1, v2 + 1))
      {
        sub_297815260(a1);
        return 1;
      }
    }

    else if (v3 == 91)
    {
      v4 = 1;
      sub_297814F84(a1, 1);
      return v4;
    }

    goto LABEL_82;
  }

  if (v3 == 58)
  {
    if (*(a1 + 44) || sub_29781442C(a1, v2 + 1))
    {
      sub_297815310(a1);
      return 1;
    }

    goto LABEL_82;
  }

  if (v3 != 62)
  {
    goto LABEL_82;
  }

LABEL_47:
  if (*(a1 + 44))
  {
    goto LABEL_82;
  }

  return sub_297815BC8(a1);
}

uint64_t sub_297813D7C(uint64_t result)
{
  if (*(result + 176))
  {
    v1 = result;
    v2 = sub_2978154D0(result);
    v3 = sub_29781521C(v1);

    return sub_297818DF4(v1, v2, v3);
  }

  return result;
}

uint64_t sub_297813DD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29781521C(a1);

  return sub_29781481C(a1, v4, a2);
}

uint64_t sub_297813E24(uint64_t a1)
{
  v2 = sub_2977FB720(a1 + 280);
  for (result = sub_2977FB7B8(a1 + 280); v2 != result; result = sub_2977FB7B8(a1 + 280))
  {
    if (*(v2 + 12) == *(a1 + 40) && (*(v2 + 8) + 1024) >= *(a1 + 36))
    {
      v2 += 24;
    }

    else
    {
      if (*(v2 + 20) == 1)
      {
        sub_2978036E0(v5, "Could not find expected : for simple key");
        v4 = sub_297803A7C(v2);
        sub_2977FB720(v4 + 24);
        sub_297814548(a1, v5);
      }

      sub_2978145D0(a1 + 280, v2);
    }
  }

  return result;
}

uint64_t sub_297813EFC(void *a1, void *a2, void *a3)
{
  v4 = sub_297818F50(a1, a2, a3);

  return sub_297813268(a1, v4);
}

uint64_t sub_297813F38(uint64_t a1)
{
  v2 = sub_2978154D0(a1);

  return sub_297818E54(a1, v2);
}

void sub_297813F74(void *a1)
{
  if (!sub_297806904(a1 + 2))
  {
    a1[15] = 0;
    v2 = sub_297803A7C((a1 + 2));
    v3 = *v2 + 4096;
    *a1 = *v2;
    a1[1] = v3;
    v4 = sub_2977FB720((a1 + 2));
    sub_297818FAC(v4);
    v6 = v5;
    v7 = sub_2977FB7B8((a1 + 2));
    sub_2978181B8(a1, v6, v7);
    v8 = sub_2977FB720((a1 + 2));
    sub_297818FAC(v8);
    v10 = v9;
    v11 = sub_2977FB7B8((a1 + 2));
    sub_297818FD8((a1 + 2), v10, v11);
    sub_297818220(a1);

    sub_2977FD800(a1 + 9);
  }
}

unsigned __int8 *sub_297814038(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 24) == a2)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 == 9 || (v3 - 127) >= 0xFFFFFFA1)
  {
    return a2 + 1;
  }

  if ((v3 & 0x80) == 0)
  {
    return a2;
  }

  v5 = sub_2978140F4(a1, a2);
  if (!HIDWORD(v5))
  {
    return a2;
  }

  v6 = v5;
  if (v5 == 65279)
  {
    return a2;
  }

  result = &a2[HIDWORD(v5)];
  if ((v6 - 1114112) >> 20 != 4095 && (v6 - 65534) <= 0xFFFFE001 && v6 != 133 && (v6 - 55296) <= 0xFFFF289F)
  {
    return a2;
  }

  return result;
}

unsigned __int8 *sub_297814128(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 24);
  if (v2 != a2)
  {
    v3 = *a2;
    if (v3 == 10)
    {
      ++a2;
    }

    else if (v3 == 13)
    {
      if (a2 + 1 == v2)
      {
        ++a2;
      }

      else if (a2[1] == 10)
      {
        a2 += 2;
      }

      else
      {
        ++a2;
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_29781417C(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 24) != a2)
  {
    v2 = *a2;
    if (v2 == 32 || v2 == 9)
    {
      ++a2;
    }
  }

  return a2;
}

unsigned __int8 *sub_2978141A0(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 24) == a2)
  {
    return a2;
  }

  v2 = *a2;
  if (v2 == 9 || v2 == 32)
  {
    return a2;
  }

  else
  {
    return sub_297814038(a1, a2);
  }
}

uint64_t sub_2978141CC(uint64_t a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = (a1 + (a3 >> 1));
  v8 = a2;
  do
  {
    if (v5)
    {
      result = (*(*v7 + v8))(v7, a4);
    }

    else
    {
      result = a2(v7, a4);
    }

    v10 = result == a4;
    a4 = result;
  }

  while (!v10);
  return result;
}

uint64_t sub_297814240(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  if (v1 != *(a1 + 24))
  {
    v2 = *(a1 + 24);
    v4 = *(a1 + 16);
    do
    {
      v5 = *v4;
      v6 = (v4 + 2);
      v7 = v5 != 37 || v6 >= v2;
      if (v7 || (v9 = sub_297814350(v4[1]), !v9 || !sub_297814350(*v6)))
      {
        if (!sub_29781437C(v5))
        {
          sub_2977FB7C0(v12, v4, 1);
          sub_2977FB7B4(v11, "#;/?:@&=+$,_.!~*'()[]");
          v8 = sub_29780F7E0(v12, v11[0], v11[1], 0);
          v4 = *(a1 + 16);
          if (v8 == -1)
          {
            v2 = *(a1 + 16);
            break;
          }

          v2 = *(a1 + 24);
        }
      }

      *(a1 + 16) = ++v4;
      ++*(a1 + 36);
    }

    while (v4 != v2);
  }

  sub_2977FB7C0(&v13, v1, &v2[-v1]);
  return v13;
}

BOOL sub_29781437C(int a1)
{
  v1 = a1 - 65 < 0x1A;
  if (a1 - 97 < 0x1A)
  {
    v1 = 1;
  }

  return a1 == 45 || v1;
}

uint64_t sub_2978143A8(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x80)
  {
    goto LABEL_8;
  }

  v2 = *(a1 + 16);
  if (v2 == *(a1 + 24))
  {
    return 0;
  }

  v3 = *v2;
  if (v3 < 0)
  {
LABEL_8:
    sub_2978035B4("Not dealing with this yet", 1);
  }

  if (v3 == a2)
  {
    *(a1 + 16) = v2 + 1;
    ++*(a1 + 36);
    return 1;
  }

  return 0;
}

uint64_t sub_297814410(uint64_t result, unsigned int a2)
{
  *(result + 16) += a2;
  *(result + 36) += a2;
  return result;
}

unint64_t sub_29781442C(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 24) == a2)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v2 = *a2;
    v3 = v2 > 0x20;
    v4 = 0x100002600uLL >> v2;
    if (v3)
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4 & 1;
}

uint64_t sub_297814460(uint64_t result, uint64_t a2, int a3, char a4)
{
  if (*(result + 49) == 1)
  {
    v14 = v4;
    v15 = v5;
    v9 = result;
    sub_297813EF8(&v10);
    v10 = a2;
    v11 = a3;
    v13 = a4;
    v12 = *(v9 + 40);
    return sub_2978144D4(v9 + 280, &v10);
  }

  return result;
}

uint64_t sub_2978144D4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) >= *(a1 + 16))
  {
    sub_297819170(a1);
  }

  v4 = sub_2977FB7B8(a1);
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  v6 = sub_2977FB7B8(a1) + 24;

  return sub_2977FD5DC(a1, v6);
}

unint64_t sub_297814548(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  v5 = *(a1 + 24);
  if (result >= v5)
  {
    result = v5 - 1;
    *(a1 + 16) = v5 - 1;
  }

  if ((*(a1 + 50) & 1) == 0)
  {
    v6 = sub_29780ACAC(result);
    sub_297804560(v7);
    result = sub_297815F9C(a1, v6, 0, a2, v7[0], v7[1]);
  }

  *(a1 + 50) = 1;
  return result;
}

uint64_t sub_2978145D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FB7B8(a1);
  sub_297819184(a2 + 24, v4, a2);
  sub_297814678(a1);
  return a2;
}

uint64_t sub_297814614(uint64_t a1, int a2)
{
  result = sub_297806904((a1 + 280));
  if ((result & 1) == 0)
  {
    result = sub_2977FB7B8(a1 + 280);
    if (*(result - 8) == a2)
    {

      return sub_297814678(a1 + 280);
    }
  }

  return result;
}

uint64_t sub_297814678(uint64_t a1)
{
  v2 = sub_2977FB7B8(a1) - 24;

  return sub_2977FD5DC(a1, v2);
}

uint64_t sub_2978146B4(uint64_t a1, int a2)
{
  sub_297813E18(v7);
  if (!*(a1 + 44) && *(a1 + 32) > a2)
  {
    do
    {
      v8 = 8;
      sub_2977FB7C0(&v6, *(a1 + 16), 1);
      v9 = v6;
      sub_297813DD4(a1 + 56, v7);
      v4 = sub_29781474C(a1 + 240);
      *(a1 + 32) = v4;
    }

    while (v4 > a2);
  }

  return 1;
}

uint64_t sub_29781474C(uint64_t a1)
{
  v2 = *sub_2978192CC(a1);
  sub_2978192E8(a1);
  return v2;
}

uint64_t sub_297814780(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (!*(a1 + 44) && *(a1 + 32) < a2)
  {
    sub_297803988(a1 + 240, (a1 + 32));
    *(a1 + 32) = a2;
    sub_297813E18(v10);
    v11 = a3;
    sub_2977FB7C0(&v9, *(a1 + 16), 0);
    v12 = v9;
    sub_29781481C(a1 + 56, a4, v10);
  }

  return 1;
}

uint64_t sub_29781481C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2978193D0(a1 + 40, a3);

  return sub_297819324(a1, a2, v5);
}

unsigned __int8 *sub_297814868(uint64_t a1)
{
  while (1)
  {
    while (1)
    {
      v2 = *(a1 + 16);
      v3 = *v2;
      if (v3 != 9 && v3 != 32)
      {
        break;
      }

      sub_297814410(a1, 1u);
    }

    if (v3 == 35)
    {
      v4 = a1;
      v5 = *(a1 + 16);
      while (1)
      {
        v6 = sub_297814038(v4, v5);
        v5 = v6;
        v2 = *(a1 + 16);
        if (v6 == v2)
        {
          break;
        }

        *(a1 + 16) = v6;
        ++*(a1 + 36);
        v4 = a1;
      }
    }

    result = sub_297814128(a1, v2);
    if (result == v2)
    {
      break;
    }

    *(a1 + 16) = result;
    v8 = *(a1 + 44);
    v9 = *(a1 + 40) + 1;
    *(a1 + 36) = 0;
    *(a1 + 40) = v9;
    if (!v8)
    {
      *(a1 + 49) = 1;
    }
  }

  return result;
}

uint64_t sub_297814928(uint64_t a1)
{
  *(a1 + 48) = 0;
  v2 = sub_297814C54(a1);
  v4 = sub_2978149B0(v2, v3) >> 32;
  sub_297813E18(v7);
  v8 = 1;
  sub_2977FB7C0(&v6, *(a1 + 16), v4);
  v9 = v6;
  sub_297813DD4(a1 + 56, v7);
  *(a1 + 16) += v4;
  return 1;
}

uint64_t sub_2978149B0(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  if (!sub_2977FB7B8(v10))
  {
    goto LABEL_36;
  }

  v2 = sub_297803A20(v10, 0);
  v3 = sub_2977FB7B8(v10);
  if (v2 <= 0xFDu)
  {
    if (v2)
    {
      if (v2 == 239)
      {
        if (v3 >= 3 && sub_297803A20(v10, 1) == -69 && sub_297803A20(v10, 2) == -65)
        {
          v8 = 4;
          v4 = 3;
LABEL_47:
          v7 = v4;
          goto LABEL_39;
        }

        goto LABEL_36;
      }

      goto LABEL_18;
    }

    if (v3 < 4)
    {
      goto LABEL_31;
    }

    if (sub_297803A20(v10, 1) || sub_297803A20(v10, 2) != -2 || sub_297803A20(v10, 3) != -1)
    {
      if (!sub_297803A20(v10, 1) && !sub_297803A20(v10, 2) && sub_297803A20(v10, 3))
      {
        v5 = 1;
        goto LABEL_37;
      }

LABEL_31:
      if (sub_2977FB7B8(v10) >= 2 && sub_297803A20(v10, 1))
      {
        v5 = 3;
        goto LABEL_37;
      }

LABEL_36:
      v5 = 5;
      goto LABEL_37;
    }

    v8 = 1;
LABEL_46:
    v4 = 4;
    goto LABEL_47;
  }

  if (v2 == 254)
  {
    if (v3 >= 2 && sub_297803A20(v10, 1) == -1)
    {
      v8 = 3;
      v4 = 2;
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  if (v2 == 255)
  {
    if (v3 < 4 || sub_297803A20(v10, 1) != -2 || sub_297803A20(v10, 2) || sub_297803A20(v10, 3))
    {
      if (sub_2977FB7B8(v10) >= 2 && sub_297803A20(v10, 1) == -2)
      {
        v4 = 2;
        v8 = 2;
        goto LABEL_47;
      }

      goto LABEL_36;
    }

    v8 = 0;
    goto LABEL_46;
  }

LABEL_18:
  if (v3 >= 4 && !sub_297803A20(v10, 1) && !sub_297803A20(v10, 2) && !sub_297803A20(v10, 3))
  {
    v8 = 0;
    goto LABEL_38;
  }

  if (sub_2977FB7B8(v10) < 2 || sub_297803A20(v10, 1))
  {
    v5 = 4;
  }

  else
  {
    v5 = 2;
  }

LABEL_37:
  v8 = v5;
LABEL_38:
  v7 = 0;
LABEL_39:
  v9 = sub_297818384(&v8, &v7);
  sub_2978183B4(&v11, &v9);
  return v11;
}

uint64_t sub_297814C84(uint64_t a1)
{
  if (*(a1 + 36))
  {
    v2 = *(a1 + 40) + 1;
    *(a1 + 36) = 0;
    *(a1 + 40) = v2;
  }

  sub_2978146B4(a1, -1);
  sub_297814D10((a1 + 280));
  *(a1 + 49) = 0;
  sub_297813E18(v5);
  v6 = 2;
  sub_2977FB7C0(&v4, *(a1 + 16), 0);
  v7 = v4;
  sub_297813DD4(a1 + 56, v5);
  return 1;
}

BOOL sub_297814D1C(uint64_t a1)
{
  sub_2978146B4(a1, -1);
  sub_297814D10((a1 + 280));
  *(a1 + 49) = 0;
  v2 = *(a1 + 16);
  sub_2978143A8(a1, 0x25u);
  v3 = *(a1 + 16);
  v4 = sub_2978141CC(a1, sub_2978141A0, 0, v3);
  *(a1 + 16) = v4;
  sub_2977FB7C0(&v18, v3, v4 - v3);
  *(a1 + 16) = sub_2978141CC(a1, sub_29781417C, 0, *(a1 + 16));
  sub_297813E18(v15);
  v5 = v18;
  v6 = v19;
  sub_2977FB7B4(&v14, "YAML");
  if (sub_297804D28(v5, v6, v14, *(&v14 + 1)))
  {
    v7 = sub_2978141CC(a1, sub_2978141A0, 0, *(a1 + 16));
    *(a1 + 16) = v7;
    v8 = 3;
  }

  else
  {
    v9 = v18;
    v10 = v19;
    sub_2977FB7B4(&v14, "TAG");
    result = sub_297804D28(v9, v10, v14, *(&v14 + 1));
    if (!result)
    {
      return result;
    }

    v12 = sub_2978141CC(a1, sub_2978141A0, 0, *(a1 + 16));
    *(a1 + 16) = v12;
    v13 = sub_2978141CC(a1, sub_29781417C, 0, v12);
    *(a1 + 16) = v13;
    v7 = sub_2978141CC(a1, sub_2978141A0, 0, v13);
    *(a1 + 16) = v7;
    v8 = 4;
  }

  v16 = v8;
  sub_2977FB7C0(&v14, v2, v7 - v2);
  v17 = v14;
  sub_297813DD4(a1 + 56, v15);
  return 1;
}

uint64_t sub_297814EF8(uint64_t a1, int a2)
{
  sub_2978146B4(a1, -1);
  sub_297814D10((a1 + 280));
  *(a1 + 49) = 0;
  sub_297813E18(v7);
  if (a2)
  {
    v4 = 5;
  }

  else
  {
    v4 = 6;
  }

  v8 = v4;
  sub_2977FB7C0(&v6, *(a1 + 16), 3);
  v9 = v6;
  sub_297814410(a1, 3u);
  sub_297813DD4(a1 + 56, v7);
  return 1;
}

uint64_t sub_297814F84(uint64_t a1, int a2)
{
  sub_297813E18(v7);
  if (a2)
  {
    v4 = 12;
  }

  else
  {
    v4 = 14;
  }

  v8 = v4;
  sub_2977FB7C0(&v6, *(a1 + 16), 1);
  v9 = v6;
  sub_297814410(a1, 1u);
  sub_297813DD4(a1 + 56, v7);
  sub_297815040();
  sub_2977FDEF4();
  sub_297814460(a1, v6, *(a1 + 36) - 1, 0);
  *(a1 + 49) = 1;
  ++*(a1 + 44);
  return 1;
}

uint64_t sub_297815040()
{
  sub_297818118();

  return sub_297803A7C(v0);
}

uint64_t sub_297815068(uint64_t a1, int a2)
{
  sub_297814614(a1, *(a1 + 44));
  *(a1 + 49) = 0;
  sub_297813E18(v8);
  if (a2)
  {
    v4 = 13;
  }

  else
  {
    v4 = 15;
  }

  v9 = v4;
  sub_2977FB7C0(&v7, *(a1 + 16), 1);
  v10 = v7;
  sub_297814410(a1, 1u);
  sub_297813DD4(a1 + 56, v8);
  v5 = *(a1 + 44);
  if (v5)
  {
    *(a1 + 44) = v5 - 1;
  }

  return 1;
}

uint64_t sub_297815100(uint64_t a1)
{
  sub_297814614(a1, *(a1 + 44));
  *(a1 + 49) = 1;
  sub_297813E18(v4);
  v5 = 11;
  sub_2977FB7C0(&v3, *(a1 + 16), 1);
  v6 = v3;
  sub_297814410(a1, 1u);
  sub_297813DD4(a1 + 56, v4);
  return 1;
}

uint64_t sub_29781517C(uint64_t a1)
{
  v2 = *(a1 + 36);
  v3 = sub_29781521C(a1 + 56);
  sub_297814780(a1, v2, 9, v3);
  sub_297814614(a1, *(a1 + 44));
  *(a1 + 49) = 1;
  sub_297813E18(v6);
  v7 = 7;
  sub_2977FB7C0(&v5, *(a1 + 16), 1);
  v8 = v5;
  sub_297814410(a1, 1u);
  sub_297813DD4(a1 + 56, v6);
  return 1;
}

uint64_t sub_29781521C(uint64_t a1)
{
  sub_297818118();
  sub_297818118();
  sub_2977FDEF4();
  return v2;
}

uint64_t sub_297815260(uint64_t a1)
{
  v2 = *(a1 + 44);
  if (!v2)
  {
    v3 = *(a1 + 36);
    v4 = sub_29781521C(a1 + 56);
    sub_297814780(a1, v3, 10, v4);
    v2 = *(a1 + 44);
  }

  sub_297814614(a1, v2);
  *(a1 + 49) = *(a1 + 44) == 0;
  sub_297813E18(v7);
  v8 = 16;
  sub_2977FB7C0(&v6, *(a1 + 16), 1);
  v9 = v6;
  sub_297814410(a1, 1u);
  sub_297813DD4(a1 + 56, v7);
  return 1;
}

uint64_t sub_297815310(uint64_t a1)
{
  if (sub_297806904((a1 + 280)))
  {
    if (*(a1 + 44))
    {
      v2 = 0;
    }

    else
    {
      v3 = *(a1 + 36);
      v4 = sub_29781521C(a1 + 56);
      sub_297814780(a1, v3, 10, v4);
      v2 = *(a1 + 44) == 0;
    }

    *(a1 + 49) = v2;
  }

  else
  {
    sub_297815484(a1 + 280, &v11);
    sub_297813E18(v8);
    v9 = 16;
    v10 = *(sub_297803A7C(&v11) + 24);
    sub_29780AE44(&v7);
    sub_29780AE44(&v6);
    v7 = sub_2978154D0(a1 + 56);
    v6 = sub_29781521C(a1 + 56);
    while (sub_29781550C(&v7, &v6))
    {
      if (sub_297815520(&v7, &v11))
      {
        break;
      }

      sub_297815534(&v7);
    }

    v7 = sub_29781481C(a1 + 56, v7, v8);
    sub_297814780(a1, SDWORD2(v11), 10, v7);
    *(a1 + 49) = 0;
  }

  sub_297813E18(v8);
  v9 = 17;
  sub_2977FB7C0(&v11, *(a1 + 16), 1);
  v10 = v11;
  sub_297814410(a1, 1u);
  sub_297813DD4(a1 + 56, v8);
  return 1;
}

uint64_t sub_297815484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_297819418(a1);
  *a2 = *v4;
  *(a2 + 16) = *(v4 + 16);

  return sub_297814678(a1);
}

uint64_t sub_2978154D0(uint64_t a1)
{
  sub_297818118();
  sub_2977FDEF4();
  return v2;
}

uint64_t sub_297815564(uint64_t a1, int a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 36);
  if (a2)
  {
    v5 = *(a1 + 24);
    for (i = (v3 + 1); ; ++i)
    {
      *(v2 + 16) = i;
      if (i == v5)
      {
        break;
      }

      if (*i == 34 && (*(i - 1) != 92 || !sub_297815754(v3 + 1, i)))
      {
        goto LABEL_23;
      }
    }

LABEL_25:
    sub_2978036E0(v16, "Expected quote at end of scalar");
    sub_297814548(v2, v16);
    return 0;
  }

  v7 = 1;
LABEL_9:
  sub_297814410(a1, v7);
  while (1)
  {
    while (1)
    {
      i = *(v2 + 16);
      v5 = *(v2 + 24);
      v8 = *i;
      if ((i + 1) >= v5)
      {
        if (v8 == 39)
        {
          goto LABEL_23;
        }
      }

      else if (v8 == 39)
      {
        if (i[1] != 39)
        {
          goto LABEL_23;
        }

        a1 = v2;
        v7 = 2;
        goto LABEL_9;
      }

      v9 = sub_297814038(v2, *(v2 + 16));
      i = v9;
      v10 = *(v2 + 16);
      if (v9 == v10)
      {
        break;
      }

      if (v9 == *(v2 + 24))
      {
        v5 = v9;
        i = *(v2 + 16);
        goto LABEL_23;
      }

      *(v2 + 16) = v9;
      ++*(v2 + 36);
    }

    v11 = sub_297814128(v2, v10);
    if (v11 == i)
    {
      break;
    }

    *(v2 + 16) = v11;
    v12 = *(v2 + 40) + 1;
    *(v2 + 36) = 0;
    *(v2 + 40) = v12;
  }

  v5 = *(v2 + 24);
LABEL_23:
  if (i == v5)
  {
    goto LABEL_25;
  }

  v13 = 1;
  sub_297814410(v2, 1u);
  sub_297813E18(v16);
  v17 = 18;
  sub_2977FB7C0(&v15, v3, *(v2 + 16) - v3);
  v18 = v15;
  sub_297813DD4(v2 + 56, v16);
  sub_297815040();
  sub_2977FDEF4();
  sub_297814460(v2, v15, v4, 0);
  *(v2 + 49) = 0;
  return v13;
}

BOOL sub_297815754(unint64_t a1, uint64_t a2)
{
  v2 = (a2 - 1);
  if (a2 - 1 >= a1)
  {
    do
    {
      if (*v2 != 92)
      {
        break;
      }

      --v2;
    }

    while (v2 >= a1);
  }

  return ((a2 - 1 - v2) & 0x8000000000000001) == 1;
}

uint64_t sub_297815790(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*v2 == 35)
  {
    goto LABEL_2;
  }

  v4 = 0;
  v5 = *(a1 + 36);
  v6 = *(a1 + 32) + 1;
  v7 = *(a1 + 16);
  while (1)
  {
    v8 = v7;
    if ((sub_29781442C(a1, v7) & 1) == 0)
    {
      break;
    }

LABEL_18:
    if (sub_29781442C(a1, v8))
    {
      v7 = v8;
      do
      {
        v12 = sub_29781417C(a1, v7);
        if (v12 == v7)
        {
          v7 = sub_297814128(a1, v7);
          v14 = *(a1 + 40) + 1;
          *(a1 + 36) = 0;
          *(a1 + 40) = v14;
          v4 = 1;
        }

        else
        {
          v13 = *(a1 + 36);
          if (v4 && v13 < v6 && *v7 == 9)
          {
            sub_2978036E0(v16, "Found invalid tab character in indentation");
            v3 = a1;
            goto LABEL_33;
          }

          *(a1 + 36) = v13 + 1;
          v7 = v12;
        }
      }

      while ((sub_29781442C(a1, v7) & 1) != 0);
      if (*(a1 + 44) || *(a1 + 36) >= v6)
      {
        *(a1 + 16) = v7;
        v8 = v7;
        if (*v7 != 35)
        {
          continue;
        }
      }
    }

    if (v2 != v8)
    {
      sub_297813E18(v16);
      v17 = 18;
      sub_2977FB7C0(&v19, v2, *(a1 + 16) - v2);
      v18 = v19;
      sub_297813DD4(a1 + 56, v16);
      sub_297815040();
      sub_2977FDEF4();
      sub_297814460(a1, v19, v5, 0);
      *(a1 + 49) = 0;
      return 1;
    }

LABEL_2:
    sub_2978036E0(v16, "Got empty plain scalar");
    v3 = a1;
    goto LABEL_33;
  }

  while (1)
  {
    v9 = *v8;
    if (*(a1 + 44))
    {
      break;
    }

    if (v9 == 58 && (sub_29781442C(a1, v8 + 1) & 1) != 0)
    {
      goto LABEL_18;
    }

LABEL_14:
    v11 = sub_297814038(a1, v8);
    if (v11 == *(a1 + 16))
    {
      v8 = *(a1 + 16);
      goto LABEL_18;
    }

    v8 = v11;
    *(a1 + 16) = v11;
    ++*(a1 + 36);
    if (sub_29781442C(a1, v11))
    {
      goto LABEL_18;
    }
  }

  if (v9 != 58)
  {
LABEL_10:
    sub_2977FB7C0(v16, v8, 1);
    sub_2977FB7B4(&v19, ",:?[]{}");
    v10 = sub_29780F7E0(v16, v19, *(&v19 + 1), 0);
    v8 = *(a1 + 16);
    if (v10 != -1)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (sub_29781442C(a1, v8 + 1) || v8[1] == 44)
  {
    if (sub_29781442C(a1, v8 + 1))
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  sub_2978036E0(v16, "Found unexpected ':' while scanning a plain scalar");
  v3 = a1;
LABEL_33:
  sub_297814548(v3, v16);
  return 0;
}

BOOL sub_297815A64(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 36);
  sub_297814410(a1, 1u);
  v6 = *(a1 + 16);
  while (1)
  {
    v7 = *v6;
    if ((v7 - 44) <= 0x31 && ((1 << (v7 - 44)) & 0x2800000004001) != 0)
    {
      break;
    }

    if (v7 == 123)
    {
      break;
    }

    if (v7 == 125)
    {
      break;
    }

    v9 = sub_2978141A0(a1, v6);
    v6 = v9;
    if (v9 == *(a1 + 16))
    {
      break;
    }

    *(a1 + 16) = v9;
    ++*(a1 + 36);
  }

  if (v4 == v6)
  {
    sub_2978036E0(v13, "Got empty alias or anchor");
    sub_297814548(a1, v13);
  }

  else
  {
    sub_297813E18(v13);
    if (a2)
    {
      v10 = 19;
    }

    else
    {
      v10 = 20;
    }

    v14 = v10;
    sub_2977FB7C0(&v12, v4, *(a1 + 16) - v4);
    v15 = v12;
    sub_297813DD4(a1 + 56, v13);
    sub_297815040();
    sub_2977FDEF4();
    sub_297814460(a1, v12, v5, 0);
    *(a1 + 49) = 0;
  }

  return v4 != v6;
}

uint64_t sub_297815BC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_297814410(a1, 1u);
  v3 = *(a1 + 16);
  while (1)
  {
    while (1)
    {
      v4 = sub_297814038(a1, v3);
      v5 = v4;
      v6 = *(a1 + 16);
      if (v4 == v6)
      {
        break;
      }

      *(a1 + 16) = v4;
      ++*(a1 + 36);
      v3 = v4;
    }

    if (!*(a1 + 36))
    {
      break;
    }

    v7 = sub_297814128(a1, v6);
    if (v7 == v5)
    {
      return 0;
    }

    v3 = v7;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0;
    *(a1 + 40) = v8;
    *(a1 + 16) = v7;
  }

  if (v2 != v4)
  {
    sub_297813E18(v11);
    v12 = 18;
    sub_2977FB7C0(&v10, v2, *(a1 + 16) - v2);
    v13 = v10;
    sub_297813DD4(a1 + 56, v11);
    return 1;
  }

  sub_2978036E0(v11, "Got empty block scalar");
  sub_297814548(a1, v11);
  return 0;
}

uint64_t sub_297815CD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 36);
  sub_297814410(a1, 1u);
  v4 = *(a1 + 16);
  if (v4 != *(a1 + 24) && (sub_29781442C(a1, *(a1 + 16)) & 1) == 0)
  {
    if (*v4 == 60)
    {
      sub_297814410(a1, 1u);
      sub_297814240(a1);
      if ((sub_2978143A8(a1, 0x3Eu) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      *(a1 + 16) = sub_2978141CC(a1, sub_2978141A0, 0, v4);
    }
  }

  sub_297813E18(v7);
  v8 = 21;
  sub_2977FB7C0(&v6, v2, *(a1 + 16) - v2);
  v9 = v6;
  sub_297813DD4(a1 + 56, v7);
  sub_297815040();
  sub_2977FDEF4();
  sub_297814460(a1, v6, v3, 0);
  *(a1 + 49) = 0;
  return 1;
}

uint64_t sub_297815E00(uint64_t a1)
{
  sub_2977FA198();
  sub_297813324();
  sub_2977FDEF4();
  sub_29780AE44(a1 + 8);
  return a1;
}

uint64_t sub_297815E74(uint64_t a1)
{
  sub_297815EB0(a1 + 8);

  return sub_297815EB4(a1);
}

uint64_t sub_297815EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  sub_297815F8C(v11);
  *&v10 = sub_297815F90(a2);
  *(&v10 + 1) = v6;
  sub_297803F88(v11, &v10);
  v7 = sub_2977FB720(a1);
  v8 = sub_297815F90(a2);
  sub_29781601C(&v10, v11);
  sub_297815F9C(v7, v8, 0, a3, v10, *(&v10 + 1));
  return sub_2977FD134(v11);
}

uint64_t sub_297815F9C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  sub_297804560(v13);
  return sub_29780B9D4(v11, a2, a3, a4, a5, a6, v13[0], v13[1], 1u);
}

uint64_t sub_297816020(uint64_t a1)
{
  if (sub_29780B1BC((a1 + 8)))
  {
    sub_2978035B4("Can only iterate over the stream once", 1);
  }

  v2 = sub_2977FB720(a1);
  sub_297813328(v2, v5);
  v3 = sub_2977FA198();
  sub_2978160BC(v3, a1);
  sub_2978160A4((a1 + 8), v3);
  sub_2977FDEF4();
  return v5[5];
}

void sub_2978160A4(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    sub_297818A48(result, v3);
  }
}

BOOL sub_297816104(uint64_t *a1)
{
  for (i = *a1; ; i = *a1)
  {
    v3 = sub_2977FB720(i);
    if (sub_297815EBC(v3))
    {
      return 0;
    }

    v4 = a1[18];
    if (!v4)
    {
      sub_297817D74(a1);
      v4 = a1[18];
    }

    (*(*v4 + 8))(v4);
    v5 = *(sub_297816708(a1) + 16);
    if (v5 != 6)
    {
      break;
    }

    sub_297816770(a1, v7);
  }

  return v5 != 2;
}

uint64_t sub_2978161B0(uint64_t *a1)
{
  v2 = sub_2977FB720(*a1);
  v3 = sub_297816104(v2);
  v4 = *a1;
  if (v3)
  {
    v5 = *sub_2977FB720(v4);
    v6 = *a1;
    v7 = sub_2977FA198();
    sub_2978160BC(v7, v5);
    v4 = v6;
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  sub_2978160A4(v4, v8);
  return *a1;
}

uint64_t sub_297816228(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = &unk_2A1E549C8;
  *(a1 + 8) = a3;
  sub_2978162D0(a1 + 16);
  *(a1 + 32) = a2;
  *(a1 + 40) = a4;
  *(a1 + 48) = a5;
  *(a1 + 56) = a6;
  *(a1 + 64) = a7;
  v13 = sub_2978162D4(a1);
  v14 = sub_2977FB720(v13 + 24);
  v15 = sub_29780ACAC(v14);
  sub_2977FB7C0(&v17, v15, v15);
  *(a1 + 16) = v17;
  return a1;
}

uint64_t sub_2978162D4(uint64_t a1)
{
  v1 = sub_2977FB720(*(a1 + 8));

  return sub_297816708(v1);
}

void sub_297816300(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_297816618(a1);
  v32 = v4;
  if (sub_297806914(&v31) || (v5 = v31, v6 = v32, sub_2977FB7B4(&v26, "!"), !sub_297808D64(v5, v6, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_)))
  {
    v11 = sub_297816700(a1);
    if (v11 > 2)
    {
      if (v11 == 3)
      {
        v12 = "tag:yaml.org,2002:map";
        goto LABEL_16;
      }

      if (v11 == 4)
      {
        v12 = "tag:yaml.org,2002:seq";
        goto LABEL_16;
      }
    }

    else
    {
      if (!v11)
      {
        v12 = "tag:yaml.org,2002:null";
        goto LABEL_16;
      }

      if (v11 == 1)
      {
        v12 = "tag:yaml.org,2002:str";
LABEL_16:
        sub_297804638(a2, v12);
        return;
      }
    }

    v12 = &byte_2978FC3E5;
    goto LABEL_16;
  }

  sub_297802744(&v30);
  if (sub_297806AF0(&v31, 33, -1))
  {
    sub_2977FB7B4(&v26, "!!");
    if (sub_297807C54(&v31, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_))
    {
      v7 = sub_2977FB720(*(a1 + 8));
      v8 = sub_297816624(v7);
      sub_2977FB7B4(v25, "!!");
      v24[0] = sub_29781662C(v8, v25);
      sub_29781665C(v24);
      sub_297801F5C(v9 + 16);
      sub_2978046C4(&v30, &v26);
      std::string::~string(&v26);
      v10 = 2;
    }

    else
    {
      v16 = sub_297806AF0(&v31, 33, -1);
      *&v29 = sub_297805EA4(&v31, 0, v16 + 1);
      *(&v29 + 1) = v17;
      v18 = sub_2977FB720(*(a1 + 8));
      v19 = sub_297816624(v18);
      v28 = sub_29781662C(v19, &v29);
      v20 = sub_2977FB720(*(a1 + 8));
      sub_297816624(v20);
      v26.__r_.__value_.__r.__words[0] = sub_29781668C();
      if (sub_297816688(&v28, &v26))
      {
        sub_29781665C(&v28);
        sub_297801F5C(v21 + 16);
        sub_2978046C4(&v30, &v26);
        std::string::~string(&v26);
      }

      else
      {
        sub_297813E18(&v26);
        LODWORD(v26.__r_.__value_.__r.__words[2]) = 21;
        v27 = v29;
        sub_2978036E0(v24, "Unknown tag handle ");
        sub_2978036E8();
        sub_297807128();
        sub_2978166BC(a1, v25, &v26);
      }

      v10 = sub_297806AF0(&v31, 33, -1) + 1;
    }
  }

  else
  {
    v13 = sub_2977FB720(*(a1 + 8));
    v14 = sub_297816624(v13);
    sub_2977FB7B4(v25, "!");
    v24[0] = sub_29781662C(v14, v25);
    sub_29781665C(v24);
    sub_297801F5C(v15 + 16);
    sub_2978046C4(&v30, &v26);
    std::string::~string(&v26);
    v10 = 1;
  }

  v22 = sub_297805EA4(&v31, v10, 0xFFFFFFFFFFFFFFFFLL);
  sub_29780435C(&v30, v22, v23);
  sub_297808AB4();
  std::string::~string(&v30);
}

uint64_t sub_29781662C(uint64_t a1, const void **a2)
{
  sub_297819520(a1, a2);
  sub_2977FDEF4();
  return v3;
}

void sub_29781665C(uint64_t a1)
{
  sub_297819804(a1);
  nullsub_1();

  nullsub_1();
}

uint64_t sub_29781668C()
{
  sub_297819670();
  sub_2977FDEF4();
  return v1;
}

unint64_t sub_2978166BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FB720(*(a1 + 8));

  return sub_297816C48(v5, a2, a3);
}

uint64_t sub_297816708(uint64_t *a1)
{
  v1 = sub_2977FB720(*a1);

  return sub_297813790(v1);
}

void sub_297816734(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_2977FB720(*(a1 + 8));

  sub_297816770(v3, a2);
}

void sub_297816770(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_2977FB720(*a1);

  sub_297813328(v3, a2);
}

uint64_t sub_2978167AC(uint64_t a1)
{
  v1 = sub_2977FB720(*(a1 + 8));

  return sub_2978167D8(v1);
}

uint64_t sub_2978167D8(uint64_t *a1)
{
  v2 = sub_297816708(a1);
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  v53 = *v2;
  v54 = v4;
  v55 = v3;
  sub_297813E18(&v50);
  sub_297813E18(&v47);
  while (1)
  {
    if (v54 <= 18)
    {
      if (v54 > 11)
      {
        if (v54 > 15)
        {
          if (v54 != 16)
          {
            if (v54 == 18)
            {
              sub_297816770(a1, &v44);
              v8 = sub_297817728(88, a1 + 1, 0x10uLL);
              if (v8)
              {
                v29 = *a1;
                v30 = sub_297805EA4(&v51 + 1, 1uLL, 0xFFFFFFFFFFFFFFFFLL);
                sub_297817DB4(v8, v29 + 8, v30, v31, *(&v48 + 1), v49, *(&v54 + 1), v55);
              }

              return v8;
            }

            goto LABEL_40;
          }

          v8 = sub_297817728(88, a1 + 1, 0x10uLL);
          if (!v8)
          {
            return v8;
          }

          v36 = *a1;
          v19 = sub_297805EA4(&v51 + 1, 1uLL, 0xFFFFFFFFFFFFFFFFLL);
          v21 = v37;
          v22 = *(&v48 + 1);
          v23 = v49;
          v24 = v36 + 8;
          v25 = v8;
          v26 = 2;
        }

        else
        {
          if (v54 == 12)
          {
            sub_297816770(a1, &v44);
            v8 = sub_297817728(88, a1 + 1, 0x10uLL);
            if (!v8)
            {
              return v8;
            }

            v32 = *a1;
            v10 = sub_297805EA4(&v51 + 1, 1uLL, 0xFFFFFFFFFFFFFFFFLL);
            v12 = v33;
            v13 = *(&v48 + 1);
            v14 = v49;
            v15 = v32 + 8;
            v16 = v8;
            v17 = 1;
            goto LABEL_33;
          }

          if (v54 != 14)
          {
LABEL_40:
            v41 = sub_297817728(72, a1 + 1, 0x10uLL);
            v8 = v41;
            if (v41)
            {
              sub_297817738(v41, *a1 + 8);
            }

            return v8;
          }

          sub_297816770(a1, &v44);
          v8 = sub_297817728(88, a1 + 1, 0x10uLL);
          if (!v8)
          {
            return v8;
          }

          v18 = *a1;
          v19 = sub_297805EA4(&v51 + 1, 1uLL, 0xFFFFFFFFFFFFFFFFLL);
          v21 = v20;
          v22 = *(&v48 + 1);
          v23 = v49;
          v24 = v18 + 8;
          v25 = v8;
          v26 = 1;
        }
      }

      else
      {
        if (v54 <= 8)
        {
          if (!v54)
          {
            return 0;
          }

          if (v54 == 7)
          {
            v8 = sub_297817728(88, a1 + 1, 0x10uLL);
            if (!v8)
            {
              return v8;
            }

            v9 = *a1;
            v10 = sub_297805EA4(&v51 + 1, 1uLL, 0xFFFFFFFFFFFFFFFFLL);
            v12 = v11;
            v13 = *(&v48 + 1);
            v14 = v49;
            v15 = v9 + 8;
            v16 = v8;
            v17 = 2;
LABEL_33:
            sub_297817DAC(v16, v15, v10, v12, v13, v14, v17);
            return v8;
          }

          goto LABEL_40;
        }

        if (v54 == 9)
        {
          sub_297816770(a1, &v44);
          v8 = sub_297817728(88, a1 + 1, 0x10uLL);
          if (!v8)
          {
            return v8;
          }

          v34 = *a1;
          v10 = sub_297805EA4(&v51 + 1, 1uLL, 0xFFFFFFFFFFFFFFFFLL);
          v12 = v35;
          v13 = *(&v48 + 1);
          v14 = v49;
          v15 = v34 + 8;
          v16 = v8;
          v17 = 0;
          goto LABEL_33;
        }

        if (v54 != 10)
        {
          goto LABEL_40;
        }

        sub_297816770(a1, &v44);
        v8 = sub_297817728(88, a1 + 1, 0x10uLL);
        if (!v8)
        {
          return v8;
        }

        v27 = *a1;
        v19 = sub_297805EA4(&v51 + 1, 1uLL, 0xFFFFFFFFFFFFFFFFLL);
        v21 = v28;
        v22 = *(&v48 + 1);
        v23 = v49;
        v24 = v27 + 8;
        v25 = v8;
        v26 = 0;
      }

      sub_297817DB0(v25, v24, v19, v21, v22, v23, v26);
      return v8;
    }

    if (v54 != 20)
    {
      break;
    }

    if (v51 == 20)
    {
      v42 = "Already encountered an anchor for this node!";
      goto LABEL_44;
    }

    sub_297816770(a1, &v44);
    v50 = v44;
    v51 = v45;
    v52 = v46;
LABEL_9:
    v5 = sub_297816708(a1);
    v6 = *(v5 + 32);
    v7 = *(v5 + 16);
    v53 = *v5;
    v54 = v7;
    v55 = v6;
  }

  if (v54 != 21)
  {
    if (v54 == 19)
    {
      sub_297816770(a1, &v44);
      v8 = sub_297817728(88, a1 + 1, 0x10uLL);
      if (v8)
      {
        v38 = *a1;
        v39 = sub_297805EA4(&v54 + 1, 1uLL, 0xFFFFFFFFFFFFFFFFLL);
        sub_297817DA8(v8, v38 + 8, v39, v40);
      }

      return v8;
    }

    goto LABEL_40;
  }

  if (v48 != 21)
  {
    sub_297816770(a1, &v44);
    v47 = v44;
    v48 = v45;
    v49 = v46;
    goto LABEL_9;
  }

  v42 = "Already encountered a tag for this node!";
LABEL_44:
  sub_2978036E0(&v44, v42);
  sub_297816C48(a1, &v44, &v53);
  return 0;
}

unint64_t sub_297816C48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FB720(*a1);
  sub_2977FB720(a3 + 24);

  return sub_297814548(v5, a2);
}

uint64_t sub_297816CA4(uint64_t a1)
{
  v1 = sub_2977FB720(*(a1 + 8));

  return sub_297816CD0(v1);
}

uint64_t sub_297816CD0(uint64_t *a1)
{
  v1 = sub_2977FB720(*a1);

  return sub_297815EBC(v1);
}

uint64_t sub_297816CFC(uint64_t a1, void *a2)
{
  if (sub_297803A20((a1 + 72), 0) == 34)
  {
    v4 = sub_2977FB7B8(a1 + 72);
    *&v27 = sub_297805EA4((a1 + 72), 1uLL, v4 - 2);
    *(&v27 + 1) = v5;
    sub_2977FB7B4(v26, "\\\r\n");
    v6 = sub_29780F7E0(&v27, v26[0], v26[1], 0);
    if (v6 != -1)
    {
      v7 = sub_297816F2C(a1, v27, *(&v27 + 1), v6, a2);
LABEL_11:
      *&v28 = v7;
      *(&v28 + 1) = v8;
      return v28;
    }

    return v27;
  }

  if (sub_297803A20((a1 + 72), 0) != 39)
  {
    sub_2977FB7B4(&v27, " ");
    v7 = sub_297817604((a1 + 72), v27, *(&v27 + 1));
    goto LABEL_11;
  }

  v9 = sub_2977FB7B8(a1 + 72);
  *&v27 = sub_297805EA4((a1 + 72), 1uLL, v9 - 2);
  *(&v27 + 1) = v10;
  v11 = sub_2978044F0(&v27, 0x27u, 0);
  if (v11 == -1)
  {
    return v27;
  }

  v12 = v11;
  sub_2977FD800(a2);
  v13 = sub_2977FB7B8(&v27);
  sub_297805924(a2, v13);
  do
  {
    v14 = sub_2977FB720(&v27);
    sub_2977FB7C0(v26, v14, v12);
    v15 = sub_2977FB7B8(a2);
    v16 = sub_2977FB720(v26);
    v17 = sub_2977FB728(v26);
    sub_297817464(a2, v15, v16, v17);
    v25 = 39;
    sub_2977FCD50(a2, &v25);
    *&v27 = sub_297805EA4(&v27, v12 + 2, 0xFFFFFFFFFFFFFFFFLL);
    *(&v27 + 1) = v18;
    v12 = sub_2978044F0(&v27, 0x27u, 0);
  }

  while (v12 != -1);
  v19 = sub_2977FB7B8(a2);
  v20 = sub_2977FB720(&v27);
  v21 = sub_2977FB728(&v27);
  sub_297817464(a2, v19, v20, v21);
  v22 = sub_2977FB720(a2);
  v23 = sub_2977FD0D4(a2);
  sub_2977FB7C0(&v28, v22, v23);
  return v28;
}

uint64_t sub_297816F2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v39 = a2;
  v40 = a3;
  sub_2977FD800(a5);
  v8 = sub_2977FB7B8(&v39);
  sub_297805924(a5, v8);
  if (a4 != -1)
  {
    while (1)
    {
      v9 = sub_2977FB720(&v39);
      sub_2977FB7C0(v38, v9, a4);
      v10 = sub_2977FB7B8(a5);
      v11 = sub_2977FB720(v38);
      v12 = sub_2977FB728(v38);
      sub_297817464(a5, v10, v11, v12);
      v39 = sub_297805EA4(&v39, a4, 0xFFFFFFFFFFFFFFFFLL);
      v40 = v13;
      v14 = sub_297803A20(&v39, 0);
      if (v14 == 13 || v14 == 10)
      {
        break;
      }

      if (sub_2977FB7B8(&v39) != 1)
      {
        v39 = sub_297805EA4(&v39, 1uLL, 0xFFFFFFFFFFFFFFFFLL);
        v40 = v17;
        v18 = sub_297803A20(&v39, 0);
        if (v18 > 0x5B)
        {
          if (v18 <= 109)
          {
            if (v18 <= 97)
            {
              if (v18 == 92)
              {
                goto LABEL_57;
              }

              if (v18 != 95)
              {
                if (v18 != 97)
                {
                  goto LABEL_80;
                }

                LOBYTE(v18) = 7;
                goto LABEL_57;
              }

              v19 = 160;
LABEL_68:
              sub_297813588(v19, a5);
LABEL_69:
              v39 = sub_297805EA4(&v39, 1uLL, 0xFFFFFFFFFFFFFFFFLL);
              v40 = v26;
              goto LABEL_70;
            }

            if (v18 != 98)
            {
              if (v18 == 101)
              {
                LOBYTE(v18) = 27;
              }

              else
              {
                if (v18 != 102)
                {
                  goto LABEL_80;
                }

                LOBYTE(v18) = 12;
              }

              goto LABEL_57;
            }

            LOBYTE(v35) = 8;
LABEL_58:
            sub_2977FCD50(a5, &v35);
            goto LABEL_69;
          }

          if (v18 <= 116)
          {
            if (v18 == 110)
            {
              LOBYTE(v35) = 10;
              goto LABEL_58;
            }

            if (v18 == 114)
            {
              LOBYTE(v35) = 13;
              goto LABEL_58;
            }

            if (v18 != 116)
            {
              goto LABEL_80;
            }

            goto LABEL_53;
          }

          switch(v18)
          {
            case 'u':
              if (sub_2977FB7B8(&v39) < 5)
              {
                goto LABEL_69;
              }

              LODWORD(v34) = 0;
              v35 = sub_297805EA4(&v39, 1uLL, 4uLL);
              v36 = v24;
              if (sub_297809458(&v35, 16, &v34))
              {
                v25 = 65533;
                LODWORD(v34) = 65533;
              }

              else
              {
                v25 = v34;
              }

              sub_297813588(v25, a5);
              v15 = 4;
              break;
            case 'v':
              LOBYTE(v35) = 11;
              goto LABEL_58;
            case 'x':
              if (sub_2977FB7B8(&v39) < 3)
              {
                goto LABEL_69;
              }

              LODWORD(v34) = 0;
              v35 = sub_297805EA4(&v39, 1uLL, 2uLL);
              v36 = v20;
              if (sub_297809458(&v35, 16, &v34))
              {
                v21 = 65533;
                LODWORD(v34) = 65533;
              }

              else
              {
                v21 = v34;
              }

              sub_297813588(v21, a5);
              v15 = 2;
              break;
            default:
              goto LABEL_80;
          }

LABEL_9:
          v39 = sub_297805EA4(&v39, v15, 0xFFFFFFFFFFFFFFFFLL);
          v40 = v16;
          goto LABEL_69;
        }

        if (v18 > 46)
        {
          if (v18 <= 77)
          {
            if (v18 == 47)
            {
              goto LABEL_57;
            }

            if (v18 != 48)
            {
              if (v18 != 76)
              {
                goto LABEL_80;
              }

              v19 = 8232;
              goto LABEL_68;
            }

            LOBYTE(v35) = 0;
            goto LABEL_58;
          }

          if (v18 == 78)
          {
            v19 = 133;
            goto LABEL_68;
          }

          if (v18 == 80)
          {
            v19 = 8233;
            goto LABEL_68;
          }

          if (v18 != 85)
          {
            goto LABEL_80;
          }

          if (sub_2977FB7B8(&v39) < 9)
          {
            goto LABEL_69;
          }

          LODWORD(v34) = 0;
          v35 = sub_297805EA4(&v39, 1uLL, 8uLL);
          v36 = v22;
          if (sub_297809458(&v35, 16, &v34))
          {
            v23 = 65533;
            LODWORD(v34) = 65533;
          }

          else
          {
            v23 = v34;
          }

          sub_297813588(v23, a5);
          v15 = 8;
          goto LABEL_9;
        }

        if (v18 <= 12)
        {
          if (v18 == 9)
          {
LABEL_53:
            LOBYTE(v35) = 9;
            goto LABEL_58;
          }

          if (v18 != 10)
          {
            goto LABEL_80;
          }
        }

        else if (v18 != 13)
        {
          if (v18 != 32 && v18 != 34)
          {
LABEL_80:
            sub_297813E18(&v35);
            v33 = sub_2977FB720(&v39);
            sub_2977FB7C0(&v34, v33, 1);
            v37 = v34;
            sub_2978036E0(&v34, "Unrecognized escape code!");
            sub_2978166BC(a1, &v34, &v35);
            sub_2977FB7B4(&v41, &byte_2978FC3E5);
            return v41;
          }

LABEL_57:
          LOBYTE(v35) = v18;
          goto LABEL_58;
        }

LABEL_5:
        if (sub_2977FB7B8(&v39) < 2 || sub_297803A20(&v39, 1) != 13 && sub_297803A20(&v39, 1) != 10)
        {
          goto LABEL_69;
        }

        v15 = 1;
        goto LABEL_9;
      }

LABEL_70:
      sub_2977FB7B4(&v35, "\\\r\n");
      a4 = sub_29780F7E0(&v39, v35, v36, 0);
      if (a4 == -1)
      {
        goto LABEL_78;
      }
    }

    LOBYTE(v35) = 10;
    sub_2977FCD50(a5, &v35);
    goto LABEL_5;
  }

LABEL_78:
  v27 = sub_2977FB7B8(a5);
  v28 = sub_2977FB720(&v39);
  v29 = sub_2977FB728(&v39);
  sub_297817464(a5, v27, v28, v29);
  v30 = sub_2977FB720(a5);
  v31 = sub_2977FD0D4(a5);
  sub_2977FB7C0(&v41, v30, v31);
  return v41;
}

_BYTE *sub_297817464(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v8 = sub_2977FB720(a1);
  v9 = a2 - v8;
  if (sub_2977FB7B8(a1) == a2)
  {
    sub_2977FD4F8(a1, a3, a4);
    return (sub_2977FB720(a1) + v9);
  }

  else
  {
    v10 = sub_2977FD5AC(a3, a4);
    v11 = sub_2977FD0D4(a1);
    sub_297805924(a1, v11 + v10);
    v12 = sub_2977FB720(a1);
    v13 = (v12 + v9);
    v14 = sub_2977FB7B8(a1) - v13;
    v15 = sub_2977FB7B8(a1);
    if (v14 >= v10)
    {
      sub_2977FB7B8(a1);
      sub_2977FDEF4();
      sub_2977FB7B8(a1);
      sub_2977FDEF4();
      sub_297819830(a1, v24, v23);
      sub_2978198E4(v13, &v15[-v10], v15);
      sub_2977FD84C();
    }

    else
    {
      v16 = sub_2977FB7B8(a1);
      sub_2977FD5DC(a1, v16 + v10);
      v17 = sub_2977FB7B8(a1);
      sub_2978198E8(v13, v15, (v17 - (v15 - v13)));
      if (v15 != v13)
      {
        v18 = v12 + a2 - v8 - v15;
        v19 = v13;
        do
        {
          v20 = *a3++;
          *v19++ = v20;
        }

        while (!__CFADD__(v18++, 1));
      }

      sub_297807F80(a3, a4, v15);
    }
  }

  return v13;
}

uint64_t sub_297817604(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 1;
  v5 = a1[1];
  v8 = sub_29780FB30(a1, a2, a3, 0xFFFFFFFFFFFFFFFFLL) + 1;
  v6 = sub_297802578(v4, &v8);
  return sub_2978184AC(a1, v5 - *v6);
}

uint64_t sub_297817668(uint64_t a1)
{
  result = *(a1 + 72);
  if (!result)
  {
    v3 = *(sub_2978162D4(a1) + 16);
    if (v3 > 15)
    {
      if (v3 == 16)
      {
        sub_297816734(a1, v9);
        goto LABEL_12;
      }

      if (v3 != 17)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v3)
      {
        v4 = v3 == 8;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
LABEL_12:
        v6 = *(sub_2978162D4(a1) + 16);
        v5 = a1;
        if (v6 != 17 && v6 != 8)
        {
          result = sub_2978167AC(a1);
LABEL_19:
          *(a1 + 72) = result;
          return result;
        }

LABEL_17:
        v8 = sub_297816C28(v5);
        result = sub_297817728(72, v8, 0x10uLL);
        if (result)
        {
          result = sub_297817738(result, *(a1 + 8));
        }

        goto LABEL_19;
      }
    }

    v5 = a1;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_29781773C(uint64_t a1)
{
  result = *(a1 + 80);
  if (!result)
  {
    v3 = sub_297817668(a1);
    (*(*v3 + 8))(v3);
    if (sub_297816CA4(a1))
    {
      goto LABEL_5;
    }

    v4 = sub_2978162D4(a1);
    v5 = *(v4 + 16);
    if (v5 > 0x11)
    {
      goto LABEL_13;
    }

    if (((1 << v5) & 0x18901) != 0)
    {
      goto LABEL_5;
    }

    if (v5 == 17)
    {
      sub_297816734(a1, v8);
      v7 = *(sub_2978162D4(a1) + 16);
      if (v7 != 16 && v7 != 8)
      {
        result = sub_2978167AC(a1);
LABEL_7:
        *(a1 + 80) = result;
        return result;
      }
    }

    else
    {
LABEL_13:
      sub_2978036E0(v8, "Unexpected token in Key Value.");
      sub_2978166BC(a1, v8, v4);
    }

LABEL_5:
    v6 = sub_297816C28(a1);
    result = sub_297817728(72, v6, 0x10uLL);
    if (result)
    {
      result = sub_297817738(result, *(a1 + 8));
    }

    goto LABEL_7;
  }

  return result;
}

void sub_29781785C(uint64_t a1)
{
  if (sub_297816CA4(a1))
  {
    goto LABEL_19;
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    if (*(a1 + 72) == 2)
    {
      goto LABEL_19;
    }
  }

  v3 = sub_2978162D4(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  v10[0] = *v3;
  v10[1] = v5;
  v11 = v4;
  if ((v5 & 0xFFFFFFFD) != 0x10)
  {
    if (*(a1 + 72))
    {
      if (v5)
      {
        if (v5 != 15)
        {
          if (v5 == 11)
          {
            sub_297816734(a1, v9);
            sub_29781785C(a1);
            return;
          }

          v8 = "Unexpected token. Expected Key, Flow Entry, or Flow Mapping End.";
          goto LABEL_18;
        }

LABEL_15:
        sub_297816734(a1, v9);
      }
    }

    else if (v5)
    {
      if (v5 != 8)
      {
        v8 = "Unexpected token. Expected Key or Block End";
LABEL_18:
        sub_2978036E0(v9, v8);
        sub_2978166BC(a1, v9, v10);
        goto LABEL_19;
      }

      goto LABEL_15;
    }

LABEL_19:
    *(a1 + 77) = 1;
    *(a1 + 80) = 0;
    return;
  }

  v6 = sub_297816C28(a1);
  v7 = sub_297817728(88, v6, 0x10uLL);
  if (v7)
  {
    v7 = sub_2978179A0(v7, *(a1 + 8));
  }

  *(a1 + 80) = v7;
}

void sub_2978179A4(uint64_t a1)
{
  if (sub_297816CA4(a1))
  {
    goto LABEL_2;
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = sub_2978162D4(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  v11 = *v3;
  v12 = v5;
  v13 = v4;
  v6 = *(a1 + 72);
  if (v6 == 2)
  {
    if (v12 == 7)
    {
LABEL_19:
      sub_297816734(a1, v10);
      v8 = sub_2978167AC(a1);
      *(a1 + 80) = v8;
      if (!v8)
      {
        goto LABEL_2;
      }

      return;
    }

    goto LABEL_2;
  }

  if (v6 != 1)
  {
    if (v6)
    {
      return;
    }

    if (v12)
    {
      if (v12 != 8)
      {
        if (v12 != 7)
        {
          v7 = "Unexpected token. Expected Block Entry or Block End.";
LABEL_25:
          sub_2978036E0(v10, v7);
          sub_2978166BC(a1, v10, &v11);
          goto LABEL_2;
        }

        goto LABEL_19;
      }

      goto LABEL_21;
    }

LABEL_2:
    *(a1 + 77) = 1;
    *(a1 + 80) = 0;
    return;
  }

  if (v12 <= 4)
  {
    if (!v12)
    {
      goto LABEL_2;
    }

    if (v12 != 2)
    {
      goto LABEL_26;
    }

LABEL_24:
    v7 = "Could not find closing ]!";
    goto LABEL_25;
  }

  if ((v12 - 5) < 2)
  {
    goto LABEL_24;
  }

  if (v12 == 13)
  {
LABEL_21:
    sub_297816734(a1, v10);
    goto LABEL_2;
  }

  if (v12 == 11)
  {
    sub_297816734(a1, v10);
    *(a1 + 78) = 1;
    sub_2978179A4(a1);
    return;
  }

LABEL_26:
  if ((*(a1 + 78) & 1) == 0)
  {
    v7 = "Expected , between entries!";
    goto LABEL_25;
  }

  v9 = sub_2978167AC(a1);
  *(a1 + 80) = v9;
  if (!v9)
  {
    *(a1 + 77) = 1;
  }

  *(a1 + 78) = 0;
}

uint64_t *sub_297817B48(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  sub_297817C28((a1 + 1));
  a1[18] = 0;
  sub_297817C2C((a1 + 19));
  sub_2977FB7B4(v6, "!");
  sub_2977FB7B4(v7, "!");
  v3 = sub_297817C30((a1 + 19), v7);
  *v3 = v6[0];
  sub_2977FB7B4(v6, "tag:yaml.org,2002:");
  sub_2977FB7B4(v7, "!!");
  v4 = sub_297817C30((a1 + 19), v7);
  *v4 = v6[0];
  if (sub_297817CA0(a1))
  {
    sub_297817D04(a1, 5);
  }

  if (*(sub_297816708(a1) + 16) == 5)
  {
    sub_297816770(a1, v6);
  }

  return a1;
}

uint64_t sub_297817C30(uint64_t a1, uint64_t *a2)
{
  v8 = sub_297819C3C(a2);
  nullsub_1();
  v9 = sub_297819B68(a1, a2, &unk_2978F67F0, &v8, &v7);
  v10 = v4;
  sub_297819804(&v9);
  nullsub_1();
  return v5 + 16;
}

uint64_t sub_297817CA0(uint64_t *a1)
{
  for (i = 0; ; i = 1)
  {
    while (1)
    {
      v3 = *(sub_297816708(a1) + 16);
      if (v3 != 3)
      {
        break;
      }

      sub_297817EC4(a1);
      i = 1;
    }

    if (v3 != 4)
    {
      break;
    }

    sub_297817DB8(a1);
  }

  return i & 1;
}

BOOL sub_297817D04(uint64_t *a1, int a2)
{
  sub_297816770(a1, v7);
  v4 = v8;
  if (v8 != a2)
  {
    sub_2978036E0(v6, "Unexpected token");
    sub_297816C48(a1, v6, v7);
  }

  return v4 == a2;
}

uint64_t sub_297817D74(uint64_t *a1)
{
  result = a1[18];
  if (!result)
  {
    result = sub_2978167D8(a1);
    a1[18] = result;
  }

  return result;
}

void *sub_297817DB8(uint64_t *a1)
{
  sub_297816770(a1, v18);
  *v17 = v19;
  sub_2977FB7B4(&v15, " \t");
  v2 = sub_29780F7E0(v17, v15, v16, 0);
  v15 = sub_297805EA4(v17, v2, 0xFFFFFFFFFFFFFFFFLL);
  v16 = v3;
  sub_2977FB7B4(&v13, " \t");
  v17[0] = sub_297817EE8(&v15, v13, v14);
  v17[1] = v4;
  sub_2977FB7B4(&v15, " \t");
  v5 = sub_29780F7E0(v17, v15, v16, 0);
  v15 = sub_297805EA4(v17, 0, v5);
  v16 = v6;
  v13 = sub_297805EA4(v17, v5, 0xFFFFFFFFFFFFFFFFLL);
  v14 = v7;
  sub_2977FB7B4(v12, " \t");
  v8 = sub_297817EE8(&v13, v12[0], v12[1]);
  v10 = v9;
  result = sub_297817C30((a1 + 19), &v15);
  *result = v8;
  result[1] = v10;
  return result;
}

uint64_t sub_297817EE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29780F9A4(a1, a2, a3, 0);
  v4 = sub_297802578((a1 + 1), &v6);
  return sub_2978187D4(a1, *v4);
}

void sub_297817F34()
{
  j_nullsub_1();

  nullsub_1();
}

void sub_297817F5C()
{
  j_j_nullsub_1();

  nullsub_1();
}

uint64_t sub_297817F84(uint64_t a1)
{
  v2 = sub_297817668(a1);
  (*(*v2 + 8))(v2);
  v3 = *(*sub_29781773C(a1) + 8);

  return v3();
}

void *sub_29781800C(void *a1)
{
  v2 = sub_297809B88(a1);
  sub_297809B88(v2 + 24);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  return a1;
}

uint64_t sub_297818044(uint64_t a1)
{
  sub_297818080(a1 + 280);
  sub_2977FD134(a1 + 240);
  sub_297818084(a1 + 56);
  return a1;
}

void *sub_29781808C(void *a1)
{
  if (!sub_2977FDA84(a1))
  {
    v2 = sub_2977FB720(a1);
    free(v2);
  }

  return a1;
}

uint64_t sub_2978180C8(uint64_t a1)
{
  if (*(a1 + 176))
  {
    sub_297813D7C(a1);
    sub_297818118();
    nullsub_1();
  }

  return sub_297818120(a1);
}

uint64_t sub_297818158(uint64_t a1)
{
  v2 = sub_2977FB720(a1 + 16);
  v3 = sub_2977FB7B8(a1 + 16);
  sub_2978181B8(a1, v2, v3);
  sub_297818220(a1);
  sub_2977FD134(a1 + 72);
  sub_2977FD134(a1 + 16);
  return a1;
}

void sub_2978181B8(uint64_t result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = sub_2977FB720(result + 16);
      v7 = sub_29780CCF4(v6, v4);
      sub_297804028(v7);
      v8 = *v4++;
      sub_29781827C(result + 128, v8);
    }

    while (v4 != a3);
  }
}

void sub_297818220(uint64_t a1)
{
  v2 = sub_2977FB720(a1 + 72);
  v3 = sub_2977FB7B8(a1 + 72);
  if (v2 != v3)
  {
    v4 = v3;
    do
    {
      v5 = *v2;
      v2 += 2;
      sub_29781827C(a1 + 128, v5);
    }

    while (v2 != v4);
  }
}

uint64_t sub_2978182F0(uint64_t result, _BYTE *a2, _DWORD *a3)
{
  *result = *a2;
  *(result + 4) = *a3;
  return result;
}

_DWORD *sub_297818304(_DWORD *result, char *a2)
{
  *result = *a2;
  result[1] = *(a2 + 1);
  return result;
}

_DWORD *sub_29781831C(_DWORD *result, _DWORD *a2, _DWORD *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

void *sub_297818330(void *a1)
{
  v2 = sub_297818364(a1);
  *(v2 + 4) = 0;
  sub_297804560((v2 + 3));
  return a1;
}

void *sub_297818364(void *a1)
{
  result = sub_29780C4DC(a1);
  result[1] = 0;
  return result;
}

_DWORD *sub_2978183BC(_DWORD *result, _DWORD *a2, int *a3)
{
  v3 = *a3;
  *result = *a2;
  result[1] = v3;
  return result;
}

double sub_2978183CC(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

BOOL sub_2978183D8(void *a1, void *a2)
{
  if (!sub_29781844C(a1) && !sub_29781844C(a2))
  {
    return *a1 == *a2;
  }

  result = sub_29781844C(a1);
  if (result)
  {

    return sub_29781844C(a2);
  }

  return result;
}

uint64_t sub_29781847C(uint64_t a1)
{
  v2 = sub_29780AE44(a1);
  sub_29780AE44(v2 + 8);
  return a1;
}

uint64_t sub_2978184AC(uint64_t *a1, uint64_t a2)
{
  v3 = sub_2977FB7B8(a1) - a2;

  return sub_297805EA4(a1, 0, v3);
}

uint64_t sub_2978184F0(void *a1, uint64_t a2)
{
  sub_297804560(v6);
  sub_297804560(v5);
  result = sub_297816228(a1, 0, a2, v6[0], v6[1], v5[0], v5[1]);
  *a1 = &unk_2A1E549F8;
  return result;
}

uint64_t sub_297818560(void *a1, uint64_t a2)
{
  sub_297804560(v6);
  sub_297804560(v5);
  result = sub_297816228(a1, 2, a2, v6[0], v6[1], v5[0], v5[1]);
  *a1 = &unk_2A1E54A58;
  a1[9] = 0;
  a1[10] = 0;
  return result;
}

uint64_t sub_2978185D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_297804560(v10);
  sub_297804560(v9);
  result = sub_297816228(a1, 5, a2, v10[0], v10[1], v9[0], v9[1]);
  *a1 = &unk_2A1E54AE8;
  a1[9] = a3;
  a1[10] = a4;
  return result;
}

uint64_t sub_297818658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  result = sub_297816228(a1, 4, a2, a3, a4, a5, a6);
  *result = &unk_2A1E54AB8;
  *(result + 72) = a7;
  *(result + 76) = 1;
  *(result + 78) = 1;
  *(result + 80) = 0;
  return result;
}

uint64_t sub_2978186C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  result = sub_297816228(a1, 3, a2, a3, a4, a5, a6);
  *result = &unk_2A1E54A88;
  *(result + 72) = a7;
  *(result + 76) = 1;
  *(result + 80) = 0;
  return result;
}

uint64_t sub_29781872C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v16 = a7;
  *(&v16 + 1) = a8;
  v9 = sub_297816228(a1, 1, a2, a3, a4, a5, a6);
  *v9 = &unk_2A1E54A28;
  *(v9 + 72) = v16;
  v10 = sub_2977FB720(&v16);
  v11 = sub_29780ACAC(v10);
  v12 = sub_2977FB728(&v16);
  v13 = sub_29780ACAC(v12);
  sub_2977FB7C0(&v15, v11, v13);
  *(a1 + 16) = v15;
  return a1;
}

uint64_t sub_2978187DC(uint64_t result)
{
  if (*(result + 76) == 1)
  {
    v5[3] = v1;
    v5[4] = v2;
    v5[0] = sub_29781887C(result);
    v4 = sub_2978160C0();
    result = sub_2978188B4(v5, &v4);
    if (result)
    {
      do
      {
        v3 = sub_2978188EC(v5);
        (*(*v3 + 8))(v3);
        sub_2978188F8(v5);
        result = sub_2978188B4(v5, &v4);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t sub_29781887C(uint64_t a1)
{
  *(a1 + 76) = 0;
  sub_2977FDEF4();
  sub_2978188F8(&v2);
  return v2;
}

BOOL sub_2978188B4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return 1;
  }

  if (v2)
  {
    return *(v2 + 80) != *(*a2 + 80);
  }

  return 0;
}

uint64_t *sub_2978188F8(uint64_t *a1)
{
  sub_29781785C(*a1);
  if (!*(*a1 + 80))
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_297818934(uint64_t result)
{
  if (*(result + 76) == 1)
  {
    v5[3] = v1;
    v5[4] = v2;
    v5[0] = sub_2978189D4(result);
    v4 = sub_2978160C0();
    result = sub_2978188B4(v5, &v4);
    if (result)
    {
      do
      {
        v3 = sub_2978188EC(v5);
        (*(*v3 + 8))(v3);
        sub_297818A0C(v5);
        result = sub_2978188B4(v5, &v4);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t sub_2978189D4(uint64_t a1)
{
  *(a1 + 76) = 0;
  sub_2977FDEF4();
  sub_297818A0C(&v2);
  return v2;
}

uint64_t *sub_297818A0C(uint64_t *a1)
{
  sub_2978179A4(*a1);
  if (!*(*a1 + 80))
  {
    *a1 = 0;
  }

  return a1;
}

void sub_297818A48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_297818A7C(a2);

    j__free(v2);
  }
}

uint64_t sub_297818A80(uint64_t a1)
{
  sub_297818AB4(a1 + 152);
  sub_297818154(a1 + 8);
  return a1;
}

uint64_t sub_297818AC0(uint64_t a1)
{
  v2 = sub_297818B70();
  sub_297818AF4(a1, v2);
  return a1;
}

uint64_t sub_297818AF4(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    sub_297818AF4(result, *a2);
    sub_297818AF4(v3, a2[1]);
    nullsub_1();
    v5 = v4;
    j_nullsub_1();
    sub_297818B8C();

    return sub_297809C98(v5, a2, 1);
  }

  return result;
}

uint64_t sub_297818B9C(uint64_t a1)
{
  if (sub_29780344C(a1))
  {
    return sub_2978047FC(a1) - 1;
  }

  else
  {
    return 22;
  }
}

uint64_t sub_297818BD8(std::string *a1, std::string::size_type a2, std::string::size_type a3, std::string::size_type a4, std::string::size_type a5, std::string::size_type a6, std::string::size_type a7)
{
  nullsub_1();
  sub_2977FDEF4();
  sub_297818CEC();
  std::string::__grow_by(a1, a2, a3, a4, a5, a6, a7);
  sub_2977FD5DC(a1, a4 - a6 + a7);
  return sub_297818CF8(&v15);
}

uint64_t sub_297818C84(uint64_t a1, uint64_t a2)
{
  if (sub_29780344C(a1))
  {

    return sub_2977FD5DC(a1, a2);
  }

  else
  {

    return sub_297803470(a1, a2);
  }
}

void sub_297818D24(uint64_t *a1)
{
  sub_2978032A4(*a1);

  nullsub_1();
}

uint64_t sub_297818D68(uint64_t a1)
{
  sub_297818D98();
  j_nullsub_1();
  *(a1 + 176) = v2;
  return a1;
}

uint64_t sub_297818D9C(uint64_t a1)
{
  v2 = sub_297818DCC(a1);
  sub_297818DD0(v2 + 40);
  return a1;
}

uint64_t sub_297818DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
    ;
  }

  return v5;
}

uint64_t sub_297818E54(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  sub_297818E84(a1, &v3);
  nullsub_1();
  return v3;
}

uint64_t sub_297818E84(uint64_t a1, void *a2)
{
  v4 = sub_2977FB720(a2);
  v5 = sub_297818F48(v4);
  v6 = sub_297803A7C(v4);
  if (v4 == *(a1 + 176))
  {
    *(a1 + 176) = v5;
  }

  else
  {
    sub_297818F4C(v6, v5);
  }

  sub_2977FDEF4();
  sub_2977FDEF4();
  *a2 = v8;
  nullsub_1();
  sub_297818F4C(v4, 0);
  sub_2977FDEF4();
  return v4;
}

void *sub_297818F50(void *a1, void *a2, void *a3)
{
  for (i = a1; i != a2; i += 3)
  {
    if (sub_297818FA8(i, a3))
    {
      break;
    }
  }

  return i;
}

uint64_t sub_297818FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2977FB7B8(a1);
  v7 = sub_297819044(a3, v6, a2);
  sub_2977FB7B8(a1);
  nullsub_1();
  sub_2977FD5DC(a1, v7);
  return a2;
}

uint64_t sub_297819068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FD8FC(a1, a2);
  v7 = v6;
  j_j_nullsub_1();
  v9 = sub_2978190F8(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2977FD988(a1, v9);
  v13 = sub_2977FD98C(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

uint64_t sub_297819108(const void *a1, uint64_t a2, char *a3)
{
  v7 = a2;
  v4 = a2 - a1;
  sub_297819160(a3, a1, (a2 - a1) >> 3);
  v6 = &a3[v4];
  return sub_2977FD958(&v7, &v6);
}

void *sub_297819160(void *result, const void *a2, uint64_t a3)
{
  if (a3)
  {
    return memmove(result, a2, 8 * a3);
  }

  return result;
}

uint64_t sub_2978191A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29781921C(a1, a2);
  v6 = sub_297819248(v5);
  v8 = v7;
  v11 = sub_29781924C(a1, v6);
  v10 = sub_297813268(a3, v8);
  return sub_2977FD958(&v11, &v10);
}

uint64_t sub_29781921C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  return sub_2977FD958(&v4, &v3);
}

uint64_t sub_297819250(const void *a1, uint64_t a2, char *a3)
{
  v7 = a2;
  v4 = a2 - a1;
  sub_2978192B4(a3, a1, 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3));
  v6 = &a3[v4];
  return sub_2977FD958(&v7, &v6);
}

void *sub_2978192B4(void *result, const void *a2, uint64_t a3)
{
  if (a3)
  {
    return memmove(result, a2, 24 * a3 - 3);
  }

  return result;
}

uint64_t sub_2978192E8(uint64_t a1)
{
  v2 = sub_2977FB7B8(a1) - 4;

  return sub_2977FD5DC(a1, v2);
}

uint64_t sub_297819324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = a2;
  v5 = sub_2977FB720(v8);
  v6 = sub_297803A7C(v5);
  sub_297818F4C(a3, v5);
  sub_2977FDEF4();
  if (v5 == *(a1 + 176))
  {
    *(a1 + 176) = a3;
  }

  else
  {
    sub_297818F4C(v6, a3);
  }

  sub_2977FDEF4();
  nullsub_1();
  sub_2977FDEF4();
  return v8[1];
}

__n128 sub_2978193D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_297819408(a1, 1);
  v4 = *(a2 + 32);
  result = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = result;
  *(v3 + 32) = v4;
  return result;
}

void sub_297819460(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    sub_297819478(result, v3);
  }
}

void sub_297819478(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_2978133A0();

    j__free(v2);
  }
}

uint64_t *sub_2978194E0(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_297803A7C(a2);
  a1[1] = sub_2978094B8(a2);
  return a1;
}

uint64_t sub_297819520(uint64_t a1, const void **a2)
{
  v4 = sub_297818B70();
  sub_297818B94();
  v9 = sub_2978195D0(a1, a2, v4);
  v8 = sub_297819670();
  if (sub_297819654(&v9, &v8) && (nullsub_1(), v6 = v5, sub_2978196E8(&v9), !sub_2978196A0(v6, a2)))
  {
    return v9;
  }

  else
  {
    return sub_297819670();
  }
}