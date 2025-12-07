uint64_t sub_2992E2888(uint64_t a1, const __CFArray *a2, uint64_t a3, uint64_t a4)
{
  sub_2992E2508(a1, a4, a3);
  if (a4)
  {
    *(*(a1 + 216) + 144) = a4;
  }

  (*(**(a1 + 104) + 32))(*(a1 + 104));
  sub_29932CA50(*(a1 + 104), 1);
  (*(**(a1 + 216) + 16))(*(a1 + 216));
  Count = CFArrayGetCount(a2);
  v8 = Count - 1;
  if (Count < 1)
  {
LABEL_18:
    if (*(*(a1 + 216) + 16) - *(*(a1 + 216) + 8) >= 9uLL)
    {
      CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      operator new();
    }

    return 0;
  }

  v9 = Count;
  v10 = *(CFArrayGetValueAtIndex(a2, 0) + 3);
  if (!v10)
  {
    return 0;
  }

  v11 = __dynamic_cast(v10, &unk_2A1F6F680, &unk_2A1F6E330, 0);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = 0;
  v14 = 1;
  do
  {
    if (v14 - 1 >= v8 || (v15 = *(CFArrayGetValueAtIndex(a2, v14) + 3)) == 0)
    {
      v17 = *(a1 + 216);
LABEL_12:
      v18 = 1;
      goto LABEL_13;
    }

    v16 = __dynamic_cast(v15, &unk_2A1F6F680, &unk_2A1F6E330, 0);
    v17 = *(a1 + 216);
    if (!v16)
    {
      goto LABEL_12;
    }

    v18 = v12[16] == 2;
LABEL_13:
    if (!sub_29930BA18(v17, v12, v18))
    {
      break;
    }

    v13 = v14 >= v9;
    if (v9 == v14)
    {
      break;
    }

    v19 = *(CFArrayGetValueAtIndex(a2, v14) + 3);
    if (!v19)
    {
      break;
    }

    v12 = __dynamic_cast(v19, &unk_2A1F6F680, &unk_2A1F6E330, 0);
    ++v14;
  }

  while (v12);
  if (v13)
  {
    goto LABEL_18;
  }

  return 0;
}

void sub_2992E30C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992E3250(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 & 0x1000000) != 0)
  {
    return 1;
  }

  if ((a3 & 0x800000) == 0)
  {
    return 0;
  }

  if ((*(a1 + 58) & 4) != 0)
  {
    return 1;
  }

  else
  {
    return sub_2993D8854(*(a1 + 96), a2) ^ 1;
  }
}

__CFString *sub_2992E3294(const __CFArray *a1, const __CFString *a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  Count = CFArrayGetCount(a1);
  v6 = Count - 1;
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      CFStringAppend(Mutable, ValueAtIndex);
      if (a2 && i < v6)
      {
        CFStringAppend(Mutable, a2);
      }
    }
  }

  return Mutable;
}

BOOL sub_2992E3330(uint64_t a1, const __CFString *a2, uint64_t a3, const __CFArray *a4)
{
  if (a2)
  {
    v5 = a4;
    sub_2992E2508(a1, a4, a3);
    if (v5)
    {
      sub_2993245EC(v5);
      v5 = *(v5 + 6);
    }

    if (CFStringGetLength(a2) >= 1)
    {
      sub_2992E1208(a1, a2, v7, v8, v5);
    }

    sub_2992E2658(a1);
  }

  return a2 != 0;
}

void sub_2992E3464(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (a9)
  {
    (*(*a9 + 16))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992E34B8(uint64_t a1, int a2)
{
  if (*(a1 + 55) >= 0)
  {
    v4 = *(a1 + 55);
  }

  else
  {
    v4 = *(a1 + 40);
  }

  v5 = (*(*a1 + 48))(a1);
  v6 = (*(*a1 + 312))(a1, v5);
  v7 = v4 - a2;
  v8 = (*(*a1 + 112))(a1);
  v9 = (*(*a1 + 96))(a1);
  switch(v9)
  {
    case 'A':
      v13 = (*(a1 + 96) * -4400.0) + 20000;
      if (v7 >= 1)
      {
        v8 = v13 + 6000 * v7;
      }

      else
      {
        v8 = v13;
      }

      break;
    case 'U':
      v8 = ((*(a1 + 96) * -4400.0) + 8000);
      break;
    case 'L':
      v10 = (*(*a1 + 200))(a1);
      v11 = 1000 * v7;
      if (v7 <= 0)
      {
        v11 = 0;
      }

      v12 = v11 - 8000 * v6 + v8;
      if (v10)
      {
        v8 = v12;
      }

      else
      {
        v8 = 5000;
      }

      break;
  }

  if (((*(*a1 + 200))(a1) & 1) == 0)
  {
    *(a1 + 136) = 83;
  }

  v14 = *(*a1 + 480);

  return v14(a1, v8);
}

void sub_2992E36EC(void *a1)
{
  if ((*(*a1 + 112) & 0x10) != 0)
  {
    v2 = CFURLCreateWithFileSystemPath(0, *(*a1 + 144), kCFURLPOSIXPathStyle, 1u);
    v7[1] = v2;
    if (v2)
    {
      v3 = v2;
      sub_2993B4AE4(v2, @"th.rnnlm", @"th", v7);
      v4 = v7[0];
      if (v7[0])
      {
        v7[0] = 0;
        v5 = a1[10];
        a1[10] = v4;
        if (v5)
        {
          (*(*v5 + 8))(v5);
          v4 = a1[10];
          v5 = v7[0];
        }

        v6 = a1[15];
        *(*(a1[16] + 16) + 8) = v4;
        *(v6 + 16) = v4;
        *(*(v6 + 24) + 16) = v4;
        *(*a1 + 112) &= ~0x10uLL;
        v7[0] = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }
      }

      CFRelease(v3);
    }
  }
}

void sub_2992E37FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

void sub_2992E3814(uint64_t a1, const void *a2)
{
  if (a2)
  {
    operator new();
  }
}

void sub_2992E38F8(uint64_t a1, const void *a2)
{
  if (a2)
  {
    operator new();
  }
}

void sub_2992E39DC(uint64_t a1, const void *a2)
{
  if (a2)
  {
    operator new();
  }
}

uint64_t sub_2992E3AC0(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(*(a1 + 104) + 104);
  if (!v5)
  {
    return 0;
  }

  Surface = MecabraCandidateGetSurface(a3, a2, a3, a4);
  v10 = MecabraCandidateGetSurface(v5, v7, v8, v9);
  if (CFStringCompare(Surface, v10, 0))
  {
    return 0;
  }

  v12 = *(a1 + 104);

  return sub_29932D3E4(v12);
}

void sub_2992E3B48(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_2992E3B80(unint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v158 = a2 - 2;
    v152 = a2 - 11;
    v153 = (a2 - 88);
    v151 = (a2 - 264);
    v155 = a2 - 46;
    v156 = a2 - 6;
    v7 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v7;
          v8 = a2 - v7;
          v9 = 0x2E8BA2E8BA2E8BA3 * ((a2 - v7) >> 3);
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:
                v92 = (v7 + 168);
                v91 = *(v7 + 168);
                v95 = *(a2 - 2);
                v94 = (a2 - 8);
                v93 = v95;
                v96 = (v7 + 80);
                if (v91 <= *(v7 + 80))
                {
                  if (v93 <= v91)
                  {
                    return;
                  }

                  sub_2992E51C0((v7 + 88), v94 - 5);
                  v142 = *v92;
                  *v92 = *v94;
                  *v94 = v142;
                  if (*v92 <= *v96)
                  {
                    return;
                  }

                  sub_2992E51C0(v7, (v7 + 88));
                }

                else
                {
                  if (v93 <= v91)
                  {
                    sub_2992E51C0(v7, (v7 + 88));
                    v149 = *(v7 + 80);
                    *(v7 + 80) = *(v7 + 168);
                    *(v7 + 168) = v149;
                    if (*v94 <= v149)
                    {
                      return;
                    }

                    sub_2992E51C0((v7 + 88), v94 - 5);
                    v96 = (v7 + 168);
                  }

                  else
                  {
                    sub_2992E51C0(v7, v94 - 5);
                  }

                  v92 = v94;
                }

                v150 = *v96;
                *v96 = *v92;
                *v92 = v150;
                return;
              case 4:
                sub_2992E4BCC(v7, v7 + 88, v7 + 176, v153);
                return;
              case 5:
                sub_2992E4BCC(v7, v7 + 88, v7 + 176, v7 + 264);
                if (*(a2 - 2) > *(v7 + 344))
                {
                  sub_2992E51C0((v7 + 264), v153);
                  v84 = *(v7 + 344);
                  *(v7 + 344) = *(a2 - 2);
                  *(a2 - 2) = v84;
                  if (*(v7 + 344) > *(v7 + 256))
                  {
                    sub_2992E51C0((v7 + 176), (v7 + 264));
                    v85 = *(v7 + 256);
                    v86 = *(v7 + 344);
                    *(v7 + 256) = v86;
                    *(v7 + 344) = v85;
                    if (v86 > *(v7 + 168))
                    {
                      sub_2992E51C0((v7 + 88), (v7 + 176));
                      v87 = *(v7 + 168);
                      v88 = *(v7 + 256);
                      *(v7 + 168) = v88;
                      *(v7 + 256) = v87;
                      if (v88 > *(v7 + 80))
                      {
                        sub_2992E51C0(v7, (v7 + 88));
                        v89 = *(v7 + 80);
                        *(v7 + 80) = *(v7 + 168);
                        *(v7 + 168) = v89;
                      }
                    }
                  }
                }

                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              if (*(a2 - 2) > *(v7 + 80))
              {
                sub_2992E51C0(v7, v153);
                v90 = *(v7 + 80);
                *(v7 + 80) = *(a2 - 2);
                *(a2 - 2) = v90;
              }

              return;
            }
          }

          if (v8 <= 2111)
          {
            if (a4)
            {
              if (v7 != a2)
              {
                v97 = v7 + 88;
                if ((v7 + 88) != a2)
                {
                  v98 = 0;
                  v99 = v7;
                  do
                  {
                    v100 = v97;
                    v101 = *(v99 + 168);
                    if (v101 > *(v99 + 80))
                    {
                      v102 = *v100;
                      v169 = *(v100 + 16);
                      *v168 = v102;
                      *(v100 + 8) = 0;
                      *(v100 + 16) = 0;
                      *v100 = 0;
                      *v170 = *(v99 + 112);
                      v171 = *(v99 + 128);
                      *(v99 + 112) = 0;
                      *(v99 + 120) = 0;
                      *__p = *(v99 + 136);
                      v173 = *(v99 + 152);
                      *(v99 + 128) = 0;
                      *(v99 + 136) = 0;
                      *(v99 + 144) = 0;
                      *(v99 + 152) = 0;
                      v174 = *(v99 + 160);
                      v175 = *(v99 + 164);
                      v103 = v98;
                      v176 = v101;
                      while (1)
                      {
                        sub_2992E532C(v7 + v103 + 88, (v7 + v103));
                        if (!v103)
                        {
                          break;
                        }

                        v104 = *(v7 + v103 - 8);
                        v103 -= 88;
                        if (v176 <= v104)
                        {
                          v105 = v7 + v103 + 88;
                          goto LABEL_143;
                        }
                      }

                      v105 = v7;
LABEL_143:
                      sub_2992E532C(v105, v168);
                      if (__p[0])
                      {
                        __p[1] = __p[0];
                        operator delete(__p[0]);
                      }

                      if (v170[0])
                      {
                        v170[1] = v170[0];
                        operator delete(v170[0]);
                      }

                      if (SHIBYTE(v169) < 0)
                      {
                        operator delete(v168[0]);
                      }
                    }

                    v97 = v100 + 88;
                    v98 += 88;
                    v99 = v100;
                  }

                  while ((v100 + 88) != a2);
                }
              }
            }

            else if (v7 != a2)
            {
              v143 = v7 + 88;
              if ((v7 + 88) != a2)
              {
                do
                {
                  v144 = v143;
                  v145 = *(a1 + 168);
                  if (v145 > *(a1 + 80))
                  {
                    v146 = *v144;
                    v169 = *(v144 + 16);
                    *v168 = v146;
                    *(v144 + 8) = 0;
                    *(v144 + 16) = 0;
                    *v144 = 0;
                    *v170 = *(a1 + 112);
                    v171 = *(a1 + 128);
                    *(a1 + 112) = 0;
                    *(a1 + 120) = 0;
                    *__p = *(a1 + 136);
                    v173 = *(a1 + 152);
                    *(a1 + 128) = 0;
                    *(a1 + 136) = 0;
                    *(a1 + 144) = 0;
                    *(a1 + 152) = 0;
                    v174 = *(a1 + 160);
                    v175 = *(a1 + 164);
                    v176 = v145;
                    do
                    {
                      sub_2992E532C(a1 + 88, a1);
                      v147 = a1 - 88;
                      v148 = *(a1 - 8);
                      a1 -= 88;
                    }

                    while (v176 > v148);
                    sub_2992E532C(v147 + 88, v168);
                    if (__p[0])
                    {
                      __p[1] = __p[0];
                      operator delete(__p[0]);
                    }

                    if (v170[0])
                    {
                      v170[1] = v170[0];
                      operator delete(v170[0]);
                    }

                    if (SHIBYTE(v169) < 0)
                    {
                      operator delete(v168[0]);
                    }
                  }

                  v143 = v144 + 88;
                  a1 = v144;
                }

                while ((v144 + 88) != a2);
              }
            }

            return;
          }

          if (!a3)
          {
            if (v7 != a2)
            {
              v106 = v10 >> 1;
              v107 = v10 >> 1;
              do
              {
                v108 = v107;
                if (v106 >= v107)
                {
                  v109 = (2 * v107) | 1;
                  v110 = v7 + 88 * v109;
                  if (2 * v108 + 2 < v9)
                  {
                    v111 = *(v110 + 80);
                    v112 = *(v110 + 168);
                    v113 = v111 <= v112;
                    v114 = v111 <= v112 ? 0 : 88;
                    v110 += v114;
                    if (!v113)
                    {
                      v109 = 2 * v108 + 2;
                    }
                  }

                  v115 = v7 + 88 * v108;
                  v116 = *(v115 + 80);
                  if (*(v110 + 80) <= v116)
                  {
                    v117 = *v115;
                    v169 = *(v115 + 16);
                    *v168 = v117;
                    *(v115 + 8) = 0;
                    *(v115 + 16) = 0;
                    *v115 = 0;
                    *v170 = *(v115 + 24);
                    v171 = *(v115 + 40);
                    *(v115 + 24) = 0;
                    *(v115 + 32) = 0;
                    *(v115 + 40) = 0;
                    *__p = *(v115 + 48);
                    v173 = *(v115 + 64);
                    *(v115 + 48) = 0;
                    *(v115 + 56) = 0;
                    *(v115 + 64) = 0;
                    v118 = *(v115 + 72);
                    v175 = *(v115 + 76);
                    v174 = v118;
                    v176 = v116;
                    do
                    {
                      v119 = v110;
                      sub_2992E532C(v115, v110);
                      if (v106 < v109)
                      {
                        break;
                      }

                      v120 = (2 * v109) | 1;
                      v110 = v7 + 88 * v120;
                      if (2 * v109 + 2 < v9)
                      {
                        v121 = *(v110 + 80);
                        v122 = *(v110 + 168);
                        v123 = v121 <= v122;
                        v124 = v121 <= v122 ? 0 : 88;
                        v110 += v124;
                        if (!v123)
                        {
                          v120 = 2 * v109 + 2;
                        }
                      }

                      v115 = v119;
                      v109 = v120;
                    }

                    while (*(v110 + 80) <= v116);
                    sub_2992E532C(v119, v168);
                    if (__p[0])
                    {
                      __p[1] = __p[0];
                      operator delete(__p[0]);
                    }

                    if (v170[0])
                    {
                      v170[1] = v170[0];
                      operator delete(v170[0]);
                    }

                    if (SHIBYTE(v169) < 0)
                    {
                      operator delete(v168[0]);
                    }
                  }
                }

                v107 = v108 - 1;
              }

              while (v108);
              v125 = 0x2E8BA2E8BA2E8BA3 * (v8 >> 3);
              do
              {
                v126 = 0;
                v127 = *v7;
                v160 = *(v7 + 16);
                *v159 = v127;
                *(v7 + 8) = 0;
                *(v7 + 16) = 0;
                *v7 = 0;
                *v161 = *(v7 + 24);
                v162 = *(v7 + 40);
                *(v7 + 24) = 0;
                *(v7 + 32) = 0;
                *(v7 + 40) = 0;
                *v163 = *(v7 + 48);
                v164 = *(v7 + 64);
                *(v7 + 48) = 0;
                *(v7 + 56) = 0;
                *(v7 + 64) = 0;
                v128 = *(v7 + 72);
                v166 = *(v7 + 76);
                v165 = v128;
                v167 = *(v7 + 80);
                v129 = v7;
                do
                {
                  v130 = v129 + 88 * v126;
                  v131 = v130 + 88;
                  if (2 * v126 + 2 >= v125)
                  {
                    v126 = (2 * v126) | 1;
                  }

                  else
                  {
                    v132 = *(v130 + 168);
                    v133 = *(v130 + 256);
                    v134 = v130 + 176;
                    if (v132 <= v133)
                    {
                      v126 = (2 * v126) | 1;
                    }

                    else
                    {
                      v131 = v134;
                      v126 = 2 * v126 + 2;
                    }
                  }

                  sub_2992E532C(v129, v131);
                  v129 = v131;
                }

                while (v126 <= ((v125 - 2) >> 1));
                a2 = (a2 - 88);
                if (v131 == a2)
                {
                  sub_2992E532C(v131, v159);
                }

                else
                {
                  sub_2992E532C(v131, a2);
                  sub_2992E532C(a2, v159);
                  v135 = v131 - v7 + 88;
                  if (v135 >= 89)
                  {
                    v136 = (0x2E8BA2E8BA2E8BA3 * (v135 >> 3) - 2) >> 1;
                    v137 = v7 + 88 * v136;
                    v138 = *(v131 + 80);
                    if (*(v137 + 80) > v138)
                    {
                      v139 = *v131;
                      v169 = *(v131 + 16);
                      *v168 = v139;
                      *(v131 + 8) = 0;
                      *(v131 + 16) = 0;
                      *v131 = 0;
                      *v170 = *(v131 + 24);
                      v171 = *(v131 + 40);
                      *(v131 + 24) = 0;
                      *(v131 + 32) = 0;
                      *(v131 + 40) = 0;
                      *__p = *(v131 + 48);
                      v173 = *(v131 + 64);
                      *(v131 + 48) = 0;
                      *(v131 + 56) = 0;
                      *(v131 + 64) = 0;
                      v140 = *(v131 + 72);
                      v175 = *(v131 + 76);
                      v174 = v140;
                      v176 = v138;
                      do
                      {
                        v141 = v137;
                        sub_2992E532C(v131, v137);
                        if (!v136)
                        {
                          break;
                        }

                        v136 = (v136 - 1) >> 1;
                        v137 = v7 + 88 * v136;
                        v131 = v141;
                      }

                      while (*(v137 + 80) > v138);
                      sub_2992E532C(v141, v168);
                      if (__p[0])
                      {
                        __p[1] = __p[0];
                        operator delete(__p[0]);
                      }

                      if (v170[0])
                      {
                        v170[1] = v170[0];
                        operator delete(v170[0]);
                      }

                      if (SHIBYTE(v169) < 0)
                      {
                        operator delete(v168[0]);
                      }
                    }
                  }
                }

                if (v163[0])
                {
                  v163[1] = v163[0];
                  operator delete(v163[0]);
                }

                if (v161[0])
                {
                  v161[1] = v161[0];
                  operator delete(v161[0]);
                }

                if (SHIBYTE(v160) < 0)
                {
                  operator delete(v159[0]);
                }

                v113 = v125-- <= 2;
              }

              while (!v113);
            }

            return;
          }

          v11 = v9 >> 1;
          v12 = v7 + 88 * (v9 >> 1);
          v13 = *v158;
          if (v8 >= 0x2C01)
          {
            v15 = (v12 + 80);
            v14 = *(v12 + 80);
            v16 = (v7 + 80);
            v154 = a3;
            if (v14 <= *(v7 + 80))
            {
              if (v13 <= v14 || (sub_2992E51C0(v12, v153), v19 = *(v12 + 80), *(v12 + 80) = *v158, *v158 = v19, *(v12 + 80) <= *v16))
              {
LABEL_28:
                v26 = v7 + 88 * v11;
                v29 = *(v26 - 8);
                v28 = (v26 - 8);
                v27 = v29;
                v30 = (a1 + 168);
                v31 = *v156;
                if (v29 <= *(a1 + 168))
                {
                  if (v31 <= v27 || (sub_2992E51C0(v28 - 10, v152), v33 = *v28, *v28 = *v156, *v156 = v33, *v28 <= *v30))
                  {
LABEL_41:
                    v38 = a1 + 88 * v11;
                    v41 = *(v38 + 168);
                    v40 = (v38 + 168);
                    v39 = v41;
                    v42 = (a1 + 256);
                    v43 = *v155;
                    if (v41 <= *(a1 + 256))
                    {
                      if (v43 <= v39 || (sub_2992E51C0(v40 - 10, v151), v45 = *v40, *v40 = *v155, *v155 = v45, v39 = *v40, *v40 <= *v42))
                      {
LABEL_51:
                        v48 = *v15;
                        if (*v15 <= *v28)
                        {
                          a3 = v154;
                          if (v39 <= v48 || (sub_2992E51C0(v12, v40 - 5), v49 = *(v12 + 80), v50 = *v40, *(v12 + 80) = *v40, *v40 = v49, v50 <= *v28))
                          {
LABEL_60:
                            v22 = a1;
                            v23 = v12;
LABEL_61:
                            sub_2992E51C0(v22, v23);
LABEL_62:
                            v53 = *v16;
                            *v16 = *v15;
                            *v15 = v53;
                            goto LABEL_63;
                          }

                          sub_2992E51C0(v28 - 10, v12);
                          v40 = (v12 + 80);
                        }

                        else
                        {
                          a3 = v154;
                          if (v39 <= v48)
                          {
                            sub_2992E51C0(v28 - 10, v12);
                            v51 = *v28;
                            *v28 = *(v12 + 80);
                            *(v12 + 80) = v51;
                            if (*v40 <= v51)
                            {
                              goto LABEL_60;
                            }

                            sub_2992E51C0(v12, v40 - 5);
                            v28 = (v12 + 80);
                          }

                          else
                          {
                            sub_2992E51C0(v28 - 10, v40 - 5);
                          }
                        }

                        v52 = *v28;
                        *v28 = *v40;
                        *v40 = v52;
                        goto LABEL_60;
                      }

                      sub_2992E51C0((a1 + 176), v40 - 5);
                      v46 = v40;
                    }

                    else
                    {
                      v44 = (a1 + 176);
                      if (v43 <= v39)
                      {
                        sub_2992E51C0(v44, v40 - 5);
                        v39 = *v42;
                        *v42 = *v40;
                        *v40 = v39;
                        if (*v155 <= v39)
                        {
                          goto LABEL_51;
                        }

                        sub_2992E51C0(v40 - 10, v151);
                        v42 = v40;
                      }

                      else
                      {
                        sub_2992E51C0(v44, v151);
                      }

                      v46 = (a2 - 184);
                    }

                    v47 = *v42;
                    *v42 = *v46;
                    *v46 = v47;
                    v39 = *v40;
                    goto LABEL_51;
                  }

                  sub_2992E51C0((a1 + 88), v28 - 5);
                  v34 = v28;
                }

                else
                {
                  v32 = (a1 + 88);
                  if (v31 <= v27)
                  {
                    sub_2992E51C0(v32, v28 - 5);
                    v36 = *v30;
                    *v30 = *v28;
                    *v28 = v36;
                    if (*v156 <= v36)
                    {
                      goto LABEL_41;
                    }

                    sub_2992E51C0(v28 - 10, v152);
                    v30 = v28;
                  }

                  else
                  {
                    sub_2992E51C0(v32, v152);
                  }

                  v34 = a2 - 6;
                }

                v37 = *v30;
                *v30 = *v34;
                *v34 = v37;
                goto LABEL_41;
              }

              sub_2992E51C0(v7, v12);
              v17 = (v7 + 80);
              v20 = (v12 + 80);
            }

            else
            {
              if (v13 <= v14)
              {
                sub_2992E51C0(v7, v12);
                v24 = *(v7 + 80);
                *(v7 + 80) = *(v12 + 80);
                *(v12 + 80) = v24;
                if (*v158 <= v24)
                {
                  goto LABEL_28;
                }

                sub_2992E51C0(v12, v153);
                v17 = (v12 + 80);
              }

              else
              {
                sub_2992E51C0(v7, v153);
                v17 = (v7 + 80);
              }

              v20 = a2 - 2;
            }

            v25 = *v17;
            *v17 = *v20;
            *v20 = v25;
            goto LABEL_28;
          }

          v15 = (v7 + 80);
          v18 = *(v7 + 80);
          v16 = (v12 + 80);
          if (v18 > *(v12 + 80))
          {
            if (v13 <= v18)
            {
              sub_2992E51C0(v12, v7);
              v35 = *(v12 + 80);
              *(v12 + 80) = *(v7 + 80);
              *(v7 + 80) = v35;
              if (*v158 <= v35)
              {
                goto LABEL_63;
              }

              sub_2992E51C0(v7, v153);
              v16 = (v7 + 80);
            }

            else
            {
              sub_2992E51C0(v12, v153);
            }

            v15 = a2 - 2;
            goto LABEL_62;
          }

          if (v13 > v18)
          {
            sub_2992E51C0(v7, v153);
            v21 = *(v7 + 80);
            *(v7 + 80) = *v158;
            *v158 = v21;
            if (*(v7 + 80) > *v16)
            {
              v22 = v12;
              v23 = v7;
              goto LABEL_61;
            }
          }

LABEL_63:
          --a3;
          if (a4)
          {
            break;
          }

          v54 = *(a1 + 80);
          if (*(a1 - 8) > v54)
          {
            goto LABEL_66;
          }

          v72 = *a1;
          v169 = *(a1 + 16);
          *v168 = v72;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          *v170 = *(a1 + 24);
          v171 = *(a1 + 40);
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          *__p = *(a1 + 48);
          v173 = *(a1 + 64);
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          *(a1 + 64) = 0;
          v73 = *(a1 + 72);
          v175 = *(a1 + 76);
          v174 = v73;
          v176 = v54;
          if (v54 <= *v158)
          {
            v76 = (a1 + 88);
            do
            {
              v7 = v76;
              if (v76 >= a2)
              {
                break;
              }

              v77 = *(v76 + 20);
              v76 = (v76 + 88);
            }

            while (v54 <= v77);
          }

          else
          {
            v74 = a1;
            do
            {
              v7 = v74 + 88;
              v75 = *(v74 + 168);
              v74 += 88;
            }

            while (v54 <= v75);
          }

          v78 = a2;
          if (v7 < a2)
          {
            v79 = a2;
            do
            {
              v78 = (v79 - 88);
              v80 = *(v79 - 2);
              v79 = (v79 - 88);
            }

            while (v54 > v80);
          }

          while (v7 < v78)
          {
            sub_2992E51C0(v7, v78);
            v81 = *(v7 + 80);
            *(v7 + 80) = *(v78 + 20);
            *(v78 + 20) = v81;
            do
            {
              v82 = *(v7 + 168);
              v7 += 88;
            }

            while (v176 <= v82);
            do
            {
              v83 = *(v78 - 2);
              v78 = (v78 - 88);
            }

            while (v176 > v83);
          }

          if (v7 - 88 != a1)
          {
            sub_2992E532C(a1, (v7 - 88));
          }

          sub_2992E532C(v7 - 88, v168);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (v170[0])
          {
            v170[1] = v170[0];
            operator delete(v170[0]);
          }

          if (SHIBYTE(v169) < 0)
          {
            operator delete(v168[0]);
          }

          a4 = 0;
        }

        v54 = *(a1 + 80);
