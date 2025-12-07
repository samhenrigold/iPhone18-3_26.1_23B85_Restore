void sub_FA8AE0(uint64_t a1, void *a2, uint64_t a3, int *a4, _DWORD *a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  *(a9 + 264) += *a5 + *a4;
  *(a9 + 268) += a5[1] + a4[1];
  *(a9 + 272) += a5[2] + a4[2];
  v139 = a7;
  *(a9 + 4) += a5[a7] + a4[a7];
  *(a9 + 284) += a5[a7];
  v13 = sub_4D1DC0(a2) + ~a6;
  v14 = sub_4D1DC0(a2) + ~*(a3 + 24);
  v15 = sub_4D1DC0(a2);
  v16 = *(a3 + 32);
  v17 = v15 - v16;
  if (v14 > v15 - v16)
  {
    v17 = v14;
  }

  v137 = v13;
  if (v17 <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(a9 + 40);
  v20 = (*(a9 + 48) - v19) >> 2;
  if (v20 <= v18)
  {
    v21 = v18 + 1;
    v142 = 0;
    if (v18 + 1 <= v20)
    {
      if (v18 + 1 < v20)
      {
        *(a9 + 48) = v19 + 4 * v21;
      }
    }

    else
    {
      sub_569AC(a9 + 40, v18 + 1 - v20, &v142);
    }

    v22 = *(a9 + 64);
    v23 = *(a9 + 72);
    v141 = 0;
    v24 = (v23 - v22) >> 2;
    if (v21 <= v24)
    {
      if (v21 < v24)
      {
        *(a9 + 72) = v22 + 4 * v21;
      }
    }

    else
    {
      sub_569AC(a9 + 64, v21 - v24, &v141);
    }

    v25 = *(a9 + 16);
    v26 = *(a9 + 24);
    v140 = 0;
    v27 = (v26 - v25) >> 2;
    if (v21 <= v27)
    {
      if (v21 < v27)
      {
        *(a9 + 24) = v25 + 4 * v21;
      }
    }

    else
    {
      sub_569AC(a9 + 16, v21 - v27, &v140);
    }

    v16 = *(a3 + 32);
  }

  v138 = a5;
  v28 = a3;
  v29 = *(a3 + 24);
  if (v29 <= v16)
  {
    v30 = v16;
  }

  else
  {
    v30 = *(a3 + 24);
  }

  if (v29 < v16)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    while (1)
    {
      v36 = sub_4D1DC0(a2);
      v38 = sub_4D23F8(a2, v29, v37);
      v39 = *(v28 + 40);
      if (v39 <= 1)
      {
        v39 = 1;
      }

      v40 = v38 / v39;
      v41 = v40 * *a4;
      if (v41 >= 0.0)
      {
        if (v41 >= 4.50359963e15)
        {
          goto LABEL_35;
        }

        v42 = (v41 + v41) + 1;
      }

      else
      {
        if (v41 <= -4.50359963e15)
        {
          goto LABEL_35;
        }

        v42 = (v41 + v41) - 1 + (((v41 + v41) - 1) >> 63);
      }

      v41 = (v42 >> 1);
LABEL_35:
      v43 = v40 * a4[1];
      if (v43 >= 0.0)
      {
        if (v43 >= 4.50359963e15)
        {
          goto LABEL_41;
        }

        v44 = (v43 + v43) + 1;
      }

      else
      {
        if (v43 <= -4.50359963e15)
        {
          goto LABEL_41;
        }

        v44 = (v43 + v43) - 1 + (((v43 + v43) - 1) >> 63);
      }

      v43 = (v44 >> 1);
LABEL_41:
      v34 = v40 * a4[v139];
      if (v34 >= 0.0)
      {
        if (v34 >= 4.50359963e15)
        {
          goto LABEL_26;
        }

        v45 = (v34 + v34) + 1;
      }

      else
      {
        if (v34 <= -4.50359963e15)
        {
          goto LABEL_26;
        }

        v45 = (v34 + v34) - 1 + (((v34 + v34) - 1) >> 63);
      }

      v34 = (v45 >> 1);
LABEL_26:
      v35 = v36 + ~v29;
      *(*(a9 + 40) + 4 * v35) += v41;
      *(*(a9 + 64) + 4 * v35) += v43;
      *(*(a9 + 16) + 4 * v35) += v34;
      v31 += v41;
      v32 += v43;
      v33 += v34;
      if (++v29 == v30)
      {
        goto LABEL_47;
      }
    }
  }

  v33 = 0;
  v32 = 0;
  v31 = 0;
LABEL_47:
  v46 = *a4 - v31;
  v47 = a4[1] - v32;
  v48 = a4[v139] - v33;
  v49 = v28;
  v50 = sub_4D1DC0(a2) - *(v28 + 32);
  *(*(a9 + 40) + 4 * v50) += v46;
  *(*(a9 + 64) + 4 * v50) += v47;
  *(*(a9 + 16) + 4 * v50) += v48;
  v52 = *(a9 + 120);
  v51 = *(a9 + 128);
  if (v52 >= v51)
  {
    v55 = *(a9 + 112);
    v56 = v52 - v55;
    v57 = (v52 - v55) >> 2;
    v58 = v57 + 1;
    v54 = v138;
    if ((v57 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v59 = v51 - v55;
    if (v59 >> 1 > v58)
    {
      v58 = v59 >> 1;
    }

    if (v59 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v60 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v60 = v58;
    }

    if (v60)
    {
      if (!(v60 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v61 = v57;
    v62 = (4 * v57);
    v63 = &v62[-v61];
    *v62 = *a4;
    v53 = v62 + 1;
    memcpy(v63, v55, v56);
    *(a9 + 112) = v63;
    *(a9 + 120) = v53;
    *(a9 + 128) = 0;
    if (v55)
    {
      operator delete(v55);
    }
  }

  else
  {
    *v52 = *a4;
    v53 = v52 + 4;
    v54 = v138;
  }

  *(a9 + 120) = v53;
  v65 = *(a9 + 144);
  v64 = *(a9 + 152);
  if (v65 >= v64)
  {
    v67 = *(a9 + 136);
    v68 = v65 - v67;
    v69 = (v65 - v67) >> 2;
    v70 = v69 + 1;
    if ((v69 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v71 = v64 - v67;
    if (v71 >> 1 > v70)
    {
      v70 = v71 >> 1;
    }

    if (v71 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v72 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v72 = v70;
    }

    if (v72)
    {
      if (!(v72 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v73 = v69;
    v74 = (4 * v69);
    v75 = &v74[-v73];
    *v74 = a4[1];
    v66 = v74 + 1;
    memcpy(v75, v67, v68);
    *(a9 + 136) = v75;
    *(a9 + 144) = v66;
    *(a9 + 152) = 0;
    if (v67)
    {
      operator delete(v67);
    }
  }

  else
  {
    *v65 = a4[1];
    v66 = v65 + 4;
  }

  *(a9 + 144) = v66;
  v77 = *(a9 + 96);
  v76 = *(a9 + 104);
  if (v77 >= v76)
  {
    v79 = *(a9 + 88);
    v80 = v77 - v79;
    v81 = (v77 - v79) >> 2;
    v82 = v81 + 1;
    if ((v81 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v83 = v76 - v79;
    if (v83 >> 1 > v82)
    {
      v82 = v83 >> 1;
    }

    if (v83 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v84 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v84 = v82;
    }

    if (v84)
    {
      if (!(v84 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v85 = v81;
    v86 = (4 * v81);
    v87 = &v86[-v85];
    *v86 = a4[v139];
    v78 = v86 + 1;
    memcpy(v87, v79, v80);
    *(a9 + 88) = v87;
    *(a9 + 96) = v78;
    *(a9 + 104) = 0;
    if (v79)
    {
      operator delete(v79);
    }
  }

  else
  {
    *v77 = a4[v139];
    v78 = v77 + 4;
  }

  *(a9 + 96) = v78;
  v89 = *(a9 + 168);
  v88 = *(a9 + 176);
  if (v89 >= v88)
  {
    v91 = *(a9 + 160);
    v92 = v89 - v91;
    v93 = (v89 - v91) >> 2;
    v94 = v93 + 1;
    if ((v93 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v95 = v88 - v91;
    if (v95 >> 1 > v94)
    {
      v94 = v95 >> 1;
    }

    if (v95 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v96 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v96 = v94;
    }

    if (v96)
    {
      if (!(v96 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v97 = v93;
    v98 = (4 * v93);
    v99 = a4[3];
    v100 = &v98[-v97];
    *v98 = v99;
    v90 = v98 + 1;
    memcpy(v100, v91, v92);
    *(a9 + 160) = v100;
    *(a9 + 168) = v90;
    *(a9 + 176) = 0;
    if (v91)
    {
      operator delete(v91);
    }
  }

  else
  {
    *v89 = a4[3];
    v90 = v89 + 4;
  }

  *(a9 + 168) = v90;
  *(*(a9 + 40) + 4 * v137) += *v54;
  *(*(a9 + 64) + 4 * v137) += v54[1];
  *(*(a9 + 16) + 4 * v137) += v54[v139];
  if (!*(v49 + 24))
  {
    return;
  }

  v102 = *(a9 + 192);
  v101 = *(a9 + 200);
  if (v102 >= v101)
  {
    v104 = *(a9 + 184);
    v105 = v102 - v104;
    v106 = (v102 - v104) >> 2;
    v107 = v106 + 1;
    if ((v106 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v108 = v101 - v104;
    if (v108 >> 1 > v107)
    {
      v107 = v108 >> 1;
    }

    if (v108 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v109 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v109 = v107;
    }

    if (v109)
    {
      if (!(v109 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v110 = v106;
    v111 = (4 * v106);
    v112 = &v111[-v110];
    *v111 = v54[v139];
    v103 = v111 + 1;
    memcpy(v112, v104, v105);
    *(a9 + 184) = v112;
    *(a9 + 192) = v103;
    *(a9 + 200) = 0;
    if (v104)
    {
      operator delete(v104);
    }
  }

  else
  {
    *v102 = v54[v139];
    v103 = v102 + 4;
  }

  *(a9 + 192) = v103;
  v114 = *(a9 + 240);
  v113 = *(a9 + 248);
  if (v114 >= v113)
  {
    v116 = *(a9 + 232);
    v117 = v114 - v116;
    v118 = (v114 - v116) >> 2;
    v119 = v118 + 1;
    if ((v118 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v120 = v113 - v116;
    if (v120 >> 1 > v119)
    {
      v119 = v120 >> 1;
    }

    if (v120 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v121 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v121 = v119;
    }

    if (v121)
    {
      if (!(v121 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v122 = v118;
    v123 = (4 * v118);
    v124 = &v123[-v122];
    *v123 = v54[1];
    v115 = v123 + 1;
    memcpy(v124, v116, v117);
    *(a9 + 232) = v124;
    *(a9 + 240) = v115;
    *(a9 + 248) = 0;
    if (v116)
    {
      operator delete(v116);
    }
  }

  else
  {
    *v114 = v54[1];
    v115 = v114 + 4;
  }

  *(a9 + 240) = v115;
  v126 = *(a9 + 216);
  v125 = *(a9 + 224);
  if (v126 >= v125)
  {
    v128 = *(a9 + 208);
    v129 = v126 - v128;
    v130 = (v126 - v128) >> 2;
    v131 = v130 + 1;
    if (!((v130 + 1) >> 62))
    {
      v132 = v125 - v128;
      if (v132 >> 1 > v131)
      {
        v131 = v132 >> 1;
      }

      if (v132 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v133 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v133 = v131;
      }

      if (!v133)
      {
        v134 = (v126 - v128) >> 2;
        v135 = (4 * v130);
        v136 = (4 * v130 - 4 * v134);
        *v135 = *v54;
        v127 = v135 + 1;
        memcpy(v136, v128, v129);
        *(a9 + 208) = v136;
        *(a9 + 216) = v127;
        *(a9 + 224) = 0;
        if (v128)
        {
          operator delete(v128);
        }

        goto LABEL_139;
      }

      if (!(v133 >> 62))
      {
        operator new();
      }

LABEL_142:
      sub_1808();
    }

LABEL_141:
    sub_1794();
  }

  *v126 = *v54;
  v127 = v126 + 4;
LABEL_139:
  *(a9 + 216) = v127;
}

void *sub_FA9474(void *a1)
{
  v2 = a1[261];
  if (v2)
  {
    a1[262] = v2;
    operator delete(v2);
  }

  v3 = a1[258];
  if (v3)
  {
    a1[259] = v3;
    operator delete(v3);
  }

  sub_FA94D0(a1 + 233);
  sub_3DB5C4(a1 + 170);
  sub_FA9554(a1 + 4);
  return a1;
}

void *sub_FA94D0(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    a1[23] = v2;
    operator delete(v2);
  }

  v3 = a1[13];
  if (v3)
  {
    a1[14] = v3;
    operator delete(v3);
  }

  v4 = a1[10];
  if (v4)
  {
    a1[11] = v4;
    operator delete(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    a1[8] = v5;
    operator delete(v5);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
  }

  v7 = a1[1];
  if (v7)
  {
    a1[2] = v7;
    operator delete(v7);
  }

  return a1;
}

void *sub_FA9554(void *a1)
{
  sub_419924((a1 + 160));
  v2 = a1[157];
  if (v2)
  {
    a1[158] = v2;
    operator delete(v2);
  }

  v3 = a1[154];
  if (v3)
  {
    a1[155] = v3;
    operator delete(v3);
  }

  v4 = a1[151];
  if (v4)
  {
    a1[152] = v4;
    operator delete(v4);
  }

  v5 = a1[148];
  if (v5)
  {
    a1[149] = v5;
    operator delete(v5);
  }

  sub_4199F0(a1 + 4);
  return a1;
}

double sub_FA95C8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = xmmword_2266620;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

uint64_t sub_FA95E8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_2266620;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (sub_44F320(a4))
  {
    nullsub_1();
    v8 = sub_4566AC(v6);
    sub_448CA4(a2, &v8);
  }

  return a1;
}

void sub_FA9CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FA9CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    JUMPOUT(0xFA9CF0);
  }

  JUMPOUT(0xFA9CF4);
}

void sub_FA9D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    JUMPOUT(0xFA9CF0);
  }

  JUMPOUT(0xFA9CF4);
}

void sub_FA9D28(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v7 = *(a3 + 296);
  *a1 = *(a3 + 304);
  a1[1] = v7;
  a1[2] = a2;
  a1[3] = sub_3AF6B4(a2);
  a1[4] = sub_3B0F14(a2);
  a1[5] = a3;
  sub_763044(a1 + 6, a1[2]);
}

void sub_FA9DA0(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if (!sub_F63D58(a2))
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v9 = sub_F63FF4(a2);
    if (v9)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v17 = 0x8000000080000000;
    v18 = -1;
    v19 = 0;
    if (*a3 == *(a3 + 8))
    {
      v10 = 0x7FFFFFFF;
    }

    else
    {
      v10 = **a3;
    }

    v11 = sub_F63FEC(a2);
    v12 = sub_2D435C(*(a1 + 32), *(v11 + 32) & 0xFFFFFFFFFFFFFFLL, v10);
    v13 = *(a1 + 40);
    v14 = sub_3B1D8C(*(a1 + 16));
    sub_445D54((v13 + 20), v13, v14);
    v17 = 0;
    v18 = v12;
    v19 = *(a1 + 184);
    v16 = sub_4566AC(a4);
    sub_4568CC(&v16);
    operator new();
  }

  sub_4E3D18(a5);
}

void sub_FAAAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  sub_FABDCC(&a57);
  if (v57)
  {
    operator delete(v57);
    if (!a19)
    {
LABEL_3:
      sub_4E3C94((v58 - 136));
      sub_FABF74((v58 - 112));
      _Unwind_Resume(a1);
    }
  }

  else if (!a19)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  sub_4E3C94((v58 - 136));
  sub_FABF74((v58 - 112));
  _Unwind_Resume(a1);
}

void sub_FAACA8(uint64_t a1@<X0>, void *a2@<X1>, int *a3@<X2>, uint64_t *a4@<X3>, unsigned int *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_FAB0F8(a1, a2, a3, a6, a4, a5, &__p);
  v9 = __p;
  v10 = v19;
  v13 = sub_4566AC(a4);
  v14 = sub_4568CC(&v13);
  v15 = v11;
  v16 = sub_456984(v9, v10, &v14);
  v17 = v12;
  sub_4DAAF8(a7, a4, &__p, &v16);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

void sub_FAAD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_FAAD78@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, uint64_t a9@<X8>, int *a10, uint64_t a11)
{
  v11 = a7;
  v12 = a6;
  v36 = a8;
  if (sub_4566B4(a3))
  {
    sub_446E58(v35, a3, *(a1 + 8));
  }

  else
  {
    sub_446E8C(*(a1 + 8), v35);
  }

  sub_3F80(v35);
  sub_3F80(v35);
  if (a10[1] != 0x7FFFFFFF && a10[2] != 0x7FFFFFFF && a10[3] != 0x7FFFFFFF && *a10 != 0)
  {
    v22 = sub_73EEC(a2);
    v33 = sub_FAB96C(a1, v22, a5, v12, v11);
    v34 = v23;
    sub_4471A4(v35, v30, &v36);
    sub_446E58(v29, &v33, *(a1 + 8));
    if (sub_456784(v30, v29))
    {
      v25 = v29;
    }

    else
    {
      v25 = v30;
    }

    v31 = *v25;
    v32 = *(v25 + 2);
    v26 = sub_3F80(v35);
    v27 = sub_3F80(v35);
    v28 = sub_3F80(&v31);
    sub_453774(v26, v27, v28, a10, a11, *(a1 + 40));
  }

  sub_446E58(&v31, a3, *(a1 + 8));
  result = *(sub_73EEC(a2) + 104);
  *a9 = 0x7FFFFFFF;
  *(a9 + 24) = v32;
  *(a9 + 8) = v31;
  *(a9 + 32) = 0x8000000080000000;
  *(a9 + 88) = 0;
  *(a9 + 72) = 0u;
  *(a9 + 56) = 0u;
  *(a9 + 40) = 0u;
  *(a9 + 92) = 0x8000000080000000;
  *(a9 + 100) = 0x7FFFFFFF;
  *(a9 + 104) = result;
  *(a9 + 120) = 0;
  *(a9 + 128) = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

unint64_t sub_FAB0F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, unsigned int *a6@<X5>, void **a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v9 = a3[64];
  v89 = *a5;
  v90 = *(a5 + 8);
  *v86 = 0x7FFFFFFF;
  *&v86[4] = 0x7FFFFFFF7FFFFFFFLL;
  if (sub_3F80(a6) == 0x7FFFFFFF)
  {
    v10 = sub_5AAC4(a6);
  }

  else
  {
    v10 = sub_3F80(a6);
  }

  v11 = v10;
  v85 = sub_4566AC(a6);
  sub_456544(&v83, v11, &v85);
  v87 = v83;
  v88 = v84;
  result = sub_F6D024(a2);
  if (result)
  {
    v13 = 0;
    v74 = result;
    v75 = a2;
    do
    {
      v14 = sub_F6D17C(a2, v13);
      v15 = sub_F6D254(a2, v13);
      if (v15 <= 10)
      {
        v16 = 10;
      }

      else
      {
        v16 = v15;
      }

      v17 = *(*(a3 + 2) + 4 * v13);
      if (v17 <= 1)
      {
        v17 = 1;
      }

      v82 = v17;
      v18 = *(*(a3 + 5) + 4 * v13);
      if (v18 <= 1)
      {
        v18 = 1;
      }

      v80 = v18;
      if (v13)
      {
        v19 = 0;
      }

      else
      {
        v19 = *sub_73F1C(a2);
      }

      if (v13 == sub_F6D024(a2) - 1)
      {
        v21 = *sub_F69058(a2);
      }

      else
      {
        v21 = 1000000000;
      }

      v79 = v21;
      v22 = *v14;
      v23 = (*v14 - **v14);
      v24 = *v23;
      if (*(v14 + 38))
      {
        if (v24 >= 0x57)
        {
          if (v23[43])
          {
            v25 = (v22 + v23[43] + *(v22 + v23[43]));
            v26 = (v25 - *v25);
            v27 = 0.0;
            if (*v26 >= 7u)
            {
              v28 = v26[3];
              if (v28)
              {
                goto LABEL_39;
              }
            }
          }

          else
          {
            v27 = 0.0;
            if (v24 >= 0x7D)
            {
              v28 = v23[62];
              v25 = *v14;
              if (v23[62])
              {
                goto LABEL_39;
              }
            }
          }

          goto LABEL_40;
        }
      }

      else if (v24 >= 0x57)
      {
        if (v23[43])
        {
          v25 = (v22 + v23[43] + *(v22 + v23[43]));
          v29 = (v25 - *v25);
          v27 = 0.0;
          if (*v29 < 5u)
          {
            goto LABEL_40;
          }

          v28 = v29[2];
          if (!v28)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v27 = 0.0;
          if (v24 < 0x7B)
          {
            goto LABEL_40;
          }

          v28 = v23[61];
          v25 = *v14;
          if (!v23[61])
          {
            goto LABEL_40;
          }
        }

LABEL_39:
        LOWORD(v27) = *(v25 + v28);
        v27 = *&v27 + *&v27;
LABEL_40:
        HIDWORD(v20) = 1089470432;
        v30 = v27 / 65535.0;
        goto LABEL_41;
      }

      v30 = 0.0;
      if (v24 < 9)
      {
        v31 = 0;
        v32 = 0.0 * 0.0;
        if (0.0 * 0.0 < 0.0)
        {
          goto LABEL_43;
        }

        goto LABEL_53;
      }

LABEL_41:
      if (v23[4])
      {
        LODWORD(v20) = *(v22 + v23[4]);
        v31 = 1;
        v32 = v30 * v20;
        if (v32 < 0.0)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v31 = 1;
        v32 = v30 * 0.0;
        if (v32 < 0.0)
        {
LABEL_43:
          if (v32 > -4.50359963e15)
          {
            v32 = (((v32 + v32) - 1) / 2);
          }

          v33 = 0.0;
          v34 = v24 >= 0x57;
          if (!*(v14 + 38))
          {
            goto LABEL_46;
          }

          goto LABEL_56;
        }
      }

LABEL_53:
      if (v32 < 4.50359963e15)
      {
        v32 = (((v32 + v32) + 1) >> 1);
      }

      v33 = 0.0;
      v34 = v24 >= 0x57;
      if (!*(v14 + 38))
      {
LABEL_46:
        if (v34)
        {
          if (v23[43])
          {
            v35 = (v22 + v23[43] + *(v22 + v23[43]));
            v36 = (v35 - *v35);
            if (*v36 < 7u)
            {
              goto LABEL_68;
            }

            v37 = v36[3];
            if (!v37)
            {
              goto LABEL_68;
            }
          }

          else
          {
            if (v24 < 0x7D)
            {
              goto LABEL_68;
            }

            v37 = v23[62];
            v35 = *v14;
            if (!v23[62])
            {
              goto LABEL_68;
            }
          }

          goto LABEL_67;
        }

        goto LABEL_68;
      }

LABEL_56:
      if (v34)
      {
        if (v23[43])
        {
          v35 = (v22 + v23[43] + *(v22 + v23[43]));
          v38 = (v35 - *v35);
          if (*v38 < 5u)
          {
            goto LABEL_68;
          }

          v37 = v38[2];
          if (!v37)
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (v24 < 0x7B)
          {
            goto LABEL_68;
          }

          v37 = v23[61];
          v35 = *v14;
          if (!v23[61])
          {
            goto LABEL_68;
          }
        }

LABEL_67:
        LOWORD(v33) = *(v35 + v37);
        v33 = *&v33 + *&v33;
      }

LABEL_68:
      v39 = 0.0;
      if (v31)
      {
        v40 = v23[4];
        if (v40)
        {
          LODWORD(v39) = *(v22 + v40);
          v39 = *&v39;
        }
      }

      v41 = v33 / 65535.0 * v39;
      if (v41 >= 0.0)
      {
        if (v41 < 4.50359963e15)
        {
          v41 = (((v41 + v41) + 1) >> 1);
        }
      }

      else if (v41 > -4.50359963e15)
      {
        v41 = (((v41 + v41) - 1) / 2);
      }

      if (a4 == 1 && v16 > *(a1 + 192))
      {
        v42 = v32;
        if (v32 <= v41)
        {
          v42 = v41;
        }

        v43 = v42 > *(a1 + 200);
      }

      else
      {
        v43 = 0;
      }

      if (sub_3F80(&v89) == 0x7FFFFFFF)
      {
        v44 = sub_5AAC4(&v89);
      }

      else
      {
        v44 = sub_3F80(&v89);
      }

      v45 = v44;
      v85 = sub_4566AC(&v89);
      sub_456544(&v83, v45, &v85);
      *v86 = v83;
      *&v86[8] = v84;
      v46 = *a3;
      if (v9 < 0)
      {
        v47 = -5;
      }

      else
      {
        v47 = 5;
      }

      if (v46 == 0x7FFFFFFF)
      {
        v48 = 0x7FFFFFFF;
      }

      else
      {
        v48 = v9 / 10 + v46 + (((103 * (v47 + v9 % 10)) >> 15) & 1) + ((103 * (v47 + v9 % 10)) >> 10);
      }

      v49 = sub_2D435C(*(a1 + 32), v14[4] & 0xFFFFFFFFFFFFFFLL, v48);
      v50 = sub_763590(a1 + 48, v14);
      v51 = v16 * 0.1;
      v52 = v51 / v82 * 3.6;
      v53 = v51 / v80 * 3.6;
      v54 = *(a1 + 24);
      v55 = sub_44F324(*(a1 + 40));
      if (v43)
      {
        v58 = sub_4503CC(v50, v54, v14, v82, v49, v9, v86, v52, v53, v19 / 1000000000.0, v79 / 1000000000.0, v57, v55, v56);
      }

      else
      {
        v58 = sub_450220(v50, v54, v14, v82, v49, v9, v86, v52, v53, (v79 - v19) / 1000000000.0, v57, v55, v56);
      }

      v83 = v58;
      v84 = v59;
      v85 = sub_4566AC(&v89);
      v60 = sub_4568F8(&v83, &v85);
      v62 = a7;
      v64 = a7[1];
      v63 = a7[2];
      if (v64 >= v63)
      {
        v66 = *a7;
        v67 = v64 - *a7;
        v68 = 0xAAAAAAAAAAAAAAABLL * (v67 >> 2) + 1;
        if (v68 > 0x1555555555555555)
        {
          sub_1794();
        }

        v69 = 0xAAAAAAAAAAAAAAABLL * ((v63 - v66) >> 2);
        if (2 * v69 > v68)
        {
          v68 = 2 * v69;
        }

        if (v69 >= 0xAAAAAAAAAAAAAAALL)
        {
          v70 = 0x1555555555555555;
        }

        else
        {
          v70 = v68;
        }

        if (v70)
        {
          if (v70 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v71 = 4 * (v67 >> 2);
        *v71 = v60;
        *(v71 + 8) = v61;
        v65 = (v71 + 12);
        v72 = (v71 - v67);
        memcpy((v71 - v67), v66, v67);
        *a7 = v72;
        a7[1] = v65;
        a7[2] = 0;
        v62 = a7;
        if (v66)
        {
          operator delete(v66);
        }
      }

      else
      {
        *v64 = v60;
        *(v64 + 2) = v61;
        v65 = v64 + 12;
      }

      v62[1] = v65;
      result = sub_4566B4(&v89);
      if (result)
      {
        result = sub_456B70(v65 - 3, &v89);
        v89 = result;
        v90 = v73;
      }

      v9 += v82;
      ++v13;
      a2 = v75;
    }

    while (v74 != v13);
  }

  return result;
}

void sub_FAB900(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

unint64_t sub_FAB96C(uint64_t a1, _DWORD *a2, int *a3, int a4, char a5)
{
  v10 = sub_4566AC((a2 + 2));
  v24 = v10;
  if (sub_456A78(a3))
  {
    if (a2[8] == 0x7FFFFFFF)
    {
      if (SHIDWORD(v10) >= *(a1 + 164) + *a3)
      {
        v11 = *(a1 + 164) + *a3;
      }

      else
      {
        v11 = HIDWORD(v10);
      }

      v12 = sub_3F80(a2 + 2);
      if (v11 <= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

LABEL_30:
      sub_456544(&v25, v13, &v24);
      return v25;
    }

    v15 = sub_3F80((*(a1 + 40) + 320));
    v16 = a2[8];
    if (a4)
    {
      v17 = *(a1 + 160);
    }

    else
    {
      v17 = 0;
    }

    v18 = v16 - v10 - v17;
    if (a5)
    {
      v19 = *a3;
      if (*a2 > *(a1 + 168) && v16 <= *(a1 + 160) + v15)
      {
        v20 = *(a1 + 176) * (v19 - v10);
        if (v20 >= 0.0)
        {
          if (v20 >= 4.50359963e15)
          {
            goto LABEL_23;
          }

          v21 = (v20 + v20) + 1;
        }

        else
        {
          if (v20 <= -4.50359963e15)
          {
            goto LABEL_23;
          }

          v21 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
        }

        v20 = (v21 >> 1);
LABEL_23:
        if (v18 >= v20)
        {
          v18 = v20;
        }
      }
    }

    else
    {
      v19 = *a3;
    }

    if (v18 <= *(a1 + 164))
    {
      v18 = *(a1 + 164);
    }

    v22 = v18 + v19;
    if (SHIDWORD(v10) >= v22)
    {
      v13 = v22;
    }

    else
    {
      v13 = HIDWORD(v10);
    }

    goto LABEL_30;
  }

  v25 = sub_456560(&v24);
  v26 = v14;
  return v25;
}

unint64_t sub_FABB10(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (*(a1 + 212))
  {
    v5 = sub_4470E4(a3);
    v6 = *(a1 + 212);
    v7 = v5 % v6;
    v8 = v6 + v5 - v5 % v6;
    if (v7)
    {
      v5 = v8;
    }

    sub_447004(v5, *(a1 + 8), v13);
    if (sub_456784(a3, v13))
    {
      v9 = v13;
    }

    else
    {
      v9 = a3;
    }

    v14 = *v9;
    v15 = *(v9 + 2);
    v10 = *a1;
    v11 = sub_3F80(&v14);
    sub_A2464(v10, v11);
    sub_A86E4(*a1);
  }

  return a2;
}

uint64_t sub_FABC0C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  *(a2 + 32) = 0;
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  *(v6 + 48) = *(a2 + 48);
  v9 = 56 * v2 + 56;
  v10 = *a1;
  v11 = a1[1];
  v12 = v6 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = v6 + *a1 - v11;
    do
    {
      v15 = *v13;
      *(v14 + 8) = *(v13 + 2);
      *v14 = v15;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 16) = *(v13 + 1);
      *(v14 + 32) = v13[4];
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = 0;
      v16 = v13[5];
      *(v14 + 48) = *(v13 + 12);
      *(v14 + 40) = v16;
      v13 += 7;
      v14 += 56;
    }

    while (v13 != v11);
    do
    {
      v17 = v10[2];
      if (v17)
      {
        v10[3] = v17;
        operator delete(v17);
      }

      v10 += 7;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void *sub_FABDCC(void *a1)
{
  v2 = 204;
  do
  {
    v3 = &a1[v2];
    v2 -= 6;
    v4 = *(v3 - 3);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = v3 - 5;
      do
      {
        if ((*(a1[v2] + v6) & 0x80000000) == 0)
        {
          v8 = *v7 + v5;
          v9 = *(v8 + 16);
          if (v9)
          {
            *(v8 + 24) = v9;
            operator delete(v9);
            v4 = *(v3 - 3);
          }
        }

        ++v6;
        v5 += 40;
      }

      while (v6 != v4);
      operator delete(a1[v2]);
      a1[v2] = &unk_2290750;
      *(v3 - 1) = 0;
      *(v3 - 4) = 0;
      *(v3 - 3) = 0;
      *v7 = 0;
    }
  }

  while (v2 != 108);
  sub_360988((a1 + 12));
  v10 = a1[9];
  if (v10)
  {
    a1[10] = v10;
    operator delete(v10);
  }

  v11 = a1[5];
  if (v11)
  {
    v12 = a1[6];
    v13 = a1[5];
    if (v12 != v11)
    {
      do
      {
        v15 = *(v12 - 9);
        if (v15)
        {
          v16 = *(v12 - 8);
          v17 = *(v12 - 9);
          if (v16 != v15)
          {
            do
            {
              if (*(v16 - 1) < 0)
              {
                operator delete(*(v16 - 3));
              }

              v16 -= 6;
            }

            while (v16 != v15);
            v17 = *(v12 - 9);
          }

          *(v12 - 8) = v15;
          operator delete(v17);
        }

        v18 = v12 - 12;
        v19 = *(v12 - 12);
        if (v19)
        {
          v20 = *(v12 - 11);
          v14 = *(v12 - 12);
          if (v20 != v19)
          {
            do
            {
              v21 = *(v20 - 3);
              if (v21)
              {
                *(v20 - 2) = v21;
                operator delete(v21);
              }

              v20 -= 48;
            }

            while (v20 != v19);
            v14 = *v18;
          }

          *(v12 - 11) = v19;
          operator delete(v14);
        }

        v12 -= 12;
      }

      while (v18 != v11);
      v13 = a1[5];
    }

    a1[6] = v11;
    operator delete(v13);
  }

  return a1;
}

char **sub_FABF74(char **a1)
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
        v5 = *(v3 - 5);
        if (v5)
        {
          *(v3 - 4) = v5;
          operator delete(v5);
        }

        v3 -= 56;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_FABFE8()
{
  byte_27C01BF = 3;
  LODWORD(qword_27C01A8) = 5136193;
  byte_27C01D7 = 3;
  LODWORD(qword_27C01C0) = 5136194;
  byte_27C01EF = 3;
  LODWORD(qword_27C01D8) = 5136195;
  byte_27C0207 = 15;
  strcpy(&qword_27C01F0, "vehicle_mass_kg");
  byte_27C021F = 21;
  strcpy(&xmmword_27C0208, "vehicle_cargo_mass_kg");
  byte_27C0237 = 19;
  strcpy(&qword_27C0220, "vehicle_aux_power_w");
  byte_27C024F = 15;
  strcpy(&qword_27C0238, "dcdc_efficiency");
  strcpy(&qword_27C0250, "drive_train_efficiency");
  HIBYTE(word_27C0266) = 22;
  operator new();
}

void sub_FAC1C4(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C0266) < 0)
  {
    sub_21E5E08();
  }

  sub_21E5E14();
  _Unwind_Resume(a1);
}

void sub_FAC1E4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0x8000000080000000;
  *(a1 + 16) = 0;
  *(a1 + 18) = 0;
  *(a1 + 24) = 0xBFF0000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  __asm { FMOV            V1.2D, #1.0 }

  *(a1 + 72) = _Q1;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = -1;
  *(a1 + 128) = 0;
  *(a1 + 136) = xmmword_22AEA70;
  *(a1 + 152) = 0x7FFFFFFF;
  *(a1 + 160) = xmmword_22AEA50;
  *(a1 + 176) = 0x8000000080000000;
  *(a1 + 184) = xmmword_22AEA70;
  *(a1 + 200) = 0x7FFFFFFF;
  *(a1 + 208) = xmmword_22AEA50;
  *(a1 + 224) = 0x8000000080000000;
  memset_pattern16((a1 + 232), &unk_22AEA80, 0x48uLL);
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0xBFF0000000000000;
  *(a1 + 328) = sub_3AF144(a2);
  *(a1 + 336) = sub_3B1AF0(a2);
  *(a1 + 344) = sub_3B1348(a2);
  *(a1 + 352) = sub_3AF6B4(a2);
  *(a1 + 360) = sub_3B1090(a2);
  sub_3318(a1 + 368);
  *(a1 + 416) = -1;
  HIBYTE(v12[2]) = 19;
  strcpy(v12, "TrafficDayOverrides");
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  v10 = sub_3AEC94(a2, v12, __p);
  v11 = *(a1 + 352);
  *(a1 + 424) = *(a1 + 328);
  *(a1 + 440) = v11;
  *(a1 + 448) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0;
  *(a1 + 480) = -1;
  *(a1 + 488) = 0;
  *(a1 + 496) = -1;
  sub_FAFD90(a1 + 424, v10);
}

void sub_FAC568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_5C010(&a13);
  sub_FB22A4(v29 + 96);
  sub_3874(v27 + 368);
  sub_FB232C(v28);
  _Unwind_Resume(a1);
}

void sub_FAC618(BOOL *a1, void *a2)
{
  v6 = 7;
  strcpy(__p, "use_hsp");
  *a1 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = 9;
  strcpy(__p, "live_feed");
  v4 = sub_5F5AC(a2, __p);
  sub_FACA68(a1 + 4, v4);
}

void sub_FAC810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FAC840(uint64_t a1, void *a2)
{
  v14 = 15;
  strcpy(__p, "fallback_speeds");
  v4 = sub_5F680(a2, __p);
  v12 = a1;
  if (v14 < 0)
  {
    v7 = v4;
    operator delete(*__p);
    v5 = *v7;
    v6 = v7[1];
    if (*v7 == v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *v4;
    v6 = v4[1];
    if (*v4 == v6)
    {
      goto LABEL_12;
    }
  }

  do
  {
    if (*(v5 + 8) != 5)
    {
      sub_5AF20();
    }

    v8 = *v5;
    v14 = 3;
    strcpy(__p, "frc");
    v9 = sub_352E94(v8, __p);
    if (v14 < 0)
    {
      operator delete(*__p);
    }

    v14 = 5;
    strcpy(__p, "speed");
    v10 = sub_63D34(v8, __p);
    if (v14 < 0)
    {
      v11 = v10;
      operator delete(*__p);
      v10 = v11;
    }

    *(v12 + 232 + 8 * v9) = v10;
    v5 += 16;
  }

  while (v5 != v6);
LABEL_12:
  v14 = 13;
  strcpy(__p, "walking_speed");
  *(v12 + 304) = sub_63D34(a2, __p);
  if (v14 < 0)
  {
    operator delete(*__p);
  }

  v14 = 20;
  strcpy(__p, "ferry_fallback_speed");
  *(v12 + 312) = sub_63D34(a2, __p);
  if (v14 < 0)
  {
    operator delete(*__p);
  }
}

void sub_FACA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FACA68(BOOL *a1, void *a2)
{
  v3[7] = 7;
  strcpy(__p, "enabled");
  *a1 = sub_5F9D0(a2, __p);
  if ((v3[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_FACC08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FACE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FACF60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FAD764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_5BF68(&a12);
  sub_5BF68(&a15);
  _Unwind_Resume(a1);
}

void sub_FAD814(double *a1, void *a2)
{
  v6 = 7;
  strcpy(__p, "enabled");
  *a1 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = 11;
  strcpy(__p, "onset_flank");
  v4 = sub_5F5AC(a2, __p);
  sub_FAD950(a1 + 1, v4);
}

void sub_FAD92C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FAD950(double *a1, void *a2)
{
  v5 = 9;
  strcpy(__p, "tolerance");
  *a1 = sub_63D34(a2, __p);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  strcpy(__p, "acceleration_threshold");
  v5 = 22;
  a1[1] = sub_63D34(a2, __p) * 60.0;
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_FADB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FADB70(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (*(a1 + 4) == 1)
  {
    v5 = *a3;
    v6 = a3[1];
    if (*a3 != v6)
    {
      v7 = (v6 - v5) >> 3;
      if (*(a1 + 32) < v7)
      {
        v7 = *(a1 + 32);
      }

      v6 = v5 + 8 * v7;
    }

    v17 = v3;
    v18 = v4;
    v8 = *(a1 + 328);
    if (*(a1 + 17) == 1)
    {
      v15 = v5;
      v16 = v6;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v11 = sub_2BC6DC(v8, a2, &v15);
    v14 = *&v11 > -1 && ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v11 - 1) < 0xFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFLL) == 0;
    if ((!v14 || v11 <= 0.0) && *(a1 + 5) == 1)
    {
      sub_FADC50(a1, a2);
    }
  }
}

double sub_FADC50(uint64_t a1, unint64_t a2)
{
  v2 = -1.0;
  if (*(a1 + 4) == 1)
  {
    __p = 0;
    v27 = 0;
    v28 = 0;
    sub_351010(*(a1 + 336), a2, &__p);
    if (v27 != __p)
    {
      v4 = 0;
      v5 = 0;
      v6 = (v27 - __p) >> 3;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v10 = sub_3E37C0(*(a1 + 336), *(__p + v4));
        v11 = *(a1 + 328);
        v24 = 0;
        v25 = 0;
        v12 = sub_2BC6DC(v11, v10, &v24);
        v13 = v12;
        v14 = (*&v12 & 0x7FFFFFFFFFFFFFFFLL) == 0;
        if ((*&v12 - 1) < 0xFFFFFFFFFFFFFLL)
        {
          v14 = 1;
        }

        v16 = ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v12 >= 0.0 || v14;
        if (v12 > 0.0)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        if ((v17 & 1) == 0)
        {
          v18 = sub_3E37C0(*(a1 + 336), *(__p + v4));
          v24 = 0;
          v25 = 0;
          v13 = sub_FAE60C(a1, v18, (a1 + 368), &v24);
        }

        v19 = sub_2B51D8(*(a1 + 352), *(__p + v4) | (*(__p + v4 + 4) << 32));
        v20 = (v19 - *v19);
        v21 = 0.0;
        if (*v20 >= 9u)
        {
          v22 = v20[4];
          if (v22)
          {
            LODWORD(v21) = *(v19 + v22);
            v21 = *&v21;
          }
        }

        v5 |= v17;
        v9 = v21 / 100.0;
        v7 = v7 + v9 / (v13 / 3.6);
        v8 = v8 + v9;
        v4 += 8;
        --v6;
      }

      while (v6);
      if (((v7 != 0.0) & v5) != 0)
      {
        v2 = v8 / v7 * 3.6;
      }
    }

    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  return v2;
}

void sub_FADE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_FADE5C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    v5 = sub_2B51D8(*(a1 + 352), a2 & 0xFFFFFFFFFFFFLL);
    v6 = (v5 - *v5);
    v7 = *v6;
    if ((a2 & 0x4000000000000000) != 0)
    {
      if (v7 < 0x9B)
      {
        return *(a1 + 304);
      }

      v14 = v6[77];
      if (!v14 || (*(v5 + v14) & 1) == 0)
      {
        return *(a1 + 304);
      }
    }

    else
    {
      if (v7 < 0x9B)
      {
        return *(a1 + 304);
      }

      v8 = v6[77];
      if (!v8 || (*(v5 + v8) & 2) == 0)
      {
        return *(a1 + 304);
      }
    }

    v15 = sub_2B51D8(*(a1 + 352), a2 & 0xFFFFFFFFFFFFLL);
    v16 = (v15 - *v15);
    if (*v16 >= 0x2Fu)
    {
      v17 = v16[23];
      if (v17)
      {
        v18 = *(v15 + v17);
        v19 = v18 > 0x2D;
        v20 = (1 << v18) & 0x208040000000;
        if (!v19 && v20 != 0)
        {
          return *(a1 + 320);
        }
      }
    }

    v28 = sub_2B51D8(*(a1 + 352), a2 & 0xFFFFFFFFFFFFLL);
    v29 = (v28 - *v28);
    if (*v29 < 0x9Bu || (v30 = v29[77]) == 0 || (*(v28 + v30) & 8) == 0)
    {
      result = sub_35F94C(*(a1 + 344), a2);
      v33 = *&result > -1 && ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&result - 1) < 0xFFFFFFFFFFFFFLL || (*&result & 0x7FFFFFFFFFFFFFFFLL) == 0;
      if (!v33 || result <= 0.0)
      {
        v34 = a1 + 232;
        v35 = sub_2B51D8(*(a1 + 352), a2 & 0xFFFFFFFFFFFFLL);
        v36 = (v35 - *v35);
        if (*v36 < 0x1Bu)
        {
          return *v34;
        }

        else
        {
          v37 = v36[13];
          if (v37)
          {
            v37 = *(v35 + v37);
          }

          return *(v34 + 8 * v37);
        }
      }

      return result;
    }

    return *(a1 + 312);
  }

  v4 = *(a1 + 336);
  v40 = a2;
  sub_363ADC(v4 + 3896, &v40, v38);
  if (v38[0])
  {
    if (*(v39 + 18))
    {
      return *(a1 + 320);
    }
  }

  else
  {
    sub_363C44(v4, v40);
    if ((v9 & 0x10000) != 0)
    {
      return *(a1 + 320);
    }
  }

  result = sub_35F94C(*(a1 + 344), a2);
  v13 = *&result > -1 && ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&result - 1) < 0xFFFFFFFFFFFFFLL || (*&result & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v13 || result <= 0.0)
  {
    v22 = *(a1 + 336);
    v40 = a2;
    sub_363ADC(v22 + 3896, &v40, v38);
    if (v38[0])
    {
      if (*(v39 + 19))
      {
        return *(a1 + 312);
      }

LABEL_39:
      v24 = sub_FA4F1C(*(a1 + 336), a2);
      v25 = sub_2B51D8(*(a1 + 352), v24 & 0xFFFFFFFFFFFFLL);
      v26 = (v25 - *v25);
      if (*v26 < 0x1Bu)
      {
        v27 = 0;
      }

      else
      {
        v27 = v26[13];
        if (v27)
        {
          v27 = *(v25 + v27);
        }
      }

      return *(a1 + 232 + 8 * v27);
    }

    sub_363C44(v22, v40);
    if ((v23 & 0x1000000) == 0)
    {
      goto LABEL_39;
    }

    return *(a1 + 312);
  }

  return result;
}

unint64_t sub_FAE19C(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 120) > sub_3E8EF0(*(a1 + 344), a2) || (v4 = sub_2BC7A8(*(a1 + 328), a2), *(a1 + 122) <= v4))
  {
    sub_FAE3C0(a1, a2);
    v7 = v6;
    return sub_FAE238(&v7, (a1 + 48));
  }

  else
  {
    v7 = v4;
    return sub_FAE238(&v7, (a1 + 96));
  }
}

unint64_t sub_FAE238(double *a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a2;
  if (*a1 <= v4)
  {
    return *(v3 + 1);
  }

  v5 = a2[1];
  v6 = (v5 - v3) >> 4;
  if (v6 >= 1)
  {
    if (v5 - v3 != 16)
    {
      do
      {
        v7 = (4 * v6) & 0xFFFFFFFFFFFFFFF0;
        _X13 = v3 + v7;
        __asm { PRFM            #0, [X13] }

        v14 = &v3[2 * (v6 >> 1)];
        _X12 = v14 + v7;
        __asm { PRFM            #0, [X12] }

        if (*v14 >= v2)
        {
          v17 = 0;
        }

        else
        {
          v17 = v6 >> 1;
        }

        v3 += 2 * v17;
        v6 -= v6 >> 1;
      }

      while (v6 > 1);
      v4 = *v3;
    }

    v3 += 2 * (v4 < v2);
  }

  if (v5 == v3)
  {
    return *(v5 - 1);
  }

  v18 = *(v3 - 2);
  if (v18 == *v3)
  {
    return *(v3 + 1);
  }

  v20 = (v2 - v18) / (*v3 - v18);
  v21 = *(v3 + 2);
  v22 = *(v3 + 3);
  v24 = *(v3 - 2);
  v23 = *(v3 - 1);
  v25 = v21 - v24;
  v26 = v22 - v23;
  v27 = v20 * v25;
  if (v27 >= 0.0)
  {
    if (v27 >= 4.50359963e15)
    {
      goto LABEL_20;
    }

    v28 = (v27 + v27) + 1;
  }

  else
  {
    if (v27 <= -4.50359963e15)
    {
      goto LABEL_20;
    }

    v28 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
  }

  v27 = (v28 >> 1);
LABEL_20:
  v29 = v20 * v26;
  if (v29 >= 0.0)
  {
    if (v29 < 4.50359963e15)
    {
      v30 = (v29 + v29) + 1;
      goto LABEL_25;
    }
  }

  else if (v29 > -4.50359963e15)
  {
    v30 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
LABEL_25:
    v29 = (v30 >> 1);
  }

  return (v24 + v27) | ((v23 + v29) << 32);
}

void sub_FAE3C0(uint64_t a1, unint64_t a2)
{
  if (sub_38EC((a1 + 368)) && (a2 & 0x8000000000000000) == 0)
  {
    sub_FADE5C(a1, a2);
    if (*(a1 + 40) == 1)
    {
      v4 = *(a1 + 336);
      v16[0] = a2;
      sub_363ADC(v4 + 3896, v16, v15);
      if (v15[0])
      {
        LOBYTE(v5) = *(v15[3] + 17);
      }

      else
      {
        sub_363C44(v4, v16[0]);
        v5 = (v6 >> 8) & 1;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }

    v7 = *(a1 + 360);
    LOBYTE(v16[0]) = sub_FAE7FC(a1 + 424, a2, a1 + 368);
    v8 = sub_41E8(a1 + 368);
    v15[0] = 0;
    v15[1] = 0;
    sub_FAE9C8(v7, a2, v16, v8, v5 & 1, v15);
    if (*(a1 + 4) == 1)
    {
      v9 = *(a1 + 328);
      if (*(a1 + 17))
      {
        v10 = v15;
      }

      else
      {
        v10 = v16;
      }

      *v10 = 0;
      v10[1] = 0;
      v11 = sub_2BC6DC(v9, a2, v10);
      v14 = *&v11 > -1 && ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v11 - 1) < 0xFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFLL) == 0;
      if ((!v14 || v11 <= 0.0) && *(a1 + 5) == 1)
      {
        sub_FADC50(a1, a2);
      }
    }
  }
}

double sub_FAE60C(uint64_t a1, unint64_t a2, _DWORD *a3, uint64_t **a4)
{
  if ((a2 & 0x8000000000000000) != 0 || !sub_38EC(a3) || (*a1 & 1) == 0)
  {
    return sub_FADE5C(a1, a2);
  }

  v8 = *(a1 + 336);
  v28 = a2;
  sub_363ADC(v8 + 3896, &v28, &v25);
  if (v25)
  {
    if (*(v27 + 18))
    {
      return *(a1 + 320);
    }
  }

  else
  {
    sub_363C44(v8, v28);
    if ((v10 & 0x10000) != 0)
    {
      return *(a1 + 320);
    }
  }

  v11 = sub_FAE7FC(a1 + 424, a2, a3);
  v24 = v11;
  if (*(a1 + 40) != 1)
  {
    LOBYTE(v12) = 0;
    goto LABEL_16;
  }

  if (*(a1 + 41) == 1)
  {
    LOBYTE(v12) = 0;
    if (!v11 || v11 == 6)
    {
LABEL_16:
      v14 = *a4;
      v15 = a4[1];
      if (*a4 == v15)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }
  }

  v13 = *(a1 + 336);
  v28 = a2;
  sub_363ADC(v13 + 3896, &v28, &v25);
  if (v25)
  {
    LOBYTE(v12) = *(v27 + 17);
    v14 = *a4;
    v15 = a4[1];
    if (*a4 == v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_363C44(v13, v28);
    v12 = (v23 >> 8) & 1;
    v14 = *a4;
    v15 = a4[1];
    if (*a4 == v15)
    {
      goto LABEL_20;
    }
  }

LABEL_17:
  v16 = v15 - v14;
  if (*(a1 + 32) < v16)
  {
    v16 = *(a1 + 32);
  }

  v15 = &v14[v16];
LABEL_20:
  v17 = *(a1 + 16);
  v18 = *(a1 + 360);
  v19 = sub_41E8(a3);
  if (v17 == 1)
  {
    v25 = *a4;
    v26 = v15;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  result = sub_FAE9C8(v18, a2, &v24, v19, v12 & 1, &v25);
  v22 = *&result > -1 && ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&result - 1) < 0xFFFFFFFFFFFFFLL || (*&result & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v22 || result <= 0.0)
  {
    return sub_FADE5C(a1, a2);
  }

  return result;
}

uint64_t sub_FAE7FC(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = sub_FA4F1C(*(a1 + 8), a2);
  v6 = v5;
  sub_FB246C(a1, v5 & 0xFFFFFFFFFFFFLL);
  if (*(a1 + 24))
  {
    return 0;
  }

  if (*(a1 + 25) == 1)
  {
    v8 = *(a1 + 56);
    if (v8 != 0xFFFF)
    {
      v9 = sub_2BF8F4(*a1, v6, v8);
      if (sub_39075C(v9))
      {
        return v9[6];
      }
    }
  }

  if (*(a1 + 64) < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - *(a1 + 32)) >> 4))
  {
    v10 = sub_40D0(a3);
    v11 = *(a1 + 72);
    if (v11 != -1 && v10 == v11)
    {
      return *(a1 + 76);
    }

    v12 = *(a1 + 32) + 48 * *(a1 + 64);
    v13 = *(v12 + 24);
    v14 = *(v12 + 32);
    v15 = (v14 - v13) >> 3;
    if (v15 >= 1)
    {
      if (v14 - v13 != 8)
      {
        do
        {
          v16 = (2 * v15) & 0xFFFFFFFFFFFFFFF8;
          _X14 = v13 + v16;
          __asm { PRFM            #0, [X14] }

          v23 = &v13[2 * (v15 >> 1)];
          _X13 = v23 + v16;
          __asm { PRFM            #0, [X13] }

          if (*v23 >= v10)
          {
            v26 = 0;
          }

          else
          {
            v26 = v15 >> 1;
          }

          v13 += 2 * v26;
          v15 -= v15 >> 1;
        }

        while (v15 > 1);
      }

      v13 += 2 * (*v13 < v10);
    }

    if (v13 != v14 && v10 == *v13)
    {
      v27 = *v13;
      *(a1 + 76) = *(v13 + 4);
      *(a1 + 72) = v27;
      if (v27 != -1)
      {
        return *(a1 + 76);
      }
    }
  }

  return sub_40A8(a3);
}

double sub_FAE9C8(uint64_t a1, unint64_t a2, unsigned __int8 *a3, int a4, int a5, uint64_t **a6)
{
  v6 = -1.0;
  if ((a2 & 0x8000000000000000) != 0)
  {
    return v6;
  }

  if (!a2)
  {
    return v6;
  }

  v13 = sub_2B3284(a1, a2, 1);
  if (!v13)
  {
    return v6;
  }

  v14 = &v13[-*v13];
  v15 = *v14;
  if ((a2 & 0x4000000000000000) != 0)
  {
    if (v15 < 5)
    {
      return v6;
    }

    v16 = *(v14 + 2);
    if (!v16)
    {
      return v6;
    }
  }

  else
  {
    if (v15 < 7)
    {
      return v6;
    }

    v16 = *(v14 + 3);
    if (!v16)
    {
      return v6;
    }
  }

  v17 = &v13[v16 + *&v13[v16]];
  if (*v17 <= (HIDWORD(a2) & 0x3FFFFFFFu))
  {
    return v6;
  }

  v18 = sub_3EC480(a1, (&v17[(HIDWORD(a2) & 0x3FFFFFFF) + 1] + v17[(HIDWORD(a2) & 0x3FFFFFFF) + 1]), a5, a6);
  if (!v18)
  {
    return v6;
  }

  v21 = *v18;
  if (!v21)
  {
    return v6;
  }

  if (v21 == 1)
  {
    if ((*(a1 + 3874) & 1) == 0)
    {
      LOWORD(v19) = *(v18 + 3);
      return v19 / 100.0;
    }

    return v6;
  }

  v22 = (1440 * (*a3 + 6 - 7 * ((9363 * (*a3 + 6)) >> 16))) + a4;
  v23 = (v18 + 4);
  v24 = (v18 + 4);
  v25 = *v18;
  do
  {
    v26 = (v24 + ((2 * v25) & 0x3FFFFFFFCLL));
    v28 = *v26;
    v27 = v26 + 2;
    v29 = v25 >> 1;
    v25 += ~(v25 >> 1);
    if (v22 < v28)
    {
      v25 = v29;
    }

    else
    {
      v24 = v27;
    }
  }

  while (v25);
  v30 = &v23[2 * v21];
  if (v24 == v30)
  {
    v31 = v24 - 2;
  }

  else
  {
    if (v24 != v23)
    {
      v30 = v24;
    }

    v31 = v30 - 2;
    if (v24 != v23)
    {
      goto LABEL_28;
    }
  }

  v24 = (v18 + 4);
LABEL_28:
  v32 = *v31;
  if (v22 < v32)
  {
    v32 -= 10080;
  }

  v33 = *v24;
  if (v22 > v33)
  {
    v33 += 10080;
  }

  LOWORD(v19) = v31[1];
  LOWORD(v20) = v24[1];
  return v19 / 100.0 + (v20 / 100.0 - v19 / 100.0) * (v22 - v32) / (v33 - v32);
}

char *sub_FAEBD4(uint64_t a1, unint64_t a2, _DWORD *a3, unint64_t *a4)
{
  result = sub_38EC(a3);
  if (result)
  {
    result = 0;
    if (*a1 == 1 && (a2 & 0x8000000000000000) == 0)
    {
      v8 = *(a1 + 336);
      v15 = a2;
      sub_363ADC(v8 + 3896, &v15, v14);
      if (v14[0])
      {
        if (*(v14[3] + 18))
        {
          return 0;
        }
      }

      else
      {
        sub_363C44(v8, v15);
        if ((v9 & 0x10000) != 0)
        {
          return 0;
        }
      }

      v10 = *a4;
      v11 = a4[1];
      v14[0] = v11;
      if (v10 != v11)
      {
        v12 = (v11 - v10) >> 3;
        if (*(a1 + 32) < v12)
        {
          v12 = *(a1 + 32);
        }

        v14[0] = (v10 + 8 * v12);
      }

      v13 = *(a1 + 360);
      v15 = v10;
      return sub_FAECDC(v13, a2, &v15, v14);
    }
  }

  return result;
}

char *sub_FAECDC(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  result = 0;
  if ((a2 & 0x8000000000000000) != 0)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  result = sub_2B3284(a1, a2, 1);
  if (!result)
  {
    return result;
  }

  v9 = &result[-*result];
  v10 = *v9;
  if ((a2 & 0x4000000000000000) != 0)
  {
    if (v10 < 5)
    {
      return 0;
    }

    v11 = *(v9 + 2);
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (v10 < 7)
    {
      return 0;
    }

    v11 = *(v9 + 3);
    if (!v11)
    {
      return 0;
    }
  }

  v12 = v11;
  v13 = &result[v11];
  v14 = *v13;
  v15 = &v13[v14];
  if (*v15 <= (HIDWORD(a2) & 0x3FFFFFFFu))
  {
    return 0;
  }

  v16 = HIDWORD(a2) & 0x3FFFFFFF;
  v17 = v15[v16 + 1];
  v18 = (&v15[v16 + 1] + v17);
  v19 = (v18 - *v18);
  if (*v19 < 0xDu)
  {
    return 0;
  }

  v20 = v19[6];
  if (!v19[6])
  {
    return 0;
  }

  v21 = (v18 + v20);
  v22 = *v21;
  v23 = (v21 + v22);
  v24 = v23 + 1;
  v25 = *v23;
  v26 = &v23[v25];
  v27 = (v26 + 1);
  if (v25)
  {
    v28 = *a4;
    if (*a3 == *a4)
    {
      return (&result[4 * v25 + 8 + v16 * 4 + v12 + v22 + v20 + v17 + v14] != v27);
    }

    while (1)
    {
      v31 = (v24 + *v24);
      v32 = (v31 - *v31);
      v33 = *v32;
      if (v33 < 9)
      {
        LODWORD(v34) = 0;
      }

      else
      {
        v34 = v32[4];
        if (v32[4])
        {
          LODWORD(v34) = *(v31 + v34);
        }
      }

      if (*(a1 + 3872) == v34 && (v33 < 0xB || !v32[5] || !*(v31 + v32[5])))
      {
        v35 = v31 + v32[6];
        v36 = *a3;
        while (__PAIR64__(*(v35 + 2), *v35) != __PAIR64__(WORD2(*v36), *v36) || ((*v36 & 0x4000000000000000) != 0) == (v35[6] == 0))
        {
          if (++v36 == v28)
          {
            goto LABEL_19;
          }
        }

        if (v36 != v28)
        {
          break;
        }
      }

LABEL_19:
      v29 = (v24 + 1);
      if (v24++ == v26)
      {
        return (v29 != v27);
      }
    }
  }

  v29 = v24;
  return (v29 != v27);
}

void sub_FAEF14(uint64_t a1, unint64_t a2, unsigned int *a3, uint64_t **a4, uint64_t **a5)
{
  v10 = sub_FADE5C(a1, a2);
  if ((a2 & 0x8000000000000000) == 0 && sub_38EC(a3))
  {
    if (*a1)
    {
      v10 = sub_FAE60C(a1, a2, a3, a4);
      if ((*(a1 + 4) & 1) == 0)
      {
        return;
      }
    }

    else if ((*(a1 + 4) & 1) == 0)
    {
      return;
    }

    if (sub_2BC500(*(a1 + 328)) != 0x7FFFFFFF)
    {
      v11 = sub_FA4F1C(*(a1 + 336), a2);
      v12 = sub_2B51D8(*(a1 + 352), v11 & 0xFFFFFFFFFFFFLL);
      v13 = (v12 - *v12);
      if (*v13 >= 0xDu && (v14 = v13[6]) != 0)
      {
        v15 = *(v12 + v14);
        if (!sub_38EC((a1 + 368)))
        {
          goto LABEL_12;
        }
      }

      else
      {
        v15 = 0;
        if (!sub_38EC((a1 + 368)))
        {
LABEL_12:
          v16 = sub_2BC500(*(a1 + 328));
          v17 = *(a1 + 12);
          v18 = v17 / 10;
          v19 = v17 % 10;
          if (v17 < 0)
          {
            v20 = -5;
          }

          else
          {
            v20 = 5;
          }

          v21 = v18 + v16 + (((103 * (v20 + v19)) >> 15) & 1) + ((103 * (v20 + v19)) >> 10);
          sub_320EC8(*(a1 + 352), v11 & 0xFFFFFFFFFFFFLL, v65);
          sub_386C(&v63, v21, v65);
        }
      }

      if (v15 != *(a1 + 416))
      {
        sub_320EC8(*(a1 + 352), v11 & 0xFFFFFFFFFFFFLL, &v63);
        sub_3914(a1 + 368, &v63);
        sub_25F00(&v63);
        *(a1 + 416) = v15;
      }

      v22 = sub_3F80(a3);
      v23 = sub_3F80((a1 + 368));
      v24 = -1.0;
      v25 = -1.0;
      if (*(a1 + 4) == 1)
      {
        v26 = *(a1 + 328);
        v27 = *(a1 + 17) ? &v63 : v65;
        *v27 = 0;
        v27[1] = 0;
        v28 = sub_2BC6DC(v26, a2, v27);
        v25 = v28;
        v29 = *&v28 <= -1 || ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
        v30 = v29 && (*&v28 - 1) >= 0xFFFFFFFFFFFFFLL;
        v31 = !v30 || (*&v28 & 0x7FFFFFFFFFFFFFFFLL) == 0;
        if ((!v31 || v28 <= 0.0) && *(a1 + 5) == 1)
        {
          v25 = sub_FADC50(a1, a2);
        }
      }

      if (*(a1 + 4) == 1)
      {
        v32 = *a5;
        v33 = a5[1];
        if (*a5 != v33)
        {
          v34 = v33 - v32;
          if (*(a1 + 32) < v34)
          {
            v34 = *(a1 + 32);
          }

          v33 = &v32[v34];
        }

        v35 = *(a1 + 328);
        if (*(a1 + 17) == 1)
        {
          v63 = *a5;
          v64 = v33;
        }

        else
        {
          v63 = 0;
          v64 = 0;
        }

        v36 = sub_2BC6DC(v35, a2, &v63);
        v24 = v36;
        v39 = *&v36 > -1 && ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v36 - 1) < 0xFFFFFFFFFFFFFLL || (*&v36 & 0x7FFFFFFFFFFFFFFFLL) == 0;
        if ((!v39 || v36 <= 0.0) && *(a1 + 5) == 1)
        {
          v24 = sub_FADC50(a1, a2);
        }
      }

      v42 = *&v25 > -1 && ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v25 - 1) < 0xFFFFFFFFFFFFFLL || (*&v25 & 0x7FFFFFFFFFFFFFFFLL) == 0;
      if (v42 && v25 > 0.0)
      {
        v43 = *&v24 <= -1 || ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
        v44 = v43 && (*&v24 - 1) >= 0xFFFFFFFFFFFFFLL;
        v45 = !v44 || (*&v24 & 0x7FFFFFFFFFFFFFFFLL) == 0;
        v46 = !v45 || v24 <= 0.0;
        v47 = v46 ? v25 : v24;
        v48 = sub_FAF5B0(a1, a2, a3, v47, v10);
        v49 = *&v48 <= -1 || ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
        v50 = v49 && (*&v48 - 1) >= 0xFFFFFFFFFFFFFLL;
        if (v50 && (*&v48 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v52 = sub_FAE19C(a1, a2);
          v53 = sub_2BC500(*(a1 + 328));
          v54 = *(a1 + 8);
          v55 = v54 / -10;
          v56 = v54 % 10;
          v57 = v54 < 0 ? -5 : 5;
          if (sub_3F80(a3) >= (v55 + v53 + (((-103 * (v57 + v56)) >> 15) & 1) + ((-103 * (v57 + v56)) >> 10)))
          {
            v58 = v22 - v23;
            v59 = 10 * (v22 - v23);
            if (v59 < SHIDWORD(v52))
            {
              v63 = 0;
              v64 = 0;
              sub_FAE60C(a1, a2, (a1 + 368), &v63);
              sub_FAE60C(a1, a2, (a1 + 368), a4);
              if (v59 > v52)
              {
                if (v52 < 0)
                {
                  v60 = -5;
                }

                else
                {
                  v60 = 5;
                }

                if (v52 < 0)
                {
                  v62 = -5;
                }

                else
                {
                  v62 = 5;
                }

                v61 = v52 / 10 + (((103 * (v60 + v52 % 10)) >> 15) & 1) + ((103 * (v60 + v52 % 10)) >> 10);
                pow(1.0 - (v58 - v61) / (SHIDWORD(v52) / 10 + (((103 * (SHIDWORD(v52) % 10 + v62)) >> 15) & 1) + ((103 * (SHIDWORD(v52) % 10 + v62)) >> 10) - v61), *(a1 + 72));
              }
            }
          }
        }
      }
    }
  }
}

void sub_FAF580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15)
{
  sub_3874(&a9);
  sub_25F00(&a15);
  _Unwind_Resume(a1);
}

void sub_FAF59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_25F00(va);
  _Unwind_Resume(a1);
}

long double sub_FAF5B0(uint64_t a1, unint64_t a2, unsigned int *a3, double a4, double a5)
{
  v5 = -1.0;
  if (*(a1 + 128) != 1)
  {
    return v5;
  }

  v11 = HIDWORD(a2);
  v12 = -1.0;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v13 = sub_2B3284(*(a1 + 344), a2, 1);
    if (v13)
    {
      v14 = &v13[-*v13];
      v15 = *v14;
      if (a2 >> 62)
      {
        if (v15 < 5)
        {
          goto LABEL_15;
        }

        v16 = *(v14 + 2);
        if (!v16)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v15 < 7)
        {
          goto LABEL_15;
        }

        v16 = *(v14 + 3);
        if (!v16)
        {
          goto LABEL_15;
        }
      }

      v17 = &v13[v16 + *&v13[v16]];
      if (*v17 > (v11 & 0x3FFFFFFF))
      {
        v18 = &v17[4 * (v11 & 0x3FFFFFFF) + 4 + *&v17[4 * (v11 & 0x3FFFFFFF) + 4]];
        v19 = &v18[-*v18];
        if (*v19 >= 0x15u)
        {
          v20 = *(v19 + 10);
          if (v20)
          {
            v21 = *&v18[v20];
            if ((v21 - 1) <= 0xFFFDu)
            {
              v12 = v21 / 100.0;
            }
          }
        }
      }
    }
  }

LABEL_15:
  if (v12 < 0.0 && ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || *&v12 == 0x7FF0000000000000 || a4 < v12)
  {
    return v5;
  }

  v25 = sub_2BC738(*(a1 + 328), a2);
  if (v25 == -9.22337204e18)
  {
    return v5;
  }

  v26 = *(a1 + 144);
  if (v25 >= v26)
  {
    if (v25 <= *(a1 + 192))
    {
      return v5;
    }

    v27 = a1 + 184;
    v28 = sub_35F94C(*(a1 + 344), a2);
    goto LABEL_42;
  }

  v27 = a1 + 136;
  v28 = -1.0;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v29 = sub_2B3284(*(a1 + 344), a2, 1);
    if (v29)
    {
      v30 = &v29[-*v29];
      v31 = *v30;
      if (a2 >> 62)
      {
        if (v31 < 5)
        {
          goto LABEL_42;
        }

        v32 = *(v30 + 2);
        if (!v32)
        {
          goto LABEL_42;
        }

LABEL_37:
        v33 = &v29[v32 + *&v29[v32]];
        if (*v33 > (v11 & 0x3FFFFFFF))
        {
          v34 = &v33[4 * (v11 & 0x3FFFFFFF) + 4 + *&v33[4 * (v11 & 0x3FFFFFFF) + 4]];
          v35 = &v34[-*v34];
          if (*v35 >= 0x13u)
          {
            v36 = *(v35 + 9);
            if (v36)
            {
              v37 = *&v34[v36];
              if ((v37 - 1) <= 0xFFFDu)
              {
                v28 = v37 / 100.0;
              }
            }
          }
        }

        goto LABEL_42;
      }

      if (v31 >= 7)
      {
        v32 = *(v30 + 3);
        if (v32)
        {
          goto LABEL_37;
        }
      }
    }
  }

LABEL_42:
  if (a4 <= v28 * (*v27 + 1.0))
  {
    v38 = (sub_3F88(a1 + 368) - *(v27 + 16)) % 6048000;
    v39 = v38 + (v38 < 0 ? 0x5C4900 : 0);
    v40 = *(a1 + 360);
    v68 = v39 / 864000;
    v66 = 0;
    v67 = 0;
    v41 = sub_FAE9C8(v40, a2, &v68, v39 % 864000 / 600, 0, &v66);
    v42 = (*(v27 + 16) + sub_3F88(a1 + 368)) % 6048000;
    v43 = v42 + (v42 < 0 ? 0x5C4900 : 0);
    v44 = *(a1 + 360);
    v68 = v43 / 864000;
    v66 = 0;
    v67 = 0;
    v45 = sub_FAE9C8(v44, a2, &v68, v43 % 864000 / 600, 0, &v66);
    v46 = v45 < v41;
    if (v25 >= v26)
    {
      v46 = v45 > v41;
    }

    if (v46)
    {
      v47 = v45;
      if (v41 >= v45)
      {
        v48 = v41;
      }

      else
      {
        v48 = v45;
      }

      if (v45 >= v41)
      {
        v47 = v41;
      }

      if (v48 - v47 / v48 >= *(v27 + 24) && v48 - v47 >= *(v27 + 32))
      {
        v49 = sub_3F80(a3);
        v50 = *(a1 + 12) + 10 * (v49 - sub_3F80((a1 + 368)));
        v5 = a5;
        if (v50 <= *(v27 + 44))
        {
          v51 = *(a1 + 344);
          v52 = v25 < v26 ? sub_FAFB90(v51, a2) : sub_FAFC90(v51, a2);
          v5 = -1.0;
          if (v52 != -9.22337204e18)
          {
            v53 = fmax(a4 + v50 / 36000.0 * v52, 0.0);
            v54 = sub_35F94C(*(a1 + 344), a2);
            if (v54 >= v53)
            {
              v54 = v53;
            }

            if (v53 >= v12)
            {
              v5 = v54;
            }

            else
            {
              v5 = v12;
            }

            v55 = *(v27 + 40);
            if (v50 > v55)
            {
              if (v55 < 0)
              {
                v56 = -5;
              }

              else
              {
                v56 = 5;
              }

              v57 = v55 / -10 - ((((103 * (v56 + v55 % 10)) >> 15) & 1) + ((103 * (v56 + v55 % 10)) >> 10));
              v58 = *(v27 + 44);
              v59 = v58 / 10;
              v60 = v58 % 10;
              if (v58 < 0)
              {
                v61 = -5;
              }

              else
              {
                v61 = 5;
              }

              v62 = (((103 * (v61 + v60)) >> 15) & 1) + ((103 * (v61 + v60)) >> 10);
              if (v50 < 0)
              {
                v63 = -5;
              }

              else
              {
                v63 = 5;
              }

              v64 = pow(1.0 - (v50 / 10 + v57 + (((103 * (v63 + v50 % 10)) >> 15) & 1) + ((103 * (v63 + v50 % 10)) >> 10)) / (v59 + v62 + v57), *(a1 + 72));
              return v5 * v64 + a5 * (1.0 - v64);
            }
          }
        }
      }
    }
  }

  return v5;
}

double sub_FAFB90(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return -9.22337204e18;
  }

  v3 = sub_2B3284(a1, a2, 1);
  if (!v3)
  {
    return -9.22337204e18;
  }

  v4 = &v3[-*v3];
  v5 = *v4;
  if (a2 >> 62)
  {
    if (v5 < 5)
    {
      return -9.22337204e18;
    }

    v6 = *(v4 + 2);
    if (!v6)
    {
      return -9.22337204e18;
    }
  }

  else
  {
    if (v5 < 7)
    {
      return -9.22337204e18;
    }

    v6 = *(v4 + 3);
    if (!v6)
    {
      return -9.22337204e18;
    }
  }

  v8 = &v3[v6 + *&v3[v6]];
  if (*v8 <= (HIDWORD(a2) & 0x3FFFFFFFu))
  {
    return -9.22337204e18;
  }

  v9 = (&v8[(HIDWORD(a2) & 0x3FFFFFFF) + 1] + v8[(HIDWORD(a2) & 0x3FFFFFFF) + 1]);
  v10 = (v9 - *v9);
  if (*v10 < 0x17u)
  {
    return -9.22337204e18;
  }

  v11 = v10[11];
  if (!v11)
  {
    return -9.22337204e18;
  }

  v12 = *(v9 + v11);
  if (v12 == 0x7FFF)
  {
    return -9.22337204e18;
  }

  return v12 / 5.0;
}

double sub_FAFC90(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return -9.22337204e18;
  }

  v3 = sub_2B3284(a1, a2, 1);
  if (!v3)
  {
    return -9.22337204e18;
  }

  v4 = &v3[-*v3];
  v5 = *v4;
  if (a2 >> 62)
  {
    if (v5 < 5)
    {
      return -9.22337204e18;
    }

    v6 = *(v4 + 2);
    if (!v6)
    {
      return -9.22337204e18;
    }
  }

  else
  {
    if (v5 < 7)
    {
      return -9.22337204e18;
    }

    v6 = *(v4 + 3);
    if (!v6)
    {
      return -9.22337204e18;
    }
  }

  v8 = &v3[v6 + *&v3[v6]];
  if (*v8 <= (HIDWORD(a2) & 0x3FFFFFFFu))
  {
    return -9.22337204e18;
  }

  v9 = (&v8[(HIDWORD(a2) & 0x3FFFFFFF) + 1] + v8[(HIDWORD(a2) & 0x3FFFFFFF) + 1]);
  v10 = (v9 - *v9);
  if (*v10 < 0x19u)
  {
    return -9.22337204e18;
  }

  v11 = v10[12];
  if (!v11)
  {
    return -9.22337204e18;
  }

  v12 = *(v9 + v11);
  if (v12 == 0x7FFF)
  {
    return -9.22337204e18;
  }

  return v12 / 5.0;
}

void sub_FAFD90(uint64_t a1, void *a2)
{
  HIBYTE(v3) = 10;
  strcpy(&v2, "use_sunday");
  *(a1 + 24) = sub_5F9D0(a2, &v2);
  if (SHIBYTE(v3) < 0)
  {
    operator delete(v2);
  }

  operator new();
}

void sub_FB054C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  v33 = *(v31 - 128);
  if (v33)
  {
    *(v31 - 120) = v33;
    operator delete(v33);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_FB064C(__int128 **a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) + 1;
  if (v3 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v3)
  {
    v3 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
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

  v7 = 16 * (a1[1] - *a1);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  *(v7 + 24) = *a3;
  *(v7 + 40) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v8 = v7 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v7 / 0x10] - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 40) = *(v12 + 5);
      *(v12 + 3) = 0;
      *(v12 + 4) = 0;
      *(v12 + 5) = 0;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      v15 = *(v9 + 3);
      if (v15)
      {
        *(v9 + 4) = v15;
        operator delete(v15);
      }

      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_FB0838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9C76A8(va);
  _Unwind_Resume(a1);
}

char *sub_FB084C(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      sub_1794();
    }

    v13 = v9 - v11;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v47 = (__dst - v11);
    v48 = 8 * ((__dst - v11) >> 3);
    v49 = (v48 + 8 * a5);
    v50 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x1FFFFFFFFFFFFFFFuLL) >= 7 && (v47 - __src) >= 0x20)
    {
      v59 = v50 + 1;
      v60 = (v50 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v51 = (v48 + 8 * v60);
      v52 = &__src[8 * v60];
      v61 = __src + 16;
      v62 = (v48 + 16);
      v63 = v60;
      do
      {
        v64 = *v61;
        *(v62 - 1) = *(v61 - 1);
        *v62 = v64;
        v61 += 32;
        v62 += 2;
        v63 -= 4;
      }

      while (v63);
      if (v59 == v60)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v51 = v48;
      v52 = __src;
    }

    do
    {
      v53 = *v52;
      v52 += 8;
      *v51++ = v53;
    }

    while (v51 != v49);
LABEL_42:
    v54 = *(a1 + 8) - __dst;
    memcpy((v48 + 8 * a5), __dst, v54);
    v55 = v49 + v54;
    *(a1 + 8) = v5;
    v56 = *a1;
    v57 = &v5[-*a1];
    v58 = v48 - v57;
    memcpy((v48 - v57), *a1, v57);
    *a1 = v58;
    *(a1 + 8) = v55;
    *(a1 + 16) = 0;
    if (v56)
    {
      operator delete(v56);
    }

    return v48;
  }

  v15 = v10 - __dst;
  v16 = (v10 - __dst) >> 3;
  if (v16 >= a5)
  {
    v15 = 8 * a5;
    v34 = &__dst[8 * a5];
    v35 = (v10 - 8 * a5);
    if (v35 >= v10)
    {
      v39 = *(a1 + 8);
    }

    else
    {
      v36 = v35 + 1;
      if (v10 > (v35 + 1))
      {
        v36 = *(a1 + 8);
      }

      v37 = v36 + v15 + ~v10;
      v38 = v37 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v39 = *(a1 + 8);
      if (v38)
      {
        goto LABEL_62;
      }

      v40 = (v37 >> 3) + 1;
      v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
      v35 = (v35 + v41);
      v39 = (v10 + v41);
      v42 = (v10 + 16);
      v43 = (v10 + 16 - v15);
      v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v45 = *v43;
        *(v42 - 1) = *(v43 - 1);
        *v42 = v45;
        v42 += 2;
        v43 += 2;
        v44 -= 4;
      }

      while (v44);
      if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_62:
        do
        {
          v46 = *v35++;
          *v39++ = v46;
        }

        while (v35 < v10);
      }
    }

    *(a1 + 8) = v39;
    if (v10 != v34)
    {
      memmove(v34, __dst, v10 - v34 - 3);
    }

    goto LABEL_56;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    v18 = a5;
    v19 = a4;
    memmove(*(a1 + 8), &__src[v15], v17 - 3);
    a4 = v19;
    a5 = v18;
  }

  v20 = (v10 + v17);
  *(a1 + 8) = v10 + v17;
  if (v16 >= 1)
  {
    v21 = 8 * a5;
    v22 = &v5[8 * a5];
    v23 = &v20[-8 * a5];
    if (v23 >= v10)
    {
      v26 = (v10 + v17);
    }

    else
    {
      v24 = &v5[a4] - &__src[v21] + 8;
      if (v10 > v24)
      {
        v24 = v10;
      }

      v25 = &__src[v21 + ~a4 + v24] - v5;
      v26 = (v10 + v17);
      if (v25 < 0x18)
      {
        goto LABEL_63;
      }

      if ((a5 & 0x1FFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_63;
      }

      v27 = (v25 >> 3) + 1;
      v28 = 8 * (v27 & 0x3FFFFFFFFFFFFFFCLL);
      v23 = (v23 + v28);
      v26 = &v20[v28];
      v29 = (&v5[a4] - __src + 16);
      v30 = (v29 - v21);
      v31 = v27 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v32 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      if (v27 != (v27 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_63:
        do
        {
          v33 = *v23++;
          *v26++ = v33;
        }

        while (v23 < v10);
      }
    }

    *(a1 + 8) = v26;
    if (v20 != v22)
    {
      memmove(v22, v5, v20 - v22 - 3);
    }

    if (v10 != v5)
    {
LABEL_56:
      memmove(v5, __src, v15 - 3);
    }
  }

  return v5;
}

uint64_t sub_FB0BF8(uint64_t result, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
  while (2)
  {
    v9 = (a2 - 1);
    v10 = (a2 - 2);
    v11 = (a2 - 3);
    v12 = v8;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = v12;
          v13 = (a2 - v12) >> 3;
          if (v13 <= 2)
          {
            if (v13 < 2)
            {
              return result;
            }

            if (v13 == 2)
            {
              v104 = *(a2 - 2);
              v103 = a2 - 1;
              if (v104 < *v12)
              {
                v105 = *v12;
                v106 = *v103;
                *(v12 + 4) = *(v103 + 4);
                *v12 = v106;
                *v103 = v105;
                *(v103 + 4) = BYTE4(v105);
              }

              return result;
            }

            goto LABEL_10;
          }

          switch(v13)
          {
            case 3:
              v107 = v12 + 8;
              v108 = *(v12 + 8);
              v111 = *(a2 - 2);
              v110 = a2 - 1;
              v109 = v111;
              if (v108 < *v12)
              {
                v112 = *v12;
                if (v109 >= v108)
                {
                  *v12 = *v107;
                  *(v12 + 4) = *(v12 + 12);
                  *(v12 + 8) = v112;
                  *(v12 + 12) = BYTE4(v112);
                  if (*v110 < v112)
                  {
                    v140 = *v107;
                    v141 = *v110;
                    *(v12 + 12) = *(v110 + 4);
                    *v107 = v141;
                    *v110 = v140;
                    *(v110 + 4) = BYTE4(v140);
                  }
                }

                else
                {
                  v113 = *v110;
                  *(v12 + 4) = *(v110 + 4);
                  *v12 = v113;
                  *(v110 + 4) = BYTE4(v112);
                  *v110 = v112;
                }

                return result;
              }

              if (v109 >= v108)
              {
                return result;
              }

              v130 = *(v12 + 8);
              v131 = *v110;
              *(v12 + 12) = *(v110 + 4);
              *v107 = v131;
              *v110 = v130;
              *(v110 + 4) = BYTE4(v130);
LABEL_149:
              if (*(v12 + 8) < *v12)
              {
                v145 = *v12;
                *v12 = *v107;
                *(v12 + 4) = *(v107 + 4);
                *(v12 + 8) = v145;
                *(v12 + 12) = BYTE4(v145);
              }

              return result;
            case 4:
              v107 = v12 + 8;
              v114 = *(v12 + 8);
              v115 = (v12 + 16);
              LODWORD(v116) = *(v12 + 16);
              v117 = *v12;
              if (v114 >= *v12)
              {
                if (v116 < v114)
                {
                  v116 = *v107;
                  v132 = *v115;
                  *v107 = *v115;
                  *(v12 + 12) = *(v12 + 20);
                  *v115 = v116;
                  *(v12 + 20) = BYTE4(v116);
                  if (v132 < v117)
                  {
                    v133 = *v12;
                    *v12 = *v107;
                    *(v12 + 4) = *(v12 + 12);
                    *(v12 + 8) = v133;
                    *(v12 + 12) = BYTE4(v133);
                  }
                }
              }

              else
              {
                v118 = *v12;
                if (v116 >= v114)
                {
                  *v12 = *v107;
                  *(v12 + 4) = *(v12 + 12);
                  *(v12 + 8) = v118;
                  *(v12 + 12) = BYTE4(v118);
                  if (v116 < v118)
                  {
                    v116 = *v107;
                    *v107 = *v115;
                    *(v12 + 12) = *(v12 + 20);
                    *v115 = v116;
                    *(v12 + 20) = BYTE4(v116);
                  }
                }

                else
                {
                  *v12 = *v115;
                  *(v12 + 4) = *(v12 + 20);
                  *(v12 + 16) = v118;
                  *(v12 + 20) = BYTE4(v118);
                  LODWORD(v116) = v118;
                }
              }

              if (*v9 >= v116)
              {
                return result;
              }

              v142 = *v115;
              v143 = *v9;
              *(v12 + 20) = *(a2 - 4);
              *v115 = v143;
              *v9 = v142;
              *(a2 - 4) = BYTE4(v142);
              if (*v115 >= *v107)
              {
                return result;
              }

              v144 = *(v12 + 8);
              *(v12 + 12) = *(v12 + 20);
              *v107 = *v115;
              *(v12 + 16) = v144;
              *(v12 + 20) = BYTE4(v144);
              goto LABEL_149;
            case 5:

              return sub_FB1768(v12, (v12 + 8), (v12 + 16), (v12 + 24), a2 - 2);
          }

LABEL_10:
          if (v13 <= 23)
          {
            v119 = (v12 + 8);
            v121 = v12 == a2 || v119 == a2;
            if (a5)
            {
              if (!v121)
              {
                v122 = 0;
                v123 = v12;
                do
                {
                  v125 = *v123;
                  v126 = *(v123 + 2);
                  v123 = v119;
                  if (v126 < v125)
                  {
                    v127 = *v119;
                    v128 = v122;
                    do
                    {
                      v129 = v12 + v128;
                      *(v129 + 8) = *(v12 + v128);
                      *(v129 + 12) = *(v12 + v128 + 4);
                      if (!v128)
                      {
                        v124 = v12;
                        goto LABEL_119;
                      }

                      v128 -= 8;
                    }

                    while (*(v129 - 8) > v127);
                    v124 = v12 + v128 + 8;
LABEL_119:
                    *v124 = v127;
                    *(v124 + 4) = BYTE4(v127);
                  }

                  v119 = v123 + 1;
                  v122 += 8;
                }

                while (v123 + 1 != a2);
              }
            }

            else if (!v121)
            {
              do
              {
                v134 = *v8;
                v135 = *(v8 + 8);
                v8 = v119;
                if (v135 < v134)
                {
                  v136 = *v119;
                  v137 = v119;
                  do
                  {
                    v138 = v137;
                    v139 = *(v137-- - 2);
                    *v138 = v139;
                    *(v138 + 4) = *(v138 - 4);
                  }

                  while (*(v138 - 4) > v136);
                  *v137 = v136;
                  *(v137 + 4) = BYTE4(v136);
                }

                v119 = (v8 + 8);
              }

              while ((v8 + 8) != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v12 != a2)
            {

              return sub_FB1E44(v12, a2, a2);
            }

            return result;
          }

          v14 = v12 + 8 * (v13 >> 1);
          v15 = v14;
          v16 = *v9;
          if (v13 >= 0x81)
          {
            break;
          }

          v21 = *v12;
          if (*v12 >= *v14)
          {
            if (v16 >= v21)
            {
              goto LABEL_37;
            }

            v29 = *v12;
            v30 = *v9;
            *(v12 + 4) = *(a2 - 4);
            *v12 = v30;
            *v9 = v29;
            *(a2 - 4) = BYTE4(v29);
            if (*v12 >= *v15)
            {
              goto LABEL_37;
            }

            v31 = *v15;
            v32 = *v12;
            *(v15 + 4) = *(v12 + 4);
            *v15 = v32;
            *v12 = v31;
            *(v12 + 4) = BYTE4(v31);
            --a4;
            if (a5)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v22 = *v14;
            v23 = HIDWORD(*v15);
            if (v16 >= v21)
            {
              v47 = *v12;
              *(v15 + 4) = *(v12 + 4);
              *v15 = v47;
              *(v12 + 4) = v23;
              *v12 = v22;
              if (*v9 < v22)
              {
                v48 = *v12;
                v49 = *v9;
                *(v12 + 4) = *(a2 - 4);
                *v12 = v49;
                *v9 = v48;
                *(a2 - 4) = BYTE4(v48);
              }

LABEL_37:
              --a4;
              if (a5)
              {
                goto LABEL_59;
              }

              goto LABEL_58;
            }

            v24 = *v9;
            *(v15 + 4) = *(a2 - 4);
            *v15 = v24;
            *(a2 - 4) = v23;
            *v9 = v22;
            --a4;
            if (a5)
            {
              goto LABEL_59;
            }
          }

LABEL_58:
          if (*(v12 - 8) < *v12)
          {
            goto LABEL_59;
          }

          v93 = *v12;
          if (*v9 <= *v12)
          {
            v95 = v12 + 8;
            do
            {
              v12 = v95;
              if (v95 >= a2)
              {
                break;
              }

              v95 += 8;
            }

            while (*v12 <= v93);
          }

          else
          {
            do
            {
              v94 = *(v12 + 8);
              v12 += 8;
            }

            while (v94 <= v93);
          }

          v96 = a2;
          if (v12 < a2)
          {
            v96 = a2;
            do
            {
              v97 = *(v96-- - 2);
            }

            while (v97 > v93);
          }

          while (v12 < v96)
          {
            v98 = *v12;
            v99 = *v96;
            *(v12 + 4) = *(v96 + 4);
            *v12 = v99;
            *v96 = v98;
            *(v96 + 4) = BYTE4(v98);
            do
            {
              v100 = *(v12 + 8);
              v12 += 8;
            }

            while (v100 <= v93);
            do
            {
              v101 = *(v96-- - 2);
            }

            while (v101 > v93);
          }

          if (v12 - 8 != v8)
          {
            v102 = *(v12 - 8);
            *(v8 + 4) = *(v12 - 4);
            *v8 = v102;
          }

          a5 = 0;
          *(v12 - 8) = v93;
          *(v12 - 4) = BYTE4(v93);
        }

        v17 = *v14;
        if (*v14 >= *v12)
        {
          if (v16 < v17)
          {
            v25 = *v14;
            v26 = *v9;
            *(v14 + 4) = *(a2 - 4);
            *v14 = v26;
            *v9 = v25;
            *(a2 - 4) = BYTE4(v25);
            if (*v14 < *v12)
            {
              v27 = *v12;
              v28 = *v14;
              *(v12 + 4) = *(v14 + 4);
              *v12 = v28;
              *v14 = v27;
              *(v14 + 4) = BYTE4(v27);
            }
          }
        }

        else
        {
          v18 = *v12;
          v19 = HIDWORD(*v12);
          if (v16 >= v17)
          {
            v33 = *v14;
            *(v12 + 4) = *(v14 + 4);
            *v12 = v33;
            *(v14 + 4) = v19;
            *v14 = v18;
            if (*v9 < v18)
            {
              v34 = *v14;
              v35 = *v9;
              *(v14 + 4) = *(a2 - 4);
              *v14 = v35;
              *v9 = v34;
              *(a2 - 4) = BYTE4(v34);
            }
          }

          else
          {
            v20 = *v9;
            *(v12 + 4) = *(a2 - 4);
            *v12 = v20;
            *(a2 - 4) = v19;
            *v9 = v18;
          }
        }

        v36 = (v12 + 8);
        v37 = v14 - 8;
        v38 = *(v14 - 8);
        v39 = *v10;
        if (v38 >= *(v12 + 8))
        {
          if (v39 < v38)
          {
            v43 = *v37;
            v44 = *v10;
            *(v14 - 4) = *(a2 - 12);
            *v37 = v44;
            *v10 = v43;
            *(a2 - 12) = BYTE4(v43);
            if (*v37 < *v36)
            {
              v45 = *v36;
              v46 = *v37;
              *(v12 + 12) = *(v14 - 4);
              *v36 = v46;
              *v37 = v45;
              *(v14 - 4) = BYTE4(v45);
            }
          }
        }

        else
        {
          v40 = *v36;
          v41 = HIDWORD(*v36);
          if (v39 >= v38)
          {
            v50 = *v37;
            *(v12 + 12) = *(v14 - 4);
            *v36 = v50;
            *(v14 - 4) = v41;
            *v37 = v40;
            if (*v10 < v40)
            {
              v51 = *v37;
              v52 = *v10;
              *(v14 - 4) = *(a2 - 12);
              *v37 = v52;
              *v10 = v51;
              *(a2 - 12) = BYTE4(v51);
            }
          }

          else
          {
            v42 = *v10;
            *(v12 + 12) = *(a2 - 12);
            *v36 = v42;
            *(a2 - 12) = v41;
            *v10 = v40;
          }
        }

        v53 = (v12 + 16);
        v56 = *(v14 + 8);
        v54 = v14 + 8;
        v55 = v56;
        v57 = *v11;
        if (v56 >= *(v12 + 16))
        {
          if (v57 < v55)
          {
            v61 = *v54;
            v62 = *v11;
            *(v54 + 4) = *(a2 - 20);
            *v54 = v62;
            *v11 = v61;
            *(a2 - 20) = BYTE4(v61);
            if (*v54 < *v53)
            {
              v63 = *v53;
              v64 = *v54;
              *(v12 + 20) = *(v54 + 4);
              *v53 = v64;
              *v54 = v63;
              *(v54 + 4) = BYTE4(v63);
            }
          }
        }

        else
        {
          v58 = *v53;
          v59 = HIDWORD(*v53);
          if (v57 >= v55)
          {
            v65 = *v54;
            *(v12 + 20) = *(v54 + 4);
            *v53 = v65;
            *(v54 + 4) = v59;
            *v54 = v58;
            if (*v11 < v58)
            {
              v66 = *v54;
              v67 = *v11;
              *(v54 + 4) = *(a2 - 20);
              *v54 = v67;
              *v11 = v66;
              *(a2 - 20) = BYTE4(v66);
            }
          }

          else
          {
            v60 = *v11;
            *(v12 + 20) = *(a2 - 20);
            *v53 = v60;
            *(a2 - 20) = v59;
            *v11 = v58;
          }
        }

        v68 = *v37;
        v69 = *v15;
        v70 = *v54;
        if (*v15 >= *v37)
        {
          if (v70 < v69)
          {
            v73 = *v15;
            v74 = *v54;
            *v15 = *v54;
            *(v15 + 4) = *(v54 + 4);
            *v54 = v73;
            *(v54 + 4) = BYTE4(v73);
            if (v74 < v68)
            {
              v75 = *v37;
              *v37 = *v15;
              *(v37 + 4) = *(v15 + 4);
              *v15 = v75;
              *(v15 + 4) = BYTE4(v75);
            }
          }
        }

        else
        {
          v71 = *v37;
          v72 = HIDWORD(*v37);
          if (v70 >= v69)
          {
            *v37 = *v15;
            *(v37 + 4) = *(v15 + 4);
            *v15 = v71;
            *(v15 + 4) = v72;
            if (v70 < v71)
            {
              v76 = *v15;
              *v15 = *v54;
              *(v15 + 4) = *(v54 + 4);
              *v54 = v76;
              *(v54 + 4) = BYTE4(v76);
            }
          }

          else
          {
            *v37 = *v54;
            *(v37 + 4) = *(v54 + 4);
            *v54 = v71;
            *(v54 + 4) = v72;
          }
        }

        v77 = *v12;
        v78 = *v15;
        *(v12 + 4) = *(v15 + 4);
        *v12 = v78;
        *v15 = v77;
        *(v15 + 4) = BYTE4(v77);
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_58;
        }

LABEL_59:
        v79 = 0;
        v80 = *v12;
        do
        {
          v81 = *(v12 + v79 + 8);
          v79 += 8;
        }

        while (v81 < v80);
        v82 = v12 + v79;
        v83 = a2;
        if (v79 == 8)
        {
          v83 = a2;
          do
          {
            if (v82 >= v83)
            {
              break;
            }

            v85 = *(v83-- - 2);
          }

          while (v85 >= v80);
        }

        else
        {
          do
          {
            v84 = *(v83-- - 2);
          }

          while (v84 >= v80);
        }

        v12 += v79;
        if (v82 < v83)
        {
          v86 = v83;
          do
          {
            v87 = *v12;
            v88 = *v86;
            *(v12 + 4) = *(v86 + 4);
            *v12 = v88;
            *v86 = v87;
            *(v86 + 4) = BYTE4(v87);
            do
            {
              v89 = *(v12 + 8);
              v12 += 8;
            }

            while (v89 < v80);
            do
            {
              v90 = *(v86-- - 2);
            }

            while (v90 >= v80);
          }

          while (v12 < v86);
        }

        if (v12 - 8 != v8)
        {
          v91 = *(v12 - 8);
          *(v8 + 4) = *(v12 - 4);
          *v8 = v91;
        }

        *(v12 - 8) = v80;
        *(v12 - 4) = BYTE4(v80);
        if (v82 >= v83)
        {
          break;
        }

LABEL_78:
        result = sub_FB0BF8(v8, (v12 - 8), a3, a4, a5 & 1);
        a5 = 0;
      }

      v92 = sub_FB19A8(v8, (v12 - 8));
      result = sub_FB19A8(v12, a2);
      if (result)
      {
        break;
      }

      if (!v92)
      {
        goto LABEL_78;
      }
    }

    a2 = (v12 - 8);
    if (!v92)
    {
      continue;
    }

    return result;
  }
}

uint64_t *sub_FB1768(uint64_t *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 >= *result)
  {
    LODWORD(v7) = *a3;
    if (v6 < v5)
    {
      v7 = *a2;
      v9 = *a3;
      *(a2 + 4) = *(a3 + 4);
      *a2 = v9;
      *a3 = v7;
      *(a3 + 4) = BYTE4(v7);
      if (*a2 < *result)
      {
        v7 = *result;
        v10 = *a2;
        *(result + 4) = *(a2 + 4);
        *result = v10;
        *a2 = v7;
        *(a2 + 4) = BYTE4(v7);
        LODWORD(v7) = *a3;
      }
    }
  }

  else
  {
    v7 = *result;
    if (v6 >= v5)
    {
      v11 = *a2;
      *(result + 4) = *(a2 + 4);
      *result = v11;
      *(a2 + 4) = BYTE4(v7);
      *a2 = v7;
      v12 = *a3 >= v7;
      LODWORD(v7) = *a3;
      if (!v12)
      {
        v7 = *a2;
        v13 = *a3;
        *(a2 + 4) = *(a3 + 4);
        *a2 = v13;
        *a3 = v7;
        *(a3 + 4) = BYTE4(v7);
      }
    }

    else
    {
      v8 = *a3;
      *(result + 4) = *(a3 + 4);
      *result = v8;
      *(a3 + 4) = BYTE4(v7);
      *a3 = v7;
    }
  }

  if (*a4 < v7)
  {
    v14 = *a3;
    v15 = *a4;
    *(a3 + 4) = *(a4 + 4);
    *a3 = v15;
    *a4 = v14;
    *(a4 + 4) = BYTE4(v14);
    if (*a3 < *a2)
    {
      v16 = *a2;
      v17 = *a3;
      *(a2 + 4) = *(a3 + 4);
      *a2 = v17;
      *a3 = v16;
      *(a3 + 4) = BYTE4(v16);
      if (*a2 < *result)
      {
        v18 = *result;
        v19 = *a2;
        *(result + 4) = *(a2 + 4);
        *result = v19;
        *a2 = v18;
        *(a2 + 4) = BYTE4(v18);
      }
    }
  }

  if (*a5 < *a4)
  {
    v20 = *a4;
    v21 = *a5;
    *(a4 + 4) = *(a5 + 4);
    *a4 = v21;
    *a5 = v20;
    *(a5 + 4) = BYTE4(v20);
    if (*a4 < *a3)
    {
      v22 = *a3;
      v23 = *a4;
      *(a3 + 4) = *(a4 + 4);
      *a3 = v23;
      *a4 = v22;
      *(a4 + 4) = BYTE4(v22);
      if (*a3 < *a2)
      {
        v24 = *a2;
        v25 = *a3;
        *(a2 + 4) = *(a3 + 4);
        *a2 = v25;
        *a3 = v24;
        *(a3 + 4) = BYTE4(v24);
        if (*a2 < *result)
        {
          v26 = *result;
          v27 = *a2;
          *(result + 4) = *(a2 + 4);
          *result = v27;
          *a2 = v26;
          *(a2 + 4) = BYTE4(v26);
        }
      }
    }
  }

  return result;
}

BOOL sub_FB19A8(unsigned int *a1, char *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v8 = a1 + 2;
        v9 = a1[2];
        v12 = *(a2 - 2);
        v10 = a2 - 8;
        v11 = v12;
        if (v9 < *a1)
        {
          v13 = *a1;
          if (v11 >= v9)
          {
            *a1 = *v8;
            *(a1 + 4) = *(a1 + 12);
            a1[2] = v13;
            *(a1 + 12) = BYTE4(v13);
            if (*v10 >= v13)
            {
              return 1;
            }

            v34 = *v8;
            v35 = *v10;
            *(a1 + 12) = v10[4];
            *v8 = v35;
            *v10 = v34;
            v10[4] = BYTE4(v34);
            return 1;
          }

          else
          {
            v14 = *v10;
            *(a1 + 4) = v10[4];
            *a1 = v14;
            v10[4] = BYTE4(v13);
            *v10 = v13;
            return 1;
          }
        }

        if (v11 >= v9)
        {
          return 1;
        }

        v27 = *(a1 + 1);
        v28 = *v10;
        *(a1 + 12) = v10[4];
        *v8 = v28;
        *v10 = v27;
        v10[4] = BYTE4(v27);
        break;
      case 4:
        v8 = a1 + 2;
        v21 = a1[2];
        v22 = a1 + 4;
        LODWORD(v23) = a1[4];
        v24 = a2 - 8;
        v25 = *a1;
        if (v21 >= *a1)
        {
          if (v23 < v21)
          {
            v23 = *v8;
            v32 = *v22;
            *v8 = *v22;
            *(a1 + 12) = *(a1 + 20);
            *v22 = v23;
            *(a1 + 20) = BYTE4(v23);
            if (v32 < v25)
            {
              v33 = *a1;
              *a1 = *v8;
              *(a1 + 4) = *(a1 + 12);
              a1[2] = v33;
              *(a1 + 12) = BYTE4(v33);
            }
          }
        }

        else
        {
          v26 = *a1;
          if (v23 >= v21)
          {
            *a1 = *v8;
            *(a1 + 4) = *(a1 + 12);
            a1[2] = v26;
            *(a1 + 12) = BYTE4(v26);
            if (v23 < v26)
            {
              v23 = *v8;
              *v8 = *v22;
              *(a1 + 12) = *(a1 + 20);
              *v22 = v23;
              *(a1 + 20) = BYTE4(v23);
            }
          }

          else
          {
            *a1 = *v22;
            *(a1 + 4) = *(a1 + 20);
            a1[4] = v26;
            *(a1 + 20) = BYTE4(v26);
            LODWORD(v23) = v26;
          }
        }

        if (*v24 >= v23)
        {
          return 1;
        }

        v44 = *v22;
        v45 = *v24;
        *(a1 + 20) = *(a2 - 4);
        *v22 = v45;
        *v24 = v44;
        *(a2 - 4) = BYTE4(v44);
        if (*v22 >= *v8)
        {
          return 1;
        }

        v46 = *(a1 + 1);
        *(a1 + 12) = *(a1 + 20);
        *v8 = *v22;
        a1[4] = v46;
        *(a1 + 20) = BYTE4(v46);
        break;
      case 5:
        sub_FB1768(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        return 1;
      default:
        goto LABEL_14;
    }

    if (a1[2] >= *a1)
    {
      return 1;
    }

    v47 = *a1;
    *a1 = *v8;
    *(a1 + 4) = *(v8 + 4);
    a1[2] = v47;
    *(a1 + 12) = BYTE4(v47);
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_14:
    v15 = a1 + 4;
    v16 = a1[4];
    v17 = a1 + 2;
    v18 = a1[2];
    v19 = *a1;
    if (v18 >= *a1)
    {
      if (v16 < v18)
      {
        v29 = *v17;
        v30 = *v15;
        *v17 = *v15;
        *(a1 + 12) = *(a1 + 20);
        *v15 = v29;
        *(a1 + 20) = BYTE4(v29);
        if (v30 < v19)
        {
          v31 = *a1;
          *a1 = *v17;
          *(a1 + 4) = *(a1 + 12);
          a1[2] = v31;
          *(a1 + 12) = BYTE4(v31);
        }
      }
    }

    else
    {
      v20 = *a1;
      if (v16 >= v18)
      {
        *a1 = *v17;
        *(a1 + 4) = *(a1 + 12);
        a1[2] = v20;
        *(a1 + 12) = BYTE4(v20);
        if (v16 < v20)
        {
          v36 = *v17;
          *v17 = *v15;
          *(a1 + 12) = *(a1 + 20);
          *v15 = v36;
          *(a1 + 20) = BYTE4(v36);
        }
      }

      else
      {
        *a1 = *v15;
        *(a1 + 4) = *(a1 + 20);
        a1[4] = v20;
        *(a1 + 20) = BYTE4(v20);
      }
    }

    v37 = (a1 + 6);
    if (a1 + 6 == a2)
    {
      return 1;
    }

    v38 = 0;
    v39 = 0;
    while (*v37 >= *v15)
    {
LABEL_41:
      v15 = v37;
      v38 += 8;
      v37 += 8;
      if (v37 == a2)
      {
        return 1;
      }
    }

    v40 = *v37;
    v41 = v38;
    do
    {
      v42 = a1 + v41;
      *(v42 + 6) = *(a1 + v41 + 16);
      v42[28] = *(a1 + v41 + 20);
      if (v41 == -16)
      {
        *a1 = v40;
        *(a1 + 4) = BYTE4(v40);
        if (++v39 != 8)
        {
          goto LABEL_41;
        }

        return v37 + 8 == a2;
      }

      v41 -= 8;
    }

    while (*(v42 + 2) > v40);
    v43 = a1 + v41;
    *(v43 + 6) = v40;
    v43[28] = BYTE4(v40);
    if (++v39 != 8)
    {
      goto LABEL_41;
    }

    return v37 + 8 == a2;
  }

  v5 = *(a2 - 2);
  v4 = a2 - 8;
  if (v5 >= *a1)
  {
    return 1;
  }

  v6 = *a1;
  v7 = *v4;
  *(a1 + 4) = v4[4];
  *a1 = v7;
  *v4 = v6;
  v4[4] = BYTE4(v6);
  return 1;
}

char *sub_FB1E44(char *a1, char *a2, char *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = (a2 - a1) >> 3;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      if (v4 >= v5)
      {
        v7 = (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
        v8 = &a1[8 * v7];
        if (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2 >= v3)
        {
          v11 = &a1[8 * v5];
          if (*v8 >= *v11)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v9 = *(v8 + 2);
          v10 = *v8 >= v9;
          if (*v8 > v9)
          {
            v9 = *v8;
          }

          if (!v10)
          {
            v8 += 8;
            v7 = 2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2;
          }

          v11 = &a1[8 * v5];
          if (v9 >= *v11)
          {
LABEL_15:
            v12 = *v11;
            while (1)
            {
              v15 = v11;
              v11 = v8;
              v16 = *v8;
              v15[4] = v11[4];
              *v15 = v16;
              if (v4 < v7)
              {
                break;
              }

              v17 = (2 * v7) | 1;
              v8 = &a1[8 * v17];
              v7 = 2 * v7 + 2;
              if (v7 < v3)
              {
                v13 = *(v8 + 2);
                v14 = *v8 >= v13;
                if (*v8 > v13)
                {
                  v13 = *v8;
                }

                if (v14)
                {
                  v7 = v17;
                }

                else
                {
                  v8 += 8;
                }

                if (v13 < v12)
                {
                  break;
                }
              }

              else
              {
                v7 = v17;
                if (*v8 < v12)
                {
                  break;
                }
              }
            }

            *v11 = v12;
            v11[4] = BYTE4(v12);
          }
        }
      }

      v6 = v5-- <= 0;
    }

    while (!v6);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      LODWORD(v19) = *a1;
      i = a2;
      do
      {
        if (*i < v19)
        {
          v19 = *i;
          v20 = *a1;
          i[4] = a1[4];
          *i = v20;
          *a1 = v19;
          a1[4] = BYTE4(v19);
        }

        i += 8;
      }

      while (i != a3);
      goto LABEL_59;
    }

    v21 = a1 + 8;
    for (i = a2; i != a3; i += 8)
    {
      if (*i < *a1)
      {
        v22 = *i;
        v23 = *a1;
        i[4] = a1[4];
        *i = v23;
        *a1 = v22;
        a1[4] = BYTE4(v22);
        if (a2 - a1 == 16)
        {
          v24 = a1 + 8;
          v25 = 1;
          if (*v21 >= v22)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v26 = *(a1 + 4);
          v27 = *v21;
          v28 = *v21 >= v26;
          if (*v21 <= v26)
          {
            v27 = *(a1 + 4);
          }

          if (*v21 >= v26)
          {
            v24 = a1 + 8;
          }

          else
          {
            v24 = a1 + 16;
          }

          if (v28)
          {
            v25 = 1;
          }

          else
          {
            v25 = 2;
          }

          if (v27 >= v22)
          {
LABEL_48:
            v29 = *a1;
            v30 = a1;
            while (1)
            {
              v33 = v30;
              v30 = v24;
              v34 = *v24;
              v33[4] = v30[4];
              *v33 = v34;
              if (((v3 - 2) >> 1) < v25)
              {
                break;
              }

              v35 = (2 * v25) | 1;
              v24 = &a1[8 * v35];
              v25 = 2 * v25 + 2;
              if (v25 < v3)
              {
                v31 = *(v24 + 2);
                v32 = *v24 >= v31;
                if (*v24 > v31)
                {
                  v31 = *v24;
                }

                if (v32)
                {
                  v25 = v35;
                }

                else
                {
                  v24 += 8;
                }

                if (v31 < v29)
                {
                  break;
                }
              }

              else
              {
                v25 = v35;
                if (*v24 < v29)
                {
                  break;
                }
              }
            }

            *v30 = v29;
            v30[4] = BYTE4(v29);
          }
        }
      }
    }
  }

LABEL_59:
  if (v3 >= 2)
  {
    do
    {
      v37 = 0;
      v38 = *a1;
      v39 = a1;
      do
      {
        v44 = &v39[8 * v37];
        v42 = v44 + 8;
        v45 = (2 * v37) | 1;
        v37 = 2 * v37 + 2;
        if (v37 < v3)
        {
          v41 = *(v44 + 4);
          v40 = v44 + 16;
          if (*(v40 - 2) >= v41)
          {
            v37 = v45;
          }

          else
          {
            v42 = v40;
          }
        }

        else
        {
          v37 = v45;
        }

        v43 = *v42;
        v39[4] = v42[4];
        *v39 = v43;
        v39 = v42;
      }

      while (v37 <= ((v3 - 2) >> 1));
      a2 -= 8;
      if (v42 == a2)
      {
        *v42 = v38;
        v42[4] = BYTE4(v38);
      }

      else
      {
        v46 = *a2;
        v42[4] = a2[4];
        *v42 = v46;
        a2[4] = BYTE4(v38);
        *a2 = v38;
        v47 = (v42 - a1 + 8) >> 3;
        v6 = v47 < 2;
        v48 = v47 - 2;
        if (!v6)
        {
          v49 = v48 >> 1;
          v50 = &a1[8 * v49];
          if (*v50 < *v42)
          {
            v51 = *v42;
            do
            {
              v52 = v42;
              v42 = v50;
              v53 = *v50;
              v52[4] = v42[4];
              *v52 = v53;
              if (!v49)
              {
                break;
              }

              v49 = (v49 - 1) >> 1;
              v50 = &a1[8 * v49];
            }

            while (*v50 < v51);
            *v42 = v51;
            v42[4] = BYTE4(v51);
          }
        }
      }

      v6 = v3-- <= 2;
    }

    while (!v6);
  }

  return i;
}

void ***sub_FB221C(void ***a1)
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
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v6);
        }

        v3 -= 6;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_FB22A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v6);
        }

        v3 -= 6;
      }

      while (v6 != v2);
      v4 = *(a1 + 32);
    }

    *(a1 + 40) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_FB232C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

