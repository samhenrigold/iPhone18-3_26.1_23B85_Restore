double sub_F23B10(uint64_t a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    nullsub_1();
    *(a2 + 40) |= 4u;
    *(a2 + 64) = v5;
  }

  v6 = *(a1 + 31);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 16);
  }

  if (v6)
  {
    *(a2 + 40) |= 1u;
    v7 = *(a2 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    sub_194EA1C((a2 + 48), (a1 + 8), v8);
  }

  v9 = *(a1 + 32);
  if (v9 <= 1)
  {
    if (!*(a1 + 32))
    {
      goto LABEL_18;
    }

    v10 = v9 == 1;
    v9 = 1;
    goto LABEL_15;
  }

  if (v9 != 2 && v9 != 3)
  {
    v10 = v9 == 4;
    v9 = 4;
LABEL_15:
    if (!v10)
    {
      v9 = 0;
    }
  }

  *(a2 + 40) |= 8u;
  *(a2 + 72) = v9;
LABEL_18:
  if (*(a1 + 64) - 1 < 3)
  {
    v11 = (*(a1 + 64) - 1) + 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a2 + 40);
  *(a2 + 40) = v12 | 0x10;
  *(a2 + 76) = v11;
  v13 = *(a1 + 63);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a1 + 48);
  }

  if (v13)
  {
    *(a2 + 40) = v12 | 0x12;
    v14 = *(a2 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
      v16 = (a2 + 56);
      v17 = (a1 + 40);
    }

    else
    {
      v16 = (a2 + 56);
      v17 = (a1 + 40);
    }

    sub_194EA1C(v16, v17, v15);
  }

  return result;
}

void sub_F23C80(uint64_t a1, int **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v7 = (a3 + 24);
    v8 = *(a3 + 24);
    do
    {
      while (1)
      {
        v9 = *v5;
        if (v8 == *(a3 + 28))
        {
          break;
        }

        *(*(a3 + 32) + 4 * v8++) = v9;
        *v7 = v8;
        v5 += 2;
        if (v5 == v6)
        {
          goto LABEL_6;
        }
      }

      sub_1958E5C((a3 + 24), v8 + 1);
      *(*(a3 + 32) + 4 * v8++) = v9;
      *v7 = v8;
      v5 += 2;
    }

    while (v5 != v6);
  }

LABEL_6:
  v10 = *(a1 + 560);
  if (*(a1 + 560))
  {
    if (v10 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10 == 1;
    }

    *(a3 + 16) |= 2u;
    *(a3 + 48) = v11;
  }

  v12 = 0;
  v13 = *(a1 + 564);
  if (v13 > 1)
  {
    v14 = v13 == 2 || v13 == 3;
    if (!v14 && v13 != 4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *(a1 + 564);
LABEL_18:
    *(a3 + 16) |= 4u;
    *(a3 + 52) = v12;
    goto LABEL_19;
  }

  if (v13)
  {
    if (v13 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_19:
  if (*(a1 + 24) != -1)
  {
    *(a3 + 16) |= 1u;
    v15 = *(a3 + 40);
    if (!v15)
    {
      v16 = *(a3 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      sub_141C1BC(v17);
      v15 = v18;
      *(a3 + 40) = v18;
    }

    nullsub_1();
    *(v15 + 16) |= 8u;
    *(v15 + 96) = v19;
  }

  if (sub_4D1F6C((a1 + 216)))
  {
    if (sub_4D1F6C((a1 + 376)))
    {
      goto LABEL_27;
    }

LABEL_42:
    *(a3 + 16) |= 1u;
    v28 = *(a3 + 40);
    if (v28)
    {
      *(v28 + 16) |= 4u;
      v29 = *(v28 + 88);
      if (v29)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v30 = *(a3 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      sub_141C1BC(v31);
      v28 = v32;
      *(a3 + 40) = v32;
      *(v32 + 16) |= 4u;
      v29 = *(v32 + 88);
      if (v29)
      {
LABEL_44:
        sub_64D110((a1 + 376), v29);
        if (sub_4D1F6C((a1 + 32)))
        {
          goto LABEL_62;
        }

        goto LABEL_52;
      }
    }

    v33 = *(v28 + 8);
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    sub_14BAE64(v34);
    *(v28 + 88) = v35;
    sub_64D110((a1 + 376), v35);
    if (sub_4D1F6C((a1 + 32)))
    {
      goto LABEL_62;
    }

    goto LABEL_52;
  }

  *(a3 + 16) |= 1u;
  v20 = *(a3 + 40);
  if (v20)
  {
    *(v20 + 16) |= 2u;
    v21 = *(v20 + 80);
    if (v21)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v22 = *(a3 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    sub_141C1BC(v23);
    v20 = v24;
    *(a3 + 40) = v24;
    *(v24 + 16) |= 2u;
    v21 = *(v24 + 80);
    if (v21)
    {
LABEL_31:
      sub_64D110((a1 + 216), v21);
      if (!sub_4D1F6C((a1 + 376)))
      {
        goto LABEL_42;
      }

      goto LABEL_27;
    }
  }

  v25 = *(v20 + 8);
  v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
  if (v25)
  {
    v26 = *v26;
  }

  sub_14BAE64(v26);
  *(v20 + 80) = v27;
  sub_64D110((a1 + 216), v27);
  if (!sub_4D1F6C((a1 + 376)))
  {
    goto LABEL_42;
  }

LABEL_27:
  if (sub_4D1F6C((a1 + 32)))
  {
    goto LABEL_62;
  }

LABEL_52:
  *(a3 + 16) |= 1u;
  v36 = *(a3 + 40);
  if (!v36)
  {
    v38 = *(a3 + 8);
    v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
    if (v38)
    {
      v39 = *v39;
    }

    sub_141C1BC(v39);
    v36 = v40;
    *(a3 + 40) = v40;
    *(v40 + 16) |= 1u;
    v37 = *(v40 + 72);
    if (v37)
    {
      goto LABEL_61;
    }

    goto LABEL_58;
  }

  *(v36 + 16) |= 1u;
  v37 = *(v36 + 72);
  if (!v37)
  {
LABEL_58:
    v41 = *(v36 + 8);
    v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
    if (v41)
    {
      v42 = *v42;
    }

    sub_14BAE64(v42);
    v37 = v43;
    *(v36 + 72) = v43;
  }

LABEL_61:
  sub_64D110((a1 + 32), v37);
LABEL_62:
  v44 = *(a1 + 192);
  v45 = *(a1 + 200);
  while (v44 != v45)
  {
    *(a3 + 16) |= 1u;
    v48 = *(a3 + 40);
    if (v48)
    {
      v49 = *(v48 + 40);
      if (!v49)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v50 = *(a3 + 8);
      v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
      if (v50)
      {
        sub_141C1BC(*v51);
        v48 = v54;
        *(a3 + 40) = v54;
        v49 = *(v54 + 40);
        if (!v49)
        {
LABEL_63:
          sub_14BAE64(*(v48 + 24));
          v47 = sub_19593CC(v48 + 24, v46);
          goto LABEL_64;
        }
      }

      else
      {
        sub_141C1BC(v51);
        v48 = v52;
        *(a3 + 40) = v52;
        v49 = *(v52 + 40);
        if (!v49)
        {
          goto LABEL_63;
        }
      }
    }

    v53 = *(v48 + 32);
    if (v53 >= *v49)
    {
      goto LABEL_63;
    }

    *(v48 + 32) = v53 + 1;
    v47 = *&v49[2 * v53 + 2];
LABEL_64:
    sub_64D110(v44, v47);
    v44 += 20;
  }

  v55 = *(a1 + 536);
  for (i = *(a1 + 544); v55 != i; v55 += 32)
  {
    *(a3 + 16) |= 1u;
    v59 = *(a3 + 40);
    if (v59)
    {
      v60 = *(v59 + 64);
      if (!v60)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v61 = *(a3 + 8);
      v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
      if (v61)
      {
        sub_141C1BC(*v62);
        v59 = v67;
        *(a3 + 40) = v67;
        v60 = *(v67 + 64);
        if (!v60)
        {
LABEL_96:
          v68 = sub_155282C(*(v59 + 48));
          v65 = sub_19593CC(v59 + 48, v68);
          v69 = *(v55 + 23);
          if ((v69 & 0x80u) != 0)
          {
            v69 = *(v55 + 8);
          }

          if (v69)
          {
            goto LABEL_99;
          }

          goto LABEL_102;
        }
      }

      else
      {
        sub_141C1BC(v62);
        v59 = v63;
        *(a3 + 40) = v63;
        v60 = *(v63 + 64);
        if (!v60)
        {
          goto LABEL_96;
        }
      }
    }

    v64 = *(v59 + 56);
    if (v64 >= *v60)
    {
      goto LABEL_96;
    }

    *(v59 + 56) = v64 + 1;
    v65 = *&v60[2 * v64 + 2];
    v66 = *(v55 + 23);
    if ((v66 & 0x80u) != 0)
    {
      v66 = *(v55 + 8);
    }

    if (v66)
    {
LABEL_99:
      *(v65 + 16) |= 1u;
      v70 = *(v65 + 8);
      v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
      if (v70)
      {
        v71 = *v71;
      }

      sub_194EA1C((v65 + 24), v55, v71);
    }

LABEL_102:
    v72 = *(v55 + 24);
    if (v72 > 1)
    {
      if (v72 == 3)
      {
        v57 = 3;
      }

      else
      {
        v57 = 0;
      }

      if (v72 == 2)
      {
        v58 = 2;
      }

      else
      {
        v58 = v57;
      }
    }

    else
    {
      if (!*(v55 + 24))
      {
        continue;
      }

      v58 = v72 == 1;
    }

    *(v65 + 16) |= 2u;
    *(v65 + 32) = v58;
  }
}

void sub_F24200(uint64_t a1, _DWORD *a2, uint64_t a3, double a4)
{
  *(a3 + 40) |= 1u;
  v5 = *(a3 + 48);
  if (!v5)
  {
    v7 = a1;
    v8 = *(a3 + 8);
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v9 = *v9;
    }

    a4 = sub_191B9D8(v9);
    v5 = v10;
    *(a3 + 48) = v10;
    a1 = v7;
  }

  v11 = *(v5 + 16);
  *(v5 + 60) = 1;
  v12 = v11 | 0x48;
  *(v5 + 16) = v12;
  *(v5 + 48) = 9902;
  if (a1 != -1)
  {
    nullsub_1();
    v12 = *(v5 + 16) | 2;
    *(v5 + 16) = v12;
    *(v5 + 32) = v13;
  }

  if (*a2 != -1 || a2[1] != -1)
  {
    *(v5 + 16) = v12 | 1;
    v15 = *(v5 + 24);
    if (!v15)
    {
      v16 = *(v5 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_16F5828(v17);
      *(v5 + 24) = v15;
    }

    LODWORD(a4) = a2[1];
    v18 = exp(*&a4 * -6.28318531 / 4294967300.0 + 3.14159265);
    v19 = atan((v18 + -1.0 / v18) * 0.5);
    HIDWORD(v20) = 1078765020;
    v21 = *(v15 + 40);
    *(v15 + 40) = v21 | 1;
    LODWORD(v20) = *a2;
    *(v15 + 40) = v21 | 3;
    *(v15 + 48) = v19 * 57.2957795;
    *(v15 + 56) = v20 * 360.0 / 4294967300.0 + -180.0;
  }
}

void sub_F24388(uint64_t a1, unint64_t *a2)
{
  v3 = sub_93E04C(a1, *a2, 0, "system");
  v4 = (v3 - *v3);
  if (*v4 >= 5u && v4[2])
  {
    v5 = sub_2C939C(a1, 1u, 0);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = sub_2C939C(a1, 1u, 0);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  v6 = &v5[-*v5];
  if (*v6 < 0xDu || (v7 = *(v6 + 6)) == 0)
  {
LABEL_15:
    exception = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v8 = &v5[v7 + *&v5[v7]];
  v9 = &v8[-*v8];
  if (*v9 >= 0xBu)
  {
    v10 = *(v9 + 5);
    if (v10)
    {
      if (v8[v10])
      {

        nullsub_1();
      }
    }
  }
}

uint64_t *sub_F244B0(void *a1, void *a2, void *a3)
{
  v3 = *a2;
  v4 = __ROR8__(*a2, 32);
  v5 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) >> 33));
  v6 = v5 ^ (v5 >> 33);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_31;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5 ^ (v5 >> 33);
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
LABEL_31:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v11[1];
      if (v14 == v6)
      {
        if (*(v11 + 4) == v3 && *(v11 + 5) == HIDWORD(v3))
        {
          return v11;
        }
      }

      else if ((v14 & (*&v7 - 1)) != v9)
      {
        goto LABEL_31;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_31;
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
      goto LABEL_31;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_31;
    }
  }

  if (*(v11 + 4) != v3 || *(v11 + 5) != HIDWORD(v3))
  {
    goto LABEL_12;
  }

  return v11;
}

void sub_F24828()
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
  xmmword_27BF508 = 0u;
  unk_27BF518 = 0u;
  dword_27BF528 = 1065353216;
  sub_3A9A34(&xmmword_27BF508, v0, v0);
  sub_3A9A34(&xmmword_27BF508, v3, v3);
  sub_3A9A34(&xmmword_27BF508, __p, __p);
  sub_3A9A34(&xmmword_27BF508, v9, v9);
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
    qword_27BF4E0 = 0;
    qword_27BF4E8 = 0;
    qword_27BF4D8 = 0;
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

void sub_F24A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BF4F0)
  {
    qword_27BF4F8 = qword_27BF4F0;
    operator delete(qword_27BF4F0);
  }

  _Unwind_Resume(exception_object);
}

void sub_F24B1C(uint64_t result)
{
  *(result + 40) |= 0x200000u;
  i = *(result + 544);
  if (!i)
  {
    v2 = result;
    v3 = *(result + 8);
    v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
    if (v3)
    {
      v4 = *v4;
    }

    i = sub_14362B4(v4);
    result = v2;
    *(v2 + 544) = i;
  }

  v5 = *(result + 368);
  v6 = (v5 + 8);
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(result + 360);
  if (v7)
  {
    v49 = &v6[v7];
    v50 = i;
    do
    {
      v51 = v6;
      v8 = *v6;
      v9 = *(*v6 + 88);
      if (v9)
      {
        v10 = (v9 + 8);
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v8 + 80);
      if (v11)
      {
        v52 = &v10[v11];
        do
        {
          v12 = *v10;
          v13 = *(*v10 + 48);
          if (v13)
          {
            v14 = v13 + 8;
          }

          else
          {
            v14 = 0;
          }

          v15 = *(v12 + 40);
          if (v15)
          {
            v16 = v14 + 8 * v15;
            do
            {
              v17 = *(*v14 + 16);
              if (v17)
              {
                v18 = *(*v14 + 24);
                v19 = *(v12 + 16);
                v20 = 4 * v17;
                do
                {
                  while (1)
                  {
                    v21 = *v18;
                    if (v19 == *(v12 + 20))
                    {
                      break;
                    }

                    *(*(v12 + 24) + 4 * v19++) = v21;
                    *(v12 + 16) = v19;
                    ++v18;
                    v20 -= 4;
                    if (!v20)
                    {
                      goto LABEL_21;
                    }
                  }

                  sub_1958E5C((v12 + 16), v19 + 1);
                  *(*(v12 + 24) + 4 * v19++) = v21;
                  *(v12 + 16) = v19;
                  ++v18;
                  v20 -= 4;
                }

                while (v20);
              }

LABEL_21:
              v14 += 8;
            }

            while (v14 != v16);
          }

          ++v10;
        }

        while (v10 != v52);
      }

      v22 = *(*(v8 + 128) + 8);
      for (i = v50; v22; v22 = *(*(v8 + 128) + 8 * *(v23 + 156) + 8))
      {
        v23 = *(*(v8 + 152) + 8 * *(*(v22 + 56) + 4 * *(v22 + 68)) + 8);
        v24 = *(v23 + 48);
        if (v24)
        {
          v25 = *(v23 + 56);
          v26 = 4 * v24;
          do
          {
            v29 = *v25;
            v30 = *(v8 + 64);
            if (v30 && (v31 = *(v8 + 56), v31 < *v30))
            {
              *(v8 + 56) = v31 + 1;
              v28 = *&v30[2 * v31 + 2];
            }

            else
            {
              v27 = sub_1436258(*(v8 + 48));
              v28 = sub_19593CC(v8 + 48, v27);
            }

            sub_14312CC(v28, *(*(v50 + 344) + 8 * v29 + 8));
            ++v25;
            v26 -= 4;
          }

          while (v26);
        }

        if ((*(v23 + 40) & 4) == 0)
        {
          break;
        }
      }

      v32 = *(v8 + 144);
      if (v32 >= 1)
      {
        v33 = (*(v8 + 152) + 8);
        do
        {
          v34 = *v33++;
          sub_14201A8(v34);
          --v32;
        }

        while (v32);
        *(v8 + 144) = 0;
      }

      v35 = *(v8 + 120);
      if (v35 >= 1)
      {
        v36 = (*(v8 + 128) + 8);
        do
        {
          v37 = *v36++;
          sub_141F96C(v37);
          --v35;
        }

        while (v35);
        *(v8 + 120) = 0;
      }

      v38 = *(v8 + 64);
      if (v38)
      {
        v39 = (v38 + 8);
      }

      else
      {
        v39 = 0;
      }

      v40 = *(v8 + 56);
      if (v40)
      {
        v41 = 0;
        v42 = 8 * v40;
        do
        {
          v43 = *v39;
          v44 = *(*v39 + 280);
          if (v44 == 8)
          {
            if (v41 && (*(v43 + 42) & 8) != 0)
            {
              v45 = *(v43 + 316);
              *(v41 + 40) |= 0x80000u;
              *(v41 + 316) = v45;
            }
          }

          else if (v44 != 6)
          {
            v41 = *v39;
            if (v44 != 5)
            {
              v41 = 0;
            }
          }

          ++v39;
          v42 -= 8;
        }

        while (v42);
      }

      v6 = v51 + 1;
    }

    while (v51 + 1 != v49);
  }

  v46 = *(i + 336);
  if (v46 >= 1)
  {
    v47 = (*(i + 344) + 8);
    do
    {
      v48 = *v47++;
      sub_142E37C(v48);
      --v46;
    }

    while (v46);
    *(i + 336) = 0;
  }
}

void sub_F24E68(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  sub_143ACEC(a3, 0, 0);
  *(a3 + 40) |= 0x20u;
  *(a3 + 112) = 0;
  sub_F256DC(a2[1], (a2 + 2), a3);
  v6 = *a2;
  *(a3 + 40) |= 0x10u;
  v7 = *(a3 + 104);
  if (!v7)
  {
    v8 = *(a3 + 8);
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v9 = *v9;
    }

    v7 = sub_1436310(v9);
    *(a3 + 104) = v7;
  }

  sub_F22DD4(v6 + 3, v7);
  v10 = *a2;
  v11 = **a2;
  for (i = v10[1]; v11 != i; v11 += 1064)
  {
    v13 = *(a3 + 64);
    if (v13 && (v14 = *(a3 + 56), v14 < *v13))
    {
      *(a3 + 56) = v14 + 1;
      v15 = *&v13[2 * v14 + 2];
    }

    else
    {
      v16 = sub_143C118(*(a3 + 48));
      v15 = sub_19593CC(a3 + 48, v16);
    }

    sub_F24F9C(a1, v11, v15);
  }
}

void sub_F24F9C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a3 + 40);
  *(a3 + 112) = v6;
  *(a3 + 40) = v7 | 5;
  v8 = *(a3 + 96);
  if (!v8)
  {
    v9 = *(a3 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v8 = sub_143BFD8(v10);
    *(a3 + 96) = v8;
  }

  *(v8 + 10) |= 1u;
  v11 = v8[1];
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
  if (v11)
  {
    v12 = *v12;
  }

  sub_194EA1C(v8 + 6, (a2 + 8), v12);
  *(v8 + 10) |= 2u;
  v13 = v8[1];
  v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
  if (v13)
  {
    sub_194EA1C(v8 + 7, (a2 + 32), *v14);
    if (sub_4D1F6C((a2 + 56)))
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_194EA1C(v8 + 7, (a2 + 32), v14);
    if (sub_4D1F6C((a2 + 56)))
    {
LABEL_12:
      if (sub_4D1F6C((a2 + 216)) && sub_4D1F6C((a2 + 376)) && sub_4D1F6C((a2 + 536)) && sub_4D1F6C((a2 + 696)) && sub_4D1F6C((a2 + 856)))
      {
        goto LABEL_22;
      }
    }
  }

  *(a3 + 40) |= 2u;
  v15 = *(a3 + 104);
  if (!v15)
  {
    v16 = *(a3 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v15 = sub_1435454(v17);
    *(a3 + 104) = v15;
  }

  sub_F21D70((a2 + 56), v15);
LABEL_22:
  v18 = *(a2 + 1016);
  v19 = *(a2 + 1024);
  while (v18 != v19)
  {
    v22 = *(a3 + 64);
    if (v22 && (v23 = *(a3 + 56), v23 < *v22))
    {
      *(a3 + 56) = v23 + 1;
      v21 = *&v22[2 * v23 + 2];
    }

    else
    {
      v20 = sub_143C0BC(*(a3 + 48));
      v21 = sub_19593CC(a3 + 48, v20);
    }

    sub_F251E0(a1, v18, v21);
    v18 += 2128;
  }

  v24 = *(a2 + 1040);
  v25 = *(a2 + 1048);
  while (v24 != v25)
  {
    v28 = *(a3 + 88);
    if (v28 && (v29 = *(a3 + 80), v29 < *v28))
    {
      *(a3 + 80) = v29 + 1;
      v27 = *&v28[2 * v29 + 2];
    }

    else
    {
      v26 = sub_143C034(*(a3 + 72));
      v27 = sub_19593CC(a3 + 72, v26);
    }

    sub_F22CE0(v24, v27);
    v24 += 43;
  }
}

void sub_F251E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_F1E134(a2, &__p);
  *(a3 + 40) |= 1u;
  v6 = *(a3 + 8);
  v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if (v6)
  {
    v7 = *v7;
  }

  sub_194EA30((a3 + 48), &__p, v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 880) != *(a2 + 888))
  {
    v8 = sub_3AFC64(*a1);
    *(a3 + 40) |= 4u;
    v9 = *(a3 + 64);
    if (!v9)
    {
      v10 = v8;
      v11 = *(a3 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v9 = sub_1435E00(v12);
      *(a3 + 64) = v9;
      v8 = v10;
    }

    sub_F22924(v8, (a2 + 880), v9);
  }

  if (sub_9C1704((a2 + 32)))
  {
    *(a3 + 40) |= 2u;
    v13 = *(a3 + 56);
    if (!v13)
    {
      v14 = *(a3 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_14BB45C(v15);
      *(a3 + 56) = v13;
    }

    sub_F223CC(a2 + 32, v13);
  }

  if ((vmaxv_u16(vmovn_s32(vceqq_s32(*(a2 + 904), xmmword_22A74C0))) & 1) == 0 && *(a2 + 920) != -1)
  {
    v16 = sub_3AFC64(*a1);
    *(a3 + 40) |= 8u;
    v17 = *(a3 + 72);
    if (!v17)
    {
      v18 = v16;
      v19 = *(a3 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v17 = sub_1435F28(v20);
      *(a3 + 72) = v17;
      v16 = v18;
    }

    sub_F229F4(v16, a2 + 904, v17);
  }

  if (*(a2 + 928) != *(a2 + 936))
  {
    *(a3 + 40) |= 0x10u;
    v21 = *(a3 + 80);
    if (!v21)
    {
      v22 = *(a3 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_143613C(v23);
      *(a3 + 80) = v21;
    }

    sub_F238E8((a2 + 928), v21);
  }
}

void sub_F253CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F253E8()
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
  xmmword_27BF560 = 0u;
  *algn_27BF570 = 0u;
  dword_27BF580 = 1065353216;
  sub_3A9A34(&xmmword_27BF560, v0, v0);
  sub_3A9A34(&xmmword_27BF560, v3, v3);
  sub_3A9A34(&xmmword_27BF560, __p, __p);
  sub_3A9A34(&xmmword_27BF560, v9, v9);
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
    qword_27BF538 = 0;
    qword_27BF540 = 0;
    qword_27BF530 = 0;
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

void sub_F25630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BF548)
  {
    qword_27BF550 = qword_27BF548;
    operator delete(qword_27BF548);
  }

  _Unwind_Resume(exception_object);
}

void sub_F256DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3AFEE8(a1);
  v7 = sub_2C939C(v6, 1u, 0);
  if (!v7 || (v8 = &v7[-*v7], *v8 < 0xDu) || (v9 = *(v8 + 6)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v30 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v10 = &v7[v9 + *&v7[v9]];
  v11 = &v10[-*v10];
  if (*v11 >= 5u && (v12 = *(v11 + 2)) != 0)
  {
    v13 = &v10[v12];
    v14 = *v13;
    v15 = *&v13[v14];
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = *&v13[v14];
    if (v15)
    {
      memcpy(__dst, &v13[v14 + 4], v15);
    }

    v16 = (__dst + v15);
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = 0;
    v16 = __dst;
  }

  v16->__r_.__value_.__s.__data_[0] = 0;
  *(a3 + 40) |= 2u;
  v17 = *(a3 + 8);
  v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
  if (v17)
  {
    v18 = *v18;
  }

  sub_194EA30((a3 + 80), __dst, v18);
  if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst[0].__r_.__value_.__l.__data_);
  }

  v19 = sub_3B6890(a1);
  *(a3 + 40) |= 8u;
  v20 = *(a3 + 96);
  if (!v20)
  {
    v21 = v19;
    v22 = *(a3 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v20 = sub_14BD794(v23);
    *(a3 + 96) = v20;
    v19 = v21;
  }

  sub_EC8164(v19, __dst);
  sub_1491894(v20, __dst);
  sub_14913C4(__dst);
  v24 = *(a2 + 23);
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 8);
  }

  if (v24)
  {
    *(a3 + 40) |= 1u;
    v25 = *(a3 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    sub_194EA1C((a3 + 72), a2, v26);
  }

  else
  {
    sub_58568(v31);
    sub_585EC(v31, __dst);
    *(a3 + 40) |= 1u;
    v27 = *(a3 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    sub_194EA30((a3 + 72), __dst, v28);
    if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst[0].__r_.__value_.__l.__data_);
    }
  }
}

