void sub_24BDC7D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  v35 = STACK[0x478];
  if (STACK[0x478])
  {
    STACK[0x480] = v35;
    operator delete(v35);
  }

  v36 = STACK[0x490];
  if (STACK[0x490])
  {
    STACK[0x498] = v36;
    operator delete(v36);
  }

  *(v33 - 208) = &STACK[0x4A8];
  sub_24BC8EE84((v33 - 208));
  sub_24BDCBFAC(&STACK[0x4C0]);
  v37 = a33;
  v38 = STACK[0x538];
  if (STACK[0x538])
  {
    STACK[0x540] = v38;
    operator delete(v38);
    v37 = a33;
  }

  v39 = v37;
  if (STACK[0x558])
  {
    operator delete(STACK[0x558]);
    v37 = v39;
  }

  v40 = STACK[0x5A8];
  if (STACK[0x5A8])
  {
    STACK[0x5B0] = v40;
    operator delete(v40);
    v37 = v39;
  }

  v41 = STACK[0x590];
  if (STACK[0x590])
  {
    STACK[0x598] = v41;
    operator delete(v41);
    v37 = v39;
  }

  v42 = STACK[0x578];
  if (STACK[0x578])
  {
    STACK[0x580] = v42;
    operator delete(v42);
    v37 = v39;
  }

  v43 = STACK[0x5C8];
  if (STACK[0x5C8])
  {
    STACK[0x5D0] = v43;
    operator delete(v43);
    v37 = v39;
  }

  v44 = STACK[0x618];
  if (STACK[0x618])
  {
    STACK[0x620] = v44;
    operator delete(v44);
    v37 = v39;
  }

  v45 = STACK[0x600];
  if (STACK[0x600])
  {
    STACK[0x608] = v45;
    operator delete(v45);
    v37 = v39;
  }

  v46 = STACK[0x5E8];
  if (STACK[0x5E8])
  {
    STACK[0x5F0] = v46;
    operator delete(v46);
    v37 = v39;
  }

  v47 = STACK[0x638];
  if (STACK[0x638])
  {
    STACK[0x640] = v47;
    operator delete(v47);
    v37 = v39;
  }

  if (v37)
  {
    operator delete(v37);
  }

  v48 = STACK[0x688];
  if (STACK[0x688])
  {
    STACK[0x690] = v48;
    operator delete(v48);
  }

  v49 = STACK[0x670];
  if (STACK[0x670])
  {
    STACK[0x678] = v49;
    operator delete(v49);
  }

  v50 = STACK[0x658];
  if (STACK[0x658])
  {
    STACK[0x660] = v50;
    operator delete(v50);
  }

  v51 = STACK[0x6D8];
  if (STACK[0x6D8])
  {
    STACK[0x6E0] = v51;
    operator delete(v51);
  }

  v52 = STACK[0x6C0];
  if (STACK[0x6C0])
  {
    STACK[0x6C8] = v52;
    operator delete(v52);
  }

  v53 = STACK[0x6A8];
  if (STACK[0x6A8])
  {
    STACK[0x6B0] = v53;
    operator delete(v53);
  }

  v54 = STACK[0x6F8];
  if (STACK[0x6F8])
  {
    STACK[0x700] = v54;
    operator delete(v54);
  }

  v55 = STACK[0x728];
  if (STACK[0x728])
  {
    STACK[0x730] = v55;
    operator delete(v55);
  }

  v56 = STACK[0x748];
  if (STACK[0x748])
  {
    STACK[0x750] = v56;
    operator delete(v56);
  }

  v57 = STACK[0x760];
  if (STACK[0x760])
  {
    STACK[0x768] = v57;
    operator delete(v57);
  }

  v58 = STACK[0x778];
  if (STACK[0x778])
  {
    STACK[0x780] = v58;
    operator delete(v58);
  }

  _Unwind_Resume(a1);
}