_DWORD *sub_FB2370(_DWORD *a1, void *a2)
{
  v6 = 11;
  strcpy(__p, "blend_start");
  *a1 = 600 * sub_352470(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = 9;
  strcpy(__p, "blend_end");
  a1[1] = 600 * sub_352470(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_FB244C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FB246C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2B51D8(*(a1 + 16), a2);
  v4 = (v3 - *v3);
  if (*v4 < 0xDu)
  {
    LODWORD(v5) = 0;
    v8 = *(a1 + 56);
    if (v8 != 0xFFFF && v8 == 0)
    {
      return;
    }

    goto LABEL_14;
  }

  v5 = v4[6];
  if (v5)
  {
    LODWORD(v5) = *(v3 + v5);
  }

  v6 = *(a1 + 56);
  if (v6 == 0xFFFF || v5 != v6)
  {
LABEL_14:
    *(a1 + 56) = v5;
    v10 = v5;
    v11 = sub_2AF704(*(a1 + 16) + 3896, 1u, 0);
    v12 = &v11[-*v11];
    if (*v12 < 0xBu)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 + 5);
      if (v13)
      {
        v13 += &v11[*&v11[v13]];
      }
    }

    v14 = (v13 + 4 * v10 + 4 + *(v13 + 4 * v10 + 4));
    v15 = (v14 - *v14);
    if (*v15 >= 5u && (v16 = v15[2]) != 0)
    {
      v17 = (v14 + v16);
      v18 = *v17;
      v19 = *(v17 + v18);
      if (v19 >= 0x17)
      {
        operator new();
      }

      v22 = *(v17 + v18);
      if (v19)
      {
        memcpy(&__dst, v17 + v18 + 4, v19);
      }

      p_dst = (&__dst + v19);
    }

    else
    {
      v22 = 0;
      p_dst = &__dst;
    }

    *p_dst = 0;
    sub_FB2640(a1, &__dst);
    if (v22 < 0)
    {
      operator delete(__dst);
    }
  }
}