LABEL_66:
        v55 = 0;
        v56 = *a1;
        v169 = *(a1 + 16);
        *v168 = v56;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        *v170 = *(a1 + 24);
        v171 = *(a1 + 40);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *__p = *(a1 + 48);
        v173 = *(a1 + 64);
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        v57 = *(a1 + 72);
        v175 = *(a1 + 76);
        v174 = v57;
        v176 = v54;
        do
        {
          v58 = *(a1 + v55 + 168);
          v55 += 88;
        }

        while (v58 > v54);
        v59 = a1 + v55;
        v60 = a2;
        if (v55 == 88)
        {
          v63 = a2;
          while (v59 < v63)
          {
            v61 = (v63 - 88);
            v64 = *(v63 - 2);
            v63 = (v63 - 88);
            if (v64 > v54)
            {
              goto LABEL_76;
            }
          }

          v61 = v63;
        }

        else
        {
          do
          {
            v61 = (v60 - 88);
            v62 = *(v60 - 2);
            v60 = (v60 - 88);
          }

          while (v62 <= v54);
        }

LABEL_76:
        if (v59 >= v61)
        {
          v70 = v59 - 88;
        }

        else
        {
          v65 = v59;
          v66 = v61;
          do
          {
            sub_2992E51C0(v65, v66);
            v67 = *(v65 + 80);
            *(v65 + 80) = *(v66 + 20);
            *(v66 + 20) = v67;
            do
            {
              v68 = *(v65 + 168);
              v65 += 88;
            }

            while (v68 > v176);
            do
            {
              v69 = *(v66 - 2);
              v66 = (v66 - 88);
            }

            while (v69 <= v176);
          }

          while (v65 < v66);
          v70 = v65 - 88;
        }

        if (v70 != a1)
        {
          sub_2992E532C(a1, v70);
        }

        sub_2992E532C(v70, v168);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v170[0])
        {
          v170[1] = v170[0];
          operator delete(v170[0]);
        }

        if (SHIBYTE(v169) < 0)
        {
          operator delete(v168[0]);
        }

        if (v59 >= v61)
        {
          break;
        }

LABEL_95:
        sub_2992E3B80(a1, v70, a3, a4 & 1);
        a4 = 0;
        v7 = v70 + 88;
      }

      v71 = sub_2992E4D64(a1, v70);
      v7 = v70 + 88;
      if (sub_2992E4D64((v70 + 88), a2))
      {
        break;
      }

      if (!v71)
      {
        goto LABEL_95;
      }
    }

    a2 = v70;
    if (!v71)
    {
      continue;
    }

    break;
  }
}

void sub_2992E4BCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + 80);
  v8 = *(a2 + 80);
  v10 = (result + 80);
  v12 = (a3 + 80);
  v11 = *(a3 + 80);
  if (v8 <= *(result + 80))
  {
    if (v11 > v8)
    {
      sub_2992E51C0(a2, a3);
      v11 = *(a2 + 80);
      *(a2 + 80) = *(a3 + 80);
      *(a3 + 80) = v11;
      if (*(a2 + 80) > *v10)
      {
        sub_2992E51C0(result, a2);
        v13 = v10;
        v14 = v9;
LABEL_10:
        v16 = *v13;
        *v13 = *v14;
        *v14 = v16;
        v11 = *v12;
      }
    }
  }

  else
  {
    if (v11 > v8)
    {
      sub_2992E51C0(result, a3);
      v13 = v10;
LABEL_9:
      v14 = v12;
      goto LABEL_10;
    }

    sub_2992E51C0(result, a2);
    v15 = *(result + 80);
    *(result + 80) = *(a2 + 80);
    *(a2 + 80) = v15;
    v11 = *v12;
    if (*v12 > v15)
    {
      sub_2992E51C0(a2, a3);
      v13 = v9;
      goto LABEL_9;
    }
  }

  if (*(a4 + 80) > v11)
  {
    sub_2992E51C0(a3, a4);
    v17 = *(a3 + 80);
    *(a3 + 80) = *(a4 + 80);
    *(a4 + 80) = v17;
    if (*(a3 + 80) > *v9)
    {
      sub_2992E51C0(a2, a3);
      v18 = *(a2 + 80);
      *(a2 + 80) = *(a3 + 80);
      *(a3 + 80) = v18;
      if (*(a2 + 80) > *v10)
      {
        sub_2992E51C0(result, a2);
        v19 = *(result + 80);
        *(result + 80) = *(a2 + 80);
        *(a2 + 80) = v19;
      }
    }
  }
}

BOOL sub_2992E4D64(_DWORD *a1, char *a2)
{
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v13 = (a1 + 42);
      v12 = a1[42];
      v15 = a2 - 8;
      v14 = *(a2 - 2);
      v16 = a1 + 20;
      if (v12 <= a1[20])
      {
        if (v14 <= v12)
        {
          return 1;
        }

        sub_2992E51C0(a1 + 11, (a2 - 88));
        v23 = *v13;
        *v13 = *v15;
        *v15 = v23;
        if (*v13 <= *v16)
        {
          return 1;
        }

        sub_2992E51C0(a1, (a1 + 22));
      }

      else
      {
        if (v14 <= v12)
        {
          sub_2992E51C0(a1, (a1 + 22));
          v26 = a1[20];
          a1[20] = a1[42];
          a1[42] = v26;
          if (*v15 <= v26)
          {
            return 1;
          }

          sub_2992E51C0(a1 + 11, v15 - 5);
          v16 = a1 + 42;
        }

        else
        {
          sub_2992E51C0(a1, (a2 - 88));
        }

        v13 = v15;
      }

      v27 = *v16;
      *v16 = *v13;
      *v13 = v27;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        sub_2992E4BCC(a1, (a1 + 22), (a1 + 44), (a1 + 66));
        if (*(a2 - 2) > a1[86])
        {
          sub_2992E51C0(a1 + 33, (a2 - 88));
          v6 = a1[86];
          a1[86] = *(a2 - 2);
          *(a2 - 2) = v6;
          if (a1[86] > a1[64])
          {
            sub_2992E51C0(a1 + 22, (a1 + 66));
            v7 = a1[64];
            v8 = a1[86];
            a1[64] = v8;
            a1[86] = v7;
            if (v8 > a1[42])
            {
              sub_2992E51C0(a1 + 11, a1 + 11);
              v9 = a1[42];
              v10 = a1[64];
              a1[42] = v10;
              a1[64] = v9;
              if (v10 > a1[20])
              {
                sub_2992E51C0(a1, (a1 + 22));
                v11 = a1[20];
                a1[20] = a1[42];
                a1[42] = v11;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_2992E4BCC(a1, (a1 + 22), (a1 + 44), (a2 - 88));
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 2) > a1[20])
    {
      sub_2992E51C0(a1, (a2 - 88));
      v5 = a1[20];
      a1[20] = *(a2 - 2);
      *(a2 - 2) = v5;
    }

    return 1;
  }

LABEL_17:
  v18 = a1 + 42;
  v17 = a1[42];
  v19 = (a1 + 44);
  v20 = a1 + 20;
  v22 = a1 + 64;
  v21 = a1[64];
  if (v17 > a1[20])
  {
    if (v21 <= v17)
    {
      sub_2992E51C0(a1, (a1 + 22));
      v28 = a1[20];
      a1[20] = a1[42];
      a1[42] = v28;
      if (a1[64] <= v28)
      {
        goto LABEL_35;
      }

      sub_2992E51C0(a1 + 11, a1 + 11);
      v20 = a1 + 42;
    }

    else
    {
      sub_2992E51C0(a1, a1 + 11);
    }

    v18 = a1 + 64;
    goto LABEL_34;
  }

  if (v21 > v17)
  {
    sub_2992E51C0(a1 + 11, a1 + 11);
    v24 = *v18;
    v25 = *v22;
    *v18 = *v22;
    *v22 = v24;
    if (v25 > *v20)
    {
      sub_2992E51C0(a1, (a1 + 22));
LABEL_34:
      v29 = *v20;
      *v20 = *v18;
      *v18 = v29;
    }
  }

LABEL_35:
  v30 = (a1 + 66);
  if (a1 + 66 == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *(v30 + 20);
    if (v33 > *(v19 + 20))
    {
      *v39 = *v30;
      v40 = *(v30 + 2);
      *v30 = 0;
      *(v30 + 1) = 0;
      *v41 = *(v30 + 24);
      v42 = *(v30 + 5);
      *(v30 + 2) = 0;
      *(v30 + 3) = 0;
      *(v30 + 4) = 0;
      *(v30 + 5) = 0;
      *__p = *(v30 + 3);
      v44 = *(v30 + 8);
      *(v30 + 7) = 0;
      *(v30 + 8) = 0;
      *(v30 + 6) = 0;
      v34 = *(v30 + 18);
      v46 = *(v30 + 38);
      v45 = v34;
      v35 = v31;
      v47 = v33;
      while (1)
      {
        sub_2992E532C(a1 + v35 + 264, (a1 + v35 + 176));
        if (v35 == -176)
        {
          break;
        }

        v36 = *(a1 + v35 + 168);
        v35 -= 88;
        if (v47 <= v36)
        {
          v37 = a1 + v35 + 264;
          goto LABEL_43;
        }
      }

      v37 = a1;
LABEL_43:
      sub_2992E532C(v37, v39);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v41[0])
      {
        v41[1] = v41[0];
        operator delete(v41[0]);
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39[0]);
      }

      if (++v32 == 8)
      {
        return v30 + 88 == a2;
      }
    }

    v19 = v30;
    v31 += 88;
    v30 += 88;
    if (v30 == a2)
    {
      return 1;
    }
  }
}

__n128 sub_2992E51C0(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  *v19 = a1[1];
  *&v19[7] = *(a1 + 15);
  v5 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v7 = *(a1 + 3);
  v6 = a1 + 3;
  v8 = a1[5];
  *v6 = 0;
  a1[4] = 0;
  a1[5] = 0;
  v15 = v7;
  v16 = *(a1 + 3);
  v9 = a1[8];
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  v18 = *(a1 + 38);
  v17 = *(a1 + 18);
  v10 = *a2;
  a1[2] = *(a2 + 2);
  *a1 = v10;
  *(a2 + 23) = 0;
  *a2 = 0;
  sub_29922323C(v6, (a2 + 24));
  sub_29922323C((a1 + 6), a2 + 3);
  v11 = *(a2 + 18);
  *(a1 + 38) = *(a2 + 38);
  *(a1 + 18) = v11;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v4;
  *(a2 + 1) = *v19;
  *(a2 + 15) = *&v19[7];
  *(a2 + 23) = v5;
  v12 = *(a2 + 3);
  if (v12)
  {
    *(a2 + 4) = v12;
    operator delete(v12);
  }

  *(a2 + 24) = v15;
  *(a2 + 5) = v8;
  v13 = *(a2 + 6);
  if (v13)
  {
    *(a2 + 7) = v13;
    operator delete(v13);
  }

  result = v16;
  a2[3] = v16;
  *(a2 + 8) = v9;
  *(a2 + 18) = v17;
  *(a2 + 38) = v18;
  return result;
}

uint64_t sub_2992E532C(uint64_t a1, __int128 *a2)
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
  sub_29922323C(a1 + 24, (a2 + 24));
  sub_29922323C(a1 + 48, a2 + 3);
  v5 = *(a2 + 18);
  *(a1 + 76) = *(a2 + 38);
  *(a1 + 72) = v5;
  *(a1 + 80) = *(a2 + 20);
  return a1;
}

void sub_2992E53AC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2992E5400(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2992E5400(uint64_t result, uint64_t a2)
{
  for (i = *(result + 8); i != a2; sub_2992E5454(result, i))
  {
    i -= 88;
  }

  *(result + 8) = a2;
}

void sub_2992E5454(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3)
  {
    *(a2 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    *(a2 + 32) = v4;
    operator delete(v4);
  }

  if (*(a2 + 23) < 0)
  {
    v5 = *a2;

    operator delete(v5);
  }
}

uint64_t sub_2992E5558(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E3B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992E55A4(uint64_t a1)
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

const void **sub_2992E5624(const void ***a1, const void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_29930830C(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

__n128 sub_2992E56EC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6E3D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992E5724(uint64_t a1, void **a2, uint64_t a3, double *a4)
{
  v5 = *a2;
  v6 = *a4;
  v7 = *(a1 + 8);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v9 = *(*v5 + 112);
  if (v9 && CFStringGetLength(*(*v5 + 112)) && (sub_2992E3250(v7, v9, *(*v5 + 104)) & 1) == 0)
  {
    v10 = *(*v5 + 104);
    CFArrayAppendValue(Mutable, v9);
    v11 = (v10 & 0x3800002) != 0;
    while (1)
    {
      v5 = v5[1];
      if (!v5 || ((*(**v5 + 24))() & 1) != 0)
      {
        break;
      }

      v12 = *(*v5 + 112);
      if (!v12 || !CFStringGetLength(*(*v5 + 112)) || (sub_2992E3250(v7, v12, *(*v5 + 104)) & 1) != 0)
      {
        goto LABEL_4;
      }

      if (!v11)
      {
        v11 = (*(*v5 + 104) & 0x3800002) != 0;
      }

      CFArrayAppendValue(Mutable, v12);
    }

    if (CFArrayGetCount(Mutable))
    {
      v13 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      Count = CFArrayGetCount(Mutable);
      while (Count > 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, --Count);
        CFArrayAppendValue(v13, ValueAtIndex);
      }

      CFArrayAppendValue(**(a1 + 16), v13);
      v16 = *(a1 + 24);
      v31 = v11;
      sub_2992E5A5C(v16, &v31);
      v17 = *(a1 + 32);
      v19 = v17[1];
      v18 = v17[2];
      if (v19 >= v18)
      {
        v22 = *v17;
        v23 = v19 - *v17;
        v24 = v23 >> 2;
        v25 = (v23 >> 2) + 1;
        if (v25 >> 62)
        {
          sub_299212A8C();
        }

        v26 = v18 - v22;
        if (v26 >> 1 > v25)
        {
          v25 = v26 >> 1;
        }

        v27 = v26 >= 0x7FFFFFFFFFFFFFFCLL;
        v28 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v27)
        {
          v28 = v25;
        }

        if (v28)
        {
          sub_2992F86B0(v17, v28);
        }

        v29 = v6;
        *(4 * v24) = v29;
        v21 = 4 * v24 + 4;
        memcpy(0, v22, v23);
        v30 = *v17;
        *v17 = 0;
        v17[1] = v21;
        v17[2] = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        v20 = v6;
        *v19 = v20;
        v21 = (v19 + 1);
      }

      v17[1] = v21;
      if (v13)
      {
        CFRelease(v13);
      }
    }
  }

LABEL_4:
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_2992E59C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_2992530BC(va, 0);
  sub_2992530BC(va1, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992E5A10(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E438))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2992E5A5C(uint64_t result, _BYTE *a2)
{
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_299212A8C();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_2992E5B04(result, v7);
    v4 = *(result + 8);
  }

  *(result + 8) = v4 + 1;
  v8 = *result;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *&v8[8 * v9] | v10;
  }

  else
  {
    v11 = *&v8[8 * v9] & ~v10;
  }

  *&v8[8 * v9] = v11;
}

void sub_2992E5B04(char **a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_2991C1750(&v2, a2);
    }

    sub_299212A8C();
  }
}

