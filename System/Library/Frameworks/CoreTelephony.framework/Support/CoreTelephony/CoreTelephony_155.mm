void sub_10135B0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10135B0DC(void *a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  object[0] = a1;
  object[1] = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object[1] = xpc_null_create();
  }

  sub_101362508(&v8, a3);
  v6 = a1[2];
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10135B240(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10135B288(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F31570;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void **sub_10135B2E4(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    v9 = v7 >> 2;
    if (v7 >> 2 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    sub_10103C5F8(v6, v10);
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
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
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15++ = v16;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void sub_10135B40C(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_100013D10();
}

void *sub_10135B454(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      sub_1003BCAB4(result, a4);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_10135B4D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10135B4F0(unint64_t result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v93 = *(a2 - 2);
        v94 = *v8;
        if (v93 < *v8)
        {
          v95 = v8[1];
          *v8 = v93;
          v8[1] = *(a2 - 1);
          *(a2 - 2) = v94;
          *(a2 - 1) = v95;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v88 = v8[2];
      v89 = *v8;
      v90 = v8[4];
      if (v88 >= *v8)
      {
        if (v90 < v88)
        {
          v146 = v8[3];
          v147 = v8[5];
          v8[2] = v90;
          v8[3] = v147;
          v8[4] = v88;
          v8[5] = v146;
          if (v90 < v89)
          {
            v148 = v8[1];
            *v8 = v90;
            v8[1] = v147;
            v8[2] = v89;
            v8[3] = v148;
          }

          goto LABEL_195;
        }
      }

      else
      {
        v91 = v8[1];
        if (v90 < v88)
        {
          v92 = v8[5];
          *v8 = v90;
          v8[1] = v92;
          goto LABEL_193;
        }

        v162 = v8[3];
        *v8 = v88;
        v8[1] = v162;
        v8[2] = v89;
        v8[3] = v91;
        if (v90 < v89)
        {
          v163 = v8[5];
          v8[2] = v90;
          v8[3] = v163;
LABEL_193:
          v8[4] = v89;
          v8[5] = v91;
          v88 = v89;
LABEL_195:
          v164 = *(a2 - 2);
          if (v164 < v88)
          {
            v165 = v8[5];
            v8[4] = v164;
            v8[5] = *(a2 - 1);
            *(a2 - 2) = v88;
            *(a2 - 1) = v165;
            v166 = v8[4];
            v167 = v8[2];
            if (v166 < v167)
            {
              v168 = v8[3];
              v169 = v8[5];
              v8[2] = v166;
              v8[3] = v169;
              v8[4] = v167;
              v8[5] = v168;
              v170 = *v8;
              if (v166 < *v8)
              {
                v171 = v8[1];
                *v8 = v166;
                v8[1] = v169;
                v8[2] = v170;
                v8[3] = v171;
              }
            }
          }

          return result;
        }
      }

      v88 = v90;
      goto LABEL_195;
    }

    if (v9 == 5)
    {

      return sub_10135BF40(v8, v8 + 2, v8 + 4, v8 + 6, a2 - 2);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v100 = (v8 + 2);
      v102 = v8 == a2 || v100 == a2;
      if (a4)
      {
        if (!v102)
        {
          v103 = 0;
          v104 = v8;
          do
          {
            v105 = v100;
            v106 = *(v104 + 2);
            v107 = *v104;
            if (v106 < *v104)
            {
              v108 = *(v104 + 3);
              v109 = v103;
              while (1)
              {
                v110 = v8 + v109;
                v111 = *(v8 + v109 + 8);
                *(v110 + 2) = v107;
                *(v110 + 3) = v111;
                if (!v109)
                {
                  break;
                }

                v107 = *(v110 - 2);
                v109 -= 16;
                if (v106 >= v107)
                {
                  v112 = (v8 + v109 + 16);
                  goto LABEL_131;
                }
              }

              v112 = v8;
LABEL_131:
              *v112 = v106;
              v112[1] = v108;
            }

            v100 = v105 + 16;
            v103 += 16;
            v104 = v105;
          }

          while (v105 + 16 != a2);
        }
      }

      else if (!v102)
      {
        v154 = v8 + 3;
        do
        {
          v155 = v100;
          v156 = v8[2];
          v157 = *v8;
          if (v156 < *v8)
          {
            v158 = v8[3];
            v159 = v154;
            do
            {
              v160 = v159;
              v161 = *(v159 - 2);
              v159 -= 2;
              *(v160 - 1) = v157;
              *v160 = v161;
              v157 = *(v160 - 5);
            }

            while (v156 < v157);
            *(v159 - 1) = v156;
            *v159 = v158;
          }

          v100 = v155 + 16;
          v154 += 2;
          v8 = v155;
        }

        while (v155 + 16 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v113 = (v9 - 2) >> 1;
        v114 = v113;
        do
        {
          v115 = v114;
          if (v113 >= v114)
          {
            v116 = (2 * v114) | 1;
            v117 = &v8[2 * v116];
            if (2 * v115 + 2 >= v9)
            {
              v118 = *v117;
            }

            else
            {
              v118 = *v117;
              v119 = v117[2];
              if (*v117 <= v119)
              {
                v118 = v117[2];
              }

              if (*v117 < v119)
              {
                v117 += 2;
                v116 = 2 * v115 + 2;
              }
            }

            v120 = &v8[2 * v115];
            v121 = *v120;
            if (v118 >= *v120)
            {
              v122 = v120[1];
              do
              {
                v123 = v117;
                *v120 = v118;
                v120[1] = v117[1];
                if (v113 < v116)
                {
                  break;
                }

                v124 = (2 * v116) | 1;
                v117 = &v8[2 * v124];
                v116 = 2 * v116 + 2;
                if (v116 >= v9)
                {
                  v118 = *v117;
                  v116 = v124;
                }

                else
                {
                  v118 = *v117;
                  result = (v117 + 2);
                  v125 = v117[2];
                  if (*v117 <= v125)
                  {
                    v118 = v117[2];
                  }

                  if (*v117 >= v125)
                  {
                    v116 = v124;
                  }

                  else
                  {
                    v117 += 2;
                  }
                }

                v120 = v123;
              }

              while (v118 >= v121);
              *v123 = v121;
              v123[1] = v122;
            }
          }

          v114 = v115 - 1;
        }

        while (v115);
        do
        {
          if (v9 >= 2)
          {
            v126 = 0;
            v127 = *v8;
            v128 = v8[1];
            v129 = v8;
            do
            {
              v130 = &v129[2 * v126];
              v131 = v130 + 2;
              v132 = (2 * v126) | 1;
              v126 = 2 * v126 + 2;
              if (v126 >= v9)
              {
                v133 = *v131;
                v126 = v132;
              }

              else
              {
                v135 = v130[4];
                v134 = v130 + 4;
                v133 = v135;
                result = *(v134 - 2);
                v136 = result >= v135;
                if (result > v135)
                {
                  v133 = *(v134 - 2);
                }

                if (v136)
                {
                  v126 = v132;
                }

                else
                {
                  v131 = v134;
                }
              }

              *v129 = v133;
              v129[1] = v131[1];
              v129 = v131;
            }

            while (v126 <= ((v9 - 2) >> 1));
            if (v131 == (a2 - 16))
            {
              *v131 = v127;
              v131[1] = v128;
            }

            else
            {
              *v131 = *(a2 - 2);
              v131[1] = *(a2 - 1);
              *(a2 - 2) = v127;
              *(a2 - 1) = v128;
              v137 = (v131 - v8 + 16) >> 4;
              v138 = v137 < 2;
              v139 = v137 - 2;
              if (!v138)
              {
                v140 = v139 >> 1;
                v141 = &v8[2 * v140];
                v142 = *v141;
                v143 = *v131;
                if (*v141 < *v131)
                {
                  v144 = v131[1];
                  do
                  {
                    v145 = v141;
                    *v131 = v142;
                    v131[1] = v141[1];
                    if (!v140)
                    {
                      break;
                    }

                    v140 = (v140 - 1) >> 1;
                    v141 = &v8[2 * v140];
                    v142 = *v141;
                    v131 = v145;
                  }

                  while (*v141 < v143);
                  *v145 = v143;
                  v145[1] = v144;
                }
              }
            }
          }

          a2 -= 16;
          v138 = v9-- > 2;
        }

        while (v138);
      }

      return result;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 2);
    if (v9 >= 0x81)
    {
      v12 = *v10;
      v13 = *v8;
      if (*v10 >= *v8)
      {
        if (v11 < v12)
        {
          v18 = v10[1];
          *v10 = v11;
          v10[1] = *(a2 - 1);
          *(a2 - 2) = v12;
          *(a2 - 1) = v18;
          v19 = *v8;
          if (*v10 < *v8)
          {
            v20 = v8[1];
            v21 = v10[1];
            *v8 = *v10;
            v8[1] = v21;
            *v10 = v19;
            v10[1] = v20;
          }
        }
      }

      else
      {
        v14 = v8[1];
        if (v11 < v12)
        {
          *v8 = v11;
          v8[1] = *(a2 - 1);
          goto LABEL_27;
        }

        v26 = v10[1];
        *v8 = v12;
        v8[1] = v26;
        *v10 = v13;
        v10[1] = v14;
        v27 = *(a2 - 2);
        if (v27 < v13)
        {
          *v10 = v27;
          v10[1] = *(a2 - 1);
LABEL_27:
          *(a2 - 2) = v13;
          *(a2 - 1) = v14;
        }
      }

      v28 = *(v10 - 2);
      v29 = v8[2];
      v30 = *(a2 - 4);
      if (v28 >= v29)
      {
        if (v30 < v28)
        {
          v32 = *(v10 - 1);
          *(v10 - 2) = v30;
          *(v10 - 1) = *(a2 - 3);
          *(a2 - 4) = v28;
          *(a2 - 3) = v32;
          v33 = *(v10 - 2);
          v34 = v8[2];
          if (v33 < v34)
          {
            v35 = v8[3];
            v36 = *(v10 - 1);
            v8[2] = v33;
            v8[3] = v36;
            *(v10 - 2) = v34;
            *(v10 - 1) = v35;
          }
        }
      }

      else
      {
        v31 = v8[3];
        if (v30 < v28)
        {
          v8[2] = v30;
          v8[3] = *(a2 - 3);
          goto LABEL_39;
        }

        v39 = *(v10 - 1);
        v8[2] = v28;
        v8[3] = v39;
        *(v10 - 2) = v29;
        *(v10 - 1) = v31;
        v40 = *(a2 - 4);
        if (v40 < v29)
        {
          *(v10 - 2) = v40;
          *(v10 - 1) = *(a2 - 3);
LABEL_39:
          *(a2 - 4) = v29;
          *(a2 - 3) = v31;
        }
      }

      v41 = v10[2];
      v42 = v8[4];
      v43 = *(a2 - 6);
      if (v41 >= v42)
      {
        if (v43 < v41)
        {
          v45 = v10[3];
          v10[2] = v43;
          v10[3] = *(a2 - 5);
          *(a2 - 6) = v41;
          *(a2 - 5) = v45;
          v46 = v10[2];
          v47 = v8[4];
          if (v46 < v47)
          {
            v48 = v8[5];
            v49 = v10[3];
            v8[4] = v46;
            v8[5] = v49;
            v10[2] = v47;
            v10[3] = v48;
          }
        }
      }

      else
      {
        v44 = v8[5];
        if (v43 < v41)
        {
          v8[4] = v43;
          v8[5] = *(a2 - 5);
          goto LABEL_48;
        }

        v50 = v10[3];
        v8[4] = v41;
        v8[5] = v50;
        v10[2] = v42;
        v10[3] = v44;
        v51 = *(a2 - 6);
        if (v51 < v42)
        {
          v10[2] = v51;
          v10[3] = *(a2 - 5);
LABEL_48:
          *(a2 - 6) = v42;
          *(a2 - 5) = v44;
        }
      }

      v52 = *v10;
      v53 = *(v10 - 2);
      v54 = v10[2];
      if (*v10 >= v53)
      {
        if (v54 >= v52)
        {
LABEL_55:
          v53 = v52;
        }

        else
        {
          v57 = v10[1];
          v58 = v10[3];
          *v10 = v54;
          v10[1] = v58;
          v10[2] = v52;
          v10[3] = v57;
          if (v54 >= v53)
          {
            goto LABEL_58;
          }

          v59 = *(v10 - 1);
          *(v10 - 2) = v54;
          *(v10 - 1) = v58;
          *v10 = v53;
          v10[1] = v59;
        }
      }

      else
      {
        v55 = *(v10 - 1);
        if (v54 < v52)
        {
          v56 = v10[3];
          *(v10 - 2) = v54;
          *(v10 - 1) = v56;
          v10[2] = v53;
          v10[3] = v55;
          goto LABEL_55;
        }

        v60 = v10[1];
        *(v10 - 2) = v52;
        *(v10 - 1) = v60;
        *v10 = v53;
        v10[1] = v55;
        if (v54 < v53)
        {
          v61 = v10[3];
          *v10 = v54;
          v10[1] = v61;
          v10[2] = v53;
          v10[3] = v55;
LABEL_58:
          v53 = v54;
        }
      }

      v62 = v10[1];
      v63 = *v8;
      *v8 = v53;
      v8[1] = v62;
      *v10 = v63;
      goto LABEL_60;
    }

    v15 = *v8;
    v16 = *v10;
    if (*v8 >= *v10)
    {
      if (v11 < v15)
      {
        v22 = v8[1];
        *v8 = v11;
        v8[1] = *(a2 - 1);
        *(a2 - 2) = v15;
        *(a2 - 1) = v22;
        v23 = *v10;
        if (*v8 < *v10)
        {
          v24 = v10[1];
          v25 = v8[1];
          *v10 = *v8;
          v10[1] = v25;
          *v8 = v23;
          v8[1] = v24;
        }
      }
    }

    else
    {
      v17 = v10[1];
      if (v11 < v15)
      {
        *v10 = v11;
        v10[1] = *(a2 - 1);
LABEL_36:
        *(a2 - 2) = v16;
        *(a2 - 1) = v17;
        goto LABEL_60;
      }

      v37 = v8[1];
      *v10 = v15;
      v10[1] = v37;
      *v8 = v16;
      v8[1] = v17;
      v38 = *(a2 - 2);
      if (v38 < v16)
      {
        *v8 = v38;
        v8[1] = *(a2 - 1);
        goto LABEL_36;
      }
    }

LABEL_60:
    --a3;
    v64 = *v8;
    if ((a4 & 1) == 0 && *(v8 - 2) >= v64)
    {
      if (v64 >= *(a2 - 2))
      {
        v79 = (v8 + 2);
        do
        {
          v7 = v79;
          if (v79 >= a2)
          {
            break;
          }

          v79 += 16;
        }

        while (v64 >= *v7);
      }

      else
      {
        v7 = v8;
        do
        {
          v78 = v7[2];
          v7 += 2;
        }

        while (v64 >= v78);
      }

      v80 = a2;
      if (v7 < a2)
      {
        v80 = a2;
        do
        {
          v81 = *(v80 - 2);
          v80 -= 16;
        }

        while (v64 < v81);
      }

      v82 = v8[1];
      if (v7 < v80)
      {
        v83 = *v7;
        v84 = *v80;
        do
        {
          v85 = v7[1];
          *v7 = v84;
          v7[1] = *(v80 + 1);
          *v80 = v83;
          *(v80 + 1) = v85;
          do
          {
            v86 = v7[2];
            v7 += 2;
            v83 = v86;
          }

          while (v64 >= v86);
          do
          {
            v87 = *(v80 - 2);
            v80 -= 16;
            v84 = v87;
          }

          while (v64 < v87);
        }

        while (v7 < v80);
      }

      if (v7 - 2 != v8)
      {
        *v8 = *(v7 - 2);
        v8[1] = *(v7 - 1);
      }

      a4 = 0;
      *(v7 - 2) = v64;
      *(v7 - 1) = v82;
      goto LABEL_2;
    }

    v65 = 0;
    v66 = v8[1];
    do
    {
      v67 = v8[v65 + 2];
      v65 += 2;
    }

    while (v67 < v64);
    v68 = &v8[v65];
    v69 = a2;
    if (v65 == 2)
    {
      v69 = a2;
      do
      {
        if (v68 >= v69)
        {
          break;
        }

        v71 = *(v69 - 2);
        v69 -= 16;
      }

      while (v71 >= v64);
    }

    else
    {
      do
      {
        v70 = *(v69 - 2);
        v69 -= 16;
      }

      while (v70 >= v64);
    }

    if (v68 >= v69)
    {
      v7 = &v8[v65];
    }

    else
    {
      v72 = *v69;
      v7 = &v8[v65];
      v73 = v69;
      do
      {
        v74 = v7[1];
        *v7 = v72;
        v7[1] = v73[1];
        *v73 = v67;
        v73[1] = v74;
        do
        {
          v75 = v7[2];
          v7 += 2;
          v67 = v75;
        }

        while (v75 < v64);
        do
        {
          v76 = *(v73 - 2);
          v73 -= 2;
          v72 = v76;
        }

        while (v76 >= v64);
      }

      while (v7 < v73);
    }

    if (v7 - 2 != v8)
    {
      *v8 = *(v7 - 2);
      v8[1] = *(v7 - 1);
    }

    *(v7 - 2) = v64;
    *(v7 - 1) = v66;
    if (v68 < v69)
    {
      goto LABEL_85;
    }

    v77 = sub_10135C0EC(v8, v7 - 2);
    result = sub_10135C0EC(v7, a2);
    if (!result)
    {
      if (v77)
      {
        goto LABEL_2;
      }

LABEL_85:
      result = sub_10135B4F0(v8, v7 - 16, a3, a4 & 1);
      a4 = 0;
      goto LABEL_2;
    }

    a2 = (v7 - 2);
    if (v77)
    {
      return result;
    }
  }

  v96 = v8[2];
  v97 = *v8;
  v98 = *(a2 - 2);
  if (v96 >= *v8)
  {
    if (v98 < v96)
    {
      v149 = v8[3];
      v8[2] = v98;
      v8[3] = *(a2 - 1);
      *(a2 - 2) = v96;
      *(a2 - 1) = v149;
      v150 = v8[2];
      v151 = *v8;
      if (v150 < *v8)
      {
        v152 = v8[1];
        v153 = v8[3];
        *v8 = v150;
        v8[1] = v153;
        v8[2] = v151;
        v8[3] = v152;
      }
    }
  }

  else
  {
    v99 = v8[1];
    if (v98 >= v96)
    {
      v172 = v8[3];
      *v8 = v96;
      v8[1] = v172;
      v8[2] = v97;
      v8[3] = v99;
      v173 = *(a2 - 2);
      if (v173 >= v97)
      {
        return result;
      }

      v8[2] = v173;
      v8[3] = *(a2 - 1);
    }

    else
    {
      *v8 = v98;
      v8[1] = *(a2 - 1);
    }

    *(a2 - 2) = v97;
    *(a2 - 1) = v99;
  }

  return result;
}

unint64_t *sub_10135BF40(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 >= v5)
    {
      v5 = *a3;
    }

    else
    {
      v9 = a2[1];
      *a2 = v7;
      a2[1] = a3[1];
      *a3 = v5;
      a3[1] = v9;
      v10 = *result;
      if (*a2 < *result)
      {
        v11 = result[1];
        *result = *a2;
        result[1] = a2[1];
        *a2 = v10;
        a2[1] = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    v8 = result[1];
    if (v7 < v5)
    {
      *result = v7;
      result[1] = a3[1];
LABEL_9:
      *a3 = v6;
      a3[1] = v8;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    result[1] = a2[1];
    *a2 = v6;
    a2[1] = v8;
    v5 = *a3;
    if (*a3 < v6)
    {
      *a2 = v5;
      a2[1] = a3[1];
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*a4 < v5)
  {
    v12 = a3[1];
    *a3 = *a4;
    a3[1] = a4[1];
    *a4 = v5;
    a4[1] = v12;
    v13 = *a2;
    if (*a3 < *a2)
    {
      v14 = a2[1];
      *a2 = *a3;
      a2[1] = a3[1];
      *a3 = v13;
      a3[1] = v14;
      v15 = *result;
      if (*a2 < *result)
      {
        v16 = result[1];
        *result = *a2;
        result[1] = a2[1];
        *a2 = v15;
        a2[1] = v16;
      }
    }
  }

  v17 = *a4;
  if (*a5 < *a4)
  {
    v18 = a4[1];
    *a4 = *a5;
    a4[1] = a5[1];
    *a5 = v17;
    a5[1] = v18;
    v19 = *a3;
    if (*a4 < *a3)
    {
      v20 = a3[1];
      *a3 = *a4;
      a3[1] = a4[1];
      *a4 = v19;
      a4[1] = v20;
      v21 = *a2;
      if (*a3 < *a2)
      {
        v22 = a2[1];
        *a2 = *a3;
        a2[1] = a3[1];
        *a3 = v21;
        a3[1] = v22;
        v23 = *result;
        if (*a2 < *result)
        {
          v24 = result[1];
          *result = *a2;
          result[1] = a2[1];
          *a2 = v23;
          a2[1] = v24;
        }
      }
    }
  }

  return result;
}

BOOL sub_10135C0EC(unint64_t *a1, unint64_t *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[2];
      v7 = *a1;
      v8 = *(a2 - 2);
      if (v6 >= *a1)
      {
        if (v8 < v6)
        {
          v21 = a1[3];
          a1[2] = v8;
          a1[3] = *(a2 - 1);
          *(a2 - 2) = v6;
          *(a2 - 1) = v21;
          v22 = a1[2];
          v23 = *a1;
          if (v22 < *a1)
          {
            v24 = a1[1];
            v25 = a1[3];
            *a1 = v22;
            a1[1] = v25;
            a1[2] = v23;
            a1[3] = v24;
          }
        }

        return 1;
      }

      v9 = a1[1];
      if (v8 >= v6)
      {
        v32 = a1[3];
        *a1 = v6;
        a1[1] = v32;
        a1[2] = v7;
        a1[3] = v9;
        v33 = *(a2 - 2);
        if (v33 >= v7)
        {
          return 1;
        }

        a1[2] = v33;
        a1[3] = *(a2 - 1);
      }

      else
      {
        *a1 = v8;
        a1[1] = *(a2 - 1);
      }

      *(a2 - 2) = v7;
      *(a2 - 1) = v9;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_10135BF40(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v16 = a1[2];
    v17 = *a1;
    v18 = a1[4];
    if (v16 >= *a1)
    {
      if (v18 < v16)
      {
        v29 = a1[3];
        v30 = a1[5];
        a1[2] = v18;
        a1[3] = v30;
        a1[4] = v16;
        a1[5] = v29;
        if (v18 < v17)
        {
          v31 = a1[1];
          *a1 = v18;
          a1[1] = v30;
          a1[2] = v17;
          a1[3] = v31;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v19 = a1[1];
      if (v18 < v16)
      {
        v20 = a1[5];
        *a1 = v18;
        a1[1] = v20;
LABEL_47:
        a1[4] = v17;
        a1[5] = v19;
        v16 = v17;
LABEL_49:
        v48 = *(a2 - 2);
        if (v48 < v16)
        {
          v49 = a1[5];
          a1[4] = v48;
          a1[5] = *(a2 - 1);
          *(a2 - 2) = v16;
          *(a2 - 1) = v49;
          v50 = a1[4];
          v51 = a1[2];
          if (v50 < v51)
          {
            v52 = a1[3];
            v53 = a1[5];
            a1[2] = v50;
            a1[3] = v53;
            a1[4] = v51;
            a1[5] = v52;
            v54 = *a1;
            if (v50 < *a1)
            {
              v55 = a1[1];
              *a1 = v50;
              a1[1] = v53;
              a1[2] = v54;
              a1[3] = v55;
            }
          }
        }

        return 1;
      }

      v46 = a1[3];
      *a1 = v16;
      a1[1] = v46;
      a1[2] = v17;
      a1[3] = v19;
      if (v18 < v17)
      {
        v47 = a1[5];
        a1[2] = v18;
        a1[3] = v47;
        goto LABEL_47;
      }
    }

    v16 = v18;
    goto LABEL_49;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = *a1;
    if (v3 < *a1)
    {
      v5 = a1[1];
      *a1 = v3;
      a1[1] = *(a2 - 1);
      *(a2 - 2) = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v10 = a1 + 4;
  v11 = a1[4];
  v12 = a1[2];
  v13 = *a1;
  if (v12 >= *a1)
  {
    if (v11 < v12)
    {
      v26 = a1[3];
      v27 = a1[5];
      a1[2] = v11;
      a1[3] = v27;
      a1[4] = v12;
      a1[5] = v26;
      if (v11 < v13)
      {
        v28 = a1[1];
        *a1 = v11;
        a1[1] = v27;
        a1[2] = v13;
        a1[3] = v28;
      }
    }
  }

  else
  {
    v14 = a1[1];
    if (v11 >= v12)
    {
      v34 = a1[3];
      *a1 = v12;
      a1[1] = v34;
      a1[2] = v13;
      a1[3] = v14;
      if (v11 >= v13)
      {
        goto LABEL_34;
      }

      v35 = a1[5];
      a1[2] = v11;
      a1[3] = v35;
    }

    else
    {
      v15 = a1[5];
      *a1 = v11;
      a1[1] = v15;
    }

    a1[4] = v13;
    a1[5] = v14;
  }

LABEL_34:
  v36 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  while (1)
  {
    v39 = *v36;
    v40 = *v10;
    if (*v36 < *v10)
    {
      v41 = v36[1];
      v42 = v37;
      while (1)
      {
        v43 = (a1 + v42);
        v44 = *(a1 + v42 + 40);
        v43[6] = v40;
        v43[7] = v44;
        if (v42 == -32)
        {
          break;
        }

        v40 = v43[2];
        v42 -= 16;
        if (v39 >= v40)
        {
          v45 = (a1 + v42 + 48);
          goto LABEL_42;
        }
      }

      v45 = a1;
LABEL_42:
      *v45 = v39;
      v45[1] = v41;
      if (++v38 == 8)
      {
        return v36 + 2 == a2;
      }
    }

    v10 = v36;
    v37 += 16;
    v36 += 2;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

void sub_10135C430(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F315C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10135C4B0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10135C4E8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10135C518(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

stewie::ConnectionAssistantTargetDataSource *sub_10135C558(stewie::ConnectionAssistantTargetDataSource **a1, stewie::ConnectionAssistantTargetDataSource *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    stewie::ConnectionAssistantTargetDataSource::~ConnectionAssistantTargetDataSource(result);

    operator delete();
  }

  return result;
}

ctu::OsLogLogger *sub_10135C5A4(ctu::OsLogLogger **a1, ctu::OsLogLogger *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ctu::OsLogLogger::~OsLogLogger(result);

    operator delete();
  }

  return result;
}

uint64_t *sub_10135C5F0(uint64_t *a1)
{
  v1 = *a1;
  v22 = a1;
  v23 = v1;
  v2 = *v1;
  v3 = (v1 + 104);
  v4 = *(v1 + 127);
  if (v4 < 0)
  {
    if (*(v1 + 112) != 19)
    {
LABEL_15:
      v10 = 0;
      goto LABEL_16;
    }

    v3 = *v3;
  }

  else if (v4 != 19)
  {
    goto LABEL_15;
  }

  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 11);
  v10 = v5 == 0x697463656E6E6F63 && v6 == 0x7473697373416E6FLL && v7 == 0x746E617473697373;
LABEL_16:
  *(v2 + 800) = v10;
  if (*(v1 + 8) == 8 && (*(v2 + 865) & 0x30) != 0 && (*(v2 + 867) & 0x30) == 0)
  {
    if (*(v2 + 843) != 1 || *(v2 + 844) == 1)
    {
      v11 = *(v2 + 40);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v12 = "#I Instant offer requested while display is not active or coversheet is active, ignoring this request";
      goto LABEL_21;
    }

    if (!v10 && (*(v2 + 845) & 1) != 0)
    {
      v11 = *(v2 + 40);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v12 = "#I Instant offer requested while suppress banner is true and source is not connection assistant, ignoring this request";
      goto LABEL_21;
    }

    if ((*(v2 + 842) & (*(v2 + 841) != 0)) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    if (*(v2 + 784))
    {
      v15 = *(v2 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = sub_100976680(8u);
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Instant offer already pending, replacing it with new one for: %s", buf, 0xCu);
      }
    }

    else
    {
      ++*(v2 + 824);
      v16 = *(v2 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = sub_100976680(8u);
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Presenting instant offer for: %s", buf, 0xCu);
      }

      v17 = *(v2 + 144);
      v18 = *(v2 + 24);
      object = v18;
      if (v18)
      {
        dispatch_retain(v18);
      }

      sub_100004AA0(buf, (v2 + 8));
      v19 = *buf;
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(*(&v19 + 1));
      }

      *buf = off_101F31848;
      *&buf[8] = v19;
      v27 = buf;
      (*(*v17 + 16))(&v25, v17, v14, &object, buf);
      v20 = v25;
      v25 = 0uLL;
      v21 = *(v2 + 792);
      *(v2 + 784) = v20;
      if (v21)
      {
        sub_100004A34(v21);
        if (*(&v25 + 1))
        {
          sub_100004A34(*(&v25 + 1));
        }
      }

      sub_10135E90C(buf);
      if (object)
      {
        dispatch_release(object);
      }
    }
  }

  else
  {
    v11 = *(v2 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "#I Instant offer is not relevant at the moment (due to service state), ignoring this request";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
    }
  }

LABEL_22:
  sub_10135C9B8(&v23);
  return sub_1000049E0(&v22);
}

void sub_10135C974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, uint64_t a15, uint64_t a16, char a17)
{
  sub_10135E90C(&a17);
  if (object)
  {
    dispatch_release(object);
  }

  sub_10135C9B8(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10135C9B8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 127) < 0)
    {
      operator delete(*(v1 + 104));
    }

    if (*(v1 + 40) == 1 && *(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_10135CA2C(uint64_t **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if (!sub_10135538C(*v1, (v1 + 1), 0))
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to start assistant app", buf, 2u);
    }
  }

  sub_10135C9B8(&v6);
  return sub_1000049E0(&v5);
}

void sub_10135CABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10135C9B8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10135CAD8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  *(v2 + 664) = 0;
  v3 = *(v2 + 624);
  if (v3 == 1)
  {
    v4 = *(v1 + 2);
    *(v2 + 376) = v4;
    if ((v1[7] & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_10135D464(v2 + 368);
    *(v2 + 592) = 0u;
    *(v2 + 608) = 0u;
    *(v2 + 560) = 0u;
    *(v2 + 576) = 0u;
    *(v2 + 528) = 0u;
    *(v2 + 544) = 0u;
    *(v2 + 496) = 0u;
    *(v2 + 512) = 0u;
    *(v2 + 464) = 0u;
    *(v2 + 480) = 0u;
    *(v2 + 432) = 0u;
    *(v2 + 448) = 0u;
    *(v2 + 400) = 0u;
    *(v2 + 416) = 0u;
    *(v2 + 368) = 0u;
    *(v2 + 384) = 0u;
    *(v2 + 624) = 1;
    v4 = *(v1 + 2);
    *(v2 + 376) = v4;
    if (*(v1 + 56) != 1)
    {
      goto LABEL_14;
    }
  }

  if ((v4 - 1) >= 4)
  {
    v4 = 0;
  }

  v5 = *(v1 + 50);
  v6 = *(v1 + 51);
  LOWORD(aBlock) = *(v1 + 26);
  BYTE2(aBlock) = *(v1 + 54);
  if (*(v2 + 420) == 1)
  {
    *(v2 + 420) = 0;
  }

  *(v2 + 408) = v4;
  *(v2 + 412) = v5;
  *(v2 + 413) = v6;
  *(v2 + 414) = aBlock;
  *(v2 + 416) = BYTE2(aBlock);
  *(v2 + 420) = 1;
  if ((*(v2 + 407) & 0x8000000000000000) != 0)
  {
    if (*(v2 + 392))
    {
      goto LABEL_14;
    }
  }

  else if (*(v2 + 407))
  {
    goto LABEL_14;
  }

  std::string::operator=((v2 + 384), (v1 + 13));
LABEL_14:
  if (*(v1 + 96) != 1)
  {
    goto LABEL_23;
  }

  if ((*(v2 + 624) & 1) == 0)
  {
    sub_1000D1644();
  }

  v7 = *(v1 + 64);
  v8 = *(v1 + 65);
  *(&aBlock + 6) = v1[9];
  BYTE14(aBlock) = *(v1 + 80);
  *&v22[7] = *(v1 + 44);
  v22[9] = *(v1 + 90);
  if (*(v2 + 456) == 1)
  {
    *(v2 + 456) = 0;
  }

  *(v2 + 424) = v7;
  *(v2 + 425) = v8;
  *(v2 + 426) = aBlock;
  *(v2 + 433) = *(&aBlock + 7);
  *(v2 + 441) = *v22;
  *(v2 + 449) = *&v22[8];
  *(v2 + 456) = 1;
  if ((*(v2 + 407) & 0x8000000000000000) != 0)
  {
    if (*(v2 + 392))
    {
      goto LABEL_23;
    }
  }

  else if (*(v2 + 407))
  {
    goto LABEL_23;
  }

  std::string::operator=((v2 + 384), (v1 + 13));
LABEL_23:
  if (*(v2 + 656) == 1)
  {
    *(v2 + 656) = 0;
  }

  if ((v3 & 1) == 0)
  {
    sub_100004AA0(&aBlock, (v2 + 8));
    v9 = aBlock;
    if (*(&aBlock + 1))
    {
      atomic_fetch_add_explicit((*(&aBlock + 1) + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(*(&v9 + 1));
    }

    v10 = *(v2 + 56);
    sub_10000501C(v22, "stw.catick");
    v11 = *(v2 + 24);
    object = v11;
    if (v11)
    {
      dispatch_retain(v11);
    }

    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1174405120;
    v19 = sub_10135CFCC;
    v20 = &unk_101F31678;
    v21 = v9;
    if (*(&v9 + 1))
    {
      atomic_fetch_add_explicit((*(&v9 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v15 = _Block_copy(&aBlock);
    sub_100E7CA80(v10, v22, 2, 1000000, &object, &v15);
    if ((*(v2 + 624) & 1) == 0)
    {
      sub_1000D1644();
    }

    v12 = *buf;
    *buf = 0;
    v13 = *(v2 + 368);
    *(v2 + 368) = v12;
    if (v13)
    {
      (*(*v13 + 8))(v13);
      v14 = *buf;
      *buf = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }
    }

    if (v15)
    {
      _Block_release(v15);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v23 < 0)
    {
      operator delete(*v22);
    }

    sub_10135403C(v2, 0);
    if (*(&v21 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v21 + 1));
    }

    if (*(&v9 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v9 + 1));
    }
  }

  sub_101356AA8(v2);
}

void sub_10135CEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *aBlock, dispatch_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10135CFCC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        if (*(v4 + 624) != 1 || *(v4 + 680) == 1)
        {
          if (*(v4 + 712) == 1)
          {
            *(v4 + 712) = 0;
          }

          goto LABEL_19;
        }

        v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        rep = v5.__d_.__rep_;
        if ((*(v4 + 712) & 1) == 0)
        {
          v9 = *(v4 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Looks like Assistant app is not running, starting countdown", &buf, 2u);
            if (*(v4 + 712))
            {
              *(v4 + 712) = 0;
            }
          }

          *(v4 + 688) = rep;
          *(v4 + 696) = rep;
          *(v4 + 704) = 0;
          *(v4 + 708) = 0;
          *(v4 + 711) = BYTE2(buf);
          *(v4 + 709) = buf;
          *(v4 + 712) = 1;
LABEL_19:
          sub_10135403C(v4, 1);
          sub_101356AA8(v4);
        }

        if (v5.__d_.__rep_ - *(v4 + 696) < 3000000000)
        {
          goto LABEL_19;
        }

        v7 = *(v4 + 704);
        if (v7 >= 6)
        {
          if ((*(v4 + 708) & 1) == 0)
          {
            *(v4 + 708) = 1;
            v8 = *(v4 + 40);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 67109120;
              DWORD1(buf) = v7;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Too many Assistant app reopen requests sent (%u), failed to reopen the app", &buf, 8u);
            }
          }

          goto LABEL_19;
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        buf = 0u;
        v47 = 0u;
        v10 = *(v4 + 376);
        sub_10000501C(&v44, "AppRelaunch");
        LODWORD(buf) = v10;
        BYTE4(buf) = 0;
        BYTE8(buf) = 0;
        LOBYTE(v48) = 0;
        BYTE8(v48) = 0;
        BYTE10(v48) = 0;
        LOBYTE(v49) = 0;
        BYTE8(v49) = 0;
        BYTE8(v51) = 0;
        v52 = v44;
        v53 = v45;
        v44 = 0uLL;
        v45 = 0;
        if (*(v4 + 420))
        {
          v11 = *(v4 + 408);
          v12 = *(v4 + 412);
          v13 = *(v4 + 413);
          v14 = *(v4 + 414);
          sub_10000501C(__p, "AppRelaunch");
          if ((v11 - 1) >= 4)
          {
            v15 = 0;
          }

          else
          {
            v15 = v11;
          }

          *v24 = v15;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = v12;
          v30 = v13;
          v31 = v14;
          v32 = 1;
          v33 = 0;
          v41 = 0;
          v42 = *__p;
          v43 = v23;
          __p[0] = 0;
          __p[1] = 0;
          v23 = 0;
        }

        else
        {
          if (*(v4 + 456) != 1)
          {
LABEL_32:
            ++*(v4 + 704);
            *(v4 + 696) = rep;
            if (sub_10135538C(v4, &buf, 1))
            {
              v21 = *(v4 + 40);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *v24 = 0;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Assistant app reopen request sent, waiting for the app to start", v24, 2u);
              }
            }

            if (SHIBYTE(v53) < 0)
            {
              operator delete(v52);
            }

            if (v48 == 1 && SHIBYTE(v47) < 0)
            {
              operator delete(*(&buf + 1));
            }

            goto LABEL_19;
          }

          v16 = *(v4 + 424);
          v17 = *(v4 + 425);
          v18 = *(v4 + 432);
          v19 = *(v4 + 440);
          v20 = *(v4 + 448);
          sub_10000501C(__p, "AppRelaunch");
          *v24 = 7;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v32 = 0;
          v33 = v16;
          v34 = v17;
          v35 = 0;
          v36 = 0;
          v37 = v18;
          v38 = v19;
          v39 = v20;
          v40 = 0;
          v41 = 1;
          v43 = v23;
          v42 = *__p;
          __p[1] = 0;
          v23 = 0;
          __p[0] = 0;
        }

        sub_101356974(&buf, v24);
        sub_101356A00(v24);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_32;
      }

      sub_100004A34(v3);
    }
  }
}

void sub_10135D40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_101356A00(va);
  sub_100004A34(v30);
  _Unwind_Resume(a1);
}

uint64_t sub_10135D438(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10135D454(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_10135D464(uint64_t result)
{
  if (*(result + 256) == 1)
  {
    v1 = result;
    v2 = *(result + 248);
    if (v2)
    {
      sub_100004A34(v2);
    }

    if (*(v1 + 152) == 1)
    {
      sub_1000475BC((v1 + 96));
    }

    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    result = *v1;
    *v1 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *(v1 + 256) = 0;
  }

  return result;
}

void sub_10135D4F8(uint64_t **a1)
{
  v3 = a1;
  v1 = *a1;
  v2 = **a1;
  *(v2 + 664) = 0;
  if ((*(v2 + 656) & 1) == 0)
  {
    *(v2 + 632) = 0;
    *(v2 + 640) = 0;
    *(v2 + 648) = 0;
    *(v2 + 656) = 1;
  }

  *(v2 + 632) = *(v1 + 3);
  *(v2 + 640) = std::chrono::system_clock::now();
  *(v2 + 648) = *(v1 + 4);
  if (*(v2 + 624) == 1)
  {
    sub_10135D464(v2 + 368);
    sub_10135C558((v2 + 216), 0);
    sub_10135C5A4((v2 + 328), 0);
    if (*(v2 + 360) == 1)
    {
      *(v2 + 360) = 0;
    }
  }

  sub_101356AA8(v2);
}

uint64_t sub_10135D5F0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_10135D670(void **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = v1[4];
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, &v7);
  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_10135D734(&v6);
  return sub_1000049E0(&v5);
}

void sub_10135D70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10135D734(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10135D734(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100DD7078(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t sub_10135D784(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_10135D804(void **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *(*v1 + 192);
  v7 = *(*v1 + 184);
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = v1[4];
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, &v7);
  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_10135D8C8(&v6);
  return sub_1000049E0(&v5);
}

void sub_10135D8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10135D8C8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10135D8C8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100DD7374(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t sub_10135D918(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_10135D998(void **a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *v1;
  dispatch_assert_queue_V2(*(*v1 + 24));
  if (v2[27] && (v3 = v2[41]) != 0 && (v17 = 0, stewie::ConnectionAssistantGPSDataSource::currentGPSTime(v3, &v17), v17))
  {
    v4 = v2[27];
    v5 = v2[41];
    if (*(v5 + 72) == 1)
    {
      v6 = *(v5 + 48);
      v7 = *(v5 + 64);
    }

    else
    {
      v6 = 0uLL;
      v7 = 0;
    }

    v15 = v6;
    v16 = v7;
    if (*(v5 + 40) == 1)
    {
      v9 = *(v5 + 24);
    }

    else
    {
      v9 = 0;
    }

    stewie::ConnectionAssistantTargetDataSource::updateCachedServicePlot(v4, &v15, v9, &v17);
    sub_101357970(v2);
  }

  else
  {
    v8 = v2[26];
    v2[25] = 0;
    v2[26] = 0;
    if (v8)
    {
      sub_100004A34(v8);
    }
  }

  v10 = v2[26];
  *&v15 = v2[25];
  *(&v15 + 1) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v1[4];
  if (!v11)
  {
    sub_100022DB4();
  }

  (*(*v11 + 48))(v11, &v15);
  if (*(&v15 + 1))
  {
    sub_100004A34(*(&v15 + 1));
  }

  sub_10135DB00(&v14);
  return sub_1000049E0(&v13);
}

void sub_10135DAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{
  sub_10135DB00(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10135DB00(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100DD7670(v1 + 8);
    operator delete();
  }

  return a1;
}

void sub_10135DB50(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = stewie::asString(*(v1 + 2));
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I handleEvent: eventType = %s", &buf, 0xCu);
  }

  v5 = *(v1 + 2);
  if (v5 > 4)
  {
    if (v5 != 5)
    {
      if (v5 == 6)
      {
        if (*(v2 + 712) == 1)
        {
          *(v2 + 712) = 0;
        }

        if ((*(v2 + 680) & 1) == 0)
        {
          *(v2 + 672) = 0;
          *(v2 + 680) = 1;
        }

        *(v2 + 672) = std::chrono::steady_clock::now();
        v7 = *(v2 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = 79200;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Starting a timer for OTG offer declined backoff. Duration: %lld seconds", &buf, 0xCu);
        }

        sub_10000501C(&__p, "OfferDeclinedBackoffTracker");
        *&buf = off_101F316B8;
        *(&buf + 1) = v2;
        p_buf = &buf;
        AutoStartTimer::create();
        v8 = v12;
        v12 = 0uLL;
        v9 = *(v2 + 776);
        *(v2 + 768) = v8;
        if (v9)
        {
          sub_100004A34(v9);
          if (*(&v12 + 1))
          {
            sub_100004A34(*(&v12 + 1));
          }
        }

        sub_10002B644(&buf);
        if (v11 < 0)
        {
          operator delete(__p);
        }

        sub_10007A8F8(v2);
      }

      else if (v5 == 7)
      {
        if (*(v2 + 712) == 1)
        {
          *(v2 + 712) = 0;
        }

        if ((*(v2 + 680) & 1) == 0)
        {
          *(v2 + 672) = 0;
          *(v2 + 680) = 1;
        }

        *(v2 + 672) = std::chrono::steady_clock::now();
        v6 = *(v2 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I OTG mode offer was accepted", &buf, 2u);
        }

        ++*(v2 + 816);
      }

LABEL_28:
      operator delete();
    }

    if (*(v2 + 656) == 1)
    {
      *(v2 + 656) = 0;
      sub_101356AA8(v2);
    }
  }

  else if ((v5 - 1) >= 2)
  {
    if (v5 != 3)
    {
      if (v5 == 4 && *(v2 + 680) == 1)
      {
        *(v2 + 680) = 0;
      }

      goto LABEL_28;
    }

    if (*(v2 + 664) == 1)
    {
      *(v2 + 664) = 0;
      sub_101356AA8(v2);
    }
  }

  if (*(v2 + 712) == 1)
  {
    *(v2 + 712) = 0;
  }

  if ((*(v2 + 680) & 1) == 0)
  {
    *(v2 + 672) = 0;
    *(v2 + 680) = 1;
  }

  *(v2 + 672) = std::chrono::steady_clock::now();
  goto LABEL_28;
}

void sub_10135DE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_10002B644(&a20);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_10135DEBC(uint64_t **a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  v3 = *(*v1 + 328);
  if (!v3)
  {
    stewie::ConnectionAssistantGPSDataSource::create();
  }

  v18 = 0;
  stewie::ConnectionAssistantGPSDataSource::currentGPSTime(v3, &v18);
  v4 = *(v2 + 328);
  v5 = v1[1];
  v6 = *(v5 + 32);
  v7 = *(v5 + 8) * 1000000000.0;
  LODWORD(v5) = *(v5 + 72);
  *(v4 + 16) = v6;
  *(v4 + 24) = v5;
  *(v4 + 32) = v7;
  *(v4 + 40) = 1;
  v17 = 0;
  stewie::ConnectionAssistantGPSDataSource::currentGPSTime(v4, &v17);
  v8 = v17;
  v9 = v18;
  if (v18 > v17 + 100000000)
  {
    v10 = *(v2 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v9 - v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Tracked time went back %llu ns, if it happens too often, optimize how TargetDataSource handles this case.", buf, 0xCu);
    }
  }

  v11 = v1[3];
  v12 = *(v11 + 32);
  v13 = *(v2 + 328);
  v14 = vdivq_f64(vmulq_f64(*(v11 + 8), vdupq_n_s64(0x400921FB54442D18uLL)), vdupq_n_s64(0x4066800000000000uLL));
  if (v13[4].i8[8] == 1)
  {
    v13[4].i8[8] = 0;
  }

  v13[3] = vextq_s8(v14, v14, 8uLL);
  v13[4].i64[0] = v12;
  v13[4].i8[8] = 1;
  sub_101356AA8(v2);
}

void sub_10135E084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10135E0A0(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10135E0A0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      sub_100004A34(v3);
    }

    operator delete();
  }

  return a1;
}

void sub_10135E100(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (*(v2 + 624))
  {
    v3 = *(v2 + 328);
    if (v3)
    {
      *buf = 0;
      stewie::ConnectionAssistantGPSDataSource::currentGPSTime(v3, buf);
      if (*buf)
      {
        v4 = *buf + 1000000 * v1[1];
        *(v2 + 584) = *buf;
        *(v2 + 592) = v4;
        *(v2 + 600) = 1;
        sub_101356AA8(v2);
      }

      v5 = *(v2 + 40);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
LABEL_12:
        operator delete();
      }

      v8 = 0;
      v6 = "handleStewieTxDeferTime - currentGPSTime is 0";
      v7 = &v8;
LABEL_10:
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
      goto LABEL_12;
    }

    v5 = *(v2 + 40);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v6 = "handleStewieTxDeferTime - fGPSDataSource == nil";
  }

  else
  {
    v5 = *(v2 + 40);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v6 = "handleStewieTxDeferTime - stewieTxDeferTime reported when Stewie is not on";
  }

  v7 = buf;
  goto LABEL_10;
}

uint64_t sub_10135E2D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F316B8;
  a2[1] = v2;
  return result;
}

void sub_10135E304(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I OTG offer declined backoff timer expired", v4, 2u);
  }

  v3 = *(v1 + 776);
  *(v1 + 768) = 0u;
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10007A8F8(v1);
}

uint64_t sub_10135E384(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10135E440(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F31738;
  a2[1] = v2;
  return result;
}

void sub_10135E46C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I OTG offer timer expired", v3, 2u);
  }

  sub_10007A8F8(v1);
}

uint64_t sub_10135E4D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10135E524(void *a1)
{
  *a1 = off_101F317B8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10135E570(void *a1)
{
  *a1 = off_101F317B8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10135E648(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F317B8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10135E680(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10135E690(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10135E6D0(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return;
  }

  v5 = *a2;
  v6 = *a3;
  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    if (*(v9 + 760) == 1 && (v10 = *(v9 + 744)) != 0)
    {
      if (v10 == v5)
      {
        v15 = *(v9 + 752);
        *(v9 + 744) = 0;
        *(v9 + 752) = 0;
        if (v15)
        {
          sub_100004A34(v15);
        }

        v11 = *(v9 + 40);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        v16 = "ignored";
        if (v6)
        {
          v16 = "accepted";
        }

        v17 = 136315138;
        v18 = v16;
        v13 = "#I Offer response received: %s";
        goto LABEL_16;
      }

      v11 = *(v9 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = "ignored";
        if (v6)
        {
          v12 = "accepted";
        }

        v17 = 136315138;
        v18 = v12;
        v13 = "#I Offer response received for expired offer: %s";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, &v17, 0xCu);
      }
    }

    else
    {
      v11 = *(v9 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = "ignored";
        if (v6)
        {
          v14 = "accepted";
        }

        v17 = 136315138;
        v18 = v14;
        v13 = "#I No offer is pending, but response received: %s";
        goto LABEL_16;
      }
    }
  }

LABEL_17:

  sub_100004A34(v8);
}

uint64_t sub_10135E8C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10135E90C(uint64_t a1)
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

void *sub_10135E98C(void *a1)
{
  *a1 = off_101F31848;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10135E9D8(void *a1)
{
  *a1 = off_101F31848;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10135EAB0(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F31848;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10135EAE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10135EAF8(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10135EB38(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return;
  }

  v5 = *a2;
  v6 = *a3;
  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v9[98];
    if (v10)
    {
      if (v10 == v5)
      {
        v15 = (*(*v10 + 16))(v10);
        v16 = v9[99];
        *(v9 + 49) = 0u;
        if (v16)
        {
          sub_100004A34(v16);
        }

        v17 = v9[5];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = "ignored";
          if (v6)
          {
            v18 = "accepted";
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Instant offer response received: %s", &buf, 0xCu);
        }

        if (v6)
        {
          ++v9[104];
          if ((v15 - 1) <= 1)
          {
            sub_10000501C(&buf, "MessagesOfferAccept");
            stewie::StewieConnectionAssistant::submitEntryPointMetric(v9, &buf);
            if (v21 < 0)
            {
              operator delete(buf);
            }
          }

          sub_100004AA0(&buf, v9 + 1);
          v19 = *(&buf + 1);
          if (*(&buf + 1))
          {
            atomic_fetch_add_explicit((*(&buf + 1) + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(v19);
          }

          operator new();
        }

        goto LABEL_29;
      }

      v11 = v9[5];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = "ignored";
        if (v6)
        {
          v12 = "accepted";
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v12;
        v13 = "#I Instant offer response received for expired alert: %s";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, &buf, 0xCu);
      }
    }

    else
    {
      v11 = v9[5];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = "ignored";
        if (v6)
        {
          v14 = "accepted";
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v14;
        v13 = "#I No instant offer is pending, but response received: %s";
        goto LABEL_15;
      }
    }
  }

LABEL_29:

  sub_100004A34(v8);
}

void sub_10135EE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_10135EE64(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10135EEB0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_10135EF04(uint64_t *a1)
{
  v11 = a1;
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      if (*a1)
      {
        v6 = *(v5 + 136);
        if (v6)
        {
          v7 = std::__shared_weak_count::lock(v6);
          if (v7)
          {
            v8 = v7;
            v9 = *(v5 + 128);
            if (v9)
            {
              if ((*(a1 + 4) - 1) <= 1)
              {
                sub_10000501C(__p, "Messages");
                (*(*v9 + 24))(v9, __p);
                if (v13 < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }

            sub_100004A34(v8);
          }
        }
      }

      sub_100004A34(v4);
    }
  }

  return sub_10135EEB0(&v11);
}

void sub_10135EFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v16);
  sub_100004A34(v15);
  sub_10135EEB0(&a9);
  _Unwind_Resume(a1);
}

void sub_10135F020(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  *(v2 + 864) = *(*a1 + 12);
  v3 = *(v1 + 2);
  if (v3)
  {
    v4 = v3 == 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = *(v2 + 856);
    *(v2 + 848) = 0u;
    if (v5)
    {
      sub_100004A34(v5);
    }

    sub_10135403C(v2, 0);
  }

  else if (v3 == 1 && !*(v2 + 848))
  {
    v6 = *(v2 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = 20;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Created timer to track GPS acquisition. Duration: %lld seconds", &buf, 0xCu);
    }

    sub_10000501C(&__p, "GPSAcquisitionTracker");
    *&buf = off_101F318C8;
    *(&buf + 1) = v2;
    p_buf = &buf;
    AutoStartTimer::create();
    v7 = v11;
    v11 = 0uLL;
    v8 = *(v2 + 856);
    *(v2 + 848) = v7;
    if (v8)
    {
      sub_100004A34(v8);
      if (*(&v11 + 1))
      {
        sub_100004A34(*(&v11 + 1));
      }
    }

    sub_10002B644(&buf);
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

  sub_101356AA8(v2);
}

void sub_10135F1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_10002B644(&a18);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_10135F290(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F318C8;
  a2[1] = v2;
  return result;
}

void sub_10135F2BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = 20;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I GPS acquisition timer expired after: %lld seconds", &v3, 0xCu);
  }

  sub_10135403C(v1, 0);
  sub_101356AA8(v1);
}

uint64_t sub_10135F370(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10135F3BC(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 1);
  *(v2 + 879) = *(*a1 + 22);
  *(v2 + 865) = v3;
  v4 = *(v1 + 8);
  if (*(v2 + 885) == 2)
  {
    if (!v4)
    {
      v4 = *(v2 + 888);
    }

    if (!v4)
    {
      v4 = 2;
    }
  }

  *(v2 + 888) = v4;
  sub_10135403C(v2, 0);
  sub_101356AA8(v2);
}

void sub_10135F490(uint64_t **a1)
{
  v4 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v1 + 8);
  if (*(v2 + 887) != v3)
  {
    *(v2 + 887) = v3;
    sub_101356AA8(v2);
  }

  operator delete();
}

void sub_10135F524(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  if (*(v1 + 624) == 1)
  {
    v2 = *(v1 + 544);
    *(v1 + 528) = *(*a1 + 1);
    if ((v2 & 1) == 0)
    {
      *(v1 + 544) = 1;
    }

    sub_10135403C(v1, 0);
    sub_101356AA8(v1);
  }

  operator delete();
}

void sub_10135F5D8(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];
  if (!v2)
  {
    goto LABEL_24;
  }

  v4 = *(v3 + 224);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = *(v2 + 72);
  v6 = *(v2 + 80) - v5;
  v7 = *(v4 + 72);
  if (v6 != *(v4 + 80) - v7)
  {
    goto LABEL_5;
  }

  if (memcmp(v5, v7, v6))
  {
    goto LABEL_5;
  }

  if (*(v2 + 96) != *(v4 + 96))
  {
    goto LABEL_5;
  }

  v19 = *(v2 + 104);
  v20 = *(v2 + 112);
  v21 = v20 - v19;
  if (v20 - v19 != *(v4 + 112) - *(v4 + 104))
  {
    goto LABEL_5;
  }

  memset(buf, 0, sizeof(buf));
  v33 = 0;
  if (v20 != v19)
  {
    if (((v21 >> 1) & 0x8000000000000000) == 0)
    {
      sub_1001B9700(buf, v21 >> 1);
    }

    sub_1000CE3D4();
  }

  if (*(v2 + 152) != *(v4 + 152) || *(v2 + 156) != *(v4 + 156) || (v22 = *(v2 + 136) - *(v2 + 128), v23 = *(v4 + 128), v24 = *(v4 + 136), v22 != v24 - v23))
  {
LABEL_5:
    v8 = (v3 + 40);
    v9 = *(v3 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I updateProvisioningData_sync - provisioningData changed", buf, 2u);
    }

    v11 = v1[1];
    v10 = v1[2];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = *(v3 + 232);
    *(v3 + 224) = v11;
    *(v3 + 232) = v10;
    if (v12)
    {
      sub_100004A34(v12);
    }

    v13 = v1[1];
    sub_1001E0090(buf, *(v13 + 72), *(v13 + 80), *(v13 + 80) - *(v13 + 72));
    v14 = (v3 + 256);
    if (*(v3 + 279) < 0)
    {
      operator delete(*v14);
    }

    *v14 = *buf;
    *(v3 + 272) = v33;
    v15 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v3 + 279) < 0)
      {
        v14 = *v14;
      }

      *buf = 136315138;
      *&buf[4] = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I updateProvisioningData_sync - iso3166Alpha3CountryCode: '%s'", buf, 0xCu);
      v15 = *v8;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v13 + 96);
      *buf = 134217984;
      *&buf[4] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I updateProvisioningData_sync - threshold: %.2f", buf, 0xCu);
      v15 = *v8;
    }

    *(v3 + 240) = *(v13 + 96) * 3.14159265 / 180.0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v13 + 156);
      *buf = 134217984;
      *&buf[4] = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I updateProvisioningData_sync - anchor threshold: %.2f", buf, 0xCu);
      v15 = *v8;
    }

    *(v3 + 248) = *(v13 + 156) * 3.14159265 / 180.0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = (*(v13 + 112) - *(v13 + 104)) >> 1;
      *buf = 134217984;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I updateProvisioningData_sync - %zu Gen2->Gen1 mappings:", buf, 0xCu);
    }

    operator new();
  }

  memset(buf, 0, sizeof(buf));
  v33 = 0;
  sub_10135B454(buf, v23, v24, v22 >> 4);
  v25 = *(v2 + 128);
  v26 = *(v2 + 136);
  if (v25 == v26)
  {
    v30 = 1;
LABEL_55:
    v28 = *buf;
    if (!*buf)
    {
LABEL_57:
      if (v30)
      {
        v31 = *(v3 + 40);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I updateProvisioningData_sync - provisioningData not changed, skipping update", buf, 2u);
        }

LABEL_24:
        sub_101356AA8(v3);
      }

      goto LABEL_5;
    }
  }

  else
  {
    v27 = *&buf[8];
    while (1)
    {
      v28 = *buf;
      if (*buf == v27)
      {
        break;
      }

      while (*v25 != *v28 || *(v25 + 4) != v28[1] || *(v25 + 8) != v28[2] || *(v25 + 12) != v28[3])
      {
        v28 += 4;
        if (v28 == v27)
        {
          v30 = 0;
          goto LABEL_55;
        }
      }

      if (v28 != v27)
      {
        for (i = v28 + 4; i != v27; i += 4)
        {
          if (*v25 != *i || *(v25 + 4) != i[1] || *(v25 + 8) != i[2] || *(v25 + 12) != i[3])
          {
            *v28 = *i;
            v28 += 4;
          }
        }
      }

      v30 = v28 != v27;
      if (v28 != v27)
      {
        v25 += 16;
        if (v25 != v26)
        {
          continue;
        }
      }

      goto LABEL_55;
    }

    v30 = 0;
    if (!*buf)
    {
      goto LABEL_57;
    }
  }

  *&buf[8] = v28;
  operator delete(v28);
  goto LABEL_57;
}

void sub_10135FEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  sub_1000049E0(&a16);
  sub_1000049E0(&a15);
  _Unwind_Resume(a1);
}

uint64_t *sub_10135FF08(uint64_t **a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v3 = *v1;
  v2 = v1[1];
  v4 = *(*v1 + 312);
  if (v2 != v4)
  {
    if (v2)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
LABEL_8:
      v6 = v1[2];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = *(v3 + 320);
      *(v3 + 312) = v2;
      *(v3 + 320) = v6;
      if (v7)
      {
        sub_100004A34(v7);
      }

      sub_101356AA8(v3);
    }

    if (!sub_1016D5958(v2, v4))
    {
      v2 = v1[1];
      goto LABEL_8;
    }
  }

  sub_1000049E0(&v10);
  return sub_1000049E0(&v9);
}

