void sub_2500FA42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92[45] = *MEMORY[0x277D85DE8];
  v73 = *(a1 + 4332);
  v6 = *(a1 + 4336);
  v7 = v6;
  v74 = *(a1 + 4360);
  memset_pattern16(__b, &unk_250110610, 6uLL);
  v8 = 0;
  memset(v92, 0, 360);
  do
  {
    sub_2500F3ECC(&v92[v8], v6);
    v8 += 15;
  }

  while (v8 != 45);
  v90 = 0x8000;
  sub_2500FD43C(&v88, v6);
  LODWORD(__p) = 0;
  sub_2500FC9FC(&v85, v6, &__p);
  v9 = a3;
  LODWORD(v81) = 0;
  sub_2500FC9FC(&__p, v6, &v81);
  if (v73 >= 1)
  {
    v10 = 0;
    v71 = 4 * v6;
    v72 = v9;
    v11 = a2;
    v66 = a2;
    v67 = v6;
    v65 = v6;
    while (v74 && *(v9 + v10) != 1)
    {
LABEL_55:
      ++v10;
      v11 += v71;
      if (v10 == v73)
      {
        goto LABEL_63;
      }
    }

    v12 = *(*(a1 + 4128) + 4 * v10);
    if ((v12 & 0x80000000) == 0)
    {
      v13 = (*(a1 + 1256) + 12 * v12);
      v14 = *v13;
      LODWORD(v81) = *v13;
      LODWORD(v15) = v13[1];
      HIDWORD(v81) = v15;
      v16 = v13[2];
      v82[0] = v16;
      v17 = (*(a1 + 1280) + 12 * v12);
      v19 = *v17;
      v18 = v17[1];
      LODWORD(v79) = *v17;
      HIDWORD(v79) = v18;
      v68 = v18;
      v69 = v17[2];
      v80 = v69;
      v78 = -1;
      v77 = -1;
      v76 = -1;
      v75 = -1;
      sub_2500F7D4C(a1, v12, v10, &v81, &v77);
      sub_2500F7D4C(a1, v12, v10, &v79, &v75);
      v20 = v78;
      v21 = v76;
      if ((v78 & 0x80000000) == 0 || v76 < 0)
      {
        v63 = v19;
        v64 = v14;
        v22 = v75;
        v23 = HIDWORD(v75);
      }

      else
      {
        v81 = v79;
        v68 = v15;
        v69 = v16;
        v16 = v80;
        v82[0] = v80;
        v22 = v77;
        v23 = HIDWORD(v77);
        v77 = v75;
        v21 = v78;
        v20 = v76;
        v78 = v76;
        v15 = HIDWORD(v79);
        v63 = v14;
        v64 = v79;
      }

      v25 = v77;
      v24 = HIDWORD(v77);
      if (v21 != -1 && (!v74 || *(v72 + v77) == 1 && *(v72 + SHIDWORD(v77)) == 1 && *(v72 + v20) == 1 && *(v72 + v22) == 1 && *(v72 + v23) == 1 && *(v72 + v21) == 1))
      {
        v61 = v23;
        v62 = v22;
        v6 = v67;
        v7 = v65;
        sub_2500EBFF8((v66 + 4 * v77 * v65), (v66 + 4 * HIDWORD(v77) * v67), (v66 + 4 * v20 * v65), v67, (*(a1 + 1160) + 12 * v64), (*(a1 + 1160) + 12 * v15), (*(a1 + 1160) + 12 * v16), (*(a1 + 1160) + 12 * v12), v85);
        sub_2500EBFF8((v66 + 4 * v62 * v6), (v66 + 4 * v61 * v7), (v66 + 4 * v21 * v6), v7, (*(a1 + 1160) + 12 * v63), (*(a1 + 1160) + 12 * v68), (*(a1 + 1160) + 12 * v69), (*(a1 + 1160) + 12 * v12), __p);
        a2 = v66;
        if (v65 >= 1)
        {
          v26 = v85;
          v27 = __p;
          v28 = v65;
          do
          {
            v29 = *v27++;
            *v26 = (v29 + *v26) / 2;
            ++v26;
            --v28;
          }

          while (v28);
          v30 = 2;
LABEL_49:
          v9 = v72;
          goto LABEL_50;
        }

LABEL_30:
        v30 = 2;
        v9 = v72;
        goto LABEL_50;
      }

      v70 = v15;
      v9 = v72;
      if (v20 != -1 && (!v74 || *(v72 + v77) == 1 && *(v72 + SHIDWORD(v77)) == 1 && *(v72 + v20) == 1))
      {
        a2 = v66;
        v6 = v67;
        v7 = v65;
        sub_2500EBFF8((v66 + 4 * v77 * v65), (v66 + 4 * HIDWORD(v77) * v67), (v66 + 4 * v20 * v65), v67, (*(a1 + 1160) + 12 * v64), (*(a1 + 1160) + 12 * v70), (*(a1 + 1160) + 12 * v16), (*(a1 + 1160) + 12 * v12), v85);
        goto LABEL_30;
      }

      if (HIDWORD(v77) != -1 && (!v74 || *(v72 + v77) == 1 && *(v72 + SHIDWORD(v77)) == 1))
      {
        a2 = v66;
        if (v67 == 2)
        {
          v31 = sub_2500F2F8C(a1, &v90);
          sub_2500EC4C8(v66 + 8 * v25, (v66 + 8 * v24), (*(a1 + 1160) + 12 * v64), (*(a1 + 1160) + 12 * v70), (*(a1 + 1160) + 12 * v12), v31, v85);
          v30 = 1;
          v6 = v67;
LABEL_62:
          v7 = v65;
          goto LABEL_50;
        }

        if (v67 < 1)
        {
          v30 = 1;
          v6 = v67;
          goto LABEL_62;
        }

        v46 = (v66 + 4 * v77 * v67);
        v7 = v65;
        v47 = (v66 + 4 * HIDWORD(v77) * v65);
        v48 = v85;
        v49 = v65;
        v6 = v67;
        do
        {
          v51 = *v46++;
          v50 = v51;
          v52 = *v47++;
          *v48++ = (v52 + v50) / 2;
          --v49;
        }

        while (v49);
        v30 = 1;
LABEL_50:
        sub_2500F2AB4(a1, v85, v6, (a1 + 4056), (a1 + 4372), &v92[15 * v30], a2 + 4 * v10 * v6);
        if (v7 >= 1)
        {
          v40 = v88 + 4;
          v41 = v11;
          v42 = v7;
          do
          {
            v44 = *v41++;
            v43 = v44;
            v45 = *(v40 - 1);
            if (*&v40[4 * ((v45 - 1) & 3)] != v44)
            {
              *(v40 - 1) = v45 + 1;
              *&v40[4 * (v45 & 3)] = v43;
            }

            v40 += 20;
            --v42;
          }

          while (v42);
        }

        goto LABEL_55;
      }

      a2 = v66;
      v6 = v67;
      v7 = v65;
    }

    v32 = sub_2500FA2D8(a1, v10, a2, v9, v85, v86);
    v30 = 0;
    if (v7 >= 1 && !v32)
    {
      v33 = v85;
      v34 = v7;
      v35 = v88 + 4;
      do
      {
        v36 = sub_2500F2F8C(a1, __b);
        v37 = v36;
        if (v36)
        {
          v38 = 2;
        }

        else
        {
          v38 = 1;
        }

        if (sub_2500F2F8C(a1, &__b[v38]))
        {
          v39 = 2;
        }

        else
        {
          v39 = 0;
        }

        *v33++ = *&v35[4 * ((*(v35 - 1) + ~(v39 | v37)) & 3)];
        v35 += 20;
        --v34;
      }

      while (v34);
      v30 = 0;
      a2 = v66;
      v6 = v67;
      v7 = v65;
      goto LABEL_49;
    }

    goto LABEL_50;
  }

LABEL_63:
  if (__p)
  {
    v84[0] = __p;
    operator delete(__p);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v88)
  {
    v89[0] = v88;
    operator delete(v88);
  }

  v53 = 90;
  do
  {
    v54 = &v92[v53 / 2];
    v55 = v89[v53 / 2];
    if (v55)
    {
      *(v54 - 2) = v55;
      operator delete(v55);
    }

    v56 = *(v54 - 6);
    if (v56)
    {
      *&v87[v53 * 4] = v56;
      operator delete(v56);
    }

    v57 = &v92[v53 / 2];
    v58 = v84[v53 / 2];
    if (v58)
    {
      *(v57 - 8) = v58;
      operator delete(v58);
    }

    v59 = *(v57 - 12);
    if (v59)
    {
      *&v82[v53] = v59;
      operator delete(v59);
    }

    v60 = *(v54 - 15);
    if (v60)
    {
      *(&v78 + v53 * 4) = v60;
      operator delete(v60);
    }

    v53 -= 30;
  }

  while (v53 * 4);
}

void sub_2500FAB5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  for (i = 240; i != -120; i -= 120)
  {
    sub_2500F3FE0((&a37 + i));
  }

  _Unwind_Resume(a1);
}

void sub_2500FABD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v117 = *MEMORY[0x277D85DE8];
  v104 = *(a1 + 4332);
  v6 = *(a1 + 4336);
  v7 = v6;
  v105 = *(a1 + 4360);
  memset_pattern16(__b, &unk_250110610, 6uLL);
  memset_pattern16(v113, &unk_250110610, 6uLL);
  v8 = 0;
  v116 = 0;
  memset(v115, 0, sizeof(v115));
  do
  {
    sub_2500F3ECC((v115 + v8), v6);
    v8 += 120;
  }

  while (v8 != 360);
  sub_2500FD43C(v112, v6);
  LODWORD(v108) = 0;
  sub_2500FC9FC(&__p, v6, &v108);
  if (v104 >= 1)
  {
    v9 = 0;
    v96 = 4 * v6;
    v102 = a2;
    v103 = 4 * v6;
    v10 = a2;
    v100 = v6;
    v101 = v6;
    v99 = a3;
    while (v105 && *(a3 + v9) != 1)
    {
LABEL_80:
      ++v9;
      v10 += v103;
      if (v9 == v104)
      {
        goto LABEL_81;
      }
    }

    v11 = *(*(a1 + 4128) + 4 * v9);
    if ((v11 & 0x80000000) == 0)
    {
      v109[0] = -1;
      v108 = -1;
      v107[0] = -1;
      v106 = -1;
      sub_2500F7D4C(a1, v11, v9, (*(a1 + 1256) + 12 * v11), &v108);
      sub_2500F7D4C(a1, v11, v9, (*(a1 + 1280) + 12 * v11), &v106);
      v12 = v109[0];
      v13 = v107[0];
      if ((v109[0] & 0x80000000) == 0 || (v107[0] & 0x80000000) != 0)
      {
        v14 = v106;
        v15 = HIDWORD(v106);
        v16 = v109[0];
      }

      else
      {
        v14 = v108;
        v15 = HIDWORD(v108);
        v108 = v106;
        v16 = v107[0];
        v109[0] = v107[0];
        v13 = v12;
      }

      v18 = v108;
      v17 = HIDWORD(v108);
      if (v13 != -1 && (!v105 || *(a3 + v108) == 1 && *(a3 + SHIDWORD(v108)) == 1 && *(a3 + v16) == 1 && *(a3 + v14) == 1 && *(a3 + v15) == 1 && *(a3 + v13) == 1))
      {
        v97 = v14;
        v98 = v15;
        v19 = sub_2500F2F8C(a1, v113);
        v20 = 2;
        if (!v19)
        {
          v20 = 1;
        }

        if (sub_2500F2F8C(a1, &v113[v20]))
        {
          v21 = 2;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21 | v19;
        v23 = v18 * v101;
        v6 = v101;
        v24 = (v102 + 4 * v23);
        v25 = (v102 + 4 * v17 * v100);
        v26 = v16 * v101;
        v7 = v100;
        v27 = (v102 + 4 * v26);
        v28 = (v102 + 4 * v97 * v100);
        v29 = (v102 + 4 * v98 * v101);
        v30 = (v102 + 4 * v13 * v100);
        if (v22 > 1)
        {
          if (v22 == 2)
          {
            a2 = v102;
            if (v101 >= 1)
            {
              v63 = __p;
              v64 = v100;
              do
              {
                v66 = *v25++;
                v65 = v66;
                v67 = *v29++;
                v68 = v67 + v65;
                v70 = *v24++;
                v69 = v70;
                v71 = *v28++;
                *v63++ = v68 - (v71 + v69) / 2;
                --v64;
              }

              while (v64);
            }
          }

          else
          {
            a2 = v102;
            if (v100 >= 1)
            {
              v79 = 0;
              v80 = __p;
              do
              {
                v81 = 1431655766 * ((v28[v79 / 4] + v24[v79 / 4]) / 2 - (v27[v79 / 4] + v30[v79 / 4]) + 2 * (v29[v79 / 4] + v25[v79 / 4]));
                *&v80[v79] = HIDWORD(v81) + (v81 >> 63);
                v79 += 4;
              }

              while (v96 != v79);
            }
          }
        }

        else if (v22)
        {
          a2 = v102;
          if (v100 >= 1)
          {
            v72 = __p;
            v73 = v100;
            do
            {
              v75 = *v28++;
              v74 = v75;
              v76 = *v29++;
              v77 = v76 + v74;
              v78 = *v30++;
              *v72++ = v77 - v78;
              --v73;
            }

            while (v73);
          }
        }

        else
        {
          a2 = v102;
          if (v101 >= 1)
          {
            v31 = __p;
            v32 = v100;
            do
            {
              v34 = *v24++;
              v33 = v34;
              v35 = *v25++;
              v36 = v35 + v33;
              v37 = *v27++;
              *v31++ = v36 - v37;
              --v32;
            }

            while (v32);
          }
        }

LABEL_74:
        v55 = 2;
        goto LABEL_75;
      }

      if (v16 != -1 && (!v105 || *(a3 + v108) == 1 && *(a3 + SHIDWORD(v108)) == 1 && *(a3 + v16) == 1))
      {
        a2 = v102;
        if (v100 < 1)
        {
          v55 = 2;
          v6 = v101;
          v7 = v100;
          goto LABEL_75;
        }

        v6 = v101;
        v38 = (v102 + 4 * v108 * v101);
        v39 = (v102 + 4 * HIDWORD(v108) * v100);
        v40 = (v102 + 4 * v16 * v101);
        v41 = __p;
        v42 = v100;
        v7 = v100;
        do
        {
          v44 = *v38++;
          v43 = v44;
          v45 = *v39++;
          v46 = v45 + v43;
          v47 = *v40++;
          *v41++ = v46 - v47;
          --v42;
        }

        while (v42);
        goto LABEL_74;
      }

      a2 = v102;
      if (HIDWORD(v108) != -1 && (!v105 || *(a3 + v108) == 1 && *(a3 + SHIDWORD(v108)) == 1))
      {
        v7 = v100;
        if (v101 < 1)
        {
          v55 = 1;
          v6 = v101;
        }

        else
        {
          v48 = (v102 + 4 * v108 * v100);
          v49 = (v102 + 4 * HIDWORD(v108) * v101);
          v50 = __p;
          v51 = v100;
          v6 = v101;
          do
          {
            v53 = *v48++;
            v52 = v53;
            v54 = *v49++;
            *v50++ = (v54 + v52) / 2;
            --v51;
          }

          while (v51);
          v55 = 1;
        }

LABEL_75:
        sub_2500F2AB4(a1, __p, v6, (a1 + 4056), (a1 + 4372), v115 + 15 * v55, a2 + 4 * v9 * v6);
        if (v7 >= 1)
        {
          v82 = v112[0] + 4;
          v83 = v10;
          v84 = v7;
          do
          {
            v86 = *v83++;
            v85 = v86;
            v87 = *(v82 - 1);
            if (*&v82[4 * ((v87 - 1) & 3)] != v86)
            {
              *(v82 - 1) = v87 + 1;
              *&v82[4 * (v87 & 3)] = v85;
            }

            v82 += 20;
            --v84;
          }

          while (v84);
        }

        goto LABEL_80;
      }

      v7 = v100;
      v6 = v101;
    }

    v56 = sub_2500FA2D8(a1, v9, a2, a3, __p, v111);
    v55 = 0;
    if (v7 >= 1 && !v56)
    {
      v57 = __p;
      v58 = v112[0] + 4;
      do
      {
        v59 = sub_2500F2F8C(a1, __b);
        v60 = v59;
        if (v59)
        {
          v61 = 2;
        }

        else
        {
          v61 = 1;
        }

        if (sub_2500F2F8C(a1, &__b[v61]))
        {
          v62 = 2;
        }

        else
        {
          v62 = 0;
        }

        *v57++ = *&v58[4 * ((*(v58 - 1) + ~(v62 | v60)) & 3)];
        v58 += 20;
        --v7;
      }

      while (v7);
      v55 = 0;
      v7 = v100;
      v6 = v101;
      a3 = v99;
      a2 = v102;
    }

    goto LABEL_75;
  }

LABEL_81:
  if (__p)
  {
    v111 = __p;
    operator delete(__p);
  }

  if (v112[0])
  {
    v112[1] = v112[0];
    operator delete(v112[0]);
  }

  v88 = 90;
  do
  {
    v89 = v115 + v88 * 4;
    v90 = v112[v88 / 2 + 2];
    if (v90)
    {
      *(v89 - 2) = v90;
      operator delete(v90);
    }

    v91 = *(v89 - 6);
    if (v91)
    {
      v112[v88 / 2] = v91;
      operator delete(v91);
    }

    v92 = v115 + v88 * 4;
    v93 = *&v109[v88];
    if (v93)
    {
      *(v92 - 8) = v93;
      operator delete(v93);
    }

    v94 = *(v92 - 12);
    if (v94)
    {
      *&v107[v88] = v94;
      operator delete(v94);
    }

    v95 = *(v89 - 15);
    if (v95)
    {
      *(&v115[-7] + v88 * 4) = v95;
      operator delete(v95);
    }

    v88 -= 30;
  }

  while (v88 * 4);
}

void sub_2500FB2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  for (i = 240; i != -120; i -= 120)
  {
    sub_2500F3FE0((&a31 + i));
  }

  _Unwind_Resume(a1);
}

void sub_2500FB354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v61 = *(a1 + 4332);
  v6 = *(a1 + 4336);
  v62 = *(a1 + 4360);
  memset_pattern16(__b, &unk_250110610, 6uLL);
  v7 = 0;
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  do
  {
    sub_2500F3ECC((v72 + v7), v6);
    v7 += 120;
  }

  while (v7 != 360);
  sub_2500FD43C(&v69, v6);
  v63 = v6;
  LODWORD(v64) = 0;
  sub_2500FC9FC(&__p, v6, &v64);
  if (v61 >= 1)
  {
    v8 = 0;
    v59 = a3;
    v60 = 4 * v6;
    v9 = a2;
    v57 = v6;
    v58 = a2;
    while (v62 && *(a3 + v8) != 1)
    {
LABEL_49:
      ++v8;
      v9 += v60;
      if (v8 == v61)
      {
        goto LABEL_52;
      }
    }

    v10 = *(*(a1 + 4128) + 4 * v8);
    if ((v10 & 0x80000000) != 0)
    {
      a3 = v59;
      goto LABEL_32;
    }

    v65 = -1;
    v64 = -1;
    sub_2500F7D4C(a1, v10, v8, (*(a1 + 1256) + 12 * v10), &v64);
    v12 = v64;
    v11 = HIDWORD(v64);
    v13 = v65;
    if (v65 < 0)
    {
      sub_2500F7D4C(a1, v10, v8, (*(a1 + 1280) + 12 * v10), &v64);
      if (v65 < 0)
      {
        a3 = v59;
        if (v13 == -1)
        {
LABEL_23:
          if (v11 != -1 && (!v62 || *(a3 + v12) == 1 && *(a3 + v11) == 1))
          {
            v6 = v57;
            if (v57 < 1)
            {
              v26 = 1;
              a2 = v58;
            }

            else
            {
              v27 = v63;
              v28 = v12 * v63;
              a2 = v58;
              v29 = (v58 + 4 * v28);
              v30 = (v58 + 4 * v11 * v57);
              v31 = __p;
              do
              {
                v33 = *v29++;
                v32 = v33;
                v34 = *v30++;
                *v31++ = (v34 + v32) / 2;
                --v27;
              }

              while (v27);
              v26 = 1;
            }

            goto LABEL_44;
          }

          v6 = v57;
          a2 = v58;
LABEL_32:
          v35 = sub_2500FA2D8(a1, v8, a2, a3, __p, v67);
          v26 = 0;
          if (v63 >= 1 && !v35)
          {
            v36 = __p;
            v37 = v69 + 4;
            v38 = v63;
            do
            {
              v39 = sub_2500F2F8C(a1, __b);
              v40 = v39;
              if (v39)
              {
                v41 = 2;
              }

              else
              {
                v41 = 1;
              }

              if (sub_2500F2F8C(a1, &__b[v41]))
              {
                v42 = 2;
              }

              else
              {
                v42 = 0;
              }

              *v36++ = *&v37[4 * ((*(v37 - 1) + ~(v42 | v40)) & 3)];
              v37 += 20;
              --v38;
            }

            while (v38);
            v26 = 0;
            a3 = v59;
            goto LABEL_43;
          }

LABEL_44:
          sub_2500F2AB4(a1, __p, v6, (a1 + 4056), (a1 + 4372), v72 + 15 * v26, a2 + 4 * v8 * v6);
          if (v63 >= 1)
          {
            v43 = v69 + 4;
            v44 = v9;
            v45 = v63;
            do
            {
              v47 = *v44++;
              v46 = v47;
              v48 = *(v43 - 1);
              if (*&v43[4 * ((v48 - 1) & 3)] != v47)
              {
                *(v43 - 1) = v48 + 1;
                *&v43[4 * (v48 & 3)] = v46;
              }

              v43 += 20;
              --v45;
            }

            while (v45);
          }

          goto LABEL_49;
        }

LABEL_12:
        if (!v62 || *(a3 + v12) == 1 && *(a3 + v11) == 1 && *(a3 + v13) == 1)
        {
          v14 = v63;
          if (v63 >= 1)
          {
            v15 = v12 * v57;
            a2 = v58;
            v16 = (v58 + 4 * v15);
            v17 = (v58 + 4 * v11 * v63);
            v18 = v13 * v57;
            v6 = v57;
            v19 = (v58 + 4 * v18);
            v20 = __p;
            do
            {
              v22 = *v16++;
              v21 = v22;
              v23 = *v17++;
              v24 = v23 + v21;
              v25 = *v19++;
              *v20++ = v24 - v25;
              --v14;
            }

            while (v14);
            v26 = 2;
            goto LABEL_44;
          }

          v26 = 2;
LABEL_43:
          v6 = v57;
          a2 = v58;
          goto LABEL_44;
        }

        goto LABEL_23;
      }

      v12 = v64;
      v11 = HIDWORD(v64);
      v13 = v65;
    }

    a3 = v59;
    goto LABEL_12;
  }

LABEL_52:
  if (__p)
  {
    v67 = __p;
    operator delete(__p);
  }

  if (v69)
  {
    v70[0] = v69;
    operator delete(v69);
  }

  v49 = 360;
  do
  {
    v50 = v72 + v49;
    v51 = v70[v49 / 8];
    if (v51)
    {
      *(v50 - 2) = v51;
      operator delete(v51);
    }

    v52 = *(v50 - 6);
    if (v52)
    {
      *&v68[v49] = v52;
      operator delete(v52);
    }

    v53 = v72 + v49;
    v54 = *(&v64 + v49);
    if (v54)
    {
      *(v53 - 8) = v54;
      operator delete(v54);
    }

    v55 = *(v53 - 12);
    if (v55)
    {
      *(&v72[-5] + v49 - 8) = v55;
      operator delete(v55);
    }

    v56 = *(v50 - 15);
    if (v56)
    {
      *(&v72[-7] + v49) = v56;
      operator delete(v56);
    }

    v49 -= 120;
  }

  while (v49);
}

void sub_2500FB830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  for (i = 240; i != -120; i -= 120)
  {
    sub_2500F3FE0((&a25 + i));
  }

  _Unwind_Resume(a1);
}

void sub_2500FB88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v47 = *(a1 + 4332);
  v5 = *(a1 + 4336);
  v49 = *(a1 + 4360);
  memset_pattern16(__b, &unk_250110610, 6uLL);
  v57 = 0u;
  memset(v58, 0, 112);
  memset(v56, 0, sizeof(v56));
  sub_2500F3ECC(v56, v5);
  sub_2500F3ECC(&v57 + 1, v5);
  v6 = v5;
  sub_2500FD43C(v54, v5);
  LODWORD(v50) = 0;
  sub_2500FC9FC(&__p, v5, &v50);
  if (v47 >= 1)
  {
    v7 = 0;
    v45 = v5;
    v46 = 4 * v5;
    v8 = a2;
    v43 = a3;
    v44 = v5;
    while (v49 && *(a3 + v7) != 1)
    {
LABEL_37:
      ++v7;
      v8 += v46;
      if (v7 == v47)
      {
        goto LABEL_38;
      }
    }

    v9 = *(*(a1 + 4128) + 4 * v7);
    if ((v9 & 0x80000000) != 0)
    {
      v12 = v45;
      goto LABEL_20;
    }

    v51 = -1;
    v50 = -1;
    sub_2500F7D4C(a1, v9, v7, (*(a1 + 1256) + 12 * v9), &v50);
    v10 = v50;
    v11 = HIDWORD(v50);
    if (v50 < 0)
    {
      sub_2500F7D4C(a1, v9, v7, (*(a1 + 1280) + 12 * v9), &v50);
      if (v50 < 0)
      {
        v12 = v45;
        if (v11 == -1)
        {
LABEL_19:
          v6 = v44;
LABEL_20:
          v21 = sub_2500FA2D8(a1, v7, a2, a3, __p, v53);
          v20 = v56;
          if (v6 < 1 || v21)
          {
LABEL_32:
            sub_2500F2AB4(a1, __p, v6, (a1 + 4056), (a1 + 4372), v20, a2 + 4 * v7 * v6);
            if (v12 >= 1)
            {
              v29 = v54[0] + 4;
              v30 = v8;
              v31 = v12;
              do
              {
                v33 = *v30++;
                v32 = v33;
                v34 = *(v29 - 1);
                if (*&v29[4 * ((v34 - 1) & 3)] != v33)
                {
                  *(v29 - 1) = v34 + 1;
                  *&v29[4 * (v34 & 3)] = v32;
                }

                v29 += 20;
                --v31;
              }

              while (v31);
            }

            goto LABEL_37;
          }

          v22 = __p;
          v23 = v54[0] + 4;
          v24 = v12;
          do
          {
            v25 = sub_2500F2F8C(a1, __b);
            v26 = v25;
            if (v25)
            {
              v27 = 2;
            }

            else
            {
              v27 = 1;
            }

            if (sub_2500F2F8C(a1, &__b[v27]))
            {
              v28 = 2;
            }

            else
            {
              v28 = 0;
            }

            *v22++ = *&v23[4 * ((*(v23 - 1) + ~(v28 | v26)) & 3)];
            v23 += 20;
            --v24;
          }

          while (v24);
          v20 = v56;
          a3 = v43;
          v12 = v45;
LABEL_31:
          v6 = v44;
          goto LABEL_32;
        }

LABEL_10:
        if (!v49 || *(a3 + v10) == 1 && *(a3 + v11) == 1)
        {
          if (v12 >= 1)
          {
            v13 = (a2 + 4 * v10 * v44);
            v14 = (a2 + 4 * v11 * v12);
            v15 = __p;
            v16 = v12;
            do
            {
              v18 = *v13++;
              v17 = v18;
              v19 = *v14++;
              *v15++ = (v19 + v17) / 2;
              --v16;
            }

            while (v16);
          }

          v20 = &v57 + 1;
          goto LABEL_31;
        }

        goto LABEL_19;
      }

      v10 = v50;
      v11 = HIDWORD(v50);
    }

    v12 = v45;
    goto LABEL_10;
  }

LABEL_38:
  if (__p)
  {
    v53 = __p;
    operator delete(__p);
  }

  if (v54[0])
  {
    v54[1] = v54[0];
    operator delete(v54[0]);
  }

  for (i = 0; i != -240; i -= 120)
  {
    v36 = (v56 + i);
    v37 = *&v58[i + 88];
    if (v37)
    {
      v36[28] = v37;
      operator delete(v37);
    }

    v38 = v36[24];
    if (v38)
    {
      *&v58[i + 72] = v38;
      operator delete(v38);
    }

    v39 = v56 + i;
    v40 = *&v58[i + 40];
    if (v40)
    {
      *(v39 + 22) = v40;
      operator delete(v40);
    }

    v41 = *(v39 + 18);
    if (v41)
    {
      *&v58[i + 24] = v41;
      operator delete(v41);
    }

    v42 = v36[15];
    if (v42)
    {
      *&v58[i] = v42;
      operator delete(v42);
    }
  }
}

void sub_2500FBCA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  for (i = 120; i != -120; i -= 120)
  {
    sub_2500F3FE0((&a27 + i));
  }

  _Unwind_Resume(a1);
}

void *sub_2500FBCFC(void *a1)
{
  v2 = operator new(0x1128uLL);
  sub_2500FD550(v2);
  *a1 = v2;
  return a1;
}

