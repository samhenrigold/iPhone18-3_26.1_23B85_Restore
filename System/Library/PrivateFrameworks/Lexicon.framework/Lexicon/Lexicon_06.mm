void sub_1B5D3A8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __int16 a32, uint64_t a33, uint64_t a34, __int16 a35, uint64_t a36, int a37, __int16 a38, char a39, void *a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59)
{
  v62 = *(v59 + 72);
  if (v62 && a59 == 1)
  {
    free(v62);
  }

  if (a35 >= 0xFu && a36)
  {
    MEMORY[0x1B8C880C0](a36, v60, a3, a4, a5, a6, a7, a8);
  }

  if (a32 >= 0xFu && a33)
  {
    MEMORY[0x1B8C880C0](a33, v60, a3, a4, a5, a6, a7, a8);
  }

  if (a40)
  {
    v63 = a39 == 1;
  }

  else
  {
    v63 = 0;
  }

  if (v63)
  {
    free(a40);
  }

  if (a46)
  {
    if (a45 == 1)
    {
      free(a46);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1B5D3AF54(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v31 = 0x100000;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  if (*(a2 + 1928))
  {
    sub_1B5CDF770(&v31, (a2 + 1928));
    goto LABEL_63;
  }

  LODWORD(v44) = 0x100000;
  WORD2(v44) = 0;
  BYTE6(v44) = 1;
  v45 = 0;
  sub_1B5CDCAAC(&v44, "/", 0, 1u);
  if (*(a2 + 1904))
  {
    v6 = *(a2 + 1904);
  }

  else
  {
    v6 = (a2 + 1912);
  }

  v7 = v45;
  if (v45)
  {
    v8 = v45;
  }

  else
  {
    v8 = v46;
  }

  v9 = strstr(v6, v8);
  if (v9)
  {
    v10 = (v9 - v6) == 0xFFFFLL;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    __assert_rtn("default_output_path", "UnigramsCompiler.cpp", 1090, "m_unigrams_path.find(String(/)) != String::NotAnIndex");
  }

  if (v7 && BYTE6(v44) == 1)
  {
    free(v7);
  }

  LODWORD(v41) = 0x100000;
  WORD2(v41) = 0;
  BYTE6(v41) = 1;
  v42 = 0;
  sub_1B5CDCAAC(&v41, "/", 0, 1u);
  v11 = *(a2 + 1904);
  if (!v11)
  {
    v11 = (a2 + 1912);
  }

  v12 = *(a2 + 1896);
  v13 = &v11[v12];
  v14 = v42;
  if (!v42)
  {
    v14 = &v43;
  }

  if (*(a2 + 1896) && v41)
  {
    v17 = *v14;
    v15 = v14 + 1;
    v16 = v17;
    v18 = v11;
    v19 = &v11[v12];
    do
    {
      v20 = v18 + 1;
      while (*v18 != v16)
      {
        ++v18;
        ++v20;
        if (v18 == v13)
        {
          goto LABEL_34;
        }
      }

      v21 = v41 - 1;
      v22 = v15;
      while (v21)
      {
        if (v20 == v13)
        {
          goto LABEL_34;
        }

        v24 = *v20++;
        v23 = v24;
        v25 = *v22++;
        --v21;
        if (v23 != v25)
        {
          goto LABEL_33;
        }
      }

      v19 = v18;
LABEL_33:
      ++v18;
    }

    while (v18 != v13);
LABEL_34:
    v10 = v19 == v13;
    LOWORD(v13) = v19;
    if (!v10)
    {
      goto LABEL_35;
    }
  }

  else if (!v41)
  {
LABEL_35:
    v26 = v13 - v11 + 1;
    goto LABEL_38;
  }

  v26 = 0;
LABEL_38:
  sub_1B5D5D250(&v44, (a2 + 1896), v26, v12);
  if (v42 && BYTE6(v41) == 1)
  {
    free(v42);
  }

  LODWORD(v41) = 0x100000;
  WORD2(v41) = 0;
  BYTE6(v41) = 1;
  v42 = 0;
  sub_1B5CDCAAC(&v41, "words", 0, 5u);
  if (!sub_1B5D5DDEC(&v44, &v41))
  {
    __assert_rtn("default_output_path", "UnigramsCompiler.cpp", 1092, "input_filename.ends_with(String(words))");
  }

  if (v42 && BYTE6(v41) == 1)
  {
    free(v42);
  }

  v27 = v44;
  LODWORD(v39) = 0x100000;
  WORD2(v39) = 0;
  BYTE6(v39) = 1;
  v40 = 0;
  sub_1B5CDCAAC(&v39, "dat", 0, 3u);
  sub_1B5D5D658(&v41, &v44, (v27 - 5), 5u, &v39);
  if (v40 && BYTE6(v39) == 1)
  {
    free(v40);
  }

  sub_1B5D5CABC(v36, (a2 + 176));
  sub_1B5D5DCB4(&v39, v36, "/");
  sub_1B5D5DD0C(v28, &v39, &v41);
  if (v40 && BYTE6(v39) == 1)
  {
    free(v40);
  }

  if (v38 && v37 == 1)
  {
    free(v38);
  }

  if (v42 && BYTE6(v41) == 1)
  {
    free(v42);
  }

  if (v45 && BYTE6(v44) == 1)
  {
    free(v45);
  }

  sub_1B5D5CBBC(&v31, v28);
  if (v30 && v29 == 1)
  {
    free(v30);
  }

LABEL_63:
  LODWORD(v44) = 0x100000;
  WORD2(v44) = 0;
  BYTE6(v44) = 1;
  v45 = 0;
  sub_1B5CDCAAC(&v44, ".dat", 0, 4u);
  if (!sub_1B5D5DDEC(&v31, &v44))
  {
    __assert_rtn("output_path", "UnigramsCompiler.cpp", 1107, "dat_path.ends_with(String(.dat))");
  }

  if (v45 && BYTE6(v44) == 1)
  {
    free(v45);
  }

  sub_1B5D5D658(a1, &v31, (v31 - 3), 3u, a3);
  if (v34)
  {
    if (v33 == 1)
    {
      free(v34);
    }
  }
}

void sub_1B5D3B40C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, void *a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, void *a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, void *a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, void *a35)
{
  if (a29 && a28 == 1)
  {
    free(a29);
  }

  if (a23 && a22 == 1)
  {
    free(a23);
  }

  if (a35 && a34 == 1)
  {
    free(a35);
  }

  v37 = *(v35 - 96);
  if (v37 && *(v35 - 98) == 1)
  {
    free(v37);
  }

  if (a17)
  {
    if (a16 == 1)
    {
      free(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D3B4F0(uint64_t a1)
{
  v136 = *MEMORY[0x1E69E9840];
  sub_1B5D4188C(a1, a1 + 1896, a1 + 16);
  *v133 = 0u;
  v134 = 0u;
  v135 = 1065353216;
  v2 = *(a1 + 280);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = *(*v3 + 256);
      v7 = *(*v3 + 264);
      if (v6 != v7)
      {
        do
        {
          sub_1B5D4703C(v133, v6, v6);
          v6 += 16;
        }

        while (v6 != v7);
        v5 = *v3;
      }

      v8 = *(v5 + 280);
      v9 = *(v5 + 288);
      while (v8 != v9)
      {
        sub_1B5D4703C(v133, v8, v8);
        v8 += 16;
      }

      ++v3;
    }

    while (v3 != v4);
    if (*(&v134 + 1))
    {
      if (*(&v134 + 1) >= 0xDuLL)
      {
        __assert_rtn("convert_combining_classes_to_bits", "UnigramsCompiler.cpp", 357, "classes.size() <= Word::MaxCombiningClassCount");
      }

      memset(__p, 0, sizeof(__p));
      if (v134)
      {
        v10 = -1;
        v11 = v134;
        do
        {
          v12 = v10;
          v11 = *v11;
          ++v10;
        }

        while (v11);
        *buf = __p;
        buf[8] = 0;
        if (v10 < 0x7FFFFFFFFFFFFFFLL)
        {
          sub_1B5D4894C(v12 + 2);
        }

        sub_1B5D04FA0();
      }

      sub_1B5D472C4(0, 0, 0, 1);
      *v127 = 0u;
      v128 = 0u;
      v129 = 1065353216;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 1174405120;
      *&buf[16] = sub_1B5D47DB4;
      *&buf[24] = &unk_1F2D58130;
      sub_1B5D47E4C(v132, v127);
      v13 = *(a1 + 280);
      v14 = *v13;
      v15 = v13[1];
      while (v14 != v15)
      {
        v16 = *v14;
        *(v16 + 56) = *(v16 + 56) & 0xFFFFF000 | (*&buf[16])(buf, *v14 + 256) & 0xFFF;
        v17 = *v14;
        *(v17 + 56) = *(v17 + 56) & 0xFF000FFF | (((*&buf[16])(buf, *v14 + 280) & 0xFFF) << 12);
        v18 = *v14;
        v19 = *(*v14 + 256);
        v20 = *(*v14 + 264);
        v21 = *v14;
        if (v20 != v19)
        {
          do
          {
            v22 = *(v20 - 24);
            if (v22 && *(v20 - 26) == 1)
            {
              free(v22);
            }

            v20 -= 32;
          }

          while (v20 != v19);
          v21 = *v14;
        }

        *(v18 + 264) = v19;
        v23 = *(v21 + 280);
        for (i = *(v21 + 288); i != v23; i -= 32)
        {
          v25 = *(i - 24);
          if (v25 && *(i - 26) == 1)
          {
            free(v25);
          }
        }

        *(v21 + 288) = v23;
        ++v14;
      }

      sub_1B5D48118(v132);
      sub_1B5D48118(v127);
      v127[0] = __p;
      sub_1B5D1BF88(v127);
    }
  }

  sub_1B5D48118(v133);
  v26 = *(a1 + 240);
  if ((v26 & 0xC00000) != 0)
  {
    v27 = atomic_load(byte_1EB90C7D0);
    if (v27)
    {
      v28 = atomic_load(byte_1EB90CC20);
      if (v28)
      {
        printf("    Calculating emission cost per each head POS");
        putchar(10);
      }

      else
      {
        v31 = sub_1B5D32914();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B5CDB000, v31, OS_LOG_TYPE_DEFAULT, "    Calculating emission cost per each head POS", buf, 2u);
        }
      }
    }

    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    *&v133[8] = 0;
    *&v134 = 0;
    *v133 = &v133[8];
    v32 = *(a1 + 280);
    v33 = *v32;
    v34 = v32[1];
    if (*v32 != v34)
    {
      do
      {
        if ((v26 & 0x400000) != 0)
        {
          v35 = *(*v33 + 76);
          v36 = *(*v33 + 88);
          LODWORD(__p[0]) = v35;
          v127[0] = __p;
          v37 = sub_1B5D46E00(buf, v35, v127);
          *(v37 + 5) = v36 + *(v37 + 5);
        }

        if ((v26 & 0x800000) != 0)
        {
          v38 = *(*v33 + 88);
          LODWORD(__p[0]) = HIWORD(*(*v33 + 76));
          v127[0] = __p;
          v39 = sub_1B5D46E00(v133, __p[0], v127);
          *(v39 + 5) = v38 + *(v39 + 5);
        }

        ++v33;
      }

      while (v33 != v34);
      v40 = *(a1 + 280);
      v33 = *v40;
      v34 = v40[1];
    }

    if (v33 != v34)
    {
      while (1)
      {
        v41 = *v33;
        v42 = *(*v33 + 76);
        if (((v26 & 0x400000) == 0 || *(*v33 + 76)) && ((v26 & 0x800000) == 0 || v42 >= 0x10000))
        {
          break;
        }

        LOWORD(v43) = 0x7FFF;
LABEL_65:
        *(v41 + 80) = v43;
        if (++v33 == v34)
        {
          goto LABEL_66;
        }
      }

      if ((v26 & 0x400000) != 0)
      {
        LODWORD(__p[0]) = *(*v33 + 76);
        v127[0] = __p;
        v44 = sub_1B5D46E00(buf, v42, v127);
        v41 = *v33;
        v45 = llround((log(*(*v33 + 88) / *(v44 + 5)) + -0.0001) * -*(a1 + 1976));
        if ((v26 & 0x800000) == 0)
        {
LABEL_60:
          if (v45 >= 0x7FFF)
          {
            v43 = 0x7FFFLL;
          }

          else
          {
            v43 = v45;
          }

          if (v43 <= -32768)
          {
            LOWORD(v43) = 0x8000;
          }

          goto LABEL_65;
        }
      }

      else
      {
        v45 = 0;
        if ((v26 & 0x800000) == 0)
        {
          goto LABEL_60;
        }
      }

      LODWORD(__p[0]) = HIWORD(v42);
      v127[0] = __p;
      v46 = sub_1B5D46E00(v133, HIWORD(v42), v127);
      v41 = *v33;
      v45 += llround((log(*(*v33 + 88) / *(v46 + 5)) + -0.0001) * -*(a1 + 1976));
      if ((v26 & 0xC00000) == 0xC00000)
      {
        v45 /= 2;
      }

      goto LABEL_60;
    }

LABEL_66:
    sub_1B5D46FF0(*&v133[8]);
    sub_1B5D46FF0(*&buf[8]);
  }

  else
  {
    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    v29 = atomic_load(byte_1EB90C7D0);
    if (v29)
    {
      v30 = atomic_load(byte_1EB90CC20);
      if (v30)
      {
        printf("    Calculating emission cost per Head/Tail POS");
        putchar(10);
      }

      else
      {
        v47 = sub_1B5D32914();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *v133 = 0;
          _os_log_impl(&dword_1B5CDB000, v47, OS_LOG_TYPE_DEFAULT, "    Calculating emission cost per Head/Tail POS", v133, 2u);
        }
      }
    }

    v48 = *(a1 + 280);
    v49 = *v48;
    v50 = v48[1];
    if (*v48 != v50)
    {
      do
      {
        v51 = HIWORD(*(*v49 + 76));
        v52 = *(*v49 + 88);
        v53 = *(*v49 + 76);
        v127[0] = __PAIR64__(v51, v53);
        *v133 = v127;
        v54 = sub_1B5D46EE4(buf, v53, v51, v133);
        *(v54 + 5) = v52 + *(v54 + 5);
        ++v49;
      }

      while (v49 != v50);
      v55 = *(a1 + 280);
      v49 = *v55;
      v50 = v55[1];
    }

    for (; v49 != v50; ++v49)
    {
      v56 = *v49;
      v57 = *(*v49 + 76);
      if (v57 < 0x10000 || v57 == 0)
      {
        LOWORD(v59) = 0x7FFF;
      }

      else
      {
        LODWORD(v127[0]) = *(*v49 + 76);
        HIDWORD(v127[0]) = HIWORD(v57);
        *v133 = v127;
        v60 = sub_1B5D46EE4(buf, v57, HIWORD(v57), v133);
        v56 = *v49;
        v61 = *(*v49 + 88);
        v59 = llround((log(v61 / *(v60 + 5)) + -0.0001) * -*(a1 + 1976));
        if (v59 <= -32768)
        {
          v59 = -32768;
        }

        if (v59 >= 0x7FFF)
        {
          LOWORD(v59) = 0x7FFF;
        }
      }

      *(v56 + 80) = v59;
    }

    sub_1B5D46FF0(*&buf[8]);
  }

  v62 = **(a1 + 280);
  v63 = *(*(a1 + 280) + 8) - v62;
  if (v63)
  {
    v64 = v63 >> 3;
    v65 = 1;
    v66 = **(a1 + 280);
    v67 = 0.0;
    v68 = 0.0;
    do
    {
      v69 = *(*v66 + 88);
      if (v69 > 0.0)
      {
        v70 = v69 >= v67 && v67 > 0.0;
        if (!v70)
        {
          v67 = *(*v66 + 88);
        }

        if (v69 > v68)
        {
          v68 = *(*v66 + 88);
        }
      }

      v66 += 8;
      v70 = v64 > v65++;
    }

    while (v70);
    v71 = 1;
    v72 = 0.0;
    do
    {
      v73 = *v62++;
      v74 = *(v73 + 88);
      if ((v74 < v72 || v72 <= 0.0) && v74 > v67)
      {
        v72 = v74;
      }

      v70 = v64 > v71++;
    }

    while (v70);
  }

  else
  {
    v67 = 0.0;
    v68 = 0.0;
    v72 = 0.0;
  }

  v77 = atomic_load(byte_1EB90C7D0);
  if (v77)
  {
    v78 = atomic_load(byte_1EB90CC20);
    if (v78)
    {
      printf("    Frequency distribution:  Lowest=%lf, NextLowest=%lf, Highest=%lf", v67, v72, v68);
      putchar(10);
    }

    else
    {
      v79 = sub_1B5D32914();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        *&buf[4] = v67;
        *&buf[12] = 2048;
        *&buf[14] = v72;
        *&buf[22] = 2048;
        *&buf[24] = v68;
        _os_log_impl(&dword_1B5CDB000, v79, OS_LOG_TYPE_DEFAULT, "    Frequency distribution:  Lowest=%lf, NextLowest=%lf, Highest=%lf", buf, 0x20u);
      }
    }
  }

  if (v67 != 1.0 || v72 != 2.0)
  {
    v80 = 2.0;
    if (v72 > 2.0)
    {
      v80 = 2.0 / v72 + 1.0;
    }

    v81 = **(a1 + 280);
    v82 = *(*(a1 + 280) + 8) - v81;
    if (v82)
    {
      v83 = v82 >> 3;
      v84 = 1;
      while (1)
      {
        v85 = *(*v81 + 88);
        if (v85 == v67)
        {
          break;
        }

        v86 = v80;
        if (v85 == v72)
        {
          goto LABEL_125;
        }

        if (v72 > 0.0)
        {
          v86 = v80 * v85 / v72;
LABEL_125:
          *(*v81 + 88) = v86;
        }

LABEL_126:
        v81 += 8;
        v70 = v83 > v84++;
        if (!v70)
        {
          goto LABEL_127;
        }
      }

      v86 = 1.0;
      if (v67 == 1.0)
      {
        goto LABEL_126;
      }

      goto LABEL_125;
    }

LABEL_127:
    if (v72 > 0.0)
    {
      v68 = v68 * v80 / v72;
    }
  }

  if (v68 > 65000.0)
  {
    v87 = log(v68);
    v88 = atomic_load(byte_1EB90C7D0);
    v89 = 11.0821425 / v87;
    if (v88)
    {
      v90 = atomic_load(byte_1EB90CC20);
      if (v90)
      {
        printf("Squashing with root power %.3lf to achieve frequency target range %.0f to %.0f", 11.0821425 / v87, 1.0, 65000.0);
        putchar(10);
      }

      else
      {
        v91 = sub_1B5D32914();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          *&buf[4] = v89;
          *&buf[12] = 2048;
          *&buf[14] = 0x3FF0000000000000;
          *&buf[22] = 2048;
          *&buf[24] = 0x40EFBD0000000000;
          _os_log_impl(&dword_1B5CDB000, v91, OS_LOG_TYPE_DEFAULT, "Squashing with root power %.3lf to achieve frequency target range %.0f to %.0f", buf, 0x20u);
        }
      }
    }

    v92 = *(a1 + 280);
    v93 = *v92;
    v94 = *(v92 + 8) - *v92;
    if (v94)
    {
      v95 = v94 >> 3;
      v96 = 1;
      do
      {
        v97 = *v93++;
        *(v97 + 88) = pow(*(v97 + 88), v89);
        v70 = v95 > v96++;
      }

      while (v70);
    }
  }

  sub_1B5D4480C(a1);
  v98 = *(a1 + 280);
  v100 = *v98;
  v99 = v98[1];
  if (*v98 == v99)
  {
    goto LABEL_183;
  }

  v101 = (a1 + 1776);
  v125 = v98[1];
LABEL_140:
  v102 = *v100;
  if ((*v100)[152])
  {
    goto LABEL_182;
  }

  if (*(a1 + 1840))
  {
    __assert_rtn("train", "TIHuffmanCoder.cpp", 73, "!is_compiled()");
  }

  v126 = v100;
  v103 = *(v102 + 1);
  if (!v103)
  {
    v103 = v102 + 8;
  }

  *buf = v103;
  *&buf[8] = 0;
  *&buf[12] = *v102;
  *&buf[16] = 0;
  sub_1B5CDCF70(buf);
  v104 = *v102;
  v105 = *(v102 + 1);
  if (!v105)
  {
    v105 = v102 + 8;
  }

  *v133 = v105;
  *&v133[8] = v104;
  *&v133[12] = v104;
  LODWORD(v134) = 0;
  sub_1B5CDCF70(v133);
  v107 = *buf;
  if (*buf != *v133)
  {
LABEL_196:
    __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
  }

  v108 = *&v133[8];
LABEL_148:
  if (*&buf[8] != v108)
  {
    v109 = *(a1 + 1784);
    if (!v109)
    {
      goto LABEL_165;
    }

    v110 = vcnt_s8(v109);
    v110.i16[0] = vaddlv_u8(v110);
    if (v110.u32[0] > 1uLL)
    {
      v111 = *&buf[16];
      if (v109 <= *&buf[16])
      {
        v111 = *&buf[16] % v109;
      }
    }

    else
    {
      v111 = (v109 - 1) & *&buf[16];
    }

    v112 = (*v101)[v111];
    if (!v112 || (v113 = *v112) == 0)
    {
LABEL_165:
      operator new();
    }

    while (1)
    {
      v114 = v113[1];
      if (v114 == *&buf[16])
      {
        if (*(v113 + 4) == *&buf[16])
        {
          ++*(v113 + 5);
          sub_1B5CDCF70(buf);
          if (*buf != v107)
          {
            goto LABEL_196;
          }

          goto LABEL_148;
        }
      }

      else
      {
        if (v110.u32[0] > 1uLL)
        {
          if (v114 >= v109)
          {
            v114 %= v109;
          }
        }

        else
        {
          v114 &= v109 - 1;
        }

        if (v114 != v111)
        {
          goto LABEL_165;
        }
      }

      v113 = *v113;
      if (!v113)
      {
        goto LABEL_165;
      }
    }
  }

  v115 = *(a1 + 1784);
  if (!*&v115 || (v116 = **v101) == 0 || (v117 = *v116) == 0)
  {
LABEL_181:
    operator new();
  }

  v106.n128_u64[0] = vcnt_s8(v115);
  v106.n128_u16[0] = vaddlv_u8(v106.n128_u64[0]);
  while (1)
  {
    v118 = v117[1];
    if (v118)
    {
      if (v106.n128_u32[0] > 1uLL)
      {
        if (v118 < *&v115 || v118 % *&v115)
        {
          goto LABEL_181;
        }
      }

      else if ((v118 & (*&v115 - 1)) != 0)
      {
        goto LABEL_181;
      }
    }

    else if (!*(v117 + 4))
    {
      ++*(v117 + 5);
      v100 = v126;
      (*(**(a1 + 264) + 16))(*(a1 + 264), *(*v126 + 9), v106);
      v99 = v125;
LABEL_182:
      if (++v100 == v99)
      {
LABEL_183:
        if (!*(a1 + 1840))
        {
          if (*(a1 + 1800) > 1uLL)
          {
            memset(v133, 0, sizeof(v133));
            *&v134 = 0;
            v119 = *(a1 + 1792);
            if (v119)
            {
              v120 = *(v119 + 16);
              v121 = *(v119 + 20);
              v122 = (*&v133[8] - *v133) >> 5;
              if (!((v122 + 1) >> 59))
              {
                v123 = (v134 - *v133) >> 4;
                if (v123 <= v122 + 1)
                {
                  v123 = v122 + 1;
                }

                if (v134 - *v133 >= 0x7FFFFFFFFFFFFFE0uLL)
                {
                  v124 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v124 = v123;
                }

                v132[0] = v133;
                if (v124)
                {
                  sub_1B5D32100(v124);
                }

                *buf = 0;
                *&buf[8] = 32 * v122;
                *&buf[16] = (32 * v122);
                sub_1B5D30420((32 * v122), v120, v121);
              }

              sub_1B5D04FA0();
            }

            __assert_rtn("compile", "TIHuffmanCoder.cpp", 145, "queue.size() == 1");
          }

          __assert_rtn("compile", "TIHuffmanCoder.cpp", 129, "m_freq_table.size() >= 2");
        }

        __assert_rtn("compile", "TIHuffmanCoder.cpp", 128, "!is_compiled()");
      }

      goto LABEL_140;
    }

    v117 = *v117;
    if (!v117)
    {
      goto LABEL_181;
    }
  }
}