void sub_F25968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F2599C()
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
  xmmword_27BF588 = 0u;
  unk_27BF598 = 0u;
  dword_27BF5A8 = 1065353216;
  sub_3A9A34(&xmmword_27BF588, v0, v0);
  sub_3A9A34(&xmmword_27BF588, v3, v3);
  sub_3A9A34(&xmmword_27BF588, __p, __p);
  sub_3A9A34(&xmmword_27BF588, v9, v9);
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

void sub_F25B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27BF588);
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

void sub_F25BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = sub_3AF6B4(a2);
  v5 = sub_3B23FC(a2);
  v6 = v5[1];
  *(a1 + 96) = *v5;
  *(a1 + 104) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 112), v5 + 2, 0xF18uLL);
  v7 = v5[485];
  *(a1 + 3976) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = sub_3B2794(a2);
  v9 = v8[1];
  *(a1 + 3984) = *v8;
  *(a1 + 3992) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 4000), v8 + 2, 0xF18uLL);
  v10 = v8[485];
  *(a1 + 7864) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 7872) = v8[486];
  v11 = v8[487];
  *(a1 + 7880) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 7888), v8 + 488, 0xF10uLL);
  operator new();
}

void sub_F25E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_528AB4(v17 + v19);
  sub_F25F04((v17 + 3984));
  sub_3A0ED4(v17 + 96);
  sub_5EC8BC(v18);
  v21 = *(v17 + 24);
  if (v21)
  {
    *(v17 + 32) = v21;
    operator delete(v21);
    v22 = *v17;
    if (!*v17)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v22 = *v17;
    if (!*v17)
    {
      goto LABEL_3;
    }
  }

  *(v17 + 8) = v22;
  operator delete(v22);
  _Unwind_Resume(a1);
}

void *sub_F25F04(void *result)
{
  v1 = result[487];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = result[485];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    result = v4;
  }

  v5 = result[1];
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

uint64_t sub_F26020(uint64_t a1)
{
  sub_528AB4(a1 + 11976);
  v2 = *(a1 + 7880);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 7864);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 3992);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 3976);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 104);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    do
    {
      v12 = *v7;
      v13 = v7[4];
      if (v13)
      {
        v7[5] = v13;
        operator delete(v13);
      }

      operator delete(v7);
      v7 = v12;
    }

    while (v12);
  }

  v8 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    *(a1 + 32) = v9;
    operator delete(v9);
  }

  v10 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v10;
    operator delete(v10);
  }

  return a1;
}

void sub_F26224(uint64_t *a1, char **a2)
{
  memset(v29, 0, 24);
  v5 = a1[1] - *a1;
  if (v5)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v5 >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v6 = *a1;
  v7 = a1[1];
  for (i = v29; v6 != v7; v6 += 24)
  {
    v8 = *(v6 + 8);
    v9.i64[0] = v8;
    v9.i64[1] = HIDWORD(v8);
    *v25 = vcvtq_f64_u64(v9);
    sub_3AB74(&i, v25);
  }

  v28 = 1;
  i = 0;
  v27 = 0uLL;
  v10 = a2[1] - *a2;
  if (v10)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v10 >> 2)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    v13 = v27;
    do
    {
      v14.i64[0] = *v11;
      v14.i64[1] = HIDWORD(*v11);
      v15 = vcvtq_f64_u64(v14);
      if (v13 < *(&v27 + 1))
      {
        *v13++ = v15;
      }

      else
      {
        v16 = i;
        v17 = v13 - i;
        v18 = (v13 - i) >> 4;
        v19 = v18 + 1;
        if ((v18 + 1) >> 60)
        {
          sub_1794();
        }

        v20 = *(&v27 + 1) - i;
        if ((*(&v27 + 1) - i) >> 3 > v19)
        {
          v19 = v20 >> 3;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF0)
        {
          v21 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          if (!(v21 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v22 = (v13 - i) >> 4;
        v23 = (16 * v18);
        v24 = (16 * v18 - 16 * v22);
        *v23 = v15;
        v13 = v23 + 1;
        memcpy(v24, v16, v17);
        i = v24;
        v27 = v13;
        if (v16)
        {
          operator delete(v16);
        }
      }

      *&v27 = v13;
      v11 = (v11 + 12);
    }

    while (v11 != v12);
  }

  sub_3C188(v25, v29, &i, 1);
}

void sub_F26B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v23 = *(v21 - 112);
  if (v23)
  {
    *(v21 - 104) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_F26BF0(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 24 * a2;
}

void sub_F26D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_F27EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_F27F68(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 4)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, (a1[1] - *a1) >> 4);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 16 * a2;
}

void sub_F28084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_F28164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = sub_3AF6B4(a2);
  v5 = sub_3B23FC(a2);
  v6 = v5[1];
  *(a1 + 96) = *v5;
  *(a1 + 104) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 112), v5 + 2, 0xF18uLL);
  v7 = v5[485];
  *(a1 + 3976) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = sub_3B2794(a2);
  v9 = v8[1];
  *(a1 + 3984) = *v8;
  *(a1 + 3992) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 4000), v8 + 2, 0xF18uLL);
  v10 = v8[485];
  *(a1 + 7864) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 7872) = v8[486];
  v11 = v8[487];
  *(a1 + 7880) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 7888), v8 + 488, 0xF10uLL);
  operator new();
}

void sub_F283E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_528AB4(v17 + v19);
  sub_F25F04((v17 + 3984));
  sub_3A0ED4(v17 + 96);
  sub_5EC8BC(v18);
  v21 = *(v17 + 24);
  if (v21)
  {
    *(v17 + 32) = v21;
    operator delete(v21);
    v22 = *v17;
    if (!*v17)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v22 = *v17;
    if (!*v17)
    {
      goto LABEL_3;
    }
  }

  *(v17 + 8) = v22;
  operator delete(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_F28488(uint64_t a1, void *a2)
{
  if (*a1 == *(a1 + 8))
  {
    v4 = a2;
    v59 = sub_F28978(a1, a2);
    v58 = sub_4D1DC0(v4);
    if (v58)
    {
      v5 = 0;
      v57 = v4;
      do
      {
        v6 = sub_4D1F50(v4, v5);
        sub_2B7A20(*(a1 + 88), *(v6 + 32) & 0xFFFFFFFFFFFFFFLL, v61);
        sub_31BF20(v61, &__dst);
        if (__p)
        {
          v63 = __p;
          operator delete(__p);
        }

        if (!v5)
        {
          v7 = sub_4A7FF4(&__dst, 0, -1 - 0x5555555555555555 * ((v65 - __dst) >> 2), *v59 + 2, 1, 0x7FFFFFFFFFFFFFFFLL, 1);
          v8 = __dst;
          if (v7)
          {
            v9 = __dst + 12 * v7;
            v10 = v65 - v9;
            if (v65 != v9)
            {
              memmove(__dst, v9, v65 - v9);
            }

            v65 = v8 + v10;
            v8 = __dst;
          }

          v11 = *(v8 + 3);
          v12.i64[0] = *v8;
          v12.i64[1] = HIDWORD(*v8);
          v13 = vcvtq_f64_u64(v12);
          v12.i64[0] = v11;
          v12.i64[1] = HIDWORD(v11);
          v14 = vsubq_f64(vcvtq_f64_u64(v12), v13);
          v15 = vmulq_f64(v14, v14);
          v16 = vaddvq_f64(v15);
          if (v16 == 0.0)
          {
            goto LABEL_17;
          }

          if (v16 <= 0.0)
          {
            v16 = -v16;
          }

          if (v16 < 2.22044605e-16)
          {
LABEL_17:
            v17 = 0.0;
          }

          else
          {
            v54 = *(*v59 + 1);
            v55.i64[0] = v54;
            v55.i64[1] = HIDWORD(v54);
            v56 = vmulq_f64(v14, vsubq_f64(vcvtq_f64_u64(v55), v13));
            *&v17 = *&vdivq_f64(vaddq_f64(v56, vdupq_laneq_s64(v56, 1)), vaddq_f64(v15, vdupq_laneq_s64(v15, 1)));
          }

          if (v17 <= 1.0)
          {
            v18 = v17;
          }

          else
          {
            v18 = 1.0;
          }

          if (v17 >= 0.0)
          {
            v19 = v18;
          }

          else
          {
            v19 = 0.0;
          }

          v20 = sub_6EFC0(v8, v8 + 3, v19);
          v21 = __dst;
          *__dst = v20;
          v21[2] = v22;
        }

        if (v5 + 1 == sub_4D1DC0(v4))
        {
          v23 = sub_4A7FF4(&__dst, 0, -1 - 0x5555555555555555 * ((v65 - __dst) >> 2), v59[1] - 4, 1, 0x7FFFFFFFFFFFFFFFLL, 1);
          if (__dst + 12 * v23 + 24 != v65)
          {
            v65 = __dst + 12 * v23 + 24;
          }

          v24 = (__dst + 12 * v23);
          v25 = *(v24 + 3);
          v26.i64[0] = *v24;
          v26.i64[1] = HIDWORD(*v24);
          v27 = vcvtq_f64_u64(v26);
          v26.i64[0] = v25;
          v26.i64[1] = HIDWORD(v25);
          v28 = vsubq_f64(vcvtq_f64_u64(v26), v27);
          v29 = vmulq_f64(v28, v28);
          v30 = vaddvq_f64(v29);
          if (v30 == 0.0)
          {
            goto LABEL_32;
          }

          if (v30 <= 0.0)
          {
            v30 = -v30;
          }

          if (v30 < 2.22044605e-16)
          {
LABEL_32:
            v31 = 0.0;
          }

          else
          {
            v51 = *(v59[1] - 2);
            v52.i64[0] = v51;
            v52.i64[1] = HIDWORD(v51);
            v53 = vmulq_f64(v28, vsubq_f64(vcvtq_f64_u64(v52), v27));
            *&v31 = *&vdivq_f64(vaddq_f64(v53, vdupq_laneq_s64(v53, 1)), vaddq_f64(v29, vdupq_laneq_s64(v29, 1)));
          }

          if (v31 <= 1.0)
          {
            v32 = v31;
          }

          else
          {
            v32 = 1.0;
          }

          if (v31 >= 0.0)
          {
            v33 = v32;
          }

          else
          {
            v33 = 0.0;
          }

          v34 = sub_6EFC0(v24, v24 + 3, v33);
          v35 = __dst + 12 * v23 + 12;
          *v35 = v34;
          *(v35 + 2) = v36;
        }

        v60 = v5 + 1;
        v38 = __dst;
        v37 = v65;
        if (__dst != v65)
        {
          v39 = *(a1 + 8);
          do
          {
            v41 = *(a1 + 16);
            if (v39 < v41)
            {
              *v39 = v5;
              v40 = *v38;
              *(v39 + 16) = *(v38 + 2);
              *(v39 + 8) = v40;
              v39 += 24;
            }

            else
            {
              v42 = *a1;
              v43 = 0xAAAAAAAAAAAAAAABLL * ((v39 - *a1) >> 3);
              v44 = v43 + 1;
              if (v43 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_1794();
              }

              v45 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v42) >> 3);
              if (2 * v45 > v44)
              {
                v44 = 2 * v45;
              }

              if (v45 >= 0x555555555555555)
              {
                v46 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v46 = v44;
              }

              if (v46)
              {
                if (v46 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_1808();
              }

              v47 = v39;
              v48 = 8 * ((v39 - *a1) >> 3);
              *v48 = v5;
              v49 = *v38;
              *(v48 + 16) = *(v38 + 2);
              *(v48 + 8) = v49;
              v39 = 24 * v43 + 24;
              v50 = 24 * v43 - (v47 - v42);
              memcpy((v48 - (v47 - v42)), v42, v47 - v42);
              *a1 = v50;
              *(a1 + 8) = v39;
              *(a1 + 16) = 0;
              if (v42)
              {
                operator delete(v42);
              }
            }

            *(a1 + 8) = v39;
            v38 += 12;
          }

          while (v38 != v37);
          v38 = __dst;
          v4 = v57;
        }

        if (v38)
        {
          v65 = v38;
          operator delete(v38);
        }

        ++v5;
      }

      while (v60 != v58);
    }
  }

  return a1;
}

void sub_F2892C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    v21 = a1;
    operator delete(__p);
    a1 = v21;
  }

  _Unwind_Resume(a1);
}

void **sub_F28978(void *a1, void *a2)
{
  v21 = (a1 + 3);
  if (a1[3] == a1[4])
  {
    v19 = sub_4D1DC0(a2);
    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        sub_69D1C4(a2, i, __p);
        sub_7495D4(__p, a1[11], &v23);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v6 = v23;
        v5 = v24;
        if (v23 != v24)
        {
          v7 = a1[4];
          do
          {
            while (1)
            {
              v9 = a1[5];
              if (v7 >= v9)
              {
                break;
              }

              *v7 = i;
              v8 = *v6;
              *(v7 + 16) = v6[2];
              *(v7 + 8) = v8;
              v7 += 24;
              a1[4] = v7;
              v6 += 3;
              if (v6 == v5)
              {
                goto LABEL_24;
              }
            }

            v10 = *v21;
            v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v21) >> 3);
            v12 = v11 + 1;
            if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
            if (2 * v13 > v12)
            {
              v12 = 2 * v13;
            }

            if (v13 >= 0x555555555555555)
            {
              v14 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v14 = v12;
            }

            if (v14)
            {
              if (v14 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1808();
            }

            v15 = v7;
            v16 = 8 * ((v7 - *v21) >> 3);
            *v16 = i;
            v17 = *v6;
            *(v16 + 16) = v6[2];
            *(v16 + 8) = v17;
            v7 = 24 * v11 + 24;
            v18 = 24 * v11 - (v15 - v10);
            memcpy((v16 - (v15 - v10)), v10, v15 - v10);
            a1[3] = v18;
            a1[4] = v7;
            a1[5] = 0;
            if (v10)
            {
              operator delete(v10);
            }

            a1[4] = v7;
            v6 += 3;
          }

          while (v6 != v5);
LABEL_24:
          v6 = v23;
        }

        if (v6)
        {
          v24 = v6;
          operator delete(v6);
        }
      }
    }
  }

  return v21;
}

void sub_F28B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F28BD0(uint64_t a1, void *a2)
{
  sub_685C24(0, 1.0);
  sub_685C24(1, 1.0);
  sub_685C24(2, 1.0);
  sub_685C24(3, 1.0);
  sub_685C24(4, 1.0);
  operator new();
}

void sub_F29860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61)
{
  v63 = *(v61 - 184);
  if (v63)
  {
    *(v61 - 176) = v63;
    operator delete(v63);
  }

  _Unwind_Resume(exception_object);
}

