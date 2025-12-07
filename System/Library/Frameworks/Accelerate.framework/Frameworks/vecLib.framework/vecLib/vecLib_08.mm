uint64_t sub_236717D40(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 24);
  v3 = v2[1];
  v4 = (*v2 - 1) / 384 + 1;
  if ((*v2 - 384 * (a2 % v4)) >= 384)
  {
    v5 = 384;
  }

  else
  {
    v5 = *v2 - 384 * (a2 % v4);
  }

  if (v3 - 384 * ((a2 % (v4 + v4 * ((v3 - 1) / 384))) / v4) >= 384)
  {
    v6 = 384;
  }

  else
  {
    v6 = v3 - 384 * ((a2 % (v4 + v4 * ((v3 - 1) / 384))) / v4);
  }

  v7 = v2[2];
  v8 = v7 - 384 * ((a2 % (v4 + v4 * ((v3 - 1) / 384))) / v4);
  if (v6 < v8)
  {
    v8 = v6;
  }

  v9 = v6 - (v8 & ~(v8 >> 31));
  if (v5 >= (v7 - 384 * (a2 % v4)))
  {
    v10 = v7 - 384 * (a2 % v4);
  }

  else
  {
    v10 = v5;
  }

  if (v8 >= 1)
  {
    result = cblas_zgemm_NEWLAPACK();
  }

  v11 = v5 - (v10 & ~(v10 >> 31));
  if (v10 >= 1 && v9 >= 1)
  {
    result = cblas_zgemm_NEWLAPACK();
  }

  if (v11 >= 1 && v9 >= 1)
  {
    return cblas_zgemm_NEWLAPACK();
  }

  return result;
}

uint64_t sub_236717FC4(int a1, int a2, int a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a4 < 1)
  {
    return 0;
  }

  v17 = a6;
  v19 = a1;
  v20 = 0;
  v21 = 0;
  v56 = a6 + 16 * ~a7 * a5;
  v55 = a8 - 16 * a5 * a9;
  v51 = a7 + 1;
  v54 = a10 - 4 * a5;
  v46 = a11 - 4 * a5;
  v50 = 16 * a7;
  v52 = 16 * a7 + 16;
  v53 = a6 + 24;
  v49 = a3 - 1;
  v47 = a1 - a3;
  v48 = a6 + 16 * a3 + 8;
  LODWORD(v22) = a4;
  while (1)
  {
    v23 = v17;
    v24 = (v21 + 1);
    v25 = 0.0;
    if (v24 < a3)
    {
      v26 = (v53 + v52 * v21);
      v27 = v49 - v21;
      do
      {
        v28 = hypot(*(v26 - 1), *v26);
        if (v25 <= v28)
        {
          v25 = v28;
        }

        v26 += 2;
        --v27;
      }

      while (v27);
    }

    v29 = v25;
    if (a3 < v19)
    {
      v30 = v47;
      v31 = (v48 + v50 * v21);
      v29 = v25;
      do
      {
        v32 = hypot(*(v31 - 1), *v31);
        if (v29 <= v32)
        {
          v29 = v32;
        }

        v31 += 2;
        --v30;
      }

      while (v30);
    }

    v33 = *(a13 + 24);
    v17 = v23;
    if (v29 >= v33 || hypot(*(v23 + 16 * v51 * v21), *(v23 + 16 * v51 * v21 + 8)) >= v33)
    {
      v34 = v29 * *(a13 + 16);
      v35 = v23 + 16 * v21 * a7 + 16 * v21;
      v36 = *v35;
      v37 = *(v35 + 8);
      if (v34 <= hypot(*v35, v37))
      {
        goto LABEL_27;
      }

      if (v34 <= v25)
      {
        if (v24 >= a3)
        {
          v42 = -1;
        }

        else
        {
          v44 = v20;
          v41 = (v53 + v52 * v21);
          v42 = v21 + 1;
          while (hypot(*(v41 - 1), *v41) < v25)
          {
            ++v42;
            v41 += 2;
            if (a3 == v42)
            {
              v42 = -1;
              break;
            }
          }

          LODWORD(v20) = v44;
        }

        sub_236718424((v21 + a5), v42 + a5, a5 + a2, a5 + a3, v56, a7, v55, a9, v54);
        v36 = *v35;
        v37 = *(v35 + 8);
        v17 = v23;
LABEL_27:
        sub_23681E17C(1.0, 0.0, v36, v37);
        cblas_zscal_NEWLAPACK();
        if (~v21 + a1 >= 1 && (~v21 + a4) >= 1)
        {
          cblas_zgeru_NEWLAPACK();
        }

        v20 = (v20 + 1);
        v19 = a1;
        goto LABEL_31;
      }
    }

    v22 = v22 - 1;
    v38 = v22 + a5;
    v39 = v21 + a5;
    sub_236718424(v39, v22 + a5, a5 + a2, a5 + a3, v56, a7, v55, a9, v54);
    if (v21 == v22)
    {
      break;
    }

    v40 = *(v46 + 4 * v39);
    *(v46 + 4 * v39) = *(v46 + 4 * v38);
    *(v46 + 4 * v38) = v40;
    v19 = a1;
    cblas_zswap_NEWLAPACK();
    v24 = v21;
LABEL_31:
    v21 = v24;
    if (v24 >= v22)
    {
      goto LABEL_35;
    }
  }

  v19 = a1;
LABEL_35:
  if (a3 > a4 && v20 > 0)
  {
    cblas_ztrsm_NEWLAPACK();
    sub_23671849C(111, (v19 - v20), a3 - a4, v20, v17 + 16 * v20, a7, v17 + 16 * a4 * a7, a7, v17 + 16 * a4 * a7 + 16 * v20, a7, a12, a14, a15, a16);
  }

  return v20;
}

uint64_t sub_236718424(uint64_t result, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (result != a2)
  {
    v9 = *(a9 + 4 * result);
    *(a9 + 4 * result) = *(a9 + 4 * a2);
    *(a9 + 4 * a2) = v9;
    if (a4 >= 1)
    {
      v10 = a4;
      do
      {
        v11 = *(a5 + 16 * result);
        *(a5 + 16 * result) = *(a5 + 16 * a2);
        *(a5 + 16 * a2) = v11;
        a5 += 16 * a6;
        --v10;
      }

      while (v10);
    }

    result = (a3 - a4);
    if (a3 > a4)
    {
      return cblas_zswap_NEWLAPACK();
    }
  }

  return result;
}

uint64_t sub_23671849C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = a2 - 1;
  if (a2 < 1)
  {
    v14 = a2 + 254;
  }

  v15 = (v14 >> 8) + 1;
  v16 = a3 - 1;
  if (a3 < 1)
  {
    v16 = a3 + 254;
  }

  v17 = ((v16 >> 8) + 1) * v15;
  if (v17 == 1 || a13 == 0)
  {

    return cblas_zgemm_NEWLAPACK();
  }

  else
  {
    v27[0] = a2;
    v27[1] = a3;
    v27[2] = a4;
    v27[3] = 111;
    v28 = a1;
    v29 = a5;
    v30 = a7;
    v31 = a9;
    v32 = a6;
    v33 = a8;
    v34 = a10;
    v35 = &unk_23681FC50;
    v36 = &unk_23681FC70;
    v37 = a11;
    v38 = a12;
    v25 = 0u;
    v26 = 0u;
    sub_236792218(a13, a14, &v25);
    *(&v26 + 1) = v27;
    if (v17)
    {
      for (i = 0; i != v17; ++i)
      {
        sub_236792228(&v25, i, sub_23671B2FC, 0, v20, v21, v22, v23, v25);
      }
    }

    result = sub_236792900(&v25);
    if (result)
    {
      return sub_2366FCEC8(a13);
    }
  }

  return result;
}

uint64_t sub_236718624(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v75 = a3 - 1;
  if (a3 < 1)
  {
    return 0;
  }

  v12 = a6;
  v65 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v72 = a5 + 16 * ~a6 * a4;
  v68 = a9 - 4 * a4;
  v69 = a7 - 16 * a4 * a8;
  v63 = a10 - 4 * a4;
  v66 = (a2 - a3);
  v60 = a5 + 16;
  v18 = 16 * a6;
  v73 = 16 * a6 + 16;
  v59 = a1 - 2;
  v61 = 16 * (~a3 + a2);
  v71 = a5 + 24;
  v62 = a5 + 8;
  v67 = a5 + 8 + 16 * a3;
  v58 = a7 + 8;
  v57 = 16 * a8;
  v80 = a3;
  do
  {
    while (1)
    {
      v78 = v15;
      v19 = (v17 + 1);
      v20 = 0.0;
      if (v19 < a3)
      {
        v21 = (v71 + v73 * v17);
        v22 = v75 - v17;
        do
        {
          v23 = hypot(*(v21 - 1), *v21);
          if (v20 <= v23)
          {
            v20 = v23;
          }

          v21 += 2;
          --v22;
        }

        while (v22);
      }

      v24 = v20;
      if (a3 < a1)
      {
        v25 = (v67 + v18 * v17);
        v26 = a3;
        v24 = v20;
        do
        {
          v27 = hypot(*(v25 - 1), *v25);
          if (v24 <= v27)
          {
            v24 = v27;
          }

          v25 += 2;
          ++v26;
        }

        while (v26 < a1);
      }

      v28 = *(a12 + 24);
      v29 = v12;
      v30 = a5 + 16 * v17 * v12;
      if (v24 < v28)
      {
        v31 = (v30 + 16 * v17);
        if (hypot(*v31, v31[1]) < v28)
        {
          break;
        }
      }

      v43 = v24 * *(a12 + 16);
      v44 = v30 + 16 * v17;
      v45 = *v44;
      v46 = *(v44 + 8);
      v12 = v29;
      if (v43 <= hypot(*v44, v46))
      {
        goto LABEL_54;
      }

      v79 = v16;
      if (v43 <= v20)
      {
        if (v19 >= a3)
        {
          v51 = -1;
        }

        else
        {
          v50 = (v71 + v73 * v17);
          v51 = v17 + 1;
          while (hypot(*(v50 - 1), *v50) < v20)
          {
            ++v51;
            v50 += 2;
            if (a3 == v51)
            {
              v51 = -1;
              break;
            }
          }

          v12 = v29;
        }

        sub_236718424((v17 + a4), v51 + a4, a4 + a2, a4 + a3, v72, v12, v69, a8, v68);
        v45 = *v44;
        v46 = *(v44 + 8);
        LODWORD(v16) = v79;
LABEL_54:
        sub_23681E17C(1.0, 0.0, v45, v46);
        cblas_zscal_NEWLAPACK();
        if (~v17 + a1 >= 1 && ~v17 + a3 >= 1)
        {
          cblas_zgeru_NEWLAPACK();
        }

        v16 = (v16 + 1);
        v15 = 1;
        goto LABEL_60;
      }

      v47 = v80 - 1 + a4;
      v48 = v17 + a4;
      sub_236718424(v48, --v80 + a4, a4 + a2, a4 + a3, v72, v29, v69, a8, v68);
      if (v17 == v80)
      {
        goto LABEL_51;
      }

      v49 = *(v63 + 4 * v48);
      *(v63 + 4 * v48) = *(v63 + 4 * v47);
      *(v63 + 4 * v47) = v49;
LABEL_59:
      cblas_zswap_NEWLAPACK();
      v19 = v17;
      v16 = v79;
      v15 = v78;
LABEL_60:
      v17 = v19;
      if (v19 >= v80)
      {
        goto LABEL_61;
      }
    }

    v79 = v16;
    v32 = 0.0;
    if (v19 < a3)
    {
      v33 = (v62 + v18 + v18 * v17 + 16 * v17);
      v34 = v75 - v17;
      do
      {
        v35 = hypot(*(v33 - 1), *v33);
        if (v32 <= v35)
        {
          v32 = v35;
        }

        v33 = (v33 + v18);
        --v34;
      }

      while (v34);
    }

    if (v32 >= v28)
    {
      goto LABEL_30;
    }

    v36 = a2;
    v37 = v79;
    if (a2 > a3 && v79 > v65)
    {
      cblas_ztrsm_NEWLAPACK();
      v36 = a2;
      v65 = v79;
      if (a3 > v79)
      {
        cblas_zgemm_NEWLAPACK();
        v36 = a2;
        v65 = v79;
      }
    }

    if (v36 > a3)
    {
      v38 = (v58 + v57 * v17);
      v39 = v66;
      do
      {
        v40 = hypot(*(v38 - 1), *v38);
        if (v32 <= v40)
        {
          v32 = v40;
        }

        v38 += 2;
        --v39;
      }

      while (v39);
LABEL_30:
      v37 = v79;
    }

    v12 = v29;
    if (v32 < *(a12 + 24))
    {
      *v31 = xmmword_23681FC40;
      if (a1 > v19)
      {
        bzero((v60 + v73 * v17), 16 * (v59 - v17) + 16);
      }

      v15 = v78;
      if (v19 < a3)
      {
        v41 = (a5 + v18 + v18 * v17 + 16 * v17);
        v42 = v75 - v17;
        do
        {
          *v41 = 0;
          v41[1] = 0;
          v41 = (v41 + v18);
          --v42;
        }

        while (v42);
      }

      if (v66 >= 1)
      {
        bzero((a7 + 16 * v17 * a8), v61 + 16);
      }

      v16 = (v37 + 1);
      goto LABEL_60;
    }

    v52 = v80 - 1;
    v53 = v52 + a4;
    v54 = v17 + a4;
    sub_236718424(v54, v52 + a4, a4 + a2, a4 + a3, v72, v12, v69, a8, v68);
    --v80;
    if (v17 != v52)
    {
      v55 = *(v63 + 4 * v54);
      *(v63 + 4 * v54) = *(v63 + 4 * v53);
      *(v63 + 4 * v53) = v55;
      goto LABEL_59;
    }

LABEL_51:
    v16 = v79;
    LOBYTE(v15) = v78;
LABEL_61:
    if ((v15 & 1) == 0)
    {
      break;
    }

    v15 = 0;
    v80 = a3;
    v17 = v16;
  }

  while (a3 > v16);
  if (a2 > a3 && v16 > v65)
  {
    cblas_ztrsm_NEWLAPACK();
    if (a3 > v16)
    {
      cblas_zgemm_NEWLAPACK();
    }
  }

  return v16;
}

uint64_t sub_236718DD4(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = a8;
  v21 = a5;
  v22 = a4;
  v24 = a1;
  v25 = a2;
  if (a3 >= 100)
  {
    v28 = 0;
    v29 = a5 + 1;
    do
    {
      if (a3 - v28 < 101)
      {
        break;
      }

      v30 = v24;
      v31 = sub_236717FC4(v24 - v28, v25 - v28, a3 - v28, 0x64u, v28, v22 + 16 * v29 * v28, a5, a6 + 16 * v28 * a7, a7, a10 + 4 * v28, a11 + 4 * v28, a12, a13, a16, a17, a18);
      v24 = v30;
      a2 = v25;
      v22 = a4;
      v28 += v31;
    }

    while (v31);
    if (a2 > a3 && v28 >= 1)
    {
      v36 = a6;
      v37 = v24;
      cblas_ztrsm_NEWLAPACK();
      LODWORD(v24) = v37;
      a2 = v25;
      v22 = a4;
      if (a3 > v28)
      {
        LODWORD(v36) = a5;
        cblas_zgemm_NEWLAPACK();
        LODWORD(v24) = v37;
        a2 = v25;
        v22 = a4;
      }
    }

    v32 = v22 + 16 * v29 * v28;
    v26 = v24;
    v21 = a5;
    v27 = sub_236718624(v24 - v28, a2 - v28, a3 - v28, v28, v32, a5, a6 + 16 * v28 * a7, a7, a10 + 4 * v28, a11 + 4 * v28, v36, a13) + v28;
    v18 = a8;
  }

  else
  {
    v26 = a1;
    v27 = sub_236718624(a1, a2, a3, 0, a4, a5, a6, a7, a10, a11, v36, a13);
  }

  v33 = (v26 - a3);
  if (v33 >= 1)
  {
    v34 = (v25 - a3);
    if (v34 >= 1)
    {
      sub_23671849C(112, v33, v34, v27, a4 + 16 * a3, v21, a6, a7, v18, a9, a12, a16, a17, a18);
    }
  }

  return v27;
}

uint64_t sub_236719090(int a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v7 = a3;
  v108 = a4;
  v10 = a4 + 1;
  v11 = *(a2 + 88);
  v110 = v10;
  v12 = *(v11 + 4 * v10);
  v113 = *(v11 + 4 * a4);
  v13 = (v12 - v113);
  v106 = *(a3[5] + 8 * a4);
  v14 = v106 + 1;
  v105 = *v106;
  v15 = 2 * v13;
  v120 = a1 - 3;
  if ((a1 - 3) >= 2)
  {
    v15 = 0;
  }

  v115 = v15;
  v16 = atomic_load((a3[6] + 4 * a4));
  v118 = *(*(a2 + 120) + 8 * v10) - *(*(a2 + 120) + 8 * a4);
  v17 = 16 * (2 * (v16 + v13) + (v16 + *(*(a2 + 120) + 8 * v10) - *(*(a2 + 120) + 8 * a4)) * (v16 + v13)) + 4 * (v16 + v13) + 8;
  *(a3[5] + 8 * a4) = (*(a2 + 24))(v17);
  v18 = *(v7[5] + 8 * a4);
  if (!v18)
  {
    return 0xFFFFFFFFLL;
  }

  v107 = v16;
  *v18 = v17;
  v19 = a1;
  if (a1 == 4)
  {
    v20 = v7[5];
    v21 = v108;
    v22 = atomic_load((v7[6] + 4 * v108));
    v18 = *(v20 + 8 * v21);
    v23 = v110;
  }

  else
  {
    v22 = 0;
    v23 = v110;
    v21 = v108;
  }

  v25 = v118;
  v26 = v22 + *(*(a2 + 120) + 8 * v23) - *(*(a2 + 120) + 8 * v21);
  v27 = *(a2 + 88);
  v28 = *(v27 + 4 * v23);
  v29 = *(v27 + 4 * v21);
  v30 = v28 - v29 + v22;
  v31 = v18 + 1;
  v32 = v26;
  if (v120 >= 2)
  {
    v33 = 0;
  }

  else
  {
    v33 = 2 * v30;
  }

  v34 = 16 * v26;
  v109 = v19;
  v119 = v18 + 1;
  v121 = v34;
  v117 = v18;
  v103 = v33;
  v104 = v28 - v29 + v22;
  if (v13 >= 1)
  {
    v101 = v22 + *(*(a2 + 120) + 8 * v23) - *(*(a2 + 120) + 8 * v21);
    v102 = v7;
    v35 = &v14[2 * v118 * v13 + 2 * v115];
    v36 = v28 - v29 + v22;
    v37 = &v18[2 * v30 * v26 + 1 + 2 * v33];
    v38 = (v12 - v113);
    do
    {
      v39 = *v35++;
      *v37 = v39;
      v37 = (v37 + 4);
      --v38;
    }

    while (v38);
    v40 = 0;
    v41 = (16 * (v12 - v113)) | 8;
    v114 = 16 * (v22 + v28 + v113 + ~v29 - v12);
    v42 = 16 * v118;
    v43 = v42 + 16;
    v44 = v34 + 16;
    v45 = &v18[2 * v107 + 1 + 2 * v13];
    v46 = &v106[2 * v13 + 1];
    v47 = v18 + 1;
    v116 = v28 - v29 + v22;
    v112 = v42 + 16;
    v111 = v34 + 16;
    do
    {
      v48 = 0;
      do
      {
        *&v47[2 * v48] = *&v14[2 * v48];
        ++v48;
      }

      while (v40 + v48 < v13);
      if (v13 < v36)
      {
        bzero(v117 + v41 + v34 * v40, v114 + 16);
        v44 = v111;
        v43 = v112;
        v42 = 16 * v118;
        v41 = (16 * v13) | 8;
        v36 = v116;
        v25 = v118;
        v31 = v119;
        v34 = v121;
      }

      v49 = v13;
      v50 = v46;
      for (i = v45; v49 < v25; ++v49)
      {
        v52 = *v50++;
        *i++ = v52;
      }

      ++v40;
      v14 = (v14 + v43);
      v47 = (v47 + v44);
      v45 += v34;
      v46 += v42;
    }

    while (v40 != v13);
    v26 = v101;
    v7 = v102;
    v19 = v109;
    v21 = v108;
  }

  bzero(&v31[2 * v32 * v13], 16 * v107 * v32);
  v53 = *(a2 + 120);
  v54 = *(v53 + 8 * v21);
  v55 = *(v53 + 8 * v110);
  v56 = v55 <= v54;
  v57 = v55 - v54;
  if (!v56)
  {
    v58 = 0;
    v59 = *(a2 + 128) + 4 * v54;
    do
    {
      *(a5 + 4 * *(v59 + 4 * v58)) = v58;
      ++v58;
    }

    while (v57 != v58);
  }

  v60 = *(a2 + 96);
  v61 = *(v60 + 4 * v21);
  v62 = v110;
  if (v61 < *(v60 + 4 * v110))
  {
    v63 = &v119[2 * v104 * v26 + 2 * v103];
    v64 = v13;
    do
    {
      v65 = *(*(a2 + 104) + 4 * v61);
      if (v19 == 4)
      {
        v66 = atomic_load((v7[6] + 4 * v65));
      }

      else
      {
        v66 = 0;
      }

      v67 = *(a2 + 120);
      v68 = v65 + 1;
      v69 = *(v67 + 8 * (v65 + 1));
      v70 = *(v67 + 8 * v65);
      v71 = *(a2 + 88);
      v72 = *(v71 + 4 * (v65 + 1));
      v73 = v72 - *(v71 + 4 * v65) + v66;
      v74 = v73;
      if (v19 == 4)
      {
        v74 = *(v7[7] + 4 * v65);
      }

      if (v120 >= 2)
      {
        v75 = 0;
      }

      else
      {
        v75 = 2 * v73;
      }

      if (v73 != v74)
      {
        if (v74 < v73)
        {
          v76 = v66 + v69 - v70;
          v77 = *(v7[5] + 8 * v65);
          v78 = v72 - *(v71 + 4 * v65);
          v79 = v64 - v74;
          v80 = v74;
          v81 = 16 * v73;
          v82 = (v77 + v81 * v76 + 16 * v75 + 4 * v74 + 8);
          v83 = v64;
          v84 = v74;
          do
          {
            v85 = *v82++;
            *(v63 + 4 * v83) = v85;
            ++v84;
            ++v83;
          }

          while (v84 < v73);
          v86 = 16 * v76 + 16;
          v87 = v77 + v86 * v74 + 8;
          v88 = &v117[2 * v64 + 1];
          v89 = v64;
          v90 = v74;
          do
          {
            v91 = 0;
            do
            {
              *(v88 + v121 * v89 + 16 * v91) = *(v87 + 16 * v91);
              ++v91;
            }

            while (v90 + v91 < v73);
            ++v90;
            v87 += v86;
            v88 += 16;
            ++v89;
          }

          while (v90 < v73);
          v92 = *(a2 + 120);
          v93 = v77 + v81 + 16 * v74 * v76 - 16 * v78 + 16;
          v19 = v109;
          v62 = v110;
          do
          {
            v94 = *(v92 + 8 * v65) + v78;
            if (v94 < *(v92 + 8 * v68))
            {
              v95 = v93 + 16 * v94;
              do
              {
                v96 = *(a5 + 4 * *(*(a2 + 128) + 4 * v94));
                v97 = (v95 - 16 * *(v92 + 8 * v65));
                v98 = *(v97 - 1);
                v99 = *v97;
                v100 = &v119[2 * v107 + 2 * v32 * (v79 + v80) + 2 * v96];
                if (v96 < v13)
                {
                  v100 = &v119[2 * v79 + 2 * v80 + 2 * v96 * v32];
                  v99 = -v99;
                }

                *v100 = v98;
                *(v100 + 8) = v99;
                ++v94;
                v92 = *(a2 + 120);
                v95 += 16;
              }

              while (v94 < *(v92 + 8 * v68));
            }

            ++v80;
            v93 += 16 * v76;
          }

          while (v80 < v73);
        }

        v64 = v73 + v64 - v74;
      }

      ++v61;
    }

    while (v61 < *(*(a2 + 96) + 4 * v62));
  }

  if (v105)
  {
    (*(a2 + 32))(v106);
  }

  return 0;
}

uint64_t sub_23671965C(uint64_t result, int a2, int a3, uint64_t a4, double *a5, unsigned int a6, _OWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a2;
  v13 = a9;
  v14 = 16 * a2;
  if (a9)
  {
    v14 = 0;
  }

  else
  {
    v13 = a11;
  }

  v58 = v13;
  v64 = a6;
  if (((a2 | result) & 0x80000000) != 0 || a6 < 1 || ((v15 = (a12 - v14) >> 4, v15 >= a2) ? (v16 = a6 < a2) : (v16 = 1), !v16 ? (v17 = v15 <= 0) : (v17 = 1), v17))
  {
    __break(1u);
  }

  else
  {
    v19 = a5;
    v20 = result;
    if (a2 >= result)
    {
      v21 = result;
    }

    else
    {
      v21 = a2;
    }

    if (v21)
    {
      v60 = a11 + v14;
      v56 = a3;
      v55 = a6;
      v54 = result;
      v53 = a8;
      if (v21 < 33)
      {
        v22 = 0;
        v23 = 32;
      }

      else if (v21 < 0x41 || v15 >= 32 * a2)
      {
        v23 = 32;
        v22 = 64;
      }

      else
      {
        v22 = 64;
        v23 = v15 / a2;
      }

      v24 = 0;
      v63 = v21 - v22;
      if (v21 > v22 && v23 >= 2 && v23 < v21)
      {
        if (v63 < 1)
        {
          v24 = 0;
        }

        else
        {
          v25 = 0;
          v24 = 0;
          v26 = a4;
          v59 = a4 - 4;
          v27 = v21;
          v28 = v58;
          v57 = v21;
          do
          {
            if (v23 >= v27)
            {
              v29 = v27;
            }

            else
            {
              v29 = v23;
            }

            v30 = v21 + v25;
            if (v21 + v25 >= v23)
            {
              v31 = v23;
            }

            else
            {
              v31 = v21 + v25;
            }

            v32 = *(v59 + 4 * (v29 + v24));
            v33 = (v25 + v32);
            v34 = v33 & ~(v33 >> 31);
            if (v34 < v31)
            {
              if (v23 < v30)
              {
                v30 = v23;
              }

              bzero((v58 + 16 * (((v32 + v25) & ~((v32 + v25) >> 31)) + v24)), 16 * (v30 + ~v34) + 16);
            }

            if (v33 >= 1)
            {
              sub_23671B404(v33, v31, v26, v24, &a5[2 * v24 + 2 * v24 * v64], v64, v28, v60);
              if (v24 + v31 < a2)
              {
                zlarft_NEWLAPACK();
                v21 = v57;
                zlarfb_NEWLAPACK();
              }
            }

            v24 += v23;
            v28 += 16 * v23;
            v26 += 4 * v23;
            v25 -= v23;
            v27 -= v23;
          }

          while (v63 > v24);
        }
      }

      v19 = a5;
      v12 = a2;
      v20 = v54;
      if (v24 < v21)
      {
        sub_23671B404((v54 - v24), a2 - v24, a4 + 4 * v24, v24, &a5[2 * v24 + 2 * v24 * v64], v64, v58 + 16 * v24, v60);
      }

      a3 = v56;
      a6 = v55;
      a8 = v53;
    }

    LODWORD(v35) = v20 - a3;
    if (v20 >= a3)
    {
      v36 = a3;
    }

    else
    {
      v36 = v20;
    }

    if (v36 >= 1)
    {
      if (*v19 == 0.0 && v19[1] == 0.0)
      {
        return 1;
      }

      v37 = 0;
      v38 = a6 + 1;
      while (v36 - 1 != v37)
      {
        v39 = &v19[2 * v38];
        v38 += a6 + 1;
        ++v37;
        if (*v39 == 0.0 && v39[1] == 0.0)
        {
          return v37 < v36;
        }
      }
    }

    if (a7 && a3 >= 1)
    {
      v40 = 0;
      v41 = v19;
      v42 = v12;
      do
      {
        v43 = v42;
        v44 = a7;
        v45 = v41;
        if (v40 < v12)
        {
          do
          {
            v46 = *v45;
            v45 += 2;
            *v44++ = v46;
            --v43;
          }

          while (v43);
        }

        ++v40;
        v41 += 2 * a6 + 2;
        a7 += a8 + 1;
        --v42;
      }

      while (v40 != a3);
    }

    v47 = v12 - a3;
    if (v20 >= v12)
    {
      v35 = v47;
    }

    else
    {
      v35 = v35;
    }

    if (v35 >= 1)
    {
      v48 = 0;
      v50 = &v19[2 * (a3 + a3 * a6)];
      do
      {
        if (v48 < v47)
        {
          v51 = 0;
          do
          {
            *(a10 + 16 * v51) = *&v50[2 * v51];
            ++v51;
          }

          while (v48 + v51 < v47);
        }

        ++v48;
        v50 += 2 * a6 + 2;
        a10 += 16 * v12 - 16 * a3 + 16;
      }

      while (v48 != v35);
    }

    return 0;
  }

  return result;
}