void sub_10135FF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000049E0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10135FFB8(void *a1)
{
  v2 = a1;
  v1 = *a1;
  if (*(*v1 + 360) == 1)
  {
    *(*v1 + 360) = 0;
  }

  operator delete();
}

void sub_10136000C(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = v1[1];
  v3 = v1[2];
  v6 = v2;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  stewie::TargetCoordsFactory::create();
}

void sub_101360450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (a21)
  {
    sub_100004A34(a21);
  }

  if (a23)
  {
    sub_100004A34(a23);
  }

  sub_100422B08(&a25);
  if (a30)
  {
    sub_100004A34(a30);
  }

  v32 = *(v30 - 104);
  if (v32)
  {
    sub_100004A34(v32);
  }

  v33 = *(v30 - 88);
  if (v33)
  {
    sub_100004A34(v33);
  }

  v34 = *(v30 - 40);
  if (v34)
  {
    sub_100004A34(v34);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10032EAB4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101360540(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  dispatch_assert_queue_V2(*(v2 + 24));
  v3 = *(v2 + 216);
  if (v3 && (v4 = *(v2 + 328)) != 0)
  {
    if (*(v1 + 33) == 1)
    {
      if (*(v4 + 72) == 1)
      {
        v5 = *(v4 + 48);
        v6 = *(v4 + 64);
      }

      else
      {
        v5 = 0uLL;
        v6 = 0;
      }

      v9 = *(v1 + 32);
      *buf = v5;
      *&buf[16] = v6;
      if (*(v4 + 40) == 1)
      {
        v10 = *(v4 + 24);
      }

      else
      {
        v10 = 0;
      }

      stewie::ConnectionAssistantGPSDataSource::currentGPSTime(v4, &v29);
      LOBYTE(v8) = stewie::ConnectionAssistantTargetDataSource::updateLLCTarget(v3, v9, buf, v10, &v29);
LABEL_15:
      v11 = (v2 + 336);
      if (*(v2 + 360))
      {
        v12 = *(v1 + 2);
        if (!v8 && *v11 == v12 && *(v2 + 340) == *(v1 + 3))
        {
          v13 = 0;
          goto LABEL_24;
        }
      }

      else
      {
        *v11 = 0;
        *(v2 + 344) = 0;
        *(v2 + 352) = 0;
        *(v2 + 360) = 1;
        v12 = *(v1 + 2);
      }

      v14 = *(v2 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = sub_1009766EC(v12);
        v16 = sub_100976710(*(v1 + 3));
        *buf = 136315394;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Received updated connectionStatus: %s, registrationStatus: %s", buf, 0x16u);
        v12 = *(v1 + 2);
      }

      v13 = 1;
LABEL_24:
      *(v2 + 336) = v12;
      *(v2 + 340) = *(v1 + 3);
      if (*(v1 + 28) == 1)
      {
        v17 = (v2 + 344);
        if (*(v2 + 348) != 1 || *v17 != *(v1 + 6))
        {
          v18 = *(v2 + 40);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = sub_100976734(*(v1 + 6));
            *buf = 136315138;
            *&buf[4] = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Received updated congestionStatus: %s", buf, 0xCu);
          }
        }

        if (v13)
        {
          v13 = 1;
        }

        else
        {
          v20 = *(v1 + 28);
          v21 = *(v2 + 348);
          v13 = v21 != v20;
          if (v21 == v20 && v21 != 0)
          {
            v13 = *v17 != *(v1 + 6);
          }
        }

        v23 = *(v1 + 6);
        *(v2 + 348) = *(v1 + 28);
        *v17 = v23;
      }

      if (*(v1 + 20) == 1)
      {
        if (v13)
        {
          v24 = *(v1 + 4);
          *(v2 + 356) = *(v1 + 20);
          *(v2 + 352) = v24;
          goto LABEL_41;
        }

        v25 = (v2 + 352);
        if (*(v2 + 356) != 1)
        {
          v26 = *(v1 + 4);
          *(v2 + 356) = *(v1 + 20);
          *v25 = v26;
          goto LABEL_41;
        }

        v27 = *v25;
        v28 = *(v1 + 4);
        *(v2 + 356) = *(v1 + 20);
        *v25 = v28;
        if (v27 != v28)
        {
LABEL_41:
          sub_101356AA8(v2);
        }
      }

      else if (v13)
      {
        goto LABEL_41;
      }

      operator delete();
    }
  }

  else if (*(v1 + 33) == 1)
  {
    v7 = *(v2 + 40);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (!v8)
    {
      goto LABEL_15;
    }

    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Received updateServiceInfo with LLC target when TargetDataSource or GPSDataSource is down", buf, 2u);
  }

  LOBYTE(v8) = 0;
  goto LABEL_15;
}

