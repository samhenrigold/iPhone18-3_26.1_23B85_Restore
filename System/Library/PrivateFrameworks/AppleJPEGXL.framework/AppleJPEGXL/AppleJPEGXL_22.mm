void sub_240BCCDBC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 712) = v4;
    operator delete(v4);
  }

  sub_240B7BB60(v1 + 8);
  _Unwind_Resume(a1);
}

__n128 sub_240BCCDE4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = v2;
  *(a1 + 72) = &unk_2852A1938;
  v5 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v5;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  *(a2 + 312) = 0;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0;
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 344) = 0;
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0;
  *(a1 + 376) = *(a2 + 376);
  result = *(a2 + 384);
  *(a1 + 384) = result;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  return result;
}

double sub_240BCCFC8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 16) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 16) = 0u;
  v3 = *(a2 + 104);
  v4 = *(a2 + 120);
  v5 = *(a2 + 136);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 136) = v5;
  *(a1 + 120) = v4;
  *(a1 + 104) = v3;
  v6 = *(a2 + 168);
  v7 = *(a2 + 184);
  v8 = *(a2 + 200);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 200) = v8;
  *(a1 + 184) = v7;
  *(a1 + 168) = v6;
  v9 = *(a2 + 40);
  v10 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v10;
  *(a1 + 40) = v9;
  v11 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v11;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 248) = 0;
  *(a2 + 232) = 0u;
  v12 = *(a2 + 256);
  v13 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 256) = v12;
  *(a1 + 272) = v13;
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 320) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 328) = 0;
  *(a2 + 312) = 0u;
  v14 = *(a2 + 336);
  *(a1 + 341) = *(a2 + 341);
  *(a1 + 336) = v14;
  *(a1 + 352) = *(a2 + 352);
  v15 = *(a2 + 360);
  v16 = *(a2 + 376);
  v17 = *(a2 + 392);
  *(a1 + 401) = *(a2 + 401);
  *(a1 + 376) = v16;
  *(a1 + 392) = v17;
  *(a1 + 360) = v15;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a2 + 440) = 0;
  *(a2 + 424) = 0u;
  *(a1 + 464) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = *(a2 + 464);
  *(a2 + 464) = 0;
  *(a2 + 448) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 480) = *(a2 + 480);
  *(a2 + 488) = 0;
  *(a2 + 472) = 0u;
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  *(a2 + 520) = 0;
  *(a2 + 504) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a2 + 544) = 0;
  *(a2 + 528) = 0u;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a2 + 568) = 0;
  *(a2 + 552) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  *(a2 + 592) = 0;
  *(a2 + 576) = 0u;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 608) = *(a2 + 608);
  *(a2 + 616) = 0;
  *(a2 + 600) = 0u;
  v18 = *(a2 + 624);
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 624) = v18;
  v19 = *(a2 + 648);
  v20 = *(a2 + 664);
  v21 = *(a2 + 680);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 664) = v20;
  *(a1 + 680) = v21;
  *(a1 + 648) = v19;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = 0;
  *(a2 + 704) = 0u;
  v22 = *(a2 + 728);
  *(a1 + 744) = *(a2 + 744);
  *(a1 + 728) = v22;
  *(a2 + 728) = 0;
  *(a2 + 736) = 0u;
  v23 = *(a2 + 752);
  *(a1 + 768) = *(a2 + 768);
  *(a1 + 752) = v23;
  v24 = *(a2 + 792);
  v25 = *(a2 + 808);
  v26 = *(a2 + 824);
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 808) = v25;
  *(a1 + 824) = v26;
  *(a1 + 792) = v24;
  *(a1 + 776) = *(a2 + 776);
  *(a1 + 848) = &unk_2852A1938;
  v27 = *(a2 + 856);
  *(a1 + 864) = *(a2 + 864);
  *(a1 + 856) = v27;
  *(a1 + 872) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 880) = *(a2 + 880);
  *(a2 + 888) = 0;
  *(a2 + 872) = 0u;
  *(a1 + 912) = 0;
  *(a1 + 896) = 0u;
  *(a1 + 896) = *(a2 + 896);
  *(a1 + 912) = *(a2 + 912);
  *(a2 + 912) = 0;
  *(a2 + 896) = 0u;
  *(a1 + 936) = 0;
  *(a1 + 920) = 0u;
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);
  *(a2 + 936) = 0;
  *(a2 + 920) = 0u;
  *(a1 + 960) = 0;
  *(a1 + 944) = 0u;
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 960) = *(a2 + 960);
  *(a2 + 960) = 0;
  *(a2 + 944) = 0u;
  *(a1 + 984) = 0;
  *(a1 + 968) = 0u;
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 976) = *(a2 + 976);
  *(a2 + 984) = 0;
  *(a2 + 968) = 0u;
  *(a1 + 1008) = 0;
  *(a1 + 992) = 0u;
  *(a1 + 992) = *(a2 + 992);
  *(a1 + 1008) = *(a2 + 1008);
  *(a2 + 1008) = 0;
  *(a2 + 992) = 0u;
  *(a1 + 1032) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1016) = *(a2 + 1016);
  *(a1 + 1024) = *(a2 + 1024);
  *(a2 + 1032) = 0;
  *(a2 + 1016) = 0u;
  *(a1 + 1056) = 0;
  *(a1 + 1040) = 0u;
  *(a1 + 1040) = *(a2 + 1040);
  *(a1 + 1056) = *(a2 + 1056);
  *(a2 + 1056) = 0;
  *(a2 + 1040) = 0u;
  *(a1 + 1080) = 0;
  *(a1 + 1064) = 0u;
  *(a1 + 1064) = *(a2 + 1064);
  *(a1 + 1072) = *(a2 + 1072);
  *(a2 + 1080) = 0;
  *(a2 + 1064) = 0u;
  *(a1 + 1104) = 0;
  *(a1 + 1088) = 0u;
  *(a1 + 1088) = *(a2 + 1088);
  *(a1 + 1104) = *(a2 + 1104);
  *(a2 + 1104) = 0;
  *(a2 + 1088) = 0u;
  *(a1 + 1112) = *(a2 + 1112);
  *(a1 + 1128) = 0u;
  *(a1 + 1120) = 0;
  *(a1 + 1120) = *(a2 + 1120);
  *(a1 + 1136) = *(a2 + 1136);
  *(a2 + 1136) = 0;
  *(a2 + 1120) = 0u;
  *(a1 + 1144) = *(a2 + 1144);
  *(a1 + 1152) = 0;
  *(a1 + 1160) = 0u;
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1168) = *(a2 + 1168);
  *(a2 + 1168) = 0;
  *(a2 + 1152) = 0u;
  *(a1 + 1192) = 0;
  *(a1 + 1176) = 0u;
  *(a1 + 1176) = *(a2 + 1176);
  *(a1 + 1184) = *(a2 + 1184);
  *(a2 + 1192) = 0;
  *(a2 + 1176) = 0u;
  return result;
}

uint64_t sub_240BCD4F0(uint64_t a1)
{
  v2 = *(a1 + 1176);
  if (v2)
  {
    *(a1 + 1184) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 1152);
  sub_240BA4110(&v5);
  sub_240B8D650(a1 + 848);
  if (*(a1 + 751) < 0)
  {
    operator delete(*(a1 + 728));
  }

  v3 = *(a1 + 704);
  if (v3)
  {
    *(a1 + 712) = v3;
    operator delete(v3);
  }

  sub_240B7BB60(a1 + 8);
  return a1;
}

void sub_240BCD56C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8) - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_240B26918(a1, v4);
  }

  else if (!v3)
  {
    *(a1 + 8) = *a1 + a2;
  }
}

void *sub_240BCD594(_BYTE *a1, uint64_t *a2)
{
  v4 = *a2;
  if (a1[8] == 1)
  {
    *(v4 + 76) = 1;
    *(v4 + 8) = 0;
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    if (v5 != v6)
    {
      bzero(v5, v6 - v5);
    }

    *(v4 + 72) = 1;
  }

  v7 = *a1;
  v16 = 0;
  v17 = v7;
  v18 = 0;
  v19 = v7;
  v20 = 0;
  v21 = sub_240BFA4C4;
  *a2 = 0;
  sub_240BC68B8(&v16, v4);
  v8 = a2[1];
  v17 = v8;
  v9 = *a1;
  v10 = *(*a1 + 88);
  if (v10 >= *(*a1 + 96))
  {
    v14 = sub_240BCD9E0((v9 + 80), &v16);
    v11 = v20;
  }

  else
  {
    v11 = 0;
    v10[1] = v8;
    v12 = v16;
    v13 = v18;
    v16 = 0;
    *v10 = v12;
    v18 = 0;
    v10[2] = v13;
    v10[3] = v19;
    v10[4] = v20;
    v10[5] = v21;
    v14 = (v10 + 6);
  }

  *(v9 + 88) = v14;
  ++*(*a1 + 64);
  v20 = 0;
  if (v11)
  {
    v21();
  }

  sub_240BC6990(&v18, 0);
  return sub_240BC68B8(&v16, 0);
}

uint64_t sub_240BCD6EC(uint64_t a1)
{
  v11 = (a1 + 2224);
  sub_240BCD860(&v11);
  v11 = (a1 + 2192);
  sub_240B30C38(&v11);
  *(a1 + 1992) = &unk_2852A1CB8;
  v2 = *(a1 + 2024);
  if (v2)
  {
    *(a1 + 2032) = v2;
    operator delete(v2);
  }

  for (i = 1976; i != 1856; i -= 40)
  {
    sub_240B22320((a1 + i));
  }

  if (*(a1 + 1863) < 0)
  {
    operator delete(*(a1 + 1840));
  }

  v4 = *(a1 + 1776);
  *(a1 + 1776) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 96) = &unk_2852A1C90;
  v11 = (a1 + 424);
  sub_240B4B18C(&v11);
  *(a1 + 144) = &unk_2852A1CB8;
  v5 = *(a1 + 176);
  if (v5)
  {
    *(a1 + 184) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    *(a1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    *(a1 + 56) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    *(a1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v9;
    operator delete(v9);
  }

  return a1;
}

void sub_240BCD860(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240BCD8B4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_240BCD8B4(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = sub_240BCD904(i))
  {
    i -= 448;
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_240BCD904(uint64_t a1)
{
  v6 = (a1 + 416);
  sub_240B30C38(&v6);
  *(a1 + 216) = &unk_2852A1CB8;
  v2 = *(a1 + 248);
  if (v2)
  {
    *(a1 + 256) = v2;
    operator delete(v2);
  }

  for (i = 200; i != 80; i -= 40)
  {
    sub_240B22320((a1 + i));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  result = *a1;
  *a1 = 0;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

uint64_t sub_240BCD9E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 4) + 1;
  if (v5 > 0x555555555555555)
  {
    sub_240B228BC();
  }

  if (0x5555555555555556 * ((a1[2] - v2) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - v2) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - v2) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  v24 = a1;
  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_240B2291C();
  }

  v8 = 16 * (v4 >> 4);
  v21 = 0;
  v22 = v8;
  v9 = *a2;
  *a2 = 0;
  *v8 = v9;
  *(v8 + 8) = *(a2 + 1);
  a2[2] = 0;
  *(v8 + 24) = a2[3];
  v10 = *(a2 + 2);
  a2[4] = 0;
  *(v8 + 32) = v10;
  v23 = (v8 + 48);
  v11 = v8 - v4;
  v27 = v8 - v4;
  v28 = (v8 - v4);
  v25[0] = a1;
  v25[1] = &v27;
  v25[2] = &v28;
  if (v2 == v3)
  {
    v26 = 1;
  }

  else
  {
    v12 = (16 * (v4 >> 4) - v4);
    v13 = v2;
    do
    {
      v14 = *v13;
      *v13 = 0;
      *v12 = v14;
      v12[1] = v13[1];
      v15 = v13[2];
      v13[2] = 0;
      v12[2] = v15;
      v12[3] = v13[3];
      v16 = v13[4];
      v13[4] = 0;
      v12[4] = v16;
      v12[5] = v13[5];
      v13 += 6;
      v12 += 6;
    }

    while (v13 != v3);
    v28 = v12;
    v26 = 1;
    do
    {
      sub_240BC6B1C(v2);
      v2 += 48;
    }

    while (v2 != v3);
  }

  sub_240BCDC98(v25);
  v17 = *a1;
  *a1 = v11;
  v18 = a1[2];
  v20 = v23;
  *(a1 + 1) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  sub_240BCDC44(&v21);
  return v20;
}

void sub_240BCDBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_240BCDC98(va1);
  sub_240BCDC44(va);
  _Unwind_Resume(a1);
}

uint64_t sub_240BCDBF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(a1 + 40))();
  }

  sub_240BC6990((a1 + 16), 0);
  sub_240BC68B8(a1, 0);
  return a1;
}

uint64_t sub_240BCDC44(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 48;
    sub_240BC6B1C(v3 - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_240BCDC98(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 48;
      sub_240BC6B1C(v3);
    }
  }

  return a1;
}

void sub_240BCDCF4(void ***a1, char **a2, char **a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      sub_240B31EE0(a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v11;
      }

      sub_240B8D4AC(a1, v12);
    }

    sub_240B228BC();
  }

  v13 = a1[1] - v9;
  if (0xAAAAAAAAAAAAAAABLL * (v13 >> 3) >= a4)
  {
    v14 = sub_240BCE1B0(a2, a3, v9);
    v15 = a1[1];
    if (v15 != v14)
    {
      v16 = a1[1];
      do
      {
        v18 = *(v16 - 24);
        v16 -= 24;
        v17 = v18;
        if (v18)
        {
          *(v15 - 16) = v17;
          operator delete(v17);
        }

        v15 = v16;
      }

      while (v16 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    sub_240BCE1B0(a2, (a2 + v13), v9);
    a1[1] = sub_240B8D4FC(a1, a2 + v13, a3, a1[1]);
  }
}

uint64_t *sub_240BCDE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = (a3 + 72);
    do
    {
      *(v5 - 9) = *v4;
      v6 = *(v4 + 16);
      v7 = *(v4 + 32);
      v8 = *(v4 + 48);
      *(v5 - 1) = *(v4 + 64);
      *(v5 - 3) = v8;
      *(v5 - 5) = v7;
      *(v5 - 7) = v6;
      if (v4 != v5 - 9)
      {
        sub_240B343B0(v5, *(v4 + 72), *(v4 + 80), (*(v4 + 80) - *(v4 + 72)) >> 2);
        v9 = v5[3];
        v10 = *(v4 + 96);
        v11 = *(v4 + 104);
        v12 = v11 - v10;
        v13 = v5[5];
        if (v13 - v9 < (v11 - v10))
        {
          if (v9)
          {
            v5[4] = v9;
            operator delete(v9);
            v13 = 0;
            v5[3] = 0;
            v5[4] = 0;
            v5[5] = 0;
          }

          v14 = v12 >> 3;
          if (!((v12 >> 3) >> 61))
          {
            if (v13 >> 2 > v14)
            {
              v14 = v13 >> 2;
            }

            if (v13 >= 0x7FFFFFFFFFFFFFF8)
            {
              v15 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v15 = v14;
            }

            sub_240B3C80C(v5 + 3, v15);
          }

          sub_240B228BC();
        }

        v16 = v5[4];
        v17 = v16 - v9;
        if (v16 - v9 >= v12)
        {
          if (v11 != v10)
          {
            memmove(v5[3], *(v4 + 96), v11 - v10);
          }

          v20 = &v9[v12];
        }

        else
        {
          if (v16 != v9)
          {
            memmove(v5[3], *(v4 + 96), v16 - v9);
            v16 = v5[4];
          }

          v18 = (v10 + v17);
          v19 = v11 - (v10 + v17);
          if (v19)
          {
            memmove(v16, v18, v19);
          }

          v20 = &v16[v19];
        }

        v5[4] = v20;
      }

      v4 += 120;
      v5 += 15;
    }

    while (v4 != a2);
    return v5 - 9;
  }

  return a3;
}

uint64_t sub_240BCE014(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 2);
      *a3 = v6;
      if (v5 != a3)
      {
        sub_240BCE08C((a3 + 24), *(v5 + 3), *(v5 + 4), (*(v5 + 4) - *(v5 + 3)) >> 1);
      }

      v5 += 3;
      a3 += 48;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_240BCE08C(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_240B8D2B8(v6, v10);
    }

    sub_240B228BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void **sub_240BCE1B0(char **a1, char **a2, void **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        sub_240B28A14(a3, *v5, v5[1], v5[1] - *v5);
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_240BCE214(uint64_t *result)
{
  if (result[2] == *result)
  {
    operator new();
  }

  return result;
}

void sub_240BCE2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_240BCE560(va);
  _Unwind_Resume(a1);
}

uint64_t sub_240BCE2D4(uint64_t *a1, uint64_t *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x92492492492492)
  {
    sub_240B228BC();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 6);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 6)) >= 0x49249249249249)
  {
    v5 = 0x92492492492492;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    if (v5 <= 0x92492492492492)
    {
      operator new();
    }

    sub_240B2291C();
  }

  v12 = 0;
  v13 = 448 * v2;
  v14 = (448 * v2);
  sub_240B309B8(448 * v2, *a2);
  *&v14 = 448 * v2 + 448;
  v6 = a1[1];
  v7 = 448 * v2 + *a1 - v6;
  sub_240BCE4A0(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_240BCE560(&v12);
  return v11;
}

void sub_240BCE428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_240BCE560(va);
  _Unwind_Resume(a1);
}

uint64_t sub_240BCE43C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_240BCE4A0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      sub_240B7B5CC(a4, v6);
      v6 += 56;
      a4 = v11 + 448;
      v11 += 448;
    }

    while (v6 != a3);
    v9 = 1;
    do
    {
      sub_240BCD904(v5);
      v5 += 56;
    }

    while (v5 != a3);
  }

  return sub_240BCE5B4(v8);
}

uint64_t sub_240BCE560(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 448;
    sub_240BCD904(v3 - 448);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_240BCE5B4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 448;
      sub_240BCD904(v3);
    }
  }

  return a1;
}

uint64_t JxlEncoderUseBoxes(uint64_t a1)
{
  if (*(a1 + 2864) == 1)
  {
    *(a1 + 2852) = 129;
    return 1;
  }

  else
  {
    result = 0;
    *(a1 + 298) = 1;
  }

  return result;
}

uint64_t JxlEncoderAddImageFrame(unsigned __int8 *a1, __int128 *a2, uint64_t a3, unint64_t a4)
{
  v75 = 0;
  v76 = 0;
  if (sub_240BCC2D8(a1, &v76, &v75))
  {
    v8 = *a1;
    v9 = 1;
    *(v8 + 2852) = 1;
  }

  else
  {
    v11 = v75;
    v10 = v76;
    sub_240BA3EBC(v45, v76, v75, *(*a1 + 624));
    v12 = v73;
    if (*(&v73 + 1) == v73 || (v77 = *a2, v78 = *(a2 + 2), sub_240BA3FD4(v73, &v77, *&v45[0], *(&v45[0] + 1)), *v12 = a3, v12[1] = a4, (v12[6] - 1) * v12[8] + v12[7] * v12[5] > a4))
    {
      *(*a1 + 2852) = 129;
      v9 = 1;
    }

    else
    {
      v15[2] = v45[2];
      v15[3] = v45[3];
      v16 = v46;
      v15[0] = v45[0];
      v15[1] = v45[1];
      v17[0] = &unk_2852A1938;
      v17[1] = v47[1];
      v18 = v48;
      v19 = v49;
      v20 = v50;
      v49 = 0uLL;
      v21 = v51;
      v22 = v52;
      v50 = 0;
      v51 = 0uLL;
      v52 = 0;
      v23 = v53;
      v53 = 0uLL;
      v25 = v55;
      v24 = v54;
      v26 = v56;
      v54 = 0;
      v55 = 0uLL;
      v56 = 0;
      v27 = v57;
      v57 = 0uLL;
      v29 = v59;
      v28 = v58;
      v30 = v60;
      v58 = 0;
      v59 = 0uLL;
      v60 = 0;
      v31 = v61;
      v61 = 0uLL;
      v32 = v62;
      v33 = v63;
      v62 = 0;
      v63 = 0;
      v13 = v64;
      v64 = 0uLL;
      v34 = v13;
      v35 = v65;
      v65 = 0uLL;
      v36 = v66;
      v37 = v67;
      v38 = v68;
      v66 = 0;
      v67 = 0;
      v68 = 0uLL;
      v39 = v69;
      v40 = v70;
      v41 = v71;
      v70 = 0;
      v71 = 0uLL;
      v42 = v72;
      v43 = v73;
      v44 = v74;
      v73 = 0uLL;
      v74 = 0;
      v9 = sub_240BCE940(a1, v10, v11, 0, v15);
      *&v77 = &v43;
      sub_240BA4110(&v77);
      sub_240B8D650(v17);
    }

    *&v77 = &v73;
    sub_240BA4110(&v77);
    sub_240B8D650(v47);
  }

  return v9;
}

