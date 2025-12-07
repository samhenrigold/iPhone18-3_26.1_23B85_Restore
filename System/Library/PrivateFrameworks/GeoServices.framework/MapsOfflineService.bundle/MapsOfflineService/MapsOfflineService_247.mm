void sub_F18318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_F1A104(&a15);
  _Unwind_Resume(a1);
}

void sub_F18370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 38) != 1)
  {
    return;
  }

  v5 = *(a4 + 64);
  if (v5 && (v6 = *(a4 + 56), v6 < *v5))
  {
    *(a4 + 56) = v6 + 1;
    v7 = *&v5[2 * v6 + 2];
  }

  else
  {
    v9 = sub_1862ABC(*(a4 + 48));
    v7 = sub_19593CC(a4 + 48, v9);
  }

  v10 = *(v7 + 40);
  *(v7 + 160) = *(v7 + 56);
  v11 = v10 | 0x84;
  *(v7 + 40) = v10 | 0x84;
  *(v7 + 136) = 62;
  v12 = *(a3 + 2304);
  if (v12 != 0x7FFFFFFF)
  {
    v13 = v12 / 10;
    v14 = v12 % 10;
    if (v12 < 0)
    {
      v15 = -5;
    }

    else
    {
      v15 = 5;
    }

    v16 = v13 + (((103 * (v15 + v14)) >> 15) & 1) + ((103 * (v15 + v14)) >> 10);
    v11 = v10 | 0xA4;
    *(v7 + 152) = v16;
  }

  *(v7 + 168) = *(a3 + 2308);
  *(v7 + 40) = v11 | 0x208;
  *(v7 + 140) = 0;
  if (!(**(a3 + 2296))(a3 + 2296))
  {
    return;
  }

  v17 = *(v7 + 64);
  if (v17 && (v18 = *(v7 + 56), v18 < *v17))
  {
    v19 = &v17[2 * v18];
    v20 = v18 + 1;
    *(v7 + 56) = v18 + 1;
    v21 = *(v19 + 1);
  }

  else
  {
    v22 = sub_1862A04(*(v7 + 48));
    v21 = sub_19593CC(v7 + 48, v22);
    v20 = *(v7 + 56);
  }

  *(v7 + 40) |= 0x80u;
  *(v7 + 160) = v20;
  *(v21 + 44) |= 0x2000000u;
  v23 = *(v21 + 520);
  if (!v23)
  {
    v24 = *(v21 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    sub_141BF4C(v25);
    v23 = v26;
    *(v21 + 520) = v26;
  }

  nullsub_1();
  v28 = *(v23 + 16);
  *(v23 + 16) = v28 | 0x80;
  *(v23 + 80) = v29;
  if (*(a3 + 2320) == -1 && *(a3 + 2324) == -1)
  {
    v30 = *(a3 + 2332);
    if (v30 == 0x7FFFFFFF)
    {
      goto LABEL_23;
    }

LABEL_53:
    *(v23 + 16) |= 0x100u;
    *(v23 + 88) = v30 - 978307200;
    v31 = *(a3 + 2336);
    if (v31 >> 5 > 0x464)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  *(v23 + 16) = v28 | 0x88;
  v42 = *(v23 + 48);
  if (!v42)
  {
    v43 = *(v23 + 8);
    v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
    if (v43)
    {
      v44 = *v44;
    }

    v42 = sub_16F5828(v44);
    *(v23 + 48) = v42;
  }

  sub_EC6D34((a3 + 2320), v42, v27);
  v30 = *(a3 + 2332);
  if (v30 != 0x7FFFFFFF)
  {
    goto LABEL_53;
  }

LABEL_23:
  v31 = *(a3 + 2336);
  if (v31 >> 5 <= 0x464)
  {
LABEL_24:
    v32 = v31 / 100.0;
    *(v23 + 16) |= 0x200u;
    *(v23 + 96) = v32;
  }

LABEL_25:
  v33 = *(a3 + 2344);
  if (*&v33 > -1 && ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v33 - 1) < 0xFFFFFFFFFFFFFLL || (*&v33 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v33 = v33 / 3.6;
    *&v33 = v33;
    *(v23 + 16) |= 0x400u;
    *(v23 + 100) = LODWORD(v33);
  }

  LODWORD(v33) = *(a3 + 2352);
  v37 = vmovl_u8(*&v33);
  v37.n128_u64[0] = vuzp1_s8(v37.n128_u64[0], v37.n128_u64[0]);
  if (v37.n128_u32[0] == 0xFFFFFF)
  {
    goto LABEL_41;
  }

  sub_58719C((a3 + 2352), &__p);
  *(v23 + 16) |= 4u;
  v38 = *(v23 + 8);
  v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
  if (v38)
  {
    v39 = *v39;
  }

  sub_194EA30((v23 + 40), &__p, v39);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v40 = (a3 + 2360);
    v41 = *(a3 + 2392);
    if (v41 <= 2)
    {
LABEL_42:
      if (v41 == 1)
      {
        if (*v40 == -1)
        {
          return;
        }
      }

      else if (v41 != 2 || *(a3 + 2364) == -1 && *(a3 + 2360) == -1 && *(a3 + 2368) == *(a3 + 2376))
      {
        return;
      }

      goto LABEL_63;
    }
  }

  else
  {
LABEL_41:
    v40 = (a3 + 2360);
    v41 = *(a3 + 2392);
    if (v41 <= 2)
    {
      goto LABEL_42;
    }
  }

  if (v41 == 3 || v41 == 4)
  {
    v45 = *(a3 + 2383);
    if ((v45 & 0x80u) != 0)
    {
      v45 = *(a3 + 2368);
    }

    if (v45)
    {
LABEL_63:
      *(v23 + 16) |= 0x40u;
      v46 = *(v23 + 72);
      if (!v46)
      {
        v47 = *(v23 + 8);
        v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
        if (v47)
        {
          v48 = *v48;
        }

        v46 = sub_14BF484(v48);
        *(v23 + 72) = v46;
      }

      sub_586C94(v40, v46, v37);
    }
  }
}

void sub_F187DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F187F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 42) == 1)
  {
    v5 = *(a4 + 64);
    if (v5 && (v6 = *(a4 + 56), v6 < *v5))
    {
      *(a4 + 56) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
    }

    else
    {
      v9 = sub_1862ABC(*(a4 + 48));
      v7 = sub_19593CC(a4 + 48, v9);
    }

    v10 = *(v7 + 40);
    *(v7 + 160) = *(v7 + 56);
    v11 = v10 | 0x84;
    *(v7 + 40) = v10 | 0x84;
    *(v7 + 136) = 105;
    v12 = *(a3 + 1224);
    if (v12 != 0x7FFFFFFF)
    {
      v13 = v12 / 10;
      v14 = v12 % 10;
      if (v12 < 0)
      {
        v15 = -5;
      }

      else
      {
        v15 = 5;
      }

      v16 = v13 + (((103 * (v15 + v14)) >> 15) & 1) + ((103 * (v15 + v14)) >> 10);
      v11 = v10 | 0xA4;
      *(v7 + 152) = v16;
    }

    *(v7 + 168) = *(a3 + 1228);
    *(v7 + 40) = v11 | 0x208;
    *(v7 + 140) = 0;
    if ((**(a3 + 1216))(a3 + 1216))
    {
      v17 = *(v7 + 64);
      if (v17 && (v18 = *(v7 + 56), v18 < *v17))
      {
        v19 = &v17[2 * v18];
        v20 = v18 + 1;
        *(v7 + 56) = v18 + 1;
        v21 = *(v19 + 1);
      }

      else
      {
        v22 = sub_1862A04(*(v7 + 48));
        v21 = sub_19593CC(v7 + 48, v22);
        v20 = *(v7 + 56);
      }

      *(v7 + 40) |= 0x80u;
      *(v7 + 160) = v20;
      *(v21 + 52) |= 4u;
      v23 = *(v21 + 848);
      if (!v23)
      {
        v24 = *(v21 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v23 = sub_1863310(v25);
        *(v21 + 848) = v23;
      }

      v26 = *(a3 + 1232);
      v27 = v26 / 100;
      v28 = v26 % 100;
      if (v26 < 0)
      {
        v29 = -50;
      }

      else
      {
        v29 = 50;
      }

      v30 = v27 + ((5243 * (v29 + v28)) >> 19) + ((5243 * (v29 + v28)) >> 31);
      v31 = v23[5].i32[0];
      v23[5].i32[0] = v31 | 2;
      v32 = *(a3 + 1240);
      v33 = v32 / 10;
      v34 = v32 % 10;
      if (v32 < 0)
      {
        v35 = -5;
      }

      else
      {
        v35 = 5;
      }

      v23[7].i32[0] = v30;
      v23[7].i32[1] = v33 + (((103 * (v35 + v34)) >> 15) & 1) + ((103 * (v35 + v34)) >> 10);
      v23[8] = vmovn_s64(*(a3 + 1248));
      v23[5].i32[0] = v31 | 0x1F;
      v36 = v23[6];
      if (v36)
      {
        v37 = (a3 + 1264);
      }

      else
      {
        v38 = v23[1];
        v39 = (*&v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38.i8[0])
        {
          v39 = *v39;
        }

        sub_14BAE64(v39);
        v36 = v40;
        v23[6] = v40;
        v37 = (a3 + 1264);
      }

      sub_64D110(v37, v36);
    }
  }
}

void sub_F18B20(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 43) == 1)
  {
    v6 = *(a4 + 64);
    if (v6 && (v7 = *(a4 + 56), v7 < *v6))
    {
      *(a4 + 56) = v7 + 1;
      v8 = *&v6[2 * v7 + 2];
    }

    else
    {
      v10 = sub_1862ABC(*(a4 + 48));
      v8 = sub_19593CC(a4 + 48, v10);
    }

    v11 = *(v8 + 40);
    *(v8 + 160) = *(v8 + 56);
    v12 = v11 | 0x84;
    *(v8 + 40) = v11 | 0x84;
    *(v8 + 136) = 106;
    v13 = *(a3 + 112);
    if (v13 != 0x7FFFFFFF)
    {
      v14 = v13 / 10;
      v15 = v13 % 10;
      if (v13 < 0)
      {
        v16 = -5;
      }

      else
      {
        v16 = 5;
      }

      v17 = v14 + (((103 * (v16 + v15)) >> 15) & 1) + ((103 * (v16 + v15)) >> 10);
      v12 = v11 | 0xA4;
      *(v8 + 152) = v17;
    }

    *(v8 + 168) = *(a3 + 116);
    *(v8 + 40) = v12 | 0x208;
    *(v8 + 140) = 0;
    if ((**(a3 + 104))(a3 + 104))
    {
      v18 = *(v8 + 64);
      if (v18 && (v19 = *(v8 + 56), v19 < *v18))
      {
        v20 = &v18[2 * v19];
        v21 = v19 + 1;
        *(v8 + 56) = v19 + 1;
        v22 = *(v20 + 1);
      }

      else
      {
        v23 = sub_1862A04(*(v8 + 48));
        v22 = sub_19593CC(v8 + 48, v23);
        v21 = *(v8 + 56);
      }

      *(v8 + 40) |= 0x80u;
      *(v8 + 160) = v21;
      *(v22 + 52) |= 8u;
      if (*(v22 + 856))
      {
        sub_4778DC(v26, *a1, a1[1]);
      }

      v24 = *(v22 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      *(v22 + 856) = sub_18633C8(v25);
      sub_4778DC(v26, *a1, a1[1]);
    }
  }
}

void sub_F19078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1218EBC(&a46);
    sub_D32AC0(&a54);
    _Unwind_Resume(a1);
  }

  sub_1218EBC(&a46);
  sub_D32AC0(&a54);
  _Unwind_Resume(a1);
}

void sub_F190EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 64);
  if (v4 && (v5 = *(a3 + 56), v5 < *v4))
  {
    *(a3 + 56) = v5 + 1;
    v6 = *&v4[2 * v5 + 2];
  }

  else
  {
    v8 = sub_185E6EC(*(a3 + 48));
    v6 = sub_19593CC(a3 + 48, v8);
  }

  nullsub_1();
  *(v6 + 40) |= 0x20u;
  *(v6 + 176) = v9;
  nullsub_1();
  *(v6 + 40) |= 0x40u;
  *(v6 + 184) = v11;
  v12 = *(a2 + 8);
  if (*a2 != v12)
  {
    v13 = *a2 + 208;
    do
    {
      v15 = *(v6 + 64);
      if (v15 && (v16 = *(v6 + 56), v16 < *v15))
      {
        *(v6 + 56) = v16 + 1;
        v17 = *&v15[2 * v16 + 2];
      }

      else
      {
        v18 = sub_185E748(*(v6 + 48));
        v17 = sub_19593CC(v6 + 48, v18);
      }

      nullsub_1();
      v19 = *(v17 + 40);
      *(v17 + 40) = v19 | 0x20;
      *(v17 + 88) = v20;
      if ((*(v13 - 169) & 0x8000000000000000) != 0)
      {
        if (!*(v13 - 184))
        {
LABEL_15:
          v21 = *(v13 - 208);
          if (v21 != 0x7FFFFFFF)
          {
            goto LABEL_16;
          }

          goto LABEL_17;
        }
      }

      else if (!*(v13 - 169))
      {
        goto LABEL_15;
      }

      *(v17 + 40) = v19 | 0x21;
      v32 = *(v17 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      sub_194EA1C((v17 + 48), (v13 - 192), v33);
      v21 = *(v13 - 208);
      if (v21 != 0x7FFFFFFF)
      {
LABEL_16:
        *(v17 + 40) |= 8u;
        *(v17 + 72) = v21 + -978307200.0;
      }

LABEL_17:
      v22 = *(v13 - 204);
      if (v22 != 0x7FFFFFFF && *(v13 - 200) == 1)
      {
        *(v17 + 40) |= 0x10u;
        *(v17 + 80) = v22 + -978307200.0;
      }

      if (*(v13 - 199) - 1 <= 1)
      {
        *(v17 + 40) |= 0x40u;
        *(v17 + 96) = 1;
        v23 = (v13 - 160);
        if (sub_4D1F6C((v13 - 160)))
        {
LABEL_22:
          v24 = *v13;
          if ((*v13 - 1) > 2)
          {
            goto LABEL_23;
          }

          goto LABEL_32;
        }
      }

      else
      {
        v23 = (v13 - 160);
        if (sub_4D1F6C((v13 - 160)))
        {
          goto LABEL_22;
        }
      }

      *(v17 + 40) |= 4u;
      v26 = *(v17 + 64);
      if (!v26)
      {
        v27 = *(v17 + 8);
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v28 = *v28;
        }

        sub_14BAE64(v28);
        v26 = v29;
        *(v17 + 64) = v29;
      }

      sub_64D110(v23, v26);
      v24 = *v13;
      if ((*v13 - 1) > 2)
      {
LABEL_23:
        v25 = *(v13 + 31);
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_33;
      }

LABEL_32:
      *(v17 + 40) |= 0x80u;
      *(v17 + 100) = v24;
      v25 = *(v13 + 31);
      if ((v25 & 0x8000000000000000) == 0)
      {
LABEL_24:
        if (v25)
        {
          goto LABEL_34;
        }

        goto LABEL_8;
      }

LABEL_33:
      if (*(v13 + 16))
      {
LABEL_34:
        *(v17 + 40) |= 2u;
        v30 = *(v17 + 8);
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v31 = *v31;
        }

        sub_194EA1C((v17 + 56), (v13 + 8), v31);
      }

LABEL_8:
      v14 = v13 + 32;
      v13 += 240;
    }

    while (v14 != v12);
  }

  v34 = *(a2 + 24);
  for (i = *(a2 + 32); v34 != i; v34 += 10)
  {
    while (1)
    {
      v38 = *(v6 + 88);
      if (v38 && (v39 = *(v6 + 80), v39 < *v38))
      {
        *(v6 + 80) = v39 + 1;
        v40 = *&v38[2 * v39 + 2];
      }

      else
      {
        sub_185E7A4(*(v6 + 72));
        v40 = sub_19593CC(v6 + 72, v41);
      }

      v42 = *v34 - 978307200;
      v43 = v40[4];
      v40[4] = v43 | 4;
      v40[8] = v42;
      v44 = v34[1] - 978307200;
      v40[4] = v43 | 0xC;
      v40[9] = v44;
      v45 = v34[3];
      if (v45 == v34[2])
      {
        break;
      }

      v36 = v45 / 10.0;
      v37 = v36;
      v40[4] = v43 | 0xE;
      v10.n128_u64[1] = SHIDWORD(v36);
      v10.n128_f64[0] = v34[2] / 10.0;
      v40[6] = v10.n128_f64[0];
      v40[7] = v37;
      v40[4] = v43 | 0xF;
      v34 += 10;
      if (v34 == i)
      {
        goto LABEL_50;
      }
    }

    v10.n128_u64[1] = v10.n128_i32[1];
    v10.n128_f64[0] = v34[4] / 10.0;
    v40[11] = v10.n128_f64[0];
    v40[4] = v43 | 0x2C;
  }

LABEL_50:
  if (*(a2 + 48) != 0x7FFFFFFF && *(a2 + 52) != 0x7FFFFFFF)
  {
    v46 = *(v6 + 112);
    if (v46 && (v47 = *(v6 + 104), v47 < *v46))
    {
      *(v6 + 104) = v47 + 1;
      v48 = *&v46[2 * v47 + 2];
    }

    else
    {
      v49 = sub_185D2C4(*(v6 + 96));
      v48 = sub_19593CC(v6 + 96, v49);
    }

    v50 = *(a2 + 48) - 978307200;
    v51 = v48[4];
    v48[4] = v51 | 1;
    v48[6] = v50;
    v52 = *(a2 + 52);
    if (v52 == 0x7FFFFFFF || (v53 = *(a2 + 48), v53 == 0x7FFFFFFF))
    {
      v54 = 2147483650.0;
    }

    else
    {
      v54 = (10 * (v52 - v53));
    }

    v10.n128_f64[0] = v54 / 10.0;
    v48[4] = v51 | 3;
    v48[7] = v10.n128_f64[0];
  }

  v55 = *(a2 + 95);
  if ((v55 & 0x80u) != 0)
  {
    v55 = *(a2 + 80);
  }

  if (v55)
  {
    *(v6 + 40) |= 1u;
    v56 = *(v6 + 8);
    v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
    if (v56)
    {
      v57 = *v57;
    }

    sub_194EA1C((v6 + 136), (a2 + 72), v57);
  }

  v58 = *(a2 + 119);
  if ((v58 & 0x80u) != 0)
  {
    v58 = *(a2 + 104);
  }

  if (v58)
  {
    *(v6 + 40) |= 2u;
    v59 = *(v6 + 8);
    v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
    if (v59)
    {
      v60 = *v60;
    }

    sub_194EA1C((v6 + 144), (a2 + 96), v60);
  }

  v61 = *(a2 + 143);
  if ((v61 & 0x80u) != 0)
  {
    v61 = *(a2 + 128);
  }

  if (v61)
  {
    *(v6 + 40) |= 4u;
    v62 = *(v6 + 8);
    v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
    if (v62)
    {
      v63 = *v63;
    }

    sub_194EA1C((v6 + 152), (a2 + 120), v63);
  }

  v64 = *(a2 + 144);
  v65 = *(a2 + 152);
  while (v64 != v65)
  {
    nullsub_1();
    v68 = v67;
    v69 = *(v6 + 120);
    if (v69 == *(v6 + 124))
    {
      v66 = v69 + 1;
      sub_1959094((v6 + 120), v69 + 1);
      *(*(v6 + 128) + 8 * v69) = v68;
    }

    else
    {
      *(*(v6 + 128) + 8 * v69) = v67;
      v66 = v69 + 1;
    }

    *(v6 + 120) = v66;
    v64 += 8;
  }

  v70 = *(a2 + 200);
  if (v70 <= 2)
  {
    if (v70 == 1)
    {
      if (*(a2 + 168) == -1)
      {
        goto LABEL_104;
      }
    }

    else if (v70 != 2 || *(a2 + 172) == -1 && *(a2 + 168) == -1 && *(a2 + 176) == *(a2 + 184))
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

  if (v70 == 3 || v70 == 4)
  {
    v71 = *(a2 + 191);
    if ((v71 & 0x80u) != 0)
    {
      v71 = *(a2 + 176);
    }

    if (v71)
    {
LABEL_99:
      *(v6 + 40) |= 0x10u;
      v72 = *(v6 + 168);
      if (!v72)
      {
        v73 = *(v6 + 8);
        v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
        if (v73)
        {
          v74 = *v74;
        }

        v72 = sub_14BF484(v74);
        *(v6 + 168) = v72;
      }

      sub_586C94(a2 + 168, v72, v10);
    }
  }

LABEL_104:
  if (*(a2 + 280) != -1)
  {
    nullsub_1();
    *(v6 + 40) |= 0x80u;
    *(v6 + 192) = v75;
  }

  v76 = *(a2 + 311);
  if ((v76 & 0x80u) != 0)
  {
    v76 = *(a2 + 296);
  }

  if (v76)
  {
    *(v6 + 40) |= 8u;
    v77 = *(v6 + 8);
    v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
    if (v77)
    {
      v78 = *v78;
    }

    sub_194EA1C((v6 + 160), (a2 + 288), v78);
  }
}

void sub_F19810(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = *(a3 + 88);
  if (v5 && (v6 = *(a3 + 80), v6 < *v5))
  {
    *(a3 + 80) = v6 + 1;
    v7 = *&v5[2 * v6 + 2];
  }

  else
  {
    v9 = sub_185E63C(*(a3 + 72));
    v7 = sub_19593CC(a3 + 72, v9);
  }

  v10 = *a2;
  v11 = *(a2 + 8);
  while (v10 != v11)
  {
    v13 = sub_2FEF94(*v10);
    v14 = v13;
    v15 = *(v7 + 24);
    if (v15 == *(v7 + 28))
    {
      v12 = v15 + 1;
      sub_1959094((v7 + 24), v15 + 1);
      *(*(v7 + 32) + 8 * v15) = v14;
    }

    else
    {
      *(*(v7 + 32) + 8 * v15) = v13;
      v12 = v15 + 1;
    }

    *(v7 + 24) = v12;
    ++v10;
  }

  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  while (v16 != v17)
  {
    v20 = *(v7 + 56);
    if (v20 && (v21 = *(v7 + 48), v21 < *v20))
    {
      *(v7 + 48) = v21 + 1;
      v19 = *&v20[2 * v21 + 2];
    }

    else
    {
      v18 = sub_185EA2C(*(v7 + 40));
      v19 = sub_19593CC(v7 + 40, v18);
    }

    sub_F234B8(v16, v19, a4);
    v16 += 36;
  }

  *(v7 + 16) |= 1u;
  v22 = *(v7 + 8);
  v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
  if (v22)
  {
    v23 = *v23;
  }

  sub_194EA1C((v7 + 64), (a2 + 56), v23);
  v24 = *(a2 + 48);
  *(v7 + 16) |= 2u;
  *(v7 + 72) = v24;
}