uint64_t *sub_1013608E8(uint64_t **a1)
{
  v1 = *a1;
  v25 = a1;
  v26 = v1;
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(*v1 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3 == v4)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    *buf = 0;
    v11 = "#I updateServiceOutageInfo_sync - serviceOutageInfo: empty";
    goto LABEL_12;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I updateServiceOutageInfo_sync - serviceOutageInfo: [", buf, 2u);
    v3 = v1[2];
    v4 = v1[3];
  }

  for (; v3 != v4; v3 += 24)
  {
    v7 = *(v2 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *v3;
      v9 = *(v3 + 1);
      v10 = *(v3 + 2);
      *buf = 67109632;
      *&buf[4] = v8;
      *&buf[8] = 2048;
      *&buf[10] = v9;
      *&buf[18] = 2048;
      *&buf[20] = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I     FMID %u: start at gps time: %llu, duration: %llu", buf, 0x1Cu);
    }
  }

  v5 = *(v2 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v11 = "#I ]";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
  }

LABEL_13:
  if (!*(v2 + 216))
  {
    v15 = *(v2 + 40);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 0;
    v16 = "Received updateServiceOutageInfo when TargetDataSource is down";
LABEL_24:
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_43;
  }

  if ((*(v2 + 624) & 1) == 0)
  {
    v15 = *(v2 + 40);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 0;
    v16 = "Received updateServiceOutageInfo in OFF state";
    goto LABEL_24;
  }

  v12 = v1[2];
  v13 = v1[3];
  if (v12 == v13)
  {
    v17 = *(v2 + 40);
    if (*(v2 + 608))
    {
      if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Clearing target service schedule", buf, 2u);
      }

      v18 = *(v2 + 616);
      *(v2 + 608) = 0u;
      if (v18)
      {
        sub_100004A34(v18);
      }

LABEL_33:
      v20 = *(v2 + 216);
      v21 = *(v2 + 616);
      *buf = *(v2 + 608);
      *&buf[8] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      }

      *&buf[16] = 0uLL;
      stewie::ConnectionAssistantTargetDataSource::updateServiceSchedules(v20, buf);
      if (*&buf[24])
      {
        sub_100004A34(*&buf[24]);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      sub_101356AA8(v2);
    }
  }

  else
  {
    v14 = *(v2 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = 0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 3);
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Satellite outages reported: %zu", buf, 0xCu);
      v12 = v1[2];
      v13 = v1[3];
    }

    if (v12 != v13)
    {
      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      operator new();
    }

    if (*(v2 + 608))
    {
      v23 = *(v2 + 40);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Updating target service schedule", buf, 2u);
      }

      *(v2 + 608) = 0;
      v24 = *(v2 + 616);
      *(v2 + 616) = 0;
      if (v24)
      {
        sub_100004A34(v24);
      }

      v19 = 1;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      goto LABEL_33;
    }

    v17 = *(v2 + 40);
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Received the same StewieServiceOutageInformation, ignoring", buf, 2u);
  }