void sub_2500FBD48(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_2500FBDC0(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 12 * a2;
  }
}

void sub_2500FBD84(void *result, unint64_t a2, _DWORD *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 2);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    sub_2500FC068(result, v5, a3);
  }

  else if (!v4)
  {
    result[1] = *result + 12 * a2;
  }
}

void sub_2500FBDC0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v11 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      sub_2500E9A94();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v17 = a1;
    if (v9)
    {
      v10 = sub_2500FC020(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    __p = v10;
    v14 = &v10[12 * v6];
    v16 = &v10[12 * v9];
    v12 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v14, v12);
    v15 = &v14[v12];
    sub_2500FBF9C(a1, &__p);
    if (v15 != v14)
    {
      v15 = &v14[(v15 - v14 - 12) % 0xCuLL];
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_2500FBF4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2500FBF9C(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v6[2] = v5[2];
      v5 += 3;
      v6 += 3;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void *sub_2500FC020(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x1555555555555556)
  {
    sub_2500E9AAC();
  }

  return operator new(12 * a2);
}

void sub_2500FC068(void *a1, unint64_t a2, _DWORD *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 2) >= a2)
  {
    if (a2)
    {
      v13 = &v6[3 * a2];
      do
      {
        *v6 = *a3;
        v6[1] = a3[1];
        v6[2] = a3[2];
        v6 += 3;
      }

      while (v6 != v13);
      v6 = v13;
    }

    a1[1] = v6;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 2);
    v9 = v8 + a2;
    if (v8 + a2 > 0x1555555555555555)
    {
      sub_2500E9A94();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    v20 = a1;
    if (v11)
    {
      v12 = sub_2500FC020(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v14 = &v12[12 * v8];
    __p = v12;
    v17 = v14;
    v19 = &v12[12 * v11];
    v15 = &v14[12 * a2];
    do
    {
      *v14 = *a3;
      *(v14 + 1) = a3[1];
      *(v14 + 2) = a3[2];
      v14 += 12;
    }

    while (v14 != v15);
    v18 = v15;
    sub_2500FBF9C(a1, &__p);
    if (v18 != v17)
    {
      v18 = &v17[(v18 - v17 - 12) % 0xCuLL];
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_2500FC1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2500FC244(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_2500FC494(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 12 * a2;
  }
}

void sub_2500FC280(uint64_t a1, int a2)
{
  v2 = a2;
  v3 = (a1 + 16);
  v4 = 1536;
  do
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    sub_2500FC690(&__p, *(v3 - 1), *v3, (*v3 - *(v3 - 1)) >> 3);
    sub_2500FC5F0(&__p, v2);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }

    v3 += 3;
    v4 -= 24;
  }

  while (v4);
}

void sub_2500FC2FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2500FC318(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    sub_2500FC748(result, a2 - v2);
  }
}

void sub_2500FC348(uint64_t a1, unint64_t a2)
{
  if (a2 > (*(a1 + 16) - *a1) >> 2)
  {
    if (a2 >> 62)
    {
      sub_2500E9A94();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = sub_2500FC894(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[4 * v6];
    v8 = *(a1 + 8) - *a1;
    v9 = &v4[v3 - v8];
    memcpy(v9, *a1, v8);
    v10 = *a1;
    *a1 = v9;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    if (v10)
    {

      operator delete(v10);
    }
  }
}

void sub_2500FC3E8(uint64_t a1, size_t __sz)
{
  v2 = *a1;
  if (*(a1 + 16) - *a1 < __sz)
  {
    if ((__sz & 0x8000000000000000) != 0)
    {
      sub_2500E9A94();
    }

    v5 = *(a1 + 8) - v2;
    v6 = operator new(__sz);
    memcpy(v6, v2, v5);
    *a1 = v6;
    *(a1 + 8) = &v6[v5];
    *(a1 + 16) = &v6[__sz];
    if (v2)
    {

      operator delete(v2);
    }
  }
}

void sub_2500FC494(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v11 = v4 + 12 * a2;
      do
      {
        *v4 = 0xFFFFFFFF00000000;
        *(v4 + 8) = -1;
        v4 += 12;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      sub_2500E9A94();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = sub_2500FC020(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v12 = &v10[12 * v6];
    v13 = &v12[12 * a2];
    v14 = v12;
    do
    {
      *v14 = 0xFFFFFFFF00000000;
      *(v14 + 2) = -1;
      v14 += 12;
    }

    while (v14 != v13);
    v15 = &v10[12 * v9];
    v16 = *(a1 + 8) - *a1;
    v17 = &v12[-v16];
    memcpy(&v12[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v13;
    *(a1 + 16) = v15;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

void sub_2500FC5F0(uint64_t a1, unint64_t a2)
{
  if (a2 > (*(a1 + 16) - *a1) >> 3)
  {
    if (a2 >> 61)
    {
      sub_2500E9A94();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = sub_2500EBDCC(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[8 * v6];
    v8 = *(a1 + 8) - *a1;
    v9 = &v4[v3 - v8];
    memcpy(v9, *a1, v8);
    v10 = *a1;
    *a1 = v9;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    if (v10)
    {

      operator delete(v10);
    }
  }
}

void *sub_2500FC690(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_2500FC70C(result, a4);
    v7 = *(v6 + 1);
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(*(v6 + 1), a2, v8);
    }

    *(v6 + 1) = v7 + v8;
  }

  return result;
}

void sub_2500FC6F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2500FC70C(void *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_2500E9A94();
  }

  result = sub_2500EBDCC(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[8 * v4];
  return result;
}

void sub_2500FC748(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_2500E9A94();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      v11 = sub_2500FC85C(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[16 * v8];
    v13 = &v11[16 * v10];
    bzero(v12, 16 * a2);
    v14 = &v12[16 * a2];
    v15 = *(a1 + 8) - *a1;
    v16 = &v12[-v15];
    memcpy(&v12[-v15], *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v14;
    *(a1 + 16) = v13;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void *sub_2500FC85C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    sub_2500E9AAC();
  }

  return operator new(16 * a2);
}

void *sub_2500FC894(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    sub_2500E9AAC();
  }

  return operator new(4 * a2);
}

void sub_2500FC8CC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_2500E9A94();
    }

    v9 = v7 >> 2;
    v10 = v4 - v6;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      v12 = sub_2500FC894(a1, v11);
      v6 = *a1;
      v7 = *(a1 + 8) - *a1;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[4 * v9];
    v14 = &v12[4 * v11];
    bzero(v13, 4 * a2);
    memcpy(&v13[-4 * (v7 >> 2)], v6, v7);
    v15 = *a1;
    *a1 = &v13[-4 * (v7 >> 2)];
    *(a1 + 8) = &v13[4 * a2];
    *(a1 + 16) = v14;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void *sub_2500FC9FC(void *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2500FCB10(a1, a2);
    v6 = 0;
    v7 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v8 = v7 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v9 = vdupq_n_s64(v7);
    v10 = a1[1];
    v11 = v10 + 4 * a2;
    v12 = *a3;
    v13 = v8 + 4;
    v14 = (v10 + 8);
    do
    {
      v15 = vdupq_n_s64(v6);
      v16 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v15, xmmword_2501105B0)));
      if (vuzp1_s16(v16, *v9.i8).u8[0])
      {
        *(v14 - 2) = v12;
      }

      if (vuzp1_s16(v16, *&v9).i8[2])
      {
        *(v14 - 1) = v12;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v15, xmmword_2501105F0)))).i32[1])
      {
        *v14 = v12;
        v14[1] = v12;
      }

      v6 += 4;
      v14 += 4;
    }

    while (v13 != v6);
    a1[1] = v11;
  }

  return a1;
}

void sub_2500FCAF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2500FCB10(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    sub_2500E9A94();
  }

  result = sub_2500FC894(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[4 * v4];
  return result;
}

void sub_2500FCB4C(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 2 * a2;
    }
  }

  else
  {
    sub_2500FCB7C(result, a2 - v2);
  }
}

void sub_2500FCB7C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      memset_pattern16(*(a1 + 8), &unk_250110610, 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      sub_2500E9A94();
    }

    v9 = v7 >> 1;
    v10 = v4 - v6;
    if (v10 > v8)
    {
      v8 = v10;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      v12 = sub_2500FCCB0(a1, v11);
      v6 = *a1;
      v7 = *(a1 + 8) - *a1;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[2 * v9];
    v14 = &v12[2 * v11];
    memset_pattern16(v13, &unk_250110610, 2 * a2);
    memcpy(&v13[-2 * (v7 >> 1)], v6, v7);
    v15 = *a1;
    *a1 = &v13[-2 * (v7 >> 1)];
    *(a1 + 8) = &v13[2 * a2];
    *(a1 + 16) = v14;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void *sub_2500FCCB0(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    sub_2500E9AAC();
  }

  return operator new(2 * a2);
}

void sub_2500FCCE4(uint64_t a1, unint64_t a2, int *a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v14 = 0;
      v15 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v16 = v15 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v17 = vdupq_n_s64(v15);
      v18 = v7 + 4 * a2;
      v19 = *a3;
      v20 = v16 + 4;
      v21 = (v7 + 8);
      do
      {
        v22 = vdupq_n_s64(v14);
        v23 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v22, xmmword_2501105B0)));
        if (vuzp1_s16(v23, *v17.i8).u8[0])
        {
          *(v21 - 2) = v19;
        }

        if (vuzp1_s16(v23, *&v17).i8[2])
        {
          *(v21 - 1) = v19;
        }

        if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v22, xmmword_2501105F0)))).i32[1])
        {
          *v21 = v19;
          v21[1] = v19;
        }

        v14 += 4;
        v21 += 4;
      }

      while (v20 != v14);
    }

    else
    {
      v18 = *(a1 + 8);
    }

    *(a1 + 8) = v18;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      sub_2500E9A94();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      v13 = sub_2500FC894(a1, v12);
    }

    else
    {
      v13 = 0;
    }

    v24 = 0;
    v25 = &v13[4 * v10];
    v26 = &v25[4 * a2];
    v27 = *a3;
    v28 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    v30 = v28 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v31 = v25 + 8;
    do
    {
      v32 = vdupq_n_s64(v24);
      v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v32, xmmword_2501105B0)));
      if (vuzp1_s16(v33, *v29.i8).u8[0])
      {
        *(v31 - 2) = v27;
      }

      if (vuzp1_s16(v33, *&v29).i8[2])
      {
        *(v31 - 1) = v27;
      }

      if (vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v32, xmmword_2501105F0)))).i32[1])
      {
        *v31 = v27;
        v31[1] = v27;
      }

      v24 += 4;
      v31 += 4;
    }

    while (v30 != v24);
    v34 = &v13[4 * v12];
    v35 = *(a1 + 8) - *a1;
    v36 = &v25[-v35];
    memcpy(&v25[-v35], *a1, v35);
    v37 = *a1;
    *a1 = v36;
    *(a1 + 8) = v26;
    *(a1 + 16) = v34;
    if (v37)
    {

      operator delete(v37);
    }
  }
}

void *sub_2500FCF2C(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_2500FCB10(a1, a2);
  v4 = a1[1];
  bzero(v4, 4 * a2);
  a1[1] = &v4[4 * a2];
  return a1;
}

