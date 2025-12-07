char *sub_D619B8(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v9 = result;
    while (a5 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v10 = 0;
      v11 = -a4;
      while (1)
      {
        v12 = &v10[v9];
        if (*(a2 + 29) < *&v10[v9 + 232])
        {
          break;
        }

        v10 += 240;
        if (__CFADD__(v11++, 1))
        {
          return result;
        }
      }

      v126 = a3;
      __src = a6;
      v125 = a7;
      if (-v11 >= a5)
      {
        if (v11 == -1)
        {
          v99 = &v10[v9];
          v129 = *&v10[v9 + 16];
          v130 = *&v10[v9 + 32];
          v128 = *&v10[v9];
          v133 = *&v10[v9 + 80];
          v134 = *&v10[v9 + 96];
          v131 = *&v10[v9 + 48];
          v132 = *&v10[v9 + 64];
          v137 = *&v10[v9 + 144];
          v138 = *&v10[v9 + 160];
          v135 = *&v10[v9 + 112];
          v136 = *&v10[v9 + 128];
          v141 = *&v10[v9 + 208];
          v142 = *&v10[v9 + 224];
          v139 = *&v10[v9 + 176];
          v140 = *&v10[v9 + 192];
          v100 = *a2;
          v101 = *(a2 + 2);
          *(v99 + 1) = *(a2 + 1);
          *(v99 + 2) = v101;
          *v99 = v100;
          v102 = *(a2 + 3);
          v103 = *(a2 + 4);
          v104 = *(a2 + 6);
          *(v99 + 5) = *(a2 + 5);
          *(v99 + 6) = v104;
          *(v99 + 3) = v102;
          *(v99 + 4) = v103;
          v105 = *(a2 + 7);
          v106 = *(a2 + 8);
          v107 = *(a2 + 10);
          *(v99 + 9) = *(a2 + 9);
          *(v99 + 10) = v107;
          *(v99 + 7) = v105;
          *(v99 + 8) = v106;
          v108 = *(a2 + 11);
          v109 = *(a2 + 12);
          v110 = *(a2 + 14);
          *(v99 + 13) = *(a2 + 13);
          *(v99 + 14) = v110;
          *(v99 + 11) = v108;
          *(v99 + 12) = v109;
          *(a2 + 12) = v140;
          *(a2 + 13) = v141;
          *(a2 + 14) = v142;
          *(a2 + 8) = v136;
          *(a2 + 9) = v137;
          *(a2 + 10) = v138;
          *(a2 + 11) = v139;
          *(a2 + 4) = v132;
          *(a2 + 5) = v133;
          *(a2 + 6) = v134;
          *(a2 + 7) = v135;
          *a2 = v128;
          *(a2 + 1) = v129;
          *(a2 + 2) = v130;
          *(a2 + 3) = v131;
          return result;
        }

        v22 = -v11 / 2;
        v15 = a2;
        if (a2 != a3)
        {
          v23 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - a2) >> 4);
          v15 = a2;
          do
          {
            v24 = v23 >> 1;
            v25 = &v15[240 * (v23 >> 1)];
            v26 = *(v25 + 29);
            v27 = v25 + 240;
            v23 += ~(v23 >> 1);
            if (v26 < *&v9[240 * v22 + 232 + v10])
            {
              v15 = v27;
            }

            else
            {
              v23 = v24;
            }
          }

          while (v23);
        }

        v14 = 0xEEEEEEEEEEEEEEEFLL * ((v15 - a2) >> 4);
        v16 = &v9[240 * v22 + v10];
      }

      else
      {
        v14 = a5 / 2;
        v15 = &a2[240 * (a5 / 2)];
        v16 = a2;
        if ((a2 - v9) != v10)
        {
          v17 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - v9 - v10) >> 4);
          v16 = &v10[v9];
          do
          {
            v18 = v17 >> 1;
            v19 = &v16[240 * (v17 >> 1)];
            v20 = *(v19 + 29);
            v21 = v19 + 240;
            v17 += ~(v17 >> 1);
            if (v20 > *(v15 + 29))
            {
              v17 = v18;
            }

            else
            {
              v16 = v21;
            }
          }

          while (v17);
        }

        v22 = 0xEEEEEEEEEEEEEEEFLL * ((v16 - v9 - v10) >> 4);
      }

      a4 = -v11 - v22;
      v124 = a5 - v14;
      v28 = a5;
      v29 = v22;
      v30 = sub_D60C58(v16, a2, v15);
      v31 = v29;
      v32 = v30;
      if ((v31 + v14) >= (v28 - (v31 + v14) - v11))
      {
        a6 = __src;
        v33 = v31;
        result = sub_D619B8(v30, v15, v126, a4, v124, __src, v125);
        v15 = v16;
        a7 = v125;
        a4 = v33;
        a3 = v32;
      }

      else
      {
        a6 = __src;
        result = sub_D619B8(&v10[v9], v16, v30, v31, v14, __src, v125);
        a7 = v125;
        v12 = v32;
        a3 = v126;
        v14 = v124;
      }

      a5 = v14;
      v9 = v12;
      a2 = v15;
      if (!v14)
      {
        return result;
      }
    }

    if (a4 <= a5)
    {
      if (a2 != v9)
      {
        v63 = -a6;
        v64 = a6;
        v65 = v9;
        do
        {
          v66 = *v65;
          v67 = *(v65 + 2);
          v64[1] = *(v65 + 1);
          v64[2] = v67;
          *v64 = v66;
          v68 = *(v65 + 3);
          v69 = *(v65 + 4);
          v70 = *(v65 + 6);
          v64[5] = *(v65 + 5);
          v64[6] = v70;
          v64[3] = v68;
          v64[4] = v69;
          v71 = *(v65 + 7);
          v72 = *(v65 + 8);
          v73 = *(v65 + 10);
          v64[9] = *(v65 + 9);
          v64[10] = v73;
          v64[7] = v71;
          v64[8] = v72;
          v74 = *(v65 + 11);
          v75 = *(v65 + 12);
          v76 = *(v65 + 14);
          v64[13] = *(v65 + 13);
          v64[14] = v76;
          v64[11] = v74;
          v64[12] = v75;
          v65 += 240;
          v64 += 15;
          v63 -= 240;
        }

        while (v65 != a2);
        while (a2 != a3)
        {
          if (*(a2 + 29) >= *(a6 + 232))
          {
            v77 = *a6;
            v78 = *(a6 + 32);
            *(v9 + 1) = *(a6 + 16);
            *(v9 + 2) = v78;
            *v9 = v77;
            v79 = *(a6 + 48);
            v80 = *(a6 + 64);
            v81 = *(a6 + 96);
            *(v9 + 5) = *(a6 + 80);
            *(v9 + 6) = v81;
            *(v9 + 3) = v79;
            *(v9 + 4) = v80;
            v82 = *(a6 + 112);
            v83 = *(a6 + 128);
            v84 = *(a6 + 160);
            *(v9 + 9) = *(a6 + 144);
            *(v9 + 10) = v84;
            *(v9 + 7) = v82;
            *(v9 + 8) = v83;
            v85 = *(a6 + 176);
            v86 = *(a6 + 192);
            v87 = *(a6 + 224);
            *(v9 + 13) = *(a6 + 208);
            *(v9 + 14) = v87;
            *(v9 + 11) = v85;
            *(v9 + 12) = v86;
            a6 += 240;
            v9 += 240;
            if (v64 == a6)
            {
              return result;
            }
          }

          else
          {
            v88 = *a2;
            v89 = *(a2 + 2);
            *(v9 + 1) = *(a2 + 1);
            *(v9 + 2) = v89;
            *v9 = v88;
            v90 = *(a2 + 3);
            v91 = *(a2 + 4);
            v92 = *(a2 + 6);
            *(v9 + 5) = *(a2 + 5);
            *(v9 + 6) = v92;
            *(v9 + 3) = v90;
            *(v9 + 4) = v91;
            v93 = *(a2 + 7);
            v94 = *(a2 + 8);
            v95 = *(a2 + 10);
            *(v9 + 9) = *(a2 + 9);
            *(v9 + 10) = v95;
            *(v9 + 7) = v93;
            *(v9 + 8) = v94;
            v96 = *(a2 + 11);
            v97 = *(a2 + 12);
            v98 = *(a2 + 14);
            *(v9 + 13) = *(a2 + 13);
            *(v9 + 14) = v98;
            *(v9 + 11) = v96;
            *(v9 + 12) = v97;
            a2 += 240;
            v9 += 240;
            if (v64 == a6)
            {
              return result;
            }
          }
        }

        return memmove(v9, a6, -(a6 + v63));
      }
    }

    else if (a2 != a3)
    {
      v34 = 0;
      do
      {
        v35 = (a6 + v34);
        v36 = *&a2[v34];
        v37 = *&a2[v34 + 32];
        v35[1] = *&a2[v34 + 16];
        v35[2] = v37;
        *v35 = v36;
        v38 = *&a2[v34 + 48];
        v39 = *&a2[v34 + 64];
        v40 = *&a2[v34 + 96];
        v35[5] = *&a2[v34 + 80];
        v35[6] = v40;
        v35[3] = v38;
        v35[4] = v39;
        v41 = *&a2[v34 + 112];
        v42 = *&a2[v34 + 128];
        v43 = *&a2[v34 + 160];
        v35[9] = *&a2[v34 + 144];
        v35[10] = v43;
        v35[7] = v41;
        v35[8] = v42;
        v44 = *&a2[v34 + 176];
        v45 = *&a2[v34 + 192];
        v46 = *&a2[v34 + 224];
        v35[13] = *&a2[v34 + 208];
        v35[14] = v46;
        v35[11] = v44;
        v35[12] = v45;
        v34 += 240;
      }

      while (&a2[v34] != a3);
      v47 = (a6 + v34);
      while (a2 != v9)
      {
        v48 = *(a2 - 1);
        v49 = *(v47 - 1);
        v50 = v49 < v48;
        if (v49 >= v48)
        {
          v51 = (v47 - 30);
        }

        else
        {
          v51 = a2 - 240;
        }

        v52 = *(v51 + 6);
        v54 = *(v51 + 3);
        v53 = *(v51 + 4);
        *(a3 - 10) = *(v51 + 5);
        *(a3 - 9) = v52;
        *(a3 - 12) = v54;
        *(a3 - 11) = v53;
        v55 = *(v51 + 10);
        v57 = *(v51 + 7);
        v56 = *(v51 + 8);
        *(a3 - 6) = *(v51 + 9);
        *(a3 - 5) = v55;
        *(a3 - 8) = v57;
        *(a3 - 7) = v56;
        v58 = *(v51 + 14);
        v60 = *(v51 + 11);
        v59 = *(v51 + 12);
        *(a3 - 2) = *(v51 + 13);
        *(a3 - 1) = v58;
        *(a3 - 4) = v60;
        *(a3 - 3) = v59;
        v61 = *v51;
        v62 = *(v51 + 2);
        *(a3 - 14) = *(v51 + 1);
        *(a3 - 13) = v62;
        *(a3 - 15) = v61;
        a3 -= 240;
        if (v50)
        {
          a2 -= 240;
        }

        else
        {
          v47 -= 30;
        }

        if (v47 == a6)
        {
          return result;
        }
      }

      if (v47 != a6)
      {
        v111 = -240;
        do
        {
          v112 = &a3[v111];
          v113 = *(v47 - 15);
          v114 = *(v47 - 13);
          *(v112 + 1) = *(v47 - 14);
          *(v112 + 2) = v114;
          *v112 = v113;
          v115 = *(v47 - 12);
          v116 = *(v47 - 11);
          v117 = *(v47 - 9);
          *(v112 + 5) = *(v47 - 10);
          *(v112 + 6) = v117;
          *(v112 + 3) = v115;
          *(v112 + 4) = v116;
          v118 = *(v47 - 8);
          v119 = *(v47 - 7);
          v120 = *(v47 - 5);
          *(v112 + 9) = *(v47 - 6);
          *(v112 + 10) = v120;
          *(v112 + 7) = v118;
          *(v112 + 8) = v119;
          v121 = *(v47 - 4);
          v122 = *(v47 - 3);
          v123 = *(v47 - 1);
          *(v112 + 13) = *(v47 - 2);
          *(v112 + 14) = v123;
          *(v112 + 11) = v121;
          *(v112 + 12) = v122;
          v111 -= 240;
          v47 -= 30;
        }

        while (v47 != a6);
      }
    }
  }

  return result;
}

void *sub_D61F90(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  sub_D6207C((a1 + 1), a2[1], a2[2], 0xCCCCCCCCCCCCCCCDLL * ((a2[2] - a2[1]) >> 4));
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  v5 = a2[4];
  v4 = a2[5];
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_D62058(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  sub_D5F734(v2);
  _Unwind_Resume(a1);
}

void sub_D6207C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x333333333333334)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_D62180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_D6253C(va);
  *(v10 + 8) = v11;
  sub_D6259C(&a9);
  _Unwind_Resume(a1);
}