LABEL_43:
  sub_1012D6E48(&v26);
  return sub_1000049E0(&v25);
}

void sub_101361004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_1012D6E48(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

void sub_101361068(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(*a1 + 8);
  dispatch_assert_queue_V2(*(v1 + 24));
  if ((*(v1 + 624) & 1) == 0)
  {
    v12 = *(v1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Received emergencyConversationIDCommitted in OFF state", buf, 2u);
    }

LABEL_19:
    sub_101356AA8(v1);
  }

  if ((*(v1 + 420) & 1) == 0)
  {
    v13 = *(v1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v16 = v2;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "ConversationID == %hhu was committed without prior knowledge about it", buf, 8u);
    }

    v4 = 0;
    v6 = 0;
    v5 = 0;
    v3 = 0;
    goto LABEL_17;
  }

  v3 = *(v1 + 408);
  v4 = *(v1 + 414);
  v5 = *(v1 + 415);
  v6 = *(v1 + 416);
  v7 = *(v1 + 412);
  if (v7 == v2)
  {
    v8 = *(v1 + 40);
    if (*(v1 + 413) != 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v16 = v2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I ConversationID == %hhu was committed", buf, 8u);
      }

      goto LABEL_17;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v16 = v2;
      v9 = "ConversationID == %hhu was committed again";
      v10 = v8;
      v11 = 8;
LABEL_14:
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
    }
  }

  else
  {
    v14 = *(v1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v16 = v2;
      v17 = 1024;
      v18 = v7;
      v9 = "ConversationID == %hhu was committed, but tracked ConversationID == %hhu, overriding";
      v10 = v14;
      v11 = 14;
      goto LABEL_14;
    }
  }

LABEL_17:
  if ((*(v1 + 624) & 1) == 0)
  {
    sub_1000D1644();
  }

  *(v1 + 408) = v3;
  *(v1 + 412) = v2;
  *(v1 + 413) = 1;
  *(v1 + 414) = v4;
  *(v1 + 415) = v5;
  *(v1 + 416) = v6;
  *(v1 + 420) = 1;
  goto LABEL_19;
}

void sub_10136132C(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(*a1 + 8);
  v3 = (*a1)[2];
  dispatch_assert_queue_V2(*(v1 + 24));
  v4 = *(v1 + 40);
  if ((*(v1 + 624) & 1) == 0)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Received roadsideConversationIDCommitted in OFF state", buf, 2u);
    }

LABEL_23:
    sub_101356AA8(v1);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v17 = v2;
    v18 = 2048;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I (Roadside) Got notified that ConversationID == %hhu was committed, providerId=%llu", buf, 0x12u);
    if ((*(v1 + 624) & 1) == 0)
    {
LABEL_24:
      sub_1000D1644();
    }
  }

  if (*(v1 + 456))
  {
    v5 = *(v1 + 448);
    v6 = *(v1 + 449);
    v7 = *(v1 + 450);
    v8 = *(v1 + 424);
    if (v8 != v2)
    {
      v15 = *(v1 + 40);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 67109376;
      v17 = v2;
      v18 = 1024;
      LODWORD(v19) = v8;
      v11 = "(Roadside) ConversationID == %hhu was committed, but tracked ConversationID == %hhu, overriding";
      v12 = v15;
      v13 = 14;
      goto LABEL_18;
    }

    v9 = *(v1 + 40);
    if (*(v1 + 440) == 1)
    {
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v10 = ", overriding";
      if (*(v1 + 432) == v3)
      {
        v10 = "";
      }

      *buf = 67109378;
      v17 = v2;
      v18 = 2080;
      v19 = v10;
      v11 = "(Roadside) ConversationID == %hhu was committed again %s";
      v12 = v9;
      v13 = 18;
LABEL_18:
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_21;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v17 = v2;
      v18 = 2048;
      v19 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I (Roadside) ConversationID == %hhu was committed, providerId=%llu", buf, 0x12u);
    }
  }

  else
  {
    v14 = *(v1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = v2;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "(Roadside) ConversationID == %hhu was committed without prior knowledge about it", buf, 8u);
    }

    v5 = 0;
    v7 = 0;
    v6 = 0;
  }

LABEL_21:
  if (*(v1 + 624))
  {
    *(v1 + 424) = v2;
    *(v1 + 425) = 1;
    *(v1 + 432) = v3;
    *(v1 + 440) = 1;
    *(v1 + 448) = v5;
    *(v1 + 449) = v6;
    *(v1 + 450) = v7;
    *(v1 + 456) = 1;
    goto LABEL_23;
  }

  goto LABEL_24;
}

void sub_101361678(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1 + 1);
  v2 = **a1;
  dispatch_assert_queue_V2(*(v2 + 24));
  if (*(v2 + 624))
  {
    if (*(v2 + 328))
    {
      if (*v3)
      {
        __p[0] = 0;
        __p[1] = 0;
        v43 = 0;
        sub_100976C64(v1 + 1, __p);
        v5 = (v1 + 2);
        v4 = *(v1 + 4);
        if (!sub_101357EFC(v4))
        {
          v15 = *(v2 + 40);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_76;
          }

          v16 = __p;
          if (v43 < 0)
          {
            v16 = __p[0];
          }

          *buf = 136315394;
          *&buf[4] = v16;
          *&buf[12] = 1024;
          *&buf[14] = v4;
          v17 = "#I Message %s of type %d is ignored";
          v18 = v15;
          v19 = 18;
          goto LABEL_28;
        }

        v6 = *(v1 + 6);
        if (v6 <= 1)
        {
          if (v6)
          {
            if (v6 != 1)
            {
              goto LABEL_76;
            }

            v7 = *(v1 + 20);
            if (v7 == 1)
            {
              v8 = round(sub_100E94750(v1[4]));
              v9 = *(v2 + 40);
              v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
              if (v8 >= 0.0 && v8 <= 4294967300.0)
              {
                if (v10)
                {
                  v11 = __p;
                  if (v43 < 0)
                  {
                    v11 = __p[0];
                  }

                  *buf = 136315138;
                  *&buf[4] = v11;
                  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Message %s is in progress", buf, 0xCu);
                }

                if ((*(v2 + 624) & 1) == 0)
                {
                  sub_1000D1644();
                }

                sub_1000BA468(buf, v1 + 1);
                v12 = *v5;
                v49 = v1[4];
                *&buf[8] = v12;
                stewie::ConnectionAssistantGPSDataSource::currentGPSTime(*(v2 + 328), &v50);
                v51 = v8;
                v52 = 0;
                goto LABEL_75;
              }

              if (!v10)
              {
                goto LABEL_76;
              }

              v34 = __p;
              if (v43 < 0)
              {
                v34 = __p[0];
              }

              *buf = 134218242;
              *&buf[4] = v8;
              *&buf[12] = 2080;
              *&buf[14] = v34;
              v17 = "#I Received unacceptable getEstimatedSendTimeOverStewieInSeconds result: %f for message %s";
              v18 = v9;
              v19 = 22;
LABEL_28:
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
              goto LABEL_76;
            }

            v31 = *(v2 + 40);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = __p;
              if (v43 < 0)
              {
                v32 = __p[0];
              }

              *buf = 136315394;
              *&buf[4] = v32;
              *&buf[12] = 256;
              buf[14] = v7;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Message %s on transport %hhu is ignored", buf, 0xFu);
            }

            if (*(v2 + 624) == 1)
            {
LABEL_57:
              if (*(v2 + 520) == 1)
              {
                sub_1000475BC((v2 + 464));
                *(v2 + 520) = 0;
              }

              goto LABEL_76;
            }

LABEL_86:
            sub_1000D1644();
          }

          v22 = *(v2 + 40);
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_76;
          }

          v23 = __p;
          if (v43 < 0)
          {
            v23 = __p[0];
          }

          *buf = 136315138;
          *&buf[4] = v23;
          v24 = "Received unexpected message status == kUnknown for message %s";
LABEL_41:
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v24, buf, 0xCu);
          goto LABEL_76;
        }

        if (v6 != 2)
        {
          if (v6 != 3)
          {
            goto LABEL_76;
          }

          v20 = *(v2 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = __p;
            if (v43 < 0)
            {
              v21 = __p[0];
            }

            *buf = 136315138;
            *&buf[4] = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Message %s was canceled", buf, 0xCu);
          }

          if (*(v2 + 624))
          {
            goto LABEL_57;
          }

          goto LABEL_86;
        }

        if (*(v2 + 624) != 1)
        {
          goto LABEL_86;
        }

        v25 = *(v1 + 20);
        if ((*(v2 + 520) & 1) == 0)
        {
          if (v25 != 1)
          {
            goto LABEL_76;
          }

          v22 = *(v2 + 40);
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_76;
          }

          v33 = __p;
          if (v43 < 0)
          {
            v33 = __p[0];
          }

          *buf = 136315138;
          *&buf[4] = v33;
          v24 = "Received unexpected message status == kSent for untracked message %s, ignoring.";
          goto LABEL_41;
        }

        if ((v25 - 1) >= 2)
        {
          v35 = *(v2 + 40);
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_76;
          }

          v36 = __p;
          if (v43 < 0)
          {
            v36 = __p[0];
          }

          *buf = 136315394;
          *&buf[4] = v36;
          *&buf[12] = 256;
          buf[14] = v25;
          v17 = "#I Message %s on transport %hhu is ignored";
          v18 = v35;
          v19 = 15;
          goto LABEL_28;
        }

        v26 = CFEqual(*(v2 + 464), *v3);
        v27 = *(v2 + 40);
        if (v26)
        {
          if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_DEFAULT))
          {
            v28 = __p;
            if (v43 < 0)
            {
              v28 = __p[0];
            }

            *buf = 136315138;
            *&buf[4] = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Message %s is sent", buf, 0xCu);
          }

          if (*(v2 + 624))
          {
            sub_1000BA468(buf, v1 + 1);
            v29 = v1[4];
            *&buf[8] = *v5;
            v30 = *(v2 + 496);
            v49 = v29;
            v50 = v30;
            v51 = *(v2 + 504);
            stewie::ConnectionAssistantGPSDataSource::currentGPSTime(*(v2 + 328), &v52);
LABEL_75:
            sub_101357F20((v2 + 464), buf);
            sub_1000475BC(buf);
LABEL_76:
            if (SHIBYTE(v43) < 0)
            {
              operator delete(__p[0]);
            }

LABEL_78:
            sub_101356AA8(v2);
          }
        }

        else
        {
          if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
          {
            v38 = SHIBYTE(v43);
            v39 = __p[0];
            sub_100976C64((v2 + 464), buf);
            v40 = __p;
            if (v38 < 0)
            {
              v40 = v39;
            }

            if (buf[23] >= 0)
            {
              v41 = buf;
            }

            else
            {
              v41 = *buf;
            }

            *v44 = 136446466;
            v45 = v40;
            v46 = 2080;
            v47 = v41;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Received message status == kSent for ID %{public}s, but tracking ID %s. Marking it sent anyway.", v44, 0x16u);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          if (*(v2 + 624) == 1)
          {
            sub_1000BA468(buf, v3);
            v37 = v1[4];
            *&buf[8] = *v5;
            v49 = v37;
            v50 = 0;
            v51 = 0;
            stewie::ConnectionAssistantGPSDataSource::currentGPSTime(*(v2 + 328), &v52);
            goto LABEL_75;
          }
        }

        sub_1000D1644();
      }

      v13 = *(v2 + 40);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      *buf = 0;
      v14 = "Received message status update with null MessageID";
    }

    else
    {
      v13 = *(v2 + 40);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      *buf = 0;
      v14 = "Received updateOutgoingMessageStatus when GPSDataSource is down";
    }
  }

  else
  {
    v13 = *(v2 + 40);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }

    *buf = 0;
    v14 = "Received updateOutgoingMessageStatus in OFF state";
  }

  _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
  goto LABEL_78;
}