void sub_F29A88(void *a1, void *a2)
{
  v4 = sub_F28488(a1, a2);
  memset(v55, 0, sizeof(v55));
  v44 = a2;
  v5 = sub_4D1DC0(a2);
  if (v5)
  {
    sub_F3205C(v55, v5);
  }

  v6 = sub_F28978(a1, a2);
  v7 = v6[1];
  v8 = *v6 + 24;
  if (*v6 != v7 && v8 != v7)
  {
    do
    {
      v39 = *(v8 - 24);
      if (v39 != *v8)
      {
        v40 = v55[0] + 24 * v39;
        v41 = *(v8 - 16);
        *(v40 + 20) = *(v8 - 8);
        *(v40 + 12) = v41;
        v42 = *(v8 + 8);
        v43 = v55[0] + 24 * *v8;
        *(v43 + 8) = *(v8 + 16);
        *v43 = v42;
      }

      v8 += 24;
    }

    while (v8 != v7);
  }

  v52 = 0;
  v53 = 0;
  v54 = 0;
  *v49 = 0u;
  *v50 = 0u;
  v51 = 1065353216;
  v10 = sub_F28978(a1, a2);
  v11 = v10[1];
  if (*v10 != v11)
  {
    v12 = (*v10 + 8);
    do
    {
      v16 = v52;
      v15 = v53;
      if (v52 == v53 || *(v53 - 12) != *v12 || *(v53 - 8) != v12[1])
      {
        if (v53 >= v54)
        {
          v19 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v52) >> 2);
          v20 = v19 + 1;
          if (v19 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v54 - v52) >> 2) > v20)
          {
            v20 = 0x5555555555555556 * ((v54 - v52) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v54 - v52) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v21 = 0x1555555555555555;
          }

          else
          {
            v21 = v20;
          }

          if (v21)
          {
            if (v21 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v22 = 4 * ((v53 - v52) >> 2);
          v23 = *v12;
          *(v22 + 8) = v12[2];
          *v22 = v23;
          v18 = 12 * v19 + 12;
          v24 = (12 * v19 - (v15 - v16));
          memcpy((v22 - (v15 - v16)), v16, v15 - v16);
          v52 = v24;
          v53 = v18;
          v54 = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          v17 = *v12;
          *(v53 + 8) = v12[2];
          *v15 = v17;
          v18 = (v15 + 12);
        }

        v53 = v18;
      }

      v25 = *(v12 - 1);
      v26 = (v55[0] + 24 * v25);
      if (!v25 || (v27 = v26[1], v28 = v12[1], v29 = exp(((v28 >> 1) + (v27 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265), v30 = atan((v29 - 1.0 / v29) * 0.5), v31 = cos(v30 * 57.2957795 / 180.0 * 3.14159265), v32 = *v26 - *v12, sqrt(((v27 - v28) * (v27 - v28) + v32 * v32)) / 100.0 * 100.0 * (v31 * 0.00932288077) >= 1.0))
      {
        if (v25 + 1 >= sub_4D1DC0(v44) || (v33 = v12[1], v34 = v26[4], v35 = exp(((v34 >> 1) + (v33 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265), v36 = atan((v35 - 1.0 / v35) * 0.5), v37 = cos(v36 * 57.2957795 / 180.0 * 3.14159265), v38 = *v12 - v26[3], sqrt(((v33 - v34) * (v33 - v34) + v38 * v38)) / 100.0 * 100.0 * (v37 * 0.00932288077) >= 1.0))
        {
          v13 = *(v12 - 1);
          v45[0] = v12;
          sub_F3354C(v49, v12, &unk_229EB70, v45)[4] = v13;
        }
      }

      v14 = v12 + 4;
      v12 += 6;
    }

    while (v14 != v11);
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  sub_F26224(v4, &v52);
}

void sub_F2A3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (__p)
  {
    operator delete(__p);
  }

  sub_39AFC(&a21);
  if (a26)
  {
    a27 = a26;
    operator delete(a26);
    sub_11BD8(va);
    v30 = *(v28 - 192);
    if (!v30)
    {
LABEL_5:
      v31 = *(v28 - 168);
      if (!v31)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_11BD8(va);
    v30 = *(v28 - 192);
    if (!v30)
    {
      goto LABEL_5;
    }
  }

  *(v28 - 184) = v30;
  operator delete(v30);
  v31 = *(v28 - 168);
  if (!v31)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_9:
  *(v28 - 160) = v31;
  operator delete(v31);
  _Unwind_Resume(a1);
}

void sub_F2A53C(void *a1, void *a2)
{
  sub_685C24(0, 1.0);
  sub_685C24(1, 1.0);
  sub_685C24(2, 1.0);
  sub_685C24(3, 1.0);
  sub_685C24(4, 1.0);
  operator new();
}

void sub_F2AC20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_F2ACC0(void *a1, void *a2)
{
  *v209 = 0u;
  *v210 = 0u;
  v211 = 1065353216;
  *v206 = 0u;
  *v207 = 0u;
  v208 = 1065353216;
  v189 = sub_4D1DC0(a2);
  if (v189)
  {
    v2 = 0;
    while (1)
    {
      v192 = v2;
      v3 = sub_4D1F50(a2, v2);
      v4 = *(v3 + 32);
      LODWORD(v194) = v4;
      BYTE6(v194) = BYTE6(v4);
      WORD2(v194) = WORD2(v4);
      if (sub_4727F8(v206, &v194))
      {
        break;
      }

      LODWORD(v213) = v194;
      WORD2(v213) = WORD2(v194);
      BYTE6(v213) = (v194 & 0xFF000000000000) == 0;
      if (sub_4727F8(v206, &v213))
      {
        break;
      }

LABEL_132:
      sub_30D080(v206, &v194, &v194);
      v2 = v192 + 1;
      if (v192 + 1 == v189)
      {
        goto LABEL_133;
      }
    }

    sub_2B7A20(a1[11], *(v3 + 32) & 0xFFFFFFFFFFFFFFLL, &v203);
    sub_31C60C(&v203, &v213);
    v5 = *__p;
    if (v205)
    {
      if (*__p == *&__p[8])
      {
        v6 = 0;
      }

      else
      {
        v6 = -1;
      }

      v193 = v6;
      LODWORD(v7) = v6;
      v8 = v221;
      if (v220 != v6)
      {
        goto LABEL_16;
      }

LABEL_15:
      if (v8 == v193)
      {
        goto LABEL_130;
      }

      goto LABEL_16;
    }

    if (*__p == *&__p[8])
    {
      v193 = 0;
      LODWORD(v7) = 0;
      v8 = v221;
      if (!v220)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = *(*&__p[8] - 8);
      v10 = sub_2B4D24(v203, v9, 0);
      v11 = &v10[*&v10[-*v10 + 4]];
      v12 = &v11[4 * HIDWORD(v9) + *v11];
      v13 = (v12 + 4 + *(v12 + 4));
      v5 = *__p;
      v7 = (*&__p[8] - *__p) >> 3;
      v14 = (v13 + *(v13 - *v13 + 6));
      v193 = *(v14 + *v14);
      v8 = v221;
      if (v220 == v7)
      {
        goto LABEL_15;
      }
    }

LABEL_16:
    v15 = v216;
    while (1)
    {
      while (1)
      {
        v16 = &v15[v8];
        v17 = *(v16 + 2);
        v18 = *(v16 + 3);
        v19 = sub_57A90(v218);
        v20 = v218 & ~(-1 << (v19 & 0xFE));
        v21 = sub_581D8(v20);
        v22 = sub_581D8(v20 >> 1);
        v23 = 1 << -(v19 >> 1);
        if (v19 < 2)
        {
          v23 = -2;
        }

        LODWORD(v24) = v22 * v23 + 4 * v18;
        v24 = v24 >= 0xFFFFFFFE ? 4294967294 : v24;
        v201 = (v21 * v23 + 4 * v17) | (v24 << 32);
        *v202 = 0x7FFFFFFF;
        sub_C2DBE8(v209, &v201, &v201);
        v25 = v221;
        if (!v222)
        {
          break;
        }

        v8 = --v221;
        v15 = v216;
        if ((v25 - 1) >= *v216)
        {
          v28 = *v214;
          v36 = v214[1] - *v214;
          v30 = --v220;
          if (v220 < (v36 >> 3))
          {
            goto LABEL_40;
          }

          goto LABEL_17;
        }

        v26 = &v216[v25 + 1];
        v27 = &v216[v8 + 1];
        if (*v26 == *v27 && v26[1] == v27[1])
        {
          v28 = *v214;
          v29 = v214[1] - *v214;
          if (*v216 != 2 || v29 != 8)
          {
            v8 = v25 - 2;
            v30 = --v220;
            v221 = v8;
            if (v220 < (v29 >> 3))
            {
              while (1)
              {
LABEL_40:
                v37 = *(v28 + 8 * v30);
                v218 = v37;
                v38 = v213;
                LODWORD(v195) = v37;
                v212 = 0;
                v197 = &v212;
                *v198 = &v195;
                v39 = *(v213 + 3856) + 1;
                *(v213 + 3856) = v39;
                if (!*v38)
                {
                  exception = __cxa_allocate_exception(0x40uLL);
                  v199 = sub_7FCF0(1u);
                  *v200 = v169;
                  sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v199, &v201);
                  if (v202[15] >= 0)
                  {
                    v170 = &v201;
                  }

                  else
                  {
                    v170 = v201;
                  }

                  if (v202[15] >= 0)
                  {
                    v171 = v202[15];
                  }

                  else
                  {
                    v171 = *v202;
                  }

                  v172 = sub_2D390(exception, v170, v171);
                }

                if (*(v38 + 112) == v37)
                {
                  ++*(v38 + 3864);
                  *(v38 + 120) = v39;
                  v40 = *(v38 + 128);
                  if (!v40)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_63;
                }

                v41 = v38 + 136;
                if (*(v38 + 136) == v37)
                {
                  goto LABEL_45;
                }

                if (*(v38 + 160) == v37)
                {
                  break;
                }

                v41 = v38 + 184;
                if (*(v38 + 184) == v37)
                {
LABEL_45:
                  ++*(v38 + 3864);
                  *(v41 + 8) = v39;
                  v40 = *(v41 + 16);
                  if (!v40)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_63;
                }

                v42 = *(v38 + 168);
                v43 = *(v38 + 144);
                v44 = *(v38 + 120);
                v45 = *(v38 + 192);
                v40 = sub_2D52A4(*v38, 1, v37, 1);
                if (v44 >= v39)
                {
                  v46 = v39;
                }

                else
                {
                  v46 = v44;
                }

                v47 = v43 >= v46;
                if (v43 < v46)
                {
                  v46 = v43;
                }

                v48 = 4 * (v44 < v39);
                if (!v47)
                {
                  v48 = 5;
                }

                if (v42 < v46)
                {
                  v48 = 6;
                  v46 = v42;
                }

                if (v45 < v46)
                {
                  v48 = 7;
                }

                v49 = v38 + 16 + 24 * v48;
                *v49 = v195;
                *(v49 + 8) = *(v38 + 3856);
                *(v49 + 16) = v40;
                if (v40)
                {
                  goto LABEL_63;
                }

                sub_2B572C(&v197);
                v50 = 0;
                v51 = (&loc_1120530 + 1);
                if (*(&loc_1120530 + 1) < 7u)
                {
LABEL_69:
                  v219 = 0;
                  v53 = (v50 - *v50);
                  if (*v53 < 5u)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_70;
                }

LABEL_64:
                v52 = v51[3];
                if (v52)
                {
                  LODWORD(v52) = *(v50 + v52);
                }

                v219 = v52;
                v53 = (v50 - *v50);
                if (*v53 < 5u)
                {
LABEL_72:
                  v55 = 0;
                  goto LABEL_73;
                }

LABEL_70:
                v54 = v53[2];
                if (!v54)
                {
                  goto LABEL_72;
                }

                v55 = v50 + v54 + *(v50 + v54);
LABEL_73:
                v56 = &v55[4 * HIDWORD(v37) + 4 + *&v55[4 * HIDWORD(v37) + 4]];
                v215 = v56;
                v57 = &v56[-*v56];
                v58 = *v57;
                v15 = *(v57 + 3);
                if (*(v57 + 3))
                {
                  v15 = (v15 + v56 + *(v15 + v56));
                }

                v216 = v15;
                if (v58 >= 0xB && (v59 = *(v57 + 5)) != 0)
                {
                  v60 = &v56[v59 + *&v56[v59]];
                }

                else
                {
                  v60 = 0;
                }

                v217 = v60;
                v61 = *v15;
                v8 = *v15 - 2;
                v221 = v8;
                v62 = &v15[v61 - 1 + 1];
                v63 = &v15[v8 + 1];
                if (*v62 == *v63 && v62[1] == v63[1])
                {
                  v8 = v61 - 3;
                  v30 = --v220;
                  v221 = v8;
                  v28 = *v214;
                  if (v220 < ((v214[1] - *v214) >> 3))
                  {
                    continue;
                  }
                }

                goto LABEL_17;
              }

              ++*(v38 + 3864);
              *(v38 + 168) = v39;
              v40 = *(v38 + 176);
              if (!v40)
              {
LABEL_234:
                v173 = __cxa_allocate_exception(0x40uLL);
                v199 = sub_7FCF0(1u);
                *v200 = v174;
                sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v199, &v201);
                if (v202[15] >= 0)
                {
                  v175 = &v201;
                }

                else
                {
                  v175 = v201;
                }

                if (v202[15] >= 0)
                {
                  v176 = v202[15];
                }

                else
                {
                  v176 = *v202;
                }

                v177 = sub_2D390(v173, v175, v176);
              }

LABEL_63:
              v50 = (v40 + *v40);
              v51 = (v50 - *v50);
              if (*v51 < 7u)
              {
                goto LABEL_69;
              }

              goto LABEL_64;
            }
          }
        }

LABEL_17:
        if (v220 == v7)
        {
LABEL_18:
          if (v8 == v193)
          {
            v5 = *__p;
LABEL_130:
            if (v5)
            {
              *&__p[8] = v5;
              operator delete(v5);
            }

            goto LABEL_132;
          }
        }
      }

      v8 = ++v221;
      v15 = v216;
      if ((v25 + 1) >= *v216)
      {
        v33 = *v214;
        v64 = v214[1] - *v214;
        v35 = ++v220;
        if (v220 < (v64 >> 3))
        {
          goto LABEL_84;
        }

        goto LABEL_17;
      }

      v31 = &v216[v25 + 1];
      v32 = &v216[v8 + 1];
      if (*v31 != *v32)
      {
        goto LABEL_17;
      }

      if (v31[1] != v32[1])
      {
        goto LABEL_17;
      }

      v33 = *v214;
      v34 = v214[1] - *v214;
      if (*v216 == 2 && v34 == 8)
      {
        goto LABEL_17;
      }

      v8 = v25 + 2;
      v35 = ++v220;
      v221 = v8;
      if (v220 >= (v34 >> 3))
      {
        goto LABEL_17;
      }

      while (1)
      {
LABEL_84:
        v65 = *(v33 + 8 * v35);
        v218 = v65;
        v66 = v213;
        LODWORD(v195) = v65;
        v212 = 0;
        v197 = &v212;
        *v198 = &v195;
        v67 = *(v213 + 3856) + 1;
        *(v213 + 3856) = v67;
        if (!*v66)
        {
          v178 = __cxa_allocate_exception(0x40uLL);
          v199 = sub_7FCF0(1u);
          *v200 = v179;
          sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v199, &v201);
          if (v202[15] >= 0)
          {
            v180 = &v201;
          }

          else
          {
            v180 = v201;
          }

          if (v202[15] >= 0)
          {
            v181 = v202[15];
          }

          else
          {
            v181 = *v202;
          }

          v182 = sub_2D390(v178, v180, v181);
        }

        if (*(v66 + 112) == v65)
        {
          ++*(v66 + 3864);
          *(v66 + 120) = v67;
          v68 = *(v66 + 128);
          if (!v68)
          {
            goto LABEL_248;
          }

          goto LABEL_107;
        }

        v69 = v66 + 136;
        if (*(v66 + 136) == v65)
        {
          goto LABEL_89;
        }

        if (*(v66 + 160) == v65)
        {
          ++*(v66 + 3864);
          *(v66 + 168) = v67;
          v68 = *(v66 + 176);
          if (!v68)
          {
LABEL_248:
            v183 = __cxa_allocate_exception(0x40uLL);
            v199 = sub_7FCF0(1u);
            *v200 = v184;
            sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v199, &v201);
            if (v202[15] >= 0)
            {
              v185 = &v201;
            }

            else
            {
              v185 = v201;
            }

            if (v202[15] >= 0)
            {
              v186 = v202[15];
            }

            else
            {
              v186 = *v202;
            }

            v187 = sub_2D390(v183, v185, v186);
          }

LABEL_107:
          v78 = (v68 + *v68);
          v79 = (v78 - *v78);
          if (*v79 < 7u)
          {
            goto LABEL_113;
          }

          goto LABEL_108;
        }

        v69 = v66 + 184;
        if (*(v66 + 184) == v65)
        {
LABEL_89:
          ++*(v66 + 3864);
          *(v69 + 8) = v67;
          v68 = *(v69 + 16);
          if (!v68)
          {
            goto LABEL_248;
          }

          goto LABEL_107;
        }

        v70 = *(v66 + 168);
        v71 = *(v66 + 144);
        v72 = *(v66 + 120);
        v73 = *(v66 + 192);
        v68 = sub_2D52A4(*v66, 1, v65, 1);
        if (v72 >= v67)
        {
          v74 = v67;
        }

        else
        {
          v74 = v72;
        }

        v75 = v71 >= v74;
        if (v71 < v74)
        {
          v74 = v71;
        }

        v76 = 4 * (v72 < v67);
        if (!v75)
        {
          v76 = 5;
        }

        if (v70 < v74)
        {
          v76 = 6;
          v74 = v70;
        }

        if (v73 < v74)
        {
          v76 = 7;
        }

        v77 = v66 + 16 + 24 * v76;
        *v77 = v195;
        *(v77 + 8) = *(v66 + 3856);
        *(v77 + 16) = v68;
        if (v68)
        {
          goto LABEL_107;
        }

        sub_2B572C(&v197);
        v78 = 0;
        v79 = (&loc_1120530 + 1);
        if (*(&loc_1120530 + 1) < 7u)
        {
LABEL_113:
          v219 = 0;
          v81 = (v78 - *v78);
          if (*v81 < 5u)
          {
            goto LABEL_116;
          }

          goto LABEL_114;
        }

LABEL_108:
        v80 = v79[3];
        if (v80)
        {
          LODWORD(v80) = *(v78 + v80);
        }

        v219 = v80;
        v81 = (v78 - *v78);
        if (*v81 < 5u)
        {
          goto LABEL_116;
        }

LABEL_114:
        v82 = v81[2];
        if (v82)
        {
          v83 = v78 + v82 + *(v78 + v82);
          goto LABEL_117;
        }

LABEL_116:
        v83 = 0;
LABEL_117:
        v84 = &v83[4 * HIDWORD(v65) + 4 + *&v83[4 * HIDWORD(v65) + 4]];
        v215 = v84;
        v85 = &v84[-*v84];
        v86 = *v85;
        v15 = *(v85 + 3);
        if (*(v85 + 3))
        {
          v15 = (v15 + v84 + *(v15 + v84));
        }

        v216 = v15;
        if (v86 >= 0xB && (v87 = *(v85 + 5)) != 0)
        {
          v88 = &v84[v87 + *&v84[v87]];
        }

        else
        {
          v88 = 0;
        }

        v217 = v88;
        v8 = 1;
        v221 = 1;
        if (*(v15 + 2) != *(v15 + 4))
        {
          goto LABEL_17;
        }

        if (*(v15 + 3) != *(v15 + 5))
        {
          break;
        }

        v8 = 2;
        v35 = ++v220;
        v221 = 2;
        v33 = *v214;
        if (v220 >= ((v214[1] - *v214) >> 3))
        {
          goto LABEL_17;
        }
      }

      v8 = 1;
      if (v220 == v7)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_133:
  v89 = sub_F28978(a1, a2);
  v90 = *v89;
  v91 = v89[1];
  v203 = v90;
  __p[4] = 0;
  __p[16] = 0;
  if (v90 != v91)
  {
    v92 = 0.5;
    while (1)
    {
      v93 = (v90 + 24);
      v201 = v90 + 24;
      *&v202[4] = *&__p[4];
      v94 = a1[1469] / 100.0;
      v199 = (v90 + 24);
      *&v200[4] = *&__p[4];
      if (v94 > 0.0 && v91 != v93)
      {
        break;
      }

LABEL_136:
      v90 += 24;
      v203 = v90;
      if (v90 == v91)
      {
        goto LABEL_218;
      }
    }

    v96 = 0.0;
    while (1)
    {
      v197 = (v93 + 24);
      *&v198[4] = *&v200[4];
      if (v91 != v93 + 24)
      {
        break;
      }

LABEL_143:
      v93 += 24;
      v199 = v93;
      if (v96 >= v94 || v93 == v91)
      {
        v90 = v203;
        goto LABEL_136;
      }
    }

    v98 = *(v93 + 1);
    v99 = *(v93 + 4);
    v100 = v200[16];
    *&v200[4] = v98;
    *&v200[12] = v99;
    if ((v200[16] & 1) == 0)
    {
      v100 = 1;
      v200[16] = 1;
    }

    v101 = *(v93 + 4);
    v102 = *(v93 + 10);
    v103 = v198[16];
    *&v198[4] = v101;
    *&v198[12] = v102;
    if ((v198[16] & 1) == 0)
    {
      v103 = 1;
      v198[16] = 1;
    }

    v104 = exp(((v101 >> 33) + (v98 >> 33)) * -6.28318531 / 4294967300.0 + 3.14159265);
    v105 = atan((v104 + -1.0 / v104) * v92);
    v106 = cos(v105 * 57.2957795 / 180.0 * 3.14159265);
    v195 = -1;
    v196 = 0x7FFFFFFF;
    v107 = *(v203 + 16);
    *&__p[4] = *(v203 + 8);
    *&__p[12] = v107;
    if ((__p[16] & 1) == 0)
    {
      __p[16] = 1;
    }

    v108 = *(v201 + 16);
    *&v202[4] = *(v201 + 8);
    *&v202[12] = v108;
    if (v202[16])
    {
      v109 = *(v93 + 4);
      *&v200[4] = *(v93 + 1);
      *&v200[12] = v109;
      if (v100)
      {
        goto LABEL_156;
      }
    }

    else
    {
      v202[16] = 1;
      v148 = *(v93 + 4);
      *&v200[4] = *(v93 + 1);
      *&v200[12] = v148;
      if (v100)
      {
LABEL_156:
        v110 = *(v93 + 10);
        *&v198[4] = *(v93 + 4);
        *&v198[12] = v110;
        if (v103)
        {
          goto LABEL_158;
        }

        goto LABEL_157;
      }
    }

    v200[16] = 1;
    v149 = *(v93 + 10);
    *&v198[4] = *(v93 + 4);
    *&v198[12] = v149;
    if (v103)
    {
LABEL_158:
      if (sub_3B988(&__p[4], &v202[4], &v200[4], &v198[4], &v195))
      {
        v111 = *(v203 + 8);
        v112 = *(v203 + 16);
        *&__p[4] = v111;
        *&__p[12] = v112;
        if ((__p[16] & 1) == 0)
        {
          __p[16] = 1;
        }

        if (v195 != v111)
        {
          v113 = *(v201 + 8);
          v114 = *(v201 + 16);
          *&v202[4] = v113;
          *&v202[12] = v114;
          if ((v202[16] & 1) == 0)
          {
            v202[16] = 1;
          }

          if (v195 != v113)
          {
            v115 = *(v199 + 1);
            v116 = *(v199 + 4);
            *&v200[4] = v115;
            *&v200[12] = v116;
            if ((v200[16] & 1) == 0)
            {
              v200[16] = 1;
            }

            if (v195 != v115)
            {
              v117 = *(v197 + 1);
              v118 = v197[4];
              *&v198[4] = v117;
              *&v198[12] = v118;
              if ((v198[16] & 1) == 0)
              {
                v198[16] = 1;
              }

              if (v195 != v117)
              {
                v119 = HIDWORD(v195) >= 0xFFFFFFFE ? 4294967294 : HIDWORD(v195);
                v213 = v195 | (v119 << 32);
                LODWORD(v214) = 0x7FFFFFFF;
                if (!sub_48240(v209, &v213))
                {
                  v120 = *(v203 + 16);
                  v121 = __p[16];
                  *&__p[4] = *(v203 + 8);
                  *&__p[12] = v120;
                  if ((__p[16] & 1) == 0)
                  {
                    v121 = 1;
                    __p[16] = 1;
                  }

                  v122 = v201;
                  v123 = v202[16];
                  if (v120 == 0x7FFFFFFF)
                  {
                    goto LABEL_187;
                  }

                  v124 = *(v201 + 16);
                  *&v202[4] = *(v201 + 8);
                  *&v202[12] = v124;
                  if ((v202[16] & 1) == 0)
                  {
                    v123 = 1;
                    v202[16] = 1;
                  }

                  if (v124 == 0x7FFFFFFF)
                  {
                    goto LABEL_187;
                  }

                  v125 = *(v199 + 4);
                  v126 = v200[16];
                  *&v200[4] = *(v199 + 1);
                  *&v200[12] = v125;
                  if ((v200[16] & 1) == 0)
                  {
                    v126 = 1;
                    v200[16] = 1;
                  }

                  if (v125 == 0x7FFFFFFF)
                  {
                    goto LABEL_187;
                  }

                  v127 = v197[4];
                  v128 = v198[16];
                  *&v198[4] = *(v197 + 1);
                  *&v198[12] = v127;
                  if ((v198[16] & 1) == 0)
                  {
                    v128 = 1;
                    v198[16] = 1;
                  }

                  if (v127 == 0x7FFFFFFF)
                  {
LABEL_187:
                    v129 = *(v201 + 8);
                    v130 = *(v201 + 16);
                    *&v202[4] = v129;
                    *&v202[12] = v130;
                    if ((v123 & 1) == 0)
                    {
                      v202[16] = 1;
                    }

LABEL_189:
                    v131 = HIDWORD(v195);
                    v188 = HIDWORD(v195) >> 1;
                    v132 = exp(((HIDWORD(v195) >> 1) + (v129 >> 33)) * -6.28318531 / 4294967300.0 + 3.14159265);
                    v133 = atan((v132 + -1.0 / v132) * 0.5);
                    v134 = cos(v133 * 57.2957795 / 180.0 * 3.14159265);
                    v135 = sqrt(((v131 - HIDWORD(v129)) * (v131 - HIDWORD(v129)) + (v195 - v129) * (v195 - v129))) / 100.0 * 100.0 * (v134 * 0.00932288077) + 0.0;
                    v136 = v199;
                    if (v199 != v122)
                    {
                      do
                      {
                        v137 = *(v122 + 8);
                        v138 = HIDWORD(v137);
                        v139 = v137;
                        v140 = (v122 + 24);
                        v141 = *(v122 + 32);
                        v142 = exp(((v141 >> 33) + (v137 >> 33)) * -6.28318531 / 4294967300.0 + 3.14159265);
                        v143 = atan((v142 + -1.0 / v142) * 0.5);
                        v135 = v135 + sqrt(((v138 - HIDWORD(v141)) * (v138 - HIDWORD(v141)) + (v139 - v141) * (v139 - v141))) / 100.0 * 100.0 * (cos(v143 * 57.2957795 / 180.0 * 3.14159265) * 0.00932288077);
                        v122 = v140;
                      }

                      while (v140 != v136);
                    }

                    v144 = *(v136 + 1);
                    v145 = *(v136 + 4);
                    *&v200[4] = v144;
                    *&v200[12] = v145;
                    if ((v200[16] & 1) == 0)
                    {
                      v200[16] = 1;
                    }

                    v146 = exp((v188 + (v144 >> 33)) * -6.28318531 / 4294967300.0 + 3.14159265);
                    v147 = atan((v146 - 1.0 / v146) * 0.5);
                    cos(v147 * 57.2957795 / 180.0 * 3.14159265);
                    sub_685C24(4, 1.0);
                    sub_685C24(0, 0.0);
                    v213 = 0;
                    v214 = 0;
                    v215 = 0;
                    operator new();
                  }

                  v150 = *(v203 + 16);
                  *&__p[4] = *(v203 + 8);
                  *&__p[12] = v150;
                  if ((v121 & 1) == 0)
                  {
                    __p[16] = 1;
                  }

                  v151 = *(v201 + 16);
                  *&v202[4] = *(v201 + 8);
                  *&v202[12] = v151;
                  if ((v123 & 1) == 0)
                  {
                    v202[16] = 1;
                  }

                  v152 = v150 / 100.0;
                  v153 = v151 / 100.0;
                  if (v152 >= v153)
                  {
                    v154 = v151 / 100.0;
                  }

                  else
                  {
                    v154 = v150 / 100.0;
                  }

                  v155 = *(v199 + 4);
                  if (v152 < v153)
                  {
                    v152 = v151 / 100.0;
                  }

                  *&v200[4] = *(v199 + 1);
                  *&v200[12] = v155;
                  if ((v126 & 1) == 0)
                  {
                    v200[16] = 1;
                  }

                  v156 = v197[4];
                  *&v198[4] = *(v197 + 1);
                  *&v198[12] = v156;
                  if ((v128 & 1) == 0)
                  {
                    v198[16] = 1;
                  }

                  v157 = v155 / 100.0;
                  v158 = v156 / 100.0;
                  if (v157 >= v158)
                  {
                    v159 = v156 / 100.0;
                  }

                  else
                  {
                    v159 = v155 / 100.0;
                  }

                  if (v157 < v158)
                  {
                    v157 = v156 / 100.0;
                  }

                  v160 = a1[1470] / 100.0;
                  if (v152 + v160 >= v159 && v160 + v157 >= v154)
                  {
                    v129 = *(v201 + 8);
                    v161 = *(v201 + 16);
                    *&v202[4] = v129;
                    *&v202[12] = v161;
                    goto LABEL_189;
                  }
                }
              }
            }
          }
        }
      }

      v96 = v96 + sqrt(((HIDWORD(v98) - HIDWORD(v101)) * (HIDWORD(v98) - HIDWORD(v101)) + (v98 - v101) * (v98 - v101))) / 100.0 * 100.0 * (v106 * 0.00932288077);
      v93 = v199;
      v92 = 0.5;
      goto LABEL_143;
    }

LABEL_157:
    v198[16] = 1;
    goto LABEL_158;
  }

LABEL_218:
  v162 = v207[0];
  if (v207[0])
  {
    do
    {
      v163 = *v162;
      operator delete(v162);
      v162 = v163;
    }

    while (v163);
  }

  v164 = v206[0];
  v206[0] = 0;
  if (v164)
  {
    operator delete(v164);
  }

  v165 = v210[0];
  if (v210[0])
  {
    do
    {
      v166 = *v165;
      operator delete(v165);
      v165 = v166;
    }

    while (v166);
  }

  v167 = v209[0];
  v209[0] = 0;
  if (v167)
  {
    operator delete(v167);
  }
}

void sub_F2C2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  sub_11BD8(&a48);
  sub_11BD8(&a54);
  _Unwind_Resume(a1);
}