float sub_D621A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*(a1 + 16), 0)));
    *(a1 + 24) = 0;
    sub_D622D4(a1, a2, a3);
  }

  else
  {
    v6 = 4;
    if (a3 > 4)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v7 = *(a1 + 16) * v6;
      if (*(a2 + 48) - *(a2 + 40) < v7)
      {
        break;
      }

      do
      {
LABEL_5:
        if ((v6 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v6 *= 2;
      }

      while (v6 < a3);
    }

    *(a1 + 56) = v6;
    result = *(a1 + 20) * v6;
    *a1 = v7;
    *(a1 + 8) = result;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_D622D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a2 + 48) - *(a2 + 40);
  v6 = 4;
  if (a3 > 4)
  {
    goto LABEL_3;
  }

  while (v5 >= (*(a1 + 16) * v6))
  {
    do
    {
LABEL_3:
      if ((v6 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v6 *= 2;
    }

    while (v6 < a3);
  }

  sub_D5B9C0(a1, v6);
  v7 = *(a2 + 56);
  if (v7)
  {
    v8 = *(a2 + 64);
    v9 = *(a2 + 68);
    if (*(a2 + 40))
    {
      v10 = 8 * v7;
      v11 = *(a2 + 72);
      while (1)
      {
        v12 = *(v11 + 4);
        if ((v8 != *v11 || v9 != v12) && (*(a2 + 32) != *v11 || *(a2 + 36) != v12))
        {
          break;
        }

        v11 += 8;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v34 = 8 * v7;
      v11 = *(a2 + 72);
      while (v8 == *v11 && v9 == *(v11 + 4))
      {
        v11 += 8;
        v34 -= 8;
        if (!v34)
        {
          goto LABEL_60;
        }
      }
    }
  }

  else
  {
    v11 = *(a2 + 72);
  }

  v15 = *(a2 + 72) + 8 * v7;
  if (v11 != v15)
  {
    do
    {
      v16 = *(a1 + 56) - 1;
      v17 = __ROR8__(*v11, 32);
      v18 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v17 ^ (v17 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v17 ^ (v17 >> 33))) >> 33));
      v19 = v18 ^ (v18 >> 33);
      v20 = *(a1 + 72);
      v21 = *(a1 + 64);
      v22 = *(a1 + 68);
      v23 = v19 & v16;
      v24 = (v20 + 8 * v23);
      if (v21 != *v24 || v22 != v24[1])
      {
        v26 = 1;
        do
        {
          v23 = (v23 + v26) & v16;
          v24 = (v20 + 8 * v23);
          ++v26;
        }

        while (v21 != *v24 || v22 != v24[1]);
      }

      *v24 = *v11;
      ++*(a1 + 48);
      v11 += 8;
      if (v11 != v15)
      {
        v28 = *(a2 + 64);
        v29 = *(a2 + 68);
        if (*(a2 + 40))
        {
          do
          {
            v30 = *(v11 + 4);
            if ((v28 != *v11 || v29 != v30) && (*(a2 + 32) != *v11 || *(a2 + 36) != v30))
            {
              break;
            }

            v11 += 8;
          }

          while (v11 != v15);
        }

        else
        {
          do
          {
            if (v28 != *v11 || v29 != *(v11 + 4))
            {
              break;
            }

            v11 += 8;
          }

          while (v11 != v15);
        }
      }
    }

    while (v11 != *(a2 + 72) + 8 * *(a2 + 56));
  }

LABEL_60:
  ++*(a1 + 28);
}

uint64_t sub_D6253C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 8);
      if (v5)
      {
        free(v5);
      }

      v3 -= 80;
    }
  }

  return a1;
}

void ***sub_D6259C(void ***a1)
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
          v6 = *(v4 - 1);
          if (v6)
          {
            free(v6);
          }

          v4 -= 80;
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

void sub_D6261C()
{
  v1 = 17;
  strcpy(v0, "segment_curviness");
  v3 = 262;
  strcpy(v2, "length");
  v5 = 529;
  strcpy(v4, "length_on_ferries");
  v7 = 789;
  strcpy(v6, "num_impeding_barriers");
  v8[23] = 16;
  strcpy(v8, "num_name_changes");
  v8[24] = 4;
  operator new();
}

void sub_D63100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  v21 = v19;
  while (1)
  {
    v22 = *(v21 - 9);
    v21 -= 4;
    if (v22 < 0)
    {
      operator delete(*v21);
    }

    if (v21 == &__p)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_D63428()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v4 = *sub_3B8500(v1);
  sub_7E9A4(&v7);
  v6 = 17;
  sub_DEB6E0(17, v3, v2);
  sub_D72984(&v5, v3, 0x11u, v4, v2);
}

void sub_D6FF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  __cxa_guard_abort(&qword_2733AA8);
  if (*(v15 + 3671) < 0)
  {
    operator delete(STACK[0x2FA0]);
  }

  sub_1959728(&STACK[0x3260]);
  sub_D827EC(&STACK[0x3910]);
  sub_D35A8C(va);
  if (*(v15 + 3647) < 0)
  {
    operator delete(STACK[0x2F88]);
  }

  sub_1758FB8(&STACK[0x2700]);
  sub_1758FB8(&STACK[0x24C0]);
  sub_CD5434(&STACK[0x2940]);
  sub_77A2F0(&STACK[0x2A90]);
  sub_D72350(&STACK[0x2AB0]);
  sub_419F70(&STACK[0x2AD0]);
  sub_D71208(&STACK[0x2B50]);
  sub_D71244(&STACK[0x2B70]);
  sub_D71208(&STACK[0x2B90]);
  sub_CDC398(&STACK[0x2BB0]);
  sub_49AE64(&STACK[0x2BD0]);
  sub_454784(&STACK[0x2BF0]);
  sub_CDC398(&STACK[0x2C28]);
  sub_44FD90(&STACK[0x2C40]);
  sub_5287C0(&STACK[0x2C58]);
  sub_CF3C94(&STACK[0x2F08]);
  _Unwind_Resume(a1);
}

void ***sub_D71160(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_13:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = *(v3 - 6);
        if (v5)
        {
          do
          {
LABEL_7:
            v6 = *v5;
            operator delete(v5);
            v5 = v6;
          }

          while (v6);
        }
      }

      else
      {
        v5 = *(v3 - 6);
        if (v5)
        {
          goto LABEL_7;
        }
      }

      v7 = *(v3 - 8);
      *(v3 - 8) = 0;
      if (v7)
      {
        operator delete(v7);
      }

      v3 -= 9;
      if (v3 == v2)
      {
        v4 = *a1;
        goto LABEL_13;
      }
    }
  }

  return a1;
}

void ***sub_D71208(void ***a1)
{
  if (*a1)
  {
    sub_D7260C(a1);
    operator delete(*a1);
  }

  return a1;
}

void ***sub_D71244(void ***a1)
{
  if (*a1)
  {
    sub_D72788(a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_D71280(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v5 = *(i - 24);
    if (v5)
    {
      v6 = *(i - 16);
      v4 = *(i - 24);
      if (v6 == v5)
      {
LABEL_3:
        *(i - 16) = v5;
        operator delete(v4);
        continue;
      }

      while (2)
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 3));
          v8 = *(v6 - 6);
          if (v8)
          {
LABEL_14:
            *(v6 - 5) = v8;
            operator delete(v8);
          }
        }

        else
        {
          v8 = *(v6 - 6);
          if (v8)
          {
            goto LABEL_14;
          }
        }

        v9 = v6 - 9;
        v10 = *(v6 - 9);
        if (v10)
        {
          v11 = *(v6 - 8);
          v7 = *(v6 - 9);
          if (v11 != v10)
          {
            do
            {
              v12 = *(v11 - 6);
              if (v12)
              {
                *(v11 - 5) = v12;
                operator delete(v12);
              }

              v13 = v11 - 10;
              if (*(v11 - 57) < 0)
              {
                operator delete(*v13);
              }

              v11 -= 10;
            }

            while (v13 != v10);
            v7 = *v9;
          }

          *(v6 - 8) = v10;
          operator delete(v7);
        }

        v6 -= 9;
        if (v9 == v5)
        {
          v4 = *(i - 24);
          goto LABEL_3;
        }

        continue;
      }
    }
  }

  a1[1] = v2;
}

uint64_t sub_D71398(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = (a1 + 8);
    if (*(a1 + 8))
    {
      sub_CE9FC4((a1 + 8));
      v3 = *v2;
LABEL_12:
      operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = *(a1 + 32);
      v3 = *(a1 + 24);
      if (v5 != v4)
      {
        do
        {
          if (*(v5 - 1) < 0)
          {
            operator delete(*(v5 - 24));
          }

          v5 -= 32;
        }

        while (v5 != v4);
        v3 = *(a1 + 24);
      }

      *(a1 + 32) = v4;
      goto LABEL_12;
    }
  }

  return a1;
}

uint64_t sub_D71434(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = (a1 + 32);
    v3 = (a1 + 8);
    if (*(a1 + 32))
    {
      sub_D714EC((a1 + 32));
      operator delete(*v2);
    }

    if (*v3)
    {
      sub_D7260C((a1 + 8));
      v4 = *v3;
LABEL_14:
      operator delete(v4);
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v6 != v5)
      {
        do
        {
          if (*(v6 - 1) < 0)
          {
            operator delete(*(v6 - 24));
          }

          v6 -= 32;
        }

        while (v6 != v5);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v5;
      goto LABEL_14;
    }
  }

  return a1;
}