void sub_101361DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_100E28918(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_101361DFC(uint64_t **a1)
{
  v3 = a1;
  v1 = *a1;
  v2 = **a1;
  *(v2 + 846) = *(v1 + 4);
  sub_10007A8F8(v2);
  operator delete();
}

void sub_101361E84(uint64_t **a1)
{
  v6 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 8);
  if (*(v2 + 845) != v3)
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "false";
      if (v3)
      {
        v5 = "true";
      }

      *buf = 136315138;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I handleSuppressBanner changed: suppress = %s", buf, 0xCu);
      LOBYTE(v3) = *(v1 + 8);
    }

    *(v2 + 845) = v3;
  }

  operator delete();
}

void sub_101362008(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_1000208E8();
  v3 = qword_101FCA948;
  if (v2 == 1)
  {
    if (os_log_type_enabled(qword_101FCA948, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Assistant app launched successfully", buf, 2u);
    }
  }

  else if (os_log_type_enabled(qword_101FCA948, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to launch Assistant app", v4, 2u);
  }
}

uint64_t sub_1013620B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101362124(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F319C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101362178(uint64_t a1)
{
  if (*(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
  }

  v2 = *(a1 + 360);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  if (*(a1 + 264) == 1 && *(a1 + 256) == 1)
  {
    sub_1000475BC((a1 + 216));
  }

  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 128);
    if (v3)
    {
      *(a1 + 136) = v3;

      operator delete(v3);
    }
  }
}

uint64_t *sub_10136221C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_10136227C(void *a1)
{
  v11 = a1;
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      if (*a1)
      {
        v6 = *(v5 + 136);
        if (v6)
        {
          v7 = std::__shared_weak_count::lock(v6);
          if (v7)
          {
            v8 = v7;
            v9 = *(v5 + 128);
            if (v9)
            {
              (*(*v9 + 16))(v9);
              (***(v5 + 88))(*(v5 + 88), a1[2]);
            }

            sub_100004A34(v8);
          }
        }
      }

      sub_100004A34(v4);
    }
  }

  return sub_10136221C(&v11);
}

void sub_101362350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100004A34(v4);
  sub_100004A34(v3);
  sub_10136221C(va);
  _Unwind_Resume(a1);
}

void sub_101362394(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F31A18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1013623E8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_101362424(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F31A68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101362488(uint64_t **a1)
{
  v1 = a1;
  sub_10135806C(**a1);
  operator delete();
}

uint64_t sub_101362508(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_101362588(uint64_t *a1)
{
  v1 = *a1;
  v72 = a1;
  v73 = v1;
  v2 = *v1;
  object = 0;
  *&v83 = v1 + 8;
  *(&v83 + 1) = "location";
  sub_100048A24(&v83, &object);
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    sub_10000501C(&v83, "location: is deprecated, use gps-time-and-loc instead");
    __p[0] = 0;
    v3 = *(v1 + 40);
    if (!v3)
    {
      sub_100022DB4();
    }

    (*(*v3 + 48))(v3, &v83, __p);
    if (SBYTE7(v84) < 0)
    {
      operator delete(v83);
    }
  }

  xpc_release(object);
  object = 0;
  *&v83 = v1 + 8;
  *(&v83 + 1) = "target-coords";
  sub_100006354(&v83, &object);
  if (xpc_get_type(object) != &_xpc_type_null)
  {
    sub_10000501C(&v83, "target-coords is: obsolete");
    __p[0] = 0;
    v4 = *(v1 + 40);
    if (!v4)
    {
      sub_100022DB4();
    }

    (*(*v4 + 48))(v4, &v83, __p);
    if (SBYTE7(v84) < 0)
    {
      operator delete(v83);
    }
  }

  xpc_release(object);
  object = 0;
  *&v83 = v1 + 8;
  *(&v83 + 1) = "service-threshold";
  sub_100006354(&v83, &object);
  if (xpc_get_type(object) != &_xpc_type_null)
  {
    sub_10000501C(&v83, "service-threshold: obsolete");
    __p[0] = 0;
    v5 = *(v1 + 40);
    if (!v5)
    {
      sub_100022DB4();
    }

    (*(*v5 + 48))(v5, &v83, __p);
    if (SBYTE7(v84) < 0)
    {
      operator delete(v83);
    }
  }

  xpc_release(object);
  v86 = 0;
  *&v83 = v1 + 8;
  *(&v83 + 1) = "service-outages";
  sub_100048A24(&v83, &v86);
  if (xpc_get_type(v86) != &_xpc_type_dictionary)
  {
    goto LABEL_14;
  }

  v7 = v2[41];
  if (!v7 || !v2[27])
  {
    sub_10000501C(&v83, "service-outages: GPSDataSource or TargetDataSource is down");
    __p[0] = 0;
    v10 = *(v1 + 40);
    if (!v10)
    {
      sub_100022DB4();
    }

    (*(*v10 + 48))(v10, &v83, __p);
    if (SBYTE7(v84) < 0)
    {
      v11 = v83;
      goto LABEL_148;
    }

LABEL_149:
    v6 = 0;
    goto LABEL_150;
  }

  v85 = 0;
  stewie::ConnectionAssistantGPSDataSource::currentGPSTime(v7, &v85);
  v83 = 0u;
  v84 = 0u;
  v82 = 0;
  __p[0] = &v86;
  __p[1] = "outages";
  sub_100006354(__p, &v82);
  if (xpc_get_type(v82) == &_xpc_type_null)
  {
    goto LABEL_145;
  }

  if (xpc_get_type(v82) != &_xpc_type_array)
  {
    sub_10000501C(__p, "service-outages: outages - invalid format, array expected");
    object = 0;
    v8 = *(v1 + 40);
    if (!v8)
    {
      sub_100022DB4();
    }

    (*(*v8 + 48))(v8, __p, &object);
    if (SBYTE7(v75) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = 1;
    goto LABEL_146;
  }

  v12 = v82;
  if (v82)
  {
    xpc_retain(v82);
  }

  else
  {
    v12 = xpc_null_create();
  }

  v13 = xpc_null_create();
  if (v12 && xpc_get_type(v12) == &_xpc_type_array)
  {
    xpc_retain(v12);
    v14 = v12;
  }

  else
  {
    v14 = xpc_null_create();
  }

  if (xpc_get_type(v14) != &_xpc_type_array)
  {
    if (v13)
    {
      xpc_retain(v13);
      v15 = v13;
    }

    else
    {
      v15 = xpc_null_create();
    }

    xpc_release(v14);
    v14 = v15;
  }

  xpc_release(v13);
  xpc_release(v12);
  __p[0] = v14;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  sub_100008EA4(&object, __p, 0);
  xpc_release(__p[0]);
  __p[0] = v14;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  v67 = v14;
  if (xpc_get_type(v14) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v14);
  }

  else
  {
    count = 0;
  }

  sub_100008EA4(&v78, __p, count);
  xpc_release(__p[0]);
  v17 = object;
  v18 = index;
  v68 = v2;
  if (index == v79 && object == v78)
  {
    v19 = 0;
    v9 = 0;
    goto LABEL_144;
  }

  do
  {
    value = xpc_array_get_value(v17, v18);
    if (xpc_get_type(value) != &_xpc_type_dictionary)
    {
      sub_10000501C(__p, "service-outages: outage - invalid format, dict expected");
      v87[0] = 0;
      v63 = *(v1 + 40);
      if (!v63)
      {
        sub_100022DB4();
      }

      (*(*v63 + 48))(v63, __p, v87);
      if (SBYTE7(v75) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_140;
    }

    v77 = 0;
    v20 = xpc_array_get_value(object, v18);
    v21 = v20;
    if (v20)
    {
      xpc_retain(v20);
    }

    else
    {
      v21 = xpc_null_create();
    }

    v22 = xpc_null_create();
    v77 = v21;
    if (v21 && xpc_get_type(v21) == &_xpc_type_dictionary)
    {
      xpc_retain(v21);
      v23 = v77;
    }

    else
    {
      v23 = xpc_null_create();
      v77 = v23;
    }

    if (xpc_get_type(v23) != &_xpc_type_dictionary)
    {
      if (v22)
      {
        xpc_retain(v22);
        v24 = v22;
      }

      else
      {
        v24 = xpc_null_create();
      }

      v25 = v77;
      v77 = v24;
      xpc_release(v25);
    }

    xpc_release(v22);
    xpc_release(v21);
    v76 = 0;
    __p[0] = &v77;
    __p[1] = "fmid";
    sub_100006354(__p, &v76);
    if (xpc_get_type(v76) == &_xpc_type_null)
    {
      sub_10000501C(__p, "service-outage: fmid is missing");
      v87[0] = 0;
      v26 = *(v1 + 40);
      if (!v26)
      {
        sub_100022DB4();
      }
    }

    else
    {
      if (xpc_get_type(v76) == &_xpc_type_int64)
      {
        __p[0] = v76;
        if (v76)
        {
          xpc_retain(v76);
        }

        else
        {
          __p[0] = xpc_null_create();
        }

        v30 = xpc::dyn_cast_or_default(__p, 0, v29);
        xpc_release(__p[0]);
        v28 = v30 != 0;
        v27 = 1;
        goto LABEL_74;
      }

      sub_10000501C(__p, "service-outage: fmid - invalid format, integer expected");
      v87[0] = 0;
      v26 = *(v1 + 40);
      if (!v26)
      {
        sub_100022DB4();
      }
    }

    (*(*v26 + 48))(v26, __p, v87);
    if (SBYTE7(v75) < 0)
    {
      operator delete(__p[0]);
    }

    v27 = 0;
    v28 = 0;
LABEL_74:
    xpc_release(v76);
    if (!v27)
    {
      goto LABEL_139;
    }

    v76 = 0;
    __p[0] = &v77;
    __p[1] = "startInSec";
    sub_100006354(__p, &v76);
    v31 = 0x44B82FA09B5A53;
    if (xpc_get_type(v76) == &_xpc_type_null)
    {
      sub_10000501C(__p, "service-outage: startIn is missing");
      v87[0] = 0;
      v32 = *(v1 + 40);
      if (!v32)
      {
        sub_100022DB4();
      }
    }

    else
    {
      if (xpc_get_type(v76) == &_xpc_type_int64)
      {
        v35 = v85;
        __p[0] = v76;
        if (v76)
        {
          xpc_retain(v76);
        }

        else
        {
          __p[0] = xpc_null_create();
        }

        v37 = xpc::dyn_cast_or_default(__p, 0, v36);
        xpc_release(__p[0]);
        v34 = (v37 + v35 / 0x3B9ACA00);
        v33 = 1;
        goto LABEL_87;
      }

      sub_10000501C(__p, "service-outage: start - invalid format, integer expected");
      v87[0] = 0;
      v32 = *(v1 + 40);
      if (!v32)
      {
        sub_100022DB4();
      }
    }

    (*(*v32 + 48))(v32, __p, v87);
    if (SBYTE7(v75) < 0)
    {
      operator delete(__p[0]);
    }

    v33 = 0;
    v34 = 0;
LABEL_87:
    xpc_release(v76);
    if (!v33)
    {
LABEL_139:
      xpc_release(v77);
LABEL_140:
      v19 = 1;
      v9 = 1;
      goto LABEL_144;
    }

    v76 = 0;
    __p[0] = &v77;
    __p[1] = "durationSec";
    sub_100006354(__p, &v76);
    if (xpc_get_type(v76) == &_xpc_type_null)
    {
      sub_10000501C(__p, "service-outage: duration is missing");
      v87[0] = 0;
      v38 = *(v1 + 40);
      if (!v38)
      {
        sub_100022DB4();
      }
    }

    else
    {
      if (xpc_get_type(v76) == &_xpc_type_int64)
      {
        __p[0] = v76;
        if (v76)
        {
          xpc_retain(v76);
        }

        else
        {
          __p[0] = xpc_null_create();
        }

        v71 = xpc::dyn_cast_or_default(__p, 0, v40);
        xpc_release(__p[0]);
        v39 = 1;
        goto LABEL_100;
      }

      sub_10000501C(__p, "service-outage: duration - invalid format, integer expected");
      v87[0] = 0;
      v38 = *(v1 + 40);
      if (!v38)
      {
        sub_100022DB4();
      }
    }

    (*(*v38 + 48))(v38, __p, v87);
    if (SBYTE7(v75) < 0)
    {
      operator delete(__p[0]);
    }

    v39 = 0;
    v71 = 0;
LABEL_100:
    xpc_release(v76);
    v69 = v39;
    v66 = v39 ^ 1;
    if (((v39 ^ 1 | v28) & 1) == 0)
    {
      v41 = v68[27];
      if (*(v41 + 184) == 1)
      {
        LOBYTE(__p[0]) = *(v41 + 152);
        __p[1] = v34;
        *&v75 = v71;
        v42 = v84;
        if (v84 >= *(&v84 + 1))
        {
          v43 = sub_1013636F0(&v83 + 8, __p);
        }

        else
        {
          *v84 = *__p;
          *(v42 + 16) = v75;
          v43 = v42 + 24;
        }

        *&v84 = v43;
        v41 = v68[27];
      }

      if (*(v41 + 304) == 1)
      {
        v44 = *(v41 + 280);
        v45 = *(v41 + 288);
        if (v44 != v45)
        {
          v46 = &v34[v71];
          v47 = v44 + 40;
          v70 = v34;
          do
          {
            v48 = (((*(v47 - 40) >> 9) * v31) >> 64) >> 11;
            if (v34 <= v48 && v48 <= v46)
            {
              v50 = v31;
              v51 = *(v47 - 32);
              v52 = v84;
              if (v84 >= *(&v84 + 1))
              {
                v54 = *(&v83 + 1);
                v55 = v84 - *(&v83 + 1);
                v56 = 0xAAAAAAAAAAAAAAABLL * ((v84 - *(&v83 + 1)) >> 3);
                v57 = v56 + 1;
                if (v56 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_1000CE3D4();
                }

                if (0x5555555555555556 * ((*(&v84 + 1) - *(&v83 + 1)) >> 3) > v57)
                {
                  v57 = 0x5555555555555556 * ((*(&v84 + 1) - *(&v83 + 1)) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((*(&v84 + 1) - *(&v83 + 1)) >> 3) >= 0x555555555555555)
                {
                  v58 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v58 = v57;
                }

                if (v58)
                {
                  sub_1013637D4(v58);
                }

                v59 = 8 * ((v84 - *(&v83 + 1)) >> 3);
                *v59 = v51;
                *(v59 + 8) = v70;
                *(v59 + 16) = v71;
                v53 = 24 * v56 + 24;
                v60 = v59 - v55;
                memcpy((v59 - v55), v54, v55);
                *(&v83 + 1) = v60;
                v84 = v53;
                if (v54)
                {
                  operator delete(v54);
                }

                v34 = v70;
              }

              else
              {
                *v84 = v51;
                v53 = v52 + 24;
                *(v52 + 8) = v34;
                *(v52 + 16) = v71;
              }

              *&v84 = v53;
              v31 = v50;
              v48 = (((*(v47 - 40) >> 9) * v50) >> 64) >> 11;
            }

            v61 = v48 >= v46 || v47 == v45;
            v47 += 40;
          }

          while (!v61);
        }
      }
    }

    xpc_release(v77);
    v14 = v67;
    if (!v69)
    {
      v9 = 1;
      v2 = v68;
      goto LABEL_143;
    }

    v17 = object;
    v18 = index + 1;
    index = v18;
    v2 = v68;
  }

  while (v18 != v79 || object != v78);
  v9 = 0;
LABEL_143:
  v19 = v66;
LABEL_144:
  xpc_release(v78);
  xpc_release(object);
  xpc_release(v14);
  if ((v19 & 1) == 0)
  {
LABEL_145:
    v9 = 0;
  }

LABEL_146:
  xpc_release(v82);
  v11 = *(&v83 + 1);
  if (v9)
  {
    if (*(&v83 + 1))
    {
LABEL_148:
      operator delete(v11);
    }

    goto LABEL_149;
  }

  LODWORD(__p[0]) = v83;
  __p[1] = *(&v83 + 1);
  v75 = v84;
  (*(*v2 + 144))(v2, __p);
  if (__p[1])
  {
    *&v75 = __p[1];
    operator delete(__p[1]);
  }

LABEL_14:
  v6 = 1;
LABEL_150:
  xpc_release(v86);
  if (v6)
  {
    sub_10000501C(&v83, "");
    object = 0;
    v64 = *(v1 + 40);
    if (!v64)
    {
      sub_100022DB4();
    }

    (*(*v64 + 48))(v64, &v83, &object);
    if (SBYTE7(v84) < 0)
    {
      operator delete(v83);
    }
  }

  sub_101363690(&v73);
  return sub_1000049E0(&v72);
}

void sub_1013632D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, xpc_object_t a27, xpc_object_t a28, xpc_object_t object, uint64_t a30, xpc_object_t a31, uint64_t a32, xpc_object_t a33)
{
  xpc_release(object);
  xpc_release(a31);
  xpc_release(a11);
  xpc_release(a33);
  v33 = *(v31 - 136);
  if (v33)
  {
    operator delete(v33);
  }

  xpc_release(*(v31 - 104));
  sub_101363690(&a17);
  sub_1000049E0(&a16);
  _Unwind_Resume(a1);
}

uint64_t *sub_101363690(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100DD80C0(v1 + 16);
    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    operator delete();
  }

  return a1;
}

uint64_t sub_1013636F0(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    sub_1013637D4(v5);
  }

  v6 = 24 * v2;
  v7 = *a2;
  *(v6 + 16) = *(a2 + 2);
  *v6 = v7;
  v8 = 24 * v2 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = 24 * v2 - v9;
  memcpy((v6 - v9), *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v8;
}

void sub_1013637D4(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013D10();
}

void *sub_10136382C(void *a1, void *a2)
{
  *a1 = off_101F5BE88;
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "trvl.model");
  ctu::OsLogLogger::OsLogLogger(v7, &v6);
  ctu::OsLogLogger::OsLogLogger((a1 + 1), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  ctu::OsLogContext::~OsLogContext(&v6);
  *a1 = off_101F31B70;
  v4 = a2[1];
  a1[2] = *a2;
  a1[3] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1013638F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

void *sub_101363914(void *a1)
{
  *a1 = off_101F31B70;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  return a1;
}

void sub_10136396C(void *a1)
{
  sub_101363914(a1);

  operator delete();
}

void sub_1013639A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (!v12)
  {
LABEL_7:
    v14 = *(a1 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not get preferences", buf, 2u);
    }

    *a2 = 0;
    *(a2 + 24) = 0;
    if (v13)
    {
      return;
    }

LABEL_19:
    sub_100004A34(v11);
    return;
  }

LABEL_13:
  *type = 0;
  (*(*v12 + 40))(buf, v12, @"APMCountryCacheKey", @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100060DE8(type, buf);
  sub_10000A1EC(buf);
  if (*type)
  {
    *buf = 0;
    v21 = 0uLL;
    ctu::cf::assign();
    v15 = v21;
    v16 = *(&v21 + 7);
    *a2 = *buf;
    *(a2 + 8) = v15;
    *(a2 + 15) = v16;
    *(a2 + 23) = HIBYTE(v21);
    v17 = 1;
  }

  else
  {
    v18 = *(a1 + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I no apm country cached", buf, 2u);
    }

    v17 = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v17;
  sub_100005978(type);
  if ((v13 & 1) == 0)
  {
    goto LABEL_19;
  }
}

void sub_101363BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a10);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(a1);
}

void sub_101363C1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v10)
  {
    v11 = v10[3];
    v12 = v10[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v13 = 0;
      if (!v11)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v5);
  v12 = 0;
  v13 = 1;
  if (!v11)
  {
LABEL_7:
    v14 = *(a1 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not get preferences", buf, 2u);
    }

    *a2 = 0;
    *(a2 + 368) = 0;
    if (v13)
    {
      return;
    }

LABEL_82:
    sub_100004A34(v12);
    return;
  }

LABEL_13:
  v108 = 0;
  (*(*v11 + 40))(buf, v11, @"CurrentTripID", @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100060DE8(&v108, buf);
  sub_10000A1EC(buf);
  if (v108)
  {
    memset(buf, 0, 24);
    ctu::cf::assign();
    v106 = *buf;
    v107 = *&buf[16];
    v105 = 0;
    v103 = 0;
    v104 = 0u;
    v99[0] = 0;
    v99[1] = 0;
    memset(v97, 0, sizeof(v97));
    v98 = v99;
    *v100 = 0u;
    v101 = 0u;
    *__p_8 = 0u;
    cf = 0;
    (*(*v11 + 40))(buf, v11, @"FlightInfo", @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_100010180(&cf, buf);
    sub_10000A1EC(buf);
    if (cf)
    {
      theDict = cf;
      CFRetain(cf);
      v80 = 0u;
      memset(v81, 0, sizeof(v81));
      memset(v79, 0, sizeof(v79));
      v78 = 0u;
      v76 = 0u;
      memset(v77, 0, sizeof(v77));
      memset(buf, 0, sizeof(buf));
      v74 = v12;
      Value = CFDictionaryGetValue(theDict, @"MegadomeIdentifier");
      if (Value)
      {
        v16 = CFGetTypeID(Value);
        if (v16 == CFStringGetTypeID())
        {
          memset(v111, 0, 24);
          ctu::cf::assign();
          *buf = v111[0];
          *&buf[15] = *(v111 + 15);
          buf[23] = BYTE7(v111[1]);
        }
      }

      v17 = CFDictionaryGetValue(theDict, @"DepartureCountryCode");
      if (v17)
      {
        v18 = CFGetTypeID(v17);
        if (v18 == CFStringGetTypeID())
        {
          memset(v111, 0, 24);
          ctu::cf::assign();
          *(v77 + 8) = v111[0];
          *(&v77[1] + 7) = *(v111 + 15);
          HIBYTE(v77[1]) = BYTE7(v111[1]);
        }
      }

      v19 = CFDictionaryGetValue(theDict, @"ArrivalCountryCode");
      if (v19)
      {
        v20 = CFGetTypeID(v19);
        if (v20 == CFStringGetTypeID())
        {
          memset(v111, 0, 24);
          ctu::cf::assign();
          *(v79 + 8) = v111[0];
          *(&v79[1] + 7) = *(v111 + 15);
          HIBYTE(v79[1]) = BYTE7(v111[1]);
        }
      }

      v21 = CFDictionaryGetValue(theDict, @"ExtractionSource");
      if (v21)
      {
        v22 = CFGetTypeID(v21);
        if (v22 == CFStringGetTypeID())
        {
          memset(v111, 0, 24);
          ctu::cf::assign();
          *(&v81[3] + 8) = v111[0];
          *(&v81[4] + 7) = *(v111 + 15);
          HIBYTE(v81[4]) = BYTE7(v111[1]);
        }
      }

      v23 = CFDictionaryGetValue(theDict, @"DepartureTime");
      v24 = v23;
      if (v23)
      {
        v25 = CFGetTypeID(v23);
        if (v25 == CFNumberGetTypeID())
        {
          *&v111[0] = 0;
          ctu::cf::assign(v111, v24, v26);
          *&v81[0] = *&v111[0];
        }
      }

      v27 = CFDictionaryGetValue(theDict, @"ArrivalTime");
      v28 = v27;
      if (v27)
      {
        v29 = CFGetTypeID(v27);
        if (v29 == CFNumberGetTypeID())
        {
          *&v111[0] = 0;
          ctu::cf::assign(v111, v28, v30);
          *(&v81[1] + 1) = *&v111[0];
        }
      }

      v31 = CFDictionaryGetValue(theDict, @"PassengerNames");
      v32 = v31;
      if (v31)
      {
        v33 = CFGetTypeID(v31);
        if (v33 == CFArrayGetTypeID())
        {
          Count = CFArrayGetCount(v32);
          if (Count >= 1)
          {
            for (i = 0; i != Count; ++i)
            {
              v109 = 0uLL;
              v110 = 0;
              CFArrayGetValueAtIndex(v32, i);
              memset(v111, 0, 24);
              ctu::cf::assign();
              v109 = v111[0];
              v110 = *&v111[1];
              v36 = *(&v81[2] + 1);
              if (*(&v81[2] + 1) >= *&v81[3])
              {
                v38 = sub_10016B30C(&v81[2], &v109);
              }

              else
              {
                if (SHIBYTE(v110) < 0)
                {
                  sub_100005F2C(*(&v81[2] + 1), v109, *(&v109 + 1));
                }

                else
                {
                  v37 = v109;
                  *(*(&v81[2] + 1) + 16) = v110;
                  *v36 = v37;
                }

                v38 = v36 + 24;
              }

              *(&v81[2] + 1) = v38;
              if (SHIBYTE(v110) < 0)
              {
                operator delete(v109);
              }
            }
          }
        }
      }

      sub_1013647E8(v97, buf);
      sub_100FF11AC(buf);
      sub_10001021C(&theDict);
      *&v111[0] = 0;
      (*(*v11 + 40))(buf, v11, @"NotificationInfo", @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      v12 = v74;
      v39 = v13;
      sub_100010180(v111, buf);
      sub_10000A1EC(buf);
      if (*&v111[0])
      {
        v94 = *&v111[0];
        CFRetain(*&v111[0]);
        v40 = CFDictionaryGetValue(v94, @"DidShowPreDeparture");
        v41 = v40;
        if (v40 && (v42 = CFGetTypeID(v40), v42 == CFBooleanGetTypeID()))
        {
          buf[0] = 0;
          ctu::cf::assign(buf, v41, v43);
          v44 = buf[0];
        }

        else
        {
          v44 = 0;
        }

        v47 = CFDictionaryGetValue(v94, @"DidShowPostArrival");
        v48 = v47;
        if (v47 && (v49 = CFGetTypeID(v47), v49 == CFBooleanGetTypeID()))
        {
          buf[0] = 0;
          ctu::cf::assign(buf, v48, v50);
          v51 = buf[0];
        }

        else
        {
          v51 = 0;
        }

        v52 = CFDictionaryGetValue(v94, @"TimeShownPreDeparture");
        v53 = v52;
        v54 = 0;
        if (v52 && (v55 = CFGetTypeID(v52), v55 == CFNumberGetTypeID()))
        {
          *buf = 0;
          ctu::cf::assign(buf, v53, v56);
          v54 = *buf;
          v57 = 1;
        }

        else
        {
          v57 = 0;
        }

        LOBYTE(v104) = v44;
        BYTE1(v104) = v51;
        *(&v104 + 2) = 0;
        WORD3(v104) = 0;
        *(&v104 + 1) = v54;
        LOBYTE(v105) = v57;
        *(&v105 + 1) = 0;
        HIDWORD(v105) = 0;
        sub_10001021C(&v94);
        sub_1013689F0(buf, &v106, v97);
        *a2 = *buf;
        *(a2 + 16) = *&buf[16];
        memset(buf, 0, 32);
        *(a2 + 24) = *&buf[24];
        *(a2 + 40) = *&buf[40];
        *&buf[32] = 0uLL;
        *(a2 + 64) = *&v77[0];
        *(a2 + 48) = v76;
        v76 = 0uLL;
        v58 = *(v77 + 8);
        *(a2 + 88) = *(&v77[1] + 1);
        *(a2 + 72) = v58;
        memset(v77, 0, sizeof(v77));
        v59 = v78;
        *(a2 + 112) = *&v79[0];
        *(a2 + 96) = v59;
        v78 = 0uLL;
        v60 = *(v79 + 8);
        *(a2 + 136) = *(&v79[1] + 1);
        *(a2 + 120) = v60;
        memset(v79, 0, sizeof(v79));
        v61 = v80;
        v62 = *(&v81[4] + 1);
        *(a2 + 160) = *&v81[0];
        *(a2 + 144) = v61;
        v80 = 0uLL;
        v63 = *(v81 + 8);
        v64 = *(&v81[1] + 8);
        *(a2 + 200) = *(&v81[2] + 8);
        *(a2 + 184) = v64;
        *(a2 + 168) = v63;
        *(a2 + 216) = *(&v81[3] + 8);
        *(a2 + 232) = v62;
        *&v81[0] = 0;
        *(&v81[3] + 1) = 0;
        *&v81[4] = 0;
        *(a2 + 240) = v82;
        *(&v81[4] + 1) = 0;
        v82 = 0uLL;
        v65 = v83;
        v66 = v84;
        v83 = 0;
        *(a2 + 256) = v65;
        *(a2 + 264) = v66;
        v67 = a2 + 272;
        v68 = v85;
        v69 = v86;
        *(a2 + 272) = v85;
        *(a2 + 280) = v69;
        if (v69)
        {
          *(v68 + 16) = v67;
          v84 = &v85;
          v85 = 0;
          v86 = 0;
          v68 = 0;
        }

        else
        {
          *(a2 + 264) = v67;
        }

        *(a2 + 288) = v87;
        v71 = v90;
        *(a2 + 304) = v88;
        v87 = 0uLL;
        v72 = v89;
        v88 = 0;
        *&v89 = 0;
        *(a2 + 328) = v71;
        *(a2 + 312) = v72;
        *(&v89 + 1) = 0;
        v90 = 0;
        *(a2 + 336) = v91;
        v73 = v92;
        *(a2 + 360) = v93;
        *(a2 + 344) = v73;
        *(a2 + 368) = 1;
        sub_100009970(&v84, v68);
        sub_100FF11AC(&buf[24]);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        v70 = *(a1 + 8);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "no notif info", buf, 2u);
        }

        *a2 = 0;
        *(a2 + 368) = 0;
      }

      sub_10001021C(v111);
    }

    else
    {
      v46 = *(a1 + 8);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "no flight info", buf, 2u);
      }

      *a2 = 0;
      *(a2 + 368) = 0;
      v39 = v13;
    }

    sub_10001021C(&cf);
    if (SHIBYTE(__p_8[1]) < 0)
    {
      operator delete(*(&v101 + 1));
    }

    if (SBYTE7(v101) < 0)
    {
      operator delete(v100[0]);
    }

    sub_100009970(&v98, v99[0]);
    sub_100FF11AC(v97);
    if (SHIBYTE(v107) < 0)
    {
      operator delete(v106);
    }

    sub_100005978(&v108);
    if ((v39 & 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v45 = *(a1 + 8);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I no trip id", buf, 2u);
    }

    *a2 = 0;
    *(a2 + 368) = 0;
    sub_100005978(&v108);
    if ((v13 & 1) == 0)
    {
      goto LABEL_82;
    }
  }
}

void sub_101364694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, const void *a60, const void *a61, char a62)
{
  sub_100FF11AC(&a12);
  sub_10001021C(&a60);
  sub_10001021C(&a61);
  sub_100FF1258(&a62);
  if (*(v62 - 169) < 0)
  {
    operator delete(*(v62 - 192));
  }

  sub_100005978((v62 - 168));
  if ((a11 & 1) == 0)
  {
    sub_100004A34(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1013647E8(uint64_t a1, __int128 *a2)
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
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v9;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  v10 = a2[9];
  v11 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v11;
  *(a1 + 144) = v10;
  sub_100071A6C(a1 + 192);
  *(a1 + 192) = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a2 + 24) = 0;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  v12 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 216) = v12;
  *(a2 + 239) = 0;
  *(a2 + 216) = 0;
  return a1;
}

