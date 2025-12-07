void sub_2623023CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v42 = *(v40 - 192);
  if (v42)
  {
    operator delete(v42);
  }

  v43 = *(v40 - 240);
  if (v43)
  {
    operator delete(v43);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_26230259C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = (a1 + 8);
    v8 = a3;
    do
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v12 = *(a4 + 8);
      v11 = *(a4 + 16);
      if (v12 >= v11)
      {
        v14 = (v12 - *a4) >> 4;
        v15 = v14 + 1;
        if ((v14 + 1) >> 60)
        {
          sub_2621CBEB0();
        }

        v16 = v11 - *a4;
        if (v16 >> 3 > v15)
        {
          v15 = v16 >> 3;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF0)
        {
          v17 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          sub_2621CBF10(v17);
        }

        v18 = (16 * v14);
        *v18 = v10;
        v18[1] = v9;
        v13 = 16 * v14 + 16;
        v19 = *(a4 + 8) - *a4;
        v20 = 16 * v14 - v19;
        memcpy(v18 - v19, *a4, v19);
        v21 = *a4;
        *a4 = v20;
        *(a4 + 8) = v13;
        *(a4 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v12 = v10;
        v12[1] = v9;
        v13 = (v12 + 2);
      }

      *(a4 + 8) = v13;
      sub_2621C8F2C(a4 + 24, a2++);
      v7 += 2;
      --v8;
    }

    while (v8);
  }

  *(a4 + 48) = a3;
}

void sub_2623026BC(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_262302714(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + 1;
  a1[2] = a1[1];
  v5 = a1 + 4;
  a1[5] = a1[4];
  v6 = *a2;
  if (a2[1] != *a2)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      sub_2621DE070(v4, (v6 + v11));
      v14 = 0;
      sub_2621C8F2C(v5, &v14);
      ++v12;
      v6 = *a2;
      v13 = a2[1] - *a2;
      v11 += 16;
    }

    while (v12 < v13 >> 4);
    a1[7] = v13 >> 4;
    *a1 = a3;

    sub_262300E40(a1, a1 + 20, a3, a4);
  }
}

void sub_262302930(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      sub_262302974((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_262302974(uint64_t a1)
{
  sub_2621C74C4(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_262302CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2623030D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_262303130(void **a1, uint64_t a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_2622ABDBC(a1, (a3[1] - *a3) >> 3);
  v6 = *a3;
  v7 = a3[1];
  memset(__p, 0, sizeof(__p));
  sub_2621DDA38(__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
  if (v6 != v7)
  {
    v8 = a1[1];
    do
    {
      v9 = a1[2];
      if (v8 >= v9)
      {
        v10 = *a1;
        v11 = v8 - *a1;
        v12 = (v11 >> 4) + 1;
        if (v12 >> 60)
        {
          sub_2621CBEB0();
        }

        v13 = v9 - v10;
        if (v13 >> 3 > v12)
        {
          v12 = v13 >> 3;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_2621CBF10(v14);
        }

        v15 = (16 * (v11 >> 4));
        *v15 = *(__p[0] + *v6);
        v8 = (v15 + 1);
        memcpy(0, v10, v11);
        *a1 = 0;
        a1[2] = 0;
        if (v10)
        {
          operator delete(v10);
        }
      }

      else
      {
        *v8 = *(__p[0] + *v6);
        v8 += 16;
      }

      a1[1] = v8;
      ++v6;
    }

    while (v6 != v7);
  }

  v16 = __p[0];
  if (__p[0])
  {

    operator delete(v16);
  }
}

void sub_2623032BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_262303408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2623043AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  __p = &a53;
  sub_2621DED18(&__p);

  _Unwind_Resume(a1);
}

void *sub_262304510(float *a1, void *a2, __int128 **a3)
{
  v5 = sub_2621D1580(a2);
  v6 = v5;
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_2621D19D0(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_26230498C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_262306FE8(va);
  _Unwind_Resume(a1);
}

void sub_2623049A4(char *a1, char *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v197 = *MEMORY[0x277D85DE8];
  while (2)
  {
    v160 = a2 - 48;
    v162 = a2 - 24;
    v164 = a2;
    v159 = a2 - 72;
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = v164 - v9;
          v11 = 0xAAAAAAAAAAAAAAABLL * ((v164 - v9) >> 3);
          v12 = v11 - 2;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3uLL:
                sub_26230652C(a1, (a1 + 24), v162, a3);
                return;
              case 4uLL:
                v65 = (a1 + 24);
                v66 = (a1 + 48);
                sub_26230652C(a1, (a1 + 24), (a1 + 48), a3);
                v67 = **a3;
                *&v193 = v162;
                v178 = sub_262305CA8((v67 + 128), v162, &v193)[5];
                v68 = **a3;
                *&v193 = a1 + 48;
                if (v178 > sub_262305CA8((v68 + 128), a1 + 6, &v193)[5])
                {
                  v193 = *v66;
                  v69 = v193;
                  v194 = *(a1 + 8);
                  v70 = v194;
                  v71 = *(v162 + 2);
                  *v66 = *v162;
                  *(a1 + 8) = v71;
                  *(v162 + 2) = v70;
                  *v162 = v69;
                  v72 = **a3;
                  *&v193 = a1 + 48;
                  v179 = sub_262305CA8((v72 + 128), a1 + 6, &v193)[5];
                  v73 = **a3;
                  *&v193 = a1 + 24;
                  if (v179 > sub_262305CA8((v73 + 128), a1 + 3, &v193)[5])
                  {
                    v74 = *(a1 + 5);
                    v75 = *v65;
                    *v65 = *v66;
                    *(a1 + 5) = *(a1 + 8);
                    *v66 = v75;
                    *(a1 + 8) = v74;
                    v76 = **a3;
                    *&v193 = a1 + 24;
                    v180 = sub_262305CA8((v76 + 128), a1 + 3, &v193)[5];
                    v77 = **a3;
                    *&v193 = a1;
                    if (v180 > sub_262305CA8((v77 + 128), a1, &v193)[5])
                    {
                      v78 = *a1;
                      v194 = *(a1 + 2);
                      v193 = v78;
                      *a1 = *v65;
                      *(a1 + 2) = *(a1 + 5);
                      *v65 = v193;
                      *(a1 + 5) = v194;
                    }
                  }
                }

                return;
              case 5uLL:
                sub_2623067B4(a1, (a1 + 24), (a1 + 48), (a1 + 72), v162, a3);
                return;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return;
            }

            if (v11 == 2)
            {
              v79 = **a3;
              *&v193 = v162;
              v80 = sub_262305CA8((v79 + 128), v162, &v193)[5];
              v81 = **a3;
              *&v193 = a1;
              if (v80 > sub_262305CA8((v81 + 128), a1, &v193)[5])
              {
                v82 = *a1;
                v194 = *(a1 + 2);
                v193 = v82;
                v83 = *v162;
                *(a1 + 2) = *(v162 + 2);
                *a1 = v83;
                v84 = v193;
                *(v162 + 2) = v194;
                *v162 = v84;
              }

              return;
            }
          }

          if (v10 <= 575)
          {
            if (a5)
            {
              if (a1 != v164)
              {
                v85 = a1 + 24;
                if (a1 + 24 != v164)
                {
                  v86 = 0;
                  v87 = a1;
                  do
                  {
                    v88 = v85;
                    v89 = **a3;
                    *&v193 = v88;
                    v181 = sub_262305CA8((v89 + 128), v88, &v193)[5];
                    v90 = **a3;
                    *&v193 = v87;
                    if (v181 > sub_262305CA8((v90 + 128), v87, &v193)[5])
                    {
                      v91 = *v88;
                      v194 = v88[2];
                      v193 = v91;
                      v88[1] = 0;
                      v88[2] = 0;
                      *v88 = 0;
                      v92 = v86;
                      do
                      {
                        v93 = &a1[v92];
                        if (a1[v92 + 47] < 0)
                        {
                          operator delete(v93[3]);
                        }

                        *(v93 + 3) = *v93;
                        v93[5] = v93[2];
                        *(v93 + 23) = 0;
                        *v93 = 0;
                        if (!v92)
                        {
                          v96 = a1;
                          goto LABEL_86;
                        }

                        v94 = **a3;
                        *&v195 = &v193;
                        v182 = sub_262305CA8((v94 + 128), &v193, &v195)[5];
                        v95 = **a3;
                        *&v195 = &a1[v92 - 24];
                        v92 -= 24;
                      }

                      while (v182 > sub_262305CA8((v95 + 128), v195, &v195)[5]);
                      v96 = &a1[v92 + 24];
                      if (a1[v92 + 47] < 0)
                      {
                        operator delete(*v96);
                      }

LABEL_86:
                      v97 = v193;
                      *(v96 + 16) = v194;
                      *v96 = v97;
                    }

                    v85 = v88 + 3;
                    v86 += 24;
                    v87 = v88;
                  }

                  while (v88 + 3 != v164);
                }
              }
            }

            else if (a1 != v164)
            {
              v147 = a1 + 24;
              if (a1 + 24 != v164)
              {
                v148 = a1 - 24;
                do
                {
                  v149 = v147;
                  v150 = **a3;
                  *&v193 = v149;
                  v190 = sub_262305CA8((v150 + 128), v149, &v193)[5];
                  v151 = **a3;
                  *&v193 = a1;
                  if (v190 > sub_262305CA8((v151 + 128), a1, &v193)[5])
                  {
                    v152 = *v149;
                    v194 = v149[2];
                    v193 = v152;
                    v149[1] = 0;
                    v149[2] = 0;
                    *v149 = 0;
                    v153 = v148;
                    do
                    {
                      v154 = v153;
                      if (*(v153 + 71) < 0)
                      {
                        operator delete(v153[6]);
                      }

                      *(v154 + 3) = *(v154 + 3);
                      v154[8] = v154[5];
                      *(v154 + 47) = 0;
                      *(v154 + 24) = 0;
                      v155 = **a3;
                      *&v195 = &v193;
                      v191 = sub_262305CA8((v155 + 128), &v193, &v195)[5];
                      v156 = **a3;
                      *&v195 = v154;
                      v157 = sub_262305CA8((v156 + 128), v154, &v195);
                      v153 = v154 - 3;
                    }

                    while (v191 > v157[5]);
                    if (*(v154 + 47) < 0)
                    {
                      operator delete(v154[3]);
                    }

                    v158 = v193;
                    v154[5] = v194;
                    *(v154 + 3) = v158;
                  }

                  v147 = v149 + 3;
                  v148 += 24;
                  a1 = v149;
                }

                while (v149 + 3 != v164);
              }
            }

            return;
          }

          if (!a4)
          {
            if (a1 != v164)
            {
              v98 = v12 >> 1;
              v99 = v12 >> 1;
              v163 = a1;
              do
              {
                v100 = v99;
                if (v98 >= v99)
                {
                  v101 = (2 * v99) | 1;
                  v102 = &a1[24 * v101];
                  if (2 * v99 + 2 < v11)
                  {
                    v103 = **a3;
                    *&v193 = &a1[24 * v101];
                    v183 = sub_262305CA8((v103 + 128), v193, &v193)[5];
                    v104 = **a3;
                    *&v193 = v102 + 24;
                    if (v183 > sub_262305CA8((v104 + 128), (v102 + 24), &v193)[5])
                    {
                      v102 += 24;
                      v101 = 2 * v100 + 2;
                    }
                  }

                  v105 = **a3;
                  *&v193 = v102;
                  v106 = &a1[24 * v100];
                  v184 = sub_262305CA8((v105 + 128), v102, &v193)[5];
                  v107 = **a3;
                  *&v193 = v106;
                  if (v184 <= sub_262305CA8((v107 + 128), v106, &v193)[5])
                  {
                    v108 = *v106;
                    v194 = *(v106 + 2);
                    v193 = v108;
                    *(v106 + 1) = 0;
                    *(v106 + 2) = 0;
                    *v106 = 0;
                    while (1)
                    {
                      v109 = v102;
                      if (v106[23] < 0)
                      {
                        operator delete(*v106);
                      }

                      v110 = *v102;
                      *(v106 + 2) = *(v102 + 16);
                      *v106 = v110;
                      *(v102 + 23) = 0;
                      *v102 = 0;
                      if (v98 < v101)
                      {
                        break;
                      }

                      v111 = a1;
                      v112 = (2 * v101) | 1;
                      v102 = v111 + 24 * v112;
                      v101 = 2 * v101 + 2;
                      if (v101 >= v11)
                      {
                        v101 = v112;
                      }

                      else
                      {
                        v113 = **a3;
                        *&v195 = v111 + 24 * v112;
                        v185 = sub_262305CA8((v113 + 128), v195, &v195)[5];
                        v114 = **a3;
                        *&v195 = v102 + 24;
                        if (v185 <= sub_262305CA8((v114 + 128), (v102 + 24), &v195)[5])
                        {
                          v101 = v112;
                        }

                        else
                        {
                          v102 += 24;
                        }
                      }

                      v115 = **a3;
                      *&v195 = v102;
                      v186 = sub_262305CA8((v115 + 128), v102, &v195)[5];
                      v116 = **a3;
                      *&v195 = &v193;
                      v106 = v109;
                      a1 = v163;
                      if (v186 > sub_262305CA8((v116 + 128), &v193, &v195)[5])
                      {
                        if (*(v109 + 23) < 0)
                        {
                          operator delete(*v109);
                        }

                        break;
                      }
                    }

                    v117 = v193;
                    *(v109 + 16) = v194;
                    *v109 = v117;
                  }
                }

                v99 = v100 - 1;
              }

              while (v100);
              v118 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
              v119 = v164;
              do
              {
                v120 = v119;
                v121 = 0;
                v161 = *a1;
                *&v195 = *(a1 + 1);
                *(&v195 + 7) = *(a1 + 15);
                v165 = a1[23];
                *(a1 + 1) = 0;
                *(a1 + 2) = 0;
                *a1 = 0;
                v122 = a1;
                do
                {
                  v123 = v122;
                  v124 = v122 + 24 * v121;
                  v122 = v124 + 24;
                  v125 = 2 * v121;
                  v121 = (2 * v121) | 1;
                  v126 = v125 + 2;
                  if (v125 + 2 < v118)
                  {
                    v127 = **a3;
                    *&v193 = v124 + 24;
                    v128 = sub_262305CA8((v127 + 128), (v124 + 24), &v193);
                    v129 = (v124 + 48);
                    v187 = v128[5];
                    v130 = **a3;
                    *&v193 = v129;
                    if (v187 > sub_262305CA8((v130 + 128), v129, &v193)[5])
                    {
                      v122 = v129;
                      v121 = v126;
                    }

                    if (*(v123 + 23) < 0)
                    {
                      operator delete(*v123);
                    }
                  }

                  v131 = *v122;
                  *(v123 + 16) = *(v122 + 16);
                  *v123 = v131;
                  *(v122 + 23) = 0;
                  *v122 = 0;
                }

                while (v121 <= ((v118 - 2) >> 1));
                v119 = v120 - 24;
                if (v122 == (v120 - 24))
                {
                  a1 = v163;
                  *v122 = v161;
                  v145 = *(&v195 + 7);
                  *(v122 + 8) = v195;
                  *(v122 + 15) = v145;
                  *(v122 + 23) = v165;
                }

                else
                {
                  v132 = *v119;
                  *(v122 + 16) = *(v120 - 1);
                  *v122 = v132;
                  a1 = v163;
                  *(v120 - 3) = v161;
                  v133 = v195;
                  *(v120 - 9) = *(&v195 + 7);
                  *(v120 - 2) = v133;
                  *(v120 - 1) = v165;
                  v134 = v122 - v163 + 24;
                  if (v134 >= 25)
                  {
                    v135 = (-2 - 0x5555555555555555 * (v134 >> 3)) >> 1;
                    v136 = v163 + 24 * v135;
                    v137 = **a3;
                    *&v193 = v136;
                    v188 = sub_262305CA8((v137 + 128), v136, &v193)[5];
                    v138 = **a3;
                    *&v193 = v122;
                    if (v188 > sub_262305CA8((v138 + 128), v122, &v193)[5])
                    {
                      v139 = *v122;
                      v194 = *(v122 + 16);
                      v193 = v139;
                      *(v122 + 8) = 0;
                      *(v122 + 16) = 0;
                      *v122 = 0;
                      while (1)
                      {
                        v140 = v136;
                        if (*(v122 + 23) < 0)
                        {
                          operator delete(*v122);
                        }

                        v141 = *v136;
                        *(v122 + 16) = *(v136 + 16);
                        *v122 = v141;
                        *(v136 + 23) = 0;
                        *v136 = 0;
                        if (!v135)
                        {
                          break;
                        }

                        v135 = (v135 - 1) >> 1;
                        v136 = v163 + 24 * v135;
                        v142 = **a3;
                        v192[0] = v136;
                        v189 = sub_262305CA8((v142 + 128), v136, v192)[5];
                        v143 = **a3;
                        v192[0] = &v193;
                        v122 = v140;
                        if (v189 <= sub_262305CA8((v143 + 128), &v193, v192)[5])
                        {
                          if (*(v140 + 23) < 0)
                          {
                            operator delete(*v140);
                          }

                          break;
                        }
                      }

                      v144 = v193;
                      *(v140 + 16) = v194;
                      *v140 = v144;
                    }
                  }
                }
              }

              while (v118-- > 2);
            }

            return;
          }

          v13 = v11 >> 1;
          v14 = &a1[24 * (v11 >> 1)];
          if (v10 < 0xC01)
          {
            sub_26230652C(&a1[24 * (v11 >> 1)], a1, v162, a3);
          }

          else
          {
            sub_26230652C(a1, &a1[24 * (v11 >> 1)], v162, a3);
            v15 = &a1[24 * v13 - 24];
            sub_26230652C((a1 + 24), v15, v160, a3);
            v16 = &a1[24 * v13];
            sub_26230652C((a1 + 48), (v16 + 24), v159, a3);
            sub_26230652C(v15, &a1[24 * (v11 >> 1)], (v16 + 24), a3);
            v17 = *a1;
            v194 = *(a1 + 2);
            v193 = v17;
            v18 = *v14;
            *(a1 + 2) = *(v14 + 2);
            *a1 = v18;
            v19 = v193;
            *(v14 + 2) = v194;
            *v14 = v19;
          }

          --a4;
          if (a5)
          {
            break;
          }

          v20 = **a3;
          *&v193 = a1 - 24;
          v166 = sub_262305CA8((v20 + 128), a1 - 3, &v193)[5];
          v21 = **a3;
          *&v193 = a1;
          if (v166 > sub_262305CA8((v21 + 128), a1, &v193)[5])
          {
            break;
          }

          v43 = *a1;
          v196 = *(a1 + 2);
          v195 = v43;
          *(a1 + 1) = 0;
          *(a1 + 2) = 0;
          *a1 = 0;
          v44 = **a3;
          *&v193 = &v195;
          v172 = sub_262305CA8((v44 + 128), &v195, &v193)[5];
          v45 = **a3;
          *&v193 = v162;
          if (v172 <= sub_262305CA8((v45 + 128), v162, &v193)[5])
          {
            v48 = a1 + 24;
            do
            {
              v9 = v48;
              if (v48 >= v164)
              {
                break;
              }

              v49 = **a3;
              *&v193 = &v195;
              v174 = sub_262305CA8((v49 + 128), &v195, &v193)[5];
              v50 = **a3;
              *&v193 = v9;
              v51 = sub_262305CA8((v50 + 128), v9, &v193);
              v48 = v9 + 24;
            }

            while (v174 <= v51[5]);
          }

          else
          {
            v9 = a1;
            do
            {
              v46 = **a3;
              *&v193 = &v195;
              v9 += 24;
              v173 = sub_262305CA8((v46 + 128), &v195, &v193)[5];
              v47 = **a3;
              *&v193 = v9;
            }

            while (v173 <= sub_262305CA8((v47 + 128), v9, &v193)[5]);
          }

          v52 = v164;
          if (v9 < v164)
          {
            v52 = v164;
            do
            {
              v53 = **a3;
              *&v193 = &v195;
              v52 -= 24;
              v175 = sub_262305CA8((v53 + 128), &v195, &v193)[5];
              v54 = **a3;
              *&v193 = v52;
            }

            while (v175 > sub_262305CA8((v54 + 128), v52, &v193)[5]);
          }

          while (v9 < v52)
          {
            v55 = *v9;
            v194 = *(v9 + 2);
            v193 = v55;
            v56 = *v52;
            *(v9 + 2) = *(v52 + 2);
            *v9 = v56;
            v57 = v193;
            *(v52 + 2) = v194;
            *v52 = v57;
            do
            {
              v58 = **a3;
              *&v193 = &v195;
              v9 += 24;
              v176 = sub_262305CA8((v58 + 128), &v195, &v193)[5];
              v59 = **a3;
              *&v193 = v9;
            }

            while (v176 <= sub_262305CA8((v59 + 128), v9, &v193)[5]);
            do
            {
              v60 = **a3;
              *&v193 = &v195;
              v52 -= 24;
              v177 = sub_262305CA8((v60 + 128), &v195, &v193)[5];
              v61 = **a3;
              *&v193 = v52;
            }

            while (v177 > sub_262305CA8((v61 + 128), v52, &v193)[5]);
          }

          v62 = (v9 - 24);
          if (v9 - 24 == a1)
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*v62);
            }
          }

          else
          {
            if (a1[23] < 0)
            {
              operator delete(*a1);
            }

            v63 = *v62;
            *(a1 + 2) = *(v9 - 1);
            *a1 = v63;
            *(v9 - 1) = 0;
            *(v9 - 24) = 0;
          }

          a5 = 0;
          v64 = v195;
          *(v9 - 1) = v196;
          *v62 = v64;
        }

        v22 = *a1;
        v196 = *(a1 + 2);
        v195 = v22;
        *(a1 + 1) = 0;
        *(a1 + 2) = 0;
        *a1 = 0;
        v23 = a1;
        do
        {
          v23 += 24;
          v24 = **a3;
          *&v193 = v23;
          v167 = sub_262305CA8((v24 + 128), v23, &v193)[5];
          v25 = **a3;
          *&v193 = &v195;
        }

        while (v167 > sub_262305CA8((v25 + 128), &v195, &v193)[5]);
        v26 = v164;
        if (v23 - 24 == a1)
        {
          v26 = v164;
          do
          {
            if (v23 >= v26)
            {
              break;
            }

            v26 -= 24;
            v29 = **a3;
            *&v193 = v26;
            v169 = sub_262305CA8((v29 + 128), v26, &v193)[5];
            v30 = **a3;
            *&v193 = &v195;
          }

          while (v169 <= sub_262305CA8((v30 + 128), &v195, &v193)[5]);
        }

        else
        {
          do
          {
            v26 -= 24;
            v27 = **a3;
            *&v193 = v26;
            v168 = sub_262305CA8((v27 + 128), v26, &v193)[5];
            v28 = **a3;
            *&v193 = &v195;
          }

          while (v168 <= sub_262305CA8((v28 + 128), &v195, &v193)[5]);
        }

        v9 = v23;
        if (v23 < v26)
        {
          v31 = v26;
          do
          {
            v193 = *v9;
            v32 = v193;
            v194 = *(v9 + 2);
            v33 = v194;
            v34 = *(v31 + 2);
            *v9 = *v31;
            *(v9 + 2) = v34;
            *(v31 + 2) = v33;
            *v31 = v32;
            do
            {
              v9 += 24;
              v35 = **a3;
              *&v193 = v9;
              v170 = sub_262305CA8((v35 + 128), v9, &v193)[5];
              v36 = **a3;
              *&v193 = &v195;
            }

            while (v170 > sub_262305CA8((v36 + 128), &v195, &v193)[5]);
            do
            {
              v31 -= 24;
              v37 = **a3;
              *&v193 = v31;
              v171 = sub_262305CA8((v37 + 128), v31, &v193)[5];
              v38 = **a3;
              *&v193 = &v195;
            }

            while (v171 <= sub_262305CA8((v38 + 128), &v195, &v193)[5]);
          }

          while (v9 < v31);
        }

        v39 = (v9 - 24);
        if (v9 - 24 == a1)
        {
          if (*(v9 - 1) < 0)
          {
            operator delete(*v39);
          }
        }

        else
        {
          if (a1[23] < 0)
          {
            operator delete(*a1);
          }

          v40 = *v39;
          *(a1 + 2) = *(v9 - 1);
          *a1 = v40;
          *(v9 - 1) = 0;
          *(v9 - 24) = 0;
        }

        v41 = v195;
        *(v9 - 1) = v196;
        *v39 = v41;
        if (v23 >= v26)
        {
          break;
        }

LABEL_40:
        sub_2623049A4(a1, v9 - 24, a3, a4, a5 & 1);
        a5 = 0;
      }

      v42 = sub_262306B58(a1, v9 - 3, a3);
      if (sub_262306B58(v9, v164, a3))
      {
        break;
      }

      if (!v42)
      {
        goto LABEL_40;
      }
    }

    a2 = v9 - 24;
    if (!v42)
    {
      continue;
    }

    break;
  }
}