void sub_240BCE924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  sub_240BA419C(&a9);
  sub_240BA419C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_240BCE940(unsigned __int8 *a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  v5 = a5;
  v65[109] = *MEMORY[0x277D85DE8];
  *v40 = xmmword_240C85160;
  *v41 = 0;
  if (*(a5 + 64) == 1)
  {
    (*(a5 + 24))(*(a5 + 16), v40);
  }

  else
  {
    sub_240BA2B68(a5, v40);
  }

  v10 = v40[0];
  v12 = LODWORD(v40[0]) == 2 || LODWORD(v40[0]) == 4;
  v13 = *a1;
  if ((*(*a1 + 2867) & 1) == 0 || *(v13 + 2865) == 1)
  {
    goto LABEL_12;
  }

  v16 = *(v13 + 2700);
  if (LODWORD(v40[0]) > 2)
  {
    if (v16 != 3)
    {
      goto LABEL_12;
    }
  }

  else if (v16 != 1)
  {
    goto LABEL_12;
  }

  v17 = a1[8];
  if (v17 == 1 && *(v13 + 345) == 1)
  {
    goto LABEL_12;
  }

  v18 = *(v13 + 624);
  if (v12 && v18 == 0)
  {
    goto LABEL_12;
  }

  for (i = *(v13 + 632); i != *(v13 + 640); i += 96)
  {
    if (!*(i + 12))
    {
      v21 = *(i + 28) != 0;
      if (v17)
      {
        goto LABEL_31;
      }

      goto LABEL_70;
    }
  }

  v21 = 0;
  if ((v17 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_31:
  if ((a1[772] & 1) == 0 && !*(a1 + 168) && (*(v13 + 557) & 1) == 0 && *(a1 + 16) == 9)
  {
    v22 = *(a1 + 190);
    if (v22)
    {
      if (v22 == 2 && *(a1 + 191) != *(v13 + 332))
      {
        goto LABEL_70;
      }
    }

    else if ((a1[764] & 7) != 0)
    {
      goto LABEL_70;
    }

    v23 = a1[759];
    if (v23 < 0)
    {
      v23 = *(a1 + 93);
    }

    if (!v23)
    {
      v24 = v18 == 1 && v21;
      if (v24 || !v18)
      {
        v25 = *(v13 + 332);
        if (v25 <= 0x10 && HIDWORD(v40[0]) <= 5 && ((1 << SBYTE4(v40[0])) & 0x2C) != 0)
        {
          v26 = HIDWORD(v40[0]) == 3 || HIDWORD(v40[0]) == 5;
          v27 = v26;
          if (v25 < 9 != v27)
          {
            if (SLODWORD(v40[0]) > 2)
            {
              if (LODWORD(v40[0]) == 4)
              {
                goto LABEL_69;
              }

              if (LODWORD(v40[0]) != 3)
              {
                goto LABEL_70;
              }
            }

            else if (LODWORD(v40[0]) != 1)
            {
              if (LODWORD(v40[0]) != 2)
              {
                goto LABEL_70;
              }

LABEL_69:
              if (!v21)
              {
                goto LABEL_70;
              }

              goto LABEL_65;
            }

            if (v21)
            {
              goto LABEL_70;
            }

LABEL_65:
            v28 = sub_240BA2B68;
            v29 = sub_240BA2B3C;
            v30 = sub_240BA2B1C;
            v31 = sub_240BA2AE8;
            v32 = nullsub_31;
            if (*(v5 + 64) == 1)
            {
              v28 = *(v5 + 24);
              v29 = *(v5 + 32);
              v30 = *(v5 + 40);
              v31 = *(v5 + 48);
              v32 = *(v5 + 56);
              v5 = *(v5 + 16);
            }

            if (v25 <= 8)
            {
              v56 = v5;
              v57 = v28;
              v58 = v29;
              v59 = v30;
              v60 = v31;
              v61 = v32;
              v49 = a2;
              v50 = v25;
              v48 = a3;
              v42 = LODWORD(v40[0]);
              HIBYTE(v46) = LODWORD(v40[1]) == 2;
              sub_240B22DA4(&v47, 0x10000uLL);
              sub_240BFA640(&v62);
            }

            if (v25 <= 0xD)
            {
              v56 = v5;
              v57 = v28;
              v58 = v29;
              v59 = v30;
              v60 = v31;
              v61 = v32;
              v49 = a2;
              v50 = v25;
              v48 = a3;
              v42 = LODWORD(v40[0]);
              HIBYTE(v46) = LODWORD(v40[1]) == 2;
              sub_240B22DA4(&v47, 0x10000uLL);
              sub_240BFA640(&v62);
            }

            if (v25 == 14)
            {
              v56 = v5;
              v57 = v28;
              v58 = v29;
              v59 = v30;
              v60 = v31;
              v61 = v32;
              v49 = a3;
              v50 = a2;
              v48 = LODWORD(v40[0]);
              HIBYTE(v46) = LODWORD(v40[1]) == 2;
              sub_240B22DA4(&v47, 0x10000uLL);
              sub_240BFA640(&v62);
            }

            v43[0] = v5;
            v43[1] = v28;
            v44[0] = v29;
            v44[1] = v30;
            v45[0] = v31;
            v45[1] = v32;
            v64 = v25;
            v49 = a3;
            v50 = a2;
            v48 = LODWORD(v40[0]);
            LOBYTE(v42) = LODWORD(v40[1]) == 2;
            sub_240B22DA4(&v63, 0x10000uLL);
            sub_240BFA640(&v47);
          }
        }
      }
    }
  }

LABEL_70:
  if ((a4 & 1) == 0)
  {
    v33 = sub_240BD1764(v5);
    v13 = *a1;
    if ((v33 & 1) == 0)
    {
LABEL_12:
      *(v13 + 2852) = 129;
      return 1;
    }
  }

  if ((*(v13 + 2868) & 1) == 0)
  {
    sub_240B29BD0(&v51);
    if (HIDWORD(v40[0]) != 5 && HIDWORD(v40[0]))
    {
      v34 = sub_240B29F18(v10 < 3);
    }

    else
    {
      v34 = sub_240B29FC8(v10 < 3);
    }

    sub_240B52CFC(&v51, v34);
    sub_240B52CFC(*a1 + 352, &v51);
    *&v51 = &unk_2852A1CB8;
    if (__p)
    {
      v53 = __p;
      operator delete(__p);
    }

    v13 = *a1;
  }

  sub_240BCCCD0(&v51, (a1 + 8));
  sub_240BCCDE4(v54, v5);
  v54[25] = 0u;
  v55 = 0;
  v35 = (*(v13 + 8))(*v13, 1200, 0x10F20006947A222);
  v36 = v35;
  if (v35)
  {
    sub_240BCCFC8(v35, &v51);
  }

  v65[0] = v36;
  v65[1] = v13;
  sub_240BCD4F0(&v51);
  v37 = *a1;
  if (v36)
  {
    v38 = *(v37 + 632);
    v39 = *(v37 + 640);
    if (v38 != v39)
    {
      do
      {
        if (!v12 || *(v38 + 12))
        {
          LOBYTE(v51) = 0;
          sub_240B290C0(v36 + 1176, &v51);
        }

        else
        {
          LOBYTE(v51) = 1;
          sub_240B290C0(v36 + 1176, &v51);
          v12 = 0;
        }

        v38 += 96;
      }

      while (v38 != v39);
      v37 = *a1;
    }

    *(v36 + 408) = *(v37 + 300);
    sub_240BCD594(a1, v65);
    v14 = 0;
  }

  else
  {
    v14 = 1;
    *(v37 + 2852) = 1;
  }

  sub_240BC68B8(v65, 0);
  return v14;
}

void sub_240BD1604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = STACK[0x690];
  if (STACK[0x690])
  {
    STACK[0x698] = v36;
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240BD1764(uint64_t *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v11 = 0;
    v10 = xmmword_240C85160;
    (a1[3])(a1[2], &v10);
    v9 = 0;
    v2 = (a1[4])(a1[2], 0, 0, *a1, a1[1], &v9);
    *&v14 = &unk_2852A3870;
    *(&v14 + 1) = a1 + 2;
    v16 = &v14;
    v12 = v2;
    sub_240BA271C(v13, &v14);
    sub_240BA279C(&v14);
    if (!v12)
    {
      sub_240BA281C(&v12);
      sub_240BA279C(v13);
      return 0;
    }

    v3 = a1[47];
    v14 = v10;
    v15 = v11;
    sub_240BD1A10(v3, v12, &v14, *a1, a1[1], v9);
    sub_240BA281C(&v12);
    sub_240BA279C(v13);
    if (0xAAAAAAAAAAAAAAABLL * ((a1[48] - a1[47]) >> 5) >= 2)
    {
      v4 = 1;
      v5 = 96;
      do
      {
        (a1[5])(a1[2], v4 - 1, &v10);
        v6 = (a1[6])(a1[2], v4 - 1, 0, 0, *a1, a1[1], &v9);
        *&v14 = &off_2852A3900;
        *(&v14 + 1) = a1 + 2;
        v16 = &v14;
        v12 = v6;
        sub_240BA271C(v13, &v14);
        sub_240BA279C(&v14);
        if (v12)
        {
          v7 = a1[47];
          v14 = v10;
          v15 = v11;
          sub_240BD1A10(v7 + v5, v12, &v14, *a1, a1[1], v9);
        }

        sub_240BA281C(&v12);
        sub_240BA279C(v13);
        ++v4;
        v5 += 96;
      }

      while (v4 < 0xAAAAAAAAAAAAAAABLL * ((a1[48] - a1[47]) >> 5));
    }

    *(a1 + 64) = 0;
  }

  else
  {
    sub_240BA41E0(a1[47]);
  }

  return 1;
}

void sub_240BD19D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_240BA281C(va);
  sub_240BA279C(v11 + 8);
  _Unwind_Resume(a1);
}

void sub_240BD1A10(uint64_t a1, char *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *a3;
  v15 = *(a3 + 2);
  sub_240BA3FD4(a1, &v14, a4, a5);
  v10 = *(a1 + 72);
  *a1 = 0;
  v11 = *(a1 + 64) * a5;
  v12 = *(a1 + 80) - v10;
  if (v11 <= v12)
  {
    if (v11 < v12)
    {
      *(a1 + 80) = v10 + v11;
    }
  }

  else
  {
    sub_240B26918((a1 + 72), v11 - v12);
  }

  if (a5)
  {
    v13 = 0;
    do
    {
      memcpy((*(a1 + 72) + *(a1 + 64) * v13++), a2, *(a1 + 64));
      a2 += a6;
    }

    while (a5 != v13);
  }
}

uint64_t sub_240BD1AE0(uint64_t a1, uint64_t a2)
{
  if (sub_240B516C4(*(a2 + 8), "ZN3jxlL21GetExtraChannelBufferER26JxlChunkedFrameInputSourcemmmmmPmEUlPKvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240BD1B38(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_2852A3900;
  a2[1] = v2;
  return result;
}

uint64_t sub_240BD1BD8(uint64_t a1, uint64_t a2)
{
  if (sub_240B516C4(*(a2 + 8), "ZN3jxlL14GetColorBufferER26JxlChunkedFrameInputSourcemmmmPmEUlPKvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240BD1C30(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2852A3870;
  a2[1] = v2;
  return result;
}

uint64_t sub_240BD1CC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v7 = a2;
  v5[0] = &v6;
  v5[1] = &v7;
  if (!a1)
  {
    v8[0] = 0;
    v8[1] = v8;
    a1 = v8;
  }

  return sub_240BD1D0C(a1, a4, v5);
}

uint64_t sub_240BD1D0C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[0] = sub_240B2AC64;
    v6[1] = a3;
    if (*result)
    {
      return (*result)(*(result + 8), v6, sub_240BD1DD4, sub_240BD1DBC, 0, a2);
    }

    else
    {
      v4 = 0;
      v5 = a2;
      do
      {
        result = (**a3)(**(a3 + 8), v4++);
      }

      while (v5 != v4);
    }
  }

  return result;
}

uint64_t sub_240BD1DD4(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t JxlEncoderAddChunkedFrame(uint64_t *a1, int a2, __int128 *a3)
{
  v30 = 0;
  v31[0] = 0;
  v6 = sub_240BCC2D8(a1, v31, &v30);
  v7 = *a1;
  if (v6)
  {
    v8 = 1;
    *(v7 + 2852) = 1;
  }

  else
  {
    v9 = *(v7 + 176);
    v11 = v30;
    v10 = v31[0];
    sub_240BA3EBC(&v22, v31[0], v30, *(v7 + 624));
    v12 = a3[1];
    v23 = *a3;
    v24 = v12;
    v25 = a3[2];
    v26 = 1;
    v19 = 1;
    v18[2] = v12;
    v18[3] = v25;
    v18[0] = v22;
    v18[1] = v23;
    sub_240B8C8F0(v20, v27);
    v20[296] = v27[296];
    memset(v21, 0, 24);
    v31[1] = v21;
    v32 = 0;
    if (v29 != v28)
    {
      sub_240BA42C4(v21, 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 5));
    }

    v13 = sub_240BCE940(a1, v10, v11, v9 != 0, v18);
    v33 = v21;
    sub_240BA4110(&v33);
    sub_240B8D650(v20);
    if (v13)
    {
      v8 = 1;
    }

    else
    {
      v14 = *(*(*a1 + 88) - 48);
      if (v14)
      {
        v15 = *(v14 + 1176);
        v16 = *(v14 + 1184);
        if (v15 != v16)
        {
          memset(v15, 1, v16 - v15);
        }
      }

      if (a2)
      {
        *(*a1 + 2865) = 257;
      }

      if (v9)
      {
        v8 = JxlEncoderFlushInput(*a1);
      }

      else
      {
        v8 = 0;
      }
    }

    v33 = &v28;
    sub_240BA4110(&v33);
    sub_240B8D650(v27);
  }

  return v8;
}

void sub_240BD2068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, ...)
{
  va_start(va, a59);
  sub_240BA419C(va);
  _Unwind_Resume(a1);
}

uint64_t JxlEncoderFlushInput(uint64_t a1)
{
  if (*(a1 + 176))
  {
    while (*(a1 + 80) != *(a1 + 88))
    {
      if (sub_240BC2C44(a1))
      {
        return 1;
      }
    }

    return 0;
  }

  else
  {
    *(a1 + 2852) = 129;
    return 1;
  }
}

uint64_t sub_240BD2118(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 96;
    }
  }

  return a1;
}

uint64_t JxlEncoderSetExtraChannelBuffer(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  v5 = *a1;
  if (*(*a1 + 624) > a5 && *(v5 + 2867) == 1 && (*(v5 + 2868) & 1) != 0)
  {
    v6 = *(v5 + 88);
    if (*(v5 + 80) != v6 && *(v5 + 2865) != 1)
    {
      v9 = *(v6 - 48);
      v11 = 1;
      v12 = *(a2 + 4);
      v13 = *(a2 + 20);
      if (sub_240BA403C((v9 + 776), a5 + 1, a3, a4, &v11))
      {
        result = 0;
        *(*(v9 + 1176) + a5) = 1;
        return result;
      }

      v5 = *a1;
    }
  }

  *(v5 + 2852) = 129;
  return 1;
}

uint64_t JxlEncoderSetOutputProcessor(uint64_t a1, __int128 *a2)
{
  if (!*(a1 + 136) && *(a2 + 4) && *(a2 + 1) && *(a2 + 2))
  {
    operator new();
  }

  *(a1 + 2852) = 129;
  return 1;
}

uint64_t JxlEncoderProcessOutput(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 176))
  {
    *(a1 + 2852) = 129;
    return 1;
  }

  else
  {
    *(a1 + 128) = a2;
    *(a1 + 136) = a3;
    sub_240BC25B0(a1 + 104);
    while (1)
    {
      v5 = *(a1 + 80);
      v6 = *(a1 + 88);
      if (!*a3 || v5 == v6)
      {
        break;
      }

      if (sub_240BC2C44(a1))
      {
        return 1;
      }
    }

    if (v5 == v6)
    {
      return 2 * (*(a1 + 160) < *(a1 + 152));
    }

    else
    {
      return 2;
    }
  }
}

uint64_t JxlEncoderSetFrameHeader(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 10) < 4u)
  {
    v2 = *(a2 + 11);
    if (!v2 || 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 640) - *(*a1 + 632)) >> 5) > v2)
    {
      v3 = *a2;
      v4 = a2[1];
      v5 = a2[2];
      *(a1 + 704) = *(a2 + 6);
      *(a1 + 672) = v4;
      *(a1 + 688) = v5;
      *(a1 + 656) = v3;
      MEMORY[0x245CCE410](a1 + 736, &unk_240C888E1);
      return 0;
    }

    *(*a1 + 2852) = 129;
  }

  else
  {
    *(*a1 + 2852) = 129;
  }

  return 1;
}

__n128 JxlEncoderSetExtraChannelBlendInfo(void *a1, unint64_t a2, __n128 *a3)
{
  v3 = *(*a1 + 624);
  if (v3 <= a2)
  {
    *(*a1 + 2852) = 129;
    return result;
  }

  v4 = a1[90];
  v5 = a1[89];
  v6 = v4 - v5;
  if (v3 != (v4 - v5) >> 4)
  {
    v7 = v3 - (v6 >> 4);
    if (v3 <= v6 >> 4)
    {
      if (v3 >= v6 >> 4)
      {
LABEL_17:
        v5 = a1[89];
        goto LABEL_18;
      }

      v11 = (v5 + 16 * v3);
    }

    else
    {
      v8 = a1[91];
      if (v7 > (v8 - v4) >> 4)
      {
        v9 = (v8 - v5) >> 3;
        if (v9 <= v3)
        {
          v9 = *(*a1 + 624);
        }

        if ((v8 - v5) >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_240B2D470(v10);
      }

      v11 = &v4[2 * v7];
      v12 = 16 * v3 - 16 * (v6 >> 4);
      do
      {
        *v4 = 0;
        v4[1] = 0;
        v4 += 2;
        v12 -= 16;
      }

      while (v12);
    }

    a1[90] = v11;
    goto LABEL_17;
  }

LABEL_18:
  result = *a3;
  *(v5 + 16 * a2) = *a3;
  return result;
}

uint64_t JxlEncoderSetFrameName(uint64_t a1, char *a2)
{
  if (!a2)
  {
    a2 = &unk_240C888E1;
  }

  sub_240B26AA4(&__str, a2);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ >= 0x430)
  {
    *(*a1 + 2852) = 129;
    v3 = 1;
LABEL_9:
    operator delete(__str.__r_.__value_.__l.__data_);
    return v3;
  }

  std::string::operator=((a1 + 736), &__str);
  v3 = 0;
  result = 0;
  v5 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  v6 = __str.__r_.__value_.__r.__words[1];
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  *(a1 + 664) = v6;
  if (v5 < 0)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_240BD26E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t JxlEncoderSetFrameBitDepth(uint64_t a1, uint64_t *a2)
{
  if (*a2 >= 2u)
  {
    sub_240BC6954("%s:%d: Only JXL_BIT_DEPTH_FROM_PIXEL_FORMAT and JXL_BIT_DEPTH_FROM_CODESTREAM is implemented for input buffers.\n", "/Library/Caches/com.apple.xbs/Sources/AppleJPEGXL/lib/jxl/encode.cc", 2598);
    return 1;
  }

  else
  {
    result = 0;
    v4 = *a2;
    *(a1 + 768) = *(a2 + 2);
    *(a1 + 760) = v4;
  }

  return result;
}

__n128 JxlColorEncodingSetToSRGB(uint64_t a1, int a2)
{
  v3 = sub_240B29F18(a2 != 0);
  sub_240B250A4(v7, (v3 + 16));
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

__n128 JxlColorEncodingSetToLinearSRGB(uint64_t a1, int a2)
{
  v3 = sub_240B29FC8(a2 != 0);
  sub_240B250A4(v7, (v3 + 16));
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t JxlEncoderSetDebugImageCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 640) = a2;
  *(result + 648) = a3;
  return result;
}

uint64_t JxlEncoderStatsDestroy(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x245CCE590);
  }

  return result;
}

uint64_t JxlEncoderCollectStats(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    *(result + 776) = a2;
  }

  return result;
}

uint64_t JxlEncoderStatsGet(uint64_t result, int a2)
{
  if (result)
  {
    switch(a2)
    {
      case 0:
        result = *(result + 24);
        break;
      case 1:
        result = *(result + 64);
        break;
      case 2:
        result = *(result + 104);
        break;
      case 3:
        result = *(result + 144);
        break;
      case 4:
        result = *(result + 184);
        break;
      case 5:
        result = *(result + 224);
        break;
      case 6:
        result = *(result + 264);
        break;
      case 7:
        result = *(result + 304);
        break;
      case 8:
        result = *(result + 344);
        break;
      case 9:
        result = *(result + 384);
        break;
      case 10:
        result = *(result + 424);
        break;
      case 11:
        result = *(result + 464);
        break;
      case 12:
        result = *(result + 504);
        break;
      case 13:
        result = *(result + 544);
        break;
      case 14:
        result = *(result + 584);
        break;
      case 15:
        result = *(result + 608);
        break;
      case 16:
        result = *(result + 616);
        break;
      case 17:
        result = *(result + 624);
        break;
      case 18:
        result = *(result + 632);
        break;
      case 19:
        result = *(result + 656);
        break;
      case 20:
        result = *(result + 664);
        break;
      case 21:
        result = *(result + 672);
        break;
      case 22:
      case 23:
        result = *(result + 680);
        break;
      case 24:
        result = *(result + 688);
        break;
      case 25:
        result = *(result + 696);
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

double JxlEncoderStatsMerge(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      *&v2 = sub_240C0DCF8(result, a2).u64[0];
    }
  }

  return v2;
}

void sub_240BD29E0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v4 != v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0uLL;
    v12 = 0x464F52505F434349;
    v13 = 1;
    while (1)
    {
      v15 = *v4;
      v14 = v4[1];
      if (*v4 != v14 && *v15 == 226 && (v16 = v14 - v15, v18 = (v14 - v15) >= 3, v17 = v14 - v15 - 3, v18) && (__rev16(*(v15 + 1)) == v16 - 1 ? (v18 = v17 >= 0xC) : (v18 = 0), v18 && (*(v15 + 3) == v12 ? (v19 = *(v15 + 11) == 4541513) : (v19 = 0), v19)))
      {
        if ((v16 - 15) < 2 || (v21 = v15[15], ++v10, v10 != v21))
        {
          v40 = 0;
          goto LABEL_69;
        }

        v62 = v3;
        v22 = v15[16];
        if (!v22)
        {
          goto LABEL_67;
        }

        v20 = v15[16];
        if (v13)
        {
          v23 = v20 + 1;
          v24 = (v7 - v6) >> 4;
          v60 = v15[15];
          __src = v6;
          if (v24 <= v20)
          {
            v58 = v11;
            v52 = v23 - v24;
            if (v23 - v24 > (v8 - v7) >> 4)
            {
              v25 = (v8 - v6) >> 3;
              if (v25 <= v23)
              {
                v25 = v20 + 1;
              }

              if ((v8 - v6) >= 0x7FFFFFFFFFFFFFF0)
              {
                v25 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (!(v25 >> 60))
              {
                operator new();
              }

              sub_240B2291C();
            }

            v26 = v12;
            v54 = v7;
            v56 = v8;
            bzero(v7, 16 * (v23 - v24));
            v23 = v20 + 1;
            LOBYTE(v21) = v60;
            v11 = v58;
            v8 = v56;
            v12 = v26;
            v7 = &v54[2 * v52];
          }

          else if (v23 < v24)
          {
            v7 = &v6[2 * v23];
          }

          v27 = v11;
          if (v11 <= v20)
          {
            v28 = v23 - v11;
            v55 = v7;
            v57 = v8;
            if (*(&v11 + 1) << 6 < v23 - v11 || v11 > (*(&v11 + 1) << 6) - (v23 - v11))
            {
              v53 = v23 - v11;
              if (*(&v11 + 1) << 6 > 0x3FFFFFFFFFFFFFFEuLL)
              {
                v31 = 0x7FFFFFFFFFFFFFFFLL;
                goto LABEL_49;
              }

              v31 = *(&v11 + 1) << 7;
              if (*(&v11 + 1) << 7 <= ((v20 + 64) & 0x1C0))
              {
                v31 = (v20 + 64) & 0x1C0;
              }

              if (v31)
              {
                if (v31 < 0)
                {
                  sub_240B228BC();
                }

LABEL_49:
                sub_240B299F4(((v31 - 1) >> 6) + 1);
              }

              *(&v36 + 1) = 0;
              *&v36 = v23;
              v29 = 0;
              v59 = v36;
              if (v27 < 1)
              {
                goto LABEL_55;
              }

              v32 = v27 >> 6;
              if (v27 >= 0x40)
              {
                memmove(0, 0, 8 * v32);
                v32 = v27 >> 6;
                v28 = v53;
              }

              v29 = (8 * v32);
              v30 = v27 & 0x3F;
              if (v30)
              {
                *v29 = *v29 & ~(0xFFFFFFFFFFFFFFFFLL >> -v30) | *(8 * v32) & (0xFFFFFFFFFFFFFFFFLL >> -v30);
                v33 = 8 * v32;
                operator delete(0);
                v29 = v33;
                v28 = v53;
              }

              else
              {
LABEL_55:
                LODWORD(v30) = 0;
              }
            }

            else
            {
              v29 = (8 * (v11 >> 6));
              LODWORD(v30) = v11 & 0x3F;
              *&v11 = v23;
              v59 = v11;
            }

            v66 = v29;
            v67 = v30;
            sub_240B31560(&v66, v28);
            LOBYTE(v21) = v60;
            v6 = __src;
            v12 = 0x464F52505F434349;
            v7 = v55;
            v8 = v57;
            v11 = v59;
          }

          else
          {
            *&v11 = v23;
            v6 = __src;
          }
        }

        else
        {
          if (v9 != v20)
          {
            goto LABEL_67;
          }

          v20 = v9;
        }

        if ((v21 - 1) >= v22)
        {
LABEL_67:
          v40 = 0;
          v3 = v62;
          goto LABEL_69;
        }

        v34 = *(8 * (v10 >> 6));
        v3 = v62;
        if ((v34 & (1 << v10)) != 0)
        {
LABEL_66:
          v40 = 0;
          operator delete(0);
          goto LABEL_69;
        }

        v13 = 0;
        *(8 * (v10 >> 6)) = v34 | (1 << v10);
        v35 = &v6[2 * v10];
        *v35 = (v15 + 17);
        v35[1] = v16 - 17;
      }

      else
      {
        v20 = v9;
      }

      v4 += 3;
      v9 = v20;
      if (v4 == v5)
      {
        goto LABEL_62;
      }
    }
  }

  v6 = 0;
  v20 = 0;
LABEL_62:
  v37 = v6 + 3;
  v38 = -v20;
  for (i = 1; ; ++i)
  {
    v40 = v38 + i == 1;
    if (v38 + i == 1)
    {
      break;
    }

    if (((*((i >> 3) & 0x1FFFFFFFFFFFFFF8) >> i) & 1) == 0)
    {
      goto LABEL_66;
    }

    v41 = *(v37 - 1);
    v42 = *v37;
    v37 += 2;
    sub_240B28B3C(&v63, v64, v41, &v41[v42], v42);
  }

LABEL_69:
  v43 = v63;
  if (!v40 || (v44 = v64, v63 == v64))
  {
    v46 = sub_240B29F18(*(v3 + 152) - *(v3 + 144) == 48);
    v47 = v46;
    *(a2 + 8) = *(v46 + 4);
    v48 = *(v46 + 2);
    *(a2 + 21) = *(v46 + 21);
    *(a2 + 16) = v48;
    if (v46 != a2)
    {
      sub_240B28A14((a2 + 32), *(v46 + 4), *(v46 + 5), *(v46 + 5) - *(v46 + 4));
    }

    v49 = *(v47 + 56);
    v50 = *(v47 + 72);
    v51 = *(v47 + 88);
    *(a2 + 104) = *(v47 + 26);
    *(a2 + 88) = v51;
    *(a2 + 72) = v50;
    *(a2 + 56) = v49;
    *(a2 + 120) = *(v47 + 15);
    *(a2 + 136) = *(v47 + 136);
    *(a2 + 160) = *(v47 + 20);
    *(a2 + 176) = *(v47 + 22);
    *(a2 + 192) = *(v47 + 24);
    if (v43)
    {

      operator delete(v43);
    }
  }

  else
  {
    v45 = *(a2 + 32);
    if (v45)
    {
      *(a2 + 40) = v45;
      operator delete(v45);
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
    }

    *(a2 + 32) = v43;
    *(a2 + 40) = v44;
    *(a2 + 48) = v65;
    *(a2 + 28) = 0;
    *(a2 + 9) = 1;
  }
}