void sub_101364958(uint64_t a1@<X0>, char *a2@<X1>, void **a3@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v7 = ServiceMap;
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  *__p = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, __p);
  if (v12)
  {
    v13 = v12[3];
    v14 = v12[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v15 = 0;
      if (!v13)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v7);
  v14 = 0;
  v15 = 1;
  if (!v13)
  {
LABEL_7:
    v16 = *(a1 + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not get preferences", __p, 2u);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (v15)
    {
      return;
    }

LABEL_110:
    sub_100004A34(v14);
    return;
  }

LABEL_13:
  v74 = 0;
  (*(*v13 + 40))(__p, v13, @"CountryDefaultSettingsKey", @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100010180(&v74, __p);
  sub_10000A1EC(__p);
  if (v74)
  {
    v73 = 0;
    v70 = v14;
    if (a2[23] < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 1));
    }

    else
    {
      *__dst = *a2;
      v72 = *(a2 + 2);
    }

    if (SHIBYTE(v72) < 0)
    {
      sub_100005F2C(v77, __dst[0], __dst[1]);
    }

    else
    {
      *v77 = *__dst;
      v77[2] = v72;
    }

    v75 = 0;
    if (SHIBYTE(v77[2]) < 0)
    {
      sub_100005F2C(__p, v77[0], v77[1]);
    }

    else
    {
      *__p = *v77;
      *&__p[16] = v77[2];
    }

    v76 = 0;
    if (ctu::cf::convert_copy())
    {
      v18 = v75;
      v75 = v76;
      v80[0] = v18;
      sub_100005978(v80);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v73 = v75;
    v75 = 0;
    sub_100005978(&v75);
    if (SHIBYTE(v77[2]) < 0)
    {
      operator delete(v77[0]);
    }

    if (SHIBYTE(v72) < 0)
    {
      operator delete(__dst[0]);
    }

    Value = CFDictionaryGetValue(v74, v73);
    v20 = Value;
    if (Value && (v21 = CFGetTypeID(Value), v21 == CFArrayGetTypeID()))
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      Count = CFArrayGetCount(v20);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v83 = 0;
          memset(&__p[8], 0, 64);
          *__p = &__p[8];
          ValueAtIndex = CFArrayGetValueAtIndex(v20, i);
          v25 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v26 = CFGetTypeID(ValueAtIndex);
            if (v26 == CFDictionaryGetTypeID())
            {
              v27 = v25;
            }

            else
            {
              v27 = 0;
            }
          }

          else
          {
            v27 = 0;
          }

          v28 = CFDictionaryGetValue(v27, @"LatestUpdate");
          v29 = v28;
          v77[0] = 0;
          if (v28)
          {
            v30 = CFGetTypeID(v28);
            if (v30 == CFNumberGetTypeID())
            {
              ctu::cf::assign(v77, v29, v31);
            }

            if (*v77 != 0.0)
            {
              v83 = v77[0];
            }
          }

          v32 = CFDictionaryGetValue(v27, @"DefaultDataIccid");
          if (v32)
          {
            v33 = CFGetTypeID(v32);
            if (v33 == CFStringGetTypeID())
            {
              memset(v77, 0, sizeof(v77));
              ctu::cf::assign();
              v34 = v77[0];
              v80[0] = v77[1];
              *(v80 + 7) = *(&v77[1] + 7);
              v35 = HIBYTE(v77[2]);
              if ((__p[71] & 0x80000000) != 0)
              {
                operator delete(*&__p[48]);
              }

              *&__p[48] = v34;
              *&__p[56] = v80[0];
              *&__p[63] = *(v80 + 7);
              __p[71] = v35;
            }
          }

          v36 = CFDictionaryGetValue(v27, @"DefaultVoiceIccid");
          if (v36)
          {
            v37 = CFGetTypeID(v36);
            if (v37 == CFStringGetTypeID())
            {
              memset(v77, 0, sizeof(v77));
              ctu::cf::assign();
              v38 = v77[0];
              v80[0] = v77[1];
              *(v80 + 7) = *(&v77[1] + 7);
              v39 = HIBYTE(v77[2]);
              if ((__p[47] & 0x80000000) != 0)
              {
                operator delete(*&__p[24]);
              }

              *&__p[24] = v38;
              *&__p[32] = v80[0];
              *&__p[39] = *(v80 + 7);
              __p[47] = v39;
            }
          }

          v40 = CFDictionaryGetValue(v27, @"EnabledIccids");
          v41 = v40;
          if (v40)
          {
            v42 = CFGetTypeID(v40);
            if (v42 == CFArrayGetTypeID())
            {
              v43 = CFArrayGetCount(v41);
              if (v43 >= 1)
              {
                for (j = 0; j != v43; ++j)
                {
                  v80[0] = 0;
                  v80[1] = 0;
                  v81 = 0;
                  CFArrayGetValueAtIndex(v41, j);
                  memset(v77, 0, sizeof(v77));
                  ctu::cf::assign();
                  *v80 = *v77;
                  v81 = v77[2];
                  sub_100073EE8(__p, v80, v80);
                  if (SHIBYTE(v81) < 0)
                  {
                    operator delete(v80[0]);
                  }
                }
              }
            }
          }

          v46 = a3[1];
          v45 = a3[2];
          if (v46 >= v45)
          {
            v48 = 0xCCCCCCCCCCCCCCCDLL * ((v46 - *a3) >> 4);
            v49 = v48 + 1;
            if (v48 + 1 > 0x333333333333333)
            {
              sub_1000CE3D4();
            }

            v50 = 0xCCCCCCCCCCCCCCCDLL * ((v45 - *a3) >> 4);
            if (2 * v50 > v49)
            {
              v49 = 2 * v50;
            }

            if (v50 >= 0x199999999999999)
            {
              v51 = 0x333333333333333;
            }

            else
            {
              v51 = v49;
            }

            v79 = a3;
            if (v51)
            {
              if (v51 <= 0x333333333333333)
              {
                operator new();
              }

              sub_100013D10();
            }

            v53 = 80 * v48;
            v77[0] = 0;
            v77[1] = (80 * v48);
            v77[2] = (80 * v48);
            v78 = 0;
            sub_100074920((80 * v48), __p);
            if ((__p[47] & 0x80000000) != 0)
            {
              sub_100005F2C((v53 + 24), *&__p[24], *&__p[32]);
            }

            else
            {
              *(80 * v48 + 0x18) = *&__p[24];
              *(80 * v48 + 0x28) = *&__p[40];
            }

            if ((__p[71] & 0x80000000) != 0)
            {
              sub_100005F2C((v53 + 48), *&__p[48], *&__p[56]);
            }

            else
            {
              *(80 * v48 + 0x30) = *&__p[48];
              *(80 * v48 + 0x40) = *&__p[64];
            }

            *(80 * v48 + 0x48) = v83;
            v54 = v77[2] + 80;
            v77[2] = v77[2] + 80;
            v56 = *a3;
            v55 = a3[1];
            v57 = v77[1] + *a3 - v55;
            if (*a3 != v55)
            {
              v58 = 0;
              do
              {
                v59 = &v57[v58];
                *v59 = *&v56[v58];
                v60 = &v56[v58 + 8];
                v61 = *v60;
                *&v57[v58 + 8] = *v60;
                v62 = &v57[v58 + 8];
                v63 = *&v56[v58 + 16];
                v59[2] = v63;
                if (v63)
                {
                  *(v61 + 16) = v62;
                  *&v56[v58] = v60;
                  *v60 = 0;
                  *&v56[v58 + 16] = 0;
                }

                else
                {
                  *v59 = v62;
                }

                v64 = &v57[v58];
                v65 = &v56[v58];
                v66 = *&v56[v58 + 24];
                *(v64 + 5) = *&v56[v58 + 40];
                *(v64 + 24) = v66;
                *(v65 + 4) = 0;
                *(v65 + 5) = 0;
                *(v65 + 3) = 0;
                v67 = *&v56[v58 + 48];
                *(v64 + 8) = *&v56[v58 + 64];
                *(v64 + 3) = v67;
                *(v65 + 7) = 0;
                *(v65 + 8) = 0;
                *(v65 + 6) = 0;
                *(v64 + 9) = *&v56[v58 + 72];
                v58 += 80;
              }

              while (&v56[v58] != v55);
              do
              {
                sub_101368B24(v56);
                v56 += 80;
              }

              while (v56 != v55);
              v56 = *a3;
              v54 = v77[2];
            }

            *a3 = v57;
            a3[1] = v54;
            v68 = a3[2];
            a3[2] = v78;
            v77[2] = v56;
            v78 = v68;
            v77[0] = v56;
            v77[1] = v56;
            sub_101368B7C(v77);
          }

          else
          {
            sub_100074920(a3[1], __p);
            if ((__p[47] & 0x80000000) != 0)
            {
              sub_100005F2C(v46 + 24, *&__p[24], *&__p[32]);
            }

            else
            {
              v47 = *&__p[24];
              *(v46 + 5) = *&__p[40];
              *(v46 + 24) = v47;
            }

            if ((__p[71] & 0x80000000) != 0)
            {
              sub_100005F2C(v46 + 48, *&__p[48], *&__p[56]);
            }

            else
            {
              v52 = *&__p[48];
              *(v46 + 8) = *&__p[64];
              *(v46 + 3) = v52;
            }

            *(v46 + 9) = v83;
            v54 = v46 + 80;
          }

          a3[1] = v54;
          if ((__p[71] & 0x80000000) != 0)
          {
            operator delete(*&__p[48]);
          }

          if ((__p[47] & 0x80000000) != 0)
          {
            operator delete(*&__p[24]);
          }

          sub_100009970(__p, *&__p[8]);
        }
      }
    }

    else
    {
      v69 = *(a1 + 8);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        if (a2[23] < 0)
        {
          a2 = *a2;
        }

        *__p = 136315138;
        *&__p[4] = a2;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#I no journal found for country [%s]", __p, 0xCu);
      }

      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    sub_100005978(&v73);
    sub_10001021C(&v74);
    v14 = v70;
    if ((v15 & 1) == 0)
    {
      goto LABEL_110;
    }
  }

  else
  {
    v17 = *(a1 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "no default settings info", __p, 2u);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    sub_10001021C(&v74);
    if ((v15 & 1) == 0)
    {
      goto LABEL_110;
    }
  }
}

