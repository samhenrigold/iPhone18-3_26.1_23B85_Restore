void *sub_EA8604(void *a1, int *a2)
{
  *a1 = &off_26744A8;
  sub_D71F30((a1 + 1), a2);
  return a1;
}

void sub_EA8648(uint64_t a1, void *a2, uint64_t a3)
{
  if (!sub_4D1F6C(a2))
  {
    sub_EA7354(a1, a2, a3);
    v6 = sub_68E508(a2);
    *(a3 + 40) |= 0x40u;
    v7 = *(a3 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    sub_194EA1C((a3 + 752), v6, v8);
    v9 = sub_68E634(a2);
    *(a3 + 40) |= 0x80u;
    v10 = *(a3 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a3 + 760), v9, v11);
    nullsub_1();
    v13 = *v12;
    v14 = v12[1];
    if (*v12 != v14)
    {
      do
      {
        sub_EA754C(a1, v13, a3);
        sub_EA76FC(a1, v13, a3);
        sub_EA87B8(a1, v13, a3);
        v13 += 12656;
      }

      while (v13 != v14);
    }
  }
}

uint64_t sub_EA8758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_EA754C(a1, a2, a3);
  sub_EA76FC(a1, a2, a3);

  return sub_EA87B8(a1, a2, a3);
}

uint64_t sub_EA87B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = -210151305 * ((*(a2 + 1112) - *(a2 + 1104)) >> 3);
  if (v3)
  {
    v6 = result;
    for (i = 0; i != v3; ++i)
    {
      v8 = sub_50EA30((a2 + 1104), i);
      v9 = *(*(a3 + 72) + 8 * i + 8);
      v10 = *(v6 + 16);
      v11 = *(v6 + 24);
      v12 = v10;
      if (v10 != v11)
      {
        v12 = *(v6 + 16);
        while (*v12 != 3)
        {
          if (++v12 == v11)
          {
            goto LABEL_11;
          }
        }
      }

      if (v12 != v11)
      {
        sub_EA7C68(v6, v8, *(*(a3 + 72) + 8 * i + 8));
        v10 = *(v6 + 16);
        v11 = *(v6 + 24);
      }

LABEL_11:
      if (v10 != v11)
      {
        while (*v10 != 2)
        {
          if (++v10 == v11)
          {
            goto LABEL_3;
          }
        }

        if (v10 != v11)
        {
          sub_EA8A24(v6, v8, v9);
        }
      }

LABEL_3:
      sub_EA8184(v6, v8, v9);
      sub_EA7ADC(v6, v8, v9);
      result = (**v6)(v6, v8, v9);
    }
  }

  return result;
}

void sub_EA8938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = v3;
  if (v3 != v4)
  {
    v5 = *(a1 + 16);
    while (*v5 != 3)
    {
      if (++v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = a1;
    v7 = a2;
    v8 = a3;
    sub_EA7C68(a1, a2, a3);
    a1 = v6;
    a2 = v7;
    a3 = v8;
    v3 = *(v6 + 16);
    v4 = *(v6 + 24);
  }

  while (1)
  {
LABEL_10:
    if (v3 == v4)
    {
      goto LABEL_11;
    }

    if (*v3 == 2)
    {
      break;
    }

    ++v3;
  }

  if (v3 == v4)
  {
LABEL_11:

    goto LABEL_13;
  }

  v9 = a1;
  v10 = a2;
  v11 = a3;
  sub_EA8A24(a1, a2, a3);
  a1 = v9;
  a2 = v10;
  a3 = v11;

LABEL_13:
  sub_EA8184(a1, a2, a3);
}

void sub_EA8A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_6823AC(a2 + 1032))
  {
    return;
  }

  *(a3 + 40) |= 0x10u;
  v5 = *(a3 + 208);
  if (v5)
  {
    *(v5 + 40) |= 0x40u;
    v6 = *(v5 + 96);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_9:
    v11 = *(v5 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    v6 = sub_14BB0C4(v12);
    *(v5 + 96) = v6;
    v7 = *sub_681D7C(a2 + 1032);
    v8 = *(v6 + 40);
    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  v9 = *(a3 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  v5 = sub_14BB45C(v10);
  *(a3 + 208) = v5;
  *(v5 + 40) |= 0x40u;
  v6 = *(v5 + 96);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_4:
  v7 = *sub_681D7C(a2 + 1032);
  v8 = *(v6 + 40);
  if (!v8)
  {
    goto LABEL_22;
  }

LABEL_12:
  v13 = *(v6 + 32);
  if (v13 < *v8)
  {
    *(v6 + 32) = v13 + 1;
    sub_64D110(v7, *&v8[2 * v13 + 2]);
    if (sub_682474(a2 + 1032))
    {
      goto LABEL_23;
    }

LABEL_14:
    v14 = sub_68238C(a2 + 1032);
    *(v6 + 16) |= 1u;
    v15 = *(v6 + 96);
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_15:
    sub_64D110(v14, v15);
    v16 = sub_682394(a2 + 1032);
    v17 = v16[8];
    if (v17 > 2)
    {
      goto LABEL_27;
    }

LABEL_16:
    if (v17 == 1)
    {
      if (*v16 == -1)
      {
        goto LABEL_39;
      }
    }

    else if (v17 != 2 || v16[1] == -1 && *v16 == -1 && *(v16 + 1) == *(v16 + 2))
    {
      goto LABEL_39;
    }

    goto LABEL_34;
  }

LABEL_22:
  sub_14BAE64(*(v6 + 24));
  v19 = sub_19593CC(v6 + 24, v18);
  sub_64D110(v7, v19);
  if (!sub_682474(a2 + 1032))
  {
    goto LABEL_14;
  }

LABEL_23:
  v14 = sub_68233C(a2 + 1032);
  *(v6 + 16) |= 1u;
  v15 = *(v6 + 96);
  if (v15)
  {
    goto LABEL_15;
  }

LABEL_24:
  v20 = v14;
  v21 = *(v6 + 8);
  v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
  if (v21)
  {
    v22 = *v22;
  }

  sub_14BAE64(v22);
  *(v6 + 96) = v23;
  sub_64D110(v20, v23);
  v16 = sub_682394(a2 + 1032);
  v17 = v16[8];
  if (v17 <= 2)
  {
    goto LABEL_16;
  }

LABEL_27:
  if (v17 == 3 || v17 == 4)
  {
    v24 = *(v16 + 23);
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(v16 + 1);
    }

    if (v24)
    {
LABEL_34:
      v25 = sub_682394(a2 + 1032);
      *(a3 + 40) |= 0x100u;
      v27 = *(a3 + 240);
      if (!v27)
      {
        v28 = v25;
        v29 = *(a3 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v27 = sub_14BF484(v30);
        *(a3 + 240) = v27;
        v25 = v28;
      }

      sub_586C94(v25, v27, v26);
    }
  }

LABEL_39:
  v31 = sub_1950D4C((a3 + 16), dword_278D0E8, 11, &off_2769CA8, 0);
  sub_682344((a2 + 1032), __p);
  v32 = v31[11];
  if (!v32)
  {
    v34 = *(v31 + 21);
LABEL_47:
    sub_1959254(v31 + 18, v34 + 1);
    v32 = v31[11];
    v34 = *v32;
    goto LABEL_48;
  }

  v33 = *(v31 + 20);
  v34 = *v32;
  if (v33 < *v32)
  {
    *(v31 + 20) = v33 + 1;
    v35 = *&v32[2 * v33 + 2];
    if (*(v35 + 23) < 0)
    {
      operator delete(*v35);
    }

    v36 = *__p;
    *(v35 + 16) = v44;
    *v35 = v36;
    return;
  }

  if (v34 == *(v31 + 21))
  {
    goto LABEL_47;
  }

LABEL_48:
  *v32 = v34 + 1;
  v37 = v31[9];
  if (!v37)
  {
    operator new();
  }

  *v39 = v38;
  v39[1] = sub_195A650;
  v40 = *__p;
  *(v38 + 16) = v44;
  *v38 = v40;
  __p[1] = 0;
  v44 = 0;
  __p[0] = 0;
  v41 = *(v31 + 20);
  v42 = v31[11] + 8 * v41;
  *(v31 + 20) = v41 + 1;
  *(v42 + 8) = v38;
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_EA8DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EA8E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) |= 0x10u;
  v5 = *(a3 + 208);
  if (v5)
  {
    *(v5 + 40) |= 0x80u;
    v6 = *(v5 + 104);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *(a3 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v5 = sub_14BB45C(v10);
    *(a3 + 208) = v5;
    *(v5 + 40) |= 0x80u;
    v6 = *(v5 + 104);
    if (v6)
    {
LABEL_3:
      v7 = *(a2 + 1912);
      v8 = *(a2 + 1920);
      if (v7 == v8)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  v11 = *(v5 + 8);
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
  if (v11)
  {
    v12 = *v12;
  }

  v6 = sub_14BB1FC(v12);
  *(v5 + 104) = v6;
  v7 = *(a2 + 1912);
  v8 = *(a2 + 1920);
  if (v7 != v8)
  {
LABEL_11:
    v13 = 0;
    do
    {
      v14 = sub_681D7C(v7);
      v15 = *v14;
      v16 = *(v14 + 8);
      while (v15 != v16)
      {
        v19 = sub_681D38(v7);
        if (v19 <= 42)
        {
          if (v19 == 30)
          {
            *(v6 + 16) |= 4u;
            v18 = *(v6 + 64);
            if (!v18)
            {
              v31 = *(v6 + 8);
              v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
              if (v31)
              {
                v32 = *v32;
              }

              sub_14BAE64(v32);
              v18 = v33;
              *(v6 + 64) = v33;
            }

            goto LABEL_15;
          }

          if (v19 == 32)
          {
            *(v6 + 16) |= 8u;
            v18 = *(v6 + 72);
            if (!v18)
            {
              v22 = *(v6 + 8);
              v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
              if (v22)
              {
                v23 = *v23;
              }

              sub_14BAE64(v23);
              v18 = v24;
              *(v6 + 72) = v24;
            }

            goto LABEL_15;
          }
        }

        else
        {
          switch(v19)
          {
            case '+':
              *(v6 + 16) |= 2u;
              v18 = *(v6 + 56);
              if (!v18)
              {
                v25 = *(v6 + 8);
                v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
                if (v25)
                {
                  v26 = *v26;
                }

                sub_14BAE64(v26);
                v18 = v27;
                *(v6 + 56) = v27;
              }

              goto LABEL_15;
            case ',':
              *(v6 + 16) |= 1u;
              v18 = *(v6 + 48);
              if (!v18)
              {
                v28 = *(v6 + 8);
                v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
                if (v28)
                {
                  v29 = *v29;
                }

                sub_14BAE64(v29);
                v18 = v30;
                *(v6 + 48) = v30;
              }

              goto LABEL_15;
            case '-':
              v13 = sub_682A60(v7);
              v20 = *(v6 + 40);
              if (v20 && (v21 = *(v6 + 32), v21 < *v20))
              {
                *(v6 + 32) = v21 + 1;
                v18 = *&v20[2 * v21 + 2];
              }

              else
              {
                sub_14BAE64(*(v6 + 24));
                v18 = sub_19593CC(v6 + 24, v17);
              }

LABEL_15:
              sub_64D110(v15, v18);
              break;
          }
        }

        v15 += 20;
      }

      if (sub_682A60(v7))
      {
        *(a3 + 40) |= 0x400000u;
        *(a3 + 292) = 1;
      }

      *(v6 + 16) |= 0x10u;
      *(v6 + 80) = v13;
      v7 += 448;
    }

    while (v7 != v8);
  }
}

void *sub_EA90C0(void *a1, int *a2)
{
  *a1 = &off_26744C0;
  sub_D71F30((a1 + 1), a2);
  return a1;
}

void sub_EA9104(uint64_t a1, void *a2, uint64_t a3)
{
  if (!sub_4D1F6C(a2))
  {
    sub_EA7354(a1, a2, a3);
    v6 = sub_68E508(a2);
    *(a3 + 40) |= 0x40u;
    v7 = *(a3 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    sub_194EA1C((a3 + 752), v6, v8);
    v9 = sub_68E634(a2);
    *(a3 + 40) |= 0x80u;
    v10 = *(a3 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a3 + 760), v9, v11);
    nullsub_1();
    v13 = *v12;
    v14 = v12[1];
    if (*v12 != v14)
    {
      do
      {
        sub_EA754C(a1, v13, a3);
        sub_EA76FC(a1, v13, a3);
        sub_EA9274(a1, v13, a3);
        v13 += 12656;
      }

      while (v13 != v14);
    }
  }
}

uint64_t sub_EA9214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_EA754C(a1, a2, a3);
  sub_EA76FC(a1, a2, a3);

  return sub_EA9274(a1, a2, a3);
}

uint64_t sub_EA9274(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = -210151305 * ((*(a2 + 1112) - *(a2 + 1104)) >> 3);
  if (v3)
  {
    v6 = result;
    for (i = 0; i != v3; ++i)
    {
      v8 = sub_50EA30((a2 + 1104), i);
      v9 = *(*(a3 + 72) + 8 * i + 8);
      v10 = *(v6 + 16);
      v11 = *(v6 + 24);
      v12 = v10;
      if (v10 != v11)
      {
        v12 = *(v6 + 16);
        while (*v12 != 3)
        {
          if (++v12 == v11)
          {
            goto LABEL_11;
          }
        }
      }

      if (v12 != v11)
      {
        sub_EA7C68(v6, v8, *(*(a3 + 72) + 8 * i + 8));
        v10 = *(v6 + 16);
        v11 = *(v6 + 24);
      }

LABEL_11:
      if (v10 != v11)
      {
        while (*v10 != 2)
        {
          if (++v10 == v11)
          {
            goto LABEL_3;
          }
        }

        if (v10 != v11)
        {
          sub_EA94E0(v6, v8, v9);
        }
      }

LABEL_3:
      sub_EA8184(v6, v8, v9);
      sub_EA7ADC(v6, v8, v9);
      result = (**v6)(v6, v8, v9);
    }
  }

  return result;
}

void sub_EA93F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = v3;
  if (v3 != v4)
  {
    v5 = *(a1 + 16);
    while (*v5 != 3)
    {
      if (++v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = a1;
    v7 = a2;
    v8 = a3;
    sub_EA7C68(a1, a2, a3);
    a1 = v6;
    a2 = v7;
    a3 = v8;
    v3 = *(v6 + 16);
    v4 = *(v6 + 24);
  }

  while (1)
  {
LABEL_10:
    if (v3 == v4)
    {
      goto LABEL_11;
    }

    if (*v3 == 2)
    {
      break;
    }

    ++v3;
  }

  if (v3 == v4)
  {
LABEL_11:

    goto LABEL_13;
  }

  v9 = a1;
  v10 = a2;
  v11 = a3;
  sub_EA94E0(a1, a2, a3);
  a1 = v9;
  a2 = v10;
  a3 = v11;

LABEL_13:
  sub_EA8184(a1, a2, a3);
}

void sub_EA94E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_6823AC(a2 + 1032))
  {
    return;
  }

  *(a3 + 40) |= 0x10u;
  v5 = *(a3 + 208);
  if (v5)
  {
    *(v5 + 40) |= 0x40u;
    v6 = *(v5 + 96);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_9:
    v11 = *(v5 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    v6 = sub_14BB0C4(v12);
    *(v5 + 96) = v6;
    v7 = *sub_681D7C(a2 + 1032);
    v8 = *(v6 + 40);
    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  v9 = *(a3 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  v5 = sub_14BB45C(v10);
  *(a3 + 208) = v5;
  *(v5 + 40) |= 0x40u;
  v6 = *(v5 + 96);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_4:
  v7 = *sub_681D7C(a2 + 1032);
  v8 = *(v6 + 40);
  if (!v8)
  {
    goto LABEL_22;
  }

LABEL_12:
  v13 = *(v6 + 32);
  if (v13 < *v8)
  {
    *(v6 + 32) = v13 + 1;
    sub_64D110(v7, *&v8[2 * v13 + 2]);
    if (sub_682474(a2 + 1032))
    {
      goto LABEL_23;
    }

LABEL_14:
    v14 = sub_68238C(a2 + 1032);
    *(v6 + 16) |= 1u;
    v15 = *(v6 + 96);
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_15:
    sub_64D110(v14, v15);
    v16 = sub_682394(a2 + 1032);
    v17 = v16[8];
    if (v17 > 2)
    {
      goto LABEL_27;
    }

LABEL_16:
    if (v17 == 1)
    {
      if (*v16 == -1)
      {
        goto LABEL_39;
      }
    }

    else if (v17 != 2 || v16[1] == -1 && *v16 == -1 && *(v16 + 1) == *(v16 + 2))
    {
      goto LABEL_39;
    }

    goto LABEL_34;
  }

LABEL_22:
  sub_14BAE64(*(v6 + 24));
  v19 = sub_19593CC(v6 + 24, v18);
  sub_64D110(v7, v19);
  if (!sub_682474(a2 + 1032))
  {
    goto LABEL_14;
  }

LABEL_23:
  v14 = sub_68233C(a2 + 1032);
  *(v6 + 16) |= 1u;
  v15 = *(v6 + 96);
  if (v15)
  {
    goto LABEL_15;
  }

LABEL_24:
  v20 = v14;
  v21 = *(v6 + 8);
  v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
  if (v21)
  {
    v22 = *v22;
  }

  sub_14BAE64(v22);
  *(v6 + 96) = v23;
  sub_64D110(v20, v23);
  v16 = sub_682394(a2 + 1032);
  v17 = v16[8];
  if (v17 <= 2)
  {
    goto LABEL_16;
  }

LABEL_27:
  if (v17 == 3 || v17 == 4)
  {
    v24 = *(v16 + 23);
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(v16 + 1);
    }

    if (v24)
    {
LABEL_34:
      v25 = sub_682394(a2 + 1032);
      *(a3 + 40) |= 0x100u;
      v27 = *(a3 + 240);
      if (!v27)
      {
        v28 = v25;
        v29 = *(a3 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v27 = sub_14BF484(v30);
        *(a3 + 240) = v27;
        v25 = v28;
      }

      sub_586C94(v25, v27, v26);
    }
  }

LABEL_39:
  v31 = sub_1950D4C((a3 + 16), dword_278D0E8, 11, &off_2769CA8, 0);
  sub_682344((a2 + 1032), __p);
  v32 = v31[11];
  if (!v32)
  {
    v34 = *(v31 + 21);
LABEL_47:
    sub_1959254(v31 + 18, v34 + 1);
    v32 = v31[11];
    v34 = *v32;
    goto LABEL_48;
  }

  v33 = *(v31 + 20);
  v34 = *v32;
  if (v33 < *v32)
  {
    *(v31 + 20) = v33 + 1;
    v35 = *&v32[2 * v33 + 2];
    if (*(v35 + 23) < 0)
    {
      operator delete(*v35);
    }

    v36 = *__p;
    *(v35 + 16) = v44;
    *v35 = v36;
    return;
  }

  if (v34 == *(v31 + 21))
  {
    goto LABEL_47;
  }

LABEL_48:
  *v32 = v34 + 1;
  v37 = v31[9];
  if (!v37)
  {
    operator new();
  }

  *v39 = v38;
  v39[1] = sub_195A650;
  v40 = *__p;
  *(v38 + 16) = v44;
  *v38 = v40;
  __p[1] = 0;
  v44 = 0;
  __p[0] = 0;
  v41 = *(v31 + 20);
  v42 = v31[11] + 8 * v41;
  *(v31 + 20) = v41 + 1;
  *(v42 + 8) = v38;
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_EA98B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EA98D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) |= 0x10u;
  v5 = *(a3 + 208);
  if (v5)
  {
    *(v5 + 40) |= 0x80u;
    v6 = *(v5 + 104);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *(a3 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v5 = sub_14BB45C(v10);
    *(a3 + 208) = v5;
    *(v5 + 40) |= 0x80u;
    v6 = *(v5 + 104);
    if (v6)
    {
LABEL_3:
      v7 = *(a2 + 1912);
      v8 = *(a2 + 1920);
      if (v7 == v8)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  v11 = *(v5 + 8);
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
  if (v11)
  {
    v12 = *v12;
  }

  v6 = sub_14BB1FC(v12);
  *(v5 + 104) = v6;
  v7 = *(a2 + 1912);
  v8 = *(a2 + 1920);
  if (v7 != v8)
  {
LABEL_11:
    v13 = 0;
    do
    {
      v14 = sub_681D7C(v7);
      v15 = *v14;
      v16 = *(v14 + 8);
      while (v15 != v16)
      {
        v19 = sub_681D38(v7);
        if (v19 <= 42)
        {
          if (v19 == 30)
          {
            *(v6 + 16) |= 4u;
            v18 = *(v6 + 64);
            if (!v18)
            {
              v31 = *(v6 + 8);
              v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
              if (v31)
              {
                v32 = *v32;
              }

              sub_14BAE64(v32);
              v18 = v33;
              *(v6 + 64) = v33;
            }

            goto LABEL_15;
          }

          if (v19 == 32)
          {
            *(v6 + 16) |= 8u;
            v18 = *(v6 + 72);
            if (!v18)
            {
              v22 = *(v6 + 8);
              v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
              if (v22)
              {
                v23 = *v23;
              }

              sub_14BAE64(v23);
              v18 = v24;
              *(v6 + 72) = v24;
            }

            goto LABEL_15;
          }
        }

        else
        {
          switch(v19)
          {
            case '+':
              *(v6 + 16) |= 2u;
              v18 = *(v6 + 56);
              if (!v18)
              {
                v25 = *(v6 + 8);
                v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
                if (v25)
                {
                  v26 = *v26;
                }

                sub_14BAE64(v26);
                v18 = v27;
                *(v6 + 56) = v27;
              }

              goto LABEL_15;
            case ',':
              *(v6 + 16) |= 1u;
              v18 = *(v6 + 48);
              if (!v18)
              {
                v28 = *(v6 + 8);
                v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
                if (v28)
                {
                  v29 = *v29;
                }

                sub_14BAE64(v29);
                v18 = v30;
                *(v6 + 48) = v30;
              }

              goto LABEL_15;
            case '-':
              v13 = sub_682A60(v7);
              v20 = *(v6 + 40);
              if (v20 && (v21 = *(v6 + 32), v21 < *v20))
              {
                *(v6 + 32) = v21 + 1;
                v18 = *&v20[2 * v21 + 2];
              }

              else
              {
                sub_14BAE64(*(v6 + 24));
                v18 = sub_19593CC(v6 + 24, v17);
              }

LABEL_15:
              sub_64D110(v15, v18);
              break;
          }
        }

        v15 += 20;
      }

      if (sub_682A60(v7))
      {
        *(a3 + 40) |= 0x400000u;
        *(a3 + 292) = 1;
      }

      *(v6 + 16) |= 0x10u;
      *(v6 + 80) = v13;
      v7 += 448;
    }

    while (v7 != v8);
  }
}

void sub_EA9B7C()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27BAE00 = 0u;
  *algn_27BAE10 = 0u;
  dword_27BAE20 = 1065353216;
  sub_3A9A34(&xmmword_27BAE00, v0, v0);
  sub_3A9A34(&xmmword_27BAE00, v3, v3);
  sub_3A9A34(&xmmword_27BAE00, __p, __p);
  sub_3A9A34(&xmmword_27BAE00, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27BADD8 = 0;
    qword_27BADE0 = 0;
    qword_27BADD0 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_EA9DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BADE8)
  {
    qword_27BADF0 = qword_27BADE8;
    operator delete(qword_27BADE8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (***sub_EA9E70(uint64_t a1))()
{
  v1 = *(a1 + 80);
  switch(v1)
  {
    case 2:
      v6 = *(a1 + 24);
      if (!v6)
      {
        v6 = &off_2776E58;
      }

      v5 = v6[10];
      goto LABEL_14;
    case 3:
      v3 = *(a1 + 32);
      v4 = &off_2776ED0;
LABEL_8:
      if (!v3)
      {
        v3 = v4;
      }

      v5 = v3[6];
LABEL_14:
      if (v5)
      {
        return v5;
      }

      else
      {
        return &off_277E5E8;
      }

    case 4:
      v2 = *(a1 + 40);
      if (!v2)
      {
        v2 = &off_2776F10;
      }

      v3 = v2[6];
      v4 = &off_277E738;
      goto LABEL_8;
  }

  result = &unk_27BAEE8;
  if ((atomic_load_explicit(&qword_27BAE28, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27BAE28))
    {
      sub_16E4CA4(&unk_27BAEE8, 0, 0);
      __cxa_guard_release(&qword_27BAE28);
    }

    return &unk_27BAEE8;
  }

  return result;
}

void sub_EAAA40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a61 < 0)
  {
    operator delete(__p);
    if ((a55 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a55 & 0x80000000) == 0)
  {
LABEL_3:
    if (a49 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  operator delete(a50);
  if (a49 < 0)
  {
LABEL_4:
    operator delete(a44);
    if ((a43 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  if ((a43 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a37 & 0x80000000) == 0)
    {
LABEL_12:
      __cxa_guard_abort(&qword_27BAE38);
      if (a20 < 0)
      {
        operator delete(a15);
      }

      if (a26 < 0)
      {
        operator delete(a21);
        _Unwind_Resume(a1);
      }

      _Unwind_Resume(a1);
    }

LABEL_11:
    operator delete(a32);
    goto LABEL_12;
  }

LABEL_10:
  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_EAB960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a31 < 0)
  {
    operator delete(__p);
    if ((a37 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a44 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a37 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a32);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a39);
  _Unwind_Resume(exception_object);
}

uint64_t sub_EABAE8(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      sub_EABB60(a1, a2, a2);
      ++a2;
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

uint64_t *sub_EABB60(void *a1, int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (*(v8 + 4) == v3)
        {
          return v8;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_12;
  }

  return v8;
}

void sub_EABE94()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27BAE70 = 0u;
  unk_27BAE80 = 0u;
  dword_27BAE90 = 1065353216;
  sub_3A9A34(&xmmword_27BAE70, v0, v0);
  sub_3A9A34(&xmmword_27BAE70, v3, v3);
  sub_3A9A34(&xmmword_27BAE70, __p, __p);
  sub_3A9A34(&xmmword_27BAE70, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27BAE48 = 0;
    qword_27BAE50 = 0;
    qword_27BAE40 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_EAC0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BAE58)
  {
    qword_27BAE60 = qword_27BAE58;
    operator delete(qword_27BAE58);
  }

  _Unwind_Resume(exception_object);
}

void **sub_EAC188(void **a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5, int a6, double a7)
{
  v23 = a5;
  v22 = a7;
  v21 = a6;
  if (a4 == -1)
  {
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  }

  else
  {
    v12 = a4;
  }

  v20 = v12;
  v19 = 0;
  sub_538D0(a2, __p);
  v13 = a1[1];
  if (v13 >= a1[2])
  {
    a1[1] = sub_EACA9C(a1, &v19, __p, a3, &v20, &v23, &v22, &v21);
    if (SHIBYTE(v18) < 0)
    {
LABEL_14:
      operator delete(__p[0]);
    }
  }

  else
  {
    *v13 = 0;
    if (SHIBYTE(v18) < 0)
    {
      sub_325C(v13 + 8, __p[0], __p[1]);
    }

    else
    {
      v14 = *__p;
      *(v13 + 3) = v18;
      *(v13 + 8) = v14;
    }

    if (*(a3 + 23) < 0)
    {
      sub_325C(v13 + 32, *a3, *(a3 + 1));
    }

    else
    {
      v16 = *a3;
      *(v13 + 6) = *(a3 + 2);
      *(v13 + 2) = v16;
    }

    *(v13 + 14) = v12;
    *(v13 + 15) = a5;
    *(v13 + 8) = a7;
    *(v13 + 18) = a6;
    a1[1] = v13 + 80;
    a1[1] = v13 + 80;
    if (SHIBYTE(v18) < 0)
    {
      goto LABEL_14;
    }
  }

  return a1;
}

void sub_EAC2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v16 + 31) < 0)
  {
    operator delete(*v15);
  }

  *(v14 + 8) = v16;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void **sub_EAC330(void **a1, void *a2, __int128 *a3, unsigned int a4, int a5, int a6, double a7)
{
  v23 = a5;
  v22 = a7;
  v21 = a6;
  if (a4 == -1)
  {
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  }

  else
  {
    v12 = a4;
  }

  v20 = v12;
  v19 = 0;
  sub_53FB4(a2, __p);
  v13 = a1[1];
  if (v13 >= a1[2])
  {
    a1[1] = sub_EACA9C(a1, &v19, __p, a3, &v20, &v23, &v22, &v21);
    if (SHIBYTE(v18) < 0)
    {
LABEL_14:
      operator delete(__p[0]);
    }
  }

  else
  {
    *v13 = 0;
    if (SHIBYTE(v18) < 0)
    {
      sub_325C(v13 + 8, __p[0], __p[1]);
    }

    else
    {
      v14 = *__p;
      *(v13 + 3) = v18;
      *(v13 + 8) = v14;
    }

    if (*(a3 + 23) < 0)
    {
      sub_325C(v13 + 32, *a3, *(a3 + 1));
    }

    else
    {
      v16 = *a3;
      *(v13 + 6) = *(a3 + 2);
      *(v13 + 2) = v16;
    }

    *(v13 + 14) = v12;
    *(v13 + 15) = a5;
    *(v13 + 8) = a7;
    *(v13 + 18) = a6;
    a1[1] = v13 + 80;
    a1[1] = v13 + 80;
    if (SHIBYTE(v18) < 0)
    {
      goto LABEL_14;
    }
  }

  return a1;
}

void sub_EAC494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v16 + 31) < 0)
  {
    operator delete(*v15);
  }

  *(v14 + 8) = v16;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_EAC4D8(void *a1, __int128 *a2, __int128 *a3, unsigned int a4, int a5, int a6, double a7)
{
  v28 = a5;
  v27 = a7;
  v26 = a6;
  if (a4 == -1)
  {
    v11 = a1[1];
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - *a1) >> 4);
    v25 = v9;
    v24 = 1;
    if (v11 < a1[2])
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = sub_EACF0C(a1, &v24, a2, a3, &v25, &v28, &v27, &v26);
    goto LABEL_12;
  }

  LODWORD(v9) = a4;
  v11 = a1[1];
  v10 = a1[2];
  v25 = a4;
  v24 = 1;
  if (v11 >= v10)
  {
    goto LABEL_6;
  }

LABEL_3:
  *v11 = 1;
  if (*(a2 + 23) < 0)
  {
    v14 = a6;
    v15 = a7;
    v16 = a5;
    sub_325C((v11 + 8), *a2, *(a2 + 1));
    a5 = v16;
    a7 = v15;
    a6 = v14;
  }

  else
  {
    v12 = *a2;
    *(v11 + 24) = *(a2 + 2);
    *(v11 + 8) = v12;
  }

  if (*(a3 + 23) < 0)
  {
    v18 = *a3;
    v19 = *(a3 + 1);
    v20 = a6;
    v21 = a7;
    v22 = a5;
    sub_325C((v11 + 32), v18, v19);
    a5 = v22;
    a7 = v21;
    a6 = v20;
  }

  else
  {
    v17 = *a3;
    *(v11 + 48) = *(a3 + 2);
    *(v11 + 32) = v17;
  }

  *(v11 + 56) = v9;
  *(v11 + 60) = a5;
  *(v11 + 64) = a7;
  *(v11 + 72) = a6;
  v13 = v11 + 80;
  a1[1] = v11 + 80;
LABEL_12:
  a1[1] = v13;
  return a1;
}

void sub_EAC650(_Unwind_Exception *exception_object)
{
  if (*(v3 + 31) < 0)
  {
    operator delete(*v2);
    *(v1 + 8) = v3;
    _Unwind_Resume(exception_object);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

void sub_EAC680(uint64_t *a1@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_EAD16C(a2, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4));
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    while (1)
    {
      sub_12CBD00(&v12, 0, 0);
      v6 = v14;
      if (!*v4)
      {
        break;
      }

      if (*v4 == 1)
      {
        v7 = 3;
LABEL_8:
        v6 = v14 | 8;
        v18 = v7;
      }

      v17 = *(v4 + 56);
      v14 = v6 | 5;
      v8 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v8 = *v8;
      }

      sub_194EA1C(&v15, (v4 + 32), v8);
      v14 |= 2u;
      v9 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v9 = *v9;
      }

      v10 = v4 + 8;
      sub_194EA1C(&v16, (v4 + 8), v9);
      v11 = a2[1];
      if (v11 >= a2[2])
      {
        a2[1] = sub_EAD3AC(a2, &v12);
        sub_12CBDFC(&v12);
        v4 = v10 + 72;
        if (v10 + 72 == v5)
        {
          return;
        }
      }

      else
      {
        sub_EAD318(a2, a2[1], &v12);
        a2[1] = v11 + 48;
        sub_12CBDFC(&v12);
        v4 = v10 + 72;
        if (v10 + 72 == v5)
        {
          return;
        }
      }
    }

    v7 = 2;
    goto LABEL_8;
  }
}

void sub_EAC850(uint64_t *a1@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_EAD564(a2, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4));
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    while (1)
    {
      sub_12CC64C(v15, 0, 0);
      v6 = v17;
      if (!*v4)
      {
        break;
      }

      if (*v4 == 1)
      {
        v7 = 3;
LABEL_8:
        v6 = v17 | 0x40;
        v24 = v7;
      }

      v20 = *(v4 + 56);
      v17 = v6 | 5;
      v8 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v8 = *v8;
      }

      sub_194EA1C(&v18, (v4 + 32), v8);
      v17 |= 2u;
      v9 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v9 = *v9;
      }

      v10 = v4 + 8;
      sub_194EA1C(&v19, (v4 + 8), v9);
      v22 = *(v4 + 64);
      v11 = *(v4 + 72);
      v17 |= 0x18u;
      v21 = v11;
      v12 = sub_685BF4(v11);
      if (v12 <= 4)
      {
        v17 |= 0x20u;
        v23 = v12;
        v13 = *(v4 + 60);
        if ((v13 - 1) <= 9)
        {
          goto LABEL_18;
        }

LABEL_15:
        v14 = a2[1];
        if (v14 < a2[2])
        {
          goto LABEL_19;
        }

LABEL_3:
        a2[1] = sub_EAD7B0(a2, v15);
        sub_12CC74C(v15);
        v4 = v10 + 72;
        if (v10 + 72 == v5)
        {
          return;
        }
      }

      else
      {
        v13 = *(v4 + 60);
        if ((v13 - 1) > 9)
        {
          goto LABEL_15;
        }

LABEL_18:
        v17 |= 0x80u;
        v25 = v13 + 2;
        v14 = a2[1];
        if (v14 >= a2[2])
        {
          goto LABEL_3;
        }

LABEL_19:
        sub_EAD71C(a2, v14, v15);
        a2[1] = (v14 + 72);
        sub_12CC74C(v15);
        v4 = v10 + 72;
        if (v10 + 72 == v5)
        {
          return;
        }
      }
    }

    v7 = 2;
    goto LABEL_8;
  }
}