void sub_2992E5BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992E5BC0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (v6)
  {
    v8 = v7 - 1;
    if (((v7 - 1) ^ (v6 - 1)) < 0x40)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = v7 - 1;
  }

  v9 = v8 >> 6;
  if (v7 >= 0x41)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  *(*a1 + 8 * v10) = 0;
LABEL_9:
  v22 = v4;
  v23 = v5;
  v11 = *(a2 + 2);
  v12 = *a3;
  v13 = *(a3 + 2);
  v14 = *a1 + 8 * (v6 >> 6);
  v20 = *a2;
  v21 = v11;
  v18 = v12;
  v19 = v13;
  v16 = v14;
  v17 = v6 & 0x3F;
  sub_2992E5C68(&v20, &v18, &v16, v15);
}

void sub_2992E5C68(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_2992E5CF8(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_2992E5CF8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

__n128 sub_2992E5E44(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6E458;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992E5E7C(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v25 = *a4;
  v6 = a1[1];
  v7 = sub_2992B8D0C(a3, off_2A145F3B8);
  sub_2992E6078(&v23, *v7, v7[1], v7[1] - *v7);
  if (*(v6 + 225))
  {
    v8 = 0;
  }

  else
  {
    v9 = HIBYTE(v24);
    if (v24 < 0)
    {
      v9 = *(&v23 + 1);
    }

    v10 = a1[3];
    if (v9 == *(v10 + 8))
    {
      if (v24 >= 0)
      {
        v11 = &v23;
      }

      else
      {
        v11 = v23;
      }

      v8 = memcmp(v11, *v10, 2 * v9) != 0;
    }

    else
    {
      v8 = 1;
    }
  }

  v12 = *(a2 + 4);
  v17 = v24;
  *v16 = v23;
  v24 = 0;
  v23 = 0uLL;
  *v18 = 0u;
  *__p = 0u;
  v20 = 0u;
  v21 = v12;
  v22 = v8;
  v13 = a1[2];
  v14 = *(v13 + 8);
  if (v14 >= *(v13 + 16))
  {
    v15 = sub_2992E610C(v13, v16, &v25);
  }

  else
  {
    sub_2992E6260(v13, *(v13 + 8), v16, &v25);
    v15 = v14 + 88;
    *(v13 + 8) = v14 + 88;
  }

  *(v13 + 8) = v15;
  if (__p[1])
  {
    *&v20 = __p[1];
    operator delete(__p[1]);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23);
  }
}

void sub_2992E5FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29922C934(&a9);
  if (*(v9 - 41) < 0)
  {
    operator delete(*(v9 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992E602C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E4C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992E6078(uint64_t result, __int16 *a2, __int16 *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_299212A30();
  }

  v5 = result;
  if (a4 > 0xA)
  {
    if ((a4 | 3) == 0xB)
    {
      v6 = 13;
    }

    else
    {
      v6 = (a4 | 3) + 1;
    }

    sub_299212A48(result, v6);
  }

  *(result + 23) = a4;
  while (a2 != a3)
  {
    v7 = *a2++;
    *v5++ = v7;
  }

  *v5 = 0;
  return result;
}

uint64_t sub_2992E610C(char **a1, __int128 *a2, _DWORD *a3)
{
  v3 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_299212A8C();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v7 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    sub_2992E6340(a1, v7);
  }

  v14 = 0;
  v15 = 88 * v3;
  sub_2992E6260(a1, (88 * v3), a2, a3);
  v16 = (88 * v3 + 88);
  v8 = a1[1];
  v9 = (88 * v3 + *a1 - v8);
  sub_2992E639C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_2992E654C(&v14);
  return v13;
}

void sub_2992E624C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2992E654C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2992E6260(int a1, void *__dst, __int128 *a3, _DWORD *a4)
{
  if (*(a3 + 23) < 0)
  {
    sub_29922C89C(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    __dst[2] = *(a3 + 2);
    *__dst = v7;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  sub_29922C820(__dst + 3, *(a3 + 3), *(a3 + 4), (*(a3 + 4) - *(a3 + 3)) >> 3);
  __dst[6] = 0;
  __dst[7] = 0;
  __dst[8] = 0;
  result = sub_299215EC0(__dst + 6, *(a3 + 6), *(a3 + 7), (*(a3 + 7) - *(a3 + 6)) >> 1);
  v9 = *(a3 + 18);
  *(__dst + 38) = *(a3 + 38);
  *(__dst + 18) = v9;
  *(__dst + 20) = *a4;
  return result;
}

void sub_2992E630C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992E6340(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2992E639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      v9 = *(v7 + 72);
      *(a4 + 76) = *(v7 + 76);
      *(a4 + 72) = v9;
      *(a4 + 80) = *(v7 + 80);
      v7 += 88;
      a4 += 88;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    do
    {
      sub_2992E5454(a1, v5);
      v5 += 88;
    }

    while (v5 != a3);
  }

  return sub_2992E64C0(v11);
}

uint64_t sub_2992E64C0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2992E64F8(a1);
  }

  return a1;
}

void sub_2992E64F8(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 88;
      sub_2992E5454(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_2992E654C(uint64_t a1)
{
  sub_2992E6584(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2992E6584(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 88;
    sub_2992E5454(v5, v4 - 88);
  }
}

uint64_t sub_2992E65CC(uint64_t a1)
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

__n128 sub_2992E66C8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6E4E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992E6700(uint64_t a1, uint64_t a2, float *a3, _BYTE *a4)
{
  v4 = *(a1 + 8);
  if (**(a1 + 32) >= 2)
  {
    *a4 = 1;
  }

  if (*(v4 + 225) != 1)
  {
    v5 = *(a1 + 24);
    v6 = *(a2 + 24);
    if (v6 == *(v5 + 8))
    {
      memcmp(*(a2 + 16), *v5, 2 * v6);
    }
  }

  sub_29922B434();
}

void sub_2992E6930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29921F128(va);
  if (a6)
  {
    (*(*a6 + 16))(a6);
  }

  if (a7)
  {
    (*(*a7 + 16))(a7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992E69B4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E558))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992E6A00(uint64_t a1)
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

__n128 sub_2992E6AFC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6E578;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992E6B34(uint64_t a1, uint64_t a2, float *a3, _BYTE *a4)
{
  v4 = *(a1 + 8);
  if (**(a1 + 32) >= 2)
  {
    *a4 = 1;
  }

  if (*(v4 + 225) != 1)
  {
    v5 = *(a1 + 24);
    v6 = *(a2 + 24);
    if (v6 == *(v5 + 8))
    {
      memcmp(*(a2 + 16), *v5, 2 * v6);
    }
  }

  sub_29922B434();
}

void sub_2992E6D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29921F128(va);
  if (a6)
  {
    (*(*a6 + 16))(a6);
  }

  if (a7)
  {
    (*(*a7 + 16))(a7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992E6DE8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E5D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992E6EB0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6E5F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992E6EE8(void *a1, uint64_t a2, float *a3)
{
  if (*(a1[1] + 225) != 1)
  {
    v3 = a1[3];
    if (*v3)
    {
      v4 = v3[5] - 1;
    }

    else
    {
      v4 = 0;
    }

    if (*(a2 + 24) == v4)
    {
      memcmp(*(a2 + 16), (*v3 + 2), 2 * v4);
    }
  }

  sub_29922B434();
}

void sub_2992E7118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29921F128(va);
  if (a6)
  {
    (*(*a6 + 16))(a6);
  }

  if (a7)
  {
    (*(*a7 + 16))(a7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992E719C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E658))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992E7264(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6E678;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992E729C(void *a1, uint64_t a2, float *a3)
{
  if (*(a1[1] + 225) != 1)
  {
    v3 = a1[3];
    v4 = *(a2 + 24);
    if (v4 == *(v3 + 8))
    {
      memcmp(*(a2 + 16), *v3, 2 * v4);
    }
  }

  sub_29922B434();
}

void sub_2992E74B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29921F128(va);
  if (a6)
  {
    (*(*a6 + 16))(a6);
  }

  if (a7)
  {
    (*(*a7 + 16))(a7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992E7538(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E6D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2992E7620(uint64_t a1)
{
  v1 = sub_29936C2B8();
  v2 = sub_29936C3FC(v1, 3, off_2A145F738[0], off_2A145F710[0], 0);
  v3 = v2[23];
  if (v3 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = v2[23];
  }

  else
  {
    v5 = *(v2 + 1);
  }

  v6 = CFURLCreateFromFileSystemRepresentation(0, v4, v5, 0);
  qword_2A1460C60 = objc_msgSend_informationDictionaryAtPath_(MecabraWordProperties, v7, v6, v8);
  if (v6)
  {

    CFRelease(v6);
  }
}

void sub_2992E7710(uint64_t a1)
{
  v1 = sub_29936C2B8();
  v2 = sub_29936C3FC(v1, 3, off_2A145F738[0], off_2A145F718[0], 0);
  v3 = v2[23];
  if (v3 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = v2[23];
  }

  else
  {
    v5 = *(v2 + 1);
  }

  v6 = CFURLCreateFromFileSystemRepresentation(0, v4, v5, 0);
  qword_2A1460C70 = objc_msgSend_informationDictionaryAtPath_(MecabraWordProperties, v7, v6, v8);
  if (v6)
  {

    CFRelease(v6);
  }
}

void sub_2992E7914(uint64_t a1)
{
  v1 = sub_29936C2B8();
  v2 = sub_29936C3FC(v1, 3, off_2A145F738[0], off_2A145F708[0], 0);
  v3 = v2[23];
  if (v3 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = v2[23];
  }

  else
  {
    v5 = *(v2 + 1);
  }

  v9 = CFURLCreateFromFileSystemRepresentation(0, v4, v5, 0);
  v6 = objc_alloc(MEMORY[0x29EDB8D80]);
  qword_2A1460C80 = objc_msgSend_initWithContentsOfURL_(v6, v7, v9, v8);
}

uint64_t sub_2992E88CC(void *a1, uint64_t a2)
{
  sub_299233548(a2, "dicdir", v9);
  sub_2991C6CA8(__p, "char.bin");
  sub_299260A18(v9, __p, &v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v8;
  }

  else
  {
    v3 = v8.__r_.__value_.__r.__words[0];
  }

  v4 = sub_2992E89C8(a1, v3);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  return v4;
}

void sub_2992E8980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992E89C8(void *a1, const char *a2)
{
  if ((sub_299211244((a1 + 1), a2, "r") & 1) == 0)
  {
    std::ios_base::clear((a1 + *(a1[49] - 24) + 392), 0);
    v19 = sub_2991C0E9C(a1 + 49, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/char_property.cpp", 70);
    v20 = sub_2991C0E9C(v19, "(", 1);
    v21 = MEMORY[0x29C29BD30](v20, 85);
    v22 = sub_2991C0E9C(v21, ") [", 3);
    v23 = sub_2991C0E9C(v22, "cmmap_.open(filename, r)", 26);
    sub_2991C0E9C(v23, "] ", 2);
    return 0;
  }

  v4 = a1[2];
  v5 = *v4;
  if ((32 * *v4) + 0x40000 != a1[3])
  {
    std::ios_base::clear((a1 + *(a1[49] - 24) + 392), 0);
    v24 = sub_2991C0E9C(a1 + 49, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/char_property.cpp", 70);
    v25 = sub_2991C0E9C(v24, "(", 1);
    v26 = MEMORY[0x29C29BD30](v25, 94);
    v27 = sub_2991C0E9C(v26, ") [", 3);
    v28 = sub_2991C0E9C(v27, "fsize == cmmap_.size()", 22);
    v29 = sub_2991C0E9C(v28, "] ", 2);
    v30 = sub_2991C0E9C(v29, "invalid file size: ", 19);
    v31 = strlen(a2);
    sub_2991C0E9C(v30, a2, v31);
    return 0;
  }

  v6 = v4 + 1;
  v7 = a1[44];
  for (a1[45] = v7; v5; --v5)
  {
    v8 = a1[46];
    if (v7 >= v8)
    {
      v9 = a1[44];
      v10 = (v7 - v9) >> 3;
      if ((v10 + 1) >> 61)
      {
        sub_299212A8C();
      }

      v11 = v8 - v9;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        sub_2991C1E60((a1 + 44), v13);
      }

      *(8 * v10) = v6;
      v7 = (8 * v10 + 8);
      v14 = a1[44];
      v15 = a1[45] - v14;
      v16 = (8 * v10 - v15);
      memcpy(v16, v14, v15);
      v17 = a1[44];
      a1[44] = v16;
      a1[45] = v7;
      a1[46] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v7++ = v6;
    }

    v6 += 8;
    a1[45] = v7;
  }

  a1[47] = v6;
  return 1;
}

const void **sub_2992E8C28(const void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_299212A8C();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_299212AA4(result, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_299212AFC(v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 2) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v7 = (v4 + 24);
  }

  v3[1] = v7;
  return result;
}

uint64_t (*sub_2992E8D58(uint64_t a1))(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v2 = *(*(a1 + 24) + 64);
  if (v2 && ((*(*v2 + 24))(v2) & 1) == 0)
  {
    if (**(a1 + 32))
    {
      return sub_2992E8E24;
    }

    v3 = (*(*(a1 + 16) + 2) & 0x80) == 0;
    v4 = sub_2992E8E30;
    v5 = sub_2992E8F3C;
  }

  else
  {
    v3 = (*(*(a1 + 16) + 2) & 0x80) == 0;
    v4 = sub_2992E8F48;
    v5 = sub_2992E9248;
  }

  if (v3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2992E8E30(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  result = sub_2992E9BD0(a1, a2, a3, a4);
  if (!result)
  {
    v10 = sub_2992896C0(a1, v7, v8, v9);
    v14 = sub_2992896C0(a2, v11, v12, v13);
    v15 = (*(*v10 + 112))(v10);
    if (v15 >= (*(*v14 + 112))(v14))
    {
      v16 = (*(*v10 + 112))(v10);
      return v16 > (*(*v14 + 112))(v14);
    }

    else
    {
      return -1;
    }
  }

  return result;
}

uint64_t sub_2992E8F48(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2992896C0(a1, a2, a3, a4);
  v7 = (*(*v6 + 104))(v6);
  v8 = (*(*v6 + 104))(v6);
  v9 = (*(*v6 + 24))(v6);
  Length = CFStringGetLength(v9);
  if ((v8 & 4) != 0 && ((v14 = Length, (*(*v6 + 200))(v6)) ? (v15 = v14 < 5) : (v15 = 0), v15))
  {
    v17 = 2;
  }

  else
  {
    if ((v7 & 0x10) != 0)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if ((v7 & 4) != 0)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }
  }

  v18 = sub_2992896C0(a2, v11, v12, v13);
  v19 = (*(*v18 + 104))(v18);
  v20 = (*(*v18 + 104))(v18);
  v21 = (*(*v18 + 24))(v18);
  v22 = CFStringGetLength(v21);
  if ((v20 & 4) != 0 && ((v25 = v22, (*(*v18 + 200))(v18)) ? (v26 = v25 < 5) : (v26 = 0), v26))
  {
    v27 = 2;
  }

  else if ((v19 & 4) != 0)
  {
    v27 = 0;
  }

  else if ((v19 & 0x10) != 0)
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  if (v17 < v27)
  {
    return -1;
  }

  if (v17 > v27)
  {
    return 1;
  }

  result = sub_2992E9BD0(a1, a2, v23, v24);
  if (!result)
  {
    v32 = sub_2992896C0(a1, v29, v30, v31);
    v36 = sub_2992896C0(a2, v33, v34, v35);
    v37 = (*(*v32 + 112))(v32);
    if (v37 < (*(*v36 + 112))(v36))
    {
      return -1;
    }

    v38 = (*(*v32 + 112))(v32);
    return v38 > (*(*v36 + 112))(v36);
  }

  return result;
}

uint64_t sub_2992E9248(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2992896C0(a1, a2, a3, a4);
  v7 = (*(*v6 + 104))(v6);
  if ((v7 & 0x10) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if ((v7 & 4) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = sub_2992896C0(a2, v8, v9, v10);
  v14 = (*(*v13 + 104))(v13);
  if ((v14 & 0x10) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  if ((v14 & 4) != 0)
  {
    v17 = 0;
  }

  if (v12 < v17)
  {
    return -1;
  }

  if (v12 > v17)
  {
    return 1;
  }

  return sub_2992E9A0C(a1, a2, 1.15, v15, v16);
}

uint64_t (*sub_2992E9334(uint64_t a1))(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v1 = *(*(a1 + 24) + 64);
  v2 = sub_2992E9248;
  if (v1)
  {
    v3 = (*(*v1 + 24))(v1);
    v2 = sub_2992E9248;
    if ((v3 & 1) == 0)
    {
      return sub_2992E8F3C;
    }
  }

  return v2;
}

uint64_t (*sub_2992E93B0(uint64_t a1))(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(a1 + 24) + 25) & 0x40) != 0)
  {
    return sub_2992E93E0;
  }

  else
  {
    return sub_2992E94C8;
  }
}

uint64_t sub_2992E93E0(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2992896C0(a1, a2, a3, a4);
  v7 = (*(*v6 + 104))(v6);
  if ((v7 & 0x10) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if ((v7 & 4) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = sub_2992896C0(a2, v8, v9, v10);
  v14 = (*(*v13 + 104))(v13);
  if ((v14 & 0x10) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if ((v14 & 4) != 0)
  {
    v16 = 0;
  }

  if (v12 < v16)
  {
    return -1;
  }

  if (v12 > v16)
  {
    return 1;
  }

  return sub_2992E94C8(a1, a2, 0, v15);
}

uint64_t sub_2992E94C8(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x29EDCA608];
  v6 = sub_2992896C0(a1, a2, a3, a4);
  v10 = sub_2992896C0(a2, v7, v8, v9);
  Length = (*(*v6 + 56))(v6);
  v15 = (*(*v10 + 56))(v10);
  if (!Length && (v16 = sub_2993652F8(3u), os_log_type_enabled(v16, OS_LOG_TYPE_FAULT)))
  {
    v27 = (*(*v6 + 24))(v6);
    v29 = 138412290;
    v30 = v27;
    _os_log_fault_impl(&dword_29918C000, v16, OS_LOG_TYPE_FAULT, "Failed to create analysis string for [%@].", &v29, 0xCu);
    if (v15)
    {
      goto LABEL_6;
    }
  }

  else if (v15)
  {
    goto LABEL_6;
  }

  v17 = sub_2993652F8(3u);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    v28 = (*(*v10 + 24))(v10);
    v29 = 138412290;
    v30 = v28;
    _os_log_fault_impl(&dword_29918C000, v17, OS_LOG_TYPE_FAULT, "Failed to create analysis string for [%@].", &v29, 0xCu);
  }

LABEL_6:
  if (Length)
  {
    Length = CFStringGetLength(Length);
  }

  if (v15)
  {
    v18 = CFStringGetLength(v15);
  }

  else
  {
    v18 = 0;
  }

  if (Length == v18)
  {
    v19 = sub_2992896C0(a1, v12, v13, v14);
    v23 = sub_2992896C0(a2, v20, v21, v22);
    v24 = (*(*v19 + 112))(v19);
    if (v24 >= (*(*v23 + 112))(v23))
    {
      v26 = (*(*v19 + 112))(v19);
      return v26 > (*(*v23 + 112))(v23);
    }

    else
    {
      return -1;
    }
  }

  else if (Length < v18)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t (*sub_2992E97B0(void *a1))(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v1 = sub_2992E93E0;
  if ((*(a1[3] + 25) & 0x40) == 0)
  {
    if (CFArrayGetCount(*(*a1 + 8)))
    {
      return sub_2992E9824;
    }

    Count = CFArrayGetCount(*(a1[1] + 8));
    v1 = sub_2992E93E0;
    if (Count)
    {
      return sub_2992E9824;
    }
  }

  return v1;
}

uint64_t sub_2992E9824(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2992896C0(a1, a2, a3, a4);
  v7 = (*(*v6 + 104))(v6);
  if ((v7 & 0x10) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if ((v7 & 4) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = sub_2992896C0(a2, v8, v9, v10);
  v14 = (*(*v13 + 104))(v13);
  if ((v14 & 0x10) != 0)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  if ((v14 & 4) != 0)
  {
    v18 = 0;
  }

  if (v12 < v18)
  {
    return -1;
  }

  if (v12 > v18)
  {
    return 1;
  }

  v20 = sub_2992896C0(a1, v15, v16, v17);
  v24 = sub_2992896C0(a2, v21, v22, v23);
  v25 = (*(*v20 + 112))(v20);
  if (v25 < (*(*v24 + 112))(v24))
  {
    return -1;
  }

  v26 = (*(*v20 + 112))(v20);
  return v26 > (*(*v24 + 112))(v24);
}

uint64_t sub_2992E99C8(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  Surface = MecabraCandidateGetSurface(a1, a2, a3, a4);
  Length = CFStringGetLength(Surface);
  v10 = MecabraCandidateGetSurface(a2, v7, v8, v9);
  v11 = CFStringGetLength(v10);
  if (Length > v11)
  {
    return -1;
  }

  else
  {
    return Length < v11;
  }
}

uint64_t sub_2992E9A0C(void *a1, char *a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2992896C0(a1, a2, a4, a5);
  v12 = sub_2992896C0(a2, v9, v10, v11);
  v13 = (*(*v8 + 392))(v8);
  v17 = (*(*v12 + 392))(v12);
  if (v13 <= v17)
  {
    if (v13 >= v17 || (v19 = v17 * a3, result = v19 > v13, v19 <= v13))
    {
LABEL_9:
      v20 = sub_2992896C0(a1, v14, v15, v16);
      v24 = sub_2992896C0(a2, v21, v22, v23);
      v25 = (*(*v20 + 112))(v20);
      if (v25 >= (*(*v24 + 112))(v24))
      {
        v26 = (*(*v20 + 112))(v20);
        return v26 > (*(*v24 + 112))(v24);
      }

      else
      {
        return -1;
      }
    }
  }

  else
  {
    if (v13 * a3 <= v17)
    {
      result = 0;
    }

    else
    {
      result = -1;
    }

    if (!result)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t sub_2992E9BD0(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2992896C0(a1, a2, a3, a4);
  v9 = sub_2992896C0(a2, v6, v7, v8);
  v10 = (*(*v5 + 392))(v5);
  v11 = (*(*v9 + 392))(v9);
  v12 = (*(*v5 + 104))(v5);
  v13 = (*(*v5 + 24))(v5);
  Length = CFStringGetLength(v13);
  if ((v12 & 4) != 0)
  {
    v16 = Length;
    v17 = (*(*v5 + 200))(v5);
    if (v16 < 5)
    {
      v15 = v17;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = (*(*v9 + 104))(v9);
  v19 = (*(*v9 + 24))(v9);
  v20 = CFStringGetLength(v19);
  if ((v18 & 4) != 0)
  {
    v22 = v20;
    v23 = (*(*v9 + 200))(v9);
    if (v22 < 5)
    {
      v21 = v23;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  if ((v15 | v21))
  {
    v24 = v15 ^ 1 | v21;
    v25 = (((v15 ^ 1) & v21) << 63) >> 63;
    if (v24)
    {
      return v25;
    }

    else
    {
      return 1;
    }
  }

  else if (v10 <= v11)
  {
    return v10 < v11 && v11 * 1.15 > v10;
  }

  else if (v10 * 1.15 <= v11)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

BOOL sub_2992E9E20(uint64_t *a1, uint64_t *a2, void *a3, int a4, int a5, int a6, __int16 a7)
{
  if ((atomic_load_explicit(&qword_2A1460C98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460C98))
  {
    sub_299255778(0);
    word_2A1460C90 = dword_2A1461DF4;
    __cxa_guard_release(&qword_2A1460C98);
  }

  v9 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if ((*(v9 + 837) & 1) == 0)
  {
    sub_29924C9E4(v9, a4, 0, 7);
    v9 = *a1;
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  v10 = a2[1];
  if (v10 != *a2)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 3);
    if (v11 <= 0x666666666666666)
    {
      sub_2992EA198(v11);
    }

    sub_299212A8C();
  }

  sub_29924D87C(v9, &__p);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v9 != 0;
}

void sub_2992EA198(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  sub_29919600C();
}

void sub_2992EA1F0(uint64_t *a1, unsigned int a2, int a3)
{
  v4 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    sub_2992EA308(a1, a2 + 1);
    v4 = *a1;
  }

  v7 = (v4 + 24 * a2);
  v9 = v7[1];
  v8 = v7[2];
  if (v9 >= v8)
  {
    v11 = *v7;
    v12 = v9 - *v7;
    v13 = v12 >> 2;
    v14 = (v12 >> 2) + 1;
    if (v14 >> 62)
    {
      sub_299212A8C();
    }

    v15 = v8 - v11;
    if (v15 >> 1 > v14)
    {
      v14 = v15 >> 1;
    }

    v16 = v15 >= 0x7FFFFFFFFFFFFFFCLL;
    v17 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v16)
    {
      v17 = v14;
    }

    if (v17)
    {
      sub_2992F86B0(v7, v17);
    }

    *(4 * v13) = a3;
    v10 = 4 * v13 + 4;
    memcpy(0, v11, v12);
    v18 = *v7;
    *v7 = 0;
    v7[1] = v10;
    v7[2] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v9 = a3;
    v10 = (v9 + 4);
  }

  v7[1] = v10;
}

void sub_2992EA308(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_2992EA5DC(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

uint64_t sub_2992EA3B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = 0u;
  v28 = 0u;
  v29 = 1065353216;
  v26 = 0;
  v3 = *a1;
  v4 = a1[1];
  if (v4 == *a1)
  {
    result = sub_29921ED28(&v27);
LABEL_21:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return result;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = (v3 + 24 * v7);
    v9 = *v8;
    if (*v8 == v8[1])
    {
      v10 = *v8;
    }

    else
    {
      sub_2992EA748(&v27, &v26, &v26);
      v7 = v26;
      v3 = *a1;
      v4 = a1[1];
      v9 = *(*a1 + 24 * v26);
      v10 = *(*a1 + 24 * v26 + 8);
    }

    v11 = (v10 - v9) >> 2;
    if (v11 <= 1)
    {
      v11 = 0;
    }

    v6 += 1 + v11;
    v26 = ++v7;
  }

  while (v7 < 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
  v12 = DWORD2(v28);
  result = sub_29921ED28(&v27);
  if (!v6)
  {
    goto LABEL_21;
  }

  LODWORD(v27) = -1;
  result = sub_299280940(a2, v6 + 2, &v27);
  v14 = *a1;
  v15 = a1[1];
  v16 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a1) >> 3);
  v17 = *a2;
  v18 = (*a2 + 4 * v6);
  *v18 = v12;
  v18[1] = v16 - 1;
  if (v15 != v14)
  {
    v19 = 0;
    v20 = 0;
    v21 = v17 + 4 * v16;
    if (v16 <= 1)
    {
      v16 = 1;
    }

    do
    {
      v22 = (v14 + 24 * v20);
      v23 = *v22;
      v24 = v22[1];
      if (v23 != v24)
      {
        if (v24 - v23 == 4)
        {
          *(v17 + 4 * v20) = *v23;
        }

        else
        {
          result = (v19 << 8) | ((v24 - v23) >> 2);
          *(v17 + 4 * v20) = result | 0x80000000;
          do
          {
            v25 = *v23;
            v23 += 4;
            *(v21 + 4 * v19++) = v25;
          }

          while (v23 != v24);
        }
      }

      ++v20;
    }

    while (v20 != v16);
  }

  return result;
}

void sub_2992EA568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29921ED28(va);
  _Unwind_Resume(a1);
}

void *sub_2992EA57C(void *result, void *a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = a3 + 1;
  if (a2)
  {
    v3 = a2[1];
    if (v3)
    {
      v4 = *a2 + 4 * v3;
      if (*(v4 - 8))
      {
        v5 = *(*a2 + 4 * a3);
        if (v5 != -1)
        {
          if ((v5 & 0x80000000) == 0)
          {
            return result;
          }

          v6 = ((v5 >> 8) & 0x7FFFFF) + *(v4 - 4) + 1;
          result[1] = v6;
          a3 = v6 + v5;
        }
      }
    }
  }

  result[2] = a3;
  return result;
}

void sub_2992EA5DC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29920D90C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_29920DDE0(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_29920DE38(v18);
  }
}

void *sub_2992EA748(void *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
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

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void sub_2992EA974(uint64_t a1, uint64_t a2, CFTypeRef cf, uint64_t a4)
{
  if (cf)
  {
    v6 = a2;
    v8 = CFGetTypeID(cf);
    if (v8 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(cf);
      Length = CFDataGetLength(cf);
      __src = 0;
      v25 = 0;
      v26 = 0;
      if (Length >= 8)
      {
        v11 = 0;
        v12 = Length >> 3;
        v13 = BytePtr + 4;
        do
        {
          if (v11 >= v26)
          {
            v14 = __src;
            v15 = v11 - __src;
            v16 = (v11 - __src) >> 3;
            v17 = v16 + 1;
            if ((v16 + 1) >> 61)
            {
              sub_2992EAC5C();
            }

            v18 = v26 - __src;
            if ((v26 - __src) >> 2 > v17)
            {
              v17 = v18 >> 2;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFF8)
            {
              v19 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v17;
            }

            if (v19)
            {
              sub_2992EAC74(&__src, v19);
            }

            v20 = (v11 - __src) >> 3;
            v21 = 8 * v16;
            *v21 = *(v13 - 2);
            *(v21 + 4) = *v13;
            v11 = 8 * v16 + 8;
            v22 = (8 * v16 - 8 * v20);
            memcpy((v21 - 8 * v20), v14, v15);
            v23 = __src;
            __src = v22;
            v25 = v11;
            v26 = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v11 = *(v13 - 2);
            *(v11 + 4) = *v13;
            v11 += 8;
          }

          v25 = v11;
          v13 += 2;
          --v12;
        }

        while (v12);
      }

      sub_2992EAB38(a1, v6, &__src, a4);
      if (__src)
      {
        v25 = __src;
        operator delete(__src);
      }
    }
  }
}

void sub_2992EAB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992EAB38(uint64_t result, int a2, float **a3, uint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    v7 = result;
    v8 = 0;
    for (i = v4 + 2; *(i - 4) != a2; i += 2)
    {
      ++v8;
      if (*(i - 4))
      {
        v10 = i == v5;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        return result;
      }
    }

    v11 = 0;
    v12 = *(i - 1);
    do
    {
      if (v8)
      {
        if (!*v4)
        {
          break;
        }

        v13 = v12 - v4[1];
        v14 = 1.0;
        if (v13 > 0.0)
        {
          v14 = 0.0;
          if (v13 < *v7)
          {
            v14 = 1.0 - ((v13 * 100.0) / (*v7 * 100.0));
          }
        }

        if (v14 >= *(v7 + 4))
        {
          v15[0] = *v4;
          *&v15[1] = v14;
          result = (*(a4 + 16))(a4, v15);
          if (++v11 > *(v7 + 8))
          {
            break;
          }
        }
      }

      v4 += 2;
      --v8;
    }

    while (v4 != v5);
  }

  return result;
}

void sub_2992EAC74(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_29919600C();
}

void sub_2992EAE38(_Unwind_Exception *a1)
{
  operator delete(v3);
  sub_2992EAF08((v2 + 24));
  sub_2992EAF08(v1 + 1);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    sub_2992EE20C(v1, v5);
  }

  _Unwind_Resume(a1);
}

void sub_2992EAEA8(std::exception *this)
{
  this->__vftable = &unk_2A1F6E780;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t *sub_2992EAF08(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2993EEDEC(v2);
    MEMORY[0x29C29BFB0](v3, 0x10E0C400F5837B5);
  }

  return a1;
}

uint64_t sub_2992EAF50(uint64_t a1)
{
  v2 = (a1 + 16);
  sub_2993EEE54(*(a1 + 16));
  sub_2993EEE54(*(a1 + 24));
  *(a1 + 40) = 0;
  sub_2992EAF08((a1 + 24));
  sub_2992EAF08(v2);
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    sub_2992EE20C(a1 + 8, v3);
  }

  return a1;
}

void sub_2992EB008(_Unwind_Exception *a1, int a2)
{
  v4 = v2;
  MEMORY[0x29C29BFB0](v4, 0x1060C40C17344BBLL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2992EAFF8);
  }

  _Unwind_Resume(a1);
}

void sub_2992EB058(void *a1, CFStringRef theString, unint64_t a3, char a4)
{
  if ((a4 & 8) == 0 && CFStringGetLength(theString) >= 3)
  {
    sub_299276B44();
  }
}

void sub_2992EB25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  _Block_object_dispose(&a21, 8);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  if (a12)
  {
    MEMORY[0x29C29BF70](a12, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2992EB2A8(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_2992EB2CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_2992EB2E4(uint64_t a1, unsigned int **a2, uint64_t a3, _BYTE *a4)
{
  if (!a3)
  {
    v5 = *(a1 + 40);
    v6 = sub_2993B2928(v5[4], a2[1]);
    v8 = v7;
    v15[0] = v6;
    v15[1] = v7;
    v14[2] = (*(*v5[4] + 24))(v5[4], a2[1], 1);
    v14[3] = v9;
    v10 = (2 * v8);
    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = *v6;
        v6 = (v6 + 1);
        v11 = (1025 * (v11 + v12)) ^ ((1025 * (v11 + v12)) >> 6);
        --v10;
      }

      while (v10);
    }

    v13 = sub_2992BB92C(v15, *(*(*v5 + 104) + 8));
    sub_2992EE264(v14, v13);
  }

  *a4 = 1;
}

void sub_2992EB434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  MEMORY[0x29C29BFB0](v12, 0x10E1C40CFE76A11, a3, a4, a5, a6, a7, a8);
  if (a12)
  {
    sub_2991A893C(a12);
  }

  _Unwind_Resume(a1);
}

void sub_2992EB46C(void *result, uint64_t **a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v6 = *v4++;
      v7 = sub_29928A270(v6);
      sub_2993EEFE0(result, v7, v8, v9);
    }

    while (v4 != v5);
    v4 = *a2;
  }

  a2[1] = v4;
  result[4] = result[1];
}

void sub_2992EB4D0(void *a1, uint64_t a2, int a3, unint64_t a4, unsigned int a5)
{
  *(a1 + 10) = a3;
  CFStringGetLength(*(a2 + 152));
  operator new[]();
}

void sub_2992EB99C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, char a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992EBA20(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v9[3] = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v8[3] = 0;
  v5 = (a2[1] - 1) < 2;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v7[3] = 0;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v6[2] = sub_2992EE400;
  v6[3] = &unk_29EF10C00;
  v6[4] = v9;
  v6[5] = v8;
  v6[6] = v7;
  v6[7] = a1;
  v6[8] = a2;
  v6[9] = a4;
  v6[10] = a3;
  v6[11] = a5;
  sub_2992AAE6C(a1[1], a2, v5, v6);
}

void sub_2992EBBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

__n128 sub_2992EBC00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v4;
  *(a1 + 56) = v3;
  *(a1 + 40) = v2;
  v5 = *(a2 + 104);
  v6 = *(a2 + 120);
  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  *(a1 + 120) = v6;
  *(a1 + 104) = v5;
  result = *(a2 + 168);
  v9 = *(a2 + 184);
  v10 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v10;
  *(a1 + 184) = v9;
  *(a1 + 168) = result;
  return result;
}

void sub_2992EBC68(uint64_t a1, const __CFString *a2, uint64_t a3, CFIndex a4, CFIndex a5, UniChar *a6, uint64_t a7)
{
  if (!a2)
  {
    return;
  }

  v8 = a4;
  v10 = *(*(*a1 + 104) + 8);
  if (!v10)
  {
    v13 = a4;
LABEL_34:
    v76.location = v13;
    v76.length = a5;
    CFStringGetCharacters(a2, v76, a6);
    goto LABEL_35;
  }

  while (1)
  {
    RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(a2, v8);
    v13 = RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length;
    if (RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length == CFStringGetLength(a2))
    {
      break;
    }

    if (RangeOfComposedCharactersAtIndex.length == 1)
    {
      if (RangeOfComposedCharactersAtIndex.location < 0)
      {
        v37 = 0;
        v35 = a1;
      }

      else
      {
        v34 = *(a3 + 160);
        v35 = a1;
        if (v34 <= RangeOfComposedCharactersAtIndex.location)
        {
          v37 = 0;
        }

        else
        {
          v36 = *(a3 + 136);
          if (v36)
          {
            v37 = *(v36 + 2 * *(a3 + 152) + 2 * RangeOfComposedCharactersAtIndex.location);
          }

          else
          {
            v63 = *(a3 + 144);
            if (v63)
            {
              v37 = *(v63 + *(a3 + 152) + RangeOfComposedCharactersAtIndex.location);
            }

            else
            {
              if (*(a3 + 176) <= RangeOfComposedCharactersAtIndex.location || (v65 = *(a3 + 168), v65 > RangeOfComposedCharactersAtIndex.location))
              {
                v66 = RangeOfComposedCharactersAtIndex.location - 4;
                if (RangeOfComposedCharactersAtIndex.location < 4uLL)
                {
                  v66 = 0;
                }

                if (v66 + 64 < v34)
                {
                  v34 = v66 + 64;
                }

                *(a3 + 168) = v66;
                *(a3 + 176) = v34;
                v78.length = v34 - v66;
                v78.location = *(a3 + 152) + v66;
                CFStringGetCharacters(*(a3 + 128), v78, a3);
                v65 = *(a3 + 168);
              }

              v37 = *(a3 + 2 * (RangeOfComposedCharactersAtIndex.location - v65));
            }
          }
        }
      }

      sub_29922E56C(v10, v37, &v72);
      v60 = v72;
      if (v73 != v72)
      {
        v62 = 0;
        do
        {
          a6[RangeOfComposedCharactersAtIndex.location - v8] = v60[v62];
          sub_2992EBC68(v35, a2, a3, RangeOfComposedCharactersAtIndex.location + 1, a5 - 1, a6 + 1, a7);
          ++v62;
          v60 = v72;
        }

        while (v62 < (v73 - v72) >> 1);
      }

      goto LABEL_80;
    }

    if (v8 <= RangeOfComposedCharactersAtIndex.location)
    {
      location = RangeOfComposedCharactersAtIndex.location;
    }

    else
    {
      location = v8;
    }

    v15 = v13 - location;
    if (v13 - location >= 1)
    {
      v16 = &a6[-v8];
      v17 = -location;
      v18 = location + 64;
      do
      {
        if (location >= 4)
        {
          v19 = 4;
        }

        else
        {
          v19 = location;
        }

        if (location < 0 || (v20 = *(a3 + 160), v20 <= location))
        {
          v23 = 0;
        }

        else
        {
          v21 = *(a3 + 136);
          if (v21)
          {
            v22 = v21 + 2 * *(a3 + 152);
          }

          else
          {
            v24 = *(a3 + 144);
            if (v24)
            {
              v23 = *(v24 + *(a3 + 152) + location);
              goto LABEL_19;
            }

            if (*(a3 + 176) <= location || (v25 = *(a3 + 168), v25 > location))
            {
              v26 = v19 + v17;
              v27 = v18 - v19;
              v28 = location - v19;
              v29 = v28 + 64;
              if (v28 + 64 >= v20)
              {
                v29 = *(a3 + 160);
              }

              *(a3 + 168) = v28;
              *(a3 + 176) = v29;
              if (v20 >= v27)
              {
                v20 = v27;
              }

              v75.location = v28 + *(a3 + 152);
              v75.length = v20 + v26;
              CFStringGetCharacters(*(a3 + 128), v75, a3);
              v25 = *(a3 + 168);
            }

            v22 = a3 - 2 * v25;
          }

          v23 = *(v22 + 2 * location);
        }

LABEL_19:
        v16[location++] = v23;
        --v17;
        ++v18;
      }

      while (v13 != location);
    }

    a5 -= v15;
    a6 += v15;
    v10 = *(*(*a1 + 104) + 8);
    v8 = RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length;
    if (!v10)
    {
      goto LABEL_34;
    }
  }

  if (RangeOfComposedCharactersAtIndex.length != 1)
  {
    if (RangeOfComposedCharactersAtIndex.length >= 1)
    {
      v38 = 0;
      v39 = RangeOfComposedCharactersAtIndex.location - v8;
      v40 = -RangeOfComposedCharactersAtIndex.location;
      v41 = RangeOfComposedCharactersAtIndex.location + 64;
      v42 = RangeOfComposedCharactersAtIndex.location;
      v43 = &a6[v39];
      v44 = a3 + 2 * RangeOfComposedCharactersAtIndex.location;
      do
      {
        if (v42 >= 4)
        {
          v45 = 4;
        }

        else
        {
          v45 = v42;
        }

        v46 = RangeOfComposedCharactersAtIndex.location + v38;
        if (RangeOfComposedCharactersAtIndex.location + v38 < 0 || (v47 = *(a3 + 160), v47 <= v46))
        {
          v50 = 0;
        }

        else
        {
          v48 = *(a3 + 136);
          if (v48)
          {
            v49 = v48 + 2 * *(a3 + 152) + 2 * RangeOfComposedCharactersAtIndex.location;
          }

          else
          {
            v51 = *(a3 + 144);
            if (v51)
            {
              v50 = *(v51 + *(a3 + 152) + RangeOfComposedCharactersAtIndex.location + v38);
              goto LABEL_58;
            }

            if (*(a3 + 176) <= v46 || (v52 = *(a3 + 168), v52 > v46))
            {
              v53 = v45 + v40;
              v54 = v41 - v45;
              v55 = -v45;
              v56 = 64 - v45;
              v57 = v38 + RangeOfComposedCharactersAtIndex.location - v45;
              v58 = RangeOfComposedCharactersAtIndex.location + v38 + v56;
              if (v58 >= v47)
              {
                v58 = *(a3 + 160);
              }

              *(a3 + 168) = v57;
              *(a3 + 176) = v58;
              v59 = RangeOfComposedCharactersAtIndex.location + v38 + v55;
              if (v47 >= v54)
              {
                v47 = v54;
              }

              v77.location = v59 + *(a3 + 152);
              v77.length = v47 + v53;
              CFStringGetCharacters(*(a3 + 128), v77, a3);
              v44 = a3 + 2 * RangeOfComposedCharactersAtIndex.location;
              v52 = *(a3 + 168);
            }

            v49 = v44 - 2 * v52;
          }

          v50 = *(v49 + 2 * v38);
        }

LABEL_58:
        v43[v38++] = v50;
        ++v42;
        --v40;
        ++v41;
      }

      while (RangeOfComposedCharactersAtIndex.length != v38);
    }

LABEL_35:
    v30 = *(a7 + 16);

    v30();
    return;
  }

  if (RangeOfComposedCharactersAtIndex.location < 0 || (v31 = *(a3 + 160), v31 <= RangeOfComposedCharactersAtIndex.location))
  {
    v33 = 0;
  }

  else
  {
    v32 = *(a3 + 136);
    if (v32)
    {
      v33 = *(v32 + 2 * *(a3 + 152) + 2 * RangeOfComposedCharactersAtIndex.location);
    }

    else
    {
      v64 = *(a3 + 144);
      if (v64)
      {
        v33 = *(v64 + *(a3 + 152) + RangeOfComposedCharactersAtIndex.location);
      }

      else
      {
        if (*(a3 + 176) <= RangeOfComposedCharactersAtIndex.location || (v67 = *(a3 + 168), v67 > RangeOfComposedCharactersAtIndex.location))
        {
          v68 = RangeOfComposedCharactersAtIndex.location - 4;
          if (RangeOfComposedCharactersAtIndex.location < 4uLL)
          {
            v68 = 0;
          }

          if (v68 + 64 < v31)
          {
            v31 = v68 + 64;
          }

          *(a3 + 168) = v68;
          *(a3 + 176) = v31;
          v79.length = v31 - v68;
          v79.location = *(a3 + 152) + v68;
          CFStringGetCharacters(*(a3 + 128), v79, a3);
          v67 = *(a3 + 168);
        }

        v33 = *(a3 + 2 * (RangeOfComposedCharactersAtIndex.location - v67));
      }
    }
  }

  sub_29922E56C(v10, v33, &v72);
  v60 = v72;
  if (v73 != v72)
  {
    v61 = 0;
    do
    {
      a6[RangeOfComposedCharactersAtIndex.location - v8] = v60[v61];
      (*(a7 + 16))(a7);
      ++v61;
      v60 = v72;
    }

    while (v61 < (v73 - v72) >> 1);
  }

LABEL_80:
  if (v60)
  {
    v73 = v60;
    operator delete(v60);
  }
}

void sub_2992EC1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992EC1E8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 56) + 8);
  if (*(a1 + 72) >= 1 && v3 != 0)
  {
    v7 = *(a1 + 64);
    v8 = -v7;
    v9 = v7 + 64;
    do
    {
      if (v7 >= 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = v7;
      }

      if (v7 < 0 || (v11 = *(*(a1 + 32) + 8), v12 = *(v11 + 200), v12 <= v7))
      {
        v14 = 0;
      }

      else
      {
        v13 = *(v11 + 176);
        if (v13)
        {
          v14 = *(v13 + 2 * *(v11 + 192) + 2 * v7);
        }

        else
        {
          v17 = *(v11 + 184);
          if (v17)
          {
            v14 = *(v17 + *(v11 + 192) + v7);
          }

          else
          {
            if (*(v11 + 216) <= v7 || (v18 = *(v11 + 208), v18 > v7))
            {
              v19 = v10 + v8;
              v20 = v9 - v10;
              v21 = v7 - v10;
              v22 = v21 + 64;
              if (v21 + 64 >= v12)
              {
                v22 = *(v11 + 200);
              }

              *(v11 + 208) = v21;
              *(v11 + 216) = v22;
              if (v12 >= v20)
              {
                v12 = v20;
              }

              v26.location = v21 + *(v11 + 192);
              v26.length = v12 + v19;
              CFStringGetCharacters(*(v11 + 168), v26, (v11 + 40));
              v18 = *(v11 + 208);
            }

            v14 = *(v11 - 2 * v18 + 2 * v7 + 40);
          }
        }
      }

      v25[0] = v14;
      CursorByAdvancingWithCharacters = LMLexiconGetCursorByAdvancingWithCharacters();
      v3 = CursorByAdvancingWithCharacters;
      ++v7;
      --v8;
      ++v9;
    }

    while (v7 < *(a1 + 72) + *(a1 + 64) && CursorByAdvancingWithCharacters != 0);
  }

  sub_2992EC3C4(v25, *v2, v3, *(a1 + 80), *(a1 + 88), *(a1 + 104));
  v5 = *(a1 + 96);
  v6 = *(a1 + 72);
  if (!v5)
  {
    v6 = 0;
  }

  v24[0] = *(a1 + 96);
  v24[1] = v6;
  v23[0] = v5;
  v23[1] = v6;
  sub_2992EBA20(v2, v24, v23, v25, *(*(a1 + 40) + 8) + 40);
}

void sub_2992EC3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2992EC6EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992EC3C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  *(a1 + 16) = 0;
  v8 = (a1 + 16);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a4[20] + 8 * a5);
  *(a1 + 48) = 0;
  *(a1 + 56) = a6;
  v9 = *(a2 + 8);
  if (*(v9 + 5) != 1 || (v10 = *(v9 + 40)) == 0)
  {
    v10 = *(v9 + 32);
  }

  v11 = *(v10 + 32);
  v12 = v11 - 1;
  if (a6)
  {
    v13 = 18;
    goto LABEL_14;
  }

  v15 = a4[26];
  v14 = a4[27];
  if (v14 == v15 || (v16 = a4[23], a4[24] == v16) || (v17 = (v14 - v15) >> 2, v17 != *v16))
  {
    v13 = 19;
LABEL_14:
    v20 = a4[v13];
    Length = CFStringGetLength(v20);
    v22 = *(a1 + 40);
    v23 = Length >= v22;
    v24 = Length - v22;
    if (v23)
    {
      v25.length = v24;
    }

    else
    {
      v25.length = 0;
    }

    v25.location = 0;
    CFStringCreateWithSubstring(*MEMORY[0x29EDB8ED8], v20, v25);
    operator new();
  }

  v18 = v17 - v16[a5];
  if (v18 >= v11)
  {
    v19 = 4 * (v18 - v12);
    v18 = v12;
  }

  else
  {
    if (v18 < v12)
    {
      sub_2992141C0((a1 + 16), &dword_2994144B8);
    }

    v19 = 0;
  }

  if (v18 >= 1)
  {
    sub_2992EDEE0(v8, *(a1 + 24), (v19 + a4[26]), (v19 + a4[26] + 4 * v18), v18);
  }

  LMLanguageModelJointProbability();
  *(a1 + 48) = -v26;
  return a1;
}

void sub_2992EC640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  v15 = *v13;
  if (*v13)
  {
    *(v12 + 24) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2992EC6EC(void *a1)
{
  sub_299321FA0(*(*(*a1 + 88) + 8));
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_2992EC734(void *a1, __int128 *a2)
{
  *a1 = &unk_2A1F6E780;
  v3 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_2991A110C(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
  }

  return a1;
}

void sub_2992EC7B0(std::exception *this)
{
  this->__vftable = &unk_2A1F6E780;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992EC824(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sub_2992EC840(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v7 = a2;
    v8 = a2 - 1;
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = v7 - v9;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:

                sub_2992ED698(v9, v9 + 1, v8);
                return;
              case 4:

                sub_2992ED8B4(v9, v9 + 1, v9 + 2, v8);
                return;
              case 5:

                sub_2992EDA4C(v9, v9 + 1, v9 + 2, v9 + 3, v8);
                return;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            v7 = a2;
            if (v10 == 2)
            {
              v51 = *v9;
              v52 = (*(**(a2 - 1) + 176))(*(a2 - 1));
              if (v52 < (*(*v51 + 176))(v51))
              {
                v53 = *v9;
                *v9 = *(a2 - 1);
                *(a2 - 1) = v53;
              }

              return;
            }
          }

          if (v10 <= 23)
          {
            v54 = v9 + 1;
            v55 = v9 == v7 || v54 == v7;
            v56 = v55;
            if (a4)
            {
              if ((v56 & 1) == 0)
              {
                v57 = 0;
                v58 = v9;
                do
                {
                  v60 = *v58;
                  v59 = v58[1];
                  v58 = v54;
                  v61 = (*(*v59 + 176))(v59);
                  if (v61 < (*(*v60 + 176))(v60))
                  {
                    v62 = *v58;
                    v63 = v57;
                    while (1)
                    {
                      *(v9 + v63 + 8) = *(v9 + v63);
                      if (!v63)
                      {
                        break;
                      }

                      v64 = *(v9 + v63 - 8);
                      v65 = (*(*v62 + 176))(v62);
                      v63 -= 8;
                      if (v65 >= (*(*v64 + 176))(v64))
                      {
                        v66 = (v9 + v63 + 8);
                        goto LABEL_85;
                      }
                    }

                    v66 = v9;
LABEL_85:
                    *v66 = v62;
                  }

                  v54 = v58 + 1;
                  v57 += 8;
                }

                while (v58 + 1 != a2);
              }
            }

            else if ((v56 & 1) == 0)
            {
              do
              {
                v105 = *a1;
                v104 = a1[1];
                a1 = v54;
                v106 = (*(*v104 + 176))(v104);
                if (v106 < (*(*v105 + 176))(v105))
                {
                  v107 = *a1;
                  v108 = a1;
                  do
                  {
                    v109 = v108;
                    v110 = *--v108;
                    *v109 = v110;
                    v111 = *(v109 - 2);
                    v112 = (*(*v107 + 176))(v107);
                  }

                  while (v112 < (*(*v111 + 176))(v111));
                  *v108 = v107;
                }

                v54 = a1 + 1;
              }

              while (a1 + 1 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v9 != v7)
            {
              v67 = (v10 - 2) >> 1;
              v113 = v67;
              do
              {
                v68 = v67;
                if (v113 >= v67)
                {
                  v69 = (2 * v67) | 1;
                  v70 = &a1[v69];
                  if (2 * v67 + 2 < v10)
                  {
                    v71 = v70[1];
                    v72 = (*(**v70 + 176))();
                    if (v72 < (*(*v71 + 176))(v71))
                    {
                      ++v70;
                      v69 = 2 * v68 + 2;
                    }
                  }

                  v73 = &a1[v68];
                  v74 = *v73;
                  v75 = (*(**v70 + 176))();
                  if (v75 >= (*(*v74 + 176))(v74))
                  {
                    v76 = *v73;
                    do
                    {
                      v77 = v70;
                      *v73 = *v70;
                      if (v113 < v69)
                      {
                        break;
                      }

                      v78 = 2 * v69;
                      v69 = (2 * v69) | 1;
                      v70 = &a1[v69];
                      v79 = v78 + 2;
                      if (v78 + 2 < v10)
                      {
                        v80 = v70[1];
                        v81 = (*(**v70 + 176))();
                        if (v81 < (*(*v80 + 176))(v80))
                        {
                          ++v70;
                          v69 = v79;
                        }
                      }

                      v82 = (*(**v70 + 176))();
                      v73 = v77;
                    }

                    while (v82 >= (*(*v76 + 176))(v76));
                    *v77 = v76;
                  }
                }

                v67 = v68 - 1;
              }

              while (v68);
              do
              {
                v83 = 0;
                v84 = *a1;
                v85 = a1;
                do
                {
                  v86 = v85;
                  v87 = &v85[v83];
                  v85 = v87 + 1;
                  v88 = 2 * v83;
                  v83 = (2 * v83) | 1;
                  v89 = v88 + 2;
                  if (v88 + 2 < v10)
                  {
                    v91 = v87[2];
                    v90 = v87 + 2;
                    v92 = (*(**(v90 - 1) + 176))(*(v90 - 1));
                    if (v92 < (*(*v91 + 176))(v91))
                    {
                      v85 = v90;
                      v83 = v89;
                    }
                  }

                  *v86 = *v85;
                }

                while (v83 <= ((v10 - 2) >> 1));
                v93 = a2 - 1;
                v55 = v85 == --a2;
                if (v55)
                {
                  *v85 = v84;
                }

                else
                {
                  *v85 = *v93;
                  *v93 = v84;
                  v94 = (v85 - a1 + 8) >> 3;
                  v95 = v94 < 2;
                  v96 = v94 - 2;
                  if (!v95)
                  {
                    v97 = v96 >> 1;
                    v98 = &a1[v96 >> 1];
                    v99 = *v85;
                    v100 = (*(**v98 + 176))();
                    if (v100 < (*(*v99 + 176))(v99))
                    {
                      v101 = *v85;
                      do
                      {
                        v102 = v98;
                        *v85 = *v98;
                        if (!v97)
                        {
                          break;
                        }

                        v97 = (v97 - 1) >> 1;
                        v98 = &a1[v97];
                        v103 = (*(**v98 + 176))();
                        v85 = v102;
                      }

                      while (v103 < (*(*v101 + 176))(v101));
                      *v102 = v101;
                    }
                  }
                }

                v95 = v10-- <= 2;
              }

              while (!v95);
            }

            return;
          }

          v11 = v10 >> 1;
          v12 = &v9[v10 >> 1];
          if (v10 < 0x81)
          {
            sub_2992ED698(&a1[v10 >> 1], a1, v8);
          }

          else
          {
            sub_2992ED698(a1, &a1[v10 >> 1], v8);
            sub_2992ED698(a1 + 1, v12 - 1, a2 - 2);
            sub_2992ED698(a1 + 2, &a1[v11 + 1], a2 - 3);
            sub_2992ED698(v12 - 1, &a1[v10 >> 1], &a1[v11 + 1]);
            v13 = *a1;
            *a1 = *v12;
            *v12 = v13;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v14 = *a1;
          v15 = (*(**(a1 - 1) + 176))(*(a1 - 1));
          if (v15 < (*(*v14 + 176))(v14))
          {
            break;
          }

          v34 = *a1;
          v35 = *v8;
          v36 = (*(**a1 + 176))(*a1);
          if (v36 >= (*(*v35 + 176))(v35))
          {
            v39 = a1 + 1;
            do
            {
              v9 = v39;
              if (v39 >= v7)
              {
                break;
              }

              ++v39;
              v40 = *v9;
              v41 = (*(*v34 + 176))(v34);
            }

            while (v41 >= (*(*v40 + 176))(v40));
          }

          else
          {
            v9 = a1;
            do
            {
              v37 = v9[1];
              ++v9;
              v38 = (*(*v34 + 176))(v34);
            }

            while (v38 >= (*(*v37 + 176))(v37));
          }

          v42 = v7;
          if (v9 < v7)
          {
            v42 = v7;
            do
            {
              v43 = *--v42;
              v44 = (*(*v34 + 176))(v34);
            }

            while (v44 < (*(*v43 + 176))(v43));
          }

          while (v9 < v42)
          {
            v45 = *v9;
            *v9 = *v42;
            *v42 = v45;
            do
            {
              v46 = v9[1];
              ++v9;
              v47 = (*(*v34 + 176))(v34);
            }

            while (v47 >= (*(*v46 + 176))(v46));
            do
            {
              v48 = *--v42;
              v49 = (*(*v34 + 176))(v34);
            }

            while (v49 < (*(*v48 + 176))(v48));
          }

          v50 = v9 - 1;
          if (v9 - 1 != a1)
          {
            *a1 = *v50;
          }

          a4 = 0;
          *v50 = v34;
        }

        v16 = 0;
        v17 = *a1;
        do
        {
          v18 = (*(*a1[v16 + 1] + 176))(a1[v16 + 1]);
          ++v16;
        }

        while (v18 < (*(*v17 + 176))(v17));
        v19 = &a1[v16];
        if (v16 == 1)
        {
          v7 = a2;
          do
          {
            if (v19 >= v7)
            {
              break;
            }

            v22 = *--v7;
            v23 = (*(*v22 + 176))(v22);
          }

          while (v23 >= (*(*v17 + 176))(v17));
        }

        else
        {
          do
          {
            v20 = *--v7;
            v21 = (*(*v20 + 176))(v20);
          }

          while (v21 >= (*(*v17 + 176))(v17));
        }

        if (v19 >= v7)
        {
          v31 = v19 - 1;
        }

        else
        {
          v24 = &a1[v16];
          v25 = v7;
          do
          {
            v26 = *v24;
            *v24 = *v25;
            *v25 = v26;
            do
            {
              v27 = v24[1];
              ++v24;
              v28 = (*(*v27 + 176))(v27);
            }

            while (v28 < (*(*v17 + 176))(v17));
            do
            {
              v29 = *--v25;
              v30 = (*(*v29 + 176))(v29);
            }

            while (v30 >= (*(*v17 + 176))(v17));
          }

          while (v24 < v25);
          v31 = v24 - 1;
        }

        if (v31 != a1)
        {
          *a1 = *v31;
        }

        *v31 = v17;
        v32 = v19 >= v7;
        v7 = a2;
        if (v32)
        {
          break;
        }

LABEL_38:
        sub_2992EC840(a1, v31, a3, a4 & 1);
        a4 = 0;
        v9 = v31 + 1;
      }

      v33 = sub_2992EDC58(a1, v31);
      v9 = v31 + 1;
      if (sub_2992EDC58(v31 + 1, a2))
      {
        break;
      }

      if (!v33)
      {
        goto LABEL_38;
      }
    }

    a2 = v31;
    if (!v33)
    {
      continue;
    }

    break;
  }
}

void sub_2992ED698(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a1;
  v7 = (*(**a2 + 176))();
  v8 = (*(*v6 + 176))(v6);
  v9 = *a2;
  v10 = (*(**a3 + 176))();
  (*(*v9 + 176))(v9);
  if (v7 >= v8)
  {
    if (v10 < v11)
    {
      v13 = *a2;
      *a2 = *a3;
      *a3 = v13;
      v14 = *a1;
      v15 = (*(**a2 + 176))();
      if (v15 < (*(*v14 + 176))(v14))
      {
        v16 = *a1;
        *a1 = *a2;
        *a2 = v16;
      }
    }
  }

  else
  {
    v12 = *a1;
    if (v10 >= v11)
    {
      *a1 = *a2;
      *a2 = v12;
      v17 = (*(**a3 + 176))();
      if (v17 < (*(*v12 + 176))(v12))
      {
        v18 = *a2;
        *a2 = *a3;
        *a3 = v18;
      }
    }

    else
    {
      *a1 = *a3;
      *a3 = v12;
    }
  }
}

void sub_2992ED8B4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  sub_2992ED698(a1, a2, a3);
  v8 = *a3;
  v9 = (*(**a4 + 176))();
  if (v9 < (*(*v8 + 176))(v8))
  {
    v10 = *a3;
    *a3 = *a4;
    *a4 = v10;
    v11 = *a2;
    v12 = (*(**a3 + 176))();
    if (v12 < (*(*v11 + 176))(v11))
    {
      v13 = *a2;
      *a2 = *a3;
      *a3 = v13;
      v14 = *a1;
      v15 = (*(**a2 + 176))();
      if (v15 < (*(*v14 + 176))(v14))
      {
        v16 = *a1;
        *a1 = *a2;
        *a2 = v16;
      }
    }
  }
}

void sub_2992EDA4C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  sub_2992ED8B4(a1, a2, a3, a4);
  v10 = *a4;
  v11 = (*(**a5 + 176))();
  if (v11 < (*(*v10 + 176))(v10))
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    v13 = *a3;
    v14 = (*(**a4 + 176))();
    if (v14 < (*(*v13 + 176))(v13))
    {
      v15 = *a3;
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      v17 = (*(**a3 + 176))();
      if (v17 < (*(*v16 + 176))(v16))
      {
        v18 = *a2;
        *a2 = *a3;
        *a3 = v18;
        v19 = *a1;
        v20 = (*(**a2 + 176))();
        if (v20 < (*(*v19 + 176))(v19))
        {
          v21 = *a1;
          *a1 = *a2;
          *a2 = v21;
        }
      }
    }
  }
}

BOOL sub_2992EDC58(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *a1;
        v6 = (*(**(a2 - 1) + 176))(*(a2 - 1));
        if (v6 < (*(*v5 + 176))(v5))
        {
          v7 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v7;
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
      sub_2992ED698(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      sub_2992ED8B4(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      sub_2992EDA4C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_11:
  v8 = a1 + 2;
  sub_2992ED698(a1, a1 + 1, a1 + 2);
  v9 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *v8;
    v13 = (*(**v9 + 176))();
    if (v13 < (*(*v12 + 176))(v12))
    {
      v14 = *v9;
      v15 = v10;
      while (1)
      {
        *(a1 + v15 + 24) = *(a1 + v15 + 16);
        if (v15 == -16)
        {
          break;
        }

        v16 = *(a1 + v15 + 8);
        v17 = (*(*v14 + 176))(v14);
        v15 -= 8;
        if (v17 >= (*(*v16 + 176))(v16))
        {
          v18 = (a1 + v15 + 24);
          goto LABEL_19;
        }
      }

      v18 = a1;
LABEL_19:
      *v18 = v14;
      if (++v11 == 8)
      {
        return v9 + 1 == a2;
      }
    }

    v8 = v9;
    v10 += 8;
    if (++v9 == a2)
    {
      return 1;
    }
  }
}

char *sub_2992EDEE0(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      sub_299212A8C();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      sub_2992F86B0(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7;
      v7 += 4;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void **sub_2992EE0E0(void **result, char *__src, char *a3, unint64_t a4)
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

    if (!(a4 >> 62))
    {
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

      sub_2992F8674(v6, v10);
    }

    sub_299212A8C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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

void sub_2992EE20C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      sub_2991A893C(v2);
    }

    JUMPOUT(0x29C29BFB0);
  }
}

void sub_2992EE264(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_2992EE2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992EE2F8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2992EE2F8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2992BBCD8(v2);
    MEMORY[0x29C29BFB0](v3, 0x1060C40285832E9);
  }

  return a1;
}

void sub_2992EE344(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992EE37C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2992BBCD8(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2992EE3C0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E7F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_2992EE400(void *a1, unsigned int **a2)
{
  v4 = a1[7];
  v5 = *(a1[8] + 8);
  v6 = sub_2993B2928(*(v4 + 32), a2[1]);
  v8 = v7;
  v9 = (*(**(v4 + 32) + 24))(*(v4 + 32), a2[1], 1);
  v11 = v10;
  *(*(a1[4] + 8) + 24) = &v8[-v5];
  *(*(a1[5] + 8) + 24) = &v6[v5];
  v12 = *(*(a1[6] + 8) + 24);
  if (v12 == 0.0)
  {
    v13 = v4;
    v15 = a1[9];
    v14 = a1[10];
    v16 = *v14;
    v17 = v14[1];
    LODWORD(v70) = 0;
    sub_299321FD8(*(*(*v15 + 88) + 8), v16, v17, &v70);
    v74 = 0;
    v75 = 0;
    __p = 0;
    sub_29920DED0(&__p, *(v15 + 16), *(v15 + 24), (*(v15 + 24) - *(v15 + 16)) >> 2);
    sub_2992141C0(&__p, &v70);
    sub_2992141C0(&__p, dword_2994144BC);
    LMLanguageModelJointProbability();
    v19 = v18;
    if (__p)
    {
      v74 = __p;
      operator delete(__p);
    }

    *(*(a1[6] + 8) + 24) = -v19;
    v12 = *(*(a1[6] + 8) + 24);
    v4 = v13;
  }

  v20 = a1[9];
  v21 = *(v20 + 16);
  v22 = *(v20 + 24);
  if (v21 == v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(v22 - 4);
  }

  v66 = *(v4 + 40);
  v26 = v22 - v21 == 4 && v23 == 1 || v23 == 502;
  if (((*a2)[1] & 0x800) == 0 || v26)
  {
    v65 = v4;
    __p = 0;
    v74 = 0;
    v75 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v27 = *(*(*v20 + 88) + 8);
    v64 = v26;
    if (v11)
    {
      v28 = 0;
      v29 = 0;
      do
      {
        v67 = (*(v9 + 2 * v28) - 48);
        v77[0] = 0;
        sub_299321FD8(v27, &v6[v29], v67, v77);
        sub_2992141C0(&v70, v77);
        v30 = v67;
        sub_299266D00(&__p, &v67);
        v29 += v30;
        ++v28;
      }

      while (v28 < v11);
    }

    else
    {
      v77[0] = 0;
      v67 = v8;
      if (*(v20 + 8))
      {
        v31 = *(v20 + 40);
        if (v8 > v31)
        {
          while (1)
          {
            v32 = *(*(*v20 + 104) + 8);
            v33 = v6[v31];
            v36 = *(v32 + 8);
            v34 = v32 + 8;
            v35 = v36;
            if (v36)
            {
              v37 = v34;
              do
              {
                v38 = *(v35 + 26);
                v39 = v38 >= v33;
                v40 = v38 < v33;
                if (v39)
                {
                  v37 = v35;
                }

                v35 = *(v35 + 8 * v40);
              }

              while (v35);
              if (v37 != v34 && *(v37 + 26) <= v33)
              {
                LOWORD(v33) = *(v37 + 28);
              }
            }

            v76 = v33;
            CursorByAdvancingWithCharacters = LMLexiconGetCursorByAdvancingWithCharacters();
            if (!CursorByAdvancingWithCharacters)
            {
              break;
            }

            if (++v31 == v8)
            {
              goto LABEL_38;
            }
          }

          if (v31 != v8)
          {
            goto LABEL_43;
          }

LABEL_38:
          if (LMLexiconCursorHasEntries())
          {
            TokenID = 0;
            if (CursorByAdvancingWithCharacters && *v27)
            {
              TokenID = LMLexiconCursorFirstTokenID();
            }

            v77[0] = TokenID;
          }
        }
      }

LABEL_43:
      sub_2992141C0(&v70, v77);
      sub_299266D00(&__p, &v67);
    }

    v67 = 0;
    v68 = 0;
    v69 = 0;
    v43 = *(v20 + 16);
    v44 = *(v20 + 24);
    if (v43 == v44)
    {
      v45 = 0;
    }

    else
    {
      v45 = *(v44 - 1);
    }

    v48 = v44 - v43 == 4 && v45 == 1 || v45 == 502;
    if ((v20 + 16) == &v67)
    {
      v49 = 0;
    }

    else
    {
      sub_2992EE0E0(&v67, v43, v44, (v44 - v43) >> 2);
      v49 = v68;
    }

    sub_2992EDEE0(&v67, v49, v70, v71, (v71 - v70) >> 2);
    LMLanguageModelJointProbability();
    v51 = -v50;
    if (v48)
    {
      LMLanguageModelJointProbability();
      v51 = v52 * -0.5 + v51 * 0.5;
    }

    LOBYTE(v77[0]) = 0;
    v53 = LMLanguageModelTokenSequenceIsBlocklisted() ^ 1;
    v54 = *(v20 + 56);
    if ((v66 & 2) != 0 || (v53 & 1) == 0)
    {
      if ((v53 & v54 & 1) == 0)
      {
LABEL_80:
        if (v67)
        {
          v68 = v67;
          operator delete(v67);
        }

        if (v70)
        {
          v71 = v70;
          operator delete(v70);
        }

        if (__p)
        {
          v74 = __p;
          operator delete(__p);
        }

        if (v53)
        {
          v59 = (2 * *(*(a1[4] + 8) + 24));
          if (v59)
          {
            v60 = 0;
            v61 = *(*(a1[5] + 8) + 24);
            do
            {
              v62 = *v61++;
              v60 = (1025 * (v60 + v62)) ^ ((1025 * (v60 + v62)) >> 6);
              --v59;
            }

            while (v59);
          }

          v63 = sub_2992BB92C(a1[8], *(*(*v65 + 104) + 8));
          sub_2992EE264(&__p, v63);
        }

        return;
      }

      goto LABEL_77;
    }

    if (v54)
    {
      if (v64)
      {
LABEL_77:
        log2(*(v20 + 40));
        goto LABEL_78;
      }

      v56 = (v66 & 8) == 0;
      v55 = 0.0;
      v57 = -2.0;
    }

    else
    {
      v55 = 0.0;
      if (v64 || (v66 & 8) == 0 && *(v20 + 40) > 2uLL)
      {
LABEL_78:
        v53 = 1;
        goto LABEL_80;
      }

      if ((v66 & 8) != 0)
      {
        goto LABEL_74;
      }

      v56 = *(v20 + 24) - *(v20 + 16) == 4;
      v55 = -0.15;
      v57 = -0.5;
    }

    if (v56)
    {
      v55 = v57;
    }

LABEL_74:
    if (v51 + v55 >= v12)
    {
      v53 = 0;
      goto LABEL_80;
    }

    v58 = v51 - *(v20 + 48);
    v53 = v58 < 5.0;
    if (v58 >= 5.0 || (v54 & 1) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_77;
  }
}

void sub_2992EEB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2992EEBC0(int a1, __CFDictionary *a2, void *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v4 = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F72C30, 0);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  if (!sub_299377154(v4))
  {
    return 0;
  }

  v6 = (*(*v5 + 440))(v5);
  valuePtr[1] = v6;
  v5 = v6 != 0;
  if (v6)
  {
    v7 = v6;
    valuePtr[0] = CFStringGetLength(v6);
    v8 = CFNumberCreate(0, kCFNumberCFIndexType, valuePtr);
    CFDictionaryAddValue(a2, @"acceptedSyllableLength", v8);
    if (v8)
    {
      CFRelease(v8);
    }

    CFRelease(v7);
  }

  return v5;
}

void sub_2992EECF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  sub_2992292D8(va, 0);
  sub_299219AB4(va1, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992EED3C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();

    return MEMORY[0x2A1C70FE8](v1, sel_isMemberOfClass_, v2, v3);
  }

  return result;
}

uint64_t sub_2992EED88(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], a2, a3, a4);

  return MEMORY[0x2A1C70FE8](v5, sel_removeItemAtURL_error_, a1, 0);
}

uint64_t sub_2992EEDCC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x29EDB8E78], a2, a3, a4);
  v7 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x29EDBA0F8], v6, a1, 4);

  return MEMORY[0x2A1C70FE8](v5, sel_BOOLForKey_, v7, v8);
}

void *sub_2992EEE28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x29EDB8E78], a2, a3, a4);
  v7 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x29EDBA0F8], v6, a1, 1);
  result = objc_msgSend_stringForKey_(v5, v8, v7, v9);
  if (result)
  {

    return objc_msgSend_UTF8String(result, v11, v12, v13);
  }

  return result;
}