void sub_F2C3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  __cxa_free_exception(v51);
  if (a41)
  {
    operator delete(a41);
  }

  sub_11BD8(&a45);
  sub_11BD8(&a51);
  _Unwind_Resume(a1);
}

void sub_F2C3F8(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v34 = 0x7FFFFFFF;
  v7 = -1;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  v38 = -1;
  for (i = sub_4D1DC0(a2); v2 < i; i = sub_4D1DC0(a2))
  {
    sub_69CB14(a2);
    v12 = *v11;
    v36 = v2;
    if ((v7 != -1 || v38 != -1) && (v7 != *v12 || v38 != *(v12 + 1) || v34 != *(v12 + 2)))
    {
      v40 = *v12;
      v42 = *(v12 + 2);
      v39 = v8;
      v13 = v4 - v3;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
      v15 = v14 + 1;
      if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      if (0x5555555555555556 * (-v3 >> 3) > v15)
      {
        v15 = 0x5555555555555556 * (-v3 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v3 >> 3) >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        if (v16 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1808();
      }

      v17 = v11;
      v18 = 24 * v14;
      *v18 = v7;
      *(v18 + 4) = v38;
      *(v18 + 8) = v34;
      *(v18 + 12) = v40;
      *(v18 + 20) = v42;
      v4 = 24 * v14 + 24;
      v19 = v18 - v13;
      memcpy((v18 - v13), v3, v13);
      if (v3)
      {
        operator delete(v3);
      }

      v3 = v19;
      v11 = v17;
      v8 = v39;
      v12 = *v17;
    }

    v20 = v11[1];
    v38 = *(v20 - 2);
    v34 = *(v20 - 1);
    v35 = *(v20 - 3);
    if (v12 != v20)
    {
      for (j = v12 + 12; j != v20; j += 12)
      {
        if (*(j - 12) != *j || *(j - 8) != *(j + 4) || *(j - 4) != *(j + 8))
        {
          *&v41[8] = *(j - 4);
          *v41 = *(j - 12);
          *&v41[12] = *j;
          *&v41[20] = *(j + 8);
          v22 = v8;
          v23 = v4 - v3;
          v24 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
          v25 = v24 + 1;
          if (v24 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          if (0x5555555555555556 * (-v3 >> 3) > v25)
          {
            v25 = 0x5555555555555556 * (-v3 >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v3 >> 3) >= 0x555555555555555)
          {
            v26 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v26 = v25;
          }

          if (v26)
          {
            if (v26 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v27 = 24 * v24;
          *v27 = *v41;
          *(v27 + 16) = *&v41[16];
          v4 = 24 * v24 + 24;
          v28 = (v27 + 24 * (v23 / -24));
          memcpy(v28, v3, v23);
          if (v3)
          {
            operator delete(v3);
          }

          v3 = v28;
          v8 = v22;
        }
      }
    }

    v29 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
    if (v5 + 1 > v29)
    {
      v30 = v5 + 1;
    }

    else
    {
      v30 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
    }

    if (v5 + 1 >= v29)
    {
      v10 = v6;
    }

    else
    {
      v31 = (v3 + 24 * v5 + 24);
      do
      {
        v32 = *(v31 - 5) - *(v31 - 2);
        if (sqrt(((*(v31 - 6) - *(v31 - 3)) * (*(v31 - 6) - *(v31 - 3)) + v32 * v32)) / 100.0 <= 1.0)
        {
          v10 = v6;
        }

        else
        {
          v33 = v31[1] - v31[4];
          if (sqrt(((*v31 - v31[3]) * (*v31 - v31[3]) + v33 * v33)) / 100.0 > 1.0)
          {
            operator new();
          }

          v10 = v6;
        }

        ++v5;
        v31 += 6;
        v6 = v10;
      }

      while (v30 - 1 != v5);
    }

    v2 = v36 + 1;
    v6 = v10;
    v7 = v35;
  }

  if (v3)
  {
    operator delete(v3);
  }
}

void sub_F2CC1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (v29)
  {
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_F2CCAC(uint64_t a1, void *a2)
{
  v2 = a2;
  *v62 = -1;
  v62[2] = 0x7FFFFFFF;
  result = sub_4D1DC0(a2);
  if (result >= 1)
  {
    v5 = 0;
    v51 = -1;
    v50 = a1;
    do
    {
      v6 = sub_4D1F50(v2, v5);
      v7 = v6;
      v8 = *v6;
      v9 = (*v6 - **v6);
      v10 = *v9;
      if (v10 < 0x9B || !v9[77] || (*(v8 + v9[77] + 3) & 4) == 0)
      {
        v11 = v6[1];
        if (!v11 || (v12 = (v11 - *v11), *v12 < 0x11u) || (v13 = v12[8]) == 0 || (*(v11 + v13) & 4) == 0)
        {
          if (v10 < 0x9B || (v14 = v9[77]) == 0 || (*(v8 + v14 + 2) & 1) == 0)
          {
            v57 = sub_3116D0(v6);
            if ((sub_420B0C((a1 + 13552), &v57) & 1) == 0)
            {
              sub_69CB14(v2);
              v16 = v15;
              sub_2B7A20(*(a1 + 88), v7[4] & 0xFFFFFFFFFFFFFFLL, &v57);
              sub_31BF20(&v57, &v60);
              if (__p)
              {
                v59 = __p;
                operator delete(__p);
              }

              v17 = v16[1] - *v16;
              if (v17)
              {
                v18 = 0;
                v19 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 2);
                do
                {
                  if (v18 >= 0xAAAAAAAAAAAAAAABLL * ((v61 - v60) >> 2))
                  {
                    break;
                  }

                  if (v51 == -1 || (v62[0] == -1 ? (v20 = v62[1] == -1) : (v20 = 0), v20))
                  {
                    v51 = *sub_41224(v16, v18);
                    v38 = sub_41224(&v60, v18);
                    v39 = *v38;
                    v62[2] = *(v38 + 8);
                    *v62 = v39;
                  }

                  else
                  {
                    v21 = sub_41224(v16, v18);
                    v22 = *v21;
                    v56 = *(v21 + 8);
                    v55 = v22;
                    v23 = sub_41224(&v60, v18);
                    v24 = *v23;
                    v54 = *(v23 + 8);
                    v53 = v24;
                    if (sqrt(((v51 - v55) * (v51 - v55) + (HIDWORD(v51) - HIDWORD(v55)) * (HIDWORD(v51) - HIDWORD(v55)))) / 100.0 >= *(a1 + 11896) / 100.0)
                    {
                      v52[0] = -1;
                      LODWORD(v52[1]) = 0x7FFFFFFF;
                      v25.i64[0] = v62[0];
                      v25.i64[1] = v62[1];
                      v26 = vcvtq_f64_u64(v25);
                      v25.i64[0] = v53;
                      v25.i64[1] = HIDWORD(v53);
                      v27 = vsubq_f64(vcvtq_f64_u64(v25), v26);
                      v28 = vmulq_f64(v27, v27);
                      v29 = vaddvq_f64(v28);
                      if (v29 == 0.0)
                      {
                        goto LABEL_32;
                      }

                      if (v29 <= 0.0)
                      {
                        v29 = -v29;
                      }

                      if (v29 < 2.22044605e-16)
                      {
LABEL_32:
                        v30 = 0.0;
                      }

                      else
                      {
                        v48.i64[0] = v55;
                        v48.i64[1] = HIDWORD(v55);
                        v49 = vmulq_f64(vsubq_f64(vcvtq_f64_u64(v48), v26), v27);
                        *&v30 = *&vdivq_f64(vaddq_f64(v49, vdupq_laneq_s64(v49, 1)), vaddq_f64(v28, vdupq_laneq_s64(v28, 1)));
                      }

                      v31 = v2;
                      if (v30 <= 1.0)
                      {
                        v32 = v30;
                      }

                      else
                      {
                        v32 = 1.0;
                      }

                      if (v30 >= 0.0)
                      {
                        v33 = v32;
                      }

                      else
                      {
                        v33 = 0.0;
                      }

                      v52[0] = sub_6EFC0(v62, &v53, v33);
                      LODWORD(v52[1]) = v34;
                      sub_314EC(&v55, v52, v35);
                      v36 = v52[0];
                      v37 = v62[0];
                      if (v52[0] != *v62 || LODWORD(v52[1]) != v62[2])
                      {
                        if (v55 != v51 || (i = 0.0, HIDWORD(v51) != HIDWORD(v55)))
                        {
                          v41 = -(v51 - v55);
                          if (v55 - v51 < (v51 - v55))
                          {
                            v41 = (v55 - v51);
                          }

                            ;
                          }

                            ;
                          }
                        }

                        v42 = v36 - v37;
                        if (v36 == v37)
                        {
                          v43 = v62[1];
                          v44 = HIDWORD(v52[0]);
                          j = 0.0;
                          v2 = v31;
                          a1 = v50;
                          if (v62[1] == HIDWORD(v52[0]))
                          {
LABEL_61:
                            sub_455D0(i, j);
                            if (v47 > *(a1 + 11920))
                            {
                              __p = 0;
                              v59 = 0;
                              v57 = 0;
                              operator new();
                            }

                            v51 = v55;
                            *v62 = v52[0];
                            v62[2] = v52[1];
                            goto LABEL_20;
                          }
                        }

                        else
                        {
                          v44 = HIDWORD(v52[0]);
                          v43 = v62[1];
                          v2 = v31;
                          a1 = v50;
                        }

                        v46 = --v42;
                        if (v42 < -v42)
                        {
                          v46 = v42;
                        }

                          ;
                        }

                          ;
                        }

                        goto LABEL_61;
                      }

                      v2 = v31;
                      a1 = v50;
                    }
                  }

LABEL_20:
                  ++v18;
                }

                while (v18 != v19);
              }

              if (v60)
              {
                v61 = v60;
                operator delete(v60);
              }
            }
          }
        }
      }

      ++v5;
      result = sub_4D1DC0(v2);
    }

    while (v5 < result);
  }

  return result;
}

void sub_F2D2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  v29 = a1;
  if (a27)
  {
    operator delete(a27);
    v29 = a1;
  }

  _Unwind_Resume(v29);
}

void sub_F2D344(void *a1, void *a2)
{
  v3 = sub_F28488(a1, a2);
  memset(v12, 0, 24);
  v4 = v3[1];
  if (v4 != *v3)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - *v3) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = sub_F28978(a1, a2);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = v5[1];
  if (v6 != *v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = v12;
  sub_685C24(4, 0.0);
  sub_685C24(4, 1.0);
  memset(&v12[35], 0, 24);
  operator new();
}

void sub_F2DEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  v31 = *(v29 - 224);
  if (v31)
  {
    *(v29 - 216) = v31;
    operator delete(v31);
  }

  sub_252664(&a13, a14);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  if (a28)
  {
    a29 = a28;
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

BOOL sub_F2DFFC(unsigned int ***a1, unsigned int *a2)
{
  v2 = **a1;
  if (v2 == a2)
  {
    return 0;
  }

  v4 = (*a1)[1];
  if (v4 == a2)
  {
    return 0;
  }

  v5 = a2 + 6;
  v6 = 0.0;
  do
  {
    v7 = v5;
    if (v5 == v4)
    {
      break;
    }

    v9 = *(v5 - 4);
    v8 = *(v5 - 3);
    v10 = v5[3];
    v11 = exp(((v10 >> 1) + (v8 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
    v12 = atan((v11 + -1.0 / v11) * 0.5);
    v6 = v6 + sqrt(((v8 - v10) * (v8 - v10) + (v9 - v7[2]) * (v9 - v7[2]))) / 100.0 * 100.0 * (cos(v12 * 57.2957795 / 180.0 * 3.14159265) * 0.00932288077);
    v5 = v7 + 6;
  }

  while (v6 < 10.0);
  if (v6 < 10.0)
  {
    return 0;
  }

  v13 = a2 - 6;
  v14 = 0.0;
  do
  {
    v15 = v13[8];
    v16 = v13[9];
    v17 = v13[3];
    v18 = exp(((v17 >> 1) + (v16 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
    v19 = atan((v18 + -1.0 / v18) * 0.5);
    v20 = cos(v19 * 57.2957795 / 180.0 * 3.14159265);
    v21 = v13[2];
    v14 = v14 + sqrt(((v16 - v17) * (v16 - v17) + (v15 - v21) * (v15 - v21))) / 100.0 * 100.0 * (v20 * 0.00932288077);
    if (v13 == v2)
    {
      break;
    }

    v13 -= 6;
  }

  while (v14 < 10.0);
  if (v14 < 10.0)
  {
    return 0;
  }

  v23 = v7[3];
  v24 = exp(((v17 >> 1) + (v23 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
  v25 = atan((v24 + -1.0 / v24) * 0.5);
  return (v6 + v14) / (sqrt(((v17 - v23) * (v17 - v23) + (v21 - v7[2]) * (v21 - v7[2]))) / 100.0 * 100.0 * (cos(v25 * 57.2957795 / 180.0 * 3.14159265) * 0.00932288077)) < 1.1;
}

void sub_F2F3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F2F44C(void *a1, void *a2)
{
  sub_685C24(0, 1.0);
  sub_685C24(1, 1.0);
  sub_685C24(2, 1.0);
  sub_685C24(3, 1.0);
  sub_685C24(4, 1.0);
  operator new();
}

void sub_F2FD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (v23)
  {
    operator delete(v23);
    v24 = __p;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v24 = __p;
    if (!__p)
    {
LABEL_7:
      _Unwind_Resume(exception_object);
    }
  }

  operator delete(v24);
  goto LABEL_7;
}

void sub_F2FDF4(int8x8_t *a1, void *a2)
{
  sub_685C24(0, 1.0);
  sub_685C24(1, 1.0);
  sub_685C24(2, 1.0);
  sub_685C24(3, 1.0);
  sub_685C24(4, 1.0);
  operator new();
}

void sub_F30380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F303F0(void *a1, void *a2)
{
  sub_685C24(0, 1.0);
  sub_685C24(1, 1.0);
  sub_685C24(2, 1.0);
  sub_685C24(3, 1.0);
  sub_685C24(4, 1.0);
  operator new();
}

void sub_F3061C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F30650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = sub_3AF6B4(a2);
  v5 = sub_3B23FC(a2);
  v6 = v5[1];
  *(a1 + 96) = *v5;
  *(a1 + 104) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 112), v5 + 2, 0xF18uLL);
  v7 = v5[485];
  *(a1 + 3976) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = sub_3B2794(a2);
  v9 = v8[1];
  *(a1 + 3984) = *v8;
  *(a1 + 3992) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 4000), v8 + 2, 0xF18uLL);
  v10 = v8[485];
  *(a1 + 7864) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 7872) = v8[486];
  v11 = v8[487];
  *(a1 + 7880) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 7888), v8 + 488, 0xF10uLL);
  operator new();
}

void sub_F308D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_528AB4(v17 + v19);
  sub_F25F04((v17 + 3984));
  sub_3A0ED4(v17 + 96);
  sub_5EC8BC(v18);
  v21 = *(v17 + 24);
  if (v21)
  {
    *(v17 + 32) = v21;
    operator delete(v21);
    v22 = *v17;
    if (!*v17)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v22 = *v17;
    if (!*v17)
    {
      goto LABEL_3;
    }
  }

  *(v17 + 8) = v22;
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_F31A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F31AD0(int8x8_t *a1, uint64_t a2)
{
  v4 = a1 + 1468;
  if (a1[1468].i8[0] & 1) == 0 && a1[1673].i8[4] != 1 || *(a2 + 10120) != 1 || (*(a2 + 10121))
  {
    return;
  }

  if (a1[1468].i8[1] == 1)
  {
    sub_F2ACC0(a1, a2);
    if (v4[3].i8[1] != 1)
    {
LABEL_7:
      if (v4[3].i8[2] != 1)
      {
        goto LABEL_8;
      }

LABEL_18:
      sub_F2CCAC(a1, a2);
      if (v4[3].i8[5] != 1)
      {
        goto LABEL_9;
      }

LABEL_19:
      sub_F2D344(a1, a2);
    }
  }

  else if (a1[1471].i8[1] != 1)
  {
    goto LABEL_7;
  }

  sub_F2C3F8(a1, a2);
  if (v4[3].i8[2] == 1)
  {
    goto LABEL_18;
  }

LABEL_8:
  if (v4[3].i8[5] == 1)
  {
    goto LABEL_19;
  }

LABEL_9:
  if (v4[3].i8[0] == 1)
  {
    sub_F28BD0(a1, a2);
  }

  if (v4[4].i8[0] == 1)
  {
    if (sub_4D1DB8(a2) < *&a1[1475])
    {
      sub_F29A88(a1, a2);
    }

    sub_F2A53C(a1, a2);
  }

  if (v4[3].i8[4] == 1)
  {
    sub_F2F44C(a1, a2);
  }

  if (v4[3].i8[6] == 1)
  {
    sub_F2FDF4(a1, a2);
  }

  if (v4[3].i8[7] == 1)
  {
    sub_F303F0(a1, a2);
  }

  if (a1[9])
  {
    v5 = a1[8];
    if (v5)
    {
      do
      {
        v7 = *v5;
        v8 = v5[4];
        if (v8)
        {
          v5[5] = v8;
          operator delete(v8);
        }

        operator delete(v5);
        v5 = v7;
      }

      while (v7);
    }

    a1[8] = 0;
    v6 = a1[7];
    if (v6)
    {
      bzero(*&a1[6], 8 * *&v6);
    }

    a1[9] = 0;
  }

  a1[4] = a1[3];
  a1[1] = *a1;
}

void sub_F31D08(int8x8_t *a1)
{
  nullsub_1();
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    do
    {
      sub_F31AD0(a1, v3);
      v3 += 12656;
    }

    while (v3 != v4);
  }
}

uint64_t sub_F31D60(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 7772) != 1)
  {
    return 0;
  }

  v3 = sub_30C50C(a1 + 3896, a2, 1);
  if (!v3)
  {
    v8 = a2;
    v9 = HIDWORD(a2);
    exception = __cxa_allocate_exception(0x40uLL);
    v16[0] = v9;
    v16[1] = v8;
    sub_2FF494(v16, &v14);
    sub_23E08("Road access could not find quad node for ", &v14, &v15);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v15;
    }

    else
    {
      v11 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v13 = sub_2D390(exception, v11, size);
  }

  v4 = &v3[-*v3];
  if (*v4 >= 5u && (v5 = *(v4 + 2)) != 0)
  {
    v6 = &v3[v5 + *&v3[v5]];
  }

  else
  {
    v6 = 0;
  }

  return sub_F31F04(v6, a2);
}

void sub_F31EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F31F04(_DWORD *a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (!a1 || *a1 <= HIDWORD(a2))
  {
    v4 = a2;
    exception = __cxa_allocate_exception(0x40uLL);
    v12[0] = v2;
    v12[1] = v4;
    sub_2FF494(v12, &v9);
    sub_23E08("Flatbuffer vector requested index (object_index)", &v9, &v10);
    sub_30F54(&v11, " is out of range", &v10);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v11;
    }

    else
    {
      v6 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    v8 = sub_2D390(exception, v6, size);
  }

  return &a1[v2 + 1] + a1[v2 + 1];
}

void sub_F31FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_F3205C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = 24 * a2 - 24;
      if (v10 < 0x18)
      {
        goto LABEL_33;
      }

      v11 = v10 / 0x18 + 1;
      v12 = v3 + 24 * (v11 & 0x1FFFFFFFFFFFFFFELL);
      v13 = (v3 + 32);
      v14 = v11 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = xmmword_2266560;
        *(v13 - 1) = xmmword_2266550;
        *v13 = xmmword_2266540;
        v13 += 3;
        v14 -= 2;
      }

      while (v14);
      v3 = v12;
      if (v11 != (v11 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_33:
        do
        {
          *v3 = xmmword_2266560;
          *(v3 + 16) = -NAN;
          v3 += 24;
        }

        while (v3 != v9);
      }

      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
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

      sub_1808();
    }

    v15 = 24 * v5;
    v16 = 24 * v5 + 24 * a2;
    v17 = 24 * a2 - 24;
    v18 = 24 * v5;
    if (v17 < 0x18)
    {
      goto LABEL_34;
    }

    v19 = v17 / 0x18 + 1;
    v18 = v15 + 24 * (v19 & 0x1FFFFFFFFFFFFFFELL);
    v20 = (24 * v5 + 32);
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = xmmword_2266560;
      *(v20 - 1) = xmmword_2266550;
      *v20 = xmmword_2266540;
      v20 += 3;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_34:
      do
      {
        *v18 = xmmword_2266560;
        *(v18 + 16) = -NAN;
        v18 += 24;
      }

      while (v18 != v16);
    }

    v22 = *a1;
    v23 = *(a1 + 8) - *a1;
    v24 = v15 - v23;
    memcpy((v15 - v23), *a1, v23);
    *a1 = v24;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