void sub_D714EC(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    v4 = a1[1];
    do
    {
      v7 = *(v4 - 3);
      v4 -= 3;
      v6 = v7;
      if (v7)
      {
        v8 = *(v3 - 2);
        v5 = v6;
        if (v8 != v6)
        {
          do
          {
            v10 = *(v8 - 3);
            if (v10)
            {
              v11 = *(v8 - 2);
              v12 = *(v8 - 3);
              if (v11 != v10)
              {
                do
                {
                  v13 = *(v11 - 5);
                  if (v13)
                  {
                    *(v11 - 4) = v13;
                    operator delete(v13);
                  }

                  v11 -= 56;
                }

                while (v11 != v10);
                v12 = *(v8 - 3);
              }

              *(v8 - 2) = v10;
              operator delete(v12);
            }

            v14 = v8 - 6;
            v15 = *(v8 - 6);
            if (v15)
            {
              v16 = *(v8 - 5);
              v9 = *(v8 - 6);
              if (v16 != v15)
              {
                do
                {
                  v17 = *(v16 - 9);
                  if (v17)
                  {
                    *(v16 - 8) = v17;
                    operator delete(v17);
                  }

                  v18 = *(v16 - 12);
                  if (v18)
                  {
                    *(v16 - 11) = v18;
                    operator delete(v18);
                  }

                  v16 -= 136;
                }

                while (v16 != v15);
                v9 = *v14;
              }

              *(v8 - 5) = v15;
              operator delete(v9);
            }

            v8 -= 6;
          }

          while (v14 != v6);
          v5 = *v4;
        }

        *(v3 - 2) = v6;
        operator delete(v5);
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_D71628(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = (a1 + 8);
    if (*(a1 + 8))
    {
      sub_D72788((a1 + 8));
      v3 = *v2;
LABEL_12:
      operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = *(a1 + 32);
      v3 = *(a1 + 24);
      if (v5 != v4)
      {
        do
        {
          if (*(v5 - 1) < 0)
          {
            operator delete(*(v5 - 24));
          }

          v5 -= 32;
        }

        while (v5 != v4);
        v3 = *(a1 + 24);
      }

      *(a1 + 32) = v4;
      goto LABEL_12;
    }
  }

  return a1;
}

uint64_t sub_D716C4(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = (a1 + 8);
    if (*(a1 + 8))
    {
      sub_D7238C((a1 + 8));
      v3 = *v2;
LABEL_12:
      operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = *(a1 + 32);
      v3 = *(a1 + 24);
      if (v5 != v4)
      {
        do
        {
          if (*(v5 - 1) < 0)
          {
            operator delete(*(v5 - 24));
          }

          v5 -= 32;
        }

        while (v5 != v4);
        v3 = *(a1 + 24);
      }

      *(a1 + 32) = v4;
      goto LABEL_12;
    }
  }

  return a1;
}

uint64_t sub_D71760(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_D71800(a1, a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

uint64_t sub_D71800(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 304))
  {
    sub_D72204((a2 + 304));
    operator delete(*(a2 + 304));
  }

  if (*(a2 + 280))
  {
    sub_D71280((a2 + 280));
    operator delete(*(a2 + 280));
  }

  v3 = *(a2 + 256);
  if (v3)
  {
    v4 = *(a2 + 264);
    v5 = *(a2 + 256);
    if (v4 != v3)
    {
      do
      {
        v4 = sub_12D8D7C(v4 - 8);
      }

      while (v4 != v3);
      v5 = *(a2 + 256);
    }

    *(a2 + 264) = v3;
    operator delete(v5);
  }

  return sub_12C41EC(a2);
}

uint64_t sub_D7189C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7)
{
  v13 = sub_3B2E6C(a4);
  sub_2C1B08(v59, v13);
  v65 = 1;
  v27 = sub_E728B8(a5, v59);
  v14 = sub_3B2E6C(a4);
  sub_2C1B08(v52, v14);
  v58 = 1;
  v15 = sub_E72EB8(a5, v52);
  v16 = sub_3B6890(a4);
  v46[0] = 0;
  sub_E6359C(v49, a4, v46);
  v47 = a5;
  v48 = 1;
  sub_E63864(v49, &v47, &v50);
  v17 = sub_E83024(a5);
  sub_E79F40(a5, v46);
  v18 = sub_4EF388(v46);
  v19 = sub_3B2E6C(a4);
  sub_2C1B08(v28, v19);
  v34 = 1;
  sub_E85008(a5, v28, &v35);
  *a1 = a4;
  *(a1 + 8) = a2;
  *(a1 + 12) = v27;
  *(a1 + 16) = v15;
  v20 = *v16;
  v21 = *(v16 + 8);
  *(a1 + 32) = 0;
  *(a1 + 28) = v21;
  *(a1 + 20) = v20;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_D71E14(a1 + 32, v50, v51, 0x6FB586FB586FB587 * ((v51 - v50) >> 3));
  *(a1 + 56) = v17;
  *(a1 + 60) = v18;
  sub_D71F30(a1 + 64, &v35);
  *(a1 + 264) = *a3;
  sub_435834((a1 + 280), (a3 + 16));
  *(a1 + 304) = *(a3 + 40);
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  *(a1 + 312) = *a7;
  *(a1 + 328) = *(a7 + 16);
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v34 == 1)
  {
    if (v33 < 0)
    {
      operator delete(v32);
      if ((v31 & 0x80000000) == 0)
      {
LABEL_14:
        if ((v29 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

LABEL_31:
        operator delete(v28[0]);
        sub_5287C0(v46);
        v22 = v50;
        if (!v50)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }
    }

    else if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(v30);
    if (v29 < 0)
    {
      goto LABEL_31;
    }
  }

LABEL_15:
  sub_5287C0(v46);
  v22 = v50;
  if (!v50)
  {
    goto LABEL_20;
  }

LABEL_16:
  v23 = v51;
  v24 = v22;
  if (v51 != v22)
  {
    do
    {
      v23 = sub_44FDEC(v23 - 440);
    }

    while (v23 != v22);
    v24 = v50;
  }

  v51 = v22;
  operator delete(v24);
LABEL_20:
  if (v58 != 1)
  {
    goto LABEL_24;
  }

  if (v57 < 0)
  {
    operator delete(v56);
    if ((v55 & 0x80000000) == 0)
    {
LABEL_23:
      if ((v53 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_35:
      operator delete(v52[0]);
      if (v65 != 1)
      {
        goto LABEL_40;
      }

      goto LABEL_25;
    }
  }

  else if ((v55 & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

  operator delete(v54);
  if (v53 < 0)
  {
    goto LABEL_35;
  }

LABEL_24:
  if (v65 != 1)
  {
    goto LABEL_40;
  }

LABEL_25:
  if (v64 < 0)
  {
    operator delete(v63);
    if ((v62 & 0x80000000) == 0)
    {
LABEL_27:
      if (v60 < 0)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    }
  }

  else if ((v62 & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(v61);
  if (v60 < 0)
  {
LABEL_39:
    operator delete(v59[0]);
  }

LABEL_40:
  *(a1 + 336) = *a6;
  return a1;
}

void sub_D71C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  sub_D71D0C(v46 + 64);
  sub_44FD90(v47);
  sub_D71D0C(&a21);
  sub_D71D80(&a11);
  sub_5287C0(&a46);
  sub_44FD90(&STACK[0x3F8]);
  sub_D71D80(v48 - 256);
  sub_D71D80(v48 - 176);
  _Unwind_Resume(a1);
}

uint64_t sub_D71D0C(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *(a1 + 16) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_D71D80(uint64_t result)
{
  if (*(result + 72) == 1)
  {
    if (*(result + 71) < 0)
    {
      v1 = result;
      operator delete(*(result + 48));
      result = v1;
      if ((*(v1 + 47) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(result + 23) & 0x80000000) == 0)
        {
          return result;
        }

LABEL_8:
        v3 = result;
        operator delete(*result);
        return v3;
      }
    }

    else if ((*(result + 47) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    v2 = result;
    operator delete(*(result + 24));
    result = v2;
    if (*(v2 + 23) < 0)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_D71E14(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x94F2094F2094F3)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_D71EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 440;
    v15 = -v12;
    do
    {
      v14 = sub_44FDEC(v14) - 440;
      v15 += 440;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_4EA79C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_D71F30(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 8) = 0;
  *a1 = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = v7;
  sub_528460(a1 + 64, a2 + 16);
  v8 = *(a2 + 20);
  v9 = *(a2 + 168);
  *(a1 + 176) = 0;
  *(a1 + 168) = v9;
  *(a1 + 160) = v8;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v11 = *(a2 + 22);
  v10 = *(a2 + 23);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_D7204C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_D7208C(uint64_t a1)
{
  v2 = *(a1 + 312);
  if (v2)
  {
    v3 = *(a1 + 320);
    v4 = *(a1 + 312);
    if (v3 == v2)
    {
LABEL_13:
      *(a1 + 320) = v2;
      operator delete(v4);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
        v5 = *(v3 - 48);
        if (v5)
        {
          do
          {
LABEL_7:
            v6 = *v5;
            operator delete(v5);
            v5 = v6;
          }

          while (v6);
        }
      }

      else
      {
        v5 = *(v3 - 48);
        if (v5)
        {
          goto LABEL_7;
        }
      }

      v7 = *(v3 - 64);
      *(v3 - 64) = 0;
      if (v7)
      {
        operator delete(v7);
      }

      v3 -= 72;
      if (v3 == v2)
      {
        v4 = *(a1 + 312);
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  v8 = *(a1 + 280);
  if (v8)
  {
    v9 = *(a1 + 288);
    v10 = *(a1 + 280);
    if (v9 != v8)
    {
      do
      {
        if (*(v9 - 1) < 0)
        {
          operator delete(*(v9 - 24));
        }

        v9 -= 32;
      }

      while (v9 != v8);
      v10 = *(a1 + 280);
    }

    *(a1 + 288) = v8;
    operator delete(v10);
  }

  v11 = *(a1 + 240);
  if (v11)
  {
    *(a1 + 248) = v11;
    operator delete(v11);
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  v12 = *(a1 + 168);
  if (v12)
  {
    *(a1 + 176) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 136);
  if (v13)
  {
    *(a1 + 144) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    *(a1 + 80) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = *(a1 + 40);
    v17 = *(a1 + 32);
    if (v16 != v15)
    {
      do
      {
        v16 = sub_44FDEC(v16 - 440);
      }

      while (v16 != v15);
      v17 = *(a1 + 32);
    }

    *(a1 + 40) = v15;
    operator delete(v17);
  }

  return a1;
}

void sub_D72204(void ***a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v3 = a1[1];
    do
    {
      v6 = *(v3 - 3);
      v3 -= 3;
      v5 = v6;
      if (v6)
      {
        v7 = *(v2 - 2);
        v4 = v5;
        if (v7 != v5)
        {
          do
          {
            v8 = *(v7 - 3);
            if (v8)
            {
              v9 = *(v7 - 2);
              v10 = *(v7 - 3);
              if (v9 != v8)
              {
                do
                {
                  v11 = v9 - 32;
                  v12 = *(v9 - 2);
                  if (v12 != -1)
                  {
                    (off_2673CD8[v12])(&v16, v9 - 32);
                  }

                  *(v9 - 2) = -1;
                  v9 -= 32;
                }

                while (v11 != v8);
                v10 = *(v7 - 3);
              }

              *(v7 - 2) = v8;
              operator delete(v10);
            }

            v13 = *(v7 - 8);
            if (v13 != -1)
            {
              (off_2673CD8[v13])(&v17, v7 - 7);
            }

            v14 = v7 - 10;
            *(v7 - 8) = -1;
            if (*(v7 - 57) < 0)
            {
              operator delete(*v14);
            }

            v7 -= 10;
          }

          while (v14 != v5);
          v4 = *v3;
        }

        *(v2 - 2) = v5;
        operator delete(v4);
      }

      v2 = v3;
    }

    while (v3 != v1);
  }

  a1[1] = v1;
}

void ***sub_D72350(void ***a1)
{
  if (*a1)
  {
    sub_D7238C(a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_D7238C(void ***a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    do
    {
      v4 = *(v2 - 3);
      if (v4)
      {
        v5 = *(v2 - 2);
        v6 = *(v2 - 3);
        if (v5 != v4)
        {
          do
          {
            v8 = *(v5 - 4);
            if (v8)
            {
              do
              {
                v9 = *v8;
                operator delete(v8);
                v8 = v9;
              }

              while (v9);
            }

            v10 = *(v5 - 6);
            *(v5 - 6) = 0;
            if (v10)
            {
              operator delete(v10);
            }

            v11 = *(v5 - 9);
            if (v11)
            {
              do
              {
                v12 = *v11;
                operator delete(v11);
                v11 = v12;
              }

              while (v12);
            }

            v13 = *(v5 - 11);
            *(v5 - 11) = 0;
            if (v13)
            {
              operator delete(v13);
            }

            v14 = v5 - 14;
            v15 = *(v5 - 14);
            if (v15)
            {
              v16 = *(v5 - 13);
              v7 = *(v5 - 14);
              if (v16 != v15)
              {
                v17 = *(v5 - 13);
                do
                {
                  v19 = *(v17 - 5);
                  v17 -= 40;
                  v18 = v19;
                  if (v19)
                  {
                    *(v16 - 4) = v18;
                    operator delete(v18);
                  }

                  v16 = v17;
                }

                while (v17 != v15);
                v7 = *v14;
              }

              *(v5 - 13) = v15;
              operator delete(v7);
            }

            v5 -= 14;
          }

          while (v14 != v4);
          v6 = *(v2 - 3);
        }

        *(v2 - 2) = v4;
        operator delete(v6);
      }

      if (*(v2 - 25) < 0)
      {
        operator delete(*(v2 - 6));
        v20 = *(v2 - 16);
        if (v20)
        {
LABEL_33:
          v23 = *(v2 - 15);
          v24 = v20;
          if (v23 != v20)
          {
            do
            {
              v23 = sub_3EEA68(v23 - 1096);
            }

            while (v23 != v20);
            v24 = *(v2 - 16);
          }

          *(v2 - 15) = v20;
          operator delete(v24);
          v21 = v2 - 19;
          v22 = *(v2 - 19);
          if (!v22)
          {
            goto LABEL_5;
          }

LABEL_37:
          v25 = *(v2 - 18);
          v3 = v22;
          if (v25 != v22)
          {
            do
            {
              v26 = *(v25 - 3);
              if (v26)
              {
                v27 = *(v25 - 2);
                v28 = *(v25 - 3);
                if (v27 != v26)
                {
                  do
                  {
                    v29 = v27 - 32;
                    v30 = *(v27 - 2);
                    if (v30 != -1)
                    {
                      (off_2673CD8[v30])(&v34, v27 - 32);
                    }

                    *(v27 - 2) = -1;
                    v27 -= 32;
                  }

                  while (v29 != v26);
                  v28 = *(v25 - 3);
                }

                *(v25 - 2) = v26;
                operator delete(v28);
              }

              v31 = *(v25 - 8);
              if (v31 != -1)
              {
                (off_2673CD8[v31])(&v35, v25 - 7);
              }

              v32 = v25 - 10;
              *(v25 - 8) = -1;
              if (*(v25 - 57) < 0)
              {
                operator delete(*v32);
              }

              v25 -= 10;
            }

            while (v32 != v22);
            v3 = *v21;
          }

          *(v2 - 18) = v22;
          operator delete(v3);
          goto LABEL_5;
        }
      }

      else
      {
        v20 = *(v2 - 16);
        if (v20)
        {
          goto LABEL_33;
        }
      }

      v21 = v2 - 19;
      v22 = *(v2 - 19);
      if (v22)
      {
        goto LABEL_37;
      }

LABEL_5:
      v2 = v21;
    }

    while (v21 != v1);
  }

  a1[1] = v1;
}

void sub_D7260C(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    v4 = a1[1];
    do
    {
      v7 = *(v4 - 3);
      v4 -= 3;
      v6 = v7;
      if (v7)
      {
        v8 = *(v3 - 2);
        v5 = v6;
        if (v8 != v6)
        {
          v9 = *(v3 - 2);
          do
          {
            v12 = *(v9 - 3);
            v9 -= 3;
            v11 = v12;
            if (v12)
            {
              v13 = *(v8 - 2);
              v10 = v11;
              if (v13 != v11)
              {
                v14 = v13 - 128;
                do
                {
                  v16 = *(v14 + 72);
                  if (v16)
                  {
                    *(v14 + 80) = v16;
                    operator delete(v16);
                  }

                  v17 = *(v14 + 48);
                  if (v17)
                  {
                    *(v14 + 56) = v17;
                    operator delete(v17);
                  }

                  v18 = *(v14 + 24);
                  if (v18)
                  {
                    *(v14 + 32) = v18;
                    operator delete(v18);
                  }

                  v19 = *v14;
                  if (*v14)
                  {
                    *(v14 + 8) = v19;
                    operator delete(v19);
                  }

                  v20 = *(v14 - 24);
                  if (v20)
                  {
                    *(v14 - 16) = v20;
                    operator delete(v20);
                  }

                  v21 = *(v14 - 48);
                  if (v21)
                  {
                    *(v14 - 40) = v21;
                    operator delete(v21);
                  }

                  v22 = *(v14 - 72);
                  if (v22)
                  {
                    *(v14 - 64) = v22;
                    operator delete(v22);
                  }

                  v23 = *(v14 - 96);
                  if (v23)
                  {
                    *(v14 - 88) = v23;
                    operator delete(v23);
                  }

                  v24 = *(v14 - 120);
                  if (v24)
                  {
                    *(v14 - 112) = v24;
                    operator delete(v24);
                  }

                  v25 = *(v14 - 144);
                  if (v25)
                  {
                    *(v14 - 136) = v25;
                    operator delete(v25);
                  }

                  v15 = (v14 - 160);
                  v14 -= 288;
                }

                while (v15 != v11);
                v10 = *v9;
              }

              *(v8 - 2) = v11;
              operator delete(v10);
            }

            v8 = v9;
          }

          while (v9 != v6);
          v5 = *v4;
        }

        *(v3 - 2) = v6;
        operator delete(v5);
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

void sub_D72788(void ***a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 != *a1)
  {
    v3 = a1[1];
    v23 = *a1;
    do
    {
      v6 = *(v3 - 3);
      v3 -= 3;
      v5 = v6;
      if (v6)
      {
        v25 = v3;
        v7 = *(v1 - 2);
        v4 = v5;
        if (v7 != v5)
        {
          v24 = v1;
          while (1)
          {
            if (*(v7 - 1) < 0)
            {
              operator delete(*(v7 - 3));
              v9 = *(v7 - 13);
              if (v9)
              {
LABEL_17:
                v12 = *(v7 - 12);
                v13 = v9;
                if (v12 != v9)
                {
                  do
                  {
                    v12 = sub_3EEA68(v12 - 1096);
                  }

                  while (v12 != v9);
                  v13 = *(v7 - 13);
                }

                *(v7 - 12) = v9;
                operator delete(v13);
                v10 = v7 - 16;
                v11 = *(v7 - 16);
                if (!v11)
                {
                  goto LABEL_11;
                }

LABEL_21:
                v14 = *(v7 - 15);
                v8 = v11;
                if (v14 != v11)
                {
                  do
                  {
                    v15 = *(v14 - 3);
                    if (v15)
                    {
                      v16 = *(v14 - 2);
                      v17 = *(v14 - 3);
                      if (v16 != v15)
                      {
                        do
                        {
                          v18 = v16 - 32;
                          v19 = *(v16 - 2);
                          if (v19 != -1)
                          {
                            (off_2673CD8[v19])(&v26, v16 - 32);
                          }

                          *(v16 - 2) = -1;
                          v16 -= 32;
                        }

                        while (v18 != v15);
                        v17 = *(v14 - 3);
                      }

                      *(v14 - 2) = v15;
                      operator delete(v17);
                    }

                    v20 = *(v14 - 8);
                    if (v20 != -1)
                    {
                      (off_2673CD8[v20])(&v27, v14 - 7);
                    }

                    v21 = v14 - 10;
                    *(v14 - 8) = -1;
                    if (*(v14 - 57) < 0)
                    {
                      operator delete(*v21);
                    }

                    v14 -= 10;
                  }

                  while (v21 != v11);
                  v8 = *v10;
                }

                *(v7 - 15) = v11;
                operator delete(v8);
                goto LABEL_11;
              }
            }

            else
            {
              v9 = *(v7 - 13);
              if (v9)
              {
                goto LABEL_17;
              }
            }

            v10 = v7 - 16;
            v11 = *(v7 - 16);
            if (v11)
            {
              goto LABEL_21;
            }

LABEL_11:
            v7 = v10;
            if (v10 == v5)
            {
              v1 = v24;
              v4 = *v25;
              v2 = v23;
              break;
            }
          }
        }

        *(v1 - 2) = v5;
        operator delete(v4);
        v3 = v25;
      }

      v1 = v3;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void sub_D72984(__n128 *a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5)
{
  v19[0].n128_u64[0] = 0;
  v19[0].n128_u64[1] = &off_2669FE0;
  sub_434934(a1, v19);
  *(v10 + 48) = a2;
  v11 = sub_3B6890(a5);
  a1[5].n128_u32[2] = 0x7FFFFFFF;
  a1[3].n128_u64[1] = v11;
  a1[4].n128_u8[0] = a3;
  a1[4].n128_u64[1] = a4;
  a1[5].n128_f64[0] = -NAN;
  v19[1].n128_u8[7] = 21;
  strcpy(v19, "QueryPlanModuleRunner");
  __p = 0;
  v17 = 0;
  v18 = 0;
  sub_3AEC94(a5, v19, &__p);
  v12 = __p;
  if (__p)
  {
    v13 = v17;
    v14 = __p;
    if (v17 != __p)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = __p;
    }

    v17 = v12;
    operator delete(v14);
  }

  if (v19[1].n128_i8[7] < 0)
  {
    operator delete(v19[0].n128_u64[0]);
  }

  operator new();
}

void sub_D72B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_CF3C94(v18);
    _Unwind_Resume(a1);
  }

  sub_CF3C94(v18);
  _Unwind_Resume(a1);
}

void ****sub_D72BEC(void ****result)
{
  if ((result[1] & 1) == 0)
  {
    if (**result)
    {
      v1 = result;
      sub_CE9FC4(*result);
      operator delete(**v1);
      return v1;
    }
  }

  return result;
}

void *sub_D72C3C(void *a1, uint64_t a2)
{
  v4 = (*(**(a2 + 8) + 16))(*(a2 + 8));
  v5 = strlen(v4);
  v6 = sub_4A5C(a1, v4, v5);
  v7 = sub_4A5C(v6, ": ", 2);
  (*(**(a2 + 8) + 48))(__p);
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  sub_4A5C(v7, v8, v9);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_D72D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_D72D60(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v4 = a1 + 8;
    if (*a2)
    {
      sub_D16C58(v4, a2 + 8);
LABEL_16:
      *(a1 + 696) = *(a2 + 696);
      goto LABEL_17;
    }

    sub_5287C0(v4);
  }

  else if (*a2)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 24);
      if (v6 != v5)
      {
        do
        {
          if (*(v6 - 1) < 0)
          {
            operator delete(*(v6 - 24));
          }

          v6 -= 32;
        }

        while (v6 != v5);
        v7 = *(a1 + 24);
      }

      *(a1 + 32) = v5;
      operator delete(v7);
    }

    sub_D1E520(a1 + 8, a2 + 8);
    goto LABEL_16;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_17:
  *a1 = *a2;
  return a1;
}

uint64_t sub_D72E5C(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

void sub_D72F5C(std::exception *this)
{
  this->__vftable = off_2673D90;
  v2 = this[3].__vftable;
  if (v2)
  {
    v3 = this[4].__vftable;
    v4 = this[3].__vftable;
    if (v3 != v2)
    {
      do
      {
        if (SHIBYTE(v3[-1].what) < 0)
        {
          operator delete(v3[-1].~exception);
        }

        v3 = (v3 - 32);
      }

      while (v3 != v2);
      v4 = this[3].__vftable;
    }

    this[4].__vftable = v2;
    operator delete(v4);
  }

  std::exception::~exception(this);
}

void sub_D72FFC(std::exception *this)
{
  this->__vftable = off_2673D90;
  v2 = this[3].__vftable;
  if (v2)
  {
    v3 = this[4].__vftable;
    v4 = this[3].__vftable;
    if (v3 != v2)
    {
      do
      {
        if (SHIBYTE(v3[-1].what) < 0)
        {
          operator delete(v3[-1].~exception);
        }

        v3 = (v3 - 32);
      }

      while (v3 != v2);
      v4 = this[3].__vftable;
    }

    this[4].__vftable = v2;
    operator delete(v4);
  }

  std::exception::~exception(this);

  operator delete();
}

void sub_D730BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  ++*(a1 + 80);
  *a4 = 1;
  *(a4 + 8) = 0;
  v6 = (a4 + 8);
  if (*(a1 + 8) != &off_2669FE0 || *a1 != 0)
  {
    sub_434934(v67, a1);
    v8 = v67[2].n128_u64[0];
    v9 = v67[2].n128_u32[2];
    *(a4 + 8) = v67[0].n128_u8[0];
    *(a4 + 9) = *(v67[0].n128_u64 + 1);
    *(a4 + 16) = v67[0].n128_u64[1];
    *(a4 + 24) = v67[1];
    *(a4 + 40) = v8;
    *(a4 + 48) = v9;
    *a4 = 0;
    return;
  }

  sub_7E9A4(v75);
  v12 = sub_D33CCC(v74, *a2, **(a2 + 8), *(a2 + 16), *(a2 + 24));
  sub_D32E24(v12, v67);
  v13 = v67[0].n128_u8[0];
  if (*a4 == 1)
  {
    if (!v67[0].n128_u8[0])
    {
      goto LABEL_16;
    }

LABEL_19:
    LOBYTE(v6->__val_) = v67[0].n128_u8[8];
    *a4 = v13;
    if (v13)
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  if (v67[0].n128_u8[0])
  {
    v14 = *(a4 + 24);
    if (v14)
    {
      v15 = *(a4 + 32);
      v16 = *(a4 + 24);
      if (v15 != v14)
      {
        do
        {
          if (*(v15 - 1) < 0)
          {
            operator delete(*(v15 - 24));
          }

          v15 -= 32;
        }

        while (v15 != v14);
        v16 = *(a4 + 24);
      }

      *(a4 + 32) = v14;
      operator delete(v16);
      v13 = v67[0].n128_u8[0];
    }

    goto LABEL_19;
  }

LABEL_16:
  *v6 = *(v67 + 8);
  *(a4 + 24) = *(&v67[1] + 8);
  *(a4 + 40) = v67[2].n128_u64[1];
  memset(&v67[1].n128_i8[8], 0, 24);
  *(a4 + 48) = v68;
  *a4 = v13;
LABEL_20:
  v17 = v67[1].n128_u64[1];
  if (v67[1].n128_u64[1])
  {
    v18 = v67[2].n128_u64[0];
    v19 = v67[1].n128_u64[1];
    if (v67[2].n128_u64[0] != v67[1].n128_u64[1])
    {
      do
      {
        if (*(v18 - 1) < 0)
        {
          operator delete(*(v18 - 24));
        }

        v18 -= 32;
      }

      while (v18 != v17);
      v19 = v67[1].n128_u64[1];
    }

    v67[2].n128_u64[0] = v17;
    operator delete(v19);
  }

LABEL_28:
  v20 = sub_7EAB4(v75);
  v21 = v20;
  v22 = *(a1 + 84);
  v23 = v22 != 0x7FFFFFFF && v22 <= v20;
  if (!v23 || !sub_7E7E4(1u))
  {
    goto LABEL_66;
  }

  sub_19594F8(v67[0].n128_f64);
  v24 = sub_4A5C(v67, "Found long running (", 20);
  v25 = sub_72140(v24, v21);
  v26 = sub_4A5C(v25, ") ", 2);
  v27 = sub_4A5C(v26, "RequestValidationModule", 23);
  v28 = sub_4A5C(v27, " in ", 4);
  sub_7B538(*(a1 + 64), &__dst);
  if ((v66 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.n128_u64[0];
  }

  if ((v66 & 0x80u) == 0)
  {
    v30 = v66;
  }

  else
  {
    v30 = __dst.n128_i64[1];
  }

  v31 = sub_4A5C(v28, p_dst, v30);
  sub_4A5C(v31, " step ", 6);
  v32 = std::ostream::operator<<();
  v33 = sub_4A5C(v32, " (request: ", 11);
  sub_17541D0(v62, *(a1 + 48));
  sub_E9209C(v62, *(a1 + 56), v63);
  if ((v64 & 0x80u) == 0)
  {
    v34 = v63;
  }

  else
  {
    v34 = v63[0];
  }

  if ((v64 & 0x80u) == 0)
  {
    v35 = v64;
  }

  else
  {
    v35 = v63[1];
  }

  v36 = sub_4A5C(v33, v34, v35);
  sub_4A5C(v36, ")", 1);
  if (v64 < 0)
  {
    operator delete(v63[0]);
    sub_1754598(v62);
    if ((v66 & 0x80000000) == 0)
    {
LABEL_48:
      v37 = v73;
      if ((v73 & 0x10) == 0)
      {
        goto LABEL_49;
      }

LABEL_53:
      v39 = v72;
      if (v72 < v69)
      {
        v72 = v69;
        v39 = v69;
      }

      v40 = v68;
      v38 = v39 - v68;
      if (v39 - v68 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_111:
        sub_3244();
      }

LABEL_56:
      if (v38 >= 0x17)
      {
        operator new();
      }

      v66 = v38;
      if (v38)
      {
        memmove(&__dst, v40, v38);
      }

      goto LABEL_61;
    }
  }

  else
  {
    sub_1754598(v62);
    if ((v66 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  operator delete(__dst.n128_u64[0]);
  v37 = v73;
  if ((v73 & 0x10) != 0)
  {
    goto LABEL_53;
  }

LABEL_49:
  if ((v37 & 8) != 0)
  {
    v40 = v67[1].n128_u64[1];
    v38 = v67[2].n128_u64[1] - v67[1].n128_u64[1];
    if (v67[2].n128_u64[1] - v67[1].n128_u64[1] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_111;
    }

    goto LABEL_56;
  }

  v38 = 0;
  v66 = 0;
LABEL_61:
  __dst.n128_u8[v38] = 0;
  sub_7E854(&__dst, 1u);
  if (v66 < 0)
  {
    operator delete(__dst.n128_u64[0]);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  std::locale::~locale(&v67[1]);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_66:
  v41 = *(a1 + 88);
  if (v41 == 0x7FFFFFFF || v41 > v21)
  {
    v46 = (a1 + 64);
    v45 = *(a1 + 64);
    if (*a4)
    {
      sub_D73B78(a4);
    }
  }

  else
  {
    __dst.n128_u64[0] = 10;
    __dst.n128_u64[1] = &off_2669FE0;
    sub_434934(v67, &__dst);
    v42 = v67[2].n128_u64[0];
    v43 = v67[1];
    v44 = v67[2].n128_u32[2];
    *(a4 + 8) = v67[0].n128_u8[0];
    *(a4 + 9) = *(v67[0].n128_u64 + 1);
    *(a4 + 16) = v67[0].n128_u64[1];
    *(a4 + 24) = v43;
    *(a4 + 40) = v42;
    *(a4 + 48) = v44;
    *a4 = 0;
    v46 = (a1 + 64);
    v45 = *(a1 + 64);
  }

  memset(v67, 0, sizeof(v67));
  sub_7CA38(v45, a3, v67, *(a1 + 72));
  v47 = v67[1].n128_u64[1];
  if (v67[1].n128_u64[1])
  {
    v48 = v67[2].n128_u64[0];
    v49 = v67[1].n128_u64[1];
    if (v67[2].n128_u64[0] != v67[1].n128_u64[1])
    {
      do
      {
        v50 = *(v48 - 25);
        v48 -= 6;
        if (v50 < 0)
        {
          operator delete(*v48);
        }
      }

      while (v48 != v47);
      v49 = v67[1].n128_u64[1];
    }

    v67[2].n128_u64[0] = v47;
    operator delete(v49);
  }

  if (v67[1].n128_i8[7] < 0)
  {
    operator delete(v67[0].n128_u64[0]);
    if (*a4)
    {
      return;
    }
  }

  else if (*a4)
  {
    return;
  }

  sub_DEBB90(*(a1 + 64), v6, *(a1 + 48), *(a1 + 72));
  if (sub_7E7E4(3u))
  {
    sub_19594F8(v67[0].n128_f64);
    sub_7B538(*v46, &__dst);
    if ((v66 & 0x80u) == 0)
    {
      v51 = &__dst;
    }

    else
    {
      v51 = __dst.n128_u64[0];
    }

    if ((v66 & 0x80u) == 0)
    {
      v52 = v66;
    }

    else
    {
      v52 = __dst.n128_i64[1];
    }

    v53 = sub_4A5C(v67, v51, v52);
    sub_4A5C(v53, " failed in step ", 16);
    v54 = std::ostream::operator<<();
    v55 = sub_4A5C(v54, " (", 2);
    v56 = sub_4A5C(v55, "RequestValidationModule", 23);
    v57 = sub_4A5C(v56, ") with error: ", 14);
    sub_D72C3C(v57, v6);
    if (v66 < 0)
    {
      operator delete(__dst.n128_u64[0]);
      v58 = v73;
      if ((v73 & 0x10) == 0)
      {
LABEL_92:
        if ((v58 & 8) == 0)
        {
          v59 = 0;
          v66 = 0;
LABEL_103:
          __dst.n128_u8[v59] = 0;
          sub_7E854(&__dst, 3u);
          if (v66 < 0)
          {
            operator delete(__dst.n128_u64[0]);
          }

          if (v71 < 0)
          {
            operator delete(v70);
          }

          std::locale::~locale(&v67[1]);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_108;
        }

        v61 = v67[1].n128_u64[1];
        v59 = v67[2].n128_u64[1] - v67[1].n128_u64[1];
        if (v67[2].n128_u64[1] - v67[1].n128_u64[1] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_113:
          sub_3244();
        }

LABEL_98:
        if (v59 >= 0x17)
        {
          operator new();
        }

        v66 = v59;
        if (v59)
        {
          memmove(&__dst, v61, v59);
        }

        goto LABEL_103;
      }
    }

    else
    {
      v58 = v73;
      if ((v73 & 0x10) == 0)
      {
        goto LABEL_92;
      }
    }

    v60 = v72;
    if (v72 < v69)
    {
      v72 = v69;
      v60 = v69;
    }

    v61 = v68;
    v59 = v60 - v68;
    if (v60 - v68 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_113;
    }

    goto LABEL_98;
  }

LABEL_108:
  sub_434B40(a1, v6);
}

void sub_D73A04(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  sub_1959728(&STACK[0x250]);
  sub_CD6274(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D73B78(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_D73C78(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

unint64_t sub_D73D78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "InputPointTransformerModule", 0x1BuLL);
  LOBYTE(v12) = 1;
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    v5 = sub_D0ACE4(a2 + 3, "Runtime", &v12, a1);
    a2[4] = v5;
    LOBYTE(v12) = 4;
    if (v5 >= a2[5])
    {
LABEL_3:
      v6 = sub_D74364(a2 + 3, "Origins", &v12, (a1 + 8));
      a2[4] = v6;
      LOBYTE(v12) = 4;
      if (v6 >= a2[5])
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_D0AE98(a2[4], "Runtime", &v12, a1);
    v5 = v4 + 48;
    a2[4] = v5;
    LOBYTE(v12) = 4;
    if (v5 >= a2[5])
    {
      goto LABEL_3;
    }
  }

  sub_D74518(v5, "Origins", &v12, (a1 + 8));
  v6 = v5 + 48;
  a2[4] = v6;
  LOBYTE(v12) = 4;
  if (v6 >= a2[5])
  {
LABEL_4:
    v7 = sub_D74668(a2 + 3, "Reroute_Origins", &v12, (a1 + 16));
    a2[4] = v7;
    LOBYTE(v12) = 4;
    if (v7 >= a2[5])
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_D7481C(v6, "Reroute_Origins", &v12, (a1 + 16));
  v7 = v6 + 48;
  a2[4] = v7;
  LOBYTE(v12) = 4;
  if (v7 >= a2[5])
  {
LABEL_5:
    v8 = sub_D7496C(a2 + 3, "Waypoints", &v12, (a1 + 24));
    a2[4] = v8;
    LOBYTE(v12) = 4;
    if (v8 >= a2[5])
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  sub_D74B20(v7, "Waypoints", &v12, (a1 + 24));
  v8 = v7 + 48;
  a2[4] = v8;
  LOBYTE(v12) = 4;
  if (v8 >= a2[5])
  {
LABEL_6:
    v9 = sub_D74C70(a2 + 3, "Destinations", &v12, (a1 + 32));
    a2[4] = v9;
    LOBYTE(v12) = 4;
    if (v9 >= a2[5])
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  sub_D74E24(v8, "Destinations", &v12, (a1 + 32));
  v9 = v8 + 48;
  a2[4] = v9;
  LOBYTE(v12) = 4;
  if (v9 >= a2[5])
  {
LABEL_7:
    result = sub_D74668(a2 + 3, "TransitEntities", &v12, (a1 + 40));
    v11 = result;
    a2[4] = result;
    if (*(a1 + 49) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = sub_D7481C(v9, "TransitEntities", &v12, (a1 + 40));
  v11 = v9 + 48;
  a2[4] = v11;
  if (*(a1 + 49) != 1)
  {
LABEL_8:
    if (*(a1 + 48) != 1)
    {
      goto LABEL_9;
    }

LABEL_22:
    v13 = 4;
    v12 = 1;
    if (v11 >= a2[5])
    {
      result = sub_D75278(a2 + 3, "NoPlaceResponse", &v13, &v12);
      v11 = result;
      a2[4] = result;
      if (*(a1 + 50) == 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = sub_D7542C(v11, "NoPlaceResponse", &v13, &v12);
      v11 += 48;
      a2[4] = v11;
      if (*(a1 + 50) == 1)
      {
        goto LABEL_26;
      }
    }

LABEL_10:
    if (*(a1 + 51) != 1)
    {
      return result;
    }

    goto LABEL_30;
  }

LABEL_18:
  v13 = 4;
  v12 = 1;
  if (v11 >= a2[5])
  {
    result = sub_D74F74(a2 + 3, "NoPlaceSearchResponse", &v13, &v12);
    v11 = result;
    a2[4] = result;
    if (*(a1 + 48) == 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    result = sub_D75128(v11, "NoPlaceSearchResponse", &v13, &v12);
    v11 += 48;
    a2[4] = v11;
    if (*(a1 + 48) == 1)
    {
      goto LABEL_22;
    }
  }

LABEL_9:
  if (*(a1 + 50) != 1)
  {
    goto LABEL_10;
  }

LABEL_26:
  v13 = 4;
  v12 = 1;
  if (v11 >= a2[5])
  {
    result = sub_D7557C(a2 + 3, "HasLocalWaypoints", &v13, &v12);
    v11 = result;
    a2[4] = result;
    if (*(a1 + 51) != 1)
    {
      return result;
    }
  }

  else
  {
    result = sub_D75730(v11, "HasLocalWaypoints", &v13, &v12);
    v11 += 48;
    a2[4] = v11;
    if (*(a1 + 51) != 1)
    {
      return result;
    }
  }

LABEL_30:
  v13 = 4;
  v12 = 1;
  if (v11 >= a2[5])
  {
    result = sub_D75880(a2 + 3, "CrossesLocalArea", &v13, &v12);
    a2[4] = result;
  }

  else
  {
    sub_D75A34(v11, "CrossesLocalArea", &v13, &v12);
    result = v11 + 48;
    a2[4] = v11 + 48;
  }

  return result;
}

void sub_D74260(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D74364(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D74518(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D74504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D74518(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D74668(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D7481C(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D74808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7481C(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7496C(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D74B20(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D74B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D74B20(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D74C70(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D74E24(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D74E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D74E24(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D74F74(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D75128(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D75114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D75128(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D75278(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D7542C(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D75418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7542C(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7557C(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D75730(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D7571C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D75730(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D75880(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D75A34(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D75A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D75A34(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

void sub_D75B84(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  *a1 = sub_E7A5E0(a2);
  *(a1 + 1) = sub_6EECC();
  a1[8] = sub_E7A3D0(a2);
  sub_E83114(a2, a1 + 2);
  *(a1 + 10) = sub_E88F00(a2);
  sub_E7AB44(a2);
  *(a1 + 6) = v12;
  sub_E8347C(a2, a1 + 7);
  sub_E88F48(a2, a5, (a1 + 80));
  sub_E80194(a2, (a1 + 112));
  *(a1 + 36) = sub_E89630(a2);
  *(a1 + 37) = a3;
  sub_E8245C(a2, a1 + 38);
  sub_E825B4(a2, a1 + 41);
  sub_E82AC4(a2, a1 + 44);
  *(a1 + 48) = a4;
  *(a1 + 49) = a5;
  v13 = sub_EA7118(*a1);
  if (a6 > 1)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  a1[400] = v14;
  a1[401] = 0;
  v15 = *a1;
  v17 = v15 == 4 || v15 == 8;
  a1[402] = v17;
  a1[403] = sub_E839F4(a2) > 0x12;
  sub_D75D50(a1);
}

void sub_D75CB8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 328);
  if (v3)
  {
    *(v1 + 336) = v3;
    operator delete(v3);
  }

  sub_4E3C94((v1 + 304));
  sub_44D36C((v1 + 112));
  v4 = *(v1 + 80);
  if (v4)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  sub_1A104((v1 + 56));
  sub_1A104((v1 + 16));
  _Unwind_Resume(a1);
}

void sub_D75D50(uint64_t a1)
{
  v2 = *(a1 + 392);
  HIBYTE(v10[2]) = 17;
  strcpy(v10, "PathDecoderModule");
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_3AEC94(v2, v10, &__p);
  v3 = __p;
  if (__p)
  {
    v4 = v8;
    v5 = __p;
    if (v8 != __p)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = __p;
    }

    v8 = v3;
    operator delete(v5);
  }

  if (SHIBYTE(v10[2]) < 0)
  {
    operator delete(v10[0]);
  }

  if (*(a1 + 4) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_D75FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_D76000(void *a1, unsigned __int8 **a2)
{
  v2 = a1[1];
  if (*a1 != v2)
  {
    v3 = *a2;
    for (i = *a1 + 16; ; i += 16)
    {
      if (*(i - 8) != 1)
      {
        sub_5AF20();
      }

      v6 = *(i - 16);
      sub_EA688C(*v3, __p);
      v7 = *(v6 + 23);
      if (v7 >= 0)
      {
        v8 = *(v6 + 23);
      }

      else
      {
        v8 = v6[1];
      }

      v9 = v16;
      v10 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v9 = __p[1];
      }

      if (v8 == v9)
      {
        break;
      }

      v13 = 0;
      if (v16 < 0)
      {
        goto LABEL_23;
      }

LABEL_3:
      v5 = i == v2 || v13;
      if (v5 == 1)
      {
        return !v13;
      }
    }

    if (v7 >= 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = *v6;
    }

    if ((v16 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    v13 = memcmp(v11, v12, v8) == 0;
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_23:
    operator delete(__p[0]);
    goto LABEL_3;
  }

  return 1;
}

uint64_t sub_D76114(uint64_t *a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v1 = *(a1 + 23);
    if (v1 != 11)
    {
      if (v1 == 13)
      {
        if (*a1 != 0x415254534B4A4944 || *(a1 + 5) != 0x594C4E4F5F415254)
        {
LABEL_22:
          if (*a1 == 0x535F4C41424F4C47 && *(a1 + 5) == 0x4843524145535F4CLL)
          {
            return 2;
          }

          return 3;
        }

        return 1;
      }

      return 3;
    }

    if (*a1 != 0x5F444E415F534644 || *(a1 + 3) != 0x5032505F444E415FLL)
    {
      return 3;
    }

    return 0;
  }

  if (a1[1] == 11 && **a1 == 0x5F444E415F534644 && *(*a1 + 3) == 0x5032505F444E415FLL)
  {
    return 0;
  }

  if (a1[1] != 13 || (**a1 == 0x415254534B4A4944 ? (v4 = *(*a1 + 5) == 0x594C4E4F5F415254) : (v4 = 0), !v4))
  {
    if (a1[1] == 13)
    {
      a1 = *a1;
      goto LABEL_22;
    }

    return 3;
  }

  return 1;
}

uint64_t sub_D76288@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  *(a3 + 1) = 0u;
  *(a3 + 2) = 0u;
  *a3 = 0u;
  sub_195A048(a3, "DrivingPathDecoderModule", 0x18uLL);
  v24 = 1;
  v6 = a3[4];
  if (v6 >= a3[5])
  {
    v7 = sub_D0ACE4(a3 + 3, "Runtime", &v24, a1);
    a3[4] = v7;
    v23 = 4;
    if (v7 >= a3[5])
    {
LABEL_3:
      v8 = sub_D0C504(a3 + 3, "PathCodec.RoadPropertyAccesses", &v23, (a1 + 24));
      a3[4] = v8;
      v22 = 4;
      if (v8 >= a3[5])
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    sub_D0AE98(a3[4], "Runtime", &v24, a1);
    v7 = v6 + 48;
    a3[4] = v7;
    v23 = 4;
    if (v7 >= a3[5])
    {
      goto LABEL_3;
    }
  }

  sub_D0C6B8(v7, "PathCodec.RoadPropertyAccesses", &v23, (a1 + 24));
  v8 = v7 + 48;
  a3[4] = v8;
  v22 = 4;
  if (v8 >= a3[5])
  {
LABEL_4:
    result = sub_D766C8(a3 + 3, "PathCodec.OutgoingRoadsAccesses", &v22, (a1 + 32));
    v10 = result;
    a3[4] = result;
    if ((a2 & 1) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = sub_D7687C(v8, "PathCodec.OutgoingRoadsAccesses", &v22, (a1 + 32));
  v10 = v8 + 48;
  a3[4] = v10;
  if ((a2 & 1) == 0)
  {
    return result;
  }

LABEL_9:
  v21 = 1;
  if (v10 < a3[5])
  {
    result = sub_D76B80(v10, "Runtime[Success]", &v21, a1);
    v11 = v10 + 48;
    a3[4] = v10 + 48;
    v12 = *(a1 + 8);
    if (v12 != 1)
    {
      goto LABEL_11;
    }

LABEL_15:
    v20 = v12;
    if (v11 >= a3[5])
    {
      result = sub_D76CD0(a3 + 3, "Runtime.Sky", &v20, a1);
      v11 = result;
      a3[4] = result;
      if (*(a1 + 9) == 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      result = sub_D76E84(v11, "Runtime.Sky", &v20, a1);
      v11 += 48;
      a3[4] = v11;
      if (*(a1 + 9) == 1)
      {
        goto LABEL_19;
      }
    }

LABEL_12:
    v14 = *(a1 + 16);
    v13 = (a1 + 16);
    if (!v14)
    {
      return result;
    }

    goto LABEL_23;
  }

  result = sub_D769CC(a3 + 3, "Runtime[Success]", &v21, a1);
  v11 = result;
  a3[4] = result;
  v12 = *(a1 + 8);
  if (v12 == 1)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (*(a1 + 9) != 1)
  {
    goto LABEL_12;
  }

LABEL_19:
  v19 = 4;
  v18 = 1;
  if (v11 >= a3[5])
  {
    result = sub_D76FD4(a3 + 3, "Path.SingleSegment", &v19, &v18);
    v11 = result;
    a3[4] = result;
    v16 = *(a1 + 16);
    v13 = (a1 + 16);
    if (!v16)
    {
      return result;
    }
  }

  else
  {
    result = sub_D77188(v11, "Path.SingleSegment", &v19, &v18);
    v11 += 48;
    a3[4] = v11;
    v15 = *(a1 + 16);
    v13 = (a1 + 16);
    if (!v15)
    {
      return result;
    }
  }

LABEL_23:
  v17 = 4;
  if (v11 >= a3[5])
  {
    result = sub_D0ACE4(a3 + 3, "Anchors", &v17, v13);
    a3[4] = result;
  }

  else
  {
    sub_D0AE98(v11, "Anchors", &v17, v13);
    result = v11 + 48;
    a3[4] = v11 + 48;
  }

  return result;
}

void sub_D765F8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D76654(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D766C8(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D7687C(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D76868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7687C(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D769CC(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D76B80(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D76B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D76B80(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D76CD0(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D76E84(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D76E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D76E84(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D76FD4(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D77188(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D77174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D77188(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

void *sub_D772D8(void *a1)
{
  v2 = a1[44];
  if (v2)
  {
    a1[45] = v2;
    operator delete(v2);
  }

  v3 = a1[41];
  if (v3)
  {
    a1[42] = v3;
    operator delete(v3);
  }

  v4 = a1[38];
  if (v4)
  {
    v5 = a1[39];
    v6 = a1[38];
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 72);
        if (v7)
        {
          *(v5 - 64) = v7;
          operator delete(v7);
        }

        v8 = *(v5 - 96);
        if (v8)
        {
          *(v5 - 88) = v8;
          operator delete(v8);
        }

        v5 -= 136;
      }

      while (v5 != v4);
      v6 = a1[38];
    }

    a1[39] = v4;
    operator delete(v6);
  }

  v9 = a1[33];
  if (v9)
  {
    operator delete(v9);
  }

  v10 = a1[23];
  if (v10)
  {
    a1[24] = v10;
    operator delete(v10);
  }

  v11 = a1[10];
  if (v11)
  {
    a1[11] = v11;
    operator delete(v11);
  }

  v12 = a1[7];
  if (v12)
  {
    v13 = a1[8];
    v14 = a1[7];
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = a1[7];
    }

    a1[8] = v12;
    operator delete(v14);
  }

  v16 = a1[2];
  if (v16)
  {
    v17 = a1[3];
    v18 = a1[2];
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = a1[2];
    }

    a1[3] = v16;
    operator delete(v18);
  }

  return a1;
}

uint64_t sub_D77438(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = a1 + 8;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(a1 + 16);
        v7 = v5;
        if (v6 != v5)
        {
          do
          {
            v6 = sub_44FDEC(v6 - 440);
          }

          while (v6 != v5);
          v7 = *v4;
        }

        *(a1 + 16) = v5;
        operator delete(v7);
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

LABEL_26:
      *(a1 + 8) = *(a2 + 8);
      v15 = *(a2 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a1 + 32) = v15;
      goto LABEL_27;
    }

    v11 = (a1 + 8);
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = *(a1 + 16);
      v14 = v12;
      if (v13 != v12)
      {
        do
        {
          v13 = sub_44FDEC(v13 - 440);
        }

        while (v13 != v12);
        v14 = *v11;
      }

      *(a1 + 16) = v12;
      operator delete(v14);
    }

    *v11 = *(a2 + 8);
  }

  else
  {
    if (*a2)
    {
      v8 = *(a1 + 24);
      if (v8)
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 24);
        if (v9 != v8)
        {
          do
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*(v9 - 24));
            }

            v9 -= 32;
          }

          while (v9 != v8);
          v10 = *(a1 + 24);
        }

        *(a1 + 32) = v8;
        operator delete(v10);
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      goto LABEL_26;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_27:
  *a1 = *a2;
  return a1;
}

uint64_t sub_D775B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  v5 = sub_E7A738(a2);
  *(a1 + 24) = 0u;
  v6 = (a1 + 24);
  *(a1 + 72) = 0u;
  v7 = (a1 + 72);
  *(a1 + 17) = v5;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  v8 = *a1;
  v38[23] = 20;
  strcpy(v38, "CyclingCoverageCheck");
  __p = 0;
  v36 = 0;
  v37 = 0;
  v9 = sub_3AEC94(v8, v38, &__p);
  sub_5ADDC(v39, v9);
  v10 = __p;
  if (__p)
  {
    v11 = v36;
    v12 = __p;
    if (v36 != __p)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = __p;
    }

    v36 = v10;
    operator delete(v12);
  }

  if ((v38[23] & 0x80000000) != 0)
  {
    operator delete(*v38);
  }

  *(a1 + 18) = sub_5F9D0(v39, "enable_coverage_check");
  sub_63960(v39, &qword_27B65C8, v38);
  v14 = *v6;
  if (*v6)
  {
    v15 = *(a1 + 32);
    v16 = *v6;
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = *v6;
    }

    *(a1 + 32) = v14;
    operator delete(v16);
    *v6 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *v38;
  *(a1 + 40) = *&v38[16];
  sub_63960(v39, &qword_27B65E0, v38);
  v18 = *v7;
  if (*v7)
  {
    v19 = *(a1 + 80);
    v20 = *v7;
    if (v19 != v18)
    {
      do
      {
        v21 = *(v19 - 1);
        v19 -= 3;
        if (v21 < 0)
        {
          operator delete(*v19);
        }
      }

      while (v19 != v18);
      v20 = *v7;
    }

    *(a1 + 80) = v18;
    operator delete(v20);
    *v7 = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *v38;
  *(a1 + 88) = *&v38[16];
  sub_63960(v39, "supported_regions", v38);
  v22 = *(a1 + 48);
  if (v22)
  {
    v23 = *(a1 + 56);
    v24 = *(a1 + 48);
    if (v23 != v22)
    {
      do
      {
        v25 = *(v23 - 1);
        v23 -= 3;
        if (v25 < 0)
        {
          operator delete(*v23);
        }
      }

      while (v23 != v22);
      v24 = *(a1 + 48);
    }

    *(a1 + 56) = v22;
    operator delete(v24);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *v38;
  *(a1 + 64) = *&v38[16];
  sub_63960(v39, "preflight_regions", v38);
  v26 = *(a1 + 96);
  if (v26)
  {
    v27 = *(a1 + 104);
    v28 = *(a1 + 96);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 1);
        v27 -= 3;
        if (v29 < 0)
        {
          operator delete(*v27);
        }
      }

      while (v27 != v26);
      v28 = *(a1 + 96);
    }

    *(a1 + 104) = v26;
    operator delete(v28);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *v38;
  *(a1 + 112) = *&v38[16];
  v30 = v40;
  if (v40)
  {
    do
    {
      v31 = *v30;
      v32 = *(v30 + 12);
      if (v32 != -1)
      {
        (off_2673D08[v32])(v38, v30 + 5);
      }

      *(v30 + 12) = -1;
      if (*(v30 + 39) < 0)
      {
        operator delete(v30[2]);
      }

      operator delete(v30);
      v30 = v31;
    }

    while (v31);
  }

  v33 = v39[0];
  v39[0] = 0;
  if (v33)
  {
    operator delete(v33);
  }

  return a1;
}

void sub_D77920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_5C010(va);
  sub_1A104((v15 + 96));
  sub_1A104(v17);
  sub_1A104((v15 + 48));
  sub_1A104(v16);
  _Unwind_Resume(a1);
}

void sub_D77964(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0xD7793CLL);
}

uint64_t sub_D77988(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

void *sub_D77A88(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    v3 = a1[13];
    v4 = a1[12];
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
      v4 = a1[12];
    }

    a1[13] = v2;
    operator delete(v4);
  }

  v6 = a1[9];
  if (v6)
  {
    v7 = a1[10];
    v8 = a1[9];
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
      v8 = a1[9];
    }

    a1[10] = v6;
    operator delete(v8);
  }

  v10 = a1[6];
  if (v10)
  {
    v11 = a1[7];
    v12 = a1[6];
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = a1[6];
    }

    a1[7] = v10;
    operator delete(v12);
  }

  v14 = a1[3];
  if (v14)
  {
    v15 = a1[4];
    v16 = a1[3];
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = a1[3];
    }

    a1[4] = v14;
    operator delete(v16);
  }

  return a1;
}

void sub_D77BD4(uint64_t a1)
{
  v6 = 0u;
  v10 = 0u;
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  v5[0] = -1;
  v5[1] = 0x7FFFFFFFLL;
  v5[2] = -1;
  v5[3] = -1;
  v5[4] = 0x7FFFFFFFFFFFFFFFLL;
  DWORD2(v6) = -1935635296;
  v7 = 0uLL;
  *(&v7 + 7) = 0;
  v8 = 0uLL;
  v9 = 0uLL;
  *&v10 = 0x7FFFFFFFFFFFFFFFLL;
  BYTE8(v10) = 100;
  v11 = 0;
  v12 = 0;
  v13 = vnegq_f64(v2);
  v18 = 0;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v19 = 1;
  v21 = 0;
  v20 = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_49AEC0(v5);
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  v4 = 14;
  strcpy(__p, "SnappingModule");
  sub_44F3E4(a1 + 64, __p);
}

void sub_D77D20(_Unwind_Exception *a1)
{
  sub_CE6D74((v2 + 5));
  sub_49AE64(v2);
  sub_49AE64(v1);
  _Unwind_Resume(a1);
}

void sub_D77D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_49AE64(v16);
  sub_49AE64(v15);
  _Unwind_Resume(a1);
}

void sub_D77D70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *a1 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v7 = sub_E7A5E0(a2);
  *(a1 + 32) = sub_EA7118(v7);
  v8 = sub_E7F33C(a2);
  if (v8)
  {
    LOBYTE(v8) = sub_3B6984(a4);
  }

  *(a1 + 33) = v8;
  *(a1 + 34) = sub_E7A428(a2);
  *(a1 + 35) = sub_E7A738(a2);
  *(a1 + 36) = sub_E7AAC4(a2);
  sub_E77014(a2, a4);
}

void sub_D77EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_D4EF4C(&a9);
  v12 = *(v10 + 40);
  if (v12)
  {
    *(v10 + 48) = v12;
    operator delete(v12);
    sub_D4EF4C(v9);
    _Unwind_Resume(a1);
  }

  sub_D4EF4C(v9);
  _Unwind_Resume(a1);
}

void sub_D77F38(uint64_t *a1, unint64_t a2)
{
  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x111111111111112)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_D7801C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_D4EE40(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_D78030(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a1;
    do
    {
      sub_D4E1A0(&v23, v8, **a4, **(a4 + 8), (*(a4 + 16) + 40));
      v9 = a3[1];
      if (v9 >= a3[2])
      {
        v16 = sub_D4EA20(a3, &v23);
        v17 = __p;
        a3[1] = v16;
        if (v17)
        {
          *(&__p + 1) = v17;
          operator delete(v17);
        }
      }

      else
      {
        *v9 = v23;
        *(v9 + 8) = v24;
        v10 = v25;
        v11 = v26;
        v12 = *v27;
        *(v9 + 71) = *&v27[15];
        *(v9 + 56) = v12;
        *(v9 + 40) = v11;
        *(v9 + 24) = v10;
        *(v9 + 88) = 0;
        *(v9 + 96) = 0;
        *(v9 + 80) = 0;
        *(v9 + 80) = *v28;
        *(v9 + 96) = v29;
        v13 = v30;
        *(v9 + 120) = v31;
        *(v9 + 104) = v13;
        v14 = v33;
        *(v9 + 128) = v32;
        *(v9 + 144) = v14;
        *(v9 + 160) = v34;
        *(v9 + 184) = v36;
        *(v9 + 192) = 0;
        *(v9 + 200) = 0;
        *(v9 + 208) = 0;
        *(v9 + 216) = 0;
        *(v9 + 192) = *v37;
        *(v9 + 224) = 0;
        *(v9 + 232) = 0;
        *(v9 + 216) = __p;
        v15 = v40;
        *(v9 + 208) = v38;
        v28[0] = 0;
        v28[1] = 0;
        v29 = 0;
        *(v9 + 168) = v35;
        v34 = 0;
        v35 = 0uLL;
        v37[0] = 0;
        v37[1] = 0;
        *(v9 + 232) = v15;
        v38 = 0;
        __p = 0uLL;
        v40 = 0;
        a3[1] = v9 + 240;
      }

      v18 = v37[0];
      if (v37[0])
      {
        v19 = v37[1];
        v20 = v37[0];
        if (v37[1] != v37[0])
        {
          do
          {
            v21 = *(v19 - 3);
            if (v21)
            {
              operator delete(v21);
            }

            v22 = *(v19 - 13);
            if (v22)
            {
              *(v19 - 12) = v22;
              operator delete(v22);
            }

            v19 -= 176;
          }

          while (v19 != v18);
          v20 = v37[0];
        }

        v37[1] = v18;
        operator delete(v20);
      }

      if (v34)
      {
        operator delete(v34);
      }

      if (v28[0])
      {
        v28[1] = v28[0];
        operator delete(v28[0]);
      }

      v8 += 440;
    }

    while (v8 != a2);
  }

  return a3;
}

uint64_t sub_D78240(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

void *sub_D78340(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    v4 = a1[2];
    v5 = a1[1];
    if (v4 != v3)
    {
      do
      {
        v4 -= 30;
        sub_D4ED7C(v4);
      }

      while (v4 != v3);
      v5 = a1[1];
    }

    a1[2] = v3;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_D783B4(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = a1 + 8;
      if (*(a1 + 8))
      {
        sub_CE9FC4(v4);
        operator delete(*v4);
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

LABEL_20:
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v9 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v9;
      goto LABEL_21;
    }

    v8 = (a1 + 8);
    if (*(a1 + 8))
    {
      sub_CE9FC4(v8);
      operator delete(*v8);
    }

    *v8 = *(a2 + 8);
  }

  else
  {
    if (*a2)
    {
      v5 = *(a1 + 24);
      if (v5)
      {
        v6 = *(a1 + 32);
        v7 = *(a1 + 24);
        if (v6 != v5)
        {
          do
          {
            if (*(v6 - 1) < 0)
            {
              operator delete(*(v6 - 24));
            }

            v6 -= 32;
          }

          while (v6 != v5);
          v7 = *(a1 + 24);
        }

        *(a1 + 32) = v5;
        operator delete(v7);
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      goto LABEL_20;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_21:
  *a1 = *a2;
  return a1;
}

void sub_D784F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = sub_6EECC();
  v9 = sub_3B6890(a4);
  v10 = *v9;
  *(a1 + 92) = *(v9 + 8);
  *(a1 + 84) = v10;
  *(a1 + 96) = sub_E7A3D0(a2);
  *(a1 + 97) = sub_E7A124(a2);
  *(a1 + 105) = v11;
  *(a1 + 112) = a4;
  *(a1 + 120) = sub_E81AFC(a2);
  *(a1 + 128) = v12;
  *(a1 + 136) = 0x7FFFFFFFFFFFFFFELL;
  *(a1 + 144) = 0;
  *(a1 + 148) = a5;
  sub_101A2A4();
}

void sub_D78A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  sub_D78EB0(&a53);
  sub_5ECEBC((v53 + 56));
  sub_39393C(v54);
  v56 = *v53;
  if (*v53)
  {
    *(v53 + 8) = v56;
    operator delete(v56);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_D78A9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 148);
  if (v2 == 1)
  {
    return 0;
  }

  if (v2 != 2)
  {
    v4 = *(a1 + 112);
    v8 = 7;
    strcpy(v7, "ETAPlan");
    v5 = 0;
    v6 = 0uLL;
    sub_3AEC94(v4, v7, &v5);
    operator new();
  }

  if (*(a1 + 32) == *(a1 + 40) || *(a1 + 64) - *(a1 + 56) != 40)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

void sub_D78E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if (a27 < 0)
    {
LABEL_5:
      operator delete(a22);
      _Unwind_Resume(a1);
    }
  }

  else if (a27 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_D78EB0(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (v2)
  {
    v3 = *(a1 + 240);
    v4 = *(a1 + 232);
    if (v3 != v2)
    {
      v5 = *(a1 + 240);
      do
      {
        v7 = *(v5 - 40);
        v5 -= 40;
        v6 = v7;
        if (v7)
        {
          *(v3 - 32) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 232);
    }

    *(a1 + 240) = v2;
    operator delete(v4);
  }

  v8 = *(a1 + 208);
  if (v8)
  {
    v9 = *(a1 + 216);
    v10 = *(a1 + 208);
    if (v9 != v8)
    {
      v11 = *(a1 + 216);
      do
      {
        v13 = *(v11 - 32);
        v11 -= 32;
        v12 = v13;
        if (v13)
        {
          *(v9 - 24) = v12;
          operator delete(v12);
        }

        v9 = v11;
      }

      while (v11 != v8);
      v10 = *(a1 + 208);
    }

    *(a1 + 216) = v8;
    operator delete(v10);
  }

  v14 = *(a1 + 184);
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(a1 + 104);
  if (v15)
  {
    *(a1 + 112) = v15;
    operator delete(v15);
  }

  v16 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v16;
    operator delete(v16);
  }

  return a1;
}

uint64_t sub_D78FA0(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_D790A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "CyclingPathFindingModule", 0x18uLL);
  v14 = 1;
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    v5 = sub_D0ACE4(a2 + 3, "Runtime", &v14, a1);
    a2[4] = v5;
    v13 = 4;
    if (v5 >= a2[5])
    {
LABEL_3:
      v6 = sub_D793A4(a2 + 3, "NumScannedNodes", &v13, (a1 + 8));
      a2[4] = v6;
      v12 = 4;
      if (v6 >= a2[5])
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_D0AE98(a2[4], "Runtime", &v14, a1);
    v5 = v4 + 48;
    a2[4] = v5;
    v13 = 4;
    if (v5 >= a2[5])
    {
      goto LABEL_3;
    }
  }

  sub_D79558(v5, "NumScannedNodes", &v13, (a1 + 8));
  v6 = v5 + 48;
  a2[4] = v6;
  v12 = 4;
  if (v6 >= a2[5])
  {
LABEL_4:
    v7 = sub_D796A8(a2 + 3, "Iterations", &v12, (a1 + 16));
    a2[4] = v7;
    if (*(a1 + 16) < 2u)
    {
      goto LABEL_5;
    }

LABEL_10:
    v11 = 4;
    v10 = 1;
    if (v7 >= a2[5])
    {
      v7 = sub_D799AC(a2 + 3, "Iterations.GreaterOne", &v11, &v10);
    }

    else
    {
      sub_D79B60(v7, "Iterations.GreaterOne", &v11, &v10);
      v7 += 48;
    }

    a2[4] = v7;
    v9 = 4;
    if (v7 < a2[5])
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_9:
  sub_D7985C(v6, "Iterations", &v12, (a1 + 16));
  v7 = v6 + 48;
  a2[4] = v7;
  if (*(a1 + 16) >= 2u)
  {
    goto LABEL_10;
  }

LABEL_5:
  v9 = 4;
  if (v7 < a2[5])
  {
LABEL_6:
    sub_D0B4A0(v7, "BlockingIncidents", &v9, (a1 + 24));
    result = v7 + 48;
    a2[4] = v7 + 48;
    return result;
  }

LABEL_14:
  result = sub_D0B2EC(a2 + 3, "BlockingIncidents", &v9, (a1 + 24));
  a2[4] = result;
  return result;
}

void sub_D79318(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D793A4(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D79558(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D79544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D79558(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D796A8(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D7985C(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D79848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7985C(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D799AC(__int128 **a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D79B60(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D79B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D79B60(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D79CB0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    if (v3 != v2)
    {
      v5 = *(a1 + 64);
      do
      {
        v7 = *(v5 - 40);
        v5 -= 40;
        v6 = v7;
        if (v7)
        {
          *(v3 - 32) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 56);
    }

    *(a1 + 64) = v2;
    operator delete(v4);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    if (v9 != v8)
    {
      v11 = *(a1 + 40);
      do
      {
        v13 = *(v11 - 32);
        v11 -= 32;
        v12 = v13;
        if (v13)
        {
          *(v9 - 24) = v12;
          operator delete(v12);
        }

        v9 = v11;
      }

      while (v11 != v8);
      v10 = *(a1 + 32);
    }

    *(a1 + 40) = v8;
    operator delete(v10);
  }

  v14 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v14;
    operator delete(v14);
  }

  return a1;
}

uint64_t sub_D79D84(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = (a1 + 8);
      if (*(a1 + 8))
      {
        sub_D7260C((a1 + 8));
        operator delete(*v4);
        *v4 = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v5 = (a1 + 32);
      if (*(a1 + 32))
      {
        sub_D714EC((a1 + 32));
        operator delete(*v5);
        *v5 = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
      }

LABEL_24:
      *(a1 + 32) = *(a2 + 32);
      v11 = *(a2 + 56);
      *(a1 + 48) = *(a2 + 48);
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a1 + 56) = v11;
      goto LABEL_25;
    }

    v9 = (a1 + 32);
    v10 = (a1 + 8);
    if (*(a1 + 32))
    {
      sub_D714EC((a1 + 32));
      operator delete(*v9);
    }

    if (*v10)
    {
      sub_D7260C((a1 + 8));
      operator delete(*v10);
    }

    *v10 = *(a2 + 8);
  }

  else
  {
    if (*a2)
    {
      v6 = *(a1 + 24);
      if (v6)
      {
        v7 = *(a1 + 32);
        v8 = *(a1 + 24);
        if (v7 != v6)
        {
          do
          {
            if (*(v7 - 1) < 0)
            {
              operator delete(*(v7 - 24));
            }

            v7 -= 32;
          }

          while (v7 != v6);
          v8 = *(a1 + 24);
        }

        *(a1 + 32) = v6;
        operator delete(v8);
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      goto LABEL_24;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_25:
  *a1 = *a2;
  return a1;
}

uint64_t sub_D79F3C(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_D7A03C(__int128 **a1, char *a2, char *a3, uint64_t *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v6)
  {
    v6 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = a1[1] - *a1;
  sub_D7A200(v18 * 16, a2, a3, a4, a5);
  v9 = 48 * v5 + 48;
  v10 = *a1;
  v11 = a1[1];
  v12 = &(*a1)[v18] - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = &(*a1)[v18] - v11;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 2);
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v16 = *(v13 + 24);
      *(v14 + 40) = *(v13 + 10);
      *(v14 + 24) = v16;
      v13 += 3;
      v14 += 48;
    }

    while (v13 != v11);
    do
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v10 += 3;
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

void sub_D7A1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7A200(uint64_t a1, char *__s, char *a3, uint64_t *a4, int *a5)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v18) = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
    *(&__dst + v11) = 0;
    v12 = *a3;
    v13 = *a4;
    v14 = *a5;
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v15 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v12;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
    operator delete(v15);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v18;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  return a1;
}

void *sub_D7A354(void *a1)
{
  v2 = a1[25];
  if (v2)
  {
    operator delete(v2);
  }

  v3 = a1[15];
  if (v3)
  {
    a1[16] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_D7A394(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = (a1 + 8);
      if (*(a1 + 8))
      {
        sub_D72788((a1 + 8));
        operator delete(*v4);
        *v4 = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v5 = (a1 + 32);
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = *(a1 + 40);
        v8 = *(a1 + 32);
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
          v8 = *v5;
        }

        *(a1 + 40) = v6;
        operator delete(v8);
        *v5 = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      sub_CEBD3C(a1 + 56, (a2 + 56));
LABEL_31:
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_32;
    }

    sub_D3AEDC((a1 + 8));
  }

  else if (*a2)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 24);
      if (v11 != v10)
      {
        do
        {
          if (*(v11 - 1) < 0)
          {
            operator delete(*(v11 - 24));
          }

          v11 -= 32;
        }

        while (v11 != v10);
        v12 = *(a1 + 24);
      }

      *(a1 + 32) = v10;
      operator delete(v12);
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v13 = *(a2 + 72);
    *(a1 + 32) = *(a2 + 32);
    v14 = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a1 + 72) = v13;
    v15 = *(a2 + 64);
    *(a1 + 56) = v14;
    *(a1 + 64) = v15;
    *(a2 + 64) = 0;
    v16 = *(a2 + 80);
    *(a1 + 80) = v16;
    *(a1 + 88) = *(a2 + 88);
    if (v16)
    {
      v17 = *(v13 + 8);
      v18 = *(a1 + 64);
      if ((v18 & (v18 - 1)) != 0)
      {
        if (v17 >= v18)
        {
          v17 %= v18;
        }
      }

      else
      {
        v17 &= v18 - 1;
      }

      *(v14 + 8 * v17) = a1 + 72;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
    }

    goto LABEL_31;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_32:
  *a1 = *a2;
  return a1;
}

uint64_t sub_D7A5D4(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_D7A6D4(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v5 -= 80;
        sub_3ED230(v5);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = (a1 + 24);
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 24);
    if (v9 != v8)
    {
      do
      {
        v9 = sub_3EEA68(v9 - 1096);
      }

      while (v9 != v8);
      v10 = *v7;
    }

    *(a1 + 32) = v8;
    operator delete(v10);
    *v7 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  v11 = *(a2 + 94);
  v12 = *(a2 + 80);
  v13 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v12;
  *(a1 + 94) = v11;
  *(a1 + 48) = v13;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v14 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v14;
  *(a2 + 127) = 0;
  *(a2 + 104) = 0;
  return a1;
}

uint64_t sub_D7A7F8(void **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = (v2 - *a1) >> 7;
  v4 = v3 + 1;
  if ((v3 + 1) >> 57)
  {
    sub_1794();
  }

  v6 = a1[2] - v1;
  if (v6 >> 6 > v4)
  {
    v4 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = (v2 - *a1) >> 7;
  v9 = v3 << 7;
  *(v9 + 96) = 0;
  *(v9 + 104) = 0;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 96) = -1;
  v10 = (v3 << 7) + 128;
  v11 = v9 - (v8 << 7);
  *(v9 + 112) = 0;
  *(v9 + 120) = 0;
  if (v1 != v2)
  {
    v12 = v1;
    v13 = v11;
    do
    {
      *v13 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 40) = *(v12 + 5);
      *(v12 + 3) = 0;
      *(v12 + 4) = 0;
      *(v12 + 5) = 0;
      v14 = *(v12 + 3);
      v15 = *(v12 + 4);
      v16 = *(v12 + 5);
      *(v13 + 94) = *(v12 + 94);
      *(v13 + 64) = v15;
      *(v13 + 80) = v16;
      *(v13 + 48) = v14;
      v17 = *(v12 + 104);
      *(v13 + 120) = *(v12 + 15);
      *(v13 + 104) = v17;
      *(v12 + 14) = 0;
      *(v12 + 15) = 0;
      *(v12 + 13) = 0;
      v12 += 128;
      v13 += 128;
    }

    while (v12 != v2);
    do
    {
      sub_60B38C(v1);
      v1 += 128;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v11;
  a1[1] = v10;
  a1[2] = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v10;
}

uint64_t sub_D7A98C(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = a1 + 8;
      if (*(a1 + 8))
      {
        sub_D72788(v4);
        operator delete(*v4);
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

LABEL_20:
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v9 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v9;
      goto LABEL_21;
    }

    v8 = (a1 + 8);
    if (*(a1 + 8))
    {
      sub_D72788(v8);
      operator delete(*v8);
    }

    *v8 = *(a2 + 8);
  }

  else
  {
    if (*a2)
    {
      v5 = *(a1 + 24);
      if (v5)
      {
        v6 = *(a1 + 32);
        v7 = *(a1 + 24);
        if (v6 != v5)
        {
          do
          {
            if (*(v6 - 1) < 0)
            {
              operator delete(*(v6 - 24));
            }

            v6 -= 32;
          }

          while (v6 != v5);
          v7 = *(a1 + 24);
        }

        *(a1 + 32) = v5;
        operator delete(v7);
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      goto LABEL_20;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_21:
  *a1 = *a2;
  return a1;
}

uint64_t sub_D7AAD4(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_D7ABD4@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "CyclingRouteSelectionModule", 0x1BuLL);
  v8 = 1;
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    v5 = sub_CCEBC0(a2 + 3, "Runtime", &v8, a1);
    a2[4] = v5;
    v7 = 4;
    if (v5 >= a2[5])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_CCED74(a2[4], "Runtime", &v8, a1);
    v5 = v4 + 48;
    a2[4] = v5;
    v7 = 4;
    if (v5 >= a2[5])
    {
LABEL_3:
      result = sub_D7AD4C(a2 + 3, "Routes", &v7, a1 + 1);
      a2[4] = result;
      return result;
    }
  }

  sub_D7AF00(v5, "Routes", &v7, a1 + 1);
  result = v5 + 48;
  a2[4] = v5 + 48;
  return result;
}

void sub_D7ACF4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D7AD4C(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D7AF00(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D7AEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7AF00(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7B058(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = a1 + 8;
      if (*(a1 + 8))
      {
        sub_D7238C(v4);
        operator delete(*v4);
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      v6 = *(a2 + 64);
      v5 = *(a2 + 80);
      v7 = *(a2 + 48);
      *(a1 + 92) = *(a2 + 92);
LABEL_21:
      *(a1 + 64) = v6;
      *(a1 + 80) = v5;
      *(a1 + 48) = v7;
      *(a1 + 32) = *(a2 + 32);
      goto LABEL_22;
    }

    v11 = (a1 + 8);
    if (*(a1 + 8))
    {
      sub_D7238C(v11);
      operator delete(*v11);
    }

    *v11 = *(a2 + 8);
  }

  else
  {
    if (*a2)
    {
      v8 = *(a1 + 24);
      if (v8)
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 24);
        if (v9 != v8)
        {
          do
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*(v9 - 24));
            }

            v9 -= 32;
          }

          while (v9 != v8);
          v10 = *(a1 + 24);
        }

        *(a1 + 32) = v8;
        operator delete(v10);
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      v5 = *(a2 + 80);
      v7 = *(a2 + 48);
      v6 = *(a2 + 64);
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_21;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_22:
  *a1 = *a2;
  return a1;
}

uint64_t sub_D7B1D4(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

unint64_t sub_D7B2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  v4 = (a2 + 24);
  *(a2 + 23) = 10;
  *(a2 + 8) = 29541;
  *a2 = *"Probelines";
  v34 = 1;
  v5 = sub_D0ACE4((a2 + 24), "Runtime", &v34, a1);
  v6 = v5;
  v7 = *(a2 + 40);
  *(a2 + 32) = v5;
  v33 = 1;
  if (v5 >= v7)
  {
    v8 = sub_D0AFE8(v4, "Runtime.Distributor", &v33, (a1 + 8));
    *(a2 + 32) = v8;
    v32 = 1;
    if (v8 >= *(a2 + 40))
    {
LABEL_3:
      v9 = sub_D7BA0C(v4, "Runtime.Distributor.NearbyLineSegmentFinder", &v32, (a1 + 16));
      *(a2 + 32) = v9;
      v31 = 1;
      if (v9 >= *(a2 + 40))
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_D0B19C(v5, "Runtime.Distributor", &v33, (a1 + 8));
    v8 = v6 + 48;
    *(a2 + 32) = v8;
    v32 = 1;
    if (v8 >= *(a2 + 40))
    {
      goto LABEL_3;
    }
  }

  sub_D7BBC0(v8, "Runtime.Distributor.NearbyLineSegmentFinder", &v32, (a1 + 16));
  v9 = v8 + 48;
  *(a2 + 32) = v9;
  v31 = 1;
  if (v9 >= *(a2 + 40))
  {
LABEL_4:
    v10 = sub_D7BD10(v4, "Runtime.Distributor.Redistribute", &v31, (a1 + 24));
    *(a2 + 32) = v10;
    v30 = 6;
    if (v10 >= *(a2 + 40))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_D7BEC4(v9, "Runtime.Distributor.Redistribute", &v31, (a1 + 24));
  v10 = v9 + 48;
  *(a2 + 32) = v10;
  v30 = 6;
  if (v10 >= *(a2 + 40))
  {
LABEL_5:
    v11 = sub_D7C014(v4, "Distributor.HeuristicallyFixedPoints", &v30, (a1 + 32));
    *(a2 + 32) = v11;
    v29 = 4;
    if (v11 >= *(a2 + 40))
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  sub_D7C1C8(v10, "Distributor.HeuristicallyFixedPoints", &v30, (a1 + 32));
  v11 = v10 + 48;
  *(a2 + 32) = v11;
  v29 = 4;
  if (v11 >= *(a2 + 40))
  {
LABEL_6:
    v12 = sub_D7C320(v4, "Probelines.NumTotalSubroutesWithProbeline", &v29, (a1 + 40));
    *(a2 + 32) = v12;
    v28 = 4;
    if (v12 >= *(a2 + 40))
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_D7C4D4(v11, "Probelines.NumTotalSubroutesWithProbeline", &v29, (a1 + 40));
  v12 = v11 + 48;
  *(a2 + 32) = v12;
  v28 = 4;
  if (v12 >= *(a2 + 40))
  {
LABEL_7:
    v13 = sub_D7C624(v4, "Probelines.NumTotalSubroutesWithoutProbeline", &v28, (a1 + 44));
    *(a2 + 32) = v13;
    v27 = 4;
    if (v13 >= *(a2 + 40))
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  sub_D7C7D8(v12, "Probelines.NumTotalSubroutesWithoutProbeline", &v28, (a1 + 44));
  v13 = v12 + 48;
  *(a2 + 32) = v13;
  v27 = 4;
  if (v13 >= *(a2 + 40))
  {
LABEL_8:
    result = sub_D7C928(v4, "GeometryProcessor.NumTotalAppliedDetourPatches", &v27, (a1 + 72));
    v15 = result;
    *(a2 + 32) = result;
    if (!*(a1 + 40))
    {
      return result;
    }

LABEL_17:
    v26 = 4;
    if (v15 >= *(a2 + 40))
    {
      v16 = sub_D7CC2C(v4, "Probelines.NumProbelinesUsed", &v26, (a1 + 48));
      *(a2 + 32) = v16;
      v25 = 4;
      if (v16 >= *(a2 + 40))
      {
LABEL_19:
        v17 = sub_D7CF30(v4, "Probelines.NumCenterlinesUsedInProbelineRegions", &v25, (a1 + 52));
        *(a2 + 32) = v17;
        v24 = 4;
        if (v17 >= *(a2 + 40))
        {
          goto LABEL_20;
        }

        goto LABEL_26;
      }
    }

    else
    {
      sub_D7CDE0(v15, "Probelines.NumProbelinesUsed", &v26, (a1 + 48));
      v16 = v15 + 48;
      *(a2 + 32) = v16;
      v25 = 4;
      if (v16 >= *(a2 + 40))
      {
        goto LABEL_19;
      }
    }

    sub_D7D0E4(v16, "Probelines.NumCenterlinesUsedInProbelineRegions", &v25, (a1 + 52));
    v17 = v16 + 48;
    *(a2 + 32) = v17;
    v24 = 4;
    if (v17 >= *(a2 + 40))
    {
LABEL_20:
      v18 = sub_D7D234(v4, "Probelines.NumAcceptableProbelines", &v24, (a1 + 56));
      *(a2 + 32) = v18;
      v23 = 4;
      if (v18 >= *(a2 + 40))
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }

LABEL_26:
    sub_D7D3E8(v17, "Probelines.NumAcceptableProbelines", &v24, (a1 + 56));
    v18 = v17 + 48;
    *(a2 + 32) = v18;
    v23 = 4;
    if (v18 >= *(a2 + 40))
    {
LABEL_21:
      v19 = sub_D7D538(v4, "Probelines.NumUnacceptableProbelines", &v23, (a1 + 60));
      *(a2 + 32) = v19;
      v22 = 4;
      if (v19 >= *(a2 + 40))
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }

LABEL_27:
    sub_D7D6EC(v18, "Probelines.NumUnacceptableProbelines", &v23, (a1 + 60));
    v19 = v18 + 48;
    *(a2 + 32) = v19;
    v22 = 4;
    if (v19 >= *(a2 + 40))
    {
LABEL_22:
      v20 = sub_D7D83C(v4, "Probelines.NumTotalCheckpointsFound", &v22, (a1 + 64));
      *(a2 + 32) = v20;
      v21 = 4;
      if (v20 >= *(a2 + 40))
      {
LABEL_23:
        result = sub_D7D538(v4, "Probelines.NumTotalMissingProbelines", &v21, (a1 + 68));
LABEL_30:
        *(a2 + 32) = result;
        return result;
      }

LABEL_29:
      sub_D7D6EC(v20, "Probelines.NumTotalMissingProbelines", &v21, (a1 + 68));
      result = v20 + 48;
      goto LABEL_30;
    }

LABEL_28:
    sub_D7D9F0(v19, "Probelines.NumTotalCheckpointsFound", &v22, (a1 + 64));
    v20 = v19 + 48;
    *(a2 + 32) = v20;
    v21 = 4;
    if (v20 >= *(a2 + 40))
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

LABEL_16:
  result = sub_D7CADC(v13, "GeometryProcessor.NumTotalAppliedDetourPatches", &v27, (a1 + 72));
  v15 = v13 + 48;
  *(a2 + 32) = v15;
  if (*(a1 + 40))
  {
    goto LABEL_17;
  }

  return result;
}

void sub_D7B8AC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D7BA0C(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D7BBC0(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D7BBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7BBC0(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7BD10(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D7BEC4(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D7BEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7BEC4(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7C014(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D7C1C8(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D7C1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7C1C8(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7C320(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D7C4D4(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D7C4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7C4D4(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7C624(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D7C7D8(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D7C7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7C7D8(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7C928(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D7CADC(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D7CAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7CADC(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_D7CC2C(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_D7CDE0(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
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

void sub_D7CDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D7CDE0(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}