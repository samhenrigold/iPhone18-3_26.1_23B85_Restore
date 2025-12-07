void sub_100284DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
    v28 = a23;
    if (!a23)
    {
LABEL_3:
      v29 = a26;
      if (!a26)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v28 = a23;
    if (!a23)
    {
      goto LABEL_3;
    }
  }

  operator delete(v28);
  v29 = a26;
  if (!a26)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

uint64_t sub_100284E1C(__int128 *a1, uint64_t **a2, uint64_t **a3, unint64_t a4, unint64_t a5, void *a6)
{
  v10 = *a2;
  v9 = a2[1];
  if (a5 <= v9 - *a2 && a4 <= 0x63 && a3[1] - *a3 >= a5)
  {
    return sub_10028648C(a1, a2, a3, a4 + 1, a5, a6);
  }

  if (v10 != v9)
  {
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v13 = *a3;
        if (*a3 != v11)
        {
          do
          {
            v14 = *v10;
            v15 = *v13;
            if (*(*v10 + 48) >= *(*v13 + 32) && *(v14 + 32) <= *(v15 + 48))
            {
              v16 = *(v14 + 56) >= *(v15 + 40) && *(v14 + 40) <= *(v15 + 56);
              if (v16 && (*(v14 + 96) & 1) == 0 && (*(v15 + 96) & 1) == 0)
              {
                result = sub_1002871D4(*(a6 + 10), *a6, v14, *(a6 + 10), *a6, v15, 0, *(a6 + 44), a6[1], a6[2], a6[3]);
                if (!result)
                {
                  return result;
                }

                v11 = a3[1];
              }
            }

            ++v13;
          }

          while (v13 != v11);
          v9 = a2[1];
        }

        ++v10;
      }

      while (v10 != v9);
    }
  }

  return 1;
}

uint64_t sub_100284F90(__n128 *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v12 = a4;
  v13 = a3;
  v15 = a1[1].n128_u64[0];
  v14 = a1[1].n128_i64[1];
  v16 = a1->n128_i64[1];
  v17 = v14 / 2 + v16 / 2;
  v18 = a1[1];
  v93 = *a1;
  v91.n128_u64[0] = v93.n128_u64[0];
  v92 = v18;
  LODWORD(v14) = v14 % 2 + v16 % 2;
  v19 = v17 + ((v14 + ((v14 & 0x80) >> 7)) << 24 >> 25);
  v94 = v15;
  v95 = v19;
  v91.n128_u64[1] = v19;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  __p = 0;
  v83 = 0;
  v84 = 0;
  v21 = *a2;
  v20 = *(a2 + 8);
  if (*a2 == v20)
  {
    goto LABEL_43;
  }

  do
  {
    v26 = *v21;
    v27 = *(*v21 + 32);
    if (v94 >= v27 && v93.n128_i64[0] <= v26[6])
    {
      v28 = v95 >= v26[5] && v93.n128_u64[1] <= v26[7];
      if (v92.n128_i64[0] < v27)
      {
LABEL_16:
        if (!v28)
        {
          goto LABEL_3;
        }

        v30 = &v88;
LABEL_34:
        sub_100279BF0(v30, v21);
        v20 = *(a2 + 8);
        goto LABEL_3;
      }
    }

    else
    {
      v28 = 0;
      if (v92.n128_i64[0] < v27)
      {
        goto LABEL_16;
      }
    }

    if (v91.n128_i64[0] > v26[6])
    {
      goto LABEL_16;
    }

    v31 = v26[5];
    v32 = v26[7];
    v33 = v92.n128_i64[1] >= v31 && v19 <= v32;
    v34 = v33;
    v35 = v33 || v28;
    if ((v28 & v34) != 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = &v88;
    }

    if (v28)
    {
      v30 = p_p;
    }

    else
    {
      v30 = &v85;
    }

    if (v35)
    {
      goto LABEL_34;
    }

LABEL_3:
    ++v21;
  }

  while (v21 != v20);
  v38 = __p;
  v37 = v83;
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v13 = a3;
  v12 = a4;
  if (__p != v83)
  {
    v80 = 0u;
    v81 = 0u;
    v39 = vnegq_f64(0);
    v40.f64[0] = NAN;
    v40.f64[1] = NAN;
    v41 = vnegq_f64(v40);
    v42 = __p;
    v43 = v41;
    v44 = v39;
    do
    {
      v45 = *v42++;
      v46 = v45[2];
      v47 = v45[3];
      v48 = vcgtq_s64(v41, v46);
      v49 = vbslq_s8(v48, v46, v43);
      v50 = vbslq_s8(v48, v46, v41);
      v51 = vcgtq_s64(v50, v47);
      v43 = vbslq_s8(v51, v47, v49);
      v41 = vbslq_s8(v51, v47, v50);
      v52 = vcgtq_s64(v46, v39);
      v53 = vbslq_s8(v52, v46, v44);
      v54 = vbslq_s8(v52, v46, v39);
      v55 = vcgtq_s64(v47, v54);
      v44 = vbslq_s8(v55, v47, v53);
      v39 = vbslq_s8(v55, v47, v54);
    }

    while (v42 != v83);
    v80 = v43;
    v81 = v44;
    if (a3 <= 0x63 && (v83 - __p) >> 3 >= a4)
    {
      if (sub_1002847DC(&v80, &__p, a3 + 1, a4, a5, v10, v9, v8))
      {
        goto LABEL_41;
      }

      goto LABEL_81;
    }

    do
    {
      v67 = v38 + 8;
      if (v38 + 8 != v37)
      {
        for (i = v38 + 8; i != v37; i += 8)
        {
          v69 = *v38;
          v70 = *i;
          if (*(*v38 + 48) >= *(*i + 32) && *(v69 + 32) <= *(v70 + 48))
          {
            v71 = *(v69 + 56) >= *(v70 + 40) && *(v69 + 40) <= *(v70 + 56);
            if (v71 && (*(v69 + 96) & 1) == 0 && (*(v70 + 96) & 1) == 0)
            {
              if (!sub_1002871D4(*(a5 + 10), *a5, v69, *(a5 + 10), *a5, v70, 0, *(a5 + 44), a5[1], a5[2], a5[3]))
              {
                goto LABEL_81;
              }

              v37 = v83;
            }
          }
        }
      }

      v38 += 8;
    }

    while (v67 != v37);
LABEL_41:
    if (!sub_1002855D4(&v80, &__p, &v88, a3, a4, a5) || (sub_1002855D4(&v80, &__p, &v85, a3, a4, a5) & 1) == 0)
    {
LABEL_81:
      v65 = 0;
      v66 = __p;
      if (!__p)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }
  }

LABEL_43:
  v57 = v88;
  v56 = v89;
  if (v13 > 0x63 || (v89 - v88) >> 3 < v12)
  {
LABEL_61:
    while (v57 != v56)
    {
      v58 = v57;
      v57 += 8;
      if (v57 != v56)
      {
        v59 = v57;
        while (1)
        {
          v60 = *v58;
          v61 = *v59;
          if (*(*v58 + 48) >= *(*v59 + 32) && *(v60 + 32) <= *(v61 + 48))
          {
            v62 = *(v60 + 56) >= *(v61 + 40) && *(v60 + 40) <= *(v61 + 56);
            if (v62 && (*(v60 + 96) & 1) == 0 && (*(v61 + 96) & 1) == 0)
            {
              if (!sub_1002871D4(*(a5 + 10), *a5, v60, *(a5 + 10), *a5, v61, 0, *(a5 + 44), a5[1], a5[2], a5[3]))
              {
                goto LABEL_81;
              }

              v56 = v89;
            }
          }

          v59 += 8;
          if (v59 == v56)
          {
            goto LABEL_61;
          }
        }
      }
    }
  }

  else if (!sub_1002847DC(&v93, &v88, v13 + 1, v12, a5, v10, v9, v8))
  {
    goto LABEL_81;
  }

  v64 = v85;
  v63 = v86;
  if (v13 <= 0x63 && (v86 - v85) >> 3 >= v12)
  {
    v65 = sub_1002847DC(&v91, &v85, v13 + 1, v12, a5, v10, v9, v8);
    v66 = __p;
    if (!__p)
    {
      goto LABEL_83;
    }

LABEL_82:
    v83 = v66;
    operator delete(v66);
    goto LABEL_83;
  }

  if (v85 != v86)
  {
    do
    {
      v73 = v64;
      v64 += 8;
      if (v64 != v63)
      {
        for (j = v64; j != v63; j += 8)
        {
          v75 = *v73;
          v76 = *j;
          if (*(*v73 + 48) >= *(*j + 32) && *(v75 + 32) <= *(v76 + 48))
          {
            v77 = *(v75 + 56) >= *(v76 + 40) && *(v75 + 40) <= *(v76 + 56);
            if (v77 && (*(v75 + 96) & 1) == 0 && (*(v76 + 96) & 1) == 0)
            {
              if (!sub_1002871D4(*(a5 + 10), *a5, v75, *(a5 + 10), *a5, v76, 0, *(a5 + 44), a5[1], a5[2], a5[3]))
              {
                goto LABEL_81;
              }

              v63 = v86;
            }
          }
        }
      }
    }

    while (v64 != v63);
  }

  v65 = 1;
  v66 = __p;
  if (__p)
  {
    goto LABEL_82;
  }

LABEL_83:
  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  return v65;
}

void sub_10028556C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
    v28 = a23;
    if (!a23)
    {
LABEL_3:
      v29 = a26;
      if (!a26)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v28 = a23;
    if (!a23)
    {
      goto LABEL_3;
    }
  }

  operator delete(v28);
  v29 = a26;
  if (!a26)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1002855D4(void *a1, uint64_t **a2, uint64_t **a3, unint64_t a4, unint64_t a5, void *a6)
{
  v10 = *a2;
  v9 = a2[1];
  if (a5 <= v9 - *a2 && a4 <= 0x63 && a3[1] - *a3 >= a5)
  {
    return sub_100285748(a1, a2, a3, a4 + 1, a5, a6);
  }

  if (v10 != v9)
  {
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v13 = *a3;
        if (*a3 != v11)
        {
          do
          {
            v14 = *v10;
            v15 = *v13;
            if (*(*v10 + 48) >= *(*v13 + 32) && *(v14 + 32) <= *(v15 + 48))
            {
              v16 = *(v14 + 56) >= *(v15 + 40) && *(v14 + 40) <= *(v15 + 56);
              if (v16 && (*(v14 + 96) & 1) == 0 && (*(v15 + 96) & 1) == 0)
              {
                result = sub_1002871D4(*(a6 + 10), *a6, v14, *(a6 + 10), *a6, v15, 0, *(a6 + 44), a6[1], a6[2], a6[3]);
                if (!result)
                {
                  return result;
                }

                v11 = a3[1];
              }
            }

            ++v13;
          }

          while (v13 != v11);
          v9 = a2[1];
        }

        ++v10;
      }

      while (v10 != v9);
    }
  }

  return 1;
}