int64_t sub_EACA9C(void **a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t *a5, int *a6, uint64_t *a7, int *a8)
{
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v8 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v8)
  {
    v8 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v11 = 0x333333333333333;
  }

  else
  {
    v11 = v8;
  }

  if (v11)
  {
    if (v11 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 16 * ((a1[1] - *a1) >> 4);
  v13 = *a5;
  v14 = *a6;
  v15 = *a7;
  v16 = *a8;
  *v12 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C((v12 + 8), *a3, *(a3 + 8));
  }

  else
  {
    *(v12 + 8) = *a3;
    *(v12 + 24) = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_325C((v12 + 32), *a4, *(a4 + 8));
  }

  else
  {
    *(v12 + 32) = *a4;
    *(v12 + 48) = *(a4 + 16);
  }

  *(v12 + 56) = v13;
  *(v12 + 60) = v14;
  *(v12 + 64) = v15;
  *(v12 + 72) = v16;
  v17 = a1[1];
  v18 = (v12 + *a1 - v17);
  sub_EACD24(a1, *a1, v17, v18);
  v19 = *a1;
  *a1 = v18;
  a1[1] = (v12 + 80);
  a1[2] = 0;
  if (v19)
  {
    operator delete(v19);
  }

  return v12 + 80;
}

void sub_EACC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v4 + 31) < 0)
  {
    operator delete(*v3);
    sub_EACCA0(va);
    _Unwind_Resume(a1);
  }

  sub_EACCA0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_EACCA0(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
      if ((*(i - 49) & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((*(i - 49) & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(*(i - 72));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_EACD24(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a2 + 2;
    do
    {
      v10 = v7 - 2;
      *v4 = *(v7 - 32);
      if (*(v7 - 1) < 0)
      {
        sub_325C((v4 + 8), *(v7 - 3), *(v7 - 2));
      }

      else
      {
        v11 = *(v7 - 24);
        *(v4 + 24) = *(v7 - 1);
        *(v4 + 8) = v11;
      }

      if (*(v7 + 23) < 0)
      {
        sub_325C((v4 + 32), *v7, *(v7 + 1));
      }

      else
      {
        v8 = *v7;
        *(v4 + 48) = *(v7 + 2);
        *(v4 + 32) = v8;
      }

      v9 = *(v7 + 24);
      *(v4 + 72) = *(v7 + 10);
      *(v4 + 56) = v9;
      v4 = v12 + 80;
      v12 += 80;
      v7 += 5;
    }

    while (v10 + 5 != a3);
    while (1)
    {
      if (v6 == a3)
      {
        return;
      }

      if (*(v6 + 55) < 0)
      {
        operator delete(*(v6 + 4));
        if ((*(v6 + 31) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }
      }

      else if ((*(v6 + 31) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      operator delete(*(v6 + 1));
LABEL_10:
      v6 += 5;
    }
  }
}

void sub_EACE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 31) < 0)
  {
    operator delete(*v10);
  }

  sub_EACE8C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_EACE8C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (1)
    {
      if (v3 == v4)
      {
        return a1;
      }

      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 48));
        if ((*(v3 - 49) & 0x80000000) == 0)
        {
          goto LABEL_4;
        }
      }

      else if ((*(v3 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      operator delete(*(v3 - 72));
LABEL_4:
      v3 -= 80;
    }
  }

  return a1;
}

uint64_t sub_EACF0C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t *a5, int *a6, uint64_t *a7, int *a8)
{
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4) + 1;
  if (v8 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v8)
  {
    v8 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v11 = 0x333333333333333;
  }

  else
  {
    v11 = v8;
  }

  if (v11)
  {
    if (v11 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 16 * ((*(a1 + 8) - *a1) >> 4);
  v13 = *a5;
  v14 = *a6;
  v15 = *a7;
  v16 = *a8;
  *v12 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C((v12 + 8), *a3, *(a3 + 8));
  }

  else
  {
    *(v12 + 8) = *a3;
    *(v12 + 24) = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_325C((v12 + 32), *a4, *(a4 + 8));
  }

  else
  {
    *(v12 + 32) = *a4;
    *(v12 + 48) = *(a4 + 16);
  }

  *(v12 + 56) = v13;
  *(v12 + 60) = v14;
  *(v12 + 64) = v15;
  *(v12 + 72) = v16;
  v17 = *(a1 + 8);
  v18 = v12 + *a1 - v17;
  sub_EACD24(a1, *a1, v17, v18);
  v19 = *a1;
  *a1 = v18;
  *(a1 + 8) = v12 + 80;
  *(a1 + 16) = 0;
  if (v19)
  {
    operator delete(v19);
  }

  return v12 + 80;
}

void sub_EAD0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v4 + 31) < 0)
  {
    operator delete(*v3);
    sub_EACCA0(va);
    _Unwind_Resume(a1);
  }

  sub_EACCA0(va);
  _Unwind_Resume(a1);
}

void **sub_EAD110(void **a1)
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
        v3 = sub_12CC74C(v3 - 72);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_EAD16C(void **a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }
}

uint64_t sub_EAD2C4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_12CBDFC(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_EAD318(uint64_t a1, void *a2, uint64_t a3)
{
  sub_12CBD00(a2, 0, 0);
  if (v4 != a3)
  {
    v5 = *(v4 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v6 = *(a3 + 8);
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v5 == v6)
    {
      sub_12CC5D8(v4, a3);
    }

    else
    {
      sub_12CC584(v4, a3);
    }
  }
}

uint64_t sub_EAD3AC(void **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 16 * ((a1[1] - *a1) >> 4);
  sub_EAD318(a1, v15, a2);
  v6 = 48 * v2 + 48;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = &v9[v15];
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = &v9[v15];
    do
    {
      sub_EAD318(a1, v13, v12);
      v12 += 48;
      v13 += 48;
      v11 -= 48;
    }

    while (v12 != v8);
    do
    {
      sub_12CBDFC(v7);
      v7 += 48;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_EAD524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_EAD2C4(va);
  _Unwind_Resume(a1);
}

void sub_EAD538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v4)
  {
    v6 = v3 - 48;
    do
    {
      v6 = sub_12CBDFC(v6) - 48;
      v4 += 48;
    }

    while (v4);
  }

  sub_EAD2C4(va);
  _Unwind_Resume(a1);
}