void sub_1B5D3D1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v150[1610] = *MEMORY[0x1E69E9840];
  *buf = 0x100000;
  *&buf[4] = 0;
  buf[6] = 1;
  v144[0] = 0;
  sub_1B5CDCAAC(buf, "idx", 0, 3u);
  sub_1B5D3AF54(v140, v3, buf);
  if (v144[0] && buf[6] == 1)
  {
    free(v144[0]);
  }

  *versionArray = 0;
  ucol_getVersion();
  u_versionToString(versionArray, versionString);
  ucol_getUCAVersion();
  u_versionToString(versionArray, v138);
  v4 = atomic_load(byte_1EB90C7D0);
  if (v4)
  {
    v5 = atomic_load(byte_1EB90CC20);
    if (v5)
    {
      if (v141)
      {
        v6 = v141;
      }

      else
      {
        v6 = v142;
      }

      printf("writing version %x.%x, collator v%s, UCA v%s, %s", 3, 21, versionString, v138, v6);
      putchar(10);
    }

    else
    {
      v7 = sub_1B5D32914();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v141;
        if (!v141)
        {
          v8 = v142;
        }

        *buf = 67110146;
        *&buf[4] = 3;
        LOWORD(v144[0]) = 1024;
        *(v144 + 2) = 21;
        HIWORD(v144[0]) = 2080;
        v144[1] = versionString;
        LOWORD(v144[2]) = 2080;
        *(&v144[2] + 2) = v138;
        WORD1(v144[3]) = 2080;
        *(&v144[3] + 4) = v8;
        _os_log_impl(&dword_1B5CDB000, v7, OS_LOG_TYPE_DEFAULT, "writing version %x.%x, collator v%s, UCA v%s, %s", buf, 0x2Cu);
      }
    }
  }

  v9 = v142;
  if (v141)
  {
    v10 = v141;
  }

  else
  {
    v10 = v142;
  }

  sub_1B5DA5160(v125, v10);
  if ((v126 & 1) == 0)
  {
    sub_1B5CF7CDC(buf);
    v111 = sub_1B5CE599C(&v144[1], "invalid index file at ", 22);
    if (v141)
    {
      v9 = v141;
    }

    v112 = strlen(v9);
    sub_1B5CE599C(v111, v9, v112);
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1B5D3F684(&v136, buf);
    sub_1B5D32AFC(exception, &v136);
    __cxa_throw(exception, &unk_1F2D56F00, sub_1B5D32BEC);
  }

  v11 = atomic_load(byte_1EB90C7D0);
  if (v11)
  {
    v12 = atomic_load(byte_1EB90CC20);
    if (v12)
    {
      printf("\tAllocating trie slots: magic_number=%u, root_usage_sum=%f", 1, *(*(v3 + 272) + 40));
      putchar(10);
    }

    else
    {
      v13 = sub_1B5D32914();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(*(v3 + 272) + 40);
        *buf = 67109376;
        *&buf[4] = 1;
        LOWORD(v144[0]) = 2048;
        *(v144 + 2) = v14;
        _os_log_impl(&dword_1B5CDB000, v13, OS_LOG_TYPE_DEFAULT, "\tAllocating trie slots: magic_number=%u, root_usage_sum=%f", buf, 0x12u);
      }
    }
  }

  sub_1B5D3F72C(v3, v125, 1);
  v15 = sub_1B5DA53A0(__fd);
  v16 = *(v3 + 240);
  v17 = (v16 & 0x100) != 0 && *(v3 + 1960) == 5;
  sub_1B5DA6BD0(*(v3 + 272), v15, (v16 >> 12) & 1, v17);
  sub_1B5DA6AF0(*(v3 + 272));
  v18 = sub_1B5DA6BD0(*(v3 + 272), v15, (*(v3 + 240) >> 12) & 1, v17);
  if (v18 >= 0x1000001)
  {
    sub_1B5CF7CDC(buf);
    v114 = sub_1B5CE599C(&v144[1], "Trie size=", 10);
    v115 = MEMORY[0x1B8C87F10](v114, v18);
    v116 = sub_1B5CE599C(v115, " bytes exceeds trie addressing capacity=", 40);
    MEMORY[0x1B8C87F00](v116, 0x1000000);
    v117 = __cxa_allocate_exception(0x20uLL);
    sub_1B5D3F684(&v136, buf);
    sub_1B5D32AFC(v117, &v136);
    __cxa_throw(v117, &unk_1F2D56F00, sub_1B5D32BEC);
  }

  v19 = *(v3 + 280);
  v20 = *(v3 + 248);
  v124 = v3;
  v122 = v19;
  if ((*(v3 + 240) & 0x800) == 0)
  {
    v119 = *(v3 + 248);
    if (*(v3 + 1960) == 5)
    {
      v118 = *(v3 + 240);
      *(&v136 + 1) = 0;
      v137 = 0;
      *&v136 = &v136 + 8;
      v21 = *v19;
      if (v19[1] == *v19)
      {
LABEL_60:
        if (*(v3 + 1768))
        {
          *buf = &unk_1F2D58EC0;
          v144[0] = &v136;
          v144[1] = (v3 + 328);
          v144[2] = buf;
          sub_1B5D5EECC(v122, v119, buf);
          sub_1B5D5F224(buf);
        }

        memset(v135, 0, 24);
        v39 = v136;
        if (v136 != (&v136 + 8))
        {
          v40 = 0;
          do
          {
            if (v40 >= v135[2])
            {
              v43 = 0x8E38E38E38E38E39 * ((v40 - v135[0]) >> 3);
              v44 = v43 + 1;
              if (v43 + 1 > 0x38E38E38E38E38ELL)
              {
                sub_1B5D04FA0();
              }

              if (0x1C71C71C71C71C72 * ((v135[2] - v135[0]) >> 3) > v44)
              {
                v44 = 0x1C71C71C71C71C72 * ((v135[2] - v135[0]) >> 3);
              }

              if (0x8E38E38E38E38E39 * ((v135[2] - v135[0]) >> 3) >= 0x1C71C71C71C71C7)
              {
                v45 = 0x38E38E38E38E38ELL;
              }

              else
              {
                v45 = v44;
              }

              v144[3] = v135;
              if (v45)
              {
                sub_1B5D0161C(v135, v45);
              }

              *buf = 0;
              v144[0] = (8 * ((v40 - v135[0]) >> 3));
              *&v144[1] = v144[0];
              v47 = *(v39 + 6);
              v46 = v144[0];
              *(v144[0] + 1) = 0;
              *v46 = v47;
              v46[2] = 0;
              v46[3] = 0;
              sub_1B5D01774((72 * v43 + 8), *(v39 + 7), *(v39 + 8), *(v39 + 8) - *(v39 + 7));
              v46[4] = 0;
              v46[5] = 0;
              v46[6] = 0;
              sub_1B5D01774((72 * v43 + 32), *(v39 + 10), *(v39 + 11), *(v39 + 11) - *(v39 + 10));
              v48 = *(v39 + 13);
              *(v46 + 61) = *(v39 + 109);
              v46[7] = v48;
              v144[1] = v144[1] + 72;
              v49 = v144[0] + v135[0] - v135[1];
              sub_1B5D68DC0(v135[0], v135[1], v49);
              v50 = v135[0];
              v51 = v135[2];
              v135[0] = v49;
              v123 = v144[1];
              *&v135[1] = *&v144[1];
              v144[1] = v50;
              v144[2] = v51;
              *buf = v50;
              v144[0] = v50;
              sub_1B5D68E6C(buf);
              v40 = v123;
            }

            else
            {
              v41 = *(v39 + 6);
              v40[1] = 0;
              *v40 = v41;
              v40[2] = 0;
              v40[3] = 0;
              sub_1B5D01774(v40 + 1, *(v39 + 7), *(v39 + 8), *(v39 + 8) - *(v39 + 7));
              v40[4] = 0;
              v40[5] = 0;
              v40[6] = 0;
              sub_1B5D01774(v40 + 4, *(v39 + 10), *(v39 + 11), *(v39 + 11) - *(v39 + 10));
              v42 = *(v39 + 13);
              *(v40 + 61) = *(v39 + 109);
              v40[7] = v42;
              v40 += 9;
            }

            v135[1] = v40;
            v52 = *(v39 + 1);
            if (v52)
            {
              do
              {
                v53 = v52;
                v52 = *v52;
              }

              while (v52);
            }

            else
            {
              do
              {
                v53 = *(v39 + 2);
                v54 = *v53 == v39;
                v39 = v53;
              }

              while (!v54);
            }

            v39 = v53;
          }

          while (v53 != (&v136 + 8));
        }

        *(&__dst + 1) = 0;
        v134 = 0;
        *&__dst = &__dst + 8;
        v55 = *(v3 + 1640);
        if (v55)
        {
          if (*(v55 + 16))
          {
            operator new();
          }

          operator new();
        }

        memset(v144, 0, 40);
        *buf = &unk_1F2D58F40;
        LODWORD(v144[5]) = v118 | 1;
        sub_1B5D0195C(&v145, &__dst);
        v148 = 0;
        v149 = 0;
        sub_1B5D69650(v150);
        sub_1B5D01F0C(&__dst, *(&__dst + 1));
        LODWORD(v144[5]) = v144[5] & 0xFFFFFFFE | v118 & 1;
        sub_1B5D5F528(buf, v135);
      }

      v22 = 0;
      while (1)
      {
        v23 = *(v21 + 8 * v22);
        if ((&v136 + 8) == sub_1B5D5ECC8(&v136, (v23 + 136)))
        {
          memset(v144, 0, sizeof(v144));
          v25 = *(v21 + 8 * v22);
          v26 = *(v25 + 248);
          LODWORD(v25) = *(v25 + 60);
          *buf = v26;
          *&buf[4] = v25;
          v27 = *(v23 + 136);
          if (v27 < 0xF)
          {
            v28 = (v23 + 138);
          }

          else
          {
            v28 = *(v23 + 144);
          }

          sub_1B5CFF868(v144, v28, &v28[v27], v27);
          v29 = *(v21 + 8 * v22);
          memset(v135, 0, 24);
          sub_1B5D01774(v135, *(v29 + 200), *(v29 + 208), *(v29 + 208) - *(v29 + 200));
          if (v144[3])
          {
            v144[4] = v144[3];
            operator delete(v144[3]);
          }

          *&v144[3] = *v135;
          v144[5] = v135[2];
          v30 = *(v21 + 8 * v22);
          v145 = *(v30 + 88);
          v146 = 1;
          v147 = (*(v30 + 56) & 0xFFF000) != 0;
          sub_1B5D5F3A4(&v136, (v23 + 136), (v23 + 136), buf);
          if (v144[3])
          {
            v144[4] = v144[3];
            operator delete(v144[3]);
          }

          v31 = v144[0];
          if (!v144[0])
          {
            goto LABEL_59;
          }

          v144[1] = v144[0];
        }

        else
        {
          v24 = *sub_1B5D4171C(&v136, buf, (v23 + 136));
          if (!v24)
          {
            operator new();
          }

          v32 = *(v21 + 8 * v22);
          v33 = *(v32 + 248);
          if (v33 >= *(v24 + 48))
          {
            v33 = *(v24 + 48);
          }

          *(v24 + 48) = v33;
          ++*(v24 + 112);
          *(v24 + 116) |= (*(v32 + 56) & 0xFFF000) != 0;
          *(v24 + 104) = *(v32 + 88) + *(v24 + 104);
          *buf = 0;
          v144[0] = 0;
          v144[1] = 0;
          sub_1B5D01774(buf, *(v32 + 200), *(v32 + 208), *(v32 + 208) - *(v32 + 200));
          v34 = *buf;
          if (v144[0] != *buf)
          {
            v35 = 0;
            do
            {
              v36 = *(v24 + 80);
              v37 = *(v24 + 88);
              if (v35 >= &v37[-v36])
              {
                if (v37 >= *(v24 + 96))
                {
                  if (&v37[-v36 + 1] >= 0)
                  {
                    operator new();
                  }

                  sub_1B5D04FA0();
                }

                *v37 = v35[v34];
                *(v24 + 88) = v37 + 1;
              }

              else
              {
                v38 = v35[v34];
                if (v38 >= v35[v36])
                {
                  LOBYTE(v38) = v35[v36];
                }

                v35[v36] = v38;
              }

              ++v35;
              v34 = *buf;
            }

            while (v35 < v144[0] - *buf);
          }

          if (!v34)
          {
            goto LABEL_59;
          }

          v144[0] = v34;
          v31 = v34;
        }

        operator delete(v31);
LABEL_59:
        ++v22;
        v21 = *v122;
        if (v22 >= (v122[1] - *v122) >> 3)
        {
          goto LABEL_60;
        }
      }
    }

    v121 = *(v3 + 1960);
    *(&v136 + 1) = 0;
    v137 = 0;
    *&v136 = &v136 + 8;
    v135[1] = 0;
    v135[2] = 0;
    v135[0] = &v135[1];
    v70 = *v19;
    v69 = v19[1];
    if (*v19 == v69)
    {
LABEL_170:
      if (*(v3 + 1768))
      {
        *buf = &unk_1F2D59218;
        v144[0] = &v136;
        v144[2] = buf;
        sub_1B5D5EECC(v122, v20, buf);
        sub_1B5D5F224(buf);
      }

      __dst = 0uLL;
      v134 = 0;
      __p = 0;
      v131 = 0;
      v132 = 0;
      memset(v129, 0, sizeof(v129));
      v99 = v136;
      if (v136 != (&v136 + 8))
      {
        do
        {
          if (*(v99 + 16) < 0xFu)
          {
            v100 = v99 + 34;
          }

          else
          {
            v100 = *(v99 + 5);
          }

          *buf = v100;
          sub_1B5D140B0(&__dst, buf);
          *buf = *(v99 + 16);
          sub_1B5D14180(&__p, buf);
          *buf = *(v99 + 12);
          sub_1B5D5F2A4(v129, buf);
          v101 = *(v99 + 1);
          if (v101)
          {
            do
            {
              v102 = v101;
              v101 = *v101;
            }

            while (v101);
          }

          else
          {
            do
            {
              v102 = *(v99 + 2);
              v54 = *v102 == v99;
              v99 = v102;
            }

            while (!v54);
          }

          v99 = v102;
        }

        while (v102 != (&v136 + 8));
      }

      if (v121 <= 4)
      {
        if (v121 <= 2)
        {
          if (v121 == 1)
          {
            operator new();
          }

          operator new();
        }

        if (v121 == 3)
        {
          operator new();
        }

        operator new();
      }

      if (v121 <= 6)
      {
        operator new();
      }

      if (v121 == 7)
      {
        operator new();
      }

      operator new();
    }

    while (1)
    {
      v71 = *v70;
      v72 = *(*v70 + 248);
      if (v72 >= 0x200000)
      {
        sub_1B5CF7CDC(buf);
        v107 = sub_1B5CE599C(&v144[1], "Unigram index length=", 21);
        v108 = MEMORY[0x1B8C87F10](v107, v72);
        v109 = sub_1B5CE599C(v108, " bytes exceeds trie addressing capacity=", 40);
        MEMORY[0x1B8C87F10](v109, 0x1FFFFFLL);
        v110 = __cxa_allocate_exception(0x20uLL);
        sub_1B5D3F684(&__dst, buf);
        sub_1B5D32AFC(v110, &__dst);
        __cxa_throw(v110, &unk_1F2D56F00, sub_1B5D32BEC);
      }

      v73 = *(v71 + 88);
      v74 = *(v71 + 136);
      if (v74 < 0xF)
      {
        HIBYTE(v144[1]) = *(v71 + 136);
        v77 = buf;
        if (!v74)
        {
          goto LABEL_125;
        }

        v75 = (v71 + 138);
        v76 = (v71 + 138 + v74);
      }

      else
      {
        v75 = *(v71 + 144);
        v76 = &v75[v74];
        if (v74 > 0x16)
        {
          operator new();
        }

        HIBYTE(v144[1]) = *(v71 + 136);
        v77 = buf;
      }

      do
      {
        v78 = *v75++;
        *v77++ = v78;
      }

      while (v75 != v76);
LABEL_125:
      *v77 = 0;
      *&__dst = buf;
      v79 = sub_1B5D5F6C8(v135, buf, &__dst);
      *(v79 + 56) = v73 + *(v79 + 56);
      if (SHIBYTE(v144[1]) < 0)
      {
        operator delete(*buf);
      }

      v80 = *v70;
      v81 = *(*v70 + 224);
      if (v81)
      {
        if (atomic_fetch_add(v81, 1u) < 1)
        {
          __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
        }

        v80 = *v70;
      }

      if ((*(v80 + 304) & 1) != 0 || *(v80 + 248))
      {
        if (!v81)
        {
          goto LABEL_134;
        }

LABEL_133:
        sub_1B5D1BCD4(v81);
        goto LABEL_134;
      }

      if (((*(v81 + 16) - *(v81 + 8)) & 0x7FFFFFFF8) == 0)
      {
        goto LABEL_133;
      }

      v83 = *(v81 + 32);
      if (!v83)
      {
        goto LABEL_133;
      }

      v84 = (v83[1] - *v83) & 0x7FFFFFFF8;
      sub_1B5D1BCD4(v81);
      if (v84 == 8)
      {
        v85 = *v70;
        v86 = *(*v70 + 88);
        v87 = 0.0;
        v3 = v124;
        if (v86 != 0.0)
        {
          v88 = *(v85 + 224);
          if (v88)
          {
            v89 = *(v88 + 40);
            goto LABEL_158;
          }

          v95 = *(v85 + 336);
          if (v95)
          {
            v89 = v95;
LABEL_158:
            v87 = v86 / v89;
          }

          else
          {
            v87 = 1.0;
          }
        }

        v96 = sqrt(v87) * 255.0;
        if (v96)
        {
          v97 = 1;
        }

        else
        {
          v97 = v87 <= 0.0;
        }

        v98 = v96 | 0x400000;
        if (!v97)
        {
          v98 = 4194305;
        }

        *buf = v98;
        sub_1B5D5F768(&v136, (v71 + 136), (v71 + 136), buf);
        goto LABEL_153;
      }

LABEL_134:
      if ((&v136 + 8) != sub_1B5D5ECC8(&v136, (v71 + 136)))
      {
        v82 = *sub_1B5D4171C(&v136, buf, (v71 + 136));
        if (!v82)
        {
          operator new();
        }

        v90 = *(v82 + 48);
        v91 = v90 & 0x1FFFFF;
        if ((v90 & 0x400000) != 0)
        {
          v91 = 0;
        }

        if (v72 < v91)
        {
          v91 = v72;
        }

        v92 = v90 & 0xFFE00000 | v91;
        *(v82 + 48) = v92;
        if ((v90 & 0x600000) == 0x200000)
        {
          v93 = v92 & 0xFF9FFFFF;
          v3 = v124;
          goto LABEL_151;
        }

        v93 = v92 & 0xFFDFFFFF;
        v3 = v124;
        if ((*(*v70 + 56) & 0xFFF000) != 0)
        {
LABEL_151:
          v94 = 0x200000;
        }

        else
        {
          v94 = 0;
        }

        *(v82 + 48) = v94 | v93;
        goto LABEL_153;
      }

      *buf = v72 | (((*(*v70 + 56) & 0xFFF000) != 0) << 21);
      sub_1B5D5F768(&v136, (v71 + 136), (v71 + 136), buf);
      v3 = v124;
LABEL_153:
      v70 += 8;
      if (v70 == v69)
      {
        goto LABEL_170;
      }
    }
  }

  v120 = *(v3 + 1960);
  *(&v136 + 1) = 0;
  v137 = 0;
  *&v136 = &v136 + 8;
  v56 = *v19;
  v57 = v19[1];
  if (*v19 == v57)
  {
LABEL_100:
    if (*(v3 + 1768))
    {
      *buf = &unk_1F2D58850;
      v144[0] = &v136;
      v144[2] = buf;
      sub_1B5D5EECC(v122, v20, buf);
      sub_1B5D5F224(buf);
    }

    memset(v135, 0, 24);
    __dst = 0uLL;
    v134 = 0;
    __p = 0;
    v131 = 0;
    v132 = 0;
    v65 = v136;
    if (v136 != (&v136 + 8))
    {
      do
      {
        if (*(v65 + 16) < 0xFu)
        {
          v66 = v65 + 34;
        }

        else
        {
          v66 = *(v65 + 5);
        }

        *buf = v66;
        sub_1B5D140B0(v135, buf);
        *buf = *(v65 + 16);
        sub_1B5D14180(&__dst, buf);
        *buf = *(v65 + 12);
        sub_1B5D5F2A4(&__p, buf);
        v67 = *(v65 + 1);
        if (v67)
        {
          do
          {
            v68 = v67;
            v67 = *v67;
          }

          while (v67);
        }

        else
        {
          do
          {
            v68 = *(v65 + 2);
            v54 = *v68 == v65;
            v65 = v68;
          }

          while (!v54);
        }

        v65 = v68;
      }

      while (v68 != (&v136 + 8));
    }

    if (v120 <= 4)
    {
      if (v120 <= 2)
      {
        if (v120 == 1)
        {
          operator new();
        }

        operator new();
      }

      if (v120 == 3)
      {
        operator new();
      }

      operator new();
    }

    if (v120 <= 6)
    {
      if (v120 == 5)
      {
        operator new();
      }

      operator new();
    }

    if (v120 == 7)
    {
      operator new();
    }

    operator new();
  }

  while (1)
  {
    v58 = *v56;
    v59 = *(*v56 + 248);
    if (v59 >= 0x200000)
    {
      sub_1B5CF7CDC(buf);
      v103 = sub_1B5CE599C(&v144[1], "Unigram index length=", 21);
      v104 = MEMORY[0x1B8C87F10](v103, v59);
      v105 = sub_1B5CE599C(v104, " bytes exceeds trie addressing capacity=", 40);
      MEMORY[0x1B8C87F10](v105, 0x1FFFFFLL);
      v106 = __cxa_allocate_exception(0x20uLL);
      sub_1B5D3F684(v135, buf);
      sub_1B5D32AFC(v106, v135);
      __cxa_throw(v106, &unk_1F2D56F00, sub_1B5D32BEC);
    }

    if ((&v136 + 8) != sub_1B5D5ECC8(&v136, (v58 + 136)))
    {
      break;
    }

    *buf = v59 | (((*(v58 + 56) & 0xFFF000) != 0) << 21);
    sub_1B5D5EDC0(&v136, (v58 + 136), (v58 + 136), buf);
LABEL_99:
    v56 += 8;
    if (v56 == v57)
    {
      goto LABEL_100;
    }
  }

  v60 = *sub_1B5D4171C(&v136, buf, (v58 + 136));
  if (!v60)
  {
    operator new();
  }

  v61 = *(v60 + 48);
  v62 = v61 & 0x3FFFFFFF;
  if (v59 < (v61 & 0x3FFFFFFFu))
  {
    v62 = v59;
  }

  v63 = v62 | v61 & 0xC0000000;
  *(v60 + 48) = v63;
  if ((v61 & 0x40000000) != 0)
  {
    v63 &= 0x801FFFFF;
  }

  else if ((*(*v56 + 56) & 0xFFF000) == 0)
  {
    v64 = 0;
LABEL_98:
    *(v60 + 48) = v64 | v63;
    goto LABEL_99;
  }

  v64 = 0x40000000;
  goto LABEL_98;
}

