void sub_10025CD7C(uint64_t a1, double *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if ((*(*a1 + 16))(a1))
  {
    v9 = *a2;
    v10 = *(a2 + 2);
    *v95 = 1124007936;
    memset(&v95[4], 0, 60);
    v96 = &v95[8];
    v97 = &v98;
    v98 = 0;
    v99 = 0;
    *v91 = 1124007936;
    memset(&v91[4], 0, 60);
    v92 = &v91[8];
    v93 = v94;
    v94[0] = 0;
    v94[1] = 0;
    *v86 = 1124007936;
    memset(&v86[4], 0, 60);
    v87 = &v86[8];
    v88 = &v89;
    v89 = 0;
    v90 = 0;
    sub_1002670C8(v100, v9, v10, v95, v91, v86, a2 + 40, a2[38], a2[39]);
    *a5 = *v100;
    *(a5 + 8) = *&v100[8];
    if (v100 == a5)
    {
LABEL_25:
      v30 = sub_10025DAEC(a5 + 112, v104, v11);
      sub_10025DAEC(a5 + 208, v105, v30);
      v31 = v107;
      *(a5 + 304) = v106;
      *(a5 + 320) = v31;
      *(a5 + 336) = v108;
      sub_100008E50(v100);
      if (*&v86[56] && atomic_fetch_add((*&v86[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v86);
      }

      *&v86[56] = 0;
      memset(&v86[16], 0, 32);
      if (*&v86[4] >= 1)
      {
        v32 = 0;
        v33 = v87;
        do
        {
          *&v33[4 * v32++] = 0;
        }

        while (v32 < *&v86[4]);
      }

      if (v88 != &v89)
      {
        j__free(v88);
      }

      if (*&v91[56] && atomic_fetch_add((*&v91[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v91);
      }

      *&v91[56] = 0;
      memset(&v91[16], 0, 32);
      if (*&v91[4] >= 1)
      {
        v34 = 0;
        v35 = v92;
        do
        {
          *&v35[4 * v34++] = 0;
        }

        while (v34 < *&v91[4]);
      }

      if (v93 != v94)
      {
        j__free(v93);
      }

      if (*&v95[56] && atomic_fetch_add((*&v95[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v95);
      }

      *&v95[56] = 0;
      memset(&v95[16], 0, 32);
      if (*&v95[4] >= 1)
      {
        v36 = 0;
        v37 = v96;
        do
        {
          *&v37[4 * v36++] = 0;
        }

        while (v36 < *&v95[4]);
      }

      if (v97 != &v98)
      {
        j__free(v97);
      }

      if (!*(a2 + 4))
      {
LABEL_106:
        if (!*(a2 + 16))
        {
          goto LABEL_128;
        }

        v59 = *a4;
        *v95 = *a3;
        *v91 = v59;
        sub_10026A3FC(v100, a2 + 28, v95, v91);
        if ((a5 + 112) == v100)
        {
          if (*&v100[56] && atomic_fetch_add((*&v100[56] + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v100);
          }

          goto LABEL_123;
        }

        v60 = *(a5 + 168);
        if (v60 && atomic_fetch_add((v60 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a5 + 112);
        }

        *(a5 + 168) = 0;
        *(a5 + 128) = 0u;
        *(a5 + 144) = 0u;
        if (*(a5 + 116) >= 1)
        {
          v61 = 0;
          v62 = *(a5 + 176);
          do
          {
            *(v62 + 4 * v61++) = 0;
          }

          while (v61 < *(a5 + 116));
        }

        v63 = *&v100[4];
        v64 = *&v100[16];
        *(a5 + 112) = *v100;
        *(a5 + 128) = v64;
        v65 = *&v100[48];
        *(a5 + 144) = *&v100[32];
        *(a5 + 160) = v65;
        v66 = *(a5 + 184);
        if (v66 == (a5 + 192))
        {
          v67 = *&v100[72];
          if (v63 <= 2)
          {
            goto LABEL_116;
          }
        }

        else
        {
          j__free(v66);
          *(a5 + 176) = a5 + 120;
          *(a5 + 184) = a5 + 192;
          v66 = (a5 + 192);
          v67 = *&v100[72];
          if (*&v100[4] <= 2)
          {
LABEL_116:
            *v66 = *v67;
            v66[1] = v67[1];
LABEL_122:
            *v100 = 1124007936;
            memset(&v100[4], 0, 60);
LABEL_123:
            *&v100[56] = 0;
            memset(&v100[16], 0, 32);
            if (*&v100[4] >= 1)
            {
              v68 = 0;
              v69 = *&v100[64];
              do
              {
                *(v69 + 4 * v68++) = 0;
              }

              while (v68 < *&v100[4]);
            }

            if (*&v100[72] != &v101)
            {
              j__free(*&v100[72]);
            }

LABEL_128:
            if (!*(a2 + 28))
            {
              return;
            }

            v70 = *a4;
            *v95 = *a3;
            *v91 = v70;
            sub_10026A3FC(v100, a2 + 52, v95, v91);
            if ((a5 + 208) == v100)
            {
              if (*&v100[56] && atomic_fetch_add((*&v100[56] + 20), 0xFFFFFFFF) == 1)
              {
                sub_100269BC8(v100);
              }

              goto LABEL_145;
            }

            v71 = *(a5 + 264);
            if (v71 && atomic_fetch_add((v71 + 20), 0xFFFFFFFF) == 1)
            {
              sub_100269BC8(a5 + 208);
            }

            *(a5 + 264) = 0;
            *(a5 + 224) = 0u;
            *(a5 + 240) = 0u;
            if (*(a5 + 212) >= 1)
            {
              v72 = 0;
              v73 = *(a5 + 272);
              do
              {
                *(v73 + 4 * v72++) = 0;
              }

              while (v72 < *(a5 + 212));
            }

            v74 = *&v100[4];
            v75 = *&v100[16];
            *(a5 + 208) = *v100;
            *(a5 + 224) = v75;
            v76 = *&v100[48];
            *(a5 + 240) = *&v100[32];
            *(a5 + 256) = v76;
            v77 = *(a5 + 280);
            if (v77 == (a5 + 288))
            {
              v78 = *&v100[72];
              if (v74 <= 2)
              {
                goto LABEL_138;
              }
            }

            else
            {
              j__free(v77);
              *(a5 + 272) = a5 + 216;
              *(a5 + 280) = a5 + 288;
              v77 = (a5 + 288);
              v78 = *&v100[72];
              if (*&v100[4] <= 2)
              {
LABEL_138:
                *v77 = *v78;
                v77[1] = v78[1];
LABEL_144:
                *v100 = 1124007936;
                memset(&v100[4], 0, 60);
LABEL_145:
                *&v100[56] = 0;
                memset(&v100[16], 0, 32);
                if (*&v100[4] >= 1)
                {
                  v79 = 0;
                  v80 = *&v100[64];
                  do
                  {
                    *(v80 + 4 * v79++) = 0;
                  }

                  while (v79 < *&v100[4]);
                }

                if (*&v100[72] != &v101)
                {
                  j__free(*&v100[72]);
                }

                return;
              }
            }

            *(a5 + 272) = *&v100[64];
            *(a5 + 280) = v78;
            *&v100[64] = &v100[8];
            *&v100[72] = &v101;
            goto LABEL_144;
          }
        }

        *(a5 + 176) = *&v100[64];
        *(a5 + 184) = v67;
        *&v100[64] = &v100[8];
        *&v100[72] = &v101;
        goto LABEL_122;
      }

      v38 = *a4;
      *v95 = *a3;
      *v91 = v38;
      sub_10026A3FC(v100, a2 + 4, v95, v91);
      if ((a5 + 16) == v100)
      {
        if (*&v100[56] && atomic_fetch_add((*&v100[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v100);
        }

        goto LABEL_101;
      }

      v39 = *(a5 + 72);
      if (v39 && atomic_fetch_add((v39 + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(a5 + 16);
      }

      *(a5 + 72) = 0;
      *(a5 + 32) = 0u;
      *(a5 + 48) = 0u;
      if (*(a5 + 20) >= 1)
      {
        v40 = 0;
        v41 = *(a5 + 80);
        do
        {
          *(v41 + 4 * v40++) = 0;
        }

        while (v40 < *(a5 + 20));
      }

      v42 = *&v100[4];
      v43 = *&v100[16];
      *(a5 + 16) = *v100;
      *(a5 + 32) = v43;
      v44 = *&v100[48];
      *(a5 + 48) = *&v100[32];
      *(a5 + 64) = v44;
      v45 = *(a5 + 88);
      if (v45 == (a5 + 96))
      {
        v46 = *&v100[72];
        if (v42 <= 2)
        {
          goto LABEL_59;
        }
      }

      else
      {
        j__free(v45);
        *(a5 + 80) = a5 + 24;
        *(a5 + 88) = a5 + 96;
        v45 = (a5 + 96);
        v46 = *&v100[72];
        if (*&v100[4] <= 2)
        {
LABEL_59:
          *v45 = *v46;
          v45[1] = v46[1];
LABEL_100:
          *v100 = 1124007936;
          memset(&v100[4], 0, 60);
LABEL_101:
          *&v100[56] = 0;
          memset(&v100[16], 0, 32);
          if (*&v100[4] >= 1)
          {
            v57 = 0;
            v58 = *&v100[64];
            do
            {
              *(v58 + 4 * v57++) = 0;
            }

            while (v57 < *&v100[4]);
          }

          if (*&v100[72] != &v101)
          {
            j__free(*&v100[72]);
          }

          goto LABEL_106;
        }
      }

      *(a5 + 80) = *&v100[64];
      *(a5 + 88) = v46;
      *&v100[64] = &v100[8];
      *&v100[72] = &v101;
      goto LABEL_100;
    }

    v12 = *(a5 + 72);
    if (v12 && atomic_fetch_add((v12 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a5 + 16);
    }

    *(a5 + 72) = 0;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    if (*(a5 + 20) >= 1)
    {
      v13 = 0;
      v14 = *(a5 + 80);
      do
      {
        *(v14 + 4 * v13++) = 0;
      }

      while (v13 < *(a5 + 20));
    }

    v15 = *&v100[20];
    v16 = *&v100[32];
    *(a5 + 16) = *&v100[16];
    *(a5 + 32) = v16;
    v17 = *&v100[64];
    *(a5 + 48) = *&v100[48];
    *(a5 + 64) = v17;
    v18 = *(a5 + 88);
    if (v18 == (a5 + 96))
    {
      v19 = v102;
      if (v15 <= 2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      j__free(v18);
      *(a5 + 80) = a5 + 24;
      *(a5 + 88) = a5 + 96;
      v18 = (a5 + 96);
      v19 = v102;
      if (*&v100[20] <= 2)
      {
LABEL_11:
        *v18 = *v19;
        v18[1] = v19[1];
LABEL_24:
        *&v100[16] = 1124007936;
        v11 = 0.0;
        memset(&v100[20], 0, 60);
        goto LABEL_25;
      }
    }

    *(a5 + 80) = v101;
    *(a5 + 88) = v19;
    v102 = v103;
    v101 = &v100[24];
    goto LABEL_24;
  }

  *v95 = 1124007936;
  memset(&v95[4], 0, 60);
  v96 = &v95[8];
  v97 = &v98;
  v98 = 0;
  v99 = 0;
  (*(**a2 + 24))(*a2, a2, v95, 0xFFFFFFFFLL);
  v20 = *a4;
  *v86 = *a3;
  *v82 = v20;
  sub_10026A3FC(v91, v95, v86, v82);
  *v86 = 1124007936;
  memset(&v86[4], 0, 60);
  v87 = &v86[8];
  v88 = &v89;
  v89 = 0;
  v90 = 0;
  *v82 = 1124007936;
  memset(&v82[4], 0, 60);
  v83 = &v82[8];
  v84 = v85;
  v85[0] = 0;
  v85[1] = 0;
  memset(v81, 0, sizeof(v81));
  sub_1002670C8(v100, &qword_1004BD530, 0, v91, v86, v82, v81, 1.0, 1.0);
  *a5 = *v100;
  *(a5 + 8) = *&v100[8];
  if (v100 != a5)
  {
    v22 = *(a5 + 72);
    if (v22 && atomic_fetch_add((v22 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a5 + 16);
    }

    *(a5 + 72) = 0;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    if (*(a5 + 20) >= 1)
    {
      v23 = 0;
      v24 = *(a5 + 80);
      do
      {
        *(v24 + 4 * v23++) = 0;
      }

      while (v23 < *(a5 + 20));
    }

    v25 = *&v100[20];
    v26 = *&v100[32];
    *(a5 + 16) = *&v100[16];
    *(a5 + 32) = v26;
    v27 = *&v100[64];
    *(a5 + 48) = *&v100[48];
    *(a5 + 64) = v27;
    v28 = *(a5 + 88);
    if (v28 == (a5 + 96))
    {
      v29 = v102;
      if (v25 <= 2)
      {
        goto LABEL_21;
      }
    }

    else
    {
      j__free(v28);
      *(a5 + 80) = a5 + 24;
      *(a5 + 88) = a5 + 96;
      v28 = (a5 + 96);
      v29 = v102;
      if (*&v100[20] <= 2)
      {
LABEL_21:
        *v28 = *v29;
        v28[1] = v29[1];
LABEL_62:
        *&v100[16] = 1124007936;
        v21 = 0.0;
        memset(&v100[20], 0, 60);
        goto LABEL_63;
      }
    }

    *(a5 + 80) = v101;
    *(a5 + 88) = v29;
    v102 = v103;
    v101 = &v100[24];
    goto LABEL_62;
  }

LABEL_63:
  v47 = sub_10025DAEC(a5 + 112, v104, v21);
  sub_10025DAEC(a5 + 208, v105, v47);
  v48 = v107;
  *(a5 + 304) = v106;
  *(a5 + 320) = v48;
  *(a5 + 336) = v108;
  sub_100008E50(v100);
  if (*&v82[56] && atomic_fetch_add((*&v82[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v82);
  }

  *&v82[56] = 0;
  memset(&v82[16], 0, 32);
  if (*&v82[4] >= 1)
  {
    v49 = 0;
    v50 = v83;
    do
    {
      *&v50[4 * v49++] = 0;
    }

    while (v49 < *&v82[4]);
  }

  if (v84 != v85)
  {
    j__free(v84);
  }

  if (*&v86[56] && atomic_fetch_add((*&v86[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v86);
  }

  *&v86[56] = 0;
  memset(&v86[16], 0, 32);
  if (*&v86[4] >= 1)
  {
    v51 = 0;
    v52 = v87;
    do
    {
      *&v52[4 * v51++] = 0;
    }

    while (v51 < *&v86[4]);
  }

  if (v88 != &v89)
  {
    j__free(v88);
  }

  if (*&v91[56] && atomic_fetch_add((*&v91[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v91);
  }

  *&v91[56] = 0;
  memset(&v91[16], 0, 32);
  if (*&v91[4] >= 1)
  {
    v53 = 0;
    v54 = v92;
    do
    {
      *&v54[4 * v53++] = 0;
    }

    while (v53 < *&v91[4]);
  }

  if (v93 != v94)
  {
    j__free(v93);
  }

  if (*&v95[56] && atomic_fetch_add((*&v95[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v95);
  }

  *&v95[56] = 0;
  memset(&v95[16], 0, 32);
  if (*&v95[4] >= 1)
  {
    v55 = 0;
    v56 = v96;
    do
    {
      *&v56[4 * v55++] = 0;
    }

    while (v55 < *&v95[4]);
  }

  if (v97 != &v98)
  {
    j__free(v97);
  }
}

void sub_10025DA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_10025DA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  sub_100006D14(&a15);
  sub_100006D14(&a27);
  sub_100006D14(&a39);
  sub_100006D14(&a51);
  _Unwind_Resume(a1);
}

double sub_10025DAEC(uint64_t a1, __int128 *a2, double result)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 56);
    if (v4 && atomic_fetch_add((v4 + 20), 0xFFFFFFFF) == 1)
    {
      v5 = a1;
      sub_100269BC8(a1);
      a1 = v5;
    }

    *(a1 + 56) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    if (*(a1 + 4) >= 1)
    {
      v6 = 0;
      v7 = *(a1 + 64);
      do
      {
        *(v7 + 4 * v6++) = 0;
      }

      while (v6 < *(a1 + 4));
    }

    v8 = *a2;
    v9 = a2[1];
    *a1 = *a2;
    *(a1 + 16) = v9;
    *(a1 + 32) = a2[2];
    *(a1 + 48) = a2[3];
    v10 = *(a1 + 72);
    v11 = (a1 + 80);
    if (v10 == (a1 + 80))
    {
      v14 = *(a2 + 9);
      if (SDWORD1(v8) <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = a1 + 8;
      v13 = a1;
      j__free(*(a1 + 72));
      a1 = v13;
      *(v13 + 64) = v12;
      *(v13 + 72) = v11;
      v10 = v11;
      v14 = *(a2 + 9);
      if (*(a2 + 1) <= 2)
      {
LABEL_10:
        *v10 = *v14;
        v10[1] = v14[1];
LABEL_13:
        *a2 = 1124007936;
        result = 0.0;
        *(a2 + 4) = 0u;
        *(a2 + 20) = 0u;
        *(a2 + 36) = 0u;
        a2[3] = 0u;
        return result;
      }
    }

    *(a1 + 64) = *(a2 + 8);
    *(a1 + 72) = v14;
    *(a2 + 8) = a2 + 8;
    *(a2 + 9) = a2 + 5;
    goto LABEL_13;
  }

  return result;
}

void sub_10025DC24(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if ((*(*a1 + 16))(a1))
  {
    v7 = *a2;
    v8 = *(a2 + 2);
    v90 = 1124007936;
    memset(v91, 0, sizeof(v91));
    v92 = &v91[1];
    v93 = &v94;
    v94 = 0;
    v95 = 0;
    LODWORD(v86[0]) = 1124007936;
    memset(v86 + 4, 0, 48);
    v86[3] = 0u;
    v87 = v86 + 8;
    v88 = v89;
    v89[0] = 0;
    v89[1] = 0;
    v80 = 1124007936;
    memset(v81, 0, sizeof(v81));
    v82 = &v81[1];
    v83 = &v84;
    v84 = 0;
    v85 = 0;
    sub_1002670C8(v96, v7, v8, &v90, v86, &v80, a2 + 40, a2[38], a2[39]);
    *a4 = *v96;
    *(a4 + 8) = *&v96[8];
    if (v96 == a4)
    {
LABEL_25:
      v27 = sub_10025DAEC(a4 + 112, v100, v9);
      sub_10025DAEC(a4 + 208, v101, v27);
      v28 = v103;
      *(a4 + 304) = v102;
      *(a4 + 320) = v28;
      *(a4 + 336) = v104;
      sub_100008E50(v96);
      if (*&v81[13] && atomic_fetch_add((*&v81[13] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(&v80);
      }

      *&v81[13] = 0;
      memset(&v81[3], 0, 32);
      if (v81[0] >= 1)
      {
        v29 = 0;
        v30 = v82;
        do
        {
          v30[v29++] = 0;
        }

        while (v29 < v81[0]);
      }

      if (v83 != &v84)
      {
        j__free(v83);
      }

      if (*(&v86[3] + 1) && atomic_fetch_add((*(&v86[3] + 1) + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v86);
      }

      *(&v86[3] + 1) = 0;
      memset(&v86[1], 0, 32);
      if (SDWORD1(v86[0]) >= 1)
      {
        v31 = 0;
        v32 = v87;
        do
        {
          *&v32[4 * v31++] = 0;
        }

        while (v31 < SDWORD1(v86[0]));
      }

      if (v88 != v89)
      {
        j__free(v88);
      }

      if (*&v91[13] && atomic_fetch_add((*&v91[13] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(&v90);
      }

      *&v91[13] = 0;
      memset(&v91[3], 0, 32);
      if (v91[0] >= 1)
      {
        v33 = 0;
        v34 = v92;
        do
        {
          v34[v33++] = 0;
        }

        while (v33 < v91[0]);
      }

      if (v93 != &v94)
      {
        j__free(v93);
      }

      if (!*(a2 + 4))
      {
LABEL_106:
        if (!*(a2 + 16))
        {
          goto LABEL_128;
        }

        sub_10026A6E4((a2 + 14), v5, v96);
        if ((a4 + 112) == v96)
        {
          if (*&v96[56] && atomic_fetch_add((*&v96[56] + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v96);
          }

          goto LABEL_123;
        }

        v55 = *(a4 + 168);
        if (v55 && atomic_fetch_add((v55 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a4 + 112);
        }

        *(a4 + 168) = 0;
        *(a4 + 128) = 0u;
        *(a4 + 144) = 0u;
        if (*(a4 + 116) >= 1)
        {
          v56 = 0;
          v57 = *(a4 + 176);
          do
          {
            *(v57 + 4 * v56++) = 0;
          }

          while (v56 < *(a4 + 116));
        }

        v58 = *&v96[4];
        v59 = *&v96[16];
        *(a4 + 112) = *v96;
        *(a4 + 128) = v59;
        v60 = *&v96[48];
        *(a4 + 144) = *&v96[32];
        *(a4 + 160) = v60;
        v61 = *(a4 + 184);
        if (v61 == (a4 + 192))
        {
          v62 = *&v96[72];
          if (v58 <= 2)
          {
            goto LABEL_116;
          }
        }

        else
        {
          j__free(v61);
          *(a4 + 176) = a4 + 120;
          *(a4 + 184) = a4 + 192;
          v61 = (a4 + 192);
          v62 = *&v96[72];
          if (*&v96[4] <= 2)
          {
LABEL_116:
            *v61 = *v62;
            v61[1] = v62[1];
LABEL_122:
            *v96 = 1124007936;
            memset(&v96[4], 0, 60);
LABEL_123:
            *&v96[56] = 0;
            memset(&v96[16], 0, 32);
            if (*&v96[4] >= 1)
            {
              v63 = 0;
              v64 = *&v96[64];
              do
              {
                *(v64 + 4 * v63++) = 0;
              }

              while (v63 < *&v96[4]);
            }

            if (*&v96[72] != &v97)
            {
              j__free(*&v96[72]);
            }

LABEL_128:
            if (!*(a2 + 28))
            {
              return;
            }

            sub_10026A6E4((a2 + 26), v5, v96);
            if ((a4 + 208) == v96)
            {
              if (*&v96[56] && atomic_fetch_add((*&v96[56] + 20), 0xFFFFFFFF) == 1)
              {
                sub_100269BC8(v96);
              }

              goto LABEL_145;
            }

            v65 = *(a4 + 264);
            if (v65 && atomic_fetch_add((v65 + 20), 0xFFFFFFFF) == 1)
            {
              sub_100269BC8(a4 + 208);
            }

            *(a4 + 264) = 0;
            *(a4 + 224) = 0u;
            *(a4 + 240) = 0u;
            if (*(a4 + 212) >= 1)
            {
              v66 = 0;
              v67 = *(a4 + 272);
              do
              {
                *(v67 + 4 * v66++) = 0;
              }

              while (v66 < *(a4 + 212));
            }

            v68 = *&v96[4];
            v69 = *&v96[16];
            *(a4 + 208) = *v96;
            *(a4 + 224) = v69;
            v70 = *&v96[48];
            *(a4 + 240) = *&v96[32];
            *(a4 + 256) = v70;
            v71 = *(a4 + 280);
            if (v71 == (a4 + 288))
            {
              v72 = *&v96[72];
              if (v68 <= 2)
              {
                goto LABEL_138;
              }
            }

            else
            {
              j__free(v71);
              *(a4 + 272) = a4 + 216;
              *(a4 + 280) = a4 + 288;
              v71 = (a4 + 288);
              v72 = *&v96[72];
              if (*&v96[4] <= 2)
              {
LABEL_138:
                *v71 = *v72;
                v71[1] = v72[1];
LABEL_144:
                *v96 = 1124007936;
                memset(&v96[4], 0, 60);
LABEL_145:
                *&v96[56] = 0;
                memset(&v96[16], 0, 32);
                if (*&v96[4] >= 1)
                {
                  v73 = 0;
                  v74 = *&v96[64];
                  do
                  {
                    *(v74 + 4 * v73++) = 0;
                  }

                  while (v73 < *&v96[4]);
                }

                if (*&v96[72] != &v97)
                {
                  j__free(*&v96[72]);
                }

                return;
              }
            }

            *(a4 + 272) = *&v96[64];
            *(a4 + 280) = v72;
            *&v96[64] = &v96[8];
            *&v96[72] = &v97;
            goto LABEL_144;
          }
        }

        *(a4 + 176) = *&v96[64];
        *(a4 + 184) = v62;
        *&v96[64] = &v96[8];
        *&v96[72] = &v97;
        goto LABEL_122;
      }

      sub_10026A6E4((a2 + 2), v5, v96);
      if ((a4 + 16) == v96)
      {
        if (*&v96[56] && atomic_fetch_add((*&v96[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v96);
        }

        goto LABEL_101;
      }

      v35 = *(a4 + 72);
      if (v35 && atomic_fetch_add((v35 + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(a4 + 16);
      }

      *(a4 + 72) = 0;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      if (*(a4 + 20) >= 1)
      {
        v36 = 0;
        v37 = *(a4 + 80);
        do
        {
          *(v37 + 4 * v36++) = 0;
        }

        while (v36 < *(a4 + 20));
      }

      v38 = *&v96[4];
      v39 = *&v96[16];
      *(a4 + 16) = *v96;
      *(a4 + 32) = v39;
      v40 = *&v96[48];
      *(a4 + 48) = *&v96[32];
      *(a4 + 64) = v40;
      v41 = *(a4 + 88);
      if (v41 == (a4 + 96))
      {
        v42 = *&v96[72];
        if (v38 <= 2)
        {
          goto LABEL_59;
        }
      }

      else
      {
        j__free(v41);
        *(a4 + 80) = a4 + 24;
        *(a4 + 88) = a4 + 96;
        v41 = (a4 + 96);
        v42 = *&v96[72];
        if (*&v96[4] <= 2)
        {
LABEL_59:
          *v41 = *v42;
          v41[1] = v42[1];
LABEL_100:
          *v96 = 1124007936;
          memset(&v96[4], 0, 60);
LABEL_101:
          *&v96[56] = 0;
          memset(&v96[16], 0, 32);
          if (*&v96[4] >= 1)
          {
            v53 = 0;
            v54 = *&v96[64];
            do
            {
              *(v54 + 4 * v53++) = 0;
            }

            while (v53 < *&v96[4]);
          }

          if (*&v96[72] != &v97)
          {
            j__free(*&v96[72]);
          }

          goto LABEL_106;
        }
      }

      *(a4 + 80) = *&v96[64];
      *(a4 + 88) = v42;
      *&v96[64] = &v96[8];
      *&v96[72] = &v97;
      goto LABEL_100;
    }

    v10 = *(a4 + 72);
    if (v10 && atomic_fetch_add((v10 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a4 + 16);
    }

    *(a4 + 72) = 0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    if (*(a4 + 20) >= 1)
    {
      v11 = 0;
      v12 = *(a4 + 80);
      do
      {
        *(v12 + 4 * v11++) = 0;
      }

      while (v11 < *(a4 + 20));
    }

    v13 = *&v96[20];
    v14 = *&v96[32];
    *(a4 + 16) = *&v96[16];
    *(a4 + 32) = v14;
    v15 = *&v96[64];
    *(a4 + 48) = *&v96[48];
    *(a4 + 64) = v15;
    v16 = *(a4 + 88);
    if (v16 == (a4 + 96))
    {
      v17 = v98;
      if (v13 <= 2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      j__free(v16);
      *(a4 + 80) = a4 + 24;
      *(a4 + 88) = a4 + 96;
      v16 = (a4 + 96);
      v17 = v98;
      if (*&v96[20] <= 2)
      {
LABEL_11:
        *v16 = *v17;
        v16[1] = v17[1];
LABEL_24:
        *&v96[16] = 1124007936;
        v9 = 0.0;
        memset(&v96[20], 0, 60);
        goto LABEL_25;
      }
    }

    *(a4 + 80) = v97;
    *(a4 + 88) = v17;
    v97 = &v96[24];
    v98 = v99;
    goto LABEL_24;
  }

  v90 = 1124007936;
  memset(v91, 0, sizeof(v91));
  v92 = &v91[1];
  v93 = &v94;
  v94 = 0;
  v95 = 0;
  (*(**a2 + 24))(*a2, a2, &v90, 0xFFFFFFFFLL);
  sub_10026A6E4(&v90, v5, v86);
  v80 = 1124007936;
  memset(v81, 0, sizeof(v81));
  v82 = &v81[1];
  v83 = &v84;
  v84 = 0;
  v85 = 0;
  LODWORD(v76[0]) = 1124007936;
  memset(v76 + 4, 0, 48);
  v76[3] = 0u;
  v77 = v76 + 8;
  v78 = v79;
  v79[0] = 0;
  v79[1] = 0;
  memset(v75, 0, sizeof(v75));
  sub_1002670C8(v96, &qword_1004BD530, 0, v86, &v80, v76, v75, 1.0, 1.0);
  *a4 = *v96;
  *(a4 + 8) = *&v96[8];
  if (v96 != a4)
  {
    v19 = *(a4 + 72);
    if (v19 && atomic_fetch_add((v19 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a4 + 16);
    }

    *(a4 + 72) = 0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    if (*(a4 + 20) >= 1)
    {
      v20 = 0;
      v21 = *(a4 + 80);
      do
      {
        *(v21 + 4 * v20++) = 0;
      }

      while (v20 < *(a4 + 20));
    }

    v22 = *&v96[20];
    v23 = *&v96[32];
    *(a4 + 16) = *&v96[16];
    *(a4 + 32) = v23;
    v24 = *&v96[64];
    *(a4 + 48) = *&v96[48];
    *(a4 + 64) = v24;
    v25 = *(a4 + 88);
    if (v25 == (a4 + 96))
    {
      v26 = v98;
      if (v22 <= 2)
      {
        goto LABEL_21;
      }
    }

    else
    {
      j__free(v25);
      *(a4 + 80) = a4 + 24;
      *(a4 + 88) = a4 + 96;
      v25 = (a4 + 96);
      v26 = v98;
      if (*&v96[20] <= 2)
      {
LABEL_21:
        *v25 = *v26;
        v25[1] = v26[1];
LABEL_62:
        *&v96[16] = 1124007936;
        v18 = 0.0;
        memset(&v96[20], 0, 60);
        goto LABEL_63;
      }
    }

    *(a4 + 80) = v97;
    *(a4 + 88) = v26;
    v97 = &v96[24];
    v98 = v99;
    goto LABEL_62;
  }

LABEL_63:
  v43 = sub_10025DAEC(a4 + 112, v100, v18);
  sub_10025DAEC(a4 + 208, v101, v43);
  v44 = v103;
  *(a4 + 304) = v102;
  *(a4 + 320) = v44;
  *(a4 + 336) = v104;
  sub_100008E50(v96);
  if (*(&v76[3] + 1) && atomic_fetch_add((*(&v76[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v76);
  }

  *(&v76[3] + 1) = 0;
  memset(&v76[1], 0, 32);
  if (SDWORD1(v76[0]) >= 1)
  {
    v45 = 0;
    v46 = v77;
    do
    {
      *&v46[4 * v45++] = 0;
    }

    while (v45 < SDWORD1(v76[0]));
  }

  if (v78 != v79)
  {
    j__free(v78);
  }

  if (*&v81[13] && atomic_fetch_add((*&v81[13] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v80);
  }

  *&v81[13] = 0;
  memset(&v81[3], 0, 32);
  if (v81[0] >= 1)
  {
    v47 = 0;
    v48 = v82;
    do
    {
      v48[v47++] = 0;
    }

    while (v47 < v81[0]);
  }

  if (v83 != &v84)
  {
    j__free(v83);
  }

  if (*(&v86[3] + 1) && atomic_fetch_add((*(&v86[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v86);
  }

  *(&v86[3] + 1) = 0;
  memset(&v86[1], 0, 32);
  if (SDWORD1(v86[0]) >= 1)
  {
    v49 = 0;
    v50 = v87;
    do
    {
      *&v50[4 * v49++] = 0;
    }

    while (v49 < SDWORD1(v86[0]));
  }

  if (v88 != v89)
  {
    j__free(v88);
  }

  if (*&v91[13] && atomic_fetch_add((*&v91[13] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v90);
  }

  *&v91[13] = 0;
  memset(&v91[3], 0, 32);
  if (v91[0] >= 1)
  {
    v51 = 0;
    v52 = v92;
    do
    {
      v52[v51++] = 0;
    }

    while (v51 < v91[0]);
  }

  if (v93 != &v94)
  {
    j__free(v93);
  }
}

void sub_10025E878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_10025E8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  sub_100006D14(&a13);
  sub_100006D14(&a25);
  sub_100006D14(&a37);
  sub_100006D14(&a49);
  _Unwind_Resume(a1);
}

void sub_10025E938(uint64_t a1, void *a2, uint64_t a3)
{
  LODWORD(v7[0]) = 1124007936;
  memset(v7 + 4, 0, 32);
  memset(&v7[4] + 4, 0, 28);
  v8 = &v7[1];
  v9 = v10;
  v10[0] = 0;
  v10[1] = 0;
  (*(**a2 + 24))(*a2, a2, v7, 0xFFFFFFFFLL);
  v19 = 0;
  v17 = 16842752;
  v18 = a3;
  v16 = 0;
  v14 = 16842752;
  v15 = v7;
  v11 = 33619968;
  v12 = a3;
  v13 = 0;
  v4 = sub_100276DA4();
  sub_1001DAF28(&v17, &v14, &v11, v4, 0xFFFFFFFFLL);
  if (v7[7] && atomic_fetch_add((v7[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v7);
  }

  v7[7] = 0;
  memset(&v7[2], 0, 32);
  if (SHIDWORD(v7[0]) >= 1)
  {
    v5 = 0;
    v6 = v8;
    do
    {
      *(v6 + v5++) = 0;
    }

    while (v5 < SHIDWORD(v7[0]));
  }

  if (v9 != v10)
  {
    j__free(v9);
  }
}

void sub_10025EA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_10025EA94(uint64_t a1, void *a2, uint64_t a3)
{
  LODWORD(v7[0]) = 1124007936;
  memset(v7 + 4, 0, 32);
  memset(&v7[4] + 4, 0, 28);
  v8 = &v7[1];
  v9 = v10;
  v10[0] = 0;
  v10[1] = 0;
  (*(**a2 + 24))(*a2, a2, v7, 0xFFFFFFFFLL);
  v19 = 0;
  v17 = 16842752;
  v18 = a3;
  v16 = 0;
  v14 = 16842752;
  v15 = v7;
  v11 = 33619968;
  v12 = a3;
  v13 = 0;
  v4 = sub_100276DA4();
  sub_1001DD10C(&v17, &v14, &v11, v4, -1);
  if (v7[7] && atomic_fetch_add((v7[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v7);
  }

  v7[7] = 0;
  memset(&v7[2], 0, 32);
  if (SHIDWORD(v7[0]) >= 1)
  {
    v5 = 0;
    v6 = v8;
    do
    {
      *(v6 + v5++) = 0;
    }

    while (v5 < SHIDWORD(v7[0]));
  }

  if (v9 != v10)
  {
    j__free(v9);
  }
}

void sub_10025EBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_10025EBF0(uint64_t a1, void *a2, uint64_t a3)
{
  LODWORD(v8[0]) = 1124007936;
  memset(v8 + 4, 0, 32);
  memset(&v8[4] + 4, 0, 28);
  v9 = &v8[1];
  v10 = v11;
  v11[0] = 0;
  v11[1] = 0;
  (*(**a2 + 24))(*a2, a2, v8, 0xFFFFFFFFLL);
  v27 = 0;
  v25 = 16842752;
  v26 = a3;
  v24 = 0;
  v22 = 16842752;
  v23 = v8;
  LODWORD(v15[0]) = 1124007936;
  memset(v15 + 4, 0, 48);
  v15[3] = 0u;
  v16 = v15 + 8;
  v17 = v18;
  v18[0] = 0;
  v18[1] = 0;
  v21 = 0;
  v19 = 16842752;
  v20 = v15;
  v12 = 33619968;
  v13 = a3;
  v14 = 0;
  sub_100243EB0(&v25, &v22, &v19, &v12, 0, 1.0, 0.0);
  if (*(&v15[3] + 1) && atomic_fetch_add((*(&v15[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v15);
  }

  *(&v15[3] + 1) = 0;
  memset(&v15[1], 0, 32);
  if (SDWORD1(v15[0]) >= 1)
  {
    v4 = 0;
    v5 = v16;
    do
    {
      *&v5[4 * v4++] = 0;
    }

    while (v4 < SDWORD1(v15[0]));
  }

  if (v17 != v18)
  {
    j__free(v17);
  }

  if (v8[7] && atomic_fetch_add((v8[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v8);
  }

  v8[7] = 0;
  memset(&v8[2], 0, 32);
  if (SHIDWORD(v8[0]) >= 1)
  {
    v6 = 0;
    v7 = v9;
    do
    {
      *(v7 + v6++) = 0;
    }

    while (v6 < SHIDWORD(v8[0]));
  }

  if (v10 != v11)
  {
    j__free(v10);
  }
}

void sub_10025EDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_100006D14(va);
  sub_100006D14(&a9);
  _Unwind_Resume(a1);
}

void sub_10025EE10(uint64_t a1, void *a2, uint64_t a3)
{
  LODWORD(v6[0]) = 1124007936;
  memset(v6 + 4, 0, 32);
  memset(&v6[4] + 4, 0, 28);
  v7 = &v6[1];
  v8 = v9;
  v9[0] = 0;
  v9[1] = 0;
  (*(**a2 + 24))(*a2, a2, v6, 0xFFFFFFFFLL);
  v18 = 0;
  v16 = 16842752;
  v17 = a3;
  v15 = 0;
  v13 = 16842752;
  v14 = v6;
  v10 = 33619968;
  v11 = a3;
  v12 = 0;
  sub_1001DD2F4(&v16, &v13, &v10, -1, 1.0);
  if (v6[7] && atomic_fetch_add((v6[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v6);
  }

  v6[7] = 0;
  memset(&v6[2], 0, 32);
  if (SHIDWORD(v6[0]) >= 1)
  {
    v4 = 0;
    v5 = v7;
    do
    {
      *(v5 + v4++) = 0;
    }

    while (v4 < SHIDWORD(v6[0]));
  }

  if (v8 != v9)
  {
    j__free(v8);
  }
}

void sub_10025EF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_10025EF68(uint64_t a1, void *a2, uint64_t a3)
{
  LODWORD(v7[0]) = 1124007936;
  memset(v7 + 4, 0, 32);
  memset(&v7[4] + 4, 0, 28);
  v8 = &v7[1];
  v9 = v10;
  v10[0] = 0;
  v10[1] = 0;
  (*(**a2 + 24))(*a2, a2, v7, 0xFFFFFFFFLL);
  v19 = 0;
  v17 = 16842752;
  v18 = a3;
  v16 = 0;
  v14 = 16842752;
  v15 = v7;
  v11 = 33619968;
  v12 = a3;
  v13 = 0;
  v4 = sub_100276DA4();
  sub_1001D9360(&v17, &v14, &v11, v4);
  if (v7[7] && atomic_fetch_add((v7[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v7);
  }

  v7[7] = 0;
  memset(&v7[2], 0, 32);
  if (SHIDWORD(v7[0]) >= 1)
  {
    v5 = 0;
    v6 = v8;
    do
    {
      *(v6 + v5++) = 0;
    }

    while (v5 < SHIDWORD(v7[0]));
  }

  if (v9 != v10)
  {
    j__free(v9);
  }
}

void sub_10025F0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_10025F0C0(uint64_t a1, void *a2, uint64_t a3)
{
  LODWORD(v7[0]) = 1124007936;
  memset(v7 + 4, 0, 32);
  memset(&v7[4] + 4, 0, 28);
  v8 = &v7[1];
  v9 = v10;
  v10[0] = 0;
  v10[1] = 0;
  (*(**a2 + 24))(*a2, a2, v7, 0xFFFFFFFFLL);
  v19 = 0;
  v17 = 16842752;
  v18 = a3;
  v16 = 0;
  v14 = 16842752;
  v15 = v7;
  v11 = 33619968;
  v12 = a3;
  v13 = 0;
  v4 = sub_100276DA4();
  sub_1001DAA7C(&v17, &v14, &v11, v4);
  if (v7[7] && atomic_fetch_add((v7[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v7);
  }

  v7[7] = 0;
  memset(&v7[2], 0, 32);
  if (SHIDWORD(v7[0]) >= 1)
  {
    v5 = 0;
    v6 = v8;
    do
    {
      *(v6 + v5++) = 0;
    }

    while (v5 < SHIDWORD(v7[0]));
  }

  if (v9 != v10)
  {
    j__free(v9);
  }
}

void sub_10025F204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_10025F218(uint64_t a1, void *a2, uint64_t a3)
{
  LODWORD(v7[0]) = 1124007936;
  memset(v7 + 4, 0, 32);
  memset(&v7[4] + 4, 0, 28);
  v8 = &v7[1];
  v9 = v10;
  v10[0] = 0;
  v10[1] = 0;
  (*(**a2 + 24))(*a2, a2, v7, 0xFFFFFFFFLL);
  v19 = 0;
  v17 = 16842752;
  v18 = a3;
  v16 = 0;
  v14 = 16842752;
  v15 = v7;
  v11 = 33619968;
  v12 = a3;
  v13 = 0;
  v4 = sub_100276DA4();
  sub_1001DAB24(&v17, &v14, &v11, v4);
  if (v7[7] && atomic_fetch_add((v7[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v7);
  }

  v7[7] = 0;
  memset(&v7[2], 0, 32);
  if (SHIDWORD(v7[0]) >= 1)
  {
    v5 = 0;
    v6 = v8;
    do
    {
      *(v6 + v5++) = 0;
    }

    while (v5 < SHIDWORD(v7[0]));
  }

  if (v9 != v10)
  {
    j__free(v9);
  }
}

void sub_10025F35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_10025F370(uint64_t a1, void *a2, float64x2_t *a3, uint64_t a4)
{
  sub_1002ACE7C(v42, &off_1004740C8);
  if (*&a3->f64[0] != a1)
  {
    (*(**&a3->f64[0] + 104))(*&a3->f64[0], a2, a3, a4);
    goto LABEL_53;
  }

  v40 = 0u;
  v41 = 0u;
  *v36 = 1124007936;
  memset(&v36[4], 0, 60);
  v37 = &v36[8];
  v38 = v39;
  v39[0] = 0;
  v39[1] = 0;
  *v32 = 1124007936;
  memset(&v32[4], 0, 60);
  v33 = &v32[8];
  v34 = v35;
  v35[0] = 0;
  v35[1] = 0;
  if (*a2 == &qword_1004BD538 && (!a2[16] || *(a2 + 39) == 0.0))
  {
    v14 = a2 + 2;
    if (v36 == (a2 + 2))
    {
      goto LABEL_35;
    }

    v15 = a2[9];
    if (v15)
    {
      atomic_fetch_add((v15 + 20), 1u);
      if (*&v36[56])
      {
        if (atomic_fetch_add((*&v36[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v36);
        }
      }
    }

    *&v36[56] = 0;
    memset(&v36[16], 0, 32);
    if (*v36 <= 0)
    {
      *v36 = *v14;
    }

    else
    {
      v16 = 0;
      v17 = v37;
      do
      {
        *&v17[4 * v16++] = 0;
      }

      while (v16 < *&v36[4]);
      *v36 = *v14;
      if (*&v36[4] > 2)
      {
        goto LABEL_33;
      }
    }

    if (*(a2 + 5) <= 2)
    {
      *&v36[4] = *(a2 + 5);
      *&v36[8] = a2[3];
      v18 = a2[11];
      v19 = v38;
      *v38 = *v18;
      v19[1] = v18[1];
LABEL_34:
      v20 = *(a2 + 3);
      *&v36[16] = *(a2 + 2);
      *&v36[32] = v20;
      v21 = a2[9];
      *&v36[48] = a2[8];
      *&v36[56] = v21;
LABEL_35:
      v8 = *(a2 + 38);
      v22 = *(a2 + 21);
      v40 = *(a2 + 20);
      v41 = v22;
      v9 = a3->f64[0];
      if (*&a3->f64[0] == &qword_1004BD538)
      {
        goto LABEL_7;
      }

LABEL_36:
      v23 = 1.0;
      (*(**&v9 + 24))(COERCE_FLOAT64_T(*&v9), a3, v32, 0xFFFFFFFFLL);
      goto LABEL_37;
    }

LABEL_33:
    sub_100269B58(v36, (a2 + 2));
    goto LABEL_34;
  }

  v8 = 1.0;
  (*(**a2 + 24))(*a2, a2, v36, 0xFFFFFFFFLL);
  v9 = a3->f64[0];
  if (*&a3->f64[0] != &qword_1004BD538)
  {
    goto LABEL_36;
  }

LABEL_7:
  if (*&a3[8].f64[0] && a3[19].f64[1] != 0.0)
  {
    goto LABEL_36;
  }

  v10 = a3 + 1;
  if (v32 != &a3[1])
  {
    v11 = a3[4].f64[1];
    if (v11 != 0.0)
    {
      atomic_fetch_add((*&v11 + 20), 1u);
    }

    if (*&v32[56] && atomic_fetch_add((*&v32[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v32);
    }

    *&v32[56] = 0;
    memset(&v32[16], 0, 32);
    if (*v32 <= 0)
    {
      *v32 = LODWORD(v10->f64[0]);
    }

    else
    {
      v12 = 0;
      v13 = v33;
      do
      {
        *&v13[4 * v12++] = 0;
      }

      while (v12 < *&v32[4]);
      *v32 = LODWORD(v10->f64[0]);
      if (*&v32[4] > 2)
      {
        goto LABEL_59;
      }
    }

    if (SHIDWORD(a3[1].f64[0]) <= 2)
    {
      *&v32[4] = HIDWORD(a3[1].f64[0]);
      *&v32[8] = a3[1].f64[1];
      v28 = a3[5].f64[1];
      v29 = v34;
      *v34 = **&v28;
      v29[1] = *(*&v28 + 8);
LABEL_60:
      v30 = a3[3];
      *&v32[16] = a3[2];
      *&v32[32] = v30;
      *&v32[48] = a3[4];
      goto LABEL_61;
    }

LABEL_59:
    sub_100269B58(v32, &a3[1]);
    goto LABEL_60;
  }

LABEL_61:
  v23 = a3[19].f64[0];
  v31 = vaddq_f64(a3[21], v41);
  v40 = vaddq_f64(a3[20], v40);
  v41 = v31;
LABEL_37:
  sub_10025F864(a4, v36, v32, &v40, v8, v23);
  if (*&v32[56] && atomic_fetch_add((*&v32[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v32);
  }

  *&v32[56] = 0;
  memset(&v32[16], 0, 32);
  if (*&v32[4] >= 1)
  {
    v24 = 0;
    v25 = v33;
    do
    {
      *&v25[4 * v24++] = 0;
    }

    while (v24 < *&v32[4]);
  }

  if (v34 != v35)
  {
    j__free(v34);
  }

  if (*&v36[56] && atomic_fetch_add((*&v36[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v36);
  }

  *&v36[56] = 0;
  memset(&v36[16], 0, 32);
  if (*&v36[4] >= 1)
  {
    v26 = 0;
    v27 = v37;
    do
    {
      *&v27[4 * v26++] = 0;
    }

    while (v26 < *&v36[4]);
  }

  if (v38 != v39)
  {
    j__free(v38);
  }

LABEL_53:
  if (v42[2])
  {
    sub_1002ACC1C(v42);
  }
}

void sub_10025F840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100006D14(&a9);
  sub_100006D14(va);
  sub_1001D8BF4(v20 - 96);
  _Unwind_Resume(a1);
}

void sub_10025F864(uint64_t a1, __int128 *a2, __int128 *a3, void *a4, double a5, double a6)
{
  LODWORD(v20[0]) = 1124007936;
  memset(v20 + 4, 0, 48);
  v20[3] = 0u;
  v21 = v20 + 8;
  v22 = v23;
  v23[0] = 0;
  v23[1] = 0;
  sub_1002670C8(&v24, &qword_1004BD538, 0, a2, a3, v20, a4, a5, a6);
  *a1 = v24;
  *(a1 + 8) = v25;
  if (&v24 != a1)
  {
    v8 = *(a1 + 72);
    if (v8 && atomic_fetch_add((v8 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) >= 1)
    {
      v9 = 0;
      v10 = *(a1 + 80);
      do
      {
        *(v10 + 4 * v9++) = 0;
      }

      while (v9 < *(a1 + 20));
    }

    v11 = *&v26[4];
    v12 = *&v26[16];
    *(a1 + 16) = *v26;
    *(a1 + 32) = v12;
    v13 = *&v26[48];
    *(a1 + 48) = *&v26[32];
    *(a1 + 64) = v13;
    v14 = *(a1 + 88);
    if (v14 == (a1 + 96))
    {
      v15 = v28;
      if (v11 <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      j__free(v14);
      *(a1 + 80) = a1 + 24;
      *(a1 + 88) = a1 + 96;
      v14 = (a1 + 96);
      v15 = v28;
      if (*&v26[4] <= 2)
      {
LABEL_10:
        *v14 = *v15;
        v14[1] = v15[1];
LABEL_13:
        *v26 = 1124007936;
        v7 = 0.0;
        memset(&v26[4], 0, 60);
        goto LABEL_14;
      }
    }

    *(a1 + 80) = v27;
    *(a1 + 88) = v15;
    v27 = &v26[8];
    v28 = &v29;
    goto LABEL_13;
  }

LABEL_14:
  v16 = sub_10025DAEC(a1 + 112, v30, v7);
  sub_10025DAEC(a1 + 208, v31, v16);
  v17 = v31[7];
  *(a1 + 304) = v31[6];
  *(a1 + 320) = v17;
  *(a1 + 336) = v31[8];
  sub_100008E50(&v24);
  if (*(&v20[3] + 1) && atomic_fetch_add((*(&v20[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v20);
  }

  *(&v20[3] + 1) = 0;
  memset(&v20[1], 0, 32);
  if (SDWORD1(v20[0]) >= 1)
  {
    v18 = 0;
    v19 = v21;
    do
    {
      *&v19[4 * v18++] = 0;
    }

    while (v18 < SDWORD1(v20[0]));
  }

  if (v22 != v23)
  {
    j__free(v22);
  }
}

void sub_10025FAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100008E50(va);
  sub_100006D14(&a9);
  _Unwind_Resume(a1);
}

void sub_10025FACC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  sub_1002ACE7C(v19, &off_1004740E8);
  LODWORD(v15[0]) = 1124007936;
  memset(v15 + 4, 0, 32);
  memset(&v15[4] + 4, 0, 28);
  v16 = &v15[1];
  v17 = v18;
  v18[0] = 0;
  v18[1] = 0;
  (*(**a2 + 24))(*a2, a2, v15, 0xFFFFFFFFLL);
  LODWORD(v11[0]) = 1124007936;
  memset(v11 + 4, 0, 48);
  v11[3] = 0u;
  v12 = v11 + 8;
  v13 = v14;
  v14[0] = 0;
  v14[1] = 0;
  sub_10025F864(a4, v15, v11, a3, 1.0, 0.0);
  if (*(&v11[3] + 1) && atomic_fetch_add((*(&v11[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v11);
  }

  *(&v11[3] + 1) = 0;
  memset(&v11[1], 0, 32);
  if (SDWORD1(v11[0]) >= 1)
  {
    v7 = 0;
    v8 = v12;
    do
    {
      *&v8[4 * v7++] = 0;
    }

    while (v7 < SDWORD1(v11[0]));
  }

  if (v13 != v14)
  {
    j__free(v13);
  }

  if (v15[7] && atomic_fetch_add((v15[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v15);
  }

  v15[7] = 0;
  memset(&v15[2], 0, 32);
  if (SHIDWORD(v15[0]) >= 1)
  {
    v9 = 0;
    v10 = v16;
    do
    {
      *(v10 + v9++) = 0;
    }

    while (v9 < SHIDWORD(v15[0]));
  }

  if (v17 != v18)
  {
    j__free(v17);
  }

  if (v19[2])
  {
    sub_1002ACC1C(v19);
  }
}

void sub_10025FCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100006D14(&a9);
  sub_100006D14(va);
  sub_1001D8BF4(v20 - 64);
  _Unwind_Resume(a1);
}

void sub_10025FCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100006D14(va);
  sub_1001D8BF4(v20 - 64);
  _Unwind_Resume(a1);
}

void sub_10025FCF4(uint64_t a1, void *a2, float64x2_t *a3, uint64_t a4)
{
  sub_1002ACE7C(v42, &off_100474108);
  if (*&a3->f64[0] != a1)
  {
    (*(**&a3->f64[0] + 120))(*&a3->f64[0], a2, a3, a4);
    goto LABEL_53;
  }

  v40 = 0u;
  v41 = 0u;
  *v36 = 1124007936;
  memset(&v36[4], 0, 60);
  v37 = &v36[8];
  v38 = v39;
  v39[0] = 0;
  v39[1] = 0;
  *v32 = 1124007936;
  memset(&v32[4], 0, 60);
  v33 = &v32[8];
  v34 = v35;
  v35[0] = 0;
  v35[1] = 0;
  if (*a2 == &qword_1004BD538 && (!a2[16] || *(a2 + 39) == 0.0))
  {
    v14 = a2 + 2;
    if (v36 == (a2 + 2))
    {
      goto LABEL_35;
    }

    v15 = a2[9];
    if (v15)
    {
      atomic_fetch_add((v15 + 20), 1u);
      if (*&v36[56])
      {
        if (atomic_fetch_add((*&v36[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v36);
        }
      }
    }

    *&v36[56] = 0;
    memset(&v36[16], 0, 32);
    if (*v36 <= 0)
    {
      *v36 = *v14;
    }

    else
    {
      v16 = 0;
      v17 = v37;
      do
      {
        *&v17[4 * v16++] = 0;
      }

      while (v16 < *&v36[4]);
      *v36 = *v14;
      if (*&v36[4] > 2)
      {
        goto LABEL_33;
      }
    }

    if (*(a2 + 5) <= 2)
    {
      *&v36[4] = *(a2 + 5);
      *&v36[8] = a2[3];
      v18 = a2[11];
      v19 = v38;
      *v38 = *v18;
      v19[1] = v18[1];
LABEL_34:
      v20 = *(a2 + 3);
      *&v36[16] = *(a2 + 2);
      *&v36[32] = v20;
      v21 = a2[9];
      *&v36[48] = a2[8];
      *&v36[56] = v21;
LABEL_35:
      v8 = *(a2 + 38);
      v22 = *(a2 + 21);
      v40 = *(a2 + 20);
      v41 = v22;
      v9 = a3->f64[0];
      if (*&a3->f64[0] == &qword_1004BD538)
      {
        goto LABEL_7;
      }

LABEL_36:
      v23 = -1.0;
      (*(**&v9 + 24))(COERCE_FLOAT64_T(*&v9), a3, v32, 0xFFFFFFFFLL);
      goto LABEL_37;
    }

LABEL_33:
    sub_100269B58(v36, (a2 + 2));
    goto LABEL_34;
  }

  v8 = 1.0;
  (*(**a2 + 24))(*a2, a2, v36, 0xFFFFFFFFLL);
  v9 = a3->f64[0];
  if (*&a3->f64[0] != &qword_1004BD538)
  {
    goto LABEL_36;
  }

LABEL_7:
  if (*&a3[8].f64[0] && a3[19].f64[1] != 0.0)
  {
    goto LABEL_36;
  }

  v10 = a3 + 1;
  if (v32 != &a3[1])
  {
    v11 = a3[4].f64[1];
    if (v11 != 0.0)
    {
      atomic_fetch_add((*&v11 + 20), 1u);
    }

    if (*&v32[56] && atomic_fetch_add((*&v32[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v32);
    }

    *&v32[56] = 0;
    memset(&v32[16], 0, 32);
    if (*v32 <= 0)
    {
      *v32 = LODWORD(v10->f64[0]);
    }

    else
    {
      v12 = 0;
      v13 = v33;
      do
      {
        *&v13[4 * v12++] = 0;
      }

      while (v12 < *&v32[4]);
      *v32 = LODWORD(v10->f64[0]);
      if (*&v32[4] > 2)
      {
        goto LABEL_59;
      }
    }

    if (SHIDWORD(a3[1].f64[0]) <= 2)
    {
      *&v32[4] = HIDWORD(a3[1].f64[0]);
      *&v32[8] = a3[1].f64[1];
      v28 = a3[5].f64[1];
      v29 = v34;
      *v34 = **&v28;
      v29[1] = *(*&v28 + 8);
LABEL_60:
      v30 = a3[3];
      *&v32[16] = a3[2];
      *&v32[32] = v30;
      *&v32[48] = a3[4];
      goto LABEL_61;
    }

LABEL_59:
    sub_100269B58(v32, &a3[1]);
    goto LABEL_60;
  }

LABEL_61:
  v23 = -a3[19].f64[0];
  v31 = vsubq_f64(v41, a3[21]);
  v40 = vsubq_f64(v40, a3[20]);
  v41 = v31;
LABEL_37:
  sub_10025F864(a4, v36, v32, &v40, v8, v23);
  if (*&v32[56] && atomic_fetch_add((*&v32[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v32);
  }

  *&v32[56] = 0;
  memset(&v32[16], 0, 32);
  if (*&v32[4] >= 1)
  {
    v24 = 0;
    v25 = v33;
    do
    {
      *&v25[4 * v24++] = 0;
    }

    while (v24 < *&v32[4]);
  }

  if (v34 != v35)
  {
    j__free(v34);
  }

  if (*&v36[56] && atomic_fetch_add((*&v36[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v36);
  }

  *&v36[56] = 0;
  memset(&v36[16], 0, 32);
  if (*&v36[4] >= 1)
  {
    v26 = 0;
    v27 = v37;
    do
    {
      *&v27[4 * v26++] = 0;
    }

    while (v26 < *&v36[4]);
  }

  if (v38 != v39)
  {
    j__free(v38);
  }

LABEL_53:
  if (v42[2])
  {
    sub_1002ACC1C(v42);
  }
}

void sub_1002601C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100006D14(&a9);
  sub_100006D14(va);
  sub_1001D8BF4(v20 - 96);
  _Unwind_Resume(a1);
}

void sub_1002601EC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  sub_1002ACE7C(v19, &off_100474128);
  LODWORD(v15[0]) = 1124007936;
  memset(v15 + 4, 0, 32);
  memset(&v15[4] + 4, 0, 28);
  v16 = &v15[1];
  v17 = v18;
  v18[0] = 0;
  v18[1] = 0;
  (*(**a3 + 24))(*a3, a3, v15, 0xFFFFFFFFLL);
  LODWORD(v11[0]) = 1124007936;
  memset(v11 + 4, 0, 48);
  v11[3] = 0u;
  v12 = v11 + 8;
  v13 = v14;
  v14[0] = 0;
  v14[1] = 0;
  sub_10025F864(a4, v15, v11, a2, -1.0, 0.0);
  if (*(&v11[3] + 1) && atomic_fetch_add((*(&v11[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v11);
  }

  *(&v11[3] + 1) = 0;
  memset(&v11[1], 0, 32);
  if (SDWORD1(v11[0]) >= 1)
  {
    v7 = 0;
    v8 = v12;
    do
    {
      *&v8[4 * v7++] = 0;
    }

    while (v7 < SDWORD1(v11[0]));
  }

  if (v13 != v14)
  {
    j__free(v13);
  }

  if (v15[7] && atomic_fetch_add((v15[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v15);
  }

  v15[7] = 0;
  memset(&v15[2], 0, 32);
  if (SHIDWORD(v15[0]) >= 1)
  {
    v9 = 0;
    v10 = v16;
    do
    {
      *(v10 + v9++) = 0;
    }

    while (v9 < SHIDWORD(v15[0]));
  }

  if (v17 != v18)
  {
    j__free(v17);
  }

  if (v19[2])
  {
    sub_1002ACC1C(v19);
  }
}

void sub_1002603D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100006D14(&a9);
  sub_100006D14(va);
  sub_1001D8BF4(v20 - 64);
  _Unwind_Resume(a1);
}

void sub_1002603F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100006D14(va);
  sub_1001D8BF4(v20 - 64);
  _Unwind_Resume(a1);
}

void sub_100260414(uint64_t *a1, float64x2_t *a2, uint64_t a3, uint64_t a4, double a5)
{
  sub_1002ACE7C(v56, &off_100474148);
  v10 = *a3;
  if (*a3 != a1)
  {
    (*(*v10 + 136))(v10, a2, a3, a4, a5);
    goto LABEL_87;
  }

  *v52 = 1124007936;
  memset(&v52[4], 0, 60);
  v53 = &v52[8];
  v54 = v55;
  v55[0] = 0;
  v55[1] = 0;
  *v48 = 1124007936;
  memset(&v48[4], 0, 60);
  v49 = &v48[8];
  v50 = v51;
  v51[0] = 0;
  v51[1] = 0;
  v11 = *&a2->f64[0];
  if (*&a2->f64[0] != &qword_1004BD540 || LODWORD(a2->f64[1]) != 47)
  {
    if (v11 != &qword_1004BD538 || *&a2[8].f64[0] && a2[19].f64[1] != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(a2[20]), vceqzq_f64(a2[21]))))) & 1) != 0)
    {
      goto LABEL_17;
    }

    v17 = a2 + 1;
    if (v52 == &a2[1])
    {
LABEL_64:
      a5 = a2[19].f64[0] * a5;
      v12 = *a3;
      if (*a3 != &qword_1004BD538)
      {
        goto LABEL_18;
      }

LABEL_65:
      if (*(a3 + 128) && *(a3 + 312) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a3 + 320)), vceqzq_f64(*(a3 + 336)))))) & 1) != 0)
      {
        goto LABEL_68;
      }

      v37 = (a3 + 16);
      if (v48 == (a3 + 16))
      {
LABEL_106:
        a5 = a5 * *(a3 + 304);
        goto LABEL_69;
      }

      v38 = *(a3 + 72);
      if (v38)
      {
        atomic_fetch_add((v38 + 20), 1u);
      }

      if (*&v48[56] && atomic_fetch_add((*&v48[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v48);
      }

      *&v48[56] = 0;
      memset(&v48[16], 0, 32);
      if (*v48 <= 0)
      {
        *v48 = *v37;
      }

      else
      {
        v39 = 0;
        v40 = v49;
        do
        {
          *&v40[4 * v39++] = 0;
        }

        while (v39 < *&v48[4]);
        *v48 = *v37;
        if (*&v48[4] > 2)
        {
          goto LABEL_104;
        }
      }

      if (*(a3 + 20) <= 2)
      {
        *&v48[4] = *(a3 + 20);
        *&v48[8] = *(a3 + 24);
        v41 = *(a3 + 88);
        v42 = v50;
        *v50 = *v41;
        v42[1] = v41[1];
LABEL_105:
        v43 = *(a3 + 48);
        *&v48[16] = *(a3 + 32);
        *&v48[32] = v43;
        *&v48[48] = *(a3 + 64);
        goto LABEL_106;
      }

LABEL_104:
      sub_100269B58(v48, a3 + 16);
      goto LABEL_105;
    }

    v18 = a2[4].f64[1];
    if (v18 != 0.0)
    {
      atomic_fetch_add((*&v18 + 20), 1u);
      if (*&v52[56])
      {
        if (atomic_fetch_add((*&v52[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v52);
        }
      }
    }

    *&v52[56] = 0;
    memset(&v52[16], 0, 32);
    if (*v52 <= 0)
    {
      *v52 = LODWORD(v17->f64[0]);
    }

    else
    {
      v19 = 0;
      v20 = v53;
      do
      {
        *&v20[4 * v19++] = 0;
      }

      while (v19 < *&v52[4]);
      *v52 = LODWORD(v17->f64[0]);
      if (*&v52[4] > 2)
      {
        goto LABEL_62;
      }
    }

    if (SHIDWORD(a2[1].f64[0]) <= 2)
    {
      *&v52[4] = HIDWORD(a2[1].f64[0]);
      *&v52[8] = a2[1].f64[1];
      v29 = a2[5].f64[1];
      v30 = v54;
      *v54 = **&v29;
      v30[1] = *(*&v29 + 8);
LABEL_63:
      v31 = a2[3];
      *&v52[16] = a2[2];
      *&v52[32] = v31;
      v32 = a2[4].f64[1];
      *&v52[48] = a2[4].f64[0];
      *&v52[56] = v32;
      goto LABEL_64;
    }

LABEL_62:
    sub_100269B58(v52, &a2[1]);
    goto LABEL_63;
  }

  if (!*&a2[8].f64[0] || a2[19].f64[1] == 0.0)
  {
    if (a1 != &qword_1004BD538 || *(a3 + 128) && *(a3 + 312) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a3 + 320)), vceqzq_f64(*(a3 + 336)))))) & 1) != 0)
    {
      (*(*v10 + 24))(v10, a3, v48, 0xFFFFFFFFLL);
LABEL_12:
      sub_100260C18(a4, 47, v48, &a2[1], a5 / a2[19].f64[0]);
      goto LABEL_71;
    }

    a5 = *(a3 + 304) * a5;
    v25 = (a3 + 16);
    if (v48 == (a3 + 16))
    {
      goto LABEL_12;
    }

    v26 = *(a3 + 72);
    if (v26)
    {
      atomic_fetch_add((v26 + 20), 1u);
      if (*&v48[56])
      {
        if (atomic_fetch_add((*&v48[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v48);
        }
      }
    }

    *&v48[56] = 0;
    memset(&v48[16], 0, 32);
    if (*v48 <= 0)
    {
      *v48 = *v25;
    }

    else
    {
      v27 = 0;
      v28 = v49;
      do
      {
        *&v28[4 * v27++] = 0;
      }

      while (v27 < *&v48[4]);
      *v48 = *v25;
      if (*&v48[4] > 2)
      {
        goto LABEL_110;
      }
    }

    if (*(a3 + 20) <= 2)
    {
      *&v48[4] = *(a3 + 20);
      *&v48[8] = *(a3 + 24);
      v44 = *(a3 + 88);
      v45 = v50;
      *v50 = *v44;
      v45[1] = v44[1];
LABEL_111:
      v46 = *(a3 + 48);
      *&v48[16] = *(a3 + 32);
      *&v48[32] = v46;
      v47 = *(a3 + 72);
      *&v48[48] = *(a3 + 64);
      *&v48[56] = v47;
      goto LABEL_12;
    }

LABEL_110:
    sub_100269B58(v48, a3 + 16);
    goto LABEL_111;
  }

LABEL_17:
  (*(*v11 + 24))(*&a2->f64[0], a2, v52, 0xFFFFFFFFLL);
  v12 = *a3;
  if (*a3 == &qword_1004BD538)
  {
    goto LABEL_65;
  }

LABEL_18:
  if (v12 != &qword_1004BD540 || *(a3 + 8) != 47 || *(a3 + 128) && *(a3 + 312) != 0.0)
  {
LABEL_68:
    (*(*v12 + 24))(v12, a3, v48, 0xFFFFFFFFLL);
LABEL_69:
    v24 = 42;
    goto LABEL_70;
  }

  v13 = (a3 + 16);
  if (v48 != (a3 + 16))
  {
    v14 = *(a3 + 72);
    if (v14)
    {
      atomic_fetch_add((v14 + 20), 1u);
    }

    if (*&v48[56] && atomic_fetch_add((*&v48[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v48);
    }

    *&v48[56] = 0;
    memset(&v48[16], 0, 32);
    if (*v48 <= 0)
    {
      *v48 = *v13;
    }

    else
    {
      v15 = 0;
      v16 = v49;
      do
      {
        *&v16[4 * v15++] = 0;
      }

      while (v15 < *&v48[4]);
      *v48 = *v13;
      if (*&v48[4] > 2)
      {
        goto LABEL_46;
      }
    }

    if (*(a3 + 20) <= 2)
    {
      *&v48[4] = *(a3 + 20);
      *&v48[8] = *(a3 + 24);
      v21 = *(a3 + 88);
      v22 = v50;
      *v50 = *v21;
      v22[1] = v21[1];
LABEL_47:
      v23 = *(a3 + 48);
      *&v48[16] = *(a3 + 32);
      *&v48[32] = v23;
      *&v48[48] = *(a3 + 64);
      goto LABEL_48;
    }

LABEL_46:
    sub_100269B58(v48, a3 + 16);
    goto LABEL_47;
  }

LABEL_48:
  v24 = 47;
  a5 = a5 / *(a3 + 304);
LABEL_70:
  sub_100260C18(a4, v24, v52, v48, a5);
LABEL_71:
  if (*&v48[56] && atomic_fetch_add((*&v48[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v48);
  }

  *&v48[56] = 0;
  memset(&v48[16], 0, 32);
  if (*&v48[4] >= 1)
  {
    v33 = 0;
    v34 = v49;
    do
    {
      *&v34[4 * v33++] = 0;
    }

    while (v33 < *&v48[4]);
  }

  if (v50 != v51)
  {
    j__free(v50);
  }

  if (*&v52[56] && atomic_fetch_add((*&v52[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v52);
  }

  *&v52[56] = 0;
  memset(&v52[16], 0, 32);
  if (*&v52[4] >= 1)
  {
    v35 = 0;
    v36 = v53;
    do
    {
      *&v36[4 * v35++] = 0;
    }

    while (v35 < *&v52[4]);
  }

  if (v54 != v55)
  {
    j__free(v54);
  }

LABEL_87:
  if (v56[2])
  {
    sub_1002ACC1C(v56);
  }
}

void sub_100260BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100006D14(&a9);
  sub_100006D14(va);
  sub_1001D8BF4(v20 - 112);
  _Unwind_Resume(a1);
}

void sub_100260C18(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, double a5)
{
  LODWORD(v22[0]) = 1124007936;
  memset(v22 + 4, 0, 48);
  v22[3] = 0u;
  v23 = v22 + 8;
  v24 = v25;
  v25[0] = 0;
  v25[1] = 0;
  v6 = *(a4 + 16);
  memset(v21, 0, sizeof(v21));
  v7 = 0.0;
  if (v6)
  {
    v7 = 1.0;
  }

  sub_1002670C8(&v26, &qword_1004BD540, a2, a3, a4, v22, v21, a5, v7);
  *a1 = v26;
  *(a1 + 8) = v27;
  if (&v26 != a1)
  {
    v9 = *(a1 + 72);
    if (v9 && atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) >= 1)
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
      }

      while (v10 < *(a1 + 20));
    }

    v12 = *&v28[4];
    v13 = *&v28[16];
    *(a1 + 16) = *v28;
    *(a1 + 32) = v13;
    v14 = *&v28[48];
    *(a1 + 48) = *&v28[32];
    *(a1 + 64) = v14;
    v15 = *(a1 + 88);
    if (v15 == (a1 + 96))
    {
      v16 = v30;
      if (v12 <= 2)
      {
        goto LABEL_12;
      }
    }

    else
    {
      j__free(v15);
      *(a1 + 80) = a1 + 24;
      *(a1 + 88) = a1 + 96;
      v15 = (a1 + 96);
      v16 = v30;
      if (*&v28[4] <= 2)
      {
LABEL_12:
        *v15 = *v16;
        v15[1] = v16[1];
LABEL_15:
        *v28 = 1124007936;
        v8 = 0.0;
        memset(&v28[4], 0, 60);
        goto LABEL_16;
      }
    }

    *(a1 + 80) = v29;
    *(a1 + 88) = v16;
    v29 = &v28[8];
    v30 = &v31;
    goto LABEL_15;
  }

LABEL_16:
  v17 = sub_10025DAEC(a1 + 112, v32, v8);
  sub_10025DAEC(a1 + 208, v33, v17);
  v18 = v33[7];
  *(a1 + 304) = v33[6];
  *(a1 + 320) = v18;
  *(a1 + 336) = v33[8];
  sub_100008E50(&v26);
  if (*(&v22[3] + 1) && atomic_fetch_add((*(&v22[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v22);
  }

  *(&v22[3] + 1) = 0;
  memset(&v22[1], 0, 32);
  if (SDWORD1(v22[0]) >= 1)
  {
    v19 = 0;
    v20 = v23;
    do
    {
      *&v20[4 * v19++] = 0;
    }

    while (v19 < SDWORD1(v22[0]));
  }

  if (v24 != v25)
  {
    j__free(v24);
  }
}

void sub_100260E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100260E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  sub_100008E50(va1);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100260E98(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1002ACE7C(v20, &off_100474168);
  LODWORD(v16[0]) = 1124007936;
  memset(v16 + 4, 0, 32);
  memset(&v16[4] + 4, 0, 28);
  v17 = &v16[1];
  v18 = v19;
  v19[0] = 0;
  v19[1] = 0;
  (*(**a3 + 24))(*a3, a3, v16, 0xFFFFFFFFLL);
  LODWORD(v12[0]) = 1124007936;
  memset(v12 + 4, 0, 48);
  v12[3] = 0u;
  v13 = v12 + 8;
  v14 = v15;
  v15[0] = 0;
  v15[1] = 0;
  memset(v11, 0, sizeof(v11));
  sub_10025F864(a4, v16, v12, v11, a1, 0.0);
  if (*(&v12[3] + 1) && atomic_fetch_add((*(&v12[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v12);
  }

  *(&v12[3] + 1) = 0;
  memset(&v12[1], 0, 32);
  if (SDWORD1(v12[0]) >= 1)
  {
    v7 = 0;
    v8 = v13;
    do
    {
      *&v8[4 * v7++] = 0;
    }

    while (v7 < SDWORD1(v12[0]));
  }

  if (v14 != v15)
  {
    j__free(v14);
  }

  if (v16[7] && atomic_fetch_add((v16[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v16);
  }

  v16[7] = 0;
  memset(&v16[2], 0, 32);
  if (SHIDWORD(v16[0]) >= 1)
  {
    v9 = 0;
    v10 = v17;
    do
    {
      *(v10 + v9++) = 0;
    }

    while (v9 < SHIDWORD(v16[0]));
  }

  if (v18 != v19)
  {
    j__free(v18);
  }

  if (v20[2])
  {
    sub_1002ACC1C(v20);
  }
}

void sub_10026108C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  sub_100006D14(va);
  sub_100006D14(va1);
  sub_1001D8BF4(v9 - 80);
  _Unwind_Resume(a1);
}

void sub_1002610B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_100006D14(va);
  sub_1001D8BF4(v24 - 80);
  _Unwind_Resume(a1);
}

void sub_1002610CC(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, double a5)
{
  sub_1002ACE7C(v47, &off_100474188);
  if (*a3 != a1)
  {
    (*(**a3 + 152))(*a3, a2, a3, a4, a5);
    goto LABEL_74;
  }

  v10 = *a2;
  if (*a2 == &qword_1004BD540 && *(a2 + 8) == 47 && (!*(a2 + 128) || *(a2 + 312) == 0.0) && a1 == &qword_1004BD540 && *(a3 + 2) == 47 && (!*(a3 + 16) || *(a3 + 39) == 0.0))
  {
    sub_100260C18(a4, 47, a3 + 1, a2 + 16, *(a2 + 304) / *(a3 + 38));
    goto LABEL_74;
  }

  *v43 = 1124007936;
  memset(&v43[4], 0, 60);
  v44 = &v43[8];
  v45 = v46;
  v46[0] = 0;
  v46[1] = 0;
  *v39 = 1124007936;
  memset(&v39[4], 0, 60);
  v40 = &v39[8];
  v41 = v42;
  v42[0] = 0;
  v42[1] = 0;
  if (v10 == &qword_1004BD538 && (!*(a2 + 128) || *(a2 + 312) == 0.0) && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 320)), vceqzq_f64(*(a2 + 336)))))) & 1) == 0)
  {
    v16 = (a2 + 16);
    if (v43 == (a2 + 16))
    {
      goto LABEL_53;
    }

    v17 = *(a2 + 72);
    if (v17)
    {
      atomic_fetch_add((v17 + 20), 1u);
      if (*&v43[56])
      {
        if (atomic_fetch_add((*&v43[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v43);
        }
      }
    }

    *&v43[56] = 0;
    memset(&v43[16], 0, 32);
    if (*v43 <= 0)
    {
      *v43 = *v16;
    }

    else
    {
      v18 = 0;
      v19 = v44;
      do
      {
        *&v19[4 * v18++] = 0;
      }

      while (v18 < *&v43[4]);
      *v43 = *v16;
      if (*&v43[4] > 2)
      {
        goto LABEL_51;
      }
    }

    if (*(a2 + 20) <= 2)
    {
      *&v43[4] = *(a2 + 20);
      *&v43[8] = *(a2 + 24);
      v24 = *(a2 + 88);
      v25 = v45;
      *v45 = *v24;
      v25[1] = v24[1];
LABEL_52:
      v26 = *(a2 + 48);
      *&v43[16] = *(a2 + 32);
      *&v43[32] = v26;
      v27 = *(a2 + 72);
      *&v43[48] = *(a2 + 64);
      *&v43[56] = v27;
LABEL_53:
      a5 = *(a2 + 304) * a5;
      v11 = *a3;
      if (*a3 != &qword_1004BD538)
      {
        goto LABEL_12;
      }

      goto LABEL_54;
    }

LABEL_51:
    sub_100269B58(v43, a2 + 16);
    goto LABEL_52;
  }

  (*(*v10 + 24))(v10, a2, v43, 0xFFFFFFFFLL);
  v11 = *a3;
  if (*a3 != &qword_1004BD538)
  {
LABEL_12:
    if (v11 == &qword_1004BD540 && *(a3 + 2) == 47 && (!*(a3 + 16) || *(a3 + 39) == 0.0))
    {
      v12 = a3 + 1;
      if (v39 == (a3 + 1))
      {
LABEL_47:
        v23 = 42;
        a5 = a5 / *(a3 + 38);
        goto LABEL_58;
      }

      v13 = *(a3 + 9);
      if (v13)
      {
        atomic_fetch_add((v13 + 20), 1u);
      }

      if (*&v39[56] && atomic_fetch_add((*&v39[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v39);
      }

      *&v39[56] = 0;
      memset(&v39[16], 0, 32);
      if (*v39 <= 0)
      {
        *v39 = *v12;
      }

      else
      {
        v14 = 0;
        v15 = v40;
        do
        {
          *&v15[4 * v14++] = 0;
        }

        while (v14 < *&v39[4]);
        *v39 = *v12;
        if (*&v39[4] > 2)
        {
          goto LABEL_45;
        }
      }

      if (*(a3 + 5) <= 2)
      {
        *&v39[4] = *(a3 + 5);
        *&v39[8] = *(a3 + 3);
        v20 = *(a3 + 11);
        v21 = v41;
        *v41 = *v20;
        v21[1] = v20[1];
LABEL_46:
        v22 = a3[3];
        *&v39[16] = a3[2];
        *&v39[32] = v22;
        *&v39[48] = a3[4];
        goto LABEL_47;
      }

LABEL_45:
      sub_100269B58(v39, (a3 + 1));
      goto LABEL_46;
    }

    goto LABEL_57;
  }

LABEL_54:
  if (*(a3 + 16) && *(a3 + 39) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a3 + 20)), vceqzq_f64(*(a3 + 21)))))) & 1) != 0)
  {
LABEL_57:
    (*(*v11 + 24))(v11, a3, v39, 0xFFFFFFFFLL);
    v23 = 47;
    goto LABEL_58;
  }

  v32 = a3 + 1;
  if (v39 != (a3 + 1))
  {
    v33 = *(a3 + 9);
    if (v33)
    {
      atomic_fetch_add((v33 + 20), 1u);
    }

    if (*&v39[56] && atomic_fetch_add((*&v39[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v39);
    }

    *&v39[56] = 0;
    memset(&v39[16], 0, 32);
    if (*v39 <= 0)
    {
      *v39 = *v32;
    }

    else
    {
      v34 = 0;
      v35 = v40;
      do
      {
        *&v35[4 * v34++] = 0;
      }

      while (v34 < *&v39[4]);
      *v39 = *v32;
      if (*&v39[4] > 2)
      {
        goto LABEL_91;
      }
    }

    if (*(a3 + 5) <= 2)
    {
      *&v39[4] = *(a3 + 5);
      *&v39[8] = *(a3 + 3);
      v36 = *(a3 + 11);
      v37 = v41;
      *v41 = *v36;
      v37[1] = v36[1];
LABEL_92:
      v38 = a3[3];
      *&v39[16] = a3[2];
      *&v39[32] = v38;
      *&v39[48] = a3[4];
      goto LABEL_93;
    }

LABEL_91:
    sub_100269B58(v39, (a3 + 1));
    goto LABEL_92;
  }

LABEL_93:
  v23 = 47;
  a5 = a5 / *(a3 + 38);
LABEL_58:
  sub_100260C18(a4, v23, v43, v39, a5);
  if (*&v39[56] && atomic_fetch_add((*&v39[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v39);
  }

  *&v39[56] = 0;
  memset(&v39[16], 0, 32);
  if (*&v39[4] >= 1)
  {
    v28 = 0;
    v29 = v40;
    do
    {
      *&v29[4 * v28++] = 0;
    }

    while (v28 < *&v39[4]);
  }

  if (v41 != v42)
  {
    j__free(v41);
  }

  if (*&v43[56] && atomic_fetch_add((*&v43[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v43);
  }

  *&v43[56] = 0;
  memset(&v43[16], 0, 32);
  if (*&v43[4] >= 1)
  {
    v30 = 0;
    v31 = v44;
    do
    {
      *&v31[4 * v30++] = 0;
    }

    while (v30 < *&v43[4]);
  }

  if (v45 != v46)
  {
    j__free(v45);
  }

LABEL_74:
  if (v47[2])
  {
    sub_1002ACC1C(v47);
  }
}

void sub_100261770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100006D14(&a9);
  sub_100006D14(va);
  sub_1001D8BF4(v20 - 112);
  _Unwind_Resume(a1);
}

void sub_100261794(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1002ACE7C(v19, &off_1004741A8);
  LODWORD(v15[0]) = 1124007936;
  memset(v15 + 4, 0, 32);
  memset(&v15[4] + 4, 0, 28);
  v16 = &v15[1];
  v17 = v18;
  v18[0] = 0;
  v18[1] = 0;
  (*(**a3 + 24))(*a3, a3, v15, 0xFFFFFFFFLL);
  LODWORD(v11[0]) = 1124007936;
  memset(v11 + 4, 0, 48);
  v11[3] = 0u;
  v12 = v11 + 8;
  v13 = v14;
  v14[0] = 0;
  v14[1] = 0;
  sub_100260C18(a4, 47, v15, v11, a1);
  if (*(&v11[3] + 1) && atomic_fetch_add((*(&v11[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v11);
  }

  *(&v11[3] + 1) = 0;
  memset(&v11[1], 0, 32);
  if (SDWORD1(v11[0]) >= 1)
  {
    v7 = 0;
    v8 = v12;
    do
    {
      *&v8[4 * v7++] = 0;
    }

    while (v7 < SDWORD1(v11[0]));
  }

  if (v13 != v14)
  {
    j__free(v13);
  }

  if (v15[7] && atomic_fetch_add((v15[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v15);
  }

  v15[7] = 0;
  memset(&v15[2], 0, 32);
  if (SHIDWORD(v15[0]) >= 1)
  {
    v9 = 0;
    v10 = v16;
    do
    {
      *(v10 + v9++) = 0;
    }

    while (v9 < SHIDWORD(v15[0]));
  }

  if (v17 != v18)
  {
    j__free(v17);
  }

  if (v19[2])
  {
    sub_1002ACC1C(v19);
  }
}

void sub_100261980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100006D14(&a9);
  sub_100006D14(va);
  sub_1001D8BF4(v20 - 80);
  _Unwind_Resume(a1);
}

void sub_1002619A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100006D14(va);
  sub_1001D8BF4(v20 - 80);
  _Unwind_Resume(a1);
}

void sub_1002619C0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1002ACE7C(v17, &off_1004741C8);
  LODWORD(v13[0]) = 1124007936;
  memset(v13 + 4, 0, 32);
  memset(&v13[4] + 4, 0, 28);
  v14 = &v13[1];
  v15 = v16;
  v16[0] = 0;
  v16[1] = 0;
  (*(**a2 + 24))(*a2, a2, v13, 0xFFFFFFFFLL);
  LODWORD(v9[0]) = 1124007936;
  memset(v9 + 4, 0, 48);
  v9[3] = 0u;
  v10 = v9 + 8;
  v11 = v12;
  v12[0] = 0;
  v12[1] = 0;
  sub_100260C18(a3, 97, v13, v9, 1.0);
  if (*(&v9[3] + 1) && atomic_fetch_add((*(&v9[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v9);
  }

  *(&v9[3] + 1) = 0;
  memset(&v9[1], 0, 32);
  if (SDWORD1(v9[0]) >= 1)
  {
    v5 = 0;
    v6 = v10;
    do
    {
      *&v6[4 * v5++] = 0;
    }

    while (v5 < SDWORD1(v9[0]));
  }

  if (v11 != v12)
  {
    j__free(v11);
  }

  if (v13[7] && atomic_fetch_add((v13[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v13);
  }

  v13[7] = 0;
  memset(&v13[2], 0, 32);
  if (SHIDWORD(v13[0]) >= 1)
  {
    v7 = 0;
    v8 = v14;
    do
    {
      *(v8 + v7++) = 0;
    }

    while (v7 < SHIDWORD(v13[0]));
  }

  if (v15 != v16)
  {
    j__free(v15);
  }

  if (v17[2])
  {
    sub_1002ACC1C(v17);
  }
}

void sub_100261BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100006D14(&a9);
  sub_100006D14(va);
  sub_1001D8BF4(v20 - 64);
  _Unwind_Resume(a1);
}

void sub_100261BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100006D14(va);
  sub_1001D8BF4(v20 - 64);
  _Unwind_Resume(a1);
}

void sub_100261BE0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1002ACE7C(v11, &off_1004741E8);
  LODWORD(v7[0]) = 1124007936;
  memset(v7 + 4, 0, 32);
  memset(&v7[4] + 4, 0, 28);
  v8 = &v7[1];
  v9 = v10;
  v10[0] = 0;
  v10[1] = 0;
  (*(**a2 + 24))(*a2, a2, v7, 0xFFFFFFFFLL);
  sub_100261D34(a3, v7, 1.0);
  if (v7[7] && atomic_fetch_add((v7[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v7);
  }

  v7[7] = 0;
  memset(&v7[2], 0, 32);
  if (SHIDWORD(v7[0]) >= 1)
  {
    v5 = 0;
    v6 = v8;
    do
    {
      *(v6 + v5++) = 0;
    }

    while (v5 < SHIDWORD(v7[0]));
  }

  if (v9 != v10)
  {
    j__free(v9);
  }

  if (v11[2])
  {
    sub_1002ACC1C(v11);
  }
}

void sub_100261D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100006D14(&a9);
  sub_1001D8BF4(v9 - 48);
  _Unwind_Resume(a1);
}

void sub_100261D34(uint64_t a1, __int128 *a2, double a3)
{
  LODWORD(v24[0]) = 1124007936;
  memset(v24 + 4, 0, 48);
  v24[3] = 0u;
  v25 = v24 + 8;
  v26 = v27;
  v27[0] = 0;
  v27[1] = 0;
  LODWORD(v20[0]) = 1124007936;
  memset(v20 + 4, 0, 48);
  v20[3] = 0u;
  v21 = v20 + 8;
  v22 = v23;
  v23[0] = 0;
  v23[1] = 0;
  memset(v19, 0, sizeof(v19));
  sub_1002670C8(&v28, &qword_1004BD560, 0, a2, v24, v20, v19, a3, 0.0);
  *a1 = v28;
  *(a1 + 8) = v29;
  if (&v28 != a1)
  {
    v5 = *(a1 + 72);
    if (v5 && atomic_fetch_add((v5 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) >= 1)
    {
      v6 = 0;
      v7 = *(a1 + 80);
      do
      {
        *(v7 + 4 * v6++) = 0;
      }

      while (v6 < *(a1 + 20));
    }

    v8 = *&v30[4];
    v9 = *&v30[16];
    *(a1 + 16) = *v30;
    *(a1 + 32) = v9;
    v10 = *&v30[48];
    *(a1 + 48) = *&v30[32];
    *(a1 + 64) = v10;
    v11 = *(a1 + 88);
    if (v11 == (a1 + 96))
    {
      v12 = v32;
      if (v8 <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      j__free(v11);
      *(a1 + 80) = a1 + 24;
      *(a1 + 88) = a1 + 96;
      v11 = (a1 + 96);
      v12 = v32;
      if (*&v30[4] <= 2)
      {
LABEL_10:
        *v11 = *v12;
        v11[1] = v12[1];
LABEL_13:
        *v30 = 1124007936;
        v4 = 0.0;
        memset(&v30[4], 0, 60);
        goto LABEL_14;
      }
    }

    *(a1 + 80) = v31;
    *(a1 + 88) = v12;
    v31 = &v30[8];
    v32 = &v33;
    goto LABEL_13;
  }

LABEL_14:
  v13 = sub_10025DAEC(a1 + 112, v34, v4);
  sub_10025DAEC(a1 + 208, v35, v13);
  v14 = v35[7];
  *(a1 + 304) = v35[6];
  *(a1 + 320) = v14;
  *(a1 + 336) = v35[8];
  sub_100008E50(&v28);
  if (*(&v20[3] + 1) && atomic_fetch_add((*(&v20[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v20);
  }

  *(&v20[3] + 1) = 0;
  memset(&v20[1], 0, 32);
  if (SDWORD1(v20[0]) >= 1)
  {
    v15 = 0;
    v16 = v21;
    do
    {
      *&v16[4 * v15++] = 0;
    }

    while (v15 < SDWORD1(v20[0]));
  }

  if (v22 != v23)
  {
    j__free(v22);
  }

  if (*(&v24[3] + 1) && atomic_fetch_add((*(&v24[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v24);
  }

  *(&v24[3] + 1) = 0;
  memset(&v24[1], 0, 32);
  if (SDWORD1(v24[0]) >= 1)
  {
    v17 = 0;
    v18 = v25;
    do
    {
      *&v18[4 * v17++] = 0;
    }

    while (v17 < SDWORD1(v24[0]));
  }

  if (v26 != v27)
  {
    j__free(v26);
  }
}

void sub_100262010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  sub_100006D14(va);
  sub_100006D14(va1);
  _Unwind_Resume(a1);
}

void sub_10026202C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  sub_100008E50(va);
  sub_100006D14(&a13);
  sub_100006D14(&a25);
  _Unwind_Resume(a1);
}

void sub_100262050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a3 != a1)
  {
    v7 = *(**a3 + 184);

    v7();
    return;
  }

  *v50 = 1124007936;
  memset(&v50[4], 0, 60);
  v51 = &v50[8];
  v52 = v53;
  v53[0] = 0;
  v53[1] = 0;
  *v46 = 1124007936;
  memset(&v46[4], 0, 60);
  v47 = &v46[8];
  v48 = v49;
  v49[0] = 0;
  v49[1] = 0;
  v8 = *a2;
  if (*a2 == &qword_1004BD560)
  {
    v10 = *(a2 + 304);
    if (v50 == (a2 + 16))
    {
      v9 = 1;
      v11 = *a3;
      if (*a3 == &qword_1004BD560)
      {
        goto LABEL_35;
      }

      goto LABEL_11;
    }

    v12 = *(a2 + 72);
    if (v12)
    {
      atomic_fetch_add((v12 + 20), 1u);
      if (*&v50[56])
      {
        if (atomic_fetch_add((*&v50[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v50);
        }
      }
    }

    *&v50[56] = 0;
    memset(&v50[16], 0, 32);
    if (*v50 <= 0)
    {
      v15 = *(a2 + 20);
      *v50 = *(a2 + 16);
      if (v15 >= 3)
      {
LABEL_28:
        sub_100269B58(v50, a2 + 16);
        v9 = 1;
        goto LABEL_34;
      }
    }

    else
    {
      v13 = 0;
      v14 = v51;
      do
      {
        *&v14[4 * v13++] = 0;
      }

      while (v13 < *&v50[4]);
      v15 = *(a2 + 20);
      *v50 = *(a2 + 16);
      if (*&v50[4] > 2 || v15 >= 3)
      {
        goto LABEL_28;
      }
    }

    v9 = 1;
LABEL_33:
    *&v50[4] = v15;
    *&v50[8] = *(a2 + 24);
    v17 = *(a2 + 88);
    v18 = v52;
    *v52 = *v17;
    v18[1] = v17[1];
    goto LABEL_34;
  }

  if (v8 != &qword_1004BD538 || *(a2 + 128) && *(a2 + 312) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 320)), vceqzq_f64(*(a2 + 336)))))) & 1) != 0)
  {
    (*(*v8 + 24))(v8, a2, v50, 0xFFFFFFFFLL);
    v9 = 0;
    v10 = 1.0;
    v11 = *a3;
    if (*a3 != &qword_1004BD560)
    {
      goto LABEL_11;
    }

LABEL_35:
    v9 = v9 | 2;
    v10 = v10 * *(a3 + 304);
    if (v46 == (a3 + 16))
    {
      goto LABEL_53;
    }

    v21 = *(a3 + 72);
    if (v21)
    {
      atomic_fetch_add((v21 + 20), 1u);
    }

    if (*&v46[56] && atomic_fetch_add((*&v46[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v46);
    }

    *&v46[56] = 0;
    memset(&v46[16], 0, 32);
    if (*v46 > 0)
    {
      v22 = 0;
      v23 = v47;
      do
      {
        *&v23[4 * v22++] = 0;
      }

      while (v22 < *&v46[4]);
      v24 = *(a3 + 20);
      *v46 = *(a3 + 16);
      if (*&v46[4] > 2 || v24 >= 3)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    v24 = *(a3 + 20);
    *v46 = *(a3 + 16);
    if (v24 < 3)
    {
      goto LABEL_50;
    }

LABEL_51:
    sub_100269B58(v46, a3 + 16);
    goto LABEL_52;
  }

  v10 = *(a2 + 304);
  if (v50 == (a2 + 16))
  {
    v9 = 0;
    v11 = *a3;
    if (*a3 == &qword_1004BD560)
    {
      goto LABEL_35;
    }

    goto LABEL_11;
  }

  v34 = *(a2 + 72);
  if (v34)
  {
    atomic_fetch_add((v34 + 20), 1u);
    if (*&v50[56])
    {
      if (atomic_fetch_add((*&v50[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v50);
      }
    }
  }

  *&v50[56] = 0;
  memset(&v50[16], 0, 32);
  if (*v50 > 0)
  {
    v35 = 0;
    v36 = v51;
    do
    {
      *&v36[4 * v35++] = 0;
    }

    while (v35 < *&v50[4]);
    v15 = *(a2 + 20);
    *v50 = *(a2 + 16);
    if (*&v50[4] > 2 || v15 >= 3)
    {
      goto LABEL_90;
    }

    goto LABEL_108;
  }

  v15 = *(a2 + 20);
  *v50 = *(a2 + 16);
  if (v15 < 3)
  {
LABEL_108:
    v9 = 0;
    goto LABEL_33;
  }

LABEL_90:
  sub_100269B58(v50, a2 + 16);
  v9 = 0;
LABEL_34:
  v19 = *(a2 + 32);
  *&v50[24] = *(a2 + 40);
  *&v50[40] = *(a2 + 56);
  v20 = *(a2 + 72);
  *&v50[16] = v19;
  *&v50[56] = v20;
  v11 = *a3;
  if (*a3 == &qword_1004BD560)
  {
    goto LABEL_35;
  }

LABEL_11:
  if (v11 != &qword_1004BD538 || *(a3 + 128) && *(a3 + 312) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a3 + 320)), vceqzq_f64(*(a3 + 336)))))) & 1) != 0)
  {
    (*(*v11 + 24))(v11, a3, v46, 0xFFFFFFFFLL);
    goto LABEL_53;
  }

  v10 = v10 * *(a3 + 304);
  if (v46 != (a3 + 16))
  {
    v38 = *(a3 + 72);
    if (v38)
    {
      atomic_fetch_add((v38 + 20), 1u);
    }

    if (*&v46[56] && atomic_fetch_add((*&v46[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v46);
    }

    *&v46[56] = 0;
    memset(&v46[16], 0, 32);
    if (*v46 > 0)
    {
      v39 = 0;
      v40 = v47;
      do
      {
        *&v40[4 * v39++] = 0;
      }

      while (v39 < *&v46[4]);
      v24 = *(a3 + 20);
      *v46 = *(a3 + 16);
      if (*&v46[4] > 2 || v24 >= 3)
      {
        goto LABEL_51;
      }

LABEL_50:
      *&v46[4] = v24;
      *&v46[8] = *(a3 + 24);
      v26 = *(a3 + 88);
      v27 = v48;
      *v48 = *v26;
      v27[1] = v26[1];
LABEL_52:
      *&v46[16] = *(a3 + 32);
      *&v46[24] = *(a3 + 40);
      *&v46[40] = *(a3 + 56);
      *&v46[56] = *(a3 + 72);
      goto LABEL_53;
    }

    v24 = *(a3 + 20);
    *v46 = *(a3 + 16);
    if (v24 < 3)
    {
      goto LABEL_50;
    }

    goto LABEL_51;
  }

LABEL_53:
  LODWORD(v42[0]) = 1124007936;
  memset(v42 + 4, 0, 48);
  v42[3] = 0u;
  v43 = v42 + 8;
  v44 = v45;
  v45[0] = 0;
  v45[1] = 0;
  sub_100262808(a4, v9, v50, v46, v42, v10, 1.0);
  if (*(&v42[3] + 1) && atomic_fetch_add((*(&v42[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v42);
  }

  *(&v42[3] + 1) = 0;
  memset(&v42[1], 0, 32);
  if (SDWORD1(v42[0]) >= 1)
  {
    v28 = 0;
    v29 = v43;
    do
    {
      *&v29[4 * v28++] = 0;
    }

    while (v28 < SDWORD1(v42[0]));
  }

  if (v44 != v45)
  {
    j__free(v44);
  }

  if (*&v46[56] && atomic_fetch_add((*&v46[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v46);
  }

  *&v46[56] = 0;
  memset(&v46[16], 0, 32);
  if (*&v46[4] >= 1)
  {
    v30 = 0;
    v31 = v47;
    do
    {
      *&v31[4 * v30++] = 0;
    }

    while (v30 < *&v46[4]);
  }

  if (v48 != v49)
  {
    j__free(v48);
  }

  if (*&v50[56] && atomic_fetch_add((*&v50[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v50);
  }

  *&v50[56] = 0;
  memset(&v50[16], 0, 32);
  if (*&v50[4] >= 1)
  {
    v32 = 0;
    v33 = v51;
    do
    {
      *&v33[4 * v32++] = 0;
    }

    while (v32 < *&v50[4]);
  }

  if (v52 != v53)
  {
    j__free(v52);
  }
}

void sub_1002627C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_100006D14(&a9);
  sub_100006D14(&a21);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_1002627EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_100006D14(&a21);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100262808(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, double a6, double a7)
{
  memset(v20, 0, sizeof(v20));
  sub_1002670C8(&v21, &qword_1004BD550, a2, a3, a4, a5, v20, a6, a7);
  *a1 = v21;
  *(a1 + 8) = v22;
  if (&v21 != a1)
  {
    v9 = *(a1 + 72);
    if (v9 && atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) >= 1)
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
      }

      while (v10 < *(a1 + 20));
    }

    v12 = *&v23[4];
    v13 = *&v23[16];
    *(a1 + 16) = *v23;
    *(a1 + 32) = v13;
    v14 = *&v23[48];
    *(a1 + 48) = *&v23[32];
    *(a1 + 64) = v14;
    v15 = *(a1 + 88);
    if (v15 == (a1 + 96))
    {
      v16 = v25;
      if (v12 <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      j__free(v15);
      *(a1 + 80) = a1 + 24;
      *(a1 + 88) = a1 + 96;
      v15 = (a1 + 96);
      v16 = v25;
      if (*&v23[4] <= 2)
      {
LABEL_10:
        *v15 = *v16;
        v15[1] = v16[1];
LABEL_13:
        *v23 = 1124007936;
        v8 = 0.0;
        memset(&v23[4], 0, 60);
        goto LABEL_14;
      }
    }

    *(a1 + 80) = v24;
    *(a1 + 88) = v16;
    v24 = &v23[8];
    v25 = &v26;
    goto LABEL_13;
  }

LABEL_14:
  v17 = sub_10025DAEC(a1 + 112, v27, v8);
  sub_10025DAEC(a1 + 208, v28, v17);
  v18 = v28[7];
  *(a1 + 304) = v28[6];
  *(a1 + 320) = v18;
  *(a1 + 336) = v28[8];
  return sub_100008E50(&v21);
}

void sub_1002629AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100008E50(va);
  _Unwind_Resume(a1);
}

void sub_1002629C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v8[0]) = 1124007936;
  memset(v8 + 4, 0, 32);
  memset(&v8[4] + 4, 0, 28);
  v9 = &v8[1];
  v10 = v11;
  v11[0] = 0;
  v11[1] = 0;
  (*(**a2 + 24))(*a2, a2, v8, 0xFFFFFFFFLL);
  sub_100262AE4(a4, a3, v8);
  if (v8[7] && atomic_fetch_add((v8[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v8);
  }

  v8[7] = 0;
  memset(&v8[2], 0, 32);
  if (SHIDWORD(v8[0]) >= 1)
  {
    v6 = 0;
    v7 = v9;
    do
    {
      *(v7 + v6++) = 0;
    }

    while (v6 < SHIDWORD(v8[0]));
  }

  if (v10 != v11)
  {
    j__free(v10);
  }
}

void sub_100262AE4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  LODWORD(v24[0]) = 1124007936;
  memset(v24 + 4, 0, 48);
  v24[3] = 0u;
  v25 = v24 + 8;
  v26 = v27;
  v27[0] = 0;
  v27[1] = 0;
  LODWORD(v20[0]) = 1124007936;
  memset(v20 + 4, 0, 48);
  v20[3] = 0u;
  v21 = v20 + 8;
  v22 = v23;
  v23[0] = 0;
  v23[1] = 0;
  memset(v19, 0, sizeof(v19));
  sub_1002670C8(&v28, &qword_1004BD558, a2, a3, v24, v20, v19, 1.0, 0.0);
  *a1 = v28;
  *(a1 + 8) = v29;
  if (&v28 != a1)
  {
    v5 = *(a1 + 72);
    if (v5 && atomic_fetch_add((v5 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) >= 1)
    {
      v6 = 0;
      v7 = *(a1 + 80);
      do
      {
        *(v7 + 4 * v6++) = 0;
      }

      while (v6 < *(a1 + 20));
    }

    v8 = *&v30[4];
    v9 = *&v30[16];
    *(a1 + 16) = *v30;
    *(a1 + 32) = v9;
    v10 = *&v30[48];
    *(a1 + 48) = *&v30[32];
    *(a1 + 64) = v10;
    v11 = *(a1 + 88);
    if (v11 == (a1 + 96))
    {
      v12 = v32;
      if (v8 <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      j__free(v11);
      *(a1 + 80) = a1 + 24;
      *(a1 + 88) = a1 + 96;
      v11 = (a1 + 96);
      v12 = v32;
      if (*&v30[4] <= 2)
      {
LABEL_10:
        *v11 = *v12;
        v11[1] = v12[1];
LABEL_13:
        *v30 = 1124007936;
        v4 = 0.0;
        memset(&v30[4], 0, 60);
        goto LABEL_14;
      }
    }

    *(a1 + 80) = v31;
    *(a1 + 88) = v12;
    v31 = &v30[8];
    v32 = &v33;
    goto LABEL_13;
  }

LABEL_14:
  v13 = sub_10025DAEC(a1 + 112, v34, v4);
  sub_10025DAEC(a1 + 208, v35, v13);
  v14 = v35[7];
  *(a1 + 304) = v35[6];
  *(a1 + 320) = v14;
  *(a1 + 336) = v35[8];
  sub_100008E50(&v28);
  if (*(&v20[3] + 1) && atomic_fetch_add((*(&v20[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v20);
  }

  *(&v20[3] + 1) = 0;
  memset(&v20[1], 0, 32);
  if (SDWORD1(v20[0]) >= 1)
  {
    v15 = 0;
    v16 = v21;
    do
    {
      *&v16[4 * v15++] = 0;
    }

    while (v15 < SDWORD1(v20[0]));
  }

  if (v22 != v23)
  {
    j__free(v22);
  }

  if (*(&v24[3] + 1) && atomic_fetch_add((*(&v24[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v24);
  }

  *(&v24[3] + 1) = 0;
  memset(&v24[1], 0, 32);
  if (SDWORD1(v24[0]) >= 1)
  {
    v17 = 0;
    v18 = v25;
    do
    {
      *&v18[4 * v17++] = 0;
    }

    while (v17 < SDWORD1(v24[0]));
  }

  if (v26 != v27)
  {
    j__free(v26);
  }
}

void sub_100262DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  sub_100006D14(va);
  sub_100006D14(va1);
  _Unwind_Resume(a1);
}

void sub_100262DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  sub_100008E50(va);
  sub_100006D14(&a13);
  sub_100006D14(&a25);
  _Unwind_Resume(a1);
}

int32x2_t sub_100262E04@<D0>(uint64_t a1@<X1>, int32x2_t *a2@<X8>)
{
  if (!*(a1 + 32))
  {
    goto LABEL_29;
  }

  v2 = *(a1 + 20);
  if (v2 >= 3)
  {
    v4 = *(a1 + 80);
    v5 = (v4 + 4);
    v6 = 1;
    v7 = v2 & 0x7FFFFFFE;
    v8 = 1;
    do
    {
      v6 *= *(v5 - 1);
      v8 *= *v5;
      v5 += 2;
      v7 -= 2;
    }

    while (v7);
    v3 = v8 * v6;
    v9 = v2 - (v2 & 0x7FFFFFFE);
    if (v9)
    {
      v10 = (v4 + 8 * ((v2 >> 1) & 0x3FFFFFFF));
      do
      {
        v11 = *v10++;
        v3 *= v11;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    v3 = *(a1 + 28) * *(a1 + 24);
  }

  if (v2 && v3)
  {
    result = vrev64_s32(**(a1 + 80));
    *a2 = result;
  }

  else
  {
LABEL_29:
    if (*(a1 + 128))
    {
      v13 = *(a1 + 116);
      if (v13 >= 3)
      {
        v15 = *(a1 + 176);
        v16 = (v15 + 4);
        v17 = 1;
        v18 = v13 & 0x7FFFFFFE;
        v19 = 1;
        do
        {
          v17 *= *(v16 - 1);
          v19 *= *v16;
          v16 += 2;
          v18 -= 2;
        }

        while (v18);
        v14 = v19 * v17;
        v20 = v13 - (v13 & 0x7FFFFFFE);
        if (v20)
        {
          v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
          do
          {
            v22 = *v21++;
            v14 *= v22;
            --v20;
          }

          while (v20);
        }
      }

      else
      {
        v14 = *(a1 + 124) * *(a1 + 120);
      }

      if (v14)
      {
        v23 = v13 == 0;
      }

      else
      {
        v23 = 1;
      }

      v24 = 272;
      if (v23)
      {
        v24 = 176;
      }

      result = vrev64_s32(**(a1 + v24));
      *a2 = result;
    }

    else
    {
      result = vrev64_s32(**(a1 + 176));
      *a2 = result;
    }
  }

  return result;
}

uint64_t sub_100262F4C(uint64_t a1, uint64_t a2)
{
  sub_1002ACE7C(v27, &off_100474208);
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v3 = *(a2 + 20);
  if (v3 >= 3)
  {
    v5 = *(a2 + 80);
    v6 = (v5 + 4);
    v7 = 1;
    v8 = v3 & 0x7FFFFFFE;
    v9 = 1;
    do
    {
      v7 *= *(v6 - 1);
      v9 *= *v6;
      v6 += 2;
      v8 -= 2;
    }

    while (v8);
    v4 = v9 * v7;
    v10 = v3 - (v3 & 0x7FFFFFFE);
    if (v10)
    {
      v11 = (v5 + 8 * ((v3 >> 1) & 0x3FFFFFFF));
      do
      {
        v12 = *v11++;
        v4 *= v12;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v4 = *(a2 + 28) * *(a2 + 24);
  }

  if (v3 && v4)
  {
    v13 = (a2 + 16);
  }

  else
  {
LABEL_12:
    v13 = (a2 + 112);
    if (*(a2 + 128))
    {
      v14 = *(a2 + 116);
      if (v14 >= 3)
      {
        v16 = *(a2 + 176);
        v17 = (v16 + 4);
        v18 = 1;
        v19 = v14 & 0x7FFFFFFE;
        v20 = 1;
        do
        {
          v18 *= *(v17 - 1);
          v20 *= *v17;
          v17 += 2;
          v19 -= 2;
        }

        while (v19);
        v15 = v20 * v18;
        v21 = v14 - (v14 & 0x7FFFFFFE);
        if (v21)
        {
          v22 = (v16 + 8 * ((v14 >> 1) & 0x3FFFFFFF));
          do
          {
            v23 = *v22++;
            v15 *= v23;
            --v21;
          }

          while (v21);
        }
      }

      else
      {
        v15 = *(a2 + 124) * *(a2 + 120);
      }

      if (v15)
      {
        v24 = v14 == 0;
      }

      else
      {
        v24 = 1;
      }

      if (!v24)
      {
        v13 = (a2 + 208);
      }
    }
  }

  v25 = *v13;
  if (v27[2])
  {
    sub_1002ACC1C(v27);
  }

  return v25 & 0xFFF;
}

void sub_1002630AC(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  LODWORD(v24[0]) = 1124007936;
  memset(v24 + 4, 0, 48);
  v24[3] = 0u;
  v25 = v24 + 8;
  v26 = v27;
  v27[0] = 0;
  v27[1] = 0;
  LODWORD(v20[0]) = 1124007936;
  memset(v20 + 4, 0, 48);
  v20[3] = 0u;
  v21 = v20 + 8;
  v22 = v23;
  v23[0] = 0;
  v23[1] = 0;
  sub_1002670C8(&v28, &qword_1004BD540, a2, a3, v24, v20, a4, 1.0, 0.0);
  *a1 = v28;
  *(a1 + 8) = v29;
  if (&v28 != a1)
  {
    v6 = *(a1 + 72);
    if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) >= 1)
    {
      v7 = 0;
      v8 = *(a1 + 80);
      do
      {
        *(v8 + 4 * v7++) = 0;
      }

      while (v7 < *(a1 + 20));
    }

    v9 = *&v30[4];
    v10 = *&v30[16];
    *(a1 + 16) = *v30;
    *(a1 + 32) = v10;
    v11 = *&v30[48];
    *(a1 + 48) = *&v30[32];
    *(a1 + 64) = v11;
    v12 = *(a1 + 88);
    if (v12 == (a1 + 96))
    {
      v13 = v32;
      if (v9 <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      j__free(v12);
      *(a1 + 80) = a1 + 24;
      *(a1 + 88) = a1 + 96;
      v12 = (a1 + 96);
      v13 = v32;
      if (*&v30[4] <= 2)
      {
LABEL_10:
        *v12 = *v13;
        v12[1] = v13[1];
LABEL_13:
        *v30 = 1124007936;
        v5 = 0.0;
        memset(&v30[4], 0, 60);
        goto LABEL_14;
      }
    }

    *(a1 + 80) = v31;
    *(a1 + 88) = v13;
    v31 = &v30[8];
    v32 = &v33;
    goto LABEL_13;
  }

LABEL_14:
  v14 = sub_10025DAEC(a1 + 112, v34, v5);
  sub_10025DAEC(a1 + 208, v35, v14);
  v15 = v35[7];
  *(a1 + 304) = v35[6];
  *(a1 + 320) = v15;
  *(a1 + 336) = v35[8];
  sub_100008E50(&v28);
  if (*(&v20[3] + 1) && atomic_fetch_add((*(&v20[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v20);
  }

  *(&v20[3] + 1) = 0;
  memset(&v20[1], 0, 32);
  if (SDWORD1(v20[0]) >= 1)
  {
    v16 = 0;
    v17 = v21;
    do
    {
      *&v17[4 * v16++] = 0;
    }

    while (v16 < SDWORD1(v20[0]));
  }

  if (v22 != v23)
  {
    j__free(v22);
  }

  if (*(&v24[3] + 1) && atomic_fetch_add((*(&v24[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v24);
  }

  *(&v24[3] + 1) = 0;
  memset(&v24[1], 0, 32);
  if (SDWORD1(v24[0]) >= 1)
  {
    v18 = 0;
    v19 = v25;
    do
    {
      *&v19[4 * v18++] = 0;
    }

    while (v18 < SDWORD1(v24[0]));
  }

  if (v26 != v27)
  {
    j__free(v26);
  }
}

void sub_100263388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100006D14(&a9);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_1002633A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_100008E50(va);
  sub_100006D14(&a9);
  sub_100006D14(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_1002633C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result == &qword_1004BD560 || v2 == &qword_1004BD558)
  {
    *a2 = *(result + 24);
  }

  else if (v2 == &qword_1004BD550)
  {
    v7 = *(result + 24);
    *a2 = *(result + 124);
    *(a2 + 4) = v7;
  }

  else if (v2 == &qword_1004BD568)
  {
    v8 = *(result + 28);
    *a2 = *(result + 124);
    *(a2 + 4) = v8;
  }

  else
  {
    v4 = result;
    result = sub_100267300();
    if (result == v2)
    {
      *a2 = vrev64_s32(**(v4 + 80));
    }

    else
    {
      result = *v4;
      if (*v4)
      {
        v6 = *(*result + 200);

        return v6();
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  return result;
}

uint64_t sub_100263504(uint64_t a1)
{
  sub_1002ACE7C(&v6, &off_100474228);
  v2 = *a1;
  if (sub_100267300() == v2)
  {
    v4 = *(a1 + 16) & 0xFFF;
    if (!v7)
    {
      return v4;
    }

    goto LABEL_11;
  }

  v3 = *a1;
  if (*a1 == &qword_1004BD548)
  {
    v4 = 0;
    if (!v7)
    {
      return v4;
    }

    goto LABEL_11;
  }

  if (v3)
  {
    v4 = (*(*v3 + 208))(v3, a1);
    if (!v7)
    {
      return v4;
    }

    goto LABEL_11;
  }

  v4 = 0xFFFFFFFFLL;
  if (v7)
  {
LABEL_11:
    sub_1002ACC1C(&v6);
  }

  return v4;
}

__n128 sub_1002635F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == -1 || (v6 = *(a2 + 16), (v6 & 0xFFF) == a4))
  {
    v7 = (a2 + 16);
    if (a2 + 16 != a3)
    {
      v8 = *(a2 + 72);
      if (v8)
      {
        atomic_fetch_add((v8 + 20), 1u);
      }

      v9 = *(a3 + 56);
      if (v9 && atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(a3);
      }

      *(a3 + 56) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      if (*(a3 + 4) <= 0)
      {
        *a3 = *v7;
        v13 = *(a2 + 20);
        if (v13 <= 2)
        {
LABEL_14:
          *(a3 + 4) = v13;
          *(a3 + 8) = *(a2 + 24);
          v14 = *(a2 + 88);
          v15 = *(a3 + 72);
          *v15 = *v14;
          v15[1] = v14[1];
LABEL_21:
          *(a3 + 16) = *(a2 + 32);
          *(a3 + 32) = *(a2 + 48);
          result = *(a2 + 64);
          *(a3 + 48) = result;
          return result;
        }
      }

      else
      {
        v10 = 0;
        v11 = *(a3 + 64);
        do
        {
          *(v11 + 4 * v10++) = 0;
          v12 = *(a3 + 4);
        }

        while (v10 < v12);
        *a3 = *v7;
        if (v12 <= 2)
        {
          v13 = *(a2 + 20);
          if (v13 <= 2)
          {
            goto LABEL_14;
          }
        }
      }

      sub_100269B58(a3, a2 + 16);
      goto LABEL_21;
    }
  }

  else
  {
    if (((v6 ^ a4) & 0xFF8) != 0)
    {
      v17 = 0;
      v18 = 0;
      qmemcpy(sub_1002A80E0(&v17, 59), "((((_type) & ((512 - 1) << 3)) >> 3) + 1) == e.a.channels()", 59);
      sub_1002A8980(-215, &v17, "assign", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matop.cpp", 1238);
    }

    LODWORD(v17) = 33619968;
    v18 = a3;
    v19 = 0;
    sub_10020EF14((a2 + 16), &v17, a4, 1.0, 0.0);
  }

  return result;
}

void sub_1002637D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_1002637F0(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  LODWORD(v35[0]) = 1124007936;
  memset(v35 + 4, 0, 48);
  v35[3] = 0u;
  v36 = v35 + 8;
  v37 = v38;
  v5 = a3 + 4;
  v38[0] = 0;
  v38[1] = 0;
  if (a4 == -1 || (*(a2 + 16) & 0xFFF) == a4)
  {
    v6 = a3 + 4;
    v7 = a3;
    v8 = (a2 + 320);
    if (*(a2 + 128))
    {
LABEL_4:
      v10 = *(a2 + 320);
      v9 = *(a2 + 336);
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v10), vceqzq_f64(v9))))) & 1) != 0 && v10.f64[1] == 0.0 && v9.f64[0] == 0.0 && v9.f64[1] == 0.0)
      {
        v34 = 0;
        v32 = 16842752;
        v33 = (a2 + 16);
        v31 = 0;
        v29 = 16842752;
        v30 = (a2 + 112);
        v11 = *(a2 + 304);
        v12 = *(a2 + 312);
        v26 = 33619968;
        v27 = v7;
        v28 = 0;
        sub_1001DD438(&v32, &v29, &v26, -1, v11, v12, v10.f64[0]);
      }

      else
      {
        v13 = *(a2 + 304);
        v14 = *(a2 + 312);
        if (v13 == 1.0)
        {
          if (v14 == 1.0)
          {
            v34 = 0;
            v15 = a2;
            v32 = 16842752;
            v33 = (a2 + 16);
            v31 = 0;
            v29 = 16842752;
            v30 = (a2 + 112);
            v26 = 33619968;
            v27 = v7;
            v28 = 0;
            v16 = sub_100276DA4();
            sub_1001DAF28(&v32, &v29, &v26, v16, 0xFFFFFFFFLL);
          }

          else
          {
            v34 = 0;
            if (v14 == -1.0)
            {
              v15 = a2;
              v32 = 16842752;
              v33 = (a2 + 16);
              v31 = 0;
              v29 = 16842752;
              v30 = (a2 + 112);
              v26 = 33619968;
              v27 = v7;
              v28 = 0;
              v21 = sub_100276DA4();
              sub_1001DD10C(&v32, &v29, &v26, v21, -1);
            }

            else
            {
              v32 = 16842752;
              v33 = (a2 + 112);
              v15 = a2;
              v31 = 0;
              v29 = 16842752;
              v30 = (a2 + 16);
              v26 = 33619968;
              v27 = v7;
              v28 = 0;
              sub_100244D98(&v32, &v29, &v26, v14);
            }
          }
        }

        else if (v14 == 1.0)
        {
          v34 = 0;
          if (v13 == -1.0)
          {
            v32 = 16842752;
            v33 = (a2 + 112);
            v15 = a2;
            v31 = 0;
            v29 = 16842752;
            v30 = (a2 + 16);
            v26 = 33619968;
            v27 = v7;
            v28 = 0;
            v20 = sub_100276DA4();
            sub_1001DD10C(&v32, &v29, &v26, v20, -1);
          }

          else
          {
            v15 = a2;
            v32 = 16842752;
            v33 = (a2 + 16);
            v31 = 0;
            v29 = 16842752;
            v30 = (a2 + 112);
            v26 = 33619968;
            v27 = v7;
            v28 = 0;
            sub_100244D98(&v32, &v29, &v26, v13);
          }
        }

        else
        {
          v34 = 0;
          v15 = a2;
          v32 = 16842752;
          v33 = (a2 + 16);
          v31 = 0;
          v29 = 16842752;
          v30 = (a2 + 112);
          v26 = 33619968;
          v27 = v7;
          v28 = 0;
          sub_1001DD438(&v32, &v29, &v26, -1, v13, v14, 0.0);
        }

        if (v15[41] != 0.0 || v15[42] != 0.0 || v15[43] != 0.0)
        {
          v33 = v7;
          v34 = 0;
          v32 = 16842752;
          v29 = -1056833530;
          v30 = v8;
          v31 = 0x400000001;
          v26 = 33619968;
          v27 = v7;
          v28 = 0;
          v23 = sub_100276DA4();
          sub_1001DAF28(&v32, &v29, &v26, v23, 0xFFFFFFFFLL);
        }
      }

      goto LABEL_37;
    }
  }

  else
  {
    v7 = v35;
    v6 = &v35[1];
    v8 = (a2 + 320);
    if (*(a2 + 128))
    {
      goto LABEL_4;
    }
  }

  if (*(a2 + 328) == 0.0 && *(a2 + 336) == 0.0 && *(a2 + 344) == 0.0)
  {
    v17 = *(a2 + 304);
    if (*v6 != *v5 || fabs(v17) != 1.0)
    {
      v32 = 33619968;
      v33 = a3;
      v34 = 0;
      sub_10020EF14((a2 + 16), &v32, a4, v17, *(a2 + 320));
      goto LABEL_39;
    }

    if (v17 == 1.0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = *(a2 + 304);
    if (v17 == 1.0)
    {
LABEL_19:
      v33 = (a2 + 16);
      v34 = 0;
      v32 = 16842752;
      v29 = -1056833530;
      v30 = v8;
      v31 = 0x400000001;
      v26 = 33619968;
      v27 = v7;
      v28 = 0;
      v18 = sub_100276DA4();
      sub_1001DAF28(&v32, &v29, &v26, v18, 0xFFFFFFFFLL);
      goto LABEL_37;
    }
  }

  if (v17 == -1.0)
  {
    v32 = -1056833530;
    v33 = v8;
    v34 = 0x400000001;
    v30 = (a2 + 16);
    v31 = 0;
    v29 = 16842752;
    v26 = 33619968;
    v27 = v7;
    v28 = 0;
    v19 = sub_100276DA4();
    sub_1001DD10C(&v32, &v29, &v26, v19, -1);
  }

  else
  {
    v32 = 33619968;
    v33 = v7;
    v34 = 0;
    sub_10020EF14((a2 + 16), &v32, *(a2 + 16) & 0xFFF, v17, 0.0);
    v33 = v7;
    v34 = 0;
    v32 = 16842752;
    v29 = -1056833530;
    v30 = v8;
    v31 = 0x400000001;
    v26 = 33619968;
    v27 = v7;
    v28 = 0;
    v22 = sub_100276DA4();
    sub_1001DAF28(&v32, &v29, &v26, v22, 0xFFFFFFFFLL);
  }

LABEL_37:
  if (*v6 != *v5)
  {
    v32 = 33619968;
    v33 = a3;
    v34 = 0;
    sub_10020EF14(v7, &v32, *a3 & 0xFFF, 1.0, 0.0);
  }

LABEL_39:
  if (*(&v35[3] + 1) && atomic_fetch_add((*(&v35[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v35);
  }

  *(&v35[3] + 1) = 0;
  memset(&v35[1], 0, 32);
  if (SDWORD1(v35[0]) >= 1)
  {
    v24 = 0;
    v25 = v36;
    do
    {
      *&v25[4 * v24++] = 0;
    }

    while (v24 < SDWORD1(v35[0]));
  }

  if (v37 != v38)
  {
    j__free(v37);
  }
}

void sub_100263E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263F40(uint64_t a1, uint64_t *a2, double *a3, double *a4)
{
  sub_1002ACE7C(v9, &off_100474248);
  sub_100263FF4(a4, a2);
  v7 = a4[41];
  a4[40] = *a3 + a4[40];
  a4[41] = a3[1] + v7;
  v8 = a4[43];
  a4[42] = a3[2] + a4[42];
  a4[43] = a3[3] + v8;
  if (v9[2])
  {
    sub_1002ACC1C(v9);
  }
}

uint64_t sub_100263FF4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  if (a1 != a2)
  {
    v5 = a2[9];
    if (v5)
    {
      atomic_fetch_add((v5 + 20), 1u);
    }

    v6 = *(a1 + 72);
    if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 16) = *(a2 + 4);
      v10 = *(a2 + 5);
      if (v10 <= 2)
      {
LABEL_12:
        *(a1 + 20) = v10;
        *(a1 + 24) = a2[3];
        v11 = a2[11];
        v12 = *(a1 + 88);
        *v12 = *v11;
        v12[1] = v11[1];
        goto LABEL_15;
      }
    }

    else
    {
      v7 = 0;
      v8 = *(a1 + 80);
      do
      {
        *(v8 + 4 * v7++) = 0;
        v9 = *(a1 + 20);
      }

      while (v7 < v9);
      *(a1 + 16) = *(a2 + 4);
      if (v9 <= 2)
      {
        v10 = *(a2 + 5);
        if (v10 <= 2)
        {
          goto LABEL_12;
        }
      }
    }

    sub_100269B58(a1 + 16, (a2 + 2));
LABEL_15:
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = *(a2 + 3);
    *(a1 + 64) = *(a2 + 4);
    v13 = a2[21];
    if (v13)
    {
      atomic_fetch_add((v13 + 20), 1u);
    }

    v14 = *(a1 + 168);
    if (v14 && atomic_fetch_add((v14 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 112);
    }

    *(a1 + 168) = 0;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    if (*(a1 + 116) <= 0)
    {
      *(a1 + 112) = *(a2 + 28);
      v18 = *(a2 + 29);
      if (v18 <= 2)
      {
LABEL_25:
        *(a1 + 116) = v18;
        *(a1 + 120) = a2[15];
        v19 = a2[23];
        v20 = *(a1 + 184);
        *v20 = *v19;
        v20[1] = v19[1];
        goto LABEL_28;
      }
    }

    else
    {
      v15 = 0;
      v16 = *(a1 + 176);
      do
      {
        *(v16 + 4 * v15++) = 0;
        v17 = *(a1 + 116);
      }

      while (v15 < v17);
      *(a1 + 112) = *(a2 + 28);
      if (v17 <= 2)
      {
        v18 = *(a2 + 29);
        if (v18 <= 2)
        {
          goto LABEL_25;
        }
      }
    }

    sub_100269B58(a1 + 112, (a2 + 14));
LABEL_28:
    *(a1 + 128) = *(a2 + 8);
    *(a1 + 144) = *(a2 + 9);
    *(a1 + 160) = *(a2 + 10);
    v21 = a2[33];
    if (v21)
    {
      atomic_fetch_add((v21 + 20), 1u);
    }

    v22 = *(a1 + 264);
    if (v22 && atomic_fetch_add((v22 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 208);
    }

    *(a1 + 264) = 0;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    if (*(a1 + 212) <= 0)
    {
      *(a1 + 208) = *(a2 + 52);
      v26 = *(a2 + 53);
      if (v26 <= 2)
      {
LABEL_38:
        *(a1 + 212) = v26;
        *(a1 + 216) = a2[27];
        v27 = a2[35];
        v28 = *(a1 + 280);
        *v28 = *v27;
        v28[1] = v27[1];
LABEL_41:
        *(a1 + 224) = *(a2 + 14);
        *(a1 + 240) = *(a2 + 15);
        *(a1 + 256) = *(a2 + 16);
        goto LABEL_42;
      }
    }

    else
    {
      v23 = 0;
      v24 = *(a1 + 272);
      do
      {
        *(v24 + 4 * v23++) = 0;
        v25 = *(a1 + 212);
      }

      while (v23 < v25);
      *(a1 + 208) = *(a2 + 52);
      if (v25 <= 2)
      {
        v26 = *(a2 + 53);
        if (v26 <= 2)
        {
          goto LABEL_38;
        }
      }
    }

    sub_100269B58(a1 + 208, (a2 + 26));
    goto LABEL_41;
  }

LABEL_42:
  v29 = *(a2 + 19);
  v30 = *(a2 + 21);
  *(a1 + 320) = *(a2 + 20);
  *(a1 + 336) = v30;
  *(a1 + 304) = v29;
  return a1;
}

void sub_1002642FC(uint64_t a1, float64x2_t *a2, uint64_t *a3, float64x2_t *a4)
{
  sub_1002ACE7C(v10, &off_100474268);
  sub_100263FF4(a4, a3);
  v7 = a4[20];
  a4[19] = vnegq_f64(a4[19]);
  v8 = vsubq_f64(*a2, v7);
  v9 = vsubq_f64(a2[1], a4[21]);
  a4[20] = v8;
  a4[21] = v9;
  if (v10[2])
  {
    sub_1002ACC1C(v10);
  }
}

void sub_100264398(double a1, uint64_t a2, uint64_t *a3, float64x2_t *a4)
{
  sub_1002ACE7C(v8, &off_100474288);
  sub_100263FF4(a4, a3);
  v6 = vmulq_n_f64(a4[20], a1);
  a4[19] = vmulq_n_f64(a4[19], a1);
  a4[20] = v6;
  a4[21] = vmulq_n_f64(a4[21], a1);
  if (v8[2])
  {
    sub_1002ACC1C(v8);
  }
}

void sub_100264418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_10026442C(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1002ACE7C(v14, &off_1004742A8);
  if (*a3 == &qword_1004BD538 && (!*(a3 + 128) || *(a3 + 312) == 0.0) && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a3 + 320)), vceqzq_f64(*(a3 + 336)))))) & 1) == 0)
  {
    LODWORD(v10[0]) = 1124007936;
    memset(v10 + 4, 0, 48);
    v10[3] = 0u;
    v11 = v10 + 8;
    v12 = v13;
    v13[0] = 0;
    v13[1] = 0;
    sub_100260C18(a4, 47, (a3 + 16), v10, a1 / *(a3 + 304));
    if (*(&v10[3] + 1) && atomic_fetch_add((*(&v10[3] + 1) + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v10);
    }

    *(&v10[3] + 1) = 0;
    memset(&v10[1], 0, 32);
    if (SDWORD1(v10[0]) >= 1)
    {
      v8 = 0;
      v9 = v11;
      do
      {
        *&v9[4 * v8++] = 0;
      }

      while (v8 < SDWORD1(v10[0]));
    }

    if (v12 != v13)
    {
      j__free(v12);
    }
  }

  else
  {
    sub_100261794(a1, v7, a3, a4);
  }

  if (v14[2])
  {
    sub_1002ACC1C(v14);
  }
}

void sub_10026459C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100006D14(&a9);
  sub_1001D8BF4(v9 - 48);
  _Unwind_Resume(a1);
}

void sub_1002645D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1002ACE7C(v6, &off_1004742C8);
  if (*a2 == &qword_1004BD538 && (!*(a2 + 128) || *(a2 + 312) == 0.0) && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 320)), vceqzq_f64(*(a2 + 336)))))) & 1) == 0)
  {
    sub_100261D34(a3, (a2 + 16), *(a2 + 304));
  }

  else
  {
    sub_100261BE0(v5, a2, a3);
  }

  if (v6[2])
  {
    sub_1002ACC1C(v6);
  }
}

void sub_1002646A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1002ACE7C(v15, &off_1004742E8);
  v6 = *(a2 + 128);
  v7 = *(a2 + 304);
  v8 = *(a2 + 312);
  if (!v6 || v8 == 0.0)
  {
    if (fabs(v7) == 1.0)
    {
      v12 = vmulq_n_f64(vnegq_f64(*(a2 + 320)), v7);
      v13 = vmulq_n_f64(vnegq_f64(*(a2 + 336)), v7);
      v14[0] = v12;
      v14[1] = v13;
      sub_1002630AC(a3, 97, (a2 + 16), v14);
      goto LABEL_11;
    }

    if (!v6)
    {
LABEL_7:
      sub_1002619C0(v5, a2, a3);
      goto LABEL_11;
    }
  }

  v9 = v8 + v7;
  v10 = v8 * v7;
  if (v9 != 0.0 || v10 != -1.0)
  {
    goto LABEL_7;
  }

  sub_100260C18(a3, 97, (a2 + 16), a2 + 112, 1.0);
LABEL_11:
  if (v15[2])
  {
    sub_1002ACC1C(v15);
  }
}

void sub_100264788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002647A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002647B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v27[0]) = 1124007936;
  memset(v27 + 4, 0, 48);
  v27[3] = 0u;
  v28 = v27 + 8;
  v29 = v30;
  v6 = (a3 + 16);
  v30[0] = 0;
  v30[1] = 0;
  if (a4 == -1 || (*(a2 + 16) & 0xFFF) == a4)
  {
    v7 = (a3 + 16);
    v8 = a3;
    v9 = *(a2 + 8);
    if (v9 != 47)
    {
      goto LABEL_4;
    }

LABEL_13:
    if (*(a2 + 128))
    {
      v26 = 0;
      LODWORD(v24) = 16842752;
      v25 = a2 + 16;
      v23 = 0;
      v21 = 16842752;
      v22 = (a2 + 112);
      v18 = 33619968;
      v19 = v8;
      v20 = 0;
      sub_1001DD2F4(&v24, &v21, &v18, -1, *(a2 + 304));
    }

    else
    {
      v12 = *(a2 + 304);
      v25 = a2 + 16;
      v26 = 0;
      LODWORD(v24) = 16842752;
      v21 = 33619968;
      v22 = v8;
      v23 = 0;
      sub_1001DD398(&v24, &v21, -1, v12);
    }

    goto LABEL_33;
  }

  v8 = v27;
  v7 = &v27[1];
  v9 = *(a2 + 8);
  if (v9 == 47)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (v9 == 42)
  {
    v26 = 0;
    LODWORD(v24) = 16842752;
    v25 = a2 + 16;
    v23 = 0;
    v21 = 16842752;
    v22 = (a2 + 112);
    v18 = 33619968;
    v19 = v8;
    v20 = 0;
    sub_1001DD250(&v24, &v21, &v18, -1, *(a2 + 304));
    goto LABEL_33;
  }

  v10 = *(a2 + 128);
  switch(v9)
  {
    case '|':
      if (v10)
      {
        v26 = 0;
        LODWORD(v24) = 16842752;
        v25 = a2 + 16;
        v23 = 0;
        v21 = 16842752;
        v22 = (a2 + 112);
      }

      else
      {
        v25 = a2 + 16;
        v26 = 0;
        LODWORD(v24) = 16842752;
        v21 = -1056833530;
        v22 = (a2 + 320);
        v23 = 0x400000001;
      }

      v18 = 33619968;
      v19 = v8;
      v20 = 0;
      v14 = sub_100276DA4();
      sub_1001DAA7C(&v24, &v21, &v18, v14);
      break;
    case '^':
      if (v10)
      {
        v26 = 0;
        LODWORD(v24) = 16842752;
        v25 = a2 + 16;
        v23 = 0;
        v21 = 16842752;
        v22 = (a2 + 112);
      }

      else
      {
        v25 = a2 + 16;
        v26 = 0;
        LODWORD(v24) = 16842752;
        v21 = -1056833530;
        v22 = (a2 + 320);
        v23 = 0x400000001;
      }

      v18 = 33619968;
      v19 = v8;
      v20 = 0;
      v13 = sub_100276DA4();
      sub_1001DAB24(&v24, &v21, &v18, v13);
      break;
    case '&':
      if (v10)
      {
        v26 = 0;
        LODWORD(v24) = 16842752;
        v25 = a2 + 16;
        v23 = 0;
        v21 = 16842752;
        v22 = (a2 + 112);
      }

      else
      {
        v25 = a2 + 16;
        v26 = 0;
        LODWORD(v24) = 16842752;
        v21 = -1056833530;
        v22 = (a2 + 320);
        v23 = 0x400000001;
      }

      v18 = 33619968;
      v19 = v8;
      v20 = 0;
      v11 = sub_100276DA4();
      sub_1001D9360(&v24, &v21, &v18, v11);
      break;
    default:
      if (v9 == 126 && !v10)
      {
        v25 = a2 + 16;
        v26 = 0;
        LODWORD(v24) = 16842752;
        v21 = 33619968;
        v22 = v8;
        v23 = 0;
        v15 = sub_100276DA4();
        sub_1001DABCC(&v24, &v21, v15);
        break;
      }

      if (v9 <= 96)
      {
        if (v9 == 77)
        {
          sub_1001DADA0(a2 + 16, a2 + 112, v8);
          break;
        }

        if (v9 == 78)
        {
          v25 = a2 + 16;
          v26 = 0;
          LODWORD(v24) = 16842752;
          v21 = -1056833530;
          v22 = (a2 + 320);
          v23 = 0x100000001;
          v18 = 33619968;
          v19 = v8;
          v20 = 0;
          sub_1001DAC70(&v24, &v21, &v18);
          break;
        }
      }

      else
      {
        switch(v9)
        {
          case 'a':
            if (v10)
            {
              v26 = 0;
              LODWORD(v24) = 16842752;
              v25 = a2 + 16;
              v23 = 0;
              v21 = 16842752;
              v22 = (a2 + 112);
              v18 = 33619968;
              v19 = v8;
              v20 = 0;
              sub_1001DD1B4(&v24, &v21, &v18);
              goto LABEL_33;
            }

            break;
          case 'n':
            v25 = a2 + 16;
            v26 = 0;
            LODWORD(v24) = 16842752;
            v21 = -1056833530;
            v22 = (a2 + 320);
            v23 = 0x100000001;
            v18 = 33619968;
            v19 = v8;
            v20 = 0;
            sub_1001DAD08(&v24, &v21, &v18);
            goto LABEL_33;
          case 'm':
            sub_1001DAE64(a2 + 16, a2 + 112, v8);
            goto LABEL_33;
        }
      }

      if (v9 != 97 || v10)
      {
        sub_1001FA81C(&v24, "Unknown operation");
        sub_1002A8980(-2, &v24, "assign", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matop.cpp", 1408);
      }

      v25 = a2 + 16;
      v26 = 0;
      LODWORD(v24) = 16842752;
      v21 = -1056833530;
      v22 = (a2 + 320);
      v23 = 0x400000001;
      v18 = 33619968;
      v19 = v8;
      v20 = 0;
      sub_1001DD1B4(&v24, &v21, &v18);
      break;
  }

LABEL_33:
  if (*v7 != *v6)
  {
    LODWORD(v24) = 33619968;
    v25 = a3;
    v26 = 0;
    sub_10020EF14(v8, &v24, a4, 1.0, 0.0);
  }

  if (*(&v27[3] + 1) && atomic_fetch_add((*(&v27[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v27);
  }

  *(&v27[3] + 1) = 0;
  memset(&v27[1], 0, 32);
  if (SDWORD1(v27[0]) >= 1)
  {
    v16 = 0;
    v17 = v28;
    do
    {
      *&v17[4 * v16++] = 0;
    }

    while (v16 < SDWORD1(v27[0]));
  }

  if (v29 != v30)
  {
    j__free(v29);
  }
}

void sub_100264DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_1002A8124(va);
  JUMPOUT(0x100264BB4);
}

void sub_100264E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100264E78(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1002ACE7C(v9, &off_100474308);
  v8 = *(a3 + 8);
  if (v8 == 47 || v8 == 42)
  {
    sub_100263FF4(a4, a3);
    *(a4 + 304) = *(a4 + 304) * a1;
  }

  else
  {
    sub_100260E98(a1, v7, a3, a4);
  }

  if (v9[2])
  {
    sub_1002ACC1C(v9);
  }
}

void sub_100264F28(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1002ACE7C(v16, &off_100474328);
  if (*(a3 + 8) == 47 && (!*(a3 + 128) || *(a3 + 312) == 0.0))
  {
    LODWORD(v12[0]) = 1124007936;
    memset(v12 + 4, 0, 48);
    v12[3] = 0u;
    v13 = v12 + 8;
    v14 = v15;
    v15[0] = 0;
    v15[1] = 0;
    v8 = *(a3 + 304);
    memset(v11, 0, sizeof(v11));
    sub_10025F864(a4, (a3 + 16), v12, v11, a1 / v8, 0.0);
    if (*(&v12[3] + 1) && atomic_fetch_add((*(&v12[3] + 1) + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v12);
    }

    *(&v12[3] + 1) = 0;
    memset(&v12[1], 0, 32);
    if (SDWORD1(v12[0]) >= 1)
    {
      v9 = 0;
      v10 = v13;
      do
      {
        *&v10[4 * v9++] = 0;
      }

      while (v9 < SDWORD1(v12[0]));
    }

    if (v14 != v15)
    {
      j__free(v14);
    }
  }

  else
  {
    sub_100261794(a1, v7, a3, a4);
  }

  if (v16[2])
  {
    sub_1002ACC1C(v16);
  }
}

void sub_100265074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100006D14(va);
  sub_1001D8BF4(v9 - 48);
  _Unwind_Resume(a1);
}

void sub_1002650A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v19[0]) = 1124007936;
  v6 = v19;
  memset(v19 + 4, 0, 48);
  v19[3] = 0u;
  v20 = v19 + 8;
  v21 = v22;
  v22[0] = 0;
  v22[1] = 0;
  v7 = a4 + 1;
  if ((a4 + 1) < 2)
  {
    v6 = a3;
  }

  if (*(a2 + 128))
  {
    v18 = 0;
    v16 = 16842752;
    v17 = a2 + 16;
    v15 = 0;
    v13 = 16842752;
    v14 = a2 + 112;
  }

  else
  {
    v17 = a2 + 16;
    v18 = 0;
    v16 = 16842752;
    v13 = -1056833530;
    v14 = a2 + 304;
    v15 = 0x100000001;
  }

  v10 = 33619968;
  v11 = v6;
  v12 = 0;
  sub_1001DD540(&v16, &v13, &v10, *(a2 + 8));
  if (v7 >= 2 && *&v19[1] != *(a3 + 16))
  {
    v16 = 33619968;
    v17 = a3;
    v18 = 0;
    sub_10020EF14(v19, &v16, a4, 1.0, 0.0);
  }

  if (*(&v19[3] + 1) && atomic_fetch_add((*(&v19[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v19);
  }

  *(&v19[3] + 1) = 0;
  memset(&v19[1], 0, 32);
  if (SDWORD1(v19[0]) >= 1)
  {
    v8 = 0;
    v9 = v20;
    do
    {
      *&v9[4 * v8++] = 0;
    }

    while (v8 < SDWORD1(v19[0]));
  }

  if (v21 != v22)
  {
    j__free(v21);
  }
}

void sub_10026525C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100265270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100265284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_10026529C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v19[0]) = 1124007936;
  memset(v19 + 4, 0, 48);
  v19[3] = 0u;
  v20 = v19 + 8;
  v21 = v22;
  v7 = (a3 + 16);
  v22[0] = 0;
  v22[1] = 0;
  if (a4 == -1 || (*(a2 + 16) & 0xFFF) == a4)
  {
    v8 = (a3 + 16);
    v9 = a3;
  }

  else
  {
    v9 = v19;
    v8 = &v19[1];
  }

  v17 = a2 + 16;
  v18 = 0;
  v16 = 16842752;
  v13 = 33619968;
  v14 = v9;
  v15 = 0;
  sub_10026EF8C(&v16, &v13);
  v10 = *(a2 + 304);
  if (*v8 != *v7 || v10 != 1.0)
  {
    v16 = 33619968;
    v17 = a3;
    v18 = 0;
    sub_10020EF14(v9, &v16, a4, v10, 0.0);
  }

  if (*(&v19[3] + 1) && atomic_fetch_add((*(&v19[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v19);
  }

  *(&v19[3] + 1) = 0;
  memset(&v19[1], 0, 32);
  if (SDWORD1(v19[0]) >= 1)
  {
    v11 = 0;
    v12 = v20;
    do
    {
      *&v12[4 * v11++] = 0;
    }

    while (v11 < SDWORD1(v19[0]));
  }

  if (v21 != v22)
  {
    j__free(v21);
  }
}

void sub_100265418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100265430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100265444(double a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  sub_1002ACE7C(v7, &off_100474348);
  sub_100263FF4(a4, a3);
  *(a4 + 304) = *(a4 + 304) * a1;
  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

void sub_1002654CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1002ACE7C(v13, &off_100474368);
  v5 = *(a2 + 304);
  if (v5 == 1.0)
  {
    sub_10026562C(a3, (a2 + 16));
  }

  else
  {
    LODWORD(v9[0]) = 1124007936;
    memset(v9 + 4, 0, 48);
    v9[3] = 0u;
    v10 = v9 + 8;
    v11 = v12;
    v12[0] = 0;
    v12[1] = 0;
    memset(v8, 0, sizeof(v8));
    sub_10025F864(a3, (a2 + 16), v9, v8, v5, 0.0);
    if (*(&v9[3] + 1) && atomic_fetch_add((*(&v9[3] + 1) + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v9);
    }

    *(&v9[3] + 1) = 0;
    memset(&v9[1], 0, 32);
    if (SDWORD1(v9[0]) >= 1)
    {
      v6 = 0;
      v7 = v10;
      do
      {
        *&v7[4 * v6++] = 0;
      }

      while (v6 < SDWORD1(v9[0]));
    }

    if (v11 != v12)
    {
      j__free(v11);
    }
  }

  if (v13[2])
  {
    sub_1002ACC1C(v13);
  }
}

void sub_1002655F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100006D14(va);
  sub_1001D8BF4(v9 - 48);
  _Unwind_Resume(a1);
}

void sub_10026562C(uint64_t a1, __int128 *a2)
{
  LODWORD(v23[0]) = 1124007936;
  memset(v23 + 4, 0, 48);
  v23[3] = 0u;
  v24 = v23 + 8;
  v25 = v26;
  v26[0] = 0;
  v26[1] = 0;
  LODWORD(v19[0]) = 1124007936;
  memset(v19 + 4, 0, 48);
  v19[3] = 0u;
  v20 = v19 + 8;
  v21 = v22;
  v22[0] = 0;
  v22[1] = 0;
  memset(v18, 0, sizeof(v18));
  sub_1002670C8(&v27, &qword_1004BD530, 0, a2, v23, v19, v18, 1.0, 0.0);
  *a1 = v27;
  *(a1 + 8) = v28;
  if (&v27 != a1)
  {
    v4 = *(a1 + 72);
    if (v4 && atomic_fetch_add((v4 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) >= 1)
    {
      v5 = 0;
      v6 = *(a1 + 80);
      do
      {
        *(v6 + 4 * v5++) = 0;
      }

      while (v5 < *(a1 + 20));
    }

    v7 = *&v29[4];
    v8 = *&v29[16];
    *(a1 + 16) = *v29;
    *(a1 + 32) = v8;
    v9 = *&v29[48];
    *(a1 + 48) = *&v29[32];
    *(a1 + 64) = v9;
    v10 = *(a1 + 88);
    if (v10 == (a1 + 96))
    {
      v11 = v31;
      if (v7 <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      j__free(v10);
      *(a1 + 80) = a1 + 24;
      *(a1 + 88) = a1 + 96;
      v10 = (a1 + 96);
      v11 = v31;
      if (*&v29[4] <= 2)
      {
LABEL_10:
        *v10 = *v11;
        v10[1] = v11[1];
LABEL_13:
        *v29 = 1124007936;
        v3 = 0.0;
        memset(&v29[4], 0, 60);
        goto LABEL_14;
      }
    }

    *(a1 + 80) = v30;
    *(a1 + 88) = v11;
    v30 = &v29[8];
    v31 = &v32;
    goto LABEL_13;
  }

LABEL_14:
  v12 = sub_10025DAEC(a1 + 112, v33, v3);
  sub_10025DAEC(a1 + 208, v34, v12);
  v13 = v34[7];
  *(a1 + 304) = v34[6];
  *(a1 + 320) = v13;
  *(a1 + 336) = v34[8];
  sub_100008E50(&v27);
  if (*(&v19[3] + 1) && atomic_fetch_add((*(&v19[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v19);
  }

  *(&v19[3] + 1) = 0;
  memset(&v19[1], 0, 32);
  if (SDWORD1(v19[0]) >= 1)
  {
    v14 = 0;
    v15 = v20;
    do
    {
      *&v15[4 * v14++] = 0;
    }

    while (v14 < SDWORD1(v19[0]));
  }

  if (v21 != v22)
  {
    j__free(v21);
  }

  if (*(&v23[3] + 1) && atomic_fetch_add((*(&v23[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v23);
  }

  *(&v23[3] + 1) = 0;
  memset(&v23[1], 0, 32);
  if (SDWORD1(v23[0]) >= 1)
  {
    v16 = 0;
    v17 = v24;
    do
    {
      *&v17[4 * v16++] = 0;
    }

    while (v16 < SDWORD1(v23[0]));
  }

  if (v25 != v26)
  {
    j__free(v25);
  }
}

void sub_10026590C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  sub_100006D14(va);
  sub_100006D14(va1);
  _Unwind_Resume(a1);
}

void sub_100265928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  sub_100008E50(va);
  sub_100006D14(&a13);
  sub_100006D14(&a25);
  _Unwind_Resume(a1);
}

void sub_10026594C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v25[0]) = 1124007936;
  memset(v25 + 4, 0, 48);
  v25[3] = 0u;
  v26 = v25 + 8;
  v27 = v28;
  v6 = (a3 + 16);
  v28[0] = 0;
  v28[1] = 0;
  if (a4 == -1 || (*(a2 + 16) & 0xFFF) == a4)
  {
    v7 = (a3 + 16);
    v8 = a3;
  }

  else
  {
    v8 = v25;
    v7 = &v25[1];
  }

  v24 = 0;
  v22 = 16842752;
  v23 = a2 + 16;
  v21 = 0;
  v19 = 16842752;
  v20 = a2 + 112;
  v18 = 0;
  v16 = 16842752;
  v17 = a2 + 208;
  v9 = *(a2 + 304);
  v10 = *(a2 + 312);
  v13 = 33619968;
  v14 = v8;
  v15 = 0;
  sub_100243EB0(&v22, &v19, &v16, &v13, *(a2 + 8), v9, v10);
  if (*v7 != *v6)
  {
    v22 = 33619968;
    v23 = a3;
    v24 = 0;
    sub_10020EF14(v8, &v22, a4, 1.0, 0.0);
  }

  if (*(&v25[3] + 1) && atomic_fetch_add((*(&v25[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v25);
  }

  *(&v25[3] + 1) = 0;
  memset(&v25[1], 0, 32);
  if (SDWORD1(v25[0]) >= 1)
  {
    v11 = 0;
    v12 = v26;
    do
    {
      *&v12[4 * v11++] = 0;
    }

    while (v11 < SDWORD1(v25[0]));
  }

  if (v27 != v28)
  {
    j__free(v27);
  }
}

void sub_100265AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100265B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100265B18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1002ACE7C(v15, &off_100474388);
  v8 = *a2;
  v9 = *a3;
  v10 = *(a2 + 304);
  v11 = 1.0;
  if (*a2 == &qword_1004BD530)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = *(a2 + 304);
  }

  v13 = *(a3 + 304);
  if (v9 != &qword_1004BD530)
  {
    v11 = *(a3 + 304);
  }

  if (v8 != &qword_1004BD550 || *(a2 + 224) && *(a2 + 312) != 0.0)
  {
    goto LABEL_9;
  }

  if (v9 == &qword_1004BD530)
  {
    goto LABEL_26;
  }

  if (v9 == &qword_1004BD538)
  {
    if (*(a3 + 128) && *(a3 + 312) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a3 + 320)), vceqzq_f64(*(a3 + 336)))))) & 1) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  if (v9 == &qword_1004BD560)
  {
LABEL_26:
    v14 = a2;
    goto LABEL_31;
  }

LABEL_9:
  if (v9 != &qword_1004BD550 || *(a3 + 224) && *(a3 + 312) != 0.0)
  {
    goto LABEL_12;
  }

  if (v8 != &qword_1004BD530)
  {
    if (v8 == &qword_1004BD538)
    {
      if (*(a2 + 128) && *(a2 + 312) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 320)), vceqzq_f64(*(a2 + 336)))))) & 1) != 0)
      {
        goto LABEL_12;
      }
    }

    else if (v8 != &qword_1004BD560)
    {
LABEL_12:
      if (v9 == a1)
      {
        sub_10025F370(a1, a2, a3, a4);
      }

      else
      {
        (*(*v9 + 104))(v9, a2, a3, a4);
      }

      goto LABEL_32;
    }
  }

  v14 = a3;
  v9 = *a2;
  a3 = a2;
  v10 = v13;
  v11 = v12;
LABEL_31:
  sub_100262808(a4, *(v14 + 8) & 0xFFFFFFFB | (4 * (v9 == &qword_1004BD560)), (v14 + 16), (v14 + 112), (a3 + 16), v10, v11);
LABEL_32:
  if (v15[2])
  {
    sub_1002ACC1C(v15);
  }
}

void sub_100265D60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1002ACE7C(v15, &off_1004743A8);
  v8 = *a2;
  v9 = *a3;
  v10 = *(a2 + 304);
  v11 = 1.0;
  if (*a2 != &qword_1004BD530)
  {
    v11 = *(a2 + 304);
  }

  v12 = *(a3 + 304);
  if (v8 != &qword_1004BD550 || *(a2 + 224) && *(a2 + 312) != 0.0)
  {
    goto LABEL_6;
  }

  if (v9 == &qword_1004BD530)
  {
    goto LABEL_23;
  }

  if (v9 == &qword_1004BD538)
  {
    if (*(a3 + 128) && *(a3 + 312) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a3 + 320)), vceqzq_f64(*(a3 + 336)))))) & 1) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  if (v9 == &qword_1004BD560)
  {
LABEL_23:
    v13 = *(a2 + 8) & 0xFFFFFFFB | (4 * (v9 == &qword_1004BD560));
    v11 = -v12;
    if (v9 == &qword_1004BD530)
    {
      v11 = -1.0;
    }

    v14 = a2;
    goto LABEL_30;
  }

LABEL_6:
  if (v9 != &qword_1004BD550 || *(a3 + 224) && *(a3 + 312) != 0.0)
  {
    goto LABEL_9;
  }

  if (v8 != &qword_1004BD530)
  {
    if (v8 == &qword_1004BD538)
    {
      if (*(a2 + 128) && *(a2 + 312) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 320)), vceqzq_f64(*(a2 + 336)))))) & 1) != 0)
      {
        goto LABEL_9;
      }
    }

    else if (v8 != &qword_1004BD560)
    {
LABEL_9:
      if (v9 == a1)
      {
        sub_10025FCF4(a1, a2, a3, a4);
      }

      else
      {
        (*(*v9 + 120))(v9, a2, a3, a4);
      }

      goto LABEL_31;
    }
  }

  v13 = *(a3 + 8) & 0xFFFFFFFB | (4 * (v8 == &qword_1004BD560));
  v10 = -v12;
  v14 = a3;
  a3 = a2;
LABEL_30:
  sub_100262808(a4, v13, (v14 + 16), (v14 + 112), (a3 + 16), v10, v11);
LABEL_31:
  if (v15[2])
  {
    sub_1002ACC1C(v15);
  }
}

void sub_100265FC0(double a1, uint64_t a2, uint64_t *a3, float64x2_t *a4)
{
  sub_1002ACE7C(v7, &off_1004743C8);
  sub_100263FF4(a4, a3);
  a4[19] = vmulq_n_f64(a4[19], a1);
  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

void sub_100266030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_100266044(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_1002ACE7C(v5, &off_1004743E8);
  sub_100263FF4(a3, a2);
  a3[2] = (*(a2 + 8) & 4 | (__rbit32(~*(a2 + 8)) >> 30)) ^ 4;
  sub_100268DD0(a3 + 4, a3 + 28);
  if (v5[2])
  {
    sub_1002ACC1C(v5);
  }
}

void sub_1002660DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v17[0]) = 1124007936;
  memset(v17 + 4, 0, 48);
  v17[3] = 0u;
  v18 = v17 + 8;
  v19 = v20;
  v6 = (a3 + 16);
  v20[0] = 0;
  v20[1] = 0;
  if (a4 == -1 || (*(a2 + 16) & 0xFFF) == a4)
  {
    v7 = (a3 + 16);
    v8 = a3;
  }

  else
  {
    v8 = v17;
    v7 = &v17[1];
  }

  v15 = a2 + 16;
  v16 = 0;
  v14 = 16842752;
  v11 = 33619968;
  v12 = v8;
  v13 = 0;
  sub_100239A14(&v14, &v11, *(a2 + 8));
  if (*v7 != *v6)
  {
    v14 = 33619968;
    v15 = a3;
    v16 = 0;
    sub_10020EF14(v8, &v14, a4, 1.0, 0.0);
  }

  if (*(&v17[3] + 1) && atomic_fetch_add((*(&v17[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v17);
  }

  *(&v17[3] + 1) = 0;
  memset(&v17[1], 0, 32);
  if (SDWORD1(v17[0]) >= 1)
  {
    v9 = 0;
    v10 = v18;
    do
    {
      *&v10[4 * v9++] = 0;
    }

    while (v9 < SDWORD1(v17[0]));
  }

  if (v19 != v20)
  {
    j__free(v19);
  }
}

void sub_10026624C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100266264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100266278(uint64_t *a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v5 = *a3;
  if (*a2 == &qword_1004BD558 && v5 == &qword_1004BD530)
  {
    sub_1002662F0(a4, *(a2 + 8), (a2 + 16), a3 + 1);
  }

  else if (v5 == a1)
  {
    sub_100262050(a1, a2, a3, a4);
  }

  else
  {
    (*(*v5 + 184))();
  }
}

void sub_1002662F0(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  LODWORD(v19[0]) = 1124007936;
  memset(v19 + 4, 0, 48);
  v19[3] = 0u;
  v20 = v19 + 8;
  v21 = v22;
  v22[0] = 0;
  v22[1] = 0;
  memset(v18, 0, sizeof(v18));
  sub_1002670C8(&v23, &qword_1004BD568, a2, a3, a4, v19, v18, 1.0, 1.0);
  *a1 = v23;
  *(a1 + 8) = v24;
  if (&v23 != a1)
  {
    v6 = *(a1 + 72);
    if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) >= 1)
    {
      v7 = 0;
      v8 = *(a1 + 80);
      do
      {
        *(v8 + 4 * v7++) = 0;
      }

      while (v7 < *(a1 + 20));
    }

    v9 = *&v25[4];
    v10 = *&v25[16];
    *(a1 + 16) = *v25;
    *(a1 + 32) = v10;
    v11 = *&v25[48];
    *(a1 + 48) = *&v25[32];
    *(a1 + 64) = v11;
    v12 = *(a1 + 88);
    if (v12 == (a1 + 96))
    {
      v13 = v27;
      if (v9 <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      j__free(v12);
      *(a1 + 80) = a1 + 24;
      *(a1 + 88) = a1 + 96;
      v12 = (a1 + 96);
      v13 = v27;
      if (*&v25[4] <= 2)
      {
LABEL_10:
        *v12 = *v13;
        v12[1] = v13[1];
LABEL_13:
        *v25 = 1124007936;
        v5 = 0.0;
        memset(&v25[4], 0, 60);
        goto LABEL_14;
      }
    }

    *(a1 + 80) = v26;
    *(a1 + 88) = v13;
    v26 = &v25[8];
    v27 = &v28;
    goto LABEL_13;
  }

LABEL_14:
  v14 = sub_10025DAEC(a1 + 112, v29, v5);
  sub_10025DAEC(a1 + 208, v30, v14);
  v15 = v30[7];
  *(a1 + 304) = v30[6];
  *(a1 + 320) = v15;
  *(a1 + 336) = v30[8];
  sub_100008E50(&v23);
  if (*(&v19[3] + 1) && atomic_fetch_add((*(&v19[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v19);
  }

  *(&v19[3] + 1) = 0;
  memset(&v19[1], 0, 32);
  if (SDWORD1(v19[0]) >= 1)
  {
    v16 = 0;
    v17 = v20;
    do
    {
      *&v17[4 * v16++] = 0;
    }

    while (v16 < SDWORD1(v19[0]));
  }

  if (v21 != v22)
  {
    j__free(v21);
  }
}

void sub_100266534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100266548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  sub_100008E50(va1);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100266564(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v20[0]) = 1124007936;
  memset(v20 + 4, 0, 48);
  v20[3] = 0u;
  v21 = v20 + 8;
  v22 = v23;
  v6 = (a3 + 16);
  v23[0] = 0;
  v23[1] = 0;
  if (a4 == -1 || (*(a2 + 16) & 0xFFF) == a4)
  {
    v7 = (a3 + 16);
    v8 = a3;
  }

  else
  {
    v8 = v20;
    v7 = &v20[1];
  }

  v19 = 0;
  v17 = 16842752;
  v18 = a2 + 16;
  v16 = 0;
  v14 = 16842752;
  v15 = a2 + 112;
  v11 = 33619968;
  v12 = v8;
  v13 = 0;
  sub_10023C0DC(&v17, &v14, &v11, *(a2 + 8));
  if (*v7 != *v6)
  {
    v17 = 33619968;
    v18 = a3;
    v19 = 0;
    sub_10020EF14(v8, &v17, a4, 1.0, 0.0);
  }

  if (*(&v20[3] + 1) && atomic_fetch_add((*(&v20[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v20);
  }

  *(&v20[3] + 1) = 0;
  memset(&v20[1], 0, 32);
  if (SDWORD1(v20[0]) >= 1)
  {
    v9 = 0;
    v10 = v21;
    do
    {
      *&v10[4 * v9++] = 0;
    }

    while (v9 < SDWORD1(v20[0]));
  }

  if (v22 != v23)
  {
    j__free(v22);
  }
}

void sub_1002666EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100266704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100266718(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 20);
  v8 = v7 & 0xFFF;
  if (a4 == -1)
  {
    LOWORD(a4) = v8;
  }

  v9 = *(a2 + 80);
  if (v6 <= 2)
  {
    v10 = *(v9 + 4);
    v11 = a4 & 0xFFF;
    v13 = *(a3 + 4) <= 2 && *(a3 + 8) == *v9 && *(a3 + 12) == v10;
    if (!v13 || ((*a3 & 0xFFF) == v11 ? (v14 = *(a3 + 16) == 0) : (v14 = 1), v14))
    {
      __src.i32[0] = *v9;
      __src.i32[1] = v10;
      sub_100268ED0(a3, 2, __src.i64, v11);
    }

    v15 = *(a2 + 8);
    if (v15 != 73 || *(a2 + 20) > 2)
    {
      goto LABEL_22;
    }

LABEL_30:
    v18 = 50397184;
    v19 = a3;
    v20 = 0;
    __src = *(a2 + 304);
    v22 = 0uLL;
    sub_100276DB0(&v18, &__src);
    return;
  }

  sub_100268ED0(a3, v6, v9, a4);
  v15 = *(a2 + 8);
  if (v15 == 73 && *(a2 + 20) <= 2)
  {
    goto LABEL_30;
  }

LABEL_22:
  if (v15 == 49)
  {
    __src = *(a2 + 304);
    v22 = 0uLL;
    sub_10022CAFC(a3, &__src);
  }

  else
  {
    if (v15 != 48)
    {
      __src = 0uLL;
      qmemcpy(sub_1002A80E0(&__src, 31), "Invalid matrix initializer type", 31);
      sub_1002A8980(-2, __src.i64, "assign", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matop.cpp", 1643);
    }

    __src = 0u;
    v22 = 0u;
    sub_10022CAFC(a3, &__src);
  }
}

void sub_1002668CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002668FC(double a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  sub_1002ACE7C(v7, &off_100474408);
  sub_100263FF4(a4, a3);
  *(a4 + 304) = *(a4 + 304) * a1;
  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

void sub_100266984(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  sub_1002ACE7C(v9, &off_100474428);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1124007936;
  *(a4 + 20) = 0u;
  *(a4 + 36) = 0u;
  *(a4 + 52) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 80) = a4 + 24;
  *(a4 + 88) = a4 + 96;
  *(a4 + 104) = 0;
  *(a4 + 112) = 1124007936;
  *(a4 + 116) = 0u;
  *(a4 + 132) = 0u;
  *(a4 + 148) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 192) = 0;
  *(a4 + 176) = a4 + 120;
  *(a4 + 184) = a4 + 192;
  *(a4 + 200) = 0;
  *(a4 + 208) = 1124007936;
  *(a4 + 256) = 0u;
  *(a4 + 244) = 0u;
  *(a4 + 228) = 0u;
  *(a4 + 212) = 0u;
  *(a4 + 272) = a4 + 216;
  *(a4 + 280) = a4 + 288;
  *(a4 + 288) = 0u;
  *(a4 + 304) = 0u;
  *(a4 + 320) = 0u;
  *(a4 + 336) = 0u;
  v8[0] = a2;
  v8[1] = a1;
  sub_100266AA4(a4, 48, v8, v4, 1.0);
  if (v9[2])
  {
    sub_1002ACC1C(v9);
  }
}

void sub_100266A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100008E50(v5);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_100266AA4(uint64_t a1, uint64_t a2, int *a3, unsigned int a4, double a5)
{
  v8 = a2;
  v10 = sub_100267300();
  v11 = *a3;
  DWORD2(v38) = a3[1];
  HIDWORD(v38) = v11;
  *&v39 = 4008636142;
  *(&v39 + 1) = 4008636142;
  v41 = 0;
  v42 = 0;
  v43 = &v38 + 8;
  v44 = v45;
  LODWORD(v38) = a4 & 0xFFF | 0x42FF4000;
  DWORD1(v38) = 2;
  v45[0] = v11 * ((((a4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a4 & 7))) & 3));
  v45[1] = (((a4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a4 & 7))) & 3);
  *&v40 = v45[0] * SDWORD2(v38) + 4008636142;
  *(&v40 + 1) = v40;
  LODWORD(v34[0]) = 1124007936;
  memset(v34 + 4, 0, 48);
  v34[3] = 0u;
  v35 = v34 + 8;
  v36 = v37;
  v37[0] = 0;
  v37[1] = 0;
  LODWORD(v30[0]) = 1124007936;
  memset(v30 + 4, 0, 48);
  v30[3] = 0u;
  v31 = v30 + 8;
  v32 = v33;
  v33[0] = 0;
  v33[1] = 0;
  memset(v29, 0, sizeof(v29));
  sub_1002670C8(&v46, v10, v8, &v38, v34, v30, v29, a5, 0.0);
  *a1 = v46;
  *(a1 + 8) = v47;
  if (&v46 != a1)
  {
    v13 = *(a1 + 72);
    if (v13 && atomic_fetch_add((v13 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) >= 1)
    {
      v14 = 0;
      v15 = *(a1 + 80);
      do
      {
        *(v15 + 4 * v14++) = 0;
      }

      while (v14 < *(a1 + 20));
    }

    v16 = *&v48[4];
    v17 = *&v48[16];
    *(a1 + 16) = *v48;
    *(a1 + 32) = v17;
    v18 = *&v48[48];
    *(a1 + 48) = *&v48[32];
    *(a1 + 64) = v18;
    v19 = *(a1 + 88);
    if (v19 == (a1 + 96))
    {
      v20 = v50;
      if (v16 <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      j__free(v19);
      *(a1 + 80) = a1 + 24;
      *(a1 + 88) = a1 + 96;
      v19 = (a1 + 96);
      v20 = v50;
      if (*&v48[4] <= 2)
      {
LABEL_10:
        *v19 = *v20;
        v19[1] = v20[1];
LABEL_13:
        *v48 = 1124007936;
        v12 = 0.0;
        memset(&v48[4], 0, 60);
        goto LABEL_14;
      }
    }

    *(a1 + 80) = v49;
    *(a1 + 88) = v20;
    v49 = &v48[8];
    v50 = &v51;
    goto LABEL_13;
  }

LABEL_14:
  v21 = sub_10025DAEC(a1 + 112, v52, v12);
  sub_10025DAEC(a1 + 208, v53, v21);
  v22 = v53[7];
  *(a1 + 304) = v53[6];
  *(a1 + 320) = v22;
  *(a1 + 336) = v53[8];
  sub_100008E50(&v46);
  if (*(&v30[3] + 1) && atomic_fetch_add((*(&v30[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v30);
  }

  *(&v30[3] + 1) = 0;
  memset(&v30[1], 0, 32);
  if (SDWORD1(v30[0]) >= 1)
  {
    v23 = 0;
    v24 = v31;
    do
    {
      *&v24[4 * v23++] = 0;
    }

    while (v23 < SDWORD1(v30[0]));
  }

  if (v32 != v33)
  {
    j__free(v32);
  }

  if (*(&v34[3] + 1) && atomic_fetch_add((*(&v34[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v34);
  }

  *(&v34[3] + 1) = 0;
  memset(&v34[1], 0, 32);
  if (SDWORD1(v34[0]) >= 1)
  {
    v25 = 0;
    v26 = v35;
    do
    {
      *&v26[4 * v25++] = 0;
    }

    while (v25 < SDWORD1(v34[0]));
  }

  if (v36 != v37)
  {
    j__free(v36);
  }

  if (v42 && atomic_fetch_add((v42 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v38);
  }

  v42 = 0;
  v39 = 0u;
  v40 = 0u;
  if (SDWORD1(v38) >= 1)
  {
    v27 = 0;
    v28 = v43;
    do
    {
      *&v28[4 * v27++] = 0;
    }

    while (v27 < SDWORD1(v38));
  }

  if (v44 != v45)
  {
    j__free(v44);
  }
}

void sub_100266E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_100006D14(&a13);
  sub_100006D14(&a25);
  sub_100006D14(&a37);
  _Unwind_Resume(a1);
}

void sub_100266EA8(uint64_t *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  sub_1002ACE7C(v7, &off_100474448);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1124007936;
  *(a3 + 20) = 0u;
  *(a3 + 36) = 0u;
  *(a3 + 52) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 96) = 0;
  *(a3 + 80) = a3 + 24;
  *(a3 + 88) = a3 + 96;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1124007936;
  *(a3 + 116) = 0u;
  *(a3 + 132) = 0u;
  *(a3 + 148) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 192) = 0;
  *(a3 + 176) = a3 + 120;
  *(a3 + 184) = a3 + 192;
  *(a3 + 200) = 0;
  *(a3 + 208) = 1124007936;
  *(a3 + 256) = 0u;
  *(a3 + 244) = 0u;
  *(a3 + 228) = 0u;
  *(a3 + 212) = 0u;
  *(a3 + 272) = a3 + 216;
  *(a3 + 280) = a3 + 288;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  v6 = *a1;
  sub_100266AA4(a3, 48, &v6, a2, 1.0);
  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

void sub_100266FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100008E50(v5);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002670C8(uint64_t a1, uint64_t a2, int a3, __int128 *a4, __int128 *a5, __int128 *a6, void *a7, double a8, double a9)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v15 = *a4;
  v16 = a4[1];
  *(a1 + 16) = *a4;
  *(a1 + 32) = v16;
  *(a1 + 48) = a4[2];
  v17 = *(a4 + 7);
  *(a1 + 64) = *(a4 + 6);
  *(a1 + 72) = v17;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if (v17)
  {
    atomic_fetch_add((v17 + 20), 1u);
    if (*(a4 + 1) <= 2)
    {
LABEL_3:
      v18 = *(a4 + 9);
      v19 = *(a1 + 88);
      *v19 = *v18;
      v19[1] = v18[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v15) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 20) = 0;
  sub_100269B58(a1 + 16, a4);
LABEL_6:
  v20 = *a5;
  *(a1 + 128) = a5[1];
  v21 = a5[2];
  v23 = *(a5 + 6);
  v22 = *(a5 + 7);
  *(a1 + 192) = 0;
  *(a1 + 144) = v21;
  *(a1 + 160) = v23;
  *(a1 + 168) = v22;
  *(a1 + 176) = a1 + 120;
  *(a1 + 184) = a1 + 192;
  *(a1 + 200) = 0;
  *(a1 + 112) = v20;
  if (v22)
  {
    atomic_fetch_add((v22 + 20), 1u);
    if (*(a5 + 1) <= 2)
    {
LABEL_8:
      v24 = *(a5 + 9);
      v25 = *(a1 + 184);
      *v25 = *v24;
      v25[1] = v24[1];
      goto LABEL_11;
    }
  }

  else if (SDWORD1(v20) <= 2)
  {
    goto LABEL_8;
  }

  *(a1 + 116) = 0;
  sub_100269B58(a1 + 112, a5);
LABEL_11:
  v26 = *a6;
  v27 = a6[1];
  *(a1 + 208) = *a6;
  *(a1 + 224) = v27;
  *(a1 + 240) = a6[2];
  v28 = *(a6 + 7);
  *(a1 + 256) = *(a6 + 6);
  *(a1 + 264) = v28;
  *(a1 + 272) = a1 + 216;
  *(a1 + 280) = a1 + 288;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  if (!v28)
  {
    if (SDWORD1(v26) <= 2)
    {
      goto LABEL_13;
    }

LABEL_15:
    *(a1 + 212) = 0;
    sub_100269B58(a1 + 208, a6);
    goto LABEL_16;
  }

  atomic_fetch_add((v28 + 20), 1u);
  if (*(a6 + 1) > 2)
  {
    goto LABEL_15;
  }

LABEL_13:
  v29 = *(a6 + 9);
  v30 = *(a1 + 280);
  *v30 = *v29;
  v30[1] = v29[1];
LABEL_16:
  *(a1 + 304) = a8;
  *(a1 + 312) = a9;
  *(a1 + 320) = *a7;
  *(a1 + 328) = a7[1];
  *(a1 + 336) = a7[2];
  *(a1 + 344) = a7[3];
  return a1;
}

void sub_1002672D0(_Unwind_Exception *a1)
{
  sub_100006D14(v2);
  sub_100006D14(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100267300()
{
  if (!qword_1004BD528)
  {
    v0 = sub_1002A814C();
    sub_1002A93EC(v0);
    if (!qword_1004BD528)
    {
      operator new();
    }

    sub_1002A93F4(v0);
  }

  return qword_1004BD528;
}

uint64_t sub_10026739C()
{
  qword_1004BD530 = off_100474478;
  __cxa_atexit(nullsub_5, &qword_1004BD530, &_mh_execute_header);
  qword_1004BD538 = off_100474588;
  __cxa_atexit(nullsub_6, &qword_1004BD538, &_mh_execute_header);
  qword_1004BD540 = off_100474688;
  __cxa_atexit(nullsub_7, &qword_1004BD540, &_mh_execute_header);
  qword_1004BD548 = off_100474788;
  __cxa_atexit(nullsub_8, &qword_1004BD548, &_mh_execute_header);
  qword_1004BD550 = off_100474888;
  __cxa_atexit(nullsub_9, &qword_1004BD550, &_mh_execute_header);
  qword_1004BD558 = off_100474988;
  __cxa_atexit(nullsub_10, &qword_1004BD558, &_mh_execute_header);
  qword_1004BD560 = off_100474A88;
  __cxa_atexit(nullsub_11, &qword_1004BD560, &_mh_execute_header);
  qword_1004BD568 = off_100474B88;

  return __cxa_atexit(nullsub_12, &qword_1004BD568, &_mh_execute_header);
}

uint64_t sub_100267598(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 16) && !*(a2 + 20))
  {
    return (*(*result + 32))();
  }

  return result;
}

void sub_1002675D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return;
  }

  v8 = *(a2 + 24);
  if (a4 < 1)
  {
LABEL_13:
    memset(&v68[20], 0, 44);
    *&v68[4] = 0u;
    v69 = &v68[8];
    v70 = v71;
    v71[0] = 0;
    v71[1] = 0;
    *v68 = 1124007936;
    *&v68[16] = v8;
    *&v68[24] = v8;
    sub_100269568(v68, a4, v75, a7, 1);
    v12 = v69;
    if (*&v68[4] < 1)
    {
      v14 = 0;
    }

    else
    {
      v13 = 0;
      while (v69[v13] <= 1)
      {
        if (*&v68[4] == ++v13)
        {
          LODWORD(v13) = *&v68[4];
          break;
        }
      }

      v14 = v13;
    }

    v15 = v70;
    v16 = *&v68[4] - 1;
    v17 = v70 + 8 * *&v68[4] - 8;
    while (v16 > v14)
    {
      v18 = *v17 * v69[v16];
      v19 = *--v17;
      --v16;
      if (v18 < v19)
      {
        *v68 &= ~0x4000u;
        if (*&v68[4] < 3)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    *v68 = *v68 & 0xFFFFBFFF | 0x4000;
    if (*&v68[4] < 3)
    {
      goto LABEL_27;
    }

LABEL_26:
    *&v68[8] = -1;
LABEL_27:
    if (*&v68[56])
    {
      v20 = *(*&v68[56] + 24);
      *&v68[16] = v20;
      *&v68[24] = v20;
      if (v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *&v68[16];
      if (*&v68[16])
      {
LABEL_29:
        v21 = *v69;
        v22 = *&v68[24] + *v70 * v21;
        *&v68[40] = v22;
        if (v21 < 1)
        {
          *&v68[32] = v22;
        }

        else
        {
          v23 = (*&v68[4] - 1);
          v24 = v20 + *(v70 + v23) * v69[v23];
          *&v68[32] = v24;
          if (*&v68[4] >= 2)
          {
            do
            {
              v25 = *v12++;
              v26 = v25 - 1;
              v27 = *v15++;
              v24 += v27 * v26;
              --v23;
            }

            while (v23);
            *&v68[32] = v24;
          }
        }

LABEL_36:
        memset(&v64[28], 0, 32);
        *v64 = 0u;
        v65 = &v64[4];
        v66 = v67;
        v67[0] = 0;
        v67[1] = 0;
        v63 = 1124007936;
        *&v64[12] = a3;
        *&v64[20] = a3;
        sub_100269568(&v63, a4, v75, a8, 1);
        v28 = v65;
        if (*v64 < 1)
        {
          v30 = 0;
        }

        else
        {
          v29 = 0;
          while (v65[v29] <= 1)
          {
            if (*v64 == ++v29)
            {
              LODWORD(v29) = *v64;
              break;
            }
          }

          v30 = v29;
        }

        v31 = v66;
        v32 = *v64 - 1;
        v33 = v66 + 8 * *v64 - 8;
        while (v32 > v30)
        {
          v34 = *v33 * v65[v32];
          v35 = *--v33;
          --v32;
          if (v34 < v35)
          {
            v63 &= ~0x4000u;
            if (*v64 < 3)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          }
        }

        v63 = v63 & 0xFFFFBFFF | 0x4000;
        if (*v64 < 3)
        {
          goto LABEL_50;
        }

LABEL_49:
        *&v64[4] = -1;
LABEL_50:
        if (*&v64[52])
        {
          v36 = *(*&v64[52] + 24);
          *&v64[12] = v36;
          *&v64[20] = v36;
          if (v36)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v36 = *&v64[12];
          if (*&v64[12])
          {
LABEL_52:
            v37 = *v65;
            v38 = *&v64[20] + *v66 * v37;
            *&v64[36] = v38;
            if (v37 < 1)
            {
              *&v64[28] = v38;
            }

            else
            {
              v39 = (*v64 - 1);
              v40 = v36 + *(v66 + v39) * v65[v39];
              *&v64[28] = v40;
              if (*v64 >= 2)
              {
                do
                {
                  v41 = *v28++;
                  v42 = v41 - 1;
                  v43 = *v31++;
                  v40 += v43 * v42;
                  --v39;
                }

                while (v39);
                *&v64[28] = v40;
              }
            }

            goto LABEL_59;
          }
        }

        *&v64[28] = 0;
        *&v64[36] = 0;
LABEL_59:
        v74[0] = v68;
        v74[1] = &v63;
        v72 = 0;
        v73 = 0;
        v62 = 0;
        memset(v57, 0, sizeof(v57));
        v58 = 0;
        v59 = 0;
        __n = 0;
        v61 = 0;
        sub_10027762C(v57, v74, 0, &v72, 2);
        if (v59)
        {
          v44 = 0;
          v45 = __n;
          do
          {
            memcpy(v73, v72, v45);
            ++v44;
            sub_100267D14(v57);
          }

          while (v44 < v59);
        }

        if (*&v64[52])
        {
          if (atomic_fetch_add((*&v64[52] + 20), 0xFFFFFFFF) == 1)
          {
            v46 = *&v64[52];
            if (*&v64[52])
            {
              *&v64[52] = 0;
              v47 = *(v46 + 8);
              if (!v47)
              {
                v47 = *&v64[44];
                if (!*&v64[44])
                {
                  v47 = sub_100268CC8();
                }
              }

              (*(*v47 + 48))(v47, v46);
            }
          }
        }

        *&v64[52] = 0;
        memset(&v64[12], 0, 32);
        if (*v64 >= 1)
        {
          v48 = 0;
          v49 = v65;
          do
          {
            v49[v48++] = 0;
          }

          while (v48 < *v64);
        }

        if (v66 != v67)
        {
          j__free(v66);
        }

        if (*&v68[56])
        {
          if (atomic_fetch_add((*&v68[56] + 20), 0xFFFFFFFF) == 1)
          {
            v50 = *&v68[56];
            if (*&v68[56])
            {
              *&v68[56] = 0;
              v51 = *(v50 + 8);
              if (!v51)
              {
                v51 = *&v68[48];
                if (!*&v68[48])
                {
                  v51 = sub_100268CC8();
                }
              }

              (*(*v51 + 48))(v51, v50);
            }
          }
        }

        *&v68[56] = 0;
        memset(&v68[16], 0, 32);
        if (*&v68[4] >= 1)
        {
          v52 = 0;
          v53 = v69;
          do
          {
            v53[v52++] = 0;
          }

          while (v52 < *&v68[4]);
        }

        if (v70 != v71)
        {
          j__free(v70);
        }

        return;
      }
    }

    *&v68[32] = 0;
    *&v68[40] = 0;
    goto LABEL_36;
  }

  v9 = 0;
  while (1)
  {
    v11 = *(a5 + 8 * v9);
    if (v11 >> 31)
    {
      *v68 = 0;
      *&v68[8] = 0;
      qmemcpy(sub_1002A80E0(v68, 27), "sz[i] <= (size_t)2147483647", 27);
      sub_1002A8980(-215, v68, "download", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 77);
    }

    if (!v11)
    {
      break;
    }

    if (a6)
    {
      if (v9 <= a4 - 2)
      {
        v10 = *(a7 + 8 * v9);
      }

      else
      {
        v10 = 1;
      }

      v8 += v10 * *(a6 + 8 * v9);
    }

    v75[v9++] = v11;
    if (a4 == v9)
    {
      goto LABEL_13;
    }
  }
}

void sub_100267BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100267C58(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 20) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 64) = a1 + 8;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  *a1 = a4 & 0xFFF | 0x42FF0000;
  *(a1 + 16) = a5;
  *(a1 + 24) = a5;
  sub_100269568(a1, a2, a3, a6, 1);
  sub_100269A18(a1);
  return a1;
}

uint64_t sub_100267CC8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  *(a1 + 56) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_10027762C(a1, a2, 0, a3, a4);
  return a1;
}

uint64_t *sub_100267D14(uint64_t *result)
{
  v1 = result[7];
  if (v1 < result[4] - 1)
  {
    v2 = v1 + 1;
    result[7] = v2;
    v3 = *(result + 12);
    if (v3 == 1)
    {
      v4 = result[2];
      if (v4)
      {
        v5 = *(result + 6);
        if (v5 >= 1)
        {
          v6 = 0;
          v7 = 8 * v5;
          do
          {
            if (*(v4 + v6))
            {
              *(v4 + v6) = *(*(*result + v6) + 16) + **(*(*result + v6) + 72) * v2;
            }

            v6 += 8;
          }

          while (v7 != v6);
        }
      }

      v26 = result[1];
      if (v26)
      {
        v27 = *(result + 6);
        if (v27 >= 1)
        {
          v28 = 0;
          v29 = (v26 + 16);
          v30 = 8 * v27;
          do
          {
            if (*v29)
            {
              *v29 = *(*(*result + v28) + 16) + **(*(*result + v28) + 72) * v2;
            }

            v28 += 8;
            v29 += 12;
          }

          while (v30 != v28);
        }
      }
    }

    else
    {
      v8 = *(result + 6);
      if (v8 >= 1)
      {
        v9 = *result;
        if (v2 <= 0 || v3 <= 0)
        {
          v31 = 0;
          v32 = 8 * v8;
          v33 = 16;
          do
          {
            v34 = *(*(v9 + v31) + 16);
            if (v34)
            {
              v35 = result[2];
              if (v35)
              {
                *(v35 + v31) = v34;
              }

              v36 = result[1];
              if (v36)
              {
                *(v36 + v33) = v34;
              }
            }

            v31 += 8;
            v33 += 96;
          }

          while (v32 != v31);
        }

        else
        {
          for (i = 0; i != v8; ++i)
          {
            v12 = *(v9 + 8 * i);
            v13 = v12[2];
            if (v13)
            {
              v14 = v12[9];
              v15 = (v12[8] + 4 * (v3 - 1));
              v16 = (v14 + 8 * (v3 - 1));
              v17 = v3;
              v18 = v2;
              do
              {
                v19 = *v15--;
                v20 = v18 / v19;
                v21 = v18 % v19;
                v22 = *v16--;
                v13 += v22 * v21;
                v23 = __OFSUB__(v17--, 1);
                if ((v17 < 0) ^ v23 | (v17 == 0))
                {
                  break;
                }

                v18 = v20;
              }

              while (v20 >= 1);
              v24 = result[2];
              if (v24)
              {
                *(v24 + 8 * i) = v13;
              }

              v25 = result[1];
              if (v25)
              {
                *(v25 + 96 * i + 16) = v13;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_100267EE0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return;
  }

  v8 = *(a2 + 24);
  if (a4 < 1)
  {
LABEL_13:
    memset(&v67[20], 0, 44);
    *&v67[4] = 0u;
    v68 = &v67[8];
    v69 = v70;
    v70[0] = 0;
    v70[1] = 0;
    *v67 = 1124007936;
    *&v67[16] = a3;
    *&v67[24] = a3;
    sub_100269568(v67, a4, v74, a8, 1);
    v12 = v68;
    if (*&v67[4] < 1)
    {
      v14 = 0;
    }

    else
    {
      v13 = 0;
      while (v68[v13] <= 1)
      {
        if (*&v67[4] == ++v13)
        {
          LODWORD(v13) = *&v67[4];
          break;
        }
      }

      v14 = v13;
    }

    v15 = v69;
    v16 = *&v67[4] - 1;
    v17 = v69 + 8 * *&v67[4] - 8;
    while (v16 > v14)
    {
      v18 = *v17 * v68[v16];
      v19 = *--v17;
      --v16;
      if (v18 < v19)
      {
        *v67 &= ~0x4000u;
        if (*&v67[4] < 3)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    *v67 = *v67 & 0xFFFFBFFF | 0x4000;
    if (*&v67[4] < 3)
    {
      goto LABEL_27;
    }

LABEL_26:
    *&v67[8] = -1;
LABEL_27:
    if (*&v67[56])
    {
      v20 = *(*&v67[56] + 24);
      *&v67[16] = v20;
      *&v67[24] = v20;
      if (v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *&v67[16];
      if (*&v67[16])
      {
LABEL_29:
        v21 = *v68;
        v22 = *&v67[24] + *v69 * v21;
        *&v67[40] = v22;
        if (v21 < 1)
        {
          *&v67[32] = v22;
        }

        else
        {
          v23 = (*&v67[4] - 1);
          v24 = v20 + *(v69 + v23) * v68[v23];
          *&v67[32] = v24;
          if (*&v67[4] >= 2)
          {
            do
            {
              v25 = *v12++;
              v26 = v25 - 1;
              v27 = *v15++;
              v24 += v27 * v26;
              --v23;
            }

            while (v23);
            *&v67[32] = v24;
          }
        }

LABEL_36:
        memset(&v63[28], 0, 32);
        *v63 = 0u;
        v64 = &v63[4];
        v65 = v66;
        v66[0] = 0;
        v66[1] = 0;
        v62 = 1124007936;
        *&v63[12] = v8;
        *&v63[20] = v8;
        sub_100269568(&v62, a4, v74, a7, 1);
        v28 = v64;
        if (*v63 < 1)
        {
          v30 = 0;
        }

        else
        {
          v29 = 0;
          while (v64[v29] <= 1)
          {
            if (*v63 == ++v29)
            {
              LODWORD(v29) = *v63;
              break;
            }
          }

          v30 = v29;
        }

        v31 = v65;
        v32 = *v63 - 1;
        v33 = v65 + 8 * *v63 - 8;
        while (v32 > v30)
        {
          v34 = *v33 * v64[v32];
          v35 = *--v33;
          --v32;
          if (v34 < v35)
          {
            v62 &= ~0x4000u;
            if (*v63 < 3)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          }
        }

        v62 = v62 & 0xFFFFBFFF | 0x4000;
        if (*v63 < 3)
        {
          goto LABEL_50;
        }

LABEL_49:
        *&v63[4] = -1;
LABEL_50:
        if (*&v63[52])
        {
          v36 = *(*&v63[52] + 24);
          *&v63[12] = v36;
          *&v63[20] = v36;
          if (v36)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v36 = *&v63[12];
          if (*&v63[12])
          {
LABEL_52:
            v37 = *v64;
            v38 = *&v63[20] + *v65 * v37;
            *&v63[36] = v38;
            if (v37 < 1)
            {
              *&v63[28] = v38;
            }

            else
            {
              v39 = (*v63 - 1);
              v40 = v36 + *(v65 + v39) * v64[v39];
              *&v63[28] = v40;
              if (*v63 >= 2)
              {
                do
                {
                  v41 = *v28++;
                  v42 = v41 - 1;
                  v43 = *v31++;
                  v40 += v43 * v42;
                  --v39;
                }

                while (v39);
                *&v63[28] = v40;
              }
            }

            goto LABEL_59;
          }
        }

        *&v63[28] = 0;
        *&v63[36] = 0;
LABEL_59:
        v73[0] = v67;
        v73[1] = &v62;
        v71 = 0;
        v72 = 0;
        v61 = 0;
        memset(v56, 0, sizeof(v56));
        v57 = 0;
        v58 = 0;
        __n = 0;
        v60 = 0;
        sub_10027762C(v56, v73, 0, &v71, 2);
        if (v58)
        {
          v44 = 0;
          v45 = __n;
          do
          {
            memcpy(v72, v71, v45);
            ++v44;
            sub_100267D14(v56);
          }

          while (v44 < v58);
        }

        if (*&v63[52])
        {
          if (atomic_fetch_add((*&v63[52] + 20), 0xFFFFFFFF) == 1)
          {
            v46 = *&v63[52];
            if (*&v63[52])
            {
              *&v63[52] = 0;
              v47 = *(v46 + 8);
              if (!v47)
              {
                v47 = *&v63[44];
                if (!*&v63[44])
                {
                  v47 = sub_100268CC8();
                }
              }

              (*(*v47 + 48))(v47, v46);
            }
          }
        }

        *&v63[52] = 0;
        memset(&v63[12], 0, 32);
        if (*v63 >= 1)
        {
          v48 = 0;
          v49 = v64;
          do
          {
            v49[v48++] = 0;
          }

          while (v48 < *v63);
        }

        if (v65 != v66)
        {
          j__free(v65);
        }

        if (*&v67[56])
        {
          if (atomic_fetch_add((*&v67[56] + 20), 0xFFFFFFFF) == 1)
          {
            v50 = *&v67[56];
            if (*&v67[56])
            {
              *&v67[56] = 0;
              v51 = *(v50 + 8);
              if (!v51)
              {
                v51 = *&v67[48];
                if (!*&v67[48])
                {
                  v51 = sub_100268CC8();
                }
              }

              (*(*v51 + 48))(v51, v50);
            }
          }
        }

        *&v67[56] = 0;
        memset(&v67[16], 0, 32);
        if (*&v67[4] >= 1)
        {
          v52 = 0;
          v53 = v68;
          do
          {
            v53[v52++] = 0;
          }

          while (v52 < *&v67[4]);
        }

        if (v69 != v70)
        {
          j__free(v69);
        }

        return;
      }
    }

    *&v67[32] = 0;
    *&v67[40] = 0;
    goto LABEL_36;
  }

  v9 = 0;
  while (1)
  {
    v11 = *(a5 + 8 * v9);
    if (v11 >> 31)
    {
      *v67 = 0;
      *&v67[8] = 0;
      qmemcpy(sub_1002A80E0(v67, 27), "sz[i] <= (size_t)2147483647", 27);
      sub_1002A8980(-215, v67, "upload", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 108);
    }

    if (!v11)
    {
      break;
    }

    if (a6)
    {
      if (v9 <= a4 - 2)
      {
        v10 = *(a7 + 8 * v9);
      }

      else
      {
        v10 = 1;
      }

      v8 += v10 * *(a6 + 8 * v9);
    }

    v74[v9++] = v11;
    if (a4 == v9)
    {
      goto LABEL_13;
    }
  }
}

void sub_100268508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100268570(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002ACE7C(v83, &off_100474D78);
  if (!a2 || !a3)
  {
    goto LABEL_92;
  }

  v15 = *(a2 + 24);
  v16 = *(a3 + 24);
  v66 = a4;
  if (a4 < 1)
  {
LABEL_19:
    memset(&v79[20], 0, 44);
    *&v79[4] = 0u;
    v80 = &v79[8];
    v81 = v82;
    v82[0] = 0;
    v82[1] = 0;
    *v79 = 1124007936;
    *&v79[16] = v15;
    *&v79[24] = v15;
    sub_100269568(v79, v66, v87, a7, 1);
    v24 = v80;
    if (*&v79[4] < 1)
    {
      v26 = 0;
    }

    else
    {
      v25 = 0;
      while (v80[v25] <= 1)
      {
        if (*&v79[4] == ++v25)
        {
          LODWORD(v25) = *&v79[4];
          break;
        }
      }

      v26 = v25;
    }

    v27 = v81;
    v28 = *&v79[4] - 1;
    v29 = v81 + 8 * *&v79[4] - 8;
    while (v28 > v26)
    {
      v30 = *v29 * v80[v28];
      v31 = *--v29;
      --v28;
      if (v30 < v31)
      {
        *v79 &= ~0x4000u;
        if (*&v79[4] < 3)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    *v79 = *v79 & 0xFFFFBFFF | 0x4000;
    if (*&v79[4] < 3)
    {
      goto LABEL_33;
    }

LABEL_32:
    *&v79[8] = -1;
LABEL_33:
    if (*&v79[56])
    {
      v32 = *(*&v79[56] + 24);
      *&v79[16] = v32;
      *&v79[24] = v32;
      if (v32)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v32 = *&v79[16];
      if (*&v79[16])
      {
LABEL_35:
        v33 = *v80;
        v34 = *&v79[24] + *v81 * v33;
        *&v79[40] = v34;
        if (v33 < 1)
        {
          *&v79[32] = v34;
        }

        else
        {
          v35 = (*&v79[4] - 1);
          v36 = v32 + *(v81 + v35) * v80[v35];
          *&v79[32] = v36;
          if (*&v79[4] >= 2)
          {
            do
            {
              v37 = *v24++;
              v38 = v37 - 1;
              v39 = *v27++;
              v36 += v39 * v38;
              --v35;
            }

            while (v35);
            *&v79[32] = v36;
          }
        }

LABEL_42:
        memset(&v75[28], 0, 32);
        *v75 = 0u;
        v76 = &v75[4];
        v77 = v78;
        v78[0] = 0;
        v78[1] = 0;
        v74 = 1124007936;
        *&v75[12] = v16;
        *&v75[20] = v16;
        sub_100269568(&v74, v66, v87, a9, 1);
        v40 = v76;
        if (*v75 < 1)
        {
          v42 = 0;
        }

        else
        {
          v41 = 0;
          while (v76[v41] <= 1)
          {
            if (*v75 == ++v41)
            {
              LODWORD(v41) = *v75;
              break;
            }
          }

          v42 = v41;
        }

        v43 = v77;
        v44 = *v75 - 1;
        v45 = v77 + 8 * *v75 - 8;
        while (v44 > v42)
        {
          v46 = *v45 * v76[v44];
          v47 = *--v45;
          --v44;
          if (v46 < v47)
          {
            v74 &= ~0x4000u;
            if (*v75 < 3)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          }
        }

        v74 = v74 & 0xFFFFBFFF | 0x4000;
        if (*v75 < 3)
        {
          goto LABEL_56;
        }

LABEL_55:
        *&v75[4] = -1;
LABEL_56:
        if (*&v75[52])
        {
          v48 = *(*&v75[52] + 24);
          *&v75[12] = v48;
          *&v75[20] = v48;
          if (v48)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v48 = *&v75[12];
          if (*&v75[12])
          {
LABEL_58:
            v49 = *v76;
            v50 = *&v75[20] + *v77 * v49;
            *&v75[36] = v50;
            if (v49 < 1)
            {
              *&v75[28] = v50;
            }

            else
            {
              v51 = (*v75 - 1);
              v52 = v48 + *(v77 + v51) * v76[v51];
              *&v75[28] = v52;
              if (*v75 >= 2)
              {
                do
                {
                  v53 = *v40++;
                  v54 = v53 - 1;
                  v55 = *v43++;
                  v52 += v55 * v54;
                  --v51;
                }

                while (v51);
                *&v75[28] = v52;
              }
            }

            goto LABEL_65;
          }
        }

        *&v75[28] = 0;
        *&v75[36] = 0;
LABEL_65:
        v86[0] = v79;
        v86[1] = &v74;
        v84 = 0;
        v85 = 0;
        v73 = 0;
        memset(v68, 0, sizeof(v68));
        v69 = 0;
        v70 = 0;
        __n = 0;
        v72 = 0;
        sub_10027762C(v68, v86, 0, &v84, 2);
        if (v70)
        {
          v56 = 0;
          v57 = __n;
          do
          {
            memcpy(v85, v84, v57);
            ++v56;
            sub_100267D14(v68);
          }

          while (v56 < v70);
        }

        if (*&v75[52])
        {
          if (atomic_fetch_add((*&v75[52] + 20), 0xFFFFFFFF) == 1)
          {
            v58 = *&v75[52];
            if (*&v75[52])
            {
              *&v75[52] = 0;
              v59 = *(v58 + 8);
              if (!v59)
              {
                v59 = *&v75[44];
                if (!*&v75[44])
                {
                  v59 = sub_100268CC8();
                }
              }

              (*(*v59 + 48))(v59, v58);
            }
          }
        }

        *&v75[52] = 0;
        memset(&v75[12], 0, 32);
        if (*v75 >= 1)
        {
          v60 = 0;
          v61 = v76;
          do
          {
            v61[v60++] = 0;
          }

          while (v60 < *v75);
        }

        if (v77 != v78)
        {
          j__free(v77);
        }

        if (*&v79[56])
        {
          if (atomic_fetch_add((*&v79[56] + 20), 0xFFFFFFFF) == 1)
          {
            v62 = *&v79[56];
            if (*&v79[56])
            {
              *&v79[56] = 0;
              v63 = *(v62 + 8);
              if (!v63)
              {
                v63 = *&v79[48];
                if (!*&v79[48])
                {
                  v63 = sub_100268CC8();
                }
              }

              (*(*v63 + 48))(v63, v62);
            }
          }
        }

        *&v79[56] = 0;
        memset(&v79[16], 0, 32);
        if (*&v79[4] >= 1)
        {
          v64 = 0;
          v65 = v80;
          do
          {
            v65[v64++] = 0;
          }

          while (v64 < *&v79[4]);
        }

        if (v81 != v82)
        {
          j__free(v81);
        }

        goto LABEL_92;
      }
    }

    *&v79[32] = 0;
    *&v79[40] = 0;
    goto LABEL_42;
  }

  v17 = 0;
  v18 = a4;
  v19 = a4 - 2;
  v20 = v18;
  while (1)
  {
    v22 = *(a5 + 8 * v17);
    if (v22 >> 31)
    {
      *v79 = 0;
      *&v79[8] = 0;
      qmemcpy(sub_1002A80E0(v79, 27), "sz[i] <= (size_t)2147483647", 27);
      sub_1002A8980(-215, v79, "copy", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 141);
    }

    if (!v22)
    {
      break;
    }

    if (a6)
    {
      if (v17 <= v19)
      {
        v23 = *(a7 + 8 * v17);
      }

      else
      {
        v23 = 1;
      }

      v15 += v23 * *(a6 + 8 * v17);
    }

    if (a8)
    {
      if (v17 <= v19)
      {
        v21 = *(a9 + 8 * v17);
      }

      else
      {
        v21 = 1;
      }

      v16 += v21 * *(a8 + 8 * v17);
    }

    v87[v17++] = v22;
    if (v20 == v17)
    {
      goto LABEL_19;
    }
  }

LABEL_92:
  if (v83[2])
  {
    sub_1002ACC1C(v83);
  }
}

void sub_100268BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100008E3C(exception_object);
}

uint64_t *sub_100268C84(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_1004BD5C8, memory_order_acquire) & 1) == 0)
  {
    sub_1003C8524();
  }

  return &qword_1004BD5C0;
}

uint64_t sub_100268CC8()
{
  if (!qword_1004BD578)
  {
    v0 = sub_1002A814C();
    sub_1002A93EC(v0);
    if (!qword_1004BD578)
    {
      qword_1004BD578 = sub_100268D34();
    }

    sub_1002A93F4(v0);
  }

  return qword_1004BD578;
}

uint64_t sub_100268D34()
{
  if (!qword_1004BD580)
  {
    v0 = sub_1002A814C();
    sub_1002A93EC(v0);
    if (!qword_1004BD580)
    {
      operator new();
    }

    sub_1002A93F4(v0);
  }

  return qword_1004BD580;
}

int *sub_100268DD0(int *result, int *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  result[2] = a2[2];
  a2[2] = v4;
  v5 = result[3];
  result[3] = a2[3];
  a2[3] = v5;
  v6 = *(result + 2);
  *(result + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(result + 3);
  *(result + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(result + 4);
  *(result + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(result + 10);
  *(result + 10) = *(a2 + 10);
  *(a2 + 10) = v9;
  v10 = *(result + 14);
  *(result + 14) = *(a2 + 14);
  *(a2 + 14) = v10;
  v11 = *(result + 9);
  *(result + 9) = *(a2 + 9);
  v12 = result + 20;
  v13 = *(result + 10);
  *(a2 + 9) = v11;
  *(result + 10) = *(a2 + 10);
  *(a2 + 10) = v13;
  v14 = *(result + 11);
  *(result + 11) = *(a2 + 11);
  *(a2 + 11) = v14;
  if (*(result + 9) != a2 + 20)
  {
    if (v11 != v12)
    {
      return result;
    }

LABEL_5:
    *(a2 + 8) = a2 + 2;
    *(a2 + 9) = a2 + 20;
    return result;
  }

  *(result + 8) = result + 2;
  *(result + 9) = v12;
  if (*(a2 + 9) == v12)
  {
    goto LABEL_5;
  }

  return result;
}

char *sub_100268ED0(char *result, uint64_t a2, uint64_t *__src, __int16 a4)
{
  v4 = __src;
  v5 = a2;
  v6 = result;
  if (a2 > 0x20 || !__src)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    qmemcpy(sub_1002A80E0(__dst, 27), "0 <= d && d <= 32 && _sizes", 27);
    sub_1002A8980(-215, __dst, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 390);
  }

  v7 = a4 & 0xFFF;
  if (!*(result + 2))
  {
    goto LABEL_25;
  }

  v8 = *(result + 1);
  if (v8 == a2)
  {
    if (v7 != (*result & 0xFFF))
    {
      goto LABEL_25;
    }

    if (a2 == 2)
    {
      if (*(result + 2) == *__src && *(result + 3) == *(__src + 1))
      {
        return result;
      }
    }

    else if (a2 < 1)
    {
      LODWORD(v10) = 0;
      goto LABEL_22;
    }
  }

  else
  {
    if (a2 != 1 || v8 >= 3)
    {
      goto LABEL_25;
    }

    if (v7 != (*result & 0xFFF))
    {
      v9 = result + 64;
      if (*(result + 8) != __src)
      {
        goto LABEL_26;
      }

LABEL_29:
      result = memcpy(__dst, __src, 4 * a2);
      goto LABEL_30;
    }
  }

  v10 = 0;
  while (*(*(result + 8) + 4 * v10) == *(__src + v10))
  {
    if (a2 == ++v10)
    {
      goto LABEL_23;
    }
  }

LABEL_22:
  if (v10 == a2)
  {
LABEL_23:
    if (a2 > 1 || *(*(result + 8) + 4) == 1)
    {
      return result;
    }
  }

LABEL_25:
  v9 = result + 64;
  if (*(result + 8) != __src)
  {
LABEL_26:
    v11 = *(result + 7);
    if (!v11)
    {
      goto LABEL_37;
    }

LABEL_31:
    if (atomic_fetch_add((v11 + 20), 0xFFFFFFFF) == 1)
    {
      v12 = *(v6 + 7);
      if (v12)
      {
        *(v6 + 7) = 0;
        v13 = *(v12 + 8);
        if (!v13)
        {
          v13 = *(v6 + 6);
          if (!v13)
          {
            v13 = sub_100268CC8();
          }
        }

        result = (*(*v13 + 48))(v13, v12);
      }
    }

    goto LABEL_37;
  }

  if (a2 >= 1)
  {
    goto LABEL_29;
  }

LABEL_30:
  v4 = __dst;
  v11 = *(v6 + 7);
  if (v11)
  {
    goto LABEL_31;
  }

LABEL_37:
  *(v6 + 7) = 0;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  if (*(v6 + 1) >= 1)
  {
    v14 = 0;
    v15 = *v9;
    do
    {
      *(v15 + 4 * v14++) = 0;
    }

    while (v14 < *(v6 + 1));
  }

  if (v5)
  {
    *v6 = v7 | 0x42FF0000;
    sub_100269568(v6, v5, v4, 0, 1);
    v16 = *(v6 + 1);
    if (v16 >= 3)
    {
      v18 = (*v9 + 4);
      v19 = 1;
      v20 = v16 & 0x7FFFFFFE;
      v21 = 1;
      do
      {
        v19 *= *(v18 - 1);
        v21 *= *v18;
        v18 += 2;
        v20 -= 2;
      }

      while (v20);
      v17 = v21 * v19;
      v22 = v16 - (v16 & 0x7FFFFFFE);
      if (v22)
      {
        v23 = (*v9 + 8 * ((v16 >> 1) & 0x3FFFFFFF));
        do
        {
          v24 = *v23++;
          v17 *= v24;
          --v22;
        }

        while (v22);
      }
    }

    else
    {
      v17 = *(v6 + 3) * *(v6 + 2);
    }

    if (v17)
    {
      v25 = *(v6 + 6);
      v26 = sub_100268CC8();
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = v26;
      }

      v28 = (*(*v27 + 16))(v27, *(v6 + 1), *(v6 + 8), v7, 0, *(v6 + 9), 0, 0);
      *(v6 + 7) = v28;
      if (!v28)
      {
        v31 = 0;
        v32 = 0;
        v29 = sub_1002A80E0(&v31, 6);
        *(v29 + 4) = 12320;
        *v29 = 1025581173;
        sub_1002A8980(-215, &v31, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 430);
      }

      if (*(*(v6 + 9) + 8 * *(v6 + 1) - 8) != (((*v6 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*v6 & 7))) & 3))
      {
        v31 = 0;
        v32 = 0;
        qmemcpy(sub_1002A80E0(&v31, 146), "step[dims-1] == (size_t)(((((flags) & ((512 - 1) << 3)) >> 3) + 1) << ((((sizeof(size_t)/4+1)*16384|0x3a50) >> ((flags) & ((1 << 3) - 1))*2) & 3))", 146);
        sub_1002A8980(-215, &v31, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 438);
      }
    }

    v30 = *(v6 + 7);
    if (v30)
    {
      atomic_fetch_add((v30 + 20), 1u);
    }

    return sub_100269A18(v6);
  }

  return result;
}