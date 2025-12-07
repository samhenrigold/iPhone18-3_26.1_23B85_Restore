void sub_1000B2E0C(_Unwind_Exception *a1)
{
  sub_100087F08(v1 + 10);
  sub_100087F08(v1 + 9);
  sub_100086140(v2);
  sub_100087F08(v1 + 7);
  v5 = *v3;
  if (*v3)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1000B2E60(void *a1)
{
  v2 = a1[1];
  if (a1[2] != v2)
  {
    v3 = 0;
    do
    {
      sub_1000B2EC8(*(v2 + 8 * v3++), a1 + 9);
      v2 = a1[1];
    }

    while (v3 < (a1[2] - v2) >> 3);
  }

  a1[2] = v2;

  return sub_100086140(a1 + 4);
}

void *sub_1000B2EC8(void *result, uint64_t **a2)
{
  if (result)
  {
    v3 = result;
    v4 = (result + 3);
    sub_1000B2F28(&v4);
    sub_100087F08(v3 + 6);
    result = sub_1000B3E4C(*a2);
    v3[8] = result[7];
    result[7] = v3;
  }

  return result;
}

void sub_1000B2F28(void ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v1[1] = v2;
    sub_1000B2F64(v1 + 3, v2, (v1[2] - v2) >> 4);
  }
}

void sub_1000B2F64(uint64_t **a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = sub_1000B327C(*a1);
    if (!__p)
    {
      return;
    }

    __p[4] = v4[7];
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v4 = sub_1000B3084(*a1);
    if (!__p)
    {
      return;
    }

    __p[2] = v4[7];
LABEL_22:
    v4[7] = __p;
    return;
  }

  if (a3 <= 4)
  {
    v4 = sub_1000B3474(*a1);
    if (!__p)
    {
      return;
    }

    __p[8] = v4[7];
    goto LABEL_22;
  }

  if (a3 <= 8)
  {
    v4 = sub_1000B366C(*a1);
    if (!__p)
    {
      return;
    }

    __p[16] = v4[7];
    goto LABEL_22;
  }

  if (a3 <= 0x10)
  {
    v4 = sub_1000B3864(*a1);
    if (!__p)
    {
      return;
    }

    __p[32] = v4[7];
    goto LABEL_22;
  }

  if (a3 <= 0x20)
  {
    v4 = sub_1000B3A5C(*a1);
    if (!__p)
    {
      return;
    }

    __p[64] = v4[7];
    goto LABEL_22;
  }

  if (a3 <= 0x40)
  {
    v4 = sub_1000B3C54(*a1);
    if (!__p)
    {
      return;
    }

    __p[128] = v4[7];
    goto LABEL_22;
  }

  operator delete(__p);
}

void *sub_1000B3084(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x80)
  {
    sub_100082ED0(a1 + 2, 0x11uLL);
    v1 = *v2;
  }

  if (!*(v1 + 128))
  {
    operator new();
  }

  return *(v1 + 128);
}