void sub_2500FCF80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2500FCF9C(uint64_t a1, int a2)
{
  if (!sub_2500F2F8C(a1, (a1 + 3496)))
  {
    return sub_2500F3144(a1, 0, (a1 + 3530), (a1 + 3532)) + a2;
  }

  v4 = a1 + 3536;
  v5 = sub_2500F2F8C(a1, (a1 + 3536));
  if (v5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  if (sub_2500F2F8C(a1, (v4 + v6)))
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | v5;
  if (sub_2500F2F8C(a1, (v4 + 2 * (v8 + 3))))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = v8 | v9;
  if (sub_2500F2F8C(a1, (v4 + 2 * (v10 + 7))))
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  v12 = v10 | v11;
  if (sub_2500F2F8C(a1, (v4 + 2 * (v12 + 15))))
  {
    v13 = 16;
  }

  else
  {
    v13 = 0;
  }

  v14 = v12 | v13;
  if (sub_2500F2F8C(a1, (v4 + 2 * ((v12 | v13) + 31))))
  {
    v15 = 32;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_2500F2F8C(a1, (a1 + 3664));
  if (v16)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (sub_2500F2F8C(a1, (a1 + 3664 + v17)))
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 | v16;
  if (v19 != 3)
  {
    goto LABEL_29;
  }

  v20 = sub_2500F307C(a1, 0, (a1 + 3670));
  if (v20 >= -3)
  {
    v19 = v20 + 3;
LABEL_29:
    v21 = a1 + 24 * (v14 | v15);
    v22 = *(v21 + 1512);
    v23 = *(v21 + 1504);
    if (v19 < ((v22 - v23) >> 3))
    {
      v24 = *(v23 + 8 * v19);
      if (v24)
      {
        return -1431655765 * ((v24 - *(a1 + 1472)) >> 2);
      }
    }
  }

  *(a1 + 4384) = 3;
  return 0xFFFFFFFFLL;
}

void *sub_2500FD160(void *result, int a2, unsigned int a3, int a4)
{
  v4 = (a4 - 2);
  if (a3 > 2)
  {
    if (a3 == 3 || a3 == 5)
    {
      v12 = (result[181] + 16 * a2);
      v13 = v12[3];
      v14 = *v12;
      do
      {
        v15 = v14;
        v14 = *(result[166] + 4 * v4);
        if (*(result[169] + v4))
        {
          v16 = (result[157] + 12 * v14);
          *v16 = a2;
          v16[1] = v15;
          v16[2] = v13;
        }

        v13 = v15;
      }

      while (v4-- > 0);
    }

    else
    {
      v18 = 0;
      v19 = -1;
      v20 = -1;
      do
      {
        v21 = v19;
        v19 = *(result[166] + 4 * v18);
        if (*(result[169] + v18))
        {
          v22 = (result[157] + 12 * v19);
          *v22 = a2;
          v22[1] = v21;
          v22[2] = v20;
        }

        ++v18;
        v20 = v21;
      }

      while (a4 != v18);
    }
  }

  else
  {
    v5 = (result[181] + 16 * a2);
    v6 = v5[1];
    v7 = v5[2];
    v8 = 1;
    do
    {
      v9 = *(result[166] + 4 * v8);
      if (*(result[169] + v8))
      {
        v10 = (result[157] + 12 * v9);
        *v10 = a2;
        v10[1] = v6;
        v10[2] = v7;
      }

      ++v8;
      v7 = v6;
      v6 = v9;
    }

    while (a4 != v8);
    if (!a3)
    {
      if (*(result[169] + v4))
      {
        v11 = (result[160] + 12 * *(result[166] + 4 * v4));
        *v11 = a2;
        v11[1] = *v5;
        v11[2] = v5[3];
      }
    }
  }

  return result;
}

void sub_2500FD2AC(uint64_t a1, size_t a2)
{
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v5 - v4 >= a2)
  {
    if (a2)
    {
      v13 = &v4[a2];
      bzero(v4, a2);
      v4 = v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v7 = *a1;
    v8 = &v4[-*a1];
    v9 = v8 + a2;
    if ((v8 + a2) < 0)
    {
      sub_2500E9A94();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    bzero(&v12[v8], a2);
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = &v12[v8 + a2];
    *(a1 + 16) = &v12[v11];
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void *sub_2500FD3BC(void *a1, size_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2500EA010(a1, a2);
    v6 = a1[1];
    memset(v6, *a3, a2);
    a1[1] = &v6[a2];
  }

  return a1;
}

void sub_2500FD420(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2500FD43C(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2500FD4C4(a1, a2);
    v4 = a1[1];
    v5 = v4 + 20 * a2;
    v6 = 20 * a2;
    v7 = (v4 + 4);
    do
    {
      *v7 = 0;
      v7[1] = 0;
      *(v7 - 1) = 4;
      v7 = (v7 + 20);
      v6 -= 20;
    }

    while (v6);
    a1[1] = v5;
  }

  return a1;
}

void sub_2500FD4A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2500FD4C4(uint64_t *a1, unint64_t a2)
{
  if (a2 >= 0xCCCCCCCCCCCCCCDLL)
  {
    sub_2500E9A94();
  }

  result = sub_2500FD50C(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 20 * v4;
  return result;
}

void *sub_2500FD50C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xCCCCCCCCCCCCCCDLL)
  {
    sub_2500E9AAC();
  }

  return operator new(20 * a2);
}

uint64_t sub_2500FD550(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 1140) = 0;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0;
  *(a1 + 1144) = 4;
  *(a1 + 1148) = 0x101010100000002;
  *(a1 + 1156) = 1;
  *(a1 + 1496) = 0;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 0u;
  *(a1 + 1320) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1500) = -1;
  bzero((a1 + 1504), 0x700uLL);
  memset_pattern16((a1 + 3296), &unk_250110610, 0xAuLL);
  *(a1 + 3306) = 0x8000;
  memset_pattern16((a1 + 3308), &unk_250110610, 0x60uLL);
  *(a1 + 3404) = 0x8000;
  memset_pattern16((a1 + 3406), &unk_250110610, 6uLL);
  *(a1 + 3412) = 0x8000;
  memset_pattern16((a1 + 3414), &unk_250110610, 0x50uLL);
  *(a1 + 3494) = -2147450880;
  memset_pattern16((a1 + 3498), &unk_250110610, 0x20uLL);
  *(a1 + 3530) = -2147450880;
  *(a1 + 3534) = 0x8000;
  memset_pattern16((a1 + 3536), &unk_250110610, 0x80uLL);
  memset_pattern16((a1 + 3664), &unk_250110610, 6uLL);
  *(a1 + 3670) = 0x8000;
  memset_pattern16((a1 + 3672), &unk_250110610, 6uLL);
  *(a1 + 4028) = 0u;
  *(a1 + 4016) = 0u;
  *(a1 + 4000) = 0u;
  *(a1 + 3984) = 0u;
  *(a1 + 3968) = 0u;
  *(a1 + 3952) = 0u;
  *(a1 + 3936) = 0u;
  *(a1 + 3920) = 0u;
  *(a1 + 3904) = 0u;
  *(a1 + 3888) = 0u;
  *(a1 + 3872) = 0u;
  *(a1 + 3856) = 0u;
  *(a1 + 3840) = 0u;
  *(a1 + 3824) = 0u;
  *(a1 + 3808) = 0u;
  *(a1 + 3792) = 0u;
  *(a1 + 3776) = 0u;
  *(a1 + 3760) = 0u;
  *(a1 + 3744) = 0u;
  *(a1 + 3728) = 0u;
  *(a1 + 3712) = 0u;
  *(a1 + 3696) = 0u;
  *(a1 + 3680) = 0u;
  *(a1 + 4044) = 4;
  *(a1 + 4048) = 2;
  *(a1 + 4356) = 0u;
  *(a1 + 4056) = 0u;
  *(a1 + 4072) = 0u;
  *(a1 + 4088) = 0u;
  *(a1 + 4104) = 0u;
  *(a1 + 4120) = 0u;
  *(a1 + 4136) = 0u;
  *(a1 + 4152) = 0u;
  *(a1 + 4168) = 0u;
  *(a1 + 4184) = 0u;
  *(a1 + 4200) = 0u;
  *(a1 + 4216) = 0u;
  *(a1 + 4232) = 0u;
  *(a1 + 4248) = 0u;
  *(a1 + 4264) = 0u;
  *(a1 + 4280) = 0u;
  *(a1 + 4296) = 0u;
  *(a1 + 4312) = 0u;
  *(a1 + 4328) = 0u;
  *(a1 + 4344) = 0u;
  *(a1 + 4372) = 4;
  *(a1 + 4376) = 2;
  *(a1 + 4384) = 6;
  return a1;
}

uint64_t sub_2500FD77C(_DWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = *(a2 + 4);
  v4 = *&a1[6 * v3 + 2];
  v5 = ((*&a1[6 * v3 + 4] - v4) >> 3) - 1;
  if (v2 != v5)
  {
    v6 = *(v4 + 8 * v2);
    *(v4 + 8 * v2) = *(v4 + 8 * v5);
    *(v4 + 8 * v5) = v6;
    *(*(v4 + 8 * v2) + 8) = v2;
    *(v6 + 8) = v5;
  }

  return sub_2500FD7D0(a1, v3);
}

uint64_t sub_2500FD7D0(_DWORD *a1, int a2)
{
  v2 = (*a1)-- == 1;
  v3 = &a1[6 * a2 + 2];
  v4 = *(v3 + 1);
  v5 = *(v4 - 8);
  *(v3 + 1) = v4 - 8;
  *(v5 + 8) = -1;
  if (v2)
  {
    a1[1] = -1;
  }

  else
  {
    v6 = a1[1];
    if ((v6 & 0x80000000) == 0)
    {
      do
      {
        if (*&a1[6 * v6 + 2] != *&a1[6 * v6 + 4])
        {
          break;
        }

        a1[1] = v6 - 1;
      }

      while (v6-- > 0);
    }
  }

  return v5;
}

void *sub_2500FD840(void *a1)
{
  sub_2500FDA78((a1 + 531));
  sub_2500FDA78((a1 + 522));
  v2 = a1[519];
  if (v2)
  {
    a1[520] = v2;
    operator delete(v2);
  }

  v3 = a1[516];
  if (v3)
  {
    a1[517] = v3;
    operator delete(v3);
  }

  v4 = a1[513];
  if (v4)
  {
    a1[514] = v4;
    operator delete(v4);
  }

  v5 = a1[510];
  if (v5)
  {
    a1[511] = v5;
    operator delete(v5);
  }

  v6 = a1[507];
  if (v6)
  {
    a1[508] = v6;
    operator delete(v6);
  }

  v7 = a1[496];
  if (v7)
  {
    a1[497] = v7;
    operator delete(v7);
  }

  v8 = a1[493];
  if (v8)
  {
    a1[494] = v8;
    operator delete(v8);
  }

  v9 = a1[490];
  if (v9)
  {
    a1[491] = v9;
    operator delete(v9);
  }

  for (i = 488; i != 458; i -= 15)
  {
    v11 = &a1[i];
    v12 = a1[i - 1];
    if (v12)
    {
      a1[i] = v12;
      operator delete(v12);
    }

    v13 = *(v11 - 4);
    if (v13)
    {
      a1[i - 3] = v13;
      operator delete(v13);
    }

    v14 = &a1[i];
    v15 = a1[i - 7];
    if (v15)
    {
      *(v14 - 6) = v15;
      operator delete(v15);
    }

    v16 = *(v14 - 10);
    if (v16)
    {
      a1[i - 9] = v16;
      operator delete(v16);
    }

    v17 = *(v11 - 13);
    if (v17)
    {
      a1[i - 12] = v17;
      operator delete(v17);
    }
  }

  v18 = 192;
  do
  {
    v19 = a1[v18 + 185];
    if (v19)
    {
      a1[v18 + 186] = v19;
      operator delete(v19);
    }

    v18 -= 3;
  }

  while (v18 * 8);
  v20 = a1[184];
  if (v20)
  {
    a1[185] = v20;
    operator delete(v20);
  }

  v21 = a1[181];
  if (v21)
  {
    a1[182] = v21;
    operator delete(v21);
  }

  v22 = a1[178];
  if (v22)
  {
    a1[179] = v22;
    operator delete(v22);
  }

  v23 = a1[175];
  if (v23)
  {
    a1[176] = v23;
    operator delete(v23);
  }

  v24 = a1[172];
  if (v24)
  {
    a1[173] = v24;
    operator delete(v24);
  }

  v25 = a1[169];
  if (v25)
  {
    a1[170] = v25;
    operator delete(v25);
  }

  v26 = a1[166];
  if (v26)
  {
    a1[167] = v26;
    operator delete(v26);
  }

  v27 = a1[163];
  if (v27)
  {
    a1[164] = v27;
    operator delete(v27);
  }

  v28 = a1[160];
  if (v28)
  {
    a1[161] = v28;
    operator delete(v28);
  }

  v29 = a1[157];
  if (v29)
  {
    a1[158] = v29;
    operator delete(v29);
  }

  v30 = a1[154];
  if (v30)
  {
    a1[155] = v30;
    operator delete(v30);
  }

  v31 = a1[151];
  if (v31)
  {
    a1[152] = v31;
    operator delete(v31);
  }

  v32 = a1[148];
  if (v32)
  {
    a1[149] = v32;
    operator delete(v32);
  }

  v33 = a1[145];
  if (v33)
  {
    a1[146] = v33;
    operator delete(v33);
  }

  return a1;
}

uint64_t sub_2500FDA78(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_2500FDACC(int32x2_t *a1, uint64_t a2, int *a3, uint64_t a4, unsigned int *a5, uint64_t a6, int *a7, uint64_t a8, int *a9, uint64_t *a10, uint64_t *a11)
{
  v18 = a9;
  v19 = 4 * a4;
  if (!*(a8 + 16))
  {
    v19 = 0;
  }

  v20 = 12 * a2 + 4 * a4 + 4 * a6 + v19 + 1024;
  v21 = *a10;
  v22 = a10[1] - *a10;
  if (v20 <= v22)
  {
    if (v20 < v22)
    {
      a10[1] = v21 + v20;
    }
  }

  else
  {
    v24 = a8;
    sub_2500FD2AC(a10, v20 - v22);
    v18 = a9;
    a8 = v24;
    v21 = *a10;
  }

  *a11 = 0;
  return sub_2500FDBEC(v18, a1, a2, a3, a4, a5, a6, a7, v21, v20, a11, 0, 0, 0, a8);
}

void sub_2500FDBC4(void *a1, unint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_2500FD2AC(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + a2;
  }
}

uint64_t sub_2500FDBEC(int *a1, int32x2_t *a2, uint64_t a3, int *a4, uint64_t a5, unsigned int *a6, uint64_t a7, int *a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v422 = *MEMORY[0x277D85DE8];
  sub_2500EA58C(v402);
  if (!a2)
  {
    v24 = &v403;
    v25 = "[Error] coordinates == nullptr";
    v26 = 30;
    goto LABEL_56;
  }

  if (!a3)
  {
    v24 = &v403;
    v25 = "[Error] mesh has 0 vertices ";
    v26 = 28;
    goto LABEL_56;
  }

  if (!a5)
  {
    v24 = &v403;
    v25 = "[Error] mesh has 0 faces ";
    v26 = 25;
    goto LABEL_56;
  }

  if (!a6)
  {
    v24 = &v403;
    v25 = "[Error] faceVertexCounts == nullptr";
LABEL_13:
    v26 = 35;
    goto LABEL_56;
  }

  if (!a7)
  {
    v24 = &v403;
    v25 = "[Error] mesh has 0 indices ";
    v26 = 27;
    goto LABEL_56;
  }

  if (!a4 && 3 * a5 != a7)
  {
    v24 = &v403;
    v25 = "[Error] triangular mesh has invalid indexCount ";
    v26 = 47;
LABEL_56:
    v64 = sub_2500EAB44(v24, v25, v26);
LABEL_57:
    v32 = v64;
    v33 = 5;
    goto LABEL_58;
  }

  if (!a8 && *(a15 + 16) == 1)
  {
    v24 = &v403;
    v25 = "[Error] faceGroupIndices == nullptr";
    goto LABEL_13;
  }

  if (!a9)
  {
    v24 = &v403;
    v25 = "[Error] outputBuffer == nullptr";
    v26 = 31;
    goto LABEL_56;
  }

  if (a10 <= 0x20)
  {
    v27 = sub_2500EAB44(&v403, "[Error] output buffer size is ", 30);
    v28 = MEMORY[0x25305EB80](v27, a10);
    v29 = sub_2500EAB44(v28, " bytes", 6);
    v30 = sub_2500EAB44(v29, "It should at least ", 19);
    v31 = MEMORY[0x25305EB70](v30, 32);
    v32 = sub_2500EAB44(v31, " bytes ", 7);
    v33 = 1;
LABEL_58:
    std::ios_base::getloc((v32 + *(*v32 - 24)));
    v65 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
    (v65->__vftable[2].~facet_0)(v65, 10);
    std::locale::~locale(&__b);
    std::ostream::put();
    std::ostream::flush();
    goto LABEL_59;
  }

  v34 = *(a15 + 4);
  if (v34 >= 0x1C)
  {
    v24 = &v403;
    v25 = "[Error] bit depth should be between 0 and 28";
    v26 = 44;
    goto LABEL_56;
  }

  v35 = *(a15 + 12);
  if (v35 >= 3)
  {
    v51 = sub_2500EAB44(&v403, "[Error] geometry precition mode ", 32);
    v52 = MEMORY[0x25305EB60](v51, *(a15 + 12));
    v53 = sub_2500EAB44(v52, " not supported. Only the following modes are supported : ", 57);
    v54 = sub_2500EAB44(v53, "(", 1);
    v55 = MEMORY[0x25305EB60](v54, 0);
    v56 = sub_2500EAB44(v55, ") ", 2);
    v57 = sub_2500EAB44(v56, " DELTA,", 7);
    v58 = sub_2500EAB44(v57, "(", 1);
    v59 = MEMORY[0x25305EB60](v58, 1);
    v60 = sub_2500EAB44(v59, ") ", 2);
    v61 = sub_2500EAB44(v60, " PARALLELOGRAM, and", 19);
    v62 = sub_2500EAB44(v61, "(", 1);
    v63 = MEMORY[0x25305EB60](v62, 2);
    v24 = sub_2500EAB44(v63, ") ", 2);
    v25 = " ADAPTIVE_PARALLELOGRAM.";
    v26 = 24;
    goto LABEL_56;
  }

  v36 = *(a15 + 8);
  if (v36 > 4 || ((1 << v36) & 0x15) == 0)
  {
    v83 = sub_2500EAB44(&v403, "[Error] geometry binarization mode ", 35);
    v84 = MEMORY[0x25305EB60](v83, *(a15 + 8));
    v85 = sub_2500EAB44(v84, " not supported. Only the following modes are supported : ", 57);
    v86 = sub_2500EAB44(v85, "(", 1);
    v87 = MEMORY[0x25305EB60](v86, 0);
    v88 = sub_2500EAB44(v87, ") ", 2);
    v89 = sub_2500EAB44(v88, " AC,", 4);
    v90 = sub_2500EAB44(v89, "(", 1);
    v91 = MEMORY[0x25305EB60](v90, 2);
    v92 = sub_2500EAB44(v91, ") ", 2);
    v93 = sub_2500EAB44(v92, " EGK, and", 9);
    v94 = sub_2500EAB44(v93, "(", 1);
    v95 = MEMORY[0x25305EB60](v94, 4);
    v24 = sub_2500EAB44(v95, ") ", 2);
    v25 = " AC2.";
    v26 = 5;
    goto LABEL_56;
  }

  v395 = a8;
  if (a4)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0x10000;
    do
    {
      v41 = a4[v38];
      if ((v41 - 3) >= 0xFFFD)
      {
        v96 = sub_2500EAB44(&v403, "[Error] faceVertexCounts[", 25);
        v97 = MEMORY[0x25305EB80](v96, v38);
        v98 = sub_2500EAB44(v97, "] == ", 5);
        v99 = MEMORY[0x25305EB60](v98, v41);
        v100 = sub_2500EAB44(v99, " is not the range 3 to ", 23);
        v101 = 0xFFFFLL;
        goto LABEL_102;
      }

      if (v41 < v40)
      {
        v40 = a4[v38];
      }

      if (v39 <= v41)
      {
        v39 = a4[v38];
      }

      v37 += v41;
      ++v38;
    }

    while (a5 != v38);
    if (v39 == 4 && v40 == 3)
    {
      v43 = 2;
    }

    else
    {
      v43 = 3;
    }

    if (v40 == 4 && v39 == 4)
    {
      v45 = 1;
    }

    else
    {
      v45 = v43;
    }

    if (v40 == 3 && v39 == 3)
    {
      v47 = 0;
    }

    else
    {
      v47 = v45;
    }

    if (v37 != a7)
    {
      v48 = sub_2500EAB44(&v403, "[Error] indexCount == ", 22);
      v49 = MEMORY[0x25305EB80](v48, a7);
      v50 = sub_2500EAB44(v49, " is different from expected value of ", 37);
      v24 = MEMORY[0x25305EB80](v50, v37);
      v25 = " computed based on faceVertexCounts";
      goto LABEL_13;
    }
  }

  else
  {
    v47 = 0;
  }

  v68 = 0;
  do
  {
    v69 = a6[v68];
    if ((v69 & 0x80000000) != 0 || v69 >= a3)
    {
      v102 = sub_2500EAB44(&v403, "[Error] indices[", 16);
      v103 = MEMORY[0x25305EB80](v102, v68);
      v104 = sub_2500EAB44(v103, "] == ", 5);
      v105 = MEMORY[0x25305EB60](v104, v69);
      v100 = sub_2500EAB44(v105, " is not the range 0 to ", 23);
      v101 = (a3 - 1);
      goto LABEL_102;
    }

    ++v68;
  }

  while (a7 != v68);
  v408 = *a2;
  v70 = a2[1].i32[0];
  v410 = v408;
  v409 = v70;
  v411 = v70;
  if (a3 >= 2)
  {
    v23 = v408;
    v71 = v410;
    v72 = v409;
    v73 = v411;
    v74 = (a3 & 0x7FFFFFFF) - 1;
    v75 = &a2[2] + 1;
    do
    {
      v76 = *(v75 - 2);
      v23 = vmin_s32(v76, v23);
      v71 = vmax_s32(v71, v76);
      v78 = *v75;
      v75 += 3;
      v77 = v78;
      if (v78 < v72)
      {
        v72 = v77;
      }

      if (v73 <= v77)
      {
        v73 = v77;
      }

      --v74;
    }

    while (v74);
    v408 = v23;
    v410 = v71;
    v409 = v72;
    v411 = v73;
  }

  if (v34)
  {
    v79 = 0;
    while (1)
    {
      v80 = &v408 + v79;
      v81 = v80[3];
      v82 = *v80;
      if ((v82 & 0x80000000) != 0 || v81 >= 1 << v34)
      {
        break;
      }

      *(&v412 + v79++) = v81 - v82;
      if (v79 == 3)
      {
        goto LABEL_87;
      }
    }

    v115 = 1 << v34;
    v116 = sub_2500EAB44(&v403, "[Error] boundingBox[", 20);
    v117 = MEMORY[0x25305EB60](v116, v79);
    v118 = sub_2500EAB44(v117, "] == [", 6);
    v119 = MEMORY[0x25305EB60](v118, v82);
    v120 = sub_2500EAB44(v119, ", ", 2);
    v121 = MEMORY[0x25305EB60](v120, v81);
    v100 = sub_2500EAB44(v121, "] is not in the range 0 to ", 27);
    v101 = (v115 - 1);
    goto LABEL_102;
  }

  for (i = 0; i != 3; ++i)
  {
    v107 = v410.i32[i] - v408.i32[i];
    if (v107 > 0xFFFFFFF)
    {
      v122 = sub_2500EAB44(&v403, "[Error] boundingBox.max[", 24);
      v123 = MEMORY[0x25305EB60](v122, i);
      v124 = sub_2500EAB44(v123, "] - ", 4);
      v125 = sub_2500EAB44(v124, "boundingBox.min[", 16);
      v126 = MEMORY[0x25305EB60](v125, i);
      v127 = sub_2500EAB44(v126, "] == ", 5);
      v128 = MEMORY[0x25305EB90](v127, v107);
      v100 = sub_2500EAB44(v128, " is larger than ", 16);
      v101 = 0x10000000;
      goto LABEL_102;
    }

    *(&v412 + i) = v107;
  }

LABEL_87:
  v108 = a15;
  v109 = *(a15 + 16);
  if (v395 && (*(a15 + 16) & 1) != 0)
  {
    v110 = 0;
    while (1)
    {
      v111 = v395[v110];
      if (v111 < 0)
      {
        v111 = -v111;
      }

      if (v111 >> 28)
      {
        break;
      }

      if (a5 == ++v110)
      {
        goto LABEL_94;
      }
    }

    v129 = sub_2500EAB44(&v403, "[Error] abs(faceGroupIndices[", 29);
    v130 = MEMORY[0x25305EB80](v129, v110);
    v131 = sub_2500EAB44(v130, "]) == ", 6);
    v132 = MEMORY[0x25305EB60](v131, v395[v110]);
    v100 = sub_2500EAB44(v132, " is not in the range 0 to ", 26);
    v101 = 0xFFFFFFFLL;
LABEL_102:
    v64 = MEMORY[0x25305EB60](v100, v101);
    goto LABEL_57;
  }

LABEL_94:
  if (a10 < 4)
  {
    v113 = 0;
    v114 = 0;
  }

  else
  {
    v23.i32[0] = *(a15 + 17);
    v112 = *(a15 + 21);
    *a9 = -90009999;
    *(a9 + 8) = 0;
    *(a9 + 9) = 8;
    if (((a10 - 8) & 0x7FFFFFFFFFFFFFFELL) == 2)
    {
      v113 = 0;
      v114 = 0;
    }

    else
    {
      *(a9 + 10) = 0;
      *(a9 + 16) = a3;
      if (((a10 - 16) & 0x7FFFFFFFFFFFFFFCLL) == 4 || (*(a9 + 20) = a5, *(a9 + 24) = v36, *(a9 + 25) = v35, v133 = vshl_u16(*&vmovl_u8(v23), 0x4000300020001), *(a9 + 26) = v133.i8[0] | v133.i8[4] | ((v133.i32[0] | v133.i32[1]) >> 16) | (v47 << 6) | v109 | (32 * v112), *(a9 + 27) = v34, (a10 & 0x7FFFFFFFFFFFFFFCLL) == 0x1C) || (*(a9 + 28) = a7, a10 < 0x24) || (*(a9 + 32) = v408.i32[0], v134 = (a10 + 0x7FFFFFFFFFFFFFE0) & 0x7FFFFFFFFFFFFFFCLL, v134 == 4) || (*(a9 + 36) = v408.i32[1], v134 == 8))
      {
        v113 = 0;
        v114 = 0;
      }

      else
      {
        v113 = a10 - 44;
        v114 = (a9 + 44);
        *(a9 + 40) = v409;
      }
    }

    v108 = a15;
  }

  for (j = 0; j != 12; j += 4)
  {
    if ((*(v108 + 21) & 1) == 0)
    {
      break;
    }

    v136 = 32 - __clz(*(&v412 + j));
    *(&v412 + j) = v136;
    v337 = v113-- < 1;
    if (v337)
    {
      v113 = 0;
      v114 = 0;
    }

    else
    {
      *v114 = v136;
      v114 = (v114 + 1);
    }
  }

  v392 = v114;
  v393 = v113;
  *a1 = a3;
  a1[1] = a5;
  a1[2] = a7;
  *(a1 + 3) = v412;
  a1[5] = v413;
  *(a1 + 3) = v408;
  a1[8] = v409;
  a1[9] = v47;
  sub_2500F247C(a1 + 8, 0);
  LODWORD(__b.__locale_) = -1;
  sub_2500F6064(a1 + 8, a3, &__b);
  sub_2500F247C(a1 + 5, 0);
  LODWORD(__b.__locale_) = -1;
  sub_2500F6064(a1 + 5, a5, &__b);
  sub_2500F247C(a1 + 14, a5);
  sub_2500F247C(a1 + 11, a3);
  sub_2500F247C(a1 + 32, a5);
  sub_2500FBD48(a1 + 17, 0);
  LODWORD(v418[0]) = -1;
  __b.__locale_ = -1;
  sub_2500FBD84(a1 + 17, a3, &__b);
  sub_2500FBD48(a1 + 20, 0);
  LODWORD(v418[0]) = -1;
  __b.__locale_ = -1;
  sub_2500FBD84(a1 + 20, a3, &__b);
  sub_2500FBD48(a1 + 23, a3);
  v137 = 0;
  v138 = a3 & 0x7FFFFFFF;
  do
  {
    v139 = a2[1].i32[v137] - a1[8];
    v140 = (*(a1 + 23) + v137 * 4);
    *v140 = vsub_s32(*(a2 + v137 * 4), *(a1 + 6));
    v140[1].i32[0] = v139;
    v137 += 3;
    --v138;
  }

  while (v138);
  v141 = (a5 + 1);
  sub_2500F247C(a1 + 29, v141);
  v142 = *(a1 + 29);
  *v142 = 0;
  if (a4)
  {
    if (a5 >= 1)
    {
      v143 = 0;
      v144 = a5 & 0x7FFFFFFF;
      v145 = v142 + 1;
      do
      {
        v146 = *a4++;
        v143 += v146;
        *v145++ = v143;
        --v144;
      }

      while (v144);
    }
  }

  else if (a5 >= 1)
  {
    v147 = 0;
    v148 = vdupq_n_s64(v141 - 2);
    v149 = v142 + 2;
    v150 = 12;
    do
    {
      v151 = vdupq_n_s64(v147);
      v152 = vmovn_s64(vcgeq_u64(v148, vorrq_s8(v151, xmmword_2501105B0)));
      if (vuzp1_s16(v152, *v148.i8).u8[0])
      {
        *(v149 - 1) = v150 - 9;
      }

      if (vuzp1_s16(v152, *&v148).i8[2])
      {
        *v149 = v150 - 6;
      }

      if (vuzp1_s16(*&v148, vmovn_s64(vcgeq_u64(v148, vorrq_s8(v151, xmmword_2501105F0)))).i32[1])
      {
        v149[1] = v150 - 3;
        v149[2] = v150;
      }

      v147 += 4;
      v149 += 4;
      v150 += 12;
    }

    while (((v141 + 2) & 0x1FFFFFFFCLL) != v147);
  }

  sub_2500F247C(a1 + 26, a7);
  if (a7)
  {
    memmove(*(a1 + 26), a6, 4 * a7);
  }

  v153 = *a1;
  if (*(a15 + 18) == 1 && *(a15 + 17) == 1 || (sub_2500F247C(a1 + 63, 0), LODWORD(__b.__locale_) = 0, sub_2500F6064(a1 + 63, v153, &__b), (*(a15 + 17) & 1) != 0))
  {
    sub_2500FC244(a1 + 69, v153);
    sub_2500FC280((a1 + 144), 64);
  }

  v399 = a1 + 132;
  sub_2500FC318(a1 + 66, v153);
  v154 = *(a1 + 66);
  v155 = *(a1 + 67);
  if (v154 != v155)
  {
    memset(v154, 255, (v155 - v154) & 0xFFFFFFFFFFFFFFF0);
  }

  *(a1 + 35) = 0;
  sub_2500FC348((a1 + 90), 0x100uLL);
  v156 = *(a1 + 60);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 62) - v156) >> 2) <= 0x3F)
  {
    v157 = *(a1 + 61);
    v158 = operator new(0x300uLL);
    memcpy(v158, v156, v157 - v156);
    *(a1 + 60) = v158;
    *(a1 + 61) = &v158[v157 - v156];
    *(a1 + 62) = v158 + 768;
    if (v156)
    {
      operator delete(v156);
    }
  }

  sub_2500FC348((a1 + 114), 0x40uLL);
  sub_2500FC348((a1 + 108), 0x40uLL);
  sub_2500FC348((a1 + 96), 0x20uLL);
  sub_2500FC3E8((a1 + 102), 0x20uLL);
  v398 = a1 + 594;
  memset_pattern16(a1 + 594, &unk_250110610, 0xAuLL);
  *(a1 + 1193) = 0x8000;
  for (k = 2388; k != 2484; k += 6)
  {
    memset_pattern16(a1 + k, &unk_250110610, 6uLL);
  }

  *(a1 + 1242) = 0x8000;
  memset_pattern16(a1 + 2486, &unk_250110610, 6uLL);
  *(a1 + 1246) = 0x8000;
  for (m = 2494; m != 2574; m += 16)
  {
    memset_pattern16(a1 + m, &unk_250110610, 0x10uLL);
  }

  memset_pattern16(a1 + 2578, &unk_250110610, 0x20uLL);
  memset_pattern16(a1 + 654, &unk_250110610, 0x80uLL);
  *(a1 + 1307) = 0x8000;
  *(a1 + 2574) = -2147450880;
  *(a1 + 2610) = -2147450880;
  memset_pattern16(a1 + 688, &unk_250110610, 6uLL);
  sub_2500F3ECC(a1 + 345, 3);
  sub_2500F3ECC(a1 + 360, 3);
  sub_2500F80EC(a1 + 36, *a1);
  v161 = *(a1 + 26);
  v162 = *(a1 + 27);
  if (v161 != v162)
  {
    v163 = *(a1 + 36) + 4;
    do
    {
      v164 = *v161++;
      ++*(v163 + 4 * v164);
    }

    while (v161 != v162);
  }

  sub_2500F8158(a1 + 36);
  v165 = a1[1];
  if (v165 >= 1)
  {
    v166 = 0;
    v167 = *(a1 + 42);
    v168 = *(a1 + 29);
    v169 = *(a1 + 26);
    do
    {
      v170 = *(v168 + 4 * v166);
      v171 = v166 + 1;
      v172 = *(v168 + 4 * (v166 + 1));
      if (v170 < v172)
      {
        v173 = *(a1 + 36);
        v174 = *(a1 + 39);
        do
        {
          v175 = *(v169 + 4 * v170);
          v176 = *(v173 + 4 * v175);
          v177 = *(v174 + 4 * v175);
          v178 = v177 + v176;
          if (v177 <= 0)
          {
LABEL_158:
            *(v174 + 4 * v175) = v177 + 1;
            *(v167 + 4 * v178) = v166;
          }

          else
          {
            v178 = v178;
            while (v166 != *(v167 + 4 * v176))
            {
              if (++v176 >= v178)
              {
                goto LABEL_158;
              }
            }
          }

          ++v170;
        }

        while (v170 != v172);
      }

      ++v166;
    }

    while (v171 != v165);
  }

  v179 = a1 + 890;
  v391 = v393 - 4;
  a1[891] = (v393 - 4) & ~((v393 - 4) >> 63);
  *(a1 + 446) = v392 + 1;
  sub_2500F0AB8((a1 + 890));
  v180 = *a1;
  v401 = a1 + 890;
  v394 = v180;
  if (*(a15 + 17) == 1)
  {
    if (v180 >= 1)
    {
      v181 = 0;
      v182 = a1 + 144;
      v183 = -1;
      while (1)
      {
        v184 = *(a1 + 8);
        v396 = v181;
        if (*(v184 + 4 * v181) == -1)
        {
          v185 = a1[70];
          *(v184 + 4 * v181) = v185;
          a1[70] = v185 + 1;
          *(*(a1 + 11) + 4 * v185) = v181;
          v186 = *(a15 + 21) ? -1 : v183;
          v187 = 3 * v181;
          *(*(a1 + 17) + 12 * v181) = v186;
          sub_25010656C(a1, v181, a15);
          sub_2500F6938(a1 + 144, (*(a1 + 69) + 4 * v187));
          if (*v182)
          {
            break;
          }
        }

LABEL_308:
        v181 = v396 + 1;
        if (v396 + 1 == v394)
        {
          goto LABEL_330;
        }
      }

      while (1)
      {
        v188 = a1[145];
        v189 = v188 < 0 ? 0 : sub_2500FD7D0(a1 + 144, v188);
        v183 = -1431655765 * ((v189 - *(a1 + 69)) >> 2);
        sub_250105F68(a1, v183);
        v190 = (*(a1 + 58) - *(a1 + 57)) >> 2;
        v191 = *(*(a1 + 66) + 16 * v183);
        v192 = *(*(a1 + 66) + 16 * v183 + 4);
        v193 = v191 != -1;
        v194 = v192 == v191 && v191 != -1;
        v195 = v190 - 1;
        v196 = (v193 | (2 * (v192 != -1))) + v194;
        sub_250100B10(v179, v190 > 1, v398 + v196);
        if (v190 >= 2)
        {
          break;
        }

LABEL_307:
        v179 = a1 + 890;
        if (!*v182)
        {
          goto LABEL_308;
        }
      }

      v197 = 0;
      while (1)
      {
        LODWORD(__b.__locale_) = 0;
        v198 = sub_250107098(a1, v183, v197, v196, &__b, a15);
        sub_250107A78(a1, __b.__locale_, v198, a15);
        v199 = v198;
        if (v198 > 1)
        {
          break;
        }

LABEL_297:
        if (v198 >= 1)
        {
          v275 = 0;
          do
          {
            v276 = (*(a1 + 69) + 12 * *(*(a1 + 48) + 4 * v275));
            if (*(*(a1 + 51) + v275))
            {
              sub_2500F6938(a1 + 144, v276);
            }

            else
            {
              sub_2500F6A68(a1 + 144, v276);
            }

            ++v275;
          }

          while (v199 != v275);
        }

        v277 = *(*v399 + 16 * v183);
        v278 = *(*v399 + 16 * v183 + 4);
        v279 = v278 != -1;
        v280 = v277 != -1;
        v281 = v278 == v277 && v277 != -1;
        sub_250100B10(v401, ++v197 < v195, a1 + 1193);
        v196 = (v280 | (2 * v279)) + v281;
        if (v197 == v195)
        {
          goto LABEL_307;
        }
      }

      v200 = *(a15 + 19);
      v201 = v198 - 1;
      v202 = (*(a1 + 48) + 4);
      while (1)
      {
        v204 = *(v202 - 1);
        v203 = *v202;
        if (v200)
        {
          break;
        }

        v235 = *(a1 + 69);
        *(v235 + 12 * v204) += 8;
        v234 = (v235 + 12 * v203);
        LODWORD(v235) = 8;
LABEL_296:
        ++v202;
        *v234 += v235;
        if (!--v201)
        {
          goto LABEL_297;
        }
      }

      v205 = *(a1 + 23);
      v206 = (v205 + 12 * v183);
      v207 = v205 + 12 * v204;
      v208 = (v205 + 12 * v203);
      v209 = *v208;
      v210.i64[0] = *v207;
      v211 = *v208 - *v207;
      v212 = *(v208 + 1);
      v213 = *(v207 + 8);
      v214 = *v206;
      v215 = v206[1].i32[0];
      v216 = v215 - v213;
      if (v211 >= 0)
      {
        v217 = v211;
      }

      else
      {
        v217 = -v211;
      }

      *v218.i8 = v214;
      v218.u64[1] = v212;
      v210.i64[1] = __PAIR64__(v213, v210.u32[1]);
      v219.i64[0] = 0x100000001000;
      v219.i64[1] = 0x100000001000;
      v220 = vmovn_s32(vcgtq_u32(v219, vabdq_s32(v218, v210)));
      v221 = vsubq_s32(v218, v210);
      if (v216 >= 0)
      {
        v222 = v215 - v213;
      }

      else
      {
        v222 = v213 - v215;
      }

      if (((v217 < 0x1000) & v220.i8[4] & v220.i8[6]) == 1 && (v220.i8[0] & 1) != 0 && (v220.i8[2] & 1) != 0 && v222 <= 0xFFF)
      {
        v223 = v221.i32[0] * v211 + v221.i32[1] * v221.i32[2] + v216 * v221.i32[3];
        if (v223)
        {
          v224 = v216 * v221.i32[2] - v221.i32[1] * v221.i32[3];
          if (v224 < 0)
          {
            v224 = v221.i32[1] * v221.i32[3] - v216 * v221.i32[2];
          }

          v225 = v221.i32[0] * v221.i32[3] - v216 * v211;
          if (v225 < 0)
          {
            v225 = -v225;
          }

          v226 = v221.i32[1] * v211 - v221.i32[0] * v221.i32[2];
          if (v226 < 0)
          {
            v226 = v221.i32[0] * v221.i32[2] - v221.i32[1] * v211;
          }

          v227 = v224 + v225;
          if (v225 < v226)
          {
            v228 = v226;
          }

          else
          {
            v227 = v224 + v226;
            v228 = v225;
          }

          v229 = v224 >= v225 && v224 >= v226;
          if (v229)
          {
            v230 = v225 + v226;
          }

          else
          {
            v230 = v227;
          }

          if (v229)
          {
            v231 = v224;
          }

          else
          {
            v231 = v228;
          }

          v232 = v231 + (v230 >> 2);
          if (v223 < 0)
          {
            LODWORD(v233) = -16 * v223 / (v232 - v223) + 16;
          }

          else
          {
            LODWORD(v233) = (16 * v232) / (v232 + v223);
          }

          goto LABEL_236;
        }
      }

      else
      {
        v236 = v221.i32[1] * v221.i32[2] + v221.i32[0] * v211 + v216 * v221.i32[3];
        if (v236)
        {
          v237 = v216 * v221.i32[2] - v221.i32[1] * v221.i32[3];
          if (v237 < 0)
          {
            v237 = v221.i32[1] * v221.i32[3] - v216 * v221.i32[2];
          }

          v238 = v221.i32[0] * v221.i32[3] - v216 * v211;
          if (v238 < 0)
          {
            v238 = -v238;
          }

          v239 = v221.i32[1] * v211 - v221.i32[0] * v221.i32[2];
          if (v239 < 0)
          {
            v239 = v221.i32[0] * v221.i32[2] - v221.i32[1] * v211;
          }

          v240 = v237 + v238;
          if (v238 < v239)
          {
            v241 = v239;
          }

          else
          {
            v240 = v237 + v239;
            v241 = v238;
          }

          v242 = v237 >= v238 && v237 >= v239;
          if (v242)
          {
            v243 = v238 + v239;
          }

          else
          {
            v243 = v240;
          }

          if (v242)
          {
            v244 = v237;
          }

          else
          {
            v244 = v241;
          }

          v245 = v244 + (v243 >> 2);
          if (v236 < 0)
          {
            LODWORD(v233) = -16 * v236 / (v245 - v236) + 16;
          }

          else
          {
            v233 = (16 * v245) / (v245 + v236);
          }

LABEL_236:
          v246 = v214.i32[0] - v209;
          v247 = vsub_s32(vdup_lane_s32(v214, 1), v212).u32[0];
          v248 = *(a1 + 69);
          *(v248 + 12 * v204) += v233;
          v249 = v215 - v212.i32[1];
          v250 = -v211;
          v251 = -v221.i32[2];
          v252 = -v221.i32[3];
          if (v246 >= 0)
          {
            v253 = v246;
          }

          else
          {
            v253 = -v246;
          }

          if (v253 < 0x1000)
          {
            v254 = (v217 < 0x1000) & v220.i8[4] & v220.i8[6];
          }

          else
          {
            v254 = 0;
          }

          if (v247 >= 0)
          {
            v255 = v247;
          }

          else
          {
            v255 = -v247;
          }

          if (v249 >= 0)
          {
            v256 = v249;
          }

          else
          {
            v256 = -v249;
          }

          if (v254 == 1 && v255 <= 0xFFF && v256 <= 0xFFF)
          {
            v257 = v246 * v250 + v247 * v251 + v249 * v252;
            if (v257)
            {
              v258 = v247 * v221.i32[3] + v249 * v251;
              if (v258 < 0)
              {
                v258 = -v258;
              }

              v259 = v246 * v252 + v249 * v211;
              if (v259 < 0)
              {
                v259 = -v259;
              }

              v260 = v246 * v221.i32[2] + v247 * v250;
              if (v260 < 0)
              {
                v260 = -v260;
              }

              v261 = v258 + v259;
              if (v259 < v260)
              {
                v262 = v260;
              }

              else
              {
                v261 = v258 + v260;
                v262 = v259;
              }

              v263 = v258 >= v259 && v258 >= v260;
              if (v263)
              {
                v264 = v259 + v260;
              }

              else
              {
                v264 = v261;
              }

              if (v263)
              {
                v265 = v258;
              }

              else
              {
                v265 = v262;
              }

              v266 = v265 + (v264 >> 2);
              if (v257 < 0)
              {
                LODWORD(v235) = -16 * v257 / (v266 - v257) + 16;
              }

              else
              {
                LODWORD(v235) = (16 * v266) / (v266 + v257);
              }

              goto LABEL_295;
            }
          }

          else
          {
            v235 = v247 * v251 + v246 * v250 + v249 * v252;
            if (v235)
            {
              v267 = v249 * v251 - v247 * v252;
              if (v267 < 0)
              {
                v267 = v247 * v252 - v249 * v251;
              }

              v268 = v246 * v252 - v249 * v250;
              if (v268 < 0)
              {
                v268 = v249 * v250 - v246 * v252;
              }

              v269 = v247 * v250 - v246 * v251;
              if (v269 < 0)
              {
                v269 = -v269;
              }

              v270 = v267 + v268;
              if (v268 < v269)
              {
                v271 = v269;
              }

              else
              {
                v270 = v267 + v269;
                v271 = v268;
              }

              v272 = v267 >= v268 && v267 >= v269;
              if (v272)
              {
                v273 = v268 + v269;
              }

              else
              {
                v273 = v270;
              }

              if (!v272)
              {
                v267 = v271;
              }

              v274 = v267 + (v273 >> 2);
              if (v235 < 0)
              {
                LODWORD(v235) = -16 * v235 / (v274 - v235) + 16;
              }

              else
              {
                v235 = 16 * v274 / (v274 + v235);
              }

              goto LABEL_295;
            }
          }

          LODWORD(v235) = 16;
LABEL_295:
          v234 = (v248 + 12 * v203);
          goto LABEL_296;
        }
      }

      LODWORD(v233) = 16;
      goto LABEL_236;
    }
  }

  else if (v180 >= 1)
  {
    v282 = 0;
    LODWORD(v283) = 0;
    v284 = -1;
    do
    {
      v285 = *(a1 + 8);
      if (*(v285 + 4 * v282) == -1)
      {
        v286 = a1[70];
        *(v285 + 4 * v282) = v286;
        a1[70] = v286 + 1;
        *(*(a1 + 11) + 4 * v286) = v282;
        v287 = *(a15 + 21) ? -1 : v284;
        *(*(a1 + 17) + 12 * v282) = v287;
        sub_25010656C(a1, v282, a15);
        if (v283 < a1[70])
        {
          v283 = v283;
          do
          {
            v284 = *(*(a1 + 11) + 4 * v283);
            sub_250105F68(a1, v284);
            v288 = (*(a1 + 58) - *(a1 + 57)) >> 2;
            v289 = *(*(a1 + 66) + 16 * v284);
            v290 = *(*(a1 + 66) + 16 * v284 + 4);
            v291 = v289 != -1;
            v292 = v290 == v289 && v289 != -1;
            v293 = (v291 | (2 * (v290 != -1))) + v292;
            sub_250100B10(v179, v288 > 1, v398 + v293);
            if (v288 >= 2)
            {
              v294 = 1;
              do
              {
                LODWORD(__b.__locale_) = 0;
                v295 = sub_250107098(a1, v284, v294 - 1, v293, &__b, a15);
                sub_250107A78(a1, __b.__locale_, v295, a15);
                v296 = *(*(a1 + 66) + 16 * v284);
                v297 = *(*(a1 + 66) + 16 * v284 + 4);
                v298 = v296 != -1;
                v299 = v297 == v296 && v296 != -1;
                v293 = (v298 | (2 * (v297 != -1))) + v299;
                sub_250100B10(v401, v294++ < v288 - 1, a1 + 1193);
              }

              while (v288 != v294);
            }

            ++v283;
            v179 = a1 + 890;
          }

          while (v283 < a1[70]);
          v180 = v394;
        }
      }

      ++v282;
    }

    while (v282 != v180);
  }