void sub_1B5D3F0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, __int16 a55, char a56, void *a57, uint64_t a58, uint64_t a59, void *a60)
{
  if (a48 < 0)
  {
    operator delete(__p);
    if ((v61 & 1) == 0)
    {
LABEL_6:
      sub_1B5D0B3AC(&a60);
      sub_1B5DA4D68(&a21);
      if (a57)
      {
        if (a56 == 1)
        {
          free(a57);
        }
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v61)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v60);
  goto LABEL_6;
}

const void *sub_1B5D3F684(void *a1, uint64_t a2)
{
  result = sub_1B5D03500(a2 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  *(a1 + v5) = 0;
  return result;
}

void sub_1B5D3F72C(uint64_t a1, ssize_t a2, int a3)
{
  v41 = *MEMORY[0x1E69E9840];
  LODWORD(v36) = 0x1000000;
  sub_1B5DA51F0(a2, &v36, 4);
  LODWORD(v36) = 50331648;
  sub_1B5DA51F0(a2, &v36, 4);
  LODWORD(v36) = 352321536;
  sub_1B5DA51F0(a2, &v36, 4);
  v34 = 0;
  ucol_getVersion();
  sub_1B5DA51F0(a2, &v34, 4);
  ucol_getUCAVersion();
  sub_1B5DA51F0(a2, &v34, 4);
  sub_1B5DA51F0(a2, a1, 16);
  if (a3)
  {
    *&v6 = *(*(a1 + 272) + 40);
    LODWORD(v36) = bswap32(v6);
  }

  else
  {
    LODWORD(v36) = bswap32((*(*(a1 + 280) + 8) - **(a1 + 280)) >> 3);
  }

  sub_1B5DA51F0(a2, &v36, 4);
  v8 = *(a1 + 240);
  if ((v8 & 0x20) != 0)
  {
    v9 = 24596;
  }

  else
  {
    v9 = 24580;
  }

  v7.i32[0] = *(a1 + 240);
  v10 = vshlq_u32(vdupq_n_s32(v8), xmmword_1B5DC3A30);
  v10.i32[0] = vshlq_u32(v7, xmmword_1B5DC3A20).u32[0];
  v11 = vandq_s8(v10, xmmword_1B5DC3A40);
  v12 = vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
  v13 = v12.i32[0] | (v8 >> 4) & 8 | v12.i32[1] | v8 & 0x400 | (((v8 >> 12) & 1) << 17) | v9 & 0xFFFBFFFF | (((v8 >> 3) & 1) << 18);
  if (!*(a1 + 1764))
  {
    v13 |= 0x100u;
  }

  if (*(a1 + 1768))
  {
    v13 |= 0x1000u;
  }

  if ((v8 & 0x2000000) != 0)
  {
    v14 = (v8 >> 2) & 0x80000 | (((v8 >> 11) & 1) << 20) | v13;
  }

  else
  {
    v14 = (v8 >> 2) & 0x80000 | (((v8 >> 11) & 1) << 20) | v13 | 0x400000;
  }

  LODWORD(v36) = bswap32(v14);
  sub_1B5DA51F0(a2, &v36, 4);
  if (!a3)
  {
    LODWORD(v36) = bswap32(*(a1 + 1960));
    sub_1B5DA51F0(a2, &v36, 4);
    LODWORD(v36) = 0;
    sub_1B5DA51F0(a2, &v36, 4);
    LODWORD(v36) = 0;
    sub_1B5DA51F0(a2, &v36, 4);
    LODWORD(v36) = 0x80000000;
    sub_1B5DA51F0(a2, &v36, 4);
    LODWORD(v36) = 0;
    sub_1B5DA51F0(a2, &v36, 4);
LABEL_65:
    v20 = 0;
    goto LABEL_67;
  }

  LODWORD(v36) = 0x100000;
  WORD2(v36) = 0;
  BYTE6(v36) = 0;
  v37 = 0;
  LOBYTE(v38) = 0;
  if (v14)
  {
    sub_1B5D5D760(&v36, " DenseKeyCodes,", 0xFFFFuLL);
  }

  if ((v14 & 2) != 0)
  {
    sub_1B5D5D760(&v36, " CommonLetterForms,", 0xFFFFuLL);
  }

  if ((v14 & 8) != 0)
  {
    sub_1B5D5D760(&v36, " SubstitutionLists,", 0xFFFFuLL);
  }

  if ((v14 & 4) != 0)
  {
    sub_1B5D5D760(&v36, " UnigramRecordV2,", 0xFFFFuLL);
  }

  if ((v14 & 0x2000) != 0)
  {
    sub_1B5D5D760(&v36, " VarByteTrieNodesV2,", 0xFFFFuLL);
  }

  if ((v14 & 0x4000) != 0)
  {
    sub_1B5D5D760(&v36, " RelativeChildOffsetsV2,", 0xFFFFuLL);
  }

  if ((v14 & 0x10) != 0)
  {
    sub_1B5D5D760(&v36, " SkipDerivableUnigrams,", 0xFFFFuLL);
  }

  if ((v14 & 0x40) != 0)
  {
    sub_1B5D5D760(&v36, " PatriciaTrieRuns,", 0xFFFFuLL);
  }

  if ((v14 & 0x80) != 0)
  {
    sub_1B5D5D760(&v36, " CompressTrieTails,", 0xFFFFuLL);
  }

  if ((v14 & 0x20) != 0)
  {
    sub_1B5D5D760(&v36, " NonDerivablePrefixUnigrams,", 0xFFFFuLL);
  }

  if ((v14 & 0x400) != 0)
  {
    sub_1B5D5D760(&v36, " Exclude0FreqWords,", 0xFFFFuLL);
  }

  if ((v14 & 0x100) != 0)
  {
    sub_1B5D5D760(&v36, " AllSortKeysAreDistributive,", 0xFFFFuLL);
  }

  if ((v14 & 0x1000) != 0)
  {
    sub_1B5D5D760(&v36, " SortKeysChangeRetroactively", 0xFFFFuLL);
  }

  if ((v14 & 0x10000) != 0)
  {
    sub_1B5D5D760(&v36, " WriteWordIds", 0xFFFFuLL);
  }

  if ((v14 & 0x20000) != 0)
  {
    sub_1B5D5D760(&v36, " Write4ByteUnigramOffsets", 0xFFFFuLL);
  }

  if ((v14 & 0x40000) != 0)
  {
    sub_1B5D5D760(&v36, " HuffmanEncodeSurfaceForms", 0xFFFFuLL);
  }

  if ((v14 & 0x400000) != 0)
  {
    sub_1B5D5D760(&v36, " CollationMappingTable", 0xFFFFuLL);
  }

  if ((*(a1 + 243) & 4) != 0)
  {
    sub_1B5D5D760(&v36, " EnableVisuallyConfusableLookup", 0xFFFFuLL);
  }

  v15 = atomic_load(byte_1EB90C7D0);
  if (v15)
  {
    v16 = atomic_load(byte_1EB90CC20);
    if (v16)
    {
      v17 = v37;
      if (!v37)
      {
        v17 = &v38;
      }

      printf("    Options: %s", v17);
      putchar(10);
    }

    else
    {
      v18 = sub_1B5D32914();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v37;
        if (!v37)
        {
          v19 = &v38;
        }

        *buf = 136315138;
        *&buf[4] = v19;
        _os_log_impl(&dword_1B5CDB000, v18, OS_LOG_TYPE_DEFAULT, "    Options: %s", buf, 0xCu);
      }
    }
  }

  if (v37 && BYTE6(v36) == 1)
  {
    free(v37);
  }

  LODWORD(v36) = bswap32(*(a1 + 1960));
  sub_1B5DA51F0(a2, &v36, 4);
  LODWORD(v36) = 0;
  sub_1B5DA51F0(a2, &v36, 4);
  LODWORD(v36) = 0;
  sub_1B5DA51F0(a2, &v36, 4);
  LODWORD(v36) = 0x80000000;
  sub_1B5DA51F0(a2, &v36, 4);
  LODWORD(v36) = 0;
  sub_1B5DA51F0(a2, &v36, 4);
  if ((*(a1 + 240) & 0x10) == 0)
  {
    goto LABEL_65;
  }

  v20 = 8 * *(a1 + 1648) + 8;
LABEL_67:
  LODWORD(v36) = bswap32(v20);
  sub_1B5DA51F0(a2, &v36, 4);
  LODWORD(v36) = bswap32(v20 + 128);
  sub_1B5DA51F0(a2, &v36, 4);
  sub_1B5DA53E8(*(a2 + 32), 128);
  if (v20)
  {
    LODWORD(v36) = bswap32(*(a1 + 1648));
    sub_1B5DA51F0(a2, &v36, 4);
    LODWORD(v36) = 0;
    sub_1B5DA51F0(a2, &v36, 4);
    sub_1B5D8024C(buf, a1 + 328);
    v21 = *buf;
    if (*buf == &buf[8])
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      do
      {
        v23 = *(v21 + 20);
        if (v23 <= 4)
        {
          v24 = *(v21 + 8);
          sub_1B5DA51F0(a2, (v21 + 42), v23);
          v25 = *(v21 + 20);
          if (v25 <= 3)
          {
            v26 = (4 - v25) + 1;
            do
            {
              LOBYTE(v36) = 0;
              sub_1B5DA51F0(a2, &v36, 1);
              --v26;
            }

            while (v26 > 1);
          }

          LODWORD(v36) = bswap32(v24);
          sub_1B5DA51F0(a2, &v36, 4);
          v22 = (v22 + 1);
        }

        v27 = *(v21 + 1);
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = *(v21 + 2);
            v29 = *v28 == v21;
            v21 = v28;
          }

          while (!v29);
        }

        v21 = v28;
      }

      while (v28 != &buf[8]);
    }

    if (v22 != *(a1 + 1648))
    {
      sub_1B5CF7CDC(&v36);
      v30 = sub_1B5CE599C(&v38, "Common sort-key letter form table wrote ", 40);
      v31 = MEMORY[0x1B8C87F10](v30, v22);
      v32 = sub_1B5CE599C(v31, " entries, expected ", 19);
      MEMORY[0x1B8C87F10](v32, *(a1 + 1648));
      exception = __cxa_allocate_exception(0x20uLL);
      sub_1B5D32A54(&v35, &v39);
      sub_1B5D32AFC(exception, &v35);
      __cxa_throw(exception, &unk_1F2D56F00, sub_1B5D32BEC);
    }

    sub_1B5D32B78(*&buf[8]);
  }
}

void sub_1B5D3FEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, char a10, int a11, char a12, char a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  if (SHIBYTE(a16) < 0)
  {
    operator delete(a14);
    if ((v33 & 1) == 0)
    {
LABEL_6:
      sub_1B5CFBC44(&a17, MEMORY[0x1E69E54D8]);
      MEMORY[0x1B8C88080](va);
      sub_1B5D32B78(*(v34 + 8));
      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v32);
  goto LABEL_6;
}