uint64_t sub_F322DC(uint64_t a1, _DWORD *a2, _BYTE **a3)
{
  sub_58168(*a2 >> 17, a2[1] >> 17);
  v7 = v6 | 0x40000000;
  while (1)
  {
    v8 = v7;
    v9 = sub_F327BC(a1, v7, 1);
    if (v9)
    {
      v10 = &v9[-*v9];
      if (*v10 >= 5u)
      {
        if (*(v10 + 2))
        {
          v11 = sub_F327BC(a1, v8, 1);
          if (v11)
          {
            v12 = &v11[-*v11];
            if (*v12 >= 5u)
            {
              v13 = *(v12 + 2);
              if (v13)
              {
                v14 = &v11[v13 + *&v11[v13]];
                v15 = &v14[-*v14];
                if (*v15 >= 7u)
                {
                  v16 = *(v15 + 3);
                  if (v16)
                  {
                    if (*&v14[v16 + *&v14[v16]])
                    {
                      operator new();
                    }
                  }
                }
              }
            }
          }

          v17 = sub_F327BC(a1, v8, 1);
          if (v17 && (v18 = &v17[-*v17], *v18 >= 5u) && (v19 = *(v18 + 2)) != 0)
          {
            v20 = &v17[v19 + *&v17[v19]];
            v21 = &v20[-*v20];
            if (*v21 >= 9u)
            {
              v22 = *(v21 + 4);
              if (v22)
              {
                if (*&v20[v22 + *&v20[v22]])
                {
                  operator new();
                }
              }
            }

            __p = 0;
            v26 = 0;
            v27 = 0;
          }

          else
          {
            __p = 0;
            v26 = 0;
            v27 = 0;
          }

          v28[0] = a3;
          v28[1] = a1;
          v28[2] = a2;
          v23 = sub_F326B8(&__p, v28);
          if (__p)
          {
            v26 = __p;
            operator delete(__p);
          }

          if (v23)
          {
            break;
          }
        }
      }
    }

    v7 = v8 >> 2;
    if (v8 <= 3)
    {
      return 0;
    }
  }

  return 1;
}

void sub_F32658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F326B8(unint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  while (1)
  {
    v7 = *v2;
    v16 = *v2;
    v8 = *(v5 + 8);
    if ((**v5 & 1) != 0 || (v9 = sub_F32ABC(*(v5 + 8), v7), v10 = &v9[-*v9], *v10 < 0xDu) || (v11 = *(v10 + 6)) == 0 || !v9[v11])
    {
      if ((**(v5 + 16) & 1) != 0 || (v12 = sub_F32ABC(v8, v7), v13 = &v12[-*v12], *v13 < 9u) || (v14 = *(v13 + 4)) == 0 || !v12[v14])
      {
        if (sub_F32F74(v4, &v16, v6))
        {
          break;
        }
      }
    }

    if (++v2 == v3)
    {
      return 0;
    }
  }

  return 1;
}

char *sub_F327BC(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 2896) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2904) = v3;
    v4 = *(a1 + 2912);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2920) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2928) = v3;
    v4 = *(a1 + 2936);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2944) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2952) = v3;
    v4 = *(a1 + 2960);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2968) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2976) = v3;
    v4 = *(a1 + 2984);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 2952);
    v8 = *(a1 + 2928);
    v9 = *(a1 + 2904);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 2904);
    }

    v11 = 120;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 2928);
    }

    v13 = 121;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 2952);
    }

    v15 = *(a1 + 2976);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 122;
    }

    v18 = sub_2D52A4(*a1, 30, a2, 1);
    v19 = 123;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_F32990(v21);
  return 0;
}