LABEL_330:
  v300 = sub_250105B4C(v179);
  if (v393 >= 4)
  {
    *v392 = v300;
  }

  if (v392 == -4)
  {
    v301 = v300;
  }

  else
  {
    v301 = v392 + v300 + 4;
  }

  v33 = *v179;
  if (v33)
  {
    goto LABEL_59;
  }

  v302 = v391 - v300;
  if (*(a15 + 16) != 1)
  {
LABEL_424:
    v33 = 1;
    if (v301 && (v302 & 0x8000000000000000) == 0)
    {
      v355 = (a10 & ~(a10 >> 63)) - v302;
      v356 = a10 - v355 < 0;
      if (a10 - v355 >= 0)
      {
        v357 = (a10 & ~(a10 >> 63)) - v302;
      }

      else
      {
        v357 = 0;
      }

      v358 = a9;
      if (v356)
      {
        v358 = 0;
      }

      v359 = v357 & ~(v357 >> 63);
      *a11 = v359;
      if (v357 >= 16)
      {
        *(v358 + 12) = v359;
      }

      v360 = 8;
      if (v357 > 8)
      {
        v360 = v357;
      }

      v361 = v360 - 8;
      if (v360 == 8)
      {
        v363 = -1;
      }

      else
      {
        v362 = (v358 + 8);
        v363 = -1;
        do
        {
          v364 = *v362++;
          v363 = dword_250110020[v364 ^ HIBYTE(v363)] ^ (v363 << 8);
          --v361;
        }

        while (v361);
      }

      if (v357 >= 8)
      {
        *(v358 + 4) = v363;
      }

      if (a12)
      {
        v365 = *a1;
        if (v365 >= 1)
        {
          v366 = 0;
          v367 = 0;
          v368 = *(a1 + 6);
          v369 = a1[8];
          v370 = 12 * v365;
          do
          {
            v371 = (*(a1 + 23) + v367);
            v372 = v371[1].i32[0] + v369;
            v373 = (a12 + 12 * *(*(a1 + 8) + v366));
            *v373 = vadd_s32(*v371, v368);
            v373[1].i32[0] = v372;
            v367 += 12;
            v366 += 4;
          }

          while (v370 != v367);
        }
      }

      if (a13)
      {
        v374 = a1[1];
        if (v374 >= 1)
        {
          v375 = *(a1 + 5);
          v376 = (*(a1 + 29) + 4);
          do
          {
            v377 = *v375++;
            *(a13 + 4 * v377) = *v376 - *(v376 - 1);
            ++v376;
            --v374;
          }

          while (v374);
        }
      }

      if (a14 && (v378 = a1[1], v378 >= 1))
      {
        v379 = 0;
        v380 = 0;
        v381 = *(a1 + 14);
        v382 = *(a1 + 29);
        do
        {
          v383 = *(v381 + 4 * v379);
          v384 = *(v382 + 4 * v383);
          v385 = *(v382 + 4 + 4 * v383);
          if (v384 < v385)
          {
            v386 = *(a1 + 8);
            v387 = (a14 + 4 * v380);
            v388 = v385 - v384;
            v389 = (*(a1 + 26) + 4 * v384);
            v380 = v380 + v385 - v384;
            do
            {
              v390 = *v389++;
              *v387++ = *(v386 + 4 * v390);
              --v388;
            }

            while (v388);
          }

          v33 = 0;
          ++v379;
        }

        while (v379 != v378);
      }

      else
      {
        v33 = 0;
      }
    }

    goto LABEL_59;
  }

  v303 = a1[1];
  v400 = v391 - v300;
  v397 = v302 - 4;
  a1[891] = (v302 - 4) & ~((v302 - 4) >> 63);
  *(a1 + 446) = v301 + 4;
  sub_2500F0AB8(v401);
  if (!*(a15 + 8))
  {
    LOWORD(v416) = 0x8000;
    v415 = 0x8000;
    memset_pattern16(&__b, &unk_250110610, 0x80uLL);
    v414 = 0x8000;
    v316 = a1 + 890;
    if (v303 < 1)
    {
      goto LABEL_368;
    }

    v317 = 0;
    v318 = 0;
    while (1)
    {
      v319 = v318;
      v318 = v395[*(*(a1 + 14) + v317)];
      v320 = &v416;
      v321 = v316;
      v322 = v318 - v319;
      if (v318 == v319)
      {
        v323 = 0;
      }

      else
      {
        sub_250100B10(v316, 1, &v416);
        if ((v322 & 0x80000000) != 0)
        {
          sub_250100B10(v316, 0, &v415);
          v322 = -v322;
        }

        else
        {
          sub_250100B10(v316, 1, &v415);
        }

        if (v322 > 0x3F)
        {
          sub_250100B10(v316, 1, &__b);
          sub_250100B10(v316, 1, &__b.__locale_ + 2);
          sub_250100B10(v316, 1, v418 + 2);
          sub_250100B10(v316, 1, v419);
          sub_250100B10(v316, 1, v420);
          sub_250100B10(v316, 1, v421);
          sub_25010FAC4(v316, v322 - 64, 6, &v414);
          goto LABEL_367;
        }

        v324 = v322 - 1;
        sub_250100B10(v401, (v322 - 1) & 1, &__b);
        sub_250100B10(v401, (v324 >> 1) & 1, &__b.__locale_ + (v324 & 1) + 1);
        sub_250100B10(v401, (v324 >> 2) & 1, &__b.__locale_ + (v324 & 3) + 3);
        sub_250100B10(v401, (v324 >> 3) & 1, &__b + (v324 & 7) + 7);
        sub_250100B10(v401, (v324 >> 4) & 1, &__b + (v324 & 0xF) + 15);
        v323 = ((v322 - 1) >> 5) & 1;
        v316 = a1 + 890;
        v320 = (&__b + 2 * ((v322 - 1) & 0x1F) + 62);
        v321 = a1 + 890;
      }

      sub_250100B10(v321, v323, v320);
LABEL_367:
      v317 += 4;
      if (4 * v303 == v317)
      {
        goto LABEL_368;
      }
    }
  }

  LOWORD(v416) = 0x8000;
  v415 = 0x8000;
  memset_pattern16(&__b, &unk_250110610, 0x80uLL);
  v414 = 0x8000;
  v304 = a1 + 890;
  if (v303 >= 1)
  {
    v305 = 0;
    v306 = 0;
    v307 = 4 * v303;
    v308 = 6;
    do
    {
      v309 = v306;
      v306 = v395[*(*(a1 + 14) + v305)];
      v310 = &v416;
      v311 = v304;
      v312 = v306 - v309;
      if (v306 == v309)
      {
        v313 = 0;
      }

      else
      {
        sub_250100B10(v304, 1, &v416);
        if ((v312 & 0x80000000) != 0)
        {
          sub_250100B10(v304, 0, &v415);
          v312 = -v312;
        }

        else
        {
          sub_250100B10(v304, 1, &v415);
        }

        v314 = v312 - 1;
        if (v312 > 0x3F)
        {
          sub_250100B10(v304, 1, &__b);
          sub_250100B10(v304, 1, &__b.__locale_ + 2);
          sub_250100B10(v304, 1, v418 + 2);
          sub_250100B10(v304, 1, v419);
          sub_250100B10(v304, 1, v420);
          sub_250100B10(v304, 1, v421);
          sub_25010FAC4(v304, v312 - 64, v308, &v414);
          v315 = v314 >> v308;
          if (!v308 || v315)
          {
            if (v315 > 1)
            {
              ++v308;
            }
          }

          else
          {
            --v308;
          }

          goto LABEL_348;
        }

        sub_250100B10(v401, (v314 >> 5) & 1, &__b);
        sub_250100B10(v401, (v314 >> 4) & 1, &__b.__locale_ + (v314 >> 5) + 1);
        sub_250100B10(v401, (v314 >> 3) & 1, &__b.__locale_ + (v314 >> 4) + 3);
        sub_250100B10(v401, (v314 >> 2) & 1, &__b + (v314 >> 3) + 7);
        sub_250100B10(v401, (v314 >> 1) & 1, &__b + (v314 >> 2) + 15);
        v304 = a1 + 890;
        v310 = (&__b + 2 * (v314 >> 1) + 62);
        v313 = v314 & 1;
        v311 = a1 + 890;
      }

      sub_250100B10(v311, v313, v310);
LABEL_348:
      v305 += 4;
    }

    while (v307 != v305);
  }

LABEL_368:
  v325 = sub_250105B4C(v401);
  v326 = v325;
  if (v400 >= 4)
  {
    *v301 = v325;
  }

  if (v301 == -4)
  {
    v301 = v325;
  }

  else
  {
    v301 += 4 + v325;
  }

  v33 = *v401;
  if (!v33)
  {
    v33 = 5;
    if (v395)
    {
      v327 = a1[1];
      if (v327 >= 1)
      {
        v328 = v395;
        v329 = v395;
        if (v327 != 1)
        {
          v328 = v395 + 1;
          v330 = v395[1];
          v331 = *v395;
          if (v330 >= *v395)
          {
            v329 = v395;
          }

          else
          {
            v329 = v395 + 1;
          }

          if (v330 < v331)
          {
            v328 = v395;
          }

          if (v327 != 2)
          {
            v332 = v395 + 2;
            if (v330 <= v331)
            {
              v333 = *v395;
            }

            else
            {
              v333 = v395[1];
            }

            if (v330 < v331)
            {
              v331 = v395[1];
            }

            v334 = 4 * v327 - 12;
            while (v334)
            {
              v336 = *v332;
              v335 = v332[1];
              if (v335 >= *v332)
              {
                if (v336 < v331)
                {
                  v331 = *v332;
                  v329 = v332;
                }

                v337 = v335 < v333;
                if (v335 > v333)
                {
                  v333 = v332[1];
                }

                if (!v337)
                {
                  v328 = v332 + 1;
                }
              }

              else
              {
                v331 = *v329;
                if (v335 < *v329)
                {
                  v331 = v332[1];
                  v329 = v332 + 1;
                }

                v333 = *v328;
                if (v336 > *v328)
                {
                  v333 = *v332;
                }

                if (v336 >= *v328)
                {
                  v328 = v332;
                }
              }

              v332 += 2;
              v334 -= 8;
              if (v334 == -4)
              {
                goto LABEL_409;
              }
            }

            v338 = *v332;
            if (*v332 < *v329)
            {
              goto LABEL_410;
            }

            if (v338 >= *v328)
            {
              v328 = v332;
            }
          }
        }

LABEL_409:
        v338 = *v329;
LABEL_410:
        if (v338 < 0 || (v339 = *v328 - v338, v339 > v327))
        {
          v33 = 5;
          goto LABEL_59;
        }

        v416 = 0;
        sub_2500FC9FC(&__b, v339 + 2, &v416);
        v340 = v395;
        v302 = v397 - v326;
        locale = __b.__locale_;
        v342 = v327;
        do
        {
          v343 = *v340++;
          ++*(locale + v343 - v338 + 1);
          --v342;
        }

        while (v342);
        if ((v339 & 0x80000000) == 0)
        {
          v344 = (locale + 4);
          v345 = *locale;
          v346 = (v339 + 2) - 1;
          do
          {
            v345 += *v344;
            *v344++ = v345;
            --v346;
          }

          while (v346);
        }

        v347 = *(a1 + 14);
        v348 = *(a1 + 5);
        v349 = v347;
        v350 = v327;
        do
        {
          v351 = *v349++;
          v352 = v395[v351] - v338;
          v353 = *(locale + v352);
          *(locale + v352) = v353 + 1;
          *(v348 + 4 * v351) = v353;
          --v350;
        }

        while (v350);
        for (n = 0; n != v327; ++n)
        {
          v347[*(v348 + 4 * n)] = n;
        }

        if (locale)
        {
          v418[0] = locale;
          operator delete(locale);
        }

        goto LABEL_424;
      }
    }
  }

LABEL_59:
  v402[0] = *MEMORY[0x277D82818];
  v66 = *(MEMORY[0x277D82818] + 72);
  *(v402 + *(v402[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v403 = v66;
  v404 = MEMORY[0x277D82878] + 16;
  if (v406 < 0)
  {
    operator delete(v405[7].__locale_);
  }

  v404 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v405);
  std::iostream::~basic_iostream();
  MEMORY[0x25305EC00](&v407);
  return v33;
}

void sub_2500FFC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  sub_2500EA830(&a26, MEMORY[0x277D82818]);
  MEMORY[0x25305EC00](&a42);
  _Unwind_Resume(a1);
}

uint64_t sub_2500FFCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_25010EB54(v36);
  __p = 0;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v23 = sub_2500FDACC(v22, v20, v18, v16, v14, v12, v10, a9, v36, &__p, &v32);
  if (!v23)
  {
    v31 = *(a9 + 2);
    v30 = *a9;
    v28 = *a9;
    v29 = *(a9 + 2);
    BYTE1(v31) = 0;
    BYTE3(v31) = 0;
    v27 = 0;
    v23 = sub_2500FDACC(v22, v20, v18, v16, v14, v12, v10, &v30, v36, &__p, &v27);
    if (!v23)
    {
      BYTE1(v29) = 1;
      BYTE3(v29) = 0;
      v26 = 0;
      v23 = sub_2500FDACC(v22, v20, v18, v16, v14, v12, v10, &v28, v36, &__p, &v26);
      if (!v23 && (v32 > v27 || v32 > v26))
      {
        v24 = &v30;
        if (v27 > v26)
        {
          v24 = &v28;
        }

        *a9 = *v24;
        *(a9 + 14) = *(v24 + 14);
      }
    }
  }

  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  sub_25010F040(v36);
  return v23;
}

