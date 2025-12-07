uint64_t sub_9721FC(uint64_t a1)
{
  sub_53A868(a1 + 80);
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v2)
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
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 24);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 9);
        v7 -= 4;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(a1 + 24);
    }

    *(a1 + 32) = v6;
    operator delete(v8);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9722E4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_325C((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  v7 = *(a2 + 65);
  *(a1 + 88) = 0;
  *(a1 + 65) = v7;
  *(a1 + 40) = v5;
  *(a1 + 56) = v6;
  *(a1 + 792) = 0;
  if (*(a2 + 792) == 1)
  {
    sub_972B74(a1 + 88, a2 + 88);
    *(a1 + 792) = 1;
  }

  *(a1 + 800) = 0;
  *(a1 + 840) = 0;
  if (*(a2 + 840) == 1)
  {
    v8 = *(a2 + 800);
    *(a1 + 808) = *(a2 + 808);
    *(a1 + 800) = v8;
    if (*(a2 + 839) < 0)
    {
      sub_325C((a1 + 816), *(a2 + 816), *(a2 + 824));
    }

    else
    {
      v9 = *(a2 + 816);
      *(a1 + 832) = *(a2 + 832);
      *(a1 + 816) = v9;
    }

    *(a1 + 840) = 1;
  }

  *(a1 + 848) = 0;
  *(a1 + 952) = 0;
  if (*(a2 + 952) == 1)
  {
    sub_9734F4(a1 + 848, (a2 + 848));
    *(a1 + 952) = 1;
  }

  sub_9737CC(a1 + 960, (a2 + 960));
  *(a1 + 1008) = *(a2 + 1008);
  sub_9738C8(a1 + 1016, a2 + 1016);
  sub_973A4C((a1 + 1600), (a2 + 1600));
  sub_55BD50(a1 + 1696, a2 + 1696);
  *(a1 + 1856) = *(a2 + 1856);
  sub_973D7C((a1 + 1864), (a2 + 1864));
  v10 = *(a2 + 1888);
  *(a1 + 1901) = *(a2 + 1901);
  *(a1 + 1888) = v10;
  *(a1 + 1920) = 0;
  *(a1 + 1936) = 0;
  *(a1 + 1928) = 0;
  v11 = *(a2 + 1920);
  v12 = *(a2 + 1928);
  if (v12 != v11)
  {
    if (((v12 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1960) = 0;
  *(a1 + 1944) = 0u;
  v13 = *(a2 + 1944);
  v14 = *(a2 + 1952);
  if (v14 != v13)
  {
    if (((v14 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v15 = *(a2 + 1968);
  *(a1 + 1984) = *(a2 + 1984);
  *(a1 + 1968) = v15;
  *(a1 + 2000) = 0;
  *(a1 + 2016) = 0;
  *(a1 + 2008) = 0;
  v16 = *(a2 + 2000);
  v17 = *(a2 + 2008);
  if (v17 != v16)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v17 - v16) >> 2)) < 0x924924924924925)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 2024) = 0;
  *(a1 + 2104) = 0;
  if (*(a2 + 2104) == 1)
  {
    sub_9740B0(a1 + 2024, a2 + 2024);
    *(a1 + 2104) = 1;
  }

  *(a1 + 2112) = 0;
  *(a1 + 2144) = 0;
  if (*(a2 + 2144) == 1)
  {
    sub_97422C((a1 + 2112), (a2 + 2112));
    *(a1 + 2136) = *(a2 + 2136);
    *(a1 + 2144) = 1;
  }

  *(a1 + 2168) = 0;
  *(a1 + 2152) = 0u;
  v18 = *(a2 + 2152);
  v19 = *(a2 + 2160);
  if (v19 != v18)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v20 = *(a2 + 2176);
  *(a1 + 2192) = *(a2 + 2192);
  *(a1 + 2176) = v20;
  *(a1 + 2200) = 0;
  *(a1 + 2216) = 0;
  *(a1 + 2208) = 0;
  v21 = *(a2 + 2200);
  v22 = *(a2 + 2208);
  if (v22 != v21)
  {
    if (((v22 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_974500(a1 + 2224, a2 + 2224);
  *(a1 + 3440) = 0;
  *(a1 + 3424) = 0u;
  sub_974AAC(a1 + 3424, *(a2 + 3424), *(a2 + 3432), 0x34F72C234F72C235 * ((*(a2 + 3432) - *(a2 + 3424)) >> 4));
  *(a1 + 3464) = 0;
  *(a1 + 3448) = 0u;
  v23 = *(a2 + 3448);
  v24 = *(a2 + 3456);
  if (v24 != v23)
  {
    if (((v24 - v23) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 3488) = 0;
  *(a1 + 3472) = 0u;
  v25 = *(a2 + 3472);
  v26 = *(a2 + 3480);
  if (v26 != v25)
  {
    if (((v26 - v25) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_5F4380(a1 + 3496, (a2 + 3496));
  sub_5F4380(a1 + 4584, (a2 + 4584));
  *(a1 + 5672) = *(a2 + 5672);
  *(a1 + 5680) = 0;
  *(a1 + 5696) = 0;
  *(a1 + 5688) = 0;
  v27 = *(a2 + 5680);
  v28 = *(a2 + 5688);
  if (v28 != v27)
  {
    if (((v28 - v27) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_972900(_Unwind_Exception *a1)
{
  if (*(v1 + 840) == 1 && *(v1 + 839) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 792) == 1)
  {
    sub_973264(v2);
    if ((*(v1 + 39) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(v1 + 39) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

  operator delete(*(v1 + 16));
  _Unwind_Resume(a1);
}

void sub_972B4C()
{
  if (!*v0)
  {
    JUMPOUT(0x972A94);
  }

  JUMPOUT(0x972A8CLL);
}

void sub_972B64()
{
  if (!*v0)
  {
    JUMPOUT(0x972AB8);
  }

  JUMPOUT(0x972AB0);
}

uint64_t sub_972B74(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  sub_973044(a1 + 72, (a2 + 72));
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  v7 = *(a2 + 136);
  v8 = *(a2 + 144);
  if (v8 != v7)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a2 + 183) < 0)
  {
    sub_325C((a1 + 160), *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v9 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v9;
  }

  *(a1 + 184) = *(a2 + 184);
  if (*(a2 + 215) < 0)
  {
    sub_325C((a1 + 192), *(a2 + 192), *(a2 + 200));
  }

  else
  {
    v10 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v10;
  }

  *(a1 + 216) = *(a2 + 216);
  sub_55F1E8(a1 + 224, a2 + 224);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  v12 = *(a2 + 352);
  v11 = *(a2 + 360);
  if (v11 != v12)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v11 - v12) >> 2)) <= 0x924924924924924)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  v14 = *(a2 + 376);
  v13 = *(a2 + 384);
  if (v13 != v14)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v13 - v14) >> 2)) <= 0x924924924924924)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  v16 = *(a2 + 400);
  v15 = *(a2 + 408);
  if (v15 != v16)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v15 - v16) >> 2)) <= 0x924924924924924)
    {
      operator new();
    }

    sub_1794();
  }

  v17 = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 424) = v17;
  sub_973044(a1 + 440, (a2 + 440));
  *(a1 + 504) = *(a2 + 504);
  sub_55F1E8(a1 + 512, a2 + 512);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = 0;
  *(a1 + 648) = 0;
  *(a1 + 640) = 0;
  v18 = *(a2 + 632);
  v19 = *(a2 + 640);
  if (v19 != v18)
  {
    if (((v19 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v20 = *(a2 + 656);
  v21 = *(a2 + 672);
  *(a1 + 681) = *(a2 + 681);
  *(a1 + 656) = v20;
  *(a1 + 672) = v21;
  return a1;
}

void sub_972EE0(_Unwind_Exception *a1)
{
  if (*(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
    sub_9354C4(v2);
    sub_973124(v1 + 72);
    _Unwind_Resume(a1);
  }

  sub_9354C4(v2);
  sub_973124(v1 + 72);
  _Unwind_Resume(a1);
}

void sub_973008()
{
  if (*(v0 + 376))
  {
    JUMPOUT(0x972FF4);
  }

  JUMPOUT(0x972FB4);
}

void sub_973018()
{
  if (!*(v0 + 352))
  {
    JUMPOUT(0x972FC4);
  }

  JUMPOUT(0x972FBCLL);
}

void sub_973028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9)
{
  sub_9356F0(&a9);
  sub_973124(v9 + 72);
  _Unwind_Resume(a1);
}

uint64_t sub_973044(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      v4 = a2;
      sub_325C(a1, *a2, *(a2 + 1));
      a2 = v4;
    }

    else
    {
      v3 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v3;
    }

    *(a1 + 24) = *(a2 + 24);
    if (*(a2 + 55) < 0)
    {
      sub_325C((a1 + 32), *(a2 + 4), *(a2 + 5));
    }

    else
    {
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
    }

    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_9730EC(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    sub_973124(v1);
    _Unwind_Resume(a1);
  }

  sub_973124(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_973124(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    if ((*(result + 55) & 0x80000000) == 0)
    {
      if ((*(result + 23) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_6:
      v2 = result;
      operator delete(*result);
      return v2;
    }

    v1 = result;
    operator delete(*(result + 32));
    result = v1;
    if (*(v1 + 23) < 0)
    {
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t sub_973194(uint64_t a1)
{
  if ((*(a1 + 167) & 0x80000000) == 0)
  {
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 112));
    v2 = *(a1 + 96);
    if (v2 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 144));
  if (*(a1 + 135) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 96);
  if (v2 != -1)
  {
LABEL_7:
    (off_266E5B0[v2])(&v4, a1 + 64);
  }

LABEL_8:
  *(a1 + 96) = -1;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

uint64_t sub_973264(uint64_t a1)
{
  v2 = *(a1 + 632);
  if (v2)
  {
    *(a1 + 640) = v2;
    operator delete(v2);
  }

  if ((*(a1 + 615) & 0x80000000) == 0)
  {
    if ((*(a1 + 583) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    operator delete(*(a1 + 560));
    v3 = *(a1 + 544);
    if (v3 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  operator delete(*(a1 + 592));
  if (*(a1 + 583) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v3 = *(a1 + 544);
  if (v3 != -1)
  {
LABEL_9:
    (off_266E5B0[v3])(&v13, a1 + 512);
  }

LABEL_10:
  *(a1 + 544) = -1;
  if (*(a1 + 496) != 1)
  {
    goto LABEL_13;
  }

  if (*(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
    if ((*(a1 + 463) & 0x80000000) == 0)
    {
LABEL_13:
      v4 = *(a1 + 400);
      if (!v4)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 463) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(*(a1 + 440));
  v4 = *(a1 + 400);
  if (v4)
  {
LABEL_14:
    *(a1 + 408) = v4;
    operator delete(v4);
  }

LABEL_15:
  v5 = *(a1 + 376);
  if (v5)
  {
    *(a1 + 384) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 352);
  if (v6)
  {
    *(a1 + 360) = v6;
    operator delete(v6);
  }

  if ((*(a1 + 327) & 0x80000000) == 0)
  {
    if ((*(a1 + 295) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(*(a1 + 272));
    v7 = *(a1 + 256);
    if (v7 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  operator delete(*(a1 + 304));
  if (*(a1 + 295) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v7 = *(a1 + 256);
  if (v7 != -1)
  {
LABEL_25:
    (off_266E5B0[v7])(&v14, a1 + 224);
  }

LABEL_26:
  *(a1 + 256) = -1;
  if ((*(a1 + 215) & 0x80000000) == 0)
  {
    if ((*(a1 + 183) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_32:
    operator delete(*(a1 + 160));
    v8 = *(a1 + 136);
    if (!v8)
    {
LABEL_29:
      if (*(a1 + 128) == 1)
      {
        goto LABEL_43;
      }

      return a1;
    }

    goto LABEL_33;
  }

  operator delete(*(a1 + 192));
  if (*(a1 + 183) < 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  v8 = *(a1 + 136);
  if (!v8)
  {
    goto LABEL_29;
  }

LABEL_33:
  v10 = *(a1 + 144);
  if (v10 == v8)
  {
    *(a1 + 144) = v8;
    operator delete(v8);
    if (*(a1 + 128) != 1)
    {
      return a1;
    }

LABEL_43:
    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
      if ((*(a1 + 95) & 0x80000000) == 0)
      {
        return a1;
      }
    }

    else if ((*(a1 + 95) & 0x80000000) == 0)
    {
      return a1;
    }

    operator delete(*(a1 + 72));
    return a1;
  }

  do
  {
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 3));
      v11 = v10 - 7;
      if ((*(v10 - 33) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v11 = v10 - 7;
      if ((*(v10 - 33) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    operator delete(*v11);
LABEL_36:
    v10 = v11;
  }

  while (v11 != v8);
  v12 = *(a1 + 136);
  *(a1 + 144) = v8;
  operator delete(v12);
  if (*(a1 + 128) == 1)
  {
    goto LABEL_43;
  }

  return a1;
}

uint64_t sub_9734F4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = v4;
  sub_9735D8((a1 + 32), a2 + 4);
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a1 + 72) = 0;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v8 = *(a2 + 9);
  v7 = *(a2 + 10);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 96) = *(a2 + 12);
  return a1;
}

void sub_9735B4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  sub_3108E8((v1 + 32));
  _Unwind_Resume(a1);
}

uint64_t *sub_9735D8(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_97371C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_55C6CC(va);
  *(v10 + 8) = v11;
  sub_55C730(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_97373C(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      *(a1 + 80) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      if (v4 != v3)
      {
        do
        {
          if (*(v4 - 9) < 0)
          {
            operator delete(*(v4 - 32));
          }

          v4 -= 40;
        }

        while (v4 != v3);
        v5 = *(a1 + 32);
      }

      *(a1 + 40) = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_9737CC(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    v2 = *a2;
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 8) = 0;
    *a1 = v2;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v4 = *(a2 + 1);
    v3 = *(a2 + 2);
    if (v3 != v4)
    {
      if (((v3 - v4) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    *(a1 + 32) = *(a2 + 4);
    *(a1 + 40) = 1;
  }

  return a1;
}

void sub_973890(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  if (*(v1 + 40) == 1)
  {
    v5 = *v2;
    if (*v2)
    {
      *(v1 + 16) = v5;
      operator delete(v5);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9738C8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_5CEC4C(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 5));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_5CEC4C(a1 + 24, *(a2 + 24), *(a2 + 32), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 32) - *(a2 + 24)) >> 5));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_5CEC4C(a1 + 48, *(a2 + 48), *(a2 + 56), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 56) - *(a2 + 48)) >> 5));
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_5CEC4C(a1 + 72, *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 5));
  sub_55BD50(a1 + 96, a2 + 96);
  sub_55BD50(a1 + 256, a2 + 256);
  sub_55BD50(a1 + 416, a2 + 416);
  *(a1 + 576) = *(a2 + 576);
  return a1;
}

void sub_9739C8(_Unwind_Exception *a1)
{
  sub_53A868((v1 + 32));
  sub_53A868((v1 + 12));
  sub_5C0ED8(v4);
  sub_5C0ED8(v3);
  sub_5C0ED8(v2);
  sub_5C0ED8(v1);
  _Unwind_Resume(a1);
}

void sub_973A1C(_Unwind_Exception *a1)
{
  sub_5C0ED8(v2);
  sub_5C0ED8(v1);
  _Unwind_Resume(a1);
}

void *sub_973A4C(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_5CEC4C(a1, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 5));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_5CEC4C((a1 + 3), a2[3], a2[4], 0xCCCCCCCCCCCCCCCDLL * ((a2[4] - a2[3]) >> 5));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_5CEC4C((a1 + 6), a2[6], a2[7], 0xCCCCCCCCCCCCCCCDLL * ((a2[7] - a2[6]) >> 5));
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  sub_5CEC4C((a1 + 9), a2[9], a2[10], 0xCCCCCCCCCCCCCCCDLL * ((a2[10] - a2[9]) >> 5));
  return a1;
}

void sub_973B1C(_Unwind_Exception *a1)
{
  sub_5C0ED8(v3);
  sub_5C0ED8(v2);
  sub_5C0ED8(v1);
  _Unwind_Resume(a1);
}

void **sub_973B5C(void **a1)
{
  v2 = a1[9];
  if (v2)
  {
    v3 = a1[10];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_53A868(v3 - 160);
      }

      while (v3 != v2);
      v4 = a1[9];
    }

    a1[10] = v2;
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    v6 = a1[7];
    v7 = a1[6];
    if (v6 != v5)
    {
      do
      {
        v6 = sub_53A868(v6 - 160);
      }

      while (v6 != v5);
      v7 = a1[6];
    }

    a1[7] = v5;
    operator delete(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    v9 = a1[4];
    v10 = a1[3];
    if (v9 != v8)
    {
      do
      {
        v9 = sub_53A868(v9 - 160);
      }

      while (v9 != v8);
      v10 = a1[3];
    }

    a1[4] = v8;
    operator delete(v10);
  }

  v11 = *a1;
  if (*a1)
  {
    v12 = a1[1];
    v13 = *a1;
    if (v12 != v11)
    {
      do
      {
        v12 = sub_53A868(v12 - 160);
      }

      while (v12 != v11);
      v13 = *a1;
    }

    a1[1] = v11;
    operator delete(v13);
  }

  return a1;
}

void **sub_973C60(void **a1)
{
  sub_53A868((a1 + 52));
  sub_53A868((a1 + 32));
  sub_53A868((a1 + 12));
  v2 = a1[9];
  if (v2)
  {
    v3 = a1[10];
    v4 = a1[9];
    if (v3 != v2)
    {
      do
      {
        v3 = sub_53A868(v3 - 160);
      }

      while (v3 != v2);
      v4 = a1[9];
    }

    a1[10] = v2;
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    v6 = a1[7];
    v7 = a1[6];
    if (v6 != v5)
    {
      do
      {
        v6 = sub_53A868(v6 - 160);
      }

      while (v6 != v5);
      v7 = a1[6];
    }

    a1[7] = v5;
    operator delete(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    v9 = a1[4];
    v10 = a1[3];
    if (v9 != v8)
    {
      do
      {
        v9 = sub_53A868(v9 - 160);
      }

      while (v9 != v8);
      v10 = a1[3];
    }

    a1[4] = v8;
    operator delete(v10);
  }

  v11 = *a1;
  if (*a1)
  {
    v12 = a1[1];
    v13 = *a1;
    if (v12 != v11)
    {
      do
      {
        v12 = sub_53A868(v12 - 160);
      }

      while (v12 != v11);
      v13 = *a1;
    }

    a1[1] = v11;
    operator delete(v13);
  }

  return a1;
}

uint64_t *sub_973D7C(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xF0F0F0F0F0F0F0F1 * ((v2 - *a2) >> 4) < 0xF0F0F0F0F0F0F1)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_973E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_973EB8(va);
  *(v10 + 8) = v11;
  sub_973FB8(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_973EB8(uint64_t *a1)
{
  if ((a1[3] & 1) == 0)
  {
    v3 = a1[1];
    v2 = a1[2];
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 272;
        sub_973F20(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_973F20(uint64_t a1, uint64_t a2)
{
  sub_53A868(a2 + 112);
  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
    if ((*(a2 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v3 = *(a2 + 32);
      if (v3 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a2 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a2 + 48));
  v3 = *(a2 + 32);
  if (v3 != -1)
  {
LABEL_7:
    (off_266E5B0[v3])(&v4, a2);
  }

LABEL_8:
  *(a2 + 32) = -1;
}

void sub_973FB8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (!v2)
  {
    return;
  }

  v4 = v1[1];
  v5 = **a1;
  if (v4 == v2)
  {
    goto LABEL_13;
  }

  do
  {
    sub_53A868((v4 - 20));
    if (*(v4 - 169) < 0)
    {
      operator delete(*(v4 - 24));
      if (*(v4 - 201) < 0)
      {
LABEL_10:
        operator delete(*(v4 - 28));
        v6 = v4 - 34;
        v7 = *(v4 - 60);
        if (v7 == -1)
        {
          goto LABEL_4;
        }

LABEL_11:
        (off_266E5B0[v7])(&v8, v6);
        goto LABEL_4;
      }
    }

    else if (*(v4 - 201) < 0)
    {
      goto LABEL_10;
    }

    v6 = v4 - 34;
    v7 = *(v4 - 60);
    if (v7 != -1)
    {
      goto LABEL_11;
    }

LABEL_4:
    *(v4 - 60) = -1;
    v4 = v6;
  }

  while (v6 != v2);
  v5 = **a1;
LABEL_13:
  v1[1] = v2;
  operator delete(v5);
}

uint64_t sub_9740B0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 48) = 0;
  *(a1 + 40) = v5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v7 = *(a2 + 48);
  v6 = *(a2 + 56);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void sub_97418C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

uint64_t sub_9741C8(uint64_t result)
{
  if (*(result + 80) == 1)
  {
    v1 = *(result + 48);
    if (v1)
    {
      *(result + 56) = v1;
      v2 = result;
      operator delete(v1);
      result = v2;
    }

    if (*(result + 31) < 0)
    {
      v3 = result;
      operator delete(*(result + 8));
      return v3;
    }
  }

  return result;
}

uint64_t *sub_97422C(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_974378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_974398(va);
  *(v10 + 8) = v11;
  sub_9743FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_974398(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 17) < 0)
      {
        operator delete(*(v3 - 40));
      }

      v3 -= 48;
    }
  }

  return a1;
}

void ***sub_9743FC(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          if (*(v4 - 17) < 0)
          {
            operator delete(*(v4 - 5));
          }

          v4 -= 6;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_974480(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
      v4 = *a1;
      if (v3 != v2)
      {
        do
        {
          if (*(v3 - 17) < 0)
          {
            operator delete(*(v3 - 5));
          }

          v3 -= 6;
        }

        while (v3 != v2);
        v4 = *a1;
      }

      *(a1 + 8) = v2;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t sub_974500(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_9746D4(a1, *a2, *(a2 + 8), 0x66FD0EB66FD0EB67 * ((*(a2 + 8) - *a2) >> 3));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_55BD50(a1 + 56, a2 + 56);
  sub_55BD50(a1 + 216, a2 + 216);
  sub_55BD50(a1 + 376, a2 + 376);
  *(a1 + 536) = *(a2 + 536);
  sub_55BD50(a1 + 544, a2 + 544);
  sub_55BD50(a1 + 704, a2 + 704);
  *(a1 + 864) = *(a2 + 864);
  sub_55BD50(a1 + 872, a2 + 872);
  sub_55BD50(a1 + 1032, a2 + 1032);
  *(a1 + 1192) = *(a2 + 1192);
  return a1;
}

void sub_974640(_Unwind_Exception *a1)
{
  sub_53A868((v1 + 109));
  sub_53A868((v1 + 88));
  sub_53A868((v1 + 68));
  sub_53A868((v1 + 47));
  sub_53A868((v1 + 27));
  sub_9749E0(v2);
  sub_974A1C(v1);
  _Unwind_Resume(a1);
}

void sub_9746AC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
    sub_974A1C(v1);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x974694);
}

void sub_9746D4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x5E293205E29321)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_9747D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_9748B4(va);
  *(v10 + 8) = v11;
  sub_97493C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_9747F8(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = v4;
  sub_55BD50(a1 + 32, (a2 + 2));
  sub_55BD50(a1 + 192, (a2 + 12));
  *(a1 + 352) = *(a2 + 352);
  sub_55BD50(a1 + 360, a2 + 360);
  sub_55BD50(a1 + 520, a2 + 520);
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 688) = *(a2 + 688);
  return a1;
}

void sub_974874(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 360);
  sub_53A868(v1 + 192);
  sub_53A868(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t sub_9748B4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 696)
    {
      sub_53A868(v4 - 176);
      sub_53A868(v4 - 336);
      sub_53A868(v4 - 504);
      sub_53A868(v4 - 664);
    }
  }

  return a1;
}

void ***sub_97493C(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          sub_53A868((v4 - 176));
          sub_53A868((v4 - 336));
          sub_53A868((v4 - 504));
          sub_53A868((v4 - 664));
          v4 -= 696;
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

uint64_t sub_9749E0(uint64_t a1)
{
  sub_53A868(a1 + 32);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

char **sub_974A1C(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        sub_53A868((v3 - 176));
        sub_53A868((v3 - 336));
        sub_53A868((v3 - 504));
        sub_53A868((v3 - 664));
        v3 -= 696;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_974AAC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x8D3DCB08D3DCB1)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_974B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v12)
  {
    v14 = v11 - 464;
    v15 = -v12;
    do
    {
      sub_974D90(v14);
      v14 -= 464;
      v15 += 464;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_974E40(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_974BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_55BD50(a1, a2);
  sub_55BD50(v4 + 160, a2 + 160);
  sub_55F1E8(a1 + 320, a2 + 320);
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  v6 = *(a2 + 432);
  v5 = *(a2 + 440);
  if (v5 != v6)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 456) = *(a2 + 456);
  return a1;
}

void sub_974C9C(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_974CCC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 432);
  if (v3)
  {
    *(v1 + 440) = v3;
    operator delete(v3);
  }

  sub_974CF0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_974CF0(uint64_t a1)
{
  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
    if ((*(a1 + 391) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 352);
      if (v2 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 391) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 368));
  v2 = *(a1 + 352);
  if (v2 != -1)
  {
LABEL_7:
    (off_266E5B0[v2])(&v4, a1 + 320);
  }

LABEL_8:
  *(a1 + 352) = -1;
  sub_53A868(a1 + 160);
  return sub_53A868(a1);
}

uint64_t sub_974D90(uint64_t a1)
{
  v2 = *(a1 + 432);
  if (v2)
  {
    *(a1 + 440) = v2;
    operator delete(v2);
  }

  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
    if ((*(a1 + 391) & 0x80000000) == 0)
    {
LABEL_5:
      v3 = *(a1 + 352);
      if (v3 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 391) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 368));
  v3 = *(a1 + 352);
  if (v3 != -1)
  {
LABEL_9:
    (off_266E5B0[v3])(&v5, a1 + 320);
  }

LABEL_10:
  *(a1 + 352) = -1;
  sub_53A868(a1 + 160);
  return sub_53A868(a1);
}

void ***sub_974E40(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v4 -= 464;
          sub_974D90(v4);
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

char **sub_974EB8(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 464;
        sub_974D90(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

char **sub_974F1C(char **a1)
{
  sub_53A868((a1 + 129));
  sub_53A868((a1 + 109));
  sub_53A868((a1 + 88));
  sub_53A868((a1 + 68));
  sub_53A868((a1 + 47));
  sub_53A868((a1 + 27));
  sub_53A868((a1 + 7));
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
    v5 = *a1;
    if (v4 != v3)
    {
      do
      {
        sub_53A868((v4 - 176));
        sub_53A868((v4 - 336));
        sub_53A868((v4 - 504));
        sub_53A868((v4 - 664));
        v4 -= 696;
      }

      while (v4 != v3);
      v5 = *a1;
    }

    a1[1] = v3;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_974FF4(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    v2 = *(a1 + 88);
    if (v2)
    {
      v3 = *(a1 + 96);
      v4 = *(a1 + 88);
      if (v3 != v2)
      {
        do
        {
          if (*(v3 - 17) < 0)
          {
            operator delete(*(v3 - 40));
          }

          v3 -= 48;
        }

        while (v3 != v2);
        v4 = *(a1 + 88);
      }

      *(a1 + 96) = v2;
      operator delete(v4);
    }
  }

  if (*(a1 + 80) != 1)
  {
    return a1;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = v5;
    operator delete(v5);
  }

  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

void **sub_9750B4(void **a1)
{
  sub_53A868((a1 + 85));
  sub_973B5C(a1 + 73);

  return sub_973C60(a1);
}

uint64_t sub_9750F8(uint64_t a1)
{
  v2 = *(a1 + 5680);
  if (v2)
  {
    *(a1 + 5688) = v2;
    operator delete(v2);
  }

  sub_559E70((a1 + 4584));
  sub_559E70((a1 + 3496));
  v3 = *(a1 + 3472);
  if (v3)
  {
    *(a1 + 3480) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 3448);
  if (v4)
  {
    *(a1 + 3456) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 3424);
  if (v5)
  {
    v6 = *(a1 + 3432);
    v7 = *(a1 + 3424);
    if (v6 != v5)
    {
      do
      {
        v6 -= 464;
        sub_974D90(v6);
      }

      while (v6 != v5);
      v7 = *(a1 + 3424);
    }

    *(a1 + 3432) = v5;
    operator delete(v7);
  }

  sub_974F1C((a1 + 2224));
  v8 = *(a1 + 2200);
  if (v8)
  {
    *(a1 + 2208) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 2152);
  if (v9)
  {
    *(a1 + 2160) = v9;
    operator delete(v9);
  }

  if (*(a1 + 2144) == 1)
  {
    v10 = *(a1 + 2112);
    if (v10)
    {
      v11 = *(a1 + 2120);
      v12 = *(a1 + 2112);
      if (v11 != v10)
      {
        do
        {
          if (*(v11 - 17) < 0)
          {
            operator delete(*(v11 - 40));
          }

          v11 -= 48;
        }

        while (v11 != v10);
        v12 = *(a1 + 2112);
      }

      *(a1 + 2120) = v10;
      operator delete(v12);
    }
  }

  if (*(a1 + 2104) == 1)
  {
    v13 = *(a1 + 2072);
    if (v13)
    {
      *(a1 + 2080) = v13;
      operator delete(v13);
    }

    if (*(a1 + 2055) < 0)
    {
      operator delete(*(a1 + 2032));
    }
  }

  v14 = *(a1 + 2000);
  if (v14)
  {
    *(a1 + 2008) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 1944);
  if (v15)
  {
    *(a1 + 1952) = v15;
    operator delete(v15);
  }

  v16 = *(a1 + 1920);
  if (v16)
  {
    *(a1 + 1928) = v16;
    operator delete(v16);
  }

  v23 = (a1 + 1864);
  sub_973FB8(&v23);
  sub_53A868(a1 + 1696);
  sub_973B5C((a1 + 1600));
  sub_973C60((a1 + 1016));
  if (*(a1 + 1000) == 1)
  {
    v17 = *(a1 + 968);
    if (v17)
    {
      *(a1 + 976) = v17;
      operator delete(v17);
    }
  }

  if (*(a1 + 952) == 1)
  {
    v18 = *(a1 + 920);
    if (v18)
    {
      *(a1 + 928) = v18;
      operator delete(v18);
    }

    v19 = *(a1 + 880);
    if (v19)
    {
      v20 = *(a1 + 888);
      v21 = *(a1 + 880);
      if (v20 != v19)
      {
        do
        {
          if (*(v20 - 9) < 0)
          {
            operator delete(*(v20 - 32));
          }

          v20 -= 40;
        }

        while (v20 != v19);
        v21 = *(a1 + 880);
      }

      *(a1 + 888) = v19;
      operator delete(v21);
    }
  }

  if (*(a1 + 840) != 1 || (*(a1 + 839) & 0x80000000) == 0)
  {
    if (*(a1 + 792) != 1)
    {
      goto LABEL_53;
    }

LABEL_56:
    sub_973264(a1 + 88);
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_57;
  }

  operator delete(*(a1 + 816));
  if (*(a1 + 792) == 1)
  {
    goto LABEL_56;
  }

LABEL_53:
  if ((*(a1 + 39) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_57:
  operator delete(*(a1 + 16));
  return a1;
}

uint64_t sub_975394(uint64_t a1, __int128 **a2, __int128 **a3, char a4)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_2C1C04((a1 + 48), a3);
  *(a1 + 72) = a4;
  sub_64B998(a1 + 80);
  sub_975468((a1 + 24), 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  sub_975588(a2, (a1 + 24));
  return a1;
}

void sub_975420(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 80);
  sub_1A104((v1 + 48));
  sub_4B98C4((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_975468(uint64_t *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    sub_1794();
  }
}

__int128 **sub_975588(__int128 **a1, __int128 **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      if (*(v3 + 23) < 0)
      {
        sub_325C(__p, *v3, *(v3 + 1));
        v13 = 1;
        v7 = a2[1];
        if (v7 >= a2[2])
        {
LABEL_9:
          v8 = sub_667410(a2, __p);
          v9 = SHIBYTE(v12);
          a2[1] = v8;
          if (v9 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_4;
        }
      }

      else
      {
        v6 = *v3;
        v12 = *(v3 + 2);
        *__p = v6;
        v13 = 1;
        v7 = a2[1];
        if (v7 >= a2[2])
        {
          goto LABEL_9;
        }
      }

      v5 = *__p;
      *(v7 + 16) = v12;
      *v7 = v5;
      __p[1] = 0;
      v12 = 0;
      __p[0] = 0;
      *(v7 + 24) = v13;
      a2[1] = (v7 + 32);
LABEL_4:
      v3 = (v3 + 24);
    }

    while (v3 != v4);
  }

  return a2;
}

void sub_975670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_97568C()
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
  xmmword_27B1CD0 = 0u;
  unk_27B1CE0 = 0u;
  dword_27B1CF0 = 1065353216;
  sub_3A9A34(&xmmword_27B1CD0, v0, v0);
  sub_3A9A34(&xmmword_27B1CD0, v3, v3);
  sub_3A9A34(&xmmword_27B1CD0, __p, __p);
  sub_3A9A34(&xmmword_27B1CD0, v9, v9);
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
    qword_27B1C78 = 0;
    qword_27B1C80 = 0;
    qword_27B1C70 = 0;
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

void sub_975964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1C88)
  {
    qword_27B1C90 = qword_27B1C88;
    operator delete(qword_27B1C88);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_975A28(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = sub_3AFC64(a2);
  a1[2] = sub_3AFB1C(a2);
  a1[3] = sub_3AFEE8(a2);
  nullsub_1();
  return a1;
}

void sub_975CA4(_Unwind_Exception *a1)
{
  sub_9778C4(v1);
  sub_1F1A8(v2 - 112);
  _Unwind_Resume(a1);
}

void sub_975D04(void *a1, unint64_t a2)
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

void sub_975E80(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t *a3@<X0>, uint64_t *a4@<X1>, uint64_t a5@<X3>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v5 == v6)
  {
LABEL_26:

    sub_64B998(a2);
  }

  else
  {
    v7 = *(a1 + 48);
    while (1)
    {
      v8 = *v7;
      v9 = v7[1];
      if (*v7 != v9)
      {
        while (*v8)
        {
          v8 += 144;
          if (v8 == v9)
          {
            goto LABEL_32;
          }
        }
      }

      if (v8 == v9)
      {
LABEL_32:
        exception = __cxa_allocate_exception(0x40uLL);
        v17 = sub_2D390(exception, "Journey has a segment bundle without a main segment", 0x33uLL);
      }

      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (v10 != v11)
      {
        break;
      }

LABEL_3:
      v7 += 8;
      if (v7 == v6)
      {
        while (1)
        {
          v12 = *v5;
          v13 = v5[1];
          if (*v5 != v13)
          {
            while (*v12)
            {
              v12 += 144;
              if (v12 == v13)
              {
                goto LABEL_32;
              }
            }
          }

          if (v12 == v13)
          {
            goto LABEL_32;
          }

          v14 = *(v12 + 8);
          v15 = *(v12 + 16);
          if (v14 != v15)
          {
            break;
          }

LABEL_16:
          v5 += 8;
          if (v5 == v6)
          {
            goto LABEL_26;
          }
        }

        while (*(v14 + 1128) != 3)
        {
          v14 += 1136;
          if (v14 == v15)
          {
            goto LABEL_16;
          }
        }

        sub_977394(a3, a4, v14, a5, a2);
        return;
      }
    }

    while (v10[282])
    {
      v10 += 284;
      if (v10 == v11)
      {
        goto LABEL_3;
      }
    }

    sub_975FDC(a3, a4, v10, a5, a2);
  }
}

void sub_975FDC(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_3A25A8(a1[1], a3[2] | (a3[1] << 32), 0, "trip");
  v11 = *(v10 + *(v10 - *v10 + 6));
  v12 = sub_92FC60(a1[1], v11, 0, "line");
  v13 = *(v12 + *(v12 - *v12 + 6));
  v15 = a3[1];
  v14 = a3[2];
  v16 = a3[4];
  v17 = sub_3A231C(a1[1], v14 | (v15 << 32), 0);
  v18 = &v17[-*v17];
  if (*v18 < 5u)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(v18 + 2);
    if (*(v18 + 2))
    {
      v19 += &v17[*&v17[v19]];
    }
  }

  v20 = (v19 + 4 * v15 + 4 + *(v19 + 4 * v15 + 4));
  v21 = (v20 - *v20);
  if (*v21 >= 0xDu && (v22 = v21[6]) != 0)
  {
    v23 = *(v20 + v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = *&v17[24 * v23 + 4 + 24 * v16 + *(v18 + 3) + *&v17[*(v18 + 3)]];
  v182 = 0uLL;
  v183 = 0;
  v180 = 0uLL;
  v181 = 0;
  v178 = 0uLL;
  v179 = 0;
  v25 = sub_92FC60(a1[1], v11, 0, "line");
  v26 = (v25 - *v25);
  if (*v26 < 0x35u || (v27 = v26[26]) == 0 || !*(v25 + v27))
  {
    v28 = sub_92FC60(a1[1], v11, 0, "line");
    v29 = (v28 - *v28);
    if (*v29 >= 0xFu && (v30 = v29[7]) != 0)
    {
      v31 = (v28 + v30 + *(v28 + v30));
      memset(__p, 0, 24);
      sub_943AEC(__p, *v31);
      *&__dst = v31 + 1;
      v173[0] = &v31[*v31 + 1];
      sub_943E24(&__dst, v173, __p, sub_509164);
      v32 = *__p;
      v33 = __p[2];
    }

    else
    {
      v33 = 0;
      v32 = 0uLL;
    }

    v177[0] = v32;
    *&v177[1] = v33;
    sub_9D6590(v177, a4, __p);
    sub_9D4538(__p, &__dst);
    if (SHIBYTE(v183) < 0)
    {
      operator delete(v182);
    }

    v182 = __dst;
    v183 = v176;
    v34 = __p[0];
    if (!__p[0])
    {
      goto LABEL_28;
    }

    v35 = __p[1];
    v36 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_27:
      __p[1] = v34;
      operator delete(v36);
LABEL_28:
      v38 = *&v177[0];
      if (*&v177[0])
      {
        v39 = *(&v177[0] + 1);
        v40 = *&v177[0];
        if (*(&v177[0] + 1) != *&v177[0])
        {
          v163 = v13;
          v41 = v11;
          v42 = a4;
          v43 = v24;
          v44 = a2;
          v45 = a5;
          do
          {
            v46 = *(v39 - 24);
            if (v46)
            {
              v47 = *(v39 - 16);
              v48 = *(v39 - 24);
              if (v47 != v46)
              {
                do
                {
                  if (*(v47 - 1) < 0)
                  {
                    operator delete(*(v47 - 24));
                  }

                  v47 -= 32;
                }

                while (v47 != v46);
                v48 = *(v39 - 24);
              }

              *(v39 - 16) = v46;
              operator delete(v48);
            }

            v49 = (v39 - 64);
            if (*(v39 - 41) < 0)
            {
              operator delete(*v49);
            }

            v39 -= 64;
          }

          while (v49 != v38);
          v40 = *&v177[0];
          a5 = v45;
          a2 = v44;
          v24 = v43;
          a4 = v42;
          v11 = v41;
          v13 = v163;
        }

        *(&v177[0] + 1) = v38;
        operator delete(v40);
      }

      goto LABEL_44;
    }

    while (1)
    {
      if (*(v35 - 1) < 0)
      {
        operator delete(*(v35 - 3));
        v37 = v35 - 7;
        if ((*(v35 - 33) & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

LABEL_25:
        operator delete(*v37);
        v35 = v37;
        if (v37 == v34)
        {
LABEL_26:
          v36 = __p[0];
          goto LABEL_27;
        }
      }

      else
      {
        v37 = v35 - 7;
        if (*(v35 - 33) < 0)
        {
          goto LABEL_25;
        }

LABEL_22:
        v35 = v37;
        if (v37 == v34)
        {
          goto LABEL_26;
        }
      }
    }
  }

LABEL_44:
  v50 = sub_93E04C(a1[3], v13, 0, "system");
  v51 = (v50 - *v50);
  if (*v51 >= 0x13u)
  {
    v52 = v51[9];
    if (v52)
    {
      if (*(v50 + v52))
      {
        goto LABEL_79;
      }
    }
  }

  v53 = sub_93E04C(a1[3], v13, 0, "system");
  v54 = (v53 - *v53);
  if (*v54 >= 7u && (v55 = v54[3]) != 0)
  {
    v56 = (v53 + v55 + *(v53 + v55));
    memset(__p, 0, 24);
    sub_943AEC(__p, *v56);
    *&__dst = v56 + 1;
    v173[0] = &v56[*v56 + 1];
    sub_943E24(&__dst, v173, __p, sub_509164);
    v57 = *__p;
    v58 = __p[2];
  }

  else
  {
    v58 = 0;
    v57 = 0uLL;
  }

  v177[0] = v57;
  *&v177[1] = v58;
  sub_9D6590(v177, a4, __p);
  sub_9D43A4(__p, &__dst);
  if (SHIBYTE(v181) < 0)
  {
    operator delete(v180);
  }

  v180 = __dst;
  v181 = v176;
  v59 = __p[0];
  if (__p[0])
  {
    v60 = __p[1];
    v61 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_62:
      __p[1] = v59;
      operator delete(v61);
      goto LABEL_63;
    }

    while (1)
    {
      if (*(v60 - 1) < 0)
      {
        operator delete(*(v60 - 3));
        v62 = v60 - 7;
        if ((*(v60 - 33) & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

LABEL_60:
        operator delete(*v62);
        v60 = v62;
        if (v62 == v59)
        {
LABEL_61:
          v61 = __p[0];
          goto LABEL_62;
        }
      }

      else
      {
        v62 = v60 - 7;
        if (*(v60 - 33) < 0)
        {
          goto LABEL_60;
        }

LABEL_57:
        v60 = v62;
        if (v62 == v59)
        {
          goto LABEL_61;
        }
      }
    }
  }

LABEL_63:
  v63 = *&v177[0];
  if (*&v177[0])
  {
    v64 = *(&v177[0] + 1);
    v65 = *&v177[0];
    if (*(&v177[0] + 1) != *&v177[0])
    {
      do
      {
        v66 = *(v64 - 24);
        if (v66)
        {
          v67 = *(v64 - 16);
          v68 = *(v64 - 24);
          if (v67 != v66)
          {
            do
            {
              if (*(v67 - 1) < 0)
              {
                operator delete(*(v67 - 24));
              }

              v67 -= 32;
            }

            while (v67 != v66);
            v68 = *(v64 - 24);
          }

          *(v64 - 16) = v66;
          operator delete(v68);
        }

        v69 = (v64 - 64);
        if (*(v64 - 41) < 0)
        {
          operator delete(*v69);
        }

        v64 -= 64;
      }

      while (v69 != v63);
      v65 = *&v177[0];
    }

    *(&v177[0] + 1) = v63;
    operator delete(v65);
  }

LABEL_79:
  memset(v177, 0, 24);
  v70 = sub_502FF8(a1[2], v24, 0, "stop");
  v71 = *(v70 + *(v70 - *v70 + 10));
  if (v71 > 0xFFFFFFFEFFFFFFFFLL || v71 == 0)
  {
    goto LABEL_148;
  }

  v73 = sub_93D2F4(a1[2], v71, 0, "hall");
  v74 = (v73 - *v73);
  if (*v74 >= 9u && (v75 = v74[4]) != 0)
  {
    v76 = (v73 + v75 + *(v73 + v75));
    memset(__p, 0, 24);
    sub_943AEC(__p, *v76);
    v173[0] = v76 + 1;
    v185[0] = &v76[*v76 + 1];
    sub_943E24(v173, v185, __p, sub_509164);
    v77 = *__p;
    v78 = __p[2];
  }

  else
  {
    v78 = 0;
    v77 = 0uLL;
  }

  __dst = v77;
  v176 = v78;
  sub_9D6590(&__dst, a4, __p);
  v79 = *&v177[0];
  if (*&v177[0])
  {
    v80 = *(&v177[0] + 1);
    v81 = *&v177[0];
    if (*(&v177[0] + 1) == *&v177[0])
    {
LABEL_96:
      *(&v177[0] + 1) = v79;
      operator delete(v81);
      goto LABEL_97;
    }

    while (1)
    {
      if (*(v80 - 1) < 0)
      {
        operator delete(*(v80 - 3));
        v82 = v80 - 7;
        if ((*(v80 - 33) & 0x80000000) == 0)
        {
          goto LABEL_91;
        }

LABEL_94:
        operator delete(*v82);
        v80 = v82;
        if (v82 == v79)
        {
LABEL_95:
          v81 = *&v177[0];
          goto LABEL_96;
        }
      }

      else
      {
        v82 = v80 - 7;
        if (*(v80 - 33) < 0)
        {
          goto LABEL_94;
        }

LABEL_91:
        v80 = v82;
        if (v82 == v79)
        {
          goto LABEL_95;
        }
      }
    }
  }

LABEL_97:
  *&v177[0] = __p[0];
  *(v177 + 8) = *&__p[1];
  if (__p[0] == __p[1])
  {
    v83 = sub_93D2F4(a1[2], v71, 0, "hall");
    v84 = *(v83 + *(v83 - *v83 + 10));
    if (v84 <= 0xFFFFFFFEFFFFFFFFLL && v84 != 0)
    {
      v86 = sub_93D480(a1[2], v84, 0, "station");
      v87 = (v86 - *v86);
      if (*v87 >= 9u && (v88 = v87[4]) != 0)
      {
        v89 = (v86 + v88 + *(v86 + v88));
        memset(__p, 0, 24);
        sub_943AEC(__p, *v89);
        v185[0] = v89 + 1;
        v184 = &v89[*v89 + 1];
        sub_943E24(v185, &v184, __p, sub_509164);
        v90 = *__p;
        v91 = __p[2];
      }

      else
      {
        v91 = 0;
        v90 = 0uLL;
      }

      *v173 = v90;
      v174 = v91;
      sub_9D6590(v173, a4, __p);
      v92 = *&v177[0];
      if (!*&v177[0])
      {
LABEL_116:
        v177[0] = *__p;
        *&v177[1] = __p[2];
        v96 = v173[0];
        if (v173[0])
        {
          v97 = v173[1];
          v98 = v173[0];
          if (v173[1] != v173[0])
          {
            do
            {
              v99 = *(v97 - 3);
              if (v99)
              {
                v100 = *(v97 - 2);
                v101 = *(v97 - 3);
                if (v100 != v99)
                {
                  do
                  {
                    if (*(v100 - 1) < 0)
                    {
                      operator delete(*(v100 - 24));
                    }

                    v100 -= 32;
                  }

                  while (v100 != v99);
                  v101 = *(v97 - 3);
                }

                *(v97 - 2) = v99;
                operator delete(v101);
              }

              v102 = (v97 - 64);
              if (*(v97 - 41) < 0)
              {
                operator delete(*v102);
              }

              v97 -= 64;
            }

            while (v102 != v96);
            v98 = v173[0];
          }

          v173[1] = v96;
          operator delete(v98);
        }

        goto LABEL_132;
      }

      v93 = *(&v177[0] + 1);
      v94 = *&v177[0];
      if (*(&v177[0] + 1) == *&v177[0])
      {
LABEL_115:
        *(&v177[0] + 1) = v92;
        operator delete(v94);
        goto LABEL_116;
      }

      while (1)
      {
        if (*(v93 - 1) < 0)
        {
          operator delete(*(v93 - 3));
          v95 = v93 - 7;
          if ((*(v93 - 33) & 0x80000000) == 0)
          {
            goto LABEL_110;
          }

LABEL_113:
          operator delete(*v95);
          v93 = v95;
          if (v95 == v92)
          {
LABEL_114:
            v94 = *&v177[0];
            goto LABEL_115;
          }
        }

        else
        {
          v95 = v93 - 7;
          if (*(v93 - 33) < 0)
          {
            goto LABEL_113;
          }

LABEL_110:
          v93 = v95;
          if (v95 == v92)
          {
            goto LABEL_114;
          }
        }
      }
    }
  }

LABEL_132:
  v103 = __dst;
  if (__dst)
  {
    v104 = *(&__dst + 1);
    v105 = __dst;
    if (*(&__dst + 1) != __dst)
    {
      do
      {
        v106 = *(v104 - 24);
        if (v106)
        {
          v107 = *(v104 - 16);
          v108 = *(v104 - 24);
          if (v107 != v106)
          {
            do
            {
              if (*(v107 - 1) < 0)
              {
                operator delete(*(v107 - 24));
              }

              v107 -= 32;
            }

            while (v107 != v106);
            v108 = *(v104 - 24);
          }

          *(v104 - 16) = v106;
          operator delete(v108);
        }

        v109 = (v104 - 64);
        if (*(v104 - 41) < 0)
        {
          operator delete(*v109);
        }

        v104 -= 64;
      }

      while (v109 != v103);
      v105 = __dst;
    }

    *(&__dst + 1) = v103;
    operator delete(v105);
  }

LABEL_148:
  if (*&v177[0] != *(&v177[0] + 1))
  {
    goto LABEL_179;
  }

  v110 = sub_502FF8(a1[2], v24, 0, "stop");
  v111 = (v110 - *v110);
  if (*v111 >= 9u && (v112 = v111[4]) != 0)
  {
    v113 = (v110 + v112 + *(v110 + v112));
    memset(__p, 0, 24);
    sub_943AEC(__p, *v113);
    v173[0] = v113 + 1;
    v185[0] = &v113[*v113 + 1];
    sub_943E24(v173, v185, __p, sub_509164);
    v114 = *__p;
    v115 = __p[2];
  }

  else
  {
    v115 = 0;
    v114 = 0uLL;
  }

  __dst = v114;
  v176 = v115;
  sub_9D6590(&__dst, a4, __p);
  v116 = *&v177[0];
  if (*&v177[0])
  {
    v117 = *(&v177[0] + 1);
    v118 = *&v177[0];
    if (*(&v177[0] + 1) == *&v177[0])
    {
LABEL_162:
      *(&v177[0] + 1) = v116;
      operator delete(v118);
      goto LABEL_163;
    }

    while (1)
    {
      if (*(v117 - 1) < 0)
      {
        operator delete(*(v117 - 3));
        v119 = v117 - 7;
        if ((*(v117 - 33) & 0x80000000) == 0)
        {
          goto LABEL_157;
        }

LABEL_160:
        operator delete(*v119);
        v117 = v119;
        if (v119 == v116)
        {
LABEL_161:
          v118 = *&v177[0];
          goto LABEL_162;
        }
      }

      else
      {
        v119 = v117 - 7;
        if (*(v117 - 33) < 0)
        {
          goto LABEL_160;
        }

LABEL_157:
        v117 = v119;
        if (v119 == v116)
        {
          goto LABEL_161;
        }
      }
    }
  }

LABEL_163:
  v177[0] = *__p;
  *&v177[1] = __p[2];
  v120 = __dst;
  if (__dst)
  {
    v121 = *(&__dst + 1);
    v122 = __dst;
    if (*(&__dst + 1) != __dst)
    {
      do
      {
        v123 = *(v121 - 24);
        if (v123)
        {
          v124 = *(v121 - 16);
          v125 = *(v121 - 24);
          if (v124 != v123)
          {
            do
            {
              if (*(v124 - 1) < 0)
              {
                operator delete(*(v124 - 24));
              }

              v124 -= 32;
            }

            while (v124 != v123);
            v125 = *(v121 - 24);
          }

          *(v121 - 16) = v123;
          operator delete(v125);
        }

        v126 = (v121 - 64);
        if (*(v121 - 41) < 0)
        {
          operator delete(*v126);
        }

        v121 -= 64;
      }

      while (v126 != v120);
      v122 = __dst;
    }

    *(&__dst + 1) = v120;
    operator delete(v122);
  }

LABEL_179:
  sub_9D43A4(v177, __p);
  if (SHIBYTE(v179) < 0)
  {
    operator delete(v178);
  }

  v179 = __p[2];
  v178 = *__p;
  v127 = __p[2] >> 56;
  if (SHIBYTE(__p[2]) < 0)
  {
    v127 = *(&v178 + 1);
  }

  if (!v127 && sub_7E7E4(1u))
  {
    sub_19594F8(__p);
    v128 = sub_4A5C(__p, "Could not resolve any name for stop ", 36);
    v129 = a1[2];
    v130 = sub_502FF8(v129, v24, 0, "stop");
    v131 = (v130 - *v130);
    if (*v131 >= 5u && (v132 = v131[2]) != 0)
    {
      v133 = *(v130 + v132);
    }

    else
    {
      v133 = 0;
    }

    v134 = sub_2C939C(v129, 1u, 0);
    if (!v134 || (v135 = &v134[-*v134], *v135 < 0xDu) || (v136 = *(v135 + 6)) == 0)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v162 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
    }

    v137 = &v134[v136 + *&v134[v136]];
    v138 = &v137[-*v137];
    if (*v138 >= 0xBu)
    {
      v139 = *(v138 + 5);
      if (v139)
      {
        if (v137[v139])
        {
          nullsub_1();
          v133 = v140;
        }
      }
    }

    std::ostream::operator<<(v128, v133);
    if ((v172 & 0x10) != 0)
    {
      v142 = v171;
      if (v171 < v168)
      {
        v171 = v168;
        v142 = v168;
      }

      v143 = v167;
      v141 = v142 - v167;
      if (v142 - v167 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_263;
      }
    }

    else
    {
      if ((v172 & 8) == 0)
      {
        v141 = 0;
        HIBYTE(v176) = 0;
LABEL_207:
        *(&__dst + v141) = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(v176) < 0)
        {
          operator delete(__dst);
        }

        if (v170 < 0)
        {
          operator delete(v169);
        }

        std::locale::~locale(&__p[2]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_212;
      }

      v143 = __p[3];
      v141 = v166 - __p[3];
      if (v166 - __p[3] >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_263:
        sub_3244();
      }
    }

    if (v141 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v176) = v141;
    if (v141)
    {
      memmove(&__dst, v143, v141);
    }

    goto LABEL_207;
  }

LABEL_212:
  v144 = sub_92FC60(a1[1], v11, 0, "line");
  v145 = (v144 - *v144);
  v147 = *v145 >= 0x2Du && (v146 = v145[22]) != 0 && *(v144 + v146) != 0;
  v148 = sub_92FC60(a1[1], v11, 0, "line");
  v149 = (v148 - *v148);
  if (*v149 >= 0x2Bu && (v150 = v149[21]) != 0)
  {
    v151 = *(v148 + v150);
  }

  else
  {
    v151 = 2;
  }

  memset(__p, 0, sizeof(__p));
  v165 = 1065353216;
  v152 = HIBYTE(v183);
  if (SHIBYTE(v183) < 0)
  {
    v152 = *(&v182 + 1);
  }

  if (v152)
  {
    sub_977A7C(__p, "{Line}", "{Line}", &v182);
  }

  v153 = HIBYTE(v181);
  if (SHIBYTE(v181) < 0)
  {
    v153 = *(&v180 + 1);
  }

  if (v153)
  {
    sub_977A7C(__p, "{System}", "{System}", &v180);
  }

  sub_977A7C(__p, "{Stop}", "{Stop}", &v178);
  if (byte_27B1D6F < 0)
  {
    sub_325C(&__dst, xmmword_27B1D58, *(&xmmword_27B1D58 + 1));
  }

  else
  {
    __dst = xmmword_27B1D58;
    v176 = unk_27B1D68;
  }

  sub_9CD974(__p, v151, v147, 1, a2, &__dst);
  sub_6A5584(&__dst, __p, a2, 0, v173);
  sub_64BC20(a5, v173);
  if ((SHIBYTE(v174) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v176) & 0x80000000) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_236;
  }

  operator delete(v173[0]);
  if (SHIBYTE(v176) < 0)
  {
LABEL_236:
    operator delete(__dst);
    v154 = __p[2];
    if (!__p[2])
    {
      goto LABEL_243;
    }

    while (1)
    {
LABEL_240:
      v155 = *v154;
      if (v154[63] < 0)
      {
        operator delete(*(v154 + 5));
        if ((v154[39] & 0x80000000) == 0)
        {
          goto LABEL_239;
        }

LABEL_242:
        operator delete(*(v154 + 2));
        operator delete(v154);
        v154 = v155;
        if (!v155)
        {
          goto LABEL_243;
        }
      }

      else
      {
        if (v154[39] < 0)
        {
          goto LABEL_242;
        }

LABEL_239:
        operator delete(v154);
        v154 = v155;
        if (!v155)
        {
          goto LABEL_243;
        }
      }
    }
  }

LABEL_233:
  v154 = __p[2];
  if (__p[2])
  {
    goto LABEL_240;
  }

LABEL_243:
  v156 = __p[0];
  __p[0] = 0;
  if (v156)
  {
    operator delete(v156);
  }

  v157 = *&v177[0];
  if (*&v177[0])
  {
    v158 = *(&v177[0] + 1);
    v159 = *&v177[0];
    if (*(&v177[0] + 1) == *&v177[0])
    {
LABEL_254:
      *(&v177[0] + 1) = v157;
      operator delete(v159);
      goto LABEL_255;
    }

    while (1)
    {
      if (*(v158 - 1) < 0)
      {
        operator delete(*(v158 - 3));
        v160 = v158 - 7;
        if ((*(v158 - 33) & 0x80000000) == 0)
        {
          goto LABEL_249;
        }

LABEL_252:
        operator delete(*v160);
        v158 = v160;
        if (v160 == v157)
        {
LABEL_253:
          v159 = *&v177[0];
          goto LABEL_254;
        }
      }

      else
      {
        v160 = v158 - 7;
        if (*(v158 - 33) < 0)
        {
          goto LABEL_252;
        }

LABEL_249:
        v158 = v160;
        if (v160 == v157)
        {
          goto LABEL_253;
        }
      }
    }
  }

LABEL_255:
  if (SHIBYTE(v179) < 0)
  {
    operator delete(v178);
    if ((SHIBYTE(v181) & 0x80000000) == 0)
    {
LABEL_257:
      if ((SHIBYTE(v183) & 0x80000000) == 0)
      {
        return;
      }

LABEL_261:
      operator delete(v182);
      return;
    }
  }

  else if ((SHIBYTE(v181) & 0x80000000) == 0)
  {
    goto LABEL_257;
  }

  operator delete(v180);
  if (SHIBYTE(v183) < 0)
  {
    goto LABEL_261;
  }
}

void sub_9771E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  sub_941AEC(&a11);
  sub_941AEC((v50 - 256));
  sub_9354C4((v50 - 224));
  if (*(v50 - 169) < 0)
  {
    operator delete(*(v50 - 192));
    if ((*(v50 - 137) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v50 - 137) & 0x80000000) == 0)
  {
LABEL_3:
    if (*(v50 - 105) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  operator delete(*(v50 - 160));
  if (*(v50 - 105) < 0)
  {
LABEL_4:
    operator delete(*(v50 - 128));
    _Unwind_Resume(a1);
  }

LABEL_7:
  _Unwind_Resume(a1);
}

void sub_977394(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_9775C4(a3 + 32, *a1, a4, &v16);
  if (v16 == v17)
  {
    sub_64B998(a5);
    goto LABEL_16;
  }

  sub_977960(__p, "{RouteName}", v16);
  *v13 = 0u;
  *v14 = 0u;
  v15 = 1065353216;
  sub_2C7D4(v13, __p, __p);
  if (v21 < 0)
  {
    operator delete(v20);
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(__p[0]);
LABEL_4:
  sub_6A5584(aRoutesummaryWa, v13, a2, 0, __p);
  sub_64BC20(a5, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = v14[0];
  if (v14[0])
  {
    do
    {
      v9 = *v7;
      if (*(v7 + 63) < 0)
      {
        operator delete(v7[5]);
        if (*(v7 + 39) < 0)
        {
LABEL_14:
          operator delete(v7[2]);
        }
      }

      else if (*(v7 + 39) < 0)
      {
        goto LABEL_14;
      }

      operator delete(v7);
      v7 = v9;
    }

    while (v9);
  }

  v8 = v13[0];
  v13[0] = 0;
  if (v8)
  {
    operator delete(v8);
  }

LABEL_16:
  v10 = v16;
  if (v16)
  {
    v11 = v17;
    v12 = v16;
    if (v17 != v16)
    {
      do
      {
        v11 -= 176;
        sub_5C17B4(v11);
      }

      while (v11 != v10);
      v12 = v16;
    }

    v17 = v10;
    operator delete(v12);
  }
}

void sub_977540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_5EBF44(va);
  _Unwind_Resume(a1);
}

void sub_977554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_2CD04(&a9);
  sub_5EBF44(&a15);
  _Unwind_Resume(a1);
}

void sub_977588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_2CD04(&a9);
  sub_1AB28(va);
  sub_5EBF44(&a15);
  _Unwind_Resume(a1);
}

void sub_9775AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_5EBF44(va);
  _Unwind_Resume(a1);
}

void sub_9775C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  v7 = sub_694AE4(&__p, a1);
  v16 = v7;
  sub_79163C(v7 - 12656, a2);
  sub_791A1C((v7 - 12656), a2, a3);
  sub_7E1EB4(v14, a2, a3);
  sub_7E206C(v14, &__p, v8, v9, v10);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_610880(a4, *(v7 - 11480), *(v7 - 11472), 0x2E8BA2E8BA2E8BA3 * ((*(v7 - 11472) - *(v7 - 11480)) >> 4));
  v11 = __p;
  if (__p)
  {
    v12 = v16;
    v13 = __p;
    if (v16 != __p)
    {
      do
      {
        v12 = sub_694110(v12 - 12656);
      }

      while (v12 != v11);
      v13 = __p;
    }

    v16 = v11;
    operator delete(v13);
  }
}

void sub_9776D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6910B8(va);
  _Unwind_Resume(a1);
}

void sub_9776E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6910B8(va);
  _Unwind_Resume(a1);
}

void sub_9776FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6910B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_977710(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = v2 - *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 4) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - v1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * (v3 >> 4);
  *v7 = 0x8000000080000000;
  *(v7 + 8) = 0x7FFFFFFF;
  *(v7 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  v8 = v7 + 48;
  v9 = v7 - v3;
  if (v1 != v2)
  {
    v10 = v1;
    v11 = v9;
    do
    {
      v12 = *v10;
      *(v11 + 16) = v10[2];
      *v11 = v12;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      *(v11 + 24) = *(v10 + 3);
      *(v11 + 40) = v10[5];
      v10[3] = 0;
      v10[4] = 0;
      v10[5] = 0;
      v10 += 6;
      v11 += 48;
    }

    while (v10 != v2);
    do
    {
      v13 = v1[3];
      if (v13)
      {
        v14 = v1[4];
        v15 = v1[3];
        if (v14 != v13)
        {
          do
          {
            v14 = sub_6081F0(v14 - 160);
          }

          while (v14 != v13);
          v15 = v1[3];
        }

        v1[4] = v13;
        operator delete(v15);
      }

      v1 += 6;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v9;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v8;
}

char **sub_9778C4(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
          {
            do
            {
              v6 = sub_6081F0(v6 - 160);
            }

            while (v6 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

_BYTE *sub_977960(_BYTE *a1, char *__s, __int128 *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
    a1[v7] = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *a1 = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_5:
      v8 = *a3;
      *(a1 + 5) = *(a3 + 2);
      *(a1 + 24) = v8;
      return a1;
    }
  }

  sub_325C(a1 + 24, *a3, *(a3 + 1));
  return a1;
}

void sub_977A60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_977A7C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
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

  v8 = sub_AAD8(v26, a2, v7);
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
    sub_977E50();
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

void sub_977E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2CC94(va);
  _Unwind_Resume(a1);
}

void sub_977F10(_Unwind_Exception *a1)
{
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
    sub_2CC94(v1);
    _Unwind_Resume(a1);
  }

  sub_2CC94(v1);
  _Unwind_Resume(a1);
}

void sub_977F48()
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
  xmmword_27B1D70 = 0u;
  unk_27B1D80 = 0u;
  dword_27B1D90 = 1065353216;
  sub_3A9A34(&xmmword_27B1D70, v0, v0);
  sub_3A9A34(&xmmword_27B1D70, v3, v3);
  sub_3A9A34(&xmmword_27B1D70, __p, __p);
  sub_3A9A34(&xmmword_27B1D70, v9, v9);
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
    qword_27B1D00 = 0;
    qword_27B1D08 = 0;
    qword_27B1CF8 = 0;
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

void sub_978260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1D10)
  {
    qword_27B1D18 = qword_27B1D10;
    operator delete(qword_27B1D10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_978324(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = sub_985F68(a1, a2, a3);
  *result = off_266E608;
  return result;
}

void sub_97835C(uint64_t a1, void **a2)
{
  memset(&__dst, 0, sizeof(__dst));
  v20 = 0uLL;
  v21 = 0;
  sub_A07024(a1, &v16);
  if (v18)
  {
    if (v19 - 1 >= 2)
    {
      v6 = v16 == 0x7FFFFFFF || v19 != 0 || v18 != 1 || v17 == 0x7FFFFFFF;
      if (v6 || v16 / 60 != v17 / 60)
      {
        if (v17 <= v16)
        {
          v7 = 2;
        }

        else
        {
          v7 = 3;
        }

        sub_195A048(&__dst, "Now {LiveDepartureTime} {RT_Symbol}", 0x23uLL);
        v15[0] = v17;
        sub_64E308(a2, "{LiveDepartureTime}", v15, a1 + 144, 0);
        size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v9 = sub_9274F4(*(a1 + 24), &__dst);
          if (&v20 != v9)
          {
            v10 = *(v9 + 23);
            if (SHIBYTE(v21) < 0)
            {
              if (v10 >= 0)
              {
                v13 = v9;
              }

              else
              {
                v13 = *v9;
              }

              if (v10 >= 0)
              {
                v14 = *(v9 + 23);
              }

              else
              {
                v14 = v9[1];
              }

              sub_13B38(&v20, v13, v14);
            }

            else if ((*(v9 + 23) & 0x80) != 0)
            {
              sub_13A68(&v20, *v9, v9[1]);
            }

            else
            {
              v11 = *v9;
              v21 = v9[2];
              v20 = v11;
            }
          }
        }

        v12 = 2;
      }

      else
      {
        HIBYTE(v21) = 11;
        strcpy(&v20, "{RT_Symbol}");
        v7 = 1;
        v12 = 1;
      }

      LOBYTE(v15[0]) = 0;
      sub_64C770(a2, &v20, &unk_22A4E40, v12, v15);
      sub_9CE3F8(a2, v7);
      sub_588850(1, v15);
      sub_64BF94(a2, "{RT_Symbol}", v15);
    }

    sub_9870F0(a1, a2);
  }

  if ((SHIBYTE(v21) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v20);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_41;
  }
}

void sub_97860C(_Unwind_Exception *a1)
{
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
    if ((*(v1 - 41) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v1 - 41) & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(*(v1 - 64));
  _Unwind_Resume(a1);
}

double sub_978680@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0x100000000000000;
  *&result = 32;
  *a1 = xmmword_22A4E70;
  return result;
}

void sub_97869C(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (sub_9873FC(a1))
  {
    sub_64B9EC(a2, (*(a1 + 32) + 1177), &xmmword_22A4E88);
    sub_A077A4(a1, a2);
  }

  sub_A074B0(a1, a2);
}

void sub_978724(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_986084(a1, a2);
  if (*(a1 + 173) != 1 || sub_9873FC(a1))
  {
    sub_978784(a1, a2);
  }
}

void sub_978784(uint64_t a1, uint64_t *a2)
{
  v4 = sub_A072C8(a1);
  if (*v4 != 0x7FFFFFFF)
  {
    v5 = *(v4 + 31);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(v4 + 16);
    }

    if (v5 && *(*(a1 + 32) + 1177) >= 8u)
    {
      if (*v4)
      {
        sub_64EFAC(a2, "{TotalPrice}", v4);
      }

      operator new();
    }
  }
}

void sub_978A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 25) < 0)
  {
    operator delete(*(v14 - 48));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_978AF4(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (sub_9873FC(a1))
  {
    sub_64B9EC(a2, (*(a1 + 32) + 1177), &xmmword_22A4E88);
    sub_A08E84(a1, a2);
  }

  sub_A08A68(a1, a2);
}

void sub_978B9C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_9873FC(a1))
  {
    sub_64B9EC(a2, (*(a1 + 32) + 1177), &xmmword_22A4EA0);
    if (sub_A07178(a1) && sub_A07080(a1))
    {
      v4 = sub_A0701C(a1);
      v5 = 1;
      v6 = 144;
    }

    else
    {
      v4 = sub_A07108(a1);
      v5 = 0;
      v6 = 96;
    }

    sub_986F10(a1, a2, v4, a1 + v6, 1);
    if (!v5)
    {
      sub_A08E84(a1, a2);
    }

    sub_A0995C(a1, a2);
  }

  else
  {

    sub_A098D4(a1, a2);
  }
}

void sub_978CD4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_64B9EC(a2, (*(a1 + 32) + 1177), &xmmword_22A4EA0);
  if (sub_9873FC(a1) && sub_A07008(a1))
  {
    sub_A08E84(a1, a2);
  }

  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  sub_986F10(a1, a2, 0x7FFFFFFF, __p, 0);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  sub_A09DFC(a1, a2);
}

void sub_978D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_53A868(v15);
    _Unwind_Resume(a1);
  }

  sub_53A868(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_978DB0(void *a1)
{
  *a1 = off_266EEA8;
  v2 = a1[26];
  if (v2)
  {
    a1[27] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return sub_978E88(a1);
}

void sub_978E14(void *a1)
{
  *a1 = off_266EEA8;
  v2 = a1[26];
  if (v2)
  {
    a1[27] = v2;
    operator delete(v2);
  }

  sub_978E88(a1);

  operator delete();
}

uint64_t sub_978E88(uint64_t a1)
{
  *a1 = &off_266F900;
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
    if ((*(a1 + 143) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 119) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      operator delete(*(a1 + 96));
      v3 = *(a1 + 56);
      if (!v3)
      {
        return a1;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 143) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 120));
  if (*(a1 + 119) < 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v3 = *(a1 + 56);
  if (v3)
  {
LABEL_7:
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_978F34()
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
  xmmword_27B1DF8 = 0u;
  unk_27B1E08 = 0u;
  dword_27B1E18 = 1065353216;
  sub_3A9A34(&xmmword_27B1DF8, v0, v0);
  sub_3A9A34(&xmmword_27B1DF8, v3, v3);
  sub_3A9A34(&xmmword_27B1DF8, __p, __p);
  sub_3A9A34(&xmmword_27B1DF8, v9, v9);
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
    qword_27B1DA0 = 0;
    qword_27B1DA8 = 0;
    qword_27B1D98 = 0;
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

void sub_97920C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1DB0)
  {
    qword_27B1DB8 = qword_27B1DB0;
    operator delete(qword_27B1DB0);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_9792D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  if (*(*(a2 + 16) + 1444) > 1u)
  {
    v5 = *sub_A21B20(a1);
    if (v5 <= 3)
    {
      switch(v5)
      {
        case 1:
          sub_97FFB4();
        case 2:
          sub_97FBBC();
        case 3:
          sub_9803E4();
      }
    }

    else if (v5 > 6)
    {
      if (v5 == 7)
      {
        sub_9801CC();
      }

      if (v5 == 8)
      {
        sub_980814();
      }
    }

    else
    {
      if (v5 == 4)
      {
        sub_9805FC();
      }

      if (v5 == 5)
      {
        sub_97FDB8();
      }
    }
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_97944C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_98A79C(a1, a2, a3);
  *v5 = off_266E6C0;
  sub_A1328C(v5 + 72, a1 + 552, *a3, a3[2]);
  if (*(a1 + 128) == 3)
  {
    *(a1 + 128) = 2;
  }

  v6 = *(a1 + 72);
  v7 = (v6 + 312);
  v8 = *(v6 + 344);
  if (v8 > 2)
  {
    if (v8 != 3 && v8 != 4)
    {
      return a1;
    }

    if ((*(v6 + 335) & 0x8000000000000000) != 0)
    {
      if (*(v6 + 320))
      {
        goto LABEL_14;
      }
    }

    else if (*(v6 + 335))
    {
      goto LABEL_14;
    }

    return a1;
  }

  if (v8 == 1)
  {
    if (*v7 != -1)
    {
      goto LABEL_14;
    }

    return a1;
  }

  if (v8 != 2 || *(v6 + 316) == -1 && *v7 == -1 && *(v6 + 320) == *(v6 + 328))
  {
    return a1;
  }

LABEL_14:
  v9 = *(a1 + 480);
  if (v9 >= *(a1 + 488))
  {
    sub_650C7C((a1 + 472), "{Platform}", v7);
  }

  sub_64A2C8(*(a1 + 480), "{Platform}", v7);
  *(a1 + 480) = v9 + 144;
  *(a1 + 480) = v9 + 144;
  return a1;
}

void sub_9795A8(_Unwind_Exception *a1)
{
  v1[60] = v2;
  sub_97E630(v1);
  _Unwind_Resume(a1);
}

void sub_9795D4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 72);
  if ((*(*(a1 + 112) + 41) & 1) != 0 && *(v4 + 424) == 1)
  {
    v5 = *(v4 + 56);
    v6 = **(a1 + 80);
    if (0xCF3CF3CF3CF3CF3DLL * ((*(*(a1 + 80) + 8) - v6) >> 3) <= v5)
    {
      sub_6FAB4();
    }

    v7 = *(v6 + 168 * v5 + 162);
    switch(v7)
    {
      case 2:
        operator new();
      case 1:
        operator new();
      case 0:
        HIBYTE(v23[2]) = 18;
        strcpy(v23, "Notice_Platform_RT");
        v21 = 1;
        goto LABEL_10;
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
    v5 = *(v4 + 56);
  }

  sub_A198E8(a1, *(a1 + 72), v5, v23);
LABEL_10:
  v8 = sub_9274F4(*(a1 + 96), v23);
  if (*(v8 + 23) < 0)
  {
    sub_325C(&v22, *v8, v8[1]);
  }

  else
  {
    v9 = *v8;
    v22.__r_.__value_.__r.__words[2] = v8[2];
    *&v22.__r_.__value_.__l.__data_ = v9;
  }

  sub_64B9C4(a2, (*(a1 + 88) + 1177));
  v10 = (v4 + 312);
  v11 = *(v4 + 344);
  if (v11 > 2)
  {
    if (v11 != 3 && v11 != 4)
    {
      goto LABEL_26;
    }

    if ((*(v4 + 335) & 0x8000000000000000) != 0)
    {
      if (*(v4 + 320))
      {
        goto LABEL_24;
      }
    }

    else if (*(v4 + 335))
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v11 != 1)
    {
      if (v11 != 2 || *(v4 + 316) == -1 && *v10 == -1 && *(v4 + 320) == *(v4 + 328))
      {
        goto LABEL_26;
      }

LABEL_24:
      sub_64BF94(a2, "{Platform}", v10);
    }

    if (*v10 != -1)
    {
      goto LABEL_24;
    }
  }

LABEL_26:
  size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v22;
  }

  else
  {
    v13 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  if (size >= 10)
  {
    v14 = v13 + size;
    v15 = v13;
    do
    {
      v16 = memchr(v15, 123, size - 9);
      if (!v16)
      {
        break;
      }

      if (*v16 == 0x726F6674616C507BLL && *(v16 + 4) == 32109)
      {
        if (v16 != v14 && v16 - v13 != -1)
        {
          v18 = *(v4 + 271);
          if (v18 >= 0)
          {
            v19 = (v4 + 248);
          }

          else
          {
            v19 = *(v4 + 248);
          }

          if (v18 >= 0)
          {
            v20 = *(v4 + 271);
          }

          else
          {
            v20 = *(v4 + 256);
          }

          std::string::replace(&v22, v16 - v13, 0xAuLL, v19, v20);
        }

        break;
      }

      v15 = (v16 + 1);
      size = v14 - v15;
    }

    while (v14 - v15 >= 10);
  }

  sub_64C184(a2, &v22);
  if (v21)
  {
    sub_588850(1, v24);
    sub_64BF94(a2, "{RT_Symbol}", v24);
  }

  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v23[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_57:
    operator delete(v23[0]);
    return;
  }

  operator delete(v22.__r_.__value_.__l.__data_);
  if (SHIBYTE(v23[2]) < 0)
  {
    goto LABEL_57;
  }
}

void sub_9799D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_53E440(&a22);
  sub_53A868(v22);
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  _Unwind_Resume(a1);
}

void sub_979A44(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a3 != 2)
  {
    if (a2 == 2)
    {
      a2 = 1;
    }

    else
    {
      a2 = a2;
    }

    sub_98AE98(a1, a2, a3, a4);
    return;
  }

  sub_64B9C4(a4, (*(a1 + 88) + 1177));
  if (sub_A1989C(a1, *(a1 + 72)))
  {
    sub_9795D4(a1, __p);
    sub_53D784(a4, __p);
    sub_53A868(__p);
  }

  memset(__p, 0, 24);
  sub_64FB18(a4, &unk_22A5088, __p);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if (*(a1 + 248) == 5)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  operator delete(__p[0]);
  if (*(a1 + 248) != 5)
  {
LABEL_14:
    sub_97BD78(a1, a4, 1);
  }

LABEL_15:
  sub_A1A024(a1, a4, v6, v7);
  memset(__p, 0, 24);
  v8 = *(a1 + 161);
  if (v8 == 3)
  {
    HIBYTE(__p[2]) = 22;
    qmemcpy(__p, "PickupCoordinateDriver", 22);
  }

  else
  {
    if (v8 != 2)
    {
      return;
    }

    HIBYTE(__p[2]) = 19;
    *(&__p[1] + 7) = 2036559461;
    *__p = *"PickupContactAgency";
  }

  v9 = sub_9274F4(*(a1 + 96), __p);
  sub_64C184(a4, v9);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_979C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_53A868(v14);
    _Unwind_Resume(a1);
  }

  sub_53A868(v14);
  _Unwind_Resume(a1);
}

void sub_979C3C(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 72) + 1008);
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      sub_979C8C(result, a2);
    }

    else if (v2 == 2)
    {
      sub_979D68(result, a2);
    }
  }

  else
  {
    switch(v2)
    {
      case 3:
        sub_979E00(result, a2);
      case 4:
        sub_97A180(result, a2);
      case 5:
        sub_97A5FC(result, a2);
        break;
    }
  }
}

uint64_t sub_979C8C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] == *a2)
  {
    sub_6FAB4();
  }

  sub_97A7A0(a1, *a2, 1, 0, v6);
  sub_53D784(v2 + 32, v6);
  sub_53D784(v2 + 192, v7);
  *(v2 + 352) = v8;
  sub_53A868(v7);
  sub_53A868(v6);
  sub_97A7A0(a1, v2, 1, 1, v6);
  sub_53D784((a2 + 109), v6);
  sub_53D784((a2 + 129), v7);
  *(a2 + 1192) = v8;
  sub_53A868(v7);
  return sub_53A868(v6);
}

uint64_t sub_979D68(uint64_t a1, void *a2)
{
  sub_97B1CC(a1, 0, v5);
  if (a2[1] == *a2)
  {
    sub_6FAB4();
  }

  sub_53D784(*a2 + 32, v5);
  sub_53A868(v5);
  sub_97B1CC(a1, 1, v5);
  sub_53D784((a2 + 109), v5);
  return sub_53A868(v5);
}

void sub_979E00(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = v4 - *a2;
  if (v4 == *a2)
  {
    goto LABEL_6;
  }

  if (!*(a1[14] + 16) && v6 == 696)
  {
    v15[0] = *v5;
    *(v15 + 12) = *(v5 + 12);
    operator new();
  }

  sub_97A7A0(a1, *a2, 1, 0, v12);
  sub_53D784(v5 + 32, v12);
  sub_53D784(v5 + 192, v13);
  *(v5 + 352) = v14;
  sub_53A868(v13);
  sub_53A868(v12);
  if (v6 == 696)
  {
LABEL_6:
    sub_97AAF0(a1, 0, v12);
  }

  v7 = 0x66FD0EB66FD0EB67 * (v6 >> 3);
  v8 = 1;
  while (1)
  {
    v10 = *a2 + 696 * v8;
    if (v8 >= *(a1[14] + 16) && v8 + 1 == 0x66FD0EB66FD0EB67 * ((a2[1] - *a2) >> 3))
    {
      v15[0] = *v10;
      *(v15 + 12) = *(v10 + 12);
      operator new();
    }

    if (*(v10 - 692) == 0x7FFFFFFF)
    {
      v11 = 0;
      if (*(v10 + 4) == 0x7FFFFFFF)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = *(v10 - 688) == 1;
      if (*(v10 + 4) == 0x7FFFFFFF)
      {
LABEL_17:
        v9 = 0;
        goto LABEL_9;
      }
    }

    v9 = *(v10 + 8) == 1;
LABEL_9:
    sub_97A7A0(a1, *a2 + 696 * v8, v11 ^ v9, 0, v12);
    sub_53D784(v10 + 32, v12);
    sub_53D784(v10 + 192, v13);
    *(v10 + 352) = v14;
    sub_53A868(v13);
    sub_53A868(v12);
    if (++v8 == v7)
    {
      goto LABEL_6;
    }
  }
}

void sub_97A180(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v5[0] = *v3;
    *(v5 + 12) = *(v3 + 12);
    v7 = 0;
    v8 = 0;
    __p = 0;
    operator new();
  }

  sub_97B1CC(a1, 0, v4);
  sub_97AE38(a1, *(a1 + 568), 1, v4, 0, v9);
}

void sub_97A578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  sub_53A868(&a9);
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_97A5FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (*(v2 + 516) != 0x7FFFFFFF && *(v2 + 520) != 0x7FFFFFFF)
  {
    v5 = *(a1 + 96);
    v9 = 17;
    strcpy(__p, "ServiceHoursTitle");
    v6 = sub_9274F4(v5, __p);
    if (*(v6 + 23) < 0)
    {
      sub_325C(&v13, *v6, v6[1]);
    }

    else
    {
      v7 = *v6;
      v14 = v6[2];
      v13 = v7;
    }

    if (v9 < 0)
    {
      operator delete(*__p);
    }

    v12[0] = a1;
    v12[1] = &v13;
    sub_97B450(__p, v12, 0);
    sub_53D784(a2 + 216, __p);
    sub_53D784(a2 + 376, v10);
    *(a2 + 536) = v11;
    sub_53A868(v10);
    sub_53A868(__p);
    sub_97B450(__p, v12, 1);
    sub_53D784(a2 + 872, __p);
    sub_53D784(a2 + 1032, v10);
    *(a2 + 1192) = v11;
    sub_53A868(v10);
    sub_53A868(__p);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13);
    }
  }
}

void sub_97A76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 41) < 0)
  {
    operator delete(*(v14 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_97A7A0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v6 = a3;
  sub_64B998(a5);
  sub_64B998(a5 + 160);
  *(a5 + 320) = 0;
  sub_97B5BC(a1, a2, v6, 1, v5, v11);
  sub_53D784(a5, v11);
  sub_53A868(v11);
  if (!*(a2 + 8) || *(a2 + 9) - 1 < 2 || *a2 == 0x7FFFFFFF || *(a2 + 9) || *(a2 + 8) != 1 || (v10 = *(a2 + 4), v10 == 0x7FFFFFFF) || *a2 / 60 != v10 / 60)
  {
    sub_64B9C4(v11, (a1[11] + 1177));
    sub_53D784(a5 + 160, v11);
    sub_53A868(v11);
    sub_97B8C8(a1, a2, 0, (a5 + 160));
  }

  else
  {
    sub_97B8C8(a1, a2, 0, a5);
  }
}

void sub_97A8F8(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_97A930(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 96);
  HIBYTE(__p[2]) = 18;
  strcpy(__p, "Next at {TimeList}");
  v7 = sub_9274F4(v6, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_64BC50(a3, v7, (*(a1 + 88) + 1177));
  memset(__p, 0, 24);
  v8 = a2[1];
  if (v8 != *a2)
  {
    if (!((0x6DB6DB6DB6DB6DB7 * ((v8 - *a2) >> 2)) >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  __p[5] = __p;
  v9 = sub_96DB98(a1);
  sub_64E398(a3, "{TimeList}", __p, v9, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_97AAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_97AAF0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = a1[9];
  memset(v11, 0, sizeof(v11));
  v7 = *(v6 + 2232);
  v8 = *(v6 + 2224);
  if (v7 != v8)
  {
    if ((0x66FD0EB66FD0EB67 * ((v7 - v8) >> 3)) <= 0x924924924924924)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = v11;
  sub_64B998(a3);
  sub_64B998(a3 + 160);
  *(a3 + 320) = 0;
  sub_97B5BC(a1, v11[0], 1, 1, v3, __p);
  sub_53D784(a3, __p);
  sub_53A868(__p);
  operator new();
}

void sub_97ADC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v19)
  {
    operator delete(v19);
  }

  sub_53A868(v18 + 160);
  sub_53A868(v18);
  v22 = *(v20 - 88);
  if (v22)
  {
    *(v20 - 80) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_97AE38(void *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  sub_64B998(a6);
  sub_64B998(a6 + 160);
  *(a6 + 320) = 0;
  sub_64B9EC(&__dst, (a1[11] + 1177), &xmmword_22A50A0);
  sub_53D784(a6, &__dst);
  sub_53A868(&__dst);
  if (a5)
  {
    sub_A13298((a1 + 72), a1[9], 1, &__dst);
    if (v23 != v24)
    {
      sub_64C184(a6, "{LineArt}");
      sub_64BF94(a6, "{LineArt}", v23);
    }

    sub_97E978(&__dst);
  }

  memset(&__dst, 0, sizeof(__dst));
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  memset(&__p, 0, sizeof(__p));
  v12 = sub_9BCF58(a2);
  v13 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 2);
  if (v12 || (a3 & 1) == 0)
  {
    if (!a3)
    {
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = 15;
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = 15;
        p_dst = &__dst;
      }

      strcpy(p_dst, "{CountdownList}");
      HIBYTE(v21) = 3;
      strcpy(v20, "Now");
LABEL_16:
      v17 = a1[12];
      v18 = sub_96DB98(a1);
      sub_9CDAFC(a2, &__dst, &__p, v20, v17, a6, 0, a4, v18, &unk_22A50B8);
    }

    sub_195A048(&__dst, "Departs in {CountdownList}", 0x1AuLL);
    HIBYTE(v21) = 11;
    strcpy(v20, "Departs now");
    if (v13 < 2)
    {
      goto LABEL_16;
    }

    v14 = "Departs now, {CountdownList}";
    v15 = 28;
  }

  else
  {
    sub_195A048(&__dst, "Scheduled in {CountdownList}", 0x1CuLL);
    HIBYTE(v21) = 13;
    strcpy(v20, "Scheduled now");
    if (v13 <= 1)
    {
      goto LABEL_16;
    }

    v14 = "Scheduled now, {CountdownList}";
    v15 = 30;
  }

  sub_195A048(&__p, v14, v15);
  goto LABEL_16;
}

void sub_97B10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
LABEL_3:
    if ((a28 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  operator delete(a17);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_5:
    sub_53A868(v28 + 160);
    sub_53A868(v28);
    _Unwind_Resume(a1);
  }

LABEL_4:
  operator delete(a23);
  goto LABEL_5;
}

void sub_97B1CC(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  sub_9CBE3C(*(a1 + 132), v16);
  if ((v17 & 0x80u) == 0)
  {
    v6 = v17;
  }

  else
  {
    v6 = v16[1];
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  memset(&v18, 0, sizeof(v18));
  *(&v18.__r_.__value_.__s + 23) = v6;
  if (v6)
  {
    if ((v17 & 0x80u) == 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = v16[0];
    }

    memmove(&v18, v7, v6);
  }

  v18.__r_.__value_.__s.__data_[v6] = 0;
  v8 = std::string::append(&v18, " runs every {TripFrequency}", 0x1BuLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v15 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v10 = sub_9274F4(*(a1 + 96), __p);
  sub_64B9EC(a3, (*(a1 + 88) + 1177), &xmmword_22A50A0);
  if (a2)
  {
    sub_A13298(a1 + 576, *(a1 + 72), 1, &v18);
    if (v19 != v20)
    {
      sub_64C184(a3, "{LineArt}");
      sub_64BF94(a3, "{LineArt}", v19);
    }

    sub_97E978(&v18);
  }

  sub_64C184(a3, v10);
  nullsub_1();
  v12 = v11;
  v13 = sub_B718(*(a1 + 72) + 144);
  sub_64BDC8(a3, "{TripFrequency}", v12, v13);
  if ((SHIBYTE(v15) & 0x80000000) == 0)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return;
    }

LABEL_22:
    operator delete(v16[0]);
    return;
  }

  operator delete(__p[0]);
  if (v17 < 0)
  {
    goto LABEL_22;
  }
}

void sub_97B3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_97E978(&a21);
  sub_53A868(v26);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_97B450(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = *a2;
  sub_64B998(a1);
  sub_64B998(v7 + 160);
  *(a1 + 320) = 0;
  sub_64B9EC(v9, (*(v6 + 88) + 1177), &xmmword_22A50A0);
  sub_53D784(a1, v9);
  sub_53A868(v9);
  if (a3)
  {
    sub_A13298(v6 + 576, *(v6 + 72), 1, v9);
    if (v10 != v11)
    {
      sub_64C184(a1, "{LineArt}");
      sub_64BF94(a1, "{LineArt}", v10);
    }

    sub_97E978(v9);
  }

  sub_64C184(a1, a2[1]);
  sub_64B9C4(v9, (*(v6 + 88) + 1177));
  sub_53D784(a1 + 160, v9);
  sub_53A868(v9);
  return sub_97BD78(v6, (a1 + 160), 0);
}

void sub_97B560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_97E978(&a9);
  sub_53A868(v9 + 160);
  sub_53A868(v9);
  _Unwind_Resume(a1);
}

void sub_97B584(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_97B5BC(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v26 = 0;
  if (a3)
  {
    if (*(a2 + 8) == 1)
    {
      v11 = "DepartureBar_Board_LowFreq";
    }

    else
    {
      v11 = "Scheduled at {DepartureTime}";
    }

    if (*(a2 + 4) == 0x7FFFFFFF)
    {
      v12 = "Scheduled at {DepartureTime}";
    }

    else
    {
      v12 = v11;
    }

    v13 = a1[12];
    v14 = strlen(v12);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v28 = v14;
    if (v14)
    {
      memcpy(&__dst, v12, v14);
    }

    *(&__dst + v15) = 0;
    v16 = sub_9274F4(v13, &__dst);
    if (__p != v16)
    {
      v17 = *(v16 + 23);
      if (SHIBYTE(v26) < 0)
      {
        if (v17 >= 0)
        {
          v19 = v16;
        }

        else
        {
          v19 = *v16;
        }

        if (v17 >= 0)
        {
          v20 = *(v16 + 23);
        }

        else
        {
          v20 = v16[1];
        }

        sub_13B38(__p, v19, v20);
      }

      else if ((*(v16 + 23) & 0x80) != 0)
      {
        sub_13A68(__p, *v16, v16[1]);
      }

      else
      {
        v18 = *v16;
        v26 = v16[2];
        *__p = v18;
      }
    }

    if (v28 < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    v26 = 0xF00000000000000;
    strcpy(__p, "{DepartureTime}");
  }

  v21 = sub_96DB98(a1);
  sub_64B9EC(a6, (a1[11] + 1177), &xmmword_22A50A0);
  if (a5)
  {
    sub_A13298((a1 + 72), a1[9], 1, &__dst);
    if (v29 != v30)
    {
      sub_64C184(a6, "{LineArt}");
      sub_64BF94(a6, "{LineArt}", v29);
    }

    sub_97E978(&__dst);
  }

  sub_64C184(a6, __p);
  if (*(a2 + 4) == 0x7FFFFFFF)
  {
    v22 = 1;
  }

  else
  {
    v22 = a4;
  }

  v23 = v22 == 0;
  v24 = 4;
  if (!v23)
  {
    v24 = 0;
  }

  LODWORD(__dst) = *(a2 + v24);
  sub_64E308(a6, "{DepartureTime}", &__dst, v21, 0);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_97B840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_97E978(&a15);
  sub_53A868(v20);
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_97B8C8(uint64_t a1, int *a2, int a3, void **a4)
{
  if (!*(a2 + 8) || (v5 = *(a2 + 9), v5 == 1))
  {
    v10 = 0;
    __dst[0] = 0;
    __dst[1] = 0;
    v23 = 0;
    goto LABEL_37;
  }

  if (v5 != 2)
  {
    v11 = a2[1];
    v14 = *a2 == 0x7FFFFFFF || v5 != 0 || *(a2 + 8) != 1 || v11 == 0x7FFFFFFF;
    if (v14 || *a2 / 60 != v11 / 60)
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v23 = 0;
      operator new();
    }

    __dst[1] = 0;
    v23 = 0xB00000000000000;
    *(__dst + 7) = 2104258402;
    __dst[0] = *"{RT_Symbol}";
    v15 = 1;
    v10 = 1;
    v16 = 1;
    goto LABEL_36;
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v23 = 0;
  v6 = *(a1 + 96);
  v21 = 9;
  strcpy(__p, "Cancelled");
  v7 = sub_9274F4(v6, __p);
  if (__dst != v7)
  {
    v8 = *(v7 + 23);
    if (SHIBYTE(v23) < 0)
    {
      if (v8 >= 0)
      {
        v17 = v7;
      }

      else
      {
        v17 = *v7;
      }

      if (v8 >= 0)
      {
        v18 = *(v7 + 23);
      }

      else
      {
        v18 = v7[1];
      }

      sub_13B38(__dst, v17, v18);
    }

    else if ((*(v7 + 23) & 0x80) != 0)
    {
      sub_13A68(__dst, *v7, v7[1]);
    }

    else
    {
      v9 = *v7;
      v23 = v7[2];
      *__dst = v9;
    }
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = 0;
  v16 = 2;
  v15 = 4;
  v19 = HIBYTE(v23);
  if (v23 < 0)
  {
    v19 = __dst[1];
  }

  if (v19)
  {
LABEL_36:
    LOBYTE(__p[0]) = 0;
    sub_64C770(a4, __dst, &unk_22A5130, v16, __p);
    sub_9CE3F8(a4, v15);
  }

LABEL_37:
  if (v10)
  {
    sub_588850(1, __p);
    sub_64BF94(a4, "{RT_Symbol}", __p);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_97BCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_97BD78(uint64_t result, uint64_t *a2, int a3)
{
  v3 = *(result + 72);
  if (*(v3 + 516) != 0x7FFFFFFF && *(v3 + 520) != 0x7FFFFFFF)
  {
    if (a3)
    {
      v5 = "ServiceHours";
    }

    else
    {
      v5 = "ServiceHoursRange";
    }

    v6 = result;
    v7 = *(result + 96);
    if (a3)
    {
      v8 = 12;
    }

    else
    {
      v8 = 17;
    }

    v12 = v8;
    memcpy(__dst, v5, v8);
    *(__dst + v8) = 0;
    v9 = sub_9274F4(v7, __dst);
    sub_64C184(a2, v9);
    if (v12 < 0)
    {
      operator delete(__dst[0]);
    }

    v10 = sub_96DB98(v6);
    sub_64E308(a2, "{ServiceBeginTime}", (v3 + 516), v10, 0);
    return sub_64E308(a2, "{ServiceEndTime}", (v3 + 520), v10, 0);
  }

  return result;
}

void sub_97BE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_97BEA0(uint64_t a1@<X8>)
{
  *(a1 + 320) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = 0u;
  v2 = a1 + 160;
  sub_64B998(a1);
  sub_64B998(v2);
  *(a1 + 320) = 0;
}

void sub_97BF20(uint64_t a1@<X8>)
{
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_64B998(a1);
  *(v1 + 160) = 0;
}

uint64_t sub_97BF5C(uint64_t a1, int a2, int a3, double a4)
{
  if ((a2 - 4) < 2)
  {
    return 0;
  }

  if (a2 == 2)
  {
    v5 = *(a1 + 72);
    if ((*(v5 + 792) & 1) == 0)
    {
      sub_4F0F0C();
    }

    LODWORD(result) = sub_A1989C(a1, *(a1 + 72));
    if (*(v5 + 424) == 1)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return sub_98B558(a1, a2, a3, a4);
  }
}

uint64_t sub_97BFE0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_989C18(a1, a2, a3);
  *v4 = &off_266E778;
  v5 = sub_A182F0(v4);
  if (*v5 != 2)
  {
    return a1;
  }

  v6 = (v5 + 312);
  v7 = *(v5 + 344);
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      if (*v6 == -1)
      {
        goto LABEL_14;
      }
    }

    else if (v7 != 2 || *(v5 + 316) == -1 && *(v5 + 312) == -1 && *(v5 + 320) == *(v5 + 328))
    {
      goto LABEL_14;
    }

LABEL_17:
    v9 = *(a1 + 480);
    if (v9 >= *(a1 + 488))
    {
      sub_650C7C((a1 + 472), "{Platform}", v6);
    }

    sub_64A2C8(*(a1 + 480), "{Platform}", v6);
    *(a1 + 480) = v9 + 144;
    *(a1 + 480) = v9 + 144;
    if (*(a1 + 128) != 6)
    {
      return a1;
    }

    goto LABEL_21;
  }

  if (v7 == 3 || v7 == 4)
  {
    v8 = *(v5 + 335);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 320);
    }

    if (v8)
    {
      goto LABEL_17;
    }
  }

LABEL_14:
  if (*(a1 + 128) != 6)
  {
    return a1;
  }

LABEL_21:
  v10 = sub_A16D3C(a1);
  v11 = *(*(a1 + 80) + 96);
  if (0x4EC4EC4EC4EC4EC5 * ((*(*(a1 + 80) + 104) - v11) >> 4) <= v10)
  {
    sub_6FAB4();
  }

  v12 = v11 + 208 * v10;
  v13 = *(v12 + 120);
  if (v13 > 2)
  {
    if (v13 != 3 && v13 != 4)
    {
      return a1;
    }

    v14 = *(v12 + 111);
    if (v14 < 0)
    {
      v14 = *(v12 + 96);
    }

    if (!v14)
    {
      return a1;
    }

    goto LABEL_34;
  }

  if (v13 != 1)
  {
    if (v13 != 2 || *(v12 + 92) == -1 && *(v12 + 88) == -1 && *(v12 + 96) == *(v12 + 104))
    {
      return a1;
    }

LABEL_34:
    v15 = *(a1 + 96);
    v22 = 20;
    strcpy(__p, "{System} {SystemArt}");
    v16 = sub_9274F4(v15, __p);
    if (v22 < 0)
    {
      operator delete(*__p);
      v17 = *(a1 + 504);
      if (v17 < *(a1 + 512))
      {
LABEL_36:
        *(v17 + 16) = 0x800000000000000;
        *v17 = *"{System}";
        if (*(v16 + 23) < 0)
        {
          sub_325C((v17 + 24), *v16, v16[1]);
        }

        else
        {
          v18 = *v16;
          *(v17 + 40) = v16[2];
          *(v17 + 24) = v18;
        }

        *(a1 + 504) = v17 + 48;
        *(a1 + 504) = v17 + 48;
        v19 = *(a1 + 480);
        if (v19 >= *(a1 + 488))
        {
LABEL_45:
          sub_650C7C((a1 + 472), "{SystemArt}", v12 + 88);
        }

LABEL_40:
        sub_64A2C8(v19, "{SystemArt}", v12 + 88);
        *(a1 + 480) = v19 + 144;
        *(a1 + 480) = v19 + 144;
        return a1;
      }
    }

    else
    {
      v17 = *(a1 + 504);
      if (v17 < *(a1 + 512))
      {
        goto LABEL_36;
      }
    }

    *(a1 + 504) = sub_97EB64(a1 + 496, "{System}", v16);
    v19 = *(a1 + 480);
    if (v19 >= *(a1 + 488))
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  if (*(v12 + 88) != -1)
  {
    goto LABEL_34;
  }

  return a1;
}

void sub_97C310(_Unwind_Exception *a1)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 504) = v2;
  sub_96BE24(v1);
  _Unwind_Resume(a1);
}

void sub_97C338(_Unwind_Exception *a1)
{
  v3 = v2;
  *(v1 + 480) = v3;
  sub_96BE24(v1);
  _Unwind_Resume(a1);
}

void sub_97C39C(void *a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_A16A78(a1, 2);
  v8 = a1[10];
  v9 = *(v7 + 94);
  v10 = *(v8 + 72);
  if (0x66FD0EB66FD0EB67 * ((*(v8 + 80) - v10) >> 3) <= v9)
  {
    sub_6FAB4();
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v11 = *a3;
  v12 = a3[1];
  __p[0] = &v19;
  LOBYTE(__p[1]) = 0;
  if (v12 != v11)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v11) >> 5) < 0x19999999999999ALL)
    {
      operator new();
    }

    sub_1794();
  }

  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  sub_A1DE44(a1, a2, &v19, __p, *(v10 + 696 * v9 + 556), *(v10 + 696 * v9 + 560), a4);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
    {
      do
      {
        v14 -= 160;
        sub_97EDE0(v14);
      }

      while (v14 != v13);
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }
}

void sub_97C6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_97C72C(va);
  _Unwind_Resume(a1);
}

void sub_97C6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char *a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_97C72C(&a18);
  _Unwind_Resume(a1);
}