uint64_t sub_236719B08(int a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a5;
  v13 = a10;
  v43 = a3 - 1;
  if (a3 < 1)
  {
    goto LABEL_38;
  }

  v14 = 0;
  v54 = a6 + 1;
  v45 = a5 + 16 * ~a6 * a4;
  v44 = a7 - 4 * a4;
  v15 = 16 * a6;
  v50 = 16 * a6 + 16;
  v51 = a5 + 24;
  v48 = a5 + 8;
  v16 = a3;
  while (1)
  {
    v17 = (v14 + 1);
    if (v17 >= a3)
    {
      break;
    }

    v18 = (v51 + v50 * v14);
    v19 = -1;
    v20 = -1.0;
    v21 = v14 + 1;
    do
    {
      v22 = hypot(*(v18 - 1), *v18);
      if (v22 > v20)
      {
        v19 = v21;
        v20 = v22;
      }

      v18 += 2;
      ++v21;
    }

    while (a3 != v21);
    v11 = a5;
    if (v19 < 0)
    {
      goto LABEL_13;
    }

    v23 = *(a9 + 24);
    if (v20 >= v23 || hypot(*(a5 + 16 * v54 * v14), *(a5 + 16 * v54 * v14 + 8)) >= v23)
    {
      goto LABEL_13;
    }

    sub_2367784E8((v14 + a4), (--v16 + a4), (a4 + a1), (a4 + a2), v45, a6, v44);
    v17 = v14;
LABEL_32:
    v14 = v17;
    if (v17 >= v16)
    {
      goto LABEL_35;
    }
  }

  v19 = -1;
  v20 = -1.0;
LABEL_13:
  if (v14 != v16 - 1 || (v24 = (v11 + 16 * v54 * v14), *v24 != 0.0) || v24[1] != 0.0)
  {
    v25 = (v11 + 16 * v54 * v14);
    if (v19 == -1 || (v26 = hypot(*v25, v25[1]), v26 >= v20 * 0.640388203))
    {
      sub_236779A4C((a3 - v14), (a3 - v14), v25, a6, a8 + 32 * v14, a10);
      goto LABEL_32;
    }

    v27 = v26;
    v28 = -1.0;
    if (v14 < v19)
    {
      v29 = (v48 + v15 * v14 + 16 * v19);
      v30 = v19 - v14;
      do
      {
        v28 = fmax(v28, hypot(*(v29 - 1), *v29));
        v29 = (v29 + v15);
        --v30;
      }

      while (v30);
    }

    if (v19 + 1 < a3)
    {
      v31 = (v48 + v15 * v19 + 16 * (v19 + 1));
      v32 = v43 - v19;
      do
      {
        v28 = fmax(v28, hypot(*(v31 - 1), *v31));
        v31 += 2;
        --v32;
      }

      while (v32);
    }

    if (v20 * (v20 * 0.640388203) <= v27 * v28)
    {
      v33 = (a3 - v14);
      v34 = a8 + 32 * v14;
      v35 = v33;
      v36 = v25;
      v37 = a6;
    }

    else
    {
      if (hypot(*(a5 + 16 * v54 * v19), *(a5 + 16 * v54 * v19 + 8)) < v28 * 0.640388203)
      {
        sub_2367784E8((v17 + a4), (v19 + a4), (a4 + a1), (a4 + a2), v45, a6, v44);
        sub_23677C740((a3 - v14), (a3 - v14), v25, a6, a8 + 32 * v14, a10);
        v17 = (v14 + 2);
LABEL_31:
        v11 = a5;
        goto LABEL_32;
      }

      sub_2367784E8((v14 + a4), (v19 + a4), (a4 + a1), (a4 + a2), v45, a6, v44);
      v33 = (a3 - v14);
      v35 = v33;
      v36 = v25;
      v37 = a6;
      v34 = a8 + 32 * v14;
    }

    sub_236779A4C(v33, v35, v36, v37, v34, a10);
    goto LABEL_31;
  }

  v16 = v14;
LABEL_35:
  v38 = (a3 - v16);
  v13 = a10;
  if (a3 > v16)
  {
    v39 = a8 + 32 * v16;
    v40 = (v11 + 16 * v54 * v16);
    v41 = v15 + 16;
    do
    {
      *v40 = xmmword_23681FC30;
      sub_236779A4C(v38, v38, v40, a6, v39, a10);
      v39 += 32;
      v40 = (v40 + v41);
      v38 = (v38 - 1);
    }

    while (v38);
  }

LABEL_38:
  sub_236781510((a1 - a3), a3, v11, a6, v11 + 16 * a3, a6, a8, v13);
  return a3;
}

uint64_t sub_236719F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a4;
  v10 = a3;
  v12 = a3 + 16 * a2 * a4;
  if (a2 >= 48)
  {
    LODWORD(v13) = 0;
    v31 = a4 + 1;
    v26 = a1 - a2;
    v28 = a3 + 16 * a2 * a4;
    v29 = a5;
    v27 = a6;
    do
    {
      v14 = v31 * v13;
      v15 = v10 + 16 * v14;
      v16 = v12 + 32 * v13;
      v17 = a2 - v13;
      if (a2 - v13 >= 48)
      {
        v18 = 48;
      }

      else
      {
        v18 = v17;
      }

      v19 = a1;
      v20 = a7;
      v21 = v9;
      sub_236719B08(a1 - v13, a2 - v13, v18, v13, v10 + 16 * v14, v9, a5 + 4 * v13, v12 + 32 * v13, a6, a7);
      v13 = (v18 + v13);
      if (v17 >= 1 && v13 < a2)
      {
        v22 = (v17 - v18);
        v23 = v15 + 16 * v18;
        v24 = v15 + 16 * v31 * v18;
        sub_236745F38(v22, v18, v23, v21, v16, v24, v21, v20);
        if (v19 > a2)
        {
          sub_23674A3F0(v26, v22, v18, v23 + 16 * v22, v23, v21, v16, v24 + 16 * v22, v21, v20);
        }
      }

      a5 = v29;
      v10 = a3;
      a6 = v27;
      v12 = v28;
      v9 = v21;
      a7 = v20;
      a1 = v19;
    }

    while (v13 < a2);
  }

  else
  {
    sub_236719B08(a1, a2, a2, 0, a3, a4, a5, v12, a6, a7);
    return a2;
  }

  return v13;
}

BOOL sub_23671A0F0(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a5 + 16 * a1 * a6;
  v15 = v14 + 16 * a1;
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = (v14 + 16 * a2);
  v19 = *v18;
  v20 = v18[1];
  v21 = (a5 + 16 * (a2 * a6 + a2));
  v22 = *v21;
  v23 = v21[1];
  v24 = hypot(*v15, v17);
  v25 = hypot(v19, v20);
  v26 = fmax(v24, fmax(v25, hypot(v22, v23)));
  result = 0;
  if (fabs(v26) >= *(a7 + 24))
  {
    v27 = 1.0 / v26;
    v28 = v16 * (1.0 / v26);
    v29 = v17 * (1.0 / v26);
    v30 = v22 * v28 - v23 * v29;
    v31 = v23 * v28 + v22 * v29;
    v57 = v22;
    v58 = v29;
    v59 = v28;
    v32 = v19 * (v19 * v27) - v20 * (v20 * v27);
    v33 = v20 * (v19 * v27) + v19 * (v20 * v27);
    v55 = v31 - v33;
    v56 = v30 - v32;
    v34 = v31;
    v35 = hypot(v30 - v32, v31 - v33);
    v36 = v30;
    v37 = v35;
    if (v35 >= *(a7 + 24))
    {
      v54 = hypot(v36, v34) * 0.5;
      if (v37 >= fmax(v54, hypot(v32, v33) * 0.5))
      {
        v38 = sub_23681E17C(v57 * v27, v23 * v27, v56, v55);
        v40 = v39;
        v41 = sub_23681E17C(-(v19 * v27), -(v20 * v27), v56, v55);
        v43 = v42;
        v44 = sub_23681E17C(v59, v58, v56, v55);
        v46 = v45;
        v47 = sub_236714B8C(a1, a2, a3, a4, a5, a6);
        v48 = sub_236714B8C(a2, a1, a3, a4, a5, a6);
        v49 = hypot(v38, v40);
        v50 = hypot(v41, v43);
        v51 = v48 * v50 + v49 * v47;
        v52 = 1.0 / *(a7 + 16);
        if (v51 <= v52 && v48 * hypot(v44, v46) + v50 * v47 <= v52)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23671A3E0(uint64_t a1, int a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a3 < 1)
  {
    return 0;
  }

  v10 = a6;
  v12 = a1;
  v13 = 0;
  v79 = a6 + 1;
  v66 = a7 - 4 * a4;
  v67 = a5 + 16 * ~a6 * a4;
  v77 = a3;
  v14 = 16 * a6;
  v64 = 16 * a6 + 16;
  v65 = a5 + 16;
  v63 = a1 - 2;
  v71 = a5 + 24;
  v75 = a1;
  while (2)
  {
    v15 = 0;
    v16 = v13;
    v73 = a5 + 16 * v13 * v10;
    v74 = v13 + 1;
    v80 = (v71 + v14 + v14 * v13 + 16 * v13);
    v81 = v13;
    v17 = v13;
    v18 = v79;
    v78 = v13;
    while (1)
    {
      v19 = v17 + 1;
      if (v17 + 1 >= v77)
      {
        v42 = sub_2367151B0(v13, v12, v13, a5, v10);
        v43 = *(a9 + 24);
        if (v42 < v43)
        {
          v54 = v73 + 16 * v16;
          v55 = *v54;
          v56 = *(v54 + 8);
          v57 = hypot(*v54, v56) < v43;
          v58 = INFINITY;
          if (!v57)
          {
            v58 = v55;
          }

          v59 = 0.0;
          if (!v57)
          {
            v59 = v56;
          }

          v60 = (a8 + 32 * v16);
          *v60 = v58;
          v60[1] = v59;
          v61 = (a8 + 16 * ((2 * v16) | 1));
          *v61 = 0;
          v61[1] = 0;
          *v54 = xmmword_23681FBD0;
          v46 = v74;
          if (v74 < v12)
          {
            bzero((v65 + v64 * v16), 16 * (v63 - v81) + 16);
          }

          return v46;
        }

        v44 = (a5 + 16 * v18 * v16);
        v45 = v42 * *(a9 + 16);
        if (v45 > hypot(*v44, v44[1]))
        {
          return v81;
        }

        v37 = (v12 - v81);
        v38 = a3;
        v39 = a3 - v81;
        v41 = a8 + 32 * v16;
        v40 = v44;
        goto LABEL_19;
      }

      v20 = v12;
      v21 = v13;
      if (v17 > v16)
      {
        v22 = hypot(*(v73 + 16 * v19), *(v73 + 16 * v19 + 8));
        v23 = v15;
        v24 = v74;
        v25 = v80;
        v21 = v81;
        do
        {
          v26 = hypot(*(v25 - 1), *v25);
          if (v26 > v22)
          {
            v22 = v26;
            v21 = v24;
          }

          v25 = (v25 + v14);
          ++v24;
          --v23;
        }

        while (v23);
      }

      if (sub_23671A0F0(v21, v19, v20, v81, a5, a6, a9))
      {
        break;
      }

      v18 = v79;
      v27 = (a5 + 16 * v79 * v21);
      v28 = *v27;
      v29 = *(v27 + 1);
      v30 = (a5 + 16 * v79 * v19);
      v31 = *v30;
      v32 = *(v30 + 1);
      v33 = hypot(v28, v29);
      if (v33 <= hypot(v31, v32))
      {
        v21 = v19;
      }

      v34 = sub_2367151B0(v21, v20, v81, a5, a6);
      v10 = a6;
      if (v34 < *(a9 + 24))
      {
        sub_2367784E8((v81 + a4), (v21 + a4), a4 + v75, (a4 + a2), v67, a6, v66);
        v47 = v73 + 16 * v78;
        v48 = *v47;
        v49 = *(v47 + 8);
        v57 = hypot(*v47, v49) < *(a9 + 24);
        v50 = INFINITY;
        if (v57)
        {
          v51 = 0.0;
        }

        else
        {
          v50 = v48;
          v51 = v49;
        }

        v52 = (a8 + 32 * v78);
        *v52 = v50;
        v52[1] = v51;
        v53 = (a8 + 16 * ((2 * v78) | 1));
        *v53 = 0;
        v53[1] = 0;
        *v47 = xmmword_23681FBD0;
        v46 = v74;
        if (v74 < v75)
        {
          bzero((v65 + v64 * v78), 16 * (v63 - v81) + 16);
        }

        v38 = a3;
        v12 = v75;
        goto LABEL_27;
      }

      v35 = v34 * *(a9 + 16);
      v36 = hypot(*(a5 + 16 * v79 * v21), *(a5 + 16 * v79 * v21 + 8));
      LODWORD(v13) = v81;
      v80 += 2;
      ++v15;
      v17 = v19;
      v12 = v75;
      v16 = v78;
      if (v35 <= v36)
      {
        sub_2367784E8((v81 + a4), (v21 + a4), a4 + v75, (a4 + a2), v67, a6, v66);
        v37 = v75 - v81;
        v38 = a3;
        v39 = a3 - v81;
        v40 = a5 + 16 * v79 * v78;
        v41 = a8 + 32 * v78;
LABEL_19:
        sub_236779A4C(v37, v39, v40, v10, v41, a10);
        v46 = v74;
        goto LABEL_28;
      }
    }

    sub_2367784E8((v81 + a4), (v21 + a4), (a4 + v20), (a4 + a2), v67, a6, v66);
    sub_2367784E8(v74 + a4, (v19 + a4), (a4 + v20), (a4 + a2), v67, a6, v66);
    v38 = a3;
    sub_23677C740((v20 - v81), a3 - v81, a5 + 16 * v79 * v78, a6, a8 + 32 * v78, a10);
    v46 = (v81 + 2);
    v12 = v20;
LABEL_27:
    v10 = a6;
LABEL_28:
    v13 = v46;
    if (v46 < v38)
    {
      continue;
    }

    return v46;
  }
}

uint64_t sub_23671A900(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a3;
  v10 = a3 + 16 * a2 * a4;
  if (a2 < 48)
  {
    return sub_23671A3E0(a1, a2, a2, 0, a3, a4, a5, v10, a6, a7);
  }

  v12 = 0;
  v29 = a4 + 1;
  v25 = a1 - a2;
  v26 = a3 + 16 * a2 * a4;
  v27 = a5;
  v30 = a6;
  do
  {
    v13 = v29 * v12;
    v14 = v8 + 16 * v13;
    v15 = v10 + 32 * v12;
    v16 = a2 - v12;
    if (a2 - v12 >= 48)
    {
      v17 = 48;
    }

    else
    {
      v17 = a2 - v12;
    }

    v18 = a1;
    v19 = (a1 - v12);
    v20 = a5 + 4 * v12;
    v21 = sub_23671A3E0(v19, a2 - v12, v17, v12, v8 + 16 * v13, a4, v20, v10 + 32 * v12, a6, a7);
    if (v21)
    {
      v22 = v21;
      if (v17 + v12 < a2 && v21 >= 1)
      {
        v23 = (v16 - v17);
        v24 = v14 + 16 * v29 * v17;
        sub_236745F38(v23, v21, v14 + 16 * v17, a4, v15, v24, a4, a7);
        if (v18 > a2)
        {
          sub_23674A3F0(v25, v23, v22, v14 + 16 * v17 + 16 * v23, v14 + 16 * v17, a4, v15, v24 + 16 * v23, a4, a7);
        }
      }

      a1 = v18;
      goto LABEL_15;
    }

    if (v16 < 49)
    {
      break;
    }

    v22 = sub_23671A3E0(v19, a2 - v12, a2 - v12, v12, v14, a4, v20, v15, v30, a7);
    a1 = v18;
    if (!v22)
    {
      break;
    }

LABEL_15:
    v12 = (v22 + v12);
    a5 = v27;
    v8 = a3;
    a6 = v30;
    v10 = v26;
  }

  while (v12 < a2);
  return v12;
}

uint64_t sub_23671AAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, long double *a5, uint64_t a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  if (a3 < 1)
  {
    return 0;
  }

  v14 = 0;
  v15 = a3;
  v16 = 16 * a6 + 16;
  while (hypot(*a5, a5[1]) != 0.0)
  {
    sub_236779A4C(a1, v15, a5, a6, a7, a9);
    *a5 = *a7;
    v14 = (v14 + 1);
    a1 = (a1 - 1);
    a5 = (a5 + v16);
    if (!--v15)
    {
      return a3;
    }
  }

  return v14;
}

uint64_t sub_23671ABB8(uint64_t a1, uint64_t a2, long double *a3, uint64_t a4, uint64_t a5, uint64_t a6, float64x2_t *a7, uint64_t a8)
{
  v10 = a3;
  v11 = a2;
  v28 = *MEMORY[0x277D85DE8];
  if (a2 < 48)
  {
    return sub_23671AAF4(a1, a2, a2, a4, a3, a4, v27, a8, a7);
  }

  LODWORD(v12) = 0;
  v26 = a4 + 1;
  v24 = a1 - a2;
  do
  {
    v13 = &v10[2 * v26 * v12];
    v14 = v11 - v12;
    if (v11 - v12 >= 48)
    {
      v15 = 48;
    }

    else
    {
      v15 = v14;
    }

    v16 = a1;
    v17 = sub_23671AAF4((a1 - v12), a2, v15, a4, &v10[2 * v26 * v12], a4, v27, a8, a7);
    v12 = (v17 + v12);
    if (v17 >= 1 && v12 < v11)
    {
      v19 = v17;
      v20 = v14 - v17;
      v21 = (v13 + 16 * v17);
      v22 = v13 + 16 * v26 * v17;
      sub_23680185C(v20, v17, v21, a4, v13, v22, a4, a7);
      if (v16 > v11)
      {
        sub_2368025FC(v24, v20, v19, v21[v20].i64, v21, a4, v13, v22 + 16 * v20, a4, a7);
      }
    }

    v10 = a3;
    a1 = v16;
  }

  while (v12 < v11);
  return v12;
}

uint64_t sub_23671AD40(int a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v7 = a3;
  v105 = a4;
  v10 = a4 + 1;
  v11 = *(a2 + 88);
  v107 = v10;
  v12 = *(v11 + 4 * v10);
  v110 = *(v11 + 4 * a4);
  v13 = (v12 - v110);
  v103 = *(a3[5] + 8 * a4);
  v14 = v103 + 1;
  v102 = *v103;
  v15 = 2 * v13;
  v117 = a1 - 3;
  if ((a1 - 3) >= 2)
  {
    v15 = 0;
  }

  v112 = v15;
  v16 = atomic_load((a3[6] + 4 * a4));
  v115 = *(*(a2 + 120) + 8 * v10) - *(*(a2 + 120) + 8 * a4);
  v17 = 16 * (2 * (v16 + v13) + (v16 + *(*(a2 + 120) + 8 * v10) - *(*(a2 + 120) + 8 * a4)) * (v16 + v13)) + 4 * (v16 + v13) + 8;
  *(a3[5] + 8 * a4) = (*(a2 + 24))(v17);
  v18 = *(v7[5] + 8 * a4);
  if (!v18)
  {
    return 0xFFFFFFFFLL;
  }

  v104 = v16;
  *v18 = v17;
  v19 = a1;
  if (a1 == 4)
  {
    v20 = v7[5];
    v21 = v105;
    v22 = atomic_load((v7[6] + 4 * v105));
    v18 = *(v20 + 8 * v21);
    v23 = v107;
  }

  else
  {
    v22 = 0;
    v23 = v107;
    v21 = v105;
  }

  v25 = v115;
  v26 = v22 + *(*(a2 + 120) + 8 * v23) - *(*(a2 + 120) + 8 * v21);
  v27 = *(a2 + 88);
  v28 = *(v27 + 4 * v23);
  v29 = *(v27 + 4 * v21);
  v30 = v28 - v29 + v22;
  v31 = v18 + 1;
  v32 = v26;
  if (v117 >= 2)
  {
    v33 = 0;
  }

  else
  {
    v33 = 2 * v30;
  }

  v34 = 16 * v26;
  v106 = v19;
  v116 = v18 + 1;
  v118 = v34;
  v114 = v18;
  v100 = v33;
  v101 = v28 - v29 + v22;
  if (v13 >= 1)
  {
    v98 = v22 + *(*(a2 + 120) + 8 * v23) - *(*(a2 + 120) + 8 * v21);
    v99 = v7;
    v35 = &v14[2 * v115 * v13 + 2 * v112];
    v36 = v28 - v29 + v22;
    v37 = &v18[2 * v30 * v26 + 1 + 2 * v33];
    v38 = (v12 - v110);
    do
    {
      v39 = *v35++;
      *v37 = v39;
      v37 = (v37 + 4);
      --v38;
    }

    while (v38);
    v40 = 0;
    v41 = (16 * (v12 - v110)) | 8;
    v111 = 16 * (v22 + v28 + v110 + ~v29 - v12);
    v42 = 16 * v115;
    v43 = v42 + 16;
    v44 = v34 + 16;
    v45 = &v18[2 * v104 + 1 + 2 * v13];
    v46 = &v103[2 * v13 + 1];
    v47 = v18 + 1;
    v113 = v28 - v29 + v22;
    v109 = v42 + 16;
    v108 = v34 + 16;
    do
    {
      v48 = 0;
      do
      {
        *&v47[2 * v48] = *&v14[2 * v48];
        ++v48;
      }

      while (v40 + v48 < v13);
      if (v13 < v36)
      {
        bzero(v114 + v41 + v34 * v40, v111 + 16);
        v44 = v108;
        v43 = v109;
        v42 = 16 * v115;
        v41 = (16 * v13) | 8;
        v36 = v113;
        v25 = v115;
        v31 = v116;
        v34 = v118;
      }

      v49 = v13;
      v50 = v46;
      for (i = v45; v49 < v25; ++v49)
      {
        v52 = *v50++;
        *i++ = v52;
      }

      ++v40;
      v14 = (v14 + v43);
      v47 = (v47 + v44);
      v45 += v34;
      v46 += v42;
    }

    while (v40 != v13);
    v26 = v98;
    v7 = v99;
    v19 = v106;
    v21 = v105;
  }

  bzero(&v31[2 * v32 * v13], 16 * v104 * v32);
  v53 = *(a2 + 120);
  v54 = *(v53 + 8 * v21);
  v55 = *(v53 + 8 * v107);
  v56 = v55 <= v54;
  v57 = v55 - v54;
  if (!v56)
  {
    v58 = 0;
    v59 = *(a2 + 128) + 4 * v54;
    do
    {
      *(a5 + 4 * *(v59 + 4 * v58)) = v58;
      ++v58;
    }

    while (v57 != v58);
  }

  v60 = *(a2 + 96);
  v61 = *(v60 + 4 * v21);
  v62 = v107;
  if (v61 < *(v60 + 4 * v107))
  {
    v63 = &v116[2 * v101 * v26 + 2 * v100];
    v64 = v13;
    do
    {
      v65 = *(*(a2 + 104) + 4 * v61);
      if (v19 == 4)
      {
        v66 = atomic_load((v7[6] + 4 * v65));
      }

      else
      {
        v66 = 0;
      }

      v67 = *(a2 + 120);
      v68 = v65 + 1;
      v69 = *(v67 + 8 * (v65 + 1));
      v70 = *(v67 + 8 * v65);
      v71 = *(a2 + 88);
      v72 = *(v71 + 4 * (v65 + 1));
      v73 = v72 - *(v71 + 4 * v65) + v66;
      v74 = v73;
      if (v19 == 4)
      {
        v74 = *(v7[7] + 4 * v65);
      }

      if (v117 >= 2)
      {
        v75 = 0;
      }

      else
      {
        v75 = 2 * v73;
      }

      if (v73 != v74)
      {
        if (v74 < v73)
        {
          v76 = v66 + v69 - v70;
          v77 = *(v7[5] + 8 * v65);
          v78 = v72 - *(v71 + 4 * v65);
          v79 = v64 - v74;
          v80 = v74;
          v81 = 16 * v73;
          v82 = (v77 + v81 * v76 + 16 * v75 + 4 * v74 + 8);
          v83 = v64;
          v84 = v74;
          do
          {
            v85 = *v82++;
            *(v63 + 4 * v83) = v85;
            ++v84;
            ++v83;
          }

          while (v84 < v73);
          v86 = 16 * v76 + 16;
          v87 = v77 + v86 * v74 + 8;
          v88 = &v114[2 * v64 + 1];
          v89 = v64;
          v90 = v74;
          do
          {
            v91 = 0;
            do
            {
              *(v88 + v118 * v89 + 16 * v91) = *(v87 + 16 * v91);
              ++v91;
            }

            while (v90 + v91 < v73);
            ++v90;
            v87 += v86;
            v88 += 16;
            ++v89;
          }

          while (v90 < v73);
          v92 = *(a2 + 120);
          v93 = v77 + v81 + 16 * v74 * v76 - 16 * v78 + 8;
          v19 = v106;
          v62 = v107;
          do
          {
            for (j = *(v92 + 8 * v65) + v78; j < *(v92 + 8 * v68); v92 = *(a2 + 120))
            {
              v95 = *(a5 + 4 * *(*(a2 + 128) + 4 * j));
              v96 = v93 - 16 * *(v92 + 8 * v65);
              if (v95 >= v13)
              {
                v97 = &v116[2 * v104 + 2 * v32 * (v79 + v80) + 2 * v95];
              }

              else
              {
                v97 = &v116[2 * v79 + 2 * v80 + 2 * v95 * v32];
              }

              *v97 = *(v96 + 16 * j++);
            }

            ++v80;
            v93 += 16 * v76;
          }

          while (v80 < v73);
        }

        v64 = v73 + v64 - v74;
      }

      ++v61;
    }

    while (v61 < *(*(a2 + 96) + 4 * v62));
  }

  if (v102)
  {
    (*(a2 + 32))(v103);
  }

  return 0;
}

uint64_t sub_23671B404(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= result)
  {
    v8 = result;
  }

  else
  {
    v8 = a2;
  }

  if (v8 >= 1)
  {
    v13 = 0;
    v14 = result - 1;
    v28 = a5 + 8;
    do
    {
      v29 = *(a3 + 4 * v13) - (v13 + a4);
      v15 = (a7 + 16 * v13);
      if (v29 < 1)
      {
        v16 = v13 + 1;
        *v15 = 0.0;
        v15[1] = 0.0;
      }

      else
      {
        v16 = v13 + 1;
        if (v13 + 1 >= v14)
        {
          v17 = v14;
        }

        else
        {
          v17 = v13 + 1;
        }

        v18 = v13 + a6 * v17;
        result = zlarfg_NEWLAPACK();
        v19 = v29;
        v20 = (v29 - 1);
        if (v29 > 1)
        {
          v21 = (v28 + 16 * v18);
          do
          {
            *v21 = -*v21;
            v21 += 2 * a6;
            --v20;
          }

          while (v20);
        }

        v15[1] = -v15[1];
        if (v16 < a2)
        {
          v22 = (a5 + 16 * (v13 + a6 * v13));
          v27 = *v22;
          *v22 = xmmword_23681FBD0;
          result = sub_2367E3DAC(~v13 + a2, v29, v22, a6, a7 + 16 * v13, a5 + 16 * (a6 * v13 + v16), a6, a8);
          v19 = v29;
          *(a5 + 16 * (v13 + v13 * a6)) = v27;
        }

        if (v19 >= 2)
        {
          v23 = (v19 - 1);
          v24 = (v28 + 16 * v18);
          do
          {
            *v24 = -*v24;
            v24 += 2 * a6;
            --v23;
          }

          while (v23);
        }
      }

      v13 = v16;
    }

    while (v16 != v8);
  }

  return result;
}

void sub_23671B5CC(uint64_t a1, double *__b, char *a3)
{
  v4 = __b;
  v5 = *(a1 + 4);
  v6 = *(a1 + 28);
  v61 = (v6 * v6);
  v59 = v5;
  v7 = (v5 * v6);
  v8 = 8 * v7;
  v77 = v6;
  if (v7 >= 1)
  {
    memset_pattern16(__b, &unk_23681FAF0, 8 * (v5 * v6));
    v6 = v77;
  }

  v9 = 0;
  v73 = v6 + 1;
  v57 = v6 - 1;
  v63 = 16 * v61;
  v76 = 16 * v6;
  v54 = 8 * v7;
  v55 = v7;
  do
  {
    while (1)
    {
      v56 = v9;
      if (v7 >= 1)
      {
        bzero(a3, v8);
        v6 = v77;
      }

      if (v59 >= 1)
      {
        v10 = 0;
        v58 = *(a1 + 8);
        v11 = *v58;
        while (1)
        {
          v60 = v10 + 1;
          v64 = v58[v10 + 1];
          if (v11 < v64)
          {
            break;
          }

LABEL_51:
          v11 = v64;
          v10 = v60;
          if (v60 == v59)
          {
            goto LABEL_52;
          }
        }

        v62 = *(a1 + 16);
        v78 = v10 * v6;
        v67 = v63 * v11 + 24;
        v68 = v63 * v11 + 8;
        v65 = v10;
        while (1)
        {
          v69 = v11;
          v12 = *(v62 + 4 * v11);
          if ((*(a1 + 24) & 2) != 0)
          {
            if (v10 <= v12 && v12 < *a1)
            {
              v26 = *(a1 + 32);
              v74 = v26 + 16 * v69 * v61;
              if (v65 == v12)
              {
                if (v6)
                {
                  v27 = 0;
                  v28 = (v26 + v67);
                  v29 = &v4[v12 * v6 + 1];
                  v30 = &a3[8 * v12 * v6 + 8];
                  v31 = v57;
                  do
                  {
                    v32 = v27 + v78;
                    v33 = v30;
                    v71 = v29;
                    v72 = v28;
                    v34 = v31;
                    v70 = v27 + 1;
                    if (v27 + 1 < v6)
                    {
                      do
                      {
                        v35 = *v29++;
                        v36 = v35 * hypot(*(v28 - 1), *v28) * v4[v32];
                        v37 = *v33;
                        if (v36 > *v33)
                        {
                          v37 = v36;
                        }

                        *v33++ = v37;
                        if (v36 <= *&a3[8 * v32])
                        {
                          v36 = *&a3[8 * v32];
                        }

                        *&a3[8 * v32] = v36;
                        v28 += 2;
                        --v34;
                      }

                      while (v34);
                    }

                    v38 = v4[v32];
                    v39 = v38 * (v38 * hypot(*(v74 + 16 * v27 * v73), *(v74 + 16 * v27 * v73 + 8)));
                    if (v39 <= *&a3[8 * v32])
                    {
                      v39 = *&a3[8 * v32];
                    }

                    *&a3[8 * v32] = v39;
                    --v31;
                    v28 = &v72[v76 / 8 + 2];
                    v29 = v71 + 1;
                    v30 += 8;
                    ++v27;
                    v6 = v77;
                  }

                  while (v70 != v77);
                }

                goto LABEL_50;
              }

LABEL_41:
              if (v6)
              {
                v40 = 0;
                v41 = (v74 + 8);
                v75 = &v4[v12 * v6];
                v42 = &a3[8 * v12 * v6];
                do
                {
                  v43 = v40 + v78;
                  v44 = v6;
                  v45 = v42;
                  v46 = v75;
                  v47 = v41;
                  do
                  {
                    v48 = *v46++;
                    v49 = v48 * hypot(*(v47 - 1), *v47) * v4[v43];
                    v50 = *v45;
                    if (v49 > *v45)
                    {
                      v50 = v49;
                    }

                    *v45++ = v50;
                    if (v49 <= *&a3[8 * v43])
                    {
                      v49 = *&a3[8 * v43];
                    }

                    *&a3[8 * v43] = v49;
                    v47 += 2;
                    --v44;
                  }

                  while (v44);
                  ++v40;
                  v6 = v77;
                  v41 = (v41 + v76);
                }

                while (v40 != v77);
              }
            }
          }

          else if (v10 >= v12)
          {
            v13 = *(a1 + 32);
            v74 = v13 + 16 * v69 * v61;
            if (v65 != v12)
            {
              goto LABEL_41;
            }

            if (v6)
            {
              v14 = 0;
              v15 = (v13 + v68);
              v16 = &v4[v12 * v6];
              v17 = &a3[8 * v12 * v6];
              do
              {
                v18 = v78;
                if (v14)
                {
                  v19 = 0;
                  v18 = v14 + v78;
                  v20 = v15;
                  do
                  {
                    v21 = v16[v19];
                    v22 = v21 * hypot(*(v20 - 1), *v20) * v4[v18];
                    v23 = *&v17[8 * v19];
                    if (v22 > v23)
                    {
                      v23 = v22;
                    }

                    *&v17[8 * v19] = v23;
                    if (v22 <= *&a3[8 * v18])
                    {
                      v22 = *&a3[8 * v18];
                    }

                    *&a3[8 * v18] = v22;
                    ++v19;
                    v20 += 2;
                  }

                  while (v14 != v19);
                }

                v24 = v4[v18];
                v25 = v24 * (v24 * hypot(*(v74 + 16 * v14 * v73), *(v74 + 16 * v14 * v73 + 8)));
                if (v25 <= *&a3[8 * v18])
                {
                  v25 = *&a3[8 * v18];
                }

                *&a3[8 * v18] = v25;
                ++v14;
                v6 = v77;
                v15 = (v15 + v76);
              }

              while (v14 != v77);
            }
          }

LABEL_50:
          v11 = v69 + 1;
          v67 += v63;
          v68 += v63;
          v10 = v65;
          if (v69 + 1 == v64)
          {
            goto LABEL_51;
          }
        }
      }

LABEL_52:
      v8 = v54;
      v7 = v55;
      v51 = v55;
      v52 = a3;
      v53 = v4;
      if (v55 >= 1)
      {
        break;
      }

      v9 = v56 + 1;
      if (v56 == 2)
      {
        return;
      }
    }

    do
    {
      if (*v52 == 0.0)
      {
        *v53 = INFINITY;
      }

      else
      {
        *v53 = *v53 / sqrt(*v52);
      }

      ++v53;
      ++v52;
      --v51;
    }

    while (v51);
    v9 = v56 + 1;
  }

  while (v56 != 2);
  do
  {
    if (fabs(*v4) == INFINITY)
    {
      *v4 = 1.0;
    }

    ++v4;
    --v7;
  }

  while (v7);
}

void sub_23671BAE8(int *a1, uint64_t a2, uint64_t a3, void *__b, char *a5, char *a6)
{
  v41 = a1[1];
  v9 = *(a1 + 28);
  v47 = *a1;
  if (v47 * v9 >= 1)
  {
    memset_pattern16(__b, &unk_23681FAF0, 8 * (v47 * v9));
  }

  v43 = __b;
  v38 = (v41 * v9);
  if (v38 >= 1)
  {
    memset_pattern16(a5, &unk_23681FAF0, 8 * (v41 * v9));
  }

  v10 = 0;
  v37 = (v47 * v9);
  v35 = 8 * (v41 * v9);
  v49 = 16 * (v9 * v9);
  v53 = 16 * v9;
  v39 = a3;
  v11 = &a6[8 * v47];
  do
  {
    v36 = v10;
    if (v37 >= 1)
    {
      bzero(a6, 8 * v37);
    }

    if (v38 >= 1)
    {
      bzero(v11, v35);
    }

    if (v41 >= 1)
    {
      v12 = 0;
      v40 = *(a1 + 1);
      do
      {
        if (a3)
        {
          v13 = *(a3 + 4 * v12);
        }

        else
        {
          v13 = v12;
        }

        v14 = *(v40 + 8 * v12);
        v42 = v12 + 1;
        v50 = *(v40 + 8 * (v12 + 1));
        if (v14 < v50)
        {
          v48 = *(a1 + 2);
          v54 = v9 * v13;
          v52 = v49 * v14 + 8;
          do
          {
            v51 = v14;
            v15 = *(v48 + 4 * v14);
            if ((v15 & 0x80000000) == 0 && v15 < v47)
            {
              if (a2)
              {
                v15 = *(a2 + 4 * v15);
              }

              if (v9)
              {
                v16 = 0;
                v17 = v15 * v9;
                v18 = (*(a1 + 4) + v52);
                v56 = &v43[v17];
                v55 = &a6[8 * v17];
                do
                {
                  v19 = v55;
                  v20 = v16 + v54;
                  v21 = v56;
                  v22 = v18;
                  v23 = v9;
                  do
                  {
                    v24 = *v21++;
                    v25 = v24 * hypot(*(v22 - 1), *v22) * *&a5[8 * v20];
                    v26 = *v19;
                    if (v25 > *v19)
                    {
                      v26 = v25;
                    }

                    *v19++ = v26;
                    if (v25 <= *&v11[8 * v20])
                    {
                      v25 = *&v11[8 * v20];
                    }

                    *&v11[8 * v20] = v25;
                    v22 += 2;
                    --v9;
                  }

                  while (v9);
                  ++v16;
                  v18 = (v18 + v53);
                  v9 = v23;
                }

                while (v16 != v23);
              }
            }

            v14 = v51 + 1;
            v52 += v49;
          }

          while (v51 + 1 != v50);
        }

        v12 = v42;
        a3 = v39;
      }

      while (v42 != v41);
    }

    v27 = v37;
    v29 = v43;
    v28 = a6;
    if (v37 >= 1)
    {
      do
      {
        if (*v28 == 0.0)
        {
          *v29 = INFINITY;
        }

        else
        {
          *v29 = *v29 / sqrt(*v28);
        }

        ++v29;
        ++v28;
        --v27;
      }

      while (v27);
    }

    v30 = v38;
    v31 = &a6[8 * v47];
    v32 = a5;
    if (v38 >= 1)
    {
      do
      {
        if (*v31 == 0.0)
        {
          *v32 = 0x7FF0000000000000;
        }

        else
        {
          *v32 = *v32 / sqrt(*v31);
        }

        v32 += 8;
        ++v31;
        --v30;
      }

      while (v30);
    }

    v10 = v36 + 1;
  }

  while (v36 != 2);
  v33 = v37;
  v34 = v43;
  if (v37 >= 1)
  {
    do
    {
      if (fabs(*v34) == INFINITY)
      {
        *v34 = 1.0;
      }

      ++v34;
      --v33;
    }

    while (v33);
  }

  if (v38 >= 1)
  {
    do
    {
      if (fabs(*a5) == INFINITY)
      {
        *a5 = 0x3FF0000000000000;
      }

      a5 += 8;
      --v38;
    }

    while (v38);
  }
}

uint64_t sub_23671BEAC(uint64_t result, uint64_t a2, uint64_t a3, int a4, int *a5, void *a6, void *a7, int a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  v13 = result;
  v14 = a5[4];
  v15 = a5[1];
  if (v14 < v15)
  {
    v16 = a5[3];
    v78 = a6;
    v17 = v16 + a10;
    while (1)
    {
      if (v14 == v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = v14;
      }

      if (v14 == v16 && v17 >= v15)
      {
        goto LABEL_101;
      }

      v19 = a5[19];
      if (v19 - v15 + v18 >= 0 && (*(a6[6] + (v19 - v15 + v18)) & 1) != 0)
      {
        goto LABEL_100;
      }

      if (v18 >= v16)
      {
        break;
      }

      if (v18 < 0)
      {
        goto LABEL_19;
      }

      if (*(a5 + 7))
      {
        v20 = *(*(a5 + 8) + 4 * v18);
      }

      else
      {
        v20 = v18 + *(a7[22] + 4 * a4) * a8;
      }

LABEL_21:
      v24 = *(a13 + 4 * v20);
      v25 = *(a2 + 12);
      if (v24 >= v25)
      {
        v27 = *(a2 + 4);
        v28 = v27 - *(a2 + 76);
        if (v24 < v28)
        {
          result = ((v24 - v25) / a8);
          v26 = (v24 - v25) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * v13) + 4 * result) * a8;
          goto LABEL_31;
        }

        if (v27 > v24)
        {
          v26 = *(*(a2 + 88) + 4 * (v24 - v28));
          goto LABEL_31;
        }
      }

      else if ((v24 & 0x80000000) == 0)
      {
        if (*(a2 + 56))
        {
          v26 = *(*(a2 + 64) + 4 * v24);
        }

        else
        {
          v26 = v24 + *(a7[22] + 4 * v13) * a8;
        }

        goto LABEL_31;
      }

      v26 = 0x7FFFFFFF;
LABEL_31:
      if (v26 == v20)
      {
        v29 = (v24 - v25);
        if (v24 - v25 >= 0)
        {
          if (a11 >= 1)
          {
            v30 = (v18 - v16);
            v31 = 16 * (v16 + a9) - 16 * v16;
            v32 = v16 + a9;
            v33 = a9;
            do
            {
              if (v32 >= v16)
              {
                v36 = *a5;
                v37 = a5[18];
                if (v32 < v36 - v37)
                {
                  v38 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * (v33 / a8));
                  v39 = v33 % a8;
LABEL_45:
                  v35 = v39 + v38 * a8;
                  goto LABEL_46;
                }

                if (v32 >= v36)
                {
LABEL_43:
                  v35 = 0x7FFFFFFF;
                  goto LABEL_46;
                }

                v35 = *(*(a5 + 10) + 4 * (v32 + v37 - v36));
              }

              else
              {
                if (v32 < 0)
                {
                  goto LABEL_43;
                }

                v34 = *(a5 + 7);
                if (!v34)
                {
                  v38 = *(a7[22] + 4 * a4);
                  v39 = v16 + v33;
                  goto LABEL_45;
                }

                v35 = *(v34 + 4 * v32);
              }

LABEL_46:
              v40 = *(a12 + 4 * v35);
              if (v40 >= v25)
              {
                if ((v30 & 0x80000000) != 0)
                {
                  v41 = (*(a5 + 3) + 16 * *(a5 + 4) * v18 + 16 * v32);
                }

                else if (v32 >= v16)
                {
                  v41 = (a6[12] + 16 * a6[2] * v30 + v31);
                }

                else
                {
                  v41 = (*(a5 + 5) + 16 * *(a5 + 6) * v32 + 16 * v30);
                }

                result = *(a3 + 96) + 16 * *(a3 + 16) * v29;
                v42 = (result + 16 * (v40 - v25));
              }

              else
              {
                if ((v30 & 0x80000000) != 0)
                {
                  v41 = (*(a5 + 3) + 16 * *(a5 + 4) * v18 + 16 * v32);
                }

                else if (v32 >= v16)
                {
                  v41 = (a6[12] + 16 * a6[2] * v30 + v31);
                }

                else
                {
                  v41 = (*(a5 + 5) + 16 * *(a5 + 6) * v32 + 16 * v30);
                }

                result = *(a2 + 40);
                v42 = (result + 16 * *(a2 + 48) * v40 + 16 * v29);
              }

              *v42 = vaddq_f64(*v41, *v42);
              ++v32;
              ++v33;
              v31 += 16;
            }

            while (v32 < v16 + a9 + a11);
          }

          v43 = a5[18];
          v17 = v16 + a10;
          if (v43 >= 1)
          {
            v44 = 0;
            v45 = *a5;
            v77 = v45 - v43;
            v46 = a6[4];
            v47 = (v18 - v16);
            v79 = v45 - v16 - v43;
            v48 = -16 * v16 + 16 * (v45 - v43);
            v49 = v45 - v43;
            while ((*(v46 + v44) & 1) != 0)
            {
LABEL_99:
              ++v49;
              ++v44;
              v48 += 16;
              if (v77 + v44 >= v45)
              {
                goto LABEL_100;
              }
            }

            v50 = v77 + v44;
            if (v50 >= v16)
            {
              if (v50 < v77)
              {
                v53 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((v79 + v44) / a8));
                v54 = (v79 + v44) % a8;
                goto LABEL_73;
              }

              v52 = *(a5 + 10);
LABEL_70:
              v55 = *(v52 + 4 * v44);
            }

            else if (v50 < 0)
            {
              v55 = 0x7FFFFFFF;
            }

            else
            {
              v51 = *(a5 + 7);
              if (v51)
              {
                v52 = v51 + 4 * v77;
                goto LABEL_70;
              }

              v53 = *(a7[22] + 4 * a4);
              v54 = v77 + v44;
LABEL_73:
              v55 = v54 + v53 * a8;
            }

            result = *(a12 + 4 * v55);
            v56 = result;
            if (result >= v25)
            {
              v59 = *a2 - *(a2 + 72);
              if (result < v59)
              {
                v17 = v16 + a10;
                a6 = v78;
                v58 = (result - v25) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * v13) + 4 * ((result - v25) / a8)) * a8;
                goto LABEL_84;
              }

              if (*a2 > result)
              {
                v58 = *(*(a2 + 80) + 4 * (result - v59));
                goto LABEL_84;
              }
            }

            else if ((result & 0x80000000) == 0)
            {
              v57 = *(a2 + 56);
              if (v57)
              {
                v58 = *(v57 + 4 * result);
              }

              else
              {
                v58 = result + *(a7[22] + 4 * v13) * a8;
              }

LABEL_84:
              if (v58 == v55)
              {
                if (v25 <= result)
                {
                  if ((v47 & 0x80000000) != 0)
                  {
                    v60 = (*(a5 + 3) + 16 * *(a5 + 4) * v18 + 16 * v49);
                  }

                  else if (v50 >= v16)
                  {
                    v60 = (a6[12] + 16 * a6[2] * v47 + v48);
                  }

                  else
                  {
                    v60 = (*(a5 + 5) + 16 * *(a5 + 6) * v50 + 16 * v47);
                  }

                  result = *(a3 + 96);
                  v61 = (result + 16 * *(a3 + 16) * v29 + 16 * (v56 - v25));
                }

                else
                {
                  if ((v47 & 0x80000000) != 0)
                  {
                    v60 = (*(a5 + 3) + 16 * *(a5 + 4) * v18 + 16 * v49);
                  }

                  else if (v50 >= v16)
                  {
                    v60 = (a6[12] + 16 * a6[2] * v47 + v48);
                  }

                  else
                  {
                    v60 = (*(a5 + 5) + 16 * *(a5 + 6) * v50 + 16 * v47);
                  }

                  result = *(a2 + 48);
                  v61 = (*(a2 + 40) + 16 * result * v56 + 16 * v29);
                }

                *v61 = vaddq_f64(*v60, *v61);
              }

              goto LABEL_99;
            }

            v58 = 0x7FFFFFFF;
            goto LABEL_84;
          }
        }
      }