void sub_F19988(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  if (v5)
  {
    v6 = *(a3 + 48);
    if (v6 < *v5)
    {
      *(a3 + 48) = v6 + 1;
      if (*(a2 + 9))
      {
        return;
      }

LABEL_6:
      v9 = sub_3AFC64(*a1);
      sub_504EE0(v9, a2, &v29);
      v31 = 0;
      v32 = 0;
      v33 = 0;
      if (v30 != v29)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 2) <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1794();
      }

      v10 = 0;
      if (v29)
      {
        v30 = v29;
        operator delete(v29);
        v10 = v32;
      }

      __p = 0;
      v27 = 0;
      v28 = 0;
      sub_41DB4(&v31, 0xAAAAAAAAAAAAAAABLL * ((v10 - v31) >> 2), 0, 1, &__p, &v29, 1.0);
      if (__p)
      {
        operator delete(__p);
      }

      __p = 0;
      v27 = 0;
      v28 = 0;
      v11 = v30;
      if (v30)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v15 = sub_61B864(&v29, v13);
          if ((*v15 & v16) != 0)
          {
            v17 = sub_41224(&v31, v13);
            if (v12 < v28)
            {
              v14 = *v17;
              *(v12 + 8) = *(v17 + 8);
              *v12 = v14;
              v12 += 12;
            }

            else
            {
              v18 = __p;
              v19 = v12 - __p;
              v20 = 0xAAAAAAAAAAAAAAABLL * ((v12 - __p) >> 2);
              v21 = v20 + 1;
              if (v20 + 1 > 0x1555555555555555)
              {
                sub_1794();
              }

              if (0x5555555555555556 * ((v28 - __p) >> 2) > v21)
              {
                v21 = 0x5555555555555556 * ((v28 - __p) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v28 - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v22 = 0x1555555555555555;
              }

              else
              {
                v22 = v21;
              }

              if (v22)
              {
                if (v22 <= 0x1555555555555555)
                {
                  operator new();
                }

                sub_1808();
              }

              v23 = 12 * v20;
              v24 = *v17;
              *(v23 + 8) = *(v17 + 8);
              *v23 = v24;
              v12 = 12 * v20 + 12;
              v25 = (v23 - v19);
              memcpy((v23 - v19), v18, v19);
              __p = v25;
              v27 = v12;
              v28 = 0;
              if (v18)
              {
                operator delete(v18);
              }
            }

            v27 = v12;
          }

          ++v13;
        }

        while (v11 != v13);
      }

      sub_F20D00();
    }
  }

  v8 = sub_185EDA4(*(a3 + 40));
  sub_19593CC(a3 + 40, v8);
  if ((*(a2 + 9) & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_F19E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_F19EA0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = *(a3 + 56);
  if (v5)
  {
    v6 = *(a3 + 48);
    if (v6 < *v5)
    {
      *(a3 + 48) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
      v8 = *(a2 + 31);
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(a2 + 16);
      }

      if (!v8)
      {
        goto LABEL_13;
      }

LABEL_10:
      *(v7 + 40) |= 2u;
      v12 = *(v7 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_194EA1C((v7 + 128), (a2 + 8), v13);
      goto LABEL_13;
    }
  }

  v10 = sub_185E820(*(a3 + 40));
  v7 = sub_19593CC(a3 + 40, v10);
  v11 = *(a2 + 31);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 16);
  }

  if (v11)
  {
    goto LABEL_10;
  }

LABEL_13:
  if (*a2 != -1)
  {
    nullsub_1();
    *(v7 + 40) |= 0x20u;
    *(v7 + 160) = v14;
  }

  v15 = *(a2 + 55);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a2 + 40);
  }

  if (v15)
  {
    *(v7 + 40) |= 4u;
    v16 = *(v7 + 136);
    if (!v16)
    {
      v17 = *(v7 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v16 = sub_16F6144(v18);
      *(v7 + 136) = v16;
    }

    *(v16 + 4) |= 1u;
    v19 = v16[1];
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    sub_194EA1C(v16 + 3, (a2 + 32), v20);
    *(v7 + 40) |= 8u;
    v22 = *(v7 + 144);
    if (!v22)
    {
      v23 = *(v7 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_16F5828(v24);
      *(v7 + 144) = v22;
    }

    a4.n128_f64[0] = sub_EC6D34((a2 + 56), v22, v21);
  }

  if (*(a2 + 72) != *(a2 + 80))
  {
    *(v7 + 40) |= 0x10u;
    v25 = *(v7 + 152);
    if (!v25)
    {
      v26 = *(v7 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_1551A70(v27);
      *(v7 + 152) = v25;
    }

    sub_43735C(a2 + 72, v25);
  }

  v28 = *(a2 + 96);
  v29 = *(a2 + 104);
  while (v28 != v29)
  {
    v32 = *(v7 + 112);
    if (v32 && (v33 = *(v7 + 104), v33 < *v32))
    {
      *(v7 + 104) = v33 + 1;
      v31 = *&v32[2 * v33 + 2];
    }

    else
    {
      v30 = sub_185EA2C(*(v7 + 96));
      v31 = sub_19593CC(v7 + 96, v30);
    }

    sub_F234B8(v28, v31, a4);
    v28 += 36;
  }

  if (*(a2 + 148))
  {
    *(v7 + 40) |= 0x40u;
    *(v7 + 168) = 1;
  }
}

uint64_t sub_F1A104(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 48) = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 32));
        if (*(v3 - 41) < 0)
        {
LABEL_9:
          operator delete(*(v3 - 64));
        }
      }

      else if (*(v3 - 41) < 0)
      {
        goto LABEL_9;
      }

      v3 -= 72;
      if (v3 == v2)
      {
        v4 = *(a1 + 40);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v5 = *(a1 + 16);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_F1A1BC(unint64_t *a1, uint64_t a2)
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

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 40) = *(a2 + 40);
  *(v6 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(v6 + 64) = *(a2 + 64);
  v7 = 72 * v2 + 72;
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
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      *(v12 + 32) = *(v11 + 32);
      v14 = *(v11 + 40);
      *(v12 + 56) = *(v11 + 56);
      *(v12 + 40) = v14;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 40) = 0;
      *(v12 + 64) = *(v11 + 64);
      v11 += 72;
      v12 += 72;
    }

    while (v11 != v9);
    while (1)
    {
      if (*(v8 + 63) < 0)
      {
        operator delete(*(v8 + 40));
        if (*(v8 + 31) < 0)
        {
LABEL_19:
          operator delete(*(v8 + 8));
        }
      }

      else if (*(v8 + 31) < 0)
      {
        goto LABEL_19;
      }

      v8 += 72;
      if (v8 == v9)
      {
        v8 = *a1;
        break;
      }
    }
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

uint64_t *sub_F1A3BC(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_31;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6 ^ (v6 >> 33);
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v12[1];
      if (v15 == v7)
      {
        if (*(v12 + 4) == v4 && *(v12 + 5) == HIDWORD(v4))
        {
          return v12;
        }
      }

      else if ((v15 & (*&v8 - 1)) != v10)
      {
        goto LABEL_31;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v13 >= *&v8)
    {
      v13 %= *&v8;
    }

    if (v13 != v10)
    {
      goto LABEL_31;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  if (*(v12 + 4) != v4 || *(v12 + 5) != HIDWORD(v4))
  {
    goto LABEL_12;
  }

  return v12;
}

void sub_F1A730(std::string **a1, const void *a2, size_t __n, uint64_t *a4)
{
  if (__n >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (__n >= 0x17)
  {
    operator new();
  }

  v8 = __n;
  if (__n)
  {
    memcpy(&__dst, a2, __n);
  }

  *(&__dst + __n) = 0;
  sub_194EA1C(a1, &__dst, a4);
  if (v8 < 0)
  {
    operator delete(__dst);
  }
}

void sub_F1A824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F1A840()
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
  xmmword_27BF458 = 0u;
  unk_27BF468 = 0u;
  dword_27BF478 = 1065353216;
  sub_3A9A34(&xmmword_27BF458, v0, v0);
  sub_3A9A34(&xmmword_27BF458, v3, v3);
  sub_3A9A34(&xmmword_27BF458, __p, __p);
  sub_3A9A34(&xmmword_27BF458, v9, v9);
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
    qword_27BF430 = 0;
    qword_27BF438 = 0;
    qword_27BF428 = 0;
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

void sub_F1AA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BF440)
  {
    qword_27BF448 = qword_27BF440;
    operator delete(qword_27BF440);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F1AB34(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v3 = *(a3 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 1);
  }

  if (v3 < 3)
  {
    v5 = 0;
    return v5 & 1;
  }

  if (v4 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  v8 = *v7;
  v9 = *(v7 + 2);
  if (v8 == 11833 && v9 == 48)
  {
    v11 = *(a2 + 296);
    v12 = v11 ? v11 + 8 : 0;
    v13 = *(a2 + 288);
    if (v13)
    {
      v5 = 0;
      v14 = 8 * v13;
      do
      {
        if ((*(*v12 + 40) & 2) != 0)
        {
          a1 = sub_F1AC08(a1, *(*v12 + 56));
          v5 |= a1;
        }

        v12 += 8;
        v14 -= 8;
      }

      while (v14);
      return v5 & 1;
    }
  }

  return 0;
}

uint64_t sub_F1AC08(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 48);
  v4 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v4 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v4 + 8))
    {
      return 0;
    }
  }

  else if (!*(v4 + 23))
  {
    return 0;
  }

  v5 = sub_3110((*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL));
  v6 = *(v4 + 23);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v6 == v5)
    {
      goto LABEL_7;
    }

LABEL_13:
    if (v5 >= 4)
    {
      sub_194EC04(v3);
      *(a2 + 40) &= ~1u;
      return 1;
    }

    return 0;
  }

  if (*(v4 + 8) != v5)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (v5 >= 6)
  {
    v7 = v5;
    *(a2 + 40) |= 1u;
    v8 = *(a2 + 8);
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v10 = sub_194DB04(v3, *v9);
      v11 = *(v10 + 23);
      if ((v11 & 0x8000000000000000) == 0)
      {
LABEL_10:
        if (v11 > 4)
        {
LABEL_11:
          sub_148E0(v10, 5, v7 - 5);
          return 1;
        }

LABEL_18:
        sub_49D4();
      }
    }

    else
    {
      v10 = sub_194DB04(v3, v9);
      v11 = *(v10 + 23);
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }
    }

    if (v10[1] > 4)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  return 0;
}