void sub_240BD3058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, void *a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240BD30B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if ((v3 & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    return 1;
  }

  if (v3 == 1)
  {
    v11 = 0;
    v12 = *(a1 + 4);
    v13 = *(a1 + 8);
    do
    {
      v15[v11] = v12;
      v14[v11++] = v13;
    }

    while (v11 != 3);
    v8 = v15;
    v9 = v14;
    return sub_240BD317C(a3, v8, v9);
  }

  if (v3 == 3)
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      v7 = *v6;
      v17[v5] = *(v6 - 1);
      v16[v5++] = v7;
      v6 += 12;
    }

    while (v5 != 3);
    v8 = v17;
    v9 = v16;
    return sub_240BD317C(a3, v8, v9);
  }

  return 0;
}

uint64_t sub_240BD317C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 3; ++i)
  {
    v4 = 0;
    v5 = i ^ 1;
    if (i == 2)
    {
      v5 = 2;
    }

    while (1 << byte_240C85334[v4] != *(a2 + v5) || 1 << byte_240C85338[v4] != *(a3 + v5))
    {
      if (++v4 == 4)
      {
        return 1;
      }
    }

    *(a1 + 8 + 4 * i) = v4;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = *(a1 + 8 + v6);
    v10 = byte_240C85334[v9];
    v11 = byte_240C85338[v9];
    if (v7 <= v10)
    {
      v7 = v10;
    }

    if (v8 <= v11)
    {
      v8 = v11;
    }

    v6 += 4;
  }

  while (v6 != 12);
  v12 = 0;
  *(a1 + 20) = v7;
  *(a1 + 21) = v8;
  return v12;
}

uint64_t sub_240BD324C(void *a1, int *a2)
{
  v2 = a1[18];
  v3 = a1[19] - v2;
  if (((0xAAAAAAAAAAAAAAABLL * (v3 >> 4)) & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    return 1;
  }

  v4 = a1[24];
  v5 = a1[25];
  if (v4 == v5)
  {
    v10 = 0;
    v11 = 0;
    v6 = (v5 - v4);
    goto LABEL_11;
  }

  v6 = (v5 - v4);
  v7 = a1[24];
  while (*v7 != 224)
  {
    if (++v7 == v5)
    {
      v7 = a1[25];
      break;
    }
  }

  if (v7 != v5)
  {
    v8 = 1;
    goto LABEL_30;
  }

  v10 = 0;
  v12 = 0;
  v13 = a1[3];
  while (1)
  {
    v14 = v10[v4];
    if ((v14 & 0xF0) == 0xE0)
    {
      break;
    }

LABEL_23:
    if (v6 == ++v10)
    {
      goto LABEL_24;
    }
  }

  if (v14 != 238 || (v15 = *(v13 + 24 * v12), *(v13 + 24 * v12 + 8) - v15 != 15) || v15[3] != 65 || v15[4] != 100 || v15[5] != 111 || v15[6] != 98 || v15[7] != 101)
  {
    ++v12;
    goto LABEL_23;
  }

  v11 = v15[14] == 0;
LABEL_11:
  if (v10 == v6)
  {
LABEL_24:
    v11 = v3 == 144 && *v2 == 82 && v2[12] == 71 && v2[24] == 66;
  }

  v8 = !v11;
LABEL_30:
  result = 0;
  if (v3 == 48)
  {
    v16 = 1;
  }

  else
  {
    v16 = v8;
  }

  if (v16)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  *a2 = v17;
  return result;
}

uint64_t sub_240BD33C0(void *a1, char **a2, uint64_t a3)
{
  a2[1] = *a2;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a1[4] - a1[3]) >> 3);
  v8 = a1[6];
  v7 = a1[7];
  v9 = (v7 - v8) >> 2;
  if (v6 > v9)
  {
    v10 = v6 - v9;
    v11 = a1[8];
    if (v10 > (v11 - v7) >> 2)
    {
      if (!(v6 >> 62))
      {
        v12 = v11 - v8;
        v13 = (v11 - v8) >> 1;
        if (v13 <= v6)
        {
          v13 = 0xAAAAAAAAAAAAAAABLL * ((a1[4] - a1[3]) >> 3);
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        sub_240B228D4(v14);
      }

      sub_240B228BC();
    }

    v16 = (v10 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v17 = vdupq_n_s64(v16);
    v18 = v16 - ((v10 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v19 = (v7 + 8);
    v20 = -4;
    do
    {
      v21 = vdupq_n_s64(v20 + 4);
      v22 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v21, xmmword_240C111D0)));
      if (vuzp1_s16(v22, *v17.i8).u8[0])
      {
        *(v19 - 2) = 0;
      }

      if (vuzp1_s16(v22, *&v17).i8[2])
      {
        *(v19 - 1) = 0;
      }

      if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v21, xmmword_240C111C0)))).i32[1])
      {
        *v19 = 0;
        v19[1] = 0;
      }

      v20 += 4;
      v19 += 4;
    }

    while (v18 != v20);
    v15 = v7 + 4 * v10;
    goto LABEL_21;
  }

  if (v6 < v9)
  {
    v15 = v8 - 0x5555555555555554 * ((a1[4] - a1[3]) >> 3);
LABEL_21:
    a1[7] = v15;
  }

  v23 = a1[3];
  v24 = a1[4] - v23;
  if (!v24)
  {
    v52 = 0;
    goto LABEL_74;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0xAAAAAAAAAAAAAAABLL * (v24 >> 3);
  v28 = a1[6];
  if (v27 <= 1)
  {
    v27 = 1;
  }

  v29 = a1[3];
  v30 = v27;
  do
  {
    v31 = *v29;
    if (**v29 == 226 && __rev16(*(v31 + 1)) >= 0xE && *(v31 + 3) == 0x464F52505F434349 && *(v31 + 11) == 4541513)
    {
      v33 = *(v31 + 15);
      if (v25 + 1 == v33)
      {
        v34 = *(v31 + 16);
        if (!v26)
        {
          v26 = v34;
        }

        if (v26 == v34)
        {
          *v28 = 1;
          v26 = v34;
          v25 = v33;
        }
      }
    }

    ++v28;
    v29 += 3;
    --v30;
  }

  while (v30);
  if (v25 != v26)
  {
    return 1;
  }

  v35 = 0;
  v36 = 0;
  v37 = a1[6];
  v38 = (v23 + 8);
  v39 = v27;
  do
  {
    v40 = *(v38 - 1);
    v41 = *v38;
    if (v40 != *v38 && *v40 == 225)
    {
      v42 = v41 - v40;
      v43 = (v41 - v40) >= 3;
      v44 = v41 - v40 - 3;
      if (v43 && __rev16(*(v40 + 1)) == v42 - 1)
      {
        if ((v35 & 1) == 0)
        {
          if (v44 < 6 || *(v40 + 3) ^ 0x66697845 | *(v40 + 7))
          {
            v35 = 0;
            if (v36)
            {
LABEL_66:
              v36 = 1;
              goto LABEL_67;
            }

LABEL_52:
            if (v44 < 0x1D || ((v45 = *(v40 + 3), v46 = *(v40 + 11), v47 = *(v40 + 19), v48 = *(v40 + 3), v45 == 0x6E2F2F3A70747468) ? (v49 = v46 == 0x2E65626F64612E73) : (v49 = 0), v49 ? (v50 = v47 == 0x2F7061782F6D6F63) : (v50 = 0), v50 ? (v51 = v48 == 0x2F302E312F7061) : (v51 = 0), !v51))
            {
              v36 = 0;
              goto LABEL_67;
            }

            *v37 = 3;
            goto LABEL_66;
          }

          *v37 = 2;
        }

        v35 = 1;
        if (v36)
        {
          goto LABEL_66;
        }

        goto LABEL_52;
      }
    }

LABEL_67:
    ++v37;
    v38 += 3;
    --v39;
  }

  while (v39);
  v52 = 0;
  v53 = a1[6];
  v54 = (v23 + 8);
  do
  {
    if (!*v53++)
    {
      v52 = v52 + *v54 - *(v54 - 1);
    }

    v54 += 3;
    --v27;
  }

  while (v27);
LABEL_74:
  v56 = a1[9];
  v57 = a1[10] - v56;
  if (v57)
  {
    v58 = 0xAAAAAAAAAAAAAAABLL * (v57 >> 3);
    if (v58 <= 1)
    {
      v58 = 1;
    }

    v59 = (v56 + 8);
    do
    {
      v52 = v52 + *v59 - *(v59 - 1);
      v59 += 3;
      --v58;
    }

    while (v58);
  }

  v60 = a1[27];
  v61 = a1[28] - v60;
  if (v61)
  {
    v62 = 0xAAAAAAAAAAAAAAABLL * (v61 >> 3);
    if (v62 <= 1)
    {
      v62 = 1;
    }

    v63 = (v60 + 8);
    do
    {
      v52 = v52 + *v63 - *(v63 - 1);
      v63 += 3;
      --v62;
    }

    while (v62);
  }

  v64 = a1[31] - a1[30] + v52;
  if (v64)
  {
    if (v64 + 4 * (v64 >> 14) + 6 >= v64)
    {
      v65 = v64 + 4 * (v64 >> 14) + 6;
    }

    else
    {
      v65 = 0;
    }
  }

  else
  {
    v65 = 2;
  }

  v98 = v65;
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  v66 = sub_240C0EB88(a1, &v95, 0, 0);
  if (!v66)
  {
    v67 = v95;
    v68 = ((v95 + 7) & 0xFFFFFFFFFFFFFFF8) - v95;
    if (v68)
    {
      *(*(&v96 + 1) + (v95 >> 3)) = *(*(&v96 + 1) + (v95 >> 3));
      v67 = v95 + v68;
      *&v95 = v95 + v68;
    }

    v69 = v67 >> 3;
    sub_240B4ADF0(&v95 + 1, v67 >> 3);
    v70 = *(&v96 + 1);
    if (!*(&v96 + 1))
    {
      v69 = 0;
    }

    *(&v95 + 1) = 0;
    v96 = 0uLL;
    sub_240B844BC(a2, v65 + v69);
    sub_240B28B3C(a2, a2[1], v70, &v70[v69], v69);
    if (v70)
    {
      atomic_fetch_add(&qword_27E519020, -*(v70 - 3));
      free(*(v70 - 4));
    }

    sub_240B12F94();
    v72 = v71;
    if (*(v71 + 6980))
    {
      v73 = *a2;
      v74 = a2[1] - *a2;
      v75 = v74;
    }

    else
    {
      v76 = *(a3 + 52);
      if (v76 < 0)
      {
        v76 = 11 - *(a3 + 48);
      }

      *(v71 + 4) = v76;
      v74 = a2[1] - *a2;
      *(v71 + 24) = v64;
      v73 = *a2;
      v75 = a2[1] - *a2;
    }

    if (v98 + v74 <= v75)
    {
      if (v98 + v74 < v75)
      {
        a2[1] = &v73[v98 + v74];
      }
    }

    else
    {
      sub_240B26918(a2, v98 + v74 - v75);
    }

    v94 = 0;
    v78 = a1[3];
    v77 = a1[4];
    if (v77 != v78)
    {
      v79 = 0;
      do
      {
        if (!*(a1[6] + 4 * v79))
        {
          v80 = v78 + 24 * v79;
          v81 = *v80;
          v101 = *(v80 + 8) - *v80;
          v99 = &(*a2)[v74 + v94];
          v100 = v81;
          do
          {
            sub_240B13328(v72, 0, &v101, &v100, &v98, &v99, &v94);
          }

          while (*(v72 + 6936) | v101);
          v78 = a1[3];
          v77 = a1[4];
        }

        ++v79;
      }

      while (v79 < 0xAAAAAAAAAAAAAAABLL * ((v77 - v78) >> 3));
    }

    v82 = a1[9];
    if (a1[10] != v82)
    {
      v83 = 0;
      do
      {
        v84 = v82 + 24 * v83;
        v85 = *v84;
        v101 = *(v84 + 8) - *v84;
        v99 = &(*a2)[v74 + v94];
        v100 = v85;
        do
        {
          sub_240B13328(v72, 0, &v101, &v100, &v98, &v99, &v94);
        }

        while (*(v72 + 6936) | v101);
        ++v83;
        v82 = a1[9];
      }

      while (v83 < 0xAAAAAAAAAAAAAAABLL * ((a1[10] - v82) >> 3));
    }

    v86 = a1[27];
    if (a1[28] != v86)
    {
      v87 = 0;
      do
      {
        v88 = v86 + 24 * v87;
        v89 = *v88;
        v101 = *(v88 + 8) - *v88;
        v99 = &(*a2)[v74 + v94];
        v100 = v89;
        do
        {
          sub_240B13328(v72, 0, &v101, &v100, &v98, &v99, &v94);
        }

        while (*(v72 + 6936) | v101);
        ++v87;
        v86 = a1[27];
      }

      while (v87 < 0xAAAAAAAAAAAAAAABLL * ((a1[28] - v86) >> 3));
    }

    v90 = a1[30];
    v101 = a1[31] - v90;
    v99 = &(*a2)[v74 + v94];
    v100 = v90;
    do
    {
      sub_240B13328(v72, 2, &v101, &v100, &v98, &v99, &v94);
    }

    while (*(v72 + 6936) | v101);
    sub_240B1314C(v72);
    v91 = a2[1] - *a2;
    if (v94 + v74 <= v91)
    {
      if (v94 + v74 < v91)
      {
        a2[1] = &(*a2)[v94 + v74];
      }
    }

    else
    {
      sub_240B26918(a2, v94 + v74 - v91);
    }

    v66 = 0;
  }

  v92 = *(&v96 + 1);
  *(&v96 + 1) = 0;
  if (v92)
  {
    atomic_fetch_add(&qword_27E519020, -*(v92 - 24));
    free(*(v92 - 32));
  }

  return v66;
}

void sub_240BD3C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    atomic_fetch_add(&qword_27E519020, -*(a14 - 24));
    free(*(a14 - 32));
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_240BD3D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 2224);
  v5 = *(a1 + 2232) - v4;
  if (v5)
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * (v5 >> 6);
    v7 = (v4 + 48);
    v5 = -1;
    do
    {
      v8 = *v7;
      v9 = v5 + 2;
      ++v5;
      v7 += 112;
      if (v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 >= v6;
      }
    }

    while (!v10);
  }

  sub_240B598DC(v4 + 448 * v5, a2, a3);
  if (*(a1 + 208))
  {
    v11 = 255.0;
  }

  else
  {
    v12 = *(a1 + 216);
    v11 = 255.0;
    if (v12 == 18)
    {
      v11 = 1000.0;
    }

    if (v12 == 16)
    {
      v11 = 10000.0;
    }
  }

  *(a1 + 396) = v11;
  v13 = *(a1 + 2232);
  v14 = *(a1 + 2224);
  v15 = 0x6DB6DB6DB6DB6DB7 * ((v13 - v14) >> 6);
  if (v13 == v14)
  {
    v17 = 0;
  }

  else
  {
    v16 = (v14 + 48);
    v17 = -1;
    do
    {
      v18 = *v16;
      v19 = v17 + 2;
      ++v17;
      v16 += 112;
      if (v18)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19 >= v15;
      }
    }

    while (!v20);
  }

  v21 = v14 + 448 * v17;
  v22 = *(v21 + 96);
  if (!v22)
  {
    v23 = *(v21 + 416);
    if (v23 == *(v21 + 424))
    {
      v22 = 0;
    }

    else
    {
      v22 = *v23;
    }
  }

  if (v13 == v14)
  {
    v25 = 0;
  }

  else
  {
    v24 = (v14 + 48);
    v25 = -1;
    do
    {
      v26 = *v24;
      v27 = v25 + 2;
      ++v25;
      v24 += 112;
      if (v26)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27 >= v15;
      }
    }

    while (!v28);
  }

  v29 = v14 + 448 * v25;
  v30 = *(v29 + 100);
  if (!v30)
  {
    v31 = *(v29 + 416);
    if (v31 == *(v29 + 424))
    {
      v30 = 0;
    }

    else
    {
      v30 = *(v31 + 4);
    }
  }

  return sub_240B57890(a1 + 520, v22, v30);
}