void *sub_1000B318C(void *a1)
{
  *a1 = off_100101CE8;
  a1[1] = off_100101D10;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000B31F4(void *a1)
{
  *a1 = off_100101CE8;
  a1[1] = off_100101D10;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_1000B327C(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x100)
  {
    sub_100082ED0(a1 + 2, 0x21uLL);
    v1 = *v2;
  }

  if (!*(v1 + 256))
  {
    operator new();
  }

  return *(v1 + 256);
}

void *sub_1000B3384(void *a1)
{
  *a1 = off_100101DA8;
  a1[1] = off_100101DD0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000B33EC(void *a1)
{
  *a1 = off_100101DA8;
  a1[1] = off_100101DD0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_1000B3474(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x200)
  {
    sub_100082ED0(a1 + 2, 0x41uLL);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

void *sub_1000B357C(void *a1)
{
  *a1 = off_100101E68;
  a1[1] = off_100101E90;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000B35E4(void *a1)
{
  *a1 = off_100101E68;
  a1[1] = off_100101E90;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_1000B366C(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x400)
  {
    sub_100082ED0(a1 + 2, 0x81uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

void *sub_1000B3774(void *a1)
{
  *a1 = off_100101F28;
  a1[1] = off_100101F50;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000B37DC(void *a1)
{
  *a1 = off_100101F28;
  a1[1] = off_100101F50;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_1000B3864(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x800)
  {
    sub_100082ED0(a1 + 2, 0x101uLL);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

void *sub_1000B396C(void *a1)
{
  *a1 = off_100101FE8;
  a1[1] = off_100102010;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000B39D4(void *a1)
{
  *a1 = off_100101FE8;
  a1[1] = off_100102010;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_1000B3A5C(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x1000)
  {
    sub_100082ED0(a1 + 2, 0x201uLL);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

void *sub_1000B3B64(void *a1)
{
  *a1 = off_1001020A8;
  a1[1] = off_1001020D0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000B3BCC(void *a1)
{
  *a1 = off_1001020A8;
  a1[1] = off_1001020D0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_1000B3C54(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x2000)
  {
    sub_100082ED0(a1 + 2, 0x401uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x2000))
  {
    operator new();
  }

  return *(v1 + 0x2000);
}

void *sub_1000B3D5C(void *a1)
{
  *a1 = off_100102168;
  a1[1] = off_100102190;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000B3DC4(void *a1)
{
  *a1 = off_100102168;
  a1[1] = off_100102190;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_1000B3E4C(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x200)
  {
    sub_100082ED0(a1 + 2, 0x41uLL);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

void *sub_1000B3F54(void *a1)
{
  *a1 = off_100101E68;
  a1[1] = off_100101E90;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000B3FBC(void *a1)
{
  *a1 = off_100101E68;
  a1[1] = off_100101E90;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_1000B4044(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x400)
  {
    sub_100082ED0(a1 + 2, 0x81uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

void *sub_1000B414C(void *a1)
{
  *a1 = off_100101F28;
  a1[1] = off_100101F50;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000B41B4(void *a1)
{
  *a1 = off_100101F28;
  a1[1] = off_100101F50;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_1000B423C(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x800)
  {
    sub_100082ED0(a1 + 2, 0x101uLL);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

void *sub_1000B4344(void *a1)
{
  *a1 = off_100101FE8;
  a1[1] = off_100102010;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000B43AC(void *a1)
{
  *a1 = off_100101FE8;
  a1[1] = off_100102010;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_1000B4434(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x1000)
  {
    sub_100082ED0(a1 + 2, 0x201uLL);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

void *sub_1000B453C(void *a1)
{
  *a1 = off_1001020A8;
  a1[1] = off_1001020D0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000B45A4(void *a1)
{
  *a1 = off_1001020A8;
  a1[1] = off_1001020D0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_1000B462C(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x2000)
  {
    sub_100082ED0(a1 + 2, 0x401uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x2000))
  {
    operator new();
  }

  return *(v1 + 0x2000);
}

void *sub_1000B4734(void *a1)
{
  *a1 = off_100102168;
  a1[1] = off_100102190;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000B479C(void *a1)
{
  *a1 = off_100102168;
  a1[1] = off_100102190;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_1000B4824(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x4000)
  {
    sub_100082ED0(a1 + 2, 0x801uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x4000))
  {
    operator new();
  }

  return *(v1 + 0x4000);
}

void *sub_1000B492C(void *a1)
{
  *a1 = off_100102368;
  a1[1] = off_100102390;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000B4994(void *a1)
{
  *a1 = off_100102368;
  a1[1] = off_100102390;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_1000B4A1C(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x8000)
  {
    sub_100082ED0(a1 + 2, 0x1001uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x8000))
  {
    operator new();
  }

  return *(v1 + 0x8000);
}

void *sub_1000B4B2C(void *a1)
{
  *a1 = off_100102428;
  a1[1] = off_100102450;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000B4B94(void *a1)
{
  *a1 = off_100102428;
  a1[1] = off_100102450;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_1000B4C1C(uint64_t a1)
{
  *a1 = &off_100104300;
  if (*(a1 + 129) == 1)
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      sub_1000B4CA4(v2);
      operator delete();
    }
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    operator delete(v3);
  }

  return sub_1000A8100(a1);
}

uint64_t *sub_1000B4CA4(uint64_t *a1)
{
  sub_1000B2E60(a1);
  sub_100087F08(a1 + 10);
  sub_100087F08(a1 + 9);
  sub_100086140(a1 + 4);
  sub_100087F08(a1 + 7);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1000B4D00(uint64_t *a1, size_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  *a1 = a3;
  if (!a4)
  {
    operator new();
  }

  a1[1] = a4;
  a1[2] = a1;
  a1[3] = a1;
  sub_1000B4E14((a1 + 4), a2, a1 + 2, a1 + 3);
}

void sub_1000B4DA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1000B4F14(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = sub_10008A348(*(a1 + 32));
      v2[3] = v4[7];
      v4[7] = v2;
      v2 = v3;
    }

    while (v3);
  }

  sub_100087F08((a1 + 32));

  return sub_100088580(a1);
}

void *sub_1000B4F84(void *a1)
{
  v4 = a1 + 14;
  v2 = a1[14];
  v3 = v4[1];
  if (((v3 - v2) >> 3) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        v7 = *v6;
        if (*v6)
        {
          do
          {
            v8 = *v7;
            operator delete(v7);
            v7 = v8;
          }

          while (v8);
        }

        *v6 = 0;
        operator delete();
      }

      ++v5;
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  sub_1000B4F14((a1 + 5));
  v9 = a1[2];
  a1[2] = 0;
  if (v9)
  {
    operator delete();
  }

  v10 = a1[1];
  a1[1] = 0;
  if (v10)
  {
    operator delete();
  }

  return a1;
}

void sub_1000B5070(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete();
  }
}

void sub_1000B527C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000B255C(v18 + 23);
  v20 = v18[22];
  v18[22] = 0;
  if (v20)
  {
    sub_1000B5070((v18 + 22), v20);
  }

  sub_1000B25A4(v18);
  _Unwind_Resume(a1);
}

void sub_1000B5434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 136);
  *(v15 + 136) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_1000B4C1C(v15);
  _Unwind_Resume(a1);
}

void sub_1000B549C(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = off_100103C58;
  *(a1 + 8) = 0;
  sub_1000113AC((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &off_100104300;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0xFFFFFFFFLL;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xFFFFFFFF00000000;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

uint64_t sub_1000B566C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1000B57D8(a1, a2);
    *(a1 + 64) = *(a1 + 40);
    *(a1 + 88) = *(a2 + 88);
    v4 = *(a2 + 92);
    *(a1 + 92) = v4;
    if (v4 == -1)
    {
      v5 = 0;
    }

    else
    {
      v5 = sub_1000B56DC(a1, 0);
    }

    *(a1 + 96) = v5;
  }

  return a1;
}

void *sub_1000B56DC(uint64_t a1, int a2)
{
  v14 = a2;
  v3 = a2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v4 = (a1 + 8);
  if (a2 >= ((v6 - v5) >> 3))
  {
    v13 = 0;
    sub_10008CC00(v4, a2 + 1, &v13);
  }

  else
  {
    v7 = *(v5 + 8 * a2);
    if (v7)
    {
      return v7;
    }
  }

  v7 = sub_1000B5990((a1 + 72), 1uLL);
  *v7 = *sub_10002B59C(v7, v8);
  v7[5] = 0;
  *(v7 + 3) = 0u;
  *(v7 + 1) = 0u;
  v9 = *(a1 + 80);
  v7[6] = v9;
  ++*(v9 + 8);
  v7[7] = 0;
  *(*(a1 + 8) + 8 * v3) = v7;
  if (*a1 == 1)
  {
    v10 = sub_10008C240(a1 + 32, 0, 0, &v14);
    v11 = *(a1 + 32);
    *v10 = v11;
    v10[1] = a1 + 32;
    *(v11 + 8) = v10;
    *(a1 + 32) = v10;
    ++*(a1 + 48);
  }

  return v7;
}

void sub_1000B57D8(void *a1, uint64_t a2)
{
  sub_1000B2E60(a1);
  sub_10002E1F8(a1 + 1, (*(a2 + 16) - *(a2 + 8)) >> 3);
  v23 = 0;
  v4 = *(a2 + 8);
  if (*(a2 + 16) != v4)
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 8 * v5);
      if (v6)
      {
        v7 = sub_1000B5990(a1 + 9, 1uLL);
        *v7 = *v6;
        *(v7 + 1) = *(v6 + 8);
        sub_1000B5B64(v7 + 3, *(v6 + 24), *(v6 + 32), a1 + 10);
        *(v7 + 14) = *(v6 + 56);
        *(v7 + 15) = 0;
        if (*a1 == 1)
        {
          v8 = sub_10008C240((a1 + 4), 0, 0, &v23);
          v9 = a1[4];
          *v8 = v9;
          v8[1] = a1 + 4;
          *(v9 + 8) = v8;
          a1[4] = v8;
          ++a1[6];
        }
      }

      else
      {
        v7 = 0;
      }

      v11 = a1[2];
      v10 = a1[3];
      if (v11 >= v10)
      {
        v13 = a1[1];
        v14 = (v11 - v13) >> 3;
        if ((v14 + 1) >> 61)
        {
          sub_100017658();
        }

        v15 = v10 - v13;
        v16 = v15 >> 2;
        if (v15 >> 2 <= (v14 + 1))
        {
          v16 = v14 + 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          sub_100017670((a1 + 1), v17);
        }

        v18 = (8 * v14);
        *v18 = v7;
        v12 = 8 * v14 + 8;
        v19 = a1[1];
        v20 = a1[2] - v19;
        v21 = v18 - v20;
        memcpy(v18 - v20, v19, v20);
        v22 = a1[1];
        a1[1] = v21;
        a1[2] = v12;
        a1[3] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v11 = v7;
        v12 = (v11 + 1);
      }

      a1[2] = v12;
      v5 = ++v23;
      v4 = *(a2 + 8);
    }

    while (v5 < (*(a2 + 16) - v4) >> 3);
  }
}

void *sub_1000B5990(uint64_t **a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = sub_1000B4044(*a1);
    result = v2[7];
    if (!result)
    {
      result = sub_100089F90(v2 + 1, 1);
      result[16] = 0;
      return result;
    }

    v4 = result[16];
  }

  else if (a2 == 1)
  {
    v2 = sub_1000B3E4C(*a1);
    result = v2[7];
    if (!result)
    {
      result = sub_100089E78(v2 + 1, 1);
      result[8] = 0;
      return result;
    }

    v4 = result[8];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (!(a2 >> 58))
            {

              operator new();
            }

            sub_100016D60();
          }

          v2 = sub_1000B4A1C(*a1);
          result = v2[7];
          if (!result)
          {
            result = sub_10008BE14(v2 + 1, 1);
            result[512] = 0;
            return result;
          }

          v4 = result[512];
        }

        else
        {
          v2 = sub_1000B4824(*a1);
          result = v2[7];
          if (!result)
          {
            result = sub_10008BCFC(v2 + 1, 1);
            result[256] = 0;
            return result;
          }

          v4 = result[256];
        }
      }

      else
      {
        v2 = sub_1000B462C(*a1);
        result = v2[7];
        if (!result)
        {
          result = sub_10008BBE4(v2 + 1, 1);
          result[128] = 0;
          return result;
        }

        v4 = result[128];
      }
    }

    else
    {
      v2 = sub_1000B4434(*a1);
      result = v2[7];
      if (!result)
      {
        result = sub_10008A1C0(v2 + 1, 1);
        result[64] = 0;
        return result;
      }

      v4 = result[64];
    }
  }

  else
  {
    v2 = sub_1000B423C(*a1);
    result = v2[7];
    if (!result)
    {
      result = sub_10008A0A8(v2 + 1, 1);
      result[32] = 0;
      return result;
    }

    v4 = result[32];
  }

  v2[7] = v4;
  return result;
}

uint64_t *sub_1000B5B64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *a4;
  a1[3] = *a4;
  ++*(v5 + 8);
  sub_1000B5BC8(a1, a2, a3, (a3 - a2) >> 4);
  return a1;
}

uint64_t *sub_1000B5BC8(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_1000B5C5C(result, a4);
    v7 = v6[1];
    while (a2 != a3)
    {
      *v7 = *a2;
      *(v7 + 8) = *(a2 + 8);
      *(v7 + 12) = *(a2 + 12);
      a2 += 16;
      v7 += 16;
    }

    v6[1] = v7;
  }

  return result;
}

uint64_t *sub_1000B5C5C(uint64_t **a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    sub_100017658();
  }

  result = sub_1000B5CA4(a1 + 3, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[2 * a2];
  return result;
}

void *sub_1000B5CA4(uint64_t **a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = sub_1000B327C(*a1);
    result = v2[7];
    if (!result)
    {
      result = sub_100089D60(v2 + 1, 1);
      result[4] = 0;
      return result;
    }

    v4 = result[4];
  }

  else if (a2 == 1)
  {
    v2 = sub_1000B3084(*a1);
    result = v2[7];
    if (!result)
    {
      result = sub_100089C48(v2 + 1, 1);
      result[2] = 0;
      return result;
    }

    v4 = result[2];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (!(a2 >> 60))
            {

              operator new();
            }

            sub_100016D60();
          }

          v2 = sub_1000B3C54(*a1);
          result = v2[7];
          if (!result)
          {
            result = sub_10008BBE4(v2 + 1, 1);
            result[128] = 0;
            return result;
          }

          v4 = result[128];
        }

        else
        {
          v2 = sub_1000B3A5C(*a1);
          result = v2[7];
          if (!result)
          {
            result = sub_10008A1C0(v2 + 1, 1);
            result[64] = 0;
            return result;
          }

          v4 = result[64];
        }
      }

      else
      {
        v2 = sub_1000B3864(*a1);
        result = v2[7];
        if (!result)
        {
          result = sub_10008A0A8(v2 + 1, 1);
          result[32] = 0;
          return result;
        }

        v4 = result[32];
      }
    }

    else
    {
      v2 = sub_1000B366C(*a1);
      result = v2[7];
      if (!result)
      {
        result = sub_100089F90(v2 + 1, 1);
        result[16] = 0;
        return result;
      }

      v4 = result[16];
    }
  }

  else
  {
    v2 = sub_1000B3474(*a1);
    result = v2[7];
    if (!result)
    {
      result = sub_100089E78(v2 + 1, 1);
      result[8] = 0;
      return result;
    }

    v4 = result[8];
  }

  v2[7] = v4;
  return result;
}

void sub_1000B5E78(void *result, int a2, void *a3)
{
  v5 = **(*(result[23] + 112) + 8 * a2);
  if (v5)
  {
    while (1)
    {
      v6 = *(v5 + 2);
      v7 = result[17];
      v23 = 0u;
      v24 = 0u;
      v25 = 0;
      (*(*v7 + 120))(v7, v6, &v23);
      v9 = v23;
      if (!v23)
      {
        break;
      }

      v10 = (*(*v23 + 16))(v23);
      v9 = v23;
      if (!v10)
      {
        if (v23)
        {
          v9 = (*(*v23 + 24))();
          v11 = v9;
        }

        else
        {
LABEL_7:
          v11 = *(&v23 + 1) + 16 * v25;
        }

        v12 = *(v11 + 12);
        v13 = v5[3];
        if (v13 == -INFINITY || (v14 = *(v11 + 8), v14 >= -INFINITY) && v14 <= -INFINITY)
        {
          v15 = *sub_1000777A0(v9, v8);
        }

        else
        {
          v16 = v14 == INFINITY || v13 == INFINITY;
          v15 = v13 + v14;
          if (v16)
          {
            v15 = INFINITY;
          }
        }

        v22[0] = v12;
        *&v22[1] = v15;
        sub_1000B6244(result[22], v11, (v5 + 2), v22, a3);
      }

      if (!v23)
      {
        goto LABEL_20;
      }

      (*(*v23 + 8))();
LABEL_22:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_23;
      }
    }

    if (v25 < v24)
    {
      goto LABEL_7;
    }

LABEL_20:
    if (*(&v24 + 1))
    {
      --**(&v24 + 1);
    }

    goto LABEL_22;
  }

LABEL_23:
  v19 = *a3;
  v17 = a3 + 1;
  v18 = v19;
  if (v19 != v17)
  {
    do
    {
      sub_1000B6334(result, (v18 + 5));
      v20 = v18[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v18[2];
          v16 = *v21 == v18;
          v18 = v21;
        }

        while (!v16);
      }

      v18 = v21;
    }

    while (v21 != v17);
  }
}

void sub_1000B60E0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000B6138(void *a1, uint64_t a2, float ***a3)
{
  v5 = *a3;
  v6 = *(a3 + 1);
  v7 = sub_1000B683C(a1, a3[1]);
  v10[0] = v5;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v8 = sub_1000B7064(a1[15], a2);
  return sub_1000B77AC(v8 + 3, v10);
}

void sub_1000B61A8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_1000B7064(*(a1 + 120), a2);
  sub_1000B78C8(*(a1 + 120), v4);
  v5 = v4[3];
  v6 = v4[4] - v5;
  if (v6)
  {
    v7 = v6 >> 4;
    v8 = *(a1 + 64);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = (v5 + 12);
    do
    {
      v11 = *v9;
      v9 += 4;
      v10 = v11;
      if (v11 >= v8)
      {
        v8 = v10 + 1;
        *(a1 + 64) = v10 + 1;
      }

      --v7;
    }

    while (v7);
  }

  sub_10008E9DC(a1, v2);
  *(v4 + 14) |= 0xAu;
}

void sub_1000B6244(uint64_t a1, int *a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v8 = a2;
  v5 = sub_1000B64F0(a5, a2, &unk_1000D4DE9, &v8, &v7);
  if (*(v5 + 10) != -1)
  {
    operator new();
  }

  sub_10002B59C(v5, v6);
  operator new();
}

void sub_1000B6334(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = sub_1000B6644(v4);
  v7 = *v4;
  if (*v4)
  {
    v8 = *v4;
    do
    {
      v9 = *(a2 + 4);
      if (v9 == -INFINITY || (v10 = *(v8 + 3), v10 >= -INFINITY) && v10 <= -INFINITY)
      {
        v5 = sub_1000777A0(v5, v6);
        v9 = *v5;
      }

      else if (v9 >= v10)
      {
        v9 = *(v8 + 3);
      }

      *(a2 + 4) = v9;
      if (v7 == v8 || *(v8 + 2) != *(v7 + 2))
      {
        v13 = *v8;
        v7 = v8;
      }

      else
      {
        v11 = *(v7 + 3);
        if (v11 == -INFINITY || (v12 = *(v8 + 3), v12 >= -INFINITY) && v12 <= -INFINITY)
        {
          v11 = *sub_1000777A0(v5, v6);
        }

        else if (v11 >= v12)
        {
          v11 = *(v8 + 3);
        }

        *(v7 + 3) = v11;
        if (v11 >= -INFINITY && v11 <= -INFINITY)
        {
          *(a1 + 8) |= 4uLL;
        }

        v13 = *v8;
        v14 = *v7;
        *v7 = **v7;
        operator delete(v14);
      }

      v8 = v13;
    }

    while (v13);
    for (i = *v4; i; i = *i)
    {
      v16 = *(i + 3);
      if (v16 == -INFINITY || (v17 = *(a2 + 4), v17 >= -INFINITY) && v17 <= -INFINITY)
      {
        v5 = sub_1000777A0(v5, v6);
        v18 = *v5;
      }

      else
      {
        v19 = v16 == INFINITY;
        v18 = v16 - v17;
        if (v19)
        {
          v18 = INFINITY;
        }

        if (v17 == INFINITY)
        {
          v18 = NAN;
        }
      }

      if ((LODWORD(v18) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v18 = *(a1 + 144) * floorf((v18 / *(a1 + 144)) + 0.5);
      }

      *(i + 3) = v18;
    }
  }
}

uint64_t *sub_1000B64F0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_8:
    sub_1000B65AC();
  }

  v6 = *a2;
  while (1)
  {
    while (1)
    {
      v7 = v5;
      v8 = *(v5 + 32);
      if (v6 >= v8)
      {
        break;
      }

      v5 = *v7;
      if (!*v7)
      {
        goto LABEL_8;
      }
    }

    if (v8 >= v6)
    {
      return v7;
    }

    v5 = v7[1];
    if (!v5)
    {
      goto LABEL_8;
    }
  }
}

void sub_1000B662C(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000B6644(uint64_t **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = 0;
    v4 = v2;
    do
    {
      ++v3;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    v3 = 0;
  }

  result = sub_1000B669C(v2, v3, &v6);
  *a1 = result;
  return result;
}

uint64_t *sub_1000B669C(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      v4 = *result;
      if (*(*result + 8) < *(result + 2))
      {
        *v4 = result;
        *result = 0;
        return v4;
      }
    }

    else
    {
      v8 = a2 / 2;
      v9 = a2 - a2 / 2;
      v10 = result;
      if (a2 >= 4)
      {
        v11 = v8;
        v10 = result;
        do
        {
          --v11;
          v10 = *v10;
        }

        while (v11 > 1);
      }

      v12 = *v10;
      *v10 = 0;
      v13 = sub_1000B669C(result, v8, a3);
      v14 = sub_1000B669C(v12, v9, a3);

      return sub_1000B676C(v13, v14);
    }
  }

  return result;
}

uint64_t *sub_1000B676C(uint64_t *a1, uint64_t *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 2);
      if (*(a2 + 2) >= v2)
      {
        v3 = a2;
        a2 = a1;
      }

      else
      {
        v3 = a2;
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3 && *(v3 + 2) < v2);
        *v4 = a1;
      }

      v5 = *a1;
      v6 = v3 != 0;
      if (*a1)
      {
        v7 = v3 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        do
        {
          v8 = v5;
          v9 = *(v5 + 8);
          if (*(v3 + 2) < v9)
          {
            v10 = v3;
            do
            {
              v11 = v10;
              v10 = *v10;
            }

            while (v10 && *(v10 + 2) < v9);
            *a1 = v3;
            v3 = *v11;
            *v11 = v8;
          }

          v5 = *v8;
          v6 = v3 != 0;
          if (*v8)
          {
            v12 = v3 == 0;
          }

          else
          {
            v12 = 1;
          }

          a1 = v8;
        }

        while (!v12);
        a1 = v8;
      }

      if (v6)
      {
        *a1 = v3;
      }
    }

    else
    {
      return a1;
    }
  }

  return a2;
}

uint64_t sub_1000B683C(void *a1, float **a2)
{
  v4 = sub_1000B68D8(a1[23], a2);
  v5 = v4;
  if (a1[19])
  {
    v6 = a1[20];
    if (v4 >= ((v6[1] - *v6) >> 2))
    {
      sub_1000B6970(a1, a2, &v10);
      v7 = v6[1];
      if (v7 >= v6[2])
      {
        v8 = sub_1000AEAA8(v6, &v10);
      }

      else
      {
        *v7 = v10;
        v8 = (v7 + 1);
      }

      v6[1] = v8;
    }
  }

  return v5;
}

uint64_t sub_1000B68D8(void *a1, void **a2)
{
  v8 = a2;
  v2 = (a1[15] - a1[14]) >> 3;
  v3 = sub_1000B6A60(a1 + 1, &v8, 1);
  if (v3 != v2)
  {
    v4 = v8;
    if (v8)
    {
      v5 = *v8;
      if (*v8)
      {
        do
        {
          v6 = *v5;
          operator delete(v5);
          v5 = v6;
        }

        while (v6);
      }

      *v4 = 0;
      operator delete();
    }
  }

  return v3;
}

int *sub_1000B6970@<X0>(uint64_t a1@<X0>, float **a2@<X1>, float *a3@<X8>)
{
  result = sub_10002B59C(a1, a2);
  v8 = *result;
  for (i = *a2; i; i = *i)
  {
    v10 = *(i + 2);
    v11 = **(a1 + 152);
    if (v10 >= (*(*(a1 + 152) + 8) - v11) >> 2)
    {
      result = sub_10002B59C(result, v7);
    }

    else
    {
      result = (v11 + 4 * v10);
    }

    v12 = i[3];
    if (v12 == -INFINITY || (v13 = *result, *result >= -INFINITY) && *result <= -INFINITY)
    {
      result = sub_1000777A0(result, v7);
      v14 = *result;
    }

    else
    {
      v15 = v12 == INFINITY || v13 == INFINITY;
      v14 = v13 + v12;
      if (v15)
      {
        v14 = INFINITY;
      }
    }

    if (v8 == -INFINITY || v14 >= -INFINITY && v14 <= -INFINITY)
    {
      result = sub_1000777A0(result, v7);
      v8 = *result;
    }

    else if (v8 >= v14)
    {
      v8 = v14;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000B6A60(void *a1, void *a2, int a3)
{
  a1[16] = a2;
  if (a3)
  {
    v5 = sub_1000B6B94(a1 + 4, &dword_1000D6340, &dword_1000D6340);
    if (v6)
    {
      v7 = a1[13];
      v8 = a1[14];
      v9 = a1[15];
      v10 = (v8 - v7) >> 3;
      *(v5 + 16) = v10;
      if (v8 >= v9)
      {
        v13 = v10 + 1;
        if ((v10 + 1) >> 61)
        {
          sub_100017658();
        }

        v14 = v9 - v7;
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
          sub_100017670((a1 + 13), v15);
        }

        *(8 * v10) = *a2;
        v11 = 8 * v10 + 8;
        v16 = a1[13];
        v17 = a1[14] - v16;
        v18 = (8 * v10 - v17);
        memcpy(v18, v16, v17);
        v19 = a1[13];
        a1[13] = v18;
        a1[14] = v11;
        a1[15] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v8 = *a2;
        v11 = (v8 + 1);
      }

      a1[14] = v11;
    }

    else
    {
      return *(v5 + 16);
    }
  }

  else
  {
    v12 = sub_1000B6F60(a1 + 4, &dword_1000D6340);
    if (v12)
    {
      return *(v12 + 4);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v10;
}

uint64_t sub_1000B6B94(uint64_t *a1, unsigned int *a2, _DWORD *a3)
{
  v7 = sub_1000B6E18(a1 + 6, *a2);
  v8 = v7;
  v9 = a1[1];
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = *(i + 8);
        if (v14 == v8)
        {
          if (sub_1000B6E74(a1 + 8, *(i + 16), *a2))
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v15 = sub_10008D428(a1 + 4, 1uLL);
  v27[0] = v15;
  v27[1] = (a1 + 4);
  v27[2] = 1;
  *v15 = 0;
  v15[1] = v8;
  *(v15 + 4) = *a3;
  v16 = (a1[5] + 1);
  v17 = *(a1 + 14);
  if (!v9 || (v17 * v9) < v16)
  {
    v18 = 1;
    if (v9 >= 3)
    {
      v18 = (v9 & (v9 - 1)) != 0;
    }

    v19 = v18 | (2 * v9);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    sub_100089724(a1, v21);
    v9 = a1[1];
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v3);
  if (v23)
  {
    i = v27[0];
    *v27[0] = *v23;
    *v23 = i;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = a1[3];
    a1[3] = v24;
    v22[v3] = (a1 + 3);
    i = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v25 >= v9)
        {
          v25 %= v9;
        }
      }

      else
      {
        v25 &= v9 - 1;
      }

      *(*a1 + 8 * v25) = v27[0];
      i = v27[0];
    }
  }

  v27[0] = 0;
  ++a1[5];
  sub_10008D60C(v27, 0);
  return i;
}

void sub_1000B6E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10008D60C(va, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_1000B6E18(uint64_t *a1, unsigned int a2)
{
  if (a2 < -1)
  {
    return 0;
  }

  v2 = *a1;
  if (a2 == -1)
  {
    v3 = *(v2 + 128);
  }

  else
  {
    v3 = (*(v2 + 104) + 8 * a2);
  }

  v5 = *v3;
  for (result = *(v5 + 8); ; result ^= (2 * result) ^ (32 * *(v5 + 2)) ^ (*(v5 + 2) >> 59) ^ *(v5 + 3))
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }
  }

  return result;
}

uint64_t sub_1000B6E74(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  result = 0;
  if (a2 >= -1 && a3 >= -1)
  {
    v5 = *a1;
    if (a2 == -1)
    {
      v6 = *(v5 + 128);
    }

    else
    {
      v6 = (*(v5 + 104) + 8 * a2);
    }

    v7 = *v6;
    if (a3 == -1)
    {
      v8 = *(v5 + 128);
    }

    else
    {
      v8 = (*(v5 + 104) + 8 * a3);
    }

    if (*(*v8 + 8) == *(v7 + 8))
    {
      return sub_1000B6EF4(*v8, v7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000B6EF4(uint64_t *a1, uint64_t *a2)
{
  while (1)
  {
    a1 = *a1;
    a2 = *a2;
    if (!a1 || a2 == 0)
    {
      break;
    }

    if (*(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3))
    {
      return 0;
    }
  }

  return (a1 == 0) ^ (a2 != 0);
}

uint64_t *sub_1000B6F60(void *a1, unsigned int *a2)
{
  v4 = sub_1000B6E18(a1 + 6, *a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_1000B6E74(a1 + 8, *(i + 4), *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void *sub_1000B7064(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000B70F0(a1, a2);
  v4 = v3;
  if (*(a1 + 104) == 1)
  {
    v5 = *(v3 + 14);
    if ((v5 & 4) == 0)
    {
      *(v3 + 14) = v5 | 4;
      v6 = v3[4] - v3[3] + *(a1 + 128) + 64;
      *(a1 + 128) = v6;
      *(a1 + 120) = 1;
      if (v6 > *(a1 + 112))
      {
        sub_1000B71D8(a1, v3, 0, 0.666);
      }
    }
  }

  return v4;
}

void *sub_1000B70F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 92);
  if (v3 == a2)
  {
    return *(a1 + 96);
  }

  if (*(a1 + 88) == 1)
  {
    if (v3 == -1)
    {
      *(a1 + 92) = a2;
      v7 = sub_1000B56DC(a1, 0);
      *(a1 + 96) = v7;
      *(v7 + 14) |= 4u;
      sub_1000B75FC((v7 + 3), 0x80uLL);
      return *(a1 + 96);
    }

    v5 = *(a1 + 96);
    if (!*(v5 + 60))
    {
      *(a1 + 92) = a2;
      *v5 = *sub_10002B59C(a1, a2);
      *(v5 + 56) = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *(v5 + 32) = *(v5 + 24);
      result = *(a1 + 96);
      *(result + 14) |= 4u;
      return result;
    }

    *(v5 + 56) &= ~4u;
    *(a1 + 88) = 0;
  }

  v6 = a2 + 1;

  return sub_1000B56DC(a1, v6);
}

void sub_1000B71D8(uint64_t a1, void *a2, uint64_t a3, float a4)
{
  if (*(a1 + 120) != 1)
  {
    return;
  }

  v5 = a3;
  if (dword_10010E8A8 >= 2)
  {
    sub_1000113AC(__p, "INFO");
    sub_10002B1D4(v32, __p);
    v8 = sub_10002AE44(&std::cerr, "GCCacheStore: Enter GC: object = ", 33);
    sub_10002AE44(v8, "(", 1);
    v9 = std::ostream::operator<<();
    sub_10002AE44(v9, "), free recently cached = ", 26);
    v10 = std::ostream::operator<<();
    sub_10002AE44(v10, ", cache size = ", 15);
    v11 = std::ostream::operator<<();
    sub_10002AE44(v11, ", cache frac = ", 15);
    v12 = std::ostream::operator<<();
    sub_10002AE44(v12, ", cache limit = ", 16);
    v13 = std::ostream::operator<<();
    sub_10002AE44(v13, "\n", 1);
    sub_10002B280(v32);
    if (v37 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = (*(a1 + 112) * a4);
  v15 = *(a1 + 40);
  *(a1 + 64) = v15;
  while (v15 != a1 + 32)
  {
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v16 - 1);
    }

    else
    {
      v17 = *(a1 + 92);
    }

    v18 = sub_1000B70F0(a1, v17);
    v19 = *(a1 + 128);
    if (v19 <= v14 || *(v18 + 15))
    {
LABEL_12:
      *(v18 + 14) &= ~8u;
      v15 = *(*(a1 + 64) + 8);
      *(a1 + 64) = v15;
    }

    else
    {
      if (v5)
      {
        if (v18 == a2)
        {
          goto LABEL_12;
        }

        v20 = *(v18 + 14);
      }

      else
      {
        v20 = *(v18 + 14);
        if ((v20 & 8) != 0 || v18 == a2)
        {
          goto LABEL_12;
        }
      }

      if ((v20 & 4) != 0)
      {
        v21 = v18[4] - v18[3] + 64;
        v22 = v19 > v21;
        v23 = v19 - v21;
        if (v22)
        {
          *(a1 + 128) = v23;
        }
      }

      sub_1000B7704(a1);
      v15 = *(a1 + 64);
    }
  }

  if ((v5 & 1) != 0 || *(a1 + 128) <= v14)
  {
    v24 = *(a1 + 128);
    if (v14)
    {
      if (v24 > v14)
      {
        v25 = *(a1 + 112);
        do
        {
          v25 *= 2;
          v22 = v24 > 2 * v14;
          v14 *= 2;
        }

        while (v22);
        *(a1 + 112) = v25;
      }
    }

    else if (v24)
    {
      if (byte_10010E280 == 1)
      {
        sub_1000113AC(__p, "FATAL");
      }

      else
      {
        sub_1000113AC(__p, "ERROR");
      }

      sub_10002B1D4(&v35, __p);
      sub_10002AE44(&std::cerr, "GCCacheStore:GC: Unable to free all cached states", 49);
      sub_10002B280(&v35);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    sub_1000B71D8(a1, a2, 1, a4);
  }

  if (dword_10010E8A8 >= 2)
  {
    sub_1000113AC(v32, "INFO");
    sub_10002B1D4(&v34, v32);
    v26 = sub_10002AE44(&std::cerr, "GCCacheStore: Exit GC: object = ", 32);
    sub_10002AE44(v26, "(", 1);
    v27 = std::ostream::operator<<();
    sub_10002AE44(v27, "), free recently cached = ", 26);
    v28 = std::ostream::operator<<();
    sub_10002AE44(v28, ", cache size = ", 15);
    v29 = std::ostream::operator<<();
    sub_10002AE44(v29, ", cache frac = ", 15);
    v30 = std::ostream::operator<<();
    sub_10002AE44(v30, ", cache limit = ", 16);
    v31 = std::ostream::operator<<();
    sub_10002AE44(v31, "\n", 1);
    sub_10002B280(&v34);
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }
  }
}

void sub_1000B7590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B75FC(uint64_t result, unint64_t a2)
{
  if (a2 > (*(result + 16) - *result) >> 4)
  {
    if (a2 >> 60)
    {
      sub_100017658();
    }

    v3 = result;
    v4 = *(result + 8) - *result;
    v5[4] = result + 24;
    v5[0] = sub_1000B5CA4((result + 24), a2);
    v5[1] = v5[0] + v4;
    v5[2] = v5[0] + v4;
    v5[3] = v5[0] + 16 * a2;
    sub_10002E370(v3, v5);
    return sub_1000B76A4(v5);
  }

  return result;
}

void sub_1000B7690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000B76A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B76A4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  if (*a1)
  {
    sub_1000B2F64(*(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 4);
  }

  return a1;
}

void *sub_1000B7704(uint64_t **a1)
{
  v1 = *(a1[8] + 4);
  if (!v1 || v1 - 1 == *(a1 + 23))
  {
    *(a1 + 23) = -1;
    a1[12] = 0;
  }

  return sub_1000B7730(a1);
}

void *sub_1000B7730(uint64_t **a1)
{
  sub_1000B2EC8(a1[1][*(a1[8] + 4)], a1 + 9);
  a1[1][*(a1[8] + 4)] = 0;
  v2 = a1[8];
  v4 = *v2;
  v3 = v2[1];
  a1[8] = v3;
  *(v4 + 8) = v3;
  *v3 = v4;
  a1[6] = (a1[6] - 1);

  return sub_1000861A0((a1 + 4), v2);
}

void *sub_1000B77AC(void *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = (v4 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_100017658();
    }

    v9 = v5 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v11 = (result + 3);
    v14[4] = v3 + 3;
    if (v10)
    {
      v12 = sub_1000B5CA4(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[2 * v7];
    v14[0] = v12;
    v14[1] = v13;
    v14[3] = &v12[2 * v10];
    *v13 = *a2;
    *(v13 + 2) = *(a2 + 8);
    *(v13 + 3) = *(a2 + 12);
    v14[2] = v13 + 2;
    sub_10002E370(v3, v14);
    v6 = v3[1];
    result = sub_1000B76A4(v14);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 12) = *(a2 + 12);
    v6 = v4 + 16;
  }

  v3[1] = v6;
  return result;
}

void sub_1000B78B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000B76A4(va);
  _Unwind_Resume(a1);
}

void sub_1000B78C8(uint64_t a1, uint64_t a2)
{
  sub_10008EA78(a2);
  if (*(a1 + 120) == 1 && (*(a2 + 56) & 4) != 0)
  {
    v4 = *(a2 + 32) - *(a2 + 24) + *(a1 + 128);
    *(a1 + 128) = v4;
    if (v4 > *(a1 + 112))
    {

      sub_1000B71D8(a1, a2, 0, 0.666);
    }
  }
}

uint64_t sub_1000B7958(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    if ((*(*a1 + 24))(a1, 4))
    {
      *(a1 + 56) = 1;
    }

    else if ((*(a1 + 56) & 1) == 0)
    {
      v2 = (*(*a1 + 48))(a1);
      if (v2 != -1)
      {
        *(a1 + 60) = v2;
        *(a1 + 56) = 1;
        if (*(a1 + 64) <= v2)
        {
          *(a1 + 64) = v2 + 1;
        }
      }
    }
  }

  return *(a1 + 60);
}

float sub_1000B7A18@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if ((sub_10008FC4C(a1, a2) & 1) == 0)
  {
    (*(*a1 + 56))(&v11, a1, a2);
    v6 = sub_1000B7064(a1[15], a2);
    *v6 = v11;
    v6[14] |= 9u;
  }

  v7 = a1[15];
  if (*(v7 + 92) == a2)
  {
    v8 = (v7 + 96);
  }

  else
  {
    v8 = (*(v7 + 8) + 8 * a2 + 8);
  }

  v9 = *v8;
  result = *v9;
  *a3 = *v9;
  return result;
}

uint64_t sub_1000B7ADC(void *a1, uint64_t a2)
{
  if ((sub_10008FD34(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

uint64_t sub_1000B7B68(void *a1, uint64_t a2)
{
  if ((sub_10008FD34(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 8);
}

uint64_t sub_1000B7BEC(void *a1, uint64_t a2)
{
  if ((sub_10008FD34(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 16);
}

void *sub_1000B7C70(void *a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = (*(*v4 + 32))(v4);
    sub_1000B7D10(&v8, v5);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[1] = v4;
  a1[2] = v6;
  *a1 = off_1001040E8;
  return a1;
}

void sub_1000B7D78(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1000B9868();
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B7D94(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000B7DCC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1000B7DFC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1000B7E54(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 64))
  {
    return 0;
  }

  v5 = sub_1000901D8(v3);
  if (v5 >= *(*(a1 + 16) + 64))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    sub_1000B7FB0(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 24);
    v8 = (*(v19 + 32) - v7) >> 4;
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 64);
      v12 = (v7 + 16 * v20 + 12);
      do
      {
        v14 = *v12;
        v12 += 4;
        v13 = v14;
        if (v11 <= v14)
        {
          v11 = v13 + 1;
          *(v9 + 64) = v13 + 1;
        }

        --v10;
      }

      while (v10);
      v20 = v8;
    }

    sub_10008E9DC(v9, v6);
    v15 = *(a1 + 24);
    v16 = *(a1 + 16);
    v17 = *(v16 + 64);
    --*(v19 + 60);
    v4 = v15 >= v17;
    if (v15 < v17)
    {
      break;
    }

    v6 = sub_1000901D8(v16);
  }

  while (v6 < *(*(a1 + 16) + 64));
  return v4;
}

uint64_t *sub_1000B7FB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  v7 = sub_1000B7064(*(v6 + 120), a3);
  *a1 = v7;
  ++*(v7 + 15);
  if ((sub_10008FD34(*(a2 + 8), a3) & 1) == 0)
  {
    (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t sub_1000B8058(uint64_t a1, uint64_t a2, void *a3)
{
  if ((sub_10008FD34(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  return sub_1000903E8(a1, a2, a3);
}

int *sub_1000B80D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, float *a4@<X8>)
{
  if (a3)
  {
    v7 = (*(*a1 + 16))(a1);
    if (v7 >= ((a2[1] - *a2) >> 2))
    {
      result = sub_10002B59C(v7, v8);
    }

    else
    {
      result = (*a2 + 4 * (*(*a1 + 16))(a1));
    }

    v10 = *result;
  }

  else
  {
    result = sub_10002B59C(a1, a2);
    v10 = *result;
    v11 = *a2;
    if (a2[1] != *a2)
    {
      v12 = 0;
      do
      {
        result = (*(*a1 + 24))(&v17, a1, v12);
        v14 = *(v11 + 4 * v12);
        if (v14 == -INFINITY || *&v17 >= -INFINITY && *&v17 <= -INFINITY)
        {
          result = sub_1000777A0(result, v13);
          v15 = *result;
        }

        else
        {
          v16 = *&v17 == INFINITY || v14 == INFINITY;
          v15 = v14 + *&v17;
          if (v16)
          {
            v15 = INFINITY;
          }
        }

        if (v10 == -INFINITY || v15 >= -INFINITY && v15 <= -INFINITY)
        {
          result = sub_1000777A0(result, v13);
          v10 = *result;
        }

        else if (v10 >= v15)
        {
          v10 = v15;
        }

        ++v12;
        v11 = *a2;
      }

      while (v12 < (a2[1] - *a2) >> 2);
    }
  }

  *a4 = v10;
  return result;
}

uint64_t sub_1000B8278(uint64_t *a1, uint64_t *a2, int a3)
{
  result = (*(*a1 + 136))(a1);
  if (!result)
  {
    return result;
  }

  v84 = 0;
  v85 = 0;
  v86 = 0;
  (*(*a1 + 112))(a1, &v84);
LABEL_3:
  if (v84)
  {
    if ((*(*v84 + 16))(v84))
    {
      goto LABEL_90;
    }

    if (v84)
    {
      v8 = (*(*v84 + 24))(v84);
      goto LABEL_9;
    }
  }

  else if (v86 >= v85)
  {
    goto LABEL_90;
  }

  v8 = v86;
LABEL_9:
  v9 = v8;
  v10 = *a2;
  if (v8 != (a2[1] - *a2) >> 2)
  {
    v11 = sub_10002B59C(v8, v7);
    LODWORD(v80) = *(v10 + 4 * v9);
    LODWORD(v83) = *v11;
    v12.n128_u32[0] = v80;
    if (*&v80 == *&v83)
    {
      goto LABEL_49;
    }

    (*(*a1 + 272))(a1, v9, &v83, *&v80);
    while (1)
    {
      if ((*(*v83 + 16))(v83))
      {
        if (v83)
        {
          (*(*v83 + 8))(v83);
        }

        if (a3)
        {
LABEL_49:
          if (a3 == 1)
          {
            v24 = (*(*a1 + 24))(&v83, a1, v9, v12);
            v26 = *(v10 + 4 * v9);
            if (v26 == -INFINITY || *&v83 >= -INFINITY && *&v83 <= -INFINITY)
            {
              goto LABEL_57;
            }

            v29 = *&v83 == INFINITY || v26 == INFINITY;
            v28 = v26 + *&v83;
            if (v29)
            {
              v28 = INFINITY;
            }

            goto LABEL_68;
          }
        }

        else
        {
          v24 = (*(*a1 + 24))(&v83, a1, v9);
          if (*&v83 == -INFINITY || (v27 = *(v10 + 4 * v9), v27 >= -INFINITY) && v27 <= -INFINITY)
          {
LABEL_57:
            v28 = *sub_1000777A0(v24, v25);
          }

          else
          {
            v28 = *&v83 - v27;
            if (*&v83 == INFINITY)
            {
              v28 = INFINITY;
            }

            if (v27 == INFINITY)
            {
              v28 = NAN;
            }
          }

LABEL_68:
          *&v80 = v28;
          (*(*a1 + 160))(a1, v9, &v80);
        }

        if (v84)
        {
          (*(*v84 + 32))(v84);
        }

        else
        {
          ++v86;
        }

        goto LABEL_3;
      }

      v13 = (*(*v83 + 24))(v83);
      v80 = *v13;
      v81 = *(v13 + 8);
      v82 = *(v13 + 12);
      v15 = v82;
      v16 = *a2;
      if (v82 < ((a2[1] - *a2) >> 2))
      {
        v17 = sub_10002B59C(v13, v14);
        v88 = *(v16 + 4 * v15);
        v87 = *v17;
        if (v88 != v87)
        {
          break;
        }
      }

LABEL_45:
      (*(*v83 + 32))(v83);
    }

    if (a3)
    {
      if (a3 != 1)
      {
LABEL_44:
        (*(*v83 + 80))(v83, &v80);
        goto LABEL_45;
      }

      v19 = *(v10 + 4 * v9);
      if (v19 == -INFINITY || v81 >= -INFINITY && v81 <= -INFINITY)
      {
        v17 = sub_1000777A0(v17, v18);
        v20 = *v17;
      }

      else
      {
        v20 = INFINITY;
        if (v19 == INFINITY || v81 == INFINITY)
        {
LABEL_36:
          v22 = *(v16 + 4 * v15);
          if (v22 >= -INFINITY && v22 <= -INFINITY)
          {
            goto LABEL_38;
          }

LABEL_39:
          if (v22 == INFINITY)
          {
            v23 = NAN;
          }

          else
          {
            v23 = INFINITY;
            if (v20 != INFINITY)
            {
              v23 = v20 - v22;
            }
          }

          goto LABEL_43;
        }

        v20 = v19 + v81;
      }

      if (v20 != -INFINITY)
      {
        goto LABEL_36;
      }

LABEL_38:
      v23 = *sub_1000777A0(v17, v18);
LABEL_43:
      v81 = v23;
      goto LABEL_44;
    }

    if (v81 == -INFINITY || (v21 = *(v16 + 4 * v15), v21 >= -INFINITY) && v21 <= -INFINITY)
    {
      v17 = sub_1000777A0(v17, v18);
      v20 = *v17;
    }

    else
    {
      v20 = INFINITY;
      if (v81 == INFINITY || v21 == INFINITY)
      {
        goto LABEL_29;
      }

      v20 = v81 + v21;
    }

    if (v20 == -INFINITY)
    {
      goto LABEL_38;
    }

LABEL_29:
    v22 = *(v10 + 4 * v9);
    if (v22 >= -INFINITY && v22 <= -INFINITY)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  while (1)
  {
LABEL_90:
    v30 = v84;
    if (!v84)
    {
      if (v86 >= v85)
      {
        break;
      }

      goto LABEL_75;
    }

    if ((*(*v84 + 16))(v84))
    {
      break;
    }

    v30 = v84;
    if (v84)
    {
      v30 = (*(*v84 + 24))(v84);
      v31 = v30;
      goto LABEL_76;
    }

LABEL_75:
    v31 = v86;
LABEL_76:
    if (a3 == 1)
    {
      v32 = sub_10002B59C(v30, v7);
      v33 = (*(*a1 + 24))(&v83, a1, v31);
      v35 = *v32;
      if (*v32 == -INFINITY || *&v83 >= -INFINITY && *&v83 <= -INFINITY)
      {
        v36 = *sub_1000777A0(v33, v34);
      }

      else
      {
        v37 = *&v83 == INFINITY || v35 == INFINITY;
        v36 = v35 + *&v83;
        if (v37)
        {
          v36 = INFINITY;
        }
      }

      *&v80 = v36;
      (*(*a1 + 160))(a1, v31, &v80);
    }

    if (v84)
    {
      (*(*v84 + 32))(v84);
    }

    else
    {
      ++v86;
    }
  }

  v38 = (*(*a1 + 16))(a1);
  if (v38 >= ((a2[1] - *a2) >> 2))
  {
    v40 = sub_10002B59C(v38, v39);
  }

  else
  {
    v40 = (*a2 + 4 * (*(*a1 + 16))(a1));
  }

  v42 = *v40;
  v43 = sub_10002B564(v40, v41);
  *&v80 = v42;
  LODWORD(v83) = *v43;
  v45.n128_f32[0] = v42;
  if (v42 == *&v83)
  {
    goto LABEL_171;
  }

  v46 = sub_10002B59C(v43, v44);
  *&v80 = v42;
  LODWORD(v83) = *v46;
  v45.n128_f32[0] = v42;
  if (v42 == *&v83)
  {
    goto LABEL_171;
  }

  v47 = (*(*a1 + 56))(a1, 0x2000000000, 1, v42);
  v48 = *a1;
  if ((v47 & 0x2000000000) == 0)
  {
    v49 = (*(v48 + 176))(a1);
    v51 = v49;
    if (a3)
    {
      v52 = sub_10002B564(v49, v50);
      v54 = *v52;
      if (*v52 == -INFINITY || v42 >= -INFINITY && v42 <= -INFINITY)
      {
        v55 = *sub_1000777A0(v52, v53);
      }

      else if (v42 == INFINITY)
      {
        v55 = NAN;
      }

      else
      {
        v55 = INFINITY;
        if (v54 != INFINITY)
        {
          v55 = v54 - v42;
        }
      }
    }

    else
    {
      v55 = v42;
    }

    v77 = (*(*a1 + 16))(a1);
    v80 = 0;
    v81 = v55;
    v82 = v77;
    (*(*a1 + 184))(a1, v51, &v80);
    (*(*a1 + 152))(a1, v51);
    goto LABEL_171;
  }

  v56 = (*(v48 + 16))(a1);
  (*(*a1 + 272))(a1, v56, &v83);
  while (2)
  {
    if (!(*(*v83 + 16))(v83))
    {
      v58 = (*(*v83 + 24))(v83);
      v80 = *v58;
      v60 = *(v58 + 2);
      v81 = v60;
      v82 = v58[3];
      if (a3)
      {
        v58 = sub_10002B564(v58, v59);
        v61 = *v58;
        if (*v58 == -INFINITY || v42 >= -INFINITY && v42 <= -INFINITY)
        {
          v58 = sub_1000777A0(v58, v59);
          v62 = *v58;
          goto LABEL_110;
        }

        if (v42 == INFINITY)
        {
          goto LABEL_117;
        }

        v62 = INFINITY;
        if (v61 != INFINITY)
        {
          v62 = v61 - v42;
LABEL_110:
          if (v62 == -INFINITY)
          {
            goto LABEL_117;
          }
        }

        if (v81 >= -INFINITY && v81 <= -INFINITY)
        {
LABEL_117:
          v63 = *sub_1000777A0(v58, v59);
        }

        else
        {
          v65 = v81 == INFINITY || v62 == INFINITY;
          v63 = v62 + v81;
          if (v65)
          {
            v63 = INFINITY;
          }
        }
      }

      else
      {
        if (v42 == -INFINITY || v60 >= -INFINITY && v60 <= -INFINITY)
        {
          goto LABEL_117;
        }

        v64 = v60 == INFINITY || v42 == INFINITY;
        v63 = v42 + v60;
        if (v64)
        {
          v63 = INFINITY;
        }
      }

      v81 = v63;
      (*(*v83 + 80))(v83, &v80);
      (*(*v83 + 32))(v83);
      continue;
    }

    break;
  }

  v66 = v83;
  if (v83)
  {
    v66 = (*(*v83 + 8))(v83);
  }

  if (a3)
  {
    v67 = sub_10002B564(v66, v57);
    v69 = *v67;
    if (*v67 == -INFINITY || v42 >= -INFINITY && v42 <= -INFINITY)
    {
      v70 = *sub_1000777A0(v67, v68);
    }

    else
    {
      v29 = v69 == INFINITY;
      v73 = v69 - v42;
      if (v29)
      {
        v73 = INFINITY;
      }

      if (v42 == INFINITY)
      {
        v70 = NAN;
      }

      else
      {
        v70 = v73;
      }
    }

    v71 = (*(*a1 + 24))(&v83, a1, v56);
    if (v70 == -INFINITY || *&v83 >= -INFINITY && *&v83 <= -INFINITY)
    {
LABEL_155:
      v74 = *sub_1000777A0(v71, v72);
    }

    else
    {
      v75 = *&v83 == INFINITY || v70 == INFINITY;
      v74 = v70 + *&v83;
      if (v75)
      {
        v74 = INFINITY;
      }
    }
  }

  else
  {
    v71 = (*(*a1 + 24))(&v83, a1, v56);
    if (v42 == -INFINITY || *&v83 >= -INFINITY && *&v83 <= -INFINITY)
    {
      goto LABEL_155;
    }

    v76 = *&v83 == INFINITY || v42 == INFINITY;
    v74 = v42 + *&v83;
    if (v76)
    {
      v74 = INFINITY;
    }
  }

  *&v80 = v74;
  (*(*a1 + 160))(a1, v56, &v80);
LABEL_171:
  v78 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0, v45);
  v79 = sub_1000C8CD4(v78);
  (*(*a1 + 168))(a1, v79, 0xFFFFFFFF0007);
  result = v84;
  if (v84)
  {
    return (*(*v84 + 8))(v84);
  }

  return result;
}

void sub_1000B9064(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000B9134(uint64_t a1, _DWORD *a2, int a3)
{
  result = sub_10002B564(a1, a2);
  LODWORD(v28) = *a2;
  LODWORD(v26) = *result;
  if (*&v28 == *&v26)
  {
    return result;
  }

  result = sub_10002B59C(result, v7);
  LODWORD(v28) = *a2;
  LODWORD(v26) = *result;
  v8 = *&v28;
  if (*&v28 == *&v26)
  {
    return result;
  }

  if (a3)
  {
    v28 = 0;
    v29 = 0.0;
    v31 = 0;
    (*(*a1 + 112))(a1, &v28, v8);
    while (1)
    {
      result = v28;
      if (!v28)
      {
        break;
      }

      v9 = (*(*v28 + 16))(v28);
      result = v28;
      if (v9)
      {
        if (v28)
        {
          return (*(*v28 + 8))();
        }

        return result;
      }

      if (!v28)
      {
        goto LABEL_11;
      }

      v10 = (*(*v28 + 24))();
      if (v28)
      {
        v11 = (*(*v28 + 24))(v28);
      }

      else
      {
        v11 = v31;
      }

LABEL_12:
      v12 = (*(*a1 + 24))(&v27, a1, v11);
      if (v27 == -INFINITY || (v14 = *a2, *a2 >= -INFINITY) && *a2 <= -INFINITY)
      {
        v15 = *sub_1000777A0(v12, v13);
      }

      else
      {
        v15 = v27 - v14;
        if (v27 == INFINITY)
        {
          v15 = INFINITY;
        }

        if (v14 == INFINITY)
        {
          v15 = NAN;
        }
      }

      *&v26 = v15;
      (*(*a1 + 160))(a1, v10, &v26);
      if (v28)
      {
        (*(*v28 + 32))(v28);
      }

      else
      {
        ++v31;
      }
    }

    if (v31 >= SLODWORD(v29))
    {
      return result;
    }

LABEL_11:
    v10 = v31;
    v11 = v31;
    goto LABEL_12;
  }

  v16 = (*(*a1 + 16))(a1, *&v28);
  (*(*a1 + 272))(a1, v16, &v26);
  while (!(*(*v26 + 16))(v26))
  {
    v17 = (*(*v26 + 24))(v26);
    v28 = *v17;
    v19 = *(v17 + 8);
    v29 = v19;
    v30 = *(v17 + 12);
    if (v19 == -INFINITY || (v20 = *a2, *a2 >= -INFINITY) && *a2 <= -INFINITY)
    {
      v21 = *sub_1000777A0(v17, v18);
    }

    else if (v20 == INFINITY)
    {
      v21 = NAN;
    }

    else
    {
      v21 = INFINITY;
      if (v19 != INFINITY)
      {
        v21 = v19 - v20;
      }
    }

    v29 = v21;
    (*(*v26 + 80))(v26, &v28);
    (*(*v26 + 32))(v26);
  }

  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v22 = (*(*a1 + 24))(&v26, a1, v16);
  if (*&v26 == -INFINITY || (v24 = *a2, *a2 >= -INFINITY) && *a2 <= -INFINITY)
  {
    v25 = *sub_1000777A0(v22, v23);
  }

  else
  {
    v25 = *&v26 - v24;
    if (*&v26 == INFINITY)
    {
      v25 = INFINITY;
    }

    if (v24 == INFINITY)
    {
      v25 = NAN;
    }
  }

  *&v28 = v25;
  return (*(*a1 + 160))(a1, v16, &v28);
}

void sub_1000B9658(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B9710()
{
  if (__cxa_guard_acquire(byte_10010E258))
  {
    dword_10010E250 = 2143289344;

    __cxa_guard_release(byte_10010E258);
  }
}

uint64_t sub_1000B9760(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    --*v1;
  }

  return result;
}

void sub_1000B98F8(CFLocaleRef *a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v6 = CFStringCreateWithCStringNoCopy(0, a2, 0x8000100u, kCFAllocatorNull);
  MutableCopy = CFStringCreateMutableCopy(0, 0, v6);
  CFStringLowercase(MutableCopy, *a1);
  Identifier = CFLocaleGetIdentifier(*a1);
  v9 = CFStringCreateMutableCopy(0, 0, Identifier);
  v16.length = CFStringGetLength(v9);
  v16.location = 0;
  CFStringFindAndReplace(v9, @"_", @"-", v16, 0);
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, v9, @"-");
  ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
  v12 = ValueAtIndex;
  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

  if (CFStringCompare(v12, @"ar", 1uLL) == kCFCompareEqualTo)
  {
    CFStringTransform(MutableCopy, 0, kCFStringTransformStripCombiningMarks, 0);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (ArrayBySeparatingStrings)
  {
    CFRelease(ArrayBySeparatingStrings);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (MutableCopy)
  {

    sub_1000B9AE4(MutableCopy, 1, a3);
  }

  else if (v3[23] < 0)
  {
    v13 = *v3;
    v14 = *(v3 + 1);

    sub_1000732A4(a3, v13, v14);
  }

  else
  {
    *a3 = *v3;
    a3[2] = *(v3 + 2);
  }
}

void sub_1000B9AE4(const __CFString *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (a1)
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v10 = __chkstk_darwin(MaximumSizeForEncoding, v8, v9);
    v12 = &v13 - v11;
    CFStringGetCString(a1, &v13 - v11, v10 + 1, 0x8000100u);
    sub_1000113AC(a3, v12);
    if (a2)
    {
      CFRelease(a1);
    }
  }

  else
  {

    sub_1000113AC(a3, 0);
  }
}

void sub_1000B9C0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000B9C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __chkstk_darwin(a1, a2, a3);
  v4 = v3;
  v6 = v5;
  if ((atomic_load_explicit(&qword_10010E7C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10010E7C0))
  {
    operator new();
  }

  sub_1000113AC(v6, "");
  v7 = sub_10001AF2C(qword_10010E7B8, v4);
  result = qword_10010E7B8;
  if (qword_10010E7B8 + 8 != v7)
  {
    v9 = sub_1000C0D48(qword_10010E7B8, v4);
    return std::string::operator=(v6, v9);
  }

  return result;
}

void sub_1000BE468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  v79 = -8208;
  v80 = v76;
  do
  {
    v80 = sub_100013890(v80) - 48;
    v79 += 48;
  }

  while (v79);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a57 < 0)
  {
    operator delete(*(v78 + 24));
  }

  if (a51 < 0)
  {
    operator delete(*v78);
  }

  if (a65 < 0)
  {
    operator delete(*(v78 + 72));
  }

  if (a63 < 0)
  {
    operator delete(*(v78 + 48));
  }

  if (a67 < 0)
  {
    operator delete(*(v78 + 120));
  }

  if (a66 < 0)
  {
    operator delete(*(v78 + 96));
  }

  if (a69 < 0)
  {
    operator delete(*(v78 + 168));
  }

  if (a68 < 0)
  {
    operator delete(*(v78 + 144));
  }

  if (a71 < 0)
  {
    operator delete(*(v78 + 216));
  }

  if (a70 < 0)
  {
    operator delete(*(v78 + 192));
  }

  if (a73 < 0)
  {
    operator delete(*(v78 + 264));
  }

  if (a72 < 0)
  {
    operator delete(*(v78 + 240));
  }

  if (a75 < 0)
  {
    operator delete(*(v78 + 312));
  }

  if (a74 < 0)
  {
    operator delete(*(v78 + 288));
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(*(v78 + 360));
  }

  if (a76 < 0)
  {
    operator delete(*(v78 + 336));
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(*(v78 + 408));
  }

  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(*(v78 + 384));
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(*(v78 + 456));
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(*(v78 + 432));
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(*(v78 + 504));
  }

  if (SLOBYTE(STACK[0x28F]) < 0)
  {
    operator delete(*(v78 + 480));
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(*(v78 + 552));
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(*(v78 + 528));
  }

  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(*(v78 + 600));
  }

  if (SLOBYTE(STACK[0x2EF]) < 0)
  {
    operator delete(*(v78 + 576));
  }

  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(*(v78 + 648));
  }

  if (SLOBYTE(STACK[0x31F]) < 0)
  {
    operator delete(*(v78 + 624));
  }

  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(*(v78 + 696));
  }

  if (SLOBYTE(STACK[0x34F]) < 0)
  {
    operator delete(*(v78 + 672));
  }

  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(*(v78 + 744));
  }

  if (SLOBYTE(STACK[0x37F]) < 0)
  {
    operator delete(*(v78 + 720));
  }

  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(*(v78 + 792));
  }

  if (SLOBYTE(STACK[0x3AF]) < 0)
  {
    operator delete(*(v78 + 768));
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(*(v78 + 840));
  }

  if (SLOBYTE(STACK[0x3DF]) < 0)
  {
    operator delete(*(v78 + 816));
  }

  if (SLOBYTE(STACK[0x427]) < 0)
  {
    operator delete(*(v78 + 888));
  }

  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(*(v78 + 864));
  }

  if (SLOBYTE(STACK[0x457]) < 0)
  {
    operator delete(*(v78 + 936));
  }

  if (SLOBYTE(STACK[0x43F]) < 0)
  {
    operator delete(*(v78 + 912));
  }

  if (SLOBYTE(STACK[0x487]) < 0)
  {
    operator delete(*(v78 + 984));
  }

  if (SLOBYTE(STACK[0x46F]) < 0)
  {
    operator delete(*(v78 + 960));
  }

  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(*(v78 + 1032));
  }

  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(*(v78 + 1008));
  }

  if (SLOBYTE(STACK[0x4E7]) < 0)
  {
    operator delete(*(v78 + 1080));
  }

  if (SLOBYTE(STACK[0x4CF]) < 0)
  {
    operator delete(*(v78 + 1056));
  }

  if (SLOBYTE(STACK[0x517]) < 0)
  {
    operator delete(*(v78 + 1128));
  }

  if (SLOBYTE(STACK[0x4FF]) < 0)
  {
    operator delete(*(v78 + 1104));
  }

  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(*(v78 + 1176));
  }

  if (SLOBYTE(STACK[0x52F]) < 0)
  {
    operator delete(*(v78 + 1152));
  }

  if (SLOBYTE(STACK[0x577]) < 0)
  {
    operator delete(*(v78 + 1224));
  }

  if (SLOBYTE(STACK[0x55F]) < 0)
  {
    operator delete(*(v78 + 1200));
  }

  if (SLOBYTE(STACK[0x5A7]) < 0)
  {
    operator delete(*(v78 + 1272));
  }

  if (SLOBYTE(STACK[0x58F]) < 0)
  {
    operator delete(*(v78 + 1248));
  }

  if (SLOBYTE(STACK[0x5D7]) < 0)
  {
    operator delete(*(v78 + 1320));
  }

  if (SLOBYTE(STACK[0x5BF]) < 0)
  {
    operator delete(*(v78 + 1296));
  }

  if (SLOBYTE(STACK[0x607]) < 0)
  {
    operator delete(*(v78 + 1368));
  }

  if (SLOBYTE(STACK[0x5EF]) < 0)
  {
    operator delete(*(v78 + 1344));
  }

  if (SLOBYTE(STACK[0x637]) < 0)
  {
    operator delete(*(v78 + 1416));
  }

  if (SLOBYTE(STACK[0x61F]) < 0)
  {
    operator delete(*(v78 + 1392));
  }

  if (SLOBYTE(STACK[0x667]) < 0)
  {
    operator delete(*(v78 + 1464));
  }

  if (SLOBYTE(STACK[0x64F]) < 0)
  {
    operator delete(*(v78 + 1440));
  }

  if (SLOBYTE(STACK[0x697]) < 0)
  {
    operator delete(*(v78 + 1512));
  }

  if (SLOBYTE(STACK[0x67F]) < 0)
  {
    operator delete(*(v78 + 1488));
  }

  if (SLOBYTE(STACK[0x6C7]) < 0)
  {
    operator delete(*(v78 + 1560));
  }

  if (SLOBYTE(STACK[0x6AF]) < 0)
  {
    operator delete(*(v78 + 1536));
  }

  if (SLOBYTE(STACK[0x6F7]) < 0)
  {
    operator delete(*(v78 + 1608));
  }

  if (SLOBYTE(STACK[0x6DF]) < 0)
  {
    operator delete(*(v78 + 1584));
  }

  if (SLOBYTE(STACK[0x727]) < 0)
  {
    operator delete(*(v78 + 1656));
  }

  if (SLOBYTE(STACK[0x70F]) < 0)
  {
    operator delete(*(v78 + 1632));
  }

  if (SLOBYTE(STACK[0x757]) < 0)
  {
    operator delete(*(v78 + 1704));
  }

  if (SLOBYTE(STACK[0x73F]) < 0)
  {
    operator delete(*(v78 + 1680));
  }

  if (SLOBYTE(STACK[0x787]) < 0)
  {
    operator delete(*(v78 + 1752));
  }

  if (SLOBYTE(STACK[0x76F]) < 0)
  {
    operator delete(*(v78 + 1728));
  }

  if (SLOBYTE(STACK[0x7B7]) < 0)
  {
    operator delete(*(v78 + 1800));
  }

  if (SLOBYTE(STACK[0x79F]) < 0)
  {
    operator delete(*(v78 + 1776));
  }

  if (SLOBYTE(STACK[0x7E7]) < 0)
  {
    operator delete(*(v78 + 1848));
  }

  if (SLOBYTE(STACK[0x7CF]) < 0)
  {
    operator delete(*(v78 + 1824));
  }

  if (SLOBYTE(STACK[0x817]) < 0)
  {
    operator delete(*(v78 + 1896));
  }

  if (SLOBYTE(STACK[0x7FF]) < 0)
  {
    operator delete(*(v78 + 1872));
  }

  if (SLOBYTE(STACK[0x847]) < 0)
  {
    operator delete(*(v78 + 1944));
  }

  if (SLOBYTE(STACK[0x82F]) < 0)
  {
    operator delete(*(v78 + 1920));
  }

  if (SLOBYTE(STACK[0x877]) < 0)
  {
    operator delete(*(v78 + 1992));
  }

  if (SLOBYTE(STACK[0x85F]) < 0)
  {
    operator delete(*(v78 + 1968));
  }

  if (SLOBYTE(STACK[0x8A7]) < 0)
  {
    operator delete(*(v78 + 2040));
  }

  if (SLOBYTE(STACK[0x88F]) < 0)
  {
    operator delete(*(v78 + 2016));
  }

  if (SLOBYTE(STACK[0x8D7]) < 0)
  {
    operator delete(*(v78 + 2088));
  }

  if (SLOBYTE(STACK[0x8BF]) < 0)
  {
    operator delete(*(v78 + 2064));
  }

  if (SLOBYTE(STACK[0x907]) < 0)
  {
    operator delete(*(v78 + 2136));
  }

  if (SLOBYTE(STACK[0x8EF]) < 0)
  {
    operator delete(*(v78 + 2112));
  }

  if (SLOBYTE(STACK[0x937]) < 0)
  {
    operator delete(*(v78 + 2184));
  }

  if (SLOBYTE(STACK[0x91F]) < 0)
  {
    operator delete(*(v78 + 2160));
  }

  if (SLOBYTE(STACK[0x967]) < 0)
  {
    operator delete(*(v78 + 2232));
  }

  if (SLOBYTE(STACK[0x94F]) < 0)
  {
    operator delete(*(v78 + 2208));
  }

  if (SLOBYTE(STACK[0x997]) < 0)
  {
    operator delete(*(v78 + 2280));
  }

  if (SLOBYTE(STACK[0x97F]) < 0)
  {
    operator delete(*(v78 + 2256));
  }

  if (SLOBYTE(STACK[0x9C7]) < 0)
  {
    operator delete(*(v78 + 2328));
  }

  if (SLOBYTE(STACK[0x9AF]) < 0)
  {
    operator delete(*(v78 + 2304));
  }

  if (SLOBYTE(STACK[0x9F7]) < 0)
  {
    operator delete(*(v78 + 2376));
  }

  if (SLOBYTE(STACK[0x9DF]) < 0)
  {
    operator delete(*(v78 + 2352));
  }

  if (SLOBYTE(STACK[0xA27]) < 0)
  {
    operator delete(*(v78 + 2424));
  }

  if (SLOBYTE(STACK[0xA0F]) < 0)
  {
    operator delete(*(v78 + 2400));
  }

  if (SLOBYTE(STACK[0xA57]) < 0)
  {
    operator delete(*(v78 + 2472));
  }

  if (SLOBYTE(STACK[0xA3F]) < 0)
  {
    operator delete(*(v78 + 2448));
  }

  if (SLOBYTE(STACK[0xA87]) < 0)
  {
    operator delete(*(v78 + 2520));
  }

  if (SLOBYTE(STACK[0xA6F]) < 0)
  {
    operator delete(*(v78 + 2496));
  }

  if (SLOBYTE(STACK[0xAB7]) < 0)
  {
    operator delete(*(v78 + 2568));
  }

  if (SLOBYTE(STACK[0xA9F]) < 0)
  {
    operator delete(*(v78 + 2544));
  }

  if (SLOBYTE(STACK[0xAE7]) < 0)
  {
    operator delete(*(v78 + 2616));
  }

  if (SLOBYTE(STACK[0xACF]) < 0)
  {
    operator delete(*(v78 + 2592));
  }

  if (SLOBYTE(STACK[0xB17]) < 0)
  {
    operator delete(*(v78 + 2664));
  }

  if (SLOBYTE(STACK[0xAFF]) < 0)
  {
    operator delete(*(v78 + 2640));
  }

  if (SLOBYTE(STACK[0xB47]) < 0)
  {
    operator delete(*(v78 + 2712));
  }

  if (SLOBYTE(STACK[0xB2F]) < 0)
  {
    operator delete(*(v78 + 2688));
  }

  if (SLOBYTE(STACK[0xB77]) < 0)
  {
    operator delete(*(v78 + 2760));
  }

  if (SLOBYTE(STACK[0xB5F]) < 0)
  {
    operator delete(*(v78 + 2736));
  }

  if (SLOBYTE(STACK[0xBA7]) < 0)
  {
    operator delete(*(v78 + 2808));
  }

  if (SLOBYTE(STACK[0xB8F]) < 0)
  {
    operator delete(*(v78 + 2784));
  }

  if (SLOBYTE(STACK[0xBD7]) < 0)
  {
    operator delete(*(v78 + 2856));
  }

  if (SLOBYTE(STACK[0xBBF]) < 0)
  {
    operator delete(*(v78 + 2832));
  }

  if (SLOBYTE(STACK[0xC07]) < 0)
  {
    operator delete(*(v78 + 2904));
  }

  if (SLOBYTE(STACK[0xBEF]) < 0)
  {
    operator delete(*(v78 + 2880));
  }

  if (SLOBYTE(STACK[0xC37]) < 0)
  {
    operator delete(*(v78 + 2952));
  }

  if (SLOBYTE(STACK[0xC1F]) < 0)
  {
    operator delete(*(v78 + 2928));
  }

  if (SLOBYTE(STACK[0xC67]) < 0)
  {
    operator delete(*(v78 + 3000));
  }

  if (SLOBYTE(STACK[0xC4F]) < 0)
  {
    operator delete(*(v78 + 2976));
  }

  if (SLOBYTE(STACK[0xC97]) < 0)
  {
    operator delete(*(v78 + 3048));
  }

  if (SLOBYTE(STACK[0xC7F]) < 0)
  {
    operator delete(*(v78 + 3024));
  }

  if (SLOBYTE(STACK[0xCC7]) < 0)
  {
    operator delete(*(v78 + 3096));
  }

  if (SLOBYTE(STACK[0xCAF]) < 0)
  {
    operator delete(*(v78 + 3072));
  }

  if (SLOBYTE(STACK[0xCF7]) < 0)
  {
    operator delete(*(v78 + 3144));
  }

  if (SLOBYTE(STACK[0xCDF]) < 0)
  {
    operator delete(*(v78 + 3120));
  }

  if (SLOBYTE(STACK[0xD27]) < 0)
  {
    operator delete(*(v78 + 3192));
  }

  if (SLOBYTE(STACK[0xD0F]) < 0)
  {
    operator delete(*(v78 + 3168));
  }

  if (SLOBYTE(STACK[0xD57]) < 0)
  {
    operator delete(*(v78 + 3240));
  }

  if (SLOBYTE(STACK[0xD3F]) < 0)
  {
    operator delete(*(v78 + 3216));
  }

  if (SLOBYTE(STACK[0xD87]) < 0)
  {
    operator delete(*(v78 + 3288));
  }

  if (SLOBYTE(STACK[0xD6F]) < 0)
  {
    operator delete(*(v78 + 3264));
  }

  if (SLOBYTE(STACK[0xDB7]) < 0)
  {
    operator delete(*(v78 + 3336));
  }

  if (SLOBYTE(STACK[0xD9F]) < 0)
  {
    operator delete(*(v78 + 3312));
  }

  if (SLOBYTE(STACK[0xDE7]) < 0)
  {
    operator delete(*(v78 + 3384));
  }

  if (SLOBYTE(STACK[0xDCF]) < 0)
  {
    operator delete(*(v78 + 3360));
  }

  if (SLOBYTE(STACK[0xE17]) < 0)
  {
    operator delete(*(v78 + 3432));
  }

  if (SLOBYTE(STACK[0xDFF]) < 0)
  {
    operator delete(*(v78 + 3408));
  }

  if (SLOBYTE(STACK[0xE47]) < 0)
  {
    operator delete(*(v78 + 3480));
  }

  if (SLOBYTE(STACK[0xE2F]) < 0)
  {
    operator delete(*(v78 + 3456));
  }

  if (SLOBYTE(STACK[0xE77]) < 0)
  {
    operator delete(*(v78 + 3528));
  }

  if (SLOBYTE(STACK[0xE5F]) < 0)
  {
    operator delete(*(v78 + 3504));
  }

  if (SLOBYTE(STACK[0xEA7]) < 0)
  {
    operator delete(*(v78 + 3576));
  }

  if (SLOBYTE(STACK[0xE8F]) < 0)
  {
    operator delete(*(v78 + 3552));
  }

  if (SLOBYTE(STACK[0xED7]) < 0)
  {
    operator delete(*(v78 + 3624));
  }

  if (SLOBYTE(STACK[0xEBF]) < 0)
  {
    operator delete(*(v78 + 3600));
  }

  if (SLOBYTE(STACK[0xF07]) < 0)
  {
    operator delete(*(v78 + 3672));
  }

  if (SLOBYTE(STACK[0xEEF]) < 0)
  {
    operator delete(*(v78 + 3648));
  }

  if (SLOBYTE(STACK[0xF37]) < 0)
  {
    operator delete(*(v78 + 3720));
  }

  if (SLOBYTE(STACK[0xF1F]) < 0)
  {
    operator delete(*(v78 + 3696));
  }

  if (SLOBYTE(STACK[0xF67]) < 0)
  {
    operator delete(*(v78 + 3768));
  }

  if (SLOBYTE(STACK[0xF4F]) < 0)
  {
    operator delete(*(v78 + 3744));
  }

  if (*(v78 + 3839) < 0)
  {
    operator delete(*(v78 + 3816));
  }

  if (SLOBYTE(STACK[0xF7F]) < 0)
  {
    operator delete(*(v78 + 3792));
  }

  if (*(v78 + 3887) < 0)
  {
    operator delete(*(v78 + 3864));
  }

  if (*(v78 + 3863) < 0)
  {
    operator delete(*(v78 + 3840));
  }

  if (*(v78 + 3935) < 0)
  {
    operator delete(*(v78 + 3912));
  }

  if (*(v78 + 3911) < 0)
  {
    operator delete(*(v78 + 3888));
  }

  if (*(v78 + 3983) < 0)
  {
    operator delete(*(v78 + 3960));
  }

  if (*(v78 + 3959) < 0)
  {
    operator delete(*(v78 + 3936));
  }

  if (*(v78 + 4031) < 0)
  {
    operator delete(*(v78 + 4008));
  }

  if (*(v78 + 4007) < 0)
  {
    operator delete(*(v78 + 3984));
  }

  if (*(v78 + 4079) < 0)
  {
    operator delete(*(v78 + 4056));
  }

  if (*(v78 + 4055) < 0)
  {
    operator delete(*(v78 + 4032));
  }

  if (*(v77 + 47) < 0)
  {
    operator delete(*(v77 + 24));
  }

  if (*(v77 + 23) < 0)
  {
    operator delete(*v77);
  }

  if (*(v77 + 95) < 0)
  {
    operator delete(*(v77 + 72));
  }

  if (*(v77 + 71) < 0)
  {
    operator delete(*(v77 + 48));
  }

  if (*(v77 + 143) < 0)
  {
    operator delete(*(v77 + 120));
  }

  if (*(v77 + 119) < 0)
  {
    operator delete(*(v77 + 96));
  }

  if (*(v77 + 191) < 0)
  {
    operator delete(*(v77 + 168));
  }

  if (*(v77 + 167) < 0)
  {
    operator delete(*(v77 + 144));
  }

  if (*(v77 + 239) < 0)
  {
    operator delete(*(v77 + 216));
  }

  if (*(v77 + 215) < 0)
  {
    operator delete(*(v77 + 192));
  }

  if (*(v77 + 287) < 0)
  {
    operator delete(*(v77 + 264));
  }

  if (*(v77 + 263) < 0)
  {
    operator delete(*(v77 + 240));
  }

  if (*(v77 + 335) < 0)
  {
    operator delete(*(v77 + 312));
  }

  if (*(v77 + 311) < 0)
  {
    operator delete(*(v77 + 288));
  }

  if (*(v77 + 383) < 0)
  {
    operator delete(*(v77 + 360));
  }

  if (*(v77 + 359) < 0)
  {
    operator delete(*(v77 + 336));
  }

  if (*(v77 + 431) < 0)
  {
    operator delete(*(v77 + 408));
  }

  if (*(v77 + 407) < 0)
  {
    operator delete(*(v77 + 384));
  }

  if (*(v77 + 479) < 0)
  {
    operator delete(*(v77 + 456));
  }

  if (*(v77 + 455) < 0)
  {
    operator delete(*(v77 + 432));
  }

  if (*(v77 + 527) < 0)
  {
    operator delete(*(v77 + 504));
  }

  if (*(v77 + 503) < 0)
  {
    operator delete(*(v77 + 480));
  }

  if (*(v77 + 575) < 0)
  {
    operator delete(*(v77 + 552));
  }

  if (*(v77 + 551) < 0)
  {
    operator delete(*(v77 + 528));
  }

  if (*(v77 + 623) < 0)
  {
    operator delete(*(v77 + 600));
  }

  if (*(v77 + 599) < 0)
  {
    operator delete(*(v77 + 576));
  }

  if (*(v77 + 671) < 0)
  {
    operator delete(*(v77 + 648));
  }

  if (*(v77 + 647) < 0)
  {
    operator delete(*(v77 + 624));
  }

  if (*(v77 + 719) < 0)
  {
    operator delete(*(v77 + 696));
  }

  if (*(v77 + 695) < 0)
  {
    operator delete(*(v77 + 672));
  }

  if (*(v77 + 767) < 0)
  {
    operator delete(*(v77 + 744));
  }

  if (*(v77 + 743) < 0)
  {
    operator delete(*(v77 + 720));
  }

  if (*(v77 + 815) < 0)
  {
    operator delete(*(v77 + 792));
  }

  if (*(v77 + 791) < 0)
  {
    operator delete(*(v77 + 768));
  }

  if (*(v77 + 863) < 0)
  {
    operator delete(*(v77 + 840));
  }

  if (*(v77 + 839) < 0)
  {
    operator delete(*(v77 + 816));
  }

  if (*(v77 + 911) < 0)
  {
    operator delete(*(v77 + 888));
  }

  if (*(v77 + 887) < 0)
  {
    operator delete(*(v77 + 864));
  }

  if (*(v77 + 959) < 0)
  {
    operator delete(*(v77 + 936));
  }

  if (*(v77 + 935) < 0)
  {
    operator delete(*(v77 + 912));
  }

  if (*(v77 + 1007) < 0)
  {
    operator delete(*(v77 + 984));
  }

  if (*(v77 + 983) < 0)
  {
    operator delete(*(v77 + 960));
  }

  if (*(v77 + 1055) < 0)
  {
    operator delete(*(v77 + 1032));
  }

  if (*(v77 + 1031) < 0)
  {
    operator delete(*(v77 + 1008));
  }

  if (*(v77 + 1103) < 0)
  {
    operator delete(*(v77 + 1080));
  }

  if (*(v77 + 1079) < 0)
  {
    operator delete(*(v77 + 1056));
  }

  if (*(v77 + 1151) < 0)
  {
    operator delete(*(v77 + 1128));
  }

  if (*(v77 + 1127) < 0)
  {
    operator delete(*(v77 + 1104));
  }

  if (*(v77 + 1199) < 0)
  {
    operator delete(*(v77 + 1176));
  }

  if (*(v77 + 1175) < 0)
  {
    operator delete(*(v77 + 1152));
  }

  if (*(v77 + 1247) < 0)
  {
    operator delete(*(v77 + 1224));
  }

  if (*(v77 + 1223) < 0)
  {
    operator delete(*(v77 + 1200));
  }

  if (*(v77 + 1295) < 0)
  {
    operator delete(*(v77 + 1272));
  }

  if (*(v77 + 1271) < 0)
  {
    operator delete(*(v77 + 1248));
  }

  if (*(v77 + 1343) < 0)
  {
    operator delete(*(v77 + 1320));
  }

  if (*(v77 + 1319) < 0)
  {
    operator delete(*(v77 + 1296));
  }

  if (*(v77 + 1391) < 0)
  {
    operator delete(*(v77 + 1368));
  }

  if (*(v77 + 1367) < 0)
  {
    operator delete(*(v77 + 1344));
  }

  if (*(v77 + 1439) < 0)
  {
    operator delete(*(v77 + 1416));
  }

  if (*(v77 + 1415) < 0)
  {
    operator delete(*(v77 + 1392));
  }

  if (*(v77 + 1487) < 0)
  {
    operator delete(*(v77 + 1464));
  }

  if (*(v77 + 1463) < 0)
  {
    operator delete(*(v77 + 1440));
  }

  if (*(v77 + 1535) < 0)
  {
    operator delete(*(v77 + 1512));
  }

  if (*(v77 + 1511) < 0)
  {
    operator delete(*(v77 + 1488));
  }

  if (*(v77 + 1583) < 0)
  {
    operator delete(*(v77 + 1560));
  }

  if (*(v77 + 1559) < 0)
  {
    operator delete(*(v77 + 1536));
  }

  if (*(v77 + 1631) < 0)
  {
    operator delete(*(v77 + 1608));
  }

  if (*(v77 + 1607) < 0)
  {
    operator delete(*(v77 + 1584));
  }

  if (*(v77 + 1679) < 0)
  {
    operator delete(*(v77 + 1656));
  }

  if (*(v77 + 1655) < 0)
  {
    operator delete(*(v77 + 1632));
  }

  if (*(v77 + 1727) < 0)
  {
    operator delete(*(v77 + 1704));
  }

  if (*(v77 + 1703) < 0)
  {
    operator delete(*(v77 + 1680));
  }

  if (*(v77 + 1775) < 0)
  {
    operator delete(*(v77 + 1752));
  }

  if (*(v77 + 1751) < 0)
  {
    operator delete(*(v77 + 1728));
  }

  if (*(v77 + 1823) < 0)
  {
    operator delete(*(v77 + 1800));
  }

  if (*(v77 + 1799) < 0)
  {
    operator delete(*(v77 + 1776));
  }

  if (*(v77 + 1871) < 0)
  {
    operator delete(*(v77 + 1848));
  }

  if (*(v77 + 1847) < 0)
  {
    operator delete(*(v77 + 1824));
  }

  if (*(v77 + 1919) < 0)
  {
    operator delete(*(v77 + 1896));
  }

  if (*(v77 + 1895) < 0)
  {
    operator delete(*(v77 + 1872));
  }

  if (*(v77 + 1967) < 0)
  {
    operator delete(*(v77 + 1944));
  }

  if (*(v77 + 1943) < 0)
  {
    operator delete(*(v77 + 1920));
  }

  if (*(v77 + 2015) < 0)
  {
    operator delete(*(v77 + 1992));
  }

  if (*(v77 + 1991) < 0)
  {
    operator delete(*(v77 + 1968));
  }

  if (*(v77 + 2063) < 0)
  {
    operator delete(*(v77 + 2040));
  }

  if (*(v77 + 2039) < 0)
  {
    operator delete(*(v77 + 2016));
  }

  if (*(v77 + 2111) < 0)
  {
    operator delete(*(v77 + 2088));
  }

  if (*(v77 + 2087) < 0)
  {
    operator delete(*(v77 + 2064));
  }

  if (*(v77 + 2159) < 0)
  {
    operator delete(*(v77 + 2136));
  }

  if (*(v77 + 2135) < 0)
  {
    operator delete(*(v77 + 2112));
  }

  if (*(v77 + 2207) < 0)
  {
    operator delete(*(v77 + 2184));
  }

  if (*(v77 + 2183) < 0)
  {
    operator delete(*(v77 + 2160));
  }

  if (*(v77 + 2255) < 0)
  {
    operator delete(*(v77 + 2232));
  }

  if (*(v77 + 2231) < 0)
  {
    operator delete(*(v77 + 2208));
  }

  if (*(v77 + 2303) < 0)
  {
    operator delete(*(v77 + 2280));
  }

  if (*(v77 + 2279) < 0)
  {
    operator delete(*(v77 + 2256));
  }

  if (*(v77 + 2351) < 0)
  {
    operator delete(*(v77 + 2328));
  }

  if (*(v77 + 2327) < 0)
  {
    operator delete(*(v77 + 2304));
  }

  if (*(v77 + 2399) < 0)
  {
    operator delete(*(v77 + 2376));
  }

  if (*(v77 + 2375) < 0)
  {
    operator delete(*(v77 + 2352));
  }

  if (*(v77 + 2447) < 0)
  {
    operator delete(*(v77 + 2424));
  }

  if (*(v77 + 2423) < 0)
  {
    operator delete(*(v77 + 2400));
  }

  if (*(v77 + 2495) < 0)
  {
    operator delete(*(v77 + 2472));
  }

  if (*(v77 + 2471) < 0)
  {
    operator delete(*(v77 + 2448));
  }

  if (*(v77 + 2543) < 0)
  {
    operator delete(*(v77 + 2520));
  }

  if (*(v77 + 2519) < 0)
  {
    operator delete(*(v77 + 2496));
  }

  if (*(v77 + 2591) < 0)
  {
    operator delete(*(v77 + 2568));
  }

  if (*(v77 + 2567) < 0)
  {
    operator delete(*(v77 + 2544));
  }

  if (*(v77 + 2639) < 0)
  {
    operator delete(*(v77 + 2616));
  }

  if (*(v77 + 2615) < 0)
  {
    operator delete(*(v77 + 2592));
  }

  if (*(v77 + 2687) < 0)
  {
    operator delete(*(v77 + 2664));
  }

  if (*(v77 + 2663) < 0)
  {
    operator delete(*(v77 + 2640));
  }

  if (*(v77 + 2735) < 0)
  {
    operator delete(*(v77 + 2712));
  }

  if (*(v77 + 2711) < 0)
  {
    operator delete(*(v77 + 2688));
  }

  if (*(v77 + 2783) < 0)
  {
    operator delete(*(v77 + 2760));
  }

  if (*(v77 + 2759) < 0)
  {
    operator delete(*(v77 + 2736));
  }

  if (*(v77 + 2831) < 0)
  {
    operator delete(*(v77 + 2808));
  }

  if (*(v77 + 2807) < 0)
  {
    operator delete(*(v77 + 2784));
  }

  if (*(v77 + 2879) < 0)
  {
    operator delete(*(v77 + 2856));
  }

  if (*(v77 + 2855) < 0)
  {
    operator delete(*(v77 + 2832));
  }

  if (*(v77 + 2927) < 0)
  {
    operator delete(*(v77 + 2904));
  }

  if (*(v77 + 2903) < 0)
  {
    operator delete(*(v77 + 2880));
  }

  if (*(v77 + 2975) < 0)
  {
    operator delete(*(v77 + 2952));
  }

  if (*(v77 + 2951) < 0)
  {
    operator delete(*(v77 + 2928));
  }

  if (*(v77 + 3023) < 0)
  {
    operator delete(*(v77 + 3000));
  }

  if (*(v77 + 2999) < 0)
  {
    operator delete(*(v77 + 2976));
  }

  if (*(v77 + 3071) < 0)
  {
    operator delete(*(v77 + 3048));
  }

  if (*(v77 + 3047) < 0)
  {
    operator delete(*(v77 + 3024));
  }

  if (*(v77 + 3119) < 0)
  {
    operator delete(*(v77 + 3096));
  }

  if (*(v77 + 3095) < 0)
  {
    operator delete(*(v77 + 3072));
  }

  if (*(v77 + 3167) < 0)
  {
    operator delete(*(v77 + 3144));
  }

  if (*(v77 + 3143) < 0)
  {
    operator delete(*(v77 + 3120));
  }

  if (*(v77 + 3215) < 0)
  {
    operator delete(*(v77 + 3192));
  }

  if (*(v77 + 3191) < 0)
  {
    operator delete(*(v77 + 3168));
  }

  if (*(v77 + 3263) < 0)
  {
    operator delete(*(v77 + 3240));
  }

  if (*(v77 + 3239) < 0)
  {
    operator delete(*(v77 + 3216));
  }

  if (*(v77 + 3311) < 0)
  {
    operator delete(*(v77 + 3288));
  }

  if (*(v77 + 3287) < 0)
  {
    operator delete(*(v77 + 3264));
  }

  if (*(v77 + 3359) < 0)
  {
    operator delete(*(v77 + 3336));
  }

  if (*(v77 + 3335) < 0)
  {
    operator delete(*(v77 + 3312));
  }

  if (*(v77 + 3407) < 0)
  {
    operator delete(*(v77 + 3384));
  }

  if (*(v77 + 3383) < 0)
  {
    operator delete(*(v77 + 3360));
  }

  if (*(v77 + 3455) < 0)
  {
    operator delete(*(v77 + 3432));
  }

  if (*(v77 + 3431) < 0)
  {
    operator delete(*(v77 + 3408));
  }

  if (*(v77 + 3503) < 0)
  {
    operator delete(*(v77 + 3480));
  }

  if (*(v77 + 3479) < 0)
  {
    operator delete(*(v77 + 3456));
  }

  if (*(v77 + 3551) < 0)
  {
    operator delete(*(v77 + 3528));
  }

  if (*(v77 + 3527) < 0)
  {
    operator delete(*(v77 + 3504));
  }

  if (*(v77 + 3599) < 0)
  {
    operator delete(*(v77 + 3576));
  }

  if (*(v77 + 3575) < 0)
  {
    operator delete(*(v77 + 3552));
  }

  if (*(v77 + 3647) < 0)
  {
    operator delete(*(v77 + 3624));
  }

  if (*(v77 + 3623) < 0)
  {
    operator delete(*(v77 + 3600));
  }

  if (*(v77 + 3695) < 0)
  {
    operator delete(*(v77 + 3672));
  }

  if (*(v77 + 3671) < 0)
  {
    operator delete(*(v77 + 3648));
  }

  if (*(v77 + 3743) < 0)
  {
    operator delete(*(v77 + 3720));
  }

  if (*(v77 + 3719) < 0)
  {
    operator delete(*(v77 + 3696));
  }

  if (*(v77 + 3791) < 0)
  {
    operator delete(*(v77 + 3768));
  }

  if (*(v77 + 3767) < 0)
  {
    operator delete(*(v77 + 3744));
  }

  if (*(v77 + 3839) < 0)
  {
    operator delete(*(v77 + 3816));
  }

  if (*(v77 + 3815) < 0)
  {
    operator delete(*(v77 + 3792));
  }

  if (*(v77 + 3887) < 0)
  {
    operator delete(*(v77 + 3864));
  }

  if (*(v77 + 3863) < 0)
  {
    operator delete(*(v77 + 3840));
  }

  if (*(v77 + 3935) < 0)
  {
    operator delete(*(v77 + 3912));
  }

  if (*(v77 + 3911) < 0)
  {
    operator delete(*(v77 + 3888));
  }

  if (*(v77 + 3983) < 0)
  {
    operator delete(*(v77 + 3960));
  }

  if (*(v77 + 3959) < 0)
  {
    operator delete(*(v77 + 3936));
  }

  operator delete();
}

uint64_t sub_1000C0D48(uint64_t a1, const void **a2)
{
  v2 = *sub_1000C17EC(a1, &v4, a2);
  if (!v2)
  {
    sub_100016F44("map::at:  key not found");
  }

  return v2 + 56;
}

__CFArray *sub_1000C0D88(CFLocaleRef *a1, const __CFString *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (a2)
  {
    Length = CFStringGetLength(a2);
    v18.location = 0;
    v18.length = Length;
    v6 = CFStringTokenizerCreate(0, a2, v18, 4uLL, *a1);
    if (CFStringTokenizerAdvanceToNextToken(v6))
    {
      v7 = Length - 1;
      do
      {
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v6);
        v9 = CurrentTokenRange.length;
        if (qword_10010E7C8 != -1)
        {
          sub_1000C19D0();
        }

        if (CFStringFindCharacterFromSet(a2, qword_10010E7D0, CurrentTokenRange, 0, &v17))
        {
          v10 = CurrentTokenRange.length + CurrentTokenRange.location;
LABEL_8:
          if (v10 < v7)
          {
            if (qword_10010E7C8 != -1)
            {
              sub_1000C19D0();
            }

            v11 = qword_10010E7D0;
            CharacterAtIndex = CFStringGetCharacterAtIndex(a2, v10 + 1);
            if (CFCharacterSetIsCharacterMember(v11, CharacterAtIndex))
            {
              v13 = CFStringGetCharacterAtIndex(a2, v10);
              if ((v13 - 8208) < 2 || v13 == 173 || v13 == 45)
              {
                while (CFStringTokenizerAdvanceToNextToken(v6))
                {
                  v14 = CFStringTokenizerGetCurrentTokenRange(v6);
                  if (v14.location > v10)
                  {
                    v9 = v14.length - CurrentTokenRange.location + v14.location;
                    v10 = v14.length + v14.location;
                    goto LABEL_8;
                  }
                }
              }
            }
          }

          v19.location = CurrentTokenRange.location;
          v19.length = v9;
          v15 = CFStringCreateWithSubstring(0, a2, v19);
          CFArrayAppendValue(Mutable, v15);
          CFRelease(v15);
        }
      }

      while (CFStringTokenizerAdvanceToNextToken(v6));
    }

    CFRelease(v6);
  }

  return Mutable;
}

__CFArray *sub_1000C0F54(uint64_t a1, const __CFString *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (a2)
  {
    if (sub_1000C1000(a2))
    {
      CFArrayAppendValue(Mutable, a2);
    }

    else if (CFStringGetLength(a2) >= 1)
    {
      v4 = 0;
      do
      {
        v7.location = v4;
        v7.length = 1;
        v5 = CFStringCreateWithSubstring(0, a2, v7);
        CFArrayAppendValue(Mutable, v5);
        ++v4;
      }

      while (v4 < CFStringGetLength(a2));
    }
  }

  return Mutable;
}

const __CFString *sub_1000C1000(const __CFString *theString)
{
  if (theString)
  {
    v1 = theString;
    if (qword_10010E7E8 != -1)
    {
      sub_1000C19F8();
    }

    v2 = qword_10010E7F0;
    v4.length = CFStringGetLength(v1);
    v4.location = 0;
    return (CFStringFindCharacterFromSet(v1, v2, v4, 0, &v3) == 0);
  }

  return theString;
}

const __CFString *sub_1000C107C(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    if (CFStringGetLength(result) == 1)
    {
      if (qword_10010E7D8 != -1)
      {
        sub_1000C1A0C();
      }

      v2 = qword_10010E7E0;
      v5.length = CFStringGetLength(v1);
      v5.location = 0;
      return (CFStringFindCharacterFromSet(v1, v2, v5, 0, &v4) == 0);
    }

    else
    {
      return (CFStringCompare(v1, @"\n\n", 0) == kCFCompareEqualTo);
    }
  }

  return result;
}

const __CFString *sub_1000C1120(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 23) < 0)
  {
    if (!*(a1 + 8))
    {
      return 0;
    }

    v1 = *a1;
  }

  else if (!*(a1 + 23))
  {
    return 0;
  }

  v2 = CFStringCreateWithCString(0, v1, 0x8000100u);
  v3 = sub_1000C107C(v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

const __CFString *sub_1000C1190(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 23) < 0)
  {
    if (!*(a1 + 8))
    {
      return 0;
    }

    v1 = *a1;
  }

  else if (!*(a1 + 23))
  {
    return 0;
  }

  v2 = CFStringCreateWithCString(0, v1, 0x8000100u);
  v3 = sub_1000C1000(v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t sub_1000C1200(char *a1)
{
  v1 = a1[23];
  if (v1 < 0)
  {
    v1 = *(a1 + 1);
    if (v1)
    {
      a1 = *a1;
      goto LABEL_6;
    }
  }

  else if (a1[23])
  {
LABEL_6:
    while (1)
    {
      v2 = *a1;
      if (v2 < 0 || (_DefaultRuneLocale.__runetype[v2] & 0x400) == 0)
      {
        break;
      }

      ++a1;
      if (!--v1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1000C1254(uint64_t a1, __int128 *a2, char *__s)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  sub_1000113AC((a1 + 24), __s);
  return a1;
}

void sub_1000C1298(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000C12B4(uint64_t a1, __int128 *a2, char *__s)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  sub_1000113AC((a1 + 24), __s);
  return a1;
}

void sub_1000C12F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C1314(id a1)
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  MutableCopy = CFCharacterSetCreateMutableCopy(0, Predefined);
  v3 = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
  CFCharacterSetUnion(MutableCopy, v3);
  CFCharacterSetInvert(MutableCopy);
  qword_10010E7D0 = MutableCopy;
}

void sub_1000C136C(id a1)
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetUppercaseLetter);
  MutableCopy = CFCharacterSetCreateMutableCopy(0, Predefined);
  v3 = CFCharacterSetGetPredefined(kCFCharacterSetLowercaseLetter);
  CFCharacterSetUnion(MutableCopy, v3);
  v4 = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
  CFCharacterSetUnion(MutableCopy, v4);
  v5 = CFCharacterSetGetPredefined(kCFCharacterSetSymbol);
  CFCharacterSetUnion(MutableCopy, v5);
  v6 = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  CFCharacterSetUnion(MutableCopy, v6);
  v7 = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  CFCharacterSetUnion(MutableCopy, v7);
  CFCharacterSetInvert(MutableCopy);
  qword_10010E7E0 = MutableCopy;
}

void sub_1000C1414(id a1)
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  MutableCopy = CFCharacterSetCreateMutableCopy(0, Predefined);
  v3 = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
  CFCharacterSetUnion(MutableCopy, v3);
  CFCharacterSetInvert(MutableCopy);
  qword_10010E7F0 = MutableCopy;
}

uint64_t **sub_1000C146C(uint64_t **a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      sub_1000C14F0(a1, v4, a2, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

void *sub_1000C14F0(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  v4 = *sub_1000C1584(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    sub_1000C1728();
  }

  return v4;
}

uint64_t *sub_1000C1584(uint64_t **a1, uint64_t *a2, const void ***a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_10001AFBC(a1, a5, a2 + 4))
  {
    if (!sub_10001AFBC(a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_10001AFBC(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_10001AFBC(a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1000C17EC(a1, a3, a5);
}

char **sub_1000C17A0(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1000C191C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1000C17EC(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_10001AFBC(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_10001AFBC(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

char *sub_1000C1888(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000732A4(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_1000732A4(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_1000C1900(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C191C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_1000C1974(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000C1974(a1, *a2);
    sub_1000C1974(a1, a2[1]);
    sub_1000C191C((a2 + 4));

    operator delete(a2);
  }
}

double *sub_1000C1A20(double *__dst, __int128 *a2, char a3, char a4, double a5, double a6, double a7, double a8)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000732A4(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v15 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v15;
  }

  __dst[3] = a5;
  __dst[4] = a6;
  __dst[5] = a7;
  __dst[6] = a8;
  *(__dst + 56) = a3;
  *(__dst + 57) = a4;
  return __dst;
}

void sub_1000C1AB0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 23) < 0)
  {
    sub_1000732A4(&__dst, *a1, *(a1 + 8));
  }

  else
  {
    __dst = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    sub_1000732A4(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v8 = *(a2 + 16);
  }

  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v8 >= 0)
  {
    v5 = HIBYTE(v8);
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&__dst, v4, v5);
  v9[0] = v6->__r_.__value_.__r.__words[2];
  *(v9 + 3) = *(&v6->__r_.__value_.__r.__words[2] + 3);
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_1000C1C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_1000C1D0C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v15 = *(a1 + 8);
  if (*a1 != v15)
  {
    do
    {
      v3 = sub_1000C8230(a1, a2);
      a1 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CMDPTokenSausage -> phrase", buf, 2u);
      }

      v4 = *v2;
      v5 = v2[1];
      v16 = v2;
      while (v4 != v5)
      {
        v6 = sub_1000C8230(a1, a2);
        a1 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        if (a1)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CMDPTokenSausage -> token_group_array", buf, 2u);
        }

        v7 = *v4;
        v8 = v4[1];
        while (v7 != v8)
        {
          v9 = sub_1000C8230(a1, a2);
          a1 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
          if (a1)
          {
            v10 = *v7;
            if (*(*v7 + 23) < 0)
            {
              sub_1000732A4(buf, *v10, *(v10 + 1));
            }

            else
            {
              v11 = *v10;
              v18 = *(v10 + 2);
              *buf = v11;
            }

            v12 = v18 >= 0 ? buf : *buf;
            *v19 = 136315138;
            v20 = v12;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CMDPTokenSausage -> token: %s\n", v19, 0xCu);
            if (SHIBYTE(v18) < 0)
            {
              operator delete(*buf);
            }
          }

          if (*(*v7 + 57) == 1)
          {
            v13 = sub_1000C8230(a1, a2);
            a1 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
            if (a1)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Has space before", buf, 2u);
            }
          }

          if (*(*v7 + 56) == 1)
          {
            v14 = sub_1000C8230(a1, a2);
            a1 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
            if (a1)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Has space after", buf, 2u);
            }
          }

          ++v7;
        }

        v4 += 3;
      }

      v2 = v16 + 3;
    }

    while (v16 + 3 != v15);
  }
}

void sub_1000C1F78(uint64_t ***a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *a1;
  v15 = a1[1];
  if (*a1 == v15)
  {
    return;
  }

  do
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v3 = *v2;
    v16 = v2;
    v17 = v2[1];
    if (*v2 == v17)
    {
      goto LABEL_32;
    }

    do
    {
      v22 = 0;
      v23 = 0;
      v21 = 0;
      v4 = *v3;
      if (v3[1] == *v3)
      {
        goto LABEL_29;
      }

      v5 = 0;
      do
      {
        v6 = *(v4 + 8 * v5);
        if (*(v6 + 23) < 0)
        {
          sub_1000732A4(__dst, *v6, *(v6 + 1));
        }

        else
        {
          v7 = *v6;
          v20 = *(v6 + 2);
          *__dst = v7;
        }

        if (v20 >= 0)
        {
          v8 = __dst;
        }

        else
        {
          v8 = __dst[0];
        }

        v9 = CFStringCreateWithCString(0, v8, 0x8000100u);
        if (CFStringCompare(@" ", v9, 0))
        {
          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, v9, @" ");
          if (!v9)
          {
            goto LABEL_16;
          }

LABEL_15:
          CFRelease(v9);
          goto LABEL_16;
        }

        ArrayBySeparatingStrings = 0;
        if (v9)
        {
          goto LABEL_15;
        }

LABEL_16:
        if (!ArrayBySeparatingStrings || CFArrayGetCount(ArrayBySeparatingStrings) < 2)
        {
          v12 = *(v4 + 8 * v5);
          if (*(v12 + 23) < 0)
          {
            sub_1000732A4(&v27, *v12, *(v12 + 1));
          }

          else
          {
            v13 = *v12;
            v28 = *(v12 + 2);
            v27 = v13;
          }

          operator new();
        }

        if (CFArrayGetCount(ArrayBySeparatingStrings) > 0)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
          sub_1000B9AE4(ValueAtIndex, 0, __p);
          operator new();
        }

        CFRelease(ArrayBySeparatingStrings);
        if (SHIBYTE(v20) < 0)
        {
          operator delete(__dst[0]);
        }

        ++v5;
        v4 = *v3;
      }

      while (v5 < (v3[1] - *v3) >> 3);
      if (v21 != v22)
      {
        sub_100010500(&v24, &v21);
      }

LABEL_29:
      *&v27 = &v21;
      sub_1000174D0(&v27);
      v3 += 3;
    }

    while (v3 != v17);
    if (v24 != v25)
    {
      sub_100010640(a2, &v24);
    }

LABEL_32:
    *&v27 = &v24;
    sub_100017D7C(&v27);
    v2 = v16 + 3;
  }

  while (v16 + 3 != v15);
}

void sub_1000C23B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33)
{
  a33 = v33 - 136;
  sub_100017D7C(&a33);
  *(v33 - 136) = a10;
  sub_100017524((v33 - 136));
  _Unwind_Resume(a1);
}

void sub_1000C24F0(uint64_t a1, int a2, int a3, int a4, const char *a5, int a6, uint64_t **a7, CFLocaleRef *a8)
{
  sub_1000B98F8(a8, a5, __p);
  std::to_string(&v19, a4);
  sub_100075844(a1, a2, a3, &v19, __p, a6);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  sub_1000C327C(a7, __p, __p);
  sub_1000B9C30(a8, __p, v15);
  size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  v17 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::to_string(&v18, a4);
    sub_100075844(a1, a2, a3, &v18, &v19, a6);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    sub_1000C327C(a7, &v19.__r_.__value_.__l.__data_, &v19);
    v17 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  if (v17 < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000C263C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000C2698(__int128 *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (*(a1 + 23) < 0)
    {
      sub_1000732A4(&__dst, *a1, *(a1 + 1));
    }

    else
    {
      __dst = *a1;
      v28 = *(a1 + 2);
    }

    v6 = SHIBYTE(v28);
    if ((SHIBYTE(v28) & 0x8000000000000000) != 0)
    {
      v6 = *(&__dst + 1);
      if (*(&__dst + 1))
      {
        p_dst = __dst;
        goto LABEL_13;
      }

LABEL_22:
      v11 = 1;
    }

    else
    {
      if (!HIBYTE(v28))
      {
        return 0;
      }

      p_dst = &__dst;
      do
      {
LABEL_13:
        v8 = *p_dst;
        if (v8 < 0 || (_DefaultRuneLocale.__runetype[v8] & 0x400) == 0)
        {
          goto LABEL_22;
        }

        ++p_dst;
        --v6;
      }

      while (v6);
      if (*(a2 + 23) < 0)
      {
        sub_1000732A4(v25, *a2, *(a2 + 8));
      }

      else
      {
        *v25 = *a2;
        v26 = *(a2 + 16);
      }

      if ((SHIBYTE(v26) & 0x8000000000000000) != 0)
      {
        v10 = v25[1];
        if (v25[1])
        {
          v9 = v25[0];
          goto LABEL_53;
        }

        v11 = 1;
LABEL_69:
        operator delete(v25[0]);
        goto LABEL_23;
      }

      if (!HIBYTE(v26))
      {
        goto LABEL_22;
      }

      v9 = v25;
      v10 = SHIBYTE(v26);
LABEL_53:
      while (1)
      {
        v19 = *v9;
        if (v19 < 0 || (_DefaultRuneLocale.__runetype[v19] & 0x400) == 0)
        {
          break;
        }

        v9 = (v9 + 1);
        v10 = v10 - 1;
        if (!v10)
        {
          v11 = 0;
          goto LABEL_58;
        }
      }

      v11 = 1;
LABEL_58:
      if (SHIBYTE(v26) < 0)
      {
        goto LABEL_69;
      }
    }

LABEL_23:
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__dst);
      if (v11)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }
  }

  else if (*(a1 + 56) == 1 && (*(a2 + 57) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 23) < 0)
  {
    sub_1000732A4(v23, *a1, *(a1 + 1));
  }

  else
  {
    *v23 = *a1;
    v24 = *(a1 + 2);
  }

  if (*(a2 + 23) < 0)
  {
    sub_1000732A4(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v22 = *(a2 + 16);
  }

  if (a3)
  {
    goto LABEL_34;
  }

  if (SHIBYTE(v24) < 0)
  {
    if (v23[1] != 1)
    {
      goto LABEL_44;
    }

    v13 = v23[0];
  }

  else
  {
    if (SHIBYTE(v24) != 1)
    {
      goto LABEL_44;
    }

    v13 = v23;
  }

  v14 = *v13;
  if (v14 < 0)
  {
    v15 = __maskrune(v14, 0x2000uLL);
  }

  else
  {
    v15 = _DefaultRuneLocale.__runetype[v14] & 0x2000;
  }

  if (v15)
  {
    goto LABEL_62;
  }

LABEL_44:
  if (SHIBYTE(v22) < 0)
  {
    if (__p[1] != 1)
    {
      goto LABEL_34;
    }

    v16 = __p[0];
  }

  else
  {
    if (SHIBYTE(v22) != 1)
    {
      goto LABEL_34;
    }

    v16 = __p;
  }

  v17 = *v16;
  if (v17 < 0)
  {
    v18 = __maskrune(v17, 0x2000uLL);
  }

  else
  {
    v18 = _DefaultRuneLocale.__runetype[v17] & 0x2000;
  }

  if (v18)
  {
LABEL_62:
    v12 = 0;
    goto LABEL_63;
  }

LABEL_34:
  v12 = 1;
LABEL_63:
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  return v12;
}

void sub_1000C2934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 57) < 0)
  {
    operator delete(*(v21 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C297C(uint64_t ***a1@<X0>, void *a6@<X8>)
{
  sub_1000C1F78(a1, v8);
  if (v8[0] != v8[1])
  {
    memset(v7, 0, sizeof(v7));
    operator new();
  }

  *a6 = 0;
  v7[0] = v8;
  sub_100017524(v7);
}

void sub_1000C3104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33)
{
  sub_100027CE4((v33 - 144));
  __p = (v33 - 136);
  sub_1000C34B4(&__p);
  *(v33 - 136) = v33 - 112;
  sub_100017524((v33 - 136));
  _Unwind_Resume(a1);
}

uint64_t sub_1000C3228(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100003B9C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *sub_1000C327C(uint64_t **a1, const void **a2, uint64_t a3)
{
  result = *sub_1000C32FC(a1, &v4, a2);
  if (!result)
  {
    sub_1000C3404();
  }

  return result;
}

void *sub_1000C32FC(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void sub_1000C3498(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10001B028(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1000C34B4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000C3508(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000C3508(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        sub_1000175FC(v5, v6);
      }

      v7 = v5 - 2;
      v5 -= 3;
    }

    while (v7 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_1000C356C(unint64_t *a1, unsigned int *a2, unsigned int *a3, uint64_t *a4, char *a5, int *a6)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) + 1;
  if (v6 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v6)
    {
      v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      sub_1000C3784(a1, v8);
    }

    sub_1000C36CC(8 * ((a1[1] - *a1) >> 3), *a2, *a3, *a4, *a5, *a6);
  }

  sub_100017658();
}

void sub_1000C36B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000C392C(va);
  _Unwind_Resume(a1);
}

void sub_1000C36CC(uint64_t a1, int a2, int a3, uint64_t a4, char a5, int a6)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a5;
  *(a1 + 12) = a6;
  operator new();
}

void sub_1000C3784(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100016D60();
}

uint64_t sub_1000C37DC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    do
    {
      *a4 = *v5;
      v6 = v5[2];
      v5[2] = 0;
      *(a4 + 16) = v6;
      v5 += 3;
      a4 += 24;
    }

    while (v5 != a3);
    v14 = a4;
    v12 = 1;
    if (a2 != a3)
    {
      v7 = a2 + 2;
      do
      {
        v8 = *v7;
        *v7 = 0;
        if (v8)
        {
          sub_1000175FC(v7, v8);
        }

        v9 = v7 + 1;
        v7 += 3;
      }

      while (v9 != a3);
    }
  }

  return sub_1000C389C(v11);
}