uint64_t *sub_1B5D3FF9C(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_1B5D40048(void *a1, unsigned int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

int8x16_t sub_1B5D40274(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 1;
  v9 = a2 - 2;
  v136 = a2 - 3;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        if ((*a3)(v8, v10))
        {
          v69 = *v10;
LABEL_120:
          *v10 = *v8;
LABEL_121:
          *v8 = v69;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v72 = (*a3)(v10 + 1, v10);
      v73 = (*a3)(v10 + 2, v10 + 1);
      if (v72)
      {
        v74 = *v10;
        if (v73)
        {
          *v10 = v10[2];
          v10[2] = v74;
        }

        else
        {
          *v10 = v10[1];
          v10[1] = v74;
          if ((*a3)(v10 + 2, v10 + 1))
          {
            *(v10 + 1) = vextq_s8(*(v10 + 1), *(v10 + 1), 8uLL);
          }
        }
      }

      else if (v73)
      {
        *(v10 + 1) = vextq_s8(*(v10 + 1), *(v10 + 1), 8uLL);
        if ((*a3)(v10 + 1, v10))
        {
          *v10 = vextq_s8(*v10, *v10, 8uLL);
        }
      }

      if (!(*a3)(v8, v10 + 2))
      {
        return result;
      }

      v135 = v10[2];
      v10[2] = *v8;
      *v8 = v135;
      if (!(*a3)(v10 + 2, v10 + 1))
      {
        return result;
      }

      *(v10 + 1) = vextq_s8(*(v10 + 1), *(v10 + 1), 8uLL);
LABEL_219:
      if ((*a3)(v10 + 1, v10))
      {
        result = vextq_s8(*v10, *v10, 8uLL);
        *v10 = result;
      }

      return result;
    }

    if (v11 == 5)
    {

      sub_1B5D4104C(v10, v10 + 1, v10 + 2, v10 + 3, v8, a3);
      return result;
    }

LABEL_9:
    if (v11 <= 23)
    {
      v75 = v10 + 1;
      v77 = v10 == a2 || v75 == a2;
      if (a5)
      {
        if (!v77)
        {
          v78 = 0;
          v79 = v10;
          do
          {
            v80 = v79;
            v79 = v75;
            if ((*a3)(v75, v80))
            {
              v81 = 0;
              v82 = *v79;
              *v79 = 0;
              v139 = v82;
              for (i = v78; ; i -= 8)
              {
                v84 = (v10 + i);
                v85 = *(v10 + i);
                *v84 = 0;
                v84[1] = v85;
                if (v81)
                {
                  sub_1B5D1BE14(v81 + 84);
                }

                if (!i)
                {
                  v86 = v10;
                  goto LABEL_143;
                }

                if (!(*a3)(&v139, (v10 + i - 8)))
                {
                  break;
                }

                v81 = *v84;
              }

              v86 = (v10 + i);
LABEL_143:
              v87 = v139;
              v139 = 0;
              v88 = *v86;
              *v86 = v87;
              if (v88)
              {
                sub_1B5D1BE14(v88 + 84);
                if (v139)
                {
                  sub_1B5D1BE14(v139 + 84);
                }
              }
            }

            v75 = v79 + 1;
            v78 += 8;
          }

          while (v79 + 1 != a2);
        }
      }

      else if (!v77)
      {
        do
        {
          v128 = v75;
          if ((*a3)(v75, a1))
          {
            v129 = 0;
            v130 = *v128;
            *v128 = 0;
            v139 = v130;
            while (1)
            {
              v131 = *a1;
              *a1 = 0;
              a1[1] = v131;
              if (v129)
              {
                sub_1B5D1BE14(v129 + 84);
              }

              if (!(*a3)(&v139, a1 - 1))
              {
                break;
              }

              v129 = *a1--;
            }

            v132 = v139;
            v139 = 0;
            v133 = *a1;
            *a1 = v132;
            if (v133)
            {
              sub_1B5D1BE14(v133 + 84);
              if (v139)
              {
                sub_1B5D1BE14(v139 + 84);
              }
            }
          }

          v75 = v128 + 1;
          a1 = v128;
        }

        while (v128 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 == a2)
      {
        return result;
      }

      v89 = v12 >> 1;
      v90 = v12 >> 1;
      do
      {
        v91 = v90;
        if (v89 >= v90)
        {
          v92 = (2 * v90) | 1;
          v93 = &a1[v92];
          if (2 * v90 + 2 < v11 && (*a3)(&a1[v92], v93 + 1))
          {
            ++v93;
            v92 = 2 * v91 + 2;
          }

          v94 = &a1[v91];
          if (!(*a3)(v93, v94))
          {
            v95 = *v94;
            *v94 = 0;
            v139 = v95;
            do
            {
              v96 = v93;
              v97 = *v93;
              *v93 = 0;
              v98 = *v94;
              *v94 = v97;
              if (v98)
              {
                sub_1B5D1BE14(v98 + 84);
              }

              if (v89 < v92)
              {
                break;
              }

              v99 = (2 * v92) | 1;
              v93 = &a1[v99];
              v92 = 2 * v92 + 2;
              if (v92 >= v11)
              {
                v92 = v99;
              }

              else if ((*a3)(&a1[v99], v93 + 1))
              {
                ++v93;
              }

              else
              {
                v92 = v99;
              }

              v94 = v96;
            }

            while (!(*a3)(v93, &v139));
            v100 = v139;
            v139 = 0;
            v101 = *v96;
            *v96 = v100;
            if (v101)
            {
              sub_1B5D1BE14(v101 + 84);
            }

            if (v139)
            {
              sub_1B5D1BE14(v139 + 84);
            }
          }
        }

        v90 = v91 - 1;
      }

      while (v91);
      while (2)
      {
        if (v11 >= 2)
        {
          v102 = 0;
          v103 = *a1;
          *a1 = 0;
          v104 = a1;
          do
          {
            v105 = &v104[v102];
            v106 = v105 + 1;
            v107 = 2 * v102;
            v102 = (2 * v102) | 1;
            v108 = v107 + 2;
            if (v107 + 2 < v11)
            {
              v109 = v105 + 2;
              if ((*a3)(v105 + 1, v105 + 2))
              {
                v106 = v109;
                v102 = v108;
              }
            }

            v110 = *v106;
            *v106 = 0;
            v111 = *v104;
            *v104 = v110;
            if (v111)
            {
              sub_1B5D1BE14(v111 + 84);
            }

            v104 = v106;
          }

          while (v102 <= ((v11 - 2) >> 1));
          v112 = a2 - 1;
          if (v106 == a2 - 1)
          {
            v127 = *v106;
            *v106 = v103;
            if (!v127)
            {
              goto LABEL_195;
            }
          }

          else
          {
            v113 = *v112;
            *v112 = 0;
            v114 = *v106;
            *v106 = v113;
            if (v114)
            {
              sub_1B5D1BE14(v114 + 84);
            }

            v115 = *v112;
            *v112 = v103;
            if (v115)
            {
              sub_1B5D1BE14(v115 + 84);
            }

            v116 = (v106 - a1 + 8) >> 3;
            v117 = v116 < 2;
            v118 = v116 - 2;
            if (v117)
            {
              goto LABEL_195;
            }

            v119 = v118 >> 1;
            v120 = &a1[v118 >> 1];
            if (!(*a3)(v120, v106))
            {
              goto LABEL_195;
            }

            v121 = *v106;
            *v106 = 0;
            v139 = v121;
            do
            {
              v122 = v120;
              v123 = *v120;
              *v120 = 0;
              v124 = *v106;
              *v106 = v123;
              if (v124)
              {
                sub_1B5D1BE14(v124 + 84);
              }

              if (!v119)
              {
                break;
              }

              v119 = (v119 - 1) >> 1;
              v120 = &a1[v119];
              v106 = v122;
            }

            while ((*a3)(v120, &v139));
            v125 = v139;
            v139 = 0;
            v126 = *v122;
            *v122 = v125;
            if (!v126)
            {
              goto LABEL_195;
            }

            sub_1B5D1BE14(v126 + 84);
            v127 = v139;
            if (!v139)
            {
              goto LABEL_195;
            }
          }

          sub_1B5D1BE14(v127 + 84);
        }

LABEL_195:
        --a2;
        v117 = v11-- > 2;
        if (!v117)
        {
          return result;
        }

        continue;
      }
    }

    v13 = &v10[v11 >> 1];
    v14 = *a3;
    if (v11 >= 0x81)
    {
      v15 = v14(&a1[v11 >> 1], a1);
      v16 = (*a3)(v8, &a1[v11 >> 1]);
      if (v15)
      {
        v17 = *a1;
        if (v16)
        {
          *a1 = *v8;
          goto LABEL_26;
        }

        *a1 = *v13;
        *v13 = v17;
        if ((*a3)(v8, &a1[v11 >> 1]))
        {
          v17 = *v13;
          *v13 = *v8;
LABEL_26:
          *v8 = v17;
        }
      }

      else if (v16)
      {
        v21 = *v13;
        *v13 = *v8;
        *v8 = v21;
        if ((*a3)(&a1[v11 >> 1], a1))
        {
          v22 = *a1;
          *a1 = *v13;
          *v13 = v22;
        }
      }

      v25 = v13 - 1;
      v26 = (*a3)(v13 - 1, a1 + 1);
      v27 = (*a3)(v9, v13 - 1);
      if (v26)
      {
        v28 = a1[1];
        if (v27)
        {
          a1[1] = *v9;
          goto LABEL_38;
        }

        a1[1] = *v25;
        *v25 = v28;
        if ((*a3)(v9, v13 - 1))
        {
          v28 = *v25;
          *v25 = *v9;
LABEL_38:
          *v9 = v28;
        }
      }

      else if (v27)
      {
        v29 = *v25;
        *v25 = *v9;
        *v9 = v29;
        if ((*a3)(v13 - 1, a1 + 1))
        {
          v30 = a1[1];
          a1[1] = *v25;
          *v25 = v30;
        }
      }

      v31 = (*a3)(v13 + 1, a1 + 2);
      v32 = (*a3)(v136, v13 + 1);
      if (v31)
      {
        v33 = a1[2];
        if (v32)
        {
          v34 = a2 - 3;
          a1[2] = *v136;
          goto LABEL_47;
        }

        a1[2] = v13[1];
        v13[1] = v33;
        if ((*a3)(v136, v13 + 1))
        {
          v33 = v13[1];
          v34 = a2 - 3;
          v13[1] = *v136;
LABEL_47:
          *v34 = v33;
        }
      }

      else if (v32)
      {
        v35 = v13[1];
        v13[1] = *v136;
        *v136 = v35;
        if ((*a3)(v13 + 1, a1 + 2))
        {
          v36 = a1[2];
          a1[2] = v13[1];
          v13[1] = v36;
        }
      }

      v37 = (*a3)(&a1[v11 >> 1], v13 - 1);
      v38 = (*a3)(v13 + 1, &a1[v11 >> 1]);
      if (v37)
      {
        v39 = *v25;
        if (v38)
        {
          v40 = *v13;
          *v25 = v13[1];
          v13[1] = v39;
LABEL_57:
          v44 = *a1;
          *a1 = v40;
          *v13 = v44;
          goto LABEL_58;
        }

        *v25 = *v13;
        *v13 = v39;
        v43 = (*a3)(v13 + 1, &a1[v11 >> 1]);
        v40 = *v13;
        if (!v43)
        {
          goto LABEL_57;
        }

        v42 = v13[1];
        *v13 = v42;
        v13[1] = v40;
      }

      else
      {
        v40 = *v13;
        if (!v38)
        {
          goto LABEL_57;
        }

        *v13 = v13[1];
        v13[1] = v40;
        v41 = (*a3)(&a1[v11 >> 1], v13 - 1);
        v40 = *v13;
        if (!v41)
        {
          goto LABEL_57;
        }

        v42 = *v25;
        *v25 = v40;
        *v13 = v42;
      }

      v40 = v42;
      goto LABEL_57;
    }

    v18 = v14(a1, &a1[v11 >> 1]);
    v19 = (*a3)(v8, a1);
    if (!v18)
    {
      if (v19)
      {
        v23 = *a1;
        *a1 = *v8;
        *v8 = v23;
        if ((*a3)(a1, &a1[v11 >> 1]))
        {
          v24 = *v13;
          *v13 = *a1;
          *a1 = v24;
        }
      }

      goto LABEL_58;
    }

    v20 = *v13;
    if (v19)
    {
      *v13 = *v8;
LABEL_35:
      *v8 = v20;
      goto LABEL_58;
    }

    *v13 = *a1;
    *a1 = v20;
    if ((*a3)(v8, a1))
    {
      v20 = *a1;
      *a1 = *v8;
      goto LABEL_35;
    }

LABEL_58:
    --a4;
    if (a5)
    {
      v45 = *a1;
LABEL_61:
      *a1 = 0;
      v139 = v45;
      v47 = a1;
      do
      {
        ++v47;
      }

      while ((*a3)(v47, &v139));
      v48 = v47 - 1;
      v49 = a2;
      if (v47 - 1 == a1)
      {
        v49 = a2;
        do
        {
          if (v47 >= v49)
          {
            break;
          }

          --v49;
        }

        while (!(*a3)(v49, &v139));
      }

      else
      {
        do
        {
          --v49;
        }

        while (!(*a3)(v49, &v139));
      }

      if (v47 < v49)
      {
        v50 = v47;
        v51 = v49;
        do
        {
          v52 = *v50;
          *v50 = *v51;
          *v51 = v52;
          do
          {
            ++v50;
          }

          while ((*a3)(v50, &v139));
          v48 = v50 - 1;
          do
          {
            --v51;
          }

          while (!(*a3)(v51, &v139));
        }

        while (v50 < v51);
      }

      if (v48 != a1)
      {
        v53 = *v48;
        *v48 = 0;
        v54 = *a1;
        *a1 = v53;
        if (v54)
        {
          sub_1B5D1BE14(v54 + 84);
        }
      }

      v55 = v139;
      v139 = 0;
      v56 = *v48;
      *v48 = v55;
      if (v56)
      {
        sub_1B5D1BE14(v56 + 84);
      }

      if (v139)
      {
        sub_1B5D1BE14(v139 + 84);
      }

      if (v47 < v49)
      {
        goto LABEL_86;
      }

      v57 = sub_1B5D4123C(a1, v48, a3);
      v10 = v48 + 1;
      if (sub_1B5D4123C(v48 + 1, a2, a3))
      {
        a2 = v48;
        if (v57)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v57)
      {
LABEL_86:
        result = sub_1B5D40274(a1, v48, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v48 + 1;
      }
    }

    else
    {
      v46 = (*a3)(a1 - 1, a1);
      v45 = *a1;
      if (v46)
      {
        goto LABEL_61;
      }

      *a1 = 0;
      v139 = v45;
      v10 = a1;
      if ((*a3)(&v139, v8))
      {
        do
        {
          ++v10;
        }

        while (!(*a3)(&v139, v10));
      }

      else
      {
        v58 = a1 + 1;
        do
        {
          v10 = v58;
          if (v58 >= a2)
          {
            break;
          }

          v59 = (*a3)(&v139, v58);
          v58 = v10 + 1;
        }

        while (!v59);
      }

      v60 = a2;
      if (v10 < a2)
      {
        v60 = a2;
        do
        {
          --v60;
        }

        while ((*a3)(&v139, v60));
      }

      while (v10 < v60)
      {
        v61 = *v10;
        *v10 = *v60;
        *v60 = v61;
        do
        {
          ++v10;
        }

        while (!(*a3)(&v139, v10));
        do
        {
          --v60;
        }

        while ((*a3)(&v139, v60));
      }

      v62 = v10 - 1;
      if (v10 - 1 != a1)
      {
        v63 = *v62;
        *v62 = 0;
        v64 = *a1;
        *a1 = v63;
        if (v64)
        {
          sub_1B5D1BE14(v64 + 84);
        }
      }

      v65 = v139;
      v139 = 0;
      v66 = *v62;
      *v62 = v65;
      if (v66)
      {
        sub_1B5D1BE14(v66 + 84);
      }

      if (v139)
      {
        sub_1B5D1BE14(v139 + 84);
      }

      a5 = 0;
    }
  }

  v67 = (*a3)(v10 + 1, v10);
  v68 = (*a3)(v8, v10 + 1);
  if (!v67)
  {
    if (!v68)
    {
      return result;
    }

    v134 = v10[1];
    v10[1] = *v8;
    *v8 = v134;
    goto LABEL_219;
  }

  v69 = *v10;
  if (v68)
  {
    goto LABEL_120;
  }

  *v10 = v10[1];
  v10[1] = v69;
  if ((*a3)(v8, v10 + 1))
  {
    v69 = v10[1];
    v10[1] = *v8;
    goto LABEL_121;
  }

  return result;
}

void sub_1B5D40FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    sub_1B5D1BE14(a12 + 84);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D4104C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    v14 = *a1;
    if (v13)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v14;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v14;
    if ((*a6)(a3, a2))
    {
      v14 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    if ((*a6)(a2, a1))
    {
      v16 = *a1;
      *a1 = *a2;
      *a2 = v16;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a6)(a3, a2))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a6)(a2, a1))
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  result = (*a6)(a5, a4);
  if (result)
  {
    v21 = *a4;
    *a4 = *a5;
    *a5 = v21;
    result = (*a6)(a4, a3);
    if (result)
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      result = (*a6)(a3, a2);
      if (result)
      {
        v23 = *a2;
        *a2 = *a3;
        *a3 = v23;
        result = (*a6)(a2, a1);
        if (result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

BOOL sub_1B5D4123C(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a2 - 1;
        v10 = (*a3)(a1 + 1, a1);
        v11 = (*a3)(v9, a1 + 1);
        if (v10)
        {
          v12 = *a1;
          if (v11)
          {
            *a1 = *v9;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v12;
            if (!(*a3)(v9, a1 + 1))
            {
              return 1;
            }

            v12 = a1[1];
            a1[1] = *v9;
          }

          *v9 = v12;
          return 1;
        }

        if (!v11)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *v9;
        *v9 = v21;
        break;
      case 4:
        v17 = a2 - 1;
        v18 = (*a3)(a1 + 1, a1);
        v19 = (*a3)(a1 + 2, a1 + 1);
        if (v18)
        {
          v20 = *a1;
          if (v19)
          {
            *a1 = a1[2];
            a1[2] = v20;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v20;
            if ((*a3)(a1 + 2, a1 + 1))
            {
              *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
            }
          }
        }

        else if (v19)
        {
          *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
          if ((*a3)(a1 + 1, a1))
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        if (!(*a3)(v17, a1 + 2))
        {
          return 1;
        }

        v34 = a1[2];
        a1[2] = *v17;
        *v17 = v34;
        if (!(*a3)(a1 + 2, a1 + 1))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        break;
      case 5:
        sub_1B5D4104C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      default:
        goto LABEL_13;
    }

    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = (*a3)(a1 + 1, a1);
  v15 = (*a3)(a1 + 2, a1 + 1);
  if (v14)
  {
    v16 = *a1;
    if (v15)
    {
      *a1 = a1[2];
      a1[2] = v16;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v16;
      if ((*a3)(a1 + 2, a1 + 1))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v15)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v22 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  while (1)
  {
    if ((*a3)(v22, v13))
    {
      v25 = 0;
      v26 = *v22;
      *v22 = 0;
      v35 = v26;
      for (i = v23; ; i -= 8)
      {
        v28 = a1 + i;
        v29 = *(a1 + i + 16);
        *(v28 + 2) = 0;
        *(v28 + 3) = v29;
        if (v25)
        {
          sub_1B5D1BE14(v25 + 84);
        }

        if (i == -16)
        {
          v30 = a1;
          goto LABEL_43;
        }

        if (!(*a3)(&v35, (a1 + i + 8)))
        {
          break;
        }

        v25 = *(v28 + 2);
      }

      v30 = (a1 + i + 16);
LABEL_43:
      v31 = v35;
      v35 = 0;
      v32 = *v30;
      *v30 = v31;
      if (v32)
      {
        sub_1B5D1BE14(v32 + 84);
      }

      if (v35)
      {
        sub_1B5D1BE14(v35 + 84);
      }

      if (++v24 == 8)
      {
        return v22 + 1 == a2;
      }
    }

    v13 = v22;
    v23 += 8;
    if (++v22 == a2)
    {
      return 1;
    }
  }
}

void sub_1B5D41628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1B5D1BE14(a10 + 84);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1B5D41644(std::string *a1, char *__s, std::string *a3)
{
  v6 = strlen(__s);
  v7 = std::string::insert(a3, 0, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void sub_1B5D416A8(void *a1)
{
  if (a1)
  {
    sub_1B5D416A8(*a1);
    sub_1B5D416A8(a1[1]);
    if (*(a1 + 16) >= 0xFu)
    {
      v2 = a1[5];
      if (v2)
      {
        MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
      }
    }

    operator delete(a1);
  }
}

void *sub_1B5D4171C(uint64_t a1, void *a2, unsigned __int16 *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    if (v6 <= 0xE)
    {
      v7 = a3 + 1;
    }

    else
    {
      v7 = *(a3 + 1);
    }

    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 32);
        v10 = *(v4 + 40);
        if (v9 <= 0xE)
        {
          v11 = v8 + 34;
        }

        else
        {
          v11 = v10;
        }

        if (v9 >= v6)
        {
          v12 = v6;
        }

        else
        {
          v12 = v9;
        }

        v13 = memcmp(v7, v11, v12);
        v14 = v6 < v9;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (!v14)
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_22;
        }
      }

      v15 = memcmp(v11, v7, v12);
      v16 = v9 < v6;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_22:
  *a2 = v8;
  return v5;
}

void sub_1B5D41818(char a1, void *__p)
{
  if (a1)
  {
    if (*(__p + 16) >= 0xFu)
    {
      v3 = __p[5];
      if (v3)
      {
        MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
      }
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_1B5D4188C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 280);
  v6 = *v5;
  for (i = v5[1]; i != v6; i -= 8)
  {
    v9 = *(i - 8);
    v8 = v9;
    if (v9)
    {
      sub_1B5D1BE14(v8 + 84);
    }
  }

  v5[1] = v6;
  if (*(a1 + 312))
  {
    sub_1B5D1C01C(*(a1 + 304));
    *(a1 + 304) = 0;
    v10 = *(a1 + 296);
    if (v10)
    {
      for (j = 0; j != v10; ++j)
      {
        *(*(a1 + 288) + 8 * j) = 0;
      }
    }

    *(a1 + 312) = 0;
  }

  if (*(a2 + 8))
  {
    v12 = *(a2 + 8);
  }

  else
  {
    v12 = (a2 + 16);
  }

  v13 = fopen(v12, "r");
  if (!v13)
  {
    sub_1B5CF7CDC(v57);
    v44 = sub_1B5CE599C(v58, "Failed to open ", 15);
    if (*(a2 + 8))
    {
      v45 = *(a2 + 8);
    }

    else
    {
      v45 = (a2 + 16);
    }

    v46 = strlen(v45);
    v47 = sub_1B5CE599C(v44, v45, v46);
    v48 = sub_1B5CE599C(v47, " (errno=", 8);
    v49 = __error();
    v50 = MEMORY[0x1B8C87F00](v48, *v49);
    sub_1B5CE599C(v50, ")", 1);
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1B5D3F684(v59, v57);
    sub_1B5D32AFC(exception, v59);
    __cxa_throw(exception, &unk_1F2D56F00, sub_1B5D32BEC);
  }

  v14 = v13;
  v52[0] = &unk_1F2D58190;
  *v57 = 0;
  v52[1] = uspoof_open();
  while (!feof(v14) && !ferror(v14))
  {
    v15 = fgets(v57, 256, v14);
    if (v15)
    {
      v16 = v15;
      *v59 = 0x100000;
      *&v59[4] = 0;
      v59[6] = 1;
      *v60 = 0;
      v17 = strlen(v15);
      sub_1B5CDCAAC(v59, v16, 0, v17);
      LODWORD(v61) = 0x100000;
      WORD2(v61) = 0;
      BYTE6(v61) = 1;
      v62 = 0;
      sub_1B5CDCAAC(&v61, " \t\n", 0, 3u);
      sub_1B5D5D354(&v53, v59, &v61);
      if (v62 && BYTE6(v61) == 1)
      {
        free(v62);
      }

      if (*v60 && v59[6] == 1)
      {
        free(*v60);
      }

      if (v53)
      {
        LODWORD(v61) = 0x100000;
        WORD2(v61) = 0;
        BYTE6(v61) = 1;
        v62 = 0;
        sub_1B5CDCAAC(&v61, " \t\n", 0, 3u);
        if (v61)
        {
          *v59 = 0x100000;
          *&v59[4] = 0;
          v59[6] = 0;
          *v60 = 0;
          v60[8] = 0;
          sub_1B5CDCB48(v59, v53);
          v18 = v53;
          if (v53)
          {
            v19 = 0;
            do
            {
              v20 = v54;
              if (!v54)
              {
                v20 = &v55;
              }

              v21 = v20[v19];
              v22 = v61;
              if (v61)
              {
                v23 = v62;
                if (!v62)
                {
                  v23 = &v63;
                }

                while (1)
                {
                  v24 = *v23++;
                  if (v24 == v21)
                  {
                    break;
                  }

                  if (!--v22)
                  {
                    goto LABEL_35;
                  }
                }
              }

              else
              {
LABEL_35:
                sub_1B5D5CC40(v59, v21);
                v18 = v53;
              }

              ++v19;
            }

            while (v19 < v18);
          }
        }

        else
        {
          sub_1B5D5CABC(v59, &v53);
        }

        if (*v59)
        {
          if (!v53)
          {
            if (BYTE6(v53) || (sub_1B5D5C954(&v53), v53 < 2uLL))
            {
              sub_1B5CDCB48(&v53, 1);
              v27 = v54;
              if (!v54)
              {
                v27 = &v55;
              }

              v26 = 1 - v53;
              v25 = &v27[v53];
            }

            else
            {
              if (v54)
              {
                v25 = v54 + 1;
              }

              else
              {
                v25 = v56;
              }

              v26 = v53 - 1;
            }

            bzero(v25, v26);
            LOWORD(v53) = 1;
            WORD2(v53) = 0;
          }

          v28 = v54;
          if (!v54)
          {
            v28 = &v55;
          }

          v29 = *v28;
          if (*v60 && v59[6] == 1)
          {
            free(*v60);
          }

          if (v62 && BYTE6(v61) == 1)
          {
            free(v62);
          }

          if (v29 != 35)
          {
            v30 = *(a1 + 256);
            if (v30)
            {
              atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
            }

            operator new();
          }
        }

        else
        {
          if (*v60 && v59[6] == 1)
          {
            free(*v60);
          }

          if (v62 && BYTE6(v61) == 1)
          {
            free(v62);
          }
        }
      }

      if (v54 && BYTE6(v53) == 1)
      {
        free(v54);
      }
    }
  }

  v31 = atomic_load(byte_1EB90C7D0);
  if (v31)
  {
    v32 = atomic_load(byte_1EB90CC20);
    if (v32)
    {
      printf("    Read %d unigrams.  Registered %lu words.", 0, (*(*(a1 + 280) + 8) - **(a1 + 280)) >> 3);
      putchar(10);
    }

    else
    {
      v33 = sub_1B5D32914();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = (*(*(a1 + 280) + 8) - **(a1 + 280)) >> 3;
        *v59 = 67109376;
        *&v59[4] = 0;
        *v60 = 2048;
        *&v60[2] = v34;
        _os_log_impl(&dword_1B5CDB000, v33, OS_LOG_TYPE_DEFAULT, "    Read %d unigrams.  Registered %lu words.", v59, 0x12u);
      }
    }
  }

  if (*(a1 + 1880))
  {
    v35 = atomic_load(byte_1EB90C7D0);
    if (v35)
    {
      v36 = atomic_load(byte_1EB90CC20);
      if (v36)
      {
        printf("        Excluded %d 0-frequency neighbor-key macros.", *(a1 + 1880));
        putchar(10);
      }

      else
      {
        v37 = sub_1B5D32914();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = *(a1 + 1880);
          *v59 = 67109120;
          *&v59[4] = v38;
          _os_log_impl(&dword_1B5CDB000, v37, OS_LOG_TYPE_DEFAULT, "        Excluded %d 0-frequency neighbor-key macros.", v59, 8u);
        }
      }
    }
  }

  v39 = atomic_load(byte_1EB90C7D0);
  if (v39)
  {
    v40 = atomic_load(byte_1EB90CC20);
    if (v40)
    {
      printf("        Merged %d duplicate surface forms.  %d shared sort-key strings remain", 0, *(a1 + 1884));
      putchar(10);
    }

    else
    {
      v41 = sub_1B5D32914();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *(a1 + 1884);
        *v59 = 67109376;
        *&v59[4] = 0;
        *v60 = 1024;
        *&v60[2] = v42;
        _os_log_impl(&dword_1B5CDB000, v41, OS_LOG_TYPE_DEFAULT, "        Merged %d duplicate surface forms.  %d shared sort-key strings remain", v59, 0xEu);
      }
    }
  }

  return sub_1B5D4DEA0(v52);
}

void sub_1B5D43EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, unsigned __int16 *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, void *a49)
{
  v52 = (v49 + 8);
  STACK[0x260] = &STACK[0x2A0];
  sub_1B5D1BF88(&STACK[0x260]);
  v53 = *(v50 - 248);
  if (v53 && *(v50 - 250) == 1)
  {
    free(v53);
  }

  v54 = *(v50 - 216);
  if (v54 && *(v50 - 218) == 1)
  {
    free(v54);
  }

  v55 = *(v50 - 144);
  if (v55 && *(v50 - 146) == 1)
  {
    free(v55);
  }

  *(v50 - 152) = &a38;
  sub_1B5D1BF88((v50 - 152));
  v56 = *(v50 - 184);
  if (v56 && *(v50 - 186) == 1)
  {
    free(v56);
  }

  if (STACK[0x288] && LOBYTE(STACK[0x286]) == 1)
  {
    free(STACK[0x288]);
  }

  *(v50 - 192) = &a41;
  sub_1B5D1BF88((v50 - 192));
  v57 = *(v49 + 320);
  if (v57)
  {
    sub_1B5CDD904(v57);
  }

  *(v50 - 192) = a13;
  sub_1B5D1BF88((v50 - 192));
  *(v50 - 192) = a14;
  sub_1B5D1BF88((v50 - 192));
  v58 = *(v49 + 240);
  if (v58)
  {
    sub_1B5D1BC34((v58 + 24));
  }

  v59 = *(v49 + 232);
  if (v59)
  {
    sub_1B5D1BC34((v59 + 24));
  }

  v60 = *(v49 + 224);
  if (v60)
  {
    sub_1B5D1BCD4(v60);
  }

  v61 = *a12;
  if (*a12)
  {
    *(v49 + 208) = v61;
    operator delete(v61);
  }

  if (*(v49 + 176) >= 0xFu)
  {
    v62 = *(v49 + 184);
    if (v62)
    {
      MEMORY[0x1B8C880C0](v62, 0x1000C8077774924);
    }
  }

  if (*(v49 + 152) >= 0xFu)
  {
    v63 = *(v49 + 160);
    if (v63)
    {
      MEMORY[0x1B8C880C0](v63, 0x1000C8077774924);
    }
  }

  if (*a21 >= 0xFu)
  {
    v64 = *(v49 + 144);
    if (v64)
    {
      MEMORY[0x1B8C880C0](v64, 0x1000C8077774924);
    }
  }

  v65 = *(v49 + 112);
  if (v65 && *(v49 + 110) == 1)
  {
    free(v65);
  }

  if (*v52 && *(v49 + 6) == 1)
  {
    free(*v52);
  }

  if (a19)
  {
    sub_1B5CDD904(a19);
    MEMORY[0x1B8C880F0](v49, 0x1072C403E83EB7CLL);
    sub_1B5CDD904(a19);
  }

  else
  {
    MEMORY[0x1B8C880F0](v49, 0x1072C403E83EB7CLL);
  }

  if (a49)
  {
    if (a48 == 1)
    {
      free(a49);
    }
  }

  sub_1B5D4DEA0(&a36);
  _Unwind_Resume(a1);
}

void sub_1B5D4480C(uint64_t a1)
{
  v244 = *MEMORY[0x1E69E9840];
  v2 = **(a1 + 280);
  if (*(*(a1 + 280) + 8) != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v3);
      v226 = 0;
      LODWORD(v241) = 0x100000;
      WORD2(v241) = 0;
      BYTE6(v241) = 0;
      v242 = 0;
      LOBYTE(v243[0]) = 0;
      LODWORD(v239) = 0x100000;
      WORD2(v239) = 0;
      BYTE6(v239) = 0;
      *(&v239 + 1) = 0;
      v240[0] = 0;
      sub_1B5D5CABC(v237, v5);
      v219 = v4;
      v6 = 0;
      for (i = 0; ; v6 = HIWORD(i))
      {
        v7 = *&v237[4];
        if (!*&v237[4])
        {
          sub_1B5CDF8F4(v237);
          v7 = *&v237[4];
        }

        if (v6 >= v7)
        {
          break;
        }

        v8 = sub_1B5D8EBAC(v237);
        sub_1B5D5CC40(&v239, v8);
        (*(**(v5 + 312) + 8))(&v224);
        if (v226 && !sub_1B5D5234C(&v224, &v226))
        {
          if ((*(v5 + 329) & 0x80) != 0)
          {
            v9 = atomic_load(byte_1EB90C7D0);
            if (v9)
            {
              v10 = atomic_load(byte_1EB90CC20);
              if (v10)
              {
                if (v242)
                {
                  v11 = v242;
                }

                else
                {
                  v11 = v243;
                }

                if (*(&v239 + 1))
                {
                  v12 = *(&v239 + 1);
                }

                else
                {
                  v12 = v240;
                }

                if (*(v5 + 8))
                {
                  v13 = *(v5 + 8);
                }

                else
                {
                  v13 = (v5 + 16);
                }

                if (v226 <= 0xEu)
                {
                  v14 = v227;
                }

                else
                {
                  v14 = v228;
                }

                sub_1B5D8C1E4(buf, v14, v226);
                v15 = *&buf[8];
                if (v224 <= 0xEu)
                {
                  v16 = &v224 + 2;
                }

                else
                {
                  v16 = v225;
                }

                sub_1B5D8C1E4(&__p, v16, v224);
                v17 = &buf[16];
                if (v15)
                {
                  v17 = v15;
                }

                v18 = v233;
                if (!v233)
                {
                  v18 = v234;
                }

                printf("NOTE: Prefix sort-key changed retroactively at %s -> %s for %s:  0x%s -> 0x%s ", v11, v12, v13, v17, v18);
                if (v233 && BYTE6(__p) == 1)
                {
                  free(v233);
                }

                if (*&buf[8] && buf[6] == 1)
                {
                  free(*&buf[8]);
                }

                putchar(10);
              }

              else
              {
                v19 = sub_1B5D32914();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  if (v242)
                  {
                    v20 = v242;
                  }

                  else
                  {
                    v20 = v243;
                  }

                  if (*(&v239 + 1))
                  {
                    v21 = *(&v239 + 1);
                  }

                  else
                  {
                    v21 = v240;
                  }

                  if (*(v5 + 8))
                  {
                    v22 = *(v5 + 8);
                  }

                  else
                  {
                    v22 = v5 + 16;
                  }

                  if (v226 <= 0xEu)
                  {
                    v23 = v227;
                  }

                  else
                  {
                    v23 = v228;
                  }

                  sub_1B5D8C1E4(&__p, v23, v226);
                  v24 = v233;
                  if (v224 <= 0xEu)
                  {
                    v25 = &v224 + 2;
                  }

                  else
                  {
                    v25 = v225;
                  }

                  sub_1B5D8C1E4(&v229, v25, v224);
                  v26 = v230;
                  v27 = v234;
                  if (v24)
                  {
                    v27 = v24;
                  }

                  *buf = 136316162;
                  if (!v230)
                  {
                    v26 = &v231;
                  }

                  *&buf[4] = v20;
                  *&buf[12] = 2080;
                  *&buf[14] = v21;
                  *&buf[22] = 2080;
                  *&buf[24] = v22;
                  *&buf[32] = 2080;
                  *&buf[34] = v27;
                  *&buf[42] = 2080;
                  v236 = v26;
                  _os_log_impl(&dword_1B5CDB000, v19, OS_LOG_TYPE_DEFAULT, "NOTE: Prefix sort-key changed retroactively at %s -> %s for %s:  0x%s -> 0x%s ", buf, 0x34u);
                  if (v230 && BYTE6(v229) == 1)
                  {
                    free(v230);
                  }

                  if (v233 && BYTE6(__p) == 1)
                  {
                    free(v233);
                  }
                }
              }
            }
          }

          if (v224 >= 0xFu && v225)
          {
            MEMORY[0x1B8C880C0](v225, 0x1000C8077774924);
          }

          break;
        }

        sub_1B5CDF770(&v241, &v239);
        sub_1B5D522BC(&v226, &v224);
        if (v224 >= 0xFu)
        {
          if (v225)
          {
            MEMORY[0x1B8C880C0](v225, 0x1000C8077774924);
          }
        }
      }

      if (*&v237[8])
      {
        v28 = v237[6] == 1;
      }

      else
      {
        v28 = 0;
      }

      if (v28)
      {
        free(*&v237[8]);
      }

      if (*(&v239 + 1) && BYTE6(v239) == 1)
      {
        free(*(&v239 + 1));
      }

      if (v242 && BYTE6(v241) == 1)
      {
        free(v242);
      }

      if (v226 >= 0xFu && v228)
      {
        MEMORY[0x1B8C880C0](v228, 0x1000C8077774924);
      }

      if (v6 < v7)
      {
        ++*(a1 + 1768);
      }

      v29 = *(v5 + 112);
      if (!v29)
      {
        v29 = v5 + 120;
      }

      *v237 = v29;
      v30 = *(v5 + 104);
      *&v237[8] = 0;
      *&v237[12] = v30;
      sub_1B5CDCF70(v237);
      v31 = *(v5 + 104);
      v32 = *(v5 + 112);
      if (!v32)
      {
        v32 = (v5 + 120);
      }

      v241 = v32;
      LODWORD(v242) = v31;
      HIDWORD(v242) = v31;
      v243[0] = 0;
      sub_1B5CDCF70(&v241);
      v221 = *v237;
      if (*v237 != v241)
      {
LABEL_335:
        __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
      }

      v223 = v242;
LABEL_94:
      if (*&v237[8] != v223)
      {
        v33 = *&v237[16];
        (*(**(a1 + 1704) + 16))(&v239);
        v34 = v239;
        if (v239 > 2u)
        {
          ++*(a1 + 336);
          if (v34 >= 0xF)
          {
            *buf = v34;
            operator new[]();
          }
        }

        *buf = v239;
        v35 = v239;
        *&buf[16] = v33;
        if (v239 >= 0xFu)
        {
          v36 = *(&v239 + 1);
        }

        else
        {
          v36 = &buf[2];
        }

        v37 = sub_1B5CE3124(v36, v239);
        v38 = v33 + v37;
        v39 = *(a1 + 1728);
        if (!*&v39)
        {
          goto LABEL_118;
        }

        v40 = vcnt_s8(v39);
        v40.i16[0] = vaddlv_u8(v40);
        v41 = v40.u32[0];
        if (v40.u32[0] > 1uLL)
        {
          v42 = v33 + v37;
          if (v38 >= *&v39)
          {
            v42 = v38 % *&v39;
          }
        }

        else
        {
          v42 = (*&v39 - 1) & v38;
        }

        v43 = *(*(a1 + 1720) + 8 * v42);
        if (!v43 || (v44 = *v43) == 0)
        {
LABEL_118:
          operator new();
        }

        while (1)
        {
          v45 = v44[1];
          if (v45 == v38)
          {
            if (sub_1B5CE401C(v44 + 8, buf) && *(v44 + 8) == v33)
            {
              ++*(v44 + 10);
              if (v35 >= 0xF && *&buf[8])
              {
                MEMORY[0x1B8C880C0](*&buf[8], 0x1000C8077774924);
              }

              if (v239 >= 0xFu && *(&v239 + 1))
              {
                MEMORY[0x1B8C880C0](*(&v239 + 1), 0x1000C8077774924);
              }

              sub_1B5CDCF70(v237);
              if (*v237 != v221)
              {
                goto LABEL_335;
              }

              goto LABEL_94;
            }
          }

          else
          {
            if (v41 > 1)
            {
              if (v45 >= *&v39)
              {
                v45 %= *&v39;
              }
            }

            else
            {
              v45 &= *&v39 - 1;
            }

            if (v45 != v42)
            {
              goto LABEL_118;
            }
          }

          v44 = *v44;
          if (!v44)
          {
            goto LABEL_118;
          }
        }
      }

      v3 = (v219 + 1);
      v2 = **(a1 + 280);
      v4 = v219 + 1;
    }

    while (v3 < (*(*(a1 + 280) + 8) - v2) >> 3);
  }

  memset(buf, 0, 32);
  *&buf[32] = 1065353216;
  v46 = *(a1 + 1736);
  if (!v46)
  {
    goto LABEL_154;
  }

  do
  {
    v47 = *(v46 + 8);
    if (v47 <= 0xE)
    {
      v48 = v46 + 18;
    }

    else
    {
      v48 = v46[3];
    }

    v49 = sub_1B5CE3124(v48, v47);
    v50 = v49;
    v51 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_148;
    }

    v52 = vcnt_s8(*&buf[8]);
    v52.i16[0] = vaddlv_u8(v52);
    v53 = v52.u32[0];
    if (v52.u32[0] > 1uLL)
    {
      v54 = v49;
      if (*&buf[8] <= v49)
      {
        v54 = v49 % *&buf[8];
      }
    }

    else
    {
      v54 = (*&buf[8] - 1) & v49;
    }

    v55 = *(*buf + 8 * v54);
    if (!v55 || (v56 = *v55) == 0)
    {
LABEL_148:
      operator new();
    }

    while (1)
    {
      v57 = *(v56 + 1);
      if (v57 == v50)
      {
        break;
      }

      if (v53 > 1)
      {
        if (v57 >= v51)
        {
          v57 %= v51;
        }
      }

      else
      {
        v57 &= v51 - 1;
      }

      if (v57 != v54)
      {
        goto LABEL_148;
      }

LABEL_147:
      v56 = *v56;
      if (!v56)
      {
        goto LABEL_148;
      }
    }

    if (!sub_1B5CE401C(v56 + 8, v46 + 8))
    {
      goto LABEL_147;
    }

    v58 = *(v46 + 10);
    if (v58 > *(v56 + 9))
    {
      *(v56 + 8) = *(v46 + 8);
      *(v56 + 9) = v58;
    }

    v46 = *v46;
  }

  while (v46);
  v59 = *&buf[16];
  if (*&buf[16])
  {
    do
    {
      sub_1B5CE2A50(a1 + 328, v59 + 8, *(v59 + 8));
      v59 = *v59;
    }

    while (v59);
  }