void sub_10136527C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, int a10, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, const void *a19, const void *a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  sub_101368BCC(&a41);
  sub_100005978(&a19);
  sub_10001021C(&a20);
  if ((a11 & 1) == 0)
  {
    sub_100004A34(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101365424(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  sub_100009970(a1, *(a1 + 8));
  return a1;
}

void sub_101365474(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v7 = ServiceMap;
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  *__p = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, __p);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      if (!v14)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
  if (!v14)
  {
LABEL_7:
    v16 = *(a1 + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not get preferences", __p, 2u);
    }

    *a3 = 0;
    *(a3 + 80) = 0;
    if (v15)
    {
      return;
    }

LABEL_72:
    sub_100004A34(v13);
    return;
  }

LABEL_13:
  v50 = 0;
  (*(*v14 + 40))(__p, v14, @"CountryDefaultSettingsKey", @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100010180(&v50, __p);
  sub_10000A1EC(__p);
  if (v50)
  {
    v49 = 0;
    if (a2[23] < 0)
    {
      sub_100005F2C(v47, *a2, *(a2 + 1));
    }

    else
    {
      *v47 = *a2;
      v48 = *(a2 + 2);
    }

    if (SHIBYTE(v48) < 0)
    {
      sub_100005F2C(__dst, v47[0], v47[1]);
    }

    else
    {
      *__dst = *v47;
      __dst[2] = v48;
    }

    v51 = 0;
    if (SHIBYTE(__dst[2]) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      *&__p[16] = __dst[2];
    }

    v53 = 0;
    if (ctu::cf::convert_copy())
    {
      v18 = v51;
      v51 = v53;
      v54[0] = v18;
      sub_100005978(v54);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v49 = v51;
    v51 = 0;
    sub_100005978(&v51);
    if (SHIBYTE(__dst[2]) < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47[0]);
    }

    Value = CFDictionaryGetValue(v50, v49);
    v20 = Value;
    if (Value && (v21 = CFGetTypeID(Value), v21 == CFArrayGetTypeID()))
    {
      Count = CFArrayGetCount(v20);
      ValueAtIndex = CFArrayGetValueAtIndex(v20, Count - 1);
      v24 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v25 = CFGetTypeID(ValueAtIndex);
        if (v25 != CFDictionaryGetTypeID())
        {
          v24 = 0;
        }
      }

      v58 = 0;
      *&__p[8] = 0u;
      *__p = &__p[8];
      memset(v57, 0, sizeof(v57));
      v26 = CFDictionaryGetValue(v24, @"LatestUpdate");
      v27 = v26;
      __dst[0] = 0;
      if (v26)
      {
        v28 = CFGetTypeID(v26);
        if (v28 == CFNumberGetTypeID())
        {
          ctu::cf::assign(__dst, v27, v29);
        }

        if (*__dst != 0.0)
        {
          v58 = __dst[0];
        }
      }

      v30 = CFDictionaryGetValue(v24, @"DefaultDataIccid");
      if (v30)
      {
        v31 = CFGetTypeID(v30);
        if (v31 == CFStringGetTypeID())
        {
          memset(__dst, 0, sizeof(__dst));
          ctu::cf::assign();
          v32 = __dst[0];
          v54[0] = __dst[1];
          *(v54 + 7) = *(&__dst[1] + 7);
          v33 = HIBYTE(__dst[2]);
          if (SHIBYTE(v57[5]) < 0)
          {
            operator delete(v57[3]);
          }

          v57[3] = v32;
          v57[4] = v54[0];
          *(&v57[4] + 7) = *(v54 + 7);
          HIBYTE(v57[5]) = v33;
        }
      }

      v34 = CFDictionaryGetValue(v24, @"DefaultVoiceIccid");
      if (v34)
      {
        v35 = CFGetTypeID(v34);
        if (v35 == CFStringGetTypeID())
        {
          memset(__dst, 0, sizeof(__dst));
          ctu::cf::assign();
          v36 = __dst[0];
          v54[0] = __dst[1];
          *(v54 + 7) = *(&__dst[1] + 7);
          v37 = HIBYTE(__dst[2]);
          if (SHIBYTE(v57[2]) < 0)
          {
            operator delete(v57[0]);
          }

          v57[0] = v36;
          v57[1] = v54[0];
          *(&v57[1] + 7) = *(v54 + 7);
          HIBYTE(v57[2]) = v37;
        }
      }

      v38 = CFDictionaryGetValue(v24, @"EnabledIccids");
      v39 = v38;
      if (v38)
      {
        v40 = CFGetTypeID(v38);
        if (v40 == CFArrayGetTypeID())
        {
          v41 = CFArrayGetCount(v39);
          if (v41 >= 1)
          {
            for (i = 0; i != v41; ++i)
            {
              v54[0] = 0;
              v54[1] = 0;
              v55 = 0;
              CFArrayGetValueAtIndex(v39, i);
              memset(__dst, 0, sizeof(__dst));
              ctu::cf::assign();
              *v54 = *__dst;
              v55 = __dst[2];
              sub_100073EE8(__p, v54, v54);
              if (SHIBYTE(v55) < 0)
              {
                operator delete(v54[0]);
              }
            }
          }
        }
      }

      v43 = *&__p[8];
      *a3 = *__p;
      *(a3 + 8) = v43;
      v44 = a3 + 8;
      v45 = *&__p[16];
      *(a3 + 16) = *&__p[16];
      if (v45)
      {
        *(v43 + 16) = v44;
        *__p = &__p[8];
        *&__p[8] = 0;
        *&__p[16] = 0;
        v43 = 0;
      }

      else
      {
        *a3 = v44;
      }

      *(a3 + 24) = *v57;
      *(a3 + 40) = v57[2];
      memset(v57, 0, 24);
      *(a3 + 48) = *&v57[3];
      *(a3 + 64) = v57[5];
      memset(&v57[3], 0, 24);
      *(a3 + 72) = v58;
      *(a3 + 80) = 1;
      sub_100009970(__p, v43);
    }

    else
    {
      v46 = *(a1 + 8);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        if (a2[23] < 0)
        {
          a2 = *a2;
        }

        *__p = 136315138;
        *&__p[4] = a2;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I no journal found for country [%s]", __p, 0xCu);
      }

      *a3 = 0;
      *(a3 + 80) = 0;
    }

    sub_100005978(&v49);
  }

  else
  {
    v17 = *(a1 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "no default settings info", __p, 2u);
    }

    *a3 = 0;
    *(a3 + 80) = 0;
  }

  sub_10001021C(&v50);
  if ((v15 & 1) == 0)
  {
    goto LABEL_72;
  }
}

void sub_101365B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, const void *a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  sub_101365424(&a34);
  sub_100005978(&a15);
  sub_10001021C(&a16);
  if ((v40 & 1) == 0)
  {
    sub_100004A34(v39);
  }

  _Unwind_Resume(a1);
}

void sub_101365C08(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x101365C00);
}

void sub_101365C18(uint64_t a1, char *a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v7 = ServiceMap;
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  *buf = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, buf);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      if (!v14)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
  if (!v14)
  {
LABEL_7:
    v16 = *(a1 + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not get preferences", buf, 2u);
    }

    goto LABEL_92;
  }

LABEL_11:
  value = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v18 = value;
    value = Mutable;
    *buf = v18;
    sub_1000296E0(buf);
  }

  sub_1013691B0(value, @"LatestUpdate", kCFAllocatorDefault, *(a3 + 72));
  if (*(a3 + 71) < 0)
  {
    sub_100005F2C(buf, *(a3 + 48), *(a3 + 56));
  }

  else
  {
    *buf = *(a3 + 48);
    v59 = *(a3 + 64);
  }

  sub_1003C1788(value, @"DefaultDataIccid", buf, kCFAllocatorDefault);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(*buf);
  }

  if (*(a3 + 47) < 0)
  {
    sub_100005F2C(buf, *(a3 + 24), *(a3 + 32));
  }

  else
  {
    *buf = *(a3 + 24);
    v59 = *(a3 + 40);
  }

  sub_1003C1788(value, @"DefaultVoiceIccid", buf, kCFAllocatorDefault);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(*buf);
  }

  v51 = 0;
  v19 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (v19)
  {
    v20 = v51;
    v51 = v19;
    *buf = v20;
    sub_1000279DC(buf);
  }

  v23 = *a3;
  v21 = (a3 + 8);
  v22 = v23;
  if (v23 != v21)
  {
    do
    {
      theDict = 0;
      if (*(v22 + 55) < 0)
      {
        sub_100005F2C(__dst, v22[4], v22[5]);
      }

      else
      {
        *__dst = *(v22 + 2);
        v49 = v22[6];
      }

      if (SHIBYTE(v49) < 0)
      {
        sub_100005F2C(__p, __dst[0], __dst[1]);
      }

      else
      {
        *__p = *__dst;
        v55 = v49;
      }

      v53 = 0;
      if (SHIBYTE(v55) < 0)
      {
        sub_100005F2C(buf, __p[0], __p[1]);
      }

      else
      {
        *buf = *__p;
        v59 = v55;
      }

      v56 = 0;
      if (ctu::cf::convert_copy())
      {
        v24 = v53;
        v53 = v56;
        v57 = v24;
        sub_100005978(&v57);
      }

      if (SHIBYTE(v59) < 0)
      {
        operator delete(*buf);
      }

      theDict = v53;
      v53 = 0;
      sub_100005978(&v53);
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v49) < 0)
      {
        operator delete(__dst[0]);
      }

      CFArrayAppendValue(v51, theDict);
      sub_100005978(&theDict);
      v25 = v22[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v22[2];
          v27 = *v26 == v22;
          v22 = v26;
        }

        while (!v27);
      }

      v22 = v26;
    }

    while (v26 != v21);
  }

  sub_1002B24E0(value, @"EnabledIccids", v51);
  theDict = 0;
  (*(*v14 + 40))(buf, v14, @"CountryDefaultSettingsKey", @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100010180(&theDict, buf);
  sub_10000A1EC(buf);
  v47 = 0;
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  }

  else
  {
    v29 = *(a1 + 8);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "no default settings info, creating new one", buf, 2u);
    }

    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!MutableCopy)
    {
      goto LABEL_55;
    }
  }

  v30 = v47;
  v47 = MutableCopy;
  *buf = v30;
  sub_1000296E0(buf);
LABEL_55:
  v46 = 0;
  if (a2[23] < 0)
  {
    sub_100005F2C(v44, *a2, *(a2 + 1));
  }

  else
  {
    *v44 = *a2;
    v45 = *(a2 + 2);
  }

  if (SHIBYTE(v45) < 0)
  {
    sub_100005F2C(__p, v44[0], v44[1]);
  }

  else
  {
    *__p = *v44;
    v55 = v45;
  }

  v53 = 0;
  if (SHIBYTE(v55) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    v59 = v55;
  }

  v56 = 0;
  if (ctu::cf::convert_copy())
  {
    v31 = v53;
    v53 = v56;
    v57 = v31;
    sub_100005978(&v57);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(*buf);
  }

  v46 = v53;
  v53 = 0;
  sub_100005978(&v53);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[0]);
  }

  v32 = CFDictionaryGetValue(v47, v46);
  v33 = v32;
  if (v32)
  {
    v34 = CFGetTypeID(v32);
    if (v34 != CFArrayGetTypeID())
    {
      v33 = 0;
    }
  }

  v57 = 0;
  v35 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (v35)
  {
    v36 = v57;
    v57 = v35;
    *buf = v36;
    sub_1000279DC(buf);
  }

  if (v33)
  {
    Count = CFArrayGetCount(v33);
    v38 = Count > 9;
    if (Count > v38)
    {
      do
      {
        v39 = v57;
        ValueAtIndex = CFArrayGetValueAtIndex(v33, v38);
        CFArrayAppendValue(v39, ValueAtIndex);
        ++v38;
      }

      while (Count != v38);
    }

    CFArrayAppendValue(v57, value);
    v41 = v47;
    v42 = v57;
    *buf = v46;
    if (v46)
    {
      CFRetain(v46);
    }

    __p[0] = v42;
    if (v42)
    {
      CFRetain(v42);
      if (*buf)
      {
        CFDictionarySetValue(v41, *buf, v42);
      }
    }

    sub_100DA3324(__p);
    sub_100DA3324(buf);
    (*(*v14 + 16))(v14, @"CountryDefaultSettingsKey", v47, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    (*(*v14 + 48))(v14, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }

  else
  {
    v43 = *(a1 + 8);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      if (a2[23] < 0)
      {
        a2 = *a2;
      }

      *buf = 136315138;
      *&buf[4] = a2;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I Created new journal for country: [%s]", buf, 0xCu);
    }

    CFArrayAppendValue(v57, value);
    sub_1002B24E0(v47, v46, v57);
    (*(*v14 + 16))(v14, @"CountryDefaultSettingsKey", v47, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    (*(*v14 + 48))(v14, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }

  sub_1000279DC(&v57);
  sub_100005978(&v46);
  sub_1000296E0(&v47);
  sub_10001021C(&theDict);
  sub_1000279DC(&v51);
  sub_1000296E0(&value);
LABEL_92:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_1013664A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, const void *a25, const void *a26, const void *a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_100DA3324(&__p);
  sub_100DA3324((v38 - 128));
  sub_1000279DC((v38 - 136));
  sub_100005978(&a16);
  sub_1000296E0(&a17);
  sub_10001021C(&a25);
  sub_1000279DC(&a26);
  sub_1000296E0(&a27);
  if ((v37 & 1) == 0)
  {
    sub_100004A34(v36);
  }

  _Unwind_Resume(a1);
}

void sub_10136663C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      if (!v12)
      {
        goto LABEL_7;
      }

LABEL_13:
      theDict = 0;
      (*(*v12 + 40))(buf, v12, @"PostArrivalCacheKey", @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_100010180(&theDict, buf);
      sub_10000A1EC(buf);
      if (theDict)
      {
        memset(buf, 0, sizeof(buf));
        Value = CFDictionaryGetValue(theDict, @"CurrentCountry");
        if (Value)
        {
          v16 = CFGetTypeID(Value);
          if (v16 == CFStringGetTypeID())
          {
            memset(v33, 0, 24);
            ctu::cf::assign();
            v17 = *&v33[0];
            *&buf[32] = v33[0];
            *&buf[47] = *(v33 + 15);
            v18 = SBYTE7(v33[1]);
            buf[55] = BYTE7(v33[1]);
            v19 = CFDictionaryGetValue(theDict, @"PreviousCountry");
            if (v19 && (v20 = CFGetTypeID(v19), v20 == CFStringGetTypeID()))
            {
              memset(v33, 0, 24);
              ctu::cf::assign();
              *&buf[8] = v33[0];
              *&buf[23] = *(v33 + 15);
              v21 = SBYTE7(v33[1]);
              __p = *&v33[0];
              buf[31] = BYTE7(v33[1]);
              v22 = CFDictionaryGetValue(theDict, @"PostponedTimestamp");
              v23 = v22;
              *&v33[0] = 0;
              if (v22)
              {
                v24 = CFGetTypeID(v22);
                if (v24 == CFNumberGetTypeID())
                {
                  ctu::cf::assign(v33, v23, v25);
                  if (*v33 != 0.0)
                  {
                    *a2 = *&v33[0];
                    *(a2 + 8) = *&buf[8];
                    *(a2 + 24) = *&buf[24];
                    *(a2 + 32) = *&buf[32];
                    *(a2 + 48) = *&buf[48];
                    *(a2 + 56) = 1;
                    goto LABEL_25;
                  }
                }
              }

              v29 = *(a1 + 8);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v33[0]) = 0;
                _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Missing timestamp", v33, 2u);
              }

              *a2 = 0;
              *(a2 + 56) = 0;
              if (v18 < 0)
              {
                operator delete(v17);
              }

              if (v21 < 0)
              {
                v28 = __p;
                goto LABEL_38;
              }
            }

            else
            {
              v27 = *(a1 + 8);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v33[0]) = 0;
                _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Missing prev country", v33, 2u);
              }

              *a2 = 0;
              *(a2 + 56) = 0;
              if (v18 < 0)
              {
                v28 = v17;
LABEL_38:
                operator delete(v28);
              }
            }

LABEL_25:
            sub_10001021C(&theDict);
            if (v13)
            {
              return;
            }

            goto LABEL_26;
          }
        }

        v26 = *(a1 + 8);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v33[0]) = 0;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Missing current country", v33, 2u);
        }
      }

      *a2 = 0;
      *(a2 + 56) = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (v12)
  {
    goto LABEL_13;
  }

LABEL_7:
  v14 = *(a1 + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not get preferences", buf, 2u);
  }

  *a2 = 0;
  *(a2 + 56) = 0;
  if ((v13 & 1) == 0)
  {
LABEL_26:
    sub_100004A34(v11);
  }
}

void sub_101366A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_1000EFBF0(&a11);
  sub_10001021C(&a18);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  _Unwind_Resume(a1);
}