void sub_240BD3EA8(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_240BD3F18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240BD3F34(const void **a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_240B228BC();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v20 = a1;
    if (v10)
    {
      sub_240B32588(v10);
    }

    v11 = 24 * v7;
    v16 = 0;
    v17 = v11;
    v18 = 24 * v7;
    v19 = 0;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    sub_240B28D90((24 * v7), *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v6 = (v18 + 24);
    v12 = a1[1] - *a1;
    v13 = &v17[-v12];
    memcpy(&v17[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = v19;
    v18 = v14;
    v19 = v15;
    v16 = v14;
    v17 = v14;
    result = sub_240B325E0(&v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    result = sub_240B28D90(v4, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v6 = v4 + 3;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_240BD4074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_240B325E0(va);
  _Unwind_Resume(a1);
}

void sub_240BD4094(uint64_t *a1, unsigned __int8 *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

uint64_t *sub_240BD4124(uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v11 = 0xEEEEEEEEEEEEEEEFLL * ((v5 - *a1) >> 3);
    if (v11 + 1 > 0x222222222222222)
    {
      sub_240B228BC();
    }

    v12 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - *a1) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x111111111111111)
    {
      v14 = 0x222222222222222;
    }

    else
    {
      v14 = v13;
    }

    v34 = a1;
    if (v14)
    {
      sub_240B8D0B0(v14);
    }

    v15 = 120 * v11;
    v31 = 0;
    v32 = v15;
    v33 = 120 * v11;
    v16 = *(a2 + 16);
    v17 = *(a2 + 32);
    v18 = *(a2 + 48);
    *(v15 + 64) = *(a2 + 64);
    *(v15 + 32) = v17;
    *(v15 + 48) = v18;
    *(v15 + 16) = v16;
    *v15 = *a2;
    v19 = 120 * v11;
    *(v19 + 72) = 0;
    *(v15 + 80) = 0;
    *(v15 + 88) = 0;
    sub_240B86FB8((v19 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
    *(v15 + 96) = 0;
    *(v15 + 104) = 0;
    *(v15 + 112) = 0;
    sub_240B8D034((v15 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
    *&v33 = v33 + 120;
    v20 = *a1;
    v21 = a1[1];
    v22 = v32 + *a1 - v21;
    if (*a1 != v21)
    {
      v23 = *a1;
      v24 = v32 + *a1 - v21;
      do
      {
        *v24 = *v23;
        v25 = *(v23 + 16);
        v26 = *(v23 + 48);
        v27 = *(v23 + 64);
        *(v24 + 32) = *(v23 + 32);
        *(v24 + 48) = v26;
        *(v24 + 16) = v25;
        *(v24 + 64) = v27;
        *(v24 + 72) = 0;
        *(v24 + 80) = 0;
        *(v24 + 88) = 0;
        *(v24 + 72) = *(v23 + 72);
        *(v24 + 88) = *(v23 + 88);
        *(v23 + 72) = 0;
        *(v23 + 80) = 0;
        *(v23 + 88) = 0;
        *(v24 + 96) = 0;
        *(v24 + 104) = 0;
        *(v24 + 112) = 0;
        *(v24 + 96) = *(v23 + 96);
        *(v24 + 112) = *(v23 + 112);
        *(v23 + 96) = 0;
        *(v23 + 104) = 0;
        *(v23 + 112) = 0;
        v23 += 120;
        v24 += 120;
      }

      while (v23 != v21);
      do
      {
        sub_240B8CE94(v20);
        v20 += 15;
      }

      while (v20 != v21);
    }

    v28 = *a1;
    *a1 = v22;
    v29 = a1[2];
    v30 = v33;
    *(a1 + 1) = v33;
    *&v33 = v28;
    *(&v33 + 1) = v29;
    v31 = v28;
    v32 = v28;
    result = sub_240BD465C(&v31);
    v10 = v30;
  }

  else
  {
    *v5 = *a2;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    *(v5 + 64) = *(a2 + 64);
    *(v5 + 32) = v7;
    *(v5 + 48) = v8;
    *(v5 + 16) = v6;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    *(v5 + 88) = 0;
    sub_240B86FB8((v5 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
    *(v5 + 96) = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
    result = sub_240B8D034((v5 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
    v10 = v5 + 120;
    a1[1] = v5 + 120;
  }

  a1[1] = v10;
  return result;
}

void sub_240BD4380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v10 = *v7;
  if (*v7)
  {
    *(v8 + 80) = v10;
    operator delete(v10);
  }

  sub_240BD465C(va);
  _Unwind_Resume(a1);
}

void *sub_240BD43D0(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t *sub_240BD4414(uint64_t *result)
{
  v1 = *(result + 8);
  if (v1 <= 16)
  {
    v3 = result[2];
    v2 = result[3];
    v4 = v1 - 8;
    v5 = result[5];
    do
    {
      v6 = v2 << 8;
      result[3] = v6;
      if (v3 >= v5)
      {
        v9 = 0;
        v8 = v3 + 1;
        result[2] = v3 + 1;
      }

      else
      {
        v7 = *result;
        v8 = v3 + 1;
        result[2] = v3 + 1;
        v9 = *(v7 + v3);
        if (v9 == 255)
        {
          if (*(v7 + v8))
          {
            result[5] = v3;
            v9 = 255;
            v5 = v3;
          }

          else
          {
            v8 = v3 + 2;
            result[2] = v3 + 2;
            v9 = 255;
          }
        }
      }

      v2 = v6 | v9;
      result[3] = v2;
      *(result + 8) = v4 + 16;
      v4 += 8;
      v3 = v8;
    }

    while (v4 < 49);
  }

  return result;
}

BOOL sub_240BD44B4(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = *(a1 + 32);
  v6 = v5 & 7;
  if ((v5 & 7) != 0)
  {
    v8 = (*(a1 + 24) >> (v5 & 0xF8)) & ~(-1 << v6);
    if (v8 != ~(-1 << v6))
    {
      *(a2 + 264) = 1;
    }

    v9 = v6 + 1;
    do
    {
      v16 = (v8 >> (v9 - 2)) & 1;
      sub_240B290C0(a2 + 272, &v16);
      --v9;
    }

    while (v9 > 1);
    v5 = *(a1 + 32);
  }

  v10 = v5 >> 3;
  if (v5 >> 3 <= 0)
  {
    v12 = *(a1 + 16);
    v11 = *(a1 + 40);
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 16);
    v13 = v10 + 1;
    do
    {
      v14 = v12--;
      *(a1 + 16) = v12;
      if (v12 < v11 && !*(*a1 + v12) && *(*a1 + v14 - 2) == 255)
      {
        v12 = v14 - 2;
        *(a1 + 16) = v14 - 2;
      }

      --v13;
    }

    while (v13 > 1);
  }

  if (v12 <= v11)
  {
    *a3 = v12;
  }

  return v12 <= v11;
}

uint64_t sub_240BD45D8(uint64_t a1, uint64_t a2)
{
  sub_240BD4414(a2);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = (a1 + 4 * (v4 >> (v5 - 8)));
  v7 = *v6;
  if (v7 >= 9)
  {
    v6 += 4 * *(v6 + 1) + 4 * ((v4 >> (v5 - v7)) & ~(-1 << (v7 - 8)));
    v7 = *v6;
    v5 -= 8;
  }

  *(a2 + 32) = v5 - v7;
  return *(v6 + 1);
}

uint64_t sub_240BD465C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 120;
    sub_240B8CE94((i - 120));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_240BD46AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v171 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 8);
  v8 = *(*(a1 + 16) + 40);
  v9 = (a2 + 4 * a3);
  v10 = **(a1 + 24);
  v167 = *(a1 + 16);
  v168 = v7;
  if (**a1 == 1)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (a3)
    {
      v13 = *(v9 - 1);
      v14 = v13;
      if (!a4)
      {
        v23 = 0;
        v15 = v13;
        v16 = v13;
        v24 = v13;
LABEL_19:
        v27 = v14;
        if (a3 >= 2)
        {
          v27 = *(v9 - 2);
        }

        v28 = v16;
        if (a4 >= 2)
        {
          v28 = v9[-2 * v10];
        }

        v29 = v23 ^ 1;
        if (a3 + 2 >= v8)
        {
          v29 = 1;
        }

        if (v29)
        {
          v163 = v24;
        }

        else
        {
          v163 = v9[2 - v10];
        }

        goto LABEL_39;
      }

      v15 = v9[~v10];
      v16 = v9[-v10];
    }

    else
    {
      if (!a4)
      {
        v28 = 0;
        v24 = 0;
        v16 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v27 = 0;
        v163 = 0;
LABEL_39:
        v33 = 0;
        v34 = *v7;
        if (v16 >= 0)
        {
          LODWORD(v35) = v16;
        }

        else
        {
          v35 = -v16;
        }

        v34[3] = a3;
        v34[4] = v35;
        if (v14 >= 0)
        {
          LODWORD(v36) = v14;
        }

        else
        {
          v36 = -v14;
        }

        v37 = v13 - v34[9];
        v34[5] = v36;
        v34[6] = v16;
        v34[7] = v13;
        v34[8] = v37;
        v34[9] = v14 + v16 - v15;
        v34[10] = v13 - v15;
        v38 = v8 + 2;
        if (a4)
        {
          v39 = v8 + 2;
        }

        else
        {
          v39 = 0;
        }

        v40 = v39 + a3;
        v34[11] = v15 - v16;
        v34[12] = v16 - v24;
        if (v8 - 1 <= a3)
        {
          v41 = v39 + a3;
        }

        else
        {
          v41 = v40 + 1;
        }

        if (a3)
        {
          v39 = v40 - 1;
        }

        v34[13] = v16 - v28;
        v34[14] = v13 - v27;
        v42 = v12 + 216;
        for (i = 40; i != 136; i += 24)
        {
          v44 = (*(*(v12 + i) + 4 * v41) + *(*(v12 + i) + 4 * v40) + *(*(v12 + i) + 4 * v39));
          v45 = __clz(v44 + 1) ^ 0x3F;
          if (v45 <= 5)
          {
            LOBYTE(v45) = 5;
          }

          v169.i32[v33] = ((*(v42 + 4 * (v44 >> (v45 - 5))) * *(v12 + v33 * 4 + 200)) >> (v45 - 5)) + 4;
          ++v33;
        }

        v165 = v9;
        v46 = 8 * v16;
        v47 = 8 * v14;
        v48 = 8 * v24;
        v49 = v11;
        if (a3)
        {
          if (a4)
          {
            v50 = 0;
          }

          else
          {
            v50 = v38;
          }

          v51 = *(v12 + 136);
          v52 = *(v51 + 4 * v50 + 4 * a3 - 4);
        }

        else
        {
          v52 = 0;
          v51 = *(v12 + 136);
        }

        v53 = 0;
        v54 = *(v51 + 4 * v40);
        v55 = *(v51 + 4 * v39);
        v56 = v52 + v54;
        v57 = *(v51 + 4 * v41);
        if (v54 >= 0)
        {
          v58 = v54;
        }

        else
        {
          v58 = -v54;
        }

        if (v52 >= 0)
        {
          v59 = v52;
        }

        else
        {
          v59 = -v52;
        }

        if (v58 <= v59)
        {
          v60 = v52;
        }

        else
        {
          v60 = v54;
        }

        if (v55 >= 0)
        {
          v61 = v55;
        }

        else
        {
          v61 = -v55;
        }

        if (v60 >= 0)
        {
          v62 = v60;
        }

        else
        {
          v62 = -v60;
        }

        if (v61 <= v62)
        {
          v63 = v60;
        }

        else
        {
          v63 = v55;
        }

        if (v57 >= 0)
        {
          v64 = v57;
        }

        else
        {
          v64 = -v57;
        }

        if (v63 >= 0)
        {
          v65 = v63;
        }

        else
        {
          v65 = -v63;
        }

        if (v64 > v65)
        {
          LODWORD(v63) = v57;
        }

        v34[15] = v63;
        v66 = *(v12 + 176);
        v67 = v46 - (((v56 + v57) * *(v12 + 172)) >> 5);
        *v12 = v48 - v46 + v47;
        *(v12 + 8) = v67;
        v68 = v46 - ((*(v12 + 180) * v55 + *(v12 + 184) * v54 + *(v12 + 188) * v57 + 8 * ((v28 - v16) * *(v12 + 192) + (v15 - v14) * *(v12 + 196))) >> 5);
        *(v12 + 16) = v47 - (((v56 + v55) * v66) >> 5);
        *(v12 + 24) = v68;
        v170 = vshlq_u32(v169, vnegq_s32(vdupq_n_s32((__clz(vaddvq_s32(v169)) ^ 0x1F) - 4)));
        v69 = vaddvq_s32(v170);
        v70 = (v69 >> 1) - 1;
        do
        {
          v70 += *(v12 + 8 * v53) * v170.u32[v53];
          ++v53;
        }

        while (v53 != 4);
        v71 = (v70 * *(v42 + 4 * (v69 - 1))) >> 24;
        if (v48 <= v46)
        {
          v72 = 8 * v16;
        }

        else
        {
          v72 = 8 * v24;
        }

        if (v47 > v72)
        {
          v72 = 8 * v14;
        }

        if (v46 >= v48)
        {
          v73 = 8 * v24;
        }

        else
        {
          v73 = 8 * v16;
        }

        if (v73 >= v47)
        {
          v73 = 8 * v14;
        }

        if (v71 < v72)
        {
          v72 = (v70 * *(v42 + 4 * (v69 - 1))) >> 24;
        }

        if (v73 > v72)
        {
          v72 = v73;
        }

        if ((v55 ^ v54 | v52 ^ v54) <= 0)
        {
          v71 = v72;
        }

        *(v12 + 32) = v71;
        v74 = (v71 + 3) >> 3;
        v75 = v49[5];
        if (v75)
        {
          v76 = (v49[3] + v49[2] * a3);
          v77 = v34 + 16;
          do
          {
            v78 = *v76++;
            *v77++ = v78;
            --v75;
          }

          while (v75);
        }

        v79 = 0;
        result = (v16 + v24) / 2;
        if (v13 >= v16)
        {
          v81 = v16;
        }

        else
        {
          v81 = v13;
        }

        if (v13 <= v16)
        {
          v82 = v16;
        }

        else
        {
          v82 = v13;
        }

        v83 = v13 + v16 - v15;
        if (v81 > v15)
        {
          v83 = v82;
        }

        if (v82 >= v15)
        {
          v81 = v83;
        }

        v84 = v81;
        v85 = v16 - v15;
        if (v16 - v15 < 0)
        {
          v85 = v15 - v16;
        }

        v86 = v14 - v15;
        if (v14 - v15 < 0)
        {
          v86 = v15 - v14;
        }

        if (v85 >= v86)
        {
          v87 = v16;
        }

        else
        {
          v87 = v14;
        }

        v9 = v165;
        v88 = 3 * v24 - 2 * v28 + 6 * v16 - v14 + 8 * v14 + v27 + v163;
        v89 = v88 + 8;
        v90 = v88 + 23;
        if (v89 >= 0)
        {
          v90 = v89;
        }

        v91 = v168;
        do
        {
          switch(v79)
          {
            case 1:
              v92 = v14;
              break;
            case 2:
              v92 = v16;
              break;
            case 3:
              v92 = (v14 + v16) / 2;
              break;
            case 4:
              v92 = v87;
              break;
            case 5:
              v92 = v84;
              break;
            case 6:
              v92 = v74;
              break;
            case 7:
              v92 = v24;
              break;
            case 8:
              v92 = v15;
              break;
            case 9:
              v92 = v27;
              break;
            case 10:
              v92 = (v15 + v14) / 2;
              break;
            case 11:
              v92 = (v15 + v16) / 2;
              break;
            case 12:
              v92 = (v16 + v24) / 2;
              break;
            case 13:
              v92 = v90 >> 4;
              break;
            default:
              v92 = 0;
              break;
          }

          v170.i64[v79++] = v92;
        }

        while (v79 != 14);
        goto LABEL_252;
      }

      v13 = v9[-v10];
      v16 = v13;
      v14 = v13;
      v15 = v13;
    }

    v23 = 1;
    if (a3 + 1 >= v8)
    {
      v24 = v16;
    }

    else
    {
      v24 = v9[1 - v10];
    }

    goto LABEL_19;
  }

  v12 = *(a1 + 40);
  v17 = *(*(a1 + 48) + 120);
  v18 = *(a1 + 32);
  if (a3)
  {
    v19 = *(v9 - 1);
    v20 = v19;
    if (!a4)
    {
      v25 = 0;
      v21 = v19;
      v22 = v19;
      v26 = v19;
LABEL_29:
      v30 = v20;
      if (a3 >= 2)
      {
        v30 = *(v9 - 2);
      }

      v31 = v22;
      if (a4 >= 2)
      {
        v31 = v9[-2 * v10];
      }

      v32 = v25 ^ 1;
      if (a3 + 2 >= v8)
      {
        v32 = 1;
      }

      if (v32)
      {
        v164 = v26;
      }

      else
      {
        v164 = v9[2 - v10];
      }

      goto LABEL_148;
    }

    v21 = v9[~v10];
    v22 = v9[-v10];
LABEL_14:
    v25 = 1;
    if (a3 + 1 >= v8)
    {
      v26 = v22;
    }

    else
    {
      v26 = v9[1 - v10];
    }

    goto LABEL_29;
  }

  if (a4)
  {
    v19 = v9[-v10];
    v22 = v19;
    v20 = v19;
    v21 = v19;
    goto LABEL_14;
  }

  v31 = 0;
  v26 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v30 = 0;
  v164 = 0;
LABEL_148:
  v93 = 0;
  v166 = *v17;
  v94 = *v7;
  if (v22 >= 0)
  {
    LODWORD(v95) = v22;
  }

  else
  {
    v95 = -v22;
  }

  v94[3] = a3;
  v94[4] = v95;
  if (v20 >= 0)
  {
    LODWORD(v96) = v20;
  }

  else
  {
    v96 = -v20;
  }

  v97 = v19 - v94[9];
  v94[5] = v96;
  v94[6] = v22;
  v94[7] = v19;
  v94[8] = v97;
  v94[9] = v20 + v22 - v21;
  v94[10] = v19 - v21;
  v98 = v30;
  v99 = v8 + 2;
  if (a4)
  {
    v100 = v8 + 2;
  }

  else
  {
    v100 = 0;
  }

  v101 = v100 + a3;
  v94[11] = v21 - v22;
  v94[12] = v22 - v26;
  if (v8 - 1 <= a3)
  {
    v102 = v100 + a3;
  }

  else
  {
    v102 = v101 + 1;
  }

  if (a3)
  {
    v100 = v101 - 1;
  }

  v94[13] = v22 - v31;
  v94[14] = v19 - v30;
  v103 = v12 + 216;
  for (j = 40; j != 136; j += 24)
  {
    v105 = (*(*(v12 + j) + 4 * v102) + *(*(v12 + j) + 4 * v101) + *(*(v12 + j) + 4 * v100));
    v106 = __clz(v105 + 1) ^ 0x3F;
    if (v106 <= 5)
    {
      LOBYTE(v106) = 5;
    }

    v169.i32[v93] = ((*(v103 + 4 * (v105 >> (v106 - 5))) * *(v12 + v93 * 4 + 200)) >> (v106 - 5)) + 4;
    ++v93;
  }

  v107 = 8 * v22;
  v108 = 8 * v20;
  v109 = 8 * v26;
  if (a3)
  {
    if (a4)
    {
      v110 = 0;
    }

    else
    {
      v110 = v99;
    }

    v111 = *(v12 + 136);
    v112 = *(v111 + 4 * v110 + 4 * a3 - 4);
  }

  else
  {
    v112 = 0;
    v111 = *(v12 + 136);
  }

  v113 = 0;
  v114 = *(v111 + 4 * v101);
  v115 = *(v111 + 4 * v100);
  v116 = v112 + v114;
  v117 = *(v111 + 4 * v102);
  if (v114 >= 0)
  {
    v118 = v114;
  }

  else
  {
    v118 = -v114;
  }

  if (v112 >= 0)
  {
    v119 = v112;
  }

  else
  {
    v119 = -v112;
  }

  if (v118 <= v119)
  {
    v120 = v112;
  }

  else
  {
    v120 = v114;
  }

  if (v115 >= 0)
  {
    v121 = v115;
  }

  else
  {
    v121 = -v115;
  }

  if (v120 >= 0)
  {
    v122 = v120;
  }

  else
  {
    v122 = -v120;
  }

  if (v121 > v122)
  {
    v120 = v115;
  }

  if (v117 >= 0)
  {
    v123 = v117;
  }

  else
  {
    v123 = -v117;
  }

  if (v120 >= 0)
  {
    v124 = v120;
  }

  else
  {
    v124 = -v120;
  }

  if (v123 > v124)
  {
    LODWORD(v120) = v117;
  }

  v94[15] = v120;
  v125 = *(v12 + 176);
  v126 = v107 - (((v116 + v117) * *(v12 + 172)) >> 5);
  *v12 = v109 - v107 + v108;
  *(v12 + 8) = v126;
  v127 = v108 - (((v116 + v115) * v125) >> 5);
  v128 = v107 - ((*(v12 + 180) * v115 + *(v12 + 184) * v114 + *(v12 + 188) * v117 + 8 * ((v31 - v22) * *(v12 + 192) + (v21 - v20) * *(v12 + 196))) >> 5);
  *(v12 + 16) = v127;
  *(v12 + 24) = v128;
  v170 = vshlq_u32(v169, vnegq_s32(vdupq_n_s32((__clz(vaddvq_s32(v169)) ^ 0x1F) - 4)));
  v129 = vaddvq_s32(v170);
  v130 = (v129 >> 1) - 1;
  do
  {
    v130 += *(v12 + 8 * v113) * v170.u32[v113];
    ++v113;
  }

  while (v113 != 4);
  v131 = (v130 * *(v103 + 4 * (v129 - 1))) >> 24;
  if (v109 <= v107)
  {
    result = 8 * v22;
  }

  else
  {
    result = 8 * v26;
  }

  if (v108 > result)
  {
    result = 8 * v20;
  }

  if (v107 >= v109)
  {
    v132 = 8 * v26;
  }

  else
  {
    v132 = 8 * v22;
  }

  if (v132 >= v108)
  {
    v132 = 8 * v20;
  }

  if (v131 < result)
  {
    result = v131;
  }

  if (v132 > result)
  {
    result = v132;
  }

  if ((v115 ^ v114 | v112 ^ v114) <= 0)
  {
    v133 = result;
  }

  else
  {
    v133 = v131;
  }

  *(v12 + 32) = v133;
  v134 = v18[5];
  if (v134)
  {
    v135 = (v18[3] + v18[2] * a3);
    v136 = v94 + 16;
    do
    {
      v137 = *v135++;
      *v136++ = v137;
      --v134;
    }

    while (v134);
  }

  v91 = v168;
  switch(v166)
  {
    case 1:
      break;
    case 2:
      v20 = v22;
      break;
    case 3:
      v138 = v20 + v22;
      goto LABEL_250;
    case 4:
      v145 = v22 - v21;
      if (v22 - v21 < 0)
      {
        v145 = v21 - v22;
      }

      v146 = v20 - v21;
      if (v20 - v21 < 0)
      {
        v146 = v21 - v20;
      }

      if (v145 >= v146)
      {
        v20 = v22;
      }

      break;
    case 5:
      if (v19 >= v22)
      {
        v139 = v22;
      }

      else
      {
        v139 = v19;
      }

      if (v19 <= v22)
      {
        v140 = v22;
      }

      else
      {
        v140 = v19;
      }

      v141 = v19 + v22 - v21;
      if (v139 > v21)
      {
        v141 = v140;
      }

      if (v140 >= v21)
      {
        v139 = v141;
      }

      v20 = v139;
      break;
    case 6:
      v20 = (v133 + 3) >> 3;
      break;
    case 7:
      v20 = v26;
      break;
    case 8:
      v20 = v21;
      break;
    case 9:
      v20 = v98;
      break;
    case 10:
      v138 = v21 + v20;
      goto LABEL_250;
    case 11:
      v138 = v21 + v22;
      goto LABEL_250;
    case 12:
      v138 = v22 + v26;
LABEL_250:
      v20 = v138 / 2;
      break;
    case 13:
      v142 = 3 * v26 - 2 * v31 + 6 * v22 - v20 + 8 * v20 + v98 + v164;
      v143 = v142 + 8;
      v144 = v142 + 23;
      if (v143 >= 0)
      {
        v144 = v143;
      }

      v20 = v144 >> 4;
      break;
    default:
      v20 = 0;
      break;
  }

  v170.i64[v166] = v20;
LABEL_252:
  ++***(a1 + 56);
  v147 = *(a1 + 64);
  v148 = *v147;
  v149 = **v147;
  v150 = (*v147)[1];
  v151 = v150 + v149;
  *v148 = v150;
  v148[1] = (v150 >> 5) ^ ((v149 ^ (v149 << 23)) >> 18) ^ v150 ^ v149 ^ (v149 << 23);
  v152 = v167;
  if (*v147[1] >= HIDWORD(v151))
  {
    result = sub_240BDC2B8(*(a1 + 48), *v9, v91, &v170);
    v12 = *(a1 + 40);
    v152 = *(a1 + 16);
  }

  v153 = 0;
  v154 = *(v152 + 40) + 2;
  if (a4)
  {
    v155 = 0;
  }

  else
  {
    v155 = *(v152 + 40) + 2;
  }

  v156 = 8 * *v9;
  v157 = v155 + a3;
  *(*(v12 + 136) + 4 * v157) = *(v12 + 32) - v156;
  v158 = (a4 << 63 >> 63) & v154;
  v159 = (v12 + 40);
  do
  {
    v160 = *(v12 + v153) - v156;
    if (v160 < 0)
    {
      v160 = v156 - *(v12 + v153);
    }

    v161 = (v160 + 3) >> 3;
    v162 = *v159;
    v159 += 3;
    *(v162 + 4 * v157) = v161;
    *(v162 + 4 * v158 + 4 * a3 + 4) += v161;
    v153 += 8;
  }

  while (v153 != 32);
  return result;
}

void sub_240BD5204(uint64_t *a1, int a2, unint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if ((a2 & 0xFFFFFFFD) == 0)
  {
    LODWORD(v8) = 0;
    WORD2(v8) = -1;
    *(&v8 + 1) = 0;
    LODWORD(v9) = 0;
    *(&v9 + 1) = 0;
    LODWORD(v10) = 1;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    sub_240BD5960(a1, &v8, &v10 + 8);
  }

  if (a2 == 5)
  {
    v12 = xmmword_240C854F4;
    v13 = unk_240C85504;
    v14 = xmmword_240C85514;
    v15 = unk_240C85524;
    v8 = xmmword_240C854B4;
    v9 = unk_240C854C4;
    v10 = xmmword_240C854D4;
    v11 = unk_240C854E4;
    v16 = 500;
    __p = 0;
    v6 = 0;
    v7 = 0;
    sub_240B7D364(&__p, &v8, &v17, 0x21uLL);
    sub_240BD5AFC(a1, 15, &__p, 6, a3);
LABEL_11:
    if (__p)
    {
      operator delete(__p);
    }

    return;
  }

  if (a2 != 4)
  {
    if (a2 == 3)
    {
      LODWORD(v8) = 0;
      WORD2(v8) = -1;
      *(&v8 + 1) = 0;
      LODWORD(v9) = 1;
      *(&v9 + 1) = 0;
      LODWORD(v10) = 1;
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      sub_240BD5960(a1, &v8, &v10 + 8);
    }

    v12 = xmmword_240C854F4;
    v13 = unk_240C85504;
    v14 = xmmword_240C85514;
    v15 = unk_240C85524;
    v8 = xmmword_240C854B4;
    v9 = unk_240C854C4;
    v10 = xmmword_240C854D4;
    v11 = unk_240C854E4;
    v16 = 500;
    __p = 0;
    v6 = 0;
    v7 = 0;
    sub_240B7D364(&__p, &v8, &v17, 0x21uLL);
    sub_240BD5AFC(a1, 9, &__p, 5, a3);
    goto LABEL_11;
  }

  if (a3 <= 0x3FF)
  {
    LODWORD(v8) = 0;
    WORD2(v8) = -1;
    *(&v8 + 1) = 0;
    LODWORD(v9) = 1;
    *(&v9 + 1) = 0;
    LODWORD(v10) = 1;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    sub_240BD5960(a1, &v8, &v10 + 8);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  LODWORD(v8) = 1;
  WORD2(v8) = 0;
  *(&v8 + 1) = 0x200000001;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 2;
  WORD2(v8) = 0;
  *(&v8 + 1) = 0x400000003;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = 0;
  *(&v8 + 1) = 0x600000005;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = 6;
  *(&v8 + 1) = 0x1600000015;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = 2;
  *(&v8 + 1) = 0x800000007;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = -1;
  *(&v8 + 1) = 0;
  LODWORD(v9) = 5;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = -1;
  *(&v8 + 1) = 0;
  LODWORD(v9) = 5;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 5;
  WORD2(v8) = 7;
  *(&v8 + 1) = 0xA00000009;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 5;
  WORD2(v8) = 7;
  *(&v8 + 1) = 0x100000000FLL;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 11;
  WORD2(v8) = 7;
  *(&v8 + 1) = 0xC0000000BLL;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 3;
  WORD2(v8) = 7;
  *(&v8 + 1) = 0xE0000000DLL;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = -1;
  *(&v8 + 1) = 0;
  LODWORD(v9) = 1;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = -1;
  *(&v8 + 1) = 0;
  LODWORD(v9) = 1;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = -1;
  *(&v8 + 1) = 0;
  LODWORD(v9) = 1;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = -1;
  *(&v8 + 1) = 0;
  LODWORD(v9) = 1;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 11;
  WORD2(v8) = 7;
  *(&v8 + 1) = 0x1200000011;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 3;
  WORD2(v8) = 7;
  *(&v8 + 1) = 0x1400000013;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = -1;
  *(&v8 + 1) = 0;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = -1;
  *(&v8 + 1) = 0;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = -1;
  *(&v8 + 1) = 0;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = -1;
  *(&v8 + 1) = 0;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = 7;
  *(&v8 + 1) = 0x1800000017;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = 7;
  *(&v8 + 1) = 0x1A00000019;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = -1;
  *(&v8 + 1) = 0;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = -1;
  *(&v8 + 1) = 0;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = -1;
  *(&v8 + 1) = 0;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
  LODWORD(v8) = 0;
  WORD2(v8) = -1;
  *(&v8 + 1) = 0;
  LODWORD(v9) = 0;
  *(&v9 + 1) = 0;
  LODWORD(v10) = 1;
  sub_240BD59F8(a1, &v8);
}

void sub_240BD58C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_240BD59DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240BD59F8(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      sub_240B228BC();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_240B5C5D8(v11);
    }

    v12 = 40 * v8;
    v13 = *a2;
    v14 = a2[1];
    *(v12 + 32) = *(a2 + 4);
    *v12 = v13;
    *(v12 + 16) = v14;
    v7 = 40 * v8 + 40;
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
  }

  *(a1 + 8) = v7;
}

void sub_240BD5AFC(void *a1, __int16 a2, void *a3, int a4, unint64_t a5)
{
  v29.n128_u32[0] = 0;
  v8 = __clz(a5) ^ 0x3F;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v34 = 0u;
  v35 = 0u;
  if ((a5 & (a5 - 1)) != 0)
  {
    ++v8;
  }

  *__p = 0uLL;
  v29.n128_u16[2] = -1;
  if (v8 >= 0xE)
  {
    v9 = 0;
  }

  else
  {
    v9 = 112 - 8 * v8;
  }

  v29.n128_u64[1] = 0;
  LODWORD(v30) = a4;
  v31 = 0;
  v32 = 1;
  sub_240BD59F8(a1, &v29);
  v27 = a3;
  v10 = (a3[1] - *a3) >> 2;
  v29.n128_u64[0] = 0;
  v29.n128_u64[1] = v10;
  v30 = 0;
  sub_240BD5DE0(__p, &v29);
  v11 = *(&v35 + 1);
  while (v11)
  {
    v12 = __p[1];
    v13 = v35;
    v14 = (*(__p[1] + v35 / 0xAA) - 4080 * (v35 / 0xAA) + 24 * v35);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    --v11;
    *&v35 = v35 + 1;
    *(&v35 + 1) = v11;
    if (v35 >= 0x154)
    {
      operator delete(*__p[1]);
      __p[1] = v12 + 8;
      *&v35 = v13 - 169;
    }

    if (v15 + v9 < v16)
    {
      v18 = (v16 + v15) >> 1;
      v19 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
      v20 = *a1 + 40 * v17;
      *v20 = *(*v27 + 4 * v18);
      *(v20 + 4) = a2;
      *(v20 + 8) = v19;
      *(v20 + 12) = (v19 + 1);
      *(v20 + 24) = 0;
      *(v20 + 32) = 1;
      v29.n128_u64[0] = (v18 + 1);
      v29.n128_u64[1] = v16;
      v30 = v19;
      sub_240BD5DE0(__p, &v29);
      v29.n128_u32[0] = 0;
      v29.n128_u16[2] = -1;
      v29.n128_u64[1] = 0;
      LODWORD(v30) = a4;
      v31 = 0;
      v32 = 1;
      sub_240BD59F8(a1, &v29);
      v29.n128_u64[0] = v15;
      v29.n128_u64[1] = ((v16 + v15) >> 1);
      v30 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
      sub_240BD5DE0(__p, &v29);
      v29.n128_u32[0] = 0;
      v29.n128_u16[2] = -1;
      v29.n128_u64[1] = 0;
      LODWORD(v30) = a4;
      v31 = 0;
      v32 = 1;
      sub_240BD59F8(a1, &v29);
      v11 = *(&v35 + 1);
    }
  }

  v21 = __p[1];
  v22 = v34;
  v23 = v34 - __p[1];
  if (v34 - __p[1] >= 0x11)
  {
    do
    {
      v24 = *v21++;
      operator delete(v24);
      v23 -= 8;
    }

    while (v23 > 0x10);
  }

  while (v21 != v22)
  {
    v25 = *v21++;
    operator delete(v25);
  }

  v26 = __p[0];
  if (__p[0])
  {

    operator delete(v26);
  }
}

void sub_240BD5DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_240BD6304(va);
  v18 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

__n128 sub_240BD5DE0(unint64_t *a1, __n128 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 170 * ((v4 - v5) >> 3) - 1;
  }

  v7 = a1[4];
  if (v6 == a1[5] + v7)
  {
    v8 = v7 >= 0xAA;
    v9 = v7 - 170;
    if (!v8)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v4 - v5 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }

      sub_240B2291C();
    }

    a1[4] = v9;
    v17 = *v5;
    a1[1] = (v5 + 1);
    sub_240BD63D0(a1, &v17);
  }

  v14 = a1[5] + a1[4];
  v15 = (*(a1[1] + 8 * (v14 / 0xAA)) - 4080 * (v14 / 0xAA) + 24 * v14);
  result = *a2;
  v15[1].n128_u64[0] = a2[1].n128_u64[0];
  *v15 = result;
  ++a1[5];
  return result;
}

void sub_240BD62D8(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_240BD6304(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 170;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_240BD63D0(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_240B2291C();
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_240BD64F0(uint64_t *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  if (*a2 != a2[1] && **a2 != *(*a2 + 8))
  {
    v10 = a2 + 22;
    v9 = a2[22];
    if (v9)
    {
      a2[23] = v9;
      operator delete(v9);
    }

    *v10 = 0;
    a2[23] = 0;
    a2[24] = 0;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    sub_240B5C5D8(1uLL);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_240BD789C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p)
{
  v31 = *(v29 - 176);
  if (v31)
  {
    operator delete(v31);
  }

  if (__p)
  {
    *(a17 + 8) = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240BD799C(void *a1, uint64_t a2)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0x1FFFFFFFDFFuLL;
  sub_240B63AB4(&v17, &v16);
  v4 = v17;
  if (v17 == v18)
  {
LABEL_22:
    v5 = 1;
    goto LABEL_23;
  }

  v5 = 0;
  v7 = *(v18 - 4);
  v6 = *(v18 - 3);
  v8 = *(v18 - 1);
  v18 -= 16;
  if ((v7 - 511) < 0xFFFFFC00 || v6 > 511)
  {
LABEL_23:
    if (v4)
    {
      goto LABEL_24;
    }

    return v5;
  }

  while (1)
  {
    v9 = *a1 + 24 * v8;
    if (*v9 == -1)
    {
      break;
    }

    if (*(v9 + 20) < 2)
    {
      LODWORD(v16) = *(v9 + 4);
      DWORD1(v16) = v6;
      *(&v16 + 1) = *(v9 + 16);
    }

    else
    {
      LODWORD(v16) = *(v9 + 8);
      DWORD1(v16) = v6;
      *(&v16 + 1) = *(v9 + 16);
      sub_240B63AB4(&v17, &v16);
      *&v16 = *(v9 + 4);
      *(&v16 + 1) = (*(v9 + 16) + 1);
    }

    sub_240B63AB4(&v17, &v16);
    v12 = *(v9 + 4);
    if (*(v9 + 22) < 2)
    {
      *&v16 = __PAIR64__(v12, v7);
      *(&v16 + 1) = (*(v9 + 16) + 2);
    }

    else
    {
      v13 = *(v9 + 16);
      LODWORD(v16) = *(v9 + 12);
      DWORD1(v16) = v12;
      *(&v16 + 1) = (v13 + 2);
      sub_240B63AB4(&v17, &v16);
      v14 = *(v9 + 16);
      *&v16 = __PAIR64__(*(v9 + 12), v7);
      *(&v16 + 1) = (v14 + 3);
    }

    sub_240B63AB4(&v17, &v16);
LABEL_18:
    v4 = v17;
    if (v17 == v18)
    {
      goto LABEL_22;
    }

    v5 = 0;
    v7 = *(v18 - 4);
    v6 = *(v18 - 3);
    v8 = *(v18 - 1);
    v18 -= 16;
    if ((v7 - 511) < 0xFFFFFC00 || v6 > 511)
    {
      goto LABEL_23;
    }
  }

  if (*(v9 + 20) == *(v9 + 20) && *(v9 + 8) == 1)
  {
    if (v7 < v6)
    {
      v10 = v7 + 513;
      v11 = -v6;
      do
      {
        *(a2 + 2 * v10) = *(v9 + 16);
        *(a2 + 2048 + v10++) = *(v9 + 20);
      }

      while (v11 + v10 != 513);
    }

    goto LABEL_18;
  }

  v5 = 0;
  if (!v4)
  {
    return v5;
  }

LABEL_24:
  operator delete(v4);
  return v5;
}

void sub_240BD7BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240BD7BE8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  if (!a5)
  {
    if (!a6)
    {
      v14 = 0;
      v12 = 0;
      v10 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v13 = 0;
      v16 = 0;
      goto LABEL_20;
    }

    v7 = *(a3 - 4 * a4);
    v10 = v7;
    v8 = v7;
    v9 = v7;
    goto LABEL_6;
  }

  v7 = *(a3 - 4);
  v8 = v7;
  if (a6)
  {
    v9 = *(a3 + 4 * ~a4);
    v10 = *(a3 - 4 * a4);
LABEL_6:
    v11 = 1;
    if (a5 + 1 >= a2)
    {
      v12 = v10;
    }

    else
    {
      v12 = *(a3 + 4 * (1 - a4));
    }

    goto LABEL_10;
  }

  v11 = 0;
  v9 = v7;
  v10 = v7;
  v12 = v7;
LABEL_10:
  v13 = v8;
  if (a5 >= 2)
  {
    v13 = *(a3 - 8);
  }

  v14 = v10;
  if (a6 >= 2)
  {
    v14 = *(a3 - 8 * a4);
  }

  v15 = v11 ^ 1;
  if (a5 + 2 >= a2)
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = v12;
  }

  else
  {
    v16 = *(a3 + 4 * (2 - a4));
  }

LABEL_20:
  *result = 0;
  if (a7 <= 7)
  {
    if (a7 > 3)
    {
      v19 = v10 - v9;
      if (v10 - v9 < 0)
      {
        v19 = v9 - v10;
      }

      v20 = v8 - v9;
      if (v8 - v9 < 0)
      {
        v20 = v9 - v8;
      }

      if (v19 >= v20)
      {
        v8 = v10;
      }

      if (v7 >= v10)
      {
        v21 = v10;
      }

      else
      {
        v21 = v7;
      }

      if (v7 <= v10)
      {
        v22 = v10;
      }

      else
      {
        v22 = v7;
      }

      LODWORD(v10) = v7 + v10 - v9;
      if (v21 > v9)
      {
        LODWORD(v10) = v22;
      }

      if (v22 < v9)
      {
        LODWORD(v10) = v21;
      }

      v10 = v10;
      if (a7 == 7)
      {
        v23 = v12;
      }

      else
      {
        v23 = 0;
      }

      if (a7 != 5)
      {
        v10 = v23;
      }

      v18 = a7 == 4;
    }

    else
    {
      v17 = (v8 + v10) / 2;
      if (a7 != 3)
      {
        v17 = 0;
      }

      if (a7 != 2)
      {
        v10 = v17;
      }

      v18 = a7 == 1;
    }

    if (!v18)
    {
      v8 = v10;
    }

    goto LABEL_69;
  }

  if (a7 <= 10)
  {
    v8 = (v9 + v8) / 2;
    if (a7 != 10)
    {
      v8 = 0;
    }

    if (a7 == 9)
    {
      v8 = v13;
    }

    if (a7 == 8)
    {
      v8 = v9;
    }

    goto LABEL_69;
  }

  switch(a7)
  {
    case 11:
      v27 = v9 + v10;
LABEL_68:
      v8 = v27 / 2;
      break;
    case 12:
      v27 = v10 + v12;
      goto LABEL_68;
    case 13:
      v24 = 3 * v12 - 2 * v14 + 6 * v10 - v8 + 8 * v8 + v13 + v16;
      v25 = v24 + 8;
      v26 = v24 + 23;
      if (v25 >= 0)
      {
        v26 = v25;
      }

      v8 = v26 >> 4;
      break;
    default:
      v8 = 0;
      break;
  }

LABEL_69:
  *(result + 8) = v8;
  *(result + 16) = a7;
  return result;
}

uint64_t sub_240BD7E08(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t **a7, unint64_t *a8, uint64_t *a9, void *a10, uint64_t a11, unint64_t *a12)
{
  v315[15] = *MEMORY[0x277D85DE8];
  if (*(a1 + 80))
  {
    return 1;
  }

  v13 = a1;
  v14 = *(a1 + 8);
  v15 = v14 - *a1;
  if (v14 == *a1)
  {
    return 0;
  }

  sub_240B63BBC(v272);
  if (a10)
  {
    v21 = a10;
  }

  else
  {
    v21 = v272;
  }

  *&v285[1] = xmmword_240C112C0;
  v285[0] = &unk_2852A2120;
  v285[3] = 0;
  v245 = v21;
  (*(*v21 + 16))(v21, v285);
  if (*(a2 + 64) == 6)
  {
    v22 = *(a2 + 68);
    *(v245 + 56) = 13;
    if (v22 > 3)
    {
      v32 = 4;
      v28 = 5;
      v26 = 10;
      v23 = 12;
      v24 = 12;
      v25 = 12;
      v27 = 10;
      v29 = 5;
      v30 = 5;
      v31 = 12;
    }

    else
    {
      v23 = dword_240C11AE0[v22];
      v24 = dword_240C11AF0[v22];
      v25 = dword_240C11B00[v22];
      v26 = dword_240C11B10[v22];
      v27 = dword_240C11B20[v22];
      v28 = dword_240C85588[v22];
      v29 = dword_240C11B30[v22];
      v30 = dword_240C11B40[v22];
      v31 = dword_240C11B50[v22];
      v32 = dword_240C11B60[v22];
    }

    *(v245 + 60) = v23;
    *(v245 + 64) = v24;
    *(v245 + 68) = v25;
    *(v245 + 28) = v26;
    *(v245 + 32) = v27;
    *(v245 + 36) = v28;
    *(v245 + 40) = v29;
    *(v245 + 44) = v30;
    *(v245 + 48) = v31;
    *(v245 + 52) = v32;
  }

  if (a10)
  {
    v33 = (a10 + 9);
  }

  else
  {
    v33 = v273;
  }

  if (v33 != (v13 + 3))
  {
    sub_240B43928(v33, v13[3], v13[4], 0x8E38E38E38E38E39 * ((v13[4] - v13[3]) >> 3));
  }

  if (a9)
  {
    *(v245 + 8) = 1;
    v34 = a7 == 0;
  }

  else if (a7)
  {
    v34 = 0;
  }

  else
  {
    v12 = sub_240C0EB88(v245, a3, a5, a4);
    if (v12)
    {
      goto LABEL_367;
    }

    v34 = 1;
  }

  v271 = 0;
  v35 = v15 >> 6;
  v270 = 0u;
  memset(v269, 0, sizeof(v269));
  v268 = 0;
  if (a8)
  {
    v36 = a8;
  }

  else
  {
    v36 = &v268;
  }

  v37 = *v36;
  if (!*v36)
  {
    v38 = 0;
    if (v35 <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v15 >> 6;
    }

    v40 = (*v13 + 48);
    while (1)
    {
      v41 = *(v40 - 1);
      if (v38 >= v13[9])
      {
        if (v41 > *a2 || (v42 = *v40, *v40 > *a2))
        {
LABEL_35:
          if (v37 <= 1)
          {
            v37 = 1;
          }

          *v36 = v37;
          break;
        }
      }

      else
      {
        v42 = *v40;
      }

      v37 += v42 * v41;
      *v36 = v37;
      ++v38;
      v40 += 8;
      if (v39 == v38)
      {
        goto LABEL_35;
      }
    }
  }

  v246 = a2;
  v248 = v13;
  if (a9 || *(a2 + 84) != 1)
  {
LABEL_362:
    v266[0] = 0;
    v266[1] = 0;
    v267 = 0;
    sub_240B8C03C(v265);
  }

  v250 = v34;
  if (v34)
  {
    if (sub_240BDBAA0(v269, *(a2 + 64), *(a2 + 76)) || sub_240BDBFCC(v269, (a2 + 24), *(a2 + 76)))
    {
      v12 = 1;
      goto LABEL_366;
    }

    memset(v285, 0, 24);
    memset(v315, 0, 24);
    v307 = 0;
    v306 = 0;
    v308 = 0;
    v274 = 0uLL;
    *&v275 = 0;
    sub_240BDD550(v13, a2, 0, &v306, &v274, v285, v315);
    sub_240BDC748(v269, &v281, 0, 0, &v306, &v274, v285, v315, *(a2 + 56));
    if (v274)
    {
      operator delete(v274);
    }

    if (v306)
    {
      operator delete(v306);
    }

    if (v315[0])
    {
      operator delete(v315[0]);
    }

    v252 = v36;
    v247 = &v270;
    if (v285[0])
    {
      operator delete(v285[0]);
    }

    a7 = v269;
  }

  else
  {
    v252 = v36;
    v247 = (a7 + 22);
  }

  v43 = 0;
  if (v35 <= 1)
  {
    v44 = 1;
  }

  else
  {
    v44 = v15 >> 6;
  }

  v251 = v44;
  do
  {
    v45 = *v13;
    v256 = v43;
    v46 = *v13 + (v43 << 6);
    v47 = *(v46 + 40);
    if (!v47)
    {
      goto LABEL_360;
    }

    v48 = *(v46 + 48);
    if (!v48)
    {
      goto LABEL_360;
    }

    if (v256 >= v13[9] && (v47 > *a2 || v48 > *a2))
    {
      break;
    }

    v265[0] = v252;
    sub_240B2B9C0(&v300, 4 * *(a2 + 20) + 16);
    v50 = *(a2 + 16);
    v51 = (v45 + (v256 << 6));
    v52 = fminf(v50, 1.0);
    v53 = v52;
    v54 = v51[5];
    if (v52 > 0.0)
    {
      v55 = fmin(1024.0 / (v51[6] * v54), 1.0);
      if (v55 > v53)
      {
        v53 = v55;
      }
    }

    v303 = (v53 * 4294967300.0);
    v304 = xmmword_240C11AD0;
    v266[0] = &v304;
    v266[1] = &v303;
    v302 = v51[2] >> 2;
    v56 = (v301 - v300) >> 2;
    v57 = v56 - 16;
    sub_240B3AC2C(v285, v56 - 16, v54);
    v12 = LODWORD(v287[0]);
    if (LODWORD(v287[0]))
    {
      a2 = v246;
      v13 = v248;
    }

    else
    {
      v274 = *v285;
      v275 = *&v285[2];
      v276 = v286;
      v277 = v57;
      v278 = v54;
      v279 = 0;
      v281 = &unk_2852A1238;
      v282 = *(v245 + 24);
      v283 = *(v245 + 40);
      v284 = *(v245 + 56);
      sub_240B62C98(v285, &v281, v51[5]);
      v58 = (v53 * v51[6] * v51[5] + 64.0);
      for (i = *a7; i != a7[1]; i += 3)
      {
        v60 = v58 + ((i[1] - *i) >> 1);
        if (v60 > (i[2] - *i) >> 1)
        {
          if ((v60 & 0x8000000000000000) == 0)
          {
            sub_240B29578(v60);
          }

          sub_240B228BC();
        }
      }

      v61 = a7[6];
      v62 = a7[7];
      while (v61 != v62)
      {
        sub_240B844BC(v61, v61[1] + v58 - *v61);
        v61 += 3;
      }

      v63 = 3 * (v58 + ((a7[4] - a7[3]) >> 1));
      v64 = __clz(v63 >> 1) ^ 0x3F;
      if ((((v63 >> 1) - 1) & (v63 >> 1)) != 0)
      {
        v65 = v64 + 1;
      }

      else
      {
        v65 = v64;
      }

      if (1 << v65 != (a7[23] - a7[22]) >> 2)
      {
        sub_240B2B4A8(v247, 1 << v65, &dword_240C85598);
        v67 = a7[3];
        v66 = a7[4];
        if (v66 != v67)
        {
          v68 = 0;
          do
          {
            if (*(v67 + v68) != -1)
            {
              sub_240BDC0E8(a7, v68);
              v67 = a7[3];
              v66 = a7[4];
            }

            ++v68;
          }

          while (v68 < (v66 - v67) >> 1);
        }
      }

      LOBYTE(v280) = a7[16] - a7[15] != 4;
      v306 = &v280;
      v307 = &v300;
      v308 = v51;
      v309 = &v302;
      v310 = &v274;
      v311 = v285;
      v312 = a7;
      v313 = v265;
      v314 = v266;
      if (v51[6])
      {
        v69 = 0;
        v260 = v51;
        do
        {
          v70 = v69 - 1;
          if (!v69)
          {
            v70 = 0;
          }

          v257 = v70;
          v71 = v51[2];
          v262 = v51[3];
          if (v274)
          {
            v72 = DWORD1(v274) == 0;
          }

          else
          {
            v72 = 1;
          }

          if (!v72)
          {
            v73 = 0;
            do
            {
              bzero((*(&v275 + 1) + v275 * v73++), 4 * v274);
            }

            while (v73 < DWORD1(v274));
          }

          v74 = v51[5];
          if (v256 >= 1)
          {
            v75 = v277;
            if (v277)
            {
              v76 = 0;
              v77 = 0;
              v78 = *v248;
              v79 = v256;
              v80 = *v248 + (v256 << 6);
              v81 = v69 - 1;
              v82 = *(v80 + 40);
              if (!v69)
              {
                v81 = 0;
              }

              v254 = v81;
              v253 = *(&v275 + 1) + 8;
              v83 = 4 * (v275 >> 2);
              do
              {
                v84 = v78 + ((v79 - 1) << 6);
                if (*(v84 + 40) == v82 && *(v84 + 48) == *(v80 + 48) && *(v84 + 56) == *(v80 + 56) && *(v84 + 60) == *(v80 + 60))
                {
                  if (v74)
                  {
                    v85 = 0;
                    v88 = v84 + 16;
                    v87 = *(v84 + 16);
                    v86 = *(v88 + 8);
                    v89 = v87 * v254;
                    v90 = (v86 + v69 * v87);
                    v91 = (v86 + v257 * v87);
                    v92 = (v253 + 4 * v76);
                    do
                    {
                      v93 = *v90;
                      if (v93 >= 0)
                      {
                        LODWORD(v94) = *v90;
                      }

                      else
                      {
                        v94 = -v93;
                      }

                      *(v92 - 2) = v94;
                      *(v92 - 1) = v93;
                      if (v85)
                      {
                        v95 = *(v90 - 1);
                        if (v69)
                        {
                          v96 = *(v91 - 1);
                          v97 = *v91;
                        }

                        else
                        {
                          v97 = *(v90 - 1);
                          v96 = v97;
                        }
                      }

                      else
                      {
                        v95 = 0;
                        if (v69)
                        {
                          v96 = 0;
                          v97 = *(v86 + v89);
                        }

                        else
                        {
                          v97 = 0;
                          v96 = 0;
                        }
                      }

                      if (v97 >= v95)
                      {
                        v98 = v95;
                      }

                      else
                      {
                        v98 = v97;
                      }

                      if (v95 <= v97)
                      {
                        v99 = v97;
                      }

                      else
                      {
                        v99 = v95;
                      }

                      v100 = v97 + v95 - v96;
                      if (v98 > v96)
                      {
                        v100 = v99;
                      }

                      if (v99 < v96)
                      {
                        v100 = v98;
                      }

                      v101 = v93 - v100;
                      if (v101 >= 0)
                      {
                        LODWORD(v102) = v101;
                      }

                      else
                      {
                        v102 = -v101;
                      }

                      *v92 = v102;
                      v92[1] = v101;
                      ++v85;
                      ++v90;
                      ++v91;
                      v92 = (v92 + v83);
                    }

                    while (v74 != v85);
                  }

                  v77 += 4;
                }

                if (v79 < 2)
                {
                  break;
                }

                v76 = v77;
                --v79;
              }

              while (v75 > v77);
            }
          }

          v103 = v300;
          v104 = v262 + v71 * v69;
          *v300 = v256;
          v103[1] = a6;
          v103[2] = v69;
          v103[9] = 0;
          if (v69 < 2 || v74 < 9 || v277)
          {
            if (v74)
            {
              v240 = 0;
              do
              {
                sub_240BD46AC(&v306, v104, v240++, v69);
              }

              while (v240 < v51[5]);
            }
          }

          else
          {
            v105 = 0;
            v106 = 1;
            do
            {
              v107 = v106;
              sub_240BD46AC(&v306, v104, v105, v69);
              v106 = 0;
              v105 = 1;
            }

            while ((v107 & 1) != 0);
            v108 = v51[5];
            v109 = v108 - 2;
            if (v108 - 2 >= 3)
            {
              v110 = 2;
              do
              {
                v111 = (v104 + 4 * v110);
                if (v280 == 1)
                {
                  v112 = 0;
                  v113 = *&v111[~v302];
                  v114 = v113.i32[1];
                  v115 = v111[1 - v302];
                  v116 = *(v111 - 1);
                  v117 = *(v111 - 2);
                  v258 = v111[2 - v302];
                  v118 = v111[-2 * v302];
                  v119 = v300;
                  *(v300 + 3) = v110;
                  v120.i64[0] = vdup_lane_s32(v113, 1).i32[0];
                  v120.i64[1] = v116;
                  v121 = v120;
                  v119[2] = vmovn_s64(vabsq_s64(v120));
                  v119[3].i32[0] = v113.i32[1];
                  v122.i32[0] = v113.i32[1] + v116;
                  v122.i32[1] = v116;
                  v123.i32[0] = v113.i32[0];
                  v123.i64[1] = __PAIR64__(v115, v113.u32[1]);
                  v122.u64[1] = v113;
                  v124 = v116 - v119[4].i32[1];
                  v123.i32[1] = v113.i32[0];
                  v119[3].i32[1] = v116;
                  v119[4].i32[0] = v124;
                  v125 = vsubq_s32(v122, v123);
                  *&v119[4].u8[4] = v125;
                  v263 = v118;
                  v119[6].i32[1] = v113.i32[1] - v118;
                  v119[7].i32[0] = v116 - v117;
                  v126 = v108 + 2;
                  if (v69)
                  {
                    v127 = v108 + 2;
                  }

                  else
                  {
                    v127 = 0;
                  }

                  v128 = v127 + v110;
                  if (v108 - 1 <= v110)
                  {
                    v129 = v127 + v110;
                  }

                  else
                  {
                    v129 = v128 + 1;
                  }

                  if (v110)
                  {
                    v130 = v128 - 1;
                  }

                  else
                  {
                    v130 = v127;
                  }

                  for (j = 5; j != 17; j += 3)
                  {
                    v132 = (*(v285[j] + v129) + *(v285[j] + v128) + *(v285[j] + v130));
                    v133 = __clz(v132 + 1) ^ 0x3F;
                    if (v133 <= 5)
                    {
                      LOBYTE(v133) = 5;
                    }

                    v305.i32[v112] = ((*&v298[4 * (v132 >> (v133 - 5)) + 16] * *&v298[v112 * 4]) >> (v133 - 5)) + 4;
                    ++v112;
                  }

                  if (v110)
                  {
                    if (v69)
                    {
                      v134 = 0;
                    }

                    else
                    {
                      v134 = v126;
                    }

                    v135 = __p;
                    v136 = *(__p + v134 + v110 - 1);
                  }

                  else
                  {
                    v136 = 0;
                    v135 = __p;
                  }

                  v162 = 0;
                  v163 = 8 * v121.i64[0];
                  v164 = 8 * v121.i64[1];
                  v165 = v135[v128];
                  v166 = v135[v130];
                  v167 = 8 * v115;
                  v168 = v136 + v165;
                  v169 = v135[v129];
                  if (v165 >= 0)
                  {
                    v170 = v165;
                  }

                  else
                  {
                    v170 = -v165;
                  }

                  if (v136 >= 0)
                  {
                    v171 = v136;
                  }

                  else
                  {
                    v171 = -v136;
                  }

                  if (v170 <= v171)
                  {
                    v172 = v136;
                  }

                  else
                  {
                    v172 = v165;
                  }

                  if (v166 >= 0)
                  {
                    v173 = v166;
                  }

                  else
                  {
                    v173 = -v166;
                  }

                  if (v172 >= 0)
                  {
                    v174 = v172;
                  }

                  else
                  {
                    v174 = -v172;
                  }

                  if (v173 <= v174)
                  {
                    v175 = v172;
                  }

                  else
                  {
                    v175 = v166;
                  }

                  if (v169 >= 0)
                  {
                    v176 = v169;
                  }

                  else
                  {
                    v176 = -v169;
                  }

                  if (v175 >= 0)
                  {
                    v177 = v175;
                  }

                  else
                  {
                    v177 = -v175;
                  }

                  if (v176 > v177)
                  {
                    LODWORD(v175) = v169;
                  }

                  v119[7].i32[1] = v175;
                  v285[0] = (v164 - v163 + v167);
                  v285[1] = (v163 - (((v168 + v169) * v291) >> 5));
                  v285[2] = (v164 - (((v168 + v166) * v292) >> 5));
                  v285[3] = (v163 - ((v293 * v166 + v294 * v165 + v295 * v169 + 8 * ((v263 - v121.i64[0]) * v296 + (v113.i32[0] - v121.i64[1]) * v297)) >> 5));
                  v299[0] = vshlq_u32(v305, vnegq_s32(vdupq_n_s32((__clz(vaddvq_s32(v305)) ^ 0x1F) - 4)));
                  v178 = vaddvq_s32(v299[0]);
                  v179 = (v178 >> 1) - 1;
                  do
                  {
                    v179 += v285[v162] * v299[0].u32[v162];
                    ++v162;
                  }

                  while (v162 != 4);
                  v180 = 0;
                  v181 = (v179 * *&v298[4 * v178 + 12]) >> 24;
                  v182 = v166 ^ v165 | v136 ^ v165;
                  if (v167 <= v163)
                  {
                    v183 = 8 * v121.i64[0];
                  }

                  else
                  {
                    v183 = 8 * v115;
                  }

                  if (v164 > v183)
                  {
                    v183 = 8 * v121.i64[1];
                  }

                  if (v163 >= v167)
                  {
                    v184 = 8 * v115;
                  }

                  else
                  {
                    v184 = 8 * v121.i64[0];
                  }

                  if (v184 >= v164)
                  {
                    v184 = 8 * v121.i64[1];
                  }

                  if (v181 < v183)
                  {
                    v183 = v181;
                  }

                  if (v184 > v183)
                  {
                    v183 = v184;
                  }

                  if (v182 <= 0)
                  {
                    v181 = v183;
                  }

                  v286 = v181;
                  v185 = (v181 + 3) >> 3;
                  if (v113.i32[1] >= v116)
                  {
                    v186 = v116;
                  }

                  else
                  {
                    v186 = v113.i32[1];
                  }

                  if (v116 > v113.i32[1])
                  {
                    v114 = v116;
                  }

                  v187 = v125.i32[0];
                  if (v186 > v113.i32[0])
                  {
                    v187 = v114;
                  }

                  if (v114 >= v113.i32[0])
                  {
                    v186 = v187;
                  }

                  v188 = v186;
                  v189 = v121.i64[0] - v113.i32[0];
                  if (v189 < 0)
                  {
                    v189 = v113.i32[0] - v121.i64[0];
                  }

                  v190 = v121.i64[1] - v113.i32[0];
                  if (v190 < 0)
                  {
                    v190 = v113.i32[0] - v121.i64[1];
                  }

                  if (v189 >= v190)
                  {
                    v191 = v121.i64[0];
                  }

                  else
                  {
                    v191 = v121.i64[1];
                  }

                  v192 = 6 * v121.i32[0] - v121.i64[1] + 8 * v121.i64[1] + v117 + 3 * v115 - 2 * v263 + v258;
                  v193 = v192 + 8;
                  v194 = v192 + 23;
                  if (v193 >= 0)
                  {
                    v194 = v193;
                  }

                  v195 = v194 >> 4;
                  v51 = v260;
                  do
                  {
                    switch(v180)
                    {
                      case 1:
                        v196 = v121.i64[1];
                        break;
                      case 2:
                        v196 = v121.i64[0];
                        break;
                      case 3:
                        v196 = (v121.i64[0] + v121.i64[1]) / 2;
                        break;
                      case 4:
                        v196 = v191;
                        break;
                      case 5:
                        v196 = v188;
                        break;
                      case 6:
                        v196 = v185;
                        break;
                      case 7:
                        v196 = v115;
                        break;
                      case 8:
                        v196 = v113.i32[0];
                        break;
                      case 9:
                        v196 = v117;
                        break;
                      case 10:
                        v196 = (v121.i64[1] + v113.i32[0]) / 2;
                        break;
                      case 11:
                        v196 = (v121.i64[0] + v113.i32[0]) / 2;
                        break;
                      case 12:
                        v196 = (v121.i64[0] + v115) / 2;
                        break;
                      case 13:
                        v196 = v195;
                        break;
                      default:
                        v196 = 0;
                        break;
                    }

                    v315[v180++] = v196;
                  }

                  while (v180 != 14);
                }

                else
                {
                  v137 = 0;
                  v138 = *&v111[~v302];
                  v264 = *a7[15];
                  v139 = v138.i32[1];
                  v140 = v111[1 - v302];
                  v141 = *(v111 - 1);
                  v142 = *(v111 - 2);
                  v255 = v111[2 - v302];
                  v143 = v111[-2 * v302];
                  v144 = v300;
                  *(v300 + 3) = v110;
                  v145.i64[0] = vdup_lane_s32(v138, 1).i32[0];
                  v145.i64[1] = v141;
                  v146 = v145;
                  v144[2] = vmovn_s64(vabsq_s64(v145));
                  v144[3].i32[0] = v138.i32[1];
                  v147.i32[0] = v138.i32[1] + v141;
                  v147.i32[1] = v141;
                  v148.i32[0] = v138.i32[0];
                  v148.i64[1] = __PAIR64__(v140, v138.u32[1]);
                  v147.u64[1] = v138;
                  v149 = v141 - v144[4].i32[1];
                  v148.i32[1] = v138.i32[0];
                  v144[3].i32[1] = v141;
                  v144[4].i32[0] = v149;
                  v150 = vsubq_s32(v147, v148);
                  *&v144[4].u8[4] = v150;
                  v259 = v142;
                  v144[6].i32[1] = v138.i32[1] - v143;
                  v144[7].i32[0] = v141 - v142;
                  v151 = v108 + 2;
                  if (v69)
                  {
                    v152 = v108 + 2;
                  }

                  else
                  {
                    v152 = 0;
                  }

                  v153 = v152 + v110;
                  if (v108 - 1 <= v110)
                  {
                    v154 = v152 + v110;
                  }

                  else
                  {
                    v154 = v153 + 1;
                  }

                  if (v110)
                  {
                    v155 = v153 - 1;
                  }

                  else
                  {
                    v155 = v152;
                  }

                  for (k = 5; k != 17; k += 3)
                  {
                    v157 = (*(v285[k] + v154) + *(v285[k] + v153) + *(v285[k] + v155));
                    v158 = __clz(v157 + 1) ^ 0x3F;
                    if (v158 <= 5)
                    {
                      LOBYTE(v158) = 5;
                    }

                    v305.i32[v137] = ((*&v298[4 * (v157 >> (v158 - 5)) + 16] * *&v298[v137 * 4]) >> (v158 - 5)) + 4;
                    ++v137;
                  }

                  if (v110)
                  {
                    if (v69)
                    {
                      v159 = 0;
                    }

                    else
                    {
                      v159 = v151;
                    }

                    v160 = __p;
                    v161 = *(__p + v159 + v110 - 1);
                  }

                  else
                  {
                    v161 = 0;
                    v160 = __p;
                  }

                  v197 = 0;
                  v198 = v146.i64[1];
                  v199 = 8 * v146.i64[0];
                  v200 = 8 * v146.i64[1];
                  v201 = v160[v153];
                  v202 = v160[v155];
                  v203 = 8 * v140;
                  v204 = v161 + v201;
                  v205 = v160[v154];
                  if (v201 >= 0)
                  {
                    v206 = v201;
                  }

                  else
                  {
                    v206 = -v201;
                  }

                  if (v161 >= 0)
                  {
                    v207 = v161;
                  }

                  else
                  {
                    v207 = -v161;
                  }

                  if (v206 <= v207)
                  {
                    v208 = v161;
                  }

                  else
                  {
                    v208 = v201;
                  }

                  if (v202 >= 0)
                  {
                    v209 = v202;
                  }

                  else
                  {
                    v209 = -v202;
                  }

                  if (v208 >= 0)
                  {
                    v210 = v208;
                  }

                  else
                  {
                    v210 = -v208;
                  }

                  if (v209 <= v210)
                  {
                    v211 = v208;
                  }

                  else
                  {
                    v211 = v202;
                  }

                  if (v205 >= 0)
                  {
                    v212 = v205;
                  }

                  else
                  {
                    v212 = -v205;
                  }

                  if (v211 >= 0)
                  {
                    v213 = v211;
                  }

                  else
                  {
                    v213 = -v211;
                  }

                  if (v212 > v213)
                  {
                    LODWORD(v211) = v205;
                  }

                  v144[7].i32[1] = v211;
                  v285[0] = (v200 - v199 + v203);
                  v285[1] = (v199 - (((v204 + v205) * v291) >> 5));
                  v285[2] = (v200 - (((v204 + v202) * v292) >> 5));
                  v285[3] = (v199 - ((v293 * v202 + v294 * v201 + v295 * v205 + 8 * ((v143 - v146.i64[0]) * v296 + (v138.i32[0] - v146.i64[1]) * v297)) >> 5));
                  v299[0] = vshlq_u32(v305, vnegq_s32(vdupq_n_s32((__clz(vaddvq_s32(v305)) ^ 0x1F) - 4)));
                  v214 = vaddvq_s32(v299[0]);
                  v215 = (v214 >> 1) - 1;
                  do
                  {
                    v215 += v285[v197] * v299[0].u32[v197];
                    ++v197;
                  }

                  while (v197 != 4);
                  v216 = (v215 * *&v298[4 * v214 + 12]) >> 24;
                  v217 = v202 ^ v201 | v161 ^ v201;
                  if (v203 <= v199)
                  {
                    v218 = (8 * v146.i64[0]);
                  }

                  else
                  {
                    v218 = (8 * v140);
                  }

                  if (v200 > v218)
                  {
                    v218 = (8 * v146.i64[1]);
                  }

                  if (v199 >= v203)
                  {
                    v219 = 8 * v140;
                  }

                  else
                  {
                    v219 = 8 * v146.i64[0];
                  }

                  if (v219 >= v200)
                  {
                    v219 = 8 * v146.i64[1];
                  }

                  if (v216 < v218)
                  {
                    v218 = v216;
                  }

                  if (v219 > v218)
                  {
                    v218 = v219;
                  }

                  if (v217 > 0)
                  {
                    v218 = v216;
                  }

                  v286 = v218;
                  v51 = v260;
                  switch(v264)
                  {
                    case 1:
                      break;
                    case 2:
                      v198 = v146.i64[0];
                      break;
                    case 3:
                      v220 = v146.i64[0] + v146.i64[1];
                      goto LABEL_327;
                    case 4:
                      v226 = v146.i64[0] - v138.i32[0];
                      if (v226 < 0)
                      {
                        v226 = v138.i32[0] - v146.i64[0];
                      }

                      v227 = v146.i64[1] - v138.i32[0];
                      if (v227 < 0)
                      {
                        v227 = v138.i32[0] - v146.i64[1];
                      }

                      if (v226 >= v227)
                      {
                        v198 = v146.i64[0];
                      }

                      break;
                    case 5:
                      if (v138.i32[1] >= v141)
                      {
                        v221 = v141;
                      }

                      else
                      {
                        v221 = v138.i32[1];
                      }

                      if (v141 > v138.i32[1])
                      {
                        v139 = v141;
                      }

                      v222 = v150.i32[0];
                      if (v221 > v138.i32[0])
                      {
                        v222 = v139;
                      }

                      if (v139 >= v138.i32[0])
                      {
                        v221 = v222;
                      }

                      v198 = v221;
                      break;
                    case 6:
                      v198 = (v218 + 3) >> 3;
                      break;
                    case 7:
                      v198 = v140;
                      break;
                    case 8:
                      v198 = v138.i32[0];
                      break;
                    case 9:
                      v198 = v259;
                      break;
                    case 10:
                      v220 = v146.i64[1] + v138.i32[0];
                      goto LABEL_327;
                    case 11:
                      v220 = v146.i64[0] + v138.i32[0];
                      goto LABEL_327;
                    case 12:
                      v220 = v146.i64[0] + v140;
LABEL_327:
                      v198 = v220 / 2;
                      break;
                    case 13:
                      v223 = 6 * v146.i32[0] - v146.i64[1] + 8 * v146.i64[1] + v259 + 3 * v140 - 2 * v143 + v255;
                      v224 = v223 + 8;
                      v225 = v223 + 23;
                      if (v224 >= 0)
                      {
                        v225 = v224;
                      }

                      v198 = v225 >> 4;
                      break;
                    default:
                      v198 = 0;
                      break;
                  }

                  v315[v264] = v198;
                }

                ++*v265[0];
                v228 = v266[0];
                v229 = *(v266[0] + 1);
                v230 = v229 + *v266[0];
                v231 = (v229 >> 5) ^ ((*v266[0] ^ (*v266[0] << 23)) >> 18) ^ v229 ^ *v266[0] ^ (*v266[0] << 23);
                *v266[0] = v229;
                v228[1] = v231;
                if (*v266[1] >= HIDWORD(v230))
                {
                  sub_240BDC2B8(a7, *v111, &v300, v315);
                }

                v232 = 0;
                v108 = v51[5];
                if (v69)
                {
                  v233 = 0;
                }

                else
                {
                  v233 = v108 + 2;
                }

                v234 = 8 * *v111;
                v235 = v233 + v110;
                *(__p + v235) = v286 - v234;
                v236 = v287;
                do
                {
                  v237 = v285[v232] - v234;
                  if (v237 < 0)
                  {
                    v237 = (v234 - v285[v232]);
                  }

                  v238 = (v237 + 3) >> 3;
                  v239 = *v236;
                  v236 += 3;
                  *(v239 + 4 * v235) = v238;
                  *(v239 + 4 * (((v69 << 63) >> 63) & (v108 + 2)) + 4 * v110 + 4) += v238;
                  ++v232;
                }

                while (v232 != 4);
                ++v110;
                v109 = v108 - 2;
              }

              while (v110 < v108 - 2);
            }

            if (v109 < v108)
            {
              do
              {
                sub_240BD46AC(&v306, v104, v109++, v69);
              }

              while (v109 < v51[5]);
            }
          }

          ++v69;
        }

        while (v69 < v51[6]);
      }

      if (__p)
      {
        v290 = __p;
        operator delete(__p);
      }

      v241 = 0;
      a2 = v246;
      v13 = v248;
      do
      {
        v242 = v287[v241 / 2 + 9];
        if (v242)
        {
          *&v288[v241] = v242;
          operator delete(v242);
        }

        v241 -= 6;
      }

      while (v241 != 0x3FFFFFFFFFFFFFE8);
      v243 = *(&v275 + 1);
      *(&v275 + 1) = 0;
      if (v243)
      {
        atomic_fetch_add(&qword_27E519020, -*(v243 - 24));
        free(*(v243 - 32));
      }

      v12 = 0;
    }

    if (v300)
    {
      v301 = v300;
      operator delete(v300);
    }

    v44 = v251;
    if (v12)
    {
      goto LABEL_366;
    }

LABEL_360:
    v43 = v256 + 1;
  }

  while (v256 + 1 != v44);
  if (v250)
  {
    goto LABEL_362;
  }

  v12 = 0;
LABEL_366:
  sub_240BB5F00(v269);
LABEL_367:
  v272[0] = &unk_2852A21F8;
  v285[0] = v273;
  sub_240B37900(v285);
  return v12;
}

void sub_240BDB21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, unint64_t *a51)
{
  STACK[0x588] = 0;
  if (v51)
  {
    atomic_fetch_add(&qword_27E519020, -*(v51 - 24));
    free(*(v51 - 32));
  }

  MEMORY[0x245CCE590](a37, 0x1000C408E7E3807, a3, a4, a5, a6, a7, a8);
  v54 = STACK[0x4E0];
  if (STACK[0x4E0])
  {
    STACK[0x4E8] = v54;
    operator delete(v54);
  }

  if (STACK[0x500])
  {
    operator delete(STACK[0x500]);
  }

  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((v52 - 256 + i));
  }

  *(v52 - 256) = &a44;
  sub_240B31E8C((v52 - 256));
  if (a47)
  {
    operator delete(a47);
  }

  sub_240BB5F00(&a51);
  STACK[0x220] = &unk_2852A21F8;
  a51 = &STACK[0x268];
  sub_240B37900(&a51);
  _Unwind_Resume(a1);
}

uint64_t sub_240BDB4B8(uint64_t a1, __int128 *a2, unint64_t *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t **a7, unint64_t *a8, uint64_t *a9, void *a10, uint64_t a11, unint64_t *a12)
{
  if (*(a1 + 48))
  {
    v12 = *(a1 + 56) == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    return 0;
  }

  v28 = *a2;
  v23 = *(a2 + 2);
  v22 = *(a2 + 3);
  v29 = v23;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  sub_240B86FB8(&v30, v22, *(a2 + 4), (*(a2 + 4) - v22) >> 2);
  v24 = a2[4];
  v33 = a2[3];
  v34 = v24;
  v35 = *(a2 + 10);
  v36 = *(a2 + 88);
  v38 = 0;
  v39 = 0;
  v25 = *(a2 + 13);
  v26 = *(a2 + 14);
  __p = 0;
  sub_240B3C84C(&__p, v25, v26, (v26 - v25) >> 3);
  v40[0] = *(a2 + 16);
  *(v40 + 5) = *(a2 + 133);
  v41 = *(a2 + 144);
  if (v34 == -1)
  {
    LODWORD(v34) = 5;
  }

  v13 = sub_240BD7E08(a1, &v28, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  return v13;
}

float sub_240BDB644(int32x4_t *a1, unint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 4 * a2;
    v4 = a1;
    do
    {
      v5 = v4->i32[0];
      v4 = (v4 + 4);
      v2 += v5;
      v3 -= 4;
    }

    while (v3);
    v6 = vdupq_n_s32(v2);
    v7 = vdupq_n_s32(0x39800000u);
    v8 = vdupq_n_s32(0xC0D55555);
    v9 = vdupq_n_s32(0x3F3E11C7u);
    v10 = vdupq_n_s32(0x3FB6E02Bu);
    v11 = vdupq_n_s32(0x3E32458Cu);
    v12 = vdupq_n_s32(0x3F813CEDu);
    v13 = vdupq_n_s32(0xB5F85AB0);
    v14 = vdupq_n_s32(0x3F7D8625u);
    v15 = 0uLL;
    v16.i64[0] = 0x7F0000007FLL;
    v16.i64[1] = 0x7F0000007FLL;
    __asm { FMOV            V20.4S, #-1.0 }

    do
    {
      v22 = *a1++;
      v23 = vcvtq_f32_s32(v22);
      v24 = vmaxnmq_f32(vmulq_n_f32(v23, 1.0 / v2), v7);
      v25 = vaddq_s32(v24, v8);
      v26 = vaddq_f32(vsubq_s32(v24, vandq_s8(v25, v16)), _Q20);
      v15 = vsubq_f32(v15, vmulq_f32(vbicq_s8(vaddq_f32(vdivq_f32(vmlaq_f32(v13, v26, vmlaq_f32(v10, v9, v26)), vmlaq_f32(v14, v26, vmlaq_f32(v12, v11, v26))), vcvtq_f32_s32(vshrq_n_s32(v25, 0x17uLL))), vceqq_s32(v22, v6)), v23));
      v3 += 4;
    }

    while (v3 < a2);
  }

  else
  {
    v15 = 0uLL;
  }

  return vaddv_f32(*&vpaddq_f32(v15, v15));
}

uint64_t sub_240BDB75C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v3 = *result;
    v4 = *(result + 8);
    while (v3 != v4)
    {
      v5 = *v3;
      v3 += 3;
      v6 = *(v5 + 2 * a2);
      *(v5 + 2 * a2) = *(v5 + 2 * a3);
      *(v5 + 2 * a3) = v6;
    }

    v7 = *(result + 48);
    v8 = *(result + 56);
    while (v7 != v8)
    {
      v9 = *v7;
      v7 += 3;
      v10 = *(v9 + a2);
      *(v9 + a2) = *(v9 + a3);
      *(v9 + a3) = v10;
    }

    v11 = *(result + 24);
    v12 = *(v11 + 2 * a2);
    *(v11 + 2 * a2) = *(v11 + 2 * a3);
    *(v11 + 2 * a3) = v12;
  }

  return result;
}

void sub_240BDB7C4(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (&v3[-*a1] >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_240B228BC();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0x555555555555555)
      {
        operator new();
      }

      sub_240B2291C();
    }

    v13 = (16 * (&v3[-*a1] >> 4));
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v13[2] = a2[2];
    v7 = 48 * v9 + 48;
    v15 = v13 - (v3 - v8);
    memcpy(v15, v8, v3 - v8);
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[2];
    *(v3 + 1) = a2[1];
    *(v3 + 2) = v6;
    *v3 = v5;
    v7 = (v3 + 48);
  }

  *(a1 + 8) = v7;
}

void sub_240BDB8F8(const void **a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 2);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v2[12 * a2];
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 2) < v6)
    {
      if (a2 <= 0x1555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v2) >> 2);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0xAAAAAAAAAAAAAAALL)
        {
          v10 = 0x1555555555555555;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    v11 = &v3[12 * v6];
    v12 = 12 * a2 - 4 * (v4 >> 2);
    v13 = v3 + 8;
    do
    {
      *v13 = 0;
      *(v13 - 1) = 2139095039;
      v13 += 3;
      v12 -= 12;
    }

    while (v12);
  }

  a1[1] = v11;
}