LABEL_154:
  v220 = *(a1 + 1648);
  sub_1B5D329D0(buf);
  v60 = *(a1 + 280);
  v61 = *v60;
  v62 = v60[1];
  if (*v60 != v62)
  {
    do
    {
      v63 = *v61;
      v64 = (*v61 + 152);
      if (*v64 >= 0xFu)
      {
        v65 = *(v63 + 160);
        if (v65)
        {
          MEMORY[0x1B8C880C0](v65, 0x1000C8077774924);
        }
      }

      *v64 = 0;
      *(v64 + 1) = 0;
      v67 = (v63 + 176);
      v66 = *(v63 + 176);
      *(v63 + 168) = 0;
      if (v66 >= 0xF)
      {
        v68 = *(v63 + 184);
        if (v68)
        {
          MEMORY[0x1B8C880C0](v68, 0x1000C8077774924);
        }
      }

      *v67 = 0;
      *(v63 + 184) = 0;
      *(v63 + 192) = 0;
      __p = 0;
      v233 = 0;
      v234[0] = 0;
      sub_1B5D5CABC(v237, v63);
      v69 = 0;
      for (i = 0; ; v69 = HIWORD(i))
      {
        v70 = *&v237[4];
        if (!*&v237[4])
        {
          sub_1B5CDF8F4(v237);
          v70 = *&v237[4];
        }

        if (v69 >= v70)
        {
          break;
        }

        buf[0] = *v64;
        sub_1B5D7A7FC(&__p, buf);
        v71 = sub_1B5D8EBAC(v237);
        (*(**(a1 + 1704) + 16))(&v241);
        if (v241 >= 3u)
        {
          ++*(a1 + 336);
        }

        sub_1B5CDD368(buf, a1 + 328, v64, v71, &v241);
        if (*v64 >= 0xFu)
        {
          v72 = *(v63 + 160);
          if (v72)
          {
            MEMORY[0x1B8C880C0](v72, 0x1000C8077774924);
          }
        }

        v73 = *buf;
        *v64 = *buf;
        if (v73 >= 0xF)
        {
          *buf = 0;
        }

        *(v63 + 168) = buf[16];
        if (*(v63 + 176) >= 0xFu)
        {
          v74 = *(v63 + 184);
          if (v74)
          {
            MEMORY[0x1B8C880C0](v74, 0x1000C8077774924);
          }
        }

        v75 = *&buf[24];
        *v67 = *&buf[24];
        if (v75 >= 0xF)
        {
          *&buf[24] = 0;
        }

        *(v63 + 192) = *&buf[40];
        if (*buf >= 0xFu && *&buf[8])
        {
          MEMORY[0x1B8C880C0](*&buf[8], 0x1000C8077774924);
        }

        if (v241 >= 0xFu && v242)
        {
          MEMORY[0x1B8C880C0](v242, 0x1000C8077774924);
        }
      }

      v76 = sub_1B5CE401C((v63 + 136), v64);
      v77 = v63 + 200;
      *(v63 + 208) = *(v63 + 200);
      if (v76)
      {
        v78 = __p;
        v79 = v233 - __p;
        if (v233 != __p)
        {
          v80 = 0;
          v81 = 0;
          v82 = 0;
          do
          {
            if (v82 <= v78[v80])
            {
              do
              {
                buf[0] = v81;
                sub_1B5D7A7FC(v77, buf);
                v83 = (v82 + 1);
                v84 = v82 >= v78[v80];
                LODWORD(v82) = v82 + 1;
              }

              while (!v84);
            }

            else
            {
              v83 = v82;
            }

            v80 = ++v81;
            v82 = v83;
          }

          while (v79 > v81);
        }
      }

      else
      {
        ++*(a1 + 1760);
        (*(**(v63 + 312) + 8))(buf);
        v85 = sub_1B5CE401C(v64, buf);
        if (*buf >= 0xFu && *&buf[8])
        {
          MEMORY[0x1B8C880C0](*&buf[8], 0x1000C8077774924);
        }

        if (!v85)
        {
          v87 = *(a1 + 1764) + 1;
          *(a1 + 1764) = v87;
          if ((*(v63 + 329) & 0x80) != 0 && v87 <= 0x13)
          {
            v88 = atomic_load(byte_1EB90C7D0);
            if (v88)
            {
              v89 = atomic_load(byte_1EB90CC20);
              if (v89)
              {
                if (*(v63 + 112))
                {
                  v90 = *(v63 + 112);
                }

                else
                {
                  v90 = (v63 + 120);
                }

                if (*(v63 + 8))
                {
                  v91 = *(v63 + 8);
                }

                else
                {
                  v91 = (v63 + 16);
                }

                v92 = *(v63 + 88);
                v93 = *(v63 + 152);
                if (v93 <= 0xE)
                {
                  v94 = (v63 + 154);
                }

                else
                {
                  v94 = *(v63 + 160);
                }

                sub_1B5D8C1E4(buf, v94, v93);
                if (*&buf[8])
                {
                  v95 = *&buf[8];
                }

                else
                {
                  v95 = &buf[16];
                }

                (*(**(v63 + 312) + 8))(&v239);
                if (v239 <= 0xEu)
                {
                  v96 = &v239 + 2;
                }

                else
                {
                  v96 = *(&v239 + 1);
                }

                sub_1B5D8C1E4(&v241, v96, v239);
                v97 = v242;
                if (!v242)
                {
                  v97 = v243;
                }

                printf("NOTE:  Sort key for %s->%s freq=%.1f is not distributive:\n    0x%s / 0x%s", v90, v91, v92, v95, v97);
                if (v242 && BYTE6(v241) == 1)
                {
                  free(v242);
                }

                if (v239 >= 0xFu && *(&v239 + 1))
                {
                  MEMORY[0x1B8C880C0](*(&v239 + 1), 0x1000C8077774924);
                }

                if (*&buf[8] && buf[6] == 1)
                {
                  free(*&buf[8]);
                }

                putchar(10);
              }

              else
              {
                v98 = sub_1B5D32914();
                if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                {
                  if (*(v63 + 112))
                  {
                    v99 = *(v63 + 112);
                  }

                  else
                  {
                    v99 = v63 + 120;
                  }

                  if (*(v63 + 8))
                  {
                    v100 = *(v63 + 8);
                  }

                  else
                  {
                    v100 = v63 + 16;
                  }

                  v101 = *(v63 + 88);
                  v102 = *(v63 + 152);
                  if (v102 <= 0xE)
                  {
                    v103 = (v63 + 154);
                  }

                  else
                  {
                    v103 = *(v63 + 160);
                  }

                  sub_1B5D8C1E4(&v241, v103, v102);
                  if (v242)
                  {
                    v104 = v242;
                  }

                  else
                  {
                    v104 = v243;
                  }

                  (*(**(v63 + 312) + 8))(&v229);
                  if (v229 <= 0xEu)
                  {
                    v105 = &v229 + 2;
                  }

                  else
                  {
                    v105 = v230;
                  }

                  sub_1B5D8C1E4(&v239, v105, v229);
                  v106 = *(&v239 + 1);
                  if (!*(&v239 + 1))
                  {
                    v106 = v240;
                  }

                  *buf = 136316162;
                  *&buf[4] = v99;
                  *&buf[12] = 2080;
                  *&buf[14] = v100;
                  *&buf[22] = 2048;
                  *&buf[24] = v101;
                  *&buf[32] = 2080;
                  *&buf[34] = v104;
                  *&buf[42] = 2080;
                  v236 = v106;
                  _os_log_impl(&dword_1B5CDB000, v98, OS_LOG_TYPE_DEFAULT, "NOTE:  Sort key for %s->%s freq=%.1f is not distributive:\n    0x%s / 0x%s", buf, 0x34u);
                  if (*(&v239 + 1) && BYTE6(v239) == 1)
                  {
                    free(*(&v239 + 1));
                  }

                  if (v229 >= 0xFu && v230)
                  {
                    MEMORY[0x1B8C880C0](v230, 0x1000C8077774924);
                  }

                  if (v242 && BYTE6(v241) == 1)
                  {
                    free(v242);
                  }
                }
              }
            }
          }
        }
      }

      if (*&v237[8])
      {
        v86 = v237[6] == 1;
      }

      else
      {
        v86 = 0;
      }

      if (v86)
      {
        free(*&v237[8]);
      }

      if (__p)
      {
        operator delete(__p);
      }

      ++v61;
    }

    while (v61 != v62);
    v107 = *(a1 + 280);
    v61 = *v107;
    v62 = v107[1];
  }

  if (v61 != v62)
  {
    v108 = &__p + 2;
    v109 = &v237[16];
    v110 = v243;
    v111 = v240;
    do
    {
      v112 = *v61;
      v113 = *(a1 + 240);
      sub_1B5D80088(v237, a1 + 328, (*v61 + 136));
      (*(**(a1 + 1704) + 8))(&__p);
      if (!sub_1B5CE401C((v112 + 136), &__p))
      {
        v114 = *(a1 + 1772) + 1;
        *(a1 + 1772) = v114;
        if ((v113 & 0x8000) != 0 && v114 <= 0x13)
        {
          v115 = atomic_load(byte_1EB90C7D0);
          if (v115)
          {
            v116 = atomic_load(byte_1EB90CC20);
            if (v116)
            {
              if (*(v112 + 112))
              {
                v117 = *(v112 + 112);
              }

              else
              {
                v117 = (v112 + 120);
              }

              v118 = *(v112 + 136);
              if (v118 <= 0xE)
              {
                v119 = (v112 + 138);
              }

              else
              {
                v119 = *(v112 + 144);
              }

              sub_1B5D8C1E4(buf, v119, v118);
              v120 = *&buf[8];
              v121 = *&v237[8];
              if (__p <= 0xEu)
              {
                v122 = v108;
              }

              else
              {
                v122 = v233;
              }

              sub_1B5D8C1E4(&v241, v122, __p);
              if (v121)
              {
                v123 = v121;
              }

              else
              {
                v123 = v109;
              }

              v124 = &buf[16];
              if (v120)
              {
                v124 = v120;
              }

              v125 = v242;
              if (!v242)
              {
                v125 = v110;
              }

              printf("WARNING:  Derivation of base form failed.  Expected %s (0x%s).  Got %s (0x%s).  ", v117, v124, v123, v125);
              if (v242 && BYTE6(v241) == 1)
              {
                free(v242);
              }

              if (*&buf[8] && buf[6] == 1)
              {
                free(*&buf[8]);
              }

              putchar(10);
            }

            else
            {
              v126 = sub_1B5D32914();
              if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
              {
                v222 = v110;
                v127 = v109;
                v128 = v108;
                v129 = v111;
                if (*(v112 + 112))
                {
                  v130 = *(v112 + 112);
                }

                else
                {
                  v130 = v112 + 120;
                }

                v131 = *(v112 + 136);
                if (v131 <= 0xE)
                {
                  v132 = (v112 + 138);
                }

                else
                {
                  v132 = *(v112 + 144);
                }

                sub_1B5D8C1E4(&v241, v132, v131);
                v133 = v242;
                v134 = *&v237[8];
                if (__p <= 0xEu)
                {
                  v135 = v128;
                }

                else
                {
                  v135 = v233;
                }

                sub_1B5D8C1E4(&v239, v135, __p);
                v136 = *(&v239 + 1);
                if (v134)
                {
                  v137 = v134;
                }

                else
                {
                  v137 = v127;
                }

                *buf = 136315906;
                v138 = v222;
                if (v133)
                {
                  v138 = v133;
                }

                *&buf[4] = v130;
                v111 = v129;
                if (!*(&v239 + 1))
                {
                  v136 = v129;
                }

                *&buf[12] = 2080;
                *&buf[14] = v138;
                *&buf[22] = 2080;
                *&buf[24] = v137;
                *&buf[32] = 2080;
                *&buf[34] = v136;
                _os_log_impl(&dword_1B5CDB000, v126, OS_LOG_TYPE_DEFAULT, "WARNING:  Derivation of base form failed.  Expected %s (0x%s).  Got %s (0x%s).  ", buf, 0x2Au);
                if (*(&v239 + 1) && BYTE6(v239) == 1)
                {
                  free(*(&v239 + 1));
                }

                v108 = v128;
                if (v242 && BYTE6(v241) == 1)
                {
                  free(v242);
                }

                v109 = v127;
                v110 = v222;
              }
            }
          }
        }
      }

      if (__p >= 0xFu && v233)
      {
        MEMORY[0x1B8C880C0](v233, 0x1000C8077774924);
      }

      if (*&v237[8] && v237[6] == 1)
      {
        free(*&v237[8]);
      }

      ++v61;
    }

    while (v61 != v62);
  }

  v139 = *(a1 + 1764);
  v140 = atomic_load(byte_1EB90C7D0);
  if (v139)
  {
    if (v140)
    {
      v141 = atomic_load(byte_1EB90CC20);
      if (v141)
      {
        printf("    %d surface-forms sort-keys are non-distributive.");
        goto LABEL_334;
      }

      v143 = sub_1B5D32914();
      if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
      {
        v144 = *(a1 + 1764);
        *buf = 67109120;
        *&buf[4] = v144;
        v145 = "    %d surface-forms sort-keys are non-distributive.";
        v146 = v143;
        v147 = 8;
        goto LABEL_340;
      }
    }
  }

  else if (v140)
  {
    v142 = atomic_load(byte_1EB90CC20);
    if (v142)
    {
      printf("    ALL surface-form sort-keys are distributive!");
LABEL_334:
      putchar(10);
    }

    else
    {
      v148 = sub_1B5D32914();
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v145 = "    ALL surface-form sort-keys are distributive!";
        v146 = v148;
        v147 = 2;
LABEL_340:
        _os_log_impl(&dword_1B5CDB000, v146, OS_LOG_TYPE_DEFAULT, v145, buf, v147);
      }
    }
  }

  if (*(a1 + 1768))
  {
    v149 = atomic_load(byte_1EB90C7D0);
    if (v149)
    {
      v150 = atomic_load(byte_1EB90CC20);
      if (v150)
      {
        printf("    %d unigram sort-keys do not build cumulatively. They change retroactively!", *(a1 + 1768));
        putchar(10);
      }

      else
      {
        v151 = sub_1B5D32914();
        if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
        {
          v152 = *(a1 + 1768);
          *buf = 67109120;
          *&buf[4] = v152;
          _os_log_impl(&dword_1B5CDB000, v151, OS_LOG_TYPE_DEFAULT, "    %d unigram sort-keys do not build cumulatively. They change retroactively!", buf, 8u);
        }
      }
    }
  }

  if (*(a1 + 1772))
  {
    v153 = atomic_load(byte_1EB90C7D0);
    if (v153)
    {
      v154 = atomic_load(byte_1EB90CC20);
      if (v154)
      {
        printf("    %d unigram base forms are not derivable from their sort-keys!", *(a1 + 1772));
        putchar(10);
      }

      else
      {
        v155 = sub_1B5D32914();
        if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
        {
          v156 = *(a1 + 1772);
          *buf = 67109120;
          *&buf[4] = v156;
          _os_log_impl(&dword_1B5CDB000, v155, OS_LOG_TYPE_DEFAULT, "    %d unigram base forms are not derivable from their sort-keys!", buf, 8u);
        }
      }
    }
  }

  v157 = *(a1 + 1760) - *(a1 + 1764);
  if (v157 >= 1)
  {
    v158 = atomic_load(byte_1EB90C7D0);
    if (v158)
    {
      v159 = atomic_load(byte_1EB90CC20);
      if (v159)
      {
        printf("    %d surface forms don't align with their dict/sort keys.", v157);
        putchar(10);
      }

      else
      {
        v160 = sub_1B5D32914();
        if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v157;
          _os_log_impl(&dword_1B5CDB000, v160, OS_LOG_TYPE_DEFAULT, "    %d surface forms don't align with their dict/sort keys.", buf, 8u);
        }
      }
    }
  }

  v161 = atomic_load(byte_1EB90C7D0);
  if (v161)
  {
    v162 = atomic_load(byte_1EB90CC20);
    if (v162)
    {
      printf("Mapped %d sort key units to letter forms.", v220);
      putchar(10);
    }

    else
    {
      v163 = sub_1B5D32914();
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v220;
        _os_log_impl(&dword_1B5CDB000, v163, OS_LOG_TYPE_DEFAULT, "Mapped %d sort key units to letter forms.", buf, 8u);
      }
    }
  }

  v164 = *(a1 + 240);
  if ((v164 & 0x28000) != 0)
  {
    sub_1B5D8024C(&v241, a1 + 328);
    v165 = v241;
    if (v241 != &v242)
    {
      do
      {
        v166 = *(v165 + 20);
        if (v166 <= 0xE)
        {
          v167 = v165 + 42;
        }

        else
        {
          v167 = v165[6];
        }

        sub_1B5D8C1E4(buf, v167, v166);
        v168 = *&buf[8];
        sub_1B5CDD970(v237, *(v165 + 8));
        if (v168)
        {
          v169 = v168;
        }

        else
        {
          v169 = &buf[16];
        }

        v170 = *&v237[8];
        if (!*&v237[8])
        {
          v170 = &v237[16];
        }

        printf("\tSK=0x%s: %s\n", v169, v170);
        if (*&v237[8] && v237[6] == 1)
        {
          free(*&v237[8]);
        }

        if (*&buf[8] && buf[6] == 1)
        {
          free(*&buf[8]);
        }

        v171 = v165[1];
        if (v171)
        {
          do
          {
            v172 = v171;
            v171 = *v171;
          }

          while (v171);
        }

        else
        {
          do
          {
            v172 = v165[2];
            v28 = *v172 == v165;
            v165 = v172;
          }

          while (!v28);
        }

        v165 = v172;
      }

      while (v172 != &v242);
    }

    sub_1B5D32B78(v242);
    v164 = *(a1 + 240);
  }

  if ((v164 & 0x28080) != 0)
  {
    v173 = atomic_load(byte_1EB90C7D0);
    if (v173)
    {
      v174 = atomic_load(byte_1EB90CC20);
      if (v174)
      {
        printf("Non-empty surface-form substitution lists:");
        putchar(10);
      }

      else
      {
        v175 = sub_1B5D32914();
        if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B5CDB000, v175, OS_LOG_TYPE_DEFAULT, "Non-empty surface-form substitution lists:", buf, 2u);
        }
      }
    }

    v176 = *(a1 + 280);
    v177 = *v176;
    if (v176[1] != *v176)
    {
      v178 = 0;
      v179 = 0;
      while (1)
      {
        memset(buf, 0, 24);
        LODWORD(v241) = 0;
        sub_1B5DA31A4(*(v177 + 8 * v178), a1 + 328, buf, &v241);
        if (*&buf[8] != *buf)
        {
          v180 = atomic_load(byte_1EB90C7D0);
          if (v180)
          {
            v181 = atomic_load(byte_1EB90CC20);
            if (v181)
            {
              v182 = *(v177 + 8 * v178);
              v183 = *(v182 + 112);
              if (!v183)
              {
                v183 = (v182 + 120);
              }

              v184 = *(v182 + 8);
              v185 = (v182 + 16);
              if (v184)
              {
                v185 = v184;
              }

              printf("    %s -> %s            ", v183, v185);
              putchar(10);
            }

            else
            {
              v186 = sub_1B5D32914();
              if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
              {
                v187 = *(v177 + 8 * v178);
                v188 = *(v187 + 112);
                if (!v188)
                {
                  v188 = v187 + 120;
                }

                v189 = *(v187 + 8);
                v190 = v187 + 16;
                if (v189)
                {
                  v190 = v189;
                }

                *v237 = 136315394;
                *&v237[4] = v188;
                *&v237[12] = 2080;
                *&v237[14] = v190;
                _os_log_impl(&dword_1B5CDB000, v186, OS_LOG_TYPE_DEFAULT, "    %s -> %s            ", v237, 0x16u);
              }
            }
          }

          v191 = *buf;
          if (*&buf[8] != *buf)
          {
            break;
          }
        }

LABEL_437:
        *v237 = buf;
        sub_1B5D46D6C(v237);
        v215 = *(a1 + 280);
        v177 = *v215;
        v178 = ++v179;
        if (v179 >= ((v215[1] - *v215) >> 3))
        {
          goto LABEL_438;
        }
      }

      v192 = 0;
      v193 = 1;
      while (2)
      {
        v194 = *(v191 + 40 * v192 + 32);
        if ((v194 & 0x20) != 0)
        {
          v197 = atomic_load(byte_1EB90C7D0);
          if ((v197 & 1) == 0)
          {
            goto LABEL_436;
          }

          v198 = atomic_load(byte_1EB90CC20);
          if (v198)
          {
            printf("<%d: %s  ");
LABEL_422:
            putchar(10);
            goto LABEL_436;
          }

          v200 = sub_1B5D32914();
          if (!os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_436;
          }

          v201 = *buf + 40 * v192;
          v202 = *(v201 + 8);
          v203 = v201 + 16;
          if (v202)
          {
            v203 = v202;
          }

          *v237 = 67109378;
          *&v237[4] = v194 & 0xFFFFFFDF;
          *&v237[8] = 2080;
          *&v237[10] = v203;
          v204 = v200;
          v205 = "<%d: %s  ";
        }

        else
        {
          v195 = atomic_load(byte_1EB90C7D0);
          if ((v194 & 0x40) == 0)
          {
            if (v195)
            {
              v196 = atomic_load(byte_1EB90CC20);
              if (v196)
              {
                printf("@%d: %s  ");
                goto LABEL_422;
              }

              v206 = sub_1B5D32914();
              if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
              {
                v207 = *buf + 40 * v192;
                v208 = *(v207 + 8);
                v209 = v207 + 16;
                if (v208)
                {
                  v209 = v208;
                }

                *v237 = 67109378;
                *&v237[4] = v194;
                *&v237[8] = 2080;
                *&v237[10] = v209;
                v204 = v206;
                v205 = "@%d: %s  ";
                break;
              }
            }

LABEL_436:
            v192 = v193;
            v191 = *buf;
            if (0xCCCCCCCCCCCCCCCDLL * ((*&buf[8] - *buf) >> 3) <= v193++)
            {
              goto LABEL_437;
            }

            continue;
          }

          if ((v195 & 1) == 0)
          {
            goto LABEL_436;
          }

          v199 = atomic_load(byte_1EB90CC20);
          if (v199)
          {
            printf("^%d: %s  ");
            goto LABEL_422;
          }

          v210 = sub_1B5D32914();
          if (!os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_436;
          }

          v211 = *buf + 40 * v192;
          v212 = *(v211 + 8);
          v213 = v211 + 16;
          if (v212)
          {
            v213 = v212;
          }

          *v237 = 67109378;
          *&v237[4] = v194 & 0xFFFFFF9F;
          *&v237[8] = 2080;
          *&v237[10] = v213;
          v204 = v210;
          v205 = "^%d: %s  ";
        }

        break;
      }

      _os_log_impl(&dword_1B5CDB000, v204, OS_LOG_TYPE_DEFAULT, v205, v237, 0x12u);
      goto LABEL_436;
    }