void sub_101366AB4(uint64_t a1@<X0>, void *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  theDict[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, theDict);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (!v12)
  {
LABEL_7:
    v14 = *(a1 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(theDict[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not get preferences", theDict, 2u);
    }

    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
    if (v13)
    {
      return;
    }

LABEL_16:
    sub_100004A34(v11);
    return;
  }

LABEL_13:
  theDict[0] = 0;
  (*(*v12 + 40))(&context, v12, @"TravelSimListKey", @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100010180(theDict, &context);
  sub_10000A1EC(&context);
  v15 = theDict[0];
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  if (v15)
  {
    context = a2;
    CFDictionaryApplyFunction(v15, sub_101368C50, &context);
  }

  sub_10001021C(theDict);
  if ((v13 & 1) == 0)
  {
    goto LABEL_16;
  }
}

void sub_101366CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_101369268(v5, *(v5 + 8));
  sub_10001021C(va);
  if ((v7 & 1) == 0)
  {
    sub_100004A34(v6);
  }

  _Unwind_Resume(a1);
}

void sub_101366CE8(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (!v12)
  {
LABEL_7:
    v14 = *(a1 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not get preferences", buf, 2u);
      if (v13)
      {
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    if (v13)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_12:
  if ((*(a2 + 24) & 1) == 0)
  {
    (*(*v12 + 16))(v12, @"APMCountryCacheKey", 0, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    goto LABEL_16;
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v17, *a2, *(a2 + 8));
  }

  else
  {
    *v17 = *a2;
    v18 = *(a2 + 16);
  }

  if (SHIBYTE(v18) < 0)
  {
    sub_100005F2C(__p, v17[0], v17[1]);
  }

  else
  {
    *__p = *v17;
    v22 = v18;
  }

  v20 = 0;
  if (SHIBYTE(v22) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    v24 = v22;
  }

  v25 = 0;
  if (ctu::cf::convert_copy())
  {
    v15 = v20;
    v20 = v25;
    v26 = v15;
    sub_100005978(&v26);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(*buf);
  }

  v16 = v20;
  v19 = v20;
  v20 = 0;
  sub_100005978(&v20);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  (*(*v12 + 16))(v12, @"APMCountryCacheKey", v16, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  (*(*v12 + 48))(v12, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100005978(&v19);
  if ((v13 & 1) == 0)
  {
LABEL_17:
    sub_100004A34(v11);
  }
}

void sub_101367014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if ((v32 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  _Unwind_Resume(a1);
}

void sub_101367094(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v5 = ServiceMap;
  v7 = v6;
  if (v6 < 0)
  {
    v8 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *buf = v7;
  v11 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v11)
  {
    v12 = v11[3];
    v13 = v11[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v56 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v13 = 0;
  v56 = 1;
LABEL_9:
  v55 = v13;
  if (v12)
  {
    if ((*(a2 + 368) & 1) == 0)
    {
      (*(*v12 + 16))(v12, @"CurrentTripID", 0, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      (*(*v12 + 16))(v12, @"FlightInfo", 0, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      (*(*v12 + 16))(v12, @"NotificationInfo", 0, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      goto LABEL_108;
    }

    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v70 = *(a2 + 16);
    }

    if (SHIBYTE(v70) < 0)
    {
      sub_100005F2C(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v79 = v70;
    }

    v82 = 0;
    if (SHIBYTE(v79) < 0)
    {
      sub_100005F2C(buf, __dst, *(&__dst + 1));
    }

    else
    {
      *buf = __dst;
      v81 = v79;
    }

    v83 = 0;
    if (ctu::cf::convert_copy())
    {
      v15 = v82;
      v82 = v83;
      *&v72 = v15;
      sub_100005978(&v72);
    }

    if (SHIBYTE(v81) < 0)
    {
      operator delete(*buf);
    }

    v16 = v82;
    v71 = v82;
    v82 = 0;
    sub_100005978(&v82);
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__dst);
    }

    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }

    (*(*v12 + 16))(v12, @"CurrentTripID", v16, @"com.apple.commcenter.travel");
    if (*(a2 + 368) != 1)
    {
      goto LABEL_111;
    }

    sub_100FF0F78(&v57, (a2 + 24));
    v17 = Registry::getServiceMap(*(a1 + 16));
    v18 = v17;
    v19 = v6;
    if (v6 < 0)
    {
      v20 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v21 = 5381;
      do
      {
        v19 = v21;
        v22 = *v20++;
        v21 = (33 * v21) ^ v22;
      }

      while (v22);
    }

    std::mutex::lock(v17);
    *buf = v19;
    v23 = sub_100009510(&v18[1].__m_.__sig, buf);
    if (v23)
    {
      v25 = v23[3];
      v24 = v23[4];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v18);
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v24);
        v26 = 0;
        if (!v25)
        {
          goto LABEL_38;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v25 = 0;
    }

    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
    if (!v25)
    {
LABEL_38:
      v27 = *(a1 + 8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Could not get preferences", buf, 2u);
      }

      goto LABEL_87;
    }

LABEL_42:
    v76 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v29 = v76;
      v76 = Mutable;
      *buf = v29;
      sub_1000296E0(buf);
    }

    v30 = v76;
    if (SHIBYTE(v58) < 0)
    {
      sub_100005F2C(buf, v57, *(&v57 + 1));
    }

    else
    {
      *buf = v57;
      v81 = v58;
    }

    sub_1003C1788(v30, @"MegadomeIdentifier", buf, kCFAllocatorDefault);
    if (SHIBYTE(v81) < 0)
    {
      operator delete(*buf);
    }

    v31 = v76;
    if (SHIBYTE(v60) < 0)
    {
      sub_100005F2C(buf, v59, *(&v59 + 1));
    }

    else
    {
      *buf = v59;
      v81 = v60;
    }

    sub_1003C1788(v31, @"DepartureCountryCode", buf, kCFAllocatorDefault);
    if (SHIBYTE(v81) < 0)
    {
      operator delete(*buf);
    }

    v32 = v76;
    if (SHIBYTE(v62) < 0)
    {
      sub_100005F2C(buf, v61, *(&v61 + 1));
    }

    else
    {
      *buf = v61;
      v81 = v62;
    }

    sub_1003C1788(v32, @"ArrivalCountryCode", buf, kCFAllocatorDefault);
    if (SHIBYTE(v81) < 0)
    {
      operator delete(*buf);
    }

    v33 = v76;
    if (SHIBYTE(v68) < 0)
    {
      sub_100005F2C(buf, v67, *(&v67 + 1));
    }

    else
    {
      *buf = v67;
      v81 = v68;
    }

    sub_1003C1788(v33, @"ExtractionSource", buf, kCFAllocatorDefault);
    if (SHIBYTE(v81) < 0)
    {
      operator delete(*buf);
    }

    sub_1013691B0(v76, @"DepartureTime", kCFAllocatorDefault, v63);
    sub_1013691B0(v76, @"ArrivalTime", kCFAllocatorDefault, v64);
    v75 = 0;
    v34 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (v34)
    {
      v35 = v75;
      v75 = v34;
      *buf = v35;
      sub_1000279DC(buf);
    }

    v36 = v65;
    v37 = v66;
    while (v36 != v37)
    {
      v74 = 0;
      if (*(v36 + 23) < 0)
      {
        sub_100005F2C(&v72, *v36, *(v36 + 1));
      }

      else
      {
        v38 = *v36;
        v73 = *(v36 + 2);
        v72 = v38;
      }

      if (SHIBYTE(v73) < 0)
      {
        sub_100005F2C(&__dst, v72, *(&v72 + 1));
      }

      else
      {
        __dst = v72;
        v79 = v73;
      }

      v77 = 0;
      if (SHIBYTE(v79) < 0)
      {
        sub_100005F2C(buf, __dst, *(&__dst + 1));
      }

      else
      {
        *buf = __dst;
        v81 = v79;
      }

      v82 = 0;
      if (ctu::cf::convert_copy())
      {
        v39 = v77;
        v77 = v82;
        v83 = v39;
        sub_100005978(&v83);
      }

      if (SHIBYTE(v81) < 0)
      {
        operator delete(*buf);
      }

      v74 = v77;
      v77 = 0;
      sub_100005978(&v77);
      if (SHIBYTE(v79) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72);
      }

      CFArrayAppendValue(v75, v74);
      sub_100005978(&v74);
      v36 = (v36 + 24);
    }

    sub_1002B24E0(v76, @"PassengerNames", v75);
    (*(*v25 + 16))(v25, @"FlightInfo", v76, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_1000279DC(&v75);
    sub_1000296E0(&v76);
LABEL_87:
    if ((v26 & 1) == 0)
    {
      sub_100004A34(v24);
    }

    sub_100FF11AC(&v57);
    if (*(a2 + 368))
    {
      v40 = *(a2 + 344);
      v41 = *(a2 + 345);
      v42 = *(a2 + 352);
      v43 = *(a2 + 360);
      v44 = Registry::getServiceMap(*(a1 + 16));
      v45 = v44;
      if (v6 < 0)
      {
        v46 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
        v47 = 5381;
        do
        {
          v6 = v47;
          v48 = *v46++;
          v47 = (33 * v47) ^ v48;
        }

        while (v48);
      }

      std::mutex::lock(v44);
      *buf = v6;
      v49 = sub_100009510(&v45[1].__m_.__sig, buf);
      if (v49)
      {
        v51 = v49[3];
        v50 = v49[4];
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v45);
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v50);
          v52 = 0;
          if (!v51)
          {
            goto LABEL_96;
          }

          goto LABEL_100;
        }
      }

      else
      {
        v51 = 0;
      }

      std::mutex::unlock(v45);
      v50 = 0;
      v52 = 1;
      if (!v51)
      {
LABEL_96:
        v53 = *(a1 + 8);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Could not get preferences", buf, 2u);
        }

LABEL_105:
        if ((v52 & 1) == 0)
        {
          sub_100004A34(v50);
        }

        (*(*v12 + 48))(v12, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        sub_100005978(&v71);
        goto LABEL_108;
      }

LABEL_100:
      *&__dst = 0;
      v54 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v54)
      {
        *&__dst = v54;
        *buf = 0;
        sub_1000296E0(buf);
        v54 = __dst;
      }

      sub_10039D6BC(v54, @"DidShowPreDeparture", v40 & 1);
      sub_10039D6BC(__dst, @"DidShowPostArrival", v41 & 1);
      if (v43)
      {
        sub_1013691B0(__dst, @"TimeShownPreDeparture", kCFAllocatorDefault, v42);
      }

      (*(*v51 + 16))(v51, @"NotificationInfo", __dst, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_1000296E0(&__dst);
      goto LABEL_105;
    }

LABEL_111:
    sub_1000D1644();
  }

  v14 = *(a1 + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not get preferences", buf, 2u);
  }

LABEL_108:
  if ((v56 & 1) == 0)
  {
    sub_100004A34(v55);
  }
}

void sub_101367AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, int a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, void *a45, int a46, __int16 a47, char a48, char a49, int a50, __int16 a51, char a52, char a53)
{
  sub_100005978((v53 - 120));
  if (*(v53 - 153) < 0)
  {
    operator delete(*(v53 - 176));
  }

  if (a53 < 0)
  {
    operator delete(a45);
  }

  if ((a13 & 1) == 0)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void sub_101367C14(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (!v12)
  {
LABEL_7:
    v14 = *(a1 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not get preferences", buf, 2u);
      if (v13)
      {
        return;
      }

      goto LABEL_20;
    }

LABEL_19:
    if (v13)
    {
      return;
    }

    goto LABEL_20;
  }

LABEL_12:
  if ((*(a2 + 56) & 1) == 0)
  {
    (*(*v12 + 16))(v12, @"PostArrivalCacheKey", 0, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    goto LABEL_19;
  }

  *v26 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v16 = *v26;
    *v26 = Mutable;
    *buf = v16;
    sub_1000296E0(buf);
  }

  v25 = 0;
  if ((*(a2 + 56) & 1) == 0)
  {
    sub_1000D1644();
  }

  if (*(a2 + 55) < 0)
  {
    sub_100005F2C(__dst, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    *__dst = *(a2 + 32);
    v24 = *(a2 + 48);
  }

  if (SHIBYTE(v24) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v29 = v24;
  }

  v27 = 0;
  if (SHIBYTE(v29) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    v31 = v29;
  }

  v32 = 0;
  if (ctu::cf::convert_copy())
  {
    v17 = v27;
    v27 = v32;
    v33 = v17;
    sub_100005978(&v33);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(*buf);
  }

  v25 = v27;
  v27 = 0;
  sub_100005978(&v27);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_1001768B8(*v26, @"CurrentCountry", v25);
  if ((*(a2 + 56) & 1) == 0)
  {
    sub_1000D1644();
  }

  if (*(a2 + 31) < 0)
  {
    sub_100005F2C(v20, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *v20 = *(a2 + 8);
    v21 = *(a2 + 24);
  }

  if (SHIBYTE(v21) < 0)
  {
    sub_100005F2C(__p, v20[0], v20[1]);
  }

  else
  {
    *__p = *v20;
    v29 = v21;
  }

  v27 = 0;
  if (SHIBYTE(v29) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    v31 = v29;
  }

  v32 = 0;
  if (ctu::cf::convert_copy())
  {
    v18 = v27;
    v27 = v32;
    v33 = v18;
    sub_100005978(&v33);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(*buf);
  }

  v19 = v27;
  v22 = v27;
  v27 = 0;
  sub_100005978(&v27);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  sub_1001768B8(*v26, @"PreviousCountry", v19);
  if ((*(a2 + 56) & 1) == 0)
  {
    sub_1000D1644();
  }

  sub_1013691B0(*v26, @"PostponedTimestamp", kCFAllocatorDefault, *a2);
  (*(*v12 + 16))(v12, @"PostArrivalCacheKey", *v26, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  (*(*v12 + 48))(v12, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100005978(&v22);
  sub_100005978(&v25);
  sub_1000296E0(v26);
  if ((v13 & 1) == 0)
  {
LABEL_20:
    sub_100004A34(v11);
  }
}

void sub_101368100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, const void *a23, const void *a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_100005978(&a24);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100005978(&a22);
  sub_1000296E0(&a23);
  if ((v38 & 1) == 0)
  {
    sub_100004A34(v37);
  }

  _Unwind_Resume(a1);
}

void sub_1013681FC(uint64_t a1, void *a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (!v12)
  {
LABEL_7:
    v14 = *(a1 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not get preferences", buf, 2u);
    }

    goto LABEL_76;
  }

LABEL_11:
  v45 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v36 = v13;
  v37 = v11;
  if (Mutable)
  {
    v16 = v45;
    v45 = Mutable;
    *buf = v16;
    sub_1000296E0(buf);
  }

  v19 = *a2;
  v17 = a2 + 1;
  v18 = v19;
  if (v19 != v17)
  {
    do
    {
      theDict = 0;
      v20 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v20)
      {
        v21 = theDict;
        theDict = v20;
        *buf = v21;
        sub_1000296E0(buf);
      }

      sub_10039D6BC(theDict, @"InstalledInHomeCountry", *(v18 + 56));
      if (*(v18 + 97) == 1)
      {
        sub_10039D6BC(theDict, @"IsDataOnly", *(v18 + 96));
      }

      v22 = *(v18 + 16);
      __p[0] = 0;
      *buf = v22;
      v23 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, buf);
      if (v23)
      {
        v24 = __p[0];
        __p[0] = v23;
        *buf = v24;
        sub_100029A48(buf);
      }

      v52[0] = __p[0];
      __p[0] = 0;
      sub_100029A48(__p);
      sub_100209DF4(theDict, @"SupportedCountriesSource", v52[0]);
      sub_100029A48(v52);
      v43 = 0;
      v25 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (v25)
      {
        v26 = v43;
        v43 = v25;
        *buf = v26;
        sub_1000279DC(buf);
      }

      v27 = v18[9];
      if (v27 != v18 + 10)
      {
        do
        {
          cf = 0;
          if (*(v27 + 55) < 0)
          {
            sub_100005F2C(__dst, v27[4], v27[5]);
          }

          else
          {
            *__dst = *(v27 + 2);
            v41 = v27[6];
          }

          if (SHIBYTE(v41) < 0)
          {
            sub_100005F2C(__p, __dst[0], __dst[1]);
          }

          else
          {
            *__p = *__dst;
            v48 = v41;
          }

          v46 = 0;
          if (SHIBYTE(v48) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            v50 = v48;
          }

          v51 = 0;
          if (ctu::cf::convert_copy())
          {
            v28 = v46;
            v46 = v51;
            v52[0] = v28;
            sub_100005978(v52);
          }

          if (SHIBYTE(v50) < 0)
          {
            operator delete(*buf);
          }

          cf = v46;
          v46 = 0;
          sub_100005978(&v46);
          if (SHIBYTE(v48) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v41) < 0)
          {
            operator delete(__dst[0]);
          }

          CFArrayAppendValue(v43, cf);
          sub_100005978(&cf);
          v29 = v27[1];
          if (v29)
          {
            do
            {
              v30 = v29;
              v29 = *v29;
            }

            while (v29);
          }

          else
          {
            do
            {
              v30 = v27[2];
              v31 = *v30 == v27;
              v27 = v30;
            }

            while (!v31);
          }

          v27 = v30;
        }

        while (v30 != v18 + 10);
      }

      sub_1002B24E0(theDict, @"SupportedCountries", v43);
      if (*(v18 + 128) == 1)
      {
        v32 = theDict;
        if (*(v18 + 127) < 0)
        {
          sub_100005F2C(buf, v18[13], v18[14]);
        }

        else
        {
          *buf = *(v18 + 13);
          v50 = v18[15];
        }

        sub_1003C1788(v32, @"RequiredIccidMatch", buf, kCFAllocatorDefault);
        if (SHIBYTE(v50) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_1013691B0(theDict, @"LatestRegistration", kCFAllocatorDefault, *(v18 + 17));
      cf = 0;
      if (*(v18 + 55) < 0)
      {
        sub_100005F2C(v38, v18[4], v18[5]);
      }

      else
      {
        *v38 = *(v18 + 2);
        v39 = v18[6];
      }

      if (SHIBYTE(v39) < 0)
      {
        sub_100005F2C(__p, v38[0], v38[1]);
      }

      else
      {
        *__p = *v38;
        v48 = v39;
      }

      v46 = 0;
      if (SHIBYTE(v48) < 0)
      {
        sub_100005F2C(buf, __p[0], __p[1]);
      }

      else
      {
        *buf = *__p;
        v50 = v48;
      }

      v51 = 0;
      if (ctu::cf::convert_copy())
      {
        v33 = v46;
        v46 = v51;
        v52[0] = v33;
        sub_100005978(v52);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(*buf);
      }

      cf = v46;
      v46 = 0;
      sub_100005978(&v46);
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38[0]);
      }

      sub_10043B768(v45, cf, theDict);
      sub_100005978(&cf);
      sub_1000279DC(&v43);
      sub_1000296E0(&theDict);
      v34 = v18[1];
      if (v34)
      {
        do
        {
          v35 = v34;
          v34 = *v34;
        }

        while (v34);
      }

      else
      {
        do
        {
          v35 = v18[2];
          v31 = *v35 == v18;
          v18 = v35;
        }

        while (!v31);
      }

      v18 = v35;
    }

    while (v35 != v17);
  }

  v11 = v37;
  v13 = v36;
  (*(*v12 + 16))(v12, @"TravelSimListKey", v45, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  (*(*v12 + 48))(v12, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_1000296E0(&v45);
LABEL_76:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_101368894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, int a28, __int16 a29, char a30, char a31, int a32, __int16 a33, char a34, char a35, int a36, const void *a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  sub_1000296E0(&a37);
  if ((v46 & 1) == 0)
  {
    sub_100004A34(v47);
  }

  _Unwind_Resume(a1);
}

char *sub_1013689F0(char *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  sub_100FF0F78(__dst + 24, a3);
  sub_100074920(__dst + 33, (a3 + 240));
  if (*(a3 + 287) < 0)
  {
    sub_100005F2C(__dst + 288, *(a3 + 264), *(a3 + 272));
  }

  else
  {
    v6 = *(a3 + 264);
    *(__dst + 38) = *(a3 + 280);
    *(__dst + 18) = v6;
  }

  v7 = __dst + 312;
  if (*(a3 + 311) < 0)
  {
    sub_100005F2C(v7, *(a3 + 288), *(a3 + 296));
  }

  else
  {
    v8 = *(a3 + 288);
    *(__dst + 41) = *(a3 + 304);
    *v7 = v8;
  }

  *(__dst + 42) = *(a3 + 312);
  v9 = *(a3 + 320);
  *(__dst + 45) = *(a3 + 336);
  *(__dst + 344) = v9;
  return __dst;
}

void sub_101368ACC(_Unwind_Exception *a1)
{
  if (*(v1 + 311) < 0)
  {
    operator delete(*(v1 + 288));
  }

  sub_100009970(v1 + 264, *(v1 + 272));
  sub_100FF11AC(v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_101368B24(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 8);

  sub_100009970(a1, v2);
}

uint64_t sub_101368B7C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_101368B24(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}