void sub_10068428C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

BOOL sub_1006842B4(uint64_t a1, uint64_t a2)
{
  v4 = 0x84BDA12F684BDA13 * ((a2 - a1) >> 5);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        if (sub_100682FBC(a2 - 864, a1))
        {
          sub_10068470C(a1, (a2 - 864));
          v5 = *(a1 + 696);
          *(a1 + 696) = *(a2 - 168);
          *(a2 - 168) = v5;
          v6 = *(a1 + 812);
          *&v55[16] = *(a1 + 796);
          v56 = v6;
          v57[0] = *(a1 + 828);
          *(v57 + 12) = *(a1 + 840);
          v7 = *(a1 + 748);
          v53 = *(a1 + 732);
          *v54 = v7;
          v8 = *(a1 + 780);
          *&v54[16] = *(a1 + 764);
          *v55 = v8;
          v9 = *(a1 + 716);
          v51 = *(a1 + 700);
          v52 = v9;
          v10 = *(a2 - 148);
          *(a1 + 700) = *(a2 - 164);
          *(a1 + 716) = v10;
          v11 = *(a2 - 132);
          v12 = *(a2 - 116);
          v13 = *(a2 - 84);
          *(a1 + 764) = *(a2 - 100);
          *(a1 + 780) = v13;
          *(a1 + 732) = v11;
          *(a1 + 748) = v12;
          v14 = *(a2 - 68);
          v15 = *(a2 - 52);
          v16 = *(a2 - 36);
          *(a1 + 840) = *(a2 - 24);
          *(a1 + 812) = v15;
          *(a1 + 828) = v16;
          *(a1 + 796) = v14;
          v17 = v56;
          *(a2 - 68) = *&v55[16];
          *(a2 - 52) = v17;
          *(a2 - 36) = v57[0];
          *(a2 - 24) = *(v57 + 12);
          v18 = *v54;
          *(a2 - 132) = v53;
          *(a2 - 116) = v18;
          v19 = *v55;
          *(a2 - 100) = *&v54[16];
          *(a2 - 84) = v19;
          v20 = v52;
          *(a2 - 164) = v51;
          *(a2 - 148) = v20;
          LOBYTE(v5) = *(a1 + 856);
          *(a1 + 856) = *(a2 - 8);
          result = 1;
          *(a2 - 8) = v5;
          return result;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_1006831B0(a1, a1 + 864, a2 - 864);
      return 1;
    case 4:
      sub_1006835D8(a1, a1 + 864, a1 + 1728, a2 - 864);
      return 1;
    case 5:
      sub_100683898(a1, a1 + 864, a1 + 1728, a1 + 2592, a2 - 864);
      return 1;
  }

LABEL_11:
  v22 = a1 + 1728;
  sub_1006831B0(a1, a1 + 864, a1 + 1728);
  v23 = a1 + 2592;
  if (a1 + 2592 == a2)
  {
    return 1;
  }

  v24 = 0;
  v25 = 0;
  while (1)
  {
    if (sub_100682FBC(v23, v22))
    {
      v26 = *(v23 + 48);
      v53 = *(v23 + 32);
      *v54 = v26;
      *&v54[12] = *(v23 + 60);
      v27 = *(v23 + 16);
      v51 = *v23;
      v52 = v27;
      *v55 = *(v23 + 80);
      *&v55[8] = *(v23 + 88);
      *&v55[24] = *(v23 + 104);
      *(v23 + 88) = 0;
      *(v23 + 96) = 0;
      *(v23 + 104) = 0;
      v28 = *(v23 + 288);
      v57[9] = *(v23 + 272);
      v58[0] = v28;
      *(v58 + 12) = *(v23 + 300);
      v29 = *(v23 + 224);
      v57[5] = *(v23 + 208);
      v57[6] = v29;
      v30 = *(v23 + 256);
      v57[7] = *(v23 + 240);
      v57[8] = v30;
      v31 = *(v23 + 160);
      v57[1] = *(v23 + 144);
      v57[2] = v31;
      v32 = *(v23 + 192);
      v57[3] = *(v23 + 176);
      v57[4] = v32;
      v33 = *(v23 + 128);
      v56 = *(v23 + 112);
      v57[0] = v33;
      __p = *(v23 + 320);
      v60 = *(v23 + 336);
      *(v23 + 328) = 0;
      *(v23 + 336) = 0;
      *(v23 + 320) = 0;
      v34 = *(v23 + 488);
      v69 = *(v23 + 472);
      v70 = v34;
      v71 = *(v23 + 504);
      v35 = *(v23 + 424);
      v65 = *(v23 + 408);
      v66 = v35;
      v36 = *(v23 + 456);
      v67 = *(v23 + 440);
      v68 = v36;
      v37 = *(v23 + 360);
      v61 = *(v23 + 344);
      v62 = v37;
      v38 = *(v23 + 392);
      v63 = *(v23 + 376);
      v64 = v38;
      v39 = *(v23 + 656);
      v80 = *(v23 + 640);
      v81 = v39;
      v82 = *(v23 + 672);
      v83 = *(v23 + 688);
      v40 = *(v23 + 592);
      v76 = *(v23 + 576);
      v77 = v40;
      v41 = *(v23 + 624);
      v78 = *(v23 + 608);
      v79 = v41;
      v42 = *(v23 + 528);
      v72 = *(v23 + 512);
      v73 = v42;
      v43 = *(v23 + 560);
      v74 = *(v23 + 544);
      v75 = v43;
      v84 = *(v23 + 696);
      v44 = *(v23 + 812);
      v91 = *(v23 + 796);
      v92 = v44;
      *v93 = *(v23 + 828);
      *&v93[12] = *(v23 + 840);
      v45 = *(v23 + 748);
      v87 = *(v23 + 732);
      v88 = v45;
      v46 = *(v23 + 780);
      v89 = *(v23 + 764);
      v90 = v46;
      v47 = *(v23 + 716);
      v85 = *(v23 + 700);
      v86 = v47;
      v48 = v24;
      v94 = *(v23 + 856);
      while (1)
      {
        sub_100684ADC(a1 + v48 + 2592, a1 + v48 + 1728);
        if (v48 == -1728)
        {
          break;
        }

        v49 = sub_100682FBC(&v51, a1 + v48 + 864);
        v48 -= 864;
        if (!v49)
        {
          v50 = a1 + v48 + 2592;
          goto LABEL_19;
        }
      }

      v50 = a1;
LABEL_19:
      sub_100684ADC(v50, &v51);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(__p);
      }

      if (*&v55[8])
      {
        *&v55[16] = *&v55[8];
        operator delete(*&v55[8]);
      }

      if (++v25 == 8)
      {
        return v23 + 864 == a2;
      }
    }

    v22 = v23;
    v24 += 864;
    v23 += 864;
    if (v23 == a2)
    {
      return 1;
    }
  }
}

void sub_1006846C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

double sub_10068470C(__int128 *a1, __int128 *a2)
{
  v68 = a1[2];
  *v69 = a1[3];
  *&v69[12] = *(a1 + 60);
  v66 = *a1;
  v67 = a1[1];
  v5 = *(a1 + 88);
  v4 = a1 + 11;
  v41 = v5;
  v6 = *(a1 + 20);
  v7 = *(a1 + 13);
  *v4 = 0;
  *(a1 + 12) = 0;
  *(a1 + 13) = 0;
  v56 = a1[9];
  v57 = a1[10];
  v54 = a1[7];
  v55 = a1[8];
  v60 = a1[13];
  v61 = a1[14];
  v58 = a1[11];
  v59 = a1[12];
  *&v65[12] = *(a1 + 300);
  v64 = a1[17];
  *v65 = a1[18];
  v62 = a1[15];
  v63 = a1[16];
  v42 = *(a1 + 40);
  *v82 = *(a1 + 41);
  *&v82[7] = *(a1 + 335);
  v8 = *(a1 + 343);
  *(a1 + 41) = 0;
  *(a1 + 42) = 0;
  *(a1 + 40) = 0;
  v51 = *(a1 + 472);
  v52 = *(a1 + 488);
  v53 = *(a1 + 126);
  v47 = *(a1 + 408);
  v48 = *(a1 + 424);
  v49 = *(a1 + 440);
  v50 = *(a1 + 456);
  v43 = *(a1 + 344);
  v44 = *(a1 + 360);
  v45 = *(a1 + 376);
  v46 = *(a1 + 392);
  v78 = a1[40];
  v79 = a1[41];
  v80 = a1[42];
  v81 = *(a1 + 172);
  v74 = a1[36];
  v75 = a1[37];
  v76 = a1[38];
  v77 = a1[39];
  v70 = a1[32];
  v71 = a1[33];
  v72 = a1[34];
  v73 = a1[35];
  *a1 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  *(a1 + 60) = *(a2 + 60);
  a1[2] = v10;
  a1[3] = v11;
  a1[1] = v9;
  *(a1 + 20) = *(a2 + 20);
  sub_10007057C(v4, (a2 + 88));
  a1[7] = a2[7];
  v12 = a2[8];
  v13 = a2[9];
  v14 = a2[11];
  a1[10] = a2[10];
  a1[11] = v14;
  a1[8] = v12;
  a1[9] = v13;
  v15 = a2[12];
  v16 = a2[13];
  v17 = a2[15];
  a1[14] = a2[14];
  a1[15] = v17;
  a1[12] = v15;
  a1[13] = v16;
  v18 = a2[16];
  v19 = a2[17];
  v20 = a2[18];
  *(a1 + 300) = *(a2 + 300);
  a1[17] = v19;
  a1[18] = v20;
  a1[16] = v18;
  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v21 = a2[20];
  *(a1 + 42) = *(a2 + 42);
  a1[20] = v21;
  *(a2 + 343) = 0;
  *(a2 + 320) = 0;
  v23 = *(a2 + 424);
  v22 = *(a2 + 440);
  v24 = *(a2 + 408);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 408) = v24;
  *(a1 + 424) = v23;
  *(a1 + 440) = v22;
  v26 = *(a2 + 360);
  v25 = *(a2 + 376);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 360) = v26;
  *(a1 + 376) = v25;
  v27 = *(a2 + 456);
  v28 = *(a2 + 472);
  v29 = *(a2 + 488);
  *(a1 + 126) = *(a2 + 126);
  *(a1 + 472) = v28;
  *(a1 + 488) = v29;
  *(a1 + 456) = v27;
  v30 = a2[32];
  v31 = a2[33];
  v32 = a2[35];
  a1[34] = a2[34];
  a1[35] = v32;
  a1[32] = v30;
  a1[33] = v31;
  v33 = a2[36];
  v34 = a2[37];
  v35 = a2[39];
  a1[38] = a2[38];
  a1[39] = v35;
  a1[36] = v33;
  a1[37] = v34;
  v36 = a2[40];
  v37 = a2[41];
  v38 = a2[42];
  *(a1 + 172) = *(a2 + 172);
  a1[41] = v37;
  a1[42] = v38;
  a1[40] = v36;
  a2[2] = v68;
  a2[3] = *v69;
  *(a2 + 60) = *&v69[12];
  *a2 = v66;
  a2[1] = v67;
  *(a2 + 20) = v6;
  v39 = *(a2 + 11);
  if (v39)
  {
    *(a2 + 12) = v39;
    operator delete(v39);
  }

  *(a2 + 88) = v41;
  *(a2 + 13) = v7;
  a2[17] = v64;
  a2[18] = *v65;
  *(a2 + 300) = *&v65[12];
  a2[13] = v60;
  a2[14] = v61;
  a2[15] = v62;
  a2[16] = v63;
  a2[9] = v56;
  a2[10] = v57;
  a2[11] = v58;
  a2[12] = v59;
  a2[7] = v54;
  a2[8] = v55;
  if (*(a2 + 343) < 0)
  {
    operator delete(*(a2 + 40));
  }

  *(a2 + 40) = v42;
  *(a2 + 41) = *v82;
  *(a2 + 335) = *&v82[7];
  *(a2 + 343) = v8;
  *(a2 + 472) = v51;
  *(a2 + 488) = v52;
  *(a2 + 126) = v53;
  *(a2 + 408) = v47;
  *(a2 + 424) = v48;
  *(a2 + 440) = v49;
  *(a2 + 456) = v50;
  *(a2 + 344) = v43;
  *(a2 + 360) = v44;
  *(a2 + 376) = v45;
  *(a2 + 392) = v46;
  a2[40] = v78;
  a2[41] = v79;
  a2[42] = v80;
  *(a2 + 172) = v81;
  a2[36] = v74;
  a2[37] = v75;
  a2[38] = v76;
  a2[39] = v77;
  a2[32] = v70;
  a2[33] = v71;
  result = *&v72;
  a2[34] = v72;
  a2[35] = v73;
  return result;
}

__n128 sub_100684ADC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  *(a1 + 80) = *(a2 + 80);
  sub_10007057C(a1 + 88, (a2 + 88));
  *(a1 + 112) = *(a2 + 112);
  v7 = *(a2 + 128);
  v8 = *(a2 + 144);
  v9 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v9;
  *(a1 + 128) = v7;
  *(a1 + 144) = v8;
  v10 = *(a2 + 192);
  v11 = *(a2 + 208);
  v12 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v12;
  *(a1 + 192) = v10;
  *(a1 + 208) = v11;
  v13 = *(a2 + 256);
  v14 = *(a2 + 272);
  v15 = *(a2 + 288);
  *(a1 + 300) = *(a2 + 300);
  *(a1 + 272) = v14;
  *(a1 + 288) = v15;
  *(a1 + 256) = v13;
  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  v16 = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 320) = v16;
  *(a2 + 343) = 0;
  *(a2 + 320) = 0;
  v18 = *(a2 + 424);
  v17 = *(a2 + 440);
  v19 = *(a2 + 408);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 408) = v19;
  *(a1 + 424) = v18;
  *(a1 + 440) = v17;
  v21 = *(a2 + 360);
  v20 = *(a2 + 376);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 360) = v21;
  *(a1 + 376) = v20;
  v22 = *(a2 + 456);
  v23 = *(a2 + 472);
  v24 = *(a2 + 488);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 472) = v23;
  *(a1 + 488) = v24;
  *(a1 + 456) = v22;
  v25 = *(a2 + 512);
  v26 = *(a2 + 528);
  v27 = *(a2 + 560);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = v27;
  *(a1 + 512) = v25;
  *(a1 + 528) = v26;
  v28 = *(a2 + 576);
  v29 = *(a2 + 592);
  v30 = *(a2 + 624);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 624) = v30;
  *(a1 + 576) = v28;
  *(a1 + 592) = v29;
  v31 = *(a2 + 640);
  v32 = *(a2 + 656);
  v33 = *(a2 + 672);
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 656) = v32;
  *(a1 + 672) = v33;
  *(a1 + 640) = v31;
  *(a1 + 696) = *(a2 + 696);
  v34 = *(a2 + 716);
  *(a1 + 700) = *(a2 + 700);
  *(a1 + 716) = v34;
  v35 = *(a2 + 732);
  v36 = *(a2 + 748);
  v37 = *(a2 + 780);
  *(a1 + 764) = *(a2 + 764);
  *(a1 + 780) = v37;
  *(a1 + 732) = v35;
  *(a1 + 748) = v36;
  result = *(a2 + 796);
  v39 = *(a2 + 812);
  v40 = *(a2 + 828);
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 812) = v39;
  *(a1 + 828) = v40;
  *(a1 + 796) = result;
  *(a1 + 856) = *(a2 + 856);
  return result;
}

void sub_100684C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= (0x84BDA12F684BDA13 * ((a3 - a1) >> 5)))
    {
      v8 = (0x97B425ED097B426 * ((a3 - a1) >> 5)) | 1;
      v9 = a1 + 864 * v8;
      v10 = 0x97B425ED097B426 * ((a3 - a1) >> 5) + 2;
      if (v10 < a2 && sub_100682FBC(a1 + 864 * v8, v9 + 864))
      {
        v9 += 864;
        v8 = v10;
      }

      if (!sub_100682FBC(v9, v4))
      {
        v11 = *(v4 + 48);
        v35[2] = *(v4 + 32);
        v36[0] = v11;
        *(v36 + 12) = *(v4 + 60);
        v12 = *(v4 + 16);
        v35[0] = *v4;
        v35[1] = v12;
        v37 = *(v4 + 80);
        *v38 = *(v4 + 88);
        v39 = *(v4 + 104);
        *(v4 + 88) = 0;
        *(v4 + 96) = 0;
        *(v4 + 104) = 0;
        *(v51 + 12) = *(v4 + 300);
        v13 = *(v4 + 288);
        v50 = *(v4 + 272);
        v51[0] = v13;
        v14 = *(v4 + 224);
        v46 = *(v4 + 208);
        v47 = v14;
        v15 = *(v4 + 256);
        v48 = *(v4 + 240);
        v49 = v15;
        v16 = *(v4 + 160);
        v42 = *(v4 + 144);
        v43 = v16;
        v17 = *(v4 + 192);
        v44 = *(v4 + 176);
        v45 = v17;
        v18 = *(v4 + 128);
        v40 = *(v4 + 112);
        v41 = v18;
        *__p = *(v4 + 320);
        v53 = *(v4 + 336);
        *(v4 + 328) = 0;
        *(v4 + 336) = 0;
        *(v4 + 320) = 0;
        v19 = *(v4 + 488);
        v62 = *(v4 + 472);
        v63 = v19;
        v20 = *(v4 + 424);
        v58 = *(v4 + 408);
        v59 = v20;
        v21 = *(v4 + 456);
        v60 = *(v4 + 440);
        v61 = v21;
        v22 = *(v4 + 360);
        v54 = *(v4 + 344);
        v55 = v22;
        v23 = *(v4 + 392);
        v56 = *(v4 + 376);
        v57 = v23;
        v64 = *(v4 + 504);
        v24 = *(v4 + 656);
        v73 = *(v4 + 640);
        v74 = v24;
        v75 = *(v4 + 672);
        v76 = *(v4 + 688);
        v25 = *(v4 + 592);
        v69 = *(v4 + 576);
        v70 = v25;
        v26 = *(v4 + 624);
        v71 = *(v4 + 608);
        v72 = v26;
        v27 = *(v4 + 528);
        v65 = *(v4 + 512);
        v66 = v27;
        v28 = *(v4 + 560);
        v67 = *(v4 + 544);
        v68 = v28;
        v77 = *(v4 + 696);
        v29 = *(v4 + 812);
        v84 = *(v4 + 796);
        v85 = v29;
        *v86 = *(v4 + 828);
        *&v86[12] = *(v4 + 840);
        v30 = *(v4 + 748);
        v80 = *(v4 + 732);
        v81 = v30;
        v31 = *(v4 + 780);
        v82 = *(v4 + 764);
        v83 = v31;
        v32 = *(v4 + 716);
        v78 = *(v4 + 700);
        v79 = v32;
        v87 = *(v4 + 856);
        do
        {
          v33 = v9;
          sub_100684ADC(v4, v9);
          if (v6 < v8)
          {
            break;
          }

          v34 = (2 * v8) | 1;
          v9 = a1 + 864 * v34;
          v8 = 2 * v8 + 2;
          if (v8 >= a2)
          {
            v8 = v34;
          }

          else if (sub_100682FBC(a1 + 864 * v34, v9 + 864))
          {
            v9 += 864;
          }

          else
          {
            v8 = v34;
          }

          v4 = v33;
        }

        while (!sub_100682FBC(v9, v35));
        sub_100684ADC(v33, v35);
        if (SHIBYTE(v53) < 0)
        {
          operator delete(__p[0]);
        }

        if (v38[0])
        {
          v38[1] = v38[0];
          operator delete(v38[0]);
        }
      }
    }
  }
}