void sub_97C6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_97EEA8(va);
  _Unwind_Resume(a1);
}

void sub_97C6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v5)
  {
    v8 = v6 - 160;
    v9 = -v5;
    do
    {
      sub_97EDE0(v8);
      v8 -= 160;
      v9 += 160;
    }

    while (v9);
  }

  sub_97EEA8(va);
  _Unwind_Resume(a1);
}

char **sub_97C72C(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 160;
        sub_97EDE0(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_97C790(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a2 == 2 && a3 == 1)
  {
    v7 = sub_A182F0(a1);
    sub_64B998(&v30);
    sub_64B998(v29);
    if (*(a1 + 128) == 6 || *v7 == 2 && sub_A1989C(a1, v7) || sub_970E78(a1))
    {
      sub_98A3E8(a1, *(a1 + 128) == 6, *(*(a1 + 112) + 41), &v28);
      sub_53D784(&v30, &v28);
      sub_53A868(&v28);
      if (*(*(a1 + 112) + 41) == 1 && !sub_4D1F6C(&v30) && *v7 == 2 && *(v7 + 424) == 1)
      {
        sub_588850(1, &v28);
        sub_64BF94(&v30, "{RT_Symbol}", &v28);
      }

LABEL_25:
      if (*(a1 + 128) == 6)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    }

    sub_A18308(a1, &v28);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      size = v28.__r_.__value_.__l.__size_;
      operator delete(v28.__r_.__value_.__l.__data_);
      if (size)
      {
LABEL_17:
        v27 = 15;
        strcpy(v26, "Transfer to the");
        v8 = sub_A16A78(a1, 2);
        sub_A1D550(a1, v8, 1, __p);
        sub_97C39C(a1, v26, __p, &v28);
        sub_53D784(&v30, &v28);
        sub_53A868(&v28);
        v9 = *__p;
        if (*__p)
        {
          v10 = *&__p[8];
          v11 = *__p;
          if (*&__p[8] != *__p)
          {
            do
            {
              v10 -= 160;
              sub_97EDE0(v10);
            }

            while (v10 != v9);
            v11 = *__p;
          }

          *&__p[8] = v9;
          operator delete(v11);
        }

        if (v27 < 0)
        {
          operator delete(v26[0]);
          if (*(a1 + 128) == 6)
          {
            goto LABEL_26;
          }

          goto LABEL_39;
        }

        goto LABEL_25;
      }
    }

    else if (*(&v28.__r_.__value_.__s + 23))
    {
      goto LABEL_17;
    }

    sub_A1CB48(a1, 2, 1, &v28);
    sub_53D784(&v30, &v28);
    sub_53A868(&v28);
    if (*(a1 + 128) == 6)
    {
LABEL_26:
      v12 = sub_A16A78(a1, 2);
      sub_A1D550(a1, v12, 1, v26);
      if (!sub_A1DE00(a1, v26))
      {
        v25 = 20;
        strcpy(__p, "Follow signs for the");
        sub_97C39C(a1, __p, v26, &v28);
        sub_53D784(v29, &v28);
        sub_53A868(&v28);
        if (v25 < 0)
        {
          operator delete(*__p);
        }

        goto LABEL_34;
      }

      sub_A18308(a1, &v28);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        v13 = v28.__r_.__value_.__l.__size_;
        operator delete(v28.__r_.__value_.__l.__data_);
        if (v13)
        {
          goto LABEL_34;
        }
      }

      else if (*(&v28.__r_.__value_.__s + 23))
      {
        goto LABEL_34;
      }

      sub_A1CB48(a1, 1, 1, &v28);
      sub_53D784(v29, &v28);
      sub_53A868(&v28);
LABEL_34:
      v14 = v26[0];
      if (v26[0])
      {
        v15 = v26[1];
        v16 = v26[0];
        if (v26[1] != v26[0])
        {
          do
          {
            v15 -= 160;
            sub_97EDE0(v15);
          }

          while (v15 != v14);
          v16 = v26[0];
        }

        v26[1] = v14;
        operator delete(v16);
      }
    }

LABEL_39:
    if (!sub_4D1F6C(v29))
    {
      operator new();
    }

    *a4 = v30;
    v17 = v33;
    *(a4 + 16) = v31;
    v30 = 0uLL;
    *(a4 + 24) = v32;
    *(a4 + 40) = v17;
    v31 = 0;
    v32 = 0uLL;
    v33 = 0;
    *(a4 + 48) = v34;
    v18 = v37;
    *(a4 + 64) = v35;
    v34 = 0uLL;
    *(a4 + 72) = v36;
    v35 = 0;
    v36 = 0uLL;
    v37 = 0;
    v19 = v38;
    *(a4 + 88) = v18;
    *(a4 + 96) = v19;
    LODWORD(v19) = v39;
    *(a4 + 108) = v40;
    *(a4 + 104) = v19;
    v20 = v41;
    v21 = v44;
    *(a4 + 128) = v42;
    *(a4 + 112) = v20;
    v38 = 0;
    v41 = 0uLL;
    v22 = v43;
    *(a4 + 152) = v21;
    *(a4 + 136) = v22;
    v44 = 0;
    v42 = 0;
    v43 = 0uLL;
    sub_53A868(v29);
    sub_53A868(&v30);
    return;
  }

  sub_64B998(a4);
}