void *sub_F1AD2C(uint64_t a1, int *a2)
{
  v3 = sub_1950D4C((a1 + 16), dword_278CFF0, 11, &off_2769490, 0);
  *(v3 + 4) |= 8u;
  v4 = v3[9];
  if (v4)
  {
    v5 = *a2;
    if (v5 == 0x7FFFFFFF)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = v3;
    v9 = v3[1];
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    sub_12D0EA4(v10);
    v4 = v11;
    v8[9] = v11;
    v5 = *a2;
    if (v5 == 0x7FFFFFFF)
    {
LABEL_3:
      v6 = *(a2 + 2);
      v7 = *(a2 + 1);
      if (v7 == v6)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  *(v4 + 16) |= 0x10u;
  *(v4 + 240) = v5;
  v6 = *(a2 + 2);
  v7 = *(a2 + 1);
  if (v7 == v6)
  {
    goto LABEL_12;
  }

LABEL_9:
  sub_73B58(v7, v6, ",", __p);
  *(v4 + 16) |= 1u;
  v12 = *(v4 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA1C((v4 + 208), __p, v13);
  if (v31 < 0)
  {
    operator delete(__p[0]);
    if (*(a2 + 32) != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_12:
  if (*(a2 + 32) == 1)
  {
LABEL_13:
    *(v4 + 16) |= 0x40u;
    *(v4 + 249) = 1;
  }

LABEL_14:
  v14 = *(a2 + 5);
  v15 = *(a2 + 6);
  while (v14 != v15)
  {
    v19 = *(v14 + 1);
    v20 = *(v14 + 2);
    v21 = *(v4 + 176);
    if (v21 && (v22 = *(v4 + 168), v22 < *v21))
    {
      *(v4 + 168) = v22 + 1;
      v17 = *&v21[2 * v22 + 2];
    }

    else
    {
      v16 = sub_12D0D28(*(v4 + 160));
      v17 = sub_19593CC(v4 + 160, v16);
    }

    v18 = *(v17 + 16);
    *(v17 + 28) = *v14 == 1;
    *(v17 + 24) = (v19 | v20) & 1;
    *(v17 + 25) = *(v14 + 3);
    *(v17 + 26) = *(v14 + 4);
    *(v17 + 16) = v18 | 0x1F;
    v14 += 32;
  }

  *(v4 + 16) |= 8u;
  v23 = *(v4 + 232);
  if (!v23)
  {
    v24 = *(v4 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    sub_131A21C(v25);
    v23 = v26;
    *(v4 + 232) = v26;
  }

  sub_EE27DC(__p, v23);
  v28 = *(a2 + 5);
  for (i = *(a2 + 6); v28 != i; v28 += 32)
  {
    sub_EE280C(__p, (v28 + 8));
  }

  return sub_EE11B4(__p);
}

void sub_F1AF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_F1AFC4(void *a1, uint64_t a2)
{
  *a1 = a2;
  sub_ED8398(a1 + 1, a2);
  sub_F1FC18((a1 + 6));
}

uint64_t *sub_F1B048@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 3);
  *(a1 + 48) = *a3;
  *(a1 + 51) = v8;
  if (a1 + 48 == a3)
  {
    v12 = *(a3 + 48);
    *(a1 + 80) = *(a3 + 32);
    *(a1 + 96) = v12;
    *(a1 + 112) = *(a3 + 64);
    *(a1 + 144) = *(a3 + 96);
    *(a1 + 200) = *(a3 + 152);
    v13 = *(a3 + 160);
    *(a1 + 216) = *(a3 + 168);
    *(a1 + 208) = v13;
  }

  else
  {
    sub_146EC((a1 + 56), *(a3 + 8), *(a3 + 16), (*(a3 + 16) - *(a3 + 8)) >> 2);
    v9 = *(a3 + 48);
    *(a1 + 80) = *(a3 + 32);
    *(a1 + 96) = v9;
    *(a1 + 112) = *(a3 + 64);
    if (a1 + 112 == a3 + 64)
    {
      *(a1 + 144) = *(a3 + 96);
    }

    else
    {
      sub_61532C((a1 + 120), *(a3 + 72), *(a3 + 80), (*(a3 + 80) - *(a3 + 72)) >> 3);
      *(a1 + 144) = *(a3 + 96);
      sub_146EC((a1 + 152), *(a3 + 104), *(a3 + 112), (*(a3 + 112) - *(a3 + 104)) >> 2);
      v10 = *(a3 + 151);
      if (*(a1 + 199) < 0)
      {
        if (v10 >= 0)
        {
          v14 = (a3 + 128);
        }

        else
        {
          v14 = *(a3 + 128);
        }

        if (v10 >= 0)
        {
          v15 = *(a3 + 151);
        }

        else
        {
          v15 = *(a3 + 136);
        }

        sub_13B38((a1 + 176), v14, v15);
      }

      else if ((*(a3 + 151) & 0x80) != 0)
      {
        sub_13A68((a1 + 176), *(a3 + 128), *(a3 + 136));
      }

      else
      {
        v11 = *(a3 + 128);
        *(a1 + 192) = *(a3 + 144);
        *(a1 + 176) = v11;
      }
    }

    *(a1 + 200) = *(a3 + 152);
    v16 = *(a3 + 160);
    *(a1 + 216) = *(a3 + 168);
    *(a1 + 208) = v16;
    sub_146EC((a1 + 224), *(a3 + 176), *(a3 + 184), (*(a3 + 184) - *(a3 + 176)) >> 2);
  }

  sub_1757EA4(a4, 0, 0);
  sub_3AF114();
  v18 = sub_2D5630(*v17);
  *(a4 + 40) |= 0x8000000u;
  *(a4 + 566) = v18;
  v19 = *a2;
  v20 = a2[1];
  if (*a2 != v20)
  {
    do
    {
      v21 = *(a4 + 368);
      if (v21 && (v22 = *(a4 + 360), v22 < *v21))
      {
        *(a4 + 360) = v22 + 1;
        v23 = *&v21[2 * v22 + 2];
        *(a4 + 40) |= 0x200000u;
        v24 = *(a4 + 544);
        if (!v24)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v25 = sub_14357EC(*(a4 + 352));
        v23 = sub_19593CC(a4 + 352, v25);
        *(a4 + 40) |= 0x200000u;
        v24 = *(a4 + 544);
        if (!v24)
        {
LABEL_23:
          v26 = *(a4 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          v24 = sub_14362B4(v27);
          *(a4 + 544) = v24;
        }
      }

      sub_F1B7C8(a1, v19, v23, v24);
      v19 += 412;
    }

    while (v19 != v20);
  }

  sub_F1BD0C(a1, a2 + 59, a4);
  *(a4 + 40) |= 0x200000u;
  v34 = *(a4 + 544);
  if (!v34)
  {
    v35 = *(a4 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    v34 = sub_14362B4(v36);
    *(a4 + 544) = v34;
  }

  sub_F1C3A4(a1, a2 + 3, v34, v33, v28, v29, v30, v31, v32);
  if (*(a2 + 124))
  {
    v72.n128_u64[0] = *(a2 + 124);
    v72.n128_u64[1] = &off_2669FE0;
    sub_434934(&v73, &v72);
    sub_EB8760();
    v37 = __p;
    if (__p)
    {
      v38 = v75;
      v39 = __p;
      if (v75 != __p)
      {
        do
        {
          if (*(v38 - 1) < 0)
          {
            operator delete(*(v38 - 3));
          }

          v38 -= 4;
        }

        while (v38 != v37);
        v39 = __p;
      }

      v75 = v37;
      operator delete(v39);
      if (a2[47] == a2[48])
      {
        goto LABEL_57;
      }

      goto LABEL_43;
    }
  }

  else
  {
    *(a4 + 40) |= 0x400000u;
    *(a4 + 552) = 0;
  }

  if (a2[47] == a2[48])
  {
    goto LABEL_57;
  }

LABEL_43:
  v40 = *(a2 + 375);
  if ((v40 & 0x80u) != 0)
  {
    v40 = a2[45];
  }

  if (v40)
  {
    *(a4 + 40) |= 0x80u;
    v41 = *(a4 + 432);
    if (!v41)
    {
      v42 = *(a4 + 8);
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
      if (v42)
      {
        v43 = *v43;
      }

      v41 = sub_141BDA4(v43);
      *(a4 + 432) = v41;
    }

    *(v41 + 40) |= 1u;
    v44 = *(v41 + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    sub_194EA1C((v41 + 64), a2 + 22, v45);
    v46 = a2[47];
    v47 = a2[48];
    if (v46 != v47)
    {
      v48 = (v41 + 48);
      v49 = *(v41 + 48);
      do
      {
        while (1)
        {
          v50 = *v46;
          if (v49 == *(v41 + 52))
          {
            break;
          }

          *(*(v41 + 56) + 4 * v49++) = v50;
          *v48 = v49;
          v46 += 2;
          if (v46 == v47)
          {
            goto LABEL_57;
          }
        }

        sub_1958E5C((v41 + 48), v49 + 1);
        *(*(v41 + 56) + 4 * v49++) = v50;
        *v48 = v49;
        v46 += 2;
      }

      while (v46 != v47);
    }
  }

LABEL_57:
  *(a4 + 40) |= 0x100000u;
  v51 = *(a4 + 536);
  if (v51)
  {
    v52 = *(a2 + 72);
    if (v52 == 0x7FFFFFFF)
    {
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  v53 = *(a4 + 8);
  v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
  if (v53)
  {
    v54 = *v54;
  }

  v51 = sub_14BD794(v54);
  *(a4 + 536) = v51;
  v52 = *(a2 + 72);
  if (v52 != 0x7FFFFFFF)
  {
LABEL_63:
    v55 = v52 + -978307200.0;
    v56 = *(v51 + 16);
    *(v51 + 16) = v56 | 1;
    *(v51 + 24) = v55;
    v57 = *(a2 + 74);
    if (v57 <= 1)
    {
      *(v51 + 16) = v56 | 5;
      *(v51 + 40) = v57;
    }
  }

LABEL_65:
  v58 = sub_1950D4C((a4 + 16), dword_278CFF0, 11, &off_2769490, 0);
  *(v58 + 4) |= 1u;
  v59 = v58[1];
  v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
  if (v59)
  {
    v60 = *v60;
  }

  sub_194EA1C(v58 + 6, a2 + 19, v60);
  *(a4 + 40) |= 0x40u;
  v61 = *(a4 + 8);
  v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
  if (v61)
  {
    v62 = *v62;
  }

  v63 = sub_194EA1C((a4 + 424), (a2 + 41), v62);
  *(a4 + 40) |= 0x4000000u;
  *(a4 + 565) = 1;
  v64 = a2[1];
  v65 = *a2;
  if (*a2 != v64)
  {
    v65 = *a2;
    while ((v65[144] & 1) == 0)
    {
      v65 += 412;
      if (v65 == v64)
      {
        goto LABEL_76;
      }
    }
  }

  if (v65 != v64)
  {
    v63 = sub_314EB0(0xDAB7EC1DD3431B57 * ((v65 - *a2) >> 5));
    *(a4 + 40) |= 0x1000000u;
    *(a4 + 560) = v63;
  }

LABEL_76:
  sub_F1C730(v63, a2 + 50, a4);
  sub_58568(&v72);
  sub_585EC(&v72, &v73);
  *(a4 + 40) |= 1u;
  v66 = *(a4 + 8);
  v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
  if (v66)
  {
    v67 = *v67;
  }

  sub_194EA30((a4 + 376), &v73, v67);
  if (SHIBYTE(__p) < 0)
  {
    operator delete(v73.n128_u64[0]);
    *(a4 + 40) |= 0x2000u;
    v68 = *(a4 + 480);
    if (v68)
    {
      return sub_F22DD4(a2 + 58, v68);
    }
  }

  else
  {
    *(a4 + 40) |= 0x2000u;
    v68 = *(a4 + 480);
    if (v68)
    {
      return sub_F22DD4(a2 + 58, v68);
    }
  }

  v69 = *(a4 + 8);
  v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL);
  if (v69)
  {
    v70 = *v70;
  }

  v68 = sub_1436310(v70);
  *(a4 + 480) = v68;
  return sub_F22DD4(a2 + 58, v68);
}

void sub_F1B6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_CF3C94(va);
  sub_1758FB8(v9);
  _Unwind_Resume(a1);
}

void sub_F1B72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_1758FB8(v18);
    _Unwind_Resume(a1);
  }

  sub_1758FB8(v18);
  _Unwind_Resume(a1);
}

void sub_F1B7C8(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v7 = *a2;
  v62 = a2[1];
  if (*a2 != v62)
  {
    do
    {
      v9 = *(a3 + 128);
      if (v9 && (v10 = *(a3 + 120), v10 < *v9))
      {
        *(a3 + 120) = v10 + 1;
        v11 = *&v9[2 * v10 + 2];
        v63 = v7;
        v12 = *v7;
        v13 = v7[1];
        v14 = *v7;
        if (*v7 != v13)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v15 = sub_14356BC(*(a3 + 112));
        v11 = sub_19593CC(a3 + 112, v15);
        v63 = v7;
        v12 = *v7;
        v13 = v7[1];
        v14 = *v7;
        if (*v7 != v13)
        {
LABEL_10:
          v16 = v13 - v14;
          if ((v13 - v14) == &stru_68)
          {
            v17 = 0;
          }

          else
          {
            v18 = 0;
            v19 = v14;
            while (*v19)
            {
              v19 += 26;
              v18 -= 104;
              if (v19 == v13)
              {
                goto LABEL_17;
              }
            }

            v16 = -v18;
LABEL_17:
            v17 = -991146299 * (v16 >> 3);
          }

          *(v11 + 40) |= 1u;
          *(v11 + 68) = v17;
          do
          {
            while (1)
            {
              v20 = *(a3 + 152);
              if (v20 && (v21 = *(a3 + 144), v21 < *v20))
              {
                *(a3 + 144) = v21 + 1;
                v22 = *&v20[2 * v21 + 2];
              }

              else
              {
                v23 = sub_1435718(*(a3 + 136));
                v22 = sub_19593CC(a3 + 136, v23);
              }

              v24 = v5;
              sub_F1C9B8(a1, v14, v5, v22, a4, *&v12);
              v25 = *(a3 + 144) - 1;
              v26 = *(v11 + 48);
              if (v26 == *(v11 + 52))
              {
                break;
              }

              *(*(v11 + 56) + 4 * v26) = v25;
              *(v11 + 48) = v26 + 1;
              v14 += 104;
              v5 = v24;
              if (v14 == v13)
              {
                goto LABEL_4;
              }
            }

            sub_1958E5C((v11 + 48), v26 + 1);
            *(*(v11 + 56) + 4 * v26) = v25;
            *(v11 + 48) = v26 + 1;
            v14 += 104;
            v5 = v24;
          }

          while (v14 != v13);
          goto LABEL_4;
        }
      }

      *(v11 + 40) |= 1u;
      *(v11 + 68) = -1;
LABEL_4:
      v7 = v63 + 4;
    }

    while (v63 + 4 != v62);
  }

  v27 = *(v5 + 1232);
  if (v27 == 2)
  {
    v32 = *(v5 + 4 * (*(v5 + 28) != 0x7FFFFFFF) + 24) - 978307200;
    v29 = *(a3 + 40) | 0x20;
    *(a3 + 40) = v29;
    *(a3 + 200) = v32;
    v30 = (v5 + 4 * (*(v5 + 40) != 0x7FFFFFFF) + 36);
  }

  else if (v27 == 1)
  {
    v31 = *(v5 + 4 * (*(v5 + 52) != 0x7FFFFFFF) + 48) - 978307200;
    v29 = *(a3 + 40) | 0x20;
    *(a3 + 40) = v29;
    *(a3 + 200) = v31;
    v30 = (v5 + 4 * (*(v5 + 64) != 0x7FFFFFFF) + 60);
  }

  else
  {
    v28 = *(v5 + 24) - 978307200;
    v29 = *(a3 + 40) | 0x20;
    *(a3 + 40) = v29;
    *(a3 + 200) = v28;
    v30 = (v5 + 36);
  }

  v33 = *v30 - 978307200;
  *(a3 + 40) = v29 | 0x40;
  *(a3 + 204) = v33;
  *(a3 + 208) = *(v5 + 1040);
  *(a3 + 40) = v29 | 0xC8;
  v34 = *(a3 + 184);
  if (!v34)
  {
    v35 = *(a3 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    v34 = sub_1435774(v36);
    *(a3 + 184) = v34;
  }

  v37 = *(v5 + 1248);
  *(v34 + 4) |= 1u;
  v34[3] = v37;
  if (*(v5 + 1048))
  {
    v38 = *(v5 + 1044);
    if (v38 < 4)
    {
      v39 = v38 + 1;
    }

    else
    {
      v39 = 0;
    }

    v40 = *(a3 + 96);
    if (v40 == *(a3 + 100))
    {
      v41 = v40 + 1;
      sub_1958E5C((a3 + 96), v40 + 1);
      *(*(a3 + 104) + 4 * v40) = v39;
    }

    else
    {
      *(*(a3 + 104) + 4 * v40) = v39;
      v41 = v40 + 1;
    }

    *(a3 + 96) = v41;
  }

  sub_F1CC24(v34, (v5 + 1056), a3);
  *(a3 + 40) |= 4u;
  v42 = *(a3 + 176);
  if (!v42)
  {
    v43 = *(a3 + 8);
    v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
    if (v43)
    {
      v44 = *v44;
    }

    v42 = sub_1435454(v44);
    *(a3 + 176) = v42;
  }

  sub_F21D70((v5 + 80), v42);
  sub_F2202C(v5 + 1280, v42);
  if (*(a1 + 100) > 1u)
  {
    sub_F20A70(v5 + 1280, a3);
  }

  else
  {
    v45 = *(v5 + 2344);
    v46 = *(v5 + 2352);
    if (v45 != v46)
    {
      while (*(v45 + 488) != 2)
      {
        v45 += 496;
        if (v45 == v46)
        {
          goto LABEL_54;
        }
      }

      *(a3 + 40) |= 2u;
      v51 = *(a3 + 168);
      if (!v51)
      {
        v52 = *(a3 + 8);
        v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
        if (v52)
        {
          v53 = *v53;
        }

        v51 = sub_141BDA4(v53);
        *(a3 + 168) = v51;
      }

      v54 = *v45;
      *(v51 + 40) |= 1u;
      v55 = *(v51 + 8);
      v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
      if (v55)
      {
        v56 = *v56;
      }

      sub_194EA1C((v51 + 64), v54, v56);
      v57 = *(v45 + 168);
      v58 = *(v45 + 176);
      while (v57 != v58)
      {
        if (v57[192] != 3)
        {
          sub_5AF20();
        }

        v60 = *v57;
        v61 = *(v51 + 48);
        if (v61 == *(v51 + 52))
        {
          v59 = v61 + 1;
          sub_1958E5C((v51 + 48), v61 + 1);
          *(*(v51 + 56) + 4 * v61) = v60;
        }

        else
        {
          *(*(v51 + 56) + 4 * v61) = v60;
          v59 = v61 + 1;
        }

        *(v51 + 48) = v59;
        v57 += 200;
      }
    }
  }

LABEL_54:
  v47 = *(v5 + 1151);
  if ((v47 & 0x80u) != 0)
  {
    v47 = *(v5 + 1136);
  }

  if (v47)
  {
    *(a3 + 40) |= 1u;
    v48 = *(a3 + 8);
    v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
    if (v48)
    {
      v49 = *v49;
    }

    sub_194EA1C((a3 + 160), (v5 + 1128), v49);
  }

  v50 = *(v5 + 1224);
  *(a3 + 40) |= 0x400u;
  *(a3 + 220) = v50;
}

void sub_F1BD0C(uint64_t *a1, unint64_t ***a2, uint64_t a3)
{
  v3 = *a2;
  v52 = a2[1];
  if (*a2 != v52)
  {
    do
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v5 = *v3;
      v6 = *(v3 + 8);
      v53 = v3;
      if (v6 != *v3)
      {
        if (((v6 - *v3) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v7 = 0;
      while (v5 != v6)
      {
        v8 = *v5;
        v57 = *v5;
        v9 = a1[41];
        if (!*&v9)
        {
          goto LABEL_37;
        }

        v10 = __ROR8__(v8, 32);
        v11 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) >> 33));
        v12 = v11 ^ (v11 >> 33);
        v13 = vcnt_s8(v9);
        v13.i16[0] = vaddlv_u8(v13);
        if (v13.u32[0] > 1uLL)
        {
          v14 = v12;
          if (v12 >= *&v9)
          {
            v14 = v12 % *&v9;
          }
        }

        else
        {
          v14 = v12 & (*&v9 - 1);
        }

        v15 = *(a1[40] + 8 * v14);
        if (!v15 || (v16 = *v15) == 0)
        {
LABEL_37:
          v65 = 0x8E38E38E38E38E39 * ((a1[46] - a1[45]) >> 3);
          v22 = sub_3AFEE8(*a1);
          sub_508C3C(v8, v22, &v58);
          v24 = a1[46];
          v23 = a1[47];
          if (v24 < v23)
          {
            *v24 = v58;
            v25 = __p;
            *(v24 + 24) = v60;
            *(v24 + 8) = v25;
            v60 = 0;
            __p = 0uLL;
            *(v24 + 32) = v61;
            v26 = v62;
            *(v24 + 56) = v63;
            *(v24 + 40) = v26;
            v63 = 0;
            v62 = 0uLL;
            *(v24 + 64) = v64;
            a1[46] = v24 + 72;
            if (SHIBYTE(v60) < 0)
            {
              goto LABEL_64;
            }

            goto LABEL_65;
          }

          v27 = a1[45];
          v28 = 0x8E38E38E38E38E39 * ((v24 - v27) >> 3) + 1;
          if (v28 > 0x38E38E38E38E38ELL)
          {
            sub_1794();
          }

          v29 = 0x8E38E38E38E38E39 * ((v23 - v27) >> 3);
          if (2 * v29 > v28)
          {
            v28 = 2 * v29;
          }

          if (v29 >= 0x1C71C71C71C71C7)
          {
            v30 = 0x38E38E38E38E38ELL;
          }

          else
          {
            v30 = v28;
          }

          if (v30)
          {
            if (v30 <= 0x38E38E38E38E38ELL)
            {
              operator new();
            }

            sub_1808();
          }

          v31 = 8 * ((v24 - v27) >> 3);
          *v31 = v58;
          *(v31 + 8) = __p;
          *(v31 + 24) = v60;
          __p = 0uLL;
          v60 = 0;
          *(v31 + 32) = v61;
          *(v31 + 40) = v62;
          *(v31 + 56) = v63;
          v63 = 0;
          v62 = 0uLL;
          v32 = v31 - (v24 - v27);
          *(v31 + 64) = v64;
          if (v27 == v24)
          {
LABEL_60:
            a1[45] = v32;
            a1[46] = v31 + 72;
            a1[47] = 0;
            if (v27)
            {
              operator delete(v27);
            }

            v37 = SHIBYTE(v63);
            a1[46] = v31 + 72;
            if (v37 < 0)
            {
              operator delete(v62);
              if (SHIBYTE(v60) < 0)
              {
LABEL_64:
                operator delete(__p);
              }
            }

            else if (SHIBYTE(v60) < 0)
            {
              goto LABEL_64;
            }

LABEL_65:
            sub_F1A3BC(a1 + 40, &v57, &v57, &v65);
            v38 = v65;
            v7 = v55;
            v39 = v56;
            if (v55 >= v56)
            {
              goto LABEL_66;
            }

LABEL_8:
            *v7++ = v38;
            goto LABEL_9;
          }

          v33 = v27;
          v34 = 8 * ((v24 - v27) >> 3) - (v24 - v27);
          do
          {
            *v34 = *v33;
            v35 = *(v33 + 8);
            *(v34 + 24) = *(v33 + 24);
            *(v34 + 8) = v35;
            *(v33 + 16) = 0;
            *(v33 + 24) = 0;
            *(v33 + 8) = 0;
            *(v34 + 32) = *(v33 + 32);
            v36 = *(v33 + 40);
            *(v34 + 56) = *(v33 + 56);
            *(v34 + 40) = v36;
            *(v33 + 48) = 0;
            *(v33 + 56) = 0;
            *(v33 + 40) = 0;
            *(v34 + 64) = *(v33 + 64);
            v33 += 72;
            v34 += 72;
          }

          while (v33 != v24);
          while (2)
          {
            if (*(v27 + 63) < 0)
            {
              operator delete(*(v27 + 40));
              if (*(v27 + 31) < 0)
              {
                goto LABEL_58;
              }
            }

            else if (*(v27 + 31) < 0)
            {
LABEL_58:
              operator delete(*(v27 + 8));
            }

            v27 += 72;
            if (v27 == v24)
            {
              v27 = a1[45];
              goto LABEL_60;
            }

            continue;
          }
        }

        if (v13.u32[0] < 2uLL)
        {
          v17 = *&v9 - 1;
          while (1)
          {
            v21 = v16[1];
            if (v21 == v12)
            {
              if (*(v16 + 4) == v8 && *(v16 + 5) == HIDWORD(v8))
              {
                goto LABEL_79;
              }
            }

            else if ((v21 & v17) != v14)
            {
              goto LABEL_37;
            }

            v16 = *v16;
            if (!v16)
            {
              goto LABEL_37;
            }
          }
        }

        while (1)
        {
          v19 = v16[1];
          if (v19 == v12)
          {
            break;
          }

          if (v19 >= *&v9)
          {
            v19 %= *&v9;
          }

          if (v19 != v14)
          {
            goto LABEL_37;
          }

LABEL_24:
          v16 = *v16;
          if (!v16)
          {
            goto LABEL_37;
          }
        }

        if (*(v16 + 4) != v8 || *(v16 + 5) != HIDWORD(v8))
        {
          goto LABEL_24;
        }

LABEL_79:
        v38 = v16[3];
        v39 = v56;
        if (v7 < v56)
        {
          goto LABEL_8;
        }

LABEL_66:
        v40 = v54;
        v41 = v7 - v54;
        v42 = (v7 - v54) >> 3;
        v43 = v42 + 1;
        if ((v42 + 1) >> 61)
        {
          sub_1794();
        }

        v44 = v39 - v54;
        if (v44 >> 2 > v43)
        {
          v43 = v44 >> 2;
        }

        if (v44 >= 0x7FFFFFFFFFFFFFF8)
        {
          v45 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v45 = v43;
        }

        if (v45)
        {
          if (!(v45 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v42) = v38;
        v7 = (8 * v42 + 8);
        memcpy(0, v40, v41);
        v54 = 0;
        v55 = v7;
        v56 = 0;
        if (v40)
        {
          operator delete(v40);
        }

LABEL_9:
        v55 = v7;
        ++v5;
      }

      v46 = *(a3 + 320);
      if (v46 && (v47 = *(a3 + 312), v47 < *v46))
      {
        *(a3 + 312) = v47 + 1;
        v48 = *&v46[2 * v47 + 2];
        v49 = v53;
      }

      else
      {
        sub_141C0C0(*(a3 + 304));
        v49 = v53;
        v48 = sub_19593CC(a3 + 304, v50);
      }

      sub_F23C80(v49, &v54, v48);
      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      v3 = v49 + 568;
    }

    while (v3 != v52);
  }
}

void sub_F1C34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    v17 = a1;
    operator delete(__p);
    a1 = v17;
  }

  _Unwind_Resume(a1);
}

void sub_F1C3A4(uint64_t a1, uint64_t *a2, uint64_t a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *a2;
  v13 = a2[1];
  if (*a2 != v13)
  {
    do
    {
      sub_F1F080(a1, v12, a3);
      v12 += 168;
    }

    while (v12 != v13);
  }

  v14 = a2[6];
  for (i = a2[7]; v14 != i; v14 += 136)
  {
    sub_F1F20C(a1, v14, a3);
  }

  v16 = a2[3];
  for (j = a2[4]; v16 != j; v16 += 144)
  {
    sub_F1F35C(a1, v16, a3);
  }

  v18 = a2[9];
  v19 = a2[10];
  while (v18 != v19)
  {
    v23 = *(a3 + 104);
    if (v23 && (v22 = *(a3 + 96), v22 < *v23))
    {
      *(a3 + 96) = v22 + 1;
      v21 = *&v23[2 * v22 + 2];
    }

    else
    {
      v20 = sub_141BB20(*(a3 + 88));
      v21 = sub_19593CC(a3 + 88, v20);
      v22 = *(a3 + 96) - 1;
    }

    *(v21 + 40) |= 0x4000u;
    *(v21 + 164) = v22;
    sub_F22DEC(v18, v21);
    v18 += 696;
  }

  v24 = a2[12];
  v25 = a2[13];
  while (v24 != v25)
  {
    v29 = *(a3 + 224);
    if (v29 && (v28 = *(a3 + 216), v28 < *v29))
    {
      *(a3 + 216) = v28 + 1;
      v27 = *&v29[2 * v28 + 2];
    }

    else
    {
      v26 = sub_141BC34(*(a3 + 208));
      v27 = sub_19593CC(a3 + 208, v26);
      v28 = *(a3 + 216) - 1;
    }

    *(v27 + 40) |= 0x40u;
    *(v27 + 92) = v28;
    sub_F232F0(v24, v27);
    v24 += 208;
  }

  v30 = a2[15];
  for (k = a2[16]; v30 != k; v30 += 304)
  {
    sub_F1F4C8(a1, v30, a3);
  }

  v32 = a2[30];
  if (v32 != a2[31])
  {
    sub_F1F7E4(a1, v32, a3);
  }

  v33 = a2[18];
  v34 = a2[19];
  while (v33 != v34)
  {
    v37 = *(a3 + 296);
    if (v37 && (v38 = *(a3 + 288), v38 < *v37))
    {
      *(a3 + 288) = v38 + 1;
      v36 = *&v37[2 * v38 + 2];
    }

    else
    {
      v35 = sub_14BF484(*(a3 + 280));
      v36 = sub_19593CC(a3 + 280, v35);
    }

    sub_586C94(v33, v36, a4);
    v33 += 112;
  }

  v39 = a2[21];
  if (v39 != a2[22])
  {
    sub_F1DEB4(a1, v39, a3, a5, a6, a7, a8, a9);
  }

  v41 = a2[24];
  v40 = a2[25];
  while (v41 != v40)
  {
    v45 = *(a3 + 248);
    if (v45 && (v44 = *(a3 + 240), v44 < *v45))
    {
      *(a3 + 240) = v44 + 1;
      v43 = *&v45[2 * v44 + 2];
    }

    else
    {
      v42 = sub_141BE00(*(a3 + 232));
      v43 = sub_19593CC(a3 + 232, v42);
      v44 = *(a3 + 240) - 1;
    }

    *(v43 + 40) |= 0x4000u;
    *(v43 + 160) = v44;
    sub_F20EB8(v41, a1 + 112, *a1, v43);
    v41 += 456;
  }

  v46 = *(a1 + 296);
  for (m = *(a1 + 304); v46 != m; v46 += 62)
  {
    sub_F1F8EC(a1, v46, a3);
  }

  if (*(a1 + 106))
  {
    v49 = *(a1 + 360);
    v48 = *(a1 + 368);
    while (v49 != v48)
    {
      v52 = *(a3 + 368);
      if (v52 && (v53 = *(a3 + 360), v53 < *v52))
      {
        *(a3 + 360) = v53 + 1;
        v51 = *&v52[2 * v53 + 2];
      }

      else
      {
        v50 = sub_141C160(*(a3 + 352));
        v51 = sub_19593CC(a3 + 352, v50);
      }

      sub_F23B10(v49, v51);
      v49 += 72;
    }
  }
}

void sub_F1C730(uint64_t a1, unsigned __int8 **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    *(a3 + 40) |= 0x100u;
    v8 = *(a3 + 440);
    if (!v8)
    {
      v9 = *(a3 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      v8 = sub_175D430(v10);
      *(a3 + 440) = v8;
    }

    v11 = *v5 == 1;
    v12 = *(v8 + 48);
    if (v12 == *(v8 + 52))
    {
      v7 = v12 + 1;
      sub_1958E5C((v8 + 48), v12 + 1);
      *(*(v8 + 56) + 4 * v12) = v11;
    }

    else
    {
      *(*(v8 + 56) + 4 * v12) = v11;
      v7 = v12 + 1;
    }

    *(v8 + 48) = v7;
    ++v5;
  }

  if (a2[3] == a2[4])
  {
    goto LABEL_27;
  }

  *(a3 + 40) |= 0x100u;
  v13 = *(a3 + 440);
  if (v13)
  {
    *(v13 + 16) |= 1u;
    v14 = *(v13 + 64);
    if (v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v31 = *(a3 + 8);
    v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v32 = *v32;
    }

    v13 = sub_175D430(v32);
    *(a3 + 440) = v13;
    *(v13 + 16) |= 1u;
    v14 = *(v13 + 64);
    if (v14)
    {
LABEL_14:
      v15 = *(a2 + 12);
      if (v15 == 0x7FFFFFFF)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  v33 = *(v13 + 8);
  v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
  if (v33)
  {
    v34 = *v34;
  }

  v14 = sub_14BEA9C(v34);
  *(v13 + 64) = v14;
  v15 = *(a2 + 12);
  if (v15 == 0x7FFFFFFF)
  {
    goto LABEL_16;
  }

LABEL_15:
  *(v14 + 16) |= 1u;
  *(v14 + 48) = v15;
LABEL_16:
  v16 = a2[3];
  v17 = a2[4];
  while (v16 != v17)
  {
    v20 = *(v14 + 40);
    if (v20 && (v21 = *(v14 + 32), v21 < *v20))
    {
      *(v14 + 32) = v21 + 1;
      v22 = *&v20[2 * v21 + 2];
    }

    else
    {
      v23 = sub_14BEA20(*(v14 + 24));
      v22 = sub_19593CC(v14 + 24, v23);
    }

    v24 = *(v22 + 16);
    *(v22 + 32) = *v16;
    *(v22 + 16) = v24 | 3;
    v19 = *(v22 + 24);
    if (!v19)
    {
      v25 = *(v22 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_14BAE64(v26);
      v19 = v18;
      *(v22 + 24) = v18;
    }

    sub_64D110(v16 + 1, v19);
    v16 += 168;
  }

LABEL_27:
  v27 = *(a2 + 56);
  if (v27 != byte_2781468)
  {
    *(a3 + 40) |= 0x100u;
    v28 = *(a3 + 440);
    if (!v28)
    {
      v29 = *(a3 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_175D430(v30);
      *(a3 + 440) = v28;
      LOBYTE(v27) = *(a2 + 56);
    }

    *(v28 + 16) |= 2u;
    *(v28 + 72) = v27;
  }
}

void sub_F1C9B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v9 = a1;
  v10 = *(a2 + 56);
  if (v10 != -1)
  {
    *(a4 + 40) |= 4u;
    *(a4 + 156) = v10;
  }

  v11 = *(a2 + 8);
  for (i = *(a2 + 16); v11 != i; v11 = (v11 + 5704))
  {
    while (1)
    {
      v13 = *(a5 + 344);
      if (v13 && (v14 = *(a5 + 336), v14 < *v13))
      {
        *(a5 + 336) = v14 + 1;
        v15 = *&v13[2 * v14 + 2];
      }

      else
      {
        v16 = sub_1436258(*(a5 + 328));
        v15 = sub_19593CC(a5 + 328, v16);
      }

      sub_F1CEA4(v9, v11, a3, v15, a6);
      v17 = *(a5 + 336) - 1;
      v18 = *(a4 + 48);
      if (v18 == *(a4 + 52))
      {
        break;
      }

      *(*(a4 + 56) + 4 * v18) = v17;
      *(a4 + 48) = v18 + 1;
      v11 = (v11 + 5704);
      if (v11 == i)
      {
        goto LABEL_12;
      }
    }

    sub_1958E5C((a4 + 48), v18 + 1);
    *(*(a4 + 56) + 4 * v18) = v17;
    *(a4 + 48) = v18 + 1;
  }

LABEL_12:
  v19 = *(a2 + 55);
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a2 + 40);
  }

  if (v19)
  {
    *(a4 + 40) |= 1u;
    v20 = *(a4 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    a1 = sub_194EA1C((a4 + 144), (a2 + 32), v21);
  }

  v22 = *(a2 + 64);
  if (v22 != -1)
  {
    v23 = *(a4 + 72);
    if (v23 == *(a4 + 76))
    {
      v24 = v23 + 1;
      sub_1958E5C((a4 + 72), v23 + 1);
      *(*(a4 + 80) + 4 * v23) = v22;
    }

    else
    {
      *(*(a4 + 80) + 4 * v23) = v22;
      v24 = v23 + 1;
    }

    *(a4 + 72) = v24;
  }

  v25 = *(a2 + 72);
  if (v25 != -1)
  {
    v26 = *(a4 + 96);
    if (v26 == *(a4 + 100))
    {
      v27 = v26 + 1;
      sub_1958E5C((a4 + 96), v26 + 1);
      *(*(a4 + 104) + 4 * v26) = v25;
    }

    else
    {
      *(*(a4 + 104) + 4 * v26) = v25;
      v27 = v26 + 1;
    }

    *(a4 + 96) = v27;
  }

  v29 = *(a2 + 80);
  v28 = *(a2 + 88);
  while (v29 != v28)
  {
    v32 = *(a4 + 136);
    if (v32 && (v33 = *(a4 + 128), v33 < *v32))
    {
      *(a4 + 128) = v33 + 1;
      v31 = *&v32[2 * v33 + 2];
    }

    else
    {
      v30 = sub_1435984(*(a4 + 120));
      a1 = sub_19593CC(a4 + 120, v30);
      v31 = a1;
    }

    sub_F1DCDC(a1, v29, v31);
    v29 += 72;
  }
}

void sub_F1CC24(uint64_t a1, void ******a2, uint64_t a3)
{
  v3 = *a2;
  v33 = a2[1];
  if (*a2 != v33)
  {
    v4 = a3;
    do
    {
      v5 = *(v4 + 88);
      if (v5 && (v6 = *(v4 + 80), v6 < *v5))
      {
        *(v4 + 80) = v6 + 1;
        v7 = *&v5[2 * v6 + 2];
      }

      else
      {
        sub_1435618(*(v4 + 72));
        v7 = sub_19593CC(v4 + 72, v8);
      }

      v9 = *v3;
      v10 = v3[1];
      while (v9 != v10)
      {
        v11 = *(v7 + 48);
        if (!v11 || (v12 = *(v7 + 40), v12 >= *v11))
        {
          sub_1435574(*(v7 + 32));
          v13 = sub_19593CC(v7 + 32, v16);
          v14 = *v9;
          v15 = v9[1];
          if (*v9 == v15)
          {
            goto LABEL_9;
          }

LABEL_20:
          while (2)
          {
            while (2)
            {
              v19 = *(v14 + 40);
              if (v19 == 1)
              {
                v23 = *(v13 + 48);
                if (v23 && (v24 = *(v13 + 40), v24 < *v23))
                {
                  *(v13 + 40) = v24 + 1;
                  v25 = *&v23[2 * v24 + 2];
                  *(v25 + 16) |= 1u;
                  v18 = *(v25 + 24);
                  if (!v18)
                  {
LABEL_30:
                    v27 = *(v25 + 8);
                    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
                    if (v27)
                    {
                      v28 = *v28;
                    }

                    sub_14BAE64(v28);
                    v18 = v17;
                    *(v25 + 24) = v17;
                  }
                }

                else
                {
                  v26 = sub_14354F8(*(v13 + 32));
                  v25 = sub_19593CC(v13 + 32, v26);
                  *(v25 + 16) |= 1u;
                  v18 = *(v25 + 24);
                  if (!v18)
                  {
                    goto LABEL_30;
                  }
                }

                sub_64D110(v14, v18);
LABEL_19:
                v14 += 21;
                if (v14 == v15)
                {
                  goto LABEL_9;
                }

                continue;
              }

              break;
            }

            if (v19)
            {
              goto LABEL_19;
            }

            v20 = *v14;
            v21 = *(v13 + 16);
            if (v21 == *(v13 + 20))
            {
              sub_1958E5C((v13 + 16), v21 + 1);
              *(*(v13 + 24) + 4 * v21) = v20;
              *(v13 + 16) = v21 + 1;
              v22 = *(v13 + 48);
              if (!v22)
              {
LABEL_35:
                v31 = sub_14354F8(*(v13 + 32));
                v30 = sub_19593CC(v13 + 32, v31);
                goto LABEL_36;
              }
            }

            else
            {
              *(*(v13 + 24) + 4 * v21) = v20;
              *(v13 + 16) = v21 + 1;
              v22 = *(v13 + 48);
              if (!v22)
              {
                goto LABEL_35;
              }
            }

            v29 = *(v13 + 40);
            if (v29 >= *v22)
            {
              goto LABEL_35;
            }

            *(v13 + 40) = v29 + 1;
            v30 = *&v22[2 * v29 + 2];
LABEL_36:
            *(v30 + 16) |= 2u;
            *(v30 + 32) = v20;
            v14 += 21;
            if (v14 == v15)
            {
              goto LABEL_9;
            }

            continue;
          }
        }

        *(v7 + 40) = v12 + 1;
        v13 = *&v11[2 * v12 + 2];
        v14 = *v9;
        v15 = v9[1];
        if (*v9 != v15)
        {
          goto LABEL_20;
        }

LABEL_9:
        v9 += 3;
      }

      v3 += 3;
      v4 = a3;
    }

    while (v3 != v33);
  }
}

void sub_F1CEA4(uint64_t *a1, int32x4_t *a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = a2->u32[0];
  if (v9 > 0xA)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_22AE720[v9];
  }

  v11 = *(a4 + 40);
  *(a4 + 40) = v11 | 0x400;
  *(a4 + 280) = v10;
  *(a4 + 300) = a2[2].i32[2] - 978307200;
  *(a4 + 40) = v11 | 0x18400;
  v12 = &a2->i64[1];
  v13 = a2->i32[2];
  v14 = a2[123].i32[2];
  if ((v14 - 1) >= 5)
  {
    v14 = 0;
  }

  *(a4 + 304) = v14;
  if (v13 == -1)
  {
    goto LABEL_13;
  }

  v15 = a2[2].u8[7];
  if ((v15 & 0x80u) != 0)
  {
    v15 = a2[1].i64[1];
  }

  if (!v15)
  {
    goto LABEL_13;
  }

  sub_F1E134(v12, __p);
  *(a4 + 40) |= 1u;
  v16 = *(a4 + 8);
  v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
  if (v16)
  {
    v17 = *v17;
  }

  sub_194EA30((a4 + 200), __p, v17);
  if (SBYTE7(v152) < 0)
  {
    operator delete(__p[0]);
    v18 = a2[118].i64[0];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_13:
    v18 = a2[118].i64[0];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_18;
    }
  }

  v19 = v18 / 100;
  v20 = v18 % 100;
  if (v18 < 0)
  {
    v21 = -50;
  }

  else
  {
    v21 = 50;
  }

  *(a4 + 40) |= 0x40000u;
  *(a4 + 312) = v19 + ((5243 * (v21 + v20)) >> 19) + ((5243 * (v21 + v20)) >> 31);
LABEL_18:
  v22 = a2[3].i64[0];
  if (v22 != -1)
  {
    *(a4 + 40) |= 0x800u;
    *(a4 + 284) = v22;
  }

  v23 = a2[3].i64[1];
  if (v23 != -1)
  {
    *(a4 + 40) |= 0x1000u;
    *(a4 + 288) = v23;
  }

  if (a2[49].i8[8] == 1)
  {
    v24 = *(a4 + 64);
    if (v24 && (v25 = *(a4 + 56), v25 < *v24))
    {
      *(a4 + 56) = v25 + 1;
      v26 = *&v24[2 * v25 + 2];
    }

    else
    {
      v27 = sub_1435BB8(*(a4 + 48));
      v12 = sub_19593CC(a4 + 48, v27);
      v26 = v12;
    }

    sub_F1E258(v12, &a2[5].i64[1], v26);
  }

  if (a2[59].i8[8] == 1)
  {
    v28 = *(a4 + 88);
    if (v28 && (v29 = *(a4 + 80), v29 < *v28))
    {
      *(a4 + 80) = v29 + 1;
      v30 = *&v28[2 * v29 + 2];
    }

    else
    {
      v31 = sub_1435A28(*(a4 + 72));
      v30 = sub_19593CC(a4 + 72, v31);
    }

    v32 = *(v30 + 40);
    *(v30 + 60) = a2[54].i16[4];
    *(v30 + 40) = v32 | 0x18;
    v33 = a2[53].i32[0];
    v34 = v33 / 10;
    v35 = v33 % 10;
    v36 = v33 < 0 ? -5 : 5;
    *(v30 + 56) = v34 + (((103 * (v36 + v35)) >> 15) & 1) + ((103 * (v36 + v35)) >> 10);
    v37 = a2[54].i64[0];
    *(v30 + 40) = v32 | 0x1E;
    *(v30 + 52) = v37;
    v38 = a2[53].i64[1];
    if (v38 != -1)
    {
      *(v30 + 40) = v32 | 0x1F;
      *(v30 + 48) = v38;
    }
  }

  if (a2[62].i8[8] == 1)
  {
    v59 = *(a4 + 112);
    if (v59 && (v60 = *(a4 + 104), v60 < *v59))
    {
      *(a4 + 104) = v60 + 1;
      v61 = *&v59[2 * v60 + 2];
    }

    else
    {
      v93 = sub_1435A84(*(a4 + 96));
      v61 = sub_19593CC(a4 + 96, v93);
    }

    v94 = a2[60].i32[0];
    v95 = v94 / 10;
    v96 = v94 % 10;
    if (v94 < 0)
    {
      v97 = -5;
    }

    else
    {
      v97 = 5;
    }

    *(v61 + 40) |= 1u;
    *(v61 + 48) = v95 + (((103 * (v97 + v96)) >> 15) & 1) + ((103 * (v97 + v96)) >> 10);
    if (a2[119].i8[12] != 1)
    {
LABEL_40:
      if (a2[52].i8[8] != 1)
      {
        goto LABEL_41;
      }

      goto LABEL_129;
    }
  }

  else if (a2[119].i8[12] != 1)
  {
    goto LABEL_40;
  }

  *(a4 + 40) |= 2u;
  v98 = *(a4 + 208);
  if (!v98)
  {
    v99 = *(a4 + 8);
    v100 = (v99 & 0xFFFFFFFFFFFFFFFCLL);
    if (v99)
    {
      v100 = *v100;
    }

    v98 = sub_1435AE0(v100);
    *(a4 + 208) = v98;
  }

  v101 = a2[119].u32[2];
  if (v101 >= 3)
  {
    v101 = 0;
  }

  *(v98 + 16) |= 1u;
  *(v98 + 24) = v101;
  if (a2[52].i8[8] != 1)
  {
LABEL_41:
    if (a2[139].i64[0] == a2[139].i64[1])
    {
      goto LABEL_42;
    }

    goto LABEL_134;
  }

LABEL_129:
  *(a4 + 40) |= 4u;
  v102 = *(a4 + 216);
  if (!v102)
  {
    v103 = *(a4 + 8);
    v104 = (v103 & 0xFFFFFFFFFFFFFFFCLL);
    if (v103)
    {
      v104 = *v104;
    }

    v102 = sub_16F5828(v104);
    *(a4 + 216) = v102;
  }

  sub_EC6D34(a2[50].i32, v102, a5);
  if (a2[139].i64[0] == a2[139].i64[1])
  {
LABEL_42:
    v39 = a2[118].i64[1];
    if (v39 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_134:
  *(a4 + 40) |= 0x100u;
  v105 = *(a4 + 264);
  if (v105)
  {
    sub_F238E8(&a2[139], v105);
    v39 = a2[118].i64[1];
    if (v39 == -1)
    {
      goto LABEL_44;
    }

LABEL_43:
    *(a4 + 40) |= 0x20000u;
    *(a4 + 308) = v39;
    goto LABEL_44;
  }

  v106 = *(a4 + 8);
  v107 = (v106 & 0xFFFFFFFFFFFFFFFCLL);
  if (v106)
  {
    v107 = *v107;
  }

  v108 = sub_143613C(v107);
  *(a4 + 264) = v108;
  sub_F238E8(&a2[139], v108);
  v39 = a2[118].i64[1];
  if (v39 != -1)
  {
    goto LABEL_43;
  }

LABEL_44:
  v40 = a2[119].i64[0];
  if (v40 != -1)
  {
    *(a4 + 40) |= 0x100000u;
    *(a4 + 320) = v40;
  }

  if (a2[5].i8[0] == 1)
  {
    v41 = a2[4].i64[0];
    if (v41 != -1)
    {
      *(a4 + 40) |= 0x4000u;
      *(a4 + 296) = v41;
    }
  }

  v42 = sub_9C1704(&a2[63].i64[1]);
  if (v42)
  {
    *(a4 + 40) |= 8u;
    v43 = *(a4 + 224);
    if (!v43)
    {
      v44 = *(a4 + 8);
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
      if (v44)
      {
        v45 = *v45;
      }

      v43 = sub_14BB45C(v45);
      *(a4 + 224) = v43;
    }

    sub_F223CC(&a2[63].i64[1], v43);
  }

  v46 = a2[121].i64[1];
  v47 = a2[122].i64[0];
  if (v46 != v47)
  {
    v48 = (a4 + 120);
    v49 = *(a4 + 120);
    do
    {
      while (1)
      {
        v50 = *v46;
        if (v49 == *(a4 + 124))
        {
          break;
        }

        *(*(a4 + 128) + 4 * v49++) = v50;
        *v48 = v49;
        v46 += 2;
        if (v46 == v47)
        {
          goto LABEL_60;
        }
      }

      sub_1958E5C((a4 + 120), v49 + 1);
      *(*(a4 + 128) + 4 * v49++) = v50;
      *v48 = v49;
      v46 += 2;
    }

    while (v46 != v47);
  }

LABEL_60:
  v51 = a2[120].i64[0];
  v52 = a2[120].i64[1];
  if (v51 != v52)
  {
    v53 = (a4 + 136);
    v54 = *(a4 + 136);
    do
    {
      while (1)
      {
        v55 = *v51;
        if (v54 == *(a4 + 140))
        {
          break;
        }

        *(*(a4 + 144) + 4 * v54++) = v55;
        *v53 = v54;
        v51 += 2;
        if (v51 == v52)
        {
          goto LABEL_65;
        }
      }

      sub_1958E5C((a4 + 136), v54 + 1);
      *(*(a4 + 144) + 4 * v54++) = v55;
      *v53 = v54;
      v51 += 2;
    }

    while (v51 != v52);
  }

LABEL_65:
  v56 = a2[123].i64[0];
  if (v56 != -1)
  {
    *(a4 + 40) |= 0x80000u;
    *(a4 + 316) = v56;
  }

  if (a2[123].i8[12] == 1)
  {
    *(a4 + 40) |= 0x2000u;
    *(a4 + 292) = 1;
  }

  if (*(a1 + 25) > 1u)
  {
    sub_F20908(&a2[218].i64[1], a4);
    goto LABEL_78;
  }

  v57 = a2[285].i64[0];
  v58 = a2[285].i64[1];
  if (v57 != v58)
  {
    while (*(v57 + 488) != 2)
    {
      v57 += 496;
      if (v57 == v58)
      {
        goto LABEL_169;
      }
    }

    v149 = a1;
    v152 = 0u;
    v153 = 0u;
    *__p = 0u;
    v109 = *v57;
    if (*v57 != __p)
    {
      if (*(v109 + 23) < 0)
      {
        sub_13A68(__p, *v109, v109[1]);
      }

      else
      {
        v110 = *v109;
        *&v152 = v109[2];
        *__p = v110;
      }
    }

    v147 = a3;
    v111 = *(v57 + 168);
    v112 = *(v57 + 176);
    while (v111 != v112)
    {
      if (*(v111 + 192) != 3)
      {
        sub_5AF20();
      }

      v114 = *v111;
      v115 = v153;
      if (v153 < *(&v153 + 1))
      {
        *v153 = v114;
        v113 = v115 + 8;
      }

      else
      {
        v116 = *(&v152 + 1);
        v117 = v153 - *(&v152 + 1);
        v118 = (v153 - *(&v152 + 1)) >> 3;
        v119 = v118 + 1;
        if ((v118 + 1) >> 61)
        {
          sub_1794();
        }

        v120 = *(&v153 + 1) - *(&v152 + 1);
        if ((*(&v153 + 1) - *(&v152 + 1)) >> 2 > v119)
        {
          v119 = v120 >> 2;
        }

        if (v120 >= 0x7FFFFFFFFFFFFFF8)
        {
          v121 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v121 = v119;
        }

        if (v121)
        {
          if (!(v121 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v118) = v114;
        v113 = 8 * v118 + 8;
        memcpy(0, v116, v117);
        *(&v152 + 1) = 0;
        v153 = v113;
        if (v116)
        {
          operator delete(v116);
        }
      }

      *&v153 = v113;
      v111 += 100;
    }

    a1 = v149;
    v122 = sub_F1FD84(v149 + 32, __p);
    a3 = v147;
    if (v122)
    {
      v123 = v122[8];
      *(a4 + 40) |= 0x1000000u;
      *(a4 + 336) = v123;
      v42 = *(&v152 + 1);
      if (!*(&v152 + 1))
      {
        goto LABEL_167;
      }
    }

    else
    {
      v128 = v149[38];
      v154 = 0xEF7BDEF7BDEF7BDFLL * ((v128 - v149[37]) >> 4);
      if (v128 >= v149[39])
      {
        v129 = sub_99EF1C(v149 + 37, v57);
      }

      else
      {
        sub_5F4668(v128, v57);
        v129 = v128 + 62;
        v149[38] = (v128 + 62);
      }

      v149[38] = v129;
      sub_F20078(v149 + 32, __p, __p, &v154);
      v145 = v154;
      *(a4 + 40) |= 0x1000000u;
      *(a4 + 336) = v145;
      v42 = *(&v152 + 1);
      if (!*(&v152 + 1))
      {
LABEL_167:
        if (SBYTE7(v152) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_169;
      }
    }

    *&v153 = v42;
    operator delete(v42);
    goto LABEL_167;
  }

LABEL_169:
  v124 = a2[353].i64[0];
  v125 = a2[353].i64[1];
  if (v124 != v125)
  {
    while (*(v124 + 488) != 2)
    {
      v124 += 496;
      if (v124 == v125)
      {
        goto LABEL_78;
      }
    }

    v150 = a1;
    v152 = 0u;
    v153 = 0u;
    *__p = 0u;
    v126 = *v124;
    if (*v124 != __p)
    {
      if (*(v126 + 23) < 0)
      {
        sub_13A68(__p, *v126, v126[1]);
      }

      else
      {
        v127 = *v126;
        *&v152 = v126[2];
        *__p = v127;
      }
    }

    v148 = a3;
    v130 = *(v124 + 168);
    v131 = *(v124 + 176);
    while (v130 != v131)
    {
      if (*(v130 + 192) != 3)
      {
        sub_5AF20();
      }

      v133 = *v130;
      v134 = v153;
      if (v153 < *(&v153 + 1))
      {
        *v153 = v133;
        v132 = v134 + 8;
      }

      else
      {
        v135 = *(&v152 + 1);
        v136 = v153 - *(&v152 + 1);
        v137 = (v153 - *(&v152 + 1)) >> 3;
        v138 = v137 + 1;
        if ((v137 + 1) >> 61)
        {
          sub_1794();
        }

        v139 = *(&v153 + 1) - *(&v152 + 1);
        if ((*(&v153 + 1) - *(&v152 + 1)) >> 2 > v138)
        {
          v138 = v139 >> 2;
        }

        if (v139 >= 0x7FFFFFFFFFFFFFF8)
        {
          v140 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v140 = v138;
        }

        if (v140)
        {
          if (!(v140 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v137) = v133;
        v132 = 8 * v137 + 8;
        memcpy(0, v135, v136);
        *(&v152 + 1) = 0;
        v153 = v132;
        if (v135)
        {
          operator delete(v135);
        }
      }

      *&v153 = v132;
      v130 += 100;
    }

    a1 = v150;
    v141 = sub_F1FD84(v150 + 32, __p);
    a3 = v148;
    if (v141)
    {
      v142 = v141[8];
      *(a4 + 40) |= 0x800000u;
      *(a4 + 332) = v142;
      v42 = *(&v152 + 1);
      if (!*(&v152 + 1))
      {
        goto LABEL_199;
      }
    }

    else
    {
      v143 = v150[38];
      v154 = 0xEF7BDEF7BDEF7BDFLL * ((v143 - v150[37]) >> 4);
      if (v143 >= v150[39])
      {
        v144 = sub_99EF1C(v150 + 37, v124);
      }

      else
      {
        sub_5F4668(v143, v124);
        v144 = v143 + 62;
        v150[38] = (v143 + 62);
      }

      v150[38] = v144;
      sub_F20078(v150 + 32, __p, __p, &v154);
      v146 = v154;
      *(a4 + 40) |= 0x800000u;
      *(a4 + 332) = v146;
      v42 = *(&v152 + 1);
      if (!*(&v152 + 1))
      {
LABEL_199:
        if (SBYTE7(v152) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_78;
      }
    }

    *&v153 = v42;
    operator delete(v42);
    goto LABEL_199;
  }

LABEL_78:
  if ((a2[131].i8[8] & 1) != 0 || a2[134].i8[0] == 1)
  {
    sub_F1E530(v42, a2, a4);
  }

  sub_F1E700(a1, a2, a3, a4);
  if (a2[134].i64[1] != a2[135].i64[0])
  {
    v63 = sub_3AFC64(*a1);
    *(a4 + 40) |= 0x40u;
    v64 = *(a4 + 248);
    if (!v64)
    {
      v65 = v63;
      v66 = *(a4 + 8);
      v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
      if (v66)
      {
        v67 = *v67;
      }

      v64 = sub_1435E00(v67);
      *(a4 + 248) = v64;
      v63 = v65;
    }

    sub_F22924(v63, &a2[134].i64[1], v64);
  }

  v68 = vceqq_s32(a2[136], xmmword_22A74C0);
  v68.n128_u64[0] = vmovn_s32(v68);
  v68.n128_u16[0] = vmaxv_u16(v68.n128_u64[0]);
  if ((v68.n128_u8[0] & 1) == 0 && a2[137].i64[0] != -1)
  {
    v69 = sub_3AFC64(*a1);
    *(a4 + 40) |= 0x80u;
    v70 = *(a4 + 256);
    if (!v70)
    {
      v71 = v69;
      v72 = *(a4 + 8);
      v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
      if (v72)
      {
        v73 = *v73;
      }

      v70 = sub_1435F28(v73);
      *(a4 + 256) = v70;
      v69 = v71;
    }

    v62 = sub_F229F4(v69, a2[136].i64, v70);
  }

  v74 = a2[116].i64[1];
  v75 = a2[117].i64[0];
  while (v74 != v75)
  {
    v78 = *(a4 + 168);
    if (v78 && (v79 = *(a4 + 160), v79 < *v78))
    {
      *(a4 + 160) = v79 + 1;
      v80 = *&v78[2 * v79 + 2];
      *(v80 + 16) |= 1u;
      v81 = *(v80 + 24);
      if (v81)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v82 = sub_14361DC(*(a4 + 152));
      v80 = sub_19593CC(a4 + 152, v82);
      *(v80 + 16) |= 1u;
      v81 = *(v80 + 24);
      if (v81)
      {
        goto LABEL_106;
      }
    }

    v83 = *(v80 + 8);
    v84 = (v83 & 0xFFFFFFFFFFFFFFFCLL);
    if (v83)
    {
      v84 = *v84;
    }

    v81 = sub_14BF484(v84);
    *(v80 + 24) = v81;
LABEL_106:
    sub_586C94(v74, v81, v68);
    *(v80 + 16) |= 2u;
    v77 = *(v80 + 32);
    if (!v77)
    {
      v85 = *(v80 + 8);
      v86 = (v85 & 0xFFFFFFFFFFFFFFFCLL);
      if (v85)
      {
        v86 = *v86;
      }

      sub_14BAE64(v86);
      v77 = v76;
      *(v80 + 32) = v76;
    }

    sub_64D110((v74 + 112), v77);
    v74 += 272;
  }

  v87 = a2[214].i64[0];
  v88 = a2[214].i64[1];
  while (v87 != v88)
  {
    v91 = *(a4 + 192);
    if (v91 && (v92 = *(a4 + 184), v92 < *v91))
    {
      *(a4 + 184) = v92 + 1;
      v90 = *&v91[2 * v92 + 2];
    }

    else
    {
      v89 = sub_1436404(*(a4 + 176));
      v62 = sub_19593CC(a4 + 176, v89);
      v90 = v62;
    }

    sub_F1ECC0(v62, v87, v90);
    v87 += 464;
  }
}

void sub_F1DC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v17 + 304) = v16;
  sub_B8580(&__p);
  _Unwind_Resume(a1);
}

void sub_F1DCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *(a3 + 16) |= 2u;
  v5 = *(a3 + 8);
  v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
  if (v5)
  {
    v6 = *v6;
  }

  sub_194EA1C((v3 + 56), (a2 + 24), v6);
  *(v3 + 16) |= 1u;
  v7 = *(v3 + 8);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
  if (v7)
  {
    v8 = *v8;
  }

  sub_194EA1C((v3 + 48), a2, v8);
  v9 = *(a2 + 48);
  v28 = *(a2 + 56);
  if (v9 != v28)
  {
    v27 = v3;
    do
    {
      v10 = *(v3 + 40);
      if (v10 && (v11 = *(v3 + 32), v11 < *v10))
      {
        *(v3 + 32) = v11 + 1;
        v12 = *&v10[2 * v11 + 2];
      }

      else
      {
        v13 = sub_14358E4(*(v3 + 24));
        v12 = sub_19593CC(v3 + 24, v13);
      }

      v14 = *v9;
      v15 = v9[1];
      while (v14 != v15)
      {
        v16 = *(v12 + 32);
        if (v16 && (v17 = *(v12 + 24), v17 < *v16))
        {
          *(v12 + 24) = v17 + 1;
          v18 = *&v16[2 * v17 + 2];
        }

        else
        {
          v19 = sub_1435848(*(v12 + 16));
          v18 = sub_19593CC(v12 + 16, v19);
        }

        v20 = sub_A0AF10(*v14);
        *(v18 + 16) |= 1u;
        *(v18 + 40) = v20;
        v22 = v14[1];
        v21 = v14[2];
        while (v22 != v21)
        {
          v24 = sub_A0AF10(*v22);
          v25 = v24;
          v26 = *(v18 + 24);
          if (v26 == *(v18 + 28))
          {
            v23 = v26 + 1;
            sub_1958E5C((v18 + 24), v26 + 1);
            *(*(v18 + 32) + 4 * v26) = v25;
          }

          else
          {
            *(*(v18 + 32) + 4 * v26) = v24;
            v23 = v26 + 1;
          }

          *(v18 + 24) = v23;
          ++v22;
        }

        v14 += 4;
      }

      v9 += 3;
      v3 = v27;
    }

    while (v9 != v28);
  }
}

void sub_F1DEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_7E4D94(v12, v8);
  memset(v11, 0, sizeof(v11));
  v9 = v11;
  LOBYTE(v10) = 0;
  operator new();
}

void sub_F1E0AC(_Unwind_Exception *a1, void *__p, uint64_t a3, uint64_t a4, void *__pa, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  if (__pa)
  {
    operator delete(__pa);
  }

  sub_5706DC(va);
  sub_785D84(va1);
  sub_78B5C0(&STACK[0x288]);
  _Unwind_Resume(a1);
}

void sub_F1E0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_F1FD08(va);
  sub_78B5C0(&STACK[0x288]);
  _Unwind_Resume(a1);
}

void sub_F1E100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_F1FD08(va);
  sub_78B5C0(&STACK[0x288]);
  _Unwind_Resume(a1);
}

void sub_F1E120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1758FB8(va);
  _Unwind_Resume(a1);
}

void sub_F1E134(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v13, *a1);
  v4 = std::string::append(&v13, ".", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::string::append(&v14, v10, v11);
  *a2 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(v13.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_11;
  }
}

void sub_F1E20C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

void sub_F1E258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 664);
  v6 = *(a3 + 40);
  *(a3 + 40) = v6 | 8;
  *(a3 + 96) = v5;
  if (*a2 == 0x7FFFFFFF)
  {
    if (*(a2 + 28) == 0x7FFFFFFF)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a3 + 40) = v6 | 0xA;
    v7 = *(a3 + 80);
    if (!v7)
    {
      v8 = *(a3 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      v7 = sub_1435B5C(v9);
      *(a3 + 80) = v7;
    }

    v10 = *a2 - 978307200;
    *(v7 + 40) |= 1u;
    *(v7 + 48) = v10;
    if (*(a2 + 28) == 0x7FFFFFFF)
    {
LABEL_3:
      if (!sub_B6E0((a2 + 56)))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }
  }

  *(a3 + 40) |= 4u;
  v11 = *(a3 + 88);
  if (!v11)
  {
    v12 = *(a3 + 8);
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    v11 = sub_1435B5C(v13);
    *(a3 + 88) = v11;
  }

  v14 = *(a2 + 28) - 978307200;
  *(v11 + 40) |= 1u;
  *(v11 + 48) = v14;
  if (sub_B6E0((a2 + 56)))
  {
LABEL_15:
    if (*(a2 + 657) == 1)
    {
      nullsub_1();
      v16 = *v15 / 10;
      v17 = *v15 % 10;
      if (*v15 < 0)
      {
        v18 = -5;
      }

      else
      {
        v18 = 5;
      }

      *(a3 + 40) |= 0x80u;
      *(a3 + 112) = v16 + (((103 * (v18 + v17)) >> 15) & 1) + ((103 * (v18 + v17)) >> 10);
      v19 = sub_B718(a2 + 56);
      v20 = *v19 / 10;
      v21 = *v19 % 10;
      if (*v19 < 0)
      {
        v22 = -5;
      }

      else
      {
        v22 = 5;
      }

      *(a3 + 40) |= 0x20u;
      *(a3 + 104) = v20 + (((103 * (v22 + v21)) >> 15) & 1) + ((103 * (v22 + v21)) >> 10);
    }
  }

LABEL_23:
  if (*(a2 + 672) != -1)
  {
    nullsub_1();
    *(a3 + 40) |= 0x100u;
    *(a3 + 120) = v23;
  }

  v24 = *(a2 + 68);
  if ((v24 - 1) >= 3)
  {
    v24 = 0;
  }

  if (*(a2 + 69))
  {
    v24 = 100;
  }

  v25 = *(a3 + 40);
  *(a3 + 40) = v25 | 0x40;
  *(a3 + 108) = v24;
  v26 = *(a2 + 624);
  if (v26 != -1)
  {
    *(a3 + 40) = v25 | 0x50;
    *(a3 + 100) = v26;
  }

  v27 = *(a2 + 632);
  v28 = *(a2 + 640);
  if (v27 != v28)
  {
    v29 = (a3 + 48);
    v30 = *(a3 + 48);
    do
    {
      while (1)
      {
        v31 = *v27;
        if (v30 != *(a3 + 52))
        {
          break;
        }

        sub_1958E5C((a3 + 48), v30 + 1);
        *(*(a3 + 56) + 4 * v30++) = v31;
        *v29 = v30;
        v27 += 2;
        if (v27 == v28)
        {
          return;
        }
      }

      *(*(a3 + 56) + 4 * v30++) = v31;
      *v29 = v30;
      v27 += 2;
    }

    while (v27 != v28);
  }
}

void sub_F1E530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 2104) == 1)
  {
    *(a3 + 40) |= 0x10u;
    v5 = *(a3 + 232);
    if (!v5)
    {
      v6 = *(a3 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      v5 = sub_1435C70(v7);
      *(a3 + 232) = v5;
    }

    sub_F1FB1C(a2 + 2024, v5);
  }

  if (*(a2 + 2144) == 1)
  {
    *(a3 + 40) |= 0x20u;
    v8 = *(a3 + 240);
    if (!v8)
    {
      v9 = *(a3 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      v8 = sub_1435D28(v10);
      *(a3 + 240) = v8;
    }

    v11 = *(a2 + 2140);
    v12 = *(a2 + 2136) == 1;
    *(v8 + 10) |= 3u;
    *(v8 + 18) = v12;
    *(v8 + 19) = v11;
    v13 = *(a2 + 2112);
    for (i = *(a2 + 2120); v13 != i; v13 += 48)
    {
      v15 = v8[8];
      if (v15 && (v16 = *(v8 + 14), v16 < *v15))
      {
        *(v8 + 14) = v16 + 1;
        v17 = *&v15[2 * v16 + 2];
        *(v17 + 40) |= 1u;
        v18 = *(v17 + 48);
        if (!v18)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v19 = sub_1435CCC(v8[6]);
        v17 = sub_19593CC((v8 + 6), v19);
        *(v17 + 40) |= 1u;
        v18 = *(v17 + 48);
        if (!v18)
        {
LABEL_18:
          v20 = *(v17 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v18 = sub_1435C14(v21);
          *(v17 + 48) = v18;
        }
      }

      v22 = *(v18 + 10);
      *(v18 + 14) = *v13;
      *(v18 + 10) = v22 | 3;
      v23 = v18[1];
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      sub_194EA1C(v18 + 6, (v13 + 8), v24);
      v25 = *(v13 + 32);
      *(v18 + 10) |= 4u;
      *(v18 + 15) = v25;
    }
  }
}

void sub_F1E700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 1160) != 0x7FFFFFFF)
  {
    v6 = *(a3 + 1191);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a3 + 1176);
    }

    if (v6 && *(a2 + 2104) != 1)
    {
      return;
    }
  }

  if (*(a2 + 2104) == 1)
  {
    v7 = (a2 + 2072);
    v8 = (a2 + 2080);
  }

  else
  {
    v7 = (a2 + 5680);
    v8 = (a2 + 5688);
    if (*(a2 + 5680) != *(a2 + 5688))
    {
      LODWORD(v54) = 0x7FFFFFFF;
      v56 = 0;
      v55 = 0uLL;
      v57 = 100;
      LOBYTE(v58) = 0;
      DWORD1(v58) = 1;
      v59 = 0;
      v60 = 0;
      *(&v58 + 1) = 0;
      v61 = 0;
      *(a4 + 40) |= 0x10u;
      v9 = *(a4 + 232);
      if (!v9)
      {
        v10 = *(a4 + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        v9 = sub_1435C70(v11);
        *(a4 + 232) = v9;
      }

      sub_F1FB1C(&v54, v9);
      if (*(&v58 + 1))
      {
        v59 = *(&v58 + 1);
        operator delete(*(&v58 + 1));
      }

      if (SHIBYTE(v56) < 0)
      {
        operator delete(v55);
      }
    }
  }

  v12 = *(a1 + 106);
  v53 = 0;
  v13 = 0uLL;
  *v52 = 0u;
  v14 = *v7;
  v15 = *v8;
  if (*v7 != *v8)
  {
    while (1)
    {
      v51 = *v14;
      v16 = sub_446608((a1 + 320), &v51);
      if (v16)
      {
        v17 = v16[3];
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_23;
      }

      v62 = 0x8E38E38E38E38E39 * ((*(a1 + 368) - *(a1 + 360)) >> 3);
      v24 = v51;
      v25 = sub_3AFEE8(*a1);
      sub_508C3C(v24, v25, &v54);
      v26 = *(a1 + 368);
      if (v26 < *(a1 + 376))
      {
        break;
      }

      v29 = sub_F1A1BC((a1 + 360), &v54);
      v30 = SHIBYTE(v59);
      *(a1 + 368) = v29;
      if ((v30 & 0x80000000) == 0)
      {
        if ((SHIBYTE(v56) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      operator delete(v58);
      if (SHIBYTE(v56) < 0)
      {
        goto LABEL_35;
      }

LABEL_36:
      sub_F1A3BC((a1 + 320), &v51, &v51, &v62);
      v17 = v62;
      if (!v12)
      {
LABEL_37:
        v31 = *(a1 + 360);
        if (0x8E38E38E38E38E39 * ((*(a1 + 368) - v31) >> 3) <= v17)
        {
          sub_6FAB4();
        }

        v32 = v31 + 72 * v17;
        v33 = v52[1];
        if (v52[1] >= v53)
        {
          v52[1] = sub_1CEE8(v52, v32 + 8);
        }

        else
        {
          if (*(v32 + 31) < 0)
          {
            sub_325C(v52[1], *(v32 + 8), *(v32 + 16));
          }

          else
          {
            v34 = *(v32 + 8);
            *(v52[1] + 2) = *(v32 + 24);
            *v33 = v34;
          }

          v52[1] = v33 + 24;
        }

        goto LABEL_20;
      }

LABEL_23:
      *(a4 + 40) |= 0x10u;
      v18 = *(a4 + 232);
      if (!v18)
      {
        v19 = *(a4 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_1435C70(v20);
        *(a4 + 232) = v18;
      }

      v21 = sub_2FEF94(v17);
      v22 = v21;
      v23 = *(v18 + 72);
      if (v23 == *(v18 + 76))
      {
        sub_1958E5C((v18 + 72), v23 + 1);
        *(*(v18 + 80) + 4 * v23) = v22;
      }

      else
      {
        *(*(v18 + 80) + 4 * v23) = v21;
      }

      *(v18 + 72) = v23 + 1;
LABEL_20:
      if (++v14 == v15)
      {
        v13 = *v52;
        goto LABEL_47;
      }
    }

    *v26 = v54;
    v27 = v55;
    *(v26 + 24) = v56;
    *(v26 + 8) = v27;
    v56 = 0;
    v55 = 0uLL;
    *(v26 + 32) = v57;
    v28 = v58;
    *(v26 + 56) = v59;
    *(v26 + 40) = v28;
    v59 = 0;
    v58 = 0uLL;
    *(v26 + 64) = v60;
    *(a1 + 368) = v26 + 72;
    if ((SHIBYTE(v56) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_35:
    operator delete(v55);
    goto LABEL_36;
  }

LABEL_47:
  v35 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*(&v13 + 1) - v13) >> 3));
  if (*(&v13 + 1) == v13)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35;
  }

  sub_79630(v13, *(&v13 + 1), &v54, v36, 1);
  v37 = v52[0];
  v38 = v52[1];
  if (v52[0] == v52[1])
  {
    goto LABEL_64;
  }

  do
  {
    *(a4 + 40) |= 0x10u;
    v39 = *(a4 + 232);
    if (v39)
    {
      v40 = *(v39 + 64);
      if (!v40)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v41 = *(a4 + 8);
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
      if (v41)
      {
        v42 = *v42;
      }

      v39 = sub_1435C70(v42);
      *(a4 + 232) = v39;
      v40 = *(v39 + 64);
      if (!v40)
      {
        goto LABEL_59;
      }
    }

    v43 = *(v39 + 56);
    if (v43 < *v40)
    {
      *(v39 + 56) = v43 + 1;
      v44 = *&v40[2 * v43 + 2];
      goto LABEL_60;
    }

LABEL_59:
    v45 = sub_141C160(*(v39 + 48));
    v44 = sub_19593CC(v39 + 48, v45);
LABEL_60:
    *(v44 + 40) |= 1u;
    v46 = *(v44 + 8);
    v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
    if (v46)
    {
      v47 = *v47;
    }

    sub_194EA1C((v44 + 48), v37, v47);
    v37 = (v37 + 24);
  }

  while (v37 != v38);
  v37 = v52[0];
LABEL_64:
  if (v37)
  {
    v48 = v52[1];
    v49 = v37;
    if (v52[1] != v37)
    {
      do
      {
        v50 = *(v48 - 1);
        v48 -= 3;
        if (v50 < 0)
        {
          operator delete(*v48);
        }
      }

      while (v48 != v37);
      v49 = v52[0];
    }

    v52[1] = v37;
    operator delete(v49);
  }
}

void sub_F1EC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_508924(va);
  _Unwind_Resume(a1);
}

void sub_F1EC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_F1EC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_F1EC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_300884(va1);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_F1EC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_F1EC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_F1EC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_F1EC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_F1ECAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_F1ECC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_4D1F6C(a2))
  {
    goto LABEL_51;
  }

  v6 = (a2 + 320);
  v7 = *(a2 + 352);
  if (v7 > 2)
  {
    if (v7 != 3 && v7 != 4)
    {
      goto LABEL_51;
    }

    v8 = *(a2 + 343);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a2 + 328);
    }

    if (!v8)
    {
      goto LABEL_51;
    }
  }

  else if (v7 == 1)
  {
    if (*v6 == -1)
    {
      goto LABEL_51;
    }
  }

  else if (v7 != 2 || *(a2 + 324) == -1 && *(a2 + 320) == -1 && *(a2 + 328) == *(a2 + 336))
  {
    goto LABEL_51;
  }

  *(a3 + 16) |= 1u;
  v9 = *(a3 + 48);
  if (v9)
  {
    if (sub_4D1F6C(a2))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = *(a3 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    sub_1436388(v12);
    v9 = v13;
    *(a3 + 48) = v13;
    if (sub_4D1F6C(a2))
    {
LABEL_18:
      if (sub_4D1F6C((a2 + 160)))
      {
        goto LABEL_19;
      }

LABEL_34:
      *(v9 + 16) |= 2u;
      v18 = *(v9 + 32);
      if (!v18)
      {
        v19 = *(v9 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        sub_14BAE64(v20);
        v18 = v21;
        *(v9 + 32) = v21;
      }

      sub_64D110((a2 + 160), v18);
      v10 = *(a2 + 352);
      if (v10 <= 2)
      {
LABEL_20:
        if (v10 == 1)
        {
          if (*v6 == -1)
          {
            goto LABEL_51;
          }
        }

        else if (v10 != 2 || *(a2 + 324) == -1 && *(a2 + 320) == -1 && *(a2 + 328) == *(a2 + 336))
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }

      goto LABEL_39;
    }
  }

  *(v9 + 16) |= 1u;
  v14 = *(v9 + 24);
  if (!v14)
  {
    v15 = *(v9 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_14BAE64(v16);
    v14 = v17;
    *(v9 + 24) = v17;
  }

  sub_64D110(a2, v14);
  if (!sub_4D1F6C((a2 + 160)))
  {
    goto LABEL_34;
  }

LABEL_19:
  v10 = *(a2 + 352);
  if (v10 <= 2)
  {
    goto LABEL_20;
  }

LABEL_39:
  if (v10 == 3 || v10 == 4)
  {
    v22 = *(a2 + 343);
    if ((v22 & 0x80u) != 0)
    {
      v22 = *(a2 + 328);
    }

    if (v22)
    {
LABEL_46:
      *(v9 + 16) |= 4u;
      v23 = *(v9 + 40);
      if (!v23)
      {
        v24 = *(v9 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v23 = sub_14BF484(v25);
        *(v9 + 40) = v23;
      }

      sub_586C94(a2 + 320, v23, v5);
    }
  }

LABEL_51:
  v26 = *(a2 + 432);
  for (i = *(a2 + 440); v26 != i; v26 += 40)
  {
    v28 = *(a3 + 40);
    if (v28 && (v29 = *(a3 + 32), v29 < *v28))
    {
      *(a3 + 32) = v29 + 1;
      v30 = *&v28[2 * v29 + 2];
      *(v30 + 16) |= 1u;
      v31 = *(v30 + 24);
      if (!v31)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v32 = sub_141C040(*(a3 + 24));
      v30 = sub_19593CC(a3 + 24, v32);
      *(v30 + 16) |= 1u;
      v31 = *(v30 + 24);
      if (!v31)
      {
LABEL_59:
        v33 = *(v30 + 8);
        v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v34 = *v34;
        }

        v31 = sub_16F5828(v34);
        *(v30 + 24) = v31;
      }
    }

    v5.n128_f64[0] = sub_EC6D34(v26, v31, v5.n128_f64[0]);
    if (*(v26 + 12) == 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }

    v36 = *(v30 + 16);
    v37 = *(v26 + 32);
    if (v37 == 2)
    {
      v38 = 2;
    }

    else
    {
      v38 = v37 == 1;
    }

    *(v30 + 16) = v36 | 6;
    *(v30 + 32) = v38;
    *(v30 + 36) = v35;
    v39 = *(v26 + 16);
    if (v39 != 0x7FFFFFFF)
    {
      v40 = v39 / 10;
      v41 = v39 % 10;
      if (v39 < 0)
      {
        v42 = -5;
      }

      else
      {
        v42 = 5;
      }

      *(v30 + 16) = v36 | 0xE;
      *(v30 + 40) = v40 + (((103 * (v42 + v41)) >> 15) & 1) + ((103 * (v42 + v41)) >> 10);
    }
  }
}

void sub_F1F080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 176);
  if (v5 && (v6 = *(a3 + 168), v6 < *v5))
  {
    *(a3 + 168) = v6 + 1;
    v7 = *&v5[2 * v6 + 2];
  }

  else
  {
    v9 = sub_141BCEC(*(a3 + 160));
    v7 = sub_19593CC(a3 + 160, v9);
    v6 = *(a3 + 168) - 1;
  }

  *(v7 + 40) |= 0x40u;
  *(v7 + 116) = v6;
  nullsub_1();
  v11 = *(v7 + 40);
  *(v7 + 104) = v12;
  *(v7 + 40) = v11 | 0x14;
  v13 = *(v7 + 88);
  if (!v13)
  {
    v14 = *(v7 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v13 = sub_16F5828(v15);
    *(v7 + 88) = v13;
  }

  sub_EC6D34(a2, v13, v10);
  sub_F20C6C((a2 + 112), v7);
  v16 = *(a2 + 104);
  v17 = *(v7 + 40);
  if (v16 != -1)
  {
    v17 |= 0x20u;
    *(v7 + 40) = v17;
    *(v7 + 112) = v16;
  }

  v18 = *(a2 + 63);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 48);
  }

  if (v18)
  {
    *(v7 + 40) = v17 | 2;
    v19 = *(v7 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    sub_194EA1C((v7 + 80), (a2 + 40), v20);
    v17 = *(v7 + 40);
  }

  *(v7 + 40) = v17 | 1;
  v21 = *(v7 + 8);
  v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
  if (v21)
  {
    v22 = *v22;
  }

  sub_194EA1C((v7 + 72), (a2 + 136), v22);

  sub_F1FA10(v23, a1, a2, v7);
}