LABEL_100:
      v14 = v18 + 1;
      if (v18 + 1 >= v15)
      {
        goto LABEL_101;
      }
    }

    v21 = v15 - v19;
    v22 = __OFSUB__(v18, v21);
    v23 = v18 - v21;
    if (v23 < 0 != v22)
    {
      v20 = (v18 - v16) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * ((v18 - v16) / a8)) * a8;
      goto LABEL_21;
    }

    if (v15 > v18)
    {
      v20 = *(*(a5 + 11) + 4 * v23);
      goto LABEL_21;
    }

LABEL_19:
    v20 = 0x7FFFFFFF;
    goto LABEL_21;
  }

LABEL_101:
  v62 = a5[18];
  if (v62 >= 1)
  {
    v63 = 0;
    v64 = *a5;
    v65 = v64 - v62;
    v66 = a6[4];
    result = v13;
    while ((*(v66 + v63) & 1) != 0)
    {
LABEL_126:
      ++v63;
      if (v65 + v63 >= v64)
      {
        return result;
      }
    }

    v67 = v65 + v63;
    v68 = a5[3];
    if (v67 < v68)
    {
      if (v67 < 0)
      {
        v71 = 0x7FFFFFFF;
      }

      else
      {
        v69 = *(a5 + 7);
        if (v69)
        {
          v70 = v69 + 4 * v65;
LABEL_111:
          v71 = *(v70 + 4 * v63);
          goto LABEL_114;
        }

        v71 = v65 + v63 + *(a7[22] + 4 * a4) * a8;
      }

LABEL_114:
      v72 = *(a12 + 4 * v71);
      v73 = *(a2 + 12);
      if (v72 >= v73)
      {
        v76 = *a2 - *(a2 + 72);
        if (v72 < v76)
        {
          v75 = (v72 - v73) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * v13) + 4 * ((v72 - v73) / a8)) * a8;
          goto LABEL_124;
        }

        if (*a2 > v72)
        {
          v75 = *(*(a2 + 80) + 4 * (v72 - v76));
          goto LABEL_124;
        }
      }

      else if ((v72 & 0x80000000) == 0)
      {
        v74 = *(a2 + 56);
        if (v74)
        {
          v75 = *(v74 + 4 * v72);
        }

        else
        {
          v75 = v72 + *(a7[22] + 4 * v13) * a8;
        }

        goto LABEL_124;
      }

      v75 = 0x7FFFFFFF;
LABEL_124:
      if (v75 == v71)
      {
        *(v66 + v63) = 1;
      }

      goto LABEL_126;
    }

    if (v67 < v65)
    {
      v71 = (v65 + v63 - v68) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((v65 + v63 - v68) / a8)) * a8;
      goto LABEL_114;
    }

    v70 = *(a5 + 10);
    goto LABEL_111;
  }

  return result;
}

uint64_t sub_23671C5FC(uint64_t result, uint64_t a2, uint64_t a3, int a4, int *a5, uint64_t a6, void *a7, int a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  v100 = result;
  v13 = a5[3];
  if (a11 >= 1)
  {
    v14 = v13 + a9;
    v15 = v13 + a10;
    v16 = *(a2 + 12);
    v104 = 4 * v14;
    v108 = a5 + 10;
    v106 = a5 + 12;
    v17 = a5 + 6;
    v18 = a5 + 8;
    v19 = 16 * v15 - 16 * v13;
    while (1)
    {
      result = v15 - v13;
      if (v15 < v13)
      {
        break;
      }

      v21 = a5[1];
      v22 = v21 - a5[19];
      v23 = __OFSUB__(v15, v22);
      v24 = v15 - v22;
      if (v24 < 0 != v23)
      {
        v20 = (v15 - v13) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * ((v15 - v13) / a8)) * a8;
      }

      else
      {
        if (v15 >= v21)
        {
          goto LABEL_12;
        }

        v20 = *(*(a5 + 11) + 4 * v24);
      }

LABEL_14:
      v25 = *(a13 + 4 * v20);
      v26 = (v25 - v16);
      if (v25 - v16 >= 0)
      {
        v27 = a5[4];
        if (v27 < v13)
        {
          if (result >= 0)
          {
            v28 = a5 + 10;
          }

          else
          {
            v28 = a5 + 6;
          }

          if (result >= 0)
          {
            v29 = a5 + 12;
          }

          else
          {
            v29 = a5 + 8;
          }

          do
          {
            if (v27 < 0)
            {
              v31 = 0x7FFFFFFF;
            }

            else
            {
              v30 = *(a5 + 7);
              if (v30)
              {
                v31 = *(v30 + 4 * v27);
              }

              else
              {
                v31 = v27 + *(a7[22] + 4 * a4) * a8;
              }
            }

            v32 = *(a12 + 4 * v31);
            if (v32 >= v16)
            {
              v37 = v32 - v16;
              if (result >= 0)
              {
                v38 = v27;
              }

              else
              {
                v38 = v15;
              }

              if (result >= 0)
              {
                v39 = v15 - v13;
              }

              else
              {
                v39 = v27;
              }

              v35 = (*v28 + 16 * *v29 * v38 + 16 * v39);
              v36 = (*(a3 + 96) + 16 * *(a3 + 16) * v26 + 16 * v37);
            }

            else
            {
              if (result >= 0)
              {
                v33 = v27;
              }

              else
              {
                v33 = v15;
              }

              if (result >= 0)
              {
                v34 = v15 - v13;
              }

              else
              {
                v34 = v27;
              }

              v35 = (*v28 + 16 * *v29 * v33 + 16 * v34);
              v36 = (*(a2 + 40) + 16 * *(a2 + 48) * v32 + 16 * v26);
            }

            *v36 = vaddq_f64(*v35, *v36);
            ++v27;
          }

          while (v13 != v27);
        }

        v40 = *a5;
        if (v14 < v40)
        {
          v41 = 0;
          v42 = a5[18];
          v43 = v40 - v42;
          v44 = v13 + a9 + v42 - v40;
          v45 = v104 + 4 * v42 - 4 * v40;
          v46 = 16 * v14 - 16 * v13;
          v47 = v13 + a9;
          while (((v44 + v41) & 0x80000000) == 0 && (*(*(a6 + 32) + (v44 + v41)) & 1) != 0)
          {
LABEL_72:
            ++v47;
            ++v41;
            v46 += 16;
            if (v14 + v41 >= v40)
            {
              goto LABEL_73;
            }
          }

          v48 = v14 + v41;
          if (v14 + v41 >= v13)
          {
            if (v48 < v43)
            {
              v51 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((a9 + v41) / a8));
              v52 = (a9 + v41) % a8;
              goto LABEL_57;
            }

            v50 = *(a5 + 10) + v45;
LABEL_54:
            v53 = *(v50 + 4 * v41);
          }

          else if (v48 < 0)
          {
            v53 = 0x7FFFFFFF;
          }

          else
          {
            v49 = *(a5 + 7);
            if (v49)
            {
              v50 = v49 + v104;
              goto LABEL_54;
            }

            v51 = *(a7[22] + 4 * a4);
            v52 = v13 + a9 + v41;
LABEL_57:
            v53 = v52 + v51 * a8;
          }

          v54 = *(a12 + 4 * v53);
          if (v54 >= v16)
          {
            if (result < 0)
            {
              v55 = (*v17 + 16 * *v18 * v15 + 16 * v47);
            }

            else if (v48 >= v13)
            {
              v55 = (*(a6 + 96) + v19 * *(a6 + 16) + v46);
            }

            else
            {
              v55 = (*v108 + 16 * *v106 * v48 + 16 * result);
            }

            v56 = (*(a3 + 96) + 16 * *(a3 + 16) * v26 + 16 * (v54 - v16));
          }

          else
          {
            if (result < 0)
            {
              v55 = (*v17 + 16 * *v18 * v15 + 16 * v47);
            }

            else if (v48 >= v13)
            {
              v55 = (*(a6 + 96) + v19 * *(a6 + 16) + v46);
            }

            else
            {
              v55 = (*v108 + 16 * *v106 * v48 + 16 * result);
            }

            v56 = (*(a2 + 40) + 16 * *(a2 + 48) * v54 + 16 * v26);
          }

          *v56 = vaddq_f64(*v55, *v56);
          goto LABEL_72;
        }
      }

LABEL_73:
      ++v15;
      v19 += 16;
      if (v15 >= v13 + a10 + a11)
      {
        goto LABEL_74;
      }
    }

    if ((v15 & 0x8000000000000000) == 0)
    {
      if (*(a5 + 7))
      {
        v20 = *(*(a5 + 8) + 4 * v15);
      }

      else
      {
        v20 = v15 + *(a7[22] + 4 * a4) * a8;
      }

      goto LABEL_14;
    }

LABEL_12:
    v20 = 0x7FFFFFFF;
    goto LABEL_14;
  }

LABEL_74:
  v57 = a5[19];
  if (v57 < 1)
  {
    return result;
  }

  v58 = 0;
  v59 = 0;
  v60 = v13 + a9;
  v61 = a5[1];
  v62 = *(a6 + 48);
  v63 = v61 - v57;
  v102 = 4 * v60;
  v105 = a5 + 10;
  v103 = a5 + 12;
  v109 = a5 + 6;
  v107 = a5 + 8;
  v64 = 16 * v63 - 16 * v13;
  v99 = v61;
  v101 = v63;
  do
  {
    if (*(v62 + v58))
    {
      goto LABEL_153;
    }

    v65 = v63 - v13;
    if (v63 >= v13)
    {
      if (v63 >= v101)
      {
        v66 = *(*(a5 + 11) + 4 * (v63 - v101));
      }

      else
      {
        if (v65 < a10 || v65 >= a11 + a10)
        {
          __break(1u);
          return result;
        }

        v66 = v65 % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * (v65 / a8)) * a8;
      }
    }

    else if (v63 < 0)
    {
      v66 = 0x7FFFFFFF;
    }

    else if (*(a5 + 7))
    {
      v66 = *(*(a5 + 8) + 4 * v63);
    }

    else
    {
      v66 = v63 + *(a7[22] + 4 * a4) * a8;
    }

    v67 = *(a13 + 4 * v66);
    v68 = *(a2 + 12);
    if (v67 >= v68)
    {
      v70 = *(a2 + 4);
      v71 = v70 - *(a2 + 76);
      if (v67 >= v71)
      {
        if (v70 <= v67)
        {
LABEL_96:
          v69 = 0x7FFFFFFF;
          goto LABEL_98;
        }

        v69 = *(*(a2 + 88) + 4 * (v67 - v71));
      }

      else
      {
        result = ((v67 - v68) / a8);
        v69 = (v67 - v68) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * v100) + 4 * result) * a8;
      }
    }

    else
    {
      if ((v67 & 0x80000000) != 0)
      {
        goto LABEL_96;
      }

      if (*(a2 + 56))
      {
        v69 = *(*(a2 + 64) + 4 * v67);
      }

      else
      {
        v69 = v67 + *(a7[22] + 4 * v100) * a8;
      }
    }