void sub_97CF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  sub_53A868(&a46);
  sub_53A868(v46 - 208);
  _Unwind_Resume(a1);
}

uint64_t sub_97D058(uint64_t a1, int a2, int a3, __n128 a4)
{
  if (a2 == 1 && a3 == 2)
  {
    v6 = sub_A182F0(a1);
    if (*v6 == 2)
    {
      v7 = v6;
      result = sub_A1989C(a1, v6);
      if (result)
      {
        return *(v7 + 424) == 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return sub_A16E90();
  }

  return result;
}

uint64_t sub_97D0D8(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return 0;
  }

  else
  {
    return sub_96F77C(a1, a2);
  }
}

void sub_97D0EC(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  if (a3 == 1 && *(a1 + 163) == 1)
  {
    v5 = *(*(a1 + 72) + 856);
    v6 = *(*(a1 + 80) + 120);
    if (0x86BCA1AF286BCA1BLL * ((*(*(a1 + 80) + 128) - v6) >> 4) <= v5)
    {
      sub_6FAB4();
    }

    v7 = v6 + 304 * v5;
    v8 = v7 + 192;
    v9 = *(v7 + 224);
    if (v9 <= 2)
    {
      if (v9 == 1)
      {
        if (*v8 == -1)
        {
          goto LABEL_39;
        }
      }

      else if (v9 != 2 || *(v8 + 4) == -1 && *v8 == -1 && *(v8 + 8) == *(v8 + 16))
      {
        goto LABEL_39;
      }

LABEL_16:
      *(a4 + 57) = 0u;
      a4[2] = 0u;
      a4[3] = 0u;
      *a4 = 0u;
      a4[1] = 0u;
      sub_64B998((a4 + 5));
      if (*(a1 + 520) != *(a1 + 528))
      {
        sub_96F984(a1, a2, 1, __p);
        sub_96CCDC(a4, __p);
        sub_9721FC(__p);
        v13 = *(a4 + 3);
        *__p = *"{AccessPointArt}";
        v23 = 0x1000000000000000;
        v24 = 0;
        sub_97D408(a4 + 3, v13, __p);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        sub_97D73C(a4 + 6, *(a4 + 6), &xmmword_22A50A0);
        goto LABEL_46;
      }

      sub_A1778C(a1, __p);
      if (*(v8 + 32) == 1)
      {
        if (v23 >= 0)
        {
          v14 = HIBYTE(v23);
        }

        else
        {
          v14 = __p[1];
        }

        v15 = *(v8 + 31);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v8 + 16);
        }

        v17 = "Follow signs for {AccessPointArt} {AccessPointExit}";
        if (v14 == v15)
        {
          if (v23 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          v19 = (v8 + 8);
          if (v16 < 0)
          {
            v19 = *(v8 + 8);
          }

          v20 = memcmp(v18, v19, v14);
          if (v20)
          {
            v17 = "Follow signs for {AccessPointArt} {AccessPointExit}";
          }

          else
          {
            v17 = "Follow signs for {AccessPointArt}";
          }

          if (v20)
          {
            v21 = 51;
          }

          else
          {
            v21 = 33;
          }

          goto LABEL_44;
        }
      }

      else
      {
        v17 = "Follow signs for {AccessPointArt} {AccessPointExit}";
      }

      v21 = 51;
LABEL_44:
      sub_195A048(a4, v17, v21);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_46:
      sub_64BF94(a4 + 10, "{AccessPointArt}", v8);
    }

    if (v9 == 3 || v9 == 4)
    {
      v10 = *(v8 + 23);
      if (v10 < 0)
      {
        v10 = *(v8 + 8);
      }

      if (v10)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_39:

  sub_96F984(a1, a2, a3, a4);
}

void sub_97D394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_9721FC(v14);
    _Unwind_Resume(a1);
  }

  sub_9721FC(v14);
  _Unwind_Resume(a1);
}