void *sub_24BDC827C(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    v4 = (v3 - v2) >> 4;
    if (v4 >= 1)
    {
      v5 = result;
      v6 = 0;
      v7 = 0;
      while (((*(*a2 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        ++v7;
        v6 += 16;
        if ((((v3 - v2) >> 4) & 0x7FFFFFFF) == v7)
        {
          return result;
        }
      }

      if (v7 >= v4)
      {
        v8 = v7;
      }

      else
      {
        v8 = v7;
        do
        {
          if (((*(*a2 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            v11 = *(v2 + v6);
            *(v2 + v6) = *(v2 + 16 * v8);
            *(v2 + 16 * v8++) = v11;
            v2 = *result;
            v3 = result[1];
          }

          ++v7;
          v6 += 16;
        }

        while (v7 < ((v3 - v2) >> 4));
      }

      v9 = v3 - (v2 + 16 * v8);
      if (v9)
      {
        v10 = v2 + 16 * v8;
        if (v3 != v10 + v9)
        {
          result = memmove((v2 + 16 * v8), (v10 + v9), 0);
        }

        v5[1] = v10;
      }
    }
  }

  return result;
}

double sub_24BDC839C@<D0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t *a3@<X8>)
{
  a3[1] = 0;
  v6 = *(a1 + 8);
  *a3 = *a1;
  a3[2] = 0;
  a3[3] = 0;
  sub_24BDC9DFC(a3 + 1, v6, *(a1 + 16), (*(a1 + 16) - v6) >> 3);
  a3[4] = 0;
  a3[5] = 0;
  a3[6] = 0;
  sub_24BCC9A1C(a3 + 4, *(a1 + 32), *(a1 + 40), (*(a1 + 40) - *(a1 + 32)) >> 2);
  a3[7] = 0;
  a3[8] = 0;
  a3[9] = 0;
  sub_24BCA39A4(a3 + 7, *(a1 + 56), *(a1 + 64), (*(a1 + 64) - *(a1 + 56)) >> 3);
  v8 = a3[7];
  v9 = a3[8] - v8;
  if (v9)
  {
    v10 = v9 >> 3;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    do
    {
      result = *a2 * *v8;
      *v8++ = result;
      --v10;
    }

    while (v10);
  }

  return result;
}

void sub_24BDC8468(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDC849C(uint64_t a1, void *a2, void *a3, void *a4)
{
  sub_24BD4308C(v57, (*(a1 + 160) - *(a1 + 152)) >> 2);
  sub_24BD4308C(v56, (*(a1 + 160) - *(a1 + 152)) >> 2);
  sub_24BD4308C(v55, (*(a1 + 160) - *(a1 + 152)) >> 2);
  sub_24BDBD74C(a1, v57, v56, v55);
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  sub_24BD43240(&v52, (*(a1 + 160) - *(a1 + 152)) >> 2);
  sub_24BD43240(&v49, (*(a1 + 160) - *(a1 + 152)) >> 2);
  v8 = *(a1 + 160) - *(a1 + 152);
  v9 = v8 >> 2;
  if (v8)
  {
    v10 = (v49 + 8);
    v11 = (v57[0] + 8);
    v12 = (*a3 + 16);
    v13 = (v56[0] + 16);
    v14 = (*a2 + 8);
    v15 = v52 + 1;
    v16 = 1;
    do
    {
      *(v15 - 1) = *v11 * *v14 + *(v11 - 1) * *(v14 - 1) + v11[1] * v14[1];
      *v15 = *(v13 - 1) * *v14 + *(v13 - 2) * *(v14 - 1) + *v13 * v14[1];
      v15 += 2;
      *(v10 - 1) = *v11 * *(v12 - 1) + *(v11 - 1) * *(v12 - 2) + v11[1] * *v12;
      v17 = *(v13 - 1) * *(v12 - 1) + *(v13 - 2) * *(v12 - 2);
      v18 = *v13;
      v13 += 3;
      v19 = v18;
      v20 = *v12;
      v12 += 3;
      v21 = v9 > v16;
      *v10 = v17 + v19 * v20;
      v10 += 2;
      ++v16;
      v11 += 3;
      v14 += 3;
    }

    while (v21);
  }

  sub_24BD3EC5C(a4, v9);
  if (*(a1 + 160) != *(a1 + 152))
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v24 = v52;
      v25 = v49;
      sub_24BD07F90(&v46, 2, 2);
      v26 = &v25[16 * v22];
      v27 = &v24[2 * v22];
      v28 = v47;
      *v47 = *v27;
      v28[1] = *(v27 + 1);
      v28[2] = *v26;
      v28[3] = *(v26 + 1);
      v45 = 0;
      *v43 = 0u;
      v44 = 0u;
      *v41 = 0u;
      v42 = 0u;
      *v39 = 0u;
      v40 = 0u;
      sub_24BD07180(&v46, v39);
      sub_24BDC8880(v39, v43, &v36);
      v29 = __p;
      v30 = *(__p + 1);
      v31 = (v57[0] + 24 * v22);
      v32 = (v56[0] + 24 * v22);
      v33 = *__p * v31[1].f64[0] + v30 * v32[1].f64[0];
      v34 = (*a4 + 24 * v22);
      *v34 = vaddq_f64(vmulq_n_f64(*v31, *__p), vmulq_n_f64(*v32, v30));
      v34[1].f64[0] = v33;
      v38 = v29;
      operator delete(v29);
      if (v43[1])
      {
        *&v44 = v43[1];
        operator delete(v43[1]);
      }

      if (v41[1])
      {
        *&v42 = v41[1];
        operator delete(v41[1]);
      }

      if (v39[1])
      {
        *&v40 = v39[1];
        operator delete(v39[1]);
      }

      if (v47)
      {
        v48 = v47;
        operator delete(v47);
      }

      v22 = v23++;
    }

    while (v22 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v55[0])
  {
    v55[1] = v55[0];
    operator delete(v55[0]);
  }

  if (v56[0])
  {
    v56[1] = v56[0];
    operator delete(v56[0]);
  }

  if (v57[0])
  {
    v57[1] = v57[0];
    operator delete(v57[0]);
  }

  return 1;
}

void sub_24BDC87E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  v33 = *(v31 - 136);
  if (v33)
  {
    *(v31 - 128) = v33;
    operator delete(v33);
  }

  v34 = *(v31 - 112);
  if (v34)
  {
    *(v31 - 104) = v34;
    operator delete(v34);
  }

  v35 = *(v31 - 88);
  if (v35)
  {
    *(v31 - 80) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_24BDC8880@<X0>(int *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_24BD07F90(a3, *a1, a2[1]);
  v6 = *a1;
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = a2[1];
    v10 = *result;
    v11 = *(result + 1);
    do
    {
      if (v9)
      {
        v12 = 0;
        v13 = v11 + 8 * v8;
        v14 = a1[1];
        result = *(a2 + 1);
        v15 = 8 * *a2;
        do
        {
          *(v13 + 8 * v12 * v10) = 0;
          if (v14)
          {
            v16 = (*(a1 + 1) + v7);
            v17 = 0.0;
            v18 = v14;
            v19 = result;
            do
            {
              v20 = *v19++;
              v17 = v17 + *v16 * v20;
              *(v13 + 8 * v12 * v10) = v17;
              v16 += v6;
              --v18;
            }

            while (v18);
          }

          ++v12;
          result = (result + v15);
        }

        while (v12 != v9);
      }

      ++v8;
      v7 += 8;
    }

    while (v8 != v6);
  }

  return result;
}

uint64_t sub_24BDC894C(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_24BC8CAB0((a1 + 8), (a3 * a2));
  return a1;
}

void sub_24BDC8994(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDC89B0(__n128 *result, __n128 *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = result;
  while (1)
  {
    result = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v156 = a2[-1].n128_u32[0];
        v157 = a2[-1].n128_u32[1];
        v158 = a2 - 1;
        v159 = v12->n128_u32[1];
        v160 = v156 < v12->n128_u32[0];
        v161 = v157 == v159;
        v162 = v157 < v159;
        if (!v161)
        {
          v160 = v162;
        }

        if (v160)
        {
          v277 = *v12;
          *v12 = *v158;
          *v158 = v277;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      sub_24BDC985C(v12, v12 + 1, v12 + 2, a2 - 1, a5);
      return;
    }

    if (v13 == 5)
    {
      sub_24BDC985C(v12, v12 + 1, v12 + 2, v12 + 3, a5);
      v138 = a2[-1].n128_u32[0];
      v139 = a2[-1].n128_u32[1];
      v140 = a2 - 1;
      v141 = v12[3].n128_u32[1];
      v142 = v138 < v12[3].n128_u32[0];
      v161 = v139 == v141;
      v143 = v139 < v141;
      if (!v161)
      {
        v142 = v143;
      }

      if (v142)
      {
        v144 = v12[3];
        v12[3] = *v140;
        *v140 = v144;
        v145 = v12[3].n128_u32[1];
        v146 = v12[2].n128_u32[1];
        v161 = v145 == v146;
        v147 = v145 < v146;
        if (v161)
        {
          v147 = v12[3].n128_u32[0] < v12[2].n128_u32[0];
        }

        if (v147)
        {
          v148 = v12[2];
          v12[2] = v12[3];
          v12[3] = v148;
          v149 = v12[2].n128_u32[1];
          v150 = v12[1].n128_u32[1];
          v161 = v149 == v150;
          v151 = v149 < v150;
          if (v161)
          {
            v151 = v12[2].n128_u32[0] < v12[1].n128_u32[0];
          }

          if (v151)
          {
            v152 = v12[1];
            v12[1] = v12[2];
            v12[2] = v152;
            v153 = v12[1].n128_u32[1];
            v154 = v12->n128_u32[1];
            v161 = v153 == v154;
            v155 = v153 < v154;
            if (v161)
            {
              v155 = v12[1].n128_u32[0] < v12->n128_u32[0];
            }

            if (v155)
            {
              v276 = *v12;
              *v12 = v12[1];
              v12[1] = v276;
            }
          }
        }
      }

      return;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v172 = v12 + 1;
      v174 = v12 == a2 || v172 == a2;
      if (a4)
      {
        if (!v174)
        {
          v175 = 0;
          v176 = v12;
          do
          {
            v177 = v172;
            v179 = v176[1].n128_u32[0];
            v178 = v176[1].n128_u32[1];
            v180 = v176->n128_u32[1];
            v161 = v178 == v180;
            v181 = v178 < v180;
            if (v161)
            {
              v181 = v179 < v176->n128_u32[0];
            }

            if (v181)
            {
              v182 = v176[1].n128_u64[1];
              v183 = v175;
              while (1)
              {
                v184 = v12 + v183;
                *(v12 + v183 + 16) = *(v12 + v183);
                if (!v183)
                {
                  break;
                }

                v185 = *(v184 - 3);
                v186 = v179 < *(v184 - 4);
                v161 = v178 == v185;
                v187 = v178 < v185;
                if (!v161)
                {
                  v186 = v187;
                }

                v183 -= 16;
                if (!v186)
                {
                  v188 = &v12[1] + v183;
                  goto LABEL_211;
                }
              }

              v188 = v12;
LABEL_211:
              *v188 = v179;
              *(v188 + 4) = v178;
              *(v188 + 8) = v182;
            }

            v172 = v177 + 1;
            v175 += 16;
            v176 = v177;
          }

          while (&v177[1] != a2);
        }
      }

      else if (!v174)
      {
        do
        {
          v243 = v172;
          v245 = result[1].n128_u32[0];
          v244 = result[1].n128_u32[1];
          v246 = result->n128_u32[1];
          v161 = v244 == v246;
          v247 = v244 < v246;
          if (v161)
          {
            v247 = v245 < result->n128_u32[0];
          }

          if (v247)
          {
            v248 = result[1].n128_u64[1];
            v249 = v243;
            do
            {
              *v249 = v249[-1];
              v251 = v249[-2].n128_u32[0];
              v250 = v249[-2].n128_u32[1];
              --v249;
              v252 = v245 < v251;
              v161 = v244 == v250;
              v253 = v244 < v250;
              if (v161)
              {
                v253 = v252;
              }
            }

            while (v253);
            v249->n128_u32[0] = v245;
            v249->n128_u32[1] = v244;
            v249->n128_u64[1] = v248;
          }

          v172 = v243 + 1;
          result = v243;
        }

        while (&v243[1] != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v189 = (v13 - 2) >> 1;
        v190 = v189;
        do
        {
          v191 = v190;
          if (v189 >= v190)
          {
            v192 = (2 * v190) | 1;
            v193 = &v12[v192];
            if (2 * v191 + 2 >= v13)
            {
              v196 = v193->n128_u32[0];
            }

            else
            {
              v194 = v193[1].n128_u32[1];
              v196 = v193->n128_u32[0];
              v195 = v193->n128_u32[1];
              v161 = v195 == v194;
              v197 = v195 < v194;
              if (v161)
              {
                v197 = v193->n128_u32[0] < v193[1].n128_u32[0];
              }

              if (v197)
              {
                v196 = v193[1].n128_u32[0];
                ++v193;
                v192 = 2 * v191 + 2;
              }
            }

            v198 = &v12[v191];
            v199 = v193->n128_u32[1];
            v201 = v198->n128_u32[0];
            v200 = v198->n128_u32[1];
            v202 = v196 < v198->n128_u32[0];
            v161 = v199 == v200;
            v203 = v199 < v200;
            if (!v161)
            {
              v202 = v203;
            }

            if (!v202)
            {
              v204 = v198->n128_u64[1];
              do
              {
                v205 = v198;
                v198 = v193;
                *v205 = *v193;
                if (v189 < v192)
                {
                  break;
                }

                v206 = (2 * v192) | 1;
                v193 = &v12[v206];
                v192 = 2 * v192 + 2;
                if (v192 >= v13)
                {
                  v211 = v193->n128_u32[0];
                  v192 = v206;
                }

                else
                {
                  v207 = v193[1].n128_u32[1];
                  v208 = v193->n128_u32[1];
                  v161 = v208 == v207;
                  v209 = v208 < v207;
                  if (v161)
                  {
                    v209 = v193->n128_u32[0] < v193[1].n128_u32[0];
                  }

                  v210 = !v209;
                  v211 = v209 ? v193[1].n128_u32[0] : v193->n128_u32[0];
                  if (v210)
                  {
                    v192 = v206;
                  }

                  else
                  {
                    ++v193;
                  }
                }

                v212 = v193->n128_u32[1];
                v213 = v211 < v201;
                v161 = v212 == v200;
                v214 = v212 < v200;
                if (v161)
                {
                  v214 = v213;
                }
              }

              while (!v214);
              v198->n128_u32[0] = v201;
              v198->n128_u32[1] = v200;
              v198->n128_u64[1] = v204;
            }
          }

          v190 = v191 - 1;
        }

        while (v191);
        do
        {
          v215 = 0;
          v279 = *v12;
          v216 = v12;
          do
          {
            v217 = &v216[v215];
            v218 = v217 + 1;
            v219 = (2 * v215) | 1;
            v215 = 2 * v215 + 2;
            if (v215 >= v13)
            {
              v215 = v219;
            }

            else
            {
              v221 = v217[2].n128_u32[0];
              v222 = v217[2].n128_u32[1];
              v220 = v217 + 2;
              v223 = v220[-1].n128_u32[1];
              v224 = v220[-1].n128_u32[0] < v221;
              v161 = v223 == v222;
              v225 = v223 < v222;
              if (!v161)
              {
                v224 = v225;
              }

              if (v224)
              {
                v218 = v220;
              }

              else
              {
                v215 = v219;
              }
            }

            *v216 = *v218;
            v216 = v218;
          }

          while (v215 <= ((v13 - 2) >> 1));
          if (v218 == --a2)
          {
            *v218 = v279;
          }

          else
          {
            *v218 = *a2;
            *a2 = v279;
            v226 = (v218 - v12 + 16) >> 4;
            v227 = v226 < 2;
            v228 = v226 - 2;
            if (!v227)
            {
              v229 = v228 >> 1;
              v230 = &v12[v229];
              v231 = v230->n128_u32[1];
              v233 = v218->n128_u32[0];
              v232 = v218->n128_u32[1];
              v161 = v231 == v232;
              v234 = v231 < v232;
              if (v161)
              {
                v234 = v230->n128_u32[0] < v218->n128_u32[0];
              }

              if (v234)
              {
                v235 = v218->n128_i64[1];
                do
                {
                  v236 = v218;
                  v218 = v230;
                  *v236 = *v230;
                  if (!v229)
                  {
                    break;
                  }

                  v229 = (v229 - 1) >> 1;
                  v230 = &v12[v229];
                  v237 = v230->n128_u32[1];
                  v161 = v237 == v232;
                  v238 = v237 < v232;
                  if (v161)
                  {
                    v238 = v230->n128_u32[0] < v233;
                  }
                }

                while (v238);
                v218->n128_u32[0] = v233;
                v218->n128_u32[1] = v232;
                v218->n128_u64[1] = v235;
              }
            }
          }

          v227 = v13-- <= 2;
        }

        while (!v227);
      }

      return;
    }

    v14 = &v12[v13 >> 1];
    v16 = a2[-1].n128_u32[0];
    v15 = a2[-1].n128_u32[1];
    if (v13 >= 0x81)
    {
      v17 = v14->n128_u32[1];
      v18 = v12->n128_u32[1];
      v161 = v17 == v18;
      v19 = v17 < v18;
      if (v161)
      {
        v19 = v14->n128_u32[0] < v12->n128_u32[0];
      }

      v20 = v16 < v14->n128_u32[0];
      v161 = v15 == v17;
      v21 = v15 < v17;
      if (v161)
      {
        v21 = v20;
      }

      if (v19)
      {
        if (v21)
        {
          v257 = *v12;
          *v12 = *v9;
          goto LABEL_40;
        }

        v263 = *v12;
        *v12 = *v14;
        *v14 = v263;
        v33 = a2[-1].n128_u32[1];
        v34 = v14->n128_u32[1];
        v161 = v33 == v34;
        v35 = v33 < v34;
        if (v161)
        {
          v35 = a2[-1].n128_u32[0] < v14->n128_u32[0];
        }

        if (v35)
        {
          v257 = *v14;
          *v14 = *v9;
LABEL_40:
          *v9 = v257;
        }
      }

      else if (v21)
      {
        v259 = *v14;
        *v14 = *v9;
        *v9 = v259;
        v27 = v14->n128_u32[1];
        v28 = v12->n128_u32[1];
        v161 = v27 == v28;
        v29 = v27 < v28;
        if (v161)
        {
          v29 = v14->n128_u32[0] < v12->n128_u32[0];
        }

        if (v29)
        {
          v260 = *v12;
          *v12 = *v14;
          *v14 = v260;
        }
      }

      v36 = v12 + 1;
      v38 = v14[-1].n128_u32[0];
      v39 = v14[-1].n128_u32[1];
      v37 = v14 - 1;
      v40 = v12[1].n128_u32[1];
      v161 = v39 == v40;
      v41 = v39 < v40;
      if (v161)
      {
        v41 = v38 < v12[1].n128_u32[0];
      }

      v42 = a2[-2].n128_u32[1];
      v43 = a2[-2].n128_u32[0] < v38;
      v161 = v42 == v39;
      v44 = v42 < v39;
      if (v161)
      {
        v44 = v43;
      }

      if (v41)
      {
        if (v44)
        {
          v45 = *v36;
          *v36 = *v10;
          goto LABEL_62;
        }

        v53 = *v36;
        *v36 = *v37;
        *v37 = v53;
        v54 = a2[-2].n128_u32[1];
        v55 = v14[-1].n128_u32[1];
        v161 = v54 == v55;
        v56 = v54 < v55;
        if (v161)
        {
          v56 = a2[-2].n128_u32[0] < v37->n128_u32[0];
        }

        if (v56)
        {
          v266 = *v37;
          *v37 = *v10;
          v45 = v266;
LABEL_62:
          *v10 = v45;
        }
      }

      else if (v44)
      {
        v264 = *v37;
        *v37 = *v10;
        *v10 = v264;
        v46 = v14[-1].n128_u32[1];
        v47 = v12[1].n128_u32[1];
        v161 = v46 == v47;
        v48 = v46 < v47;
        if (v161)
        {
          v48 = v37->n128_u32[0] < v12[1].n128_u32[0];
        }

        if (v48)
        {
          v49 = *v36;
          *v36 = *v37;
          *v37 = v49;
        }
      }

      v57 = v12 + 2;
      v59 = v14[1].n128_u32[0];
      v60 = v14[1].n128_u32[1];
      v58 = v14 + 1;
      v61 = v12[2].n128_u32[1];
      v161 = v60 == v61;
      v62 = v60 < v61;
      if (v161)
      {
        v62 = v59 < v12[2].n128_u32[0];
      }

      v63 = a2[-3].n128_u32[1];
      v64 = a2[-3].n128_u32[0] < v59;
      v161 = v63 == v60;
      v65 = v63 < v60;
      if (v161)
      {
        v65 = v64;
      }

      if (v62)
      {
        if (v65)
        {
          v66 = *v57;
          *v57 = *v11;
          goto LABEL_79;
        }

        v71 = *v57;
        *v57 = *v58;
        *v58 = v71;
        v72 = a2[-3].n128_u32[1];
        v73 = v14[1].n128_u32[1];
        v161 = v72 == v73;
        v74 = v72 < v73;
        if (v161)
        {
          v74 = a2[-3].n128_u32[0] < v58->n128_u32[0];
        }

        if (v74)
        {
          v268 = *v58;
          *v58 = *v11;
          v66 = v268;
LABEL_79:
          *v11 = v66;
        }
      }

      else if (v65)
      {
        v267 = *v58;
        *v58 = *v11;
        *v11 = v267;
        v67 = v14[1].n128_u32[1];
        v68 = v12[2].n128_u32[1];
        v161 = v67 == v68;
        v69 = v67 < v68;
        if (v161)
        {
          v69 = v58->n128_u32[0] < v12[2].n128_u32[0];
        }

        if (v69)
        {
          v70 = *v57;
          *v57 = *v58;
          *v58 = v70;
        }
      }

      v75 = v14->n128_u32[1];
      v76 = v14[-1].n128_u32[1];
      v161 = v75 == v76;
      v77 = v75 < v76;
      if (v161)
      {
        v77 = v14->n128_u32[0] < v37->n128_u32[0];
      }

      v78 = v14[1].n128_u32[1];
      v161 = v78 == v75;
      v79 = v78 < v75;
      if (v161)
      {
        v79 = v58->n128_u32[0] < v14->n128_u32[0];
      }

      if (v77)
      {
        if (v79)
        {
          v269 = *v37;
          *v37 = *v58;
          goto LABEL_96;
        }

        v272 = *v37;
        *v37 = *v14;
        *v14 = v272;
        v83 = v14[1].n128_u32[1];
        v84 = v14->n128_u32[1];
        v161 = v83 == v84;
        v85 = v83 < v84;
        if (v161)
        {
          v85 = v58->n128_u32[0] < v14->n128_u32[0];
        }

        if (v85)
        {
          v269 = *v14;
          *v14 = *v58;
LABEL_96:
          *v58 = v269;
        }
      }

      else if (v79)
      {
        v270 = *v14;
        *v14 = *v58;
        *v58 = v270;
        v80 = v14->n128_u32[1];
        v81 = v14[-1].n128_u32[1];
        v161 = v80 == v81;
        v82 = v80 < v81;
        if (v161)
        {
          v82 = v14->n128_u32[0] < v37->n128_u32[0];
        }

        if (v82)
        {
          v271 = *v37;
          *v37 = *v14;
          *v14 = v271;
        }
      }

      v273 = *v12;
      *v12 = *v14;
      a5.n128_u64[1] = v273.n128_u64[1];
      *v14 = v273;
      goto LABEL_98;
    }

    v22 = v12->n128_u32[1];
    v23 = v14->n128_u32[1];
    v161 = v22 == v23;
    v24 = v22 < v23;
    if (v161)
    {
      v24 = v12->n128_u32[0] < v14->n128_u32[0];
    }

    v25 = v16 < v12->n128_u32[0];
    v161 = v15 == v22;
    v26 = v15 < v22;
    if (v161)
    {
      v26 = v25;
    }

    if (v24)
    {
      if (v26)
      {
        v258 = *v14;
        *v14 = *v9;
LABEL_57:
        a5.n128_u64[1] = v258.n128_u64[1];
        *v9 = v258;
        goto LABEL_98;
      }

      v265 = *v14;
      *v14 = *v12;
      a5.n128_u64[1] = v265.n128_u64[1];
      *v12 = v265;
      v50 = a2[-1].n128_u32[1];
      v51 = v12->n128_u32[1];
      v161 = v50 == v51;
      v52 = v50 < v51;
      if (v161)
      {
        v52 = a2[-1].n128_u32[0] < v12->n128_u32[0];
      }

      if (v52)
      {
        v258 = *v12;
        *v12 = *v9;
        goto LABEL_57;
      }
    }

    else if (v26)
    {
      v261 = *v12;
      *v12 = *v9;
      a5.n128_u64[1] = v261.n128_u64[1];
      *v9 = v261;
      v30 = v12->n128_u32[1];
      v31 = v14->n128_u32[1];
      v161 = v30 == v31;
      v32 = v30 < v31;
      if (v161)
      {
        v32 = v12->n128_u32[0] < v14->n128_u32[0];
      }

      if (v32)
      {
        v262 = *v14;
        *v14 = *v12;
        a5.n128_u64[1] = v262.n128_u64[1];
        *v12 = v262;
      }
    }

LABEL_98:
    --a3;
    v86 = v12->n128_u32[0];
    if (a4)
    {
      v87 = v12->n128_u32[1];
      goto LABEL_103;
    }

    v87 = v12->n128_u32[1];
    v88 = v12[-1].n128_u32[1];
    v161 = v88 == v87;
    v89 = v88 < v87;
    if (v161)
    {
      v89 = v12[-1].n128_u32[0] < v86;
    }

    if (v89)
    {
LABEL_103:
      v90 = 0;
      a5.n128_u64[0] = v12->n128_u64[1];
      do
      {
        v91 = v12[v90 + 1].n128_u32[1];
        v92 = v12[v90 + 1].n128_u32[0] < v86;
        v161 = v91 == v87;
        v93 = v91 < v87;
        if (!v161)
        {
          v92 = v93;
        }

        ++v90;
      }

      while (v92);
      v94 = &v12[v90];
      v95 = a2;
      if (v90 == 1)
      {
        v95 = a2;
        do
        {
          if (v94 >= v95)
          {
            break;
          }

          v100 = v95[-1].n128_u32[0];
          v101 = v95[-1].n128_u32[1];
          --v95;
          v102 = v100 < v86;
          v161 = v101 == v87;
          v103 = v101 < v87;
          if (!v161)
          {
            v102 = v103;
          }
        }

        while (!v102);
      }

      else
      {
        do
        {
          v96 = v95[-1].n128_u32[0];
          v97 = v95[-1].n128_u32[1];
          --v95;
          v98 = v96 < v86;
          v161 = v97 == v87;
          v99 = v97 < v87;
          if (!v161)
          {
            v98 = v99;
          }
        }

        while (!v98);
      }

      v12 = v94;
      if (v94 < v95)
      {
        v104 = v95;
        do
        {
          v274 = *v12;
          *v12 = *v104;
          *v104 = v274;
          do
          {
            v105 = v12[1].n128_u32[0];
            v106 = v12[1].n128_u32[1];
            ++v12;
            v107 = v105 < v86;
            v161 = v106 == v87;
            v108 = v106 < v87;
            if (!v161)
            {
              v107 = v108;
            }
          }

          while (v107);
          do
          {
            v109 = v104[-1].n128_u32[0];
            v110 = v104[-1].n128_u32[1];
            --v104;
            v111 = v109 < v86;
            v161 = v110 == v87;
            v112 = v110 < v87;
            if (!v161)
            {
              v111 = v112;
            }
          }

          while (!v111);
        }

        while (v12 < v104);
      }

      if (&v12[-1] != result)
      {
        *result = v12[-1];
      }

      v12[-1].n128_u32[0] = v86;
      v12[-1].n128_u32[1] = v87;
      v12[-1].n128_u64[1] = a5.n128_u64[0];
      if (v94 < v95)
      {
        goto LABEL_132;
      }

      v113 = sub_24BDC99E0(result, v12 - 1, a5);
      if (sub_24BDC99E0(v12, a2, v114))
      {
        a2 = v12 - 1;
        if (!v113)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v113)
      {
LABEL_132:
        sub_24BDC89B0(result, v12[-1].n128_u64, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v115 = a2[-1].n128_u32[1];
      v161 = v87 == v115;
      v116 = v87 < v115;
      if (v161)
      {
        v116 = v86 < a2[-1].n128_u32[0];
      }

      if (v116)
      {
        do
        {
          v117 = v12[1].n128_u32[0];
          v118 = v12[1].n128_u32[1];
          ++v12;
          v119 = v86 < v117;
          v161 = v87 == v118;
          v120 = v87 < v118;
          if (!v161)
          {
            v119 = v120;
          }
        }

        while (!v119);
      }

      else
      {
        n128_u64 = v12[1].n128_u64;
        do
        {
          v12 = n128_u64;
          if (n128_u64 >= a2)
          {
            break;
          }

          v122 = *(n128_u64 + 4);
          v123 = v86 < v12->n128_u32[0];
          v161 = v87 == v122;
          v124 = v87 < v122;
          if (!v161)
          {
            v123 = v124;
          }

          n128_u64 = v12[1].n128_u64;
        }

        while (!v123);
      }

      v125 = a2;
      if (v12 < a2)
      {
        v125 = a2;
        do
        {
          v126 = v125[-1].n128_u32[0];
          v127 = v125[-1].n128_u32[1];
          --v125;
          v128 = v86 < v126;
          v161 = v87 == v127;
          v129 = v87 < v127;
          if (!v161)
          {
            v128 = v129;
          }
        }

        while (v128);
      }

      a5.n128_u64[0] = result->n128_u64[1];
      while (v12 < v125)
      {
        v275 = *v12;
        *v12 = *v125;
        *v125 = v275;
        do
        {
          v130 = v12[1].n128_u32[0];
          v131 = v12[1].n128_u32[1];
          ++v12;
          v132 = v86 < v130;
          v161 = v87 == v131;
          v133 = v87 < v131;
          if (!v161)
          {
            v132 = v133;
          }
        }

        while (!v132);
        do
        {
          v134 = v125[-1].n128_u32[0];
          v135 = v125[-1].n128_u32[1];
          --v125;
          v136 = v86 < v134;
          v161 = v87 == v135;
          v137 = v87 < v135;
          if (!v161)
          {
            v136 = v137;
          }
        }

        while (v136);
      }

      if (&v12[-1] != result)
      {
        *result = v12[-1];
      }

      a4 = 0;
      v12[-1].n128_u32[0] = v86;
      v12[-1].n128_u32[1] = v87;
      v12[-1].n128_u64[1] = a5.n128_u64[0];
    }
  }

  v163 = v12 + 1;
  v164 = v12[1].n128_u32[0];
  v165 = v12[1].n128_u32[1];
  v166 = v12->n128_u32[1];
  v161 = v165 == v166;
  v167 = v165 < v166;
  if (v161)
  {
    v167 = v164 < v12->n128_u32[0];
  }

  v169 = a2[-1].n128_u32[1];
  v168 = a2 - 1;
  v170 = a2[-1].n128_u32[0] < v164;
  if (v169 != v165)
  {
    v170 = v169 < v165;
  }

  if (v167)
  {
    if (v170)
    {
      v278 = *v12;
      *v12 = *v168;
      v171 = v278;
    }

    else
    {
      v281 = *v12;
      *v12 = *v163;
      *v163 = v281;
      v254 = a2[-1].n128_u32[1];
      v255 = v12[1].n128_u32[1];
      v161 = v254 == v255;
      v256 = v254 < v255;
      if (v161)
      {
        v256 = a2[-1].n128_u32[0] < v12[1].n128_u32[0];
      }

      if (!v256)
      {
        return;
      }

      v171 = *v163;
      *v163 = *v168;
    }

    *v168 = v171;
    return;
  }

  if (v170)
  {
    v239 = *v163;
    *v163 = *v168;
    *v168 = v239;
    v240 = v12[1].n128_u32[1];
    v241 = v12->n128_u32[1];
    v161 = v240 == v241;
    v242 = v240 < v241;
    if (v161)
    {
      v242 = v12[1].n128_u32[0] < v12->n128_u32[0];
    }

    if (v242)
    {
      v280 = *v12;
      *v12 = *v163;
      *v163 = v280;
    }
  }
}

__n128 sub_24BDC985C(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = a2->n128_u32[1];
  v6 = a1->n128_u32[1];
  v7 = v5 == v6;
  v8 = v5 < v6;
  if (v7)
  {
    v8 = a2->n128_u32[0] < a1->n128_u32[0];
  }

  v9 = a3->n128_u32[1];
  v7 = v9 == v5;
  v10 = v9 < v5;
  if (v7)
  {
    v10 = a3->n128_u32[0] < a2->n128_u32[0];
  }

  if (v8)
  {
    if (v10)
    {
      result = *a1;
      *a1 = *a3;
LABEL_17:
      *a3 = result;
      goto LABEL_18;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    v14 = a3->n128_u32[1];
    v15 = a2->n128_u32[1];
    v7 = v14 == v15;
    v16 = v14 < v15;
    if (v7)
    {
      v16 = a3->n128_u32[0] < a2->n128_u32[0];
    }

    if (v16)
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_17;
    }
  }

  else if (v10)
  {
    result = *a2;
    *a2 = *a3;
    *a3 = result;
    v11 = a2->n128_u32[1];
    v12 = a1->n128_u32[1];
    v7 = v11 == v12;
    v13 = v11 < v12;
    if (v7)
    {
      v13 = a2->n128_u32[0] < a1->n128_u32[0];
    }

    if (v13)
    {
      result = *a1;
      *a1 = *a2;
      *a2 = result;
    }
  }

LABEL_18:
  v17 = a4->n128_u32[1];
  v18 = a3->n128_u32[1];
  v7 = v17 == v18;
  v19 = v17 < v18;
  if (v7)
  {
    v19 = a4->n128_u32[0] < a3->n128_u32[0];
  }

  if (v19)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    v20 = a3->n128_u32[1];
    v21 = a2->n128_u32[1];
    v7 = v20 == v21;
    v22 = v20 < v21;
    if (v7)
    {
      v22 = a3->n128_u32[0] < a2->n128_u32[0];
    }

    if (v22)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      v23 = a2->n128_u32[1];
      v24 = a1->n128_u32[1];
      v7 = v23 == v24;
      v25 = v23 < v24;
      if (v7)
      {
        v25 = a2->n128_u32[0] < a1->n128_u32[0];
      }

      if (v25)
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

BOOL sub_24BDC99E0(__n128 *a1, __n128 *a2, __n128 a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v32 = a1 + 1;
        v33 = a1[1].n128_u32[0];
        v34 = a1[1].n128_u32[1];
        v35 = a1->n128_u32[1];
        v10 = v34 == v35;
        v36 = v34 < v35;
        if (v10)
        {
          v36 = v33 < a1->n128_u32[0];
        }

        v38 = a2[-1].n128_u32[1];
        v37 = a2 - 1;
        v39 = a2[-1].n128_u32[0] < v33;
        if (v38 != v34)
        {
          v39 = v38 < v34;
        }

        if (!v36)
        {
          if (v39)
          {
            v53 = *v32;
            *v32 = *v37;
            *v37 = v53;
            v54 = a1[1].n128_u32[1];
            v55 = a1->n128_u32[1];
            v10 = v54 == v55;
            v56 = v54 < v55;
            if (v10)
            {
              v56 = a1[1].n128_u32[0] < a1->n128_u32[0];
            }

            if (v56)
            {
              v57 = *a1;
              *a1 = *v32;
              *v32 = v57;
            }
          }

          return 1;
        }

        if (v39)
        {
          v40 = *a1;
          *a1 = *v37;
        }

        else
        {
          v63 = *a1;
          *a1 = *v32;
          *v32 = v63;
          v64 = a2[-1].n128_u32[1];
          v65 = a1[1].n128_u32[1];
          v10 = v64 == v65;
          v66 = v64 < v65;
          if (v10)
          {
            v66 = a2[-1].n128_u32[0] < a1[1].n128_u32[0];
          }

          if (!v66)
          {
            return 1;
          }

          v40 = *v32;
          *v32 = *v37;
        }

        *v37 = v40;
        break;
      case 4:
        sub_24BDC985C(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        break;
      case 5:
        sub_24BDC985C(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v13 = a2[-1].n128_u32[0];
        v14 = a2[-1].n128_u32[1];
        v15 = a2 - 1;
        v16 = a1[3].n128_u32[1];
        v17 = v13 < a1[3].n128_u32[0];
        v10 = v14 == v16;
        v18 = v14 < v16;
        if (!v10)
        {
          v17 = v18;
        }

        if (v17)
        {
          v19 = a1[3];
          a1[3] = *v15;
          *v15 = v19;
          v20 = a1[3].n128_u32[1];
          v21 = a1[2].n128_u32[1];
          v10 = v20 == v21;
          v22 = v20 < v21;
          if (v10)
          {
            v22 = a1[3].n128_u32[0] < a1[2].n128_u32[0];
          }

          if (v22)
          {
            v23 = a1[2];
            a1[2] = a1[3];
            a1[3] = v23;
            v24 = a1[2].n128_u32[1];
            v25 = a1[1].n128_u32[1];
            v10 = v24 == v25;
            v26 = v24 < v25;
            if (v10)
            {
              v26 = a1[2].n128_u32[0] < a1[1].n128_u32[0];
            }

            if (v26)
            {
              v27 = a1[1];
              a1[1] = a1[2];
              a1[2] = v27;
              v28 = a1[1].n128_u32[1];
              v29 = a1->n128_u32[1];
              v10 = v28 == v29;
              v30 = v28 < v29;
              if (v10)
              {
                v30 = a1[1].n128_u32[0] < a1->n128_u32[0];
              }

              if (v30)
              {
                v31 = *a1;
                *a1 = a1[1];
                a1[1] = v31;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_31;
    }

    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v6 = a2[-1].n128_u32[1];
    v7 = a2 - 1;
    v8 = a1->n128_u32[1];
    v9 = a2[-1].n128_u32[0] < a1->n128_u32[0];
    v10 = v6 == v8;
    v11 = v6 < v8;
    if (!v10)
    {
      v9 = v11;
    }

    if (v9)
    {
      v12 = *a1;
      *a1 = *v7;
      *v7 = v12;
    }

    return 1;
  }

LABEL_31:
  v41 = a1 + 2;
  v42 = a1[2].n128_u32[0];
  v43 = a1 + 1;
  v44 = a1[1].n128_u32[0];
  v45 = a1[1].n128_u32[1];
  v47 = a1->n128_u32[0];
  v46 = a1->n128_u32[1];
  v48 = __PAIR64__(v45, v44) < a1->n128_u64[0];
  v49 = a1[2].n128_u32[1];
  v50 = v42 < v44;
  v10 = v49 == v45;
  v51 = v49 < v45;
  if (!v10)
  {
    v50 = v51;
  }

  if (v48)
  {
    if (v50)
    {
      v52 = *a1;
      *a1 = *v41;
LABEL_56:
      *v41 = v52;
      goto LABEL_57;
    }

    v67 = *a1;
    *a1 = *v43;
    *v43 = v67;
    v68 = a1[1].n128_u32[1];
    v69 = v42 < a1[1].n128_u32[0];
    v10 = v49 == v68;
    v70 = v49 < v68;
    if (!v10)
    {
      v69 = v70;
    }

    if (v69)
    {
      v52 = *v43;
      *v43 = *v41;
      goto LABEL_56;
    }
  }

  else if (v50)
  {
    v58 = *v43;
    *v43 = *v41;
    *v41 = v58;
    v59 = a1[1].n128_u32[1];
    v60 = a1[1].n128_u32[0] < v47;
    v10 = v59 == v46;
    v61 = v59 < v46;
    if (v10)
    {
      v61 = v60;
    }

    if (v61)
    {
      v62 = *a1;
      *a1 = *v43;
      *v43 = v62;
    }
  }

LABEL_57:
  v71 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v72 = 0;
  v73 = 0;
  while (1)
  {
    v75 = v71->n128_u32[0];
    v74 = v71->n128_u32[1];
    v76 = v41->n128_u32[1];
    v77 = v71->n128_u32[0] < v41->n128_u32[0];
    v10 = v74 == v76;
    v78 = v74 < v76;
    if (!v10)
    {
      v77 = v78;
    }

    if (v77)
    {
      v79 = v71->n128_u64[1];
      v80 = v72;
      while (1)
      {
        v81 = a1 + v80;
        *(a1 + v80 + 48) = *(a1 + v80 + 32);
        if (v80 == -32)
        {
          break;
        }

        v82 = *(v81 + 5);
        v83 = v75 < *(v81 + 4);
        v10 = v74 == v82;
        v84 = v74 < v82;
        if (!v10)
        {
          v83 = v84;
        }

        v80 -= 16;
        if (!v83)
        {
          v85 = (a1 + v80 + 48);
          goto LABEL_69;
        }
      }

      v85 = a1;
LABEL_69:
      v85->n128_u32[0] = v75;
      v85->n128_u32[1] = v74;
      v85->n128_u64[1] = v79;
      if (++v73 == 8)
      {
        return &v71[1] == a2;
      }
    }

    v41 = v71;
    v72 += 16;
    if (++v71 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_24BDC9DFC(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC91F24(result, a4);
  }

  return result;
}

void sub_24BDC9E5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_24BDC9EF4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F96420;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_24BDCA040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x24C2548B0](v3, 0x1020C4027258A9BLL);
  sub_24BD4C0A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDCA098(const void **a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  sub_24BDB4668((v5 + 1), *(v5 + 10));
  sub_24BDCA108(&v5);
  return 0;
}

void sub_24BDCA0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BDCA108(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_24BDCA108(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_24BDB8334((v2 + 1));
    v3 = sub_24BD4C0A8(v2);
    MEMORY[0x24C2548B0](v3, 0x1020C4027258A9BLL);
  }

  return a1;
}

uint64_t sub_24BDCA15C(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4)
{
  v6 = *a2;
  *a2 = 0;
  *a1 = v6;
  sub_24BDB4540(a1 + 8, a3);
  *(a1 + 40) = *a4;
  return a1;
}

__n128 sub_24BDCA238(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F96468;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

double sub_24BDCA278(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  result = 1.0;
  *v77 = xmmword_24BFED2C0;
  *&v77[16] = *algn_24BFED2D0;
  v78 = xmmword_24BFED2E0;
  v79 = unk_24BFED2F0;
  v80 = 1.0;
  *v73 = xmmword_24BFED2C0;
  *&v73[16] = *algn_24BFED2D0;
  v74 = xmmword_24BFED2E0;
  v75 = unk_24BFED2F0;
  v76 = 1.0;
  if (v3 < v4)
  {
    do
    {
      v7 = 0;
      v8 = *(**(a1 + 16) + 24 * v3);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12 = *(a1 + 48);
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = 8 * v13;
      do
      {
        v16 = *(v14 + 8 * v9);
        v17 = &v77[v7];
        v18 = *(v14 + 8 * v11);
        *v17 = *(v14 + 8 * v10) - v16;
        v17[3] = v18 - v16;
        v7 += 8;
        v14 += v15;
      }

      while (v7 != 24);
      v19 = 0;
      *&v20.f64[0] = vdupq_laneq_s64(*&v77[8], 1).u64[0];
      v20.f64[1] = *v77;
      *&v21.f64[0] = vdupq_laneq_s64(v78, 1).u64[0];
      v21.f64[1] = *&v77[24];
      v79 = vmlaq_f64(vmulq_f64(v78, vnegq_f64(v20)), v21, *&v77[8]);
      v80 = *v77 * *&v78 - *&v77[8] * *&v77[24];
      v22 = *(a1 + 40);
      v23 = *v22;
      v24 = *(v22 + 1);
      v25 = 8 * v23;
      do
      {
        v26 = *(v24 + 8 * v9);
        v27 = &v73[v19];
        v28 = *(v24 + 8 * v11);
        *v27 = *(v24 + 8 * v10) - v26;
        v27[3] = v28 - v26;
        v19 += 8;
        v24 += v25;
      }

      while (v19 != 24);
      *&v29.f64[0] = vdupq_laneq_s64(*&v73[8], 1).u64[0];
      v29.f64[1] = *v73;
      *&v30.f64[0] = vdupq_laneq_s64(v74, 1).u64[0];
      v30.f64[1] = *&v73[24];
      v75 = vmlaq_f64(vmulq_f64(v74, vnegq_f64(v29)), v30, *&v73[8]);
      v76 = *v73 * *&v74 - *&v73[8] * *&v73[24];
      v68 = v78;
      v69 = v79;
      v70 = v80;
      v66 = *v77;
      v67 = *&v77[16];
      sub_24BDBD540(&v66);
      v31 = 0;
      v63 = v68;
      v64 = v69;
      v65 = v70;
      v61 = v66;
      v62 = v67;
      v56 = xmmword_24BFED2C0;
      v57 = *algn_24BFED2D0;
      v58 = xmmword_24BFED2E0;
      v59 = unk_24BFED2F0;
      v32 = v73;
      v60 = 0x3FF0000000000000;
      do
      {
        v33 = 0;
        v34 = &v61;
        do
        {
          v35 = 0;
          v36 = 0.0;
          v37 = v32;
          do
          {
            v38 = *v37;
            v37 += 3;
            v36 = v36 + v38 * *(v34 + v35);
            v35 += 8;
          }

          while (v35 != 24);
          *(&v56 + 3 * v33++ + v31) = v36;
          v34 = (v34 + 24);
        }

        while (v33 != 3);
        ++v31;
        ++v32;
      }

      while (v31 != 3);
      v39 = 0;
      v72 = v60;
      v40 = **(a1 + 24) + 24 * v3;
      v41 = **(a1 + 32) + 24 * v3;
      v71[2] = v58;
      v71[3] = v59;
      v71[0] = v56;
      v71[1] = v57;
      v66 = *v40;
      *&v67 = *(v40 + 16);
      v61 = *v41;
      *&v62 = *(v41 + 16);
      v56 = 0uLL;
      *&v57 = 0;
      v42 = v71;
      do
      {
        v43 = 0;
        v44 = 0.0;
        v45 = v42;
        do
        {
          v46 = *v45;
          v45 += 3;
          v44 = v44 + v46 * *(&v66 + v43);
          v43 += 8;
        }

        while (v43 != 24);
        *(&v56 + v39++) = v44;
        v42 = (v42 + 8);
      }

      while (v39 != 3);
      v47 = 0;
      v48 = **(a1 + 8);
      v49 = v48 + 48 * v3;
      *v49 = v56;
      *(v49 + 16) = v57;
      v56 = 0uLL;
      *&v57 = 0;
      v50 = v71;
      do
      {
        v51 = 0;
        v52 = 0.0;
        v53 = v50;
        do
        {
          v54 = *v53;
          v53 += 3;
          v52 = v52 + v54 * *(&v61 + v51);
          v51 += 8;
        }

        while (v51 != 24);
        *(&v56 + v47++) = v52;
        v50 = (v50 + 8);
      }

      while (v47 != 3);
      v55 = v48 + 24 * ((2 * v3) | 1);
      *v55 = v56;
      result = *&v57;
      *(v55 + 16) = v57;
      ++v3;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_24BDCA608(void *result, uint64_t a2)
{
  if (*result)
  {
    v4 = *(result + 1);
    *a2 = *result;
    *(a2 + 4) = v4;
    sub_24BC92930((a2 + 8), (result[2] - result[1]) >> 3);
    v5 = *(a2 + 8);
    *v5 = 0;
    v6 = *result;
    if (*result >= 1)
    {
      v7 = 0;
      do
      {
        v8 = result[1];
        v9 = *(v8 + 8 * v7);
        v10 = v7 + 1;
        v11 = *(v8 + 8 * (v7 + 1));
        if (v9 < v11)
        {
          v12 = 8 * v9;
          do
          {
            v13 = *(result[4] + 4 * v9);
            if (v7 >= v13 && *(result[7] + 8 * v9) != 0.0)
            {
              v15 = *(a2 + 40);
              v14 = *(a2 + 48);
              if (v15 >= v14)
              {
                v17 = *(a2 + 32);
                v18 = v15 - v17;
                v19 = (v15 - v17) >> 2;
                v20 = v19 + 1;
                if ((v19 + 1) >> 62)
                {
                  sub_24BC8E01C();
                }

                v21 = v14 - v17;
                if (v21 >> 1 > v20)
                {
                  v20 = v21 >> 1;
                }

                v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
                v23 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v22)
                {
                  v23 = v20;
                }

                if (v23)
                {
                  sub_24BC92E0C(a2 + 32, v23);
                }

                v24 = (v15 - v17) >> 2;
                v25 = (4 * v19);
                v26 = (4 * v19 - 4 * v24);
                *v25 = v13;
                v16 = v25 + 1;
                memcpy(v26, v17, v18);
                v27 = *(a2 + 32);
                *(a2 + 32) = v26;
                *(a2 + 40) = v16;
                *(a2 + 48) = 0;
                if (v27)
                {
                  operator delete(v27);
                }
              }

              else
              {
                *v15 = v13;
                v16 = v15 + 4;
              }

              *(a2 + 40) = v16;
              sub_24BDCA7B8((a2 + 56), (result[7] + v12));
            }

            ++v9;
            v12 += 8;
          }

          while (v11 != v9);
          v5 = *(a2 + 8);
          v6 = *result;
        }

        v5[v10] = (*(a2 + 64) - *(a2 + 56)) >> 3;
        ++v7;
      }

      while (v10 < v6);
    }
  }
}

void sub_24BDCA7B8(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_24BC8E01C();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_24BC91F60(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

void sub_24BDCA898(unsigned int *a1, uint64_t *a2, void **a3)
{
  sub_24BDCC340(a3, 0, 0, 0);
  v6 = a1[1];
  v23 = 0;
  sub_24BDCA968(a3, v6, &v23);
  v7 = *a1;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(a1 + 1);
    v10 = *(a1 + 7);
    v11 = *a2;
    v12 = *(a1 + 4);
    v13 = *a3;
    v14 = *v9;
    do
    {
      v15 = v8 + 1;
      v16 = v9[v8 + 1];
      v17 = v16 - v14;
      if (v16 > v14)
      {
        v18 = (v10 + 8 * v14);
        v19 = (v12 + 4 * v14);
        do
        {
          v20 = *v18++;
          v21 = v20;
          v22 = *v19++;
          v13[v22] = v13[v22] + v21 * *(v11 + 8 * v8);
          --v17;
        }

        while (v17);
      }

      v14 = v16;
      ++v8;
    }

    while (v15 != v7);
  }
}

void sub_24BDCA968(void *result, unint64_t a2, uint64_t *a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    sub_24BDCC474(result, a2 - v3, a3);
  }
}

void sub_24BDCA998(unsigned int *a1, unsigned int *a2, unsigned int *a3)
{
  v6 = a1[1];
  v7 = a2[1];
  *a3 = v6;
  a3[1] = v7;
  sub_24BC92930(a3 + 1, v7 * v6);
  v8 = *a2;
  v9 = a2[1];
  if (v9 * v8)
  {
    bzero(*(a3 + 1), 8 * (v9 * v8));
  }

  if (v9)
  {
    v10 = 0;
    v11 = *a1;
    v12 = *(a1 + 1);
    do
    {
      if (v11 >= 1)
      {
        v13 = 0;
        v14 = *(a1 + 7);
        v15 = *(a2 + 1) + 8 * v10 * v8;
        v16 = *(a1 + 4);
        v17 = *(a3 + 1) + 8 * v10 * *a3;
        v18 = *v12;
        do
        {
          v19 = v13 + 1;
          v20 = v12[v13 + 1];
          v21 = v20 - v18;
          if (v20 > v18)
          {
            v22 = (v14 + 8 * v18);
            v23 = (v16 + 4 * v18);
            do
            {
              v24 = *v22++;
              v25 = v24;
              LODWORD(v24) = *v23++;
              *(v17 + 8 * LODWORD(v24)) = *(v17 + 8 * LODWORD(v24)) + v25 * *(v15 + 8 * v13);
              --v21;
            }

            while (v21);
          }

          v18 = v20;
          ++v13;
        }

        while (v19 != v11);
      }

      ++v10;
    }

    while (v10 != v9);
  }
}

double sub_24BDCAA98(uint64_t a1, double *a2, uint64_t *a3)
{
  if (a3 != a1)
  {
    *a3 = *a1;
    sub_24BD07E64(a3 + 1, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
    sub_24BCA2A30(a3 + 4, *(a1 + 32), *(a1 + 40), (*(a1 + 40) - *(a1 + 32)) >> 2);
    sub_24BD07E64(a3 + 7, *(a1 + 56), *(a1 + 64), (*(a1 + 64) - *(a1 + 56)) >> 3);
  }

  v7 = a3[7];
  v8 = a3[8] - v7;
  if (v8)
  {
    v9 = v8 >> 3;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      result = *a2 * *v7;
      *v7++ = result;
      --v9;
    }

    while (v9);
  }

  return result;
}

void sub_24BDCAB48(int *a1, int *a2, unsigned int *a3)
{
  v6 = *a1;
  LODWORD(v78) = 0;
  sub_24BCA1128(&v81, v6, &v78);
  v78 = 0;
  v79 = 0;
  v80 = 0;
  sub_24BDAF1BC(&v78, (*(a1 + 8) - *(a1 + 7)) >> 3);
  v75 = 0;
  v76 = 0;
  v77 = 0;
  sub_24BCB8D20(&v75, (*(a1 + 8) - *(a1 + 7)) >> 3);
  v7 = *a1;
  LODWORD(v71) = 0;
  sub_24BCA1128(&v73, v7 + 1, &v71);
  v8 = *a1;
  if (*a1 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(a1 + 1);
      v11 = *(v10 + 8 * v9);
      v12 = v9 + 1;
      v13 = *(v10 + 8 * (v9 + 1));
      if (v11 != v13)
      {
        v14 = 8 * v11;
        do
        {
          sub_24BDCA7B8(&v78, (*(a1 + 7) + v14));
          LODWORD(v71) = *(*(a1 + 4) + 4 * v11);
          sub_24BC97D60(&v75, &v71);
          ++v81[v9];
          ++v11;
          v14 += 8;
        }

        while (v13 != v11);
        v8 = *a1;
      }

      ++v9;
    }

    while (v12 < v8);
  }

  v15 = v73;
  *v73 = 0;
  v16 = v81;
  if (v82 != v81)
  {
    v17 = 0;
    v18 = v82 - v81;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    v19 = v15 + 4;
    do
    {
      v20 = *v16++;
      v17 += v20;
      *v19++ = v17;
      --v18;
    }

    while (v18);
  }

  *(v74 - 1) = (*(a1 + 8) - *(a1 + 7)) >> 3;
  v21 = *a2;
  LODWORD(v68) = 0;
  sub_24BCA1128(&v71, v21, &v68);
  v68 = 0;
  v69 = 0;
  v70 = 0;
  sub_24BDAF1BC(&v68, (*(a2 + 8) - *(a2 + 7)) >> 3);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  sub_24BCB8D20(&v65, (*(a2 + 8) - *(a2 + 7)) >> 3);
  v22 = *a2;
  LODWORD(v60) = 0;
  sub_24BCA1128(&v63, v22 + 1, &v60);
  v23 = *a2;
  if (*a2 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = *(a2 + 1);
      v26 = *(v25 + 8 * v24);
      v27 = v24 + 1;
      v28 = *(v25 + 8 * (v24 + 1));
      if (v26 != v28)
      {
        v29 = 8 * v26;
        do
        {
          sub_24BDCA7B8(&v68, (*(a2 + 7) + v29));
          LODWORD(v60) = *(*(a2 + 4) + 4 * v26);
          sub_24BC97D60(&v65, &v60);
          ++*(v71 + v24);
          ++v26;
          v29 += 8;
        }

        while (v28 != v26);
        v23 = *a2;
      }

      ++v24;
    }

    while (v27 < v23);
  }

  v30 = v63;
  *v63 = 0;
  v31 = v71;
  if (v72 != v71)
  {
    v32 = 0;
    v33 = (v72 - v71) >> 2;
    if (v33 <= 1)
    {
      v33 = 1;
    }

    v34 = v30 + 4;
    do
    {
      v35 = *v31++;
      v32 += v35;
      *v34++ = v32;
      --v33;
    }

    while (v33);
  }

  v36 = *(a2 + 8) - *(a2 + 7);
  *(v64 - 1) = v36 >> 3;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  __p = 0;
  v58 = 0;
  v59 = 0;
  sub_24BD6EC64(&v60, ((*(a1 + 8) - *(a1 + 7)) >> 3) + (v36 >> 3));
  v39 = v71;
  v38 = v72;
  if (v72 != v71)
  {
    v40 = 0;
    do
    {
      v41 = v39[v40];
      if (v41)
      {
        v42 = *(v63 + v40);
        v43 = v41 + v42;
        do
        {
          v44 = *(v65 + v42);
          v45 = v81[v44];
          if (v45)
          {
            v46 = *(v73 + v44);
            v47 = v45 + v46;
            v48 = *(v68 + v42);
            do
            {
              v49 = v48 * v78[v46];
              LODWORD(v56) = v75[v46];
              DWORD1(v56) = v40;
              *(&v56 + 1) = v49;
              sub_24BD6EF1C(&v60, &v56);
              ++v46;
            }

            while (v46 < v47);
          }

          ++v42;
        }

        while (v42 < v43);
        v39 = v71;
        v38 = v72;
      }

      ++v40;
    }

    while (v40 < (v38 - v39) >> 2);
  }

  v50 = 126 - 2 * __clz((v61 - v60) >> 4);
  if (v61 == v60)
  {
    v51 = 0;
  }

  else
  {
    v51 = v50;
  }

  sub_24BDCC644(v60, v61, &v56, v51, 1, v37);
  sub_24BD6EC64(&__p, (v61 - v60) >> 4);
  v52 = v60;
  if (v60 == v61)
  {
    v53 = v60;
  }

  else
  {
    sub_24BD6EF1C(&__p, v60);
    v52 = v60;
    v53 = v61;
  }

  if ((v53 - v52) >= 0x11)
  {
    v54 = 0;
    v55 = 1;
    do
    {
      if (*(v58 - 4) == *&v52[v54 + 16] && *(v58 - 3) == *&v52[v54 + 20])
      {
        *(v58 - 1) = *&v52[v54 + 24] + *(v58 - 1);
      }

      else
      {
        sub_24BD6EF1C(&__p, &v52[v54 + 16]);
        v52 = v60;
        v53 = v61;
      }

      ++v55;
      v54 += 16;
    }

    while (v55 < (v53 - v52) >> 4);
  }

  sub_24BDCB164(&__p, *a2, a1[1], 1, a3);
  if (__p)
  {
    v58 = __p;
    operator delete(__p);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }
}

void sub_24BDCB06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v32 = *(v30 - 168);
  if (v32)
  {
    *(v30 - 160) = v32;
    operator delete(v32);
  }

  v33 = *(v30 - 144);
  if (v33)
  {
    *(v30 - 136) = v33;
    operator delete(v33);
  }

  v34 = *(v30 - 120);
  if (v34)
  {
    *(v30 - 112) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDCB164(void **a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int *a5)
{
  v7 = a2;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_24BDCB2B8(a1, a2, &v21, &v18, &__p, a4);
  *a5 = v7;
  a5[1] = a3;
  sub_24BC92930(a5 + 1, (v7 + 1));
  v8 = *(a5 + 1);
  *v8 = 0;
  v9 = *a5;
  if (*a5 >= 1)
  {
    v10 = 0;
    v11 = v18;
    v12 = v8 + 1;
    v13 = *a5;
    do
    {
      v14 = *v11++;
      v10 += v14;
      *v12++ = v10;
      --v13;
    }

    while (v13);
  }

  sub_24BC8CAB0(a5 + 4, v8[v9]);
  sub_24BC92930(a5 + 7, *(*(a5 + 1) + 8 * *a5));
  if (v16 != __p)
  {
    memmove(*(a5 + 4), __p, v16 - __p);
  }

  if (v22 != v21)
  {
    memmove(*(a5 + 7), v21, v22 - v21);
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }
}

void sub_24BDCB28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  sub_24BFB8EF0(&__p, &a13, va);
  _Unwind_Resume(a1);
}

void sub_24BDCB2B8(void **a1, unsigned int a2, void *a3, uint64_t *a4, void *a5, char a6)
{
  v10 = a1;
  __p[0] = 0;
  __p[1] = 0;
  v32 = 0;
  if ((a6 & 1) == 0)
  {
    if (__p == a1)
    {
      v11 = 0uLL;
    }

    else
    {
      sub_24BDCDB5C(__p, *a1, a1[1], (a1[1] - *a1) >> 4);
      v11 = *__p;
    }

    v12 = 126 - 2 * __clz((v11.n128_u64[1] - v11.n128_u64[0]) >> 4);
    if (v11.n128_u64[1] == v11.n128_u64[0])
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    sub_24BDCC644(v11.n128_u64[0], v11.n128_u64[1], &v30, v13, 1, v11);
    v10 = __p;
  }

  sub_24BC92930(a3, (v10[1] - *v10) >> 4);
  v30 = 0;
  sub_24BD7B3FC(a4, a2, &v30);
  sub_24BC8CAB0(a5, (v10[1] - *v10) >> 4);
  v14 = *v10;
  v15 = (v10[1] - *v10) >> 4;
  if (v10[1] != *v10)
  {
    v16 = *a5;
    v17 = *a3;
    if (v15 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = (v10[1] - *v10) >> 4;
    }

    v19 = v14 + 8;
    v20 = (v10[1] - *v10) >> 4;
    do
    {
      if (!v20)
      {
        sub_24BC923C0();
      }

      *v16++ = *(v19 - 2);
      v21 = *v19;
      v19 += 2;
      *v17++ = v21;
      --v20;
      --v18;
    }

    while (v18);
  }

  v22 = *a4;
  v23 = a4[1];
  v24 = v23 - *a4;
  if (v23 != *a4)
  {
    v25 = 0;
    v26 = 0;
    v27 = v24 >> 2;
    if (v27 <= 1)
    {
      v27 = 1;
    }

    v28 = v14 + 4;
    do
    {
      if (v25 >= v15)
      {
        break;
      }

      v29 = &v28[16 * v25];
      while (1)
      {
        if (v15 == v25)
        {
          sub_24BC923C0();
        }

        if (v26 != *v29)
        {
          break;
        }

        ++*(v22 + 4 * v26);
        ++v25;
        v29 += 16;
        if (v15 == v25)
        {
          v25 = v15;
          break;
        }
      }

      ++v26;
    }

    while (v26 != v27);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_24BDCB480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDCB4A8(unsigned int *a1, unsigned int *a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  sub_24BDCB540(a1, &__p);
  v4 = __p;
  v5 = v7;
  while (v4 != v5)
  {
    *v4 = vrev64_s32(*v4);
    v4 += 2;
  }

  sub_24BDCB164(&__p, a1[1], *a1, 0, a2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_24BDCB524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDCB540(uint64_t a1, void *a2)
{
  a2[1] = *a2;
  sub_24BD6EC64(a2, (*(a1 + 64) - *(a1 + 56)) >> 3);
  v4 = *a1;
  if (*a1 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + 8);
      v7 = *(v6 + 8 * v5);
      v8 = v5 + 1;
      v9 = *(v6 + 8 * (v5 + 1));
      if (v7 != v9)
      {
        do
        {
          v10 = *(*(a1 + 56) + 8 * v7);
          LODWORD(v11) = *(*(a1 + 32) + 4 * v7);
          DWORD1(v11) = v5;
          *(&v11 + 1) = v10;
          sub_24BD6EF1C(a2, &v11);
          ++v7;
        }

        while (v9 != v7);
        v4 = *a1;
      }

      ++v5;
    }

    while (v8 < v4);
  }
}

void sub_24BDCB600(unsigned int *a1, uint64_t a2, unsigned int *a3)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_24BDCB540(a1, &v22);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  sub_24BDCB540(a2, &v19);
  __p = 0;
  v17 = 0;
  v18 = 0;
  if ((v23 - v22) >> 4 <= ((v20 - v19) >> 4))
  {
    v6 = (v20 - v19) >> 4;
  }

  else
  {
    v6 = (v23 - v22) >> 4;
  }

  sub_24BD6EC64(&__p, v6);
  v7 = v22;
  v8 = v19;
  while (v7 != v23)
  {
    v9 = v7[1];
    v10 = *(v8 + 1);
    if (v9 > v10)
    {
      goto LABEL_18;
    }

    if (v9 < v10 || v8 == v20)
    {
LABEL_15:
      v12 = *(v7 + 1);
      LODWORD(v15) = *v7;
      DWORD1(v15) = v9;
      *(&v15 + 1) = v12;
      sub_24BD6EF1C(&__p, &v15);
      v7 += 4;
    }

    else
    {
      if (*v7 > *v8)
      {
        goto LABEL_18;
      }

      if (*v7 < *v8)
      {
        goto LABEL_15;
      }

      v14 = *(v7 + 1) + v8[1];
      LODWORD(v15) = *v7;
      DWORD1(v15) = v9;
      *(&v15 + 1) = v14;
      sub_24BD6EF1C(&__p, &v15);
      v7 += 4;
LABEL_19:
      v8 += 2;
    }
  }

  if (v8 != v20)
  {
    v10 = *(v8 + 1);
LABEL_18:
    v13 = *(v8 + 1);
    LODWORD(v15) = *v8;
    DWORD1(v15) = v10;
    *(&v15 + 1) = v13;
    sub_24BD6EF1C(&__p, &v15);
    goto LABEL_19;
  }

  sub_24BDCB164(&__p, *a1, a1[1], 1, a3);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void sub_24BDCB7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  v18 = *(v16 - 56);
  if (v18)
  {
    *(v16 - 48) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDCB830(void *a1, double *a2, double *a3)
{
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  sub_24BDCA608(a1, &v27);
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = v27;
  v9 = DWORD1(v27);
  v10 = *(&v27 + 1);
  v11 = v29;
  v12 = *(&v30 + 1);
  v26 = 0;
  memset(&v25, 0, sizeof(v25));
  *&toFree.status = v27;
  *&toFree.symbolicFactorization.columnCount = v29;
  LODWORD(toFree.symbolicFactorization.factorization) = 12;
  BYTE4(toFree.symbolicFactorization.factorization) = 1;
  *(&toFree.symbolicFactorization.factorization + 5) = 0;
  HIBYTE(toFree.symbolicFactorization.factorization) = 0;
  toFree.symbolicFactorization.workspaceSize_Float = *(&v30 + 1);
  sub_24BDCBA6C(SparseFactorizationCholesky, &toFree, &v25);
  if (v25.status && (toFree = v25, v24 = v26, _SparseDestroyOpaqueNumeric_Double(&toFree), v15[0] = v8, v15[1] = v9, v16 = v10, v17 = v11, v18 = 12, v19 = 1, v20 = 0, v21 = 0, v22 = v12, sub_24BDCBA6C(SparseFactorizationQR, v15, &toFree), v25 = toFree, v26 = v24, toFree.status))
  {
    toFree = v25;
    v24 = v26;
    _SparseDestroyOpaqueNumeric_Double(&toFree);
    v13 = 0;
  }

  else
  {
    toFree = v25;
    v24 = v26;
    sub_24BDCBC10(&toFree, v7, a2, v6, a3);
    toFree = v25;
    v24 = v26;
    _SparseDestroyOpaqueNumeric_Double(&toFree);
    v13 = 1;
  }

  if (*(&v30 + 1))
  {
    *&v31 = *(&v30 + 1);
    operator delete(*(&v30 + 1));
  }

  if (v29)
  {
    *(&v29 + 1) = v29;
    operator delete(v29);
  }

  if (*(&v27 + 1))
  {
    *&v28 = *(&v27 + 1);
    operator delete(*(&v27 + 1));
  }

  return v13;
}

void sub_24BDCBA6C(SparseFactorization_t a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  *&Matrix.structure.rowCount = *a2;
  *&Matrix.structure.rowIndices = v4;
  Matrix.data = *(a2 + 32);
  sfoptions = *byte_285F964A0;
  v6 = *ymmword_24BFED350;
  if (Matrix.structure.rowCount <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_24BFB8F30();
    }

    goto LABEL_14;
  }

  if (Matrix.structure.columnCount <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_24BFB8FB8();
    }

    goto LABEL_14;
  }

  if (!*(&Matrix.structure.blockSize + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_24BFB9130();
    }

    goto LABEL_14;
  }

  v5 = *&Matrix.structure.attributes & 0xC;
  if (Matrix.structure.rowCount != Matrix.structure.columnCount && v5 == 12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_24BFB9040();
    }

LABEL_14:
    _SparseTrap();
    *(a3 + 96) = 0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = -4;
    *(a3 + 8) = -4;
    return;
  }

  if ((a1 & 0xFE) == 0x28)
  {
    _SparseFactorQR_Double(a3, a1, &Matrix, &sfoptions, &v6);
  }

  else
  {
    if (v5 != 12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_24BFB90EC();
      }

      goto LABEL_14;
    }

    _SparseFactorSymmetric_Double(a3, a1, &Matrix, &sfoptions, &v6);
  }
}

void sub_24BDCBC10(const SparseOpaqueFactorization_Double *factor, uint64_t a2, double *a3, uint64_t a4, double *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  p_symbolicFactorization = &factor->symbolicFactorization;
  if (factor->symbolicFactorization.status || !factor->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_24BFB93D8();
    }

    goto LABEL_4;
  }

  v8 = a4;
  v10 = a2;
  _SparseGetOptionsFromSymbolicFactor(&v25, &factor->symbolicFactorization);
  reportError = v25.reportError;
  if (p_symbolicFactorization->status || !factor->symbolicFactorization.workspaceSize_Float || factor->status || !factor->solveWorkspaceRequiredStatic)
  {
    if (!v25.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_24BFB9354();
      }

      goto LABEL_4;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    memset(&v25, 0, sizeof(v25));
    snprintf(&v25, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_9:
    (reportError)(&v25);
    return;
  }

  v12 = *&factor->attributes ^ *&factor->symbolicFactorization.attributes;
  factorization_low = LOBYTE(factor->symbolicFactorization.factorization);
  v14 = factor->symbolicFactorization.rowCount * factorization_low;
  v15 = factor->symbolicFactorization.columnCount * factorization_low;
  v16 = (v12 & 1) == 0;
  if (v12)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  if (v16)
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  if (BYTE1(factor->symbolicFactorization.factorization) == 40)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  if (v18 != v8)
  {
    if (!v25.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_24BFB91B8();
      }

      goto LABEL_4;
    }

LABEL_31:
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    memset(&v25, 0, sizeof(v25));
    snprintf(&v25, 0x100uLL, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n");
    goto LABEL_9;
  }

  if (v19 != v10)
  {
    if (!v25.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_24BFB9248();
      }

      goto LABEL_4;
    }

    goto LABEL_31;
  }

  free = v25.free;
  RHS.rowCount = v10;
  RHS.columnCount = 1;
  *&RHS.attributes = 0;
  RHS.data = a3;
  RHS.columnStride = v10;
  *&Soln.attributes = 0;
  Soln.data = a5;
  Soln.rowCount = v8;
  Soln.columnCount = 1;
  Soln.columnStride = v8;
  v21 = (v25.malloc)(*&factor[1].status + factor->solveWorkspaceRequiredPerRHS);
  if (!v21)
  {
    if (reportError)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      memset(&v25, 0, sizeof(v25));
      snprintf(&v25, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_24BFB92D8();
    }

LABEL_4:
    _SparseTrap();
    return;
  }

  v22 = v21;
  _SparseSolveOpaque_Double(factor, &RHS, &Soln, v21);
  (free)(v22);
}

uint64_t sub_24BDCBF48(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    v2 = *(a1 + 80);
    *&v6.userFactorStorage = *(a1 + 64);
    *&v6.solveWorkspaceRequiredStatic = v2;
    v7 = *(a1 + 96);
    v3 = *(a1 + 16);
    *&v6.status = *a1;
    *&v6.symbolicFactorization.columnCount = v3;
    v4 = *(a1 + 48);
    *&v6.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
    *&v6.symbolicFactorization.factorSize_Float = v4;
    _SparseDestroyOpaqueNumeric_Double(&v6);
  }

  return a1;
}

BOOL sub_24BDCBFB0(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  v32 = v5;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_24BDC9DFC(&v33, v4, *(a2 + 16), (*(a2 + 16) - v4) >> 3);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  sub_24BCC9A1C(&v36, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  sub_24BCA39A4(&v39, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  v6 = v32;
  v7 = HIDWORD(v32);
  v8 = v33;
  v9 = v36;
  v10 = v39;
  v22 = v32;
  v23 = v33;
  v24 = v36;
  v25 = 12;
  v11 = 1;
  v26 = 1;
  v27 = 0;
  v28 = 0;
  v29 = v39;
  sub_24BDCBA6C(SparseFactorizationCholesky, &v22, &toFree);
  v12 = *&toFree.solveWorkspaceRequiredStatic;
  *(a1 + 64) = *&toFree.userFactorStorage;
  *(a1 + 80) = v12;
  *(a1 + 96) = v31;
  v13 = *&toFree.symbolicFactorization.columnCount;
  *a1 = *&toFree.status;
  *(a1 + 16) = v13;
  v14 = *&toFree.symbolicFactorization.factorSize_Float;
  *(a1 + 32) = *&toFree.symbolicFactorization.workspaceSize_Float;
  *(a1 + 48) = v14;
  *(a1 + 104) = 1;
  if (*a1)
  {
    v15 = *(a1 + 80);
    *&toFree.userFactorStorage = *(a1 + 64);
    *&toFree.solveWorkspaceRequiredStatic = v15;
    v31 = *(a1 + 96);
    v16 = *(a1 + 16);
    *&toFree.status = *a1;
    *&toFree.symbolicFactorization.columnCount = v16;
    v17 = *(a1 + 48);
    *&toFree.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
    *&toFree.symbolicFactorization.factorSize_Float = v17;
    _SparseDestroyOpaqueNumeric_Double(&toFree);
    v22 = __PAIR64__(v7, v6);
    v23 = v8;
    v24 = v9;
    v25 = 12;
    v26 = 1;
    v27 = 0;
    v28 = 0;
    v29 = v10;
    sub_24BDCBA6C(SparseFactorizationQR, &v22, &toFree);
    v18 = *&toFree.solveWorkspaceRequiredStatic;
    *(a1 + 64) = *&toFree.userFactorStorage;
    *(a1 + 80) = v18;
    *(a1 + 96) = v31;
    v19 = *&toFree.symbolicFactorization.columnCount;
    *a1 = *&toFree.status;
    *(a1 + 16) = v19;
    v20 = *&toFree.symbolicFactorization.factorSize_Float;
    *(a1 + 32) = *&toFree.symbolicFactorization.workspaceSize_Float;
    *(a1 + 48) = v20;
    v11 = *a1 == 0;
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  return v11;
}

BOOL sub_24BDCC1C8(int *a1, void *a2)
{
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  sub_24BDCA608(a2, &v17);
  v13 = 0;
  v12 = 0;
  v8 = v17;
  v9 = v19;
  v10 = 12;
  v11 = 1;
  v14 = *(&v20 + 1);
  sub_24BDCBA6C(SparseFactorizationCholesky, &v8, v15);
  v3 = v15[5];
  *(a1 + 4) = v15[4];
  *(a1 + 5) = v3;
  *(a1 + 12) = v16;
  v4 = v15[1];
  *a1 = v15[0];
  *(a1 + 1) = v4;
  v5 = v15[3];
  *(a1 + 2) = v15[2];
  *(a1 + 3) = v5;
  *(a1 + 104) = 1;
  v6 = *a1;
  if (*(&v20 + 1))
  {
    *&v21 = *(&v20 + 1);
    operator delete(*(&v20 + 1));
  }

  if (v19)
  {
    *(&v19 + 1) = v19;
    operator delete(v19);
  }

  if (*(&v17 + 1))
  {
    *&v18 = *(&v17 + 1);
    operator delete(*(&v17 + 1));
  }

  return v6 == 0;
}

uint64_t sub_24BDCC2E0(uint64_t a1, double *a2, unsigned int a3, double *a4, unsigned int a5)
{
  v5 = *(a1 + 80);
  *&v9.userFactorStorage = *(a1 + 64);
  *&v9.solveWorkspaceRequiredStatic = v5;
  v10 = *(a1 + 96);
  v6 = *(a1 + 16);
  *&v9.status = *a1;
  *&v9.symbolicFactorization.columnCount = v6;
  v7 = *(a1 + 48);
  *&v9.symbolicFactorization.workspaceSize_Float = *(a1 + 32);
  *&v9.symbolicFactorization.factorSize_Float = v7;
  sub_24BDCBC10(&v9, a3, a2, a5, a4);
  return 1;
}

void **sub_24BDCC340(void **result, char *__src, char *a3, unint64_t a4)
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

    if (!(a4 >> 61))
    {
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

      sub_24BC91F24(v6, v10);
    }

    sub_24BC8E01C();
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

void sub_24BDCC474(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_24BFBC5B0)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_24BC8E01C();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_24BC91F60(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_24BFBC5B0)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void sub_24BDCC644(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
LABEL_1:
  v10 = a2 - 1;
  v136 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return;
      }

      if (v15 == 2)
      {
        v122 = a2[-1].n128_u32[0];
        v123 = a2[-1].n128_u32[1];
        v124 = a2 - 1;
        v125 = v12->n128_u32[1];
        v126 = v122 < v12->n128_u32[0];
        v127 = v123 == v125;
        v128 = v123 < v125;
        if (!v127)
        {
          v126 = v128;
        }

        if (v126)
        {
          v156 = *v12;
          *v12 = *v124;
          *v124 = v156;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {

      sub_24BDC985C(v12, v12 + 1, v12 + 2, a2 - 1, a6);
      return;
    }

    if (v15 == 5)
    {
      sub_24BDC985C(v12, v12 + 1, v12 + 2, v12 + 3, a6);
      v104 = a2[-1].n128_u32[0];
      v105 = a2[-1].n128_u32[1];
      v106 = a2 - 1;
      v107 = v12[3].n128_u32[1];
      v108 = v104 < v12[3].n128_u32[0];
      v127 = v105 == v107;
      v109 = v105 < v107;
      if (!v127)
      {
        v108 = v109;
      }

      if (v108)
      {
        v110 = v12[3];
        v12[3] = *v106;
        *v106 = v110;
        v111 = v12[3].n128_u32[1];
        v112 = v12[2].n128_u32[1];
        v127 = v111 == v112;
        v113 = v111 < v112;
        if (v127)
        {
          v113 = v12[3].n128_u32[0] < v12[2].n128_u32[0];
        }

        if (v113)
        {
          v114 = v12[2];
          v12[2] = v12[3];
          v12[3] = v114;
          v115 = v12[2].n128_u32[1];
          v116 = v12[1].n128_u32[1];
          v127 = v115 == v116;
          v117 = v115 < v116;
          if (v127)
          {
            v117 = v12[2].n128_u32[0] < v12[1].n128_u32[0];
          }

          if (v117)
          {
            v118 = v12[1];
            v12[1] = v12[2];
            v12[2] = v118;
            v119 = v12[1].n128_u32[1];
            v120 = v12->n128_u32[1];
            v127 = v119 == v120;
            v121 = v119 < v120;
            if (v127)
            {
              v121 = v12[1].n128_u32[0] < v12->n128_u32[0];
            }

            if (v121)
            {
              v155 = *v12;
              *v12 = v12[1];
              v12[1] = v155;
            }
          }
        }
      }

      return;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        sub_24BDCD020(v12, a2);
      }

      else
      {

        sub_24BDCD0CC(v12, a2);
      }

      return;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        sub_24BDCD7BC(v12, a2, a2, a3);
      }

      return;
    }

    v16 = &v12[v15 >> 1];
    v18 = a2[-1].n128_u32[0];
    v17 = a2[-1].n128_u32[1];
    if (v15 >= 0x81)
    {
      v19 = v16->n128_u32[1];
      v20 = v12->n128_u32[1];
      v127 = v19 == v20;
      v21 = v19 < v20;
      if (v127)
      {
        v21 = v16->n128_u32[0] < v12->n128_u32[0];
      }

      v22 = v18 < v16->n128_u32[0];
      v127 = v17 == v19;
      v23 = v17 < v19;
      if (v127)
      {
        v23 = v22;
      }

      if (v21)
      {
        if (v23)
        {
          v137 = *v12;
          *v12 = *v10;
          goto LABEL_42;
        }

        v143 = *v12;
        *v12 = *v16;
        *v16 = v143;
        v35 = a2[-1].n128_u32[1];
        v36 = v16->n128_u32[1];
        v127 = v35 == v36;
        v37 = v35 < v36;
        if (v127)
        {
          v37 = a2[-1].n128_u32[0] < v16->n128_u32[0];
        }

        if (v37)
        {
          v137 = *v16;
          *v16 = *v10;
LABEL_42:
          *v10 = v137;
        }
      }

      else if (v23)
      {
        v139 = *v16;
        *v16 = *v10;
        *v10 = v139;
        v29 = v16->n128_u32[1];
        v30 = v12->n128_u32[1];
        v127 = v29 == v30;
        v31 = v29 < v30;
        if (v127)
        {
          v31 = v16->n128_u32[0] < v12->n128_u32[0];
        }

        if (v31)
        {
          v140 = *v12;
          *v12 = *v16;
          *v16 = v140;
        }
      }

      v38 = v12 + 1;
      v40 = v16[-1].n128_u32[0];
      v41 = v16[-1].n128_u32[1];
      v39 = v16 - 1;
      v42 = v12[1].n128_u32[1];
      v127 = v41 == v42;
      v43 = v41 < v42;
      if (v127)
      {
        v43 = v40 < v12[1].n128_u32[0];
      }

      v44 = a2[-2].n128_u32[1];
      v45 = a2[-2].n128_u32[0] < v40;
      v127 = v44 == v41;
      v46 = v44 < v41;
      if (v127)
      {
        v46 = v45;
      }

      if (v43)
      {
        if (v46)
        {
          v47 = *v38;
          *v38 = *v136;
          *v136 = v47;
        }

        else
        {
          v55 = *v38;
          *v38 = *v39;
          *v39 = v55;
          v56 = a2[-2].n128_u32[1];
          v57 = v16[-1].n128_u32[1];
          v127 = v56 == v57;
          v58 = v56 < v57;
          if (v127)
          {
            v58 = a2[-2].n128_u32[0] < v39->n128_u32[0];
          }

          if (v58)
          {
            v146 = *v39;
            *v39 = *v136;
            *v136 = v146;
          }
        }
      }

      else if (v46)
      {
        v144 = *v39;
        *v39 = *v136;
        *v136 = v144;
        v48 = v16[-1].n128_u32[1];
        v49 = v12[1].n128_u32[1];
        v127 = v48 == v49;
        v50 = v48 < v49;
        if (v127)
        {
          v50 = v39->n128_u32[0] < v12[1].n128_u32[0];
        }

        if (v50)
        {
          v51 = *v38;
          *v38 = *v39;
          *v39 = v51;
        }
      }

      v59 = v12 + 2;
      v61 = v16[1].n128_u32[0];
      v62 = v16[1].n128_u32[1];
      v60 = v16 + 1;
      v63 = v12[2].n128_u32[1];
      v127 = v62 == v63;
      v64 = v62 < v63;
      if (v127)
      {
        v64 = v61 < v12[2].n128_u32[0];
      }

      v65 = a2[-3].n128_u32[1];
      v66 = a2[-3].n128_u32[0] < v61;
      v127 = v65 == v62;
      v67 = v65 < v62;
      if (v127)
      {
        v67 = v66;
      }

      if (v64)
      {
        if (v67)
        {
          v68 = *v59;
          *v59 = *v11;
          goto LABEL_82;
        }

        v73 = *v59;
        *v59 = *v60;
        *v60 = v73;
        v74 = a2[-3].n128_u32[1];
        v75 = v16[1].n128_u32[1];
        v127 = v74 == v75;
        v76 = v74 < v75;
        if (v127)
        {
          v76 = a2[-3].n128_u32[0] < v60->n128_u32[0];
        }

        if (v76)
        {
          v148 = *v60;
          *v60 = *v11;
          v68 = v148;
LABEL_82:
          *v11 = v68;
        }
      }

      else if (v67)
      {
        v147 = *v60;
        *v60 = *v11;
        *v11 = v147;
        v69 = v16[1].n128_u32[1];
        v70 = v12[2].n128_u32[1];
        v127 = v69 == v70;
        v71 = v69 < v70;
        if (v127)
        {
          v71 = v60->n128_u32[0] < v12[2].n128_u32[0];
        }

        if (v71)
        {
          v72 = *v59;
          *v59 = *v60;
          *v60 = v72;
        }
      }

      v77 = v16->n128_u32[1];
      v78 = v16[-1].n128_u32[1];
      v127 = v77 == v78;
      v79 = v77 < v78;
      if (v127)
      {
        v79 = v16->n128_u32[0] < v39->n128_u32[0];
      }

      v80 = v16[1].n128_u32[1];
      v127 = v80 == v77;
      v81 = v80 < v77;
      if (v127)
      {
        v81 = v60->n128_u32[0] < v16->n128_u32[0];
      }

      if (v79)
      {
        if (v81)
        {
          v149 = *v39;
          *v39 = *v60;
          goto LABEL_99;
        }

        v152 = *v39;
        *v39 = *v16;
        *v16 = v152;
        v85 = v16[1].n128_u32[1];
        v86 = v16->n128_u32[1];
        v127 = v85 == v86;
        v87 = v85 < v86;
        if (v127)
        {
          v87 = v60->n128_u32[0] < v16->n128_u32[0];
        }

        if (v87)
        {
          v149 = *v16;
          *v16 = *v60;
LABEL_99:
          *v60 = v149;
        }
      }

      else if (v81)
      {
        v150 = *v16;
        *v16 = *v60;
        *v60 = v150;
        v82 = v16->n128_u32[1];
        v83 = v16[-1].n128_u32[1];
        v127 = v82 == v83;
        v84 = v82 < v83;
        if (v127)
        {
          v84 = v16->n128_u32[0] < v39->n128_u32[0];
        }

        if (v84)
        {
          v151 = *v39;
          *v39 = *v16;
          *v16 = v151;
        }
      }

      v153 = *v12;
      *v12 = *v16;
      *v16 = v153;
      if (a5)
      {
        goto LABEL_104;
      }

      goto LABEL_101;
    }

    v24 = v12->n128_u32[1];
    v25 = v16->n128_u32[1];
    v127 = v24 == v25;
    v26 = v24 < v25;
    if (v127)
    {
      v26 = v12->n128_u32[0] < v16->n128_u32[0];
    }

    v27 = v18 < v12->n128_u32[0];
    v127 = v17 == v24;
    v28 = v17 < v24;
    if (v127)
    {
      v28 = v27;
    }

    if (v26)
    {
      if (v28)
      {
        v138 = *v16;
        *v16 = *v10;
        goto LABEL_59;
      }

      v145 = *v16;
      *v16 = *v12;
      *v12 = v145;
      v52 = a2[-1].n128_u32[1];
      v53 = v12->n128_u32[1];
      v127 = v52 == v53;
      v54 = v52 < v53;
      if (v127)
      {
        v54 = a2[-1].n128_u32[0] < v12->n128_u32[0];
      }

      if (v54)
      {
        v138 = *v12;
        *v12 = *v10;
LABEL_59:
        *v10 = v138;
      }

LABEL_60:
      if (a5)
      {
        goto LABEL_104;
      }

      goto LABEL_101;
    }

    if (!v28)
    {
      goto LABEL_60;
    }

    v141 = *v12;
    *v12 = *v10;
    *v10 = v141;
    v32 = v12->n128_u32[1];
    v33 = v16->n128_u32[1];
    v127 = v32 == v33;
    v34 = v32 < v33;
    if (v127)
    {
      v34 = v12->n128_u32[0] < v16->n128_u32[0];
    }

    if (!v34)
    {
      goto LABEL_60;
    }

    v142 = *v16;
    *v16 = *v12;
    *v12 = v142;
    if (a5)
    {
      goto LABEL_104;
    }

LABEL_101:
    v88 = v12[-1].n128_u32[1];
    v89 = v12->n128_u32[1];
    v127 = v88 == v89;
    v90 = v88 < v89;
    if (v127)
    {
      v90 = v12[-1].n128_u32[0] < v12->n128_u32[0];
    }

    if (!v90)
    {
      v12 = sub_24BDCD150(v12, a2);
      goto LABEL_109;
    }

LABEL_104:
    v91 = sub_24BDCD27C(v12, a2);
    if ((v92 & 1) == 0)
    {
      goto LABEL_107;
    }

    v93 = sub_24BDCD39C(v12, v91, a6);
    v12 = v91 + 1;
    if (sub_24BDCD39C(v91 + 1, a2, v94))
    {
      a4 = -v14;
      a2 = v91;
      if (v93)
      {
        return;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v93)
    {
LABEL_107:
      sub_24BDCC644(a1, v91, a3, -v14, a5 & 1, a6);
      v12 = v91 + 1;
LABEL_109:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v95 = v12 + 1;
  v96 = v12[1].n128_u32[0];
  v97 = v12[1].n128_u32[1];
  v98 = v12->n128_u32[1];
  v127 = v97 == v98;
  v99 = v97 < v98;
  if (v127)
  {
    v99 = v96 < v12->n128_u32[0];
  }

  v101 = a2[-1].n128_u32[1];
  v100 = a2 - 1;
  v102 = a2[-1].n128_u32[0] < v96;
  if (v101 != v97)
  {
    v102 = v101 < v97;
  }

  if (v99)
  {
    if (v102)
    {
      v154 = *v12;
      *v12 = *v100;
      v103 = v154;
LABEL_159:
      *v100 = v103;
      return;
    }

    v158 = *v12;
    *v12 = *v95;
    *v95 = v158;
    v133 = a2[-1].n128_u32[1];
    v134 = v12[1].n128_u32[1];
    v127 = v133 == v134;
    v135 = v133 < v134;
    if (v127)
    {
      v135 = a2[-1].n128_u32[0] < v12[1].n128_u32[0];
    }

    if (v135)
    {
      v103 = *v95;
      *v95 = *v100;
      goto LABEL_159;
    }
  }

  else if (v102)
  {
    v129 = *v95;
    *v95 = *v100;
    *v100 = v129;
    v130 = v12[1].n128_u32[1];
    v131 = v12->n128_u32[1];
    v127 = v130 == v131;
    v132 = v130 < v131;
    if (v127)
    {
      v132 = v12[1].n128_u32[0] < v12->n128_u32[0];
    }

    if (v132)
    {
      v157 = *v12;
      *v12 = *v95;
      *v95 = v157;
    }
  }
}

uint64_t sub_24BDCD020(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    if (result + 16 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v7 = *(v4 + 16);
        v6 = *(v4 + 20);
        v8 = *(v4 + 4);
        v9 = v6 == v8;
        v10 = v6 < v8;
        if (v9)
        {
          v10 = v7 < *v4;
        }

        if (v10)
        {
          v11 = *(v4 + 24);
          v12 = v3;
          while (1)
          {
            v13 = result + v12;
            *(result + v12 + 16) = *(result + v12);
            if (!v12)
            {
              break;
            }

            v14 = *(v13 - 12);
            v15 = v7 < *(v13 - 16);
            v9 = v6 == v14;
            v16 = v6 < v14;
            if (!v9)
            {
              v15 = v16;
            }

            v12 -= 16;
            if (!v15)
            {
              v17 = result + v12 + 16;
              goto LABEL_14;
            }
          }

          v17 = result;
LABEL_14:
          *v17 = v7;
          *(v17 + 4) = v6;
          *(v17 + 8) = v11;
        }

        v2 = v5 + 16;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 16 != a2);
    }
  }

  return result;
}

uint64_t sub_24BDCD0CC(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    while (v2 != a2)
    {
      v3 = v2;
      v5 = *(result + 16);
      v4 = *(result + 20);
      v6 = *(result + 4);
      v7 = v4 == v6;
      v8 = v4 < v6;
      if (v7)
      {
        v8 = v5 < *result;
      }

      if (v8)
      {
        v9 = *(result + 24);
        v10 = v3;
        do
        {
          *v10 = *(v10 - 16);
          v12 = *(v10 - 32);
          v11 = *(v10 - 28);
          v10 -= 16;
          v13 = v5 < v12;
          v7 = v4 == v11;
          v14 = v4 < v11;
          if (v7)
          {
            v14 = v13;
          }
        }

        while (v14);
        *v10 = v5;
        *(v10 + 4) = v4;
        *(v10 + 8) = v9;
      }

      v2 = v3 + 16;
      result = v3;
    }
  }

  return result;
}

unsigned int *sub_24BDCD150(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 3);
  v5 = v3 == v4;
  v6 = v3 < v4;
  if (v5)
  {
    v6 = *a1 < *(a2 - 4);
  }

  if (v6)
  {
    v7 = a1;
    do
    {
      v8 = v7[4];
      v9 = v7[5];
      v7 += 4;
      v10 = v2 < v8;
      v5 = v3 == v9;
      v11 = v3 < v9;
      if (!v5)
      {
        v10 = v11;
      }
    }

    while (!v10);
  }

  else
  {
    v12 = a1 + 4;
    do
    {
      v7 = v12;
      if (v12 >= a2)
      {
        break;
      }

      v13 = v12[1];
      v14 = v2 < *v7;
      v5 = v3 == v13;
      v15 = v3 < v13;
      if (!v5)
      {
        v14 = v15;
      }

      v12 = v7 + 4;
    }

    while (!v14);
  }

  if (v7 < a2)
  {
    do
    {
      v16 = *(a2 - 4);
      v17 = *(a2 - 3);
      a2 -= 4;
      v18 = v2 < v16;
      v5 = v3 == v17;
      v19 = v3 < v17;
      if (!v5)
      {
        v18 = v19;
      }
    }

    while (v18);
  }

  v20 = *(a1 + 1);
  while (v7 < a2)
  {
    v30 = *v7;
    *v7 = *a2;
    *a2 = v30;
    do
    {
      v21 = v7[4];
      v22 = v7[5];
      v7 += 4;
      v23 = v2 < v21;
      v5 = v3 == v22;
      v24 = v3 < v22;
      if (!v5)
      {
        v23 = v24;
      }
    }

    while (!v23);
    do
    {
      v25 = *(a2 - 4);
      v26 = *(a2 - 3);
      a2 -= 4;
      v27 = v2 < v25;
      v5 = v3 == v26;
      v28 = v3 < v26;
      if (!v5)
      {
        v27 = v28;
      }
    }

    while (v27);
  }

  if (v7 - 4 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 4) = v2;
  *(v7 - 3) = v3;
  *(v7 - 1) = v20;
  return v7;
}

unsigned int *sub_24BDCD27C(unsigned int *a1, unsigned int *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  do
  {
    v6 = a1[v2 + 5];
    v7 = a1[v2 + 4] < v3;
    v8 = v6 == v4;
    v9 = v6 < v4;
    if (!v8)
    {
      v7 = v9;
    }

    v2 += 4;
  }

  while (v7);
  v10 = &a1[v2];
  if (v2 == 4)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v15 = *(a2 - 4);
      v16 = *(a2 - 3);
      a2 -= 4;
      v17 = v15 < v3;
      v8 = v16 == v4;
      v18 = v16 < v4;
      if (!v8)
      {
        v17 = v18;
      }
    }

    while (!v17);
  }

  else
  {
    do
    {
      v11 = *(a2 - 4);
      v12 = *(a2 - 3);
      a2 -= 4;
      v13 = v11 < v3;
      v8 = v12 == v4;
      v14 = v12 < v4;
      if (!v8)
      {
        v13 = v14;
      }
    }

    while (!v13);
  }

  v19 = v10;
  if (v10 < a2)
  {
    v20 = a2;
    do
    {
      v21 = *v19;
      *v19 = *v20;
      *v20 = v21;
      do
      {
        v22 = v19[4];
        v23 = v19[5];
        v19 += 4;
        v24 = v22 < v3;
        v8 = v23 == v4;
        v25 = v23 < v4;
        if (!v8)
        {
          v24 = v25;
        }
      }

      while (v24);
      do
      {
        v26 = *(v20 - 4);
        v27 = *(v20 - 3);
        v20 -= 4;
        v28 = v26 < v3;
        v8 = v27 == v4;
        v29 = v27 < v4;
        if (!v8)
        {
          v28 = v29;
        }
      }

      while (!v28);
    }

    while (v19 < v20);
  }

  if (v19 - 4 != a1)
  {
    *a1 = *(v19 - 1);
  }

  *(v19 - 4) = v3;
  *(v19 - 3) = v4;
  *(v19 - 1) = v5;
  return v19 - 4;
}

BOOL sub_24BDCD39C(__n128 *a1, __n128 *a2, __n128 a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v32 = a1 + 1;
        v33 = a1[1].n128_u32[0];
        v34 = a1[1].n128_u32[1];
        v35 = a1->n128_u32[1];
        v10 = v34 == v35;
        v36 = v34 < v35;
        if (v10)
        {
          v36 = v33 < a1->n128_u32[0];
        }

        v38 = a2[-1].n128_u32[1];
        v37 = a2 - 1;
        v39 = a2[-1].n128_u32[0] < v33;
        if (v38 != v34)
        {
          v39 = v38 < v34;
        }

        if (!v36)
        {
          if (v39)
          {
            v53 = *v32;
            *v32 = *v37;
            *v37 = v53;
            v54 = a1[1].n128_u32[1];
            v55 = a1->n128_u32[1];
            v10 = v54 == v55;
            v56 = v54 < v55;
            if (v10)
            {
              v56 = a1[1].n128_u32[0] < a1->n128_u32[0];
            }

            if (v56)
            {
              v57 = *a1;
              *a1 = *v32;
              *v32 = v57;
            }
          }

          return 1;
        }

        if (v39)
        {
          v40 = *a1;
          *a1 = *v37;
        }

        else
        {
          v63 = *a1;
          *a1 = *v32;
          *v32 = v63;
          v64 = a2[-1].n128_u32[1];
          v65 = a1[1].n128_u32[1];
          v10 = v64 == v65;
          v66 = v64 < v65;
          if (v10)
          {
            v66 = a2[-1].n128_u32[0] < a1[1].n128_u32[0];
          }

          if (!v66)
          {
            return 1;
          }

          v40 = *v32;
          *v32 = *v37;
        }

        *v37 = v40;
        break;
      case 4:
        sub_24BDC985C(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        break;
      case 5:
        sub_24BDC985C(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v13 = a2[-1].n128_u32[0];
        v14 = a2[-1].n128_u32[1];
        v15 = a2 - 1;
        v16 = a1[3].n128_u32[1];
        v17 = v13 < a1[3].n128_u32[0];
        v10 = v14 == v16;
        v18 = v14 < v16;
        if (!v10)
        {
          v17 = v18;
        }

        if (v17)
        {
          v19 = a1[3];
          a1[3] = *v15;
          *v15 = v19;
          v20 = a1[3].n128_u32[1];
          v21 = a1[2].n128_u32[1];
          v10 = v20 == v21;
          v22 = v20 < v21;
          if (v10)
          {
            v22 = a1[3].n128_u32[0] < a1[2].n128_u32[0];
          }

          if (v22)
          {
            v23 = a1[2];
            a1[2] = a1[3];
            a1[3] = v23;
            v24 = a1[2].n128_u32[1];
            v25 = a1[1].n128_u32[1];
            v10 = v24 == v25;
            v26 = v24 < v25;
            if (v10)
            {
              v26 = a1[2].n128_u32[0] < a1[1].n128_u32[0];
            }

            if (v26)
            {
              v27 = a1[1];
              a1[1] = a1[2];
              a1[2] = v27;
              v28 = a1[1].n128_u32[1];
              v29 = a1->n128_u32[1];
              v10 = v28 == v29;
              v30 = v28 < v29;
              if (v10)
              {
                v30 = a1[1].n128_u32[0] < a1->n128_u32[0];
              }

              if (v30)
              {
                v31 = *a1;
                *a1 = a1[1];
                a1[1] = v31;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_31;
    }

    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v6 = a2[-1].n128_u32[1];
    v7 = a2 - 1;
    v8 = a1->n128_u32[1];
    v9 = a2[-1].n128_u32[0] < a1->n128_u32[0];
    v10 = v6 == v8;
    v11 = v6 < v8;
    if (!v10)
    {
      v9 = v11;
    }

    if (v9)
    {
      v12 = *a1;
      *a1 = *v7;
      *v7 = v12;
    }

    return 1;
  }

LABEL_31:
  v41 = a1 + 2;
  v42 = a1[2].n128_u32[0];
  v43 = a1 + 1;
  v44 = a1[1].n128_u32[0];
  v45 = a1[1].n128_u32[1];
  v47 = a1->n128_u32[0];
  v46 = a1->n128_u32[1];
  v48 = __PAIR64__(v45, v44) < a1->n128_u64[0];
  v49 = a1[2].n128_u32[1];
  v50 = v42 < v44;
  v10 = v49 == v45;
  v51 = v49 < v45;
  if (!v10)
  {
    v50 = v51;
  }

  if (v48)
  {
    if (v50)
    {
      v52 = *a1;
      *a1 = *v41;
LABEL_56:
      *v41 = v52;
      goto LABEL_57;
    }

    v67 = *a1;
    *a1 = *v43;
    *v43 = v67;
    v68 = a1[1].n128_u32[1];
    v69 = v42 < a1[1].n128_u32[0];
    v10 = v49 == v68;
    v70 = v49 < v68;
    if (!v10)
    {
      v69 = v70;
    }

    if (v69)
    {
      v52 = *v43;
      *v43 = *v41;
      goto LABEL_56;
    }
  }

  else if (v50)
  {
    v58 = *v43;
    *v43 = *v41;
    *v41 = v58;
    v59 = a1[1].n128_u32[1];
    v60 = a1[1].n128_u32[0] < v47;
    v10 = v59 == v46;
    v61 = v59 < v46;
    if (v10)
    {
      v61 = v60;
    }

    if (v61)
    {
      v62 = *a1;
      *a1 = *v43;
      *v43 = v62;
    }
  }

LABEL_57:
  v71 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v72 = 0;
  v73 = 0;
  while (1)
  {
    v75 = v71->n128_u32[0];
    v74 = v71->n128_u32[1];
    v76 = v41->n128_u32[1];
    v77 = v71->n128_u32[0] < v41->n128_u32[0];
    v10 = v74 == v76;
    v78 = v74 < v76;
    if (!v10)
    {
      v77 = v78;
    }

    if (v77)
    {
      v79 = v71->n128_u64[1];
      v80 = v72;
      while (1)
      {
        v81 = a1 + v80;
        *(a1 + v80 + 48) = *(a1 + v80 + 32);
        if (v80 == -32)
        {
          break;
        }

        v82 = *(v81 + 5);
        v83 = v75 < *(v81 + 4);
        v10 = v74 == v82;
        v84 = v74 < v82;
        if (!v10)
        {
          v83 = v84;
        }

        v80 -= 16;
        if (!v83)
        {
          v85 = (a1 + v80 + 48);
          goto LABEL_69;
        }
      }

      v85 = a1;
LABEL_69:
      v85->n128_u32[0] = v75;
      v85->n128_u32[1] = v74;
      v85->n128_u64[1] = v79;
      if (++v73 == 8)
      {
        return &v71[1] == a2;
      }
    }

    v41 = v71;
    v72 += 16;
    if (++v71 == a2)
    {
      return 1;
    }
  }
}

char *sub_24BDCD7BC(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[16 * v9];
      do
      {
        sub_24BDCD92C(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *(v12 + 1);
        v14 = *(a1 + 1);
        v15 = v13 == v14;
        v16 = v13 < v14;
        if (v15)
        {
          v16 = *v12 < *a1;
        }

        if (v16)
        {
          v17 = *v12;
          *v12 = *a1;
          *a1 = v17;
          sub_24BDCD92C(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v18 = a2 - 16;
      do
      {
        v22 = *a1;
        v19 = sub_24BDCDA5C(a1, a4, v8);
        if (v18 == v19)
        {
          *v19 = v22;
        }

        else
        {
          *v19 = *v18;
          *v18 = v22;
          sub_24BDCDAD8(a1, (v19 + 16), a4, (v19 + 16 - a1) >> 4);
        }

        v18 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_24BDCD92C(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v13 = *v8;
      }

      else
      {
        v10 = v8[5];
        v11 = v8[1];
        v25 = v11 == v10;
        v12 = v11 < v10;
        if (v25)
        {
          v12 = *v8 < v8[4];
        }

        if (v12)
        {
          v13 = v8[4];
        }

        else
        {
          v13 = *v8;
        }

        if (v12)
        {
          v8 += 4;
          v7 = v9;
        }
      }

      v14 = v8[1];
      v16 = *a4;
      v15 = a4[1];
      v17 = v13 < *a4;
      v25 = v14 == v15;
      v18 = v14 < v15;
      if (!v25)
      {
        v17 = v18;
      }

      if (!v17)
      {
        v19 = *(a4 + 1);
        do
        {
          v20 = a4;
          a4 = v8;
          *v20 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v21 = (2 * v7) | 1;
          v8 = (result + 16 * v21);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v26 = *v8;
            v7 = v21;
          }

          else
          {
            v22 = v8[5];
            v23 = v8[1];
            v25 = v23 == v22;
            v24 = v23 < v22;
            if (v25)
            {
              v24 = *v8 < v8[4];
            }

            v25 = !v24;
            v26 = v24 ? v8[4] : *v8;
            if (v25)
            {
              v7 = v21;
            }

            else
            {
              v8 += 4;
            }
          }

          v27 = v8[1];
          v28 = v26 < v16;
          v25 = v27 == v15;
          v29 = v27 < v15;
          if (v25)
          {
            v29 = v28;
          }
        }

        while (!v29);
        *a4 = v16;
        a4[1] = v15;
        *(a4 + 1) = v19;
      }
    }
  }

  return result;
}

_OWORD *sub_24BDCDA5C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[v3];
    v5 = v4 + 1;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v8 = *(v4 + 8);
      v9 = *(v4 + 9);
      v7 = v4 + 2;
      v10 = *(v7 - 3);
      v11 = *(v7 - 4) < v8;
      v12 = v10 == v9;
      v13 = v10 < v9;
      if (!v12)
      {
        v11 = v13;
      }

      if (v11)
      {
        v5 = v7;
      }

      else
      {
        v3 = v6;
      }
    }

    *a1 = *v5;
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t sub_24BDCDAD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v8 = *(a2 - 16);
    v9 = *(a2 - 12);
    v7 = (a2 - 16);
    v10 = v6[1];
    v11 = v10 == v9;
    v12 = v10 < v9;
    if (v11)
    {
      v12 = *v6 < v8;
    }

    if (v12)
    {
      v13 = *(a2 - 8);
      do
      {
        v14 = v7;
        v7 = v6;
        *v14 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 16 * v5);
        v15 = v6[1];
        v11 = v15 == v9;
        v16 = v15 < v9;
        if (v11)
        {
          v16 = *v6 < v8;
        }
      }

      while (v16);
      *v7 = v8;
      v7[1] = v9;
      *(v7 + 1) = v13;
    }
  }

  return result;
}

uint64_t *sub_24BDCDB5C(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_24BCA182C(v6, v10);
    }

    sub_24BC8E01C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
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

uint64_t sub_24BDCDCD8(uint64_t a1, void *a2, unsigned int a3, unsigned int a4, void *a5, _DWORD *a6)
{
  v7 = a4;
  v79 = (a1 + 104);
  v9 = *(a1 + 112) - *(a1 + 104);
  v75 = v9 >> 2;
  if (v9)
  {
    LODWORD(v10) = 0;
    v73 = a4;
    while (1)
    {
      v86 = 0;
      v87 = 0;
      v88 = 0;
      __p[0] = 0;
      __p[1] = 0;
      v85 = 0;
      v82 = v10;
      sub_24BCB9454(&v83, v79, &v82);
      v76 = v10;
      v11 = sub_24BCB947C(&v83);
      v12 = 0;
      v13 = 0;
      v14 = -1;
      v15 = -1;
      while (1)
      {
        v82 = v11;
        if (v11 == -1)
        {
          break;
        }

        v16 = v87;
        if (v87 >= v88)
        {
          v18 = (v87 - v86) >> 2;
          if ((v18 + 1) >> 62)
          {
            sub_24BC8E01C();
          }

          v19 = (v88 - v86) >> 1;
          if (v19 <= v18 + 1)
          {
            v19 = v18 + 1;
          }

          if (v88 - v86 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          if (v20)
          {
            sub_24BC92E0C(&v86, v20);
          }

          *(4 * v18) = v11;
          v17 = 4 * v18 + 4;
          v21 = (4 * v18 - (v87 - v86));
          memcpy(v21, v86, v87 - v86);
          v22 = v86;
          v86 = v21;
          v87 = v17;
          v88 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v87 = v11;
          v17 = (v16 + 4);
        }

        v87 = v17;
        v23 = sub_24BC9ECE4(a1, *(a1 + 180), v82);
        if ((*v23 & v24) != 0 || (v25 = sub_24BCB9024(v79, &v82), v26 = sub_24BC9ECE4(a1, *(a1 + 180), *v25), (*v26 & v27) != 0))
        {
          v28 = sub_24BC9ECE4(a1, *(a1 + 180), v82);
          v30 = v29;
          v31 = *v28;
          v32 = __p[0];
          v33 = __p[1];
          v81 = 1;
          sub_24BDCE2C4(__p, &v81);
          if ((v31 & v30) == 0)
          {
            v14 = (v33 - v32) >> 2;
          }

          ++v12;
        }

        else if ((*(*a2 + ((v82 >> 3) & 0x1FFFFFF8)) >> v82) & 1) != 0 || (v34 = sub_24BCB9024(v79, &v82), ((*(*a2 + ((*v34 >> 3) & 0x1FFFFFF8)) >> *v34)))
        {
          v36 = __p[0];
          v35 = __p[1];
          v81 = 0;
          sub_24BDCE2C4(__p, &v81);
          if (v15 == -1)
          {
            v15 = (v35 - v36) >> 2;
          }

          ++v13;
        }

        else
        {
          v81 = 2;
          sub_24BDCE2C4(__p, &v81);
        }

        v11 = sub_24BCB947C(&v83);
      }

      if (v12 >= 3)
      {
        break;
      }

      if (!v13 || v13 == 1 && !v12)
      {
        goto LABEL_55;
      }

      if (v12)
      {
        v15 = v14;
      }

      v37 = v86;
      v38 = v76;
      if (v87 != v86)
      {
        LODWORD(v39) = 0;
        v40 = (v87 - v86) >> 2;
        v41 = __p[0];
        v42 = v76;
        do
        {
          v43 = (v39 + v15) % v40;
          v44 = sub_24BC9ECE4(a1, *(a1 + 180), *&v37[4 * v43]);
          if ((*v44 & v45) == 0)
          {
            if (v39)
            {
              if (v41[v43])
              {
                v46 = v75;
              }

              else
              {
                v42 = v75;
                v46 = v75 + 1;
              }

              LODWORD(v75) = v46;
            }

            if (v42 == v76)
            {
              v42 = v76;
            }

            else
            {
              v47 = (*(a1 + 56) + 16 * v73);
              v49 = *v47;
              v48 = v47[1];
              if (v48)
              {
                atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_24BC9EC78(v48);
              }

              v50 = sub_24BCB9024(v79, &v86[4 * v43]);
              v51 = 0;
              v52 = *(v49 + 40) + 12 * *(v50 + 16);
              while (*(v52 + v51) != v76)
              {
                v51 += 4;
                if (v51 == 12)
                {
                  goto LABEL_52;
                }
              }

              *(v52 + v51) = v42;
            }
          }

LABEL_52:
          v39 = (v39 + 1);
          v37 = v86;
          v40 = (v87 - v86) >> 2;
        }

        while (v40 > v39);
      }

LABEL_56:
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      if (v86)
      {
        v87 = v86;
        operator delete(v86);
      }

      if (v12 >= 3)
      {
        return 0;
      }

      v10 = (v38 + 1);
      v7 = a4;
      if (v10 >= (*(a1 + 112) - *(a1 + 104)) >> 2)
      {
        goto LABEL_62;
      }
    }

    *a6 = 102;
LABEL_55:
    v38 = v76;
    goto LABEL_56;
  }

LABEL_62:
  v53 = (*(a1 + 80) + 16 * a3);
  v55 = *v53;
  v54 = v53[1];
  if (v54)
  {
    atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v54);
  }

  (*(*v55 + 32))(v55, v75);
  sub_24BD3EC5C(a5, v75);
  sub_24BCB2008(&v86, 3uLL);
  if (*(a1 + 160) != *(a1 + 152))
  {
    v56 = 0;
    v57 = 0;
    v78 = v7;
    do
    {
      v58 = (*(a1 + 56) + 16 * v78);
      v60 = *v58;
      v59 = v58[1];
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v59);
      }

      v61 = *(v60 + 40);
      v80 = v57;
      LODWORD(__p[0]) = v57;
      sub_24BCD567C(a1, __p, &v86);
      v62 = 0;
      v63 = v61 + 12 * v56;
      do
      {
        v64 = *&v86[4 * v62];
        v65 = (*(a1 + 8) + 16 * *(a1 + 176));
        v67 = *v65;
        v66 = v65[1];
        if (v66)
        {
          atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v66);
        }

        v68 = 0;
        v83 = *(*(v67 + 40) + 16 * v64);
        do
        {
          *&__p[v68] = *(&__p[-2] + v68);
          ++v68;
        }

        while (v68 != 3);
        v69 = *a5 + 24 * *(v63 + 4 * v62);
        *v69 = *__p;
        *(v69 + 16) = v85;
        ++v62;
      }

      while (v62 != 3);
      v56 = (v80 + 1);
      v57 = v80 + 1;
    }

    while (v56 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  return 1;
}

void sub_24BDCE26C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v23 = *(v21 - 104);
  if (v23)
  {
    *(v21 - 96) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDCE2C4(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 2) + 1;
    if (v8 >> 62)
    {
      sub_24BC8E01C();
    }

    v9 = v3 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      sub_24BC8DFE8();
    }

    v11 = (4 * (v7 >> 2));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t sub_24BDCE3C4(void *a1, unsigned int a2, unsigned int a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v13 = (a1[10] + 16 * a2);
  v15 = *v13;
  v14 = v13[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v14);
  }

  *a9 = (*(*v15 + 16))(v15);
  *(a9 + 4) = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  sub_24BDD4CF0(&v94, (a1[14] - a1[13]) >> 2);
  v75 = a3;
  v16 = (a1[20] - a1[19]) >> 2;
  LOWORD(__p) = 0;
  BYTE2(__p) = 0;
  sub_24BDD4DF8(v93, v16, &__p);
  if (a1[20] != a1[19])
  {
    v17 = 0;
    v18 = 0;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        if (*(*(*a4 + 24 * v17) + 4 * i) != -1 && *(*a8 + 12 * v18 + 4 * i) && (*(v93[0] + 3 * v18 + i) & 1) == 0)
        {
          sub_24BCB2008(&__p, 3uLL);
          LODWORD(v89[0]) = v18;
          sub_24BCD567C(a1, v89, &__p);
          operator new();
        }
      }

      v17 = ++v18;
    }

    while (v18 < ((a1[20] - a1[19]) >> 2));
  }

  __p = 0;
  v91 = 0;
  v92 = 0;
  sub_24BDD4E90(v89, (a1[14] - a1[13]) >> 2);
  v21 = a1[13];
  v20 = a1[14];
  if (v20 != v21)
  {
    v22 = 0;
    v23 = 0;
    v24 = v89[0];
    do
    {
      v25 = v22 >> 6;
      v26 = 1 << v22;
      v24[v22 >> 6] &= ~(1 << v22);
      if ((*(v94 + 24 * v22 + 16) | 2) != 2 || *(*a7 + 4 * v22))
      {
        LODWORD(v86) = v23;
        sub_24BC97D60(&__p, &v86);
        v24 = v89[0];
        *(v89[0] + v25) |= v26;
        v21 = a1[13];
        v20 = a1[14];
      }

      v22 = ++v23;
    }

    while (v23 < ((v20 - v21) >> 2));
  }

  v27 = __p;
  v77 = a1;
  v78 = v91;
  if (__p != v91)
  {
    do
    {
      v81 = v27;
      v28 = *v27;
      v29 = v94 + 24 * *v27;
      v30 = *(v29 + 16);
      if (v30)
      {
        for (j = 0; j != v30; ++j)
        {
          v86 = 0;
          v87 = 0;
          v88 = 0;
          v84 = v28;
          *&v85 = -1;
          *(&v85 + 1) = -1;
          sub_24BDCEBBC(&v86, &v84);
          v32 = *(v29 + 16);
          if (v32)
          {
            v33 = *(v29 + 8);
            v34 = *(v33 + 4);
            v83 = *(v33 + 20);
            v36 = *v33;
            v35 = v33[1];
            *(v36 + 8) = v35;
            *v35 = v36;
            *(v29 + 16) = v32 - 1;
            while (1)
            {
              operator delete(v33);
              v37 = v84;
              v84 = v34;
              v85 = v83;
              v38 = v94;
              sub_24BDCEBBC(&v86, &v84);
              v39 = (v38 + 24 * v34);
              v40 = v39[1];
              if (v40 == v39)
              {
                v41 = v39;
              }

              else
              {
                while (v37 != *(v40 + 4))
                {
                  v40 = v40[1];
                  if (v40 == v39)
                  {
                    v40 = v39;
                    break;
                  }
                }

                v41 = v40;
                v40 = v40[1];
              }

              v42 = *v41;
              *(v42 + 8) = v40;
              *v40 = v42;
              --v39[2];
              operator delete(v41);
              if (v39[2] != 1 || ((*(v89[0] + ((v84 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v84) & 1) != 0)
              {
                break;
              }

              v33 = v39[1];
              v34 = *(v33 + 4);
              v83 = *(v33 + 20);
              v44 = *v33;
              v43 = v33[1];
              *(v44 + 8) = v43;
              *v43 = v44;
              v39[2] = 0;
            }

            sub_24BDCECC4(&v95, &v86);
          }

          if (v86)
          {
            v87 = v86;
            operator delete(v86);
          }
        }
      }

      v27 = v81 + 1;
    }

    while (v81 + 1 != v78);
  }

  if (v89[0])
  {
    operator delete(v89[0]);
  }

  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v93[0])
  {
    v93[1] = v93[0];
    operator delete(v93[0]);
  }

  v93[0] = &v94;
  sub_24BDD4D74(v93);
  v45 = a9 + 8;
  *(a9 + 16) = *(a9 + 8);
  v46 = (v77[7] + 16 * v75);
  v48 = *v46;
  v47 = v46[1];
  if (v47)
  {
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v47);
  }

  v49 = v95;
  v82 = v96;
  if (v95 != v96)
  {
    v50 = 0;
    while (1)
    {
      v52 = *v49;
      v51 = v49[1];
      v53 = *(*v49 + 28);
      v54 = *(*v49 + 24);
      if (0xCCCCCCCCCCCCCCCDLL * ((v51 - *v49) >> 2) < 3)
      {
        v55 = *(v48 + 40);
      }

      else
      {
        v55 = *(v48 + 40);
        v56 = v55 + 12 * v54;
        v57 = *(v56 + 4 * ((v53 + 1) % 3));
        if (v57 == *(v55 + 12 * v52[11] + 4 * v52[12]) || v57 == *(v55 + 12 * v52[13] + 4 * v52[14]))
        {
          goto LABEL_53;
        }

        v53 = v52[9];
        v54 = v52[8];
      }

      v56 = v55 + 12 * v54;
LABEL_53:
      v58 = v52 + 5;
      if (v51 != v52 + 5)
      {
        v59 = *(v56 + 4 * v53);
        do
        {
          v60 = v58[1];
          v61 = v58[2];
          v62 = *(v48 + 40);
          v63 = *(v62 + 12 * v60 + 4 * v61);
          v64 = v59 == v63;
          if (v59 == v63)
          {
            v65 = v58[1];
          }

          else
          {
            v65 = v58[3];
          }

          if (!v64)
          {
            LODWORD(v61) = v58[4];
          }

          v66 = 3 * v65;
          v67 = v62 + 12 * v65;
          v59 = *(v67 + 4 * ((v61 + 1) % 3));
          v68 = *(*a5 + 24 * v65);
          if (v64)
          {
            v60 = v58[3];
          }

          v69 = *(v68 + 4 * v61);
          v70 = v62 + 12 * v60;
          v71 = *(v70 + 4 * v69);
          LODWORD(v70) = *(v70 + 4 * ((v69 + 1) % 3));
          v72 = *(*a6 + 4 * v66 + 4 * v61);
          LODWORD(v94) = *(v67 + 4 * v61);
          *(&v94 + 4) = __PAIR64__(v72, v70);
          HIDWORD(v94) = v50;
          sub_24BDCED04(v45, &v94);
          v73 = v49[1];
          if (v58 == v73 - 5)
          {
            *&v94 = __PAIR64__(v71, v59);
            *(&v94 + 1) = __PAIR64__(v50, v72);
            sub_24BDCED04(v45, &v94);
            v73 = v49[1];
          }

          v58 += 5;
        }

        while (v58 != v73);
      }

      ++v50;
      v49 += 3;
      if (v49 == v82)
      {
        goto LABEL_68;
      }
    }
  }

  v50 = 0;
LABEL_68:
  *(a9 + 4) = v50;
  *&v94 = &v95;
  sub_24BC8EE84(&v94);
  return 1;
}

void sub_24BDCEB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v35 = *(v33 - 160);
  if (v35)
  {
    *(v33 - 152) = v35;
    operator delete(v35);
  }

  *(v33 - 160) = v33 - 136;
  sub_24BDD4D74((v33 - 160));
  *(v33 - 136) = v33 - 112;
  sub_24BC8EE84((v33 - 136));
  _Unwind_Resume(a1);
}

void sub_24BDCEBBC(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_24BC8E01C();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_24BCB9504(a1, v11);
    }

    v12 = 20 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 4);
    *v12 = v13;
    v7 = 20 * v8 + 20;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 4);
    *v5 = v6;
    v7 = v5 + 20;
  }

  *(a1 + 8) = v7;
}

void *sub_24BDCECC4(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_24BDD4F98(a1, a2);
  }

  else
  {
    sub_24BDD4F38(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

__int128 *sub_24BDCED04(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_24BDD5150(a1, a2);
  }

  else
  {
    *v3 = *a2;
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

BOOL sub_24BDCED4C(uint64_t *a1, void *a2, const void **a3, const void **a4, const void **a5)
{
  v9 = (*(*a2 + 16))(a2);
  sub_24BD4308C(v112, v9);
  sub_24BD4308C(__p, v9);
  if (v9 < 1)
  {
    v10 = 1;
LABEL_7:
    sub_24BCB8D20(a3, 12 * v9);
    sub_24BCB8D20(a4, 12 * v9);
    sub_24BDAF1BC(a5, 12 * v9);
    if (v9 >= 1)
    {
      v106 = v10;
      v53 = 0;
      v54 = 0;
      v107 = v9 & 0x7FFFFFFF;
      v109 = a4;
      do
      {
        v55 = 3;
        v108 = v53;
        v56 = v54;
        do
        {
          v57 = v9;
          v58 = *(__p[0] + v53);
          v113 = *(a2[5] + 12 * v54 + 4);
          v114 = v56;
          sub_24BC97D60(a3, &v114);
          sub_24BC97D60(a4, &v113);
          v60 = a5[1];
          v59 = a5[2];
          if (v60 >= v59)
          {
            v62 = *a5;
            v63 = v60 - *a5;
            v64 = v63 >> 3;
            v65 = (v63 >> 3) + 1;
            if (v65 >> 61)
            {
              goto LABEL_66;
            }

            v66 = v59 - v62;
            if (v66 >> 2 > v65)
            {
              v65 = v66 >> 2;
            }

            v67 = v66 >= 0x7FFFFFFFFFFFFFF8;
            v68 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v67)
            {
              v68 = v65;
            }

            if (v68)
            {
              sub_24BC91F60(a5, v68);
            }

            *(8 * v64) = v58;
            v61 = (8 * v64 + 8);
            memcpy(0, v62, v63);
            v69 = *a5;
            *a5 = 0;
            a5[1] = v61;
            a5[2] = 0;
            if (v69)
            {
              operator delete(v69);
            }

            a4 = v109;
          }

          else
          {
            *v60 = v58;
            v61 = v60 + 8;
          }

          a5[1] = v61;
          v70 = *(__p[0] + v53);
          v113 = *(a2[5] + 12 * v54);
          v114 = v56;
          sub_24BC97D60(a3, &v114);
          sub_24BC97D60(a4, &v113);
          v71 = -v70;
          v73 = a5[1];
          v72 = a5[2];
          if (v73 >= v72)
          {
            v75 = *a5;
            v76 = v73 - *a5;
            v77 = v76 >> 3;
            v78 = (v76 >> 3) + 1;
            if (v78 >> 61)
            {
              goto LABEL_66;
            }

            v79 = v72 - v75;
            if (v79 >> 2 > v78)
            {
              v78 = v79 >> 2;
            }

            v67 = v79 >= 0x7FFFFFFFFFFFFFF8;
            v80 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v67)
            {
              v80 = v78;
            }

            if (v80)
            {
              sub_24BC91F60(a5, v80);
            }

            *(8 * v77) = v71;
            v74 = (8 * v77 + 8);
            memcpy(0, v75, v76);
            v81 = *a5;
            *a5 = 0;
            a5[1] = v74;
            a5[2] = 0;
            if (v81)
            {
              operator delete(v81);
            }

            a4 = v109;
          }

          else
          {
            *v73 = v71;
            v74 = v73 + 1;
          }

          a5[1] = v74;
          v82 = *(v112[0] + v53);
          v113 = *(a2[5] + 12 * v54 + 8);
          v114 = v56;
          sub_24BC97D60(a3, &v114);
          sub_24BC97D60(a4, &v113);
          v84 = a5[1];
          v83 = a5[2];
          if (v84 >= v83)
          {
            v86 = *a5;
            v87 = v84 - *a5;
            v88 = v87 >> 3;
            v89 = (v87 >> 3) + 1;
            if (v89 >> 61)
            {
              goto LABEL_66;
            }

            v90 = v83 - v86;
            if (v90 >> 2 > v89)
            {
              v89 = v90 >> 2;
            }

            v67 = v90 >= 0x7FFFFFFFFFFFFFF8;
            v91 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v67)
            {
              v91 = v89;
            }

            if (v91)
            {
              sub_24BC91F60(a5, v91);
            }

            *(8 * v88) = v82;
            v85 = (8 * v88 + 8);
            memcpy(0, v86, v87);
            v92 = *a5;
            *a5 = 0;
            a5[1] = v85;
            a5[2] = 0;
            if (v92)
            {
              operator delete(v92);
            }

            a4 = v109;
          }

          else
          {
            *v84 = v82;
            v85 = v84 + 8;
          }

          a5[1] = v85;
          v93 = *(v112[0] + v53);
          v113 = *(a2[5] + 12 * v54);
          v114 = v56;
          sub_24BC97D60(a3, &v114);
          sub_24BC97D60(a4, &v113);
          v94 = -v93;
          v96 = a5[1];
          v95 = a5[2];
          if (v96 >= v95)
          {
            v98 = *a5;
            v99 = v96 - *a5;
            v100 = v99 >> 3;
            v101 = (v99 >> 3) + 1;
            if (v101 >> 61)
            {
LABEL_66:
              sub_24BC8E01C();
            }

            v102 = v95 - v98;
            if (v102 >> 2 > v101)
            {
              v101 = v102 >> 2;
            }

            v67 = v102 >= 0x7FFFFFFFFFFFFFF8;
            v103 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v67)
            {
              v103 = v101;
            }

            if (v103)
            {
              sub_24BC91F60(a5, v103);
            }

            *(8 * v100) = v94;
            v97 = (8 * v100 + 8);
            memcpy(0, v98, v99);
            v104 = *a5;
            *a5 = 0;
            a5[1] = v97;
            a5[2] = 0;
            if (v104)
            {
              operator delete(v104);
            }

            a4 = v109;
          }

          else
          {
            *v96 = v94;
            v97 = v96 + 1;
          }

          a5[1] = v97;
          v9 = v57;
          v56 += v57;
          v53 += 8;
          --v55;
        }

        while (v55);
        ++v54;
        v53 = v108 + 24;
      }

      while (v54 != v107);
      v10 = v106;
    }
  }

  else
  {
    v10 = 0;
    v11 = *a1;
    v12 = (a2[5] + 8);
    v13 = (__p[0] + 16);
    v14 = (v112[0] + 8);
    v15 = 1;
    v16 = v9 & 0x7FFFFFFF;
    while (1)
    {
      v17 = (v11 + 24 * *v12);
      v18 = (v11 + 24 * *(v12 - 1));
      v19 = v17[1];
      v20 = v18[1];
      v21 = *v17 - *v18;
      v22 = v19 - v20;
      v23 = v17[2];
      v24 = v18[2];
      v25 = v23 - v24;
      v26 = (v11 + 24 * *(v12 - 2));
      v27 = v26[1];
      v28 = *v26 - *v17;
      v29 = v27 - v19;
      v30 = v26[2];
      v31 = v30 - v23;
      v32 = v22 * v31 - v25 * v29;
      v33 = v25 * v28 - v21 * v31;
      v34 = v21 * v29 - v22 * v28;
      v35 = sqrt(v33 * v33 + v32 * v32 + v34 * v34);
      if (v35 <= 1.0e-16)
      {
        break;
      }

      v12 += 3;
      v36 = v24 - v30;
      v37 = v20 - v27;
      v38 = *v18 - *v26;
      v39 = v32 / v35;
      v40 = v33 / v35;
      v41 = v34 / v35;
      v42 = sqrt(v37 * v37 + v38 * v38 + v36 * v36);
      v43 = sqrt(v29 * v29 + v28 * v28 + v31 * v31);
      v44 = v40 * v36 - v34 / v35 * v37;
      v45 = v41 * v38 - v39 * v36;
      v46 = v39 * v37 - v40 * v38;
      v47 = sqrt(v45 * v45 + v44 * v44 + v46 * v46);
      *(v14 - 1) = v42 / v35 * (v44 / v47);
      *v14 = v42 / v35 * (v45 / v47);
      v14[1] = v42 / v35 * (v46 / v47);
      v48 = v40 * v31 - v41 * v29;
      v49 = v41 * v28 - v39 * v31;
      v50 = v39 * v29 - v40 * v28;
      v51 = sqrt(v49 * v49 + v48 * v48 + v50 * v50);
      v52 = v43 / v35;
      v10 = v15 >= (v9 & 0x7FFFFFFF);
      *(v13 - 2) = v52 * (v48 / v51);
      *(v13 - 1) = v52 * (v49 / v51);
      *v13 = v52 * (v50 / v51);
      v13 += 3;
      ++v15;
      v14 += 3;
      if (!--v16)
      {
        goto LABEL_7;
      }
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v112[0])
  {
    v112[1] = v112[0];
    operator delete(v112[0]);
  }

  return v10;
}

void sub_24BDCF3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDCF40C(uint64_t *a1, void *a2, uint64_t *a3)
{
  v6 = (*(*a2 + 16))(a2);
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    v9 = a2[5];
    v10 = *a1;
    v11 = *a3;
    do
    {
      v12 = 0;
      v13 = (v9 + 12 * v8);
      v14 = v13[1];
      v15 = v10 + 24 * *v13;
      v16 = v10 + 24 * v13[2];
      v17 = v10 + 24 * v14;
      v18 = *(v11 + 8 * v8);
      do
      {
        if (v12 == 2)
        {
          v19 = 0;
        }

        else
        {
          v19 = v12 + 1;
        }

        v20 = (*(v15 + 8 * v12) - *(v16 + 8 * v12)) * (*(v17 + 8 * v19) - *(v16 + 8 * v19)) - (*(v15 + 8 * v19) - *(v16 + 8 * v19)) * (*(v17 + 8 * v12) - *(v16 + 8 * v12));
        v18 = v18 + v20 * v20;
        *(v11 + 8 * v8) = v18;
        ++v12;
      }

      while (v12 != 3);
      *(v11 + 8 * v8++) = sqrt(v18);
    }

    while (v8 != v7);
  }

  return 1;
}

void sub_24BDCF50C(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  v6 = a3[1];
  if (v6 != *a3)
  {
    v20 = v4;
    v21 = v5;
    v12 = 0;
    do
    {
      v13 = a1[1];
      v14 = *(v13 + 8 * v12);
      v15 = v12 + 1;
      v16 = *(v13 + 8 * (v12 + 1));
      if (v14 < v16)
      {
        do
        {
          v17 = *(*a3 + 4 * v12);
          v18 = *(a1[7] + 8 * v14);
          LODWORD(v19) = *(*a2 + 4 * *(a1[4] + 4 * v14));
          DWORD1(v19) = v17;
          *(&v19 + 1) = v18;
          sub_24BD6EF1C(a4, &v19);
          ++v14;
        }

        while (v16 != v14);
        v7 = *a3;
        v6 = a3[1];
      }

      ++v12;
    }

    while (v15 < (v6 - v7) >> 2);
  }
}

BOOL sub_24BDCF5D8(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  v7 = a3;
  v8 = (*(a1 + 56) + 16 * a3);
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v9);
    v11 = (*(a1 + 56) + 16 * v7);
    v12 = *v11;
    v9 = v11[1];
  }

  else
  {
    v12 = *v8;
  }

  v13 = *a2;
  v14 = (*a2 + 16 * *(*(v10 + 40) + 12 * a4));
  v15 = *v14;
  v16 = v14[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v9);
    v13 = *a2;
    v17 = (*(a1 + 56) + 16 * v7);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(*a2 + 16 * *(*(v12 + 40) + 12 * a4 + 4));
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v29 = v20;
      sub_24BC9EC78(v18);
      v20 = v29;
      v13 = *a2;
    }

    v12 = v19;
  }

  else
  {
    v20 = *(v13 + 16 * *(*(v12 + 40) + 12 * a4 + 4));
  }

  v21 = *(&v20 + 1);
  v22 = *&v20;
  v23 = v16;
  v24 = v15;
  v25 = (v13 + 16 * *(*(v12 + 40) + 12 * a4 + 8));
  v26 = *v25;
  v27 = v25[1];
  return ((((v22 - v24) * (v27 - v23)) - ((v21 - v23) * (v26 - v24))) * 0.5) < 0.0;
}