uint64_t sub_240BDBAA0(char **a1, int a2, int a3)
{
  v37 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    LODWORD(v36) = 6;
    sub_240BDBE94(a1 + 15, &v36, &v36 + 4, 1uLL);
    v4 = 1;
  }

  else
  {
    if (a2 == 6 && a3 == 2)
    {
      return 1;
    }

    if (a2 == 14)
    {
      v36 = 0x500000006;
      sub_240BDBE94(a1 + 15, &v36, &v37, 2uLL);
    }

    else if (a2 == 15)
    {
      v7 = 0;
      v8 = a1[16];
      do
      {
        v9 = a1[17];
        if (v8 >= v9)
        {
          v10 = a1[15];
          v11 = v8 - v10;
          v12 = (v8 - v10) >> 2;
          v13 = v12 + 1;
          if ((v12 + 1) >> 62)
          {
            sub_240B228BC();
          }

          v14 = v9 - v10;
          if (v14 >> 1 > v13)
          {
            v13 = v14 >> 1;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v15 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_240B228D4(v15);
          }

          v16 = (v8 - v10) >> 2;
          v17 = (4 * v12);
          v18 = (4 * v12 - 4 * v16);
          *v17 = v7;
          v8 = (v17 + 1);
          memcpy(v18, v10, v11);
          v19 = a1[15];
          a1[15] = v18;
          a1[16] = v8;
          a1[17] = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v8 = v7;
          v8 += 4;
        }

        a1[16] = v8;
        ++v7;
      }

      while (v7 != 14);
      v20 = a1[15];
      v21 = *v20;
      *v20 = vrev64_s32(*(v20 + 20));
      *(v20 + 20) = vrev64_s32(v21);
    }

    else
    {
      LODWORD(v36) = a2;
      sub_240BDBE94(a1 + 15, &v36, &v36 + 4, 1uLL);
    }

    if (a3 == 2)
    {
      v23 = a1[15];
      v22 = a1[16];
      if (v23 != v22)
      {
        while (*v23 != 6)
        {
          v23 += 4;
          if (v23 == v22)
          {
            v23 = a1[16];
            break;
          }
        }
      }

      if (v22 != v23)
      {
        v24 = v22 - (v23 + 4);
        if (v22 != v23 + 4)
        {
          memmove(v23, v23 + 4, v22 - (v23 + 4));
        }

        v22 = &v23[v24];
        a1[16] = &v23[v24];
      }
    }

    else
    {
      v22 = a1[16];
    }

    v4 = (v22 - a1[15]) >> 2;
  }

  v25 = *a1;
  v26 = a1[1];
  v27 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *a1) >> 3);
  v28 = v4 - v27;
  if (v4 <= v27)
  {
    if (v4 >= v27)
    {
      return 0;
    }

    else
    {
      v32 = &v25[24 * v4];
      if (v26 != v32)
      {
        v33 = a1[1];
        do
        {
          v35 = *(v33 - 3);
          v33 -= 24;
          v34 = v35;
          if (v35)
          {
            *(v26 - 2) = v34;
            operator delete(v34);
          }

          v26 = v33;
        }

        while (v33 != v32);
      }

      result = 0;
      a1[1] = v32;
    }
  }

  else
  {
    v29 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v29 - v26) >> 3) < v28)
    {
      if (v4 <= 0xAAAAAAAAAAAAAAALL)
      {
        v30 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v25) >> 3);
        if (2 * v30 > v4)
        {
          v4 = 2 * v30;
        }

        if (v30 >= 0x555555555555555)
        {
          v31 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v31 = v4;
        }

        if (v31 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    bzero(a1[1], 24 * ((24 * v28 - 24) / 0x18) + 24);
    result = 0;
    a1[1] = &v26[24 * ((24 * v28 - 24) / 0x18) + 24];
  }

  return result;
}