void sub_FB2624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FB2640(uint64_t a1, char *a2)
{
  v2 = a2[23];
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 >= 0)
  {
    v4 = a2[23];
  }

  else
  {
    v4 = *(a2 + 1);
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v30) = v4;
  if (v4)
  {
    memmove(__s2, v3, v4);
    *(__s2 + v4) = 0;
    if (v30 >= 0)
    {
      v6 = __s2;
    }

    else
    {
      v6 = __s2[0];
    }

    do
    {
      *v6 = __tolower(*v3);
      v6 = (v6 + 1);
      ++v3;
      --v4;
    }

    while (v4);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = v7;
    if (v7 == v8)
    {
      goto LABEL_42;
    }
  }

  else
  {
    LOBYTE(__s2[0]) = 0;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = v7;
    if (v7 == v8)
    {
      goto LABEL_42;
    }
  }

  v10 = HIBYTE(v30);
  if (v30 >= 0)
  {
    v11 = HIBYTE(v30);
  }

  else
  {
    v11 = __s2[1];
  }

  if (v30 < 0)
  {
    v15 = __s2[0];
    v9 = v7;
    while (1)
    {
      v16 = *(v9 + 23);
      v17 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v9 + 8);
      }

      if (v16 == v11)
      {
        v18 = v17 >= 0 ? v9 : *v9;
        if (!memcmp(v18, v15, v11))
        {
          break;
        }
      }

      v9 += 48;
      if (v9 == v8)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    v9 = v7;
    while (1)
    {
      v12 = *(v9 + 23);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v9 + 8);
      }

      if (v12 == v11)
      {
        v14 = v13 >= 0 ? v9 : *v9;
        if (!memcmp(v14, __s2, v11))
        {
          break;
        }
      }

      v9 += 48;
      if (v9 == v8)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_42:
  if (v9 != v8)
  {
    goto LABEL_72;
  }

  v10 = HIBYTE(v30);