uint64_t sub_F32990(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0x1Eu);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_F32A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_F32ABC(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  v4 = sub_F327BC(a1, a2, 1);
  if (!v4 || (v5 = &v4[-*v4], *v5 < 5u) || (v6 = *(v5 + 2)) == 0 || (v7 = &v4[v6 + *&v4[v6]], v8 = &v7[-*v7], *v8 < 5u) || (v9 = *(v8 + 2)) == 0 || (v10 = &v7[v9 + *&v7[v9]], *v10 <= v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v21 = v3;
    v22 = exception;
    v28[0] = v21;
    v28[1] = v2;
    sub_2FF494(v28, &v26);
    sub_23E08("Referenced polygon ", &v26, &v27);
    sub_30F54(&v29, " does not exist.", &v27);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v29;
    }

    else
    {
      v23 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    v25 = sub_2D390(v22, v23, size);
  }

  v11 = &v10[4 * v3 + 4 + *&v10[4 * v3 + 4]];
  v12 = &v11[-*v11];
  if (*v12 >= 9u && (v13 = *(v12 + 4)) != 0 && (v14 = &v11[v13 + *&v11[v13]], v17 = *v14, v16 = v14 + 1, v15 = v17, v29.__r_.__value_.__r.__words[0] = v16, v29.__r_.__value_.__l.__size_ = v17, v29.__r_.__value_.__r.__words[2] = 0xF424000000040, v30 = 257, v32 = 0, v33 = 0, v31 = 0, v17 >= 0xC) && (v18 = *v16, v18 >= 1) && v15 - 1 >= v18 && sub_F32D14((v16 + v18), &v29))
  {
    return v16 + *v16;
  }

  else
  {
    return 0;
  }
}

void sub_F32C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_F32D14(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = *&v4 - 4;
  if (*&v4 < 5uLL || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3].i8[0] & 1) != 0 || *&v4 - 2 < v12)
    {
      return 0;
    }
  }

  else if (*&v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (*&v4 <= v13 || *&v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  if (v16 >= 5)
  {
    v17 = v15[2];
    if (v15[2] && ((&v3[v17] & 7) != 0 && (a2[3].i8[0] & 1) != 0 || *&v4 < 9uLL || *&v4 - 8 < &v3[v17]))
    {
      return 0;
    }

    if (v16 >= 7)
    {
      v18 = v15[3];
      if (v15[3])
      {
        v19 = &v3[v18];
        if ((&v3[v18] & 3) != 0)
        {
          if (v5 < v19 || (a2[3].i8[0] & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v19)
        {
          return 0;
        }
      }

      if (v16 >= 9)
      {
        if (v15[4] && *&v4 - 1 < &v3[v15[4]])
        {
          return 0;
        }

        if (v16 >= 0xB)
        {
          v20 = v15[5];
          if (v15[5])
          {
            v21 = &v3[v20];
            if ((&v3[v20] & 3) != 0)
            {
              if (v5 < v21 || (a2[3].i8[0] & 1) != 0)
              {
                return 0;
              }
            }

            else if (v5 < v21)
            {
              return 0;
            }

            v22 = *&v21[v2];
            if (v22 < 1 || *&v4 - 1 < &v21[v22])
            {
              return 0;
            }

            v23 = (a1 + v20 + *(a1 + v20));
            v24 = v23 - v2;
            if (((v23 - v2) & 3) != 0)
            {
              if (v5 < v24 || (a2[3].i8[0] & 1) != 0)
              {
                return 0;
              }
            }

            else if (v5 < v24)
            {
              return 0;
            }

            v25 = *v23;
            if (v25 > 0x7FFFFFFE)
            {
              return 0;
            }

            v26 = v25 + 4;
            v27 = &v24[v25 + 4];
            if (*&v4 - 1 < v27 || *&v4 <= v26 || *&v4 - v26 < v24 || *(v2 + v27))
            {
              return 0;
            }
          }

          if (v16 < 0xD || !v15[6] || *&v4 - 1 >= &v3[v15[6]])
          {
            goto LABEL_59;
          }

          return 0;
        }
      }
    }
  }

LABEL_59:
  a2[5].i32[0] = v8.i32[0];
  return 1;
}

uint64_t sub_F32F74(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  v36[0] = sub_F33154(a1, *a2);
  v36[1] = v6;
  if (!sub_32A18(v36, a3))
  {
    return 0;
  }

  sub_F33368(a1, *a2, &__p);
  v10 = __p;
  v11 = v35;
  if (__p == v35)
  {
    v23 = 0;
    v24 = __p;
    if (!__p)
    {
      return v23;
    }
  }

  else
  {
    v12 = a3[1];
    LODWORD(v7) = *a3;
    v13 = v7;
    v14 = __p;
    while (1)
    {
      v15 = *v14;
      v16 = v14[1];
      if (*v14 != v16)
      {
        v17 = 0;
        do
        {
          v18 = v15[1];
          v19 = (*v15 + 12);
          if (*v15 != v18 && v19 != v18)
          {
            do
            {
              v21 = *(v19 - 2);
              v22 = v19[1];
              if (v21 < v12 != v22 < v12)
              {
                LODWORD(v8) = *v19;
                LODWORD(v9) = *(v19 - 3);
                v9 = *&v9;
                v8 = (v12 - v21) / (v22 - v21) * (*&v8 - v9) + v9;
                if (v8 < v13)
                {
                  v17 ^= 1u;
                }
              }

              v19 += 3;
            }

            while (v19 != v18);
          }

          v15 += 3;
        }

        while (v15 != v16);
        if (v17)
        {
          break;
        }
      }

      v14 += 3;
      if (v14 == v35)
      {
        v23 = 0;
        if (!__p)
        {
          return v23;
        }

        goto LABEL_25;
      }
    }

    v23 = 1;
    if (!__p)
    {
      return v23;
    }

LABEL_25:
    v25 = v35;
    do
    {
      v28 = *(v25 - 3);
      v25 -= 3;
      v27 = v28;
      if (v28)
      {
        v29 = *(v11 - 2);
        v26 = v27;
        if (v29 != v27)
        {
          v30 = *(v11 - 2);
          do
          {
            v32 = *(v30 - 3);
            v30 -= 24;
            v31 = v32;
            if (v32)
            {
              *(v29 - 2) = v31;
              operator delete(v31);
            }

            v29 = v30;
          }

          while (v30 != v27);
          v26 = *v25;
        }

        *(v11 - 2) = v27;
        operator delete(v26);
      }

      v11 = v25;
    }

    while (v25 != v10);
    v24 = __p;
  }

  v35 = v10;
  operator delete(v24);
  return v23;
}

std::string::size_type sub_F33154(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  v4 = sub_F327BC(a1, a2, 1);
  if (!v4 || (v5 = &v4[-*v4], *v5 < 5u) || (v6 = *(v5 + 2)) == 0 || (v7 = &v4[v6 + *&v4[v6]], v8 = &v7[-*v7], *v8 < 5u) || (v9 = *(v8 + 2)) == 0 || (v10 = &v7[v9 + *&v7[v9]], *v10 <= v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v17 = v3;
    v18 = exception;
    v25[0] = v17;
    v25[1] = v2;
    sub_2FF494(v25, &v22);
    sub_23E08("Referenced polygon ", &v22, &v23);
    sub_30F54(&v24, " does not exist.", &v23);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v24;
    }

    else
    {
      v19 = v24.__r_.__value_.__r.__words[0];
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    v21 = sub_2D390(v18, v19, size);
  }

  v11 = &v10[4 * v3 + 4 + *&v10[4 * v3 + 4]];
  v12 = &v11[*&v11[-*v11 + 6]];
  v13 = *(v12 + 4);
  if (v13 >= 0xFFFFFFFE)
  {
    v13 = -2;
  }

  LODWORD(v23.__r_.__value_.__l.__data_) = *v12;
  HIDWORD(v23.__r_.__value_.__r.__words[0]) = v13;
  LODWORD(v23.__r_.__value_.__r.__words[1]) = 0x7FFFFFFF;
  v14 = *(v12 + 8);
  LODWORD(v12) = *(v12 + 12);
  if (v12 >= 0xFFFFFFFE)
  {
    v12 = 4294967294;
  }

  else
  {
    v12 = v12;
  }

  v22.__r_.__value_.__r.__words[0] = v14 | (v12 << 32);
  LODWORD(v22.__r_.__value_.__r.__words[1]) = 0x7FFFFFFF;
  sub_320C0(&v24, &v23, &v22);
  return v24.__r_.__value_.__r.__words[0];
}

void sub_F332E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_F33368(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v5 = HIDWORD(a2);
  v6 = sub_F327BC(a1, a2, 1);
  if (!v6 || (v7 = &v6[-*v6], *v7 < 5u) || (v8 = *(v7 + 2)) == 0 || (v9 = &v6[v8 + *&v6[v8]], v10 = &v9[-*v9], *v10 < 5u) || (v11 = *(v10 + 2)) == 0 || (v12 = &v9[v11 + *&v9[v11]], *v12 <= v5))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v23[0] = v5;
    v23[1] = v3;
    sub_2FF494(v23, &v20);
    sub_23E08("Referenced polygon ", &v20, &v21);
    sub_30F54(&v22, " does not exist.", &v21);
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v19 = sub_2D390(exception, v17, size);
  }

  v13 = &v12[4 * v5 + 4 + *&v12[4 * v5 + 4]];
  v14 = &v13[*&v13[-*v13 + 4]];
  v15 = &v14[*v14];

  sub_2CBB58(v15, a3);
}

void sub_F334CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_F3354C(void *a1, unsigned int *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = (v5 + (((v4 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v4 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v4 + 0x388152A534) ^ 0xDEADBEEFLL;
  v7 = a2[2];
  v8 = (v7 + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_25;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = (v7 + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
    if (v8 >= *&v9)
    {
      v11 = v8 % *&v9;
    }
  }

  else
  {
    v11 = v8 & (*&v9 - 1);
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_25:
    operator new();
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v13[1];
      if (v14 == v8)
      {
        if (*(v13 + 4) == v4 && *(v13 + 20) == __PAIR64__(v7, v5))
        {
          return v13;
        }
      }

      else if ((v14 & (*&v9 - 1)) != v11)
      {
        goto LABEL_25;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_25;
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
      goto LABEL_25;
    }

LABEL_18:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_25;
    }
  }

  if (*(v13 + 4) != v4 || *(v13 + 20) != __PAIR64__(v7, v5))
  {
    goto LABEL_18;
  }

  return v13;
}

void *sub_F33908(void *a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v9[1];
      if (v11 == v4)
      {
        if (v9[2] == v4)
        {
          return v9;
        }
      }

      else if ((v11 & (*&v5 - 1)) != v7)
      {
        goto LABEL_23;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_23;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_F33C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F33C44(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t **a4)
{
  a4[1] = *a4;
  sub_58168(*a2 >> 17, a2[1] >> 17);
  v8 = v7 | 0x40000000;
  do
  {
    v9 = v8;
    if (!sub_2C9DC0(a1, v8))
    {
      goto LABEL_2;
    }

    sub_2CAFAC(a1, v9, &__p);
    v11 = __p.i64[1];
    v10 = __p.i64[0];
    if (__p.i64[0] != __p.i64[1])
    {
      v12 = a4[1];
      do
      {
        v13 = a4[2];
        if (v12 < v13)
        {
          *v12++ = *v10;
        }

        else
        {
          v14 = *a4;
          v15 = v12 - *a4;
          v16 = v15 >> 3;
          v17 = (v15 >> 3) + 1;
          if (v17 >> 61)
          {
            sub_1794();
          }

          v18 = v13 - v14;
          if (v18 >> 2 > v17)
          {
            v17 = v18 >> 2;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v19 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            if (!(v19 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          *(8 * v16) = *v10;
          v12 = (8 * v16 + 8);
          memcpy(0, v14, v15);
          *a4 = 0;
          a4[1] = v12;
          a4[2] = 0;
          if (v14)
          {
            operator delete(v14);
          }
        }

        a4[1] = v12;
        ++v10;
      }

      while (v10 != v11);
    }

    sub_2CA8D4(a1, v9, &v32);
    v20 = v32.i64[1];
    v21 = v32.i64[0];
    if (v32.i64[0] == v32.i64[1])
    {
      if (!v32.i64[0])
      {
        goto LABEL_23;
      }
    }

    else
    {
      do
      {
        v34 = *v21;
        if (sub_2D2F88(a1, &v34, a2))
        {
          v24 = a4[1];
          v23 = a4[2];
          if (v24 < v23)
          {
            *v24 = *v21;
            v22 = v24 + 1;
          }

          else
          {
            v25 = *a4;
            v26 = v24 - *a4;
            v27 = v26 >> 3;
            v28 = (v26 >> 3) + 1;
            if (v28 >> 61)
            {
              sub_1794();
            }

            v29 = v23 - v25;
            if (v29 >> 2 > v28)
            {
              v28 = v29 >> 2;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFF8)
            {
              v30 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              if (!(v30 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v27) = *v21;
            v22 = (8 * v27 + 8);
            memcpy(0, v25, v26);
            *a4 = 0;
            a4[1] = v22;
            a4[2] = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          a4[1] = v22;
        }

        ++v21;
      }

      while (v21 != v20);
      v21 = v32.i64[0];
      if (!v32.i64[0])
      {
        goto LABEL_23;
      }
    }

    v32.i64[1] = v21;
    operator delete(v21);
LABEL_23:
    if (__p.i64[0])
    {
      __p.i64[1] = __p.i64[0];
      operator delete(__p.i64[0]);
    }

LABEL_2:
    v8 = v9 >> 2;
  }

  while (v9 >= 4);
  return sub_2CAA68(a4);
}

void sub_F33F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_F33F98(void *a1, unsigned int *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = (v5 + (((v4 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v4 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v4 + 0x388152A534) ^ 0xDEADBEEFLL;
  v7 = a2[2];
  v8 = (v7 + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_25;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = (v7 + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
    if (v8 >= *&v9)
    {
      v11 = v8 % *&v9;
    }
  }

  else
  {
    v11 = v8 & (*&v9 - 1);
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_25:
    operator new();
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v13[1];
      if (v14 == v8)
      {
        if (*(v13 + 4) == v4 && *(v13 + 20) == __PAIR64__(v7, v5))
        {
          return v13;
        }
      }

      else if ((v14 & (*&v9 - 1)) != v11)
      {
        goto LABEL_25;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v15 = v13[1];
    if (v15 == v8)
    {
      break;
    }

    if (v15 >= *&v9)
    {
      v15 %= *&v9;
    }

    if (v15 != v11)
    {
      goto LABEL_25;
    }

LABEL_18:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_25;
    }
  }

  if (*(v13 + 4) != v4 || *(v13 + 20) != __PAIR64__(v7, v5))
  {
    goto LABEL_18;
  }

  return v13;
}

void sub_F34344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5F72B0(va);
  _Unwind_Resume(a1);
}

__n128 sub_F34358@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1[9];
  i = *(a2 + 72);
  if (i != v6)
  {
    v9 = *(a1 + 96);
    v10 = *(a1 + 23);
    v11 = *(a1 + 84);
    v12 = a1[8];
    v13 = a1[4];
    v38 = *a1;
    v39 = *(a1 + 12);
    v41 = *(a1 + 44);
    v40 = v13;
    v42 = v12;
    v43 = v6;
    *&v44 = v11;
    DWORD2(v44) = v10;
    BYTE12(v44) = v9;
    *(&v44 + 13) = *(a1 + 97);
    HIBYTE(v44) = *(a1 + 99);
    sub_F345EC(&v38);
    v14 = *(a2 + 72);
    if (v43 == v14)
    {
      *a4 = *a2;
      *(a4 + 12) = *(a2 + 12);
      *(a4 + 32) = *(a2 + 32);
      *(a4 + 44) = *(a2 + 44);
      *(a4 + 64) = *(a2 + 64);
      *(a4 + 72) = v14;
      goto LABEL_19;
    }

    v31 = v38;
    v32 = v39;
    v33 = v40;
    v34 = v41;
    v35 = v42;
    v36 = v43;
    v37 = v44;
    sub_F345EC(&v31);
    v15 = v36;
    for (i = *(a2 + 72); v36 != i; i = *(a2 + 72))
    {
      v24 = *(v6 + 8);
      v25 = *(v6 + 12);
      v6 = v43;
      v26 = *(v43 + 8);
      v27 = *(v43 + 16);
      *&v44 = v26;
      DWORD2(v44) = v27;
      if ((BYTE12(v44) & 1) == 0)
      {
        BYTE12(v44) = 1;
      }

      v28 = *(v15 + 8);
      v29 = *(v15 + 16);
      *&v37 = v28;
      DWORD2(v37) = v29;
      if ((BYTE12(v37) & 1) == 0)
      {
        BYTE12(v37) = 1;
      }

      v16 = *a3;
      v17 = v28 - v26;
      v18 = HIDWORD(v28) - HIDWORD(v26);
      v19 = atan2(v24 - v26, v25 - HIDWORD(v26));
      v20 = atan2(v17, v18);
      if (v19 >= v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = v19;
      }

      if (v19 >= v20)
      {
        v20 = v19;
      }

      v22 = v20 - v21;
      if (6.28318531 - v22 < v22)
      {
        v22 = 6.28318531 - v22;
      }

      v23 = *(v16 + 8);
      **v16 = **v16 + fabs(v22 + -3.14159265) / 3.14159265;
      ++*v23;
      v43 = v15;
      sub_F345EC(&v31);
      v15 = v36;
    }
  }

  *a4 = *a2;
  *(a4 + 12) = *(a2 + 12);
  *(a4 + 32) = *(a2 + 32);
  *(a4 + 44) = *(a2 + 44);
  *(a4 + 64) = *(a2 + 64);
  *(a4 + 72) = i;
LABEL_19:
  result = *(a2 + 84);
  *(a4 + 84) = result;
  return result;
}

uint64_t sub_F345EC(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  if (v2 != v3)
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    v6 = *(a1 + 96);
    *(a1 + 84) = v4;
    *(a1 + 92) = v5;
    if ((v6 & 1) == 0)
    {
      v6 = 1;
      *(a1 + 96) = 1;
    }

    v7 = exp(HIDWORD(v4) * -6.28318531 / 4294967300.0 + 3.14159265);
    v8 = atan((v7 + -1.0 / v7) * 0.5);
    *(a1 + 72) = v2 + 24;
    if (v2 + 24 != v3)
    {
      v9 = v8 * 57.2957795;
      v10 = *(v2 + 32);
      v11 = *(v2 + 40);
      *(a1 + 84) = v10;
      *(a1 + 92) = v11;
      if ((v6 & 1) == 0)
      {
        *(a1 + 96) = 1;
      }

      if (v10 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v10;
      }

      if (v10 <= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v10;
      }

      if (HIDWORD(v10) >= HIDWORD(v4))
      {
        v14 = HIDWORD(v4);
      }

      else
      {
        v14 = HIDWORD(v10);
      }

      if (HIDWORD(v10) <= HIDWORD(v4))
      {
        v15 = HIDWORD(v4);
      }

      else
      {
        v15 = HIDWORD(v10);
      }

      v16 = **(a1 + 64) / 100.0;
      v17 = exp(HIDWORD(v10) * -6.28318531 / 4294967300.0 + 3.14159265);
      v18 = atan((v17 - 1.0 / v17) * 0.5) * 57.2957795;
      if (v9 < v18)
      {
        v18 = v9;
      }

      if (sqrt((v13 - v12) * (v13 - v12) + (v15 - v14) * (v15 - v14)) <= v16 / (0.00932288077 / (1.0 / cos(v18 / 180.0 * 3.14159265))))
      {
        v19 = v2 + 48;
        do
        {
          *(a1 + 72) = v19;
          if (v19 == v3)
          {
            break;
          }

          v20 = *(v19 + 8);
          v21 = *(v19 + 16);
          *(a1 + 84) = v20;
          *(a1 + 92) = v21;
          v22 = v20 >= v4 ? v4 : v20;
          v23 = v20 <= v4 ? v4 : v20;
          v24 = HIDWORD(v20) >= HIDWORD(v4) ? HIDWORD(v4) : HIDWORD(v20);
          v25 = HIDWORD(v20) <= HIDWORD(v4) ? HIDWORD(v4) : HIDWORD(v20);
          v26 = **(a1 + 64) / 100.0;
          v27 = exp(HIDWORD(v20) * -6.28318531 / 4294967300.0 + 3.14159265);
          v28 = atan((v27 - 1.0 / v27) * 0.5) * 57.2957795;
          if (v9 < v28)
          {
            v28 = v9;
          }

          v19 += 24;
        }

        while (sqrt((v23 - v22) * (v23 - v22) + (v25 - v24) * (v25 - v24)) <= v26 / (0.00932288077 / (1.0 / cos(v28 / 180.0 * 3.14159265))));
      }
    }
  }

  return a1;
}

uint64_t sub_F34920(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2674900;
  a2[1] = v2;
  return result;
}

uint64_t sub_F3495C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing28RouteGeometryAnomalyDetectorINS0_11DrivingModeEE53detect_geometry_outside_of_transport_network_polygonsERNS0_14GuidedRouteLegIS2_EEEUlNS_4data17TypeSafeObjectRefINS7_28TransportNetworkPolygonIdTagEEEE0_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing28RouteGeometryAnomalyDetectorINS0_11DrivingModeEE53detect_geometry_outside_of_transport_network_polygonsERNS0_14GuidedRouteLegIS2_EEEUlNS_4data17TypeSafeObjectRefINS7_28TransportNetworkPolygonIdTagEEEE0_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing28RouteGeometryAnomalyDetectorINS0_11DrivingModeEE53detect_geometry_outside_of_transport_network_polygonsERNS0_14GuidedRouteLegIS2_EEEUlNS_4data17TypeSafeObjectRefINS7_28TransportNetworkPolygonIdTagEEEE0_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing28RouteGeometryAnomalyDetectorINS0_11DrivingModeEE53detect_geometry_outside_of_transport_network_polygonsERNS0_14GuidedRouteLegIS2_EEEUlNS_4data17TypeSafeObjectRefINS7_28TransportNetworkPolygonIdTagEEEE0_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_F349D4(int8x8_t **a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *(a3 + 2);
  v10 = *(a3 + 3);
  v8 = (a3 + 1);
  v11 = *(a2 + 3);
  v12 = exp(((v10 >> 1) + (v11 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
  v13 = atan((v12 - 1.0 / v12) * 0.5);
  if (sqrt(((v11 - v10) * (v11 - v10) + (*(a2 + 2) - v9) * (*(a2 + 2) - v9))) / 100.0 * 100.0 * (cos(v13 * 57.2957795 / 180.0 * 3.14159265) * 0.00932288077) >= 1.0)
  {
    v14 = *(a4 + 3);
    v15 = exp(((v10 >> 1) + (v14 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
    v16 = atan((v15 - 1.0 / v15) * 0.5);
    if (sqrt(((v10 - v14) * (v10 - v14) + (v9 - *(a4 + 2)) * (v9 - *(a4 + 2)))) / 100.0 * 100.0 * (cos(v16 * 57.2957795 / 180.0 * 3.14159265) * 0.00932288077) >= 1.0)
    {
      v17 = *a1;
      v45 = *a2;
      v46 = v17;
      if (sub_F34DA8(&v46, &v45))
      {
        v44 = *a3;
        if (sub_F34DA8(&v46, &v44))
        {
          v43 = *a4;
          if (sub_F34DA8(&v46, &v43))
          {
            LODWORD(v18) = *(a2 + 2);
            LODWORD(v19) = *(a2 + 3);
            LODWORD(v20) = *(a3 + 2);
            LODWORD(v21) = *(a3 + 3);
            v22 = v20;
            v23 = v21;
            LODWORD(v20) = *(a4 + 2);
            LODWORD(v21) = *(a4 + 3);
            v24 = (v18 + v22) * 0.5;
            v25 = (v19 + v23) * 0.5;
            v26 = (v22 + v20) * 0.5 - v22;
            v27 = (v23 + v21) * 0.5 - v23;
            v28 = atan2(v24 - v22, v25 - v23);
            v29 = atan2(v26, v27);
            if (v28 >= v29)
            {
              v30 = v29;
            }

            else
            {
              v30 = v28;
            }

            if (v28 >= v29)
            {
              v29 = v28;
            }

            v31 = v29 - v30;
            if (6.28318531 - v31 < v31)
            {
              v31 = 6.28318531 - v31;
            }

            if (v31 == 0.0)
            {
              goto LABEL_17;
            }

            v32 = -v31;
            if (v31 > 0.0)
            {
              v32 = v31;
            }

            if (v32 < 2.22044605e-16)
            {
LABEL_17:
              v33 = INFINITY;
            }

            else
            {
              v33 = 0.0;
              if (v31 != 3.14159265)
              {
                v37 = v31 + -3.14159265;
                if (v31 + -3.14159265 <= 0.0)
                {
                  v37 = -(v31 + -3.14159265);
                }

                if (v37 >= 2.22044605e-16)
                {
                  v38 = sqrt((v22 - v24) * (v22 - v24) + (v23 - v25) * (v23 - v25));
                  v39 = sqrt(v26 * v26 + v27 * v27);
                  if (v39 >= v38)
                  {
                    v40 = v38;
                  }

                  else
                  {
                    v40 = v39;
                  }

                  v41 = v31 * 0.5;
                  v42 = tan(v31 * 0.5);
                  v33 = v40 * v42 * ((1.57079633 - v41 + 1.57079633 - v41) / (v40 * v42 * 6.28318531 * ((1.57079633 - v41 + 1.57079633 - v41) / 6.28318531)) * ((1.57079633 - v41 + 1.57079633 - v41) / (v40 * v42 * 6.28318531 * ((1.57079633 - v41 + 1.57079633 - v41) / 6.28318531))));
                }
              }
            }

            v34 = sub_6F544(a1[1], v33);
            if (v34 > 0.0)
            {
              if (v34 > 4294967300.0)
              {
                v34 = 4294967300.0;
              }

              sub_685E2C(&(*a1)[1550], 10, v8, vcvtad_u64_f64(v34), 5000, v33);
            }

            v35 = a1[3];
            v36 = *v35;
            if (*v35 < v33)
            {
              v36 = v33;
            }

            *v35 = v36;
          }
        }
      }
    }
  }
}

BOOL sub_F34DA8(int8x8_t **a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a2;
  v5 = (*a1)[1569];
  if (v5)
  {
    v6 = vcnt_s8(v5);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = *a2;
      if (*&v5 <= v3)
      {
        v7 = v3 % *&v5;
      }
    }

    else
    {
      v7 = (*&v5 - 1) & v3;
    }

    v8 = *(v2[1568] + 8 * v7);
    if (v8)
    {
      v9 = *v8;
      if (v9)
      {
        if (v6.u32[0] < 2uLL)
        {
          v10 = *&v5 - 1;
          while (1)
          {
            v11 = v9[1];
            if (v11 == v3)
            {
              if (v9[2] == v3)
              {
                goto LABEL_42;
              }
            }

            else if ((v11 & v10) != v7)
            {
              goto LABEL_21;
            }

            v9 = *v9;
            if (!v9)
            {
              goto LABEL_21;
            }
          }
        }

        do
        {
          v12 = v9[1];
          if (v12 == v3)
          {
            if (v9[2] == v3)
            {
LABEL_42:
              v13 = (*(v9 + 6) - 3) < 2;
              v14 = v2[1574];
              if (!*&v14)
              {
                return v13;
              }

              goto LABEL_22;
            }
          }

          else
          {
            if (v12 >= *&v5)
            {
              v12 %= *&v5;
            }

            if (v12 != v7)
            {
              break;
            }
          }

          v9 = *v9;
        }

        while (v9);
      }
    }
  }

LABEL_21:
  v13 = 0;
  v14 = v2[1574];
  if (!*&v14)
  {
    return v13;
  }

LABEL_22:
  v15 = vcnt_s8(v14);
  v15.i16[0] = vaddlv_u8(v15);
  if (v15.u32[0] > 1uLL)
  {
    if (*&v14 <= v3)
    {
      v4 = v3 % *&v14;
    }
  }

  else
  {
    v4 = (*&v14 - 1) & v3;
  }

  v16 = *(v2[1573] + 8 * v4);
  if (!v16)
  {
    return v13;
  }

  v17 = *v16;
  if (!v17)
  {
    return v13;
  }

  if (v15.u32[0] < 2uLL)
  {
    v18 = *&v14 - 1;
    while (1)
    {
      v19 = v17[1];
      if (v19 == v3)
      {
        if (v17[2] == v3)
        {
          return v13 || *(v17 + 6) == 2;
        }
      }

      else if ((v19 & v18) != v4)
      {
        return v13;
      }

      v17 = *v17;
      if (!v17)
      {
        return v13;
      }
    }
  }

  while (1)
  {
    v20 = v17[1];
    if (v20 == v3)
    {
      break;
    }

    if (v20 >= *&v14)
    {
      v20 %= *&v14;
    }

    if (v20 != v4)
    {
      return v13;
    }

LABEL_36:
    v17 = *v17;
    if (!v17)
    {
      return v13;
    }
  }

  if (v17[2] != v3)
  {
    goto LABEL_36;
  }

  return v13 || *(v17 + 6) == 2;
}

void sub_F34F90()
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
  xmmword_27BF5E0 = 0u;
  *algn_27BF5F0 = 0u;
  dword_27BF600 = 1065353216;
  sub_3A9A34(&xmmword_27BF5E0, v0, v0);
  sub_3A9A34(&xmmword_27BF5E0, v3, v3);
  sub_3A9A34(&xmmword_27BF5E0, __p, __p);
  sub_3A9A34(&xmmword_27BF5E0, v9, v9);
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
    qword_27BF5B8 = 0;
    qword_27BF5C0 = 0;
    qword_27BF5B0 = 0;
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

void sub_F351D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BF5C8)
  {
    qword_27BF5D0 = qword_27BF5C8;
    operator delete(qword_27BF5C8);
  }

  _Unwind_Resume(exception_object);
}

void sub_F35284(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = sub_3AF6B4(a2);
  a1[1] = sub_3AF824(a2);
  a1[2] = a3;
  operator new();
}

void sub_F355F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  sub_5C010(&a24);
  sub_1A104(&a15);
  if (a23 < 0)
  {
    operator delete(__p);
    sub_1A104((v24 - 96));
    if ((*(v24 - 49) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104((v24 - 96));
    if ((*(v24 - 49) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v24 - 72));
  _Unwind_Resume(a1);
}

void sub_F3568C(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_F35FB8(a1, a2, &v63);
  if (!sub_7E7E4(2u))
  {
    goto LABEL_18;
  }

  sub_19594F8(&v52);
  sub_4A5C(&v52, "Checkpoints: ", 13);
  if ((v62 & 0x10) != 0)
  {
    v5 = v61;
    if (v61 < v57)
    {
      v61 = v57;
      v5 = v57;
    }

    v6 = v56;
    v4 = (v5 - v56);
    if ((v5 - v56) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_56:
      sub_3244();
    }

LABEL_8:
    if (v4 >= 0x17)
    {
      operator new();
    }

    v51 = v4;
    if (v4)
    {
      memmove(&__dst, v6, v4);
    }

    goto LABEL_13;
  }

  if ((v62 & 8) != 0)
  {
    v6 = *(&v53 + 1);
    v4 = v55 - *(&v53 + 1);
    if (v55 - *(&v53 + 1) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_56;
    }

    goto LABEL_8;
  }

  v4 = 0;
  v51 = 0;
LABEL_13:
  *(&__dst.__locale_ + v4) = 0;
  sub_7E854(&__dst, 2u);
  if (v51 < 0)
  {
    operator delete(__dst.__locale_);
  }

  if (SHIBYTE(v60[1]) < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v53);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_18:
  v7 = v63;
  v8 = v64;
  if (v63 != v64)
  {
    while (!sub_7E7E4(2u))
    {
LABEL_21:
      if (++v7 == v8)
      {
        goto LABEL_39;
      }
    }

    sub_19594F8(&v52);
    sub_4A5C(&v52, "For segment: ", 13);
    v10 = std::ostream::operator<<();
    v11 = sub_4A5C(v10, " road", 5);
    v12 = sub_4D1F50(a2, *(v7 + 1));
    v13 = sub_30E900(v11, *(v12 + 32) & 0xFFFFFFFFFFFFFFLL);
    v14 = sub_4A5C(v13, " ", 1);
    v15 = sub_2FF718(v14, __ROR8__(*v7, 32));
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v16 = std::locale::use_facet(&__dst, &std::ctype<char>::id);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&__dst);
    std::ostream::put();
    std::ostream::flush();
    if ((v62 & 0x10) != 0)
    {
      v18 = v61;
      v19 = &v56;
      if (v61 < v57)
      {
        v61 = v57;
        v18 = v57;
        v19 = &v56;
      }
    }

    else
    {
      if ((v62 & 8) == 0)
      {
        v17 = 0;
        v51 = 0;
LABEL_35:
        *(&__dst.__locale_ + v17) = 0;
        sub_7E854(&__dst, 2u);
        if (v51 < 0)
        {
          operator delete(__dst.__locale_);
        }

        *&v52 = v47;
        *(&v52 + *(*&v47 - 24)) = v9;
        if (SHIBYTE(v60[1]) < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v53);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_21;
      }

      v18 = v55;
      v19 = &v53 + 1;
    }

    v20 = *v19;
    v17 = v18 - *v19;
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    v51 = v18 - *v19;
    if (v17)
    {
      memmove(&__dst, v20, v17);
    }

    goto LABEL_35;
  }

LABEL_39:
  sub_F36258(a1, a2, &v63, a3);
  v21 = *a3;
  v22 = a3[1];
  if (*a3 != v22)
  {
    do
    {
      sub_F3667C(a1, v21);
      v21 += 104;
    }

    while (v21 != v22);
  }

  sub_F36A84(a1, a2, a3);
  v23 = sub_F4A280(*a3, a3[1]);
  v24 = a3[1];
  v25 = a2;
  if (v23 == v24)
  {
    if (*a3 != v24)
    {
      goto LABEL_73;
    }
  }

  else
  {
    sub_F48288(a3, v23);
    v25 = a2;
    if (*a3 != a3[1])
    {
      goto LABEL_73;
    }
  }

  if (sub_4D1DC0(v25) >= 2)
  {
    v26 = sub_4D1DC0(a2) - 1;
    v27 = sub_4D1F50(a2, v26);
    v28 = (*v27 - **v27);
    if (*v28 >= 9u && (v29 = v28[4]) != 0)
    {
      v30 = *(*v27 + v29);
    }

    else
    {
      v30 = 0;
    }

    sub_F3700C(a1, a2, 0, 0, v26, v30, 1, &v52);
    v31 = a3[1];
    if (v31 >= a3[2])
    {
      sub_F47DA0(a3, &v52);
      v39 = v60[0];
      a3[1] = v40;
      if (v39)
      {
        v41 = v60[1];
        v42 = v39;
        if (v60[1] != v39)
        {
          do
          {
            v43 = *(v41 - 8);
            if (v43)
            {
              *(v41 - 7) = v43;
              operator delete(v43);
            }

            v41 -= 96;
          }

          while (v41 != v39);
          v42 = v60[0];
        }

        v60[1] = v39;
        operator delete(v42);
      }
    }

    else
    {
      v32 = v52;
      v33 = v53;
      *(v31 + 32) = v54;
      *v31 = v32;
      *(v31 + 16) = v33;
      v34 = v55;
      v35 = v57;
      v55 = 0;
      *(v31 + 56) = v57;
      *(v31 + 40) = v34;
      *(v31 + 48) = v56;
      v56 = 0;
      v36 = v58;
      *(v31 + 64) = v58;
      *(v31 + 72) = __p;
      if (v36)
      {
        v37 = v35[1];
        v38 = *(v31 + 48);
        if ((v38 & (v38 - 1)) != 0)
        {
          if (v37 >= v38)
          {
            v37 %= v38;
          }
        }

        else
        {
          v37 &= v38 - 1;
        }

        v34[v37] = v31 + 56;
        v57 = 0;
        v58 = 0;
      }

      *(v31 + 80) = 0;
      *(v31 + 88) = 0;
      *(v31 + 96) = 0;
      *(v31 + 80) = *v60;
      *(v31 + 96) = v61;
      v60[0] = 0;
      v60[1] = 0;
      v61 = 0;
      a3[1] = v31 + 104;
    }

    v44 = v57;
    if (v57)
    {
      do
      {
        v45 = *v44;
        operator delete(v44);
        v44 = v45;
      }

      while (v45);
    }

    v46 = v55;
    v55 = 0;
    if (v46)
    {
      operator delete(v46);
    }
  }

LABEL_73:
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }
}

void sub_F35F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  sub_F38730(&a21);
  sub_F387CC(a10);
  v23 = *(v21 - 112);
  if (v23)
  {
    *(v21 - 104) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

void sub_F35FB8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = sub_4D1DC0(a2);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = sub_4D1F50(a2, v9);
      v11 = *(v10 + 8);
      v12 = (v11 - *v11);
      if (*v12 >= 0x11u && (v13 = v12[8]) != 0)
      {
        v14 = *(v11 + v13);
        v15 = *(a1 + 208);
        v16 = *(*(a1 + 16) + 1567);
        if (v15)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v14 = 0;
        v15 = *(a1 + 208);
        v16 = *(*(a1 + 16) + 1567);
        if (v15)
        {
          goto LABEL_14;
        }
      }

      if ((v16 & 1) == 0)
      {
        if ((v14 & 0x40) != 0)
        {
          goto LABEL_23;
        }

        goto LABEL_5;
      }

LABEL_14:
      if (!v15 || (v16 & 1) != 0)
      {
        if ((v15 & 1) != 0 || !v16)
        {
          if ((v14 & 0x60C0) != 0)
          {
LABEL_23:
            v17 = *(a1 + 8);
            v18 = *(v10 + 32);
            LODWORD(v26) = v18;
            BYTE6(v26) = BYTE6(v18);
            WORD2(v26) = WORD2(v18);
            v19 = sub_316FF8(v17, &v26);
            if (v19 <= 0xFFFFFFFEFFFFFFFFLL && v19)
            {
              v20 = a3[2];
              if (v8 < v20)
              {
                *v8 = v19;
                *(v8 + 8) = v9;
                v8 += 16;
              }

              else
              {
                v21 = v8;
                v22 = v8 >> 4;
                v23 = v22 + 1;
                if ((v22 + 1) >> 60)
                {
                  *a3 = 0;
                  sub_1794();
                }

                if (v20 >> 3 > v23)
                {
                  v23 = v20 >> 3;
                }

                if (v20 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v24 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v24 = v23;
                }

                if (v24)
                {
                  if (!(v24 >> 60))
                  {
                    operator new();
                  }

                  *a3 = 0;
                  sub_1808();
                }

                v25 = (16 * v22);
                *v25 = v19;
                v25[1] = v9;
                v8 = 16 * v22 + 16;
                memcpy(0, 0, v21);
                a3[1] = v8;
                a3[2] = 0;
              }

              a3[1] = v8;
            }
          }
        }

        else if ((v14 & 0x2040) != 0)
        {
          goto LABEL_23;
        }
      }

      else if ((v14 & 0xC0) != 0)
      {
        goto LABEL_23;
      }

LABEL_5:
      if (v7 == ++v9)
      {
        goto LABEL_37;
      }
    }
  }

  v8 = 0;
LABEL_37:
  *a3 = 0;
  *(*(a1 + 296) + 64) += v8 >> 4;
}

void sub_F36214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  *v9 = __p;
  if (__p)
  {
    v9[1] = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F36258(void **a1@<X0>, void *a2@<X1>, __int128 **a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = sub_4D1DC0(a2);
  if (*a3 == a3[1])
  {
    v9 = v8 - 1;
    v10 = sub_4D1F50(a2, v8 - 1);
    v11 = (*v10 - **v10);
    if (*v11 >= 9u && (v12 = v11[4]) != 0)
    {
      v13 = *(*v10 + v12);
    }

    else
    {
      v13 = 0;
    }

    sub_F3700C(a1, a2, 0, 0, v9, v13, 0, v30);
    v14 = a4[1];
    if (v14 >= a4[2])
    {
      sub_F47DA0(a4, v30);
      v22 = __p[0];
      a4[1] = v23;
      if (v22)
      {
        v24 = __p[1];
        v25 = v22;
        if (__p[1] != v22)
        {
          do
          {
            v26 = *(v24 - 8);
            if (v26)
            {
              *(v24 - 7) = v26;
              operator delete(v26);
            }

            v24 -= 96;
          }

          while (v24 != v22);
          v25 = __p[0];
        }

        __p[1] = v22;
        operator delete(v25);
      }
    }

    else
    {
      v15 = v30[0];
      v16 = v30[1];
      *(v14 + 32) = v31;
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = v32;
      v18 = v34;
      v32 = 0;
      *(v14 + 56) = v34;
      *(v14 + 40) = v17;
      *(v14 + 48) = v33;
      v33 = 0;
      v19 = v35;
      *(v14 + 64) = v35;
      *(v14 + 72) = v36;
      if (v19)
      {
        v20 = v18[1];
        v21 = *(v14 + 48);
        if ((v21 & (v21 - 1)) != 0)
        {
          if (v20 >= v21)
          {
            v20 %= v21;
          }
        }

        else
        {
          v20 &= v21 - 1;
        }

        v17[v20] = v14 + 56;
        v34 = 0;
        v35 = 0;
      }

      *(v14 + 80) = 0;
      *(v14 + 88) = 0;
      *(v14 + 96) = 0;
      *(v14 + 80) = *__p;
      *(v14 + 96) = v38;
      __p[0] = 0;
      __p[1] = 0;
      v38 = 0;
      a4[1] = v14 + 104;
    }

    v27 = v34;
    if (v34)
    {
      do
      {
        v28 = *v27;
        operator delete(v27);
        v27 = v28;
      }

      while (v28);
    }

    v29 = v32;
    v32 = 0;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    sub_F38808(a1, a2, a3, a4);
    if (a3[1] - *a3 != 1)
    {
      operator new();
    }

    sub_F3B71C(a1, a2, a3, a4);
  }
}

void sub_F365F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_F38730(va);
  sub_F387CC(v9);
  _Unwind_Resume(a1);
}

void sub_F3660C(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_F387CC(v1);
  _Unwind_Resume(a1);
}

void sub_F3667C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88))
  {
    if (sub_681D38(a2) != 1)
    {
      v4 = sub_73ECC(a2);
      v5 = *v4;
      v6 = v4[1];
      if (*v4 != v6)
      {
        v7 = 0.25;
        v8 = 1.0;
        v33 = vdupq_n_s64(0xC066800000000000);
        v34 = vdupq_n_s64(0x4076800000000000uLL);
        v31 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
        v32 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
        do
        {
          while (1)
          {
            v9 = fmin(*(a1 + 88) / 100.0 / (*(v5 + 72) / 100.0), v7);
            sub_2F4C8((v5 + 32), 0, &v37, v9, v8 - v9);
            v10 = *(v5 + 32);
            if (v10)
            {
              *(v5 + 40) = v10;
              operator delete(v10);
            }

            v13 = v37;
            *(v5 + 32) = v37;
            *(v5 + 48) = v38;
            v11 = *(&v13 + 1);
            v12 = v13;
            *&v13 = 0;
            if (v12 != *(&v13 + 1))
            {
              v14 = (v12 + 12);
              if (v12 + 12 != *(&v13 + 1))
              {
                break;
              }
            }

LABEL_18:
            v29 = 0;
            if ((((*&v13 + *&v13) + 1) >> 1) >= 9.22337204e18)
            {
              goto LABEL_5;
            }

LABEL_23:
            if (v29)
            {
              if (*&v13 > -4.50359963e15)
              {
                v30 = (*&v13 + *&v13) - 1 + (((*&v13 + *&v13) - 1) >> 63);
LABEL_28:
                *&v13 = (v30 >> 1);
              }
            }

            else if (*&v13 < 4.50359963e15)
            {
              v30 = (*&v13 + *&v13) + 1;
              goto LABEL_28;
            }

            *(v5 + 72) = *&v13;
            v5 += 96;
            if (v5 == v6)
            {
              return;
            }
          }

          v15 = 0.0;
          do
          {
            LODWORD(v13) = *(v14 - 2);
            v16 = exp(3.14159265 - v13 * 6.28318531 / 4294967300.0);
            *&v17 = atan((v16 - 1.0 / v16) * 0.5) * 57.2957795;
            LODWORD(v18) = *(v14 - 3);
            HIDWORD(v18) = *v14;
            v35 = v18;
            v19 = *&v17 * 0.0174532925;
            LODWORD(v17) = v14[1];
            v20 = exp(3.14159265 - v17 * 6.28318531 / 4294967300.0);
            v21 = atan((v20 - 1.0 / v20) * 0.5) * 57.2957795 * 0.0174532925;
            v22.i64[0] = v35;
            v22.i64[1] = HIDWORD(v35);
            v23 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v22), v34), v32), v33), v31);
            v36 = vsubq_f64(v23, vdupq_laneq_s64(v23, 1)).f64[0];
            v24 = sin((v19 - v21) * 0.5);
            v25 = v24 * v24;
            v26 = cos(v19);
            v27 = v26 * cos(v21);
            v28 = sin(0.5 * v36);
            v8 = 1.0;
            *&v13 = atan2(sqrt(v28 * v28 * v27 + v25), sqrt(1.0 - (v28 * v28 * v27 + v25)));
            *&v13 = (*&v13 + *&v13) * 6372797.56;
            v15 = v15 + *&v13;
            v14 += 3;
          }

          while (v14 != v11);
          *&v13 = v15 * 100.0;
          if (v15 * 100.0 >= 0.0)
          {
            if (*&v13 >= 4.50359963e15)
            {
              v29 = 0;
              v7 = 0.25;
              if (*&v13 < 9.22337204e18)
              {
                goto LABEL_23;
              }

              goto LABEL_5;
            }

            v7 = 0.25;
            goto LABEL_18;
          }

          if (*&v13 <= -4.50359963e15)
          {
            v29 = 1;
            v7 = 0.25;
            if (*&v13 >= 9.22337204e18)
            {
              goto LABEL_5;
            }

            goto LABEL_23;
          }

          v29 = 1;
          v7 = 0.25;
          if ((((*&v13 + *&v13) - 1) / 2) < 9.22337204e18)
          {
            goto LABEL_23;
          }

LABEL_5:
          *(v5 + 72) = 0x7FFFFFFFFFFFFFFELL;
          v5 += 96;
        }

        while (v5 != v6);
      }
    }
  }
}

void sub_F36A84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = v5 - *a3;
  if (v6 == 104)
  {

    sub_F535D8(v4, 1uLL);
    return;
  }

  v88 = 0;
  v89 = a1;
  v8 = 0x4EC4EC4EC4EC4EC5 * (v6 >> 3);
  __p = 0;
  v87 = 0;
  if (v5 != v4)
  {
    sub_49A9B0(&__p, 0x4EC4EC4EC4EC4EC5 * (v6 >> 3));
    v4 = *a3;
    v5 = a3[1];
    v8 = 0x4EC4EC4EC4EC4EC5 * ((v5 - *a3) >> 3);
  }

  if (v5 != v4)
  {
    v9 = 0;
    v84 = a1;
    v83 = v8;
    while (1)
    {
      v10 = __p;
      v11 = sub_73ECC(*a3 + 104 * v9);
      v12 = &v10[24 * v9];
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v11[1] - *v11) >> 5);
      v14 = 0xCCCCCCCCCCCCCCCDLL * ((*(v12 + 1) - *v12) >> 3);
      if (v13 <= v14)
      {
        if (v13 < v14)
        {
          *(v12 + 1) = *v12 + 40 * v13;
        }
      }

      else
      {
        sub_F4834C(v12, v13 - v14);
      }

      if (!v9)
      {
        break;
      }

      v15 = sub_73ECC(*a3 + 104 * v9);
      v16 = v15[1] - *v15;
      if (v16)
      {
        v17 = 0;
        v85 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 5);
        v18 = v9 - 1;
        do
        {
          v19 = *sub_73ECC(*a3 + 104 * v9) + 96 * v17;
          v20 = *(v19 + 56);
          v21 = *(a1 + 56);
          v22 = 0.0;
          v23 = 0.0;
          v24 = v21 >= v20;
          v25 = v21 - v20;
          if (v24)
          {
            v23 = *(a1 + 64) * v25;
            if ((*(v19 + 89) & 1) == 0)
            {
LABEL_33:
              v22 = *(a1 + 72);
              v26 = 0.0;
              if (*(v19 + 88))
              {
                goto LABEL_22;
              }

LABEL_21:
              v26 = *(a1 + 72);
              goto LABEL_22;
            }
          }

          else if ((*(v19 + 89) & 1) == 0)
          {
            goto LABEL_33;
          }

          v26 = 0.0;
          if ((*(v19 + 88) & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_22:
          v27 = sub_73ECC(*a3 + 104 * v18);
          v28 = v27[1] - *v27;
          if (v28)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = v23 + v22 + v26;
            v33 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 5);
            do
            {
              v34 = *sub_73ECC(*a3 + 104 * v18);
              v35 = sub_73ECC(*a3 + 104 * v9);
              v41 = sub_F3E55C(&v89, v34 + v30, *v35 + 96 * v17, v36, v37, v38, v39, v40);
              v42 = *(__p + 3 * v18) + v29;
              v43 = v32 + v41 + *(v42 + 32);
              if (*(v42 + 24) >= v41)
              {
                v41 = *(v42 + 24);
              }

              v44 = *(__p + 3 * v9) + 40 * v17;
              v45 = *(v44 + 32);
              v46 = v43 < v45;
              if (v43 == v45)
              {
                v46 = v41 < *(v44 + 24);
              }

              if (v46)
              {
                *v44 = v17;
                *(v44 + 8) = v9;
                *(v44 + 16) = v31;
                *(v44 + 24) = v41;
                *(v44 + 32) = v43;
              }

              ++v31;
              v30 += 96;
              v29 += 40;
            }

            while (v33 != v31);
          }

          ++v17;
          a1 = v84;
        }

        while (v17 != v85);
      }

LABEL_9:
      if (++v9 == v83)
      {
        goto LABEL_45;
      }
    }

    v47 = *(__p + 1);
    if (v47 == *__p)
    {
      goto LABEL_9;
    }

    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0xCCCCCCCCCCCCCCCDLL * ((v47 - *__p) >> 3);
    while (1)
    {
      v53 = *sub_73ECC(*a3);
      v54 = v53 + v49;
      v55 = *(v53 + v49 + 56);
      v56 = *(a1 + 56);
      v57 = 0.0;
      v58 = 0.0;
      v24 = v56 >= v55;
      v59 = v56 - v55;
      if (v24)
      {
        v58 = *(a1 + 64) * v59;
        if (*(v54 + 89))
        {
LABEL_40:
          v60 = 0.0;
          if ((*(v53 + v49 + 88) & 1) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_37;
        }
      }

      else if (*(v54 + 89))
      {
        goto LABEL_40;
      }

      v57 = *(a1 + 72);
      v60 = 0.0;
      if ((*(v53 + v49 + 88) & 1) == 0)
      {
LABEL_44:
        v60 = *(a1 + 72);
      }

LABEL_37:
      v52 = *__p + v48;
      *v52 = v50;
      *(v52 + 8) = xmmword_2266B40;
      *(v52 + 24) = 0;
      *(v52 + 32) = v58 + v57 + v60;
      ++v50;
      v49 += 96;
      v48 += 40;
      if (v51 == v50)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_45:
  v61 = *(v87 - 3);
  v62 = *(v87 - 2);
  v63 = v61 + 40;
  if (v61 != v62 && v63 != v62)
  {
    do
    {
      v65 = *(v63 + 32);
      v66 = *(v61 + 32);
      v67 = *(v63 + 24) < *(v61 + 24);
      if (v65 != v66)
      {
        v67 = v65 < v66;
      }

      if (v67)
      {
        v61 = v63;
      }

      v63 += 40;
    }

    while (v63 != v62);
  }

  while (1)
  {
    v68 = *v61;
    v69 = *(v61 + 8);
    v70 = *(v61 + 16);
    v71 = *a3 + 104 * v69;
    v72 = *sub_73ECC(v71);
    v73 = v72 + 96 * v68;
    v74 = *(v73 + 16);
    *v72 = *v73;
    *(v72 + 16) = v74;
    if (v68)
    {
      sub_35354C((v72 + 32), *(v73 + 32), *(v73 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v73 + 40) - *(v73 + 32)) >> 2));
    }

    v75 = *(v73 + 56);
    v76 = *(v73 + 72);
    *(v72 + 87) = *(v73 + 87);
    *(v72 + 72) = v76;
    *(v72 + 56) = v75;
    sub_F535D8(v71, 1uLL);
    v77 = __p;
    if (!v69)
    {
      break;
    }

    v61 = *(__p + 3 * v69 - 3) + 40 * v70;
  }

  if (__p)
  {
    v78 = v87;
    v79 = __p;
    if (v87 != __p)
    {
      v80 = v87;
      do
      {
        v82 = *(v80 - 3);
        v80 -= 24;
        v81 = v82;
        if (v82)
        {
          *(v78 - 2) = v81;
          operator delete(v81);
        }

        v78 = v80;
      }

      while (v80 != v77);
      v79 = __p;
    }

    v87 = v77;
    operator delete(v79);
  }
}

void sub_F36FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16)
{
  if (a15)
  {
    sub_21E548C(&a16, a15, &a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_F3700C(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v12 = a2;
  if (!sub_7E7E4(2u))
  {
    goto LABEL_19;
  }

  sub_19594F8(&v231);
  sub_4A5C(&v231, "Using center line between ", 26);
  v15 = std::ostream::operator<<();
  sub_4A5C(v15, " and ", 5);
  std::ostream::operator<<();
  if ((v239 & 0x10) != 0)
  {
    v17 = v238;
    if (v238 < v235)
    {
      v238 = v235;
      v17 = v235;
    }

    v18 = a8;
    v19 = *(&v234 + 1);
    v16 = v17 - *(&v234 + 1);
    if (v17 - *(&v234 + 1) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_212:
      sub_3244();
    }

LABEL_8:
    if (v16 >= 0x17)
    {
      operator new();
    }

    BYTE7(v227) = v16;
    if (v16)
    {
      memmove(&__dst, v19, v16);
    }

    a8 = v18;
    goto LABEL_14;
  }

  if ((v239 & 8) != 0)
  {
    v18 = a8;
    v19 = *(&v232 + 1);
    v16 = v234 - *(&v232 + 1);
    if (v234 - *(&v232 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
      goto LABEL_212;
    }

    goto LABEL_8;
  }

  v16 = 0;
  BYTE7(v227) = 0;
LABEL_14:
  *(&__dst + v16) = 0;
  sub_7E854(&__dst, 2u);
  if (SBYTE7(v227) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v237) < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v232);
  std::ostream::~ostream();
  std::ios::~ios();
  v12 = a2;
LABEL_19:
  *&v231 = a3;
  *(&v231 + 1) = a4;
  *&v232 = a5;
  *(&v232 + 1) = a6;
  v234 = 0u;
  v235 = 0u;
  v233 = 3;
  LODWORD(__p) = 1065353216;
  v238 = 0;
  v237 = 0uLL;
  sub_68179C(&v231, 1);
  v20 = sub_73ECC(&v231);
  v21 = v20;
  v22 = v20[1];
  v23 = 0xAAAAAAAAAAAAAAABLL * ((v22 - *v20) >> 5);
  if (v22 == *v20)
  {
    sub_F48B50(v20, 1 - v23);
  }

  else if (v23 >= 2)
  {
    v24 = *v20 + 96;
    while (v22 != v24)
    {
      v25 = *(v22 - 64);
      if (v25)
      {
        *(v22 - 56) = v25;
        operator delete(v25);
      }

      v22 -= 96;
    }

    v21[1] = v24;
    v12 = a2;
  }

  v26 = *sub_73ECC(&v231);
  v27 = (v26 + 32);
  if (a3 == a5)
  {
    v28 = sub_4D1F50(v12, a3);
    sub_2B7A20(*a1, v28[4] & 0xFFFFFFFFFFFFFFLL, &__dst);
    v29 = sub_588D8(&v231);
    v31 = (*v28 - **v28);
    v32 = 0.0;
    if (*v31 >= 9u)
    {
      v33 = v31[4];
      if (v33)
      {
        LODWORD(v30) = *(*v28 + v33);
        v32 = v30;
      }
    }

    v34 = sub_5FC64(&v231);
    v35 = (*v28 - **v28);
    v36 = 0.0;
    if (*v35 >= 9u)
    {
      v37 = v35[4];
      if (v37)
      {
        LODWORD(v36) = *(*v28 + v37);
        v36 = *&v36;
      }
    }

    sub_F3EAF4(&__dst, 0, v223, v29 / v32, v34 / v36);
    v38 = *v27;
    if (*v27)
    {
      *(v26 + 40) = v38;
      operator delete(v38);
      *v27 = 0;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
    }

    *(v26 + 32) = *v223;
    *(v26 + 48) = v224[0];
    ++*(a1[37] + 13);
    v39 = v232;
    *a8 = v231;
    *(a8 + 16) = v39;
    *(a8 + 32) = v233;
    v40 = v234;
    *(a8 + 40) = v234;
    v234 = 0uLL;
    v41 = v235;
    *(a8 + 56) = v235;
    *(a8 + 72) = __p;
    if (*(&v41 + 1))
    {
      v42 = *(v41 + 8);
      if ((*(&v40 + 1) & (*(&v40 + 1) - 1)) != 0)
      {
        if (v42 >= *(&v40 + 1))
        {
          v42 %= *(&v40 + 1);
        }
      }

      else
      {
        v42 &= *(&v40 + 1) - 1;
      }

      *(v40 + 8 * v42) = a8 + 56;
      v235 = 0uLL;
    }

    *(a8 + 80) = v237;
    *(a8 + 96) = v238;
    v238 = 0;
    v237 = 0uLL;
    if (*(&__dst + 1))
    {
      *&v227 = *(&__dst + 1);
      operator delete(*(&__dst + 1));
    }

    goto LABEL_198;
  }

  v215 = sub_45AC50(&v231);
  v43 = sub_45AC50(&v231);
  v44 = sub_588E0(&v231);
  if (v43 <= v44 + 1)
  {
    v45 = v44 + 1;
  }

  else
  {
    v45 = v43;
  }

  if (v43 < v44 + 1)
  {
    v46 = 0.45;
    v47 = 0.55;
    v48 = 1.0;
    *&v49 = 6.28318531;
    v218 = vdupq_n_s64(0xC066800000000000);
    v219 = vdupq_n_s64(0x4076800000000000uLL);
    v217 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v216 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v204 = a8;
    do
    {
      v50 = sub_4D1F50(v12, v43);
      v51 = v50;
      v52 = (*v50 - **v50);
      if (*v52 >= 9u && (v53 = v52[4]) != 0)
      {
        v54 = *(*v50 + v53);
      }

      else
      {
        v54 = 0;
      }

      sub_2B7A20(*a1, v50[4] & 0xFFFFFFFFFFFFFFLL, &__dst);
      sub_31BF20(&__dst, v229);
      if (*(&__dst + 1))
      {
        *&v227 = *(&__dst + 1);
        operator delete(*(&__dst + 1));
      }

      v55 = v51[1];
      v56 = (v55 - *v55);
      if (*v56 >= 0x11u && (v57 = v56[8]) != 0)
      {
        v58 = *(v55 + v57);
        if (a1[26])
        {
          goto LABEL_60;
        }
      }

      else
      {
        v58 = 0;
        if (a1[26])
        {
          goto LABEL_60;
        }
      }

      if ((*(a1[2] + 1567) & 1) == 0)
      {
        if ((v58 & 0x40) == 0)
        {
          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_60:
      if (!*(a1 + 208) || (*(a1[2] + 1567) & 1) != 0)
      {
        if ((a1[26] & 1) != 0 || !*(a1[2] + 1567))
        {
          if ((v58 & 0x60C0) == 0)
          {
            goto LABEL_91;
          }
        }

        else if ((v58 & 0x2040) == 0)
        {
          goto LABEL_91;
        }
      }

      else if ((v58 & 0xC0) == 0)
      {
        goto LABEL_91;
      }

LABEL_69:
      v59 = *v51;
      v60 = (*v51 - **v51);
      v61 = *v60;
      if (*(v51 + 38))
      {
        if (v61 < 0x9B)
        {
          goto LABEL_91;
        }

        v62 = v60[77];
        if (!v62 || (*&v59[v62] & 2) == 0)
        {
          goto LABEL_91;
        }
      }

      else if (v61 < 0x9B || (v63 = v60[77]) == 0 || (*&v59[v63] & 1) == 0)
      {
LABEL_91:
        sub_318AE8(v27, *(v26 + 40), v229[0], v229[1], 0xAAAAAAAAAAAAAAABLL * ((v229[1] - v229[0]) >> 2));
        goto LABEL_92;
      }

      v64 = sub_F3ECB8(a1, v12, &v231, v43, 1);
      v65 = v12;
      v66 = v64;
      v67 = sub_F3EEF8(a1, v65, &v231, v43, 1);
      v68 = v54 / 100.0;
      v69 = v66 / 100.0 / v68;
      v70 = v67 / 100.0 / v68;
      v71 = fmin(v69, v46);
      v72 = fmax(v70, v47);
      if (a7)
      {
        v70 = v72;
        v69 = v71;
      }

      if (v69 >= v70)
      {
        v12 = a2;
      }

      else
      {
        sub_2F4C8(v229, 0, &__dst, v69, v70);
        v12 = a2;
        if (v229[0])
        {
          v229[1] = v229[0];
          operator delete(v229[0]);
        }

        *v229 = __dst;
        v230 = v227;
        v73 = *(&__dst + 1);
        v74 = __dst;
        if (__dst == *(&__dst + 1))
        {
LABEL_103:
          if (v74 != v73)
          {
            v229[1] = v74;
            v12 = a2;
          }
        }

        else
        {
          while (1)
          {
            v75 = v74 + 3;
            if (v74 + 3 == *(&__dst + 1))
            {
              break;
            }

            v76 = *v74 == v74[3] && v74[1] == v74[4];
            v74 += 3;
            if (v76)
            {
              v77 = v75 + 3;
              v78 = v75 - 3;
              if (v77 != *(&__dst + 1))
              {
                do
                {
                  if (*v78 != *v77 || v78[1] != v77[1])
                  {
                    v80 = v77[2];
                    *(v78 + 3) = *v77;
                    v78 += 3;
                    v78[2] = v80;
                  }

                  v77 += 3;
                }

                while (v77 != v73);
                v73 = v229[1];
              }

              v74 = v78 + 3;
              goto LABEL_103;
            }
          }
        }

        v81 = sub_F3F148(a1, v12, v43);
        a8 = v204;
        v82 = v81;
        if (v81 >= 1 && v54)
        {
          v83 = (*v51 - **v51);
          if (*v83 >= 0x9Bu)
          {
            v84 = v83[77];
            if (v84)
            {
              if ((*(*v51 + v84 + 1) & 0x80) != 0)
              {
                v82 = -v81;
              }
            }
          }

          *&__dst = v229[0];
          v223[0] = v229[1];
          sub_F49F68(&__dst, v223, v82, v82);
        }

        sub_F532AC(&v231, v43);
        if (v43 != sub_45AC50(&v231))
        {
          v85 = sub_4D1F50(v12, v215);
          v86 = (*v85 - **v85);
          v87 = *v86;
          if (*(v85 + 38))
          {
            if (v87 < 0x49)
            {
              goto LABEL_125;
            }

            v88 = v86[36];
            if (!v88)
            {
              goto LABEL_125;
            }

LABEL_121:
            v89 = *(*v85 + v88);
            v90 = *v51;
            v91 = (*v51 - **v51);
            v92 = *v91;
            if (!*(v51 + 38))
            {
              goto LABEL_122;
            }

LABEL_126:
            if (v92 >= 0x4B)
            {
              v93 = v91[37];
              if (v93)
              {
                goto LABEL_128;
              }
            }

LABEL_129:
            v94 = 0xFFFF;
          }

          else
          {
            if (v87 >= 0x4B)
            {
              v88 = v86[37];
              if (v88)
              {
                goto LABEL_121;
              }
            }

LABEL_125:
            v89 = -1;
            v90 = *v51;
            v91 = (*v51 - **v51);
            v92 = *v91;
            if (*(v51 + 38))
            {
              goto LABEL_126;
            }

LABEL_122:
            if (v92 < 0x49)
            {
              goto LABEL_129;
            }

            v93 = v91[36];
            if (!v93)
            {
              goto LABEL_129;
            }

LABEL_128:
            v94 = *&v90[v93];
          }

          v95 = v89 + 18000;
          v96 = v89 - 18000;
          if ((v95 >> 5) < 0x465u)
          {
            v96 = v95;
          }

          v97 = v94 - v96;
          if (v97 > 18000)
          {
            v97 -= 36000;
          }

          if (v97 < -17999)
          {
            v97 += 36000;
          }

          v98 = *(v26 + 40);
          if (*(a1 + 146) != 1 || (v99 = *v27, *v27 == v98) || fabs(v97 / 100.0) <= *(a1 + 19))
          {
            sub_318AE8(v27, *(v26 + 40), v229[0], v229[1], 0xAAAAAAAAAAAAAAABLL * ((v229[1] - v229[0]) >> 2));
            v215 = v43;
          }

          else
          {
            v213 = *&v49;
            v202 = v47;
            v203 = v46;
            v100 = *(a1 + 20);
            v196 = *&v100;
            v101 = (v99 + 12);
            v200 = v99 + 12;
            for (i = 0.0; v101 != v98; v101 += 3)
            {
              LODWORD(v100) = *(v101 - 2);
              v103 = exp(3.14159265 - *&v100 * v213 / 4294967300.0);
              *&v104 = atan((v103 - 1.0 / v103) * 0.5) * 57.2957795;
              LODWORD(v105) = *(v101 - 3);
              HIDWORD(v105) = *v101;
              v205 = v105;
              v106 = *&v104 * 0.0174532925;
              LODWORD(v104) = v101[1];
              v107 = exp(3.14159265 - v104 * v213 / 4294967300.0);
              v108 = atan((v107 - 1.0 / v107) * 0.5) * 57.2957795 * 0.0174532925;
              v109.i64[0] = v205;
              v109.i64[1] = HIDWORD(v205);
              v110 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v109), v219), v217), v218), v216);
              v206 = vsubq_f64(v110, vdupq_laneq_s64(v110, 1)).f64[0];
              v111 = sin((v106 - v108) * 0.5);
              v112 = v111 * v111;
              v113 = cos(v106);
              v114 = v113 * cos(v108);
              v115 = sin(0.5 * v206);
              v116 = v115 * v115 * v114 + v112;
              v48 = 1.0;
              v117 = atan2(sqrt(v116), sqrt(1.0 - v116));
              v100 = (v117 + v117) * 6372797.56;
              i = i + v100;
            }

            LOBYTE(v245) = 0;
            if (0xAAAAAAAAAAAAAAABLL * ((v98 - v99) >> 2) > 1)
            {
              v240 = 0;
              __dst = 0u;
              v227 = 0u;
              v118 = fmax(v48 - v196 / 100.0 / i, 0.0);
              v228 = 0u;
              v247[0] = 0;
              v119 = (v99 + 12);
              if (v200 == v98)
              {
                *&v221 = v118 * 0.0;
                v223[0] = v247;
                v223[1] = &__dst;
                v224[0] = &v245;
                v224[1] = &v240;
                *&v225 = &v221;
              }

              else
              {
                v197 = v118;
                v120 = 0.0;
                do
                {
                  LODWORD(v118) = *(v119 - 2);
                  v121 = exp(3.14159265 - *&v118 * v213 / 4294967300.0);
                  *&v122 = atan((v121 - 1.0 / v121) * 0.5) * 57.2957795;
                  LODWORD(v123) = *(v119 - 3);
                  HIDWORD(v123) = *v119;
                  v207 = v123;
                  v124 = *&v122 * 0.0174532925;
                  LODWORD(v122) = v119[1];
                  v125 = exp(3.14159265 - v122 * v213 / 4294967300.0);
                  v126 = atan((v125 - 1.0 / v125) * 0.5) * 57.2957795 * 0.0174532925;
                  v127.i64[0] = v207;
                  v127.i64[1] = HIDWORD(v207);
                  v128 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v127), v219), v217), v218), v216);
                  v208 = vsubq_f64(v128, vdupq_laneq_s64(v128, 1)).f64[0];
                  v129 = sin((v124 - v126) * 0.5);
                  v130 = v129 * v129;
                  v131 = cos(v124);
                  v132 = v131 * cos(v126);
                  v133 = sin(0.5 * v208);
                  v134 = v133 * v133 * v132 + v130;
                  v48 = 1.0;
                  v135 = atan2(sqrt(v134), sqrt(1.0 - v134));
                  v118 = (v135 + v135) * 6372797.56;
                  v120 = v120 + v118;
                  v119 += 3;
                }

                while (v119 != v98);
                v136 = v197 * v120;
                *&v221 = v197 * v120;
                v223[0] = v247;
                v223[1] = &__dst;
                v224[0] = &v245;
                v224[1] = &v240;
                *&v225 = &v221;
                if (v200 != v98)
                {
                  do
                  {
                    sub_316F0(v223, v99, (v99 + 12), v136);
                    v137 = v99 + 24;
                    v99 += 12;
                  }

                  while (v137 != v98);
                }
              }
            }

            else
            {
              sub_313A4(&__dst, v27, v27);
            }

            v138 = *(a1 + 20);
            v198 = *&v138;
            v139 = v229[0];
            v140 = v229[1];
            v141 = v229[0] + 12;
            v142 = v229[0] == v229[1] || v141 == v229[1];
            v143 = v142;
            v201 = v143;
            v144 = 0.0;
            v145 = 0.5;
            if (!v142)
            {
              v146 = v229[0] + 12;
              do
              {
                LODWORD(v138) = *(v146 - 2);
                v147 = exp(3.14159265 - *&v138 * v213 / 4294967300.0);
                *&v148 = atan((v147 - 1.0 / v147) * v145) * 57.2957795;
                LODWORD(v149) = *(v146 - 3);
                HIDWORD(v149) = *v146;
                v209 = v149;
                v150 = *&v148 * 0.0174532925;
                LODWORD(v148) = *(v146 + 1);
                v151 = exp(3.14159265 - v148 * v213 / 4294967300.0);
                v152 = atan((v151 - 1.0 / v151) * 0.5) * 57.2957795 * 0.0174532925;
                v153.i64[0] = v209;
                v153.i64[1] = HIDWORD(v209);
                v154 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v153), v219), v217), v218), v216);
                v210 = vsubq_f64(v154, vdupq_laneq_s64(v154, 1)).f64[0];
                v155 = sin((v150 - v152) * 0.5);
                v156 = v155 * v155;
                v157 = cos(v150);
                v158 = v157 * cos(v152);
                v159 = sin(0.5 * v210);
                v160 = v159 * v159 * v158;
                v145 = 0.5;
                v161 = v160 + v156;
                v162 = sqrt(v160 + v156);
                v48 = 1.0;
                v163 = atan2(v162, sqrt(1.0 - v161));
                v138 = (v163 + v163) * 6372797.56;
                v144 = v144 + v138;
                v146 += 12;
              }

              while (v146 != v140);
            }

            v247[0] = 0;
            if (0xAAAAAAAAAAAAAAABLL * ((v140 - v139) >> 2) > 1)
            {
              v164 = v198 / 100.0 / v144;
              *&v221 = 0.0;
              *v223 = 0u;
              *v224 = 0u;
              v165 = fmin(v164, v48);
              v225 = 0u;
              v246 = 0;
              a8 = v204;
              if (v201)
              {
                v245 = v165 * 0.0;
                v240 = &v246;
                v241 = v223;
                v242 = v247;
                v243 = &v221;
                v244 = &v245;
                v47 = v202;
                v46 = v203;
                *&v49 = v213;
              }

              else
              {
                v199 = v165;
                v166 = 0.0;
                do
                {
                  LODWORD(v164) = *(v141 - 2);
                  v167 = exp(3.14159265 - *&v164 * v213 / 4294967300.0);
                  *&v168 = atan((v167 - 1.0 / v167) * 0.5) * 57.2957795;
                  LODWORD(v169) = *(v141 - 3);
                  HIDWORD(v169) = *v141;
                  v211 = v169;
                  v170 = *&v168 * 0.0174532925;
                  LODWORD(v168) = *(v141 + 1);
                  v171 = exp(3.14159265 - v168 * v213 / 4294967300.0);
                  v172 = atan((v171 - 1.0 / v171) * 0.5) * 57.2957795 * 0.0174532925;
                  v173.i64[0] = v211;
                  v173.i64[1] = HIDWORD(v211);
                  v174 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v173), v219), v217), v218), v216);
                  v212 = vsubq_f64(v174, vdupq_laneq_s64(v174, 1)).f64[0];
                  v175 = sin((v170 - v172) * 0.5);
                  v176 = v175 * v175;
                  v177 = cos(v170);
                  v178 = v177 * cos(v172);
                  v179 = sin(0.5 * v212);
                  v180 = v179 * v179 * v178 + v176;
                  v48 = 1.0;
                  v181 = atan2(sqrt(v180), sqrt(1.0 - v180));
                  v164 = (v181 + v181) * 6372797.56;
                  v166 = v166 + v164;
                  v141 += 12;
                }

                while (v141 != v140);
                v182 = v199 * v166;
                v245 = v199 * v166;
                v240 = &v246;
                v241 = v223;
                v242 = v247;
                v243 = &v221;
                v244 = &v245;
                v47 = v202;
                v46 = v203;
                *&v49 = v213;
                if ((v201 & 1) == 0)
                {
                  do
                  {
                    sub_316F0(&v240, v139, v139 + 3, v182);
                    v183 = (v139 + 3);
                    v139 = (v139 + 12);
                  }

                  while (v183 != v140);
                }
              }
            }

            else
            {
              sub_313A4(v223, v229, v229);
              a8 = v204;
              v47 = v202;
              v46 = v203;
              *&v49 = v213;
            }

            v240 = 0;
            v241 = 0;
            v242 = 0;
            if (v228 != *(&v227 + 1))
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v228 - *(&v227 + 1)) >> 2) < 0x1555555555555556)
              {
                operator new();
              }

              sub_1794();
            }

            sub_318AE8(&v240, 0, v223[0], v223[1], 0xAAAAAAAAAAAAAAABLL * ((v223[1] - v223[0]) >> 2));
            v12 = a2;
            if (0xAAAAAAAAAAAAAAABLL * ((v241 - v240) >> 2) > 1)
            {
              v184 = ceil(a1[20] / 100.0);
              sub_45324(&v240, (v184 + v184), &v221, *(a1 + 22), *(a1 + 24));
              if (v27 != &__dst)
              {
                sub_35354C(v27, __dst, *(&__dst + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&__dst + 1) - __dst) >> 2));
              }

              sub_318AE8(v27, *(v26 + 40), v221, v222, 0xAAAAAAAAAAAAAAABLL * ((v222 - v221) >> 2));
              sub_318AE8(v27, *(v26 + 40), v224[1], v225, 0xAAAAAAAAAAAAAAABLL * ((v225 - v224[1]) >> 2));
              sub_F533CC(&v231, v43);
              if (*&v221 != 0.0)
              {
                v222 = v221;
                operator delete(v221);
              }
            }

            else
            {
              sub_318AE8(v27, *(v26 + 40), v229[0], v229[1], 0xAAAAAAAAAAAAAAABLL * ((v229[1] - v229[0]) >> 2));
            }

            if (v240)
            {
              v241 = v240;
              operator delete(v240);
            }

            if (v224[1])
            {
              *&v225 = v224[1];
              operator delete(v224[1]);
            }

            if (v223[0])
            {
              v223[1] = v223[0];
              operator delete(v223[0]);
            }

            if (*(&v227 + 1))
            {
              *&v228 = *(&v227 + 1);
              operator delete(*(&v227 + 1));
            }

            if (__dst)
            {
              *(&__dst + 1) = __dst;
              operator delete(__dst);
            }

            v215 = v43;
          }

          goto LABEL_92;
        }

        if (v27 != v229)
        {
          sub_35354C(v27, v229[0], v229[1], 0xAAAAAAAAAAAAAAABLL * ((v229[1] - v229[0]) >> 2));
        }
      }