uint64_t sub_1000C389C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000C38D4(a1);
  }

  return a1;
}

void sub_1000C38D4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = v1 - 1;
    do
    {
      v4 = *v3;
      *v3 = 0;
      if (v4)
      {
        sub_1000175FC(v3, v4);
      }

      v5 = v3 - 2;
      v3 -= 3;
    }

    while (v5 != v2);
  }
}

uint64_t sub_1000C392C(uint64_t a1)
{
  sub_1000C3964(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1000C3964(uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v7 = *(result - 1);
    v5 = result - 1;
    v6 = v7;
    *(a1 + 16) = v5 - 2;
    *v5 = 0;
    if (v7)
    {
      sub_1000175FC(v5, v6);
      result = *(a1 + 16);
    }

    else
    {
      result = v5 - 2;
    }
  }

  return result;
}

void sub_1000C39C0(void *a1, int *a2, int *a3, uint64_t *a4, char *a5, int *a6)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) + 1;
  if (v6 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v6)
    {
      v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      sub_1000C3784(a1, v8);
    }

    sub_1000C36CC(8 * ((a1[1] - *a1) >> 3), *a2, *a3, *a4, *a5, *a6);
  }

  sub_100017658();
}

void sub_1000C3B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000C392C(va);
  _Unwind_Resume(a1);
}