void sub_97D3DC(_Unwind_Exception *a1)
{
  sub_1A104((v1 + 48));
  sub_4B98C4((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

__int128 *sub_97D408(uint64_t *a1, __int128 *a2, __int128 *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v16 = *a1;
    v17 = ((v7 - *a1) >> 5) + 1;
    if (v17 >> 59)
    {
      sub_1794();
    }

    v18 = v6 - v16;
    if (v18 >> 4 > v17)
    {
      v17 = v18 >> 4;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFE0)
    {
      v19 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    v42 = a1;
    if (v19)
    {
      if (!(v19 >> 59))
      {
        operator new();
      }

      sub_1808();
    }

    v38 = 0;
    v39 = 32 * ((a2 - v16) >> 5);
    v40 = v39;
    v41 = 0;
    sub_97F818(&v38, a3);
    v22 = v39;
    v23 = a1[1];
    v24 = v39;
    v25 = v4;
    if (v23 != v4)
    {
      v26 = v40;
      v27 = v4;
      do
      {
        v28 = *v27;
        *(v26 + 16) = *(v27 + 2);
        *v26 = v28;
        *(v27 + 1) = 0;
        *(v27 + 2) = 0;
        *v27 = 0;
        *(v26 + 24) = *(v27 + 24);
        v27 += 2;
        v26 += 32;
      }

      while (v27 != v23);
      v29 = v4;
      do
      {
        if (*(v29 + 23) < 0)
        {
          operator delete(*v29);
        }

        v29 += 2;
      }

      while (v29 != v23);
      v25 = a1[1];
      v24 = v39;
    }

    v30 = v40 + v25 - v4;
    v40 = v30;
    a1[1] = v4;
    v31 = *a1;
    v32 = v24 + *a1 - v4;
    if (*a1 != v4)
    {
      v33 = *a1;
      v34 = v24 + *a1 - v4;
      do
      {
        v35 = *v33;
        *(v34 + 16) = *(v33 + 16);
        *v34 = v35;
        *(v33 + 8) = 0;
        *(v33 + 16) = 0;
        *v33 = 0;
        *(v34 + 24) = *(v33 + 24);
        v33 += 32;
        v34 += 32;
      }

      while (v33 != v4);
      do
      {
        if (*(v31 + 23) < 0)
        {
          operator delete(*v31);
        }

        v31 += 32;
      }

      while (v31 != v4);
      v31 = *a1;
      v30 = v40;
    }

    *a1 = v32;
    a1[1] = v30;
    v36 = a1[2];
    a1[2] = v41;
    v40 = v31;
    v41 = v36;
    v38 = v31;
    v39 = v31;
    if (v31)
    {
      operator delete(v31);
    }

    return v22;
  }

  else if (a2 == v7)
  {
    v21 = *a3;
    *(v7 + 16) = *(a3 + 2);
    *v7 = v21;
    *(a3 + 8) = 0uLL;
    *a3 = 0;
    *(v7 + 24) = *(a3 + 24);
    a1[1] = v7 + 32;
  }

  else
  {
    v8 = (v7 - 32);
    v9 = a1[1];
    if (v7 >= 0x20)
    {
      v9 = v7 + 32;
      v10 = *v8;
      *(v7 + 16) = *(v7 - 16);
      *v7 = v10;
      *(v7 - 24) = 0;
      *(v7 - 16) = 0;
      *v8 = 0;
      *(v7 + 24) = *(v7 - 8);
    }

    a1[1] = v9;
    if (v7 != a2 + 2)
    {
      v11 = 0;
      v12 = a2 - v7 + 32;
      do
      {
        v14 = &v11[v7];
        v15 = &v11[v7 - 32];
        if (v11[v7 - 9] < 0)
        {
          operator delete(*v15);
        }

        v13 = *(v14 - 4);
        *&v11[v7 - 16] = *(v14 - 6);
        *v15 = v13;
        *(v14 - 41) = 0;
        *(v14 - 64) = 0;
        *(v14 - 8) = *(v14 - 40);
        v11 -= 32;
      }

      while (v12 != v11);
    }

    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    v20 = *a3;
    *(v4 + 2) = *(a3 + 2);
    *v4 = v20;
    *(a3 + 23) = 0;
    *a3 = 0;
    *(v4 + 24) = *(a3 + 24);
  }

  return v4;
}

void sub_97D728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4BB0B8(va);
  _Unwind_Resume(a1);
}

char *sub_97D73C(char **a1, char *a2, unint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v16 = *a1;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) + 1;
    if (v17 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v16) >> 3);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x555555555555555)
    {
      v19 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v17;
    }

    v39 = a1;
    if (v19)
    {
      if (v19 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v36 = 0;
    v37 = 8 * ((a2 - v16) >> 3);
    v38 = v37;
    sub_97F9D8(&v36, a3);
    v26 = v37;
    memcpy(v38, v4, &a1[1][-v4]);
    v27 = *a1;
    v28 = v37;
    *&v38 = &a1[1][v38 - v4];
    a1[1] = v4;
    v29 = v4 - v27;
    v30 = (v28 - (v4 - v27));
    memcpy(v30, v27, v29);
    v31 = *a1;
    *a1 = v30;
    v32 = a1[2];
    *(a1 + 1) = v38;
    *&v38 = v31;
    *(&v38 + 1) = v32;
    v36 = v31;
    v37 = v31;
    if (v31)
    {
      operator delete(v31);
    }

    return v26;
  }

  else if (a2 == v7)
  {
    if (*(a3 + 23) < 0)
    {
      sub_325C(a1[1], *a3, *(a3 + 8));
    }

    else
    {
      v25 = *a3;
      *(v7 + 2) = *(a3 + 16);
      *v7 = v25;
    }

    a1[1] = v7 + 24;
  }

  else
  {
    v8 = v7 - 24;
    v9 = a1[1];
    if (v7 >= 0x18)
    {
      v9 = v7 + 24;
      v10 = *v8;
      *(v7 + 2) = *(v7 - 1);
      *v7 = v10;
      *(v7 - 2) = 0;
      *(v7 - 1) = 0;
      *v8 = 0;
    }

    a1[1] = v9;
    if (v7 != a2 + 24)
    {
      v11 = 0;
      v12 = (a2 - v7 + 24);
      do
      {
        v14 = &v11[v7];
        v15 = &v11[v7 - 24];
        if (v11[v7 - 1] < 0)
        {
          operator delete(*v15);
        }

        v11 -= 24;
        v13 = *(v14 - 3);
        *(v15 + 16) = *(v14 - 4);
        *v15 = v13;
        *(v14 - 25) = 0;
        *(v14 - 48) = 0;
      }

      while (v12 != v11);
      v9 = a1[1];
    }

    v20 = v9 <= a3 || v4 > a3;
    v21 = 24;
    if (v20)
    {
      v21 = 0;
    }

    v22 = (a3 + v21);
    if (v4 != v22)
    {
      v23 = *(v22 + 23);
      if (*(v4 + 23) < 0)
      {
        if (v23 >= 0)
        {
          v33 = v22;
        }

        else
        {
          v33 = *v22;
        }

        if (v23 >= 0)
        {
          v34 = *(v22 + 23);
        }

        else
        {
          v34 = v22[1];
        }

        sub_13B38(v4, v33, v34);
      }

      else if ((*(v22 + 23) & 0x80) != 0)
      {
        sub_13A68(v4, *v22, v22[1]);
      }

      else
      {
        v24 = *v22;
        *(v4 + 16) = v22[2];
        *v4 = v24;
      }
    }
  }

  return v4;
}