void sub_2500FFED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (__p)
  {
    operator delete(__p);
  }

  sub_25010F040(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2500FFF04(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unsigned int *a7, uint64_t *a8, uint64_t *a9)
{
  v13 = a3;
  if (*(a6 + 16))
  {
    v16 = a4;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 + 4 * a4 * a5 + 1024;
  v18 = *a8;
  v19 = a8[1] - *a8;
  if (v17 <= v19)
  {
    if (v17 < v19)
    {
      a8[1] = v18 + v17;
    }
  }

  else
  {
    sub_2500FD2AC(a8, v17 - v19);
    v18 = *a8;
  }

  *a9 = 0;
  return sub_2500FFFD4(a7, a1, a2, v13, 0, a5, v18, v17, a9, a6);
}

uint64_t sub_2500FFFD4(unsigned int *a1, uint64_t a2, _BYTE *a3, unsigned int a4, unint64_t a5, unint64_t a6, _DWORD *a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  result = 5;
  if (a5 <= 0xFF)
  {
    if (a2)
    {
      if (a6 - 256 >= 0xFFFFFFFFFFFFFF01 && (*(a10 + 8) | 2) != 3 && !*(a10 + 20))
      {
        v16 = a5;
        if (a3 || !*(a10 + 16))
        {
          v19 = *(a10 + 4);
          if (v19 <= 0x1B)
          {
            if ((*(a10 + 12) - 5) > 1)
            {
              if (!a7)
              {
                return result;
              }
            }

            else if (!a7 || a6 != 2 || !v19)
            {
              return result;
            }

            if (a8 < 0x21)
            {
              return 1;
            }

            v64 = *(a10 + 12) - 5;
            v20 = *a1;
            v62 = v20;
            v21 = a1 + 750;
            a1[780] = a6;
            v65 = v20;
            a1[781] = v20;
            a1[782] = a4;
            v63 = a1 + 756;
            sub_2500F247C(a1 + 378, a6);
            sub_2500F247C(a1 + 381, a6);
            sub_2500F247C(a1 + 375, a6);
            v22 = 0;
            v23 = *(a1 + 378);
            v24 = *(a1 + 381);
            do
            {
              v25 = *(a2 + 4 * v22);
              v23[v22] = v25;
              v24[v22++] = v25;
            }

            while (a6 != v22);
            if (v65 >= 2)
            {
              v26 = 1;
              LODWORD(v27) = a6;
              do
              {
                v27 = v27;
                v28 = v23;
                v29 = v24;
                v30 = a6;
                do
                {
                  v31 = *(a2 + 4 * v27);
                  if (v31 >= *v28)
                  {
                    v31 = *v28;
                  }

                  *v28++ = v31;
                  v32 = *v29;
                  if (*v29 <= *(a2 + 4 * v27))
                  {
                    v32 = *(a2 + 4 * v27);
                  }

                  *v29++ = v32;
                  ++v27;
                  --v30;
                }

                while (v30);
                ++v26;
              }

              while (v26 != v65);
            }

            v33 = 0;
            result = 5;
            do
            {
              v34 = v24[v33];
              v35 = v23[v33];
              if (v34 - v35 > 0xFFFFFFF)
              {
                return 5;
              }

              v36 = *(a10 + 4);
              if (v36 && ((v35 & 0x80000000) != 0 || v34 >= 1 << v36))
              {
                return result;
              }

              if (v64 > 1)
              {
                *(*v21 + 4 * v33) = v34 - v35;
              }

              else
              {
                *(*v21 + 4 * v33) = v34;
                v23[v33] = 0;
              }

              ++v33;
            }

            while (a6 != v33);
            v72 = a7;
            v73 = a8;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0;
            HIDWORD(v66) = v65;
            LODWORD(v67) = a6;
            *(&v67 + 1) = __PAIR64__(*(a10 + 4), v16);
            v38 = *(a10 + 12);
            v37 = *(a10 + 16);
            LODWORD(v68) = a4;
            DWORD2(v68) = v37;
            v70 = *(a10 + 8);
            v71 = v38;
            v39 = sub_250100950(a7, a8, &v66);
            v41 = 0;
            do
            {
              v42 = v40 < 4;
              v40 -= 4;
              if (v42)
              {
                v40 = 0;
                v39 = 0;
              }

              else
              {
                *v39++ = *(*v63 + 4 * v41);
              }

              *(*v21 + 4 * v41) = 32 - __clz(*(*v21 + 4 * v41));
              ++v41;
            }

            while (a6 != v41);
            v43 = 0;
            do
            {
              if (v40)
              {
                --v40;
                *v39 = *(*v21 + 4 * v43);
                v39 = (v39 + 1);
              }

              else
              {
                v39 = 0;
              }

              ++v43;
            }

            while (a6 != v43);
            v72 = v39;
            v73 = v40;
            sub_2500F247C(a1 + 384, v62 * a6);
            if (v65 >= 1)
            {
              v44 = 0;
              LODWORD(v45) = 0;
              v46 = *v63;
              v47 = *(a1 + 384);
              do
              {
                v45 = v45;
                v48 = v46;
                v49 = a6;
                do
                {
                  v50 = *v48++;
                  *(v47 + 4 * v45) = *(a2 + 4 * v45) - v50;
                  ++v45;
                  --v49;
                }

                while (v49);
                ++v44;
              }

              while (v44 != v65);
            }

            v51 = (a1 + 774);
            if (a3 && *(a10 + 16))
            {
              sub_2500FDBC4(a1 + 387, v62);
              if (v65 >= 1)
              {
                for (i = 0; i != v65; ++i)
                {
                  *(*v51 + i) = a3[i];
                }
              }

              if (v65)
              {
                memmove(*v51, a3, v62);
              }
            }

            else
            {
              sub_2500FDBC4(a1 + 387, 0);
            }

            result = sub_250100A68(a1, a10, &v72);
            if (!result)
            {
              result = 1;
              if (v72)
              {
                if ((v73 & 0x8000000000000000) == 0)
                {
                  v53 = (a8 & ~(a8 >> 63)) - v73;
                  if (a8 - v53 >= 0)
                  {
                    v54 = (a8 & ~(a8 >> 63)) - v73;
                  }

                  else
                  {
                    v54 = 0;
                  }

                  if (a8 - v53 >= 0)
                  {
                    v55 = a7;
                  }

                  else
                  {
                    v55 = 0;
                  }

                  v56 = v54 & ~(v54 >> 63);
                  *a9 = v56;
                  if (v54 >= 16)
                  {
                    v55[3] = v56;
                    v58 = v54 - 8;
                  }

                  else
                  {
                    v57 = v54 == 8;
                    v42 = v54 < 8;
                    v58 = v54 - 8;
                    if (v42)
                    {
                      return 0;
                    }

                    if (v57)
                    {
                      v60 = -1;
LABEL_79:
                      result = 0;
                      v55[1] = v60;
                      return result;
                    }
                  }

                  v59 = (v55 + 2);
                  v60 = -1;
                  do
                  {
                    v61 = *v59++;
                    v60 = dword_250110020[v61 ^ HIBYTE(v60)] ^ (v60 << 8);
                    --v58;
                  }

                  while (v58);
                  goto LABEL_79;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_25010044C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v8;
  sub_25010EB54(&v39);
  v39 = *v21;
  v40 = *(v21 + 8);
  v41 = *(v21 + 12);
  v42 = *(v21 + 20);
  v43 = *(v21 + 24);
  v22 = *(v21 + 36);
  v44 = *(v21 + 32);
  v45 = v22;
  if (&v39 != v21)
  {
    sub_25010F220(&v46, *(v21 + 40), *(v21 + 48), (*(v21 + 48) - *(v21 + 40)) >> 2);
    sub_25010F220(&v47, *(v21 + 64), *(v21 + 72), (*(v21 + 72) - *(v21 + 64)) >> 2);
    sub_25010F220(&v48, *(v21 + 88), *(v21 + 96), (*(v21 + 96) - *(v21 + 88)) >> 2);
    sub_25010F220(&v49, *(v21 + 112), *(v21 + 120), (*(v21 + 120) - *(v21 + 112)) >> 2);
    sub_25010F34C(&v50, *(v21 + 136), *(v21 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(v21 + 144) - *(v21 + 136)) >> 2));
    sub_25010F34C(&v51, *(v21 + 160), *(v21 + 168), 0xAAAAAAAAAAAAAAABLL * ((*(v21 + 168) - *(v21 + 160)) >> 2));
    sub_25010F34C(&v52, *(v21 + 184), *(v21 + 192), 0xAAAAAAAAAAAAAAABLL * ((*(v21 + 192) - *(v21 + 184)) >> 2));
    sub_25010F220(&v53, *(v21 + 208), *(v21 + 216), (*(v21 + 216) - *(v21 + 208)) >> 2);
    sub_25010F220(&v54, *(v21 + 232), *(v21 + 240), (*(v21 + 240) - *(v21 + 232)) >> 2);
    sub_25010F220(&v55, *(v21 + 256), *(v21 + 264), (*(v21 + 264) - *(v21 + 256)) >> 2);
  }

  __p = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v23 = sub_2500FFF04(v20, v18, v16, v14, v12, v10, &v39, &__p, &v35);
  if (!v23)
  {
    *v34 = *v10;
    *&v34[12] = *(v10 + 12);
    if (v16 == 1 && v12 == 2)
    {
      v24 = *(v10 + 12) == 4;
      v25 = 3;
    }

    else
    {
      v26 = *(v10 + 12);
      if (v16 == 2 && v12 == 2)
      {
        v24 = v26 == 6;
        v25 = 5;
      }

      else
      {
        v24 = v26 == 2;
        v25 = 1;
      }
    }

    v27 = v24 ? v25 : v25 + 1;
    *&v34[12] = v27;
    v33 = 0;
    v23 = sub_2500FFF04(v20, v18, v16, v14, v12, v34, &v39, &__p, &v33);
    if (!v23)
    {
      v28 = v35;
      v29 = v33;
      if (v35 <= v33)
      {
        v27 = *(v10 + 12);
      }

      else
      {
        *(v10 + 12) = v27;
        v28 = v29;
      }

      v30 = v34[8] == 4 ? 2 : 4;
      v34[8] = v30;
      *&v34[12] = v27;
      v32 = 0;
      v23 = sub_2500FFF04(v20, v18, v16, v14, v12, v34, &v39, &__p, &v32);
      if (!v23 && v28 > v32)
      {
        *(v10 + 8) = v30;
      }
    }
  }

  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  sub_25010F040(&v39);
  return v23;
}

void sub_25010077C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (__p)
  {
    operator delete(__p);
  }

  sub_25010F040(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2501007B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9, uint64_t a10)
{
  if (!a4 && 3 * a5 != a7)
  {
    return 5;
  }

  v15 = v10;
  v16 = v11;
  *&v14[16] = *(a10 + 16);
  *v14 = *a10;
  v14[16] = a8 != 0;
  v14[21] = 1;
  v14[8] = 4;
  v13 = *a9;
  if (*a9 - 3 < 4)
  {
    *&v14[12] = 1;
    *&v14[17] = 1;
    goto LABEL_8;
  }

  if (v13 < 3)
  {
    *&v14[12] = 1;
    *&v14[17] = 0;
LABEL_8:
    result = 0;
    *a10 = *v14;
    *(a10 + 14) = *&v14[14];
    return result;
  }

  if (v13 != 10)
  {
    *&v14[12] = 2;
    *&v14[17] = 16843009;
    goto LABEL_8;
  }

  result = sub_2500FFCF4(a1, a2, a3, a4, a5, a6, a7, a8, v14);
  if (!result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_250100894(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  *(a7 + 16) = a3 != 0;
  if (a4 == 1 && v9 <= 79)
  {
    v10 = 2;
  }

  else
  {
    v10 = 4;
  }

  *(a7 + 8) = v10;
  v11 = *a6;
  if (*a6 - 3 < 4)
  {
    v12 = 0;
    if (a4 == 1)
    {
      v13 = 3;
    }

    else
    {
      v13 = 1;
    }

    goto LABEL_11;
  }

  if (v11 < 3)
  {
    v12 = 0;
    v13 = 1;
LABEL_11:
    *(a7 + 12) = v13;
    *(a7 + 24) = v12;
    return 0;
  }

  if (v11 != 10)
  {
    if (a4 == 1)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    v12 = 1;
    goto LABEL_11;
  }

  result = sub_25010044C(a1, a2, a3, a4, v9, a5, a7, a8);
  if (!result)
  {
    return 0;
  }

  return result;
}

unint64_t sub_250100950(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 < 4)
  {
    return 0;
  }

  *a1 = -290009985;
  if (a2 < 9)
  {
    return 0;
  }

  *(a1 + 8) = 0;
  if (a2 == 9)
  {
    return 0;
  }

  *(a1 + 9) = 8;
  if (((a2 - 8) & 0x7FFFFFFFFFFFFFFELL) == 2)
  {
    return 0;
  }

  *(a1 + 10) = 0;
  if (a2 < 0x14)
  {
    return 0;
  }

  *(a1 + 16) = *(a3 + 12);
  if (a2 == 20)
  {
    return 0;
  }

  *(a1 + 20) = *(a3 + 32);
  if (a2 == 21)
  {
    return 0;
  }

  *(a1 + 21) = *(a3 + 24);
  if (a2 == 22)
  {
    return 0;
  }

  *(a1 + 22) = *(a3 + 16);
  if (a2 == 23)
  {
    return 0;
  }

  *(a1 + 23) = *(a3 + 52);
  if (a2 == 24)
  {
    return 0;
  }

  *(a1 + 24) = *(a3 + 56);
  v3 = a2 - 25;
  if (a2 == 25)
  {
    return v3;
  }

  *(a1 + 25) = *(a3 + 36) | (16 * *(a3 + 44));
  if (a2 == 26)
  {
    return 0;
  }

  *(a1 + 26) = *(a3 + 40);
  if (a2 == 27)
  {
    return 0;
  }

  *(a1 + 27) = *(a3 + 28);
  if ((a2 & 0x7FFFFFFFFFFFFFFCLL) == 0x1C)
  {
    return 0;
  }

  v3 = a1 + 32;
  *(a1 + 28) = *(a3 + 20);
  return v3;
}

uint64_t sub_250100A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *a3 + 4;
  *a3 = v8;
  *(a3 + 8) = v7 - 4;
  v9 = (a1 + 3560);
  *(a1 + 3564) = (v7 - 4) & ~((v7 - 4) >> 63);
  *(a1 + 3568) = v8;
  sub_2500F0AB8(a1 + 3560);
  result = sub_250101180(a1, a2);
  if (!result)
  {
    v11 = sub_250105B4C(v9);
    if (v7 >= 4)
    {
      *v6 = v11;
    }

    v12 = v11;
    if (*a3)
    {
      v12 = *a3 + v11;
    }

    v13 = *(a3 + 8) - v11;
    *a3 = v12;
    *(a3 + 8) = v13;
    return *v9;
  }

  return result;
}

uint64_t sub_250100B10(uint64_t result, int a2, _WORD *a3)
{
  v3 = *a3;
  v4 = *(result + 28);
  v5 = (v4 * v3) >> 16;
  if (a2)
  {
    *(result + 24) += v5;
    v5 = v4 - v5;
    v6 = v3 - *(result + ((v3 >> 7) & 0x1FE) + 48);
  }

  else
  {
    v6 = *(result + (~(*a3 >> 7) & 0x1FE) + 48) + *a3;
  }

  *(result + 28) = v5;
  *a3 = v6;
  if (v5 <= 0x4000)
  {
    v7 = *(result + 24);
    v8 = *(result + 40);
    while (1)
    {
      v7 *= 2;
      v5 *= 2;
      *(result + 24) = v7;
      *(result + 28) = v5;
      *(result + 40) = ++v8;
      if (v8 == 8)
      {
        break;
      }

LABEL_18:
      if (v5 > 0x4000)
      {
        return result;
      }
    }

    v9 = *(result + 16);
    v10 = *(result + 44);
    if (v9 + v10 + 1 > *(result + 4))
    {
      return result;
    }

    if (HIBYTE(v7))
    {
      ++*(*(result + 8) + v9 - 1);
      v9 = *(result + 16);
      if (*(result + 44))
      {
        do
        {
          *(*(result + 8) + v9) = 0;
          v11 = *(result + 44);
          v9 = *(result + 16) + 1;
          *(result + 16) = v9;
          *(result + 44) = --v11;
        }

        while (v11);
      }
    }

    else
    {
      if ((v5 + v7) >> 24)
      {
        *(result + 44) = v10 + 1;
LABEL_17:
        v8 = 0;
        v7 = v7;
        *(result + 24) = v7;
        *(result + 40) = 0;
        goto LABEL_18;
      }

      if (v10)
      {
        do
        {
          *(*(result + 8) + v9) = -1;
          v12 = *(result + 44);
          v9 = *(result + 16) + 1;
          *(result + 16) = v9;
          *(result + 44) = --v12;
        }

        while (v12);
      }
    }

    *(*(result + 8) + v9) = *(result + 26);
    ++*(result + 16);
    LOWORD(v7) = *(result + 24);
    v5 = *(result + 28);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_250100C84(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, unsigned __int8 a6, void *a7)
{
  v8 = a3;
  v10 = result;
  if (a6 > 2u)
  {
    if (a6 == 3)
    {
      if (a4 >= 1)
      {
        v53 = 0;
        v54 = a4;
        do
        {
          v55 = *(*a5 + 4 * v53);
          if (v55 >= 1)
          {
            v56 = 0;
            v57 = *(a2 + 4 * v53) - *(v8 + 4 * v53);
            do
            {
              v60 = 0x8000;
              result = sub_250100B10(v10 + 3560, (v57 >> v56++) & 1, &v60);
            }

            while (v55 != v56);
          }

          ++v53;
        }

        while (v53 != v54);
      }

      return result;
    }

    if (a6 != 4 || a4 < 1)
    {
      return result;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    v58 = a4 << 6;
    while (1)
    {
      v24 = *(a2 + v21);
      v25 = *(v8 + v21);
      v26 = v10 + 3560;
      v27 = (*a7 + v22);
      v28 = v24 - v25;
      if (v24 == v25)
      {
        result = sub_250100B10(v26, 0, v27);
      }

      else
      {
        sub_250100B10(v26, 1, v27);
        v29 = v10 + 3560;
        v30 = (a7[3] + v22);
        if ((v28 & 0x80000000) != 0)
        {
          sub_250100B10(v29, 0, v30);
          v28 = -v28;
        }

        else
        {
          sub_250100B10(v29, 1, v30);
        }

        v31 = v28 - 1;
        v32 = a7[6];
        v33 = (v32 + 2 * v23);
        if (v28 > 0x3F)
        {
          sub_250100B10(v10 + 3560, 1, (v32 + 2 * v23));
          sub_250100B10(v10 + 3560, 1, v33 + 2);
          sub_250100B10(v10 + 3560, 1, v33 + 6);
          sub_250100B10(v10 + 3560, 1, v33 + 14);
          sub_250100B10(v10 + 3560, 1, v33 + 30);
          sub_250100B10(v10 + 3560, 1, v33 + 62);
          v34 = a7[12];
          result = sub_25010FAC4(v10 + 3560, v28 - 64, *(v34 + v21), (a7[9] + v22));
          v35 = *(v34 + v21);
          v36 = v31 >> v35;
          if (!v35 || v36)
          {
            v8 = a3;
            if (v36 >= 2)
            {
              *(v34 + v21) = v35 + 1;
            }

            goto LABEL_34;
          }

          *(v34 + v21) = v35 - 1;
        }

        else
        {
          sub_250100B10(v10 + 3560, (v31 >> 5) & 1, (v32 + 2 * v23));
          sub_250100B10(v10 + 3560, (v31 >> 4) & 1, &v33[(v31 >> 5) + 1]);
          sub_250100B10(v10 + 3560, (v31 >> 3) & 1, &v33[(v31 >> 4) + 3]);
          sub_250100B10(v10 + 3560, (v31 >> 2) & 1, &v33[(v31 >> 3) + 7]);
          sub_250100B10(v10 + 3560, (v31 >> 1) & 1, &v33[(v31 >> 2) + 15]);
          result = sub_250100B10(v10 + 3560, v31 & 1, (v33 + (v31 & 0xFFFFFFFE) + 62));
        }

        v8 = a3;
      }

LABEL_34:
      v23 += 64;
      v22 += 2;
      v21 += 4;
      if (v58 == v23)
      {
        return result;
      }
    }
  }

  if (!a6)
  {
    if (a4 < 1)
    {
      return result;
    }

    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = a4 << 6;
    while (1)
    {
      v41 = *(a2 + v37);
      v42 = *(v8 + v37);
      v43 = v10 + 3560;
      v44 = (*a7 + v38);
      v45 = v41 - v42;
      if (v41 == v42)
      {
        v48 = 0;
      }

      else
      {
        sub_250100B10(v43, 1, v44);
        v46 = v10 + 3560;
        v47 = (a7[3] + v38);
        if ((v45 & 0x80000000) != 0)
        {
          sub_250100B10(v46, 0, v47);
          v45 = -v45;
        }

        else
        {
          sub_250100B10(v46, 1, v47);
        }

        v49 = a7[6];
        v50 = (v49 + 2 * v39);
        if (v45 > 0x3F)
        {
          sub_250100B10(v10 + 3560, 1, (v49 + 2 * v39));
          sub_250100B10(v10 + 3560, 1, v50 + 2);
          sub_250100B10(v10 + 3560, 1, v50 + 6);
          sub_250100B10(v10 + 3560, 1, v50 + 14);
          sub_250100B10(v10 + 3560, 1, v50 + 30);
          sub_250100B10(v10 + 3560, 1, v50 + 62);
          result = sub_25010FAC4(v10 + 3560, v45 - 64, *(a7[12] + v37), (a7[9] + v38));
          goto LABEL_49;
        }

        v51 = v45 - 1;
        sub_250100B10(v10 + 3560, (v45 - 1) & 1, (v49 + 2 * v39));
        sub_250100B10(v10 + 3560, (v51 >> 1) & 1, &v50[(v51 & 1) + 1]);
        sub_250100B10(v10 + 3560, (v51 >> 2) & 1, &v50[(v51 & 3) + 3]);
        sub_250100B10(v10 + 3560, (v51 >> 3) & 1, &v50[(v51 & 7) + 7]);
        sub_250100B10(v10 + 3560, (v51 >> 4) & 1, &v50[(v51 & 0xF) + 15]);
        v48 = ((v45 - 1) >> 5) & 1;
        v8 = a3;
        v43 = v10 + 3560;
        v44 = &v50[((v45 - 1) & 0x1F) + 31];
      }

      result = sub_250100B10(v43, v48, v44);
LABEL_49:
      v39 += 64;
      v38 += 2;
      v37 += 4;
      if (v40 == v39)
      {
        return result;
      }
    }
  }

  if (a6 == 2 && a4 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 4 * a4;
    while (1)
    {
      v14 = *(a2 + v12) - *(v8 + v12);
      v15 = a7[12];
      result = sub_250105EF4(v10 + 3560, v14, *(v15 + v12), (a7[3] + v11), (a7[9] + v11));
      v16 = v14 >= 0 ? v14 : -v14;
      v17 = *(v15 + v12);
      v18 = v16 >> v17;
      if (v17 && v18 == 0)
      {
        break;
      }

      if (v18 >= 2)
      {
        v20 = 1;
LABEL_16:
        *(v15 + v12) = v20 + v17;
      }

      v12 += 4;
      v11 += 2;
      if (v13 == v12)
      {
        return result;
      }
    }

    v20 = -1;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_250101180(unsigned int *a1, uint64_t a2)
{
  v2 = a2;
  v1014 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16) == 1)
  {
    v4 = *a1;
    memset_pattern16(&__b, &unk_250110610, 4uLL);
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = 4 * v4;
      do
      {
        v7 = *(*(a1 + 11) + v5);
        v8 = (*(a1 + 17) + 12 * v7);
        v10 = *v8;
        v9 = v8[1];
        v11 = v8[2];
        v12 = (*(a1 + 20) + 12 * v7);
        v13 = v12[2];
        if (v13 != -1)
        {
          v14 = *(a1 + 387);
          v15 = *(v14 + v9) + *(v14 + v10) + *(v14 + v11) + *(v14 + *v12) + *(v14 + v12[1]) + *(v14 + v13) > 2;
          goto LABEL_8;
        }

        v14 = *(a1 + 387);
        if (v11 != -1)
        {
          v15 = *(v14 + v9) + *(v14 + v10) + *(v14 + v11) > 1;
LABEL_8:
          v16 = v15;
          goto LABEL_11;
        }

        if (v9 == -1)
        {
          if (v10 == -1)
          {
LABEL_18:
            v16 = 0;
            goto LABEL_11;
          }

          v16 = *(v14 + v10);
        }

        else
        {
          if (!*(v14 + v10))
          {
            goto LABEL_18;
          }

          v16 = *(v14 + v9) != 0;
        }

LABEL_11:
        sub_250100B10((a1 + 890), *(v14 + v7) != 0, &v992[-2] + v16);
        v5 += 4;
      }

      while (v6 != v5);
    }
  }

  v17 = *(v2 + 12);
  result = 5;
  v941 = v2;
  if (v17 <= 2)
  {
    if (v17)
    {
      if (v17 != 1)
      {
        if (v17 != 2)
        {
          return result;
        }

        v127 = 0;
        v919 = *a1;
        v128 = a1[780];
        v129 = a1[780];
        v924 = *(a1 + 384);
        v1013 = 0;
        v1011 = 0u;
        v1012 = 0u;
        v1009 = 0u;
        v1010 = 0u;
        v1007 = 0u;
        v1008 = 0u;
        v1005 = 0u;
        v1006 = 0u;
        v1003 = 0u;
        v1004 = 0u;
        v1001 = 0u;
        v1002 = 0u;
        v999 = 0u;
        v1000 = 0u;
        *v997 = 0u;
        v998 = 0u;
        *v995 = 0u;
        v996 = 0u;
        v993 = 0u;
        *v994 = 0u;
        v943 = a1 + 750;
        __b = 0u;
        *v992 = 0u;
        do
        {
          sub_2500F3ECC(&v992[v127 - 2], v128);
          v127 += 15;
        }

        while (v127 != 45);
        memset_pattern16(&v983, &unk_250110610, 6uLL);
        LODWORD(v986) = 0;
        sub_2500FC9FC(&__p, v128, &v986);
        LODWORD(v964) = 0;
        sub_2500FC9FC(&v986, v128, &v964);
        LODWORD(v962) = 0;
        sub_2500FC9FC(&v964, v128, &v962);
        LODWORD(v960) = 0;
        sub_2500FC9FC(&v962, v128, &v960);
        LODWORD(v958) = 0;
        sub_2500FC9FC(&v960, v128, &v958);
        LODWORD(v956) = 0;
        sub_2500FC9FC(&v958, v128, &v956);
        LODWORD(v954) = 0;
        sub_2500FC9FC(&v956, v128, &v954);
        v952 = 0;
        sub_2500FC9FC(&v954, v128, &v952);
        if (v919 < 1)
        {
LABEL_1110:
          if (v954)
          {
            v955 = v954;
            operator delete(v954);
          }

          if (v956)
          {
            v957 = v956;
            operator delete(v956);
          }

          if (v958)
          {
            v959 = v958;
            operator delete(v958);
          }

          if (v960)
          {
            v961 = v960;
            operator delete(v960);
          }

          if (v962)
          {
            v963 = v962;
            operator delete(v962);
          }

          if (v964)
          {
            v965 = v964;
            operator delete(v964);
          }

          if (v986)
          {
            v987[0] = v986;
            operator delete(v986);
          }

          if (__p)
          {
            v989 = __p;
            operator delete(__p);
          }

          v794 = 360;
          do
          {
            v795 = &v992[v794 / 8 - 2];
            v796 = *(&__p + v794);
            if (v796)
            {
              *(v795 - 2) = v796;
              operator delete(v796);
            }

            v797 = *(v795 - 6);
            if (v797)
            {
              v987[v794 / 8] = v797;
              operator delete(v797);
            }

            v798 = &v992[v794 / 8 - 2];
            v799 = *(&v978 + v794);
            if (v799)
            {
              *(v798 - 8) = v799;
              operator delete(v799);
            }

            v800 = *(v798 - 12);
            if (v800)
            {
              *(&v974 + v794) = v800;
              operator delete(v800);
            }

            v801 = *(v795 - 15);
            if (v801)
            {
              *(&v968 + v794) = v801;
              operator delete(v801);
            }

            v794 -= 120;
          }

          while (v794);
          return 0;
        }

        v130 = 0;
        v935 = *(v2 + 16);
        v891 = 4 * v128;
        while (1)
        {
          v131 = *(*(a1 + 11) + 4 * v130);
          if (v935 && !*(*(a1 + 387) + v131))
          {
            goto LABEL_229;
          }

          v132 = (*(a1 + 17) + 12 * v131);
          v134 = *v132;
          v133 = v132[1];
          v135 = v132[2];
          v136 = __p;
          if (v135 != -1)
          {
            if (!v935)
            {
              break;
            }

            v137 = *(a1 + 387);
            if (*(v137 + v134))
            {
              if (*(v137 + v133) && *(v137 + v135))
              {
                break;
              }
            }
          }

          if (v133 != -1)
          {
            if (!v935 || (v150 = *(a1 + 387), *(v150 + v134)) && *(v150 + v133))
            {
              if (v129 >= 1)
              {
                v151 = (v924 + 4 * v134 * v128);
                v152 = (v924 + 4 * v133 * v128);
                v153 = __p;
                v154 = v128;
                do
                {
                  v156 = *v151++;
                  v155 = v156;
                  v157 = *v152++;
                  *v153++ = (v157 + v155) / 2;
                  --v154;
                }

                while (v154);
              }

              LODWORD(v148) = 0;
              v149 = &v998 + 1;
              goto LABEL_170;
            }
          }

          if (v134 == -1 || v935 && !*(*(a1 + 387) + v134))
          {
            if (v129 >= 1)
            {
              bzero(__p, v891);
            }

            LODWORD(v148) = 1;
            p_b = &__b;
            v159 = &v966;
          }

          else
          {
            if (v128 < 1)
            {
              LODWORD(v148) = 0;
            }

            else
            {
              v160 = (v924 + 4 * v134 * v128);
              v161 = __p;
              v148 = v128;
              do
              {
                v162 = *v160++;
                *v161++ = v162;
                --v148;
              }

              while (v148);
            }

            p_b = &__b;
            v159 = &__b;
          }

LABEL_183:
          v163 = v924 + 4 * v131 * v129;
          v164 = (*(a1 + 20) + 12 * v131);
          v165 = v164[2];
          if (v165 != -1)
          {
            v166 = *v164;
            v167 = v164[1];
            if (!v935 || (v168 = *(a1 + 387), *(v168 + v134)) && *(v168 + v133) && *(v168 + v135) && *(v168 + v166) && *(v168 + v167) && *(v168 + v165))
            {
              v911 = v159;
              v914 = v148;
              if (v128 < 1)
              {
                v192 = v941;
                if (*(v941 + 24) != 1)
                {
                  v185 = 0;
                  v187 = 0;
                  v189 = 0;
                  v191 = 0;
                  goto LABEL_216;
                }

                v179 = v960;
                v180 = v958;
                v181 = v956;
                v182 = v954;
              }

              else
              {
                v169 = 0;
                v170 = v924 + 4 * v134 * v129;
                v171 = v924 + 4 * v133 * v128;
                v172 = v924 + 4 * v135 * v129;
                v173 = v924 + 4 * v166 * v128;
                v174 = v924 + 4 * v167 * v129;
                v175 = v924 + 4 * v165 * v128;
                v176 = v986;
                v177 = v964;
                v178 = v962;
                v179 = v960;
                v180 = v958;
                v181 = v956;
                v182 = v954;
                do
                {
                  *&v176[v169] = *(v174 + v169) + *(v173 + v169) - *(v175 + v169);
                  *&v177[v169] = *(v174 + v169) + *(v171 + v169) - (*(v173 + v169) + *(v170 + v169)) / 2;
                  v183 = 1431655766 * ((*(v173 + v169) + *(v170 + v169)) / 2 - (*(v172 + v169) + *(v175 + v169)) + 2 * (*(v174 + v169) + *(v171 + v169)));
                  *&v178[v169] = HIDWORD(v183) + (v183 >> 63);
                  v179[v169 / 4] = *(v163 + v169) - v136[v169 / 4];
                  v180[v169 / 4] = *(v163 + v169) - *&v176[v169];
                  v181[v169 / 4] = *(v163 + v169) - *&v177[v169];
                  v182[v169 / 4] = *(v163 + v169) - *&v178[v169];
                  v169 += 4;
                }

                while (v891 != v169);
                if ((*(v941 + 24) & 1) == 0)
                {
                  v184 = *v179;
                  if (*v179 < 0)
                  {
                    v184 = -v184;
                  }

                  v185 = -(v129 * __clz(v184 + 1));
                  v186 = *v180;
                  if (*v180 < 0)
                  {
                    v186 = -v186;
                  }

                  v187 = -(v128 * __clz(v186 + 1));
                  v188 = *v181;
                  if (*v181 < 0)
                  {
                    v188 = -v188;
                  }

                  v189 = -(v129 * __clz(v188 + 1));
                  v190 = *v182;
                  if (*v182 < 0)
                  {
                    v190 = -v190;
                  }

                  v191 = -(v128 * __clz(v190 + 1));
                  v192 = v941;
LABEL_216:
                  if (v185 <= v187 && v185 <= v189 && v185 <= v191)
                  {
                    v200 = 0;
                    v201 = 0;
                    goto LABEL_220;
                  }

                  if (v187 <= v189 && v187 <= v191)
                  {
                    v200 = 0;
                    v201 = 1;
                    v136 = v986;
                    goto LABEL_226;
                  }

                  if (v189 <= v191)
                  {
                    v201 = 0;
                    v200 = 1;
                    v136 = v964;
LABEL_220:
                    v202 = &v984;
                  }

                  else
                  {
                    v200 = 1;
                    v136 = v962;
                    v201 = 1;
LABEL_226:
                    v202 = &v985;
                  }

                  sub_250100B10((a1 + 890), v201, &v983);
                  sub_250100B10((a1 + 890), v200, v202);
                  v159 = v911;
                  if (v914)
                  {
LABEL_205:
                    if (v129 >= 1)
                    {
                      v193 = 0;
                      do
                      {
                        v194 = *(*v943 + 4 * v193);
                        if (v194 >= 1)
                        {
                          v195 = 0;
                          v196 = *(v163 + 4 * v193) - v136[v193];
                          do
                          {
                            LOWORD(v952) = 0x8000;
                            sub_250100B10((a1 + 890), (v196 >> v195++) & 1, &v952);
                          }

                          while (v194 != v195);
                        }

                        ++v193;
                      }

                      while (v193 != v128);
                    }

                    goto LABEL_229;
                  }

                  goto LABEL_228;
                }
              }

              v841 = *(v941 + 8);
              v899 = v983;
              v197 = *(&unk_250110628 + (((v983 + 2048) >> 10) & 0x7CLL));
              v872 = v197;
              v862 = v984;
              v866 = *(&unk_250110628 + (((v984 + 2048) >> 10) & 0x7CLL));
              v846 = p_b;
              v867 = v866 + v197 + sub_25010F50C(v179, v129, v841, p_b);
              v900 = *(&unk_250110628 + (((67584 - v899) >> 10) & 0x7CLL));
              v859 = v985;
              v853 = *(&unk_250110628 + (((v985 + 2048) >> 10) & 0x7CLL));
              v854 = v853 + v900 + sub_25010F50C(v180, v128, v841, v846);
              v863 = *(&unk_250110628 + (((67584 - v862) >> 10) & 0x7CLL));
              v838 = sub_25010F50C(v181, v129, v841, v846);
              v198 = *(&unk_250110628 + (((67584 - v859) >> 10) & 0x7CLL));
              v199 = sub_25010F50C(v182, v128, v841, v846);
              v187 = v854;
              v185 = v867;
              v189 = v863 + v872 + v838;
              v192 = v941;
              v191 = v198 + v900 + v199;
              goto LABEL_216;
            }
          }

          v192 = v941;
          if (v148)
          {
            goto LABEL_205;
          }

LABEL_228:
          sub_250100C84(a1, v163, v136, v128, v943, *(v192 + 8), v159);
LABEL_229:
          if (++v130 == v919)
          {
            goto LABEL_1110;
          }
        }

        if (v129 >= 1)
        {
          v138 = (v924 + 4 * v134 * v128);
          v139 = (v924 + 4 * v133 * v128);
          v140 = (v924 + 4 * v135 * v128);
          v141 = __p;
          v142 = v128;
          do
          {
            v144 = *v138++;
            v143 = v144;
            v145 = *v139++;
            v146 = v145 + v143;
            v147 = *v140++;
            *v141++ = v146 - v147;
            --v142;
          }

          while (v142);
        }

        LODWORD(v148) = 0;
        v149 = &v1006;
LABEL_170:
        p_b = v149;
        v159 = v149;
        goto LABEL_183;
      }

      v748 = 0;
      v922 = *a1;
      v749 = a1[780];
      v750 = v749;
      v927 = *(a1 + 384);
      v1013 = 0;
      v1011 = 0u;
      v1012 = 0u;
      v1009 = 0u;
      v1010 = 0u;
      v1007 = 0u;
      v1008 = 0u;
      v1005 = 0u;
      v1006 = 0u;
      v1003 = 0u;
      v1004 = 0u;
      v1001 = 0u;
      v1002 = 0u;
      v999 = 0u;
      v1000 = 0u;
      *v997 = 0u;
      v998 = 0u;
      *v995 = 0u;
      v996 = 0u;
      v993 = 0u;
      *v994 = 0u;
      v951 = a1 + 750;
      __b = 0u;
      *v992 = 0u;
      do
      {
        sub_2500F3ECC(&v992[v748 - 2], v749);
        v748 += 15;
      }

      while (v748 != 45);
      LODWORD(v986) = 0;
      v917 = v749;
      sub_2500FC9FC(&__p, v749, &v986);
      if (v922 < 1)
      {
LABEL_1081:
        if (__p)
        {
          v989 = __p;
          operator delete(__p);
        }

        v778 = 360;
        do
        {
          v779 = &v992[v778 / 8 - 2];
          v780 = *(&__p + v778);
          if (v780)
          {
            *(v779 - 2) = v780;
            operator delete(v780);
          }

          v781 = *(v779 - 6);
          if (v781)
          {
            v987[v778 / 8] = v781;
            operator delete(v781);
          }

          v782 = &v992[v778 / 8 - 2];
          v783 = *(&v978 + v778);
          if (v783)
          {
            *(v782 - 8) = v783;
            operator delete(v783);
          }

          v784 = *(v782 - 12);
          if (v784)
          {
            *(&v974 + v778) = v784;
            operator delete(v784);
          }

          v785 = *(v779 - 15);
          if (v785)
          {
            *(&v968 + v778) = v785;
            operator delete(v785);
          }

          v778 -= 120;
        }

        while (v778);
        return 0;
      }

      v751 = 0;
      v933 = *(v2 + 16);
      v752 = 4 * v749;
      while (1)
      {
        v753 = *(*(a1 + 11) + 4 * v751);
        if (v933 && !*(*(a1 + 387) + v753))
        {
          goto LABEL_1080;
        }

        v940 = v927 + 4 * v753 * v750;
        v754 = (*(a1 + 17) + 12 * v753);
        v755 = *v754;
        v756 = v754[1];
        v757 = v754[2];
        if (v757 != -1 && (!v933 || (v758 = *(a1 + 387), *(v758 + v755)) && *(v758 + v756) && *(v758 + v757)))
        {
          v759 = __p;
          v760 = v917;
          if (v750 >= 1)
          {
            v761 = 0;
            v762 = v927 + 4 * v755 * v750;
            v763 = v927 + 4 * v756 * v917;
            v764 = v927 + 4 * v757 * v750;
            v765 = v941;
            do
            {
              *&v759[v761] = *(v763 + v761) + *(v762 + v761) - *(v764 + v761);
              v761 += 4;
            }

            while (v752 != v761);
            v766 = &v1006;
            goto LABEL_1079;
          }

          v766 = &v1006;
        }

        else
        {
          v760 = v917;
          if (v756 == -1 || v933 && ((v767 = *(a1 + 387), !*(v767 + v755)) || !*(v767 + v756)))
          {
            if (v755 == -1 || v933 && !*(*(a1 + 387) + v755))
            {
              if (v917 >= 1)
              {
                v773 = __p;
                bzero(__p, 4 * v750);
                v774 = 0;
                do
                {
                  v775 = *(*v951 + 4 * v774);
                  if (v775 >= 1)
                  {
                    v776 = 0;
                    v777 = *(v940 + 4 * v774) - v773[v774];
                    do
                    {
                      LOWORD(v986) = 0x8000;
                      sub_250100B10((a1 + 890), (v777 >> v776++) & 1, &v986);
                    }

                    while (v775 != v776);
                  }

                  ++v774;
                }

                while (v774 != v750);
              }

              goto LABEL_1080;
            }

            v759 = __p;
            if (v750 >= 1)
            {
              v771 = 0;
              v772 = v927 + 4 * v755 * v917;
              v765 = v941;
              do
              {
                *&v759[v771] = *(v772 + v771);
                v771 += 4;
              }

              while (v752 != v771);
              v766 = &__b;
              goto LABEL_1079;
            }

            v766 = &__b;
          }

          else
          {
            v759 = __p;
            if (v917 >= 1)
            {
              v768 = 0;
              v769 = v927 + 4 * v755 * v917;
              v770 = v927 + 4 * v756 * v750;
              v765 = v941;
              do
              {
                *&v759[v768] = (*(v770 + v768) + *(v769 + v768)) / 2;
                v768 += 4;
              }

              while (v752 != v768);
              v766 = (&v998 + 8);
              goto LABEL_1079;
            }

            v766 = (&v998 + 8);
          }
        }

        v765 = v941;
LABEL_1079:
        sub_250100C84(a1, v940, v759, v760, v951, *(v765 + 8), v766);
LABEL_1080:
        if (++v751 == v922)
        {
          goto LABEL_1081;
        }
      }
    }

    v920 = *a1;
    v629 = a1[780];
    v925 = *(a1 + 384);
    v1004 = 0u;
    v1005 = 0u;
    v1002 = 0u;
    v1003 = 0u;
    v1000 = 0u;
    v1001 = 0u;
    v998 = 0u;
    v999 = 0u;
    v996 = 0u;
    *v997 = 0u;
    *v994 = 0u;
    *v995 = 0u;
    *v992 = 0u;
    v993 = 0u;
    __b = 0u;
    sub_2500F3ECC(&__b, v629);
    sub_2500F3ECC(&v998 + 1, v629);
    LODWORD(v986) = 0;
    v930 = v629;
    sub_2500FC9FC(&__p, v629, &v986);
    if (v920 < 1)
    {
LABEL_875:
      if (__p)
      {
        v989 = __p;
        operator delete(__p);
      }

      for (i = 0; i != -240; i -= 120)
      {
        v652 = &v992[i / 8 - 2];
        v653 = *(&v1004 + i + 8);
        if (v653)
        {
          v652[28] = v653;
          operator delete(v653);
        }

        v654 = v652[24];
        if (v654)
        {
          *(&v1003 + i + 8) = v654;
          operator delete(v654);
        }

        v655 = &v992[i / 8 - 2];
        v656 = *(&v1001 + i + 8);
        if (v656)
        {
          v655[22] = v656;
          operator delete(v656);
        }

        v657 = v655[18];
        if (v657)
        {
          *(&v1000 + i + 8) = v657;
          operator delete(v657);
        }

        v658 = v652[15];
        if (v658)
        {
          *(&v999 + i) = v658;
          operator delete(v658);
        }
      }

      return 0;
    }

    v630 = 0;
    v948 = a1 + 750;
    v916 = *(v2 + 16);
    v631 = 4 * v629;
    while (1)
    {
      v632 = *(*(a1 + 11) + 4 * v630);
      if (!v916)
      {
        break;
      }

      v633 = *(a1 + 387);
      if (*(v633 + v632))
      {
        v937 = v925 + 4 * v632 * v629;
        v634 = (*(a1 + 17) + 12 * v632);
        v635 = *v634;
        v636 = v634[1];
        if (v636 == -1 || !*(v633 + v635) || !*(v633 + v636))
        {
          if (v635 == -1 || !*(v633 + v635))
          {
LABEL_868:
            if (v930 >= 1)
            {
              v645 = __p;
              bzero(__p, v631);
              v646 = 0;
              do
              {
                v647 = v629;
                v648 = *(*v948 + 4 * v646);
                if (v648 >= 1)
                {
                  v649 = 0;
                  v650 = *(v937 + 4 * v646) - v645[v646];
                  do
                  {
                    LOWORD(v986) = 0x8000;
                    sub_250100B10((a1 + 890), (v650 >> v649++) & 1, &v986);
                  }

                  while (v648 != v649);
                }

                ++v646;
                v629 = v647;
              }

              while (v646 != v647);
            }

            goto LABEL_874;
          }

LABEL_857:
          v637 = __p;
          if (v629 >= 1)
          {
            v638 = 0;
            v639 = v925 + 4 * v635 * v930;
            do
            {
              *&v637[v638] = *(v639 + v638);
              v638 += 4;
            }

            while (v631 != v638);
          }

          v640 = &__b;
LABEL_866:
          sub_250100C84(a1, v937, v637, v930, v948, *(v2 + 8), v640);
          goto LABEL_874;
        }

LABEL_862:
        v637 = __p;
        if (v629 >= 1)
        {
          v642 = 0;
          v643 = v925 + 4 * v635 * v930;
          v644 = v925 + 4 * v636 * v629;
          do
          {
            *&v637[v642] = (*(v644 + v642) + *(v643 + v642)) / 2;
            v642 += 4;
          }

          while (v631 != v642);
        }

        v640 = (&v998 + 8);
        goto LABEL_866;
      }

LABEL_874:
      if (++v630 == v920)
      {
        goto LABEL_875;
      }
    }

    v937 = v925 + 4 * v632 * v930;
    v641 = (*(a1 + 17) + 12 * v632);
    v635 = *v641;
    v636 = v641[1];
    if (v636 == -1)
    {
      if (v635 == -1)
      {
        goto LABEL_868;
      }

      goto LABEL_857;
    }

    goto LABEL_862;
  }

  if (v17 > 4)
  {
    if (v17 != 5)
    {
      if (v17 != 6)
      {
        return result;
      }

      v203 = *a1;
      v204 = a1[780];
      v205 = *(a1 + 384);
      v206 = ~(-1 << (*(v2 + 4) - 1));
      v989 = 0;
      __p = 0;
      v990 = 0;
      sub_2500F8F40(a1 + 23, a1 + 29, a1 + 26, a1 + 26, -1431655765 * ((*(a1 + 24) - *(a1 + 23)) >> 2), &__p, v206);
      v207 = 0;
      v1013 = 0;
      v1011 = 0u;
      v1012 = 0u;
      v1009 = 0u;
      v1010 = 0u;
      v1007 = 0u;
      v1008 = 0u;
      v1005 = 0u;
      v1006 = 0u;
      v1003 = 0u;
      v1004 = 0u;
      v1001 = 0u;
      v1002 = 0u;
      v999 = 0u;
      v1000 = 0u;
      *v997 = 0u;
      v998 = 0u;
      *v995 = 0u;
      v996 = 0u;
      v993 = 0u;
      *v994 = 0u;
      __b = 0u;
      *v992 = 0u;
      do
      {
        sub_2500F3ECC(&v992[v207 - 2], v204);
        v207 += 15;
      }

      while (v207 != 45);
      memset_pattern16(&v954, &unk_250110610, 6uLL);
      memset_pattern16(&v983, &unk_250110610, 6uLL);
      v982 = 0x8000;
      v981 = 0x8000;
      if (v203 > 0)
      {
        v208 = 0;
        v209 = vdup_n_s32(v206);
        v929 = 4 * v203;
        v210 = *(v2 + 16);
        v936 = v204;
        v912 = v205;
        v915 = v210;
        v868 = v206;
        do
        {
          v211 = *(*(a1 + 11) + v208);
          if (v210 && !*(*(a1 + 387) + v211))
          {
            goto LABEL_845;
          }

          v212 = (v205 + 4 * v211 * v204);
          v213 = *v212 - v206;
          v214 = v212[1] - v206;
          if (v213 >= 0)
          {
            v215 = v213;
          }

          else
          {
            v215 = -v213;
          }

          if (v214 >= 0)
          {
            v216 = v214;
          }

          else
          {
            v216 = -v214;
          }

          v217 = v206 - v215;
          v218 = v216 - v206;
          if (v213 >= 0)
          {
            v218 = v206 - v216;
          }

          v219 = v215 - v206;
          if (v214 >= 0)
          {
            v219 = v217;
          }

          v220 = v217 - v216;
          LODWORD(v987[0]) = v217 - v216;
          if (v217 - v216 < 0)
          {
            v221 = v218;
          }

          else
          {
            v221 = v213;
          }

          if (v217 - v216 < 0)
          {
            v222 = v219;
          }

          else
          {
            v222 = v214;
          }

          v986 = __PAIR64__(v222, v221);
          v223 = 3 * v211;
          v224 = __p + 12 * v211;
          v225 = *v224;
          v964 = *v224;
          v226 = *(v224 + 2);
          LODWORD(v965) = v226;
          v227 = (*(a1 + 17) + 4 * v223);
          v228 = *v227;
          v229 = v227[1];
          v230 = v227[2];
          v231 = (*(a1 + 20) + 4 * v223);
          v232 = v231[2];
          if (v232 != -1)
          {
            v233 = *v231;
            v234 = v231[1];
            if (!v210 || (v235 = *(a1 + 387), *(v235 + v228)) && *(v235 + v229) && *(v235 + v230) && *(v235 + v233) && *(v235 + v234) && *(v235 + v232))
            {
              v236 = *(v205 + 4 * v228 * v204);
              v237 = vsub_s32(v236, v209);
              v238 = vabd_s32(v236, v209);
              v239 = v206 - v238.i32[0] - v238.i32[1];
              if (v239 < 0)
              {
                v237 = vbsl_s8(vcltz_s32(v237), vrev64_s32(vsub_s32(v238, v209)), __PAIR64__(v206 - v238.i32[0], v206 - v238.i32[1]));
              }

              v240 = *(v205 + 4 * v229 * v204);
              v241 = vsub_s32(v240, v209);
              v242 = vabd_s32(v240, v209);
              v905 = v206 - v242.i32[0] - v242.i32[1];
              if (v905 < 0)
              {
                v241 = vbsl_s8(vcltz_s32(v241), vrev64_s32(vsub_s32(v242, v209)), __PAIR64__(v206 - v242.i32[0], v206 - v242.i32[1]));
              }

              v243 = *(v205 + 4 * v230 * v204);
              v244 = vsub_s32(v243, v209);
              v245 = vabd_s32(v243, v209);
              v246 = v206 - v245.i32[0] - v245.i32[1];
              if (v246 < 0)
              {
                v244 = vbsl_s8(vcltz_s32(v244), vrev64_s32(vsub_s32(v245, v209)), __PAIR64__(v206 - v245.i32[0], v206 - v245.i32[1]));
              }

              v247 = *(v205 + 4 * v233 * v204);
              v248 = vsub_s32(v247, v209);
              v249 = vabd_s32(v247, v209);
              v250 = v206 - v249.i32[0] - v249.i32[1];
              if (v250 < 0)
              {
                v248 = vbsl_s8(vcltz_s32(v248), vrev64_s32(vsub_s32(v249, v209)), __PAIR64__(v206 - v249.i32[0], v206 - v249.i32[1]));
              }

              v251 = *(v205 + 4 * v234 * v204);
              v252 = vsub_s32(v251, v209);
              v253 = vabd_s32(v251, v209);
              v254 = v206 - v253.i32[0] - v253.i32[1];
              if (v254 < 0)
              {
                v252 = vbsl_s8(vcltz_s32(v252), vrev64_s32(vsub_s32(v253, v209)), __PAIR64__(v206 - v253.i32[0], v206 - v253.i32[1]));
              }

              v255 = *(v205 + 4 * v232 * v204);
              v256 = vsub_s32(v255, v209);
              v257 = vabd_s32(v255, v209);
              v258 = v206 - v257.i32[0] - v257.i32[1];
              if (v258 < 0)
              {
                v256 = vbsl_s8(vcltz_s32(v256), vrev64_s32(vsub_s32(v257, v209)), __PAIR64__(v206 - v257.i32[0], v206 - v257.i32[1]));
              }

              v259 = v226 * v239 + v237.i32[0] * v225.i32[0] + v237.i32[1] * v225.i32[1];
              if (v259 >= 0)
              {
                v260 = v225.i32[0];
              }

              else
              {
                v260 = -v225.i32[0];
              }

              if (v259 >= 0)
              {
                v261 = v225.i32[1];
              }

              else
              {
                v261 = -v225.i32[1];
              }

              if (v259 >= 0)
              {
                v262 = v226;
              }

              else
              {
                v262 = -v226;
              }

              v952 = v260;
              v980 = v261;
              v263 = vsub_s32(vadd_s32(v241, v237), v244);
              v264 = v263.i32[0];
              v978 = v263.i32[1];
              v979 = v263.i32[0];
              v265 = vsub_s32(vadd_s32(v252, v248), v256);
              v266 = vadd_s32(v248, v237);
              v267 = v266.i32[1];
              v268 = v266.i32[0] / 2;
              v269 = vadd_s32(v252, v241);
              v270 = v269.i32[1];
              v271 = v269.i32[0];
              v272 = vadd_s32(v244, v256);
              v273 = v268 + 2 * v271 - v272.i32[0];
              v274 = v265.i32[0];
              v976 = v265.i32[1];
              v977 = v265.i32[0];
              v275 = v267;
              v276 = v273 / 3;
              v277 = 1431655766 * (v275 / 2 + 2 * v270 - v272.i32[1]);
              v278 = HIDWORD(v277) + (v277 >> 63);
              v975 = v276;
              v974 = v278;
              v973 = v221;
              v972 = v222;
              v971 = v221;
              v970 = v222;
              v969 = v221;
              v968 = v222;
              v967 = v221;
              v966 = v222;
              v279 = vabs_s32(v225);
              if (v226 >= 0)
              {
                v280 = v226;
              }

              else
              {
                v280 = -v226;
              }

              if (v279.i32[0] >= v279.i32[1] && v279.i32[0] >= v280)
              {
                v281 = &v952;
                v282 = &v973;
                v283 = v221;
                goto LABEL_423;
              }

              if (v279.i32[1] >= v280)
              {
                v281 = &v980;
                v282 = &v972;
                v283 = v222;
                v260 = v261;
LABEL_423:
                *v282 = v220;
                *v281 = v262;
                v385 = v973;
                v384 = v972;
                v262 = v260;
              }

              else
              {
                v384 = v222;
                v385 = v221;
                v283 = v220;
              }

              if (v262 >= 0)
              {
                v395 = v283;
              }

              else
              {
                v395 = -v283;
              }

              if (v262 >= 0)
              {
                v396 = v262;
              }

              else
              {
                v396 = -v262;
              }

              v901 = v396;
              if (v395 < 0)
              {
                if (v384 >= 0)
                {
                  v398 = v384;
                }

                else
                {
                  v398 = -v384;
                }

                v399 = v398 - v206;
                v400 = v206 - v398;
                if (v385 >= 0)
                {
                  v397 = v400;
                }

                else
                {
                  v397 = v399;
                }

                if (v385 >= 0)
                {
                  v401 = v385;
                }

                else
                {
                  v401 = -v385;
                }

                if (v384 < 0)
                {
                  v384 = v401 - v206;
                }

                else
                {
                  v384 = v206 - v401;
                }
              }

              else
              {
                v397 = v385;
              }

              v437 = v905 + v239 - v246;
              v973 = v397;
              v972 = v384;
              v438 = vabs_s32(v263);
              if (v437 >= 0)
              {
                v439 = v905 + v239 - v246;
              }

              else
              {
                v439 = v246 - (v905 + v239);
              }

              v440 = v438.i32[0];
              if (v438.i32[0] >= v438.i32[1] && v438.i32[0] >= v439)
              {
                v445 = &v979;
                v446 = &v971;
                v444 = v221;
              }

              else
              {
                if (v438.i32[1] < v439)
                {
                  v442 = v222;
                  v443 = v221;
                  v444 = v220;
                  goto LABEL_552;
                }

                v264 = v263.i32[1];
                v445 = &v978;
                v446 = &v970;
                v440 = v438.u32[1];
                v444 = v222;
              }

              *v446 = v220;
              *v445 = v437;
              v443 = v971;
              v442 = v970;
              v439 = v440;
              v437 = v264;
LABEL_552:
              if (v437 >= 0)
              {
                v447 = v444;
              }

              else
              {
                v447 = -v444;
              }

              v883 = v447;
              if (v447 < 0)
              {
                if (v442 >= 0)
                {
                  v450 = v442;
                }

                else
                {
                  v450 = -v442;
                }

                v448 = v450 - v206;
                v451 = v206 - v450;
                if (v443 < 0)
                {
                  v452 = -v443;
                }

                else
                {
                  v448 = v451;
                  v452 = v443;
                }

                if (v442 < 0)
                {
                  v449 = v452 - v206;
                }

                else
                {
                  v449 = v206 - v452;
                }
              }

              else
              {
                v448 = v443;
                v449 = v442;
              }

              v453 = v254 + v250 - v258;
              v878 = v448;
              v971 = v448;
              v970 = v449;
              v454 = vabs_s32(v265);
              if (v453 >= 0)
              {
                v455 = v254 + v250 - v258;
              }

              else
              {
                v455 = v258 - (v254 + v250);
              }

              v456 = v454.i32[0];
              v873 = v449;
              if (v454.i32[0] >= v454.i32[1] && v454.i32[0] >= v455)
              {
                v457 = v246;
                v458 = &v977;
                v459 = &v969;
                v460 = v221;
                goto LABEL_575;
              }

              v457 = v246;
              if (v454.i32[1] >= v455)
              {
                v274 = v265.i32[1];
                v458 = &v976;
                v459 = &v968;
                v456 = v454.i32[1];
                v460 = v222;
LABEL_575:
                *v459 = v220;
                *v458 = v453;
                v462 = v969;
                v461 = v968;
                v892 = v456;
                v453 = v274;
                v449 = v873;
              }

              else
              {
                v892 = v455;
                v461 = v222;
                v462 = v221;
                v460 = v220;
              }

              if (v453 < 0)
              {
                v460 = -v460;
              }

              if (v460 < 0)
              {
                v466 = v254;
                v467 = v250;
                if (v461 >= 0)
                {
                  v468 = v461;
                }

                else
                {
                  v468 = -v461;
                }

                v469 = v468 - v206;
                v470 = v206 - v468;
                if (v462 >= 0)
                {
                  v471 = v470;
                }

                else
                {
                  v471 = v469;
                }

                if (v462 >= 0)
                {
                  v472 = v462;
                }

                else
                {
                  v472 = -v462;
                }

                v463 = v878;
                if (v461 < 0)
                {
                  v465 = v472 - v206;
                }

                else
                {
                  v465 = v206 - v472;
                }

                v464 = v892;
                v462 = v471;
                v250 = v467;
                v254 = v466;
              }

              else
              {
                v463 = v878;
                v464 = v892;
                v465 = v461;
              }

              v473 = 1431655766 * ((v250 + v239) / 2 + 2 * (v254 + v905) - (v457 + v258));
              v474 = HIDWORD(v473) + (v473 >> 63);
              v969 = v462;
              v968 = v465;
              if (v276 >= 0)
              {
                v475 = v276;
              }

              else
              {
                v475 = -v276;
              }

              if (v278 >= 0)
              {
                v476 = v278;
              }

              else
              {
                v476 = -v278;
              }

              if (v474 >= 0)
              {
                v477 = v474;
              }

              else
              {
                v477 = -v474;
              }

              if (v475 >= v476 && v475 >= v477)
              {
                v479 = &v975;
                v480 = &v967;
                v477 = v475;
LABEL_609:
                *v480 = v220;
                v220 = v221;
                *v479 = v474;
                v221 = v967;
                v222 = v966;
                v474 = v276;
              }

              else if (v476 >= v477)
              {
                v479 = &v974;
                v480 = &v966;
                v477 = v476;
                v221 = v222;
                v276 = v278;
                goto LABEL_609;
              }

              if (v474 >= 0)
              {
                v481 = v220;
              }

              else
              {
                v481 = -v220;
              }

              if (v481 < 0)
              {
                if (v222 >= 0)
                {
                  v483 = v222;
                }

                else
                {
                  v483 = -v222;
                }

                v484 = v483 - v206;
                v485 = v206 - v483;
                if (v221 >= 0)
                {
                  v482 = v485;
                }

                else
                {
                  v482 = v484;
                }

                if (v221 >= 0)
                {
                  v486 = v221;
                }

                else
                {
                  v486 = -v221;
                }

                if (v222 < 0)
                {
                  v222 = v486 - v206;
                }

                else
                {
                  v222 = v206 - v486;
                }
              }

              else
              {
                v482 = v221;
              }

              v967 = v482;
              v966 = v222;
              v487 = v952;
              v488 = v397 - v952;
              v489 = v980;
              LODWORD(v962) = v397 - v952;
              HIDWORD(v962) = v384 - v980;
              LODWORD(v963) = v395 - v901;
              LODWORD(v960) = v463 - v979;
              HIDWORD(v960) = v449 - v978;
              LODWORD(v961) = v883 - v439;
              v490 = v977;
              v834 = v976;
              LODWORD(v958) = v462 - v977;
              HIDWORD(v958) = v465 - v976;
              LODWORD(v959) = v460 - v464;
              v832 = v975;
              v830 = v974;
              LODWORD(v956) = v482 - v975;
              HIDWORD(v956) = v222 - v974;
              LODWORD(v957) = v481 - v477;
              v945 = v208;
              v855 = v384;
              v847 = v395;
              v842 = v439;
              v836 = v460;
              v906 = v979;
              v839 = v978;
              if (*(v2 + 24) == 1)
              {
                v491 = *(v2 + 8);
                v492 = v983;
                v493 = *(&unk_250110628 + (((v983 + 2048) >> 10) & 0x7CLL));
                v810 = v493;
                v812 = v977;
                v814 = v980;
                v816 = v952;
                v494 = v984;
                v495 = *(&unk_250110628 + (((v984 + 2048) >> 10) & 0x7CLL));
                v824 = v462;
                v826 = v465;
                v828 = v397;
                v820 = v481;
                v822 = v477;
                v496 = v495 + v493 + sub_25010F50C(&v962, v204, v491, &v1006);
                v497 = *(&unk_250110628 + (((67584 - v492) >> 10) & 0x7CLL));
                v818 = v482;
                v498 = v985;
                v499 = *(&unk_250110628 + (((v985 + 2048) >> 10) & 0x7CLL));
                v500 = v499 + v497 + sub_25010F50C(&v960, v204, v491, &v1006);
                v501 = *(&unk_250110628 + (((67584 - v494) >> 10) & 0x7CLL));
                v502 = sub_25010F50C(&v958, v936, v491, &v1006);
                v503 = *(&unk_250110628 + (((67584 - v498) >> 10) & 0x7CLL));
                v206 = v868;
                v504 = sub_25010F50C(&v956, v936, v491, &v1006);
                v490 = v812;
                v481 = v820;
                v477 = v822;
                v464 = v892;
                v397 = v828;
                v505 = v503 + v497;
                v487 = v816;
                v482 = v818;
                v2 = v941;
                v506 = v501 + v810;
                v205 = v912;
                v204 = v936;
                v507 = v506 + v502;
                v489 = v814;
                v508 = v505 + v504;
                v462 = v824;
                v465 = v826;
              }

              else if (v204 < 1)
              {
                v508 = 0;
                v507 = 0;
                v500 = 0;
                v496 = 0;
              }

              else
              {
                if (v488 < 0)
                {
                  v488 = v952 - v397;
                }

                v496 = -(v204 * __clz(v488 + 1));
                if (v463 - v979 >= 0)
                {
                  v509 = v463 - v979;
                }

                else
                {
                  v509 = v979 - v463;
                }

                v500 = -(v204 * __clz(v509 + 1));
                if (v462 - v977 >= 0)
                {
                  v510 = v462 - v977;
                }

                else
                {
                  v510 = v977 - v462;
                }

                v507 = -(v204 * __clz(v510 + 1));
                if (v482 - v975 >= 0)
                {
                  v511 = v482 - v975;
                }

                else
                {
                  v511 = v975 - v482;
                }

                v508 = -(v204 * __clz(v511 + 1));
              }

              if (v496 > v500 || v496 > v507 || v496 > v508)
              {
                if (v500 > v507 || v500 > v508)
                {
                  v208 = v945;
                  if (v507 <= v508)
                  {
                    v513 = 0;
                    v964 = __PAIR64__(v834, v490);
                    v512 = 1;
                    LODWORD(v965) = v464;
                    v222 = v465;
                    v515 = v836;
                    v514 = &v984;
                    LODWORD(v986) = v462;
                  }

                  else
                  {
                    v964 = __PAIR64__(v830, v832);
                    v512 = 1;
                    LODWORD(v965) = v477;
                    v515 = v481;
                    v513 = 1;
                    v514 = &v985;
                    LODWORD(v986) = v482;
                  }
                }

                else
                {
                  v512 = 0;
                  v964 = __PAIR64__(v839, v906);
                  v513 = 1;
                  LODWORD(v965) = v842;
                  v222 = v873;
                  v515 = v883;
                  v514 = &v985;
                  LODWORD(v986) = v878;
                  v208 = v945;
                }

                v210 = v915;
              }

              else
              {
                v512 = 0;
                v513 = 0;
                v964 = __PAIR64__(v489, v487);
                LODWORD(v965) = v901;
                v514 = &v984;
                LODWORD(v986) = v397;
                v208 = v945;
                v210 = v915;
                v222 = v855;
                v515 = v847;
              }

              HIDWORD(v986) = v222;
              LODWORD(v987[0]) = v515;
              sub_250100B10((a1 + 890), v513, &v983);
              sub_250100B10((a1 + 890), v512, v514);
              v589 = &v1006;
              goto LABEL_844;
            }
          }

          if (v230 != -1)
          {
            if (!v210 || (v284 = *(a1 + 387), *(v284 + v228)) && *(v284 + v229) && *(v284 + v230))
            {
              v285 = (v205 + 4 * v229 * v204);
              v286 = (v205 + 4 * v230 * v204);
              v287 = *(v205 + 4 * v228 * v204);
              v288 = COERCE_DOUBLE(vsub_s32(v287, v209));
              v289 = vabd_s32(v287, v209);
              v290 = v289.i32[1];
              v291.i32[0] = v206 - v289.i32[1];
              v291.i32[1] = v206 - v289.i32[0];
              v292 = COERCE_DOUBLE(vbsl_s8(vcltz_s32(*&v288), vrev64_s32(vsub_s32(v289, v209)), v291));
              v293 = v291.i32[1] - v290;
              if (v291.i32[1] - v290 >= 0)
              {
                v292 = v288;
              }

              v294 = COERCE_DOUBLE(vsub_s32(*v285, v209));
              v295 = vabd_s32(*v285, v209);
              v296 = v295.i32[1];
              v297.i32[0] = v206 - v295.i32[1];
              v297.i32[1] = v206 - v295.i32[0];
              v298 = COERCE_DOUBLE(vbsl_s8(vcltz_s32(*&v294), vrev64_s32(vsub_s32(v295, v209)), v297));
              v299 = v297.i32[1] - v296;
              if (v297.i32[1] - v296 >= 0)
              {
                v298 = v294;
              }

              v300 = COERCE_DOUBLE(vsub_s32(*v286, v209));
              v301 = vabd_s32(*v286, v209);
              v302 = v301.i32[1];
              v303.i32[0] = v206 - v301.i32[1];
              v303.i32[1] = v206 - v301.i32[0];
              v304 = COERCE_DOUBLE(vbsl_s8(vcltz_s32(*&v300), vrev64_s32(vsub_s32(v301, v209)), v303));
              v305 = v303.i32[1] - v302;
              if (v305 >= 0)
              {
                v304 = v300;
              }

              v306 = vadd_s32(*&v298, *&v292);
              v307 = v226 * v293 + SLODWORD(v292) * v225.i32[0] + SHIDWORD(v292) * v225.i32[1];
              if (v307 >= 0)
              {
                v308 = v225.i32[0];
              }

              else
              {
                v308 = -v225.i32[0];
              }

              if (v307 >= 0)
              {
                v309 = v225.i32[1];
              }

              else
              {
                v309 = -v225.i32[1];
              }

              if (v307 >= 0)
              {
                v310 = v226;
              }

              else
              {
                v310 = -v226;
              }

              v952 = v308;
              v980 = v309;
              v311 = vsub_s32(v306, *&v304);
              v312 = v311.i32[0];
              v978 = v311.i32[1];
              v979 = v311.i32[0];
              v313 = (v306.i32[0] + 1) / 2;
              v977 = v313;
              v976 = (v306.i32[1] + 1) / 2;
              v314 = (LODWORD(v304) + v306.i32[0] + 1) / 3;
              v975 = v314;
              v974 = (HIDWORD(v304) + v306.i32[1] + 1) / 3;
              v973 = v221;
              v972 = v222;
              v971 = v221;
              v970 = v222;
              v969 = v221;
              v968 = v222;
              v967 = v221;
              v966 = v222;
              v315 = vabs_s32(v225);
              if (v226 >= 0)
              {
                v316 = v226;
              }

              else
              {
                v316 = -v226;
              }

              if (v315.i32[0] >= v315.i32[1] && v315.i32[0] >= v316)
              {
                v317 = &v952;
                v318 = &v973;
                v319 = v221;
                goto LABEL_444;
              }

              if (v315.i32[1] >= v316)
              {
                v317 = &v980;
                v318 = &v972;
                v319 = v222;
                v308 = v309;
LABEL_444:
                *v318 = v220;
                *v317 = v310;
                v387 = v973;
                v386 = v972;
                v310 = v308;
              }

              else
              {
                v386 = v222;
                v387 = v221;
                v319 = v220;
              }

              if (v310 >= 0)
              {
                v402 = v319;
              }

              else
              {
                v402 = -v319;
              }

              if (v310 >= 0)
              {
                v403 = v310;
              }

              else
              {
                v403 = -v310;
              }

              if (v402 < 0)
              {
                if (v386 >= 0)
                {
                  v405 = v386;
                }

                else
                {
                  v405 = -v386;
                }

                v406 = v405 - v206;
                v407 = v206 - v405;
                if (v387 >= 0)
                {
                  v404 = v407;
                }

                else
                {
                  v404 = v406;
                }

                if (v387 >= 0)
                {
                  v408 = v387;
                }

                else
                {
                  v408 = -v387;
                }

                if (v386 < 0)
                {
                  v386 = v408 - v206;
                }

                else
                {
                  v386 = v206 - v408;
                }
              }

              else
              {
                v404 = v387;
              }

              v516 = v299 + v293;
              v517 = v516 - v305;
              v973 = v404;
              v972 = v386;
              v518 = vabs_s32(v311);
              if (v516 - v305 >= 0)
              {
                v519 = v516 - v305;
              }

              else
              {
                v519 = v305 - v516;
              }

              v520 = v518.i32[0];
              if (v518.i32[0] >= v518.i32[1] && v518.i32[0] >= v519)
              {
                v525 = &v979;
                v526 = &v971;
                v524 = v221;
              }

              else
              {
                if (v518.i32[1] < v519)
                {
                  v522 = v222;
                  v523 = v221;
                  v524 = v220;
                  goto LABEL_665;
                }

                v312 = v311.i32[1];
                v525 = &v978;
                v526 = &v970;
                v520 = v518.u32[1];
                v524 = v222;
              }

              *v526 = v220;
              *v525 = v517;
              v523 = v971;
              v522 = v970;
              v519 = v520;
              v517 = v312;
LABEL_665:
              if (v517 >= 0)
              {
                v527 = v524;
              }

              else
              {
                v527 = -v524;
              }

              if (v527 < 0)
              {
                if (v522 >= 0)
                {
                  v529 = v522;
                }

                else
                {
                  v529 = -v522;
                }

                v530 = v529 - v206;
                v531 = v206 - v529;
                if (v523 >= 0)
                {
                  v528 = v531;
                }

                else
                {
                  v528 = v530;
                }

                if (v523 >= 0)
                {
                  v532 = v523;
                }

                else
                {
                  v532 = -v523;
                }

                if (v522 < 0)
                {
                  v522 = v532 - v206;
                }

                else
                {
                  v522 = v206 - v532;
                }
              }

              else
              {
                v528 = v523;
              }

              v533 = v516 + 1;
              v534 = v533 / 2;
              v971 = v528;
              v970 = v522;
              if (v313 >= 0)
              {
                v535 = (v306.i32[0] + 1) / 2;
              }

              else
              {
                v535 = (v306.i32[0] + 1) / -2;
              }

              if ((v306.i32[1] + 1) / 2 >= 0)
              {
                v536 = (v306.i32[1] + 1) / 2;
              }

              else
              {
                v536 = (v306.i32[1] + 1) / -2;
              }

              if (v534 >= 0)
              {
                v537 = v533 / 2;
              }

              else
              {
                v537 = v533 / -2;
              }

              if (v535 >= v536 && v535 >= v537)
              {
                v542 = &v977;
                v543 = &v969;
                v541 = v221;
              }

              else
              {
                if (v536 < v537)
                {
                  v535 = v537;
                  v539 = v222;
                  v540 = v221;
                  v541 = v220;
                  goto LABEL_700;
                }

                v542 = &v976;
                v543 = &v968;
                v535 = v536;
                v541 = v222;
                v313 = (v306.i32[1] + 1) / 2;
              }

              *v543 = v220;
              *v542 = v534;
              v540 = v969;
              v539 = v968;
              v534 = v313;
LABEL_700:
              if (v534 < 0)
              {
                v541 = -v541;
              }

              if (v541 < 0)
              {
                if (v539 >= 0)
                {
                  v545 = v539;
                }

                else
                {
                  v545 = -v539;
                }

                v546 = v545 - v206;
                v547 = v206 - v545;
                if (v540 >= 0)
                {
                  v544 = v547;
                }

                else
                {
                  v544 = v546;
                }

                if (v540 >= 0)
                {
                  v548 = v540;
                }

                else
                {
                  v548 = -v540;
                }

                if (v539 < 0)
                {
                  v539 = v548 - v206;
                }

                else
                {
                  v539 = v206 - v548;
                }
              }

              else
              {
                v544 = v540;
              }

              v549 = (v305 + v533) / 3;
              v969 = v544;
              v968 = v539;
              if (v314 >= 0)
              {
                v550 = (LODWORD(v304) + v306.i32[0] + 1) / 3;
              }

              else
              {
                v550 = (LODWORD(v304) + v306.i32[0] + 1) / -3;
              }

              if ((HIDWORD(v304) + v306.i32[1] + 1) / 3 >= 0)
              {
                v551 = (HIDWORD(v304) + v306.i32[1] + 1) / 3;
              }

              else
              {
                v551 = (HIDWORD(v304) + v306.i32[1] + 1) / -3;
              }

              if (v549 >= 0)
              {
                v552 = v549;
              }

              else
              {
                v552 = -v549;
              }

              if (v550 >= v551 && v550 >= v552)
              {
                v554 = &v975;
                v555 = &v967;
                v552 = v550;
LABEL_732:
                *v555 = v220;
                v220 = v221;
                *v554 = v549;
                v221 = v967;
                v222 = v966;
                v549 = v314;
              }

              else if (v551 >= v552)
              {
                v554 = &v974;
                v555 = &v966;
                v552 = v551;
                v221 = v222;
                v314 = (HIDWORD(v304) + v306.i32[1] + 1) / 3;
                goto LABEL_732;
              }

              if (v549 >= 0)
              {
                v556 = v220;
              }

              else
              {
                v556 = -v220;
              }

              if (v556 < 0)
              {
                if (v222 >= 0)
                {
                  v558 = v222;
                }

                else
                {
                  v558 = -v222;
                }

                v559 = v558 - v206;
                v560 = v206 - v558;
                if (v221 >= 0)
                {
                  v557 = v560;
                }

                else
                {
                  v557 = v559;
                }

                if (v221 >= 0)
                {
                  v561 = v221;
                }

                else
                {
                  v561 = -v221;
                }

                if (v222 < 0)
                {
                  v222 = v561 - v206;
                }

                else
                {
                  v222 = v206 - v561;
                }
              }

              else
              {
                v557 = v221;
              }

              v967 = v557;
              v966 = v222;
              v562 = v952;
              v563 = v404 - v952;
              v893 = v980;
              LODWORD(v962) = v404 - v952;
              HIDWORD(v962) = v386 - v980;
              LODWORD(v963) = v402 - v403;
              v848 = v979;
              v843 = v978;
              LODWORD(v960) = v528 - v979;
              HIDWORD(v960) = v522 - v978;
              LODWORD(v961) = v527 - v519;
              v837 = v977;
              v835 = v976;
              LODWORD(v958) = v544 - v977;
              HIDWORD(v958) = v539 - v976;
              LODWORD(v959) = v541 - v535;
              v833 = v975;
              v831 = v974;
              LODWORD(v956) = v557 - v975;
              HIDWORD(v956) = v222 - v974;
              LODWORD(v957) = v556 - v552;
              v946 = v208;
              v907 = v386;
              v902 = v402;
              v884 = v519;
              v879 = v522;
              v874 = v527;
              v856 = v528;
              v840 = v557;
              if (*(v2 + 24) == 1)
              {
                v564 = *(v2 + 8);
                v565 = v954;
                v566 = *(&unk_250110628 + (((v954 + 2048) >> 10) & 0x7CLL));
                v811 = v566;
                v813 = v952;
                v567 = WORD1(v954);
                v568 = *(&unk_250110628 + (((WORD1(v954) + 2048) >> 10) & 0x7CLL));
                v825 = v535;
                v827 = v404;
                v829 = v403;
                v821 = v541;
                v823 = v539;
                v817 = v552;
                v819 = v544;
                v815 = v556;
                v569 = v568 + v566 + sub_25010F50C(&v962, v204, v564, &v998 + 1);
                v570 = *(&unk_250110628 + (((67584 - v565) >> 10) & 0x7CLL));
                v571 = WORD2(v954);
                v572 = *(&unk_250110628 + (((WORD2(v954) + 2048) >> 10) & 0x7CLL));
                v573 = v572 + v570 + sub_25010F50C(&v960, v204, v564, &v998 + 1);
                v574 = *(&unk_250110628 + (((67584 - v567) >> 10) & 0x7CLL));
                v575 = sub_25010F50C(&v958, v936, v564, &v998 + 1);
                v576 = *(&unk_250110628 + (((67584 - v571) >> 10) & 0x7CLL));
                v206 = v868;
                v577 = sub_25010F50C(&v956, v936, v564, &v998 + 1);
                v556 = v815;
                v552 = v817;
                v544 = v819;
                v541 = v821;
                v404 = v827;
                v403 = v829;
                v578 = v576 + v570;
                v2 = v941;
                v579 = v574 + v811;
                v205 = v912;
                v204 = v936;
                v580 = v579 + v575;
                v562 = v813;
                v581 = v578 + v577;
                v539 = v823;
                v535 = v825;
              }

              else if (v204 < 1)
              {
                v569 = 0;
                v573 = 0;
                v580 = 0;
                v581 = 0;
              }

              else
              {
                if (v563 < 0)
                {
                  v563 = v952 - v404;
                }

                v569 = -(v204 * __clz(v563 + 1));
                if (v528 - v979 >= 0)
                {
                  v582 = v528 - v979;
                }

                else
                {
                  v582 = v979 - v528;
                }

                v573 = -(v204 * __clz(v582 + 1));
                if (v544 - v977 >= 0)
                {
                  v583 = v544 - v977;
                }

                else
                {
                  v583 = v977 - v544;
                }

                v580 = -(v204 * __clz(v583 + 1));
                if (v557 - v975 >= 0)
                {
                  v584 = v557 - v975;
                }

                else
                {
                  v584 = v975 - v557;
                }

                v581 = -(v204 * __clz(v584 + 1));
              }

              if (v569 > v573 || v569 > v580 || v569 > v581)
              {
                if (v573 > v580 || v573 > v581)
                {
                  v208 = v946;
                  if (v580 <= v581)
                  {
                    v586 = 0;
                    v964 = __PAIR64__(v835, v837);
                    v585 = 1;
                    LODWORD(v965) = v535;
                    v222 = v539;
                    v588 = v541;
                    v587 = &v954 + 2;
                    LODWORD(v986) = v544;
                  }

                  else
                  {
                    v964 = __PAIR64__(v831, v833);
                    v585 = 1;
                    LODWORD(v965) = v552;
                    v588 = v556;
                    v586 = 1;
                    v587 = &v954 + 4;
                    LODWORD(v986) = v840;
                  }
                }

                else
                {
                  v585 = 0;
                  v964 = __PAIR64__(v843, v848);
                  v586 = 1;
                  LODWORD(v965) = v884;
                  v222 = v879;
                  v588 = v874;
                  v587 = &v954 + 4;
                  LODWORD(v986) = v856;
                  v208 = v946;
                }

                v210 = v915;
              }

              else
              {
                v585 = 0;
                v586 = 0;
                v964 = __PAIR64__(v893, v562);
                LODWORD(v965) = v403;
                v587 = &v954 + 2;
                LODWORD(v986) = v404;
                v208 = v946;
                v210 = v915;
                v222 = v907;
                v588 = v902;
              }

              HIDWORD(v986) = v222;
              LODWORD(v987[0]) = v588;
              sub_250100B10((a1 + 890), v586, &v954);
              sub_250100B10((a1 + 890), v585, v587);
              v589 = (&v998 + 8);
              goto LABEL_844;
            }
          }

          if (v229 == -1 || v210 && ((v320 = *(a1 + 387), !*(v320 + v228)) || !*(v320 + v229)))
          {
            if (v228 == -1 || v210 && !*(*(a1 + 387) + v228))
            {
              v375 = v225.i32[0];
              v376 = v225.i32[1];
              v377 = v225.i32[1] * v222 + v225.i32[0] * v221 + v226 * v220;
              if ((v377 & 0x8000000000000000) != 0)
              {
                v375 = -v225.i32[0];
                v376 = -v225.i32[1];
                v226 = -v226;
                LODWORD(v964) = -v225.i32[0];
                HIDWORD(v964) = -v225.i32[1];
                LODWORD(v965) = v226;
              }

              sub_250100B10((a1 + 890), v377 >> 63, &v981);
              if (v375 >= 0)
              {
                v378 = v375;
              }

              else
              {
                v378 = -v375;
              }

              if (v376 >= 0)
              {
                v379 = v376;
              }

              else
              {
                v379 = -v376;
              }

              if (v226 >= 0)
              {
                v380 = v226;
              }

              else
              {
                v380 = -v226;
              }

              if (v378 >= v379 && v378 >= v380)
              {
                v382 = &v964;
                v383 = &v986;
                v376 = v375;
                v205 = v912;
              }

              else
              {
                v382 = (&v964 + 4);
                v383 = (&v986 + 4);
                v205 = v912;
                v221 = v222;
                if (v379 < v380)
                {
                  goto LABEL_417;
                }
              }

              *v383 = v220;
              LODWORD(v987[0]) = v221;
              *v382 = v226;
              v220 = v221;
              v226 = v376;
              LODWORD(v965) = v376;
LABEL_417:
              v210 = v915;
              if (v226 < 0)
              {
                LODWORD(v965) = -v226;
                v220 = -v220;
                LODWORD(v987[0]) = v220;
              }

              v390 = v986;
              v391 = HIDWORD(v986);
              if (v220 < 0)
              {
                if (SHIDWORD(v986) >= 0)
                {
                  v409 = HIDWORD(v986);
                }

                else
                {
                  v409 = -HIDWORD(v986);
                }

                v410 = v409 - v206;
                v392 = v206 - v409;
                if (v986 < 0)
                {
                  v392 = v410;
                  v390 = -v986;
                }

                if ((HIDWORD(v986) & 0x80000000) != 0)
                {
                  v391 = v390 - v206;
                }

                else
                {
                  v391 = v206 - v390;
                }
              }

              else
              {
                v392 = v986;
              }

              v986 = __PAIR64__(v391, v392);
              v589 = &__b;
              goto LABEL_844;
            }

            v357 = *(v205 + 4 * v228 * v204);
            v358 = COERCE_DOUBLE(vsub_s32(v357, v209));
            v359 = vabd_s32(v357, v209);
            v360 = v359.i32[1];
            v361.i32[0] = v206 - v359.i32[1];
            v361.i32[1] = v206 - v359.i32[0];
            v362 = COERCE_DOUBLE(vbsl_s8(vcltz_s32(*&v358), vrev64_s32(vsub_s32(v359, v209)), v361));
            v363 = v361.i32[1] - v360;
            if (v363 >= 0)
            {
              v362 = v358;
            }

            v364 = LODWORD(v362);
            LODWORD(v956) = HIDWORD(v362);
            LODWORD(v958) = LODWORD(v362);
            v365 = v226 * v363 + SLODWORD(v362) * v225.i32[0] + SHIDWORD(v362) * v225.i32[1];
            if (v365 >= 0)
            {
              v366 = v225.i32[0];
            }

            else
            {
              v366 = -v225.i32[0];
            }

            if (v365 >= 0)
            {
              v367 = v225.i32[1];
            }

            else
            {
              v367 = -v225.i32[1];
            }

            if (v365 >= 0)
            {
              v368 = v226;
            }

            else
            {
              v368 = -v226;
            }

            v952 = v366;
            v980 = v367;
            v979 = v221;
            v978 = v222;
            v977 = v221;
            v976 = v222;
            v369 = vabs_s32(v225);
            if (v226 >= 0)
            {
              v370 = v226;
            }

            else
            {
              v370 = -v226;
            }

            if (v369.i32[0] >= v369.i32[1] && v369.i32[0] >= v370)
            {
              v393 = &v952;
              v394 = &v979;
              v374 = v221;
            }

            else
            {
              if (v369.i32[1] < v370)
              {
                v372 = v222;
                v373 = v221;
                v374 = v220;
                goto LABEL_493;
              }

              v393 = &v980;
              v394 = &v978;
              v374 = v222;
              v366 = v367;
            }

            *v394 = v220;
            *v393 = v368;
            v373 = v979;
            v372 = v978;
            v368 = v366;
LABEL_493:
            if (v368 >= 0)
            {
              v417 = v368;
            }

            else
            {
              v417 = -v368;
            }

            if (v368 >= 0)
            {
              v418 = v374;
            }

            else
            {
              v418 = -v374;
            }

            if (v418 < 0)
            {
              if (v372 >= 0)
              {
                v419 = v372;
              }

              else
              {
                v419 = -v372;
              }

              v420 = v419 - v206;
              v421 = v206 - v419;
              if (v373 >= 0)
              {
                v422 = v373;
              }

              else
              {
                v422 = -v373;
              }

              if (v373 >= 0)
              {
                v373 = v421;
              }

              else
              {
                v373 = v420;
              }

              v423 = v422 - v206;
              v424 = v206 - v422;
              if (v372 >= 0)
              {
                v372 = v424;
              }

              else
              {
                v372 = v423;
              }
            }

            v425 = vabs_s32(*&v362);
            if (v363 >= 0)
            {
              v426 = v363;
            }

            else
            {
              v426 = -v363;
            }

            v427 = v425.i32[0];
            if (v425.i32[0] >= v425.i32[1] && v425.i32[0] >= v426)
            {
              v429 = &v958;
              v430 = &v977;
LABEL_522:
              *v430 = v220;
              v220 = v221;
              *v429 = v363;
              v221 = v977;
              v222 = v976;
              v426 = v427;
              v363 = v364;
            }

            else if (v425.i32[1] >= v426)
            {
              v429 = &v956;
              v430 = &v976;
              v427 = v425.u32[1];
              v221 = v222;
              v364 = HIDWORD(v362);
              goto LABEL_522;
            }

            if (v363 >= 0)
            {
              v431 = v220;
            }

            else
            {
              v431 = -v220;
            }

            v944 = v208;
            if (v431 < 0)
            {
              if (v222 >= 0)
              {
                v433 = v222;
              }

              else
              {
                v433 = -v222;
              }

              v434 = v433 - v206;
              v435 = v206 - v433;
              if (v221 >= 0)
              {
                v432 = v435;
              }

              else
              {
                v432 = v434;
              }

              if (v221 >= 0)
              {
                v436 = v221;
              }

              else
              {
                v436 = -v221;
              }

              if (v222 < 0)
              {
                v222 = v436 - v206;
              }

              else
              {
                v222 = v206 - v436;
              }
            }

            else
            {
              v432 = v221;
            }

            v616 = v952;
            v617 = v373 - v952;
            v618 = v980;
            LODWORD(v962) = v373 - v952;
            HIDWORD(v962) = v372 - v980;
            LODWORD(v963) = v418 - v417;
            v619 = v958;
            v620 = v432 - v958;
            v621 = v956;
            LODWORD(v960) = v432 - v958;
            HIDWORD(v960) = v222 - v956;
            LODWORD(v961) = v431 - v426;
            if (*(v941 + 24) == 1)
            {
              v622 = *(v941 + 8);
              v623 = v982;
              v858 = *(&unk_250110628 + (((v982 + 2048) >> 10) & 0x7CLL));
              v886 = v417;
              v909 = v372;
              v904 = v373;
              v895 = v418;
              v881 = v431;
              v876 = v432;
              v850 = sub_25010F50C(&v962, v936, v622, &__b);
              v624 = *(&unk_250110628 + (((67584 - v623) >> 10) & 0x7CLL));
              v206 = v868;
              v625 = sub_25010F50C(&v960, v936, v622, &__b);
              v432 = v876;
              v431 = v881;
              v418 = v895;
              v373 = v904;
              v372 = v909;
              v626 = v850 + v858;
              v627 = v625 + v624;
              v417 = v886;
              goto LABEL_840;
            }

            if (v936 < 1)
            {
              v628 = 0;
            }

            else
            {
              if (v617 < 0)
              {
                v617 = v952 - v373;
              }

              v626 = -(v936 * __clz(v617 + 1));
              if (v620 < 0)
              {
                v620 = v958 - v432;
              }

              v627 = -(v936 * __clz(v620 + 1));
LABEL_840:
              if (v626 > v627)
              {
                v616 = v619;
                v618 = v621;
                v417 = v426;
                v373 = v432;
                v372 = v222;
                v418 = v431;
              }

              v628 = v626 > v627;
            }

            v964 = __PAIR64__(v618, v616);
            LODWORD(v965) = v417;
            v986 = __PAIR64__(v372, v373);
            LODWORD(v987[0]) = v418;
            sub_250100B10((a1 + 890), v628, &v982);
            v589 = &__b;
            v2 = v941;
            v208 = v944;
            v204 = v936;
            v205 = v912;
            v210 = v915;
            goto LABEL_844;
          }

          v321 = (v205 + 4 * v228 * v204);
          v322 = (v205 + 4 * v229 * v204);
          v323 = *v321 - v206;
          v324 = v321[1] - v206;
          if (v323 >= 0)
          {
            v325 = v323;
          }

          else
          {
            v325 = -v323;
          }

          if (v324 >= 0)
          {
            v326 = v324;
          }

          else
          {
            v326 = -v324;
          }

          v327 = v206 - v325;
          v328 = v326 - v206;
          if (v323 >= 0)
          {
            v328 = v206 - v326;
          }

          v329 = v325 - v206;
          if (v324 >= 0)
          {
            v330 = v327;
          }

          else
          {
            v330 = v329;
          }

          v331 = v327 - v326;
          if (v327 - v326 < 0)
          {
            v324 = v330;
          }

          else
          {
            v328 = v323;
          }

          v332 = *v322 - v206;
          v333 = v322[1] - v206;
          if (v332 >= 0)
          {
            v334 = v332;
          }

          else
          {
            v334 = -v332;
          }

          if (v333 >= 0)
          {
            v335 = v333;
          }

          else
          {
            v335 = -v333;
          }

          v336 = v206 - v334;
          v337 = v335 - v206;
          if (v332 >= 0)
          {
            v337 = v206 - v335;
          }

          v338 = v334 - v206;
          if (v333 >= 0)
          {
            v339 = v336;
          }

          else
          {
            v339 = v338;
          }

          v341 = v336 - v335;
          v340 = v336 - v335 < 0;
          if (v336 - v335 < 0)
          {
            v342 = v337;
          }

          else
          {
            v342 = v332;
          }

          if (v340)
          {
            v333 = v339;
          }

          v343 = v226 * v331 + v328 * v225.i32[0] + v324 * v225.i32[1];
          if (v343 >= 0)
          {
            v344 = v225.i32[0];
          }

          else
          {
            v344 = -v225.i32[0];
          }

          if (v343 >= 0)
          {
            v345 = v225.i32[1];
          }

          else
          {
            v345 = -v225.i32[1];
          }

          if (v343 >= 0)
          {
            v346 = v226;
          }

          else
          {
            v346 = -v226;
          }

          LODWORD(v958) = v344;
          LODWORD(v956) = v345;
          v347 = v324 + v333 + 1;
          v348 = (v328 + v342 + 1) / 2;
          v349 = v347;
          v350 = v347 / 2;
          v952 = v348;
          v980 = v349 / 2;
          v979 = v221;
          v978 = v222;
          v977 = v221;
          v976 = v222;
          v351 = vabs_s32(v225);
          if (v226 >= 0)
          {
            v352 = v226;
          }

          else
          {
            v352 = -v226;
          }

          if (v351.i32[0] >= v351.i32[1] && v351.i32[0] >= v352)
          {
            v388 = &v958;
            v389 = &v979;
            v356 = v221;
          }

          else
          {
            if (v351.i32[1] < v352)
            {
              v354 = v222;
              v355 = v221;
              v356 = v220;
              goto LABEL_473;
            }

            v388 = &v956;
            v389 = &v978;
            v356 = v222;
            v344 = v345;
          }

          *v389 = v220;
          *v388 = v346;
          v355 = v979;
          v354 = v978;
          v346 = v344;
LABEL_473:
          if (v346 >= 0)
          {
            v411 = v346;
          }

          else
          {
            v411 = -v346;
          }

          if (v346 < 0)
          {
            v356 = -v356;
          }

          if (v356 < 0)
          {
            if (v354 >= 0)
            {
              v413 = v354;
            }

            else
            {
              v413 = -v354;
            }

            v414 = v413 - v206;
            v415 = v206 - v413;
            if (v355 >= 0)
            {
              v412 = v415;
            }

            else
            {
              v412 = v414;
            }

            if (v355 >= 0)
            {
              v416 = v355;
            }

            else
            {
              v416 = -v355;
            }

            if (v354 < 0)
            {
              v354 = v416 - v206;
            }

            else
            {
              v354 = v206 - v416;
            }
          }

          else
          {
            v412 = v355;
          }

          v590 = (v331 + v341 + 1) / 2;
          if (v348 >= 0)
          {
            v591 = v348;
          }

          else
          {
            v591 = -v348;
          }

          if (v350 >= 0)
          {
            v592 = v350;
          }

          else
          {
            v592 = -v350;
          }

          if (v590 >= 0)
          {
            v593 = v590;
          }

          else
          {
            v593 = -v590;
          }

          if (v591 >= v592 && v591 >= v593)
          {
            v595 = &v952;
            v596 = &v977;
            v593 = v591;
          }

          else
          {
            if (v592 < v593)
            {
              goto LABEL_799;
            }

            v595 = &v980;
            v596 = &v976;
            v593 = v592;
            v221 = v222;
            v348 = v350;
          }

          *v596 = v220;
          v220 = v221;
          *v595 = v590;
          v221 = v977;
          v222 = v976;
          v590 = v348;
LABEL_799:
          if (v590 >= 0)
          {
            v597 = v220;
          }

          else
          {
            v597 = -v220;
          }

          v947 = v208;
          if (v597 < 0)
          {
            if (v222 >= 0)
            {
              v599 = v222;
            }

            else
            {
              v599 = -v222;
            }

            v600 = v599 - v206;
            v601 = v206 - v599;
            if (v221 >= 0)
            {
              v598 = v601;
            }

            else
            {
              v598 = v600;
            }

            if (v221 >= 0)
            {
              v602 = v221;
            }

            else
            {
              v602 = -v221;
            }

            if (v222 < 0)
            {
              v222 = v602 - v206;
            }

            else
            {
              v222 = v206 - v602;
            }
          }

          else
          {
            v598 = v221;
          }

          v603 = v958;
          v604 = v412 - v958;
          v605 = v956;
          LODWORD(v962) = v412 - v958;
          HIDWORD(v962) = v354 - v956;
          LODWORD(v963) = v356 - v411;
          v606 = v952;
          v607 = v598 - v952;
          v608 = v980;
          LODWORD(v960) = v598 - v952;
          HIDWORD(v960) = v222 - v980;
          LODWORD(v961) = v597 - v593;
          if (*(v941 + 24) == 1)
          {
            v609 = *(v941 + 8);
            v610 = v982;
            v857 = *(&unk_250110628 + (((v982 + 2048) >> 10) & 0x7CLL));
            v885 = v412;
            v880 = v593;
            v908 = v354;
            v903 = v356;
            v894 = v411;
            v875 = v598;
            v849 = sub_25010F50C(&v962, v936, v609, &__b);
            v611 = *(&unk_250110628 + (((67584 - v610) >> 10) & 0x7CLL));
            v206 = v868;
            v210 = v915;
            v612 = sub_25010F50C(&v960, v936, v609, &__b);
            v598 = v875;
            v593 = v880;
            v411 = v894;
            v356 = v903;
            v354 = v908;
            v613 = v849 + v857;
            v614 = v612 + v611;
            v412 = v885;
LABEL_824:
            if (v613 > v614)
            {
              v603 = v606;
              v605 = v608;
              v411 = v593;
              v412 = v598;
              v354 = v222;
              v356 = v597;
            }

            v615 = v613 > v614;
            goto LABEL_827;
          }

          if (v936 >= 1)
          {
            if (v604 < 0)
            {
              v604 = v958 - v412;
            }

            v613 = -(v936 * __clz(v604 + 1));
            if (v607 < 0)
            {
              v607 = v952 - v598;
            }

            v614 = -(v936 * __clz(v607 + 1));
            goto LABEL_824;
          }

          v615 = 0;
LABEL_827:
          v964 = __PAIR64__(v605, v603);
          LODWORD(v965) = v411;
          v986 = __PAIR64__(v354, v412);
          LODWORD(v987[0]) = v356;
          sub_250100B10((a1 + 890), v615, &v982);
          v589 = &__b;
          v2 = v941;
          v208 = v947;
          v204 = v936;
          v205 = v912;
LABEL_844:
          sub_250100C84(a1, &v986, &v964, v204, a1 + 375, *(v2 + 8), v589);
LABEL_845:
          v208 += 4;
        }

        while (v929 != v208);
      }

      v786 = 360;
      do
      {
        v787 = &v992[v786 / 8 - 2];
        v788 = *(&__p + v786);
        if (v788)
        {
          *(v787 - 2) = v788;
          operator delete(v788);
        }

        v789 = *(v787 - 6);
        if (v789)
        {
          v987[v786 / 8] = v789;
          operator delete(v789);
        }

        v790 = &v992[v786 / 8 - 2];
        v791 = *(&v978 + v786);
        if (v791)
        {
          *(v790 - 8) = v791;
          operator delete(v791);
        }

        v792 = *(v790 - 12);
        if (v792)
        {
          *(&v974 + v786) = v792;
          operator delete(v792);
        }

        v793 = *(v787 - 15);
        if (v793)
        {
          *(&v968 + v786) = v793;
          operator delete(v793);
        }

        v786 -= 120;
      }

      while (v786);
LABEL_1108:
      if (__p)
      {
        v989 = __p;
        operator delete(__p);
      }

      return 0;
    }

    v704 = *a1;
    v705 = a1[780];
    v939 = *(a1 + 384);
    v706 = ~(-1 << (*(v2 + 4) - 1));
    v989 = 0;
    __p = 0;
    v990 = 0;
    sub_2500F8F40(a1 + 23, a1 + 29, a1 + 26, a1 + 26, -1431655765 * ((*(a1 + 24) - *(a1 + 23)) >> 2), &__p, v706);
    *&v998 = 0;
    v996 = 0u;
    *v997 = 0u;
    *v994 = 0u;
    *v995 = 0u;
    *v992 = 0u;
    v993 = 0u;
    __b = 0u;
    sub_2500F3ECC(&__b, v705);
    LOWORD(v962) = 0x8000;
    if (v704 < 1)
    {
LABEL_1028:
      if (v997[0])
      {
        v997[1] = v997[0];
        operator delete(v997[0]);
      }

      if (v995[1])
      {
        *&v996 = v995[1];
        operator delete(v995[1]);
      }

      if (v994[0])
      {
        v994[1] = v994[0];
        operator delete(v994[0]);
      }

      if (v992[1])
      {
        *&v993 = v992[1];
        operator delete(v992[1]);
      }

      if (__b)
      {
        *(&__b + 1) = __b;
        operator delete(__b);
      }

      goto LABEL_1108;
    }

    v707 = 0;
    v950 = *(v2 + 16);
    v932 = 4 * v704;
    while (1)
    {
      v708 = *(*(a1 + 11) + v707);
      if (!v950 || *(*(a1 + 387) + v708))
      {
        break;
      }

LABEL_1027:
      v707 += 4;
      if (v932 == v707)
      {
        goto LABEL_1028;
      }
    }

    v709 = (v939 + 4 * (v708 * v705));
    v710 = *v709 - v706;
    v711 = v709[1] - v706;
    if (v710 >= 0)
    {
      v712 = v710;
    }

    else
    {
      v712 = -v710;
    }

    if (v711 >= 0)
    {
      v713 = v711;
    }

    else
    {
      v713 = -v711;
    }

    v714 = v706 - v712;
    v715 = v713 - v706;
    if (v710 >= 0)
    {
      v715 = v706 - v713;
    }

    v716 = v712 - v706;
    if (v711 >= 0)
    {
      v716 = v714;
    }

    v717 = v714 - v713;
    LODWORD(v987[0]) = v714 - v713;
    if (v714 - v713 < 0)
    {
      v718 = v715;
    }

    else
    {
      v718 = v710;
    }

    if (v714 - v713 < 0)
    {
      v719 = v716;
    }

    else
    {
      v719 = v711;
    }

    v986 = __PAIR64__(v719, v718);
    v720 = 3 * v708;
    v721 = (__p + 12 * v708);
    v722 = *v721;
    v723 = *v721;
    LODWORD(v964) = *v721;
    v724 = v721[1];
    HIDWORD(v964) = v724;
    v725 = v721[2];
    LODWORD(v965) = v725;
    v726 = *(*(a1 + 17) + 4 * v720);
    if (v726 == -1 || v950 && !*(*(a1 + 387) + v726))
    {
      v736 = v723 * v718 + v724 * v719 + v725 * v717;
      if ((v736 & 0x8000000000000000) != 0)
      {
        v722 = -v722;
        v724 = -v724;
        v725 = -v725;
        v964 = __PAIR64__(v724, v722);
        LODWORD(v965) = v725;
      }

      sub_250100B10((a1 + 890), v736 >> 63, &v962);
    }

    else
    {
      v727 = (v939 + 4 * (v726 * v705));
      v728 = *v727 - v706;
      v729 = v727[1] - v706;
      if (v728 >= 0)
      {
        v730 = v728;
      }

      else
      {
        v730 = -v728;
      }

      if (v729 >= 0)
      {
        v731 = v729;
      }

      else
      {
        v731 = -v729;
      }

      v732 = v706 - v730;
      v733 = v731 - v706;
      if (v728 >= 0)
      {
        v733 = v706 - v731;
      }

      v734 = v730 - v706;
      if (v729 >= 0)
      {
        v734 = v732;
      }

      v735 = v732 - v731;
      if (v735 < 0)
      {
        v728 = v733;
        v729 = v734;
      }

      if (v725 * v735 + v723 * v728 + v724 * v729 < 0)
      {
        v722 = -v722;
        v724 = -v724;
        v725 = -v725;
        v964 = __PAIR64__(v724, v722);
        LODWORD(v965) = v725;
      }
    }

    if (v722 >= 0)
    {
      v737 = v722;
    }

    else
    {
      v737 = -v722;
    }

    if (v724 >= 0)
    {
      v738 = v724;
    }

    else
    {
      v738 = -v724;
    }

    if (v725 >= 0)
    {
      v739 = v725;
    }

    else
    {
      v739 = -v725;
    }

    if (v737 >= v738 && v737 >= v739)
    {
      v741 = &v964;
      v742 = &v986;
      v719 = v718;
      v724 = v722;
    }

    else
    {
      v741 = (&v964 + 4);
      v742 = (&v986 + 4);
      if (v738 < v739)
      {
        goto LABEL_1014;
      }
    }

    *v742 = v717;
    LODWORD(v987[0]) = v719;
    *v741 = v725;
    v717 = v719;
    v725 = v724;
    LODWORD(v965) = v724;
LABEL_1014:
    if (v725 < 0)
    {
      LODWORD(v965) = -v725;
      v717 = -v717;
      LODWORD(v987[0]) = v717;
    }

    v743 = v986;
    v744 = HIDWORD(v986);
    if (v717 < 0)
    {
      if (SHIDWORD(v986) >= 0)
      {
        v746 = HIDWORD(v986);
      }

      else
      {
        v746 = -HIDWORD(v986);
      }

      v747 = v746 - v706;
      v745 = v706 - v746;
      if (v986 < 0)
      {
        v745 = v747;
        v743 = -v986;
      }

      if ((HIDWORD(v986) & 0x80000000) != 0)
      {
        v744 = v743 - v706;
      }

      else
      {
        v744 = v706 - v743;
      }
    }

    else
    {
      v745 = v986;
    }

    v986 = __PAIR64__(v744, v745);
    sub_250100C84(a1, &v986, &v964, v705, a1 + 375, *(v941 + 8), &__b);
    goto LABEL_1027;
  }

  if (v17 != 3)
  {
    v19 = 0;
    v20 = *a1;
    v21 = a1[780];
    v22 = a1[780];
    v918 = *(a1 + 384);
    v1013 = 0;
    v1011 = 0u;
    v1012 = 0u;
    v1009 = 0u;
    v1010 = 0u;
    v1007 = 0u;
    v1008 = 0u;
    v1005 = 0u;
    v1006 = 0u;
    v1003 = 0u;
    v1004 = 0u;
    v1001 = 0u;
    v1002 = 0u;
    v999 = 0u;
    v1000 = 0u;
    *v997 = 0u;
    v998 = 0u;
    *v995 = 0u;
    v996 = 0u;
    v993 = 0u;
    *v994 = 0u;
    v942 = a1 + 750;
    __b = 0u;
    *v992 = 0u;
    do
    {
      sub_2500F3ECC(&v992[v19 - 2], v21);
      v19 += 15;
    }

    while (v19 != 45);
    LOWORD(v979) = 0x8000;
    memset_pattern16(&v983, &unk_250110610, 6uLL);
    memset_pattern16(&v952, &unk_250110610, 6uLL);
    LODWORD(v986) = 0;
    sub_2500FC9FC(&__p, v21, &v986);
    LODWORD(v964) = 0;
    sub_2500FC9FC(&v986, v21, &v964);
    LODWORD(v962) = 0;
    sub_2500FC9FC(&v964, v21, &v962);
    LODWORD(v960) = 0;
    sub_2500FC9FC(&v962, v21, &v960);
    LODWORD(v958) = 0;
    sub_2500FC9FC(&v960, v21, &v958);
    LODWORD(v956) = 0;
    sub_2500FC9FC(&v958, v21, &v956);
    LODWORD(v954) = 0;
    sub_2500FC9FC(&v956, v21, &v954);
    v980 = 0;
    sub_2500FC9FC(&v954, v21, &v980);
    if (v20 >= 1)
    {
      v23 = 0;
      v928 = *(v2 + 16);
      v877 = v20;
      v882 = 4 * v21;
      v913 = v21;
      v934 = v21;
      while (1)
      {
        v923 = v23;
        v24 = *(*(a1 + 11) + 4 * v23);
        if (v928 && !*(*(a1 + 387) + v24))
        {
          goto LABEL_139;
        }

        v25 = (v918 + 4 * (v24 * v22));
        v26 = (*(a1 + 17) + 12 * v24);
        v27 = *v26;
        v28 = v26[1];
        v29 = v26[2];
        v30 = __p;
        v31 = (*(a1 + 20) + 12 * v24);
        v32 = v31[2];
        if (v32 != -1)
        {
          v34 = *v31;
          v33 = v31[1];
          if (!v928)
          {
            break;
          }

          v35 = *(a1 + 387);
          if (*(v35 + v27))
          {
            if (*(v35 + v28) && *(v35 + v29) && *(v35 + v34) && *(v35 + v33) && *(v35 + v32))
            {
              break;
            }
          }
        }

        v50 = v913;
        if (v29 != -1)
        {
          if (!v928 || (v51 = *(a1 + 387), *(v51 + v27)) && *(v51 + v28) && *(v51 + v29))
          {
            v910 = __p;
            v52 = (v918 + 4 * v27 * v934);
            v53 = (v918 + 4 * v28 * v913);
            v54 = (v918 + 4 * v29 * v934);
            v55 = v24;
            sub_2500EBFF8(v52, v53, v54, v934, (*(a1 + 23) + 12 * v27), (*(a1 + 23) + 12 * v28), (*(a1 + 23) + 12 * v29), (*(a1 + 23) + 12 * v24), v986);
            v56 = v941;
            if (v934 == 2)
            {
              sub_2500EC6E4(v52, v53, v54, (*(a1 + 23) + 12 * v27), (*(a1 + 23) + 12 * v28), (*(a1 + 23) + 12 * v55), v962);
              v57 = v962;
              goto LABEL_71;
            }

            if (v913 < 1)
            {
              if (*(v941 + 24) == 1)
              {
                v71 = v960;
                v72 = v958;
                v73 = v956;
                v74 = v954;
                goto LABEL_74;
              }

              v86 = 0;
              v87 = 0;
              v88 = 0;
              v89 = 0;
              v22 = v934;
            }

            else
            {
              v66 = 0;
              v57 = v962;
              do
              {
                v57[v66 / 4] = v53[v66 / 4] + v52[v66 / 4] - v54[v66 / 4];
                v66 += 4;
              }

              while (v882 != v66);
LABEL_71:
              v67 = 0;
              v68 = __p;
              v69 = v986;
              v70 = v964;
              v71 = v960;
              v72 = v958;
              v73 = v956;
              v74 = v954;
              do
              {
                v75 = v53[v67] + v52[v67] - v54[v67];
                v68[v67] = v75;
                v70[v67] = (v69[v67] + v75) / 2;
                v71[v67] = v25[v67] - v68[v67];
                v72[v67] = v25[v67] - v69[v67];
                v73[v67] = v25[v67] - v70[v67];
                v74[v67] = v25[v67] - v57[v67];
                ++v67;
              }

              while (v934 != v67);
              if (*(v941 + 24))
              {
LABEL_74:
                v851 = *(v941 + 8);
                v76 = v983;
                v77 = *(&unk_250110628 + (((v983 + 2048) >> 10) & 0x7CLL));
                v897 = v77;
                v870 = v984;
                v78 = *(&unk_250110628 + (((v984 + 2048) >> 10) & 0x7CLL));
                v888 = v78 + v77 + sub_25010F50C(v71, v934, v851, &v1006);
                v79 = *(&unk_250110628 + (((67584 - v76) >> 10) & 0x7CLL));
                v80 = v985;
                v81 = *(&unk_250110628 + (((v985 + 2048) >> 10) & 0x7CLL));
                v50 = v913;
                v860 = v81 + v79 + sub_25010F50C(v72, v913, v851, &v1006);
                v871 = *(&unk_250110628 + (((67584 - v870) >> 10) & 0x7CLL));
                v82 = v73;
                v22 = v934;
                v844 = sub_25010F50C(v82, v934, v851, &v1006);
                v83 = 67584 - v80;
                v56 = v941;
                v84 = *(&unk_250110628 + ((v83 >> 10) & 0x7CLL));
                v85 = sub_25010F50C(v74, v913, v851, &v1006);
                v86 = v888;
                v87 = v860;
                v88 = v871 + v897 + v844;
                v89 = v84 + v79 + v85;
              }

              else
              {
                if (v934 < 1)
                {
                  v86 = 0;
                  v87 = 0;
                  v88 = 0;
                  v89 = 0;
                }

                else
                {
                  v90 = *v71;
                  if (*v71 < 0)
                  {
                    v90 = -v90;
                  }

                  v86 = -(v913 * __clz(v90 + 1));
                  v91 = *v72;
                  if (*v72 < 0)
                  {
                    v91 = -v91;
                  }

                  v87 = -(v934 * __clz(v91 + 1));
                  v92 = *v73;
                  if (*v73 < 0)
                  {
                    v92 = -v92;
                  }

                  v88 = -(v913 * __clz(v92 + 1));
                  v93 = *v74;
                  if (*v74 < 0)
                  {
                    v93 = -v93;
                  }

                  v89 = -(v934 * __clz(v93 + 1));
                }

                v22 = v934;
              }
            }

            if (v86 <= v87 && v86 <= v88 && v86 <= v89)
            {
              v122 = 0;
              v123 = 0;
              goto LABEL_129;
            }

            if (v87 <= v88 && v87 <= v89)
            {
              v122 = 0;
              v123 = 1;
              v910 = v986;
              goto LABEL_135;
            }

            if (v88 <= v89)
            {
              v123 = 0;
              v122 = 1;
              v910 = v964;
LABEL_129:
              v124 = &v984;
            }

            else
            {
              v122 = 1;
              v910 = v962;
              v123 = 1;
LABEL_135:
              v124 = &v985;
            }

            v20 = v877;
            v125 = a1 + 890;
            v126 = &v983;
LABEL_137:
            sub_250100B10(v125, v123, v126);
            sub_250100B10((a1 + 890), v122, v124);
            v60 = &v1006;
            v30 = v910;
            goto LABEL_138;
          }
        }

        if (v28 == -1 || v928 && ((v58 = *(a1 + 387), !*(v58 + v27)) || !*(v58 + v28)))
        {
          if (v27 == -1 || v928 && !*(*(a1 + 387) + v27))
          {
            v22 = v934;
            if (v913 >= 1)
            {
              v61 = __p;
              bzero(__p, v882);
              v62 = 0;
              do
              {
                v63 = *(*v942 + 4 * v62);
                if (v63 >= 1)
                {
                  v64 = 0;
                  v65 = v25[v62] - v61[v62];
                  do
                  {
                    LOWORD(v980) = 0x8000;
                    sub_250100B10((a1 + 890), (v65 >> v64++) & 1, &v980);
                  }

                  while (v63 != v64);
                }

                ++v62;
              }

              while (v62 != v934);
            }

            goto LABEL_139;
          }

          v22 = v934;
          if (v934 < 1)
          {
            v60 = &__b;
            v56 = v941;
          }

          else
          {
            v59 = 0;
            v56 = v941;
            do
            {
              *&v30[v59] = *(v918 + 4 * v27 * v934 + v59);
              v59 += 4;
            }

            while (v882 != v59);
            v60 = &__b;
          }

          goto LABEL_138;
        }

        if (v913 == 2)
        {
          v980 = 0;
          sub_2500EC288((v918 + 8 * v27), (v918 + 8 * v28), v25, (*(a1 + 23) + 12 * v27), (*(a1 + 23) + 12 * v28), (*(a1 + 23) + 12 * v24), __p, &v980);
          v56 = v941;
          sub_250100B10((a1 + 890), v980 != 0, &v979);
        }

        else
        {
          v56 = v941;
          if (v913 >= 1)
          {
            v98 = 0;
            v99 = v28;
            v22 = v934;
            v100 = v918 + 4 * v99 * v913;
            do
            {
              *&v30[v98] = (*(v100 + v98) + *(v918 + 4 * v27 * v934 + v98)) / 2;
              v98 += 4;
            }

            while (v882 != v98);
            v60 = (&v998 + 8);
            goto LABEL_138;
          }
        }

        v60 = (&v998 + 8);
        v22 = v934;
LABEL_138:
        sub_250100C84(a1, v25, v30, v50, v942, *(v56 + 8), v60);
LABEL_139:
        v23 = v923 + 1;
        if (v923 + 1 == v20)
        {
          goto LABEL_1139;
        }
      }

      v887 = v34;
      v896 = v33;
      v36 = (v918 + 4 * v28 * v934);
      v37 = (v918 + 4 * v29 * v913);
      v38 = *(a1 + 23);
      v864 = v28;
      v39 = (v38 + 12 * v28);
      v910 = __p;
      v869 = (v918 + 4 * v27 * v913);
      v40 = v24;
      sub_2500EBFF8(v869, v36, v37, v934, (v38 + 12 * v27), v39, (v38 + 12 * v29), (v38 + 12 * v24), __p);
      v41 = (v918 + 4 * v887 * v913);
      v42 = (v918 + 4 * v896 * v934);
      v43 = (v918 + 4 * v32 * v913);
      sub_2500EBFF8(v41, v42, v43, v913, (*(a1 + 23) + 12 * v887), (*(a1 + 23) + 12 * v896), (*(a1 + 23) + 12 * v32), (*(a1 + 23) + 12 * v40), v986);
      if (v934 < 1)
      {
        v56 = v941;
        if (*(v941 + 24) != 1)
        {
          v108 = 0;
          v115 = 0;
          v116 = 0;
          v117 = 0;
          v50 = v913;
          v22 = v934;
          goto LABEL_109;
        }

        v94 = v960;
        v95 = v958;
        v96 = v956;
        v97 = v954;
      }

      else
      {
        v44 = 0;
        v45 = __p;
        v46 = v986;
        v47 = v964;
        do
        {
          v47[v44 / 4] = (v46[v44 / 4] + v45[v44 / 4]) / 2;
          v44 += 4;
        }

        while (v882 != v44);
        v48 = v918 + 4 * v27 * v913;
        if (v934 == 2)
        {
          sub_2500EC6E4(v869, v36, v37, (*(a1 + 23) + 12 * v27), (*(a1 + 23) + 12 * v864), (*(a1 + 23) + 12 * v40), v45);
          sub_2500EC6E4(v41, v42, v43, (*(a1 + 23) + 12 * v887), (*(a1 + 23) + 12 * v896), (*(a1 + 23) + 12 * v40), v986);
          v45 = __p;
          v46 = v986;
          v49 = v962;
          *v962 = (*v986 + *__p) / 2;
          v49[1] = (v46[1] + v45[1]) / 2;
          v47 = v964;
          v48 = v918 + 4 * v27 * v913;
        }

        else
        {
          v101 = 0;
          v49 = v962;
          do
          {
            v102 = 1431655766 * ((v41[v101 / 4] + v869[v101 / 4]) / 2 - (v37[v101 / 4] + v43[v101 / 4]) + 2 * (v42[v101 / 4] + v36[v101 / 4]));
            v49[v101 / 4] = HIDWORD(v102) + (v102 >> 63);
            v101 += 4;
          }

          while (v882 != v101);
        }

        v103 = 0;
        v94 = v960;
        v95 = v958;
        v96 = v956;
        v97 = v954;
        do
        {
          v45[v103] = v36[v103] + *(v48 + 4 * v103) - v37[v103];
          v46[v103] = v42[v103] + v41[v103] - v43[v103];
          v94[v103] = v25[v103] - v45[v103];
          v95[v103] = v25[v103] - v46[v103];
          v96[v103] = v25[v103] - v47[v103];
          v97[v103] = v25[v103] - v49[v103];
          ++v103;
        }

        while (v934 != v103);
        v56 = v941;
        if ((*(v941 + 24) & 1) == 0)
        {
          v118 = *v94;
          if (*v94 < 0)
          {
            v118 = -v118;
          }

          v108 = -(v913 * __clz(v118 + 1));
          v119 = *v95;
          v50 = v913;
          if (v119 < 0)
          {
            v119 = -v119;
          }

          v115 = -(v934 * __clz(v119 + 1));
          v120 = *v96;
          if (*v96 < 0)
          {
            v120 = -v120;
          }

          v116 = -(v913 * __clz(v120 + 1));
          v121 = *v97;
          v22 = v934;
          if (v121 < 0)
          {
            v121 = -v121;
          }

          v117 = -(v934 * __clz(v121 + 1));
LABEL_109:
          if (v108 <= v115 && v108 <= v116 && v108 <= v117)
          {
            v122 = 0;
            v123 = 0;
LABEL_113:
            v124 = &v952 + 1;
LABEL_120:
            v20 = v877;
            v125 = a1 + 890;
            v126 = &v952;
            goto LABEL_137;
          }

          if (v115 > v116 || v115 > v117)
          {
            if (v116 <= v117)
            {
              v123 = 0;
              v122 = 1;
              v910 = v964;
              goto LABEL_113;
            }

            v122 = 1;
            v910 = v962;
            v123 = 1;
          }

          else
          {
            v122 = 0;
            v123 = 1;
            v910 = v986;
          }

          v124 = &v953;
          goto LABEL_120;
        }
      }

      v104 = *(v56 + 8);
      v852 = v104;
      v105 = v952;
      v106 = *(&unk_250110628 + (((v952 + 2048) >> 10) & 0x7CLL));
      v898 = v106;
      v889 = HIWORD(v952);
      v107 = *(&unk_250110628 + (((HIWORD(v952) + 2048) >> 10) & 0x7CLL));
      v108 = v107 + v106 + sub_25010F50C(v94, v934, v104, &v1006);
      v109 = *(&unk_250110628 + (((67584 - v105) >> 10) & 0x7CLL));
      v865 = v953;
      v110 = *(&unk_250110628 + (((v953 + 2048) >> 10) & 0x7CLL));
      v111 = v95;
      v50 = v913;
      v861 = v110 + v109 + sub_25010F50C(v111, v913, v852, &v1006);
      v890 = *(&unk_250110628 + (((67584 - v889) >> 10) & 0x7CLL));
      v845 = sub_25010F50C(v96, v934, v852, &v1006);
      v56 = v941;
      v112 = *(&unk_250110628 + (((67584 - v865) >> 10) & 0x7CLL));
      v113 = v97;
      v22 = v934;
      v114 = sub_25010F50C(v113, v913, v852, &v1006);
      v115 = v861;
      v116 = v890 + v898 + v845;
      v117 = v112 + v109 + v114;
      goto LABEL_109;
    }

LABEL_1139:
    if (v954)
    {
      v955 = v954;
      operator delete(v954);
    }

    if (v956)
    {
      v957 = v956;
      operator delete(v956);
    }

    if (v958)
    {
      v959 = v958;
      operator delete(v958);
    }

    if (v960)
    {
      v961 = v960;
      operator delete(v960);
    }

    if (v962)
    {
      v963 = v962;
      operator delete(v962);
    }

    if (v964)
    {
      v965 = v964;
      operator delete(v964);
    }

    if (v986)
    {
      v987[0] = v986;
      operator delete(v986);
    }

    if (__p)
    {
      v989 = __p;
      operator delete(__p);
    }

    v802 = 360;
    do
    {
      v803 = &v992[v802 / 8 - 2];
      v804 = *(&__p + v802);
      if (v804)
      {
        *(v803 - 2) = v804;
        operator delete(v804);
      }

      v805 = *(v803 - 6);
      if (v805)
      {
        v987[v802 / 8] = v805;
        operator delete(v805);
      }

      v806 = &v992[v802 / 8 - 2];
      v807 = *(&v978 + v802);
      if (v807)
      {
        *(v806 - 8) = v807;
        operator delete(v807);
      }

      v808 = *(v806 - 12);
      if (v808)
      {
        *(&v974 + v802) = v808;
        operator delete(v808);
      }

      v809 = *(v803 - 15);
      if (v809)
      {
        *(&v968 + v802) = v809;
        operator delete(v809);
      }

      v802 -= 120;
    }

    while (v802);
    return 0;
  }

  v659 = 0;
  v921 = *a1;
  v660 = a1[780];
  v661 = a1[780];
  v926 = *(a1 + 384);
  v1013 = 0;
  v1011 = 0u;
  v1012 = 0u;
  v1009 = 0u;
  v1010 = 0u;
  v1007 = 0u;
  v1008 = 0u;
  v1005 = 0u;
  v1006 = 0u;
  v1003 = 0u;
  v1004 = 0u;
  v1001 = 0u;
  v1002 = 0u;
  v999 = 0u;
  v1000 = 0u;
  *v997 = 0u;
  v998 = 0u;
  *v995 = 0u;
  v996 = 0u;
  v993 = 0u;
  *v994 = 0u;
  v949 = a1 + 750;
  __b = 0u;
  *v992 = 0u;
  do
  {
    sub_2500F3ECC(&v992[v659 - 2], v660);
    v659 += 15;
  }

  while (v659 != 45);
  LOWORD(v962) = 0x8000;
  LODWORD(v986) = 0;
  sub_2500FC9FC(&__p, v660, &v986);
  LODWORD(v964) = 0;
  sub_2500FC9FC(&v986, v660, &v964);
  if (v921 >= 1)
  {
    v662 = 0;
    v931 = *(v2 + 16);
    do
    {
      v663 = *(*(a1 + 11) + 4 * v662);
      if (v931 && !*(*(a1 + 387) + v663))
      {
        goto LABEL_939;
      }

      v938 = (v926 + 4 * v663 * v660);
      v664 = (*(a1 + 17) + 12 * v663);
      v665 = *v664;
      v666 = v664[1];
      v667 = v664[2];
      v668 = __p;
      v669 = (*(a1 + 20) + 12 * v663);
      v670 = v669[2];
      if (v670 != -1)
      {
        v671 = *v669;
        v672 = v669[1];
        if (!v931 || (v673 = *(a1 + 387), *(v673 + v665)) && *(v673 + v666) && *(v673 + v667) && *(v673 + v671) && *(v673 + v672) && *(v673 + v670))
        {
          sub_2500EBFF8((v926 + 4 * v665 * v660), (v926 + 4 * v666 * v660), (v926 + 4 * v667 * v660), v660, (*(a1 + 23) + 12 * v665), (*(a1 + 23) + 12 * v666), (*(a1 + 23) + 12 * v667), (*(a1 + 23) + 12 * v663), __p);
          sub_2500EBFF8((v926 + 4 * v671 * v660), (v926 + 4 * v672 * v661), (v926 + 4 * v670 * v660), v660, (*(a1 + 23) + 12 * v671), (*(a1 + 23) + 12 * v672), (*(a1 + 23) + 12 * v670), (*(a1 + 23) + 12 * v663), v986);
          v674 = &v1006;
          if (v661 >= 1)
          {
            v675 = __p;
            v676 = v986;
            v677 = v660;
            do
            {
              v678 = *v676++;
              *v675 = (v678 + *v675) / 2;
              ++v675;
              --v677;
            }

            while (v677);
            v674 = &v1006;
          }

          goto LABEL_938;
        }
      }

      if (v667 != -1 && (!v931 || (v679 = *(a1 + 387), *(v679 + v665)) && *(v679 + v666) && *(v679 + v667)))
      {
        sub_2500EBFF8((v926 + 4 * v665 * v660), (v926 + 4 * v666 * v660), (v926 + 4 * v667 * v660), v660, (*(a1 + 23) + 12 * v665), (*(a1 + 23) + 12 * v666), (*(a1 + 23) + 12 * v667), (*(a1 + 23) + 12 * v663), __p);
        v674 = &v1006;
      }

      else
      {
        if (v666 == -1 || v931 && ((v680 = *(a1 + 387), !*(v680 + v665)) || !*(v680 + v666)))
        {
          if (v665 == -1 || v931 && !*(*(a1 + 387) + v665))
          {
            if (v660 >= 1)
            {
              bzero(__p, 4 * v660);
              v685 = 0;
              do
              {
                v686 = *(*v949 + 4 * v685);
                if (v686 >= 1)
                {
                  v687 = 0;
                  v688 = v938[v685] - v668[v685];
                  do
                  {
                    LOWORD(v964) = 0x8000;
                    sub_250100B10((a1 + 890), (v688 >> v687++) & 1, &v964);
                  }

                  while (v686 != v687);
                }

                ++v685;
              }

              while (v685 != v660);
            }

            goto LABEL_939;
          }

          if (v661 >= 1)
          {
            v681 = (v926 + 4 * v665 * v660);
            v682 = __p;
            v683 = v660;
            do
            {
              v684 = *v681++;
              *v682++ = v684;
              --v683;
            }

            while (v683);
          }

          v674 = &__b;
          goto LABEL_938;
        }

        if (v661 == 2)
        {
          LODWORD(v964) = 0;
          sub_2500EC288((v926 + 8 * v665), (v926 + 8 * v666), v938, (*(a1 + 23) + 12 * v665), (*(a1 + 23) + 12 * v666), (*(a1 + 23) + 12 * v663), __p, &v964);
          sub_250100B10((a1 + 890), v964 != 0, &v962);
LABEL_937:
          v674 = (&v998 + 8);
          goto LABEL_938;
        }

        v674 = (&v998 + 8);
        if (v660 >= 1)
        {
          v689 = (v926 + 4 * v665 * v660);
          v690 = (v926 + 4 * v666 * v660);
          v691 = __p;
          v692 = v660;
          do
          {
            v694 = *v689++;
            v693 = v694;
            v695 = *v690++;
            *v691++ = (v695 + v693) / 2;
            --v692;
          }

          while (v692);
          goto LABEL_937;
        }
      }

LABEL_938:
      sub_250100C84(a1, v938, v668, v660, v949, *(v941 + 8), v674);
LABEL_939:
      ++v662;
    }

    while (v662 != v921);
  }

  if (v986)
  {
    v987[0] = v986;
    operator delete(v986);
  }

  if (__p)
  {
    v989 = __p;
    operator delete(__p);
  }

  v696 = 360;
  do
  {
    v697 = &v992[v696 / 8 - 2];
    v698 = *(&__p + v696);
    if (v698)
    {
      *(v697 - 2) = v698;
      operator delete(v698);
    }

    v699 = *(v697 - 6);
    if (v699)
    {
      v987[v696 / 8] = v699;
      operator delete(v699);
    }

    v700 = &v992[v696 / 8 - 2];
    v701 = *(&v978 + v696);
    if (v701)
    {
      *(v700 - 8) = v701;
      operator delete(v701);
    }

    v702 = *(v700 - 12);
    if (v702)
    {
      *(&v974 + v696) = v702;
      operator delete(v702);
    }

    v703 = *(v697 - 15);
    if (v703)
    {
      *(&v968 + v696) = v703;
      operator delete(v703);
    }

    v696 -= 120;
  }

  while (v696);
  return 0;
}