void sub_1000C42E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __p = &a18;
  sub_100020578(&__p);
  (*(*v30 + 8))(v30);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000C440C(uint64_t *a1)
{
  *a1 = -1;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  sub_1000C7808(a1 + 5, 0x10uLL);
  v3 = a1[5];
  v2 = a1[6];
  a1[8] = ((v2 - v3) >> 3) - 1;
  v4 = v2 - v3;
  if (v2 != v3)
  {
    v5 = 0;
    v6 = *a1;
    v7 = (v4 - 8) >> 3;
    v8 = vdupq_n_s64(v7);
    v9 = (v3 + 8);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v5), xmmword_1000D1170)));
      if (v10.i8[0])
      {
        *(v9 - 1) = v6;
      }

      if (v10.i8[4])
      {
        *v9 = v6;
      }

      v5 += 2;
      v9 += 2;
    }

    while (((v7 + 2) & 0x3FFFFFFFFFFFFFFELL) != v5);
  }

  return a1;
}

void sub_1000C44D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100020578(va);
  _Unwind_Resume(a1);
}

void *sub_1000C44F0(void *a1, uint64_t a2)
{
  *a1 = -1;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  sub_1000C7880(a1 + 1, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  sub_1000C778C(a1 + 5, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
  a1[8] = *(a2 + 64);
  return a1;
}

void sub_1000C4584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100020578(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1000C459C(uint64_t *a1, uint64_t a2)
{
  v23 = a1 + 1;
  v4 = a1[6] - a1[5];
  if (((v4 >> 3) * 0.75) <= (0xAAAAAAAAAAAAAAABLL * ((a1[2] - a1[1]) >> 3)))
  {
    sub_1000C4720(a1, v4 >> 2);
  }

  v5 = sub_1000C4898((a1 + 4), a2);
  v6 = a1[8];
  v7 = a1[5];
  v8 = v5 & v6;
  v9 = *(v7 + 8 * (v5 & v6));
  v10 = *a1;
  v11 = a1[1];
  if (v9 == *a1)
  {
LABEL_18:
    v20 = a1[2];
    v19 = a1[3];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v11) >> 3);
    *(v7 + 8 * v8) = v9;
    if (v20 >= v19)
    {
      v21 = sub_100021C24(v23, a2);
    }

    else
    {
      sub_100021BC4(v23, a2);
      v21 = v20 + 24;
    }

    a1[2] = v21;
  }

  else
  {
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    if (v12 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    while (1)
    {
      v15 = v11 + 24 * v9;
      v16 = *(v15 + 23);
      v17 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v15 + 8);
      }

      if (v16 == v13)
      {
        v18 = v17 >= 0 ? (v11 + 24 * v9) : *v15;
        if (!memcmp(v18, v14, v13))
        {
          break;
        }
      }

      v8 = (v8 + 1) & v6;
      v9 = *(v7 + 8 * v8);
      if (v9 == v10)
      {
        goto LABEL_18;
      }
    }
  }

  return v9;
}