BOOL sub_100684F5C()
{
  v1 = qword_1025D4608;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

BOOL sub_100684F7C()
{
  v2 = *(v0 + 1544);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

BOOL sub_100684F98()
{
  v2 = *(v0 + 1544);

  return os_signpost_enabled(v2);
}

void sub_100684FB0()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

void sub_100685CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (v22)
  {
    sub_100008080(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_100685D34(uint64_t *a1, uint64_t *a2, int a3)
{
  if (qword_1025D4410 != -1)
  {
    sub_1018FF694();
  }

  v6 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = *a1;
    v10 = *(*a1[1] + 72);
    *buf = 134219008;
    v28 = v9;
    v29 = 1024;
    v30 = a3;
    v31 = 2048;
    v32 = v7;
    v33 = 2048;
    v34 = v8;
    v35 = 1024;
    v36 = v10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#altimeter,adding elevation profile transition point,now,%.3f,isNew,%d,sampleTimestamp,%.3f,altitude,%.3f,smoothedWorkoutProfileCount,%d", buf, 0x2Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_1018FF6EC();
    }

    v11 = *a2;
    v12 = a2[1];
    v13 = *a1;
    v14 = *(*a1[1] + 72);
    v17 = 134219008;
    v18 = v13;
    v19 = 1024;
    v20 = a3;
    v21 = 2048;
    v22 = v11;
    v23 = 2048;
    v24 = v12;
    v25 = 1024;
    v26 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 0, "#altimeter,adding elevation profile transition point,now,%.3f,isNew,%d,sampleTimestamp,%.3f,altitude,%.3f,smoothedWorkoutProfileCount,%d", COERCE_DOUBLE(&v17), 44);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "auto CLElevationGainFromProfile::computeAscendingDescendingSegments:::(anonymous class)::operator()(const ElevationProfileSegmentTransitionPoint &, const int) const", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }
}

void sub_100685F40(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      sub_1003E5FE8(a1, v4 >> 4);
    }

    v6 = 0;
    if (v3 >> 4)
    {
      v7 = 16 * (v4 >> 4);
      v8 = a1[1] - v2;
      v9 = (v7 - v8);
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_1006862C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006862EC(uint64_t **a1, uint64_t a2, double a3)
{
  if (qword_1025D4410 != -1)
  {
    sub_1018FF694();
  }

  v5 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    v6 = **a1;
    v8 = 134218240;
    v9 = v6;
    v10 = 2048;
    v11 = a3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#altimeter,setting segmentation threshold,time,%.3f,threshold,%.1f", &v8, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FF950(a1, a3);
  }

  return a3;
}

uint64_t sub_100686CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0x3F6000003DE147AELL;
  *(a1 + 8) = 1025758986;
  *(a1 + 12) = 0x3C00000003;
  *(a1 + 20) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  sub_1001B6020(a1 + 48, a2);
  sub_1001B6020(a1 + 80, a3);
  return a1;
}

uint64_t sub_100686D6C(uint64_t a1)
{
  sub_100686F2C(a1 + 48);
  sub_100686F2C(a1 + 80);
  sub_1001C5560(a1 + 80);
  sub_1001C5560(a1 + 48);
  return a1;
}

uint64_t sub_100686DBC(uint64_t a1, int a2, CLMotionActivity *this)
{
  result = CLMotionActivity::isInVehicle(this);
  if (*(a1 + 21) != result)
  {
    *(a1 + 20) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 21) = result;
    if (*(a1 + 72))
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018FFBA4();
      }

      v5 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 21);
        v8[0] = 67240192;
        v8[1] = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#CLProactiveLocation,turn_detector,start/end in-vehicle, invoking turn-detector override,fIsInVehicle,%{public}d", v8, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FFBB8((a1 + 21));
      }

      v7 = *(a1 + 72);
      if (!v7)
      {
        sub_1000CF05C();
      }

      return (*(*v7 + 48))(v7);
    }
  }

  return result;
}

uint64_t sub_100686F2C(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100686FB0(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  sub_10026CE64(a1 + 8, "CLMotionStateOverride", a1, 107, 0.0);
  *(a1 + 272) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 23;
  if (qword_1025D4200 != -1)
  {
    sub_1018FFCE0();
  }

  v3 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Workout, Taking power assertion due to session start.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FFCF4(buf);
    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 2, "Workout, Taking power assertion due to session start.", v7, 2);
    v6 = v5;
    sub_100152C7C("Generic", 1, 0, 2, "CLMotionStateOverride::CLMotionStateOverride(id<CLIntersiloUniverse>)", "%s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  return a1;
}

uint64_t sub_100687170(uint64_t a1)
{
  v2 = *(a1 + 240);
  v19 = *(a1 + 224);
  v20 = v2;
  v21 = *(a1 + 256);
  v22 = *(a1 + 272);
  v3 = *(a1 + 176);
  v15 = *(a1 + 160);
  v16 = v3;
  v4 = *(a1 + 208);
  v17 = *(a1 + 192);
  v18 = v4;
  v5 = *(a1 + 144);
  v13 = *(a1 + 128);
  v14 = v5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100687380;
  v12[3] = &unk_1024686E0;
  [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
  if (qword_1025D43F0 != -1)
  {
    sub_1018FFD38();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Workout, Releasing power assertion due to session end.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FFD60(buf);
    v10[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 2, "Workout, Releasing power assertion due to session end.", v10, 2);
    v9 = v8;
    sub_100152C7C("Generic", 1, 0, 2, "CLMotionStateOverride::~CLMotionStateOverride()", "%s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  sub_10026ED10(a1 + 8);
  sub_10026F190(a1 + 8);
  return a1;
}

void sub_100687374(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_100687390(uint64_t a1, unsigned __int8 *uu)
{
  if (*(a1 + 461) == 1)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v2 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Ignoring endWorkoutSession because fTriggerIndoorOutdoorOnObservedPedWorkouts is true", &v9, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FFE94();
    }
  }

  else
  {
    v4 = (a1 + 0x2000);
    memset(out, 0, 37);
    uuid_unparse(uu, out);
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    *__p = 0u;
    v11 = 0u;
    v9 = 0u;
    *(a1 + 8744) = 0u;
    v5 = (a1 + 8760);
    if (v4[591] < 0)
    {
      operator delete(*v5);
    }

    *v5 = *__p;
    *(a1 + 8776) = v11;
    sub_10069C5F4((a1 + 8784), &v11 + 8);
    sub_100106180(&v11 + 1);
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    *__p = 0u;
    v11 = 0u;
    v9 = 0u;
    *(a1 + 8832) = 0u;
    v6 = (a1 + 8848);
    if (v4[679] < 0)
    {
      operator delete(*v6);
    }

    *v6 = *__p;
    *(a1 + 8864) = v11;
    BYTE7(v11) = 0;
    LOBYTE(__p[0]) = 0;
    sub_10069C000((a1 + 8872), &v11 + 8);
    sub_100666704(&v11 + 1);
    v4[728] = 0;
    if (qword_1025D43F0 != -1)
    {
      sub_1018FFD38();
    }

    v7 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v9) = 136315138;
      *(&v9 + 4) = out;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "WorkoutSession, end workout session, %s", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FFDA4();
    }

    v8 = *(a1 + 8736);
    if (v8)
    {
      sub_10071EC1C(v8);
      sub_100693260((a1 + 8736), 0);
    }

    sub_10068D544(a1, (a1 + 464), 0);
    sub_10068D544(a1, (a1 + 528), 0);
    sub_10068D544(a1, (a1 + 560), 0);
    *(a1 + 128) = 0;
  }
}

void sub_10068764C(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_10000EC00(v4, "StartOrResumeWorkout");
    if (*(a1 + 16) <= 0)
    {
      if (SHIBYTE(v5) < 0)
      {
        sub_100007244(__p, v4[0], v4[1]);
      }

      else
      {
        *__p = *v4;
        v7 = v5;
      }

      sub_10023B1D0(a1 + 8, __p);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v5) < 0)
    {
      operator delete(v4[0]);
    }
  }

  else
  {
    v3 = a1 + 8;

    sub_10026ED10(v3);
  }
}

void sub_10068770C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006877B0(uint64_t a1, void *a2)
{
  v4 = [a2 state] > 299;
  if (*(a1 + 592) != v4)
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018FFCE0();
    }

    v5 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109376;
      v6[1] = [a2 state];
      v7 = 1024;
      v8 = v4;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Scuba diving state changed, submersionState, %d, isScubaDiving, %d", v6, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FFF70();
    }

    *(a1 + 592) = v4;
  }
}

uint64_t sub_100687A3C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100689BAC;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_1026586A8 != -1)
  {
    dispatch_once(&qword_1026586A8, block);
  }

  return qword_1026371C8;
}

void sub_100687D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 664);
  if (v3)
  {
    if (![v3 objectForKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:")}])
    {
      v7 = objc_alloc_init(NSMutableSet);
      [*(a1 + 664) setObject:v7 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", a3)}];
    }

    v8 = [*(a1 + 664) objectForKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", a3)}];

    [v8 addObject:a2];
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v9 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "PrepareSessionEnd, receiving addClientForPrepareSessionEnd after client list has been deleted!", v10, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101900388();
    }
  }
}

void sub_100687EA4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 664);
  if (v3)
  {
    if ([v3 objectForKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:")}])
    {
      v7 = [*(a1 + 664) objectForKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", a3)}];

      [v7 removeObject:a2];
    }

    else
    {
      if (qword_1025D43F0 != -1)
      {
        sub_10023AD98();
      }

      v9 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_FAULT))
      {
        v10[0] = 67109120;
        v10[1] = a3;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "PrepareSessionEnd, Client for PrepareSessionEnd of session type %d does not exist!", v10, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10190046C(a3);
      }
    }
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v8 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "PrepareSessionEnd, Receiving removeClientForPrepareSessionEnd after client list has been deleted!", v10, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101900564();
    }
  }
}

id sub_1006880BC(uint64_t a1, double a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Workout,Setting suggested stop timeout for workout,%f", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101900648(a2);
  }

  return [*(a1 + 320) setNextFireDelay:a2];
}

void sub_1006881D0(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "User dismissed current workout alert.", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101900748();
  }

  Current = CFAbsoluteTimeGetCurrent();
  sub_100D30854((a1 + 6648), Current, *(a1 + 452));
  sub_1006907D8(a1);
  v4 = *(a1 + 10160);
  if (v4)
  {
    v5 = CFAbsoluteTimeGetCurrent();
    sub_100FD735C(v4, v5);
  }

  sub_10068F75C(a1);
}

id sub_1006883FC(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 128);
    v5[0] = 67240192;
    v5[1] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#gfc didExit recieved in msm, stopping, current workout in session %{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101900900(a1);
  }

  if (sub_1012572FC(*(a1 + 9576), *(a1 + 9592)) != -1.0)
  {
    sub_100D30930(a1 + 6648);
  }

  return [*(a1 + 10104) stopGeoFence];
}

id sub_1006885A4(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 128);
    v5[0] = 67240192;
    v5[1] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#gfc didTimeout recieved in msm, stopping, current workout in session %{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101900AC8(a1);
  }

  return [*(a1 + 10104) stopGeoFence];
}

void sub_1006886F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100688718@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((*(result + 128) & 1) == 0)
  {
    *(result + 128) = 1;
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

id sub_1006887C0(void *a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_10069D0A4;
  v4[3] = &unk_102469660;
  v1 = a1[1];
  v4[4] = *a1;
  v5 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = [v4 copy];
  if (v5)
  {
    sub_100008080(v5);
  }

  return v2;
}

void sub_100688860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100008080(a14);
  }

  _Unwind_Resume(exception_object);
}

id sub_1006888B0(uint64_t a1, uint64_t a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Added client for workout session updates", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101900BB4();
  }

  return [*(a1 + 680) addObject:a2];
}

id sub_100688998(uint64_t a1, uint64_t a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Removed client from workout session updates", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101900C90();
  }

  return [*(a1 + 680) removeObject:a2];
}

void sub_100688B14(uint64_t a1, unsigned __int8 *uu, uint64_t a3, int a4)
{
  if (*(a1 + 461) == 1)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring beginWorkoutSession because fTriggerIndoorOutdoorOnObservedPedWorkouts is true", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101900E6C();
    }
  }

  else
  {
    memset(v31, 0, 37);
    memset(out, 0, 37);
    uuid_unparse(uu, out);
    uuid_unparse(a3, v31);
    *(a1 + 8744) = *a3;
    std::string::operator=((a1 + 8760), (a3 + 16));
    sub_10069C21C((a1 + 8784), (a3 + 40));
    *(a1 + 8920) = a4;
    if (qword_1025D43F0 != -1)
    {
      sub_1018FFD38();
    }

    v9 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 39) >= 0)
      {
        v10 = a3 + 16;
      }

      else
      {
        v10 = *(a3 + 16);
      }

      *buf = 136315906;
      *&buf[4] = out;
      *&buf[12] = 2080;
      *&buf[14] = v31;
      *&buf[22] = 2080;
      *&buf[24] = v10;
      LOWORD(v22) = 1024;
      *(&v22 + 2) = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "WorkoutSession, begin workout session with workoutId, %s, overallId, %s, appId, %s, allow detection, %d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_1018FFD38();
      }

      if (*(a3 + 39) >= 0)
      {
        v16 = a3 + 16;
      }

      else
      {
        v16 = *(a3 + 16);
      }

      v32 = 136315906;
      v33 = out;
      v34 = 2080;
      v35 = v31;
      v36 = 2080;
      v37 = v16;
      v38 = 1024;
      v39 = a4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 0, "WorkoutSession, begin workout session with workoutId, %s, overallId, %s, appId, %s, allow detection, %d", &v32, 38, v19, v20);
      v18 = v17;
      sub_100152C7C("Generic", 1, 0, 2, "void CLMotionStateMediator::beginWorkoutSession(const CLMotionStateMediator_Type::WorkoutSettings &, const CLMotionStateMediator_Type::WorkoutSessionPriors &, BOOL)", "%s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    v11 = *(uu + 7);
    v26 = *(uu + 6);
    v27 = v11;
    v28 = *(uu + 8);
    v29 = *(uu + 18);
    v12 = *(uu + 3);
    v22 = *(uu + 2);
    v23 = v12;
    v13 = *(uu + 5);
    v24 = *(uu + 4);
    v25 = v13;
    v14 = *(uu + 1);
    *buf = *uu;
    *&buf[16] = v14;
    if (*(a1 + 396) == 1 && v22 == 14)
    {
      *&v22 = *(a1 + 400);
    }

    if (!a4)
    {
      sub_10051BE3C(&v19);
      operator new();
    }

    sub_10051BE3C(&v19);
    if (*(a3 + 80) >= 2uLL)
    {
      operator new();
    }

    if (qword_1025D43F0 != -1)
    {
      sub_1018FFD38();
    }

    v15 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
    {
      v32 = 136315138;
      v33 = v31;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "WorkoutSession, no priors but requesting detection, %s", &v32, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101900D6C();
    }

    sub_10068D544(a1, (a1 + 464), 0x100uLL);
  }
}

uint64_t sub_100689098(uint64_t a1, unsigned __int8 *uu, void *a3)
{
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  if (qword_1025D43F0 != -1)
  {
    sub_1018FFD38();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 136315394;
    *&v12[4] = out;
    *&v12[12] = 1024;
    *&v12[14] = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "WorkoutSession, set current workout type in session, %s, isManualTransition, %d", v12, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101900F50(out, a3);
  }

  v7 = *(uu + 7);
  v17 = *(uu + 6);
  v18 = v7;
  v19 = *(uu + 8);
  v20 = *(uu + 18);
  v8 = *(uu + 3);
  v13 = *(uu + 2);
  v14 = v8;
  v9 = *(uu + 5);
  v15 = *(uu + 4);
  v16 = v9;
  v10 = *(uu + 1);
  *v12 = *uu;
  *&v12[16] = v10;
  if (*(a1 + 396) == 1 && v13 == 14)
  {
    *&v13 = *(a1 + 400);
  }

  return sub_10071E3BC(*(a1 + 8736), v12, a3);
}

uint64_t sub_100689280(uint64_t a1, unsigned __int8 *uu)
{
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  if (qword_1025D43F0 != -1)
  {
    sub_1018FFD38();
  }

  v3 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = out;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "WorkoutSession, pause workout, %s", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190105C();
  }

  return sub_10071EB24(*(a1 + 8736));
}

uint64_t sub_1006893C0(uint64_t a1, unsigned __int8 *uu)
{
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  if (qword_1025D43F0 != -1)
  {
    sub_1018FFD38();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10[0]) = 136315138;
    *(v10 + 4) = out;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "WorkoutSession, resume workout, %s", v10, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190114C();
  }

  v5 = *(uu + 7);
  v15 = *(uu + 6);
  v16 = v5;
  v17 = *(uu + 8);
  v18 = *(uu + 18);
  v6 = *(uu + 3);
  v11 = *(uu + 2);
  v12 = v6;
  v7 = *(uu + 5);
  v13 = *(uu + 4);
  v14 = v7;
  v8 = *(uu + 1);
  v10[0] = *uu;
  v10[1] = v8;
  if (*(a1 + 396) == 1 && v11 == 14)
  {
    *&v11 = *(a1 + 400);
  }

  return sub_10071E3BC(*(a1 + 8736), v10, 1);
}

unint64_t *sub_1006896F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 9656);
  *(a2 + 104) = *(a1 + 9640);
  *(a2 + 120) = v4;
  *(a2 + 136) = *(a1 + 9672);
  v5 = *(a1 + 9592);
  *(a2 + 40) = *(a1 + 9576);
  *(a2 + 56) = v5;
  v6 = *(a1 + 9624);
  *(a2 + 72) = *(a1 + 9608);
  *(a2 + 88) = v6;
  v7 = *(a1 + 9560);
  *(a2 + 8) = *(a1 + 9544);
  *a2 = *(a1 + 8924);
  *(a2 + 152) = *(a1 + 9688);
  *(a2 + 24) = v7;
  *(a2 + 160) = *(a1 + 8832);
  if (*(a1 + 8871) < 0)
  {
    sub_100007244((a2 + 176), *(a1 + 8848), *(a1 + 8856));
  }

  else
  {
    *(a2 + 176) = *(a1 + 8848);
    *(a2 + 192) = *(a1 + 8864);
  }

  return sub_1006976A0((a2 + 200), (a1 + 8872));
}

void sub_1006897B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  _Unwind_Resume(exception_object);
}

id sub_1006897D0(__int128 *a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_10069D0EC;
  v4[3] = &unk_102469690;
  v5 = *a1;
  if (*(a1 + 39) < 0)
  {
    sub_100007244(__p, *(a1 + 2), *(a1 + 3));
  }

  else
  {
    *__p = a1[1];
    v7 = *(a1 + 4);
  }

  sub_1006976A0(v8, a1 + 5);
  v2 = [v4 copy];
  sub_100666704(v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_100689A04(unsigned __int8 *a1, void *a2, void *a3)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134349312;
    v9 = a2;
    v10 = 1026;
    v11 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Workout, reminder mute settings, updating %{public}ld to %{public}d", &v8, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190123C(a3, a2);
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_12:
    v7 = a1[489];
    a1[489] = a3;
    goto LABEL_13;
  }

  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (a2 == 2)
  {
    a1[553] = 0;
    return;
  }

  if (a2 != 1)
  {
    return;
  }

  v7 = a1[521];
  a1[521] = a3;
LABEL_13:
  if (v7 != a3)
  {
    sub_100690180(a1);
  }
}

void sub_100689B78(id a1)
{
  v2 = sub_10001A3E8(a1, v1);
  v4 = sub_10071C8FC(v2, v3);
  if (v4)
  {
    if (sub_100BA0344(v4, v5))
    {
      byte_102658698 = 1;
    }
  }
}

uint64_t sub_100689C1C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100689CAC;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_1026586B8 != -1)
  {
    dispatch_once(&qword_1026586B8, block);
  }

  return byte_1026586B0;
}

id sub_100689CAC(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "vendor")];
  byte_1026586B0 = result;
  return result;
}

void sub_100689CDC(uint64_t a1, void *a2)
{
  v3 = sub_10068BFFC(a1, "CLMotionStateMediator", a2);
  *v3 = off_102468750;
  *(v3 + 112) = off_102468890;
  *(v3 + 120) = &off_1024688D0;
  *(v3 + 128) = 0;
  sub_100AB05B4(v3 + 136);
  *(a1 + 320) = [*(a1 + 40) newTimer];
  *(a1 + 328) = 0;
  *(a1 + 336) = xmmword_101C85FDC;
  *(a1 + 352) = unk_101C85FEC;
  *(a1 + 368) = xmmword_101C85FFC;
  *(a1 + 380) = *(&xmmword_101C85FFC + 12);
  LODWORD(v9) = 0;
  sub_1004861C8((a1 + 396), "ForceOtherWorkoutOverride", &v9, 0);
  LODWORD(v9) = 0;
  sub_1004861C8((a1 + 408), "ForceWorkoutLocationType", &v9, 0);
  LODWORD(v9) = 150;
  sub_1004861C8((a1 + 420), "ForceMaxSecondsForWorkoutLocationTypeDisambiguation", &v9, 0);
  LOBYTE(v9) = 0;
  sub_100126E84((a1 + 432), "EnableForcedWorkoutLocationUpdatesFromSPI", &v9, 0);
  LODWORD(v9) = 0;
  sub_1004861C8((a1 + 436), "NumAllowedIndoorOutdoorNotificationsPerHour", &v9, 0);
  LODWORD(v9) = 1155596288;
  sub_1004F8200((a1 + 448), "MuteWorkoutAlertsForSecondsAfterUserDismissal", &v9, 0);
  v8.__r_.__value_.__s.__data_[0] = 0;
  v4 = sub_100126E84(&v9, "EnableALSActiveScansAOP", &v8, 0);
  if (BYTE1(v9) == 1)
  {
    v6 = sub_10001A3E8(v4, v5);
    v7 = sub_10071C698(v6);
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 460) = v7;
  v8.__r_.__value_.__s.__data_[0] = 0;
  sub_100126E84(&v9, "TriggerPhoneIndoorOutdoorOnWatchPedWorkouts", &v8, 0);
  *(a1 + 461) = BYTE1(v9);
  sub_10000EC00((a1 + 464), "start");
  *(a1 + 488) = 0;
  sub_10000EC00((a1 + 496), "resume");
  *(a1 + 520) = 0;
  sub_10000EC00((a1 + 528), "end");
  *(a1 + 552) = 0;
  sub_10000EC00((a1 + 560), "autoPause");
  *(a1 + 592) = 0;
  *(a1 + 584) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = objc_alloc_init(NSMutableDictionary);
  *(a1 + 672) = 0;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0;
  sub_10069D234((a1 + 704), *(a1 + 32));
}