LABEL_92:
      if (v229[0])
      {
        v229[1] = v229[0];
        operator delete(v229[0]);
      }

      ++v43;
    }

    while (v43 != v45);
  }

  if (*(v26 + 32) != *(v26 + 40))
  {
    ++*(a1[37] + 13);
    v185 = v232;
    *a8 = v231;
    *(a8 + 16) = v185;
    *(a8 + 32) = v233;
    v186 = v234;
    v234 = 0uLL;
    *(a8 + 40) = v186;
    v187 = v235;
    *(a8 + 56) = v235;
    *(a8 + 72) = __p;
    if (*(&v187 + 1))
    {
      v188 = *(v187 + 8);
      if ((*(&v186 + 1) & (*(&v186 + 1) - 1)) != 0)
      {
        if (v188 >= *(&v186 + 1))
        {
          v188 %= *(&v186 + 1);
        }
      }

      else
      {
        v188 &= *(&v186 + 1) - 1;
      }

      *(v186 + 8 * v188) = a8 + 56;
      v235 = 0uLL;
    }

    *(a8 + 80) = v237;
    *(a8 + 96) = v238;
    v238 = 0;
    v237 = 0uLL;
    v193 = v235;
    if (v235)
    {
      goto LABEL_207;
    }

    goto LABEL_208;
  }

  *a8 = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 8) = 0x7FFFFFFFFFFFFFFFLL;
  *(a8 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a8 + 32) = 3;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  *(a8 + 72) = 1065353216;
  *(a8 + 88) = 0;
  *(a8 + 96) = 0;
  *(a8 + 80) = 0;