void sub_1000C4720(uint64_t *a1, unint64_t a2)
{
  sub_1000C49B8(a1 + 5, a2);
  v4 = a1[5];
  v3 = a1[6];
  a1[8] = ((v3 - v4) >> 3) - 1;
  v5 = v3 - v4;
  if (v3 != v4)
  {
    v6 = 0;
    v7 = *a1;
    v8 = (v5 - 8) >> 3;
    v9 = vdupq_n_s64(v8);
    v10 = (v4 + 8);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v6), xmmword_1000D1170)));
      if (v11.i8[0])
      {
        *(v10 - 1) = v7;
      }

      if (v11.i8[4])
      {
        *v10 = v7;
      }

      v6 += 2;
      v10 += 2;
    }

    while (((v8 + 2) & 0x3FFFFFFFFFFFFFFELL) != v6);
  }

  v12 = a1[1];
  if (a1[2] != v12)
  {
    v13 = 0;
    do
    {
      v14 = v12 + 24 * v13;
      if (*(v14 + 23) < 0)
      {
        sub_1000732A4(__p, *v14, *(v14 + 8));
      }

      else
      {
        v15 = *v14;
        v21 = *(v14 + 16);
        *__p = v15;
      }

      v16 = sub_1000C4898((a1 + 4), __p);
      v17 = a1[8];
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }

      v18 = v17 & v16;
      v19 = a1[5];
      if (*(v19 + 8 * (v17 & v16)) != *a1)
      {
        do
        {
          v18 = a1[8] & (v18 + 1);
        }

        while (*(v19 + 8 * v18) != *a1);
      }

      *(v19 + 8 * v18) = v13++;
      v12 = a1[1];
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((a1[2] - v12) >> 3));
  }
}