void **sub_240BDBE94(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    v9 = v7 >> 1;
    if (v7 >> 1 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 62))
    {
      sub_240B228D4(v10);
    }

    sub_240B228BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v17 = a3 - __src;
    if (v17)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v8[v17];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      do
      {
        v15 = *v13;
        v13 += 4;
        *v14 = v15;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v16 = v14;
  }

  v6[1] = v16;
  return result;
}

uint64_t sub_240BDBFCC(uint64_t a1, char **a2, int a3)
{
  v5 = (a1 + 96);
  if ((a1 + 96) != a2)
  {
    sub_240B343B0((a1 + 96), *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  if (!a3)
  {
    __src = 9;
    p_src = &__src;
    v7 = &__src;
LABEL_16:
    sub_240BAE1C8(v5, v7, p_src + 4, 1uLL);
    goto LABEL_17;
  }

  if (a3 != 2)
  {
    if (a3 != 1)
    {
      goto LABEL_17;
    }

    v15 = 15;
    p_src = &v15;
    v7 = &v15;
    goto LABEL_16;
  }

  v9 = *(a1 + 96);
  v8 = *(a1 + 104);
  if (v9 != v8)
  {
    while (*v9 != 15)
    {
      v9 += 4;
      if (v9 == v8)
      {
        v9 = *(a1 + 104);
        break;
      }
    }
  }

  if (v8 != v9)
  {
    v10 = v8 - (v9 + 4);
    if (v8 != v9 + 4)
    {
      memmove(v9, v9 + 4, v8 - (v9 + 4));
    }

    *(a1 + 104) = &v9[v10];
  }

LABEL_17:
  v11 = *(a1 + 96);
  v12 = *(a1 + 104);
  if (v11 == v12)
  {
    return 1;
  }

  sub_240B323EC((a1 + 48), (v12 - v11) >> 2);
  return 0;
}

unint64_t sub_240BDC0E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_240BDC150(a1, a2);
  result = sub_240BDC1C8(a1, a2);
  v6 = *(a1 + 176);
  v7 = (v6 + 4 * v4);
  if (*v7 == -1 || (v7 = (v6 + 4 * result), *v7 == -1))
  {
    *v7 = a2;
  }

  return result;
}

unint64_t sub_240BDC150(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = 506832829;
  if (*a1 != v3)
  {
    v4 = 506832829;
    do
    {
      v5 = *v2;
      v2 += 3;
      v4 = *(v5 + 2 * a2 + 1) + 506832829 * (*(v5 + 2 * a2) + 506832829 * v4);
    }

    while (v2 != v3);
  }

  for (i = *(a1 + 48); i != *(a1 + 56); i += 3)
  {
    v7 = *i;
    v4 = *(v7 + a2) + 506832829 * v4;
  }

  return (((*(a1 + 184) - *(a1 + 176)) >> 2) - 1) & (v4 >> 16);
}

unint64_t sub_240BDC1C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = 0x1E35A7BD1E35A7BDLL;
  while (v2 != *(a1 + 56))
  {
    v4 = *v2;
    v2 += 3;
    v3 = (0x1E35A7BD1E35A7BDLL * v3) ^ *(v4 + a2);
  }

  for (i = *a1; i != *(a1 + 8); i += 3)
  {
    v6 = *i;
    v3 = (0x1E35A7BD1E35A7BDLL * ((0x1E35A7BD1E35A7BDLL * v3) ^ *(v6 + 2 * a2))) ^ *(v6 + 2 * a2 + 1);
  }

  return (((*(a1 + 184) - *(a1 + 176)) >> 2) - 1) & (v3 >> 16);
}