LABEL_44:
  if (v10 < 0)
  {
    sub_13B38(__s2, &xmmword_22AEA90, 3uLL);
    v7 = *(a1 + 32);
    v9 = *(a1 + 40);
    if (v7 == v9)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v30 = 0x300000000000000;
    *__s2 = xmmword_22AEA90;
    v9 = v8;
    if (v7 == v8)
    {
      goto LABEL_72;
    }
  }

  if (v30 >= 0)
  {
    v19 = HIBYTE(v30);
  }

  else
  {
    v19 = __s2[1];
  }

  if (v30 < 0)
  {
    v24 = __s2[0];
    v25 = v7;
    while (1)
    {
      v26 = *(v25 + 23);
      v27 = v26;
      if ((v26 & 0x80u) != 0)
      {
        v26 = *(v25 + 8);
      }

      if (v26 == v19)
      {
        v28 = v27 >= 0 ? v25 : *v25;
        if (!memcmp(v28, v24, v19))
        {
          break;
        }
      }

      v25 += 48;
      if (v25 == v9)
      {
        goto LABEL_72;
      }
    }

    v9 = v25;
  }

  else
  {
    v20 = v7;
    while (1)
    {
      v21 = *(v20 + 23);
      v22 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(v20 + 8);
      }

      if (v21 == v19)
      {
        v23 = v22 >= 0 ? v20 : *v20;
        if (!memcmp(v23, __s2, v19))
        {
          break;
        }
      }

      v20 += 48;
      if (v20 == v9)
      {
        goto LABEL_72;
      }
    }

    v9 = v20;
  }

