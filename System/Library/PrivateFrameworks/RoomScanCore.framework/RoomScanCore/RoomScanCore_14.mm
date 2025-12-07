void sub_2622BC388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2622BC8EC(va);
  _Unwind_Resume(a1);
}

void *sub_2622BC3A0(float *a1, void *a2, __int128 **a3)
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

uint64_t sub_2622BC7FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_2622BC85C((v2 + 2));
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

void sub_2622BC85C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  if (*(a1 + 23) < 0)
  {
    v5 = *a1;

    operator delete(v5);
  }
}

uint64_t sub_2622BC8EC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2622BC85C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2622BD198(void *a1, float32x2_t *a2)
{
  v171 = *MEMORY[0x277D85DE8];
  v143 = v144;
  v144[0] = 0;
  v145 = 0;
  v146 = 0;
  v144[1] = 0;
  v144[2] = &v145;
  memset(v147, 0, sizeof(v147));
  v148 = 1065353216;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0;
  v153 = 1065353216;
  v168 = 0u;
  v169 = 0u;
  v170.i32[0] = 1065353216;
  memset(__p, 0, sizeof(__p));
  LODWORD(v167) = 1065353216;
  v3 = a2[47];
  v2 = a2[48];
  if (v3 == v2)
  {
    goto LABEL_112;
  }

  v5 = a2 + 40;
  v6 = vdup_n_s32(0x3DCCCCCDu);
  do
  {
    v7 = a2[47];
    v8 = a2[48];
    while (v7 != v8)
    {
      v9 = *v3;
      v10 = *v7;
      if (*v3 < *v7)
      {
        v11 = sub_2621C6E90(*&a2[58], *&a2[59], *v3, *v7);
        if (v11)
        {
          v12 = *v5;
          if (!*v5)
          {
            goto LABEL_14;
          }

          v13 = v5;
          v14 = *v5;
          do
          {
            if (v14[4].i32[0] >= v9)
            {
              v13 = v14;
            }

            v14 = v14[v14[4].i32[0] < v9];
          }

          while (v14);
          if (v13 == v5 || v9 < v13[4].i32[0])
          {
LABEL_14:
            v13 = v5;
          }

          if (!v12)
          {
            goto LABEL_22;
          }

          v15 = v5;
          do
          {
            if (v12[4].i32[0] >= v10)
            {
              v15 = v12;
            }

            v12 = v12[v12[4].i32[0] < v10];
          }

          while (v12);
          if (v15 == v5 || v10 < v15[4].i32[0])
          {
LABEL_22:
            v15 = v5;
          }

          if (*(v11 + 136) == 1)
          {
            v16 = v11[16];
            if (sub_2621DC76C(v16, v13[5], v13[6], 0.0) < 0.1 && sub_2621DC76C(v16, v15[5], v15[6], 0.0) < 0.1)
            {
              v161[0] = vcvt_s32_f32(vrnda_f32(vdiv_f32(v16, v6)));
              v161[1] = v16;
              v17 = sub_2622C1924(&v168, v161);
              sub_2621C729C(v17, *v3, v3);
              v18 = sub_2622C1924(&v168, v161);
              sub_2621C729C(v18, *v7, v7);
            }
          }
        }
      }

      ++v7;
    }

    ++v3;
  }

  while (v3 != v2);
  v19 = v169;
  if (!v169)
  {
LABEL_112:
    *v161 = 0u;
    v162 = 0u;
    v163 = 1065353216;
    goto LABEL_113;
  }

  do
  {
    v20 = v19[6];
    if (!v20)
    {
      goto LABEL_70;
    }

    do
    {
      v21 = *(v20 + 4);
      if (!__p[1])
      {
        goto LABEL_47;
      }

      v22 = vcnt_s8(__p[1]);
      v22.i16[0] = vaddlv_u8(v22);
      if (v22.u32[0] > 1uLL)
      {
        v23 = *(v20 + 4);
        if (__p[1] <= v21)
        {
          v23 = v21 % __p[1];
        }
      }

      else
      {
        v23 = (__p[1] - 1) & v21;
      }

      v24 = *(__p[0] + v23);
      if (!v24 || (v25 = *v24) == 0)
      {
LABEL_47:
        operator new();
      }

      while (1)
      {
        v26 = v25[1];
        if (v26 == v21)
        {
          break;
        }

        if (v22.u32[0] > 1uLL)
        {
          if (v26 >= __p[1])
          {
            v26 %= __p[1];
          }
        }

        else
        {
          v26 &= __p[1] - 1;
        }

        if (v26 != v23)
        {
          goto LABEL_47;
        }

LABEL_46:
        v25 = *v25;
        if (!v25)
        {
          goto LABEL_47;
        }
      }

      if (v25[2].i32[0] != v21)
      {
        goto LABEL_46;
      }

      v27 = *(v19 + 4);
      v28 = *(v19 + 5);
      v29 = v28 + 2654435769 + ((v27 + 2654435769) << 6) + ((v27 + 2654435769) >> 2);
      v30 = v29 ^ (v27 + 2654435769);
      v31 = v25[4];
      if (!*&v31)
      {
        goto LABEL_68;
      }

      v32 = vcnt_s8(v31);
      v32.i16[0] = vaddlv_u8(v32);
      if (v32.u32[0] > 1uLL)
      {
        v33 = v29 ^ (v27 + 2654435769);
        if (v30 >= *&v31)
        {
          v33 = v30 % *&v31;
        }
      }

      else
      {
        v33 = v30 & (*&v31 - 1);
      }

      v34 = *(*&v25[3] + 8 * v33);
      if (!v34 || (v35 = *v34) == 0)
      {
LABEL_68:
        operator new();
      }

      while (2)
      {
        v36 = v35[1];
        if (v36 != v30)
        {
          if (v32.u32[0] > 1uLL)
          {
            if (v36 >= *&v31)
            {
              v36 %= *&v31;
            }
          }

          else
          {
            v36 &= *&v31 - 1;
          }

          if (v36 != v33)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        }

        if (*(v35 + 4) != v27 || *(v35 + 5) != v28)
        {
LABEL_67:
          v35 = *v35;
          if (!v35)
          {
            goto LABEL_68;
          }

          continue;
        }

        break;
      }

      v20 = *v20;
    }

    while (v20);
LABEL_70:
    v19 = *v19;
  }

  while (v19);
  v38 = v169;
  *v161 = 0u;
  v162 = 0u;
  v163 = 1065353216;
  while (2)
  {
    v39 = *(v38 + 4);
    v40 = *(v38 + 5);
    v41 = v146;
    v42 = v40 + 2654435769 + ((v39 + 2654435769) << 6) + ((v39 + 2654435769) >> 2);
    v43 = v42 ^ (v39 + 2654435769);
    if (!v161[1])
    {
      goto LABEL_92;
    }

    v44 = vcnt_s8(v161[1]);
    v44.i16[0] = vaddlv_u8(v44);
    if (v44.u32[0] > 1uLL)
    {
      v45 = v42 ^ (v39 + 2654435769);
      if (v43 >= v161[1])
      {
        v45 = v43 % v161[1];
      }
    }

    else
    {
      v45 = v43 & (v161[1] - 1);
    }

    v46 = *(v161[0] + v45);
    if (!v46 || (v47 = *v46) == 0)
    {
LABEL_92:
      operator new();
    }

    while (2)
    {
      v48 = v47[1];
      if (v48 != v43)
      {
        if (v44.u32[0] > 1uLL)
        {
          if (v48 >= v161[1])
          {
            v48 %= v161[1];
          }
        }

        else
        {
          v48 &= v161[1] - 1;
        }

        if (v48 != v45)
        {
          goto LABEL_92;
        }

        goto LABEL_91;
      }

      if (*(v47 + 4) != v39 || *(v47 + 5) != v40)
      {
LABEL_91:
        v47 = *v47;
        if (!v47)
        {
          goto LABEL_92;
        }

        continue;
      }

      break;
    }

    *(v47 + 8) = v146;
    LODWORD(v154) = v41;
    v158[1] = 0;
    *&v159 = 0;
    v158[0] = &v158[1];
    *&v156 = &v154;
    v50 = sub_2621C6404(&v143, v41, &v156);
    v51 = v50 + 6;
    sub_2621C6C04(v50[6]);
    v52 = v158[1];
    v50[5] = v158[0];
    *v51 = v52;
    v53 = v159;
    v50[7] = v159;
    if (v53)
    {
      v52[2] = v51;
      v158[0] = &v158[1];
      v158[1] = 0;
      *&v159 = 0;
      v52 = 0;
    }

    else
    {
      v50[5] = v51;
    }

    sub_2621C6C04(v52);
    v54 = v145;
    if (!v145)
    {
LABEL_102:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v55 = v54;
        v56 = *(v54 + 8);
        if (v154 >= v56)
        {
          break;
        }

        v54 = *v55;
        if (!*v55)
        {
          goto LABEL_102;
        }
      }

      if (v56 >= v154)
      {
        break;
      }

      v54 = v55[1];
      if (!v54)
      {
        goto LABEL_102;
      }
    }

    v55[5] = v38[3];
    v57 = v149;
    if (v149 != *(&v149 + 1))
    {
      while (*v57 != v154)
      {
        if (++v57 == *(&v149 + 1))
        {
          goto LABEL_108;
        }
      }
    }

    if (v57 == *(&v149 + 1))
    {
LABEL_108:
      sub_2621C7CD0(&v149, &v154);
      v158[0] = 0;
      v158[1] = 0;
      *&v159 = 0;
      sub_2621CB5C4(&v150 + 1, v154, &v154, v158);
      if (v158[0])
      {
        operator delete(v158[0]);
      }
    }

    v38 = *v38;
    if (v38)
    {
      continue;
    }

    break;
  }

LABEL_113:
  v58 = __p[2];
  if (__p[2])
  {
    v59 = a2 + 40;
    do
    {
      v60 = v58[5];
      v61 = v60;
      v139 = v58;
      if (v60)
      {
        while (1)
        {
          while (v60)
          {
            v62 = *(v61 + 4);
            v63 = *(v60 + 4);
            if (v62 < v63)
            {
              v64 = *(v61 + 5);
              v65 = *(v60 + 5);
              if (v64 < v65)
              {
                v66 = v161[0];
                v67 = v161[1];
                v68 = *(sub_2622C1E90(v161[0], v161[1], v62, v64) + 8);
                v69 = sub_2622C1E90(v66, v67, v63, v65);
                v70 = *v59;
                if (!*v59)
                {
                  goto LABEL_126;
                }

                v71 = *(v139 + 4);
                v72 = a2 + 40;
                do
                {
                  if (v70[4].i32[0] >= v71)
                  {
                    v72 = v70;
                  }

                  v70 = v70[v70[4].i32[0] < v71];
                }

                while (v70);
                if (v72 == v59 || v71 < v72[4].i32[0])
                {
LABEL_126:
                  v72 = a2 + 40;
                }

                v73 = *(v69 + 8);
                LODWORD(v154) = v68;
                LODWORD(v140) = v73;
                *&v156 = __PAIR64__(v73, v68);
                v158[0] = &v156;
                v74 = sub_2621CB808(v147, v68, v73, v158);
                v75 = *v72[5].f32;
                *(v74 + 5) = *v72[7].f32;
                *(v74 + 3) = v75;
                v158[0] = &v154;
                v76 = sub_2621C6404(&v143, v154, v158);
                v158[0] = &v140;
                *(sub_2621CAE44(v76 + 5, v140, v158) + 8) = 1065353216;
                v158[0] = &v140;
                v77 = sub_2621C6404(&v143, v140, v158);
                v158[0] = &v154;
                *(sub_2621CAE44(v77 + 5, v154, v158) + 8) = 1065353216;
                v158[0] = &v154;
                v78 = sub_2621C65A4(&v150 + 2, v154, v158)[3];
                v158[0] = &v154;
                v79 = sub_2621C65A4(&v150 + 2, v154, v158);
                v80 = v79[4];
                if (v78 != v80)
                {
                  while (*v78 != v140)
                  {
                    if (++v78 == v80)
                    {
                      v78 = v79[4];
                      break;
                    }
                  }
                }

                v158[0] = &v154;
                if (v78 == sub_2621C65A4(&v150 + 2, v154, v158)[4])
                {
                  v158[0] = &v154;
                  v81 = sub_2621C65A4(&v150 + 2, v154, v158);
                  sub_2621C7CD0((v81 + 3), &v140);
                }

                v158[0] = &v140;
                v82 = sub_2621C65A4(&v150 + 2, v140, v158)[3];
                v158[0] = &v140;
                v83 = sub_2621C65A4(&v150 + 2, v140, v158);
                v84 = v83[4];
                if (v82 != v84)
                {
                  while (*v82 != v154)
                  {
                    if (++v82 == v84)
                    {
                      v82 = v83[4];
                      break;
                    }
                  }
                }

                v158[0] = &v140;
                if (v82 == sub_2621C65A4(&v150 + 2, v140, v158)[4])
                {
                  v158[0] = &v140;
                  v85 = sub_2621C65A4(&v150 + 2, v140, v158);
                  sub_2621C7CD0((v85 + 3), &v154);
                }
              }
            }

            v60 = *v60;
          }

          v61 = *v61;
          v58 = v139;
          if (!v61)
          {
            break;
          }

          v60 = v139[5];
        }
      }

      v58 = *v58;
    }

    while (v58);
  }

  sub_2621C74C4(v161);
  sub_2622C1DD0(__p);
  sub_2622C1E30(&v168);
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v164[0] = &unk_2874EE660;
  v164[1] = &v140;
  v165 = v164;
  *v161 = 0u;
  v162 = 0u;
  v163 = 1065353216;
  *v158 = 0u;
  v159 = 0u;
  v160 = 1065353216;
  v87 = *(&v149 + 1);
  v86 = v149;
  if (v149 != *(&v149 + 1))
  {
LABEL_144:
    v88 = *v86;
    if (!v161[1])
    {
      goto LABEL_160;
    }

    v89 = vcnt_s8(v161[1]);
    v89.i16[0] = vaddlv_u8(v89);
    if (v89.u32[0] > 1uLL)
    {
      v90 = *v86;
      if (v161[1] <= v88)
      {
        v90 = v88 % v161[1];
      }
    }

    else
    {
      v90 = (v161[1] - 1) & v88;
    }

    v91 = *(v161[0] + v90);
    if (!v91 || (v92 = *v91) == 0)
    {
LABEL_160:
      operator new();
    }

    while (1)
    {
      v93 = v92[1];
      if (v93 == v88)
      {
        if (*(v92 + 4) == v88)
        {
          v168 = 0u;
          v169 = 0u;
          v170.i32[0] = 1065353216;
          v94 = *v86;
          v95 = sub_262283740(*(&v150 + 1), v151, *v86);
          if (v95)
          {
            v97 = v95[3];
            v96 = v95[4];
            if (v97 != v96)
            {
              do
              {
                v98 = *v97;
                if (!sub_2621C719C(v161, *v97))
                {
                  sub_2621C729C(&v168, v98, v97);
                }

                ++v97;
              }

              while (v97 != v96);
              v94 = *v86;
            }
          }

          if (!v158[1])
          {
            goto LABEL_183;
          }

          v99 = vcnt_s8(v158[1]);
          v99.i16[0] = vaddlv_u8(v99);
          if (v99.u32[0] > 1uLL)
          {
            v100 = v94;
            if (v158[1] <= v94)
            {
              v100 = v94 % v158[1];
            }
          }

          else
          {
            v100 = (v158[1] - 1) & v94;
          }

          v101 = *(v158[0] + v100);
          if (!v101 || (v102 = *v101) == 0)
          {
LABEL_183:
            operator new();
          }

          while (1)
          {
            v103 = v102[1];
            if (v103 == v94)
            {
              if (*(v102 + 4) == v94)
              {
                sub_2621C74C4(&v168);
                if (++v86 == v87)
                {
                  v87 = *(&v149 + 1);
                  v86 = v149;
                  goto LABEL_186;
                }

                goto LABEL_144;
              }
            }

            else
            {
              if (v99.u32[0] > 1uLL)
              {
                if (v103 >= v158[1])
                {
                  v103 %= v158[1];
                }
              }

              else
              {
                v103 &= v158[1] - 1;
              }

              if (v103 != v100)
              {
                goto LABEL_183;
              }
            }

            v102 = *v102;
            if (!v102)
            {
              goto LABEL_183;
            }
          }
        }
      }

      else
      {
        if (v89.u32[0] > 1uLL)
        {
          if (v93 >= v161[1])
          {
            v93 %= v161[1];
          }
        }

        else
        {
          v93 &= v161[1] - 1;
        }

        if (v93 != v90)
        {
          goto LABEL_160;
        }
      }

      v92 = *v92;
      if (!v92)
      {
        goto LABEL_160;
      }
    }
  }

LABEL_186:
  v169 = 0u;
  v170 = 0u;
  v168 = 0u;
  v104 = a1;
  if (v86 != v87)
  {
    do
    {
      memset(__p, 0, 24);
      v105 = sub_262283740(v158[0], v158[1], *v86);
      if (v105)
      {
        v106 = v105[5];
        v107 = 0uLL;
        if (v106)
        {
          do
          {
            sub_2621C7CD0(__p, (v106 + 16));
            v106 = *v106;
          }

          while (v106);
          v107 = *__p;
        }
      }

      else
      {
        v107 = 0uLL;
      }

      v108 = 126 - 2 * __clz((*(&v107 + 1) - v107) >> 2);
      *&v156 = v161;
      if (*(&v107 + 1) == v107)
      {
        v109 = 0;
      }

      else
      {
        v109 = v108;
      }

      sub_2622C0010(v107, *(&v107 + 1), &v156, v109, 1);
      v110 = *(&v168 + 1);
      LODWORD(v156) = *v86;
      if (v169 == *(&v168 + 1))
      {
        v111 = 0;
      }

      else
      {
        v111 = 85 * ((v169 - *(&v168 + 1)) >> 3) - 1;
      }

      v112 = v170.i64[1] + v170.i64[0];
      if (v111 == v170.i64[1] + v170.i64[0])
      {
        sub_2622C0C60(&v168);
        v110 = *(&v168 + 1);
        v112 = v170.i64[1] + v170.i64[0];
      }

      v113 = *(v110 + 8 * (v112 / 0x55)) - 4080 * (v112 / 0x55) + 48 * v112;
      *v113 = 0;
      *(v113 + 8) = 0;
      *(v113 + 16) = 0;
      sub_2621DD5D0(v113, &v156, &v156 + 1, 1uLL);
      *(v113 + 24) = *__p;
      *(v113 + 40) = __p[2];
      v114 = ++v170.i64[1];
      ++v86;
    }

    while (v86 != v87);
    v104 = a1;
    if (v114)
    {
      while (1)
      {
        v115 = *(*(&v168 + 1) + 8 * (v170.i64[0] / 0x55uLL)) - 4080 * (v170.i64[0] / 0x55uLL) + 48 * v170.i64[0];
        v116 = *v115;
        __p[0] = *v115;
        *v136 = *(v115 + 8);
        *&__p[1] = *v136;
        *v115 = 0;
        *(v115 + 8) = 0;
        *(v115 + 16) = 0;
        v117 = *(v115 + 24);
        __p[3] = v117;
        *__src = *(v115 + 32);
        v167 = *__src;
        *(v115 + 24) = 0;
        *(v115 + 32) = 0;
        *(v115 + 40) = 0;
        sub_2622C0C08(*(*(&v168 + 1) + 8 * (v170.i64[0] / 0x55uLL)) - 4080 * (v170.i64[0] / 0x55uLL) + 48 * v170.i64[0]);
        v170 = vaddq_s64(v170, xmmword_2623A7BE0);
        if (v170.i64[0] >= 0xAAuLL)
        {
          operator delete(**(&v168 + 1));
          *(&v168 + 1) += 8;
          v170.i64[0] -= 85;
        }

        v118 = v136[0];
        v119 = (v136[0] - v116) >> 2;
        *&v156 = v116;
        *(&v156 + 1) = v119;
        if (!v165)
        {
          sub_2621C7250();
        }

        if (((*(*v165 + 48))(v165, &v156) & 1) == 0)
        {
          break;
        }

        v120 = v117;
        v137 = v117;
        if (v117 != __src[0])
        {
          do
          {
            v156 = 0uLL;
            v157 = 0;
            sub_2621C8B60(&v156, v116, v118, v119);
            sub_2621C7CD0(&v156, v120);
            v154 = 0uLL;
            v155 = 0;
            for (i = v120 + 1; i != __src[0]; ++i)
            {
              sub_2621C7CD0(&v154, i);
            }

            v122 = sub_262283740(v158[0], v158[1], *v120);
            if (v122)
            {
              v123 = *(&v154 + 1);
              v124 = v154;
              if (v154 != *(&v154 + 1))
              {
                v125 = v122;
                while (sub_2621C719C(v125 + 3, *v124))
                {
                  if (++v124 == v123)
                  {
                    goto LABEL_224;
                  }
                }

                if (v124 != v123)
                {
                  for (j = v124 + 1; j != v123; ++j)
                  {
                    v127 = *j;
                    if (sub_2621C719C(v125 + 3, *j))
                    {
                      *v124++ = v127;
                    }
                  }
                }
              }

              v104 = a1;
              if (v124 != v123)
              {
                *(&v154 + 1) = v124;
              }
            }

LABEL_224:
            v128 = *(&v168 + 1);
            if (v169 == *(&v168 + 1))
            {
              v129 = 0;
            }

            else
            {
              v129 = 85 * ((v169 - *(&v168 + 1)) >> 3) - 1;
            }

            v130 = v170.i64[1] + v170.i64[0];
            if (v129 == v170.i64[1] + v170.i64[0])
            {
              sub_2622C0C60(&v168);
              v128 = *(&v168 + 1);
              v130 = v170.i64[1] + v170.i64[0];
            }

            v131 = *(v128 + 8 * (v130 / 0x55)) - 4080 * (v130 / 0x55) + 48 * v130;
            *v131 = v156;
            *(v131 + 16) = v157;
            *(v131 + 24) = v154;
            *(v131 + 40) = v155;
            ++v170.i64[1];
            ++v120;
          }

          while (v120 != __src[0]);
        }

        if (v137)
        {
          operator delete(v137);
        }

        if (v116)
        {
          operator delete(v116);
        }

        if (!v170.i64[1])
        {
          goto LABEL_240;
        }
      }

      if (v117)
      {
        operator delete(v117);
      }

      if (v116)
      {
        operator delete(v116);
      }
    }
  }

LABEL_240:
  sub_2622C0A38(&v168);
  sub_2622C0BA8(v158);
  sub_2621C74C4(v161);
  sub_2622BFE8C(v164);
  if (v140 != v141)
  {
      ;
    }

    sub_2621CBEC8(1uLL);
  }

  memset(__p, 0, sizeof(__p));
  LODWORD(v167) = 1065353216;
  v104[1] = *v104;
  sub_2621C74C4(__p);
  if (v140)
  {
    v141 = v140;
    operator delete(v140);
  }

  sub_2621C7150(*(&v151 + 1));
  v133 = *(&v150 + 1);
  *(&v150 + 1) = 0;
  if (v133)
  {
    operator delete(v133);
  }

  if (v149)
  {
    *(&v149 + 1) = v149;
    operator delete(v149);
  }

  sub_2621C74C4(v147);
  sub_2621C6C04(v145);
  sub_2621C70A8(v144[0]);
}

void sub_2622BFC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  sub_2621C74C4(&STACK[0x350]);
  if (__p)
  {
    operator delete(__p);
  }

  if (a33)
  {
    operator delete(a33);
  }

  sub_2622BFF0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622BFE8C(uint64_t a1)
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

uint64_t sub_2622BFF0C(uint64_t a1)
{
  sub_2621C7004((a1 + 112));
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  sub_2621C74C4(a1 + 48);
  sub_2621C6C04(*(a1 + 32));
  sub_2621C70A8(*(a1 + 8));
  return a1;
}

void sub_2622BFFB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622BFFD0(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_2621C7E7C(a2);
  }

  sub_2621CBEB0();
}