uint64_t sub_240BDC240(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  result = 1;
  while (v4 != v5)
  {
    v7 = *v4;
    v4 += 3;
    v8 = (v7 + 2 * a2);
    v9 = (v7 + 2 * a3);
    v11 = v8[1] == v9[1] && *v8 == *v9;
    result = v11 & result;
  }

  v13 = a1[6];
  v12 = a1[7];
  while (v13 != v12)
  {
    v14 = *v13;
    v13 += 3;
    result = (*(v14 + a2) == *(v14 + a3)) & result;
  }

  return result;
}

unint64_t sub_240BDC2B8(uint64_t **a1, int a2, void *a3, uint64_t a4)
{
  v5 = a1[15];
  if (a1[16] != v5)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = a2 - *(a4 + 8 * *(v5 + v9));
      v11 = (2 * v10) ^ (v10 >> 31);
      if (v11 >= 0x10)
      {
        v13 = __clz(v11);
        v11 = (((-1 << (v13 ^ 0x1F)) + v11) & 3) - 8 * v13 + 4 * (((-1 << (v13 ^ 0x1F)) + v11) >> (30 - v13)) + 232;
        v12 = 28 - v13;
      }

      else
      {
        v12 = 0;
      }

      v14 = &(*a1)[v8];
      v16 = v14[1];
      v15 = v14[2];
      if (v16 >= v15)
      {
        v18 = (v16 - *v14) >> 1;
        if (v18 <= -2)
        {
          sub_240B228BC();
        }

        v19 = v15 - *v14;
        if (v19 <= v18 + 1)
        {
          v20 = v18 + 1;
        }

        else
        {
          v20 = v19;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v21 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          sub_240B29578(v21);
        }

        v22 = (2 * v18);
        *v22 = v11 | (v12 << 8);
        v17 = 2 * v18 + 2;
        v23 = v14[1] - *v14;
        v24 = v22 - v23;
        memcpy(v22 - v23, *v14, v23);
        v25 = *v14;
        *v14 = v24;
        v14[1] = v17;
        v14[2] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v16 = v11 | (v12 << 8);
        v17 = (v16 + 1);
      }

      v14[1] = v17;
      ++v9;
      v5 = a1[15];
      v8 += 3;
    }

    while (v9 < (a1[16] - v5) >> 2);
  }

  v26 = a1[12];
  if (a1[13] != v26)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = a1[6];
      v30 = *(*a3 + 4 * *(v26 + v28));
      if (v30 <= -511)
      {
        v30 = -511;
      }

      if (v30 >= 511)
      {
        v30 = 511;
      }

      v31 = *(a1[18][3 * v28] + v30 + 511);
      v32 = &v29[v27];
      v34 = v29[v27 + 1];
      v33 = v29[v27 + 2];
      if (v34 >= v33)
      {
        v36 = v29[v27];
        v37 = (v34 - v36);
        v38 = v34 - v36 + 1;
        if (v38 < 0)
        {
          sub_240B228BC();
        }

        v39 = v33 - v36;
        if (2 * v39 > v38)
        {
          v38 = 2 * v39;
        }

        if (v39 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v40 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v38;
        }

        if (v40)
        {
          operator new();
        }

        v41 = v34 - v36;
        *v37 = v31;
        v35 = v37 + 1;
        memcpy(0, v36, v41);
        v29[v27] = 0;
        v32[1] = (v37 + 1);
        v32[2] = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      else
      {
        *v34 = v31;
        v35 = v34 + 1;
      }

      v32[1] = v35;
      ++v28;
      v26 = a1[12];
      v27 += 3;
    }

    while (v28 < (a1[13] - v26) >> 2);
  }

  v43 = a1[4];
  v42 = a1[5];
  if (v43 >= v42)
  {
    v45 = a1[3];
    v46 = v43 - v45;
    v47 = (v43 - v45) >> 1;
    if (v47 <= -2)
    {
      sub_240B228BC();
    }

    v48 = v42 - v45;
    if (v48 <= v47 + 1)
    {
      v49 = v47 + 1;
    }

    else
    {
      v49 = v48;
    }

    if (v48 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v50 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v50 = v49;
    }

    if (v50)
    {
      sub_240B29578(v50);
    }

    v51 = (v43 - v45) >> 1;
    v52 = (2 * v47);
    v53 = (2 * v47 - 2 * v51);
    *v52 = 1;
    v44 = (v52 + 1);
    memcpy(v53, v45, v46);
    v54 = a1[3];
    a1[3] = v53;
    a1[4] = v44;
    a1[5] = 0;
    if (v54)
    {
      operator delete(v54);
    }
  }

  else
  {
    *v43 = 1;
    v44 = (v43 + 2);
  }

  a1[4] = v44;
  a1[21] = (a1[21] + 1);
  v55 = a1[3];
  v56 = ((v44 - v55) >> 1) - 1;
  v57 = sub_240BDC150(a1, v56);
  v58 = sub_240BDC1C8(a1, v56);
  v59 = a1[22];
  v60 = v59 + v57;
  v61 = *v60;
  if ((v61 == -1 || (result = sub_240BDC240(a1, v56, *v60), !result)) && ((v60 = v59 + v58, v61 = *v60, v61 == -1) || (result = sub_240BDC240(a1, v56, *v60), !result)))
  {

    return sub_240BDC0E8(a1, ((v44 - v55) >> 1) - 1);
  }

  else
  {
    v63 = *(v55 + v61) + 1;
    *(v55 + v61) = v63;
    if (v63 == -1)
    {
      *v60 = -1;
    }

    v64 = *a1;
    v65 = a1[1];
    while (v64 != v65)
    {
      v64[1] -= 2;
      v64 += 3;
    }

    v66 = a1[6];
    v67 = a1[7];
    while (v66 != v67)
    {
      --v66[1];
      v66 += 3;
    }

    a1[4] = (v44 - 2);
  }

  return result;
}

void sub_240BDC748(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, char **a5, char **a6, int **a7, int **a8, unint64_t a9)
{
  v98 = *MEMORY[0x277D85DE8];
  v86 = 0;
  *v85 = 0u;
  v84 = 0;
  *v83 = 0u;
  if (a3 != a4)
  {
    v11 = a3;
    do
    {
      if (*v11 != *a2)
      {
        LODWORD(__p[0]) = *v11 - 1;
        sub_240B22E1C(v83, __p);
      }

      v13 = v11[1];
      if (v13 != a2[1])
      {
        LODWORD(__p[0]) = v13 - 1;
        sub_240B22E1C(v83, __p);
      }

      v14 = v11[2];
      if (v14 != a2[2])
      {
        LODWORD(__p[0]) = v14 - 1;
        sub_240B22E1C(v85, __p);
      }

      v15 = v11[3];
      if (v15 != a2[3])
      {
        LODWORD(__p[0]) = v15 - 1;
        sub_240B22E1C(v85, __p);
      }

      v11 += 5;
    }

    while (v11 != a4);
  }

  std::__sort<std::__less<int,int> &,int *>();
  v16 = v83[0];
  v17 = sub_240BDD1E4(v83[0], v83[1]);
  sub_240B245C8(v83, (v17 - v16) >> 2);
  v18 = v85[0];
  v19 = v85[1];
  std::__sort<std::__less<int,int> &,int *>();
  v20 = sub_240BDD1E4(v18, v19);
  sub_240B245C8(v85, v20 - v18);
  v22 = (a1 + 72);
  v21 = *(a1 + 72);
  v23 = (*(a1 + 104) - *(a1 + 96)) >> 2;
  v24 = *(a1 + 80);
  v25 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v21) >> 3);
  v26 = v23 - v25;
  if (v23 <= v25)
  {
    if (v23 < v25)
    {
      v30 = v21 + 24 * v23;
      if (v24 != v30)
      {
        v31 = *(a1 + 80);
        do
        {
          v33 = *(v31 - 24);
          v31 -= 24;
          v32 = v33;
          if (v33)
          {
            *(v24 - 16) = v32;
            operator delete(v32);
          }

          v24 = v31;
        }

        while (v31 != v30);
      }

      *(a1 + 80) = v30;
    }
  }

  else
  {
    v27 = *(a1 + 88);
    if (0xAAAAAAAAAAAAAAABLL * ((v27 - v24) >> 3) < v26)
    {
      if (v23 <= 0xAAAAAAAAAAAAAAALL)
      {
        *v91 = a1 + 72;
        v28 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v21) >> 3);
        if (2 * v28 > v23)
        {
          v23 = 2 * v28;
        }

        if (v28 >= 0x555555555555555)
        {
          v29 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v29 = v23;
        }

        sub_240B32588(v29);
      }

      sub_240B228BC();
    }

    v34 = 24 * ((24 * v26 - 24) / 0x18) + 24;
    bzero(*(a1 + 80), v34);
    *(a1 + 80) = v24 + v34;
  }

  sub_240B323EC((a1 + 144), (*(a1 + 104) - *(a1 + 96)) >> 2);
  v35 = *(a1 + 96);
  if (*(a1 + 104) == v35)
  {
    v71 = 0;
    v38 = 0;
    v72 = 0;
    goto LABEL_129;
  }

  v36 = 0;
  v78 = 0;
  v79 = 0;
  v37 = 0;
  v38 = 0;
  v74 = 0u;
  v77 = 0u;
  do
  {
    v39 = *(v35 + 4 * v36);
    if (v39 > 5)
    {
      if ((v39 - 6) < 3)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v39 - 2) < 2)
      {
        __p[0] = 0;
        __p[1] = 0;
        *&v90 = 0;
        sub_240BDD360(__p, a9 - 1);
        if (a9 >= 2)
        {
          v43 = 256;
          v44 = a9 - 1;
          do
          {
            LODWORD(v87) = v43 / a9 - 1;
            sub_240B22E1C(__p, &v87);
            v43 += 256;
            --v44;
          }

          while (v44);
        }

        goto LABEL_61;
      }

      if (!v39)
      {
        if (v83[0] == v83[1])
        {
          sub_240BDD258(__p, a6, a9);
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          *&v90 = 0;
          sub_240B2BA38(__p, v83[0], v83[1], (v83[1] - v83[0]) >> 2);
        }

        goto LABEL_61;
      }

      if (v39 == 1)
      {
        if (v85[0] == v85[1])
        {
          sub_240BDD258(__p, a5, a9);
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          *&v90 = 0;
          sub_240B2BA38(__p, v85[0], v85[1], (v85[1] - v85[0]) >> 2);
        }

LABEL_61:
        v40 = *v22 + 24 * v36;
        v48 = *v40;
        if (*v40)
        {
          *(v40 + 8) = v48;
          operator delete(v48);
          *v40 = 0;
          *(v40 + 8) = 0;
          *(v40 + 16) = 0;
        }

        *v40 = *__p;
        v42 = v90;
        goto LABEL_64;
      }
    }

    if (v39 >= 0x10)
    {
      v45 = v39 & 3;
      if (v45 <= 1)
      {
        if (!v45)
        {
          goto LABEL_57;
        }

LABEL_38:
        if (v38 == v37)
        {
          sub_240BDD404(__p, a7, a9);
          if (v37)
          {
            operator delete(v38);
          }

          v38 = __p[0];
          v37 = __p[1];
        }

        v87 = 0uLL;
        v88 = 0;
        sub_240B2BA38(&v87, v38, v37, (v37 - v38) >> 2);
        goto LABEL_43;
      }

      if (v45 != 2)
      {
LABEL_95:
        v65 = *(&v77 + 1);
        v66 = v77;
        if (v77 == *(&v77 + 1))
        {
          sub_240BDD404(__p, a8, a9);
          if (v77)
          {
            operator delete(v77);
          }

          v66 = __p[0];
          v77 = *__p;
          v65 = __p[1];
        }

        v87 = 0uLL;
        v88 = 0;
        sub_240B2BA38(&v87, v66, v65, (v65 - v66) >> 2);
        goto LABEL_43;
      }

      v58 = *(&v74 + 1);
      v59 = v74;
      if (v74 == *(&v74 + 1))
      {
        v60 = *(&v77 + 1);
        v61 = v77;
        if (v77 == *(&v77 + 1))
        {
          sub_240BDD404(__p, a8, a9);
          if (v77)
          {
            operator delete(v77);
          }

          v61 = __p[0];
          v77 = *__p;
          v60 = __p[1];
        }

        __p[0] = 0;
        __p[1] = 0;
        *&v90 = 0;
        sub_240B2BA38(__p, v61, v60, (v60 - v61) >> 2);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v62 = *a8;
        v63 = a8[1];
        while (v62 != v63)
        {
          v64 = *v62;
          if (*v62 < 0)
          {
            v64 = -v64;
          }

          *v62++ = v64;
        }

        sub_240BDD404(&v87, a8, a9);
        if (v74)
        {
          operator delete(v74);
        }

        v59 = v87;
        v74 = v87;
        v58 = *(&v87 + 1);
      }

      v81 = 0uLL;
      v82 = 0;
      sub_240B2BA38(&v81, v59, v58, (v58 - v59) >> 2);
LABEL_121:
      v40 = *v22 + 24 * v36;
      v70 = *v40;
      if (*v40)
      {
        *(v40 + 8) = v70;
        operator delete(v70);
        *v40 = 0;
        *(v40 + 8) = 0;
        *(v40 + 16) = 0;
      }

      *v40 = v81;
      v42 = v82;
      goto LABEL_64;
    }

    if ((v39 - 4) < 2)
    {
LABEL_57:
      v46 = v78;
      if (v79 == v78)
      {
        if (v38 == v37)
        {
          sub_240BDD404(__p, a7, a9);
          if (v37)
          {
            operator delete(v38);
          }

          v38 = __p[0];
          v37 = __p[1];
        }

        __p[0] = 0;
        __p[1] = 0;
        *&v90 = 0;
        sub_240B2BA38(__p, v38, v37, (v37 - v38) >> 2);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v67 = *a7;
        v68 = a7[1];
        while (v67 != v68)
        {
          v69 = *v67;
          if (*v67 < 0)
          {
            v69 = -v69;
          }

          *v67++ = v69;
        }

        sub_240BDD404(&v87, a7, a9);
        if (v79)
        {
          operator delete(v79);
        }

        v46 = *(&v87 + 1);
        v47 = v87;
      }

      else
      {
        v47 = v79;
      }

      v81 = 0uLL;
      v82 = 0;
      v78 = v46;
      v79 = v47;
      sub_240B2BA38(&v81, v47, v46, (v46 - v47) >> 2);
      goto LABEL_121;
    }

    if (v39 != 15)
    {
      goto LABEL_95;
    }

    if (a9 > 0x1F)
    {
      if (a9 > 0x3F)
      {
        v95[3] = xmmword_240C856EC;
        v95[4] = unk_240C856FC;
        *v96 = xmmword_240C8570C;
        *&v96[12] = *(&xmmword_240C8570C + 12);
        v94 = xmmword_240C856AC;
        v95[0] = unk_240C856BC;
        v95[1] = xmmword_240C856CC;
        v95[2] = unk_240C856DC;
        *v91 = xmmword_240C8566C;
        *&v91[16] = unk_240C8567C;
        v92 = xmmword_240C8568C;
        v93 = unk_240C8569C;
        *__p = xmmword_240C8564C;
        v90 = unk_240C8565C;
        v87 = 0uLL;
        v88 = 0;
        sub_240B7D364(&v87, __p, v97, 0x37uLL);
      }

      else
      {
        LODWORD(v95[0]) = 255;
        v92 = xmmword_240C85618;
        v93 = unk_240C85628;
        v94 = xmmword_240C85638;
        *__p = xmmword_240C855D8;
        v90 = unk_240C855E8;
        *v91 = xmmword_240C855F8;
        *&v91[16] = unk_240C85608;
        v87 = 0uLL;
        v88 = 0;
        sub_240B7D364(&v87, __p, v95 + 1, 0x1DuLL);
      }
    }

    else
    {
      *__p = xmmword_240C8559C;
      v90 = unk_240C855AC;
      *v91 = xmmword_240C855BC;
      *&v91[12] = *(&xmmword_240C855BC + 12);
      v88 = 0;
      v87 = 0uLL;
      sub_240B7D364(&v87, __p, &v91[28], 0xFuLL);
    }