uint64_t sub_24BDCF750(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (*(a1 + 160) == *(a1 + 152))
  {
    return 0;
  }

  LODWORD(v5) = 0;
  LODWORD(v6) = 0;
  do
  {
    v5 = (v5 + sub_24BDCF5D8(a1, a2, a3, v6));
    v6 = (v6 + 1);
  }

  while (v6 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  return v5;
}

uint64_t sub_24BDCF7D4(void *a1, uint64_t *a2, unsigned int a3, double a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, int *a10, void *a11, uint64_t a12, uint64_t a13)
{
  v246 = *MEMORY[0x277D85DE8];
  v242 = 0;
  v243 = 0;
  v244 = 0;
  v239 = 0;
  v240 = 0;
  v241 = 0;
  v238 = 0u;
  *v237 = 0u;
  *v236 = 0u;
  *v234 = 0u;
  v235 = 0u;
  v232 = 0;
  v231 = 0;
  v233 = 0;
  v229 = 0;
  v228 = 0;
  v230 = 0;
  v226 = 0;
  v225 = 0;
  v227 = 0;
  v20 = a1[14] - a1[13];
  if (!v20)
  {
    goto LABEL_7;
  }

  v21 = 0;
  v22 = 0;
  v23 = v20 >> 2;
  while (!*(*a9 + 4 * v21))
  {
    v21 = ++v22;
    if (v23 <= v22)
    {
      goto LABEL_7;
    }
  }

  LODWORD(v165[0]) = v22;
  sub_24BCB4670(&v239, v165);
  v24 = v239;
  if (v239 == v240)
  {
LABEL_7:
    LODWORD(v165[0]) = 0;
    sub_24BCB4670(&v239, v165);
    v24 = v239;
  }

  v162 = a8;
  v164 = a7;
  v159 = a9;
  v25 = v240;
  v27 = *a10;
  v26 = a10[1];
  v29 = *(a10 + 1);
  v28 = *(a10 + 2);
  v161 = (2 * *a10);
  sub_24BC92930(&v228, v161);
  v30 = v28 - v29;
  v160 = v30 >> 4;
  v31 = 2 * ((v30 >> 4) + ((v25 - v24) >> 2));
  HIDWORD(v234[0]) = v31;
  LODWORD(v234[0]) = 2 * (v26 + v27);
  sub_24BC92930(&v225, v31);
  *v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  *v222 = 0u;
  *v220 = 0u;
  v218 = 0;
  v217 = 0;
  v219 = 0;
  v215 = 0;
  v214 = 0;
  v216 = 0;
  v212 = 0;
  *&v211 = 0.0;
  v213 = 0;
  v32 = a1[7] + 16 * a3;
  v34 = *v32;
  v33 = *(v32 + 8);
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v33);
  }

  sub_24BDCED4C(a2, v34, &v217, &v214, &v211);
  v35 = (a1[20] - a1[19]) >> 2;
  v165[0] = 0;
  sub_24BCA2138(&v209, v35, v165);
  v36 = a1[7] + 16 * a3;
  v38 = *v36;
  v37 = *(v36 + 8);
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v37);
  }

  sub_24BDCF40C(a2, v38, &v209);
  *v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  *v167 = 0u;
  *v165 = 0u;
  sub_24BCA4108(__p, (v218 - v217) >> 2);
  v39 = v217;
  if (v218 != v217)
  {
    v40 = (v218 - v217) >> 2;
    v41 = v214;
    v42 = v211;
    if (v40 <= 1)
    {
      v40 = 1;
    }

    v43 = __p[0] + 8;
    do
    {
      v45 = *v39++;
      v44 = v45;
      v47 = *v41++;
      v46 = v47;
      v48 = *v42++;
      *(v43 - 2) = v44;
      *(v43 - 1) = v46;
      *v43 = v48;
      v43 += 2;
      --v40;
    }

    while (v40);
  }

  sub_24BDCB164(__p, -1431655765 * ((a2[1] - *a2) >> 3), 3 * ((a1[20] - a1[19]) >> 2), 0, v165);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  *v206 = 0u;
  *__p = 0u;
  v202 = 0;
  v201 = 0;
  v203 = 0;
  sub_24BC92930(&v201, ((v210 - v209) >> 2) + ((v210 - v209) >> 3));
  v49 = v209;
  v50 = v210 - v209;
  if (v210 != v209)
  {
    v51 = v50 >> 3;
    v52 = v201;
    if ((v50 >> 3) <= 1)
    {
      v51 = 1;
    }

    do
    {
      v53 = *v49;
      *v52 = *v49;
      *(v52 + v50) = v53;
      v54 = *v49++;
      v52[v50 >> 2] = v54;
      ++v52;
      --v51;
    }

    while (v51);
  }

  *v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  *v198 = 0u;
  *v196 = 0u;
  sub_24BDCB4A8(v165, v196);
  *v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  *v193 = 0u;
  *v191 = 0u;
  sub_24BDD0A40(v191, &v201);
  sub_24BDCAB48(v196, v191, __p);
  if (v194[1])
  {
    *&v195 = v194[1];
    operator delete(v194[1]);
  }

  if (v193[0])
  {
    v193[1] = v193[0];
    operator delete(v193[0]);
  }

  if (v191[1])
  {
    *&v192 = v191[1];
    operator delete(v191[1]);
  }

  if (v199[1])
  {
    *&v200 = v199[1];
    operator delete(v199[1]);
  }

  if (v198[0])
  {
    v198[1] = v198[0];
    operator delete(v198[0]);
  }

  if (v196[1])
  {
    *&v197 = v196[1];
    operator delete(v196[1]);
  }

  if (v201)
  {
    v202 = v201;
    operator delete(v201);
  }

  *v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  *v198 = 0u;
  v195 = 0u;
  *v196 = 0u;
  *v193 = 0u;
  *v194 = 0u;
  *v191 = 0u;
  v192 = 0u;
  sub_24BDCAB48(__p, v165, v191);
  v201 = 0x3FE0000000000000;
  sub_24BDCAA98(v191, &v201, v196);
  if (v194[1])
  {
    *&v195 = v194[1];
    operator delete(v194[1]);
  }

  if (v193[0])
  {
    v193[1] = v193[0];
    operator delete(v193[0]);
  }

  if (v191[1])
  {
    *&v192 = v191[1];
    operator delete(v191[1]);
  }

  sub_24BC94F74(&v201, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  sub_24BC94F74(v190, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v55 = a2[1];
  v56 = v55 - *a2;
  if (v55 != *a2)
  {
    v57 = 0;
    v58 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
    v59 = v201;
    v60 = v190[0];
    if (v58 <= 1)
    {
      v58 = 1;
    }

    do
    {
      *v59++ = v57;
      *v60++ = v57 + 1;
      v57 += 2;
      --v58;
    }

    while (v58);
  }

  v187 = 0;
  v188 = 0;
  v189 = 0;
  sub_24BD6EC64(&v187, (v200 - v199[1]) >> 2);
  sub_24BDCF50C(v196, &v201, &v201, &v187);
  sub_24BDCF50C(v196, v190, v190, &v187);
  sub_24BDCB164(&v187, v161, v161, 0, v220);
  v61 = a1[20] - a1[19];
  sub_24BCA1A48(v186, (v61 >> 1) + (v61 >> 2));
  v63 = a1[19];
  v62 = a1[20];
  v65 = v62 - v63;
  v64 = v62 == v63;
  v66 = (v62 - v63) >> 2;
  if (!v64)
  {
    v67 = v186[0];
    v68 = v65 >> 1;
    v69 = (*v164 + 8);
    v70 = 1;
    do
    {
      *v67 = *(v69 - 1);
      v67[v66] = *v69;
      v67[v68] = v69[1];
      v71 = v66 > v70++;
      ++v67;
      v69 += 3;
    }

    while (v71);
  }

  sub_24BCA1A48(v185, 3 * v66);
  v73 = a1[19];
  v72 = a1[20];
  v74 = v72 - v73;
  if (v72 != v73)
  {
    v75 = v74 >> 2;
    v76 = v185[0];
    v77 = v74 >> 1;
    v78 = (*v162 + 8);
    v79 = 1;
    do
    {
      *v76 = *(v78 - 1);
      v76[v75] = *v78;
      v76[v77] = v78[1];
      v71 = v75 > v79++;
      ++v76;
      v78 += 3;
    }

    while (v71);
  }

  v182 = 0;
  v183 = 0;
  v184 = 0;
  v179 = 0;
  v180 = 0;
  v181 = 0;
  sub_24BDCA898(__p, v186, &v182);
  *v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  *v193 = 0u;
  *v191 = 0u;
  v178 = 0xBFF0000000000000;
  sub_24BDCAA98(__p, &v178, v191);
  sub_24BDCA898(v191, v185, &v179);
  v80 = a4 * 0.5;
  v81 = v182;
  v82 = v183;
  if (v182 != v183)
  {
    v83 = v182;
    do
    {
      *v83 = v80 * *v83;
      ++v83;
    }

    while (v83 != v82);
  }

  v84 = v179;
  v85 = v180;
  if (v179 != v180)
  {
    v86 = v179;
    do
    {
      *v86 = v80 * *v86;
      ++v86;
    }

    while (v86 != v85);
  }

  v87 = a2[1] - *a2;
  if (v87)
  {
    v88 = 0xAAAAAAAAAAAAAAABLL * (v87 >> 3);
    v89 = v201;
    v90 = v228;
    v91 = v190[0];
    if (v88 <= 1)
    {
      v88 = 1;
    }

    do
    {
      v92 = *v81++;
      v93 = v92;
      v94 = *v89++;
      v90[v94] = v93;
      v95 = *v84++;
      v96 = v95;
      v97 = *v91++;
      v90[v97] = v96;
      --v88;
    }

    while (v88);
  }

  if (v194[1])
  {
    *&v195 = v194[1];
    operator delete(v194[1]);
  }

  if (v193[0])
  {
    v193[1] = v193[0];
    operator delete(v193[0]);
  }

  if (v191[1])
  {
    *&v192 = v191[1];
    operator delete(v191[1]);
  }

  if (v179)
  {
    v180 = v179;
    operator delete(v179);
  }

  if (v182)
  {
    v183 = v182;
    operator delete(v182);
  }

  if (v185[0])
  {
    v185[1] = v185[0];
    operator delete(v185[0]);
  }

  if (v186[0])
  {
    v186[1] = v186[0];
    operator delete(v186[0]);
  }

  if (v187)
  {
    v188 = v187;
    operator delete(v187);
  }

  if (v190[0])
  {
    v190[1] = v190[0];
    operator delete(v190[0]);
  }

  if (v201)
  {
    v202 = v201;
    operator delete(v201);
  }

  if (v199[1])
  {
    *&v200 = v199[1];
    operator delete(v199[1]);
  }

  if (v198[0])
  {
    v198[1] = v198[0];
    operator delete(v198[0]);
  }

  if (v196[1])
  {
    *&v197 = v196[1];
    operator delete(v196[1]);
  }

  if (v207[1])
  {
    *&v208 = v207[1];
    operator delete(v207[1]);
  }

  if (v206[0])
  {
    v206[1] = v206[0];
    operator delete(v206[0]);
  }

  if (__p[1])
  {
    *&v205 = __p[1];
    operator delete(__p[1]);
  }

  if (v168[1])
  {
    *&v169 = v168[1];
    operator delete(v168[1]);
  }

  if (v167[0])
  {
    v167[1] = v167[0];
    operator delete(v167[0]);
  }

  if (v165[1])
  {
    *&v166 = v165[1];
    operator delete(v165[1]);
  }

  if (v209)
  {
    v210 = v209;
    operator delete(v209);
  }

  if (*&v211 != 0.0)
  {
    v212 = v211;
    operator delete(v211);
  }

  v157 = (2 * (v26 + v27));
  v158 = v31;
  if (v214)
  {
    v215 = v214;
    operator delete(v214);
  }

  v156 = v26;
  if (v217)
  {
    v218 = v217;
    operator delete(v217);
  }

  if (v160)
  {
    v98 = 0;
    v163 = v30 & 0xFFFFFFFF0;
    v99 = 1;
    do
    {
      v100 = (*(a10 + 1) + v98);
      v101 = v100[2];
      if (v101 == 3)
      {
        v102 = 1;
      }

      else
      {
        v102 = v100[2];
      }

      if (v101 == 1)
      {
        v103 = 3;
      }

      else
      {
        v103 = v102;
      }

      if (v103 > 2)
      {
        v105 = 0;
        v104 = -1.0;
      }

      else
      {
        v104 = dbl_24BFED3B0[v103];
        v105 = qword_24BFED3C8[v103];
      }

      v106 = *v100;
      v107 = v100[1];
      LODWORD(v165[0]) = 2 * (v100[3] + v27);
      v108 = v165[0];
      sub_24BC97D60(&v242, v165);
      LODWORD(v165[0]) = v108 | 1;
      sub_24BC97D60(&v242, v165);
      v106 *= 2;
      LODWORD(v165[0]) = v99 - 1;
      HIDWORD(v165[0]) = v106;
      v165[1] = v105;
      sub_24BD6EF1C(&v231, v165);
      LODWORD(v165[0]) = v99 - 1;
      HIDWORD(v165[0]) = v106 | 1;
      *&v165[1] = -v104;
      sub_24BD6EF1C(&v231, v165);
      v165[0] = __PAIR64__(v106, v99);
      v165[1] = *&v104;
      sub_24BD6EF1C(&v231, v165);
      LODWORD(v165[0]) = v99;
      HIDWORD(v165[0]) = v106 | 1;
      v165[1] = v105;
      sub_24BD6EF1C(&v231, v165);
      LODWORD(v165[0]) = v99 - 1;
      HIDWORD(v165[0]) = 2 * v107;
      v165[1] = 0xBFF0000000000000;
      sub_24BD6EF1C(&v231, v165);
      LODWORD(v165[0]) = v99;
      HIDWORD(v165[0]) = (2 * v107) | 1;
      v165[1] = 0xBFF0000000000000;
      sub_24BD6EF1C(&v231, v165);
      LODWORD(v165[0]) = v99 - 1;
      HIDWORD(v165[0]) = v108;
      v165[1] = 0x3FF0000000000000;
      sub_24BD6EF1C(&v231, v165);
      LODWORD(v165[0]) = v99;
      HIDWORD(v165[0]) = v108 | 1;
      v165[1] = 0x3FF0000000000000;
      sub_24BD6EF1C(&v231, v165);
      v109 = v225 + v98;
      *v109 = 0;
      v109[1] = 0;
      v98 += 16;
      v99 += 2;
    }

    while (v163 != v98);
  }

  v214 = a1;
  v110 = v239;
  if (v240 != v239)
  {
    v111 = 0;
    v112 = 2 * v160;
    v113 = 1;
    do
    {
      sub_24BDD0AEC(&v214, v110[v111]);
      v114 = v225;
      *(v225 + v112) = 0;
      v114[v112 + 1] = 0;
      v111 = v113;
      v110 = v239;
      ++v113;
      v112 += 2;
    }

    while (v111 < (v240 - v239) >> 2);
  }

  sub_24BDCB164(&v231, v157, v158, 0, v234);
  v116 = a1[13];
  v115 = a1[14];
  if (v115 != v116)
  {
    v117 = 0;
    v118 = 0;
    do
    {
      if (*(*v159 + 4 * v117))
      {
        v119 = 2 * sub_24BDD0AEC(&v214, v118);
        LODWORD(v165[0]) = v119;
        sub_24BC97D60(&v242, v165);
        LODWORD(v165[0]) = v119 | 1;
        sub_24BC97D60(&v242, v165);
        v116 = a1[13];
        v115 = a1[14];
      }

      v117 = ++v118;
    }

    while (v118 < ((v115 - v116) >> 2));
  }

  v191[0] = 0;
  v191[1] = 0;
  *&v192 = 0;
  sub_24BCA1A48(v165, v157);
  v122 = v161;
  if (v191[0])
  {
    v191[1] = v191[0];
    operator delete(v191[0]);
  }

  *v191 = *v165;
  *&v192 = v166;
  sub_24BDC3328(__p, v157, v157, v120, v121);
  sub_24BDC3C70(v196, v158, v157 | 1);
  v165[0] = 0;
  sub_24BCA2138(&v217, v157, v165);
  v123 = v220[0];
  if (SLODWORD(v220[0]) >= 1)
  {
    v124 = 0;
    do
    {
      v125 = *(v220[1] + v124);
      v126 = v124 + 1;
      v127 = *(v220[1] + v124 + 1);
      if (v125 != v127)
      {
        do
        {
          v128 = *(v223[1] + v125);
          v129 = sub_24BDC2D54(__p, *(v222[0] + v125), v124);
          *v129 = v128 + *v129;
          ++v125;
        }

        while (v127 != v125);
        v123 = v220[0];
      }

      ++v124;
    }

    while (v126 < v123);
  }

  v130 = v234[0];
  if (SLODWORD(v234[0]) >= 1)
  {
    v131 = 0;
    do
    {
      v132 = *(v234[1] + v131);
      v133 = v131 + 1;
      v134 = *(v234[1] + v131 + 1);
      if (v132 != v134)
      {
        do
        {
          v135 = *(v237[1] + v132);
          v136 = sub_24BDC2964(v196, *(v236[0] + v132), v131);
          *v136 = v135 + *v136;
          ++v132;
        }

        while (v134 != v132);
        v130 = v234[0];
      }

      ++v131;
    }

    while (v133 < v130);
  }

  v137 = 2 * v156;
  if (2 * v156)
  {
    v138 = v161;
    do
    {
      *sub_24BDC2D54(__p, v138, v138) = 0x3EB0C6F7A0B5ED8DLL;
      ++v138;
      --v137;
    }

    while (v137);
  }

  if (v161)
  {
    v139 = v228;
    v140 = v217;
    do
    {
      v141 = *v139++;
      *v140++ = v141;
      --v122;
    }

    while (v122);
  }

  if (v158)
  {
    for (i = 0; i != v158; ++i)
    {
      v143 = *(v225 + i);
      *sub_24BDC2964(v196, i, v157) = -v143;
    }
  }

  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  *v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  *v167 = 0u;
  *v165 = 0u;
  std::__sort<std::__less<int,int> &,int *>();
  v144 = sub_24BCA29B4(v242, v243);
  sub_24BC8CAB0(&v242, (v144 - v242) >> 2);
  v145 = *(a12 + 84) + ((v191[1] - v191[0]) >> 3);
  *(a12 + 80) += (v243 - v242) >> 2;
  *(a12 + 84) = v145;
  *&v211 = 0.0;
  sub_24BCA1524(v245, a13);
  LOBYTE(v155) = 0;
  v146 = sub_24BDC117C(v165, v196, __p, v191, &v217, &v242, &v211, 0, v155, 5, 0, v245);
  sub_24BC9F00C(v245);
  if ((v146 & 1) == 0)
  {
    sub_24BDD4BC4(v165);
    if (v217)
    {
      v218 = v217;
      operator delete(v217);
    }

    v165[0] = v196;
    sub_24BDC35E0(v165);
    v165[0] = __p;
    sub_24BDC35E0(v165);
    v148 = v191[0];
LABEL_164:
    if (!v148)
    {
      goto LABEL_166;
    }

    goto LABEL_165;
  }

  v147 = *(a12 + 88);
  if (*&v211 > v147)
  {
    v147 = *&v211;
  }

  *(a12 + 88) = v147;
  sub_24BDD4BC4(v165);
  if (v217)
  {
    v218 = v217;
    operator delete(v217);
  }

  v165[0] = v196;
  sub_24BDC35E0(v165);
  v165[0] = __p;
  sub_24BDC35E0(v165);
  v148 = v191[0];
  v149 = a11[1] - *a11;
  if (!v149)
  {
    goto LABEL_164;
  }

  v150 = v149 >> 4;
  v151 = (*a11 + 8);
  v152 = 1;
  v153 = 1;
  do
  {
    *(v151 - 1) = v148[v152 - 1];
    *v151 = v148[v152];
    v151 += 2;
    v71 = v150 > v153++;
    v152 += 2;
  }

  while (v71);
LABEL_165:
  v191[1] = v148;
  operator delete(v148);
LABEL_166:
  if (v223[1])
  {
    *&v224 = v223[1];
    operator delete(v223[1]);
  }

  if (v222[0])
  {
    v222[1] = v222[0];
    operator delete(v222[0]);
  }

  if (v220[1])
  {
    *&v221 = v220[1];
    operator delete(v220[1]);
  }

  if (v225)
  {
    v226 = v225;
    operator delete(v225);
  }

  if (v228)
  {
    v229 = v228;
    operator delete(v228);
  }

  if (v231)
  {
    v232 = v231;
    operator delete(v231);
  }

  if (v237[1])
  {
    *&v238 = v237[1];
    operator delete(v237[1]);
  }

  if (v236[0])
  {
    v236[1] = v236[0];
    operator delete(v236[0]);
  }

  if (v234[1])
  {
    *&v235 = v234[1];
    operator delete(v234[1]);
  }

  if (v239)
  {
    v240 = v239;
    operator delete(v239);
  }

  if (v242)
  {
    v243 = v242;
    operator delete(v242);
  }

  return v146;
}

void sub_24BDD076C(_Unwind_Exception *a1)
{
  v3 = STACK[0x3A8];
  if (STACK[0x3A8])
  {
    STACK[0x3B0] = v3;
    operator delete(v3);
  }

  v4 = STACK[0x3C0];
  if (STACK[0x3C0])
  {
    STACK[0x3C8] = v4;
    operator delete(v4);
  }

  v5 = STACK[0x3D8];
  if (STACK[0x3D8])
  {
    STACK[0x3E0] = v5;
    operator delete(v5);
  }

  sub_24BC9EE94(&STACK[0x3F0]);
  v6 = *(v1 - 192);
  if (v6)
  {
    *(v1 - 184) = v6;
    operator delete(v6);
  }

  v7 = *(v1 - 168);
  if (v7)
  {
    *(v1 - 160) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void sub_24BDD0A40(uint64_t a1, uint64_t *a2)
{
  v4 = (a2[1] - *a2) >> 3;
  *a1 = v4;
  *(a1 + 4) = v4;
  sub_24BC92930((a1 + 8), v4 + 1);
  sub_24BC8CAB0((a1 + 32), (a2[1] - *a2) >> 3);
  sub_24BC92930((a1 + 56), (a2[1] - *a2) >> 3);
  v5 = *a2;
  v6 = a2[1] - *a2;
  v7 = *(a1 + 8);
  if ((v6 >> 3) >= 1)
  {
    v8 = 0;
    v9 = *(a1 + 32);
    v10 = *(a1 + 56);
    do
    {
      *(v7 + 8 * v8) = v8;
      *(v9 + 4 * v8) = v8;
      *(v10 + 8 * v8) = *(v5 + 8 * v8);
      ++v8;
    }

    while (((v6 >> 3) & 0x7FFFFFFF) != v8);
  }

  *(v7 + v6) = v6 >> 3;
}

uint64_t sub_24BDD0AEC(uint64_t *a1, int a2)
{
  v4 = *a1;
  LODWORD(__p[0]) = a2;
  v11 = *sub_24BCB9014((v4 + 104), __p);
  v5 = sub_24BC9ECE4(*a1, *(*a1 + 180), v11);
  if ((v6 & *v5) != 0)
  {
    v11 = *sub_24BCB9024(*a1 + 104, &v11);
  }

  v10 = *(sub_24BCB9024(*a1 + 104, &v11) + 16);
  sub_24BCB2008(__p, 3uLL);
  sub_24BCD567C(*a1, &v10, __p);
  v7 = 0;
  while (*(__p[0] + v7) != a2)
  {
    if (++v7 == 3)
    {
      v7 = 0xFFFFFFFFLL;
      break;
    }
  }

  __p[1] = __p[0];
  operator delete(__p[0]);
  return v7;
}

void sub_24BDD0BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDD0BE4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, _DWORD *a8, double a9, uint64_t a10)
{
  v92 = *MEMORY[0x277D85DE8];
  sub_24BE2493C(a1, &v82);
  for (i = 0; i != 3; ++i)
  {
    *(&v85 + i) = v82.f32[i];
  }

  v56 = a2;
  v57 = a3;
  for (j = 0; j != 3; ++j)
  {
    *(&v88 + j) = *(&v82 + j + 4);
  }

  v17 = sqrt((v89 - v86) * (v89 - v86) + (v88 - v85) * (v88 - v85) + (v90 - v87) * (v90 - v87));
  if (v17 > 0.00000001)
  {
    a9 = a9 / v17;
  }

  v81 = -1;
  sub_24BC836D4(&v82, off_27F078F78[0]);
  *v80 = 0;
  v62 = sub_24BCB74D4((a1 + 80), v80, &v82);
  if (SHIBYTE(v83) < 0)
  {
    operator delete(v82.i64[0]);
  }

  if (v62 == -1)
  {
    sub_24BC836D4(&v82, off_27F078F78[0]);
    *v80 = 0;
    sub_24BCDB6E4(a1 + 80, v80, &v82);
  }

  sub_24BC836D4(&v82, off_27F078FB8[0]);
  *&v80[4] = 0;
  *v80 = 0;
  v18 = sub_24BCCAA0C((a1 + 56), v80, &v82);
  v81 = v18;
  if (SHIBYTE(v83) < 0)
  {
    operator delete(v82.i64[0]);
  }

  if (v18 == -1)
  {
    sub_24BC836D4(&v82, off_27F078FB8[0]);
    sub_24BCD5A78(a1, &v81, &v82);
  }

  if (*(a1 + 160) != *(a1 + 152))
  {
    v19 = 0;
    v20 = 1;
    do
    {
      sub_24BCB2008(&v82, 3uLL);
      *v80 = v20 - 1;
      sub_24BCD567C(a1, v80, &v82);
      v21 = v82.i64[0];
      v22 = *v82.i64[0];
      v23 = *(v82.i64[0] + 4);
      v24 = *(v82.i64[0] + 8);
      v25 = (*(a1 + 56) + 16 * v81);
      v27 = *v25;
      v26 = v25[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v26);
        v21 = v82.i64[0];
        v28 = (*(v27 + 40) + 12 * v19);
        *v28 = v22;
        v28[1] = v23;
        v28[2] = v24;
        if (!v21)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v29 = (*(v27 + 40) + 12 * v19);
        *v29 = v22;
        v29[1] = v23;
        v29[2] = v24;
      }

      v82.i64[1] = v21;
      operator delete(v21);
LABEL_22:
      v19 = v20++;
    }

    while (v19 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  }

  v30 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  v82.i8[0] = 0;
  sub_24BC9FEFC(v80, v30, &v82);
  if (*(a1 + 160) != *(a1 + 152))
  {
    LODWORD(v31) = 0;
    do
    {
      sub_24BCB7458(&v82, 3uLL);
      LODWORD(v77) = v31;
      sub_24BCD573C(a1, &v77, &v82);
      v32 = 0;
      v33 = v82.i64[0];
      v34 = *v80;
      v35 = *a6 + 12 * v31;
      do
      {
        if (*(v35 + v32))
        {
          *(v34 + ((*(v33 + v32) >> 3) & 0x1FFFFFF8)) |= 1 << *(v33 + v32);
        }

        v32 += 4;
      }

      while (v32 != 12);
      if (v82.i64[0])
      {
        v82.i64[1] = v82.i64[0];
        operator delete(v82.i64[0]);
      }

      v31 = (v31 + 1);
    }

    while (v31 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  }

  v77 = 0;
  v78 = 0;
  v79 = 0;
  v36 = v62;
  if (sub_24BDCDCD8(a1, v80, v62, v81, &v77, a8))
  {
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    sub_24BDBD74C(a1, &v74, &v71, &v68);
    v38 = *(a1 + 152);
    v37 = *(a1 + 160);
    sub_24BDC0F0C(&v82, 3uLL);
    sub_24BDC0F88(v67, ((v37 - v38) >> 2));
    if (v82.i64[0])
    {
      v82.i64[1] = v82.i64[0];
      operator delete(v82.i64[0]);
    }

    LODWORD(__p) = -1;
    sub_24BD0E524(&v82, 3uLL, &__p);
    sub_24BDC10C0(v66, ((v37 - v38) >> 2), &v82);
    if (v82.i64[0])
    {
      v82.i64[1] = v82.i64[0];
      operator delete(v82.i64[0]);
    }

    sub_24BDBE94C(a1, v67, v66);
    v82.i64[1] = 0;
    v83 = 0;
    v84 = 0;
    sub_24BDCE3C4(a1, v62, v81, v67, v66, a4, a5, a6, &v82);
    v39 = (*(a1 + 80) + 16 * v62);
    v41 = *v39;
    v40 = v39[1];
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v40);
    }

    v42 = (*(*v41 + 16))(v41);
    sub_24BD419FC(&__p, v42);
    v43 = v81;
    sub_24BCA1524(v91, a10);
    v46 = sub_24BDCF7D4(a1, &v77, v43, a9, v44, v45, v56, v57, a5, &v82, &__p, a7, v91);
    sub_24BC9F00C(v91);
    if (v46)
    {
      v47 = __p;
      v48 = v65;
      if (v65 != __p)
      {
        v49 = 0;
        v50 = 1;
        do
        {
          v51 = v47[v49];
          v52 = (*(a1 + 80) + 16 * v36);
          v54 = *v52;
          v53 = v52[1];
          if (v53)
          {
            atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
            v63 = v51;
            sub_24BC9EC78(v53);
            v51 = v63;
            v47 = __p;
            v48 = v65;
          }

          *(*(v54 + 40) + 8 * v49) = vcvt_f32_f64(v51);
          v49 = v50++;
        }

        while (v49 < v48 - v47);
      }
    }

    else
    {
      *a8 = 103;
      v47 = __p;
    }

    if (v47)
    {
      v65 = v47;
      operator delete(v47);
    }

    if (v82.i64[1])
    {
      v83 = v82.i64[1];
      operator delete(v82.i64[1]);
    }

    v82.i64[0] = v66;
    sub_24BC8EE84(&v82);
    v82.i64[0] = v67;
    sub_24BC8EE84(&v82);
    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }

    if (v71)
    {
      v72 = v71;
      operator delete(v71);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }
  }

  else
  {
    v46 = 0;
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (*v80)
  {
    operator delete(*v80);
  }

  return v46;
}

void sub_24BDD1260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43)
{
  if (*(v43 - 201) < 0)
  {
    operator delete(*(v43 - 224));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDD13D8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, _DWORD *a5, uint64_t a6, double a7)
{
  v43 = *MEMORY[0x277D85DE8];
  v14 = a1 + 20;
  v15 = a1 + 19;
  sub_24BD4308C(v41, (a1[20] - a1[19]) >> 2);
  sub_24BD4308C(v40, (*v14 - *v15) >> 2);
  sub_24BD4308C(v39, (a1[20] - a1[19]) >> 2);
  sub_24BD4308C(v38, (a1[20] - a1[19]) >> 2);
  sub_24BDBD74C(a1, v40, v39, v38);
  sub_24BDBEAD8(a2, v40, v39, v41, 1.57079633);
  sub_24BD4308C(v37, (a1[20] - a1[19]) >> 2);
  sub_24BD4308C(v36, (a1[20] - a1[19]) >> 2);
  sub_24BDBEC0C(v40, v39, a2, v41, v37, v36);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  sub_24BDBF140(a1, a3, v37, v36, &v33, &v30);
  v16 = (a1[20] - a1[19]) >> 2;
  v27 = -1;
  LODWORD(v28) = -1;
  sub_24BDD52D8(v29, v16, &v27);
  sub_24BDBF8E0(a1, a3, &v33, &v30, v29);
  v17 = (a1[14] - a1[13]) >> 2;
  LODWORD(v26[0]) = 0;
  sub_24BD0E524(&v27, v17, v26);
  v18 = (a1[14] - a1[13]) >> 2;
  LODWORD(v25[0]) = 0;
  sub_24BD0E524(v26, v18, v25);
  sub_24BDBFE60(a1, v29, &v27, v26, (a4 + 76));
  v19 = (a1[20] - a1[19]) >> 2;
  v23 = 0x100000001;
  LODWORD(v24) = 1;
  sub_24BDD52D8(v25, v19, &v23);
  sub_24BDC00C4(a1, v29, v25);
  sub_24BD4308C(&v23, (a1[20] - a1[19]) >> 2);
  sub_24BD4308C(__p, (a1[20] - a1[19]) >> 2);
  sub_24BDC0818(a1, a2, v41, &v33, &v30, &v23, __p);
  sub_24BCA1524(v42, a6);
  v20 = sub_24BDD0BE4(a1, &v23, __p, v29, &v27, v25, a4, a5, a7, v42);
  sub_24BC9F00C(v42);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  if (v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }

  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

  return v20;
}

void sub_24BDD17A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  sub_24BC9F00C(v38 - 136);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a31)
  {
    operator delete(a31);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a37)
  {
    operator delete(a37);
  }

  v40 = *(v38 - 232);
  if (v40)
  {
    *(v38 - 224) = v40;
    operator delete(v40);
  }

  v41 = *(v38 - 208);
  if (v41)
  {
    *(v38 - 200) = v41;
    operator delete(v41);
  }

  v42 = *(v38 - 184);
  if (v42)
  {
    *(v38 - 176) = v42;
    operator delete(v42);
  }

  v43 = *(v38 - 160);
  if (v43)
  {
    *(v38 - 152) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

BOOL sub_24BDD1920(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v54 = *MEMORY[0x277D85DE8];
  sub_24BC95764(v49, (*(a1 + 112) - *(a1 + 104)) >> 2);
  sub_24BD78754(a1, v49);
  v46 = 0;
  v47 = 0;
  v48 = 0;
  memset(v44, 0, sizeof(v44));
  memset(v45, 0, sizeof(v45));
  memset(v42, 0, sizeof(v42));
  memset(v43, 0, sizeof(v43));
  sub_24BD789F0(a1, a2, v49, &v46, v45, v44, v43, v42);
  v10 = v46;
  v9 = v47;
  if (v47 != v46)
  {
    v25 = a2;
    v26 = a4;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v41 = 6;
    v39 = 0;
    v40 = 0;
    v14 = (v47 - v46) >> 4;
    v35 = 0;
    v36 = 0;
    v15 = v46;
    v37 = 0;
    v38 = 0;
    do
    {
      v16 = v14 + ~v11;
      v17 = v15[2 * v16];
      v18 = &v45[0][3 * v16];
      if (v12)
      {
        sub_24BCA1AC0(&v38, v35, v36, v36 - v35);
        sub_24BC97D30(&v35, (v17[14] - v17[13]) >> 2);
        sub_24BD79A94(v17, &v43[0][3 * (((v47 - v46) >> 4) - v11)], &v38, &v41, v18, &v35);
        if (!(v13 & 1 | ((*a5 & 1) == 0)))
        {
          if (*(a5 + 4) <= ((v17[20] - v17[19]) >> 2))
          {
            sub_24BCA1A48(v34, (v17[14] - v17[13]) >> 2);
            sub_24BCA1A48(v33, (v17[14] - v17[13]) >> 2);
            sub_24BD4308C(v32, (v17[14] - v17[13]) >> 2);
            sub_24BD4308C(v31, (v17[14] - v17[13]) >> 2);
            memset(v53, 0, 32);
            memset(v52, 0, sizeof(v52));
            memset(v51, 0, sizeof(v51));
            memset(v50, 0, sizeof(v50));
            sub_24BD3E4A8(v17, v32, v31, v34, v33, 0, v50);
            sub_24BDD4C70(v53);
            sub_24BC9F10C(v52);
            sub_24BC9F08C(v51);
            sub_24BC9F00C(v50);
            sub_24BCA18B0(v30, (v17[14] - v17[13]) >> 2);
            sub_24BCA18B0(&__p, (v17[14] - v17[13]) >> 2);
            if (v17[14] != v17[13])
            {
              v19 = 0;
              v20 = 1;
              do
              {
                v21 = (v32[0] + 24 * v19);
                *&v22 = vcvt_f32_f64(*v21);
                *&v23 = v21[1].f64[0];
                *(&v22 + 1) = v23;
                *(v30[0] + v19) = v22;
                v19 = v20++;
              }

              while (v19 < (v17[14] - v17[13]) >> 2);
            }

            v27 = 10;
            sub_24BD79D0C(v17, &v27, v18, v34, v33, v30, &v35, &__p, 1.0, 1.0, 1);
            sub_24BCA1AC0(&v35, __p, v29, (v29 - __p) >> 4);
            if (__p)
            {
              v29 = __p;
              operator delete(__p);
            }

            if (v30[0])
            {
              v30[1] = v30[0];
              operator delete(v30[0]);
            }

            if (v31[0])
            {
              v31[1] = v31[0];
              operator delete(v31[0]);
            }

            if (v32[0])
            {
              v32[1] = v32[0];
              operator delete(v32[0]);
            }

            if (v33[0])
            {
              v33[1] = v33[0];
              operator delete(v33[0]);
            }

            if (v34[0])
            {
              v34[1] = v34[0];
              operator delete(v34[0]);
            }

            v13 = 1;
          }

          else
          {
            v13 = 0;
          }
        }
      }

      else
      {
        sub_24BC97D30(&v35, (v17[14] - v17[13]) >> 2);
        sub_24BD79A14(v17, &v41, v18, &v35);
      }

      v15 = v46;
      v14 = (v47 - v46) >> 4;
      v11 = ++v12;
    }

    while (v14 > v12);
    sub_24BCA1AC0(&v38, v35, v36, v36 - v35);
    sub_24BD79A94(a1, v43[0], &v38, &v41, v25, v26);
    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }
  }

  v38 = v42;
  sub_24BC8EE84(&v38);
  v42[0] = v43;
  sub_24BC8EE84(v42);
  v43[0] = v44;
  sub_24BC8EE84(v43);
  v44[0] = v45;
  sub_24BC8EE84(v44);
  v45[0] = &v46;
  sub_24BCB7FC8(v45);
  if (v49[0])
  {
    v49[1] = v49[0];
    operator delete(v49[0]);
  }

  return v9 != v10;
}