LABEL_98:
    if (v69 == v66)
    {
      result = (v67 - v68);
      if (v67 - v68 >= 0)
      {
        v72 = a5[4];
        if (v72 < v13)
        {
          v74 = a5 + 8;
          v73 = a5 + 6;
          if (v65 >= 0)
          {
            v73 = a5 + 10;
            v74 = a5 + 12;
          }

          do
          {
            if (v72 < 0)
            {
              v76 = 0x7FFFFFFF;
            }

            else
            {
              v75 = *(a5 + 7);
              if (v75)
              {
                v76 = *(v75 + 4 * v72);
              }

              else
              {
                v76 = v72 + *(a7[22] + 4 * a4) * a8;
              }
            }

            v77 = *(a12 + 4 * v76);
            if (v77 >= v68)
            {
              v82 = v77 - v68;
              if (v65 >= 0)
              {
                v83 = v72;
              }

              else
              {
                v83 = v63;
              }

              if (v65 >= 0)
              {
                v84 = v63 - v13;
              }

              else
              {
                v84 = v72;
              }

              v80 = (*v73 + 16 * *v74 * v83 + 16 * v84);
              v81 = (*(a3 + 96) + 16 * *(a3 + 16) * result + 16 * v82);
            }

            else
            {
              if (v65 >= 0)
              {
                v78 = v72;
              }

              else
              {
                v78 = v63;
              }

              if (v65 >= 0)
              {
                v79 = v63 - v13;
              }

              else
              {
                v79 = v72;
              }

              v80 = (*v73 + 16 * *v74 * v78 + 16 * v79);
              v81 = (*(a2 + 40) + 16 * *(a2 + 48) * v77 + 16 * result);
            }

            *v81 = vaddq_f64(*v80, *v81);
            ++v72;
          }

          while (v13 != v72);
        }

        v85 = *a5;
        if (v60 < v85)
        {
          v86 = 0;
          v87 = a5[18];
          v88 = v85 - v87;
          v89 = v13 + a9 + v87 - v85;
          v90 = v102 + 4 * v87 - 4 * v85;
          v91 = 16 * v60 - 16 * v13;
          v92 = v13 + a9;
          do
          {
            if (v89 + v86 < 0 || (*(*(a6 + 32) + (v89 + v86)) & 1) == 0)
            {
              v93 = v60 + v86;
              if (v60 + v86 >= v13)
              {
                if (v93 >= v88)
                {
                  v95 = *(*(a5 + 10) + v90 + 4 * v86);
                }

                else
                {
                  v95 = (a9 + v86) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((a9 + v86) / a8)) * a8;
                }
              }

              else if (v93 < 0)
              {
                v95 = 0x7FFFFFFF;
              }

              else
              {
                v94 = *(a5 + 7);
                if (v94)
                {
                  v95 = *(v94 + v102 + 4 * v86);
                }

                else
                {
                  v95 = v13 + a9 + v86 + *(a7[22] + 4 * a4) * a8;
                }
              }

              v96 = *(a12 + 4 * v95);
              if (v96 >= v68)
              {
                if (v65 < 0)
                {
                  v97 = (*v109 + 16 * *v107 * v63 + 16 * v92);
                }

                else if (v93 >= v13)
                {
                  v97 = (*(a6 + 96) + v64 * *(a6 + 16) + v91);
                }

                else
                {
                  v97 = (*v105 + 16 * *v103 * v93 + 16 * v65);
                }

                v98 = (*(a3 + 96) + 16 * *(a3 + 16) * result + 16 * (v96 - v68));
              }

              else
              {
                if (v65 < 0)
                {
                  v97 = (*v109 + 16 * *v107 * v63 + 16 * v92);
                }

                else if (v93 >= v13)
                {
                  v97 = (*(a6 + 96) + v64 * *(a6 + 16) + v91);
                }

                else
                {
                  v97 = (*v105 + 16 * *v103 * v93 + 16 * v65);
                }

                v98 = (*(a2 + 40) + 16 * *(a2 + 48) * v96 + 16 * result);
              }

              *v98 = vaddq_f64(*v97, *v98);
            }

            ++v92;
            ++v86;
            v91 += 16;
          }

          while (v60 + v86 < v85);
        }

        *(v62 + v58) = 1;
        ++v59;
        v61 = v99;
      }
    }

LABEL_153:
    ++v63;
    ++v58;
    v64 += 16;
  }

  while (v63 < v61);
  if (v59 > 0)
  {
    atomic_fetch_add_explicit((a6 + 24), -v59, memory_order_release);
  }

  return result;
}

uint64_t sub_23671CEF0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5, void *a6, void *a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v12 = a5[3];
  v62 = a5[1];
  if (v12 + a10 < v62)
  {
    v13 = a5[19];
    v61 = v13 - v62;
    v64 = a5 + 10;
    v14 = v12 + a10;
    v63 = a5 + 12;
    v65 = a5 + 6;
    v15 = a5 + 8;
    v60 = v62 - v13;
    for (i = 16 * a10; ; i += 16)
    {
      if (v61 + v14 < 0 || (*(a6[6] + (v61 + v14)) & 1) == 0)
      {
        v17 = v14 - v12;
        if (v14 >= v12)
        {
          v18 = v14 >= v60 ? *(*(a5 + 11) + 4 * (v14 - v60)) : (v14 - v12) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * ((v14 - v12) / a8)) * a8;
        }

        else if (v14 < 0)
        {
          v18 = 0x7FFFFFFF;
        }

        else
        {
          v18 = *(a5 + 7) ? *(*(a5 + 8) + 4 * v14) : v14 + *(a7[22] + 4 * a4) * a8;
        }

        v19 = *(a12 + 4 * v18);
        v20 = *(a2 + 12);
        v21 = (v19 - v20);
        if (v19 - v20 >= 0)
        {
          v22 = a5[4];
          if (v22 < v12)
          {
            if (v17 >= 0)
            {
              v23 = a5 + 10;
            }

            else
            {
              v23 = a5 + 6;
            }

            if (v17 >= 0)
            {
              v24 = a5 + 12;
            }

            else
            {
              v24 = a5 + 8;
            }

            do
            {
              if (v22 < 0)
              {
                v26 = 0x7FFFFFFF;
              }

              else
              {
                v25 = *(a5 + 7);
                if (v25)
                {
                  v26 = *(v25 + 4 * v22);
                }

                else
                {
                  v26 = v22 + *(a7[22] + 4 * a4) * a8;
                }
              }

              v27 = *(a11 + 4 * v26);
              if (v27 >= v20)
              {
                v32 = v27 - v20;
                if (v17 >= 0)
                {
                  v33 = v22;
                }

                else
                {
                  v33 = v14;
                }

                if (v17 >= 0)
                {
                  v34 = v14 - v12;
                }

                else
                {
                  v34 = v22;
                }

                v30 = (*v23 + 16 * *v24 * v33 + 16 * v34);
                v31 = (*(a3 + 96) + 16 * *(a3 + 16) * v21 + 16 * v32);
              }

              else
              {
                if (v17 >= 0)
                {
                  v28 = v22;
                }

                else
                {
                  v28 = v14;
                }

                if (v17 >= 0)
                {
                  v29 = v14 - v12;
                }

                else
                {
                  v29 = v22;
                }

                v30 = (*v23 + 16 * *v24 * v28 + 16 * v29);
                v31 = (*(a2 + 40) + 16 * *(a2 + 48) * v27 + 16 * v21);
              }

              *v31 = vaddq_f64(*v30, *v31);
              ++v22;
            }

            while (v12 != v22);
          }

          v35 = *a5;
          v36 = a5[18];
          v37 = v35 - v36;
          if (v12 + a9 < v35 - v36)
          {
            v38 = a7[24] + 4 * *(a7[23] + 8 * a4);
            v39 = a6[12] - 16 * v12 + a6[2] * i;
            v40 = a9;
            v41 = v12 + a9;
            do
            {
              v42 = *(a11 + 4 * (v40 % a8 + *(v38 + 4 * (v40 / a8)) * a8));
              if (v42 >= v20)
              {
                v43 = (*(a3 + 96) + 16 * *(a3 + 16) * v21 + 16 * (v42 - v20));
              }

              else
              {
                v43 = (*(a2 + 40) + 16 * *(a2 + 48) * v42 + 16 * v21);
              }

              *v43 = vaddq_f64(*(v39 + 16 * v41++), *v43);
              ++v40;
            }

            while (v41 < v37);
          }

          if (v36 >= 1)
          {
            break;
          }
        }
      }

LABEL_78:
      if (++v14 >= v62)
      {
        return result;
      }
    }

    v44 = 0;
    v45 = a6[4];
    v46 = v35 - v12 - v36;
    v47 = 4 * v35 - 4 * v36;
    v48 = 16 * (v35 - v12 - v36);
    v49 = v37;
    while ((*(v45 + v44) & 1) != 0)
    {
LABEL_77:
      ++v49;
      ++v44;
      v48 += 16;
      if (v37 + v44 >= v35)
      {
        goto LABEL_78;
      }
    }

    v50 = v37 + v44;
    if (v50 >= v12)
    {
      if (v50 >= v37)
      {
        v52 = *(a5 + 10);
        goto LABEL_59;
      }

      result = ((v46 + v44) / a8);
      v54 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * result);
      v55 = (v46 + v44) % a8;
    }

    else
    {
      if (v50 < 0)
      {
        v56 = 0x7FFFFFFF;
        goto LABEL_63;
      }

      v51 = *(a5 + 7);
      if (v51)
      {
        v52 = v51 + v47;
LABEL_59:
        v56 = *(v52 + 4 * v44);
LABEL_63:
        v57 = *(a11 + 4 * v56);
        if (v57 >= v20)
        {
          if (v17 < 0)
          {
            v58 = (*v65 + 16 * *v15 * v14 + 16 * v49);
          }

          else if (v50 >= v12)
          {
            v58 = (a6[12] + i * a6[2] + v48);
          }

          else
          {
            v58 = (*v64 + 16 * *v63 * v50 + 16 * v17);
          }

          v59 = (*(a3 + 96) + 16 * *(a3 + 16) * v21 + 16 * (v57 - v20));
        }

        else
        {
          if (v17 < 0)
          {
            v58 = (*v65 + 16 * *v15 * v14 + 16 * v49);
          }

          else if (v50 >= v12)
          {
            v58 = (a6[12] + i * a6[2] + v48);
          }

          else
          {
            v58 = (*v64 + 16 * *v63 * v50 + 16 * v17);
          }

          v59 = (*(a2 + 40) + 16 * *(a2 + 48) * v57 + 16 * v21);
        }

        *v59 = vaddq_f64(*v58, *v59);
        goto LABEL_77;
      }

      v54 = *(a7[22] + 4 * a4);
      v55 = v37 + v44;
    }

    v56 = v55 + v54 * a8;
    goto LABEL_63;
  }

  return result;
}

uint64_t _SparseNumericFactorLU_Complex_Double@<X0>(__int128 *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, char *a4@<X4>, uint64_t a5@<X8>, uint64_t a6@<X3>)
{
  v25 = *MEMORY[0x277D85DE8];
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  v8 = a1[2];
  *(a5 + 56) = a1[3];
  v9 = *(a1 + 17);
  v10 = *(a1 + 3);
  *a5 = -3;
  *(a5 + 4) = *(a1 + 6) & 1;
  *(a5 + 40) = v8;
  v11 = *a1;
  *(a5 + 24) = a1[1];
  *(a5 + 8) = v11;
  *(a5 + 72) = 1;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  atomic_fetch_add((v10 + 48), 1u);
  if (*(a3 + 4) == 4)
  {
    v12 = *(v10 + 40);
    if (!v12)
    {
      v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v16)
      {
        sub_23672AC1C(v16, v17, v18, v19, v20, v21, v22, v23);
      }

      _SparseTrap();
    }

    memset(&v24[14] + 4, 0, 28);
    memset(&v24[9] + 4, 0, 80);
    strcpy(v24, "nfoptions->scalingMethod=SparseScalingHungarianScalingAndOrdering is only supported if a combined symbolic+numeric call to SparseFactor() is made.\n");
    result = v12(v24, a2);
    *a5 = -4;
  }

  else
  {
    *(a5 + 80) = sub_23671D5A0(v9, *(a1 + 16), v10, 2 * *(a1 + 7), a3, a6);
    _SparseRefactorLU_Complex_Double(a2, a5, a3, a4);

    return sub_23671E4F8(a5);
  }

  return result;
}