void sub_EAD564(void **a1, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1794();
  }
}

uint64_t sub_EAD6C8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    sub_12CC74C(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_EAD71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_12CC64C(a2, 0, 0);
  if (v4 != a3)
  {
    v6 = *(v4 + 8);
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v7 = *(a3 + 8);
    if ((v7 & 2) != 0)
    {
      v7 = 0;
    }

    else if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v6 == v7)
    {
      *&result = sub_12CD378(v4, a3).n128_u64[0];
    }

    else
    {
      sub_12CD324(v4, a3);
    }
  }

  return result;
}

uint64_t sub_EAD7B0(void **a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  sub_EAD71C(a1, v15, a2);
  v6 = 72 * v2 + 72;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = &v9[v15];
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = &v9[v15];
    do
    {
      sub_EAD71C(a1, v13, v12);
      v12 += 72;
      v13 += 72;
      v11 -= 72;
    }

    while (v12 != v8);
    do
    {
      sub_12CC74C(v7);
      v7 += 72;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_EAD940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_EAD6C8(va);
  _Unwind_Resume(a1);
}

void sub_EAD954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v4)
  {
    v6 = v3 - 72;
    do
    {
      v6 = sub_12CC74C(v6) - 72;
      v4 += 72;
    }

    while (v4);
  }

  sub_EAD6C8(va);
  _Unwind_Resume(a1);
}

void sub_EAD980(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 56);
  if (v2 >= 1)
  {
    v5 = 0;
    v6 = 8;
    do
    {
      v9 = *(*(a2 + 64) + v6);
      if (*(v9 + 884) <= 1u)
      {
        v10 = *result;
        *(v9 + 40) |= 0x400u;
        v8 = *(v9 + 784);
        if (!v8)
        {
          v11 = *(v9 + 8);
          v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
          if (v11)
          {
            v12 = *v12;
          }

          sub_14BCBFC(v12);
          v8 = v7;
          *(v9 + 784) = v7;
        }

        sub_ECB0E0((v10 + 3200 * v5++), v8);
      }

      v6 += 8;
      --v2;
    }

    while (v2);
  }
}

void sub_EADA40()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27BAF30 = 0u;
  unk_27BAF40 = 0u;
  dword_27BAF50 = 1065353216;
  sub_3A9A34(&xmmword_27BAF30, v0, v0);
  sub_3A9A34(&xmmword_27BAF30, v3, v3);
  sub_3A9A34(&xmmword_27BAF30, __p, __p);
  sub_3A9A34(&xmmword_27BAF30, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_EADC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27BAF30);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_EADC88(void *result, uint64_t a2)
{
  v2 = *(a2 + 288);
  if (v2 >= 1)
  {
    v5 = 0;
    for (i = 8; ; i += 8)
    {
      v9 = *(*(a2 + 296) + i);
      if (*(v9 + 292) > 1u)
      {
        goto LABEL_5;
      }

      *(v9 + 40) |= 0x10u;
      v10 = *(v9 + 264);
      if (!v10)
      {
        break;
      }

      *(v10 + 4) |= 1u;
      v8 = v10[3];
      if (!v8)
      {
        goto LABEL_13;
      }

LABEL_4:
      sub_ECB0E0((*result + 3200 * v5++), v8);
LABEL_5:
      if (!--v2)
      {
        return;
      }
    }

    v11 = *(v9 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    v10 = sub_14BD174(v12);
    *(v9 + 264) = v10;
    *(v10 + 4) |= 1u;
    v8 = v10[3];
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_13:
    v13 = v10[1];
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    sub_14BCBFC(v14);
    v8 = v7;
    v10[3] = v7;
    goto LABEL_4;
  }
}

void sub_EADD94()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27BAF58 = 0u;
  unk_27BAF68 = 0u;
  dword_27BAF78 = 1065353216;
  sub_3A9A34(&xmmword_27BAF58, v0, v0);
  sub_3A9A34(&xmmword_27BAF58, v3, v3);
  sub_3A9A34(&xmmword_27BAF58, __p, __p);
  sub_3A9A34(&xmmword_27BAF58, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_EADF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27BAF58);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_EADFDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int **a4@<X3>, uint32x2_t *a5@<X4>, uint64_t a6@<X8>)
{
  sub_14CA0A8(a6, 0, 0);
  *(a6 + 40) |= 0x80u;
  *(a6 + 248) = 0;
  sub_58568(v64);
  sub_585EC(v64, __p);
  *(a6 + 40) |= 2u;
  v11 = *(a6 + 8);
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
  if (v11)
  {
    v12 = *v12;
  }

  sub_194EA30((a6 + 200), __p, v12);
  if (v57 < 0)
  {
    operator delete(__p[0]);
    v13 = *(a6 + 64);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = *(a6 + 64);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v14 = *(a6 + 56);
  if (v14 < *v13)
  {
    *(a6 + 56) = v14 + 1;
    v15 = *&v13[2 * v14 + 2];
    goto LABEL_10;
  }

LABEL_9:
  v16 = sub_14D59A4(*(a6 + 48));
  v15 = sub_19593CC(a6 + 48, v16);
LABEL_10:
  sub_ED2508(v64, *a1);
  v17 = sub_58BBC(a3);
  if (*v17 != v17[1])
  {
    v18 = sub_58BBC(a3);
    v19 = sub_5EBC84(a3);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    sub_ED250C(v64, v18, a2, v19, &v53, __p);
    v20 = v53;
    if (v53)
    {
      v54 = v53;
      operator delete(v53);
    }

    sub_EAE444(v20, v15, __p, *(a2 + 201));
    if (v61)
    {
      v21 = (v61 + 8);
    }

    else
    {
      v21 = 0;
    }

    if (v60)
    {
      v22 = 8 * v60;
      do
      {
        v23 = *v21;
        v24 = *(a6 + 136);
        if (v24 && (v25 = *(a6 + 128), v25 < *v24))
        {
          *(a6 + 128) = v25 + 1;
          v26 = *&v24[2 * v25 + 2];
        }

        else
        {
          sub_14BE3A4(*(a6 + 120));
          v26 = sub_19593CC(a6 + 120, v27);
        }

        sub_14A515C(v26, v23);
        ++v21;
        v22 -= 8;
      }

      while (v22);
    }

    if (v63)
    {
      v28 = (v63 + 8);
    }

    else
    {
      v28 = 0;
    }

    if (v62)
    {
      v29 = 8 * v62;
      do
      {
        v30 = *v28;
        v31 = *(a6 + 112);
        if (v31 && (v32 = *(a6 + 104), v32 < *v31))
        {
          *(a6 + 104) = v32 + 1;
          v33 = *&v31[2 * v32 + 2];
        }

        else
        {
          v34 = sub_14BE0EC(*(a6 + 96));
          v33 = sub_19593CC(a6 + 96, v34);
        }

        sub_14A1E0C(v33, v30);
        ++v28;
        v29 -= 8;
      }

      while (v29);
    }

    if (v59)
    {
      v35 = (v59 + 8);
    }

    else
    {
      v35 = 0;
    }

    if (v58)
    {
      v36 = 8 * v58;
      do
      {
        v37 = *v35;
        v38 = *(a6 + 88);
        if (v38 && (v39 = *(a6 + 80), v39 < *v38))
        {
          *(a6 + 80) = v39 + 1;
          v40 = *&v38[2 * v39 + 2];
        }

        else
        {
          sub_14BE058(*(a6 + 72));
          v40 = sub_19593CC(a6 + 72, v41);
        }

        sub_14A1464(v40, v37);
        ++v35;
        v36 -= 8;
      }

      while (v36);
    }

    sub_1758FB8(__p);
  }

  sub_EAE61C(a1, a3, a2, v15);
  if (*(a2 + 200) == 1)
  {
    sub_5EB608();
    v43 = *v42;
    v44 = v42[1];
    if (*v42 != v44)
    {
      do
      {
        sub_EC6954((v43 + 7392), v15);
        v43 += 12656;
      }

      while (v43 != v44);
    }
  }

  sub_EAEB10(a1, a3, a4, a2, a5);
  v45 = sub_57478(a3);
  result = sub_73EC4(v45);
  if (*result != 0x7FFFFFFF && *(result + 4) != 0x7FFFFFFF && *(result + 16) != 0x7FFFFFFFFFFFFFFFLL && *(result + 8) != 0x7FFFFFFF)
  {
    v50 = sub_57478(a3);
    result = sub_73EC4(v50);
    if (*result <= 978307199)
    {
      v51 = 0;
    }

    else
    {
      v51 = *result - 978307200;
    }

    *(a6 + 40) |= 0x100u;
    *(a6 + 252) = v51;
  }

  return result;
}

void sub_EAE3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1758FB8(&a13);
  sub_14CA828(v18);
  _Unwind_Resume(a1);
}

void sub_EAE444(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a3 + 56);
  if (v4)
  {
    v8 = *(a3 + 64);
    if (v8)
    {
      v9 = (v8 + 8);
    }

    else
    {
      v9 = 0;
    }

    v10 = 8 * v4;
    do
    {
      while (1)
      {
        v13 = *v9;
        v14 = *(a2 + 112);
        if (v14)
        {
          v15 = *(a2 + 104);
          if (v15 < *v14)
          {
            break;
          }
        }

        v11 = sub_14BD738(*(a2 + 96));
        v12 = sub_19593CC(a2 + 96, v11);
        sub_1490E10(v12, v13);
        ++v9;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_10;
        }
      }

      *(a2 + 104) = v15 + 1;
      sub_1490E10(*&v14[2 * v15 + 2], v13);
      ++v9;
      v10 -= 8;
    }

    while (v10);
LABEL_10:
    if (a4)
    {
      v16 = *(a3 + 112);
      if (v16)
      {
        v17 = (v16 + 8);
      }

      else
      {
        v17 = 0;
      }

      v18 = *(a3 + 104);
      if (v18)
      {
        v19 = 8 * v18;
        do
        {
          while (1)
          {
            v22 = *v17;
            v23 = *(a2 + 232);
            if (v23)
            {
              v24 = *(a2 + 224);
              if (v24 < *v23)
              {
                break;
              }
            }

            v20 = sub_14BDE5C(*(a2 + 216));
            v21 = sub_19593CC(a2 + 216, v20);
            sub_149EC4C(v21, v22);
            ++v17;
            v19 -= 8;
            if (!v19)
            {
              goto LABEL_20;
            }
          }

          *(a2 + 224) = v24 + 1;
          sub_149EC4C(*&v23[2 * v24 + 2], v22);
          ++v17;
          v19 -= 8;
        }

        while (v19);
      }

LABEL_20:
      v25 = *(a3 + 136);
      if (v25)
      {
        v26 = (v25 + 8);
      }

      else
      {
        v26 = 0;
      }

      v27 = *(a3 + 128);
      if (v27)
      {
        v28 = 8 * v27;
        do
        {
          while (1)
          {
            v31 = *v26;
            v32 = *(a2 + 256);
            if (v32)
            {
              v33 = *(a2 + 248);
              if (v33 < *v32)
              {
                break;
              }
            }

            v29 = sub_14BDE5C(*(a2 + 240));
            v30 = sub_19593CC(a2 + 240, v29);
            sub_149EC4C(v30, v31);
            ++v26;
            v28 -= 8;
            if (!v28)
            {
              return;
            }
          }

          *(a2 + 248) = v33 + 1;
          sub_149EC4C(*&v32[2 * v33 + 2], v31);
          ++v26;
          v28 -= 8;
        }

        while (v28);
      }
    }
  }
}

BOOL sub_EAE61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  nullsub_1();
  *(a4 + 40) |= 1u;
  v7 = *(a4 + 8);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
  if (v7)
  {
    v8 = *v8;
  }

  sub_194EA1C((a4 + 456), v6, v8);
  v58 = a2;
  sub_5EB608();
  v10 = *v9;
  v59 = *(v9 + 1);
  if (*v9 != v59)
  {
    v61 = a4;
    while (1)
    {
      v11 = *(v10 + 1128);
      v60 = v10;
      v62 = *(v10 + 1136);
      if (v11 != v62)
      {
        break;
      }

LABEL_5:
      v10 = v60 + 12656;
      if (v60 + 12656 == v59)
      {
        goto LABEL_37;
      }
    }

    while (1)
    {
      v12 = *(a4 + 64);
      if (v12 && (v13 = *(a4 + 56), v13 < *v12))
      {
        *(a4 + 56) = v13 + 1;
        v14 = *&v12[2 * v13 + 2];
      }

      else
      {
        v15 = sub_14D5948(*(a4 + 48));
        v9 = sub_19593CC(a4 + 48, v15);
        v14 = v9;
      }

      v16 = *v11;
      v17 = *(v14 + 40);
      *(v14 + 40) = v17 | 8;
      v18 = *(v11 + 1016);
      v19 = v18 / 10;
      v20 = v18 % 10;
      if (v18 < 0)
      {
        v21 = -5;
      }

      else
      {
        v21 = 5;
      }

      *(v14 + 40) = v17 | 0x18;
      *(v14 + 72) = v16;
      *(v14 + 76) = v19 + (((103 * (v21 + v20)) >> 15) & 1) + ((103 * (v21 + v20)) >> 10);
      v22 = *(v11 + 2424);
      v23 = *(v11 + 2432);
      if (v22 != v23)
      {
        *(v14 + 40) = v17 | 0x19;
        v24 = *(v14 + 48);
        if (v24)
        {
          if (v23 != v22)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v25 = *(v14 + 8);
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v26 = *v26;
          }

          sub_14BA684(v26);
          v24 = v9;
          *(v14 + 48) = v9;
          v23 = *(v11 + 2432);
          if (v23 != *(v11 + 2424))
          {
LABEL_23:
            v27 = v23;
            do
            {
              while (1)
              {
                v28 = *(v27 - 16);
                v27 -= 16;
                v29 = v28 / 100;
                v30 = v28 % 100;
                v31 = v28 < 0 ? -50 : 50;
                v32 = v29 + ((5243 * (v31 + v30)) >> 19) + ((5243 * (v31 + v30)) >> 31);
                v33 = v24[4];
                if (v33 == v24[5])
                {
                  v34 = v33 + 1;
                  sub_1958E5C(v24 + 4, v33 + 1);
                  *(*(v24 + 3) + 4 * v33) = v32;
                }

                else
                {
                  *(*(v24 + 3) + 4 * v33) = v32;
                  v34 = v33 + 1;
                }

                v24[4] = v34;
                v35 = *(v23 - 8);
                v36 = v35 / 10;
                v37 = v35 % 10;
                v38 = v35 < 0 ? -5 : 5;
                v39 = v36 + (((103 * (v38 + v37)) >> 15) & 1) + ((103 * (v38 + v37)) >> 10);
                v40 = v24[10];
                if (v40 == v24[11])
                {
                  break;
                }

                *(*(v24 + 6) + 4 * v40) = v39;
                v24[10] = v40 + 1;
                v23 = v27;
                if (v27 == *(v11 + 2424))
                {
                  goto LABEL_8;
                }
              }

              sub_1958E5C(v24 + 10, v40 + 1);
              *(*(v24 + 6) + 4 * v40) = v39;
              v24[10] = v40 + 1;
              v23 = v27;
            }

            while (v27 != *(v11 + 2424));
          }
        }
      }

LABEL_8:
      sub_EAF9D4(v9, v11, v14);
      v11 += 2616;
      a4 = v61;
      if (v11 == v62)
      {
        goto LABEL_5;
      }
    }
  }

LABEL_37:
  if (*(a3 + 201))
  {
    *__p = 0u;
    *v64 = 0u;
    v65 = 1065353216;
    sub_5EB608();
    v43 = *v41;
    v42 = v41[1];
    if (*v41 != v42)
    {
      do
      {
        sub_EAF6BC(v41, v43, __p, a4);
        v43 += 12656;
      }

      while (v43 != v42);
    }

    sub_5EB608();
    v46 = *v44;
    v45 = v44[1];
    if (*v44 != v45)
    {
      do
      {
        sub_EAF83C(v44, v46, __p, a4);
        v46 += 12656;
      }

      while (v46 != v45);
    }

    if (sub_5EBC70(v58))
    {
      v47 = sub_5EBC28(v58);
      v48 = *v47;
      *(a4 + 40) |= 4u;
      v49 = *(a4 + 472);
      if (!v49)
      {
        v50 = *(a4 + 8);
        v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
        if (v50)
        {
          v51 = *v51;
        }

        sub_14BDC34(v51);
        v49 = v47;
        *(a4 + 472) = v47;
      }

      sub_EAEEB0(v47, v48, __p, v49);
    }

    v52 = v64[0];
    if (v64[0])
    {
      do
      {
        v56 = *v52;
        if (*(v52 + 39) < 0)
        {
          operator delete(v52[2]);
        }

        operator delete(v52);
        v52 = v56;
      }

      while (v56);
    }

    v9 = __p[0];
    __p[0] = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  sub_EAF414(v9, v58, a3, a4);
  result = sub_5EBC70(v58);
  if (result)
  {
    v54 = *sub_5EBC28(v58);
    v55 = *v54;
    result = sub_5CC07C(v54);
    if (result && (v55 - 10) <= 2)
    {
      *(a4 + 40) |= 0x40u;
      *(a4 + 504) = 1;
    }
  }

  return result;
}

void sub_EAEAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_EAEAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_EAEAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_EAEB10(uint64_t *a1, uint64_t a2, int **a3, uint64_t a4, uint32x2_t *a5)
{
  nullsub_1();
  v41[0] = 0;
  v48 = 0;
  if (*(v9 + 128) == 1)
  {
    sub_4F1328(v41, v9);
    v48 = 1;
  }

  sub_4EE138(a5, 0);
  if ((v48 & 1) == 0)
  {
    return;
  }

  v10 = sub_58BBC(a2);
  sub_EE3CD8(v40, *a1, a4);
  nullsub_1();
  v12 = sub_E88EC4(v11);
  if (atomic_load_explicit(byte_2733CF0, memory_order_acquire))
  {
    v13 = *a3;
    v14 = a3[1];
    if (*a3 != v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v16 = v12;
    sub_21E52E0();
    v12 = v16;
    v13 = *a3;
    v14 = a3[1];
    if (*a3 != v14)
    {
LABEL_6:
      v15 = &dword_2733CD0;
      while (*v13 != v12)
      {
        v13 += 8;
        if (v13 == v14)
        {
          goto LABEL_14;
        }
      }
    }
  }

  if (v13 == v14)
  {
    v15 = &dword_2733CD0;
  }

  else
  {
    v15 = v13;
  }

LABEL_14:
  sub_EE7528(v40, a2, v15, a5);
  v17 = *v10;
  v18 = *(v10 + 8);
  if (*v10 != v18)
  {
    while (1)
    {
      if ((sub_68D7F4(v17) & 0xFFFFFFFD) != 0)
      {
        goto LABEL_18;
      }

      v20 = sub_EE24F4(*a1);
      v21 = sub_68D7F4(v17);
      sub_EE3B64(v39, v21, v20, 0, 0x7FFFFFFF);
      v35 = -1;
      v37 = 0;
      v38 = 0;
      __p = 0;
      sub_EE3CDC(v40, v17, v39, &v35, a5);
      v22 = __p;
      if (!__p)
      {
        goto LABEL_18;
      }

      v23 = v37;
      v19 = __p;
      if (v37 != __p)
      {
        break;
      }

LABEL_17:
      v37 = v22;
      operator delete(v19);
LABEL_18:
      v17 += 976;
      if (v17 == v18)
      {
        goto LABEL_39;
      }
    }

    while ((*(v23 - 1) & 0x80000000) == 0)
    {
      v25 = *(v23 - 6);
      if (v25)
      {
        goto LABEL_28;
      }

LABEL_29:
      v26 = v23 - 9;
      v27 = *(v23 - 9);
      if (v27)
      {
        v28 = *(v23 - 8);
        v24 = *(v23 - 9);
        if (v28 != v27)
        {
          do
          {
            v29 = *(v28 - 6);
            if (v29)
            {
              *(v28 - 5) = v29;
              operator delete(v29);
            }

            v30 = v28 - 10;
            if (*(v28 - 57) < 0)
            {
              operator delete(*v30);
            }

            v28 -= 10;
          }

          while (v30 != v27);
          v24 = *v26;
        }

        *(v23 - 8) = v27;
        operator delete(v24);
      }

      v23 -= 9;
      if (v26 == v22)
      {
        v19 = __p;
        goto LABEL_17;
      }
    }

    operator delete(*(v23 - 3));
    v25 = *(v23 - 6);
    if (!v25)
    {
      goto LABEL_29;
    }

LABEL_28:
    *(v23 - 5) = v25;
    operator delete(v25);
    goto LABEL_29;
  }

LABEL_39:
  sub_EE48B4(v40, a5);
  sub_CE2648(v40);
  if (v48)
  {
    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    v31 = v44;
    if (v44)
    {
      v32 = v45;
      v33 = v44;
      if (v45 != v44)
      {
        do
        {
          v32 = sub_4F0FB4(v32 - 144);
        }

        while (v32 != v31);
        v33 = v44;
      }

      v45 = v31;
      operator delete(v33);
    }

    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }
  }
}