unint64_t sub_1000C4898(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_1000C7A94(&v5, a2, v3);
}

uint64_t sub_1000C48D8(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = sub_1000C4898((a1 + 4), a2);
  v5 = a1[8];
  v6 = a1[5];
  v7 = *a1;
  v8 = v4 & v5;
  v9 = *(v6 + 8 * (v4 & v5));
  if (v9 == *a1)
  {
    return v7;
  }

  v10 = a1[1];
  v11 = *(v2 + 23);
  if (v11 >= 0)
  {
    v12 = *(v2 + 23);
  }

  else
  {
    v12 = v2[1];
  }

  if (v11 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v13 = v10 + 24 * v9;
    v14 = *(v13 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v13 + 8);
    }

    if (v14 == v12)
    {
      v16 = v15 >= 0 ? (v10 + 24 * v9) : *v13;
      if (!memcmp(v16, v2, v12))
      {
        break;
      }
    }

    v8 = (v8 + 1) & v5;
    v9 = *(v6 + 8 * v8);
    if (v9 == v7)
    {
      return v7;
    }
  }

  return v9;
}

void sub_1000C49B8(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    sub_1000C7F00(result, a2 - v2);
  }
}

void sub_1000C49E8(uint64_t *a1, uint64_t a2)
{
  sub_1000C8030(&v7, (a1[1] + 24 * a2 + 24), a1[2], a1[1] + 24 * a2);
  v4 = v3;
  v5 = a1[2];
  if (v5 != v3)
  {
    do
    {
      v6 = *(v5 - 1);
      v5 -= 3;
      if (v6 < 0)
      {
        operator delete(*v5);
      }
    }

    while (v5 != v4);
  }

  a1[2] = v4;
  sub_1000C4720(a1, (a1[6] - a1[5]) >> 3);
}