void sub_97D9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

double sub_97DA0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2 == 2)
  {
    a2 = 1;
  }

  else
  {
    a2 = a2;
  }

  return sub_98957C(a1, a2, a3, a4);
}

void sub_97DA18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2 == 2 && a3 == 1)
  {
    sub_64B998(a4);
  }

  else
  {
    sub_A1CB48(a1, a2, a3, a4);
  }
}

double sub_97DA34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a3 != 2)
  {
LABEL_11:

    sub_98C830(a1, a2, a3, a4);
    return result;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v6 = *(a1 + 72);
      if (sub_A1D4E8(a1) && *(v6 + 88) != 0x7FFFFFFF && *(v6 + 96) && *(v6 + 97) == 1)
      {
        v8 = *(*(a1 + 72) + 56);

        sub_A1D1DC(a1, v8, a4);
      }

      else
      {

        return sub_64B998(a4);
      }

      return result;
    }

    goto LABEL_11;
  }

  sub_A1CB48(a1, 1, 2, a4);
  return result;
}

void *sub_97DB30(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 456);
      sub_64B9C4(v15, (v4[11] + 1177));
      v6 = sub_64B9C4(v14, (v4[11] + 1177));
      if (v5)
      {
        (*(*v4 + 16))(__p, v4, 1, 0, v6);
        sub_53D784(v15, __p);
        sub_53A868(__p);
        (*(*v4 + 16))(__p, v4, 1, 1);
        sub_53D784(v14, __p);
        sub_53A868(__p);
      }

      else
      {
        v7 = v4[12];
        v13 = 9;
        strcpy(__p, "Exit Soon");
        v8 = sub_9274F4(v7, __p);
        sub_64C184(v15, v8);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        v9 = *(v4[9] + 56);
        v10 = *v4[10];
        if (0xCF3CF3CF3CF3CF3DLL * ((*(v4[10] + 8) - v10) >> 3) <= v9)
        {
          sub_6FAB4();
        }

        v11 = sub_A18C04(v4, v10 + 168 * v9);
        sub_9D43A4(v11, __p);
        sub_64C184(v14, __p);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_594568(v2, v15);
      sub_594568(v2 + 160, v14);
      sub_53A868(v14);
      result = sub_53A868(v15);
      v2 += 464;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_97DD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_53A868(&a32);
    sub_53A868(v32 - 240);
    _Unwind_Resume(a1);
  }

  sub_53A868(&a32);
  sub_53A868(v32 - 240);
  _Unwind_Resume(a1);
}