LABEL_438:
    v216 = atomic_load(byte_1EB90C7D0);
    if (v216)
    {
      v217 = atomic_load(byte_1EB90CC20);
      if (v217)
      {
        putchar(10);
      }

      else
      {
        v218 = sub_1B5D32914();
        if (os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B5CDB000, v218, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
        }
      }
    }
  }
}

void sub_1B5D46A00(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int16 a35, uint64_t a36, __int16 a37, uint64_t a38, __int16 a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, void *a44, uint64_t a45, uint64_t a46, char a47, int a48, char a49, char a50, uint64_t a51)
{
  if (a39 >= 0xFu && a40)
  {
    MEMORY[0x1B8C880C0](a40, 0x1000C8077774924, a3, a4, a5, a6, a7, a8);
  }

  v53 = *(v51 - 144);
  if (v53 && *(v51 - 146) == 1)
  {
    free(v53);
  }

  v54 = *(v51 - 216);
  if (v54)
  {
    v55 = *(v51 - 218) == 1;
  }

  else
  {
    v55 = 0;
  }

  if (v55)
  {
    free(v54);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D46D6C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 4);
        if (v6 && *(v4 - 34) == 1)
        {
          free(v6);
        }

        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_1B5D46E00(uint64_t **a1, int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_1B5D46EE4(uint64_t **a1, int a2, int a3, void **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v5 = v4;
    v6 = *(v4 + 8);
    if (v6 != a2)
    {
      break;
    }

    v7 = *(v5 + 9);
    v8 = v7 == a3;
    if (v7 > a3)
    {
LABEL_12:
      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v7 >= a3)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }

      if (v8)
      {
        v9 = 0;
      }

      if ((v9 & 0x80) == 0)
      {
        return v5;
      }

LABEL_18:
      v4 = v5[1];
      if (!v4)
      {
        goto LABEL_19;
      }
    }
  }

  if (v6 > a2)
  {
    goto LABEL_12;
  }

  if (v6 >= a2)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  if (v10 < 0)
  {
    goto LABEL_18;
  }

  return v5;
}

void sub_1B5D46FF0(void *a1)
{
  if (a1)
  {
    sub_1B5D46FF0(*a1);
    sub_1B5D46FF0(a1[1]);

    operator delete(a1);
  }
}

unsigned __int16 *sub_1B5D4703C(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (*(a2 + 1))
  {
    v5 = *(a2 + 1);
  }

  else
  {
    v5 = (a2 + 8);
  }

  v6 = sub_1B5CE3124(v5, *a2);
  v7 = v6;
  v8 = a1[1];
  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v8 <= v6)
    {
      v11 = v6 % v8;
    }
  }

  else
  {
    v11 = (v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= v8)
      {
        v14 %= v8;
      }
    }

    else
    {
      v14 &= v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_22;
    }

LABEL_21:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_22;
    }
  }

  result = (v13 + 2);
  if (v13 + 2 != a2)
  {
    result = sub_1B5D5DD60(result, a2);
    if ((result & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  return result;
}

void sub_1B5D472AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1B5D48994(va);
  _Unwind_Resume(a1);
}

void sub_1B5D472C4(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3, char a4)
{
  v139[2] = *MEMORY[0x1E69E9840];
LABEL_2:
  v7 = a1;
  v125 = a1 + 8;
  v126 = a1 - 8;
  v127 = a1 + 24;
  while (1)
  {
    v8 = (a2 - v7) >> 5;
    v9 = v8 - 2;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:
          sub_1B5D48358(v7, v7 + 32, (a2 - 16));
          return;
        case 4:
          sub_1B5D48484(v7, v7 + 32, v7 + 64, (a2 - 16));
          return;
        case 5:
          sub_1B5D48578(v7, v7 + 32, v7 + 64, v7 + 96, (a2 - 16));
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        if (*(a2 - 3))
        {
          v62 = *(a2 - 3);
        }

        else
        {
          v62 = (a2 - 8);
        }

        if (*(v7 + 8))
        {
          v63 = *(v7 + 8);
        }

        else
        {
          v63 = (v7 + 16);
        }

        if (strcmp(v62, v63) < 0)
        {
          sub_1B5D482B0(v7, a2 - 16);
        }

        return;
      }
    }

    if (v8 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v7 != a2)
      {
        v130 = a2;
        v79 = v9 >> 1;
        v80 = v9 >> 1;
        do
        {
          v81 = v80;
          if (v79 >= v80)
          {
            v82 = (2 * v80) | 1;
            v83 = v7 + 32 * v82;
            if (2 * v80 + 2 < v8)
            {
              v84 = *(v83 + 8) ? *(v83 + 8) : (v83 + 16);
              v85 = *(v83 + 40) ? *(v83 + 40) : (v83 + 48);
              v86 = strcmp(v84, v85);
              v83 += (v86 >> 26) & 0x20;
              if (v86 < 0)
              {
                v82 = 2 * v81 + 2;
              }
            }

            v87 = v7 + 32 * v81;
            if (*(v83 + 8))
            {
              v88 = *(v83 + 8);
            }

            else
            {
              v88 = (v83 + 16);
            }

            if (*(v87 + 8))
            {
              v89 = *(v87 + 8);
            }

            else
            {
              v89 = (v87 + 16);
            }

            if ((strcmp(v88, v89) & 0x80000000) == 0)
            {
              v135 = 0x100000;
              v136 = 0;
              v137 = 0;
              v138 = 0;
              sub_1B5D5CBBC(&v135, (v7 + 32 * v81));
              do
              {
                v90 = v83;
                sub_1B5D5CBBC(v87, v83);
                if (v79 < v82)
                {
                  break;
                }

                v91 = (2 * v82) | 1;
                v83 = v7 + 32 * v91;
                v92 = 2 * v82 + 2;
                if (v92 < v8)
                {
                  v93 = *(v83 + 8) ? *(v83 + 8) : (v83 + 16);
                  v94 = *(v83 + 40) ? *(v83 + 40) : (v83 + 48);
                  v95 = strcmp(v93, v94);
                  v83 += (v95 >> 26) & 0x20;
                  if (v95 < 0)
                  {
                    v91 = v92;
                  }
                }

                v96 = *(v83 + 8) ? *(v83 + 8) : (v83 + 16);
                v97 = (v138 ? v138 : v139);
                v87 = v90;
                v82 = v91;
              }

              while ((strcmp(v96, v97) & 0x80000000) == 0);
              sub_1B5D5CBBC(v90, &v135);
              if (v138)
              {
                v98 = v137 == 1;
              }

              else
              {
                v98 = 0;
              }

              if (v98)
              {
                free(v138);
              }
            }
          }

          v80 = v81 - 1;
        }

        while (v81);
        v99 = v130;
        do
        {
          if (v8 >= 2)
          {
            v131 = 0x100000;
            v132 = 0;
            v133 = 0;
            v134 = 0;
            sub_1B5D5CBBC(&v131, v7);
            v100 = 0;
            v101 = v7;
            do
            {
              v102 = v101 + 32 * v100;
              v103 = v102 + 32;
              v104 = (2 * v100) | 1;
              v100 = 2 * v100 + 2;
              if (v100 >= v8)
              {
                v100 = v104;
              }

              else
              {
                if (*(v102 + 40))
                {
                  v105 = *(v102 + 40);
                }

                else
                {
                  v105 = (v102 + 48);
                }

                if (*(v102 + 72))
                {
                  v106 = *(v102 + 72);
                }

                else
                {
                  v106 = (v102 + 80);
                }

                if (strcmp(v105, v106) >= 0)
                {
                  v100 = v104;
                }

                else
                {
                  v103 = v102 + 64;
                }
              }

              sub_1B5D5CBBC(v101, v103);
              v101 = v103;
            }

            while (v100 <= ((v8 - 2) >> 1));
            if (v103 == v99 - 32)
            {
              sub_1B5D5CBBC(v103, &v131);
            }

            else
            {
              sub_1B5D5CBBC(v103, (v99 - 32));
              sub_1B5D5CBBC(v99 - 32, &v131);
              v107 = (v103 - v7 + 32) >> 5;
              v108 = v107 < 2;
              v109 = v107 - 2;
              if (!v108)
              {
                v110 = v109 >> 1;
                v111 = v7 + 32 * (v109 >> 1);
                v112 = *(v111 + 8) ? *(v111 + 8) : (v111 + 16);
                v113 = *(v103 + 8) ? *(v103 + 8) : (v103 + 16);
                if (strcmp(v112, v113) < 0)
                {
                  v135 = 0x100000;
                  v136 = 0;
                  v137 = 0;
                  v138 = 0;
                  sub_1B5D5CBBC(&v135, v103);
                  do
                  {
                    v114 = v111;
                    sub_1B5D5CBBC(v103, v111);
                    if (!v110)
                    {
                      break;
                    }

                    v110 = (v110 - 1) >> 1;
                    v111 = v7 + 32 * v110;
                    v115 = *(v111 + 8) ? *(v111 + 8) : (v111 + 16);
                    v116 = (v138 ? v138 : v139);
                    v103 = v114;
                  }

                  while (strcmp(v115, v116) < 0);
                  sub_1B5D5CBBC(v114, &v135);
                  if (v138 && v137 == 1)
                  {
                    free(v138);
                  }
                }
              }
            }

            if (v134 && v133 == 1)
            {
              free(v134);
            }
          }

          v99 -= 32;
          v108 = v8-- > 2;
        }

        while (v108);
      }

      return;
    }

    v10 = v7 + 32 * (v8 >> 1);
    v11 = (a2 - 16);
    if (v8 < 0x81)
    {
      sub_1B5D48358(v7 + 32 * (v8 >> 1), v7, v11);
    }

    else
    {
      sub_1B5D48358(v7, v7 + 32 * (v8 >> 1), v11);
      sub_1B5D48358(v7 + 32, v10 - 32, (a2 - 32));
      sub_1B5D48358(v7 + 64, v10 + 32, (a2 - 48));
      sub_1B5D48358(v10 - 32, v7 + 32 * (v8 >> 1), v10 + 32);
      v135 = 0x100000;
      v136 = 0;
      v137 = 0;
      v138 = 0;
      sub_1B5D5CBBC(&v135, v7);
      sub_1B5D5CBBC(v7, (v7 + 32 * (v8 >> 1)));
      sub_1B5D5CBBC(v7 + 32 * (v8 >> 1), &v135);
      if (v138 && v137 == 1)
      {
        free(v138);
      }
    }

    --a3;
    if ((a4 & 1) == 0)
    {
      v12 = *(v7 - 24) ? *(v7 - 24) : v126;
      v13 = *(v7 + 8) ? *(v7 + 8) : v125;
      if ((strcmp(v12, v13) & 0x80000000) == 0)
      {
        v135 = 0x100000;
        v136 = 0;
        v137 = 0;
        v138 = 0;
        sub_1B5D5CBBC(&v135, v7);
        if (v138)
        {
          v42 = v138;
        }

        else
        {
          v42 = v139;
        }

        if (*(a2 - 3))
        {
          v43 = *(a2 - 3);
        }

        else
        {
          v43 = (a2 - 8);
        }

        v44 = (v7 + 48);
        if (strcmp(v42, v43) < 0)
        {
          do
          {
            if (*(v44 - 1))
            {
              v45 = *(v44 - 1);
            }

            else
            {
              v45 = v44;
            }

            v44 += 32;
          }

          while ((strcmp(v42, v45) & 0x80000000) == 0);
          a1 = (v44 - 48);
        }

        else
        {
          do
          {
            a1 = (v44 - 16);
            if (v44 - 16 >= a2)
            {
              break;
            }

            v46 = *(v44 - 1) ? *(v44 - 1) : v44;
            v44 += 32;
          }

          while ((strcmp(v42, v46) & 0x80000000) == 0);
        }

        v47 = a2;
        if (a1 < a2)
        {
          v48 = a2;
          do
          {
            v47 = (v48 - 32);
            v49 = *(v48 - 24);
            v50 = (v48 - 16);
            if (v49)
            {
              v51 = v49;
            }

            else
            {
              v51 = v50;
            }

            v52 = strcmp(v42, v51);
            v48 = v47;
          }

          while (v52 < 0);
        }

        while (a1 < v47)
        {
          sub_1B5D482B0(a1, v47);
          if (v138)
          {
            v53 = v138;
          }

          else
          {
            v53 = v139;
          }

          v54 = a1 + 24;
          do
          {
            v55 = v54;
            v56 = *(v54 - 1);
            if (v56)
            {
              v57 = v56;
            }

            else
            {
              v57 = v55;
            }

            v58 = strcmp(v53, v57);
            v54 = (v55 + 32);
          }

          while ((v58 & 0x80000000) == 0);
          a1 = (v55 - 16);
          do
          {
            v59 = *(v47 - 3);
            v60 = (v47 - 8);
            v47 -= 16;
            if (v59)
            {
              v61 = v59;
            }

            else
            {
              v61 = v60;
            }
          }

          while (strcmp(v53, v61) < 0);
        }

        if (a1 - 16 != v7)
        {
          sub_1B5D5CBBC(v7, a1 - 16);
        }

        sub_1B5D5CBBC((a1 - 16), &v135);
        if (v138 && v137 == 1)
        {
          free(v138);
        }

        a4 = 0;
        goto LABEL_2;
      }
    }

    v129 = a3;
    v135 = 0x100000;
    v136 = 0;
    v137 = 0;
    v138 = 0;
    sub_1B5D5CBBC(&v135, v7);
    if (v138)
    {
      v14 = v138;
    }

    else
    {
      v14 = v139;
    }

    v15 = v127;
    do
    {
      v16 = v15;
      v17 = *(v15 - 1);
      if (v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      v19 = strcmp(v18, v14);
      v15 = v16 + 32;
    }

    while (v19 < 0);
    v20 = (v16 - 48);
    v21 = (v16 - 16);
    v22 = a2;
    if (v16 - 48 == v7)
    {
      v25 = a2;
      while (v21 < v25)
      {
        v23 = (v25 - 32);
        v26 = *(v25 - 24);
        v27 = (v25 - 16);
        if (v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        v29 = strcmp(v28, v14);
        v25 = v23;
        if (v29 < 0)
        {
          goto LABEL_47;
        }
      }

      v23 = v25;
    }

    else
    {
      do
      {
        v23 = a2 - 16;
        if (*(a2 - 3))
        {
          v24 = *(a2 - 3);
        }

        else
        {
          v24 = (a2 - 8);
        }

        a2 -= 16;
      }

      while ((strcmp(v24, v14) & 0x80000000) == 0);
    }

LABEL_47:
    if (v21 < v23)
    {
      v30 = (v16 - 16);
      v31 = v23;
      do
      {
        sub_1B5D482B0(v30, v31);
        if (v138)
        {
          v32 = v138;
        }

        else
        {
          v32 = v139;
        }

        v33 = v30 + 24;
        do
        {
          v34 = v33;
          v35 = *(v33 - 1);
          if (v35)
          {
            v36 = v35;
          }

          else
          {
            v36 = v34;
          }

          v37 = strcmp(v36, v32);
          v33 = (v34 + 32);
        }

        while (v37 < 0);
        v20 = (v34 - 48);
        v30 = (v34 - 16);
        do
        {
          v38 = *(v31 - 3);
          v39 = (v31 - 8);
          v31 -= 16;
          if (v38)
          {
            v40 = v38;
          }

          else
          {
            v40 = v39;
          }
        }

        while ((strcmp(v40, v32) & 0x80000000) == 0);
      }

      while (v30 < v31);
    }

    if (v20 != v7)
    {
      sub_1B5D5CBBC(v7, v20);
    }

    sub_1B5D5CBBC(v20, &v135);
    if (v138 && v137 == 1)
    {
      free(v138);
    }

    a2 = v22;
    a3 = v129;
    if (v21 < v23)
    {
      goto LABEL_73;
    }

    v41 = sub_1B5D486A0(v7, v20);
    a1 = v20 + 16;
    if (!sub_1B5D486A0((v20 + 16), a2))
    {
      if (v41)
      {
        goto LABEL_2;
      }

LABEL_73:
      sub_1B5D472C4(v7, v20, v129, a4 & 1);
      a4 = 0;
      a1 = v20 + 16;
      goto LABEL_2;
    }

    a2 = v20;
    if (v41)
    {
      return;
    }
  }

  if (a4)
  {
    if (v7 != a2)
    {
      v64 = v7 + 32;
      if ((v7 + 32) != a2)
      {
        v65 = 0;
        v66 = v7;
        do
        {
          v67 = *(v66 + 40);
          v68 = (v66 + 48);
          v69 = *(v66 + 8);
          v70 = (v66 + 16);
          v66 = v64;
          if (v67)
          {
            v71 = v67;
          }

          else
          {
            v71 = v68;
          }

          if (v69)
          {
            v72 = v69;
          }

          else
          {
            v72 = v70;
          }

          if (strcmp(v71, v72) < 0)
          {
            v135 = 0x100000;
            v136 = 0;
            v137 = 0;
            v138 = 0;
            sub_1B5D5CBBC(&v135, v66);
            v73 = v65;
            while (1)
            {
              v74 = v7 + v73;
              sub_1B5D5CBBC(v7 + v73 + 32, (v7 + v73));
              if (!v73)
              {
                break;
              }

              if (v138)
              {
                v75 = v138;
              }

              else
              {
                v75 = v139;
              }

              if (*(v74 - 24))
              {
                v76 = *(v74 - 24);
              }

              else
              {
                v76 = (v74 - 16);
              }

              v73 -= 32;
              if ((strcmp(v75, v76) & 0x80000000) == 0)
              {
                v77 = v7 + v73 + 32;
                goto LABEL_151;
              }
            }

            v77 = v7;
LABEL_151:
            sub_1B5D5CBBC(v77, &v135);
            if (v138)
            {
              v78 = v137 == 1;
            }

            else
            {
              v78 = 0;
            }

            if (v78)
            {
              free(v138);
            }
          }

          v64 = v66 + 32;
          v65 += 32;
        }

        while ((v66 + 32) != a2);
      }
    }
  }

  else if (v7 != a2)
  {
    v118 = (v7 + 32);
    if ((v7 + 32) != a2)
    {
      do
      {
        v119 = v118;
        if (*(v7 + 40))
        {
          v120 = *(v7 + 40);
        }

        else
        {
          v120 = (v7 + 48);
        }

        if (*(v7 + 8))
        {
          v121 = *(v7 + 8);
        }

        else
        {
          v121 = (v7 + 16);
        }

        if (strcmp(v120, v121) < 0)
        {
          v135 = 0x100000;
          v136 = 0;
          v137 = 0;
          v138 = 0;
          sub_1B5D5CBBC(&v135, v119);
          do
          {
            v122 = v7;
            sub_1B5D5CBBC(v7 + 32, v7);
            v7 -= 32;
            if (v138)
            {
              v123 = v138;
            }

            else
            {
              v123 = v139;
            }

            if (*(v122 - 24))
            {
              v124 = *(v122 - 24);
            }

            else
            {
              v124 = (v122 - 16);
            }
          }

          while (strcmp(v123, v124) < 0);
          sub_1B5D5CBBC(v122, &v135);
          if (v138)
          {
            if (v137 == 1)
            {
              free(v138);
            }
          }
        }

        v118 = v119 + 16;
        v7 = v119;
      }

      while (v119 + 16 != a2);
    }
  }
}