LABEL_72:
  *(a1 + 64) = 0xAAAAAAAAAAAAAAABLL * ((v9 - v7) >> 4);
  *(a1 + 72) = -1;
  *(a1 + 76) = 0;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__s2[0]);
  }
}

void sub_FB296C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_FB298C(unint64_t a1, double *a2, uint64_t a3, char a4, double result)
{
  while (2)
  {
    v9 = a2 - 1;
    v10 = a1;
    while (1)
    {
      while (1)
      {
        a1 = v10;
        v11 = (a2 - v10) >> 4;
        if (v11 > 2)
        {
          switch(v11)
          {
            case 3:
              v95 = *(v10 + 16);
              result = *v10;
              v96 = *(a2 - 2);
              if (v95 >= *v10)
              {
                if (v96 >= v95)
                {
                  return result;
                }

                *(v10 + 16) = v96;
                *(a2 - 2) = v95;
                v9 = (v10 + 24);
                v141 = *(v10 + 24);
                *(v10 + 24) = *(a2 - 1);
                *(a2 - 1) = v141;
                result = *(v10 + 16);
                v142 = *v10;
                if (result >= *v10)
                {
                  return result;
                }

                *v10 = result;
                *(v10 + 16) = v142;
                v97 = (v10 + 8);
              }

              else
              {
                if (v96 >= v95)
                {
                  *v10 = v95;
                  v97 = (v10 + 24);
                  v152 = *(v10 + 24);
                  *(v10 + 16) = result;
                  v153 = *(v10 + 8);
                  *(v10 + 8) = v152;
                  *(v10 + 24) = v153;
                  v154 = *(a2 - 2);
                  if (v154 >= result)
                  {
                    return result;
                  }

                  *(v10 + 16) = v154;
                }

                else
                {
                  v97 = (v10 + 8);
                  *v10 = v96;
                }

                *(a2 - 2) = result;
              }

              v155 = *v97;
              *v97 = *v9;
              *v9 = v155;
              return result;
            case 4:
              v98 = *(v10 + 16);
              v99 = *v10;
              v100 = *(v10 + 32);
              if (v98 >= *v10)
              {
                if (v100 >= v98)
                {
                  v98 = *(v10 + 32);
                }

                else
                {
                  v143 = (v10 + 24);
                  v144 = *(v10 + 24);
                  *(v10 + 16) = v100;
                  *(v10 + 32) = v98;
                  *(v10 + 24) = *(v10 + 40);
                  *(v10 + 40) = v144;
                  if (v100 < v99)
                  {
                    *v10 = v100;
                    *(v10 + 16) = v99;
                    v101 = (v10 + 8);
                    goto LABEL_187;
                  }
                }

                result = *(a2 - 2);
                if (result >= v98)
                {
                  return result;
                }
              }

              else
              {
                if (v100 < v98)
                {
                  v101 = (v10 + 8);
                  *v10 = v100;
                  goto LABEL_186;
                }

                *v10 = v98;
                *(v10 + 16) = v99;
                v101 = (v10 + 24);
                v156 = *(v10 + 8);
                *(v10 + 8) = *(v10 + 24);
                *(v10 + 24) = v156;
                if (v100 >= v99)
                {
                  v98 = v100;
                  result = *(a2 - 2);
                  if (result >= v100)
                  {
                    return result;
                  }
                }

                else
                {
                  *(v10 + 16) = v100;
LABEL_186:
                  *(v10 + 32) = v99;
                  v143 = (v10 + 40);
LABEL_187:
                  v157 = *v101;
                  *v101 = *v143;
                  *v143 = v157;
                  v98 = *(v10 + 32);
                  result = *(a2 - 2);
                  if (result >= v98)
                  {
                    return result;
                  }
                }
              }

              *(v10 + 32) = result;
              *(a2 - 2) = v98;
              v158 = *(v10 + 40);
              *(v10 + 40) = *(a2 - 1);
              *(a2 - 1) = v158;
              result = *(v10 + 32);
              v159 = *(v10 + 16);
              if (result < v159)
              {
                *(v10 + 16) = result;
                *(v10 + 32) = v159;
                v160 = *(v10 + 24);
                v161 = *(v10 + 40);
                *(v10 + 24) = v161;
                *(v10 + 40) = v160;
                v162 = *v10;
                if (result < *v10)
                {
                  *v10 = result;
                  *(v10 + 16) = v162;
                  v163 = *(v10 + 8);
                  *(v10 + 8) = v161;
                  *(v10 + 24) = v163;
                }
              }

              return result;
            case 5:

              sub_FB3560(v10, v10 + 16, v10 + 32, (v10 + 48), a2 - 2);
              return result;
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
            result = *(a2 - 2);
            v93 = *v10;
            if (result < *v10)
            {
              *v10 = result;
              *(a2 - 2) = v93;
              v94 = *(v10 + 8);
              *(v10 + 8) = *(a2 - 1);
              *(a2 - 1) = v94;
            }

            return result;
          }
        }

        if (v11 <= 23)
        {
          v102 = (v10 + 16);
          v104 = v10 == a2 || v102 == a2;
          if (a4)
          {
            if (!v104)
            {
              v105 = 0;
              v106 = v10;
              do
              {
                v108 = v102;
                result = *(v106 + 16);
                v109 = *v106;
                if (result < *v106)
                {
                  v110 = *(v106 + 24);
                  v111 = v105;
                  do
                  {
                    v112 = v10 + v111;
                    *(v112 + 16) = v109;
                    *(v112 + 24) = *(v10 + v111 + 8);
                    if (!v111)
                    {
                      v107 = v10;
                      goto LABEL_131;
                    }

                    v109 = *(v112 - 16);
                    v111 -= 16;
                  }

                  while (result < v109);
                  v107 = v10 + v111 + 16;
LABEL_131:
                  *v107 = result;
                  *(v107 + 8) = v110;
                }

                v102 = v108 + 2;
                v105 += 16;
                v106 = v108;
              }

              while (v108 + 2 != a2);
            }
          }

          else if (!v104)
          {
            v145 = (v10 + 24);
            do
            {
              v146 = v102;
              result = *(a1 + 16);
              v147 = *a1;
              if (result < *a1)
              {
                v148 = *(a1 + 24);
                v149 = v145;
                do
                {
                  v150 = v149;
                  *(v149 - 1) = v147;
                  v151 = *(v149 - 2);
                  v149 -= 2;
                  *v150 = v151;
                  v147 = *(v150 - 5);
                }

                while (result < v147);
                *(v149 - 1) = result;
                *v149 = v148;
              }

              v102 = (v146 + 16);
              v145 += 2;
              a1 = v146;
            }

            while ((v146 + 16) != a2);
          }

          return result;
        }

        if (!a3)
        {
          if (v10 != a2)
          {
            v113 = (v11 - 2) >> 1;
            v114 = v113;
            do
            {
              if (v113 >= v114)
              {
                v116 = (2 * (v114 & 0xFFFFFFFFFFFFFFFLL)) | 1;
                v117 = v10 + 16 * v116;
                if (2 * (v114 & 0xFFFFFFFFFFFFFFFLL) + 2 < v11 && *v117 < *(v117 + 16))
                {
                  v117 += 16;
                  v116 = 2 * (v114 & 0xFFFFFFFFFFFFFFFLL) + 2;
                }

                v118 = v10 + 16 * v114;
                v119 = *v117;
                v120 = *v118;
                if (*v117 >= *v118)
                {
                  v121 = *(v118 + 8);
                  do
                  {
                    v122 = v118;
                    v118 = v117;
                    *v122 = v119;
                    v122[1] = *(v117 + 8);
                    if (v113 < v116)
                    {
                      break;
                    }

                    v123 = 2 * v116;
                    v116 = (2 * v116) | 1;
                    v117 = v10 + 16 * v116;
                    v124 = v123 + 2;
                    if (v124 < v11 && *v117 < *(v117 + 16))
                    {
                      v117 += 16;
                      v116 = v124;
                    }

                    v119 = *v117;
                  }

                  while (*v117 >= v120);
                  *v118 = v120;
                  *(v118 + 8) = v121;
                }
              }

              v115 = v114-- <= 0;
            }

            while (!v115);
            do
            {
              v125 = 0;
              result = *v10;
              v126 = *(v10 + 8);
              v127 = v10;
              do
              {
                v128 = v127;
                v129 = &v127[2 * v125];
                v127 = v129 + 2;
                v130 = 2 * v125;
                v125 = (2 * v125) | 1;
                v131 = v130 + 2;
                if (v131 < v11)
                {
                  v133 = v129[4];
                  v132 = v129 + 4;
                  if (*(v132 - 2) < v133)
                  {
                    v127 = v132;
                    v125 = v131;
                  }
                }

                *v128 = *v127;
                v128[1] = v127[1];
              }

              while (v125 <= ((v11 - 2) >> 1));
              if (v127 == a2 - 2)
              {
                *v127 = result;
                *(v127 + 1) = v126;
              }

              else
              {
                *v127 = *(a2 - 2);
                v127[1] = *(a2 - 1);
                *(a2 - 2) = result;
                *(a2 - 1) = v126;
                v134 = (v127 - v10 + 16) >> 4;
                v115 = v134 < 2;
                v135 = v134 - 2;
                if (!v115)
                {
                  v136 = v135 >> 1;
                  v137 = (v10 + 16 * v136);
                  v138 = *v137;
                  result = *v127;
                  if (*v137 < *v127)
                  {
                    v139 = *(v127 + 1);
                    do
                    {
                      v140 = v127;
                      v127 = v137;
                      *v140 = v138;
                      v140[1] = v137[1];
                      if (!v136)
                      {
                        break;
                      }

                      v136 = (v136 - 1) >> 1;
                      v137 = (v10 + 16 * v136);
                      v138 = *v137;
                    }

                    while (*v137 < result);
                    *v127 = result;
                    *(v127 + 1) = v139;
                  }
                }
              }

              a2 -= 2;
              v115 = v11-- <= 2;
            }

            while (!v115);
          }

          return result;
        }

        v12 = (v10 + 16 * (v11 >> 1));
        v13 = v12;
        v14 = *(a2 - 2);
        if (v11 >= 0x81)
        {
          v15 = *v12;
          v16 = *v10;
          if (*v12 >= *v10)
          {
            if (v14 >= v15 || (*v12 = v14, *(a2 - 2) = v15, v22 = v12 + 1, v21 = *(v12 + 1), v12[1] = *(a2 - 1), *(a2 - 1) = v21, v23 = *v10, *v12 >= *v10))
            {
LABEL_28:
              v31 = v12 - 2;
              v32 = *(v12 - 2);
              v33 = *(v10 + 16);
              v34 = *(a2 - 4);
              if (v32 >= v33)
              {
                if (v34 >= v32 || (*v31 = v34, *(a2 - 4) = v32, v37 = v12 - 1, v36 = *(v12 - 1), *(v12 - 1) = *(a2 - 3), *(a2 - 3) = v36, v38 = *(v10 + 16), *v31 >= v38))
                {
LABEL_41:
                  v47 = v12[2];
                  v46 = v12 + 2;
                  v48 = v47;
                  v49 = *(v10 + 32);
                  v50 = *(a2 - 6);
                  if (v47 >= v49)
                  {
                    if (v50 >= v48 || (*v46 = v50, *(a2 - 6) = v48, v53 = v46 + 1, v52 = *(v46 + 1), v46[1] = *(a2 - 5), *(a2 - 5) = v52, v48 = *v46, v54 = *(v10 + 32), *v46 >= v54))
                    {
LABEL_51:
                      v59 = *v13;
                      v60 = *v31;
                      if (*v13 < *v31)
                      {
LABEL_52:
                        if (v48 >= v59)
                        {
                          *v31 = v59;
                          *v13 = v60;
                          v63 = *(v31 + 1);
                          v31[1] = v13[1];
                          *(v13 + 1) = v63;
                          if (v48 >= v60)
                          {
                            v59 = v60;
                            goto LABEL_62;
                          }

                          *v13 = v48;
                          *v46 = v60;
                          v62 = (v46 + 1);
                          v61 = (v13 + 1);
                        }

                        else
                        {
                          *v31 = v48;
                          v61 = (v31 + 1);
                          *v46 = v60;
                          v62 = (v46 + 1);
                        }

                        v64 = v62;
                        goto LABEL_61;
                      }

LABEL_58:
                      if (v48 >= v59)
                      {
LABEL_62:
                        v67 = *v10;
                        *v10 = v59;
                        v20 = (v10 + 8);
                        *v13 = v67;
                        v26 = v13 + 1;
                        goto LABEL_63;
                      }

                      *v13 = v48;
                      *v46 = v59;
                      v64 = (v13 + 1);
                      v65 = *(v13 + 1);
                      v13[1] = v46[1];
                      *(v46 + 1) = v65;
                      if (v48 >= v60)
                      {
                        v59 = v48;
                        goto LABEL_62;
                      }

                      *v31 = v48;
                      v61 = (v31 + 1);
                      *v13 = v60;
LABEL_61:
                      v66 = *v61;
                      *v61 = *v64;
                      *v64 = v66;
                      v59 = *v13;
                      goto LABEL_62;
                    }

                    *(v10 + 32) = v48;
                    *v46 = v54;
                    v51 = (v10 + 40);
                  }

                  else
                  {
                    if (v50 >= v48)
                    {
                      *(v10 + 32) = v48;
                      v51 = (v46 + 1);
                      v55 = *(v46 + 1);
                      *v46 = v49;
                      v56 = *(v10 + 40);
                      *(v10 + 40) = v55;
                      *(v46 + 1) = v56;
                      v57 = *(a2 - 6);
                      if (v57 >= v49)
                      {
                        v48 = v49;
                        v59 = *v13;
                        v60 = *v31;
                        if (*v13 < *v31)
                        {
                          goto LABEL_52;
                        }

                        goto LABEL_58;
                      }

                      *v46 = v57;
                    }

                    else
                    {
                      v51 = (v10 + 40);
                      *(v10 + 32) = v50;
                    }

                    *(a2 - 6) = v49;
                    v53 = a2 - 5;
                  }

                  v58 = *v51;
                  *v51 = *v53;
                  *v53 = v58;
                  v48 = *v46;
                  goto LABEL_51;
                }

                *(v10 + 16) = *v31;
                *v31 = v38;
                v35 = (v10 + 24);
              }

              else
              {
                if (v34 >= v32)
                {
                  *(v10 + 16) = v32;
                  v35 = v12 - 1;
                  v42 = *(v12 - 1);
                  *v31 = v33;
                  v43 = *(v10 + 24);
                  *(v10 + 24) = v42;
                  *(v12 - 1) = v43;
                  v44 = *(a2 - 4);
                  if (v44 >= v33)
                  {
                    goto LABEL_41;
                  }

                  *v31 = v44;
                }

                else
                {
                  v35 = (v10 + 24);
                  *(v10 + 16) = v34;
                }

                *(a2 - 4) = v33;
                v37 = a2 - 3;
              }

              v45 = *v35;
              *v35 = *v37;
              *v37 = v45;
              goto LABEL_41;
            }

            *v10 = *v12;
            v17 = (v10 + 8);
            *v12 = v23;
          }

          else
          {
            if (v14 >= v15)
            {
              *v10 = v15;
              v17 = (v12 + 1);
              v27 = *(v12 + 1);
              *v12 = v16;
              v28 = *(v10 + 8);
              *(v10 + 8) = v27;
              *(v12 + 1) = v28;
              v29 = *(a2 - 2);
              if (v29 >= v16)
              {
                goto LABEL_28;
              }

              *v12 = v29;
            }

            else
            {
              v17 = (v10 + 8);
              *v10 = v14;
            }

            *(a2 - 2) = v16;
            v22 = a2 - 1;
          }

          v30 = *v17;
          *v17 = *v22;
          *v22 = v30;
          goto LABEL_28;
        }

        v18 = *v10;
        v19 = *v12;
        if (*v10 >= *v12)
        {
          if (v14 < v18)
          {
            *v10 = v14;
            *(a2 - 2) = v18;
            v24 = *(v10 + 8);
            *(v10 + 8) = *(a2 - 1);
            *(a2 - 1) = v24;
            v25 = *v12;
            if (*v10 < *v12)
            {
              *v12 = *v10;
              *v10 = v25;
              v20 = (v12 + 1);
              v26 = (v10 + 8);
LABEL_63:
              v68 = *v20;
              *v20 = *v26;
              *v26 = v68;
            }
          }
        }

        else
        {
          if (v14 < v18)
          {
            v20 = (v12 + 1);
            *v12 = v14;
LABEL_36:
            *(a2 - 2) = v19;
            v26 = a2 - 1;
            goto LABEL_63;
          }

          *v12 = v18;
          v20 = (v10 + 8);
          v39 = *(v10 + 8);
          *v10 = v19;
          v40 = *(v13 + 1);
          *(v13 + 1) = v39;
          *(v10 + 8) = v40;
          v41 = *(a2 - 2);
          if (v41 < v19)
          {
            *v10 = v41;
            goto LABEL_36;
          }
        }

        --a3;
        result = *v10;
        if ((a4 & 1) != 0 || *(v10 - 16) < result)
        {
          break;
        }

        if (result >= *(a2 - 2))
        {
          v84 = v10 + 16;
          do
          {
            v10 = v84;
            if (v84 >= a2)
            {
              break;
            }

            v84 += 16;
          }

          while (result >= *v10);
        }

        else
        {
          do
          {
            v83 = *(v10 + 16);
            v10 += 16;
          }

          while (result >= v83);
        }

        v85 = a2;
        if (v10 < a2)
        {
          v85 = a2;
          do
          {
            v86 = *(v85 - 2);
            v85 -= 2;
          }

          while (result < v86);
        }

        v87 = *(a1 + 8);
        if (v10 < v85)
        {
          v88 = *v10;
          v89 = *v85;
          do
          {
            *v10 = v89;
            *v85 = v88;
            v90 = *(v10 + 8);
            *(v10 + 8) = v85[1];
            *(v85 + 1) = v90;
            do
            {
              v91 = *(v10 + 16);
              v10 += 16;
              v88 = v91;
            }

            while (result >= v91);
            do
            {
              v92 = *(v85 - 2);
              v85 -= 2;
              v89 = v92;
            }

            while (result < v92);
          }

          while (v10 < v85);
        }

        if (v10 - 16 != a1)
        {
          *a1 = *(v10 - 16);
          *(a1 + 8) = *(v10 - 8);
        }

        a4 = 0;
        *(v10 - 16) = result;
        *(v10 - 8) = v87;
      }

      v69 = 0;
      v70 = *(v10 + 8);
      do
      {
        v71 = *(v10 + v69 + 16);
        v69 += 16;
      }

      while (v71 < result);
      v72 = v10 + v69;
      v73 = a2;
      if (v69 == 16)
      {
        v73 = a2;
        do
        {
          if (v72 >= v73)
          {
            break;
          }

          v75 = *(v73 - 2);
          v73 -= 2;
        }

        while (v75 >= result);
      }

      else
      {
        do
        {
          v74 = *(v73 - 2);
          v73 -= 2;
        }

        while (v74 >= result);
      }

      if (v72 >= v73)
      {
        v10 += v69;
        v81 = (v72 - 16);
        if (v72 - 16 != a1)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v76 = *v73;
        v10 += v69;
        v77 = v73;
        do
        {
          *v10 = v76;
          *v77 = v71;
          v78 = *(v10 + 8);
          *(v10 + 8) = v77[1];
          *(v77 + 1) = v78;
          do
          {
            v79 = *(v10 + 16);
            v10 += 16;
            v71 = v79;
          }

          while (v79 < result);
          do
          {
            v80 = *(v77 - 2);
            v77 -= 2;
            v76 = v80;
          }

          while (v80 >= result);
        }

        while (v10 < v77);
        v81 = (v10 - 16);
        if (v10 - 16 != a1)
        {
LABEL_81:
          *a1 = *(v10 - 16);
          *(a1 + 8) = *(v10 - 8);
        }
      }

      *(v10 - 16) = result;
      *(v10 - 8) = v70;
      if (v72 < v73)
      {
        goto LABEL_85;
      }

      v82 = sub_FB3738(a1, v81);
      if (sub_FB3738(v10, a2))
      {
        break;
      }

      if (!v82)
      {
LABEL_85:
        result = sub_FB298C(a1, v81, a3, a4 & 1, result);
        a4 = 0;
      }
    }

    a2 = v81;
    if (!v82)
    {
      continue;
    }

    return result;
  }
}