void sub_24BDD1DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void **a37, uint64_t a38, uint64_t a39, uint64_t a40, void **a41, uint64_t a42, uint64_t a43, void **a44, uint64_t a45, uint64_t a46, void **a47, uint64_t a48, uint64_t a49, void **a50, uint64_t a51, uint64_t a52, char a53)
{
  v53[6] = &a41;
  sub_24BC8EE84(&a37);
  v53[10] = &a44;
  sub_24BC8EE84(&a41);
  v53[13] = &a47;
  sub_24BC8EE84(&a44);
  v53[16] = &a50;
  sub_24BC8EE84(&a47);
  v53[19] = &a53;
  sub_24BCB7FC8(&a50);
  v55 = v53[25];
  if (v55)
  {
    v53[26] = v55;
    operator delete(v55);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BDD1F0C(uint64_t a1)
{
  sub_24BDD4C70(a1 + 96);
  sub_24BC9F10C(a1 + 64);
  sub_24BC9F08C(a1 + 32);

  return sub_24BC9F00C(a1);
}

uint64_t sub_24BDD1F58(void *a1, void *a2, void *a3, long double **a4, long double **a5)
{
  v99 = *MEMORY[0x277D85DE8];
  sub_24BCA18B0(v94, (a1[14] - a1[13]) >> 2);
  sub_24BCA18B0(v93, (a1[20] - a1[19]) >> 2);
  sub_24BCA18B0(v92, (a1[14] - a1[13]) >> 2);
  sub_24BCA1A48(&v90, (a1[14] - a1[13]) >> 2);
  sub_24BCA1A48(v89, (a1[14] - a1[13]) >> 2);
  sub_24BD3EC5C(a2, (a1[20] - a1[19]) >> 2);
  sub_24BD3EC5C(a3, (a1[20] - a1[19]) >> 2);
  sub_24BC92930(a4, (a1[20] - a1[19]) >> 2);
  sub_24BC92930(a5, (a1[20] - a1[19]) >> 2);
  sub_24BD4308C(&v87, (a1[14] - a1[13]) >> 2);
  sub_24BD4308C(v85, (a1[14] - a1[13]) >> 2);
  memset(v98, 0, sizeof(v98));
  memset(v97, 0, sizeof(v97));
  memset(v96, 0, sizeof(v96));
  memset(v95, 0, sizeof(v95));
  sub_24BD3E4A8(a1, &v87, v85, &v90, v89, 0, v95);
  sub_24BDD4C70(v98);
  sub_24BC9F10C(v97);
  sub_24BC9F08C(v96);
  sub_24BC9F00C(v95);
  sub_24BD78640(a1, v94, v93);
  sub_24BCA18B0(v84, (a1[14] - a1[13]) >> 2);
  if (a1[14] == a1[13])
  {
    v15 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = (v87 + 24 * v10);
      *&v13 = vcvt_f32_f64(*v12);
      *&v14 = v12[1].f64[0];
      *(&v13 + 1) = v14;
      *(v84[0] + v10) = v13;
      v10 = v11;
      v15 = (a1[14] - a1[13]) >> 2;
    }

    while (v15 > v11++);
  }

  sub_24BCA18B0(__p, v15);
  LOBYTE(v80[0]) = 1;
  HIDWORD(v80[0]) = 1024;
  v18 = sub_24BDD1920(a1, v94, v17, __p, v80);
  v81 = 10;
  sub_24BD79D0C(a1, &v81, v94, &v90, v89, v84, __p, v92, 1.0, 1.0, v18);
  v19 = v90;
  if (v91 != v90)
  {
    v20 = (v91 - v90) >> 3;
    v21 = v89[0];
    if (v20 <= 1)
    {
      v20 = 1;
    }

    v22 = v90;
    do
    {
      *v22 = fabs(*v22);
      ++v22;
      *v21 = fabs(*v21);
      ++v21;
      --v20;
    }

    while (v20);
  }

  v23 = a1[14] - a1[13];
  if (v23)
  {
    v24 = 0;
    v25 = v23 >> 2;
    v26 = v84[0];
    v27 = v92[0];
    v28 = v89[0];
    do
    {
      v29 = vmulq_f32(v26[v24], v27[v24]);
      v29.i32[3] = 0;
      if (fabsf(vaddv_f32(*&vpaddq_f32(v29, v29))) < 0.707106781)
      {
        v30 = v19[v24];
        v19[v24] = v28[v24];
        v28[v24] = v30;
      }

      ++v24;
    }

    while (v25 > v24);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v84[0])
  {
    v84[1] = v84[0];
    operator delete(v84[0]);
  }

  if (v85[0])
  {
    v85[1] = v85[0];
    operator delete(v85[0]);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  sub_24BD4308C(&v87, (a1[14] - a1[13]) >> 2);
  v31 = a1[14] - a1[13];
  if (v31)
  {
    v32 = 0;
    v33 = 0;
    v34 = v31 >> 2;
    v35 = v94[0];
    v36 = v92[0];
    v37 = v87;
    do
    {
      v38 = v35[v32];
      v39 = v36[v32];
      v40 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v38, vextq_s8(v38, v38, 0xCuLL)), v38), vuzp2q_s32(vextq_s8(v39, v39, 4uLL), v39)), vzip2q_s32(vzip1q_s32(v39, vextq_s8(v39, v39, 0xCuLL)), v39), vuzp2q_s32(vextq_s8(v38, v38, 4uLL), v38));
      v41 = vmulq_f32(v40, v40);
      v41.i32[3] = 0;
      v42 = vpaddq_f32(v41, v41);
      v43 = vpaddq_f32(v42, v42);
      v44 = xmmword_24BFBD1C0;
      if (v43.f32[0] > 0.0)
      {
        v44 = vdivq_f32(v40, vsqrtq_f32(v43));
      }

      v45 = 0;
      *v84 = v44;
      do
      {
        *&v85[v45] = *(v84 + v45);
        ++v45;
      }

      while (v45 != 3);
      v46 = &v37[24 * v32];
      *v46 = *v85;
      *(v46 + 2) = v86;
      v32 = ++v33;
    }

    while (v34 > v33);
  }

  sub_24BD4308C(v85, (a1[20] - a1[19]) >> 2);
  sub_24BD4308C(v84, (a1[14] - a1[13]) >> 2);
  v47 = a1[20] - a1[19];
  v48 = v47 >> 2;
  if (v47)
  {
    v49 = 0;
    v50 = 0;
    v51 = v93[0];
    v52 = v85[0];
    do
    {
      for (i = 0; i != 3; ++i)
      {
        *&__p[i] = v51[4 * v50 + i];
      }

      v54 = &v52[24 * v49];
      *v54 = *__p;
      *(v54 + 2) = v83;
      v49 = ++v50;
    }

    while (v48 > v50);
  }

  v55 = a1[14] - a1[13];
  if (v55)
  {
    v56 = 0;
    v57 = 0;
    v58 = v55 >> 2;
    v59 = v92[0];
    v60 = v84[0];
    do
    {
      for (j = 0; j != 3; ++j)
      {
        *&__p[j] = v59[4 * v57 + j];
      }

      v62 = &v60[24 * v56];
      *v62 = *__p;
      *(v62 + 2) = v83;
      v56 = ++v57;
    }

    while (v58 > v57);
  }

  sub_24BCA1A48(__p, v48);
  sub_24BCA1A48(v80, (a1[20] - a1[19]) >> 2);
  sub_24BDBE2E8(a1, v85, v84, &v87, &v90, v89, a2, a3, __p, v80);
  v63 = *a4;
  v64 = a4[1] - *a4;
  if (v64)
  {
    v65 = v64 >> 3;
    v66 = __p[0];
    if (v65 <= 1)
    {
      v67 = 1;
    }

    else
    {
      v67 = v65;
    }

    do
    {
      v68 = *v66++;
      v69 = log1p(fabs(v68));
      *v63++ = 1.0 - 1.0 / (exp(-v69) + 1.0) + 0.1;
      --v67;
    }

    while (v67);
  }

  v71 = *a5;
  v70 = a5[1];
  v72 = v80[0];
  v73 = v70 - v71;
  if (v73)
  {
    v74 = v73 >> 3;
    if (v74 <= 1)
    {
      v75 = 1;
    }

    else
    {
      v75 = v74;
    }

    v76 = v80[0];
    do
    {
      v77 = *v76++;
      v78 = log1p(fabs(v77));
      *v71++ = 1.0 - 1.0 / (exp(-v78) + 1.0) + 0.1;
      --v75;
    }

    while (v75);
  }

  else if (!v80[0])
  {
    goto LABEL_55;
  }

  v80[1] = v72;
  operator delete(v72);