uint64_t *sub_2622C0010(uint64_t *result, int *a2, void **a3, uint64_t a4, char a5)
{
  v7 = result;
  while (2)
  {
    v133 = a2 - 1;
    v122 = a2 - 3;
    v123 = a2 - 2;
    v8 = v7;
    v129 = a2;
    v9 = a3;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v10 = v8;
          v11 = a2 - v8;
          v12 = v11 - 2;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v57 = *v9;

                return sub_2622C1114(v8, v8 + 1, v133, v57);
              case 4:

                return sub_2622C123C(v8, v8 + 1, v8 + 2, v133, v9);
              case 5:

                return sub_2622C1338(v8, v8 + 1, v8 + 2, v8 + 3, v133, v9);
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            v9 = a3;
            if (v11 == 2)
            {
              v53 = *v133;
              v54 = *v8;
              v55 = *a3;
              v56 = sub_2621C719C(*a3, *v133)[3];
              result = sub_2621C719C(v55, v54);
              if (v56 < result[3])
              {
                *v10 = v53;
                *v133 = v54;
              }

              return result;
            }
          }

          v132 = v8;
          if (v11 <= 23)
          {
            v58 = v8 + 1;
            v60 = v8 == a2 || v58 == a2;
            if (a5)
            {
              if (!v60)
              {
                v61 = 0;
                v62 = *a3;
                v63 = v8;
                do
                {
                  v65 = *v63;
                  v64 = v63[1];
                  v63 = v58;
                  v66 = sub_2621C719C(v62, v64)[3];
                  result = sub_2621C719C(v62, v65);
                  if (v66 < result[3])
                  {
                    v67 = *a3;
                    v68 = v61;
                    while (1)
                    {
                      *(v10 + v68 + 4) = v65;
                      if (!v68)
                      {
                        break;
                      }

                      v65 = *(v10 + v68 - 4);
                      v69 = sub_2621C719C(v67, v64)[3];
                      result = sub_2621C719C(v67, v65);
                      v68 -= 4;
                      v37 = v69 >= result[3];
                      v10 = v132;
                      if (v37)
                      {
                        v70 = (v132 + v68 + 4);
                        goto LABEL_88;
                      }
                    }

                    v70 = v10;
LABEL_88:
                    *v70 = v64;
                  }

                  v58 = v63 + 1;
                  v61 += 4;
                }

                while (v63 + 1 != a2);
              }
            }

            else if (!v60)
            {
              v116 = *a3;
              do
              {
                v118 = *v10;
                v117 = v10[1];
                v10 = v58;
                v119 = sub_2621C719C(v116, v117)[3];
                result = sub_2621C719C(v116, v118);
                if (v119 < result[3])
                {
                  v120 = v10;
                  do
                  {
                    *v120 = v118;
                    v118 = *(v120 - 2);
                    v121 = sub_2621C719C(v116, v117)[3];
                    result = sub_2621C719C(v116, v118);
                    --v120;
                  }

                  while (v121 < result[3]);
                  *v120 = v117;
                }

                v58 = v10 + 1;
              }

              while (v10 + 1 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v8 != a2)
            {
              v71 = *a3;
              v137 = v12 >> 1;
              v72 = v12 >> 1;
              v124 = *a3;
              do
              {
                v73 = v72;
                if (v137 >= v72)
                {
                  v74 = (2 * v72) | 1;
                  v75 = &v10[v74];
                  v76 = 2 * v72 + 2;
                  v77 = *v75;
                  v127 = v72;
                  if (v76 < v11)
                  {
                    v78 = v75[1];
                    v79 = sub_2621C719C(v71, v77)[3];
                    v80 = sub_2621C719C(v71, v78)[3];
                    if (v79 < v80)
                    {
                      v77 = v78;
                    }

                    v73 = v127;
                    if (v79 < v80)
                    {
                      ++v75;
                      v74 = v76;
                    }
                  }

                  v81 = &v10[v73];
                  v82 = *v81;
                  v83 = sub_2621C719C(v71, v77)[3];
                  v134 = v82;
                  result = sub_2621C719C(v71, v82);
                  if (v83 >= result[3])
                  {
                    v84 = *a3;
                    do
                    {
                      v85 = v75;
                      *v81 = v77;
                      if (v137 < v74)
                      {
                        break;
                      }

                      v86 = (2 * v74) | 1;
                      v75 = &v10[v86];
                      v87 = 2 * v74 + 2;
                      v77 = *v75;
                      if (v87 < v11)
                      {
                        v88 = v75[1];
                        v89 = sub_2621C719C(v84, *v75)[3];
                        v90 = sub_2621C719C(v84, v88)[3];
                        if (v89 < v90)
                        {
                          v77 = v88;
                          ++v75;
                        }

                        v10 = v132;
                        if (v89 < v90)
                        {
                          v86 = v87;
                        }
                      }

                      v91 = sub_2621C719C(v84, v77)[3];
                      result = sub_2621C719C(v84, v134);
                      v81 = v85;
                      v74 = v86;
                    }

                    while (v91 >= result[3]);
                    *v85 = v134;
                    v71 = v124;
                    v73 = v127;
                  }
                }

                v72 = v73 - 1;
              }

              while (v73);
              v92 = v129;
              v125 = *a3;
              do
              {
                v130 = v92;
                v93 = 0;
                v128 = *v10;
                v94 = (v11 - 2) / 2;
                v135 = *a3;
                v138 = v11;
                v95 = v10;
                do
                {
                  v96 = &v95[v93];
                  v98 = v96 + 1;
                  v97 = v96[1];
                  v99 = (2 * v93) | 1;
                  v100 = 2 * v93 + 2;
                  if (v100 >= v11)
                  {
                    v93 = (2 * v93) | 1;
                  }

                  else
                  {
                    v103 = v96[2];
                    v102 = v96 + 2;
                    v101 = v103;
                    v104 = sub_2621C719C(v135, v97)[3];
                    result = sub_2621C719C(v135, v103);
                    v37 = v104 >= result[3];
                    v11 = v138;
                    if (v37)
                    {
                      v93 = v99;
                    }

                    else
                    {
                      v97 = v101;
                      v98 = v102;
                      v93 = v100;
                    }
                  }

                  *v95 = v97;
                  v95 = v98;
                }

                while (v93 <= v94);
                v92 = v130 - 1;
                if (v98 == v130 - 1)
                {
                  *v98 = v128;
                }

                else
                {
                  *v98 = *v92;
                  *v92 = v128;
                  v105 = (v98 - v132 + 4) >> 2;
                  v106 = v105 < 2;
                  v107 = v105 - 2;
                  if (!v106)
                  {
                    v108 = v107 >> 1;
                    v109 = v132 + (v107 >> 1);
                    v110 = *v109;
                    v111 = *v98;
                    v112 = sub_2621C719C(v125, *v109)[3];
                    result = sub_2621C719C(v125, v111);
                    if (v112 < result[3])
                    {
                      v113 = *a3;
                      do
                      {
                        v114 = v109;
                        *v98 = v110;
                        if (!v108)
                        {
                          break;
                        }

                        v108 = (v108 - 1) >> 1;
                        v109 = v132 + v108;
                        v110 = *v109;
                        v115 = sub_2621C719C(v113, *v109)[3];
                        result = sub_2621C719C(v113, v111);
                        v98 = v114;
                      }

                      while (v115 < result[3]);
                      *v114 = v111;
                      v92 = v130 - 1;
                    }
                  }
                }

                v106 = v11-- <= 2;
                v10 = v132;
              }

              while (!v106);
            }

            return result;
          }

          v13 = &v8[v11 >> 1];
          v14 = *v9;
          if (v11 < 0x81)
          {
            sub_2622C1114(&v8[v11 >> 1], v8, v133, v14);
          }

          else
          {
            sub_2622C1114(v8, &v8[v11 >> 1], v133, v14);
            sub_2622C1114(v8 + 1, v13 - 1, v123, *v9);
            sub_2622C1114(v8 + 2, &v8[(v11 >> 1) + 1], v122, *v9);
            sub_2622C1114(v13 - 1, &v8[v11 >> 1], &v8[(v11 >> 1) + 1], *v9);
            v15 = *v8;
            *v8 = *v13;
            *v13 = v15;
          }

          --a4;
          v16 = *v8;
          v17 = *v9;
          if (a5)
          {
            break;
          }

          v18 = sub_2621C719C(*v9, *(v8 - 1))[3];
          v19 = sub_2621C719C(v17, v16)[3];
          if (v18 < v19)
          {
            break;
          }

          result = sub_2621C719C(v17, *v133);
          if (v19 >= result[3])
          {
            v40 = (v10 + 1);
            do
            {
              v8 = v40;
              if (v40 >= a2)
              {
                break;
              }

              v40 += 4;
              v41 = *v8;
              v42 = sub_2621C719C(v17, v16)[3];
              result = sub_2621C719C(v17, v41);
            }

            while (v42 >= result[3]);
          }

          else
          {
            v8 = v10;
            do
            {
              v39 = v8[1];
              ++v8;
              result = sub_2621C719C(v17, v39);
            }

            while (v19 >= result[3]);
          }

          v43 = a2;
          if (v8 < a2)
          {
            v44 = sub_2621C719C(v17, v16)[3];
            v43 = a2;
            do
            {
              v45 = *--v43;
              result = sub_2621C719C(v17, v45);
            }

            while (v44 < result[3]);
          }

          if (v8 < v43)
          {
            v46 = *v8;
            v47 = *v43;
            do
            {
              *v8 = v47;
              *v43 = v46;
              v48 = sub_2621C719C(v17, v16)[3];
              do
              {
                v49 = v8[1];
                ++v8;
                v46 = v49;
              }

              while (v48 >= sub_2621C719C(v17, v49)[3]);
              v50 = sub_2621C719C(v17, v16)[3];
              do
              {
                v51 = *--v43;
                v47 = v51;
                result = sub_2621C719C(v17, v51);
              }

              while (v50 < result[3]);
            }

            while (v8 < v43);
          }

          v52 = v8 - 1;
          a2 = v129;
          if (v8 - 1 != v10)
          {
            *v10 = *v52;
          }

          a5 = 0;
          *v52 = v16;
        }

        v136 = a4;
        v20 = sub_2621C719C(v17, v16)[3];
        v21 = v10;
        do
        {
          v22 = v21;
          v24 = v21[1];
          ++v21;
          v23 = v24;
        }

        while (sub_2621C719C(v17, v24)[3] < v20);
        v25 = a2;
        if (v22 == v10)
        {
          do
          {
            if (v21 >= v25)
            {
              break;
            }

            v28 = *--v25;
            v29 = sub_2621C719C(v17, v28)[3];
          }

          while (v29 >= sub_2621C719C(v17, v16)[3]);
        }

        else
        {
          v26 = sub_2621C719C(v17, v16)[3];
          v25 = a2;
          do
          {
            v27 = *--v25;
          }

          while (sub_2621C719C(v17, v27)[3] >= v26);
        }

        if (v21 < v25)
        {
          v30 = *v25;
          v31 = v21;
          v32 = v25;
          do
          {
            *v31 = v30;
            *v32 = v23;
            v33 = sub_2621C719C(v17, v16)[3];
            do
            {
              v22 = v31;
              v34 = v31[1];
              ++v31;
              v23 = v34;
            }

            while (sub_2621C719C(v17, v34)[3] < v33);
            v35 = sub_2621C719C(v17, v16)[3];
            do
            {
              v36 = *--v32;
              v30 = v36;
            }

            while (sub_2621C719C(v17, v36)[3] >= v35);
          }

          while (v31 < v32);
        }

        v7 = v132;
        if (v22 != v132)
        {
          *v132 = *v22;
        }

        *v22 = v16;
        v37 = v21 >= v25;
        a2 = v129;
        v9 = a3;
        a4 = v136;
        if (v37)
        {
          break;
        }

LABEL_38:
        result = sub_2622C0010(v132, v22, a3, v136, a5 & 1);
        a5 = 0;
        v8 = v22 + 1;
      }

      v38 = sub_2622C1478(v132, v22, a3);
      v8 = v22 + 1;
      result = sub_2622C1478(v22 + 1, v129, a3);
      if (result)
      {
        break;
      }

      if (!v38)
      {
        goto LABEL_38;
      }
    }

    a2 = v22;
    if (!v38)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_2622C0A38(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x55];
    v7 = *v6 + 48 * v5 + -4080 * (v5 / 0x55);
    v8 = v3[(*(a1 + 40) + v5) / 0x55] + 48 * *(a1 + 40) + 48 * v5 + -4080 * ((*(a1 + 40) + v5) / 0x55);
    if (v7 != v8)
    {
      do
      {
        sub_2622C0C08(v7);
        v7 += 48;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 42;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 85;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2622C0BA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_2621C74C4((v2 + 3));
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

void sub_2622C0C08(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void sub_2622C0C60(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x55;
  v3 = v1 - 85;
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

    sub_26223B6E4(v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  v9 = *v4;
  a1[1] = (v4 + 1);
  sub_26223B72C(a1, &v9);
}

void sub_2622C10E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2622C1114(int *a1, int *a2, int *a3, void *a4)
{
  v8 = *a2;
  v9 = *a1;
  v10 = sub_2621C719C(a4, *a2)[3];
  v11 = sub_2621C719C(a4, v9)[3];
  v12 = *a3;
  result = sub_2621C719C(a4, *a3);
  v14 = result[3];
  if (v10 >= v11)
  {
    if (v14 < v10)
    {
      *a2 = v12;
      *a3 = v8;
      v15 = *a2;
      v16 = *a1;
      v17 = sub_2621C719C(a4, *a2)[3];
      result = sub_2621C719C(a4, v16);
      if (v17 < result[3])
      {
        *a1 = v15;
        *a2 = v16;
      }
    }
  }

  else
  {
    if (v14 >= v10)
    {
      *a1 = v8;
      *a2 = v9;
      v18 = *a3;
      v19 = sub_2621C719C(a4, *a3)[3];
      result = sub_2621C719C(a4, v9);
      if (v19 >= result[3])
      {
        return result;
      }

      *a2 = v18;
    }

    else
    {
      *a1 = v12;
    }

    *a3 = v9;
  }

  return result;
}

uint64_t *sub_2622C123C(int *a1, int *a2, int *a3, int *a4, void **a5)
{
  sub_2622C1114(a1, a2, a3, *a5);
  v10 = *a4;
  v11 = *a3;
  v12 = *a5;
  v13 = sub_2621C719C(v12, *a4)[3];
  result = sub_2621C719C(v12, v11);
  if (v13 < result[3])
  {
    *a3 = v10;
    *a4 = v11;
    v15 = *a3;
    v16 = *a2;
    v17 = sub_2621C719C(v12, *a3)[3];
    result = sub_2621C719C(v12, v16);
    if (v17 < result[3])
    {
      *a2 = v15;
      *a3 = v16;
      v18 = *a2;
      v19 = *a1;
      v20 = sub_2621C719C(v12, *a2)[3];
      result = sub_2621C719C(v12, v19);
      if (v20 < result[3])
      {
        *a1 = v18;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t *sub_2622C1338(int *a1, int *a2, int *a3, int *a4, int *a5, void **a6)
{
  sub_2622C123C(a1, a2, a3, a4, a6);
  v12 = *a5;
  v13 = *a4;
  v14 = *a6;
  v15 = sub_2621C719C(v14, *a5)[3];
  result = sub_2621C719C(v14, v13);
  if (v15 < result[3])
  {
    *a4 = v12;
    *a5 = v13;
    v17 = *a4;
    v18 = *a3;
    v19 = sub_2621C719C(v14, *a4)[3];
    result = sub_2621C719C(v14, v18);
    if (v19 < result[3])
    {
      *a3 = v17;
      *a4 = v18;
      v20 = *a3;
      v21 = *a2;
      v22 = sub_2621C719C(v14, *a3)[3];
      result = sub_2621C719C(v14, v21);
      if (v22 < result[3])
      {
        *a2 = v20;
        *a3 = v21;
        v23 = *a2;
        v24 = *a1;
        v25 = sub_2621C719C(v14, *a2)[3];
        result = sub_2621C719C(v14, v24);
        if (v25 < result[3])
        {
          *a1 = v23;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

BOOL sub_2622C1478(int *a1, int *a2, void **a3)
{
  v3 = a3;
  v4 = a2;
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *(a2 - 1);
        v8 = *a1;
        v9 = *a3;
        v10 = sub_2621C719C(*a3, v7)[3];
        if (v10 < sub_2621C719C(v9, v8)[3])
        {
          *a1 = v7;
          *(v4 - 1) = v8;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_2622C1114(a1, a1 + 1, a2 - 1, *a3);
      return 1;
    case 4:
      sub_2622C123C(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      sub_2622C1338(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v11 = a1 + 2;
  sub_2622C1114(a1, a1 + 1, a1 + 2, *a3);
  v12 = a1 + 3;
  if (a1 + 3 == v4)
  {
    return 1;
  }

  v13 = 0;
  v14 = *v3;
  v15 = 12;
  v26 = v3;
  v27 = v4;
  while (1)
  {
    v16 = *v12;
    v17 = *v11;
    v18 = sub_2621C719C(v14, *v12)[3];
    if (v18 < sub_2621C719C(v14, v17)[3])
    {
      v19 = *v3;
      v20 = v15;
      while (1)
      {
        *(a1 + v20) = v17;
        v21 = v20 - 4;
        if (v20 == 4)
        {
          break;
        }

        v17 = *(a1 + v20 - 8);
        v22 = sub_2621C719C(v19, v16)[3];
        v23 = sub_2621C719C(v19, v17);
        v20 = v21;
        if (v22 >= v23[3])
        {
          v24 = (a1 + v21);
          goto LABEL_19;
        }
      }

      v24 = a1;
LABEL_19:
      *v24 = v16;
      ++v13;
      v3 = v26;
      v4 = v27;
      if (v13 == 8)
      {
        return v12 + 1 == v27;
      }
    }

    v11 = v12;
    v15 += 4;
    if (++v12 == v4)
    {
      return 1;
    }
  }
}

uint64_t sub_2622C1688(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t sub_2622C16F8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2621C74C4(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2622C1744(uint64_t a1, uint64_t **a2)
{
  if (a2[1] == 3)
  {
    v2 = *a2;
    v3 = *(a1 + 8);
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);
    if (v5 >= v4)
    {
      v7 = *v3;
      v8 = v5 - *v3;
      v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2) + 1;
      if (v9 > 0x1555555555555555)
      {
        sub_2621CBEB0();
      }

      v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
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

      if (v11)
      {
        if (v11 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_2621C6A34();
      }

      v12 = 4 * (v8 >> 2);
      *(v12 + 8) = 0;
      *v12 = 0;
      v6 = v12 + 12;
      v13 = v12 - v8;
      memcpy((v12 - v8), v7, v8);
      *v3 = v13;
      *(v3 + 8) = v6;
      *(v3 + 16) = 0;
      if (v7)
      {
        operator delete(v7);
      }
    }

    else
    {
      *(v5 + 8) = 0;
      *v5 = 0;
      v6 = v5 + 12;
    }

    *(v3 + 8) = v6;
    v14 = *v2;
    *(v6 - 4) = *(v2 + 2);
    *(v6 - 12) = v14;
  }

  return 1;
}

uint64_t sub_2622C1890(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2874EE660;
  a2[1] = v2;
  return result;
}

uint64_t *sub_2622C1924(float *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (v3 + ((v2 + 2654435769) << 6) + ((v2 + 2654435769) >> 2) + 2654435769u) ^ (v2 + 2654435769);
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v3 + ((v2 + 2654435769) << 6) + ((v2 + 2654435769) >> 2) + 2654435769u) ^ (v2 + 2654435769);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }

  return v9 + 4;
}

void sub_2622C1D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2622C1FBC(va);
  _Unwind_Resume(a1);
}

char **sub_2622C1D84(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2622C1F5C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2622C1DD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_2622C1F5C((v2 + 2));
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

uint64_t sub_2622C1E30(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_2621C74C4((v2 + 4));
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

uint64_t *sub_2622C1E90(uint64_t a1, unint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = (((a3 + 2654435769) << 6) + a4 + ((a3 + 2654435769) >> 2) + 2654435769u) ^ (a3 + 2654435769);
  v5 = vcnt_s8(a2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (((a3 + 2654435769) << 6) + a4 + ((a3 + 2654435769) >> 2) + 2654435769u) ^ (a3 + 2654435769);
    if (v4 >= a2)
    {
      v6 = v4 % a2;
    }
  }

  else
  {
    v6 = v4 & (a2 - 1);
  }

  v7 = *(a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (*(result + 4) == a3 && *(result + 5) == a4)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= a2)
        {
          v9 %= a2;
        }
      }

      else
      {
        v9 &= a2 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2622C1F5C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {

    operator delete(v4);
  }
}

uint64_t sub_2622C1FBC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2621C74C4(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2622C2794(void *a1, _OWORD *a2)
{
  v3 = a1;
  if (objc_msgSend_count(v3, v4, v5) == 4)
  {
    v7 = 0;
    while (1)
    {
      v8 = objc_msgSend_objectAtIndexedSubscript_(v3, v6, v7);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      v11 = objc_msgSend_objectAtIndexedSubscript_(v3, v10, v7);
      v12 = sub_2622C2EB0(v11, a2);

      if (!v12)
      {
        break;
      }

      ++v7;
      ++a2;
      if (v7 == 4)
      {
        v13 = 1;
        goto LABEL_8;
      }
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

void sub_2622C2884(void *a1, _OWORD *a2)
{
  v29 = a1;
  if (objc_msgSend_count(v29, v3, v4) == 4)
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(v29, v5, 0);
    objc_msgSend_floatValue(v6, v7, v8);
    v28 = v9;
    v11 = objc_msgSend_objectAtIndexedSubscript_(v29, v10, 1);
    objc_msgSend_floatValue(v11, v12, v13);
    v27 = v14;
    v16 = objc_msgSend_objectAtIndexedSubscript_(v29, v15, 2);
    objc_msgSend_floatValue(v16, v17, v18);
    v26 = v19;
    v21 = objc_msgSend_objectAtIndexedSubscript_(v29, v20, 3);
    objc_msgSend_floatValue(v21, v22, v23);
    *&v24 = __PAIR64__(v27, v28);
    *(&v24 + 1) = __PAIR64__(v25, v26);
    *a2 = v24;
  }
}

void sub_2622C29BC(void *a1, uint64_t a2)
{
  v22 = a1;
  for (i = 0; objc_msgSend_count(v22, v3, v4) > i; ++i)
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v22, v6, i);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      break;
    }

    DWORD2(v23) = 0;
    *&v23 = 0;
    v10 = objc_msgSend_objectAtIndexedSubscript_(v22, v9, i);
    v11 = sub_2622C2EB0(v10, &v23);

    if (!v11)
    {
      break;
    }

    v13 = *(a2 + 8);
    v12 = *(a2 + 16);
    if (v13 >= v12)
    {
      v15 = (v13 - *a2) >> 4;
      if ((v15 + 1) >> 60)
      {
        sub_2621CBEB0();
      }

      v16 = v12 - *a2;
      v17 = v16 >> 3;
      if (v16 >> 3 <= (v15 + 1))
      {
        v17 = v15 + 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF0)
      {
        v18 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        sub_2621CBF10(v18);
      }

      *(16 * v15) = v23;
      v14 = 16 * v15 + 16;
      v19 = *(a2 + 8) - *a2;
      v20 = (16 * v15 - v19);
      memcpy(v20, *a2, v19);
      v21 = *a2;
      *a2 = v20;
      *(a2 + 8) = v14;
      *(a2 + 16) = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v13 = v23;
      v14 = (v13 + 1);
    }

    *(a2 + 8) = v14;
  }
}

void sub_2622C2B70(void *a1, uint64_t a2)
{
  v22 = a1;
  for (i = 0; objc_msgSend_count(v22, v3, v4) > i; ++i)
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v22, v6, i);
    v9 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, 0);
    v12 = objc_msgSend_intValue(v9, v10, v11);
    v14 = *(a2 + 8);
    v13 = *(a2 + 16);
    if (v14 >= v13)
    {
      v16 = *a2;
      v17 = &v14[-*a2];
      v18 = (v17 + 1);
      if ((v17 + 1) < 0)
      {
        sub_2621CBEB0();
      }

      v19 = v13 - v16;
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        operator new();
      }

      v21 = &v14[-*a2];
      *v17 = v12;
      v15 = v17 + 1;
      memcpy(0, v16, v21);
      *a2 = 0;
      *(a2 + 8) = v17 + 1;
      *(a2 + 16) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v14 = v12;
      v15 = v14 + 1;
    }

    *(a2 + 8) = v15;
  }
}

void sub_2622C2D10(void *a1, uint64_t a2)
{
  v22 = a1;
  for (i = 0; objc_msgSend_count(v22, v3, v4) > i; ++i)
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v22, v6, i);
    v9 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, 0);
    v12 = objc_msgSend_intValue(v9, v10, v11);
    v14 = *(a2 + 8);
    v13 = *(a2 + 16);
    if (v14 >= v13)
    {
      v16 = *a2;
      v17 = &v14[-*a2];
      v18 = (v17 + 1);
      if ((v17 + 1) < 0)
      {
        sub_2621CBEB0();
      }

      v19 = v13 - v16;
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        operator new();
      }

      v21 = &v14[-*a2];
      *v17 = v12;
      v15 = v17 + 1;
      memcpy(0, v16, v21);
      *a2 = 0;
      *(a2 + 8) = v17 + 1;
      *(a2 + 16) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v14 = v12;
      v15 = v14 + 1;
    }

    *(a2 + 8) = v15;
  }
}

BOOL sub_2622C2EB0(void *a1, _OWORD *a2)
{
  v3 = a1;
  v7 = objc_msgSend_count(v3, v4, v5);
  if (v7 == 3)
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(v3, v6, 0);
    objc_msgSend_floatValue(v8, v9, v10);
    v25 = v11;
    v13 = objc_msgSend_objectAtIndexedSubscript_(v3, v12, 1);
    objc_msgSend_floatValue(v13, v14, v15);
    v24 = v16;
    v18 = objc_msgSend_objectAtIndexedSubscript_(v3, v17, 2);
    objc_msgSend_floatValue(v18, v19, v20);
    v21 = v25;
    DWORD1(v21) = v24;
    DWORD2(v21) = v22;
    *a2 = v21;
  }

  return v7 == 3;
}

id sub_2622C3298(__n128 *a1, const char *a2, uint64_t a3)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v4 = sub_2622C3514(*a1, a1, a2, a3);
  v17[0] = v4;
  v7 = sub_2622C3514(a1[1], v4, v5, v6);
  v17[1] = v7;
  v10 = sub_2622C3514(a1[2], v7, v8, v9);
  v17[2] = v10;
  v13 = sub_2622C3514(a1[3], v10, v11, v12);
  v17[3] = v13;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v17, 4);

  return v15;
}

id sub_2622C33C8(__n128 a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a3, a4);
  v19[0] = v4;
  HIDWORD(v5) = a1.n128_u32[1];
  LODWORD(v5) = a1.n128_u32[1];
  v8 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v6, v7, v5);
  v19[1] = v8;
  v11 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v9, v10, COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2])));
  v19[2] = v11;
  v14 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v12, v13, COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[3])));
  v19[3] = v14;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v19, 4);

  return v16;
}