uint64_t sub_10068BFFC(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_1024696D0;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_10068C08C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10068C0A8(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onOldMotionCoprocessorData", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onOldMotionCoprocessorData, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_1000B1AB0(a2, a1, 1);
}

void sub_10068C270(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onActivePedStateCoprocessorData", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onActivePedStateCoprocessorData, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_100D35E64(a2 + 6648, a1);
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068C438(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onWatchElevationCoprocessorData", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *v9 = 2082;
      *&v9[2] = "";
      v10 = 2082;
      v11 = "activity";
      v12 = 2050;
      v13 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onWatchElevationCoprocessorData, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  *v9 = 0;
  *buf = *(a1 + 8);
  *v9 = *(a1 + 54);
  *&v9[4] = *(a1 + 56);
  sub_100694448((a2 + 3464), buf);
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068C618(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onTier1CyclingFeaturesData", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "activity";
      *&buf[28] = 2050;
      *&buf[30] = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onTier1CyclingFeaturesData, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v8 = 0;
  }

  v6 = *(a1 + 16);
  *buf = *a1;
  *&buf[16] = v6;
  *&buf[32] = *(a1 + 32);
  sub_100694620(a2 + 3936, buf);
  if (v8 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068C7EC(uint64_t a1, int *a2, _OWORD *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onCalorimetryNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onCalorimetryNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100694970(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068C9B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 7672);
  v18 = *(v1 + 7656);
  v19 = v2;
  v20 = *(v1 + 7688);
  v21 = *(v1 + 7704);
  v3 = *(v1 + 7608);
  v14 = *(v1 + 7592);
  v15 = v3;
  v4 = *(v1 + 7640);
  v16 = *(v1 + 7624);
  v17 = v4;
  v5 = *(v1 + 7544);
  v10 = *(v1 + 7528);
  v11 = v5;
  v6 = *(v1 + 7576);
  v12 = *(v1 + 7560);
  v13 = v6;
  v7 = *(v1 + 7496);
  Current = CFAbsoluteTimeGetCurrent();
  v8 = 4;
  sub_10068E928(v1, &v7);
}

void sub_10068CA70(uint64_t a1, _DWORD *a2, unsigned __int8 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onSkiNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onSkiNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  if (*a2 == 1)
  {
    sub_100D3600C(a4 + 6648, *a3);
  }

  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068CC48(uint64_t a1, _DWORD *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onWatchOrientationSettingsNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onWatchOrientationSettingsNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100694D98(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068CE14(uint64_t a1, int *a2, unsigned __int8 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onDaemonStatus", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onDaemonStatus, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100694F40(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068CFE0(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onCatherineNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onCatherineNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006953BC(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068D1AC(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onFitnessTrackingNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onFitnessTrackingNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006954F4(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068D378(uint64_t a1, int *a2, char *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onMotionStateObserverNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onMotionStateObserverNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10069596C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068D544(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v3 = a3;
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "clearing override";
    if ((v3 >> 8))
    {
      v7 = "overriding";
    }

    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v10 = 136315394;
    v11 = v7;
    v12 = 2080;
    v13 = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Workout setting, %s for %s setting", &v10, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019013E0();
  }

  v9 = *(a2 + 27);
  if (v9 != BYTE1(v3) || !*(a2 + 27))
  {
    if (v9 == BYTE1(v3))
    {
      return;
    }

    goto LABEL_17;
  }

  if (*(a2 + 26) != v3)
  {
LABEL_17:
    *(a2 + 13) = v3;
    sub_100690180(a1);
  }
}

uint64_t sub_10068D69C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000206B4(a1, a2);
  v4 = (*(*v3 + 936))(v3);
  v11 = 0;
  v6 = sub_1000206B4(v4, v5);
  v7 = sub_10005BBE4(v6, "kMostRecentWorkoutEventWorkoutType", &v11 + 1);
  if (v7)
  {
    *(a1 + 9576) = SHIDWORD(v11);
  }

  v9 = sub_1000206B4(v7, v8);
  result = sub_10005BBE4(v9, "kMostRecentWorkoutEventLocationType", &v11);
  if (result)
  {
    *(a1 + 9584) = v11;
  }

  return result;
}

void sub_10068D740(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onDataProtectionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onDataProtectionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  if (!*a2)
  {
    sub_100DA5D14(a4 + 8400, (*a3 == 1));
  }

  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068D91C(uint64_t *a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onDeviceMotionData", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onDeviceMotionData, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_1006932AC(a2, a1);
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068DAE0(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onBacklightStateData", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onBacklightStateData, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  if (*a2 == 1)
  {
    v9 = *(a4 + 8392);
    if (v9)
    {
      *(v9 + 240) = *(a3 + 56);
    }
  }

  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068DCB0(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onSPUStairsEscalationEvent", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onSPUStairsEscalationEvent, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_100694820(a2, a1);
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id **sub_10068DE74(id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100745C60(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_10068DEC4(uint64_t a1)
{
  *a1 = off_1024696D0;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10068DF48(uint64_t a1)
{
  *a1 = off_102468750;
  *(a1 + 112) = off_102468890;
  *(a1 + 120) = &off_1024688D0;
  [*(a1 + 320) invalidate];

  *(a1 + 320) = 0;
  *(a1 + 664) = 0;
  [*(a1 + 10104) stopGeoFence];

  *(a1 + 10104) = 0;
  *(a1 + 680) = 0;
  [*(a1 + 10488) unregisterForWeatherUpdates:*(a1 + 32)];

  *(a1 + 10488) = 0;
  [*(a1 + 10496) unregisterForUpdates:*(a1 + 32)];

  *(a1 + 10496) = 0;
  if (sub_100008074())
  {
    [*(*(a1 + 10504) + 16) unregister:*(*(a1 + 10504) + 8) forNotification:1];
  }

  [*(a1 + 10512) stopMonitoringVisitsForClient:*(a1 + 32)];

  *(a1 + 10512) = 0;
  *(a1 + 10168) = 0;
  v4 = sub_1001C9C28(v2, v3);
  sub_10000EC00(__p, "CLMotionStateMediator");
  sub_1002572F8(v4, __p);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(a1 + 10480);
  *(a1 + 10480) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 10208);
  if (v6)
  {
    *(a1 + 10208) = 0;
    (*(*v6 + 8))(v6);
  }

  sub_10068E5C4(a1);
  (*(*a1 + 16))(a1);
  v7 = *(a1 + 10504);
  *(a1 + 10504) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 10480);
  *(a1 + 10480) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  sub_100B55830(a1 + 10288);
  v9 = *(a1 + 10272);
  *(a1 + 10272) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 10256);
  *(a1 + 10256) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a1 + 10248);
  *(a1 + 10248) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a1 + 10240);
  *(a1 + 10240) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(a1 + 10232);
  *(a1 + 10232) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(a1 + 10224);
  *(a1 + 10224) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(a1 + 10216);
  *(a1 + 10216) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(a1 + 10208);
  *(a1 + 10208) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(a1 + 10200);
  *(a1 + 10200) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(a1 + 10192);
  *(a1 + 10192) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(a1 + 10184);
  *(a1 + 10184) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(a1 + 10176);
  *(a1 + 10176) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  sub_1006926C0((a1 + 10160), 0);
  v21 = *(a1 + 10152);
  *(a1 + 10152) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  sub_100666704((a1 + 8872));
  if (*(a1 + 8871) < 0)
  {
    operator delete(*(a1 + 8848));
  }

  sub_100106180((a1 + 8784));
  if (*(a1 + 8783) < 0)
  {
    operator delete(*(a1 + 8760));
  }

  sub_100693260((a1 + 8736), 0);
  sub_100DA58A4(a1 + 8400);
  v22 = *(a1 + 8392);
  *(a1 + 8392) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  sub_10068DE74((a1 + 8384));
  sub_10026F190(a1 + 8328);
  sub_10026F190(a1 + 8272);
  v23 = *(a1 + 8264);
  *(a1 + 8264) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  sub_10068FBA8((a1 + 8256), 0);
  sub_100697D94((a1 + 6648));
  v24 = *(a1 + 6640);
  if (v24)
  {
    sub_100008080(v24);
  }

  sub_1006A28D0((a1 + 4136));
  sub_100698174((a1 + 704));
  v25 = *(a1 + 672);
  *(a1 + 672) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  if (*(a1 + 583) < 0)
  {
    operator delete(*(a1 + 560));
  }

  if (*(a1 + 551) < 0)
  {
    operator delete(*(a1 + 528));
  }

  if (*(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  sub_1001FB750((a1 + 280));
  return sub_10068DEC4(a1);
}

void sub_10068E5C4(uint64_t a1)
{
  v2 = *(a1 + 8928);
  if (v2)
  {
    [v2 unregisterForData:*(a1 + 32)];

    *(a1 + 8928) = 0;
  }

  v3 = *(a1 + 8936);
  if (v3)
  {
    [v3 unregisterForData:*(a1 + 32)];

    *(a1 + 8936) = 0;
  }
}

void sub_10068E630(uint64_t a1)
{
  sub_10068DF48(a1);

  operator delete();
}

void sub_10068E668(uint64_t a1)
{
  sub_10068DF48(a1 - 112);

  operator delete();
}

void sub_10068E6A4(uint64_t a1)
{
  sub_10068DF48(a1 - 120);

  operator delete();
}

void sub_10068E6E0(uint64_t a1)
{
  (*(*a1 + 216))(a1);
  v3 = sub_100023ED4(0, v2);
  sub_10095D9F8(v3, 0, *(a1 + 600));
  v5 = sub_100023ED4(0, v4);
  sub_10095D9F8(v5, 9, *(a1 + 616));
  v8 = sub_10001A3E8(v6, v7);
  if ((sub_100023B30(v8, v9) & 0x2000000000) != 0)
  {
    v11 = sub_100023ED4(0, v10);
    sub_10095D9F8(v11, 20, *(a1 + 624));
  }

  v12 = sub_100023ED4(0, v10);
  sub_10095D9F8(v12, 33, *(a1 + 640));
  [*(a1 + 648) unregisterClient:*(a1 + 656) forNotification:3];

  [*(a1 + 656) setValid:0];
  if (sub_100023ED4(0, v13))
  {
    v15 = sub_100023ED4(0, v14);
    sub_10095D9F8(v15, 47, *(a1 + 10152));
  }

  *(a1 + 108) = 1;
}

uint64_t sub_10068E850(uint64_t a1, _DWORD *a2)
{
  if (*a2 <= 5u)
  {
    v2 = (*(**(a1 + 6680) + 40))(*(a1 + 6680));
    sub_10069B530(v2);
  }

  return 1;
}

uint64_t sub_10068E8A4(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 2)
  {
    v8 = v2;
    v9 = v3;
    v7 = 2;
    if (!sub_10000608C(a1, &v7, 1))
    {
      v6 = 2;
      (*(*a1 + 120))(a1, &v6);
    }
  }

  return 1;
}

void sub_10068E928(uint64_t a1, __int128 *a2)
{
  v4 = a1 + 0x2000;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(ALActivityLog);
  [(ALActivityLog *)v6 setTimestamp:*(a2 + 3)];
  [(ALActivityLog *)v6 setWorkoutEvent:objc_alloc_init(ALCMWorkoutEvent)];
  [(ALCMWorkoutEvent *)[(ALActivityLog *)v6 workoutEvent] setWorkoutEvent:*(a2 + 4)];
  [(ALCMWorkoutEvent *)[(ALActivityLog *)v6 workoutEvent] setWorkoutType:[CMWorkout CLMotionActivityTypeFromCMWorkoutType:*(a2 + 12)]];
  [(ALCMWorkoutEvent *)[(ALActivityLog *)v6 workoutEvent] setLocationType:*(a2 + 26)];
  [(ALCMWorkoutEvent *)[(ALActivityLog *)v6 workoutEvent] setStartTime:*a2];
  if (*(a2 + 2) == 1)
  {
    [(ALCMWorkoutEvent *)[(ALActivityLog *)v6 workoutEvent] setEndTime:*(a2 + 1)];
  }

  -[ALCMWorkoutEvent setSessionId:](-[ALActivityLog workoutEvent](v6, "workoutEvent"), "setSessionId:", [[NSData alloc] initWithBytes:a2 + 4 length:16]);
  [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
  objc_autoreleasePoolPop(v5);
  if (*(a2 + 2) == 1)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v9 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a2 + 1);
      *buf = 134217984;
      *&buf[4] = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Motion State Mediator is sending a stop event at %f", buf, 0xCu);
    }

    v11 = sub_10000A100(121, 2);
    if (v11)
    {
      sub_10190160C();
    }

    *(v4 + 769) = *(v4 + 752);
    *(v4 + 768) = *(v4 + 753);
    if (*(a1 + 8984))
    {
      v13 = *(a2 + 3) - *(a1 + 9040);
    }

    else
    {
      v13 = 0.0;
    }

    v14 = llround(*(v4 + 1508) * 10.0);
    *(a1 + 8976) = v13;
    v15 = llround(*(v4 + 1516) * 10.0);
    v16 = sub_1000DA93C(v11, v12);
    v17 = *(v4 + 784);
    v68[0] = *(v4 + 768);
    v68[1] = v17;
    v69 = *(v4 + 800);
    v18 = *(a1 + 9224);
    v80 = *(a1 + 9208);
    v81 = v18;
    v82 = *(a1 + 9240);
    v83 = *(a1 + 9256);
    v19 = *(a1 + 9160);
    v76 = *(a1 + 9144);
    v77 = v19;
    v20 = *(a1 + 9192);
    v78 = *(a1 + 9176);
    v79 = v20;
    v21 = *(a1 + 9096);
    v72 = *(a1 + 9080);
    v73 = v21;
    v22 = *(a1 + 9128);
    v74 = *(a1 + 9112);
    v75 = v22;
    v23 = *(a1 + 9064);
    *buf = *(a1 + 9048);
    v71 = v23;
    v24 = *(a1 + 9440);
    v90[10] = *(a1 + 9424);
    v90[11] = v24;
    v90[12] = *(a1 + 9456);
    v91 = *(a1 + 9472);
    v25 = *(a1 + 9376);
    v90[6] = *(a1 + 9360);
    v90[7] = v25;
    v26 = *(a1 + 9408);
    v90[8] = *(a1 + 9392);
    v90[9] = v26;
    v27 = *(a1 + 9312);
    v90[2] = *(a1 + 9296);
    v90[3] = v27;
    v28 = *(a1 + 9344);
    v90[4] = *(a1 + 9328);
    v90[5] = v28;
    v29 = *(a1 + 9280);
    v90[0] = *(a1 + 9264);
    v90[1] = v29;
    sub_101242D60(v16, v68, buf, v90);
    v32 = sub_1000DA93C(v30, v31);
    sub_101242F6C(v32, v14, v15);
    *(v4 + 768) = 257;
    *(a1 + 8962) = 0u;
    *(a1 + 8978) = 0u;
    *(a1 + 8994) = 0;
    *(a1 + 9696) = 0xFFFF;
    *(v4 + 1508) = 0u;
    *(v4 + 1524) = xmmword_101C75BF0;
    __asm { FMOV            V1.2D, #-1.0 }

    *(v4 + 1540) = _Q1;
    *(v4 + 1556) = _Q1;
    *(v4 + 1572) = _Q1;
    *(a1 + 9780) = 0;
    *(a1 + 9784) = 0xBFF0000000000000;
    *(a1 + 9792) = 0u;
    *(a1 + 9808) = 0;
    *(v4 + 1620) = 0xBFF0000000000000;
    *(a1 + 9820) = 0x7FFFFFFF;
    *(a1 + 9824) = 0u;
    *(a1 + 9848) = 0;
    *(a1 + 9840) = 0;
    v38 = a2[11];
    v80 = a2[10];
    v81 = v38;
    v82 = a2[12];
    v83 = *(a2 + 26);
    v39 = a2[7];
    v76 = a2[6];
    v77 = v39;
    v40 = a2[9];
    v78 = a2[8];
    v79 = v40;
    v41 = a2[3];
    v72 = a2[2];
    v73 = v41;
    v42 = a2[5];
    v74 = a2[4];
    v75 = v42;
    v43 = a2[1];
    *buf = *a2;
    v71 = v43;
    v7 = sub_100DA5BC0((a1 + 8400), buf);
  }

  v44 = sub_1000DA93C(v7, v8);
  v45 = a2[11];
  v80 = a2[10];
  v81 = v45;
  v82 = a2[12];
  v83 = *(a2 + 26);
  v46 = a2[7];
  v76 = a2[6];
  v77 = v46;
  v47 = a2[9];
  v78 = a2[8];
  v79 = v47;
  v48 = a2[3];
  v72 = a2[2];
  v73 = v48;
  v49 = a2[5];
  v74 = a2[4];
  v75 = v49;
  v50 = a2[1];
  *buf = *a2;
  v71 = v50;
  sub_101242594(v44, buf);
  v53 = sub_1000A23E0(v51, v52);
  sub_100E02850(v53, a2, a1 + 8744, *(v4 + 728));
  v54 = *(a1 + 8392);
  if (v54)
  {
    sub_100C1C1D8(v54, a2);
  }

  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v55 = a2[11];
  v80 = a2[10];
  v81 = v55;
  v82 = a2[12];
  v56 = *(a2 + 26);
  v89 = 0;
  v83 = v56;
  v57 = a2[7];
  v76 = a2[6];
  v77 = v57;
  v58 = a2[9];
  v78 = a2[8];
  v79 = v58;
  v59 = a2[3];
  v72 = a2[2];
  v73 = v59;
  v60 = a2[5];
  v74 = a2[4];
  v75 = v60;
  v61 = a2[1];
  *buf = *a2;
  v71 = v61;
  LODWORD(v90[0]) = 2;
  (*(*a1 + 152))(a1, v90, buf, 1, 0xFFFFFFFFLL, 0);
  v63 = *(a2 + 2);
  if (v63 == 3)
  {
    v64 = sub_100023ED4(0, v62);
    v65 = 3;
    goto LABEL_20;
  }

  if (v63 == 2)
  {
    v64 = sub_100023ED4(0, v62);
    v65 = 2;
LABEL_20:
    LOBYTE(v90[0]) = v65;
    (*(*(v64 + 96) + 48))();
    v63 = *(a2 + 2);
  }

  if (v63 == 6 || v63 == 1)
  {
    v66 = sub_100023ED4(0, v62);
    (*(*(v66 + 96) + 16))();
  }

  if (sub_100EB1480(a2) == 1)
  {
    *(a1 + 8924) = 1;
    sub_10068EFA8(a1);
  }

  else if (sub_100EB1480(a2) == 2)
  {
    *(a1 + 8924) = 2;
    sub_10068E5C4(a1);
  }

  if (&_AudioServicesPlaySystemSound && *(a1 + 462) == 1)
  {
    if (v71 == 2)
    {
      v67 = &stru_102468920;
      goto LABEL_34;
    }

    if (v71 == 3)
    {
      v67 = &stru_102468940;
LABEL_34:
      dispatch_async(&_dispatch_main_q, v67);
    }
  }

  sub_10068F0F8(a1, a2);
}

id sub_10068EFA8(uint64_t a1)
{
  v7 = 0;
  sub_100126E84(v8, "EnableBatchedSensorsDuringWorkouts", &v7, 0);
  result = +[CLBatchedAccelerometerService isSupported];
  if (result)
  {
    result = +[CLBatchedDeviceMotionService isSupported];
    if (result)
    {
      if (v8[1] == 1)
      {
        v3 = *(a1 + 8928);
        if (!v3)
        {
          v4 = [objc_msgSend(*(a1 + 32) "vendor")];
          *(a1 + 8928) = v4;
          [v4 registerDelegate:*(a1 + 32) inSilo:{objc_msgSend(*(a1 + 32), "silo")}];
          v3 = *(a1 + 8928);
        }

        [v3 registerForData:*(a1 + 32)];
        v5 = *(a1 + 8936);
        if (!v5)
        {
          v6 = [objc_msgSend(*(a1 + 32) "vendor")];
          *(a1 + 8936) = v6;
          [v6 registerDelegate:*(a1 + 32) inSilo:{objc_msgSend(*(a1 + 32), "silo")}];
          v5 = *(a1 + 8936);
        }

        return [v5 registerForData:*(a1 + 32)];
      }
    }
  }

  return result;
}

void sub_10068F0F8(uint64_t a1, __int128 *a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 2);
    v6 = *(a1 + 9864);
    *buf = 67109376;
    *&buf[4] = v5;
    *&buf[8] = 1024;
    *&buf[10] = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "[snapshot] evaluating from workout event %d from state %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101901700();
  }

  v7 = sub_100EB18C4(a2);
  v8 = *(a1 + 10072);
  v43 = *(a1 + 10056);
  v44 = v8;
  v45 = *(a1 + 10088);
  v9 = *(a1 + 10008);
  v39 = *(a1 + 9992);
  v40 = v9;
  v10 = *(a1 + 10040);
  v41 = *(a1 + 10024);
  v42 = v10;
  v11 = *(a1 + 9944);
  v35 = *(a1 + 9928);
  v36 = v11;
  v12 = *(a1 + 9976);
  v37 = *(a1 + 9960);
  v38 = v12;
  v13 = *(a1 + 9880);
  *buf = *(a1 + 9864);
  v32 = v13;
  v14 = *(a1 + 9912);
  v33 = *(a1 + 9896);
  v34 = v14;
  if (v7 != 7 && v7 != *buf)
  {
    v15 = *(a2 + 3);
    v27 = a2[10];
    v28 = a2[11];
    v29 = a2[12];
    v30 = *(a2 + 26);
    v23 = a2[6];
    v24 = a2[7];
    v25 = a2[8];
    v26 = a2[9];
    v19 = a2[2];
    v20 = a2[3];
    v21 = a2[4];
    v22 = a2[5];
    v17 = *a2;
    v18 = a2[1];
    v16 = (a1 + 9872);
    *(a1 + 9864) = v7;
    if (v7)
    {
      *(a1 + 10032) = v27;
      *(a1 + 10048) = v28;
      *(a1 + 10064) = v29;
      *(a1 + 10080) = v30;
      *(a1 + 9968) = v23;
      *(a1 + 9984) = v24;
      *(a1 + 10000) = v25;
      *(a1 + 10016) = v26;
      *(a1 + 9904) = v19;
      *(a1 + 9920) = v20;
      *(a1 + 9936) = v21;
      *(a1 + 9952) = v22;
      *v16 = v17;
      *(a1 + 9888) = v18;
      *(a1 + 10088) = v15;
      *(a1 + 10096) = 1;
    }

    else
    {
      *(a1 + 10080) = 0;
      *(a1 + 10048) = 0u;
      *(a1 + 10064) = 0u;
      *(a1 + 10016) = 0u;
      *(a1 + 10032) = 0u;
      *(a1 + 9984) = 0u;
      *(a1 + 10000) = 0u;
      *(a1 + 9952) = 0u;
      *(a1 + 9968) = 0u;
      *(a1 + 9920) = 0u;
      *(a1 + 9936) = 0u;
      *(a1 + 9888) = 0u;
      *(a1 + 9904) = 0u;
      *v16 = 0u;
      if (*(a1 + 10096) == 1)
      {
        *(a1 + 10096) = 0;
      }
    }

    sub_10068F4BC(a1, buf, (a1 + 9864));
  }
}

uint64_t sub_10068F340(uint64_t a1, uint64_t a2)
{
  result = sub_1000A154C(a2);
  if (result)
  {
    if (result == 2)
    {
      LODWORD(__src[0]) = 0;
      sub_1000C1B4C(a1 + 136, &__src[1]);
      memset(&__src[18], 0, 160);
    }

    else
    {
      if (result != 1)
      {
LABEL_7:
        v10 = 1;
        memcpy(__src, __dst, sizeof(__src));
        return (*(*a1 + 152))(a1, &v10, __src, 1, 0xFFFFFFFFLL, 0);
      }

      LODWORD(__src[0]) = 1;
      sub_1000C1B4C(a1 + 136, &__src[1]);
      v5 = *(a2 + 192);
      v6 = *(a2 + 160);
      *&__src[33] = *(a2 + 176);
      *&__src[35] = v5;
      *&__src[31] = v6;
      v7 = *(a2 + 112);
      *&__src[23] = *(a2 + 96);
      *&__src[25] = v7;
      v8 = *(a2 + 144);
      *&__src[27] = *(a2 + 128);
      *&__src[29] = v8;
      v9 = *(a2 + 80);
      *&__src[19] = *(a2 + 64);
      __src[18] = *(a2 + 96);
      __src[37] = *(a2 + 208);
      *&__src[21] = v9;
    }

    memcpy(__dst, __src, sizeof(__dst));
    goto LABEL_7;
  }

  return result;
}

void sub_10068F4BC(uint64_t a1, double *a2, double *a3)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a2;
    v8 = *(a2 + 13);
    v9 = a2[28];
    if (!*(a2 + 232))
    {
      v9 = 1.79769313e308;
    }

    v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:v9];
    v11 = *a3;
    v12 = *(a3 + 13);
    v13 = a3[28];
    if (!*(a3 + 232))
    {
      v13 = 1.79769313e308;
    }

    v23 = 67110402;
    v24 = v7;
    v25 = 1024;
    v26 = v8;
    v27 = 2112;
    v28 = v10;
    v29 = 1024;
    v30 = v11;
    v31 = 1024;
    v32 = v12;
    v33 = 2112;
    v34 = [NSDate dateWithTimeIntervalSinceReferenceDate:v13];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "[snapshot] workout snapshot transitioned from [state %d, workout %d at %@] to [state %d, workout %d at %@]", &v23, 0x2Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101901804(a2, a3);
  }

  v14 = *a2;
  v15 = *a3;
  if (*a2 == 1 && v15 == 5 || v14 == 5 && v15 == 1 || v14 == 6 && v15 == 5 || (v14 == 6 ? (v19 = v15 == 1) : (v19 = 0), !v19 ? (v20 = 0) : (v20 = 1), v14 != 1 ? (v21 = v14 == 5) : (v21 = 1), v21 ? (v22 = v15 == 6) : (v22 = 0), v22 || v20))
  {
    if (qword_1025D43F0 != -1)
    {
      sub_1018FFD38();
    }

    v16 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_INFO))
    {
      v17 = *a2;
      v18 = *a3;
      v23 = 67109376;
      v24 = v17;
      v25 = 1024;
      v26 = v18;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "[snapshot] sending snapshot notification from %d to %d", &v23, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019019B4();
    }

    [*(a1 + 10168) broadcastEvent:{xpc_dictionary_create(0, 0, 0)}];
  }
}