uint64_t sub_1B5D47DB4(uint64_t a1, unsigned __int16 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  do
  {
    v6 = sub_1B5D4819C((a1 + 32), v2);
    if (!v6)
    {
      __assert_rtn("convert_combining_classes_to_bits_block_invoke", "UnigramsCompiler.cpp", 370, "class_ids.count(class_name)");
    }

    v5 = (1 << *(v6 + 12)) | v5;
    v2 += 16;
  }

  while (v2 != v3);
  return v5;
}

uint64_t sub_1B5D47E4C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_1B5D3021C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    if (*(i + 3))
    {
      v5 = *(i + 3);
    }

    else
    {
      v5 = (i + 16);
    }

    v6 = sub_1B5CE3124(v5, i[8]);
    v7 = v6;
    v8 = *(a1 + 8);
    if (!v8)
    {
      goto LABEL_22;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = v6;
      if (v8 <= v6)
      {
        v11 = v6 % v8;
      }
    }

    else
    {
      v11 = (v8 - 1) & v6;
    }

    v12 = *(*a1 + 8 * v11);
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      v14 = *(v13 + 1);
      if (v14 == v7)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v14 >= v8)
        {
          v14 %= v8;
        }
      }

      else
      {
        v14 &= v8 - 1;
      }

      if (v14 != v11)
      {
        goto LABEL_22;
      }

LABEL_21:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_22;
      }
    }

    if (v13 != i && !sub_1B5D5DD60(v13 + 8, i + 8))
    {
      goto LABEL_21;
    }
  }

  return a1;
}

uint64_t sub_1B5D48118(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[3];
    if (v4 && *(v3 + 22) == 1)
    {
      free(v4);
    }

    operator delete(v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

unsigned __int16 *sub_1B5D4819C(void *a1, unsigned __int16 *a2)
{
  if (*(a2 + 1))
  {
    v4 = *(a2 + 1);
  }

  else
  {
    v4 = (a2 + 8);
  }

  v5 = sub_1B5CE3124(v4, *a2);
  v6 = a1[1];
  if (!v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v6 <= v5)
    {
      v10 = v5 % v6;
    }
  }

  else
  {
    v10 = (v6 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = *(i + 1);
    if (v13 == v7)
    {
      if (i + 8 == a2 || sub_1B5D5DD60(i + 8, a2))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= v6)
        {
          v13 %= v6;
        }
      }

      else
      {
        v13 &= v6 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_1B5D482B0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0x100000;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_1B5D5CBBC(&v5, a1);
  sub_1B5D5CBBC(a1, a2);
  sub_1B5D5CBBC(a2, &v5);
  if (v8)
  {
    v4 = v7 == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v8);
  }
}

void sub_1B5D48358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a2 + 16);
  if (*(a2 + 8))
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = (a2 + 16);
  }

  v8 = a1 + 16;
  if (*(a1 + 8))
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = (a1 + 16);
  }

  v10 = strcmp(v7, v9);
  if (*(a3 + 8))
  {
    v11 = *(a3 + 8);
  }

  else
  {
    v11 = (a3 + 16);
  }

  v12 = strcmp(v11, v7);
  if (v10 < 0)
  {
    if (v12 < 0)
    {
      v13 = a1;
LABEL_30:
      v16 = a3;
      goto LABEL_31;
    }

    sub_1B5D482B0(a1, a2);
    if (*(a3 + 8))
    {
      v17 = *(a3 + 8);
    }

    else
    {
      v17 = (a3 + 16);
    }

    if (*(a2 + 8))
    {
      v18 = *(a2 + 8);
    }

    else
    {
      v18 = v6;
    }

    if (strcmp(v17, v18) < 0)
    {
      v13 = a2;
      goto LABEL_30;
    }
  }

  else if (v12 < 0)
  {
    sub_1B5D482B0(a2, a3);
    v14 = *(a2 + 8) ? *(a2 + 8) : v6;
    v15 = *(a1 + 8) ? *(a1 + 8) : v8;
    if (strcmp(v14, v15) < 0)
    {
      v13 = a1;
      v16 = a2;
LABEL_31:

      sub_1B5D482B0(v13, v16);
    }
  }
}

void sub_1B5D48484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B5D48358(a1, a2, a3);
  if (*(a4 + 8))
  {
    v8 = *(a4 + 8);
  }

  else
  {
    v8 = (a4 + 16);
  }

  if (*(a3 + 8))
  {
    v9 = *(a3 + 8);
  }

  else
  {
    v9 = (a3 + 16);
  }

  if (strcmp(v8, v9) < 0)
  {
    sub_1B5D482B0(a3, a4);
    v10 = *(a3 + 8) ? *(a3 + 8) : (a3 + 16);
    v11 = *(a2 + 8) ? *(a2 + 8) : (a2 + 16);
    if (strcmp(v10, v11) < 0)
    {
      sub_1B5D482B0(a2, a3);
      v12 = *(a2 + 8) ? *(a2 + 8) : (a2 + 16);
      v13 = *(a1 + 8) ? *(a1 + 8) : (a1 + 16);
      if (strcmp(v12, v13) < 0)
      {

        sub_1B5D482B0(a1, a2);
      }
    }
  }
}

void sub_1B5D48578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B5D48484(a1, a2, a3, a4);
  if (*(a5 + 8))
  {
    v10 = *(a5 + 8);
  }

  else
  {
    v10 = (a5 + 16);
  }

  if (*(a4 + 8))
  {
    v11 = *(a4 + 8);
  }

  else
  {
    v11 = (a4 + 16);
  }

  if (strcmp(v10, v11) < 0)
  {
    sub_1B5D482B0(a4, a5);
    v12 = *(a4 + 8) ? *(a4 + 8) : (a4 + 16);
    v13 = *(a3 + 8) ? *(a3 + 8) : (a3 + 16);
    if (strcmp(v12, v13) < 0)
    {
      sub_1B5D482B0(a3, a4);
      v14 = *(a3 + 8) ? *(a3 + 8) : (a3 + 16);
      v15 = *(a2 + 8) ? *(a2 + 8) : (a2 + 16);
      if (strcmp(v14, v15) < 0)
      {
        sub_1B5D482B0(a2, a3);
        v16 = *(a2 + 8) ? *(a2 + 8) : (a2 + 16);
        v17 = *(a1 + 8) ? *(a1 + 8) : (a1 + 16);
        if (strcmp(v16, v17) < 0)
        {

          sub_1B5D482B0(a1, a2);
        }
      }
    }
  }
}

BOOL sub_1B5D486A0(uint64_t a1, uint64_t a2)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = (a2 - a1) >> 5;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        if (*(a2 - 24))
        {
          v5 = *(a2 - 24);
        }

        else
        {
          v5 = (a2 - 16);
        }

        if (*(a1 + 8))
        {
          v6 = *(a1 + 8);
        }

        else
        {
          v6 = (a1 + 16);
        }

        if (strcmp(v5, v6) < 0)
        {
          sub_1B5D482B0(a1, (a2 - 32));
        }

        return 1;
      }

      goto LABEL_17;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_1B5D48358(a1, a1 + 32, a2 - 32);
      return 1;
    case 4:
      sub_1B5D48484(a1, a1 + 32, a1 + 64, a2 - 32);
      return 1;
    case 5:
      sub_1B5D48578(a1, a1 + 32, a1 + 64, a1 + 96, a2 - 32);
      return 1;
  }

LABEL_17:
  v7 = a1 + 64;
  sub_1B5D48358(a1, a1 + 32, a1 + 64);
  v8 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(v8 + 8) ? *(v8 + 8) : (v8 + 16);
    v12 = *(v7 + 8) ? *(v7 + 8) : (v7 + 16);
    if (strcmp(v11, v12) < 0)
    {
      break;
    }

LABEL_41:
    v7 = v8;
    v9 += 32;
    v8 += 32;
    if (v8 == a2)
    {
      return 1;
    }
  }

  v20 = 0x100000;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_1B5D5CBBC(&v20, v8);
  v13 = v9;
  while (1)
  {
    v14 = a1 + v13;
    sub_1B5D5CBBC(a1 + v13 + 96, (a1 + v13 + 64));
    if (v13 == -64)
    {
      break;
    }

    if (v23)
    {
      v15 = v23;
    }

    else
    {
      v15 = v24;
    }

    if (*(v14 + 40))
    {
      v16 = *(v14 + 40);
    }

    else
    {
      v16 = (v14 + 48);
    }

    v13 -= 32;
    if ((strcmp(v15, v16) & 0x80000000) == 0)
    {
      v17 = a1 + v13 + 96;
      goto LABEL_37;
    }
  }

  v17 = a1;
LABEL_37:
  sub_1B5D5CBBC(v17, &v20);
  if (++v10 != 8)
  {
    if (v23 && v22 == 1)
    {
      free(v23);
    }

    goto LABEL_41;
  }

  v18 = v8 + 32 == a2;
  if (v23 && v22 == 1)
  {
    free(v23);
  }

  return v18;
}

void sub_1B5D4890C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1B5D4894C(a2);
  }

  sub_1B5D04FA0();
}

void sub_1B5D4894C(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_1B5CE5968();
}