void sub_262305C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_262305CA8(float *a1, void *a2, __int128 **a3)
{
  v5 = sub_2621D1580(a2);
  v6 = v5;
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_2621D19D0(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_262306104(void *a1, void *a2)
{
  v3 = sub_2621D101C(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = *(*v3 + 1);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = v11[1];
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    sub_2621D1A44(1, v3);
  }
}

double sub_262306274(void *a1, char *__src, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = __src;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - __src;
      v17 = (v10 - __src) >> 4;
      if (v17 >= a5)
      {
        v20 = &__src[16 * a5];
        v21 = &v10[-16 * a5];
        v22 = a1[1];
        while (v21 < v10)
        {
          v23 = *v21;
          v21 += 16;
          *v22++ = v23;
        }

        a1[1] = v22;
        if (v10 != v20)
        {
          memmove(&__src[16 * a5], __src, v10 - v20);
        }

        v24 = &v6[a5];
        do
        {
          v25 = *v6++;
          result = *&v25;
          *v7 = v25;
          v7 += 16;
        }

        while (v6 != v24);
      }

      else
      {
        v18 = (a3 + v16);
        if ((a3 + v16) == a4)
        {
          v19 = a1[1];
        }

        else
        {
          v36 = (a3 + v16);
          v19 = a1[1];
          do
          {
            v37 = *v36++;
            result = *&v37;
            *v19++ = v37;
          }

          while (v36 != a4);
        }

        a1[1] = v19;
        if (v17 >= 1)
        {
          v38 = &__src[16 * a5];
          v39 = &v19[-a5];
          v40 = v19;
          while (v39 < v10)
          {
            v41 = *v39;
            v39 += 16;
            result = *&v41;
            *v40++ = v41;
          }

          a1[1] = v40;
          if (v19 != v38)
          {
            memmove(&__src[16 * a5], __src, v19 - v38);
          }

          if (v10 != v7)
          {
            do
            {
              v42 = *v6++;
              result = *&v42;
              *v7 = v42;
              v7 += 16;
            }

            while (v6 != v18);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + (&v10[-*a1] >> 4);
      if (v12 >> 60)
      {
        sub_2621CBEB0();
      }

      v13 = v9 - v11;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v15 = (__src - v11) >> 4;
      if (v14)
      {
        sub_2621CBF10(v14);
      }

      v27 = 16 * v15;
      v28 = 16 * a5;
      v29 = (16 * v15);
      do
      {
        v30 = *v6++;
        *v29++ = v30;
        v28 -= 16;
      }

      while (v28);
      memcpy((v27 + 16 * a5), __src, a1[1] - __src);
      v31 = *a1;
      v32 = v27 + 16 * a5 + a1[1] - v7;
      a1[1] = v7;
      v33 = v7 - v31;
      v34 = (v27 - (v7 - v31));
      memcpy(v34, v31, v33);
      v35 = *a1;
      *a1 = v34;
      a1[1] = v32;
      a1[2] = 0;
      if (v35)
      {

        operator delete(v35);
      }
    }
  }

  return result;
}

uint64_t sub_262306494(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_count(v4, v6, v7);
  if (v8 <= objc_msgSend_count(v5, v9, v10))
  {
    v14 = objc_msgSend_count(v4, v11, v12);
    v13 = v14 < objc_msgSend_count(v5, v15, v16);
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

void *sub_26230652C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v8 = **a4;
  v37[0] = a2;
  v32 = sub_262305CA8((v8 + 128), a2, v37)[5];
  v9 = **a4;
  v37[0] = a1;
  v10 = sub_262305CA8((v9 + 128), a1, v37);
  v11 = **a4;
  if (v32 <= v10[5])
  {
    v37[0] = a3;
    v34 = sub_262305CA8((v11 + 128), a3, v37)[5];
    v17 = **a4;
    v37[0] = a2;
    result = sub_262305CA8((v17 + 128), a2, v37);
    if (v34 > result[5])
    {
      v18 = *(a2 + 16);
      v19 = *a2;
      v20 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v20;
      *a3 = v19;
      *(a3 + 16) = v18;
      v21 = **a4;
      v37[0] = a2;
      v35 = sub_262305CA8((v21 + 128), a2, v37)[5];
      v22 = **a4;
      v37[0] = a1;
      result = sub_262305CA8((v22 + 128), a1, v37);
      if (v35 > result[5])
      {
        v23 = *(a1 + 16);
        v24 = *a1;
        v25 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v25;
        *a2 = v24;
        *(a2 + 16) = v23;
      }
    }
  }

  else
  {
    v37[0] = a3;
    v33 = sub_262305CA8((v11 + 128), a3, v37)[5];
    v12 = **a4;
    v37[0] = a2;
    result = sub_262305CA8((v12 + 128), a2, v37);
    if (v33 <= result[5])
    {
      v26 = *(a1 + 16);
      v27 = *a1;
      v28 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v28;
      *a2 = v27;
      *(a2 + 16) = v26;
      v29 = **a4;
      v37[0] = a3;
      v36 = sub_262305CA8((v29 + 128), a3, v37)[5];
      v30 = **a4;
      v37[0] = a2;
      result = sub_262305CA8((v30 + 128), a2, v37);
      if (v36 <= result[5])
      {
        return result;
      }

      v14 = *(a2 + 16);
      v15 = *a2;
      v31 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v31;
    }

    else
    {
      v14 = *(a1 + 16);
      v15 = *a1;
      v16 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v16;
    }

    *a3 = v15;
    *(a3 + 16) = v14;
  }

  return result;
}

__n128 sub_2623067B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  sub_26230652C(a1, a2, a3, a6);
  v12 = **a6;
  v54[0] = a4;
  v47 = sub_262305CA8((v12 + 128), a4, v54)[5];
  v13 = **a6;
  v54[0] = a3;
  if (v47 > sub_262305CA8((v13 + 128), a3, v54)[5])
  {
    v14 = *(a3 + 16);
    v15 = *a3;
    v16 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v16;
    *a4 = v15;
    *(a4 + 16) = v14;
    v17 = **a6;
    v54[0] = a3;
    v48 = sub_262305CA8((v17 + 128), a3, v54)[5];
    v18 = **a6;
    v54[0] = a2;
    if (v48 > sub_262305CA8((v18 + 128), a2, v54)[5])
    {
      v19 = *(a2 + 16);
      v20 = *a2;
      v21 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v21;
      *a3 = v20;
      *(a3 + 16) = v19;
      v22 = **a6;
      v54[0] = a2;
      v49 = sub_262305CA8((v22 + 128), a2, v54)[5];
      v23 = **a6;
      v54[0] = a1;
      if (v49 > sub_262305CA8((v23 + 128), a1, v54)[5])
      {
        v24 = *(a1 + 16);
        v25 = *a1;
        v26 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v26;
        *a2 = v25;
        *(a2 + 16) = v24;
      }
    }
  }

  v27 = **a6;
  v54[0] = a5;
  v50 = sub_262305CA8((v27 + 128), a5, v54)[5];
  v28 = **a6;
  v54[0] = a4;
  result.n128_u64[0] = sub_262305CA8((v28 + 128), a4, v54)[5];
  if (v50 > result.n128_u32[0])
  {
    v30 = *(a4 + 16);
    v31 = *a4;
    v32 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v32;
    *a5 = v31;
    *(a5 + 16) = v30;
    v33 = **a6;
    v54[0] = a4;
    v51 = sub_262305CA8((v33 + 128), a4, v54)[5];
    v34 = **a6;
    v54[0] = a3;
    result.n128_u64[0] = sub_262305CA8((v34 + 128), a3, v54)[5];
    if (v51 > result.n128_u32[0])
    {
      v35 = *(a3 + 16);
      v36 = *a3;
      v37 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v37;
      *a4 = v36;
      *(a4 + 16) = v35;
      v38 = **a6;
      v54[0] = a3;
      v52 = sub_262305CA8((v38 + 128), a3, v54)[5];
      v39 = **a6;
      v54[0] = a2;
      result.n128_u64[0] = sub_262305CA8((v39 + 128), a2, v54)[5];
      if (v52 > result.n128_u32[0])
      {
        v40 = *(a2 + 16);
        v41 = *a2;
        v42 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v42;
        *a3 = v41;
        *(a3 + 16) = v40;
        v43 = **a6;
        v54[0] = a2;
        v53 = sub_262305CA8((v43 + 128), a2, v54)[5];
        v44 = **a6;
        v54[0] = a1;
        result.n128_u64[0] = sub_262305CA8((v44 + 128), a1, v54)[5];
        if (v53 > result.n128_u32[0])
        {
          v45 = *(a1 + 16);
          result = *a1;
          v46 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v46;
          *a2 = result;
          *(a2 + 16) = v45;
        }
      }
    }
  }

  return result;
}

BOOL sub_262306B58(void *a1, void *a2, uint64_t **a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_26230652C(a1, (a1 + 3), (a2 - 3), a3);
        break;
      case 4:
        v24 = (a1 + 3);
        v25 = (a1 + 6);
        v26 = a2 - 3;
        sub_26230652C(a1, (a1 + 3), (a1 + 6), a3);
        v27 = **a3;
        *&v47 = v26;
        v44 = sub_262305CA8((v27 + 128), v26, &v47)[5];
        v28 = **a3;
        *&v47 = a1 + 6;
        if (v44 > sub_262305CA8((v28 + 128), a1 + 6, &v47)[5])
        {
          v29 = a1[8];
          v30 = *v25;
          v31 = v26[2];
          *v25 = *v26;
          a1[8] = v31;
          *v26 = v30;
          v26[2] = v29;
          v32 = **a3;
          *&v47 = a1 + 6;
          v45 = sub_262305CA8((v32 + 128), a1 + 6, &v47)[5];
          v33 = **a3;
          *&v47 = a1 + 3;
          if (v45 > sub_262305CA8((v33 + 128), a1 + 3, &v47)[5])
          {
            v34 = a1[5];
            v35 = *v24;
            *v24 = *v25;
            a1[5] = a1[8];
            *v25 = v35;
            a1[8] = v34;
            v36 = **a3;
            *&v47 = a1 + 3;
            v46 = sub_262305CA8((v36 + 128), a1 + 3, &v47)[5];
            v37 = **a3;
            *&v47 = a1;
            if (v46 > sub_262305CA8((v37 + 128), a1, &v47)[5])
            {
              v38 = a1[2];
              v39 = *a1;
              *a1 = *v24;
              a1[2] = a1[5];
              *v24 = v39;
              a1[5] = v38;
            }
          }
        }

        return 1;
      case 5:
        sub_2623067B4(a1, (a1 + 3), (a1 + 6), (a1 + 9), (a2 - 3), a3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 3;
    v8 = **a3;
    *&v47 = a2 - 3;
    v41 = sub_262305CA8((v8 + 128), a2 - 3, &v47)[5];
    v9 = **a3;
    *&v47 = a1;
    if (v41 > sub_262305CA8((v9 + 128), a1, &v47)[5])
    {
      v10 = a1[2];
      v11 = *a1;
      v12 = v7[2];
      *a1 = *v7;
      a1[2] = v12;
      *v7 = v11;
      v7[2] = v10;
    }

    return 1;
  }

LABEL_11:
  v13 = a1 + 6;
  sub_26230652C(a1, (a1 + 3), (a1 + 6), a3);
  v14 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = **a3;
    *&v47 = v14;
    v42 = sub_262305CA8((v17 + 128), v14, &v47)[5];
    v18 = **a3;
    *&v47 = v13;
    if (v42 > sub_262305CA8((v18 + 128), v13, &v47)[5])
    {
      v47 = *v14;
      v48 = v14[2];
      v14[1] = 0;
      v14[2] = 0;
      *v14 = 0;
      v19 = v15;
      do
      {
        v20 = (a1 + v19);
        if (*(a1 + v19 + 95) < 0)
        {
          operator delete(v20[9]);
        }

        *(v20 + 9) = *(v20 + 3);
        v20[11] = v20[8];
        *(v20 + 71) = 0;
        *(v20 + 48) = 0;
        if (v19 == -48)
        {
          v23 = a1;
          goto LABEL_22;
        }

        v21 = **a3;
        v49[0] = &v47;
        v43 = sub_262305CA8((v21 + 128), &v47, v49)[5];
        v22 = **a3;
        v49[0] = (a1 + v19 + 24);
        v19 -= 24;
      }

      while (v43 > sub_262305CA8((v22 + 128), v49[0], v49)[5]);
      v23 = a1 + v19 + 72;
      if (v23[23] < 0)
      {
        operator delete(*v23);
      }

LABEL_22:
      *v23 = v47;
      *(v23 + 2) = v48;
      if (++v16 == 8)
      {
        return v14 + 3 == a2;
      }
    }

    v13 = v14;
    v15 += 24;
    v14 += 3;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void sub_262306FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262306FE8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_262302974(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_262307118(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[4 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_2621C7F54(v10);
      }

      sub_2621CBEB0();
    }

    bzero(a1[1], 4 * v6);
    v11 = &v4[4 * v6];
  }

  a1[1] = v11;
}

void sub_262307E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (v16)
  {
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void sub_262308244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_262306FE8(va);

  _Unwind_Resume(a1);
}

void sub_2623082B8(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        std::string::operator=((v6 + 2), (v2 + 2));
        v6[5] = v2[5];
        v8 = *v6;
        sub_26230856C(a1, v6);
        v2 = *v2;
        if (v8)
        {
          v9 = v2 == 0;
        }

        else
        {
          v9 = 1;
        }

        v6 = v8;
      }

      while (!v9);
    }

    sub_2621CD6C0(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void sub_262308424(void *a1, void *a2)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_7;
  }

  for (i = 0; i != v4; ++i)
  {
    *(*a1 + 8 * i) = 0;
  }

  v6 = a1[2];
  a1[2] = 0;
  a1[3] = 0;
  if (v6)
  {
    while (a2)
    {
      v7 = a2[2];
      v6[2] = v7;
      v8 = *v6;
      v6[1] = v7;
      v9 = sub_2622954FC(a1, v7, v6 + 2);
      sub_262237850(a1, v6, v9);
      a2 = *a2;
      v6 = v8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    do
    {
      v10 = *v6;
      operator delete(v6);
      v6 = v10;
    }

    while (v10);
  }

  else
  {
LABEL_7:
    if (a2)
    {
      operator new();
    }
  }
}

void sub_262308528(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_26230856C(uint64_t a1, void *a2)
{
  v4 = sub_2621D1580((a2 + 2));
  a2[1] = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v5 = *(a1 + 8);
    }

    if (prime > v5)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      sub_2621C6A34();
    }

    if (prime < v5)
    {
      v12 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v5 < 3 || (v13 = vcnt_s8(v5), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
      {
        v12 = std::__next_prime(v12);
      }

      else
      {
        v14 = 1 << -__clz(v12 - 1);
        if (v12 >= 2)
        {
          v12 = v14;
        }
      }

      if (prime <= v12)
      {
        prime = v12;
      }

      if (prime >= v5)
      {
        v5 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v15 = *a1;
        *a1 = 0;
        if (v15)
        {
          operator delete(v15);
        }

        v5 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v5);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v4;
    if (v5 <= v4)
    {
      v18 = v4 % v5;
    }
  }

  else
  {
    v18 = (v5 - 1) & v4;
  }

  v19 = *(*a1 + 8 * v18);
  v28 = *a1;
  if (v19)
  {
    v20 = *v19;
    if (*v19)
    {
      v21 = 0;
      do
      {
        v22 = v20;
        v23 = v20[1];
        if (v17 > 1)
        {
          v24 = v23;
          if (v23 >= v5)
          {
            v24 = v23 % v5;
          }
        }

        else
        {
          v24 = v23 & (v5 - 1);
        }

        if (v24 != v18)
        {
          break;
        }

        v25 = v23 == v4 && sub_2621D19D0(v22 + 2, a2 + 2);
        if ((v21 & (v25 != (v21 & 1))) != 0)
        {
          break;
        }

        v21 |= v25 != (v21 & 1);
        v20 = *v22;
        v19 = v22;
      }

      while (*v22);
    }
  }

  v26 = a2[1];
  if (v17 > 1)
  {
    if (v26 >= v5)
    {
      v26 %= v5;
    }
  }

  else
  {
    v26 &= v5 - 1;
  }

  if (!v19)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v28[v26] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_65;
    }

    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

LABEL_64:
    *(*a1 + 8 * v27) = a2;
    goto LABEL_65;
  }

  *a2 = *v19;
  *v19 = a2;
  if (*a2)
  {
    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

    if (v27 != v26)
    {
      goto LABEL_64;
    }
  }

LABEL_65:
  ++*(a1 + 24);
}

id RSPointCloudToDictionary(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v2, v3);
  v5 = MEMORY[0x277CCABB0];
  v8 = objc_msgSend_count(v1, v6, v7);
  v10 = objc_msgSend_numberWithUnsignedInteger_(v5, v9, v8);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v11, v10, @"count");

  v14 = objc_msgSend_points(v1, v12, v13);
  v17 = objc_msgSend_points(v1, v15, v16);
  v20 = objc_msgSend_count(v1, v18, v19);
  v111 = 0;
  v112 = 0;
  v113 = 0;
  sub_26225172C(&v111, v14, (v17 + 16 * v20), (v17 + 16 * v20 - v14) >> 4);
  v21 = v111;
  v22 = v112;
  v23 = v112 - v111;
  sub_26220EDA4(&v109, ((v112 - v111) >> 3) + ((v112 - v111) >> 4));
  if (v22 != v21)
  {
    v25 = 0;
    v26 = v23 >> 4;
    if ((v23 >> 4) <= 1)
    {
      v26 = 1;
    }

    v27 = v21;
    do
    {
      v28 = v109 + v25;
      v29 = *v27;
      *(v28 + 2) = v27[2];
      *v28 = v29;
      v27 += 4;
      v25 += 12;
      --v26;
    }

    while (v26);
  }

  if (v110 == v109)
  {
    v30 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  else
  {
    v30 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v24, v109, v110 - v109);
  }

  v32 = v30;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v31, v30, @"points");

  v35 = objc_msgSend_semanticLabels(v1, v33, v34);
  v39 = objc_msgSend_count(v1, v36, v37);
  if (v35 && v39)
  {
    v40 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v38, v35, 4 * v39);
  }

  else
  {
    v40 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v42 = v40;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v41, v40, @"semanticLabels");

  v45 = objc_msgSend_semanticVotes(v1, v43, v44);
  v49 = objc_msgSend_count(v1, v46, v47);
  if (v45 && v49)
  {
    v50 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v48, v45, 8 * v49);
  }

  else
  {
    v50 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v52 = v50;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v51, v50, @"semanticVotes");

  v55 = objc_msgSend_colors(v1, v53, v54);
  v58 = objc_msgSend_colors(v1, v56, v57);
  v61 = objc_msgSend_count(v1, v59, v60);
  v106 = 0;
  v107 = 0;
  v108 = 0;
  sub_2621DDA38(&v106, v55, v58 + 16 * v61, (v58 + 16 * v61 - v55) >> 4);
  v62 = v106;
  v63 = v107;
  v64 = v107 - v106;
  sub_26220EDA4(&v104, ((v107 - v106) >> 3) + ((v107 - v106) >> 4));
  if (v63 != v62)
  {
    v66 = 0;
    v67 = v64 >> 4;
    if ((v64 >> 4) <= 1)
    {
      v67 = 1;
    }

    v68 = v62;
    do
    {
      v69 = v104 + v66;
      v70 = *v68;
      *(v69 + 2) = v68[2];
      *v69 = v70;
      v68 += 4;
      v66 += 12;
      --v67;
    }

    while (v67);
  }

  if (v105 == v104)
  {
    v71 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  else
  {
    v71 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v65, v104, v105 - v104);
  }

  v73 = v71;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v72, v71, @"colors");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v74 = v1;
    if (objc_msgSend_cameraPositions(v74, v75, v76))
    {
      v79 = objc_msgSend_cameraPositions(v74, v77, v78);
      v82 = objc_msgSend_cameraPositions(v74, v80, v81);
      v85 = objc_msgSend_count(v74, v83, v84);
      v101 = 0;
      v102 = 0;
      v103 = 0;
      sub_26225172C(&v101, v79, (v82 + 16 * v85), (v82 + 16 * v85 - v79) >> 4);
      v86 = v101;
      v87 = v102;
      v88 = v102 - v101;
      sub_26220EDA4(&__p, ((v102 - v101) >> 3) + ((v102 - v101) >> 4));
      if (v87 != v86)
      {
        v90 = 0;
        v91 = v88 >> 4;
        if ((v88 >> 4) <= 1)
        {
          v91 = 1;
        }

        v92 = v86;
        do
        {
          v93 = __p + v90;
          v94 = *v92;
          *(v93 + 2) = v92[2];
          *v93 = v94;
          v92 += 4;
          v90 += 12;
          --v91;
        }

        while (v91);
      }

      if (v100 == __p)
      {
        v95 = objc_alloc_init(MEMORY[0x277CBEA90]);
      }

      else
      {
        v95 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v89, __p, v100 - __p);
      }

      v97 = v95;
      objc_msgSend_setObject_forKeyedSubscript_(v4, v96, v95, @"cameraPositions");

      if (__p)
      {
        v100 = __p;
        operator delete(__p);
      }

      if (v86)
      {
        operator delete(v86);
      }
    }
  }

  if (v104)
  {
    v105 = v104;
    operator delete(v104);
  }

  if (v62)
  {
    operator delete(v62);
  }

  if (v109)
  {
    v110 = v109;
    operator delete(v109);
  }

  if (v21)
  {
    operator delete(v21);
  }

  return v4;
}