void sub_10068F75C(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 9864);
    LODWORD(v15[0]) = 67109120;
    DWORD1(v15[0]) = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "[snapshot] evaluating after dismiss from state %d", v15, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101901AB8(a1);
  }

  v4 = sub_100EB1940(*(a1 + 9864));
  v5 = *(a1 + 10072);
  v15[12] = *(a1 + 10056);
  v15[13] = v5;
  v15[14] = *(a1 + 10088);
  v6 = *(a1 + 10008);
  v15[8] = *(a1 + 9992);
  v15[9] = v6;
  v7 = *(a1 + 10040);
  v15[10] = *(a1 + 10024);
  v15[11] = v7;
  v8 = *(a1 + 9944);
  v15[4] = *(a1 + 9928);
  v15[5] = v8;
  v9 = *(a1 + 9976);
  v15[6] = *(a1 + 9960);
  v15[7] = v9;
  v10 = *(a1 + 9880);
  v15[0] = *(a1 + 9864);
  v15[1] = v10;
  v11 = *(a1 + 9912);
  v15[2] = *(a1 + 9896);
  v15[3] = v11;
  if (v4 != *&v15[0])
  {
    v12 = v4;
    Current = CFAbsoluteTimeGetCurrent();
    *(a1 + 9864) = v12;
    if (v12)
    {
      *(a1 + 10088) = Current;
      v14 = 1;
    }

    else
    {
      *(a1 + 10080) = 0;
      *(a1 + 10064) = 0u;
      *(a1 + 10048) = 0u;
      *(a1 + 10032) = 0u;
      *(a1 + 10016) = 0u;
      *(a1 + 10000) = 0u;
      *(a1 + 9984) = 0u;
      *(a1 + 9968) = 0u;
      *(a1 + 9952) = 0u;
      *(a1 + 9936) = 0u;
      *(a1 + 9920) = 0u;
      *(a1 + 9904) = 0u;
      *(a1 + 9888) = 0u;
      *(a1 + 9872) = 0u;
      if ((*(a1 + 10096) & 1) == 0)
      {
LABEL_13:
        sub_10068F4BC(a1, v15, (a1 + 9864));
        return;
      }

      v14 = 0;
    }

    *(a1 + 10096) = v14;
    goto LABEL_13;
  }
}

void sub_10068F914(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (sub_1010AC550(a1, a2))
  {
    if (v2 & 0x100) != 0 || (v2)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_10023AD98();
      }

      v8 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Enabled device motion.", v15, 2u);
      }

      v9 = sub_10000A100(121, 2);
      if (v9)
      {
        sub_101901C90();
      }

      v11 = sub_1010AC550(v9, v10);
      sub_1010ACC18(v11, *(a1 + 672), 0.01);
    }

    else
    {
      if (qword_1025D43F0 != -1)
      {
        sub_10023AD98();
      }

      v4 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Disabled device motion.", v15, 2u);
      }

      v5 = sub_10000A100(121, 2);
      if (v5)
      {
        sub_101901BAC();
      }

      v7 = sub_1010AC550(v5, v6);
      sub_1010ACE04(v7, *(a1 + 672));
    }

    v12 = *(a1 + 8256);
    if (v2)
    {
      if (!v12)
      {
        if (qword_1025D43F0 != -1)
        {
          sub_1018FFD38();
        }

        v13 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "Starting turn detector", v15, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101901E58();
        }

        operator new();
      }
    }

    else if (v12)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_1018FFD38();
      }

      v14 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Stopping turn detector", v15, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101901D74();
      }

      sub_10068FBA8((a1 + 8256), 0);
    }
  }
}

uint64_t *sub_10068FBA8(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    for (i = 0; i != -176; i -= 88)
    {
      *(v2 + i + 1344) = off_10246A3D0;
      sub_1003C93BC(v2 + i + 1408, *(v2 + i + 1416));
      sub_10045E1B0((v2 + i + 1360));
    }

    for (j = 0; j != -176; j -= 88)
    {
      *(v2 + j + 1008) = off_10246A3D0;
      sub_1003C93BC(v2 + j + 1072, *(v2 + j + 1080));
      sub_10045E1B0((v2 + j + 1024));
    }

    for (k = 0; k != -264; k -= 88)
    {
      *(v2 + k + 552) = off_10246A3D0;
      sub_1003C93BC(v2 + k + 616, *(v2 + k + 624));
      sub_10045E1B0((v2 + k + 568));
    }

    operator delete();
  }

  return result;
}

void sub_10068FCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *a3;
  if (*(a3 + 39) < 0)
  {
    sub_100007244(&v29, *(a3 + 16), *(a3 + 24));
  }

  else
  {
    v29 = *(a3 + 16);
    v30 = *(a3 + 32);
  }

  sub_1006976A0(v31, (a3 + 40));
  obj = *(a1 + 680);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
  if (v6)
  {
    v7 = MEMORY[0];
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(8 * i);
        v10 = *(a2 + 176);
        v26[10] = *(a2 + 160);
        v26[11] = v10;
        v26[12] = *(a2 + 192);
        v27 = *(a2 + 208);
        v11 = *(a2 + 112);
        v26[6] = *(a2 + 96);
        v26[7] = v11;
        v12 = *(a2 + 144);
        v26[8] = *(a2 + 128);
        v26[9] = v12;
        v13 = *(a2 + 48);
        v26[2] = *(a2 + 32);
        v26[3] = v13;
        v14 = *(a2 + 80);
        v26[4] = *(a2 + 64);
        v26[5] = v14;
        v15 = *(a2 + 16);
        v26[0] = *a2;
        v26[1] = v15;
        v22 = v28;
        if (SHIBYTE(v30) < 0)
        {
          sub_100007244(&v23, v29, *(&v29 + 1));
        }

        else
        {
          v23 = v29;
          v24 = v30;
        }

        sub_1006976A0(v25, v31);
        v16 = sub_1006897D0(&v22);
        v18 = *(a1 + 8744);
        if (*(a1 + 8783) < 0)
        {
          sub_100007244(&__p, *(a1 + 8760), *(a1 + 8768));
        }

        else
        {
          __p = *(a1 + 8760);
          v20 = *(a1 + 8776);
        }

        sub_10069B5FC(v21, (a1 + 8784));
        [v9 onWorkoutSessionUpdate:v26 withOverview:v16 andPriors:sub_100690040(&v18)];
        sub_100106180(v21);
        if (SHIBYTE(v20) < 0)
        {
          operator delete(__p);
        }

        sub_100666704(v25);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23);
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
    }

    while (v6);
  }

  *(a1 + 8832) = *a3;
  std::string::operator=((a1 + 8848), (a3 + 16));
  sub_10069BC28((a1 + 8872), (a3 + 40));
  sub_100666704(v31);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }
}

id sub_100690040(__int128 *a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_1006A3824;
  v4[3] = &unk_10246A400;
  v5 = *a1;
  if (*(a1 + 39) < 0)
  {
    sub_100007244(__p, *(a1 + 2), *(a1 + 3));
  }

  else
  {
    *__p = a1[1];
    v7 = *(a1 + 4);
  }

  sub_10069B5FC(v8, a1 + 5);
  v2 = [v4 copy];
  sub_100106180(v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

uint64_t sub_100690180(uint64_t a1)
{
  v2 = a1 + 0x2000;
  v3 = *(a1 + 8944) == 1 && (*(a1 + 10144) & 1) == 0 && *(a1 + 376) == 0;
  *(a1 + 488) = v3;
  *(a1 + 552) = 1;
  if (*(a1 + 8946) != 1 || (*(a1 + 10144) & 1) != 0 || *(a1 + 376))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 8950);
  }

  *(a1 + 520) = v4 & 1;
  v5 = *(a1 + 8948);
  *(a1 + 584) = v5;
  if (*(a1 + 491) == 1)
  {
    v6 = *(a1 + 490);
  }

  else
  {
    v6 = (*(a1 + 489) ^ 1) & v3;
  }

  if (*(a1 + 523) == 1)
  {
    v7 = *(a1 + 522);
  }

  else
  {
    v7 = (*(a1 + 521) ^ 1) & v4;
  }

  if (*(a1 + 555) == 1)
  {
    v8 = *(a1 + 554);
  }

  else
  {
    v8 = *(a1 + 553) ^ 1;
  }

  if (*(a1 + 587) == 1)
  {
    v9 = *(a1 + 586);
  }

  else
  {
    v9 = (*(a1 + 585) ^ 1) & v5;
  }

  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v10 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(v2 + 758);
    v12 = *(a1 + 376) == 0;
    *buf = 67241472;
    v30 = v6 & 1;
    v31 = 1026;
    v32 = v7 & 1;
    v33 = 1026;
    v34 = v8 & 1;
    v35 = 1026;
    v36 = v9 & 1;
    v37 = 1026;
    v38 = v12;
    v39 = 1024;
    v40 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "Workout settings, start, %{public}d, resume, %{public}d, end, %{public}d, autopause, %{public}d, valid user info, %{public}d,  fitness tracking allowed, %d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D43F0 != -1)
    {
      sub_1018FFD38();
    }

    v14 = *(v2 + 758);
    v15 = *(a1 + 376) == 0;
    v18[0] = 67241472;
    v18[1] = v6 & 1;
    v19 = 1026;
    v20 = v7 & 1;
    v21 = 1026;
    v22 = v8 & 1;
    v23 = 1026;
    v24 = v9 & 1;
    v25 = 1026;
    v26 = v15;
    v27 = 1024;
    v28 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 0, "Workout settings, start, %{public}d, resume, %{public}d, end, %{public}d, autopause, %{public}d, valid user info, %{public}d,  fitness tracking allowed, %d", v18, 38);
    v17 = v16;
    sub_100152C7C("Generic", 1, 0, 2, "void CLMotionStateMediator::updateWorkoutReminderSettings()", "%s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  sub_100D30170((a1 + 6648), (v6 & 1), (v8 & 1));
  sub_100D367D8(a1 + 6648, v9 & 1);
  result = *(a1 + 10160);
  if (result)
  {
    return sub_100FD75FC(result, (v7 & 1));
  }

  return result;
}

void sub_1006904D8(uint64_t a1, int a2)
{
  v3 = *(a1 + 328);
  if (a2)
  {
    if (v3)
    {
      if (qword_1025D44D0 != -1)
      {
        sub_101901F3C();
      }

      v4 = qword_1025D44D8;
      if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Wifi timer already existed, reinitializing.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190202C();
      }

      dispatch_release(*(a1 + 328));
      *(a1 + 328) = 0;
    }

    if (qword_1025D44D0 != -1)
    {
      sub_101901508();
    }

    v5 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Starting Wifi Scans.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101902108();
    }

    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, [*(a1 + 40) queue]);
    *(a1 + 328) = v6;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100690718;
    handler[3] = &unk_102449A78;
    handler[4] = a1;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_source_set_timer(*(a1 + 328), 0, 0x1DCD65000uLL, 0x3B9ACA00uLL);
    dispatch_resume(*(a1 + 328));
  }

  else if (v3)
  {
    if (qword_1025D44D0 != -1)
    {
      sub_101901F3C();
    }

    v7 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "Stopping Wifi Scans.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101901F50();
    }

    dispatch_release(*(a1 + 328));
    *(a1 + 328) = 0;
  }
}

id sub_100690718(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D44D0 != -1)
  {
    sub_101901F3C();
  }

  v2 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Triggering Wifi Scan.", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019021E4();
  }

  return [*(*(v1 + 10232) + 16) syncgetStartScanWithType:8 lowPriority:0 passive:0 requester:"motionworkout"];
}

void sub_1006907D8(uint64_t a1)
{
  v1 = *(a1 + 10208);
  if (v1)
  {
    if (*(a1 + 696))
    {
      v3 = *(a1 + 696) - 1;
      *(a1 + 696) = v3;
      if (!v3)
      {
        [*(v1 + 16) unregister:*(v1 + 8) forNotification:9];
      }
    }

    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 696);
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "OneSecondHeartRateCounter %d", v7, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019022C0((a1 + 696));
    }
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v6 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "Attempting unregistering for 1Hz HR with uninitialized HR client", v7, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019023AC();
    }
  }
}

void sub_10069094C(uint64_t a1)
{
  v1 = *(a1 + 10208);
  if (v1)
  {
    [*(v1 + 16) register:*(v1 + 8) forNotification:9 registrationInfo:0];
    ++*(a1 + 696);
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v3 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 696);
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Registering for 1Hz HR. OneSecondHeartRateCounter %d", v6, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101902490((a1 + 696));
    }
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v5 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "Attempting registering for 1Hz HR with uninitialized HR client", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10190257C();
    }
  }
}

id sub_100690AB8(uint64_t a1)
{
  result = objc_alloc_init(BrightnessSystemClient);
  *(a1 + 688) = result;
  if (result)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100690B74;
    v3[3] = &unk_102468960;
    v3[4] = a1;
    [result registerNotificationBlock:v3 forProperties:&off_1025542E8];
    return [*(a1 + 688) setProperty:kCFBooleanTrue forKey:@"ActivateALS"];
  }

  return result;
}

id sub_100690B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [*(v4 + 32) silo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100690BF8;
  v7[3] = &unk_102449BC0;
  v7[4] = a3;
  v7[5] = v4;
  return [v5 async:v7];
}

uint64_t sub_100690BF8(uint64_t a1)
{
  v2 = *(a1 + 40);
  CFAbsoluteTimeGetCurrent();
  [*(a1 + 32) floatValue];
  [*(v2 + 32) silo];
  v3 = *(**(v2 + 8264) + 40);

  return v3();
}

void sub_100690C7C(uint64_t a1)
{
  v2 = *(a1 + 688);
  if (v2)
  {
    [v2 unregisterNotificationForKeys:&off_102554300];
    [*(a1 + 688) registerNotificationBlock:0];

    *(a1 + 688) = 0;
  }
}

id sub_100690CC8(uint64_t a1, uint64_t a2)
{
  if (qword_1025D44D0 != -1)
  {
    sub_101901F3C();
  }

  v4 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "IndoorOutdoor, starting indoorOutdoor", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101902660();
  }

  (*(**(a1 + 8264) + 56))(*(a1 + 8264), a2);
  return sub_100690AB8(a1);
}

void sub_100690DA8(uint64_t a1)
{
  if (qword_1025D44D0 != -1)
  {
    sub_101901F3C();
  }

  v2 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "IndoorOutdoor, stopping indoorOutdoor", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190273C();
  }

  (*(**(a1 + 8264) + 64))(*(a1 + 8264));
  sub_100690C7C(a1);
}