void sub_EAEE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_CE2648(va);
  sub_4EC948(v15 - 224);
  _Unwind_Resume(a1);
}

uint64_t sub_EAEEB0(uint64_t a1, unsigned int *a2, void *a3, uint64_t a4)
{
  result = sub_5CC07C(a2);
  if (!result)
  {
    return result;
  }

  v8 = *(a2 + 15);
  v9 = *(a2 + 16);
  while (v8 != v9)
  {
    v12 = *(a4 + 112);
    if (v12 && (v13 = *(a4 + 104), v13 < *v12))
    {
      *(a4 + 104) = v13 + 1;
      v11 = *&v12[2 * v13 + 2];
    }

    else
    {
      sub_14BAE64(*(a4 + 96));
      v11 = sub_19593CC(a4 + 96, v10);
    }

    sub_64D110(v8, v11);
    v8 += 20;
  }

  v14 = *(a2 + 18);
  v15 = *(a2 + 19);
  while (v14 != v15)
  {
    v18 = *(a4 + 136);
    if (v18 && (v19 = *(a4 + 128), v19 < *v18))
    {
      *(a4 + 128) = v19 + 1;
      v17 = *&v18[2 * v19 + 2];
    }

    else
    {
      sub_14BAE64(*(a4 + 120));
      v17 = sub_19593CC(a4 + 120, v16);
    }

    sub_64D110(v14, v17);
    v14 += 20;
  }

  *(a4 + 16) |= 8u;
  v20 = *(a4 + 192);
  if (!v20)
  {
    v21 = *(a4 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    sub_14BAE64(v22);
    v20 = v23;
    *(a4 + 192) = v23;
  }

  sub_64D110(a2 + 21, v20);
  *(a4 + 16) |= 1u;
  v24 = *(a4 + 8);
  v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
  if (v24)
  {
    v25 = *v25;
  }

  sub_194EA1C((a4 + 168), (a2 + 2), v25);
  v26 = *(a2 + 752);
  *(a4 + 16) |= 0x2000000u;
  *(a4 + 297) = v26;
  if (sub_5CBACC((a2 + 30)))
  {
    *(a4 + 16) |= 0x10u;
    v27 = *(a4 + 200);
    if (!v27)
    {
      v28 = *(a4 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      sub_14BAE64(v29);
      v27 = v30;
      *(a4 + 200) = v30;
    }

    sub_64D110(a2 + 41, v27);
    if (!sub_5CBB30(a2 + 62))
    {
LABEL_24:
      if (!sub_5CBB44((a2 + 124)))
      {
        goto LABEL_25;
      }

LABEL_36:
      v35 = *(a2 + 64);
      v36 = v35 / 100;
      v37 = v35 % 100;
      if (v35 < 0)
      {
        v38 = -50;
      }

      else
      {
        v38 = 50;
      }

      *(a4 + 16) |= 0x400u;
      *(a4 + 244) = v36 + ((5243 * (v38 + v37)) >> 19) + ((5243 * (v38 + v37)) >> 31);
      if (!sub_5CC010(a2))
      {
        goto LABEL_51;
      }

      goto LABEL_40;
    }
  }

  else if (!sub_5CBB30(a2 + 62))
  {
    goto LABEL_24;
  }

  v31 = *(a2 + 62);
  v32 = v31 / 100;
  v33 = v31 % 100;
  if (v31 < 0)
  {
    v34 = -50;
  }

  else
  {
    v34 = 50;
  }

  *(a4 + 16) |= 0x200u;
  *(a4 + 240) = v32 + ((5243 * (v34 + v33)) >> 19) + ((5243 * (v34 + v33)) >> 31);
  if (sub_5CBB44((a2 + 124)))
  {
    goto LABEL_36;
  }

LABEL_25:
  if (!sub_5CC010(a2))
  {
    goto LABEL_51;
  }

LABEL_40:
  v39 = *(a2 + 89);
  v40 = *(v39 + 40);
  if (v40 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v41 = *(v39 + 23);
    if ((v41 & 0x8000000000000000) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v42 = v40 / 100;
    v43 = v40 % 100;
    if (v40 < 0)
    {
      v44 = -50;
    }

    else
    {
      v44 = 50;
    }

    *(a4 + 16) |= 0x800u;
    *(a4 + 248) = v42 + ((5243 * (v44 + v43)) >> 19) + ((5243 * (v44 + v43)) >> 31);
    v41 = *(v39 + 23);
    if ((v41 & 0x8000000000000000) == 0)
    {
LABEL_42:
      if (!v41)
      {
        goto LABEL_51;
      }

LABEL_49:
      v45 = sub_EB01A4(a3, v39);
      if (!v45)
      {
        sub_49EC("unordered_map::at: key not found");
      }

      v46 = *(v45 + 10);
      *(a4 + 16) |= 0x1000u;
      *(a4 + 252) = v46;
      goto LABEL_51;
    }
  }

  if (*(v39 + 8))
  {
    goto LABEL_49;
  }

LABEL_51:
  v47 = a2[122];
  if (v47 != 0x7FFFFFFF)
  {
    v48 = v47 / 10;
    v49 = v47 % 10;
    if (v47 < 0)
    {
      v50 = -5;
    }

    else
    {
      v50 = 5;
    }

    *(a4 + 16) |= 0x8000u;
    *(a4 + 264) = v48 + (((103 * (v50 + v49)) >> 15) & 1) + ((103 * (v50 + v49)) >> 10);
  }

  v51 = a2[189] - 1;
  if (v51 <= 3)
  {
    *(a4 + 16) |= 0x2000u;
    *(a4 + 256) = v51;
  }

  v52 = sub_ECB304(*a2);
  *(a4 + 16) |= 0x4000u;
  *(a4 + 260) = v52;
  result = sub_5CC218(a2);
  if (result)
  {
    v53 = *(a2 + 95);
    v54 = *(a2 + 96);
    while (v53 != v54)
    {
      v57 = *(a4 + 160);
      if (v57 && (v58 = *(a4 + 152), v58 < *v57))
      {
        *(a4 + 152) = v58 + 1;
        v56 = *&v57[2 * v58 + 2];
      }

      else
      {
        v55 = sub_14BDBB8(*(a4 + 144));
        v56 = sub_19593CC(a4 + 144, v55);
      }

      sub_ECA9F0(v53, v56);
      v53 += 21;
    }

    v59 = a2[196];
    *(a4 + 16) |= 0x10000u;
    *(a4 + 268) = v59;
    if (sub_5CBB58((a2 + 124)))
    {
      v60 = a2[132];
      v61 = v60 / 10;
      v62 = v60 % 10;
      if (v60 < 0)
      {
        v63 = -5;
      }

      else
      {
        v63 = 5;
      }

      *(a4 + 16) |= 0x800000u;
      *(a4 + 292) = v61 + (((103 * (v63 + v62)) >> 15) & 1) + ((103 * (v63 + v62)) >> 10);
    }

    result = sub_5CBFD0(a2);
    *(a4 + 16) |= 0x4000000u;
    *(a4 + 298) = result;
  }

  return result;
}

uint64_t sub_EAF414(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = sub_57478(a2);
  v7 = v6;
  if (*(a3 + 202) == 1 && sub_68C99C(v6))
  {
    v8 = sub_68C988(v7);
    if (v8 < 0)
    {
      v9 = -5;
    }

    else
    {
      v9 = 5;
    }

    a4[10] |= 0x80u;
    a4[127] = v8 / 10 + (((103 * (v9 + v8 % 10)) >> 15) & 1) + ((103 * (v9 + v8 % 10)) >> 10);
  }

  if (*(a3 + 203) == 1 && sub_68C900(v7))
  {
    v10 = sub_68C8EC(v7);
    if (v10 < 0)
    {
      v11 = -5;
    }

    else
    {
      v11 = 5;
    }

    a4[10] |= 0x800u;
    a4[131] = v10 / 10 + (((103 * (v11 + v10 % 10)) >> 15) & 1) + ((103 * (v11 + v10 % 10)) >> 10);
  }

  if (sub_68CA38(v7))
  {
    v13 = sub_68CA24(v7);
    if (v13 < 0)
    {
      v14 = -5;
    }

    else
    {
      v14 = 5;
    }

    a4[10] |= 0x100u;
    a4[128] = v13 / 10 + (((103 * (v14 + v13 % 10)) >> 15) & 1) + ((103 * (v14 + v13 % 10)) >> 10);
    if (!sub_68C864(v7))
    {
LABEL_15:
      result = sub_68CAD4(v7);
      if (!result)
      {
        return result;
      }

      goto LABEL_25;
    }
  }

  else if (!sub_68C864(v7))
  {
    goto LABEL_15;
  }

  v15 = sub_68C850(v7);
  if (v15 < 0)
  {
    v16 = -5;
  }

  else
  {
    v16 = 5;
  }

  a4[10] |= 0x200u;
  a4[129] = v15 / 10 + (((103 * (v16 + v15 % 10)) >> 15) & 1) + ((103 * (v16 + v15 % 10)) >> 10);
  result = sub_68CAD4(v7);
  if (result)
  {
LABEL_25:
    result = sub_68CAC0(v7);
    if (result < 0)
    {
      v17 = -5;
    }

    else
    {
      v17 = 5;
    }

    a4[10] |= 0x400u;
    a4[130] = result / 10 + (((103 * (v17 + result % 10)) >> 15) & 1) + ((103 * (v17 + result % 10)) >> 10);
  }

  return result;
}

void sub_EAF6BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(a2 + 7416);
  for (i = *(a2 + 7424); v4 != i; v4 += 1120)
  {
    v12 = *(a4 + 200);
    if (sub_EAFBBC(a3, (v4 + 48)))
    {
      v18 = (v4 + 48);
      sub_EAFD74(a3, (v4 + 48), &unk_229EB70, &v18);
    }

    else
    {
      v18 = (v4 + 48);
      *(sub_EAFD74(a3, (v4 + 48), &unk_229EB70, &v18) + 10) = v12;
      v14 = *(a4 + 208);
      if (v14 && (v15 = *(a4 + 200), v15 < *v14))
      {
        *(a4 + 200) = v15 + 1;
        v16 = *&v14[2 * v15 + 2];
      }

      else
      {
        v17 = sub_14BDE5C(*(a4 + 192));
        v16 = sub_19593CC(a4 + 192, v17);
      }

      sub_EC6F6C(v4, v16, 0, v13);
    }

    v8 = *(v4 + 464);
    v9 = v8 / 100;
    v10 = v8 % 100;
    if (v8 < 0)
    {
      v11 = -50;
    }

    else
    {
      v11 = 50;
    }

    sub_ECA844(v9 + ((5243 * (v11 + v10)) >> 19) + ((5243 * (v11 + v10)) >> 31), a4);
  }
}

void sub_EAF83C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_69D1F4(a2, &v15);
  v6 = v15;
  if (v15 != v16)
  {
    v7 = *(a4 + 200);
    v17 = (v15 + 8);
    *(sub_EAFD74(a3, (v15 + 8), &unk_229EB70, &v17) + 10) = v7;
    v9 = *(a4 + 208);
    if (v9 && (v10 = *(a4 + 200), v10 < *v9))
    {
      *(a4 + 200) = v10 + 1;
      v11 = *&v9[2 * v10 + 2];
    }

    else
    {
      v12 = sub_14BDE5C(*(a4 + 192));
      v11 = sub_19593CC(a4 + 192, v12);
    }

    sub_EC83B0(v6, v11, v8);
  }

  if (v15)
  {
    v13 = v16;
    v14 = v15;
    if (v16 != v15)
    {
      do
      {
        v13 = sub_52A624(v13 - 168);
      }

      while (v13 != v6);
      v14 = v15;
    }

    v16 = v6;
    operator delete(v14);
  }
}

void sub_EAF9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51B6E0(va);
  _Unwind_Resume(a1);
}

void sub_EAF9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) |= 2u;
  v4 = *(a3 + 56);
  if (!v4)
  {
    v6 = *(a3 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_14BF344(v7);
    v4 = v8;
    *(a3 + 56) = v8;
  }

  v25 = *(a2 + 2208);
  v26 = *(a2 + 2224);
  if (sub_4566B4(&v25))
  {
    v9 = sub_4470E4(&v25);
    *(v4 + 16) |= 0x40u;
    *(v4 + 56) = v9;
  }

  sub_3EDBB0(&v17, (a2 + 2448));
  v10 = v17 == 0x7FFFFFFF || v18[7] == 0x7FFFFFFF;
  if (!v10 && sub_4566B4(v18) && v24)
  {
    if (v24 == 2)
    {
      if (v23 > 0xFFFFFFFEFFFFFFFFLL || !v23)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v24 != 1)
      {
        sub_5AF20();
      }

      if (v23 == -1)
      {
        goto LABEL_24;
      }
    }

    v11 = v17 / 10;
    v12 = v17 % 10;
    if (v17 < 0)
    {
      v13 = -5;
    }

    else
    {
      v13 = 5;
    }

    *(v4 + 16) |= 2u;
    *(v4 + 32) = v11 + (((103 * (v13 + v12)) >> 15) & 1) + ((103 * (v13 + v12)) >> 10);
    v14 = sub_447084(v18);
    v15 = *(v4 + 16);
    *(v4 + 16) = v15 | 1;
    *(v4 + 24) = v14;
    if (v24 == 1)
    {
      v16 = v23;
      *(v4 + 16) = v15 | 9;
      *(v4 + 40) = v16;
    }
  }

LABEL_24:
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }
}

void sub_EAFBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_49A8F8(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_EAFBBC(void *a1, uint64_t *a2)
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

  v6 = sub_AAD8(&v25, a2, v5);
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

uint64_t **sub_EAFD74(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v4 = a2;
  v6 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = sub_AAD8(&v26, a2, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_43;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = v8;
    if (v8 >= *&v10)
    {
      v12 = v8 % *&v10;
    }
  }

  else
  {
    v12 = (*&v10 - 1) & v8;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_43:
    operator new();
  }

  v15 = *(v4 + 23);
  if (v15 >= 0)
  {
    v16 = *(v4 + 23);
  }

  else
  {
    v16 = v4[1];
  }

  if (v15 < 0)
  {
    v4 = *v4;
  }

  if (v11.u32[0] < 2uLL)
  {
    while (1)
    {
      v21 = v14[1];
      if (v21 == v9)
      {
        v22 = *(v14 + 39);
        v23 = v22;
        if (v22 < 0)
        {
          v22 = v14[3];
        }

        if (v22 == v16)
        {
          v24 = v23 >= 0 ? (v14 + 2) : v14[2];
          if (!memcmp(v24, v4, v16))
          {
            return v14;
          }
        }
      }

      else if ((v21 & (*&v10 - 1)) != v12)
      {
        goto LABEL_43;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v17 = v14[1];
    if (v17 == v9)
    {
      break;
    }

    if (v17 >= *&v10)
    {
      v17 %= *&v10;
    }

    if (v17 != v12)
    {
      goto LABEL_43;
    }

LABEL_20:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_43;
    }
  }

  v18 = *(v14 + 39);
  v19 = v18;
  if (v18 < 0)
  {
    v18 = v14[3];
  }

  if (v18 != v16)
  {
    goto LABEL_20;
  }

  v20 = v19 >= 0 ? (v14 + 2) : v14[2];
  if (memcmp(v20, v4, v16))
  {
    goto LABEL_20;
  }

  return v14;
}

void sub_EB0178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_EB018C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_EB01A4(void *a1, uint64_t *a2)
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

  v6 = sub_AAD8(&v25, a2, v5);
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
        if (v8 == v20)
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
      if (v8 == v16)
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

void sub_EB035C()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27BAFB0 = 0u;
  unk_27BAFC0 = 0u;
  dword_27BAFD0 = 1065353216;
  sub_3A9A34(&xmmword_27BAFB0, v0, v0);
  sub_3A9A34(&xmmword_27BAFB0, v3, v3);
  sub_3A9A34(&xmmword_27BAFB0, __p, __p);
  sub_3A9A34(&xmmword_27BAFB0, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27BAF88 = 0;
    qword_27BAF90 = 0;
    qword_27BAF80 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_EB05A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BAF98)
  {
    qword_27BAFA0 = qword_27BAF98;
    operator delete(qword_27BAF98);
  }

  _Unwind_Resume(exception_object);
}

void sub_EB07BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

uint64_t sub_EB0824@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint32x2_t *a5@<X4>, uint64_t a6@<X8>)
{
  sub_14CA0A8(a6, 0, 0);
  *(a6 + 40) |= 0x80u;
  *(a6 + 248) = 0;
  sub_58568(v23);
  sub_585EC(v23, __p);
  *(a6 + 40) |= 2u;
  v12 = *(a6 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA30((a6 + 200), __p, v13);
  if (v25 < 0)
  {
    operator delete(__p[0]);
    if (*(a2 + 204))
    {
      goto LABEL_12;
    }
  }

  else if (*(a2 + 204))
  {
    goto LABEL_12;
  }

  v14 = *a1;
  *(a6 + 40) |= 0x10u;
  v15 = *(a6 + 224);
  if (!v15)
  {
    v16 = *(a6 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_14D5A00(v17);
    v15 = v18;
    *(a6 + 224) = v18;
  }

  sub_EB0A24(a3, a2, v14, v15, a6, a4);
LABEL_12:
  sub_EB0E34(a3, a4, *a1, a2, a5);
  v19 = sub_57478(a3);
  result = sub_73EC4(v19);
  if (*result != 0x7FFFFFFF && *(result + 4) != 0x7FFFFFFF && *(result + 16) != 0x7FFFFFFFFFFFFFFFLL && *(result + 8) != 0x7FFFFFFF)
  {
    v21 = sub_57478(a3);
    result = sub_73EC4(v21);
    if (*result <= 978307199)
    {
      v22 = 0;
    }

    else
    {
      v22 = *result - 978307200;
    }

    *(a6 + 40) |= 0x100u;
    *(a6 + 252) = v22;
  }

  return result;
}

void sub_EB09E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_14CA828(v17);
    _Unwind_Resume(a1);
  }

  sub_14CA828(v17);
  _Unwind_Resume(a1);
}

void sub_EB0A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  nullsub_1();
  if (*(v11 + 23) >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = *v11;
  }

  v13 = *v12;
  *(a4 + 16) |= 4u;
  *(a4 + 160) = v13;
  sub_5EB608();
  v15 = *v14;
  v16 = *(v14 + 8);
  if (*v14 != v16)
  {
    do
    {
      while (1)
      {
        v19 = *(a4 + 40);
        if (v19)
        {
          v20 = *(a4 + 32);
          if (v20 < *v19)
          {
            break;
          }
        }

        v17 = sub_14D59A4(*(a4 + 24));
        v18 = sub_19593CC(a4 + 24, v17);
        sub_EB11B4(v15, v18);
        v15 += 1582;
        if (v15 == v16)
        {
          goto LABEL_10;
        }
      }

      *(a4 + 32) = v20 + 1;
      sub_EB11B4(v15, *&v19[2 * v20 + 2]);
      v15 += 1582;
    }

    while (v15 != v16);
  }