void sub_F1F20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  if (v5 && (v6 = *(a3 + 48), v6 < *v5))
  {
    *(a3 + 48) = v6 + 1;
    v7 = *&v5[2 * v6 + 2];
  }

  else
  {
    v9 = sub_141BB7C(*(a3 + 40));
    v7 = sub_19593CC(a3 + 40, v9);
    v6 = *(a3 + 48) - 1;
  }

  *(v7 + 40) |= 8u;
  *(v7 + 96) = v6;
  nullsub_1();
  v11 = *(v7 + 40);
  *(v7 + 88) = v12;
  *(v7 + 40) = v11 | 6;
  v13 = *(v7 + 80);
  if (!v13)
  {
    v14 = *(v7 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v13 = sub_16F5828(v15);
    *(v7 + 80) = v13;
  }

  v16.n128_f64[0] = sub_EC6D34(a2, v13, v10);
  v17 = *(a2 + 63);
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a2 + 48);
  }

  if (v17)
  {
    *(v7 + 40) |= 1u;
    v18 = *(v7 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    sub_194EA1C((v7 + 72), (a2 + 40), v19);
  }

  sub_F1FA10(v16, a1, a2, v7);
  if (((*(a2 + 104) - 1) & 0xFC) != 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = (*(a2 + 104) - 1) + 1;
  }

  *(v7 + 40) |= 0x10u;
  *(v7 + 100) = v20;
}