void sub_97DD9C(uint64_t a1@<X8>)
{
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_64B998(a1);
  *(v1 + 160) = 0;
}

uint64_t sub_97DDFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = sub_971560(a1, a2, a3, a4);
  *v6 = &off_266EAF8;
  sub_3320D0(v6 + 66, *a3, a3[1]);
  sub_A1328C((a1 + 544), a1 + 528, *a3, a3[2]);
  if ((*(a1 + 520) & 1) == 0)
  {
    if (*(a1 + 216))
    {
      v7 = 0;
    }

    else
    {
      sub_A17784(a1, &__p);
      v8 = v17;
      if (v18 >= 0)
      {
        v8 = v18;
      }

      v7 = v8 != 0;
      if ((v18 & 0x8000000000000000) != 0)
      {
        operator delete(__p);
      }
    }

    sub_A1777C(a1, &__p);
    if (v18 < 0)
    {
      v9 = v17 == 0;
      operator delete(__p);
    }

    else
    {
      v9 = v18 == 0;
    }

    sub_A14668(a1 + 544, *(a1 + 72), 1, &__p);
    if (__p == v17)
    {
      goto LABEL_28;
    }

    if (!v7)
    {
      if (!v9)
      {
        v11 = *(a1 + 480);
        if (v11 >= *(a1 + 488))
        {
          sub_650C7C((a1 + 472), "{Line}", __p);
        }

        sub_64A2C8(*(a1 + 480), "{Line}", __p);
        *(a1 + 480) = v11 + 144;
        *(a1 + 480) = v11 + 144;
      }

      goto LABEL_28;
    }

    v10 = *(a1 + 480);
    if (v10 >= *(a1 + 488))
    {
      sub_650C7C((a1 + 472), "{System}", __p);
    }

    sub_64A2C8(*(a1 + 480), "{System}", __p);
    *(a1 + 480) = v10 + 144;
    *(a1 + 480) = v10 + 144;
    v12 = *(a1 + 424);
    v13 = *(a1 + 432);
    if (v13 == v12)
    {
LABEL_20:
      *(a1 + 432) = v12;
LABEL_28:
      sub_97E978(&__p);
      return a1;
    }

    while (1)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 3));
        v14 = v13 - 7;
        if (*(v13 - 33) < 0)
        {
LABEL_26:
          operator delete(*v14);
        }
      }

      else
      {
        v14 = v13 - 7;
        if (*(v13 - 33) < 0)
        {
          goto LABEL_26;
        }
      }

      v13 = v14;
      if (v14 == v12)
      {
        goto LABEL_20;
      }
    }
  }

  return a1;
}