LABEL_10:
  sub_5EB608();
  v22 = 0x5DDB1ADCB91F64A7 * ((v21[1] - *v21) >> 4);
  if (v22 >= 1)
  {
    v23 = 0;
    v24 = v22 & 0x7FFFFFFF;
    do
    {
      v25 = sub_5EBC20(a1, v23);
      sub_EB2AA8(v25, a3, a2, *(*(a4 + 40) + 8 * v23++ + 8));
    }

    while (v24 != v23);
  }

  if (*(a2 + 200))
  {
    v26 = sub_5EBCF8(a1);
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      for (i = 0; i != v27; ++i)
      {
        v30 = sub_5EBC20(a1, i);
        sub_EC6954((v30 + 7392), *(*(a4 + 40) + (v28 >> 29) + 8));
        v28 += 0x100000000;
      }
    }
  }

  *(a4 + 16) |= 2u;
  v31 = *(a4 + 152);
  if (!v31)
  {
    v32 = *(a4 + 8);
    v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    if (v32)
    {
      v33 = *v33;
    }

    v31 = sub_14BD1EC(v33);
    *(a4 + 152) = v31;
  }

  sub_EB13BC(a1, v31);
  *(a4 + 16) |= 1u;
  v34 = *(a4 + 144);
  if (!v34)
  {
    v35 = *(a4 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    v34 = sub_14BCA7C(v36);
    *(a4 + 144) = v34;
  }

  sub_EB146C(a1, a2, v34);
  v37 = sub_57478(a1);
  v38 = sub_68F800(v37);
  if (!sub_4D1F6C(v38))
  {
    v39 = v38[20];
    if (v39 != v38[21] && !sub_4D1F6C(v39))
    {
      v51 = v38[20];
      v52 = v38[21];
      while (v51 != v52)
      {
        v55 = *(a4 + 136);
        if (v55 && (v56 = *(a4 + 128), v56 < *v55))
        {
          *(a4 + 128) = v56 + 1;
          v54 = *&v55[2 * v56 + 2];
        }

        else
        {
          sub_14BAE64(*(a4 + 120));
          v54 = sub_19593CC(a4 + 120, v53);
        }

        sub_64D110(v51, v54);
        v51 += 20;
      }
    }
  }

  *__p = 0u;
  v59 = 0u;
  v60 = 1065353216;
  if (*(a2 + 201) == 1)
  {
    sub_EB1700(a1, __p, a4);
    v40 = sub_5EBC28(a1);
    v41 = *v40;
    v42 = *(v40 + 8);
    if (*v40 != v42)
    {
      do
      {
        v43 = *(a4 + 88);
        if (v43 && (v44 = *(a4 + 80), v44 < *v43))
        {
          *(a4 + 80) = v44 + 1;
          v45 = *&v43[2 * v44 + 2];
        }

        else
        {
          sub_14BDC34(*(a4 + 72));
          v45 = sub_19593CC(a4 + 72, v46);
        }

        sub_EB1F70(v41, __p, a2, v45);
        v41 += 204;
      }

      while (v41 != v42);
    }
  }

  sub_EB242C(a1, a2, a3, a4, a5, a6);
  v47 = v59;
  if (v59)
  {
    do
    {
      v49 = *v47;
      if (*(v47 + 39) < 0)
      {
        v50 = v47;
        operator delete(v47[2]);
        v47 = v50;
      }

      operator delete(v47);
      v47 = v49;
    }

    while (v49);
  }

  v48 = __p[0];
  __p[0] = 0;
  if (v48)
  {
    operator delete(v48);
  }
}

void sub_EB0DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_EB0E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_EB0E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_EB0E34(uint64_t a1, int **a2, uint64_t a3, uint64_t a4, uint32x2_t *a5)
{
  nullsub_1();
  v38[0] = 0;
  v45 = 0;
  if (*(v9 + 128) == 1)
  {
    sub_4F1328(v38, v9);
    v45 = 1;
  }

  sub_4EE138(a5, 0);
  if ((v45 & 1) == 0)
  {
    return;
  }

  v10 = sub_58BBC(a1);
  sub_EE3CD8(v37, a3, a4);
  if ((*(a4 + 204) & 1) == 0)
  {
    nullsub_1();
    v12 = sub_E88EC4(v11);
    if (atomic_load_explicit(byte_2733CF0, memory_order_acquire))
    {
      v13 = *a2;
      v14 = a2[1];
      if (*a2 != v14)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v12;
      sub_21E5328();
      v12 = v16;
      v13 = *a2;
      v14 = a2[1];
      if (*a2 != v14)
      {
LABEL_7:
        v15 = &dword_2733CD0;
        while (*v13 != v12)
        {
          v13 += 8;
          if (v13 == v14)
          {
            goto LABEL_15;
          }
        }
      }
    }

    if (v13 == v14)
    {
      v15 = &dword_2733CD0;
    }

    else
    {
      v15 = v13;
    }

LABEL_15:
    sub_EE7528(v37, a1, v15, a5);
  }

  v17 = *v10;
  v18 = *(v10 + 8);
  if (*v10 != v18)
  {
    do
    {
      if ((sub_68D7F4(v17) & 0xFFFFFFFD) == 0)
      {
        v19 = sub_68C850(v17);
        v20 = sub_57478(a1);
        v21 = sub_68C850(v20);
        if (v19 <= v21)
        {
          v22 = 0;
        }

        else
        {
          v22 = v19 - v21;
        }

        sub_68CC00(v17, v36);
        if (sub_4566B4(v36))
        {
          v23 = sub_456698(v36);
        }

        else
        {
          v23 = 0x7FFFFFFF;
        }

        v24 = sub_68DB24(v17);
        if (atomic_load_explicit(byte_2733CF0, memory_order_acquire))
        {
          v25 = *a2;
          v26 = a2[1];
          if (*a2 != v26)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v28 = v24;
          sub_21E5328();
          v24 = v28;
          v25 = *a2;
          v26 = a2[1];
          if (*a2 != v26)
          {
LABEL_28:
            while (*v25 != v24)
            {
              v25 += 8;
              if (v25 == v26)
              {
                v27 = &dword_2733CD0;
                goto LABEL_35;
              }
            }
          }
        }

        if (v25 == v26)
        {
          v27 = &dword_2733CD0;
        }

        else
        {
          v27 = v25;
        }

LABEL_35:
        v29 = sub_EE24F4(a3);
        v30 = sub_68D7F4(v17);
        sub_EE3B64(v35, v30, v29, v22, v23);
        sub_EE3CDC(v37, v17, v35, v27, a5);
      }

      v17 += 976;
    }

    while (v17 != v18);
  }

  sub_EE48B4(v37, a5);
  sub_CE2648(v37);
  if (v45)
  {
    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    v31 = v41;
    if (v41)
    {
      v32 = v42;
      v33 = v41;
      if (v42 != v41)
      {
        do
        {
          v32 = sub_4F0FB4(v32 - 144);
        }

        while (v32 != v31);
        v33 = v41;
      }

      v42 = v31;
      operator delete(v33);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }
  }
}

void sub_EB1124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_CE2648(va);
  sub_4EC948(v15 - 224);
  _Unwind_Resume(a1);
}

void sub_EB11B4(void *a1, uint64_t a2)
{
  v4 = a1[141];
  v5 = a1[142];
  while (v4 != v5)
  {
    v8 = *(a2 + 64);
    if (v8 && (v9 = *(a2 + 56), v9 < *v8))
    {
      *(a2 + 56) = v9 + 1;
      v7 = *&v8[2 * v9 + 2];
    }

    else
    {
      v6 = sub_14D5948(*(a2 + 48));
      v7 = sub_19593CC(a2 + 48, v6);
    }

    sub_EB2800(v4, v7);
    v4 += 654;
  }

  *(a2 + 40) |= 0x20u;
  v10 = *(a2 + 496);
  if (!v10)
  {
    v11 = *(a2 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    v10 = sub_14BD1EC(v12);
    *(a2 + 496) = v10;
  }

  v13 = sub_4D20C0(a1, 8);
  *(v10 + 16) |= 1u;
  *(v10 + 24) = v13 ^ 1;
  if (sub_4D20B0(a1, 3))
  {
    v14 = 1;
  }

  else
  {
    v14 = 1;
    if ((sub_4D20C0(a1, 9) & 1) == 0 && (sub_4D20B0(a1, 1) & 1) == 0)
    {
      v14 = sub_4D20C0(a1, 12);
    }
  }

  *(v10 + 16) |= 2u;
  *(v10 + 25) = v14;
  v15 = a1[1272];
  v16 = a1[1273];
  while (v15 != v16)
  {
    v19 = *(a2 + 400);
    if (v19 && (v20 = *(a2 + 392), v20 < *v19))
    {
      *(a2 + 392) = v20 + 1;
      v18 = *&v19[2 * v20 + 2];
    }

    else
    {
      v17 = sub_14BA560(*(a2 + 384));
      v18 = sub_19593CC(a2 + 384, v17);
    }

    sub_ECB328(v15, v18);
    v15 += 616;
  }

  v21 = a1[1269];
  v22 = a1[1270];
  while (v21 != v22)
  {
    v25 = *(a2 + 448);
    if (v25 && (v26 = *(a2 + 440), v26 < *v25))
    {
      *(a2 + 440) = v26 + 1;
      v24 = *&v25[2 * v26 + 2];
    }

    else
    {
      v23 = sub_14BA560(*(a2 + 432));
      v24 = sub_19593CC(a2 + 432, v23);
    }

    sub_ECB328(v21, v24);
    v21 += 616;
  }
}

uint64_t sub_EB13BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_57478(a1);
  v5 = sub_68D8A8(v4, 8);
  *(a2 + 16) |= 1u;
  *(a2 + 24) = v5 ^ 1;
  v6 = sub_57478(a1);
  result = sub_68D828(v6, 3);
  if (result)
  {
    v8 = 1;
  }

  else
  {
    result = sub_68D8A8(v6, 9);
    v8 = 1;
    if ((result & 1) == 0)
    {
      result = sub_68D828(v6, 1);
      if ((result & 1) == 0)
      {
        result = sub_68D8A8(v6, 12);
        v8 = result;
      }
    }
  }

  *(a2 + 16) |= 2u;
  *(a2 + 25) = v8;
  return result;
}

uint64_t sub_EB146C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = sub_57478(a1);
  if (sub_68C864(v5))
  {
    v6 = sub_68C850(v5);
    if (v6 < 0)
    {
      v7 = -5;
    }

    else
    {
      v7 = 5;
    }

    a3[4] |= 1u;
    a3[6] = v6 / 10 + (((103 * (v7 + v6 % 10)) >> 15) & 1) + ((103 * (v7 + v6 % 10)) >> 10);
  }

  if (*(a2 + 202) == 1 && sub_68C99C(v5))
  {
    v8 = sub_68C988(v5);
    if (v8 < 0)
    {
      v9 = -5;
    }

    else
    {
      v9 = 5;
    }

    a3[4] |= 2u;
    a3[7] = v8 / 10 + (((103 * (v9 + v8 % 10)) >> 15) & 1) + ((103 * (v9 + v8 % 10)) >> 10);
  }

  if (*(a2 + 203) == 1 && sub_68C900(v5))
  {
    v10 = sub_68C8EC(v5);
    if (v10 < 0)
    {
      v11 = -5;
    }

    else
    {
      v11 = 5;
    }

    a3[4] |= 4u;
    a3[8] = v10 / 10 + (((103 * (v11 + v10 % 10)) >> 15) & 1) + ((103 * (v11 + v10 % 10)) >> 10);
  }

  if (!sub_68CA38(v5))
  {
    result = sub_68CAD4(v5);
    if (!result)
    {
      return result;
    }

    goto LABEL_25;
  }

  v13 = sub_68CA24(v5);
  if (v13 < 0)
  {
    v14 = -5;
  }

  else
  {
    v14 = 5;
  }

  a3[4] |= 8u;
  a3[9] = v13 / 10 + (((103 * (v14 + v13 % 10)) >> 15) & 1) + ((103 * (v14 + v13 % 10)) >> 10);
  result = sub_68CAD4(v5);
  if (result)
  {
LABEL_25:
    result = sub_68CAC0(v5);
    if (result < 0)
    {
      v15 = -5;
    }

    else
    {
      v15 = 5;
    }

    a3[4] |= 0x10u;
    a3[10] = result / 10 + (((103 * (v15 + result % 10)) >> 15) & 1) + ((103 * (v15 + result % 10)) >> 10);
  }

  return result;
}

void sub_EB1700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (*(a2 + 24))
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      do
      {
        v8 = *v5;
        if (*(v5 + 39) < 0)
        {
          operator delete(v5[2]);
        }

        operator delete(v5);
        v5 = v8;
      }

      while (v8);
    }

    *(v4 + 16) = 0;
    v6 = *(v4 + 8);
    if (v6)
    {
      bzero(*v4, 8 * v6);
    }

    *(v4 + 24) = 0;
  }

  v86 = sub_5EBCF8(a1);
  if (v86)
  {
    v7 = 0;
    v92 = a3;
    v96 = v4;
    do
    {
      v88 = v7;
      v89 = sub_5EBC20(a1, v7);
      v10 = *(*(a3 + 40) + 8 * v7 + 8);
      v11 = *(v89 + 7416);
      v94 = *(v89 + 7424);
      if (v11 == v94)
      {
        goto LABEL_119;
      }

      do
      {
LABEL_17:
        v12 = *(v11 + 71);
        if (v12 >= 0)
        {
          v13 = (v11 + 48);
        }

        else
        {
          v13 = *(v11 + 48);
        }

        if (v12 >= 0)
        {
          v14 = *(v11 + 71);
        }

        else
        {
          v14 = *(v11 + 56);
        }

        v15 = sub_AAD8(&__p, v13, v14);
        v16 = *(v4 + 8);
        if (!*&v16)
        {
          goto LABEL_62;
        }

        v17 = v15;
        v18 = vcnt_s8(v16);
        v18.i16[0] = vaddlv_u8(v18);
        if (v18.u32[0] > 1uLL)
        {
          v19 = v15;
          v20 = v96;
          if (v15 >= *&v16)
          {
            v19 = v15 % *&v16;
          }
        }

        else
        {
          v19 = (*&v16 - 1) & v15;
          v20 = v96;
        }

        v21 = *(*v20 + 8 * v19);
        if (!v21 || (v22 = *v21) == 0)
        {
LABEL_62:
          a3 = v92;
          v38 = *(v92 + 56);
          __p = (v11 + 48);
          *(sub_EB37EC(v96, (v11 + 48), &unk_229EB70, &__p) + 10) = v38;
          v40 = *(v92 + 64);
          if (v40 && (v41 = *(v92 + 56), v41 < *v40))
          {
            *(v92 + 56) = v41 + 1;
            v42 = *&v40[2 * v41 + 2];
          }

          else
          {
            v43 = sub_14BDE5C(*(v92 + 48));
            v42 = sub_19593CC(v92 + 48, v43);
          }

          sub_EC6F6C(v11, v42, 1, v39);
          v23 = *(v11 + 71);
          v37 = *(v11 + 48);
          v36 = *(v11 + 56);
          v24 = *(v11 + 71);
          goto LABEL_67;
        }

        v23 = *(v11 + 71);
        v24 = v23;
        v90 = *(v11 + 48);
        v91 = *(v11 + 56);
        if ((v23 & 0x80u) == 0)
        {
          v25 = *(v11 + 71);
        }

        else
        {
          v25 = *(v11 + 56);
        }

        if ((v23 & 0x80u) == 0)
        {
          v26 = (v11 + 48);
        }

        else
        {
          v26 = *(v11 + 48);
        }

        __s2 = v26;
        if (v18.u32[0] < 2uLL)
        {
          v27 = *&v16 - 1;
          while (1)
          {
            v32 = v22[1];
            if (v17 == v32)
            {
              v33 = *(v22 + 39);
              v34 = v33;
              if (v33 < 0)
              {
                v33 = v22[3];
              }

              if (v33 == v25)
              {
                v35 = v34 >= 0 ? (v22 + 2) : v22[2];
                if (!memcmp(v35, __s2, v25))
                {
                  goto LABEL_61;
                }
              }
            }

            else if ((v32 & v27) != v19)
            {
              goto LABEL_62;
            }

            v22 = *v22;
            if (!v22)
            {
              goto LABEL_62;
            }
          }
        }

        while (1)
        {
          v28 = v22[1];
          if (v17 == v28)
          {
            break;
          }

          if (v28 >= *&v16)
          {
            v28 %= *&v16;
          }

          if (v28 != v19)
          {
            goto LABEL_62;
          }

LABEL_39:
          v22 = *v22;
          if (!v22)
          {
            goto LABEL_62;
          }
        }

        v29 = *(v22 + 39);
        v30 = v29;
        if (v29 < 0)
        {
          v29 = v22[3];
        }

        if (v29 != v25)
        {
          goto LABEL_39;
        }

        v31 = v30 >= 0 ? (v22 + 2) : v22[2];
        if (memcmp(v31, __s2, v25))
        {
          goto LABEL_39;
        }

LABEL_61:
        v36 = v91;
        a3 = v92;
        v37 = v90;
LABEL_67:
        if (v24 >= 0)
        {
          v44 = (v11 + 48);
        }

        else
        {
          v44 = v37;
        }

        if (v24 >= 0)
        {
          v45 = v23;
        }

        else
        {
          v45 = v36;
        }

        v46 = sub_AAD8(&__p, v44, v45);
        v47 = v96[1];
        if (!*&v47)
        {
          goto LABEL_147;
        }

        v48 = v46;
        v49 = vcnt_s8(v47);
        v49.i16[0] = vaddlv_u8(v49);
        if (v49.u32[0] > 1uLL)
        {
          v50 = v46;
          if (v46 >= *&v47)
          {
            v50 = v46 % *&v47;
          }
        }

        else
        {
          v50 = (*&v47 - 1) & v46;
        }

        v51 = *(*v96 + 8 * v50);
        if (!v51 || (v52 = *v51) == 0)
        {
LABEL_147:
          sub_49EC("unordered_map::at: key not found");
        }

        v53 = *(v11 + 71);
        if (v53 >= 0)
        {
          v54 = *(v11 + 71);
        }

        else
        {
          v54 = *(v11 + 56);
        }

        if (v53 >= 0)
        {
          v55 = (v11 + 48);
        }

        else
        {
          v55 = *(v11 + 48);
        }

        if (v49.u32[0] < 2uLL)
        {
          v56 = *&v47 - 1;
          while (1)
          {
            v61 = v52[1];
            if (v61 == v48)
            {
              v62 = *(v52 + 39);
              v63 = v62;
              if ((v62 & 0x80u) != 0)
              {
                v62 = v52[3];
              }

              if (v62 == v54)
              {
                v64 = v63 >= 0 ? v52 + 2 : v52[2];
                if (!memcmp(v64, v55, v54))
                {
                  goto LABEL_111;
                }
              }
            }

            else if ((v61 & v56) != v50)
            {
              goto LABEL_147;
            }

            v52 = *v52;
            if (!v52)
            {
              goto LABEL_147;
            }
          }
        }

        while (2)
        {
          v57 = v52[1];
          if (v57 != v48)
          {
            if (v57 >= *&v47)
            {
              v57 %= *&v47;
            }

            if (v57 != v50)
            {
              goto LABEL_147;
            }

LABEL_89:
            v52 = *v52;
            if (!v52)
            {
              goto LABEL_147;
            }

            continue;
          }

          break;
        }

        v58 = *(v52 + 39);
        v59 = v58;
        if ((v58 & 0x80u) != 0)
        {
          v58 = v52[3];
        }

        if (v58 != v54)
        {
          goto LABEL_89;
        }

        v60 = v59 >= 0 ? v52 + 2 : v52[2];
        if (memcmp(v60, v55, v54))
        {
          goto LABEL_89;
        }

LABEL_111:
        v65 = *(v52 + 10);
        v66 = *(v10 + 360);
        v4 = v96;
        v93 = (v10 + 264);
        if (v66 == *(v10 + 364))
        {
          v67 = v66 + 1;
          sub_1958E5C((v10 + 360), v66 + 1);
          *(*(v10 + 368) + 4 * v66) = v65;
        }

        else
        {
          *(*(v10 + 368) + 4 * v66) = v65;
          v67 = v66 + 1;
        }

        *(v10 + 360) = v67;
        v68 = *(v11 + 464);
        v69 = v68 / 100;
        v70 = v68 % 100;
        if (v68 < 0)
        {
          v71 = -50;
        }

        else
        {
          v71 = 50;
        }

        v72 = v69 + ((5243 * (v71 + v70)) >> 19) + ((5243 * (v71 + v70)) >> 31);
        v73 = *(v10 + 264);
        if (v73 != *(v10 + 268))
        {
          *(*(v10 + 272) + 4 * v73) = v72;
          *v93 = v73 + 1;
          v11 += 1120;
          if (v11 == v94)
          {
            break;
          }

          goto LABEL_17;
        }

        sub_1958E5C(v93, v73 + 1);
        *(*(v10 + 272) + 4 * v73) = v72;
        *v93 = v73 + 1;
        v11 += 1120;
      }

      while (v11 != v94);
LABEL_119:
      sub_69D1F4(v89, &__p);
      v74 = __p;
      if (__p != v98)
      {
        v75 = *(a3 + 56);
        v99 = (__p + 8);
        *(sub_EB37EC(v4, __p + 1, &unk_229EB70, &v99) + 10) = v75;
        v77 = *(a3 + 64);
        if (v77 && (v78 = *(a3 + 56), v78 < *v77))
        {
          *(a3 + 56) = v78 + 1;
          v79 = *&v77[2 * v78 + 2];
        }

        else
        {
          v80 = sub_14BDE5C(*(a3 + 48));
          v79 = sub_19593CC(a3 + 48, v80);
        }

        sub_EC83B0(v74, v79, v76);
      }

      if (__p)
      {
        v81 = v98;
        v9 = __p;
        if (v98 == __p)
        {
LABEL_12:
          v98 = v74;
          operator delete(v9);
          goto LABEL_13;
        }

        while (2)
        {
          if (*(v81 - 9) < 0)
          {
            operator delete(*(v81 - 4));
            v82 = *(v81 - 8);
            if (v82)
            {
              goto LABEL_136;
            }

LABEL_131:
            if ((*(v81 - 65) & 0x80000000) == 0)
            {
              goto LABEL_132;
            }
          }

          else
          {
            v82 = *(v81 - 8);
            if (!v82)
            {
              goto LABEL_131;
            }

LABEL_136:
            v83 = *(v81 - 7);
            if (v83 == v82)
            {
              *(v81 - 7) = v82;
              operator delete(v82);
              if (*(v81 - 65) < 0)
              {
                break;
              }

LABEL_132:
              if ((*(v81 - 89) & 0x80000000) == 0)
              {
LABEL_133:
                if (*(v81 - 137) < 0)
                {
LABEL_145:
                  operator delete(*(v81 - 20));
                }

LABEL_128:
                v81 -= 21;
                if (v81 == v74)
                {
                  v9 = __p;
                  goto LABEL_12;
                }

                continue;
              }

LABEL_144:
              operator delete(*(v81 - 14));
              if (*(v81 - 137) < 0)
              {
                goto LABEL_145;
              }

              goto LABEL_128;
            }

            do
            {
              v84 = *(v83 - 1);
              v83 -= 3;
              if (v84 < 0)
              {
                operator delete(*v83);
              }
            }

            while (v83 != v82);
            v85 = *(v81 - 8);
            *(v81 - 7) = v82;
            operator delete(v85);
            if ((*(v81 - 65) & 0x80000000) == 0)
            {
              goto LABEL_132;
            }
          }

          break;
        }

        operator delete(*(v81 - 11));
        if ((*(v81 - 89) & 0x80000000) == 0)
        {
          goto LABEL_133;
        }

        goto LABEL_144;
      }

LABEL_13:
      v7 = v88 + 1;
    }

    while (v88 + 1 != v86);
  }
}