uint64_t sub_2992EEE98()
{
  if (qword_2A1460CA0 != -1)
  {
    dispatch_once(&qword_2A1460CA0, &unk_2A1F6E850);
  }

  return qword_2A1460CA8;
}

void sub_2992EEEE0()
{
  v0 = sub_299276360("/System/Library/PrivateFrameworks/ProofReader.framework");
  v4 = objc_msgSend_stringByStandardizingPath(v0, v1, v2, v3);
  qword_2A1460CA8 = objc_msgSend_bundleWithPath_(MEMORY[0x29EDB9F48], v5, v4, v6);

  CFRelease(v0);
}

__CFString *sub_2992EEF40(CFStringRef theString, int a2, char a3)
{
  if (a3)
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
    if (sub_299277300(a2) == 2 || sub_299277300(a2) == 5)
    {
      v6 = @"Traditional - Simplified";
    }

    else
    {
      v6 = @"Simplified - Traditional";
    }

    CFStringTransform(MutableCopy, 0, v6, 0);
    return MutableCopy;
  }

  else
  {

    return CFStringCreateCopy(0, theString);
  }
}

uint64_t sub_2992EEFDC(int a1)
{
  if (qword_2A1460CC8 != -1)
  {
    dispatch_once(&qword_2A1460CC8, &unk_2A1F6E870);
  }

  switch(a1)
  {
    case 5:
      return qword_2A1460CC0;
    case 2:
      return qword_2A1460CB8;
    case 1:
      return qword_2A1460CB0;
  }

  return 0;
}