void sub_262308EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  v29 = v27;

  if (__p)
  {
    operator delete(__p);
  }

  if (v28)
  {
    operator delete(v28);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (v25)
  {
    operator delete(v25);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (v24)
  {
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

RSPointCloud *RSPointCloudFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [RSPointCloud alloc];
  v4 = objc_msgSend_initWithDictionary_(v2, v3, v1);

  return v4;
}

void sub_2623090B4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = RSCVPixelRotate;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void *sub_2623091D4(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  if (a1)
  {
    v5 = a3;
    v14.receiver = a1;
    v14.super_class = RSCVPixelRotate;
    v8 = objc_msgSendSuper2(&v14, sel_init);
    v9 = v8;
    if (v8)
    {
      *(v8 + 3) = a4;
      *(v8 + 4) = a5;
      *(v8 + 10) = v5;
      v15 = 0;
      v10 = VTImageRotationSessionCreate();
      v11 = v15;
      if (v10)
      {
        v11 = 0;
      }

      v9[2] = v11;
      if (MEMORY[0x282229FC0])
      {
        if (!SIPixelBufferPoolCreate())
        {
          v9 = v9;
          v12 = v9;
          goto LABEL_8;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = 0;
LABEL_8:

  return v12;
}

CVPixelBufferPoolRef *sub_2623092DC(CVPixelBufferPoolRef *pixelBufferOut, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (pixelBufferOut)
  {
    if (a2)
    {
      v3 = pixelBufferOut;
      v4 = pixelBufferOut + 6;
      if (pixelBufferOut[6] || !CVPixelBufferPoolCreatePixelBuffer(0, pixelBufferOut[1], v4))
      {
        if (!MEMORY[0x266727090](*(v3 + 2), a2))
        {
          return *v4;
        }
      }

      else
      {
        if (qword_27FF0C060 != -1)
        {
          dispatch_once(&qword_27FF0C060, &unk_2874EE100);
        }

        v5 = qword_27FF0C058;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v6 = objc_opt_class();
          v7 = NSStringFromClass(v6);
          v8 = NSStringFromSelector(sel_rotateImage_);
          v9 = 138412546;
          v10 = v7;
          v11 = 2112;
          v12 = v8;
          _os_log_error_impl(&dword_2621C3000, v5, OS_LOG_TYPE_ERROR, "[%@ %@]: Failure to create pixel buffer for rotation", &v9, 0x16u);
        }
      }
    }

    return 0;
  }

  return pixelBufferOut;
}

void sub_262309468(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = (v4 - *a1) >> 6;
    v9 = v8 + 1;
    if ((v8 + 1) >> 58)
    {
      sub_2621CBEB0();
    }

    v10 = v3 - v7;
    if (v10 >> 5 > v9)
    {
      v9 = v10 >> 5;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFC0)
    {
      v11 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 58))
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v12 = (v4 - *a1) >> 6;
    v13 = v8 << 6;
    v14 = *(a2 + 32);
    *(v13 + 16) = *(a2 + 16);
    *(v13 + 32) = v14;
    *v13 = &unk_2874EE868;
    *(v13 + 48) = &unk_2874EE848;
    *(v13 + 56) = *(a2 + 56);
    v6 = (v8 << 6) + 64;
    v15 = (v8 << 6) - (v12 << 6);
    if (v7 != v4)
    {
      v16 = 0;
      do
      {
        v17 = v15 + v16 * 8;
        *v17 = &unk_2874EE888;
        v18 = *&v7[v16 + 4];
        *(v17 + 16) = *&v7[v16 + 2];
        *(v17 + 32) = v18;
        *v17 = &unk_2874EE868;
        *(v17 + 48) = &unk_2874EE848;
        *(v17 + 56) = v7[v16 + 7];
        v16 += 8;
      }

      while (&v7[v16] != v4);
      v19 = v7;
      v20 = v7;
      do
      {
        v21 = *v20;
        v20 += 8;
        (*v21)();
        v19 += 8;
      }

      while (v20 != v4);
    }

    v22 = *a1;
    *a1 = v15;
    *(a1 + 1) = v6;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = &unk_2874EE888;
    v5 = *(a2 + 32);
    *(v4 + 16) = *(a2 + 16);
    *(v4 + 32) = v5;
    *v4 = &unk_2874EE868;
    *(v4 + 48) = &unk_2874EE848;
    *(v4 + 56) = *(a2 + 56);
    v6 = v4 + 64;
  }

  a1[1] = v6;
}

_OWORD *sub_26230974C(_OWORD *a1, int *a2, int *a3, int *a4)
{
  v5 = 0;
  v17[3] = *MEMORY[0x277D85DE8];
  a1[2] = 0u;
  v6 = 1;
  v7 = MEMORY[0x277D82670];
  *a1 = 0u;
  a1[1] = 0u;
  v8 = *a3;
  v17[0] = *a2;
  v17[1] = v8;
  v9 = MEMORY[0x277D82680];
  v17[2] = *a4;
  v15 = 0;
  do
  {
    v10 = v17[v5];
    if (v10 >= 0xBEBC200)
    {
      sub_2621D552C(v7, "runtime_err in ", 15);
      sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/../tensor/shape.hpp", 118);
      sub_2621D552C(v7, " ", 1);
      v11 = MEMORY[0x266727260](v7, 71);
      sub_2621D552C(v11, " ", 1);
      sub_2621D552C(v11, "Shape", 5);
      std::ios_base::getloc((v11 + *(*v11 - 24)));
      v12 = std::locale::use_facet(&v16, v9);
      (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&v16);
      std::ostream::put();
      std::ostream::flush();
      sub_262223C90("err", "shape[", &v15, "]", " is ", &v17[v5], " ,it should <= 6");
      std::ios_base::getloc((v7 + *(*v7 - 24)));
      v13 = std::locale::use_facet(&v16, v9);
      (v13->__vftable[2].~facet_0)(v13, 10);
      std::locale::~locale(&v16);
      std::ostream::put();
      std::ostream::flush();
    }

    v15 = v6;
    *(a1 + v5 * 8) = v10;
    ++v5;
    ++v6;
  }

  while (v5 != 3);
  return a1;
}

void sub_2623099DC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v25 = *MEMORY[0x277D85DE8];
  memset(v16, 0, sizeof(v16));
  if (a3 != 1 || a4)
  {
    if (!a3 && a4 == 1)
    {
      LODWORD(v19) = 1065353216;
      __src = xmmword_2623A86D0;
      v18 = unk_2623A86E0;
      sub_26225E46C(v16, &__src, &v19 + 4, 9uLL);
    }
  }

  else
  {
    LODWORD(v19) = 1065353216;
    __src = xmmword_2623A86AC;
    v18 = *algn_2623A86BC;
    sub_26225E46C(v16, &__src, &v19 + 4, 9uLL);
  }

  sub_262224008(v15, (a2 + 8));
  vDSP_f3x3(*(a2 + 144), *(a2 + 8), *(a2 + 16), v16[0], v15[18]);
  sub_262223F30(&v11, v15);
  __src = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  sub_262223F30(v23, &v11);
  v6 = v20;
  v7 = v21;
  __src = v20;
  v18 = v21;
  v8 = v22;
  v19 = v22;
  *a1 = &unk_2874EEB10;
  *(a1 + 8) = v6;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  *(a1 + 56) = v9;
  *(a1 + 64) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 24) = v7;
  *(a1 + 40) = v8;
  *(a1 + 104) = v10 * v9;
  *(a1 + 112) = 0;
  sub_2621D7174(v24, (a1 + 104));
}

void sub_26230A8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::__shared_weak_count *a51, uint64_t a52, uint64_t a53, void *__p)
{
  std::locale::~locale(&STACK[0x2E0]);
  sub_2621C57C8(&STACK[0x310]);
  v56 = *(v54 + 128);
  if (v56)
  {
    sub_2621D1B78(v56);
  }

  STACK[0x210] = &unk_2874EF0B8;
  if (STACK[0x290])
  {
    sub_2621D1B78(STACK[0x290]);
  }

  if (a31)
  {
    sub_2621D1B78(a31);
  }

  if (a51)
  {
    sub_2621D1B78(a51);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

RSTextCoachingSignal *sub_26230A9D4(void *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v44 = 0uLL;
  v45 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v43 = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v36 = 0u;
  v1 = a1;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v38, v46, 16);
  if (v5)
  {
    v6 = *v39;
    do
    {
      v7 = 0;
      do
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v38 + 1) + 8 * v7);
        if (objc_msgSend_type(v8, v3, v4, v36) == -1)
        {
          v37 = 0;
          sub_2621C8F2C(__p, &v37);
          v37 = 0;
          sub_2621C8F2C(&v44, &v37);
        }

        else if (objc_msgSend_type(v8, v9, v10) == 3 || objc_msgSend_type(v8, v11, v12) == 1 || objc_msgSend_type(v8, v11, v12) == 2 || objc_msgSend_type(v8, v11, v12) == 4 || objc_msgSend_type(v8, v11, v12) == 5)
        {
          objc_msgSend_score(v8, v11, v12);
          v37 = v13;
          sub_2621C8F2C(&v44, &v37);
          v37 = 0;
          sub_2621C8F2C(__p, &v37);
        }

        else if (!objc_msgSend_type(v8, v11, v12))
        {
          v37 = 0;
          sub_2621C8F2C(&v44, &v37);
          objc_msgSend_score(v8, v14, v15);
          v37 = v16;
          sub_2621C8F2C(__p, &v37);
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v3, &v38, v46, 16);
      v5 = v17;
    }

    while (v17);
    v36 = v44;
    v5 = v44;
  }

  if (v36 == *(&v36 + 1) || (v19 = __p[0], __p[0] == __p[1]))
  {
    v28 = objc_alloc_init(RSTextCoachingSignal);
    v19 = __p[0];
    if (!__p[0])
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v20 = 0.0;
  v21 = v36;
  do
  {
    v22 = *v21++;
    *&v20 = *&v20 + v22;
  }

  while (v21 != *(&v36 + 1));
  if (*&v20 <= 0.0)
  {
    v30 = (__p[0] + 4);
    if (__p[0] + 4 == __p[1])
    {
      v31 = __p[0];
    }

    else
    {
      LODWORD(v20) = *__p[0];
      v31 = __p[0];
      v32 = (__p[0] + 4);
      do
      {
        v33 = *v32++;
        v34 = v33;
        if (v33 < *&v20)
        {
          *&v20 = v34;
          v31 = v30;
        }

        v30 = v32;
      }

      while (v32 != __p[1]);
    }

    v35 = objc_msgSend_objectAtIndexedSubscript_(v1, v18, (v31 - __p[0]) >> 2, v20, v36);
  }

  else
  {
    v23 = (v36 + 4);
    if (v36 + 4 == *(&v36 + 1))
    {
      v24 = v36;
    }

    else
    {
      LODWORD(v20) = *v36;
      v24 = v36;
      v25 = (v36 + 4);
      do
      {
        v26 = *v25++;
        v27 = v26;
        if (*&v20 < v26)
        {
          *&v20 = v27;
          v24 = v23;
        }

        v23 = v25;
      }

      while (v25 != *(&v36 + 1));
    }

    v35 = objc_msgSend_objectAtIndexedSubscript_(v1, v18, (v24 - v36) >> 2, v20, v36);
  }

  v28 = v35;
  if (v19)
  {
LABEL_32:
    operator delete(v19);
  }

LABEL_33:
  if (v5)
  {
    operator delete(v5);
  }

  return v28;
}

void sub_26230AD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26230AD68(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    free(v2);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    free(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    free(v4);
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    free(v5);
    v6 = *(a1 + 40);
    *(a1 + 48) = 0u;
    if (v6)
    {
      free(v6);
      *(a1 + 40) = 0;
    }
  }

  else
  {
    *(a1 + 48) = 0;
  }

  *(a1 + 32) = 0;
  v7 = *(a1 + 24);
  if (v7)
  {
    free(v7);
    *(a1 + 24) = 0;
  }

  *(a1 + 16) = 0;
  v8 = *(a1 + 8);
  if (v8)
  {
    free(v8);
    *(a1 + 8) = 0;
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_26230AE1C(uint64_t a1)
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
    v5 = 25;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 51;
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

long double sub_26230AEE8(unsigned int *a1, uint64_t a2)
{
  if (!*(a1 + 1) || !*(a2 + 8))
  {
    v3 = 0;
    v4 = 0;
    goto LABEL_7;
  }

  v3 = *a1;
  v4 = *(a2 + 4);
  v5 = v4 * *a1;
  if (!v5)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v6 = 8 * v5;
  v7 = malloc_type_malloc(v6, 0x100004000313F17uLL);
  v8 = v7;
  if (v7)
  {
    bzero(v7, v6);
    cblas_dgemm_NEWLAPACK();
  }

LABEL_8:
  v9 = (v4 * v3);
  if (!v9)
  {
    v11 = 0;
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v10 = malloc_type_malloc(8 * v9, 0x100004000313F17uLL);
  v11 = v10;
  if (v10)
  {
    bzero(v10, 8 * v9);
  }

  if (v8)
  {
LABEL_14:
    v12 = *(a1 + 3);
    if (v12 && v11)
    {
      vDSP_vaddD(v8, 1, v12, 1, v11, 1, v9);
    }

    free(v8);
  }

LABEL_18:
  if (v9 >= 1)
  {
    v13 = v11;
    do
    {
      v14 = *v13;
      if (*v13 < 0.0)
      {
        v14 = 0.0;
      }

      *v13++ = v14;
      --v9;
    }

    while (v9);
  }

  if (*(a1 + 5))
  {
    v15 = v11 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
    v4 = 0;
LABEL_32:
    v19 = 0;
    goto LABEL_33;
  }

  v16 = a1[8];
  if (!(v16 * v4))
  {
    goto LABEL_32;
  }

  v17 = 8 * (v16 * v4);
  v18 = malloc_type_malloc(v17, 0x100004000313F17uLL);
  v19 = v18;
  if (v18)
  {
    bzero(v18, v17);
    cblas_dgemm_NEWLAPACK();
  }

LABEL_33:
  v20 = v4 * v16;
  if (!(v4 * v16))
  {
    v22 = 0;
    if (!v19)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v21 = malloc_type_malloc(8 * v20, 0x100004000313F17uLL);
  v22 = v21;
  if (v21)
  {
    bzero(v21, 8 * v20);
  }

  if (v19)
  {
LABEL_39:
    v23 = *(a1 + 7);
    if (v23 && v22)
    {
      vDSP_vaddD(v19, 1, v23, 1, v22, 1, v20);
    }
  }

LABEL_42:
  __C = 0.0;
  vDSP_sveD(v22, 1, &__C, v20);
  v24 = __C;
  if (v22)
  {
    free(v22);
  }

  if (v19)
  {
    free(v19);
  }

  if (v11)
  {
    free(v11);
  }

  v25 = exp(-v24);
  v26 = -log(v25 + 1.0);

  return exp(v26);
}

float *sub_26230B27C(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v6 = a2;
  if (objc_msgSend_vioTrackingState(v6, v7, v8))
  {
    v11 = objc_msgSend_date(MEMORY[0x277CBEAA8], v9, v10);
    v12 = *(a1 + 192);
    *(a1 + 192) = v11;
  }

  if (*(a1 + 192) && (objc_msgSend_date(MEMORY[0x277CBEAA8], v9, v10), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_timeIntervalSinceDate_(v13, v14, *(a1 + 192)), v16 = v15, v13, v16 < 1.0) || (objc_msgSend_rawFeaturePoints(v6, v9, v10), v17 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend_count(v17, v18, v19), v17, v20 <= 0x31))
  {
    v21 = [RSTextCoachingSignal alloc];
    if (v21)
    {
      goto LABEL_29;
    }

    goto LABEL_52;
  }

  v22 = v6;
  v86 = *(a1 + 176);
  v87 = *(a1 + 160);
  v25 = objc_msgSend_depthBuffer(v22, v23, v24);
  v27 = v25;
  __asm { FMOV            V0.2S, #-1.0 }

  v89 = _D0;
  if (v25)
  {
    Width = CVPixelBufferGetWidth(v25);
    Height = CVPixelBufferGetHeight(v27);
    if (Height * Width)
    {
      v93.columns[0] = *a3;
      v93.columns[1] = *(a3 + 16);
      v84 = v93.columns[1].i32[1];
      v85 = *a3;
      v93.columns[0].i32[3] = 0;
      v93.columns[1].i32[3] = 0;
      v93.columns[2] = *(a3 + 32);
      v93.columns[2].i32[3] = 0;
      v93.columns[3] = *(MEMORY[0x277D860B8] + 48);
      v94 = __invert_f4(v93);
      v79 = v94.columns[0];
      v80 = v94.columns[1];
      v81 = v94.columns[3];
      v82 = v94.columns[2];
      v36 = *(a1 + 128);
      v35 = *(a1 + 120);
      v37 = ((v36 - v35) << 6) - 1;
      v38 = a1;
      v94.columns[0] = vld1q_dup_f32(v38++);
      v83 = v94.columns[0];
      v39 = vld1_dup_f32(v38);
      if (v36 == v35)
      {
        v37 = 0;
      }

      v40 = *(a1 + 152) + *(a1 + 144);
      if (v37 == v40)
      {
        sub_262231E24((a1 + 112));
        v35 = *(a1 + 120);
        v40 = *(a1 + 152) + *(a1 + 144);
      }

      v41 = vaddq_f32(v81, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v79, vcvts_n_f32_s64(Width, 1uLL) * *&a4), v80, vcvts_n_f32_s64(Height, 1uLL) * *&a4), v82, *&a4));
      _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL), vnegq_f32(v86)), v41, vextq_s8(vuzp1q_s32(v86, v86), v86, 0xCuLL));
      v43 = vaddq_f32(v87, vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL));
      *_Q3.i32 = *&a4 * *&a4;
      *v41.i8 = vmla_f32(vmul_laneq_f32(vdiv_f32(vmul_f32(*v41.i8, vneg_f32(__PAIR64__(v84, v85.u32[0]))), vdup_lane_s32(*_Q3.i8, 0)), v43, 2), *v43.f32, vdiv_f32(__PAIR64__(v84, v85.u32[0]), *&vdupq_lane_s32(*&a4, 0)));
      v44 = vdivq_f32(v87, v83);
      v44.i32[3] = 0;
      v45 = vmaxnmq_f32(v44, xmmword_2623A7BF0);
      v45.i32[3] = 0;
      v46 = vminnmq_f32(v45, xmmword_2623A7C00);
      v47 = vmulq_f32(v46, v46);
      v43.f32[0] = vaddv_f32(*v47.i8);
      __asm { FMOV            V3.2S, #1.0 }

      *v41.i8 = vminnm_f32(vmaxnm_f32(vdiv_f32(*v41.i8, v39), v89), *_Q3.i8);
      *v41.i8 = vmul_f32(*v41.i8, *v41.i8);
      v26 = vzip1_s32(*&vextq_s8(v47, v47, 8uLL), *v41.i8);
      v41.i32[0] = v43.i32[0];
      *(*(v35 + ((v40 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v40 & 0x1FF)) = vsqrt_f32(vadd_f32(v26, *v41.i8));
      ++*(a1 + 152);
    }
  }

  v48 = *(a1 + 152);
  if (v48 < 2)
  {
LABEL_18:
    if (!v48)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  --v48;
  v49 = *(a1 + 144) + 1;
  *(a1 + 144) = v49;
  *(a1 + 152) = v48;
  if (v49 >= 0x400)
  {
    operator delete(**(a1 + 120));
    *(a1 + 120) += 8;
    v48 = *(a1 + 152);
    *(a1 + 144) -= 512;
    goto LABEL_18;
  }

LABEL_19:
  v50 = *(a1 + 120);
  v51 = 0;
  if (*(a1 + 128) != v50)
  {
    v52 = *(a1 + 144);
    v53 = (v50 + 8 * (v52 >> 9));
    v54 = *v53;
    v55 = &(*v53)[v52 & 0x1FF];
    v56 = *(v50 + (((v52 + v48) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v52 + v48) & 0x1FF);
    while (v55 != v56)
    {
      v57 = *v55++;
      v26 = v57;
      if (v55 - v54 == 4096)
      {
        v58 = v53[1];
        ++v53;
        v54 = v58;
        v55 = v58;
      }

      v51 = vadd_f32(v51, v26);
    }
  }

  *v26.i32 = v48;
  v89 = vdiv_f32(v51, vdup_lane_s32(v26, 0));
LABEL_26:

  if (v89.f32[0] >= 0.0 || v89.f32[1] >= 0.0)
  {
    v91[0] = 0x100000002;
    v61 = malloc_type_malloc(0x10uLL, 0x100004000313F17uLL);
    v62 = v61;
    v91[1] = v61;
    if (v61)
    {
      v61->f64[0] = 0.0;
      v61->f64[1] = 0.0;
    }

    *v61 = vcvtq_f64_f32(v89);
    v63 = sub_26230AEE8((a1 + 200), v91);
    v90 = v63;
    sub_26230B7F0((a1 + 64), &v90);
    v64 = *(a1 + 104);
    if (v64 >= 4)
    {
      ++*(a1 + 96);
      *(a1 + 104) = v64 - 1;
      sub_26230B878(a1 + 64);
    }

    v65 = *(a1 + 72);
    if (*(a1 + 80) == v65)
    {
      v66 = *(a1 + 104);
    }

    else
    {
      v67 = *(a1 + 96);
      v66 = *(a1 + 104);
      v68 = (v65 + 8 * (v67 >> 10));
      v69 = *v68;
      v70 = &(*v68)[v67 & 0x3FF];
      v71 = *(v65 + (((v66 + v67) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v66 + v67) & 0x3FF);
      if (v70 != v71)
      {
        v72 = 0.0;
        do
        {
          v73 = *v70++;
          v74 = v73;
          if (v70 - v69 == 4096)
          {
            v75 = v68[1];
            ++v68;
            v69 = v75;
            v70 = v75;
          }

          v72 = v72 + v74;
        }

        while (v70 != v71);
        goto LABEL_46;
      }
    }

    v72 = 0.0;
LABEL_46:
    v76 = v72 / v66;
    if (v76 <= *(a1 + 8))
    {
      v77 = [RSTextCoachingSignal alloc];
      v78 = 0;
      v76 = 1.0 - v76;
    }

    else
    {
      v77 = [RSTextCoachingSignal alloc];
      v78 = 1;
    }

    if (v77)
    {
      v59 = sub_2622E743C(v77, v78, v76);
    }

    else
    {
      v59 = 0;
    }

    free(v62);
    goto LABEL_30;
  }

  v21 = [RSTextCoachingSignal alloc];
  if (v21)
  {
LABEL_29:
    v59 = sub_2622E743C(v21, 0, 1.0);
    goto LABEL_30;
  }

LABEL_52:
  v59 = 0;
LABEL_30:

  return v59;
}

float sub_26230B7F0(unint64_t *a1, float *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = a1[5];
  v8 = v7 + a1[4];
  if (v6 == v8)
  {
    sub_26230B8CC(a1);
    v5 = a1[1];
    v7 = a1[5];
    v8 = a1[4] + v7;
  }

  result = *a2;
  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  a1[5] = v7 + 1;
  return result;
}

void sub_26230B878(uint64_t a1)
{
  if (*(a1 + 32) >= 0x800uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }
}

void sub_26230B8CC(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v5 = a1[3];
    v6 = v5 - *a1;
    if (a1[2] - a1[1] < v6)
    {
      operator new();
    }

    v7 = v6 >> 2;
    if (v5 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    sub_2622317F8(v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  v9 = *v4;
  a1[1] = (v4 + 1);
  sub_262231BA4(a1, &v9);
}

void sub_26230BD50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

double sub_26230BD80(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  *(a1 + 56) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 32);
      v2 = (*(a1 + 24) + 8);
      *(a1 + 24) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 25;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 51;
  }

  *(a1 + 48) = v6;
LABEL_8:
  v7 = *(a1 + 120);
  v8 = *(a1 + 128);
  *(a1 + 152) = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = *(a1 + 128);
      v7 = (*(a1 + 120) + 8);
      *(a1 + 120) = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 256;
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_15;
    }

    v11 = 512;
  }

  *(a1 + 144) = v11;
LABEL_15:
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  *(a1 + 104) = 0;
  v14 = (v13 - v12) >> 3;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v12);
      v15 = *(a1 + 80);
      v12 = (*(a1 + 72) + 8);
      *(a1 + 72) = v12;
      v14 = (v15 - v12) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v16 = 512;
    goto LABEL_21;
  }

  if (v14 == 2)
  {
    v16 = 1024;
LABEL_21:
    *(a1 + 96) = v16;
  }

  v17 = *(a1 + 192);
  *(a1 + 192) = 0;

  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return result;
}