void sub_EB1F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_51B6E0(va);
  _Unwind_Resume(a1);
}

void sub_EB1F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_51B6E0(va);
  _Unwind_Resume(a1);
}

double sub_EB1F70(unsigned int *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) |= 1u;
  v8 = *(a4 + 8);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
  if (v8)
  {
    v9 = *v9;
  }

  sub_194EA1C((a4 + 168), (a1 + 2), v9);
  v10 = sub_ECB304(*a1);
  v12 = *(a4 + 16);
  *(a4 + 16) = v12 | 0x4000;
  *(a4 + 260) = v10;
  if (*(a3 + 38) == 1)
  {
    *(a4 + 16) = v12 | 0x4100;
    v13 = *(a4 + 232);
    if (!v13)
    {
      v14 = *(a4 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_14BDA20(v15);
      *(a4 + 232) = v13;
    }

    sub_ECAC00(a1 + 7, v13, v11.n128_f64[0]);
  }

  if (*(a3 + 36) == 1)
  {
    *(a4 + 16) |= 4u;
    v16 = *(a4 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_194EA1C((a4 + 184), a1 + 2, v17);
  }

  sub_EB34A8(a1, a3, a4, v11);
  if (sub_5CC2A4(a1))
  {
    v18 = sub_ECAA80(a1[189]);
    *(a4 + 16) |= 0x2000u;
    *(a4 + 256) = v18;
  }

  sub_EB2FB4(a1 + 15, a4);
  sub_EB3170(a1 + 62, *(a3 + 36), a4);
  if (sub_5CBBA4((a1 + 134)))
  {
    sub_EB3390(a1, a3, a4);
  }

  if (sub_5CC010(a1))
  {
    v19 = *(a1 + 89);
    v20 = *(v19 + 40);
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = *(v19 + 23);
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v42 = v20 / 100;
      v43 = v20 % 100;
      if (v20 < 0)
      {
        v44 = -50;
      }

      else
      {
        v44 = 50;
      }

      *(a4 + 16) |= 0x800u;
      *(a4 + 248) = v42 + ((5243 * (v44 + v43)) >> 19) + ((5243 * (v44 + v43)) >> 31);
      v21 = *(v19 + 23);
      if ((v21 & 0x8000000000000000) == 0)
      {
LABEL_20:
        if (!v21)
        {
          goto LABEL_21;
        }

LABEL_54:
        v45 = sub_589204(a2, v19);
        if (!v45)
        {
          sub_49EC("unordered_map::at: key not found");
        }

        v46 = *(v45 + 10);
        *(a4 + 16) |= 0x1000u;
        *(a4 + 252) = v46;
        v22 = a1[122];
        if (v22 != 0x7FFFFFFF)
        {
          goto LABEL_22;
        }

        goto LABEL_26;
      }
    }

    if (*(v19 + 8))
    {
      goto LABEL_54;
    }
  }

LABEL_21:
  v22 = a1[122];
  if (v22 != 0x7FFFFFFF)
  {
LABEL_22:
    v23 = v22 / 10;
    v24 = v22 % 10;
    if (v22 < 0)
    {
      v25 = -5;
    }

    else
    {
      v25 = 5;
    }

    *(a4 + 16) |= 0x8000u;
    *(a4 + 264) = v23 + (((103 * (v25 + v24)) >> 15) & 1) + ((103 * (v25 + v24)) >> 10);
  }

LABEL_26:
  v26 = *(a1 + 95);
  v27 = *(a1 + 96);
  while (v26 != v27)
  {
    v30 = *(a4 + 160);
    if (v30 && (v31 = *(a4 + 152), v31 < *v30))
    {
      *(a4 + 152) = v31 + 1;
      v29 = *&v30[2 * v31 + 2];
    }

    else
    {
      v28 = sub_14BDBB8(*(a4 + 144));
      v29 = sub_19593CC(a4 + 144, v28);
    }

    sub_ECA9F0(v26, v29);
    v26 += 21;
  }

  if ((a1[197] & 1) != 0 && *(a3 + 38) == 1)
  {
    *(a4 + 16) |= 0x200000u;
    *(a4 + 288) = 1;
  }

  if (*(a1 + 95) == *(a1 + 96))
  {
    v33 = *(a4 + 16);
    if (*(a3 + 36) != 1)
    {
      goto LABEL_61;
    }

    goto LABEL_42;
  }

  v32 = a1[196];
  v33 = *(a4 + 16);
  if (v32 != -1)
  {
    v33 |= 0x10000u;
    *(a4 + 16) = v33;
    *(a4 + 268) = v32;
  }

  if (*(a3 + 36) == 1)
  {
LABEL_42:
    *(a4 + 276) = a1[144];
    v34 = *(a1 + 789);
    v35 = v33 | 0x440000;
    *(a4 + 16) = v33 | 0x440000;
    *(a4 + 289) = v34;
    v36 = a1[148];
    if (v36 != 0x7FFFFFFF)
    {
      v37 = v36 / 10;
      v38 = v36 % 10;
      if (v36 < 0)
      {
        v39 = -5;
      }

      else
      {
        v39 = 5;
      }

      v40 = v37 + (((103 * (v39 + v38)) >> 15) & 1) + ((103 * (v39 + v38)) >> 10);
      v35 = v33 | 0x540000;
      *(a4 + 16) = v33 | 0x540000;
      *(a4 + 284) = v40;
    }

    v41 = a1[147];
    if (v41 == 0x7FFFFFFF)
    {
      v33 = v35;
    }

    else
    {
      v47 = v41 / 10;
      v48 = v41 % 10;
      if (v41 < 0)
      {
        v49 = -5;
      }

      else
      {
        v49 = 5;
      }

      v50 = v47 + (((103 * (v49 + v48)) >> 15) & 1) + ((103 * (v49 + v48)) >> 10);
      v33 = v35 | 0x80000;
      *(a4 + 280) = v50;
    }
  }

LABEL_61:
  *(a4 + 16) = v33 | 2;
  v51 = *(a4 + 8);
  v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
  if (v51)
  {
    v52 = *v52;
  }

  sub_194EA1C((a4 + 176), (a1 + 198), v52);
  return result;
}

void sub_EB242C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = sub_58BBC(a1);
  if (*v12 != v12[1])
  {
    sub_EFC5B8(v49, a3, a2, 0);
    sub_559C9C(v45);
    bzero(&v46, 0x348uLL);
    sub_5C0A00(v48);
    v13 = sub_5EBC84(a1);
    if (&v46 != v13)
    {
      sub_5D8C78(&v46, *v13, v13[1], 0xAF8AF8AF8AF8AF8BLL * ((v13[1] - *v13) >> 5));
    }

    v14 = sub_58BBC(a1);
    __p = 0;
    v38 = 0;
    v39 = 0;
    sub_EFC5BC(v49, v14, a6, v45, &__p, v40);
    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }

    *(a5 + 40) |= 0x40u;
    v15 = *(a5 + 240);
    if (!v15)
    {
      v16 = *(a5 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_14BF800(v17);
      *(a5 + 240) = v15;
    }

    if (v44)
    {
      v18 = v44;
    }

    else
    {
      v18 = &off_2773C88;
    }

    sub_14BA3F0(v15, v18);
    if (&v41 != (a4 + 96))
    {
      v19 = *(a4 + 104);
      if (v19 >= 1)
      {
        v20 = (*(a4 + 112) + 8);
        do
        {
          sub_1487EC8(*v20++);
          --v19;
        }

        while (v19);
        *(a4 + 104) = 0;
      }

      v21 = v42;
      if (v42)
      {
        v22 = v43;
        v23 = sub_19592E8(a4 + 96, v42);
        sub_EB3760((a4 + 96), v23, (v22 + 8), v21, **(a4 + 112) - *(a4 + 104), v24);
        v25 = *(a4 + 104) + v21;
        *(a4 + 104) = v25;
        v26 = *(a4 + 112);
        if (*v26 < v25)
        {
          *v26 = v25;
        }
      }
    }

    sub_1758FB8(v40);
    sub_5C0F34(v48);
    v27 = v46;
    if (v46)
    {
      for (i = v47; i != v27; sub_5EBD80(&v46, i))
      {
        i -= 1120;
      }

      v47 = v27;
      operator delete(v46);
    }

    sub_559E70(v45);
    sub_4773BC(&v53);
    v50[0] = off_266AC30;
    v29 = 132;
    do
    {
      v30 = &v50[v29];
      v29 -= 6;
      v31 = *(v30 - 3);
      if (v31)
      {
        v32 = 0;
        v33 = 0;
        v34 = v30 - 5;
        do
        {
          if ((*(v50[v29] + v33) & 0x80000000) == 0)
          {
            v35 = *v34 + v32;
            v36 = *(v35 + 8);
            if (v36)
            {
              *(v35 + 16) = v36;
              operator delete(v36);
              v31 = *(v30 - 3);
            }
          }

          ++v33;
          v32 += 32;
        }

        while (v33 != v31);
        operator delete(v50[v29]);
        v50[v29] = &unk_2290750;
        *(v30 - 1) = 0;
        *(v30 - 4) = 0;
        *(v30 - 3) = 0;
        *v34 = 0;
      }
    }

    while (v29 != 36);
    v50[0] = &off_266AB88;
    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }
  }
}

void sub_EB2750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    sub_EB35C8(&STACK[0x260]);
    sub_EB3644(&STACK[0x9E8]);
    _Unwind_Resume(a1);
  }

  sub_EB35C8(&STACK[0x260]);
  sub_EB3644(&STACK[0x9E8]);
  _Unwind_Resume(a1);
}