void sub_97DFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = v10;
  *(v9 + 480) = v11;
  sub_97E978(&a9);
  sub_96BE24(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_97E088(void *a1)
{
  *a1 = off_266E018;
  v2 = a1[65];
  if (v2)
  {
    a1[66] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return sub_96BE24(a1);
}

void sub_97E0EC(void *a1)
{
  *a1 = off_266E018;
  v2 = a1[65];
  if (v2)
  {
    a1[66] = v2;
    operator delete(v2);
  }

  sub_96BE24(a1);

  operator delete();
}

void sub_97E164(uint64_t a1)
{
  sub_96BE24(a1);

  operator delete();
}

uint64_t sub_97E19C(void *a1)
{
  *a1 = off_266E240;
  v2 = a1[65];
  if (v2)
  {
    v3 = a1[66];
    v4 = a1[65];
    if (v3 != v2)
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
      v4 = a1[65];
    }

    a1[66] = v2;
    operator delete(v4);
  }

  return sub_96BE24(a1);
}

void sub_97E23C(void *a1)
{
  *a1 = off_266E240;
  v2 = a1[65];
  if (v2)
  {
    v3 = a1[66];
    v4 = a1[65];
    if (v3 != v2)
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
      v4 = a1[65];
    }

    a1[66] = v2;
    operator delete(v4);
  }

  sub_96BE24(a1);

  operator delete();
}

void sub_97E2F4(uint64_t a1)
{
  sub_96BE24(a1);

  operator delete();
}

void sub_97E330(uint64_t a1)
{
  sub_96BE24(a1);

  operator delete();
}

uint64_t sub_97E368(uint64_t a1)
{
  *a1 = off_266E0D0;
  if (*(a1 + 543) < 0)
  {
    v3 = a1;
    operator delete(*(a1 + 520));
    a1 = v3;
  }

  return sub_96BE24(a1);
}

void sub_97E3DC(uint64_t a1)
{
  *a1 = off_266E0D0;
  if (*(a1 + 543) < 0)
  {
    operator delete(*(a1 + 520));
  }

  sub_96BE24(a1);

  operator delete();
}

void sub_97E454(uint64_t a1)
{
  sub_96BE24(a1);

  operator delete();
}

void sub_97E48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0uLL;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 24) = v9;
      v10 = *(v7 + 40);
      *(v7 + 40) = 0uLL;
      *(a4 + 40) = v10;
      v11 = *(v7 + 56);
      *(v7 + 56) = 0;
      *(a4 + 56) = v11;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0uLL;
      *(a4 + 64) = *(v7 + 64);
      v12 = *(v7 + 88);
      *(a4 + 80) = *(v7 + 80);
      *(v7 + 64) = 0uLL;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(a4 + 88) = v12;
      LODWORD(v11) = *(v7 + 96);
      *(a4 + 100) = *(v7 + 100);
      *(a4 + 96) = v11;
      v13 = *(v7 + 104);
      *(v7 + 104) = 0uLL;
      *(a4 + 104) = v13;
      v14 = *(v7 + 120);
      *(v7 + 120) = 0uLL;
      *(a4 + 120) = v14;
      *(a4 + 136) = *(v7 + 136);
      v7 += 144;
      a4 += 144;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      do
      {
        sub_55A0A0(a1, v5);
        v5 += 144;
      }

      while (v5 != a3);
    }
  }
}

uint64_t sub_97E5C8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 144;
        sub_55A0A0(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_97E630(void *a1)
{
  *a1 = off_266E018;
  v2 = a1[65];
  if (v2)
  {
    a1[66] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return sub_96BE24(a1);
}

uint64_t *sub_97E694(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_97E6FC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_97E764(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((*(v1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*v1);
LABEL_4:

    operator delete();
  }

  return result;
}

uint64_t *sub_97E7E8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      *(v1 + 16) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_97E850(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    if (*(result + 24) == 1 && *(result + 23) < 0)
    {
      operator delete(*result);
    }

    operator delete();
  }

  return result;
}

void ***sub_97E8E8(void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      v3 = v1[1];
      v4 = *v1;
      if (v3 != v2)
      {
        do
        {
          v3 = sub_972094(v3 - 168);
        }

        while (v3 != v2);
        v4 = *v1;
      }

      v1[1] = v2;
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

void ***sub_97E978(uint64_t a1)
{
  if ((*(a1 + 263) & 0x80000000) == 0)
  {
    if ((*(a1 + 231) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 208));
    v2 = *(a1 + 192);
    if (v2 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 240));
  if (*(a1 + 231) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
LABEL_7:
    (off_266EC40[v2])(&v5, a1 + 160);
  }

LABEL_8:
  *(a1 + 192) = -1;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_10:
      v3 = *(a1 + 80);
      if (v3 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(*(a1 + 96));
  v3 = *(a1 + 80);
  if (v3 != -1)
  {
LABEL_14:
    (off_266EC40[v3])(&v6, a1 + 48);
  }

LABEL_15:
  *(a1 + 80) = -1;
  sub_97EA80((a1 + 24));
  return sub_97EA80(a1);
}

void ***sub_97EA80(void ***a1)
{
  v2 = *a1;
  if (!*a1)
  {
    return a1;
  }

  v3 = a1[1];
  v4 = *a1;
  if (v3 == v2)
  {
    goto LABEL_13;
  }

  do
  {
    if (*(v3 - 9) < 0)
    {
      operator delete(*(v3 - 4));
      if (*(v3 - 41) < 0)
      {
LABEL_10:
        operator delete(*(v3 - 8));
        v5 = v3 - 14;
        v6 = *(v3 - 20);
        if (v6 == -1)
        {
          goto LABEL_4;
        }

LABEL_11:
        (off_266EC40[v6])(&v8, v5);
        goto LABEL_4;
      }
    }

    else if (*(v3 - 41) < 0)
    {
      goto LABEL_10;
    }

    v5 = v3 - 14;
    v6 = *(v3 - 20);
    if (v6 != -1)
    {
      goto LABEL_11;
    }

LABEL_4:
    *(v3 - 20) = -1;
    v3 = v5;
  }

  while (v5 != v2);
  v4 = *a1;
LABEL_13:
  a1[1] = v2;
  operator delete(v4);
  return a1;
}

uint64_t sub_97EB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4) + 1;
  if (v3 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((*(a1 + 8) - *a1) >> 4);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_325C((v7 + 24), *a3, *(a3 + 8));
  }

  else
  {
    *(v7 + 24) = *a3;
    *(v7 + 40) = *(a3 + 16);
  }

  v8 = *(a1 + 8) - *a1;
  v9 = v7 - v8;
  memcpy((v7 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7 + 48;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7 + 48;
}

void sub_97ECD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
    sub_84E7C(va);
    _Unwind_Resume(a1);
  }

  sub_84E7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_97ED0C(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_325C((a1 + 24), *(a2 + 3), *(a2 + 4));
    goto LABEL_6;
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 47) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
LABEL_6:
  sub_55F1E8(a1 + 48, (a2 + 3));
  return a1;
}

void sub_97ED94(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_97EDE0(uint64_t a1)
{
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 96));
    v2 = *(a1 + 80);
    if (v2 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 128));
  if (*(a1 + 119) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 80);
  if (v2 != -1)
  {
LABEL_7:
    (off_266EC40[v2])(&v3, a1 + 48);
  }

LABEL_8:
  *(a1 + 80) = -1;
  if ((*(a1 + 47) & 0x80000000) == 0)
  {
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_12:
    operator delete(*a1);
    return;
  }

  operator delete(*(a1 + 24));
  if (*(a1 + 23) < 0)
  {
    goto LABEL_12;
  }
}

void ***sub_97EEA8(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v4 -= 160;
          sub_97EDE0(v4);
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

uint64_t sub_97EF20(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if ((0x8E38E38E38E38E39 * ((v9 - v10) >> 4)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x71C71C71C71C71C7 * ((v10 - *a1) >> 4);
    if (v12 > 0x1C71C71C71C71C7)
    {
      sub_1794();
    }

    v13 = 0x8E38E38E38E38E39 * ((v9 - v11) >> 4);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0xE38E38E38E38E3)
    {
      v14 = 0x1C71C71C71C71C7;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1808();
    }

    v41 = 16 * ((a2 - v11) >> 4);
    v57 = v41;
    v42 = 144 * a5;
    v43 = v41 + 144 * a5;
    do
    {
      sub_55C01C(v41, v7);
      v41 += 144;
      v7 += 9;
      v42 -= 144;
    }

    while (v42);
    sub_97E48C(a1, v5, a1[1], v43);
    v44 = *a1;
    v58 = v43 + a1[1] - v5;
    a1[1] = v5;
    v45 = v57 + v44 - v5;
    sub_97E48C(a1, v44, v5, v45);
    v46 = *a1;
    *a1 = v45;
    a1[1] = v58;
    a1[2] = 0;
    if (v46)
    {
      operator delete(v46);
    }

    return v57;
  }

  v15 = v10 - a2;
  if ((0x8E38E38E38E38E39 * ((v10 - a2) >> 4)) >= a5)
  {
    v30 = 144 * a5;
    v31 = a2 + 144 * a5;
    v32 = v10 - 144 * a5;
    if (v32 >= v10)
    {
      a1[1] = v10;
      if (v10 == v31)
      {
LABEL_34:
        v50 = &v7[9 * a5];
        v51 = v5;
        do
        {
          sub_594AD4(v51, v7);
          v7 += 9;
          v51 += 144;
        }

        while (v7 != v50);
        return v5;
      }
    }

    else
    {
      v33 = a1[1];
      do
      {
        v34 = *v32;
        *(v33 + 16) = *(v32 + 16);
        *v33 = v34;
        *(v32 + 8) = 0uLL;
        *v32 = 0;
        v35 = *(v32 + 24);
        *(v33 + 32) = *(v32 + 32);
        *(v33 + 24) = v35;
        v36 = *(v32 + 40);
        *(v32 + 40) = 0uLL;
        *(v33 + 40) = v36;
        v37 = *(v32 + 56);
        *(v32 + 56) = 0;
        *(v33 + 56) = v37;
        *(v33 + 64) = 0;
        *(v33 + 72) = 0uLL;
        *(v33 + 64) = *(v32 + 64);
        *(v33 + 80) = *(v32 + 80);
        *(v32 + 64) = 0uLL;
        v38 = *(v32 + 88);
        *(v32 + 80) = 0;
        *(v32 + 88) = 0;
        *(v33 + 88) = v38;
        LODWORD(v38) = *(v32 + 96);
        *(v33 + 100) = *(v32 + 100);
        *(v33 + 96) = v38;
        v39 = *(v32 + 104);
        *(v32 + 104) = 0uLL;
        *(v33 + 104) = v39;
        v40 = *(v32 + 120);
        *(v32 + 120) = 0uLL;
        *(v33 + 120) = v40;
        *(v33 + 136) = *(v32 + 136);
        v32 += 144;
        v33 += 144;
      }

      while (v32 < v10);
      a1[1] = v33;
      if (v10 == v31)
      {
        goto LABEL_34;
      }
    }

    v47 = v10 - 144;
    v48 = a2 + v30 - v10;
    v49 = (v10 - 144 - v30);
    do
    {
      sub_97F40C(v47, v49);
      v47 -= 144;
      v49 -= 9;
      v48 += 144;
    }

    while (v48);
    goto LABEL_34;
  }

  v17 = (a3 + v15);
  v59 = a1[1];
  v18 = v59;
  if ((a3 + v15) != a4)
  {
    v19 = (a3 + v15);
    do
    {
      sub_55C01C(v18, v19);
      v19 += 9;
      v18 = v59 + 144;
      v59 += 144;
    }

    while (v19 != a4);
  }

  a1[1] = v18;
  if (v15 >= 1)
  {
    v20 = 144 * a5;
    v21 = v18 - 144 * a5;
    if (v21 >= v10)
    {
      v22 = v18;
    }

    else
    {
      v22 = v18;
      do
      {
        v23 = *v21;
        *(v22 + 16) = *(v21 + 16);
        *v22 = v23;
        *(v21 + 8) = 0uLL;
        *v21 = 0;
        v24 = *(v21 + 24);
        *(v22 + 32) = *(v21 + 32);
        *(v22 + 24) = v24;
        v25 = *(v21 + 40);
        *(v21 + 40) = 0uLL;
        *(v22 + 40) = v25;
        v26 = *(v21 + 56);
        *(v21 + 56) = 0;
        *(v22 + 56) = v26;
        *(v22 + 64) = 0;
        *(v22 + 72) = 0uLL;
        *(v22 + 64) = *(v21 + 64);
        *(v22 + 80) = *(v21 + 80);
        *(v21 + 64) = 0uLL;
        v27 = *(v21 + 88);
        *(v21 + 80) = 0;
        *(v21 + 88) = 0;
        *(v22 + 88) = v27;
        LODWORD(v27) = *(v21 + 96);
        *(v22 + 100) = *(v21 + 100);
        *(v22 + 96) = v27;
        v28 = *(v21 + 104);
        *(v21 + 104) = 0uLL;
        *(v22 + 104) = v28;
        v29 = *(v21 + 120);
        *(v21 + 120) = 0uLL;
        *(v22 + 120) = v29;
        *(v22 + 136) = *(v21 + 136);
        v21 += 144;
        v22 += 144;
      }

      while (v21 < v10);
    }

    a1[1] = v22;
    if (v18 != v5 + 144 * a5)
    {
      v52 = v18 - 144;
      v53 = v5 + v20 - v18;
      v54 = (v18 - 144 - v20);
      do
      {
        sub_97F40C(v52, v54);
        v52 -= 144;
        v54 -= 9;
        v53 += 144;
      }

      while (v53);
    }

    v55 = v5;
    do
    {
      sub_594AD4(v55, v7);
      v7 += 9;
      v55 += 144;
    }

    while (v7 != v17);
  }

  return v5;
}

void sub_97F3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

void sub_97F3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_97E5C8(va);
  *(v3 + 8) = v4;
  _Unwind_Resume(a1);
}

void sub_97F3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_97F40C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  v5 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 8);
  *(a1 + 24) = v5;
  v6 = *(a2 + 5);
  if (!v6)
  {
    sub_97E694((a1 + 40));
    v8 = *(a2 + 6);
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_62:
    sub_97E6FC((a1 + 48));
    v10 = *(a2 + 7);
    if (v10)
    {
      goto LABEL_14;
    }

LABEL_63:
    sub_593634((a1 + 56));
    v13 = a1 + 64;
    v14 = *(a1 + 64);
    if (!v14)
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  *(a2 + 5) = 0;
  v7 = *(a1 + 40);
  *(a1 + 40) = v6;
  if (v7)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    operator delete();
  }

  v8 = *(a2 + 6);
  if (!v8)
  {
    goto LABEL_62;
  }