uint64_t sub_1000C4A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  if (a3 == -1)
  {
    return -1;
  }

  v6 = sub_1000C459C((a1 + 40), a2);
  if (v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - *(a1 + 48)) >> 3) - 1 == a3 && *(a1 + 32) == a3)
    {
      *(a1 + 32) = a3 + 1;
      v8 = a3;
    }

    else
    {
      v11 = *(a1 + 120);
      v10 = *(a1 + 128);
      if (v11 >= v10)
      {
        v20 = *(a1 + 112);
        v21 = v11 - v20;
        v22 = (v11 - v20) >> 3;
        v23 = v22 + 1;
        if ((v22 + 1) >> 61)
        {
          sub_100017658();
        }

        v24 = v10 - v20;
        if (v24 >> 2 > v23)
        {
          v23 = v24 >> 2;
        }

        v25 = v24 >= 0x7FFFFFFFFFFFFFF8;
        v26 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v25)
        {
          v26 = v23;
        }

        if (v26)
        {
          sub_10001A1CC(a1 + 112, v26);
        }

        v27 = (v11 - v20) >> 3;
        v28 = (8 * v22);
        v29 = (8 * v22 - 8 * v27);
        *v28 = a3;
        v12 = v28 + 1;
        memcpy(v29, v20, v21);
        v30 = *(a1 + 112);
        *(a1 + 112) = v29;
        *(a1 + 120) = v12;
        *(a1 + 128) = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v11 = a3;
        v12 = v11 + 8;
      }

      *(a1 + 120) = v12;
      v31 = -1 - 0x5555555555555555 * ((*(a1 + 56) - *(a1 + 48)) >> 3);
      __p[0] = &v35;
      sub_1000C8160(a1 + 136, &v35, &unk_1000D6675, __p)[5] = v31;
      v8 = v35;
    }

    if (v8 >= *(a1 + 24))
    {
      *(a1 + 24) = v8 + 1;
    }

    *(a1 + 160) = 0;
  }

  else
  {
    v9 = sub_1000C56D4(a1, v6);
    if (v9 == a3)
    {
      return a3;
    }

    else
    {
      v8 = v9;
      if (dword_10010E8A8 >= 1)
      {
        sub_1000113AC(__p, "INFO");
        sub_10002B1D4(&v36, __p);
        v13 = sub_10002AE44(&std::cerr, "SymbolTable::AddSymbol: symbol = ", 33);
        v14 = *(a2 + 23);
        v15 = v14 >= 0 ? a2 : *a2;
        v16 = v14 >= 0 ? *(a2 + 23) : *(a2 + 8);
        v17 = sub_10002AE44(v13, v15, v16);
        sub_10002AE44(v17, " already in symbol_map_ with key = ", 35);
        v18 = std::ostream::operator<<();
        sub_10002AE44(v18, " but supplied new key = ", 24);
        v19 = std::ostream::operator<<();
        sub_10002AE44(v19, " (ignoring new key)", 19);
        sub_10002B280(&v36);
        if (v34 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return v8;
}

void sub_1000C4D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C4D30(uint64_t a1)
{
  std::mutex::lock((a1 + 216));
  v2 = *(a1 + 160);
  std::mutex::unlock((a1 + 216));
  if ((v2 & 1) == 0)
  {
    std::mutex::lock((a1 + 216));
    if ((*(a1 + 160) & 1) == 0)
    {
      sub_1000C71AC(&v67);
      v4 = *(a1 + 48);
      v3 = *(a1 + 56);
      if (v3 != v4)
      {
        v5 = 0;
        do
        {
          v6 = (v4 + 24 * v5);
          v7 = v6[23];
          if (v7 < 0)
          {
            v6 = *v6;
            v7 = *(v4 + 24 * v5 + 8);
          }

          if (v7 >= 1)
          {
            v8 = v7 & 0x7FFFFFFF;
            do
            {
              v10 = *v6++;
              v9 = v10;
              v11 = v67++;
              v12 = -v11 < 0;
              v13 = -v11 & 0x1F;
              v14 = v11 & 0x1F;
              if (!v12)
              {
                v14 = -v13;
              }

              if (SHIBYTE(v69) >= 0)
              {
                v15 = &v68;
              }

              else
              {
                v15 = v68;
              }

              *(v15 + v14) ^= v9;
              --v8;
            }

            while (v8);
            v4 = *(a1 + 48);
            v3 = *(a1 + 56);
          }

          ++v67;
          ++v5;
        }

        while (v5 < 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3));
      }

      if (SHIBYTE(v69) < 0)
      {
        sub_1000732A4(&__dst, v68, *(&v68 + 1));
      }

      else
      {
        __dst = v68;
        v61[0].__locale_ = v69;
      }

      if (*(a1 + 191) < 0)
      {
        operator delete(*(a1 + 168));
      }

      *(a1 + 168) = __dst;
      *(a1 + 184) = v61[0];
      sub_1000C71AC(&v64);
      if (*(a1 + 32) >= 1)
      {
        v16 = 0;
        do
        {
          sub_1000C5448(&__dst);
          v19 = *(a1 + 48) + 24 * v16;
          v20 = *(v19 + 23);
          if (v20 >= 0)
          {
            v21 = *(a1 + 48) + 24 * v16;
          }

          else
          {
            v21 = *v19;
          }

          if (v20 >= 0)
          {
            v22 = *(v19 + 23);
          }

          else
          {
            v22 = *(v19 + 8);
          }

          v23 = sub_10002AE44(&__dst, v21, v22);
          LOBYTE(v58[0]) = 9;
          sub_10002AE44(v23, v58, 1);
          std::ostream::operator<<();
          std::stringbuf::str();
          if (v59 >= 0)
          {
            v24 = v58;
          }

          else
          {
            v24 = v58[0];
          }

          std::stringbuf::str();
          v25 = v57;
          v26 = v57;
          if ((v57 & 0x80u) != 0)
          {
            v25 = v56;
          }

          if (v25 >= 1)
          {
            v27 = v25 & 0x7FFFFFFF;
            do
            {
              v29 = *v24;
              v24 = (v24 + 1);
              v28 = v29;
              v30 = v64++;
              v12 = -v30 < 0;
              v31 = -v30 & 0x1F;
              v32 = v30 & 0x1F;
              if (!v12)
              {
                v32 = -v31;
              }

              if (SHIBYTE(v66) >= 0)
              {
                v33 = &v65;
              }

              else
              {
                v33 = v65;
              }

              *(v33 + v32) ^= v28;
              --v27;
            }

            while (v27);
            v26 = v57;
          }

          if ((v26 & 0x80) != 0)
          {
            operator delete(__p);
          }

          if (v59 < 0)
          {
            operator delete(v58[0]);
          }

          *&__dst = v17;
          *(&v61[-2].__locale_ + *(v17 - 24)) = v18;
          if (v63 < 0)
          {
            operator delete(v62);
          }

          std::locale::~locale(v61);
          std::ostream::~ostream();
          std::ios::~ios();
          ++v16;
        }

        while (v16 < *(a1 + 32));
      }

      v34 = *(a1 + 136);
      if (v34 != (a1 + 144))
      {
        do
        {
          if (v34[4] >= *(a1 + 32))
          {
            sub_1000C5448(&__dst);
            v37 = *(a1 + 48) + 24 * v34[5];
            v38 = *(v37 + 23);
            if (v38 >= 0)
            {
              v39 = *(a1 + 48) + 24 * v34[5];
            }

            else
            {
              v39 = *v37;
            }

            if (v38 >= 0)
            {
              v40 = *(v37 + 23);
            }

            else
            {
              v40 = *(v37 + 8);
            }

            v41 = sub_10002AE44(&__dst, v39, v40);
            LOBYTE(v58[0]) = 9;
            sub_10002AE44(v41, v58, 1);
            std::ostream::operator<<();
            std::stringbuf::str();
            if (v59 >= 0)
            {
              v42 = v58;
            }

            else
            {
              v42 = v58[0];
            }

            std::stringbuf::str();
            v43 = v57;
            v44 = v57;
            if ((v57 & 0x80u) != 0)
            {
              v43 = v56;
            }

            if (v43 >= 1)
            {
              v45 = v43 & 0x7FFFFFFF;
              do
              {
                v47 = *v42;
                v42 = (v42 + 1);
                v46 = v47;
                v48 = v64++;
                v12 = -v48 < 0;
                v49 = -v48 & 0x1F;
                v50 = v48 & 0x1F;
                if (!v12)
                {
                  v50 = -v49;
                }

                if (SHIBYTE(v66) >= 0)
                {
                  v51 = &v65;
                }

                else
                {
                  v51 = v65;
                }

                *(v51 + v50) ^= v46;
                --v45;
              }

              while (v45);
              v44 = v57;
            }

            if ((v44 & 0x80) != 0)
            {
              operator delete(__p);
            }

            if (v59 < 0)
            {
              operator delete(v58[0]);
            }

            *&__dst = v35;
            *(&v61[-2].__locale_ + *(v35 - 24)) = v36;
            if (v63 < 0)
            {
              operator delete(v62);
            }

            std::locale::~locale(v61);
            std::ostream::~ostream();
            std::ios::~ios();
          }

          v52 = v34[1];
          if (v52)
          {
            do
            {
              v53 = v52;
              v52 = *v52;
            }

            while (v52);
          }

          else
          {
            do
            {
              v53 = v34[2];
              v54 = *v53 == v34;
              v34 = v53;
            }

            while (!v54);
          }

          v34 = v53;
        }

        while (v53 != (a1 + 144));
      }

      if (SHIBYTE(v66) < 0)
      {
        sub_1000732A4(&__dst, v65, *(&v65 + 1));
      }

      else
      {
        __dst = v65;
        v61[0].__locale_ = v66;
      }

      if (*(a1 + 215) < 0)
      {
        operator delete(*(a1 + 192));
      }

      *(a1 + 192) = __dst;
      *(a1 + 208) = v61[0];
      *(a1 + 160) = 1;
      if (SHIBYTE(v66) < 0)
      {
        operator delete(v65);
      }

      if (SHIBYTE(v69) < 0)
      {
        operator delete(v68);
      }
    }

    std::mutex::unlock((a1 + 216));
  }
}

void sub_1000C53C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (*(v19 - 121) < 0)
  {
    operator delete(*(v19 - 144));
  }

  if (*(v19 - 89) < 0)
  {
    operator delete(*(v19 - 112));
  }

  std::mutex::unlock((v18 + 216));
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_1000C5448(void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_1000C80A4((a1 + 1), 16);
  return a1;
}

void sub_1000C558C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C55B4(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000C56D4(void *a1, int64_t a2)
{
  if (a2 < 0)
  {
    return -1;
  }

  v3 = a1[6];
  if (0xAAAAAAAAAAAAAAABLL * ((a1[7] - v3) >> 3) <= a2)
  {
    return -1;
  }

  if (a1[4] <= a2)
  {
    v4 = sub_1000C48D8(a1 + 5, (v3 + 24 * a2));
    a2 = v4;
    if (v4 != -1)
    {
      v5 = a1[4];
      v6 = __OFSUB__(v4, v5);
      v7 = v4 - v5;
      if (v7 < 0 == v6)
      {
        return *(a1[14] + 8 * v7);
      }
    }
  }

  return a2;
}

void sub_1000C576C(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v4 = a2;
    if (a1[4] > a2)
    {
      goto LABEL_11;
    }
  }

  v5 = a1 + 18;
  v6 = a1[18];
  if (v6)
  {
    v7 = (a1 + 17);
    v8 = a1 + 18;
    do
    {
      if (*(v6 + 32) >= a2)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < a2));
    }

    while (v6);
    if (v8 != v5 && v8[4] <= a2)
    {
      v4 = v8[5];
      sub_10002FD90(v7, v8);
      operator delete(v8);
      if ((v4 & 0x8000000000000000) == 0)
      {
LABEL_11:
        if (v4 < 0xAAAAAAAAAAAAAAABLL * ((a1[7] - a1[6]) >> 3))
        {
          sub_1000C49E8(a1 + 5, v4);
          v9 = a1[17];
          if (v9 != a1 + 18)
          {
            do
            {
              v10 = v9[5];
              if (v10 > v4)
              {
                v9[5] = v10 - 1;
              }

              v11 = v9[1];
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
                do
                {
                  v12 = v9[2];
                  v13 = *v12 == v9;
                  v9 = v12;
                }

                while (!v13);
              }

              v9 = v12;
            }

            while (v12 != a1 + 18);
          }

          v14 = a1[4];
          if (a2 < 0 || v14 <= a2)
          {
            v23 = a1[14];
            v22 = a1[15];
            v24 = (v22 - v23) >> 3;
            if (v4 - v14 < v24 - 1)
            {
              v25 = ~v4 + v14 + v24;
              v26 = (v23 - 8 * v14 + 8 * v4 + 8);
              do
              {
                *(v26 - 1) = *v26;
                ++v26;
                --v25;
              }

              while (v25);
            }

            a1[15] = v22 - 8;
          }

          else
          {
            v27 = a2 + 1;
            if (a2 + 1 < v14)
            {
              v15 = a2;
              do
              {
                v28 = &v27;
                sub_1000C8160((a1 + 17), &v27, &unk_1000D6675, &v28)[5] = v15;
                v15 = v27++;
              }

              while (v27 < a1[4]);
            }

            sub_1000C49B8(a1 + 14, 0xAAAAAAAAAAAAAAABLL * ((a1[7] - a1[6]) >> 3) - a2);
            v16 = 0xAAAAAAAAAAAAAAABLL * ((a1[7] - a1[6]) >> 3);
            v17 = a1[4];
            if (v16 >= v17)
            {
              v18 = v16 + 1;
              v19 = a1[14] + 0x5555555555555558 * ((a1[7] - a1[6]) >> 3);
              do
              {
                *(v19 + 8 * ~a2) = *(v19 - 8 * v17);
                v17 = a1[4];
                --v18;
                v19 -= 8;
              }

              while (v18 > v17);
            }

            if (v17 - 1 > a2)
            {
              v20 = a1[14];
              v21 = a2;
              do
              {
                *v20++ = ++v21;
              }

              while (v21 < a1[4] - 1);
            }

            a1[4] = a2;
          }

          if (a1[3] - 1 == a2)
          {
            a1[3] = a2;
          }
        }
      }
    }
  }
}

uint64_t sub_1000C5A14(void *a1)
{
  v6 = 0;
  std::istream::read();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    v5 = 0;
    LODWORD(v3.__r_.__value_.__l.__data_) = 0;
    std::istream::read();
    operator new();
  }

  sub_1000113AC(__p, "ERROR");
  sub_10002B1D4(&v3, __p);
  sub_10002AE44(&std::cerr, "SymbolTable::Read: Read failed", 30);
  sub_10002B280(&v3);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1000C5D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_10002B280((v30 - 49));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_100074C08(&a24);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1000C5E3C(uint64_t *a1, void *a2)
{
  LODWORD(__p[0]) = 2125658996;
  std::ostream::write();
  LODWORD(v4) = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  LODWORD(__p[0]) = v4;
  std::ostream::write();
  std::ostream::write();
  __p[0] = a1[3];
  std::ostream::write();
  v5 = a1[7] - a1[6];
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  __p[0] = v6;
  std::ostream::write();
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      v9 = a1[4];
      v10 = v8;
      if (v8 >= v9)
      {
        v10 = *(a1[14] - 8 * v9 + 8 * v8);
      }

      std::ostream::write();
      std::ostream::write();
      __p[0] = v10;
      std::ostream::write();
      ++v8;
      v7 += 24;
    }

    while (v6 != v8);
  }

  std::ostream::flush();
  v11 = *(a2 + *(*a2 - 24) + 32) & 5;
  if (v11)
  {
    sub_1000113AC(__p, "ERROR");
    sub_10002B1D4(&v15, __p);
    sub_10002AE44(&std::cerr, "SymbolTable::Write: Write failed", 32);
    sub_10002B280(&v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v11 == 0;
}

void sub_1000C604C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  sub_10002B280(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000C6078(uint64_t a1, uint64_t a2)
{
  sub_1000C61DC(a1);
  v4 = (*(*a2 + 120))(a2);
  v5 = (*(*a2 + 64))(a2, 0);
  if (v4)
  {
    v6 = v5;
    v7 = 1;
    v8 = v4;
    do
    {
      v9 = *(a1 + 8);
      (*(*a2 + 72))(__p, a2, v6);
      sub_1000C4A74(v9, __p, *(v9 + 24));
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v7 < v4)
      {
        v6 = (*(*a2 + 64))(a2, v7);
      }

      ++v7;
      --v8;
    }

    while (v8);
  }
}

void sub_1000C61C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000C61DC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1 || *(v1 + 8))
  {
    operator new();
  }

  return result;
}

