void sub_1000D4A74(_Unwind_Exception *a1)
{
  sub_1000D7AF8(v1 + 64);
  *(v1 + 24) = v2;
  if (*(v1 + 55) < 0)
  {
    operator delete(*v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_1000D4AD0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100439DD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000D4B50(uint64_t a1)
{
  sub_1000D7C04(a1);

  operator delete();
}

void sub_1000D4B88(uint64_t a1)
{
  v2 = strlen(off_10045B4C0[0]);
  if (v2 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_10000D39C();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  v5 = v2;
  if (v2)
  {
    memmove(&__dst, off_10045B4C0[0], v2);
    *(&__dst + v3) = 0;
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
LABEL_5:
      __p = *(a1 + 8);
      goto LABEL_9;
    }
  }

  sub_100003228(&__p, *(a1 + 8), *(a1 + 16));
LABEL_9:
  sub_1000032E4(&__p, &__dst);
  sub_1000C9474(a1 + 40, &__p);
}

void sub_1000D6CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1000D7024(uint64_t a1)
{
  *(a1 + 8) = 0u;
  *a1 = 0;
  *(a1 + 72) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 49) = 0u;
  v2 = sub_10010C758();
  *(a1 + 168) = 0;
  *(a1 + 152) = v2;
  *(a1 + 160) = v2;
  *(a1 + 176) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 217) = 0u;
  v3 = sub_10010C758();
  *(a1 + 320) = v3;
  *(a1 + 328) = v3;
  *(a1 + 336) = 0;
  *(a1 + 408) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 385) = 0u;
  v4 = sub_10010C758();
  *(a1 + 488) = v4;
  *(a1 + 496) = v4;
  *(a1 + 504) = 0;
  *(a1 + 576) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 553) = 0u;
  v5 = sub_10010C758();
  *(a1 + 656) = v5;
  *(a1 + 664) = v5;
  *(a1 + 672) = 0;
  *(a1 + 744) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 721) = 0u;
  v6 = sub_10010C758();
  *(a1 + 824) = v6;
  *(a1 + 832) = v6;
  *(a1 + 840) = 0;
  *(a1 + 912) = 0;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 889) = 0u;
  v7 = sub_10010C758();
  *(a1 + 992) = v7;
  *(a1 + 1000) = v7;
  *(a1 + 1008) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1057) = 0u;
  v8 = sub_10010C758();
  *(a1 + 1160) = v8;
  *(a1 + 1168) = v8;
  *(a1 + 1176) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1225) = 0u;
  v9 = sub_10010C758();
  *(a1 + 1328) = v9;
  *(a1 + 1336) = v9;
  *(a1 + 1344) = 0;
  *(a1 + 1416) = 0;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1393) = 0u;
  v10 = sub_10010C758();
  *(a1 + 1496) = v10;
  *(a1 + 1504) = v10;
  *(a1 + 1512) = 0;
  *(a1 + 1584) = 0;
  *(a1 + 1520) = 0u;
  *(a1 + 1536) = 0u;
  *(a1 + 1552) = 0u;
  *(a1 + 1561) = 0u;
  v11 = sub_10010C758();
  *(a1 + 1664) = v11;
  *(a1 + 1672) = v11;
  *(a1 + 1680) = 0;
  *(a1 + 1752) = 0;
  *(a1 + 1688) = 0u;
  *(a1 + 1704) = 0u;
  *(a1 + 1720) = 0u;
  *(a1 + 1729) = 0u;
  v12 = sub_10010C758();
  *(a1 + 1832) = v12;
  *(a1 + 1840) = v12;
  *(a1 + 1848) = 0;
  *(a1 + 1920) = 0;
  *(a1 + 1856) = 0u;
  *(a1 + 1872) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 1897) = 0u;
  v13 = sub_10010C758();
  *(a1 + 2000) = v13;
  *(a1 + 2008) = v13;
  *(a1 + 2016) = 0;
  *(a1 + 2088) = 0;
  *(a1 + 2024) = 0u;
  *(a1 + 2040) = 0u;
  *(a1 + 2056) = 0u;
  *(a1 + 2065) = 0u;
  v14 = sub_10010C758();
  *(a1 + 2168) = v14;
  *(a1 + 2176) = v14;
  *(a1 + 2184) = 0;
  *(a1 + 2256) = 0;
  *(a1 + 2192) = 0u;
  *(a1 + 2208) = 0u;
  *(a1 + 2224) = 0u;
  *(a1 + 2233) = 0u;
  v15 = sub_10010C758();
  *(a1 + 2336) = v15;
  *(a1 + 2344) = v15;
  *(a1 + 2352) = 0;
  *(a1 + 2424) = 0;
  *(a1 + 2360) = 0u;
  *(a1 + 2376) = 0u;
  *(a1 + 2392) = 0u;
  *(a1 + 2401) = 0u;
  v16 = sub_10010C758();
  *(a1 + 2504) = v16;
  *(a1 + 2512) = v16;
  *(a1 + 2520) = 0;
  *(a1 + 2592) = 0;
  *(a1 + 2528) = 0u;
  *(a1 + 2544) = 0u;
  *(a1 + 2560) = 0u;
  *(a1 + 2569) = 0u;
  v17 = sub_10010C758();
  *(a1 + 2672) = v17;
  *(a1 + 2680) = v17;
  *(a1 + 2688) = 0;
  *(a1 + 2760) = 0;
  *(a1 + 2696) = 0u;
  *(a1 + 2712) = 0u;
  *(a1 + 2728) = 0u;
  *(a1 + 2737) = 0u;
  v18 = sub_10010C758();
  *(a1 + 2840) = v18;
  *(a1 + 2848) = v18;
  *(a1 + 2856) = 0;
  *(a1 + 2928) = 0;
  *(a1 + 2864) = 0u;
  *(a1 + 2880) = 0u;
  *(a1 + 2896) = 0u;
  *(a1 + 2905) = 0u;
  v19 = sub_10010C758();
  *(a1 + 3008) = v19;
  *(a1 + 3016) = v19;
  *(a1 + 3024) = 0;
  *(a1 + 3096) = 0;
  *(a1 + 3032) = 0u;
  *(a1 + 3048) = 0u;
  *(a1 + 3064) = 0u;
  *(a1 + 3073) = 0u;
  v20 = sub_10010C758();
  *(a1 + 3176) = v20;
  *(a1 + 3184) = v20;
  *(a1 + 3192) = 0;
  *(a1 + 3264) = 0;
  *(a1 + 3200) = 0u;
  *(a1 + 3216) = 0u;
  *(a1 + 3232) = 0u;
  *(a1 + 3241) = 0u;
  v21 = sub_10010C758();
  *(a1 + 3344) = v21;
  *(a1 + 3352) = v21;
  *(a1 + 3360) = 0;
  *(a1 + 3432) = 0;
  *(a1 + 3368) = 0u;
  *(a1 + 3384) = 0u;
  *(a1 + 3400) = 0u;
  *(a1 + 3409) = 0u;
  v22 = sub_10010C758();
  *(a1 + 3512) = v22;
  *(a1 + 3520) = v22;
  *(a1 + 3528) = 0;
  *(a1 + 3600) = 0;
  *(a1 + 3536) = 0u;
  *(a1 + 3552) = 0u;
  *(a1 + 3568) = 0u;
  *(a1 + 3577) = 0u;
  v23 = sub_10010C758();
  *(a1 + 3680) = v23;
  *(a1 + 3688) = v23;
  *(a1 + 3696) = 0;
  *(a1 + 3768) = 0;
  *(a1 + 3704) = 0u;
  *(a1 + 3720) = 0u;
  *(a1 + 3736) = 0u;
  *(a1 + 3745) = 0u;
  v24 = sub_10010C758();
  *(a1 + 3848) = v24;
  *(a1 + 3856) = v24;
  *(a1 + 3864) = 0;
  *(a1 + 3936) = 0;
  *(a1 + 3872) = 0u;
  *(a1 + 3888) = 0u;
  *(a1 + 3904) = 0u;
  *(a1 + 3913) = 0u;
  v25 = sub_10010C758();
  *(a1 + 4016) = v25;
  *(a1 + 4024) = v25;
  *(a1 + 4032) = 0;
  *(a1 + 4104) = 0;
  *(a1 + 4040) = 0u;
  *(a1 + 4056) = 0u;
  *(a1 + 4072) = 0u;
  *(a1 + 4081) = 0u;
  v26 = sub_10010C758();
  *(a1 + 4184) = v26;
  *(a1 + 4192) = v26;
  *(a1 + 4200) = 0;
  *(a1 + 4272) = 0;
  *(a1 + 4208) = 0u;
  *(a1 + 4224) = 0u;
  *(a1 + 4240) = 0u;
  *(a1 + 4249) = 0u;
  v27 = sub_10010C758();
  *(a1 + 4352) = v27;
  *(a1 + 4360) = v27;
  *(a1 + 4368) = 0;
  *(a1 + 4440) = 0;
  *(a1 + 4376) = 0u;
  *(a1 + 4392) = 0u;
  *(a1 + 4408) = 0u;
  *(a1 + 4417) = 0u;
  v28 = sub_10010C758();
  *(a1 + 4520) = v28;
  *(a1 + 4528) = v28;
  return a1;
}

void sub_1000D7598(_Unwind_Exception *a1)
{
  sub_1000CBD3C(v2 + 72);
  sub_10002BB1C(v2 + 48);
  sub_10002BB1C(v2 + 32);
  if (*(v2 + 31) < 0)
  {
    operator delete(*v3);
  }

  if ((v4 & 1) == 0)
  {
    do
    {
      v2 -= 168;
      sub_1000C9470(v2);
    }

    while (v2 != v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000D75E4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  v2 = sub_10010C758();
  *(a1 + 80) = 0;
  *(a1 + 64) = v2;
  *(a1 + 72) = v2;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  v3 = sub_10010C758();
  *(a1 + 160) = 0;
  *(a1 + 144) = v3;
  *(a1 + 152) = v3;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  v4 = sub_10010C758();
  *(a1 + 240) = 0;
  *(a1 + 224) = v4;
  *(a1 + 232) = v4;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  v5 = sub_10010C758();
  *(a1 + 304) = v5;
  *(a1 + 312) = v5;
  *(a1 + 320) = 0;
  *(a1 + 376) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  v6 = sub_10010C758();
  *(a1 + 384) = v6;
  *(a1 + 392) = v6;
  *(a1 + 400) = 0;
  *(a1 + 456) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  v7 = sub_10010C758();
  *(a1 + 464) = v7;
  *(a1 + 472) = v7;
  *(a1 + 480) = 0;
  *(a1 + 536) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  v8 = sub_10010C758();
  *(a1 + 544) = v8;
  *(a1 + 552) = v8;
  *(a1 + 560) = 0;
  *(a1 + 616) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  v9 = sub_10010C758();
  *(a1 + 624) = v9;
  *(a1 + 632) = v9;
  *(a1 + 640) = 0;
  *(a1 + 696) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  v10 = sub_10010C758();
  *(a1 + 704) = v10;
  *(a1 + 712) = v10;
  *(a1 + 720) = 0;
  *(a1 + 776) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  v11 = sub_10010C758();
  *(a1 + 784) = v11;
  *(a1 + 792) = v11;
  *(a1 + 800) = 0;
  *(a1 + 856) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  v12 = sub_10010C758();
  *(a1 + 864) = v12;
  *(a1 + 872) = v12;
  *(a1 + 880) = 0;
  *(a1 + 936) = 0;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  v13 = sub_10010C758();
  *(a1 + 944) = v13;
  *(a1 + 952) = v13;
  *(a1 + 960) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  v14 = sub_10010C758();
  *(a1 + 1024) = v14;
  *(a1 + 1032) = v14;
  *(a1 + 1040) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  v15 = sub_10010C758();
  *(a1 + 1104) = v15;
  *(a1 + 1112) = v15;
  *(a1 + 1120) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 0u;
  v16 = sub_10010C758();
  *(a1 + 1184) = v16;
  *(a1 + 1192) = v16;
  *(a1 + 1200) = 0;
  *(a1 + 1256) = 0;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  v17 = sub_10010C758();
  *(a1 + 1264) = v17;
  *(a1 + 1272) = v17;
  *(a1 + 1280) = 0;
  *(a1 + 1336) = 0;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 0u;
  *(a1 + 1320) = 0u;
  v18 = sub_10010C758();
  *(a1 + 1344) = v18;
  *(a1 + 1352) = v18;
  *(a1 + 1360) = 0;
  *(a1 + 1416) = 0;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 0u;
  v19 = sub_10010C758();
  *(a1 + 1424) = v19;
  *(a1 + 1432) = v19;
  *(a1 + 1440) = 0;
  *(a1 + 1496) = 0;
  *(a1 + 1448) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 0u;
  v20 = sub_10010C758();
  *(a1 + 1504) = v20;
  *(a1 + 1512) = v20;
  *(a1 + 1520) = 0;
  *(a1 + 1576) = 0;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1560) = 0u;
  v21 = sub_10010C758();
  *(a1 + 1584) = v21;
  *(a1 + 1592) = v21;
  *(a1 + 1600) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1608) = 0u;
  *(a1 + 1624) = 0u;
  *(a1 + 1640) = 0u;
  v22 = sub_10010C758();
  *(a1 + 1664) = v22;
  *(a1 + 1672) = v22;
  *(a1 + 1680) = 0;
  *(a1 + 1736) = 0;
  *(a1 + 1688) = 0u;
  *(a1 + 1704) = 0u;
  *(a1 + 1720) = 0u;
  v23 = sub_10010C758();
  *(a1 + 1744) = v23;
  *(a1 + 1752) = v23;
  *(a1 + 1760) = 0;
  *(a1 + 1816) = 0;
  *(a1 + 1768) = 0u;
  *(a1 + 1784) = 0u;
  *(a1 + 1800) = 0u;
  v24 = sub_10010C758();
  *(a1 + 1824) = v24;
  *(a1 + 1832) = v24;
  *(a1 + 1840) = 0;
  *(a1 + 1896) = 0;
  *(a1 + 1848) = 0u;
  *(a1 + 1864) = 0u;
  *(a1 + 1880) = 0u;
  v25 = sub_10010C758();
  *(a1 + 1904) = v25;
  *(a1 + 1912) = v25;
  *(a1 + 1920) = 0;
  *(a1 + 1976) = 0;
  *(a1 + 1928) = 0u;
  *(a1 + 1944) = 0u;
  *(a1 + 1960) = 0u;
  v26 = sub_10010C758();
  *(a1 + 1984) = v26;
  *(a1 + 1992) = v26;
  *(a1 + 2000) = 0;
  *(a1 + 2056) = 0;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0u;
  *(a1 + 2040) = 0u;
  v27 = sub_10010C758();
  *(a1 + 2064) = v27;
  *(a1 + 2072) = v27;
  *(a1 + 2080) = 0;
  *(a1 + 2136) = 0;
  *(a1 + 2088) = 0u;
  *(a1 + 2104) = 0u;
  *(a1 + 2120) = 0u;
  v28 = sub_10010C758();
  *(a1 + 2144) = v28;
  *(a1 + 2152) = v28;
  return a1;
}