void *sub_2992EF064()
{
  qword_2A1460CB0 = &unk_2A1F83760;
  qword_2A1460CB8 = &unk_2A1F83778;
  result = &unk_2A1F83790;
  qword_2A1460CC0 = result;
  return result;
}

unint64_t sub_2992EF0B8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (qword_2A1460CD8 != -1)
  {
    dispatch_once(&qword_2A1460CD8, &unk_2A1F6E890);
  }

  result = objc_msgSend_length(a1, a2, a3, a4);
  if (result)
  {
    v9 = result;
    if (objc_msgSend__fastCharacterContents(a1, v6, v7, v8))
    {
      return uset_containsAllCodePoints() != 0;
    }

    else
    {
      v11 = 0;
      while (1)
      {
        if (v9 >= 0x100)
        {
          v12 = 256;
          objc_msgSend_getCharacters_range_(a1, v10, v13, v11, 256);
        }

        else
        {
          v12 = v9;
          objc_msgSend_getCharacters_range_(a1, v10, v13, v11, v9);
        }

        result = uset_containsAllCodePoints();
        if (!result)
        {
          break;
        }

        v11 += v12;
        v9 -= v12;
        if (!v9)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2992EF1D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = sub_2992EF1F4(a1, a2, a3, a4);
  qword_2A1460CD0 = result;
  return result;
}

uint64_t sub_2992EF1F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x29EDCA608];
  HIDWORD(v11) = 0;
  v4 = objc_msgSend_length(@"[[:Hani:]]", a2, a3, a4);
  if (objc_msgSend__fastCharacterContents(@"[[:Hani:]]", v5, v6, v7))
  {
    result = uset_openPattern();
  }

  else
  {
    MEMORY[0x2A1C7C4A8](0);
    objc_msgSend_getCharacters_range_(@"[[:Hani:]]", v10, &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), 0, v4);
    result = uset_openPattern();
  }

  if (SHIDWORD(v11) >= 1)
  {
    if (result)
    {
      uset_close();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2992EF2F4(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_29EF10C20 + a1);
  }
}