float *sub_26230BEC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_colorBuffer(v3, v4, v5);
  Width = CVPixelBufferGetWidth(v6);
  v10 = objc_msgSend_colorBuffer(v3, v8, v9);
  Height = CVPixelBufferGetHeight(v10);
  v14 = objc_msgSend_colorBuffer(v3, v12, v13);
  sub_262236864(&pixelBuffer, v14);
  if (Height < 1)
  {
    v18.f64[0] = 0.0;
    v17 = 0uLL;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0uLL;
    v18 = vdupq_n_s64(0x406FE00000000000uLL);
    do
    {
      v19 = v16;
      if (Width >= 1)
      {
        v20 = 0;
        v21 = v19;
        v22 = v17;
        do
        {
          v23 = v20;
          v24 = 0;
          v25 = v20;
          if ((v25 & 0x80000000) == 0 && v85 > v25 && (v21 & 0x80000000) == 0 && SHIDWORD(v85) > v21)
          {
            v17.i32[0] = *(v86 + v87 * v21 + 4 * v25);
            v24 = vmovl_u8(*v17.f32).u64[0];
          }

          v26 = vand_s8(*&vmovl_u16(v24), 0xFF000000FFLL);
          v27.i64[0] = v26.u32[0];
          v27.i64[1] = v26.u32[1];
          v17 = vaddq_f64(vdivq_f64(vcvtq_f64_u64(v27), v18), vcvtq_f64_f32(*v22.f32));
          *v17.f32 = vcvt_f32_f64(v17);
          v28 = v24.u8[4] / 255.0 + v22.f32[2];
          v17.f32[2] = v28;
          ++v15;
          v20 = (v23 + 7.5);
          v22 = v17;
        }

        while (Width > v20);
      }

      v16 = (v19 + 7.5);
    }

    while (Height > v16);
    *v18.f64 = v15;
  }

  v29 = vdivq_f32(v17, vdupq_lane_s32(*&v18.f64[0], 0)).u64[0];
  v30 = v17.f32[2];
  if (*&v29 <= 0.04045)
  {
    v31 = *&v29 / 12.92;
  }

  else
  {
    v77 = LODWORD(v18.f64[0]);
    v76 = HIDWORD(v29);
    v31 = powf((*&v29 + 0.055) / 1.055, 2.4);
    HIDWORD(v29) = v76;
    LODWORD(v18.f64[0]) = v77;
  }

  v80 = v31;
  v32 = v30 / *v18.f64;
  if (*(&v29 + 1) <= 0.04045)
  {
    v33 = *(&v29 + 1) / 12.92;
  }

  else
  {
    v33 = powf((*(&v29 + 1) + 0.055) / 1.055, 2.4);
  }

  if (v32 <= 0.04045)
  {
    v34 = v32 / 12.92;
  }

  else
  {
    v78 = v33;
    v34 = powf((v32 + 0.055) / 1.055, 2.4);
    v33 = v78;
  }

  v35 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_2623A7C10, v80), xmmword_2623A7C20, v33), xmmword_2623A7C30, v34);
  v36 = vmulq_f32(v35, xmmword_2623A7C40);
  v81 = v36;
  if (v36.f32[0] <= 0.008856)
  {
    v38 = (v36.f32[0] * 7.787) + 0.13793;
  }

  else
  {
    v37 = pow(v36.f32[0], 0.333333333);
    v36 = v81;
    v38 = v37;
  }

  if (v36.f32[1] <= 0.008856)
  {
    v40 = (v36.f32[1] * 7.787) + 0.13793;
  }

  else
  {
    v39 = pow(v36.f32[1], 0.333333333);
    v36 = v81;
    v40 = v39;
  }

  if (v36.f32[2] <= 0.008856)
  {
    v41 = (v36.f32[2] * 7.787) + 0.13793;
  }

  else
  {
    v41 = pow(v36.f32[2], 0.333333333);
  }

  v35.f32[0] = (v40 * 116.0) + -16.0;
  v36.i32[0] = 1076048691;
  v42.i32[0] = vmul_f32(*v35.f32, *v36.f32).u32[0];
  v35.f32[1] = (v38 - v40) * 500.0;
  v42.i32[1] = vadd_f32(*&v35, 0x4300000043000000).i32[1];
  *v43.i8 = vcvt_s32_f32(vrnda_f32(v42));
  v43.i64[1] = llroundf(((v40 - v41) * 200.0) + 128.0);
  v44 = vmaxq_s32(v43, 0);
  v44.i32[3] = 0;
  v45 = vminq_s32(v44, xmmword_2623A7C50).u8[0];
  v46 = *(a1 + 96);
  if (v46)
  {
    v47 = *(a1 + 64);
    v48 = *(a1 + 88);
    v49 = (v47 + 8 * (v48 >> 10));
    v50 = *v49;
    v51 = &(*v49)[v48 & 0x3FF];
    v52 = *(v47 + (((v48 + v46) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v48 + v46) & 0x3FF);
    if (v51 != v52)
    {
      v53 = &(*v49)[v48 & 0x3FF];
      while (1)
      {
        if (++v53 - v50 == 4096)
        {
          v54 = v49[1];
          ++v49;
          v50 = v54;
          v53 = v54;
        }

        if (v53 == v52)
        {
          break;
        }

        if (*v51 < *v53)
        {
          v51 = v53;
        }
      }
    }

    v55 = *v51;
  }

  else
  {
    v55 = 0.5;
  }

  v79 = v55;
  v82 = (v45 / 255.0) / 1.5;
  *(a1 + 104) = v82;
  *(a1 + 108) = v55;
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);

  pixelBuffer = 0x100000002;
  v56 = malloc_type_malloc(0x10uLL, 0x100004000313F17uLL);
  v57 = v56;
  v85 = v56;
  if (v56)
  {
    v56->f64[0] = 0.0;
    v56->f64[1] = 0.0;
  }

  *v56 = vcvtq_f64_f32(__PAIR64__(LODWORD(v79), LODWORD(v82)));
  v58 = sub_26230AEE8((a1 + 112), &pixelBuffer);
  v83 = v58;
  sub_26230B7F0((a1 + 8), &v83);
  v59 = *(a1 + 48);
  if (v59 >= 2)
  {
    ++*(a1 + 40);
    *(a1 + 48) = v59 - 1;
    sub_26230B878(a1 + 8);
  }

  v60 = *(a1 + 16);
  if (*(a1 + 24) == v60)
  {
    v61 = *(a1 + 48);
    goto LABEL_55;
  }

  v62 = *(a1 + 40);
  v61 = *(a1 + 48);
  v63 = (v60 + 8 * (v62 >> 10));
  v64 = *v63;
  v65 = &(*v63)[v62 & 0x3FF];
  v66 = *(v60 + (((v61 + v62) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v61 + v62) & 0x3FF);
  if (v65 == v66)
  {
LABEL_55:
    v67 = 0.0;
    goto LABEL_56;
  }

  v67 = 0.0;
  do
  {
    v68 = *v65++;
    v69 = v68;
    if (v65 - v64 == 4096)
    {
      v70 = v63[1];
      ++v63;
      v64 = v70;
      v65 = v70;
    }

    v67 = v67 + v69;
  }

  while (v65 != v66);
LABEL_56:
  v71 = v67 / v61;
  if (v71 > *(a1 + 4) || v82 < 0.12)
  {
    v72 = [RSTextCoachingSignal alloc];
    v73 = 3;
  }

  else
  {
    v72 = [RSTextCoachingSignal alloc];
    v73 = 0;
    v71 = 1.0 - v71;
  }

  if (v72)
  {
    v74 = sub_2622E743C(v72, v73, v71);
  }

  else
  {
    v74 = 0;
  }

  free(v57);

  return v74;
}

double sub_26230C4DC(void *a1)
{
  v2 = a1[8];
  v3 = a1[9];
  a1[12] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[9];
      v2 = (a1[8] + 8);
      a1[8] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 1024;
  }

  a1[11] = v6;
LABEL_8:
  v7 = a1[2];
  v8 = a1[3];
  a1[6] = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = a1[3];
      v7 = (a1[2] + 8);
      a1[2] = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 512;
    goto LABEL_14;
  }

  if (v9 == 2)
  {
    v11 = 1024;
LABEL_14:
    a1[5] = v11;
  }

  result = 0.0000305175853;
  a1[13] = 0x3F0000003F000000;
  return result;
}

float sub_26230C5BC(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(&xmmword_27FF0C2D0 + 1);
  v2 = xmmword_27FF0C2D0;
  v3 = *(&xmmword_27FF0C2D0 + 1) - xmmword_27FF0C2D0;
  if (*(&xmmword_27FF0C2D0 + 1) == xmmword_27FF0C2D0)
  {
    return 0.0;
  }

  sub_26230C854(v13, a1);
  v5 = (v3 >> 2) >> 1;
  v6 = (v2 + 4 * v5);
  if (v6 != v1)
  {
    sub_26230C8EC(v2, v6, v1, v13);
  }

  sub_26230C710(v13);
  v7 = xmmword_27FF0C2D0;
  v8 = *(xmmword_27FF0C2D0 + 4 * v5);
  if ((v3 & 4) == 0)
  {
    v9 = *(&xmmword_27FF0C2D0 + 1);
    sub_26230C854(v12, a1);
    v10 = (4 * v5 + v7 - 4);
    if (v10 != v9)
    {
      sub_26230C8EC(v7, v10, v9, v12);
    }

    sub_26230C710(v12);
  }

  return v8;
}

void sub_26230C6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_26230C710(va);
  _Unwind_Resume(a1);
}

uint64_t sub_26230C710(uint64_t a1)
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