void sub_1000D7AB4(_Unwind_Exception *a1)
{
  sub_10002BB1C(v2 + 48);
  sub_10002BB1C(v2 + 32);
  if (*(v2 + 31) < 0)
  {
    operator delete(*v3);
  }

  if ((v4 & 1) == 0)
  {
    do
    {
      v2 -= 80;
      sub_1000C9A3C(v2);
    }

    while (v2 != v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000D7AF8(uint64_t a1)
{
  sub_1000C9470(a1 + 4368);
  sub_1000C9470(a1 + 4200);
  sub_1000C9470(a1 + 4032);
  sub_1000C9470(a1 + 3864);
  sub_1000C9470(a1 + 3696);
  sub_1000C9470(a1 + 3528);
  sub_1000C9470(a1 + 3360);
  sub_1000C9470(a1 + 3192);
  sub_1000C9470(a1 + 3024);
  sub_1000C9470(a1 + 2856);
  sub_1000C9470(a1 + 2688);
  sub_1000C9470(a1 + 2520);
  sub_1000C9470(a1 + 2352);
  sub_1000C9470(a1 + 2184);
  sub_1000C9470(a1 + 2016);
  sub_1000C9470(a1 + 1848);
  sub_1000C9470(a1 + 1680);
  sub_1000C9470(a1 + 1512);
  sub_1000C9470(a1 + 1344);
  sub_1000C9470(a1 + 1176);
  sub_1000C9470(a1 + 1008);
  sub_1000C9470(a1 + 840);
  sub_1000C9470(a1 + 672);
  sub_1000C9470(a1 + 504);
  sub_1000C9470(a1 + 336);
  sub_1000C9470(a1 + 168);

  return sub_1000C9470(a1);
}

uint64_t sub_1000D7C04(uint64_t a1)
{
  v2 = (a1 + 4096);
  *a1 = off_100439E28;
  if (*(a1 + 32) == 1)
  {
    dispatch_barrier_sync(*(a1 + 6736), &stru_100439E90);
    v3 = dispatch_semaphore_create(0);
    v4 = v3;
    if (v2[2648] == 1)
    {
      v5 = *(a1 + 6752);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3321888768;
      v16[2] = sub_1000D7EF8;
      v16[3] = &unk_100439EB0;
      v6 = v3;
      v17 = v6;
      [v5 finishWritingWithCompletionHandler:v16];

      dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (v2[2680] == 1)
    {
      v7 = *(a1 + 6784);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000D7F34;
      v14[3] = &unk_100432828;
      v8 = v4;
      v15 = v8;
      [v7 finishWritingWithCompletionHandler:v14];
      dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (v2[2712] == 1)
    {
      v9 = *(a1 + 6816);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000D7F3C;
      v12[3] = &unk_100432828;
      v10 = v4;
      v13 = v10;
      [v9 finishWritingWithCompletionHandler:v12];
      dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  if (v2[2712] == 1)
  {

    v2[2712] = 0;
    if (v2[2680] != 1)
    {
LABEL_11:
      if (v2[2648] != 1)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if (v2[2680] != 1)
  {
    goto LABEL_11;
  }

  v2[2680] = 0;
  if (v2[2648] == 1)
  {
LABEL_12:

    v2[2648] = 0;
  }

LABEL_13:

  sub_1000D7F44(a1 + 4576);
  sub_1000D7AF8(a1 + 40);
  *a1 = off_100439E78;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

id sub_1000D7F00(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000D7F44(uint64_t a1)
{
  sub_1000C9A3C(a1 + 2080);
  sub_1000C9A3C(a1 + 2000);
  sub_1000C9A3C(a1 + 1920);
  sub_1000C9A3C(a1 + 1840);
  sub_1000C9A3C(a1 + 1760);
  sub_1000C9A3C(a1 + 1680);
  sub_1000C9A3C(a1 + 1600);
  sub_1000C9A3C(a1 + 1520);
  sub_1000C9A3C(a1 + 1440);
  sub_1000C9A3C(a1 + 1360);
  sub_1000C9A3C(a1 + 1280);
  sub_1000C9A3C(a1 + 1200);
  sub_1000C9A3C(a1 + 1120);
  sub_1000C9A3C(a1 + 1040);
  sub_1000C9A3C(a1 + 960);
  sub_1000C9A3C(a1 + 880);
  sub_1000C9A3C(a1 + 800);
  sub_1000C9A3C(a1 + 720);
  sub_1000C9A3C(a1 + 640);
  sub_1000C9A3C(a1 + 560);
  sub_1000C9A3C(a1 + 480);
  sub_1000C9A3C(a1 + 400);
  sub_1000C9A3C(a1 + 320);
  sub_1000C9A3C(a1 + 240);
  sub_1000C9A3C(a1 + 160);
  sub_1000C9A3C(a1 + 80);

  return sub_1000C9A3C(a1);
}

void sub_1000D8048(uint64_t a1, char a2)
{
  *(a1 + 64) = a2;
  if (!*(a1 + 48))
  {
    sub_1000D2304(a1 + 8, __p);
    sub_1000EE460(__p);
  }

  sub_1000474A4(__p, "");
  sub_1000D8214(v4, "Legacy output stream already open");
  sub_100382FC4(v4, v2, __p);
  sub_10003F5D0(v2);
}

void sub_1000D81CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000D8214@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1000D8248(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_1000D8264@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *a1 ^ (*a1 >> 31);
  if (v3 > 2)
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        std::string::operator=(a2, (a1 + 8));
        return result;
      }

      std::to_string(&v6, *(a1 + 8));
      goto LABEL_18;
    }

    if (v3 == 5)
    {
      v4 = "<vector>";
      goto LABEL_16;
    }

    if (v3 == 6)
    {
      v4 = "<map>";
LABEL_16:
      std::string::assign(a2, v4);
      return result;
    }

LABEL_13:
    v4 = "<unknown>";
    goto LABEL_16;
  }

  switch(v3)
  {
    case 0:
      v4 = "None";
      goto LABEL_16;
    case 1:
      std::to_string(&v6, *(a1 + 8));
      break;
    case 2:
      std::to_string(&v6, *(a1 + 8));
      break;
    default:
      goto LABEL_13;
  }

LABEL_18:
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v6.__r_.__value_.__l.__data_;
  *a2 = v6;
  return result;
}

void sub_1000D8380(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1000D83F0(void *a1, int a2)
{
  v6 = __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (a2 == 3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (!(v4 | v7))
  {
    sub_100383BBC(v3);
  }

  return sub_1000D92C0(v4, v7, 1, v2, v3);
}

uint64_t sub_1000D8460(_DWORD *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = (a1 + 2);
  v4 = v3 ^ (v3 >> 31);
  if (v4 <= 2)
  {
    if (!v4)
    {

      sub_1000D85BC();
    }

    if (v4 == 1)
    {
      return *v2;
    }

    else
    {
      v6 = *v2;
      sub_1000D8740(*v2);
      return v6;
    }
  }

  else
  {
    if (v4 > 4)
    {
      if (v4 == 5)
      {

        sub_1000D8FB8();
      }

      sub_1000D913C();
    }

    if (v4 == 3)
    {

      return sub_1000D88D0(a2, v2);
    }

    else
    {
      v7 = *v2;
      sub_1000D8F14(*v2);
      v8 = ceil(v7);
      v9 = floor(v7);
      if (v7 >= 0.0)
      {
        v8 = v9;
      }

      return v8;
    }
  }
}

void sub_1000D86A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1000D8708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1000D86F8);
}

int64_t sub_1000D8740(int64_t result)
{
  v1 = 2 * (result > 0x7FFFFFFF);
  if (result <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v1 = 1;
  }

  if (v1 == 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v3 = sub_1000D8810(exception);
  }

  if (v1 == 1)
  {
    v4 = __cxa_allocate_exception(8uLL);
    v4->__vftable = 0;
    v5 = sub_1000D87D8(v4);
  }

  return result;
}

std::bad_cast *sub_1000D87D8(std::bad_cast *a1)
{
  result = std::bad_cast::bad_cast(a1);
  result->__vftable = &off_100439F38;
  return result;
}

std::bad_cast *sub_1000D8810(std::bad_cast *a1)
{
  result = std::bad_cast::bad_cast(a1);
  result->__vftable = &off_100439F60;
  return result;
}

void sub_1000D8848(std::bad_cast *a1)
{
  std::bad_cast::~bad_cast(a1);

  operator delete();
}

void sub_1000D888C(std::bad_cast *a1)
{
  std::bad_cast::~bad_cast(a1);

  operator delete();
}

uint64_t sub_1000D88D0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2[23];
  v3 = *a2;
  if (v2 >= 0)
  {
    v3 = a2;
  }

  if (v2 < 0)
  {
    v2 = *(a2 + 1);
  }

  if (!v2)
  {
    goto LABEL_17;
  }

  v4 = &v3[v2];
  v12 = 0;
  v5 = *v3;
  if (v5 == 45 || v5 == 43)
  {
    ++v3;
  }

  LOBYTE(v8.__vftable) = 0;
  HIDWORD(v8.__vftable) = 1;
  v9 = &v12;
  v10 = v3;
  v11 = v4;
  v6 = sub_1000D89EC(&v8);
  result = v12;
  if (v5 == 45)
  {
    if (v12 >= 0x80000001)
    {
      v6 = 0;
    }

    if (v6)
    {
      return -v12;
    }

LABEL_17:
    std::bad_cast::bad_cast(&v8);
    v8.__vftable = &off_100434090;
    sub_100049F88(&v8);
  }

  if (v12 < 0)
  {
    v6 = 0;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1000D89EC(char *a1)
{
  v2 = *(a1 + 2);
  v1 = *(a1 + 3);
  *(a1 + 3) = v1 - 1;
  v3 = *(a1 + 1);
  *v3 = 0;
  if (v2 > v1 - 1)
  {
    return 0;
  }

  v4 = *(v1 - 1);
  if ((v4 - 58) < 0xF6u)
  {
    return 0;
  }

  *v3 = (v4 - 48);
  *(a1 + 3) = v1 - 2;
  std::locale::locale(&v51);
  v7 = std::locale::classic();
  if (std::locale::operator==(&v51, v7))
  {
    v9 = *(a1 + 2);
    v8 = *(a1 + 3);
    if (v8 >= v9)
    {
      v13 = *a1;
      while (1)
      {
        v16 = *(a1 + 1);
        v13 |= v16 > 0x19999999;
        *a1 = v13 & 1;
        v17 = 10 * v16;
        *(a1 + 1) = 10 * v16;
        v18 = *v8;
        if ((*v8 - 58) < 0xF6u)
        {
          break;
        }

        v19 = v18 - 48;
        v20 = (v18 - 48) * v17;
        if (v19)
        {
          if (v13)
          {
            break;
          }

          if (((v19 * v17) & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          v14 = *(a1 + 1);
          v15 = *v14;
          if (__CFADD__(v20, *v14))
          {
            break;
          }
        }

        else
        {
          v14 = *(a1 + 1);
          v15 = *v14;
        }

        *v14 = v15 + v20;
        *(a1 + 3) = --v8;
        if (v8 < v9)
        {
          goto LABEL_6;
        }
      }

      v10 = 0;
    }

    else
    {
LABEL_6:
      v10 = 1;
    }

    goto LABEL_61;
  }

  v11 = std::locale::use_facet(&v51, &std::numpunct<char>::id);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = v50;
  if ((v50 & 0x8000000000000000) != 0)
  {
    v12 = v49;
    if (!v49 || *__p <= 0)
    {
LABEL_27:
      v28 = *(a1 + 2);
      v27 = *(a1 + 3);
      if (v27 >= v28)
      {
        v39 = *a1;
        while (1)
        {
          v42 = *(a1 + 1);
          v39 |= v42 > 0x19999999;
          *a1 = v39 & 1;
          v43 = 10 * v42;
          *(a1 + 1) = 10 * v42;
          v44 = *v27;
          if ((*v27 - 58) < 0xF6u)
          {
            break;
          }

          v45 = v44 - 48;
          v46 = (v44 - 48) * v43;
          if (v45)
          {
            if (v39)
            {
              break;
            }

            if (((v45 * v43) & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            v40 = *(a1 + 1);
            v41 = *v40;
            if (__CFADD__(v46, *v40))
            {
              break;
            }
          }

          else
          {
            v40 = *(a1 + 1);
            v41 = *v40;
          }

          *v40 = v41 + v46;
          *(a1 + 3) = --v27;
          if (v27 < v28)
          {
            goto LABEL_28;
          }
        }

LABEL_58:
        v29 = 0;
        if ((v50 & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }

      goto LABEL_28;
    }
  }

  else if (!v50 || __p <= 0)
  {
    goto LABEL_27;
  }

  v21 = (v11->__vftable[1].~facet_0)(v11);
  v22 = *(a1 + 2);
  v23 = *(a1 + 3);
  if (v23 >= v22)
  {
    v24 = 0;
    p_p = __p;
    if (v50 >= 0)
    {
      p_p = &__p;
    }

    v26 = *p_p - 1;
    while (1)
    {
      while (v26)
      {
        v32 = *(a1 + 1);
        v33 = *a1 | (v32 > 0x19999999);
        *a1 = v33;
        v34 = 10 * v32;
        *(a1 + 1) = v34;
        v35 = *v23;
        if ((*v23 - 58) < 0xF6u)
        {
          goto LABEL_58;
        }

        v36 = v35 - 48;
        v37 = (v35 - 48) * v34;
        if (v36)
        {
          if (v33)
          {
            goto LABEL_58;
          }

          if (((v36 * v34) & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_58;
          }

          v30 = *(a1 + 1);
          v31 = *v30;
          if (__CFADD__(v37, *v30))
          {
            goto LABEL_58;
          }
        }

        else
        {
          v30 = *(a1 + 1);
          v31 = *v30;
        }

        *v30 = v31 + v37;
        --v26;
        *(a1 + 3) = --v23;
        if (v23 < v22)
        {
          goto LABEL_28;
        }
      }

      if (*v23 != v21)
      {
        break;
      }

      if (v23 == v22)
      {
        goto LABEL_58;
      }

      if (v12 - 1 > v24)
      {
        ++v24;
      }

      if (v50 >= 0)
      {
        v38 = &__p;
      }

      else
      {
        v38 = __p;
      }

      v26 = v38[v24];
      *(a1 + 3) = --v23;
      if (v23 < v22)
      {
        goto LABEL_28;
      }
    }

    v29 = sub_1000D8E2C(a1);
    if ((v50 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_28:
  v29 = 1;
  if (v50 < 0)
  {
LABEL_59:
    v47 = v29;
    operator delete(__p);
    v29 = v47;
  }

LABEL_60:
  v10 = v29;
LABEL_61:
  std::locale::~locale(&v51);
  return v10;
}

void sub_1000D8DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::locale::~locale(&a15);
    _Unwind_Resume(a1);
  }

  std::locale::~locale(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D8E2C(uint64_t a1)
{
  if (*(a1 + 24) < *(a1 + 16))
  {
    return 1;
  }

  do
  {
    result = sub_1000D8E84(a1);
    if (!result)
    {
      break;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24) - 1;
    *(a1 + 24) = v4;
  }

  while (v4 >= v3);
  return result;
}

uint64_t sub_1000D8E84(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = *a1 | (v1 > 0x19999999);
  *a1 = v2;
  v3 = 10 * v1;
  *(a1 + 4) = v3;
  v4 = **(a1 + 24);
  if ((**(a1 + 24) - 58) < 0xF6u)
  {
    return 0;
  }

  v5 = v4 - 48;
  v6 = (v4 - 48) * v3;
  if (v5)
  {
    if ((v2 & 1) == 0 && ((v5 * v3) & 0xFFFFFFFF00000000) == 0)
    {
      v7 = *(a1 + 8);
      v8 = *v7;
      if (!__CFADD__(v6, *v7))
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *v7;
LABEL_9:
  *v7 = v8 + v6;
  return 1;
}

void sub_1000D8F14(double a1)
{
  v1 = 2 * (a1 >= 2147483650.0);
  if (a1 <= -2147483650.0)
  {
    v1 = 1;
  }

  if (v1 == 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v3 = sub_1000D8810(exception);
  }

  if (v1 == 1)
  {
    v4 = __cxa_allocate_exception(8uLL);
    v4->__vftable = 0;
    v5 = sub_1000D87D8(v4);
  }
}

void sub_1000D909C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1000D9104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1000D90F4);
}

void sub_1000D9220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1000D9288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1000D9278);
}

unint64_t sub_1000D92C0@<X0>(unint64_t lpsrc@<X0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, char *a5@<X8>)
{
  if (!(lpsrc | a2))
  {
    a5[23] = 18;
    strcpy(a5, "Unknown exception.");
    return lpsrc;
  }

  v7 = a2;
  v8 = lpsrc;
  if (lpsrc)
  {
    if (!a2)
    {
      v9 = a3;
      a3 = v9;
      v7 = v10;
    }

    if (v7)
    {
      v11 = a3;
    }

    else
    {
      v11 = 0;
    }

    if (v11 != 1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!a2)
    {
LABEL_35:
      sub_10003BFA8(&v33);
      v19 = 0;
      v8 = 0;
      goto LABEL_36;
    }

    v15 = a3;
    v17 = v15;
    v8 = v16;
    if (v7)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v18 != 1)
    {
      goto LABEL_23;
    }
  }

  v12 = (*(*v7 + 16))(v7);
  if (!v8)
  {
    goto LABEL_35;
  }

  v13 = *(v8 + 8);
  if (!v13)
  {
    operator new();
  }

  if ((**v13)(v13, 0) == v12)
  {
    lpsrc = strlen(v12);
    if (lpsrc > 0x7FFFFFFFFFFFFFF7)
    {
      sub_10000D39C();
    }

    v14 = lpsrc;
    if (lpsrc >= 0x17)
    {
      operator new();
    }

    a5[23] = lpsrc;
    if (lpsrc)
    {
      lpsrc = memmove(a5, v12, lpsrc);
    }

    a5[v14] = 0;
    return lpsrc;
  }

LABEL_23:
  sub_10003BFA8(&v33);
  v19 = v8 != 0;
  if (v8 && a4)
  {
    v20 = *(v8 + 24);
    if (v20 || *(v8 + 32) != -1 || *(v8 + 16))
    {
      if (v20)
      {
        v21 = strlen(*(v8 + 24));
        sub_10003C2E4(&v33, v20, v21);
        if (*(v8 + 32) != -1)
        {
          LOBYTE(__p) = 40;
          sub_10003C2E4(&v33, &__p, 1);
          v22 = std::ostream::operator<<();
          sub_10003C2E4(v22, "): ", 3);
        }
      }

      sub_10003C2E4(&v33, "Throw in function ", 18);
      v23 = *(v8 + 16);
      if (v23)
      {
        v24 = strlen(*(v8 + 16));
      }

      else
      {
        v23 = "(unknown)";
        v24 = 9;
      }

      sub_10003C2E4(&v33, v23, v24);
      LOBYTE(__p) = 10;
      sub_10003C2E4(&v33, &__p, 1);
    }

    else
    {
      sub_10003C2E4(&v33, "Throw location unknown (consider using BOOST_THROW_EXCEPTION)\n", 62);
    }

LABEL_40:
    operator new();
  }

LABEL_36:
  if (a4)
  {
    goto LABEL_40;
  }

  if (!v19)
  {
    goto LABEL_59;
  }

  p_p = &__p;
  std::stringbuf::str();
  if (v32 < 0)
  {
    p_p = __p;
  }

  v26 = *(v8 + 8);
  if (!v26)
  {
    operator new();
  }

  v27 = (**v26)(v26, p_p);
  v28 = v27;
  if (v32 < 0)
  {
    operator delete(__p);
    if (!v28)
    {
      goto LABEL_59;
    }
  }

  else if (!v27)
  {
    goto LABEL_59;
  }

  if (*v28)
  {
    v29 = strlen(v28);
    if (v29 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_10000D39C();
    }

    v30 = v29;
    if (v29 >= 0x17)
    {
      operator new();
    }

    a5[23] = v29;
    if (v29)
    {
      memmove(a5, v28, v29);
    }

    a5[v30] = 0;
    goto LABEL_60;
  }

LABEL_59:
  std::stringbuf::str();
LABEL_60:
  if (v36 < 0)
  {
    operator delete(v35[7].__locale_);
  }

  std::locale::~locale(v35);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1000D9B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_10003C1C4(&a16);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1000D9B90);
}

void sub_1000D9B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  operator delete(v16);
  sub_10003C1C4(&a16);
  _Unwind_Resume(a1);
}

void sub_1000D9B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void **sub_1000D9BA0(void **a1)
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
        v3 = sub_100340E34(v3 - 16);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1000D9BFC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1000D9C94(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = (a1[1] - *a1) >> 4;
  v4 = v3 + 1;
  if (!((v3 + 1) >> 60))
  {
    v5 = a1[2] - *a1;
    if (v5 >> 3 > v4)
    {
      v4 = v5 >> 3;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFF0)
    {
      v6 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v4;
    }

    if (v6)
    {
      if (!(v6 >> 60))
      {
        operator new();
      }

      sub_10000D444();
    }

    sub_100340B74(16 * v3, a2);
  }

  sub_10000FC84();
}

void sub_1000D9DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000D9DFC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D9DFC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    sub_100340E34(i - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000DA208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v17 + 32) = v18;
  std::mutex::unlock((v16 + 48));
  sub_1000D9BFC(va);
  _Unwind_Resume(a1);
}

void sub_1000DA248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1000D9BFC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DA25C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return a1;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 8);
  if (v3 == v2)
  {
    goto LABEL_12;
  }

  do
  {
    v5 = *(v3 - 8);
    if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = *(v3 - 40);
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      (*(*v6 + 8))(v6);
      goto LABEL_4;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = *(v3 - 40);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_4:
    v3 -= 48;
  }

  while (v3 != v2);
  v4 = *(a1 + 8);
LABEL_12:
  *(a1 + 16) = v2;
  operator delete(v4);
  return a1;
}

char **sub_1000DA348(char **a1)
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
    goto LABEL_12;
  }

  do
  {
    v5 = *(v3 - 1);
    if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = *(v3 - 5);
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      (*(*v6 + 8))(v6);
      goto LABEL_4;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = *(v3 - 5);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_4:
    v3 -= 48;
  }

  while (v3 != v2);
  v4 = *a1;
LABEL_12:
  a1[1] = v2;
  operator delete(v4);
  return a1;
}

uint64_t sub_1000DA434(uint64_t result)
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

void sub_1000DA4AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_1000DA5B0(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = ~(*a2 + (*a2 >> 3)) + ((*a2 + (*a2 >> 3)) << 21);
  v5 = 21 * ((265 * (v4 ^ (v4 >> 24))) ^ ((265 * (v4 ^ (v4 >> 24))) >> 14));
  if (!a1[2] || (v6 = (2147483649u * (v5 ^ (v5 >> 28))) & (a1[1] - 1), (v7 = *(a1[5] + 8 * v6)) == 0) || (v8 = *v7) == 0)
  {
LABEL_11:
    operator new();
  }

  if (v3 == v8[2])
  {
    return *v7;
  }

  v9 = v8[1];
  do
  {
    if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != v6)
    {
      goto LABEL_11;
    }

    do
    {
      v8 = *v8;
      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = v8[1];
    }

    while (v9 < 0);
  }

  while (v3 != v8[2]);
  return v8;
}

uint64_t sub_1000DA75C(uint64_t result, unint64_t a2)
{
  if (!*(result + 40))
  {
    v7 = floor(a2 / *(result + 24)) + 1.0;
    v8 = v7;
    if (v7 >= 1.84467441e19)
    {
      v8 = -1;
    }

    if (v8 >= 5)
    {
      v10 = (v8 - 1) | ((v8 - 1) >> 1) | (((v8 - 1) | ((v8 - 1) >> 1)) >> 2);
      v11 = v10 | (v10 >> 4) | ((v10 | (v10 >> 4)) >> 8);
      v12 = (v11 | (v11 >> 16) | ((v11 | (v11 >> 16)) >> 32)) + 1;
      if (*(result + 8) <= v12)
      {
        v9 = v12;
      }

      else
      {
        v9 = *(result + 8);
      }
    }

    else
    {
      if (*(result + 8) <= 4uLL)
      {
        v9 = 4;
      }

      else
      {
        v9 = *(result + 8);
      }
    }

    sub_1000DA97C(result, v9);
  }

  if (*(result + 32) < a2)
  {
    v3 = *(result + 16) + (*(result + 16) >> 1);
    if (v3 <= a2)
    {
      v3 = a2;
    }

    v4 = floor(v3 / *(result + 24)) + 1.0;
    v5 = v4;
    if (v4 >= 1.84467441e19)
    {
      v5 = -1;
    }

    if (v5 < 5)
    {
      v6 = 4;
      if (*(result + 8) == 4)
      {
        return result;
      }

LABEL_26:
      sub_1000DA97C(result, v6);
    }

    v13 = (v5 - 1) | ((v5 - 1) >> 1) | (((v5 - 1) | ((v5 - 1) >> 1)) >> 2);
    v14 = v13 | (v13 >> 4) | ((v13 | (v13 >> 4)) >> 8);
    v6 = (v14 | (v14 >> 16) | ((v14 | (v14 >> 16)) >> 32)) + 1;
    if (v6 != *(result + 8))
    {
      goto LABEL_26;
    }
  }

  return result;
}

void sub_1000DA97C(uint64_t a1, unint64_t a2)
{
  v2 = a2 + 1;
  if (*(a1 + 40))
  {
    if (!(v2 >> 61))
    {
      operator new();
    }
  }

  else if (!(v2 >> 61))
  {
    operator new();
  }

  sub_10000D444();
}

void sub_1000DAA5C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 8);
  if (v3 == v1)
  {
    goto LABEL_12;
  }

  do
  {
    v5 = *(v3 - 8);
    if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = *(v3 - 40);
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      (*(*v6 + 8))(v6);
      goto LABEL_4;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = *(v3 - 40);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_4:
    v3 -= 48;
  }

  while (v3 != v1);
  v4 = *(a1 + 8);
LABEL_12:
  *(a1 + 16) = v1;

  operator delete(v4);
}

uint64_t sub_1000DAB64(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_1000DAA5C(v2 + 16);
    operator delete(*(a1 + 8));
  }

  return a1;
}

double sub_1000DABA0(unint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x555555555555555)
  {
    sub_10000FC84();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_10000D444();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *(&v13 + 1) = 0;
  v7 = *(a2 + 8);
  *v6 = *a2;
  if (v7)
  {
    v7 = (*(*v7 + 24))(v7);
  }

  *(v6 + 8) = v7;
  *(v6 + 16) = *(a2 + 16);
  v8 = *(a2 + 40);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 40) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *&v13 = v6 + 48;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  sub_1000DAD28(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  *&result = v6 + 48;
  *(a1 + 1) = v13;
  if (v11)
  {
    operator delete(v11);
    *&result = v6 + 48;
  }

  return result;
}

void sub_1000DAD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000DB04C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DAD28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a4;
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      result = *(v7 + 8);
      *v4 = *v7;
      if (result)
      {
        result = (*(*result + 24))(result);
      }

      *(v4 + 8) = result;
      *(v4 + 16) = *(v7 + 16);
      v8 = *(v7 + 40);
      *(v4 + 32) = *(v7 + 32);
      *(v4 + 40) = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v7 += 48;
      v4 = v10 + 48;
      v10 += 48;
    }

    while (v7 != a3);
    if (v6 != a3)
    {
      while (1)
      {
        v9 = *(v6 + 40);
        if (v9)
        {
          if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            break;
          }
        }

        result = *(v6 + 8);
        if (result)
        {
          goto LABEL_14;
        }

LABEL_10:
        v6 += 48;
        if (v6 == a3)
        {
          return result;
        }
      }

      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      result = *(v6 + 8);
      if (!result)
      {
        goto LABEL_10;
      }

LABEL_14:
      result = (*(*result + 8))(result);
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_1000DAF68(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      while (1)
      {
        v6 = *(v4 - 8);
        if (v6)
        {
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            break;
          }
        }

        v7 = *(v4 - 40);
        if (v7)
        {
          goto LABEL_8;
        }

LABEL_4:
        v4 -= 48;
        if (v4 == v5)
        {
          return a1;
        }
      }

      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      v7 = *(v4 - 40);
      if (!v7)
      {
        goto LABEL_4;
      }

LABEL_8:
      (*(*v7 + 8))(v7);
      goto LABEL_4;
    }
  }

  return a1;
}

void **sub_1000DB04C(void **a1)
{
  sub_1000DB080(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1000DB080(void *result)
{
  v1 = result[1];
  v2 = result[2];
  if (v2 != v1)
  {
    v3 = result;
    while (1)
    {
      v3[2] = v2 - 48;
      v4 = *(v2 - 8);
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          break;
        }
      }

      result = *(v2 - 40);
      if (result)
      {
        goto LABEL_7;
      }

LABEL_3:
      v2 = v3[2];
      if (v2 == v1)
      {
        return result;
      }
    }

    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    result = *(v2 - 40);
    if (!result)
    {
      goto LABEL_3;
    }

LABEL_7:
    result = (*(*result + 8))(result);
    goto LABEL_3;
  }

  return result;
}

void sub_1000DB178(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10043A000;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000DB1CC(uint64_t a1)
{
  v1 = a1 + 24;
  result = *(a1 + 48);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_1000DB2A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10043A050;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000DB2DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN7sensors14CombinedLoggerC1EiRKNSt3__110shared_ptrI19_EventBusCollectionEEbE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN7sensors14CombinedLoggerC1EiRKNSt3__110shared_ptrI19_EventBusCollectionEEbE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN7sensors14CombinedLoggerC1EiRKNSt3__110shared_ptrI19_EventBusCollectionEEbE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN7sensors14CombinedLoggerC1EiRKNSt3__110shared_ptrI19_EventBusCollectionEEbE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1000DB374(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10043A0E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000DB408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  if (!v4)
  {
    sub_1000DB498();
  }

  v5 = *(*v4 + 48);

  return v5();
}

uint64_t sub_1000DB450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  if (!v4)
  {
    sub_1000DB498();
  }

  v5 = *(*v4 + 48);

  return v5();
}

void sub_1000DB498()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_1000DB89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v17 + 32) = v18;
  std::mutex::unlock((v16 + 48));
  sub_1000D9BFC(va);
  _Unwind_Resume(a1);
}