void *sub_2992EF314(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  sub_2992F2784((a1 + 1));
  a1[55] = sub_299237120();
  sub_299255778(0);
  a1[56] = &qword_2A1461DC0;
  a1[57] = a3;
  a1[2] = a2;
  return a1;
}

uint64_t sub_2992EF38C(uint64_t result, uint64_t a2, int a3, unsigned __int8 a4)
{
  v4 = *(a2 + 64);
  if (v4)
  {
    v5 = *(v4 + 8) >> 1;
    v6 = *(a2 + 88) >> 1;
  }

  else
  {
    v6 = *(a2 + 88) >> 1;
    LOWORD(v5) = v6;
  }

  *(result + 26) = v5;
  *(result + 20) = v6;
  v7 = *(a2 + 104);
  if ((v7 & 0x10) != 0)
  {
    v8 = 8;
  }

  else if ((v7 & 0x20) != 0)
  {
    v8 = 10;
  }

  else if (*(a2 + 109) - 7 > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_299414618[(*(a2 + 109) - 7)];
  }

  v9 = *(a2 + 80);
  *(result + 8) = *(a2 + 109);
  *(result + 12) = v9;
  v10 = *(a2 + 84);
  *result = v8;
  *(result + 4) = v10;
  HIDWORD(v11) = *(a2 + 92);
  LODWORD(v11) = HIDWORD(v11);
  *(result + 30) = v11 >> 16;
  *(result + 36) = *(a2 + 108);
  if (((a3 == 1) & a4) != 0)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 | (8 * (*(a2 + 107) != 0)) | *(result + 37) & 0xF0 | (2 * (*(a2 + 106) != 0));
  if (!*(a2 + 106))
  {
    ++v13;
  }

  *(result + 37) = v13;
  *(result + 24) = a3;
  if (v4)
  {
    LODWORD(v4) = *(v4 + 14);
  }

  *(result + 16) = v4;
  return result;
}

void sub_2992EF484(uint64_t *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, int a7)
{
  v41 = *MEMORY[0x29EDCA608];
  v11 = *a1[57];
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  memset(__p, 0, sizeof(__p));
  if (a2)
  {
    v34 = 0;
    v12 = 0;
    v13 = 0;
    v14 = (v11 >> 5) & 1;
    v15 = a2;
    do
    {
      v16 = *(v15 + 109);
      if (v16 != 2)
      {
        if (a5 < 1)
        {
          v13 += *(v15 + 84);
          v17 = *(v15 + 86);
          if (*v15)
          {
            v13 += (*(**a1 + 64))(*a1, *(*v15 + 92), *(v15 + 94));
            v16 = *(v15 + 109);
          }

          v12 += v17;
          if (v16 != 3)
          {
            v18 = sub_2993E4BB0(*a1, v15, v14, word_2A1460D10, 0x80u);
            v19 = v18;
            if (v18)
            {
              v20 = v18;
              sub_299217A18(v37, word_2A1460D10, v18);
              v21 = *(v15 + 64);
              if (v21)
              {
                sub_299217A18(v36, *v21, *(v21 + 8) >> 1);
              }

              v39 = 0;
              memset(v38, 0, sizeof(v38));
              sub_2992EF38C(v38, v15, v19, a6);
              if (*(a1[56] + 50) == *(v15 + 94))
              {
                if ((atomic_load_explicit(&qword_2A1460CE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460CE0))
                {
                  v40[5] = *&off_29EF10CA8;
                  v40[6] = xmmword_29EF10CB8;
                  v40[7] = *&off_29EF10CC8;
                  v40[8] = xmmword_29EF10CD8;
                  v40[1] = unk_29EF10C68;
                  v40[2] = xmmword_29EF10C78;
                  v40[3] = *&off_29EF10C88;
                  v40[4] = xmmword_29EF10C98;
                  v40[0] = xmmword_29EF10C58;
                  sub_299274E3C(&qword_2A1460CE8, v40, 9);
                  __cxa_atexit(sub_29926ECD0, &qword_2A1460CE8, &dword_29918C000);
                  __cxa_guard_release(&qword_2A1460CE0);
                }

                v22 = sub_29927512C(&qword_2A1460CE8, word_2A1460D10, v20);
                if (qword_2A1460CF0)
                {
                  v23 = vcnt_s8(qword_2A1460CF0);
                  v23.i16[0] = vaddlv_u8(v23);
                  if (v23.u32[0] > 1uLL)
                  {
                    v24 = v22;
                    if (v22 >= qword_2A1460CF0)
                    {
                      v24 = v22 % qword_2A1460CF0;
                    }
                  }

                  else
                  {
                    v24 = (qword_2A1460CF0 - 1) & v22;
                  }

                  v25 = *(qword_2A1460CE8 + 8 * v24);
                  if (v25)
                  {
                    for (i = *v25; i; i = *i)
                    {
                      v27 = i[1];
                      if (v22 == v27)
                      {
                        if (i[3] == v20)
                        {
                          v28 = i[2];
                          v29 = v20;
                          v30 = word_2A1460D10;
                          while (*v30 == *v28)
                          {
                            ++v28;
                            v30 = (v30 + 2);
                            if (!--v29)
                            {
                              goto LABEL_34;
                            }
                          }
                        }
                      }

                      else
                      {
                        if (v23.u32[0] > 1uLL)
                        {
                          if (v27 >= qword_2A1460CF0)
                          {
                            v27 %= qword_2A1460CF0;
                          }
                        }

                        else
                        {
                          v27 &= qword_2A1460CF0 - 1;
                        }

                        if (v27 != v24)
                        {
                          break;
                        }
                      }
                    }
                  }
                }

                LODWORD(v38[0]) = 5;
              }

LABEL_34:
              sub_2992DD840(__p, v38);
            }

            v31 = v34 || *(v15 + 106) != 0;
            v34 = v31;
          }
        }

        else
        {
          --a5;
        }
      }

      v15 = *(v15 + 8);
    }

    while (v15);
  }

  if (a7)
  {
    sub_2993E4F9C(a2, 1, a5);
  }

  sub_2992FE060();
  operator new();
}

void sub_2992EF94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  __cxa_guard_abort(&qword_2A1460CE0);
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

  _Unwind_Resume(a1);
}