void sub_100690E78(uint64_t a1, uint64_t *a2, int a3)
{
  *(a1 + 8992) = (*(a2 + 6) << 30) + (*(a2 + 8) << 27);
  v5 = *a2;
  v6 = a2[1];
  v7 = *a2 - 1;
  if (v7 > 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_101C88520[v7];
  }

  v9 = a2[2];
  Current = CFAbsoluteTimeGetCurrent();
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  *v18 = Current;
  v18[1] = v8;
  v18[2] = v6;
  if (qword_1025D44D0 != -1)
  {
    sub_101901F3C();
  }

  v11 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
  {
    *buf = 134349568;
    *&buf[4] = v8;
    *&buf[12] = 2050;
    *&buf[14] = v6;
    *&buf[22] = 2050;
    v17 = v9;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "IndoorOutdoor,new location type,%{public}ld,confidence,%{public}ld,probability,%{public}f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44D0 != -1)
    {
      sub_101901508();
    }

    *v14 = 134349568;
    *&v14[4] = v8;
    *&v14[12] = 2050;
    *&v14[14] = v6;
    *&v14[22] = 2050;
    v15 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44D8, 1, "IndoorOutdoor,new location type,%{public}ld,confidence,%{public}ld,probability,%{public}f", v14, 32);
    v13 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMotionStateMediator::onIndoorOutdoorUpdate(const CLIndoorOutdoorProtocol::IndoorOutdoorEvent &, BOOL)", "%s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  *buf = 3;
  (*(*a1 + 152))(a1, buf, v18, 1, 0xFFFFFFFFLL, 0);
  if (*(a1 + 461) == 1)
  {
    (*(*a1 + 216))(a1);
  }

  else if (a3)
  {
    sub_100D3676C(a1 + 6648, v5);
  }

  *buf = *(a1 + 10112);
  *&buf[16] = *(a1 + 10128);
  *v14 = Current;
  *&v14[8] = v8;
  *&v14[16] = v6;
  sub_1006911AC(a1, buf, v14);
  *(a1 + 10112) = Current;
  *(a1 + 10120) = v8;
  *(a1 + 10128) = v6;
}

void sub_1006911AC(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = -[NSDateComponents hour]([+[NSCalendar currentCalendar](NSCalendar components:"components:fromDate:" fromDate:32, +[NSDate date](NSDate, "date")], "hour");
  if (v6 == a1[2535])
  {
    v7 = a1[2534];
  }

  else
  {
    v7 = 0;
    a1[2535] = v6;
    a1[2534] = 0;
  }

  if (v7 < a1[110])
  {
    a1[2534] = v7 + 1;
    sub_100691844(*(a2 + 8), &v45);
    sub_100691858(*(a2 + 16), v43);
    sub_10000EC00(&v41, [(NSString *)+[NSDateFormatter localizedStringFromDate:dateStyle:timeStyle:](NSDateFormatter UTF8String:[NSDate dateWithTimeIntervalSinceReferenceDate:?];
    sub_100691844(*(a3 + 8), v39);
    sub_100691858(*(a3 + 16), &v37);
    sub_10000EC00(v35, [(NSString *)+[NSDateFormatter localizedStringFromDate:dateStyle:timeStyle:](NSDateFormatter UTF8String:[NSDate dateWithTimeIntervalSinceReferenceDate:?];
    if (qword_1025D44D0 != -1)
    {
      sub_101901508();
    }

    v8 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEBUG))
    {
      v9 = &v45;
      if (v46 < 0)
      {
        v9 = v45;
      }

      v10 = v43;
      if (v44 < 0)
      {
        v10 = v43[0];
      }

      v11 = v39;
      if (v40 < 0)
      {
        v11 = v39[0];
      }

      v12 = &v37;
      if (v38 < 0)
      {
        v12 = v37;
      }

      *buf = 136315906;
      v56 = v9;
      v57 = 2080;
      v58 = v10;
      v59 = 2080;
      v60 = v11;
      v61 = 2080;
      v62 = v12;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "IndoorOutdoor, issuing notification old (%s, %s) new (%s, %s)", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101902818(buf);
      v13 = &v45;
      if (v46 < 0)
      {
        v13 = v45;
      }

      v14 = v43;
      if (v44 < 0)
      {
        v14 = v43[0];
      }

      v15 = v39;
      if (v40 < 0)
      {
        v15 = v39[0];
      }

      v16 = &v37;
      if (v38 < 0)
      {
        v16 = v37;
      }

      v47 = 136315906;
      v48 = v13;
      v49 = 2080;
      v50 = v14;
      v51 = 2080;
      v52 = v15;
      v53 = 2080;
      v54 = v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44D8, 2, "IndoorOutdoor, issuing notification old (%s, %s) new (%s, %s)", &v47, 42, block, v20);
      v18 = v17;
      sub_100152C7C("Generic", 1, 0, 2, "void CLMotionStateMediator::issueUserNotificationForIndoorOutdoorIfAllowed(CLMotionStateMediator_Type::IndoorOutdoorUpdate, CLMotionStateMediator_Type::IndoorOutdoorUpdate)", "%s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    block = _NSConcreteStackBlock;
    v20 = 3321888768;
    v21 = sub_10069186C;
    v22 = &unk_102468980;
    if (SHIBYTE(v42) < 0)
    {
      sub_100007244(&v23, v41, *(&v41 + 1));
    }

    else
    {
      v23 = v41;
      v24 = v42;
    }

    if (SHIBYTE(v46) < 0)
    {
      sub_100007244(&v25, v45, *(&v45 + 1));
    }

    else
    {
      v25 = v45;
      v26 = v46;
    }

    if (SHIBYTE(v44) < 0)
    {
      sub_100007244(&v27, v43[0], v43[1]);
    }

    else
    {
      v27 = *v43;
      v28 = v44;
    }

    if (SHIBYTE(v36) < 0)
    {
      sub_100007244(&v29, v35[0], v35[1]);
    }

    else
    {
      v29 = *v35;
      v30 = v36;
    }

    if (SHIBYTE(v40) < 0)
    {
      sub_100007244(&v31, v39[0], v39[1]);
    }

    else
    {
      v31 = *v39;
      v32 = v40;
    }

    if (SHIBYTE(v38) < 0)
    {
      sub_100007244(&__p, v37, *(&v37 + 1));
    }

    else
    {
      __p = v37;
      v34 = v38;
    }

    dispatch_async(&_dispatch_main_q, &block);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35[0]);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39[0]);
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(v41);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45);
    }
  }
}

void sub_10069171C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a65 < 0)
  {
    operator delete(a63);
  }

  _Unwind_Resume(a1);
}

void sub_10069186C(char *a1)
{
  v1 = a1 + 32;
  if (a1[55] < 0)
  {
    v1 = *v1;
  }

  v2 = a1 + 56;
  if (a1[79] < 0)
  {
    v2 = *v2;
  }

  v3 = a1 + 80;
  if (a1[103] < 0)
  {
    v3 = *v3;
  }

  v4 = a1 + 104;
  if (a1[127] < 0)
  {
    v4 = *v4;
  }

  v5 = a1 + 128;
  if (a1[151] < 0)
  {
    v5 = *v5;
  }

  v6 = a1 + 152;
  if (a1[175] < 0)
  {
    v6 = *v6;
  }

  v7 = CFStringCreateWithFormat(0, 0, @"Old indoor/outdoor state\n%s, %s, %s New\n%s, %s, %s", v1, v2, v3, v4, v5, v6);
  CFUserNotificationDisplayNotice(0.0, 0, 0, 0, 0, @"IndoorOutdoorState", v7, 0);

  CFRelease(v7);
}

_BYTE *sub_100691950(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 55) < 0)
  {
    result = sub_100007244(result + 32, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(result + 6) = *(a2 + 48);
    *(result + 2) = v4;
  }

  if (*(a2 + 79) < 0)
  {
    result = sub_100007244(v3 + 56, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(v3 + 9) = *(a2 + 72);
    *(v3 + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    result = sub_100007244(v3 + 80, *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v6 = *(a2 + 80);
    *(v3 + 12) = *(a2 + 96);
    *(v3 + 5) = v6;
  }

  if (*(a2 + 127) < 0)
  {
    result = sub_100007244(v3 + 104, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(v3 + 15) = *(a2 + 120);
    *(v3 + 104) = v7;
  }

  if (*(a2 + 151) < 0)
  {
    result = sub_100007244(v3 + 128, *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v8 = *(a2 + 128);
    *(v3 + 18) = *(a2 + 144);
    *(v3 + 8) = v8;
  }

  if (*(a2 + 175) < 0)
  {
    return sub_100007244(v3 + 152, *(a2 + 152), *(a2 + 160));
  }

  v9 = *(a2 + 152);
  *(v3 + 21) = *(a2 + 168);
  *(v3 + 152) = v9;
  return result;
}

void sub_100691A64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void sub_100691AE0(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void sub_100691B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Did Begin Workout Session", v11, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190285C();
  }

  sub_10068FCF0(a1, a2, a3);
  sub_10068E928(a1, a2);
  v7 = *(a2 + 176);
  v11[6] = *(a2 + 160);
  v11[7] = v7;
  v11[8] = *(a2 + 192);
  v12 = *(a2 + 208);
  v8 = *(a2 + 112);
  v11[2] = *(a2 + 96);
  v11[3] = v8;
  v9 = *(a2 + 144);
  v11[4] = *(a2 + 128);
  v11[5] = v9;
  v10 = *(a2 + 80);
  v11[0] = *(a2 + 64);
  v11[1] = v10;
  sub_100691CB0(a1, v11);
  sub_100691DCC(a1, a2 + 64);
}

id sub_100691CB0(uint64_t a1, uint64_t a2)
{
  sub_100D35C68(a1 + 6648, a2);
  v4 = sub_1012572FC(*(a2 + 32), *(a2 + 48));
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v5 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134349056;
    v8 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#gfc started workout, starting geofence with radius %{public}f", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101902938(v4);
  }

  result = sub_10001CF3C();
  if (result)
  {
    if (v4 != -1.0)
    {
      return [*(a1 + 10104) startGeoFenceWithRadius:v4];
    }
  }

  return result;
}

void sub_100691DCC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 10160))
  {
    sub_1006926C0((a1 + 10160), 0);
  }

  operator new();
}

void sub_100691F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Did End Workout Session", &v8, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101902A38();
  }

  sub_100692124(a1, *(a2 + 8));
  if (*(a2 + 16) == 15)
  {
    sub_1000C1B4C(a1 + 136, &v8);
    sub_1006921F4(a1, [CMWorkout CMWorkoutTypeFromCLMotionActivityType:v8], *(a2 + 8));
  }

  sub_10068FCF0(a1, a2, a3);
  sub_10068E928(a1, a2);
  v11 = 0;
  *__p = 0u;
  memset(v10, 0, sizeof(v10));
  v8 = 0u;
  v7 = (a1 + 8848);
  *(a1 + 8832) = 0u;
  if (*(a1 + 8871) < 0)
  {
    operator delete(*v7);
  }

  *v7 = *__p;
  *(a1 + 8864) = *&v10[0];
  BYTE7(v10[0]) = 0;
  LOBYTE(__p[0]) = 0;
  sub_10069C000((a1 + 8872), v10 + 8);
  sub_100666704(v10 + 1);
  if (SBYTE7(v10[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 10160))
  {
    sub_1006926C0((a1 + 10160), 0);
  }
}

uint64_t sub_100692124(uint64_t a1, double a2)
{
  result = sub_1000B9750((a1 + 136));
  if (result)
  {
    sub_100D35D84((a1 + 6648), a2);
    result = sub_10001CF3C();
    if (result)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_10023AD98();
      }

      v5 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
      {
        *v6 = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#gfc stopped workout, stopping geofence", v6, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101902B14();
      }

      return [*(a1 + 10104) stopGeoFence];
    }
  }

  return result;
}

void sub_1006921F4(uint64_t a1, _DWORD *a2, double a3)
{
  v6 = [*(a1 + 664) objectForKeyedSubscript:&off_10254EE28];
  [v6 unionSet:{objc_msgSend(*(a1 + 664), "objectForKeyedSubscript:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", a2))}];
  if (v6)
  {
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6);
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0];
      v10 = 0.0;
      v26 = 67109632;
      do
      {
        v11 = 0;
        do
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(8 * v11);
          v13 = sub_1000137E0();
          v14 = [v12 syncget_prepareSessionEndForSessionType:a2 atEndTime:a3];
          v15 = sub_1000137E0();
          if (qword_1025D43F0 != -1)
          {
            sub_1018FFD38();
          }

          v16 = v15 - v13;
          v17 = qword_1025D43F8;
          if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v26;
            v34 = a2;
            v35 = 2048;
            v36 = v16;
            v37 = 1024;
            v38 = v14;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "PrepareSessionEnd, sent client end for session, %d, duration (s), %f, success, %d", buf, 0x18u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D43F0 != -1)
            {
              sub_1018FFD38();
            }

            v27 = v26;
            v28 = a2;
            v29 = 2048;
            v30 = v16;
            v31 = 1024;
            v32 = v14;
            LODWORD(v25) = 24;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 0, "PrepareSessionEnd, sent client end for session, %d, duration (s), %f, success, %d", &v27, v25, v26);
            v20 = v19;
            sub_100152C7C("Generic", 1, 0, 2, "void CLMotionStateMediator::prepareForSessionEnd(CMWorkoutType, CFAbsoluteTime)", "%s\n", v19);
            if (v20 != buf)
            {
              free(v20);
            }
          }

          if (v16 > 0.005)
          {
            if (qword_1025D43F0 != -1)
            {
              sub_1018FFD38();
            }

            v18 = qword_1025D43F8;
            if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
            {
              *buf = v26;
              v34 = a2;
              v35 = 2048;
              v36 = v16;
              v37 = 1024;
              v38 = v14;
              _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "PrepareSessionEnd, client response duration exceeded 5 ms threshold, sessionType, %d, duration (s), %f, success, %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 0))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D43F0 != -1)
              {
                sub_1018FFD38();
              }

              v27 = v26;
              v28 = a2;
              v29 = 2048;
              v30 = v16;
              v31 = 1024;
              v32 = v14;
              LODWORD(v25) = 24;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 16, "PrepareSessionEnd, client response duration exceeded 5 ms threshold, sessionType, %d, duration (s), %f, success, %d", &v27, v25, v26);
              v22 = v21;
              sub_100152C7C("Generic", 1, 0, 0, "void CLMotionStateMediator::prepareForSessionEnd(CMWorkoutType, CFAbsoluteTime)", "%s\n", v21);
              if (v22 != buf)
              {
                free(v22);
              }
            }
          }

          v10 = v10 + v16;
          v11 = v11 + 1;
        }

        while (v8 != v11);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6);
        v8 = v23;
      }

      while (v23);
      if (v10 > 0.015)
      {
        if (qword_1025D43F0 != -1)
        {
          sub_1018FFD38();
        }

        v24 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v34 = a2;
          v35 = 2048;
          v36 = v10;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "PrepareSessionEnd, total client response duration exceeded 15 ms threshold, sessionType, %d, total duration (s), %f", buf, 0x12u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101902BF0(a2, v10);
        }
      }
    }
  }
}

void *sub_1006926C0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100FD68F8(result);

    operator delete();
  }

  return result;
}

void sub_100692714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Did Set Workout Type During Workout Session", &v21, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101902D08();
  }

  sub_10068FCF0(a1, a2, a3);
  sub_10068E928(a1, a2);
  memset(dst, 0, sizeof(dst));
  memset(uu2, 0, sizeof(uu2));
  v7 = *(a1 + 7672);
  v31 = *(a1 + 7656);
  v32 = v7;
  v33 = *(a1 + 7688);
  v34 = *(a1 + 7704);
  v8 = *(a1 + 7608);
  v27 = *(a1 + 7592);
  v28 = v8;
  v9 = *(a1 + 7640);
  v29 = *(a1 + 7624);
  v30 = v9;
  v10 = *(a1 + 7544);
  v23 = *(a1 + 7528);
  v24 = v10;
  v11 = *(a1 + 7576);
  v25 = *(a1 + 7560);
  v26 = v11;
  v12 = *(a1 + 7512);
  v21 = *(a1 + 7496);
  v22 = v12;
  uuid_copy(dst, &v25);
  uuid_copy(uu2, (a2 + 64));
  if (uuid_compare(dst, uu2))
  {
    v13 = *(a1 + 8736);
    if (v13 && *(v13 + 113) == 1 && *(a2 + 96) == 33)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_1018FFD38();
      }

      v14 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 7592);
        LODWORD(v21) = 134217984;
        *(&v21 + 4) = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "ignore client transistion, remaining in workout type: %ld", &v21, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101902DE4();
      }
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      sub_100692124(a1, Current);
      v17 = *(a2 + 176);
      v27 = *(a2 + 160);
      v28 = v17;
      v29 = *(a2 + 192);
      *&v30 = *(a2 + 208);
      v18 = *(a2 + 112);
      v23 = *(a2 + 96);
      v24 = v18;
      v19 = *(a2 + 144);
      v25 = *(a2 + 128);
      v26 = v19;
      v20 = *(a2 + 80);
      v21 = *(a2 + 64);
      v22 = v20;
      sub_100691CB0(a1, &v21);
    }
  }

  sub_100691DCC(a1, a2 + 64);
}

uint64_t sub_100692988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Did manual pause workout session", v9, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101902ED8();
  }

  v7 = *(a1 + 10160);
  if (v7)
  {
    sub_100FD6E24(v7, *(a2 + 24));
  }

  sub_10068FCF0(a1, a2, a3);
  sub_10068E928(a1, a2);
  return sub_100692124(a1, *(a2 + 8));
}

id sub_100692A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Did manual resume workout session", v13, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101902FB4();
  }

  v7 = *(a1 + 10160);
  if (v7)
  {
    sub_100FD70BC(v7, *(a2 + 24));
  }

  sub_10068FCF0(a1, a2, a3);
  sub_10068E928(a1, a2);
  v8 = *(a2 + 176);
  v13[6] = *(a2 + 160);
  v13[7] = v8;
  v13[8] = *(a2 + 192);
  v14 = *(a2 + 208);
  v9 = *(a2 + 112);
  v13[2] = *(a2 + 96);
  v13[3] = v9;
  v10 = *(a2 + 144);
  v13[4] = *(a2 + 128);
  v13[5] = v10;
  v11 = *(a2 + 80);
  v13[0] = *(a2 + 64);
  v13[1] = v11;
  return sub_100691CB0(a1, v13);
}

id sub_100692BB4(uint64_t a1, __int128 *a2, uint64_t a3, double a4)
{
  sub_1000C1B4C(a1 + 136, buf);
  v8 = [CMWorkout CMWorkoutTypeFromCLMotionActivityType:*buf];
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_1025D43F0 != -1)
  {
    sub_1018FFD38();
  }

  v10 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a2;
    v12 = *(a2 + 12);
    *buf = 134219008;
    *&buf[4] = v11;
    *&buf[12] = 2048;
    *&buf[14] = v12;
    *&buf[22] = 2048;
    *&buf[24] = v8;
    *v33 = 2048;
    *&v33[2] = a4;
    *&v33[10] = 2048;
    *&v33[12] = Current;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "Detected change in activity during workout session, startTime %f, newType, %ld, oldType, %ld, previousEndTime, %f, now, %f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D43F0 != -1)
    {
      sub_1018FFD38();
    }

    v18 = *a2;
    v19 = *(a2 + 12);
    v22 = 134219008;
    v23 = v18;
    v24 = 2048;
    v25 = v19;
    v26 = 2048;
    v27 = v8;
    v28 = 2048;
    v29 = a4;
    v30 = 2048;
    v31 = Current;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 0, "Detected change in activity during workout session, startTime %f, newType, %ld, oldType, %ld, previousEndTime, %f, now, %f", COERCE_DOUBLE(&v22), 52);
    v21 = v20;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMotionStateMediator::onWorkoutSessionDetectedChangeInActivity(const CLMotionStateMediator_Type::WorkoutEvent &, const CLMotionStateMediator_Type::WorkoutSessionOverview &, CFAbsoluteTime)", "%s\n", v20);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  sub_10068FCF0(a1, a2, a3);
  sub_10068E928(a1, a2);
  sub_100692124(a1, a4);
  v13 = a2[11];
  v36 = a2[10];
  v37 = v13;
  v38 = a2[12];
  v39 = *(a2 + 26);
  v14 = a2[7];
  *v33 = a2[6];
  *&v33[16] = v14;
  v15 = a2[9];
  v34 = a2[8];
  v35 = v15;
  v16 = a2[5];
  *buf = a2[4];
  *&buf[16] = v16;
  return sub_100691CB0(a1, buf);
}