id sub_2622C3514(__n128 a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a3, a4);
  v16[0] = v4;
  HIDWORD(v5) = a1.n128_u32[1];
  LODWORD(v5) = a1.n128_u32[1];
  v8 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v6, v7, v5);
  v16[1] = v8;
  v11 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v9, v10, COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2])));
  v16[2] = v11;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v16, 3);

  return v13;
}

id sub_2622C362C(char **a1, const char *a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    do
    {
      v8 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v4, *v6);
      v13[0] = v8;
      v13[1] = &stru_2874F1610;
      v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v13, 2);
      objc_msgSend_addObject_(v5, v11, v10);

      ++v6;
    }

    while (v6 != v7);
  }

  return v5;
}

id sub_2622C3758(char **a1, const char *a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    do
    {
      v8 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v4, *v6);
      v13[0] = v8;
      v13[1] = &stru_2874F1610;
      v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v13, 2);
      objc_msgSend_addObject_(v5, v11, v10);

      ++v6;
    }

    while (v6 != v7);
  }

  return v5;
}

uint64_t RS3DSurfaceTypeGetDirectionalAxis(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return qword_2623A8640[a1];
  }
}

void sub_2622C51B4(void **a1, char *a2, char *a3, char *a4, unint64_t a5)
{
  if (a1)
  {
    sub_26229CC54(a1 + 1, a2, &a2[16 * a5], a5);
    sub_2622ACF80(a1 + 4, a3, &a3[a5], a5);
    sub_26225E46C(a1 + 7, a4, &a4[4 * a5], a5);
    v10 = a1[10];
    v9 = a1[11];
    if (a5 <= &v9[-v10])
    {
      if (a5 < &v9[-v10])
      {
        a1[11] = (v10 + a5);
      }
    }

    else
    {
      v11 = a1[12];
      if (v11 - v9 < a5 - &v9[-v10])
      {
        if ((a5 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_2621CBEB0();
      }

      v12 = a5 + v10;
      bzero(v9, a5 - &v9[-v10]);
      a1[11] = v12;
    }

    if (a5 >= 3)
    {
      v13 = a1[10];
      if (a5 != 3)
      {
        bzero(v13, a5 - 3);
      }

      v13[a5 - 3] = 1;
      *&v13[a5 - 2] = 770;
    }
  }
}

void sub_2622C533C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 144), a2);
  }
}

void sub_2622C534C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 152), a2);
  }
}

void *sub_2622C57A4(void *result, unint64_t a2)
{
  if (result)
  {
    if (result[7] <= a2)
    {
      return 0;
    }

    else
    {
      return (sub_2622C5800(result) + result[3] * a2 * result[5]);
    }
  }

  return result;
}

__CVBuffer *sub_2622C5800(__CVBuffer *result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    result = *(result + 1);
    if (v2)
    {
      if (result)
      {
        IsPlanar = CVPixelBufferIsPlanar(result);
        v4 = *(v1 + 1);
        if (IsPlanar)
        {

          return CVPixelBufferGetBaseAddressOfPlane(v4, 0);
        }

        else
        {

          return CVPixelBufferGetBaseAddress(v4);
        }
      }
    }
  }

  return result;
}

void sub_2622C58C8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = RSSemanticImage;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_2622C58F8(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    v3 = *(a1 + 8);
    if (v2)
    {
      if (!v3)
      {
        return;
      }

      CVPixelBufferRelease(v3);
    }

    else
    {
      if (!v3)
      {
        return;
      }

      free(v3);
    }

    *(a1 + 8) = 0;
  }
}

void *sub_2622C5968(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!a1)
  {
    return 0;
  }

  v15.receiver = a1;
  v15.super_class = RSSemanticImage;
  v11 = objc_msgSendSuper2(&v15, sel_init);
  v13 = v11;
  if (v11)
  {
    v11[5] = a2;
    v11[6] = a3;
    v11[7] = a4;
    v11[8] = a5;
    *(v11 + 4) = a6;
    sub_2622C5A18(v11, v12);
  }

  return v13;
}

uint64_t sub_2622C5A18(uint64_t result, const char *a2)
{
  v2 = result;
  v10[1] = *MEMORY[0x277D85DE8];
  if (!*(result + 64))
  {
    v4 = 4 * *(result + 48);
    result = *(result + 40) * v4 * *(result + 56);
    *(v2 + 24) = v4;
    *(v2 + 32) = result;
    if (result)
    {
      result = malloc_type_calloc(result, 1uLL, 0x100004052888210uLL);
      *(v2 + 8) = result;
    }

    else
    {
      *(v2 + 8) = 0;
    }

    return result;
  }

  if (!*(result + 40) || !*(result + 48) || !*(result + 56))
  {
    *(result + 8) = 0;
LABEL_9:
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    return result;
  }

  v9 = *MEMORY[0x277CC4DE8];
  v10[0] = MEMORY[0x277CBEC10];
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v10, &v9, 1);
  texture = 0;
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], *(v2 + 48), *(v2 + 56) * *(v2 + 40), *(v2 + 16), v3, &texture))
  {
    if (texture)
    {
      CVPixelBufferRelease(texture);
    }
  }

  else
  {
    *(v2 + 8) = texture;
  }

  result = *(v2 + 8);
  if (!result)
  {
    goto LABEL_9;
  }

  IsPlanar = CVPixelBufferIsPlanar(result);
  v6 = *(v2 + 8);
  if (IsPlanar)
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v6, 0);
  }

  else
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(v6);
  }

  *(v2 + 24) = BytesPerRowOfPlane;
  result = CVPixelBufferGetDataSize(*(v2 + 8));
  *(v2 + 32) = result;
  return result;
}

void sub_2622C5BB4(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64) == 1 && CVPixelBufferLockBaseAddress(*(a1 + 8), 0) == 0;
    v3 = sub_2622C5800(a1);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        bzero(v3, v4);
      }
    }

    if (v2)
    {
      v5 = *(a1 + 8);

      CVPixelBufferUnlockBaseAddress(v5, 1uLL);
    }
  }
}

void sub_2622C5C44(char **a1)
{
  v8 = 0;
  v2 = 0uLL;
  v7 = 0u;
  v3 = *a1;
  if (a1[1] == *a1)
  {
    v6 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      sub_2621C9004(&v7, &v3[v4]);
      v5 += 3;
      v3 = *a1;
      v4 += 24;
    }

    while (v5 < (a1[1] - *a1) >> 3);
    v2 = v7;
    v6 = v8;
  }

  *a1 = v2;
  a1[2] = v6;
  if (v3)
  {

    operator delete(v3);
  }
}

void sub_2622C5CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622C5D14(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 8);
    v4 = *a2;
    if (*a2 != v3)
    {
      v15 = 0uLL;
      v16 = 0;
      memset(v13, 0, sizeof(v13));
      v14 = 1065353216;
      v11 = vdupq_n_s32(0x42C80000u);
      do
      {
        v6 = vmulq_f32(*(a1 + 16 * *v4), v11);
        v6.i32[3] = 0;
        v7 = _simd_round_f4(v6);
        v8 = vcvt_s32_f32(*v7.f32);
        v7.i16[0] = 0;
        v7.i16[1] = v8.i16[0];
        v7.i16[2] = v8.i16[2];
        v7.i16[3] = v7.f32[2];
        v12 = v7.i64[0];
        v9 = v7.i64[0];
        if (!sub_262295160(v13, v7.u64[0]))
        {
          sub_2622C5E50(v13, v9, &v12);
          sub_2621C9004(&v15, v4);
        }

        ++v4;
      }

      while (v4 != v3);
      v10 = *a2;
      *a2 = v15;
      *(a2 + 16) = v16;
      sub_2621C74C4(v13);
      if (v10)
      {
        operator delete(v10);
      }
    }
  }
}

void sub_2622C5E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  sub_2621C74C4(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2622C5E50(void *a1, unint64_t a2, void *a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
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
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
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

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }
}

void sub_2622C606C(uint64_t a1, uint64_t **a2)
{
  if (a1)
  {
    v2 = a2[1];
    if (*a2 != v2)
    {
      v3 = v2 - *a2;
      if (!(v3 >> 60))
      {
        sub_2621CBF10(v3);
      }

      sub_2621CBEB0();
    }
  }
}

void sub_2622C6368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

double sub_2622C6390(__n128 *a1, __n128 *a2, unint64_t a3, int32x4_t *a4, int64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = a1;
    if (a3 == 2)
    {
      a6 = a2[-1];
      v8 = *a1;
      v9 = *a1;
      if (a6.n128_i32[0] < v9 || a6.n128_i32[0] <= v9 && (a6.n128_i32[1] < v8.i32[1] || a6.n128_i32[1] <= v8.i32[1] && (vmovn_s32(vcgtq_s32(v8, *&a6)).i32[1] & 1) != 0))
      {
        *a1 = a6;
        a2[-1] = v8;
      }
    }

    else if (a3 > 128)
    {
      v21 = a4;
      v22 = a3 >> 1;
      v23 = &a1[a3 >> 1];
      v24 = a3 >> 1;
      if (a3 <= a5)
      {
        *v26.i64 = sub_2622C6674(a1, v23, v24, a4, a6);
        v27 = &v21[v22];
        a6.n128_f64[0] = sub_2622C6674(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v27, v26);
        v28 = &v21[a3];
        v29 = v27;
        while (v29 != v28)
        {
          a6 = *v29;
          v30 = *v29;
          v31 = *v21;
          v32 = *v21;
          if (v30 < v32 || v30 <= v32 && (a6.n128_i32[1] < v31.i32[1] || a6.n128_i32[1] <= v31.i32[1] && (vmovn_s32(vcgtq_s32(v31, *&a6)).i32[1] & 1) != 0))
          {
            *v7 = a6;
            ++v29;
          }

          else
          {
            *v7 = v31;
            ++v21;
          }

          ++v7;
          if (v21 == v27)
          {
            while (v29 != v28)
            {
              v34 = *v29++;
              a6.n128_u64[0] = v34.i64[0];
              *v7++ = v34;
            }

            return a6.n128_f64[0];
          }
        }

        while (v21 != v27)
        {
          v33 = *v21++;
          a6.n128_u64[0] = v33.i64[0];
          *v7++ = v33;
        }
      }

      else
      {
        *v25.i64 = sub_2622C6390(a1, v23, v24, a4, a5, a6);
        sub_2622C6390(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v21, a5, v25);

        sub_2622C6924(v7, &v7[a3 >> 1], a2, a3 >> 1, a3 - (a3 >> 1), v21, a5);
      }
    }

    else if (a1 != a2)
    {
      v11 = &a1[1];
      if (&a1[1] != a2)
      {
        v12 = 0;
        v13 = a1;
        do
        {
          v14 = v13;
          v13 = v11;
          a6 = *v11;
          v15 = *v11;
          v16 = *v14;
          v17 = *v14;
          if (v15 < v17 || v15 <= v17 && (a6.n128_i32[1] < v16.i32[1] || a6.n128_i32[1] <= v16.i32[1] && (vmovn_s32(vcgtq_s32(v16, *&a6)).i32[1] & 1) != 0))
          {
            *v13 = v16;
            if (v14 == a1)
            {
LABEL_18:
              v14 = a1;
            }

            else
            {
              v18 = v12;
              while (1)
              {
                v19 = *(&a1[-1] + v18);
                if (v15 >= v19.i32[0])
                {
                  if (v15 > v19.i32[0])
                  {
                    goto LABEL_19;
                  }

                  if (a6.n128_i32[1] >= v19.i32[1] && (a6.n128_i32[1] > v19.i32[1] || (vmovn_s32(vcgtq_s32(v19, *&a6)).i32[1] & 1) == 0))
                  {
                    break;
                  }
                }

                --v14;
                *(a1 + v18) = v19;
                v18 -= 16;
                if (!v18)
                {
                  goto LABEL_18;
                }
              }

              v14 = (a1 + v18);
            }

LABEL_19:
            *v14 = a6;
          }

          v11 = &v13[1];
          v12 += 16;
        }

        while (&v13[1] != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

double sub_2622C6674(__n128 *a1, __n128 *a2, unint64_t a3, int32x4_t *a4, int32x4_t a5)
{
  if (a3)
  {
    v5 = a4;
    v7 = a1;
    if (a3 == 1)
    {
      v9 = a1;
LABEL_35:
      a5 = *v9;
      *v5 = *v9;
      return *a5.i64;
    }

    if (a3 == 2)
    {
      v9 = a2 - 1;
      v10 = a2[-1];
      v11 = *a1;
      v12 = *a1;
      if (v10.i32[0] < v12 || v10.i32[0] <= v12 && (v10.i32[1] < v11.i32[1] || v10.i32[1] <= v11.i32[1] && (vmovn_s32(vcgtq_s32(v11, v10)).i32[1] & 1) != 0))
      {
        v9 = a1;
      }

      else
      {
        v10 = *a1;
      }

      *a4 = v10;
      v5 = a4 + 1;
      goto LABEL_35;
    }

    if (a3 > 8)
    {
      v26 = &a1[a3 >> 1];
      *v27.i64 = sub_2622C6390(a1, v26, a3 >> 1, a4, a3 >> 1, a5);
      *a5.i64 = sub_2622C6390(&v7[a3 >> 1], a2, a3 - (a3 >> 1), &v5[a3 >> 1], a3 - (a3 >> 1), v27);
      v28 = &v7[a3 >> 1];
      while (v28 != a2)
      {
        a5 = *v28;
        v29 = *v28;
        v30 = *v7;
        v31 = *v7;
        if (v29 < v31 || v29 <= v31 && (a5.i32[1] < v30.i32[1] || a5.i32[1] <= v30.i32[1] && (vmovn_s32(vcgtq_s32(v30, a5)).i32[1] & 1) != 0))
        {
          *v5 = a5;
          ++v28;
        }

        else
        {
          *v5 = v30;
          ++v7;
        }

        ++v5;
        if (v7 == v26)
        {
          while (v28 != a2)
          {
            v33 = *v28++;
            a5.i64[0] = v33.n128_u64[0];
            *v5++ = v33;
          }

          return *a5.i64;
        }
      }

      while (v7 != v26)
      {
        v32 = *v7++;
        a5.i64[0] = v32.i64[0];
        *v5++ = v32;
      }
    }

    else if (a1 != a2)
    {
      v13 = a1 + 1;
      a5 = *a1;
      *a4 = *a1;
      if (&a1[1] != a2)
      {
        v14 = 0;
        v15 = a4;
        v16 = a4;
        do
        {
          v17 = *v16++;
          a5 = v17;
          v18 = *v13;
          v19 = *v13;
          v20 = v19 <= v17.n128_u32[0];
          if (v19 < v17.n128_i32[0] || v20 && (v18.i32[1] < a5.i32[1] || v18.i32[1] <= a5.i32[1] && (vmovn_s32(vcgtq_s32(a5, v18)).i32[1] & 1) != 0))
          {
            v15[1] = a5;
            v21 = a4;
            if (v15 != a4)
            {
              v22 = v14;
              while (1)
              {
                v23 = *v13;
                v24 = *v13;
                v25 = *(&a4[-1] + v22);
                if (v24 >= v25.i32[0])
                {
                  if (v24 > v25.i32[0])
                  {
                    v21 = v15;
                    goto LABEL_29;
                  }

                  if (v23.i32[1] >= v25.i32[1] && (v23.i32[1] > v25.i32[1] || (vmovn_s32(vcgtq_s32(v25, v23)).i32[1] & 1) == 0))
                  {
                    break;
                  }
                }

                --v15;
                *(a4 + v22) = v25;
                v22 -= 16;
                if (!v22)
                {
                  v21 = a4;
                  goto LABEL_29;
                }
              }

              v21 = (a4 + v22);
            }

LABEL_29:
            a5 = *v13;
            *v21 = *v13;
          }

          else
          {
            *v16 = v18;
          }

          ++v13;
          v14 += 16;
          v15 = v16;
        }

        while (v13 != a2);
      }
    }
  }

  return *a5.i64;
}

int32x4_t *sub_2622C6924(int32x4_t *result, int32x4_t *a2, int32x4_t *a3, uint64_t a4, uint64_t a5, int32x4_t *a6, uint64_t a7)
{
  if (a5)
  {
    v8 = a6;
    v9 = a5;
    v12 = result;
    while (v9 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v13 = *a2;
      v14 = *a2;
      v15 = HIDWORD(a2->i64[0]);
      while (1)
      {
        v16 = *v12;
        v17 = *v12;
        if (v14 < v17 || v14 <= v17 && (v15 < v16.i32[1] || v15 <= v16.i32[1] && (vmovn_s32(vcgtq_s32(v16, v13)).i32[1] & 1) != 0))
        {
          break;
        }

        ++v12;
        if (!--a4)
        {
          return result;
        }
      }

      if (a4 >= v9)
      {
        if (a4 == 1)
        {
          *v12 = v13;
          *a2 = v16;
          return result;
        }

        v28 = a4 / 2;
        v20 = &v12[a4 / 2];
        v19 = a2;
        if (a2 != a3)
        {
          v34 = a3 - a2;
          v35 = *v20;
          v36 = HIDWORD(v20->i64[0]);
          v19 = a2;
          do
          {
            v37 = v34 >> 1;
            v38 = &v19[v34 >> 1];
            v39 = *v38;
            v40 = *v38;
            if (v40 < v35 || v40 <= v35 && (v39.i32[1] < v36 || v39.i32[1] <= v36 && (vmovn_s32(vcgtq_s32(*v20, v39)).i32[1] & 1) != 0))
            {
              v19 = v38 + 1;
              v37 = v34 + ~v37;
            }

            v34 = v37;
          }

          while (v37);
        }

        v18 = v19 - a2;
      }

      else
      {
        v18 = v9 / 2;
        v19 = &a2[v9 / 2];
        v20 = a2;
        if (a2 != v12)
        {
          v21 = a2 - v12;
          v22 = *v19;
          v23 = HIDWORD(v19->i64[0]);
          v20 = v12;
          do
          {
            v24 = v21 >> 1;
            v25 = &v20[v21 >> 1];
            v26 = *v25;
            v27 = *v25;
            if (v22 >= v27 && (v22 > v27 || v23 >= v26.i32[1] && (v23 > v26.i32[1] || (vmovn_s32(vcgtq_s32(v26, *v19)).i32[1] & 1) == 0)))
            {
              v20 = v25 + 1;
              v24 = v21 + ~v24;
            }

            v21 = v24;
          }

          while (v24);
        }

        v28 = v20 - v12;
      }

      v29 = v19;
      v30 = a2 - v20;
      if (a2 != v20)
      {
        v29 = v20;
        v31 = v19 - a2;
        if (v19 != a2)
        {
          if (&v20[1] == a2)
          {
            v78 = *v20;
            v32 = v19 - a2;
            v33 = a3;
            memmove(v20, a2, v19 - a2);
            a3 = v33;
            v29 = (v20 + v32);
            *v29 = v78;
          }

          else if (&a2[1] == v19)
          {
            v41 = v19[-1];
            v29 = v20 + 1;
            if (&v19[-1] != v20)
            {
              v79 = a3;
              v77 = v19[-1];
              memmove(&v20[1], v20, &v19[-1] - v20);
              v41 = v77;
              a3 = v79;
            }

            *v20 = v41;
          }

          else
          {
            v42 = v30 >> 4;
            if (v30 >> 4 == v31 >> 4)
            {
              v43 = v20 + 1;
              v44 = a2 + 1;
              do
              {
                v45 = v43[-1];
                v43[-1] = v44[-1];
                v44[-1] = v45;
                if (v43 == a2)
                {
                  break;
                }

                ++v43;
              }

              while (v44++ != v19);
              v29 = a2;
            }

            else
            {
              v47 = v31 >> 4;
              v48 = v30 >> 4;
              do
              {
                v49 = v48;
                v48 = v47;
                v47 = v49 % v47;
              }

              while (v47);
              v50 = &v20[v48];
              do
              {
                v51 = v50[-1];
                --v50;
                v52 = v51;
                v53 = (v50 + v30);
                v54 = v50;
                do
                {
                  v55 = v53;
                  *v54 = *v53;
                  v56 = &v53[v42];
                  v57 = __OFSUB__(v42, v19 - v53);
                  v59 = v42 - (v19 - v53);
                  v58 = (v59 < 0) ^ v57;
                  v53 = &v20[v59];
                  if (v58)
                  {
                    v53 = v56;
                  }

                  v54 = v55;
                }

                while (v53 != v50);
                *v55 = v52;
              }

              while (v50 != v20);
              v29 = (v20 + v31);
            }
          }
        }
      }

      a4 -= v28;
      v9 -= v18;
      if (v28 + v18 >= a4 + v9)
      {
        v8 = a6;
        result = sub_2622C6924(v29, v19, a3, a4, v9, a6, a7);
        v19 = v20;
        v9 = v18;
        a4 = v28;
        a3 = v29;
      }

      else
      {
        v60 = v12;
        v8 = a6;
        v61 = a3;
        result = sub_2622C6924(v60, v20, v29, v28, v18, a6, a7);
        a3 = v61;
        v12 = v29;
      }

      a2 = v19;
      if (!v9)
      {
        return result;
      }
    }

    if (a4 <= v9)
    {
      if (a2 != v12)
      {
        v70 = v8;
        v71 = v12;
        do
        {
          v72 = *v71++;
          *v70++ = v72;
        }

        while (v71 != a2);
        while (a2 != a3)
        {
          v73 = *a2;
          v74 = *a2;
          v75 = *v8;
          v76 = *v8;
          if (v74 < v76 || v74 <= v76 && (v73.i32[1] < v75.i32[1] || v73.i32[1] <= v75.i32[1] && (vmovn_s32(vcgtq_s32(v75, v73)).i32[1] & 1) != 0))
          {
            *v12 = v73;
            ++a2;
          }

          else
          {
            *v12 = v75;
            ++v8;
          }

          ++v12;
          if (v8 == v70)
          {
            return result;
          }
        }

        return memmove(v12, v8, v70 - v8);
      }
    }

    else if (a2 != a3)
    {
      v62 = v8;
      v63 = a2;
      do
      {
        v64 = *v63++;
        *v62++ = v64;
      }

      while (v63 != a3);
      while (a2 != v12)
      {
        v65 = a2 - 1;
        v66 = a2[-1];
        v67 = v62[-1];
        if (v67.i32[0] >= v66.i32[0] && (v67.i32[0] > v66.i32[0] || v67.i32[1] >= v66.i32[1] && (v67.i32[1] > v66.i32[1] || (vmovn_s32(vcgtq_s32(v66, v67)).i32[1] & 1) == 0)))
        {
          v66 = v62[-1];
          v65 = a2;
          --v62;
        }

        a3[-1] = v66;
        --a3;
        a2 = v65;
        if (v62 == v8)
        {
          return result;
        }
      }

      if (v62 != v8)
      {
        v68 = 0xFFFFFFFFFFFFFFFLL;
        do
        {
          v69 = v62[-1];
          --v62;
          a3[v68--] = v69;
        }

        while (v62 != v8);
      }
    }
  }

  return result;
}

void sub_2622C6EA0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 8);
    v4 = *a2;
    if (*a2 != v3)
    {
      v28 = 0uLL;
      v6 = 0uLL;
      v7 = v4;
      v29 = 0;
      do
      {
        v8 = *v7++;
        v9 = *(a1 + 16 * v8);
        v6 = vaddq_f32(v6, v9);
      }

      while (v7 != v3);
      v9.f32[0] = (v3 - v4);
      v10 = vdivq_f32(v6, vdupq_lane_s32(*v9.f32, 0));
      v11 = 0uLL;
      v12 = v4;
      do
      {
        v13 = *v12++;
        v14 = vsubq_f32(*(a1 + 16 * v13), v10);
        v11 = vmlaq_f32(v11, v14, v14);
      }

      while (v12 != v3);
      v27 = v10;
      _Q0 = vdivq_f32(v11, vdupq_lane_s32(*v9.f32, 0));
      v16 = vsqrt_f32(*&vextq_s8(_Q0, _Q0, 4uLL));
      v17 = sqrtf(*_Q0.i32) * 3.0;
      __asm { FMOV            V0.2S, #3.0 }

      v22 = vmul_f32(v16, *_Q0.i8);
      do
      {
        v23 = vabdq_f32(*(a1 + 16 * *v4), v27);
        if (*v23.i32 < v17)
        {
          v24 = vmvn_s8(vcge_f32(*&vextq_s8(v23, v23, 4uLL), v22));
          if (v24.i8[0] & 1) != 0 && (v24.i8[4])
          {
            sub_2621C9004(&v28, v4);
          }
        }

        ++v4;
      }

      while (v4 != v3);
      v25 = *a2;
      v26 = v29;
      *a2 = v28;
      *(a2 + 16) = v26;
      if (v25)
      {
        operator delete(v25);
      }
    }
  }
}

void sub_2622C6FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2622C6FF4(uint64_t a1, float32x2_t a2)
{
  v2 = *(a1 + 72);
  v3 = (a1 + 80);
  if (v2 == (a1 + 80))
  {
    return 0;
  }

  while (1)
  {
    v5 = sub_2621DC76C(a2, v2[5], v2[6], 0.00001);
    result = v5 <= 0.2;
    if (v5 <= 0.2)
    {
      break;
    }

    v7 = v2[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v2[2];
        v9 = *v8 == v2;
        v2 = v8;
      }

      while (!v9);
    }

    v2 = v8;
    if (v8 == v3)
    {
      return 0;
    }
  }

  return result;
}

void sub_2622C7134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2621DED18(&a9);
  _Unwind_Resume(a1);
}