LABEL_43:
    v40 = *v22 + 24 * v36;
    v41 = *v40;
    if (*v40)
    {
      *(v40 + 8) = v41;
      operator delete(v41);
      *v40 = 0;
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
    }

    *v40 = v87;
    v42 = v88;
LABEL_64:
    *(v40 + 16) = v42;
    v49 = *(a1 + 144) + 24 * v36;
    v50 = *v49;
    v51 = *(v49 + 8);
    v52 = &v51[-*v49];
    if (v52 <= 0x3FE)
    {
      sub_240B26918(v49, 1023 - v52);
      v50 = *(*(a1 + 144) + 24 * v36);
      v51 = *(*(a1 + 144) + 24 * v36 + 8);
LABEL_67:
      if (v51 == v50)
      {
        goto LABEL_77;
      }

      goto LABEL_70;
    }

    if (v52 == 1023)
    {
      goto LABEL_67;
    }

    *(v49 + 8) = v50 + 1023;
LABEL_70:
    v53 = 0;
    v54 = 0;
    do
    {
      v55 = *(*v22 + 24 * v36);
      v56 = *(*v22 + 24 * v36 + 8) - v55;
      if (v54 < v56 >> 2)
      {
        v57 = v56 >> 2;
        while (v53 - 511 > *(v55 + 4 * v54))
        {
          if (v57 == ++v54)
          {
            v54 = v57;
            break;
          }
        }
      }

      v50[v53++] = v54;
      v50 = *(*(a1 + 144) + 24 * v36);
    }

    while (v53 < *(*(a1 + 144) + 24 * v36 + 8) - v50);
LABEL_77:
    ++v36;
    v35 = *(a1 + 96);
  }

  while (v36 < (*(a1 + 104) - v35) >> 2);
  if (v77)
  {
    operator delete(v77);
  }

  v71 = v79;
  v72 = v74;
LABEL_129:
  if (v72)
  {
    operator delete(v72);
  }

  if (v38)
  {
    operator delete(v38);
  }

  if (v71)
  {
    operator delete(v71);
  }

  if (v83[0])
  {
    operator delete(v83[0]);
  }

  if (v85[0])
  {
    operator delete(v85[0]);
  }
}

void sub_240BDD118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (a14)
  {
    operator delete(a14);
  }

  if (a11)
  {
    operator delete(a11);
  }

  if (v33)
  {
    operator delete(v33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

int *sub_240BDD1E4(int *a1, int *a2)
{
  if (a1 != a2)
  {
    v2 = a1 + 1;
    while (v2 != a2)
    {
      v3 = *(v2 - 1);
      v4 = *v2++;
      if (v3 == v4)
      {
        v5 = v2 - 2;
        goto LABEL_7;
      }
    }

    v5 = a2;
LABEL_7:
    if (v5 != a2)
    {
      v6 = v5 + 2;
      if (v5 + 2 != a2)
      {
        v7 = *v5;
        do
        {
          v8 = v7;
          v7 = *v6;
          if (v8 != *v6)
          {
            v5[1] = v7;
            ++v5;
          }

          ++v6;
        }

        while (v6 != a2);
      }

      return v5 + 1;
    }
  }

  return a2;
}

void sub_240BDD258(void *a1, char **a2, unint64_t a3)
{
  v4 = *a2;
  v3 = a2[1];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (v4 != v3)
  {
    v8 = 0;
    v9 = v4;
    do
    {
      v10 = *v9;
      v9 += 4;
      v8 += v10;
    }

    while (v9 != v3);
    if ((v3 - v4) >= 5)
    {
      v11 = 0;
      v12 = 0;
      v13 = 1;
      v14 = 1;
      do
      {
        v15 = v13;
        v12 += *&v4[4 * v11];
        v16 = v14 * v8;
        if (v12 >= v14 * v8 / a3)
        {
          v18 = v11;
          sub_240B22E1C(a1, &v18);
          --v14;
          do
          {
            v17 = v16 / a3;
            ++v14;
            v16 += v8;
          }

          while (v12 > v17);
          v4 = *a2;
          v3 = a2[1];
        }

        v13 = v15 + 1;
        v11 = v15;
      }

      while (v15 + 1 < ((v3 - v4) >> 2));
    }
  }
}

void sub_240BDD344(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240BDD360(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_240B228D4(a2);
    }

    sub_240B228BC();
  }
}

void sub_240BDD404(void *a1, int **a2, unint64_t a3)
{
  v4 = a2[1];
  v5 = *a2;
  if (*a2 == v4)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v8 = v5 + 1;
    if (v5 + 1 != v4)
    {
      v9 = *v5;
      v10 = v5 + 1;
      do
      {
        v12 = *v10++;
        v11 = v12;
        if (v12 < v9)
        {
          v9 = v11;
          v5 = v8;
        }

        v8 = v10;
      }

      while (v10 != v4);
    }

    v13 = *v5;
    if (v13 <= -512)
    {
      v13 = -512;
    }

    if (v13 >= 512)
    {
      v14 = 512;
    }

    else
    {
      v14 = v13;
    }

    sub_240B22DA4(__p, 0x401uLL);
    v15 = *a2;
    v16 = a2[1];
    if (*a2 != v16)
    {
      v17 = __p[0];
      do
      {
        v19 = *v15++;
        v18 = v19;
        if (v19 <= -512)
        {
          v18 = -512;
        }

        if (v18 >= 512)
        {
          v18 = 512;
        }

        ++v17[v18 - v14];
      }

      while (v15 != v16);
    }

    sub_240BDD258(a1, __p, a3);
    v20 = *a1;
    v21 = a1[1];
    while (v20 != v21)
    {
      *v20++ += v14;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_240BDD534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240BDD550(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, const void **a6, void *a7)
{
  if (*(a2 + 16) == 0.0)
  {
    return;
  }

  if (a3 >= (*(a4 + 8) - *a4) >> 2)
  {
    sub_240B245C8(a4, a3 + 1);
  }

  v12 = *a1;
  v11 = a1[1];
  v13 = (v11 - *a1) >> 6;
  if (v13 > (*(a5 + 8) - *a5) >> 2)
  {
    sub_240B245C8(a5, v13);
    v12 = *a1;
    v11 = a1[1];
  }

  v14 = *(a2 + 16) * 0.1;
  if (v14 > 0.99)
  {
    v14 = 0.99;
  }

  v15 = v14;
  v16 = logf(1.0 - v15);
  if (v11 == v12)
  {
    return;
  }

  v54 = a4;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 1.0 / v16;
  while (1)
  {
    v22 = *(v12 + v17 + 40);
    if (v22 >= 2)
    {
      v23 = *(v12 + v17 + 48);
      if (v23)
      {
        break;
      }
    }

LABEL_22:
    ++v20;
    v17 += 64;
    if (v20 >= (v11 - v12) >> 6)
    {
      goto LABEL_23;
    }
  }

  if (v20 < a1[9] || (v22 <= *a2 ? (v24 = v23 > *a2) : (v24 = 1), !v24))
  {
    v25 = v18;
    v26 = v18 >> 3;
    if (((v18 >> 3) + 1) >> 61)
    {
      sub_240B228BC();
    }

    if (v18 >> 3 != -1)
    {
      sub_240B299F4((v18 >> 3) + 1);
    }

    *(8 * v26) = v20;
    v18 = 8 * v26 + 8;
    memcpy(0, 0, v25);
    v12 = *a1;
    v11 = a1[1];
    v27 = *(*a1 + v17 + 48) * *(*a1 + v17 + 40);
    *(*v54 + 4 * a3) += v27;
    *(*a5 + 4 * v20) += v27;
    v19 += v27;
    goto LABEL_22;
  }

LABEL_23:
  if (!v18)
  {
    return;
  }

  sub_240BDD360(a6, (((a6[1] - *a6) >> 2) + (v15 * v19)));
  sub_240BDD360(a7, (((a7[1] - *a7) >> 2) + (v15 * v19)));
  v28 = (logf(1.0 - (COERCE_FLOAT(((a3 + 0x542891283015F7A4) >> 41) | 0x3F800000) + -1.0)) * v21);
  v29 = *a1;
  v30 = *(*a1 + (MEMORY[0] << 6) + 40);
  v31 = a3 - 0x40A7B892E31B1A47;
  v32 = 0;
  v33 = 0;
  v34 = v18 >> 3;
  if (v30 > v28)
  {
    goto LABEL_32;
  }

  while (2)
  {
    v28 -= v30;
    ++v33;
    v35 = *(8 * v32);
    if (v33 != *(v29 + (v35 << 6) + 48))
    {
LABEL_28:
      v30 = *(v29 + (v35 << 6) + 40);
      if (v28 < v30)
      {
        goto LABEL_32;
      }

      continue;
    }

    break;
  }

  if (++v32 < v34)
  {
    v33 = 0;
    v35 = *(8 * v32);
    goto LABEL_28;
  }

  v33 = 0;
LABEL_32:
  if (v32 < v34)
  {
    v36 = (a3 - 0x40A7B892E31B1A47) ^ ((a3 - 0x40A7B892E31B1A47) >> 5) ^ 0x4959C36592FDE847;
    v37 = v18 >> 3;
    v55 = a7;
    v56 = a1;
    do
    {
      v60 = v31;
      v31 = v36;
      v38 = *(v29 + (*(8 * v32) << 6) + 24) + *(v29 + (*(8 * v32) << 6) + 16) * v33;
      v39 = a6;
      v41 = a6[1];
      v40 = a6[2];
      if (v41 >= v40)
      {
        v57 = v36;
        v43 = *a6;
        v44 = v41 - *a6;
        v45 = v44 >> 2;
        v46 = (v44 >> 2) + 1;
        if (v46 >> 62)
        {
          sub_240B228BC();
        }

        v47 = v40 - v43;
        if (v47 >> 1 > v46)
        {
          v46 = v47 >> 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v48 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v46;
        }

        if (v48)
        {
          sub_240B228D4(v48);
        }

        v39 = a6;
        *(4 * v45) = *(v38 + 4 * v28);
        v42 = (4 * v45 + 4);
        memcpy(0, v43, v44);
        v49 = *a6;
        *a6 = 0;
        a6[1] = v42;
        a6[2] = 0;
        if (v49)
        {
          operator delete(v49);
        }

        a7 = v55;
        v31 = v57;
      }

      else
      {
        *v41 = *(v38 + 4 * v28);
        v42 = v41 + 4;
      }

      v39[1] = v42;
      v50 = v28 - 1;
      if (!v28)
      {
        v50 = 1;
      }

      v61 = *(v38 + 4 * v28) - *(v38 + 4 * v50);
      sub_240B22E1C(a7, &v61);
      v28 += (v21 * logf(1.0 - (COERCE_FLOAT(((v31 + v60) >> 41) | 0x3F800000) + -1.0))) + 1;
      v29 = *v56;
LABEL_50:
      v51 = *(8 * v32);
      while (1)
      {
        v52 = *(v29 + (v51 << 6) + 40);
        if (v28 < v52)
        {
          break;
        }

        v28 -= v52;
        ++v33;
        v51 = *(8 * v32);
        if (v33 == *(v29 + (v51 << 6) + 48))
        {
          if (++v32 < v37)
          {
            v33 = 0;
            goto LABEL_50;
          }

          v33 = 0;
          break;
        }
      }

      v36 = (v31 >> 5) ^ ((v60 ^ (v60 << 23)) >> 18) ^ v31 ^ v60 ^ (v60 << 23);
    }

    while (v32 < v37);
  }

  operator delete(0);
}

void sub_240BDDAC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240BDDAF8(void *a1, uint64_t a2, unint64_t *a3)
{
  v119 = 0u;
  memset(v118, 0, sizeof(v118));
  v117 = 0;
  sub_240BDE350(v118, &v117);
  a3[1] = *a3;
  v6 = *(&v119 + 1);
  if (*(&v119 + 1))
  {
    v7 = 0;
    do
    {
      v116 = v7;
      v8 = *(*(*(&v118[0] + 1) + ((v119 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v119 & 0x3FF));
      *&v119 = v119 + 1;
      *(&v119 + 1) = v6 - 1;
      if (v119 >= 0x800)
      {
        operator delete(**(&v118[0] + 1));
        *(&v118[0] + 1) += 8;
        *&v119 = v119 - 1024;
      }

      v9 = *(*a1 + 40 * v8 + 4) + 1;
      v11 = *(a2 + 8);
      v10 = *(a2 + 16);
      if (v11 >= v10)
      {
        v13 = (v11 - *a2) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          sub_240B228BC();
        }

        v15 = v10 - *a2;
        if (v15 >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          sub_240B299F4(v16);
        }

        v17 = (8 * v13);
        *v17 = 2;
        v17[1] = v9;
        v12 = (8 * v13 + 8);
        v18 = *(a2 + 8) - *a2;
        v19 = v17 - v18;
        memcpy(v17 - v18, *a2, v18);
        v20 = *a2;
        *a2 = v19;
        *(a2 + 8) = v12;
        *(a2 + 16) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v11 = 2;
        v11[1] = v9;
        v12 = v11 + 2;
      }

      *(a2 + 8) = v12;
      v21 = *a1 + 40 * v8;
      v22 = *(v21 + 4);
      if (v22 == 0xFFFF)
      {
        v31 = *(v21 + 16);
        v32 = *(a2 + 16);
        if (v12 >= v32)
        {
          v37 = (v12 - *a2) >> 3;
          if ((v37 + 1) >> 61)
          {
            sub_240B228BC();
          }

          v38 = v32 - *a2;
          v39 = v38 >> 2;
          if (v38 >> 2 <= (v37 + 1))
          {
            v39 = v37 + 1;
          }

          if (v38 >= 0x7FFFFFFFFFFFFFF8)
          {
            v40 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v40 = v39;
          }

          if (v40)
          {
            sub_240B299F4(v40);
          }

          v57 = (8 * v37);
          *v57 = 4;
          v57[1] = v31;
          v33 = (8 * v37 + 8);
          v58 = *(a2 + 8) - *a2;
          v59 = v57 - v58;
          memcpy(v57 - v58, *a2, v58);
          v60 = *a2;
          *a2 = v59;
          *(a2 + 8) = v33;
          *(a2 + 16) = 0;
          if (v60)
          {
            operator delete(v60);
          }
        }

        else
        {
          *v12 = 4;
          v12[1] = v31;
          v33 = v12 + 2;
        }

        *(a2 + 8) = v33;
        v61 = *(*a1 + 40 * v8 + 24);
        v62 = (2 * v61) ^ (v61 >> 31);
        v63 = *(a2 + 16);
        if (v33 >= v63)
        {
          v65 = (v33 - *a2) >> 3;
          if ((v65 + 1) >> 61)
          {
            sub_240B228BC();
          }

          v66 = v63 - *a2;
          v67 = v66 >> 2;
          if (v66 >> 2 <= (v65 + 1))
          {
            v67 = v65 + 1;
          }

          if (v66 >= 0x7FFFFFFFFFFFFFF8)
          {
            v68 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v68 = v67;
          }

          if (v68)
          {
            sub_240B299F4(v68);
          }

          v69 = (8 * v65);
          *v69 = 6;
          v69[1] = v62;
          v64 = (8 * v65 + 8);
          v70 = *(a2 + 8) - *a2;
          v71 = (8 * v65 - v70);
          memcpy(v71, *a2, v70);
          v72 = *a2;
          *a2 = v71;
          *(a2 + 8) = v64;
          *(a2 + 16) = 0;
          if (v72)
          {
            operator delete(v72);
          }
        }

        else
        {
          *v33 = 6;
          v33[1] = v62;
          v64 = v33 + 2;
        }

        *(a2 + 8) = v64;
        v73 = *(*a1 + 40 * v8 + 32);
        v74 = __clz(__rbit32(v73));
        v75 = *(a2 + 16);
        if (v64 >= v75)
        {
          v77 = (v64 - *a2) >> 3;
          if ((v77 + 1) >> 61)
          {
            sub_240B228BC();
          }

          v78 = v75 - *a2;
          v79 = v78 >> 2;
          if (v78 >> 2 <= (v77 + 1))
          {
            v79 = v77 + 1;
          }

          if (v78 >= 0x7FFFFFFFFFFFFFF8)
          {
            v80 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v80 = v79;
          }

          if (v80)
          {
            sub_240B299F4(v80);
          }

          v81 = (8 * v77);
          *v81 = 8;
          v81[1] = v74;
          v76 = (8 * v77 + 8);
          v82 = *(a2 + 8) - *a2;
          v83 = 8 * v77 - v82;
          memcpy(v81 - v82, *a2, v82);
          v84 = *a2;
          *a2 = v83;
          *(a2 + 8) = v76;
          *(a2 + 16) = 0;
          if (v84)
          {
            operator delete(v84);
          }
        }

        else
        {
          *v64 = 8;
          v64[1] = v74;
          v76 = v64 + 2;
        }

        v85 = (v73 >> v74) - 1;
        *(a2 + 8) = v76;
        v86 = *(a2 + 16);
        if (v76 >= v86)
        {
          v88 = (v76 - *a2) >> 3;
          if ((v88 + 1) >> 61)
          {
            sub_240B228BC();
          }

          v89 = v86 - *a2;
          v90 = v89 >> 2;
          if (v89 >> 2 <= (v88 + 1))
          {
            v90 = v88 + 1;
          }

          if (v89 >= 0x7FFFFFFFFFFFFFF8)
          {
            v91 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v91 = v90;
          }

          if (v91)
          {
            sub_240B299F4(v91);
          }

          v92 = (8 * v88);
          *v92 = 10;
          v92[1] = v85;
          v87 = 8 * v88 + 8;
          v93 = *(a2 + 8) - *a2;
          v94 = v92 - v93;
          memcpy(v92 - v93, *a2, v93);
          v95 = *a2;
          *a2 = v94;
          *(a2 + 8) = v87;
          *(a2 + 16) = 0;
          if (v95)
          {
            operator delete(v95);
          }
        }

        else
        {
          *v76 = 10;
          v76[1] = v85;
          v87 = (v76 + 2);
        }

        *(a2 + 8) = v87;
        v96 = *a1 + 40 * v8;
        v97 = a3[1];
        v98 = a3[2];
        if (v97 >= v98)
        {
          v104 = *a3;
          v105 = v97 - *a3;
          v106 = 0xCCCCCCCCCCCCCCCDLL * (v105 >> 3) + 1;
          v102 = v116;
          if (v106 > 0x666666666666666)
          {
            sub_240B228BC();
          }

          v107 = 0xCCCCCCCCCCCCCCCDLL * ((v98 - v104) >> 3);
          if (2 * v107 > v106)
          {
            v106 = 2 * v107;
          }

          if (v107 >= 0x333333333333333)
          {
            v108 = 0x666666666666666;
          }

          else
          {
            v108 = v106;
          }

          if (v108)
          {
            sub_240B5C5D8(v108);
          }

          v109 = 8 * (v105 >> 3);
          v110 = *(v96 + 16);
          v111 = *(v96 + 24);
          v112 = *(v96 + 32);
          *v109 = 0;
          *(v109 + 4) = -1;
          *(v109 + 8) = v116;
          *(v109 + 16) = v110;
          *(v109 + 24) = v111;
          *(v109 + 32) = v112;
          v103 = v109 + 40;
          v113 = v109 - v105;
          memcpy((v109 - v105), v104, v105);
          v114 = *a3;
          *a3 = v113;
          a3[1] = v103;
          a3[2] = 0;
          if (v114)
          {
            operator delete(v114);
          }
        }

        else
        {
          v99 = *(v96 + 16);
          v100 = *(v96 + 24);
          v101 = *(v96 + 32);
          *v97 = 0;
          *(v97 + 4) = -1;
          v102 = v116;
          *(v97 + 8) = v116;
          *(v97 + 16) = v99;
          *(v97 + 24) = v100;
          *(v97 + 32) = v101;
          v103 = v97 + 40;
        }

        a3[1] = v103;
        v7 = v102 + 1;
      }

      else
      {
        v23 = *a3;
        v24 = a3[1];
        v25 = v24 - *a3;
        v26 = 0xCCCCCCCCCCCCCCCDLL * (v25 >> 3);
        v27 = v26 + DWORD2(v119) + 1;
        v28 = v26 + DWORD2(v119) + 2;
        v29 = a3[2];
        if (v24 >= v29)
        {
          v34 = v26 + 1;
          if (v26 + 1 > 0x666666666666666)
          {
            sub_240B228BC();
          }

          v35 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - v23) >> 3);
          if (2 * v35 > v34)
          {
            v34 = 2 * v35;
          }

          if (v35 >= 0x333333333333333)
          {
            v36 = 0x666666666666666;
          }

          else
          {
            v36 = v34;
          }

          if (v36)
          {
            sub_240B5C5D8(v36);
          }

          v41 = 8 * (v25 >> 3);
          *v41 = *v21;
          *(v41 + 4) = v22;
          *(v41 + 8) = v27;
          *(v41 + 12) = v28;
          *(v41 + 16) = 0;
          *(v41 + 24) = 0;
          *(v41 + 32) = 1;
          v30 = v41 + 40;
          v42 = v41 - v25;
          memcpy((v41 - v25), v23, v25);
          v43 = *a3;
          *a3 = v42;
          a3[1] = v30;
          a3[2] = 0;
          if (v43)
          {
            operator delete(v43);
          }
        }

        else
        {
          *v24 = *v21;
          *(v24 + 4) = v22;
          *(v24 + 8) = v27;
          *(v24 + 12) = v28;
          *(v24 + 16) = 0;
          *(v24 + 24) = 0;
          *(v24 + 32) = 1;
          v30 = v24 + 40;
        }

        a3[1] = v30;
        v117 = *(*a1 + 40 * v8 + 8);
        sub_240BDE350(v118, &v117);
        v117 = *(*a1 + 40 * v8 + 12);
        sub_240BDE350(v118, &v117);
        v44 = *(*a1 + 40 * v8);
        v45 = (2 * v44) ^ (v44 >> 31);
        v47 = *(a2 + 8);
        v46 = *(a2 + 16);
        if (v47 >= v46)
        {
          v49 = (v47 - *a2) >> 3;
          v50 = v49 + 1;
          v7 = v116;
          if ((v49 + 1) >> 61)
          {
            sub_240B228BC();
          }

          v51 = v46 - *a2;
          if (v51 >> 2 > v50)
          {
            v50 = v51 >> 2;
          }

          if (v51 >= 0x7FFFFFFFFFFFFFF8)
          {
            v52 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v52 = v50;
          }

          if (v52)
          {
            sub_240B299F4(v52);
          }

          v53 = (8 * v49);
          *v53 = 0;
          v53[1] = v45;
          v48 = 8 * v49 + 8;
          v54 = *(a2 + 8) - *a2;
          v55 = v53 - v54;
          memcpy(v53 - v54, *a2, v54);
          v56 = *a2;
          *a2 = v55;
          *(a2 + 8) = v48;
          *(a2 + 16) = 0;
          if (v56)
          {
            operator delete(v56);
          }
        }

        else
        {
          *v47 = 0;
          v47[1] = v45;
          v48 = (v47 + 2);
          v7 = v116;
        }

        *(a2 + 8) = v48;
      }

      v6 = *(&v119 + 1);
    }

    while (*(&v119 + 1));
  }

  return sub_240BDE844(v118);
}