void sub_EB2800(unsigned int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 40);
  *(a2 + 40) = v5 | 8;
  v6 = a1[254];
  v7 = v6 / 10;
  v8 = v6 % 10;
  if (v6 < 0)
  {
    v9 = -5;
  }

  else
  {
    v9 = 5;
  }

  *(a2 + 40) = v5 | 0x18;
  *(a2 + 72) = v4;
  *(a2 + 76) = v7 + (((103 * (v9 + v8)) >> 15) & 1) + ((103 * (v9 + v8)) >> 10);
  v10 = sub_4566AC((a1 + 552));
  if (v10 != 0x7FFFFFFF && HIDWORD(v10) != 0x7FFFFFFF && v10 <= SHIDWORD(v10))
  {
    *(a2 + 40) |= 4u;
    v11 = *(a2 + 64);
    if (!v11)
    {
      v12 = *(a2 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_14BC730(v13);
      *(a2 + 64) = v11;
    }

    sub_ECB220(a1 + 552, v11);
  }

  if (*(a1 + 303) != *(a1 + 304))
  {
    *(a2 + 40) |= 1u;
    v14 = *(a2 + 48);
    if (!v14)
    {
      v15 = *(a2 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_14BA684(v16);
      v14 = v17;
      *(a2 + 48) = v17;
    }

    v18 = *(a1 + 304);
    v19 = *(a1 + 303);
    if (v18 != v19)
    {
      v20 = *(a1 + 304);
      do
      {
        while (1)
        {
          v21 = *(v20 - 16);
          v20 -= 16;
          v22 = v21 / 100;
          v23 = v21 % 100;
          v24 = v21 < 0 ? -50 : 50;
          v25 = v22 + ((5243 * (v24 + v23)) >> 19) + ((5243 * (v24 + v23)) >> 31);
          v26 = *(v14 + 16);
          if (v26 == *(v14 + 20))
          {
            v27 = v26 + 1;
            sub_1958E5C((v14 + 16), v26 + 1);
            *(*(v14 + 24) + 4 * v26) = v25;
          }

          else
          {
            *(*(v14 + 24) + 4 * v26) = v25;
            v27 = v26 + 1;
          }

          *(v14 + 16) = v27;
          v28 = *(v18 - 8);
          v29 = v28 / 10;
          v30 = v28 % 10;
          v31 = v28 < 0 ? -5 : 5;
          v32 = v29 + (((103 * (v31 + v30)) >> 15) & 1) + ((103 * (v31 + v30)) >> 10);
          v33 = *(v14 + 40);
          if (v33 == *(v14 + 44))
          {
            break;
          }

          *(*(v14 + 48) + 4 * v33) = v32;
          *(v14 + 40) = v33 + 1;
          v18 = v20;
          if (v20 == v19)
          {
            return;
          }
        }

        sub_1958E5C((v14 + 40), v33 + 1);
        *(*(v14 + 48) + 4 * v33) = v32;
        *(v14 + 40) = v33 + 1;
        v18 = v20;
      }

      while (v20 != v19);
    }
  }
}

void sub_EB2AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_3B1D8C(a2);
  v8 = sub_3EB950(a1);
  sub_2AD1B4(v7, *(v8 + 136), *(v8 + 144), v66);
  *(a4 + 40) |= 8u;
  v9 = *(a4 + 480);
  if (!v9)
  {
    v10 = *(a4 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_14BC9E8(v11);
    v9 = v12;
    *(a4 + 480) = v12;
  }

  sub_EC92BC(v66, v8, a1 + 10344, v9);
  v13 = sub_4D1DB0(a1);
  sub_2AD1B4(v7, *(v13 + 136), *(v13 + 144), v57);
  *(a4 + 40) |= 0x10u;
  v14 = *(a4 + 488);
  if (!v14)
  {
    v15 = *(a4 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_14BC9E8(v16);
    v14 = v17;
    *(a4 + 488) = v17;
  }

  sub_EC92BC(v57, v13, a1 + 11088, v14);
  if (*(a3 + 167) == 1)
  {
    if (sub_4D1F6C((a1 + 10816)))
    {
      goto LABEL_30;
    }

    *(a4 + 40) |= 8u;
    v19 = *(a4 + 480);
    if (v19)
    {
      *(v19 + 16) |= 8u;
      v20 = *(v19 + 48);
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v21 = *(a4 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v18.n128_f64[0] = sub_14BC9E8(v22);
      v19 = v23;
      *(a4 + 480) = v23;
      *(v23 + 16) |= 8u;
      v20 = *(v23 + 48);
      if (v20)
      {
LABEL_20:
        sub_586C94(a1 + 10976, v20, v18);
        *(a4 + 40) |= 8u;
        v26 = *(a4 + 480);
        if (v26)
        {
          *(v26 + 16) |= 0x100u;
          v27 = *(v26 + 88);
          if (v27)
          {
LABEL_29:
            sub_64D110((a1 + 10816), v27);
LABEL_30:
            if (sub_4D1F6C((a1 + 11560)))
            {
              goto LABEL_50;
            }

            *(a4 + 40) |= 0x10u;
            v35 = *(a4 + 488);
            if (v35)
            {
              *(v35 + 16) |= 8u;
              v36 = *(v35 + 48);
              if (v36)
              {
                goto LABEL_40;
              }
            }

            else
            {
              v37 = *(a4 + 8);
              v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
              if (v37)
              {
                v38 = *v38;
              }

              v34.n128_f64[0] = sub_14BC9E8(v38);
              v35 = v39;
              *(a4 + 488) = v39;
              *(v39 + 16) |= 8u;
              v36 = *(v39 + 48);
              if (v36)
              {
LABEL_40:
                sub_586C94(a1 + 11720, v36, v34);
                *(a4 + 40) |= 0x10u;
                v42 = *(a4 + 488);
                if (v42)
                {
                  *(v42 + 16) |= 0x100u;
                  v43 = *(v42 + 88);
                  if (v43)
                  {
LABEL_49:
                    sub_64D110((a1 + 11560), v43);
                    goto LABEL_50;
                  }
                }

                else
                {
                  v44 = *(a4 + 8);
                  v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
                  if (v44)
                  {
                    v45 = *v45;
                  }

                  sub_14BC9E8(v45);
                  v42 = v46;
                  *(a4 + 488) = v46;
                  *(v46 + 16) |= 0x100u;
                  v43 = *(v46 + 88);
                  if (v43)
                  {
                    goto LABEL_49;
                  }
                }

                v47 = *(v42 + 8);
                v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
                if (v47)
                {
                  v48 = *v48;
                }

                sub_14BAE64(v48);
                v43 = v49;
                *(v42 + 88) = v49;
                goto LABEL_49;
              }
            }

            v40 = *(v35 + 8);
            v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
            if (v40)
            {
              v41 = *v41;
            }

            v36 = sub_14BF484(v41);
            *(v35 + 48) = v36;
            goto LABEL_40;
          }
        }

        else
        {
          v28 = *(a4 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          sub_14BC9E8(v29);
          v26 = v30;
          *(a4 + 480) = v30;
          *(v30 + 16) |= 0x100u;
          v27 = *(v30 + 88);
          if (v27)
          {
            goto LABEL_29;
          }
        }

        v31 = *(v26 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        sub_14BAE64(v32);
        v27 = v33;
        *(v26 + 88) = v33;
        goto LABEL_29;
      }
    }

    v24 = *(v19 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    v20 = sub_14BF484(v25);
    *(v19 + 48) = v20;
    goto LABEL_20;
  }

LABEL_50:
  sub_99F0C(&v65);
  v50 = __p;
  if (__p)
  {
    v51 = v64;
    v52 = __p;
    if (v64 != __p)
    {
      do
      {
        v53 = *(v51 - 1);
        v51 -= 3;
        if (v53 < 0)
        {
          operator delete(*v51);
        }
      }

      while (v51 != v50);
      v52 = __p;
    }

    v64 = v50;
    operator delete(v52);
  }

  if (v62 < 0)
  {
    operator delete(v61);
    if ((v60 & 0x80000000) == 0)
    {
LABEL_60:
      if ((v58 & 0x80000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_68;
    }
  }

  else if ((v60 & 0x80000000) == 0)
  {
    goto LABEL_60;
  }

  operator delete(v59);
  if ((v58 & 0x80000000) == 0)
  {
LABEL_61:
    sub_99F0C(v74);
    v54 = v72;
    if (!v72)
    {
      goto LABEL_62;
    }

LABEL_69:
    v55 = v73;
    if (v73 == v54)
    {
      v73 = v54;
      operator delete(v54);
      if (v71 < 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
      do
      {
        v56 = *(v55 - 1);
        v55 -= 3;
        if (v56 < 0)
        {
          operator delete(*v55);
        }
      }

      while (v55 != v54);
      v73 = v54;
      operator delete(v72);
      if (v71 < 0)
      {
        goto LABEL_76;
      }
    }

LABEL_63:
    if ((v69 & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_77;
  }

LABEL_68:
  operator delete(v57[0]);
  sub_99F0C(v74);
  v54 = v72;
  if (v72)
  {
    goto LABEL_69;
  }

LABEL_62:
  if ((v71 & 0x80000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_76:
  operator delete(v70);
  if ((v69 & 0x80000000) == 0)
  {
LABEL_64:
    if ((v67 & 0x80000000) == 0)
    {
      return;
    }

LABEL_78:
    operator delete(v66[0]);
    return;
  }

LABEL_77:
  operator delete(v68);
  if (v67 < 0)
  {
    goto LABEL_78;
  }
}

void sub_EB2F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  sub_2AE47C(va);
  _Unwind_Resume(a1);
}

void sub_EB2F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  sub_2AE47C(&a9);
  sub_2AE47C(va);
  _Unwind_Resume(a1);
}

void sub_EB2FB4(void ***a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  while (v4 != v5)
  {
    v8 = *(a2 + 112);
    if (v8 && (v9 = *(a2 + 104), v9 < *v8))
    {
      *(a2 + 104) = v9 + 1;
      v7 = *&v8[2 * v9 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 96));
      v7 = sub_19593CC(a2 + 96, v6);
    }

    sub_64D110(v4, v7);
    v4 += 20;
  }

  v10 = a1[3];
  v11 = a1[4];
  while (v10 != v11)
  {
    v14 = *(a2 + 136);
    if (v14 && (v15 = *(a2 + 128), v15 < *v14))
    {
      *(a2 + 128) = v15 + 1;
      v13 = *&v14[2 * v15 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 120));
      v13 = sub_19593CC(a2 + 120, v12);
    }

    sub_64D110(v10, v13);
    v10 += 20;
  }

  if (sub_5CBAEC(a1))
  {
    *(a2 + 16) |= 8u;
    v16 = *(a2 + 192);
    if (!v16)
    {
      v17 = *(a2 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_14BAE64(v18);
      v16 = v19;
      *(a2 + 192) = v19;
    }

    sub_64D110(a1 + 6, v16);
  }

  if (sub_5CBACC(a1))
  {
    *(a2 + 16) |= 0x10u;
    v20 = *(a2 + 200);
    if (v20)
    {
      v21 = a1 + 26;
    }

    else
    {
      v22 = *(a2 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      sub_14BAE64(v23);
      v20 = v24;
      *(a2 + 200) = v24;
      v21 = a1 + 26;
    }

    sub_64D110(v21, v20);
  }
}

BOOL sub_EB3170(void *a1, int a2, uint64_t a3)
{
  v4 = a1;
  if (!a2)
  {
    if (sub_5CBB30(a1))
    {
      v7 = *v4 / 100;
      v8 = *v4 % 100;
      if (*v4 < 0)
      {
        v9 = -50;
      }

      else
      {
        v9 = 50;
      }

      *(a3 + 16) |= 0x200u;
      *(a3 + 240) = v7 + ((5243 * (v9 + v8)) >> 19) + ((5243 * (v9 + v8)) >> 31);
      if (!sub_5CBB44(v4))
      {
LABEL_8:
        result = sub_5CBB58(v4);
        if (!result)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (!sub_5CBB44(v4))
    {
      goto LABEL_8;
    }

    v10 = v4[2];
    v11 = v10 / 100;
    v12 = v10 % 100;
    if (v10 < 0)
    {
      v13 = -50;
    }

    else
    {
      v13 = 50;
    }

    *(a3 + 16) |= 0x400u;
    *(a3 + 244) = v11 + ((5243 * (v13 + v12)) >> 19) + ((5243 * (v13 + v12)) >> 31);
    result = sub_5CBB58(v4);
    if (!result)
    {
      return result;
    }

LABEL_18:
    v14 = *(v4 + 8);
    v15 = v14 / 10;
    v16 = v14 % 10;
    if (v14 < 0)
    {
      v17 = -5;
    }

    else
    {
      v17 = 5;
    }

    *(a3 + 16) |= 0x800000u;
    *(a3 + 292) = v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10);
    return result;
  }

  *(a3 + 16) |= 0x20u;
  v5 = *(a3 + 208);
  if (v5)
  {
  }

  else
  {
    v18 = *(a3 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v5 = sub_14BDB38(v19);
    *(a3 + 208) = v5;
    a1 = v4;
  }

  return sub_ECAA94(a1, v5);
}

BOOL sub_EB3390(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (*(a2 + 36) == 1)
  {
    result = sub_5CBB6C(result + 536);
    if ((result & 1) == 0)
    {
      *(a3 + 16) |= 0x40u;
      v5 = *(a3 + 216);
      if (v5)
      {
        v6 = v4 + 536;
      }

      else
      {
        v7 = *(a3 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        v5 = sub_14BDB38(v8);
        *(a3 + 216) = v5;
        v6 = v4 + 536;
      }

      return sub_ECAA94(v6, v5);
    }
  }

  else if (*(a2 + 37))
  {
    if (*(result + 760) != *(result + 768) || (v9 = *(result + 528)) != 0 && v9 != 0x7FFFFFFF)
    {
      result = sub_5CBFD0(result);
      *(a3 + 16) |= 0x4000000u;
      *(a3 + 298) = result;
    }
  }

  else
  {
    *(a3 + 16) |= 0x4000000u;
    *(a3 + 298) = 1;
  }

  return result;
}

void sub_EB34A8(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (*(a2 + 36) != 1)
  {
    return;
  }

  v4 = (a1 + 600);
  v5 = *(a1 + 632);
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      if (*v4 == -1)
      {
        return;
      }
    }

    else if (v5 != 2 || *(a1 + 604) == -1 && *(a1 + 600) == -1 && *(a1 + 608) == *(a1 + 616))
    {
      return;
    }

    goto LABEL_14;
  }

  if (v5 == 3 || v5 == 4)
  {
    v6 = *(a1 + 623);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a1 + 608);
    }

    if (v6)
    {
LABEL_14:
      *(a3 + 16) |= 0x80u;
      v7 = *(a3 + 224);
      if (v7)
      {
        v8 = a1 + 600;
      }

      else
      {
        v10 = *(a3 + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        v7 = sub_14BF484(v11);
        *(a3 + 224) = v7;
        v8 = v4;
      }

      sub_586C94(v8, v7, a4);
    }
  }
}

void ***sub_EB35C8(uint64_t a1)
{
  sub_5C0F34(a1 + 1112);
  v2 = *(a1 + 1088);
  if (v2)
  {
    for (i = *(a1 + 1096); i != v2; sub_5EBD80(a1 + 1088, i))
    {
      i -= 1120;
    }

    *(a1 + 1096) = v2;
    operator delete(*(a1 + 1088));
  }

  return sub_559E70(a1);
}

void *sub_EB3644(void *a1)
{
  sub_4773BC((a1 + 148));
  v2 = a1 + 13;
  a1[13] = off_266AC30;
  v3 = 132;
  do
  {
    v4 = &v2[v3];
    v3 -= 6;
    v5 = *(v4 - 3);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = v4 - 5;
      do
      {
        if ((*(v2[v3] + v7) & 0x80000000) == 0)
        {
          v9 = *v8 + v6;
          v10 = *(v9 + 8);
          if (v10)
          {
            *(v9 + 16) = v10;
            operator delete(v10);
            v5 = *(v4 - 3);
          }
        }

        ++v7;
        v6 += 32;
      }

      while (v7 != v5);
      operator delete(v2[v3]);
      v2[v3] = &unk_2290750;
      *(v4 - 1) = 0;
      *(v4 - 4) = 0;
      *(v4 - 3) = 0;
      *v8 = 0;
    }
  }

  while (v3 != 36);
  a1[13] = &off_266AB88;
  v11 = a1[40];
  if (v11)
  {
    a1[41] = v11;
    operator delete(v11);
  }

  return a1;
}

void sub_EB3760(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5, __n128 a6)
{
  LODWORD(v6) = a4;
  v8 = a2;
  v9 = a4 - a5;
  if (a4 > a5)
  {
    v10 = *result;
    v11 = &a2[a5];
    do
    {
      *v11++ = sub_14BD4AC(v10);
      --v9;
    }

    while (v9);
  }

  if (v6 >= 1)
  {
    v6 = v6;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v8++;
      sub_EB37DC(v12, v14, a6);
      --v6;
    }

    while (v6);
  }
}

uint64_t **sub_EB37EC(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v4 = a2;
  v6 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = sub_AAD8(&v26, a2, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_43;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = v8;
    if (v8 >= *&v10)
    {
      v12 = v8 % *&v10;
    }
  }

  else
  {
    v12 = (*&v10 - 1) & v8;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_43:
    operator new();
  }

  v15 = *(v4 + 23);
  if (v15 >= 0)
  {
    v16 = *(v4 + 23);
  }

  else
  {
    v16 = v4[1];
  }

  if (v15 < 0)
  {
    v4 = *v4;
  }

  if (v11.u32[0] < 2uLL)
  {
    while (1)
    {
      v21 = v14[1];
      if (v21 == v9)
      {
        v22 = *(v14 + 39);
        v23 = v22;
        if (v22 < 0)
        {
          v22 = v14[3];
        }

        if (v22 == v16)
        {
          v24 = v23 >= 0 ? (v14 + 2) : v14[2];
          if (!memcmp(v24, v4, v16))
          {
            return v14;
          }
        }
      }

      else if ((v21 & (*&v10 - 1)) != v12)
      {
        goto LABEL_43;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v17 = v14[1];
    if (v17 == v9)
    {
      break;
    }

    if (v17 >= *&v10)
    {
      v17 %= *&v10;
    }

    if (v17 != v12)
    {
      goto LABEL_43;
    }

LABEL_20:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_43;
    }
  }

  v18 = *(v14 + 39);
  v19 = v18;
  if (v18 < 0)
  {
    v18 = v14[3];
  }

  if (v18 != v16)
  {
    goto LABEL_20;
  }

  v20 = v19 >= 0 ? (v14 + 2) : v14[2];
  if (memcmp(v20, v4, v16))
  {
    goto LABEL_20;
  }

  return v14;
}

void sub_EB3BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_EB3C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_EB3C1C(void *a1, uint64_t *a2)
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

  v6 = sub_AAD8(&v25, a2, v5);
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

void sub_EB3DD4(uint64_t a1@<X8>)
{
  *a1 = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
}

void sub_EB3DE8()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27BB008 = 0u;
  unk_27BB018 = 0u;
  dword_27BB028 = 1065353216;
  sub_3A9A34(&xmmword_27BB008, v0, v0);
  sub_3A9A34(&xmmword_27BB008, v3, v3);
  sub_3A9A34(&xmmword_27BB008, __p, __p);
  sub_3A9A34(&xmmword_27BB008, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27BAFE0 = 0;
    qword_27BAFE8 = 0;
    qword_27BAFD8 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_EB4030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BAFF0)
  {
    qword_27BAFF8 = qword_27BAFF0;
    operator delete(qword_27BAFF0);
  }

  _Unwind_Resume(exception_object);
}

void sub_EB40DC(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X8>)
{
  sub_14D4048(a6, 0, 0);
  *(a6 + 40) |= 0x20u;
  *(a6 + 160) = 0;
  v11 = *a2;
  v10 = a2[1];
  v58 = a2;
  if (*a2 == v10)
  {
LABEL_9:
    *(a6 + 160) = 20;
    return;
  }

  v12 = *a2;
  while (*(v12 + 24) == 0x7FFFFFFFFFFFFFFFLL || *(v12 + 36) == 0x7FFFFFFF)
  {
    v12 += 376;
    if (v12 == v10)
    {
      goto LABEL_9;
    }
  }

  v14 = 0x51B3BEA3677D46CFLL * ((v10 - v11) >> 3);
  v15 = (v11 + 36);
  v16 = (*a3 + 36);
  do
  {
    if (*(v15 - 3) != 0x7FFFFFFFFFFFFFFFLL && *v15 != 0x7FFFFFFF && *(v16 - 3) != 0x7FFFFFFFFFFFFFFFLL && *v16 != 0x7FFFFFFF)
    {
      v57 = 1;
      goto LABEL_18;
    }

    v15 += 94;
    v16 += 94;
    --v14;
  }

  while (v14);
  v57 = 0;
LABEL_18:
  v17 = sub_EC7E7C(3u);
  *(a6 + 40) |= 4u;
  v18 = *(a6 + 136);
  if (v18)
  {
    v19 = *(v18 + 40);
    if (!v19)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v20 = *(a6 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_14D5D9C(v21);
    v18 = v22;
    *(a6 + 136) = v22;
    v19 = *(v22 + 40);
    if (!v19)
    {
      goto LABEL_26;
    }
  }

  v23 = *(v18 + 32);
  if (v23 < *v19)
  {
    *(v18 + 32) = v23 + 1;
    v24 = *&v19[2 * v23 + 2];
    goto LABEL_27;
  }

LABEL_26:
  v25 = sub_14D5CF8(*(v18 + 24));
  v24 = sub_19593CC(v18 + 24, v25);
LABEL_27:
  v24[4] |= 0xCu;
  v24[16] = v17;
  v24[17] = 20;
  v26 = v57;
  if (*(a4 + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = 0;
  }

  if (v26 == 1 && *(a4 + 36) != 0x7FFFFFFF)
  {
    sub_EB45F4(a1, a4, a5, v24);
    v24[4] |= 8u;
    v24[17] = 0;
  }

  v54 = a3;
  v27 = a2[1] - *a2;
  if (v27)
  {
    v28 = 0;
    for (i = 0x51B3BEA3677D46CFLL * (v27 >> 3); i; --i)
    {
      v30 = *(a6 + 64);
      if (v30 && (v31 = *(a6 + 56), v31 < *v30))
      {
        *(a6 + 56) = v31 + 1;
        v32 = *&v30[2 * v31 + 2];
        v33 = *(a6 + 112);
        if (!v33)
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_14D5D9C(*(a6 + 48));
        v32 = sub_19593CC(a6 + 48, v34);
        v33 = *(a6 + 112);
        if (!v33)
        {
          goto LABEL_44;
        }
      }

      v35 = *(a6 + 104);
      if (v35 < *v33)
      {
        *(a6 + 104) = v35 + 1;
        v36 = *&v33[2 * v35 + 2];
        v37 = *(v32 + 40);
        if (!v37)
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }

LABEL_44:
      sub_14D5D9C(*(a6 + 96));
      v36 = sub_19593CC(a6 + 96, v38);
      v37 = *(v32 + 40);
      if (!v37)
      {
        goto LABEL_47;
      }

LABEL_45:
      v39 = *(v32 + 32);
      if (v39 >= *v37)
      {
LABEL_47:
        v41 = sub_14D5CF8(*(v32 + 24));
        v40 = sub_19593CC(v32 + 24, v41);
        goto LABEL_48;
      }

      *(v32 + 32) = v39 + 1;
      v40 = *&v37[2 * v39 + 2];
LABEL_48:
      v43 = v40 + 4;
      v42 = v40[4];
      v40[16] = v17;
      v40[4] = v42 | 0xC;
      v40[17] = 20;
      v44 = v40 + 17;
      v45 = *(v36 + 40);
      if (v45 && (v46 = *(v36 + 32), v46 < *v45))
      {
        *(v36 + 32) = v46 + 1;
        v47 = *&v45[2 * v46 + 2];
      }

      else
      {
        v48 = sub_14D5CF8(*(v36 + 24));
        v47 = sub_19593CC(v36 + 24, v48);
      }

      v49 = v47[4];
      v47[16] = v17;
      v47[4] = v49 | 0xC;
      v47[17] = 20;
      v50 = *v58;
      v51 = (*v58 + v28);
      v52 = v51[3];
      if (v57)
      {
        if (v52 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_35;
        }

        if (*(v50 + v28 + 36) == 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        v53 = *v54 + v28;
        if (*(v53 + 24) == 0x7FFFFFFFFFFFFFFFLL || *(v53 + 36) == 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        sub_EB45F4(a1, v51, a5, v40);
        *v43 |= 8u;
        *v44 = 0;
        sub_EB45F4(a1, (*v54 + v28), a5, v47);
        v43 = v47 + 4;
        v44 = v47 + 17;
      }

      else
      {
        if (v52 == 0x7FFFFFFFFFFFFFFFLL || *(v50 + v28 + 36) == 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        sub_EB45F4(a1, v51, a5, v40);
      }

      *v43 |= 8u;
      *v44 = 0;
LABEL_35:
      v28 += 376;
    }
  }
}

double sub_EB45F4(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4)
{
  sub_EB64E4(a1, a2 + 8, a3, a4);
  if (a3[5] == 1)
  {
    v8 = a2[3];
    v9 = v8 / 100;
    v10 = v8 % 100;
    if (v8 < 0)
    {
      v11 = -50;
    }

    else
    {
      v11 = 50;
    }

    *(a4 + 16) |= 0x80u;
    *(a4 + 88) = v9 + ((5243 * (v11 + v10)) >> 19) + ((5243 * (v11 + v10)) >> 31);
  }

  if (a3[6] == 1)
  {
    v12 = a2[41];
    v13 = a2[42];
    while (v12 != v13)
    {
      v16 = *(a4 + 40);
      if (v16 && (v17 = *(a4 + 32), v17 < *v16))
      {
        *(a4 + 32) = v17 + 1;
        v15 = *&v16[2 * v17 + 2];
      }

      else
      {
        sub_14BAE64(*(a4 + 24));
        v15 = sub_19593CC(a4 + 24, v14);
      }

      sub_64D110(v12, v15);
      v12 += 20;
    }
  }

  if (a3[7] == 1)
  {
    v18 = *a2;
    if (*a2 != a2[1])
    {
      *(a4 + 16) |= 1u;
      v19 = *(a4 + 48);
      if (!v19)
      {
        v20 = *(a4 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_14BEF24(v21);
        *(a4 + 48) = v19;
        v18 = *a2;
      }

      *(v19 + 16) |= 1u;
      v22 = *(v19 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      sub_194EA1C((v19 + 24), v18, v23);
      sub_74B1D0(v18, __p);
      *(v19 + 16) |= 2u;
      v24 = *(v19 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      sub_194EA30((v19 + 32), __p, v25);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      *(v19 + 16) |= 4u;
      v26 = *(v19 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      sub_194EA1C((v19 + 40), v18 + 8, v27);
    }
  }

  return result;
}

void sub_EB4810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EB482C(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X8>)
{
  sub_14D4048(a6, 0, 0);
  *(a6 + 40) |= 0x20u;
  *(a6 + 160) = 0;
  v11 = *a2;
  v10 = a2[1];
  v58 = a2;
  if (*a2 == v10)
  {
LABEL_9:
    *(a6 + 160) = 20;
    return;
  }

  v12 = *a2;
  while (*(v12 + 24) == 0x7FFFFFFFFFFFFFFFLL || *(v12 + 36) == 0x7FFFFFFF)
  {
    v12 += 376;
    if (v12 == v10)
    {
      goto LABEL_9;
    }
  }

  v14 = 0x51B3BEA3677D46CFLL * ((v10 - v11) >> 3);
  v15 = (v11 + 36);
  v16 = (*a3 + 36);
  do
  {
    if (*(v15 - 3) != 0x7FFFFFFFFFFFFFFFLL && *v15 != 0x7FFFFFFF && *(v16 - 3) != 0x7FFFFFFFFFFFFFFFLL && *v16 != 0x7FFFFFFF)
    {
      v57 = 1;
      goto LABEL_18;
    }

    v15 += 94;
    v16 += 94;
    --v14;
  }

  while (v14);
  v57 = 0;
LABEL_18:
  v17 = sub_EC7E7C(0);
  *(a6 + 40) |= 4u;
  v18 = *(a6 + 136);
  if (v18)
  {
    v19 = *(v18 + 40);
    if (!v19)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v20 = *(a6 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_14D5D9C(v21);
    v18 = v22;
    *(a6 + 136) = v22;
    v19 = *(v22 + 40);
    if (!v19)
    {
      goto LABEL_26;
    }
  }

  v23 = *(v18 + 32);
  if (v23 < *v19)
  {
    *(v18 + 32) = v23 + 1;
    v24 = *&v19[2 * v23 + 2];
    goto LABEL_27;
  }

LABEL_26:
  v25 = sub_14D5CF8(*(v18 + 24));
  v24 = sub_19593CC(v18 + 24, v25);
LABEL_27:
  v24[4] |= 0xCu;
  v24[16] = v17;
  v24[17] = 20;
  v26 = v57;
  if (*(a4 + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = 0;
  }

  if (v26 == 1 && *(a4 + 36) != 0x7FFFFFFF)
  {
    sub_EB4D44(a1, a4, a5, v24);
    v24[4] |= 8u;
    v24[17] = 0;
  }

  v54 = a3;
  v27 = a2[1] - *a2;
  if (v27)
  {
    v28 = 0;
    for (i = 0x51B3BEA3677D46CFLL * (v27 >> 3); i; --i)
    {
      v30 = *(a6 + 64);
      if (v30 && (v31 = *(a6 + 56), v31 < *v30))
      {
        *(a6 + 56) = v31 + 1;
        v32 = *&v30[2 * v31 + 2];
        v33 = *(a6 + 112);
        if (!v33)
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_14D5D9C(*(a6 + 48));
        v32 = sub_19593CC(a6 + 48, v34);
        v33 = *(a6 + 112);
        if (!v33)
        {
          goto LABEL_44;
        }
      }

      v35 = *(a6 + 104);
      if (v35 < *v33)
      {
        *(a6 + 104) = v35 + 1;
        v36 = *&v33[2 * v35 + 2];
        v37 = *(v32 + 40);
        if (!v37)
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }

LABEL_44:
      sub_14D5D9C(*(a6 + 96));
      v36 = sub_19593CC(a6 + 96, v38);
      v37 = *(v32 + 40);
      if (!v37)
      {
        goto LABEL_47;
      }

LABEL_45:
      v39 = *(v32 + 32);
      if (v39 >= *v37)
      {
LABEL_47:
        v41 = sub_14D5CF8(*(v32 + 24));
        v40 = sub_19593CC(v32 + 24, v41);
        goto LABEL_48;
      }

      *(v32 + 32) = v39 + 1;
      v40 = *&v37[2 * v39 + 2];
LABEL_48:
      v43 = v40 + 4;
      v42 = v40[4];
      v40[16] = v17;
      v40[4] = v42 | 0xC;
      v40[17] = 20;
      v44 = v40 + 17;
      v45 = *(v36 + 40);
      if (v45 && (v46 = *(v36 + 32), v46 < *v45))
      {
        *(v36 + 32) = v46 + 1;
        v47 = *&v45[2 * v46 + 2];
      }

      else
      {
        v48 = sub_14D5CF8(*(v36 + 24));
        v47 = sub_19593CC(v36 + 24, v48);
      }

      v49 = v47[4];
      v47[16] = v17;
      v47[4] = v49 | 0xC;
      v47[17] = 20;
      v50 = *v58;
      v51 = (*v58 + v28);
      v52 = v51[3];
      if (v57)
      {
        if (v52 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_35;
        }

        if (*(v50 + v28 + 36) == 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        v53 = *v54 + v28;
        if (*(v53 + 24) == 0x7FFFFFFFFFFFFFFFLL || *(v53 + 36) == 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        sub_EB4D44(a1, v51, a5, v40);
        *v43 |= 8u;
        *v44 = 0;
        sub_EB4D44(a1, (*v54 + v28), a5, v47);
        v43 = v47 + 4;
        v44 = v47 + 17;
      }

      else
      {
        if (v52 == 0x7FFFFFFFFFFFFFFFLL || *(v50 + v28 + 36) == 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        sub_EB4D44(a1, v51, a5, v40);
      }

      *v43 |= 8u;
      *v44 = 0;
LABEL_35:
      v28 += 376;
    }
  }
}

double sub_EB4D44(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4)
{
  sub_EB64E4(a1, a2 + 8, a3, a4);
  if (a3[5] == 1)
  {
    v8 = a2[3];
    v9 = v8 / 100;
    v10 = v8 % 100;
    if (v8 < 0)
    {
      v11 = -50;
    }

    else
    {
      v11 = 50;
    }

    *(a4 + 16) |= 0x80u;
    *(a4 + 88) = v9 + ((5243 * (v11 + v10)) >> 19) + ((5243 * (v11 + v10)) >> 31);
  }

  if (a3[6] == 1)
  {
    v12 = a2[41];
    v13 = a2[42];
    while (v12 != v13)
    {
      v16 = *(a4 + 40);
      if (v16 && (v17 = *(a4 + 32), v17 < *v16))
      {
        *(a4 + 32) = v17 + 1;
        v15 = *&v16[2 * v17 + 2];
      }

      else
      {
        sub_14BAE64(*(a4 + 24));
        v15 = sub_19593CC(a4 + 24, v14);
      }

      sub_64D110(v12, v15);
      v12 += 20;
    }
  }

  if (a3[7] == 1)
  {
    v18 = *a2;
    if (*a2 != a2[1])
    {
      *(a4 + 16) |= 1u;
      v19 = *(a4 + 48);
      if (!v19)
      {
        v20 = *(a4 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_14BEF24(v21);
        *(a4 + 48) = v19;
        v18 = *a2;
      }

      *(v19 + 16) |= 1u;
      v22 = *(v19 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      sub_194EA1C((v19 + 24), v18, v23);
      sub_74B1D0(v18, __p);
      *(v19 + 16) |= 2u;
      v24 = *(v19 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      sub_194EA30((v19 + 32), __p, v25);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      *(v19 + 16) |= 4u;
      v26 = *(v19 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      sub_194EA1C((v19 + 40), v18 + 8, v27);
    }
  }

  return result;
}

void sub_EB4F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EB4F7C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X8>)
{
  sub_14D4048(a7, 0, 0);
  v14 = 0x51B3BEA3677D46CFLL * ((a2[1] - *a2) >> 3);
  v15 = 0x51B3BEA3677D46CFLL * ((a4[1] - *a4) >> 3);
  if (v14 <= 0x51B3BEA3677D46CFLL * ((a3[1] - *a3) >> 3))
  {
    v14 = 0x51B3BEA3677D46CFLL * ((a3[1] - *a3) >> 3);
  }

  if (v14 <= v15)
  {
    v16 = 0x51B3BEA3677D46CFLL * ((a4[1] - *a4) >> 3);
  }

  else
  {
    v16 = v14;
  }

  if (v14 < v15)
  {
    v14 = 0x51B3BEA3677D46CFLL * ((a4[1] - *a4) >> 3);
  }

  if (v16 >= 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 4))
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 4);
  }

  if (!v17)
  {
    if (!sub_7E7E4(1u))
    {
LABEL_62:
      *(a7 + 40) |= 0x20u;
      *(a7 + 160) = 20;
      return;
    }

    sub_19594F8(&v50);
    sub_4A5C(&v50, "ETARequest did not contain any destinations", 43);
    if ((v60 & 0x10) != 0)
    {
      v46 = v59;
      if (v59 < v56)
      {
        v59 = v56;
        v46 = v56;
      }

      v47 = v55;
      v18 = v46 - v55;
      if (v46 - v55 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if ((v60 & 8) == 0)
      {
        v18 = 0;
        v49 = 0;
LABEL_57:
        *(&__p + v18) = 0;
        sub_7E854(&__p, 1u);
        if (v49 < 0)
        {
          operator delete(__p);
        }

        if (v58 < 0)
        {
          operator delete(v57);
        }

        std::locale::~locale(&v52);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_62;
      }

      v47 = v53;
      v18 = v54 - v53;
      if ((v54 - v53) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_65:
        sub_3244();
      }
    }

    if (v18 >= 0x17)
    {
      operator new();
    }

    v49 = v18;
    if (v18)
    {
      memmove(&__p, v47, v18);
    }

    goto LABEL_57;
  }

  do
  {
    v19 = *(a7 + 64);
    if (v19 && (v20 = *(a7 + 56), v20 < *v19))
    {
      *(a7 + 56) = v20 + 1;
    }

    else
    {
      sub_14D5D9C(*(a7 + 48));
      sub_19593CC(a7 + 48, v21);
    }

    --v17;
  }

  while (v17);
  sub_EB5504(a1, a2, a6, a7);
  sub_EB5678(a1, a3, a6, a7);
  sub_EB5B34(a1, a4, a6, a7);
  sub_EB5CA8(v22, a5, a6, a7);
  sub_EB5F78(v23, a7);
  *(a7 + 40) |= 0x20u;
  *(a7 + 160) = 20;
  v24 = *(a7 + 64);
  if (v24)
  {
    v25 = v24 + 8;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a7 + 56);
  if (v26)
  {
    v27 = v25 + 8 * v26;
    v28 = v25;
    while (1)
    {
      v29 = *(*v28 + 32);
      v30 = *(*v28 + 40);
      v31 = v30 ? v30 + 8 : 0;
      if (v29)
      {
        break;
      }

LABEL_26:
      v28 += 8;
      if (v28 == v27)
      {
        goto LABEL_36;
      }
    }

    v32 = 8 * v29;
    while (*(*v31 + 68))
    {
      v31 += 8;
      v32 -= 8;
      if (!v32)
      {
        goto LABEL_26;
      }
    }

    *(a7 + 160) = 0;
LABEL_36:
    if (a6[8])
    {
      do
      {
        v33 = *v25;
        v34 = *(*v25 + 40);
        v37 = *(v34 + 8);
        v36 = (v34 + 8);
        v35 = v37;
        v38 = v37[17];
        v39 = *(*v25 + 16);
        v40 = v39 | 2;
        v33[4] = v39 | 2;
        v33[20] = v38;
        v41 = v37[4];
        if ((v41 & 0x10) != 0)
        {
          v43 = v35[18];
          v40 = v39 | 6;
          v33[4] = v39 | 6;
          v33[21] = v43;
          v41 = v35[4];
          if ((v41 & 0x20) == 0)
          {
LABEL_41:
            if ((v41 & 0x80) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_46;
          }
        }

        else if ((v41 & 0x20) == 0)
        {
          goto LABEL_41;
        }

        v44 = v35[19];
        v40 |= 8u;
        v33[4] = v40;
        v33[22] = v44;
        if ((v35[4] & 0x80) == 0)
        {
LABEL_42:
          v42 = v33[8];
          if (v42 >= 1)
          {
            goto LABEL_47;
          }

          goto LABEL_38;
        }

LABEL_46:
        v45 = v35[22];
        v33[4] = v40 | 0x10;
        v33[23] = v45;
        v42 = v33[8];
        if (v42 >= 1)
        {
          do
          {
LABEL_47:
            sub_14D141C(*v36++);
            --v42;
          }

          while (v42);
          v33[8] = 0;
        }

LABEL_38:
        v25 += 8;
      }

      while (v25 != v27);
    }
  }
}

void sub_EB5468(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  sub_14D4598(v21);
  _Unwind_Resume(a1);
}

void sub_EB5504(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = 1736263375 * ((v4 - *a2) >> 3);
    if (v5 >= 1)
    {
      v9 = 0;
      v10 = v5 & 0x7FFFFFFF;
      v11 = 8;
      do
      {
        while (1)
        {
          v12 = *a2;
          v13 = *(*(a4 + 64) + v11);
          v14 = *(v13 + 40);
          if (v14 && (v15 = *(v13 + 32), v15 < *v14))
          {
            *(v13 + 32) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_14D5CF8(*(v13 + 24));
            v16 = sub_19593CC(v13 + 24, v17);
          }

          v18 = v16[4];
          v16[4] = v18 | 4;
          v16[16] = 3;
          if (*(v12 + v9 + 24) != 0x7FFFFFFFFFFFFFFFLL && *(v12 + v9 + 36) != 0x7FFFFFFF)
          {
            break;
          }

          v16[4] = v18 | 0xC;
          v16[17] = 20;
          v11 += 8;
          v9 += 376;
          if (!--v10)
          {
            return;
          }
        }

        sub_EB45F4(a1, (v12 + v9), a3, v16);
        v16[4] |= 8u;
        v16[17] = 0;
        v11 += 8;
        v9 += 376;
        --v10;
      }

      while (v10);
    }
  }
}

void sub_EB5678(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = 1736263375 * ((v4 - *a2) >> 3);
    if (v5 >= 1)
    {
      v8 = 0;
      v39 = v5 & 0x7FFFFFFF;
      while (1)
      {
        v9 = *a2;
        v10 = *(*(a4 + 64) + 8 * v8 + 8);
        v11 = *(v10 + 40);
        if (v11 && (v12 = *(v10 + 32), v12 < *v11))
        {
          *(v10 + 32) = v12 + 1;
          v13 = *&v11[2 * v12 + 2];
        }

        else
        {
          v14 = sub_14D5CF8(*(v10 + 24));
          v13 = sub_19593CC(v10 + 24, v14);
        }

        v15 = v9 + 376 * v8;
        v16 = *(v13 + 16);
        *(v13 + 16) = v16 | 4;
        *(v13 + 64) = 0;
        if (*(v15 + 24) == 0x7FFFFFFFFFFFFFFFLL || *(v15 + 36) == 0x7FFFFFFF)
        {
          *(v13 + 16) = v16 | 0xC;
          *(v13 + 68) = 20;
          goto LABEL_5;
        }

        sub_EB4D44(a1, v15, a3, v13);
        if (a3[7] == 1)
        {
          break;
        }

LABEL_21:
        *(v13 + 16) |= 8u;
        *(v13 + 68) = 0;
        v23 = *(v15 + 352);
        v22 = *(v15 + 360);
        if (v23 != v22)
        {
          while (1)
          {
            sub_52B7D8(v40, v23);
            v25 = *(*(a4 + 64) + 8 * v8 + 8);
            v26 = *(v25 + 64);
            if (v26 && (v27 = *(v25 + 56), v27 < *v26))
            {
              *(v25 + 56) = v27 + 1;
              v28 = *&v26[2 * v27 + 2];
            }

            else
            {
              v29 = sub_14BDEB8(*(v25 + 48));
              v28 = sub_19593CC(v25 + 48, v29);
            }

            v30 = *(v28 + 16);
            *(v28 + 32) = v41;
            *(v28 + 16) = v30 | 3;
            v31 = *(v28 + 24);
            if (!v31)
            {
              v32 = *(v28 + 8);
              v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
              if (v32)
              {
                v33 = *v33;
              }

              v31 = sub_14BDE5C(v33);
              *(v28 + 24) = v31;
            }

            sub_EC6F6C(v40, v31, 0, v24);
            if (v70 != 1)
            {
              v54 = off_26696C8;
              if ((v56 & 0x80000000) == 0)
              {
                goto LABEL_34;
              }

              goto LABEL_60;
            }

            v34 = __p;
            if (__p)
            {
              break;
            }

LABEL_54:
            if (v67 < 0)
            {
              operator delete(v66);
              if ((v65 & 0x80000000) == 0)
              {
LABEL_56:
                if ((v63 & 0x80000000) == 0)
                {
                  goto LABEL_57;
                }

                goto LABEL_69;
              }
            }

            else if ((v65 & 0x80000000) == 0)
            {
              goto LABEL_56;
            }

            operator delete(v64);
            if ((v63 & 0x80000000) == 0)
            {
LABEL_57:
              if ((v61 & 0x80000000) == 0)
              {
                goto LABEL_58;
              }

LABEL_70:
              operator delete(v60);
              if ((v59 & 0x80000000) == 0)
              {
                goto LABEL_59;
              }

              goto LABEL_71;
            }

LABEL_69:
            operator delete(v62);
            if (v61 < 0)
            {
              goto LABEL_70;
            }

LABEL_58:
            if ((v59 & 0x80000000) == 0)
            {
              goto LABEL_59;
            }

LABEL_71:
            operator delete(v58);
LABEL_59:
            sub_33D080(&v57);
            v54 = off_26696C8;
            if ((v56 & 0x80000000) == 0)
            {
LABEL_34:
              if ((v53 & 0x80000000) == 0)
              {
                goto LABEL_35;
              }

              goto LABEL_61;
            }

LABEL_60:
            operator delete(v55);
            if ((v53 & 0x80000000) == 0)
            {
LABEL_35:
              if ((v51 & 0x80000000) == 0)
              {
                goto LABEL_36;
              }

              goto LABEL_62;
            }

LABEL_61:
            operator delete(v52);
            if ((v51 & 0x80000000) == 0)
            {
LABEL_36:
              if ((v49 & 0x80000000) == 0)
              {
                goto LABEL_37;
              }

              goto LABEL_63;
            }

LABEL_62:
            operator delete(v50);
            if ((v49 & 0x80000000) == 0)
            {
LABEL_37:
              if ((v47 & 0x80000000) == 0)
              {
                goto LABEL_38;
              }

              goto LABEL_64;
            }

LABEL_63:
            operator delete(v48);
            if ((v47 & 0x80000000) == 0)
            {
LABEL_38:
              if ((v45 & 0x80000000) == 0)
              {
                goto LABEL_39;
              }

              goto LABEL_65;
            }

LABEL_64:
            operator delete(v46);
            if ((v45 & 0x80000000) == 0)
            {
LABEL_39:
              if (v43 < 0)
              {
                goto LABEL_66;
              }

              goto LABEL_23;
            }

LABEL_65:
            operator delete(v44);
            if (v43 < 0)
            {
LABEL_66:
              operator delete(v42);
            }

LABEL_23:
            sub_2C0F28(v40);
            v23 += 1120;
            if (v23 == v22)
            {
              goto LABEL_5;
            }
          }

          v35 = v69;
          v36 = __p;
          if (v69 == __p)
          {
LABEL_53:
            v69 = v34;
            operator delete(v36);
            goto LABEL_54;
          }

          while (2)
          {
            if (*(v35 - 1) < 0)
            {
              operator delete(*(v35 - 3));
              if (*(v35 - 25) < 0)
              {
                goto LABEL_50;
              }

LABEL_47:
              if (*(v35 - 49) < 0)
              {
LABEL_51:
                operator delete(*(v35 - 9));
              }
            }

            else
            {
              if ((*(v35 - 25) & 0x80000000) == 0)
              {
                goto LABEL_47;
              }

LABEL_50:
              operator delete(*(v35 - 6));
              if (*(v35 - 49) < 0)
              {
                goto LABEL_51;
              }
            }

            v35 -= 31;
            sub_33D5A0(v35);
            if (v35 == v34)
            {
              v36 = __p;
              goto LABEL_53;
            }

            continue;
          }
        }

LABEL_5:
        if (++v8 == v39)
        {
          return;
        }
      }

      v17 = *(v15 + 320);
      if (v17 > 5)
      {
        v18 = 0;
        *(v13 + 16) |= 1u;
        v19 = *(v13 + 48);
        if (!v19)
        {
LABEL_17:
          v20 = *(v13 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_14BEF24(v21);
          *(v13 + 48) = v19;
        }
      }

      else
      {
        v18 = dword_22ACFA0[v17];
        *(v13 + 16) |= 1u;
        v19 = *(v13 + 48);
        if (!v19)
        {
          goto LABEL_17;
        }
      }

      *(v19 + 16) |= 8u;
      *(v19 + 48) = v18;
      goto LABEL_21;
    }
  }
}