void **sub_2622C7154(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 3)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    v10 = v8 >> 2;
    if (v8 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_2621CC71C(v7, v11);
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 3)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14;
        v14 += 8;
        *v15 = v16;
        v15 += 8;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

uint64_t *sub_2622C7278(uint64_t *result)
{
  if (result[2])
  {
    v1 = *result;
    v2 = result[1];
    *result = (result + 1);
    *(v2 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (*(v1 + 8))
    {
      v1 = *(v1 + 8);
    }

    v3 = result;
    v4 = v1;
    v5 = v1;
    if (v1)
    {
      v4 = sub_2621CBE5C(v1);
    }

    return sub_2622CA89C(&v3);
  }

  return result;
}

void sub_2622C72E8(uint64_t a1, uint64_t a2)
{
  v39[10] = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0xFFFFFFFF00000000;
  *(a1 + 16) = 1065353216;
  *(a1 + 24) = 3;
  if (a2)
  {
    *(a1 + 32) = 1058893870;
    v27 = 0x3F80000000000000;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    sub_2621DC430(&v22, &v27, &v28, 2uLL);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v3 = v22;
    sub_2621C8E70(&v31, v22, v23, (v23 - v22) >> 2);
    v34 = 1;
    v25 = 0x42C800003F800000;
    v21 = 0;
    v20 = 0uLL;
    sub_2621DC430(&v20, &v25, &v26, 2uLL);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v4 = v20;
    sub_2621C8E70(&v35, v20, *(&v20 + 1), (*(&v20 + 1) - v20) >> 2);
    v38 = 2;
    sub_262217F3C((a1 + 40), &v31, v39);
    v5 = 0;
    while (1)
    {
      v6 = *(&v35 + v5);
      if (v6)
      {
        *(&v36 + v5) = v6;
        operator delete(v6);
      }

      v5 -= 32;
      if (v5 == -64)
      {
        if (v4)
        {
          operator delete(v4);
        }

        if (v3)
        {
          operator delete(v3);
        }

        *(a1 + 64) = xmmword_2623A7840;
        *(a1 + 80) = 1027620402;
        *(a1 + 112) = 0xBC31136ABDB71A7DLL;
        *(a1 + 152) = 1033090475;
        v27 = 0x4000000000000000;
        v23 = 0;
        v24 = 0;
        v22 = 0;
        sub_2621DC430(&v22, &v27, &v28, 2uLL);
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v7 = v22;
        sub_2621C8E70(&v31, v22, v23, (v23 - v22) >> 2);
        v34 = 1;
        v25 = 0x42C8000040000000;
        v21 = 0;
        v20 = 0uLL;
        sub_2621DC430(&v20, &v25, &v26, 2uLL);
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v8 = v20;
        sub_2621C8E70(&v35, v20, *(&v20 + 1), (*(&v20 + 1) - v20) >> 2);
        v38 = 2;
        sub_262217F3C((a1 + 160), &v31, v39);
        v9 = 0;
        while (1)
        {
          v10 = *(&v35 + v9);
          if (v10)
          {
            *(&v36 + v9) = v10;
            operator delete(v10);
          }

          v9 -= 32;
          if (v9 == -64)
          {
            if (v8)
            {
              operator delete(v8);
            }

            if (v7)
            {
              operator delete(v7);
            }

            *(a1 + 184) = 1036831949;
            *(a1 + 144) = 0x4270000041F00000;
            v30 = 0x3F80000000000000;
            v23 = 0;
            v24 = 0;
            v22 = 0;
            sub_2621DC430(&v22, &v30, &v31, 2uLL);
            v19 = 1050253722;
            v28 = 0;
            v29 = 0;
            v27 = 0;
            sub_2621DC430(&v27, &v19, &v20, 1uLL);
            v20 = 0uLL;
            v21 = 0;
            sub_2622180B8(&v20, &v27, &v30, 1uLL);
          }
        }
      }
    }
  }

  *(a1 + 32) = 1063675494;
  v27 = 0x3F80000000000000;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  sub_2621DC430(&v22, &v27, &v28, 2uLL);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v11 = v22;
  sub_2621C8E70(&v31, v22, v23, (v23 - v22) >> 2);
  v34 = 1;
  v25 = 0x42C800003F800000;
  v21 = 0;
  v20 = 0uLL;
  sub_2621DC430(&v20, &v25, &v26, 2uLL);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v12 = v20;
  sub_2621C8E70(&v35, v20, *(&v20 + 1), (*(&v20 + 1) - v20) >> 2);
  v38 = 2;
  sub_262217F3C((a1 + 40), &v31, v39);
  v13 = 0;
  while (1)
  {
    v14 = *(&v35 + v13);
    if (v14)
    {
      *(&v36 + v13) = v14;
      operator delete(v14);
    }

    v13 -= 32;
    if (v13 == -64)
    {
      if (v12)
      {
        operator delete(v12);
      }

      if (v11)
      {
        operator delete(v11);
      }

      *(a1 + 64) = xmmword_2623A7840;
      *(a1 + 80) = 1039348752;
      *(a1 + 112) = 0xBD11F167BCA30516;
      *(a1 + 152) = 1025477729;
      v27 = 0x4000000000000000;
      v23 = 0;
      v24 = 0;
      v22 = 0;
      sub_2621DC430(&v22, &v27, &v28, 2uLL);
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v15 = v22;
      sub_2621C8E70(&v31, v22, v23, (v23 - v22) >> 2);
      v34 = 1;
      v25 = 0x42C8000040000000;
      v21 = 0;
      v20 = 0uLL;
      sub_2621DC430(&v20, &v25, &v26, 2uLL);
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v16 = v20;
      sub_2621C8E70(&v35, v20, *(&v20 + 1), (*(&v20 + 1) - v20) >> 2);
      v38 = 2;
      sub_262217F3C((a1 + 160), &v31, v39);
      v17 = 0;
      while (1)
      {
        v18 = *(&v35 + v17);
        if (v18)
        {
          *(&v36 + v17) = v18;
          operator delete(v18);
        }

        v17 -= 32;
        if (v17 == -64)
        {
          if (v16)
          {
            operator delete(v16);
          }

          if (v15)
          {
            operator delete(v15);
          }

          *(a1 + 184) = 1036831949;
          *(a1 + 144) = 0x4270000041F00000;
          v30 = 0x3F80000000000000;
          v23 = 0;
          v24 = 0;
          v22 = 0;
          sub_2621DC430(&v22, &v30, &v31, 2uLL);
          v19 = 1050253722;
          v28 = 0;
          v29 = 0;
          v27 = 0;
          sub_2621DC430(&v27, &v19, &v20, 1uLL);
          v20 = 0uLL;
          v21 = 0;
          sub_2622180B8(&v20, &v27, &v30, 1uLL);
        }
      }
    }
  }
}

void sub_2622C7E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void **a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void **a39)
{
  v42 = -144;
  v43 = v39;
  do
  {
    v43 = sub_262218330(v43) - 48;
    v42 += 48;
  }

  while (v42);
  *(v40 + 24) = &a11;
  sub_2621E1D40(&a30);
  v44 = *(v40 + 32);
  if (v44)
  {
    *(v40 + 40) = v44;
    operator delete(v44);
  }

  if (__p)
  {
    operator delete(__p);
  }

  __p = &a19;
  sub_2621E1D40(&__p);
  v45 = *(v40 + 64);
  if (v45)
  {
    *(v40 + 72) = v45;
    operator delete(v45);
  }

  v46 = *(v40 + 96);
  if (v46)
  {
    operator delete(v46);
  }

  *(v40 + 96) = &a23;
  sub_2621E1D40(&a39);
  v47 = *(v40 + 120);
  if (v47)
  {
    *(v40 + 128) = v47;
    operator delete(v47);
  }

  if (*v40)
  {
    operator delete(*v40);
  }

  _Unwind_Resume(a1);
}

void sub_2622C83B0(uint64_t a1, uint64_t a2)
{
  v39[10] = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0xFFFFFFFF00000000;
  *(a1 + 16) = 1065353216;
  *(a1 + 24) = 3;
  if (a2)
  {
    *(a1 + 32) = 1058811162;
    v27 = 0x3F80000000000000;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    sub_2621DC430(&v22, &v27, &v28, 2uLL);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v3 = v22;
    sub_2621C8E70(&v31, v22, v23, (v23 - v22) >> 2);
    v34 = 1;
    v25 = 0x42C800003F800000;
    v21 = 0;
    v20 = 0uLL;
    sub_2621DC430(&v20, &v25, &v26, 2uLL);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v4 = v20;
    sub_2621C8E70(&v35, v20, *(&v20 + 1), (*(&v20 + 1) - v20) >> 2);
    v38 = 2;
    sub_262217F3C((a1 + 40), &v31, v39);
    v5 = 0;
    while (1)
    {
      v6 = *(&v35 + v5);
      if (v6)
      {
        *(&v36 + v5) = v6;
        operator delete(v6);
      }

      v5 -= 32;
      if (v5 == -64)
      {
        if (v4)
        {
          operator delete(v4);
        }

        if (v3)
        {
          operator delete(v3);
        }

        *(a1 + 64) = xmmword_2623A7840;
        *(a1 + 80) = 1050374069;
        *(a1 + 112) = 0xBDCCCCCD3CC4E8F0;
        *(a1 + 152) = 1036276941;
        v27 = 0x4000000000000000;
        v23 = 0;
        v24 = 0;
        v22 = 0;
        sub_2621DC430(&v22, &v27, &v28, 2uLL);
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v7 = v22;
        sub_2621C8E70(&v31, v22, v23, (v23 - v22) >> 2);
        v34 = 1;
        v25 = 0x42C8000040000000;
        v21 = 0;
        v20 = 0uLL;
        sub_2621DC430(&v20, &v25, &v26, 2uLL);
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v8 = v20;
        sub_2621C8E70(&v35, v20, *(&v20 + 1), (*(&v20 + 1) - v20) >> 2);
        v38 = 2;
        sub_262217F3C((a1 + 160), &v31, v39);
        v9 = 0;
        while (1)
        {
          v10 = *(&v35 + v9);
          if (v10)
          {
            *(&v36 + v9) = v10;
            operator delete(v10);
          }

          v9 -= 32;
          if (v9 == -64)
          {
            if (v8)
            {
              operator delete(v8);
            }

            if (v7)
            {
              operator delete(v7);
            }

            *(a1 + 184) = 1036831949;
            *(a1 + 144) = 0x4270000041F00000;
            v30 = 0x3F80000000000000;
            v23 = 0;
            v24 = 0;
            v22 = 0;
            sub_2621DC430(&v22, &v30, &v31, 2uLL);
            v19 = 1050253722;
            v28 = 0;
            v29 = 0;
            v27 = 0;
            sub_2621DC430(&v27, &v19, &v20, 1uLL);
            v20 = 0uLL;
            v21 = 0;
            sub_2622180B8(&v20, &v27, &v30, 1uLL);
          }
        }
      }
    }
  }

  *(a1 + 32) = 1047642390;
  v27 = 0x3F80000000000000;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  sub_2621DC430(&v22, &v27, &v28, 2uLL);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v11 = v22;
  sub_2621C8E70(&v31, v22, v23, (v23 - v22) >> 2);
  v34 = 1;
  v25 = 0x42C800003F800000;
  v21 = 0;
  v20 = 0uLL;
  sub_2621DC430(&v20, &v25, &v26, 2uLL);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v12 = v20;
  sub_2621C8E70(&v35, v20, *(&v20 + 1), (*(&v20 + 1) - v20) >> 2);
  v38 = 2;
  sub_262217F3C((a1 + 40), &v31, v39);
  v13 = 0;
  while (1)
  {
    v14 = *(&v35 + v13);
    if (v14)
    {
      *(&v36 + v13) = v14;
      operator delete(v14);
    }

    v13 -= 32;
    if (v13 == -64)
    {
      if (v12)
      {
        operator delete(v12);
      }

      if (v11)
      {
        operator delete(v11);
      }

      *(a1 + 64) = xmmword_2623A7840;
      *(a1 + 80) = 1049802648;
      *(a1 + 112) = 0xBD5CE8C1BCB998DDLL;
      *(a1 + 152) = 1035019953;
      v27 = 0x4000000000000000;
      v23 = 0;
      v24 = 0;
      v22 = 0;
      sub_2621DC430(&v22, &v27, &v28, 2uLL);
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v15 = v22;
      sub_2621C8E70(&v31, v22, v23, (v23 - v22) >> 2);
      v34 = 1;
      v25 = 0x42C8000040000000;
      v21 = 0;
      v20 = 0uLL;
      sub_2621DC430(&v20, &v25, &v26, 2uLL);
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v16 = v20;
      sub_2621C8E70(&v35, v20, *(&v20 + 1), (*(&v20 + 1) - v20) >> 2);
      v38 = 2;
      sub_262217F3C((a1 + 160), &v31, v39);
      v17 = 0;
      while (1)
      {
        v18 = *(&v35 + v17);
        if (v18)
        {
          *(&v36 + v17) = v18;
          operator delete(v18);
        }

        v17 -= 32;
        if (v17 == -64)
        {
          if (v16)
          {
            operator delete(v16);
          }

          if (v15)
          {
            operator delete(v15);
          }

          *(a1 + 184) = 1036831949;
          *(a1 + 144) = 0x4270000041F00000;
          v30 = 0x3F80000000000000;
          v23 = 0;
          v24 = 0;
          v22 = 0;
          sub_2621DC430(&v22, &v30, &v31, 2uLL);
          v19 = 1050253722;
          v28 = 0;
          v29 = 0;
          v27 = 0;
          sub_2621DC430(&v27, &v19, &v20, 1uLL);
          v20 = 0uLL;
          v21 = 0;
          sub_2622180B8(&v20, &v27, &v30, 1uLL);
        }
      }
    }
  }
}

void sub_2622C8F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void **a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void **a39)
{
  v42 = -144;
  v43 = v39;
  do
  {
    v43 = sub_262218330(v43) - 48;
    v42 += 48;
  }

  while (v42);
  *(v40 + 24) = &a11;
  sub_2621E1D40(&a30);
  v44 = *(v40 + 32);
  if (v44)
  {
    *(v40 + 40) = v44;
    operator delete(v44);
  }

  if (__p)
  {
    operator delete(__p);
  }

  __p = &a19;
  sub_2621E1D40(&__p);
  v45 = *(v40 + 64);
  if (v45)
  {
    *(v40 + 72) = v45;
    operator delete(v45);
  }

  v46 = *(v40 + 96);
  if (v46)
  {
    operator delete(v46);
  }

  *(v40 + 96) = &a23;
  sub_2621E1D40(&a39);
  v47 = *(v40 + 120);
  if (v47)
  {
    *(v40 + 128) = v47;
    operator delete(v47);
  }

  if (*v40)
  {
    operator delete(*v40);
  }

  _Unwind_Resume(a1);
}

void sub_2622C9478(void *a1)
{
  if (a1)
  {
    sub_2622C9478(*a1);
    sub_2622C9478(a1[1]);
    sub_2622C9508((a1 + 4));

    operator delete(a1);
  }
}

uint64_t sub_2622C94CC(uint64_t a1)
{
  sub_2622C9478(*(a1 + 40));
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2622C9508(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;

    operator delete(v2);
  }
}

void sub_2622C9560(uint64_t a1, int a2)
{
  v16[12] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v15 = 0x4000000000000000;
    v5 = 0;
    v6 = 0;
    v4 = 0;
    sub_2621DC430(&v4, &v15, v16, 2uLL);
    v8 = 0x3F0000003ECCCCCDLL;
    v10 = 0;
    v11 = 0;
    v9 = 0;
    sub_2621DC430(&v9, &v8, &v9, 2uLL);
    v7 = 0x3ECCCCCD3F59999ALL;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    sub_2621DC430(&v12, &v7, &v8, 2uLL);
    v2 = 0uLL;
    v3 = 0;
    sub_2622180B8(&v2, &v9, &v15, 2uLL);
  }

  v15 = 0x4000000000000000;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_2621DC430(&v4, &v15, v16, 2uLL);
  v8 = 0x3F0000003ECCCCCDLL;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  sub_2621DC430(&v9, &v8, &v9, 2uLL);
  v7 = 0x3ECCCCCD3F59999ALL;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  sub_2621DC430(&v12, &v7, &v8, 2uLL);
  v2 = 0uLL;
  v3 = 0;
  sub_2622180B8(&v2, &v9, &v15, 2uLL);
}

void sub_2622C9BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v39 = -96;
  v40 = v36;
  do
  {
    v40 = sub_262218330(v40) - 48;
    v39 += 48;
  }

  while (v39);
  a21 = &a9;
  sub_2621E1D40(&a21);
  v41 = &a36;
  v42 = -96;
  while (1)
  {
    v43 = *(v41 - 1);
    if (v43)
    {
      *v41 = v43;
      operator delete(v43);
    }

    v41 -= 3;
    v42 += 24;
    if (!v42)
    {
      if (__p)
      {
        operator delete(__p);
      }

      a26 = &a15;
      sub_2621E1D40(&a26);
      v44 = (v37 - 192);
      v45 = -48;
      while (1)
      {
        v46 = *(v44 - 1);
        if (v46)
        {
          *v44 = v46;
          operator delete(v46);
        }

        v44 -= 3;
        v45 += 24;
        if (!v45)
        {
          if (a18)
          {
            operator delete(a18);
          }

          _Unwind_Resume(a1);
        }
      }
    }
  }
}

uint64_t sub_2622C9EC4(uint64_t result)
{
  v1 = *(result + 88);
  if (v1 != (result + 96))
  {
    do
    {
      v2 = v1[7];
      v3 = v1[8];
      while (v2 != v3)
      {
        v4 = *v2;
        v2 += 3;
        v5 = v4[1];
        *v4 = *(result + 112) + *v4;
        v4[1] = *(result + 116) + v5;
      }

      v6 = v1[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v1[2];
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v1 = v7;
    }

    while (v7 != (result + 96));
  }

  return result;
}

void sub_2622C9F40(uint64_t a1, int a2)
{
  v16[12] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v15 = 0x3F80000000000000;
    v5 = 0;
    v6 = 0;
    v4 = 0;
    sub_2621DC430(&v4, &v15, v16, 2uLL);
    v8 = 0x3F0000003F000000;
    v10 = 0;
    v11 = 0;
    v9 = 0;
    sub_2621DC430(&v9, &v8, &v9, 2uLL);
    v7 = 0x3ECCCCCD3F733333;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    sub_2621DC430(&v12, &v7, &v8, 2uLL);
    v2 = 0uLL;
    v3 = 0;
    sub_2622180B8(&v2, &v9, &v15, 2uLL);
  }

  v15 = 0x3F80000000000000;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_2621DC430(&v4, &v15, v16, 2uLL);
  v8 = 0x3F0000003F000000;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  sub_2621DC430(&v9, &v8, &v9, 2uLL);
  v7 = 0x3ECCCCCD3F733333;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  sub_2621DC430(&v12, &v7, &v8, 2uLL);
  v2 = 0uLL;
  v3 = 0;
  sub_2622180B8(&v2, &v9, &v15, 2uLL);
}

void sub_2622CA594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v39 = -96;
  v40 = v36;
  do
  {
    v40 = sub_262218330(v40) - 48;
    v39 += 48;
  }

  while (v39);
  a21 = &a9;
  sub_2621E1D40(&a21);
  v41 = &a36;
  v42 = -96;
  while (1)
  {
    v43 = *(v41 - 1);
    if (v43)
    {
      *v41 = v43;
      operator delete(v43);
    }

    v41 -= 3;
    v42 += 24;
    if (!v42)
    {
      if (__p)
      {
        operator delete(__p);
      }

      a26 = &a15;
      sub_2621E1D40(&a26);
      v44 = (v37 - 192);
      v45 = -48;
      while (1)
      {
        v46 = *(v44 - 1);
        if (v46)
        {
          *v44 = v46;
          operator delete(v46);
        }

        v44 -= 3;
        v45 += 24;
        if (!v45)
        {
          if (a18)
          {
            operator delete(a18);
          }

          _Unwind_Resume(a1);
        }
      }
    }
  }
}

uint64_t sub_2622CA89C(uint64_t a1)
{
  sub_2622C9478(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_2622C9478(v2);
  }

  return a1;
}

uint64_t sub_2622CA8EC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2622C9508(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2622CA938(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_26226C934(a2);
  }

  sub_2621CBEB0();
}