uint64_t sub_23671D5A0(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v47 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    v6 = (*(a3 + 24))(a4);
    if (!v6)
    {
      if (!*(a3 + 40))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23672AC58();
        }

        _SparseTrap();
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      *__str = 0u;
      v32 = 0u;
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed in SparseFactorLU.", a4);
      (*(a3 + 40))(__str);
      return 0;
    }
  }

  v12 = v6 + a4;
  v13 = 8 * *(a3 + 56);
  v14 = *(a5 + 4);
  if ((v14 - 2) >= 3)
  {
    if (v14 == 1)
    {
      if (!*(a5 + 8))
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  v15 = (v6 + 151) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v15)
  {
    goto LABEL_34;
  }

  v16 = v15 + 16 * (a2 * a2) * *(*(a3 + 120) + 8 * *(a3 + 60));
  if (v16 > v12)
  {
    goto LABEL_34;
  }

  if (a2 < 2)
  {
    v17 = (v15 + 16 * (a2 * a2) * *(*(a3 + 120) + 8 * *(a3 + 60)));
    v16 = 0;
  }

  else
  {
    v17 = ((v16 + 4 * (*(a3 + 100) + *(a3 + 96)) * a2 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v12 < v17)
    {
      goto LABEL_34;
    }
  }

  if (a1 != 83)
  {
    v21 = 0;
    v24 = 0;
    v19 = 0;
    v22 = 0;
    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_23:
    v25 = (v17 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 >= v25)
    {
      v26 = (v25 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v12 >= v26)
      {
        v13 = v17;
        v17 = v26;
        goto LABEL_26;
      }
    }

LABEL_34:
    __break(1u);
  }

  v18 = *(a3 + 168);
  v19 = (v17 + 4 * v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v19)
  {
    goto LABEL_34;
  }

  v20 = 4 * v18;
  v21 = (v19 + 4 * v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v21)
  {
    goto LABEL_34;
  }

  v22 = (v21 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v22)
  {
    goto LABEL_34;
  }

  v23 = (v22 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v23)
  {
    goto LABEL_34;
  }

  v24 = v17;
  v17 = v23;
  if (v13)
  {
    goto LABEL_23;
  }

LABEL_21:
  v25 = 0;
LABEL_26:
  v27 = (v17 + 8 * *(a3 + 168) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v27)
  {
    goto LABEL_34;
  }

  v28 = *(a5 + 16);
  *v6 = *a5;
  *(v6 + 16) = v28;
  *(v6 + 32) = 1;
  *(v6 + 40) = v15;
  *(v6 + 48) = v16;
  *(v6 + 56) = 0;
  *(v6 + 64) = v24;
  *(v6 + 72) = v19;
  *(v6 + 80) = v21;
  *(v6 + 88) = v22;
  *(v6 + 96) = v13;
  *(v6 + 104) = v25;
  *(v6 + 112) = v17;
  v29 = (v27 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  *(v6 + 120) = v29;
  *(v6 + 128) = v12 - v29;
  *(v6 + 136) = 0;
  bzero(v17, 8 * *(a3 + 168));
  return v6;
}

void _SparseRefactorLU_Complex_Double(unsigned int *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a4;
  v6 = a1;
  v212 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 32);
  v8 = *(a2 + 80);
  v179 = *(a2 + 25);
  v9 = *(a1 + 28);
  v10 = 2 * *(a2 + 48);
  v11 = *(a3 + 4);
  v182 = v8;
  v183 = v7;
  if (v11 <= 1)
  {
    if (*(a3 + 4))
    {
      v16 = *(a3 + 8);
      if (v16)
      {
        v17 = *a1;
        if (v17 >= 1)
        {
          v18 = 0;
          for (i = 0; i != v17; ++i)
          {
            if (v9)
            {
              v20 = (v16 + 8 * *(*(v183 + 152) + 4 * i) * v9);
              v21 = (*(v8 + 96) + v18);
              v22 = v9;
              do
              {
                v23 = *v20++;
                *v21++ = v23;
                --v22;
              }

              while (v22);
            }

            v18 += 8 * v9;
          }
        }

        v24 = a1[1];
        if (v24 >= 1)
        {
          v25 = 0;
          v26 = 0;
          v27 = v16 + 8 * v17 * v9;
          do
          {
            if (v9)
            {
              v28 = (v27 + 8 * *(*(v183 + 160) + 4 * v26) * v9);
              v29 = (*(v8 + 104) + v25);
              v30 = v9;
              do
              {
                v31 = *v28++;
                *v29++ = v31;
                --v30;
              }

              while (v30);
            }

            ++v26;
            v25 += 8 * v9;
          }

          while (v26 != v24);
        }
      }
    }
  }

  else
  {
    if (v11 == 2)
    {
      v32 = *(a1 + 1);
      v189 = *a1;
      v190 = v32;
      v191 = *(a1 + 4);
      sub_23671BAE8(&v189, *(v7 + 136), *(v7 + 144), *(v8 + 96), *(v8 + 104), a4);
LABEL_25:
      v6 = a1;
      v8 = v182;
      v4 = a4;
      goto LABEL_26;
    }

    if (v11 == 3)
    {
      v12 = *a1;
      v13 = sub_23670BE58(v12, v6[1], *(*(v6 + 1) + 8 * v6[1]), v9) + 4 * v12 * v9 + 8;
      if (v10 >= v13)
      {
        v15 = 0;
        v14 = a4;
        v13 = v10;
      }

      else
      {
        v14 = (*(v183 + 24))(v13);
        v15 = v14;
      }

      v33 = (4 * (*a1 * v9) + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = *(a1 + 1);
      v189 = *a1;
      v190 = v34;
      v191 = *(a1 + 4);
      sub_2367130B4(&v189, v14, *(v182 + 96), *(v182 + 104), &v14[v33], v13 - v33);
      v6 = a1;
      v8 = v182;
      v4 = a4;
      if (v15)
      {
        (*(v183 + 32))(v15);
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  v35 = *(a3 + 8);
  if (v35 && *(a3 + 4) != 1)
  {
    v36 = *v6;
    v37 = &v35[8 * v36 * v9];
    v38 = *(v8 + 96);
    if (v38)
    {
      if (v36 >= 1)
      {
        for (j = 0; j != v36; ++j)
        {
          if (v9)
          {
            v40 = &v35[8 * *(*(v183 + 152) + 4 * j) * v9];
            v41 = v9;
            v42 = v38;
            do
            {
              v43 = *v42++;
              *v40 = v43;
              v40 += 8;
              --v41;
            }

            while (v41);
          }

          v38 += v9;
        }
      }

      v44 = v6[1];
      if (v44 >= 1)
      {
        v45 = 0;
        for (k = 0; k != v44; ++k)
        {
          if (v9)
          {
            v47 = &v37[8 * *(*(v183 + 160) + 4 * k) * v9];
            v48 = (*(v8 + 104) + v45);
            v49 = v9;
            do
            {
              v50 = *v48++;
              *v47 = v50;
              v47 += 8;
              --v49;
            }

            while (v49);
          }

          v45 += 8 * v9;
        }
      }
    }

    else
    {
      if (v36 * v9 >= 1)
      {
        memset_pattern16(v35, &unk_23681FAF0, 8 * (v36 * v9));
        v4 = a4;
        v6 = a1;
        v8 = v182;
      }

      if ((v6[1] * v9) >= 1)
      {
        memset_pattern16(v37, &unk_23681FAF0, 8 * v6[1] * v9);
        v4 = a4;
        v6 = a1;
        v8 = v182;
      }
    }
  }

  v51 = v183;
  if (*(*(v183 + 120) + 8 * *(v183 + 60)) >= 1)
  {
    v52 = *(v183 + 64);
    v53 = &v4[8 * v52 + 7] & 0xFFFFFFFFFFFFFFF8;
    if (&v4[v10] < v53 || &v4[v10] < ((v53 + 4 * v52 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      __break(1u);
    }

    bzero((&v4[8 * v52 + 7] & 0xFFFFFFFFFFFFFFF8), 4 * v52);
    v54 = a1;
    v8 = v182;
    v55 = *(a1 + 28);
    LODWORD(v189) = v55;
    v56 = (v55 * v55);
    v57 = v183;
    v58 = a4;
    if (*(v183 + 60) >= 1)
    {
      v59 = 0;
      v60 = 16 * v56;
      v61 = 16 * v55;
      do
      {
        v62 = v59;
        v63 = *(v57 + 120);
        v64 = *(v63 + 8 * v59++);
        v65 = *(v63 + 8 * v59);
        if (v64 != v65)
        {
          if (v64 < v65)
          {
            v66 = *(v183 + 128);
            v67 = v56 * v64;
            do
            {
              v68 = *(v66 + 4 * v64);
              *(v53 + 4 * v68) = v59;
              *&v58[8 * v68] = v67;
              ++v64;
              v67 += v56;
            }

            while (v64 < *(v63 + 8 * v59));
          }

          v69 = *(*(v183 + 160) + 4 * v62);
          v70 = *(v54 + 1);
          v71 = (v70 + 8 * v69);
          v72 = *v71;
          if (*v71 < v71[1])
          {
            v73 = v60 * v72;
            do
            {
              v74 = *(*(v54 + 2) + 4 * v72);
              if ((v74 & 0x80000000) == 0 && v74 < *v54 && v62 < *(v53 + 4 * v74))
              {
                v75 = *(v8 + 96);
                v76 = (*(v8 + 40) + 16 * *&v58[8 * v74]);
                v77 = *(v54 + 4);
                if (v75)
                {
                  if (v55)
                  {
                    v78 = 0;
                    v79 = (v75 + 8 * *(*(v183 + 136) + 4 * v74));
                    v80 = *(v8 + 104) + 8 * v62;
                    v81 = (v77 + v73);
                    do
                    {
                      v82 = v79;
                      v83 = v81;
                      v84 = v76;
                      v85 = v55;
                      do
                      {
                        v86 = *v82++;
                        v87 = v86;
                        v88 = *v83++;
                        *v84++ = vmulq_n_f64(vmulq_n_f64(v88, v87), *(v80 + 8 * v78));
                        --v85;
                      }

                      while (v85);
                      ++v78;
                      v76 = (v76 + v61);
                      v81 = (v81 + v61);
                    }

                    while (v78 != v55);
                  }
                }

                else
                {
                  memcpy(v76, (v77 + 16 * v72 * v56), 16 * v56);
                  v58 = a4;
                  v54 = a1;
                  v8 = v182;
                  v70 = *(a1 + 1);
                }
              }

              ++v72;
              v73 += v60;
            }

            while (v72 < *(v70 + 8 * v69 + 8));
          }
        }

        v57 = v183;
      }

      while (v59 < *(v183 + 60));
    }

    LODWORD(v89) = *(v57 + 96);
    if (v55 == 1)
    {
      v51 = v183;
      if (v89 >= 1)
      {
        v90 = 0;
        v91 = *(v8 + 40);
        do
        {
          v92 = *(*(v183 + 120) + 8 * v90);
          v93 = sub_23681E17C(1.0, 0.0, *(v91 + 16 * v92), *(v91 + 16 * v92 + 8));
          v8 = v182;
          v91 = *(v182 + 40);
          v94 = v91 + 16 * v92;
          *v94 = v93;
          *(v94 + 8) = v95;
          ++v90;
        }

        while (v90 < *(v183 + 96));
      }

      v96 = *(v183 + 100);
      if (v96 >= 1)
      {
        v97 = *(v183 + 60) - v96;
        v98 = *(v8 + 40);
        do
        {
          v99 = *(*(v183 + 120) + 8 * v97);
          v100 = sub_23681E17C(1.0, 0.0, *(v98 + 16 * v99), *(v98 + 16 * v99 + 8));
          v8 = v182;
          v98 = *(v182 + 40);
          v101 = v98 + 16 * v99;
          *v101 = v100;
          *(v101 + 8) = v102;
          ++v97;
        }

        while (v97 < *(v183 + 60));
      }
    }

    else if (v89 < 1)
    {
LABEL_82:
      v51 = v183;
      v104 = *(v183 + 100);
      if (v104 >= 1)
      {
        v105 = *(v183 + 60) - v104;
        do
        {
          v205[0] = 0;
          zgetrf_NEWLAPACK();
          v8 = v182;
          v51 = v183;
          if (v205[0])
          {
            break;
          }

          ++v105;
          LODWORD(v89) = v89 + 1;
        }

        while (v105 < *(v183 + 60));
      }
    }

    else
    {
      v103 = 0;
      while (1)
      {
        v205[0] = 0;
        zgetrf_NEWLAPACK();
        v8 = v182;
        v51 = v183;
        if (v205[0])
        {
          break;
        }

        ++v103;
        v89 = *(v183 + 96);
        if (v103 >= v89)
        {
          goto LABEL_82;
        }
      }
    }

    v4 = a4;
    v6 = a1;
  }

  v106 = *(v6 + 28);
  v107 = *(v51 + 168);
  v108 = &v4[8 * v107];
  v109 = *(v51 + 52);
  if (v109 >= 2)
  {
    _X0 = 0;
    v111 = *(v51 + 56);
    v112 = 6 * v111;
    v113 = 4 * v111 + 8;
    if (v179 != 82)
    {
      v113 = 0;
    }

    v114 = v113 + 4 * v112 + 48;
    v205[0] = *(v51 + 52);
    atomic_store(0, &v205[1]);
    atomic_store(0, (v205 | 0xC));
    atomic_store(0, v206);
    v115 = v207;
    do
    {
      _X5 = v208;
      __asm { CASPAL          X4, X5, X0, X1, [X25] }

      _ZF = _X4 == v115;
      v115 = _X4;
    }

    while (!_ZF);
    v209 = v113 + 4 * v112 + 48;
    v210 = &v4[8 * v107];
    v122 = &v108[40 * *(v183 + 336) + ((v114 * v109 + 7) & 0xFFFFFFFFFFFFFFF8)];
    LOBYTE(v189) = v179;
    *(&v189 + 1) = v6;
    *&v190 = v183;
    DWORD2(v190) = v106;
    v191 = v8;
    v192 = v4;
    v193 = *(v8 + 120);
    v194 = &v108[(v114 * v109 + 7) & 0xFFFFFFFFFFFFFFF8];
    v195 = sub_2367921D4(256, v122 + 16 * v109);
    v196 = v123;
    v197 = 0;
    v198 = 0;
    v199 = 0;
    v200 = v122;
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v211 = &v189;
    if (*(v183 + 52))
    {
      v124 = 0;
      v125 = 0;
      do
      {
        v126 = *(v183 + 56);
        madvise(v108, 8 * v126, 3);
        madvise(&v108[8 * v126], 0x64uLL, 3);
        madvise(&v108[12 * v126], 0x64uLL, 3);
        madvise(&v108[16 * v126], 0x64uLL, 3);
        madvise(&v108[20 * v126], 0x64uLL, 3);
        *(v200 + v124 + 8) = *(v183 + 392);
        v127 = (*(v183 + 24))();
        v128 = (v200 + v124);
        *v128 = v127;
        madvise(v127, v128[1], 3);
        ++v125;
        v124 += 16;
        v108 += v114;
      }

      while (v125 < *(v183 + 52));
    }

    if (*(v182 + 128) >= 0x8000000uLL)
    {
      v129 = 0x8000000;
    }

    else
    {
      v129 = *(v182 + 128);
    }

    madvise(*(v182 + 120), v129, 3);
    if (*(v183 + 336) >= 1)
    {
      _X20 = 0;
      v131 = 0;
      v132 = 0;
      do
      {
        v133 = v132;
        if (*(*(v183 + 176) + 4 * *(*(v183 + 344) + 4 * v132++)) >= *(*(v183 + 112) + 4 * (v131 + 1)))
        {
          ++v131;
        }

        v135 = *(*(v183 + 368) + 8 * v132) - *(*(v183 + 368) + 8 * v133);
        v136 = &v194[40 * v133];
        atomic_store(v135, v136);
        *(v136 + 2) = v133;
        *(v136 + 3) = v131;
        *(v136 + 2) = sub_236721B8C;
        if (!v135)
        {
          _X0 = 0;
          _X1 = 0;
          __asm { CASP            X0, X1, X0, X1, [X24] }

          *(v136 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
          *(v136 + 4) = 0;
          v140 = _X0 & 1;
          _X2 = v140 | v136;
          _X5 = 0;
          __asm { CASPL           X4, X5, X2, X3, [X24] }

          while (_X4 != _X0)
          {
            _X1 = 0;
            __asm { CASP            X0, X1, X20, X21, [X10] }

            *(v136 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
            *(v136 + 4) = 0;
            v140 = _X0 & 1;
            _X2 = v140 | v136;
            _X5 = 0;
            __asm { CASPL           X4, X5, X2, X3, [X10] }
          }

          if (v140)
          {
            __ulock_wake();
          }
        }
      }

      while (v132 < *(v183 + 336));
    }

    _X0 = 0;
    _X1 = 0;
    v185 = xmmword_28499C248;
    v186 = off_28499C258;
    __asm { CASP            X0, X1, X0, X1, [X8] }

    v187 = _X0 & 0xFFFFFFFFFFFFFFFELL;
    v188 = 0;
    _X2 = &v185 | _X0 & 1;
    _X5 = 0;
    __asm { CASPL           X4, X5, X2, X3, [X8] }

    if (_X4 == _X0)
    {
      if ((_X0 & 1) == 0)
      {
        goto LABEL_124;
      }
    }

    else
    {
      _X2 = 0;
      do
      {
        _X5 = 0;
        __asm { CASP            X4, X5, X2, X3, [X8] }

        v187 = _X4 & 0xFFFFFFFFFFFFFFFELL;
        v188 = 0;
        _X0 = &v185 | _X4 & 1;
        _X7 = 0;
        __asm { CASPL           X6, X7, X0, X1, [X8] }
      }

      while (_X6 != _X4);
      if ((_X4 & 1) == 0)
      {
        goto LABEL_124;
      }
    }

    __ulock_wake();
LABEL_124:
    v167 = sub_2366FCD2C(v205, 1);
    if (v167)
    {
      if (v197)
      {
        v198 = v197;
        operator delete(v197);
      }

      goto LABEL_135;
    }

    if (*(v183 + 52))
    {
      v176 = 0;
      v177 = 0;
      do
      {
        (*(v183 + 32))(*(v200 + v176));
        ++v177;
        v176 += 16;
      }

      while (v177 < *(v183 + 52));
    }

    if (v197)
    {
      v198 = v197;
      operator delete(v197);
    }

LABEL_134:
    v167 = 0;
    goto LABEL_135;
  }

  v153 = *(a2 + 48);
  v154 = *(v8 + 120);
  v155 = *(v8 + 128);
  *v205 = v154;
  v184 = 0;
  LODWORD(v185) = 0;
  v156 = (*(v51 + 24))(*(v51 + 392));
  v158 = *(v183 + 392);
  *&v189 = v156;
  *(&v189 + 1) = v158;
  if (*(v183 + 168) < 1)
  {
    v168 = 0;
    v169 = 0;
    v166 = v182;
LABEL_128:
    atomic_store(v169, (v166 + 136));
    atomic_store(v168, (v166 + 140));
    (*(v183 + 32))(v156);
    goto LABEL_134;
  }

  v159 = 0;
  v160 = 0;
  v161 = 2 * v153;
  v162 = v107;
  v163 = v154 + v155;
  v164 = v161 - 8 * v107;
  v166 = v182;
  v165 = v183;
  while (1)
  {
    if (*(*(v165 + 176) + 4 * v159) >= *(*(v165 + 112) + 4 * (v160 + 1)))
    {
      ++v160;
    }

    v167 = sub_23672201C(v159, v160, a1, v179, v165, v106, v166, v157, a4, v162, v205, v163, &v185, &v184, v108, v164, &v189, 0, 0);
    if (v167)
    {
      break;
    }

    ++v159;
    v166 = v182;
    v165 = v183;
    if (v159 >= *(v183 + 168))
    {
      v168 = v184;
      v169 = v185;
      v156 = v189;
      goto LABEL_128;
    }
  }

LABEL_135:
  *a2 = v167;
}

void sub_23671E4C0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    *(v1 + 88) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23671E4F8(uint64_t result)
{
  if (*result != -3)
  {
    v1 = *(result + 32);
    v2 = *(result + 80);
    v3 = v1[42];
    v4 = 40 * v1[84];
    v6 = v1[13];
    v5 = v1[14];
    *(result + 88) = v4 + 12 * v3 + (*MEMORY[0x277D85FA0] + 4 * v5) * v6 + 56;
    LODWORD(v2) = atomic_load((v2 + 140));
    *(result + 96) = 32 * (v5 + v6 * v2);
  }

  return result;
}

uint64_t _SparseFactorLU_Complex_Double@<X0>(int a1@<W0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v549 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(*(a2 + 1) + 8 * v7);
  if (a1 == 80)
  {
    v9 = 83;
  }

  else
  {
    v9 = a1;
  }

  if (v6 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *a5 = -3;
  v11 = a2[6] & 1;
  *(a5 + 4) = v11;
  *(a5 + 8) = -3;
  *(a5 + 12) = v6;
  *(a5 + 16) = v7;
  *(a5 + 20) = v11;
  v527 = a2;
  *(a5 + 24) = *(a2 + 28);
  v526 = v9;
  *(a5 + 25) = v9;
  *(a5 + 80) = 0;
  *(a5 + 32) = 0u;
  *(a5 + 57) = 0u;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  v522 = (a5 + 80);
  v541 = 0;
  if (sub_236720B94(v10, v8, &v541))
  {
    v12 = *(a3 + 40);
    if (!v12)
    {
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v18)
      {
        sub_23672B05C(v18, v19, v20, v21, v22, v23, v24, v25);
      }

      _SparseTrap();
    }

    memset(&__str[69], 0, 187);
    strcpy(__str, "Computation of workspace required for symbolic analysis overflowed.\n");
    result = v12(__str);
LABEL_119:
    v165 = -4;
LABEL_120:
    *a5 = v165;
    return result;
  }

  v14 = v541;
  v15 = (*(a3 + 24))(v541);
  if (!v15)
  {
    if (!*(a3 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F716C();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v14);
    return (*(a3 + 40))(__str);
  }

  v16 = v15;
  __src = v15;
  if (*(a4 + 4) == 4)
  {
    if (*(v527 + 28) != 1)
    {
      v55 = *(a3 + 40);
      if (!v55)
      {
        v65 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v65)
        {
          sub_23672ACD0(v65, v66, v67, v68, v69, v70, v71, v72);
        }

        _SparseTrap();
      }

      memset(&__str[98], 0, 158);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is only supported for blockSize=1\n");
      v55(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_119;
    }

    if (*(a3 + 16))
    {
      v17 = *(a3 + 40);
      if (!v17)
      {
        v82 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v82)
        {
          sub_23672AD0C(v82, v83, v84, v85, v86, v87, v88, v89);
        }

        _SparseTrap();
      }

      memset(&__str[123], 0, 133);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is not supported with sfoptions.ignoreRowsAndColumns!=NULL\n");
      v17(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_119;
    }

    if (*(a3 + 4) == 1)
    {
      v64 = *(a3 + 40);
      if (!v64)
      {
        v114 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v114)
        {
          sub_23672B020(v114, v115, v116, v117, v118, v119, v120, v121);
        }

        _SparseTrap();
      }

      memset(&__str[125], 0, 131);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is not supported with sfoptions.orderMethod==SparseOrderUser\n");
      v64(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_119;
    }

    v90 = v527;
    v91 = (*(a3 + 24))(4 * *v527);
    v92 = (*(a3 + 24))(8 * (v90[1] + *v90));
    v93 = *v527;
    v94 = &v92[v93];
    v95 = sub_23670BE58(v93, v90[1], *(*(v90 + 1) + 8 * v90[1]), 1);
    v96 = v95;
    if (v95 >= v14)
    {
      v16 = (*(a3 + 24))(v95);
    }

    v97 = *(v527 + 1);
    *__str = *v527;
    *&__str[16] = v97;
    *&__str[32] = *(v527 + 4);
    v537 = v91;
    v519 = v94;
    v520 = v92;
    v98 = sub_2367130B4(__str, v91, v92, v94, v16, v96);
    if (v16 != __src)
    {
      (*(a3 + 32))(v16);
    }

    if (v98 != v527[1])
    {
      v113 = *(a3 + 40);
      if (!v113)
      {
        v156 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v156)
        {
          sub_23672AD48(v156, v157, v158, v159, v160, v161, v162, v163);
        }

        _SparseTrap();
      }

      memset(&__str[39], 0, 217);
      strcpy(__str, "Matrix is structurally rank deficient\n");
      v113(__str);
      v164 = *(a3 + 32);
      v532 = (a3 + 32);
      v164(v91);
      (*v532)(v92);
      result = (*v532)(__src);
      v165 = -2;
      goto LABEL_120;
    }
  }

  else
  {
    v519 = 0;
    v520 = 0;
    v537 = 0;
  }

  v26 = *(v527 + 1);
  *__str = *v527;
  *&__str[16] = v26;
  v27 = _SparseFromStructureComplex(__str, v540);
  *a5 = -3;
  if (*v540 >= *&v540[4])
  {
    v28 = *&v540[4];
  }

  else
  {
    v28 = *v540;
  }

  if (*v540 <= *&v540[4])
  {
    v29 = *&v540[4];
  }

  else
  {
    v29 = *v540;
  }

  v30 = v540[28];
  v31 = v28 + 1;
  v32 = 4 * v28;
  v33 = v32 + 8;
  if (v526 != 83)
  {
    v33 = 0;
  }

  v34 = v540[28] * (*&v540[4] + *v540) + 8;
  if (!*(a3 + 16))
  {
    v34 = 0;
  }

  v35 = 8 * (*&v540[4] + *v540) + 24 * v31 + v33 + v34 + 464;
  result = (*(a3 + 24))(v35, v27);
  v36 = result;
  if (!result)
  {
    if (!*(a3 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F716C();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v35);
    (*(a3 + 40))(__str);
    goto LABEL_267;
  }

  v37 = result;
  v38 = result + v35;
  v39 = (result + 407) & 0xFFFFFFFFFFFFFFF8;
  v40 = a3;
  if (v38 < v39)
  {
    goto LABEL_552;
  }

  v41 = *(a3 + 16);
  v42 = *(a3 + 32);
  *__str = *a3;
  *&__str[16] = v41;
  *&__str[32] = v42;
  result = 1;
  if ((*(a3 + 3) & 0x40) == 0)
  {
    result = sub_2366FCCD0(0x10u);
    v40 = a3;
    v37 = v36;
  }

  *v37 = *__str;
  *(v37 + 16) = *&__str[16];
  *(v37 + 32) = *&__str[32];
  *(v37 + 48) = 1;
  *(v37 + 52) = result;
  *(v37 + 56) = v28 * v30;
  *(v37 + 60) = v28;
  *(v37 + 64) = v29;
  *(v37 + 84) = 0u;
  *(v37 + 100) = 0u;
  *(v37 + 116) = 0u;
  *(v37 + 132) = 0u;
  *(v37 + 148) = 0u;
  *(v37 + 164) = 0u;
  *(v37 + 180) = 0u;
  *(v37 + 196) = 0u;
  *(v37 + 212) = 0u;
  *(v37 + 228) = 0u;
  *(v37 + 244) = 0u;
  *(v37 + 384) = 0u;
  *(v37 + 68) = 0u;
  *(v37 + 260) = 0u;
  *(v37 + 276) = 0u;
  *(v37 + 292) = 0u;
  *(v37 + 308) = 0u;
  *(v37 + 324) = 0u;
  *(v37 + 340) = 0u;
  *(v37 + 356) = 0u;
  *(v37 + 372) = 0u;
  v43 = *v540;
  v44 = (v39 + 4 * *v540 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v38 < v44)
  {
    goto LABEL_552;
  }

  *(v37 + 136) = v39;
  v45 = *&v540[4];
  v46 = (v44 + 4 * *&v540[4] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v38 < v46)
  {
    goto LABEL_552;
  }

  *(v37 + 144) = v44;
  v47 = (v46 + 4 * v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v38 < v47)
  {
    goto LABEL_552;
  }

  *(v37 + 152) = v46;
  v48 = (v47 + 4 * v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v38 < v48)
  {
    goto LABEL_552;
  }

  *(v37 + 160) = v47;
  v49 = v48 + 8 * v31;
  if (v49 > v38)
  {
    goto LABEL_552;
  }

  v50 = 8 * v31;
  *(v37 + 120) = v48;
  v51 = v49 + v50;
  if (v49 + v50 > v38)
  {
    goto LABEL_552;
  }

  *(v37 + 184) = v49;
  v52 = (v51 + v50) & 0xFFFFFFFFFFFFFFF8;
  if (v38 < v52)
  {
    goto LABEL_552;
  }

  *(v37 + 200) = v51;
  if (v526 == 83)
  {
    if (v38 < ((v52 + v32 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_552;
    }

    *(v37 + 304) = v52;
    v52 = (v52 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (!*(v40 + 16))
  {
    goto LABEL_49;
  }

  v53 = v540[28];
  if (v38 < ((v52 + (v45 + v43) * v540[28] + 7) & 0xFFFFFFFFFFFFFFF8))
  {
LABEL_552:
    __break(1u);
    return result;
  }

  *(v37 + 72) = v52;
  *(v37 + 80) = v52 + v43 * v53;
LABEL_49:
  v544 = 0;
  if (sub_236720B94(v28, *(*&v540[8] + 8 * v28), &v544))
  {
    v54 = *(a3 + 40);
    if (!v54)
    {
      v73 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v73)
      {
        sub_23672AF6C(v73, v74, v75, v76, v77, v78, v79, v80);
      }

      _SparseTrap();
    }

    memset(&__str[56], 0, 200);
    strcpy(__str, "Symbolic workspace requirement calculation overflowed.\n");
    v54(__str);
    (*(a3 + 32))(v36);
    goto LABEL_112;
  }

  v56 = v544;
  v57 = *(a3 + 16);
  if (v57)
  {
    bzero(*(v36 + 72), (*&v540[4] + *v540) * v540[28]);
    v58 = *(a3 + 16);
    v59 = *v58;
    if ((*v58 & 0x80000000) != 0)
    {
      LODWORD(v57) = 0;
      v60 = 0;
    }

    else
    {
      v60 = 0;
      LODWORD(v57) = 0;
      v61 = *v540 * v540[28];
      v62 = v58 + 1;
      do
      {
        if (v59 >= v61)
        {
          *(*(v36 + 80) + (v59 - v61)) = 1;
          LODWORD(v57) = v57 + 1;
        }

        else
        {
          *(*(v36 + 72) + v59) = 1;
          ++v60;
        }

        v63 = *v62++;
        v59 = v63;
      }

      while ((v63 & 0x80000000) == 0);
    }

    if (v540[24])
    {
      *(v36 + 72) = vextq_s8(*(v36 + 72), *(v36 + 72), 8uLL);
      v81 = v60;
    }

    else
    {
      v81 = v57;
      LODWORD(v57) = v60;
    }
  }

  else
  {
    v81 = 0;
  }

  v99 = v540[28];
  v100 = *v540;
  v101 = *&v540[4];
  v102 = *v540 * v540[28] - v57;
  if (v102 != *&v540[4] * v540[28] - v81)
  {
    if (!*(a3 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672AD84();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Sparse LU factorization only supports square matrices, but supplied matrix without any ignored rows and columns has shape %dx%d.\n", v102, *&v540[4] * v540[28] - v81);
    (*(a3 + 40))(__str);
    (*(a3 + 32))(v36);
LABEL_112:
    v111 = 0;
    v112 = -4;
LABEL_113:
    *a5 = v112;
    goto LABEL_268;
  }

  if (*(a3 + 4) != 1)
  {
    v543 = 0uLL;
    *&v542 = __PAIR64__(*v540, *&v540[4]);
    *(&v542 + 1) = __src;
    v108 = (4 * *(*&v540[8] + 8 * *&v540[4]) + 7) & 0xFFFFFFFFFFFFFFF8;
    v534 = v56;
    *&v543 = &__src[2 * *v540 + 2];
    v109 = (v543 + v108);
    if (sub_236750FA0(v540, &v542, *(v36 + 72), *(v36 + 80), (v36 + 88), (v36 + 92), (v36 + 96), (v36 + 100), *(v36 + 152), *(v36 + 160), v543 + v108))
    {
      v110 = *(a3 + 40);
      if (!v110)
      {
        v147 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v147)
        {
          sub_23672ADFC(v147, v148, v149, v150, v151, v152, v153, v154);
        }

        _SparseTrap();
      }

      memset(&__str[33], 0, 223);
      strcpy(__str, "Matrix is structurally singular.");
      v110(__str);
      (*(a3 + 32))(v36);
LABEL_155:
      v155 = -2;
LABEL_156:
      *a5 = v155;
LABEL_509:
      v293 = a3;
      v111 = 0;
      goto LABEL_269;
    }

    v137 = *v540;
    v138 = vsub_s32(*v540, *(v36 + 88));
    v139 = *(v36 + 60) - *(v36 + 88);
    *(v36 + 60) = v139;
    if ((vceq_s32(v138, vdup_lane_s32(v138, 1)).u8[0] & 1) == 0)
    {
      v179 = *(a3 + 40);
      if (!v179)
      {
        v462 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v462)
        {
          sub_23672AE38(v462, v463, v464, v465, v466, v467, v468, v469);
        }

        _SparseTrap();
      }

      memset(&__str[74], 0, 182);
      strcpy(__str, "After removing ignored rows and columns, resulting matrix is not square.\n");
      v179(__str);
      *a5 = -4;
      (*(a3 + 32))(v36);
      goto LABEL_509;
    }

    v140 = v36;
    v141 = *(v36 + 96);
    v142 = *(v36 + 100) + v141;
    if (v537)
    {
      v143 = *(v36 + 152);
      v144 = *(v36 + 160);
      v145 = v109;
      if (v137 >= 1)
      {
        v146 = 0;
        do
        {
          *(v144 + v146) = *&v537[4 * *(v143 + v146)];
          v146 += 4;
        }

        while (4 * v137 != v146);
      }
    }

    else
    {
      *__str = *v540;
      *&__str[16] = *&v540[16];
      *v547 = v542;
      *&v547[16] = v543;
      v180 = v139;
      if (sub_236710A64(__str, v547, v139 - v142, *(v36 + 152) + 4 * v141, v139 - v142, (*(v36 + 160) + 4 * v141), v109) != v139 - v142)
      {
        v470 = *(a3 + 40);
        if (!v470)
        {
          v507 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v507)
          {
            sub_23672AE74(v507, v508, v509, v510, v511, v512, v513, v514);
          }

          _SparseTrap();
        }

        memset(&__str[74], 0, 182);
        strcpy(__str, "Unable to construct maximal transversal, matrix is structurally singular.");
        v470(__str);
        goto LABEL_155;
      }

      v140 = v36;
      v143 = *(v36 + 152);
      v144 = *(v36 + 160);
      v139 = v180;
      v145 = v109;
    }

    v529 = v139;
    *__str = *v540;
    *&__str[16] = *&v540[16];
    v181 = sub_2367D4EEC(__str, v139 - v142, (v143 + 4 * *(v140 + 96)), (v144 + 4 * *(v140 + 96)), v145, v145 + ((4 * (v139 - v142) + 11) & 0xFFFFFFFFFFFFFFF8));
    *(v36 + 104) = v181;
    v182 = (*(a3 + 24))(4 * v181 + 4);
    v183 = v36;
    *(v36 + 112) = v182;
    if ((*(v36 + 104) & 0x80000000) != 0)
    {
      goto LABEL_185;
    }

    v184 = v109;
    v185 = 0;
    do
    {
      *(v182 + 4 * v185) = *(v36 + 96) + *&v109[4 * v185];
      v186 = *(v36 + 104);
      v319 = v185++ < v186;
    }

    while (v319);
    if (v186 < 1)
    {
LABEL_185:
      v175 = v183;
      if (*v540 >= 1)
      {
        v212 = 0;
        v213 = *(v183 + 136);
        v214 = *(v183 + 152);
        do
        {
          *(v213 + 4 * *(v214 + 4 * v212)) = v212;
          ++v212;
        }

        while (v212 < *v540);
      }

      v176 = __src;
      v178 = v534;
      if (*&v540[4] >= 1)
      {
        v215 = 0;
        v216 = *(v183 + 144);
        v217 = *(v183 + 160);
        do
        {
          *(v216 + 4 * *(v217 + 4 * v215)) = v215;
          ++v215;
        }

        while (v215 < *&v540[4]);
      }

      v218 = *(a3 + 8);
      if (v218)
      {
        memcpy(v218, *(v183 + 136), 4 * *v540);
        memcpy((*(a3 + 8) + 4 * *v540), *(v175 + 144), 4 * *&v540[4]);
      }

      v177 = v529;
      goto LABEL_194;
    }

    v187 = 0;
    v188 = 4 * v29;
    while (1)
    {
      v189 = *(v183 + 112);
      v190 = *(v189 + 4 * v187++);
      v191 = *(v183 + 152);
      v192 = *(v183 + 160);
      __b = *(v183 + 136);
      v194 = *(v183 + 144);
      v195 = (*(v189 + 4 * v187) - v190);
      *v547 = *v540;
      *&v547[8] = *&v540[8];
      *&v547[24] = *&v540[24];
      v196 = v191 + 4 * v190;
      v545 = v542;
      v546 = v543;
      v197 = v192 + 4 * v190;
      sub_23670BC48(v547, &v545, v195, v196, v197, v184 + ((v188 + 7) & 0xFFFFFFFFFFFFFFF8), v184, __str, v188, __b, 4 * *v540, v194);
      *v547 = *__str;
      *&v547[16] = *&__str[16];
      if (sub_2367E3E64(v526, v547, 0, __b, v194, a3))
      {
        break;
      }

      if (v195 <= 0)
      {
        v211 = v196;
        v205 = 4 * v195;
        memcpy(v211, v194, v205);
        v206 = v197;
      }

      else
      {
        v198 = v196;
        v199 = __b;
        v200 = v195;
        do
        {
          v202 = *v198++;
          v201 = v202;
          v203 = *v199++;
          v194[v203] = v201;
          --v200;
        }

        while (v200);
        v204 = v196;
        v205 = 4 * v195;
        memcpy(v204, v194, 4 * v195);
        v206 = v197;
        v207 = v197;
        do
        {
          v209 = *v207++;
          v208 = v209;
          v210 = *__b++;
          v194[v210] = v208;
          --v195;
        }

        while (v195);
      }

      memcpy(v206, v194, v205);
      v183 = v36;
      v184 = v109;
      if (v187 >= *(v36 + 104))
      {
        goto LABEL_185;
      }
    }

    (*(a3 + 32))(v36);
    v155 = -3;
    goto LABEL_156;
  }

  v103 = *(a3 + 8);
  if (v103)
  {
    if (*&v540[4] >= 1)
    {
      v104 = 0;
      v105 = *(v36 + 136);
      do
      {
        *(v105 + 4 * v104) = *(v103 + 4 * v104);
        ++v104;
      }

      while (v104 < *&v540[4]);
      v100 = *v540;
    }

    if (v100 < 1)
    {
      goto LABEL_132;
    }

    v106 = 0;
    v107 = *(v36 + 144);
    do
    {
      *(v107 + 4 * v106) = *(v103 + 4 * (v106 + *&v540[4]));
      ++v106;
    }

    while (v106 < *v540);
    v100 = *v540;
  }

  else
  {
    if (*v540 >= 1)
    {
      v122 = 0;
      v123 = *(v36 + 136);
      do
      {
        *(v123 + 4 * v122) = v122;
        ++v122;
      }

      while (v122 < *v540);
      v101 = *&v540[4];
      v100 = *v540;
    }

    if (v101 >= 1)
    {
      v124 = 0;
      v125 = *(v36 + 144);
      do
      {
        *(v125 + 4 * v124) = v124;
        ++v124;
      }

      while (v124 < *&v540[4]);
      v100 = *v540;
    }
  }

  if (v100 >= 1)
  {
    v126 = 0;
    v127 = *(v36 + 152);
    v128 = *(v36 + 136);
    do
    {
      *(v127 + 4 * *(v128 + 4 * v126)) = v126;
      ++v126;
    }

    while (v126 < *v540);
  }

LABEL_132:
  v129 = *&v540[4];
  if (*&v540[4] >= 1)
  {
    v130 = 0;
    v131 = *(v36 + 160);
    v132 = *(v36 + 144);
    do
    {
      *(v131 + 4 * *(v132 + 4 * v130)) = v130;
      ++v130;
      v129 = *&v540[4];
    }

    while (v130 < *&v540[4]);
  }

  if (v57 > 0)
  {
    v133 = sub_236721ACC(*v540, v99, *(v36 + 136), *(v36 + 152), *(v36 + 72), __src);
    *(v36 + 88) = v133;
    v28 = (*(v36 + 60) - v133);
    *(v36 + 60) = v28;
    v129 = *&v540[4];
  }

  if (v81 <= 0)
  {
    v134 = *(v36 + 92);
  }

  else
  {
    v134 = sub_236721ACC(v129, v540[28], *(v36 + 144), *(v36 + 160), *(v36 + 80), __src);
    *(v36 + 92) = v134;
    v129 = *&v540[4];
  }

  if (*v540 - *(v36 + 88) != v129 - v134)
  {
    v136 = *(a3 + 40);
    if (!v136)
    {
      v166 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v166)
      {
        sub_23672AE38(v166, v167, v168, v169, v170, v171, v172, v173);
      }

      _SparseTrap();
    }

    memset(&__str[74], 0, 182);
    strcpy(__str, "After removing ignored rows and columns, resulting matrix is not square.\n");
    v136(__str);
    *a5 = -4;
    (*(a3 + 32))(v36);
    goto LABEL_267;
  }

  v135 = sub_236798D30(v28, v540, *(v36 + 136), *(v36 + 160), (v36 + 96), (v36 + 100), (v36 + 104), __src);
  if (v135 >= 1)
  {
    if (!*(a3 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672AEB0();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "User-supplied ordering does not place an entry on diagonal %d.", v135 - 1);
    (*(a3 + 40))(__str);
    (*(a3 + 32))(v36);
    goto LABEL_112;
  }

  v174 = (*(a3 + 24))(4 * *(v36 + 104) + 4);
  v175 = v36;
  *(v36 + 112) = v174;
  v176 = __src;
  memcpy(v174, __src, 4 * *(v36 + 104) + 4);
  v177 = v28;
  v178 = v56;
LABEL_194:
  v219 = (v177 - (*(v175 + 96) + *(v175 + 100)));
  *__str = v219;
  *&__str[4] = v219;
  *&__str[16] = 0;
  *&__str[24] = 0;
  *&__str[8] = v176;
  *v547 = v219;
  *&v547[4] = v219;
  v220 = &v176[2 * v219 + 8 + 2 * v219];
  *&v547[16] = 0;
  *&v547[24] = 0;
  *&v547[8] = &v176[2 * v219 + 4];
  v221 = 4 * *(*&v540[8] + 8 * v177);
  v222 = (v221 + 7) & 0xFFFFFFFFFFFFFFF8;
  v535 = v178;
  v223 = &v220[v222];
  v545 = *v540;
  v546 = *&v540[16];
  sub_236789F74(&v545, *(v175 + 104), *(v175 + 112), *(v175 + 136), *(v175 + 144), __str, v547, v220, v221, &v220[v222]);
  v224 = 8 * v219;
  *(v36 + 216) = (*(a3 + 24))(v224 + 8);
  *(v36 + 240) = (*(a3 + 24))(v224 + 8);
  sub_23676C728(v526, v219, *&__str[8], *&__str[16], *&v547[8], *&v547[16], (v36 + 168), (v36 + 176), *(v36 + 184), (v36 + 192), *(v36 + 200), (v36 + 208), *(v36 + 216), (v36 + 224), (v36 + 232), v540[28], a3, v223);
  v225 = sub_23676DFE0(*(v36 + 60), *(v36 + 168), *(*(v36 + 216) + 8 * *(v36 + 168)));
  if (v225 <= v535)
  {
    sub_23676E074(v36, v540[28], __src);
  }

  else
  {
    v226 = (*(a3 + 24))(v225);
    sub_23676E074(v36, v540[28], v226);
    if (v226 != __src)
    {
      (*(a3 + 32))(v226);
    }
  }

  v227 = sub_2366F8F4C(v219, *(v36 + 168));
  v228 = v227;
  v229 = __src;
  if (v227 > v535)
  {
    v229 = (*(a3 + 24))(v227);
  }

  sub_2366F8F68(v526, v219, *(v36 + 168), *(v36 + 176), *(v36 + 184), *(v36 + 192), *(v36 + 200), *(v36 + 208), *(v36 + 216), *(v36 + 224), *(v36 + 232), *(v36 + 240), (v36 + 248), (v36 + 256), *(v36 + 304), a3, v229, v228);
  if (v229 != __src)
  {
    (*(a3 + 32))(v229);
  }

  v230 = sub_2366FAB28(*(v36 + 60), *(v36 + 168));
  v231 = __src;
  if (v230 > v535)
  {
    v231 = (*(a3 + 24))(v230, __src);
  }

  sub_2366FAB3C(v36, v231);
  if ((*(v36 + 168) & 0x80000000) == 0)
  {
    v232 = *(v36 + 176);
    v233 = -1;
    do
    {
      *v232++ += *(v36 + 96);
      v234 = *(v36 + 168);
      ++v233;
    }

    while (v233 < v234);
    if (v234 >= 1)
    {
      v235 = 0;
      v236 = *(v36 + 184);
      v237 = *(v36 + 200);
      v238 = *v236;
      do
      {
        v239 = v235++;
        v240 = v236[v235];
        v241 = v240 - v238;
        if (v240 > v238)
        {
          v242 = (*(v36 + 192) + 4 * v238);
          do
          {
            *v242++ += *(v36 + 96);
            --v241;
          }

          while (v241);
        }

        v243 = *(v237 + 8 * v239);
        v244 = *(v237 + 8 * v235);
        v319 = v244 <= v243;
        v245 = v244 - v243;
        if (!v319)
        {
          v246 = (*(v36 + 208) + 4 * v243);
          do
          {
            *v246++ += *(v36 + 96);
            --v245;
          }

          while (v245);
        }

        v238 = v240;
      }

      while (v235 < *(v36 + 168));
    }
  }

  if (v526 == 83)
  {
    LODWORD(v247) = *(v36 + 96);
    v248 = *(v36 + 60) - *(v36 + 100);
    if (v248 > v247)
    {
      v249 = *(v36 + 304) - 4;
      do
      {
        *(v249 + 4 * v248) = *(v249 + 4 * v248 - 4 * v247);
        v247 = *(v36 + 96);
        --v248;
      }

      while (v248 > v247);
    }
  }

  v250 = (*(a3 + 24))(8 * *v540 + 16);
  *(v36 + 312) = v250;
  v251 = *v540;
  v252 = *&v540[4];
  v253 = *&v540[8];
  v254 = *&v540[16];
  v255 = v250 + 2;
  bzero(v250 + 2, 8 * *v540);
  if (v252 >= 1)
  {
    v256 = 0;
    v257 = *(v36 + 144);
    v258 = *(v36 + 96);
    do
    {
      v259 = *(v257 + 4 * v256);
      if (v259 >= v258 && v259 < *(v36 + 60) - *(v36 + 100))
      {
        v260 = (v253 + 8 * v256);
        v261 = *v260;
        v262 = v260[1];
        while (v261 < v262)
        {
          v263 = *(v254 + 4 * v261);
          if ((v263 & 0x80000000) == 0 && v263 < v251)
          {
            v264 = *(*(v36 + 136) + 4 * v263);
            if (v264 <= v259)
            {
              ++v255[v264];
              v262 = v260[1];
            }
          }

          ++v261;
        }
      }

      ++v256;
    }

    while (v256 != v252);
  }

  v250[1] = 0;
  v265 = v250 + 1;
  if (v251 >= 1)
  {
    v266 = 0;
    v267 = v251;
    do
    {
      v266 += *v255;
      *v255++ = v266;
      --v267;
    }

    while (v267);
  }

  v268 = v265[v251];
  v269 = (*(a3 + 24))(12 * v268 + 8);
  v270 = (v269 + 4 * v268 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v36 + 320) = v269;
  *(v36 + 328) = v270;
  *v250 = 0;
  if (v252 > 0)
  {
    v271 = 0;
    v272 = *(v36 + 144);
    do
    {
      v273 = *(v272 + 4 * v271);
      if (v273 >= *(v36 + 96) && v273 < *(v36 + 60) - *(v36 + 100))
      {
        v274 = (v253 + 8 * v271);
        v275 = *v274;
        v276 = v274[1];
        while (v275 < v276)
        {
          v277 = *(v254 + 4 * v275);
          if ((v277 & 0x80000000) == 0 && v277 < v251)
          {
            v278 = *(*(v36 + 136) + 4 * v277);
            if (v278 <= v273)
            {
              v279 = v265[v278];
              *(v269 + 4 * v279) = v273;
              *(v270 + 8 * v279) = v275;
              ++v265[v278];
              v276 = v274[1];
            }
          }

          ++v275;
        }
      }

      ++v271;
    }

    while (v271 != v252);
  }

  v280 = *(v36 + 168);
  if (v280 < 1)
  {
    v282 = 0;
  }

  else
  {
    v281 = 0;
    v282 = 0;
    v283 = *(v36 + 176);
    v284 = *v283;
    do
    {
      v285 = v283[++v281];
      if (v284 < v285)
      {
        v286 = *(v36 + 312);
        v287 = v284;
        v288 = *(v286 + 8 * v284);
        do
        {
          *(v286 + 8 * v287++) = v282;
          v289 = *(v286 + 8 * v287);
          if (v288 < v289)
          {
            do
            {
              v290 = *(v269 + 4 * v288);
              if (v290 >= v283[v281])
              {
                *(v269 + 4 * v282) = v290;
                *(v270 + 8 * v282++) = *(v270 + 8 * v288);
                v289 = *(v286 + 8 * v287);
              }

              ++v288;
            }

            while (v288 < v289);
            v285 = v283[v281];
          }

          v288 = v289;
        }

        while (v287 < v285);
        v280 = *(v36 + 168);
      }

      v284 = v285;
    }

    while (v281 < v280);
  }

  *(*(v36 + 312) + 8 * (*(v36 + 60) - *(v36 + 100))) = v282;
  v291 = sub_2366FB334(v280);
  if (v535 >= v291)
  {
    sub_2366FB348(v36, __src);
  }

  else
  {
    v292 = (*(a3 + 24))(v291);
    sub_2366FB348(v36, v292);
    if (v292 != __src)
    {
      (*(a3 + 32))(v292);
    }
  }

  *__str = *v540;
  *&__str[16] = *&v540[16];
  if (sub_2368124D8(__str, *(v36 + 88), *(v36 + 92), *(v36 + 96), *(v36 + 100), *(v36 + 104), *(v36 + 112), *(v36 + 136), *(v36 + 160), *(v36 + 120), (v36 + 128), a3))
  {
    (*(a3 + 32))(*(v36 + 112));
    (*(a3 + 32))(v36);
LABEL_267:
    v111 = 0;
LABEL_268:
    v293 = a3;
LABEL_269:
    v294 = v537;
    goto LABEL_270;
  }

  v427 = 0;
  v428 = 0;
  v429 = 0;
  v111 = v36;
  *(v36 + 288) = 0;
  *(v36 + 296) = 0;
  v430 = *(v36 + 168) & ~(*(v36 + 168) >> 31);
  v431 = v540[28];
  v293 = a3;
  v294 = v537;
  while (v430 != v429)
  {
    v432 = (*(*(v36 + 176) + 4 * v429 + 4) - *(*(v36 + 176) + 4 * v429)) * v431;
    v433 = *(*(v36 + 184) + 8 * v429);
    v434 = *(*(v36 + 184) + 8 * v429 + 8);
    v435 = __OFSUB__(v434, v433);
    v436 = v434 - v433;
    if (v436 >= 0)
    {
      v437 = v436;
    }

    else
    {
      v437 = -v436;
    }

    v438 = (v437 * v431) >> 64;
    v439 = v437 * v431;
    if (v436 < 0 != v435)
    {
      v440 = -v439;
    }

    else
    {
      v440 = v437 * v431;
    }

    v441 = v438 != 0;
    v435 = __OFADD__(v432, v440);
    v442 = v432 + v440;
    v443 = v435;
    v445 = *(*(v36 + 200) + 8 * v429);
    v444 = *(*(v36 + 200) + 8 * v429 + 8);
    v446 = __OFSUB__(v444, v445);
    v447 = v444 - v445;
    if (v447 >= 0)
    {
      v448 = v447;
    }

    else
    {
      v448 = -v447;
    }

    v449 = (v448 * v431) >> 64;
    v450 = v448 * v431;
    if (v447 < 0 != v446)
    {
      v451 = -v450;
    }

    else
    {
      v451 = v450;
    }

    v452 = v449 != 0;
    v453 = v432 + v451;
    v454 = __OFADD__(v432, v451);
    v455 = (v442 * v432) >> 64 != (v442 * v432) >> 63;
    v435 = __OFADD__(v428, v442 * v432);
    v428 += v442 * v432;
    v456 = v435;
    v457 = v453 - v432;
    v458 = (v453 - v432) * v432;
    v459 = (v457 * v432) >> 64 != v458 >> 63;
    v435 = __OFADD__(v427, v458);
    v427 += v458;
    v460 = v435;
    *(v36 + 288) = v428;
    *(v36 + 296) = v427;
    if (!v441 && v439 <= (v436 >> 63) + 0x7FFFFFFFFFFFFFFFLL && (v443 & 1) == 0 && !v452 && v450 <= (v447 >> 63) + 0x7FFFFFFFFFFFFFFFLL && !v454 && !v455 && (v456 & 1) == 0 && !v459)
    {
      ++v429;
      if (!v460)
      {
        continue;
      }
    }

    v461 = *(a3 + 40);
    if (!v461)
    {
      v471 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v471)
      {
        sub_23672AF30(v471, v472, v473, v474, v475, v476, v477, v478);
      }

      _SparseTrap();
    }

    memset(&__str[36], 0, 220);
    strcpy(__str, "factor size calculation overflowed\n");
    v461(__str, v450, v36, v456, v455, v459, v452);
    (*(a3 + 32))(v36);
    v111 = 0;
    v112 = -3;
    goto LABEL_113;
  }

LABEL_270:
  v525 = v111;
  if (v294)
  {
    (*(v293 + 32))();
    v293 = a3;
    v111 = v525;
  }

  if (!v111)
  {
    return (*(v293 + 32))(__src);
  }

  v295 = *(v527 + 28);
  v296 = *(v111 + 168);
  if (v296 >= 0)
  {
    v297 = v296;
  }

  else
  {
    v297 = -v296;
  }

  v298 = 8 * v297;
  if (v296 < 0)
  {
    v298 = -8 * v297;
  }

  v299 = v298 + 40;
  v300 = v298 >= 0xFFFFFFFFFFFFFFD8 || v296 < 0;
  v530 = (v295 * v295);
  v301 = *(v111 + 336);
  v302 = MEMORY[0x277D85FA0];
  if (v301 < 1)
  {
    v306 = 0;
    v305 = 0;
    v348 = 0;
    v347 = 0;
  }

  else
  {
    v515 = v297;
    v516 = *(v111 + 168);
    v517 = v298 + 40;
    v303 = 0;
    v304 = 0;
    v305 = 0;
    v306 = 0;
    v307 = *(v111 + 344);
    v308 = *(v111 + 384);
    v518 = *(v527 + 28);
    v523 = (2 * v295);
    v309 = *MEMORY[0x277D85FA0] - 1;
    v310 = -*MEMORY[0x277D85FA0];
    v313 = *v307;
    v311 = v307 + 1;
    v312 = v313;
    do
    {
      v533 = *v311;
      v314 = *v311;
      v315 = *v308;
      v536 = v308 + 1;
      v538 = v311 + 1;
      v316 = *v308 >> 63;
      v539 = 0;
      v317 = sub_23681EB64(v315, v316, v530, 0, &v539);
      if ((v318 << 63 >> 63) ^ v318 | v539)
      {
        v319 = 1;
      }

      else
      {
        v319 = v318 << 63 >> 63 == -1;
      }

      v320 = v319;
      v321 = v300 | v320;
      if ((v526 & 0xFE) == 0x52)
      {
        v322 = *(v525[22] + 4 * v314) - *(v525[22] + 4 * v312);
        v323 = v523 * v322;
        v321 |= ((((v322 * v523) >> 64) + (v322 >> 63) * v523) << 63) >> 63 == -1;
      }

      else
      {
        v323 = 0;
      }

      v324 = 0;
      if (v314 - v312 < 0)
      {
        v329 = 0;
        v330 = 0;
        v331 = 0;
        v328 = 1;
      }

      else
      {
        v325 = 24 * (v314 - v312);
        v326 = v325 + 4 * v323;
        v327 = __CFADD__(v325, 4 * v323);
        v328 = 1;
        v329 = 0;
        v330 = 0;
        if (v323 >> 62)
        {
          v331 = 0;
        }

        else
        {
          v331 = 0;
          if (!v327)
          {
            v331 = v326 + 4 * v317;
            v332 = __CFADD__(v326, 4 * v317);
            if (v317 >> 62)
            {
              v324 = 0;
              v329 = 0;
              v330 = 0;
            }

            else
            {
              v330 = v326 + 8 * v317;
              v333 = __CFADD__(v326, 8 * v317);
              v334 = v317 >> 60 != 0;
              v335 = __CFADD__(v326, 16 * v317);
              v336 = v326 + 16 * v317;
              if (v335)
              {
                v334 = 1;
              }

              v337 = !v333;
              if (v333)
              {
                v338 = 0;
              }

              else
              {
                v338 = v336;
              }

              if (v337)
              {
                v339 = v330;
              }

              else
              {
                v339 = 0;
              }

              if (!v337)
              {
                v334 = 1;
              }

              if (v317 >> 61)
              {
                v338 = 0;
                v339 = 0;
                v340 = 1;
              }

              else
              {
                v340 = v334;
              }

              v341 = !v332;
              if (v332)
              {
                v324 = 0;
              }

              else
              {
                v324 = v338;
              }

              if (v341)
              {
                v329 = v339;
              }

              else
              {
                v329 = 0;
              }

              if (v341)
              {
                v328 = v340;
              }

              else
              {
                v330 = 0;
                v328 = 1;
              }
            }
          }
        }
      }

      v342 = v328 | v321 & 1;
      v343 = (v331 + v309) & v310;
      v344 = (v330 + v309) & v310;
      v345 = (v329 + v309) & v310;
      v346 = (v324 + v309) & v310;
      v335 = __CFADD__(v304, v346);
      v304 += v346;
      if (v335)
      {
        v342 = 1;
      }

      v335 = __CFADD__(v303, v345);
      v303 += v345;
      if (v335)
      {
        v342 = 1;
      }

      v335 = __CFADD__(v306, v344);
      v306 += v344;
      if (v335)
      {
        v342 = 1;
      }

      v335 = __CFADD__(v305, v343);
      v305 += v343;
      if (v335)
      {
        v300 = 1;
      }

      else
      {
        v300 = v342;
      }

      v308 = v536;
      v312 = v533;
      --v301;
      v311 = v538;
    }

    while (v301);
    v347 = (v303 + 1) >> 1;
    v348 = (v304 + 1) >> 1;
    v293 = a3;
    v111 = v525;
    v302 = MEMORY[0x277D85FA0];
    v295 = v518;
    v299 = v517;
    v296 = v516;
    v297 = v515;
  }

  if (v305 > v347)
  {
    v347 = v305;
  }

  if (v306 > v348)
  {
    v348 = v306;
  }

  v319 = v296 < 0;
  v349 = v296 < 0;
  v350 = 16 * v297;
  if (v319)
  {
    v350 = -v350;
  }

  v335 = __CFADD__(v350, 32);
  v351 = v350 + 32;
  if (v335)
  {
    v349 = 1;
  }

  v335 = __CFADD__(v351, v299);
  v352 = v351 + v299;
  v353 = v335;
  if (v349)
  {
    v352 = v299;
  }

  v354 = (v349 || v300) | v353;
  if (v526 == 83)
  {
    v355 = v354;
  }

  else
  {
    v355 = v300;
  }

  if (v526 == 83)
  {
    v356 = v352;
  }

  else
  {
    v356 = v299;
  }

  v357 = *(*(v111 + 120) + 8 * *(v111 + 60));
  v358 = v357 * v530;
  v359 = v355 || (v357 * v530) >> 64 != (v357 * v530) >> 63;
  if (v295 == 1)
  {
    v360 = 0;
  }

  else
  {
    v360 = 4 * v295 * (*(v111 + 100) + *(v111 + 96)) + 8;
  }

  v335 = __CFADD__(v356, v360);
  v361 = v356 + v360;
  if (v335)
  {
    v362 = (v360 >> 63) + 1;
  }

  else
  {
    v362 = v360 >> 63;
  }

  v364 = v362 << 63 >> 63 != v362 || v362 << 63 >> 63 == -1;
  v335 = __CFADD__(*v302, v361);
  v365 = *v302 + v361;
  if (v335)
  {
    v364 = 1;
  }

  v366 = v359 || v364;
  v367 = *(v111 + 56);
  v368 = v358 >> 63;
  v335 = __CFADD__(v358, 2 * v367);
  v369 = v358 + 2 * v367;
  if (v335)
  {
    v370 = v368 + 1;
  }

  else
  {
    v370 = v368;
  }

  v371 = v370 << 63 >> 63;
  v372 = v371 != v370;
  if (v366 || ((*(v111 + 56) >> 63) & 1) != 0 || v372 || v371 < 0 || (v373 = 4 * v369 + 144, v369 >> 62) || 4 * v369 >= 0xFFFFFFFFFFFFFF70 || ((v335 = __CFADD__(v373, v365), v374 = v373 + v365, !v335) ? (v375 = 0) : (v375 = 1), (v335 = __CFADD__(v347, v374), v376 = v347 + v374, !v335) ? (v377 = 0) : (v377 = 1), (*(a5 + 56) = v376, (v375 & 1) != 0) || (v377 & 1) != 0 || (v378 = 8 * v369 + 144, v369 >> 61) || 8 * v369 >= 0xFFFFFFFFFFFFFF70 || ((v335 = __CFADD__(v378, v365), v379 = v378 + v365, !v335) ? (v380 = 0) : (v380 = 1), (v381 = v348 + v379, !__CFADD__(v348, v379)) ? (v382 = 0) : (v382 = 1), (*(a5 + 64) = v381, (v380 & 1) != 0) || v382)))
  {
    v395 = *(v293 + 40);
    if (!v395)
    {
      v396 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v396)
      {
        sub_23672AFE4(v396, v397, v398, v399, v400, v401, v402, v403);
      }

      _SparseTrap();
    }

    memset(&__str[40], 0, 216);
    strcpy(__str, "Computation of factor size overflowed.\n");
    v395(__str);
    (*(a3 + 32))(__src);
    return sub_23680EF08(v525, a3);
  }

  else
  {
    v383 = *(v111 + 64);
    *(v111 + 392) = 8;
    v384 = *(v111 + 56);
    if (v384 >= 0)
    {
      v385 = v384;
    }

    else
    {
      v385 = -v384;
    }

    v386 = 8 * (v385 + 2 * v385);
    if (v384 < 0)
    {
      v386 = -8 * (v385 + 2 * v385);
    }

    v387 = v386 + 48;
    v388 = v386 >= 0xFFFFFFFFFFFFFFD0;
    if (v526 == 82)
    {
      v319 = v384 < 0;
      v389 = v384 < 0;
      v390 = 4 * v385;
      if (v319)
      {
        v390 = -v390;
      }

      v335 = __CFADD__(v390, 8);
      v391 = v390 + 8;
      if (v335)
      {
        v389 = 1;
      }

      v335 = __CFADD__(v391, v387);
      v392 = v391 + v387;
      v393 = v335;
      if (!v389)
      {
        v387 = v392;
      }

      LOBYTE(v394) = v389 | v393;
    }

    else
    {
      v394 = v384 >> 31;
    }

    v404 = 0;
    v405 = v388 | v394;
    v406 = *(v111 + 52);
    v407 = v406 < 0;
    if (v406 >= 0)
    {
      v408 = v406;
    }

    else
    {
      v408 = -v406;
    }

    v409 = !is_mul_ok(v408, v387);
    v410 = v408 * v387;
    if (!(v408 * v387))
    {
      v407 = 0;
    }

    v411 = 1;
    if (!v409 && !v407)
    {
      v404 = 0;
      if (v406 >= 0)
      {
        v412 = v410;
      }

      else
      {
        v412 = -v410;
      }

      v413 = *(v111 + 168);
      if (v413 >= 0)
      {
        v414 = *(v111 + 168);
      }

      else
      {
        v414 = -v413;
      }

      v415 = 8 * v414;
      if (v413 < 0)
      {
        v415 = -v415;
      }

      v335 = __CFADD__(v412, v415);
      v416 = v412 + v415;
      v417 = v335;
      v411 = 1;
      if ((v413 & 0x80000000) == 0 && (v417 & 1) == 0)
      {
        v404 = v416 + 8;
        v411 = v416 >= 0xFFFFFFFFFFFFFFF8;
      }
    }

    v418 = v411 | v405 & 1;
    if (v406 >= 2)
    {
      v419 = *(v111 + 336);
      if (v419 >= 0)
      {
        v420 = *(v111 + 336);
      }

      else
      {
        v420 = -v419;
      }

      v421 = 40 * v420;
      if (v419 < 0)
      {
        v421 = -v421;
      }

      v422 = v404 + v421;
      v423 = __CFADD__(v404, v421);
      v424 = 1;
      if ((v419 & 0x80000000) == 0 && !v423)
      {
        v425 = v422 + 49152;
        if (v422 >= 0xFFFFFFFFFFFF4000 || (v335 = __CFADD__(v425, 16 * v408), v426 = v425 + 16 * v408, v335))
        {
          v424 = 1;
        }

        else
        {
          v404 = v426 + 24;
          v424 = v426 >= 0xFFFFFFFFFFFFFFE8;
        }
      }

      v418 |= v424;
    }

    v479 = 12 * v383 + 16;
    if (v479 <= v404)
    {
      v479 = v404;
    }

    *(a5 + 40) = v479;
    *(a5 + 48) = v479;
    if (v418)
    {
      v480 = *(v293 + 40);
      if (!v480)
      {
        v499 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v499)
        {
          sub_23672AFA8(v499, v500, v501, v502, v503, v504, v505, v506);
        }

        _SparseTrap();
      }

      memset(&__str[73], 0, 183);
      strcpy(__str, "Computation of workspace required for numeric factorization overflowed.\n");
      v480(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_119;
    }

    v481 = 2 * v479;
    if (2 * v479 <= v541 || ((*(v293 + 32))(__src), __src = (*(a3 + 24))(v481), v111 = v525, __src))
    {
      *(a5 + 8) = 0;
      *(a5 + 32) = v111;
      v482 = sub_23671D5A0(v526, *(a5 + 24), v111, 2 * v381, a4, 0);
      if (v482)
      {
        v483 = __src;
        *v522 = v482;
        if (v520)
        {
          v484 = *(v527 + 28);
          v485 = *v527;
          if (v485 >= 1)
          {
            v486 = 0;
            for (i = 0; i != v485; ++i)
            {
              if (v484)
              {
                v488 = (*(v482 + 96) + v486);
                v489 = &v520[*(v525[19] + 4 * i) * v484];
                v490 = v484;
                do
                {
                  v491 = *v489++;
                  *v488++ = v491;
                  --v490;
                }

                while (v490);
              }

              v486 += 8 * v484;
            }
          }

          v492 = v527[1];
          if (v492 >= 1)
          {
            v493 = 0;
            for (j = 0; j != v492; ++j)
            {
              if (v484)
              {
                v495 = (*(v482 + 104) + v493);
                v496 = &v519[*(v525[20] + 4 * j) * v484];
                v497 = v484;
                do
                {
                  v498 = *v496++;
                  *v495++ = v498;
                  --v497;
                }

                while (v497);
              }

              v493 += 8 * v484;
            }
          }

          (*(a3 + 32))(v520, v519, v525, __src);
          v483 = __src;
        }

        _SparseRefactorLU_Complex_Double(v527, a5, a4, v483);
        (*(a3 + 32))(__src);
        return sub_23671E4F8(a5);
      }

      else
      {
        return (*(a3 + 32))(__src);
      }
    }

    else
    {
      if (!*(a3 + 40))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2366F716C();
        }

        _SparseTrap();
      }

      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v481);
      return (*(a3 + 40))(__str);
    }
  }
}

uint64_t sub_236720B94(unint64_t a1, unint64_t a2, unint64_t *a3)
{
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  if (sub_23676C5D0(a1, &v56) & 1) != 0 || (sub_236710A14(&v55, a1, a1) & 1) != 0 || (sub_2367D4EC0(&v54, a1, a1, a1))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_236750F80(&v53, a1, a1);
  }

  v7 = v56;
  v8 = v56 + 16 * (a1 + 2);
  v9 = __CFADD__(v56, 16 * (a1 + 2));
  v10 = 1;
  if (!((a1 + 2) >> 60) && !v9)
  {
    v11 = __CFADD__(v8, 4 * a2);
    v12 = v8 + 4 * a2;
    v13 = v11;
    if (!(a2 >> 62) && !v13)
    {
      v7 = v12 + 32;
      v10 = v12 >= 0xFFFFFFFFFFFFFFE0;
    }
  }

  v14 = 0;
  v15 = v7 + 8 * (a1 + 1);
  v16 = __CFADD__(v7, 8 * (a1 + 1));
  v17 = 1;
  if (!((a1 + 1) >> 61) && !v16)
  {
    v11 = __CFADD__(v15, 4 * a2);
    v18 = v15 + 4 * a2;
    v19 = v11;
    if (a2 >> 62)
    {
      v14 = 0;
    }

    else
    {
      v11 = __CFADD__(v18, 16);
      v20 = v18 + 16;
      v21 = v11;
      v22 = (v19 & 1) == 0;
      if (v19)
      {
        v14 = 0;
      }

      else
      {
        v14 = v20;
      }

      if (v22)
      {
        v17 = v21;
      }

      else
      {
        v17 = 1;
      }
    }
  }

  v23 = v54;
  v24 = a1 + 2;
  v25 = (((a1 >= 0xFFFFFFFFFFFFFFFELL) << 63) >> 63) ^ (a1 >= 0xFFFFFFFFFFFFFFFELL);
  if (v25)
  {
    v25 = 0;
    v26 = 1;
  }

  else
  {
    v27 = a1 + 2 * a2;
    v28 = __CFADD__(a1, 2 * a2);
    v26 = 1;
    if ((a2 & 0x8000000000000000) == 0 && !v28)
    {
      v29 = v27 >> 62;
      v30 = 4 * v27;
      v11 = __CFADD__(v30, 8 * v24);
      v31 = v30 + 8 * v24;
      v32 = v11;
      v33 = v24 >> 61;
      v11 = __CFADD__(v31, 24);
      v34 = v31 + 24;
      v35 = v11;
      if (v32)
      {
        v34 = 0;
        v36 = 1;
      }

      else
      {
        v36 = v35;
      }

      v37 = v33 == 0;
      if (v33)
      {
        v38 = 0;
      }

      else
      {
        v38 = v34;
      }

      if (v37)
      {
        v39 = v36;
      }

      else
      {
        v39 = 1;
      }

      v40 = v29 == 0;
      if (v29)
      {
        v25 = 0;
      }

      else
      {
        v25 = v38;
      }

      if (v40)
      {
        v26 = v39;
      }

      else
      {
        v26 = 1;
      }
    }
  }

  v41 = a1 >> 62 != 0;
  v42 = v54 + 4 * a1;
  if (__CFADD__(v54, 4 * a1))
  {
    v41 = 1;
  }

  v11 = __CFADD__(v42, 8);
  v43 = v42 + 8;
  v44 = v11 || v41;
  if (!v41)
  {
    v23 = v43;
  }

  v45 = v6 | v10 | v17 | v26 | v44;
  v46 = v53;
  if (v23 > v53)
  {
    v46 = v23;
  }

  if (v55 > v46)
  {
    v46 = v55;
  }

  if (v25 > v46)
  {
    v46 = v25;
  }

  v11 = __CFADD__(v14, v46);
  v47 = v14 + v46;
  v48 = v11;
  v49 = v45 | v48;
  if (v7 <= v47)
  {
    v7 = v47;
  }

  v11 = __CFADD__(v7, 8);
  v50 = v7 + 8;
  v51 = v11;
  *a3 = v50;
  return v49 | v51;
}

uint64_t _SparseUpdatePartialRefactorLU_Complex_Double(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v194 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = *(a1 + 80);
  v7 = *(a1 + 25);
  v8 = *(a4 + 28);
  v166 = v8;
  v9 = *(v5 + 168);
  v10 = *(v5 + 56);
  v11 = 8 * v9 + 16 * v10 + 4 * (9 * v10 + v9);
  v12 = v9 + 8 * v10 + 8 * v9 + 40 * *(v5 + 336) + (v11 + 120) * *(v5 + 52) + 49208;
  v13 = (*(v5 + 24))(v12);
  v14 = *(v5 + 56);
  v15 = (4 * v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = v13 + v15;
  v142 = v14;
  if (*(v5 + 168) >= 1)
  {
    v17 = 0;
    v18 = v6[14];
    v19 = *(v5 + 176);
    while (1)
    {
      if (v7 == 83)
      {
        v20 = *(v6[9] + 4 * v17);
        v21 = *(v6[10] + 4 * v17);
        v22 = *(v6[11] + 4 * v17);
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
      }

      v23 = v17 + 1;
      v24 = v20 + (*(v19 + 4 * (v17 + 1)) - *(v19 + 4 * v17)) * v8;
      if (v7 == 83)
      {
        v25 = *(v6[8] + 4 * v17);
      }

      else
      {
        v25 = v24;
        if (v7 == 81)
        {
          if (v24 >= 1)
          {
            v26 = 0;
            do
            {
              *(v13 + 4 * (v26 + *(v19 + 4 * v17) * v8)) = v17;
              *(v16 + 4 * (v26 + *(v19 + 4 * v17) * v8)) = v17;
              ++v26;
            }

            while (v24 != v26);
          }

          goto LABEL_16;
        }
      }

      if (v25 >= 1)
      {
        v27 = v24;
        v28 = v24 + v21 + (*(*(v5 + 184) + 8 * v23) - *(*(v5 + 184) + 8 * v17)) * v8;
        v29 = v25;
        v30 = *(v18 + 8 * v17) + 8;
        v31 = 16 * (v22 + (*(*(v5 + 200) + 8 * v23) - *(*(v5 + 200) + 8 * v17)) * v8) + 16 * v28;
        v32 = (v30 + (v31 | 4) * v27 + 4 * v21);
        v33 = (v30 + v31 * v27);
        do
        {
          v34 = *v33++;
          *(v13 + 4 * v34) = v17;
          v35 = *v32++;
          *(v16 + 4 * v35) = v17;
          --v29;
        }

        while (v29);
      }

LABEL_16:
      ++v17;
      if (v23 >= *(v5 + 168))
      {
        v14 = *(v5 + 56);
        break;
      }
    }
  }

  memset(__str, 0, sizeof(__str));
  v175 = 0;
  v176 = v5;
  v167[0] = v5;
  sub_23672A590(v165, v14, __str, v167);
  if (*__str)
  {
    *&__str[8] = *__str;
    (*(v176 + 32))();
  }

  v36 = *(v5 + 56);
  memset(__str, 0, sizeof(__str));
  v175 = 0;
  v176 = v5;
  v167[0] = v5;
  sub_23672A590(v164, v36, __str, v167);
  v140 = v12;
  v141 = v11;
  v148 = v7;
  v150 = v6;
  if (*__str)
  {
    *&__str[8] = *__str;
    (*(v176 + 32))();
  }

  v139 = v15;
  v37 = (v16 + v15);
  v149 = *(v5 + 168);
  bzero(v37, v149);
  if (a2 >= 1)
  {
    v38 = 0;
    v39 = (v8 * v8);
    v40 = 16 * v39;
    v152 = a2;
    v146 = -16 * v39;
    while (1)
    {
      v41 = (a3 + 8 * v38);
      v43 = *v41;
      v42 = v41[1];
      v44 = v43 / v166;
      v45 = v42 / v166;
      v46 = *(*(v5 + 136) + 4 * (v43 / v166));
      v47 = *(*(v5 + 144) + 4 * (v42 / v166));
      v48 = v43 % v166 + v46 * v166;
      LODWORD(v167[0]) = v48;
      v49 = v42 % v166 + v47 * v166;
      LODWORD(v163[0]) = v49;
      v50 = *(v5 + 72);
      if (v50 && (*(v50 + v43) & 1) != 0)
      {
        goto LABEL_58;
      }

      v51 = *(v5 + 80);
      if (v51)
      {
        if (*(v51 + v42))
        {
          goto LABEL_58;
        }
      }

      if (v47 < *(v5 + 96))
      {
        goto LABEL_35;
      }

      if (v47 >= *(v5 + 60) - *(v5 + 100))
      {
        goto LABEL_35;
      }

      v52 = *(v5 + 112);
      do
      {
        v54 = *v52++;
        v53 = v54;
      }

      while (v47 >= v54);
      if (v46 >= v53)
      {
LABEL_35:
        v59 = (*(v5 + 120) + 8 * v47);
        v61 = *v59;
        v60 = v59[1];
        v62 = v60 <= v61;
        v63 = v60 - v61;
        if (v62)
        {
LABEL_39:
          v67 = 0;
        }

        else
        {
          v64 = v146 * v61;
          v65 = (*(v5 + 128) + 4 * v61);
          while (1)
          {
            v66 = *v65++;
            if (v66 == v44)
            {
              break;
            }

            v64 -= v40;
            if (!--v63)
            {
              goto LABEL_39;
            }
          }

          v67 = (*(v150 + 40) - v64);
        }

        v68 = (*(a4 + 8) + 8 * v45);
        v70 = *v68;
        v69 = v68[1];
        v62 = v69 <= v70;
        v71 = v69 - v70;
        if (v62)
        {
LABEL_45:
          v75 = 0;
        }

        else
        {
          v72 = v146 * v70;
          v73 = (*(a4 + 16) + 4 * v70);
          while (1)
          {
            v74 = *v73++;
            if (v74 == v44)
            {
              break;
            }

            v72 -= v40;
            if (!--v71)
            {
              goto LABEL_45;
            }
          }

          v75 = (*(a4 + 32) - v72);
        }

        memcpy(v67, v75, v40);
        if (v46 == v47)
        {
          if (v166 == 1)
          {
            *v67 = sub_23681E17C(1.0, 0.0, *v67, v67[1]);
            *(v67 + 1) = v76;
          }

          else
          {
            LODWORD(v162[0]) = 0;
            zgetrf_NEWLAPACK();
          }
        }

        goto LABEL_58;
      }

      v55 = *(v13 + 4 * v48);
      v56 = *(v16 + 4 * v49);
      if (v55 < v56)
      {
        break;
      }

      if (v55 > v56)
      {
        v57 = v165[0] + 32 * v56;
        v58 = v167;
        goto LABEL_53;
      }

LABEL_54:
      if (v55 <= v56)
      {
        v77 = v56;
      }

      else
      {
        v77 = v55;
      }

      v37[v77] = 1;
LABEL_58:
      if (++v38 == v152)
      {
        goto LABEL_59;
      }
    }

    v57 = v164[0] + 32 * v55;
    v58 = v163;
LABEL_53:
    sub_236725158(v57, v58);
    goto LABEL_54;
  }

LABEL_59:
  v155 = &v37[(v149 + 7) & 0xFFFFFFFFFFFFFFF8];
  v78 = *(v5 + 168);
  if (v78 >= 1)
  {
    for (i = 0; i != v78; ++i)
    {
      if ((v37[i] & 1) == 0)
      {
        v80 = (*(v5 + 240) + 8 * i);
        v82 = *v80;
        v81 = v80[1];
        v62 = v81 <= v82;
        v83 = v81 - v82;
        if (!v62)
        {
          v84 = (*(v5 + 248) + 4 * v82);
          while (1)
          {
            v85 = *v84++;
            if (v37[v85] == 1)
            {
              break;
            }

            if (!--v83)
            {
              goto LABEL_68;
            }
          }

          v37[i] = 1;
        }
      }

LABEL_68:
      ;
    }
  }

  v153 = v142 & 0x3FFFFFFFFFFFFFFFLL;
  v86 = v78;
  v87 = 8 * v78;
  v88 = &v155[v87];
  bzero(v155, v87);
  v89 = *(v5 + 52);
  if (v89 != 1)
  {
    _X0 = 0;
    LODWORD(v167[0]) = *(v5 + 52);
    atomic_store(0, v167 + 1);
    atomic_store(0, (v167 | 0xC));
    atomic_store(0, v168);
    v107 = v169;
    do
    {
      _X5 = v170;
      __asm { CASPAL          X4, X5, X0, X1, [X19] }

      _ZF = _X4 == v107;
      v107 = _X4;
    }

    while (!_ZF);
    v171 = v141 + 104;
    v172 = &v155[v87];
    v173 = 0;
    v114 = &v88[40 * *(v5 + 336) + (((v141 + 104) * v89 + 7) & 0xFFFFFFFFFFFFFFF8)];
    __str[0] = v148;
    *&__str[8] = a4;
    v175 = v5;
    LODWORD(v176) = v166;
    v177 = v150;
    v178 = &v37[(v149 + 7) & 0xFFFFFFFFFFFFFFF8];
    v179 = 0;
    v180 = &v88[((v141 + 104) * v89 + 7) & 0xFFFFFFFFFFFFFFF8];
    v181 = sub_2367921D4(256, v114 + 16 * v89);
    v182 = v115;
    __p[0] = 0;
    __p[1] = 0;
    v184 = 0;
    v185 = v114;
    v186 = v37;
    v187 = v149;
    v188 = v13;
    v189 = v142 & 0x3FFFFFFFFFFFFFFFLL;
    v190 = v16;
    v191 = v142 & 0x3FFFFFFFFFFFFFFFLL;
    v192 = v165;
    v193 = v164;
    v173 = __str;
    if (*(v5 + 52))
    {
      v116 = 0;
      v117 = 0;
      do
      {
        *(v114 + v116 + 8) = *(v5 + 392);
        v118 = (*(v5 + 24))();
        v114 = v185;
        *(v185 + v116) = v118;
        ++v117;
        v116 += 16;
      }

      while (v117 < *(v5 + 52));
    }

    if (*(v5 + 336) >= 1)
    {
      _X22 = 0;
      v120 = 0;
      v121 = 0;
      do
      {
        v122 = v121;
        v62 = *(*(v5 + 176) + 4 * *(*(v5 + 344) + 4 * v121++)) < *(*(v5 + 112) + 4 * (v120 + 1));
        if (!v62)
        {
          ++v120;
        }

        v123 = *(*(v5 + 368) + 8 * v121) - *(*(v5 + 368) + 8 * v122);
        v124 = &v180[40 * v122];
        atomic_store(v123, v124);
        *(v124 + 2) = v122;
        *(v124 + 3) = v120;
        *(v124 + 2) = sub_23672A17C;
        if (!v123)
        {
          _X0 = 0;
          _X1 = 0;
          __asm { CASP            X0, X1, X0, X1, [X27] }

          *(v124 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
          *(v124 + 4) = 0;
          v128 = _X0 & 1;
          _X2 = v128 | v124;
          _X5 = 0;
          __asm { CASPL           X4, X5, X2, X3, [X27] }

          while (_X4 != _X0)
          {
            _X1 = 0;
            __asm { CASP            X0, X1, X22, X23, [X10] }

            *(v124 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
            *(v124 + 4) = 0;
            v128 = _X0 & 1;
            _X2 = v128 | v124;
            _X5 = 0;
            __asm { CASPL           X4, X5, X2, X3, [X10] }
          }

          if (v128)
          {
            __ulock_wake();
          }
        }
      }

      while (v121 < *(v5 + 336));
    }

    v135 = sub_2366FCD2C(v167, 1);
    v105 = v135;
    if (!v135)
    {
      if (*(v5 + 52))
      {
        v136 = 0;
        v137 = 0;
        do
        {
          (*(v5 + 32))(*(v185 + v136));
          ++v137;
          v136 += 16;
        }

        while (v137 < *(v5 + 52));
      }

      v105 = -3;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v135)
    {
      goto LABEL_106;
    }

LABEL_105:
    (*(v5 + 32))(v13);
    v105 = 0;
    goto LABEL_106;
  }

  v90 = *(v5 + 56);
  v143 = (4 * v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  *__str = &v155[v87];
  *&__str[8] = v90 & 0x3FFFFFFFFFFFFFFFLL;
  LODWORD(v175) = 1;
  bzero(v88, 4 * v90);
  v91 = *(v5 + 168);
  v167[0] = &v88[v143];
  v167[1] = v91 & 0x3FFFFFFFFFFFFFFFLL;
  v168[0] = 1;
  v145 = &v88[v143];
  v92 = 4 * v91;
  bzero(&v88[v143], 4 * v91);
  v163[0] = 0;
  v163[1] = 0;
  v162[0] = 0;
  v162[1] = 0;
  v161[0] = 0;
  v161[1] = 0;
  v160[0] = 0;
  v160[1] = 0;
  v159[0] = 0;
  v159[1] = 0;
  v93 = (*(v5 + 24))(*(v5 + 392));
  v94 = *(v5 + 392);
  v158[0] = v93;
  v158[1] = v94;
  v95 = v150;
  v96 = (v150 + 136);
  LODWORD(v94) = atomic_load((v150 + 136));
  v157 = v94;
  v97 = (v95 + 140);
  v98 = atomic_load((v95 + 140));
  v156 = v98;
  if (*(v5 + 168) < 1)
  {
LABEL_79:
    atomic_store(v157, v96);
    atomic_store(v98, v97);
    (*(v5 + 32))(v160[0]);
    (*(v5 + 32))(v159[0]);
    (*(v5 + 32))(v163[0]);
    (*(v5 + 32))(v162[0]);
    (*(v5 + 32))(v161[0]);
    goto LABEL_105;
  }

  v99 = 0;
  v100 = 0;
  v101 = 0;
  v147 = v86;
  v102 = (v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v103 = v140 - v102 - (((v149 + 7) & 0xFFFFFFFFFFFFFFF8) + 2 * v139 + v87 + v143);
  v104 = &v145[v102];
  while (1)
  {
    if (*(*(v5 + 176) + 4 * v100) >= *(*(v5 + 112) + 4 * (v101 + 1)))
    {
      ++v101;
    }

    if (v37[v100] == 1 || (sub_23672524C(v100, a4, v148, v5, v166, v150, v165, v164, v160, v159, v163, v162, v161, __str, v37, v149, v104), (v37[v100] & 1) != 0))
    {
      *(v164[0] + v99 + 8) = *(v164[0] + v99);
      *(v165[0] + v99 + 8) = *(v165[0] + v99);
      v105 = sub_236727534(v100, v101, a4, v148, v5, v166, v150, &v157, &v156, v155, v147, v163, v162, v161, __str, v167, v37, v149, v13, v153, v16, v153, v104, v103, v158, 0, 0);
      if (v105)
      {
        break;
      }
    }

    ++v100;
    v99 += 32;
    if (v100 >= *(v5 + 168))
    {
      v98 = v156;
      v96 = (v150 + 136);
      v97 = (v150 + 140);
      goto LABEL_79;
    }
  }

  (*(v5 + 32))(v160[0]);
  (*(v5 + 32))(v159[0]);
  (*(v5 + 32))(v163[0]);
  (*(v5 + 32))(v162[0]);
  (*(v5 + 32))(v161[0]);
  (*(v5 + 32))(v13);
LABEL_106:
  *__str = v164;
  sub_23672A890(__str);
  *__str = v165;
  sub_23672A890(__str);
  *a1 = v105;
  return sub_23671E4F8(a1);
}

uint64_t sub_236721ACC(int a1, unsigned int a2, uint64_t a3, int *a4, uint64_t a5, int *a6)
{
  if (a1 < 1)
  {
    return 0;
  }

  v7 = 0;
  result = 0;
  v9 = 0;
  do
  {
    v10 = a4[v7];
    if (a2 < 1)
    {
      goto LABEL_7;
    }

    v11 = (a5 + (v10 * a2));
    v12 = 1;
    v13 = a2;
    do
    {
      v14 = *v11++;
      v12 &= v14;
      --v13;
    }

    while (v13);
    if (v12)
    {
LABEL_7:
      v15 = result;
      result = (result + 1);
      v16 = a6;
    }

    else
    {
      v15 = v9++;
      v16 = a4;
    }

    v16[v15] = v10;
    ++v7;
  }

  while (v7 != a1);
  if (result >= 1)
  {
    v17 = result;
    v18 = &a4[v9];
    do
    {
      v19 = *a6++;
      *v18++ = v19;
      --v17;
    }

    while (v17);
    for (i = 0; i != a1; ++i)
    {
      *(a3 + 4 * a4[i]) = i;
    }
  }

  return result;
}

void *sub_236721B8C(void *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = result;
  v88 = *MEMORY[0x277D85DE8];
  v9 = result[1];
  v10 = *(v9 + 64);
  v11 = *(v10 + 2);
  v12 = *(v11 + 344);
  v13 = *(v12 + 4 * a2);
  v14 = (a2 << 32) + 0x100000000;
  v15 = *(v12 + (v14 >> 30));
  v16 = *(v10 + 6);
  v17 = 16 * (v16 * v16) * *(*(v11 + 384) + 8 * a2);
  if ((*v10 & 0xFE) == 0x52)
  {
    v17 += 8 * v16 * (*(*(v11 + 176) + 4 * v15) - *(*(v11 + 176) + 4 * v13));
  }

  v18 = result[5];
  v19 = *(v9 + 48);
  v20 = *(v11 + 168);
  v21 = (v17 + 24 * (v15 - v13) + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  v22 = *(v10 + 4);
  v23 = *(v10 + 5);
  v24 = *(v22 + 120) + *(v22 + 128);
  v25 = *(v10 + 6);
  v26 = (v25 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v24 < v26)
  {
LABEL_4:
    v73 = 0;
LABEL_5:
    v27 = *(v11 + 40);
    if (!v27)
    {
      v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v35)
      {
        sub_23672B110(v35, v36, v37, v38, v39, v40, v41, v42);
      }

      _SparseTrap();
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    strcpy(v74, "Failed to acquire chunkFactorStorage from pool\n");
    v75 = 0u;
    result = v27(v74);
    _X2 = 0;
    v44 = v8[1];
    atomic_store(0xFFFFFFFD, (v44 + 16));
    atomic_store(1u, (v44 + 12));
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X1] }

    if (_X2)
    {
      return __ulock_wake();
    }

    return result;
  }

  v28 = *(v10 + 6);
  atomic_compare_exchange_strong_explicit(v10 + 6, &v28, v26, memory_order_relaxed, memory_order_relaxed);
  if (v28 != v25)
  {
    do
    {
      v29 = (v28 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v24 < v29)
      {
        goto LABEL_4;
      }

      v25 = v28;
      v30 = v28;
      atomic_compare_exchange_strong_explicit(v10 + 6, &v30, v29, memory_order_relaxed, memory_order_relaxed);
      _ZF = v30 == v28;
      v28 = v30;
    }

    while (!_ZF);
  }

  v73 = v25;
  if (!v25)
  {
    goto LABEL_5;
  }

  v74[0] = 0;
  v72 = 0;
  if (v15 <= v13)
  {
    v34 = 0;
LABEL_24:
    v50 = v14 >> 32;
    v51 = *(v22 + 136);
    while (1)
    {
      v52 = *(v10 + 4);
      if (v34 <= v51)
      {
        break;
      }

      v53 = v51;
      atomic_compare_exchange_strong_explicit((v52 + 136), &v53, v34, memory_order_relaxed, memory_order_relaxed);
      _ZF = v53 == v51;
      v51 = v53;
      if (_ZF)
      {
        v52 = *(v10 + 4);
        break;
      }
    }

    v54 = *(v52 + 140);
    v55 = v72;
    do
    {
      if (v55 <= v54)
      {
        break;
      }

      v56 = v54;
      atomic_compare_exchange_strong_explicit((*(v10 + 4) + 140), &v56, v55, memory_order_relaxed, memory_order_relaxed);
      _ZF = v56 == v54;
      v54 = v56;
    }

    while (!_ZF);
    v57 = *(v10 + 2);
    v58 = *(v57 + 352);
    v59 = *(v58 + 8 * a2);
    if (v59 < *(v58 + 8 * v50))
    {
      do
      {
        v60 = (*(v10 + 7) + 40 * *(*(v57 + 360) + 4 * v59));
        if (atomic_fetch_add_explicit(v60, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v61 = v8[2];
          if (v61)
          {
            do
            {
              __asm { CASP            X4, X5, X4, X5, [X1] }

              *(v61 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
              *(v61 + 32) = 0;
              _X2 = _X4 & 1 | v61;
              _X7 = 0;
              __asm { CASPL           X6, X7, X2, X3, [X1] }
            }

            while (_X6 != _X4);
            if (_X4)
            {
              result = __ulock_wake();
            }
          }

          v8[2] = v60;
          v8[3] = 0;
        }

        ++v59;
        v57 = *(v10 + 2);
      }

      while (v59 < *(*(v57 + 352) + 8 * v50));
    }
  }

  else
  {
    v70 = (a2 << 32) + 0x100000000;
    v71 = a2;
    v32 = HIDWORD(a2);
    v33 = v25 + v21;
    while (1)
    {
      result = sub_23672201C(v13, v32, *(v10 + 1), *v10, *(v10 + 2), *(v10 + 6), *(v10 + 4), a8, v23, v20, &v73, v33, v74, &v72, v18, v19, *(v10 + 13), v8, v10);
      if (result)
      {
        break;
      }

      v13 = (v13 + 1);
      if (v15 == v13)
      {
        v22 = *(v10 + 4);
        v34 = v74[0];
        v14 = v70;
        LODWORD(a2) = v71;
        goto LABEL_24;
      }
    }

    _X2 = 0;
    v67 = v8[1];
    atomic_store(result, (v67 + 16));
    atomic_store(1u, (v67 + 12));
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X1] }

    if (_X2)
    {
      return __ulock_wake();
    }
  }

  return result;
}

uint64_t sub_236721F94(uint64_t result)
{
  v1 = *(*(*(result + 8) + 64) + 32);
  v2 = *(v1 + 128);
  if (v2 >= 134217729)
  {
    v3 = *(v1 + 120);
    v4 = v3 + v2;
    v5 = (v3 + 0x8000000);
    v6 = v2 - 0x8000000;
    do
    {
      if (v6 >= 0x8000000)
      {
        v7 = 0x8000000;
      }

      else
      {
        v7 = v6;
      }

      result = madvise(v5, v7, 3);
      v5 += 0x8000000;
      v6 -= 0x8000000;
    }

    while (v5 < v4);
  }

  return result;
}

uint64_t sub_23672201C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, int a8, uint64_t a9, int a10, unint64_t *a11, unint64_t a12, int *a13, int *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v19 = a6;
  v237 = *MEMORY[0x277D85DE8];
  v203 = *(&off_28499C270 + a4 - 81);
  v21 = *(a5 + 56);
  v22 = 4 * v21;
  v23 = (4 * v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v210 = a15 + v23;
  v24 = (a15 + v23 + v23);
  v25 = (v24 + v23);
  v26 = (v24 + v23 + v23);
  v27 = (v26 + v23);
  v28 = v26 + v23 + v23;
  if (a4 != 82)
  {
    v22 = 0;
  }

  v202 = v22;
  v226 = 0;
  v225 = 0u;
  v224 = 0u;
  v223 = 0u;
  v222 = 0u;
  v221 = 0u;
  v29 = a1;
  v30 = a1 + 1;
  v31 = *(a5 + 184);
  v32 = *(*(a5 + 176) + 4 * v30) - *(*(a5 + 176) + 4 * a1);
  v33 = v32 * a6;
  DWORD1(v221) = v32 * a6;
  v34 = *(a7[14] + 8 * a1);
  if (a4 != 82)
  {
    v28 = 0;
  }

  v201 = v28;
  *&v222 = v34 + 8;
  v35 = 8 * v30;
  v36 = 8 * a1;
  v37 = (v32 + *(v31 + 8 * v30) - *(v31 + v36)) * a6;
  v219 = v37;
  v38 = (*(*(a5 + 200) + 8 * v30) - *(*(a5 + 200) + v36)) * a6;
  v39 = v38 + v33;
  v220 = v38 + v33;
  v40 = v34 + 8 + 16 * v37 * v33;
  *(&v222 + 1) = v37;
  *&v223 = v40;
  *(&v223 + 1) = v38;
  v213 = a7;
  if (a4 == 81 || (*&v224 = v40 + 16 * v38 * v33, *(&v224 + 1) = v224 + 4 * v33, a4 != 83))
  {
    v54 = 0;
    v43 = 0;
    v47 = 0;
    v46 = 0;
    v197 = 0;
    v198 = 0;
    v55 = 0;
    v45 = 0;
    __src = 0;
    v42 = 0;
  }

  else
  {
    v41 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    sub_236722FDC(v227, a1, 1, 83, a5, a6, a7, a9, v25, v41, v27, v41);
    v42 = *&v227[8];
    v198 = *&v227[16];
    __src = *v227;
    v197 = *&v227[24];
    sub_236722FDC(v227, a1, 2, 83, a5, v19, v213, a9, v24, v41, v26, v41);
    v43 = 0;
    v44 = *v227;
    v45 = *&v227[8];
    v47 = *&v227[16];
    v46 = *&v227[24];
    a7 = v213;
    *(v213[10] + 4 * v29) = *&v227[8];
    *(v213[11] + 4 * v29) = v42;
    v48 = v213[9];
    *(v48 + 4 * v29) = 0;
    v49 = (*(a5 + 240) + 8 * v29);
    v50 = *v49;
    v51 = v49[1];
    if (v50 < v51)
    {
      v43 = 0;
      v52 = *(a5 + 256);
      do
      {
        if (*(v52 + v50) == 3)
        {
          v53 = *(*(a5 + 248) + 4 * v50);
          v43 += *(v48 + 4 * v53) + (*(*(a5 + 176) + 4 * v53 + 4) - *(*(a5 + 176) + 4 * v53)) * v19 - *(v213[8] + 4 * v53);
          *(v48 + 4 * v29) = v43;
        }

        ++v50;
      }

      while (v51 != v50);
    }

    LODWORD(v221) = v43;
    v33 = DWORD1(v221);
    v54 = 1;
    v37 = v219;
    v39 = v220;
    v55 = v44;
  }

  v204 = v42;
  v56 = v43 + v33;
  v57 = 16 * ((v39 - v33 + v42) * v56 + ((v37 + v43 + v45) * v56));
  if ((a4 & 0xFE) == 0x52)
  {
    v57 += 4 * (v45 + 2 * v56 + v42);
  }

  v58 = v57 + 8;
  v59 = (a7[14] + 8 * v29);
  v60 = *v59;
  if (*v59)
  {
    v61 = a7[15];
    if (v60 < v61 || v60 >= v61 + a7[16])
    {
      if (*v60 >= v58)
      {
        goto LABEL_22;
      }

      v62 = v55;
      v63 = v46;
      v214 = 8 * v30;
      v64 = v30;
      v65 = v45;
      v66 = v47;
      (*(a5 + 32))();
      v47 = v66;
      v45 = v65;
      v30 = v64;
      a7 = v213;
      v35 = v214;
      v46 = v63;
      v55 = v62;
      v59 = (v213[14] + 8 * v29);
    }

    *v59 = 0;
  }

LABEL_22:
  v67 = a7[14];
  if (!*(v67 + 8 * v29))
  {
    v68 = *a11;
    v69 = (*a11 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v69 <= a12)
    {
      *a11 = v69;
      *(a7[14] + 8 * v29) = v68;
      if (v68)
      {
        **(a7[14] + 8 * v29) = 0;
        goto LABEL_29;
      }
    }

    else
    {
      *(v67 + 8 * v29) = 0;
    }

    v215 = v30;
    v70 = v45;
    v71 = v47;
    v72 = v55;
    v73 = v46;
    v74 = (*(a5 + 24))(v58);
    a7 = v213;
    *(v213[14] + 8 * v29) = v74;
    v75 = *(v213[14] + 8 * v29);
    if (!v75)
    {
      v185 = *(a5 + 40);
      if (!v185)
      {
        v186 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v186)
        {
          sub_23672B14C(v186, v187, v188, v189, v190, v191, v192, v193);
        }

        _SparseTrap();
      }

      memset(v236, 0, sizeof(v236));
      v235 = 0u;
      v234 = 0u;
      v233 = 0u;
      v232 = 0u;
      v231 = 0u;
      v230 = 0u;
      v229 = 0u;
      v228 = 0u;
      memset(&v227[58], 0, 48);
      strcpy(v227, "Failed to allocate additional storage for delayed pivots\n");
      v185(v227);
      return 4294967293;
    }

    *v75 = v58;
    v46 = v73;
    v55 = v72;
    v47 = v71;
    v45 = v70;
    v30 = v215;
  }

LABEL_29:
  v195 = v47;
  if (v54)
  {
    v76 = *(a7[9] + 4 * v29);
    v77 = *(a7[10] + 4 * v29);
    v78 = *(a7[11] + 4 * v29);
  }

  else
  {
    v76 = 0;
    v77 = 0;
    v78 = 0;
  }

  v194 = v46;
  v79 = a7[14];
  v211 = (*(v79 + 8 * v29) + 8);
  v80 = *(a5 + 176);
  v81 = (*(v80 + 4 * v30) - *(v80 + 4 * v29)) * v19;
  v82 = v81 + v76;
  v83 = v81 + v76;
  if (v54)
  {
    v83 = *(a7[8] + 4 * v29);
  }

  v84 = *(a5 + 184);
  v85 = *(a5 + 200);
  v86 = *(v85 + v35);
  v87 = v82 + v77 + (*(v84 + v35) - *(v84 + 8 * v29)) * v19;
  v88 = (v86 - *(v85 + 8 * v29)) * v19;
  v89 = &v211[16 * v87 * v82];
  v90 = v88 + v78;
  v219 = v87;
  v220 = v82 + v78 + v88;
  LODWORD(v221) = v76;
  DWORD1(v221) = v81 + v76;
  *(&v221 + 1) = v83;
  if (a4 == 81)
  {
    v91 = 0;
  }

  else
  {
    v91 = &v89[16 * v90 * v82];
  }

  if (a4 == 81)
  {
    v92 = 0;
  }

  else
  {
    v92 = &v89[16 * (v88 + v78) * v82 + 4 * v82 + 4 * v77];
  }

  *&v222 = v211;
  *(&v222 + 1) = v87;
  v93 = &v91[4 * v82];
  if (v77 <= 0)
  {
    v93 = 0;
  }

  v199 = &v211[16 * v87 * v82];
  v200 = v90;
  *&v223 = v199;
  *(&v223 + 1) = v90;
  v94 = v92 + 4 * v82;
  *&v224 = v91;
  *(&v224 + 1) = v92;
  if (v78 <= 0)
  {
    v94 = 0;
  }

  *&v225 = __PAIR64__(v78, v77);
  *(&v225 + 1) = v93;
  v226 = v94;
  if (a4 != 81 && v81 >= 1)
  {
    v95 = 0;
    do
    {
      *&v91[4 * v95] = v95 + *(v80 + 4 * v29) * v19;
      *(v92 + 4 * v95) = v95 + *(v80 + 4 * v29) * v19;
      ++v95;
      v76 = v221;
    }

    while (v95 < SDWORD1(v221) - v221);
  }

  v216 = v54;
  if (v76 >= 1)
  {
    v96 = *(a5 + 240);
    v97 = *(v96 + 8 * v29);
    v98 = *(v96 + 8 * v30);
    if (v97 < v98)
    {
      v99 = (*(v80 + 4 * v30) - *(v80 + 4 * v29)) * v19;
      v100 = (v92 + 4 * v99);
      v101 = &v91[4 * v99];
      v102 = *(a5 + 256);
      do
      {
        if (*(v102 + v97) == 3)
        {
          v103 = *(*(a5 + 248) + 4 * v97);
          if (v54)
          {
            v104 = *(a7[9] + 4 * v103);
            v105 = *(a7[10] + 4 * v103);
            v106 = *(a7[11] + 4 * v103);
          }

          else
          {
            v104 = 0;
            v105 = 0;
            v106 = 0;
          }

          v107 = v104 + (*(v80 + 4 * (v103 + 1)) - *(v80 + 4 * v103)) * v19;
          v108 = v107;
          if (v54)
          {
            v108 = *(a7[8] + 4 * v103);
          }

          if (a4 == 81)
          {
            v109 = 0;
            v110 = 0;
          }

          else
          {
            v54 = v216;
            v109 = *(v79 + 8 * v103) + 8 + 16 * (v107 + v105 + (*(v84 + 8 * (v103 + 1)) - *(v84 + 8 * v103)) * v19) * v107 + 16 * (v106 + (*(v85 + 8 * (v103 + 1)) - *(v85 + 8 * v103)) * v19) * v107;
            v110 = v109 + 4 * v107 + 4 * v105;
          }

          if (v107 != *(a7[8] + 4 * v103) && v108 < v107)
          {
            v112 = (v109 + 4 * v108);
            v113 = (v110 + 4 * v108);
            v114 = v108 - v107;
            do
            {
              v116 = *v112++;
              v115 = v116;
              if (v116 < 0)
              {
                v115 = -v115;
              }

              *v101++ = v115;
              v118 = *v113++;
              v117 = v118;
              if (v118 < 0)
              {
                v117 = -v117;
              }

              *v100++ = v117;
            }

            while (!__CFADD__(v114++, 1));
          }
        }

        ++v97;
      }

      while (v97 != v98);
    }
  }

  if (v45)
  {
    memcpy(&v91[4 * SDWORD1(v221)], v55, 4 * v45);
  }

  if (v204)
  {
    memcpy((v92 + 4 * SDWORD1(v221)), __src, 4 * v204);
  }

  v120 = v219;
  if (v219 >= 1)
  {
    v121 = 0;
    v122 = *(&v225 + 1);
    v123 = v224;
    do
    {
      if (v121 >= SDWORD1(v221))
      {
        v125 = v120 - v225;
        if (v121 >= v125)
        {
          v124 = *(v122 - 4 * v125 + 4 * v121);
        }

        else
        {
          v124 = (v121 - DWORD1(v221)) % v19 + *(*(a5 + 192) + 4 * *(*(a5 + 184) + 8 * v29) + 4 * ((v121 - DWORD1(v221)) / v19)) * v19;
        }
      }

      else if (v123)
      {
        v124 = *(v123 + 4 * v121);
      }

      else
      {
        v124 = v121 + *(*(a5 + 176) + 4 * v29) * v19;
      }

      if (v124 < 0)
      {
        v124 = -v124;
      }

      *(a15 + 4 * v124) = v121++;
      v120 = v219;
    }

    while (v121 < v219);
  }

  v126 = v220;
  if (v220 >= 1)
  {
    v127 = 0;
    v128 = v226;
    v129 = v224;
    do
    {
      if (v127 >= SDWORD1(v221))
      {
        v131 = v126 - SDWORD1(v225);
        if (v127 >= v131)
        {
          v130 = *(v128 - 4 * v131 + 4 * v127);
        }

        else
        {
          v130 = (v127 - DWORD1(v221)) % v19 + *(*(a5 + 208) + 4 * *(*(a5 + 200) + 8 * v29) + 4 * ((v127 - DWORD1(v221)) / v19)) * v19;
        }
      }

      else if (v129)
      {
        v130 = *(*(&v129 + 1) + 4 * v127);
      }

      else
      {
        v130 = v127 + *(*(a5 + 176) + 4 * v29) * v19;
      }

      if (v130 < 0)
      {
        v130 = -v130;
      }

      *(v210 + 4 * v130) = v127++;
      v126 = v220;
    }

    while (v127 < v220);
    v120 = v219;
  }

  v132 = 16 * SDWORD1(v221);
  bzero(v211, v132 * v87);
  bzero(v199, v132 * v200);
  sub_2367234E4(a2, a1, SDWORD1(v221), a3, a5, v211, v87, v199, v200, a15, v210, v213[12], v213[13]);
  if ((v126 - DWORD1(v221)) * (v120 - DWORD1(v221)) <= 0)
  {
    v134 = 0;
  }

  else
  {
    v133 = 5 * (SDWORD1(v225) + v225);
    v134 = (*(a5 + 24))(v133 + 152);
    sub_236724DE4(v134, &v219, v195, v194, v198, v197, (v134 + 120), v133 + 32, a5);
    v135 = *(v134 + 16) * *(v134 + 8);
    v136 = (*(*v134 + 24))(16 * v135);
    *(v134 + 96) = v136;
    *(v134 + 104) = v135;
    bzero(v136, 16 * v135);
  }

  *(a9 + 8 * v29) = v134;
  v137 = (*(a5 + 240) + 8 * v29);
  v138 = *v137;
  v139 = v213;
  v140 = v216;
  if (*v137 < v137[1])
  {
    v206 = v134;
    v208 = v29;
    v212 = v19;
    do
    {
      v141 = *(*(a5 + 248) + 4 * v138);
      memset(&v227[16], 0, 56);
      if (v140)
      {
        v142 = *(v139[9] + 4 * v141);
        v143 = *(v139[10] + 4 * v141);
        v144 = *(v139[11] + 4 * v141);
      }

      else
      {
        v142 = 0;
        v143 = 0;
        v144 = 0;
      }

      v145 = *(v139[14] + 8 * v141) + 8;
      *&v227[8] = v142;
      *&v227[24] = v145;
      *&v227[72] = v143;
      *&v227[76] = v144;
      *&v227[12] = v142 + (*(*(a5 + 176) + 4 * (v141 + 1)) - *(*(a5 + 176) + 4 * v141)) * v19;
      v146 = *&v227[12];
      if (v140)
      {
        v146 = *(v139[8] + 4 * v141);
      }

      *&v227[16] = v146;
      v147 = 8 * (v141 + 1);
      *v227 = *&v227[12] + v143 + (*(*(a5 + 184) + v147) - *(*(a5 + 184) + 8 * v141)) * v19;
      v148 = (*(*(a5 + 200) + v147) - *(*(a5 + 200) + 8 * v141)) * v19;
      *&v227[4] = *&v227[12] + v144 + v148;
      v149 = v145 + 16 * *v227 * *&v227[12];
      *&v227[32] = *v227;
      *&v227[40] = v149;
      *&v227[48] = v148 + v144;
      if (a4 == 81)
      {
        v151 = 0;
        v150 = 0;
      }

      else
      {
        v150 = v149 + 16 * (v148 + v144) * *&v227[12];
        v151 = v150 + 4 * *&v227[12] + 4 * v143;
        *&v227[56] = v150;
        *&v227[64] = v151;
      }

      v152 = v150 + 4 * *&v227[12];
      if (v143 <= 0)
      {
        v153 = 0;
      }

      else
      {
        v153 = v152;
      }

      v154 = v151 + 4 * *&v227[12];
      if (v144 <= 0)
      {
        v155 = 0;
      }

      else
      {
        v155 = v154;
      }

      *&v227[80] = v153;
      *&v227[88] = v155;
      v156 = *(a9 + 8 * v141);
      if (!v156)
      {
        goto LABEL_144;
      }

      v157 = *(*(a5 + 264) + 4 * v138) * v19;
      v158 = *(*(a5 + 272) + 4 * v138) * v19;
      v159 = *(*(a5 + 256) + v138);
      switch(v159)
      {
        case 3:
          v177 = sub_236724410(&v219, v141, v227, v156, a5, v212, v157, v158, a15, v210);
          v19 = v212;
          sub_23671CEF0(v177, &v219, v134, v141, v227, v156, a5, v212, v157, v158, a15, v210);
          v167 = *(a9 + 8 * v141);
          v169 = v167 + 12;
          v168 = v167[12];
          if (v168)
          {
            goto LABEL_142;
          }

          break;
        case 2:
          v170 = *(*(a5 + 280) + 4 * v138);
          sub_236724F10(&v218, *(a9 + 8 * v141));
          v171 = v170 * v19;
          sub_236723DC0(a1, &v219, v141, v227, v156, a5, v212, v157, v158, v171, a15, v210);
          v19 = v212;
          v134 = v206;
          sub_23671C5FC(a1, &v219, v206, v141, v227, v156, a5, v212, v157, v158, v171, a15, v210);
          add_explicit = atomic_fetch_add_explicit((v156 + 24), -v171, memory_order_release);
          if (*(v218 + 112) == 1)
          {
            v173 = (v218 + 113);
            atomic_store(0, (v218 + 113));
            std::__cxx_atomic_notify_one(v173);
          }

          v139 = v213;
          v29 = v208;
          v140 = v216;
          if (add_explicit != v171)
          {
            goto LABEL_144;
          }

          v174 = *(*v156 + 32);
          v176 = *(v156 + 96);
          v175 = (v156 + 96);
          v174(v176);
          *v175 = 0;
          v175[1] = 0;
          v139 = v213;
          v140 = v216;
          if (*&v227[12] != *&v227[16] || *&v227[76] || *&v227[72])
          {
            goto LABEL_144;
          }

          v167 = *(a9 + 8 * v141);
          v169 = v167 + 12;
          v168 = v167[12];
          if (!v168)
          {
            break;
          }

LABEL_142:
          (*(*v167 + 32))(v168);
          *v169 = 0;
          v169[1] = 0;
          break;
        case 1:
          v160 = *(*(a5 + 280) + 4 * v138);
          sub_236724F10(&v218, *(a9 + 8 * v141));
          v161 = v160 * v19;
          sub_23672392C(a1, &v219, v141, v227, v156, a5, v212, v157, v158, v161, a15, v210);
          v19 = v212;
          v134 = v206;
          sub_23671BEAC(a1, &v219, v206, v141, v227, v156, a5, v212, v157, v158, v161, a15, v210);
          v162 = atomic_fetch_add_explicit((v156 + 28), -v161, memory_order_release);
          if (*(v218 + 112) == 1)
          {
            v163 = (v218 + 113);
            atomic_store(0, (v218 + 113));
            std::__cxx_atomic_notify_one(v163);
          }

          v139 = v213;
          v29 = v208;
          v140 = v216;
          if (v162 != v161)
          {
            goto LABEL_144;
          }

          v164 = *(*v156 + 32);
          v166 = *(v156 + 96);
          v165 = (v156 + 96);
          v164(v166);
          *v165 = 0;
          v165[1] = 0;
          v139 = v213;
          v140 = v216;
          if (*&v227[12] != *&v227[16] || *&v227[76] || *&v227[72])
          {
            goto LABEL_144;
          }

          v167 = *(a9 + 8 * v141);
          v169 = v167 + 12;
          v168 = v167[12];
          if (v168)
          {
            goto LABEL_142;
          }

          break;
        default:
          goto LABEL_144;
      }

      (*(a5 + 32))();
      *(a9 + 8 * v141) = 0;
      v139 = v213;
      v140 = v216;
LABEL_144:
      ++v138;
    }

    while (v138 < *(*(a5 + 240) + 8 * v29 + 8));
  }

  if (v134)
  {
    v178 = *(v134 + 96);
    v179 = *(v134 + 16);
  }

  else
  {
    v178 = 0;
    v179 = 0;
  }

  if (a19)
  {
    v180 = a19 + 64;
  }

  else
  {
    v180 = 0;
  }

  v181 = v203(v219, v220, DWORD1(v221), v222, *(&v222 + 1), v223, *(&v223 + 1), v178, v179, v224, *(&v224 + 1), a5, v139, v201, v202, a17, a18, v180);
  v182 = *a13;
  if (*a13 <= v181)
  {
    v182 = v181;
  }

  *a13 = v182;
  v183 = *a14;
  if (*a14 <= v220)
  {
    v183 = v220;
  }

  *a14 = v183;
  if (v216)
  {
    *(v213[8] + 4 * v29) = v181;
    return 0;
  }

  if (v181 == DWORD1(v221))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

void sub_236722FC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2366FB870(a1);
  }

  _Unwind_Resume(a1);
}

void sub_236722FDC(uint64_t *__return_ptr a1@<X8>, int a2@<W0>, int a3@<W1>, int a4@<W2>, void *a5@<X3>, int a6@<W4>, void *a7@<X5>, uint64_t a8@<X6>, _DWORD *a9, unint64_t a10, _DWORD *a11, uint64_t a12)
{
  v12 = a11;
  v13 = (a5[30] + 8 * a2);
  v14 = *v13;
  if (*v13 < v13[1])
  {
    v17 = 0;
    v18 = 0;
    v83 = a2;
    v19 = a9;
    v20 = a11;
    v80 = a7;
    v78 = a3;
    v79 = a4;
    while (1)
    {
      v21 = *(a5[32] + v14);
      if ((v21 & a3) != 0)
      {
        break;
      }

LABEL_61:
      if (++v14 >= *(a5[30] + 8 * v83 + 8))
      {
        goto LABEL_64;
      }
    }

    v22 = *(a5[31] + 4 * v14);
    if (a4 == 83)
    {
      v23 = *(a7[9] + 4 * v22);
      v24 = *(a7[10] + 4 * v22);
      v25 = *(a7[11] + 4 * v22);
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }

    v26 = a5[22];
    v27 = *(v26 + 4 * (v22 + 1));
    v28 = *(v26 + 4 * v22);
    v29 = v23 + (v27 - v28) * a6;
    if (a4 == 83)
    {
      v30 = *(a7[8] + 4 * v22);
      v31 = v29;
    }

    else
    {
      v31 = v29;
      if (a4 == 81)
      {
        v32 = 0;
        v33 = 0;
        v30 = v29;
        goto LABEL_13;
      }

      v30 = v29;
    }

    v33 = *(a7[14] + 8 * v22) + 8 + 16 * v31 * (v29 + v24 + (*(a5[23] + 8 * (v22 + 1)) - *(a5[23] + 8 * v22)) * a6) + 16 * v31 * (v25 + (*(a5[25] + 8 * (v22 + 1)) - *(a5[25] + 8 * v22)) * a6);
    v32 = v33 + 4 * v31 + 4 * v24;
LABEL_13:
    if (v24 <= 0)
    {
      v34 = 0;
    }

    else
    {
      v34 = (v33 + 4 * v31);
    }

    v35 = (v32 + 4 * v31);
    if (v25 <= 0)
    {
      v36 = 0;
    }

    else
    {
      v36 = v35;
    }

    if (v21 == 3)
    {
      v38 = 0;
      v37 = 0;
    }

    else
    {
      v37 = v29 - *(a7[8] + 4 * v22);
      if (v21 == 2)
      {
        v38 = (v33 + 4 * v30);
      }

      else if (v21 == 1)
      {
        v38 = (v32 + 4 * v30);
      }

      else
      {
        v38 = 0;
      }
    }

    v39 = *(a8 + 8 * v22);
    v40 = *(a5[38] + 4 * v28);
    if (a3 == 1)
    {
      if (v39)
      {
        v41 = 1;
      }

      else
      {
        v41 = v25 == 0;
      }

      if (!v41)
      {
        v72 = *(a5[38] + 4 * v28);
        v74 = v38;
        v76 = v37;
        v45 = v25;
        v46 = v25;
        v47 = v17;
        v48 = v18;
        v70 = v25;
        v49 = v19;
        v50 = v20;
        sub_236724CB4(v84, v46);
        if (v70 >= 1)
        {
          v51 = 0;
          v52 = a5[38];
          v53 = v84[0];
          do
          {
              ;
            }

            v53[v51++] = i;
          }

          while (v51 != v45);
        }

        v12 = a11;
        sub_236724994(&v85, v49, v47, v50, v48, a9, a10, a11, v76, v74, v72, v70, v36, v84[0], a2, a5);
LABEL_53:
        v19 = v85;
        v17 = v86;
        v20 = v87;
        v18 = v88;
        if (v84[0])
        {
          v84[1] = v84[0];
          v65 = v86;
          v66 = v88;
          v67 = v85;
          v68 = v87;
          operator delete(v84[0]);
          v20 = v68;
          v19 = v67;
          v18 = v66;
          v17 = v65;
        }

        goto LABEL_60;
      }

      if (v39)
      {
        v42 = *(v39 + 80);
      }

      else
      {
        v42 = 0;
      }

      sub_236724994(&v85, v19, v17, v20, v18, a9, a10, v12, v37, v38, v40, v25, v36, v42, a2, a5);
    }

    else
    {
      if (v39)
      {
        v43 = 1;
      }

      else
      {
        v43 = v24 == 0;
      }

      if (!v43)
      {
        v73 = *(a5[38] + 4 * v28);
        v75 = v38;
        v77 = v37;
        v55 = v24;
        v56 = v24;
        v57 = v17;
        v58 = v18;
        v59 = v19;
        v71 = v24;
        v60 = v20;
        sub_236724CB4(v84, v56);
        if (v71 >= 1)
        {
          v61 = 0;
          v62 = a5[38];
          v63 = v84[0];
          do
          {
              ;
            }

            v63[v61++] = j;
          }

          while (v61 != v55);
        }

        v12 = a11;
        sub_236724994(&v85, v59, v57, v60, v58, a9, a10, a11, v77, v75, v73, v71, v34, v84[0], a2, a5);
        goto LABEL_53;
      }

      if (v39)
      {
        v44 = *(v39 + 64);
      }

      else
      {
        v44 = 0;
      }

      sub_236724994(&v85, v19, v17, v20, v18, a9, a10, v12, v37, v38, v40, v24, v34, v44, a2, a5);
    }

    v19 = v85;
    v17 = v86;
    v20 = v87;
    v18 = v88;
LABEL_60:
    a7 = v80;
    a3 = v78;
    a4 = v79;
    goto LABEL_61;
  }

  v17 = 0;
  v18 = 0;
  v19 = a9;
  v20 = a11;
LABEL_64:
  *a1 = v19;
  a1[1] = v17;
  a1[2] = v20;
  a1[3] = v18;
}

void sub_2367234C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 144);
  if (v3)
  {
    *(v1 - 136) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2367234E4(int a1, int a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = *(a4 + 28);
  v14 = (v13 * v13);
  v15 = *(a5[14] + 4 * a1 + 4);
  v16 = a5[22];
  v17 = (v16 + 4 * a2);
  result = *v17;
  v19 = result;
  if (a12)
  {
    v20 = v17[1];
    if (result < v20)
    {
      v102 = a5[20];
      v101 = *(a4 + 8);
      v21 = 16 * v14;
      v22 = 16 * v13;
      v100 = 16 * a7 * v13;
      v23 = 16 * a7;
      v24 = result;
      do
      {
        v25 = (v101 + 8 * *(v102 + 4 * v24));
        v26 = *v25;
        v27 = v25[1];
        if (*v25 < v27)
        {
          v28 = *(a4 + 16);
          v29 = v21 * v26;
          do
          {
            v30 = *(v28 + 4 * v26);
            if ((v30 & 0x80000000) == 0 && v30 < *a4)
            {
              v31 = *(a5[17] + 4 * v30);
              v32 = v31 >= result && v31 < v15;
              if (v32 && v13)
              {
                v33 = 0;
                v34 = v31 * v13;
                v35 = (a12 + 8 * v34);
                v36 = (*(a4 + 32) + v29);
                v37 = (a6 + 16 * *(a10 + 4 * v34));
                do
                {
                  v38 = v13;
                  v39 = v37;
                  v40 = v35;
                  v41 = v36;
                  do
                  {
                    v42 = *v40++;
                    v43 = v42;
                    v44 = *v41++;
                    *v39++ = vmulq_n_f64(vmulq_n_f64(v44, v43), *(a13 + 8 * v24 * v13 + 8 * v33));
                    --v38;
                  }

                  while (v38);
                  ++v33;
                  v36 = (v36 + v22);
                  v37 = (v37 + v23);
                }

                while (v33 != v13);
              }
            }

            ++v26;
            v29 += v21;
          }

          while (v26 != v27);
        }

        ++v24;
        a6 += v100;
      }

      while (v24 != v20);
      v45 = a5[39];
      v46 = *(v45 + 8 * result);
      v47 = a8 - 16 * a3;
      result = 16 * a9 * v13;
      v48 = (a12 + 8 * v19 * v13);
      do
      {
        ++v19;
        v49 = *(v45 + 8 * v19);
        if (v46 < v49)
        {
          v50 = *(a4 + 32);
          v51 = a5[40];
          v52 = a5[41];
          do
          {
            if (v13)
            {
              v53 = 0;
              v54 = (v50 + 16 * *(v52 + 8 * v46) * v14);
              v55 = *(v51 + 4 * v46) * v13;
              v56 = a13 + 8 * v55;
              v57 = (v47 + 16 * *(a11 + 4 * v55));
              do
              {
                v58 = v13;
                v59 = v48;
                v60 = v57;
                v61 = v54;
                do
                {
                  v62 = *v59++;
                  v63 = v62;
                  v64 = *v61++;
                  *v60 = vmulq_n_f64(vmulq_n_f64(v64, v63), *(v56 + 8 * v53));
                  v60 += a9;
                  --v58;
                }

                while (v58);
                ++v53;
                v54 = (v54 + v22);
                ++v57;
              }

              while (v53 != v13);
            }

            ++v46;
          }

          while (v46 != v49);
        }

        v47 += result;
        v48 += v13;
        v46 = v49;
      }

      while (v19 != v20);
    }
  }

  else
  {
    v65 = a2;
    v66 = a2 + 1;
    LODWORD(v67) = *(v16 + 4 * v66);
    if (result < v67)
    {
      v68 = *(a4 + 8);
      v69 = 16 * v14;
      v70 = 16 * a7;
      do
      {
        v71 = *(a5[20] + 4 * v19);
        v72 = (v68 + 8 * v71);
        v73 = *v72;
        if (*v72 < v72[1])
        {
          v74 = v69 * v73;
          do
          {
            v75 = *(*(a4 + 16) + 4 * v73);
            if ((v75 & 0x80000000) == 0 && v75 < *a4)
            {
              v76 = *(a5[17] + 4 * v75);
              v77 = *(a5[22] + 4 * v65);
              v78 = v76 >= v77 && v76 < v15;
              if (v78 && v13)
              {
                v79 = 0;
                v80 = (*(a4 + 32) + v74);
                v81 = (a6 + v70 * v13 * (v19 - v77) + 16 * *(a10 + 4 * v76 * v13));
                do
                {
                  v82 = v13;
                  v83 = v81;
                  v84 = v80;
                  do
                  {
                    v85 = *v84++;
                    *v83++ = v85;
                    --v82;
                  }

                  while (v82);
                  ++v79;
                  v80 += v13;
                  v81 = (v81 + v70);
                }

                while (v79 != v13);
                v68 = *(a4 + 8);
              }
            }

            ++v73;
            v74 += v69;
          }

          while (v73 < *(v68 + 8 * v71 + 8));
          v16 = a5[22];
        }

        ++v19;
        v67 = *(v16 + 4 * v66);
      }

      while (v19 < v67);
      result = *(v16 + 4 * v65);
    }

    if (result < v67)
    {
      v86 = result;
      v87 = a5[39];
      v88 = 16 * a9;
      v89 = a8 - 16 * a3;
      do
      {
        v90 = v86;
        result = *(v87 + 8 * v86++);
        if (result < *(v87 + 8 * v86))
        {
          do
          {
            if (v13)
            {
              v91 = 0;
              v92 = *(a4 + 32) + 16 * *(a5[41] + 8 * result) * v14;
              v93 = (v89 + v88 * v13 * (v90 - *(a5[22] + 4 * v65)) + 16 * *(a11 + 4 * *(a5[40] + 4 * result) * v13));
              do
              {
                v94 = v13;
                v95 = v93;
                v96 = v92;
                do
                {
                  v97 = *v96++;
                  *v95 = v97;
                  v95 = (v95 + v88);
                  --v94;
                }

                while (v94);
                ++v91;
                v92 += 16 * v13;
                ++v93;
              }

              while (v91 != v13);
              v87 = a5[39];
            }

            ++result;
          }

          while (result < *(v87 + 8 * v86));
          v16 = a5[22];
        }
      }

      while (v86 < *(v16 + 4 * v66));
    }
  }

  return result;
}

uint64_t sub_23672392C(uint64_t result, uint64_t a2, int a3, int *a4, void *a5, void *a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v59 = result;
  v12 = a4[3];
  v61 = a4[1];
  if (v12 + a9 < v61)
  {
    v55 = v12 + a8;
    v13 = v12 + a8 + a10;
    v14 = a4[19];
    v60 = v14 - v61;
    v15 = v12 + a9;
    v57 = v61 - v14;
    for (i = 16 * a9; ; i += 16)
    {
      if (v60 + v15 < 0 || (*(a5[6] + (v60 + v15)) & 1) == 0)
      {
        v17 = v15 - v12;
        if (v15 >= v12)
        {
          v18 = v15 >= v57 ? *(*(a4 + 11) + 4 * (v15 - v57)) : (v15 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v15 - v12) / a7)) * a7;
        }

        else if (v15 < 0)
        {
          v18 = 0x7FFFFFFF;
        }

        else
        {
          v18 = *(a4 + 7) ? *(*(a4 + 8) + 4 * v15) : v15 + *(a6[22] + 4 * a3) * a7;
        }

        v19 = *(a12 + 4 * v18);
        v20 = *(a2 + 12);
        if (v20 > v19)
        {
          v21 = v19;
          if ((v19 & 0x80000000) != 0)
          {
            v22 = 0x7FFFFFFF;
          }

          else
          {
            v22 = *(a2 + 56) ? *(*(a2 + 64) + 4 * v19) : v19 + *(a6[22] + 4 * v59) * a7;
          }

          if (v22 == v18)
          {
            if (a10 >= 1)
            {
              v23 = *(a2 + 24) + 16 * *(a2 + 32) * v21;
              v24 = 16 * v55 - 16 * v12;
              v25 = v55;
              v26 = a8;
              do
              {
                if (v25 >= v12)
                {
                  v29 = *a4;
                  v30 = a4[18];
                  if (v25 >= v29 - v30)
                  {
                    if (v25 < v29)
                    {
                      v28 = *(*(a4 + 10) + 4 * (v25 + v30 - v29));
                      if ((v17 & 0x8000000000000000) == 0)
                      {
                        goto LABEL_37;
                      }

                      goto LABEL_34;
                    }

LABEL_33:
                    v28 = 0x7FFFFFFF;
                    if ((v17 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_34;
                  }

                  v31 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v26 / a7));
                  v32 = v26 % a7;
                }

                else
                {
                  if (v25 < 0)
                  {
                    goto LABEL_33;
                  }

                  v27 = *(a4 + 7);
                  if (v27)
                  {
                    v28 = *(v27 + 4 * v25);
                    if ((v17 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_34;
                  }

                  v31 = *(a6[22] + 4 * a3);
                  v32 = v12 + v26;
                }

                v28 = v32 + v31 * a7;
                if ((v17 & 0x8000000000000000) == 0)
                {
LABEL_37:
                  if (v25 >= v12)
                  {
                    v33 = (a5[12] + i * a5[2] + v24);
                  }

                  else
                  {
                    v33 = (*(a4 + 5) + 16 * *(a4 + 6) * v25 + 16 * v17);
                  }

                  goto LABEL_40;
                }

LABEL_34:
                v33 = (*(a4 + 3) + 16 * *(a4 + 4) * v15 + 16 * v25);
LABEL_40:
                v34 = *(a11 + 4 * v28);
                *(v23 + 16 * v34) = vaddq_f64(*v33, *(v23 + 16 * v34));
                ++v25;
                ++v26;
                v24 += 16;
              }

              while (v25 < v13);
            }

            v35 = a4[18];
            if (v35 >= 1)
            {
              break;
            }
          }
        }
      }

LABEL_73:
      if (++v15 >= v61)
      {
        return result;
      }
    }

    v36 = 0;
    v37 = *a4;
    v38 = v37 - v35;
    v39 = a5[4];
    v40 = v37 - v12 - v35;
    v58 = 4 * (v37 - v35);
    v41 = -16 * v12 + 16 * (v37 - v35);
    v42 = v37 - v35;
    while ((*(v39 + v36) & 1) != 0)
    {
LABEL_72:
      ++v42;
      ++v36;
      ++v40;
      v41 += 16;
      if (v38 + v36 >= v37)
      {
        goto LABEL_73;
      }
    }

    v43 = v38 + v36;
    if (v43 >= v12)
    {
      if (v43 >= v38)
      {
        v45 = *(a4 + 10);
        goto LABEL_51;
      }

      v46 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v40 / a7));
      v47 = v40 % a7;
    }

    else
    {
      if (v43 < 0)
      {
        v48 = 0x7FFFFFFF;
        goto LABEL_55;
      }

      v44 = *(a4 + 7);
      if (v44)
      {
        v45 = v44 + v58;
LABEL_51:
        v48 = *(v45 + 4 * v36);
        goto LABEL_55;
      }

      v46 = *(a6[22] + 4 * a3);
      v47 = v38 + v36;
    }

    v48 = v47 + v46 * a7;
LABEL_55:
    v49 = *(a11 + 4 * v48);
    v50 = v49;
    if (v49 >= v20)
    {
      result = (*a2 - *(a2 + 72));
      if (v49 < result)
      {
        result = a6[24];
        v52 = (v49 - v20) % a7 + *(result + 4 * *(a6[23] + 8 * v59) + 4 * ((v49 - v20) / a7)) * a7;
        goto LABEL_65;
      }

      if (*a2 > v49)
      {
        v52 = *(*(a2 + 80) + 4 * (v49 - result));
        goto LABEL_65;
      }
    }

    else if ((v49 & 0x80000000) == 0)
    {
      v51 = *(a2 + 56);
      if (v51)
      {
        v52 = *(v51 + 4 * v49);
      }

      else
      {
        v52 = v49 + *(a6[22] + 4 * v59) * a7;
      }

LABEL_65:
      if (v52 == v48)
      {
        if (v17 < 0)
        {
          v53 = (*(a4 + 3) + 16 * *(a4 + 4) * v15 + 16 * v42);
        }

        else if (v43 >= v12)
        {
          v53 = (a5[12] + i * a5[2] + v41);
        }

        else
        {
          v53 = (*(a4 + 5) + 16 * *(a4 + 6) * v43 + 16 * v17);
        }

        v54 = *(a2 + 24) + 16 * *(a2 + 32) * v21;
        *(v54 + 16 * v50) = vaddq_f64(*v53, *(v54 + 16 * v50));
      }

      goto LABEL_72;
    }

    v52 = 0x7FFFFFFF;
    goto LABEL_65;
  }

  return result;
}