void sub_1002A38C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
    v34 = a22;
    if (!a22)
    {
LABEL_3:
      v35 = a25;
      if (!a25)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v34 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v34);
  v35 = a25;
  if (!a25)
  {
LABEL_4:
    v36 = a28;
    if (!a28)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v35);
  v36 = a28;
  if (!a28)
  {
LABEL_5:
    v37 = a31;
    if (!a31)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a31;
  if (!a31)
  {
LABEL_6:
    v38 = *(v32 - 184);
    if (!v38)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = *(v32 - 184);
  if (!v38)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  *(v32 - 176) = v38;
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A398C(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  v10 = *(a1 + 3);
  v11 = *a1;
  v175 = a1[1];
  v176 = v11;
  v12 = *(a1 + 1);
  v13 = v10 / 2 + v12 / 2;
  v174[0] = v11;
  LODWORD(v10) = v10 % 2 + v12 % 2;
  v14 = v13 + ((v10 + ((v10 & 0x80) >> 7)) << 24 >> 25);
  v177 = v175;
  v178 = v14;
  v174[1] = v14;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  v168 = 0;
  v169 = 0;
  v170 = 0;
  v165 = 0;
  v166 = 0;
  v167 = 0;
  v162 = 0;
  v163 = 0;
  v164 = 0;
  v159 = 0;
  v160 = 0;
  v161 = 0;
  __p = 0;
  v157 = 0;
  v158 = 0;
  v16 = *a2;
  v15 = *(a2 + 8);
  if (*a2 != v15)
  {
    do
    {
      v18 = *v16;
      v19 = *(*v16 + 32);
      if (v177 >= v19 && v176 <= v18[6])
      {
        v20 = v178 >= v18[5] && *(&v176 + 1) <= v18[7];
        if (v175 < v19)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v20 = 0;
        if (v175 < v19)
        {
          goto LABEL_16;
        }
      }

      if (v174[0] <= v18[6])
      {
        v23 = v18[5];
        v24 = v18[7];
        v25 = *(&v175 + 1) >= v23 && v14 <= v24;
        v26 = v25;
        v27 = v25 || v20;
        if ((v20 & v26) != 0)
        {
          v28 = &v165;
        }

        else
        {
          v28 = &v171;
        }

        if (v20)
        {
          v22 = v28;
        }

        else
        {
          v22 = &v168;
        }

        if ((v27 & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_34;
      }

LABEL_16:
      if (v20)
      {
        v22 = &v171;
LABEL_34:
        sub_100279BF0(v22, v16);
        v15 = *(a2 + 8);
      }

LABEL_3:
      ++v16;
    }

    while (v16 != v15);
  }

  v30 = *a3;
  v29 = *(a3 + 8);
  if (*a3 != v29)
  {
    do
    {
      v31 = *v30;
      v32 = *(*v30 + 32);
      if (v177 >= v32 && v176 <= v31[6])
      {
        v33 = v178 >= v31[5] && *(&v176 + 1) <= v31[7];
        if (v175 < v32)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v33 = 0;
        if (v175 < v32)
        {
          goto LABEL_51;
        }
      }

      if (v174[0] <= v31[6])
      {
        v36 = v31[5];
        v37 = v31[7];
        v38 = *(&v175 + 1) >= v36 && v14 <= v37;
        v39 = v38;
        v40 = v38 || v33;
        if ((v33 & v39) != 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = &v162;
        }

        if (v33)
        {
          v35 = p_p;
        }

        else
        {
          v35 = &v159;
        }

        if ((v40 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

LABEL_51:
      if (!v33)
      {
        goto LABEL_38;
      }

      v35 = &v162;
LABEL_37:
      sub_100279BF0(v35, v30);
      v29 = *(a3 + 8);
LABEL_38:
      ++v30;
    }

    while (v30 != v29);
  }

  v43 = v165;
  v42 = v166;
  if (v165 == v166)
  {
    goto LABEL_133;
  }

  v45 = __p;
  v44 = v157;
  if (a5 > (v166 - v165) >> 3 || a4 > 0x63 || (v157 - __p) >> 3 < a5)
  {
    if (__p != v157)
    {
      do
      {
        v46 = __p;
        if (__p != v44)
        {
          do
          {
            v47 = *v43;
            v48 = *v46;
            if (*(*v43 + 48) >= *(*v46 + 32) && *(v47 + 32) <= *(v48 + 48))
            {
              v49 = *(v47 + 56) >= *(v48 + 40) && *(v47 + 40) <= *(v48 + 56);
              if (v49 && (*(v47 + 96) & 1) == 0 && (*(v48 + 96) & 1) == 0)
              {
                if (!sub_1002A46D4(*(a6 + 10), *a6, v47, *(a6 + 10), *a6, v48, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
                {
                  goto LABEL_245;
                }

                v44 = v157;
              }
            }

            v46 += 8;
          }

          while (v46 != v44);
          v42 = v166;
        }

        v43 += 8;
      }

      while (v43 != v42);
    }
  }

  else
  {
    v154 = 0u;
    v155 = 0u;
    v50 = vnegq_f64(0);
    v51.f64[0] = NAN;
    v51.f64[1] = NAN;
    v52 = vnegq_f64(v51);
    v53 = v52;
    v54 = v50;
    do
    {
      v55 = *v43;
      v43 += 8;
      v56 = v55[2];
      v57 = v55[3];
      v58 = vcgtq_s64(v52, v56);
      v59 = vbslq_s8(v58, v56, v53);
      v60 = vbslq_s8(v58, v56, v52);
      v61 = vcgtq_s64(v60, v57);
      v53 = vbslq_s8(v61, v57, v59);
      v52 = vbslq_s8(v61, v57, v60);
      v62 = vcgtq_s64(v56, v50);
      v63 = vbslq_s8(v62, v56, v54);
      v64 = vbslq_s8(v62, v56, v50);
      v65 = vcgtq_s64(v57, v64);
      v54 = vbslq_s8(v65, v57, v63);
      v50 = vbslq_s8(v65, v57, v64);
    }

    while (v43 != v166);
    v154 = v53;
    v155 = v54;
    if (__p != v157)
    {
      v66 = v53;
      v67 = v54;
      do
      {
        v68 = *v45++;
        v69 = v68[2];
        v70 = v68[3];
        v71 = vcgtq_s64(v53, v69);
        v72 = vbslq_s8(v71, v69, v66);
        v73 = vbslq_s8(v71, v69, v53);
        v74 = vcgtq_s64(v73, v70);
        v66 = vbslq_s8(v74, v70, v72);
        v53 = vbslq_s8(v74, v70, v73);
        v75 = vcgtq_s64(v69, v54);
        v76 = vbslq_s8(v75, v69, v67);
        v77 = vbslq_s8(v75, v69, v54);
        v78 = vcgtq_s64(v70, v77);
        v67 = vbslq_s8(v78, v70, v76);
        v54 = vbslq_s8(v78, v70, v77);
      }

      while (v45 != v157);
      v154 = v66;
      v155 = v67;
    }

    if ((sub_1002A2C48(&v154, &v165, &__p, a4 + 1, a5, a6) & 1) == 0)
    {
      goto LABEL_245;
    }
  }

  v79 = v163;
  if (a5 <= (v163 - v162) >> 3)
  {
    v81 = v165;
    v80 = v166;
    if (a5 <= (v160 - v159) >> 3 && a4 <= 0x63 && (v166 - v165) >> 3 >= a5)
    {
      v86.f64[0] = NAN;
      v86.f64[1] = NAN;
      v87 = vnegq_f64(v86);
      v88 = vnegq_f64(0);
      v154 = v87;
      v155 = v88;
      if (v165 != v166)
      {
        v89 = v87;
        v90 = v88;
        do
        {
          v91 = *v81;
          v81 += 8;
          v92 = v91[2];
          v93 = v91[3];
          v94 = vcgtq_s64(v87, v92);
          v95 = vbslq_s8(v94, v92, v89);
          v96 = vbslq_s8(v94, v92, v87);
          v97 = vcgtq_s64(v96, v93);
          v89 = vbslq_s8(v97, v93, v95);
          v87 = vbslq_s8(v97, v93, v96);
          v98 = vcgtq_s64(v92, v88);
          v99 = vbslq_s8(v98, v92, v90);
          v100 = vbslq_s8(v98, v92, v88);
          v101 = vcgtq_s64(v93, v100);
          v90 = vbslq_s8(v101, v93, v99);
          v88 = vbslq_s8(v101, v93, v100);
        }

        while (v81 != v166);
        v154 = v89;
        v155 = v90;
      }

      if (!sub_1002A2C48(&v154, &v165, &v162, a4 + 1, a5, a6) || (sub_1002A2C48(&v154, &v165, &v159, a4 + 1, a5, a6) & 1) == 0)
      {
        goto LABEL_245;
      }

      goto LABEL_133;
    }
  }

  else
  {
    v81 = v165;
    v80 = v166;
  }

  if (v81 == v80 || v162 == v163)
  {
    if (v81 == v80)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  do
  {
    v82 = v162;
    if (v162 != v79)
    {
      do
      {
        v83 = *v81;
        v84 = *v82;
        if (*(*v81 + 48) >= *(*v82 + 32) && *(v83 + 32) <= *(v84 + 48))
        {
          v85 = *(v83 + 56) >= *(v84 + 40) && *(v83 + 40) <= *(v84 + 56);
          if (v85 && (*(v83 + 96) & 1) == 0 && (*(v84 + 96) & 1) == 0)
          {
            if (!sub_1002A46D4(*(a6 + 10), *a6, v83, *(a6 + 10), *a6, v84, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
            {
              goto LABEL_245;
            }

            v79 = v163;
          }
        }

        v82 += 8;
      }

      while (v82 != v79);
      v80 = v166;
    }

    v81 += 8;
  }

  while (v81 != v80);
  v81 = v165;
  if (v165 != v80)
  {
LABEL_132:
    v102 = v160;
    if (v159 != v160)
    {
      do
      {
        v127 = v159;
        if (v159 != v102)
        {
          do
          {
            v128 = *v81;
            v129 = *v127;
            if (*(*v81 + 48) >= *(*v127 + 32) && *(v128 + 32) <= *(v129 + 48))
            {
              v130 = *(v128 + 56) >= *(v129 + 40) && *(v128 + 40) <= *(v129 + 56);
              if (v130 && (*(v128 + 96) & 1) == 0 && (*(v129 + 96) & 1) == 0)
              {
                if (!sub_1002A46D4(*(a6 + 10), *a6, v128, *(a6 + 10), *a6, v129, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
                {
                  goto LABEL_245;
                }

                v102 = v160;
              }
            }

            v127 += 8;
          }

          while (v127 != v102);
          v80 = v166;
        }

        v81 += 8;
      }

      while (v81 != v80);
    }
  }

LABEL_133:
  v104 = __p;
  v103 = v157;
  if (__p != v157)
  {
    v106 = v171;
    v105 = v172;
    if (a5 > (v172 - v171) >> 3 || a5 > (v169 - v168) >> 3 || a4 > 0x63 || (v157 - __p) >> 3 < a5)
    {
      while (v106 != v105)
      {
        v123 = __p;
        if (__p != v103)
        {
          do
          {
            v124 = *v106;
            v125 = *v123;
            if (*(*v106 + 48) >= *(*v123 + 32) && *(v124 + 32) <= *(v125 + 48))
            {
              v126 = *(v124 + 56) >= *(v125 + 40) && *(v124 + 40) <= *(v125 + 56);
              if (v126 && (*(v124 + 96) & 1) == 0 && (*(v125 + 96) & 1) == 0)
              {
                if (!sub_1002A46D4(*(a6 + 10), *a6, v124, *(a6 + 10), *a6, v125, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
                {
                  goto LABEL_245;
                }

                v103 = v157;
              }
            }

            v123 += 8;
          }

          while (v123 != v103);
          v105 = v172;
        }

        v106 += 8;
      }

      v132 = v168;
      v131 = v169;
      if (v168 != v169 && __p != v103)
      {
        do
        {
          v140 = __p;
          if (__p != v103)
          {
            do
            {
              v141 = *v132;
              v142 = *v140;
              if (*(*v132 + 48) >= *(*v140 + 32) && *(v141 + 32) <= *(v142 + 48))
              {
                v143 = *(v141 + 56) >= *(v142 + 40) && *(v141 + 40) <= *(v142 + 56);
                if (v143 && (*(v141 + 96) & 1) == 0 && (*(v142 + 96) & 1) == 0)
                {
                  if (!sub_1002A46D4(*(a6 + 10), *a6, v141, *(a6 + 10), *a6, v142, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
                  {
                    goto LABEL_245;
                  }

                  v103 = v157;
                }
              }

              v140 += 8;
            }

            while (v140 != v103);
            v131 = v169;
          }

          v132 += 8;
        }

        while (v132 != v131);
      }
    }

    else
    {
      v154 = 0u;
      v155 = 0u;
      v107 = vnegq_f64(0);
      v108.f64[0] = NAN;
      v108.f64[1] = NAN;
      v109 = vnegq_f64(v108);
      v110 = v109;
      v111 = v107;
      do
      {
        v112 = *v104++;
        v113 = v112[2];
        v114 = v112[3];
        v115 = vcgtq_s64(v109, v113);
        v116 = vbslq_s8(v115, v113, v110);
        v117 = vbslq_s8(v115, v113, v109);
        v118 = vcgtq_s64(v117, v114);
        v110 = vbslq_s8(v118, v114, v116);
        v109 = vbslq_s8(v118, v114, v117);
        v119 = vcgtq_s64(v113, v107);
        v120 = vbslq_s8(v119, v113, v111);
        v121 = vbslq_s8(v119, v113, v107);
        v122 = vcgtq_s64(v114, v121);
        v111 = vbslq_s8(v122, v114, v120);
        v107 = vbslq_s8(v122, v114, v121);
      }

      while (v104 != v157);
      v154 = v110;
      v155 = v111;
      if (!sub_1002A2C48(&v154, &v171, &__p, a4 + 1, a5, a6) || (sub_1002A2C48(&v154, &v168, &__p, a4 + 1, a5, a6) & 1) == 0)
      {
        goto LABEL_245;
      }
    }
  }

  v134 = v171;
  v133 = v172;
  if (a5 > (v172 - v171) >> 3 || a4 > 0x63 || (v163 - v162) >> 3 < a5)
  {
    if (v171 != v172)
    {
      v135 = v163;
      if (v162 != v163)
      {
        do
        {
          v136 = v162;
          if (v162 != v135)
          {
            do
            {
              v137 = *v134;
              v138 = *v136;
              if (*(*v134 + 48) >= *(*v136 + 32) && *(v137 + 32) <= *(v138 + 48))
              {
                v139 = *(v137 + 56) >= *(v138 + 40) && *(v137 + 40) <= *(v138 + 56);
                if (v139 && (*(v137 + 96) & 1) == 0 && (*(v138 + 96) & 1) == 0)
                {
                  if (!sub_1002A46D4(*(a6 + 10), *a6, v137, *(a6 + 10), *a6, v138, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
                  {
                    goto LABEL_245;
                  }

                  v135 = v163;
                }
              }

              v136 += 8;
            }

            while (v136 != v135);
            v133 = v172;
          }

          v134 += 8;
        }

        while (v134 != v133);
      }
    }
  }

  else if ((sub_1002A2C48(&v176, &v171, &v162, a4 + 1, a5, a6) & 1) == 0)
  {
    goto LABEL_245;
  }

  v145 = v168;
  v144 = v169;
  if (a5 <= (v169 - v168) >> 3 && a4 <= 0x63 && (v160 - v159) >> 3 >= a5)
  {
    if (sub_1002A2C48(v174, &v168, &v159, a4 + 1, a5, a6))
    {
      goto LABEL_243;
    }

LABEL_245:
    v151 = 0;
    v152 = __p;
    if (!__p)
    {
      goto LABEL_247;
    }

    goto LABEL_246;
  }

  if (v168 != v169)
  {
    v146 = v160;
    if (v159 != v160)
    {
      do
      {
        v147 = v159;
        if (v159 != v146)
        {
          do
          {
            v148 = *v145;
            v149 = *v147;
            if (*(*v145 + 48) >= *(*v147 + 32) && *(v148 + 32) <= *(v149 + 48))
            {
              v150 = *(v148 + 56) >= *(v149 + 40) && *(v148 + 40) <= *(v149 + 56);
              if (v150 && (*(v148 + 96) & 1) == 0 && (*(v149 + 96) & 1) == 0)
              {
                if (!sub_1002A46D4(*(a6 + 10), *a6, v148, *(a6 + 10), *a6, v149, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
                {
                  goto LABEL_245;
                }

                v146 = v160;
              }
            }

            v147 += 8;
          }

          while (v147 != v146);
          v144 = v169;
        }

        v145 += 8;
      }

      while (v145 != v144);
    }
  }

LABEL_243:
  v151 = 1;
  v152 = __p;
  if (__p)
  {
LABEL_246:
    v157 = v152;
    operator delete(v152);
  }

LABEL_247:
  if (v159)
  {
    v160 = v159;
    operator delete(v159);
  }

  if (v162)
  {
    v163 = v162;
    operator delete(v162);
  }

  if (v165)
  {
    v166 = v165;
    operator delete(v165);
  }

  if (v168)
  {
    v169 = v168;
    operator delete(v168);
  }

  if (v171)
  {
    v172 = v171;
    operator delete(v171);
  }

  return v151;
}

void sub_1002A4608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
    v34 = a22;
    if (!a22)
    {
LABEL_3:
      v35 = a25;
      if (!a25)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v34 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v34);
  v35 = a25;
  if (!a25)
  {
LABEL_4:
    v36 = a28;
    if (!a28)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v35);
  v36 = a28;
  if (!a28)
  {
LABEL_5:
    v37 = a31;
    if (!a31)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a31;
  if (!a31)
  {
LABEL_6:
    v38 = *(v32 - 184);
    if (!v38)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = *(v32 - 184);
  if (!v38)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  *(v32 - 176) = v38;
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A46D4(int a1, void *a2, int *a3, int a4, void *a5, int *a6, int a7, int a8, uint64_t a9, uint64_t *a10, void *a11, _BYTE *a12)
{
  v12 = a7;
  if (*(a3 + 96) == 1 && (*(a3 + 10) + 1) < *(a3 + 11) || *(a6 + 96) == 1 && (*(a6 + 10) + 1) < *(a6 + 11))
  {
    return 1;
  }

  v16 = *(a3 + 3);
  v17 = (*a2 + 48 * *(a3 + 2));
  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = &v17[3][3 * v16];
  }

  v18 = *v17;
  v19 = *(a6 + 3);
  v20 = (*a5 + 48 * *(a6 + 2));
  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = &v20[3][3 * v19];
  }

  v21 = v17[1];
  v119 = *v20;
  v125 = v20[1];
  v117 = *a3;
  v124 = *a6;
  v22 = *(a3 + 13);
  v23 = *(a3 + 8);
  v24 = &v18[2 * v23];
  v25 = 2 * *(a3 + 9);
  v118 = &v18[v25 + 2];
  v109 = v21;
  if (2 * v23 == v25)
  {
    v39 = &v18[2 * v23];
    v40 = v24 + 2;
    result = 1;
    v41 = v119;
    if (v24 + 2 == v118)
    {
      return result;
    }

    goto LABEL_34;
  }

  v26 = 0;
  v27 = v24 + 2;
  v28 = &v18[2 * v23];
  v113 = *(a3 + 13);
  v29 = v113;
  v122 = *(a3 + 8);
  do
  {
    v31 = a10[3] + (v27[1] - *(a10 + 1)) * *(a10 + 4);
    if (v31 >= 0.0)
    {
      v32 = 0.5;
    }

    else
    {
      v32 = -0.5;
    }

    sub_100274990(v31 + v32);
    v33 = a10[2] + (*v27 - *a10) * *(a10 + 4);
    if (v33 >= 0.0)
    {
      v34 = 0.5;
    }

    else
    {
      v34 = -0.5;
    }

    v35 = v33 + v34;
    sub_100274990(v33 + v34);
    v36 = ceil(v35);
    v37 = floor(v35);
    if (v35 >= 0.0)
    {
      v36 = v37;
    }

    v38 = v36;
    if (v117 == 1)
    {
      if (*(a6 + 4) <= v38)
      {
        v22 = v29;
        v12 = a7;
        v21 = v109;
        v39 = v28;
        v40 = v28 + 2;
        result = 1;
        v42 = v28 + 2 == v118;
        v41 = v119;
        if (v42)
        {
          return result;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (v117 != -1)
      {
        v39 = v24;
        v12 = a7;
        v21 = v109;
        v22 = v113;
        v23 = v122;
        v40 = v24 + 2;
        result = 1;
        v41 = v119;
        if (v24 + 2 == v118)
        {
          return result;
        }

LABEL_34:
        v114 = v22;
        v43 = &v18[2 * (v39 != v18)];
        v116 = v40;
        if (v40 != v21)
        {
          v43 = v40;
        }

        v44 = v43 != v18;
        v45 = v43 + 2;
        v46 = &v18[2 * v44];
        if (v45 == v21)
        {
          v45 = v46;
        }

        v115 = v45;
        v108 = v41 + 2;
        v106 = v18;
        while (1)
        {
          v49 = a10[3] + (v39[1] - *(a10 + 1)) * *(a10 + 4);
          if (v49 >= 0.0)
          {
            v50 = 0.5;
          }

          else
          {
            v50 = -0.5;
          }

          sub_100274990(v49 + v50);
          v51 = a10[2] + (*v39 - *a10) * *(a10 + 4);
          if (v51 >= 0.0)
          {
            v52 = 0.5;
          }

          else
          {
            v52 = -0.5;
          }

          v53 = v51 + v52;
          sub_100274990(v51 + v52);
          v54 = ceil(v53);
          v55 = floor(v53);
          if (v53 >= 0.0)
          {
            v54 = v55;
          }

          v56 = v54;
          if (v117 == -1)
          {
            if (*(a6 + 4) > v56)
            {
              return 1;
            }
          }

          else if (v117 == 1 && *(a6 + 6) < v56)
          {
            return 1;
          }

          v57 = *(a10 + 1);
          v159 = *a10;
          v156[0] = a3;
          v156[1] = v23;
          v123 = v23;
          v156[2] = v39;
          v156[3] = v116;
          v156[4] = v115;
          v156[5] = v18;
          v156[6] = v21;
          v157 = 1;
          v158 = 0;
          v160 = v57;
          v59 = *(a6 + 8);
          v58 = *(a6 + 9);
          v60 = &v41[2 * v59];
          v161 = a10[4];
          v61 = v60 + 2;
          v126 = &v108[2 * v58];
          v111 = v39;
          v112 = *(a6 + 13);
          if (v60 + 2 != v126)
          {
            v62 = 0;
            v105 = &v41[2 * v59];
            v63 = *(a6 + 13);
            v64 = v59;
            do
            {
              v66 = a10[3] + (v61[1] - *(a10 + 1)) * *(a10 + 4);
              if (v66 >= 0.0)
              {
                v67 = 0.5;
              }

              else
              {
                v67 = -0.5;
              }

              sub_100274990(v66 + v67);
              v68 = a10[2] + (*v61 - *a10) * *(a10 + 4);
              if (v68 >= 0.0)
              {
                v69 = 0.5;
              }

              else
              {
                v69 = -0.5;
              }

              v70 = v68 + v69;
              sub_100274990(v68 + v69);
              v71 = ceil(v70);
              v72 = floor(v70);
              if (v70 >= 0.0)
              {
                v71 = v72;
              }

              v73 = v71;
              if (v124 == 1)
              {
                if (*(a3 + 4) <= v73)
                {
                  goto LABEL_73;
                }
              }

              else
              {
                if (v124 != -1)
                {
                  v60 = v105;
                  goto LABEL_75;
                }

                if (*(a3 + 6) >= v73)
                {
                  v60 = v61 - 2;
                  v112 += v62;
                  v59 += v62;
                  goto LABEL_75;
                }
              }

              v65 = v61 + 2;
              ++v64;
              ++v63;
              ++v62;
              v60 = v61;
              v61 = v65;
            }

            while (v65 != v126);
            v60 = v65 - 2;
LABEL_73:
            v112 = v63;
            v59 = v64;
LABEL_75:
            v12 = a7;
            v41 = v119;
            v39 = v111;
          }

          v74 = v60 + 2;
          if (v60 + 2 != v126)
          {
            break;
          }

          ++v114;
LABEL_40:
          v39 += 2;
          v47 = v116 + 2;
          v23 = v123 + 1;
          v18 = v106;
          v48 = &v106[2 * (v115 != v106)];
          v21 = v109;
          if (v115 + 2 != v109)
          {
            v48 = v115 + 2;
          }

          v115 = v48;
          v116 += 2;
          if (v47 == v118)
          {
            return 1;
          }
        }

        if (v74 == v125)
        {
          v74 = &v41[2 * (v60 != v41)];
        }

        v75 = v74 != v41;
        v76 = v74 + 2;
        v77 = &v41[2 * v75];
        if (v76 == v125)
        {
          v78 = v77;
        }

        else
        {
          v78 = v76;
        }

        v79 = ++v114 - v112;
        while (2)
        {
          v81 = a10[3] + (v60[1] - *(a10 + 1)) * *(a10 + 4);
          if (v81 >= 0.0)
          {
            v82 = 0.5;
          }

          else
          {
            v82 = -0.5;
          }

          sub_100274990(v81 + v82);
          v83 = a10[2] + (*v60 - *a10) * *(a10 + 4);
          if (v83 >= 0.0)
          {
            v84 = 0.5;
          }

          else
          {
            v84 = -0.5;
          }

          v85 = v83 + v84;
          sub_100274990(v83 + v84);
          v86 = ceil(v85);
          v87 = floor(v85);
          if (v85 >= 0.0)
          {
            v86 = v87;
          }

          v88 = v86;
          if (v124 == -1)
          {
            if (*(a3 + 4) > v88)
            {
              goto LABEL_39;
            }
          }

          else if (v124 == 1 && *(a3 + 6) < v88)
          {
            goto LABEL_39;
          }

          v89 = *(a3 + 2);
          if (a1 != a4)
          {
            v90 = *(a3 + 3);
            v92 = *(a6 + 2);
            v91 = *(a6 + 3);
            goto LABEL_110;
          }

          v90 = *(a3 + 3);
          v92 = *(a6 + 2);
          v91 = *(a6 + 3);
          if (v89 != v92)
          {
            goto LABEL_110;
          }

          if (v90 != v91)
          {
            v92 = *(a3 + 2);
            goto LABEL_110;
          }

          if (v12)
          {
            if (v123 >= v59 || (a8 & 1) == 0)
            {
              v91 = *(a3 + 3);
              v92 = *(a3 + 2);
              if (v123 < v59)
              {
                goto LABEL_110;
              }

LABEL_84:
              v80 = v60 + 4;
              v60 += 2;
              ++v59;
              if (v78 + 2 == v125)
              {
                v78 = &v41[2 * (v78 != v41)];
              }

              else
              {
                v78 += 2;
              }

              --v79;
              if (v80 == v126)
              {
LABEL_39:
                v39 = v111;
                goto LABEL_40;
              }

              continue;
            }

LABEL_124:
            if (!v79)
            {
              goto LABEL_84;
            }

            if (!v123)
            {
              v91 = *(a3 + 3);
              v92 = *(a3 + 2);
              if (*(a3 + 11) - 2 <= v59)
              {
                goto LABEL_84;
              }

LABEL_110:
              v93 = *(a10 + 1);
              v153 = *a10;
              v150[0] = a6;
              v150[1] = v59;
              v150[2] = v60;
              v150[3] = v60 + 2;
              v150[4] = v78;
              v150[5] = v41;
              v150[6] = v125;
              v151 = 0;
              v152 = 0;
              v154 = v93;
              v155 = a10[4];
              v128 = 0;
              v129 = 0;
              v130 = -1;
              v131 = 0;
              v132 = 0;
              v139 = 0;
              v140 = 0;
              v141 = 0;
              v147 = 1;
              v148 = 0;
              v149 = 0;
              v133 = a1;
              v134 = v89;
              v135 = v90;
              v136 = v123;
              v137 = xmmword_1003DB120;
              v138 = 1;
              v142 = a4;
              v143 = v92;
              v144 = v91;
              v145 = v59;
              v146 = xmmword_1003DB120;
              v94 = a11[5];
              sub_10029EDFC(v156, v150, &v127, a9, a10, a11);
              v95 = a11[4];
              v96 = a11[1];
              v97 = a11[2];
              v98 = (v96 + 8 * (v95 / 0x14));
              if (v97 == v96)
              {
                v99 = 0;
                if (!v94)
                {
                  goto LABEL_117;
                }
              }

              else
              {
                v99 = *v98 + 200 * (v95 % 0x14);
                if (!v94)
                {
                  goto LABEL_117;
                }
              }

              v100 = v94 - 0x70A3D70A3D70A3D7 * ((v99 - *v98) >> 3);
              if (v100 < 1)
              {
                v101 = 19 - v100;
                v98 -= v101 / 0x14;
                v99 = *v98 + 200 * (20 * (v101 / 0x14) - v101) + 3800;
              }

              else
              {
                v98 += v100 / 0x14uLL;
                v99 = *v98 + 200 * (v100 % 0x14uLL);
              }

LABEL_117:
              v41 = v119;
              v102 = a11[5] + v95;
              v103 = (v96 + 8 * (v102 / 0x14));
              if (v97 == v96)
              {
                v104 = 0;
                if (!v99)
                {
                  goto LABEL_84;
                }
              }

              else
              {
                v104 = *v103 + 200 * (v102 % 0x14);
                if (v104 == v99)
                {
                  goto LABEL_84;
                }
              }

              if (20 * (v103 - v98) - 0x70A3D70A3D70A3D7 * ((v104 - *v103) >> 3) != 0x8F5C28F5C28F5C29 * ((v99 - *v98) >> 3))
              {
                result = 0;
                *a12 = 1;
                return result;
              }

              goto LABEL_84;
            }
          }

          else if (a8)
          {
            goto LABEL_124;
          }

          break;
        }

        v91 = *(a3 + 3);
        v92 = *(a3 + 2);
        goto LABEL_110;
      }

      if (*(a6 + 6) >= v38)
      {
        v22 = v113 + v26;
        v23 = v122 + v26;
        v39 = v27 - 2;
        goto LABEL_29;
      }
    }

    v30 = v27 + 2;
    ++v23;
    ++v29;
    ++v26;
    v28 = v27;
    v27 = v30;
  }

  while (v30 != v118);
  v39 = v30 - 2;
  v22 = v29;
LABEL_29:
  v12 = a7;
  v21 = v109;
  v40 = v39 + 2;
  result = 1;
  v41 = v119;
  if (v39 + 2 != v118)
  {
    goto LABEL_34;
  }

  return result;
}

void sub_1002A5080(unint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 170 * ((v5 - v4) >> 3) - 1;
  }

  v7 = a1[5];
  v8 = v7 + a1[4];
  v9 = v6 - v8;
  v10 = a2 > v9;
  v11 = a2 - v9;
  if (v10)
  {
    sub_1002A54FC(a1, v11);
    v7 = a1[5];
    v4 = a1[1];
    v5 = a1[2];
    v8 = a1[4] + v7;
  }

  v12 = (v4 + 8 * (v8 / 0xAA));
  if (v5 != v4)
  {
    v13 = (*v12 + 24 * (v8 % 0xAA));
    v14 = v13;
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_13:
    v16 = (v4 + 8 * (v8 / 0xAA));
    if (v13 != v14)
    {
      goto LABEL_16;
    }

    return;
  }

  v13 = 0;
  v14 = 0;
  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_9:
  v15 = a2 - 0x5555555555555555 * ((v14 - *v12) >> 3);
  if (v15 < 1)
  {
    v17 = 169 - v15;
    v16 = &v12[-(v17 / 0xAA)];
    v14 = *v16 + 24 * (170 * (v17 / 0xAA) - v17) + 4056;
    if (v13 != v14)
    {
      do
      {
LABEL_16:
        v18 = v14;
        if (v12 != v16)
        {
          v18 = *v12 + 4080;
        }

        if (v13 == v18)
        {
          a1[5] = v7;
          if (v12 == v16)
          {
            return;
          }
        }

        else
        {
          v19 = 24 * ((v18 - v13 - 24) / 0x18uLL) + 24;
          bzero(v13, v19);
          v7 = a1[5] - 0x5555555555555555 * (v19 >> 3);
          a1[5] = v7;
          if (v12 == v16)
          {
            return;
          }
        }

        v20 = v12[1];
        ++v12;
        v13 = v20;
      }

      while (v20 != v14);
    }
  }

  else
  {
    v16 = &v12[v15 / 0xAAuLL];
    v14 = *v16 + 24 * (v15 % 0xAAuLL);
    if (v13 != v14)
    {
      goto LABEL_16;
    }
  }
}

void sub_1002A5288(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v4 = a1[5];
  v7 = a1[1];
  v6 = a1[2];
  v8 = (v7 + 8 * ((v5 + v4) / 0xAA));
  if (v6 == v7)
  {
    v9 = 0;
    if (!a3)
    {
      return;
    }
  }

  else
  {
    v9 = *v8 + 24 * ((v5 + v4) % 0xAA);
    if (v9 == a3)
    {
      return;
    }
  }

  v10 = 170 * (v8 - a2) - 0x5555555555555555 * ((v9 - *v8) >> 3);
  v11 = (a3 - *a2) >> 3;
  v12 = v10 + 0x5555555555555555 * v11;
  if (v12 < 1)
  {
    return;
  }

  v13 = (v7 + 8 * (v5 / 0xAA));
  if (v6 == v7)
  {
    v14 = 0;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = *v13 + 24 * (v5 % 0xAA);
    if (a3 == v14)
    {
LABEL_13:
      if (v14 == v9)
      {
        goto LABEL_23;
      }

      do
      {
LABEL_18:
        v20 = *v14;
        if (*v14)
        {
          *(v14 + 8) = v20;
          operator delete(v20);
        }

        v14 += 24;
        if (v14 - *v13 == 4080)
        {
          v21 = v13[1];
          ++v13;
          v14 = v21;
        }
      }

      while (v14 != v9);
      v7 = a1[1];
      v6 = a1[2];
      v5 = a1[4];
      v4 = a1[5];
      goto LABEL_23;
    }
  }

  v15 = 170 * (a2 - v13) - 0x5555555555555555 * v11;
  v16 = (v14 - *v13) >> 3;
  v17 = v15 + 0x5555555555555555 * v16;
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v17 - 0x5555555555555555 * v16;
  if (v18 >= 1)
  {
    v13 += v18 / 0xAAuLL;
    v14 = *v13 + 24 * (v18 % 0xAAuLL);
    goto LABEL_13;
  }

  v19 = 169 - v18;
  v13 -= v19 / 0xAA;
  v14 = *v13 + 24 * (170 * (v19 / 0xAA) - v19) + 4056;
  if (v14 != v9)
  {
    goto LABEL_18;
  }

LABEL_23:
  if (v6 == v7)
  {
    v22 = 0;
  }

  else
  {
    v22 = 170 * ((v6 - v7) >> 3) - 1;
  }

  v23 = v4 - v12;
  a1[5] = v23;
  if (v22 - (v23 + v5) >= 0x154)
  {
    do
    {
      operator delete(*(v6 - 8));
      v6 = a1[2] - 8;
      v24 = v6 == a1[1];
      v25 = 170 * ((v6 - a1[1]) >> 3) - 1;
      a1[2] = v6;
      if (v24)
      {
        v25 = 0;
      }
    }

    while ((v25 - (a1[5] + a1[4])) > 0x153);
  }
}

void sub_1002A54FC(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4 % 0xAA)
  {
    v5 = v4 / 0xAA + 1;
  }

  else
  {
    v5 = v4 / 0xAA;
  }

  v6 = a1[4];
  if (v5 >= v6 / 0xAA)
  {
    v7 = v6 / 0xAA;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0xAA)
  {
    for (a1[4] = v6 - 170 * v7; v7; --v7)
    {
      v12 = a1[1];
      v14 = *v12;
      a1[1] = (v12 + 1);
      sub_1001C7D6C(a1, &v14);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        sub_10000D444();
      }

      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] -= 170 * v7; v7; --v7)
    {
      v13 = a1[1];
      v14 = *v13;
      a1[1] = (v13 + 1);
      sub_1001C7D6C(a1, &v14);
    }
  }
}

void sub_1002A5BB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A5C20(uint64_t a1)
{
  sub_1002941F4(a1 + 56, *(a1 + 64));
  sub_100294190(a1 + 32, *(a1 + 40));
  return a1;
}

void sub_1002A5C5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = v8 - *a1;
  if (v8 == *a1)
  {
    goto LABEL_14;
  }

  memset(&v52[6], 255, 24);
  v10 = 0.0;
  if (v9 >= 0x40)
  {
    v11 = v7 + 2;
    if (v7 + 2 != v8)
    {
      v12 = v9 - 32;
      if (v12 > 0x2F)
      {
        v15 = (v12 >> 4) + 1;
        v16 = 2 * (v15 & 0x1FFFFFFFFFFFFFFCLL);
        v11 = (v11 + v16 * 8);
        v14 = &v7[v16];
        v17 = v7 + 4;
        v13 = 0.0;
        v18 = v15 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v19 = v17 - 4;
          v53 = vld2q_f64(v19);
          v55 = vld2q_f64(v17);
          v20 = v17 - 2;
          v21 = v17 + 2;
          v57 = vld2q_f64(v20);
          v59 = vld2q_f64(v21);
          v53.val[0] = vmulq_f64(vaddq_f64(v53.val[0], v57.val[0]), vsubq_f64(v53.val[1], v57.val[1]));
          v53.val[1] = vmulq_f64(vaddq_f64(v55.val[0], v59.val[0]), vsubq_f64(v55.val[1], v59.val[1]));
          v13 = v13 + v53.val[0].f64[0] + v53.val[0].f64[1] + v53.val[1].f64[0] + v53.val[1].f64[1];
          v17 += 8;
          v18 -= 4;
        }

        while (v18);
        if (v15 == (v15 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13 = 0.0;
        v14 = v7;
      }

      do
      {
        v22 = *v11;
        v11 += 2;
        v13 = v13 + (*v14 + v22) * (v14[1] - v14[3]);
        v14 += 2;
      }

      while (v11 != v8);
LABEL_10:
      v10 = v13 * 0.5;
    }
  }

  v24 = *v7;
  v23 = *(v7 + 1);
  v51 = a3;
  v25 = sub_1002A6E6C(a4, a3, &unk_1003DB4B0, &v51);
  *(v25 + 56) = 1;
  *(v25 + 8) = v24;
  v25[9] = v23;
  *(v25 + 10) = v10;
  *(v25 + 44) = 0;
  *(v25 + 90) = *v52;
  *(v25 + 13) = *&v52[14];
  v25[15] = 0xBFF0000000000000;
  v27 = v25 + 16;
  v26 = v25[16];
  if (v26)
  {
    v25[17] = v26;
    operator delete(v26);
  }

  *v27 = 0;
  v27[1] = 0;
  v27[2] = 0;
LABEL_14:
  v29 = *(a1 + 24);
  v28 = *(a1 + 32);
  if (v29 != v28)
  {
    while (1)
    {
      ++a3[2];
      v30 = *v29;
      v31 = v29[1];
      v32 = v31 - *v29;
      if (v31 != *v29)
      {
        break;
      }

LABEL_17:
      v29 += 3;
      if (v29 == v28)
      {
        return;
      }
    }

    v33 = 0.0;
    memset(&v52[6], 255, 24);
    if (v32 < 0x40 || (v34 = v30 + 2, v30 + 2 == v31))
    {
LABEL_28:
      v47 = *v30;
      v46 = *(v30 + 1);
      v51 = a3;
      v48 = sub_1002A6E6C(a4, a3, &unk_1003DB4B0, &v51);
      *(v48 + 56) = 1;
      *(v48 + 8) = v47;
      v48[9] = v46;
      *(v48 + 10) = v33;
      *(v48 + 44) = 0;
      *(v48 + 90) = *v52;
      *(v48 + 13) = *&v52[14];
      v48[15] = 0xBFF0000000000000;
      v50 = v48 + 16;
      v49 = v48[16];
      if (v49)
      {
        v48[17] = v49;
        operator delete(v49);
      }

      *v50 = 0;
      v50[1] = 0;
      v50[2] = 0;
      v28 = *(a1 + 32);
      goto LABEL_17;
    }

    v35 = v32 - 32;
    if (v35 > 0x2F)
    {
      v38 = (v35 >> 4) + 1;
      v39 = 2 * (v38 & 0x1FFFFFFFFFFFFFFCLL);
      v34 = (v34 + v39 * 8);
      v37 = &v30[v39];
      v40 = v30 + 4;
      v36 = 0.0;
      v41 = v38 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v42 = v40 - 4;
        v54 = vld2q_f64(v42);
        v56 = vld2q_f64(v40);
        v43 = v40 - 2;
        v44 = v40 + 2;
        v58 = vld2q_f64(v43);
        v60 = vld2q_f64(v44);
        v54.val[0] = vmulq_f64(vaddq_f64(v54.val[0], v58.val[0]), vsubq_f64(v54.val[1], v58.val[1]));
        v54.val[1] = vmulq_f64(vaddq_f64(v56.val[0], v60.val[0]), vsubq_f64(v56.val[1], v60.val[1]));
        v36 = v36 + v54.val[0].f64[0] + v54.val[0].f64[1] + v54.val[1].f64[0] + v54.val[1].f64[1];
        v40 += 8;
        v41 -= 4;
      }

      while (v41);
      if (v38 == (v38 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_27;
      }
    }

    else
    {
      v36 = 0.0;
      v37 = v30;
    }

    do
    {
      v45 = *v34;
      v34 += 2;
      v36 = v36 + (*v37 + v45) * (v37[1] - v37[3]);
      v37 += 2;
    }

    while (v34 != v31);
LABEL_27:
    v33 = v36 * 0.5;
    goto LABEL_28;
  }
}

void sub_1002A5FF8(double **a1, double ***a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v10 = a5 + 1;
  sub_1002A6A9C(a5, a5[1]);
  *a5 = v10;
  v38 = a5;
  a5[2] = 0;
  *v10 = 0;
  v13 = *a4;
  v11 = a4 + 1;
  v12 = v13;
  if (v13 != v11)
  {
    v14 = (a3 + 8);
    do
    {
      v15 = v12[4];
      v16 = *v14;
      if (!*v14)
      {
        goto LABEL_25;
      }

      v18 = v12[5];
      v17 = v12[6];
      v19 = v14;
      do
      {
        v23 = v16[4];
        v24 = v23 < v15;
        if (v23 == v15)
        {
          v25 = v16[5];
          v24 = v25 < v18;
          if (v25 == v18)
          {
            v24 = v16[6] < v17;
          }
        }

        v20 = v24;
        v21 = v20 == 0;
        if (v20)
        {
          v22 = 1;
        }

        else
        {
          v22 = 0;
        }

        if (v21)
        {
          v19 = v16;
        }

        v16 = v16[v22];
      }

      while (v16);
      if (v19 == v14)
      {
        goto LABEL_25;
      }

      v26 = v19[4];
      v27 = v15 < v26;
      if (v15 == v26)
      {
        v28 = v19[5];
        v27 = v18 < v28;
        if (v18 == v28)
        {
          v27 = v17 < v19[6];
        }
      }

      if (v27)
      {
LABEL_25:
        v29 = 0;
        if (v15 == 1)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v19[7] & 1) != 0 || (*(v19 + 57))
        {
          goto LABEL_39;
        }

        v29 = *(v19 + 58);
        if (v15 == 1)
        {
LABEL_33:
          v30 = sub_1002A6898(v12 + 8, a2, a1);
          goto LABEL_34;
        }
      }

      if (v15)
      {
        if ((v29 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_39;
      }

      v30 = sub_1002A6698(v12 + 8, a1, a2);
LABEL_34:
      if (v30 <= 0)
      {
LABEL_35:
        v40 = *(v12 + 7);
        v41 = *(v12 + 9);
        v31 = *(v12 + 105);
        v43 = *(v12 + 89);
        *v44 = v31;
        v32 = v12[16];
        *&v44[15] = v12[15];
        v33 = v12[17];
        if (v33 != v32)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v33 - v32) >> 3) < 0xAAAAAAAAAAAAAABLL)
          {
            operator new();
          }

          sub_10000FC84();
        }

        v42 = v12 + 4;
        v34 = sub_1002A6E6C(v38, v12 + 4, &unk_1003DB4B0, &v42);
        *(v34 + 7) = v40;
        *(v34 + 9) = v41;
        *(v34 + 88) = 0;
        v35 = *v44;
        *(v34 + 89) = v43;
        *(v34 + 105) = v35;
        v34[15] = *&v44[15];
        sub_1002A6CDC(v34 + 16, 0, 0, 0);
      }

LABEL_39:
      v36 = v12[1];
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = v12[2];
          v21 = *v37 == v12;
          v12 = v37;
        }

        while (!v21);
      }

      v12 = v37;
    }

    while (v37 != v11);
  }
}

void sub_1002A62D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002A62FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = v8 - *a1;
  if (v8 == *a1)
  {
    goto LABEL_14;
  }

  memset(&v52[6], 255, 24);
  v10 = 0.0;
  if (v9 >= 0x40)
  {
    v11 = v7 + 2;
    if (v7 + 2 != v8)
    {
      v12 = v9 - 32;
      if (v12 > 0x2F)
      {
        v15 = (v12 >> 4) + 1;
        v16 = 2 * (v15 & 0x1FFFFFFFFFFFFFFCLL);
        v11 = (v11 + v16 * 8);
        v14 = &v7[v16];
        v17 = v7 + 4;
        v13 = 0.0;
        v18 = v15 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v19 = v17 - 4;
          v53 = vld2q_f64(v19);
          v55 = vld2q_f64(v17);
          v20 = v17 - 2;
          v21 = v17 + 2;
          v57 = vld2q_f64(v20);
          v59 = vld2q_f64(v21);
          v53.val[0] = vmulq_f64(vaddq_f64(v53.val[0], v57.val[0]), vsubq_f64(v53.val[1], v57.val[1]));
          v53.val[1] = vmulq_f64(vaddq_f64(v55.val[0], v59.val[0]), vsubq_f64(v55.val[1], v59.val[1]));
          v13 = v13 + v53.val[0].f64[0] + v53.val[0].f64[1] + v53.val[1].f64[0] + v53.val[1].f64[1];
          v17 += 8;
          v18 -= 4;
        }

        while (v18);
        if (v15 == (v15 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13 = 0.0;
        v14 = v7;
      }

      do
      {
        v22 = *v11;
        v11 += 2;
        v13 = v13 + (*v14 + v22) * (v14[1] - v14[3]);
        v14 += 2;
      }

      while (v11 != v8);
LABEL_10:
      v10 = v13 * 0.5;
    }
  }

  v24 = *v7;
  v23 = *(v7 + 1);
  v51 = a3;
  v25 = sub_1002A6E6C(a4, a3, &unk_1003DB4B0, &v51);
  *(v25 + 56) = 1;
  *(v25 + 8) = v24;
  v25[9] = v23;
  *(v25 + 10) = v10;
  *(v25 + 44) = 0;
  *(v25 + 90) = *v52;
  *(v25 + 13) = *&v52[14];
  v25[15] = 0xBFF0000000000000;
  v27 = v25 + 16;
  v26 = v25[16];
  if (v26)
  {
    v25[17] = v26;
    operator delete(v26);
  }

  *v27 = 0;
  v27[1] = 0;
  v27[2] = 0;
LABEL_14:
  v29 = *(a1 + 24);
  v28 = *(a1 + 32);
  if (v29 != v28)
  {
    while (1)
    {
      ++a3[2];
      v30 = *v29;
      v31 = v29[1];
      v32 = v31 - *v29;
      if (v31 != *v29)
      {
        break;
      }

LABEL_17:
      v29 += 3;
      if (v29 == v28)
      {
        return;
      }
    }

    v33 = 0.0;
    memset(&v52[6], 255, 24);
    if (v32 < 0x40 || (v34 = v30 + 2, v30 + 2 == v31))
    {
LABEL_28:
      v47 = *v30;
      v46 = *(v30 + 1);
      v51 = a3;
      v48 = sub_1002A6E6C(a4, a3, &unk_1003DB4B0, &v51);
      *(v48 + 56) = 1;
      *(v48 + 8) = v47;
      v48[9] = v46;
      *(v48 + 10) = v33;
      *(v48 + 44) = 0;
      *(v48 + 90) = *v52;
      *(v48 + 13) = *&v52[14];
      v48[15] = 0xBFF0000000000000;
      v50 = v48 + 16;
      v49 = v48[16];
      if (v49)
      {
        v48[17] = v49;
        operator delete(v49);
      }

      *v50 = 0;
      v50[1] = 0;
      v50[2] = 0;
      v28 = *(a1 + 32);
      goto LABEL_17;
    }

    v35 = v32 - 32;
    if (v35 > 0x2F)
    {
      v38 = (v35 >> 4) + 1;
      v39 = 2 * (v38 & 0x1FFFFFFFFFFFFFFCLL);
      v34 = (v34 + v39 * 8);
      v37 = &v30[v39];
      v40 = v30 + 4;
      v36 = 0.0;
      v41 = v38 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v42 = v40 - 4;
        v54 = vld2q_f64(v42);
        v56 = vld2q_f64(v40);
        v43 = v40 - 2;
        v44 = v40 + 2;
        v58 = vld2q_f64(v43);
        v60 = vld2q_f64(v44);
        v54.val[0] = vmulq_f64(vaddq_f64(v54.val[0], v58.val[0]), vsubq_f64(v54.val[1], v58.val[1]));
        v54.val[1] = vmulq_f64(vaddq_f64(v56.val[0], v60.val[0]), vsubq_f64(v56.val[1], v60.val[1]));
        v36 = v36 + v54.val[0].f64[0] + v54.val[0].f64[1] + v54.val[1].f64[0] + v54.val[1].f64[1];
        v40 += 8;
        v41 -= 4;
      }

      while (v41);
      if (v38 == (v38 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_27;
      }
    }

    else
    {
      v36 = 0.0;
      v37 = v30;
    }

    do
    {
      v45 = *v34;
      v34 += 2;
      v36 = v36 + (*v37 + v45) * (v37[1] - v37[3]);
      v37 += 2;
    }

    while (v34 != v31);
LABEL_27:
    v33 = v36 * 0.5;
    goto LABEL_28;
  }
}

uint64_t sub_1002A6698(double *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a3;
  if (*a3 == *(a3 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    result = sub_100272884(a1, v3);
    if ((result & 0x80000000) == 0)
    {
      break;
    }

    v3 += 6;
    if (v3 == *(a3 + 8))
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (!result)
  {
    v8 = a2[1];
    v9 = a2[3];
    v10 = a2[4];
    if (v9 == v10)
    {
      v20 = 0;
      v15 = *a2;
      if (*a2 != v8)
      {
LABEL_23:
        v15 += 16;
        goto LABEL_24;
      }
    }

    else
    {
      v11 = a2[3];
      do
      {
        v12 = *v11;
        v13 = v11[1];
        v11 += 3;
      }

      while (v12 == v13 && v11 != v10);
      v15 = *a2;
      v16 = a2[3];
      do
      {
        v17 = *v16;
        v18 = v16[1];
        v16 += 3;
      }

      while (v17 == v18 && v16 != v10);
      do
      {
        v20 = *v9;
        if (*v9 != v9[1])
        {
          if (v15 == v8)
          {
            goto LABEL_45;
          }

          goto LABEL_23;
        }

        v9 += 3;
      }

      while (v9 != v10);
      v20 = 0;
      if (v15 != v8)
      {
        goto LABEL_23;
      }
    }

LABEL_45:
    if (v9 == v10)
    {
      return 0;
    }

    v20 += 16;
    if (v20 == v9[1])
    {
      while (1)
      {
        v9 += 3;
        if (v9 == v10)
        {
          break;
        }

        if (*v9 != v9[1])
        {
          v20 = *v9;
          break;
        }
      }
    }

LABEL_24:
    v21 = v15 == v8;
    if (v9 != v10 || v15 != v8)
    {
      while (1)
      {
        v23 = (v21 ? v20 : v15);
        v22 = *a3;
        if (*a3 == *(a3 + 8))
        {
          return 0xFFFFFFFFLL;
        }

        while (1)
        {
          result = sub_100272884(v23, v22);
          if ((result & 0x80000000) == 0)
          {
            break;
          }

          v22 += 6;
          if (v22 == *(a3 + 8))
          {
            return 0xFFFFFFFFLL;
          }
        }

        if (!result)
        {
          if (v21)
          {
            v20 += 16;
            if (v20 == v9[1])
            {
              while (1)
              {
                v9 += 3;
                if (v9 == v10)
                {
                  break;
                }

                if (*v9 != v9[1])
                {
                  v20 = *v9;
                  break;
                }
              }
            }
          }

          else
          {
            v15 += 16;
          }

          v21 = v15 == v8;
          if (v15 != v8)
          {
            continue;
          }

          result = 0;
          if (v9 != v10)
          {
            continue;
          }
        }

        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1002A6898(double *a1, double ***a2, double **a3)
{
  result = sub_100272884(a1, a3);
  if (result)
  {
    return result;
  }

  v6 = *a2;
  v7 = a2[1];
  while (1)
  {
    if (v6 == v7)
    {
      v16 = 0;
      v24 = 0;
      v9 = 0;
      v22 = 0;
      v10 = 0;
      v23 = 0;
      v17 = 0;
      goto LABEL_43;
    }

    v10 = v6[3];
    v9 = v6[4];
    v11 = v10;
    if (v10 != v9)
    {
      v12 = v6[3];
      do
      {
        v13 = *v12;
        v14 = v12[1];
        v12 += 3;
      }

      while (v13 == v14 && v12 != v9);
      v11 = v6[3];
      while (*v11 == v11[1])
      {
        v11 += 3;
        if (v11 == v9)
        {
          v11 = v6[4];
          break;
        }
      }
    }

    v17 = *v6;
    v16 = v6[1];
    if (v10 != v9)
    {
      break;
    }

    if (v17 != v16 || v11 != v10)
    {
      v22 = 0;
      v23 = 0;
      v24 = v6[3];
      goto LABEL_39;
    }

LABEL_9:
    v6 += 6;
  }

  v18 = v6[3];
  do
  {
    v19 = *v18;
    v20 = v18[1];
    v18 += 3;
  }

  while (v19 == v20 && v18 != v9);
  if (v17 == v16 && v11 == v9)
  {
    goto LABEL_9;
  }

  v24 = v6[3];
  do
  {
    v22 = *v24;
    if (*v24 != v24[1])
    {
      goto LABEL_35;
    }

    v24 += 3;
  }

  while (v24 != v9);
  v22 = 0;
  v24 = v6[4];
LABEL_35:
  while (1)
  {
    v23 = *v10;
    if (*v10 != v10[1])
    {
      break;
    }

    v10 += 3;
    if (v10 == v9)
    {
      v23 = 0;
      v10 = v6[4];
      break;
    }
  }

LABEL_39:
  if (v24 == v9)
  {
    v22 = 0;
  }

  if (v10 == v9)
  {
    v23 = 0;
  }

LABEL_43:
  v27 = v6;
  v28 = v7;
  v29 = v17;
  v30 = v16;
  v31 = v24;
  v32 = v9;
  v33 = v22;
  v34 = v10;
  v35 = v9;
  v36 = v23;
  if (v6 == v7)
  {
    return 0;
  }

  do
  {
    sub_1002A6B00(&v27);
    if (v27 == v7)
    {
      if (v7 == v28)
      {
        return 0;
      }

      v25 = v29;
      if (!v29)
      {
        if (!v34)
        {
          result = 0;
          if (!v35 || !v36)
          {
            return result;
          }
        }

        v25 = 0;
      }
    }

    else
    {
      v25 = v29;
    }

    if (v25 == v30)
    {
      v26 = v36;
    }

    else
    {
      v26 = v25;
    }

    result = sub_100272884(v26, a3);
  }

  while (!result);
  return result;
}

void sub_1002A6A9C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002A6A9C(a1, *a2);
    sub_1002A6A9C(a1, a2[1]);
    v4 = a2[16];
    if (v4)
    {
      a2[17] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t **sub_1002A6B00(uint64_t **result)
{
  v1 = result[2];
  if (v1 == result[3])
  {
    v2 = result[9] + 2;
    result[9] = v2;
    v3 = result[7];
    if (v2 == v3[1])
    {
      v26 = v3 + 3;
      result[7] = v26;
      v27 = result[8];
      if (v26 != v27)
      {
        while (*v26 == v26[1])
        {
          v26 += 3;
          result[7] = v26;
          if (v26 == v27)
          {
            goto LABEL_4;
          }
        }

        result[9] = *v26;
      }
    }
  }

  else
  {
    v1 += 2;
    result[2] = v1;
  }

LABEL_4:
  v4 = *result;
  v6 = (*result)[3];
  v5 = (*result)[4];
  if (v6 != v5)
  {
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v6 += 3;
    }

    while (v7 == v8 && v6 != v5);
  }

  if (v1 == (*result)[1] && result[7] == v5 && (v5 == result[8] || !result[9]))
  {
    v10 = (v4 + 48);
    *result = (v4 + 48);
    v11 = result[1];
    while (1)
    {
      if (v10 == v11)
      {
        return result;
      }

      v14 = v10[3];
      v13 = v10[4];
      v15 = v14;
      if (v14 != v13)
      {
        v16 = v10[3];
        do
        {
          v17 = *v16;
          v18 = v16[1];
          v16 += 3;
        }

        while (v17 == v18 && v16 != v13);
        v15 = v10[3];
        while (*v15 == v15[1])
        {
          v15 += 3;
          if (v15 == v13)
          {
            v15 = v10[4];
            break;
          }
        }
      }

      v20 = *v10;
      v21 = v10[1];
      if (v14 == v13)
      {
        if (v20 != v21 || v15 != v14)
        {
          v28 = 0;
          v29 = 0;
          v30 = v10[3];
LABEL_55:
          result[2] = v20;
          result[3] = v21;
          result[4] = v30;
          result[5] = v13;
          if (v30 != v13)
          {
            result[6] = v28;
          }

          result[7] = v14;
          result[8] = v13;
          if (v14 != v13)
          {
            result[9] = v29;
          }

          return result;
        }
      }

      else
      {
        v22 = v10[3];
        do
        {
          v23 = *v22;
          v24 = v22[1];
          v22 += 3;
        }

        while (v23 == v24 && v22 != v13);
        if (v20 != v21 || v15 != v13)
        {
          v30 = v10[3];
          do
          {
            v28 = *v30;
            if (*v30 != v30[1])
            {
              goto LABEL_47;
            }

            v30 += 3;
          }

          while (v30 != v13);
          v28 = 0;
          v30 = v13;
LABEL_47:
          while (1)
          {
            v29 = *v14;
            if (*v14 != v14[1])
            {
              goto LABEL_55;
            }

            v14 += 3;
            if (v14 == v13)
            {
              v29 = 0;
              v14 = v13;
              goto LABEL_55;
            }
          }
        }
      }

      v10 += 6;
      *result = v10;
    }
  }

  return result;
}

char *sub_1002A6CDC(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t *sub_1002A6E6C(uint64_t **a1, uint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_15:
    operator new();
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  while (1)
  {
    while (1)
    {
      v8 = v4;
      v9 = v4[4];
      if (v5 != v9)
      {
        if (v5 >= v9)
        {
          if (v9 >= v5)
          {
            return v8;
          }

          goto LABEL_14;
        }

        goto LABEL_3;
      }

      v10 = v8[5];
      if (v6 != v10)
      {
        break;
      }

      v11 = v8[6];
      if (v7 >= v11)
      {
        if (v11 >= v7)
        {
          return v8;
        }

        goto LABEL_14;
      }

LABEL_3:
      v4 = *v8;
      if (!*v8)
      {
        goto LABEL_15;
      }
    }

    if (v6 < v10)
    {
      goto LABEL_3;
    }

    if (v10 >= v6)
    {
      return v8;
    }

LABEL_14:
    v4 = v8[1];
    if (!v4)
    {
      goto LABEL_15;
    }
  }
}

void sub_1002A6FD8(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10000FC84();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
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

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v12 = 8 * ((v3 - *a1) >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = 24 * v8 + 24;
  v13 = 24 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t sub_1002A7124(double **a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = *a1;
  v7 = a1[1];
  if (0x8E38E38E38E38E39 * (v7 - *a1) <= a5)
  {
    if (v8 == v7)
    {
      return 1;
    }

    else
    {
      while (1)
      {
        v21 = v8;
        v8 += 9;
        v22 = v8;
        if (v8 != v7)
        {
          break;
        }

LABEL_25:
        result = 1;
        if (v8 == v7)
        {
          return result;
        }
      }

      while ((sub_1002A7A5C(a2, v21, v22, 1) & 1) != 0)
      {
        v22 += 9;
        v7 = a1[1];
        if (v22 == v7)
        {
          goto LABEL_25;
        }
      }

      return 0;
    }
  }

  else
  {
    __p = 0;
    v26 = 0;
    v27 = 0;
    v9 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v10 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v23 = v9;
    v24 = v10;
    if (v8 != v7)
    {
      v11 = 1.79769313e308;
      v12 = -1.79769313e308;
      v13 = -1.79769313e308;
      v14 = 1.79769313e308;
      v15 = v8[5];
      if (v15 < 1.79769313e308)
      {
        v23.i64[0] = v8[5];
        v14 = v15;
        if (v15 <= -1.79769313e308)
        {
LABEL_5:
          v16 = v8[6];
          if (v16 >= 1.79769313e308)
          {
            goto LABEL_6;
          }

          goto LABEL_14;
        }
      }

      else if (v15 <= -1.79769313e308)
      {
        goto LABEL_5;
      }

      *v24.i64 = v15;
      v13 = v15;
      v16 = v8[6];
      if (v16 >= 1.79769313e308)
      {
LABEL_6:
        if (v16 <= -1.79769313e308)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }

LABEL_14:
      *&v23.i64[1] = v16;
      v11 = v16;
      if (v16 <= -1.79769313e308)
      {
LABEL_7:
        v17 = v8[7];
        if (v17 >= v14)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }

LABEL_15:
      *&v24.i64[1] = v16;
      v12 = v16;
      v17 = v8[7];
      if (v17 >= v14)
      {
LABEL_8:
        if (v17 <= v13)
        {
          goto LABEL_9;
        }

        goto LABEL_17;
      }

LABEL_16:
      *v23.i64 = v17;
      if (v17 <= v13)
      {
LABEL_9:
        v18 = v8[8];
        if (v18 >= v11)
        {
          goto LABEL_10;
        }

        goto LABEL_18;
      }

LABEL_17:
      *v24.i64 = v17;
      v18 = v8[8];
      if (v18 >= v11)
      {
LABEL_10:
        if (v18 <= v12)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_18:
      *&v23.i64[1] = v18;
      if (v18 <= v12)
      {
LABEL_20:
        operator new();
      }

LABEL_19:
      *&v24.i64[1] = v18;
      goto LABEL_20;
    }

    result = sub_1002A748C(v23.i64, &__p, 0, a5, a2, a3, a4, &v28, *v9.i64, v10);
    if (__p)
    {
      v26 = __p;
      v20 = result;
      operator delete(__p);
      return v20;
    }
  }

  return result;
}

void sub_1002A7464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v18)
  {
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A748C(double *a1, double ***a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  a10.i64[0] = 0.5;
  v16 = (*a1 + a1[2]) * 0.5;
  v18 = *(a1 + 1);
  v73 = *a1;
  *&v17.f64[0] = v73;
  v74[1] = *(&v18 + 1);
  v71 = *(&v73 + 1);
  v72 = v18;
  v74[0] = v16;
  v70 = v16;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  __p = 0;
  v62 = 0;
  v63 = 0;
  v20 = *a2;
  v19 = a2[1];
  if (*a2 == v19)
  {
LABEL_55:
    v50 = v67;
    v49 = v68;
    if (a3 > 0x63 || (v68 - v67) >> 3 < a4)
    {
LABEL_69:
      while (v50 != v49)
      {
        v53 = v50++;
        v54 = v50;
        if (v50 != v49)
        {
          while ((sub_1002A7A5C(a5, *v53, *v54, 1) & 1) != 0)
          {
            ++v54;
            v49 = v68;
            if (v54 == v68)
            {
              goto LABEL_69;
            }
          }

          goto LABEL_58;
        }
      }
    }

    else if (!sub_1002A7D60(&v73, &v67, a3 + 1, a4, a5, a6, a7, a8, v17.f64[0], a10))
    {
      goto LABEL_58;
    }

    v56 = v64;
    v55 = v65;
    if (a3 > 0x63 || (v65 - v64) >> 3 < a4)
    {
      if (v64 != v65)
      {
        while (1)
        {
          v57 = v56++;
          v58 = v56;
          if (v56 != v55)
          {
            break;
          }

LABEL_75:
          v51 = 1;
          if (v56 == v55)
          {
            goto LABEL_59;
          }
        }

        while ((sub_1002A7A5C(a5, *v57, *v58, 1) & 1) != 0)
        {
          ++v58;
          v55 = v65;
          if (v58 == v65)
          {
            goto LABEL_75;
          }
        }

        goto LABEL_58;
      }

      v51 = 1;
    }

    else
    {
      v51 = sub_1002A7D60(&v70, &v64, a3 + 1, a4, a5, a6, a7, a8, v17.f64[0], a10);
    }

    goto LABEL_59;
  }

  do
  {
    v22 = *v20;
    v17.f64[0] = (*v20)[5];
    if (v16 >= v17.f64[0] && *&v73 <= v22[7] && v74[1] >= v22[6])
    {
      v23 = *(&v73 + 1) <= v22[8];
      a10.i64[0] = v72;
      if (*&v72 < v17.f64[0])
      {
        goto LABEL_15;
      }
    }

    else
    {
      v23 = 0;
      a10.i64[0] = v72;
      if (*&v72 < v17.f64[0])
      {
        goto LABEL_15;
      }
    }

    v17.f64[0] = v22[7];
    if (v16 <= v17.f64[0])
    {
      v17.f64[0] = *(&v72 + 1);
      a10.i64[0] = v22[6];
      if (*(&v72 + 1) >= *a10.i64)
      {
        v17.f64[0] = v71;
        a10.i64[0] = v22[8];
        if (v71 <= *a10.i64)
        {
          if (v23)
          {
            p_p = &__p;
          }

          else
          {
            p_p = &v64;
          }

          goto LABEL_17;
        }
      }
    }

LABEL_15:
    if (!v23)
    {
      goto LABEL_3;
    }

    p_p = &v67;
LABEL_17:
    sub_100279BF0(p_p, v20);
    v19 = a2[1];
LABEL_3:
    ++v20;
  }

  while (v20 != v19);
  v26 = __p;
  v25 = v62;
  if (__p == v62)
  {
    goto LABEL_55;
  }

  v59 = 0u;
  v60 = 0u;
  v17 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  a10 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v27 = __p;
  v28 = a10;
  v29 = v17;
  do
  {
    v30 = *v27++;
    v31 = *(v30 + 40);
    v32 = vcgtq_f64(a10, v31);
    v33 = vbslq_s8(v32, v31, v28);
    v34 = vbslq_s8(v32, v31, a10);
    v35 = *(v30 + 56);
    v36 = vcgtq_f64(v34, v35);
    v28 = vbslq_s8(v36, v35, v33);
    a10 = vbslq_s8(v36, v35, v34);
    v37 = vcgtq_f64(v31, v17);
    v38 = vbslq_s8(v37, v31, v29);
    v39 = vbslq_s8(v37, v31, v17);
    v40 = vcgtq_f64(v35, v39);
    v29 = vbslq_s8(v40, v35, v38);
    v17 = vbslq_s8(v40, v35, v39);
  }

  while (v27 != v62);
  v59 = v28;
  v60 = v29;
  if (a3 > 0x63 || (v62 - __p) >> 3 < a4)
  {
    while (1)
    {
      v43 = v26 + 1;
      v44 = v26 + 1;
      if (v26 + 1 != v25)
      {
        break;
      }

LABEL_29:
      ++v26;
      if (v43 == v25)
      {
        goto LABEL_25;
      }
    }

    while ((sub_1002A7A5C(a5, *v26, *v44, 1) & 1) != 0)
    {
      ++v44;
      v25 = v62;
      if (v44 == v62)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_58;
  }

  if (!sub_1002A7D60(v59.i64, &__p, a3 + 1, a4, a5, a6, a7, a8, v17.f64[0], a10))
  {
    goto LABEL_58;
  }

  v25 = v62;
LABEL_25:
  v41 = __p;
  if (a4 > (v25 - __p) >> 3 || a3 > 0x63 || (v68 - v67) >> 3 < a4)
  {
    if (__p != v25)
    {
      v42 = v68;
      if (v67 != v68)
      {
        while (1)
        {
          v45 = v67;
          if (v67 != v42)
          {
            break;
          }

LABEL_34:
          if (++v41 == v25)
          {
            goto LABEL_43;
          }
        }

        while ((sub_1002A7A5C(a5, *v41, *v45, 1) & 1) != 0)
        {
          ++v45;
          v42 = v68;
          if (v45 == v68)
          {
            v25 = v62;
            goto LABEL_34;
          }
        }

        goto LABEL_58;
      }
    }

LABEL_43:
    v46 = __p;
    if (a4 > (v25 - __p) >> 3 || a3 > 0x63 || (v65 - v64) >> 3 < a4)
    {
      if (__p != v25)
      {
        v47 = v65;
        if (v64 != v65)
        {
          while (1)
          {
            v48 = v64;
            if (v64 != v47)
            {
              break;
            }

LABEL_47:
            if (++v46 == v25)
            {
              goto LABEL_55;
            }
          }

          while ((sub_1002A7A5C(a5, *v46, *v48, 1) & 1) != 0)
          {
            ++v48;
            v47 = v65;
            if (v48 == v65)
            {
              v25 = v62;
              goto LABEL_47;
            }
          }

          goto LABEL_58;
        }
      }
    }

    else if ((sub_1002A8D8C(v59.i64, &__p, &v64, a3 + 1, a4, a5, a6, a7, a6, a7, a8) & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  if (sub_1002A8D8C(v59.i64, &__p, &v67, a3 + 1, a4, a5, a6, a7, a6, a7, a8))
  {
    v25 = v62;
    goto LABEL_43;
  }

LABEL_58:
  v51 = 0;
LABEL_59:
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  return v51;
}

void sub_1002A79EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
    v26 = a21;
    if (!a21)
    {
LABEL_3:
      v27 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v26 = a21;
    if (!a21)
    {
      goto LABEL_3;
    }
  }

  operator delete(v26);
  v27 = a24;
  if (!a24)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v27);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A7A5C(uint64_t *a1, double *a2, double *a3, int a4)
{
  if (a4 && (v7 = (a3 + 4), a2[4] < a3[4]))
  {
    if (a1[5])
    {
      goto LABEL_14;
    }

    v39 = a3[3];
    if (v39 > 0.0)
    {
      if (v39 == INFINITY)
      {
        goto LABEL_51;
      }

      v40 = 1.0;
      if (v39 >= 1.0)
      {
        v40 = a3[3];
      }

      if (v39 > v40 * 2.22044605e-16)
      {
LABEL_51:
        v41 = a2[3];
        if (v41 < 0.0)
        {
          if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_14;
          }

          v42 = fabs(v41);
          v43 = vabdd_f64(0.0, v41);
          if (v42 < 1.0)
          {
            v42 = 1.0;
          }

          if (v43 > v42 * 2.22044605e-16)
          {
LABEL_14:
            v8 = a1[3];
            v44 = a2;
            v9 = sub_1002A6E6C(v8, a2, &unk_1003DB4B0, &v44);
            v10 = *(v9 + 8);
            if (v10 >= a3[5] && v10 <= a3[7])
            {
              v12 = *(v9 + 9);
              if (v12 >= a3[6] && v12 <= a3[8])
              {
                v14 = *a1;
                v15 = a1[2];
                v16 = a1[4];
                v17 = *a1[1];
                v18 = v9;
                if (sub_1002A97E4((v9 + 7), a2, a3, v14, v17, v15, v16))
                {
                  v19 = v18;
                  if (v18[12] == -1 || *v7 < *(v18 + 15))
                  {
                    v20 = *a3;
                    v18[14] = *(a3 + 2);
                    *(v18 + 6) = v20;
LABEL_29:
                    v19[15] = *v7;
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    if (a1[5])
    {
      goto LABEL_27;
    }

    v34 = a2[3];
    if (v34 > 0.0)
    {
      if (v34 == INFINITY)
      {
        goto LABEL_39;
      }

      v35 = 1.0;
      if (v34 >= 1.0)
      {
        v35 = a2[3];
      }

      if (v34 > v35 * 2.22044605e-16)
      {
LABEL_39:
        v36 = a3[3];
        if (v36 < 0.0)
        {
          if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_27;
          }

          v37 = fabs(v36);
          v38 = vabdd_f64(0.0, v36);
          if (v37 < 1.0)
          {
            v37 = 1.0;
          }

          if (v38 > v37 * 2.22044605e-16)
          {
LABEL_27:
            v21 = a1[3];
            v44 = a3;
            v22 = sub_1002A6E6C(v21, a3, &unk_1003DB4B0, &v44);
            v23 = *(v22 + 8);
            if (v23 >= a2[5] && v23 <= a2[7])
            {
              v25 = *(v22 + 9);
              if (v25 >= a2[6] && v25 <= a2[8])
              {
                v27 = *a1;
                v28 = a1[2];
                v29 = a1[4];
                v30 = *a1[1];
                v31 = v22;
                if (sub_1002A97E4((v22 + 7), a3, a2, v27, v30, v28, v29))
                {
                  v19 = v31;
                  if (v31[12] == -1 || a2[4] < *(v31 + 15))
                  {
                    v32 = *a2;
                    v31[14] = *(a2 + 2);
                    *(v31 + 6) = v32;
                    v7 = (a2 + 4);
                    goto LABEL_29;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 1;
}

uint64_t sub_1002A7D60(double *a1, double ***a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  v16 = a1[1];
  v17 = a1[3];
  v75 = *a1;
  v18 = v16 + v17;
  a10.i64[0] = 0.5;
  v19 = v18 * 0.5;
  v76 = a1[2];
  v20 = *(a1 + 2);
  *&v73[0] = v75;
  v74 = v20;
  v77 = v19;
  v73[1] = v19;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  __p = 0;
  v65 = 0;
  v66 = 0;
  v22 = *a2;
  v21 = a2[1];
  if (*a2 == v21)
  {
LABEL_55:
    v53 = v70;
    v52 = v71;
    if (a3 > 0x63 || (v71 - v70) >> 3 < a4)
    {
LABEL_69:
      while (v53 != v52)
      {
        v56 = v53++;
        v57 = v53;
        if (v53 != v52)
        {
          while ((sub_1002A7A5C(a5, *v56, *v57, 1) & 1) != 0)
          {
            ++v57;
            v52 = v71;
            if (v57 == v71)
            {
              goto LABEL_69;
            }
          }

          goto LABEL_58;
        }
      }
    }

    else if (!sub_1002A748C(&v75, &v70, a3 + 1, a4, a5, a6, a7, a8, v20.f64[0], a10))
    {
      goto LABEL_58;
    }

    v59 = v67;
    v58 = v68;
    if (a3 > 0x63 || (v68 - v67) >> 3 < a4)
    {
      if (v67 != v68)
      {
        while (1)
        {
          v60 = v59++;
          v61 = v59;
          if (v59 != v58)
          {
            break;
          }

LABEL_75:
          v54 = 1;
          if (v59 == v58)
          {
            goto LABEL_59;
          }
        }

        while ((sub_1002A7A5C(a5, *v60, *v61, 1) & 1) != 0)
        {
          ++v61;
          v58 = v68;
          if (v61 == v68)
          {
            goto LABEL_75;
          }
        }

        goto LABEL_58;
      }

      v54 = 1;
    }

    else
    {
      v54 = sub_1002A748C(v73, &v67, a3 + 1, a4, a5, a6, a7, a8, v20.f64[0], a10);
    }

    goto LABEL_59;
  }

  v24 = v76;
  do
  {
    v25 = *v22;
    v20.f64[0] = (*v22)[5];
    if (v24 >= v20.f64[0] && *&v75 <= v25[7] && v19 >= v25[6])
    {
      v26 = *(&v75 + 1) <= v25[8];
      a10.i64[0] = *&v74.f64[0];
      if (v74.f64[0] < v20.f64[0])
      {
        goto LABEL_15;
      }
    }

    else
    {
      v26 = 0;
      a10.i64[0] = *&v74.f64[0];
      if (v74.f64[0] < v20.f64[0])
      {
        goto LABEL_15;
      }
    }

    v20.f64[0] = v73[0];
    a10.i64[0] = v25[7];
    if (v73[0] <= *a10.i64)
    {
      v20.f64[0] = v74.f64[1];
      a10.i64[0] = v25[6];
      if (v74.f64[1] >= *a10.i64)
      {
        v20.f64[0] = v25[8];
        if (v19 <= v20.f64[0])
        {
          if (v26)
          {
            p_p = &__p;
          }

          else
          {
            p_p = &v67;
          }

          goto LABEL_17;
        }
      }
    }

LABEL_15:
    if (!v26)
    {
      goto LABEL_3;
    }

    p_p = &v70;
LABEL_17:
    sub_100279BF0(p_p, v22);
    v21 = a2[1];
LABEL_3:
    ++v22;
  }

  while (v22 != v21);
  v29 = __p;
  v28 = v65;
  if (__p == v65)
  {
    goto LABEL_55;
  }

  v62 = 0u;
  v63 = 0u;
  v20 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  a10 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v30 = __p;
  v31 = a10;
  v32 = v20;
  do
  {
    v33 = *v30++;
    v34 = *(v33 + 40);
    v35 = vcgtq_f64(a10, v34);
    v36 = vbslq_s8(v35, v34, v31);
    v37 = vbslq_s8(v35, v34, a10);
    v38 = *(v33 + 56);
    v39 = vcgtq_f64(v37, v38);
    v31 = vbslq_s8(v39, v38, v36);
    a10 = vbslq_s8(v39, v38, v37);
    v40 = vcgtq_f64(v34, v20);
    v41 = vbslq_s8(v40, v34, v32);
    v42 = vbslq_s8(v40, v34, v20);
    v43 = vcgtq_f64(v38, v42);
    v32 = vbslq_s8(v43, v38, v41);
    v20 = vbslq_s8(v43, v38, v42);
  }

  while (v30 != v65);
  v62 = v31;
  v63 = v32;
  if (a3 > 0x63 || (v65 - __p) >> 3 < a4)
  {
    while (1)
    {
      v46 = v29 + 1;
      v47 = v29 + 1;
      if (v29 + 1 != v28)
      {
        break;
      }

LABEL_29:
      ++v29;
      if (v46 == v28)
      {
        goto LABEL_25;
      }
    }

    while ((sub_1002A7A5C(a5, *v29, *v47, 1) & 1) != 0)
    {
      ++v47;
      v28 = v65;
      if (v47 == v65)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_58;
  }

  if (!sub_1002A748C(v62.i64, &__p, a3 + 1, a4, a5, a6, a7, a8, v20.f64[0], a10))
  {
    goto LABEL_58;
  }

  v28 = v65;
LABEL_25:
  v44 = __p;
  if (a4 > (v28 - __p) >> 3 || a3 > 0x63 || (v71 - v70) >> 3 < a4)
  {
    if (__p != v28)
    {
      v45 = v71;
      if (v70 != v71)
      {
        while (1)
        {
          v48 = v70;
          if (v70 != v45)
          {
            break;
          }

LABEL_34:
          if (++v44 == v28)
          {
            goto LABEL_43;
          }
        }

        while ((sub_1002A7A5C(a5, *v44, *v48, 1) & 1) != 0)
        {
          ++v48;
          v45 = v71;
          if (v48 == v71)
          {
            v28 = v65;
            goto LABEL_34;
          }
        }

        goto LABEL_58;
      }
    }

LABEL_43:
    v49 = __p;
    if (a4 > (v28 - __p) >> 3 || a3 > 0x63 || (v68 - v67) >> 3 < a4)
    {
      if (__p != v28)
      {
        v50 = v68;
        if (v67 != v68)
        {
          while (1)
          {
            v51 = v67;
            if (v67 != v50)
            {
              break;
            }

LABEL_47:
            if (++v49 == v28)
            {
              goto LABEL_55;
            }
          }

          while ((sub_1002A7A5C(a5, *v49, *v51, 1) & 1) != 0)
          {
            ++v51;
            v50 = v68;
            if (v51 == v68)
            {
              v28 = v65;
              goto LABEL_47;
            }
          }

          goto LABEL_58;
        }
      }
    }

    else if ((sub_1002A833C(v62.i64, &__p, &v67, a3 + 1, a4, a5, a6, a7, a6, a7, a8) & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  if (sub_1002A833C(v62.i64, &__p, &v70, a3 + 1, a4, a5, a6, a7, a6, a7, a8))
  {
    v28 = v65;
    goto LABEL_43;
  }

LABEL_58:
  v54 = 0;
LABEL_59:
  if (__p)
  {
    v65 = __p;
    operator delete(__p);
  }

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

  return v54;
}

void sub_1002A82CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
    v26 = a21;
    if (!a21)
    {
LABEL_3:
      v27 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v26 = a21;
    if (!a21)
    {
      goto LABEL_3;
    }
  }

  operator delete(v26);
  v27 = a24;
  if (!a24)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v27);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A833C(double *a1, double ***a2, double ***a3, unint64_t a4, unint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = (*a1 + a1[2]) * 0.5;
  v17 = *(a1 + 1);
  v143 = *a1;
  v144[1] = *(&v17 + 1);
  v141 = *(&v143 + 1);
  v142 = v17;
  v144[0] = v16;
  v140 = v16;
  v137 = 0;
  v138 = 0;
  v139 = 0;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  __p = 0;
  v123 = 0;
  v124 = 0;
  v19 = *a2;
  v18 = a2[1];
  if (*a2 != v18)
  {
    do
    {
      v21 = *v19;
      v22 = (*v19)[5];
      if (v144[0] >= v22 && *&v143 <= v21[7] && v144[1] >= v21[6])
      {
        v23 = *(&v143 + 1) <= v21[8];
        if (*&v142 < v22)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v23 = 0;
        if (*&v142 < v22)
        {
          goto LABEL_15;
        }
      }

      if (v16 <= v21[7] && *(&v142 + 1) >= v21[6] && v141 <= v21[8])
      {
        if (v23)
        {
          v24 = &v131;
        }

        else
        {
          v24 = &v134;
        }

        goto LABEL_17;
      }

LABEL_15:
      if (v23)
      {
        v24 = &v137;
LABEL_17:
        sub_100279BF0(v24, v19);
        v18 = a2[1];
      }

      ++v19;
    }

    while (v19 != v18);
  }

  v26 = *a3;
  v25 = a3[1];
  if (*a3 != v25)
  {
    do
    {
      v27 = *v26;
      v28 = (*v26)[5];
      if (v144[0] >= v28 && *&v143 <= v27[7] && v144[1] >= v27[6])
      {
        v29 = *(&v143 + 1) <= v27[8];
        if (*&v142 < v28)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v29 = 0;
        if (*&v142 < v28)
        {
          goto LABEL_32;
        }
      }

      if (v16 <= v27[7] && *(&v142 + 1) >= v27[6] && v141 <= v27[8])
      {
        if (v29)
        {
          p_p = &__p;
        }

        else
        {
          p_p = &v125;
        }

        goto LABEL_34;
      }

LABEL_32:
      if (v29)
      {
        p_p = &v128;
LABEL_34:
        sub_100279BF0(p_p, v26);
        v25 = a3[1];
      }

      ++v26;
    }

    while (v26 != v25);
  }

  v32 = v131;
  v31 = v132;
  if (v131 == v132)
  {
    goto LABEL_61;
  }

  v34 = __p;
  v33 = v123;
  if (a5 > (v132 - v131) >> 3 || a4 > 0x63 || (v123 - __p) >> 3 < a5)
  {
    if (__p != v123)
    {
      while (1)
      {
        v35 = __p;
        if (__p != v33)
        {
          break;
        }

LABEL_39:
        if (++v32 == v31)
        {
          goto LABEL_54;
        }
      }

      while ((sub_1002A7A5C(a6, *v32, *v35, 1) & 1) != 0)
      {
        ++v35;
        v33 = v123;
        if (v35 == v123)
        {
          v31 = v132;
          goto LABEL_39;
        }
      }

      goto LABEL_129;
    }
  }

  else
  {
    v36 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v120 = 0u;
    v121 = 0u;
    v37 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v38 = v37;
    v39 = v36;
    do
    {
      v40 = *v32++;
      v41 = *(v40 + 5);
      v42 = vcgtq_f64(v37, v41);
      v43 = vbslq_s8(v42, v41, v38);
      v44 = vbslq_s8(v42, v41, v37);
      v45 = *(v40 + 7);
      v46 = vcgtq_f64(v44, v45);
      v38 = vbslq_s8(v46, v45, v43);
      v37 = vbslq_s8(v46, v45, v44);
      v47 = vcgtq_f64(v41, v36);
      v48 = vbslq_s8(v47, v41, v39);
      v49 = vbslq_s8(v47, v41, v36);
      v50 = vcgtq_f64(v45, v49);
      v39 = vbslq_s8(v50, v45, v48);
      v36 = vbslq_s8(v50, v45, v49);
    }

    while (v32 != v132);
    if (__p == v123)
    {
      v51 = v38;
      v52 = v39;
    }

    else
    {
      v51 = v38;
      v52 = v39;
      do
      {
        v53 = *v34++;
        v54 = *(v53 + 40);
        v55 = vcgtq_f64(v38, v54);
        v56 = vbslq_s8(v55, v54, v51);
        v57 = vbslq_s8(v55, v54, v38);
        v58 = *(v53 + 56);
        v59 = vcgtq_f64(v57, v58);
        v51 = vbslq_s8(v59, v58, v56);
        v38 = vbslq_s8(v59, v58, v57);
        v60 = vcgtq_f64(v54, v39);
        v61 = vbslq_s8(v60, v54, v52);
        v62 = vbslq_s8(v60, v54, v39);
        v63 = vcgtq_f64(v58, v62);
        v52 = vbslq_s8(v63, v58, v61);
        v39 = vbslq_s8(v63, v58, v62);
      }

      while (v34 != v123);
    }

    v120 = v51;
    v121 = v52;
    if ((sub_1002A8D8C(v120.i64, &v131, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
    {
      goto LABEL_129;
    }
  }

LABEL_54:
  v64 = v129;
  if (a5 <= (v129 - v128) >> 3)
  {
    v66 = v131;
    v65 = v132;
    if (a5 <= (v126 - v125) >> 3 && a4 <= 0x63 && (v132 - v131) >> 3 >= a5)
    {
      v120 = 0u;
      v121 = 0u;
      if (v131 == v132)
      {
        v106 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
        v105 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      }

      else
      {
        v103 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
        v104 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v105 = v104;
        v106 = v103;
        do
        {
          v107 = *v66++;
          v108 = *(v107 + 5);
          v109 = vcgtq_f64(v104, v108);
          v110 = vbslq_s8(v109, v108, v105);
          v111 = vbslq_s8(v109, v108, v104);
          v112 = *(v107 + 7);
          v113 = vcgtq_f64(v111, v112);
          v105 = vbslq_s8(v113, v112, v110);
          v104 = vbslq_s8(v113, v112, v111);
          v114 = vcgtq_f64(v108, v103);
          v115 = vbslq_s8(v114, v108, v106);
          v116 = vbslq_s8(v114, v108, v103);
          v117 = vcgtq_f64(v112, v116);
          v106 = vbslq_s8(v117, v112, v115);
          v103 = vbslq_s8(v117, v112, v116);
        }

        while (v66 != v132);
      }

      v120 = v105;
      v121 = v106;
      if (!sub_1002A8D8C(v120.i64, &v131, &v128, a4 + 1, a5, a6, a7, a8, a9, a10, a11) || (sub_1002A8D8C(v120.i64, &v131, &v125, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_61;
    }
  }

  else
  {
    v66 = v131;
    v65 = v132;
  }

  if (v66 == v65 || v128 == v129)
  {
    if (v66 != v65)
    {
LABEL_60:
      v67 = v126;
      if (v125 != v126)
      {
        while (1)
        {
          v89 = v125;
          if (v125 != v67)
          {
            break;
          }

LABEL_82:
          if (++v66 == v65)
          {
            goto LABEL_61;
          }
        }

        while ((sub_1002A7A5C(a6, *v66, *v89, 1) & 1) != 0)
        {
          ++v89;
          v67 = v126;
          if (v89 == v126)
          {
            v65 = v132;
            goto LABEL_82;
          }
        }

        goto LABEL_129;
      }
    }
  }

  else
  {
    do
    {
      v88 = v128;
      if (v128 != v64)
      {
        while ((sub_1002A7A5C(a6, *v66, *v88, 1) & 1) != 0)
        {
          ++v88;
          v64 = v129;
          if (v88 == v129)
          {
            v65 = v132;
            goto LABEL_77;
          }
        }

        goto LABEL_129;
      }

LABEL_77:
      ++v66;
    }

    while (v66 != v65);
    v66 = v131;
    if (v131 != v65)
    {
      goto LABEL_60;
    }
  }

LABEL_61:
  v69 = __p;
  v68 = v123;
  if (__p != v123)
  {
    v71 = v137;
    v70 = v138;
    if (a5 > (v138 - v137) >> 3 || a5 > (v135 - v134) >> 3 || a4 > 0x63 || (v123 - __p) >> 3 < a5)
    {
      while (v71 != v70)
      {
        v87 = __p;
        if (__p != v68)
        {
          while ((sub_1002A7A5C(a6, *v71, *v87, 1) & 1) != 0)
          {
            ++v87;
            v68 = v123;
            if (v87 == v123)
            {
              v70 = v138;
              goto LABEL_71;
            }
          }

          goto LABEL_129;
        }

LABEL_71:
        ++v71;
      }

      v91 = v134;
      v90 = v135;
      if (v134 == v135 || __p == v68)
      {
        goto LABEL_89;
      }

      while (1)
      {
        v100 = __p;
        if (__p != v68)
        {
          break;
        }

LABEL_110:
        if (++v91 == v90)
        {
          goto LABEL_89;
        }
      }

      while ((sub_1002A7A5C(a6, *v91, *v100, 1) & 1) != 0)
      {
        ++v100;
        v68 = v123;
        if (v100 == v123)
        {
          v90 = v135;
          goto LABEL_110;
        }
      }

      goto LABEL_129;
    }

    v72 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v120 = 0u;
    v121 = 0u;
    v73 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v74 = v73;
    v75 = v72;
    do
    {
      v76 = *v69++;
      v77 = *(v76 + 40);
      v78 = vcgtq_f64(v73, v77);
      v79 = vbslq_s8(v78, v77, v74);
      v80 = vbslq_s8(v78, v77, v73);
      v81 = *(v76 + 56);
      v82 = vcgtq_f64(v80, v81);
      v74 = vbslq_s8(v82, v81, v79);
      v73 = vbslq_s8(v82, v81, v80);
      v83 = vcgtq_f64(v77, v72);
      v84 = vbslq_s8(v83, v77, v75);
      v85 = vbslq_s8(v83, v77, v72);
      v86 = vcgtq_f64(v81, v85);
      v75 = vbslq_s8(v86, v81, v84);
      v72 = vbslq_s8(v86, v81, v85);
    }

    while (v69 != v123);
    v120 = v74;
    v121 = v75;
    if (!sub_1002A8D8C(v120.i64, &v137, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) || (sub_1002A8D8C(v120.i64, &v134, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
    {
      goto LABEL_129;
    }
  }

LABEL_89:
  v93 = v137;
  v92 = v138;
  if (a5 > (v138 - v137) >> 3 || a4 > 0x63 || (v129 - v128) >> 3 < a5)
  {
    if (v137 != v138)
    {
      v94 = v129;
      if (v128 != v129)
      {
        while (1)
        {
          v95 = v128;
          if (v128 != v94)
          {
            break;
          }

LABEL_93:
          if (++v93 == v92)
          {
            goto LABEL_101;
          }
        }

        while ((sub_1002A7A5C(a6, *v93, *v95, 1) & 1) != 0)
        {
          ++v95;
          v94 = v129;
          if (v95 == v129)
          {
            v92 = v138;
            goto LABEL_93;
          }
        }

        goto LABEL_129;
      }
    }
  }

  else if ((sub_1002A8D8C(&v143, &v137, &v128, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_101:
  v97 = v134;
  v96 = v135;
  if (a5 > (v135 - v134) >> 3 || a4 > 0x63 || (v126 - v125) >> 3 < a5)
  {
    if (v134 == v135)
    {
      goto LABEL_118;
    }

    v98 = v126;
    if (v125 == v126)
    {
      goto LABEL_118;
    }

    while (1)
    {
      v99 = v125;
      if (v125 != v98)
      {
        break;
      }

LABEL_105:
      if (++v97 == v96)
      {
        goto LABEL_118;
      }
    }

    while ((sub_1002A7A5C(a6, *v97, *v99, 1) & 1) != 0)
    {
      ++v99;
      v98 = v126;
      if (v99 == v126)
      {
        v96 = v135;
        goto LABEL_105;
      }
    }

LABEL_129:
    v101 = 0;
    v102 = __p;
    if (!__p)
    {
      goto LABEL_131;
    }

    goto LABEL_130;
  }

  if ((sub_1002A8D8C(&v140, &v134, &v125, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_118:
  v101 = 1;
  v102 = __p;
  if (__p)
  {
LABEL_130:
    v123 = v102;
    operator delete(v102);
  }

LABEL_131:
  if (v125)
  {
    v126 = v125;
    operator delete(v125);
  }

  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }

  if (v134)
  {
    v135 = v134;
    operator delete(v134);
  }

  if (v137)
  {
    v138 = v137;
    operator delete(v137);
  }

  return v101;
}

void sub_1002A8CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
    v34 = a20;
    if (!a20)
    {
LABEL_3:
      v35 = a23;
      if (!a23)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v34 = a20;
    if (!a20)
    {
      goto LABEL_3;
    }
  }

  operator delete(v34);
  v35 = a23;
  if (!a23)
  {
LABEL_4:
    v36 = a26;
    if (!a26)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v35);
  v36 = a26;
  if (!a26)
  {
LABEL_5:
    v37 = a29;
    if (!a29)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a29;
  if (!a29)
  {
LABEL_6:
    v38 = a32;
    if (!a32)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = a32;
  if (!a32)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A8D8C(double *a1, double ***a2, double ***a3, unint64_t a4, unint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = (a1[1] + a1[3]) * 0.5;
  v143 = a1[2];
  v17 = *(a1 + 1);
  v140 = *a1;
  v141 = v17;
  v142 = v140;
  v144 = v16;
  *(&v140 + 1) = v16;
  v137 = 0;
  v138 = 0;
  v139 = 0;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  __p = 0;
  v123 = 0;
  v124 = 0;
  v19 = *a2;
  v18 = a2[1];
  if (*a2 != v18)
  {
    do
    {
      v21 = *v19;
      v22 = (*v19)[5];
      if (v143 >= v22 && *&v142 <= v21[7] && v144 >= v21[6])
      {
        v23 = *(&v142 + 1) <= v21[8];
        if (*&v141 < v22)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v23 = 0;
        if (*&v141 < v22)
        {
          goto LABEL_15;
        }
      }

      if (*&v140 <= v21[7] && *(&v141 + 1) >= v21[6] && v16 <= v21[8])
      {
        if (v23)
        {
          v24 = &v131;
        }

        else
        {
          v24 = &v134;
        }

        goto LABEL_17;
      }

LABEL_15:
      if (v23)
      {
        v24 = &v137;
LABEL_17:
        sub_100279BF0(v24, v19);
        v18 = a2[1];
      }

      ++v19;
    }

    while (v19 != v18);
  }

  v26 = *a3;
  v25 = a3[1];
  if (*a3 != v25)
  {
    do
    {
      v27 = *v26;
      v28 = (*v26)[5];
      if (v143 >= v28 && *&v142 <= v27[7] && v144 >= v27[6])
      {
        v29 = *(&v142 + 1) <= v27[8];
        if (*&v141 < v28)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v29 = 0;
        if (*&v141 < v28)
        {
          goto LABEL_32;
        }
      }

      if (*&v140 <= v27[7] && *(&v141 + 1) >= v27[6] && v16 <= v27[8])
      {
        if (v29)
        {
          p_p = &__p;
        }

        else
        {
          p_p = &v125;
        }

        goto LABEL_34;
      }

LABEL_32:
      if (v29)
      {
        p_p = &v128;
LABEL_34:
        sub_100279BF0(p_p, v26);
        v25 = a3[1];
      }

      ++v26;
    }

    while (v26 != v25);
  }

  v32 = v131;
  v31 = v132;
  if (v131 == v132)
  {
    goto LABEL_61;
  }

  v34 = __p;
  v33 = v123;
  if (a5 > (v132 - v131) >> 3 || a4 > 0x63 || (v123 - __p) >> 3 < a5)
  {
    if (__p != v123)
    {
      while (1)
      {
        v35 = __p;
        if (__p != v33)
        {
          break;
        }

LABEL_39:
        if (++v32 == v31)
        {
          goto LABEL_54;
        }
      }

      while ((sub_1002A7A5C(a6, *v32, *v35, 1) & 1) != 0)
      {
        ++v35;
        v33 = v123;
        if (v35 == v123)
        {
          v31 = v132;
          goto LABEL_39;
        }
      }

      goto LABEL_129;
    }
  }

  else
  {
    v36 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v120 = 0u;
    v121 = 0u;
    v37 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v38 = v37;
    v39 = v36;
    do
    {
      v40 = *v32++;
      v41 = *(v40 + 5);
      v42 = vcgtq_f64(v37, v41);
      v43 = vbslq_s8(v42, v41, v38);
      v44 = vbslq_s8(v42, v41, v37);
      v45 = *(v40 + 7);
      v46 = vcgtq_f64(v44, v45);
      v38 = vbslq_s8(v46, v45, v43);
      v37 = vbslq_s8(v46, v45, v44);
      v47 = vcgtq_f64(v41, v36);
      v48 = vbslq_s8(v47, v41, v39);
      v49 = vbslq_s8(v47, v41, v36);
      v50 = vcgtq_f64(v45, v49);
      v39 = vbslq_s8(v50, v45, v48);
      v36 = vbslq_s8(v50, v45, v49);
    }

    while (v32 != v132);
    if (__p == v123)
    {
      v51 = v38;
      v52 = v39;
    }

    else
    {
      v51 = v38;
      v52 = v39;
      do
      {
        v53 = *v34++;
        v54 = *(v53 + 40);
        v55 = vcgtq_f64(v38, v54);
        v56 = vbslq_s8(v55, v54, v51);
        v57 = vbslq_s8(v55, v54, v38);
        v58 = *(v53 + 56);
        v59 = vcgtq_f64(v57, v58);
        v51 = vbslq_s8(v59, v58, v56);
        v38 = vbslq_s8(v59, v58, v57);
        v60 = vcgtq_f64(v54, v39);
        v61 = vbslq_s8(v60, v54, v52);
        v62 = vbslq_s8(v60, v54, v39);
        v63 = vcgtq_f64(v58, v62);
        v52 = vbslq_s8(v63, v58, v61);
        v39 = vbslq_s8(v63, v58, v62);
      }

      while (v34 != v123);
    }

    v120 = v51;
    v121 = v52;
    if ((sub_1002A833C(v120.i64, &v131, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
    {
      goto LABEL_129;
    }
  }

LABEL_54:
  v64 = v129;
  if (a5 <= (v129 - v128) >> 3)
  {
    v66 = v131;
    v65 = v132;
    if (a5 <= (v126 - v125) >> 3 && a4 <= 0x63 && (v132 - v131) >> 3 >= a5)
    {
      v120 = 0u;
      v121 = 0u;
      if (v131 == v132)
      {
        v106 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
        v105 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      }

      else
      {
        v103 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
        v104 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v105 = v104;
        v106 = v103;
        do
        {
          v107 = *v66++;
          v108 = *(v107 + 5);
          v109 = vcgtq_f64(v104, v108);
          v110 = vbslq_s8(v109, v108, v105);
          v111 = vbslq_s8(v109, v108, v104);
          v112 = *(v107 + 7);
          v113 = vcgtq_f64(v111, v112);
          v105 = vbslq_s8(v113, v112, v110);
          v104 = vbslq_s8(v113, v112, v111);
          v114 = vcgtq_f64(v108, v103);
          v115 = vbslq_s8(v114, v108, v106);
          v116 = vbslq_s8(v114, v108, v103);
          v117 = vcgtq_f64(v112, v116);
          v106 = vbslq_s8(v117, v112, v115);
          v103 = vbslq_s8(v117, v112, v116);
        }

        while (v66 != v132);
      }

      v120 = v105;
      v121 = v106;
      if (!sub_1002A833C(v120.i64, &v131, &v128, a4 + 1, a5, a6, a7, a8, a9, a10, a11) || (sub_1002A833C(v120.i64, &v131, &v125, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_61;
    }
  }

  else
  {
    v66 = v131;
    v65 = v132;
  }

  if (v66 == v65 || v128 == v129)
  {
    if (v66 != v65)
    {
LABEL_60:
      v67 = v126;
      if (v125 != v126)
      {
        while (1)
        {
          v89 = v125;
          if (v125 != v67)
          {
            break;
          }

LABEL_82:
          if (++v66 == v65)
          {
            goto LABEL_61;
          }
        }

        while ((sub_1002A7A5C(a6, *v66, *v89, 1) & 1) != 0)
        {
          ++v89;
          v67 = v126;
          if (v89 == v126)
          {
            v65 = v132;
            goto LABEL_82;
          }
        }

        goto LABEL_129;
      }
    }
  }

  else
  {
    do
    {
      v88 = v128;
      if (v128 != v64)
      {
        while ((sub_1002A7A5C(a6, *v66, *v88, 1) & 1) != 0)
        {
          ++v88;
          v64 = v129;
          if (v88 == v129)
          {
            v65 = v132;
            goto LABEL_77;
          }
        }

        goto LABEL_129;
      }

LABEL_77:
      ++v66;
    }

    while (v66 != v65);
    v66 = v131;
    if (v131 != v65)
    {
      goto LABEL_60;
    }
  }

LABEL_61:
  v69 = __p;
  v68 = v123;
  if (__p != v123)
  {
    v71 = v137;
    v70 = v138;
    if (a5 > (v138 - v137) >> 3 || a5 > (v135 - v134) >> 3 || a4 > 0x63 || (v123 - __p) >> 3 < a5)
    {
      while (v71 != v70)
      {
        v87 = __p;
        if (__p != v68)
        {
          while ((sub_1002A7A5C(a6, *v71, *v87, 1) & 1) != 0)
          {
            ++v87;
            v68 = v123;
            if (v87 == v123)
            {
              v70 = v138;
              goto LABEL_71;
            }
          }

          goto LABEL_129;
        }

LABEL_71:
        ++v71;
      }

      v91 = v134;
      v90 = v135;
      if (v134 == v135 || __p == v68)
      {
        goto LABEL_89;
      }

      while (1)
      {
        v100 = __p;
        if (__p != v68)
        {
          break;
        }

LABEL_110:
        if (++v91 == v90)
        {
          goto LABEL_89;
        }
      }

      while ((sub_1002A7A5C(a6, *v91, *v100, 1) & 1) != 0)
      {
        ++v100;
        v68 = v123;
        if (v100 == v123)
        {
          v90 = v135;
          goto LABEL_110;
        }
      }

      goto LABEL_129;
    }

    v72 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v120 = 0u;
    v121 = 0u;
    v73 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v74 = v73;
    v75 = v72;
    do
    {
      v76 = *v69++;
      v77 = *(v76 + 40);
      v78 = vcgtq_f64(v73, v77);
      v79 = vbslq_s8(v78, v77, v74);
      v80 = vbslq_s8(v78, v77, v73);
      v81 = *(v76 + 56);
      v82 = vcgtq_f64(v80, v81);
      v74 = vbslq_s8(v82, v81, v79);
      v73 = vbslq_s8(v82, v81, v80);
      v83 = vcgtq_f64(v77, v72);
      v84 = vbslq_s8(v83, v77, v75);
      v85 = vbslq_s8(v83, v77, v72);
      v86 = vcgtq_f64(v81, v85);
      v75 = vbslq_s8(v86, v81, v84);
      v72 = vbslq_s8(v86, v81, v85);
    }

    while (v69 != v123);
    v120 = v74;
    v121 = v75;
    if (!sub_1002A833C(v120.i64, &v137, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) || (sub_1002A833C(v120.i64, &v134, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
    {
      goto LABEL_129;
    }
  }

LABEL_89:
  v93 = v137;
  v92 = v138;
  if (a5 > (v138 - v137) >> 3 || a4 > 0x63 || (v129 - v128) >> 3 < a5)
  {
    if (v137 != v138)
    {
      v94 = v129;
      if (v128 != v129)
      {
        while (1)
        {
          v95 = v128;
          if (v128 != v94)
          {
            break;
          }

LABEL_93:
          if (++v93 == v92)
          {
            goto LABEL_101;
          }
        }

        while ((sub_1002A7A5C(a6, *v93, *v95, 1) & 1) != 0)
        {
          ++v95;
          v94 = v129;
          if (v95 == v129)
          {
            v92 = v138;
            goto LABEL_93;
          }
        }

        goto LABEL_129;
      }
    }
  }

  else if ((sub_1002A833C(&v142, &v137, &v128, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_101:
  v97 = v134;
  v96 = v135;
  if (a5 > (v135 - v134) >> 3 || a4 > 0x63 || (v126 - v125) >> 3 < a5)
  {
    if (v134 == v135)
    {
      goto LABEL_118;
    }

    v98 = v126;
    if (v125 == v126)
    {
      goto LABEL_118;
    }

    while (1)
    {
      v99 = v125;
      if (v125 != v98)
      {
        break;
      }

LABEL_105:
      if (++v97 == v96)
      {
        goto LABEL_118;
      }
    }

    while ((sub_1002A7A5C(a6, *v97, *v99, 1) & 1) != 0)
    {
      ++v99;
      v98 = v126;
      if (v99 == v126)
      {
        v96 = v135;
        goto LABEL_105;
      }
    }

LABEL_129:
    v101 = 0;
    v102 = __p;
    if (!__p)
    {
      goto LABEL_131;
    }

    goto LABEL_130;
  }

  if ((sub_1002A833C(&v140, &v134, &v125, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_118:
  v101 = 1;
  v102 = __p;
  if (__p)
  {
LABEL_130:
    v123 = v102;
    operator delete(v102);
  }

LABEL_131:
  if (v125)
  {
    v126 = v125;
    operator delete(v125);
  }

  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }

  if (v134)
  {
    v135 = v134;
    operator delete(v134);
  }

  if (v137)
  {
    v138 = v137;
    operator delete(v137);
  }

  return v101;
}

void sub_1002A9718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
    v34 = a20;
    if (!a20)
    {
LABEL_3:
      v35 = a23;
      if (!a23)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v34 = a20;
    if (!a20)
    {
      goto LABEL_3;
    }
  }

  operator delete(v34);
  v35 = a23;
  if (!a23)
  {
LABEL_4:
    v36 = a26;
    if (!a26)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v35);
  v36 = a26;
  if (!a26)
  {
LABEL_5:
    v37 = a29;
    if (!a29)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a29;
  if (!a29)
  {
LABEL_6:
    v38 = a32;
    if (!a32)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = a32;
  if (!a32)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

BOOL sub_1002A97E4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v7 = *a2;
  if (*a2 != 2)
  {
    if (v7 == 1)
    {
      v11 = a2[2];
      v9 = a5 + 48 * a2[1];
      if ((v11 & 0x8000000000000000) == 0)
      {
        v9 = *(v9 + 24) + 24 * v11;
      }

      v10 = *a3;
      if (*a3 != 2)
      {
        if (v10 == 1)
        {
          goto LABEL_30;
        }

        goto LABEL_13;
      }
    }

    else
    {
      if (v7)
      {
        return 0;
      }

      v8 = a2[2];
      v9 = a4;
      if ((v8 & 0x8000000000000000) == 0)
      {
        v9 = *(a4 + 24) + 24 * v8;
      }

      v10 = *a3;
      if (*a3 != 2)
      {
        if (v10 == 1)
        {
LABEL_30:
          v25 = a3[2];
          v22 = a5 + 48 * a3[1];
          if ((v25 & 0x8000000000000000) == 0)
          {
            v22 = *(v22 + 24) + 24 * v25;
          }

          return sub_1002A9AF0((a1 + 8), v9, v22) >= 0;
        }

LABEL_13:
        if (!v10)
        {
          goto LABEL_14;
        }

        return 0;
      }
    }

    v19 = a3[1];
    v20 = a6[4];
    v21 = a6[1];
    v18 = (v21 + 8 * (v20 / 0xAA));
    if (a6[2] == v21)
    {
      v22 = 0;
      if (!v19)
      {
        return sub_1002A9AF0((a1 + 8), v9, v22) >= 0;
      }
    }

    else
    {
      v22 = *v18 + 24 * (v20 % 0xAA);
      if (!v19)
      {
        return sub_1002A9AF0((a1 + 8), v9, v22) >= 0;
      }
    }

    v27 = v19 - 0x5555555555555555 * ((v22 - *v18) >> 3);
    if (v27 >= 1)
    {
LABEL_38:
      v22 = v18[v27 / 0xAAuLL] + 24 * (v27 % 0xAAuLL);
      return sub_1002A9AF0((a1 + 8), v9, v22) >= 0;
    }

LABEL_41:
    v22 = v18[-((169 - v27) / 0xAAuLL)] + 24 * (170 * ((169 - v27) / 0xAAuLL) - (169 - v27)) + 4056;
    return sub_1002A9AF0((a1 + 8), v9, v22) >= 0;
  }

  v14 = a2[1];
  v15 = a6[4];
  v16 = a6[1];
  v17 = a6[2];
  v18 = (v16 + 8 * (v15 / 0xAA));
  if (v17 == v16)
  {
    v9 = 0;
    if (!v14)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v9 = *v18 + 24 * (v15 % 0xAA);
    if (!v14)
    {
LABEL_26:
      v24 = *a3;
      if (*a3 != 2)
      {
        goto LABEL_27;
      }

LABEL_33:
      v26 = a3[1];
      if (v17 == v16)
      {
        v22 = 0;
        if (!v26)
        {
          return sub_1002A9AF0((a1 + 8), v9, v22) >= 0;
        }
      }

      else
      {
        v22 = *v18 + 24 * (v15 % 0xAA);
        if (!v26)
        {
          return sub_1002A9AF0((a1 + 8), v9, v22) >= 0;
        }
      }

      v27 = v26 - 0x5555555555555555 * ((v22 - *v18) >> 3);
      if (v27 >= 1)
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }
  }

  v23 = v14 - 0x5555555555555555 * ((v9 - *v18) >> 3);
  if (v23 >= 1)
  {
    v9 = v18[v23 / 0xAAuLL] + 24 * (v23 % 0xAAuLL);
    goto LABEL_26;
  }

  v9 = v18[-((169 - v23) / 0xAAuLL)] + 24 * (170 * ((169 - v23) / 0xAAuLL) - (169 - v23)) + 4056;
  v24 = *a3;
  if (*a3 == 2)
  {
    goto LABEL_33;
  }

LABEL_27:
  if (v24 == 1)
  {
    goto LABEL_30;
  }

  if (v24)
  {
    return 0;
  }

LABEL_14:
  v12 = a3[2];
  if ((v12 & 0x8000000000000000) == 0)
  {
    a4 = *(a4 + 24) + 24 * v12;
  }

  return sub_1002A9AF0((a1 + 8), v9, a4) >= 0;
}

uint64_t sub_1002A9AF0(double *a1, double **a2, double **a3)
{
  v3 = *a3;
  v4 = a3[1];
  if ((v4 - *a3) < 0x40)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(v48) = 0;
  BYTE4(v48) = 0;
  if (v3 + 2 == v4)
  {
    return 0xFFFFFFFFLL;
  }

  do
  {
    if (!sub_10016C110(a1, v3, v3 + 2, &v48))
    {
      break;
    }

    v9 = v3 + 4;
    v3 += 2;
  }

  while (v9 != v4);
  if (LODWORD(v48))
  {
    result = 1;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  if (BYTE4(v48))
  {
    v11 = *a2;
    v12 = a2[1];
    v13 = *a2 + 2;
    if (*a2 != v12 && v13 != v12)
    {
      while (1)
      {
        v15 = v11;
        v11 = v13;
        v16 = *a3;
        v17 = a3[1];
        if ((v17 - *a3) < 0x40)
        {
          return 0xFFFFFFFFLL;
        }

        v18 = v16 + 2;
        if (v16 + 2 == v17)
        {
          return 0xFFFFFFFFLL;
        }

        v19 = 0;
        while (1)
        {
          v22 = *(v18 - 2);
          v8.n128_f64[0] = *v11;
          if (v22 == *v11)
          {
            v23 = 1;
            v24 = *v18;
            if (*v18 == v8.n128_f64[0])
            {
              goto LABEL_29;
            }
          }

          else if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v8.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v32 = fabs(v22);
            v33 = fabs(v8.n128_f64[0]);
            v34 = vabdd_f64(v22, v8.n128_f64[0]);
            if (v32 < v33)
            {
              v32 = v33;
            }

            if (v32 < 1.0)
            {
              v32 = 1.0;
            }

            v23 = v34 <= v32 * 2.22044605e-16;
            v24 = *v18;
            if (*v18 == v8.n128_f64[0])
            {
LABEL_29:
              v25 = 1;
              if (!v23)
              {
                break;
              }

              goto LABEL_30;
            }
          }

          else
          {
            v23 = 0;
            v24 = *v18;
            if (*v18 == v8.n128_f64[0])
            {
              goto LABEL_29;
            }
          }

          if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v8.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v23)
            {
LABEL_61:
              if (v24 <= v8.n128_f64[0])
              {
                v38 = -1;
              }

              else
              {
                v38 = 1;
              }

              if (v23)
              {
                v39 = v18 - 2;
              }

              else
              {
                v39 = v18;
              }

              v40 = v15[3];
              v41 = v39[1];
              if (v40 == v41)
              {
                goto LABEL_15;
              }

              goto LABEL_74;
            }

LABEL_82:
            if (v22 >= v8.n128_f64[0] || v24 <= v8.n128_f64[0])
            {
              if (v22 <= v8.n128_f64[0] || v24 >= v8.n128_f64[0])
              {
                goto LABEL_26;
              }

              v38 = -2;
            }

            else
            {
              v38 = 2;
            }

            v48 = 1.0;
            v8.n128_f64[0] = sub_10016C468(v18 - 2, v18, v11, &v48, v8);
            if (v8.n128_f64[0] == 0.0)
            {
              goto LABEL_15;
            }

            if ((v8.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) < 0x7FF0000000000000)
            {
              v47 = fabs(v8.n128_f64[0]);
              if (v8.n128_f64[0] > 0.0)
              {
                v20 = 1;
              }

              else
              {
                v20 = -1;
              }

              if (v47 <= v48 * 2.22044605e-16)
              {
                goto LABEL_15;
              }
            }

            else if (v8.n128_f64[0] > 0.0)
            {
              v20 = 1;
            }

            else
            {
              v20 = -1;
            }

LABEL_22:
            if (v38 * v20 <= 0)
            {
              v21 = 0;
            }

            else
            {
              v21 = v38;
            }

            v19 += v21;
            goto LABEL_26;
          }

          v35 = fabs(v24);
          v36 = fabs(v8.n128_f64[0]);
          v37 = vabdd_f64(v24, v8.n128_f64[0]);
          if (v35 < v36)
          {
            v35 = v36;
          }

          if (v35 < 1.0)
          {
            v35 = 1.0;
          }

          v25 = v37 <= v35 * 2.22044605e-16;
          if (!v23 || !v25)
          {
            break;
          }

LABEL_30:
          v26 = v15[3];
          v27 = *(v18 - 1);
          v28 = v18[1];
          if (v27 <= v26 && v28 >= v26)
          {
            goto LABEL_15;
          }

          if (v27 >= v26 && v28 <= v26)
          {
            goto LABEL_15;
          }

LABEL_26:
          v18 += 2;
          if (v18 == v17)
          {
            if (v19)
            {
              return 1;
            }

            else
            {
              return 0xFFFFFFFFLL;
            }
          }
        }

        if (v23)
        {
          goto LABEL_61;
        }

        if (!v25)
        {
          goto LABEL_82;
        }

        if (v22 <= v8.n128_f64[0])
        {
          v38 = 1;
        }

        else
        {
          v38 = -1;
        }

        v40 = v15[3];
        v41 = v18[1];
        if (v40 == v41)
        {
          goto LABEL_15;
        }

LABEL_74:
        if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_19;
        }

        v42 = fabs(v40);
        v43 = fabs(v41);
        v44 = vabdd_f64(v40, v41);
        if (v42 < v43)
        {
          v42 = v43;
        }

        if (v42 < 1.0)
        {
          v42 = 1.0;
        }

        if (v44 > v42 * 2.22044605e-16)
        {
LABEL_19:
          if (v40 >= v41)
          {
            v20 = v38;
          }

          else
          {
            v20 = -v38;
          }

          goto LABEL_22;
        }

LABEL_15:
        result = 0;
        v13 = v11 + 2;
        if (v11 + 2 == v12)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_1002A9EA8(uint64_t a1, int8x16_t *a2)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_1002AA430(exception, a1, a2);
}

void sub_1002A9F14(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10000FC84();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
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

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_10000D444();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    if (v5 != v4)
    {
      v15 = v5;
      v16 = v14;
      do
      {
        *v16 = *v15;
        *(v16 + 2) = *(v15 + 2);
        *v15 = 0;
        *(v15 + 1) = 0;
        *(v15 + 2) = 0;
        v15 += 24;
        v16 += 24;
      }

      while (v15 != v4);
      do
      {
        v17 = *v5;
        if (*v5)
        {
          *(v5 + 1) = v17;
          operator delete(v17);
        }

        v5 += 24;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void *sub_1002AA110(void **a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_10000FC84();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_10000D444();
  }

  v11 = (16 * ((a1[1] - *a1) >> 4));
  sub_1002737CC(v11, a2);
  v6 = (48 * v2 + 48);
  v7 = a1[1];
  v8 = (v11 + *a1 - v7);
  sub_1002AA24C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_1002AA238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002AA348(va);
  _Unwind_Resume(a1);
}

void sub_1002AA24C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v6 + 24);
      a4[5] = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v6 += 48;
      a4 += 6;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v7 = *(v5 + 24);
      if (v7)
      {
        v8 = *(v5 + 32);
        v9 = *(v5 + 24);
        if (v8 != v7)
        {
          v10 = *(v5 + 32);
          do
          {
            v12 = *(v10 - 24);
            v10 -= 24;
            v11 = v12;
            if (v12)
            {
              *(v8 - 16) = v11;
              operator delete(v11);
            }

            v8 = v10;
          }

          while (v10 != v7);
          v9 = *(v5 + 24);
        }

        *(v5 + 32) = v7;
        operator delete(v9);
      }

      v13 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v13;
        operator delete(v13);
      }

      v5 += 48;
    }
  }
}

void **sub_1002AA348(void **a1)
{
  sub_1002AA37C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002AA37C(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    v4 = (i - 48);
    *(a1 + 16) = i - 48;
    v5 = *(i - 24);
    if (v5)
    {
      v6 = *(i - 16);
      v7 = *(i - 24);
      if (v6 != v5)
      {
        v8 = *(i - 16);
        do
        {
          v10 = *(v8 - 24);
          v8 -= 24;
          v9 = v10;
          if (v10)
          {
            *(v6 - 16) = v9;
            operator delete(v9);
          }

          v6 = v8;
        }

        while (v8 != v5);
        v7 = *(i - 24);
      }

      *(i - 16) = v5;
      operator delete(v7);
    }

    v11 = *v4;
    if (*v4)
    {
      *(i - 40) = v11;
      operator delete(v11);
    }
  }
}

int8x16_t sub_1002AA430(uint64_t a1, uint64_t a2, int8x16_t *a3)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &off_1004456E8;
  *(a1 + 8) = off_100445718;
  *(a1 + 16) = off_100445740;
  *(a1 + 48) = a3[1].i32[0];
  result = vextq_s8(*a3, *a3, 8uLL);
  *(a1 + 32) = result;
  return result;
}

std::exception *sub_1002AA4AC(std::exception *a1)
{
  a1[2].__vftable = &off_100431E10;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);
  return a1;
}

void sub_1002AA6D0(__n128 *a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_1002AAA84(exception, a1);
}

void sub_1002AA72C(std::exception *a1)
{
  a1[2].__vftable = &off_100431E10;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);

  operator delete();
}

void sub_1002AA7D0(std::exception *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::exception::~exception(a1);
}

void sub_1002AA864(std::exception *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::exception::~exception(a1);

  operator delete();
}

void sub_1002AA920(std::exception *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 1);
}

void sub_1002AA9A8(std::exception *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 1);

  operator delete();
}

void sub_1002AAA4C(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

__n128 sub_1002AAA84(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = &off_100431F30;
  a1->n128_u64[1] = &off_100445760;
  v3 = a2[1].n128_u64[1];
  a1[1].n128_u64[0] = &off_100431E10;
  a1[1].n128_u64[1] = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = a2[2];
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  a1[2] = result;
  a1->n128_u64[0] = &off_1004456E8;
  a1->n128_u64[1] = off_100445718;
  a1[1].n128_u64[0] = off_100445740;
  return result;
}

void sub_1002AABB8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002AABB8(a1, *a2);
    sub_1002AABB8(a1, a2[1]);
    sub_1000275F4((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t sub_1002AAC1C(uint64_t a1)
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
    v5 = 8;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 16;
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

void sub_1002AAD08()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002AAD78()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1002AADE8(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, __int128 *a5)
{
  sub_100251AB4(a3, v14);
  v10 = *a2;
  v11 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  *a1 = off_100438CA0;
  sub_10014C1B4((a1 + 8), v14);
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  sub_10014C254(v14);
  *a1 = off_100445788;
  sub_100250BA8(a3, v14);
  sub_100259EAC(a1 + 72, v14, 0.25);
  v12 = *a5;
  *(a1 + 120) = *a5;
  *a5 = 0;
  *(a5 + 1) = 0;
  if (a4 == 1)
  {
    *&v12 = sub_1002519D8(a3);
  }

  else if (!a4)
  {
    *&v12 = sub_1002519CC(a3);
  }

  *(a1 + 136) = sqrt(*&v12 * 0.25);
  return a1;
}

void sub_1002AAF04(_Unwind_Exception *a1)
{
  sub_10002BB1C(v2);
  sub_1000BE7D4(v1);
  _Unwind_Resume(a1);
}

void sub_1002AAF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10002BB1C(&a9);
  sub_10014C254(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AAF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 + 56;
  sub_100259ED8(a1 + 72, *(a1 + 56));
  *(a2 + 40) = v8;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = v9 + (*(**v7 + 56))() * *(v7 + 80);
  v12 = v10 + (*(**v7 + 56))() * *(v7 + 80);
  v13 = *(a3 + 16);

  return sub_1001E8DB8(a2, v11, v12, v13, a4, v7, v7 - 48, (v7 + 64));
}

void *sub_1002AB038(void *a1)
{
  *a1 = off_100445788;
  v2 = a1[16];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = off_100438CA0;
  v3 = a1[8];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    sub_10014C254((a1 + 1));
    return a1;
  }

  else
  {
    sub_10014C254((a1 + 1));
    return a1;
  }
}

void sub_1002AB144(void *a1)
{
  *a1 = off_100445788;
  v2 = a1[16];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = off_100438CA0;
  v3 = a1[8];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_10014C254((a1 + 1));

  operator delete();
}

void sub_1002AB258()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002AB2C8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002AB338(void *a1, char **a2, sqlite3_blob **a3)
{
  if (qword_10045B080 != -1)
  {
    sub_100386898();
  }

  v6 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = sub_10011823C(a2);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "building offset map and inserting into map, locationId=%s", buf, 0xCu);
  }

  sub_10024B60C(v11, *a3);
  v7 = v12;
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(buf, v11, -1);
  sub_100219904(buf, v7, v10);
  if (qword_10045B080 != -1)
  {
    sub_1003868AC();
  }

  v8 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_10011823C(a2);
    *v13 = 136315138;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "inserting offset map, locationId=%s", v13, 0xCu);
  }

  sub_1002AB988(a1, a2, a2, v10);
  if (v10[5])
  {
    operator delete(v10[3]);
  }

  if (v10[2])
  {
    operator delete(v10[0]);
  }

  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(buf);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(v11);
}

void sub_1002AB4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  sub_1002AB944(va);
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(va2);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(va1);
  _Unwind_Resume(a1);
}

void sub_1002AB518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(va);
  _Unwind_Resume(a1);
}

const void ***sub_1002AB530(uint64_t *a1, uint64_t ***a2)
{
  result = sub_10024A8AC(a1, a2);
  if (result)
  {

    return sub_1002ABDD4(a1, result);
  }

  return result;
}

void sub_1002AB57C(uint64_t a1, sqlite3_blob **a2, uint64_t a3)
{
  sub_10024B60C(v7, *a2);
  v4 = v8;
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(v6, v7, -1);
  v5 = *(a3 + 24);
  if (!v5)
  {
    goto LABEL_4;
  }

  if (v5 != a3)
  {
    v5 = (*(*v5 + 16))(v5);
LABEL_4:
    v10 = v5;
    goto LABEL_6;
  }

  v10 = v9;
  (*(*v5 + 24))(v5, v9);
LABEL_6:
  sub_10021A7CC(v6, v4, v9);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(v6);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(v7);
}

void sub_1002AB6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(va);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(va1);
  _Unwind_Resume(a1);
}

void sub_1002AB70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(va);
  _Unwind_Resume(a1);
}

void sub_1002AB724(void *a1@<X0>, uint64_t ***a2@<X1>, uint64_t *a3@<X2>, sqlite3_blob **a4@<X3>, uint64_t *a5@<X8>)
{
  if (sub_1001EDFC8(a1, a2))
  {
    sub_10024B60C(v16, *a4);
    wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(&v14, v16, -1);
    v10 = sub_1001EDFC8(a1, a2);
    if (!v10)
    {
      sub_10001C6D4("unordered_map::at: key not found");
    }

    sub_100219CB0(a3, v10 + 4, a5);
    wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(&v14);
    wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(v16);
  }

  else
  {
    v12 = *a3;
    v11 = a3[1];
    v16[0] = 0;
    v16[1] = 0;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    v14 = a5;
    v15 = 0;
    v13 = v11 - v12;
    if (v13)
    {
      if (!((v13 >> 5) >> 60))
      {
        operator new();
      }

      sub_10000FC84();
    }
  }
}

void sub_1002AB858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1001811E8(&a9);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1002AB874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(va);
  _Unwind_Resume(a1);
}

void sub_1002AB888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(&a9);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(va);
  _Unwind_Resume(a1);
}

const void ***sub_1002AB8A4(void *a1, uint64_t ***a2, uint64_t *a3)
{
  result = sub_1001EDFC8(a1, a2);
  if (result)
  {
    v5 = *a3;
    v6 = a3[1];
    if (v5 == v6)
    {
      return 0;
    }

    else
    {
      v7 = result;
      do
      {
        result = sub_1002192AC(v7 + 4, v5);
        if (result)
        {
          break;
        }

        v5 += 32;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t sub_1002AB944(uint64_t a1)
{
  if (*(a1 + 40))
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 16))
  {
    operator delete(*a1);
  }

  return a1;
}

const void ***sub_1002AB988(void *a1, uint64_t ***a2, void *a3, uint64_t a4)
{
  v6 = sub_1001183C0(&v16, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_23;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v12[1];
      if (v14 == v7)
      {
        if (sub_1001182C8(v12 + 2, a2))
        {
          return v12;
        }
      }

      else if ((v14 & (*&v8 - 1)) != v10)
      {
        goto LABEL_23;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v13 >= *&v8)
    {
      v13 %= *&v8;
    }

    if (v13 != v10)
    {
      goto LABEL_23;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  if (!sub_1001182C8(v12 + 2, a2))
  {
    goto LABEL_12;
  }

  return v12;
}

void sub_1002ABD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002ABD20(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002ABD20(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 72))
      {
        operator delete(*(v2 + 56));
      }

      if (*(v2 + 48))
      {
        operator delete(*(v2 + 32));
      }

      v3 = *(v2 + 24);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1002ABDD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100010A88(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v7 == 1)
    {
      if (*(v3 + 9))
      {
        operator delete(*(v3 + 7));
      }

      if (*(v3 + 6))
      {
        operator delete(*(v3 + 4));
      }

      v4 = *(v3 + 3);
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    operator delete(v3);
  }

  return v2;
}

void sub_1002ABE98()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002ABF08()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002ABF78(void *a1, uint64_t a2)
{
  *a1 = off_100445810;
  a1[1] = 0x7FF8000000000000;
  sub_10020958C((a1 + 2), a2);
  sub_1002B18B0((a1 + 5));
}

double sub_1002AC008(uint64_t a1, double **a2)
{
  v4 = sub_100258548((a1 + 16));
  v5 = (*(**(a1 + 80) + 24))(*(a1 + 80));
  sub_1002AC1E0(v4, v5, "mean", (a1 + 16), "LL");
  v6 = sub_100258548(a2);
  sub_1002AC618(v4, v6, "mean", (a1 + 16), "y", a2);
  sub_1002ACA58(a2, (a1 + 16));
  return (*(**(a1 + 80) + 48))(*(a1 + 80), a2) * -0.5;
}

double sub_1002AC0F4(uint64_t a1, double **a2)
{
  v4 = sub_100258548((a1 + 16));
  v5 = (*(**(a1 + 80) + 24))(*(a1 + 80));
  sub_1002AC1E0(v4, v5, "mean", (a1 + 16), "LL");
  v6 = sub_100258548(a2);
  sub_1002AC618(v4, v6, "mean", (a1 + 16), "y", a2);
  sub_1002ACA58(a2, (a1 + 16));
  return (*(**(a1 + 80) + 48))(*(a1 + 80), a2) * -0.5;
}

uint64_t sub_1002AC1E0(uint64_t result, uint64_t a2, char *a3, double **a4, char *a5)
{
  if (result != a2)
  {
    v9 = result;
    sub_10003BFA8(v25);
    sub_100258A10(v25, a4);
    sub_1000474A4(v22, a3);
    std::stringbuf::str();
    sub_1000474A4(v20, a5);
    sub_1000474A4(__p, "unavailable");
    sub_10033E7A8(&v24, v22, v9, v16, v20, a2, __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((v21 & 0x80000000) == 0)
    {
LABEL_4:
      if (SHIBYTE(v17) < 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

    operator delete(v20[0]);
    if (SHIBYTE(v17) < 0)
    {
LABEL_5:
      operator delete(v16[0]);
      if ((v23 & 0x80000000) == 0)
      {
LABEL_11:
        if (sub_1000E6528())
        {
          sub_10004DAA4(v16);
          sub_1000E0784(0);
          if ((v19 & 0x80u) == 0)
          {
            v10 = __p;
          }

          else
          {
            v10 = __p[0];
          }

          if ((v19 & 0x80u) == 0)
          {
            v11 = v19;
          }

          else
          {
            v11 = __p[1];
          }

          sub_10003C2E4(&v17, v10, v11);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }

          if (qword_10045B050 != -1)
          {
            sub_1003868D4();
          }

          v12 = qword_10045B058;
          if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
          {
            v13 = std::logic_error::what(&v24);
            std::stringbuf::str();
            if ((v19 & 0x80u) == 0)
            {
              v14 = __p;
            }

            else
            {
              v14 = __p[0];
            }

            *buf = 136315394;
            v27 = v13;
            v28 = 2080;
            v29 = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Precondition failure: %s\n%s\n", buf, 0x16u);
            if (v19 < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_1001D8FE0(v16);
        }

        __cxa_allocate_exception(0x80uLL);
        sub_10010A984(&v15);
      }

LABEL_10:
      operator delete(v22[0]);
      goto LABEL_11;
    }

LABEL_9:
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return result;
}

void sub_1002AC490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::logic_error a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1001D8FE0(&a12);
  sub_10033E844(&a56);
  sub_10003C1C4(&a65);
  _Unwind_Resume(a1);
}

void sub_1002AC4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::logic_error a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10033E844(&a56);
  sub_10003C1C4(&a65);
  _Unwind_Resume(a1);
}

void sub_1002AC540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a55 < 0)
  {
    operator delete(__p);
    if (a61 < 0)
    {
LABEL_5:
      operator delete(a56);
      if (a17 < 0)
      {
LABEL_8:
        operator delete(a12);
        if (a65 < 0)
        {
LABEL_11:
          operator delete(a62);
          sub_10003C1C4(&a66);
          _Unwind_Resume(a1);
        }

LABEL_12:
        sub_10003C1C4(&a66);
        _Unwind_Resume(a1);
      }

LABEL_10:
      if (a65 < 0)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }
  }

  else if (a61 < 0)
  {
    goto LABEL_5;
  }

  if (a17 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

uint64_t sub_1002AC618(uint64_t result, uint64_t a2, char *a3, double **a4, char *a5, double **a6)
{
  if (result != a2)
  {
    v11 = result;
    sub_10003BFA8(v28);
    sub_100258A10(v28, a4);
    sub_10003BFA8(v27);
    sub_100258A10(v27, a6);
    sub_1000474A4(v24, a3);
    std::stringbuf::str();
    sub_1000474A4(v22, a5);
    std::stringbuf::str();
    sub_10033E7A8(&v26, v24, v11, v18, v22, a2, __p);
    if (v21 < 0)
    {
      operator delete(__p[0]);
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((v23 & 0x80000000) == 0)
    {
LABEL_4:
      if (SHIBYTE(v19) < 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

    operator delete(v22[0]);
    if (SHIBYTE(v19) < 0)
    {
LABEL_5:
      operator delete(v18[0]);
      if ((v25 & 0x80000000) == 0)
      {
LABEL_11:
        if (sub_1000E6528())
        {
          sub_10004DAA4(v18);
          sub_1000E0784(0);
          if ((v21 & 0x80u) == 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          if ((v21 & 0x80u) == 0)
          {
            v13 = v21;
          }

          else
          {
            v13 = __p[1];
          }

          sub_10003C2E4(&v19, v12, v13);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          if (qword_10045B050 != -1)
          {
            sub_1003868D4();
          }

          v14 = qword_10045B058;
          if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
          {
            v15 = std::logic_error::what(&v26);
            std::stringbuf::str();
            if ((v21 & 0x80u) == 0)
            {
              v16 = __p;
            }

            else
            {
              v16 = __p[0];
            }

            *buf = 136315394;
            v30 = v15;
            v31 = 2080;
            v32 = v16;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Precondition failure: %s\n%s\n", buf, 0x16u);
            if (v21 < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_1001D8FE0(v18);
        }

        __cxa_allocate_exception(0x80uLL);
        sub_10010A984(&v17);
      }

LABEL_10:
      operator delete(v24[0]);
      goto LABEL_11;
    }

LABEL_9:
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return result;
}

void sub_1002AC8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, std::logic_error a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1001D8FE0(&a13);
  sub_10033E844(&a57);
  sub_10003C1C4(&a65);
  sub_10003C1C4(&STACK[0x2D8]);
  _Unwind_Resume(a1);
}

void sub_1002AC964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a56 < 0)
  {
    operator delete(__p);
    if (a62 < 0)
    {
LABEL_5:
      operator delete(a57);
      if (a18 < 0)
      {
LABEL_8:
        operator delete(a13);
        if ((a65 & 0x80000000) == 0)
        {
LABEL_12:
          sub_10003C1C4(&a66);
          sub_10003C1C4(&STACK[0x2D8]);
          _Unwind_Resume(a1);
        }

LABEL_11:
        operator delete(a63);
        sub_10003C1C4(&a66);
        sub_10003C1C4(&STACK[0x2D8]);
        _Unwind_Resume(a1);
      }

LABEL_10:
      if ((a65 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (a62 < 0)
  {
    goto LABEL_5;
  }

  if (a18 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

unint64_t *sub_1002ACA58(unint64_t *a1, unint64_t *a2)
{
  v4 = sub_100258548(a2);
  if (v4 != sub_100258548(a1))
  {
    sub_100385A9C();
    sub_1000BC6D8(__p);
  }

  v5 = *a1;
  v6 = a1[1];
  v7 = v6 - *a1;
  if (a2[1] - *a2 != v7)
  {
    sub_100385A9C();
    sub_10003F5D0(__p);
  }

  if (v6 != v5)
  {
    v8 = v7 >> 3;
    v9 = *a2;
    if ((v7 >> 3) <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7 >> 3;
    }

    if (v8 <= 5 || (v5 < v9 + 8 * v10 ? (v11 = v9 >= v5 + 8 * v10) : (v11 = 1), !v11))
    {
      v12 = 0;
LABEL_18:
      v17 = v10 - v12;
      v18 = (v9 + 8 * v12);
      v19 = (v5 + 8 * v12);
      do
      {
        v20 = *v18++;
        *v19 = *v19 - v20;
        ++v19;
        --v17;
      }

      while (v17);
      return a1;
    }

    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = (v9 + 16);
    v14 = (v5 + 16);
    v15 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v16 = vsubq_f64(*v14, *v13);
      v14[-1] = vsubq_f64(v14[-1], v13[-1]);
      *v14 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 4;
    }

    while (v15);
    if (v8 != v12)
    {
      goto LABEL_18;
    }
  }

  return a1;
}

void sub_1002ACBC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002ACCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_100385CC0(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002ACCC8(void *a1)
{
  *a1 = off_100445810;
  v2 = a1[10];
  a1[10] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    a1[3] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_1002ACD58(void *a1)
{
  *a1 = off_100445810;
  v2 = a1[10];
  a1[10] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    a1[3] = v4;
    operator delete(v4);
  }

  operator delete();
}

void sub_1002ACE7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002ACF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002ACF40(uint64_t a1, void *a2)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  (*(*a1 + 16))(a1, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_1002AD00C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002AD078(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004458D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002AD114()
{
  __cxa_allocate_exception(0x40uLL);
  *(&v1.__r_.__value_.__s + 23) = 15;
  strcpy(&v1, "not implemented");
  std::runtime_error::runtime_error(&v2, &v1);
  v2.__vftable = &off_100444338;
  sub_10010A984(&v0);
}

void sub_1002AD1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1002AD240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1002AD230);
}

void sub_1002AD264(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  sub_1002AE460(&v12, a1);
  v17 = &off_100431F30;
  sub_1002ADA18(&v14, &v12);
  v14.__vftable = &off_100445A00;
  v15[0] = off_100445A38;
  v17 = &off_100445A70;
  sub_10000D87C(v15, &v13);
  v15[2] = a2;
  v15[3] = a3;
  v16 = a4;
  v11[0] = off_100433458;
  memset(&v11[1], 0, 24);
  v10 = a5[1] - *a5;
  if (v10)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_1002AD738(&v14, v11);
}

void sub_1002AD550(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void sub_1002AD578(std::logic_error *a1)
{
  a1[5].__vftable = &off_100431E10;
  imp = a1[5].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[5].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[5].__imp_.__imp_ = 0;
    }
  }

  sub_10033E7AC(a1);
}

void *sub_1002AD60C(uint64_t a1, uint64_t a2)
{
  *(a1 + 120) = &off_100431F30;
  result = sub_1002ADA18(a1, a2);
  *result = &off_100445A00;
  result[10] = off_100445A38;
  result[15] = &off_100445A70;
  return result;
}

void sub_1002AD6A4(std::logic_error *a1)
{
  a1[5].__vftable = &off_100431E10;
  imp = a1[5].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[5].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[5].__imp_.__imp_ = 0;
    }
  }

  sub_10033E7AC(a1);
}

void sub_1002AD9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_1002AD9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002ADA18(uint64_t a1, uint64_t a2)
{
  v4 = std::logic_error::logic_error(a1, a2);
  v4->__vftable = off_10044A700;
  if (*(a2 + 39) < 0)
  {
    sub_100003228(&v4[1], *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    v4[2].__vftable = *(a2 + 32);
    v4[1] = v5;
  }

  *(a1 + 40) = *(a2 + 40);
  if (*(a2 + 71) < 0)
  {
    sub_100003228((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 80) = &off_100431E10;
  *(a1 + 88) = v7;
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v8;
  *a1 = &off_100445AA0;
  *(a1 + 80) = off_100445AC8;
  return a1;
}

void sub_1002ADB60(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
    std::logic_error::~logic_error(v1);
    _Unwind_Resume(a1);
  }

  std::logic_error::~logic_error(v1);
  _Unwind_Resume(a1);
}

void sub_1002ADBAC(std::logic_error *a1)
{
  a1[5].__vftable = &off_100431E10;
  imp = a1[5].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[5].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[5].__imp_.__imp_ = 0;
    }
  }

  sub_10033E7AC(a1);
}

void sub_1002ADC40(std::logic_error *this)
{
  this[5].__vftable = &off_100431E10;
  imp = this[5].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[5].__imp_.__imp_ = 0;
  }

  sub_10033E7AC(this);

  operator delete();
}

void sub_1002ADD60(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x80uLL);
  sub_1002AD60C(exception, a1);
}

void sub_1002ADDBC(std::logic_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  sub_10033E7AC(a1 - 5);
}

void sub_1002ADE44(std::logic_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  sub_10033E7AC(a1 - 5);

  operator delete();
}

void sub_1002AE010(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x80uLL);
  sub_1002AD60C(exception, a1 + v2);
}

void sub_1002AE084(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[5].__vftable = &off_100431E10;
  imp = v1[5].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[5].__imp_.__imp_ = 0;
  }

  sub_10033E7AC(v1);
}

void sub_1002AE124(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[5].__vftable = &off_100431E10;
  imp = v1[5].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[5].__imp_.__imp_ = 0;
  }

  sub_10033E7AC(v1);

  operator delete();
}

void sub_1002AE1D8(std::logic_error *this)
{
  this[5].__vftable = &off_100431E10;
  imp = this[5].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[5].__imp_.__imp_ = 0;
  }

  sub_10033E7AC(this);

  operator delete();
}

void sub_1002AE278(std::logic_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  sub_10033E7AC(a1 - 5);
}

void sub_1002AE300(std::logic_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  sub_10033E7AC(a1 - 5);

  operator delete();
}

uint64_t sub_1002AE39C(uint64_t a1, uint64_t a2)
{
  *(a1 + 120) = &off_100431F30;
  v4 = sub_1002ADA18(a1, a2);
  *v4 = &off_100445A00;
  *(a1 + 80) = off_100445A38;
  *(a1 + 120) = &off_100445A70;
  sub_10000D87C((v4 + 10), a2 + 80);
  return a1;
}

uint64_t sub_1002AE460(uint64_t a1, uint64_t a2)
{
  v4 = std::logic_error::logic_error(a1, a2);
  v4->__vftable = off_10044A700;
  if (*(a2 + 39) < 0)
  {
    sub_100003228(&v4[1], *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    v4[2].__vftable = *(a2 + 32);
    v4[1] = v5;
  }

  *(a1 + 40) = *(a2 + 40);
  if (*(a2 + 71) < 0)
  {
    sub_100003228((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  v7 = *(a2 + 72);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = -1;
  *a1 = &off_100445AA0;
  *(a1 + 72) = v7;
  *(a1 + 80) = off_100445AC8;
  return a1;
}

void sub_1002AE55C(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
    std::logic_error::~logic_error(v1);
    _Unwind_Resume(a1);
  }

  std::logic_error::~logic_error(v1);
  _Unwind_Resume(a1);
}

void sub_1002AE594()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002AE604()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_1002AE718(uint64_t **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0.0;
  }

  v3 = 0.0;
  v4 = 0.0;
  do
  {
    v10 = *v1;
    sub_10012A31C(&v11, (v1 + 1));
    v5 = sub_100218070(&v10);
    sub_10012A31C(v7, v5);
    v3 = v3 + v8;
    v4 = v4 + v9;
    nullsub_68();
    nullsub_68();
    v1 += 5;
  }

  while (v1 != v2);
  return v3;
}

double sub_1002AE7DC@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = NAN;
  *(a1 + 24) = xmmword_1003DB3E0;
  return result;
}

void sub_1002AE7F4(void **a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x7FF8000000000000;
  *(a2 + 32) = a3;
  if (a2 != a1)
  {
    sub_10026F2A4(a2, *a1, a1[1], 0xCCCCCCCCCCCCCCCDLL * (a1[1] - *a1));
  }
}

double sub_1002AE860(uint64_t a1, uint64_t a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  if (*(a2 + 32) != 0.0)
  {
    (*(**(a1 + 56) + 48))(&v14, a3);
    if (v14)
    {
      sub_10031C1E8(*(a1 + 32) - *(v14 + 80));
      sub_10031C1E8(1.57079633 - (v5 + -1.57079633));
      v7 = v6;
      v8 = sub_1002AE718(a2);
      v10 = atan2(v9, v8);
      sub_10031C1E8(v7 - v10);
      a3.n128_f64[0] = *(a2 + 32) * ((*&qword_100471C00 + (a3.n128_f64[0] * a3.n128_f64[0] / 0.822467033 + 1.64243019) * -0.5) * (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 3)));
      v11 = v15;
      if (!v15)
      {
        return a3.n128_f64[0];
      }
    }

    else
    {
      a3.n128_u64[0] = *(a2 + 24);
      v11 = v15;
      if (!v15)
      {
        return a3.n128_f64[0];
      }
    }

    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v12 = a3.n128_u64[0];
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      a3.n128_u64[0] = v12;
    }
  }

  return a3.n128_f64[0];
}

void sub_1002AEA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002AEA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1002AEA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1002AEA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

double sub_1002AEA84(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 != 1 || !sub_10037F9F0(a1) || sub_10037FAD4(a1) > *(a3 + 96))
  {
    return 0.0;
  }

  return sub_10023FAEC(a3);
}

void sub_1002AEAF0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002AEB60()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

long double sub_1002AEBD0()
{
  *&qword_100471BF8 = 0.99978988 - sub_10023FB90(-3.46410162);
  result = -log(*&qword_100471BF8);
  qword_100471C00 = *&result;
  return result;
}

void sub_1002AEC20(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = atomic_load((a1 + 8));
  if (v2)
  {
    v6.__m_ = (a1 + 16);
    v6.__owns_ = 1;
    std::mutex::lock((a1 + 16));
    v4 = atomic_load(v1);
    if (v4)
    {
      do
      {
        std::condition_variable::wait((a1 + 80), &v6);
        v5 = atomic_load((a1 + 8));
      }

      while ((v5 & 1) != 0);
    }

    if (v6.__owns_)
    {
      std::mutex::unlock(v6.__m_);
    }
  }
}

void sub_1002AEC9C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002AED0C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002AED7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = off_10043DF18;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = off_10043DB28;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) &= 0xFCu;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  *(a2 + 136) &= 0xF800u;
  sub_100126648(a2, *(a1 + 8));
  sub_10012A88C(a2, *(a1 + 16));
  sub_10012E9CC(a2, *(a1 + 24));
  sub_10012E9D4(a2, a1 + 32);
  v4 = *(a1 + 192);
  if ((v4 & 0x10) != 0)
  {
    sub_10013D08C(a2, (a1 + 64));
    v4 = *(a1 + 192);
  }

  if ((v4 & 0x100) != 0)
  {
    sub_10013D0E8(a2, *(a1 + 112));
    v4 = *(a1 + 192);
  }

  if ((v4 & 0x20) != 0)
  {
    sub_10013D0C0(a2, *(a1 + 88));
    v4 = *(a1 + 192);
  }

  if ((v4 & 0x40) != 0)
  {
    sub_10013D0D4(a2, *(a1 + 96));
    v4 = *(a1 + 192);
  }

  if ((v4 & 0x800) != 0)
  {
    sub_10013D0FC(a2, *(a1 + 128));
    v4 = *(a1 + 192);
  }

  if ((v4 & 0x1000) != 0)
  {
    sub_10013D110(a2, *(a1 + 136));
    v4 = *(a1 + 192);
  }

  if ((v4 & 0x2000) != 0)
  {
    sub_10013D124(a2, *(a1 + 144));
  }
}

void sub_1002AEED8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8[1] = 0;
  v8[2] = 0;
  v8[0] = off_10043DB28;
  v9 = 0;
  sub_1001294D4(v8, *(a1 + 24));
  sub_1001294DC(v8, *(a1 + 32));
  *a2 = off_10043DBE8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = off_10043DB28;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) &= 0xFCu;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = off_10043DBC8;
  *(a2 + 184) = 0;
  *(a2 + 188) &= ~1u;
  *(a2 + 192) = 0;
  *(a2 + 194) &= 0xFCu;
  sub_10012EA24(a2, *(a1 + 72));
  sub_10012E9D4(a2, v8);
  v4 = *(a1 + 16);
  if (!v4)
  {
    v4 = *(qword_10045DD98 + 16);
  }

  sub_100126648(a2, *(v4 + 40));
  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = *(qword_10045DD98 + 16);
  }

  sub_10012A88C(a2, ((*(v5 + 16) + 978307200.0) * 1000000000.0));
  sub_10012EA60(a2, *(a1 + 116));
  std::to_string(&v7, *(a1 + 48));
  sub_10012E9DC(a2, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  sub_10012EA68(a2, *(a1 + 120));
  sub_10012EA7C(a2, *(a1 + 128));
  sub_10012EA90(a2, *(a1 + 136));
  sub_10012EA4C(a2, *(a1 + 96));
  sub_10012EAA4(a2, *(a1 + 104));
  sub_10012EA38(a2, *(a1 + 80));
  sub_10012EAB8(a2, *(a1 + 88));
  sub_10012EA10(a2, *(a1 + 56));
  sub_10012EACC(a2, *(a1 + 64));
  v7.__r_.__value_.__r.__words[0] = off_10043DBC8;
  LODWORD(v7.__r_.__value_.__r.__words[1]) = 0;
  v7.__r_.__value_.__s.__data_[12] = 0;
  v6 = *(a1 + 144);
  if (!v6)
  {
    v6 = *(qword_10045DD98 + 144);
  }

  sub_10012E4F8(&v7, *(v6 + 16));
  sub_10012EAE0(a2, &v7);
  nullsub_79();
  nullsub_76();
}

void sub_1002AF170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_10012E8E4(v16);
    nullsub_76();
    _Unwind_Resume(a1);
  }

  sub_10012E8E4(v16);
  nullsub_76();
  _Unwind_Resume(a1);
}

void sub_1002AF214(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000AB69C(a2);
  *(a2 + 156) |= 1u;
  v4 = *(a2 + 16);
  if (!v4)
  {
    operator new();
  }

  v5 = *(a1 + 8);
  *(v4 + 52) |= 8u;
  *(v4 + 40) = v5;
  v6 = *(a1 + 16) / 1000000000.0 + -978307200.0;
  *(a2 + 156) |= 1u;
  v7 = *(a1 + 96);
  *(v4 + 52) |= 1u;
  *(v4 + 16) = v6;
  LODWORD(v5) = *(a2 + 156);
  *(a2 + 24) = *(a1 + 40);
  *(a2 + 72) = v7;
  v8 = *(a1 + 124);
  *(a2 + 156) = v5 | 0x4106;
  *(a2 + 116) = v8;
  v9 = std::stoi((a1 + 64), 0, 10);
  v10 = *(a2 + 156);
  *(a2 + 48) = v9;
  *(a2 + 120) = *(a1 + 128);
  v11 = *(a1 + 152);
  *(a2 + 136) = *(a1 + 144);
  v12 = *(a1 + 104);
  *(a2 + 96) = *(a1 + 112);
  *(a2 + 104) = v11;
  v13 = *(a1 + 160);
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  v14 = *(a1 + 88);
  *(a2 + 156) = v10 | 0x39E28;
  *(a2 + 56) = v14;
  std::to_string(&v26, 4u);
  v15 = *(a1 + 87);
  if (v15 >= 0)
  {
    v16 = *(a1 + 87);
  }

  else
  {
    v16 = *(a1 + 72);
  }

  size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  v18 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  if (v16 != size)
  {
    v21 = 0;
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v15 >= 0)
  {
    v19 = (a1 + 64);
  }

  else
  {
    v19 = *(a1 + 64);
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v26;
  }

  else
  {
    v20 = v26.__r_.__value_.__r.__words[0];
  }

  v21 = memcmp(v19, v20, v16) == 0;
  if (v18 < 0)
  {
LABEL_18:
    operator delete(v26.__r_.__value_.__l.__data_);
  }

LABEL_19:
  v22 = *(a2 + 156);
  *(a2 + 52) = v21;
  v23 = *(a1 + 168);
  *(a2 + 156) = v22 | 0xC0;
  *(a2 + 64) = v23;
  if ((*(a1 + 194) & 2) != 0)
  {
    *(a2 + 156) = v22 | 0x400C0;
    v24 = *(a2 + 144);
    if (!v24)
    {
      operator new();
    }

    v25 = *(a1 + 184);
    *(v24 + 24) |= 1u;
    *(v24 + 16) = v25;
  }
}

uint64_t sub_1002AF4BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100232678(a1, a2);
  *(a1 + 16) = sub_1002326D0(v3, 2) + 1;
  return a1;
}

void sub_1002AF4FC(uint64_t a1@<X0>, char **a2@<X8>)
{
  sub_10012E160(a1, 0);
  sub_1002AF6B8(a1, &__p);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = __p;
  v5 = v17;
  if ((v17 - __p) >= 5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v4[2 * v7 + 1];
      if (v8)
      {
        v9 = v4[2 * v7];
        do
        {
          v10 = a2[2];
          if (v6 < v10)
          {
            *v6++ = v9;
          }

          else
          {
            v11 = *a2;
            v12 = (v6 - *a2);
            v13 = (v12 + 1);
            if ((v12 + 1) < 0)
            {
              sub_10000FC84();
            }

            v14 = v10 - v11;
            if (2 * v14 > v13)
            {
              v13 = 2 * v14;
            }

            if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v15 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v15 = v13;
            }

            if (v15)
            {
              operator new();
            }

            *v12 = v9;
            v6 = v12 + 1;
            memcpy(0, v11, v12);
            *a2 = 0;
            a2[2] = 0;
            if (v11)
            {
              operator delete(v11);
            }
          }

          a2[1] = v6;
          --v8;
        }

        while (v8);
        v4 = __p;
        v5 = v17;
      }

      ++v7;
    }

    while (v7 < ((v5 - v4) >> 2) >> 1);
  }

  sub_1002AF750(a2);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }
}

void sub_1002AF678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v12)
  {
    *(v11 + 8) = v12;
    operator delete(v12);
    v14 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void sub_1002AF6B8(uint64_t a1@<X0>, void **a2@<X8>)
{
  sub_10012E160(a1, 0);
  sub_100232704(a1, 2);
  if (sub_100232684(a1, 1))
  {
    sub_10017EEC0(v4, *a1, *(a1 + 8), *(a1 + 16));
    sub_100218554(v4, a2);
  }

  else
  {
    sub_10017EEC0(v4, *a1, *(a1 + 8), *(a1 + 16));
    sub_10017EECC(v4, a2);
  }
}

void sub_1002AF750(char **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      operator new();
    }

    if (v4 < v3)
    {
      v6 = (v1 - *a1);
      v7 = a1[1];
      v8 = (v4 + v2 - v7);
      memcpy(v8, v2, v7 - v2);
      *a1 = v8;
      a1[1] = v6;
      a1[2] = v6;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

__n128 *sub_1002AF838(__n128 *a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  sub_100217150(a1, a4);
  *(v8 + 16) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  sub_1001FD544(v8 + 32, a3);
  sub_10021569C(a4);
  return a1;
}

void sub_1002AF950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1001F9864(v20 + 16);
    sub_10002BB1C(v20);
    _Unwind_Resume(a1);
  }

  sub_1001F9864(v20 + 16);
  sub_10002BB1C(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AF9C4(uint64_t a1)
{
  sub_1001F9864(a1 + 32);
  result = a1;
  v3 = *(a1 + 24);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_1002AFA4C(uint64_t a1, double *a2, unint64_t a3, unint64_t *a4, void *a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a7 - a6;
  if (a7 - a6 > a3)
  {
    sub_1000474A4(v37, "");
    sub_1002B0628(v39, "For now this is not allowed. You can't have more output particles than siblings.");
    sub_100382FC4(v39, &v34, v37);
    sub_1000BC6D8(&v34);
  }

  v11 = *(a1 + 48);
  if (!v11 || ((*(***(a1 + 16) + 32))(**(a1 + 16)), sub_1002156D4(v11, 0, a3, v37), v37[0].__r_.__value_.__s.__data_[0] != 1))
  {
    v12 = *(a1 + 16);
    v23 = v12[2];
    v24 = *v12;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    if (a7 == a6)
    {
      goto LABEL_14;
    }

LABEL_27:
    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  if (v37[0].__r_.__value_.__r.__words[2] != v37[0].__r_.__value_.__l.__size_)
  {
    if (((v37[0].__r_.__value_.__r.__words[2] - v37[0].__r_.__value_.__l.__size_) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  if (v37[0].__r_.__value_.__l.__size_)
  {
    v37[0].__r_.__value_.__r.__words[2] = v37[0].__r_.__value_.__l.__size_;
    operator delete(v37[0].__r_.__value_.__l.__size_);
  }

  v13 = *(a1 + 16);
  v24 = *v13;
  if (!v13[4])
  {
    sub_1000474A4(&v34, "");
    sub_1000BBEAC(v37, "Asking for auxiliary injection but you never defined an auxiliary ParticleGenerator in particle_generator.cpp:newParticleGeneratorImpl!!");
    sub_1000E661C(&v34, v37, 1);
    if (SHIBYTE(v37[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v34);
    }

    sub_10003F5D0(v33);
  }

  if (v10)
  {
    sub_1000474A4(v37, "");
    sub_100383A74(&v34, v37);
    sub_10003F5D0(&v34);
  }

  v23 = *(*(a1 + 16) + 32);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if (a7 != a6)
  {
    goto LABEL_27;
  }

LABEL_14:
  if (*(a1 + 112))
  {
    sub_1001300D0(v37, a1 + 120);
    sub_1000BF8EC(a1 + 32, v37, &v28);
    v14 = 1.0;
    if (sub_10017226C(v37))
    {
      v15 = (*(*v28 + 40))(v28);
      v17 = *v15;
      v16 = *(v15 + 8);
      v34 = *v15;
      v35 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = (*(*v17 + 88))(v17);
      v18 = v38;
      if (v18 >= (*(*v17 + 80))(v17))
      {
        v14 = 0.0;
      }

      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      if (v14 < 0.0)
      {
        sub_1000474A4(&v34, "");
        sub_100383A74(v33, &v34);
        sub_10003F5D0(v33);
      }
    }

    v19 = vcvtmd_s64_f64(v14 * v10);
    v35 = 0;
    v36 = 0;
    v34 = 0;
    if (v19)
    {
      if ((v19 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000FC84();
    }

    memset(v33, 0, sizeof(v33));
    if (v31 != v30)
    {
      if (((v31 - v30) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000FC84();
    }

    v20 = v10;
    v21 = v29;
    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
      sub_10012E8E4(v37);
      if (a7 == a6)
      {
        goto LABEL_37;
      }
    }

    else
    {
      sub_10012E8E4(v37);
      if (a7 == a6)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    (*(*v23 + 16))(v23, v24, a1 + 32, &v30, a8);
    v20 = v10;
    if (a7 == a6)
    {
      goto LABEL_37;
    }
  }

  v22 = 0;
  do
  {
    if (!*(*(v30 + v22) + 56))
    {
      sub_1000474A4(v37, "");
      sub_100385DC8(&v34, v37, &v37[0].__r_.__value_.__r.__words[2] + 7);
      sub_10003F5D0(&v34);
    }

    ++v22;
  }

  while (v20 != v22);
LABEL_37:
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_1002B0468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, _Unwind_Exception *exception_objecta, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, void *a41, int a42, __int16 a43, char a44, char a45)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (!a17)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a17);
  _Unwind_Resume(exception_object);
}

std::string *sub_1002B0628@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1002B065C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002B0678(uint64_t *a1, double *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_10000FC84();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    sub_10000D444();
  }

  v14 = (16 * ((a1[1] - *a1) >> 4));
  sub_1001E8650(v14, a2);
  v6 = 80 * v2 + 80;
  v7 = a1[1];
  v8 = v14 + *a1 - v7;
  sub_1001E9438(a1, *a1, v7, v8, v9, v10, v11);
  v12 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v6;
}

void sub_1002B07A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001E95F0(va);
  _Unwind_Resume(a1);
}

void sub_1002B07B4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002B0824()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1002B0894(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  v2 = a2 + a2 * a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (v2 >= 2)
  {
    if (!(v2 >> 62))
    {
      operator new();
    }

    sub_10000FC84();
  }

  return a1;
}

void sub_1002B0938(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002B0980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a3;
  *(a1 + 16) = 0;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  if (*(a3 + 8) != a2)
  {
    sub_1000474A4(v6, "");
    sub_1002B218C(&__p, "Size of matrix doesn't match expected size!");
    sub_1000E661C(v6, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v7 < 0)
    {
      operator delete(v6[0]);
    }

    sub_1000BC6D8(&v5);
  }

  return a1;
}

void sub_1002B0AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v23 = *v21;
  if (*v21)
  {
    *(v20 + 24) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002B0B24(uint64_t result, uint64_t a2, _DWORD *a3)
{
  *result = *a3;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1002B0B38(uint64_t result, double a2)
{
  v2 = *(result + 16);
  v3 = *(result + 24) - v2;
  v4 = v3 >> 3;
  if (v3 >> 3 >= 1)
  {
    if (v4 >= 4)
    {
      v5 = (v3 >> 3) & 3;
      v6 = &v2->i64[v4 & 0x7FFFFFFFFFFFFFFCLL];
      v7 = vdupq_lane_s64(*&a2, 0);
      v8 = v2 + 1;
      v9 = v4 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v8[-1] = v7;
        *v8 = v7;
        v8 += 2;
        v9 -= 4;
      }

      while (v9);
      if (v4 == (v4 & 0x7FFFFFFFFFFFFFFCLL))
      {
        return result;
      }
    }

    else
    {
      v5 = v3 >> 3;
      v6 = *(result + 16);
    }

    *v6 = a2;
    if (v5 >= 2)
    {
      v6[1] = a2;
      if (v5 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6[2] = a2;
      }
    }
  }

  return result;
}