char *sub_2622CA988(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_2621CC810(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_2622CAA48(v9);
  return v4;
}

uint64_t sub_2622CAA48(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

id sub_2622CAAA8(uint64_t *a1, const char *a2, float a3, double a4)
{
  v5 = a2;
  v7 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v9 = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    *v8.i32 = a3 * 6.0;
    v11 = vdupq_lane_s32(v8, 0);
    *v12.i64 = a4;
    *&v12.i64[1] = a4;
    v29 = v11;
    v31 = v12;
    __asm { FMOV            V0.4S, #6.0 }

    v28 = _Q0;
    do
    {
      v37 = *v9;
      v36 = *(v9 + 8);
      v18 = *(v9 + 16);
      v19 = objc_alloc_init(RS3DSurface);
      v21 = v19;
      v22.i64[0] = v37;
      v22.i64[1] = v36;
      v23 = vsubq_f32(vdivq_f32(vmulq_f32(v22, v28), v29), v31);
      v24 = vzip2q_s64(v23, 0);
      v23.i32[2] = 0;
      v25 = v23;
      v25.i32[3] = v35;
      v26 = v24;
      v26.i32[3] = v34;
      v24.i32[3] = v33;
      v23.i32[3] = v32;
      src[0] = v25;
      src[1] = v26;
      src[2] = v24;
      src[3] = v23;
      if (v19)
      {
        objc_copyStruct(&v19[1], src, 64, 1, 0);
        *(v21 + 108) = v18;
        *(v21 + 104) = v5;
      }

      objc_msgSend_addObject_(v7, v20, v21, *&v28, *&v29);

      v9 += 24;
    }

    while (v9 != v10);
  }

  return v7;
}

void sub_2622CAC48(uint64_t a1, void *a2, float a3)
{
  v30 = a2;
  objc_msgSend_quad(v30, v5, v6);
  v29 = v7;
  objc_msgSend_quad(v30, v8, v9);
  v28 = v10;
  objc_msgSend_quad(v30, v11, v12);
  v13 = 0;
  v14 = vsubq_f32(v29, v28);
  v15 = vmulq_f32(v14, v14);
  *&v16 = *&v15.i32[2] + vaddv_f32(*v15.i8);
  *v15.i8 = vrsqrte_f32(v16);
  *v15.i8 = vmul_f32(*v15.i8, vrsqrts_f32(v16, vmul_f32(*v15.i8, *v15.i8)));
  v17 = vdupq_n_s32(0x3F4CCCCDu);
  *v15.i8 = vmul_f32(*v15.i8, vrsqrts_f32(v16, vmul_f32(*v15.i8, *v15.i8)));
  v18 = vmulq_n_f32(v14, *v15.i32);
  *v15.i32 = -*&v18.i32[1];
  v19 = vzip1q_s32(v15, v18);
  v19.i32[2] = v18.i32[2];
  v21 = v20;
  v22 = vmlsq_f32(v28, v17, v19);
  v23 = vmlaq_f32(v28, v17, v19);
  v24 = vmlaq_f32(v29, v17, v19);
  v25 = vmlsq_f32(v29, v17, v19);
  v26 = (a1 + 8);
  do
  {
    if (v13 == 4)
    {
      v21 = a3;
    }

    if ((v13 & 3u) > 1)
    {
      v27 = v23;
      if ((v13 & 3) != 2)
      {
        v27 = v22;
      }
    }

    else
    {
      v27 = v25;
      if ((v13 & 3) != 0)
      {
        v27 = v24;
      }
    }

    *(v26 - 2) = v27;
    *v26 = v21;
    v26 += 4;
    ++v13;
  }

  while (v13 != 8);
}

void sub_2622CAD9C(float32x4_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v75 = a6;
  a3[1] = *a3;
  *(a4 + 8) = *a4;
  *(a5 + 8) = *a5;
  a6[1] = *a6;
  v80 = a1[1];
  v82 = a1[3];
  v76 = *a1;
  v78 = a1[4];
  v73 = a1[6];
  v74 = v11;
  v14 = objc_msgSend_count(v11, v12, v13);
  v17 = objc_msgSend_points(v74, v15, v16);
  v20 = objc_msgSend_semanticLabels(v74, v18, v19);
  v23 = objc_msgSend_semanticVotes(v74, v21, v22);
  v26 = objc_msgSend_colors(v74, v24, v25);
  if (v14)
  {
    v27 = v26;
    v28 = vsubq_f32(v76, v82);
    v29 = vmulq_f32(v28, v28);
    v29.f32[0] = v29.f32[2] + vaddv_f32(*v29.f32);
    v30 = vrsqrte_f32(v29.u32[0]);
    v31 = vmul_f32(v30, vrsqrts_f32(v29.u32[0], vmul_f32(v30, v30)));
    v83 = vmulq_n_f32(v28, vmul_f32(v31, vrsqrts_f32(v29.u32[0], vmul_f32(v31, v31))).f32[0]);
    v32 = vsubq_f32(v76, v80);
    v33 = vmulq_f32(v32, v32);
    v33.f32[0] = v33.f32[2] + vaddv_f32(*v33.f32);
    v34 = vrsqrte_f32(v33.u32[0]);
    v35 = vmul_f32(v34, vrsqrts_f32(v33.u32[0], vmul_f32(v34, v34)));
    v81 = vmulq_n_f32(v32, vmul_f32(v35, vrsqrts_f32(v33.u32[0], vmul_f32(v35, v35))).f32[0]);
    v36 = vsubq_f32(v76, v78);
    v37 = vmulq_f32(v36, v36);
    v37.f32[0] = v37.f32[2] + vaddv_f32(*v37.f32);
    v38 = vrsqrte_f32(v37.u32[0]);
    v39 = vmul_f32(v38, vrsqrts_f32(v37.u32[0], vmul_f32(v38, v38)));
    v40 = sqrtf(v29.f32[0]) * 0.5;
    v41 = sqrtf(v33.f32[0]) * 0.5;
    v42 = sqrtf(v37.f32[0]) * 0.5;
    v29.i64[0] = 0x3F0000003F000000;
    v29.i64[1] = 0x3F0000003F000000;
    v77 = vmulq_f32(vaddq_f32(v76, v73), v29);
    v79 = vmulq_n_f32(v36, vmul_f32(v39, vrsqrts_f32(v37.u32[0], vmul_f32(v39, v39))).f32[0]);
    do
    {
      v43 = vsubq_f32(*v17, v77);
      v44 = vmulq_f32(v83, v43);
      v45 = vmulq_f32(v81, v43);
      v46 = fabsf(v45.f32[2] + vaddv_f32(*v45.f32));
      v47 = vmulq_f32(v79, v43);
      v48 = fabsf(v47.f32[2] + vaddv_f32(*v47.f32));
      if (fabsf(v44.f32[2] + vaddv_f32(*v44.f32)) <= v40 && v46 <= v41 && v48 <= v42)
      {
        sub_2621D9F60(a3, v17);
        v52 = *(a4 + 8);
        v51 = *(a4 + 16);
        if (v52 >= v51)
        {
          v54 = (v52 - *a4) >> 2;
          if ((v54 + 1) >> 62)
          {
            sub_2621CBEB0();
          }

          v55 = v51 - *a4;
          v56 = v55 >> 1;
          if (v55 >> 1 <= (v54 + 1))
          {
            v56 = v54 + 1;
          }

          if (v55 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v57 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = v56;
          }

          if (v57)
          {
            sub_2621C7F54(v57);
          }

          v58 = (4 * v54);
          *v58 = *v20;
          v53 = 4 * v54 + 4;
          v59 = *(a4 + 8) - *a4;
          v60 = v58 - v59;
          memcpy(v58 - v59, *a4, v59);
          v61 = *a4;
          *a4 = v60;
          *(a4 + 8) = v53;
          *(a4 + 16) = 0;
          if (v61)
          {
            operator delete(v61);
          }
        }

        else
        {
          *v52 = *v20;
          v53 = (v52 + 1);
        }

        *(a4 + 8) = v53;
        v63 = *(a5 + 8);
        v62 = *(a5 + 16);
        if (v63 >= v62)
        {
          v65 = (v63 - *a5) >> 3;
          if ((v65 + 1) >> 61)
          {
            sub_2621CBEB0();
          }

          v66 = v62 - *a5;
          v67 = v66 >> 2;
          if (v66 >> 2 <= (v65 + 1))
          {
            v67 = v65 + 1;
          }

          if (v66 >= 0x7FFFFFFFFFFFFFF8)
          {
            v68 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v68 = v67;
          }

          if (v68)
          {
            sub_2621CBEC8(v68);
          }

          v69 = (8 * v65);
          *v69 = *v23;
          v64 = 8 * v65 + 8;
          v70 = *(a5 + 8) - *a5;
          v71 = v69 - v70;
          memcpy(v69 - v70, *a5, v70);
          v72 = *a5;
          *a5 = v71;
          *(a5 + 8) = v64;
          *(a5 + 16) = 0;
          if (v72)
          {
            operator delete(v72);
          }
        }

        else
        {
          *v63 = *v23;
          v64 = (v63 + 1);
        }

        *(a5 + 8) = v64;
        sub_2621D9F60(v75, v27);
      }

      ++v27;
      ++v23;
      ++v20;
      ++v17;
      --v14;
    }

    while (v14);
  }
}

__int32 *sub_2622CB1A4(__int32 *result, uint16x4_t *a2, uint64_t a3, double a4, double a5, uint8x8_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  *(a3 + 96) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v6 = *a2;
  v7 = vmovl_u16(*a2);
  v7.i64[0] = vaddw_u16(vextq_s8(v7, v7, 8uLL), *a2).u64[0];
  v21 = v7.i16[2];
  v20 = v7.i16[0];
  if (v7.i16[0] + v7.i16[2])
  {
    v8 = 1.0 / (v20 + v21);
    if (v6.i16[3])
    {
      for (i = 0; i != 33; ++i)
      {
        *(a3 + 4 * byte_2623A84C0[i]) = ((v8 * v6.u16[3]) / 30.0) + *(a3 + 4 * byte_2623A84C0[i]);
      }

      v6 = *a2;
    }

    for (j = 0; j != 3; ++j)
    {
      v19 = v6;
      if (*(&v19 & 0xFFFFFFFFFFFFFFF9 | (2 * (j & 3))))
      {
        a6.i32[0] = *result;
        a6 = vmovl_u8(a6).u64[0];
        v18 = a6;
        v11 = *(&v18 & 0xFFFFFFFFFFFFFFF9 | (2 * (j & 3)));
        if (v11 <= 0x20u)
        {
          v12 = byte_2623A84C0[v11];
          v22[j] = v12;
          *(a3 + 4 * v12) = 0;
          v6 = *a2;
        }
      }
    }

    v13 = 0;
    a6.i32[0] = *result;
    v14 = vmovl_u8(a6).u64[0];
    do
    {
      v17 = v6;
      v15 = *(&v17 & 0xFFFFFFFFFFFFFFF9 | (2 * (v13 & 3)));
      v16 = v14;
      if (v15)
      {
        if (*(&v16 & 0xFFFFFFFFFFFFFFF9 | (2 * (v13 & 3))) <= 0x20u)
        {
          *(a3 + 4 * v22[v13]) = *(a3 + 4 * v22[v13]) + (v15 * v8);
          v6 = *a2;
          v14.i32[0] = *result;
          v14 = vmovl_u8(v14).u64[0];
        }
      }

      ++v13;
    }

    while (v13 != 3);
  }

  return result;
}

void sub_2622CB354(void *a1, __n128 a2, __n128 a3)
{
  v18 = a2;
  v19 = a3;
  v20 = a1;
  for (i = 0; objc_msgSend_count(v20, v3, v4, *&v18, *&v19) > i; ++i)
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v20, v6, i);
    objc_msgSend_quad(v7, v8, v9);
    *&v11 = v10;
    *(&v11 + 1) = v18.n128_u32[0];
    *&v13 = v12;
    *(&v13 + 1) = v18.n128_u32[0];
    *&v15 = v14;
    *(&v15 + 1) = v19.n128_u32[0];
    *&v17 = v16;
    *(&v17 + 1) = v19.n128_u32[0];
    src[0] = v11;
    src[1] = v13;
    src[2] = v15;
    src[3] = v17;
    if (v7)
    {
      objc_copyStruct((v7 + 272), src, 64, 1, 0);
    }
  }
}

double sub_2622CB45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 + 16 * a2;
  if (a2 == a3)
  {
    v4.i32[0] = *v3;
    goto LABEL_65;
  }

  v5 = a1 + 16 * a3;
  v6 = v3 + 16;
  if (v3 + 16 == v5)
  {
    LODWORD(v11) = HIDWORD(*v3);
    v4 = *v3;
    goto LABEL_39;
  }

  v7 = *(v3 + 16);
  v8 = vmovn_s32(vcgtq_f32(*v3, v7)).u8[0];
  if (v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v4 = vbslq_s8(vdupq_n_s32(v9), v7, *v3);
  v10 = v3 + 32;
  LODWORD(v11) = HIDWORD(*v3);
  if (v3 + 32 == v5)
  {
    goto LABEL_39;
  }

  if (v8)
  {
    v12 = (a1 + 16 * a2);
  }

  else
  {
    v12 = (v3 + 16);
  }

  if (v8)
  {
    v13 = (v3 + 16);
  }

  else
  {
    v13 = (a1 + 16 * a2);
  }

  v14 = 16 * a2;
  v15 = 16 * a3;
  v16 = a1;
  v17 = (a1 + 16 * a2);
  while (1)
  {
    v18 = v17;
    v17 = v10;
    v19 = (v16 + v14);
    v20 = (v16 + v14 + 32);
    if (16 * a2 + 48 == v15)
    {
      break;
    }

    v22 = v19[3];
    v21 = v19 + 3;
    v23 = v22;
    v24 = *v20;
    if (vmovn_s32(vcgtq_f32(*v20, v22)).u8[0])
    {
      v25 = vmovn_s32(vcgtq_f32(*v13, v23)).u8[0];
      if (v25)
      {
        v26 = -1;
      }

      else
      {
        v26 = 0;
      }

      v4 = vbslq_s8(vdupq_n_s32(v26), v23, *v13);
      if (v25)
      {
        v13 = v21;
      }

      if (v24.f32[0] >= *v12)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v27 = vmovn_s32(vcgtq_f32(v4, v24)).u8[0];
      if (v27)
      {
        v28 = -1;
      }

      else
      {
        v28 = 0;
      }

      v4 = vbslq_s8(vdupq_n_s32(v28), v24, v4);
      if (v27)
      {
        v13 = (v16 + v14 + 32);
      }

      if (v23.f32[0] >= *v12)
      {
        v20 = v18 + 3;
        goto LABEL_32;
      }
    }

    v20 = v12;
LABEL_32:
    v10 = &v17[2];
    v16 += 32;
    v15 -= 32;
    v12 = v20;
    if (16 * a2 + 32 == v15)
    {
      goto LABEL_38;
    }
  }

  if (COERCE_FLOAT(*v20) < v13->f32[0])
  {
    v13 = (v16 + v14 + 32);
  }

LABEL_38:
  v4.i32[0] = v13->i32[0];
LABEL_39:
  if (v6 != v5)
  {
    v29 = *(v3 + 20);
    if (v29 >= v11)
    {
      v30 = a1 + 16 * a2;
    }

    else
    {
      v30 = v3 + 16;
    }

    if (v29 < v11)
    {
      v6 = a1 + 16 * a2;
    }

    v31 = v3 + 32;
    if (v3 + 32 == v5)
    {
      goto LABEL_64;
    }

    v32 = 16 * a2;
    v33 = 16 * a3;
    v34 = 16 * a2 + 32;
    v35 = 16 * a2 + 48;
    while (1)
    {
      v36 = v31;
      v37 = a1 + v32;
      if (v35 == v33)
      {
        break;
      }

      v38 = v3 + 48;
      v39 = v37 + 48;
      v40 = *(v37 + 52);
      v41 = *(v37 + 36);
      v42 = *(v30 + 4);
      v43 = *(v6 + 4);
      if (v41 >= v42)
      {
        v44 = v30;
      }

      else
      {
        v44 = a1 + v32 + 32;
      }

      if (v40 < v43)
      {
        v38 = v6;
      }

      if (v40 < v42)
      {
        v30 = v39;
      }

      if (v41 >= v43)
      {
        v6 = a1 + v32 + 32;
      }

      if (v40 >= v41)
      {
        v30 = v44;
        v6 = v38;
      }

      v31 += 32;
      a1 += 32;
      v33 -= 32;
      v3 = v36;
      if (v34 == v33)
      {
        goto LABEL_64;
      }
    }

    v45 = *(v37 + 36);
    if (v45 >= *(v30 + 4))
    {
LABEL_64:
      v3 = v30;
    }

    else
    {
      v3 = a1 + v32 + 32;
    }
  }

LABEL_65:
  v4.i32[1] = *(v3 + 4);
  return *v4.i64;
}

unint64_t sub_2622CB6CC(uint64_t a1, unint64_t *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 1125);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "at", 2);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
  }

  v13 = *a2;
  v23[0] = v13;
  v21 = 0;
  if (v13 >= *(a1 + 8))
  {
    v14 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v15 = sub_2621D552C(v14, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v15, " ", 1);
    v16 = MEMORY[0x277D82670];
    v17 = MEMORY[0x266727260](MEMORY[0x277D82670], 1133);
    sub_2621D552C(v17, " ", 1);
    sub_2621D552C(v17, "at", 2);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
    sub_2621DA198("err", "shape", &v21, "=", v23, "should smaller then", (a1 + 8));
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v19 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
  }

  return *(a1 + 144) + 4 * *(a1 + 56) * v13;
}