void sub_1000DB8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1000D9BFC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DB8F0(uint64_t result)
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

void sub_1000DB968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1000DBA8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10043A1F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000DBAE0(uint64_t a1)
{
  v1 = a1 + 24;
  result = *(a1 + 48);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_1000DBBB4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10043A240;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000DBBE0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  rep = std::chrono::system_clock::now().__d_.__rep_;
  *v8 = off_100449AF0;
  memset(&v8[8], 0, 41);
  sub_100126648(v8, *a2);
  sub_10012A88C(v8, 1000 * rep);
  sub_10031E148(v8, (a2 + 1));
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(v5 + 3600))
  {
    sub_1000DBD90(v5 + 3568, v8);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return sub_10031E058(v8);
}

void sub_1000DBCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10002BB1C(va);
  sub_10031E058(va1);
  _Unwind_Resume(a1);
}

void sub_1000DBD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10031E058(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DBD18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN7sensors14CombinedLoggerC1EiRKNSt3__110shared_ptrI19_EventBusCollectionEEbE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN7sensors14CombinedLoggerC1EiRKNSt3__110shared_ptrI19_EventBusCollectionEEbE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN7sensors14CombinedLoggerC1EiRKNSt3__110shared_ptrI19_EventBusCollectionEEbE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN7sensors14CombinedLoggerC1EiRKNSt3__110shared_ptrI19_EventBusCollectionEEbE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1000DBD90(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    sub_1000474A4(v6, "");
    sub_1000BDA70("Unexpected request to record legacy data for ", &v8);
    sub_100049000(a1 + 8, &v9);
    sub_1000E661C(v6, &v8, 2);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v7 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v6[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v8.__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_1000C98E8(a1);
  sub_10031E150(a2, (a1 + 80));
  *a1 = 1;
  return a1;
}

void sub_1000DBEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000DBF74(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream();
  v2 = (*(*a1 + 72))(a1);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v13, v2);
  v3 = wireless_diagnostics::google::protobuf::MessageLite::SerializeToCodedStream(a1, v13);
  if ((v3 & 1) == 0)
  {
    v4 = sub_1000CF088(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      (*(*a1 + 16))(__p, a1);
      v5 = v12 >= 0 ? __p : __p[0];
      *buf = 68289795;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2081;
      v19 = v5;
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "serialized";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Failed to serialize-append-delimited properly, typename:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = sub_1000CF088(v6);
    if (os_signpost_enabled(v7))
    {
      (*(*a1 + 16))(__p, a1);
      v8 = v12 >= 0 ? __p : __p[0];
      *buf = 68289795;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2081;
      v19 = v8;
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "serialized";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to serialize-append-delimited properly", "{msg%{public}.0s:Failed to serialize-append-delimited properly, typename:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v10 = sub_1000CF088(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      (*(*a1 + 16))(__p, a1);
      sub_100383C24(__p, buf, v10);
    }

    abort_report_np("%s:%d: assertion failure in %s", "../../../common/util/protobuf_util.h", 117, "appendDelimited");
    __break(1u);
  }

  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v13);
}

void sub_1000DC278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  _Unwind_Resume(a1);
}

void sub_1000DC29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  _Unwind_Resume(a1);
}

std::string *sub_1000DC2C4(std::string **a1, std::string *this, std::string *__str, __int128 *a4, uint64_t a5)
{
  v5 = this;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __str;
  v10 = a1[1];
  v9 = a1[2];
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10000FC84();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
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

      sub_10000D444();
    }

    v28 = 8 * ((this - v11) >> 3);
    v58 = v28;
    v29 = 24 * a5;
    v30 = v28 + 24 * a5;
    do
    {
      if (SHIBYTE(v7->__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100003228(v28, v7->__r_.__value_.__l.__data_, v7->__r_.__value_.__l.__size_);
      }

      else
      {
        v31 = *&v7->__r_.__value_.__l.__data_;
        *(v28 + 16) = *(&v7->__r_.__value_.__l + 2);
        *v28 = v31;
      }

      v28 += 24;
      ++v7;
      v29 -= 24;
    }

    while (v29);
    v32 = a1[1];
    v33 = v5;
    if (v32 != v5)
    {
      v34 = v5;
      v35 = v30;
      do
      {
        v36 = *&v34->__r_.__value_.__l.__data_;
        *(v35 + 16) = *(&v34->__r_.__value_.__l + 2);
        *v35 = v36;
        v35 += 24;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        ++v34;
      }

      while (v34 != v32);
      v37 = v5;
      do
      {
        if (SHIBYTE(v37->__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37->__r_.__value_.__l.__data_);
        }

        ++v37;
      }

      while (v37 != v32);
      v33 = a1[1];
    }

    v38 = (v30 + v33 - v5);
    a1[1] = v5;
    v39 = *a1;
    v40 = (v58 + *a1 - v5);
    if (*a1 != v5)
    {
      v41 = *a1;
      v42 = (v58 + *a1 - v5);
      do
      {
        v43 = *&v41->__r_.__value_.__l.__data_;
        *(v42 + 2) = *(&v41->__r_.__value_.__l + 2);
        *v42 = v43;
        v42 += 24;
        v41->__r_.__value_.__l.__size_ = 0;
        v41->__r_.__value_.__r.__words[2] = 0;
        v41->__r_.__value_.__r.__words[0] = 0;
        ++v41;
      }

      while (v41 != v5);
      do
      {
        if (v39[23] < 0)
        {
          operator delete(*v39);
        }

        v39 += 24;
      }

      while (v39 != v5);
      v39 = *a1;
    }

    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v39)
    {
      operator delete(v39);
    }

    return v58;
  }

  v15 = v10 - this;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - this) >> 3)) >= a5)
  {
    v23 = &this[a5];
    v24 = &v10[-a5];
    if (v24 >= v10)
    {
      a1[1] = v10;
      if (v10 == v23)
      {
LABEL_52:
        v49 = &v7[a5];
        v50 = v5;
        do
        {
          std::string::operator=(v50++, v7++);
        }

        while (v7 != v49);
        return v5;
      }
    }

    else
    {
      v25 = &v10[-a5];
      v26 = a1[1];
      do
      {
        v27 = *&v25->__r_.__value_.__l.__data_;
        v26->__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v26->__r_.__value_.__l.__data_ = v27;
        ++v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        ++v25;
      }

      while (v25 < v10);
      a1[1] = v26;
      if (v10 == v23)
      {
        goto LABEL_52;
      }
    }

    v44 = 0;
    v45 = (&this[a5] - v10);
    do
    {
      v48 = &v44[v10 - 24];
      if (v44[v10 - 1] < 0)
      {
        operator delete(*v48);
      }

      v46 = v24 + (v44 - 24);
      v47 = *v46;
      *&v44[v10 - 8] = *(v46 + 2);
      *v48 = v47;
      v44[v24 - 1] = 0;
      *v46 = 0;
      v44 -= 24;
    }

    while (v45 != v44);
    goto LABEL_52;
  }

  v16 = (__str + v15);
  v17 = sub_1000DC73C(a1, (__str + v15), a4, a1[1]);
  v18 = v17;
  a1[1] = v17;
  if (v15 >= 1)
  {
    v19 = &v17[-a5];
    if (v19 >= v10)
    {
      v21 = v17;
    }

    else
    {
      v20 = &v17[-a5];
      v21 = v17;
      do
      {
        v22 = *&v20->__r_.__value_.__l.__data_;
        v21->__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
        *&v21->__r_.__value_.__l.__data_ = v22;
        ++v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        ++v20;
      }

      while (v20 < v10);
    }

    a1[1] = v21;
    if (v17 != &v5[a5])
    {
      v51 = 0;
      v52 = &v5[a5] - v17;
      do
      {
        p_data = &v18[v51 / 0x18 - 1].__r_.__value_.__l.__data_;
        if (SHIBYTE(v18[v51 / 0x18 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(*p_data);
        }

        v53 = &v19[v51 / 0x18 - 1];
        v54 = *&v53->__r_.__value_.__l.__data_;
        v18[v51 / 0x18 - 1].__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
        *p_data = v54;
        *(&v19[v51 / 0x18 - 1].__r_.__value_.__s + 23) = 0;
        v53->__r_.__value_.__s.__data_[0] = 0;
        v51 -= 24;
      }

      while (v52 != v51);
    }

    v56 = v5;
    do
    {
      std::string::operator=(v56++, v7++);
    }

    while (v7 != v16);
  }

  return v5;
}

void sub_1000DC724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100051ED0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DC73C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v8 = a4;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      while ((*(v5 + 23) & 0x80000000) == 0)
      {
        v6 = *v5;
        *(a4 + 16) = *(v5 + 2);
        *a4 = v6;
        a4 += 24;
        v5 = (v5 + 24);
        v8 = a4;
        if (v5 == a3)
        {
          return a4;
        }
      }

      sub_100003228(a4, *v5, *(v5 + 1));
      v5 = (v5 + 24);
      a4 = v8 + 24;
      v8 += 24;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_1000DC8C8(_Unwind_Exception *a1)
{
  sub_1000D7AF8(v1 + 64);
  *(v1 + 24) = off_100439E78;
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
    std::__shared_weak_count::~__shared_weak_count(v1);
    operator delete(v3);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DC934(uint64_t result, uint64_t *a2)
{
  *result = off_100439E78;
  v3 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(v3 + 31) < 0)
    {
      v6 = result;
      sub_100003228((result + 8), *(v3 + 8), *(v3 + 16));
      result = v6;
    }

    else
    {
      v5 = *(v3 + 8);
      *(result + 24) = *(v3 + 24);
      *(result + 8) = v5;
    }

    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      result = v7;
    }
  }

  else
  {
    *(result + 31) = 0;
    *(result + 8) = 0;
  }

  v8 = *a2;
  if (*a2)
  {
    LOBYTE(v8) = *(v8 + 32);
  }

  *(result + 32) = v8 & 1;
  return result;
}

void sub_1000DCA54()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000DCAC4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1000DCB34()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1000DCB60(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0u;
  v2 = (a1 + 32);
  *(a1 + 88) = 0u;
  v3 = (a1 + 88);
  *(a1 + 136) = 0u;
  v4 = a1 + 136;
  *(a1 + 176) = 0u;
  v5 = (a1 + 176);
  *(a1 + 224) = 0u;
  v6 = (a1 + 224);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 328) = 0u;
  std::string::assign(a1, "3");
  *(a1 + 24) = 13;
  std::string::assign(v2, "28");
  std::string::assign((a1 + 56), "28");
  *(a1 + 80) = 41521;
  std::string::assign(v3, "1234567");
  std::string::assign((a1 + 112), "7654321");
  v8 = 7;
  strcpy(__p, "1234567");
  sub_1000DCFA4(v4, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = 7;
  strcpy(__p, "7654321");
  sub_1000DCFA4(v4, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 160) = 0xC00000002;
  *(a1 + 168) = 2013;
  std::string::assign(v5, "_WFS-USERNAME");
  std::string::assign((a1 + 200), "c3f5372b0c9a719f9141623ff9e5547a");
  std::string::assign(v6, "X-PIPELINE-API-AUTHORIZATION");
  std::string::assign((a1 + 248), "https");
  std::string::assign((a1 + 272), "cl4.apple.com");
  std::string::assign((a1 + 296), "2/m2/");
  *(a1 + 320) = 0;
  operator new();
}