BOOL sub_1000C627C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 31);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 16);
  }

  v18 = v3;
  if (v3)
  {
    v6 = (*(*a1 + 120))(a1);
    v7 = (*(*a1 + 64))(a1, 0);
    if (v6)
    {
      v8 = v7;
      v9 = 0;
      v10 = 1;
      v11 = v6;
      do
      {
        sub_1000C5448(&v25);
        if (!((v8 >= 0) | v9 & 1 | *a3 & 1))
        {
          sub_1000113AC(__p, "WARNING");
          sub_10002B1D4(&v21, __p);
          sub_10002AE44(&std::cerr, "Negative symbol table entry when not allowed", 44);
          sub_10002B280(&v21);
          if (v24 < 0)
          {
            operator delete(__p[0]);
          }

          v9 = 1;
        }

        (*(*a1 + 72))(__p, a1, v8);
        if ((v24 & 0x80u) == 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        if ((v24 & 0x80u) == 0)
        {
          v13 = v24;
        }

        else
        {
          v13 = __p[1];
        }

        v14 = sub_10002AE44(&v25, v12, v13);
        v15 = (a3 + 8);
        if (*(a3 + 31) < 0)
        {
          v15 = *(a3 + 8);
        }

        LOBYTE(v21) = *v15;
        sub_10002AE44(v14, &v21, 1);
        v16 = std::ostream::operator<<();
        LOBYTE(v21) = 10;
        sub_10002AE44(v16, &v21, 1);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        std::stringbuf::str();
        std::stringbuf::str();
        std::ostream::write();
        if (v22 < 0)
        {
          operator delete(v21);
        }

        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        v25 = v20;
        *(&v25 + *(v20 - 3)) = v19;
        if (v28 < 0)
        {
          operator delete(v27[7].__locale_);
        }

        std::locale::~locale(v27);
        std::ostream::~ostream();
        std::ios::~ios();
        if (v10 < v6)
        {
          v8 = (*(*a1 + 64))(a1, v10);
        }

        ++v10;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    sub_1000113AC(&v25, "ERROR");
    sub_10002B1D4(__p, &v25);
    sub_10002AE44(&std::cerr, "Missing required field separator", 32);
    sub_10002B280(__p);
    if (SHIBYTE(v27[0].__locale_) < 0)
    {
      operator delete(v25);
    }
  }

  return v18 != 0;
}

void sub_1000C6690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_10002B280(&a23);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1000C6724(uint64_t a1, uint64_t a2, int a3)
{
  if (byte_10010E270 != 1)
  {
    return 1;
  }

  result = 1;
  if (a1 && a2)
  {
    v7 = (*(*a1 + 88))(a1);
    v8 = (*(*a2 + 88))(a2);
    v9 = *(v7 + 23);
    if (v9 >= 0)
    {
      v10 = *(v7 + 23);
    }

    else
    {
      v10 = *(v7 + 8);
    }

    v11 = *(v8 + 23);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v8 + 8);
    }

    if (v10 == v11)
    {
      if (v9 >= 0)
      {
        v13 = v7;
      }

      else
      {
        v13 = *v7;
      }

      if (v12 >= 0)
      {
        v14 = v8;
      }

      else
      {
        v14 = *v8;
      }

      result = memcmp(v13, v14, v10) == 0;
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = 0;
    }

    if (a3)
    {
      sub_1000113AC(__p, "WARNING");
      sub_10002B1D4(&v19, __p);
      v15 = sub_10002AE44(&std::cerr, "CompatSymbols: Symbol table checksums do not match. ", 52);
      sub_10002AE44(v15, "Table sizes are ", 16);
      (*(*a1 + 120))(a1);
      v16 = std::ostream::operator<<();
      sub_10002AE44(v16, " and ", 5);
      (*(*a2 + 120))(a2);
      std::ostream::operator<<();
      sub_10002B280(&v19);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      return 0;
    }
  }

  return result;
}

void sub_1000C6920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000C694C(void *a1)
{
  *a1 = off_100104940;
  v2 = a1[2];
  if (v2)
  {
    sub_100016EC0(v2);
  }

  return a1;
}

void sub_1000C6998(void *a1)
{
  *a1 = off_100104940;
  v1 = a1[2];
  if (v1)
  {
    sub_100016EC0(v1);
  }

  operator delete();
}

uint64_t sub_1000C6A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000C61DC(a1);
  v6 = *(a1 + 8);

  return sub_1000C4A74(v6, a2, a3);
}

uint64_t sub_1000C6AC0(uint64_t a1, uint64_t a2)
{
  sub_1000C61DC(a1);
  v4 = *(a1 + 8);
  v5 = *(v4 + 24);

  return sub_1000C4A74(v4, a2, v5);
}

uint64_t sub_1000C6B10(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1000C4D30(v1);
  return v1 + 168;
}

uint64_t sub_1000C6B4C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  result = sub_1000C48D8(v2 + 5, a2);
  if (result != -1)
  {
    v4 = v2[4];
    v5 = __OFSUB__(result, v4);
    v6 = result - v4;
    if (v6 < 0 == v5)
    {
      return *(v2[14] + 8 * v6);
    }
  }

  return result;
}

uint64_t sub_1000C6B90(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1000C4D30(v1);
  return v1 + 192;
}

BOOL sub_1000C6BC4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = sub_1000C48D8(v2 + 5, a2);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = v2[4];
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  return v6 < 0 != v5 || *(v2[14] + 8 * v6) != -1;
}

void sub_1000C6C48(uint64_t a1, uint64_t a2)
{
  sub_1000C61DC(a1);
  v4 = *(a1 + 8);

  sub_1000C576C(v4, a2);
}

std::string *sub_1000C6C88(uint64_t a1, const std::string *a2)
{
  sub_1000C61DC(a1);
  v4 = *(a1 + 8);

  return std::string::operator=(v4, a2);
}

uint64_t sub_1000C6CD0(uint64_t a1, uint64_t a2)
{
  sub_10002D9AC(v13, a2, 20);
  if (*(&v13[4] + *(v13[0] - 3)))
  {
    sub_1000113AC(__p, "ERROR");
    sub_10002B1D4(&v12, __p);
    v4 = sub_10002AE44(&std::cerr, "SymbolTable::Write: Can't open file ", 36);
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v5 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    sub_10002AE44(v4, v6, v7);
    sub_10002B280(&v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = 0;
  }

  else
  {
    v8 = (*(*a1 + 144))(a1, v13);
  }

  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return v8;
}

uint64_t sub_1000C6EF8(uint64_t a1, uint64_t a2)
{
  sub_10002D9AC(v15, a2, 16);
  if (*(&v15[4] + *(v15[0] - 3)))
  {
    sub_1000113AC(&__p, "ERROR");
    sub_10002B1D4(&v14, &__p);
    v4 = sub_10002AE44(&std::cerr, "SymbolTable::WriteText: Can't open file ", 40);
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v5 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    sub_10002AE44(v4, v6, v7);
    sub_10002B280(&v14);
    if (v12 < 0)
    {
      operator delete(__p);
    }

    v8 = 0;
  }

  else
  {
    LOBYTE(__p) = 0;
    sub_1000113AC(&v11, off_10010E278);
    v8 = (*(*a1 + 160))(a1, v15, &__p);
    if (v13 < 0)
    {
      operator delete(v11);
    }
  }

  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return v8;
}

void sub_1000C7104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_100077480(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C7160(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 8);
  sub_100020578(&v4);
  return a1;
}

uint64_t sub_1000C71AC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::string::resize((a1 + 8), 0x20uLL, 0);
  return a1;
}

void sub_1000C71F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1000C725C(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000732A4(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = *(a2 + 24);
  sub_1000C44F0(__dst + 5, a2 + 40);
  *(__dst + 14) = 0;
  *(__dst + 15) = 0;
  *(__dst + 16) = 0;
  sub_1000C778C(__dst + 14, *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 3);
  sub_1000C7364(__dst + 17, a2 + 136);
  __dst[160] = 0;
  *(__dst + 168) = 0u;
  *(__dst + 184) = 0u;
  *(__dst + 200) = 0u;
  *(__dst + 27) = 850045863;
  *(__dst + 14) = 0u;
  *(__dst + 15) = 0u;
  *(__dst + 16) = 0u;
  *(__dst + 34) = 0;
  return __dst;
}

void sub_1000C7320(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 120) = v4;
    operator delete(v4);
  }

  sub_1000C7160(v1 + 40);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void *sub_1000C7364(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1000C73BC(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1000C73BC(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1000C7444(v5, (v5 + 8), v4 + 4, v4 + 2);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1000C7444(uint64_t **a1, void *a2, uint64_t *a3, _OWORD *a4)
{
  v4 = *sub_1000C74DC(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *sub_1000C74DC(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *sub_1000C7684@<X0>(void *result@<X0>, int64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0 || result[4] <= a2)
  {
    v3 = result[18];
    if (!v3)
    {
      return sub_1000113AC(a3, "");
    }

    v4 = result + 18;
    do
    {
      if (v3[4] >= a2)
      {
        v4 = v3;
      }

      v3 = v3[v3[4] < a2];
    }

    while (v3);
    if (v4 == result + 18)
    {
      return sub_1000113AC(a3, "");
    }

    if (v4[4] > a2)
    {
      return sub_1000113AC(a3, "");
    }

    a2 = v4[5];
    if (a2 < 0)
    {
      return sub_1000113AC(a3, "");
    }
  }

  v5 = result[6];
  if (a2 >= 0xAAAAAAAAAAAAAAABLL * ((result[7] - v5) >> 3))
  {
    return sub_1000113AC(a3, "");
  }

  v6 = (v5 + 24 * a2);
  if (*(v6 + 23) < 0)
  {
    return sub_1000732A4(a3, *v6, *(v6 + 1));
  }

  v7 = *v6;
  a3[2] = *(v6 + 2);
  *a3 = v7;
  return result;
}

BOOL sub_1000C7738(void *a1, int64_t a2)
{
  sub_1000C7684(a1, a2, v4);
  if ((v5 & 0x80000000) == 0)
  {
    return v5 != 0;
  }

  v2 = v4[1] != 0;
  operator delete(v4[0]);
  return v2;
}

uint64_t *sub_1000C778C(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000943E0(result, a4);
  }

  return result;
}

void sub_1000C77EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1000C7808(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_1000943E0(a1, a2);
  }

  return a1;
}

void sub_1000C7864(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1000C7880(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000C7908(result, a4);
  }

  return result;
}

void sub_1000C78E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100020578(&a9);
  _Unwind_Resume(a1);
}

void sub_1000C7908(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_100021D64(a1, a2);
  }

  sub_100017658();
}

char *sub_1000C7954(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1000732A4(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_1000C7A14(v9);
  return v4;
}

uint64_t sub_1000C7A14(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000C7A4C(a1);
  }

  return a1;
}

void sub_1000C7A4C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

unint64_t sub_1000C7A94(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_1000C7E40(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_1000C7D94(a2, a3);
  }

  else
  {
    return sub_1000C7C9C(a2, a3);
  }
}

unint64_t sub_1000C7C9C(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_1000C7D94(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_1000C7E40(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void sub_1000C7F00(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_100017658();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_10001A1CC(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

__int128 *sub_1000C8030(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1000C80A4(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_100078928(a1);
  return a1;
}

void sub_1000C8138(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *sub_1000C8160(uint64_t a1, uint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1000C8230(uint64_t a1, uint64_t a2)
{
  if (qword_10010E800 != -1)
  {
    sub_1000C8298();
  }

  return qword_10010E7F8;
}

uint64_t sub_1000C82AC(uint64_t a1, void *a2, uint64_t **a3, int a4)
{
  if (a4)
  {
    std::istream::tellg();
    v6 = v21;
  }

  else
  {
    v6 = 0;
  }

  std::istream::read();
  sub_1000113AC(__p, "ERROR");
  sub_10002B1D4(&__c, __p);
  v7 = sub_10002AE44(&std::cerr, "FstHeader::Read: Bad FST header: ", 33);
  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = a3[1];
  }

  sub_10002AE44(v7, v9, v10);
  sub_10002B280(&__c);
  if ((SBYTE7(v14) & 0x80000000) == 0)
  {
    if (!a4)
    {
      return 0;
    }

    goto LABEL_14;
  }

  operator delete(__p[0]);
  if (a4)
  {
LABEL_14:
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    *__p = 0u;
    v14 = 0u;
    v21 = v6;
    std::istream::seekg();
  }

  return 0;
}

void sub_1000C8608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000C8644(uint64_t a1, uint64_t a2)
{
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  return 1;
}

void *sub_1000C87AC(void *__dst, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000732A4(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v9;
  }

  __dst[3] = a3;
  __dst[4] = a4;
  __dst[5] = a5;
  *(__dst + 26) = 257;
  sub_1000113AC(__p, off_10010E298[0]);
  *(__dst + 12) = sub_1000C8888(__p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return __dst;
}

void sub_1000C8854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000C8888(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8) == 4 && **a1 == 1684104562)
    {
      return 0;
    }

    if (*(a1 + 8) != 3)
    {
LABEL_14:
      sub_1000113AC(__p, "ERROR");
      sub_10002B1D4(&v14, __p);
      v7 = sub_10002AE44(&std::cerr, "Unknown file read mode ", 23);
      v8 = *(a1 + 23);
      if (v8 >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      if (v8 >= 0)
      {
        v10 = *(a1 + 23);
      }

      else
      {
        v10 = *(a1 + 8);
      }

      sub_10002AE44(v7, v9, v10);
      sub_10002B280(&v14);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      return 0;
    }

    v3 = *a1;
LABEL_10:
    v4 = *v3;
    v5 = *(v3 + 2);
    if (v4 == 24941 && v5 == 112)
    {
      return 1;
    }

    goto LABEL_14;
  }

  v2 = *(a1 + 23);
  v3 = a1;
  if (v2 == 3)
  {
    goto LABEL_10;
  }

  if (v2 != 4 || *a1 != 1684104562)
  {
    goto LABEL_14;
  }

  return 0;
}

void sub_1000C89AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000C89DC(uint64_t a1, uint64_t a2)
{
  v2 = (a2 | a1) & 4;
  v3 = a2 & a1;
  v4 = a2 & a1 & 0x2802000000 | v2 | 0x10000000000;
  if ((a2 & a1 & 0x2000000) != 0)
  {
    v4 |= a2 & a1 & 0x40000;
  }

  v5 = v3 & 0x280A800000 | v2 | 0x10000010000;
  if ((v3 & 0x2000000) != 0)
  {
    v5 |= v3 & 0x140000;
  }

  if ((v3 & 0x10000) != 0)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000C8A48(unint64_t a1, int a2, int a3)
{
  if ((a1 & 0x10000) != 0)
  {
    goto LABEL_6;
  }

  v3 = a2 ^ 1;
  v4 = 0x10000000000;
  if ((a1 & 0x2000000) != 0)
  {
    v3 = 0;
  }

  if ((v3 & 1) == 0 && a3)
  {
LABEL_6:
    v4 = 0x10000040000;
  }

  v5 = (a1 >> 25) & 1;
  v6 = a1 & 0x800000;
  if ((v5 & a3) == 0)
  {
    v6 = 0;
  }

  v7 = a1 & ((a1 << 23) >> 63) & 0x405000000 | a1 & 0x142800010004 | a1 & ((a1 << 15) >> 31) & 0xA000000 | v6 | v4;
  if ((v5 & a2) != 0)
  {
    return v7 | 0x2000000;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1000C8AD0(uint64_t **a1, uint64_t a2, int a3, int a4, int a5, char a6, int a7, int a8, char a9, char a10, unsigned __int8 a11)
{
  v11 = *a1;
  v12 = a1[1];
  if (*a1 == v12)
  {
    return 0x956A5A950000;
  }

  v13 = 0;
  v14 = *a1;
  do
  {
    v15 = *v14++;
    v13 |= v15 & 4;
  }

  while (v14 != v12);
  v16 = 0x50000000000;
  if (!a8)
  {
    v16 = 0;
  }

  v17 = *a1;
  do
  {
    v18 = *v17++;
    v16 &= v18;
  }

  while (v17 != v12);
  if (v16 == 0x50000000000)
  {
    v19 = 0;
    LOBYTE(v20) = 1;
    v21 = *a1;
    do
    {
      v23 = *v21++;
      v22 = v23;
      v24 = v23 & 0x20000;
      if (!a7)
      {
        v24 = 0;
      }

      v19 |= v22 & 0x608505680000 | v24;
      v20 = ((v22 & 0x100000000000) != 0) & v20;
    }

    while (v21 != v12);
    v25 = v20 == 0;
    v26 = 0x50000000000;
    if (!v25)
    {
      v26 = 0x150000000000;
    }

    v13 |= v11[a2] & 0x1000000000 | v19 | v26;
  }

  v27 = a3 ^ 1;
  v28 = v12 - v11;
  v29 = (a3 | a4) ^ 1;
  v30 = (a3 ^ 1) & a4;
  LOBYTE(v31) = a7 ^ 1;
  if (v28 <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = v28;
  }

  LOBYTE(v33) = 1;
  v34 = v11;
  v35 = a2;
  LOBYTE(v36) = 1;
  do
  {
    v37 = *v34++;
    v31 = BYTE2(v37) & 1 & v31;
    v38 = (v37 >> 18) & 1;
    v39 = (v37 >> 25) & 1;
    v29 &= v39;
    v36 = ((v37 & 0x800000000) != 0) & v36;
    v33 = ((v37 & 0x200000000) != 0) & v33;
    if (v35)
    {
      v40 = v39;
    }

    else
    {
      v40 = 1;
    }

    v30 &= v40 & v38;
    --v35;
    --v32;
  }

  while (v32);
  if (v31)
  {
    v13 |= 0x10000uLL;
  }

  if (v30)
  {
    v13 |= 0x40000uLL;
  }

  if (v29)
  {
    v13 |= 0x2000000uLL;
  }

  if (v36)
  {
    v13 |= 0x800000000uLL;
  }

  if (v33)
  {
    v13 |= 0x200000000uLL;
  }

  v41 = v11[a2] & 0x2000000000 | v13;
  if ((((v27 | a11) & a9) & a4) != 0)
  {
    v41 |= 0x10000000uLL;
  }

  if (((a6 & a10) & (a5 ^ 1 | a11)) != 0)
  {
    return v41 | 0x40000000;
  }

  else
  {
    return v41;
  }
}

uint64_t sub_1000C8CAC(uint64_t a1, int a2)
{
  v2 = 0xC00E05430007;
  if (a2)
  {
    v2 = 0xC00F05430007;
  }

  return v2 & a1;
}

uint64_t sub_1000C8CE8(uint64_t a1, int a2)
{
  v2 = 176160768;
  if ((a1 & 0x10000) == 0)
  {
    v2 = 0x800000;
  }

  v3 = v2 | a1 & 0x2800010004;
  if (!a2)
  {
    v3 |= a1 & 0x4000000000 | 3;
  }

  if ((((a1 & 0x10000000000) == 0) & a2) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1 & 0x20000;
  }

  return v3 | v4;
}

uint64_t sub_1000C8D3C(uint64_t a1, int a2)
{
  v2 = 0x852800000000;
  if (a2)
  {
    v2 = 0x812800000000;
  }

  return v2 | a1;
}

void sub_1000C8DEC()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getAXSystemAppServerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"RDSoundInputImpl_iOS_Shared.m" lineNumber:20 description:{@"Unable to find class %s", "AXSystemAppServer"}];

  __break(1u);
}

void sub_1000C8E68(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *AccessibilityUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"RDSoundInputImpl_iOS_Shared.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void sub_1000C8EE8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RDSoundInputImpl_iOS_Independent_AV.m" lineNumber:261 description:@"Invalid audio format"];
}

void sub_1000C8F5C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RDSoundInputImpl_iOS_Independent_AV.m" lineNumber:353 description:@"Invalid audio format"];
}

void sub_1000C8FFC()
{
  v0 = __cxa_guard_acquire(byte_10010E480);
  if (v0)
  {
    sub_100025E9C(v0, &stru_10010D670, &_mh_execute_header);

    __cxa_guard_release(byte_10010E480);
  }
}

void sub_1000C9054()
{
  v0 = __cxa_guard_acquire(byte_10010E488);
  if (v0)
  {
    sub_100025E9C(v0, &stru_10010D6B0, &_mh_execute_header);

    __cxa_guard_release(byte_10010E488);
  }
}

void sub_1000C9148()
{
  if (__cxa_guard_acquire(byte_10010D708))
  {
    dword_10010D700 = 0;

    __cxa_guard_release(byte_10010D708);
  }
}

void sub_1000C9194()
{
  if (__cxa_guard_acquire(byte_10010D718))
  {
    dword_10010D710 = 2139095040;

    __cxa_guard_release(byte_10010D718);
  }
}

void sub_1000C920C(uint64_t a1)
{
  v1 = RXOSLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "RDASRWSpeechRecognizerCreate return nil!", v2, 2u);
  }

  abort();
}

void sub_1000C92AC()
{
  if (__cxa_guard_acquire(byte_10010E510))
  {
    qword_10010E508 = 0;
    __cxa_atexit(sub_100033718, &qword_10010E508, &_mh_execute_header);

    __cxa_guard_release(byte_10010E510);
  }
}

CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex)
{
  RangeOfComposedCharactersAtIndex = _CFStringGetRangeOfComposedCharactersAtIndex(theString, theIndex);
  length = RangeOfComposedCharactersAtIndex.length;
  location = RangeOfComposedCharactersAtIndex.location;
  result.length = length;
  result.location = location;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  CurrentTokenRange = _CFStringTokenizerGetCurrentTokenRange(tokenizer);
  length = CurrentTokenRange.length;
  location = CurrentTokenRange.location;
  result.length = length;
  result.location = location;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return std::to_string(retstr, __val);
}

{
  return std::to_string(retstr, __val);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}