void sub_2622CBAD8(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2874EF6A8;
  v3 = v1[16];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622CBB0C(uint64_t a1, uint64_t a2, float32x2_t *a3, float32x2_t **a4)
{
  v8 = a4[1] - *a4;
  LODWORD(v48[0]) = 0;
  sub_2621CD1D8(&__p, v8, v48);
  v9 = *a4;
  v10 = __p;
  v11 = a4[1] - *a4;
  v12 = v11 >> 3;
  if (v11)
  {
    v13 = 0;
    do
    {
      v14 = v9[v13];
      if (v14.f32[0] >= 0.0)
      {
        v10[v13] = sub_2621DC76C(v14, *a3, a3[1], 0.00001);
      }

      ++v13;
    }

    while (v12 > v13);
  }

  if (v12 - 1 >= 2)
  {
    LODWORD(v15) = -1;
    v16 = -3.4028e38;
    v17 = 1;
    do
    {
      v18 = &v10[v17];
      v19 = v18 - 1;
      v20 = v18 + 2;
      v21 = *(v18 - 1);
      v22 = v18;
      do
      {
        v23 = *v22++;
        v24 = v23;
        if (v21 < v23)
        {
          v21 = v24;
          v19 = v18;
        }

        v18 = v22;
      }

      while (v22 != v20);
      v25 = v19 - v10;
      v26 = (v25 << 30) >> 30;
      v27 = *(v10 + v26);
      v28 = v25 >> 2;
      if (v27 <= v16)
      {
        v15 = v15;
      }

      else
      {
        v15 = v28;
      }

      if (v27 > v16)
      {
        v16 = *(v10 + v26);
      }

      ++v17;
    }

    while (v17 != v12 - 1);
    v29 = v15 << 32;
    v30 = LODWORD(v16);
    goto LABEL_21;
  }

  if (v10)
  {
    v29 = 0xFFFFFFFF00000000;
    v30 = 4286578687;
LABEL_21:
    v52 = v10;
    operator delete(v10);
    v31 = v29 | v30;
    goto LABEL_22;
  }

  v31 = -8388609;
LABEL_22:
  if (*&v31 >= *(a1 + 12))
  {
    v32 = HIDWORD(v31);
    v33 = v31 >> 32;
    v34 = v33 - 1;
    v35 = *a4;
    v36 = (*a4)[v33];
    v37 = vabds_f32(v36.f32[0], COERCE_FLOAT(*&(*a4)[v33 - 1]));
    v38 = v33 + 1;
    v36.f32[0] = vabds_f32(v36.f32[0], COERCE_FLOAT(*&(*a4)[v38]));
    v39 = v37 < v36.f32[0];
    if (v37 < v36.f32[0])
    {
      v34 = v32;
    }

    v40 = &v35[v34];
    v42 = *v40;
    v41 = v40 + 1;
    v43 = v42;
    if (v39)
    {
      v44 = v38;
    }

    else
    {
      v44 = v32;
    }

    v45 = a3[1];
    v50[0] = *a3;
    v50[1] = v43;
    v49[0] = v35[v44];
    v49[1] = v45;
    __p = 0;
    v52 = 0;
    v53 = 0;
    memset(v48, 0, sizeof(v48));
    if (v41 != v35)
    {
      do
      {
        sub_2621CBA84(&__p, v35++);
      }

      while (v35 != v41);
      v35 = *a4;
    }

    v46 = &v35[v44];
    v47 = a4[1];
    while (v46 != v47)
    {
      sub_2621CBA84(v48, v46++);
    }

    sub_2622CBB0C(a1, a2, v50, &__p);
    sub_2622CBB0C(a1, a2, v49, v48);
    if (v48[0])
    {
      operator delete(v48[0]);
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else
  {

    sub_2621DE070(a2, a3);
  }
}

void sub_2622CBDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2622CBDD0(unint64_t *a1, double *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_2622CBE5C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++a1[5];
  return result;
}

void sub_2622CBE5C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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

void sub_2622CC2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void sub_2622CC310(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  sub_2621D1AA0(&v19, a2);
  v16 = v20;
  v17 = v21;
  v18 = v22;
  v24 = 0u;
  v25 = 0u;
  *&v23[0].__locale_ = 0u;
  sub_2621D1AA0(&v26, a3);
  *&v23[0].__locale_ = v27;
  v24 = v28;
  v25 = v29;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  sub_2621D1AA0(v36, &v19);
  v37[1] = v24;
  v37[2] = v25;
  v37[0] = *&v23[0].__locale_;
  sub_2621D1AA0(v38, &v26);
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = *(&v33 + v6);
    v9 = *(v37 + v6);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v7 = 0;
    v6 = 1;
  }

  while (v8 == v9);
  if (v8 != v9)
  {
    v10 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v11 = sub_2621D552C(v10, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../expression/exp_element_binary.hpp", 127);
    sub_2621D552C(v11, " ", 1);
    v12 = MEMORY[0x277D82670];
    v13 = MEMORY[0x266727260](MEMORY[0x277D82670], 64);
    sub_2621D552C(v13, " ", 1);
    sub_2621D552C(v13, "TensorBinaryExp", 15);
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v14 = std::locale::use_facet(v47, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(v47);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6B98("err", "Binary Exp shape should equal");
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v15 = std::locale::use_facet(v47, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(v47);
    std::ostream::put();
    std::ostream::flush();
  }

  v30 = v33;
  v31 = v34;
  v32 = v35;
  v44 = 0u;
  v45 = 0u;
  v39 = v33;
  v41 = v35;
  v40 = v34;
  v38[20] = &unk_2874EEB10;
  v42 = *(&v33 + 1);
  v43 = 1;
  v46[0] = v33 * *(&v33 + 1);
  memset(&v46[1], 0, 24);
  sub_2621D7174(v47, v46);
}

void sub_2622CD5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, std::__shared_weak_count *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, std::locale a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    sub_2621D1B78(a65);
  }

  STACK[0x290] = &unk_2874EEB10;
  if (STACK[0x310])
  {
    sub_2621D1B78(STACK[0x310]);
  }

  if (a43)
  {
    sub_2621D1B78(a43);
  }

  sub_2622837EC(&STACK[0x490]);
  *v65 = &unk_2874EEB10;
  v67 = v65[16];
  if (v67)
  {
    sub_2621D1B78(v67);
  }

  STACK[0x3F8] = a9;
  if (STACK[0x478])
  {
    sub_2621D1B78(STACK[0x478]);
  }

  _Unwind_Resume(a1);
}

void *sub_2622CD800(void *a1)
{
  a1[37] = &unk_2874EEB10;
  v2 = a1[53];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[12] = &unk_2874EEB10;
  v3 = a1[28];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  return a1;
}

uint64_t sub_2622CD87C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v162 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  if (v7 == v8)
  {
    if (*(a2 + 232))
    {
      v148 = 0uLL;
      v149 = 0uLL;
      v147 = 0uLL;
      v9 = *(result + 104);
      v10 = *(result + 144);
      if (*(result + 136))
      {
        if (v9)
        {
          v11 = *(a2 + 240);
          do
          {
            v12 = *v11++;
            *v10++ = *(a2 + 352) * (v12 / *(a2 + 296));
            --v9;
          }

          while (v9);
        }
      }

      else if (v9)
      {
        v81 = 0;
        v82 = *(result + 56);
        v83 = *(result + 64);
        v84 = *(a2 + 240);
        do
        {
          v85 = 0;
          v10[v83 * *(&v147 + 1) + v82 * v147] = *(a2 + 352) * (*(v84 + 4 * v81) / *(a2 + 296));
          do
          {
            v86 = *(&v147 + v85 + 8) + 1;
            *(&v147 + v85 + 8) = v86;
            result = *(v3 + 16 + v85);
            if (v86 != result)
            {
              break;
            }

            *(&v147 + v85 + 8) = 0;
            v85 -= 8;
          }

          while (v85 != -16);
          ++v81;
        }

        while (v81 != v9);
      }
    }

    else
    {
      v148 = 0uLL;
      v149 = 0uLL;
      v147 = 0uLL;
      v41 = *(result + 104);
      v42 = *(result + 144);
      if (*(result + 136))
      {
        if (v41)
        {
          v43 = 0;
          v44 = *(a2 + 152);
          v45 = *(a2 + 160);
          v46 = *(a2 + 240);
          do
          {
            v47 = 0;
            *(v42 + 4 * v43) = *(a2 + 352) * (*(v46 + 4 * v45 * *(&v147 + 1) + 4 * v44 * v147) / *(a2 + 296));
            do
            {
              v48 = *(&v147 + v47 + 8) + 1;
              *(&v147 + v47 + 8) = v48;
              result = *(v3 + 16 + v47);
              if (v48 != result)
              {
                break;
              }

              *(&v147 + v47 + 8) = 0;
              v47 -= 8;
            }

            while (v47 != -16);
            ++v43;
          }

          while (v43 != v41);
        }
      }

      else if (v41)
      {
        v87 = 0;
        v88 = *(result + 56);
        v89 = *(result + 64);
        v90 = *(a2 + 152);
        v91 = *(a2 + 160);
        v92 = *(a2 + 240);
        do
        {
          result = 0;
          *(v42 + 4 * v89 * *(&v147 + 1) + 4 * v88 * v147) = *(a2 + 352) * (*(v92 + 4 * v91 * *(&v147 + 1) + 4 * v90 * v147) / *(a2 + 296));
          do
          {
            v93 = *(&v147 + result + 8) + 1;
            *(&v147 + result + 8) = v93;
            if (v93 != *(v3 + 16 + result))
            {
              break;
            }

            *(&v147 + result + 8) = 0;
            result -= 8;
          }

          while (result != -16);
          ++v87;
        }

        while (v87 != v41);
      }
    }
  }

  else
  {
    if (*(a2 + 232))
    {
      v160 = 0uLL;
      v161 = 0uLL;
      v158 = 0uLL;
      v159 = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      v148 = 0uLL;
      v149 = 0uLL;
      v147 = 0uLL;
      v139 = 0uLL;
      v140 = 0uLL;
      v138 = 0uLL;
      sub_2621D96E4(&v147, v5, a2, &v138);
      v13 = 0;
      v14 = &v138;
      v15 = 1;
      do
      {
        v16 = *v14;
        v17 = *(v5 + v13);
        if ((v15 & 1) == 0)
        {
          break;
        }

        v15 = 0;
        v14 = &v138 + 1;
        v13 = 1;
      }

      while (v16 == v17);
      if (v16 != v17)
      {
        v18 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v19 = sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v19, " ", 1);
        v20 = MEMORY[0x277D82670];
        v21 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v21, " ", 1);
        sub_2621D552C(v21, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v22 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v20 + *(*v20 - 24)));
        v23 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
      }

      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      *&v144[0].__locale_ = 0u;
      v141 = 0u;
      v142 = 0u;
      v24 = *(v3 + 104);
      v25 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v24)
        {
          v26 = 0;
          v28 = *(&v148 + 1);
          v27 = v149;
          v29 = (v149 - *(&v148 + 1)) >> 3;
          if (v29 <= 1)
          {
            v29 = 1;
          }

          v30 = *(a2 + 240);
          do
          {
            v141 = *&v144[0].__locale_;
            if (v27 != v28)
            {
              v31 = v28;
              v32 = v29;
              do
              {
                v33 = *v31++;
                *(&v141 + v33) = 0;
                --v32;
              }

              while (v32);
            }

            v34 = 0;
            v35 = 0;
            v36 = &v141;
            v37 = 1;
            do
            {
              v38 = v37;
              v35 += *(&v159 + v34) * *v36;
              v36 = (&v141 + 8);
              v34 = 1;
              v37 = 0;
            }

            while ((v38 & 1) != 0);
            *(v25 + 4 * v26) = *(a2 + 352) * (*(v30 + 4 * v35) / *(a2 + 296));
            for (i = 1; i != -1; --i)
            {
              v40 = (v144[i].__locale_ + 1);
              v144[i].__locale_ = v40;
              if (v40 != *(&v138 + i * 8))
              {
                break;
              }

              v144[i].__locale_ = 0;
            }

            ++v26;
          }

          while (v26 != v24);
        }
      }

      else if (v24)
      {
        v94 = 0;
        v96 = *(&v148 + 1);
        v95 = v149;
        v97 = (v149 - *(&v148 + 1)) >> 3;
        if (v97 <= 1)
        {
          v97 = 1;
        }

        v98 = *(v3 + 56);
        v99 = *(v3 + 64);
        v100 = *(a2 + 240);
        do
        {
          locale = v144[0].__locale_;
          v102 = v144[1].__locale_;
          v141 = *&v144[0].__locale_;
          if (v95 != v96)
          {
            v103 = v96;
            v104 = v97;
            do
            {
              v105 = *v103++;
              *(&v141 + v105) = 0;
              --v104;
            }

            while (v104);
          }

          v106 = 0;
          v107 = 0;
          v108 = &v141;
          v109 = 1;
          do
          {
            v110 = v109;
            v107 += *(&v159 + v106) * *v108;
            v108 = (&v141 + 8);
            v106 = 1;
            v109 = 0;
          }

          while ((v110 & 1) != 0);
          *(v25 + 4 * v102 * v99 + 4 * locale * v98) = *(a2 + 352) * (*(v100 + 4 * v107) / *(a2 + 296));
          for (j = 1; j != -1; --j)
          {
            v112 = (v144[j].__locale_ + 1);
            v144[j].__locale_ = v112;
            if (v112 != *(&v138 + j * 8))
            {
              break;
            }

            v144[j].__locale_ = 0;
          }

          ++v94;
        }

        while (v94 != v24);
      }
    }

    else
    {
      v160 = 0uLL;
      v161 = 0uLL;
      v158 = 0uLL;
      v159 = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      v148 = 0uLL;
      v149 = 0uLL;
      v147 = 0uLL;
      v139 = 0uLL;
      v140 = 0uLL;
      v138 = 0uLL;
      sub_2621D96E4(&v147, v5, a2, &v138);
      v49 = 0;
      v50 = &v138;
      v51 = 1;
      do
      {
        v52 = *v50;
        v53 = *(v5 + v49);
        if ((v51 & 1) == 0)
        {
          break;
        }

        v51 = 0;
        v50 = &v138 + 1;
        v49 = 1;
      }

      while (v52 == v53);
      if (v52 != v53)
      {
        v54 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v55 = sub_2621D552C(v54, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v55, " ", 1);
        v56 = MEMORY[0x277D82670];
        v57 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v57, " ", 1);
        sub_2621D552C(v57, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v57 + *(*v57 - 24)));
        v58 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v58->__vftable[2].~facet_0)(v58, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v56 + *(*v56 - 24)));
        v59 = std::locale::use_facet(v144, MEMORY[0x277D82680]);
        (v59->__vftable[2].~facet_0)(v59, 10);
        std::locale::~locale(v144);
        std::ostream::put();
        std::ostream::flush();
      }

      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      *&v144[0].__locale_ = 0u;
      v141 = 0u;
      v142 = 0u;
      v60 = *(v3 + 104);
      v61 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v60)
        {
          v62 = 0;
          v64 = *(&v148 + 1);
          v63 = v149;
          v65 = (v149 - *(&v148 + 1)) >> 3;
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = *(a2 + 232);
          v67 = *(a2 + 152);
          v68 = *(a2 + 160);
          v69 = *(a2 + 240);
          do
          {
            v141 = *&v144[0].__locale_;
            if (v63 != v64)
            {
              v70 = v64;
              v71 = v65;
              do
              {
                v72 = *v70++;
                *(&v141 + v72) = 0;
                --v71;
              }

              while (v71);
            }

            v73 = 0;
            v74 = 0;
            v75 = &v141;
            v76 = 1;
            do
            {
              v77 = v76;
              v74 += *(&v159 + v73) * *v75;
              v75 = (&v141 + 8);
              v73 = 1;
              v76 = 0;
            }

            while ((v77 & 1) != 0);
            v78 = (v69 + 4 * v74);
            if (!v66)
            {
              v78 = (v69 + 4 * *(&v141 + 1) * v68 + 4 * v141 * v67);
            }

            *(v61 + 4 * v62) = *(a2 + 352) * (*v78 / *(a2 + 296));
            for (k = 1; k != -1; --k)
            {
              v80 = (v144[k].__locale_ + 1);
              v144[k].__locale_ = v80;
              if (v80 != *(&v138 + k * 8))
              {
                break;
              }

              v144[k].__locale_ = 0;
            }

            ++v62;
          }

          while (v62 != v60);
        }
      }

      else if (v60)
      {
        v113 = 0;
        v115 = *(&v148 + 1);
        v114 = v149;
        v116 = (v149 - *(&v148 + 1)) >> 3;
        if (v116 <= 1)
        {
          v116 = 1;
        }

        v117 = *(v3 + 56);
        v118 = *(v3 + 64);
        v119 = *(a2 + 232);
        v120 = *(a2 + 152);
        v121 = *(a2 + 160);
        v122 = *(a2 + 240);
        do
        {
          v123 = v144[0].__locale_;
          v124 = v144[1].__locale_;
          v141 = *&v144[0].__locale_;
          if (v114 != v115)
          {
            v125 = v115;
            v126 = v116;
            do
            {
              v127 = *v125++;
              *(&v141 + v127) = 0;
              --v126;
            }

            while (v126);
          }

          v128 = 0;
          v129 = 0;
          v130 = &v141;
          v131 = 1;
          do
          {
            v132 = v131;
            v129 += *(&v159 + v128) * *v130;
            v130 = (&v141 + 8);
            v128 = 1;
            v131 = 0;
          }

          while ((v132 & 1) != 0);
          v133 = v123 * v117;
          v134 = v124 * v118;
          v135 = (v122 + 4 * v129);
          if (!v119)
          {
            v135 = (v122 + 4 * *(&v141 + 1) * v121 + 4 * v141 * v120);
          }

          *(v61 + 4 * v134 + 4 * v133) = *(a2 + 352) * (*v135 / *(a2 + 296));
          for (m = 1; m != -1; --m)
          {
            v137 = (v144[m].__locale_ + 1);
            v144[m].__locale_ = v137;
            if (v137 != *(&v138 + m * 8))
            {
              break;
            }

            v144[m].__locale_ = 0;
          }

          ++v113;
        }

        while (v113 != v60);
      }
    }

    return sub_2621C57C8(&v147);
  }

  return result;
}

void sub_2622CE34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::locale::~locale(&a21);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622CE380(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v165 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  if (v7 == v8)
  {
    if (*(a2 + 232) && *(a2 + 432) == 1)
    {
      v151 = 0u;
      v152 = 0u;
      v150 = 0u;
      v9 = *(result + 104);
      v10 = *(result + 144);
      if (*(result + 136))
      {
        if (v9)
        {
          v11 = *(a2 + 240);
          v12 = *(a2 + 440);
          do
          {
            v14 = *v11++;
            v13 = v14;
            if (v14 < 0)
            {
              v13 = -v13;
            }

            v16 = *v12++;
            v15 = v16;
            if (v16 < 0)
            {
              v15 = -v15;
            }

            *v10++ = v15 + v13;
            --v9;
          }

          while (v9);
        }
      }

      else if (v9)
      {
        v102 = 0;
        v103 = *(result + 56);
        v104 = *(result + 64);
        v105 = *(a2 + 240);
        v106 = *(a2 + 440);
        do
        {
          v107 = 0;
          v108 = *(v105 + 4 * v102);
          v109 = *(v106 + 4 * v102);
          if (v108 < 0)
          {
            v108 = -v108;
          }

          if (v109 < 0)
          {
            v109 = -v109;
          }

          v10[v104 * *(&v150 + 1) + v103 * v150] = v109 + v108;
          do
          {
            result = *(&v150 + v107 + 8) + 1;
            *(&v150 + v107 + 8) = result;
            if (result != *(v3 + 16 + v107))
            {
              break;
            }

            *(&v150 + v107 + 8) = 0;
            v107 -= 8;
          }

          while (v107 != -16);
          ++v102;
        }

        while (v102 != v9);
      }
    }

    else
    {
      v151 = 0u;
      v152 = 0u;
      v150 = 0u;
      v48 = *(result + 104);
      v49 = *(result + 144);
      if (*(result + 136))
      {
        if (v48)
        {
          for (i = 0; i != v48; ++i)
          {
            result = sub_2622CEE6C(a2, i, v150, *(&v150 + 1));
            v51 = 0;
            *(v49 + 4 * i) = result;
            do
            {
              v52 = *(&v150 + v51 + 8) + 1;
              *(&v150 + v51 + 8) = v52;
              if (v52 != *(v3 + 16 + v51))
              {
                break;
              }

              *(&v150 + v51 + 8) = 0;
              v51 -= 8;
            }

            while (v51 != -16);
          }
        }
      }

      else if (v48)
      {
        v79 = 0;
        v80 = *(result + 56);
        v81 = *(result + 64);
        v82 = result + 16;
        do
        {
          v83 = v80 * v150;
          v84 = v49 + 4 * v81 * *(&v150 + 1);
          result = sub_2622CEE6C(a2, v79, v150, *(&v150 + 1));
          v85 = 0;
          *(v84 + 4 * v83) = result;
          do
          {
            v86 = *(&v150 + v85 + 8) + 1;
            *(&v150 + v85 + 8) = v86;
            if (v86 != *(v82 + v85))
            {
              break;
            }

            *(&v150 + v85 + 8) = 0;
            v85 -= 8;
          }

          while (v85 != -16);
          ++v79;
        }

        while (v79 != v48);
      }
    }
  }

  else
  {
    if (*(a2 + 232) && *(a2 + 432) == 1)
    {
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v150 = 0u;
      v142 = 0u;
      v143 = 0u;
      v141 = 0u;
      sub_2621D96E4(&v150, v5, a2, &v141);
      v17 = 0;
      v18 = &v141;
      v19 = 1;
      do
      {
        v20 = *v18;
        v21 = *(v5 + v17);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v19 = 0;
        v18 = &v141 + 1;
        v17 = 1;
      }

      while (v20 == v21);
      if (v20 != v21)
      {
        v22 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v23 = sub_2621D552C(v22, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v23, " ", 1);
        v24 = MEMORY[0x277D82670];
        v25 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v25, " ", 1);
        sub_2621D552C(v25, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v25 + *(*v25 - 24)));
        v26 = std::locale::use_facet(v147, MEMORY[0x277D82680]);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(v147);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v27 = std::locale::use_facet(v147, MEMORY[0x277D82680]);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(v147);
        std::ostream::put();
        std::ostream::flush();
      }

      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      *&v147[0].__locale_ = 0u;
      v144 = 0u;
      v145 = 0u;
      v28 = *(v3 + 104);
      v29 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v28)
        {
          v30 = 0;
          v32 = *(&v151 + 1);
          v31 = v152;
          v33 = (v152 - *(&v151 + 1)) >> 3;
          if (v33 <= 1)
          {
            v33 = 1;
          }

          v34 = *(a2 + 240);
          v35 = *(a2 + 440);
          do
          {
            v144 = *&v147[0].__locale_;
            if (v31 != v32)
            {
              v36 = v32;
              v37 = v33;
              do
              {
                v38 = *v36++;
                *(&v144 + v38) = 0;
                --v37;
              }

              while (v37);
            }

            v39 = 0;
            v40 = 0;
            v41 = &v144;
            v42 = 1;
            do
            {
              v43 = v42;
              v40 += *(&v162 + v39) * *v41;
              v41 = (&v144 + 8);
              v39 = 1;
              v42 = 0;
            }

            while ((v43 & 1) != 0);
            v44 = *(v34 + 4 * v40);
            if (v44 < 0)
            {
              v44 = -v44;
            }

            v45 = *(v35 + 4 * v40);
            if (v45 < 0)
            {
              v45 = -v45;
            }

            *(v29 + 4 * v30) = v45 + v44;
            for (j = 1; j != -1; --j)
            {
              v47 = (v147[j].__locale_ + 1);
              v147[j].__locale_ = v47;
              if (v47 != *(&v141 + j * 8))
              {
                break;
              }

              v147[j].__locale_ = 0;
            }

            ++v30;
          }

          while (v30 != v28);
        }
      }

      else if (v28)
      {
        v110 = 0;
        v112 = *(&v151 + 1);
        v111 = v152;
        v113 = (v152 - *(&v151 + 1)) >> 3;
        if (v113 <= 1)
        {
          v113 = 1;
        }

        v114 = *(v3 + 56);
        v115 = *(v3 + 64);
        v116 = *(a2 + 240);
        v117 = *(a2 + 440);
        do
        {
          locale = v147[0].__locale_;
          v118 = v147[1].__locale_;
          v144 = *&v147[0].__locale_;
          if (v111 != v112)
          {
            v120 = v112;
            v121 = v113;
            do
            {
              v122 = *v120++;
              *(&v144 + v122) = 0;
              --v121;
            }

            while (v121);
          }

          v123 = 0;
          v124 = 0;
          v125 = &v144;
          v126 = 1;
          do
          {
            v127 = v126;
            v124 += *(&v162 + v123) * *v125;
            v125 = (&v144 + 8);
            v123 = 1;
            v126 = 0;
          }

          while ((v127 & 1) != 0);
          v128 = locale * v114;
          v129 = *(v116 + 4 * v124);
          v130 = v118 * v115;
          if (v129 < 0)
          {
            v129 = -v129;
          }

          v131 = *(v117 + 4 * v124);
          if (v131 < 0)
          {
            v131 = -v131;
          }

          *(v29 + 4 * v130 + 4 * v128) = v131 + v129;
          for (k = 1; k != -1; --k)
          {
            v133 = (v147[k].__locale_ + 1);
            v147[k].__locale_ = v133;
            if (v133 != *(&v141 + k * 8))
            {
              break;
            }

            v147[k].__locale_ = 0;
          }

          ++v110;
        }

        while (v110 != v28);
      }
    }

    else
    {
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v150 = 0u;
      v142 = 0u;
      v143 = 0u;
      v141 = 0u;
      sub_2621D96E4(&v150, v5, a2, &v141);
      v53 = 0;
      v54 = &v141;
      v55 = 1;
      do
      {
        v56 = *v54;
        v57 = *(v5 + v53);
        if ((v55 & 1) == 0)
        {
          break;
        }

        v55 = 0;
        v54 = &v141 + 1;
        v53 = 1;
      }

      while (v56 == v57);
      if (v56 != v57)
      {
        v58 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v59 = sub_2621D552C(v58, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v59, " ", 1);
        v60 = MEMORY[0x277D82670];
        v61 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v61, " ", 1);
        sub_2621D552C(v61, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v61 + *(*v61 - 24)));
        v62 = std::locale::use_facet(v147, MEMORY[0x277D82680]);
        (v62->__vftable[2].~facet_0)(v62, 10);
        std::locale::~locale(v147);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v60 + *(*v60 - 24)));
        v63 = std::locale::use_facet(v147, MEMORY[0x277D82680]);
        (v63->__vftable[2].~facet_0)(v63, 10);
        std::locale::~locale(v147);
        std::ostream::put();
        std::ostream::flush();
      }

      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      *&v147[0].__locale_ = 0u;
      v144 = 0u;
      v145 = 0u;
      v64 = *(v3 + 104);
      v140 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v64)
        {
          v65 = 0;
          v67 = *(&v151 + 1);
          v66 = v152;
          v68 = (v152 - *(&v151 + 1)) >> 3;
          if (v68 <= 1)
          {
            v68 = 1;
          }

          v138 = v68;
          do
          {
            v144 = *&v147[0].__locale_;
            if (v66 != v67)
            {
              v69 = v67;
              v70 = v138;
              do
              {
                v71 = *v69++;
                *(&v144 + v71) = 0;
                --v70;
              }

              while (v70);
            }

            v72 = 0;
            v73 = 0;
            v74 = &v144;
            v75 = 1;
            do
            {
              v76 = v75;
              v73 += *(&v162 + v72) * *v74;
              v74 = (&v144 + 8);
              v72 = 1;
              v75 = 0;
            }

            while ((v76 & 1) != 0);
            *(v140 + 4 * v65) = sub_2622CEE6C(a2, v73, v144, *(&v144 + 1));
            for (m = 1; m != -1; --m)
            {
              v78 = (v147[m].__locale_ + 1);
              v147[m].__locale_ = v78;
              if (v78 != *(&v141 + m * 8))
              {
                break;
              }

              v147[m].__locale_ = 0;
            }

            ++v65;
          }

          while (v65 != v64);
        }
      }

      else if (v64)
      {
        v87 = 0;
        v137 = v152;
        v139 = *(&v151 + 1);
        if (((v152 - *(&v151 + 1)) >> 3) <= 1)
        {
          v88 = 1;
        }

        else
        {
          v88 = (v152 - *(&v151 + 1)) >> 3;
        }

        v136 = *(v3 + 64);
        v134 = v88;
        v135 = *(v3 + 56);
        do
        {
          v89 = v64;
          v91 = v147[0].__locale_;
          v90 = v147[1].__locale_;
          v144 = *&v147[0].__locale_;
          if (v137 != v139)
          {
            v92 = v139;
            v93 = v134;
            do
            {
              v94 = *v92++;
              *(&v144 + v94) = 0;
              --v93;
            }

            while (v93);
          }

          v95 = 0;
          v96 = 0;
          v97 = &v144;
          v98 = 1;
          do
          {
            v99 = v98;
            v96 += *(&v162 + v95) * *v97;
            v97 = (&v144 + 8);
            v95 = 1;
            v98 = 0;
          }

          while ((v99 & 1) != 0);
          *(v140 + 4 * v136 * v90 + 4 * v135 * v91) = sub_2622CEE6C(a2, v96, v144, *(&v144 + 1));
          for (n = 1; n != -1; --n)
          {
            v101 = (v147[n].__locale_ + 1);
            v147[n].__locale_ = v101;
            if (v101 != *(&v141 + n * 8))
            {
              break;
            }

            v147[n].__locale_ = 0;
          }

          ++v87;
          v64 = v89;
        }

        while (v87 != v89);
      }
    }

    return sub_2621C57C8(&v150);
  }

  return result;
}

void sub_2622CEE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  std::locale::~locale(&a27);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622CEE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 232) == 1)
  {
    v4 = (*(a1 + 240) + 4 * a2);
  }

  else
  {
    v4 = (*(a1 + 240) + 4 * *(a1 + 160) * a4 + 4 * *(a1 + 152) * a3);
  }

  v5 = *v4;
  if (*(a1 + 432) == 1)
  {
    v6 = (*(a1 + 440) + 4 * a2);
  }

  else
  {
    v6 = (*(a1 + 440) + 4 * *(a1 + 360) * a4 + 4 * *(a1 + 352) * a3);
  }

  if (v5 < 0)
  {
    v5 = -v5;
  }

  v7 = *v6;
  if (v7 < 0)
  {
    v7 = -v7;
  }

  return (v7 + v5);
}

void sub_2622CEEEC(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  sub_26222D2A8(&v5, a2);
  v2 = v6;
  v3 = v7;
  v4 = v8;
  v15 = 0u;
  v16 = 0u;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v9 = &unk_2874EF0B8;
  v13 = *(&v6 + 1);
  v14 = 1;
  v17[0] = v6 * *(&v6 + 1);
  memset(&v17[1], 0, 24);
  sub_262224B84(v18, v17);
}

void sub_2622CFD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&a65);
  sub_2621C57C8(&a66);
  if (a50)
  {
    sub_2621D1B78(a50);
  }

  if (a31)
  {
    sub_2621D1B78(a31);
  }

  _Unwind_Resume(a1);
}