uint64_t sub_100692E4C(uint64_t result, int a2)
{
  v2 = result;
  if (a2)
  {
    if (*(result + 8336) > 0)
    {
      return result;
    }

    sub_10003848C(v10);
    sub_100038730(&v11, "Workout Series Predictor", 24);
    if ((v18 & 0x10) != 0)
    {
      v5 = v17;
      if (v17 < v14)
      {
        v17 = v14;
        v5 = v14;
      }

      locale = v13[4].__locale_;
    }

    else
    {
      if ((v18 & 8) == 0)
      {
        v3 = 0;
        v9 = 0;
LABEL_20:
        *(&__p + v3) = 0;
        sub_10023B1D0(v2 + 8328, &__p);
        if (v9 < 0)
        {
          operator delete(__p);
        }

        v11 = v7;
        if (v16 < 0)
        {
          operator delete(v15);
        }

        std::locale::~locale(v13);
        std::iostream::~basic_iostream();
        return std::ios::~ios();
      }

      locale = v13[1].__locale_;
      v5 = v13[3].__locale_;
    }

    v3 = v5 - locale;
    if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    v9 = v5 - locale;
    if (v3)
    {
      memmove(&__p, locale, v3);
    }

    goto LABEL_20;
  }

  if (*(result + 8336) >= 1)
  {
    v4 = result + 8328;

    return sub_10026ED10(v4);
  }

  return result;
}

void sub_100693108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_10069313C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 <= 7)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        if (v2 == 4)
        {
          ++*(result + 8984);
          *(result + 9040) = *(a2 + 24);
        }

        return result;
      }

LABEL_10:
      *(result + 10280) = 0;
      return result;
    }

    *(result + 8984) = 0;
    *(result + 9040) = 0;
LABEL_13:
    *(result + 10280) = 1;
    return result;
  }

  switch(v2)
  {
    case 8:
      goto LABEL_13;
    case 10:
      goto LABEL_10;
    case 12:
      ++*(result + 8988);
      break;
  }

  return result;
}

uint64_t sub_1006931C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000206B4(a1, a2);
  v11 = *(a2 + 96);
  v4 = sub_1004FD1C8(v3, "kMostRecentWorkoutEventWorkoutType", &v11);
  v6 = sub_1000206B4(v4, v5);
  v11 = *(a2 + 104);
  v7 = sub_1004FD1C8(v6, "kMostRecentWorkoutEventLocationType", &v11);
  v9 = *sub_1000206B4(v7, v8);
  return (*(v9 + 944))();
}

uint64_t sub_100693260(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1006A3ACC(result);

    operator delete();
  }

  return result;
}

void sub_1006932AC(uint64_t a1, uint64_t *a2)
{
  v4 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a2 + 1)), *(a2 + 3));
  v21 = vextq_s8(v4, v4, 4uLL);
  v8 = *(a2 + 5);
  v5 = a2[7];
  sub_10011E648(&v21, v8);
  v17[0] = v21;
  v17[1] = v8;
  v6 = *a2;
  v18 = v5;
  v19 = v6;
  Current = CFAbsoluteTimeGetCurrent();
  sub_100D34008(a1 + 6648, v17);
  v7 = *(a1 + 8256);
  if (v7)
  {
    *(&v9 + 1) = 0;
    v10 = 0;
    v11 = 0x80000000800000;
    v12 = 0;
    v13 = 0;
    v14 = 0x80000000800000;
    v15 = 0x80000000800000;
    v16 = -8388609;
    if (sub_1010D69AC(v7, v17, &v9))
    {
      sub_100693398(a1 + 5592, &v9);
      sub_100693398(a1 + 2936, &v9);
    }
  }
}

void sub_100693398(uint64_t a1, __int128 *a2)
{
  v3 = a2[3];
  v19 = a2[2];
  v20 = v3;
  v21 = *(a2 + 8);
  v4 = a2[1];
  v17 = *a2;
  v18 = v4;
  v5 = *(a1 + 192);
  if (v5)
  {
    (*(*v5 + 48))(v5, &v17);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = v6 + *(a1 + 48) - 1;
    v8 = *(a1 + 24);
    v9 = *(v8[v7 / 0x38] + 9 * (v7 % 0x38));
    if (v9 > *&v17)
    {
      v10 = *(a1 + 32);
      *(a1 + 56) = 0;
      v11 = (v10 - v8) >> 3;
      if (v11 >= 3)
      {
        do
        {
          operator delete(*v8);
          v12 = *(a1 + 32);
          v8 = (*(a1 + 24) + 8);
          *(a1 + 24) = v8;
          v11 = (v12 - v8) >> 3;
        }

        while (v11 > 2);
      }

      if (v11 == 1)
      {
        v13 = 28;
      }

      else
      {
        if (v11 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }

          v14 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v23 = v17;
            v24 = 2048;
            v25 = v9;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019030B8();
          }

          goto LABEL_18;
        }

        v13 = 56;
      }

      *(a1 + 48) = v13;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_1006A3C74((a1 + 16), &v17);
  v15 = v20;
  *(a1 + 128) = v19;
  *(a1 + 144) = v15;
  *(a1 + 160) = v21;
  v16 = v18;
  *(a1 + 96) = v17;
  *(a1 + 112) = v16;
}

uint64_t sub_1006935A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v10 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_INFO))
  {
    *buf = 134349824;
    *&buf[4] = a2;
    *&buf[12] = 2050;
    *&buf[14] = a3;
    *&buf[22] = 2050;
    v33 = a4;
    *v34 = 2050;
    *&v34[2] = a5;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "Background Escalation Manager, ActivityAction : %{public}ld, ActivityReason : %{public}ld, workoutType : %{public}ld, startTime : %{public}f", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D43F0 != -1)
    {
      sub_1018FFD38();
    }

    *v24 = 134349824;
    v25 = a2;
    v26 = 2050;
    v27 = a3;
    v28 = 2050;
    v29 = a4;
    v30 = 2050;
    v31 = a5;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 1, "Background Escalation Manager, ActivityAction : %{public}ld, ActivityReason : %{public}ld, workoutType : %{public}ld, startTime : %{public}f", v24, 42);
    v22 = v21;
    sub_100152C7C("Generic", 1, 0, 2, "void CLMotionStateMediator::onBackgroundEscalationManagerUpdate(CFAbsoluteTime, CMActivityAction, CMActivityReason, CMWorkoutType)", "%s\n", v21);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  v48 = 0u;
  v49 = 0u;
  v50 = 0;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  *buf = a5;
  *&buf[8] = 0;
  *&buf[16] = a2;
  v33 = a3;
  *v34 = a4;
  __asm { FMOV            V0.2D, #-1.0 }

  v23 = _Q0;
  *&v34[8] = _Q0;
  if (a2 == 1)
  {
    sub_1006907D8(a1);
    v16 = a1[829];
    v17 = *(v16 + 8);
    v18 = *(v16 + 16);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    *buf = a5;
    *&buf[8] = xmmword_101C652A0;
    v33 = a3;
    *v34 = a4;
    *&v34[8] = v17;
    *&v34[16] = v18;
    if (qword_1025D43F0 != -1)
    {
      sub_1018FFD38();
    }

    v19 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_INFO))
    {
      *v24 = 134349312;
      v25 = *&v17;
      v26 = 2050;
      v27 = *&v18;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "Background Escalation Manager, Appending to ActivityAction : recoveryStart : %{public}f, recoveryEnd : %{public}f", v24, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019031B4(v17, v18);
    }
  }

  else if (!a2)
  {
    sub_10069094C(a1);
  }

  *v24 = 4;
  result = (*(*a1 + 152))(a1, v24, buf, 1, 0xFFFFFFFFLL, 0);
  if (a2 == 1)
  {
    *(a1[829] + 8) = v23;
  }

  return result;
}

void sub_100693948(int *result, uint64_t a2, unsigned __int8 *a3)
{
  if (a2 > 6)
  {
    if (a2 <= 9)
    {
      if (a2 == 7)
      {
        *buf = *a3;
        *&buf[4] = *(a3 + 1);
        v29 = sub_100023ED4(0, a2);
        (*(*(v29 + 96) + 24))();
      }

      else if (a2 == 9)
      {
        if (qword_1025D43F0 != -1)
        {
          sub_10023AD98();
        }

        v17 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *a3;
          v19 = a3[1];
          *buf = 67109376;
          *&buf[4] = v18;
          *&buf[8] = 1024;
          *&buf[10] = v19;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "CLAS,kNotificationGPSActivationEvent,shouldActivate,%d,isTypeIntermittentGps,%d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019032C4();
        }

        if (a3[1])
        {
          if (*a3)
          {
            sub_100B55994((result + 2572), 1);
          }

          else
          {
            sub_100B55994((result + 2572), -1);
          }
        }

        else
        {
          v42 = *(result + 1281);
          v44 = *(v42 + 8);
          v43 = *(v42 + 16);
          if (*a3)
          {
            [v43 register:v44 forNotification:2 registrationInfo:0];
          }

          else
          {
            [v43 unregister:v44 forNotification:2];
          }
        }
      }

      return;
    }

    if (a2 != 10)
    {
      if (a2 == 11)
      {
        *buf = *a3;
        *&buf[4] = *(a3 + 1);
        v40 = sub_100023ED4(0, a2);
        (*(*(v40 + 96) + 32))();
      }

      else if (a2 == 12)
      {
        LODWORD(v75) = 5;
        v72 = 0u;
        v73 = 0u;
        v74 = 0;
        v71 = 0u;
        v70 = 0u;
        v69 = 0u;
        memset(&v68[8], 0, 160);
        v9 = *a3;
        v10 = *(a3 + 1);
        v11 = *(a3 + 2);
        *v68 = *(a3 + 6);
        v66 = v10;
        v67 = v11;
        *buf = v9;
        (*(*result + 152))(result, &v75, buf, 1, 0xFFFFFFFFLL, 0);
      }

      return;
    }

    v72 = 0u;
    v73 = 0u;
    v74 = 0;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    memset(&v68[8], 0, 160);
    v31 = *a3;
    v32 = *(a3 + 1);
    v33 = *(a3 + 2);
    *v68 = *(a3 + 6);
    v66 = v32;
    v67 = v33;
    *buf = v31;
    if (*(a3 + 1) == 1)
    {
      v34 = *(a3 + 2);
      if (*(a3 + 4))
      {
        if (!v34)
        {
          sub_10069094C(result);
          goto LABEL_88;
        }
      }

      else if (v34 != 1)
      {
        goto LABEL_88;
      }

      sub_1006907D8(result);
    }

LABEL_88:
    LODWORD(v75) = 4;
    (*(*result + 152))(result, &v75, buf, 1, 0xFFFFFFFFLL, 0);
    return;
  }

  if (a2 <= 2)
  {
    if (!a2)
    {
      v20 = *(a3 + 10);
      v21 = *(a3 + 12);
      *&v68[128] = *(a3 + 11);
      *&v68[144] = v21;
      v22 = *(a3 + 6);
      v23 = *(a3 + 8);
      v24 = *(a3 + 9);
      *&v68[64] = *(a3 + 7);
      *&v68[80] = v23;
      *&v68[160] = *(a3 + 26);
      *&v68[96] = v24;
      *&v68[112] = v20;
      v25 = *(a3 + 3);
      v67 = *(a3 + 2);
      *v68 = v25;
      v26 = *(a3 + 5);
      *&v68[16] = *(a3 + 4);
      *&v68[32] = v26;
      *&v68[48] = v22;
      v27 = *(a3 + 1);
      *buf = *a3;
      v66 = v27;
      v28 = sub_1000A154C(buf);
      if (v28 == 2)
      {
        sub_100AB05FC((result + 34));
        if (*&v68[48] == 37 || *&v68[48] == 23)
        {
          v28 = [*(*(result + 1273) + 16) unregister:*(*(result + 1273) + 8) forNotification:1];
        }
      }

      else if (v28 == 1)
      {
        sub_100AB05F0((result + 34), [CMWorkout CLMotionActivityTypeFromCMWorkoutType:*&v68[48]], &v68[16]);
        if (*&v68[48] == 37 || *&v68[48] == 23)
        {
          v28 = [*(*(result + 1273) + 16) register:*(*(result + 1273) + 8) forNotification:1 registrationInfo:0];
        }
      }

      v45 = *&v68[128];
      v46 = *&v68[144];
      v47 = *&v68[96];
      *(result + 2410) = *&v68[112];
      *(result + 2414) = v45;
      *(result + 2418) = v46;
      v48 = *&v68[64];
      v49 = *&v68[80];
      *(result + 2394) = *&v68[48];
      *(result + 2398) = v48;
      *(result + 1211) = *&v68[160];
      *(result + 2402) = v49;
      *(result + 2406) = v47;
      v50 = *v68;
      *(result + 2378) = v67;
      *(result + 2382) = v50;
      v51 = *&v68[32];
      *(result + 2386) = *&v68[16];
      *(result + 2390) = v51;
      v52 = *buf;
      v53 = v66;
      *(result + 2370) = *buf;
      *(result + 2374) = v53;
      v54 = v66;
      if (!v66)
      {
        v85 = *&v68[112];
        v86 = *&v68[128];
        v87 = *&v68[144];
        v81 = *&v68[48];
        v82 = *&v68[64];
        v88 = *&v68[160];
        v83 = *&v68[80];
        v84 = *&v68[96];
        v77 = v67;
        v78 = *v68;
        v79 = *&v68[16];
        v80 = *&v68[32];
        v75 = *buf;
        v76 = v66;
        sub_1006931C4(v28, &v75);
        sub_1006907D8(result);
        v54 = v66;
      }

      if (v54 <= 1)
      {
        sub_100E35540(*(result + 829), v54, v52);
      }

      v85 = *&v68[112];
      v86 = *&v68[128];
      v87 = *&v68[144];
      v81 = *&v68[48];
      v82 = *&v68[64];
      v88 = *&v68[160];
      v83 = *&v68[80];
      v84 = *&v68[96];
      v77 = v67;
      v78 = *v68;
      v79 = *&v68[16];
      v80 = *&v68[32];
      v75 = *buf;
      v76 = v66;
      sub_10069313C(result, &v75);
      sub_10068E928(result, buf);
      sub_10068F340(result, buf);
      sub_10049FD74((result + 2250), buf, v55);
      return;
    }

    if (a2 != 2)
    {
      return;
    }

    if (*a3 != 1)
    {
      if (result[2070] >= 1)
      {
        v41 = result + 2068;

        sub_10026ED10(v41);
      }

      return;
    }

    if (result[2070] > 0)
    {
      return;
    }

    sub_10003848C(buf);
    v12 = sub_100038730(&v66, "Workout Detected (", 18);
    v13 = [+[CMWorkout workoutName:](CMWorkout workoutName:{*(a3 + 1)), "UTF8String"}];
    v14 = strlen(v13);
    v15 = sub_100038730(v12, v13, v14);
    sub_100038730(v15, ")", 1);
    if ((v68[72] & 0x10) != 0)
    {
      v60 = *&v68[64];
      if (*&v68[64] < *&v68[24])
      {
        *&v68[64] = *&v68[24];
        v60 = *&v68[24];
      }

      v61 = *&v68[16];
    }

    else
    {
      if ((v68[72] & 8) == 0)
      {
        v16 = 0;
        v64 = 0;
LABEL_100:
        *(&__dst + v16) = 0;
        sub_10023B1D0((result + 2068), &__dst);
        if (v64 < 0)
        {
          operator delete(__dst);
        }

        *&v66 = v62;
        if ((v68[63] & 0x80000000) != 0)
        {
          operator delete(*&v68[40]);
        }

        std::locale::~locale(&v67);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        return;
      }

      v61 = *(&v67 + 1);
      v60 = *&v68[8];
    }

    v16 = v60 - v61;
    if ((v60 - v61) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v16 >= 0x17)
    {
      operator new();
    }

    v64 = v60 - v61;
    if (v16)
    {
      memmove(&__dst, v61, v16);
    }

    goto LABEL_100;
  }

  if (a2 == 3)
  {
    v30 = *a3;

    sub_10068F914(result, v30);
  }

  else
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        v5 = sub_100B7E5D0(result, a2);
        v6 = *a3;
        v7 = *(a3 + 1);
        v8 = *(a3 + 2);

        sub_100B804E4(v5, v6, v7, v8);
      }

      return;
    }

    v36 = a3 + 8;
    v35 = *(a3 + 1);
    v37 = *(result + 1048);
    if (v35 > 2)
    {
      if (v35 == 3)
      {
        v38 = @"cycling.total";
        v39 = @"cycling.falsePositive";
        goto LABEL_80;
      }

      if (v35 == 14)
      {
        v38 = @"other.total";
        v39 = @"other.falsePositive";
        goto LABEL_80;
      }
    }

    else
    {
      if (v35 == 1)
      {
        v38 = @"walk.total";
        v39 = @"walk.falsePositive";
        goto LABEL_80;
      }

      if (v35 == 2)
      {
        v38 = @"run.total";
        v39 = @"run.falsePositive";
LABEL_80:
        if (*a3)
        {
          v59 = v39;
        }

        else
        {
          v59 = v38;
        }

        sub_100745C64(v37, v59, 1);
        return;
      }
    }

    if (*a3)
    {
      v56 = @"unsupported.falsePositive";
    }

    else
    {
      v56 = @"unsupported.total";
    }

    sub_100745C64(v37, v56, 1);
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v57 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
    {
      v58 = *v36;
      *buf = 67109120;
      *&buf[4] = v58;
      _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_ERROR, "Unsupported escalation type reported for metrics, %d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019033D0();
    }
  }
}

void sub_100694414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a16);
  _Unwind_Resume(a1);
}

void sub_100694448(__n128 *a1, __n128 *a2)
{
  v13 = *a2;
  v3 = a1[8].n128_u64[1];
  if (v3)
  {
    (*(*v3 + 48))(v3, &v13);
  }

  v4 = a1[3].n128_u64[1];
  if (v4)
  {
    v5 = v4 + a1[3].n128_u64[0] - 1;
    v6 = a1[1].n128_u64[1];
    v7 = (*(v6 + ((v5 >> 5) & 0x7FFFFFFFFFFFFF8)))[2 * v5];
    if (v7 > v13.n128_f64[0])
    {
      v8 = a1[2].n128_u64[0];
      a1[3].n128_u64[1] = 0;
      v9 = (v8 - v6) >> 3;
      if (v9 >= 3)
      {
        do
        {
          operator delete(*v6);
          v10 = a1[2].n128_u64[0];
          v6 = (a1[1].n128_u64[1] + 8);
          a1[1].n128_u64[1] = v6;
          v9 = (v10 - v6) >> 3;
        }

        while (v9 > 2);
      }

      if (v9 == 1)
      {
        v11 = 128;
      }

      else
      {
        if (v9 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }

          v12 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v15 = v13.n128_u64[0];
            v16 = 2048;
            v17 = v7;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019034D4();
          }

          goto LABEL_18;
        }

        v11 = 256;
      }

      a1[3].n128_u64[0] = v11;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_1006A3F10(a1[1].n128_u64, &v13);
  a1[6] = v13;
}

void sub_100694620(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v15 = *a2;
  v16 = v3;
  v17 = *(a2 + 8);
  v4 = *(a1 + 160);
  if (v4)
  {
    (*(*v4 + 48))(v4, &v15);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = v5 + *(a1 + 48) - 1;
    v7 = *(a1 + 24);
    v8 = *(v7[v6 / 0x66] + 5 * (v6 % 0x66));
    if (v8 > *&v15)
    {
      v9 = *(a1 + 32);
      *(a1 + 56) = 0;
      v10 = (v9 - v7) >> 3;
      if (v10 >= 3)
      {
        do
        {
          operator delete(*v7);
          v11 = *(a1 + 32);
          v7 = (*(a1 + 24) + 8);
          *(a1 + 24) = v7;
          v10 = (v11 - v7) >> 3;
        }

        while (v10 > 2);
      }

      if (v10 == 1)
      {
        v12 = 51;
      }

      else
      {
        if (v10 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }

          v13 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v19 = v15;
            v20 = 2048;
            v21 = v8;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019035D0();
          }

          goto LABEL_18;
        }

        v12 = 102;
      }

      *(a1 + 48) = v12;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_1006A4170((a1 + 16), &v15);
  v14 = v16;
  *(a1 + 96) = v15;
  *(a1 + 112) = v14;
  *(a1 + 128) = v17;
}

uint64_t sub_100694820(uint64_t a1, uint64_t a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_INFO))
  {
    v5 = *a2;
    v6 = *(a2 + 16);
    v12 = 134218240;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Stair escalation event, timestamp, %f, stair metric, %.3f", &v12, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019036CC();
  }

  result = *(a1 + 6632);
  v8 = *(result + 216) - 1;
  if (*(a2 + 20) != 1)
  {
    if (v8 > 1)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (v8 < 2)
  {
LABEL_11:
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    v11 = 0;
    return sub_100E35950(result, v11, v9, v10);
  }

  sub_1000BF264(result, 1, *a2);
  result = *(a1 + 6632);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = 1;
  return sub_100E35950(result, v11, v9, v10);
}