void sub_F1F35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 272);
  if (v5 && (v6 = *(a3 + 264), v6 < *v5))
  {
    *(a3 + 264) = v6 + 1;
    v7 = *&v5[2 * v6 + 2];
  }

  else
  {
    v9 = sub_141BD48(*(a3 + 256));
    v7 = sub_19593CC(a3 + 256, v9);
    v6 = *(a3 + 264) - 1;
  }

  *(v7 + 40) |= 0x20u;
  *(v7 + 108) = v6;
  nullsub_1();
  *(v7 + 40) |= 8u;
  *(v7 + 96) = v10;
  sub_F20BD8((a2 + 120), v7);
  *(v7 + 40) |= 2u;
  v12 = *(v7 + 80);
  if (!v12)
  {
    v13 = *(v7 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    v12 = sub_16F5828(v14);
    *(v7 + 80) = v12;
  }

  v15.n128_f64[0] = sub_EC6D34(a2, v12, v11);
  v16 = *(a2 + 63);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 48);
  }

  if (v16)
  {
    *(v7 + 40) |= 1u;
    v17 = *(v7 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    sub_194EA1C((v7 + 72), (a2 + 40), v18);
  }

  v19 = *(a2 + 104);
  if (v19 != -1)
  {
    *(v7 + 40) |= 0x10u;
    *(v7 + 104) = v19;
  }

  sub_F1FA10(v15, a1, a2, v7);
}