void *sub_FB3560(void *result, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 < v5)
    {
      *a2 = v7;
      *a3 = v5;
      v9 = (a2 + 8);
      v10 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v10;
      v11 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        v8 = result + 1;
        *a2 = v11;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      v8 = result + 1;
      *result = v7;
      *a3 = v6;
      v9 = (a3 + 8);
LABEL_9:
      v14 = *v8;
      *v8 = *v9;
      *v9 = v14;
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v6;
    v8 = (a2 + 8);
    v12 = result[1];
    result[1] = *(a2 + 8);
    *(a2 + 8) = v12;
    v13 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v13;
      v9 = (a3 + 8);
      goto LABEL_9;
    }
  }

LABEL_10:
  v15 = *a3;
  if (*a4 < *a3)
  {
    *a3 = *a4;
    *a4 = v15;
    v16 = *(a3 + 8);
    *(a3 + 8) = a4[1];
    a4[1] = v16;
    v17 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v17;
      v18 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v18;
      v19 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v19;
        v20 = result[1];
        result[1] = *(a2 + 8);
        *(a2 + 8) = v20;
      }
    }
  }

  v21 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v21;
    v22 = a4[1];
    a4[1] = a5[1];
    a5[1] = v22;
    v23 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v23;
      v24 = *(a3 + 8);
      *(a3 + 8) = a4[1];
      a4[1] = v24;
      v25 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v25;
        v26 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v26;
        v27 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v27;
          v28 = result[1];
          result[1] = *(a2 + 8);
          *(a2 + 8) = v28;
        }
      }
    }
  }

  return result;
}

BOOL sub_FB3738(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v7 = *(a1 + 16);
      v8 = *a1;
      v9 = *(a2 - 16);
      if (v7 >= *a1)
      {
        if (v9 >= v7)
        {
          return 1;
        }

        *(a1 + 16) = v9;
        *(a2 - 16) = v7;
        v21 = (a1 + 24);
        v20 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 8);
        *(a2 - 8) = v20;
        v22 = *(a1 + 16);
        v23 = *a1;
        if (v22 >= *a1)
        {
          return 1;
        }

        *a1 = v22;
        *(a1 + 16) = v23;
        v10 = (a1 + 8);
      }

      else
      {
        if (v9 >= v7)
        {
          *a1 = v7;
          v10 = (a1 + 24);
          v28 = *(a1 + 24);
          *(a1 + 16) = v8;
          v29 = *(a1 + 8);
          *(a1 + 8) = v28;
          *(a1 + 24) = v29;
          v30 = *(a2 - 16);
          if (v30 >= v8)
          {
            return 1;
          }

          *(a1 + 16) = v30;
        }

        else
        {
          v10 = (a1 + 8);
          *a1 = v9;
        }

        *(a2 - 16) = v8;
        v21 = (a2 - 8);
      }

      v31 = *v10;
      *v10 = *v21;
      *v21 = v31;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_FB3560(a1, a1 + 16, a1 + 32, (a1 + 48), (a2 - 16));
        return 1;
      }

LABEL_14:
      v11 = (a1 + 32);
      v12 = *(a1 + 32);
      v13 = *(a1 + 16);
      v14 = *a1;
      if (v13 >= *a1)
      {
        if (v12 >= v13)
        {
          goto LABEL_37;
        }

        v25 = (a1 + 24);
        v24 = *(a1 + 24);
        *(a1 + 16) = v12;
        *(a1 + 32) = v13;
        *(a1 + 24) = *(a1 + 40);
        *(a1 + 40) = v24;
        if (v12 >= v14)
        {
          goto LABEL_37;
        }

        *a1 = v12;
        *(a1 + 16) = v14;
        v15 = (a1 + 8);
      }

      else
      {
        if (v12 >= v13)
        {
          *a1 = v13;
          *(a1 + 16) = v14;
          v15 = (a1 + 24);
          v32 = *(a1 + 8);
          *(a1 + 8) = *(a1 + 24);
          *(a1 + 24) = v32;
          if (v12 >= v14)
          {
LABEL_37:
            v34 = a1 + 48;
            if (a1 + 48 == a2)
            {
              return 1;
            }

            v35 = 0;
            v36 = 0;
            while (1)
            {
              v37 = *v34;
              v38 = *v11;
              if (*v34 < *v11)
              {
                break;
              }

LABEL_46:
              v11 = v34;
              v35 += 16;
              v34 += 16;
              if (v34 == a2)
              {
                return 1;
              }
            }

            v39 = *(v34 + 8);
            v40 = v35;
            do
            {
              v41 = a1 + v40;
              *(v41 + 48) = v38;
              *(v41 + 56) = *(a1 + v40 + 40);
              if (v40 == -32)
              {
                *a1 = v37;
                *(a1 + 8) = v39;
                if (++v36 != 8)
                {
                  goto LABEL_46;
                }

                return v34 + 16 == a2;
              }

              v38 = *(v41 + 16);
              v40 -= 16;
            }

            while (v37 < v38);
            v42 = a1 + v40;
            *(v42 + 48) = v37;
            *(v42 + 56) = v39;
            if (++v36 != 8)
            {
              goto LABEL_46;
            }

            return v34 + 16 == a2;
          }

          *(a1 + 16) = v12;
        }

        else
        {
          v15 = (a1 + 8);
          *a1 = v12;
        }

        *(a1 + 32) = v14;
        v25 = (a1 + 40);
      }

      v33 = *v15;
      *v15 = *v25;
      *v25 = v33;
      goto LABEL_37;
    }

    v16 = *(a1 + 16);
    v17 = *a1;
    v18 = *(a1 + 32);
    if (v16 >= *a1)
    {
      if (v18 >= v16)
      {
        goto LABEL_53;
      }

      v27 = (a1 + 24);
      v26 = *(a1 + 24);
      *(a1 + 16) = v18;
      *(a1 + 32) = v16;
      *(a1 + 24) = *(a1 + 40);
      *(a1 + 40) = v26;
      if (v18 >= v17)
      {
        goto LABEL_52;
      }

      *a1 = v18;
      *(a1 + 16) = v17;
      v19 = (a1 + 8);
    }

    else
    {
      if (v18 >= v16)
      {
        *a1 = v16;
        *(a1 + 16) = v17;
        v19 = (a1 + 24);
        v43 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 24);
        *(a1 + 24) = v43;
        if (v18 >= v17)
        {
          goto LABEL_53;
        }

        *(a1 + 16) = v18;
      }

      else
      {
        v19 = (a1 + 8);
        *a1 = v18;
      }

      *(a1 + 32) = v17;
      v27 = (a1 + 40);
      v16 = v17;
    }

    v44 = *v19;
    *v19 = *v27;
    *v27 = v44;
LABEL_52:
    v18 = v16;
LABEL_53:
    v45 = *(a2 - 16);
    if (v45 >= v18)
    {
      return 1;
    }

    *(a1 + 32) = v45;
    *(a2 - 16) = v18;
    v46 = *(a1 + 40);
    *(a1 + 40) = *(a2 - 8);
    *(a2 - 8) = v46;
    v47 = *(a1 + 32);
    v48 = *(a1 + 16);
    if (v47 >= v48)
    {
      return 1;
    }

    *(a1 + 16) = v47;
    *(a1 + 32) = v48;
    v49 = *(a1 + 24);
    v50 = *(a1 + 40);
    *(a1 + 24) = v50;
    *(a1 + 40) = v49;
    v51 = *a1;
    if (v47 >= *a1)
    {
      return 1;
    }

    *a1 = v47;
    *(a1 + 16) = v51;
    v52 = *(a1 + 8);
    *(a1 + 8) = v50;
    *(a1 + 24) = v52;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  v4 = *(a2 - 16);
  v5 = *a1;
  if (v4 >= *a1)
  {
    return 1;
  }

  *a1 = v4;
  *(a2 - 16) = v5;
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 - 8);
  *(a2 - 8) = v6;
  return 1;
}

void sub_FB3B18(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_3AF6B4(a2);
  a1[1] = sub_3B1348(a2);
  a1[2] = sub_3B1090(a2);
  a1[3] = sub_3B1AF0(a2);
  sub_FB3D34(v4, a2);
}

void sub_FB3CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5C010(va);
  _Unwind_Resume(a1);
}

void sub_FB3CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_3DB5C4((v18 + 1360));
  sub_FA9554((v18 + 32));
  _Unwind_Resume(a1);
}

void sub_FB3F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_1A104(&a15);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(v23);
  _Unwind_Resume(a1);
}