void sub_100694970(uint64_t result, int a2, int *a3, _OWORD *__src)
{
  v5 = *a3;
  if (*a3 > 5)
  {
    if (v5 == 6)
    {
      v14 = __src[3];
      v16[2] = __src[2];
      v16[3] = v14;
      v17 = *(__src + 8);
      v15 = __src[1];
      v16[0] = *__src;
      v16[1] = v15;
      sub_100DA5A74((result + 8400), v16);
    }

    else if (v5 == 7)
    {
      v7 = result + 6648;

      sub_100D36764(v7, __src);
    }
  }

  else if (v5 == 2)
  {
    v8 = *(result + 376);
    v10 = __src[1];
    v9 = __src[2];
    v11 = *__src;
    *(result + 380) = *(__src + 44);
    *(result + 336) = v11;
    *(result + 352) = v10;
    *(result + 368) = v9;
    memmove((result + 7008), __src, 0x3CuLL);
    sub_100E356C0(*(result + 6632), (result + 336));
    if (v8 != *(result + 376))
    {
      if (qword_1025D43F0 != -1)
      {
        sub_10023AD98();
      }

      v12 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(result + 376);
        LODWORD(v16[0]) = 67109376;
        DWORD1(v16[0]) = v8;
        WORD4(v16[0]) = 1024;
        *(v16 + 10) = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Workout settings, updating due to condition change from %d to %d", v16, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101903BB8();
      }

      sub_100690180(result);
    }
  }

  else if (v5 == 4)
  {
    v6 = (result + 3608);

    sub_100694B9C(v6, __src);
  }
}

void sub_100694B9C(__n128 *a1, __int128 *a2)
{
  v13 = *a2;
  v14 = *(a2 + 2);
  v3 = a1[9].n128_u64[0];
  if (v3)
  {
    (*(*v3 + 48))(v3, &v13);
  }

  v4 = a1[3].n128_u64[1];
  if (v4)
  {
    v5 = v4 + a1[3].n128_u64[0] - 1;
    v6 = a1[1].n128_u64[1];
    v7 = *(v6[v5 / 0xAA] + 3 * (v5 % 0xAA) + 1);
    if (v7 > v13.n128_f64[1])
    {
      v8 = a1[2].n128_u64[0];
      a1[3].n128_u64[1] = 0;
      v9 = (v8 - v6) >> 3;
      if (v9 >= 3)
      {
        do
        {
          operator delete(*v6);
          v10 = a1[2].n128_u64[0];
          v6 = (a1[1].n128_u64[1] + 8);
          a1[1].n128_u64[1] = v6;
          v9 = (v10 - v6) >> 3;
        }

        while (v9 > 2);
      }

      if (v9 == 1)
      {
        v11 = 85;
      }

      else
      {
        if (v9 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }

          v12 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v16 = v13.n128_u64[1];
            v17 = 2048;
            v18 = v7;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101903CBC();
          }

          goto LABEL_18;
        }

        v11 = 170;
      }

      a1[3].n128_u64[0] = v11;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_1006A43FC(a1[1].n128_u64, &v13);
  a1[6] = v13;
  a1[7].n128_u64[0] = v14;
}

void sub_100694D98(uint64_t result, uint64_t a2, _DWORD *a3, int *a4)
{
  if (*a3)
  {
    if (*a3 == 1)
    {
      if (qword_1025D4200 != -1)
      {
        sub_1018FFCE0();
      }

      v6 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
      {
        v7 = *a4;
        v11 = 67240192;
        v12 = v7;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Watch wrist state updated,onwrist,%{public}d", &v11, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101903EAC(a4);
      }

      sub_100D308E4(result + 6648, a4);
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018FFCE0();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      v10 = *a4;
      v9 = a4[1];
      v11 = 67240448;
      v12 = v9;
      v13 = 1026;
      v14 = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Watch orientation settings updated,crown,%{public}d,wrist,%{public}d", &v11, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101903DB8();
    }

    sub_100D35C48(result + 6648, a4);
  }
}

id sub_100694F40(uint64_t a1, uint64_t a2, int *a3, unsigned __int8 *a4)
{
  if (*a3 == 15)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v9 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 10144);
      v11 = *a4;
      *buf = 67240448;
      *&buf[4] = v10;
      LOWORD(v24) = 1026;
      *(&v24 + 2) = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "System Power Save Mode changed, was, %{public}d, now, %{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101903F98();
    }

    *(a1 + 10144) = *a4;
    v13 = sub_100023ED4(0, v12);
    (*(*v13 + 72))(v13, (*a4 & 1) == 0);
    sub_100690180(a1);
    v14 = *(a1 + 10264);
    v15 = [NSString stringWithUTF8String:"com.apple.locationd.bundle-/System/Library/LocationBundles/MotionCalibration.bundle"];
    *buf = _NSConcreteStackBlock;
    *&v24 = 3221225472;
    *(&v24 + 1) = sub_1000398C4;
    *v25 = &unk_1024689D0;
    *&v25[8] = a1;
    return [v14 getAuthorizationContextOfNonZonalClient:v15 withReply:buf];
  }

  else
  {
    if (*a3 != 7)
    {
      if (qword_1025D4200 != -1)
      {
        sub_1018FFCE0();
      }

      v17 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        v18 = *a3;
        *buf = 68289795;
        *&buf[4] = 0;
        LOWORD(v24) = 2082;
        *(&v24 + 2) = "";
        WORD5(v24) = 1026;
        HIDWORD(v24) = v18;
        *v25 = 2082;
        *&v25[2] = "assert";
        *&v25[10] = 2081;
        *&v25[12] = "0";
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Wiring bug, should not be subscribed to , notification:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
        if (qword_1025D4200 != -1)
        {
          goto LABEL_29;
        }
      }

      while (1)
      {
        v19 = qword_1025D4208;
        if (os_signpost_enabled(qword_1025D4208))
        {
          v20 = *a3;
          *buf = 68289795;
          *&buf[4] = 0;
          LOWORD(v24) = 2082;
          *(&v24 + 2) = "";
          WORD5(v24) = 1026;
          HIDWORD(v24) = v20;
          *v25 = 2082;
          *&v25[2] = "assert";
          *&v25[10] = 2081;
          *&v25[12] = "0";
          _os_signpost_emit_with_name_impl(dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Wiring bug, should not be subscribed to ", "{msg%{public}.0s:Wiring bug, should not be subscribed to , notification:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }
        }

        v21 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v22 = *a3;
          *buf = 68289795;
          *&buf[4] = 0;
          LOWORD(v24) = 2082;
          *(&v24 + 2) = "";
          WORD5(v24) = 1026;
          HIDWORD(v24) = v22;
          *v25 = 2082;
          *&v25[2] = "assert";
          *&v25[10] = 2081;
          *&v25[12] = "0";
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Wiring bug, should not be subscribed to , notification:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Workout/CLMotionStateMediator.mm", 2145, "onDaemonStatus");
LABEL_29:
        sub_101903090();
      }
    }

    if (qword_1025D4200 != -1)
    {
      sub_1018FFCE0();
    }

    v6 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      v7 = a4[9];
      *buf = 67240192;
      *&buf[4] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Battery connected state %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101904094(a4);
    }

    sub_100D308C0(a1 + 6648, a4);
    result = *(a1 + 8392);
    if (result)
    {
      return sub_100C1ACB4(result, a4);
    }
  }

  return result;
}

void sub_1006953BC(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 9)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v6 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a4 + 40);
      v8 = *(a4 + 8);
      v9 = *(a4 + 16);
      v10 = 134284033;
      v11 = v7;
      v12 = 2049;
      v13 = v8;
      v14 = 2049;
      v15 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "One second hr, startTime,%{private}f,hr,%{private}f,hrConfidence,%{private}f", &v10, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101904180();
    }

    sub_100E35820(*(result + 6632), a4);
  }

  else if (*a3 == 6 && !*(a4 + 24))
  {
    *(result + 6984) = vextq_s8(*(a4 + 8), *(a4 + 8), 8uLL);
  }
}

void sub_1006954F4(char *result, uint64_t a2, int *a3, int *a4)
{
  v6 = result + 0x2000;
  v7 = *a3;
  if (*a3 > 3)
  {
    switch(v7)
    {
      case 4:
        if (*(result + 2238) != *a4)
        {
          if (qword_1025D43F0 != -1)
          {
            sub_10023AD98();
          }

          v19 = qword_1025D43F8;
          if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
          {
            v20 = *(result + 2238);
            v21 = *a4;
            v37 = 68289538;
            *v38 = 2082;
            *&v38[2] = "";
            *&v38[10] = 2050;
            *&v38[12] = v20;
            *&v38[20] = 2050;
            *&v38[22] = v21;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Current Activity Move Mode changed, from:%{public, location:CLFitnessTrackingNotifier_Type::ActivityMoveMode}lld, to:%{public, location:CLFitnessTrackingNotifier_Type::ActivityMoveMode}lld}", &v37, 0x26u);
          }

          *(result + 2238) = *a4;
          v22 = *(result + 1283);
          v23 = [NSString stringWithUTF8String:"com.apple.locationd.bundle-/System/Library/LocationBundles/MotionCalibration.bundle"];
          v37 = _NSConcreteStackBlock;
          *v38 = 3221225472;
          *&v38[8] = sub_1000398C4;
          *&v38[16] = &unk_1024689D0;
          *&v38[24] = result;
          [v22 getAuthorizationContextOfNonZonalClient:v23 withReply:&v37];
        }

        break;
      case 5:
        v36 = sub_1000A23E0(result, a2);

        sub_100E04B3C(v36, a4);
        break;
      case 7:
        result[8946] = *a4;

        sub_100690180(result);
        break;
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      v24 = *a4;
      result[8944] = *a4;
      if ((v24 & 1) == 0)
      {
        v25 = *(result + 9656);
        *(result + 589) = *(result + 9640);
        *(result + 590) = v25;
        *(result + 591) = *(result + 9672);
        v26 = *(result + 9592);
        *(result + 585) = *(result + 9576);
        *(result + 586) = v26;
        v27 = *(result + 9624);
        *(result + 587) = *(result + 9608);
        *(result + 588) = v27;
        v28 = *(result + 9528);
        *(result + 581) = *(result + 9512);
        *(result + 582) = v28;
        v29 = *(result + 9560);
        *(result + 583) = *(result + 9544);
        *(result + 584) = v29;
        v30 = *(result + 9496);
        *(result + 579) = *(result + 9480);
        *(result + 1184) = *(result + 1211);
        *(result + 580) = v30;
      }
    }

    else
    {
      if (v7 != 2)
      {
        return;
      }

      v8 = *a4;
      result[8945] = *a4;
      if ((v8 & 1) == 0)
      {
        *(result + 1157) = *(result + 1211);
        v9 = *(result + 9656);
        *(result + 9208) = *(result + 9640);
        *(result + 9224) = v9;
        *(result + 9240) = *(result + 9672);
        v10 = *(result + 9592);
        *(result + 9144) = *(result + 9576);
        *(result + 9160) = v10;
        v11 = *(result + 9624);
        *(result + 9176) = *(result + 9608);
        *(result + 9192) = v11;
        v12 = *(result + 9528);
        *(result + 9080) = *(result + 9512);
        *(result + 9096) = v12;
        v13 = *(result + 9560);
        *(result + 9112) = *(result + 9544);
        *(result + 9128) = v13;
        v14 = *(result + 9496);
        *(result + 9048) = *(result + 9480);
        *(result + 9064) = v14;
      }
    }

    v31 = sub_100690180(result);
    v33 = sub_1000A23E0(v31, v32);
    v34 = v6[752];
    v35 = v6[753];

    sub_100E03A24(v33, v34, v35);
  }

  else
  {
    v15 = result[8950];
    v16 = *(a4 + 3);
    if ((v16 & 1) == 0)
    {
      sub_1006A4680((result + 712));
      sub_1006A474C((result + 1384));
      sub_1006A4818((result + 2536));
      v16 = *(a4 + 3);
    }

    v6[758] = v16;
    if (v15 != v16)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_10023AD98();
      }

      v17 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v6[758];
        LODWORD(v37) = 67109376;
        HIDWORD(v37) = v15;
        *v38 = 1024;
        *&v38[2] = v18;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "Workout settings, updating due to fitness tracking change from %d to %d", &v37, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101904290();
      }

      sub_100690180(result);
    }
  }
}

uint64_t sub_100695928(uint64_t a1)
{
  sub_1006A4680(a1 + 8);
  sub_1006A474C(a1 + 680);

  return sub_1006A4818(a1 + 1832);
}

void sub_10069596C(uint64_t a1, uint64_t a2, int *a3, char *a4)
{
  v4 = a4;
  v6 = a1;
  v7 = *a3;
  if (*a3)
  {
    if (v7 != 1)
    {
      if (v7 != 2)
      {
        return;
      }

      if (qword_1025D4200 != -1)
      {
        sub_1018FFCE0();
      }

      v8 = qword_1025D4208;
      v4 = "0";
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        v9 = *a3;
        *buf = 68289795;
        *v40 = 0;
        *&v40[4] = 2082;
        *&v40[6] = "";
        *&v40[14] = 1026;
        *&v40[16] = v9;
        v41 = 2082;
        *v42 = "assert";
        *&v42[8] = 2081;
        v43 = "0";
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Wiring bug, should not be subscribed to , notification:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
        if (qword_1025D4200 != -1)
        {
          sub_101903090();
        }
      }

      v10 = qword_1025D4208;
      if (os_signpost_enabled(qword_1025D4208))
      {
        v11 = *a3;
        *buf = 68289795;
        *v40 = 0;
        *&v40[4] = 2082;
        *&v40[6] = "";
        *&v40[14] = 1026;
        *&v40[16] = v11;
        v41 = 2082;
        *v42 = "assert";
        *&v42[8] = 2081;
        v43 = "0";
        _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Wiring bug, should not be subscribed to ", "{msg%{public}.0s:Wiring bug, should not be subscribed to , notification:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
        if (qword_1025D4200 != -1)
        {
          sub_101903090();
        }
      }

      v6 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
      {
        v12 = *a3;
        *buf = 68289795;
        *v40 = 0;
        *&v40[4] = 2082;
        *&v40[6] = "";
        *&v40[14] = 1026;
        *&v40[16] = v12;
        v41 = 2082;
        *v42 = "assert";
        *&v42[8] = 2081;
        v43 = "0";
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Wiring bug, should not be subscribed to , notification:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Workout/CLMotionStateMediator.mm", 2246, "onMotionStateObserverNotification");
    }

    if (qword_1025D4200 != -1)
    {
      sub_1018FFCE0();
    }

    v13 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(v4 + 3);
      *buf = 67240192;
      *v40 = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "VehicularConfidence,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101904488(v4);
    }

    sub_100D308F4(&v6[831], v4);
  }

  else if (*(a1 + 461))
  {
    v15 = *a4;
    v16 = *(a4 + 2);
    v17 = *(a4 + 3);
    v18 = *(a4 + 4);
    if (CLMotionActivity::isTypePedestrian())
    {
      isTypeIndoorPedestrian = 1;
    }

    else
    {
      isTypeIndoorPedestrian = CLMotionActivity::isTypeIndoorPedestrian();
    }

    if (qword_1025D44D0 != -1)
    {
      sub_101901F3C();
    }

    v22 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
    {
      *buf = 134219264;
      *v40 = v15;
      *&v40[8] = 1024;
      *&v40[10] = v16;
      *&v40[14] = 1024;
      *&v40[16] = v17;
      v41 = 1024;
      *v42 = v18;
      *&v42[4] = 1024;
      *&v42[6] = v16 != 0;
      LOWORD(v43) = 1024;
      *(&v43 + 2) = isTypeIndoorPedestrian;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "Received observed workout session, startTime, %f, activityType, %d, predictedWorkoutActivityType, %d, hkWorkoutActivityType, %d, isWorkout, %d, isPedestrian, %d", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D44D0 != -1)
      {
        sub_101901508();
      }

      v27 = 134219264;
      v28 = v15;
      v29 = 1024;
      v30 = v16;
      v31 = 1024;
      v32 = v17;
      v33 = 1024;
      v34 = v18;
      v35 = 1024;
      v36 = v16 != 0;
      v37 = 1024;
      v38 = isTypeIndoorPedestrian;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44D8, 1, "Received observed workout session, startTime, %f, activityType, %d, predictedWorkoutActivityType, %d, hkWorkoutActivityType, %d, isWorkout, %d, isPedestrian, %d", COERCE_DOUBLE(&v27), 42, v25, v26);
      v24 = v23;
      sub_100152C7C("Generic", 1, 0, 2, "void CLMotionStateMediator::onMotionStateObserverNotification(int, const CLMotionStateObserver_Type::Notification &, const CLMotionStateObserver_Type::NotificationData &)", "%s\n", v23);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    if (((v16 != 0) & isTypeIndoorPedestrian) == 1)
    {
      buf[0] = 0;
      *&v40[4] = 0;
      *&v40[12] = 0x10000000000000;
      (*(v6->isa + 26))(v6, buf);
    }
  }

  else
  {
    if (qword_1025D44D0 != -1)
    {
      sub_101901F3C();
    }

    v20 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_ERROR))
    {
      v21 = *a3;
      *buf = 67109120;
      *v40 = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "MotionStateMediator should not be subscribed to notification, %d, when fTriggerIndoorOutdoorOnObservedPedWorkouts is false", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101904394(a3);
    }
  }
}

uint64_t sub_100695F28()
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v0 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_DEFAULT, "Enabling tier1 cycling features message sending", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101904770();
  }

  v2 = sub_100023ED4(0, v1);
  return (*(*(v2 + 96) + 56))();
}

uint64_t sub_100695FEC()
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v0 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_DEFAULT, "Disabling tier1 cycling features message sending", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190484C();
  }

  v2 = sub_100023ED4(0, v1);
  return (*(*(v2 + 96) + 56))();
}

void sub_100696170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_1006961A0(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_10246A548;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void sub_100696284(uint64_t result, uint64_t a2)
{
  v9 = a2;
  if ((*(result + 108) & 1) == 0)
  {
    v4 = *(result + 88);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = result + 80;
    v6 = result + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != result + 88 && *(v6 + 32) <= a2)
    {
      while (*(v6 + 56))
      {
        *buf = *(*(v6 + 40) + 28);
        (*(*result + 112))(result, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_1019013A4();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = (result + 8);
        if (*(result + 31) < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101904928();
      }
    }
  }
}

uint64_t sub_100696428(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_1006965E0(uint64_t a1, uint64_t a2, int *a3, char *a4)
{
  v32 = a2;
  if (*(a1 + 108))
  {
    return 0;
  }

  v5 = a2;
  v7 = *(a1 + 88);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 32) >= a2)
      {
        v10 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a2));
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 32) <= a2)
    {
      v31 = v10;
      v14 = *a3;
      v17 = *(v10 + 48);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 28) >= v14)
        {
          v18 = v15;
        }

        v15 = *(v15 + 8 * (*(v15 + 28) < v14));
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 28))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 64);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 32) >= v14)
        {
          v20 = v19;
        }

        v19 = *(v19 + 8 * (*(v19 + 32) < v14));
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 32))
      {
        v30 = v20;
        v27 = *(v20 + 56);
        v28 = *a4;
        *&buf[0] = &v32;
        *(sub_100007FA0(v20 + 40, &v32, &unk_101C66300, buf) + 32) = v28;
        memset(buf, 0, sizeof(buf));
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_1006A4954(buf);
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = a1 + 56;
        v30 = a1 + 64;
        v22 = byte_1025D7DA9;
        v29 = v14;
        *&buf[0] = &v29;
        *(sub_100024014(a1 + 56, &v29, &unk_101C66300, buf) + 80) = v22;
        v29 = *a3;
        *&buf[0] = &v29;
        v23 = sub_100024014(a1 + 56, &v29, &unk_101C66300, buf);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v29 = *a3;
        *&buf[0] = &v29;
        v26 = sub_100024014(v21, &v29, &unk_101C66300, buf);
        *&buf[0] = &v32;
        *(sub_100007FA0((v26 + 5), &v32, &unk_101C66300, buf) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        LODWORD(buf[0]) = *a3;
        sub_1003C9410(v31 + 40, buf, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v12 = *v12;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = v12;
    WORD6(buf[0]) = 1026;
    *(buf + 14) = v5;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_101904A2C();
    return 0;
  }

  return result;
}

BOOL sub_1006969C4(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = a2;
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_1019013A4();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = v3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_101904B30();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100696B58(char *a1, int a2, int *a3)
{
  HIDWORD(v25) = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 28) >= v11)
            {
              v12 = v9;
            }

            v9 = *(v9 + 8 * (*(v9 + 28) < v11));
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_10004E6E0((v15 + 40), &v25 + 1);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_1019013B8();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v35 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v27 = 2082;
                v28 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v35 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1019013B8();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                v21 = qword_1025D47F8;
                (*(*a1 + 160))(buf, a1, a3);
                if (v29 >= 0)
                {
                  v22 = buf;
                }

                else
                {
                  v22 = *buf;
                }

                v30 = 136446466;
                v31 = v20;
                v32 = 2082;
                v33 = v22;
                LODWORD(v25) = 22;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v21, 17, "%{public}s; notification %{public}s not found", &v30, v25);
                v24 = v23;
                if (v29 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLMotionStateMediator_Type::Notification, CLMotionStateMediator_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLMotionStateMediator_Type::Notification, NotificationData_T = CLMotionStateMediator_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v24);
                if (v24 != __p)
                {
                  free(v24);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

uint64_t sub_100696EFC(uint64_t a1, int *a2, void *__dst)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  memcpy(__dst, v8, 0x130uLL);
  return 1;
}