void sub_F1F4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 128);
  if (v4 && (v5 = *(a3 + 120), v5 < *v4))
  {
    *(a3 + 120) = v5 + 1;
    v6 = *&v4[2 * v5 + 2];
  }

  else
  {
    v8 = sub_141BC90(*(a3 + 112));
    v6 = sub_19593CC(a3 + 112, v8);
    v5 = *(a3 + 120) - 1;
  }

  *(v6 + 40) |= 0x20u;
  *(v6 + 132) = v5;
  nullsub_1();
  v10 = *(v6 + 40);
  *(v6 + 120) = v11;
  *(v6 + 40) = v10 | 0xC;
  v12 = *(v6 + 112);
  if (!v12)
  {
    v13 = *(v6 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    v12 = sub_16F5828(v14);
    *(v6 + 112) = v12;
  }

  sub_EC6D34(a2, v12, v9);
  v15 = *(a2 + 176);
  if (*(a2 + 168) != v15)
  {
    v16 = *(v15 - 8);
    *(v6 + 40) |= 0x10u;
    *(v6 + 128) = v16;
  }

  v17 = *(a2 + 87);
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a2 + 72);
  }

  if (v17)
  {
    *(v6 + 40) |= 1u;
    v18 = *(v6 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    sub_194EA1C((v6 + 96), (a2 + 64), v19);
  }

  if (*(a2 + 40) != *(a2 + 48))
  {
    *(v6 + 40) |= 2u;
    v20 = *(v6 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_194EA1C((v6 + 104), (a2 + 88), v21);
  }

  v22 = *(a2 + 112);
  for (i = *(a2 + 120); v22 != i; v22 = v31 + 6)
  {
    v24 = *(v6 + 64);
    if (v24 && (v25 = *(v6 + 56), v25 < *v24))
    {
      *(v6 + 56) = v25 + 1;
      v26 = *&v24[2 * v25 + 2];
    }

    else
    {
      v27 = sub_141B9A4(*(v6 + 48));
      v26 = sub_19593CC(v6 + 48, v27);
    }

    v28 = *(v26 + 16);
    *(v26 + 40) = *v22;
    *(v26 + 16) = v28 | 5;
    v29 = *(v26 + 8);
    v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
    if (v29)
    {
      v30 = *v30;
    }

    v31 = (v22 + 10);
    sub_194EA1C((v26 + 24), v31, v30);
    *(v26 + 16) |= 2u;
    v32 = *(v26 + 8);
    v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    if (v32)
    {
      v33 = *v33;
    }

    sub_194EA1C((v26 + 32), v31 - 2, v33);
  }

  v34 = *(a2 + 136);
  for (j = *(a2 + 144); v34 != j; v34 = v43 + 6)
  {
    while (1)
    {
      v36 = *(v6 + 88);
      if (v36 && (v37 = *(v6 + 80), v37 < *v36))
      {
        *(v6 + 80) = v37 + 1;
        v38 = *&v36[2 * v37 + 2];
      }

      else
      {
        v39 = sub_141B9A4(*(v6 + 72));
        v38 = sub_19593CC(v6 + 72, v39);
      }

      v40 = *(v38 + 16);
      *(v38 + 40) = *v34;
      *(v38 + 16) = v40 | 5;
      v41 = *(v38 + 8);
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
      if (v41)
      {
        v42 = *v42;
      }

      v43 = (v34 + 10);
      sub_194EA1C((v38 + 24), v43, v42);
      *(v38 + 16) |= 2u;
      v44 = *(v38 + 8);
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
      if (v44)
      {
        break;
      }

      sub_194EA1C((v38 + 32), v43 - 2, v45);
      v34 = v43 + 6;
      if (v34 == j)
      {
        return;
      }
    }

    sub_194EA1C((v38 + 32), v43 - 2, *v45);
  }
}

void sub_F1F8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_120D5F0(va);
  _Unwind_Resume(a1);
}

void sub_F1F8EC(uint64_t a1, __int128 **a2, uint64_t a3)
{
  v5 = *(a3 + 320);
  if (v5 && (v6 = *(a3 + 312), v6 < *v5))
  {
    *(a3 + 312) = v6 + 1;
    v7 = *&v5[2 * v6 + 2];
  }

  else
  {
    v8 = sub_141BDA4(*(a3 + 304));
    v7 = sub_19593CC(a3 + 304, v8);
  }

  v9 = *a2;
  *(v7 + 40) |= 1u;
  v10 = *(v7 + 8);
  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
  if (v10)
  {
    v11 = *v11;
  }

  sub_194EA1C((v7 + 64), v9, v11);
  v12 = a2[21];
  v13 = a2[22];
  while (v12 != v13)
  {
    if (*(v12 + 192) != 3)
    {
      sub_5AF20();
    }

    v15 = *v12;
    v16 = *(v7 + 48);
    if (v16 == *(v7 + 52))
    {
      v14 = v16 + 1;
      sub_1958E5C((v7 + 48), v16 + 1);
      *(*(v7 + 56) + 4 * v16) = v15;
    }

    else
    {
      *(*(v7 + 56) + 4 * v16) = v15;
      v14 = v16 + 1;
    }

    *(v7 + 48) = v14;
    v12 += 50;
  }

  v17 = *(a3 + 312) - 1;
  *(v7 + 40) |= 2u;
  *(v7 + 72) = v17;
}

void sub_F1FA10(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 64);
  for (i = *(a3 + 72); v4 != i; v4 = v14 + 6)
  {
    while (1)
    {
      v7 = *(a4 + 64);
      if (v7 && (v8 = *(a4 + 56), v8 < *v7))
      {
        *(a4 + 56) = v8 + 1;
        v9 = *&v7[2 * v8 + 2];
      }

      else
      {
        v10 = sub_141B9A4(*(a4 + 48));
        v9 = sub_19593CC(a4 + 48, v10);
      }

      v11 = *(v9 + 16);
      *(v9 + 40) = *v4;
      *(v9 + 16) = v11 | 5;
      v12 = *(v9 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (v4 + 10);
      sub_194EA1C((v9 + 24), v14, v13);
      *(v9 + 16) |= 2u;
      v15 = *(v9 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        break;
      }

      sub_194EA1C((v9 + 32), v14 - 2, v16);
      v4 = v14 + 6;
      if (v4 == i)
      {
        return;
      }
    }

    sub_194EA1C((v9 + 32), v14 - 2, *v16);
  }
}

void sub_F1FB1C(uint64_t a1, uint64_t a2)
{
  if (*a1 != 0x7FFFFFFF)
  {
    v4 = *(a1 + 31);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a1 + 16);
    }

    if (v4)
    {
      *(a2 + 40) |= 1u;
      v5 = *(a2 + 88);
      if (!v5)
      {
        v6 = *(a2 + 8);
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          v7 = *v7;
        }

        v5 = sub_1435C14(v7);
        *(a2 + 88) = v5;
      }

      v8 = *(v5 + 10);
      *(v5 + 14) = *a1;
      *(v5 + 10) = v8 | 3;
      v9 = v5[1];
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      sub_194EA1C(v5 + 6, (a1 + 8), v10);
      v11 = *(a1 + 32);
      *(v5 + 10) |= 4u;
      *(v5 + 15) = v11;
    }
  }

  v12 = *(a2 + 40);
  *(a2 + 104) = *(a1 + 44);
  *(a2 + 100) = *(a1 + 72);
  v13 = *(a1 + 40) == 1;
  *(a2 + 40) = v12 | 0xE;
  *(a2 + 96) = v13;
}

void sub_F1FC18(uint64_t a1)
{
  *a1 = 256;
  *(a1 + 2) = 1;
  *(a1 + 3) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 256;
  *(a1 + 44) = 0;
  *(a1 + 48) = 1;
  *(a1 + 52) = xmmword_22AE710;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 11;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  operator new();
}

void sub_F1FCD8(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 112) = v5;
    operator delete(v5);
  }

  sub_21E5430((v1 + 72), (v1 + 8), v1);
  _Unwind_Resume(a1);
}

void ***sub_F1FD08(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_78B5C0(v4 - 7808);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t **sub_F1FD84(void *a1, const void **a2)
{
  v4 = sub_F1FF9C(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    v11 = *(a2 + 23);
    if (v11 >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = a2[1];
    }

    if (v11 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    v15 = a2 + 3;
    v14 = a2[3];
    v16 = v15[1] - v14;
    if (v7.u32[0] < 2uLL)
    {
      v17 = *&v5 - 1;
      while (1)
      {
        v18 = v10[1];
        if (v18 == v6)
        {
          v19 = *(v10 + 39);
          v20 = v19;
          if (v19 < 0)
          {
            v19 = v10[3];
          }

          if (v19 == v12)
          {
            v21 = v20 >= 0 ? (v10 + 2) : v10[2];
            if (!memcmp(v21, v13, v12))
            {
              v23 = v10[5];
              v22 = v10[6];
              if (v22 - v23 == v16)
              {
                if (v23 == v22)
                {
                  return v10;
                }

                for (i = v14; *v23 == *i; ++i)
                {
                  v23 += 8;
                  if (v23 == v22)
                  {
                    return v10;
                  }
                }
              }
            }
          }
        }

        else if ((v18 & v17) != v8)
        {
          return 0;
        }

        v10 = *v10;
        if (!v10)
        {
          return v10;
        }
      }
    }

    do
    {
      v25 = v10[1];
      if (v25 == v6)
      {
        v26 = *(v10 + 39);
        v27 = v26;
        if (v26 < 0)
        {
          v26 = v10[3];
        }

        if (v26 == v12)
        {
          v28 = v27 >= 0 ? (v10 + 2) : v10[2];
          if (!memcmp(v28, v13, v12))
          {
            v30 = v10[5];
            v29 = v10[6];
            if (v29 - v30 == v16)
            {
              if (v30 == v29)
              {
                return v10;
              }

              for (j = v14; *v30 == *j; ++j)
              {
                v30 += 8;
                if (v30 == v29)
                {
                  return v10;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v25 >= *&v5)
        {
          v25 %= *&v5;
        }

        if (v25 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

unint64_t sub_F1FF9C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v11 = *(a2 + 16);
  }

  if (v11 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if (v11 >= 0)
  {
    v4 = HIBYTE(v11);
  }

  else
  {
    v4 = __p[1];
  }

  v5 = (sub_AAD8(&v12, v3, v4) + 0x388152A534) ^ 0xDEADBEEF;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(a2 + 24);
  for (i = *(a2 + 32); v6 != i; v5 ^= (v5 << 6) + (v5 >> 2) + 2654435769u + v8)
  {
    v8 = *v6++;
  }

  return v5;
}

uint64_t **sub_F20078(void *a1, const void **a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_F1FF9C(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_51;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_51:
    sub_F204BC();
  }

  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = a2[1];
  }

  if (v13 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  v17 = a2 + 3;
  v16 = a2[3];
  v33 = v17[1] - v16;
  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v25 = v12[1];
      if (v25 == v7)
      {
        v26 = *(v12 + 39);
        v27 = v26;
        if (v26 < 0)
        {
          v26 = v12[3];
        }

        if (v26 == v14)
        {
          v28 = v27 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v28, v15, v14))
          {
            v30 = v12[5];
            v29 = v12[6];
            if (v29 - v30 == v33)
            {
              if (v30 == v29)
              {
                return v12;
              }

              for (i = v16; *v30 == *i; ++i)
              {
                v30 += 8;
                if (v30 == v29)
                {
                  return v12;
                }
              }
            }
          }
        }
      }

      else if ((v25 & (*&v8 - 1)) != v10)
      {
        goto LABEL_51;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
    v18 = v12[1];
    if (v18 == v7)
    {
      break;
    }

    if (v18 >= *&v8)
    {
      v18 %= *&v8;
    }

    if (v18 != v10)
    {
      goto LABEL_51;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_51;
    }
  }

  v19 = *(v12 + 39);
  v20 = v19;
  if (v19 < 0)
  {
    v19 = v12[3];
  }

  if (v19 != v14)
  {
    goto LABEL_18;
  }

  v21 = v20 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v21, v15, v14))
  {
    goto LABEL_18;
  }

  v23 = v12[5];
  v22 = v12[6];
  if (v22 - v23 != v33)
  {
    goto LABEL_18;
  }

  if (v23 != v22)
  {
    for (j = v16; *v23 == *j; ++j)
    {
      v23 += 8;
      if (v23 == v22)
      {
        return v12;
      }
    }

    goto LABEL_18;
  }

  return v12;
}

void sub_F204A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2D5CBC(va);
  _Unwind_Resume(a1);
}

void sub_F205C8(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 48) = v5;
    operator delete(v5);
    if ((*(v2 + 39) & 0x80000000) == 0)
    {
LABEL_3:
      sub_2D5CBC(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v2 + 16));
  sub_2D5CBC(v1);
  _Unwind_Resume(a1);
}

void sub_F20614()
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
  xmmword_27BF4B0 = 0u;
  unk_27BF4C0 = 0u;
  dword_27BF4D0 = 1065353216;
  sub_3A9A34(&xmmword_27BF4B0, v0, v0);
  sub_3A9A34(&xmmword_27BF4B0, v3, v3);
  sub_3A9A34(&xmmword_27BF4B0, __p, __p);
  sub_3A9A34(&xmmword_27BF4B0, v9, v9);
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
    qword_27BF488 = 0;
    qword_27BF490 = 0;
    qword_27BF480 = 0;
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

void sub_F2085C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BF498)
  {
    qword_27BF4A0 = qword_27BF498;
    operator delete(qword_27BF498);
  }

  _Unwind_Resume(exception_object);
}

void sub_F20908(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1064);
  i = *(a1 + 1072);
  if (v2 == i)
  {
    return;
  }

  *(a2 + 40) |= 0x200u;
  v4 = *(a2 + 272);
  if (v4)
  {
    if (v2 == i)
    {
      return;
    }

    goto LABEL_10;
  }

  v7 = *(a2 + 8);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
  if (v7)
  {
    v8 = *v8;
  }

  v4 = sub_14BCF4C(v8);
  *(a2 + 272) = v4;
  v9 = a1;
  v2 = *(a1 + 1064);
  for (i = *(v9 + 1072); v2 != i; v2 += 496)
  {
LABEL_10:
    *__p = 0u;
    *v18 = 0u;
    v19 = 1065353216;
    v10 = *(v4 + 88);
    if (v10 && (v11 = *(v4 + 80), v11 < *v10))
    {
      *(v4 + 80) = v11 + 1;
      v12 = *&v10[2 * v11 + 2];
    }

    else
    {
      v13 = sub_14BCE94(*(v4 + 72));
      v12 = sub_19593CC(v4 + 72, v13);
    }

    sub_EC74E8(v2, __p, v12);
    v14 = v18[0];
    if (v18[0])
    {
      do
      {
        v16 = *v14;
        if (*(v14 + 39) < 0)
        {
          operator delete(v14[2]);
        }

        operator delete(v14);
        v14 = v16;
      }

      while (v16);
    }

    v15 = __p[0];
    __p[0] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }
}

void sub_F20A70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1064);
  i = *(a1 + 1072);
  if (v2 == i)
  {
    return;
  }

  *(a2 + 40) |= 0x10u;
  v4 = *(a2 + 192);
  if (v4)
  {
    if (v2 == i)
    {
      return;
    }

    goto LABEL_10;
  }

  v7 = *(a2 + 8);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
  if (v7)
  {
    v8 = *v8;
  }

  v4 = sub_14BCF4C(v8);
  *(a2 + 192) = v4;
  v9 = a1;
  v2 = *(a1 + 1064);
  for (i = *(v9 + 1072); v2 != i; v2 += 496)
  {
LABEL_10:
    *__p = 0u;
    *v18 = 0u;
    v19 = 1065353216;
    v10 = *(v4 + 88);
    if (v10 && (v11 = *(v4 + 80), v11 < *v10))
    {
      *(v4 + 80) = v11 + 1;
      v12 = *&v10[2 * v11 + 2];
    }

    else
    {
      v13 = sub_14BCE94(*(v4 + 72));
      v12 = sub_19593CC(v4 + 72, v13);
    }

    sub_EC74E8(v2, __p, v12);
    v14 = v18[0];
    if (v18[0])
    {
      do
      {
        v16 = *v14;
        if (*(v14 + 39) < 0)
        {
          operator delete(v14[2]);
        }

        operator delete(v14);
        v14 = v16;
      }

      while (v16);
    }

    v15 = __p[0];
    __p[0] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }
}

void *sub_F20BD8(void *result, uint64_t a2)
{
  if (*result != result[1])
  {
    *(a2 + 40) |= 4u;
    if (*(a2 + 88))
    {
      v3 = *(a2 + 88);
    }

    else
    {
      v4 = result;
      v6 = *(a2 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      v8 = sub_1551A70(v7);
      *(a2 + 88) = v8;
      result = v4;
      v3 = v8;
    }

    return sub_43735C(result, v3);
  }

  return result;
}

void *sub_F20C6C(void *result, uint64_t a2)
{
  if (*result != result[1])
  {
    *(a2 + 40) |= 8u;
    if (*(a2 + 96))
    {
      v3 = *(a2 + 96);
    }

    else
    {
      v4 = result;
      v6 = *(a2 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      v8 = sub_1551A70(v7);
      *(a2 + 96) = v8;
      result = v4;
      v3 = v8;
    }

    return sub_43735C(result, v3);
  }

  return result;
}

void sub_F20E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_4AE168(va);
  _Unwind_Resume(a1);
}

void sub_F20E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_120D5F0(v15);
  sub_4AE168(va);
  _Unwind_Resume(a1);
}

void sub_F20E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_4AE168(va);
  _Unwind_Resume(a1);
}

void sub_F20EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_4AE168(va);
  _Unwind_Resume(a1);
}