LABEL_55:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v84[0])
  {
    v84[1] = v84[0];
    operator delete(v84[0]);
  }

  if (v85[0])
  {
    v85[1] = v85[0];
    operator delete(v85[0]);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v89[0])
  {
    v89[1] = v89[0];
    operator delete(v89[0]);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v92[0])
  {
    v92[1] = v92[0];
    operator delete(v92[0]);
  }

  if (v93[0])
  {
    v93[1] = v93[0];
    operator delete(v93[0]);
  }

  if (v94[0])
  {
    v94[1] = v94[0];
    operator delete(v94[0]);
  }

  return 1;
}

void sub_24BDD2678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a39)
  {
    operator delete(a39);
  }

  v42 = *(v40 - 248);
  if (v42)
  {
    *(v40 - 240) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BDD27A4(void *a1, void *a2, void *a3)
{
  sub_24BCA18B0(v51, (a1[14] - a1[13]) >> 2);
  sub_24BCA18B0(v50, (a1[20] - a1[19]) >> 2);
  sub_24BCA18B0(v49, (a1[14] - a1[13]) >> 2);
  sub_24BD3EC5C(a2, (a1[20] - a1[19]) >> 2);
  sub_24BD3EC5C(a3, (a1[20] - a1[19]) >> 2);
  sub_24BD78640(a1, v51, v50);
  v47[0] = 1;
  v48 = 1024;
  v7 = sub_24BDD1920(a1, v51, v6, v49, v47);
  if (v7)
  {
    sub_24BD4308C(v46, (a1[14] - a1[13]) >> 2);
    v8 = a1[14] - a1[13];
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = v8 >> 2;
      v12 = v51[0];
      v13 = v49[0];
      v14 = v46[0];
      do
      {
        v15 = v12[v9];
        v16 = v13[v9];
        v17 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v15, vextq_s8(v15, v15, 0xCuLL)), v15), vuzp2q_s32(vextq_s8(v16, v16, 4uLL), v16)), vzip2q_s32(vzip1q_s32(v16, vextq_s8(v16, v16, 0xCuLL)), v16), vuzp2q_s32(vextq_s8(v15, v15, 4uLL), v15));
        v18 = vmulq_f32(v17, v17);
        v18.i32[3] = 0;
        v19 = vpaddq_f32(v18, v18);
        v20 = vpaddq_f32(v19, v19);
        v21 = xmmword_24BFBD1C0;
        if (v20.f32[0] > 0.0)
        {
          v21 = vdivq_f32(v17, vsqrtq_f32(v20));
        }

        v22 = 0;
        *__p = v21;
        do
        {
          *&v44[v22] = *(__p + v22);
          ++v22;
        }

        while (v22 != 3);
        v23 = &v14[24 * v9];
        *v23 = *v44;
        *(v23 + 2) = v45;
        v9 = ++v10;
      }

      while (v11 > v10);
    }

    sub_24BD4308C(v44, (a1[20] - a1[19]) >> 2);
    sub_24BD4308C(__p, (a1[14] - a1[13]) >> 2);
    v24 = a1[20] - a1[19];
    if (v24)
    {
      v25 = 0;
      v26 = 0;
      v27 = v24 >> 2;
      v28 = v50[0];
      v29 = v44[0];
      do
      {
        for (i = 0; i != 3; ++i)
        {
          *(&v41 + i) = v28[4 * v26 + i];
        }

        v31 = &v29[24 * v25];
        *v31 = v41;
        *(v31 + 2) = v42;
        v25 = ++v26;
      }

      while (v27 > v26);
    }

    v32 = a1[14] - a1[13];
    if (v32)
    {
      v33 = 0;
      v34 = 0;
      v35 = v32 >> 2;
      v36 = v49[0];
      v37 = __p[0];
      do
      {
        for (j = 0; j != 3; ++j)
        {
          *(&v41 + j) = v36[4 * v34 + j];
        }

        v39 = &v37[24 * v33];
        *v39 = v41;
        *(v39 + 2) = v42;
        v33 = ++v34;
      }

      while (v35 > v34);
    }

    sub_24BDBDF18(a1, v44, __p, v46, a2, a3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v44[0])
    {
      v44[1] = v44[0];
      operator delete(v44[0]);
    }

    if (v46[0])
    {
      v46[1] = v46[0];
      operator delete(v46[0]);
    }
  }

  if (v49[0])
  {
    v49[1] = v49[0];
    operator delete(v49[0]);
  }

  if (v50[0])
  {
    v50[1] = v50[0];
    operator delete(v50[0]);
  }

  if (v51[0])
  {
    v51[1] = v51[0];
    operator delete(v51[0]);
  }

  return v7;
}