uint64_t sub_2992EF9F4(uint64_t a1, void *a2, char **a3, int a4, int *a5, unsigned int *a6)
{
  *(&v108 + 1) = *MEMORY[0x29EDCA608];
  (*(**a3 + 544))(*a3);
  if (!v12)
  {
    return 0;
  }

  v99 = a4;
  v100 = (*(**a3 + 408))(*a3);
  v13 = *a3;
  if (a6)
  {
    (*(*v13 + 480))(*a3, *a6);
    (*(**a3 + 488))();
    v14 = *a6;
    v15 = v100;
  }

  else
  {
    sub_299255778(0);
    v16 = (*(*v13 + 304))(v13);
    v17 = *v16;
    if (0xCCCCCCCCCCCCCCCDLL * ((v16[1] - *v16) >> 3) < 2 || *(v17 + 38) == 1 || *(v17 + 78) == 1 || ((v18 = *(v17 + 30), v19 = *(v17 + 70), v96 = (*(*v13 + 544))(v13), v20 = *(*v16 + 24), sub_299255778(0), xmmword_2A1461E10 <= v18) ? (v21 = WORD1(xmmword_2A1461E10) >= v18) : (v21 = 0), !v21 && (WORD5(xmmword_2A1461E10) >= v18 ? (v22 = WORD4(xmmword_2A1461E10) > v18) : (v22 = 1), v22 ? (v23 = HIWORD(xmmword_2A1461E10) == v18) : (v23 = 1), !v23 ? (v24 = WORD6(xmmword_2A1461E10) == v18) : (v24 = 1), !v24)) || ((sub_299255778(0), xmmword_2A1461E10 <= v19) ? (v25 = WORD1(xmmword_2A1461E10) >= v19) : (v25 = 0), v25 || (WORD4(xmmword_2A1461E10) <= v19 ? (v26 = WORD5(xmmword_2A1461E10) >= v19) : (v26 = 0), v26 || (HIWORD(xmmword_2A1461E10) != v19 ? (v27 = WORD6(xmmword_2A1461E10) == v19) : (v27 = 1), v27 || v18 == HIWORD(xmmword_2A1461E10) && (v19 != qword_2A1461E20 ? (v95 = v19 == WORD1(qword_2A1461E20)) : (v95 = 1), v95)))))
    {
      v28 = 0;
    }

    else
    {
      v28 = 2000;
      if (v20 == 2)
      {
        if (*v96 == 811151463)
        {
          v28 = 0;
        }

        else
        {
          v28 = 2000;
        }
      }
    }

    v29 = (*(*v13 + 544))(v13);
    v30 = *v16;
    v98 = a1;
    if (v16[1] != *v16)
    {
      v31 = v29;
      v32 = 0;
      v33 = 0;
      v34 = 24;
      do
      {
        v35 = sub_299281F40(v31, *(v30 + v34), 0, 0);
        if (v33 == v35)
        {
          v36 = 15000;
        }

        else
        {
          v36 = 25000;
        }

        if (v35)
        {
          v37 = v33 == 0;
        }

        else
        {
          v37 = 1;
        }

        if (v37)
        {
          v36 = 0;
        }

        v28 += v36;
        v30 = *v16;
        v31 += 2 * *(*v16 + v34);
        ++v32;
        v34 += 40;
        v33 = v35;
      }

      while (v32 < 0xCCCCCCCCCCCCCCCDLL * ((v16[1] - *v16) >> 3));
    }

    v38 = *a3;
    v39 = (*(**a3 + 112))(*a3);
    (*(*v38 + 480))(v38, (v39 + v28));
    v40 = *a3;
    v41 = (*(**a3 + 384))(*a3);
    (*(*v40 + 488))(v40, (v41 + v28));
    v42 = *a3;
    v15 = v100;
    a1 = v98;
    if (v100 != 1)
    {
      *(v42 + 55) += v28;
    }

    v14 = (*(*v42 + 112))(v42);
  }

  v43 = **a3;
  if (v15 != 1)
  {
    v61 = (*(v43 + 544))();
    if (a4)
    {
      v63 = v62;
      if (v62)
      {
        v64 = v61;
        if (*v61 != 32)
        {
          v66 = MEMORY[0x29EDCA600];
          while (1)
          {
            v68 = *v64++;
            v67 = v68;
            if (!(v68 <= 0x7FuLL ? *(v66 + 4 * v67 + 60) & 0x40000 : __maskrune(v67, 0x40000uLL)))
            {
              break;
            }

            if (!--v63)
            {
              v70 = (*(**a3 + 544))(*a3);
              v72 = v71;
              v105 = 0uLL;
              *&v106 = 0;
              (*(**a3 + 544))();
              sub_299218E20(&v105, v73 + 1);
              LOWORD(v101) = 32;
              sub_29922E664(&v105, &v101);
              sub_29925493C(&v101, v70, &v70[v72], &v105);
              v74 = (*(**a3 + 304))(*a3);
              v101 = 0;
              v102 = 0;
              v103 = 0;
              sub_29921E8E0(&v101, *v74, *(v74 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v74 + 8) - *v74) >> 3));
              if (v101 != v102)
              {
                ++v101[12];
                (*(**a3 + 200))();
                sub_2992FE060();
                (*(**a3 + 112))();
                (*(**a3 + 376))(*a3);
                (*(**a3 + 408))(*a3);
                operator new();
              }

              v60 = 0;
              if (v101)
              {
                v102 = v101;
                operator delete(v101);
              }

              v75 = v105;
              if (v105)
              {
                *(&v105 + 1) = v105;
                goto LABEL_110;
              }

              goto LABEL_111;
            }
          }
        }
      }
    }

    (*(**a3 + 400))(*a3, 0.0);
    v65 = *a3;
    *(v65 + 23) = 0;
    sub_29925B164((a1 + 8), v65);
    goto LABEL_113;
  }

  if ((*(v43 + 48))() != 1 || (**(a1 + 456) & 4) != 0)
  {
LABEL_105:
    v60 = 0;
  }

  else
  {
    v44 = *a3;
    v45 = (*a3)[87];
    if (v45 >= 0)
    {
      v46 = *a3 + 64;
    }

    else
    {
      v46 = *(*a3 + 8);
    }

    if (v45 >= 0)
    {
      v47 = (*a3)[87];
    }

    else
    {
      v47 = v44[9];
    }

    v48 = (*(*v44 + 544))(v44);
    if (v48)
    {
      v50 = v49 == 0;
    }

    else
    {
      v50 = 1;
    }

    if (!v50)
    {
      v76 = 0;
      while (1)
      {
        v77 = *(v48 + 2 * v76);
        v78 = v77 - 48;
        v79 = (v77 + 240);
        if (v78 >= 0xA && v79 >= 0xA)
        {
          break;
        }

        if (v49 == ++v76)
        {
          if (!v47)
          {
            break;
          }

          v81 = 0;
          while (1)
          {
            v82 = *&v46[2 * v81];
            v83 = v82 - 48;
            v84 = (v82 + 240);
            if (v83 >= 0xA && v84 > 9)
            {
              break;
            }

            if (v47 == ++v81)
            {
              v81 = v47;
              break;
            }
          }

          if (v49 >= v81)
          {
            break;
          }

          goto LABEL_105;
        }
      }
    }

    sub_299237120();
    v51 = (*(**a3 + 560))(*a3, 0);
    v97 = *(v51 + 24);
    v52 = *v51;
    v53 = *(v51 + 16);
    v107 = *(v51 + 32);
    v105 = v52;
    v106 = v53;
    v102 = 0;
    v103 = 0;
    v101 = 0;
    sub_2992DBD58(&v101, &v105, &v108, 1uLL);
    if (!v99 || !v97 || *(*(**a3 + 544))(*a3) == 32 || (v54 = (*(**a3 + 544))(*a3)) == 0)
    {
LABEL_88:
      (*(**a3 + 112))();
      (*(**a3 + 544))(*a3);
      sub_2992FE060();
      operator new();
    }

    v55 = MEMORY[0x29EDCA600];
    v56 = v97;
    do
    {
      v58 = *v54++;
      v57 = v58;
      if (v58 <= 0x7FuLL)
      {
        v59 = *(v55 + 4 * v57 + 60) & 0x40000;
      }

      else
      {
        v59 = __maskrune(v57, 0x40000uLL);
      }

      if (!v59)
      {
        goto LABEL_88;
      }

      --v56;
    }

    while (v56);
    v60 = 0;
    v75 = v101;
    if (v101)
    {
      v102 = v101;
LABEL_110:
      operator delete(v75);
    }
  }

LABEL_111:
  v86 = *a3;
  *a3 = 0;
  if (v86)
  {
    (*(*v86 + 16))(v86);
LABEL_113:
    v60 = *a3;
  }

  if (!v60)
  {
    return 0;
  }

  v87 = (*(*v60 + 304))(v60);
  if (*v87 != v87[1] && **v87 == 9 && ((*(**a3 + 176))() & 1) != 0)
  {
    return 0;
  }

  if (v15 == 1)
  {
    v90 = "[ME::addCandidateFromMecabNode] Adding a partial candidate";
  }

  else
  {
    v90 = "[ME::addCandidateFromMecabNode] Adding a non-partial candidate";
  }

  (*(**a3 + 528))(*a3, 3, v90, 1);
  if (v15 == 1)
  {
    v14 = (*(**a3 + 112))();
  }

  v91 = *a3;
  *a3 = 0;
  *&v105 = v91;
  v104[0] = &unk_2A1F65308;
  v104[3] = v104;
  v88 = sub_2992AB710(a2, &v105, 1, 0, v104);
  sub_29921F128(v104);
  v92 = v105;
  *&v105 = 0;
  if (v92)
  {
    (*(*v92 + 16))(v92);
  }

  v93 = v88 ^ 1;
  if (!a5)
  {
    v93 = 1;
  }

  if ((v93 & 1) == 0)
  {
    v94 = *a5;
    if (*a5 <= v14)
    {
      v94 = v14;
    }

    *a5 = v94;
    return 1;
  }

  return v88;
}

void sub_2992F0868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992F09DC(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned __int8 a8, int *a9, uint64_t a10)
{
  v93 = *MEMORY[0x29EDCA608];
  v86 = 0;
  v61 = sub_2993232FC(a5, &v86);
  if (*(a5 + 64) != *(a5 + 56) || a4 != 0)
  {
    v62 = *(a10 + 184);
    if (a7)
    {
      v15 = 4;
    }

    else
    {
      v15 = 0;
    }

    v16 = *a1[57];
    v17 = (*(**a1 + 232))();
    v18 = sub_299322E10(v16, v17);
    v19 = **(a5 + 80);
    v20 = *(a5 + 32);
    v21 = (*(a5 + 40) - v20) >> 1;
    if (v20)
    {
      v22 = v21 - v19;
    }

    else
    {
      v22 = 0;
    }

    v23 = v21 > v19;
    v24 = **(a5 + 104);
    v25 = *(a5 + 56);
    if (!v23)
    {
      v22 = 0;
    }

    v68 = v22;
    v26 = (*(a5 + 64) - v25) >> 1;
    if (v26 <= v24)
    {
      v27 = 0;
    }

    else
    {
      v27 = (v25 + 2 * v24);
    }

    if (v25)
    {
      v28 = v26 - v24;
    }

    else
    {
      v28 = 0;
    }

    if (v26 <= v24)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    v64 = *(a5 + 8);
    v65 = *(a5 + 16);
    v30 = v86;
    v84 = 0;
    v83 = 0;
    v85 = 0;
    sub_299217A18(&v83, v27, v29 - v86);
    v31 = v84;
    v32 = v83;
    sub_299217A18(&v83, a3, a4);
    v33 = 0xCCCCCCCCCCCCCCCDLL * ((v65 - v64) >> 3);
    v66 = v33;
    if (v61 || !v30)
    {
      v34 = v33 - *(a1[55] + 340);
      v33 = v34 & ~(v34 >> 63);
    }

    if ((~*a1[57] & 0x81000000) != 0)
    {
      v73 = a4;
    }

    else
    {
      v35 = sub_2992AB494(a2);
      if (v35 == -1)
      {
        v36 = a4;
      }

      else
      {
        v36 = 0;
      }

      v73 = v36;
      if (v35 != -1 && a4)
      {
        v37 = *(*(a2 + 48) + 8 * v35);
        v40 = *(v37 + 64);
        v38 = v37 + 64;
        v39 = v40;
        v41 = *(v38 + 23);
        if (v41 >= 0)
        {
          v39 = v38;
        }

        v42 = *(v38 + 8);
        if (v41 >= 0)
        {
          v42 = v41;
        }

        v73 = v42;
        a3 = v39;
      }
    }

    if (v33 <= v66)
    {
      v67 = (v31 - v32) >> 1;
      v43 = "exact";
      if (a7)
      {
        v43 = "prefix";
      }

      v60 = v43;
      v44 = 0xCCCCCCCCCCCCCCCDLL * ((v65 - v64) >> 3);
      v45 = v33;
      while (1)
      {
        v46 = v45 == v44 ? v67 : *(*(a5 + 104) + 8 * v45);
        v69 = v45;
        if (a4 || (v68 - *(*(a5 + 80) + 8 * v45)) >= 2)
        {
          break;
        }

        v44 = 0xCCCCCCCCCCCCCCCDLL * ((v65 - v64) >> 3);
LABEL_76:
        if (++v45 > v44)
        {
          goto LABEL_77;
        }
      }

      v47 = v67 - v46;
      v78 = &unk_2A1F74930;
      v82 = 0;
      v80 = 0;
      v81 = 0;
      v79 = 0;
      v48 = *(v62 + 32) != 1 || v67 == v46;
      v49 = v62;
      if (!v48)
      {
        sub_299373E34(&v79, v47);
        v50 = 0;
        do
        {
          LOWORD(__src) = *(v83 + v46 + v50);
          sub_299259B8C(&v78, v50++, &__src, 1, 1, 0, 0xFFFFFF, -1, 0.0, 255);
        }

        while (v67 - v46 != v50);
        sub_299374D28(&v79, v80, *(v62 + 8), *(v62 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v62 + 16) - *(v62 + 8)) >> 3));
        v82 = 1;
        v49 = &v78;
        v47 = v67 - v46;
      }

      *(a10 + 184) = v49;
      v51 = (v83 + 2 * v46);
      if (v83)
      {
        v52 = v47 + a4;
      }

      else
      {
        v52 = 0;
      }

      v77 = sub_299322FD4(v51, v52, a6);
      v75 = v52;
      v76 = v51;
      v53 = CFStringCreateWithCharacters(0, v51, v52);
      v54 = sub_2993652F8(3u);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = v60;
        v89 = 2112;
        v90 = v53;
        v91 = 1024;
        v92 = v18 & 0xFFFFFFDF | v15;
        _os_log_debug_impl(&dword_29918C000, v54, OS_LOG_TYPE_DEBUG, "[MJ::makeMecabSingleWordCandidates] Searching single-word %s candidates for [%@] with option: 0x%.6X", buf, 0x1Cu);
      }

      if (sub_2993E4FF0(*a1, v76, v75, v77, 0, v18 & 0xFFFFFFDF | v15))
      {
        if (v77)
        {
          v72 = v77[2];
        }

        else
        {
          v72 = 0;
        }

        v56 = (*(**a1 + 248))();
        if (v56)
        {
          if ((*a1[57] & 0x4000000) != 0)
          {
            v57 = v75;
          }

          else
          {
            v57 = v73;
          }

          if ((*a1[57] & 0x4000000) != 0)
          {
            v58 = v76;
          }

          else
          {
            v58 = a3;
          }

          sub_2992EF484(a1, v56, v58, v57, v72, a8, 0);
        }

        v55 = 0;
        if (v53)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v55 = 4;
        if (v53)
        {
LABEL_74:
          CFRelease(v53);
        }
      }

      sub_29926C200(&v77);
      v78 = &unk_2A1F74930;
      *buf = &v79;
      sub_299259FC8(buf);
      v44 = 0xCCCCCCCCCCCCCCCDLL * ((v65 - v64) >> 3);
      v45 = v69;
      if ((v55 | 4) != 4)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

LABEL_77:
    *(a10 + 184) = v62;
    if (v83)
    {
      v84 = v83;
      operator delete(v83);
    }
  }

  return 0;
}

void sub_2992F1AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  (*(*v67 + 16))(v67, a2, a3, a4, a5, a6, a7, a8);
  sub_299219AB4(&a65, 0);
  sub_29926C200(&a66);
  a67 = a30;
  STACK[0x280] = a40;
  sub_299259FC8(&STACK[0x280]);
  v69 = STACK[0x200];
  if (STACK[0x200])
  {
    STACK[0x208] = v69;
    operator delete(v69);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992F1CC8(uint64_t *a1, void *a2, void *a3, const void *a4, unint64_t a5, uint64_t *a6, int a7, unsigned __int8 a8, char a9, _DWORD *a10)
{
  if (a5 < 2)
  {
    return 0;
  }

  v16 = *a1;
  v17 = *a1[57];
  v18 = (*(**a1 + 232))(*a1);
  v19 = sub_299322F38(v17, v18);
  result = sub_2993E4FF0(v16, a4, a5, a6, 0, v19);
  if (result)
  {
    if (a6)
    {
      v21 = a6[2];
    }

    else
    {
      v21 = 0;
    }

    v20 = (*(**a1 + 248))();
    if (v20)
    {
      sub_2992EF484(a1, v20, a4, a5, v21, a8, 0);
    }

    return 1;
  }

  return result;
}

void sub_2992F2364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  MEMORY[0x29C29BFB0](v27, 0x10F3C4074548AAFLL, a3, a4, a5, a6, a7, a8);
  v30 = *(v28 - 128);
  if (v30)
  {
    *(v28 - 120) = v30;
    operator delete(v30);
  }

  if (a27)
  {
    (*(*a27 + 16))(a27);
  }

  _Unwind_Resume(a1);
}

void sub_2992F2458(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v7 = sub_2993652F8(3u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a3 + 48);
    for (i = *(a3 + 56); v8 != i; v8 += 8)
    {
      v10 = sub_2993652F8(3u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = (*(**v8 + 24))();
        v12 = (*(**v8 + 112))();
        *buf = 138412546;
        v21 = v11;
        v22 = 1024;
        v23 = v12;
        _os_log_debug_impl(&dword_29918C000, v10, OS_LOG_TYPE_DEBUG, "Partial phrase: %@ (weight: %d)", buf, 0x12u);
      }
    }
  }

  v13 = *(a3 + 48);
  v14 = *(a3 + 56);
  if (v13 == v14 || !*v13)
  {
    v15 = 4000;
  }

  else
  {
    v15 = (*(**v13 + 112))(*v13) + 4000;
    v13 = *(a3 + 48);
    v14 = *(a3 + 56);
  }

  for (; v13 != v14; ++v13)
  {
    if ((*(**v13 + 112))() < v15)
    {
      v16 = *v13;
      ++*a4;
      (*(*v16 + 480))(v16);
      (*(**v13 + 528))(*v13, 3, "Adding a partial phrase candidate", 1);
      v19[0] = &unk_2A1F65308;
      v19[3] = v19;
      v17 = sub_2992AB710(a2, v13, 1, 0, v19);
      sub_29921F128(v19);
      if ((v17 & 1) == 0)
      {
        v18 = sub_2993652F8(3u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_29918C000, v18, OS_LOG_TYPE_DEBUG, "∟ rejected", buf, 2u);
        }
      }
    }
  }
}

void sub_2992F2768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29921F128(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992F2784(uint64_t a1)
{
  *a1 = &unk_2A1F68A78;
  *(a1 + 8) = 0;
  sub_299213890(a1 + 16);
  sub_29919C3A8((a1 + 360));
  sub_29918D970((a1 + 368));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  return a1;
}

void sub_2992F27DC(_Unwind_Exception *a1)
{
  sub_29919C3B0((v1 + 360));
  sub_299213950(v1 + 16);
  _Unwind_Resume(a1);
}

__CFArray *sub_2992F2800(int a1, uint64_t a2, uint64_t a3, const __CFString *a4)
{
  v4 = a3;
  if (!a3)
  {
    return v4;
  }

  v6 = a2;
  v8 = sub_2992F28F4(a1);
  if (!v8)
  {
    return 0;
  }

  if (a1 == 5 && a4)
  {
    sub_2992DC2CC(a4);
  }

  return sub_29931DE54(v8, v6, v4, a4);
}

void sub_2992F28DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

const void **sub_2992F28F4(int a1)
{
  if ((atomic_load_explicit(&qword_2A1460E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460E10))
  {
    *&qword_2A1460E28 = 0u;
    xmmword_2A1460E18 = 0u;
    dword_2A1460E38 = 1065353216;
    __cxa_atexit(sub_2992F3080, &xmmword_2A1460E18, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460E10);
  }

  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  v2 = sub_299277300(a1);
  v3 = 24938;
  if (((1 << v2) & 0x2E) != 0)
  {
    v3 = 26746;
  }

  else
  {
    v11 = 0;
    if (((1 << v2) & 0x50) != 0)
    {
      return v11;
    }
  }

  HIBYTE(v19) = 2;
  LOWORD(__p[0]) = v3;
  BYTE2(__p[0]) = 0;
  if (sub_2992F313C(__p))
  {
    goto LABEL_30;
  }

  if (v19 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  cf = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v4, 0x8000100u);
  v5 = sub_2991C0548(&xmmword_2A1460E18, __p);
  v6 = v5;
  v7 = *(&xmmword_2A1460E18 + 1);
  if (!*(&xmmword_2A1460E18 + 1))
  {
    goto LABEL_27;
  }

  v8 = vcnt_s8(*(&xmmword_2A1460E18 + 8));
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *(&xmmword_2A1460E18 + 1))
    {
      v10 = v5 % *(&xmmword_2A1460E18 + 1);
    }
  }

  else
  {
    v10 = (*(&xmmword_2A1460E18 + 1) - 1) & v5;
  }

  v12 = *(xmmword_2A1460E18 + 8 * v10);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_27:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v14 >= v7)
      {
        v14 %= v7;
      }
    }

    else
    {
      v14 &= v7 - 1;
    }

    if (v14 != v10)
    {
      goto LABEL_27;
    }

LABEL_26:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_27;
    }
  }

  if (!sub_2991C09F4(&xmmword_2A1460E18, v13 + 2, __p))
  {
    goto LABEL_26;
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_30:
  v15 = sub_2992F313C(__p);
  if (!v15)
  {
    sub_2991D6EC4("unordered_map::at: key not found");
  }

  v11 = v15 + 5;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  return v11;
}

void sub_2992F2EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_2992F3250(&a17);
  sub_299219AB4(&a10, 0);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__CFArray *MecabraCopyEmojiCharacterArrayForString(int a1, uint64_t a2)
{
  if (a1 == 1)
  {
    v2 = 11;
  }

  else
  {
    v2 = 12;
  }

  return sub_2992F2800(v2, 0, a2, 0);
}

const void **sub_2992F2F40(int a1, int a2, uint64_t a3)
{
  result = sub_2992F28F4(a1);
  if (result)
  {
    v6 = *result;
    if (a2 == 2)
    {
      v7 = 5;
    }

    else
    {
      v7 = 4;
    }

    if (a2 == 1)
    {
      v8 = 6;
    }

    else
    {
      v8 = v7;
    }

    return MEMORY[0x2A1C5FBB0](v6, v8, a3);
  }

  return result;
}

const void **sub_2992F2FA8(int a1, uint64_t a2)
{
  result = sub_2992F28F4(a1);
  if (result)
  {
    v4 = *result;

    return MEMORY[0x2A1C5FBA8](v4, a2);
  }

  return result;
}

const void **sub_2992F2FF4(int a1, uint64_t a2, uint64_t a3)
{
  result = sub_2992F28F4(a1);
  if (result)
  {
    v6 = *result;

    return MEMORY[0x2A1C5FBB8](v6, a2, a3);
  }

  return result;
}

const void **sub_2992F3048(int a1)
{
  result = sub_2992F28F4(a1);
  if (result)
  {
    v2 = *result;

    return MEMORY[0x2A1C5FBC0](v2);
  }

  return result;
}

uint64_t sub_2992F3080(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_2992F30E0((v2 + 2));
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

void sub_2992F30E0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 24) = 0;
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