uint64_t sub_100285748(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  v10 = a1[2];
  v11 = *(a1 + 1);
  v12 = *a1 / 2;
  v176 = *a1;
  v178 = *(&v11 + 1);
  *(&v174 + 1) = *(&v176 + 1);
  v175 = v11;
  v13 = v10 % 2 + v176 - 2 * v12;
  v14 = v10 / 2 + v12 + ((v13 + ((v13 & 0x80) >> 7)) << 24 >> 25);
  v177 = v14;
  v173 = 0;
  *&v174 = v14;
  v171 = 0;
  v172 = 0;
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

      if (v14 <= v18[6])
      {
        v23 = v18[5];
        v24 = v18[7];
        v25 = *(&v175 + 1) >= v23 && *(&v174 + 1) <= v24;
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

      if (v14 <= v31[6])
      {
        v36 = v31[5];
        v37 = v31[7];
        v38 = *(&v175 + 1) >= v36 && *(&v174 + 1) <= v37;
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
                if (!sub_1002871D4(*(a6 + 10), *a6, v47, *(a6 + 10), *a6, v48, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
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

    if ((sub_10028648C(v154.i8, &v165, &__p, a4 + 1, a5, a6) & 1) == 0)
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

      if (!sub_10028648C(v154.i8, &v165, &v162, a4 + 1, a5, a6) || (sub_10028648C(v154.i8, &v165, &v159, a4 + 1, a5, a6) & 1) == 0)
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
            if (!sub_1002871D4(*(a6 + 10), *a6, v83, *(a6 + 10), *a6, v84, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
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
                if (!sub_1002871D4(*(a6 + 10), *a6, v128, *(a6 + 10), *a6, v129, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
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
                if (!sub_1002871D4(*(a6 + 10), *a6, v124, *(a6 + 10), *a6, v125, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
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
                  if (!sub_1002871D4(*(a6 + 10), *a6, v141, *(a6 + 10), *a6, v142, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
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
      if (!sub_10028648C(v154.i8, &v171, &__p, a4 + 1, a5, a6) || (sub_10028648C(v154.i8, &v168, &__p, a4 + 1, a5, a6) & 1) == 0)
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
                  if (!sub_1002871D4(*(a6 + 10), *a6, v137, *(a6 + 10), *a6, v138, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
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

  else if ((sub_10028648C(&v176, &v171, &v162, a4 + 1, a5, a6) & 1) == 0)
  {
    goto LABEL_245;
  }

  v145 = v168;
  v144 = v169;
  if (a5 <= (v169 - v168) >> 3 && a4 <= 0x63 && (v160 - v159) >> 3 >= a5)
  {
    if (sub_10028648C(&v174, &v168, &v159, a4 + 1, a5, a6))
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
                if (!sub_1002871D4(*(a6 + 10), *a6, v148, *(a6 + 10), *a6, v149, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
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

void sub_1002863C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
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

uint64_t sub_10028648C(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6)
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
                if (!sub_1002871D4(*(a6 + 10), *a6, v47, *(a6 + 10), *a6, v48, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
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

    if ((sub_100285748(&v154, &v165, &__p, a4 + 1, a5, a6) & 1) == 0)
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

      if (!sub_100285748(&v154, &v165, &v162, a4 + 1, a5, a6) || (sub_100285748(&v154, &v165, &v159, a4 + 1, a5, a6) & 1) == 0)
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
            if (!sub_1002871D4(*(a6 + 10), *a6, v83, *(a6 + 10), *a6, v84, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
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
                if (!sub_1002871D4(*(a6 + 10), *a6, v128, *(a6 + 10), *a6, v129, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
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
                if (!sub_1002871D4(*(a6 + 10), *a6, v124, *(a6 + 10), *a6, v125, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
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
                  if (!sub_1002871D4(*(a6 + 10), *a6, v141, *(a6 + 10), *a6, v142, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
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
      if (!sub_100285748(&v154, &v171, &__p, a4 + 1, a5, a6) || (sub_100285748(&v154, &v168, &__p, a4 + 1, a5, a6) & 1) == 0)
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
                  if (!sub_1002871D4(*(a6 + 10), *a6, v137, *(a6 + 10), *a6, v138, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
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

  else if ((sub_100285748(&v176, &v171, &v162, a4 + 1, a5, a6) & 1) == 0)
  {
    goto LABEL_245;
  }

  v145 = v168;
  v144 = v169;
  if (a5 <= (v169 - v168) >> 3 && a4 <= 0x63 && (v160 - v159) >> 3 >= a5)
  {
    if (sub_100285748(v174, &v168, &v159, a4 + 1, a5, a6))
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
                if (!sub_1002871D4(*(a6 + 10), *a6, v148, *(a6 + 10), *a6, v149, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
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

void sub_100287108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
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

uint64_t sub_1002871D4(int a1, void *a2, int *a3, int a4, void *a5, int *a6, int a7, int a8, uint64_t a9, __int128 *a10, unint64_t *a11)
{
  if (*(a3 + 96) == 1 && (*(a3 + 10) + 1) < *(a3 + 11) || *(a6 + 96) == 1 && (*(a6 + 10) + 1) < *(a6 + 11))
  {
    return 1;
  }

  v12 = *(a3 + 3);
  v13 = (*a2 + 48 * *(a3 + 2));
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = &v13[3][3 * v12];
  }

  v14 = *v13;
  v15 = *(a6 + 3);
  v16 = (*a5 + 48 * *(a6 + 2));
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = &v16[3][3 * v15];
  }

  v17 = v13[1];
  v18 = *v16;
  v125 = v16[1];
  v19 = *a3;
  v124 = *a6;
  v20 = *(a3 + 13);
  v21 = *(a3 + 8);
  v22 = &v14[2 * v21];
  v23 = 2 * *(a3 + 9);
  v118 = &v14[v23 + 2];
  v112 = v17;
  v113 = v14;
  v114 = *a3;
  v121 = v20;
  if (2 * v21 == v23)
  {
    v37 = &v14[2 * v21];
    v38 = v22 + 2;
    if (v38 != v118)
    {
      goto LABEL_33;
    }

    return 1;
  }

  v24 = 0;
  v25 = v22 + 2;
  v127 = &v14[2 * v21];
  v26 = *(a3 + 8);
  while (1)
  {
    v28 = v21;
    v29 = *(a10 + 3) + (v25[1] - *(a10 + 1)) * *(a10 + 4);
    if (v29 >= 0.0)
    {
      v30 = 0.5;
    }

    else
    {
      v30 = -0.5;
    }

    sub_100274990(v29 + v30);
    v31 = *(a10 + 2) + (*v25 - *a10) * *(a10 + 4);
    if (v31 >= 0.0)
    {
      v32 = 0.5;
    }

    else
    {
      v32 = -0.5;
    }

    v33 = v31 + v32;
    sub_100274990(v31 + v32);
    v34 = ceil(v33);
    v35 = floor(v33);
    if (v33 >= 0.0)
    {
      v34 = v35;
    }

    v36 = v34;
    if (v19 == 1)
    {
      break;
    }

    if (v19 != -1)
    {
      v17 = v112;
      v14 = v113;
      v21 = v28;
      v37 = v127;
      v38 = v127 + 2;
      if (v127 + 2 != v118)
      {
        goto LABEL_33;
      }

      return 1;
    }

    v21 = v28;
    if (*(a6 + 6) >= v36)
    {
      v37 = v25 - 2;
      v121 += v24;
      v21 += v24;
      goto LABEL_28;
    }

LABEL_12:
    v27 = v25 + 2;
    ++v26;
    ++v20;
    ++v24;
    v22 = v25;
    v25 = v27;
    if (v27 == v118)
    {
      v37 = v27 - 2;
      v121 = v20;
      v21 = v26;
LABEL_28:
      v17 = v112;
      v14 = v113;
      v38 = v37 + 2;
      if (v37 + 2 != v118)
      {
        goto LABEL_33;
      }

      return 1;
    }
  }

  v21 = v28;
  if (*(a6 + 4) > v36)
  {
    goto LABEL_12;
  }

  v121 = v20;
  v21 = v26;
  v17 = v112;
  v14 = v113;
  v37 = v22;
  v38 = v22 + 2;
  if (v38 == v118)
  {
    return 1;
  }

LABEL_33:
  v39 = &v14[2 * (v37 != v14)];
  if (v38 != v17)
  {
    v39 = v38;
  }

  v40 = v39 != v14;
  v41 = v39 + 2;
  v42 = &v14[2 * v40];
  if (v41 == v17)
  {
    v43 = v42;
  }

  else
  {
    v43 = v41;
  }

  do
  {
    v128 = v21;
    v44 = *(a10 + 3) + (v37[1] - *(a10 + 1)) * *(a10 + 4);
    if (v44 >= 0.0)
    {
      v45 = 0.5;
    }

    else
    {
      v45 = -0.5;
    }

    sub_100274990(v44 + v45);
    v46 = *(a10 + 2) + (*v37 - *a10) * *(a10 + 4);
    if (v46 >= 0.0)
    {
      v47 = 0.5;
    }

    else
    {
      v47 = -0.5;
    }

    v48 = v46 + v47;
    sub_100274990(v46 + v47);
    v49 = ceil(v48);
    v50 = floor(v48);
    if (v48 >= 0.0)
    {
      v49 = v50;
    }

    v51 = v49;
    if (v114 == -1)
    {
      v52 = v125;
      v53 = a3;
      v54 = v124;
      v55 = v128;
      if (*(a6 + 4) > v51)
      {
        return 1;
      }
    }

    else
    {
      v52 = v125;
      v53 = a3;
      v54 = v124;
      v55 = v128;
      if (v114 == 1 && *(a6 + 6) < v51)
      {
        return 1;
      }
    }

    v56 = a10[1];
    v185 = *a10;
    v182[0] = v53;
    v182[1] = v55;
    v119 = v43;
    v120 = v37;
    v182[2] = v37;
    v182[3] = v38;
    v182[4] = v43;
    v57 = v14;
    v182[5] = v14;
    v182[6] = v17;
    v183 = 1;
    v184 = 0;
    v186 = v56;
    v59 = *(a6 + 8);
    v58 = *(a6 + 9);
    v60 = &v18[2 * v59];
    v187 = *(a10 + 4);
    v61 = &v18[2 * v58 + 2];
    v62 = v60 + 2;
    v63 = *(a6 + 13);
    if (v60 + 2 == v61)
    {
LABEL_82:
      v66 = &v18[2 * v59];
      v82 = v60 + 2;
      if (v82 != v61)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v64 = 0;
      v65 = *(a10 + 4);
      v66 = &v18[2 * v59];
      v67 = *(a6 + 13);
      v68 = v59;
      do
      {
        v70 = *(a10 + 3) + (v62[1] - *(a10 + 1)) * v65;
        if (v70 >= 0.0)
        {
          v71 = 0.5;
        }

        else
        {
          v71 = -0.5;
        }

        v72 = v70 + v71;
        v73 = 2 * (v72 >= 9.22337204e18);
        if (v72 <= -9.22337204e18)
        {
          v73 = 1;
        }

        if (v73 == 2)
        {
          goto LABEL_138;
        }

        if (v73 == 1)
        {
          goto LABEL_137;
        }

        v74 = *(a10 + 2) + (*v62 - *a10) * v65;
        if (v74 >= 0.0)
        {
          v75 = 0.5;
        }

        else
        {
          v75 = -0.5;
        }

        v76 = v74 + v75;
        v77 = 2 * (v76 >= 9.22337204e18);
        if (v76 <= -9.22337204e18)
        {
          v77 = 1;
        }

        if (v77 == 2)
        {
LABEL_138:
          exception = __cxa_allocate_exception(8uLL);
          exception->__vftable = 0;
          v111 = sub_1000D8810(exception);
        }

        if (v77 == 1)
        {
LABEL_137:
          v108 = __cxa_allocate_exception(8uLL);
          v108->__vftable = 0;
          v109 = sub_1000D87D8(v108);
        }

        v78 = ceil(v76);
        v79 = floor(v76);
        if (v76 >= 0.0)
        {
          v80 = v79;
        }

        else
        {
          v80 = v78;
        }

        v81 = v80;
        if (v54 == 1)
        {
          if (*(v53 + 4) <= v81)
          {
            goto LABEL_134;
          }
        }

        else
        {
          if (v54 != -1)
          {
            goto LABEL_82;
          }

          if (*(v53 + 6) >= v81)
          {
            v66 = v62 - 2;
            v63 += v64;
            v59 += v64;
            v82 = v62;
            if (v62 == v61)
            {
              goto LABEL_135;
            }

LABEL_83:
            v115 = v38;
            if (v82 == v52)
            {
              v82 = &v18[2 * (v66 != v18)];
            }

            v83 = v82 != v18;
            v84 = v82 + 2;
            v85 = &v18[2 * v83];
            if (v84 == v52)
            {
              v86 = v85;
            }

            else
            {
              v86 = v84;
            }

            v87 = ++v121 - v63;
            while (2)
            {
              v88 = *(a10 + 4);
              v89 = *(a10 + 3) + (v66[1] - *(a10 + 1)) * v88;
              if (v89 >= 0.0)
              {
                v90 = 0.5;
              }

              else
              {
                v90 = -0.5;
              }

              v91 = v89 + v90;
              v92 = 2 * (v91 >= 9.22337204e18);
              if (v91 <= -9.22337204e18)
              {
                v92 = 1;
              }

              if (v92 == 2)
              {
                goto LABEL_138;
              }

              if (v92 == 1)
              {
                goto LABEL_137;
              }

              v93 = *(a10 + 2) + (*v66 - *a10) * v88;
              if (v93 >= 0.0)
              {
                v94 = 0.5;
              }

              else
              {
                v94 = -0.5;
              }

              v95 = v93 + v94;
              v96 = 2 * (v95 >= 9.22337204e18);
              if (v95 <= -9.22337204e18)
              {
                v96 = 1;
              }

              if (v96 == 2)
              {
                goto LABEL_138;
              }

              if (v96 == 1)
              {
                goto LABEL_137;
              }

              v97 = ceil(v95);
              v98 = floor(v95);
              if (v95 >= 0.0)
              {
                v99 = v98;
              }

              else
              {
                v99 = v97;
              }

              v100 = v99;
              if (v54 == -1)
              {
                if (*(v53 + 4) > v100)
                {
                  goto LABEL_38;
                }
              }

              else if (v54 == 1 && *(v53 + 6) < v100)
              {
                goto LABEL_38;
              }

              v101 = *(v53 + 2);
              if (a1 != a4)
              {
                v102 = *(v53 + 3);
                v104 = *(a6 + 2);
                v103 = *(a6 + 3);
                goto LABEL_120;
              }

              v102 = *(v53 + 3);
              v104 = *(a6 + 2);
              v103 = *(a6 + 3);
              if (v101 != v104)
              {
LABEL_120:
                v105 = a10[1];
                v179 = *a10;
                v176[0] = a6;
                v176[1] = v59;
                v176[2] = v66;
                v176[3] = v66 + 2;
                v176[4] = v86;
                v176[5] = v18;
                v176[6] = v52;
                v177 = 0;
                v178 = 0;
                v180 = v105;
                v181 = *(a10 + 4);
                v130 = 0;
                v131 = 0;
                v132 = -1;
                v133 = 0;
                v134 = 0;
                v140 = xmmword_1003D8180;
                v141 = 0;
                v142 = 0;
                v143 = -1;
                v144 = -1;
                v145 = -1;
                v146 = 257;
                v147 = 0;
                v148 = 0;
                v149 = -1;
                v150 = -1;
                v151 = -1;
                v152 = 0;
                v153 = 0;
                v154 = 0;
                v155 = 0;
                v161 = xmmword_1003D8180;
                v162 = 0;
                v163 = 0;
                v164 = -1;
                v165 = -1;
                v166 = -1;
                v167 = 257;
                v168 = 0;
                v169 = 0;
                v170 = -1;
                v171 = -1;
                v172 = -1;
                v173 = 0;
                v174 = 0;
                v175 = 0;
                v135 = a1;
                v136 = v101;
                v137 = v102;
                v138 = v55;
                v139 = -1;
                v156 = a4;
                v157 = v104;
                v158 = v103;
                v159 = v59;
                v160 = -1;
                sub_10027B30C(v182, v176, v129, a9, a10, a11);
                v53 = a3;
                v55 = v128;
                v54 = v124;
                v52 = v125;
                goto LABEL_121;
              }

              if (v102 != v103)
              {
                v104 = *(v53 + 2);
                goto LABEL_120;
              }

              if (a7)
              {
                if (v55 >= v59 || (a8 & 1) == 0)
                {
                  v103 = *(v53 + 3);
                  v104 = *(v53 + 2);
                  if (v55 >= v59)
                  {
LABEL_121:
                    v106 = v66 + 4;
                    v66 += 2;
                    ++v59;
                    if (v86 + 2 == v52)
                    {
                      v86 = &v18[2 * (v86 != v18)];
                    }

                    else
                    {
                      v86 += 2;
                    }

                    --v87;
                    if (v106 == v61)
                    {
LABEL_38:
                      v17 = v112;
                      v14 = v113;
                      v38 = v115;
                      goto LABEL_39;
                    }

                    continue;
                  }

                  goto LABEL_120;
                }

LABEL_128:
                if (!v87)
                {
                  goto LABEL_121;
                }

                if (!v55)
                {
                  v103 = *(v53 + 3);
                  v104 = *(v53 + 2);
                  if (*(v53 + 11) - 2 <= v59)
                  {
                    goto LABEL_121;
                  }

                  goto LABEL_120;
                }
              }

              else if (a8)
              {
                goto LABEL_128;
              }

              break;
            }

            v103 = *(v53 + 3);
            v104 = *(v53 + 2);
            goto LABEL_120;
          }
        }

        v69 = v62 + 2;
        ++v68;
        ++v67;
        ++v64;
        v66 = v62;
        v62 = v69;
      }

      while (v69 != v61);
      v66 = v69 - 2;
LABEL_134:
      v63 = v67;
      v59 = v68;
      v82 = v66 + 2;
      if (v66 + 2 != v61)
      {
        goto LABEL_83;
      }
    }

LABEL_135:
    ++v121;
    v14 = v57;
LABEL_39:
    v37 = v120 + 2;
    v38 += 2;
    v21 = v55 + 1;
    if (v119 + 2 == v17)
    {
      v43 = &v14[2 * (v119 != v14)];
    }

    else
    {
      v43 = v119 + 2;
    }
  }

  while (v38 != v118);
  return 1;
}

void sub_100287B0C(void *a1, uint64_t a2, uint64_t a3)
{
  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  v3 = a1[4];
  v4 = v3 >> 4;
  v5 = a1[1];
  v6 = a1[2];
  if (v6 != v5)
  {
    v7 = (v5 + 8 * v4);
    v8 = *v7 + 376 * (a1[4] & 0xFLL);
    v10 = a1[5];
    v9 = a1 + 5;
    v16 = *(v5 + (((v10 + v3) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((v10 + v3) & 0xF);
    if (v8 != v16)
    {
      v11 = 0;
      do
      {
        v17 = v7;
        if (*(v8 + 16) == 7)
        {
          operator new();
        }

        v8 += 376;
        if (v8 - *v7 == 6016)
        {
          ++v7;
          v8 = v17[1];
        }

        ++v11;
      }

      while (v8 != v16);
      v3 = a1[4];
      v5 = a1[1];
      v6 = a1[2];
      v4 = v3 >> 4;
    }

    if (v6 != v5)
    {
      v12 = (v5 + 8 * v4);
      v13 = *v12 + 376 * (v3 & 0xF);
      v14 = *(v5 + (((*v9 + v3) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*v9 + v3) & 0xF);
      while (v13 != v14)
      {
        v13 += 376;
        if (v13 - *v12 == 6016)
        {
          v15 = v12[1];
          ++v12;
          v13 = v15;
        }
      }
    }
  }

  sub_100289698(&v19, v20[0]);
}

void sub_100288264(void *a1, uint64_t **a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = (v2 + 8 * (a1[4] >> 4));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4 + 376 * (a1[4] & 0xFLL);
  }

  v32 = 0;
  v33 = a2 + 1;
  while (1)
  {
    v29 = v4;
    if (v3 != v2)
    {
      v6 = a1[5] + a1[4];
      if (v5 == *(v2 + ((v6 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * (v6 & 0xF))
      {
        return;
      }

      goto LABEL_10;
    }

    if (!v5)
    {
      break;
    }

LABEL_10:
    if (*(v5 + 32))
    {
      goto LABEL_11;
    }

    v7 = 0;
    v8 = (v5 + 40);
    v30 = v5;
    v31 = v5 + 40;
    v9 = 40;
    while (2)
    {
      v11 = v8[1];
      v12 = v8[2];
      v13 = v8[3];
      v14 = *v33;
      if (!*v33)
      {
LABEL_30:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v15 = v14;
          v16 = v14[4];
          if (v11 != v16)
          {
            if (v11 >= v16)
            {
              if (v16 >= v11)
              {
                goto LABEL_31;
              }

              goto LABEL_29;
            }

            goto LABEL_18;
          }

          v17 = v15[5];
          if (v12 != v17)
          {
            break;
          }

          v18 = v15[6];
          if (v13 >= v18)
          {
            if (v18 >= v13)
            {
              goto LABEL_31;
            }

            goto LABEL_29;
          }

LABEL_18:
          v14 = *v15;
          if (!*v15)
          {
            goto LABEL_30;
          }
        }

        if (v12 < v17)
        {
          goto LABEL_18;
        }

        if (v17 >= v12)
        {
          break;
        }

LABEL_29:
        v14 = v15[1];
        if (!v14)
        {
          goto LABEL_30;
        }
      }

LABEL_31:
      v19 = v31 - 168 * v7 + 176;
      v20 = v15[8];
      v21 = v15[9];
      if (v20 < v21)
      {
        *v20 = v32;
        v20[1] = v7;
        *(v20 + 16) = 0;
        v10 = (v20 + 5);
        v20[3] = v19;
        v20[4] = v8;
      }

      else
      {
        v22 = v15[7];
        v23 = 0xCCCCCCCCCCCCCCCDLL * (v20 - v22) + 1;
        if (v23 > 0x666666666666666)
        {
          sub_10000FC84();
        }

        v24 = 0xCCCCCCCCCCCCCCCDLL * (v21 - v22);
        if (2 * v24 > v23)
        {
          v23 = 2 * v24;
        }

        if (v24 >= 0x333333333333333)
        {
          v25 = 0x666666666666666;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          if (v25 <= 0x666666666666666)
          {
            operator new();
          }

          sub_10000D444();
        }

        v26 = 8 * (v20 - v22);
        *v26 = v32;
        *(v26 + 8) = v7;
        *(v26 + 16) = 0;
        *(v26 + 24) = v19;
        *(v26 + 32) = v8;
        v10 = v26 + 40;
        v27 = (v26 - (v20 - v22));
        memcpy(v27, v22, v20 - v22);
        v15[7] = v27;
        v15[8] = v10;
        v15[9] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      v5 = v30;
      v15[8] = v10;
      v9 += 168;
      ++v7;
      v8 = (v30 + v9);
      if (v9 != 376)
      {
        continue;
      }

      break;
    }

LABEL_11:
    v5 += 376;
    v4 = v29;
    if (v5 - *v29 == 6016)
    {
      v4 = v29 + 1;
      v5 = v29[1];
    }

    ++v32;
    v2 = a1[1];
    v3 = a1[2];
  }
}

void sub_10028873C(void *a1, uint64_t a2, int a3, uint64_t *a4, void *a5)
{
  v5 = *a1;
  v54 = a1 + 1;
  if (*a1 != a1 + 1)
  {
    do
    {
      v58 = 0uLL;
      v59 = 0;
      v60[2] = 0;
      v60[3] = 0;
      if (v5[7])
      {
        v9 = v5[5];
        if (v9 == v5 + 6)
        {
          v18 = 0uLL;
        }

        else
        {
          v10 = 1;
          do
          {
            v11 = v9[4];
            v12 = *(a2 + 32) + v11;
            v13 = *(*(a2 + 8) + ((v12 >> 1) & 0x7FFFFFFFFFFFFFF8));
            v14 = v12 & 0xF;
            v15 = (v13 + 376 * v14);
            if (v10)
            {
              v55 = *v15;
            }

            sub_10028EB80(&v58, (v13 + 376 * v14), v15 + 10, v11, 0, a4, a5, v10 & 1);
            sub_10028EB80(&v58, v15, v15 + 52, v11, 1, a4, a5, 0);
            v16 = v9[1];
            if (v16)
            {
              do
              {
                v17 = v16;
                v16 = *v16;
              }

              while (v16);
            }

            else
            {
              do
              {
                v17 = v9[2];
                v38 = *v17 == v9;
                v9 = v17;
              }

              while (!v38);
            }

            v10 = 0;
            v9 = v17;
          }

          while (v17 != v5 + 6);
          v18 = v58;
        }

        v57[0] = v60;
        v57[1] = &v55;
        v19 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v18.n128_u64[1] - v18.n128_u64[0]) >> 4));
        v57[2] = &v61;
        v56[0] = v60;
        v56[1] = &v55;
        v56[2] = &v61;
        if (v18.n128_u64[1] == v18.n128_u64[0])
        {
          v20 = 0;
        }

        else
        {
          v20 = v19;
        }

        sub_10028F810(v18.n128_u64[0], v18.n128_u64[1], v56, v20, 1, v18);
        v23 = v58.n128_u64[1];
        v22 = v58.n128_u64[0];
        v24 = v58.n128_u64[1] - v58.n128_u64[0];
        if (v58.n128_u64[1] != v58.n128_u64[0])
        {
          *(v58.n128_u64[0] + 16) = 0;
          if ((0x6DB6DB6DB6DB6DB7 * (v24 >> 4)) >= 2)
          {
            v25 = 0;
            v26 = 128;
            v27 = 1;
            do
            {
              v28 = sub_10028F29C(v57, (v22 + v26 - 128), (v22 + v26 - 16), v21);
              v23 = v58.n128_u64[1];
              v22 = v58.n128_u64[0];
              v25 += v28;
              *(v58.n128_u64[0] + v26) = v25;
              ++v27;
              v26 += 112;
            }

            while (v27 < 0x6DB6DB6DB6DB6DB7 * ((v23 - v22) >> 4));
          }
        }

        LOWORD(v57[0]) = 0;
        if (v23 != v22)
        {
          v29 = 0;
          v30 = 0;
          do
          {
            v31 = v22 + v29;
            if (!*(v22 + v29 + 44))
            {
              v32 = *(v31 + 72);
              if (v32 <= 1 && (*(v57 + v32) & 1) == 0)
              {
                sub_1002925C8(&v58, v32, v30);
                *(v57 + *(v31 + 72)) = 1;
                v23 = v58.n128_u64[1];
                v22 = v58.n128_u64[0];
              }
            }

            ++v30;
            v29 += 112;
          }

          while (v30 < 0x6DB6DB6DB6DB6DB7 * ((v23 - v22) >> 4));
        }

        sub_10028E96C(&v58, a3);
        v33 = v58;
        if (a3 == 1)
        {
          if (v58.n128_u64[1] != v58.n128_u64[0])
          {
            v34 = 0;
            v35 = 0;
            v36 = 0x6DB6DB6DB6DB6DB7 * ((v58.n128_u64[1] - v58.n128_u64[0]) >> 4);
            if (v36 <= 1)
            {
              v36 = 1;
            }

            v37 = v58.n128_u64[0] + 44;
            do
            {
              v38 = *(v37 - 28) > v35 && *v37 == 1;
              if (v38)
              {
                if (*(v37 + 4) == 0 && *(v37 + 12) != 0)
                {
                  v35 = *(v37 - 28);
                }

                v34 += (*(v37 + 4) == 0) & (*(v37 + 12) != 0);
              }

              v37 += 112;
              --v36;
            }

            while (v36);
LABEL_59:
            v5[8] = v34;
            if (v33.n128_u64[1] != v33.n128_u64[0])
            {
              v43 = 0x6DB6DB6DB6DB6DB7 * ((v33.n128_u64[1] - v33.n128_u64[0]) >> 4);
              v44 = *(a2 + 32);
              v45 = *(a2 + 8);
              v47 = a3 == 1 && v34 == 0;
              if (v43 <= 1)
              {
                v43 = 1;
              }

              v48 = (v33.n128_u64[0] + 56);
              do
              {
                v49 = *(v45 + (((v44 + *(v48 - 3)) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((v44 + *(v48 - 6)) & 0xF);
                v50 = v49 + 168 * *(v48 - 4);
                if (v47)
                {
                  *(v50 + 144) = 0;
                }

                if (*(v48 - 3) == 1)
                {
                  *(v50 + 152) = *(v48 - 1);
                  *(v50 + 168) = *(v48 - 5);
                  if (*(v49 + 48) != *(v49 + 216) && (a3 == 1 && *(v48 - 1) || a3 == 2 && *v48 != 2))
                  {
                    *(v50 + 144) = 0;
                  }
                }

                v48 += 14;
                --v43;
              }

              while (v43);
            }

LABEL_81:
            v58.n128_u64[1] = v33.n128_u64[0];
            operator delete(v33.n128_u64[0]);
            goto LABEL_82;
          }
        }

        else if (v58.n128_u64[1] != v58.n128_u64[0])
        {
          v34 = 0;
          v39 = 0;
          v40 = 0x6DB6DB6DB6DB6DB7 * ((v58.n128_u64[1] - v58.n128_u64[0]) >> 4);
          if (v40 <= 1)
          {
            v40 = 1;
          }

          v41 = v58.n128_u64[0] + 44;
          do
          {
            if (*(v41 - 28) > v39 && *v41 == 1)
            {
              if (*(v41 + 4) < 2uLL && *(v41 + 12) > 1uLL)
              {
                v39 = *(v41 - 28);
              }

              v34 += (*(v41 + 4) < 2uLL) & (*(v41 + 12) > 1uLL);
            }

            v41 += 112;
            --v40;
          }

          while (v40);
          goto LABEL_59;
        }

        v5[8] = 0;
        if (v33.n128_u64[0])
        {
          goto LABEL_81;
        }
      }

LABEL_82:
      v51 = v5[1];
      if (v51)
      {
        do
        {
          v52 = v51;
          v51 = *v51;
        }

        while (v51);
      }

      else
      {
        do
        {
          v52 = v5[2];
          v38 = *v52 == v5;
          v5 = v52;
        }

        while (!v38);
      }

      v5 = v52;
    }

    while (v52 != v54);
  }
}

void sub_100288C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    v22 = a1;
    operator delete(__p);
    a1 = v22;
  }

  _Unwind_Resume(a1);
}

void sub_100288C60(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 8);
  v4 = *a2;
  if (*a2 != a2 + 8)
  {
    do
    {
      v6 = v4[5];
      if (v6 != v4 + 6)
      {
        do
        {
          v11 = v6[1];
          v12 = v11;
          v13 = v6;
          if (v11)
          {
            do
            {
              v14 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v14 = v13[2];
              v9 = *v14 == v13;
              v13 = v14;
            }

            while (!v9);
          }

          v15 = *(a1 + 32) + v6[4];
          if (*(*(*(a1 + 8) + ((v15 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * (v15 & 0xF) + 32) == 1)
          {
            v16 = v6;
            if (v11)
            {
              do
              {
                v17 = v11;
                v11 = *v11;
              }

              while (v11);
            }

            else
            {
              do
              {
                v17 = v16[2];
                v9 = *v17 == v16;
                v16 = v17;
              }

              while (!v9);
            }

            if (v4[5] == v6)
            {
              v4[5] = v17;
            }

            v10 = v4[6];
            --v4[7];
            sub_100228A0C(v10, v6);
            operator delete(v6);
          }

          v6 = v14;
        }

        while (v14 != v4 + 6);
      }

      v7 = v4[1];
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
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
    }

    while (v8 != v5);
    v4 = *a2;
  }

  if (v4 != v5)
  {
    do
    {
      v19 = v4[1];
      v20 = v19;
      v21 = v4;
      if (v19)
      {
        do
        {
          v22 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v22 = v21[2];
          v9 = *v22 == v21;
          v21 = v22;
        }

        while (!v9);
      }

      if (v4[7] == 1)
      {
        v23 = *(a1 + 32) + *(v4[5] + 32);
        *(*(*(a1 + 8) + ((v23 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * (v23 & 0xF) + 24) = -1;
        v24 = v4;
        if (v19)
        {
          do
          {
            v25 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v25 = v24[2];
            v9 = *v25 == v24;
            v24 = v25;
          }

          while (!v9);
        }

        if (*a2 == v4)
        {
          *a2 = v25;
        }

        v18 = *(a2 + 8);
        --*(a2 + 16);
        sub_100228A0C(v18, v4);
        sub_1000275F4((v4 + 5), v4[6]);
        operator delete(v4);
      }

      v4 = v22;
    }

    while (v22 != v5);
  }
}

void *sub_100288EC8(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = result[1] - *result;
  if (v4)
  {
    v5 = result;
    v6 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3);
    if (v4 >= 41)
    {
      v7 = (v3 + 40);
    }

    else
    {
      v7 = (v3 + 40 * (1 % v6));
    }

    if (v4 >= 41)
    {
      v8 = 1;
    }

    else
    {
      v8 = 1 % v6;
    }

    v9 = ~v6;
    v10 = v6 + 1;
    for (i = *result; i != v5[1]; i += 5)
    {
      v12 = *i;
      if (a3 && v12 == *v7)
      {
        v13 = v8 + 1;
        if (v8 <= -2)
        {
          v39 = ((v10 + v8) & ~((v10 + v8) >> 63)) + v9 - v8;
          if (v39)
          {
            v40 = 2;
          }

          else
          {
            v40 = 1;
          }

          v41 = v40 + (v39 - (v39 != 0)) / v6;
          if (v41 <= 1)
          {
            goto LABEL_70;
          }

          v13 += (v41 & 0xFFFFFFFFFFFFFFFELL) * v6;
          v42 = v41 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            v42 -= 2;
          }

          while (v42);
          if (v41 != (v41 & 0xFFFFFFFFFFFFFFFELL))
          {
LABEL_70:
            do
            {
              v13 += v6;
            }

            while (v13 < 0);
          }
        }

        else if (v13 < v6)
        {
          v7 += 5;
          goto LABEL_17;
        }

        v13 %= v6;
        v7 = (v3 + 40 * v13);
      }

      else
      {
        v13 = v8;
      }

LABEL_17:
      v14 = *(a2 + 32);
      v15 = *(a2 + 8);
      v16 = *(v15 + (((v14 + v12) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((v14 + v12) & 0xF);
      v17 = v16 + 168 * i[1] + 40;
      v18 = *(v16 + 24);
      v19 = *v7;
      if (v18 >= 1 && v12 != v19)
      {
        while (1)
        {
          v26 = *(v15 + (((v19 + v14) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((v19 + v14) & 0xF);
          if (v18 != *(v26 + 24))
          {
            goto LABEL_22;
          }

          v27 = v26 + 168 * v7[1];
          v29 = *(v27 + 48);
          v28 = (v27 + 48);
          if (*(v17 + 8) != v29 || *(v17 + 32) != v28[3] || *(v17 + 24) != v28[2] || *(v17 + 40) != v28[4] || *(v17 + 16) != v28[1])
          {
            goto LABEL_22;
          }

          v21 = v13 + 1;
          if (v13 <= -2)
          {
            break;
          }

          if (v21 >= v6)
          {
LABEL_30:
            v21 %= v6;
            v7 = (v3 + 40 * v21);
            v19 = *v7;
            v13 = v21;
            if (v12 == *v7)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v30 = v7[5];
            v7 += 5;
            v19 = v30;
            ++v13;
            if (v12 == v30)
            {
              goto LABEL_23;
            }
          }
        }

        v31 = ((v10 + v13) & ~((v10 + v13) >> 63)) + v9 - v13;
        if (v31)
        {
          v32 = 2;
        }

        else
        {
          v32 = 1;
        }

        v33 = v32 + (v31 - (v31 != 0)) / v6;
        if (v33 <= 1)
        {
          goto LABEL_71;
        }

        v21 += (v33 & 0xFFFFFFFFFFFFFFFELL) * v6;
        v34 = v33 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v34 -= 2;
        }

        while (v34);
        if (v33 != (v33 & 0xFFFFFFFFFFFFFFFELL))
        {
LABEL_71:
          do
          {
            v21 += v6;
          }

          while (v21 < 0);
        }

        goto LABEL_30;
      }

LABEL_22:
      v21 = v13;
LABEL_23:
      v22 = *(v15 + (((v19 + v14) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((v19 + v14) & 0xF) + 168 * v7[1];
      *(v17 + 80) = *(v7[4] + 32);
      *(v17 + 88) = v19;
      if (*(v17 + 32) == *(v22 + 72))
      {
        v43 = i;
        v23 = a2;
        v24 = v5;
        v25 = a3;
        result = sub_10027EEEC((v17 + 48), (v22 + 88));
        a2 = v23;
        i = v43;
        a3 = v25;
        v5 = v24;
        if (result)
        {
          *(v17 + 96) = *v7;
        }
      }

      if (a3)
      {
        v8 = v21;
      }

      else
      {
        v8 = v21 + 1;
        if (v21 <= -2)
        {
          v35 = ((v10 + v21) & ~((v10 + v21) >> 63)) + v9 - v21;
          if (v35)
          {
            v36 = 2;
          }

          else
          {
            v36 = 1;
          }

          v37 = v36 + (v35 - (v35 != 0)) / v6;
          if (v37 <= 1)
          {
            goto LABEL_72;
          }

          v8 += (v37 & 0xFFFFFFFFFFFFFFFELL) * v6;
          v38 = v37 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            v38 -= 2;
          }

          while (v38);
          if (v37 != (v37 & 0xFFFFFFFFFFFFFFFELL))
          {
LABEL_72:
            do
            {
              v8 += v6;
            }

            while (v8 < 0);
          }

LABEL_58:
          v8 %= v6;
          v7 = (v3 + 40 * v8);
          continue;
        }

        if (v8 >= v6)
        {
          goto LABEL_58;
        }

        v7 += 5;
      }
    }
  }

  return result;
}

BOOL sub_10028927C(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v4 = *a4;
  v6 = a1[7];
  v5 = a1[8];
  v7 = (*a4 + 48 * v6);
  v8 = 24 * v5;
  v9 = a2[7];
  v10 = a2[8];
  if (v5 != v10 || v6 != v9)
  {
    goto LABEL_27;
  }

  v12 = a1[6];
  if (v12 != a2[6])
  {
    goto LABEL_27;
  }

  v13 = a2[9];
  v14 = a1[9];
  v15 = __OFSUB__(v13, v14);
  v16 = v13 - v14;
  if (!v12)
  {
    if (v16 < 0 == v15)
    {
      goto LABEL_17;
    }

    v17 = a3;
    v18 = a3;
    if (v5 < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v16 < 0 == v15)
  {
    goto LABEL_17;
  }

  v17 = (*a4 + 48 * v6);
  v18 = v17;
  if ((v5 & 0x8000000000000000) == 0)
  {
LABEL_11:
    v18 = (v8 + v17[3]);
  }

LABEL_12:
  v16 = v16 + ((v18[1] - *v18) >> 4) - 1;
LABEL_17:
  if (v16 > 1 || (v19 = a1[27], v19 != a2[27]) || (v20 = a1[29], v20 != a2[29]) || (v21 = a1[28], v21 != a2[28]))
  {
LABEL_27:
    v27 = 0;
    v28 = a2[28];
    v29 = a2[29];
    if (v5 != v29 || v6 != v28)
    {
      goto LABEL_58;
    }

    goto LABEL_32;
  }

  v22 = a2[30];
  v23 = a1[30];
  v24 = __OFSUB__(v22, v23);
  v25 = v22 - v23;
  if (v19)
  {
    if (v25 < 0 == v24)
    {
      goto LABEL_122;
    }

    v26 = (v4 + 48 * v21);
    if (v20 < 0)
    {
LABEL_26:
      v25 = v25 + ((v26[1] - *v26) >> 4) - 1;
      goto LABEL_122;
    }

LABEL_25:
    v26 = (v26[3] + 24 * v20);
    goto LABEL_26;
  }

  if (v25 < 0 != v24)
  {
    v26 = a3;
    if (v20 < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_122:
  v27 = v25 < 2;
  v28 = a2[28];
  v29 = a2[29];
  if (v5 != v29 || v6 != v28)
  {
    goto LABEL_58;
  }

LABEL_32:
  v31 = a1[6];
  if (v31 != a2[27])
  {
LABEL_58:
    v39 = a1[29];
    goto LABEL_59;
  }

  v32 = a2[30];
  v33 = a1[9];
  v34 = __OFSUB__(v32, v33);
  v35 = v32 - v33;
  if (!v31)
  {
    if (v35 < 0 == v34)
    {
      goto LABEL_43;
    }

    v36 = a3;
    v37 = a3;
    if (v5 < 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v35 < 0 == v34)
  {
    goto LABEL_43;
  }

  v36 = v7;
  v37 = v7;
  if ((v5 & 0x8000000000000000) == 0)
  {
LABEL_37:
    v37 = (v8 + v36[3]);
  }

LABEL_38:
  v35 = v35 + ((v37[1] - *v37) >> 4) - 1;
LABEL_43:
  if (v35 > 1)
  {
    goto LABEL_58;
  }

  v38 = a1[27];
  if (v38 != a2[6])
  {
    goto LABEL_58;
  }

  v39 = a1[29];
  if (*(a1 + 14) == __PAIR128__(v10, v9))
  {
    v40 = a2[9];
    v41 = a1[30];
    v42 = __OFSUB__(v40, v41);
    v43 = v40 - v41;
    if (v38)
    {
      if (v43 < 0 == v42)
      {
        goto LABEL_56;
      }

      v44 = (v4 + 48 * v9);
      if ((v10 & 0x8000000000000000) == 0)
      {
LABEL_50:
        v44 = (v44[3] + 24 * v10);
      }
    }

    else
    {
      if (v43 < 0 == v42)
      {
LABEL_56:
        if (v43 < 2)
        {
          ++v27;
        }

        goto LABEL_58;
      }

      v44 = a3;
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_50;
      }
    }

    v43 = v43 + ((v44[1] - *v44) >> 4) - 1;
    goto LABEL_56;
  }

LABEL_59:
  v45 = a1[28];
  v46 = (v4 + 48 * v45);
  v47 = 24 * v39;
  if (v39 != v10)
  {
    goto LABEL_88;
  }

  if (v45 != v9)
  {
    goto LABEL_88;
  }

  v48 = a1[27];
  if (v48 != a2[6])
  {
    goto LABEL_88;
  }

  v49 = a2[9];
  v50 = a1[30];
  v51 = __OFSUB__(v49, v50);
  v52 = v49 - v50;
  if (!v48)
  {
    if (v52 < 0 == v51)
    {
      goto LABEL_72;
    }

    v53 = a3;
    v54 = a3;
    if (v39 < 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (v52 < 0 == v51)
  {
    goto LABEL_72;
  }

  v53 = v46;
  v54 = v46;
  if ((v39 & 0x8000000000000000) == 0)
  {
LABEL_66:
    v54 = (v47 + v53[3]);
  }

LABEL_67:
  v52 = v52 + ((v54[1] - *v54) >> 4) - 1;
LABEL_72:
  if (v52 > 1)
  {
    goto LABEL_88;
  }

  if (v5 != v29)
  {
    goto LABEL_88;
  }

  v55 = a1[6];
  if (v55 != a2[27] || v6 != v28)
  {
    goto LABEL_88;
  }

  v56 = a2[30];
  v57 = a1[9];
  v58 = __OFSUB__(v56, v57);
  v59 = v56 - v57;
  if (v55)
  {
    if (v59 < 0 == v58)
    {
      goto LABEL_86;
    }

    v60 = v7;
    v61 = v7;
    if (v5 < 0)
    {
LABEL_81:
      v59 = v59 + ((v61[1] - *v61) >> 4) - 1;
      goto LABEL_86;
    }

LABEL_80:
    v61 = (v8 + v60[3]);
    goto LABEL_81;
  }

  if (v59 < 0 != v58)
  {
    v60 = a3;
    v61 = a3;
    if (v5 < 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_86:
  if (v59 < 2)
  {
    ++v27;
  }

LABEL_88:
  if (v39 != v29)
  {
    return v27 == 2;
  }

  if (v45 != v28)
  {
    return v27 == 2;
  }

  v62 = a1[27];
  if (v62 != a2[27])
  {
    return v27 == 2;
  }

  v63 = a2[30];
  v64 = a1[30];
  v65 = __OFSUB__(v63, v64);
  v66 = v63 - v64;
  if (!v62)
  {
    if (v66 < 0 == v65)
    {
      goto LABEL_101;
    }

    v46 = a3;
    if (v39 < 0)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  if (v66 < 0 == v65)
  {
    goto LABEL_101;
  }

  if ((v39 & 0x8000000000000000) == 0)
  {
LABEL_95:
    v46 = (v47 + v46[3]);
  }

LABEL_96:
  v66 = v66 + ((v46[1] - *v46) >> 4) - 1;
LABEL_101:
  if (v66 > 1)
  {
    return v27 == 2;
  }

  if (v5 != v10)
  {
    return v27 == 2;
  }

  v67 = a1[6];
  if (v67 != a2[6] || v6 != v9)
  {
    return v27 == 2;
  }

  v68 = a2[9];
  v69 = a1[9];
  v70 = __OFSUB__(v68, v69);
  v71 = v68 - v69;
  if (v67)
  {
    if (v71 < 0 == v70)
    {
      goto LABEL_115;
    }

    a3 = v7;
    if (v5 < 0)
    {
LABEL_110:
      v71 = v71 + ((a3[1] - *a3) >> 4) - 1;
      goto LABEL_115;
    }

LABEL_109:
    a3 = (v8 + a3[3]);
    goto LABEL_110;
  }

  if (v71 < 0 != v70)
  {
    if (v5 < 0)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

LABEL_115:
  if (v71 < 2)
  {
    ++v27;
  }

  return v27 == 2;
}

void sub_100289698(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100289698(a1, *a2);
    sub_100289698(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      a2[7] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void sub_1002896FC(void *a1, uint64_t **a2, uint64_t a3, __n128 a4)
{
  v4 = a1[1];
  if (a1[2] != v4)
  {
    v5 = a1[4];
    v6 = (v4 + 8 * (v5 >> 4));
    v7 = *v6 + 376 * (v5 & 0xF);
    v8 = *(v4 + (((a1[5] + v5) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*(a1 + 10) + v5) & 0xF);
    if (v7 != v8)
    {
      v10 = 0;
      v11 = 0;
      v71 = 0;
      while ((*(v7 + 32) & 1) != 0)
      {
        v7 += 376;
        if (v7 - *v6 == 6016)
        {
          goto LABEL_19;
        }

LABEL_4:
        ++v10;
        if (v7 == v8)
        {
          goto LABEL_34;
        }
      }

      v12 = *(a3 + 24) + (*(v7 + 8) - *(a3 + 8)) * *(a3 + 32);
      if (v12 >= 0.0)
      {
        v13 = 0.5;
      }

      else
      {
        v13 = -0.5;
      }

      v14 = v12 + v13;
      sub_100274990(v12 + v13);
      v15 = ceil(v14);
      v16 = floor(v14);
      if (v14 >= 0.0)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      v18 = *(a3 + 16) + (*v7 - *a3) * *(a3 + 32);
      if (v18 >= 0.0)
      {
        v19 = 0.5;
      }

      else
      {
        v19 = -0.5;
      }

      v20 = v18 + v19;
      sub_100274990(v18 + v19);
      v21 = ceil(v20);
      v22 = floor(v20);
      if (v20 >= 0.0)
      {
        v21 = v22;
      }

      v24 = v8;
      v25 = v71 - v11;
      v26 = v11;
      v27 = 0xAAAAAAAAAAAAAAABLL * ((v71 - v11) >> 3);
      v28 = v27 + 1;
      __src = v26;
      if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_10000FC84();
      }

      v29 = 0xAAAAAAAAAAAAAAABLL * (-v26 >> 3);
      if (2 * v29 > v28)
      {
        v28 = 2 * v29;
      }

      if (v29 >= 0x555555555555555)
      {
        v30 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        if (v30 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_10000D444();
      }

      v31 = 24 * v27;
      *v31 = v10;
      *(v31 + 8) = v21;
      *(v31 + 16) = v17;
      v71 = (24 * v27 + 24);
      memcpy((24 * v27 + 24 * (v25 / -24)), __src, v25);
      if (__src)
      {
        operator delete(__src);
      }

      v11 = (24 * v27 + 24 * (v25 / -24));
      v8 = v24;
      v7 += 376;
      if (v7 - *v6 != 6016)
      {
        goto LABEL_4;
      }

LABEL_19:
      v23 = v6[1];
      ++v6;
      v7 = v23;
      goto LABEL_4;
    }
  }

  v71 = 0;
  v11 = 0;
LABEL_34:
  v32 = v71;
  v33 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v71 - v11) >> 3));
  if (v71 == v11)
  {
    v34 = 0;
  }

  else
  {
    v34 = v33;
  }

  sub_10028A1E8(v11, v71, &v72, v34, 1, a4);
  __p = 0;
  v78 = 0;
  v79 = 0;
  if (v71 != v11)
  {
    __srca = v11;
    v35 = v11;
    do
    {
      v70 = (v35 + 24);
      if (v32 != &v35[1].n128_i8[8])
      {
        v36 = (v35 + 24);
        do
        {
          v37 = v35[1].n128_u64[0];
          v38 = v37 - v36[1].n128_u64[0];
          if (v38 > 1)
          {
            break;
          }

          v39 = v35->n128_u64[1];
          v40 = v39 - v36->n128_u64[1];
          if (v40 < 0)
          {
            v40 = v36->n128_u64[1] - v39;
          }

          if (v38 < 0)
          {
            v38 = v36[1].n128_u64[0] - v37;
          }

          if (v40 <= 1 && v38 <= 1)
          {
            v43 = __p;
            v42 = v78;
            if (__p == v78)
            {
LABEL_62:
              memset(v76, 0, sizeof(v76));
              v75 = v76;
              memset(v73, 0, sizeof(v73));
              v72 = v73;
              v74 = *(v35 + 8);
              if (v78 >= v79)
              {
                v48 = sub_10028BBAC(&__p, &v72);
              }

              else
              {
                v78[1] = 0;
                *v42 = (v42 + 1);
                v42[2] = 0;
                v42[3] = 0;
                *(v42 + 2) = v74;
                v48 = (v42 + 6);
              }

              v44 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v43) >> 4);
              v78 = v48;
              sub_1000275F4(&v72, v73[0]);
              sub_1000275F4(&v75, v76[0]);
              v43 = __p;
            }

            else
            {
              v44 = 0;
              v45 = __p;
              while (1)
              {
                v46 = v45[4] - v39;
                if (v46 < 0)
                {
                  v46 = v39 - v45[4];
                }

                if (v46 <= 1)
                {
                  v47 = v45[5] - v37;
                  if (v47 < 0)
                  {
                    v47 = v37 - v45[5];
                  }

                  if (v47 < 2)
                  {
                    break;
                  }
                }

                ++v44;
                v45 += 6;
                if (v45 == v78)
                {
                  goto LABEL_62;
                }
              }
            }

            v49 = v35->n128_u64[0];
            v50 = *&v43[48 * v44 + 8];
            if (!v50)
            {
LABEL_72:
              operator new();
            }

            v51 = *&v43[48 * v44 + 8];
            while (1)
            {
              while (1)
              {
                v52 = v51;
                v53 = v51[4];
                if (v49 >= v53)
                {
                  break;
                }

                v51 = *v52;
                if (!*v52)
                {
                  goto LABEL_72;
                }
              }

              if (v53 >= v49)
              {
                break;
              }

              v51 = v52[1];
              if (!v51)
              {
                goto LABEL_72;
              }
            }

            v32 = v71;
            v54 = v36->n128_u64[0];
            while (1)
            {
              while (1)
              {
                v55 = v50;
                v56 = v50[4];
                if (v54 >= v56)
                {
                  break;
                }

                v50 = *v55;
                if (!*v55)
                {
                  goto LABEL_78;
                }
              }

              if (v56 >= v54)
              {
                break;
              }

              v50 = v55[1];
              if (!v50)
              {
LABEL_78:
                operator new();
              }
            }
          }

          v36 = (v36 + 24);
        }

        while (v36 != v32);
      }

      v35 = (v35 + 24);
    }

    while (v70 != v32);
    v57 = __p;
    v58 = v78;
    if (__p != v78)
    {
      v59 = a2 + 1;
      v60 = 1;
      do
      {
        v61 = *v59;
        if (!*v59)
        {
LABEL_88:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v62 = v61;
            v63 = v61[4];
            if (v60 >= v63)
            {
              break;
            }

            v61 = *v62;
            if (!*v62)
            {
              goto LABEL_88;
            }
          }

          if (v63 >= v60)
          {
            break;
          }

          v61 = v62[1];
          if (!v61)
          {
            goto LABEL_88;
          }
        }

        if (v62 + 5 != v57)
        {
          sub_10028C064(v62 + 5, *v57, v57 + 1);
        }

        ++v60;
        v62[8] = v57[3];
        v57 += 6;
      }

      while (v57 != v58);
      v57 = __p;
    }

    v11 = __srca;
    if (v57)
    {
      v64 = v57;
      if (v78 != v57)
      {
        v65 = (v78 - 6);
        do
        {
          sub_1000275F4(v65, *(v65 + 8));
          v66 = v65 == v57;
          v65 -= 48;
        }

        while (!v66);
        v64 = __p;
      }

      v78 = v57;
      operator delete(v64);
    }
  }

  if (v11)
  {
    operator delete(v11);
  }
}

void sub_10028A17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10028A1E8(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v11 = (a2 - 24);
  v121 = a2 - 3;
  v12 = &a2[-5].n128_i8[8];
  v13 = a1;
  while (1)
  {
    a1 = v13;
    v14 = a2 - v13;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v13) >> 3);
    if (v15 > 2)
    {
      break;
    }

    if (v15 < 2)
    {
      return result;
    }

    if (v15 == 2)
    {
      if (a2[-1].n128_u64[1] > v13[1].n128_u64[0])
      {
        v171 = v13[1].n128_u64[0];
        v143 = *v13;
        v92 = *(a2 - 24);
        v13[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v13 = v92;
        result = v143;
        a2[-1].n128_u64[1] = v171;
        *(a2 - 24) = v143;
      }

      return result;
    }

LABEL_9:
    if (v14 <= 575)
    {
      v100 = (v13 + 24);
      v102 = v13 == a2 || v100 == a2;
      if (a5)
      {
        if (!v102)
        {
          v103 = 0;
          v104 = v13;
          do
          {
            v106 = v104[2].n128_i64[1];
            v107 = v104[1].n128_i64[0];
            v104 = v100;
            if (v106 > v107)
            {
              v146 = *v100;
              v108 = v103;
              do
              {
                v109 = v13 + v108;
                *(v109 + 24) = *(v13 + v108);
                *(v109 + 5) = *(v13[1].n128_u64 + v108);
                if (!v108)
                {
                  v105 = v13;
                  goto LABEL_123;
                }

                v108 -= 24;
              }

              while (v106 > *(v109 - 1));
              v105 = &v13[1].n128_i64[1] + v108;
LABEL_123:
              result = v146;
              *v105 = v146;
              *(v105 + 16) = v106;
            }

            v100 = (v104 + 24);
            v103 += 24;
          }

          while (&v104[1].n128_i8[8] != a2);
        }
      }

      else if (!v102)
      {
        do
        {
          v113 = a1[2].n128_i64[1];
          v114 = a1[1].n128_i64[0];
          a1 = v100;
          if (v113 > v114)
          {
            v148 = *v100;
            v115 = v100;
            do
            {
              *v115 = *(v115 - 24);
              v115[1].n128_u64[0] = v115[-1].n128_u64[1];
              v116 = v115[-2].n128_i64[0];
              v115 = (v115 - 24);
            }

            while (v113 > v116);
            result = v148;
            *v115 = v148;
            v115[1].n128_u64[0] = v113;
          }

          v100 = (a1 + 24);
        }

        while (&a1[1].n128_i8[8] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v13 != a2)
      {

        sub_10028B74C(v13, a2, a2);
      }

      return result;
    }

    v16 = v15 >> 1;
    v17 = (v13 + 24 * (v15 >> 1));
    v18 = a2[-1].n128_i64[1];
    if (v14 < 0xC01)
    {
      v21 = v13[1].n128_i64[0];
      if (v21 > v17[1].n128_u64[0])
      {
        if (v18 > v21)
        {
          v153 = v17[1].n128_u64[0];
          v125 = *v17;
          v22 = *v11;
          v17[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v17 = v22;
          goto LABEL_36;
        }

        v160 = v17[1].n128_u64[0];
        v132 = *v17;
        v40 = *v13;
        v17[1].n128_u64[0] = v13[1].n128_u64[0];
        *v17 = v40;
        v13[1].n128_u64[0] = v160;
        *v13 = v132;
        if (a2[-1].n128_u64[1] > v13[1].n128_u64[0])
        {
          v153 = v13[1].n128_u64[0];
          v125 = *v13;
          v41 = *v11;
          v13[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v13 = v41;
LABEL_36:
          a2[-1].n128_u64[1] = v153;
          *v11 = v125;
        }

LABEL_37:
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_38;
      }

      if (v18 <= v21)
      {
        goto LABEL_37;
      }

      v156 = v13[1].n128_u64[0];
      v128 = *v13;
      v25 = *v11;
      v13[1].n128_u64[0] = a2[-1].n128_u64[1];
      *v13 = v25;
      a2[-1].n128_u64[1] = v156;
      *v11 = v128;
      if (v13[1].n128_u64[0] <= v17[1].n128_u64[0])
      {
        goto LABEL_37;
      }

      v157 = v17[1].n128_u64[0];
      v129 = *v17;
      v26 = *v13;
      v17[1].n128_u64[0] = v13[1].n128_u64[0];
      *v17 = v26;
      v13[1].n128_u64[0] = v157;
      *v13 = v129;
      --a4;
      if (a5)
      {
        goto LABEL_38;
      }

LABEL_60:
      v42 = v13[1].n128_i64[0];
      if (v13[-1].n128_u64[1] > v42)
      {
        goto LABEL_61;
      }

      v123 = *v13;
      if (v42 <= a2[-1].n128_u64[1])
      {
        v82 = &v13[1].n128_u64[1];
        do
        {
          v13 = v82;
          if (v82 >= a2)
          {
            break;
          }

          v83 = *(v82 + 16);
          v82 += 24;
        }

        while (v42 <= v83);
      }

      else
      {
        v80 = v13;
        do
        {
          v13 = (v80 + 24);
          v81 = v80[2].n128_i64[1];
          v80 = (v80 + 24);
        }

        while (v42 <= v81);
      }

      v84 = a2;
      if (v13 < a2)
      {
        v85 = a2;
        do
        {
          v84 = (v85 - 24);
          v86 = v85[-1].n128_i64[1];
          v85 = (v85 - 24);
        }

        while (v42 > v86);
      }

      while (v13 < v84)
      {
        v170 = v13[1].n128_u64[0];
        v142 = *v13;
        v87 = *v84;
        v13[1].n128_u64[0] = v84[1].n128_u64[0];
        *v13 = v87;
        v84[1].n128_u64[0] = v170;
        *v84 = v142;
        do
        {
          v88 = v13[2].n128_i64[1];
          v13 = (v13 + 24);
        }

        while (v42 <= v88);
        do
        {
          v89 = v84[-1].n128_i64[1];
          v84 = (v84 - 24);
        }

        while (v42 > v89);
      }

      v90 = (v13 - 24);
      if (&v13[-2].n128_i8[8] != a1)
      {
        v91 = *v90;
        a1[1].n128_u64[0] = v13[-1].n128_u64[1];
        *a1 = v91;
      }

      a5 = 0;
      result = v123;
      *v90 = v123;
      v13[-1].n128_u64[1] = v42;
    }

    else
    {
      v19 = v17[1].n128_i64[0];
      if (v19 <= v13[1].n128_u64[0])
      {
        if (v18 > v19)
        {
          v154 = v17[1].n128_u64[0];
          v126 = *v17;
          v23 = *v11;
          v17[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v17 = v23;
          a2[-1].n128_u64[1] = v154;
          *v11 = v126;
          if (v17[1].n128_u64[0] > v13[1].n128_u64[0])
          {
            v155 = v13[1].n128_u64[0];
            v127 = *v13;
            v24 = *v17;
            v13[1].n128_u64[0] = v17[1].n128_u64[0];
            *v13 = v24;
            v17[1].n128_u64[0] = v155;
            *v17 = v127;
          }
        }
      }

      else
      {
        if (v18 <= v19)
        {
          v158 = v13[1].n128_u64[0];
          v130 = *v13;
          v27 = *v17;
          v13[1].n128_u64[0] = v17[1].n128_u64[0];
          *v13 = v27;
          v17[1].n128_u64[0] = v158;
          *v17 = v130;
          if (a2[-1].n128_u64[1] <= v17[1].n128_u64[0])
          {
            goto LABEL_28;
          }

          v152 = v17[1].n128_u64[0];
          v124 = *v17;
          v28 = *v11;
          v17[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v17 = v28;
        }

        else
        {
          v152 = v13[1].n128_u64[0];
          v124 = *v13;
          v20 = *v11;
          v13[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v13 = v20;
        }

        a2[-1].n128_u64[1] = v152;
        *v11 = v124;
      }

LABEL_28:
      v29 = v13 + 24 * v16;
      v30 = (v29 - 24);
      v31 = *(v29 - 1);
      v32 = a2[-2].n128_i64[0];
      if (v31 <= v13[2].n128_u64[1])
      {
        if (v32 > v31)
        {
          v159 = v30[1].n128_u64[0];
          v131 = *v30;
          v36 = *v121;
          v30[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v30 = v36;
          a2[-2].n128_u64[0] = v159;
          *v121 = v131;
          if (v30[1].n128_u64[0] > v13[2].n128_u64[1])
          {
            v37 = *(v13 + 24);
            v38 = v13[2].n128_u64[1];
            v39 = v30[1].n128_u64[0];
            *(v13 + 24) = *v30;
            v13[2].n128_u64[1] = v39;
            v30[1].n128_u64[0] = v38;
            *v30 = v37;
          }
        }
      }

      else if (v32 <= v31)
      {
        v43 = *(v13 + 24);
        v44 = v13[2].n128_u64[1];
        v45 = v30[1].n128_u64[0];
        *(v13 + 24) = *v30;
        v13[2].n128_u64[1] = v45;
        v30[1].n128_u64[0] = v44;
        *v30 = v43;
        if (a2[-2].n128_u64[0] > v30[1].n128_u64[0])
        {
          v161 = v30[1].n128_u64[0];
          v133 = *v30;
          v46 = *v121;
          v30[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v30 = v46;
          a2[-2].n128_u64[0] = v161;
          *v121 = v133;
        }
      }

      else
      {
        v33 = *(v13 + 24);
        v34 = v13[2].n128_u64[1];
        v35 = a2[-2].n128_u64[0];
        *(v13 + 24) = *v121;
        v13[2].n128_u64[1] = v35;
        a2[-2].n128_u64[0] = v34;
        *v121 = v33;
      }

      v47 = v13 + 24 * v16;
      v48 = *(v47 + 5);
      v49 = a2[-4].n128_i64[1];
      if (v48 <= v13[4].n128_u64[0])
      {
        if (v49 > v48)
        {
          v162 = *(v47 + 5);
          v134 = *(v47 + 24);
          v53 = *v12;
          *(v47 + 5) = a2[-4].n128_u64[1];
          *(v47 + 24) = v53;
          a2[-4].n128_u64[1] = v162;
          *v12 = v134;
          if (*(v47 + 5) > v13[4].n128_u64[0])
          {
            v54 = v13[3];
            v55 = v13[4].n128_u64[0];
            v56 = *(v47 + 5);
            v13[3] = *(v47 + 24);
            v13[4].n128_u64[0] = v56;
            *(v47 + 5) = v55;
            *(v47 + 24) = v54;
          }
        }
      }

      else
      {
        if (v49 <= v48)
        {
          v57 = v13[3];
          v58 = v13[4].n128_u64[0];
          v59 = *(v47 + 5);
          v13[3] = *(v47 + 24);
          v13[4].n128_u64[0] = v59;
          *(v47 + 5) = v58;
          *(v47 + 24) = v57;
          if (a2[-4].n128_u64[1] <= *(v47 + 5))
          {
            goto LABEL_50;
          }

          v163 = *(v47 + 5);
          v135 = *(v47 + 24);
          v60 = *v12;
          *(v47 + 5) = a2[-4].n128_u64[1];
          *(v47 + 24) = v60;
          v50 = v135;
          v51 = v163;
        }

        else
        {
          v50 = v13[3];
          v51 = v13[4].n128_u64[0];
          v52 = a2[-4].n128_u64[1];
          v13[3] = *v12;
          v13[4].n128_u64[0] = v52;
        }

        a2[-4].n128_u64[1] = v51;
        *v12 = v50;
      }

LABEL_50:
      v61 = v17[1].n128_i64[0];
      v62 = *(v47 + 5);
      if (v61 <= v30[1].n128_u64[0])
      {
        if (v62 > v61)
        {
          v165 = v17[1].n128_u64[0];
          v137 = *v17;
          *v17 = *(v47 + 24);
          v17[1].n128_u64[0] = *(v47 + 5);
          *(v47 + 5) = v165;
          *(v47 + 24) = v137;
          if (v17[1].n128_u64[0] > v30[1].n128_u64[0])
          {
            v166 = v30[1].n128_u64[0];
            v138 = *v30;
            *v30 = *v17;
            v30[1].n128_u64[0] = v17[1].n128_u64[0];
            v17[1].n128_u64[0] = v166;
            *v17 = v138;
          }
        }
      }

      else
      {
        if (v62 <= v61)
        {
          v167 = v30[1].n128_u64[0];
          v139 = *v30;
          *v30 = *v17;
          v30[1].n128_u64[0] = v17[1].n128_u64[0];
          v17[1].n128_u64[0] = v167;
          *v17 = v139;
          if (*(v47 + 5) <= v17[1].n128_u64[0])
          {
            goto LABEL_59;
          }

          v164 = v17[1].n128_u64[0];
          v136 = *v17;
          *v17 = *(v47 + 24);
          v17[1].n128_u64[0] = *(v47 + 5);
        }

        else
        {
          v164 = v30[1].n128_u64[0];
          v136 = *v30;
          *v30 = *(v47 + 24);
          v30[1].n128_u64[0] = *(v47 + 5);
        }

        *(v47 + 5) = v164;
        *(v47 + 24) = v136;
      }

LABEL_59:
      v168 = v13[1].n128_u64[0];
      v140 = *v13;
      v63 = *v17;
      v13[1].n128_u64[0] = v17[1].n128_u64[0];
      *v13 = v63;
      v17[1].n128_u64[0] = v168;
      *v17 = v140;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_38:
      v42 = v13[1].n128_i64[0];
LABEL_61:
      v64 = 0;
      v122 = *v13;
      do
      {
        v65 = v13[2].n128_i64[v64 + 1];
        v64 += 3;
      }

      while (v65 > v42);
      v66 = (v13 + v64 * 8);
      v67 = a2;
      if (v64 == 3)
      {
        v70 = a2;
        while (v66 < v70)
        {
          v68 = (v70 - 24);
          v71 = v70[-1].n128_i64[1];
          v70 = (v70 - 24);
          if (v71 > v42)
          {
            goto LABEL_69;
          }
        }

        v68 = v70;
        v13 = v66;
      }

      else
      {
        do
        {
          v68 = (v67 - 24);
          v69 = v67[-1].n128_i64[1];
          v67 = (v67 - 24);
        }

        while (v69 <= v42);
LABEL_69:
        v13 = v66;
        if (v66 < v68)
        {
          v72 = v68;
          do
          {
            v169 = v13[1].n128_u64[0];
            v141 = *v13;
            v73 = *v72;
            v13[1].n128_u64[0] = *(v72 + 16);
            *v13 = v73;
            *(v72 + 16) = v169;
            *v72 = v141;
            do
            {
              v74 = v13[2].n128_i64[1];
              v13 = (v13 + 24);
            }

            while (v74 > v42);
            do
            {
              v75 = *(v72 - 8);
              v72 -= 24;
            }

            while (v75 <= v42);
          }

          while (v13 < v72);
        }
      }

      v76 = (v13 - 24);
      if (&v13[-2].n128_i8[8] != a1)
      {
        v77 = *v76;
        a1[1].n128_u64[0] = v13[-1].n128_u64[1];
        *a1 = v77;
      }

      result = v122;
      *v76 = v122;
      v13[-1].n128_u64[1] = v42;
      if (v66 < v68)
      {
        goto LABEL_80;
      }

      v78 = sub_10028B284(a1, &v13[-2].n128_i8[8], v122);
      if (sub_10028B284(v13, a2, v79))
      {
        a2 = (v13 - 24);
        if (!v78)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v78)
      {
LABEL_80:
        result = sub_10028A1E8(a1, (v13 - 24), a3, a4, a5 & 1, result);
        a5 = 0;
      }
    }
  }

  if (v15 != 3)
  {
    if (v15 == 4)
    {
      v97 = v13[2].n128_i64[1];
      v98 = v13[4].n128_i64[0];
      if (v97 <= v13[1].n128_u64[0])
      {
        if (v98 > v97)
        {
          v112 = v13[2].n128_u64[1];
          result = *(v13 + 24);
          *(v13 + 24) = v13[3];
          v13[2].n128_u64[1] = v13[4].n128_u64[0];
          v13[3] = result;
          v13[4].n128_u64[0] = v112;
          if (v13[2].n128_u64[1] > v13[1].n128_u64[0])
          {
            v174 = v13[1].n128_u64[0];
            v147 = *v13;
            *v13 = *(v13 + 24);
            v13[1].n128_u64[0] = v13[2].n128_u64[1];
            result = v147;
            *(v13 + 24) = v147;
            v13[2].n128_u64[1] = v174;
          }
        }
      }

      else
      {
        if (v98 > v97)
        {
          v173 = v13[1].n128_u64[0];
          v145 = *v13;
          *v13 = v13[3];
          v13[1].n128_u64[0] = v13[4].n128_u64[0];
          result = v145;
          v13[3] = v145;
          v99 = v173;
          goto LABEL_151;
        }

        v176 = v13[1].n128_u64[0];
        v150 = *v13;
        *v13 = *(v13 + 24);
        v13[1].n128_u64[0] = v13[2].n128_u64[1];
        result = v150;
        *(v13 + 24) = v150;
        v13[2].n128_u64[1] = v176;
        if (v98 > v13[2].n128_u64[1])
        {
          v99 = v13[2].n128_u64[1];
          result = *(v13 + 24);
          *(v13 + 24) = v13[3];
          v13[2].n128_u64[1] = v13[4].n128_u64[0];
          v13[3] = result;
LABEL_151:
          v13[4].n128_u64[0] = v99;
        }
      }

      if (a2[-1].n128_u64[1] <= v13[4].n128_u64[0])
      {
        return result;
      }

      result = v13[3];
      v118 = v13[4].n128_u64[0];
      v119 = a2[-1].n128_u64[1];
      v13[3] = *v11;
      v13[4].n128_u64[0] = v119;
      a2[-1].n128_u64[1] = v118;
      *v11 = result;
      if (v13[4].n128_u64[0] <= v13[2].n128_u64[1])
      {
        return result;
      }

      v120 = v13[2].n128_u64[1];
      result = *(v13 + 24);
      *(v13 + 24) = v13[3];
      v13[2].n128_u64[1] = v13[4].n128_u64[0];
      v13[3] = result;
      v13[4].n128_u64[0] = v120;
LABEL_155:
      if (v13[2].n128_u64[1] > v13[1].n128_u64[0])
      {
        v177 = v13[1].n128_u64[0];
        v151 = *v13;
        *v13 = *(v13 + 24);
        v13[1].n128_u64[0] = v13[2].n128_u64[1];
        result = v151;
        *(v13 + 24) = v151;
        v13[2].n128_u64[1] = v177;
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = sub_10028B03C(v13, (v13 + 24), v13 + 3, (v13 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v93 = v13[2].n128_i64[1];
  v94 = a2[-1].n128_i64[1];
  if (v93 <= v13[1].n128_u64[0])
  {
    if (v94 <= v93)
    {
      return result;
    }

    result = *(v13 + 24);
    v110 = v13[2].n128_u64[1];
    v111 = a2[-1].n128_u64[1];
    *(v13 + 24) = *v11;
    v13[2].n128_u64[1] = v111;
    a2[-1].n128_u64[1] = v110;
    *v11 = result;
    goto LABEL_155;
  }

  if (v94 <= v93)
  {
    v175 = v13[1].n128_u64[0];
    v149 = *v13;
    *v13 = *(v13 + 24);
    v13[1].n128_u64[0] = v13[2].n128_u64[1];
    result = v149;
    *(v13 + 24) = v149;
    v13[2].n128_u64[1] = v175;
    if (a2[-1].n128_u64[1] <= v13[2].n128_u64[1])
    {
      return result;
    }

    result = *(v13 + 24);
    v96 = v13[2].n128_u64[1];
    v117 = a2[-1].n128_u64[1];
    *(v13 + 24) = *v11;
    v13[2].n128_u64[1] = v117;
  }

  else
  {
    v172 = v13[1].n128_u64[0];
    v144 = *v13;
    v95 = *v11;
    v13[1].n128_u64[0] = a2[-1].n128_u64[1];
    *v13 = v95;
    result = v144;
    v96 = v172;
  }

  a2[-1].n128_u64[1] = v96;
  *v11 = result;
  return result;
}

__n128 sub_10028B03C(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2[1].n128_i64[0];
  v7 = a3[1].n128_i64[0];
  if (v6 <= a1[1].n128_u64[0])
  {
    if (v7 > v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2[1].n128_u64[0] > a1[1].n128_u64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3[1].n128_u64[0] > a2[1].n128_u64[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4[1].n128_u64[0] > a3[1].n128_u64[0])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3[1].n128_u64[0] > a2[1].n128_u64[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2[1].n128_u64[0] > a1[1].n128_u64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (a5[1].n128_u64[0] > a4[1].n128_u64[0])
  {
    v23 = a4[1].n128_u64[0];
    result = *a4;
    v24 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[1].n128_u64[0] = v23;
    if (a4[1].n128_u64[0] > a3[1].n128_u64[0])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      if (a3[1].n128_u64[0] > a2[1].n128_u64[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        if (a2[1].n128_u64[0] > a1[1].n128_u64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL sub_10028B284(uint64_t a1, __int128 *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a2 - 24);
      v8 = *(a1 + 40);
      v9 = *(a2 - 1);
      if (v8 > *(a1 + 16))
      {
        if (v9 <= v8)
        {
          v35 = *(a1 + 16);
          v36 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v36;
          *(a1 + 40) = v35;
          if (*(a2 - 1) <= *(a1 + 40))
          {
            return 1;
          }

          v10 = *(a1 + 40);
          v11 = *(a1 + 24);
          v37 = *(a2 - 1);
          *(a1 + 24) = *v7;
          *(a1 + 40) = v37;
        }

        else
        {
          v10 = *(a1 + 16);
          v11 = *a1;
          v12 = *(a2 - 1);
          *a1 = *v7;
          *(a1 + 16) = v12;
        }

        *v7 = v11;
        *(a2 - 1) = v10;
        return 1;
      }

      if (v9 <= v8)
      {
        return 1;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      v26 = *(a2 - 1);
      *(a1 + 24) = *v7;
      *(a1 + 40) = v26;
      *v7 = v25;
      *(a2 - 1) = v24;
LABEL_50:
      if (*(a1 + 40) > *(a1 + 16))
      {
        v55 = *(a1 + 16);
        v56 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v56;
        *(a1 + 40) = v55;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_10028B03C(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v19 = *(a1 + 40);
    v20 = *(a1 + 16);
    v21 = *(a1 + 64);
    if (v19 <= v20)
    {
      if (v21 > v19)
      {
        v31 = *(a1 + 40);
        v32 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v32;
        *(a1 + 64) = v31;
        if (*(a1 + 40) > v20)
        {
          v33 = *(a1 + 16);
          v34 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v34;
          *(a1 + 40) = v33;
        }
      }

      goto LABEL_47;
    }

    if (v21 <= v19)
    {
      v47 = *(a1 + 16);
      v48 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v48;
      *(a1 + 40) = v47;
      if (v21 <= *(a1 + 40))
      {
        goto LABEL_47;
      }

      v22 = *(a1 + 40);
      v23 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v22 = *(a1 + 16);
      v23 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    *(a1 + 48) = v23;
    *(a1 + 64) = v22;
LABEL_47:
    if (*(a2 - 1) <= *(a1 + 64))
    {
      return 1;
    }

    v49 = a2 - 24;
    v50 = *(a1 + 64);
    v51 = *(a1 + 48);
    v52 = *(a2 - 1);
    *(a1 + 48) = *(a2 - 24);
    *(a1 + 64) = v52;
    *v49 = v51;
    *(v49 + 2) = v50;
    if (*(a1 + 64) <= *(a1 + 40))
    {
      return 1;
    }

    v53 = *(a1 + 40);
    v54 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v54;
    *(a1 + 64) = v53;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 1) > *(a1 + 16))
    {
      v4 = *(a1 + 16);
      v5 = *a1;
      v6 = *(a2 - 1);
      *a1 = *(a2 - 24);
      *(a1 + 16) = v6;
      *(a2 - 24) = v5;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 48;
  v14 = *(a1 + 40);
  v15 = *(a1 + 16);
  v16 = *(a1 + 64);
  if (v14 <= v15)
  {
    if (v16 > v14)
    {
      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v28;
      *(a1 + 64) = v27;
      if (*(a1 + 40) > v15)
      {
        v29 = *(a1 + 16);
        v30 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v30;
        *(a1 + 40) = v29;
      }
    }
  }

  else
  {
    if (v16 <= v14)
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (v16 <= *(a1 + 40))
      {
        goto LABEL_33;
      }

      v17 = *(a1 + 40);
      v18 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v17 = *(a1 + 16);
      v18 = *a1;
      *a1 = *v13;
      *(a1 + 16) = *(a1 + 64);
    }

    *v13 = v18;
    *(a1 + 64) = v17;
  }

LABEL_33:
  v40 = a1 + 72;
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    v43 = *(v40 + 16);
    if (v43 > *(v13 + 16))
    {
      break;
    }

LABEL_42:
    v13 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }

  v58 = *v40;
  v44 = v41;
  do
  {
    v45 = a1 + v44;
    *(v45 + 72) = *(a1 + v44 + 48);
    *(v45 + 88) = *(a1 + v44 + 64);
    if (v44 == -48)
    {
      *a1 = v58;
      *(a1 + 16) = v43;
      if (++v42 != 8)
      {
        goto LABEL_42;
      }

      return v40 + 24 == a2;
    }

    v44 -= 24;
  }

  while (v43 > *(v45 + 40));
  v46 = a1 + v44;
  *(v46 + 72) = v58;
  *(v46 + 88) = v43;
  if (++v42 != 8)
  {
    goto LABEL_42;
  }

  return v40 + 24 == a2;
}

char *sub_10028B74C(char *a1, char *a2, char *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (a2 - a1 >= 25 && v3 >= 0x30)
  {
    v46 = (v4 - 2) >> 1;
    v47 = v46;
    do
    {
      if (v46 >= v47)
      {
        v48 = (2 * (v47 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
        v49 = &a1[24 * v48];
        if (2 * v47 + 2 < v4)
        {
          v50 = *(v49 + 2);
          v51 = *(v49 + 5);
          v52 = v50 <= v51;
          v53 = v50 <= v51 ? 0 : 24;
          v49 += v53;
          if (!v52)
          {
            v48 = 2 * v47 + 2;
          }
        }

        v54 = &a1[24 * v47];
        v55 = *(v54 + 2);
        if (*(v49 + 2) <= v55)
        {
          v66 = *v54;
          do
          {
            v56 = v54;
            v54 = v49;
            v57 = *v49;
            *(v56 + 2) = *(v49 + 2);
            *v56 = v57;
            if (v46 < v48)
            {
              break;
            }

            v58 = (2 * v48) | 1;
            v49 = &a1[24 * v58];
            v59 = 2 * v48 + 2;
            if (v59 < v4)
            {
              v60 = *(v49 + 2);
              v61 = *(v49 + 5);
              v62 = v60 <= v61;
              v63 = v60 <= v61 ? 0 : 24;
              v49 += v63;
              if (!v62)
              {
                v58 = v59;
              }
            }

            v48 = v58;
          }

          while (*(v49 + 2) <= v55);
          *v54 = v66;
          *(v54 + 2) = v55;
        }
      }

      v14 = v47-- <= 0;
    }

    while (!v14);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 48)
    {
      i = a2;
      do
      {
        if (*(i + 2) > *(a1 + 2))
        {
          v6 = *(i + 2);
          v7 = *i;
          v8 = *(a1 + 2);
          *i = *a1;
          *(i + 2) = v8;
          *a1 = v7;
          *(a1 + 2) = v6;
        }

        i += 24;
      }

      while (i != a3);
      goto LABEL_34;
    }

    for (i = a2; i != a3; i += 24)
    {
      if (*(i + 2) > *(a1 + 2))
      {
        v9 = *(i + 2);
        v10 = *i;
        v11 = *(a1 + 2);
        *i = *a1;
        *(i + 2) = v11;
        *a1 = v10;
        *(a1 + 2) = v9;
        if (v4 < 3)
        {
          v16 = a1 + 24;
          v17 = 1;
          v18 = *(a1 + 2);
          if (*(a1 + 5) <= v18)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v12 = *(a1 + 5);
          v13 = *(a1 + 8);
          v14 = v12 <= v13;
          if (v12 <= v13)
          {
            v15 = 0;
          }

          else
          {
            v15 = 24;
          }

          v16 = &a1[v15 + 24];
          if (v14)
          {
            v17 = 1;
          }

          else
          {
            v17 = 2;
          }

          v18 = *(a1 + 2);
          if (*(v16 + 2) <= v18)
          {
LABEL_24:
            v64 = *a1;
            v19 = a1;
            do
            {
              v20 = v19;
              v19 = v16;
              v21 = *v16;
              *(v20 + 2) = *(v16 + 2);
              *v20 = v21;
              if (((v4 - 2) >> 1) < v17)
              {
                break;
              }

              v22 = (2 * v17) | 1;
              v16 = &a1[24 * v22];
              v23 = 2 * v17 + 2;
              if (v23 < v4)
              {
                v24 = *(v16 + 2);
                v25 = *(v16 + 5);
                v26 = v24 <= v25;
                v27 = v24 <= v25 ? 0 : 24;
                v16 += v27;
                if (!v26)
                {
                  v22 = v23;
                }
              }

              v17 = v22;
            }

            while (*(v16 + 2) <= v18);
            *v19 = v64;
            *(v19 + 2) = v18;
          }
        }
      }
    }
  }

LABEL_34:
  if (v3 >= 25)
  {
    v28 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    do
    {
      v29 = 0;
      v65 = *a1;
      v67 = *(a1 + 2);
      v30 = a1;
      do
      {
        v36 = &v30[24 * v29];
        v34 = v36 + 24;
        v37 = (2 * v29) | 1;
        v29 = 2 * v29 + 2;
        if (v29 < v28)
        {
          v31 = *(v36 + 5);
          v32 = *(v36 + 8);
          v33 = v36 + 48;
          if (v31 <= v32)
          {
            v29 = v37;
          }

          else
          {
            v34 = v33;
          }
        }

        else
        {
          v29 = v37;
        }

        v35 = *v34;
        *(v30 + 2) = *(v34 + 2);
        *v30 = v35;
        v30 = v34;
      }

      while (v29 <= ((v28 - 2) >> 1));
      a2 -= 24;
      if (v34 == a2)
      {
        *(v34 + 2) = v67;
        *v34 = v65;
      }

      else
      {
        v38 = *a2;
        *(v34 + 2) = *(a2 + 2);
        *v34 = v38;
        *a2 = v65;
        *(a2 + 2) = v67;
        v39 = v34 - a1 + 24;
        if (v39 >= 25)
        {
          v40 = (-2 - 0x5555555555555555 * (v39 >> 3)) >> 1;
          v41 = &a1[24 * v40];
          v42 = *(v34 + 2);
          if (*(v41 + 2) > v42)
          {
            v68 = *v34;
            do
            {
              v43 = v34;
              v34 = v41;
              v44 = *v41;
              *(v43 + 2) = *(v41 + 2);
              *v43 = v44;
              if (!v40)
              {
                break;
              }

              v40 = (v40 - 1) >> 1;
              v41 = &a1[24 * v40];
            }

            while (*(v41 + 2) > v42);
            *v34 = v68;
            *(v34 + 2) = v42;
          }
        }
      }

      v14 = v28-- <= 2;
    }

    while (!v14);
  }

  return i;
}

unint64_t sub_10028BBAC(unint64_t *a1, uint64_t a2)
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

  v6 = 16 * ((a1[1] - *a1) >> 4);
  v7 = (a2 + 8);
  v8 = *(a2 + 8);
  *v6 = *a2;
  *(48 * v2 + 8) = v8;
  v9 = 48 * v2 + 8;
  v10 = *(a2 + 16);
  *(v6 + 16) = v10;
  if (v10)
  {
    *(v8 + 16) = v9;
    *a2 = v7;
    *v7 = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *v6 = v9;
  }

  *(v6 + 24) = *(a2 + 24);
  *(v6 + 32) = *(a2 + 32);
  v11 = v6 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = v6 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = 0;
    do
    {
      v17 = (v14 + v15 * 8);
      *v17 = v12[v15];
      v18 = v12[v15 + 2];
      v19 = &v12[v15 + 1];
      v20 = *v19;
      v17[2] = v18;
      v17[1] = v20;
      v21 = v14 + v15 * 8 + 8;
      if (v18)
      {
        *(v20 + 16) = v21;
        v12[v15] = v19;
        *v19 = 0;
        v12[v15 + 2] = 0;
      }

      else
      {
        *(v14 + v15 * 8) = v21;
      }

      v16 = v14 + v15 * 8;
      *(v16 + 24) = v12[v15 + 3];
      *(v16 + 32) = *&v12[v15 + 4];
      v15 += 6;
    }

    while (&v12[v15] != v13);
    do
    {
      sub_1000275F4(v12, v12[1]);
      v12 += 6;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

uint64_t **sub_10028BD74(uint64_t **a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      if (!*sub_10028BEB4(a1, v3, &v11, &v10, v5 + 4))
      {
        operator new();
      }

      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

void *sub_10028BEB4(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = v18[4];
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < v13[4])
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = v22[4];
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

void sub_10028C064(uint64_t **a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a1[2])
  {
    goto LABEL_18;
  }

  v6 = *a1;
  v8 = a1 + 1;
  v7 = a1[1];
  *a1 = (a1 + 1);
  v7[2] = 0;
  a1[2] = 0;
  a1[1] = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v24 = v10[1];
        if (!v24)
        {
          break;
        }

        do
        {
          v10 = v24;
          v24 = *v24;
        }

        while (v24);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v14 = a2;
    while (1)
    {
      v12 = v10;
      v15 = v14[4];
      v9[4] = v15;
      v16 = *v8;
      v17 = v5 + 1;
      v18 = v5 + 1;
      if (*v8)
      {
        break;
      }

LABEL_23:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v17;
      *v18 = v9;
      v19 = **v5;
      if (v19)
      {
        goto LABEL_24;
      }

LABEL_25:
      sub_10002764C(v5[1], v9);
      v5[2] = (v5[2] + 1);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v22 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v23 = v10[1];
              if (!v23)
              {
                break;
              }

              do
              {
                v10 = v23;
                v23 = *v23;
              }

              while (v23);
            }
          }

          else
          {
            for (v10[1] = 0; v22; v22 = v10[1])
            {
              do
              {
                v10 = v22;
                v22 = *v22;
              }

              while (v22);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v20 = v14[1];
      if (v20)
      {
        do
        {
          a2 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          a2 = v14[2];
          v21 = *a2 == v14;
          v14 = a2;
        }

        while (!v21);
      }

      if (v12)
      {
        v14 = a2;
        v9 = v12;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v17 = v16;
        if (v15 >= v16[4])
        {
          break;
        }

        v16 = *v16;
        v18 = v17;
        if (!*v17)
        {
          goto LABEL_23;
        }
      }

      v16 = v16[1];
    }

    while (v16);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v17;
    v17[1] = v9;
    v19 = **v5;
    if (!v19)
    {
      goto LABEL_25;
    }

LABEL_24:
    *v5 = v19;
    goto LABEL_25;
  }

  v12 = v9;
LABEL_13:
  sub_1000275F4(v5, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    a1 = v5;
    v9 = v10;
LABEL_17:
    sub_1000275F4(a1, v9);
  }

LABEL_18:
  if (a2 != a3)
  {
    operator new();
  }
}

void **sub_10028C398(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 48;
      do
      {
        sub_1000275F4(v5, *(v5 + 8));
        v6 = v5 == v2;
        v5 -= 48;
      }

      while (!v6);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_10028C408(__int128 *result, __n128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = &a2[-3].n128_i8[8];
  v216 = a2 - 5;
  v9 = &a2[-8].n128_i8[8];
  v10 = result;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    result = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v10) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (sub_10028D0C0(a3, &a2[-3].n128_u64[1], v10))
      {
        goto LABEL_78;
      }

      return;
    }

LABEL_10:
    if (v13 <= 959)
    {
      v184 = (v10 + 40);
      v186 = v10 == a2 || v184 == a2;
      if (a5)
      {
        if (!v186)
        {
          v187 = 0;
          v188 = v10;
          do
          {
            v192 = v188;
            v188 = v184;
            if (sub_10028D0C0(a3, v184, v192))
            {
              v193 = *v188;
              v194 = v188[1];
              v220 = *(v188 + 4);
              v218 = v193;
              v219 = v194;
              v195 = v187;
              do
              {
                v196 = v10 + v195;
                v197 = *(v10 + v195 + 16);
                *(v196 + 40) = *(v10 + v195);
                *(v196 + 56) = v197;
                *(v196 + 9) = *(v10 + v195 + 32);
                if (!v195)
                {
                  v189 = v10;
                  goto LABEL_92;
                }

                v195 -= 40;
              }

              while (sub_10028D0C0(a3, &v218, (v10 + v195)));
              v189 = v10 + v195 + 40;
LABEL_92:
              v190 = v218;
              v191 = v219;
              *(v189 + 32) = v220;
              *v189 = v190;
              *(v189 + 16) = v191;
            }

            v184 = (v188 + 40);
            v187 += 40;
          }

          while ((v188 + 40) != a2);
        }
      }

      else if (!v186)
      {
        v207 = v10 - 40;
        do
        {
          v208 = result;
          result = v184;
          if (sub_10028D0C0(a3, v184, v208))
          {
            v209 = *result;
            v210 = result[1];
            v220 = *(result + 4);
            v218 = v209;
            v219 = v210;
            v211 = v207;
            do
            {
              v212 = *(v211 + 56);
              *(v211 + 5) = *(v211 + 40);
              *(v211 + 6) = v212;
              *(v211 + 14) = *(v211 + 9);
              v213 = sub_10028D0C0(a3, &v218, v211);
              v211 -= 40;
            }

            while (v213);
            v214 = v218;
            v215 = v219;
            *(v211 + 14) = v220;
            *(v211 + 5) = v214;
            *(v211 + 6) = v215;
          }

          v184 = (result + 40);
          v207 += 40;
        }

        while ((result + 40) != a2);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_10028E528(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = v10 + 40 * (v14 >> 1);
    if (v13 >= 0x1401)
    {
      v17 = sub_10028D0C0(a3, v16, v10);
      v18 = sub_10028D0C0(a3, &a2[-3].n128_u64[1], v16);
      if (v17)
      {
        if (v18)
        {
          v19 = *result;
          v20 = result[1];
          v220 = *(result + 4);
          v218 = v19;
          v219 = v20;
          v21 = *v8;
          v22 = *(&a2[-2] + 8);
          *(result + 4) = a2[-1].n128_u64[1];
          *result = v21;
          result[1] = v22;
          goto LABEL_28;
        }

        v49 = *result;
        v50 = result[1];
        v220 = *(result + 4);
        v218 = v49;
        v219 = v50;
        v51 = *v16;
        v52 = *(v16 + 1);
        *(result + 4) = *(v16 + 4);
        *result = v51;
        result[1] = v52;
        v53 = v218;
        v54 = v219;
        *(v16 + 4) = v220;
        *v16 = v53;
        *(v16 + 1) = v54;
        if (sub_10028D0C0(a3, &a2[-3].n128_u64[1], v16))
        {
          v55 = *v16;
          v56 = *(v16 + 1);
          v220 = *(v16 + 4);
          v218 = v55;
          v219 = v56;
          v57 = *v8;
          v58 = *(&a2[-2] + 8);
          *(v16 + 4) = a2[-1].n128_u64[1];
          *v16 = v57;
          *(v16 + 1) = v58;
LABEL_28:
          *v8 = v218;
          *(a2 - 24) = v219;
          a2[-1].n128_u64[1] = v220;
        }
      }

      else if (v18)
      {
        v29 = *v16;
        v30 = *(v16 + 1);
        v220 = *(v16 + 4);
        v218 = v29;
        v219 = v30;
        v31 = *v8;
        v32 = *(&a2[-2] + 8);
        *(v16 + 4) = a2[-1].n128_u64[1];
        *v16 = v31;
        *(v16 + 1) = v32;
        *v8 = v218;
        *(a2 - 24) = v219;
        a2[-1].n128_u64[1] = v220;
        if (sub_10028D0C0(a3, v16, result))
        {
          v33 = *result;
          v34 = result[1];
          v220 = *(result + 4);
          v218 = v33;
          v219 = v34;
          v35 = *v16;
          v36 = *(v16 + 1);
          *(result + 4) = *(v16 + 4);
          *result = v35;
          result[1] = v36;
          v37 = v218;
          v38 = v219;
          *(v16 + 4) = v220;
          *v16 = v37;
          *(v16 + 1) = v38;
        }
      }

      v59 = result + 40 * v15 - 40;
      v60 = sub_10028D0C0(a3, v59, result + 5);
      v61 = sub_10028D0C0(a3, v216, v59);
      if (v60)
      {
        if (v61)
        {
          v62 = *(result + 40);
          v63 = *(result + 56);
          v64 = *(result + 9);
          v65 = a2[-3].n128_u64[0];
          v66 = a2[-4];
          *(result + 40) = *v216;
          *(result + 56) = v66;
          *(result + 9) = v65;
          a2[-3].n128_u64[0] = v64;
          *v216 = v62;
          a2[-4] = v63;
        }

        else
        {
          v87 = *(result + 56);
          v218 = *(result + 40);
          v86 = v218;
          v219 = v87;
          v220 = *(result + 9);
          v88 = v220;
          v90 = *v59;
          v89 = *(result + 40 * v15 - 24);
          *(result + 9) = *(result + 5 * v15 - 1);
          *(result + 40) = v90;
          *(result + 56) = v89;
          *(result + 5 * v15 - 1) = v88;
          *v59 = v86;
          *(result + 40 * v15 - 24) = v87;
          if (sub_10028D0C0(a3, v216, v59))
          {
            v91 = *v59;
            v92 = *(result + 40 * v15 - 24);
            v220 = *(result + 5 * v15 - 1);
            v218 = v91;
            v219 = v92;
            v93 = *v216;
            v94 = a2[-4];
            *(result + 5 * v15 - 1) = a2[-3].n128_u64[0];
            *v59 = v93;
            *(result + 40 * v15 - 24) = v94;
            *v216 = v218;
            a2[-4] = v219;
            a2[-3].n128_u64[0] = v220;
          }
        }
      }

      else if (v61)
      {
        v67 = *v59;
        v68 = *(result + 40 * v15 - 24);
        v220 = *(result + 5 * v15 - 1);
        v218 = v67;
        v219 = v68;
        v69 = *v216;
        v70 = a2[-4];
        *(result + 5 * v15 - 1) = a2[-3].n128_u64[0];
        *v59 = v69;
        *(result + 40 * v15 - 24) = v70;
        *v216 = v218;
        a2[-4] = v219;
        a2[-3].n128_u64[0] = v220;
        if (sub_10028D0C0(a3, v59, result + 5))
        {
          v72 = *(result + 56);
          v218 = *(result + 40);
          v71 = v218;
          v219 = v72;
          v220 = *(result + 9);
          v73 = v220;
          v75 = *v59;
          v74 = *(result + 40 * v15 - 24);
          *(result + 9) = *(result + 5 * v15 - 1);
          *(result + 40) = v75;
          *(result + 56) = v74;
          *(result + 5 * v15 - 1) = v73;
          *v59 = v71;
          *(result + 40 * v15 - 24) = v72;
        }
      }

      v95 = result + 40 * v15;
      v96 = sub_10028D0C0(a3, v95 + 5, result + 10);
      v97 = sub_10028D0C0(a3, &a2[-8].n128_u64[1], v95 + 5);
      if (v96)
      {
        if (v97)
        {
          v98 = result[5];
          v99 = result[6];
          v100 = *(result + 14);
          v101 = a2[-6].n128_u64[1];
          v102 = *(&a2[-7] + 8);
          result[5] = *v9;
          result[6] = v102;
          *(result + 14) = v101;
          a2[-6].n128_u64[1] = v100;
          *v9 = v98;
          *(a2 - 104) = v99;
        }

        else
        {
          v113 = result[6];
          v218 = result[5];
          v112 = v218;
          v219 = v113;
          v220 = *(result + 14);
          v114 = v220;
          v115 = *(v95 + 56);
          v116 = *(v95 + 40);
          *(result + 14) = *(v95 + 9);
          result[5] = v116;
          result[6] = v115;
          *(v95 + 56) = v113;
          *(v95 + 9) = v114;
          *(v95 + 40) = v112;
          if (sub_10028D0C0(a3, &a2[-8].n128_u64[1], v95 + 5))
          {
            v117 = *(v95 + 40);
            v118 = *(v95 + 56);
            v220 = *(v95 + 9);
            v218 = v117;
            v219 = v118;
            v119 = *v9;
            v120 = *(&a2[-7] + 8);
            *(v95 + 9) = a2[-6].n128_u64[1];
            *(v95 + 56) = v120;
            *(v95 + 40) = v119;
            *v9 = v218;
            *(a2 - 104) = v219;
            a2[-6].n128_u64[1] = v220;
          }
        }
      }

      else if (v97)
      {
        v103 = *(v95 + 40);
        v104 = *(v95 + 56);
        v220 = *(v95 + 9);
        v218 = v103;
        v219 = v104;
        v105 = *v9;
        v106 = *(&a2[-7] + 8);
        *(v95 + 9) = a2[-6].n128_u64[1];
        *(v95 + 56) = v106;
        *(v95 + 40) = v105;
        *v9 = v218;
        *(a2 - 104) = v219;
        a2[-6].n128_u64[1] = v220;
        if (sub_10028D0C0(a3, v95 + 5, result + 10))
        {
          v108 = result[6];
          v218 = result[5];
          v107 = v218;
          v219 = v108;
          v220 = *(result + 14);
          v109 = v220;
          v110 = *(v95 + 56);
          v111 = *(v95 + 40);
          *(result + 14) = *(v95 + 9);
          result[5] = v111;
          result[6] = v110;
          *(v95 + 56) = v108;
          *(v95 + 9) = v109;
          *(v95 + 40) = v107;
        }
      }

      v121 = sub_10028D0C0(a3, v16, v59);
      v122 = sub_10028D0C0(a3, v95 + 5, v16);
      if (v121)
      {
        if (v122)
        {
          v123 = *v59;
          v124 = *(v59 + 16);
          v220 = *(v59 + 32);
          v218 = v123;
          v219 = v124;
          v125 = *(v95 + 56);
          *v59 = *(v95 + 40);
          *(v59 + 16) = v125;
          *(v59 + 32) = *(v95 + 9);
          goto LABEL_58;
        }

        v136 = *v59;
        v137 = *(v59 + 16);
        v220 = *(v59 + 32);
        v218 = v136;
        v219 = v137;
        v138 = *(v16 + 1);
        *v59 = *v16;
        *(v59 + 16) = v138;
        *(v59 + 32) = *(v16 + 4);
        v139 = v218;
        v140 = v219;
        *(v16 + 4) = v220;
        *v16 = v139;
        *(v16 + 1) = v140;
        if (sub_10028D0C0(a3, v95 + 5, v16))
        {
          v141 = *v16;
          v142 = *(v16 + 1);
          v220 = *(v16 + 4);
          v218 = v141;
          v219 = v142;
          v143 = *(v95 + 56);
          *v16 = *(v95 + 40);
          *(v16 + 1) = v143;
          *(v16 + 4) = *(v95 + 9);
LABEL_58:
          v144 = v220;
          v145 = v218;
          *(v95 + 56) = v219;
          *(v95 + 9) = v144;
          *(v95 + 40) = v145;
        }
      }

      else if (v122)
      {
        v126 = *v16;
        v127 = *(v16 + 1);
        v220 = *(v16 + 4);
        v218 = v126;
        v219 = v127;
        v128 = *(v95 + 56);
        *v16 = *(v95 + 40);
        *(v16 + 1) = v128;
        *(v16 + 4) = *(v95 + 9);
        v129 = v220;
        v130 = v218;
        *(v95 + 56) = v219;
        *(v95 + 9) = v129;
        *(v95 + 40) = v130;
        if (sub_10028D0C0(a3, v16, v59))
        {
          v131 = *v59;
          v132 = *(v59 + 16);
          v220 = *(v59 + 32);
          v218 = v131;
          v219 = v132;
          v133 = *(v16 + 1);
          *v59 = *v16;
          *(v59 + 16) = v133;
          *(v59 + 32) = *(v16 + 4);
          v134 = v218;
          v135 = v219;
          *(v16 + 4) = v220;
          *v16 = v134;
          *(v16 + 1) = v135;
        }
      }

      v146 = *result;
      v147 = result[1];
      v220 = *(result + 4);
      v218 = v146;
      v219 = v147;
      v148 = *v16;
      v149 = *(v16 + 1);
      *(result + 4) = *(v16 + 4);
      *result = v148;
      result[1] = v149;
      v150 = v218;
      v151 = v219;
      *(v16 + 4) = v220;
      *v16 = v150;
      *(v16 + 1) = v151;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v23 = sub_10028D0C0(a3, v10, v16);
    v24 = sub_10028D0C0(a3, &a2[-3].n128_u64[1], result);
    if (v23)
    {
      if (v24)
      {
        v25 = *v16;
        v26 = *(v16 + 1);
        v220 = *(v16 + 4);
        v218 = v25;
        v219 = v26;
        v27 = *v8;
        v28 = *(&a2[-2] + 8);
        *(v16 + 4) = a2[-1].n128_u64[1];
        *v16 = v27;
        *(v16 + 1) = v28;
        goto LABEL_37;
      }

      v76 = *v16;
      v77 = *(v16 + 1);
      v220 = *(v16 + 4);
      v218 = v76;
      v219 = v77;
      v78 = *result;
      v79 = result[1];
      *(v16 + 4) = *(result + 4);
      *v16 = v78;
      *(v16 + 1) = v79;
      v80 = v218;
      v81 = v219;
      *(result + 4) = v220;
      *result = v80;
      result[1] = v81;
      if (sub_10028D0C0(a3, &a2[-3].n128_u64[1], result))
      {
        v82 = *result;
        v83 = result[1];
        v220 = *(result + 4);
        v218 = v82;
        v219 = v83;
        v84 = *v8;
        v85 = *(&a2[-2] + 8);
        *(result + 4) = a2[-1].n128_u64[1];
        *result = v84;
        result[1] = v85;
LABEL_37:
        *v8 = v218;
        *(a2 - 24) = v219;
        a2[-1].n128_u64[1] = v220;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    if (!v24)
    {
      goto LABEL_38;
    }

    v39 = *result;
    v40 = result[1];
    v220 = *(result + 4);
    v218 = v39;
    v219 = v40;
    v41 = *v8;
    v42 = *(&a2[-2] + 8);
    *(result + 4) = a2[-1].n128_u64[1];
    *result = v41;
    result[1] = v42;
    *v8 = v218;
    *(a2 - 24) = v219;
    a2[-1].n128_u64[1] = v220;
    if (!sub_10028D0C0(a3, result, v16))
    {
      goto LABEL_38;
    }

    v43 = *v16;
    v44 = *(v16 + 1);
    v220 = *(v16 + 4);
    v218 = v43;
    v219 = v44;
    v45 = *result;
    v46 = result[1];
    *(v16 + 4) = *(result + 4);
    *v16 = v45;
    *(v16 + 1) = v46;
    v47 = v218;
    v48 = v219;
    *(result + 4) = v220;
    *result = v47;
    result[1] = v48;
    if (a5)
    {
      goto LABEL_61;
    }

LABEL_60:
    if (!sub_10028D0C0(a3, result - 5, result))
    {
      v10 = sub_10028D570(result, a2, a3);
      goto LABEL_66;
    }

LABEL_61:
    v152 = sub_10028D6D0(result, a2, a3);
    if ((v153 & 1) == 0)
    {
      goto LABEL_64;
    }

    v154 = sub_10028D830(result, v152, a3);
    v10 = &v152[2].n128_i8[8];
    if (sub_10028D830(&v152[2].n128_i8[8], a2, a3))
    {
      a4 = -v12;
      a2 = v152;
      if (v154)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v154)
    {
LABEL_64:
      sub_10028C408(result, v152, a3, -v12, a5 & 1);
      v10 = &v152[2].n128_i8[8];
LABEL_66:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      sub_10028D390(v10, (v10 + 40), v10 + 5, &a2[-3].n128_i8[8], a3);
      return;
    }

    if (v14 == 5)
    {
      sub_10028D390(v10, (v10 + 40), v10 + 5, (v10 + 120), a3);
      if (!sub_10028D0C0(a3, &a2[-3].n128_u64[1], v10 + 15))
      {
        return;
      }

      v166 = *(v10 + 120);
      v167 = *(v10 + 136);
      v168 = *(v10 + 19);
      v169 = a2[-1].n128_u64[1];
      v170 = *(&a2[-2] + 8);
      *(v10 + 120) = *v8;
      *(v10 + 136) = v170;
      *(v10 + 19) = v169;
      a2[-1].n128_u64[1] = v168;
      *v8 = v166;
      *(a2 - 24) = v167;
      if (!sub_10028D0C0(a3, v10 + 15, v10 + 10))
      {
        return;
      }

      v171 = *(v10 + 14);
      v173 = v10[5];
      v172 = v10[6];
      v174 = *(v10 + 136);
      v10[5] = *(v10 + 120);
      v10[6] = v174;
      *(v10 + 14) = *(v10 + 19);
      *(v10 + 120) = v173;
      *(v10 + 136) = v172;
      *(v10 + 19) = v171;
      if (!sub_10028D0C0(a3, v10 + 10, v10 + 5))
      {
        return;
      }

      v175 = *(v10 + 9);
      v176 = *(v10 + 56);
      v177 = *(v10 + 40);
      v178 = v10[6];
      *(v10 + 40) = v10[5];
      *(v10 + 56) = v178;
      *(v10 + 9) = *(v10 + 14);
      v10[5] = v177;
      v10[6] = v176;
      *(v10 + 14) = v175;
      goto LABEL_105;
    }

    goto LABEL_10;
  }

  v155 = sub_10028D0C0(a3, v10 + 5, v10);
  v156 = sub_10028D0C0(a3, v8, v10 + 5);
  if (!v155)
  {
    if (!v156)
    {
      return;
    }

    v198 = *(v10 + 40);
    v199 = *(v10 + 56);
    v200 = *(v10 + 9);
    v201 = *(v8 + 4);
    v202 = *(v8 + 1);
    *(v10 + 40) = *v8;
    *(v10 + 56) = v202;
    *(v10 + 9) = v201;
    *(v8 + 4) = v200;
    *v8 = v198;
    *(v8 + 1) = v199;
LABEL_105:
    if (sub_10028D0C0(a3, v10 + 5, v10))
    {
      v203 = *v10;
      v204 = v10[1];
      v220 = *(v10 + 4);
      v218 = v203;
      v219 = v204;
      v205 = *(v10 + 56);
      *v10 = *(v10 + 40);
      v10[1] = v205;
      *(v10 + 4) = *(v10 + 9);
      v206 = v219;
      *(v10 + 40) = v218;
      *(v10 + 56) = v206;
      *(v10 + 9) = v220;
    }

    return;
  }

  if (v156)
  {
LABEL_78:
    v180 = *v10;
    v181 = v10[1];
    v220 = *(v10 + 4);
    v218 = v180;
    v219 = v181;
    v182 = *v8;
    v183 = *(v8 + 1);
    *(v10 + 4) = *(v8 + 4);
    *v10 = v182;
    v10[1] = v183;
    *v8 = v218;
    *(v8 + 1) = v219;
    *(v8 + 4) = v220;
    return;
  }

  v157 = *v10;
  v158 = v10[1];
  v220 = *(v10 + 4);
  v218 = v157;
  v219 = v158;
  v159 = *(v10 + 56);
  *v10 = *(v10 + 40);
  v10[1] = v159;
  *(v10 + 4) = *(v10 + 9);
  v160 = v219;
  *(v10 + 40) = v218;
  *(v10 + 56) = v160;
  *(v10 + 9) = v220;
  if (sub_10028D0C0(a3, v8, v10 + 5))
  {
    v161 = *(v10 + 40);
    v162 = *(v10 + 56);
    v163 = *(v10 + 9);
    v164 = *(v8 + 4);
    v165 = *(v8 + 1);
    *(v10 + 40) = *v8;
    *(v10 + 56) = v165;
    *(v10 + 9) = v164;
    *(v8 + 4) = v163;
    *v8 = v161;
    *(v8 + 1) = v162;
  }
}

BOOL sub_10028D0C0(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[4];
  v4 = a3[4];
  v5 = *(v3 + 8);
  v6 = *(v4 + 8);
  v7 = v5 < v6;
  if (v5 != v6)
  {
    return v7;
  }

  v8 = *(v3 + 32);
  v9 = *(v4 + 32);
  if (v8 != v9 || *(v3 + 24) != *(v4 + 24) || *(v3 + 40) != *(v4 + 40) || *(v3 + 16) != *(v4 + 16))
  {
    v20 = *(v3 + 16);
    v21 = *(v4 + 16);
    v7 = v20 < v21;
    if (v20 == v21)
    {
      v22 = *(v3 + 24);
      v23 = *(v4 + 24);
      v7 = v22 < v23;
      if (v22 == v23)
      {
        v24 = *(v3 + 40);
        v25 = *(v4 + 40);
        v26 = v8 < v9;
        v17 = v24 == v25;
        v27 = v24 < v25;
        if (v17)
        {
          return v26;
        }

        else
        {
          return v27;
        }
      }
    }

    return v7;
  }

  if (vabdd_f64(*(v3 + 64), *(v4 + 64)) >= 50.0)
  {
    return sub_10027EEEC((v3 + 48), (v4 + 48));
  }

  v34 = *(v3 + 48);
  sub_10027F0E8(&v34);
  v33 = *(v4 + 48);
  sub_10027F0E8(&v33);
  if (v34 != v33)
  {
    v3 = a2[4];
    v4 = a3[4];
    return sub_10027EEEC((v3 + 48), (v4 + 48));
  }

  v13 = *(*a1 + 32);
  v14 = *(*a1 + 8);
  v15 = (*(v14 + (((v13 + *a2) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((v13 + *a2) & 0xF));
  v16 = (*(v14 + (((*a3 + v13) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*a3 + v13) & 0xF));
  v17 = v15[4] == 2 && v16[4] == 2;
  if (v17)
  {
    return sub_10028DCF0(a1, a2, a3);
  }

  v18 = v15[10];
  v19 = v18 == 3 && v15[52] == 3;
  v29 = v16[10];
  v30 = v29 == 3 && v16[52] == 3;
  if (v19 && !v30)
  {
    return 1;
  }

  if (!v19 && v30)
  {
    return 0;
  }

  v31 = v18 == 1 && v15[52] == 1;
  v32 = v29 == 1 && v16[52] == 1;
  if (v31 && !v32)
  {
    return 1;
  }

  return *a2 < *a3 && (v31 || !v32);
}

__n128 sub_10028D390(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v10 = sub_10028D0C0(a5, a2, a1);
  v11 = sub_10028D0C0(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = *a1;
      v13 = a1[1];
      v14 = *(a1 + 4);
      v15 = *(a3 + 4);
      v16 = a3[1];
      *a1 = *a3;
      a1[1] = v16;
      *(a1 + 4) = v15;
LABEL_9:
      *(a3 + 4) = v14;
      *a3 = v12;
      a3[1] = v13;
      goto LABEL_10;
    }

    v27 = *a1;
    v28 = a1[1];
    v29 = *(a1 + 4);
    v30 = *(a2 + 4);
    v31 = a2[1];
    *a1 = *a2;
    a1[1] = v31;
    *(a1 + 4) = v30;
    *(a2 + 4) = v29;
    *a2 = v27;
    a2[1] = v28;
    if (sub_10028D0C0(a5, a3, a2))
    {
      v12 = *a2;
      v13 = a2[1];
      v14 = *(a2 + 4);
      v32 = *(a3 + 4);
      v33 = a3[1];
      *a2 = *a3;
      a2[1] = v33;
      *(a2 + 4) = v32;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v17 = *a2;
    v18 = a2[1];
    v19 = *(a2 + 4);
    v20 = *(a3 + 4);
    v21 = a3[1];
    *a2 = *a3;
    a2[1] = v21;
    *(a2 + 4) = v20;
    *(a3 + 4) = v19;
    *a3 = v17;
    a3[1] = v18;
    if (sub_10028D0C0(a5, a2, a1))
    {
      v22 = *a1;
      v23 = a1[1];
      v24 = *(a1 + 4);
      v25 = *(a2 + 4);
      v26 = a2[1];
      *a1 = *a2;
      a1[1] = v26;
      *(a1 + 4) = v25;
      *(a2 + 4) = v24;
      *a2 = v22;
      a2[1] = v23;
    }
  }

LABEL_10:
  if (sub_10028D0C0(a5, a4, a3))
  {
    v35 = *a3;
    v36 = a3[1];
    v37 = *(a3 + 4);
    v38 = *(a4 + 4);
    v39 = a4[1];
    *a3 = *a4;
    a3[1] = v39;
    *(a3 + 4) = v38;
    *(a4 + 4) = v37;
    *a4 = v35;
    a4[1] = v36;
    if (sub_10028D0C0(a5, a3, a2))
    {
      v40 = *a2;
      v41 = a2[1];
      v42 = *(a2 + 4);
      v43 = *(a3 + 4);
      v44 = a3[1];
      *a2 = *a3;
      a2[1] = v44;
      *(a2 + 4) = v43;
      *(a3 + 4) = v42;
      *a3 = v40;
      a3[1] = v41;
      if (sub_10028D0C0(a5, a2, a1))
      {
        result = *a1;
        v45 = a1[1];
        v46 = *(a1 + 4);
        v47 = *(a2 + 4);
        v48 = a2[1];
        *a1 = *a2;
        a1[1] = v48;
        *(a1 + 4) = v47;
        *(a2 + 4) = v46;
        *a2 = result;
        a2[1] = v45;
      }
    }
  }

  return result;
}

__int128 *sub_10028D570(__int128 *a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v22 = *a1;
  v23 = v6;
  v24 = *(a1 + 4);
  if (sub_10028D0C0(a3, &v22, (a2 - 40)))
  {
    v7 = a1;
    do
    {
      v7 = (v7 + 40);
    }

    while (!sub_10028D0C0(a3, &v22, v7));
  }

  else
  {
    v8 = (a1 + 40);
    do
    {
      v7 = v8;
      if (v8 >= v4)
      {
        break;
      }

      v9 = sub_10028D0C0(a3, &v22, v8);
      v8 = (v7 + 40);
    }

    while (!v9);
  }

  if (v7 < v4)
  {
    do
    {
      v4 -= 40;
    }

    while (sub_10028D0C0(a3, &v22, v4));
  }

  while (v7 < v4)
  {
    v10 = *v7;
    v11 = v7[1];
    v27 = *(v7 + 4);
    v25 = v10;
    v26 = v11;
    v12 = *v4;
    v13 = *(v4 + 16);
    *(v7 + 4) = *(v4 + 32);
    *v7 = v12;
    v7[1] = v13;
    v14 = v25;
    v15 = v26;
    *(v4 + 32) = v27;
    *v4 = v14;
    *(v4 + 16) = v15;
    do
    {
      v7 = (v7 + 40);
    }

    while (!sub_10028D0C0(a3, &v22, v7));
    do
    {
      v4 -= 40;
    }

    while (sub_10028D0C0(a3, &v22, v4));
  }

  v16 = (v7 - 40);
  if ((v7 - 40) != a1)
  {
    v17 = *v16;
    v18 = *(v7 - 24);
    *(a1 + 4) = *(v7 - 1);
    *a1 = v17;
    a1[1] = v18;
  }

  v19 = v22;
  v20 = v23;
  *(v7 - 1) = v24;
  *v16 = v19;
  *(v7 - 24) = v20;
  return v7;
}

char *sub_10028D6D0(char *a1, char *a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a1 + 1);
  v22 = *a1;
  v23 = v7;
  v24 = *(a1 + 4);
  do
  {
    v6 += 40;
  }

  while (sub_10028D0C0(a3, &a1[v6], &v22));
  v8 = &a1[v6];
  v9 = &a1[v6 - 40];
  if (v6 == 40)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      a2 -= 40;
    }

    while (!sub_10028D0C0(a3, a2, &v22));
  }

  else
  {
    do
    {
      a2 -= 40;
    }

    while (!sub_10028D0C0(a3, a2, &v22));
  }

  if (v8 < a2)
  {
    v10 = &a1[v6];
    v11 = a2;
    do
    {
      v13 = *(v10 + 1);
      v25 = *v10;
      v12 = v25;
      v26 = v13;
      v27 = *(v10 + 4);
      v14 = v27;
      v16 = *v11;
      v15 = *(v11 + 1);
      *(v10 + 4) = *(v11 + 4);
      *v10 = v16;
      *(v10 + 1) = v15;
      *(v11 + 4) = v14;
      *v11 = v12;
      *(v11 + 1) = v13;
      do
      {
        v10 += 40;
      }

      while (sub_10028D0C0(a3, v10, &v22));
      do
      {
        v11 -= 40;
      }

      while (!sub_10028D0C0(a3, v11, &v22));
    }

    while (v10 < v11);
    v9 = v10 - 40;
  }

  if (v9 != a1)
  {
    v17 = *v9;
    v18 = *(v9 + 1);
    *(a1 + 4) = *(v9 + 4);
    *a1 = v17;
    *(a1 + 1) = v18;
  }

  v19 = v22;
  v20 = v23;
  *(v9 + 4) = v24;
  *v9 = v19;
  *(v9 + 1) = v20;
  return v9;
}

BOOL sub_10028D830(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = (a2 - 40);
        v22 = sub_10028D0C0(a3, a1 + 5, a1);
        v23 = sub_10028D0C0(a3, v7, a1 + 5);
        if (v22)
        {
          if (v23)
          {
LABEL_15:
            v24 = *a1;
            v25 = a1[1];
            v26 = *(a1 + 4);
            v27 = *(v7 + 4);
            v28 = v7[1];
            *a1 = *v7;
            a1[1] = v28;
            *(a1 + 4) = v27;
LABEL_16:
            *(v7 + 4) = v26;
            result = 1;
            *v7 = v24;
            v7[1] = v25;
            return result;
          }

          v57 = *(a1 + 4);
          v59 = *a1;
          v58 = a1[1];
          v60 = *(a1 + 56);
          *a1 = *(a1 + 40);
          a1[1] = v60;
          *(a1 + 4) = *(a1 + 9);
          *(a1 + 40) = v59;
          *(a1 + 56) = v58;
          *(a1 + 9) = v57;
          if (sub_10028D0C0(a3, v7, a1 + 5))
          {
            v24 = *(a1 + 40);
            v25 = *(a1 + 56);
            v26 = *(a1 + 9);
            v61 = *(v7 + 4);
            v62 = v7[1];
            *(a1 + 40) = *v7;
            *(a1 + 56) = v62;
            *(a1 + 9) = v61;
            goto LABEL_16;
          }

          return 1;
        }

        if (!v23)
        {
          return 1;
        }

        v39 = *(a1 + 40);
        v40 = *(a1 + 56);
        v41 = *(a1 + 9);
        v42 = *(v7 + 4);
        v43 = v7[1];
        *(a1 + 40) = *v7;
        *(a1 + 56) = v43;
        *(a1 + 9) = v42;
        *(v7 + 4) = v41;
        *v7 = v39;
        v7[1] = v40;
        break;
      case 4:
        sub_10028D390(a1, (a1 + 40), a1 + 5, (a2 - 40), a3);
        return 1;
      case 5:
        v8 = a2 - 40;
        sub_10028D390(a1, (a1 + 40), a1 + 5, (a1 + 120), a3);
        if (!sub_10028D0C0(a3, v8, a1 + 15))
        {
          return 1;
        }

        v9 = *(a1 + 120);
        v10 = *(a1 + 136);
        v11 = *(a1 + 19);
        v12 = *(v8 + 32);
        v13 = *(v8 + 16);
        *(a1 + 120) = *v8;
        *(a1 + 136) = v13;
        *(a1 + 19) = v12;
        *(v8 + 32) = v11;
        *v8 = v9;
        *(v8 + 16) = v10;
        if (!sub_10028D0C0(a3, a1 + 15, a1 + 10))
        {
          return 1;
        }

        v14 = *(a1 + 14);
        v16 = a1[5];
        v15 = a1[6];
        v17 = *(a1 + 136);
        a1[5] = *(a1 + 120);
        a1[6] = v17;
        *(a1 + 14) = *(a1 + 19);
        *(a1 + 120) = v16;
        *(a1 + 136) = v15;
        *(a1 + 19) = v14;
        if (!sub_10028D0C0(a3, a1 + 10, a1 + 5))
        {
          return 1;
        }

        v18 = *(a1 + 9);
        v19 = *(a1 + 56);
        v20 = *(a1 + 40);
        v21 = a1[6];
        *(a1 + 40) = a1[5];
        *(a1 + 56) = v21;
        *(a1 + 9) = *(a1 + 14);
        a1[5] = v20;
        a1[6] = v19;
        *(a1 + 14) = v18;
        break;
      default:
        goto LABEL_17;
    }

    if (sub_10028D0C0(a3, a1 + 5, a1))
    {
      v44 = *(a1 + 4);
      v46 = *a1;
      v45 = a1[1];
      v47 = *(a1 + 56);
      *a1 = *(a1 + 40);
      a1[1] = v47;
      *(a1 + 4) = *(a1 + 9);
      *(a1 + 40) = v46;
      *(a1 + 56) = v45;
      result = 1;
      *(a1 + 9) = v44;
      return result;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 40);
    if (!sub_10028D0C0(a3, a2 - 5, a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v31 = sub_10028D0C0(a3, a1 + 5, a1);
  v32 = a1 + 5;
  v30 = a1 + 5;
  v33 = sub_10028D0C0(a3, a1 + 10, a1 + 5);
  if (v31)
  {
    if (v33)
    {
      v34 = *(a1 + 4);
      v36 = *a1;
      v35 = a1[1];
      v37 = a1 + 5;
      v38 = a1[6];
      *a1 = *v30;
      a1[1] = v38;
      *(a1 + 4) = *(a1 + 14);
      *v30 = v36;
      a1[6] = v35;
      *(a1 + 14) = v34;
    }

    else
    {
      v63 = *(a1 + 4);
      v65 = *a1;
      v64 = a1[1];
      v66 = *(a1 + 56);
      *a1 = *(a1 + 40);
      a1[1] = v66;
      *(a1 + 4) = *(a1 + 9);
      *(a1 + 40) = v65;
      *(a1 + 56) = v64;
      *(a1 + 9) = v63;
      v67 = sub_10028D0C0(a3, a1 + 10, a1 + 5);
      v37 = a1 + 5;
      if (v67)
      {
        v68 = *(a1 + 9);
        v69 = *(a1 + 56);
        v70 = *(a1 + 40);
        v71 = a1[6];
        *(a1 + 40) = *v32;
        *(a1 + 56) = v71;
        *(a1 + 9) = *(a1 + 14);
        *v32 = v70;
        a1[6] = v69;
        *(a1 + 14) = v68;
      }
    }
  }

  else
  {
    v37 = a1 + 5;
    if (v33)
    {
      v48 = *(a1 + 9);
      v49 = *(a1 + 56);
      v50 = *(a1 + 40);
      v51 = a1[6];
      *(a1 + 40) = *v32;
      *(a1 + 56) = v51;
      *(a1 + 9) = *(a1 + 14);
      *v32 = v50;
      a1[6] = v49;
      *(a1 + 14) = v48;
      v52 = sub_10028D0C0(a3, a1 + 5, a1);
      v37 = a1 + 5;
      if (v52)
      {
        v53 = *(a1 + 4);
        v55 = *a1;
        v54 = a1[1];
        v56 = *(a1 + 56);
        *a1 = *(a1 + 40);
        a1[1] = v56;
        *(a1 + 4) = *(a1 + 9);
        *(a1 + 40) = v55;
        *(a1 + 56) = v54;
        *(a1 + 9) = v53;
      }
    }
  }

  v72 = (a1 + 120);
  if ((a1 + 120) == a2)
  {
    return 1;
  }

  v73 = 0;
  v74 = 0;
  while (1)
  {
    if (sub_10028D0C0(a3, v72, v37))
    {
      v77 = v72[1];
      v81 = *v72;
      v82 = v77;
      v83 = *(v72 + 4);
      v78 = v73;
      do
      {
        v79 = a1 + v78;
        v80 = *(a1 + v78 + 96);
        *(v79 + 120) = *(a1 + v78 + 80);
        *(v79 + 136) = v80;
        *(v79 + 152) = *(a1 + v78 + 112);
        if (v78 == -80)
        {
          v75 = a1;
          goto LABEL_35;
        }

        v78 -= 40;
      }

      while (sub_10028D0C0(a3, &v81, (v79 + 40)));
      v75 = a1 + v78 + 120;
LABEL_35:
      v76 = v82;
      *v75 = v81;
      *(v75 + 16) = v76;
      *(v75 + 32) = v83;
      if (++v74 == 8)
      {
        return (v72 + 40) == a2;
      }
    }

    v37 = v72;
    v73 += 40;
    v72 = (v72 + 40);
    if (v72 == a2)
    {
      return 1;
    }
  }
}

BOOL sub_10028DCF0(uint64_t a1, void *a2, void *a3)
{
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = a2[4];
  v19 = v18[1];
  if (v19 == 1)
  {
    v20 = v18[3];
    v21 = (*v17 + 48 * v18[2]);
    if ((v20 & 0x8000000000000000) == 0)
    {
LABEL_4:
      v21 = (v21[3] + 24 * v20);
    }
  }

  else
  {
    if (v19)
    {
      goto LABEL_9;
    }

    v20 = v18[3];
    v21 = *(a1 + 8);
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }
  }

  v22 = *v21;
  v23 = ((v21[1] - *v21) >> 4) - 1;
  v24 = v18[4];
  v25 = (v22 + 16 * ((v23 & ((v24 % v23) >> 63)) + v24 % v23));
  if (!v19)
  {
    v26 = *(a1 + 8);
    if (v20 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v26 = (*v17 + 48 * v18[2]);
  if ((v20 & 0x8000000000000000) == 0)
  {
LABEL_7:
    v26 = (v26[3] + 24 * v20);
  }

LABEL_8:
  v6 = *v25;
  v5 = v25[1];
  v27 = *v26;
  v28 = ((v26[1] - *v26) >> 4) - 1;
  v29 = (v27 + 16 * ((v28 & (((v24 + 1) % v28) >> 63)) + (v24 + 1) % v28));
  v8 = *v29;
  v10 = v29[1];
LABEL_9:
  v30 = a2[3];
  v31 = *v30;
  if (*v30 == 1)
  {
    v32 = v30[2];
    v33 = (*v17 + 48 * v30[1]);
    if ((v32 & 0x8000000000000000) == 0)
    {
LABEL_12:
      v33 = (v33[3] + 24 * v32);
    }
  }

  else
  {
    if (v31)
    {
      goto LABEL_17;
    }

    v32 = v30[2];
    v33 = *(a1 + 8);
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }
  }

  v34 = *v33;
  v35 = ((v33[1] - *v33) >> 4) - 1;
  v36 = v30[3];
  v37 = (v34 + 16 * ((v35 & ((v36 % v35) >> 63)) + v36 % v35));
  if (!v31)
  {
    v38 = *(a1 + 8);
    if (v32 < 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v38 = (*v17 + 48 * v30[1]);
  if ((v32 & 0x8000000000000000) == 0)
  {
LABEL_15:
    v38 = (v38[3] + 24 * v32);
  }

LABEL_16:
  v13 = *v37;
  v12 = v37[1];
  v39 = *v38;
  v40 = ((v38[1] - *v38) >> 4) - 1;
  v41 = (v39 + 16 * ((v40 & (((v36 + 1) % v40) >> 63)) + (v36 + 1) % v40));
  v3 = *v41;
  v4 = v41[1];
LABEL_17:
  v42 = a3[3];
  v43 = *v42;
  if (*v42 == 1)
  {
    v44 = v42[2];
    v45 = (*v17 + 48 * v42[1]);
    if ((v44 & 0x8000000000000000) == 0)
    {
LABEL_20:
      v45 = (v45[3] + 24 * v44);
    }
  }

  else
  {
    if (v43)
    {
      goto LABEL_25;
    }

    v44 = v42[2];
    v45 = *(a1 + 8);
    if ((v44 & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }
  }

  v46 = *v45;
  v47 = ((v45[1] - *v45) >> 4) - 1;
  v48 = v42[3];
  v49 = (v46 + 16 * ((v47 & ((v48 % v47) >> 63)) + v48 % v47));
  if (!v43)
  {
    if (v44 < 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v16 = (*v17 + 48 * v42[1]);
  if ((v44 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v16 = (v16[3] + 24 * v44);
  }

LABEL_24:
  v11 = v49[1];
  v112 = *v49;
  v50 = *v16;
  v51 = ((v16[1] - *v16) >> 4) - 1;
  v52 = (v50 + 16 * ((v51 & (((v48 + 1) % v51) >> 63)) + (v48 + 1) % v51));
  v7 = *v52;
  v9 = v52[1];
LABEL_25:
  v117 = v6;
  v118 = v5;
  v115 = v8;
  v116 = v10;
  v113 = v3;
  v114 = v4;
  v125[0] = v6 - v3;
  v124[0] = v10 - v4;
  v53 = v5 - v4;
  v123[0] = v5 - v4;
  v54 = v8 - v3;
  v122[0] = v8 - v3;
  v55 = vabdd_f64(v6, v3);
  v56 = vabdd_f64(v10, v4);
  v57 = vabdd_f64(v5, v4);
  v58 = vabdd_f64(v8, v3);
  if (v55 < v56)
  {
    v55 = v56;
  }

  if (v55 < v57)
  {
    v55 = v57;
  }

  if (v55 < v58)
  {
    v55 = v58;
  }

  v59 = 1.0;
  if (v55 >= 1.0)
  {
    v59 = v55;
  }

  v60 = (v10 - v4) * (v6 - v3);
  v121[0] = v60;
  v61 = v53 * v54;
  v62 = v60 - v53 * v54;
  v119 = fabs(v60) + fabs(v53 * v54);
  v120[0] = v53 * v54;
  if (vabdd_f64(v60, v53 * v54) < v119 * 3.33066907e-16 && (v60 <= 0.0 || v61 > 0.0) && (v60 >= 0.0 || v61 < 0.0))
  {
    v110 = v12;
    v111 = v11;
    v108 = v59;
    v109 = v13;
    v62 = sub_10016C58C(&v117, &v115, &v113, v125, v124, v123, v122, v121, v120, &v119);
    v59 = v108;
    v13 = v109;
    v12 = v110;
    v11 = v111;
    if (v62 == 0.0)
    {
      goto LABEL_39;
    }
  }

  else if (v62 == 0.0)
  {
LABEL_39:
    v63 = 0;
    goto LABEL_61;
  }

  if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v64 = fabs(v62);
    if (v62 > 0.0)
    {
      v63 = 1;
    }

    else
    {
      v63 = -1;
    }

    if (v64 <= v59 * 2.22044605e-16)
    {
      goto LABEL_39;
    }
  }

  else if (v62 > 0.0)
  {
    v63 = 1;
  }

  else
  {
    v63 = -1;
  }

LABEL_61:
  v117 = v6;
  v118 = v5;
  v115 = v8;
  v116 = v10;
  v113 = v7;
  v114 = v9;
  v125[0] = v6 - v7;
  v124[0] = v10 - v9;
  v65 = v5 - v9;
  v123[0] = v5 - v9;
  v66 = v8 - v7;
  v122[0] = v8 - v7;
  v67 = vabdd_f64(v6, v7);
  v68 = vabdd_f64(v10, v9);
  v69 = vabdd_f64(v5, v9);
  v70 = vabdd_f64(v8, v7);
  if (v67 < v68)
  {
    v67 = v68;
  }

  if (v67 < v69)
  {
    v67 = v69;
  }

  if (v67 < v70)
  {
    v67 = v70;
  }

  if (v67 >= 1.0)
  {
    v71 = v67;
  }

  else
  {
    v71 = 1.0;
  }

  v72 = (v10 - v9) * (v6 - v7);
  v121[0] = v72;
  v73 = v65 * v66;
  v74 = v72 - v65 * v66;
  v119 = fabs(v72) + fabs(v65 * v66);
  v120[0] = v65 * v66;
  if (vabdd_f64(v72, v65 * v66) < v119 * 3.33066907e-16 && (v72 <= 0.0 || v73 > 0.0) && (v72 >= 0.0 || v73 < 0.0))
  {
    v76 = v11;
    v77 = v12;
    v78 = v13;
    v74 = sub_10016C58C(&v117, &v115, &v113, v125, v124, v123, v122, v121, v120, &v119);
    v13 = v78;
    v12 = v77;
    v11 = v76;
    if (v74 == 0.0)
    {
      goto LABEL_76;
    }
  }

  else if (v74 == 0.0)
  {
LABEL_76:
    v75 = 0;
    goto LABEL_86;
  }

  if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v79 = fabs(v74);
    if (v74 > 0.0)
    {
      v75 = 1;
    }

    else
    {
      v75 = -1;
    }

    if (v79 <= v71 * 2.22044605e-16)
    {
      goto LABEL_76;
    }
  }

  else if (v74 > 0.0)
  {
    v75 = 1;
  }

  else
  {
    v75 = -1;
  }

LABEL_86:
  v80 = v63 < v75;
  if (v63 != v75)
  {
    return v80;
  }

  v117 = v13;
  v118 = v12;
  v115 = v3;
  v116 = v4;
  v113 = v7;
  v114 = v9;
  v125[0] = v13 - v7;
  v124[0] = v4 - v9;
  v81 = v12 - v9;
  v123[0] = v12 - v9;
  v82 = v3 - v7;
  v122[0] = v3 - v7;
  v83 = vabdd_f64(v13, v7);
  v84 = vabdd_f64(v4, v9);
  v85 = vabdd_f64(v12, v9);
  v86 = vabdd_f64(v3, v7);
  if (v83 < v84)
  {
    v83 = v84;
  }

  if (v83 < v85)
  {
    v83 = v85;
  }

  if (v83 < v86)
  {
    v83 = v86;
  }

  if (v83 >= 1.0)
  {
    v87 = v83;
  }

  else
  {
    v87 = 1.0;
  }

  v88 = (v4 - v9) * (v13 - v7);
  v121[0] = v88;
  v89 = v81 * v82;
  v90 = v88 - v81 * v82;
  v119 = fabs(v88) + fabs(v81 * v82);
  v120[0] = v81 * v82;
  if (vabdd_f64(v88, v81 * v82) < v119 * 3.33066907e-16 && (v88 <= 0.0 || v89 > 0.0) && (v88 >= 0.0 || v89 < 0.0))
  {
    v91 = v11;
    v90 = sub_10016C58C(&v117, &v115, &v113, v125, v124, v123, v122, v121, v120, &v119);
    v11 = v91;
  }

  if (v90 == 0.0)
  {
    goto LABEL_103;
  }

  if ((*&v90 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v93 = fabs(v90);
    if (v90 > 0.0)
    {
      v92 = 1;
    }

    else
    {
      v92 = -1;
    }

    if (v93 <= v87 * 2.22044605e-16)
    {
LABEL_103:
      v92 = 0;
    }
  }

  else if (v90 > 0.0)
  {
    v92 = 1;
  }

  else
  {
    v92 = -1;
  }

  v117 = v112;
  v118 = v11;
  v115 = v7;
  v116 = v9;
  v113 = v3;
  v114 = v4;
  v94 = v112 - v3;
  v125[0] = v112 - v3;
  v124[0] = v9 - v4;
  v95 = v11 - v4;
  v123[0] = v11 - v4;
  v96 = v7 - v3;
  v122[0] = v7 - v3;
  v97 = vabdd_f64(v112, v3);
  v98 = vabdd_f64(v9, v4);
  v99 = vabdd_f64(v11, v4);
  v100 = vabdd_f64(v7, v3);
  if (v97 < v98)
  {
    v97 = v98;
  }

  if (v97 < v99)
  {
    v97 = v99;
  }

  if (v97 < v100)
  {
    v97 = v100;
  }

  if (v97 >= 1.0)
  {
    v101 = v97;
  }

  else
  {
    v101 = 1.0;
  }

  v102 = v94 * (v9 - v4);
  v121[0] = v102;
  v103 = v95 * v96;
  v104 = v102 - v95 * v96;
  v119 = fabs(v102) + fabs(v95 * v96);
  v120[0] = v95 * v96;
  if (vabdd_f64(v102, v95 * v96) < v119 * 3.33066907e-16 && (v102 <= 0.0 || v103 > 0.0) && (v102 >= 0.0 || v103 < 0.0))
  {
    v104 = sub_10016C58C(&v117, &v115, &v113, v125, v124, v123, v122, v121, v120, &v119);
  }

  if (v104 == 0.0)
  {
    goto LABEL_128;
  }

  if ((*&v104 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v106 = fabs(v104);
    if (v104 > 0.0)
    {
      v105 = 1;
    }

    else
    {
      v105 = -1;
    }

    if (v106 <= v101 * 2.22044605e-16)
    {
LABEL_128:
      v105 = 0;
    }
  }

  else if (v104 > 0.0)
  {
    v105 = 1;
  }

  else
  {
    v105 = -1;
  }

  v80 = v105 < v92;
  if (v105 == v92)
  {
    return *a2 < *a3;
  }

  return v80;
}

char *sub_10028E528(__n128 *a1, __n128 *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a2 - a1;
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 41)
    {
      v10 = (v8 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 40 * v10);
      do
      {
        sub_10028E7F8(a1, a4, v8, v12);
        v12 = (v12 - 40);
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    v14 = a1;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (sub_10028D0C0(a4, v13, a1))
        {
          v15 = *v13;
          v16 = *(v13 + 1);
          v17 = *(v13 + 4);
          v18 = a1[2].n128_u64[0];
          v19 = a1[1];
          *v13 = *a1;
          *(v13 + 1) = v19;
          *(v13 + 4) = v18;
          a1[2].n128_u64[0] = v17;
          *a1 = v15;
          a1[1] = v16;
          sub_10028E7F8(a1, a4, v8, a1);
        }

        v13 += 40;
      }

      while (v13 != a3);
    }

    if (v7 >= 41)
    {
      v20 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v43 = v14;
      do
      {
        v44 = v6;
        v22 = 0;
        v45 = *v14;
        v46 = v14[1];
        v47 = v14[2].n128_u64[0];
        v23 = v14;
        do
        {
          v26 = v23 + 40 * v22;
          v27 = (v26 + 40);
          v28 = (2 * v22) | 1;
          v29 = 2 * v22 + 2;
          if (v29 < v20)
          {
            v30 = v26 + 80;
            if (sub_10028D0C0(a4, v26 + 5, v26 + 10))
            {
              v27 = v30;
              v28 = v29;
            }
          }

          v24 = *v27;
          v25 = v27[1];
          v23[2].n128_u64[0] = v27[2].n128_u64[0];
          *v23 = v24;
          v23[1] = v25;
          v23 = v27;
          v22 = v28;
        }

        while (v28 <= ((v20 - 2) >> 1));
        v6 = v44 - 40;
        if (v27 == (v44 - 40))
        {
          v27[2].n128_u64[0] = v47;
          *v27 = v45;
          v27[1] = v46;
          v14 = v43;
        }

        else
        {
          v31 = *v6;
          v32 = *(v44 - 24);
          v27[2].n128_u64[0] = *(v44 - 1);
          *v27 = v31;
          v27[1] = v32;
          *v6 = v45;
          *(v44 - 24) = v46;
          *(v44 - 1) = v47;
          v14 = v43;
          v33 = v27 - v43 + 40;
          if (v33 >= 41)
          {
            v34 = (-2 - 0x3333333333333333 * (v33 >> 3)) >> 1;
            v35 = (v43 + 40 * v34);
            if (sub_10028D0C0(a4, v35, v27))
            {
              v36 = *v27;
              v37 = v27[1];
              v50 = v27[2].n128_i64[0];
              v48 = v36;
              v49 = v37;
              do
              {
                v38 = v35;
                v39 = *v35;
                v40 = v35[1];
                v27[2].n128_u64[0] = v35[2].n128_u64[0];
                *v27 = v39;
                v27[1] = v40;
                if (!v34)
                {
                  break;
                }

                v34 = (v34 - 1) >> 1;
                v35 = (v43 + 40 * v34);
                v27 = v38;
              }

              while (sub_10028D0C0(a4, v35, &v48));
              v41 = v49;
              *v38 = v48;
              v38[1] = v41;
              v38[2].n128_u64[0] = v50;
            }
          }
        }
      }

      while (v20-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 sub_10028E7F8(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v26 = v4;
    v27 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x999999999999999ALL * ((a4 - a1) >> 3)) | 1;
      v13 = (a1 + 40 * v12);
      v14 = 0x999999999999999ALL * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && sub_10028D0C0(a2, (a1 + 40 * v12), &v13[2].n128_u64[1]))
      {
        v13 = (v13 + 40);
        v12 = v14;
      }

      if (!sub_10028D0C0(a2, v13, v7))
      {
        v16 = v7[1];
        v23 = *v7;
        v24 = v16;
        v25 = v7[2].n128_u64[0];
        do
        {
          v17 = v13;
          v18 = *v13;
          v19 = v13[1];
          v7[2].n128_u64[0] = v13[2].n128_u64[0];
          *v7 = v18;
          v7[1] = v19;
          if (v9 < v12)
          {
            break;
          }

          v20 = (2 * v12) | 1;
          v13 = (a1 + 40 * v20);
          v21 = 2 * v12 + 2;
          if (v21 < a3 && sub_10028D0C0(a2, (a1 + 40 * v20), &v13[2].n128_u64[1]))
          {
            v13 = (v13 + 40);
            v20 = v21;
          }

          v7 = v17;
          v12 = v20;
        }

        while (!sub_10028D0C0(a2, v13, &v23));
        result = v23;
        v22 = v24;
        v17[2].n128_u64[0] = v25;
        *v17 = result;
        v17[1] = v22;
      }
    }
  }

  return result;
}

uint64_t sub_10028E96C(uint64_t *a1, int a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 4);
  if (a2 == 1)
  {
    if (v3 != v2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = v4 + 1;
      if (v4 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v4;
      }

      v10 = v2 + 44;
      do
      {
        v12 = *(v10 - 28);
        if (v12 > v6)
        {
          v6 = *(v10 - 28);
        }

        if (*v10 == 1 && *(v10 + 12) && *(v10 + 4) == 0)
        {
          v8 = v12 + 1;
        }

        if (v5)
        {
          v11 = 0;
        }

        else
        {
          v11 = v12 == v8;
        }

        if (v11)
        {
          v5 = v7;
        }

        ++v7;
        v10 += 112;
      }

      while (v9 != v7);
      v24 = 0;
      result = 0;
      v25 = v6 + 1;
      do
      {
        v27 = v2 + 112 * v5;
        if (v5 + 1 == v4)
        {
          v5 = 0;
        }

        else
        {
          ++v5;
        }

        v26 = *(v27 + 16);
        if (v26 == v24)
        {
          v26 = v24;
        }

        else
        {
          if (v26 == v25)
          {
            ++result;
            v25 = v6 + 1;
          }

          if (*(v27 + 44) == 1)
          {
            if (v26 < v6)
            {
              v28 = v26 + 1;
            }

            else
            {
              v28 = 0;
            }

            if (*(v27 + 48))
            {
              v29 = 1;
            }

            else
            {
              v29 = *(v27 + 56) == 0;
            }

            if (!v29)
            {
              v25 = v28;
            }
          }
        }

        *(v27 + 24) = result;
        v24 = v26;
        --v9;
      }

      while (v9);
      return result;
    }

    return 0;
  }

  if (v3 == v2)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v4 + 1;
  if (v4 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v4;
  }

  v19 = v2 + 44;
  do
  {
    v21 = *(v19 - 28);
    if (v21 > v15)
    {
      v15 = *(v19 - 28);
    }

    if (*v19 == 1 && *(v19 + 12) > 1uLL && *(v19 + 4) < 2uLL)
    {
      v17 = v21 + 1;
    }

    if (v14)
    {
      v20 = 0;
    }

    else
    {
      v20 = v21 == v17;
    }

    if (v20)
    {
      v14 = v16;
    }

    ++v16;
    v19 += 112;
  }

  while (v18 != v16);
  v30 = 0;
  result = 0;
  v31 = v15 + 1;
  do
  {
    v33 = v2 + 112 * v14;
    if (v14 + 1 == v4)
    {
      v14 = 0;
    }

    else
    {
      ++v14;
    }

    v32 = *(v33 + 16);
    if (v32 == v30)
    {
      v32 = v30;
    }

    else
    {
      if (v32 == v31)
      {
        ++result;
        v31 = v15 + 1;
      }

      if (*(v33 + 44) == 1)
      {
        v34 = v32 < v15 ? v32 + 1 : 0;
        if (*(v33 + 48) <= 1uLL && *(v33 + 56) >= 2uLL)
        {
          v31 = v34;
        }
      }
    }

    *(v33 + 24) = result;
    v30 = v32;
    --v18;
  }

  while (v18);
  return result;
}

double sub_10028EB80(uint64_t a1, double *a2, int *a3, uint64_t a4, int a5, uint64_t *a6, void *a7, int a8)
{
  sub_10028EFC0(a6, a7, a3 + 1, &v57, &v56, &v55);
  v16 = 0;
  v17 = *(a3 + 6);
  v18 = *(a3 + 7);
  if (v17 == v18)
  {
    v19 = &v55;
  }

  else
  {
    v19 = &v56;
  }

  v20 = v19[1];
  v21 = *a2;
  v22 = a2[1];
  v23 = fabs(*a2);
  v24 = fabs(v22);
  v25 = *(&v57 + 1);
  v26 = *&v57;
  v27 = *(a3 + 1);
  v28 = *a7 + 48 * *(a3 + 2);
  v29 = *(a3 + 3);
  v30 = *(a3 + 4);
  v31 = 24 * v29;
  while (1)
  {
    v37 = fabs(v26);
    v38 = fabs(v25);
    if (v37 < v23)
    {
      v37 = v23;
    }

    if (v37 < v38)
    {
      v37 = v38;
    }

    if (v37 < v24)
    {
      v37 = v24;
    }

    if (v37 < 1.0)
    {
      v37 = 1.0;
    }

    v39 = v37 * 1000000000.0;
    if (v26 != v21)
    {
      if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        break;
      }

      v26 = vabdd_f64(v26, v21);
      if (v26 > v39 * 2.22044605e-16)
      {
        break;
      }
    }

    if (v25 == v22)
    {
      v40 = 1;
      if (v16 < -9)
      {
        break;
      }
    }

    else
    {
      if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        break;
      }

      v25 = vabdd_f64(v25, v22);
      v26 = v39 * 2.22044605e-16;
      v40 = v25 <= v39 * 2.22044605e-16;
      if (v16 < -9)
      {
        break;
      }
    }

    if (!v40)
    {
      break;
    }

    if (v27 == 1)
    {
      v32 = v28;
      v33 = v28;
      if ((v29 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    if (!v27)
    {
      v32 = a6;
      v33 = a6;
      if ((v29 & 0x8000000000000000) == 0)
      {
LABEL_6:
        v33 = (v31 + v32[3]);
      }

LABEL_7:
      v34 = *v33;
      v35 = ((v33[1] - *v33) >> 4) - 1;
      v36 = (v34 + 16 * ((v35 & (((v30 - 1 + v16) % v35) >> 63)) + (v30 - 1 + v16) % v35));
      v26 = *v36;
      v25 = v36[1];
    }

    *&v57 = v26;
    *(&v57 + 1) = v25;
    --v16;
  }

  v41 = 0;
  if (v17 == v18)
  {
    v42 = *&v55;
  }

  else
  {
    v42 = *&v56;
  }

  while (2)
  {
    v43 = fabs(v42);
    v44 = fabs(v20);
    if (v43 < v23)
    {
      v43 = v23;
    }

    if (v43 < v44)
    {
      v43 = v44;
    }

    if (v43 < v24)
    {
      v43 = v24;
    }

    if (v43 < 1.0)
    {
      v43 = 1.0;
    }

    v45 = v43 * 1000000000.0;
    if (v42 == v21 || (*&v21 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v42 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && vabdd_f64(v42, v21) <= v45 * 2.22044605e-16)
    {
      if (v20 == v22)
      {
        v46 = 1;
        if (v41 > 9)
        {
          break;
        }
      }

      else
      {
        if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          break;
        }

        v46 = vabdd_f64(v20, v22) <= v45 * 2.22044605e-16;
        if (v41 > 9)
        {
          break;
        }
      }

      if (!v46)
      {
        break;
      }

      if (v27)
      {
        if (v27 != 1)
        {
          ++v41;
          continue;
        }

        v47 = v28;
        v48 = v28;
        if ((v29 & 0x8000000000000000) == 0)
        {
LABEL_59:
          v48 = (v31 + v47[3]);
        }
      }

      else
      {
        v47 = a6;
        v48 = a6;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_59;
        }
      }

      v49 = *v48;
      v50 = ((v48[1] - *v48) >> 4) - 1;
      v51 = (v49 + 16 * ((v50 & (((v30 + 1 + v41) % v50) >> 63)) + (v30 + 1 + v41) % v50));
      v42 = *v51;
      v20 = v51[1];
      ++v41;
      continue;
    }

    break;
  }

  v52 = *a3;
  v58 = v57;
  v59 = xmmword_1003C6FC0;
  v60 = a4;
  v61 = a5;
  memset(v62, 0, sizeof(v62));
  v63 = v52;
  v64 = *(a3 + 2);
  v65 = *(a3 + 6);
  v66 = *(a3 + 5);
  sub_10028F118(a1, &v58);
  if (a8)
  {
    *(a1 + 24) = v57;
    ++*(a1 + 40);
  }

  v53 = *a3;
  *&v58 = v42;
  *(&v58 + 1) = v20;
  v59 = xmmword_1003C6FC0;
  v60 = a4;
  v61 = a5;
  v62[0] = 1;
  *&v62[1] = 0;
  *&v62[3] = 0;
  v63 = v53;
  v64 = *(a3 + 2);
  v65 = *(a3 + 6);
  v66 = *(a3 + 5);
  sub_10028F118(a1, &v58);
  return *&v57;
}