LABEL_9:
  *(a2 + 6) = 0;
  v9 = *(a1 + 48);
  *(a1 + 48) = v8;
  if (v9)
  {
    if (*(v9 + 31) < 0)
    {
      operator delete(*(v9 + 8));
    }

    operator delete();
  }

  v10 = *(a2 + 7);
  if (!v10)
  {
    goto LABEL_63;
  }

LABEL_14:
  *(a2 + 7) = 0;
  v11 = *(a1 + 56);
  *(a1 + 56) = v10;
  if (v11)
  {
    if (*(v11 + 103) < 0)
    {
      operator delete(*(v11 + 80));
      if ((*(v11 + 71) & 0x80000000) == 0)
      {
LABEL_17:
        v12 = *(v11 + 32);
        if (v12 == -1)
        {
LABEL_22:
          *(v11 + 32) = -1;
          operator delete();
        }

LABEL_21:
        (off_266EC40[v12])(&v33, v11);
        goto LABEL_22;
      }
    }

    else if ((*(v11 + 71) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    operator delete(*(v11 + 48));
    v12 = *(v11 + 32);
    if (v12 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v13 = a1 + 64;
  v14 = *(a1 + 64);
  if (v14)
  {
LABEL_24:
    v15 = *(a1 + 72);
    v16 = v14;
    if (v15 != v14)
    {
      do
      {
        if (*(v15 - 9) < 0)
        {
          operator delete(*(v15 - 4));
        }

        v15 -= 5;
      }

      while (v15 != v14);
      v16 = *v13;
    }

    *(a1 + 72) = v14;
    operator delete(v16);
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
  }

LABEL_31:
  *(a1 + 64) = a2[4];
  v17 = *(a2 + 11);
  *(a1 + 80) = *(a2 + 10);
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  if (v17)
  {
    *(a2 + 11) = 0;
    v18 = *(a1 + 88);
    *(a1 + 88) = v17;
    if (!v18)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v18 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v18)
  {
LABEL_33:
    sub_55CE04(a1 + 88, v18);
  }

LABEL_34:
  v19 = *(a2 + 24);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 96) = v19;
  v20 = *(a2 + 13);
  if (!v20)
  {
    sub_97E764((a1 + 104));
    v22 = *(a2 + 14);
    if (v22)
    {
      goto LABEL_40;
    }

LABEL_68:
    sub_97E7E8((a1 + 112));
    v25 = *(a2 + 15);
    if (v25)
    {
      goto LABEL_45;
    }

    goto LABEL_69;
  }

  *(a2 + 13) = 0;
  v21 = *(a1 + 104);
  *(a1 + 104) = v20;
  if (v21)
  {
    if (*(v21 + 47) < 0)
    {
      operator delete(*(v21 + 24));
      if ((*(v21 + 23) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((*(v21 + 23) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    operator delete(*v21);
LABEL_38:
    operator delete();
  }

  v22 = *(a2 + 14);
  if (!v22)
  {
    goto LABEL_68;
  }

LABEL_40:
  *(a2 + 14) = 0;
  v23 = *(a1 + 112);
  *(a1 + 112) = v22;
  if (v23)
  {
    v24 = *(v23 + 8);
    if (v24)
    {
      *(v23 + 16) = v24;
      operator delete(v24);
    }

    operator delete();
  }

  v25 = *(a2 + 15);
  if (v25)
  {
LABEL_45:
    *(a2 + 15) = 0;
    v26 = *(a1 + 120);
    *(a1 + 120) = v25;
    if (v26)
    {
      if (*(v26 + 24) == 1 && *(v26 + 23) < 0)
      {
        operator delete(*v26);
      }

      operator delete();
    }

    v27 = *(a2 + 16);
    if (v27)
    {
      goto LABEL_51;
    }

LABEL_70:
    sub_97E8E8((a1 + 128));
    goto LABEL_58;
  }

LABEL_69:
  sub_97E850((a1 + 120));
  v27 = *(a2 + 16);
  if (!v27)
  {
    goto LABEL_70;
  }

LABEL_51:
  *(a2 + 16) = 0;
  v28 = *(a1 + 128);
  *(a1 + 128) = v27;
  if (v28)
  {
    v29 = *v28;
    if (*v28)
    {
      v30 = v28[1];
      v31 = *v28;
      if (v30 != v29)
      {
        do
        {
          v30 = sub_972094(v30 - 168);
        }

        while (v30 != v29);
        v31 = *v28;
      }

      v28[1] = v29;
      operator delete(v31);
    }

    operator delete();
  }

LABEL_58:
  *(a1 + 136) = *(a2 + 34);
  return a1;
}

__n128 sub_97F818(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = (v4 - *a1) >> 4;
      }

      if (!(v10 >> 59))
      {
        operator new();
      }

      sub_1808();
    }

    v8 = ((v7 >> 5) + 1) / -2;
    v5 = v6 - 32 * (((v7 >> 5) + 1) / 2);
    if (v6 != v4)
    {
      do
      {
        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        v9 = *v6;
        *(v5 + 16) = *(v6 + 16);
        *v5 = v9;
        *(v6 + 23) = 0;
        *v6 = 0;
        *(v5 + 24) = *(v6 + 24);
        v6 += 32;
        v5 += 32;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = v6 + 32 * v8;
    a1[2] = v5;
  }

  result = *a2;
  *(v5 + 16) = a2[1].n128_u64[0];
  *v5 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  *(v5 + 24) = a2[1].n128_u8[8];
  a1[2] += 32;
  return result;
}

void sub_97F9D8(unint64_t *a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      v10 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      if (v4 == *a1)
      {
        v10 = 1;
      }

      if (v10 < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1808();
    }

    v8 = (0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + 1) / -2;
    v5 = v6 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + 1) / 2);
    if (v6 != v4)
    {
      do
      {
        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        v9 = *v6;
        *(v5 + 16) = *(v6 + 16);
        *v5 = v9;
        v5 += 24;
        *(v6 + 23) = 0;
        *v6 = 0;
        v6 += 24;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = v6 + 24 * v8;
    a1[2] = v5;
  }

  if (*(a2 + 23) < 0)
  {
    sub_325C(v5, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v11;
  }

  a1[2] += 24;
}

void sub_97FD04(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_97FD3C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266EC78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_97FF00(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_97FF38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266ECC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_980118(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_980150(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266ED18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_980330(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_980368(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266ED68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_980548(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_980580(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266EDB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_980760(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_980798(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266EE08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_98095C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_980994(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266EE58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_980A10(uint64_t *result, _OWORD *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v6 = *v2;
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *v2) >> 2);
    v8 = v7 + 1;
    if ((v7 + 1) > 0x924924924924924)
    {
      sub_1794();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v4 - v6) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x492492492492492)
    {
      v10 = 0x924924924924924;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0x924924924924924)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    v12 = (4 * ((v3 - *v2) >> 2));
    *v12 = *a2;
    *(v12 + 12) = *(a2 + 12);
    v13 = 28 * v7 + 28;
    v14 = 28 * v7 - (v3 - v6);
    memcpy(v12 - (v3 - v6), v6, v3 - v6);
    *v2 = v14;
    *(v2 + 8) = v13;
    *(v2 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }

    result = v11;
    *(v2 + 8) = v13;
  }

  else
  {
    v5 = *a2;
    *(v3 + 12) = *(a2 + 12);
    *v3 = v5;
    *(v2 + 8) = v3 + 28;
  }

  return result;
}

void sub_980B80()
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
  xmmword_27B1E80 = 0u;
  *algn_27B1E90 = 0u;
  dword_27B1EA0 = 1065353216;
  sub_3A9A34(&xmmword_27B1E80, v0, v0);
  sub_3A9A34(&xmmword_27B1E80, v3, v3);
  sub_3A9A34(&xmmword_27B1E80, __p, __p);
  sub_3A9A34(&xmmword_27B1E80, v9, v9);
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
    qword_27B1E28 = 0;
    qword_27B1E30 = 0;
    qword_27B1E20 = 0;
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

void sub_980E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1E38)
  {
    qword_27B1E40 = qword_27B1E38;
    operator delete(qword_27B1E38);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_980F1C(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_3B0030(a2);
  a1[1] = sub_3AFC64(a2);
  a1[2] = sub_3AFB1C(a2);
  a1[3] = 0;
  return a1;
}

double sub_980F68@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      sub_981094(a1, v4, __p);
      sub_981D00(a3, *(a3 + 8), __p[0], __p[1], 0x6DB6DB6DB6DB6DB7 * ((__p[1] - __p[0]) >> 2));
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v4 += 144;
    }

    while (v4 != v5);
  }

  sub_981244(a3, __p);
  v7 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v7;
    operator delete(v7);
  }

  result = *__p;
  *a3 = *__p;
  *(a3 + 16) = v10;
  return result;
}

void sub_981044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *v10;
  if (!*v10)
  {
    _Unwind_Resume(exception_object);
  }

  *(v10 + 8) = v12;
  operator delete(v12);
  _Unwind_Resume(exception_object);
}

double sub_981094@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16) - v4;
  if (!v5)
  {
    sub_6FAB4();
  }

  v6 = *(v4 + 1128);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (!v6)
  {
    v9 = 0x193D4BB7E327A977 * (v5 >> 4);
    v10 = 2264;
    v11 = 1;
    do
    {
      v12 = *(a2 + 8);
      if (*(v12 + v10 - 1136))
      {
        break;
      }

      v13 = v11 < 0x193D4BB7E327A977 * ((*(a2 + 16) - v12) >> 4) && *(v12 + v10) == 0;
      sub_98134C(a1, (v12 + v10 - 2264), v11 != 1, v13, __p);
      sub_981D00(a3, *(a3 + 8), __p[0], __p[1], 0x6DB6DB6DB6DB6DB7 * ((__p[1] - __p[0]) >> 2));
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v10 += 1136;
      ++v11;
      --v9;
    }

    while (v9);
    sub_981244(a3, __p);
    v14 = *a3;
    if (*a3)
    {
      *(a3 + 8) = v14;
      operator delete(v14);
    }

    result = *__p;
    *a3 = *__p;
    *(a3 + 16) = v17;
  }

  return result;
}

void sub_9811F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_981244(int8x8_t **a1@<X1>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v5 - v4) >> 2));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_98223C(v4, v5, v7, 1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v10 = *a1;
  v11 = a1[1];
  while (v10 != v11)
  {
    v12 = a2[1];
    if (*a2 != v12 && *(v12 - 28) == *v10 && *(v12 - 24) == *(v10 + 4))
    {
      v8.i32[0] = *(v10 + 24);
      v9.i32[0] = *(v12 - 4);
      v13 = vorr_s8(*&vmovl_u8(v9), *&vmovl_u8(v8));
      *(v12 - 4) = vuzp1_s8(v13, v13).u32[0];
      v9 = *(v12 - 12);
      v8 = vorr_s8(v9, *(v10 + 16));
      *(v12 - 12) = v8;
    }

    else
    {
      sub_981B9C(a2, v10);
    }

    v10 += 28;
  }
}

void sub_981330(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_98134C(uint64_t a1@<X0>, unsigned int *a2@<X1>, char a3@<W2>, char a4@<W3>, size_t *a5@<X8>)
{
  if (*(*a1 + 11688))
  {
    v8 = a1;
    sub_7E9A4(v71);
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v9 = sub_3A25A8(*(v8 + 8), a2[2] | (a2[1] << 32), 0, "trip");
    v61 = *(v9 + *(v9 - *v9 + 6));
    v10 = a2[4];
    if (v10 <= a2[5])
    {
      v11 = 0;
      v62 = v8;
      v63 = a3;
      do
      {
        v13 = *(v8 + 8);
        v14 = a2[1];
        v15 = sub_3A231C(v13, a2[2] | (v14 << 32), 0);
        v16 = &v15[-*v15];
        if (*v16 < 5u)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(v16 + 2);
          if (*(v16 + 2))
          {
            v17 += &v15[*&v15[v17]];
          }
        }

        v18 = (v17 + 4 * v14 + 4 + *(v17 + 4 * v14 + 4));
        v19 = (v18 - *v18);
        if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
        {
          v21 = *(v18 + v20);
        }

        else
        {
          v21 = -1;
        }

        v22 = *&v15[24 * v21 + 4 + 24 * v10 + *(v16 + 3) + *&v15[*(v16 + 3)]];
        v23 = *(v62 + 8);
        v24 = a2[1];
        v25 = a2[2] | (v24 << 32);
        if (v10 >= a2[5])
        {
          v29 = sub_3A231C(v23, v25, 0);
          v30 = &v29[-*v29];
          if (*v30 < 5u)
          {
            v31 = 0;
          }

          else
          {
            v31 = *(v30 + 2);
            if (*(v30 + 2))
            {
              v31 += &v29[*&v29[v31]];
            }
          }

          v38 = (v31 + 4 * v24 + 4 + *(v31 + 4 * v24 + 4));
          v39 = (v38 - *v38);
          if (*v39 >= 0xDu && (v40 = v39[6]) != 0)
          {
            v41 = *(v38 + v40);
          }

          else
          {
            v41 = -1;
          }

          v37 = *&v29[24 * v10 - 20 + 24 * v41 + *(v30 + 3) + *&v29[*(v30 + 3)]];
          v36 = 0xFFFFFFFF00000000;
        }

        else
        {
          v26 = sub_3A231C(v23, v25, 0);
          v27 = &v26[-*v26];
          if (*v27 < 5u)
          {
            v28 = 0;
          }

          else
          {
            v28 = *(v27 + 2);
            if (*(v27 + 2))
            {
              v28 += &v26[*&v26[v28]];
            }
          }

          v32 = (v28 + 4 * v24 + 4 + *(v28 + 4 * v24 + 4));
          v33 = (v32 - *v32);
          if (*v33 >= 0xDu && (v34 = v33[6]) != 0)
          {
            v35 = *(v32 + v34);
          }

          else
          {
            v35 = -1;
          }

          v36 = *&v26[24 * v10 + 28 + 24 * v35 + *(v27 + 3) + *&v26[*(v27 + 3)]];
          v37 = 0xFFFFFFFF00000000;
        }

        v42 = *v62;
        v43 = a2[6];
        v44 = a2[9];
        *&v65 = v37;
        *(&v65 + 1) = v22;
        v67[0] = v22;
        v67[1] = v36;
        v69 = 0;
        v70 = 0;
        __p = 0;
        sub_95DCF4(v42, v22, 0, v43, v44, 1, v61, &v65, v67, &__p);
        v46 = __p;
        v45 = v69;
        if (__p != v69)
        {
          v47 = a2[4];
          do
          {
            if (v10 == v47 && (a3 & 1) == 0 && (*(v46 + 24) & 1) != 0 || (v51 = a2[5], v10 == v51) && (a4 & 1) == 0 && (*(v46 + 23) & 1) != 0 || v10 != v51 && *(v46 + 25) == 1)
            {
              v52 = a5[2];
              if (v11 < v52)
              {
                v48 = *v46;
                *(v11 + 12) = *(v46 + 12);
                *v11 = v48;
                v11 += 28;
              }

              else
              {
                v53 = *a5;
                v54 = &v11[-*a5];
                v55 = 0x6DB6DB6DB6DB6DB7 * (v54 >> 2) + 1;
                if (v55 > 0x924924924924924)
                {
                  sub_1794();
                }

                v56 = 0x6DB6DB6DB6DB6DB7 * ((v52 - v53) >> 2);
                if (2 * v56 > v55)
                {
                  v55 = 2 * v56;
                }

                if (v56 >= 0x492492492492492)
                {
                  v57 = 0x924924924924924;
                }

                else
                {
                  v57 = v55;
                }

                if (v57)
                {
                  if (v57 <= 0x924924924924924)
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v58 = (4 * (v54 >> 2));
                v59 = *v46;
                *(v58 + 12) = *(v46 + 12);
                *v58 = v59;
                v11 = v58 + 28;
                v60 = v58 - v54;
                memcpy(v58 - v54, v53, v54);
                *a5 = v60;
                a5[1] = v11;
                a5[2] = 0;
                if (v53)
                {
                  operator delete(v53);
                }

                a3 = v63;
              }

              a5[1] = v11;
              v47 = a2[4];
              v49 = *(v11 - 4);
              if (v10 != v47)
              {
                v49 = 0;
              }

              *(v11 - 4) = v49;
              v50 = *(v11 - 5);
              if (v10 != a2[5])
              {
                v50 = 0;
              }

              *(v11 - 5) = v50;
            }

            v46 = (v46 + 28);
          }

          while (v46 != v45);
          v46 = __p;
        }

        if (v46)
        {
          v69 = v46;
          operator delete(v46);
        }

        ++v10;
        v8 = v62;
      }

      while (v10 <= a2[5]);
    }

    else
    {
      v11 = 0;
    }

    sub_95D75C(*v8, v61, 0, a2[6], a2[9], &__p);
    sub_981D00(a5, v11, __p, v69, 0x6DB6DB6DB6DB6DB7 * ((v69 - __p) >> 2));
    sub_981244(a5, &v65);
    v12 = *a5;
    if (*a5)
    {
      a5[1] = v12;
      operator delete(v12);
    }

    *a5 = v65;
    a5[2] = v66;
    *(v8 + 24) = sub_7EA60(v71) + *(v8 + 24);
    if (__p)
    {
      v69 = __p;
      operator delete(__p);
    }
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }
}