void sub_24BDD2AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  v23 = *(v21 - 104);
  if (v23)
  {
    *(v21 - 96) = v23;
    operator delete(v23);
  }

  v24 = *(v21 - 80);
  if (v24)
  {
    *(v21 - 72) = v24;
    operator delete(v24);
  }

  v25 = *(v21 - 56);
  if (v25)
  {
    *(v21 - 48) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDD2B84(uint64_t a1, void *a2, uint64_t a3, char **a4, char **a5, int a6)
{
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  sub_24BCA1A48(v39, (*(a1 + 160) - *(a1 + 152)) >> 2);
  if (*(a1 + 160) != *(a1 + 152))
  {
    v11 = 0;
    v12 = 1;
    do
    {
      LODWORD(__p[0]) = v12 - 1;
      v13 = sub_24BC96B00(a1, __p);
      *(v39[0] + v11) = v13;
      v11 = v12++;
    }

    while (v11 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  }

  if (a6)
  {
    v14 = 0;
    do
    {
      if (&v43 != a4)
      {
        sub_24BD07E64(&v43, *a4, a4[1], (a4[1] - *a4) >> 3);
      }

      if (&v40 != a5)
      {
        sub_24BD07E64(&v40, *a5, a5[1], (a5[1] - *a5) >> 3);
      }

      sub_24BCB7458(__p, 3uLL);
      if (*(a1 + 160) != *(a1 + 152))
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v37 = v16;
          sub_24BCD573C(a1, &v37, __p);
          v17 = 0;
          v18 = *(v43 + v15);
          v19 = *(v40 + v15);
          v20 = 0.0;
          v21 = 0.0;
          v22 = 0.0;
          do
          {
            v23 = sub_24BCB9024(a1 + 104, (__p[0] + v17));
            v24 = sub_24BC9ECE4(a1, *(a1 + 180), *v23);
            if ((*v24 & v25) == 0)
            {
              v26 = sub_24BCB9024(a1 + 104, (__p[0] + v17));
              v27 = *(sub_24BCB9024(a1 + 104, v26) + 16);
              v28 = *(v39[0] + v27);
              v20 = v20 + v28;
              v29 = *&(*a4)[8 * v27];
              v30 = fabs(*(*a2 + 24 * v15 + 8) * *(*a2 + 24 * v27 + 8) + *(*a2 + 24 * v15) * *(*a2 + 24 * v27) + *(*a2 + 24 * v15 + 16) * *(*a2 + 24 * v27 + 16));
              v31 = v30 < 0.707106781;
              if (v30 >= 0.707106781)
              {
                v32 = *&(*a4)[8 * v27];
              }

              else
              {
                v32 = *&(*a5)[8 * v27];
              }

              if (!v31)
              {
                v29 = *&(*a5)[8 * v27];
              }

              v22 = v22 + v28 * v32;
              v21 = v21 + v28 * v29;
            }

            v17 += 4;
          }

          while (v17 != 12);
          if (v20 > 0.000001)
          {
            v33 = v39[0];
            v34 = *(v39[0] + v15);
            v35 = v20 * 0.5 + v34 * 0.5;
            *&(*a4)[8 * v15] = (v22 * 0.5 + v18 * v34 * 0.5) / v35;
            *&(*a5)[8 * v15] = (v21 * 0.5 + v19 * v33[v15] * 0.5) / v35;
          }

          v15 = ++v16;
        }

        while (v16 < ((*(a1 + 160) - *(a1 + 152)) >> 2));
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v14;
    }

    while (v14 != a6);
  }

  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return 1;
}