void sub_F20EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  nullsub_1();
  v7 = *(a4 + 40);
  *(a4 + 128) = v8;
  *(a4 + 156) = *(a1 + 448);
  v9 = *(a1 + 400) == 1;
  v10 = v7 | 0x2180;
  *(a4 + 40) = v7 | 0x2180;
  *(a4 + 136) = v9;
  v11 = *(a1 + 412);
  if (v11 == 0x7FFFFFFF)
  {
    v12 = *(a1 + 404);
    if (v12 == 0x7FFFFFFF)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = v7 | 0x2980;
    *(a4 + 40) = v7 | 0x2980;
    *(a4 + 148) = v11 - 978307200;
    v12 = *(a1 + 404);
    if (v12 == 0x7FFFFFFF)
    {
LABEL_3:
      v13 = *(a1 + 408);
      if (v13 == 0x7FFFFFFF)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  v10 |= 0x200u;
  *(a4 + 40) = v10;
  *(a4 + 140) = v12 - 978307200;
  v13 = *(a1 + 408);
  if (v13 == 0x7FFFFFFF)
  {
LABEL_4:
    v14 = *(a1 + 416);
    if (v14 == 0x7FFFFFFF)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_25:
  v10 |= 0x400u;
  *(a4 + 40) = v10;
  *(a4 + 144) = v13 - 978307200;
  v14 = *(a1 + 416);
  if (v14 != 0x7FFFFFFF)
  {
LABEL_5:
    *(a4 + 40) = v10 | 0x1000;
    *(a4 + 152) = v14 - 978307200;
  }

LABEL_6:
  nullsub_1();
  v15 = *(a1 + 167);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a1 + 152);
  }

  if (v15)
  {
    v35[0] = sub_12331FC();
    if (sub_1232EE0(a1 + 176, v35))
    {
      sub_9D6E68(a1 + 144, v35);
      *(a4 + 40) |= 4u;
      v16 = *(a4 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      sub_194EA30((a4 + 88), v35, v17);
      if ((v38 & 0x80000000) == 0)
      {
        if ((v36 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_28:
        operator delete(v35[0]);
        v21 = *(a1 + 39);
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(a1 + 24);
        }

        if (!v21)
        {
          goto LABEL_34;
        }

        goto LABEL_17;
      }

      operator delete(__p);
      if (v36 < 0)
      {
        goto LABEL_28;
      }
    }
  }

LABEL_14:
  v18 = *(a1 + 39);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a1 + 24);
  }

  if (!v18)
  {
    goto LABEL_34;
  }

LABEL_17:
  v35[0] = sub_12331FC();
  if (!sub_1232EE0(a1 + 48, v35))
  {
    goto LABEL_34;
  }

  sub_9D6E68(a1 + 16, v35);
  *(a4 + 40) |= 1u;
  v19 = *(a4 + 8);
  v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
  if (v19)
  {
    v20 = *v20;
  }

  sub_194EA30((a4 + 72), v35, v20);
  if (v38 < 0)
  {
    operator delete(__p);
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

  operator delete(v35[0]);
LABEL_34:
  v22 = *(a1 + 359);
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(a1 + 344);
  }

  if (v22)
  {
    v35[0] = sub_12331FC();
    if (sub_1232EE0(a1 + 368, v35))
    {
      sub_9D6E68(a1 + 336, v35);
      *(a4 + 40) |= 0x20u;
      v23 = *(a4 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      sub_194EA30((a4 + 112), v35, v24);
      if ((v38 & 0x80000000) == 0)
      {
        if ((v36 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

LABEL_52:
        operator delete(v35[0]);
        v28 = *(a1 + 231);
        if ((v28 & 0x80u) != 0)
        {
          v28 = *(a1 + 216);
        }

        if (!v28)
        {
          goto LABEL_58;
        }

        goto LABEL_45;
      }

      operator delete(__p);
      if (v36 < 0)
      {
        goto LABEL_52;
      }
    }
  }

LABEL_42:
  v25 = *(a1 + 231);
  if ((v25 & 0x80u) != 0)
  {
    v25 = *(a1 + 216);
  }

  if (!v25)
  {
    goto LABEL_58;
  }

LABEL_45:
  v35[0] = sub_12331FC();
  if (!sub_1232EE0(a1 + 240, v35))
  {
    goto LABEL_58;
  }

  sub_9D6E68(a1 + 208, v35);
  *(a4 + 40) |= 8u;
  v26 = *(a4 + 8);
  v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
  if (v26)
  {
    v27 = *v27;
  }

  sub_194EA30((a4 + 96), v35, v27);
  if (v38 < 0)
  {
    operator delete(__p);
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_58;
    }
  }

  else if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_58;
  }

  operator delete(v35[0]);
LABEL_58:
  v29 = *(a1 + 103);
  if ((v29 & 0x80u) != 0)
  {
    v29 = *(a1 + 88);
  }

  if (!v29)
  {
    goto LABEL_66;
  }

  v35[0] = sub_12331FC();
  if (!sub_1232EE0(a1 + 112, v35))
  {
    goto LABEL_66;
  }

  sub_9D6E68(a1 + 80, v35);
  *(a4 + 40) |= 2u;
  v30 = *(a4 + 8);
  v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
  if (v30)
  {
    v31 = *v31;
  }

  sub_194EA30((a4 + 80), v35, v31);
  if (v38 < 0)
  {
    operator delete(__p);
    if (v36 < 0)
    {
      goto LABEL_78;
    }

LABEL_66:
    if (*(a1 + 448) != 1)
    {
      goto LABEL_79;
    }

    goto LABEL_67;
  }

  if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

LABEL_78:
  operator delete(v35[0]);
  if (*(a1 + 448) != 1)
  {
    goto LABEL_79;
  }

LABEL_67:
  v32 = *(a1 + 295);
  if ((v32 & 0x80u) != 0)
  {
    v32 = *(a1 + 280);
  }

  if (v32)
  {
    v35[0] = sub_12331FC();
    if (sub_1232EE0(a1 + 304, v35))
    {
      sub_9D6E68(a1 + 272, v35);
      *(a4 + 40) |= 0x10u;
      v33 = *(a4 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      sub_194EA30((a4 + 104), v35, v34);
      if (v38 < 0)
      {
        operator delete(__p);
      }

      if (v36 < 0)
      {
        operator delete(v35[0]);
      }
    }
  }

LABEL_79:
  sub_F21454((a1 + 424), a3, a4);
}

void sub_F21454(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = a3;
    v6 = a2;
    v91 = a1[1];
    do
    {
      v7 = *(v3 + 8);
      if (v7 <= 3)
      {
        switch(v7)
        {
          case 1:
            v14 = sub_3AFB1C(v6);
            if (*(v3 + 8) != 1)
            {
              goto LABEL_127;
            }

            v11 = v14;
            v15 = sub_93D480(v14, *v3, 0, "station");
            v13 = (v15 - *v15);
            if (*v13 < 5u)
            {
              goto LABEL_34;
            }

            goto LABEL_31;
          case 2:
            v20 = sub_3AFB1C(v6);
            if (*(v3 + 8) != 2)
            {
LABEL_127:
              sub_5AF20();
            }

            v11 = v20;
            v21 = sub_93D2F4(v20, *v3, 0, "hall");
            v13 = (v21 - *v21);
            if (*v13 < 5u)
            {
              goto LABEL_34;
            }

LABEL_31:
            if (!v13[2])
            {
              goto LABEL_34;
            }

            v22 = sub_2C939C(v11, 1u, 0);
            if (!v22)
            {
              goto LABEL_126;
            }

            goto LABEL_35;
          case 3:
            v9 = sub_3AFB1C(v6);
            if (*(v3 + 8) != 3)
            {
              goto LABEL_127;
            }

            sub_502230(v9, v3);
            break;
        }
      }

      else if (v7 > 5)
      {
        if (v7 == 6)
        {
          v18 = sub_3AFC64(v6);
          if (*(v3 + 8) != 6)
          {
            goto LABEL_127;
          }

          v11 = v18;
          v19 = sub_92FC60(v18, *v3, 0, "line");
          v13 = (v19 - *v19);
          if (*v13 < 5u)
          {
            goto LABEL_34;
          }

          goto LABEL_31;
        }

        if (v7 == 7)
        {
          v10 = sub_3AFB1C(v6);
          if (*(v3 + 8) != 7)
          {
            goto LABEL_127;
          }

          v11 = v10;
          v12 = sub_503310(v10, *v3, 0, "access point");
          v13 = (v12 - *v12);
          if (*v13 >= 5u)
          {
            goto LABEL_31;
          }

LABEL_34:
          v22 = sub_2C939C(v11, 1u, 0);
          if (!v22)
          {
            goto LABEL_126;
          }

LABEL_35:
          v23 = &v22[-*v22];
          if (*v23 < 0xDu || (v24 = *(v23 + 6)) == 0)
          {
LABEL_126:
            exception = __cxa_allocate_exception(0x40uLL);
            v88 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
          }

          v25 = &v22[v24 + *&v22[v24]];
          v26 = &v25[-*v25];
          if (*v26 >= 0xBu)
          {
            v27 = *(v26 + 5);
            if (v27)
            {
              if (v25[v27])
              {
                nullsub_1();
              }
            }
          }
        }
      }

      else
      {
        if (v7 == 4)
        {
          v16 = sub_3AFEE8(v6);
          if (*(v3 + 8) != 4)
          {
            goto LABEL_127;
          }

          v11 = v16;
          v17 = sub_943960(v16, *v3, 0, "market");
          v13 = (v17 - *v17);
          if (*v13 < 5u)
          {
            goto LABEL_34;
          }

          goto LABEL_31;
        }

        v8 = sub_3AFEE8(v6);
        if (*(v3 + 8) != 5)
        {
          goto LABEL_127;
        }

        sub_F24388(v8, v3);
      }

      v28 = *(v5 + 64);
      if (v28 && (v29 = *(v5 + 56), v29 < *v28))
      {
        *(v5 + 56) = v29 + 1;
        v30 = *&v28[2 * v29 + 2];
      }

      else
      {
        v31 = sub_141BEF0(*(v5 + 48));
        v30 = sub_19593CC(v5 + 48, v31);
      }

      nullsub_1();
      *(v30 + 40) |= 2u;
      *(v30 + 56) = v32;
      if (*(v3 + 8) == 6 && *(v3 + 96) == 1 && *(v3 + 48) != *(v3 + 56))
      {
        *v98 = 0u;
        *__p = 0u;
        v100 = 1065353216;
        sub_6544C(&v103, v98, (v3 + 48));
        v33 = *(v3 + 48);
        for (i = *(v3 + 56); v33 != i; v33 += 16)
        {
          v103 = *(v33 + 8);
          sub_F244B0(v98, &v103, &v103);
        }

        *(v30 + 40) |= 1u;
        v35 = *(v30 + 48);
        if (!v35)
        {
          v36 = *(v30 + 8);
          v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
          if (v36)
          {
            v37 = *v37;
          }

          v35 = sub_141BE5C(v37);
          *(v30 + 48) = v35;
        }

        v92 = v3;
        v38 = sub_3AFB1C(v6);
        v39 = __p[0];
        if (__p[0])
        {
          v40 = v38;
          v41 = (v38 + 592);
          v96 = (v38 + 640);
          v97 = (v38 + 616);
          v94 = v38 + 16;
          v95 = (v38 + 664);
          do
          {
            while (1)
            {
              v42 = v39[2];
              v106 = "stop";
              LODWORD(v101[0]) = v42;
              v107 = 0;
              v103 = &v107;
              v104 = v101;
              v43 = v40[482] + 1;
              v40[482] = v43;
              if (!*v40)
              {
LABEL_116:
                sub_2C9894(&v103);
LABEL_117:
                v80 = __cxa_allocate_exception(0x40uLL);
                v102 = HIDWORD(v42);
                v107 = v42;
                v101[0] = sub_7FCF0(6u);
                v101[1] = v81;
                sub_2C956C("Failed to acquire entity ", &v106, " in quad node ", " at position ", " on layer ", v101, &v103);
                if ((v105 & 0x80u) == 0)
                {
                  v82 = &v103;
                }

                else
                {
                  v82 = v103;
                }

                if ((v105 & 0x80u) == 0)
                {
                  v83 = v105;
                }

                else
                {
                  v83 = v104;
                }

                v84 = sub_2D390(v80, v82, v83);
              }

              v44 = v41;
              if (*v41 == v42 || (v44 = v97, *v97 == v42) || (v44 = v96, *v96 == v42) || (v44 = v95, *v95 == v42))
              {
                ++v40[483];
                *(v44 + 1) = v43;
                v45 = *(v44 + 2);
                if (!v45)
                {
                  goto LABEL_116;
                }
              }

              else
              {
                v61 = v40[81];
                v62 = v40[78];
                v63 = v40[75];
                v93 = v40[84];
                v45 = sub_2D52A4(*v40, 6, v42, 1);
                if (v63 >= v43)
                {
                  v64 = v43;
                }

                else
                {
                  v64 = v63;
                }

                if (v63 >= v43)
                {
                  v65 = 0;
                }

                else
                {
                  v65 = 24;
                }

                if (v62 < v64)
                {
                  v64 = v62;
                  v65 = 25;
                }

                if (v61 < v64)
                {
                  v65 = 26;
                  v64 = v61;
                }

                v66 = v93 >= v64;
                v67 = 27;
                if (v66)
                {
                  v67 = v65;
                }

                v68 = v94 + 24 * v67;
                *v68 = v101[0];
                v43 = v40[482];
                *(v68 + 8) = v43;
                *(v68 + 16) = v45;
                if (!v45)
                {
                  goto LABEL_116;
                }
              }

              v46 = (v45 + *v45);
              v47 = (v46 - *v46);
              if (*v47 < 0x1Du)
              {
                goto LABEL_117;
              }

              v48 = v47[14];
              if (!v48 || *(v46 + v48 + *(v46 + v48)) <= HIDWORD(v42))
              {
                goto LABEL_117;
              }

              LODWORD(v101[0]) = 1;
              LODWORD(v106) = 0;
              v103 = &v106;
              v104 = v101;
              v49 = v43 + 1;
              v40[482] = v49;
              if (!*v40)
              {
                goto LABEL_124;
              }

              v50 = v41;
              if (*v41 == 1 || (v50 = v97, *v97 == 1) || (v50 = v96, *v96 == 1) || (v50 = v95, *v95 == 1))
              {
                ++v40[483];
                *(v50 + 1) = v49;
                v51 = *(v50 + 2);
                if (!v51)
                {
                  goto LABEL_124;
                }
              }

              else
              {
                v69 = v40[81];
                v70 = v40[78];
                v71 = v40[75];
                v72 = v40[84];
                v51 = sub_2D52A4(*v40, 6, 1u, 1);
                if (v71 >= v49)
                {
                  v73 = v49;
                }

                else
                {
                  v73 = v71;
                }

                if (v71 >= v49)
                {
                  v74 = 0;
                }

                else
                {
                  v74 = 24;
                }

                if (v70 < v73)
                {
                  v73 = v70;
                  v74 = 25;
                }

                if (v69 < v73)
                {
                  v74 = 26;
                  v73 = v69;
                }

                v66 = v72 >= v73;
                v75 = 27;
                if (v66)
                {
                  v75 = v74;
                }

                v76 = v94 + 24 * v75;
                *v76 = v101[0];
                *(v76 + 8) = v40[482];
                *(v76 + 16) = v51;
                if (!v51)
                {
LABEL_124:
                  sub_2C9894(&v103);
LABEL_125:
                  v85 = __cxa_allocate_exception(0x40uLL);
                  v86 = sub_2D390(v85, "Root quad node of transit network layer does not contain info object", 0x44uLL);
                }
              }

              v52 = (v51 + *v51);
              v53 = (v52 - *v52);
              if (*v53 < 0xDu)
              {
                goto LABEL_125;
              }

              v54 = v53[6];
              if (!v54)
              {
                goto LABEL_125;
              }

              v55 = (v52 + v54 + *(v52 + v54));
              v56 = (v55 - *v55);
              if (*v56 >= 0xBu)
              {
                v57 = v56[5];
                if (v57)
                {
                  if (*(v55 + v57))
                  {
                    nullsub_1();
                  }
                }
              }

              nullsub_1();
              v59 = v58;
              v60 = *(v35 + 16);
              if (v60 == *(v35 + 20))
              {
                break;
              }

              *(*(v35 + 24) + 8 * v60) = v58;
              *(v35 + 16) = v60 + 1;
              v39 = *v39;
              if (!v39)
              {
                goto LABEL_111;
              }
            }

            sub_1959094((v35 + 16), v60 + 1);
            *(*(v35 + 24) + 8 * v60) = v59;
            *(v35 + 16) = v60 + 1;
            v39 = *v39;
          }

          while (v39);
LABEL_111:
          v77 = __p[0];
          v6 = a2;
          v5 = a3;
          if (__p[0])
          {
            do
            {
              v78 = *v77;
              operator delete(v77);
              v77 = v78;
            }

            while (v78);
          }
        }

        v79 = v98[0];
        v98[0] = 0;
        if (v79)
        {
          operator delete(v79);
        }

        v4 = v91;
        v3 = v92;
      }

      v3 += 104;
    }

    while (v3 != v4);
  }
}

void sub_F21D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_F21D70(void ***a1, uint64_t a2)
{
  if (sub_4D1F6C(a1))
  {
    if (sub_4D1F6C(a1 + 20))
    {
      goto LABEL_3;
    }

LABEL_14:
    *(a2 + 16) |= 1u;
    v8 = *(a2 + 48);
    if (v8)
    {
      sub_64D110(a1 + 20, v8);
      if (!sub_4D1F6C(a1 + 40))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v9 = *(a2 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      sub_14BAE64(v10);
      *(a2 + 48) = v11;
      sub_64D110(a1 + 20, v11);
      if (!sub_4D1F6C(a1 + 40))
      {
        goto LABEL_20;
      }
    }

LABEL_4:
    if (sub_4D1F6C(a1 + 80))
    {
      goto LABEL_5;
    }

LABEL_26:
    *(a2 + 16) |= 0x20u;
    v16 = *(a2 + 88);
    if (v16)
    {
      sub_64D110(a1 + 80, v16);
      if (!sub_4D1F6C(a1 + 100))
      {
        goto LABEL_32;
      }
    }

    else
    {
      v17 = *(a2 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_14BAE64(v18);
      *(a2 + 88) = v19;
      sub_64D110(a1 + 80, v19);
      if (!sub_4D1F6C(a1 + 100))
      {
        goto LABEL_32;
      }
    }

LABEL_6:
    if (sub_4D1F6C(a1 + 60))
    {
      return;
    }

    goto LABEL_34;
  }

  *(a2 + 16) |= 2u;
  v4 = *(a2 + 56);
  if (v4)
  {
    sub_64D110(a1, v4);
    if (!sub_4D1F6C(a1 + 20))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = *(a2 + 8);
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5)
    {
      v6 = *v6;
    }

    sub_14BAE64(v6);
    *(a2 + 56) = v7;
    sub_64D110(a1, v7);
    if (!sub_4D1F6C(a1 + 20))
    {
      goto LABEL_14;
    }
  }

LABEL_3:
  if (sub_4D1F6C(a1 + 40))
  {
    goto LABEL_4;
  }

LABEL_20:
  *(a2 + 16) |= 4u;
  v12 = *(a2 + 64);
  if (v12)
  {
    sub_64D110(a1 + 40, v12);
    if (!sub_4D1F6C(a1 + 80))
    {
      goto LABEL_26;
    }
  }

  else
  {
    v13 = *(a2 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    sub_14BAE64(v14);
    *(a2 + 64) = v15;
    sub_64D110(a1 + 40, v15);
    if (!sub_4D1F6C(a1 + 80))
    {
      goto LABEL_26;
    }
  }

LABEL_5:
  if (sub_4D1F6C(a1 + 100))
  {
    goto LABEL_6;
  }

LABEL_32:
  *(a2 + 16) |= 0x40u;
  v20 = *(a2 + 96);
  if (v20)
  {
    sub_64D110(a1 + 100, v20);
    if (sub_4D1F6C(a1 + 60))
    {
      return;
    }

    goto LABEL_34;
  }

  v23 = *(a2 + 8);
  v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
  if (v23)
  {
    v24 = *v24;
  }

  sub_14BAE64(v24);
  *(a2 + 96) = v25;
  sub_64D110(a1 + 100, v25);
  if (!sub_4D1F6C(a1 + 60))
  {
LABEL_34:
    *(a2 + 16) |= 0x10u;
    v21 = *(a2 + 80);
    if (v21)
    {
      v22 = a1 + 60;
    }

    else
    {
      v26 = *(a2 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      sub_14BAE64(v27);
      v21 = v28;
      *(a2 + 80) = v28;
      v22 = a1 + 60;
    }

    sub_64D110(v22, v21);
  }
}

void sub_F2202C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 1064);
  v4 = *(a1 + 1072);
  if (v3 != v4)
  {
    while (1)
    {
      v8 = *(v3 + 488);
      if (v8 != 4 && v8 != 1)
      {
        goto LABEL_5;
      }

      v10 = *(a2 + 40);
      if (v10 && (v11 = *(a2 + 32), v11 < *v10))
      {
        *(a2 + 32) = v11 + 1;
        v12 = *&v10[2 * v11 + 2];
        *(v12 + 16) |= 1u;
        v7 = *(v12 + 24);
        if (!v7)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v13 = sub_14353DC(*(a2 + 24));
        v12 = sub_19593CC(a2 + 24, v13);
        *(v12 + 16) |= 1u;
        v7 = *(v12 + 24);
        if (!v7)
        {
LABEL_16:
          v14 = *(v12 + 8);
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          sub_14BAE64(v15);
          v7 = v6;
          *(v12 + 24) = v6;
        }
      }

      sub_64D110(v3, v7);
LABEL_5:
      v3 += 496;
      if (v3 == v4)
      {
        v3 = *(a1 + 1064);
        v4 = *(a1 + 1072);
        break;
      }
    }
  }

  if (v3 != v4)
  {
    while (*(v3 + 488) != 4)
    {
      v3 += 496;
      if (v3 == v4)
      {
        return;
      }
    }
  }

  if (v3 != v4)
  {
    *(a2 + 16) |= 8u;
    v16 = *(a2 + 72);
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
      *(a2 + 72) = v19;
    }

    sub_64D110(v3, v16);
  }
}

void sub_F221B4(uint64_t a1, uint64_t a2)
{
  if (!sub_4D1F6C(a1))
  {
    *(a2 + 16) |= 1u;
    v4 = *(a2 + 24);
    if (v4)
    {
      sub_64D110(a1, v4);
      if (*(a1 + 320) != 1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v7 = *(a2 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    sub_14BAE64(v8);
    *(a2 + 24) = v9;
    sub_64D110(a1, v9);
    if (*(a1 + 320) == 1)
    {
LABEL_4:
      *(a2 + 16) |= 4u;
      *(a2 + 40) = 1;
    }
  }

LABEL_5:
  if (!sub_4D1F6C((a1 + 160)))
  {
    *(a2 + 16) |= 2u;
    v5 = *(a2 + 32);
    if (v5)
    {
      v6 = (a1 + 160);
    }

    else
    {
      v10 = *(a2 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      sub_14BAE64(v11);
      v5 = v12;
      *(a2 + 32) = v12;
      v6 = (a1 + 160);
    }

    sub_64D110(v6, v5);
  }
}

void sub_F222D4(void *a1, uint64_t a2)
{
  if (!sub_4D1F6C(a1 + 32) || !sub_4D1F6C(a1 + 52))
  {
    *(a2 + 40) |= 2u;
    v4 = *(a2 + 176);
    if (!v4)
    {
      v5 = *(a2 + 8);
      v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
      if (v5)
      {
        v6 = *v6;
      }

      v4 = sub_14BB324(v6);
      *(a2 + 176) = v4;
    }

    sub_F221B4((a1 + 32), v4);
  }

  if (!sub_4D1F6C(a1 + 12))
  {
    *(a2 + 40) |= 1u;
    v7 = *(a2 + 168);
    if (v7)
    {
      v8 = (a1 + 12);
    }

    else
    {
      v9 = *(a2 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      sub_14BAE64(v10);
      v7 = v11;
      *(a2 + 168) = v11;
      v8 = (a1 + 12);
    }

    sub_64D110(v8, v7);
  }
}

void sub_F223CC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *(a1 + 8) || *(a1 + 24) != *(a1 + 32) || *(a1 + 48) != *(a1 + 56) || *(a1 + 72) != *(a1 + 80) || !sub_4D1F6C((a1 + 96)) || !sub_4D1F6C((a1 + 256)) || !sub_4D1F6C((a1 + 416)))
  {
    *(a2 + 40) |= 2u;
    v4 = *(a2 + 56);
    if (!v4)
    {
      v5 = *(a2 + 8);
      v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
      if (v5)
      {
        v6 = *v6;
      }

      v4 = sub_14BB3A4(v6);
      *(a2 + 56) = v4;
    }

    sub_F225CC(a1, v4);
    *(a2 + 40) |= 2u;
    v7 = *(a2 + 56);
    if (!v7)
    {
      v8 = *(a2 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      v7 = sub_14BB3A4(v9);
      *(a2 + 56) = v7;
    }

    sub_F222D4(a1, v7);
  }

  if (*(a1 + 584) != *(a1 + 592) || *(a1 + 608) != *(a1 + 616) || *(a1 + 632) != *(a1 + 640) || *(a1 + 656) != *(a1 + 664))
  {
    *(a2 + 40) |= 1u;
    v10 = *(a2 + 48);
    if (!v10)
    {
      v11 = *(a2 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_14BB400(v12);
      *(a2 + 48) = v10;
    }

    sub_F22778((a1 + 584), v10);
  }

  if (!sub_4D1F6C((a1 + 680)))
  {
    *(a2 + 40) |= 8u;
    v13 = *(a2 + 72);
    if (v13)
    {
      sub_64D110((a1 + 680), v13);
      v14 = *(a1 + 840) - 1;
      if (v14 > 2)
      {
        return;
      }

      goto LABEL_29;
    }

    v16 = *(a2 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_14BAE64(v17);
    *(a2 + 72) = v18;
    sub_64D110((a1 + 680), v18);
    v14 = *(a1 + 840) - 1;
    if (v14 <= 2)
    {
LABEL_29:
      v15 = dword_22AE74C[v14];
      *(a2 + 40) |= 0x100u;
      *(a2 + 112) = v15;
    }
  }
}

void sub_F225CC(void ****a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  while (v4 != v5)
  {
    v8 = *(a2 + 88);
    if (v8 && (v9 = *(a2 + 80), v9 < *v8))
    {
      *(a2 + 80) = v9 + 1;
      v7 = *&v8[2 * v9 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 72));
      v7 = sub_19593CC(a2 + 72, v6);
    }

    sub_64D110(v4, v7);
    v4 += 20;
  }

  v10 = a1[3];
  v11 = a1[4];
  while (v10 != v11)
  {
    v14 = *(a2 + 112);
    if (v14 && (v15 = *(a2 + 104), v15 < *v14))
    {
      *(a2 + 104) = v15 + 1;
      v13 = *&v14[2 * v15 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 96));
      v13 = sub_19593CC(a2 + 96, v12);
    }

    sub_64D110(v10, v13);
    v10 += 20;
  }

  v16 = a1[6];
  v17 = a1[7];
  while (v16 != v17)
  {
    v20 = *(a2 + 64);
    if (v20 && (v21 = *(a2 + 56), v21 < *v20))
    {
      *(a2 + 56) = v21 + 1;
      v19 = *&v20[2 * v21 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 48));
      v19 = sub_19593CC(a2 + 48, v18);
    }

    sub_64D110(v16, v19);
    v16 += 20;
  }

  v23 = a1[9];
  v22 = a1[10];
  while (v23 != v22)
  {
    v26 = *(a2 + 136);
    if (v26 && (v27 = *(a2 + 128), v27 < *v26))
    {
      *(a2 + 128) = v27 + 1;
      v25 = *&v26[2 * v27 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 120));
      v25 = sub_19593CC(a2 + 120, v24);
    }

    sub_64D110(v23, v25);
    v23 += 20;
  }
}

void sub_F22778(void ****a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  while (v4 != v5)
  {
    v8 = *(a2 + 80);
    if (v8 && (v9 = *(a2 + 72), v9 < *v8))
    {
      *(a2 + 72) = v9 + 1;
      v7 = *&v8[2 * v9 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 64));
      v7 = sub_19593CC(a2 + 64, v6);
    }

    sub_64D110(v4, v7);
    v4 += 20;
  }

  v10 = a1[3];
  v11 = a1[4];
  while (v10 != v11)
  {
    v14 = *(a2 + 104);
    if (v14 && (v15 = *(a2 + 96), v15 < *v14))
    {
      *(a2 + 96) = v15 + 1;
      v13 = *&v14[2 * v15 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 88));
      v13 = sub_19593CC(a2 + 88, v12);
    }

    sub_64D110(v10, v13);
    v10 += 20;
  }

  v16 = a1[6];
  v17 = a1[7];
  while (v16 != v17)
  {
    v20 = *(a2 + 56);
    if (v20 && (v21 = *(a2 + 48), v21 < *v20))
    {
      *(a2 + 48) = v21 + 1;
      v19 = *&v20[2 * v21 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 40));
      v19 = sub_19593CC(a2 + 40, v18);
    }

    sub_64D110(v16, v19);
    v16 += 20;
  }

  v23 = a1[9];
  v22 = a1[10];
  while (v23 != v22)
  {
    v26 = *(a2 + 128);
    if (v26 && (v27 = *(a2 + 120), v27 < *v26))
    {
      *(a2 + 120) = v27 + 1;
      v25 = *&v26[2 * v27 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 112));
      v25 = sub_19593CC(a2 + 112, v24);
    }

    sub_64D110(v23, v25);
    v23 += 20;
  }
}