BOOL sub_2622CFE08(uint64_t a1, void *a2, int a3)
{
  v3 = 54;
  if (!a3)
  {
    v3 = 51;
  }

  v4 = &a2[v3];
  if (a3)
  {
    v5 = 638;
  }

  else
  {
    v5 = 636;
  }

  if (a3)
  {
    v6 = 648;
  }

  else
  {
    v6 = 644;
  }

  v7 = a2 + 80;
  if (a3)
  {
    v7 = a2 + 641;
  }

  v8 = 642;
  if (a3)
  {
    v8 = 643;
  }

  if (*(v4 + 16) != 1)
  {
    return 0;
  }

  if (*(a2[82] + 4 * a3) >= *(a1 + 24))
  {
    return 0;
  }

  v9 = a3 >> 6;
  v10 = 1 << a3;
  if ((*(a2[69] + 8 * v9) & (1 << a3)) != 0)
  {
    return 0;
  }

  result = 0;
  if ((*(a2[86] + 8 * v9) & v10) == 0)
  {
    v12 = *(a2 + v5);
    if ((v12 & 0x100) != 0)
    {
      result = 0;
      if (!v12 && *(a2 + v6) > 15.0 && (*v7 & 1) == 0 && (*(a2 + v8) & 1) == 0)
      {
        return (*(a2[90] + 8 * v9) & v10) == 0;
      }
    }
  }

  return result;
}

void sub_2622CFEEC(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v24[115] = *MEMORY[0x277D85DE8];
  if ((*(v3 + 137) & 1) == 0)
  {
    v4 = v2;
    if (*(v2 + 137) != 1)
    {
      if ((atomic_load_explicit(&qword_27FF0C228, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FF0C228))
      {
        LODWORD(v7[0].__locale_) = 5;
        LODWORD(__p[0]) = 5;
        sub_2622D4838(v18, v7, __p);
        sub_26225F17C(&unk_27FF0C190, 1, v18);
        __cxa_atexit(sub_26222F778, &unk_27FF0C190, &dword_2621C3000);
        __cxa_guard_release(&qword_27FF0C228);
      }

      if ((atomic_load_explicit(&qword_27FF0C2C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FF0C2C8))
      {
        LODWORD(v7[0].__locale_) = 7;
        LODWORD(__p[0]) = 7;
        sub_2622D4838(v18, v7, __p);
        sub_26225F17C(&unk_27FF0C230, 1, v18);
        __cxa_atexit(sub_26222F778, &unk_27FF0C230, &dword_2621C3000);
        __cxa_guard_release(&qword_27FF0C2C8);
      }

      v9 = 0u;
      v8 = 0u;
      *&v7[0].__locale_ = 0u;
      sub_26222D2A8(&v10, v4);
      v16 = 0u;
      v15 = 0u;
      v14 = 0u;
      LOBYTE(v17) = 2;
      *&v7[0].__locale_ = v11;
      v8 = v12;
      v9 = v13;
      *&v18[0].__locale_ = 0u;
      v19 = 0u;
      v23 = v13;
      v22 = v12;
      v20 = 0u;
      v21 = v11;
      sub_26222D2A8(v24, &v10);
      *&v24[21].__locale_ = v15;
      *&v24[23].__locale_ = v16;
      *&v24[19].__locale_ = v14;
      v24[25].__locale_ = v17;
      *&v18[0].__locale_ = v21;
      v19 = v22;
      v20 = v23;
      sub_2622D4AC8(v6, v18);
    }
  }

  v1[2] = 0;
  v1[1] = 0;
  *v1 = v1 + 1;
}

_OWORD *sub_2622D4838(_OWORD *a1, int *a2, int *a3)
{
  v4 = 0;
  v16[2] = *MEMORY[0x277D85DE8];
  a1[1] = 0u;
  a1[2] = 0u;
  v5 = 1;
  *a1 = 0u;
  v6 = MEMORY[0x277D82670];
  v7 = MEMORY[0x277D82680];
  v8 = *a3;
  v16[0] = *a2;
  v16[1] = v8;
  v14 = 0;
  do
  {
    v9 = v16[v4];
    if (v9 >= 0xBEBC200)
    {
      sub_2621D552C(v6, "runtime_err in ", 15);
      sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/../tensor/shape.hpp", 118);
      sub_2621D552C(v6, " ", 1);
      v10 = MEMORY[0x266727260](v6, 71);
      sub_2621D552C(v10, " ", 1);
      sub_2621D552C(v10, "Shape", 5);
      std::ios_base::getloc((v10 + *(*v10 - 24)));
      v11 = std::locale::use_facet(&v15, v7);
      (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v15);
      std::ostream::put();
      std::ostream::flush();
      sub_262223C90("err", "shape[", &v14, "]", " is ", &v16[v4], " ,it should <= 6");
      std::ios_base::getloc((v6 + *(*v6 - 24)));
      v12 = std::locale::use_facet(&v15, v7);
      (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&v15);
      std::ostream::put();
      std::ostream::flush();
    }

    v14 = v5;
    *(a1 + v4 * 8) = v9;
    ++v4;
    ++v5;
  }

  while (v4 != 2);
  return a1;
}

void sub_2622D4AC8(uint64_t a1, __int128 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2874EEC38;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  *(a1 + 104) = *(a1 + 8) * v4;
  *(a1 + 112) = 0;
  sub_26225F984(&v5, (a1 + 104));
}

void sub_2622D5854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::locale a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::locale a47)
{
  std::locale::~locale(&a41);
  sub_2621C57C8(&a47);
  if (a26)
  {
    sub_2621D1B78(a26);
  }

  v49 = *(v47 + 128);
  if (v49)
  {
    sub_2621D1B78(v49);
  }

  _Unwind_Resume(a1);
}

vImage_Error sub_2622D58E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v13 = *(a2 + 16);
  v7 = v13;
  v14 = v6;
  sub_262223490(&src, &v14, &v13);
  sub_26225F17C(a1, 0, &src);
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  src.width = v7;
  src.rowBytes = v7;
  src.data = *(a2 + 144);
  src.height = v6;
  v11.width = v7;
  v11.rowBytes = v7;
  v11.data = *(a1 + 144);
  v11.height = v6;
  return vImageDilate_Planar8(&src, &v11, 0, 0, *(a3 + 144), v8, v9, 0);
}

void sub_2622D5988(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2874EEC38;
  v3 = v1[16];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2622D59BC(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    sub_262236A0C(result, a4);
  }

  return result;
}

void sub_2622D5A14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622D5A30(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *a1 = &unk_2874EE6A8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  v4 = a2[1];
  v3 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v3;
  *(a1 + 24) = v4;
  *(a1 + 56) = 1;
  v5 = *(a1 + 8);
  *(a1 + 104) = v5;
  *(a1 + 112) = 0;
  if (v5)
  {
    operator new();
  }

  *(a1 + 137) = 1;
  return a1;
}

void sub_2622D5B4C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622D5B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 137) == 1)
  {
    v6 = MEMORY[0x277D82670];
    v7 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v8 = sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/tensor_isin.hpp", 106);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = MEMORY[0x266727260](v9, 23);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = sub_2621D552C(v11, "isin", 4);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v14 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    std::ostream::flush();
  }

  if (*(a3 + 137) == 1)
  {
    v15 = MEMORY[0x277D82670];
    v16 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v17 = sub_2621D552C(v16, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/tensor_isin.hpp", 106);
    v18 = sub_2621D552C(v17, " ", 1);
    v19 = MEMORY[0x266727260](v18, 24);
    v20 = sub_2621D552C(v19, " ", 1);
    v21 = sub_2621D552C(v20, "isin", 4);
    std::ios_base::getloc((v21 + *(*v21 - 24)));
    v22 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
    (v22->__vftable[2].~facet_0)(v22, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v23 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
    (v23->__vftable[2].~facet_0)(v23, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    std::ostream::flush();
  }

  sub_26222D2A8(&v65, a2);
  v53 = &unk_2874EE6A8;
  v61 = 0;
  v62 = 0;
  v57 = *(a3 + 56);
  v58 = *(a3 + 72);
  v59 = *(a3 + 88);
  v60 = *(a3 + 104);
  v54 = *(a3 + 8);
  v55 = *(a3 + 24);
  v56 = *(a3 + 40);
  v24 = *(a3 + 120);
  v25 = *(a3 + 128);
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    v61 = v24;
    v62 = v25;
  }

  else
  {
    v61 = *(a3 + 120);
    v62 = 0;
  }

  v26 = *(a3 + 144);
  v64 = v26;
  v63 = *(a3 + 136);
  v27 = v69;
  v28 = v67;
  *__p = 0u;
  v51 = 0u;
  v52 = 1065353216;
  if (v60)
  {
    v29 = &v26[v60];
    do
    {
      v30 = *v26;
      if (!__p[1])
      {
        goto LABEL_26;
      }

      v31 = vcnt_s8(__p[1]);
      v31.i16[0] = vaddlv_u8(v31);
      if (v31.u32[0] > 1uLL)
      {
        v32 = *v26;
        if (__p[1] <= v30)
        {
          v32 = v30 % LOBYTE(__p[1]);
        }
      }

      else
      {
        v32 = (LODWORD(__p[1]) - 1) & v30;
      }

      v33 = *(__p[0] + v32);
      if (!v33 || (v34 = *v33) == 0)
      {
LABEL_26:
        operator new();
      }

      while (1)
      {
        v35 = v34[1];
        if (v35 == v30)
        {
          break;
        }

        if (v31.u32[0] > 1uLL)
        {
          if (v35 >= __p[1])
          {
            v35 %= __p[1];
          }
        }

        else
        {
          v35 &= __p[1] - 1;
        }

        if (v35 != v32)
        {
          goto LABEL_26;
        }

LABEL_25:
        v34 = *v34;
        if (!v34)
        {
          goto LABEL_26;
        }
      }

      if (*(v34 + 16) != v30)
      {
        goto LABEL_25;
      }

      ++v26;
    }

    while (v26 != v29);
  }

  v36 = sub_2622E2B8C(a1, v66);
  if (v28)
  {
    v37 = 0;
    v38 = *(v36 + 144);
    v40 = __p[0];
    v39 = __p[1];
    v41 = vcnt_s8(__p[1]);
    v41.i16[0] = vaddlv_u8(v41);
    v42 = LOBYTE(__p[1]);
    v43 = __p[1] + 255;
    v44 = __p[1] - 1;
    do
    {
      if (v39)
      {
        v45 = *(v27 + v37);
        if (v41.u32[0] > 1uLL)
        {
          v46 = *(v27 + v37);
          if (v39 <= v45)
          {
            v46 = v45 % v42;
          }
        }

        else
        {
          v46 = v43 & v45;
        }

        v47 = v40[v46];
        if (v47)
        {
          while (1)
          {
            v47 = *v47;
            if (!v47)
            {
              break;
            }

            v48 = v47[1];
            if (v48 == v45)
            {
              if (*(v47 + 16) == v45)
              {
                v49 = 1;
                goto LABEL_46;
              }
            }

            else
            {
              if (v41.u32[0] > 1uLL)
              {
                if (v48 >= v39)
                {
                  v48 %= v39;
                }
              }

              else
              {
                v48 &= v44;
              }

              if (v48 != v46)
              {
                break;
              }
            }
          }
        }
      }

      v49 = 0;
LABEL_46:
      *(v38 + v37++) = v49;
    }

    while (v37 != v28);
  }

  sub_2621C74C4(__p);
  v53 = &unk_2874EE6A8;
  if (v62)
  {
    sub_2621D1B78(v62);
  }

  v65.__locale_ = &unk_2874EEC38;
  if (v68)
  {
    sub_2621D1B78(v68);
  }
}

void sub_2622D647C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, uint64_t a35, std::locale a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52)
{
  sub_2621C74C4(&a11);
  a17 = a10;
  if (a33)
  {
    sub_2621D1B78(a33);
  }

  a36.__locale_ = &unk_2874EEC38;
  if (a52)
  {
    sub_2621D1B78(a52);
  }

  _Unwind_Resume(a1);
}

void sub_2622D6504(uint64_t a1, __int128 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2874EEC38;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  *(a1 + 104) = *(a1 + 8) * v4;
  *(a1 + 112) = 0;
  sub_26225F984(v5, (a1 + 104));
}

void sub_2622D7208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27)
{
  std::locale::~locale(&a21);
  sub_2621C57C8(&a27);
  v29 = *(v27 + 128);
  if (v29)
  {
    sub_2621D1B78(v29);
  }

  _Unwind_Resume(a1);
}

vImage_Error sub_2622D7268(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v9 = *(a2 + 16);
  v5 = v9;
  v10 = v4;
  sub_262223490(&src, &v10, &v9);
  sub_26225F17C(a1, 0, &src);
  src.width = v5;
  src.rowBytes = v5;
  src.data = *(a2 + 144);
  src.height = v4;
  v7.width = v5;
  v7.rowBytes = v5;
  v7.data = *(a1 + 144);
  v7.height = v4;
  return vImageErode_Planar8(&src, &v7, 0, 0, qword_27FF0C220, qword_27FF0C198, unk_27FF0C1A0, 0);
}

void sub_2622D7304(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2874EEC38;
  v3 = v1[16];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622D7338(uint64_t a1, __int128 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v4 = 0uLL;
  v3[0] = v2 * *(&v2 + 1);
  v3[1] = 0;
  sub_262223DB8(&v5, v3);
}

void sub_2622D826C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::locale a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::locale a47)
{
  std::locale::~locale(&a41);
  sub_2621C57C8(&a47);
  if (a26)
  {
    sub_2621D1B78(a26);
  }

  _Unwind_Resume(a1);
}