void sub_FB3F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_1A104(&a12);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_FB3FB4(uint64_t a1, int ***a2, unsigned int *a3)
{
  if (*(a1 + 1864) != 1)
  {
LABEL_43:
    LODWORD(a3) = 0;
    v18 = 0;
    return a3 | (v18 << 32);
  }

  v6 = sub_F6D17C(*a2, a2[1]);
  v7 = sub_F6D17C(a2[2], a2[3]);
  v8 = v7;
  v9 = (*v6 - **v6);
  if (*v9 < 0x9Bu || (v10 = v9[77]) == 0 || (*(*v6 + v10) & 8) == 0)
  {
    v11 = (*v7 - **v7);
    if (*v11 >= 0x9Bu)
    {
      v12 = v11[77];
      if (v12)
      {
        if ((*(*v7 + v12) & 8) != 0)
        {
          a3 = *(a1 + 2024);
          goto LABEL_46;
        }
      }
    }
  }

  if (!sub_10219BC(a1 + 32, a2) && *(v6 + 18) == *(v8 + 36) && *(v6 + 8) == *(v8 + 32))
  {
    a3 = *(a1 + 2028);
    goto LABEL_46;
  }

  if (sub_1021248(a1 + 32, a2))
  {
    v14 = v6[1];
    v15 = (v14 - *v14);
    v16 = *v15;
    if (*(v6 + 38))
    {
      if (v16 < 5 || (v17 = v15[2]) == 0)
      {
LABEL_23:
        v19 = 0;
LABEL_24:
        v20 = v19 + 18000;
        v21 = v19 - 18000;
        if ((v20 >> 5) < 0x465u)
        {
          v21 = v20;
        }

        v22 = *(v8 + 8);
        v23 = (v22 - *v22);
        v24 = *v23;
        if (*(v8 + 38))
        {
          if (v24 < 9 || (v25 = v23[4]) == 0)
          {
LABEL_33:
            v26 = 0;
            goto LABEL_34;
          }
        }

        else
        {
          if (v24 < 5)
          {
            goto LABEL_33;
          }

          v25 = v23[2];
          if (!v25)
          {
            goto LABEL_33;
          }
        }

        v26 = *(v22 + v25);
LABEL_34:
        v27 = v26 - v21;
        if (v27 > 18000)
        {
          v27 -= 36000;
        }

        if (v27 < -17999)
        {
          v27 += 36000;
        }

        v28 = fabs(v27 / 100.0);
        v56 = v28;
        v29 = sub_10215EC(a1 + 32, a2);
        v31 = 1868;
        if (v29)
        {
          v31 = 1866;
        }

        LOWORD(v30) = *(a1 + v31);
        if (v28 < v30)
        {
          goto LABEL_43;
        }

        v32 = sub_10226C8(a1 + 32, a2, 0);
        v33 = v32;
        LOWORD(v32) = *(a1 + 1870);
        if (v33 < *&v32)
        {
          goto LABEL_43;
        }

        v34 = sub_1021C74((a1 + 32), a2, 0);
        if (v34 == 0.0)
        {
          goto LABEL_43;
        }

        v36 = log(v34);
        v55 = v36 / log(*(a1 + 2016));
        LODWORD(v49) = sub_FB43D4(&v56, (a1 + 1872));
        v37 = sub_FB44F4(&v55, (a1 + 1896));
        v38 = sub_5733D0(&v49, v37);
        v54 = v38;
        if (v33 != 0.0)
        {
          v39 = v38;
          v40 = sub_314758(v6);
          v41 = sub_314758(v8);
          if (v40 < v41)
          {
            v41 = v40;
          }

          if (v41 <= 1)
          {
            v41 = 1;
          }

          v49 = v33 / v41;
          if (*(a1 + 1992) == 1)
          {
            v42 = log(v33 / v41);
            v49 = v42 / log(*(a1 + 2016));
          }

          v53 = sub_1021C48(a1 + 32, a2);
          v51 = sub_FB43D4(&v49, (a1 + 1920));
          v43 = sub_FB44F4(&v55, (a1 + 1944));
          v52 = sub_5733D0(&v51, v43);
          v44 = sub_FB44F4(&v53, (a1 + 1968));
          v54 = v39 + sub_5733D0(&v52, v44);
        }

        if (!sub_1021280(a1 + 32, a2))
        {
          if (sub_1021940(a1 + 32, a2))
          {
            sub_FB45BC(&v54, *(a1 + 2000));
          }

          if (v54)
          {
            sub_FB4628(a1, a2, a3);
            v49 = v45;
            v50 = v46;
            LODWORD(a3) = v54;
            v47 = sub_FB44F4(&v50, (a1 + 2040));
            v18 = sub_5733D0(&v54, v47);
            v48 = sub_FB44F4(&v49, (a1 + 2040));
            sub_5733D0(&v54, v48);
            return a3 | (v18 << 32);
          }

          goto LABEL_43;
        }

        sub_FB45BC(&v54, *(a1 + 2008));
        a3 = v54;
LABEL_46:
        v18 = a3;
        return a3 | (v18 << 32);
      }
    }

    else
    {
      if (v16 < 9)
      {
        goto LABEL_23;
      }

      v17 = v15[4];
      if (!v17)
      {
        goto LABEL_23;
      }
    }

    v19 = *(v14 + v17);
    goto LABEL_24;
  }

  LODWORD(a3) = 0;
  v18 = 0;
  return a3 | (v18 << 32);
}