void sub_1000DCE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1000D1490((v21 + 352));
    sub_1000D1490(v27);
    if (*(v21 + 319) < 0)
    {
LABEL_5:
      operator delete(*(v21 + 296));
      if ((*(v21 + 295) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else
  {
    sub_1000D1490((v21 + 352));
    sub_1000D1490(v27);
    if (*(v21 + 319) < 0)
    {
      goto LABEL_5;
    }
  }

  if ((*(v21 + 295) & 0x80000000) == 0)
  {
LABEL_6:
    if (*(v21 + 271) < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v21 + 272));
  if (*(v21 + 271) < 0)
  {
LABEL_7:
    operator delete(*(v21 + 248));
    if ((*(v21 + 247) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((*(v21 + 247) & 0x80000000) == 0)
  {
LABEL_8:
    if (*(v21 + 223) < 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*v26);
  if (*(v21 + 223) < 0)
  {
LABEL_9:
    operator delete(*(v21 + 200));
    if ((*(v21 + 199) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((*(v21 + 199) & 0x80000000) == 0)
  {
LABEL_10:
    sub_1000D1490(v24);
    if (*(v21 + 135) < 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(*v25);
  sub_1000D1490(v24);
  if (*(v21 + 135) < 0)
  {
LABEL_11:
    operator delete(*(v21 + 112));
    if ((*(v21 + 111) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((*(v21 + 111) & 0x80000000) == 0)
  {
LABEL_12:
    if (*(v21 + 79) < 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(*v23);
  if (*(v21 + 79) < 0)
  {
LABEL_13:
    operator delete(*(v21 + 56));
    if ((*(v21 + 55) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((*(v21 + 55) & 0x80000000) == 0)
  {
LABEL_14:
    if (*(v21 + 23) < 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(*v22);
  if (*(v21 + 23) < 0)
  {
LABEL_15:
    operator delete(*v21);
    _Unwind_Resume(a1);
  }

LABEL_26:
  _Unwind_Resume(a1);
}

void sub_1000DCFA4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v8 = v7 + 1;
  if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10000FC84();
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (2 * v9 > v8)
  {
    v8 = 2 * v9;
  }

  if (v9 >= 0x555555555555555)
  {
    v10 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v11 = 24 * v7;
  *v11 = *a2;
  *(v11 + 16) = *(a2 + 2);
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v6 = 24 * v7 + 24;
  v12 = *a1;
  v13 = *(a1 + 8) - *a1;
  v14 = v11 - v13;
  memcpy((v11 - v13), *a1, v13);
  *a1 = v14;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  *(a1 + 8) = v6;
}

uint64_t sub_1000DD100(uint64_t a1)
{
  v2 = *(a1 + 352);
  if (v2)
  {
    v3 = *(a1 + 360);
    v4 = *(a1 + 352);
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
      v4 = *(a1 + 352);
    }

    *(a1 + 360) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 328);
  if (v6)
  {
    v7 = *(a1 + 336);
    v8 = *(a1 + 328);
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
      v8 = *(a1 + 328);
    }

    *(a1 + 336) = v6;
    operator delete(v8);
  }

  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
    if ((*(a1 + 295) & 0x80000000) == 0)
    {
LABEL_19:
      if ((*(a1 + 271) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_32;
    }
  }

  else if ((*(a1 + 295) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(*(a1 + 272));
  if ((*(a1 + 271) & 0x80000000) == 0)
  {
LABEL_20:
    if ((*(a1 + 247) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(*(a1 + 248));
  if ((*(a1 + 247) & 0x80000000) == 0)
  {
LABEL_21:
    if ((*(a1 + 223) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(*(a1 + 224));
  if ((*(a1 + 223) & 0x80000000) == 0)
  {
LABEL_22:
    if ((*(a1 + 199) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(*(a1 + 200));
  if ((*(a1 + 199) & 0x80000000) == 0)
  {
LABEL_23:
    v10 = *(a1 + 136);
    if (!v10)
    {
      goto LABEL_24;
    }

LABEL_36:
    v12 = *(a1 + 144);
    if (v12 == v10)
    {
      *(a1 + 144) = v10;
      operator delete(v10);
      if (*(a1 + 135) < 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      do
      {
        v13 = *(v12 - 1);
        v12 -= 3;
        if (v13 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v10);
      v14 = *(a1 + 136);
      *(a1 + 144) = v10;
      operator delete(v14);
      if (*(a1 + 135) < 0)
      {
        goto LABEL_43;
      }
    }

LABEL_25:
    if ((*(a1 + 111) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_44;
  }

LABEL_35:
  operator delete(*(a1 + 176));
  v10 = *(a1 + 136);
  if (v10)
  {
    goto LABEL_36;
  }

LABEL_24:
  if ((*(a1 + 135) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_43:
  operator delete(*(a1 + 112));
  if ((*(a1 + 111) & 0x80000000) == 0)
  {
LABEL_26:
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_45;
  }

LABEL_44:
  operator delete(*(a1 + 88));
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
LABEL_27:
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_46:
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_47;
  }

LABEL_45:
  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_46;
  }

LABEL_28:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_47:
  operator delete(*a1);
  return a1;
}

void sub_1000DD3F8(uint64_t a1@<X8>)
{
  *a1 = "DATA_PROTECTION_CLASS";
  *(a1 + 8) = 0;
  *(a1 + 39) = 1;
  *(a1 + 16) = 65;
}

void sub_1000DD4BC(uint64_t a1@<X8>)
{
  *a1 = "LOG_DIRECTORY";
  *(a1 + 8) = 0;
  operator new();
}

void sub_1000DD6A0(uint64_t a1@<X8>)
{
  *a1 = "TILE_RESOURCE_KNOWN_DOWNLOAD_TIMEOUT";
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
}

void sub_1000DD6BC(uint64_t a1@<X8>)
{
  *a1 = "TILE_RESOURCE_UNKNOWN_DOWNLOAD_TIMEOUT";
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x403E000000000000;
}

void sub_1000DD768()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000DD7D8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

NSString *sub_1000DD848(uint64_t *a1)
{
  v1 = a1;
  if (*(a1 + 23) < 0)
  {
    v1 = *a1;
  }

  return [NSString stringWithUTF8String:v1];
}

void sub_1000DD868(void *a1@<X8>)
{
  v10 = SCNetworkInterfaceCopyAll();
  v2 = [(__CFArray *)v10 count];
  if (v2)
  {
    for (i = 0; v2 != i; ++i)
    {
      v4 = [(__CFArray *)v10 objectAtIndexedSubscript:i];

      v5 = SCNetworkInterfaceGetInterfaceType(v4);
      if ([v5 isEqualToString:kSCNetworkInterfaceTypeIEEE80211])
      {
        v6 = SCNetworkInterfaceGetHardwareAddressString(v4);
        if (v6)
        {
          v7 = v6;
          v8 = [v6 stringByReplacingOccurrencesOfString:@":" withString:&stru_10044D120];
          v9 = [v8 uppercaseString];

          if (v9)
          {
            objc_msgSend_ps_STLString(v9);
          }

          else
          {
            *a1 = 0;
            a1[1] = 0;
            a1[2] = 0;
          }

          goto LABEL_12;
        }

        NSLog(@"failed to get device mac address for interface %u", i);
      }
    }
  }

  *(a1 + 23) = 12;
  strcpy(a1, "020000000000");
LABEL_12:
}

void sub_1000DDA74()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000DDAE4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1000DDB54()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1000DDC80(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10043A2D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

double sub_1000DDD14(uint64_t a1)
{
  v1 = a1 + 8;
  v2 = *(a1 + 2552);
  v3 = *(a1 + 2504);
  v4 = (v3 + 1) % 0x270uLL;
  v5 = *(a1 + 8 + 4 * v4);
  v6 = v5 & 0x7FFFFFFE | *(a1 + 8 + 4 * v3) & 0x80000000;
  if (v5)
  {
    v7 = -1727483681;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 ^ *(a1 + 8 + 4 * ((v3 + 397) % 0x270uLL)) ^ (v6 >> 1);
  *(v1 + 4 * v3) = v8;
  v9 = v8 ^ (v8 >> 11);
  v10 = ((((v9 << 7) & 0x9D2C5680 ^ v9) << 15) & 0xEFC60000 ^ (v9 << 7) & 0x9D2C5680 ^ v9 ^ (((((v9 << 7) & 0x9D2C5680 ^ v9) << 15) & 0xEFC60000 ^ (v9 << 7) & 0x9D2C5680 ^ v9) >> 18));
  v11 = *(a1 + 2544);
  if (v4 == 623)
  {
    v12 = 0;
  }

  else
  {
    v12 = v4 + 1;
  }

  v13 = *(v1 + 4 * v12);
  v14 = 397;
  if (v4 >= 0xE3)
  {
    v14 = -227;
  }

  v15 = *(v1 + 4 * (v14 + v4));
  if (v13)
  {
    v16 = -1727483681;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 ^ v15 ^ ((v13 & 0x7FFFFFFE | *(v1 + 4 * v4) & 0x80000000) >> 1);
  *(v1 + 4 * v4) = v17;
  v18 = ((v17 ^ (v17 >> 11)) << 7) & 0x9D2C5680 ^ v17 ^ (v17 >> 11);
  *(a1 + 2504) = v12;
  return v11 + (v2 - v11) * ((v10 + ((v18 << 15) & 0xEFC60000 ^ v18 ^ (((v18 << 15) & 0xEFC60000 ^ v18) >> 18)) * 4294967300.0) * 5.42101086e-20);
}

double sub_1000DDE4C(uint64_t a1, double a2, double a3)
{
  v20 = a3;
  v21 = a2;
  if (a2 >= a3)
  {
    sub_100014A08(v23, "");
    sub_1000DE3DC(&v25, "min=");
    sub_1000DE42C(&v21, &v26);
    sub_1000DE904(&v27, ", max=");
    sub_1000DE42C(&v20, &v28);
    sub_1000E661C(v23, &v25, 4);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_16:
        if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }
    }

    else if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_17:
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

LABEL_22:
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_18:
      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_24:
      operator delete(v23[0]);
LABEL_19:
      sub_10003F5D0(&__p);
    }

LABEL_23:
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  v3 = a1 + 8;
  v4 = *(a1 + 2504);
  v5 = (v4 + 1) % 0x270uLL;
  v6 = *(a1 + 8 + 4 * v5);
  v7 = v6 & 0x7FFFFFFE | *(a1 + 8 + 4 * v4) & 0x80000000;
  if (v6)
  {
    v8 = -1727483681;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 ^ *(a1 + 8 + 4 * ((v4 + 397) % 0x270uLL)) ^ (v7 >> 1);
  *(v3 + 4 * v4) = v9;
  if (v5 == 623)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5 + 1;
  }

  v11 = *(v3 + 4 * v10);
  v12 = 397;
  if (v5 >= 0xE3)
  {
    v12 = -227;
  }

  v13 = *(v3 + 4 * (v12 + v5));
  if (v11)
  {
    v14 = -1727483681;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14 ^ v13 ^ ((v11 & 0x7FFFFFFE | *(v3 + 4 * v5) & 0x80000000) >> 1);
  *(v3 + 4 * v5) = v15;
  *(a1 + 2504) = v10;
  v16 = ((v9 ^ (v9 >> 11)) << 7) & 0x9D2C5680 ^ v9 ^ (v9 >> 11);
  v17 = ((v16 << 15) & 0xEFC60000 ^ v16 ^ (((v16 << 15) & 0xEFC60000 ^ v16) >> 18));
  v18 = ((v15 ^ (v15 >> 11)) << 7) & 0x9D2C5680 ^ v15 ^ (v15 >> 11);
  return a2 + (a3 - a2) * ((v17 + ((v18 << 15) & 0xEFC60000 ^ v18 ^ (((v18 << 15) & 0xEFC60000 ^ v18) >> 18)) * 4294967300.0) * 5.42101086e-20);
}

void sub_1000DE0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000DE128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  while (1)
  {
    v19 = *(v18 - 1);
    v18 -= 3;
    if (v19 < 0)
    {
      operator delete(*v18);
    }

    if (v18 == &a18)
    {
      JUMPOUT(0x1000DE104);
    }
  }
}

float sub_1000DE154(uint64_t a1)
{
  v1 = *(a1 + 2560);
  v2 = *(a1 + 2564) - v1;
  v3 = *(a1 + 2504);
  v4 = (v3 + 1) % 0x270uLL;
  v5 = *(a1 + 8 + 4 * v4);
  if (v5)
  {
    v6 = -1727483681;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 ^ *(a1 + 8 + 4 * ((v3 + 397) % 0x270uLL)) ^ ((v5 & 0x7FFFFFFE | *(a1 + 8 + 4 * v3) & 0x80000000) >> 1);
  *(a1 + 8 + 4 * v3) = v7;
  *(a1 + 2504) = v4;
  v8 = ((v7 ^ (v7 >> 11)) << 7) & 0x9D2C5680 ^ v7 ^ (v7 >> 11);
  return v1 + (v2 * vcvts_n_f32_u32((v8 << 15) & 0xEFC60000 ^ v8 ^ (((v8 << 15) & 0xEFC60000 ^ v8) >> 18), 0x20uLL));
}

float sub_1000DE20C(uint64_t a1, float a2, float a3)
{
  v3 = a3 - a2;
  v4 = *(a1 + 2504);
  v5 = (v4 + 1) % 0x270uLL;
  v6 = *(a1 + 8 + 4 * v5);
  if (v6)
  {
    v7 = -1727483681;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 ^ *(a1 + 8 + 4 * ((v4 + 397) % 0x270uLL)) ^ ((v6 & 0x7FFFFFFE | *(a1 + 8 + 4 * v4) & 0x80000000) >> 1);
  *(a1 + 8 + 4 * v4) = v8;
  *(a1 + 2504) = v5;
  v9 = ((v8 ^ (v8 >> 11)) << 7) & 0x9D2C5680 ^ v8 ^ (v8 >> 11);
  return a2 + (v3 * vcvts_n_f32_u32((v9 << 15) & 0xEFC60000 ^ v9 ^ (((v9 << 15) & 0xEFC60000 ^ v9) >> 18), 0x20uLL));
}

double sub_1000DE300(uint64_t a1, double a2, double a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_1000DE954(a1 + 2512, a1 + 8, v4);
}

uint64_t sub_1000DE334(uint64_t a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = a2 - 1;
  return sub_1000DEBF4(v3, a1 + 8, v3);
}

uint64_t sub_1000DE36C(uint64_t a1, int a2)
{
  v3[0] = 0;
  v3[1] = a2 - 1;
  return sub_1000DF0C8(v3, a1 + 8, v3);
}

uint64_t sub_1000DE3A4(uint64_t a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = a2 - 1;
  return sub_1000DEBF4(v3, a1 + 8, v3);
}

std::string *sub_1000DE3DC@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1000DE410(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000DE42C@<X0>(double *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  result = sub_1000DE4DC(a1, a2);
  if ((result & 1) == 0)
  {
    std::bad_cast::bad_cast(&v3);
    v3.__vftable = &off_100434090;
    sub_100049F88(&v3);
  }

  return result;
}

void sub_1000DE4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::bad_cast a10)
{
  std::bad_cast::~bad_cast(&a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000DE4DC(double *a1, std::string *a2)
{
  v29 = 0u;
  v28 = 0u;
  *__p = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  std::locale::locale(&v24);
  v26 = 0uLL;
  __p[0] = 0;
  __p[1] = 0;
  v28 = 0uLL;
  DWORD2(v29) = 24;
  *(&v24 + 1) = &__p[1];
  *&v25 = &__p[1];
  *(&v25 + 1) = &__p[1];
  *&v29 = &__p[1];
  std::string::resize(&__p[1], 0x16uLL, 0);
  v4 = HIBYTE(v28);
  if (v28 < 0)
  {
    v4 = v28;
  }

  *&v26 = &__p[1];
  *(&v26 + 1) = &__p[1];
  __p[0] = &__p[1] + v4;
  v25 = 0uLL;
  *(&v24 + 1) = 0;
  __sb = off_100433ED0;
  v31.__loc_ = 0;
  std::ios_base::init(&v31, &__sb);
  v32 = 0;
  v33 = -1;
  v5 = &v34;
  v37 = &v34;
  v38 = v36;
  if (fabs(*a1) == INFINITY)
  {
    v6 = &v34;
    if ((*a1 & 0x8000000000000000) != 0)
    {
      v34 = 45;
      v6 = v35;
    }

    v6[2] = 102;
    *v6 = 28265;
    v7 = v6 + 3;
    v38 = v6 + 3;
LABEL_8:
    v8 = v7 - v5;
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v12 = a2->__r_.__value_.__r.__words[2];
      v11 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v11 >= v8)
      {
        v13 = HIBYTE(v12);
LABEL_17:
        if ((v13 & 0x80u) == 0)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_20:
        if (v5 == v7)
        {
          v15 = v10;
        }

        else
        {
          if (v8 < 0x20 || (v10 - v5) < 0x20)
          {
            v15 = v10;
            v16 = v5;
          }

          else
          {
            v15 = (v10 + (v8 & 0xFFFFFFFFFFFFFFE0));
            v16 = &v5[v8 & 0xFFFFFFFFFFFFFFE0];
            v17 = (v5 + 16);
            v18 = &v10->__r_.__value_.__r.__words[2];
            v19 = v8 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v20 = *v17;
              *(v18 - 1) = *(v17 - 1);
              *v18 = v20;
              v17 += 2;
              v18 += 4;
              v19 -= 32;
            }

            while (v19);
            if (v8 == (v8 & 0xFFFFFFFFFFFFFFE0))
            {
              goto LABEL_30;
            }
          }

          do
          {
            v21 = *v16++;
            v15->__r_.__value_.__s.__data_[0] = v21;
            v15 = (v15 + 1);
          }

          while (v16 != v7);
        }

LABEL_30:
        v15->__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
        {
          a2->__r_.__value_.__l.__size_ = v8;
        }

        else
        {
          *(&a2->__r_.__value_.__s + 23) = v8 & 0x7F;
        }

        v14 = 1;
        std::ostream::~ostream();
        if (SHIBYTE(v28) < 0)
        {
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v10 = a2;
      if (v8 <= 0x16)
      {
        goto LABEL_20;
      }

      v11 = 22;
    }

    std::string::__grow_by(a2, v11, v8 - v11, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v13) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_17;
  }

  v7 = &v35[sprintf(&v34, "%.*g", 17, *a1) - 1];
  v38 = v7;
  v5 = v37;
  if (v7 > v37)
  {
    goto LABEL_8;
  }

  v14 = 0;
  std::ostream::~ostream();
  if (SHIBYTE(v28) < 0)
  {
LABEL_34:
    operator delete(__p[1]);
  }

LABEL_35:
  std::locale::~locale(&v24);
  return v14;
}

void sub_1000DE8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100049F0C(va);
  _Unwind_Resume(a1);
}

void sub_1000DE8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    std::ios::~ios();
    sub_10000D388(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000DE904@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1000DE938(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_1000DE954(uint64_t a1, uint64_t a2, double *a3)
{
  if (*(a1 + 24))
  {
    *(a1 + 24) = 0;
    v5 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 2496);
    do
    {
      v7 = (v6 + 1) % 0x270;
      v8 = *(a2 + 4 * v7);
      v9 = v8 & 0x7FFFFFFE | *(a2 + 4 * v6) & 0x80000000;
      if (v8)
      {
        v10 = -1727483681;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10 ^ *(a2 + 4 * ((v6 + 397) % 0x270)) ^ (v9 >> 1);
      *(a2 + 4 * v6) = v11;
      if (v7 == 623)
      {
        v13 = 0;
      }

      else
      {
        v13 = v7 + 1;
      }

      v14 = *(a2 + 4 * v13);
      v12 = ((v11 ^ (v11 >> 11)) << 7) & 0x9D2C5680 ^ v11 ^ (v11 >> 11);
      v15 = (v12 << 15) & 0xEFC60000 ^ v12;
      if (v7 >= 0xE3)
      {
        v16 = -227;
      }

      else
      {
        v16 = 397;
      }

      v17 = *(a2 + 4 * (v16 + v7));
      v18 = (v15 ^ (v15 >> 18));
      if (v14)
      {
        v19 = -1727483681;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19 ^ v17 ^ ((v14 & 0x7FFFFFFE | *(a2 + 4 * v7) & 0x80000000) >> 1);
      *(a2 + 4 * v7) = v20;
      v21 = ((v20 ^ (v20 >> 11)) << 7) & 0x9D2C5680 ^ v20 ^ (v20 >> 11);
      v22 = (v13 + 1) % 0x270;
      v23 = *(a2 + 4 * v22);
      v24 = v23 & 0x7FFFFFFE | *(a2 + 4 * v13) & 0x80000000;
      v25 = (v21 << 15) & 0xEFC60000 ^ v21 ^ (((v21 << 15) & 0xEFC60000 ^ v21) >> 18);
      if (v23)
      {
        v26 = -1727483681;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26 ^ *(a2 + 4 * ((v13 + 397) % 0x270)) ^ (v24 >> 1);
      v28 = v25;
      *(a2 + 4 * v13) = v27;
      v29 = ((v27 ^ (v27 >> 11)) << 7) & 0x9D2C5680 ^ v27 ^ (v27 >> 11);
      if (v22 == 623)
      {
        v6 = 0;
      }

      else
      {
        v6 = v22 + 1;
      }

      v30 = *(a2 + 4 * v6);
      v31 = v30 & 0x7FFFFFFE | *(a2 + 4 * v22) & 0x80000000;
      v32 = (v29 << 15) & 0xEFC60000 ^ v29 ^ (((v29 << 15) & 0xEFC60000 ^ v29) >> 18);
      if (v22 >= 0xE3)
      {
        v33 = -227;
      }

      else
      {
        v33 = 397;
      }

      v34 = *(a2 + 4 * (v33 + v22));
      v35 = v18 + v28 * 4294967300.0;
      if (v30)
      {
        v36 = -1727483681;
      }

      else
      {
        v36 = 0;
      }

      v37 = v36 ^ v34 ^ (v31 >> 1);
      v38 = v32;
      v39 = ((v37 ^ (v37 >> 11)) << 7) & 0x9D2C5680 ^ v37 ^ (v37 >> 11);
      v40 = v35 * 5.42101086e-20 * 2.0 + -1.0;
      v41 = (v38 + ((v39 << 15) & 0xEFC60000 ^ v39 ^ (((v39 << 15) & 0xEFC60000 ^ v39) >> 18)) * 4294967300.0) * 5.42101086e-20 * 2.0 + -1.0;
      v42 = v41 * v41 + v40 * v40;
      *(a2 + 4 * v22) = v37;
    }

    while (v42 > 1.0 || v42 == 0.0);
    *(a2 + 2496) = v6;
    v43 = sqrt(log(v41 * v41 + v40 * v40) * -2.0 / v42);
    *(a1 + 16) = v41 * v43;
    *(a1 + 24) = 1;
    v5 = v40 * v43;
  }

  return *a3 + v5 * a3[1];
}

uint64_t sub_1000DEBF4(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v24 = v3;
    v25 = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      v19 = a2;
      v20 = xmmword_1003CEDA0;
      v21 = vdupq_n_s64(2uLL);
      v22 = xmmword_1003CEDB0;
      v23 = -1;
      return sub_1000DED98(&v19);
    }

    v8 = __clz(v7);
    v9 = 63;
    if (((v7 << v8) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = 64;
    }

    v10 = v9 - v8;
    v19 = a2;
    *&v20 = v10;
    if ((v10 & 0x1F) != 0)
    {
      v11 = (v10 >> 5) + 1;
    }

    else
    {
      v11 = v10 >> 5;
    }

    v12 = v10 / v11;
    *(&v20 + 1) = v12;
    v21.i64[0] = v11;
    v13 = (-1 << v12) & &_mh_execute_header;
    if (v12 >= 0x40)
    {
      v13 = 0;
    }

    *&v22 = v13;
    if ((v13 ^ &_mh_execute_header) > v13 / v11)
    {
      v12 = v10 / ++v11;
      *(&v20 + 1) = v12;
      v21.i64[0] = v11;
      if (v12 > 0x3F)
      {
        v14 = a3;
        v21.i64[1] = v11 - (v10 % v11);
        *&v22 = 0;
        LODWORD(v12) = 64;
        goto LABEL_21;
      }

      *&v22 = (-1 << (v10 / v11)) & &_mh_execute_header;
    }

    v21.i64[1] = v11 - v10 % v11;
    v14 = a3;
    if (v12 < 0x3F)
    {
      *(&v22 + 1) = 0x80000000uLL >> v12 << (v12 + 1);
      v15 = 0xFFFFFFFF >> -v12;
      if (!v12)
      {
        v15 = 0;
      }

      LODWORD(v23) = v15;
      if (v12 >= 0x1F)
      {
        v16 = -1;
      }

      else
      {
        v16 = 0xFFFFFFFF >> ~v12;
      }

      goto LABEL_22;
    }

LABEL_21:
    *(&v22 + 1) = 0;
    v17 = -v12;
    v16 = -1;
    LODWORD(v23) = 0xFFFFFFFF >> v17;
LABEL_22:
    HIDWORD(v23) = v16;
    do
    {
      v18 = sub_1000DED98(&v19);
    }

    while (v18 >= v7);
    return *v14 + v18;
  }

  return result;
}

uint64_t sub_1000DED98(uint64_t *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = *a1;
    v3 = a1[5];
    v4 = a1[2];
    v5 = *(*a1 + 2496);
    if (v4 >= 0x40)
    {
      v17 = 0;
      do
      {
        v18 = v5;
        v5 = (v5 + 1) % 0x270;
        v19 = *(v2 + 4 * v5);
        v20 = v19 & 0x7FFFFFFE | *(v2 + 4 * v18) & 0x80000000;
        if (v19)
        {
          v21 = -1727483681;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21 ^ *(v2 + 4 * ((v18 + 397) % 0x270)) ^ (v20 >> 1);
        *(v2 + 4 * v18) = v22;
        v23 = ((v22 ^ (v22 >> 11)) << 7) & 0x9D2C5680 ^ v22 ^ (v22 >> 11);
        v24 = (v23 << 15) & 0xEFC60000 ^ v23 ^ (((v23 << 15) & 0xEFC60000 ^ v23) >> 18);
      }

      while (v3 <= v24 || ++v17 != v1);
      v6 = a1[7] & v24;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = v5;
        v5 = (v5 + 1) % 0x270;
        v9 = *(v2 + 4 * v5);
        v10 = v9 & 0x7FFFFFFE | *(v2 + 4 * v8) & 0x80000000;
        if (v9)
        {
          v11 = -1727483681;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11 ^ *(v2 + 4 * ((v8 + 397) % 0x270)) ^ (v10 >> 1);
        *(v2 + 4 * v8) = v12;
        v13 = ((v12 ^ (v12 >> 11)) << 7) & 0x9D2C5680 ^ v12 ^ (v12 >> 11);
        v14 = (v13 << 15) & 0xEFC60000 ^ v13 ^ (((v13 << 15) & 0xEFC60000 ^ v13) >> 18);
        if (v3 > v14)
        {
          v6 = (v6 << v4) + (a1[7] & v14);
          if (++v7 == v1)
          {
            break;
          }
        }
      }
    }

    *(v2 + 2496) = v5;
    v15 = a1[3];
    if (v1 < v15)
    {
      goto LABEL_20;
    }

    return v6;
  }

  v6 = 0;
  v15 = a1[3];
  if (!v15)
  {
    return v6;
  }

LABEL_20:
  v25 = *a1;
  v26 = a1[6];
  v27 = a1[2];
  v28 = *(*a1 + 2496);
  if (v27 >= 0x3F)
  {
    do
    {
      v37 = v28;
      v28 = (v28 + 1) % 0x270;
      v38 = *(v25 + 4 * v28);
      v39 = v38 & 0x7FFFFFFE | *(v25 + 4 * v37) & 0x80000000;
      if (v38)
      {
        v40 = -1727483681;
      }

      else
      {
        v40 = 0;
      }

      v41 = v40 ^ *(v25 + 4 * ((v37 + 397) % 0x270)) ^ (v39 >> 1);
      *(v25 + 4 * v37) = v41;
      v42 = ((v41 ^ (v41 >> 11)) << 7) & 0x9D2C5680 ^ v41 ^ (v41 >> 11);
      v43 = (v42 << 15) & 0xEFC60000 ^ v42 ^ (((v42 << 15) & 0xEFC60000 ^ v42) >> 18);
    }

    while (v26 <= v43 || ++v1 != v15);
    v44 = *(a1 + 15) & v43;
    *(v25 + 2496) = v28;
    return v44;
  }

  else
  {
    v29 = v27 + 1;
    while (1)
    {
      v30 = v28;
      v28 = (v28 + 1) % 0x270;
      v31 = *(v25 + 4 * v28);
      v32 = v31 & 0x7FFFFFFE | *(v25 + 4 * v30) & 0x80000000;
      if (v31)
      {
        v33 = -1727483681;
      }

      else
      {
        v33 = 0;
      }

      v34 = v33 ^ *(v25 + 4 * ((v30 + 397) % 0x270)) ^ (v32 >> 1);
      *(v25 + 4 * v30) = v34;
      v35 = ((v34 ^ (v34 >> 11)) << 7) & 0x9D2C5680 ^ v34 ^ (v34 >> 11);
      v36 = (v35 << 15) & 0xEFC60000 ^ v35 ^ (((v35 << 15) & 0xEFC60000 ^ v35) >> 18);
      if (v26 > v36)
      {
        v6 = (v6 << v29) + (*(a1 + 15) & v36);
        if (++v1 == v15)
        {
          break;
        }
      }
    }

    *(v25 + 2496) = v28;
    return v6;
  }
}

uint64_t sub_1000DF0C8(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = a3[1];
  if (result != *a3)
  {
    v4 = result - *a3 + 1;
    if (result - *a3 == -1)
    {
      v18 = *(a2 + 2496);
      v19 = (v18 + 1) % 0x270uLL;
      v20 = *(a2 + 4 * v19);
      if (v20)
      {
        v21 = -1727483681;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21 ^ *(a2 + 4 * ((v18 + 397) % 0x270uLL)) ^ ((v20 & 0x7FFFFFFE | *(a2 + 4 * v18) & 0x80000000) >> 1);
      *(a2 + 4 * v18) = v22;
      *(a2 + 2496) = v19;
      v23 = ((v22 ^ (v22 >> 11)) << 7) & 0x9D2C5680 ^ v22 ^ (v22 >> 11);
      return (v23 << 15) & 0xEFC60000 ^ v23 ^ (((v23 << 15) & 0xEFC60000 ^ v23) >> 18);
    }

    else
    {
      v5 = __clz(v4);
      v6 = 31;
      if (((v4 << v5) & 0x7FFFFFFF) != 0)
      {
        v6 = 32;
      }

      v7 = v6 - v5;
      v8 = v7 >> 5;
      if ((v7 & 0x1F) != 0)
      {
        ++v8;
      }

      if (v8 <= v7)
      {
        v9 = 0xFFFFFFFF >> -(v7 / v8);
      }

      else
      {
        v9 = 0;
      }

      v10 = *(a2 + 2496);
      do
      {
        v11 = v10;
        v10 = (v10 + 1) % 0x270;
        v12 = *(a2 + 4 * v10);
        v13 = v12 & 0x7FFFFFFE | *(a2 + 4 * v11) & 0x80000000;
        if (v12)
        {
          v14 = -1727483681;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14 ^ *(a2 + 4 * ((v11 + 397) % 0x270)) ^ (v13 >> 1);
        *(a2 + 4 * v11) = v15;
        v16 = ((v15 ^ (v15 >> 11)) << 7) & 0x9D2C5680 ^ v15 ^ (v15 >> 11);
        v17 = ((v16 << 15) & 0xEFC60000 ^ v16 ^ (((v16 << 15) & 0xEFC60000 ^ v16) >> 18)) & v9;
      }

      while (v17 >= v4);
      *(a2 + 2496) = v10;
      return *a3 + v17;
    }
  }

  return result;
}

void sub_1000DF25C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000DF2CC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1000DF33C(const void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  status = 0;
  v13 = 0;
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v4 = __cxa_demangle(a1, 0, &v13, &status);
  if (status)
  {
    free(v4);
    switch(status)
    {
      case -3:
        if (qword_10045B050 != -1)
        {
          sub_100383CD8();
        }

        v8 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
        {
          if (*(v2 + 23) >= 0)
          {
            v9 = v2;
          }

          else
          {
            v9 = *v2;
          }

          *buf = 136315138;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Invalid args provided to demangle '%s'\n", buf, 0xCu);
        }

        if (*(v2 + 23) < 0)
        {
          goto LABEL_34;
        }

        break;
      case -2:
        if (*(v2 + 23) < 0)
        {
          goto LABEL_34;
        }

        break;
      case -1:
        if (*(v2 + 23) < 0)
        {
LABEL_34:
          sub_100003228(a2, *v2, v2[1]);
LABEL_37:
          *(a2 + 24) = 0;
          return;
        }

        break;
      default:
        if (qword_10045B050 != -1)
        {
          sub_100383CD8();
        }

        v10 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
        {
          if (*(v2 + 23) >= 0)
          {
            v11 = v2;
          }

          else
          {
            v11 = *v2;
          }

          *buf = 67109378;
          *&buf[4] = status;
          *&buf[8] = 2080;
          *&buf[10] = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Unknown status code %d demangling '%s'\n", buf, 0x12u);
        }

        if (*(v2 + 23) < 0)
        {
          goto LABEL_34;
        }

        break;
    }

LABEL_36:
    *a2 = *v2;
    *(a2 + 16) = v2[2];
    goto LABEL_37;
  }

  if (!v4)
  {
    if (*(v2 + 23) < 0)
    {
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  v5 = v4;
  v6 = strlen(v4);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  buf[23] = v6;
  if (v6)
  {
    memmove(buf, v5, v6);
    buf[v7] = 0;
    free(v5);
    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    buf[0] = 0;
    free(v5);
    if ((buf[23] & 0x80000000) == 0)
    {
LABEL_14:
      *a2 = *buf;
      *(a2 + 16) = *&buf[16];
      *(a2 + 24) = 1;
      return;
    }
  }

  v12 = *buf;
  sub_100003228(a2, *buf, *&buf[8]);
  *(a2 + 24) = 1;
  operator delete(v12);
}

void sub_1000DF6F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = sub_10003C2E4(&std::cerr, "Unhandled exception ", 20);
  if (v23 < 0)
  {
    v19 = v22;
  }

  v21 = strlen(v19);
  sub_10003C2E4(v20, v19, v21);
  if (v23 < 0)
  {
    operator delete(v22);
  }
}

void sub_1000DF76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000DF788()
{
  if ((atomic_load_explicit(&qword_10045CD68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10045CD68))
  {
    operator new();
  }

  return qword_10045CD60;
}

void sub_1000DF890(uint64_t a1)
{
  if (!a1)
  {
    sub_1000474A4(&v13, "");
    sub_1000E0488(v12, "Cannot set null runtime configuration");
    sub_100382FC4(v12, v10, &v13);
    sub_1000BA6B0(v10);
  }

  v1 = qword_10045CD58;
  qword_10045CD58 = a1;
  if (!v1)
  {
    return;
  }

  v2 = sub_1000DF788();
  sub_10003BEA8(("20RuntimeConfiguration" & 0x7FFFFFFFFFFFFFFFLL), &v8);
  v3 = 0;
  while (1)
  {
    v4 = std::string::find(&v8, "boost::units::", v3, 0xEuLL);
    if (v4 == -1)
    {
      break;
    }

    v3 = v4;
    std::string::erase(&v8, v4, 0xEuLL);
  }

  sub_10003BEA8(("20RuntimeConfiguration" & 0x7FFFFFFFFFFFFFFFLL), &__p);
  v5 = 0;
  while (1)
  {
    v6 = std::string::find(&__p, "boost::units::", v5, 0xEuLL);
    if (v6 == -1)
    {
      break;
    }

    v5 = v6;
    std::string::erase(&__p, v6, 0xEuLL);
  }

  if (v2 != v1)
  {
    sub_1000474A4(v10, "");
    sub_1000D3660(&v13, "Runtime configuration ");
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v14, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = v8;
    }

    sub_1000E04D8(&v15, " already set.  Error trying to set runtime configuration ");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v16 = __p;
    }

    sub_1000E661C(v10, &v13, 4);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_24:
        if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_30;
      }
    }

    else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    operator delete(v15.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_31;
    }

LABEL_30:
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_26:
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_32:
      operator delete(v10[0]);
LABEL_27:
      sub_10003F5D0(&v9);
    }

LABEL_31:
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_14:
    operator delete(v8.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_14;
  }
}

void sub_1000DFB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000DFC50(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void *sub_1000DFCAC(void *a1)
{
  *a1 = off_10043A478;
  v2 = a1[3];
  if (v2)
  {
    do
    {
      v5 = *v2;
      sub_100005B18((v2 + 5));
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_1000DFD3C(void *a1)
{
  *a1 = off_10043A478;
  v2 = a1[3];
  if (v2)
  {
    do
    {
      v4 = *v2;
      sub_100005B18((v2 + 5));
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  operator delete();
}

void sub_1000DFDEC(char *__s@<X1>, uint64_t a2@<X0>, _DWORD *a3@<X8>)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v13 = v6;
  if (v6)
  {
    memcpy(__dst, __s, v6);
  }

  *(__dst + v7) = 0;
  std::locale::locale(&v11);
  v8 = v13;
  if (v13 >= 0)
  {
    v9 = __dst;
  }

  else
  {
    v9 = __dst[0];
  }

  if (v13 < 0)
  {
    v8 = __dst[1];
  }

  sub_100004198(&__p, v9, &v11, &v8[v9]);
  std::locale::~locale(&v11);
  if (v13 < 0)
  {
    operator delete(__dst[0]);
  }

  v10 = sub_10000426C((a2 + 8), &__p);
  if (v10)
  {
    sub_10000F9FC(a3, (v10 + 5));
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_18:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  *a3 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_18;
  }
}

void sub_1000DFF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::locale::~locale(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000DFF84(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v12 = v6;
  if (v6)
  {
    memcpy(__dst, __s, v6);
  }

  *(__dst + v7) = 0;
  std::locale::locale(&v10);
  v8 = v12;
  if (v12 >= 0)
  {
    v9 = __dst;
  }

  else
  {
    v9 = __dst[0];
  }

  if (v12 < 0)
  {
    v8 = __dst[1];
  }

  sub_100004198(&__p, v9, &v10, &v8[v9]);
  sub_10001049C((a1 + 8), &__p, &__p, a3);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    std::locale::~locale(&v10);
    if ((v12 & 0x80000000) == 0)
    {
      return;
    }

LABEL_16:
    operator delete(__dst[0]);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  std::locale::~locale(&v10);
  if (v12 < 0)
  {
    goto LABEL_16;
  }
}

void sub_1000E00E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    std::locale::~locale(&a10);
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::locale::~locale(&a10);
    if ((a16 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a11);
  _Unwind_Resume(a1);
}

void sub_1000E0144(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      do
      {
        v4 = *v2;
        sub_100005B18((v2 + 5));
        if (*(v2 + 39) < 0)
        {
          operator delete(v2[2]);
        }

        operator delete(v2);
        v2 = v4;
      }

      while (v4);
    }

    *(a1 + 24) = 0;
    v3 = *(a1 + 16);
    if (v3)
    {
      bzero(*(a1 + 8), 8 * v3);
    }

    *(a1 + 32) = 0;
  }
}

void sub_1000E01CC(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v12 = v4;
  if (v4)
  {
    memcpy(__dst, __s, v4);
  }

  *(__dst + v5) = 0;
  std::locale::locale(&v10);
  v6 = v12;
  if (v12 >= 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  if (v12 < 0)
  {
    v6 = __dst[1];
  }

  sub_100004198(&v13, v7, &v10, &v6[v7]);
  v8 = sub_1000108D0((a1 + 8), &v13);
  if (v8)
  {
    sub_100010A88((a1 + 8), v8, &__p);
    v9 = __p;
    __p = 0;
    if (v9)
    {
      if (v15 == 1)
      {
        sub_100005B18((v9 + 5));
        if (*(v9 + 39) < 0)
        {
          operator delete(v9[2]);
        }
      }

      operator delete(v9);
    }
  }

  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    std::locale::~locale(&v10);
    if ((v12 & 0x80000000) == 0)
    {
      return;
    }

LABEL_22:
    operator delete(__dst[0]);
    return;
  }

  operator delete(v13.__r_.__value_.__l.__data_);
  std::locale::~locale(&v10);
  if (v12 < 0)
  {
    goto LABEL_22;
  }
}

void sub_1000E0368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    std::locale::~locale(&a9);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::locale::~locale(&a9);
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a10);
  _Unwind_Resume(a1);
}

void **sub_1000E03D4(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    *v1 = off_10043A478;
    v2 = v1[3];
    if (v2)
    {
      do
      {
        v4 = *v2;
        sub_100005B18((v2 + 5));
        if (*(v2 + 39) < 0)
        {
          operator delete(v2[2]);
        }

        operator delete(v2);
        v2 = v4;
      }

      while (v4);
    }

    v3 = v1[1];
    v1[1] = 0;
    if (v3)
    {
      operator delete(v3);
    }

    operator delete();
  }

  return result;
}

std::string *sub_1000E0488@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1000E04BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000E04D8@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1000E050C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E0528()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000E0598()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1000E0638()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000E06A8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1000E0718(int a1)
{
  if (a1 >= 5000)
  {
    return (a1 - 5000) / 5u;
  }

  else
  {
    return ((a1 - 2407) / 5);
  }
}

uint64_t sub_1000E0784(uint64_t a1)
{
  v1 = a1 + 64;
  if (a1 != -64)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  memset(v4, 0, sizeof(v4));
  v2 = backtrace(0, (v1 >> 3) + 64);
  memcpy(v4, 0xFFFFFFFFFFFFFE00, 8 * v2);
  return sub_1000E08E4(v4, 64, v2);
}

void sub_1000E08C4(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E08E4(void *const *a1, int a2, int a3)
{
  v6 = backtrace_symbols(a1, a3);
  sub_10003BFA8(&v30);
  v21 = a3;
  if (a3 >= 1)
  {
    v7 = 0;
    while (1)
    {
      snprintf(__str, 0x40uLL, "%-3d\t%*p\t", v7, 18, a1[v7]);
      v8 = strlen(__str);
      sub_10003C2E4(&v30, __str, v8);
      if (dladdr(a1[v7], &v29) && v29.dli_sname != 0)
      {
        break;
      }

      v10 = strlen(v6[v7]);
      v11 = sub_10003C2E4(&v30, v6[v7], v10);
      sub_10003C2E4(v11, "\n", 1);
LABEL_3:
      if (v21 == ++v7)
      {
        goto LABEL_28;
      }
    }

    __p[0] = 0;
    __p[1] = 0;
    v28 = 0;
    v12 = strlen(v29.dli_sname);
    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v13 = v12;
    if (v12 >= 0x17)
    {
      operator new();
    }

    v23 = v12;
    if (v12)
    {
      memmove(&__dst, v29.dli_sname, v12);
    }

    *(&__dst + v13) = 0;
    sub_1000DF33C(&__dst, &v24);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v24;
    v28 = v25;
    HIBYTE(v25) = 0;
    LOBYTE(v24) = 0;
    v14 = v26;
    if (v23 < 0)
    {
      operator delete(__dst);
      if (v14)
      {
LABEL_20:
        if (v28 >= 0)
        {
          dli_sname = __p;
        }

        else
        {
          dli_sname = __p[0];
        }

LABEL_26:
        v16 = strlen(dli_sname);
        v17 = sub_10003C2E4(&v30, dli_sname, v16);
        sub_10003C2E4(v17, " + ", 3);
        v18 = std::ostream::operator<<();
        sub_10003C2E4(v18, "\n", 1);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_3;
      }
    }

    else if (v26)
    {
      goto LABEL_20;
    }

    dli_sname = v29.dli_sname;
    if (!v29.dli_sname)
    {
      dli_sname = v6[v7];
    }

    goto LABEL_26;
  }

LABEL_28:
  free(v6);
  if (a2 == v21)
  {
    sub_10003C2E4(&v30, "[truncated?]\n", 13);
  }

  std::stringbuf::str();
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  std::locale::~locale(v32);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1000E0CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1000E0D40(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1000E0F8C(a1, 0x40uLL);
  operator new();
}

void sub_1000E0E40(_Unwind_Exception *a1)
{
  operator delete(v2);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000E0E70(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void sub_1000E0F8C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_10000FC84();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_10000D444();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t **sub_1000E10E0(uint64_t **a1, int *a2)
{
  a1[1] = 0;
  v3 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  v4 = a2[1];
  v5 = *a2;
  if (v4 != v5)
  {
    v7 = v4 - v5;
    v8 = (*(a2 + 2) + 8 * v5);
    v9 = (*(a2 + 1) + 4 * v5);
    do
    {
      v10 = *v9++;
      v11 = *v8;
      v12[0] = v10;
      v12[1] = v11;
      if (!*sub_1000E4AE0(a1, v3, &v14, &v13, v12))
      {
        operator new();
      }

      ++v8;
      --v7;
    }

    while (v7);
  }

  return a1;
}

uint64_t sub_1000E1258(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  v13 = 0;
  v12 = 0;
  for (i = (*(*a2 + 200))(a2, __p); ; i = v6 + v5 + (*(*a2 + 224))(a2))
  {
    v5 = (*(*a2 + 216))(a2, __p, &v13, &v12) + i;
    if (!v13)
    {
      break;
    }

    if (v12 > 2u)
    {
      if (v12 == 3)
      {
        if (v13 == 8)
        {
          v6 = (*(*a2 + 312))(a2, a1 + 16);
          v7 = *(a1 + 32) | 4;
          goto LABEL_16;
        }
      }

      else if (v12 == 4 && v13 == 4)
      {
        v6 = (*(*a2 + 328))(a2, a1 + 24);
        v7 = *(a1 + 32) | 8;
        goto LABEL_16;
      }
    }

    else if (v12 == 1)
    {
      if (v13 == 8)
      {
        v11 = 0;
        v6 = (*(*a2 + 312))(a2, &v11);
        *(a1 + 8) = v11;
        v7 = *(a1 + 32) | 1;
        goto LABEL_16;
      }
    }

    else if (v12 == 2 && v13 == 8)
    {
      v6 = (*(*a2 + 312))(a2, a1 + 12);
      v7 = *(a1 + 32) | 2;
LABEL_16:
      *(a1 + 32) = v7;
      continue;
    }

    v6 = (*(*a2 + 352))(a2);
  }

  v8 = (*(*a2 + 208))(a2);
  if ((SHIBYTE(v15) & 0x80000000) == 0)
  {
    return (v8 + v5);
  }

  v10 = v8;
  operator delete(__p[0]);
  return (v10 + v5);
}

void sub_1000E1540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E1564(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "DataRunSettings");
  v7 = (*(*a2 + 48))(a2, "scanStrategy", 8, 1) + v6;
  v8 = (*(*a2 + 144))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "refreshPeriodMs", 8, 2);
  v11 = v10 + (*(*a2 + 144))(a2, *(a1 + 12));
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = (*(*a2 + 48))(a2, "dwellMs", 8, 3);
  v14 = v13 + (*(*a2 + 144))(a2, *(a1 + 16));
  v15 = v14 + (*(*a2 + 56))(a2);
  v16 = v12 + v15 + (*(*a2 + 48))(a2, "dutyCycle", 4, 4);
  LODWORD(a1) = (*(*a2 + 160))(a2, *(a1 + 24));
  LODWORD(a1) = a1 + (*(*a2 + 56))(a2);
  LODWORD(a1) = a1 + (*(*a2 + 64))(a2);
  v17 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v16 + a1 + v17);
}

void sub_1000E18F8(int *a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v22 = v20;
  v23 = &v21;
  v3 = *a1;
  if (*a1 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = -v3;
  }

  v16 = v4;
  v17 = &v21;
  v18 = 48;
  v19 = 48;
  v5 = sub_1000E4C90(&v16);
  v6 = v5;
  if ((v3 & 0x80000000) == 0)
  {
    v22 = v5;
    v23 = &v21;
    v7 = (&v21 - v5);
    v8 = a2;
    if ((&v21 - v5) < 0x17)
    {
      goto LABEL_6;
    }

LABEL_14:
    std::string::__grow_by(a2, 0x16uLL, v7 - 22, 0, 0, 0, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = a2->__r_.__value_.__r.__words[0];
    }

    if (v6 != &v21)
    {
      goto LABEL_7;
    }

LABEL_18:
    v9 = v8;
    goto LABEL_21;
  }

  *(v5 - 1) = 45;
  v6 = (v5 - 1);
  v22 = (v5 - 1);
  v23 = &v21;
  v7 = (&v21 - v5 + 1);
  v8 = a2;
  if (v7 >= 0x17)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v6 == &v21)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (v7 < 0x20 || (v8 - v6) < 0x20)
  {
    v9 = v8;
    v10 = v6;
  }

  else
  {
    v9 = (v8 + (v7 & 0xFFFFFFFFFFFFFFE0));
    v10 = &v6[v7 & 0xFFFFFFFFFFFFFFE0];
    v11 = (v6 + 16);
    v12 = &v8->__r_.__value_.__r.__words[2];
    v13 = v7 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v14 = *v11;
      *(v12 - 1) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 4;
      v13 -= 32;
    }

    while (v13);
    if (v7 == (v7 & 0xFFFFFFFFFFFFFFE0))
    {
      goto LABEL_21;
    }
  }

  do
  {
    v15 = *v10++;
    v9->__r_.__value_.__s.__data_[0] = v15;
    v9 = (v9 + 1);
  }

  while (v10 != &v21);
LABEL_21:
  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = v7;
  }

  else
  {
    *(&a2->__r_.__value_.__s + 23) = v7 & 0x7F;
  }
}

void sub_1000E1AB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E1ACC(uint64_t a1)
{
  *a1 = off_10043A528;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_1000E4A44(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_1000E1B28(uint64_t a1)
{
  *a1 = off_10043A528;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_1000E4A44(a1 + 8, *(a1 + 16));

  operator delete();
}

uint64_t sub_1000E1BA4(uint64_t a1, uint64_t *a2)
{
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  v42 = 0;
  v41 = 0;
  v4 = (*(*a2 + 200))(a2, v43);
  v5 = a1 + 8;
  v34 = a1;
  v35 = (a1 + 16);
  while (1)
  {
    v6 = (*(*a2 + 216))(a2, v43, &v42, &v41) + v4;
    if (!v42)
    {
      break;
    }

    if (v41 == 3)
    {
      v28 = *a2;
      if (v42 == 8)
      {
        v29 = (*(v28 + 312))(a2, a1 + 56) + v6;
        *(a1 + 60) |= 4u;
        goto LABEL_46;
      }

      goto LABEL_42;
    }

    if (v41 == 2)
    {
      v28 = *a2;
      if (v42 == 11)
      {
        v29 = (*(v28 + 336))(a2, a1 + 32) + v6;
        *(a1 + 60) |= 2u;
        goto LABEL_46;
      }

LABEL_42:
      v30 = (*(v28 + 352))(a2);
LABEL_45:
      v29 = v30 + v6;
      goto LABEL_46;
    }

    if (v41 != 1 || v42 != 13)
    {
      v30 = (*(*a2 + 352))(a2);
      goto LABEL_45;
    }

    sub_1000E4A44(v5, *(a1 + 16));
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = v35;
    v40 = 0;
    v39 = 0;
    v7 = (*(*a2 + 232))(a2, &v40, &v39, &v40 + 4) + v6;
    if (HIDWORD(v40))
    {
      v8 = 0;
      do
      {
        v36 = v7;
        v9 = v5;
        __p[0] = 0;
        __p[1] = 0;
        v38 = 0;
        v10 = (*(*a2 + 336))(a2, __p);
        v11 = *v35;
        if (!*v35)
        {
LABEL_34:
          operator new();
        }

        if (v38 >= 0)
        {
          v12 = HIBYTE(v38);
        }

        else
        {
          v12 = __p[1];
        }

        if (v38 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        while (1)
        {
          while (1)
          {
            v14 = v11;
            v17 = v11[4];
            v15 = v11 + 4;
            v16 = v17;
            v18 = *(v15 + 23);
            if (v18 >= 0)
            {
              v19 = *(v15 + 23);
            }

            else
            {
              v19 = v15[1];
            }

            if (v18 >= 0)
            {
              v20 = v15;
            }

            else
            {
              v20 = v16;
            }

            if (v19 >= v12)
            {
              v21 = v12;
            }

            else
            {
              v21 = v19;
            }

            v22 = memcmp(v13, v20, v21);
            v23 = v12 < v19;
            if (v22)
            {
              v23 = v22 < 0;
            }

            if (!v23)
            {
              break;
            }

            v11 = *v14;
            if (!*v14)
            {
              goto LABEL_34;
            }
          }

          v24 = memcmp(v20, v13, v21);
          v25 = v19 < v12;
          if (v24)
          {
            v25 = v24 < 0;
          }

          if (!v25)
          {
            break;
          }

          v11 = v14[1];
          if (!v11)
          {
            goto LABEL_34;
          }
        }

        v5 = v9;
        v26 = (*(*a2 + 336))(a2, v14 + 7);
        if (SHIBYTE(v38) < 0)
        {
          v27 = v26;
          operator delete(__p[0]);
          v26 = v27;
        }

        v7 = v10 + v36 + v26;
        ++v8;
      }

      while (v8 < HIDWORD(v40));
    }

    v29 = (*(*a2 + 240))(a2) + v7;
    a1 = v34;
    *(v34 + 60) |= 1u;
LABEL_46:
    v4 = (*(*a2 + 224))(a2) + v29;
  }

  v31 = (*(*a2 + 208))(a2);
  if (SHIBYTE(v44) < 0)
  {
    v32 = v31;
    operator delete(v43[0]);
    v31 = v32;
  }

  return (v31 + v6);
}

void sub_1000E22D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if ((a27 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E233C(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "SurveySdkData");
  v7 = (*(*a2 + 48))(a2, "customProperties", 13, 1) + v6;
  v8 = v7 + (*(*a2 + 72))(a2, 11, 11, *(a1 + 24));
  v9 = *(a1 + 8);
  if (v9 != (a1 + 16))
  {
    do
    {
      v21 = (*(*a2 + 168))(a2, v9 + 4);
      v22 = (*(*a2 + 168))(a2, v9 + 7);
      v23 = v9[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v9[2];
          v25 = *v24 == v9;
          v9 = v24;
        }

        while (!v25);
      }

      v8 += v21 + v22;
      v9 = v24;
    }

    while (v24 != (a1 + 16));
  }

  v10 = (*(*a2 + 80))(a2) + v8;
  v11 = (*(*a2 + 56))(a2);
  v12 = v10 + v11 + (*(*a2 + 48))(a2, "surveyorId", 11, 2);
  v13 = (*(*a2 + 168))(a2, a1 + 32);
  v14 = v13 + (*(*a2 + 56))(a2);
  v15 = v12 + v14 + (*(*a2 + 48))(a2, "specifiedSurveyType", 8, 3);
  v16 = (*(*a2 + 144))(a2, *(a1 + 56));
  v17 = v16 + (*(*a2 + 56))(a2);
  v18 = v17 + (*(*a2 + 64))(a2);
  v19 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v15 + v18 + v19);
}

uint64_t sub_1000E2720(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043A528;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = (a1 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 60) &= 0xF8u;
  if (a1 != a2)
  {
    sub_1000E4F40((a1 + 8), *(a2 + 8), (a2 + 16));
  }

  std::string::operator=(v4, (a2 + 32));
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  return a1;
}

void sub_1000E27D4(_Unwind_Exception *a1)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*v3);
  }

  sub_1000E4A44(v2, *v4);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E27FC(uint64_t *a1)
{
  sub_10003BFA8(&v13);
  v3 = sub_10003C2E4(&v13, "{", 1);
  v4 = *a1;
  v9 = a1 + 1;
  v10 = v4;
  sub_1000E5530(&v10, &v9);
  if ((v12 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v6 = v12;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_10003C2E4(v3, v5, v6);
  sub_10003C2E4(v7, "}", 1);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  std::locale::~locale(v15);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1000E29B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_1000E29C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_10003C1C4(&a17);
    _Unwind_Resume(a1);
  }

  sub_10003C1C4(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E2A00(uint64_t a1)
{
  *a1 = off_10043A548;
  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
    *(a1 + 288) = off_10043A528;
    if ((*(a1 + 343) & 0x80000000) == 0)
    {
LABEL_3:
      sub_1000E4A44(a1 + 296, *(a1 + 304));
      v2 = *(a1 + 216);
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_15:
      v4 = *(a1 + 224);
      if (v4 == v2)
      {
        *(a1 + 224) = v2;
        operator delete(v2);
        if (*(a1 + 215) < 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        do
        {
          v5 = *(v4 - 1);
          v4 -= 3;
          if (v5 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v2);
        v6 = *(a1 + 216);
        *(a1 + 224) = v2;
        operator delete(v6);
        if (*(a1 + 215) < 0)
        {
          goto LABEL_22;
        }
      }

LABEL_5:
      if ((*(a1 + 191) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }
  }

  else
  {
    *(a1 + 288) = off_10043A528;
    if ((*(a1 + 343) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(a1 + 320));
  sub_1000E4A44(a1 + 296, *(a1 + 304));
  v2 = *(a1 + 216);
  if (v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((*(a1 + 215) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  operator delete(*(a1 + 192));
  if ((*(a1 + 191) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 159) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(*(a1 + 168));
  if ((*(a1 + 159) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(*(a1 + 136));
  if ((*(a1 + 135) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(a1 + 111) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(*(a1 + 112));
  if ((*(a1 + 111) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(*(a1 + 88));
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
LABEL_10:
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_29;
  }

LABEL_27:
  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_29:
  operator delete(*(a1 + 8));
  return a1;
}

void sub_1000E2C00(uint64_t a1)
{
  sub_1000E2A00(a1);

  operator delete();
}

double sub_1000E2C80(uint64_t a1, uint64_t a2)
{
  *(a1 + 256) = *(a2 + 8);
  *(a1 + 264) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 272) = result;
  *(a1 + 280) = *(a2 + 32);
  return result;
}

std::string *sub_1000E2CA4(uint64_t a1, uint64_t a2)
{
  if (a1 + 288 != a2)
  {
    sub_1000E4F40((a1 + 296), *(a2 + 8), (a2 + 16));
  }

  result = std::string::operator=((a1 + 320), (a2 + 32));
  *(a1 + 344) = *(a2 + 56);
  *(a1 + 348) = *(a2 + 60);
  return result;
}

uint64_t sub_1000E2D00(uint64_t result, uint64_t a2)
{
  *(result + 352) = a2;
  *(result + 400) |= 0x4000u;
  return result;
}

uint64_t sub_1000E2D14(uint64_t result, uint64_t a2)
{
  *(result + 360) = a2;
  *(result + 400) |= 0x8000u;
  return result;
}

uint64_t sub_1000E2D28(uint64_t result, int a2)
{
  *(result + 368) = a2;
  *(result + 402) |= 1u;
  return result;
}

uint64_t sub_1000E2D3C(uint64_t a1, uint64_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v28 = 0;
  v26 = 0;
  v25 = 0;
  for (i = (*(*a2 + 200))(a2, __p); ; i = (*(*a2 + 224))(a2) + v7)
  {
    v5 = (*(*a2 + 216))(a2, __p, &v26, &v25) + i;
    if (!v26)
    {
      break;
    }

    switch(v25)
    {
      case 1:
        v6 = *a2;
        if (v26 != 11)
        {
          goto LABEL_46;
        }

        v7 = (*(v6 + 336))(a2, a1 + 32) + v5;
        *(a1 + 400) |= 2u;
        break;
      case 2:
        v6 = *a2;
        if (v26 != 11)
        {
          goto LABEL_46;
        }

        v7 = (*(v6 + 336))(a2, a1 + 56) + v5;
        *(a1 + 400) |= 4u;
        break;
      case 3:
        if (v26 != 8)
        {
          goto LABEL_58;
        }

        HIDWORD(v24) = 0;
        v7 = (*(*a2 + 312))(a2, &v24 + 4) + v5;
        *(a1 + 80) = HIDWORD(v24);
        *(a1 + 400) |= 8u;
        break;
      case 4:
        v6 = *a2;
        if (v26 != 11)
        {
          goto LABEL_46;
        }

        v7 = (*(v6 + 336))(a2, a1 + 88) + v5;
        *(a1 + 400) |= 0x10u;
        break;
      case 5:
        v6 = *a2;
        if (v26 != 11)
        {
          goto LABEL_46;
        }

        v7 = (*(v6 + 336))(a2, a1 + 136) + v5;
        *(a1 + 400) |= 0x40u;
        break;
      case 6:
        v6 = *a2;
        if (v26 != 10)
        {
          goto LABEL_46;
        }

        v7 = (*(v6 + 320))(a2, a1 + 160) + v5;
        *(a1 + 400) |= 0x80u;
        break;
      case 7:
        v6 = *a2;
        if (v26 != 11)
        {
          goto LABEL_46;
        }

        v7 = (*(v6 + 336))(a2, a1 + 168) + v5;
        *(a1 + 400) |= 0x100u;
        break;
      case 8:
        v6 = *a2;
        if (v26 != 11)
        {
          goto LABEL_46;
        }

        v7 = (*(v6 + 336))(a2, a1 + 192) + v5;
        *(a1 + 400) |= 0x200u;
        break;
      case 9:
        if (v26 != 15)
        {
          goto LABEL_58;
        }

        v8 = *(a1 + 216);
        v9 = *(a1 + 224);
        while (v9 != v8)
        {
          v10 = *(v9 - 1);
          v9 -= 3;
          if (v10 < 0)
          {
            operator delete(*v9);
          }
        }

        *(a1 + 224) = v8;
        v24 = 0;
        v12 = (*(*a2 + 248))(a2, &v24, &v24 + 4);
        v13 = *(a1 + 216);
        v14 = *(a1 + 224);
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3);
        if (HIDWORD(v24) <= v15)
        {
          if (HIDWORD(v24) < v15)
          {
            v16 = (v13 + 24 * HIDWORD(v24));
            while (v14 != v16)
            {
              v17 = *(v14 - 1);
              v14 -= 3;
              if (v17 < 0)
              {
                operator delete(*v14);
              }
            }

            *(a1 + 224) = v16;
          }
        }

        else
        {
          sub_1000E5D0C(a1 + 216, HIDWORD(v24) - v15);
        }

        v18 = v12 + v5;
        if (HIDWORD(v24))
        {
          v19 = 0;
          v20 = 0;
          do
          {
            v18 += (*(*a2 + 336))(a2, *(a1 + 216) + v19);
            ++v20;
            v19 += 24;
          }

          while (v20 < HIDWORD(v24));
        }

        v7 = (*(*a2 + 256))(a2) + v18;
        *(a1 + 400) |= 0x400u;
        break;
      case 10:
        v6 = *a2;
        if (v26 != 2)
        {
          goto LABEL_46;
        }

        v7 = (*(v6 + 280))(a2, a1 + 240) + v5;
        *(a1 + 400) |= 0x800u;
        break;
      case 11:
        if (v26 != 12)
        {
          goto LABEL_58;
        }

        v7 = sub_1000E1258(a1 + 248, a2) + v5;
        *(a1 + 400) |= 0x1000u;
        break;
      case 12:
        if (v26 != 12)
        {
          goto LABEL_58;
        }

        v7 = sub_1000E1BA4(a1 + 288, a2) + v5;
        *(a1 + 400) |= 0x2000u;
        break;
      case 13:
        v6 = *a2;
        if (v26 != 11)
        {
          goto LABEL_46;
        }

        v7 = (*(v6 + 336))(a2, a1 + 8) + v5;
        *(a1 + 400) |= 1u;
        break;
      case 14:
        v6 = *a2;
        if (v26 != 11)
        {
          goto LABEL_46;
        }

        v7 = (*(v6 + 336))(a2, a1 + 112) + v5;
        *(a1 + 400) |= 0x20u;
        break;
      case 15:
        v6 = *a2;
        if (v26 != 10)
        {
          goto LABEL_46;
        }

        v7 = (*(v6 + 320))(a2, a1 + 352) + v5;
        *(a1 + 400) |= 0x4000u;
        break;
      case 16:
        v6 = *a2;
        if (v26 != 10)
        {
          goto LABEL_46;
        }

        v7 = (*(v6 + 320))(a2, a1 + 360) + v5;
        *(a1 + 400) |= 0x8000u;
        break;
      case 17:
        v6 = *a2;
        if (v26 != 8)
        {
          goto LABEL_46;
        }

        v7 = (*(v6 + 312))(a2, a1 + 368) + v5;
        *(a1 + 402) |= 1u;
        break;
      case 18:
        v6 = *a2;
        if (v26 != 11)
        {
LABEL_46:
          v11 = (*(v6 + 352))(a2);
          goto LABEL_59;
        }

        v7 = (*(v6 + 336))(a2, a1 + 376) + v5;
        *(a1 + 402) |= 2u;
        break;
      default:
LABEL_58:
        v11 = (*(*a2 + 352))(a2);
LABEL_59:
        v7 = v11 + v5;
        break;
    }
  }

  v21 = (*(*a2 + 208))(a2);
  if (SHIBYTE(v28) < 0)
  {
    v22 = v21;
    operator delete(__p[0]);
    v21 = v22;
  }

  return (v21 + v5);
}

void sub_1000E3858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E3888(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "DataRunMetadata");
  v7 = (*(*a2 + 48))(a2, "locationId", 11, 1) + v6;
  v8 = (*(*a2 + 168))(a2, a1 + 32);
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "phoneModel", 11, 2);
  v11 = v10 + (*(*a2 + 168))(a2, a1 + 56);
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = (*(*a2 + 48))(a2, "runType", 8, 3);
  v14 = v13 + (*(*a2 + 144))(a2, *(a1 + 80));
  v15 = v14 + (*(*a2 + 56))(a2);
  v16 = v12 + v15 + (*(*a2 + 48))(a2, "macAddress", 11, 4);
  v17 = (*(*a2 + 168))(a2, a1 + 88);
  v18 = v17 + (*(*a2 + 56))(a2);
  v19 = v18 + (*(*a2 + 48))(a2, "androidVersion", 11, 5);
  v20 = v19 + (*(*a2 + 168))(a2, a1 + 136);
  v21 = v16 + v20 + (*(*a2 + 56))(a2);
  v22 = (*(*a2 + 48))(a2, "mappingStartTimestampMillis", 10, 6);
  v23 = v22 + (*(*a2 + 152))(a2, *(a1 + 160));
  v24 = v23 + (*(*a2 + 56))(a2);
  v25 = v24 + (*(*a2 + 48))(a2, "emailAddress", 11, 7);
  v26 = v25 + (*(*a2 + 168))(a2, a1 + 168);
  v27 = v21 + v26 + (*(*a2 + 56))(a2);
  v28 = (*(*a2 + 48))(a2, "locationGroupId", 11, 8);
  v29 = v28 + (*(*a2 + 168))(a2, a1 + 192);
  v30 = v29 + (*(*a2 + 56))(a2);
  v31 = v30 + (*(*a2 + 48))(a2, "origDemoWifiSnapshot", 15, 9);
  v32 = v27 + v31 + (*(*a2 + 88))(a2, 11, -1431655765 * ((*(a1 + 224) - *(a1 + 216)) >> 3));
  for (i = *(a1 + 216); i != *(a1 + 224); i += 24)
  {
    v32 += (*(*a2 + 168))(a2, i);
  }

  v34 = (*(*a2 + 96))(a2);
  v35 = v34 + (*(*a2 + 56))(a2) + v32;
  if ((*(a1 + 400) & 0x800) != 0)
  {
    v36 = (*(*a2 + 48))(a2, "isServerDataRun", 2, 10);
    v37 = v36 + (*(*a2 + 120))(a2, *(a1 + 240));
    v35 += v37 + (*(*a2 + 56))(a2);
  }

  v38 = (*(*a2 + 48))(a2, "settings", 12, 11);
  v39 = v38 + sub_1000E1564(a1 + 248, a2);
  v40 = v39 + (*(*a2 + 56))(a2) + v35;
  v41 = (*(*a2 + 48))(a2, "surveySdkData", 12, 12);
  v42 = v41 + sub_1000E233C(a1 + 288, a2);
  v43 = v42 + (*(*a2 + 56))(a2);
  v44 = v40 + v43 + (*(*a2 + 48))(a2, "surveyId", 11, 13);
  v45 = (*(*a2 + 168))(a2, a1 + 8);
  v46 = v45 + (*(*a2 + 56))(a2);
  v47 = v46 + (*(*a2 + 48))(a2, "deviceIdForVendor", 11, 14);
  v48 = v47 + (*(*a2 + 168))(a2, a1 + 112);
  v49 = v44 + v48 + (*(*a2 + 56))(a2);
  if ((*(a1 + 400) & 0x4000) != 0)
  {
    v56 = (*(*a2 + 48))(a2, "startTimeNanos", 10, 15);
    v57 = v56 + (*(*a2 + 152))(a2, *(a1 + 352));
    v49 += v57 + (*(*a2 + 56))(a2);
    if ((*(a1 + 400) & 0x8000) == 0)
    {
LABEL_8:
      v50 = *(a1 + 402);
      if ((v50 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_14:
      v60 = (*(*a2 + 48))(a2, "versionNumber", 8, 17);
      v61 = v60 + (*(*a2 + 144))(a2, *(a1 + 368));
      v49 += v61 + (*(*a2 + 56))(a2);
      if ((*(a1 + 402) & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a1 + 400) & 0x8000) == 0)
  {
    goto LABEL_8;
  }

  v58 = (*(*a2 + 48))(a2, "wallclockStartTimeNanos", 10, 16);
  v59 = v58 + (*(*a2 + 152))(a2, *(a1 + 360));
  v49 += v59 + (*(*a2 + 56))(a2);
  v50 = *(a1 + 402);
  if (v50)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v50 & 2) != 0)
  {
LABEL_10:
    v51 = (*(*a2 + 48))(a2, "originalSurveyId", 11, 18);
    v52 = v51 + (*(*a2 + 168))(a2, a1 + 376);
    v49 += v52 + (*(*a2 + 56))(a2);
  }

LABEL_11:
  v53 = (*(*a2 + 64))(a2);
  v54 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v53 + v54 + v49);
}

uint64_t sub_1000E4528(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), (a2 + 8));
  std::string::operator=((a1 + 32), (a2 + 32));
  std::string::operator=((a1 + 56), (a2 + 56));
  *(a1 + 80) = *(a2 + 80);
  std::string::operator=((a1 + 88), (a2 + 88));
  std::string::operator=((a1 + 112), (a2 + 112));
  std::string::operator=((a1 + 136), (a2 + 136));
  *(a1 + 160) = *(a2 + 160);
  std::string::operator=((a1 + 168), (a2 + 168));
  std::string::operator=((a1 + 192), (a2 + 192));
  if (a1 != a2)
  {
    sub_1000E5A0C(a1 + 216, *(a2 + 216), *(a2 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 224) - *(a2 + 216)) >> 3));
  }

  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);
  if (a1 != a2)
  {
    sub_1000E4F40((a1 + 296), *(a2 + 296), (a2 + 304));
  }

  std::string::operator=((a1 + 320), (a2 + 320));
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 348) = *(a2 + 348);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  std::string::operator=((a1 + 376), (a2 + 376));
  v4 = *(a2 + 402);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 402) = v4;
  return a1;
}

void sub_1000E4670(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v21 = v19;
  v22 = v20;
  v3 = *a1;
  if (*a1 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = -v3;
  }

  v16[0] = v4;
  v16[1] = v20;
  v17 = 48;
  v18 = 48;
  v5 = sub_1000E5EB8(v16);
  v6 = v5;
  if ((v3 & 0x8000000000000000) == 0)
  {
    v21 = v5;
    v22 = v20;
    v7 = &v20[-v5];
    v8 = a2;
    if (&v20[-v5] < 0x17)
    {
      goto LABEL_6;
    }

LABEL_14:
    std::string::__grow_by(a2, 0x16uLL, v7 - 22, 0, 0, 0, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = a2->__r_.__value_.__r.__words[0];
    }

    if (v6 != v20)
    {
      goto LABEL_7;
    }

LABEL_18:
    v9 = v8;
    goto LABEL_21;
  }

  *(v5 - 1) = 45;
  v6 = (v5 - 1);
  v21 = (v5 - 1);
  v22 = v20;
  v7 = &v20[-v5 + 1];
  v8 = a2;
  if (v7 >= 0x17)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v6 == v20)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (v7 < 0x20 || (v8 - v6) < 0x20)
  {
    v9 = v8;
    v10 = v6;
  }

  else
  {
    v9 = (v8 + (v7 & 0xFFFFFFFFFFFFFFE0));
    v10 = &v6[v7 & 0xFFFFFFFFFFFFFFE0];
    v11 = (v6 + 16);
    v12 = &v8->__r_.__value_.__r.__words[2];
    v13 = v7 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v14 = *v11;
      *(v12 - 1) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 4;
      v13 -= 32;
    }

    while (v13);
    if (v7 == (v7 & 0xFFFFFFFFFFFFFFE0))
    {
      goto LABEL_21;
    }
  }

  do
  {
    v15 = *v10++;
    v9->__r_.__value_.__s.__data_[0] = v15;
    v9 = (v9 + 1);
  }

  while (v10 != v20);
LABEL_21:
  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = v7;
  }

  else
  {
    *(&a2->__r_.__value_.__s + 23) = v7 & 0x7F;
  }
}

void sub_1000E4824(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E4840(const std::string **a1)
{
  sub_10003BFA8(&v13);
  v3 = sub_10003C2E4(&v13, "[", 1);
  v4 = *a1;
  v9 = a1[1];
  v10 = v4;
  sub_1000E6164(&v10, &v9);
  if ((v12 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v6 = v12;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_10003C2E4(v3, v5, v6);
  sub_10003C2E4(v7, "]", 1);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  std::locale::~locale(v15);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1000E49F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_1000E4A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_10003C1C4(&a17);
    _Unwind_Resume(a1);
  }

  sub_10003C1C4(&a17);
  _Unwind_Resume(a1);
}

void sub_1000E4A44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000E4A44(a1, *a2);
    sub_1000E4A44(a1, *(a2 + 8));
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
LABEL_4:
        v4 = a2;

LABEL_6:
        operator delete(v4);
        return;
      }
    }

    else if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a2 + 32));
    v4 = a2;

    goto LABEL_6;
  }
}

uint64_t *sub_1000E4AE0(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
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
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 32);
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return (a1 + 1);
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < *(v13 + 8))
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 32);
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return (a1 + 1);
      }
    }
  }
}

uint64_t sub_1000E4C90(uint64_t a1)
{
  std::locale::locale(&v23);
  v2 = std::locale::classic();
  if (std::locale::operator==(&v23, v2))
  {
    v3 = *a1;
    do
    {
      v4 = *(a1 + 8);
      *(a1 + 8) = v4 - 1;
      *(v4 - 1) = *(a1 + 20) + v3 % 0xA;
      LODWORD(v4) = *a1;
      v3 = *a1 / 0xAu;
      *a1 = v3;
    }

    while (v4 > 9);
    v5 = *(a1 + 8);
    goto LABEL_28;
  }

  v6 = std::locale::use_facet(&v23, &std::numpunct<char>::id);
  (v6->__vftable[1].__on_zero_shared)(&__p);
  v7 = v22;
  if ((v22 & 0x8000000000000000) != 0)
  {
    v7 = v21;
    if (!v21 || *__p <= 0)
    {
      goto LABEL_24;
    }

LABEL_11:
    v8 = (v6->__vftable[1].~facet_0)(v6);
    v9 = 0;
    p_p = __p;
    if (v22 >= 0)
    {
      p_p = &__p;
    }

    v11 = (a1 + 8);
    LOBYTE(v12) = *p_p;
    v13 = *p_p;
    do
    {
      if (!v13)
      {
        if (++v9 < v7)
        {
          v16 = v22 >= 0 ? &__p : __p;
          v12 = *(v16 + v9);
          if (v12 < 1)
          {
            LOBYTE(v12) = 127;
          }
        }

        v14 = (*v11 - 1);
        *v11 = v14;
        *v14 = v8;
        v13 = v12;
      }

      --v13;
      v15 = *(a1 + 8);
      *(a1 + 8) = v15 - 1;
      *(v15 - 1) = *(a1 + 20) + *a1 % 0xAu;
      LODWORD(v15) = *a1;
      *a1 /= 0xAu;
    }

    while (v15 > 9);
    goto LABEL_26;
  }

  if (v22 && __p > 0)
  {
    goto LABEL_11;
  }

LABEL_24:
  v11 = (a1 + 8);
  v17 = *a1;
  do
  {
    v18 = *(a1 + 8);
    *(a1 + 8) = v18 - 1;
    *(v18 - 1) = *(a1 + 20) + v17 % 0xA;
    LODWORD(v18) = *a1;
    v17 = *a1 / 0xAu;
    *a1 = v17;
  }

  while (v18 > 9);
LABEL_26:
  v5 = *v11;
  if (v22 < 0)
  {
    operator delete(__p);
  }

LABEL_28:
  std::locale::~locale(&v23);
  return v5;
}

void sub_1000E4F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::locale::~locale(&a15);
    _Unwind_Resume(a1);
  }

  std::locale::~locale(&a15);
  _Unwind_Resume(a1);
}

void sub_1000E4F40(uint64_t *a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a1;
  if (!a1[2])
  {
    goto LABEL_66;
  }

  v6 = *a1;
  v8 = a1 + 1;
  v7 = a1[1];
  *a1 = (a1 + 1);
  *(v7 + 16) = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  v37 = a1;
  v39 = v9;
  if (!v9)
  {
    v13 = 0;
    goto LABEL_65;
  }

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v36 = v10[1];
        if (!v36)
        {
          break;
        }

        do
        {
          v10 = v36;
          v36 = *v36;
        }

        while (v36);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v38 = v10;
  if (a2 == a3)
  {
    v12 = a1;
    sub_1000E4A44(a1, v9);
    if (v10)
    {
      goto LABEL_62;
    }

    goto LABEL_66;
  }

  v14 = a2;
  do
  {
    std::string::operator=((v9 + 32), (v14 + 4));
    std::string::operator=((v9 + 56), (v14 + 7));
    v15 = *v8;
    v16 = (v5 + 1);
    v17 = (v5 + 1);
    if (!*v8)
    {
LABEL_37:
      *v39 = 0;
      *(v39 + 8) = 0;
      *(v39 + 16) = v16;
      *v17 = v39;
      v30 = **v5;
      if (!v30)
      {
        goto LABEL_39;
      }

LABEL_38:
      *v5 = v30;
      goto LABEL_39;
    }

    v18 = *(v39 + 55);
    if (v18 >= 0)
    {
      v19 = *(v39 + 55);
    }

    else
    {
      v19 = *(v39 + 40);
    }

    if (v18 >= 0)
    {
      v20 = (v39 + 32);
    }

    else
    {
      v20 = *(v39 + 32);
    }

    do
    {
      while (1)
      {
        v16 = v15;
        v23 = v15[4];
        v21 = v15 + 4;
        v22 = v23;
        v24 = *(v21 + 23);
        if (v24 >= 0)
        {
          v25 = *(v21 + 23);
        }

        else
        {
          v25 = v21[1];
        }

        if (v24 >= 0)
        {
          v26 = v21;
        }

        else
        {
          v26 = v22;
        }

        if (v25 >= v19)
        {
          v27 = v19;
        }

        else
        {
          v27 = v25;
        }

        v28 = memcmp(v20, v26, v27);
        v29 = v19 < v25;
        if (v28)
        {
          v29 = v28 < 0;
        }

        if (!v29)
        {
          break;
        }

        v15 = *v16;
        v17 = v16;
        if (!*v16)
        {
          goto LABEL_37;
        }
      }

      v15 = v16[1];
    }

    while (v15);
    *v39 = 0;
    *(v39 + 8) = 0;
    *(v39 + 16) = v16;
    v16[1] = v39;
    v30 = **v5;
    if (v30)
    {
      goto LABEL_38;
    }

LABEL_39:
    sub_10002764C(v5[1], v39);
    v5[2] = (v5[2] + 1);
    v9 = v38;
    v39 = v38;
    if (v38)
    {
      v10 = *(v38 + 16);
      if (v10)
      {
        v31 = *v10;
        if (*v10 == v38)
        {
          *v10 = 0;
          while (1)
          {
            v34 = v10[1];
            if (!v34)
            {
              break;
            }

            do
            {
              v10 = v34;
              v34 = *v34;
            }

            while (v34);
          }
        }

        else
        {
          for (v10[1] = 0; v31; v31 = v10[1])
          {
            do
            {
              v10 = v31;
              v31 = *v31;
            }

            while (v31);
          }
        }
      }

      v38 = v10;
      v32 = v14[1];
      if (!v32)
      {
        do
        {
LABEL_50:
          v4 = v14[2];
          v33 = *v4 == v14;
          v14 = v4;
        }

        while (!v33);
        goto LABEL_52;
      }
    }

    else
    {
      v10 = 0;
      v32 = v14[1];
      if (!v32)
      {
        goto LABEL_50;
      }
    }

    do
    {
      v4 = v32;
      v32 = *v32;
    }

    while (v32);
LABEL_52:
    if (!v9)
    {
      break;
    }

    v14 = v4;
  }

  while (v4 != a3);
  v12 = v37;
  sub_1000E4A44(v37, v9);
  if (v10)
  {
LABEL_62:
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    a1 = v12;
    v13 = v10;
LABEL_65:
    sub_1000E4A44(a1, v13);
  }

LABEL_66:
  if (v4 != a3)
  {
    sub_1000E52EC(v5, (v4 + 4));
  }
}

void sub_1000E5280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000E5294(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000E5294(uint64_t *a1)
{
  sub_1000E4A44(*a1, a1[2]);
  v2 = a1[1];
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      a1[1] = v2;
    }

    sub_1000E4A44(*a1, v2);
  }

  return a1;
}

void sub_1000E5488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 55) < 0)
  {
    operator delete(*v4);
    sub_1000E54C0(va);
    _Unwind_Resume(a1);
  }

  sub_1000E54C0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000E54C0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 79) < 0)
      {
        operator delete(*(v2 + 56));
        if ((*(v2 + 55) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 55) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 32));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1000E5530(void *a1, void *a2)
{
  sub_10003BFA8(&v14);
  v5 = *a1;
  if (*a2 != *a1)
  {
    do
    {
      if (v5 != *a1)
      {
        sub_10003C2E4(&v14, ", ", 2);
      }

      sub_1000E578C((v5 + 4));
      if ((v13 & 0x80u) == 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      if ((v13 & 0x80u) == 0)
      {
        v7 = v13;
      }

      else
      {
        v7 = __p[1];
      }

      sub_10003C2E4(&v14, v6, v7);
      if (v13 < 0)
      {
        operator delete(__p[0]);
        v8 = v5[1];
        if (v8)
        {
          do
          {
LABEL_16:
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
          goto LABEL_3;
        }
      }

      else
      {
        v8 = v5[1];
        if (v8)
        {
          goto LABEL_16;
        }
      }

      do
      {
        v9 = v5[2];
        v10 = *v9 == v5;
        v5 = v9;
      }

      while (!v10);
LABEL_3:
      v5 = v9;
    }

    while (v9 != *a2);
  }

  std::stringbuf::str();
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  std::locale::~locale(v16);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1000E574C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_1000E5768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10003C1C4(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E578C(const std::string *a1)
{
  sub_10003BFA8(&v12);
  memset(&v11, 0, sizeof(v11));
  std::string::operator=(&v11, a1);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v11;
  }

  else
  {
    v3 = v11.__r_.__value_.__r.__words[0];
  }

  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v11.__r_.__value_.__l.__size_;
  }

  v5 = sub_10003C2E4(&v12, v3, size);
  v6 = sub_10003C2E4(v5, ": ", 2);
  memset(&v10, 0, sizeof(v10));
  std::string::operator=(&v10, a1 + 1);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v10;
  }

  else
  {
    v7 = v10.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = v10.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v6, v7, v8);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
LABEL_15:
  std::stringbuf::str();
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1000E5988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_1000E599C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      sub_10003C1C4(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  sub_10003C1C4(&a22);
  _Unwind_Resume(a1);
}

void sub_1000E5A0C(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v5 = __str;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
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

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v13 = *(a1 + 8);
  v14 = v13 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v5++);
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    while (v13 != v8)
    {
      v18 = *(v13 - 1);
      v13 -= 3;
      if (v18 < 0)
      {
        operator delete(*v13);
      }
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v15 = (__str + v14);
    if (v13 != v8)
    {
      do
      {
        std::string::operator=(v8++, v5++);
        v14 -= 24;
      }

      while (v14);
      v13 = *(a1 + 8);
    }

    v22 = v13;
    v16 = v13;
    if (v15 != a3)
    {
      v16 = v13;
      do
      {
        while ((SHIBYTE(v15->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          v17 = *&v15->__r_.__value_.__l.__data_;
          v16[2] = v15->__r_.__value_.__r.__words[2];
          *v16 = v17;
          v16 += 3;
          ++v15;
          v22 = v16;
          if (v15 == a3)
          {
            goto LABEL_17;
          }
        }

        sub_100003228(v16, v15->__r_.__value_.__l.__data_, v15->__r_.__value_.__l.__size_);
        ++v15;
        v16 = v22 + 3;
        v22 += 3;
      }

      while (v15 != a3);
    }

LABEL_17:
    *(a1 + 8) = v16;
  }
}

void sub_1000E5CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10004E704(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1000E5CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10004E704(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1000E5D0C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10000FC84();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_10000D444();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, v5, v6);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_1000E5EB8(uint64_t a1)
{
  std::locale::locale(&v27);
  v2 = std::locale::classic();
  if (std::locale::operator==(&v27, v2))
  {
    v3 = *a1;
    do
    {
      v4 = *(a1 + 8);
      *(a1 + 8) = v4 - 1;
      *(v4 - 1) = *(a1 + 20) + v3 - 10 * (((v3 * 0xCCCCCCCCCCCCCCCDLL) >> 64) >> 3);
      v5 = *a1;
      v3 = *a1 / 0xAuLL;
      *a1 = v3;
    }

    while (v5 > 9);
    v6 = *(a1 + 8);
    goto LABEL_28;
  }

  v7 = std::locale::use_facet(&v27, &std::numpunct<char>::id);
  (v7->__vftable[1].__on_zero_shared)(&__p);
  v8 = v26;
  if ((v26 & 0x8000000000000000) != 0)
  {
    v8 = v25;
    if (!v25 || *__p <= 0)
    {
      goto LABEL_24;
    }

LABEL_11:
    v9 = (v7->__vftable[1].~facet_0)(v7);
    v10 = 0;
    p_p = __p;
    if (v26 >= 0)
    {
      p_p = &__p;
    }

    v12 = (a1 + 8);
    LOBYTE(v13) = *p_p;
    v14 = *p_p;
    do
    {
      if (!v14)
      {
        if (++v10 < v8)
        {
          v19 = v26 >= 0 ? &__p : __p;
          v13 = *(v19 + v10);
          if (v13 < 1)
          {
            LOBYTE(v13) = 127;
          }
        }

        v15 = (*v12 - 1);
        *v12 = v15;
        *v15 = v9;
        v14 = v13;
      }

      --v14;
      v17 = *a1;
      v16 = *(a1 + 8);
      *(a1 + 8) = v16 - 1;
      *(v16 - 1) = *(a1 + 20) + v17 - 10 * (((v17 * 0xCCCCCCCCCCCCCCCDLL) >> 64) >> 3);
      v18 = *a1;
      *a1 /= 0xAuLL;
    }

    while (v18 > 9);
    goto LABEL_26;
  }

  if (v26 && __p > 0)
  {
    goto LABEL_11;
  }

LABEL_24:
  v12 = (a1 + 8);
  v20 = *a1;
  do
  {
    v21 = *(a1 + 8);
    *(a1 + 8) = v21 - 1;
    *(v21 - 1) = *(a1 + 20) + v20 - 10 * (((v20 * 0xCCCCCCCCCCCCCCCDLL) >> 64) >> 3);
    v22 = *a1;
    v20 = *a1 / 0xAuLL;
    *a1 = v20;
  }

  while (v22 > 9);
LABEL_26:
  v6 = *v12;
  if (v26 < 0)
  {
    operator delete(__p);
  }

LABEL_28:
  std::locale::~locale(&v27);
  return v6;
}

void sub_1000E6124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::locale::~locale(&a15);
    _Unwind_Resume(a1);
  }

  std::locale::~locale(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E6164(const std::string **a1, const std::string **a2)
{
  sub_10003BFA8(&v10);
  for (i = *a1; i != *a2; ++i)
  {
    if (i != *a1)
    {
      sub_10003C2E4(&v10, ", ", 2);
    }

    memset(&__p, 0, sizeof(__p));
    std::string::operator=(&__p, i);
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

    sub_10003C2E4(&v10, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::stringbuf::str();
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1000E6350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_1000E6368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10003C1C4(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E6390()
{
  v1 = 0x500000000;
  v2 = &unk_10045B590;
  v3 = off_10045B5A8;
  sub_1000E10E0(&unk_10045DF18, &v1);
  __cxa_atexit(sub_1000E1214, &unk_10045DF18, &_mh_execute_header);
  v1 = 0x300000000;
  v2 = &unk_10045B5D0;
  v3 = off_10045B5E0;
  sub_1000E10E0(&unk_10045DF30, &v1);
  __cxa_atexit(sub_1000E1214, &unk_10045DF30, &_mh_execute_header);
  v1 = 0xC00000000;
  v2 = &unk_10045B5F8;
  v3 = off_10045B628;
  sub_1000E10E0(&qword_10045DF48, &v1);
  __cxa_atexit(sub_1000E1214, &qword_10045DF48, &_mh_execute_header);
  v1 = 0x500000000;
  v2 = &unk_10045B688;
  v3 = off_10045B6A0;
  sub_1000E10E0(&unk_10045DF60, &v1);
  return __cxa_atexit(sub_1000E1214, &unk_10045DF60, &_mh_execute_header);
}

void sub_1000E653C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000E65AC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1000E661C(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  sub_1000E6840(v20, 16);
  if (a3)
  {
    v7 = *(a2 + 23);
    v8 = v7 >= 0 ? a2 : *a2;
    v9 = v7 >= 0 ? *(a2 + 23) : a2[1];
    sub_10003C2E4(&v21, v8, v9);
    if (a3 != 1)
    {
      v10 = a2 + 3;
      v11 = 24 * a3 - 24;
      do
      {
        v12 = *(a1 + 23);
        if (v12 >= 0)
        {
          v13 = a1;
        }

        else
        {
          v13 = *a1;
        }

        if (v12 >= 0)
        {
          v14 = *(a1 + 23);
        }

        else
        {
          v14 = a1[1];
        }

        sub_10003C2E4(&v21, v13, v14);
        v15 = *(v10 + 23);
        if (v15 >= 0)
        {
          v16 = v10;
        }

        else
        {
          v16 = *v10;
        }

        if (v15 >= 0)
        {
          v17 = *(v10 + 23);
        }

        else
        {
          v17 = v10[1];
        }

        sub_10003C2E4(&v21, v16, v17);
        v10 += 3;
        v11 -= 24;
      }

      while (v11);
    }
  }

  std::stringbuf::str();
  v21 = v18;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_1000E6840(uint64_t a1, int a2)
{
  *(a1 + 176) = 0;
  std::locale::locale((a1 + 32));
  *(a1 + 88) = 0;
  v4 = a1 + 88;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = a2;
  if ((a2 & 8) != 0)
  {
    *(a1 + 112) = v4;
    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4;
  }

  if ((a2 & 0x10) != 0)
  {
    *(a1 + 112) = v4;
    std::string::resize((a1 + 88), 0x16uLL, 0);
    v5 = *(a1 + 111);
    if (v5 < 0)
    {
      v5 = *(a1 + 96);
    }

    *(a1 + 64) = v4;
    *(a1 + 72) = v4;
    *(a1 + 80) = v4 + v5;
  }

  return a1;
}

void sub_1000E69B0(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 24) = v3;
  std::locale::~locale((v1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t *sub_1000E6A00(uint64_t *a1, uint64_t *a2, void *__sb)
{
  v5 = a2[1];
  *a1 = v5;
  *(a1 + *(v5 - 24)) = a2[2];
  a1[1] = 0;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, __sb);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v7 = a2[3];
  a1[2] = v7;
  *(a1 + *(v7 - 24) + 16) = a2[4];
  v8 = *a2;
  *a1 = *a2;
  *(a1 + *(v8 - 24)) = a2[5];
  a1[2] = a2[6];
  return a1;
}

void sub_1000E6C18(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = a1[1] - *a1;
  if (v3)
  {
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 4);
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    do
    {
      v9 = *(a2 + 24);
      if (!v9)
      {
        sub_1000DB498();
      }

      (*(*v9 + 48))(v9, *a1 + v6);
      v6 += 48;
      --v8;
    }

    while (v8);
  }
}

void sub_1000E7378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, std::runtime_error a37)
{
  if (v39 < 0)
  {
    operator delete(v38);
  }

  __cxa_end_catch();
  if (a33 < 0)
  {
    operator delete(__p);
  }

  sub_10000CEB0(&a35);
  sub_1000DA348(v37);
  _Unwind_Resume(a1);
}

void sub_1000E7480(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1000E748CLL);
  }

  sub_10000D388(a1);
}

void sub_1000E749C(std::runtime_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

void sub_1000E7530(std::runtime_error *a1)
{
  v8 = &off_100431F30;
  std::runtime_error::runtime_error(&v4, a1);
  imp = a1[1].__imp_.__imp_;
  v5[0] = &off_100431E10;
  v5[1] = imp;
  if (imp)
  {
    (*(*imp + 24))(imp);
  }

  v6 = a1[2];
  v7 = a1[3].__vftable;
  v4.__vftable = &off_10043A948;
  v5[0] = off_10043A980;
  v8 = &off_10043A9B8;
  sub_10000D87C(v5, &a1[1]);
  sub_1000EB46C();
}

void sub_1000E7820(std::runtime_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

void sub_1000E7D3C(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1[2])
  {
    v6 = ~(a2 + (a2 >> 3)) + ((a2 + (a2 >> 3)) << 21);
    v7 = 21 * ((265 * (v6 ^ (v6 >> 24))) ^ ((265 * (v6 ^ (v6 >> 24))) >> 14));
    v8 = (a1[1] - 1) & (2147483649u * (v7 ^ (v7 >> 28)));
    v9 = *(a1[5] + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        if (v10[2] == a2)
        {
LABEL_10:
          v13 = v10[3];
          v14 = v10[4];
          v12 = (v10 + 3);
          if (v13 != v14)
          {
            v15 = v13;
            while (*(v15 + 16) != a3)
            {
              v15 += 48;
              v13 += 48;
              if (v15 == v14)
              {
                goto LABEL_14;
              }
            }

            sub_1000E8154(v12, v13);
            return;
          }
        }

        else
        {
          v11 = v10[1];
LABEL_6:
          if ((v11 & 0x7FFFFFFFFFFFFFFFLL) == v8)
          {
            while (1)
            {
              v10 = *v10;
              if (!v10)
              {
                break;
              }

              v11 = v10[1];
              if ((v11 & 0x8000000000000000) == 0)
              {
                if (v10[2] != a2)
                {
                  goto LABEL_6;
                }

                goto LABEL_10;
              }
            }
          }
        }
      }
    }
  }

LABEL_14:
  v16 = *(a2 + 8);
  v17 = strlen((v16 & 0x7FFFFFFFFFFFFFFFLL));
  if (v17 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_10000D39C();
  }

  v18 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v28) = v17;
  if (v17)
  {
    memmove(&__dst, (v16 & 0x7FFFFFFFFFFFFFFFLL), v17);
  }

  *(&__dst + v18) = 0;
  sub_1000DF33C(&__dst, buf);
  *v29 = *buf;
  v30 = *&buf[16];
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst);
  }

  v19 = *(a4 + 8);
  v20 = strlen((v19 & 0x7FFFFFFFFFFFFFFFLL));
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_10000D39C();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    operator new();
  }

  v26 = v20;
  if (v20)
  {
    memmove(&__p, (v19 & 0x7FFFFFFFFFFFFFFFLL), v20);
  }

  *(&__p + v21) = 0;
  sub_1000DF33C(&__p, buf);
  __dst = *buf;
  v28 = *&buf[16];
  if (v26 < 0)
  {
    operator delete(__p);
  }

  if (qword_10045B050 != -1)
  {
    sub_100383D7C();
  }

  v22 = qword_10045B058;
  if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    if (SHIBYTE(v28) < 0)
    {
      goto LABEL_38;
    }

LABEL_41:
    if (SHIBYTE(v30) < 0)
    {
      goto LABEL_39;
    }

    return;
  }

  p_dst = &__dst;
  if (v28 < 0)
  {
    p_dst = __dst;
  }

  v24 = v29;
  if (v30 < 0)
  {
    v24 = v29[0];
  }

  *buf = 136315650;
  *&buf[4] = p_dst;
  *&buf[12] = 2048;
  *&buf[14] = a3;
  *&buf[22] = 2080;
  v32 = v24;
  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "WARNING: Attempt to unregister listener %s (%p) not registered (anymore?) for event %s", buf, 0x20u);
  if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

LABEL_38:
  operator delete(__dst);
  if (SHIBYTE(v30) < 0)
  {
LABEL_39:
    operator delete(v29[0]);
  }
}

void sub_1000E8104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E8154(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 48;
  v5 = *(a1 + 8);
  if (a2 + 48 != v5)
  {
    while (1)
    {
      v6 = *(v4 + 8);
      *(v4 - 48) = *v4;
      if (!v6)
      {
        break;
      }

      v7 = (*(*v6 + 24))(v6);
      v8 = *(v4 - 40);
      *(v4 - 40) = v7;
      if (v8)
      {
        goto LABEL_6;
      }

LABEL_7:
      *(v4 - 32) = *(v4 + 16);
      v10 = *(v4 + 32);
      v9 = *(v4 + 40);
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = *(v4 - 8);
      *(v4 - 16) = v10;
      *(v4 - 8) = v9;
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v4 += 48;
      if (v4 == v5)
      {
        v5 = *(a1 + 8);
        v12 = v4 - 48;
        if (v5 == v12)
        {
          goto LABEL_25;
        }

LABEL_19:
        while (2)
        {
          v13 = *(v5 - 8);
          if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v13->__on_zero_shared)(v13);
            std::__shared_weak_count::__release_weak(v13);
            v14 = *(v5 - 40);
            if (v14)
            {
LABEL_22:
              (*(*v14 + 8))(v14);
            }
          }

          else
          {
            v14 = *(v5 - 40);
            if (v14)
            {
              goto LABEL_22;
            }
          }

          v5 -= 48;
          if (v5 == v12)
          {
            goto LABEL_25;
          }

          continue;
        }
      }
    }

    v8 = *(v4 - 40);
    *(v4 - 40) = 0;
    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_6:
    (*(*v8 + 8))(v8);
    goto LABEL_7;
  }

  v12 = a2;
  if (v5 != a2)
  {
    goto LABEL_19;
  }

LABEL_25:
  *(a1 + 8) = v12;
  return a2;
}

double sub_1000E8380(uint64_t a1, uint64_t a2)
{
  v4 = strlen((a2 & 0x7FFFFFFFFFFFFFFFLL));
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v10 = v4;
  if (v4)
  {
    memmove(&__dst, (a2 & 0x7FFFFFFFFFFFFFFFLL), v4);
  }

  *(&__dst + v5) = 0;
  sub_1000DF33C(&__dst, &v7);
  if (v10 < 0)
  {
    operator delete(__dst);
  }

  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  return result;
}