LABEL_198:
  v189 = v237;
  if (v237)
  {
    v190 = *(&v237 + 1);
    v191 = v237;
    if (*(&v237 + 1) != v237)
    {
      do
      {
        v192 = *(v190 - 64);
        if (v192)
        {
          *(v190 - 56) = v192;
          operator delete(v192);
        }

        v190 -= 96;
      }

      while (v190 != v189);
      v191 = v237;
    }

    *(&v237 + 1) = v189;
    operator delete(v191);
  }

  v193 = v235;
  if (v235)
  {
    do
    {
LABEL_207:
      v194 = *v193;
      operator delete(v193);
      v193 = v194;
    }

    while (v194);
  }

LABEL_208:
  v195 = v234;
  *&v234 = 0;
  if (v195)
  {
    operator delete(v195);
  }
}

void sub_F385D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  v52 = *(v50 - 216);
  if (v52)
  {
    *(v50 - 208) = v52;
    operator delete(v52);
  }

  sub_21DB4B4(&a35);
  sub_21DB4B4(&a41);
  if (__p)
  {
    a48 = __p;
    operator delete(__p);
    sub_F38730(va);
    _Unwind_Resume(a1);
  }

  sub_F38730(va);
  _Unwind_Resume(a1);
}

void *sub_F38730(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    v3 = a1[11];
    v4 = a1[10];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 64);
        if (v5)
        {
          *(v3 - 56) = v5;
          operator delete(v5);
        }

        v3 -= 96;
      }

      while (v3 != v2);
      v4 = a1[10];
    }

    a1[11] = v2;
    operator delete(v4);
  }

  v6 = a1[7];
  if (v6)
  {
    do
    {
      v7 = *v6;
      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  v8 = a1[5];
  a1[5] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return a1;
}

void **sub_F387CC(void **a1)
{
  if (*a1)
  {
    sub_F48288(a1, *a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_F38808(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a3;
  if (*(a3 + 8) - v8 < 0x11uLL)
  {
    v110 = 0xFFFFFFFF00000000;
  }

  else
  {
    v110 = *(v8 + 1);
  }

  sub_F3904C(a1, a2, v8, &v110, 1, &v100);
  if (*(&v100 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(&v101 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v108;
    if (v108 != *(&v108 + 1))
    {
      while (*(v11 + 32) != *(v11 + 40))
      {
        v11 += 96;
        if (v11 == *(&v108 + 1))
        {
          if (sub_45AC50(&v100))
          {
            v12 = sub_45AC50(&v100);
            v13 = sub_588D8(&v100);
            sub_F3700C(a1, a2, 0, 0, v12, v13, 0, &v90);
            if (*(&v90 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(&v91 + 1) != 0x7FFFFFFFFFFFFFFFLL)
            {
              v14 = __p[0];
              if (__p[0] != __p[1])
              {
                while (v14[4] != v14[5])
                {
                  v14 += 12;
                  if (v14 == __p[1])
                  {
                    sub_F3B348(a1, &v100, &v90);
                    v15 = a4[1];
                    if (v15 >= a4[2])
                    {
                      sub_F47DA0(a4, &v90);
                    }

                    else
                    {
                      v16 = v90;
                      v17 = v91;
                      *(v15 + 32) = v92;
                      *v15 = v16;
                      *(v15 + 16) = v17;
                      v18 = v93;
                      v19 = v95;
                      v93 = 0;
                      *(v15 + 56) = v95;
                      *(v15 + 40) = v18;
                      *(v15 + 48) = v94;
                      v94 = 0;
                      v20 = v96;
                      *(v15 + 64) = v96;
                      *(v15 + 72) = v97;
                      if (v20)
                      {
                        v21 = v19[1];
                        v22 = *(v15 + 48);
                        if ((v22 & (v22 - 1)) != 0)
                        {
                          if (v21 >= v22)
                          {
                            v21 %= v22;
                          }
                        }

                        else
                        {
                          v21 &= v22 - 1;
                        }

                        v18[v21] = v15 + 56;
                        v95 = 0;
                        v96 = 0;
                      }

                      *(v15 + 80) = 0;
                      *(v15 + 88) = 0;
                      *(v15 + 96) = 0;
                      *(v15 + 80) = *__p;
                      *(v15 + 96) = v99;
                      __p[0] = 0;
                      __p[1] = 0;
                      v99 = 0;
                      v82 = v15 + 104;
                      a4[1] = v15 + 104;
                    }

                    a4[1] = v82;
                    if (v82 < a4[2])
                    {
                      v83 = v100;
                      v84 = v101;
                      *(v82 + 32) = v102;
                      *v82 = v83;
                      *(v82 + 16) = v84;
                      v85 = v103;
                      v86 = v105;
                      v103 = 0;
                      *(v82 + 56) = v105;
                      *(v82 + 40) = v85;
                      *(v82 + 48) = v104;
                      v104 = 0;
                      v87 = v106;
                      *(v82 + 64) = v106;
                      *(v82 + 72) = v107;
                      if (v87)
                      {
                        v88 = v86[1];
                        v89 = *(v82 + 48);
                        if ((v89 & (v89 - 1)) != 0)
                        {
                          if (v88 >= v89)
                          {
                            v88 %= v89;
                          }
                        }

                        else
                        {
                          v88 &= v89 - 1;
                        }

                        v85[v88] = v82 + 56;
                        v105 = 0;
                        v106 = 0;
                      }

                      *(v82 + 80) = 0;
                      *(v82 + 88) = 0;
                      *(v82 + 96) = 0;
                      *(v82 + 80) = v108;
                      *(v82 + 96) = v109;
                      v108 = 0uLL;
                      v109 = 0;
                      v74 = v82 + 104;
                      goto LABEL_85;
                    }

                    goto LABEL_73;
                  }
                }
              }
            }

            v43 = a4[1];
            if (v43 >= a4[2])
            {
LABEL_73:
              sub_F47DA0(a4, &v100);
            }

            else
            {
              v44 = v100;
              v45 = v101;
              *(v43 + 32) = v102;
              *v43 = v44;
              *(v43 + 16) = v45;
              v46 = v103;
              v47 = v105;
              v103 = 0;
              *(v43 + 56) = v105;
              *(v43 + 40) = v46;
              *(v43 + 48) = v104;
              v104 = 0;
              v48 = v106;
              *(v43 + 64) = v106;
              *(v43 + 72) = v107;
              if (v48)
              {
                v49 = v47[1];
                v50 = *(v43 + 48);
                if ((v50 & (v50 - 1)) != 0)
                {
                  if (v49 >= v50)
                  {
                    v49 %= v50;
                  }
                }

                else
                {
                  v49 &= v50 - 1;
                }

                v46[v49] = v43 + 56;
                v105 = 0;
                v106 = 0;
              }

              *(v43 + 80) = 0;
              *(v43 + 88) = 0;
              *(v43 + 96) = 0;
              *(v43 + 80) = v108;
              *(v43 + 96) = v109;
              v108 = 0uLL;
              v109 = 0;
              v74 = v43 + 104;
LABEL_85:
              a4[1] = v74;
            }

            a4[1] = v74;
            ++*(*(a1 + 296) + 48);
            v76 = __p[0];
            if (__p[0])
            {
              v77 = __p[1];
              v78 = __p[0];
              if (__p[1] != __p[0])
              {
                do
                {
                  v79 = *(v77 - 8);
                  if (v79)
                  {
                    *(v77 - 7) = v79;
                    operator delete(v79);
                  }

                  v77 -= 96;
                }

                while (v77 != v76);
                v78 = __p[0];
              }

              __p[1] = v76;
              operator delete(v78);
            }

            v80 = v95;
            if (v95)
            {
              do
              {
                v81 = *v80;
                operator delete(v80);
                v80 = v81;
              }

              while (v81);
            }

            goto LABEL_54;
          }

          v66 = a4[1];
          if (v66 >= a4[2])
          {
            sub_F47DA0(a4, &v100);
          }

          else
          {
            v67 = v100;
            v68 = v101;
            *(v66 + 32) = v102;
            *v66 = v67;
            *(v66 + 16) = v68;
            v69 = v103;
            v70 = v105;
            v103 = 0;
            *(v66 + 56) = v105;
            *(v66 + 40) = v69;
            *(v66 + 48) = v104;
            v104 = 0;
            v71 = v106;
            *(v66 + 64) = v106;
            *(v66 + 72) = v107;
            if (v71)
            {
              v72 = v70[1];
              v73 = *(v66 + 48);
              if ((v73 & (v73 - 1)) != 0)
              {
                if (v72 >= v73)
                {
                  v72 %= v73;
                }
              }

              else
              {
                v72 &= v73 - 1;
              }

              v69[v72] = v66 + 56;
              v105 = 0;
              v106 = 0;
            }

            *(v66 + 80) = 0;
            *(v66 + 88) = 0;
            *(v66 + 96) = 0;
            *(v66 + 80) = v108;
            *(v66 + 96) = v109;
            v108 = 0uLL;
            v109 = 0;
            v75 = v66 + 104;
            a4[1] = v66 + 104;
          }

          a4[1] = v75;
          ++*(*(a1 + 296) + 48);
          v59 = v108;
          if (v108)
          {
            goto LABEL_57;
          }

          goto LABEL_64;
        }
      }
    }
  }

  v24 = **a3;
  v23 = *(*a3 + 8);
  v25 = sub_3187E8(*(a1 + 8), v24, 1);
  if (v25 && (v26 = &v25[-*v25], *v26 >= 5u) && (v27 = *(v26 + 2)) != 0 && (v28 = &v25[v27], v29 = *v28, *&v28[v29] > HIDWORD(v24)) && (v30 = sub_319480(&v28[v29], v24)) != 0)
  {
    v31 = (v30 - *v30);
    if (*v31 >= 7u && (v32 = v31[3]) != 0)
    {
      v33 = *(v30 + v32);
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_F3700C(a1, a2, 0, 0, v23, v33, 0, &v90);
  if (*(&v90 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(&v91 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v34 = __p[0];
    if (__p[0] != __p[1])
    {
      while (v34[4] != v34[5])
      {
        v34 += 12;
        if (v34 == __p[1])
        {
          v35 = a4[1];
          if (v35 >= a4[2])
          {
            sub_F47DA0(a4, &v90);
            a4[1] = v51;
            break;
          }

          v36 = v90;
          v37 = v91;
          *(v35 + 32) = v92;
          *v35 = v36;
          *(v35 + 16) = v37;
          v38 = v93;
          v39 = v95;
          v93 = 0;
          *(v35 + 56) = v95;
          *(v35 + 40) = v38;
          *(v35 + 48) = v94;
          v94 = 0;
          v40 = v96;
          *(v35 + 64) = v96;
          *(v35 + 72) = v97;
          if (v40)
          {
            v41 = v39[1];
            v42 = *(v35 + 48);
            if ((v42 & (v42 - 1)) != 0)
            {
              if (v41 >= v42)
              {
                v41 %= v42;
              }
            }

            else
            {
              v41 &= v42 - 1;
            }

            v38[v41] = v35 + 56;
            v95 = 0;
            v96 = 0;
          }

          *(v35 + 80) = 0;
          *(v35 + 88) = 0;
          *(v35 + 96) = 0;
          *(v35 + 80) = *__p;
          *(v35 + 96) = v99;
          __p[0] = 0;
          __p[1] = 0;
          v99 = 0;
          a4[1] = v35 + 104;
          a4[1] = v35 + 104;
          ++*(*(a1 + 296) + 68);
          v52 = __p[0];
          if (__p[0])
          {
            goto LABEL_45;
          }

          goto LABEL_52;
        }
      }
    }
  }

  ++*(*(a1 + 296) + 68);
  v52 = __p[0];
  if (__p[0])
  {
LABEL_45:
    v53 = __p[1];
    v54 = v52;
    if (__p[1] != v52)
    {
      do
      {
        v55 = *(v53 - 8);
        if (v55)
        {
          *(v53 - 7) = v55;
          operator delete(v55);
        }

        v53 -= 96;
      }

      while (v53 != v52);
      v54 = __p[0];
    }

    __p[1] = v52;
    operator delete(v54);
  }

LABEL_52:
  v56 = v95;
  if (v95)
  {
    do
    {
      v57 = *v56;
      operator delete(v56);
      v56 = v57;
    }

    while (v57);
  }

LABEL_54:
  v58 = v93;
  v93 = 0;
  if (v58)
  {
    operator delete(v58);
  }

  v59 = v108;
  if (v108)
  {
LABEL_57:
    v60 = *(&v108 + 1);
    v61 = v59;
    if (*(&v108 + 1) != v59)
    {
      do
      {
        v62 = *(v60 - 8);
        if (v62)
        {
          *(v60 - 7) = v62;
          operator delete(v62);
        }

        v60 -= 96;
      }

      while (v60 != v59);
      v61 = v108;
    }

    *(&v108 + 1) = v59;
    operator delete(v61);
  }

LABEL_64:
  v63 = v105;
  if (v105)
  {
    do
    {
      v64 = *v63;
      operator delete(v63);
      v63 = v64;
    }

    while (v64);
  }

  v65 = v103;
  v103 = 0;
  if (v65)
  {
    operator delete(v65);
  }
}