void sub_2622D8324(float *a1, float *a2, uint64_t a3, char a4)
{
LABEL_1:
  i = a2 - 20;
  v250 = a2 - 60;
  v251 = a2 - 40;
  j = a1;
  v274 = a2;
  v253 = a2 - 20;
  while (1)
  {
    a1 = j;
    v9 = a2 - j;
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - j) >> 4);
    v11 = v10 - 2;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          sub_2622E38E4(a1, a1 + 20, i);
          return;
        case 4:

          sub_2622E3AB0(a1, (a1 + 20), (a1 + 40), i);
          return;
        case 5:

          sub_2622E3BF4(a1, a1 + 20, (a1 + 40), (a1 + 60), i);
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v101 = *(a2 - 20);
        v102 = *(a2 - 19);
        v103 = *a1;
        v104 = *(a1 + 1);
        if (v101 == *a1 && v102 == v104)
        {
          if (*(a2 - 3) >= a1[17])
          {
            return;
          }
        }

        else
        {
          v225 = v102 < v104;
          v38 = v101 == v103;
          v226 = v101 < v103;
          if (v38)
          {
            v226 = v225;
          }

          if (!v226)
          {
            return;
          }
        }

        sub_2622E3764(a1, (a2 - 20));
        return;
      }
    }

    if (v9 <= 1919)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return;
      }

      v133 = v11 >> 1;
      v134 = v11 >> 1;
      while (1)
      {
        v135 = v134;
        if (v133 < v134)
        {
          goto LABEL_275;
        }

        v136 = (2 * v134) | 1;
        v137 = &a1[20 * v136];
        if (2 * v135 + 2 < v10)
        {
          v138 = *(v137 + 20);
          v139 = *v137;
          v140 = *(v137 + 1);
          v141 = *(v137 + 21);
          if (*v137 == v138 && v140 == v141)
          {
            if (v137[17] < v137[37])
            {
              goto LABEL_233;
            }
          }

          else
          {
            v143 = v140 < v141;
            v38 = v139 == v138;
            v144 = v139 < v138;
            if (v38)
            {
              v144 = v143;
            }

            if (v144)
            {
LABEL_233:
              v137 += 20;
              v136 = 2 * v135 + 2;
            }
          }
        }

        v145 = &a1[20 * v135];
        v146 = *v137;
        v147 = *(v137 + 1);
        v148 = *v145;
        v149 = *(v145 + 1);
        if (*v137 == *v145 && v147 == v149)
        {
          v153 = v145[17];
          if (v137[17] < v153)
          {
            goto LABEL_275;
          }

LABEL_243:
          v154 = *v145;
          v155 = *(v145 + 1);
          v261 = *(v145 + 1);
          *&v285[7] = *(v145 + 23);
          *v285 = *(v145 + 2);
          v258 = *(v145 + 31);
          *(v145 + 1) = 0;
          *(v145 + 2) = 0;
          *(v145 + 3) = 0;
          *v292 = *(v145 + 33);
          *&v292[14] = *(v145 + 47);
          v265 = *(v145 + 55);
          v270 = *(v145 + 32);
          *(v145 + 4) = 0;
          *(v145 + 5) = 0;
          *(v145 + 6) = 0;
          v301 = *(v145 + 7);
          v307 = *(v145 + 16);
          v156 = *(v145 + 9);
          v157 = *v137;
          while (2)
          {
            v158 = v137;
            *v145 = v157;
            v145[1] = v137[1];
            if (*(v145 + 31) < 0)
            {
              operator delete(*(v145 + 1));
            }

            v159 = *(v158 + 2);
            *(v145 + 3) = *(v158 + 3);
            *(v145 + 2) = v159;
            *(v158 + 31) = 0;
            *(v158 + 8) = 0;
            if (*(v145 + 55) < 0)
            {
              operator delete(*(v145 + 4));
            }

            v160 = *(v158 + 2);
            *(v145 + 6) = *(v158 + 6);
            *(v145 + 2) = v160;
            *(v158 + 55) = 0;
            *(v158 + 32) = 0;
            v161 = *(v158 + 14);
            *(v145 + 9) = *(v158 + 9);
            *(v145 + 14) = v161;
            if (v133 < v136)
            {
LABEL_270:
              *v158 = v154;
              *(v158 + 1) = v155;
              if (*(v158 + 31) < 0)
              {
                operator delete(*(v158 + 1));
              }

              *(v158 + 1) = v261;
              *(v158 + 2) = *v285;
              *(v158 + 23) = *&v285[7];
              *(v158 + 31) = v258;
              a2 = v274;
              if (*(v158 + 55) < 0)
              {
                operator delete(*(v158 + 4));
              }

              *(v158 + 32) = v270;
              *(v158 + 33) = *v292;
              *(v158 + 47) = *&v292[14];
              *(v158 + 55) = v265;
              *(v158 + 7) = v301;
              *(v158 + 16) = v307;
              v158[17] = v153;
              *(v158 + 9) = v156;
              goto LABEL_275;
            }

            v162 = 2 * v136;
            v136 = (2 * v136) | 1;
            v137 = &a1[20 * v136];
            v163 = v162 + 2;
            if (v163 < v10)
            {
              v164 = *(v137 + 20);
              v165 = *v137;
              v166 = *(v137 + 1);
              v167 = *(v137 + 21);
              if (*v137 == v164 && v166 == v167)
              {
                if (v137[17] < v137[37])
                {
                  goto LABEL_257;
                }
              }

              else
              {
                v169 = v166 < v167;
                v38 = v165 == v164;
                v170 = v165 < v164;
                if (v38)
                {
                  v170 = v169;
                }

                if (v170)
                {
LABEL_257:
                  v137 += 20;
                  v136 = v163;
                }
              }
            }

            v157 = *v137;
            v171 = *(v137 + 1);
            if (*v137 == v154 && v171 == v155)
            {
              v145 = v158;
              if (v137[17] < v153)
              {
                goto LABEL_270;
              }
            }

            else
            {
              v173 = v171 < v155;
              if (v157 != v154)
              {
                v173 = v157 < v154;
              }

              v145 = v158;
              if (v173)
              {
                goto LABEL_270;
              }
            }

            continue;
          }
        }

        v151 = v147 < v149;
        v38 = v146 == v148;
        v152 = v146 < v148;
        if (v38)
        {
          v152 = v151;
        }

        if (!v152)
        {
          v153 = v145[17];
          goto LABEL_243;
        }

LABEL_275:
        v134 = v135 - 1;
        if (!v135)
        {
          v174 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 4);
          while (1)
          {
            v175 = a2;
            v176 = 0;
            v177 = *a1;
            v178 = *(a1 + 1);
            *&v280[7] = *(a1 + 23);
            *v280 = *(a1 + 2);
            v266 = *(a1 + 31);
            *(a1 + 1) = 0;
            *(a1 + 2) = 0;
            v271 = *(a1 + 4);
            *v279 = *(a1 + 5);
            *&v279[7] = *(a1 + 47);
            v275 = *(a1 + 55);
            *(a1 + 5) = 0;
            *(a1 + 6) = 0;
            *(a1 + 3) = 0;
            *(a1 + 4) = 0;
            v296 = *(a1 + 9);
            v179 = a1;
            v293 = *(a1 + 14);
            do
            {
              v180 = &v179[20 * v176];
              v181 = v180 + 20;
              v182 = 2 * v176;
              v176 = (2 * v176) | 1;
              v183 = v182 + 2;
              if (v183 >= v174)
              {
                goto LABEL_289;
              }

              v184 = v180 + 40;
              v185 = *(v180 + 40);
              v186 = *(v180 + 20);
              v187 = *(v180 + 21);
              v188 = *(v180 + 41);
              if (v186 == v185 && v187 == v188)
              {
                if (v180[37] < v180[57])
                {
                  goto LABEL_288;
                }
              }

              else
              {
                v190 = v187 < v188;
                v38 = v186 == v185;
                v191 = v186 < v185;
                if (!v38)
                {
                  v190 = v191;
                }

                if (v190)
                {
LABEL_288:
                  v181 = v184;
                  v176 = v183;
                }
              }

LABEL_289:
              *v179 = *v181;
              v179[1] = v181[1];
              if (*(v179 + 31) < 0)
              {
                operator delete(*(v179 + 1));
              }

              v192 = *(v181 + 2);
              *(v179 + 3) = *(v181 + 3);
              *(v179 + 2) = v192;
              *(v181 + 31) = 0;
              *(v181 + 8) = 0;
              if (*(v179 + 55) < 0)
              {
                operator delete(*(v179 + 4));
              }

              v193 = *(v181 + 2);
              *(v179 + 6) = *(v181 + 6);
              *(v179 + 2) = v193;
              *(v181 + 55) = 0;
              *(v181 + 32) = 0;
              v194 = *(v181 + 14);
              *(v179 + 9) = *(v181 + 9);
              *(v179 + 14) = v194;
              v179 = v181;
            }

            while (v176 <= ((v174 - 2) >> 1));
            v195 = v175 - 20;
            if (v181 == v175 - 20)
            {
              *v181 = v177;
              if (*(v181 + 31) < 0)
              {
                operator delete(*(v181 + 1));
              }

              *(v181 + 1) = v178;
              *(v181 + 2) = *v280;
              *(v181 + 23) = *&v280[7];
              *(v181 + 31) = v266;
              if (*(v181 + 55) < 0)
              {
                operator delete(*(v181 + 4));
              }

              *(v181 + 4) = v271;
              *(v181 + 5) = *v279;
              *(v181 + 47) = *&v279[7];
              *(v181 + 55) = v275;
              *(v181 + 14) = v293;
              *(v181 + 9) = v296;
            }

            else
            {
              *v181 = *(v175 - 20);
              v181[1] = *(v175 - 19);
              if (*(v181 + 31) < 0)
              {
                operator delete(*(v181 + 1));
              }

              v196 = *(v175 - 18);
              *(v181 + 3) = *(v175 - 7);
              *(v181 + 2) = v196;
              *(v175 - 49) = 0;
              *(v175 - 72) = 0;
              if (*(v181 + 55) < 0)
              {
                operator delete(*(v181 + 4));
              }

              v197 = *(v175 - 3);
              *(v181 + 6) = *(v175 - 4);
              *(v181 + 2) = v197;
              *(v175 - 25) = 0;
              *(v175 - 48) = 0;
              v198 = *(v175 - 6);
              *(v181 + 9) = *(v175 - 1);
              *(v181 + 14) = v198;
              *(v175 - 10) = v177;
              if (*(v175 - 49) < 0)
              {
                operator delete(*(v175 - 9));
              }

              *(v175 - 9) = v178;
              *(v175 - 57) = *&v280[7];
              *(v175 - 8) = *v280;
              *(v175 - 49) = v266;
              if (*(v175 - 25) < 0)
              {
                operator delete(*(v175 - 6));
              }

              v199 = v175 - 6;
              *(v175 - 6) = v271;
              *(v175 - 33) = *&v279[7];
              *(v175 - 5) = *v279;
              *(v175 - 25) = v275;
              *(v199 + 2) = v296;
              *v199 = v293;
              v200 = (v181 + 20) - a1;
              if (v200 >= 81)
              {
                v201 = (-2 - 0x3333333333333333 * (v200 >> 4)) >> 1;
                v202 = &a1[20 * v201];
                v203 = *v202;
                v204 = *(v202 + 1);
                v205 = *v181;
                v206 = *(v181 + 1);
                if (*v202 == *v181 && v204 == v206)
                {
                  v207 = v181[17];
                  if (v202[17] >= v207)
                  {
                    goto LABEL_341;
                  }

LABEL_320:
                  v210 = 0;
                  v211 = *v181;
                  v212 = *(v181 + 1);
                  v213 = *(v181 + 1);
                  *&v302[7] = *(v181 + 23);
                  *v302 = *(v181 + 2);
                  v214 = *(v181 + 31);
                  *(v181 + 1) = 0;
                  *(v181 + 2) = 0;
                  v276 = *(v181 + 32);
                  *&v286[14] = *(v181 + 47);
                  *v286 = *(v181 + 33);
                  v267 = v214;
                  v272 = *(v181 + 55);
                  *(v181 + 3) = 0;
                  *(v181 + 4) = 0;
                  *(v181 + 5) = 0;
                  *(v181 + 6) = 0;
                  v278 = *(v181 + 16);
                  v277 = *(v181 + 7);
                  v215 = *(v181 + 9);
                  v216 = *v202;
                  while (1)
                  {
                    *v181 = v216;
                    v181[1] = v202[1];
                    if (v210 < 0)
                    {
                      operator delete(*(v181 + 1));
                    }

                    v217 = *(v202 + 2);
                    *(v181 + 3) = *(v202 + 3);
                    *(v181 + 2) = v217;
                    *(v202 + 31) = 0;
                    *(v202 + 8) = 0;
                    if (*(v181 + 55) < 0)
                    {
                      operator delete(*(v181 + 4));
                    }

                    v218 = *(v202 + 2);
                    *(v181 + 6) = *(v202 + 6);
                    *(v181 + 2) = v218;
                    *(v202 + 55) = 0;
                    *(v202 + 32) = 0;
                    v219 = *(v202 + 14);
                    *(v181 + 9) = *(v202 + 9);
                    *(v181 + 14) = v219;
                    if (!v201)
                    {
                      break;
                    }

                    v201 = (v201 - 1) >> 1;
                    v220 = &a1[20 * v201];
                    v216 = *v220;
                    v221 = *(v220 + 1);
                    if (*v220 == LODWORD(v211) && v221 == v212)
                    {
                      if (v220[17] >= v207)
                      {
                        break;
                      }
                    }

                    else
                    {
                      v223 = v221 < v212;
                      if (v216 != LODWORD(v211))
                      {
                        v223 = v216 < SLODWORD(v211);
                      }

                      if (!v223)
                      {
                        break;
                      }
                    }

                    v210 = *(v202 + 31);
                    v181 = v202;
                    v202 = &a1[20 * v201];
                  }

                  *v202 = v211;
                  *(v202 + 1) = v212;
                  if (*(v202 + 31) < 0)
                  {
                    operator delete(*(v202 + 1));
                  }

                  *(v202 + 1) = v213;
                  *(v202 + 2) = *v302;
                  *(v202 + 23) = *&v302[7];
                  *(v202 + 31) = v267;
                  if (*(v202 + 55) < 0)
                  {
                    operator delete(*(v202 + 4));
                  }

                  *(v202 + 32) = v276;
                  *(v202 + 33) = *v286;
                  *(v202 + 47) = *&v286[14];
                  *(v202 + 55) = v272;
                  *(v202 + 7) = v277;
                  *(v202 + 16) = v278;
                  v202[17] = v207;
                  *(v202 + 9) = v215;
                }

                else
                {
                  v208 = v204 < v206;
                  v38 = v203 == LODWORD(v205);
                  v209 = v203 < SLODWORD(v205);
                  if (v38)
                  {
                    v209 = v208;
                  }

                  if (v209)
                  {
                    v207 = v181[17];
                    goto LABEL_320;
                  }
                }
              }
            }

LABEL_341:
            a2 = v195;
            if (v174-- <= 2)
            {
              return;
            }
          }
        }
      }
    }

    v12 = &a1[20 * (v10 >> 1)];
    if (v9 < 0x2801)
    {
      sub_2622E38E4(v12, a1, i);
    }

    else
    {
      sub_2622E38E4(a1, v12, i);
      sub_2622E38E4(a1 + 20, v12 - 20, v251);
      sub_2622E38E4(a1 + 40, v12 + 20, v250);
      sub_2622E38E4(v12 - 20, v12, v12 + 20);
      v13 = *a1;
      v14 = *(a1 + 1);
      *(&v281 + 7) = *(a1 + 23);
      *&v281 = *(a1 + 2);
      v15 = *(a1 + 31);
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v16 = *(a1 + 4);
      *&v297 = *(a1 + 5);
      *(&v297 + 7) = *(a1 + 47);
      v17 = *(a1 + 55);
      *(a1 + 3) = 0;
      *(a1 + 4) = 0;
      *(a1 + 5) = 0;
      *(a1 + 6) = 0;
      v288 = *(a1 + 14);
      v295 = *(a1 + 9);
      *a1 = *v12;
      v18 = *(v12 + 3);
      *(a1 + 2) = *(v12 + 2);
      *(a1 + 3) = v18;
      v19 = *(v12 + 2);
      *(a1 + 6) = *(v12 + 6);
      *(a1 + 2) = v19;
      v20 = *(v12 + 14);
      *(a1 + 9) = *(v12 + 9);
      *(a1 + 14) = v20;
      *v12 = v13;
      *(v12 + 1) = v14;
      *(v12 + 2) = v281;
      *(v12 + 23) = *(&v281 + 7);
      *(v12 + 31) = v15;
      *(v12 + 4) = v16;
      *(v12 + 47) = *(&v297 + 7);
      *(v12 + 5) = v297;
      *(v12 + 55) = v17;
      *(v12 + 9) = v295;
      *(v12 + 14) = v288;
    }

    v268 = a3 - 1;
    if (a4)
    {
      goto LABEL_22;
    }

    v21 = *(a1 - 20);
    v22 = *(a1 - 19);
    v23 = *a1;
    v24 = *(a1 + 1);
    if (v21 == *a1 && v22 == v24)
    {
      v25 = a1[17];
      if (*(a1 - 3) >= v25)
      {
        goto LABEL_96;
      }

      goto LABEL_22;
    }

    v26 = v22 < v24;
    v38 = v21 == v23;
    v27 = v21 < v23;
    if (v38)
    {
      v27 = v26;
    }

    if (v27)
    {
LABEL_22:
      v29 = *a1;
      v28 = *(a1 + 1);
      v30 = (a1 + 2);
      v259 = *(a1 + 1);
      *&v282[7] = *(a1 + 23);
      *v282 = *(a1 + 2);
      v31 = *(a1 + 31);
      *(a1 + 1) = 0;
      v32 = (a1 + 8);
      v262 = *(a1 + 32);
      *(a1 + 2) = 0;
      *(a1 + 3) = 0;
      *&v289[14] = *(a1 + 47);
      *v289 = *(a1 + 33);
      v254 = v31;
      v256 = *(a1 + 55);
      *(a1 + 4) = 0;
      *(a1 + 5) = 0;
      *(a1 + 6) = 0;
      v304 = *(a1 + 16);
      v298 = *(a1 + 7);
      v33 = a1[17];
      v34 = a1 + 20;
      v35 = *(a1 + 9);
      while (1)
      {
        v36 = *v34;
        v37 = *(v34 + 1);
        v38 = *v34 == v29 && v37 == v28;
        if (!v38)
        {
          break;
        }

        if (v34[17] >= v33)
        {
          goto LABEL_33;
        }

LABEL_32:
        v34 += 20;
      }

      v39 = v37 < v28;
      v38 = v36 == v29;
      v40 = v36 < v29;
      if (v38)
      {
        v40 = v39;
      }

      if (v40)
      {
        goto LABEL_32;
      }

LABEL_33:
      if (v34 - 20 != a1)
      {
        while (1)
        {
          v41 = *i;
          v42 = *(i + 1);
          if (*i == v29 && v42 == v28)
          {
            if (i[17] < v33)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v44 = v42 < v28;
            v38 = LODWORD(v41) == v29;
            v45 = SLODWORD(v41) < v29;
            if (v38)
            {
              v45 = v44;
            }

            if (v45)
            {
              goto LABEL_58;
            }
          }

          i -= 20;
        }
      }

      i = v274;
      if (v34 < v274)
      {
        for (i = v253; ; i -= 20)
        {
          v46 = *i;
          v47 = *(i + 1);
          if (*i == v29 && v47 == v28)
          {
            if (v34 >= i || i[17] < v33)
            {
              break;
            }
          }

          else
          {
            v49 = v47 >= v28;
            v38 = LODWORD(v46) == v29;
            v50 = SLODWORD(v46) >= v29;
            if (v38)
            {
              v50 = v49;
            }

            if (v34 >= i || !v50)
            {
              break;
            }
          }
        }
      }

LABEL_58:
      j = v34;
      if (v34 < i)
      {
        j = v34;
        v51 = i;
        do
        {
          sub_2622E3764(j, v51);
          do
          {
            while (1)
            {
              v52 = *(j + 20);
              v53 = *(j + 21);
              j += 20;
              if (v52 != v29 || v53 != v28)
              {
                break;
              }

              if (j[17] >= v33)
              {
                goto LABEL_72;
              }
            }

            v55 = v53 < v28;
            v38 = v52 == v29;
            v56 = v52 < v29;
            if (v38)
            {
              v56 = v55;
            }
          }

          while (v56);
          do
          {
LABEL_72:
            while (1)
            {
              v57 = *(v51 - 80);
              v58 = *(v51 - 76);
              v51 -= 80;
              if (v57 != v29 || v58 != v28)
              {
                break;
              }

              if (*(v51 + 68) < v33)
              {
                goto LABEL_79;
              }
            }

            v60 = v58 < v28;
            v38 = v57 == v29;
            v61 = v57 < v29;
            if (v38)
            {
              v61 = v60;
            }
          }

          while (!v61);
LABEL_79:
          ;
        }

        while (j < v51);
      }

      if (j - 20 != a1)
      {
        *a1 = *(j - 20);
        a1[1] = *(j - 19);
        if (*(a1 + 31) < 0)
        {
          operator delete(*v30);
        }

        v62 = *(j - 18);
        *(a1 + 3) = *(j - 7);
        *v30 = v62;
        *(j - 49) = 0;
        *(j - 72) = 0;
        if (*(a1 + 55) < 0)
        {
          operator delete(*v32);
        }

        v63 = *(j - 3);
        *(a1 + 6) = *(j - 4);
        *v32 = v63;
        *(j - 25) = 0;
        *(j - 48) = 0;
        v64 = *(j - 6);
        *(a1 + 9) = *(j - 1);
        *(a1 + 14) = v64;
      }

      *(j - 20) = v29;
      *(j - 19) = v28;
      if (*(j - 49) < 0)
      {
        operator delete(*(j - 9));
      }

      *(j - 9) = v259;
      *(j - 57) = *&v282[7];
      *(j - 8) = *v282;
      *(j - 49) = v254;
      a3 = v268;
      a2 = v274;
      if (*(j - 25) < 0)
      {
        operator delete(*(j - 6));
      }

      *(j - 48) = v262;
      *(j - 47) = *v289;
      *(j - 33) = *&v289[14];
      *(j - 25) = v256;
      *(j - 4) = v304;
      *(j - 3) = v298;
      *(j - 3) = v33;
      *(j - 1) = v35;
      v65 = v34 >= i;
      i = v253;
      if (v65)
      {
        v66 = sub_2622E3D9C(a1, (j - 20));
        if (sub_2622E3D9C(j, v274))
        {
          a2 = j - 20;
          if (v66)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v66)
        {
          goto LABEL_94;
        }
      }

      else
      {
LABEL_94:
        sub_2622D8324(a1, j - 20, v268, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v25 = a1[17];
LABEL_96:
      v68 = *a1;
      v67 = *(a1 + 1);
      v69 = (a1 + 2);
      v257 = *(a1 + 1);
      *&v283[7] = *(a1 + 23);
      *v283 = *(a1 + 2);
      v255 = *(a1 + 31);
      *(a1 + 1) = 0;
      v70 = (a1 + 8);
      v263 = *(a1 + 32);
      *(a1 + 2) = 0;
      *(a1 + 3) = 0;
      *&v290[14] = *(a1 + 47);
      *v290 = *(a1 + 33);
      v260 = *(a1 + 55);
      *(a1 + 4) = 0;
      *(a1 + 5) = 0;
      *(a1 + 6) = 0;
      v305 = *(a1 + 16);
      v299 = *(a1 + 7);
      v71 = *(a2 - 20);
      v72 = *(a2 - 19);
      if (v71 == v68 && v72 == v67)
      {
        if (v25 < *(a2 - 3))
        {
          goto LABEL_114;
        }
      }

      else
      {
        v78 = v72 > v67;
        if (v71 != v68)
        {
          v78 = v71 > v68;
        }

        if (v78)
        {
LABEL_114:
          for (j = a1 + 20; ; j += 20)
          {
            v79 = *j;
            v80 = *(j + 1);
            if (*j == v68 && v80 == v67)
            {
              if (v25 < j[17])
              {
                goto LABEL_125;
              }
            }

            else
            {
              v82 = v80 > v67;
              v38 = LODWORD(v79) == v68;
              v83 = SLODWORD(v79) > v68;
              if (v38)
              {
                v83 = v82;
              }

              if (v83)
              {
                goto LABEL_125;
              }
            }
          }
        }
      }

      for (j = a1 + 20; j < a2; j += 20)
      {
        v73 = *j;
        v74 = *(j + 1);
        if (*j == v68 && v74 == v67)
        {
          if (v25 < j[17])
          {
            break;
          }
        }

        else
        {
          v76 = v74 > v67;
          v38 = LODWORD(v73) == v68;
          v77 = SLODWORD(v73) > v68;
          if (v38)
          {
            v77 = v76;
          }

          if (v77)
          {
            break;
          }
        }
      }

LABEL_125:
      v84 = *(a1 + 9);
      k = a2;
      if (j < a2)
      {
        for (k = i; ; k -= 20)
        {
          if (v71 == v68 && v72 == v67)
          {
            if (v25 >= k[17])
            {
              break;
            }
          }

          else
          {
            v86 = v72 > v67;
            v38 = v71 == v68;
            v87 = v71 > v68;
            if (v38)
            {
              v87 = v86;
            }

            if (!v87)
            {
              break;
            }
          }

          v71 = *(k - 20);
          v72 = *(k - 19);
        }
      }

LABEL_154:
      while (j < k)
      {
        sub_2622E3764(j, k);
        do
        {
          while (1)
          {
            v88 = *(j + 20);
            v89 = *(j + 21);
            j += 20;
            if (v88 != v68 || v89 != v67)
            {
              break;
            }

            if (v25 < j[17])
            {
              goto LABEL_147;
            }
          }

          v91 = v89 > v67;
          v38 = v88 == v68;
          v92 = v88 > v68;
          if (v38)
          {
            v92 = v91;
          }
        }

        while (!v92);
        do
        {
LABEL_147:
          while (1)
          {
            v93 = *(k - 20);
            v94 = *(k - 19);
            k -= 20;
            if (v93 != v68 || v94 != v67)
            {
              break;
            }

            if (v25 >= k[17])
            {
              goto LABEL_154;
            }
          }

          v96 = v94 > v67;
          v38 = v93 == v68;
          v97 = v93 > v68;
          if (v38)
          {
            v97 = v96;
          }
        }

        while (v97);
      }

      if (j - 20 != a1)
      {
        *a1 = *(j - 20);
        a1[1] = *(j - 19);
        if (*(a1 + 31) < 0)
        {
          operator delete(*v69);
        }

        v98 = *(j - 18);
        *(a1 + 3) = *(j - 7);
        *v69 = v98;
        *(j - 49) = 0;
        *(j - 72) = 0;
        if (*(a1 + 55) < 0)
        {
          operator delete(*v70);
        }

        v99 = *(j - 3);
        *(a1 + 6) = *(j - 4);
        *v70 = v99;
        *(j - 25) = 0;
        *(j - 48) = 0;
        v100 = *(j - 6);
        *(a1 + 9) = *(j - 1);
        *(a1 + 14) = v100;
      }

      *(j - 20) = v68;
      *(j - 19) = v67;
      if (*(j - 49) < 0)
      {
        operator delete(*(j - 9));
      }

      *(j - 9) = v257;
      *(j - 57) = *&v283[7];
      *(j - 8) = *v283;
      *(j - 49) = v255;
      a3 = v268;
      if (*(j - 25) < 0)
      {
        operator delete(*(j - 6));
      }

      a4 = 0;
      *(j - 48) = v263;
      *(j - 47) = *v290;
      *(j - 33) = *&v290[14];
      *(j - 25) = v260;
      *(j - 4) = v305;
      *(j - 3) = v299;
      *(j - 3) = v25;
      *(j - 1) = v84;
    }
  }

  v105 = a1 + 20;
  v107 = a1 == a2 || v105 == a2;
  if ((a4 & 1) == 0)
  {
    if (v107)
    {
      return;
    }

    for (m = a1 + 34; ; m += 20)
    {
      v228 = a1;
      a1 = v105;
      v229 = *(v228 + 20);
      v230 = *(v228 + 21);
      v231 = *v228;
      v232 = *(v228 + 1);
      if (v229 != *v228 || v230 != v232)
      {
        break;
      }

      v236 = v228[37];
      if (v236 < v228[17])
      {
        goto LABEL_361;
      }

LABEL_379:
      v105 = a1 + 20;
      if (a1 + 20 == a2)
      {
        return;
      }
    }

    v234 = v230 < v232;
    v38 = v229 == v231;
    v235 = v229 < v231;
    if (v38)
    {
      v235 = v234;
    }

    if (!v235)
    {
      goto LABEL_379;
    }

    v236 = v228[37];
LABEL_361:
    v238 = *a1;
    v237 = *(a1 + 1);
    v239 = *(v228 + 11);
    *v287 = *(v228 + 12);
    *&v287[7] = *(v228 + 103);
    v240 = *(v228 + 111);
    *(v228 + 11) = 0;
    *(v228 + 12) = 0;
    v273 = *(v228 + 112);
    *v294 = *(v228 + 113);
    *&v294[14] = *(v228 + 127);
    v241 = *(v228 + 135);
    *(v228 + 15) = 0;
    *(v228 + 16) = 0;
    *(v228 + 13) = 0;
    *(v228 + 14) = 0;
    v308 = *(v228 + 36);
    v303 = *(v228 + 17);
    v242 = *(v228 + 19);
    v243 = m;
    v244 = *v228;
    while (1)
    {
      v245 = *(v243 - 33);
      *(v243 - 14) = v244;
      *(v243 - 13) = v245;
      v246 = (v243 - 12);
      if (*(v243 - 25) < 0)
      {
        operator delete(*v246);
      }

      *v246 = *(v243 - 8);
      *(v243 - 4) = *(v243 - 14);
      *(v243 - 105) = 0;
      *(v243 - 128) = 0;
      v247 = (v243 - 6);
      if (*(v243 - 1) < 0)
      {
        operator delete(*v247);
      }

      *v247 = *(v243 - 26);
      *(v243 - 1) = *(v243 - 11);
      *(v243 - 81) = 0;
      *(v243 - 104) = 0;
      *v243 = *(v243 - 5);
      *(v243 + 2) = *(v243 - 8);
      v244 = *(v243 - 54);
      v248 = *(v243 - 53);
      if (v244 == v238 && v248 == v237)
      {
        if (v236 >= *(v243 - 37))
        {
          goto LABEL_374;
        }
      }

      else
      {
        v249 = v248 > v237;
        if (v244 != v238)
        {
          v249 = v244 > v238;
        }

        if (!v249)
        {
LABEL_374:
          *(v243 - 34) = v238;
          *(v243 - 33) = v237;
          if (*(v243 - 105) < 0)
          {
            operator delete(*(v243 - 16));
          }

          *(v243 - 16) = v239;
          *(v243 - 15) = *v287;
          *(v243 - 113) = *&v287[7];
          *(v243 - 105) = v240;
          if (*(v243 - 81) < 0)
          {
            operator delete(*(v243 - 13));
          }

          *(v243 - 104) = v273;
          *(v243 - 103) = *v294;
          *(v243 - 89) = *&v294[14];
          *(v243 - 81) = v241;
          *(v243 - 18) = v308;
          *(v243 - 10) = v303;
          *(v243 - 17) = v236;
          *(v243 - 8) = v242;
          a2 = v274;
          goto LABEL_379;
        }
      }

      v243 -= 20;
    }
  }

  if (v107)
  {
    return;
  }

  v108 = 0;
  v109 = a1;
  while (2)
  {
    v110 = v109;
    v109 = v105;
    v111 = *(v110 + 20);
    v112 = *(v110 + 21);
    v113 = *v110;
    v114 = *(v110 + 1);
    if (v111 == *v110 && v112 == v114)
    {
      v118 = v110[37];
      if (v118 >= v110[17])
      {
        goto LABEL_220;
      }
    }

    else
    {
      v116 = v112 < v114;
      v38 = v111 == v113;
      v117 = v111 < v113;
      if (v38)
      {
        v117 = v116;
      }

      if (!v117)
      {
        goto LABEL_220;
      }

      v118 = v110[37];
    }

    v120 = *v109;
    v119 = *(v109 + 1);
    v121 = *(v110 + 11);
    *v284 = *(v110 + 12);
    *&v284[7] = *(v110 + 103);
    v122 = *(v110 + 111);
    *(v110 + 11) = 0;
    *(v110 + 12) = 0;
    *v291 = *(v110 + 113);
    *&v291[14] = *(v110 + 127);
    v264 = *(v110 + 135);
    v269 = *(v110 + 112);
    *(v110 + 15) = 0;
    *(v110 + 16) = 0;
    *(v110 + 13) = 0;
    *(v110 + 14) = 0;
    v306 = *(v110 + 36);
    v300 = *(v110 + 17);
    v123 = *(v110 + 19);
    v124 = v108;
    v125 = *v110;
    while (2)
    {
      v126 = a1 + v124;
      v127 = *(a1 + v124 + 4);
      *(v126 + 20) = v125;
      *(v126 + 21) = v127;
      if (*(a1 + v124 + 111) < 0)
      {
        operator delete(*(v126 + 11));
      }

      *(v126 + 88) = *(v126 + 8);
      *(v126 + 13) = *(v126 + 3);
      v126[31] = 0;
      v126[8] = 0;
      if (v126[135] < 0)
      {
        operator delete(*(v126 + 14));
      }

      v128 = a1 + v124;
      *(v126 + 7) = *(a1 + v124 + 32);
      *(v126 + 16) = *(a1 + v124 + 48);
      v128[55] = 0;
      v128[32] = 0;
      *(v128 + 136) = *(a1 + v124 + 56);
      *(v128 + 19) = *(a1 + v124 + 72);
      if (!v124)
      {
        v131 = v128 + 56;
        v132 = a1;
        goto LABEL_215;
      }

      v125 = *(v128 - 20);
      v129 = *(v128 - 19);
      if (v125 == v120 && v129 == v119)
      {
        if (v118 >= *(a1 + v124 - 12))
        {
          break;
        }

        goto LABEL_212;
      }

      v130 = v129 > v119;
      if (v125 != v120)
      {
        v130 = v125 > v120;
      }

      if (v130)
      {
LABEL_212:
        v124 -= 80;
        continue;
      }

      break;
    }

    v128 = a1 + v124;
    v131 = a1 + v124 + 56;
    v132 = v128;
LABEL_215:
    *v132 = v120;
    *(v132 + 1) = v119;
    if (*(v132 + 31) < 0)
    {
      operator delete(*(v128 + 1));
    }

    *(v128 + 1) = v121;
    *(v128 + 2) = *v284;
    *(v128 + 23) = *&v284[7];
    v128[31] = v122;
    if (*(v132 + 55) < 0)
    {
      operator delete(*(v128 + 4));
    }

    v128[32] = v269;
    *(v128 + 33) = *v291;
    *(v128 + 47) = *&v291[14];
    v128[55] = v264;
    *(v131 + 2) = v306;
    *v131 = v300;
    *(v128 + 17) = v118;
    *(v128 + 9) = v123;
    a2 = v274;
LABEL_220:
    v105 = v109 + 20;
    v108 += 80;
    if (v109 + 20 != a2)
    {
      continue;
    }

    break;
  }
}