uint64_t *sub_1B5D48994(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 24);
      if (v3)
      {
        if (*(v2 + 22) == 1)
        {
          free(v3);
        }
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1B5D489F0(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      sub_1B5D1BC34((v3 + 24));
    }

    if (*(__p + 8) >= 0xFu)
    {
      v4 = __p[3];
      if (v4)
      {
        MEMORY[0x1B8C880C0](v4, 0x1000C8077774924);
      }
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1B5D48A74(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1B5D48AD4((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1B5D48AD4(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_1B5D48B4C(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_1B5CE5D7C(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

BOOL sub_1B5D48B94(void *a1)
{
  v64 = *MEMORY[0x1E69E9840];
  if (qword_1EB90C830 != -1)
  {
    dispatch_once(&qword_1EB90C830, &unk_1F2D58160);
  }

  v2 = qword_1EB90C838;
  if (!qword_1EB90C838)
  {
    return 0;
  }

  TypeID = CFLocaleGetTypeID();
  if (!sub_1B5DA9E54(v2, TypeID))
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = *MEMORY[0x1E695E4D0];
  CFDictionaryAddValue(Mutable, @"enumerateCachedOnlyOTAPaths", *MEMORY[0x1E695E4D0]);
  CFDictionaryAddValue(Mutable, @"type", @"unigrams");
  v55 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(v55, @"enumerateCachedOnlyOTAPaths", v4);
  CFDictionaryAddValue(v55, @"type", @"phrases");
  v54 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(v54, @"enumerateCachedOnlyOTAPaths", v4);
  CFDictionaryAddValue(v54, @"type", @"morphemes");
  v5 = 0;
  cf = 0;
  v48 = a1 + 10;
LABEL_6:
  if (CFArrayGetCount(v2) > v5)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
    sub_1B5D4EA54(&v52, ValueAtIndex);
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v52;
    }

    else
    {
      v7 = v52.__r_.__value_.__r.__words[0];
    }

    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v52.__r_.__value_.__l.__size_;
    }

    v9 = sub_1B5D4EB98(v7, size);
    v10 = v9;
    v12 = v11;
    if (v11 == 2 && *v9 == 29300)
    {
      sub_1B5D4E4D0(v54, ValueAtIndex);
      operator new();
    }

    v13 = Mutable;
    v51 = sub_1B5D4E224(Mutable, ValueAtIndex);
    v50 = sub_1B5D4E3C4(v13, ValueAtIndex);
    v49 = sub_1B5D4E224(v55, ValueAtIndex);
    if (!v50)
    {
      sub_1B5D0E3EC(&v52, v10, v12);
      goto LABEL_66;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1B5D114C8();
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    v63 = v12;
    if (v12)
    {
      memmove(__dst, v10, v12);
    }

    *(__dst + v12) = 0;
    if (v63 >= 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if (v63 >= 0)
    {
      v15 = v63;
    }

    else
    {
      v15 = __dst[1];
    }

    v16 = sub_1B5D2CC6C(v14, v15);
    v17 = v16;
    v18 = a1[11];
    if (!*&v18)
    {
      goto LABEL_46;
    }

    v19 = v5;
    v20 = a1;
    v21 = v2;
    v22 = vcnt_s8(v18);
    v22.i16[0] = vaddlv_u8(v22);
    v23 = v22.u32[0];
    if (v22.u32[0] > 1uLL)
    {
      v24 = v16;
      if (v16 >= *&v18)
      {
        v24 = v16 % *&v18;
      }
    }

    else
    {
      v24 = (*&v18 - 1) & v16;
    }

    v25 = *(*v48 + 8 * v24);
    if (!v25 || (v26 = *v25) == 0)
    {
LABEL_46:
      operator new();
    }

    while (1)
    {
      v27 = v26[1];
      if (v27 == v17)
      {
        if (sub_1B5D17E50(v26 + 2, __dst))
        {
          v2 = v21;
          a1 = v20;
          v5 = v19;
          v29 = v26[6];
          v28 = v26[7];
          if (v29 >= v28)
          {
            v31 = v26[5];
            v32 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v31) >> 3) + 1;
            if (v32 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1B5D04FA0();
            }

            v33 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v31) >> 3);
            if (2 * v33 > v32)
            {
              v32 = 2 * v33;
            }

            if (v33 >= 0x555555555555555)
            {
              v34 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v34 = v32;
            }

            v61 = v26 + 5;
            if (v34)
            {
              sub_1B5CE5E20((v26 + 5), v34);
            }

            v36 = (8 * ((v29 - v31) >> 3));
            __p = 0;
            v58 = v36;
            v37 = 0;
            v59 = v36;
            v60 = 0;
            if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_1B5CE4AC4(v36, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
              v36 = v58;
              v39 = v59;
              v37 = v60;
            }

            else
            {
              v38 = *&v52.__r_.__value_.__l.__data_;
              *(8 * ((v29 - v31) >> 3) + 0x10) = *(&v52.__r_.__value_.__l + 2);
              *v36 = v38;
              v39 = 8 * ((v29 - v31) >> 3);
            }

            v35 = v39 + 24;
            v40 = v26[5];
            v41 = v26[6] - v40;
            v42 = &v36[-v41];
            memcpy(&v36[-v41], v40, v41);
            v43 = v26[5];
            v26[5] = v42;
            v26[6] = v35;
            v44 = v26[7];
            v26[7] = v37;
            v59 = v43;
            v60 = v44;
            __p = v43;
            v58 = v43;
            sub_1B5CE5E78(&__p);
          }

          else
          {
            if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_1B5CE4AC4(v26[6], v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
            }

            else
            {
              v30 = *&v52.__r_.__value_.__l.__data_;
              *(v29 + 16) = *(&v52.__r_.__value_.__l + 2);
              *v29 = v30;
            }

            v35 = v29 + 24;
            v26[6] = v35;
          }

          v26[6] = v35;
          if (v63 < 0)
          {
            operator delete(__dst[0]);
          }

LABEL_66:
          v45 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v45 = v52.__r_.__value_.__l.__size_;
          }

          if (!v45)
          {
            __assert_rtn("loadLexicons", "StaticLexiconRepository.cpp", 171, "!localeIdentifier.empty() && Invalid locale. Failed to obtain locale identifier from the locale.");
          }

          if (!sub_1B5D4A0D0(a1, &v52))
          {
            operator new();
          }

          if (v49)
          {
            CFRelease(v49);
          }

          if (v50)
          {
            CFRelease(v50);
          }

          if (v51)
          {
            CFRelease(v51);
          }

          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
          }

          ++v5;
          goto LABEL_6;
        }
      }

      else
      {
        if (v23 > 1)
        {
          if (v27 >= *&v18)
          {
            v27 %= *&v18;
          }
        }

        else
        {
          v27 &= *&v18 - 1;
        }

        if (v27 != v24)
        {
          goto LABEL_46;
        }
      }

      v26 = *v26;
      if (!v26)
      {
        goto LABEL_46;
      }
    }
  }

  v46 = a1[3] != 0;
  if (v54)
  {
    CFRelease(v54);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v46;
}

void sub_1B5D49A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, const void *a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, const void *a26, const void *a27, const void *a28, __int16 a29, char a30, char a31)
{
  (*(*v31 + 8))(v31, a2, a3, a4, a5, a6, a7, a8);
  sub_1B5CE5794(&a16, 0);
  sub_1B5CE5794(&a17, 0);
  sub_1B5CE5794(&a18, 0);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_1B5CE5680(&a26, 0);
  sub_1B5CE5680(&a27, 0);
  sub_1B5CE5680(&a28, 0);
  _Unwind_Resume(a1);
}

void *sub_1B5D49C38(float *a1, uint64_t a2, __int128 **a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = sub_1B5D2CC6C(v6, v7);
  v9 = v8;
  v10 = *(a1 + 2);
  if (!*&v10)
  {
    goto LABEL_24;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (!sub_1B5D17E50(v15 + 2, a2))
  {
    goto LABEL_23;
  }

  return v15;
}

void sub_1B5D4A0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1B5D4A22C(va);
  _Unwind_Resume(a1);
}

void *sub_1B5D4A0D0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = sub_1B5D2CC6C(v5, v6);
  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v9 == v15)
      {
        if (sub_1B5D17E50(v14 + 2, a2))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v8)
          {
            v15 %= *&v8;
          }
        }

        else
        {
          v15 &= *&v8 - 1;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

uint64_t sub_1B5D4A1E0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1B5D48B4C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1B5D4A22C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1B5D48AD4(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1B5D4A278()
{
  v1[27] = *MEMORY[0x1E69E9840];
  v1[0] = CFLocaleCreate(0, @"en");
  v1[1] = CFLocaleCreate(0, @"it");
  v1[2] = CFLocaleCreate(0, @"fr");
  v1[3] = CFLocaleCreate(0, @"de");
  v1[4] = CFLocaleCreate(0, @"es");
  v1[5] = CFLocaleCreate(0, @"pt");
  v1[6] = CFLocaleCreate(0, @"vi");
  v1[7] = CFLocaleCreate(0, @"nl");
  v1[8] = CFLocaleCreate(0, @"da");
  v1[9] = CFLocaleCreate(0, @"sv");
  v1[10] = CFLocaleCreate(0, @"nb");
  v1[11] = CFLocaleCreate(0, @"tr");
  v1[12] = CFLocaleCreate(0, @"en-US");
  v1[13] = CFLocaleCreate(0, @"en-AU");
  v1[14] = CFLocaleCreate(0, @"en-CA");
  v1[15] = CFLocaleCreate(0, @"en-GB");
  v1[16] = CFLocaleCreate(0, @"en-IN");
  v1[17] = CFLocaleCreate(0, @"en-JP");
  v1[18] = CFLocaleCreate(0, @"en-NZ");
  v1[19] = CFLocaleCreate(0, @"en-SG");
  v1[20] = CFLocaleCreate(0, @"en-ZA");
  v1[21] = CFLocaleCreate(0, @"fr-FR");
  v1[22] = CFLocaleCreate(0, @"fr-CA");
  v1[23] = CFLocaleCreate(0, @"es-ES");
  v1[24] = CFLocaleCreate(0, @"es-MX");
  v1[25] = CFLocaleCreate(0, @"pt-BR");
  v1[26] = CFLocaleCreate(0, @"pt-PT");
  v0 = 0;
  qword_1EB90C838 = CFArrayCreate(*MEMORY[0x1E695E480], v1, 27, MEMORY[0x1E695E9C0]);
  do
  {
    CFRelease(v1[v0++]);
  }

  while (v0 != 27);
}

void *sub_1B5D4A530(size_t *a1, void *a2, const __CFArray *a3)
{
  v5 = a1;
  v165 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1B5D4B7CC(a1, a2[3]);
  v152 = v5;
  if (!a3)
  {
    v117 = a2[2];
    if (v117)
    {
      v118 = v5;
      v119 = v5[1];
      do
      {
        v120 = v117[5];
        v121 = v118[2];
        if (v119 >= v121)
        {
          v123 = (v119 - *v118) >> 5;
          if ((v123 + 1) >> 59)
          {
            sub_1B5D04FA0();
          }

          v124 = v121 - *v118;
          v125 = v124 >> 4;
          if (v124 >> 4 <= (v123 + 1))
          {
            v125 = v123 + 1;
          }

          if (v124 >= 0x7FFFFFFFFFFFFFE0)
          {
            v126 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v126 = v125;
          }

          v164 = v118;
          if (v126)
          {
            sub_1B5D4BF1C(v126);
          }

          v127 = 32 * v123;
          *&v162 = 0;
          *(&v162 + 1) = v127;
          v128 = 0;
          v163 = v127;
          if (*(v117 + 39) < 0)
          {
            sub_1B5CE4AC4(v127, v117[2], v117[3]);
            v130 = *(&v162 + 1);
            v128 = *(&v163 + 1);
            v131 = v163;
          }

          else
          {
            v129 = *(v117 + 1);
            *(v127 + 16) = v117[4];
            *v127 = v129;
            v130 = v127;
            v131 = v127;
          }

          *(v127 + 24) = v120;
          v119 = v131 + 32;
          v118 = v152;
          v132 = v152[1] - *v152;
          v133 = v130 - v132;
          memcpy((v130 - v132), *v152, v132);
          v134 = *v152;
          *v152 = v133;
          v152[1] = v119;
          v135 = v152[2];
          v152[2] = v128;
          *&v163 = v134;
          *(&v163 + 1) = v135;
          *&v162 = v134;
          *(&v162 + 1) = v134;
          sub_1B5D4BF64(&v162);
        }

        else
        {
          if (*(v117 + 39) < 0)
          {
            sub_1B5CE4AC4(v119, v117[2], v117[3]);
          }

          else
          {
            v122 = *(v117 + 1);
            *(v119 + 16) = v117[4];
            *v119 = v122;
          }

          *(v119 + 24) = v120;
          v119 += 32;
          v118 = v152;
        }

        v118[1] = v119;
        v117 = *v117;
      }

      while (v117);
    }

    BYTE7(v163) = 5;
    strcpy(&v162, "es-MX");
    result = sub_1B5D4A0D0(a2, &v162);
    if (result)
    {
      v136 = result[5];
      v137 = v152;
      v138 = v152[1];
      v139 = v152[2];
      if (v138 >= v139)
      {
        v141 = (v138 - *v152) >> 5;
        v142 = v141 + 1;
        if ((v141 + 1) >> 59)
        {
          sub_1B5D04FA0();
        }

        v143 = v139 - *v152;
        if (v143 >> 4 > v142)
        {
          v142 = v143 >> 4;
        }

        if (v143 >= 0x7FFFFFFFFFFFFFE0)
        {
          v144 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v144 = v142;
        }

        v164 = v152;
        if (v144)
        {
          sub_1B5D4BF1C(v144);
        }

        v145 = 32 * v141;
        *(v145 + 23) = 6;
        strcpy((32 * v141), "es-419");
        *(v145 + 24) = v136;
        v140 = 32 * v141 + 32;
        v146 = v152[1] - *v152;
        v147 = v145 - v146;
        memcpy((v145 - v146), *v152, v146);
        v148 = *v152;
        *v152 = v147;
        v152[1] = v140;
        v149 = v152[2];
        v152[2] = 0;
        v137 = v152;
        *&v163 = v148;
        *(&v163 + 1) = v149;
        *&v162 = v148;
        *(&v162 + 1) = v148;
        result = sub_1B5D4BF64(&v162);
      }

      else
      {
        *(v138 + 23) = 6;
        strcpy(v138, "es-419");
        v140 = v138 + 32;
        *(v138 + 24) = v136;
      }

      v137[1] = v140;
    }

    return result;
  }

  v6 = 0;
  v150 = a3;
LABEL_3:
  if (CFArrayGetCount(a3) > v6)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a3, v6);
    sub_1B5D4EA54(__p, ValueAtIndex);
    if ((SBYTE7(v154) & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((SBYTE7(v154) & 0x80u) == 0)
    {
      v9 = BYTE7(v154);
    }

    else
    {
      v9 = __p[1];
    }

    if ((atomic_load_explicit(&qword_1EB90C868, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB90C868))
    {
      operator new();
    }

    v10 = qword_1EB90C820;
    v11 = sub_1B5D2CC6C(v8, v9);
    v12 = v10[1];
    if (!*&v12)
    {
      goto LABEL_28;
    }

    v13 = v11;
    v14 = vcnt_s8(v12);
    v14.i16[0] = vaddlv_u8(v14);
    v15 = v14.u32[0];
    if (v14.u32[0] > 1uLL)
    {
      v16 = v11;
      if (v11 >= *&v12)
      {
        v16 = v11 % *&v12;
      }
    }

    else
    {
      v16 = (*&v12 - 1) & v11;
    }

    v17 = *(*v10 + 8 * v16);
    if (!v17)
    {
      goto LABEL_28;
    }

    v18 = *v17;
    if (!*v17)
    {
      goto LABEL_28;
    }

    while (1)
    {
      v19 = v18[1];
      if (v13 == v19)
      {
        if (v18[3] == v9 && !memcmp(v18[2], v8, v9))
        {
          v8 = v18[4];
          v9 = v18[5];
LABEL_28:
          if (v9 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_1B5D114C8();
          }

          if (v9 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v159) = v9;
          if (v9)
          {
            memmove(&__dst, v8, v9);
          }

          *(&__dst + v9) = 0;
          if (v159 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          if (v159 >= 0)
          {
            v21 = SHIBYTE(v159);
          }

          else
          {
            v21 = *(&__dst + 1);
          }

          v22 = sub_1B5D2CC6C(p_dst, v21);
          v23 = a2[11];
          if (!*&v23)
          {
            goto LABEL_56;
          }

          v24 = v22;
          v25 = vcnt_s8(v23);
          v25.i16[0] = vaddlv_u8(v25);
          v26 = v25.u32[0];
          if (v25.u32[0] > 1uLL)
          {
            v27 = v22;
            if (v22 >= *&v23)
            {
              v27 = v22 % *&v23;
            }
          }

          else
          {
            v27 = (*&v23 - 1) & v22;
          }

          v28 = *(a2[10] + 8 * v27);
          if (!v28 || (v29 = *v28) == 0)
          {
LABEL_56:
            v157 = 0;
            v31 = 0uLL;
            v156 = 0u;
            v5 = v152;
            goto LABEL_57;
          }

          while (2)
          {
            v30 = v29[1];
            if (v24 == v30)
            {
              if (sub_1B5D17E50(v29 + 2, &__dst))
              {
                v157 = 0;
                v31 = 0uLL;
                v156 = 0u;
                v68 = v29[5];
                v67 = v29[6];
                v5 = v152;
                if (v68 != v67)
                {
                  v69 = 0;
                  do
                  {
                    v70 = sub_1B5D4A0D0(a2, v68);
                    if (v70)
                    {
                      v71 = v70[5];
                      *&v162 = v71;
                      if (v71)
                      {
                        if (v69 >= v157)
                        {
                          v69 = sub_1B5D4BD80(&v156, v68, &v162);
                        }

                        else
                        {
                          if (*(v68 + 23) < 0)
                          {
                            sub_1B5CE4AC4(v69, *v68, *(v68 + 8));
                            v71 = v162;
                          }

                          else
                          {
                            v72 = *v68;
                            *(v69 + 16) = *(v68 + 16);
                            *v69 = v72;
                          }

                          *(v69 + 24) = v71;
                          v69 += 32;
                        }

                        *(&v156 + 1) = v69;
                      }
                    }

                    v68 += 24;
                  }

                  while (v68 != v67);
                  v31 = v156;
                }

LABEL_57:
                v32 = *(&v31 + 1);
                v33 = v31;
                if (v31 != *(&v31 + 1))
                {
                  v34 = *(&v31 + 1) - v31;
                  v35 = (*(&v31 + 1) - v31) >> 5;
                  if (v35 >= 1)
                  {
                    v37 = v5[1];
                    v36 = v5[2];
                    if ((v36 - v37) >= v34)
                    {
                      v160 = v5[1];
                      v161 = v37;
                      *&v162 = v5;
                      *(&v162 + 1) = &v160;
                      *&v163 = &v161;
                      v42 = v37;
                      BYTE8(v163) = 0;
                      do
                      {
                        if (*(v33 + 23) < 0)
                        {
                          sub_1B5CE4AC4(v42, *v33, *(v33 + 1));
                          v44 = v161;
                        }

                        else
                        {
                          v43 = *v33;
                          v42[2] = *(v33 + 2);
                          *v42 = v43;
                          v44 = v42;
                        }

                        v42[3] = *(v33 + 3);
                        v33 += 2;
                        v42 = v44 + 4;
                        v161 = v44 + 4;
                      }

                      while (v33 != v32);
                      BYTE8(v163) = 1;
                      sub_1B5D4C024(&v162);
                      v5[1] = v42;
                    }

                    else
                    {
                      v38 = v37 - *v5;
                      v39 = v35 + (v38 >> 5);
                      if (v39 >> 59)
                      {
                        sub_1B5D04FA0();
                      }

                      v40 = v36 - *v5;
                      if (v40 >> 4 > v39)
                      {
                        v39 = v40 >> 4;
                      }

                      if (v40 >= 0x7FFFFFFFFFFFFFE0)
                      {
                        v41 = 0x7FFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v41 = v39;
                      }

                      v164 = v5;
                      if (v41)
                      {
                        sub_1B5D4BF1C(v41);
                      }

                      v45 = 32 * (v38 >> 5);
                      *&v162 = 0;
                      *(&v162 + 1) = v45;
                      v163 = v45;
                      v46 = (v45 + v34);
                      do
                      {
                        if (*(v33 + 23) < 0)
                        {
                          sub_1B5CE4AC4(v45, *v33, *(v33 + 1));
                        }

                        else
                        {
                          v47 = *v33;
                          *(v45 + 16) = *(v33 + 2);
                          *v45 = v47;
                        }

                        *(v45 + 24) = *(v33 + 3);
                        v45 += 32;
                        v33 += 2;
                        v34 -= 32;
                      }

                      while (v34);
                      *&v163 = v46;
                      memcpy(v46, v37, v5[1] - v37);
                      v48 = *v5;
                      v49 = *(&v162 + 1);
                      *&v163 = v163 + v5[1] - v37;
                      v5[1] = v37;
                      v50 = (v49 - (v37 - v48));
                      memcpy(v50, v48, v37 - v48);
                      v51 = *v5;
                      *v5 = v50;
                      v52 = v5[2];
                      *(v5 + 1) = v163;
                      *&v163 = v51;
                      *(&v163 + 1) = v52;
                      *&v162 = v51;
                      *(&v162 + 1) = v51;
                      sub_1B5D4BF64(&v162);
                    }
                  }
                }

                *&v162 = &v156;
                sub_1B5D4BCF4(&v162);
                v53 = sub_1B5D4A0D0(a2, &__dst);
                if (v53 && (v54 = v53[5], (*&v162 = v54) != 0))
                {
                  v55 = v5[1];
                  if (v55 >= v5[2])
                  {
                    v65 = sub_1B5D4BD80(v5, __p, &v162);
                  }

                  else
                  {
                    if (SBYTE7(v154) < 0)
                    {
                      sub_1B5CE4AC4(v5[1], __p[0], __p[1]);
                    }

                    else
                    {
                      v56 = *__p;
                      *(v55 + 16) = v154;
                      *v55 = v56;
                    }

                    *(v55 + 24) = v54;
                    v65 = v55 + 32;
                  }

                  a3 = v150;
                  v5[1] = v65;
                }

                else
                {
                  if (v159 >= 0)
                  {
                    v57 = &__dst;
                  }

                  else
                  {
                    v57 = __dst;
                  }

                  if (v159 >= 0)
                  {
                    v58 = SHIBYTE(v159);
                  }

                  else
                  {
                    v58 = *(&__dst + 1);
                  }

                  v59 = sub_1B5D4EB98(v57, v58);
                  if (v60 > 0x7FFFFFFFFFFFFFF7)
                  {
                    sub_1B5D114C8();
                  }

                  v61 = v60;
                  if (v60 >= 0x17)
                  {
                    operator new();
                  }

                  BYTE7(v163) = v60;
                  if (v60)
                  {
                    memmove(&v162, v59, v60);
                  }

                  *(&v162 + v61) = 0;
                  v62 = sub_1B5D4A0D0(a2, &v162);
                  if (v62)
                  {
                    v63 = v62[5];
                    *&v156 = v63;
                    if (v63)
                    {
                      v64 = v5[1];
                      if (v64 >= v5[2])
                      {
                        v66 = sub_1B5D4BD80(v5, &v162, &v156);
                      }

                      else
                      {
                        if (SBYTE7(v163) < 0)
                        {
                          sub_1B5CE4AC4(v5[1], v162, *(&v162 + 1));
                        }

                        else
                        {
                          *v64 = v162;
                          *(v64 + 16) = v163;
                        }

                        *(v64 + 24) = v63;
                        v66 = v64 + 32;
                      }

                      v5[1] = v66;
                    }
                  }

                  if (SBYTE7(v163) < 0)
                  {
                    operator delete(v162);
                  }

                  a3 = v150;
                }

                if (SHIBYTE(v159) < 0)
                {
                  operator delete(__dst);
                }

                if (SBYTE7(v154) < 0)
                {
                  operator delete(__p[0]);
                }

                ++v6;
                goto LABEL_3;
              }
            }

            else
            {
              if (v26 > 1)
              {
                if (v30 >= *&v23)
                {
                  v30 %= *&v23;
                }
              }

              else
              {
                v30 &= *&v23 - 1;
              }

              if (v30 != v27)
              {
                goto LABEL_56;
              }
            }

            v29 = *v29;
            if (!v29)
            {
              goto LABEL_56;
            }

            continue;
          }
        }
      }

      else
      {
        if (v15 > 1)
        {
          if (v19 >= *&v12)
          {
            v19 %= *&v12;
          }
        }

        else
        {
          v19 &= *&v12 - 1;
        }

        if (v19 != v16)
        {
          goto LABEL_28;
        }
      }

      v18 = *v18;
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  *__p = 0u;
  v154 = 0u;
  v155 = 1065353216;
  __dst = 0uLL;
  v159 = 0;
  sub_1B5D4B7CC(&__dst, (v5[1] - *v5) >> 5);
  v74 = *v5;
  v73 = v5[1];
  if (*v5 == v73)
  {
    goto LABEL_199;
  }

  v151 = v5[1];
  do
  {
    v75 = *(v74 + 23);
    v76 = *v74;
    v77 = v74[1];
    if (v75 >= 0)
    {
      v78 = v74;
    }

    else
    {
      v78 = *v74;
    }

    if (v75 >= 0)
    {
      v79 = *(v74 + 23);
    }

    else
    {
      v79 = v74[1];
    }

    v80 = sub_1B5D2CC6C(v78, v79);
    v81 = __p[1];
    if (!__p[1])
    {
      goto LABEL_157;
    }

    v82 = v80;
    v83 = vcnt_s8(__p[1]);
    v83.i16[0] = vaddlv_u8(v83);
    v84 = v83.u32[0];
    if (v83.u32[0] > 1uLL)
    {
      v85 = v80;
      if (v80 >= __p[1])
      {
        v85 = v80 % __p[1];
      }
    }

    else
    {
      v85 = (__p[1] - 1) & v80;
    }

    v86 = *(__p[0] + v85);
    if (!v86 || (v87 = *v86) == 0)
    {
LABEL_157:
      v89 = *(&__dst + 1);
      if (*(&__dst + 1) >= v159)
      {
        v91 = (*(&__dst + 1) - __dst) >> 5;
        if ((v91 + 1) >> 59)
        {
          sub_1B5D04FA0();
        }

        v92 = (v159 - __dst) >> 4;
        if (v92 <= v91 + 1)
        {
          v92 = v91 + 1;
        }

        if ((v159 - __dst) >= 0x7FFFFFFFFFFFFFE0)
        {
          v93 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v93 = v92;
        }

        v164 = &__dst;
        if (v93)
        {
          sub_1B5D4BF1C(v93);
        }

        v95 = 32 * v91;
        *&v162 = 0;
        *(&v162 + 1) = v95;
        v96 = 0;
        v163 = v95;
        if (*(v74 + 23) < 0)
        {
          sub_1B5CE4AC4(v95, *v74, v74[1]);
          v98 = *(&v162 + 1);
          v96 = *(&v163 + 1);
          v99 = v163;
        }

        else
        {
          v97 = *v74;
          *(v95 + 16) = v74[2];
          *v95 = v97;
          v98 = v95;
          v99 = v95;
        }

        *(v95 + 24) = v74[3];
        v94 = v99 + 32;
        v100 = (v98 - (*(&__dst + 1) - __dst));
        memcpy(v100, __dst, *(&__dst + 1) - __dst);
        v101 = __dst;
        v102 = v159;
        *&__dst = v100;
        *(&__dst + 1) = v94;
        v159 = v96;
        *&v163 = v101;
        *(&v163 + 1) = v102;
        *&v162 = v101;
        *(&v162 + 1) = v101;
        sub_1B5D4BF64(&v162);
      }

      else
      {
        if ((v75 & 0x80000000) != 0)
        {
          sub_1B5CE4AC4(*(&__dst + 1), v76, v77);
        }

        else
        {
          v90 = *v74;
          *(*(&__dst + 1) + 16) = v74[2];
          *v89 = v90;
        }

        *(v89 + 24) = v74[3];
        v94 = v89 + 32;
      }

      *(&__dst + 1) = v94;
      v103 = *(v74 + 23);
      if (v103 >= 0)
      {
        v104 = v74;
      }

      else
      {
        v104 = *v74;
      }

      if (v103 >= 0)
      {
        v105 = *(v74 + 23);
      }

      else
      {
        v105 = v74[1];
      }

      v106 = sub_1B5D2CC6C(v104, v105);
      v107 = v106;
      v108 = __p[1];
      if (__p[1])
      {
        v109 = vcnt_s8(__p[1]);
        v109.i16[0] = vaddlv_u8(v109);
        v110 = v109.u32[0];
        if (v109.u32[0] > 1uLL)
        {
          v111 = v106;
          if (v106 >= __p[1])
          {
            v111 = v106 % __p[1];
          }
        }

        else
        {
          v111 = (__p[1] - 1) & v106;
        }

        v112 = *(__p[0] + v111);
        if (v112)
        {
          v113 = *v112;
          if (*v112)
          {
            do
            {
              v114 = v113[1];
              if (v114 == v107)
              {
                if (sub_1B5D17E50(v113 + 2, v74))
                {
                  goto LABEL_197;
                }
              }

              else
              {
                if (v110 > 1)
                {
                  if (v114 >= v108)
                  {
                    v114 %= v108;
                  }
                }

                else
                {
                  v114 &= v108 - 1;
                }

                if (v114 != v111)
                {
                  break;
                }
              }

              v113 = *v113;
            }

            while (v113);
          }
        }
      }

      operator new();
    }

    while (1)
    {
      v88 = v87[1];
      if (v82 == v88)
      {
        break;
      }

      if (v84 > 1)
      {
        if (v88 >= v81)
        {
          v88 %= v81;
        }
      }

      else
      {
        v88 &= v81 - 1;
      }

      if (v88 != v85)
      {
        goto LABEL_157;
      }

LABEL_156:
      v87 = *v87;
      if (!v87)
      {
        goto LABEL_157;
      }
    }

    if (!sub_1B5D17E50(v87 + 2, v74))
    {
      goto LABEL_156;
    }

LABEL_197:
    v74 += 4;
  }

  while (v74 != v151);
  v5 = v152;
  v74 = *v152;
  v73 = v152[1];
LABEL_199:
  *v5 = __dst;
  *&__dst = v74;
  *(&__dst + 1) = v73;
  v115 = v5[2];
  v5[2] = v159;
  v159 = v115;
  *&v162 = &__dst;
  sub_1B5D4BCF4(&v162);
  return sub_1B5D4BEB4(__p);
}

void sub_1B5D4B5E8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33)
{
  MEMORY[0x1B8C880F0](v33, 0x10A0C408EF24B1CLL, a3, a4, a5, a6, a7, a8);
  __cxa_guard_abort(&qword_1EB90C868);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __p = a12;
  sub_1B5D4BCF4(&__p);
  _Unwind_Resume(a1);
}

const void **sub_1B5D4B7CC(const void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      sub_1B5D4BF1C(a2);
    }

    sub_1B5D04FA0();
  }

  return result;
}

uint64_t *sub_1B5D4B86C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  if (a3)
  {
    v4 = a2;
    v17 = a2 + 32 * a3;
    do
    {
      v5 = *v4;
      v6 = *(v4 + 8);
      v7 = sub_1B5D2CC6C(*v4, v6);
      v8 = v7;
      v9 = a1[1];
      if (!*&v9)
      {
        goto LABEL_20;
      }

      v10 = vcnt_s8(v9);
      v10.i16[0] = vaddlv_u8(v10);
      v11 = v10.u32[0];
      if (v10.u32[0] > 1uLL)
      {
        v12 = v7;
        if (v7 >= *&v9)
        {
          v12 = v7 % *&v9;
        }
      }

      else
      {
        v12 = (*&v9 - 1) & v7;
      }

      v13 = *(*a1 + 8 * v12);
      if (!v13 || (v14 = *v13) == 0)
      {
LABEL_20:
        operator new();
      }

      while (1)
      {
        v15 = v14[1];
        if (v15 == v8)
        {
          break;
        }

        if (v11 > 1)
        {
          if (v15 >= *&v9)
          {
            v15 %= *&v9;
          }
        }

        else
        {
          v15 &= *&v9 - 1;
        }

        if (v15 != v12)
        {
          goto LABEL_20;
        }

LABEL_19:
        v14 = *v14;
        if (!v14)
        {
          goto LABEL_20;
        }
      }

      if (v14[3] != v6 || memcmp(v14[2], v5, v6))
      {
        goto LABEL_19;
      }

      v4 += 32;
    }

    while (v4 != v17);
  }

  return a1;
}