uint64_t sub_FB43D4(double *a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a2;
  if (*a1 <= v4)
  {
    return *(v3 + 2);
  }

  v5 = a2[1];
  v6 = (v5 - v3) >> 4;
  if (v6 >= 1)
  {
    if (v5 - v3 != 16)
    {
      do
      {
        v7 = (4 * v6) & 0xFFFFFFFFFFFFFFF0;
        _X13 = v3 + v7;
        __asm { PRFM            #0, [X13] }

        v14 = &v3[2 * (v6 >> 1)];
        _X12 = v14 + v7;
        __asm { PRFM            #0, [X12] }

        if (*v14 >= v2)
        {
          v17 = 0;
        }

        else
        {
          v17 = v6 >> 1;
        }

        v3 += 2 * v17;
        v6 -= v6 >> 1;
      }

      while (v6 > 1);
      v4 = *v3;
    }

    v3 += 2 * (v4 < v2);
  }

  if (v5 == v3)
  {
    return *(v5 - 2);
  }

  v18 = *(v3 - 2);
  v19 = *v3;
  if (v18 == *v3)
  {
    return *(v3 + 2);
  }

  v21 = *(v3 + 2);
  v22 = *(v3 - 2);
  v23 = (v2 - v18) / (v19 - v18) * (v21 - v22);
  if (v23 >= 0.0)
  {
    if (v23 < 4.50359963e15)
    {
      v24 = (v23 + v23) + 1;
      goto LABEL_19;
    }
  }

  else if (v23 > -4.50359963e15)
  {
    v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_19:
    v23 = (v24 >> 1);
  }

  return (v22 + v23);
}

double sub_FB44F4(double *a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a2;
  if (*a1 <= v4)
  {
    return v3[1];
  }

  v5 = a2[1];
  v6 = (v5 - v3) >> 4;
  if (v6 >= 1)
  {
    if (v5 - v3 != 16)
    {
      do
      {
        v7 = (4 * v6) & 0xFFFFFFFFFFFFFFF0;
        _X13 = v3 + v7;
        __asm { PRFM            #0, [X13] }

        v14 = &v3[2 * (v6 >> 1)];
        _X12 = v14 + v7;
        __asm { PRFM            #0, [X12] }

        if (*v14 >= v2)
        {
          v17 = 0;
        }

        else
        {
          v17 = v6 >> 1;
        }

        v3 += 2 * v17;
        v6 -= v6 >> 1;
      }

      while (v6 > 1);
      v4 = *v3;
    }

    v3 += 2 * (v4 < v2);
  }

  if (v5 == v3)
  {
    return *(v5 - 1);
  }

  v18 = *(v3 - 2);
  if (v18 == *v3)
  {
    return v3[1];
  }

  return *(v3 - 1) + (v2 - v18) / (*v3 - v18) * (v3[1] - *(v3 - 1));
}

int *sub_FB45BC(int *result, double a2)
{
  v2 = *result * a2;
  if (v2 >= 0.0)
  {
    if (v2 < 4.50359963e15)
    {
      v3 = (v2 + v2) + 1;
      goto LABEL_6;
    }
  }

  else if (v2 > -4.50359963e15)
  {
    v3 = (v2 + v2) - 1 + (((v2 + v2) - 1) >> 63);
LABEL_6:
    v2 = (v3 >> 1);
  }

  *result = v2;
  return result;
}

void sub_FB4628(uint64_t *a1, void **a2, unsigned int *a3)
{
  sub_FB5D80(a1, a2, a1 + 261);
  v5 = a1[261];
  v6 = a1[262];
  if (v5 != v6)
  {
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = sub_76240C(a1[1], *v5, 0);
      v12 = v11;
      v15 = *&v11 > -1 && ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v11 - 1) < 0xFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFLL) == 0;
      if (v15 && v11 > 0.0)
      {
        v16 = fmax(sub_3E916C(a1[1], *v5), 1.0);
        v17 = a1[2];
        v18 = *v5;
        LOBYTE(v37[0]) = sub_40A8(a3);
        v19 = sub_41E8(a3);
        v38 = 0;
        v39 = 0;
        v20 = sub_FB601C(v17, v18, v37, v19, 0, &v38);
        v24 = (*&v20 <= -1 || ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v20 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v20 & 0x7FFFFFFFFFFFFFFFLL) != 0 || v20 <= 0.0;
        v25 = v12 / v20;
        if (v24)
        {
          v25 = 1.0;
        }

        v26 = v16 * v25;
        v27 = sub_3E37C0(a1[3], *v5);
        v38 = 0;
        v39 = 0;
        v37[0] = 0;
        v37[1] = 0;
        sub_FAEF14((a1 + 170), v27, a3, &v38, v37);
        v24 = *&v28 <= 0.0;
        v29 = v28;
        v30 = v28 - 1;
        v31 = v28 & 0x7FFFFFFFFFFFFFFFLL;
        v32 = ((v28 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53;
        v33 = v16 * (v12 / *&v28);
        if (v24)
        {
          v33 = v8;
        }

        if ((v29 <= -1 || v32 >= 0x3FF) && v30 >= 0xFFFFFFFFFFFFFLL && v31 != 0)
        {
          v33 = v8;
        }

        v8 = v8 + v26;
        v7 = v7 + v33;
        v9 = v9 + v16;
        v10 = v10 + v16;
      }

      ++v5;
    }

    while (v5 != v6);
  }
}

void sub_FB4850(uint64_t a1, void *a2)
{
  *a1 = 1;
  *(a1 + 2) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 34) = 0u;
  *(a1 + 50) = 0u;
  *(a1 + 66) = 0u;
  *(a1 + 82) = 0u;
  *(a1 + 98) = 0u;
  *(a1 + 113) = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 136) = _Q0;
  *(a1 + 152) = 0x4024000000000000;
  *(a1 + 160) = 0x8000000080000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 168) = 0;
  v8[7] = 7;
  strcpy(__p, "enabled");
  *a1 = sub_5F9D0(a2, __p);
  if ((v8[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_FB5BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    v31 = *a17;
    if (!*a17)
    {
LABEL_5:
      v32 = v29[13];
      if (!v32)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v31 = *a17;
    if (!*a17)
    {
      goto LABEL_5;
    }
  }

  v29[23] = v31;
  operator delete(v31);
  v32 = v29[13];
  if (!v32)
  {
LABEL_6:
    v33 = v29[10];
    if (!v33)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v29[14] = v32;
  operator delete(v32);
  v33 = v29[10];
  if (!v33)
  {
LABEL_7:
    v34 = v29[7];
    if (!v34)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v29[11] = v33;
  operator delete(v33);
  v34 = v29[7];
  if (!v34)
  {
LABEL_8:
    v35 = v29[4];
    if (!v35)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  v29[8] = v34;
  operator delete(v34);
  v35 = v29[4];
  if (!v35)
  {
LABEL_9:
    v36 = v29[1];
    if (!v36)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v29[5] = v35;
  operator delete(v35);
  v36 = v29[1];
  if (!v36)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

LABEL_17:
  v29[2] = v36;
  operator delete(v36);
  _Unwind_Resume(exception_object);
}

void sub_FB5D80(uint64_t a1, void **a2, uint64_t *a3)
{
  *(a1 + 2096) = *(a1 + 2088);
  if (*(a1 + 2032) == 1)
  {
    v6 = sub_F6D17C(a2[2], a2[3])[4];
    v7 = *(a1 + 2096);
    v8 = *(a1 + 2104);
    if (v7 >= v8)
    {
      v10 = *(a1 + 2088);
      v11 = v7 - v10;
      v12 = (v7 - v10) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        goto LABEL_39;
      }

      v14 = v8 - v10;
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
        if (!(v15 >> 61))
        {
          operator new();
        }

        goto LABEL_40;
      }

      v16 = v12;
      v17 = (8 * v12);
      v18 = v6 & 0xFFFFFFFFFFFFFFLL;
      v19 = &v17[-v16];
      *v17 = v18;
      v9 = v17 + 1;
      memcpy(v19, v10, v11);
      *(a1 + 2088) = v19;
      *(a1 + 2096) = v9;
      *(a1 + 2104) = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      *v7 = v6 & 0xFFFFFFFFFFFFFFLL;
      v9 = v7 + 1;
    }

    *(a1 + 2096) = v9;
  }

  if (*(a1 + 2033) == 1)
  {
    v20 = sub_F6D17C(*a2, a2[1])[4];
    v21 = *(a1 + 2096);
    v22 = *(a1 + 2104);
    if (v21 < v22)
    {
      *v21 = v20 & 0xFFFFFFFFFFFFFFLL;
      v23 = v21 + 1;
LABEL_30:
      *(a1 + 2096) = v23;
      goto LABEL_31;
    }

    v24 = *(a1 + 2088);
    v25 = v21 - v24;
    v26 = (v21 - v24) >> 3;
    v27 = v26 + 1;
    if (!((v26 + 1) >> 61))
    {
      v28 = v22 - v24;
      if (v28 >> 2 > v27)
      {
        v27 = v28 >> 2;
      }

      if (v28 >= 0x7FFFFFFFFFFFFFF8)
      {
        v29 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v27;
      }

      if (!v29)
      {
        v30 = v26;
        v31 = (8 * v26);
        v32 = v20 & 0xFFFFFFFFFFFFFFLL;
        v33 = &v31[-v30];
        *v31 = v32;
        v23 = v31 + 1;
        memcpy(v33, v24, v25);
        *(a1 + 2088) = v33;
        *(a1 + 2096) = v23;
        *(a1 + 2104) = 0;
        if (v24)
        {
          operator delete(v24);
        }

        goto LABEL_30;
      }

      if (!(v29 >> 61))
      {
        operator new();
      }

LABEL_40:
      sub_1808();
    }

LABEL_39:
    sub_1794();
  }

LABEL_31:
  if ((*(a1 + 2034) & 1) != 0 || *(a1 + 2035) == 1)
  {
    sub_1021E7C((a1 + 32), a2, 0, (a1 + 2064));
    v34 = *(a1 + 2064);
    v35 = *(a1 + 2072);
    while (v34 != v35)
    {
      v36 = *v34++;
      sub_FB61B4(a1, v36, a3);
    }

    sub_3120CC(a3);
  }
}

double sub_FB601C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, int a5, uint64_t **a6)
{
  v11 = sub_3EC34C(a1, a2);
  v12 = -1.0;
  if (!v11)
  {
    return v12;
  }

  v13 = sub_3EC480(a1, v11, a5, a6);
  if (!v13)
  {
    return v12;
  }

  v16 = *v13;
  if (!v16)
  {
    return v12;
  }

  if (v16 == 1)
  {
    if ((*(a1 + 3874) & 1) == 0)
    {
      LOWORD(v14) = *(v13 + 3);
      return v14 / 100.0;
    }

    return v12;
  }

  v17 = (1440 * (*a3 + 6 - 7 * ((9363 * (*a3 + 6)) >> 16))) + a4;
  v18 = (v13 + 4);
  v19 = (v13 + 4);
  v20 = *v13;
  do
  {
    v21 = (v19 + ((2 * v20) & 0x3FFFFFFFCLL));
    v23 = *v21;
    v22 = v21 + 2;
    v24 = v20 >> 1;
    v20 += ~(v20 >> 1);
    if (v17 < v23)
    {
      v20 = v24;
    }

    else
    {
      v19 = v22;
    }
  }

  while (v20);
  v25 = &v18[2 * v16];
  if (v19 == v25)
  {
    v26 = v19 - 2;
  }

  else
  {
    if (v19 != v18)
    {
      v25 = v19;
    }

    v26 = v25 - 2;
    if (v19 != v18)
    {
      goto LABEL_19;
    }
  }

  v19 = (v13 + 4);
LABEL_19:
  v27 = *v26;
  if (v17 < v27)
  {
    v27 -= 10080;
  }

  v28 = *v19;
  if (v17 > v28)
  {
    v28 += 10080;
  }

  LOWORD(v14) = v26[1];
  LOWORD(v15) = v19[1];
  return v14 / 100.0 + (v15 / 100.0 - v14 / 100.0) * (v17 - v27) / (v28 - v27);
}

void sub_FB61B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 2035) == 1)
  {
    v6 = sub_2B51D8(*a1, a2 & 0xFFFFFFFFFFFFLL);
    v7 = (v6 - *v6);
    v8 = *v7;
    if ((a2 & 0xFF000000000000) != 0)
    {
      if (v8 < 0x9B)
      {
        goto LABEL_30;
      }

      v9 = v7[77];
      if (!v9 || (*(v6 + v9) & 2) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v8 < 0x9B)
      {
        goto LABEL_30;
      }

      v10 = v7[77];
      if (!v10 || (*(v6 + v10) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v11 = *a3;
    v12 = *(a3 + 8);
    v13 = *a3;
    if (*a3 != v12)
    {
      v13 = *a3;
      while (__PAIR64__(*(v13 + 2), *v13) != __PAIR64__(WORD2(a2), a2) || v13[6] != BYTE6(a2))
      {
        v13 += 8;
        if (v13 == v12)
        {
          goto LABEL_16;
        }
      }
    }

    if (v13 == v12)
    {
LABEL_16:
      v14 = *(a3 + 16);
      if (v12 >= v14)
      {
        v16 = v12 - v11;
        v17 = (v12 - v11) >> 3;
        v18 = v17 + 1;
        if ((v17 + 1) >> 61)
        {
          goto LABEL_59;
        }

        v19 = v14 - v11;
        if (v19 >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          if (!(v20 >> 61))
          {
            operator new();
          }

          goto LABEL_60;
        }

        v21 = (v12 - v11) >> 3;
        v22 = (8 * v17);
        v23 = (8 * v17 - 8 * v21);
        *v22 = a2;
        v15 = v22 + 1;
        memcpy(v23, v11, v16);
        *a3 = v23;
        *(a3 + 8) = v15;
        *(a3 + 16) = 0;
        if (v11)
        {
          operator delete(v11);
        }
      }

      else
      {
        *v12 = a2;
        v15 = v12 + 8;
      }

      *(a3 + 8) = v15;
    }
  }

LABEL_30:
  if (*(a1 + 2034) != 1)
  {
    return;
  }

  v24 = sub_2B51D8(*a1, a2 & 0xFFFFFFFFFFFFLL);
  v25 = (v24 - *v24);
  v26 = *v25;
  if ((a2 & 0xFF000000000000) != 0)
  {
    if (v26 < 0x9B)
    {
      return;
    }

    v27 = v25[77];
    if (!v27 || (*(v24 + v27) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (v26 < 0x9B)
    {
      return;
    }

    v28 = v25[77];
    if (!v28 || (*(v24 + v28) & 2) == 0)
    {
      return;
    }
  }

  v29 = *a3;
  v30 = *(a3 + 8);
  v31 = *a3;
  if (*a3 != v30)
  {
    v31 = *a3;
    while (__PAIR64__(*(v31 + 2), *v31) != __PAIR64__(WORD2(a2), a2) || *(v31 + 6) != ((a2 & 0xFF000000000000) == 0))
    {
      if (++v31 == v30)
      {
        goto LABEL_45;
      }
    }
  }

  if (v31 == v30)
  {
LABEL_45:
    v32 = a2 & 0xFFFFFFFFFFFFLL | (((a2 & 0xFF000000000000) == 0) << 48);
    v33 = *(a3 + 16);
    if (v30 < v33)
    {
      *v30 = v32;
      v34 = v30 + 1;
LABEL_58:
      *(a3 + 8) = v34;
      return;
    }

    v35 = v30 - v29;
    v36 = v30 - v29;
    v37 = v36 + 1;
    if (!((v36 + 1) >> 61))
    {
      v38 = v33 - v29;
      if (v38 >> 2 > v37)
      {
        v37 = v38 >> 2;
      }

      if (v38 >= 0x7FFFFFFFFFFFFFF8)
      {
        v39 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v37;
      }

      if (!v39)
      {
        v40 = v30 - v29;
        v41 = (8 * v36);
        v42 = (8 * v36 - 8 * v40);
        *v41 = v32;
        v34 = v41 + 1;
        memcpy(v42, v29, v35);
        *a3 = v42;
        *(a3 + 8) = v34;
        *(a3 + 16) = 0;
        if (v29)
        {
          operator delete(v29);
        }

        goto LABEL_58;
      }

      if (!(v39 >> 61))
      {
        operator new();
      }

LABEL_60:
      sub_1808();
    }

LABEL_59:
    sub_1794();
  }
}

void sub_FB6518(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_3AF6B4(a2);
  a1[1] = sub_3B1348(a2);
  a1[2] = sub_3B1090(a2);
  a1[3] = sub_3B1AF0(a2);
  sub_FB3D34(v4, a2);
}

void sub_FB66E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5C010(va);
  _Unwind_Resume(a1);
}

void sub_FB66FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_3DB5C4((v18 + 1360));
  sub_FA9554((v18 + 32));
  _Unwind_Resume(a1);
}

unint64_t sub_FB6738(uint64_t a1, int ***a2, unsigned int *a3)
{
  if (*(a1 + 1864) != 1)
  {
LABEL_43:
    LODWORD(a3) = 0;
    v18 = 0;
    return a3 | (v18 << 32);
  }

  v6 = sub_4D1F50(*a2, a2[1]);
  v7 = sub_4D1F50(a2[2], a2[3]);
  v8 = v7;
  v9 = (*v6 - **v6);
  if (*v9 < 0x9Bu || (v10 = v9[77]) == 0 || (*(*v6 + v10) & 8) == 0)
  {
    v11 = (*v7 - **v7);
    if (*v11 >= 0x9Bu)
    {
      v12 = v11[77];
      if (v12)
      {
        if ((*(*v7 + v12) & 8) != 0)
        {
          a3 = *(a1 + 2024);
          goto LABEL_46;
        }
      }
    }
  }

  if (!sub_1023E80(a1 + 32, a2) && *(v6 + 18) == *(v8 + 36) && *(v6 + 8) == *(v8 + 32))
  {
    a3 = *(a1 + 2028);
    goto LABEL_46;
  }

  if (sub_1023364(a1 + 32, a2))
  {
    v14 = v6[1];
    v15 = (v14 - *v14);
    v16 = *v15;
    if (*(v6 + 38))
    {
      if (v16 < 5 || (v17 = v15[2]) == 0)
      {
LABEL_23:
        v19 = 0;
LABEL_24:
        v20 = v19 + 18000;
        v21 = v19 - 18000;
        if ((v20 >> 5) < 0x465u)
        {
          v21 = v20;
        }

        v22 = *(v8 + 8);
        v23 = (v22 - *v22);
        v24 = *v23;
        if (*(v8 + 38))
        {
          if (v24 < 9 || (v25 = v23[4]) == 0)
          {
LABEL_33:
            v26 = 0;
            goto LABEL_34;
          }
        }

        else
        {
          if (v24 < 5)
          {
            goto LABEL_33;
          }

          v25 = v23[2];
          if (!v25)
          {
            goto LABEL_33;
          }
        }

        v26 = *(v22 + v25);
LABEL_34:
        v27 = v26 - v21;
        if (v27 > 18000)
        {
          v27 -= 36000;
        }

        if (v27 < -17999)
        {
          v27 += 36000;
        }

        v28 = fabs(v27 / 100.0);
        v56 = v28;
        v29 = sub_10238A0(a1 + 32, a2);
        v31 = 1868;
        if (v29)
        {
          v31 = 1866;
        }

        LOWORD(v30) = *(a1 + v31);
        if (v28 < v30)
        {
          goto LABEL_43;
        }

        v32 = sub_1025648(a1 + 32, a2, 0);
        v33 = v32;
        LOWORD(v32) = *(a1 + 1870);
        if (v33 < *&v32)
        {
          goto LABEL_43;
        }

        v34 = sub_1024BF4((a1 + 32), a2, 0);
        if (v34 == 0.0)
        {
          goto LABEL_43;
        }

        v36 = log(v34);
        v55 = v36 / log(*(a1 + 2016));
        LODWORD(v49) = sub_FB43D4(&v56, (a1 + 1872));
        v37 = sub_FB44F4(&v55, (a1 + 1896));
        v38 = sub_5733D0(&v49, v37);
        v54 = v38;
        if (v33 != 0.0)
        {
          v39 = v38;
          v40 = sub_314758(v6);
          v41 = sub_314758(v8);
          if (v40 < v41)
          {
            v41 = v40;
          }

          if (v41 <= 1)
          {
            v41 = 1;
          }

          v49 = v33 / v41;
          if (*(a1 + 1992) == 1)
          {
            v42 = log(v33 / v41);
            v49 = v42 / log(*(a1 + 2016));
          }

          v53 = sub_102410C(a1 + 32, a2);
          v51 = sub_FB43D4(&v49, (a1 + 1920));
          v43 = sub_FB44F4(&v55, (a1 + 1944));
          v52 = sub_5733D0(&v51, v43);
          v44 = sub_FB44F4(&v53, (a1 + 1968));
          v54 = v39 + sub_5733D0(&v52, v44);
        }

        if (!sub_102339C(a1 + 32, a2))
        {
          if (sub_1023E04(a1 + 32, a2))
          {
            sub_FB45BC(&v54, *(a1 + 2000));
          }

          if (v54)
          {
            sub_FB6B58(a1, a2, a3);
            v49 = v45;
            v50 = v46;
            LODWORD(a3) = v54;
            v47 = sub_FB44F4(&v50, (a1 + 2040));
            v18 = sub_5733D0(&v54, v47);
            v48 = sub_FB44F4(&v49, (a1 + 2040));
            sub_5733D0(&v54, v48);
            return a3 | (v18 << 32);
          }

          goto LABEL_43;
        }

        sub_FB45BC(&v54, *(a1 + 2008));
        a3 = v54;
LABEL_46:
        v18 = a3;
        return a3 | (v18 << 32);
      }
    }

    else
    {
      if (v16 < 9)
      {
        goto LABEL_23;
      }

      v17 = v15[4];
      if (!v17)
      {
        goto LABEL_23;
      }
    }

    v19 = *(v14 + v17);
    goto LABEL_24;
  }

  LODWORD(a3) = 0;
  v18 = 0;
  return a3 | (v18 << 32);
}

void sub_FB6B58(uint64_t *a1, void **a2, unsigned int *a3)
{
  sub_FB82B0(a1, a2, a1 + 261);
  v5 = a1[261];
  v6 = a1[262];
  if (v5 != v6)
  {
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = sub_76240C(a1[1], *v5, 0);
      v12 = v11;
      v15 = *&v11 > -1 && ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v11 - 1) < 0xFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFLL) == 0;
      if (v15 && v11 > 0.0)
      {
        v16 = fmax(sub_3E916C(a1[1], *v5), 1.0);
        v17 = a1[2];
        v18 = *v5;
        LOBYTE(v37[0]) = sub_40A8(a3);
        v19 = sub_41E8(a3);
        v38 = 0;
        v39 = 0;
        v20 = sub_FB601C(v17, v18, v37, v19, 0, &v38);
        v24 = (*&v20 <= -1 || ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v20 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v20 & 0x7FFFFFFFFFFFFFFFLL) != 0 || v20 <= 0.0;
        v25 = v12 / v20;
        if (v24)
        {
          v25 = 1.0;
        }

        v26 = v16 * v25;
        v27 = sub_3E37C0(a1[3], *v5);
        v38 = 0;
        v39 = 0;
        v37[0] = 0;
        v37[1] = 0;
        sub_FAEF14((a1 + 170), v27, a3, &v38, v37);
        v24 = *&v28 <= 0.0;
        v29 = v28;
        v30 = v28 - 1;
        v31 = v28 & 0x7FFFFFFFFFFFFFFFLL;
        v32 = ((v28 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53;
        v33 = v16 * (v12 / *&v28);
        if (v24)
        {
          v33 = v8;
        }

        if ((v29 <= -1 || v32 >= 0x3FF) && v30 >= 0xFFFFFFFFFFFFFLL && v31 != 0)
        {
          v33 = v8;
        }

        v8 = v8 + v26;
        v7 = v7 + v33;
        v9 = v9 + v16;
        v10 = v10 + v16;
      }

      ++v5;
    }

    while (v5 != v6);
  }
}

void sub_FB6D80(uint64_t a1, void *a2)
{
  *a1 = 1;
  *(a1 + 2) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 34) = 0u;
  *(a1 + 50) = 0u;
  *(a1 + 66) = 0u;
  *(a1 + 82) = 0u;
  *(a1 + 98) = 0u;
  *(a1 + 113) = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 136) = _Q0;
  *(a1 + 152) = 0x4024000000000000;
  *(a1 + 160) = 0x8000000080000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 168) = 0;
  v8[7] = 7;
  strcpy(__p, "enabled");
  *a1 = sub_5F9D0(a2, __p);
  if ((v8[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_FB80EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    v31 = *a17;
    if (!*a17)
    {
LABEL_5:
      v32 = v29[13];
      if (!v32)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v31 = *a17;
    if (!*a17)
    {
      goto LABEL_5;
    }
  }

  v29[23] = v31;
  operator delete(v31);
  v32 = v29[13];
  if (!v32)
  {
LABEL_6:
    v33 = v29[10];
    if (!v33)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v29[14] = v32;
  operator delete(v32);
  v33 = v29[10];
  if (!v33)
  {
LABEL_7:
    v34 = v29[7];
    if (!v34)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v29[11] = v33;
  operator delete(v33);
  v34 = v29[7];
  if (!v34)
  {
LABEL_8:
    v35 = v29[4];
    if (!v35)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  v29[8] = v34;
  operator delete(v34);
  v35 = v29[4];
  if (!v35)
  {
LABEL_9:
    v36 = v29[1];
    if (!v36)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v29[5] = v35;
  operator delete(v35);
  v36 = v29[1];
  if (!v36)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

LABEL_17:
  v29[2] = v36;
  operator delete(v36);
  _Unwind_Resume(exception_object);
}

void sub_FB82B0(uint64_t a1, void **a2, uint64_t *a3)
{
  *(a1 + 2096) = *(a1 + 2088);
  if (*(a1 + 2032) == 1)
  {
    v6 = *(sub_4D1F50(a2[2], a2[3]) + 32);
    v7 = *(a1 + 2096);
    v8 = *(a1 + 2104);
    if (v7 >= v8)
    {
      v10 = *(a1 + 2088);
      v11 = v7 - v10;
      v12 = (v7 - v10) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        goto LABEL_39;
      }

      v14 = v8 - v10;
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
        if (!(v15 >> 61))
        {
          operator new();
        }

        goto LABEL_40;
      }

      v16 = v12;
      v17 = (8 * v12);
      v18 = v6 & 0xFFFFFFFFFFFFFFLL;
      v19 = &v17[-v16];
      *v17 = v18;
      v9 = v17 + 1;
      memcpy(v19, v10, v11);
      *(a1 + 2088) = v19;
      *(a1 + 2096) = v9;
      *(a1 + 2104) = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      *v7 = v6 & 0xFFFFFFFFFFFFFFLL;
      v9 = v7 + 1;
    }

    *(a1 + 2096) = v9;
  }

  if (*(a1 + 2033) == 1)
  {
    v20 = *(sub_4D1F50(*a2, a2[1]) + 32);
    v21 = *(a1 + 2096);
    v22 = *(a1 + 2104);
    if (v21 < v22)
    {
      *v21 = v20 & 0xFFFFFFFFFFFFFFLL;
      v23 = v21 + 1;
LABEL_30:
      *(a1 + 2096) = v23;
      goto LABEL_31;
    }

    v24 = *(a1 + 2088);
    v25 = v21 - v24;
    v26 = (v21 - v24) >> 3;
    v27 = v26 + 1;
    if (!((v26 + 1) >> 61))
    {
      v28 = v22 - v24;
      if (v28 >> 2 > v27)
      {
        v27 = v28 >> 2;
      }

      if (v28 >= 0x7FFFFFFFFFFFFFF8)
      {
        v29 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v27;
      }

      if (!v29)
      {
        v30 = v26;
        v31 = (8 * v26);
        v32 = v20 & 0xFFFFFFFFFFFFFFLL;
        v33 = &v31[-v30];
        *v31 = v32;
        v23 = v31 + 1;
        memcpy(v33, v24, v25);
        *(a1 + 2088) = v33;
        *(a1 + 2096) = v23;
        *(a1 + 2104) = 0;
        if (v24)
        {
          operator delete(v24);
        }

        goto LABEL_30;
      }

      if (!(v29 >> 61))
      {
        operator new();
      }

LABEL_40:
      sub_1808();
    }

LABEL_39:
    sub_1794();
  }

LABEL_31:
  if ((*(a1 + 2034) & 1) != 0 || *(a1 + 2035) == 1)
  {
    sub_1024DFC((a1 + 32), a2, 0, (a1 + 2064));
    v34 = *(a1 + 2064);
    v35 = *(a1 + 2072);
    while (v34 != v35)
    {
      v36 = *v34++;
      sub_FB61B4(a1, v36, a3);
    }

    sub_3120CC(a3);
  }
}

double sub_FB854C(double *a1, double *a2, uint64_t a3, uint64_t a4, char a5, double result)
{
LABEL_1:
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:
          v94 = v10[2];
          v95 = v10 + 3;
          v96 = v10[3];
          result = *v10;
          v97 = v10 + 1;
          v98 = v10[1];
          if (v94 == *v10)
          {
            v99 = v96 < v98;
          }

          else
          {
            v99 = v94 < *v10;
          }

          v100 = *(a2 - 2);
          v101 = *(a2 - 1) < v96;
          if (v100 != v94)
          {
            v101 = v100 < v94;
          }

          if (v99)
          {
            if (v101)
            {
              *v10 = v100;
              *(a2 - 2) = result;
            }

            else
            {
              *v10 = v94;
              v10[1] = v96;
              v10[2] = result;
              v10[3] = v98;
              v146 = *(a2 - 2);
              v147 = *(a2 - 1) < v98;
              if (v146 != result)
              {
                v147 = v146 < result;
              }

              if (!v147)
              {
                return result;
              }

              v10[2] = v146;
              *(a2 - 2) = result;
              v97 = v10 + 3;
            }

            v95 = a2 - 1;
          }

          else
          {
            if (!v101)
            {
              return result;
            }

            v10[2] = v100;
            *(a2 - 2) = v94;
            v134 = *(v10 + 3);
            v10[3] = *(a2 - 1);
            *(a2 - 1) = v134;
            result = v10[2];
            v135 = *v10;
            v136 = v10[3] < v10[1];
            if (result != *v10)
            {
              v136 = result < *v10;
            }

            if (!v136)
            {
              return result;
            }

            *v10 = result;
            v10[2] = v135;
          }

          result = *v97;
          *v97 = *v95;
          *v95 = result;
          return result;
        case 4uLL:

          return sub_FB8F60(v10, v10 + 2, v10 + 4, a2 - 2);
        case 5uLL:
          sub_FB8F60(v10, v10 + 2, v10 + 4, v10 + 6);
          result = *(a2 - 2);
          v102 = v10[6];
          v103 = *(a2 - 1) < v10[7];
          if (result != v102)
          {
            v103 = result < v102;
          }

          if (v103)
          {
            v10[6] = result;
            *(a2 - 2) = v102;
            v104 = *(v10 + 7);
            v10[7] = *(a2 - 1);
            *(a2 - 1) = v104;
            result = v10[6];
            v105 = v10[7];
            v106 = v10[4];
            v107 = v10[5];
            v108 = v105 < v107;
            if (result != v106)
            {
              v108 = result < v106;
            }

            if (v108)
            {
              v10[4] = result;
              v10[5] = v105;
              v10[6] = v106;
              v10[7] = v107;
              v109 = v10[2];
              v110 = v10[3];
              v111 = v105 < v110;
              if (result != v109)
              {
                v111 = result < v109;
              }

              if (v111)
              {
                v10[2] = result;
                v10[3] = v105;
                v10[4] = v109;
                v10[5] = v110;
                v112 = *v10;
                v113 = v10[1];
                v114 = v105 < v113;
                if (result != *v10)
                {
                  v114 = result < *v10;
                }

                if (v114)
                {
                  *v10 = result;
                  v10[1] = v105;
                  v10[2] = v112;
                  v10[3] = v113;
                }
              }
            }
          }

          return result;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result = *(a2 - 2);
        v115 = *v10;
        v116 = *(a2 - 1) < v10[1];
        if (result != v115)
        {
          v116 = result < *v10;
        }

        if (v116)
        {
          *v10 = result;
          *(a2 - 2) = v115;
          result = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = result;
        }

        return result;
      }
    }

    if (v13 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {
        v131 = (v13 - 2) >> 1;
        v132 = v131 + 1;
        v133 = &a1[2 * v131];
        do
        {
          sub_FB97D4(a1, a3, v13, v133--);
          --v132;
        }

        while (v132);

        sub_FB9924(a1, a2);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = *(a2 - 2);
    v16 = *(a2 - 1);
    if (v13 < 0x81)
    {
      v25 = *v10;
      v26 = *v14;
      v27 = v10 + 1;
      v28 = v10[1];
      v29 = (v14 + 1);
      v30 = v14[1];
      v31 = *v10 < *v14;
      if (*v10 == *v14)
      {
        v31 = v28 < v30;
      }

      v32 = v16 < v28;
      if (v15 != v25)
      {
        v32 = v15 < v25;
      }

      if (v31)
      {
        if (v32)
        {
          *v14 = v15;
          *(a2 - 2) = v26;
          goto LABEL_59;
        }

        *v14 = v25;
        v14[1] = v28;
        *v10 = v26;
        v10[1] = v30;
        v55 = *(a2 - 2);
        v56 = *(a2 - 1) < v30;
        if (v55 != v26)
        {
          v56 = v55 < v26;
        }

        if (v56)
        {
          *v10 = v55;
          *(a2 - 2) = v26;
          v29 = (v10 + 1);
LABEL_59:
          v27 = a2 - 1;
LABEL_60:
          v57 = *v29;
          *v29 = *v27;
          *v27 = v57;
        }
      }

      else if (v32)
      {
        *v10 = v15;
        *(a2 - 2) = v25;
        v36 = *(v10 + 1);
        v10[1] = *(a2 - 1);
        *(a2 - 1) = v36;
        v37 = *v14;
        v38 = v10[1] < v14[1];
        if (*v10 != *v14)
        {
          v38 = *v10 < *v14;
        }

        if (v38)
        {
          *v14 = *v10;
          *v10 = v37;
          goto LABEL_60;
        }
      }

      if (a5)
      {
        goto LABEL_107;
      }

      goto LABEL_104;
    }

    v17 = *v14;
    v18 = *v10;
    v19 = v14 + 1;
    v20 = v14[1];
    v21 = (v10 + 1);
    v22 = v10[1];
    v23 = *v14 < *v10;
    if (*v14 == *v10)
    {
      v23 = v20 < v22;
    }

    v24 = v16 < v20;
    if (v15 != v17)
    {
      v24 = v15 < v17;
    }

    if (v23)
    {
      if (v24)
      {
        *v10 = v15;
        *(a2 - 2) = v18;
LABEL_41:
        v19 = a2 - 1;
        goto LABEL_42;
      }

      *v10 = v17;
      v10[1] = v20;
      *v14 = v18;
      v14[1] = v22;
      v39 = *(a2 - 2);
      v40 = *(a2 - 1) < v22;
      if (v39 != v18)
      {
        v40 = v39 < v18;
      }

      if (v40)
      {
        *v14 = v39;
        *(a2 - 2) = v18;
        v21 = (v14 + 1);
        goto LABEL_41;
      }
    }

    else if (v24)
    {
      *v14 = v15;
      *(a2 - 2) = v17;
      v33 = *(v14 + 1);
      v14[1] = *(a2 - 1);
      *(a2 - 1) = v33;
      v34 = *v10;
      v35 = v14[1] < v10[1];
      if (*v14 != *v10)
      {
        v35 = *v14 < *v10;
      }

      if (v35)
      {
        *v10 = *v14;
        *v14 = v34;
LABEL_42:
        v41 = *v21;
        *v21 = *v19;
        *v19 = v41;
      }
    }

    v42 = v14 - 2;
    v43 = *(v14 - 2);
    v44 = v10[2];
    v45 = v14 - 1;
    v46 = *(v14 - 1);
    v47 = v10 + 3;
    v48 = v10[3];
    v49 = v43 < v44;
    if (v43 == v44)
    {
      v49 = v46 < v48;
    }

    v50 = *(a2 - 4);
    v51 = *(a2 - 3) < v46;
    if (v50 != v43)
    {
      v51 = v50 < v43;
    }

    if (v49)
    {
      if (v51)
      {
        v10[2] = v50;
        *(a2 - 4) = v44;
LABEL_67:
        v45 = a2 - 3;
        goto LABEL_68;
      }

      v10[2] = v43;
      v10[3] = v46;
      *v42 = v44;
      *(v14 - 1) = v48;
      v58 = *(a2 - 4);
      v59 = *(a2 - 3) < v48;
      if (v58 != v44)
      {
        v59 = v58 < v44;
      }

      if (v59)
      {
        *v42 = v58;
        *(a2 - 4) = v44;
        v47 = v14 - 1;
        goto LABEL_67;
      }
    }

    else if (v51)
    {
      *v42 = v50;
      *(a2 - 4) = v43;
      v52 = *(v14 - 1);
      *(v14 - 1) = *(a2 - 3);
      *(a2 - 3) = v52;
      v53 = v10[2];
      v54 = *(v14 - 1) < v10[3];
      if (*v42 != v53)
      {
        v54 = *v42 < v53;
      }

      if (v54)
      {
        v10[2] = *v42;
        *v42 = v53;
LABEL_68:
        v60 = *v47;
        *v47 = *v45;
        *v45 = v60;
      }
    }

    v61 = v14 + 2;
    v62 = v14[2];
    v63 = v10[4];
    v64 = v14 + 3;
    v65 = v14[3];
    v66 = (v10 + 5);
    v67 = v10[5];
    v68 = v62 < v63;
    if (v62 == v63)
    {
      v68 = v65 < v67;
    }

    v69 = *(a2 - 6);
    v70 = *(a2 - 5) < v65;
    if (v69 != v62)
    {
      v70 = v69 < v62;
    }

    if (v68)
    {
      if (v70)
      {
        v10[4] = v69;
        *(a2 - 6) = v63;
LABEL_85:
        v64 = a2 - 5;
        goto LABEL_86;
      }

      v10[4] = v62;
      v10[5] = v65;
      *v61 = v63;
      v14[3] = v67;
      v74 = *(a2 - 6);
      v75 = *(a2 - 5) < v67;
      if (v74 != v63)
      {
        v75 = v74 < v63;
      }

      if (v75)
      {
        *v61 = v74;
        *(a2 - 6) = v63;
        v66 = (v14 + 3);
        goto LABEL_85;
      }

      v65 = v67;
      v62 = v63;
    }

    else if (v70)
    {
      *v61 = v69;
      *(a2 - 6) = v62;
      v71 = *(v14 + 3);
      v14[3] = *(a2 - 5);
      *(a2 - 5) = v71;
      v62 = *v61;
      v65 = v14[3];
      v72 = v10[4];
      v73 = v65 < v10[5];
      if (*v61 != v72)
      {
        v73 = *v61 < v72;
      }

      if (v73)
      {
        v10[4] = v62;
        *v61 = v72;
LABEL_86:
        v76 = *v66;
        *v66 = *v64;
        *v64 = v76;
        v62 = *v61;
        v65 = v14[3];
      }
    }

    v78 = *v14;
    v77 = v14[1];
    v80 = *v42;
    v79 = *(v14 - 1);
    v81 = *v14 < *v42;
    if (*v14 == *v42)
    {
      v81 = v77 < v79;
    }

    v82 = v65 < v77;
    if (v62 != v78)
    {
      v82 = v62 < v78;
    }

    if (v81)
    {
      if (!v82)
      {
        *v42 = v78;
        *(v14 - 1) = v77;
        *v14 = v80;
        v14[1] = v79;
        v83 = v62 < v80;
        if (v62 == v80)
        {
          v83 = v65 < v79;
        }

        v42 = &v10[2 * (v13 >> 1)];
        if (!v83)
        {
          v84 = *v10;
          *v10 = v80;
          v10[1] = v79;
          *v14 = v84;
          if (a5)
          {
            goto LABEL_107;
          }

          goto LABEL_104;
        }
      }
    }

    else
    {
      if (!v82)
      {
        goto LABEL_103;
      }

      *v14 = v62;
      v14[1] = v65;
      *v61 = v78;
      v14[3] = v77;
      v85 = v62 < v80;
      if (v62 == v80)
      {
        v85 = v65 < v79;
      }

      v61 = &v10[2 * (v13 >> 1)];
      if (!v85)
      {
        v92 = v62;
        v93 = *v10;
        *v10 = v92;
        v10[1] = v65;
        *v14 = v93;
        if (a5)
        {
          goto LABEL_107;
        }

        goto LABEL_104;
      }
    }

    *v61 = v80;
    *v42 = v62;
    v42[1] = v65;
    v61[1] = v79;
    v78 = *v14;
    v77 = v14[1];
LABEL_103:
    v86 = *v10;
    *v10 = v78;
    v10[1] = v77;
    *v14 = v86;
    if (a5)
    {
      goto LABEL_107;
    }

LABEL_104:
    v87 = *(v10 - 2);
    v88 = *(v10 - 1) < v10[1];
    if (v87 != *v10)
    {
      v88 = v87 < *v10;
    }

    if (!v88)
    {
      v10 = sub_FB9124(v10, a2);
      goto LABEL_116;
    }

LABEL_107:
    v89 = sub_FB9254(v10, a2);
    if ((v90 & 1) == 0)
    {
      goto LABEL_114;
    }

    v91 = sub_FB9388(v10, v89);
    v10 = v89 + 2;
    if (sub_FB9388(v89 + 2, a2))
    {
      a4 = -v12;
      a2 = v89;
      if (v91)
      {
        return result;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v91)
    {
LABEL_114:
      result = sub_FB854C(a1, v89, a3, -v12, a5 & 1, result);
      v10 = v89 + 2;
LABEL_116:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  v117 = v10 + 2;
  v119 = v10 == a2 || v117 == a2;
  if (a5)
  {
    if (!v119)
    {
      v120 = 0;
      v121 = v10;
      do
      {
        result = v121[2];
        v123 = v121[3];
        v124 = *v121;
        v125 = v121[1];
        v121 = v117;
        v126 = v123 < v125;
        if (result != v124)
        {
          v126 = result < v124;
        }

        if (v126)
        {
          v127 = v120;
          do
          {
            v128 = (v10 + v127);
            v129 = *(v10 + v127 + 8);
            v128[2] = v124;
            *(v128 + 3) = v129;
            if (!v127)
            {
              v122 = v10;
              goto LABEL_157;
            }

            v124 = *(v128 - 2);
            v130 = v123 < *(v128 - 1);
            if (result != v124)
            {
              v130 = result < v124;
            }

            v127 -= 16;
          }

          while (v130);
          v122 = (v10 + v127 + 16);
LABEL_157:
          *v122 = result;
          v122[1] = v123;
        }

        v117 = v121 + 2;
        v120 += 16;
      }

      while (v121 + 2 != a2);
    }
  }

  else if (!v119)
  {
    v137 = v10 + 3;
    do
    {
      result = a1[2];
      v138 = a1[3];
      v139 = *a1;
      v140 = a1[1];
      a1 = v117;
      v141 = v138 < v140;
      if (result != v139)
      {
        v141 = result < v139;
      }

      if (v141)
      {
        v142 = v137;
        do
        {
          v143 = v142;
          v144 = *(v142 - 2);
          v142 -= 2;
          *(v143 - 1) = v139;
          *v143 = v144;
          v139 = *(v143 - 5);
          v145 = v138 < *(v143 - 4);
          if (result != v139)
          {
            v145 = result < v139;
          }
        }

        while (v145);
        *(v142 - 1) = result;
        *v142 = v138;
      }

      v117 = a1 + 2;
      v137 += 2;
    }

    while (a1 + 2 != a2);
  }

  return result;
}