void sub_F22924(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v12 = *(a3 + 32);
      if (v12 && (v13 = *(a3 + 24), v13 < *v12))
      {
        *(a3 + 24) = v13 + 1;
        v8 = *&v12[2 * v13 + 2];
      }

      else
      {
        v7 = sub_1435D84(*(a3 + 16));
        v8 = sub_19593CC(a3 + 16, v7);
      }

      sub_9F957C(a1, v3);
      nullsub_1();
      v9 = *(v8 + 16);
      *(v8 + 16) = v9 | 1;
      *(v8 + 24) = v10;
      v11 = *(v3 + 8) - 978307200;
      *(v8 + 16) = v9 | 3;
      *(v8 + 32) = v11;
      v3 += 12;
    }

    while (v3 != v4);
  }
}

void *sub_F229F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) |= 1u;
  v5 = *(a3 + 24);
  if (!v5)
  {
    v7 = *(a3 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    v5 = sub_1435EA0(v8);
    *(a3 + 24) = v5;
  }

  sub_9F957C(a1, a2);
  nullsub_1();
  *(v5 + 4) |= 2u;
  v5[4] = v9;
  v10 = sub_3A25A8(a1, *a2, 0, "trip");
  v11 = sub_92FC60(a1, *(v10 + *(v10 - *v10 + 6)), 0, "line");
  v12 = (v11 - *v11);
  if (*v12 >= 5u && v12[2])
  {
    v13 = sub_2C939C(a1, 1u, 0);
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v13 = sub_2C939C(a1, 1u, 0);
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  v14 = &v13[-*v13];
  if (*v14 < 0xDu || (v15 = *(v14 + 6)) == 0)
  {
LABEL_24:
    exception = __cxa_allocate_exception(0x40uLL);
    v31 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v16 = &v13[v15 + *&v13[v15]];
  v17 = &v16[-*v16];
  if (*v17 >= 0xBu)
  {
    v18 = *(v17 + 5);
    if (v18)
    {
      if (v16[v18])
      {
        nullsub_1();
      }
    }
  }

  nullsub_1();
  v19 = *(v5 + 4);
  *(v5 + 4) = v19 | 4;
  v5[5] = v20;
  v21 = *(a2 + 8) - 978307200;
  *(v5 + 4) = v19 | 0xC;
  *(v5 + 12) = v21;
  v22 = *(a2 + 12) - 978307200;
  *(v5 + 4) = v19 | 0x1C;
  *(v5 + 13) = v22;
  sub_1202298(v34, 0, 0);
  nullsub_1();
  v24 = v23;
  v25 = v35[0];
  if (v35[0] == v35[1])
  {
    v26 = v35[0] + 1;
    sub_1959094(v35, v35[0] + 1);
    *(v36 + 8 * v25) = v24;
  }

  else
  {
    *(v36 + 8 * v35[0]) = v23;
    v26 = v25 + 1;
  }

  v35[0] = v26;
  sub_1957E24(v34, __p);
  *(v5 + 4) |= 1u;
  v27 = v5[1];
  v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
  if (v27)
  {
    v28 = *v28;
  }

  sub_194EA30(v5 + 3, __p, v28);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_120236C(v34);
}

void sub_F22C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_120236C(&a15);
    _Unwind_Resume(a1);
  }

  sub_120236C(&a15);
  _Unwind_Resume(a1);
}

double sub_F22CE0(void ***a1, uint64_t a2)
{
  *(a2 + 16) |= 2u;
  v4 = *(a2 + 32);
  if (!v4)
  {
    v5 = *(a2 + 8);
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5)
    {
      v6 = *v6;
    }

    sub_14BAE64(v6);
    v4 = v7;
    *(a2 + 32) = v7;
  }

  sub_64D110(a1, v4);
  *(a2 + 16) |= 4u;
  v8 = *(a2 + 40);
  if (!v8)
  {
    v9 = *(a2 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    sub_14BAE64(v10);
    v8 = v11;
    *(a2 + 40) = v11;
  }

  sub_64D110(a1 + 20, v8);
  *(a2 + 16) |= 1u;
  v12 = *(a2 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
    v14 = (a2 + 24);
    v15 = (a1 + 40);
  }

  else
  {
    v14 = (a2 + 24);
    v15 = (a1 + 40);
  }

  sub_194EA1C(v14, v15, v13);
  return result;
}

uint64_t *sub_F22DD4(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 16) |= 1u;
  *(a2 + 24) = v2;
  return result;
}

void sub_F22DEC(uint64_t a1, uint64_t a2)
{
  nullsub_1();
  *(a2 + 40) |= 0x100u;
  *(a2 + 136) = v4;
  sub_58719C((a1 + 96), &__p);
  *(a2 + 40) |= 1u;
  v5 = *(a2 + 8);
  v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
  if (v5)
  {
    v6 = *v6;
  }

  sub_194EA30((a2 + 72), &__p, v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 72) != *(a1 + 80))
  {
    *(a2 + 40) |= 0x10u;
    v8 = *(a2 + 104);
    if (!v8)
    {
      v9 = *(a2 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      v8 = sub_1551A70(v10);
      *(a2 + 104) = v8;
    }

    sub_43735C(a1 + 72, v8);
  }

  v11 = *(a1 + 47);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a1 + 32);
  }

  if (v11)
  {
    *(a2 + 40) |= 2u;
    v12 = *(a2 + 8);
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    sub_194EA1C((a2 + 80), (a1 + 24), v13);
  }

  v14 = *(a1 + 64);
  if (v14 != -1)
  {
    *(a2 + 40) |= 0x400u;
    *(a2 + 148) = v14;
  }

  v15 = *(a1 + 136);
  if (v15 <= 2)
  {
    if (v15 == 1)
    {
      if (*(a1 + 104) == -1)
      {
        goto LABEL_31;
      }
    }

    else if (v15 != 2 || *(a1 + 108) == -1 && *(a1 + 104) == -1 && *(a1 + 112) == *(a1 + 120))
    {
      goto LABEL_31;
    }

LABEL_39:
    *(a2 + 40) |= 4u;
    v18 = *(a2 + 88);
    if (v18)
    {
      sub_586C94(a1 + 104, v18, v7);
      v17 = *(a1 + 248);
      if (v17 > 2)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v22 = *(a2 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v24 = sub_14BF484(v23);
      *(a2 + 88) = v24;
      sub_586C94(a1 + 104, v24, v25);
      v17 = *(a1 + 248);
      if (v17 > 2)
      {
        goto LABEL_41;
      }
    }

LABEL_32:
    if (v17 == 1)
    {
      if (*(a1 + 216) == -1)
      {
        goto LABEL_46;
      }
    }

    else if (v17 != 2 || *(a1 + 220) == -1 && *(a1 + 216) == -1 && *(a1 + 224) == *(a1 + 232))
    {
      goto LABEL_46;
    }

    goto LABEL_58;
  }

  if (v15 == 3 || v15 == 4)
  {
    v16 = *(a1 + 127);
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a1 + 112);
    }

    if (v16)
    {
      goto LABEL_39;
    }
  }

LABEL_31:
  v17 = *(a1 + 248);
  if (v17 <= 2)
  {
    goto LABEL_32;
  }

LABEL_41:
  if (v17 != 3 && v17 != 4)
  {
    goto LABEL_46;
  }

  v19 = *(a1 + 239);
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a1 + 224);
  }

  if (!v19)
  {
LABEL_46:
    v20 = (a1 + 328);
    v21 = *(a1 + 360);
    if (v21 <= 2)
    {
      goto LABEL_47;
    }

    goto LABEL_63;
  }

LABEL_58:
  *(a2 + 40) |= 8u;
  v26 = *(a2 + 96);
  if (!v26)
  {
    v27 = *(a2 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    v26 = sub_14BF484(v28);
    *(a2 + 96) = v26;
  }

  sub_586C94(a1 + 216, v26, v7);
  v20 = (a1 + 328);
  v21 = *(a1 + 360);
  if (v21 <= 2)
  {
LABEL_47:
    if (v21 == 1)
    {
      if (*v20 == -1)
      {
        goto LABEL_68;
      }
    }

    else if (v21 != 2 || *(a1 + 332) == -1 && *(a1 + 328) == -1 && *(a1 + 336) == *(a1 + 344))
    {
      goto LABEL_68;
    }

    goto LABEL_76;
  }

LABEL_63:
  if (v21 != 3 && v21 != 4)
  {
    goto LABEL_68;
  }

  v29 = *(a1 + 351);
  if ((v29 & 0x80u) != 0)
  {
    v29 = *(a1 + 336);
  }

  if (!v29)
  {
LABEL_68:
    v30 = (a1 + 440);
    v31 = *(a1 + 472);
    if (v31 <= 2)
    {
      goto LABEL_69;
    }

    goto LABEL_81;
  }

LABEL_76:
  *(a2 + 40) |= 0x40u;
  v32 = *(a2 + 120);
  if (!v32)
  {
    v33 = *(a2 + 8);
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    v32 = sub_14BF484(v34);
    *(a2 + 120) = v32;
  }

  sub_586C94(v20, v32, v7);
  v30 = (a1 + 440);
  v31 = *(a1 + 472);
  if (v31 <= 2)
  {
LABEL_69:
    if (v31 == 1)
    {
      if (*v30 == -1)
      {
        goto LABEL_93;
      }
    }

    else if (v31 != 2 || *(a1 + 444) == -1 && *(a1 + 440) == -1 && *(a1 + 448) == *(a1 + 456))
    {
      goto LABEL_93;
    }

    goto LABEL_88;
  }

LABEL_81:
  if (v31 == 3 || v31 == 4)
  {
    v35 = *(a1 + 463);
    if ((v35 & 0x80u) != 0)
    {
      v35 = *(a1 + 448);
    }

    if (v35)
    {
LABEL_88:
      *(a2 + 40) |= 0x80u;
      v36 = *(a2 + 128);
      if (!v36)
      {
        v37 = *(a2 + 8);
        v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
        if (v37)
        {
          v38 = *v38;
        }

        v36 = sub_14BF484(v38);
        *(a2 + 128) = v36;
      }

      sub_586C94(v30, v36, v7);
    }
  }

LABEL_93:
  v39 = *(a1 + 552);
  if (v39 != 0x7FFF)
  {
    *(a2 + 40) |= 0x800u;
    *(a2 + 152) = v39;
  }

  if (*(a1 + 554) - 1 > 4)
  {
    v40 = 0;
  }

  else
  {
    v40 = dword_22AE758[(*(a1 + 554) - 1)];
  }

  v41 = *(a1 + 555);
  if (v41 == 2)
  {
    v42 = 2;
  }

  else
  {
    v42 = v41 == 1;
  }

  v43 = *(a2 + 40);
  *(a2 + 144) = v42;
  v44 = *(a1 + 558);
  *(a2 + 40) = v43 | 0x3200;
  if (v44 == 2)
  {
    v45 = 2;
  }

  else
  {
    v45 = v44 == 1;
  }

  *(a2 + 156) = v40;
  *(a2 + 160) = v45;
}

void sub_F232D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F232F0(uint64_t a1, uint64_t a2)
{
  nullsub_1();
  v5 = *(a2 + 40);
  *(a2 + 40) = v5 | 0x10;
  *(a2 + 80) = v6;
  if (*(a1 + 64) != *(a1 + 72))
  {
    *(a2 + 40) = v5 | 0x14;
    v7 = *(a2 + 64);
    if (!v7)
    {
      v8 = *(a2 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      v7 = sub_1551A70(v9);
      *(a2 + 64) = v7;
    }

    sub_43735C(a1 + 64, v7);
  }

  v10 = *(a1 + 47);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 32);
  }

  if (v10)
  {
    *(a2 + 40) |= 2u;
    v11 = *(a2 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    sub_194EA1C((a2 + 56), (a1 + 24), v12);
  }

  v13 = *(a1 + 120);
  if (v13 <= 2)
  {
    if (v13 == 1)
    {
      if (*(a1 + 88) == -1)
      {
        return;
      }
    }

    else if (v13 != 2 || *(a1 + 92) == -1 && *(a1 + 88) == -1 && *(a1 + 96) == *(a1 + 104))
    {
      return;
    }

    goto LABEL_25;
  }

  if (v13 == 3 || v13 == 4)
  {
    v14 = *(a1 + 111);
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a1 + 96);
    }

    if (v14)
    {
LABEL_25:
      *(a2 + 40) |= 8u;
      v15 = *(a2 + 72);
      if (v15)
      {
        v16 = a1 + 88;
      }

      else
      {
        v17 = *(a2 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v15 = sub_14BF484(v18);
        *(a2 + 72) = v15;
        v16 = a1 + 88;
      }

      sub_586C94(v16, v15, v4);
    }
  }
}

void sub_F234B8(int *a1, uint64_t a2, __n128 a3)
{
  v5 = *a1;
  v6 = *(a2 + 40);
  *(a2 + 40) = v6 | 4;
  *(a2 + 64) = v5;
  v7 = a1[10];
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      if (a1[2] == -1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v7 != 2)
      {
        goto LABEL_16;
      }

      v8 = a1[3] == -1 && a1[2] == -1;
      if (v8 && *(a1 + 2) == *(a1 + 3))
      {
        goto LABEL_16;
      }
    }

LABEL_24:
    *(a2 + 40) = v6 | 6;
    v15 = *(a2 + 56);
    if (!v15)
    {
      v16 = *(a2 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_14BF484(v17);
      *(a2 + 56) = v15;
    }

    sub_586C94((a1 + 2), v15, a3);
    v18 = *(a1 + 143);
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(a1 + 16);
    }

    if (v18)
    {
      goto LABEL_19;
    }

    return;
  }

  if (v7 == 3 || v7 == 4)
  {
    v9 = *(a1 + 31);
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a1 + 2);
    }

    if (v9)
    {
      goto LABEL_24;
    }
  }

LABEL_16:
  v10 = *(a1 + 143);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 16);
  }

  if (v10)
  {
LABEL_19:
    *(a2 + 40) |= 1u;
    v11 = *(a2 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
      v13 = (a2 + 48);
      v14 = (a1 + 30);
    }

    else
    {
      v13 = (a2 + 48);
      v14 = (a1 + 30);
    }

    sub_194EA1C(v13, v14, v12);
  }
}

void sub_F2362C(void ***a1, uint64_t a2)
{
  *(a2 + 16) |= 2u;
  v4 = a1[1];
  *(a2 + 48) = *a1;
  v5 = a1[2];
  if (v4 != v5)
  {
    v6 = (a2 + 24);
    v7 = *(a2 + 24);
    do
    {
      while (1)
      {
        v8 = *v4;
        if (v7 != *(a2 + 28))
        {
          break;
        }

        sub_1958E5C((a2 + 24), v7 + 1);
        *(*(a2 + 32) + 4 * v7++) = v8;
        *v6 = v7;
        if (++v4 == v5)
        {
          goto LABEL_6;
        }
      }

      *(*(a2 + 32) + 4 * v7++) = v8;
      *v6 = v7;
      ++v4;
    }

    while (v4 != v5);
  }

LABEL_6:
  if (!sub_4D1F6C(a1 + 4))
  {
    *(a2 + 16) |= 1u;
    v9 = *(a2 + 40);
    if (!v9)
    {
      v10 = *(a2 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      sub_14BAE64(v11);
      v9 = v12;
      *(a2 + 40) = v12;
    }

    sub_64D110(a1 + 4, v9);
  }
}

void sub_F23758(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4 * (*(a1 + 4) != 0x7FFFFFFF)) - 978307200;
  v5 = *(a2 + 16);
  *(a2 + 16) = v5 | 0x40;
  *(a2 + 72) = v4;
  v6 = *(a1 + 688);
  if (v6)
  {
    *(a2 + 16) = v5 | 0x44;
    v7 = *(a2 + 40);
    if (!v7)
    {
      v8 = *(a2 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      v7 = sub_1435FA0(v9);
      *(a2 + 40) = v7;
      v6 = *(a1 + 688);
    }

    v10 = v6 - 1;
    if ((v10 & 0xFC) != 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10 + 1;
    }

    *(v7 + 16) |= 1u;
    *(v7 + 24) = v11;
  }

  if (!sub_4D1F6C((a1 + 32)) || !sub_4D1F6C((a1 + 192)))
  {
    *(a2 + 16) |= 0x10u;
    v12 = *(a2 + 56);
    if (!v12)
    {
      v13 = *(a2 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_14BB324(v14);
      *(a2 + 56) = v12;
    }

    sub_F221B4(a1 + 32, v12);
  }

  if (!sub_4D1F6C((a1 + 360)) || !sub_4D1F6C((a1 + 520)))
  {
    *(a2 + 16) |= 0x20u;
    v15 = *(a2 + 64);
    if (v15)
    {
      v16 = a1 + 360;
    }

    else
    {
      v17 = *(a2 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v15 = sub_14BB324(v18);
      *(a2 + 64) = v15;
      v16 = a1 + 360;
    }

    sub_F221B4(v16, v15);
  }
}

void sub_F238E8(void ***a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  while (v4 != v5)
  {
    v8 = *(a2 + 40);
    if (v8 && (v9 = *(a2 + 32), v9 < *v8))
    {
      *(a2 + 32) = v9 + 1;
      v7 = *&v8[2 * v9 + 2];
    }

    else
    {
      sub_14360B8(*(a2 + 24));
      v7 = sub_19593CC(a2 + 24, v6);
    }

    sub_F23758(v4, v7);
    v4 += 87;
  }

  v10 = a1[4] == a1[5] || a1[3] == 0;
  if (!v10 && !sub_4D1F6C(a1 + 7))
  {
    *(a2 + 16) |= 1u;
    v11 = *(a2 + 48);
    if (!v11)
    {
      v12 = *(a2 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_143601C(v13);
      *(a2 + 48) = v11;
    }

    sub_F2362C(a1 + 3, v11);
  }

  if (!sub_4D1F6C(a1 + 27) || !sub_4D1F6C(a1 + 47))
  {
    *(a2 + 16) |= 2u;
    v14 = *(a2 + 56);
    if (!v14)
    {
      v15 = *(a2 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_14BB324(v16);
      *(a2 + 56) = v14;
    }

    sub_F221B4((a1 + 27), v14);
  }

  if (!sub_4D1F6C(a1 + 68) || !sub_4D1F6C(a1 + 88))
  {
    *(a2 + 16) |= 4u;
    v17 = *(a2 + 64);
    if (!v17)
    {
      v18 = *(a2 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_14BB324(v19);
      *(a2 + 64) = v17;
    }

    sub_F221B4((a1 + 68), v17);
  }

  if (!sub_4D1F6C(a1 + 109) || !sub_4D1F6C(a1 + 129))
  {
    *(a2 + 16) |= 8u;
    v20 = *(a2 + 72);
    if (v20)
    {
      v21 = (a1 + 109);
    }

    else
    {
      v22 = *(a2 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v20 = sub_14BB324(v23);
      *(a2 + 72) = v20;
      v21 = (a1 + 109);
    }

    sub_F221B4(v21, v20);
  }
}