void sub_100697110(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1019013A4();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v32 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101904D4C(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1019013A4();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v32 = v5;
      v33 = 2048;
      v34[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101904C34(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      v8 = (a1 + 8);
      do
      {
        v9 = v7[5];
        if (v9 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_1019013B8();
            }

            v10 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v11 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v11 = *v8;
              }

              v12 = *(v7 + 8);
              v13 = *(v9 + 7);
              *buf = 136315650;
              v32 = v11;
              v33 = 1024;
              LODWORD(v34[0]) = v12;
              WORD2(v34[0]) = 1024;
              *(v34 + 6) = v13;
              _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_1019013B8();
              }

              v17 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v17 = *v8;
              }

              v18 = *(v7 + 8);
              v19 = *(v9 + 7);
              v25 = 136315650;
              v26 = v17;
              v27 = 1024;
              v28 = v18;
              v29 = 1024;
              v30 = v19;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 2, "%s; clients, id: %d, notification: %d", &v25, 24, v24);
              v21 = v20;
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLMotionStateMediator_Type::Notification, CLMotionStateMediator_Type::NotificationData>::listClients() [Notification_T = CLMotionStateMediator_Type::Notification, NotificationData_T = CLMotionStateMediator_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v20);
              if (v21 != buf)
              {
                free(v21);
              }
            }

            v14 = v9[1];
            if (v14)
            {
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14);
            }

            else
            {
              do
              {
                v15 = v9[2];
                v16 = *v15 == v9;
                v9 = v15;
              }

              while (!v16);
            }

            v9 = v15;
          }

          while (v15 != v7 + 6);
        }

        v22 = v7[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v7[2];
            v16 = *v23 == v7;
            v7 = v23;
          }

          while (!v16);
        }

        v7 = v23;
      }

      while (v23 != (a1 + 88));
    }
  }
}

void sub_1006974D4(uint64_t a1)
{
  sub_1006A48E4(a1);

  operator delete();
}

void sub_10069756C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 13;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 26;
  }

  a1[4] = v6;
}

uint64_t sub_1006975E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  **a1 = *a2;
  v4 = *(a2 + 56);
  v5 = *(a2 + 88);
  v6 = *(a2 + 40);
  *(v3 + 64) = *(a2 + 72);
  *(v3 + 80) = v5;
  *(v3 + 32) = v6;
  *(v3 + 48) = v4;
  v7 = *(a2 + 120);
  v8 = *(a2 + 136);
  v9 = *(a2 + 104);
  *(v3 + 144) = *(a2 + 152);
  *(v3 + 112) = v7;
  *(v3 + 128) = v8;
  *(v3 + 96) = v9;
  v10 = *(a2 + 24);
  *v3 = *(a2 + 8);
  *(v3 + 16) = v10;
  v11 = *(a1 + 16);
  *v11 = *(a2 + 160);
  if (*(v11 + 39) < 0)
  {
    operator delete(*(v11 + 16));
  }

  v12 = *(a2 + 176);
  *(v11 + 32) = *(a2 + 192);
  *(v11 + 16) = v12;
  *(a2 + 199) = 0;
  *(a2 + 176) = 0;

  return sub_10069C000((v11 + 40), a2 + 200);
}

unint64_t *sub_1006976A0(unint64_t *a1, void *a2)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v3 = a2[4];
  v4 = a2[1];
  if (a2[2] == v4)
  {
    v5 = 0;
    v8 = 0;
    v7 = (v4 + 8 * ((a2[5] + v3) / 0x12));
  }

  else
  {
    v5 = *(v4 + 8 * (v3 / 0x12)) + 216 * (v3 % 0x12);
    v6 = a2[5] + v3;
    v7 = (v4 + 8 * (v6 / 0x12));
    v8 = *v7 + 216 * (v6 % 0x12);
  }

  sub_100697770(a1, (v4 + 8 * (v3 / 0x12)), v5, v7, v8);
  return a1;
}

void *sub_100697770(unint64_t *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 18 * (a4 - a2) - 0x7B425ED097B425EDLL * ((a5 - *a4) >> 3) + 0x7B425ED097B425EDLL * ((a3 - *a2) >> 3);
  }

  return sub_1006977D4(a1, a2, a3, v5);
}

void *sub_1006977D4(unint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 18 * ((v9 - v8) >> 3) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_100697990(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 / 0x12));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 216 * (v11 % 0x12);
    v15 = v14;
  }

  v33 = v13;
  v34 = v15;
  result = sub_100667F8C(&v33, a4);
  v17 = v34;
  if (v14 != v34)
  {
    v18 = v33;
    do
    {
      if (v13 == v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 3888;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = v14;
        do
        {
          v21 = *(a3 + 16);
          *v20 = *a3;
          *(v20 + 16) = v21;
          v22 = *(a3 + 32);
          v23 = *(a3 + 48);
          v24 = *(a3 + 80);
          *(v20 + 64) = *(a3 + 64);
          *(v20 + 80) = v24;
          *(v20 + 32) = v22;
          *(v20 + 48) = v23;
          v25 = *(a3 + 96);
          v26 = *(a3 + 112);
          v27 = *(a3 + 144);
          *(v20 + 128) = *(a3 + 128);
          *(v20 + 144) = v27;
          *(v20 + 96) = v25;
          *(v20 + 112) = v26;
          v28 = *(a3 + 160);
          v29 = *(a3 + 176);
          v30 = *(a3 + 192);
          *(v20 + 208) = *(a3 + 208);
          *(v20 + 176) = v29;
          *(v20 + 192) = v30;
          *(v20 + 160) = v28;
          a3 += 216;
          if (a3 - *a2 == 3888)
          {
            v31 = a2[1];
            ++a2;
            a3 = v31;
          }

          v20 += 216;
        }

        while (v20 != v19);
      }

      a1[5] -= 0x7B425ED097B425EDLL * ((v19 - v14) >> 3);
      if (v13 == v18)
      {
        break;
      }

      v32 = v13[1];
      ++v13;
      v14 = v32;
    }

    while (v32 != v17);
  }

  return result;
}

void sub_100697990(unint64_t *a1, unint64_t a2)
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

  if (v4 % 0x12)
  {
    v5 = v4 / 0x12 + 1;
  }

  else
  {
    v5 = v4 / 0x12;
  }

  v6 = a1[4];
  if (v5 >= v6 / 0x12)
  {
    v7 = v6 / 0x12;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0x12)
  {
    for (a1[4] = v6 - 18 * v7; v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      sub_10045E430(a1, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = a1;
      if (v12)
      {
        sub_10045E858(a1, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
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

    for (a1[4] -= 18 * v7; v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      sub_10045E430(a1, v16);
    }
  }
}

void sub_100697C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100697CDC(uint64_t a1)
{
  sub_100666704((a1 + 40));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_100697D18(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 9;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 18;
  }

  a1[4] = v6;
}

void *sub_100697D94(void *a1)
{
  *a1 = &off_1024AAD88;
  sub_100697F4C((a1 + 190));
  v2 = a1[187];
  if (v2)
  {
    a1[188] = v2;
    operator delete(v2);
  }

  sub_10069CC30((a1 + 179));
  v3 = a1[178];
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = a1[170];
  a1[170] = 0;
  if (v4)
  {
    sub_100697FCC((a1 + 170), v4);
  }

  v5 = a1[59];
  a1[59] = 0;
  if (v5)
  {
    sub_10069CC30((v5 + 3));
    v6 = *v5;
    *v5 = 0;
    if (v6)
    {
      (*(*v6 + 48))(v6);
    }

    operator delete();
  }

  v7 = a1[58];
  a1[58] = 0;
  if (v7)
  {
    operator delete();
  }

  v8 = a1[54];
  a1[54] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = a1[53];
  a1[53] = 0;
  if (v9)
  {
    sub_10069CC30((v9 + 9));
    v10 = *v9;
    *v9 = 0;
    if (v10)
    {
      (*(*v10 + 24))(v10);
    }

    operator delete();
  }

  a1[5] = off_102468B38;
  sub_1006980F4((a1 + 37));
  sub_10051B848(a1 + 7);
  return a1;
}

uint64_t sub_100697F4C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_100697FCC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }
}

void *sub_10069802C(void *a1)
{
  *a1 = off_102468B38;
  v2 = a1 + 2;
  sub_1006980F4((a1 + 32));
  sub_10051B848(v2);
  return a1;
}

void sub_100698080(void *a1)
{
  *a1 = off_102468B38;
  v1 = a1 + 2;
  sub_1006980F4((a1 + 32));
  sub_10051B848(v1);

  operator delete();
}

uint64_t sub_1006980F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_100698174(void *a1)
{
  *a1 = off_102468B90;
  sub_100698308(a1 + 404);
  sub_1006985DC(a1 + 382);
  a1[363] = off_102468DF0;
  sub_100698924((a1 + 378));
  sub_1000F8B58(a1 + 365);
  a1[345] = off_102468E48;
  sub_100698A6C((a1 + 359));
  sub_100102BC8(a1 + 347);
  sub_100698AEC(a1 + 308);
  sub_100699148(a1 + 279);
  a1[258] = off_102468FE8;
  sub_100699490((a1 + 275));
  sub_1003FFD68(a1 + 260);
  sub_100699510(a1 + 229);
  sub_100699714(a1 + 170);
  sub_100699D40(a1 + 129);
  sub_10069A638(a1 + 85);
  sub_10069A958(a1 + 59);
  sub_10069AF5C(a1 + 1);
  return a1;
}

void sub_1006982D0(void *a1)
{
  sub_100698174(a1);

  operator delete();
}

void *sub_100698308(void *a1)
{
  *a1 = &off_102468CB0;
  v2 = a1 + 17;
  sub_10069CBB0((a1 + 21));
  *a1 = off_102468D20;
  sub_100698508(v2);
  sub_1003FFD68(a1 + 2);
  return a1;
}

void *sub_10069838C(void *a1)
{
  *a1 = off_102468D20;
  v2 = a1 + 2;
  sub_100698508((a1 + 17));
  sub_1003FFD68(v2);
  return a1;
}

void sub_1006983E0(void *a1)
{
  sub_100698308(a1);

  operator delete();
}

uint64_t sub_100698418(uint64_t a1)
{
  if (!*(a1 + 192))
  {
    return 0;
  }

  v1 = 1;
  if ((sub_100698588(a1 + 168, 1) & 1) == 0)
  {
    return 0;
  }

  return v1;
}

void sub_100698494(void *a1)
{
  *a1 = off_102468D20;
  v1 = a1 + 2;
  sub_100698508((a1 + 17));
  sub_1003FFD68(v1);

  operator delete();
}

uint64_t sub_100698508(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100698588(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *sub_1006985DC(void *a1)
{
  *a1 = &off_102468D50;
  v2 = a1 + 14;
  sub_10069CBB0((a1 + 18));
  *a1 = off_102468DC0;
  sub_1006987DC(v2);
  sub_100102BC8(a1 + 2);
  return a1;
}

void *sub_100698660(void *a1)
{
  *a1 = off_102468DC0;
  v2 = a1 + 2;
  sub_1006987DC((a1 + 14));
  sub_100102BC8(v2);
  return a1;
}

void sub_1006986B4(void *a1)
{
  sub_1006985DC(a1);

  operator delete();
}

uint64_t sub_1006986EC(uint64_t a1)
{
  if (!*(a1 + 168))
  {
    return 0;
  }

  v1 = 1;
  if ((sub_100698588(a1 + 144, 1) & 1) == 0)
  {
    return 0;
  }

  return v1;
}

void sub_100698768(void *a1)
{
  *a1 = off_102468DC0;
  v1 = a1 + 2;
  sub_1006987DC((a1 + 14));
  sub_100102BC8(v1);

  operator delete();
}

uint64_t sub_1006987DC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_10069885C(void *a1)
{
  *a1 = off_102468DF0;
  v2 = a1 + 2;
  sub_100698924((a1 + 15));
  sub_1000F8B58(v2);
  return a1;
}

void sub_1006988B0(void *a1)
{
  *a1 = off_102468DF0;
  v1 = a1 + 2;
  sub_100698924((a1 + 15));
  sub_1000F8B58(v1);

  operator delete();
}

uint64_t sub_100698924(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_1006989A4(void *a1)
{
  *a1 = off_102468E48;
  v2 = a1 + 2;
  sub_100698A6C((a1 + 14));
  sub_100102BC8(v2);
  return a1;
}

void sub_1006989F8(void *a1)
{
  *a1 = off_102468E48;
  v1 = a1 + 2;
  sub_100698A6C((a1 + 14));
  sub_100102BC8(v1);

  operator delete();
}

uint64_t sub_100698A6C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_100698AEC(void *a1)
{
  *a1 = &off_102468EA0;
  v2 = a1[36];
  a1[36] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_102468F18;
  sub_100698E84((a1 + 31));
  sub_100106180(a1 + 2);
  return a1;
}

void *sub_100698B8C(void *a1)
{
  *a1 = off_102468F18;
  v2 = a1 + 2;
  sub_100698E84((a1 + 31));
  sub_100106180(v2);
  return a1;
}

void sub_100698BE0(void *a1)
{
  sub_100698AEC(a1);

  operator delete();
}

uint64_t sub_100698C18(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "Swim";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "activate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101904E50();
  }

  [*(*(a1 + 288) + 16) register:*(*(a1 + 288) + 8) forNotification:0 registrationInfo:0];
  return 1;
}

uint64_t sub_100698D08(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "Swim";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "deactivate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101904F44();
  }

  [*(*(a1 + 288) + 16) unregister:*(*(a1 + 288) + 8) forNotification:0];
  return 1;
}

void sub_100698DF4(uint64_t result, uint64_t a2, _DWORD *a3, __int128 *a4)
{
  if ((*a3 + 1) <= 1)
  {
    sub_100698F04(result, a4);
  }
}

void sub_100698E10(void *a1)
{
  *a1 = off_102468F18;
  v1 = a1 + 2;
  sub_100698E84((a1 + 31));
  sub_100106180(v1);

  operator delete();
}

uint64_t sub_100698E84(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_100698F04(uint64_t a1, __int128 *a2)
{
  v3 = a2[7];
  v31 = a2[6];
  v32 = v3;
  v33 = a2[8];
  v34 = *(a2 + 18);
  v4 = a2[3];
  v27 = a2[2];
  v28 = v4;
  v5 = a2[5];
  v29 = a2[4];
  v30 = v5;
  v6 = a2[1];
  v25 = *a2;
  v26 = v6;
  v7 = *(a1 + 272);
  if (v7)
  {
    (*(*v7 + 48))(v7, &v25);
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = v8 + *(a1 + 48) - 1;
    v10 = *(a1 + 24);
    v11 = *(v10[v9 / 0x1A] + 19 * (v9 % 0x1A) + 5);
    if (v11 > *(&v27 + 1))
    {
      v12 = *(a1 + 32);
      *(a1 + 56) = 0;
      v13 = (v12 - v10) >> 3;
      if (v13 >= 3)
      {
        do
        {
          operator delete(*v10);
          v14 = *(a1 + 32);
          v10 = (*(a1 + 24) + 8);
          *(a1 + 24) = v10;
          v13 = (v14 - v10) >> 3;
        }

        while (v13 > 2);
      }

      if (v13 == 1)
      {
        v15 = 13;
      }

      else
      {
        if (v13 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }

          v16 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            v21 = 134218240;
            v22 = *(&v27 + 1);
            v23 = 2048;
            v24 = v11;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", &v21, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101905038();
          }

          goto LABEL_18;
        }

        v15 = 26;
      }

      *(a1 + 48) = v15;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_10045DCB0((a1 + 16), &v25);
  v17 = v32;
  *(a1 + 192) = v31;
  *(a1 + 208) = v17;
  *(a1 + 224) = v33;
  *(a1 + 240) = v34;
  v18 = v28;
  *(a1 + 128) = v27;
  *(a1 + 144) = v18;
  v19 = v30;
  *(a1 + 160) = v29;
  *(a1 + 176) = v19;
  v20 = v26;
  *(a1 + 96) = v25;
  *(a1 + 112) = v20;
}

void *sub_100699148(void *a1)
{
  *a1 = &off_102468F48;
  v2 = a1 + 21;
  sub_10069CBB0((a1 + 25));
  *a1 = off_102468FB8;
  sub_100699348(v2);
  sub_10052C514(a1 + 2);
  return a1;
}

void *sub_1006991CC(void *a1)
{
  *a1 = off_102468FB8;
  v2 = a1 + 2;
  sub_100699348((a1 + 21));
  sub_10052C514(v2);
  return a1;
}

void sub_100699220(void *a1)
{
  sub_100699148(a1);

  operator delete();
}

uint64_t sub_100699258(uint64_t a1)
{
  if (!*(a1 + 224))
  {
    return 0;
  }

  v1 = 1;
  if ((sub_100698588(a1 + 200, 1) & 1) == 0)
  {
    return 0;
  }

  return v1;
}

void sub_1006992D4(void *a1)
{
  *a1 = off_102468FB8;
  v1 = a1 + 2;
  sub_100699348((a1 + 21));
  sub_10052C514(v1);

  operator delete();
}

uint64_t sub_100699348(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_1006993C8(void *a1)
{
  *a1 = off_102468FE8;
  v2 = a1 + 2;
  sub_100699490((a1 + 17));
  sub_1003FFD68(v2);
  return a1;
}

void sub_10069941C(void *a1)
{
  *a1 = off_102468FE8;
  v1 = a1 + 2;
  sub_100699490((a1 + 17));
  sub_1003FFD68(v1);

  operator delete();
}

uint64_t sub_100699490(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_100699510(void *a1)
{
  *a1 = &off_102469040;
  v2 = a1 + 21;
  sub_10069CBB0((a1 + 25));
  *a1 = off_1024690B0;
  sub_100699694(v2);
  sub_10052C514(a1 + 2);
  return a1;
}

void *sub_100699594(void *a1)
{
  *a1 = off_1024690B0;
  v2 = a1 + 2;
  sub_100699694((a1 + 21));
  sub_10052C514(v2);
  return a1;
}

void sub_1006995E8(void *a1)
{
  sub_100699510(a1);

  operator delete();
}

void sub_100699620(void *a1)
{
  *a1 = off_1024690B0;
  v1 = a1 + 2;
  sub_100699694((a1 + 21));
  sub_10052C514(v1);

  operator delete();
}

uint64_t sub_100699694(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_100699714(void *a1)
{
  *a1 = &off_1024690E0;
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "ExtendedStepCount";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "disable message src %s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FFD60(buf);
    v7 = 136315138;
    v8 = "ExtendedStepCount";
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 2, "disable message src %s", &v7);
    v6 = v5;
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLSourceFromNotifier<CLExtendedStepCountEntry>::~CLSourceFromNotifier() [Data_T = CLExtendedStepCountEntry]", "%s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  [*(a1[58] + 16) unregister:*(a1[58] + 8) forNotification:1];
  v3 = a1[58];
  a1[58] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *a1 = off_102469158;
  sub_100699C14((a1 + 53));
  sub_100699C94(a1 + 2);
  return a1;
}

void sub_100699928(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void *sub_100699934(void *a1)
{
  *a1 = off_102469158;
  v2 = a1 + 2;
  sub_100699C14((a1 + 53));
  sub_100699C94(v2);
  return a1;
}

void sub_100699988(void *a1)
{
  sub_100699714(a1);

  operator delete();
}

uint64_t sub_1006999C0(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "ExtendedStepCount";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "activate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101905134();
  }

  [*(*(a1 + 464) + 16) register:*(*(a1 + 464) + 8) forNotification:1 registrationInfo:0];
  return 1;
}

uint64_t sub_100699AB0(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "ExtendedStepCount";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "deactivate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101905228();
  }

  [*(*(a1 + 464) + 16) unregister:*(*(a1 + 464) + 8) forNotification:1];
  return 1;
}

void sub_100699BA0(void *a1)
{
  *a1 = off_102469158;
  v1 = a1 + 2;
  sub_100699C14((a1 + 53));
  sub_100699C94(v1);

  operator delete();
}

uint64_t sub_100699C14(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100699C94(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 8;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 16;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

void *sub_100699D40(void *a1)
{
  *a1 = &off_102469188;
  v2 = a1[40];
  a1[40] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_102469200;
  sub_10069A0D8((a1 + 35));
  sub_10069A158(a1 + 2);
  return a1;
}