const void **sub_2992F313C(uint64_t *a1)
{
  v2 = sub_2991C0548(&xmmword_2A1460E18, a1);
  v3 = *(&xmmword_2A1460E18 + 1);
  if (!*(&xmmword_2A1460E18 + 1))
  {
    return 0;
  }

  v4 = v2;
  v5 = vcnt_s8(*(&xmmword_2A1460E18 + 8));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = v2;
    if (v2 >= *(&xmmword_2A1460E18 + 1))
    {
      v7 = v2 % *(&xmmword_2A1460E18 + 1);
    }
  }

  else
  {
    v7 = (*(&xmmword_2A1460E18 + 1) - 1) & v2;
  }

  v8 = *(xmmword_2A1460E18 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = i[1];
    if (v10 == v4)
    {
      if (sub_2991C09F4(&xmmword_2A1460E18, i + 2, a1))
      {
        return i;
      }
    }

    else
    {
      if (v6 > 1)
      {
        if (v10 >= v3)
        {
          v10 %= v3;
        }
      }

      else
      {
        v10 &= v3 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_2992F3250(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2992F30E0(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2992F329C(void *a1, unsigned int *a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  *a1 = *a2;
  v7 = sub_299277300(v6);
  if (v7 == 5)
  {
    v8 = sub_2993E02C0();
    v7 = sub_2993E0350(v8, 5);
  }

  sub_2993B7C78((a1 + 1), v7, *(a2 + 5), *(a2 + 6), *(a2 + 7), a3, *(a2 + 8), *(a2 + 9), 1, 0);
}

void sub_2992F3A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992F578C(va);
  sub_2992F578C(va);
  v7 = v3[57];
  v3[57] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  sub_2992F5670(v3 + 55, 0);
  sub_29934756C(v3 + 41);
  sub_29934756C(v4 + 2);
  sub_2992F3BF4(v5, 0);
  sub_2992F3BA8(v4, 0);
  sub_2992EAF08(v3 + 26);
  sub_2992EAF08(v3 + 25);
  sub_2993B8B28((v3 + 1));
  _Unwind_Resume(a1);
}

void *sub_2992F3BA8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2992F8BD0(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2992F3BF4(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2992EAF50(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

BOOL sub_2992F3C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 2)
  {
    return 0;
  }

  LMVocabularyGetSharedVocabulary();
  return LMVocabularyContainsLemmaForCharacters() != 0;
}

uint64_t *sub_2992F3C90(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_29924AC3C(v2 + 8);
    MEMORY[0x29C29BFB0](v2, 0x10A1C400AA0B987);
  }

  return a1;
}

uint64_t *sub_2992F3D54(uint64_t *a1)
{
  v4 = (a1 + 61);
  sub_2992F578C(&v4);
  v4 = (a1 + 58);
  sub_2992F578C(&v4);
  v2 = a1[57];
  a1[57] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_2992F5670(a1 + 55, 0);
  sub_29934756C(a1 + 41);
  sub_29934756C(a1 + 29);
  sub_2992F3BF4(a1 + 28, 0);
  sub_2992F3BA8(a1 + 27, 0);
  sub_2992EAF08(a1 + 26);
  sub_2992EAF08(a1 + 25);
  sub_2993B8B28((a1 + 1));
  return a1;
}

void sub_2992F3E1C(uint64_t result)
{
  v2 = *(result + 448);
  if (*(v2 + 105) == 1)
  {
    if (sub_2992F3E9C(result))
    {
      return;
    }

    v2 = *(result + 448);
  }

  if (*(v2 + 104) == 1)
  {
    sub_2992F3F64(result, 0);
    sub_2993B8CEC(result + 8);

    sub_2993B8F40((result + 8));
  }
}

uint64_t sub_2992F3E9C(uint64_t a1)
{
  if (sub_299277300(*a1) == 5)
  {
    sub_2992F3F64(a1, 0);
    sub_2993B9068(a1 + 8, 5);
    sub_2992EAFC0((a1 + 8));
  }

  return 0;
}

void sub_2992F3F64(void *a1, int a2)
{
  sub_2993B8C0C(a1 + 1, a2);
  v3 = a1[27];
  if (v3)
  {
    *(v3 + 8) = 0;
    sub_2993EEE54(*(v3 + 16));
    sub_29931FE84(*(v3 + 48));
  }

  v4 = a1[28];
  if (v4)
  {
    sub_2993EEE54(*(v4 + 16));
    sub_2993EEE54(*(v4 + 24));
    *(v4 + 40) = 0;
  }

  sub_2993EEE54(a1[43]);
  sub_2993EEE54(a1[31]);
  sub_2993EEE54(a1[26]);
  v5 = a1[25];

  sub_2993EEE54(v5);
}

void sub_2992F3FF0(void *a1)
{
  sub_2992F3F64(a1, 1);
  v2 = a1[27];
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {

      sub_299313050(v3);
    }
  }
}

void sub_2992F4044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v7 = sub_2992774EC(*(a1 + 8));
  v8 = CFStringCreateWithCString(0, v7, 0x8000100u);
  v10 = *a2;
  v9 = *(a2 + 8);
  while (v10 != v9)
  {
    (*(**v10 + 16))(*v10, Mutable, a3, 0);
    ++v10;
  }

  v11 = sub_299277514(*a1, *(a1 + 4));
  v12 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v11, 0x8000100u);
  sub_2992BBD18(*(a1 + 456), v8, v12, Mutable);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_2992F4184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_299219AB4(va, 0);
  sub_299219AB4(va1, 0);
  sub_299274AE8(va2, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992F41C8(uint64_t a1)
{
  if (*(a1 + 6) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 184);
  v3 = *(a1 + 8);
  if (*(v3 + 5) != 1 || (v4 = *(v3 + 40)) == 0)
  {
    v4 = *(v3 + 32);
  }

  return (*(*v2 + 16))(v2, v4);
}

BOOL sub_2992F4224(void *a1)
{
  v1 = a1[2];
  if (*(v1 + 5) != 1 || (v2 = *(v1 + 40)) == 0)
  {
    v2 = *(v1 + 32);
  }

  return *(v2 + 8) && **(a1[12] + 8) && *(a1[14] + 8) != 0;
}

BOOL sub_2992F4274(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a5;
  if (a2)
  {
    if (*(*(a1 + 432) + 4) <= 7u)
    {
      sub_2993245EC(a2);
    }

    sub_299225D3C(a2, kMecabraContextOptionPrivateMode);
  }

  LMLanguageModelSetParameterValue();
  result = sub_2992F4224(a1);
  if (result)
  {
    sub_2992F3F64(a1, 0);
    *(a1 + 4) = (a4 << 8) & 0x4000;
    *(a1 + 424) = a3;
    sub_2992B1E6C(a2, a1 + 8, v5);
  }

  return result;
}

void sub_2992F4AA4(void *result, uint64_t a2)
{
  if (a2)
  {
    sub_2992F4044(result, (result + 61), a2);
    if (sub_2992F4224(result))
    {

      sub_2992F3F64(result, 0);
    }
  }
}

void sub_2992F4B04(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 144);
  if (v4)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3002000000;
    v24 = sub_2992F4E80;
    v25 = sub_2992F4E90;
    v6 = *MEMORY[0x29EDB8ED8];
    cf = CFStringCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v4);
    v7 = v22[5];
    if (v7)
    {
      CFStringTrimWhitespace(v7);
      v17 = 0;
      v18 = &v17;
      v19 = 0x2000000000;
      Length = CFStringGetLength(v22[5]);
      v8 = v18[3];
      if (v8)
      {
        if (a3)
        {
          v13 = 0;
          v14 = &v13;
          v15 = 0x2000000000;
          v16 = 0;
          v9 = v22[5];
          v12[0] = MEMORY[0x29EDCA5F8];
          v12[1] = 0x40000000;
          v12[2] = sub_2992F4E9C;
          v12[3] = &unk_29EF10D10;
          v12[4] = &v21;
          v12[5] = &v13;
          v12[6] = &v17;
          sub_29927708C(v9, 1, v12);
          v10.length = v18[3];
          if (v10.length >= 2 && v14[3] <= 4)
          {
            v10.location = 0;
            v11 = CFStringCreateWithSubstring(v6, v22[5], v10);
            sub_2992F4F7C(a1, v11, 1);
          }

          _Block_object_dispose(&v13, 8);
        }

        else if (v8 >= 1)
        {
          sub_2992F4F7C(a1, v22[5], 0);
        }
      }

      _Block_object_dispose(&v17, 8);
    }

    _Block_object_dispose(&v21, 8);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void sub_2992F4DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va2, a16);
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, const void *);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  va_copy(va2, va1);
  v23 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  v26 = va_arg(va2, void);
  v27 = va_arg(va2, void);
  sub_299219AB4(va, 0);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  sub_29924A4BC((v16 + 40), 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992F4E80(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void sub_2992F4E9C(void *a1, CFRange range, _BYTE *a3)
{
  length = range.length;
  v7.location = range.location;
  v7.length = length;
  v6 = CFStringCreateWithSubstring(*MEMORY[0x29EDB8ED8], *(*(a1[4] + 8) + 40), v7);
  if (!CEMStringIsSingleEmoji() || *(*(a1[5] + 8) + 24) > 14)
  {
    *a3 = 1;
    if (!v6)
    {
      return;
    }

    goto LABEL_6;
  }

  *(*(a1[6] + 8) + 24) -= length;
  ++*(*(a1[5] + 8) + 24);
  if (v6)
  {
LABEL_6:
    CFRelease(v6);
  }
}

void sub_2992F4F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

void sub_2992F4F7C(uint64_t a1, CFStringRef theString, int a3)
{
  if (theString)
  {
    CFStringGetLength(theString);
  }

  sub_299276B44();
}

void sub_2992F54C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, const void *a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v25 + 16))(v25, a2, a3, a4, a5, a6, a7, a8);
  (*(*v26 + 16))(v26);
  sub_299219AB4(&a25, 0);
  sub_299219AB4((v27 - 120), 0);
  sub_299229F00((v27 - 112), 0);
  sub_299219AB4((v27 - 104), 0);
  if (a10)
  {
    MEMORY[0x29C29BF70](a10, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2992F5670(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_29921B8CC(v2 + 24, *(v2 + 32));
    sub_29921B8CC(v2, *(v2 + 8));

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2992F56E0(uint64_t a1)
{
  sub_2992F5718(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_2992F5718(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_2992F578C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2992F57E0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_2992F57E0(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_2992F58BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F6E8E0;
  a2[1] = v2;
  return result;
}

uint64_t sub_2992F58F4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E950))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992F59B0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F6E970;
  a2[1] = v2;
  return result;
}

uint64_t sub_2992F59E8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E9D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992F5A34(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(a1 + 16) = a4;
  if (a3)
  {
    v5 = a3 + 8;
    v6 = *(a3 + 8);
    *(a1 + 24) = a2;
    *(a1 + 32) = a3 + 24;
    v13 = 0;
    v7 = (*(*a2 + 32))(a2, &v13);
    v8 = v7;
    v9 = v13;
    v10 = (a1 + 8);
    if (v13 - 2 < 0)
    {
      if (2 - v13 < v6)
      {
        v6 = 2 - v13;
      }

      memcpy(&v10[-4 * v13 + -4 * v6], (v5 - 4 * v6), 4 * v6);
      memcpy(&v10[-4 * v9], v8, 4 * v9);
      v11 = v6 + v9;
    }

    else
    {
      *a1 = *(v7 + 4 * (v13 - 2));
      v11 = 2;
    }

    *v10 = v11;
  }

  else
  {
    *(a1 + 24) = a2;
    *(a1 + 32) = 0;
    *(a1 + 4) = 1;
    *(a1 + 8) = 1;
  }

  return a1;
}

double sub_2992F5B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v4 = (*(*a2 + 32))(a2, &v16);
  v5 = 0.0;
  if (v16 - 127 >= 0xFFFFFFFFFFFFFF82)
  {
    v6 = v4;
    v7 = (a1 + 8);
    LMLanguageModelConditionalProbability();
    v5 = -v8;
    v9 = v16;
    if (v16 >= 2)
    {
      v10 = *v7 != 0;
      if (*v7)
      {
        v11 = -1;
      }

      else
      {
        v11 = 0;
      }

      memcpy(&unk_2A1461F08, &v7[4 * v11], 4 * (*v7 != 0));
      memcpy(&unk_2A1461F08 + 4 * v10, v6, 4 * v9);
      v12 = &unk_2A1461F08 + 4 * v10 - 4;
      v13 = 1;
      do
      {
        LMLanguageModelConditionalProbability();
        v5 = v5 - v14;
        ++v13;
        v12 += 4;
      }

      while (v13 < v16);
    }
  }

  return v5;
}

void *sub_2992F5C7C(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void *sub_2992F5CE8(void *result, int a2)
{
  v2 = result[1];
  if ((v2 - *result) >= 9)
  {
    v4 = result;
    result = (*(**(v2 - 8) + 56))(*(v2 - 8));
    if (result == a2)
    {
      v5 = v4[1];
      v7 = *(v5 - 8);
      v6 = (v5 - 8);
      result = v7;
      *v6 = 0;
      if (v7)
      {
        result = (*(*result + 8))(result);
      }

      v4[1] = v6;
    }
  }

  return result;
}

uint64_t sub_2992F5D88(void *a1, int a2, uint64_t a3)
{
  v6 = a1[1];
  if (*a1 == v6 || (*(**(v6 - 8) + 56))(*(v6 - 8)) != a2)
  {
    if (a2 == 1)
    {
      operator new();
    }

    if (!a2)
    {
      operator new();
    }
  }

  return (*(**(a1[1] - 8) + 16))(*(a1[1] - 8), a3);
}

uint64_t sub_2992F601C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (*a1 == v6 || (*(**(v6 - 8) + 56))(*(v6 - 8)) != a2)
  {
    if (a2 == 2)
    {
      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }
  }

  result = (*(**(*(a1 + 8) - 8) + 40))(*(*(a1 + 8) - 8), a3);
  *(a1 + 24) = 0;
  return result;
}

CFMutableStringRef sub_2992F62B0(uint64_t *a1, uint64_t *a2, const void **a3)
{
  if (*a2 == a2[1] || *a1 == a1[1])
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v7 = *a1;
  v8 = a1[1];
  if (*a1 != v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if ((*(**v7 + 56))() == 2)
      {
        v11 = *a2;
        v12 = a2[1];
        v13 = (v12 - *a2) >> 3;
        if (v9 < v13)
        {
          while (1)
          {
            v14 = *(v11 + 8 * v9);
            v15 = *(v14 + 8);
            if (v10 < v15)
            {
              break;
            }

LABEL_11:
            v10 = 0;
            if (++v9 == v13)
            {
              v9 = (v12 - *a2) >> 3;
              goto LABEL_36;
            }
          }

          v16 = (*(v14 + 32) + 4 * v10 + 3);
          while (1)
          {
            v17 = *v16;
            v16 += 4;
            if (v17)
            {
              break;
            }

            if (v15 == ++v10)
            {
              goto LABEL_11;
            }
          }
        }

        v24 = v10;
        if (v9 < v13)
        {
          while (1)
          {
            v25 = *(v11 + 8 * v9);
            if (v24 < v25[1])
            {
              break;
            }

LABEL_22:
            v24 = 0;
            v10 = 0;
            if (++v9 >= (v12 - v11) >> 3)
            {
              goto LABEL_36;
            }
          }

          v26 = v25[2];
          v27 = (v25[4] + 4 * v24 + 3);
          while (1)
          {
            v28 = *v27;
            v27 += 4;
            if ((v28 & 1) == 0)
            {
              break;
            }

            v29 = sub_2993A1488(*(v26 + 2 * v24), 0);
            CFStringAppend(Mutable, v29);
            ++v24;
            v11 = *a2;
            if (v24 >= *(*(*a2 + 8 * v9) + 8))
            {
              v12 = a2[1];
              goto LABEL_22;
            }
          }
        }

        v10 = v24;
      }

      else
      {
        if ((*(**v7 + 56))() == 1)
        {
          Length = CFStringGetLength(Mutable);
          v19 = (*(**v7 + 48))();
          v20 = CFStringGetLength(v19);
          v22 = a3[1];
          v21 = a3[2];
          if (v22 >= v21)
          {
            v30 = *a3;
            v31 = v22 - *a3;
            v32 = v31 >> 4;
            v33 = (v31 >> 4) + 1;
            if (v33 >> 60)
            {
              sub_299212A8C();
            }

            v34 = v21 - v30;
            if (v34 >> 3 > v33)
            {
              v33 = v34 >> 3;
            }

            v35 = v34 >= 0x7FFFFFFFFFFFFFF0;
            v36 = 0xFFFFFFFFFFFFFFFLL;
            if (!v35)
            {
              v36 = v33;
            }

            if (v36)
            {
              sub_29927F5A0(a3, v36);
            }

            v37 = (16 * v32);
            *v37 = Length;
            v37[1] = v20;
            v23 = (16 * v32 + 16);
            memcpy(0, v30, v31);
            v38 = *a3;
            *a3 = 0;
            a3[1] = v23;
            a3[2] = 0;
            if (v38)
            {
              operator delete(v38);
            }
          }

          else
          {
            *v22 = Length;
            *(v22 + 1) = v20;
            v23 = v22 + 16;
          }

          a3[1] = v23;
        }

        v39 = (*(**v7 + 48))();
        CFStringAppend(Mutable, v39);
      }

LABEL_36:
      v7 += 8;
    }

    while (v7 != v8);
  }

  return Mutable;
}

__CFString *sub_2992F65C0(void *a1, unsigned int *a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if ((*(a2 + 5) & 0x300) != 0x100)
  {
    v7 = *MEMORY[0x29EDB8ED8];
    Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
    theString[1] = Mutable;
    v33 = *(a2 + 1);
    if (!v33 || !*(a2 + 6))
    {
      return Mutable;
    }

    v34 = *(a2 + 6);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v31 = *(a2 + 2);
    v32 = *(a2 + 4);
    v30 = *a2;
    alloc = v7;
    while (1)
    {
      v12 = (v32 + 4 * v9);
      if ((v12[3] & 3) == 0)
      {
        break;
      }

      theString[0] = 0;
      v13 = sub_2993A1488(*(v31 + 2 * v9), *a2);
      sub_299229BC0(theString, v13);
      v14 = theString[0];
      if (v30 == 1)
      {
        Length = CFStringGetLength(theString[0]);
        v16.length = *v12;
        v14 = theString[0];
        if (Length != v16.length)
        {
          v16.location = 0;
          v14 = CFStringCreateWithSubstring(v7, theString[0], v16);
          if (theString[0])
          {
            CFRelease(theString[0]);
          }

          theString[0] = v14;
        }
      }

      CFStringAppend(Mutable, v14);
      v17 = v12[1];
      if (theString[0])
      {
        CFRelease(theString[0]);
      }

      v34 -= v17;
      ++v9;
LABEL_18:
      if (v9 < v33)
      {
        a3 += v17;
        if (v34)
        {
          continue;
        }
      }

      return Mutable;
    }

    while (v10 < (a1[1] - *a1) >> 3)
    {
      v18 = (*(**(*a1 + 8 * v10) + 24))(*(*a1 + 8 * v10));
      v19 = a3 - v11;
      if (a3 < v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v18;
      }

      if ((v20 & 1) == 0 && a3 <= (*(**(*a1 + 8 * v10) + 32))(*(*a1 + 8 * v10)) + v11)
      {
        v21 = *(*a1 + 8 * v10);
        v22 = (*(*v21 + 32))(v21);
        if (v34 >= v22 - v19)
        {
          v17 = v22 - v19;
        }

        else
        {
          v17 = v34;
        }

        if ((*(*v21 + 48))(v21))
        {
          v23 = (*(*v21 + 48))(v21);
          if (v17 + v19 <= CFStringGetLength(v23))
          {
            v37.location = a3 - v11;
            v37.length = v17;
            v24 = CFStringCreateWithSubstring(alloc, v23, v37);
            theString[0] = v24;
            CFStringAppend(Mutable, v24);
            v25 = (*(**(*a1 + 8 * v10) + 32))(*(*a1 + 8 * v10));
            v26 = v34 - v17;
            v34 -= v17;
            if (v9 < v33 && v26)
            {
              v27 = (v32 + 3 + 4 * v9);
              while (1)
              {
                v28 = *v27;
                v27 += 4;
                if ((v28 & 3) != 0)
                {
                  break;
                }

                if (v33 == ++v9)
                {
                  v9 = v33;
                  break;
                }
              }
            }

            if (v24)
            {
              CFRelease(v24);
            }

            v11 += v25;
            ++v10;
            v7 = alloc;
            goto LABEL_18;
          }
        }

        break;
      }

      v11 += (*(**(*a1 + 8 * v10) + 32))(*(*a1 + 8 * v10));
      ++v10;
    }

    if (!Mutable)
    {
      return Mutable;
    }

    CFRelease(Mutable);
    return 0;
  }

  return sub_2993977E0(a2);
}

void sub_2992F69A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_29924A4BC(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992F69F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (*a1 == v3 || (*(a1 + 24) & 1) != 0)
  {
    return 0;
  }

  v6 = 0;
  v7 = a2 + a3;
  v8 = *a1 + 8;
  do
  {
    v9 = (*(**(v8 - 8) + 32))(*(v8 - 8));
    v10 = (*(**(v8 - 8) + 24))(*(v8 - 8));
    if (a2 < v9 + v6)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v6 < v7)
    {
      result = v11;
    }

    else
    {
      result = 0;
    }

    if (result)
    {
      break;
    }

    v6 += v9;
    v12 = v8 == v3;
    v8 += 8;
  }

  while (!v12);
  return result;
}

uint64_t sub_2992F6ACC(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_2992F6B44(void *a1)
{
  *a1 = &unk_2A1F6E9F0;
  sub_2992F6C20((a1 + 1));
  return a1;
}