uint64_t sub_26230C7B8(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2874EE8A8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_26230C854(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_26230C8EC(uint64_t result, float *a2, float *a3, uint64_t a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v5 = a3;
  v7 = result;
  while (1)
  {
    v8 = v5 - v7;
    if (v8 < 2)
    {
      return result;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 2)
    {
      result = sub_26230CD70(*(a4 + 24), *(v5 - 1), *v7);
      if (!result)
      {
        return result;
      }

      v38 = *v7;
      *v7 = *(v5 - 1);
      goto LABEL_84;
    }

    if (v8 <= 7)
    {
      while (v7 != v5 - 1)
      {
        v39 = v7++;
        if (v39 != v5 && v7 != v5)
        {
          v40 = v7;
          v41 = v39;
          v42 = v7;
          do
          {
            v43 = *v42++;
            result = sub_26230CD70(*(a4 + 24), v43, *v41);
            if (result)
            {
              v41 = v40;
            }

            v40 = v42;
          }

          while (v42 != v5);
          if (v41 != v39)
          {
            v44 = *v39;
            *v39 = *v41;
            *v41 = v44;
          }
        }
      }

      return result;
    }

    v9 = &v7[(v5 - v7) >> 3];
    v10 = sub_26230CD70(*(a4 + 24), *v9, *v7);
    v11 = v5 - 1;
    v12 = sub_26230CD70(*(a4 + 24), *(v5 - 1), *v9);
    if (v10)
    {
      v13 = *v7;
      if (v12)
      {
        *v7 = *v11;
        *v11 = v13;
      }

      else
      {
        *v7 = *v9;
        *v9 = v13;
        if (sub_26230CD70(*(a4 + 24), *v11, v13))
        {
          v16 = *v9;
          *v9 = *v11;
          *v11 = v16;
        }
      }

LABEL_15:
      v17 = 1;
      goto LABEL_17;
    }

    if (v12)
    {
      v14 = *v9;
      *v9 = *v11;
      *v11 = v14;
      if (sub_26230CD70(*(a4 + 24), *v9, *v7))
      {
        v15 = *v7;
        *v7 = *v9;
        *v9 = v15;
      }

      goto LABEL_15;
    }

    v17 = 0;
LABEL_17:
    result = sub_26230CD70(*(a4 + 24), *v7, *v9);
    if (result)
    {
LABEL_25:
      v22 = v7 + 1;
      if (v7 + 1 >= v11)
      {
        v24 = v7 + 1;
      }

      else
      {
        v23 = v7 + 1;
        while (1)
        {
          do
          {
            v24 = v23;
            v25 = *v23++;
          }

          while ((sub_26230CD70(*(a4 + 24), v25, *v9) & 1) != 0);
          do
          {
            v26 = *--v11;
            result = sub_26230CD70(*(a4 + 24), v26, *v9);
          }

          while (!result);
          if (v24 >= v11)
          {
            break;
          }

          v27 = *v24;
          *v24 = *v11;
          *v11 = v27;
          ++v17;
          if (v9 == v24)
          {
            v9 = v11;
          }
        }
      }

      if (v24 != v9)
      {
        result = sub_26230CD70(*(a4 + 24), *v9, *v24);
        if (result)
        {
          v28 = *v24;
          *v24 = *v9;
          *v9 = v28;
          ++v17;
        }
      }

      if (v24 == a2)
      {
        return result;
      }

      if (!v17)
      {
        if (v24 <= a2)
        {
          v31 = v24 + 1;
          while (v31 != v5)
          {
            result = sub_26230CD70(*(a4 + 24), *v31, *(v31 - 1));
            ++v31;
            if (result)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          while (v22 != v24)
          {
            result = sub_26230CD70(*(a4 + 24), *v22, *(v22 - 1));
            ++v22;
            if (result)
            {
              goto LABEL_39;
            }
          }
        }

        return result;
      }

LABEL_39:
      if (v24 <= a2)
      {
        v29 = v24 + 1;
      }

      else
      {
        v5 = v24;
        v29 = v7;
      }
    }

    else
    {
      v18 = v5 - 2;
      while (v18 != v7)
      {
        v19 = v18;
        v20 = *v18--;
        result = sub_26230CD70(*(a4 + 24), v20, *v9);
        if (result)
        {
          v21 = *v7;
          *v7 = *v19;
          *v19 = v21;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          v11 = v19;
          goto LABEL_25;
        }
      }

      v30 = v7 + 1;
      result = sub_26230CD70(*(a4 + 24), *v7, *v11);
      if ((result & 1) == 0)
      {
        while (v30 != v11)
        {
          result = sub_26230CD70(*(a4 + 24), *v7, *v30);
          if (result)
          {
            v32 = *v30;
            *v30++ = *v11;
            *v11 = v32;
            goto LABEL_55;
          }

          ++v30;
        }

        return result;
      }

LABEL_55:
      if (v30 == v11)
      {
        return result;
      }

      while (1)
      {
        do
        {
          v29 = v30;
          v33 = *v30++;
        }

        while (!sub_26230CD70(*(a4 + 24), *v7, v33));
        do
        {
          v34 = *--v11;
          result = sub_26230CD70(*(a4 + 24), *v7, v34);
        }

        while ((result & 1) != 0);
        if (v29 >= v11)
        {
          break;
        }

        v35 = *v29;
        *v29 = *v11;
        *v11 = v35;
      }

      if (v29 > a2)
      {
        return result;
      }
    }

    v7 = v29;
    if (v5 == a2)
    {
      return result;
    }
  }

  v36 = sub_26230CD70(*(a4 + 24), v7[1], *v7);
  result = sub_26230CD70(*(a4 + 24), *(v5 - 1), v7[1]);
  if ((v36 & 1) == 0)
  {
    if (result)
    {
      v45 = *(v7 + 1);
      v7[1] = *(v5 - 1);
      *(v5 - 1) = v45;
      result = sub_26230CD70(*(a4 + 24), v7[1], *v7);
      if (result)
      {
        *v7 = vrev64_s32(*v7);
      }
    }

    return result;
  }

  v37 = *v7;
  if (result)
  {
    *v7 = *(v5 - 1);
    *(v5 - 1) = v37;
    return result;
  }

  *v7 = v7[1];
  v7[1] = v37;
  result = sub_26230CD70(*(a4 + 24), *(v5 - 1), v37);
  if (result)
  {
    v38 = v7[1];
    v7[1] = *(v5 - 1);
LABEL_84:
    *(v5 - 1) = v38;
  }

  return result;
}

uint64_t sub_26230CD70(uint64_t a1, float a2, float a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    sub_2621C7250();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t sub_26230CE64(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

float *sub_26230CE98(uint64_t a1, void *a2)
{
  v72[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_msgSend_depthBuffer(v3, v4, v5))
  {
    v8 = objc_msgSend_depthBuffer(v3, v6, v7);
    Width = CVPixelBufferGetWidth(v8);
    Height = CVPixelBufferGetHeight(v8);
    v11 = Height;
    if (Height * Width)
    {
      CVPixelBufferLockBaseAddress(v8, 1uLL);
      BaseAddress = CVPixelBufferGetBaseAddress(v8);
      BytesPerRow = CVPixelBufferGetBytesPerRow(v8);
      v14 = (Width + 1) >> 1;
      if ((atomic_load_explicit(&qword_27FF0C2E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FF0C2E8))
      {
        __cxa_atexit(sub_26230CE64, &xmmword_27FF0C2D0, &dword_2621C3000);
        __cxa_guard_release(&qword_27FF0C2E8);
      }

      v68 = 0;
      sub_26220A5F0(&xmmword_27FF0C2D0, ((v11 + 1) >> 1) * v14);
      v15 = xmmword_27FF0C2D0;
      if (*(&xmmword_27FF0C2D0 + 1) == xmmword_27FF0C2D0)
      {
        v33 = 0.0;
      }

      else
      {
        if (v11)
        {
          for (i = 0; i < v11; i += 2)
          {
            MEMORY[0x266728020](BaseAddress, 2, &v68, v15, 1, v14);
            v15 += 4 * ((Width + 1) >> 1);
            BaseAddress += 4 * ((BytesPerRow >> 1) & 0x3FFFFFFF);
          }
        }

        v72[0] = &unk_2874EEF98;
        v72[3] = v72;
        v17 = sub_26230C5BC(v72);
        v19 = v18;
        sub_26230C710(v72);
        v69 = &unk_2874EE8A8;
        v20 = (v17 + v19) * 0.5;
        v70 = v20;
        v71 = &v69;
        v21 = sub_26230C5BC(&v69);
        v23 = v22;
        sub_26230C710(&v69);
        v24 = xmmword_27FF0C2D0;
        v25 = 0.0;
        v26 = 0.0;
        if (xmmword_27FF0C2D0 != *(&xmmword_27FF0C2D0 + 1))
        {
          v27 = vabds_f32(v21, v20);
          v28 = vabds_f32(v23, v20);
          v29 = ((v27 + v28) * 0.5) + ((v27 + v28) * 0.5);
          v26 = 0.0;
          v25 = 0.0;
          do
          {
            v30 = *v24++;
            v31 = v26 + v30;
            if (vabds_f32(v30, v20) <= v29)
            {
              v25 = v25 + 1.0;
              v26 = v31;
            }
          }

          while (v24 != *(&xmmword_27FF0C2D0 + 1));
        }

        v32 = v26 / v25;
        if (v25 == 0.0)
        {
          v33 = 0.0;
        }

        else
        {
          v33 = v32;
        }
      }

      v67 = v33;
      CVPixelBufferUnlockBaseAddress(v8, 1uLL);
      *(a1 + 104) = v33;
      sub_26230B7F0((a1 + 56), &v67);
    }
  }

  v34 = *(a1 + 96);
  if (v34 >= 2)
  {
    ++*(a1 + 88);
    *(a1 + 96) = v34 - 1;
    sub_26230B878(a1 + 56);
    v34 = *(a1 + 96);
  }

  if (!v34)
  {

LABEL_40:
    v61 = [RSTextCoachingSignal alloc];
    if (v61)
    {
      v62 = sub_2622E743C(v61, 0, 1.0);
    }

    else
    {
      v62 = 0;
    }

    goto LABEL_52;
  }

  v35 = *(a1 + 64);
  v36 = 0.0;
  if (*(a1 + 72) != v35)
  {
    v37 = *(a1 + 88);
    v38 = (v35 + 8 * (v37 >> 10));
    v39 = *v38;
    v40 = &(*v38)[v37 & 0x3FF];
    v41 = *(v35 + (((v37 + v34) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v37 + v34) & 0x3FF);
    while (v40 != v41)
    {
      v42 = *v40++;
      v43 = v42;
      if (v40 - v39 == 4096)
      {
        v44 = v38[1];
        ++v38;
        v39 = v44;
        v40 = v44;
      }

      v36 = v36 + v43;
    }
  }

  v45 = v36 / v34;
  if (v45 < 0.0)
  {
    goto LABEL_40;
  }

  v72[0] = 0x100000001;
  v46 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v47 = v46;
  v72[1] = v46;
  if (v46)
  {
    *v46 = 0.0;
  }

  *v46 = v45;
  v48 = sub_26230AEE8((a1 + 112), v72);
  *&v69 = v48;
  sub_26230B7F0((a1 + 8), &v69);
  v49 = *(a1 + 48);
  if (v49 >= 4)
  {
    ++*(a1 + 40);
    *(a1 + 48) = v49 - 1;
    sub_26230B878(a1 + 8);
  }

  v50 = *(a1 + 16);
  if (*(a1 + 24) == v50)
  {
    v51 = *(a1 + 48);
  }

  else
  {
    v52 = *(a1 + 40);
    v51 = *(a1 + 48);
    v53 = (v50 + 8 * (v52 >> 10));
    v54 = *v53;
    v55 = &(*v53)[v52 & 0x3FF];
    v56 = *(v50 + (((v51 + v52) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v51 + v52) & 0x3FF);
    if (v55 != v56)
    {
      v57 = 0.0;
      do
      {
        v58 = *v55++;
        v59 = v58;
        if (v55 - v54 == 4096)
        {
          v60 = v53[1];
          ++v53;
          v54 = v60;
          v55 = v60;
        }

        v57 = v57 + v59;
      }

      while (v55 != v56);
      goto LABEL_44;
    }
  }

  v57 = 0.0;
LABEL_44:
  if (v45 <= 3.5)
  {
    v64 = v57 / v51;
    if (v64 <= *a1)
    {
      v63 = [RSTextCoachingSignal alloc];
      v65 = 0;
      v64 = 1.0 - v64;
    }

    else
    {
      v63 = [RSTextCoachingSignal alloc];
      v65 = 2;
    }
  }

  else
  {
    v63 = [RSTextCoachingSignal alloc];
    v64 = fminf((((v45 + -3.5) * 0.4) / 2.5) + 0.6, 1.0);
    v65 = 4;
  }

  if (v63)
  {
    v62 = sub_2622E743C(v63, v65, v64);
  }

  else
  {
    v62 = 0;
  }

  free(v47);
LABEL_52:

  return v62;
}

void sub_26230D3F8(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_26230C710(va);

  _Unwind_Resume(a1);
}

float *sub_26230D46C(uint64_t a1, void *a2, char a3, float a4, float a5)
{
  v9 = a2;
  v12 = v9;
  if (a3)
  {
    goto LABEL_18;
  }

  v13 = objc_msgSend_rawFeaturePoints(v9, v10, v11);
  v16 = objc_msgSend_count(v13, v14, v15);

  if (v16 < 0x32)
  {
    goto LABEL_18;
  }

  v35 = 1.0 / (expf(-(*(a1 + 156) + (*(a1 + 152) * a4))) + 1.0);
  v34 = 1.0 / (expf(-(*(a1 + 164) + (*(a1 + 160) * a5))) + 1.0);
  if (v35 >= v34)
  {
    v17 = &v35;
  }

  else
  {
    v17 = &v34;
  }

  sub_26230B7F0((a1 + 88), v17);
  v18 = *(a1 + 128);
  if (v18 >= 6)
  {
    ++*(a1 + 120);
    *(a1 + 128) = v18 - 1;
    sub_26230B878(a1 + 88);
  }

  v19 = *(a1 + 96);
  if (*(a1 + 104) == v19)
  {
    v20 = *(a1 + 128);
    goto LABEL_16;
  }

  v21 = *(a1 + 120);
  v20 = *(a1 + 128);
  v22 = (v19 + 8 * (v21 >> 10));
  v23 = *v22;
  v24 = &(*v22)[v21 & 0x3FF];
  v25 = *(v19 + (((v20 + v21) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v20 + v21) & 0x3FF);
  if (v24 == v25)
  {
LABEL_16:
    v26 = 0.0;
    goto LABEL_17;
  }

  v26 = 0.0;
  do
  {
    v27 = *v24++;
    v28 = v27;
    if (v24 - v23 == 4096)
    {
      v29 = v22[1];
      ++v22;
      v23 = v29;
      v24 = v29;
    }

    v26 = v26 + v28;
  }

  while (v24 != v25);
LABEL_17:
  v30 = v26 / v20;
  if (v30 <= 0.5 || (v33 = [RSTextCoachingSignal alloc]) == 0)
  {
LABEL_18:
    v31 = 0;
    goto LABEL_19;
  }

  v31 = sub_2622E743C(v33, 1, v30);
LABEL_19:

  return v31;
}

_DWORD *sub_26230D660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v12 = 0;
  v13 = a2;
  v11 = *a3;
  *sub_26230D730(a1, &v13, &v12 + 1, &v12) = v11;
  v7 = *(a3 + 4);
  v12 = 1;
  *sub_26230D730(a1, &v13, &v12 + 1, &v12) = v7;
  v8 = *a4;
  v12 = 0x100000000;
  *sub_26230D730(a1, &v13, &v12 + 1, &v12) = v8;
  v9 = *(a4 + 1);
  v12 = 0x100000001;
  result = sub_26230D730(a1, &v13, &v12 + 1, &v12);
  *result = v9;
  return result;
}

uint64_t sub_26230D730(uint64_t a1, uint64_t *a2, int *a3, int *a4)
{
  v37[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v7 = a1;
    v8 = MEMORY[0x277D82670];
    v9 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v10 = sub_2621D552C(v9, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = MEMORY[0x266727260](v11, 1125);
    v13 = sub_2621D552C(v12, " ", 1);
    v14 = sub_2621D552C(v13, "at", 2);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(v34, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(v34);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v16 = std::locale::use_facet(v34, MEMORY[0x277D82680]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(v34);
    std::ostream::put();
    std::ostream::flush();
    a1 = v7;
  }

  v17 = 0;
  v18 = MEMORY[0x277D82670];
  v19 = *a2;
  v20 = *a3;
  v31 = a1;
  v32 = 0;
  v21 = a1 + 8;
  v37[0] = v19;
  v37[1] = v20;
  v37[2] = *a4;
  v35 = 0u;
  v36 = 0u;
  v22 = 1;
  *&v34[0].__locale_ = 0u;
  v23 = MEMORY[0x277D82680];
  do
  {
    v24 = v37[v17];
    if (v24 >= *(v21 + v17 * 8))
    {
      sub_2621D552C(v18, "runtime_err in ", 15);
      sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
      sub_2621D552C(v18, " ", 1);
      v25 = MEMORY[0x266727260](v18, 1133);
      sub_2621D552C(v25, " ", 1);
      sub_2621D552C(v25, "at", 2);
      std::ios_base::getloc((v25 + *(*v25 - 24)));
      v26 = std::locale::use_facet(&v33, v23);
      (v26->__vftable[2].~facet_0)(v26, 10);
      std::locale::~locale(&v33);
      std::ostream::put();
      std::ostream::flush();
      sub_2621DA198("err", "shape", &v32, "=", &v37[v17], "should smaller then", (v21 + v17 * 8));
      std::ios_base::getloc((v18 + *(*v18 - 24)));
      v27 = std::locale::use_facet(&v33, v23);
      (v27->__vftable[2].~facet_0)(v27, 10);
      std::locale::~locale(&v33);
      std::ostream::put();
      std::ostream::flush();
    }

    v32 = v22;
    v34[v17++].__locale_ = v24;
    ++v22;
  }

  while (v17 != 3);
  v28 = 0;
  v29 = 0;
  do
  {
    v29 += *(v31 + 56 + v28 * 8) * v34[v28].__locale_;
    ++v28;
  }

  while (v28 != 3);
  return *(v31 + 144) + 4 * v29;
}

double sub_26230DB94(float32x2_t *a1, uint64_t *a2, uint64_t a3)
{
  v73[0] = 0;
  v5 = *a2;
  if (a2[1] == *a2)
  {
LABEL_12:
    v3 = *a1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v48 = vdupq_n_s64(0x3F1A36E2EB1C432DuLL);
    while (1)
    {
      sub_26222AE80(v71, v5 + v8);
      v61[0].i32[0] = 0;
      v70 = 0;
      v58 = *sub_26230DFCC(v71, v61, &v70 + 1, &v70);
      v69 = 0;
      v68 = 1;
      v10 = sub_26230DFCC(v71, &v69 + 1, &v69, &v68);
      v11.i32[0] = v58;
      v11.i32[1] = *v10;
      v59 = v11;
      v66 = 1;
      v67 = 0;
      v65 = 0;
      v56 = *sub_26230DFCC(v71, &v67, &v66, &v65);
      v63 = 1;
      v64 = 0;
      v62 = 1;
      v12 = sub_26230DFCC(v71, &v64, &v63, &v62);
      v13.i32[0] = v56;
      v13.i32[1] = *v12;
      v57 = v13;
      v61[0].i32[0] = 1;
      v70 = 0;
      v54 = *sub_26230DFCC(v71, v61, &v70 + 1, &v70);
      v69 = 0x100000000;
      v68 = 1;
      v14 = sub_26230DFCC(v71, &v69 + 1, &v69, &v68);
      v15.i32[0] = v54;
      v15.i32[1] = *v14;
      v55 = v15;
      v66 = 1;
      v67 = 1;
      v65 = 0;
      v52 = *sub_26230DFCC(v71, &v67, &v66, &v65);
      v63 = 1;
      v64 = 1;
      v62 = 1;
      v16 = sub_26230DFCC(v71, &v64, &v63, &v62);
      v17.i32[0] = v52;
      v17.i32[1] = *v16;
      v53 = v17;
      v70 = 0x200000000;
      HIDWORD(v69) = 0;
      v50 = *sub_26230DFCC(v71, &v70 + 1, &v70, &v69 + 1);
      v68 = 0;
      LODWORD(v69) = 2;
      v67 = 1;
      v18 = sub_26230DFCC(v71, &v69, &v68, &v67);
      v19.i32[0] = v50;
      v19.i32[1] = *v18;
      v51 = v19;
      v65 = 1;
      v66 = 2;
      v64 = 0;
      v49 = *sub_26230DFCC(v71, &v66, &v65, &v64);
      v62 = 1;
      v63 = 2;
      v60 = 1;
      v20 = sub_26230DFCC(v71, &v63, &v62, &v60);
      v21.i32[0] = v49;
      v21.i32[1] = *v20;
      v61[0] = v51;
      v61[1] = v21;
      if (!*sub_262269944(a3, v73) && ((v23 = *a1, v24 = a1[1], v25 = vsub_f32(*a1, v59), v26 = vsub_f32(v24, v57), v27 = vsub_f32(*a1, v57), v28 = vsub_f32(v24, v59), v29 = vzip2_s32(v27, v25), v30 = vzip1_s32(v27, v25), v31 = vmla_f32(vmul_f32(v29, v29), v30, v30), v32 = vzip1_s32(v28, v26), v33 = vmla_f32(v31, v32, v32), v34 = vzip2_s32(v28, v26), v35 = vmovn_s64(vcgtq_f64(v48, vcvtq_f64_f32(vsqrt_f32(vmla_f32(v33, v34, v34))))), ((v35.i32[1] | v35.i32[0]) & 1) != 0) || (v36 = vsub_f32(v23, v55), v37 = vsub_f32(v24, v53), v38 = vsub_f32(v23, v53), v39 = vsub_f32(v24, v55), v40 = vzip2_s32(v38, v36), v41 = vzip1_s32(v38, v36), v42 = vmla_f32(vmul_f32(v40, v40), v41, v41), v43 = vzip1_s32(v39, v37), v44 = vmla_f32(v42, v43, v43), v45 = vzip2_s32(v39, v37), v46 = vmovn_s64(vcgtq_f64(v48, vcvtq_f64_f32(vsqrt_f32(vmla_f32(v44, v45, v45))))), ((v46.i32[1] | v46.i32[0]) & 1) != 0)))
      {
        *sub_262269944(a3, v73) = 1;
        v3 = COERCE_FLOAT32X2_T(sub_26230DB94(v61, a2, a3));
        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

      v71[0] = &unk_2874EF0D8;
      if (v72)
      {
        sub_2621D1B78(v72);
      }

      if (!v22)
      {
        break;
      }

      v73[0] = ++v9;
      v5 = *a2;
      v8 += 152;
      if (v9 >= 0x86BCA1AF286BCA1BLL * ((a2[1] - *a2) >> 3))
      {
        goto LABEL_12;
      }
    }
  }

  return *&v3;
}

void sub_26230DF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = *(v32 + 128);
  if (v34)
  {
    sub_2621D1B78(v34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26230DFCC(uint64_t a1, int *a2, int *a3, int *a4)
{
  v37[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v7 = a1;
    v8 = MEMORY[0x277D82670];
    v9 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v10 = sub_2621D552C(v9, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = MEMORY[0x266727260](v11, 1159);
    v13 = sub_2621D552C(v12, " ", 1);
    v14 = sub_2621D552C(v13, "at", 2);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(v34, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(v34);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v16 = std::locale::use_facet(v34, MEMORY[0x277D82680]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(v34);
    std::ostream::put();
    std::ostream::flush();
    a1 = v7;
  }

  v17 = 0;
  v18 = MEMORY[0x277D82670];
  v19 = *a2;
  v20 = *a3;
  v31 = a1;
  v32 = 0;
  v21 = a1 + 8;
  v37[0] = v19;
  v37[1] = v20;
  v37[2] = *a4;
  v35 = 0u;
  v36 = 0u;
  v22 = 1;
  *&v34[0].__locale_ = 0u;
  v23 = MEMORY[0x277D82680];
  do
  {
    v24 = v37[v17];
    if (v24 >= *(v21 + v17 * 8))
    {
      sub_2621D552C(v18, "runtime_err in ", 15);
      sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
      sub_2621D552C(v18, " ", 1);
      v25 = MEMORY[0x266727260](v18, 1167);
      sub_2621D552C(v25, " ", 1);
      sub_2621D552C(v25, "at", 2);
      std::ios_base::getloc((v25 + *(*v25 - 24)));
      v26 = std::locale::use_facet(&v33, v23);
      (v26->__vftable[2].~facet_0)(v26, 10);
      std::locale::~locale(&v33);
      std::ostream::put();
      std::ostream::flush();
      sub_2621DA198("err", "shape", &v32, "=", &v37[v17], "should smaller then", (v21 + v17 * 8));
      std::ios_base::getloc((v18 + *(*v18 - 24)));
      v27 = std::locale::use_facet(&v33, v23);
      (v27->__vftable[2].~facet_0)(v27, 10);
      std::locale::~locale(&v33);
      std::ostream::put();
      std::ostream::flush();
    }

    v32 = v22;
    v34[v17++].__locale_ = v24;
    ++v22;
  }

  while (v17 != 3);
  v28 = 0;
  v29 = 0;
  do
  {
    v29 += *(v31 + 56 + v28 * 8) * v34[v28].__locale_;
    ++v28;
  }

  while (v28 != 3);
  return *(v31 + 144) + 4 * v29;
}

void sub_26230E430(void *a1, void *a2, float32x2_t **a3, uint64_t *a4)
{
  v4 = a1[1];
  v5 = 0x2E8BA2E8BA2E8BA3;
  if (0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 4) == (a2[1] - *a2) >> 4 && v4 != *a1)
  {
    v9 = a2;
    v10 = a1;
    v11 = 0;
    v12 = &unk_2874EE910;
    v42 = vdupq_n_s64(0x3F1A36E2EB1C432DuLL);
    do
    {
      v57 = v12;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v65 = 0;
      v66 = 0;
      v67 = 257;
      v13 = a4[1] - *a4;
      if (v13)
      {
        v43 = 0x86BCA1AF286BCA1BLL * (v13 >> 3);
        sub_26222AF58(v44, &v43);
        v69[0] = 0;
        sub_26220571C(&v45, v44);
        sub_2621D1C78(&v45, v69);
        v61 = v49;
        v62 = v50;
        v63 = v51;
        v64 = v52;
        v58 = v46;
        v59 = v47;
        v60 = v48;
        v15 = v53;
        v14 = v54;
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = v66;
        v65 = v15;
        v66 = v14;
        if (v16)
        {
          sub_2621D1B78(v16);
        }

        v68 = v56;
        v67 = v55;
        v45 = &unk_2874EE910;
        if (v54)
        {
          sub_2621D1B78(v54);
        }
      }

      v19 = sub_26230DB94((*v9 + 16 * v11), a4, &v57);
      v21 = *a3;
      v22 = a3[1];
      if (*a3 != v22)
      {
        while (1)
        {
          v23 = v21[2];
          v24 = v21[3];
          v25 = vsub_f32(v23, *&v19);
          v26 = vsub_f32(v24, v20);
          v27 = vsub_f32(v23, v20);
          v28 = vsub_f32(v24, *&v19);
          v29 = vzip2_s32(v27, v25);
          v30 = vzip1_s32(v27, v25);
          v31 = vmla_f32(vmul_f32(v29, v29), v30, v30);
          v32 = vzip1_s32(v28, v26);
          v33 = vmla_f32(v31, v32, v32);
          v34 = vzip2_s32(v28, v26);
          v35 = vmovn_s64(vcgtq_f64(v42, vcvtq_f64_f32(vsqrt_f32(vmla_f32(v33, v34, v34)))));
          if ((v35.i32[1] | v35.i32[0]))
          {
            break;
          }

          v21 += 22;
          if (v21 == v22)
          {
            goto LABEL_18;
          }
        }

        v36 = v12;
        v37 = v9;
        v38 = v5;
        v39 = v10;
        v40 = *v10;
        v41 = objc_msgSend_identifier(*&v21[1], v17, v18);
        sub_26225A86C(v40 + 176 * v11, v41);

        v5 = v38;
        v9 = v37;
        v12 = v36;
        v10 = v39;
      }

LABEL_18:
      v57 = v12;
      if (v66)
      {
        sub_2621D1B78(v66);
      }

      ++v11;
    }

    while (v11 < ((v10[1] - *v10) >> 4) * v5);
  }
}

void sub_26230E70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, std::__shared_weak_count *a54)
{
  if (a54)
  {
    sub_2621D1B78(a54);
  }

  _Unwind_Resume(a1);
}

void sub_26230E77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v15 = v3;
    v16 = v4;
    for (i = a1; i != a2; i += 176)
    {
      if ((*(i + 175) & 0x8000000000000000) != 0)
      {
        if (*(i + 160))
        {
LABEL_7:
          if (sub_26225A7AC(*(a3 + 8), *(a3 + 16), (i + 152)))
          {
            v8 = sub_262259864(a3, (i + 152));
            *&v9 = sub_2621DCC54(*(i + 16), *(i + 24), v8[2], v8[3]);
            v10 = v9;
            DWORD2(v10) = *(i + 64);
            v12 = v11;
            DWORD2(v12) = *(i + 68);
            *(i + 16) = v9;
            *(i + 24) = v11;
            DWORD2(v9) = DWORD2(v12);
            DWORD2(v11) = DWORD2(v10);
            *(i + 32) = v10;
            *(i + 48) = v12;
            v13 = *(i + 8);
            v14[0] = v9;
            v14[1] = v12;
            v14[2] = v11;
            v14[3] = v10;
            if (v13)
            {
              objc_copyStruct((v13 + 272), v14, 64, 1, 0);
            }
          }
        }
      }

      else if (*(i + 175))
      {
        goto LABEL_7;
      }
    }
  }
}

void sub_26230E858(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 19;
      v7 = v4 - 19;
      v8 = v4 - 19;
      do
      {
        v9 = *v8;
        v8 -= 19;
        (*v9)(v7);
        v6 -= 19;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **sub_26230E988(void *a1, unint64_t a2, const void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = RS2DPolygon;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    sub_2622DFB20(v5 + 1, a2);
    memcpy(v6[1], a3, 8 * a2);
  }

  return v6;
}

BOOL sub_26230EF8C(void *a1, void *a2)
{
  v3 = a1;
  v7 = objc_msgSend_count(v3, v4, v5);
  if (v7 == 2)
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(v3, v6, 0);
    objc_msgSend_floatValue(v8, v9, v10);
    v18 = v11;
    v13 = objc_msgSend_objectAtIndexedSubscript_(v3, v12, 1);
    objc_msgSend_floatValue(v13, v14, v15);
    *a2 = __PAIR64__(v16, v18);
  }

  return v7 == 2;
}

void sub_26230F05C(void *a1, void *a2)
{
  v14 = a1;
  if (objc_msgSend_count(v14, v3, v4) == 4)
  {
    v6 = 0;
    do
    {
      v7 = objc_msgSend_objectAtIndexedSubscript_(v14, v5, v6);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      v10 = objc_msgSend_objectAtIndexedSubscript_(v14, v9, v6);
      v11 = sub_26230EF8C(v10, a2);

      v12 = v6++ == 3;
      v13 = !v12 && v11;
      ++a2;
    }

    while (v13);
  }
}

void sub_26230F330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_26230F388(double a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12 = HIDWORD(a1);
  v4 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a3, a4);
  v13[0] = v4;
  HIDWORD(v5) = v12;
  LODWORD(v5) = v12;
  v8 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v6, v7, v5);
  v13[1] = v8;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v13, 2);

  return v10;
}

void sub_26230F450(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_26230F478(double *a1, const char *a2, uint64_t a3)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v4 = sub_26230F388(*a1, a1, a2, a3);
  v17[0] = v4;
  v7 = sub_26230F388(a1[1], v4, v5, v6);
  v17[1] = v7;
  v10 = sub_26230F388(a1[2], v7, v8, v9);
  v17[2] = v10;
  v13 = sub_26230F388(a1[3], v10, v11, v12);
  v17[3] = v13;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v17, 4);

  return v15;
}

void sub_26230F6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26230F818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26230FE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15)
{
  if (v17)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_2623104AC(uint64_t a1)
{
  v3[22] = *MEMORY[0x277D85DE8];
  *a1 = 256;
  *(a1 + 8) = 1031127695;
  *(a1 + 16) = xmmword_2623A7C60;
  *(a1 + 32) = 0;
  sub_2621D0F64(&__p, "input_name");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_2622C70D0((a1 + 40), &__p, v3, 1uLL);
}

void sub_2623117BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  operator delete(v18);
  sub_2621C74C4(v19);
  sub_2621C74C4(a18);
  v21 = *a10;
  if (*a10)
  {
    *(a17 + 168) = v21;
    operator delete(v21);
  }

  v22 = *a11;
  if (*a11)
  {
    *(a17 + 144) = v22;
    operator delete(v22);
  }

  if (*(a17 + 135) < 0)
  {
    operator delete(*(a17 + 112));
  }

  STACK[0x2A0] = a12;
  sub_2621DED18(&STACK[0x2A0]);
  v23 = *a13;
  if (*a13)
  {
    *(a17 + 72) = v23;
    operator delete(v23);
  }

  STACK[0x2A0] = a14;
  sub_2621DED18(&STACK[0x2A0]);
  _Unwind_Resume(a1);
}

uint64_t sub_262311C80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 24);
      sub_2621DED18(&v6);
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

void sub_262311CF0(char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 3;
    sub_2621DED18(&v3);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_262311DB0(uint64_t a1)
{
  sub_262311C80(a1 + 264);
  sub_2621C74C4(a1 + 224);
  sub_2621C74C4(a1 + 184);
  v2 = *(a1 + 160);
  if (v2)
  {
    *(a1 + 168) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    *(a1 + 144) = v3;
    operator delete(v3);
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v6 = (a1 + 88);
  sub_2621DED18(&v6);
  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 72) = v4;
    operator delete(v4);
  }

  v6 = (a1 + 40);
  sub_2621DED18(&v6);
  return a1;
}

void sub_262312240(void ***a1)
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
        v4 -= 48;
        sub_262241314(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2623122C4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_26231289C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  while (1)
  {
    if (*(v9 - 1) < 0)
    {
      operator delete(*(v9 - 3));
    }

    v9 -= 4;
    if (v9 == &a9)
    {
      MEMORY[0x266727420](v10, 0x10A0C408EF24B1CLL, a3, a4, a5, a6, a7, a8);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_262312958(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

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

void sub_2623129C0(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_262312A1C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_262241314(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

id sub_262312A6C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v609 = *MEMORY[0x277D85DE8];
  v529 = a2;
  v528 = a3;
  v527 = a4;
  v544 = a1;
  if (!a1)
  {
    v538 = 0;
    goto LABEL_681;
  }

  v567 = 8775;
  v568 = 0;
  kdebug_trace();
  sub_262316F74(a1, v7, v8);
  if (!objc_msgSend_count(v529, v9, v10))
  {
    v538 = objc_msgSend_array(MEMORY[0x277CBEA60], v11, v12);
    goto LABEL_680;
  }

  kdebug_trace();
  v13 = v529;
  v526 = v528;
  v14 = *(v544 + 24);
  if (!v14)
  {
    v15 = sub_2622C5968([RSSemanticImage alloc], *(v544 + 440), *(v544 + 440), *(v544 + 456), 1, 1278226536);
    v16 = *(v544 + 24);
    *(v544 + 24) = v15;

    v14 = *(v544 + 24);
  }

  sub_2622C5BB4(v14);
  sub_2621CCAAC(*(v544 + 432), v13, v526);
  v19 = objc_msgSend_count(v13, v17, v18, v13);
  *__str = 0;
  sub_2622233BC(v600, v19, __str);
  v20 = v600[0];
  if (v600[0] != v600[1])
  {
    v21 = 0;
    v22 = (v600[1] - v600[0] - 8) >> 3;
    v23 = vdupq_n_s64(v22);
    v24 = xmmword_2623A7620;
    v25 = vdupq_n_s64(2uLL);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v23, v24));
      if (v26.i8[0])
      {
        v20[v21] = v21;
      }

      if (v26.i8[4])
      {
        v20[v21 + 1] = v21 + 1;
      }

      v21 += 2;
      v24 = vaddq_s64(v24, v25);
    }

    while (((v22 + 2) & 0x3FFFFFFFFFFFFFFELL) != v21);
  }

  v27 = *(v544 + 24);
  if (v27 && *(v27 + 64) == 1)
  {
    v28 = *(v27 + 8);
  }

  else
  {
    v28 = 0;
  }

  CVPixelBufferLockBaseAddress(v28, 0);
  v29 = sub_2621CD3A4(*(v544 + 432));
  v30 = *(v544 + 24);
  v31 = v13;
  k = v29;
  v33 = v30;
  if (k)
  {
    *v539 = *(k + 8);
    v542 = *(k + 6);
    v554 = *(k + 7);
    v556 = *(k + 5);
    v34 = *(k + 7);
    v531 = *(k + 8);
    v35 = *(k + 4);
    v36 = *(k + 6);
  }

  else
  {
    v531 = 0;
    v34 = 0;
    v35 = 0.0;
    v554 = 0u;
    v556 = 0u;
    *v539 = 0u;
    v542 = 0u;
    v36 = 0.0;
  }

  __p = 0uLL;
  v580 = 0uLL;
  LODWORD(v581) = 1065353216;
  v37 = vcvtd_n_f64_u64((v600[1] - v600[0]) >> 3, 2uLL);
  sub_2621C67D4(&__p, v37);
  memset(v569, 0, sizeof(v569));
  LODWORD(v570) = 1065353216;
  if (v531 >= 1)
  {
    sub_2621C67D4(v569, v37);
  }

  v40 = v600[0];
  v41 = v600[1];
  v530 = k;
  v545 = v33;
  if (v600[0] != v600[1])
  {
    v532 = v34 * v34;
    v42 = v35 + v36;
    v534 = v34;
    do
    {
      v43 = (objc_msgSend_points(v31, v38, v39) + 16 * *v40);
      v44 = vmulq_f64(v556, vaddq_f64(v554, vcvtq_f64_f32(*v43)));
      v45 = llround(v44.f64[0]);
      if ((v45 & 0x80000000) == 0 && v34 > v45)
      {
        v46 = llround(v44.f64[1]);
        if ((v46 & 0x80000000) == 0 && v34 > v46)
        {
          v549 = *v43->f32;
          v47 = v46 + v34 * v45;
          LODWORD(src.receiver) = v47;
          *__str = &src;
          v48 = sub_2621C65A4(&__p, v47, __str);
          v49 = v48;
          v50 = *v40;
          v52 = v48[4];
          v51 = v48[5];
          if (v52 >= v51)
          {
            v54 = v41;
            v55 = v48[3];
            v56 = v52 - v55;
            v57 = (v52 - v55) >> 2;
            v58 = v57 + 1;
            if ((v57 + 1) >> 62)
            {
              sub_2621CBEB0();
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
              sub_2621C7F54(v60);
            }

            v61 = (v52 - v55) >> 2;
            v62 = (4 * v57);
            v63 = (4 * v57 - 4 * v61);
            *v62 = v50;
            v53 = v62 + 1;
            memcpy(v63, v55, v56);
            v64 = v49[3];
            v49[3] = v63;
            v49[4] = v53;
            v49[5] = 0;
            if (v64)
            {
              operator delete(v64);
            }

            k = v530;
            v33 = v545;
            v41 = v54;
            v34 = v534;
          }

          else
          {
            *v52 = v50;
            v53 = v52 + 4;
            k = v530;
            v33 = v545;
          }

          v65.f64[1] = *(&v549 + 1);
          v65.f64[0] = *(&v549 + 2);
          v66 = llround(vmulq_f64(v542, vaddq_f64(*v539, v65)).f64[0]);
          v49[4] = v53;
          if (v531 > v66 && (v66 & 0x80000000) == 0)
          {
            v67 = v43[1].f32[0];
            if (v35 <= v67 && v67 <= v42)
            {
              LODWORD(v592[0]) = v47 + v532 * v66;
              *__str = v592;
              v69 = sub_2622B596C(v569, v592[0], __str);
              ++*(v69 + 5);
            }
          }
        }
      }

      ++v40;
    }

    while (v40 != v41);
  }

  v70 = v33;
  v535 = sub_2622C57A4(v33, 1uLL);
  v71 = v33;
  v72 = sub_2622C57A4(v33, 0);
  if (v33)
  {
    v75 = v33[5] * v33[3];
  }

  else
  {
    v75 = 0;
  }

  v76 = v580;
  if (v580)
  {
    v77 = 1;
    v550 = vdupq_n_s64(0x21uLL);
    v533 = v72;
    do
    {
      v540 = v77;
      LODWORD(v604) = 0;
      v603 = 0u;
      memset(__str, 0, sizeof(__str));
      v78 = v76[3];
      v79 = v76[4];
      v80 = v78;
      if (v78 != v79)
      {
        do
        {
          v81 = objc_msgSend_semanticLabels(v31, v73, v74);
          v82 = *v78;
          v85 = objc_msgSend_semanticVotes(v31, v83, v84);
          v87 = *v78;
          src = 0;
          v584 = 0u;
          v585 = 0u;
          v586 = 0u;
          v587 = 0u;
          v588 = 0u;
          v589 = 0u;
          v590 = 0u;
          LODWORD(v591) = 0;
          v88 = *(v85 + 8 * v87);
          v89 = vmovl_u16(v88);
          v90 = vaddw_u16(vextq_s8(v89, v89, 8uLL), v88);
          v565 = v90.i16[2];
          v564 = v90.i16[0];
          if (v90.i16[0] + v90.i16[2])
          {
            v91 = 1.0 / (v564 + v565);
            if (v88.i16[3])
            {
              v92 = 0;
              v93 = (v91 * v88.u16[3]) / 30.0;
              p_super_class = &src.super_class;
              do
              {
                v95 = vdupq_n_s64(v92);
                v96 = vorrq_s8(v95, xmmword_2623A7620);
                if (vuzp1_s16(vmovn_s64(vcgtq_u64(v550, v96)), v88).u8[0])
                {
                  *(p_super_class - 2) = v93;
                }

                if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), v96)), v88).i8[2])
                {
                  *(p_super_class - 1) = v93;
                }

                if (vuzp1_s16(v88, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), vorrq_s8(v95, xmmword_2623A7630)))).i32[1])
                {
                  *p_super_class = v93;
                  p_super_class[1] = v93;
                }

                v92 += 4;
                p_super_class += 4;
              }

              while (v92 != 36);
            }

            for (i = 0; i != 3; ++i)
            {
              v563 = v88;
              if (*(&v563 & 0xFFFFFFFFFFFFFFF9 | (2 * (i & 3))))
              {
                v86.i32[0] = *(v81 + 4 * v82);
                v86 = vmovl_u8(v86).u64[0];
                v562 = v86;
                v98 = *(&v562 & 0xFFFFFFFFFFFFFFF9 | (2 * (i & 3)));
                if (v98 <= 0x20u)
                {
                  *(&src.receiver + v98) = 0;
                }
              }
            }

            for (j = 0; j != 3; ++j)
            {
              v561 = v88;
              v100 = *(&v561 & 0xFFFFFFFFFFFFFFF9 | (2 * (j & 3)));
              if (*(&v561 & 0xFFFFFFFFFFFFFFF9 | (2 * (j & 3))))
              {
                v86.i32[0] = *(v81 + 4 * v82);
                v86 = vmovl_u8(v86).u64[0];
                v560 = v86;
                v101 = *(&v560 & 0xFFFFFFFFFFFFFFF9 | (2 * (j & 3)));
                if (v101 <= 0x20u)
                {
                  *(&src.receiver + v101) = *(&src.receiver + v101) + (v100 * v91);
                }
              }
            }
          }

          v102 = 0;
          v33 = v545;
          do
          {
            *&__str[v102] = *&__str[v102] + *(&src.receiver + v102);
            v102 += 4;
          }

          while (v102 != 132);
          ++v78;
        }

        while (v78 != v79);
        v78 = v76[3];
        v80 = v76[4];
      }

      v103 = 0;
      v104 = (v80 - v78) >> 2;
      _S0 = v104;
      __asm { FCVT            H1, S0 }

      v110 = *(v76 + 4);
      v111 = v535;
      *(v533 + v110) = _H1;
      do
      {
        _S1 = *&__str[v103] / _S0;
        __asm { FCVT            H1, S1 }

        *(v111 + v110) = LOWORD(_S1);
        v103 += 4;
        v111 = (v111 + v75);
      }

      while (v103 != 132);
      v77 = v540;
      if (v540 <= v104)
      {
        v77 = v104;
      }

      v76 = *v76;
    }

    while (v76);
    v113 = v580;
    for (k = v530; v113; v113 = *v113)
    {
      v115 = *(v113 + 4);
      _H1 = *(v533 + v115);
      __asm { FCVT            S1, H1 }

      v114 = 1.0 / v77;
      _S1 = v114 * _S1;
      __asm { FCVT            H1, S1 }

      *(v533 + v115) = LOWORD(_S1);
    }
  }

  if (v531 >= 1)
  {
    v119 = v33;
    v120 = sub_2622C57A4(v33, 0x22uLL);
    v121 = v569[2];
    if (v569[2])
    {
      v122 = 1;
      v123 = v569[2];
      do
      {
        v124 = v123[5];
        _S0 = v124;
        __asm { FCVT            H0, S0 }

        *(v120 + v123[4]) = LOWORD(_S0);
        if (v122 <= v124)
        {
          v122 = v124;
        }

        v123 = *v123;
      }

      while (v123);
      v126 = 1.0 / v122;
      do
      {
        v127 = *(v121 + 4);
        _H1 = *(v120 + v127);
        __asm { FCVT            S1, H1 }

        _S1 = v126 * _S1;
        __asm { FCVT            H1, S1 }

        *(v120 + v127) = LOWORD(_S1);
        v121 = *v121;
      }

      while (v121);
    }
  }

  sub_2621C74C4(v569);
  sub_2621C7150(v580);
  v131 = __p;
  *&__p = 0;
  if (v131)
  {
    operator delete(v131);
  }

  v132 = *(v544 + 24);
  if (v132 && *(v132 + 64) == 1)
  {
    v133 = *(v132 + 8);
  }

  else
  {
    v133 = 0;
  }

  CVPixelBufferUnlockBaseAddress(v133, 0);
  if (v600[0])
  {
    v600[1] = v600[0];
    operator delete(v600[0]);
  }

  kdebug_trace();
  kdebug_trace();
  v134 = *(v544 + 24);
  if (v134 && *(v134 + 64) == 1)
  {
    v135 = *(v134 + 8);
  }

  else
  {
    v135 = 0;
  }

  memset(v566, 0, 24);
  CVPixelBufferLockBaseAddress(v135, 1uLL);
  v136 = *(v544 + 168);
  v137 = *(v544 + 176);
  while (v136 != v137)
  {
    if (espresso_network_bind_cvpixelbuffer())
    {
      if (qword_27FF0C0E0 != -1)
      {
        dispatch_once(&qword_27FF0C0E0, &unk_2874EE200);
      }

      v144 = qword_27FF0C0D8;
      if (os_log_type_enabled(qword_27FF0C0D8, OS_LOG_TYPE_ERROR))
      {
        *__str = 0;
        _os_log_error_impl(&dword_2621C3000, v144, OS_LOG_TYPE_ERROR, "Network tensor bind failure", __str, 2u);
      }

      CVPixelBufferUnlockBaseAddress(v135, 1uLL);
      goto LABEL_405;
    }

    v136 += 24;
  }

  CVPixelBufferUnlockBaseAddress(v135, 1uLL);
  sub_2621D0F64(__str, "");
  if (*(v544 + 120))
  {
    goto LABEL_109;
  }

  if (__str[23] >= 0)
  {
    v139 = __str[23];
  }

  else
  {
    v139 = *&__str[8];
  }

  v140 = *(v544 + 119);
  v141 = v140;
  if ((v140 & 0x80u) != 0)
  {
    v140 = *(v544 + 104);
  }

  if (v139 == v140)
  {
    v142 = __str[23] >= 0 ? __str : *__str;
    v143 = v141 >= 0 ? (v544 + 96) : *(v544 + 96);
    if (!memcmp(v142, v143, v139))
    {
      goto LABEL_109;
    }
  }

  if (!espresso_plan_build_clean() && !espresso_network_select_configuration() && !espresso_plan_build() && sub_2622E8198((v544 + 32)))
  {
    std::string::operator=((v544 + 96), __str);
LABEL_109:
    v138 = espresso_plan_execute_sync() == 0;
    goto LABEL_134;
  }

  v138 = 0;
LABEL_134:
  if ((__str[23] & 0x80000000) == 0)
  {
    if (v138)
    {
      goto LABEL_136;
    }

LABEL_324:
    if (qword_27FF0C0E0 != -1)
    {
      dispatch_once(&qword_27FF0C0E0, &unk_2874EE200);
    }

    v294 = qword_27FF0C0D8;
    if (os_log_type_enabled(qword_27FF0C0D8, OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      _os_log_error_impl(&dword_2621C3000, v294, OS_LOG_TYPE_ERROR, "Network infer failure", __str, 2u);
    }

    goto LABEL_405;
  }

  operator delete(*__str);
  if (!v138)
  {
    goto LABEL_324;
  }

LABEL_136:
  v576 = 0u;
  v577 = 0u;
  v578 = 1065353216;
  v145 = *(v544 + 216);
  if (*(v544 + 224) == v145)
  {
    goto LABEL_302;
  }

  v146 = 0;
  v147 = v544;
  do
  {
    v148 = *sub_26225E318(v147 + 40, __str, (v145 + 24 * v146));
    if (!v148)
    {
      operator new();
    }

    if (**(v148 + 56))
    {
      sub_262223490(&src, *(v544 + 288), (*(v544 + 288) + 8));
      *&__str[8] = src;
      v604 = 0;
      LOBYTE(v605) = 1;
      memset(&__str[72], 0, 32);
      *&__str[24] = v584;
      *&__str[40] = v585;
      *__str = &unk_2874EF0B8;
      *&__str[56] = src.super_class;
      *&__str[64] = 1;
      *&__str[104] = src.receiver * src.super_class;
      v603 = 0uLL;
      if (src.receiver * src.super_class)
      {
        operator new();
      }

      HIBYTE(v605) = 1;
      *&__p = *(v544 + 192) + 4 * v146;
      v149 = sub_26222CDC8(&v576, *__p, &__p);
    }

    else
    {
      *__str = &unk_2874EF0B8;
      memset(&__str[8], 0, 96);
      *(&v603 + 1) = 0;
      v604 = 0;
      v605 = 257;
      src.receiver = (*(v544 + 192) + 4 * v146);
      v149 = sub_26222CDC8(&v576, *src.receiver, &src);
    }

    sub_26222D214((v149 + 3), __str);
    *__str = &unk_2874EF0B8;
    if (v604)
    {
      sub_2621D1B78(v604);
    }

    ++v146;
    v147 = v544;
    v145 = *(v544 + 216);
  }

  while (v146 < 0xAAAAAAAAAAAAAAABLL * ((*(v544 + 224) - v145) >> 3));
  m = v577;
  if (!v577)
  {
    goto LABEL_302;
  }

  __asm { FMOV            V0.2S, #1.0 }

  v553 = HIDWORD(_D0);
  do
  {
    if (*(m + 161))
    {
      goto LABEL_301;
    }

    v152 = *(v544 + 360);
    v153 = 0.5;
    if (!*&v152)
    {
      goto LABEL_184;
    }

    v154 = *(m + 4);
    v155 = vcnt_s8(v152);
    v155.i16[0] = vaddlv_u8(v155);
    if (v155.u32[0] > 1uLL)
    {
      v156 = *(m + 4);
      if (*&v152 <= v154)
      {
        v156 = v154 % v152.i32[0];
      }
    }

    else
    {
      v156 = (v152.i32[0] - 1) & v154;
    }

    v157 = *(v544 + 352);
    v158 = *(v157 + 8 * v156);
    if (!v158)
    {
      goto LABEL_184;
    }

    v159 = *v158;
    if (!*v158)
    {
      goto LABEL_184;
    }

    v160 = *&v152 - 1;
    while (1)
    {
      v161 = v159[1];
      if (v161 == v154)
      {
        break;
      }

      if (v155.u32[0] > 1uLL)
      {
        if (v161 >= *&v152)
        {
          v161 %= *&v152;
        }
      }

      else
      {
        v161 &= v160;
      }

      if (v161 != v156)
      {
        goto LABEL_184;
      }

LABEL_167:
      v159 = *v159;
      if (!v159)
      {
        goto LABEL_184;
      }
    }

    if (*(v159 + 4) != v154)
    {
      goto LABEL_167;
    }

    if (v155.u32[0] > 1uLL)
    {
      v162 = *(m + 4);
      if (*&v152 <= v154)
      {
        v162 = v154 % v152.i32[0];
      }
    }

    else
    {
      v162 = (v152.i32[0] - 1) & v154;
    }

    v163 = *(v157 + 8 * v162);
    if (!v163)
    {
LABEL_689:
      sub_2621C84A8("unordered_map::at: key not found");
    }

    do
    {
      while (1)
      {
        v163 = *v163;
        if (!v163)
        {
          goto LABEL_689;
        }

        v164 = v163[1];
        if (v164 == v154)
        {
          break;
        }

        if (v155.u32[0] > 1uLL)
        {
          if (v164 >= *&v152)
          {
            v164 %= *&v152;
          }
        }

        else
        {
          v164 &= v160;
        }

        if (v164 != v162)
        {
          goto LABEL_689;
        }
      }
    }

    while (*(v163 + 4) != v154);
    v153 = *(v163 + 5);
LABEL_184:
    *v569 = v153;
    WORD2(v569[0]) = 0;
    memset(&v569[1], 0, 24);
    v571 = m[4];
    v572 = m[5];
    v574 = 0;
    v575 = 0;
    v573 = 0;
    v541 = m;
    sub_26222F7C4(__str, (m + 3));
    v570 = v606;
    v166 = v571;
    if (v571 != 1)
    {
      v167 = 0;
      v168 = 0;
      v169 = v572;
      v170 = 4;
      do
      {
        if (v169 != 1)
        {
          v171 = 0;
          *&v165 = v168;
          v557 = v165;
          do
          {
            v172 = &v570[4 * v171 + v167 * v169];
            v173 = &v570[4 * v171 + v170 * v169];
            v175 = *v172;
            v174 = v172[1];
            v177 = *v173;
            v176 = v173[1];
            v178 = *v172 > *v569;
            if (*v172 <= *v569)
            {
              v179 = 2;
            }

            else
            {
              v179 = 3;
            }

            if (v174 > *v569)
            {
              v178 = v179;
            }

            if (v177 > *v569)
            {
              v178 |= 4u;
            }

            if (v176 > *v569)
            {
              v178 |= 8u;
            }

            if (v178)
            {
              _ZF = v178 == 15;
            }

            else
            {
              _ZF = 1;
            }

            if (!_ZF)
            {
              v181 = 0.0;
              v182 = 0.0;
              if (v175 != v174)
              {
                v182 = (*v569 - v175) / (v174 - v175);
              }

              if (v177 != v176)
              {
                v181 = (*v569 - v177) / (v176 - v177);
              }

              v183 = 0.0;
              v184 = 0.0;
              if (v175 != v177)
              {
                v184 = (*v569 - v175) / (v177 - v175);
              }

              if (v174 != v176)
              {
                v183 = (*v569 - v174) / (v176 - v174);
              }

              *&v185 = v168 + 1.0;
              v165 = v557;
              *(&v165 + 1) = v182 + v171;
              *(&v185 + 1) = v181 + v171;
              *&v186 = v184 + *&v557;
              *(&v186 + 1) = v171;
              v187.i32[0] = v557;
              v187.f32[1] = v171;
              v188 = vadd_f32(__PAIR64__(v553, LODWORD(v183)), v187);
              switch(v178)
              {
                case 1:
                  src.receiver = v165;
                  src.super_class = v186;
                  sub_2621DE070(&v569[1], &src);
                  break;
                case 2:
                  src.receiver = v188;
                  src.super_class = v165;
                  sub_2621DE070(&v569[1], &src);
                  break;
                case 3:
                  src.receiver = v188;
                  src.super_class = v186;
                  sub_2621DE070(&v569[1], &src);
                  break;
                case 4:
                  src.receiver = v186;
                  src.super_class = v185;
                  sub_2621DE070(&v569[1], &src);
                  break;
                case 5:
                  src.receiver = v165;
                  src.super_class = v185;
                  sub_2621DE070(&v569[1], &src);
                  break;
                case 6:
                  v546 = v185;
                  if (BYTE4(v569[0]) == 1)
                  {
                    src.receiver = v186;
                    src.super_class = v165;
                    sub_2621DE070(&v569[1], &src);
                    src.receiver = v188;
                  }

                  else
                  {
                    v537 = v186;
                    src.receiver = v188;
                    src.super_class = v165;
                    sub_2621DE070(&v569[1], &src);
                    src.receiver = v537;
                  }

                  src.super_class = v546;
                  sub_2621DE070(&v569[1], &src);
                  break;
                case 7:
                  src.receiver = v188;
                  src.super_class = v185;
                  sub_2621DE070(&v569[1], &src);
                  break;
                case 8:
                  src.receiver = v185;
                  src.super_class = v188;
                  sub_2621DE070(&v569[1], &src);
                  break;
                case 9:
                  v547 = v185;
                  if (BYTE4(v569[0]) == 1)
                  {
                    v536 = v186;
                    src.receiver = v165;
                    src.super_class = v188;
                    sub_2621DE070(&v569[1], &src);
                    src.receiver = v547;
                    src.super_class = v536;
                  }

                  else
                  {
                    src.receiver = v165;
                    src.super_class = v186;
                    sub_2621DE070(&v569[1], &src);
                    src.receiver = v547;
                    src.super_class = v188;
                  }

                  sub_2621DE070(&v569[1], &src);
                  break;
                case 10:
                  src.receiver = v185;
                  src.super_class = v165;
                  sub_2621DE070(&v569[1], &src);
                  break;
                case 11:
                  src.receiver = v185;
                  src.super_class = v186;
                  sub_2621DE070(&v569[1], &src);
                  break;
                case 12:
                  src.receiver = v186;
                  src.super_class = v188;
                  sub_2621DE070(&v569[1], &src);
                  break;
                case 13:
                  src.receiver = v165;
                  src.super_class = v188;
                  sub_2621DE070(&v569[1], &src);
                  break;
                case 14:
                  src.receiver = v186;
                  src.super_class = v165;
                  sub_2621DE070(&v569[1], &src);
                  break;
                default:
                  break;
              }
            }

            ++v171;
            v169 = v572;
          }

          while (v171 < v572 - 1);
          v166 = v571;
        }

        ++v168;
        v167 += 4;
        v170 += 4;
      }

      while (v168 < v166 - 1);
    }

    v599[0] = 0;
    v599[1] = 0;
    v598 = v599;
    v596 = 0;
    __src = 0;
    v597 = 0;
    v594 = 0;
    memset(v600, 0, sizeof(v600));
    LODWORD(v601) = 1065353216;
    memset(v592, 0, sizeof(v592));
    v593 = 1065353216;
    v558 = v569[2];
    if (v569[1] == v569[2])
    {
      goto LABEL_293;
    }

    v189 = (v569[1] + 8);
    while (2)
    {
      v190 = &v189[-1];
      v191 = v189[-1];
      v192 = *v189;
      v193 = vceq_f32(v191, *v189);
      if ((vpmin_u32(v193, v193).u32[0] & 0x80000000) != 0)
      {
        goto LABEL_273;
      }

      v194 = sub_26222F9E4(v600, *v189);
      v195 = sub_26222F9E4(v592, *&v191);
      v196 = v195;
      if (v194)
      {
        v198 = v194[3];
        v197 = v194[4];
        sub_26222FAD4(v600, v194);
        if (v196)
        {
          v200 = v196[3];
          v199 = v196[4];
          sub_26222FAD4(v592, v196);
          if (*&v198 == *&v200)
          {
            sub_26222FC00(__src + 6 * *&v198, v189);
            goto LABEL_273;
          }

          if (v197 > v199)
          {
            v204 = (__src + 48 * *&v200);
            v205 = v204[2].i64[0] + v204[2].i64[1];
            v206 = v204->i64[1];
            v207 = (v206 + 8 * (v205 >> 9));
            if (v204[1].i64[0] == v206)
            {
              v208 = 0;
            }

            else
            {
              v208 = *v207 + 8 * (v205 & 0x1FF);
            }

            v220 = __src + 48 * *&v198;
            v221 = v220[4];
            v222 = v220[1];
            v223 = (v222 + 8 * (v221 >> 9));
            if (v220[2] == v222)
            {
              v224 = 0;
              v227 = 0;
              v226 = (v222 + 8 * ((v220[5] + v221) >> 9));
            }

            else
            {
              v224 = *v223 + 8 * (v220[4] & 0x1FFLL);
              v225 = v220[5] + v221;
              v226 = (v222 + 8 * (v225 >> 9));
              v227 = *v226 + 8 * (v225 & 0x1FF);
            }

            sub_26222FC8C(v204, v207, v208, v223, v224, v226, v227);
            v236 = __src + 48 * *&v198;
            v237 = v236[5] + v236[4] - 1;
            sub_262230870(v592, *(*(v236[1] + ((v237 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v237 & 0x1FF)));
            sub_2622308BC(&v598, v197);
            src.receiver = (*(*(__src + 6 * *&v200 + 1) + ((*(__src + 6 * *&v200 + 4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(__src + 6 * *&v200 + 4) & 0x1FFLL));
            v238 = sub_262230990(v600, &src, *src.receiver);
            v238[3] = v200;
            v238[4] = v199;
            v239 = __src + 48 * *&v200;
            v240 = v239[5] + v239[4] - 1;
            src.receiver = (*(v239[1] + ((v240 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v240 & 0x1FF));
            v202 = sub_262230990(v592, &src, *src.receiver);
            v202[3] = v200;
LABEL_267:
            v202[4] = v199;
            goto LABEL_273;
          }

          v211 = (__src + 48 * *&v198);
          v212 = v211->i64[1];
          v213 = (v212 + 8 * (v211[2].i64[0] >> 9));
          if (v211[1].i64[0] == v212)
          {
            v214 = 0;
          }

          else
          {
            v214 = *v213 + 8 * (v211[2].i64[0] & 0x1FF);
          }

          v228 = __src + 48 * *&v200;
          v229 = v228[4];
          v230 = v228[1];
          v231 = (v230 + 8 * (v229 >> 9));
          if (v228[2] == v230)
          {
            v232 = 0;
            v235 = 0;
            v234 = (v230 + 8 * ((v228[5] + v229) >> 9));
          }

          else
          {
            v232 = *v231 + 8 * (v228[4] & 0x1FFLL);
            v233 = v228[5] + v229;
            v234 = (v230 + 8 * (v233 >> 9));
            v235 = *v234 + 8 * (v233 & 0x1FF);
          }

          sub_26222FC8C(v211, v213, v214, v231, v232, v234, v235);
          sub_262230870(v600, *(*(*(__src + 6 * *&v200 + 1) + ((*(__src + 6 * *&v200 + 4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(__src + 6 * *&v200 + 4) & 0x1FFLL)));
          sub_2622308BC(&v598, v199);
          src.receiver = (*(*(__src + 6 * *&v198 + 1) + ((*(__src + 6 * *&v198 + 4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(__src + 6 * *&v198 + 4) & 0x1FFLL));
          v241 = sub_262230990(v600, &src, *src.receiver);
          v241[3] = v198;
          v241[4] = v197;
          v242 = __src + 48 * *&v198;
          v243 = v242[5] + v242[4] - 1;
          src.receiver = (*(v242[1] + ((v243 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v243 & 0x1FF));
          v203 = sub_262230990(v592, &src, *src.receiver);
        }

        else
        {
          sub_26223112C(__src + 3 * *&v198, &v189[-1]);
          src.receiver = &v189[-1];
          v203 = sub_262230990(v600, &src, *v190);
        }

        v203[3] = v198;
        v203[4] = v197;
        goto LABEL_273;
      }

      if (v195)
      {
        v201 = v195[3];
        v199 = v195[4];
        sub_26222FAD4(v592, v195);
        sub_26222FC00(__src + 6 * *&v201, v189);
        src.receiver = v189;
        v202 = sub_262230990(v592, &src, *v189);
        v202[3] = v201;
        goto LABEL_267;
      }

      v607 = v191;
      v608 = v192;
      sub_262230DD8(&src, &v607, 2);
      v209 = v596;
      if (v596 >= v597)
      {
        v215 = __src;
        v216 = v596 - __src;
        v217 = 0xAAAAAAAAAAAAAAABLL * ((v596 - __src) >> 4);
        v218 = v217 + 1;
        if (v217 + 1 > 0x555555555555555)
        {
          sub_2621CBEB0();
        }

        if (0x5555555555555556 * ((v597 - __src) >> 4) > v218)
        {
          v218 = 0x5555555555555556 * ((v597 - __src) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v597 - __src) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v219 = 0x555555555555555;
        }

        else
        {
          v219 = v218;
        }

        *&v581 = &__src;
        if (v219)
        {
          sub_262230EF8(v219);
        }

        v244 = 16 * ((v596 - __src) >> 4);
        *v244 = src;
        *(v244 + 16) = v584;
        src = 0;
        v584 = 0u;
        *(v244 + 32) = v585;
        v585 = 0uLL;
        v210 = 48 * v217 + 48;
        v245 = (48 * v217 - v216);
        memcpy((v244 - v216), v215, v216);
        v246 = __src;
        v247 = v597;
        __src = v245;
        v596 = v210;
        v597 = 0;
        *&v580 = v246;
        *(&v580 + 1) = v247;
        *&__p = v246;
        *(&__p + 1) = v246;
        sub_262230F50(&__p);
      }

      else
      {
        *v596 = src.receiver;
        *(v209 + 1) = src.super_class;
        *(v209 + 1) = v584;
        src = 0;
        v584 = 0u;
        *(v209 + 2) = v585;
        v585 = 0uLL;
        v210 = (v209 + 48);
      }

      v596 = v210;
      sub_262230FA0(&src);
      src.receiver = &v594;
      v248 = (0xAAAAAAAAAAAAAAABLL * ((v596 - __src) >> 4) - 1);
      sub_26223104C(&v598, v594, &src)[5] = v248;
      v249 = v594;
      src.receiver = &v189[-1];
      v250 = sub_262230990(v600, &src, *v190);
      v250[3] = v248;
      v250[4] = v249;
      v251 = v594;
      src.receiver = v189;
      v252 = sub_262230990(v592, &src, *v189);
      v252[3] = v248;
      v252[4] = v251;
      ++v594;
LABEL_273:
      v253 = v189 + 1;
      v189 += 2;
      if (v253 != v558)
      {
        continue;
      }

      break;
    }

    v254 = v598;
    if (v598 != v599)
    {
      do
      {
        if (BYTE5(v569[0]) == 1)
        {
          v255 = __src + 48 * v254[5];
          v256 = v255[4];
          v257 = v256 + v255[5];
          v258 = v255[1];
          v259 = v255[2];
          v260 = (v258 + 8 * (v257 >> 9));
          if (v259 == v258)
          {
            v263 = 0;
            src.receiver = v260;
            src.super_class = 0;
            v584 = v260;
            v262 = (v258 + 8 * (v256 >> 9));
          }

          else
          {
            v261 = (*v260 + 8 * (v257 & 0x1FF));
            src.receiver = v260;
            src.super_class = v261;
            *&v584 = v260;
            *(&v584 + 1) = v261;
            v262 = (v258 + 8 * (v256 >> 9));
            v263 = *v262 + 8 * (v256 & 0x1FF);
          }

          *&__p = v262;
          *(&__p + 1) = v263;
          *&v580 = v262;
          *(&v580 + 1) = v263;
          sub_262231404(&v607, &src, &__p);
          sub_2622314EC(&v573, &v607);
          receiver = v607;
          if (!v607)
          {
            goto LABEL_287;
          }

          v608 = v607;
        }

        else
        {
          v264 = __src + 48 * v254[5];
          v265 = v264[4];
          v266 = v264[1];
          v267 = (v266 + 8 * (v265 >> 9));
          if (v264[2] == v266)
          {
            v268 = 0;
            v271 = 0;
            v270 = (v266 + 8 * ((v264[5] + v265) >> 9));
          }

          else
          {
            v268 = (*v267 + 8 * (v264[4] & 0x1FFLL));
            v269 = v264[5] + v265;
            v270 = (v266 + 8 * (v269 >> 9));
            v271 = (*v270 + 8 * (v269 & 0x1FF));
          }

          sub_262231628(&src, v267, v268, v270, v271);
          sub_2622314EC(&v573, &src);
          receiver = src.receiver;
          if (!src.receiver)
          {
            goto LABEL_287;
          }

          src.super_class = src.receiver;
        }

        operator delete(receiver);
LABEL_287:
        v273 = v254[1];
        if (v273)
        {
          do
          {
            v274 = v273;
            v273 = *v273;
          }

          while (v273);
        }

        else
        {
          do
          {
            v274 = v254[2];
            _ZF = *v274 == v254;
            v254 = v274;
          }

          while (!_ZF);
        }

        v254 = v274;
      }

      while (v274 != v599);
    }

LABEL_293:
    sub_2621C74C4(v592);
    sub_2621C74C4(v600);
    src.receiver = &__src;
    sub_262231380(&src);
    sub_2621C6C04(v599[0]);
    *__str = &unk_2874EF0B8;
    if (v604)
    {
      sub_2621D1B78(v604);
    }

    v275 = v573;
    for (m = v541; v275 != v574; v275 += 24)
    {
      v276 = *v275;
      v277 = *(v275 + 1);
      if ((v277 - *v275) >= 0x11)
      {
        v600[2] = 0;
        v600[3] = 0;
        LODWORD(v601) = 6;
        sub_26233DA58(__str, v276, v277);
        v278 = *(v544 + 288);
        *v600 = *__str;
        v600[2] = *&__str[16];
        sub_26233DD98(&src, v600, *v278);
        memset(__str, 0, 48);
        sub_26222D2A8(&__str[48], &src);
        *__str = *&__str[56];
        *&__str[16] = *&__str[72];
        *&__str[32] = *&__str[88];
        sub_26222D380(&__p, __str);
      }
    }

    *__str = &v573;
    sub_2621E1CB0(__str);
    if (v569[1])
    {
      v569[2] = v569[1];
      operator delete(v569[1]);
    }

LABEL_301:
    m = *m;
  }

  while (m);
LABEL_302:
  v279 = *(&v566[0] + 1);
  if (*&v566[0] != *(&v566[0] + 1))
  {
    sub_26222B7D4(*&v566[0], *(&v566[0] + 1), 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((*(&v566[0] + 1) - *&v566[0]) >> 3)), 1);
    __str[0] = 1;
    sub_26220F1D4(v569, 0xCCCCCCCCCCCCCCCDLL * ((*(&v566[0] + 1) - *&v566[0]) >> 3), __str);
    v281 = *(&v566[0] + 1);
    v280 = *&v566[0];
    if (*(&v566[0] + 1) != *&v566[0])
    {
      v282 = 0;
      do
      {
        if ((*(v569[0] + ((v282 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v282))
        {
          v283 = v282 + 1;
          v284 = 0xCCCCCCCCCCCCCCCDLL * ((v281 - v280) >> 3);
          if (v282 + 1 < v284)
          {
            v285 = &v280[40 * v282];
            v286 = v282 + 1;
            v287 = 40 * v282 + 40;
            do
            {
              sub_26233E0C8(__str, &v280[v287], v285, *(v544 + 128));
              if (*&__str[8] <= 1uLL)
              {
                v288 = 1;
              }

              else
              {
                v288 = *&__str[8];
              }

              if ((*__str / v288) > 0.3)
              {
                *(v569[0] + ((v286 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v286);
              }

              ++v286;
              v281 = *(&v566[0] + 1);
              v280 = *&v566[0];
              v284 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v566[0] + 1) - *&v566[0]) >> 3);
              v287 += 40;
            }

            while (v286 < v284);
          }
        }

        else
        {
          v283 = v282 + 1;
          v284 = 0xCCCCCCCCCCCCCCCDLL * ((v281 - v280) >> 3);
        }

        v282 = v283;
      }

      while (v283 < v284);
    }

    v289 = 0uLL;
    memset(v600, 0, 24);
    v290 = v569[1];
    if (v569[1])
    {
      v291 = 0;
      v292 = 0;
      do
      {
        if ((*(v569[0] + ((v292 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v292))
        {
          sub_26222C550(v600, *&v566[0] + v291);
          v290 = v569[1];
        }

        ++v292;
        v291 += 40;
      }

      while (v292 < v290);
      v293 = v600[0];
      v281 = *(&v566[0] + 1);
      v280 = *&v566[0];
      v289 = *&v600[1];
    }

    else
    {
      v293 = 0;
    }

    *&v566[0] = v293;
    v600[0] = v280;
    v600[1] = v281;
    v295 = *&v566[1];
    *(v566 + 8) = v289;
    v600[2] = v295;
    v296 = (v289 - v293) >> 3;
    v297 = 0xCCCCCCCCCCCCCCCDLL * v296;
    v298 = 0xCCCCCCCCCCCCCCCDLL * v296 - v290;
    if (0xCCCCCCCCCCCCCCCDLL * v296 <= v290)
    {
      v569[1] = (0xCCCCCCCCCCCCCCCDLL * v296);
    }

    else
    {
      if (v569[2] << 6 < v298 || v290 > (v569[2] << 6) - v298)
      {
        memset(__str, 0, 24);
        if (((v289 - v293) & 0x8000000000000000) != 0)
        {
          sub_2621CBEB0();
        }

        if (v569[2] << 6 > 0x3FFFFFFFFFFFFFFEuLL)
        {
          v300 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else if (v569[2] << 7 <= ((v297 + 63) & 0x7FFFFFFFFFFFFC0uLL))
        {
          v300 = (v297 + 63) & 0x7FFFFFFFFFFFFC0;
        }

        else
        {
          v300 = v569[2] << 7;
        }

        sub_2621DC8A4(__str, v300);
        v303 = v569[0];
        v304 = v569[1];
        *&__str[8] = v569[1] + v298;
        v305 = *__str;
        if (v569[1] < 1)
        {
          LODWORD(v302) = 0;
          v301 = *__str;
        }

        else
        {
          v306 = v569[1] >> 6;
          if (v569[1] >= 0x40)
          {
            memmove(*__str, v569[0], 8 * v306);
          }

          v301 = &v305[8 * v306];
          v302 = v304 & 0x3F;
          if (v302)
          {
            *v301 = *v301 & ~(0xFFFFFFFFFFFFFFFFLL >> -v302) | v303[v306] & (0xFFFFFFFFFFFFFFFFLL >> -v302);
          }

          v303 = v569[0];
        }

        v569[0] = v305;
        *__str = v303;
        *&v569[1] = *&__str[8];
        if (v303)
        {
          operator delete(v303);
        }
      }

      else
      {
        v301 = (v569[0] + 8 * (v290 >> 6));
        LODWORD(v302) = v290 & 0x3F;
        v569[1] = (0xCCCCCCCCCCCCCCCDLL * v296);
      }

      *__str = v301;
      *&__str[8] = v302;
      sub_26220F35C(__str, v298);
      v297 = v569[1];
    }

    if (v297 > 0)
    {
      *__str = v569[0];
      *&__str[8] = 0;
      sub_26220F2A8(__str, v297);
    }

    if (*(&v566[0] + 1) != *&v566[0])
    {
      v307 = 0;
      v308 = *(&v566[0] + 1);
      do
      {
        v309 = *&v566[0] + 40 * v307;
        if (*(v309 + 32) != 6)
        {
          goto LABEL_385;
        }

        if (v308 == *&v566[0])
        {
          v308 = *&v566[0];
          goto LABEL_385;
        }

        v310 = 0;
        do
        {
          if (v310 == v307)
          {
            goto LABEL_382;
          }

          v311 = *(*&v566[0] + 40 * v310 + 32);
          if (v311 == 6)
          {
            goto LABEL_382;
          }

          if (!*(&v576 + 1))
          {
            goto LABEL_684;
          }

          v312 = vcnt_s8(*(&v576 + 8));
          v312.i16[0] = vaddlv_u8(v312);
          if (v312.u32[0] > 1uLL)
          {
            v313 = *(*&v566[0] + 40 * v310 + 32);
            if (*(&v576 + 1) <= v311)
            {
              v313 = v311 % DWORD2(v576);
            }
          }

          else
          {
            v313 = (DWORD2(v576) - 1) & v311;
          }

          v314 = *(v576 + 8 * v313);
          if (!v314 || (v315 = *v314) == 0)
          {
LABEL_684:
            sub_2621C84A8("unordered_map::at: key not found");
          }

          while (1)
          {
            v316 = v315[1];
            if (v316 == v311)
            {
              break;
            }

            if (v312.u32[0] > 1uLL)
            {
              if (v316 >= *(&v576 + 1))
              {
                v316 %= *(&v576 + 1);
              }
            }

            else
            {
              v316 &= *(&v576 + 1) - 1;
            }

            if (v316 != v313)
            {
              goto LABEL_684;
            }

LABEL_376:
            v315 = *v315;
            if (!v315)
            {
              goto LABEL_684;
            }
          }

          if (*(v315 + 4) != v311)
          {
            goto LABEL_376;
          }

          if (*(v315 + 161))
          {
            v308 = *(&v566[0] + 1);
          }

          else
          {
            v308 = *(&v566[0] + 1);
            if (*v309 != *(v309 + 8))
            {
              sub_26233DD98(&__p, v309, v315[4]);
              memset(__str, 0, 48);
              sub_26222D2A8(&__str[48], &__p);
              *__str = *&__str[56];
              *&__str[16] = *&__str[72];
              *&__str[32] = *&__str[88];
              sub_26222D380(&src, __str);
            }
          }

LABEL_382:
          ++v310;
        }

        while (v310 < 0xCCCCCCCCCCCCCCCDLL * ((v308 - *&v566[0]) >> 3));
LABEL_385:
        ++v307;
      }

      while (v307 < 0xCCCCCCCCCCCCCCCDLL * ((v308 - *&v566[0]) >> 3));
    }

    v317 = v600[1];
    v318 = v600[0];
    if (v600[1] != v600[0])
    {
      v319 = v600[1];
      do
      {
        v321 = *(v319 - 5);
        v319 -= 40;
        v320 = v321;
        if (v321)
        {
          *(v317 - 4) = v320;
          operator delete(v320);
        }

        v317 = v319;
      }

      while (v319 != v318);
    }

    v600[1] = v318;
    v322 = v569[1];
    if (v569[1])
    {
      v323 = 0;
      v324 = 0;
      do
      {
        if ((*(v569[0] + ((v324 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v324))
        {
          sub_26222C550(v600, *&v566[0] + v323);
          v322 = v569[1];
        }

        ++v324;
        v323 += 40;
      }

      while (v324 < v322);
      v318 = v600[1];
    }

    v325 = v566[0];
    *&v566[0] = v600[0];
    *(&v566[0] + 1) = v318;
    *v600 = v325;
    v326 = *&v566[1];
    *&v566[1] = v600[2];
    v600[2] = v326;
    *__str = v600;
    sub_26222C6EC(__str);
    if (v569[0])
    {
      operator delete(v569[0]);
    }

    v279 = *(&v566[0] + 1);
  }

  for (n = *&v566[0]; n != v279; n += 40)
  {
    if (*(n + 32) == 3)
    {
      *(n + 32) = 6;
    }
  }

  sub_26222EB58(&v576);
LABEL_405:
  kdebug_trace();
  kdebug_trace();
  v543 = v527;
  v538 = objc_msgSend_array(MEMORY[0x277CBEB18], v328, v329);
  v330 = sub_2621CD3A4(*(v544 + 432));
  if (v330)
  {
    v331 = v330[7];
  }

  else
  {
    v331 = 0uLL;
  }

  v555 = v331;

  v332 = sub_2621CD3A4(*(v544 + 432));
  if (v332)
  {
    v333 = v332[5];
  }

  else
  {
    v333 = 0uLL;
  }

  v559 = v333;

  v336 = objc_msgSend_objects(v543, v334, v335);
  v339 = objc_msgSend_count(v336, v337, v338) == 0;

  if (v339)
  {
    goto LABEL_587;
  }

  memset(v592, 0, 24);
  __p = 0u;
  v580 = 0u;
  v581 = 0u;
  v582 = 0u;
  v342 = objc_msgSend_objects(v543, v340, v341);
  v346 = objc_msgSend_countByEnumeratingWithState_objects_count_(v342, v343, &__p, __str, 16);
  if (!v346)
  {
    goto LABEL_454;
  }

  v551 = *v580;
  while (2)
  {
    v347 = 0;
    while (2)
    {
      if (*v580 != v551)
      {
        objc_enumerationMutation(v342);
      }

      v348 = *(*(&__p + 1) + 8 * v347);
      v349 = objc_msgSend_boxesDict(v348, v344, v345);
      v350 = v342;
      v352 = objc_msgSend_objectForKeyedSubscript_(v349, v351, @"wallaligned");
      v353 = v352 == 0;

      v356 = @"wallaligned";
      if (v353)
      {
        v357 = objc_msgSend_boxesDict(v348, v354, v355);
        v376 = objc_msgSend_objectForKeyedSubscript_(v357, v373, @"raw_offline");
        if (!v376)
        {
          goto LABEL_451;
        }

        v377 = objc_msgSend_type(v348, v374, v375);
        if ((objc_msgSend_isEqualToString_(v377, v378, @"Bed") & 1) == 0)
        {

          goto LABEL_451;
        }

        objc_msgSend_confidence(v348, v379, v380);
        v382 = v381 > 0.5;

        v356 = @"raw_offline";
        if (v382)
        {
          goto LABEL_416;
        }
      }

      else
      {
LABEL_416:
        v357 = v356;
        v589 = 0u;
        v590 = 0u;
        v587 = 0u;
        v588 = 0u;
        v585 = 0u;
        v586 = 0u;
        src = 0;
        v584 = 0u;
        v360 = objc_msgSend_boxesDict(v348, v358, v359);
        v362 = objc_msgSend_objectForKeyedSubscript_(v360, v361, v357);
        sub_262211250(&src, v362);

        sub_2621D0F64(v569, "");
        v569[3] = 0;
        v570 = 0;
        v571 = 0;
        v365 = objc_msgSend_type(v348, v363, v364);
        v366 = v365;
        v369 = objc_msgSend_UTF8String(v365, v367, v368);
        sub_2621D0F64(v600, v369);
        if (SHIBYTE(v569[2]) < 0)
        {
          operator delete(v569[0]);
        }

        *v569 = *v600;
        v569[2] = v600[2];
        HIBYTE(v600[2]) = 0;
        LOBYTE(v600[0]) = 0;

        for (ii = 0; ii != 64; ii += 16)
        {
          v600[0] = vmaxnm_f32(vcvt_f32_s32(vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(v559, vaddq_f64(v555, vcvtq_f64_f32(*(&src.receiver + ii)))))))), 0);
          sub_2621CBA84(&v569[3], v600);
        }

        v371 = v592[1];
        if (v592[1] >= v592[2])
        {
          v383 = 0xAAAAAAAAAAAAAAABLL * ((v592[1] - v592[0]) >> 4) + 1;
          if (v383 > 0x555555555555555)
          {
            sub_2621CBEB0();
          }

          if (0x5555555555555556 * ((v592[2] - v592[0]) >> 4) > v383)
          {
            v383 = 0x5555555555555556 * ((v592[2] - v592[0]) >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v592[2] - v592[0]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v384 = 0x555555555555555;
          }

          else
          {
            v384 = v383;
          }

          v601 = v592;
          if (v384)
          {
            if (v384 <= 0x555555555555555)
            {
              operator new();
            }

            sub_2621C6A34();
          }

          v386 = (16 * ((v592[1] - v592[0]) >> 4));
          v600[0] = 0;
          v600[1] = v386;
          v600[2] = v386;
          v600[3] = 0;
          if (SHIBYTE(v569[2]) < 0)
          {
            sub_2621CC810(v386, v569[0], v569[1]);
          }

          else
          {
            *v386 = *v569;
            v386[2] = v569[2];
          }

          v386[3] = 0;
          v386[4] = 0;
          v386[5] = 0;
          sub_2621CC8B4(v386 + 3, v569[3], v570, (v570 - v569[3]) >> 3);
          v600[2] = v600[2] + 48;
          v387 = v592[1];
          v388 = v592[0];
          v389 = v600[1] + v592[0] - v592[1];
          if (v592[0] != v592[1])
          {
            v390 = v592[0];
            v391 = v600[1] + v592[0] - v592[1];
            do
            {
              v392 = *v390;
              *(v391 + 2) = *(v390 + 2);
              *v391 = v392;
              *(v390 + 1) = 0;
              *(v390 + 2) = 0;
              *v390 = 0;
              *(v391 + 3) = 0;
              *(v391 + 4) = 0;
              *(v391 + 5) = 0;
              *(v391 + 24) = *(v390 + 24);
              *(v391 + 5) = *(v390 + 5);
              *(v390 + 3) = 0;
              *(v390 + 4) = 0;
              *(v390 + 5) = 0;
              v390 += 3;
              v391 += 48;
            }

            while (v390 != v387);
            do
            {
              sub_262241314(v388);
              v388 += 48;
            }

            while (v388 != v387);
          }

          v393 = v592[0];
          v394 = v592[2];
          v592[0] = v389;
          v548 = v600[2];
          *&v592[1] = *&v600[2];
          v600[2] = v393;
          v600[3] = v394;
          v600[1] = v393;
          v600[0] = v393;
          sub_262312A1C(v600);
          v385 = v548;
        }

        else
        {
          if (SHIBYTE(v569[2]) < 0)
          {
            sub_2621CC810(v592[1], v569[0], v569[1]);
          }

          else
          {
            v372 = *v569;
            *(v592[1] + 16) = v569[2];
            *v371 = v372;
          }

          *(v371 + 24) = 0;
          *(v371 + 32) = 0;
          *(v371 + 40) = 0;
          sub_2621CC8B4((v371 + 24), v569[3], v570, (v570 - v569[3]) >> 3);
          v385 = (v371 + 48);
        }

        v592[1] = v385;
        if (v569[3])
        {
          v570 = v569[3];
          operator delete(v569[3]);
        }

        if (SHIBYTE(v569[2]) < 0)
        {
          operator delete(v569[0]);
        }

LABEL_451:
      }

      ++v347;
      v342 = v350;
      if (v347 != v346)
      {
        continue;
      }

      break;
    }

    v346 = objc_msgSend_countByEnumeratingWithState_objects_count_(v350, v344, &__p, __str, 16);
    if (v346)
    {
      continue;
    }

    break;
  }

LABEL_454:

  v395 = 0uLL;
  memset(v569, 0, 24);
  v396 = *(&v566[0] + 1);
  v397 = *&v566[0];
  if (*&v566[0] != *(&v566[0] + 1))
  {
LABEL_455:
    v398 = *(v544 + 400);
    if (!*&v398)
    {
      goto LABEL_472;
    }

    v399 = *(v397 + 32);
    v400 = vcnt_s8(v398);
    v400.i16[0] = vaddlv_u8(v400);
    if (v400.u32[0] > 1uLL)
    {
      v401 = *(v397 + 32);
      if (*&v398 <= v399)
      {
        v401 = v399 % v398.i32[0];
      }
    }

    else
    {
      v401 = (v398.i32[0] - 1) & v399;
    }

    v402 = *(v544 + 392);
    v403 = *(v402 + 8 * v401);
    if (!v403 || (v404 = *v403) == 0)
    {
LABEL_472:
      sub_26222C550(v569, v397);
      goto LABEL_473;
    }

    v405 = *&v398 - 1;
    while (1)
    {
      v406 = v404[1];
      if (v406 == v399)
      {
        if (*(v404 + 4) == v399)
        {
          if (v400.u32[0] > 1uLL)
          {
            v407 = *(v397 + 32);
            if (*&v398 <= v399)
            {
              v407 = v399 % v398.i32[0];
            }
          }

          else
          {
            v407 = (v398.i32[0] - 1) & v399;
          }

          v408 = *(v402 + 8 * v407);
          if (!v408 || (v409 = *v408) == 0)
          {
LABEL_687:
            sub_2621C84A8("unordered_map::at: key not found");
          }

          while (2)
          {
            v410 = v409[1];
            if (v410 != v399)
            {
              if (v400.u32[0] > 1uLL)
              {
                if (v410 >= *&v398)
                {
                  v410 %= *&v398;
                }
              }

              else
              {
                v410 &= v405;
              }

              if (v410 != v407)
              {
                goto LABEL_687;
              }

LABEL_489:
              v409 = *v409;
              if (!v409)
              {
                goto LABEL_687;
              }

              continue;
            }

            break;
          }

          if (*(v409 + 4) != v399)
          {
            goto LABEL_489;
          }

          if (*(v397 + 28) > *(v409 + 13))
          {
            goto LABEL_472;
          }

          src = 0;
          v584 = 0u;
          LODWORD(v585) = 1065353216;
          v411 = v409[3];
          v412 = v409[4];
          while (v411 != v412)
          {
            v600[0] = v411;
            sub_2622321D0(&src, v411, v600)[5] = 0;
            v411 += 24;
          }

          v413 = v592[0];
          v414 = v592[1];
          while (v413 != v414)
          {
            v416 = v409[3];
            v415 = v409[4];
            if (v416 != v415)
            {
              v417 = *(v413 + 23);
              if (v417 >= 0)
              {
                v418 = *(v413 + 23);
              }

              else
              {
                v418 = v413[1];
              }

              if (v417 >= 0)
              {
                v419 = v413;
              }

              else
              {
                v419 = *v413;
              }

              while (1)
              {
                v420 = *(v416 + 23);
                v421 = v420;
                if ((v420 & 0x80u) != 0)
                {
                  v420 = *(v416 + 8);
                }

                if (v420 == v418)
                {
                  v422 = v421 >= 0 ? v416 : *v416;
                  if (!memcmp(v422, v419, v418))
                  {
                    break;
                  }
                }

                v416 += 24;
                if (v416 == v415)
                {
                  goto LABEL_530;
                }
              }
            }

            if (v416 != v415)
            {
              v423 = *v397;
              v424 = *(v397 + 8);
              v425 = 0x80000000800000;
              v426 = 0x80000000800000;
              if (*v397 != v424)
              {
                do
                {
                  v427 = *v423++;
                  v426 = vbsl_s8(vcgt_f32(v427, v426), v427, v426);
                }

                while (v423 != v424);
                v426 = vadd_f32(v426, 0x3F0000003F000000);
              }

              v428 = v413[3];
              v429 = v413[4];
              if (v428 != v429)
              {
                v430 = 0x80000000800000;
                do
                {
                  v431 = *v428++;
                  v430 = vbsl_s8(vcgt_f32(v431, v430), v431, v430);
                }

                while (v428 != v429);
                v425 = vadd_f32(v430, 0x3F0000003F000000);
              }

              v432 = vrndp_f32(v426);
              if (v432.f32[0] < v432.f32[1])
              {
                v432.f32[0] = v432.f32[1];
              }

              v433 = vrndp_f32(v425);
              if (v433.f32[0] < v433.f32[1])
              {
                v433.f32[0] = v433.f32[1];
              }

              if (v432.f32[0] <= v433.f32[0])
              {
                v434 = v433.f32[0];
              }

              else
              {
                v434 = v432.f32[0];
              }

              sub_26233E0C8(v600, v397, v413 + 3, v434);
              if (v600[0] >= 0x1A)
              {
                *&v576 = v413;
                v435 = sub_2622321D0(&src, v413, &v576);
                ++v435[5];
              }
            }

LABEL_530:
            v413 += 6;
          }

          v436 = v584;
          if (v584)
          {
            v437 = 0;
            do
            {
              if (v436[5])
              {
                ++v437;
              }

              v436 = *v436;
            }

            while (v436);
          }

          else
          {
            v437 = 0;
          }

          if (*(v397 + 32) != 2)
          {
            v444 = *(v409 + 12);
            if (v444)
            {
              v445 = 1;
            }

            else
            {
              v445 = v437 == 0;
            }

            if (!v445)
            {
              goto LABEL_583;
            }

            if (v444 == 1 && v437 == *(&v584 + 1))
            {
              goto LABEL_583;
            }

            goto LABEL_584;
          }

          sub_2621D0F64(v600, "Chair");
          v438 = sub_2621D1580(v600);
          v439 = v438;
          super_class = src.super_class;
          if (!src.super_class)
          {
            goto LABEL_565;
          }

          v441 = vcnt_s8(src.super_class);
          v441.i16[0] = vaddlv_u8(v441);
          v442 = v441.u32[0];
          if (v441.u32[0] > 1uLL)
          {
            v443 = v438;
            if (v438 >= src.super_class)
            {
              v443 = v438 % src.super_class;
            }
          }

          else
          {
            v443 = (src.super_class - 1) & v438;
          }

          v447 = *(src.receiver + v443);
          if (!v447 || (v448 = *v447) == 0)
          {
LABEL_565:
            operator new();
          }

          while (2)
          {
            v449 = v448[1];
            if (v449 != v439)
            {
              if (v442 > 1)
              {
                if (v449 >= super_class)
                {
                  v449 %= super_class;
                }
              }

              else
              {
                v449 &= super_class - 1;
              }

              if (v449 != v443)
              {
                goto LABEL_565;
              }

LABEL_564:
              v448 = *v448;
              if (!v448)
              {
                goto LABEL_565;
              }

              continue;
            }

            break;
          }

          if (!sub_2621D19D0(v448 + 2, v600))
          {
            goto LABEL_564;
          }

          v450 = v448[5];
          if (SHIBYTE(v600[2]) < 0)
          {
            operator delete(v600[0]);
          }

          v451 = *(v397 + 28);
          v453 = v437 == *(&v584 + 1) && v451 > 0.8;
          v454 = v453 || v450 > 3;
          v456 = v437 == *(&v584 + 1) && v450 > 3;
          if (v451 > 0.8)
          {
            v456 = 0;
          }

          if ((v454 | v456))
          {
LABEL_583:
            sub_26222C550(v569, v397);
          }

LABEL_584:
          sub_2621E27D4(&src);
LABEL_473:
          v397 += 40;
          if (v397 == v396)
          {
            v396 = *(&v566[0] + 1);
            v397 = *&v566[0];
            v395 = *v569;
            v457 = v569[2];
            goto LABEL_586;
          }

          goto LABEL_455;
        }
      }

      else
      {
        if (v400.u32[0] > 1uLL)
        {
          if (v406 >= *&v398)
          {
            v406 %= *&v398;
          }
        }

        else
        {
          v406 &= v405;
        }

        if (v406 != v401)
        {
          goto LABEL_472;
        }
      }

      v404 = *v404;
      if (!v404)
      {
        goto LABEL_472;
      }
    }
  }

  v457 = 0;
LABEL_586:
  v566[0] = v395;
  v569[0] = v397;
  v569[1] = v396;
  v458 = *&v566[1];
  *&v566[1] = v457;
  v569[2] = v458;
  src.receiver = v569;
  sub_26222C6EC(&src);
  src.receiver = v592;
  sub_262312240(&src);
LABEL_587:
  v459 = objc_msgSend_floors(v543, v340, v341);
  v462 = objc_msgSend_count(v459, v460, v461) == 0;

  if (!v462)
  {
    v465 = objc_msgSend_floors(v543, v463, v464);
    v467 = objc_msgSend_objectAtIndexedSubscript_(v465, v466, 0);

    if (objc_msgSend_polygonSize(v467, v468, v469) < 4)
    {
      objc_msgSend_quad(v467, v470, v471);
      LODWORD(src.super_class) = v474;
      DWORD2(v584) = v475;
      src.receiver = v476;
      *&v584 = v477;
      DWORD2(v585) = v478;
      DWORD2(v586) = v479;
      *&v585 = v480;
      *&v586 = v481;
      sub_2621CBF10(1uLL);
    }

    if (objc_msgSend_polygonSize(v467, v470, v471))
    {
      objc_msgSend_polygon(v467, v472, v473);
      sub_2621CBF10(1uLL);
    }

    memset(v600, 0, 24);
    memset(v569, 0, 24);
    if (*&v566[0] != *(&v566[0] + 1))
    {
      sub_262341FFC(&src, *&v566[0], v600);
    }

    src = 0;
    v584 = 0u;
    LODWORD(v585) = 6;
    HIDWORD(v584) = 1065353216;
    sub_26223200C(&src, v600[0], v600[1], (v600[1] - v600[0]) >> 3);
    *(&v584 + 2) = sub_26233DFA8(v600);
    v482 = v569[1];
    if (v569[1] >= v569[2])
    {
      v483 = sub_26222E9D8(v569, &src);
      v569[1] = v483;
      if (src.receiver)
      {
        operator delete(src.receiver);
        v483 = v569[1];
      }
    }

    else
    {
      *v569[1] = src;
      v482[2] = v584;
      *&v584 = 0;
      src.super_class = 0;
      src.receiver = 0;
      v482[3] = *(&v584 + 1);
      *(v482 + 8) = v585;
      v483 = v482 + 5;
      v569[1] = v482 + 5;
    }

    v484 = v569[0];
    *v569 = v566[0];
    *&v566[0] = v484;
    *(&v566[0] + 1) = v483;
    v485 = *&v566[1];
    *&v566[1] = v569[2];
    v569[2] = v485;
    src.receiver = v569;
    sub_26222C6EC(&src);
    if (v600[0])
    {
      operator delete(v600[0]);
    }
  }

  v487 = *(&v566[0] + 1);
  v486 = *&v566[0];
  if (*&v566[0] != *(&v566[0] + 1))
  {
    v552 = *(&v566[0] + 1);
    do
    {
      v488 = *v486;
      v489 = *(v486 + 8);
      if (*v486 != v489)
      {
        sub_2621CBEC8(1uLL);
      }

      *v486 = 0;
      *(v486 + 8) = 0;
      *(v486 + 16) = 0;
      v490 = *(v486 + 24) / v559.f64[0];
      *(v486 + 24) = v490;
      if (v488)
      {
        operator delete(v488);
      }

      v486 += 40;
    }

    while (v486 != v552);
    v487 = *(&v566[0] + 1);
    v486 = *&v566[0];
  }

  if (v486 == v487)
  {
    goto LABEL_679;
  }

  while (2)
  {
    v491 = [RSRoomTypePolygon alloc];
    if (v491)
    {
      v495 = sub_26230E988(v491, (*(v486 + 8) - *v486) >> 3, *v486);
      v496 = v495;
      if (v495)
      {
        *(v495 + 8) = 1;
      }
    }

    else
    {
      v496 = 0;
    }

    sub_262298008(v569, (v544 + 8), v486, (*(v486 + 8) - *v486) >> 3, v492, v493, v494);
    v497 = v569[0];
    if ((v569[1] - v569[0]) != 32)
    {
      goto LABEL_652;
    }

    v498 = *v569[0];
    v499 = *(v569[0] + 1);
    v500 = *(v569[0] + 2);
    v501 = *(v569[0] + 3);
    sub_26233E620(*v486, *(v486 + 8));
    v504 = v503;
    v505 = MEMORY[0x277CCACA8];
    v506 = *(v486 + 32);
    if (atomic_load_explicit(&qword_27FF0C2F8, memory_order_acquire) != -1)
    {
      v600[0] = &v576;
      v592[0] = v600;
      std::__call_once(&qword_27FF0C2F8, v592, sub_262312308);
    }

    if (!qword_27FF0C2F0)
    {
      goto LABEL_634;
    }

    v507 = *(qword_27FF0C2F0 + 8);
    if (!*&v507)
    {
      goto LABEL_634;
    }

    v508 = vcnt_s8(v507);
    v508.i16[0] = vaddlv_u8(v508);
    if (v508.u32[0] > 1uLL)
    {
      v509 = v506;
      if (*&v507 <= v506)
      {
        v509 = v506 % v507.i32[0];
      }
    }

    else
    {
      v509 = (v507.i32[0] - 1) & v506;
    }

    v510 = *(*qword_27FF0C2F0 + 8 * v509);
    if (!v510 || (v511 = *v510) == 0)
    {
LABEL_634:
      sub_2621D0F64(&src, "Others");
      goto LABEL_635;
    }

    v512 = *&v507 - 1;
    while (2)
    {
      v513 = v511[1];
      if (v513 != v506)
      {
        if (v508.u32[0] > 1uLL)
        {
          if (v513 >= *&v507)
          {
            v513 %= *&v507;
          }
        }

        else
        {
          v513 &= v512;
        }

        if (v513 != v509)
        {
          goto LABEL_634;
        }

        goto LABEL_633;
      }

      if (*(v511 + 4) != v506)
      {
LABEL_633:
        v511 = *v511;
        if (!v511)
        {
          goto LABEL_634;
        }

        continue;
      }

      break;
    }

    if (v508.u32[0] > 1uLL)
    {
      v522 = v506;
      if (*&v507 <= v506)
      {
        v522 = v506 % v507.i32[0];
      }
    }

    else
    {
      v522 = (v507.i32[0] - 1) & v506;
    }

    v523 = *(*qword_27FF0C2F0 + 8 * v522);
    if (!v523)
    {
LABEL_688:
      sub_2621C84A8("unordered_map::at: key not found");
    }

    do
    {
      while (1)
      {
        v523 = *v523;
        if (!v523)
        {
          goto LABEL_688;
        }

        v524 = v523[1];
        if (v524 == v506)
        {
          break;
        }

        if (v508.u32[0] > 1uLL)
        {
          if (v524 >= *&v507)
          {
            v524 %= *&v507;
          }
        }

        else
        {
          v524 &= v512;
        }

        if (v524 != v522)
        {
          goto LABEL_688;
        }
      }
    }

    while (*(v523 + 4) != v506);
    if (*(v523 + 47) < 0)
    {
      sub_2621CC810(&src, v523[3], v523[4]);
    }

    else
    {
      src = *(v523 + 3);
      *&v584 = v523[5];
    }

LABEL_635:
    if ((SBYTE7(v584) & 0x80u) == 0)
    {
      objc_msgSend_stringWithUTF8String_(v505, v502, &src);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v505, v502, src.receiver);
    }
    v514 = ;
    if (SBYTE7(v584) < 0)
    {
      operator delete(src.receiver);
    }

    v515 = [RSRoomType alloc];
    v516 = *(v486 + 28);
    v517 = v514;
    v518 = v496;
    if (v515)
    {
      src.receiver = v515;
      src.super_class = RSRoomType;
      v519 = objc_msgSendSuper2(&src, sel_init);
      v515 = v519;
      if (v519)
      {
        v519->_confidenceScore = v516;
        v519->_insideRoom = 1;
        objc_storeStrong(&v519->_label, v514);
        objc_storeStrong(&v515->_polygon, v496);
        *v515->_polygonCenter = v504;
      }
    }

    src.receiver = v498;
    src.super_class = v499;
    *&v584 = v500;
    *(&v584 + 1) = v501;
    if (v515)
    {
      objc_copyStruct(&v515[1], &src, 32, 1, 0);
    }

    if (v543)
    {
      LODWORD(v521) = v543[4];
      if (v515)
      {
        goto LABEL_647;
      }
    }

    else
    {
      v521 = 0.0;
      if (v515)
      {
LABEL_647:
        v515->_floorHeight = *&v521;
      }
    }

    if (v543)
    {
      LODWORD(v521) = v543[3];
      if (v515)
      {
        goto LABEL_650;
      }
    }

    else
    {
      v521 = 0.0;
      if (v515)
      {
LABEL_650:
        v515->_ceilingHeight = *&v521;
      }
    }

    objc_msgSend_addObject_(v538, v520, v515, v521);

    v497 = v569[0];
LABEL_652:
    if (v497)
    {
      operator delete(v497);
    }

    v486 += 40;
    if (v486 != v487)
    {
      continue;
    }

    break;
  }

LABEL_679:

  kdebug_trace();
  *__str = v566;
  sub_26222C6EC(__str);
LABEL_680:
  sub_2621CD534(&v567);
LABEL_681:

  return v538;
}

void sub_262316830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45)
{
  sub_2621D1A44(1, v45);
  if (SLOBYTE(STACK[0x357]) < 0)
  {
    operator delete(STACK[0x340]);
  }

  sub_2621E27D4(&STACK[0x240]);
  STACK[0x240] = &a45;
  sub_26222C6EC(&STACK[0x240]);
  STACK[0x240] = &STACK[0x2E0];
  sub_262312240(&STACK[0x240]);

  a45 = &a39;
  sub_26222C6EC(&a45);
  sub_2621CD534(&a43);

  _Unwind_Resume(a1);
}

void sub_262316F74(uint64_t a1, double a2, float64x2_t a3)
{
  if (a1)
  {
    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 0;
    }

    sub_2621CD3D4(*(a1 + 432), a2, a3);
    v4 = *(a1 + 24);

    sub_2622C5BB4(v4);
  }
}

void sub_262316FC8(void *a1, void *a2, float32x4_t **a3, uint64_t *a4, unint64_t a5)
{
  v7 = objc_autoreleasePoolPush();
  if (a3[1])
  {
    v8 = a4[1];
    if (v8)
    {
      if (*(a5 + 8))
      {
        if (!(v8 >> 59))
        {
          sub_262320060(v8);
        }

        sub_2621CBEB0();
      }
    }
  }

  a1[1] = *a1;
  objc_autoreleasePoolPop(v7);
}

void sub_26231F558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&STACK[0xA40]);
  sub_2621C57C8(&STACK[0x950]);
  STACK[0x220] = v66;
  if (STACK[0x2A0])
  {
    sub_2621D1B78(STACK[0x2A0]);
  }

  if (STACK[0x860])
  {
    sub_2621D1B78(STACK[0x860]);
  }

  STACK[0xAA0] = &unk_2874EE930;
  if (STACK[0xB20])
  {
    sub_2621D1B78(STACK[0xB20]);
  }

  STACK[0x740] = v65;
  if (STACK[0x7C0])
  {
    sub_2621D1B78(STACK[0x7C0]);
  }

  STACK[0x420] = &unk_2874EF0D8;
  if (STACK[0x4A0])
  {
    sub_2621D1B78(STACK[0x4A0]);
  }

  STACK[0x670] = &unk_2874EF0D8;
  if (STACK[0x6F0])
  {
    sub_2621D1B78(STACK[0x6F0]);
  }

  STACK[0x880] = a27;
  if (STACK[0x900])
  {
    sub_2621D1B78(STACK[0x900]);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_2621C57C8(&a65);
  _Unwind_Resume(a1);
}

void sub_262320060(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_2623200A8(uint64_t a1, float **a2, unint64_t a3, float *a4)
{
  if (!a3)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_2622ABC20(&v23, a3);
  v9 = *a4;
  v8 = a4[1];
  *&__p = v9;
  if (v9 <= v8)
  {
    v10 = (v8 - v9) / a3;
    do
    {
      sub_2621C8F2C(&v23, &__p);
      v9 = v10 + v9;
      *&__p = v9;
    }

    while (v9 <= a4[1]);
  }

  v11 = v23;
  v12 = v24;
  v13 = (v24 - v23) >> 2;
  if (v13 > 1)
  {
    v26 = 0;
    sub_2621DE86C(&__p, v13 - 1, &v26);
    v14 = __p;
    v15 = v28;
    v16 = *a2;
    v17 = a2[1];
    v18 = v28 - __p;
    if (*a2 == v17)
    {
LABEL_22:
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      sub_2621C8B60(a1, v14, v15, v18 >> 2);
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      sub_2621C8E70((a1 + 24), v11, v12, v13);
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      goto LABEL_24;
    }

    while (1)
    {
      v19 = *v16;
      if ((v18 >> 2) < 2)
      {
        v22 = 0;
LABEL_16:
        if (v19 < v11[v22] || v19 > v11[v22 + 1])
        {
          goto LABEL_21;
        }
      }

      else
      {
        v20 = 0;
        v21 = v11 + 1;
        while (v19 < *(v21 - 1) || v19 >= *v21)
        {
          --v20;
          ++v21;
          if (-((v18 >> 2) - 1) == v20)
          {
            v22 = (v18 >> 2) - 1;
            goto LABEL_16;
          }
        }

        v22 = -v20;
      }

      ++*(v14 + v22);
LABEL_21:
      if (++v16 == v17)
      {
        goto LABEL_22;
      }
    }
  }

  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_2621C8E70((a1 + 24), v11, v12, v13);
LABEL_24:
  if (v11)
  {
    operator delete(v11);
  }
}

void sub_262320290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2623202F4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EE930;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    if (v11)
    {
      sub_2621D1B78(v11);
    }
  }

  else
  {
    *(a1 + 120) = v9;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t sub_2623203CC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EE9A8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    if (v11)
    {
      sub_2621D1B78(v11);
    }
  }

  else
  {
    *(a1 + 120) = v9;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

void *sub_2623204A4(void *a1)
{
  a1[61] = &unk_2874EE9A8;
  v2 = a1[77];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[36] = &unk_2874EF0D8;
  v3 = a1[52];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  sub_2621C57C8((a1 + 6));
  return a1;
}

uint64_t sub_262320528(float32x2_t *a1, float32x2_t *a2, uint64_t a3, float32x2_t *a4, uint64_t a5)
{
  v10 = *(a3 + 24);
  v11 = (a3 + 32);
  if (v10 == (a3 + 32))
  {
LABEL_10:
    v16 = *(a3 + 48);
    v17 = (a3 + 56);
    if (v16 == v17)
    {
LABEL_19:
      if (!a5)
      {
        return 0;
      }

      v21 = 32 * a5;
      while (1)
      {
        if (sub_2621DC76C(*a2, *a4, a4[1], 0.00001) <= 0.15)
        {
          v22 = sub_2621C92AC(a1, a4, 0);
          if ((180.0 - v22) < v22)
          {
            v22 = 180.0 - v22;
          }

          if (v22 > 75.0)
          {
            break;
          }
        }

        a4 += 4;
        v21 -= 32;
        if (!v21)
        {
          return 0;
        }
      }
    }

    else
    {
      v18 = *a2;
      while (sub_2621DC76C(v18, v16[5], v16[6], 0.00001) > 0.15)
      {
        v19 = v16[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v16[2];
            v15 = *v20 == v16;
            v16 = v20;
          }

          while (!v15);
        }

        v16 = v20;
        if (v20 == v17)
        {
          goto LABEL_19;
        }
      }
    }
  }

  else
  {
    v12 = *a2;
    while (sub_2621DC76C(v12, v10[5], v10[6], 0.00001) > 0.15)
    {
      v13 = v10[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v10[2];
          v15 = *v14 == v10;
          v10 = v14;
        }

        while (!v15);
      }

      v10 = v14;
      if (v14 == v11)
      {
        goto LABEL_10;
      }
    }
  }

  return 1;
}

uint64_t sub_2623206DC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
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

uint64_t sub_26232071C(uint64_t a1, float32x2_t a2)
{
  v4 = *(a1 + 24);
  v5 = (a1 + 32);
  if (v4 == (a1 + 32))
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      if (sub_2621DC76C(a2, v4[5], v4[6], 0.00001) <= 0.1)
      {
        result = 1;
        if (v6)
        {
          return result;
        }

        v6 = 1;
      }

      v8 = v4[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != v5);
  }

  v11 = *(a1 + 48);
  v12 = (a1 + 56);
  if (v11 != v12)
  {
    do
    {
      if (sub_2621DC76C(a2, v11[5], v11[6], 0.00001) <= 0.1)
      {
        result = 1;
        if (v6)
        {
          return result;
        }

        v6 = 1;
      }

      v13 = v11[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v11[2];
          v10 = *v14 == v11;
          v11 = v14;
        }

        while (!v10);
      }

      v11 = v14;
    }

    while (v14 != v12);
  }

  return 0;
}