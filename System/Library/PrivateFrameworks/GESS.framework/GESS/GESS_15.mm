void sub_24BDBA84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BD4C0A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDBA884(uint64_t *a1)
{
  v29 = a1;
  v1 = std::__thread_local_data();
  v2 = *v29;
  *v29 = 0;
  pthread_setspecific(v1->__key_, v2);
  v3 = v29;
  v4 = v29[1];
  v5 = v29[5];
  pthread_set_qos_class_self_np(*v29[4], 0);
  v6 = v5 >> 6;
  v7 = 1 << v5;
  v8 = ~(1 << v5);
  do
  {
    v9 = *(v4 + 40);
    if (v9)
    {
      if ((*(*v9 + 48))(v9))
      {
        break;
      }
    }

    v36 = 0uLL;
    v37 = 0;
    std::mutex::lock((v4 + 208));
    v10 = v3[2];
    if (v10[5])
    {
      v11 = *(v10[1] + 8 * (v10[4] / 0xAAuLL)) + 24 * (v10[4] % 0xAAuLL);
      v13 = *v11;
      v12 = *(v11 + 8);
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v14 = *(&v36 + 1);
      *&v36 = v13;
      *(&v36 + 1) = v12;
      if (v14)
      {
        sub_24BC9EC78(v14);
      }

      v37 = *(v11 + 16);
      sub_24BDBAD88(v3[2]);
      *(*v3[3] + 8 * v6) &= v8;
    }

    std::mutex::unlock((v4 + 208));
    if (v36)
    {
      __ns.__rep_ = 0;
      v34 = 0;
      v35 = 0;
      memset(__p, 0, sizeof(__p));
      v15 = *(&v36 + 1);
      v31 = v36;
      if (*(&v36 + 1))
      {
        atomic_fetch_add_explicit((*(&v36 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v16 = sub_24BDB8A14(v4, &v31, v37, &__ns, __p);
      if (v15)
      {
        sub_24BC9EC78(v15);
      }

      v17 = *(v4 + 40);
      if (v17 && ((*(*v17 + 48))(v17) & 1) != 0)
      {
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        __p[0] = &__ns;
        sub_24BCB7FC8(__p);
        goto LABEL_36;
      }

      if (v16)
      {
        std::mutex::lock((v4 + 208));
        sub_24BCB820C((v4 + 152), &v36);
      }

      else
      {
        std::mutex::lock((v4 + 208));
        rep = __ns.__rep_;
        if (v34 != __ns.__rep_)
        {
          v24 = 0;
          v25 = 0;
          do
          {
            v26 = v3[2];
            v30[0] = __p[0] + 8 * (v25 >> 6);
            v30[1] = 1 << v25;
            sub_24BDBA1A4(v26, (rep + v24), v30);
            ++v25;
            rep = __ns.__rep_;
            v24 += 16;
          }

          while (v25 < (v34 - __ns.__rep_) >> 4);
        }
      }

      std::mutex::unlock((v4 + 208));
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      __p[0] = &__ns;
      sub_24BCB7FC8(__p);
    }

    else
    {
      __ns.__rep_ = 100000000;
      std::this_thread::sleep_for (&__ns);
      std::mutex::lock((v4 + 208));
      *(*v3[3] + 8 * v6) |= v7;
      std::mutex::unlock((v4 + 208));
      std::mutex::lock((v4 + 208));
      v18 = v3[3];
      v19 = v18[1];
      if (!v19)
      {
        goto LABEL_26;
      }

      v20 = 0;
      v21 = *v18;
      v22 = 1;
      do
      {
        v22 &= *(v21 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v20;
        ++v20;
      }

      while (v19 != v20);
      if (v22)
      {
LABEL_26:
        if (!*(v3[2] + 5))
        {
          std::mutex::unlock((v4 + 208));
LABEL_36:
          v27 = 0;
          goto LABEL_37;
        }
      }

      std::mutex::unlock((v4 + 208));
    }

    v27 = 1;
LABEL_37:
    if (*(&v36 + 1))
    {
      sub_24BC9EC78(*(&v36 + 1));
    }
  }

  while ((v27 & 1) != 0);
  sub_24BDBAD40(&v29);
  return 0;
}

uint64_t **sub_24BDBAD40(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_24BD4C0A8(v2);
    MEMORY[0x24C2548B0](v3, 0x1030C408CF434AALL);
  }

  return a1;
}

uint64_t sub_24BDBAD88(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[1] + 8 * (v2 / 0xAA)) + 24 * (v2 % 0xAA) + 8);
  if (v3)
  {
    sub_24BC9EC78(v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return sub_24BDBAE0C(a1, 1);
}

uint64_t sub_24BDBAE0C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0xAA)
  {
    a2 = 1;
  }

  if (v2 < 0x154)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 170;
  }

  return v4 ^ 1u;
}

std::thread *sub_24BDBAE6C(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9++ = v8->__t_;
      v8->__t_ = 0;
      ++v8;
    }

    while (v8 != v5);
    do
    {
      std::thread::~thread(result);
      result = v10 + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t sub_24BDBAF14(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::thread::~thread((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_24BDBAF64(uint64_t **a1, uint64_t a2, const void **a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v6 = 0;
    while (1)
    {
      v7 = *v3;
      if (*v3)
      {
        break;
      }

LABEL_23:
      v3 += 2;
      v6 = (v6 + 1);
      if (v3 == v4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (*(v7 + 31) < 0)
    {
      sub_24BC8DE9C(__p, *(v7 + 8), *(v7 + 16));
    }

    else
    {
      v8 = *(v7 + 8);
      v18 = *(v7 + 24);
      *__p = v8;
    }

    v9 = SHIBYTE(v18);
    if (v18 >= 0)
    {
      v10 = HIBYTE(v18);
    }

    else
    {
      v10 = __p[1];
    }

    v11 = *(a3 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = a3[1];
    }

    if (v10 == v11 && (v18 >= 0 ? (v13 = __p) : (v13 = __p[0]), v12 >= 0 ? (v14 = a3) : (v14 = *a3), !memcmp(v13, v14, v10)))
    {
      v15 = *(*v3 + 32) == sub_24BDBB08C;
      if ((v9 & 0x80000000) == 0)
      {
LABEL_22:
        if (v15)
        {
          return v6;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    goto LABEL_22;
  }

  return 0xFFFFFFFFLL;
}

void *sub_24BDBB0A0(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_24BDBB174(char *a1, char *a2, uint64_t *a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = (a2 - 16);
  v242 = (a2 - 48);
  v243 = (a2 - 32);
  k = a1;
  v251 = a2;
  v245 = (a2 - 16);
  while (1)
  {
    a1 = k;
    v11 = (a2 - k) >> 4;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          sub_24BDBC2C8(a1, a1 + 2, v9, a3);
          return;
        case 4:
          sub_24BDBC59C(a1, a1 + 2, a1 + 4, v9, a3);
          return;
        case 5:
          sub_24BDBC788(a1, a1 + 2, a1 + 4, a1 + 6, v9, a3);
          return;
      }

      goto LABEL_9;
    }

    if (v11 < 2)
    {
      return;
    }

    if (v11 == 2)
    {
      break;
    }

LABEL_9:
    if (v11 <= 23)
    {
      v125 = a1 + 16;
      v127 = a1 == a2 || v125 == a2;
      if (a5)
      {
        if (v127)
        {
          return;
        }

        v128 = 0;
        v129 = a1;
        while (1)
        {
          v130 = v129;
          v129 = v125;
          v131 = *(v130 + 2);
          v132 = (*(v131 + 160) - *(v131 + 152)) >> 2;
          v133 = *(*v130 + 160) - *(*v130 + 152);
          if (v132 < v133 >> 2)
          {
            goto LABEL_117;
          }

          if (v132 == v133 >> 2)
          {
            v144 = *a3;
            v254 = *(v130 + 2);
            v145 = *sub_24BDBCD18(v144, &v254);
            v146 = *a3;
            v253 = *v130;
            if (v145 < *sub_24BDBCD18(v146, &v253))
            {
              break;
            }
          }

LABEL_132:
          v125 = v129 + 16;
          v128 += 16;
          if (v129 + 16 == a2)
          {
            return;
          }
        }

        v131 = *v129;
LABEL_117:
        v134 = *(v130 + 3);
        v135 = v128;
        *v129 = 0;
        *(v129 + 1) = 0;
        while (1)
        {
          v136 = &a1[v135];
          v137 = *&a1[v135];
          *v136 = 0;
          *(v136 + 1) = 0;
          v138 = *&a1[v135 + 24];
          *(v136 + 1) = v137;
          if (v138)
          {
            sub_24BC9EC78(v138);
          }

          if (!v135)
          {
            v147 = a1;
            goto LABEL_130;
          }

          v139 = (*(v131 + 160) - *(v131 + 152)) >> 2;
          v140 = *(*&a1[v135 - 16] + 160) - *(*&a1[v135 - 16] + 152);
          if (v139 >= v140 >> 2)
          {
            if (v139 != v140 >> 2)
            {
              break;
            }

            v141 = *a3;
            v254 = v131;
            v142 = *sub_24BDBCD18(v141, &v254);
            v143 = *a3;
            v253 = *&a1[v135 - 16];
            if (v142 >= *sub_24BDBCD18(v143, &v253))
            {
              break;
            }
          }

          v135 -= 16;
        }

        v147 = &a1[v135];
LABEL_130:
        v148 = *(v147 + 1);
        *v147 = v131;
        *(v147 + 1) = v134;
        if (v148)
        {
          sub_24BC9EC78(v148);
        }

        goto LABEL_132;
      }

      if (v127)
      {
        return;
      }

      for (i = a1 + 8; ; i += 16)
      {
        v225 = a1;
        a1 = v125;
        v226 = *(v225 + 2);
        v227 = (*(v226 + 160) - *(v226 + 152)) >> 2;
        v228 = *(*v225 + 160) - *(*v225 + 152);
        if (v227 < v228 >> 2)
        {
          goto LABEL_208;
        }

        if (v227 == v228 >> 2)
        {
          v239 = *a3;
          v254 = *(v225 + 2);
          v240 = *sub_24BDBCD18(v239, &v254);
          v241 = *a3;
          v253 = *v225;
          if (v240 < *sub_24BDBCD18(v241, &v253))
          {
            break;
          }
        }

LABEL_220:
        v125 = a1 + 16;
        if (a1 + 16 == a2)
        {
          return;
        }
      }

      v226 = *a1;
LABEL_208:
      v229 = *(v225 + 3);
      v230 = i;
      *a1 = 0;
      *(a1 + 1) = 0;
      while (1)
      {
        v231 = *(v230 - 8);
        *(v230 - 1) = 0;
        *v230 = 0;
        v232 = *(v230 + 2);
        *(v230 + 8) = v231;
        if (v232)
        {
          sub_24BC9EC78(v232);
        }

        v233 = (*(v226 + 160) - *(v226 + 152)) >> 2;
        v234 = *(*(v230 - 3) + 160) - *(*(v230 - 3) + 152);
        if (v233 >= v234 >> 2)
        {
          if (v233 != v234 >> 2)
          {
            break;
          }

          v235 = *a3;
          v254 = v226;
          v236 = *sub_24BDBCD18(v235, &v254);
          v237 = *a3;
          v253 = *(v230 - 3);
          if (v236 >= *sub_24BDBCD18(v237, &v253))
          {
            break;
          }
        }

        v230 -= 16;
      }

      v238 = *v230;
      *(v230 - 1) = v226;
      *v230 = v229;
      if (v238)
      {
        sub_24BC9EC78(v238);
      }

      goto LABEL_220;
    }

    if (!a4)
    {
      if (a1 == a2)
      {
        return;
      }

      v149 = (v11 - 2) >> 1;
      v150 = v149;
      while (1)
      {
        v151 = v150;
        if (v149 >= v150)
        {
          v244 = v150;
          v152 = (2 * v150) | 1;
          v153 = &a1[16 * v152];
          v154 = 2 * v150 + 2;
          if (v154 < v11)
          {
            v155 = (*(*v153 + 160) - *(*v153 + 152)) >> 2;
            v156 = *(*(v153 + 2) + 160) - *(*(v153 + 2) + 152);
            if (v155 < v156 >> 2 || v155 == v156 >> 2 && (v157 = *a3, v254 = *v153, v158 = *sub_24BDBCD18(v157, &v254), v159 = *a3, v253 = *(v153 + 2), v70 = v158 >= *sub_24BDBCD18(v159, &v253), v149 = (v11 - 2) >> 1, !v70))
            {
              v153 += 16;
              v152 = v154;
            }
          }

          v151 = v244;
          v160 = &a1[16 * v244];
          v161 = (*(*v153 + 160) - *(*v153 + 152)) >> 2;
          v162 = *v160;
          v163 = *(*v160 + 160) - *(*v160 + 152);
          if (v161 >= v163 >> 2)
          {
            if (v161 != v163 >> 2)
            {
              goto LABEL_149;
            }

            v164 = *a3;
            v254 = *v153;
            v165 = *sub_24BDBCD18(v164, &v254);
            v166 = *a3;
            v253 = *v160;
            v70 = v165 >= *sub_24BDBCD18(v166, &v253);
            v151 = v244;
            a2 = v251;
            if (v70)
            {
              v162 = *v160;
LABEL_149:
              v248 = *(v160 + 1);
              *v160 = 0;
              *(v160 + 1) = 0;
              while (1)
              {
                v167 = v153;
                v168 = *v153;
                *v153 = 0;
                *(v153 + 1) = 0;
                v169 = *(v160 + 1);
                *v160 = v168;
                if (v169)
                {
                  sub_24BC9EC78(v169);
                }

                if (v149 < v152)
                {
                  break;
                }

                v170 = 2 * v152;
                v152 = (2 * v152) | 1;
                v153 = &a1[16 * v152];
                v171 = v170 + 2;
                if (v170 + 2 < v11)
                {
                  v172 = (*(*v153 + 160) - *(*v153 + 152)) >> 2;
                  v173 = *(*(v153 + 2) + 160) - *(*(v153 + 2) + 152);
                  if (v172 < v173 >> 2 || v172 == v173 >> 2 && (v174 = *a3, v254 = *v153, v175 = *sub_24BDBCD18(v174, &v254), v176 = *a3, v253 = *(v153 + 2), v70 = v175 >= *sub_24BDBCD18(v176, &v253), v149 = (v11 - 2) >> 1, !v70))
                  {
                    v153 += 16;
                    v152 = v171;
                  }
                }

                v177 = (*(*v153 + 160) - *(*v153 + 152)) >> 2;
                v178 = *(v162 + 160) - *(v162 + 152);
                if (v177 < v178 >> 2)
                {
                  break;
                }

                if (v177 == v178 >> 2)
                {
                  v179 = *a3;
                  v254 = *v153;
                  v180 = *sub_24BDBCD18(v179, &v254);
                  v181 = *a3;
                  v253 = v162;
                  v160 = v167;
                  v149 = (v11 - 2) >> 1;
                  if (v180 < *sub_24BDBCD18(v181, &v253))
                  {
                    break;
                  }
                }

                else
                {
                  v160 = v167;
                }
              }

              v182 = *(v167 + 1);
              *v167 = v162;
              *(v167 + 1) = v248;
              a2 = v251;
              v151 = v244;
              if (v182)
              {
                sub_24BC9EC78(v182);
              }
            }
          }

          else
          {
            a2 = v251;
          }
        }

        v150 = v151 - 1;
        if (!v151)
        {
          while (1)
          {
            v187 = 0;
            v246 = *a1;
            v249 = *(a1 + 1);
            v252 = a2;
            *a1 = 0;
            *(a1 + 1) = 0;
            v188 = a1;
            do
            {
              v189 = &v188[16 * v187];
              v190 = v189 + 16;
              v191 = 2 * v187;
              v187 = (2 * v187) | 1;
              v192 = v191 + 2;
              if (v191 + 2 < v11)
              {
                v194 = *(v189 + 4);
                v193 = (v189 + 32);
                v195 = (*(*(v193 - 2) + 160) - *(*(v193 - 2) + 152)) >> 2;
                v196 = *(v194 + 160) - *(v194 + 152);
                if (v195 < v196 >> 2 || v195 == v196 >> 2 && (v197 = *a3, v254 = *(v193 - 2), v198 = *sub_24BDBCD18(v197, &v254), v199 = *a3, v253 = *v193, v198 < *sub_24BDBCD18(v199, &v253)))
                {
                  v190 = v193;
                  v187 = v192;
                }
              }

              v200 = *v190;
              *v190 = 0;
              *(v190 + 1) = 0;
              v201 = *(v188 + 1);
              *v188 = v200;
              if (v201)
              {
                sub_24BC9EC78(v201);
              }

              v188 = v190;
            }

            while (v187 <= ((v11 - 2) >> 1));
            a2 = v252 - 16;
            if (v190 != v252 - 16)
            {
              break;
            }

            v220 = *(v190 + 1);
            *v190 = v246;
            *(v190 + 1) = v249;
            if (v220)
            {
              goto LABEL_198;
            }

LABEL_199:
            v206 = v11-- <= 2;
            if (v206)
            {
              return;
            }
          }

          v202 = *(v252 - 1);
          *a2 = 0;
          *(v252 - 1) = 0;
          v203 = *(v190 + 1);
          *v190 = v202;
          if (v203)
          {
            sub_24BC9EC78(v203);
          }

          v204 = *(v252 - 1);
          *(v252 - 2) = v246;
          *(v252 - 1) = v249;
          if (v204)
          {
            sub_24BC9EC78(v204);
          }

          v205 = (v190 + 16 - a1) >> 4;
          v206 = v205 < 2;
          v207 = v205 - 2;
          if (v206)
          {
            goto LABEL_199;
          }

          v208 = v207 >> 1;
          v209 = &a1[16 * (v207 >> 1)];
          v210 = (*(*v209 + 160) - *(*v209 + 152)) >> 2;
          v186 = *v190;
          v211 = *(*v190 + 160) - *(*v190 + 152);
          if (v210 >= v211 >> 2)
          {
            if (v210 != v211 >> 2)
            {
              goto LABEL_199;
            }

            v183 = *a3;
            v254 = *v209;
            v184 = *sub_24BDBCD18(v183, &v254);
            v185 = *a3;
            v253 = *v190;
            if (v184 >= *sub_24BDBCD18(v185, &v253))
            {
              goto LABEL_199;
            }

            v186 = *v190;
          }

          v250 = *(v190 + 1);
          *v190 = 0;
          *(v190 + 1) = 0;
          while (1)
          {
            v212 = v209;
            v213 = *v209;
            *v209 = 0;
            *(v209 + 1) = 0;
            v214 = *(v190 + 1);
            *v190 = v213;
            if (v214)
            {
              sub_24BC9EC78(v214);
            }

            if (!v208)
            {
              break;
            }

            v208 = (v208 - 1) >> 1;
            v209 = &a1[16 * v208];
            v215 = (*(*v209 + 160) - *(*v209 + 152)) >> 2;
            v216 = *(v186 + 160) - *(v186 + 152);
            if (v215 >= v216 >> 2)
            {
              if (v215 != v216 >> 2)
              {
                break;
              }

              v217 = *a3;
              v254 = *v209;
              v218 = *sub_24BDBCD18(v217, &v254);
              v219 = *a3;
              v253 = v186;
              v190 = v212;
              if (v218 >= *sub_24BDBCD18(v219, &v253))
              {
                break;
              }
            }

            else
            {
              v190 = v212;
            }
          }

          v220 = *(v212 + 1);
          *v212 = v186;
          *(v212 + 1) = v250;
          if (!v220)
          {
            goto LABEL_199;
          }

LABEL_198:
          sub_24BC9EC78(v220);
          goto LABEL_199;
        }
      }
    }

    v12 = &a1[16 * (v11 >> 1)];
    if (v11 < 0x81)
    {
      sub_24BDBC2C8(&a1[16 * (v11 >> 1)], a1, v9, a3);
    }

    else
    {
      sub_24BDBC2C8(a1, &a1[16 * (v11 >> 1)], v9, a3);
      sub_24BDBC2C8(a1 + 2, v12 - 2, v243, a3);
      sub_24BDBC2C8(a1 + 4, &a1[16 * (v11 >> 1) + 16], v242, a3);
      sub_24BDBC2C8(v12 - 2, &a1[16 * (v11 >> 1)], &a1[16 * (v11 >> 1) + 16], a3);
      v13 = *a1;
      *a1 = *v12;
      *v12 = v13;
    }

    --a4;
    if ((a5 & 1) != 0 || (v14 = (*(*(a1 - 2) + 160) - *(*(a1 - 2) + 152)) >> 2, v15 = *(*a1 + 160) - *(*a1 + 152), v14 < v15 >> 2) || v14 == v15 >> 2 && (v16 = *a3, v254 = *(a1 - 2), v17 = *sub_24BDBCD18(v16, &v254), v18 = *a3, v253 = *a1, v17 < *sub_24BDBCD18(v18, &v253)))
    {
      v19 = *a1;
      v20 = *(a1 + 1);
      v21 = 16;
      *a1 = 0;
      *(a1 + 1) = 0;
      while (1)
      {
        v22 = (*(*&a1[v21] + 160) - *(*&a1[v21] + 152)) >> 2;
        v23 = *(v19 + 160) - *(v19 + 152);
        if (v22 >= v23 >> 2)
        {
          if (v22 != v23 >> 2)
          {
            break;
          }

          v24 = *a3;
          v254 = *&a1[v21];
          v25 = *sub_24BDBCD18(v24, &v254);
          v26 = *a3;
          v253 = v19;
          if (v25 >= *sub_24BDBCD18(v26, &v253))
          {
            break;
          }
        }

        v21 += 16;
      }

      v27 = &a1[v21];
      if (v21 == 16)
      {
        v32 = v251;
        if (v27 < v251)
        {
          v38 = *v9;
          v39 = (*(*v9 + 160) - *(*v9 + 152)) >> 2;
          v41 = *(v19 + 152);
          v40 = *(v19 + 160);
          v32 = v9;
          if (v39 >= (v40 - v41) >> 2)
          {
            v42 = (v40 - v41) >> 2;
            v32 = v9;
            do
            {
              if (v39 == v42)
              {
                v43 = *a3;
                v254 = v38;
                v44 = *sub_24BDBCD18(v43, &v254);
                v45 = *a3;
                v253 = v19;
                v46 = sub_24BDBCD18(v45, &v253);
                if (v27 >= v32 || v44 < *v46)
                {
                  break;
                }

                v41 = *(v19 + 152);
                v40 = *(v19 + 160);
              }

              else if (v27 >= v32)
              {
                break;
              }

              v47 = *(v32 - 2);
              v32 -= 16;
              v38 = v47;
              v39 = (*(v47 + 160) - *(v47 + 152)) >> 2;
              v42 = (v40 - v41) >> 2;
            }

            while (v39 >= v42);
          }
        }
      }

      else
      {
        v28 = *v9;
        v29 = (*(*v9 + 160) - *(*v9 + 152)) >> 2;
        v31 = *(v19 + 152);
        v30 = *(v19 + 160);
        v32 = v9;
        if (v29 >= (v30 - v31) >> 2)
        {
          v33 = (v30 - v31) >> 2;
          v32 = v9;
          do
          {
            if (v29 == v33)
            {
              v34 = *a3;
              v254 = v28;
              v35 = *sub_24BDBCD18(v34, &v254);
              v36 = *a3;
              v253 = v19;
              if (v35 < *sub_24BDBCD18(v36, &v253))
              {
                break;
              }

              v31 = *(v19 + 152);
              v30 = *(v19 + 160);
            }

            v37 = *(v32 - 2);
            v32 -= 16;
            v28 = v37;
            v29 = (*(v37 + 160) - *(v37 + 152)) >> 2;
            v33 = (v30 - v31) >> 2;
          }

          while (v29 >= v33);
        }
      }

      v48 = v20;
      k = v27;
      if (v27 < v32)
      {
        v49 = v32;
        do
        {
          v50 = *k;
          *k = *v49;
          *v49 = v50;
          v51 = *(k + 1);
          *(k + 1) = *(v49 + 1);
          *(v49 + 1) = v51;
          while (1)
          {
            do
            {
              k += 16;
              v52 = (*(*k + 160) - *(*k + 152)) >> 2;
              v54 = *(v19 + 152);
              v53 = *(v19 + 160);
            }

            while (v52 < (v53 - v54) >> 2);
            v55 = (v53 - v54) >> 2;
            if (v52 != v55)
            {
              break;
            }

            v56 = *a3;
            v254 = *k;
            v57 = *sub_24BDBCD18(v56, &v254);
            v58 = *a3;
            v253 = v19;
            if (v57 >= *sub_24BDBCD18(v58, &v253))
            {
              v54 = *(v19 + 152);
              v53 = *(v19 + 160);
              v55 = (v53 - v54) >> 2;
              break;
            }
          }

          v60 = *(v49 - 2);
          v49 -= 16;
          v59 = v60;
          for (j = (*(v60 + 160) - *(v60 + 152)) >> 2; j >= v55; v55 = (v53 - v54) >> 2)
          {
            if (j == v55)
            {
              v62 = *a3;
              v254 = v59;
              v63 = *sub_24BDBCD18(v62, &v254);
              v64 = *a3;
              v253 = v19;
              if (v63 < *sub_24BDBCD18(v64, &v253))
              {
                break;
              }

              v54 = *(v19 + 152);
              v53 = *(v19 + 160);
            }

            v65 = *(v49 - 2);
            v49 -= 16;
            v59 = v65;
            j = (*(v65 + 160) - *(v65 + 152)) >> 2;
          }
        }

        while (k < v49);
      }

      v66 = k - 16;
      if (k - 16 != a1)
      {
        v67 = *v66;
        *v66 = 0;
        *(k - 1) = 0;
        v68 = *(a1 + 1);
        *a1 = v67;
        if (v68)
        {
          sub_24BC9EC78(v68);
        }
      }

      v69 = *(k - 1);
      *(k - 2) = v19;
      *(k - 1) = v48;
      if (v69)
      {
        sub_24BC9EC78(v69);
      }

      v70 = v27 >= v32;
      a2 = v251;
      v9 = v245;
      if (v70)
      {
        v71 = sub_24BDBCA08(a1, k - 16, a3);
        if (sub_24BDBCA08(k, v251, a3))
        {
          a2 = k - 16;
          if (v71)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v71)
        {
          goto LABEL_62;
        }
      }

      else
      {
LABEL_62:
        sub_24BDBB174(a1, k - 16, a3, a4, a5 & 1);
        a5 = 0;
      }
    }

    else
    {
      v72 = v9;
      v73 = *a1;
      v74 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v76 = *(v73 + 152);
      v75 = *(v73 + 160);
      v77 = (v75 - v76) >> 2;
      v78 = *(*v72 + 160) - *(*v72 + 152);
      if (v77 >= v78 >> 2)
      {
        if (v77 != v78 >> 2 || (v113 = *a3, v254 = v73, v114 = *sub_24BDBCD18(v113, &v254), v115 = *a3, v253 = *v245, v114 >= *sub_24BDBCD18(v115, &v253)))
        {
          for (k = a1 + 16; k < a2; k += 16)
          {
            v116 = (*(v73 + 160) - *(v73 + 152)) >> 2;
            v117 = *(*k + 160) - *(*k + 152);
            if (v116 < v117 >> 2)
            {
              break;
            }

            if (v116 == v117 >> 2)
            {
              v118 = *a3;
              v254 = v73;
              v119 = *sub_24BDBCD18(v118, &v254);
              v120 = *a3;
              v253 = *k;
              if (v119 < *sub_24BDBCD18(v120, &v253))
              {
                break;
              }
            }
          }

          goto LABEL_70;
        }

        v76 = *(v73 + 152);
        v75 = *(v73 + 160);
        v77 = (v75 - v76) >> 2;
      }

      k = a1 + 16;
      v79 = *(*(a1 + 2) + 160) - *(*(a1 + 2) + 152);
      if (v77 >= v79 >> 2)
      {
        v80 = v79 >> 2;
        do
        {
          if (v77 == v80)
          {
            v81 = *a3;
            v254 = v73;
            v82 = *sub_24BDBCD18(v81, &v254);
            v83 = *a3;
            v253 = *k;
            if (v82 < *sub_24BDBCD18(v83, &v253))
            {
              break;
            }

            v76 = *(v73 + 152);
            v75 = *(v73 + 160);
          }

          v84 = *(k + 2);
          k += 16;
          v77 = (v75 - v76) >> 2;
          v80 = (*(v84 + 160) - *(v84 + 152)) >> 2;
        }

        while (v77 >= v80);
      }

LABEL_70:
      m = a2;
      if (k < a2)
      {
        for (m = v245; ; m -= 16)
        {
          v86 = (*(v73 + 160) - *(v73 + 152)) >> 2;
          v87 = *(*m + 160) - *(*m + 152);
          if (v86 >= v87 >> 2)
          {
            if (v86 != v87 >> 2)
            {
              break;
            }

            v88 = *a3;
            v254 = v73;
            v89 = *sub_24BDBCD18(v88, &v254);
            v90 = *a3;
            v253 = *m;
            if (v89 >= *sub_24BDBCD18(v90, &v253))
            {
              break;
            }
          }
        }
      }

      while (k < m)
      {
        v91 = *k;
        *k = *m;
        *m = v91;
        v92 = *(k + 1);
        *(k + 1) = *(m + 1);
        *(m + 1) = v92;
        v93 = *(k + 2);
        k += 16;
        v95 = *(v73 + 152);
        v94 = *(v73 + 160);
        v96 = (v94 - v95) >> 2;
        v97 = *(v93 + 160) - *(v93 + 152);
        if (v96 >= v97 >> 2)
        {
          v98 = v97 >> 2;
          do
          {
            if (v96 == v98)
            {
              v99 = *a3;
              v254 = v73;
              v100 = *sub_24BDBCD18(v99, &v254);
              v101 = *a3;
              v253 = *k;
              if (v100 < *sub_24BDBCD18(v101, &v253))
              {
                goto LABEL_82;
              }

              v95 = *(v73 + 152);
              v94 = *(v73 + 160);
            }

            v102 = *(k + 2);
            k += 16;
            v96 = (v94 - v95) >> 2;
            v98 = (*(v102 + 160) - *(v102 + 152)) >> 2;
          }

          while (v96 >= v98);
        }

        do
        {
          do
          {
LABEL_82:
            v103 = (*(v73 + 160) - *(v73 + 152)) >> 2;
            v104 = *(m - 2);
            m -= 16;
            v105 = *(v104 + 160) - *(v104 + 152);
          }

          while (v103 < v105 >> 2);
          if (v103 != v105 >> 2)
          {
            break;
          }

          v106 = *a3;
          v254 = v73;
          v107 = *sub_24BDBCD18(v106, &v254);
          v108 = *a3;
          v253 = *m;
        }

        while (v107 < *sub_24BDBCD18(v108, &v253));
      }

      v109 = k - 16;
      if (k - 16 != a1)
      {
        v110 = *v109;
        *v109 = 0;
        *(k - 1) = 0;
        v111 = *(a1 + 1);
        *a1 = v110;
        if (v111)
        {
          sub_24BC9EC78(v111);
        }
      }

      a5 = 0;
      v112 = *(k - 1);
      *(k - 2) = v73;
      *(k - 1) = v74;
      v9 = v245;
      if (v112)
      {
        sub_24BC9EC78(v112);
        a5 = 0;
      }
    }
  }

  v121 = (*(*(a2 - 2) + 160) - *(*(a2 - 2) + 152)) >> 2;
  v122 = *(*a1 + 160) - *(*a1 + 152);
  if (v121 < v122 >> 2 || v121 == v122 >> 2 && (v221 = *a3, v254 = *(a2 - 2), v222 = *sub_24BDBCD18(v221, &v254), v223 = *a3, v253 = *a1, v222 < *sub_24BDBCD18(v223, &v253)))
  {
    v123 = *a1;
    *a1 = *(a2 - 2);
    *(a2 - 2) = v123;
    v124 = *(a1 + 1);
    *(a1 + 1) = *(a2 - 1);
    *(a2 - 1) = v124;
  }
}

void sub_24BDBC258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
    sub_24BC9EC78(v13);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_24BDBC2C8(unint64_t *result, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  v7 = result;
  v8 = *a2;
  v9 = (*(*a2 + 160) - *(*a2 + 152)) >> 2;
  v10 = *(*result + 160) - *(*result + 152);
  if (v9 < v10 >> 2 || v9 == v10 >> 2 && (v15 = *a4, v45 = *a2, v16 = *sub_24BDBCD18(v15, &v45), v17 = *a4, v44 = *v7, result = sub_24BDBCD18(v17, &v44), v8 = *a2, v9 = (*(*a2 + 160) - *(*a2 + 152)) >> 2, v16 < *result))
  {
    v11 = *a3;
    v12 = (*(*a3 + 160) - *(*a3 + 152)) >> 2;
    if (v12 < v9)
    {
LABEL_3:
      v13 = *v7;
      *v7 = v11;
      *a3 = v13;
      v14 = v7[1];
      v7[1] = a3[1];
      goto LABEL_21;
    }

    if (v12 == v9)
    {
      v26 = *a4;
      v45 = *a3;
      v27 = *sub_24BDBCD18(v26, &v45);
      v28 = *a4;
      v44 = *a2;
      result = sub_24BDBCD18(v28, &v44);
      if (v27 < *result)
      {
        v11 = *a3;
        goto LABEL_3;
      }

      v8 = *a2;
    }

    v35 = *v7;
    *v7 = v8;
    *a2 = v35;
    v36 = v7[1];
    v7[1] = a2[1];
    a2[1] = v36;
    v37 = *a3;
    v38 = (*(*a3 + 160) - *(*a3 + 152)) >> 2;
    v39 = *a2;
    v40 = *(*a2 + 160) - *(*a2 + 152);
    if (v38 >= v40 >> 2)
    {
      if (v38 != v40 >> 2)
      {
        return result;
      }

      v41 = *a4;
      v45 = *a3;
      v42 = *sub_24BDBCD18(v41, &v45);
      v43 = *a4;
      v44 = *a2;
      result = sub_24BDBCD18(v43, &v44);
      if (v42 >= *result)
      {
        return result;
      }

      v39 = *a2;
      v37 = *a3;
    }

    *a2 = v37;
    *a3 = v39;
    v14 = a2[1];
    a2[1] = a3[1];
LABEL_21:
    a3[1] = v14;
    return result;
  }

  v18 = *a3;
  v19 = (*(*a3 + 160) - *(*a3 + 152)) >> 2;
  if (v19 >= v9)
  {
    if (v19 != v9)
    {
      return result;
    }

    v29 = *a4;
    v45 = *a3;
    v30 = *sub_24BDBCD18(v29, &v45);
    v31 = *a4;
    v44 = *a2;
    result = sub_24BDBCD18(v31, &v44);
    if (v30 >= *result)
    {
      return result;
    }

    v8 = *a2;
    v18 = *a3;
  }

  *a2 = v18;
  *a3 = v8;
  v20 = a2[1];
  a2[1] = a3[1];
  a3[1] = v20;
  v21 = *a2;
  v22 = (*(*a2 + 160) - *(*a2 + 152)) >> 2;
  v23 = *v7;
  v24 = *(*v7 + 160) - *(*v7 + 152);
  if (v22 < v24 >> 2)
  {
LABEL_8:
    *v7 = v21;
    *a2 = v23;
    v25 = v7[1];
    v7[1] = a2[1];
    a2[1] = v25;
    return result;
  }

  if (v22 == v24 >> 2)
  {
    v32 = *a4;
    v45 = *a2;
    v33 = *sub_24BDBCD18(v32, &v45);
    v34 = *a4;
    v44 = *v7;
    result = sub_24BDBCD18(v34, &v44);
    if (v33 < *result)
    {
      v23 = *v7;
      v21 = *a2;
      goto LABEL_8;
    }
  }

  return result;
}

unsigned int *sub_24BDBC59C(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  result = sub_24BDBC2C8(a1, a2, a3, a5);
  v11 = *a4;
  v12 = (*(*a4 + 160) - *(*a4 + 152)) >> 2;
  v13 = *a3;
  v14 = *(*a3 + 160) - *(*a3 + 152);
  if (v12 >= v14 >> 2)
  {
    if (v12 != v14 >> 2)
    {
      return result;
    }

    v26 = *a5;
    v36 = *a4;
    v27 = *sub_24BDBCD18(v26, &v36);
    v28 = *a5;
    v35 = *a3;
    result = sub_24BDBCD18(v28, &v35);
    if (v27 >= *result)
    {
      return result;
    }

    v13 = *a3;
    v11 = *a4;
  }

  *a3 = v11;
  *a4 = v13;
  v15 = a3[1];
  a3[1] = a4[1];
  a4[1] = v15;
  v16 = *a3;
  v17 = (*(*a3 + 160) - *(*a3 + 152)) >> 2;
  v18 = *a2;
  v19 = *(*a2 + 160) - *(*a2 + 152);
  if (v17 >= v19 >> 2)
  {
    if (v17 != v19 >> 2)
    {
      return result;
    }

    v29 = *a5;
    v36 = *a3;
    v30 = *sub_24BDBCD18(v29, &v36);
    v31 = *a5;
    v35 = *a2;
    result = sub_24BDBCD18(v31, &v35);
    if (v30 >= *result)
    {
      return result;
    }

    v18 = *a2;
    v16 = *a3;
  }

  *a2 = v16;
  *a3 = v18;
  v20 = a2[1];
  a2[1] = a3[1];
  a3[1] = v20;
  v21 = *a2;
  v22 = (*(*a2 + 160) - *(*a2 + 152)) >> 2;
  v23 = *a1;
  v24 = *(*a1 + 160) - *(*a1 + 152);
  if (v22 < v24 >> 2)
  {
LABEL_4:
    *a1 = v21;
    *a2 = v23;
    v25 = a1[1];
    a1[1] = a2[1];
    a2[1] = v25;
    return result;
  }

  if (v22 == v24 >> 2)
  {
    v32 = *a5;
    v36 = *a2;
    v33 = *sub_24BDBCD18(v32, &v36);
    v34 = *a5;
    v35 = *a1;
    result = sub_24BDBCD18(v34, &v35);
    if (v33 < *result)
    {
      v23 = *a1;
      v21 = *a2;
      goto LABEL_4;
    }
  }

  return result;
}

unsigned int *sub_24BDBC788(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  result = sub_24BDBC59C(a1, a2, a3, a4, a6);
  v13 = *a5;
  v14 = (*(*a5 + 160) - *(*a5 + 152)) >> 2;
  v15 = *a4;
  v16 = *(*a4 + 160) - *(*a4 + 152);
  if (v14 >= v16 >> 2)
  {
    if (v14 != v16 >> 2)
    {
      return result;
    }

    v33 = *a6;
    v46 = *a5;
    v34 = *sub_24BDBCD18(v33, &v46);
    v35 = *a6;
    v45 = *a4;
    result = sub_24BDBCD18(v35, &v45);
    if (v34 >= *result)
    {
      return result;
    }

    v15 = *a4;
    v13 = *a5;
  }

  *a4 = v13;
  *a5 = v15;
  v17 = a4[1];
  a4[1] = a5[1];
  a5[1] = v17;
  v18 = *a4;
  v19 = (*(*a4 + 160) - *(*a4 + 152)) >> 2;
  v20 = *a3;
  v21 = *(*a3 + 160) - *(*a3 + 152);
  if (v19 >= v21 >> 2)
  {
    if (v19 != v21 >> 2)
    {
      return result;
    }

    v36 = *a6;
    v46 = *a4;
    v37 = *sub_24BDBCD18(v36, &v46);
    v38 = *a6;
    v45 = *a3;
    result = sub_24BDBCD18(v38, &v45);
    if (v37 >= *result)
    {
      return result;
    }

    v20 = *a3;
    v18 = *a4;
  }

  *a3 = v18;
  *a4 = v20;
  v22 = a3[1];
  a3[1] = a4[1];
  a4[1] = v22;
  v23 = *a3;
  v24 = (*(*a3 + 160) - *(*a3 + 152)) >> 2;
  v25 = *a2;
  v26 = *(*a2 + 160) - *(*a2 + 152);
  if (v24 >= v26 >> 2)
  {
    if (v24 != v26 >> 2)
    {
      return result;
    }

    v39 = *a6;
    v46 = *a3;
    v40 = *sub_24BDBCD18(v39, &v46);
    v41 = *a6;
    v45 = *a2;
    result = sub_24BDBCD18(v41, &v45);
    if (v40 >= *result)
    {
      return result;
    }

    v25 = *a2;
    v23 = *a3;
  }

  *a2 = v23;
  *a3 = v25;
  v27 = a2[1];
  a2[1] = a3[1];
  a3[1] = v27;
  v28 = *a2;
  v29 = (*(*a2 + 160) - *(*a2 + 152)) >> 2;
  v30 = *a1;
  v31 = *(*a1 + 160) - *(*a1 + 152);
  if (v29 < v31 >> 2)
  {
LABEL_5:
    *a1 = v28;
    *a2 = v30;
    v32 = a1[1];
    a1[1] = a2[1];
    a2[1] = v32;
    return result;
  }

  if (v29 == v31 >> 2)
  {
    v42 = *a6;
    v46 = *a2;
    v43 = *sub_24BDBCD18(v42, &v46);
    v44 = *a6;
    v45 = *a1;
    result = sub_24BDBCD18(v44, &v45);
    if (v43 < *result)
    {
      v30 = *a1;
      v28 = *a2;
      goto LABEL_5;
    }
  }

  return result;
}

BOOL sub_24BDBCA08(void *a1, char *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_24BDBC2C8(a1, a1 + 2, a2 - 2, a3);
        return 1;
      case 4:
        sub_24BDBC59C(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        return 1;
      case 5:
        sub_24BDBC788(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 2);
      v8 = (*(v7 + 160) - *(v7 + 152)) >> 2;
      v9 = *a1;
      v10 = *(*a1 + 160) - *(*a1 + 152);
      if (v8 >= v10 >> 2)
      {
        if (v8 != v10 >> 2)
        {
          return 1;
        }

        v35 = *a3;
        v40 = *(a2 - 2);
        v36 = *sub_24BDBCD18(v35, &v40);
        v37 = *a3;
        v39 = *a1;
        if (v36 >= *sub_24BDBCD18(v37, &v39))
        {
          return 1;
        }

        v9 = *a1;
        v7 = *(v4 - 2);
      }

      *a1 = v7;
      *(v4 - 2) = v9;
      v11 = a1[1];
      a1[1] = *(v4 - 1);
      *(v4 - 1) = v11;
      return 1;
    }
  }

  v12 = a1 + 4;
  sub_24BDBC2C8(a1, a1 + 2, a1 + 4, a3);
  v13 = a1 + 6;
  if (a1 + 6 == v4)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  v38 = v4;
  while (1)
  {
    v16 = *v13;
    v17 = (*(*v13 + 160) - *(*v13 + 152)) >> 2;
    v18 = *(*v12 + 160) - *(*v12 + 152);
    if (v17 < v18 >> 2)
    {
      break;
    }

    if (v17 == v18 >> 2)
    {
      v29 = *a3;
      v40 = *v13;
      v30 = *sub_24BDBCD18(v29, &v40);
      v31 = *a3;
      v39 = *v12;
      if (v30 < *sub_24BDBCD18(v31, &v39))
      {
        v16 = *v13;
        break;
      }
    }

LABEL_30:
    v12 = v13;
    v14 += 16;
    v13 += 2;
    if (v13 == v4)
    {
      return 1;
    }
  }

  v19 = v13[1];
  v20 = v14;
  *v13 = 0;
  v13[1] = 0;
  while (1)
  {
    v21 = a1 + v20;
    v22 = *(a1 + v20 + 32);
    *(v21 + 4) = 0;
    *(v21 + 5) = 0;
    v23 = *(a1 + v20 + 56);
    *(v21 + 3) = v22;
    if (v23)
    {
      sub_24BC9EC78(v23);
    }

    if (v20 == -32)
    {
      v32 = a1;
      goto LABEL_27;
    }

    v24 = (*(v16 + 160) - *(v16 + 152)) >> 2;
    v25 = *(*(a1 + v20 + 16) + 160) - *(*(a1 + v20 + 16) + 152);
    if (v24 >= v25 >> 2)
    {
      if (v24 != v25 >> 2)
      {
        break;
      }

      v26 = *a3;
      v40 = v16;
      v27 = *sub_24BDBCD18(v26, &v40);
      v28 = *a3;
      v39 = *(a1 + v20 + 16);
      if (v27 >= *sub_24BDBCD18(v28, &v39))
      {
        break;
      }
    }

    v20 -= 16;
  }

  v32 = (a1 + v20 + 32);
LABEL_27:
  v33 = v32[1];
  *v32 = v16;
  v32[1] = v19;
  v4 = v38;
  if (v33)
  {
    sub_24BC9EC78(v33);
  }

  if (++v15 != 8)
  {
    goto LABEL_30;
  }

  return v13 + 2 == v38;
}

void sub_24BDBCD00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BC9EC78(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDBCD18(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_24BC8E244("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2[4];
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

float sub_24BDBCD70(unint64_t *a1, float *a2)
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
    sub_24BDBCDF8(a1);
    v5 = a1[1];
    v7 = a1[5];
    v8 = a1[4] + v7;
  }

  result = *a2;
  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  a1[5] = v7 + 1;
  return result;
}

void sub_24BDBCDF8(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_24BDBD3F4(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_24BDBCFCC(a1, &v9);
}

void sub_24BDBCF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BDBCFCC(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_24BDBD3F4(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_24BDBD0D4(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_24BDBD3F4(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_24BDBD1E0(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_24BDBD3F4(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_24BDBD2E8(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_24BDBD3F4(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_24BDBD3F4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void sub_24BDBD43C(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v23 = *a1;
  v25 = *a2;
  v27 = *a3;
  v24 = 0x3FF0000000000000;
  v26 = 0x3FF0000000000000;
  v28 = 0x3FF0000000000000;
  v17 = *a4;
  v19 = *a5;
  v21 = *a6;
  v18 = *(a4 + 2);
  v20 = *(a5 + 2);
  v22 = *(a6 + 2);
  sub_24BDBD540(&v23);
  v9 = 0;
  *(a7 + 64) = 0x3FF0000000000000;
  *a7 = xmmword_24BFED240;
  *(a7 + 16) = *algn_24BFED250;
  *(a7 + 32) = xmmword_24BFED260;
  *(a7 + 48) = unk_24BFED270;
  v10 = &v17;
  do
  {
    v11 = 0;
    v12 = v8;
    do
    {
      v13 = 0;
      v14 = 0.0;
      v15 = v10;
      do
      {
        v16 = *v15;
        v15 += 3;
        v14 = v14 + v16 * *(v12 + v13);
        v13 += 8;
      }

      while (v13 != 24);
      *(a7 + 8 * v9 + 24 * v11++) = v14;
      v12 += 24;
    }

    while (v11 != 3);
    ++v9;
    v10 = (v10 + 8);
  }

  while (v9 != 3);
}

double sub_24BDBD540(double *a1)
{
  v1 = 0;
  v3 = a1[7];
  v2 = a1[8];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8 = a1[2];
  v7 = a1[3];
  v9 = v2 * v7 - v5 * v6;
  v11 = *a1;
  v10 = a1[1];
  v18[0] = v2 * v4 - v5 * v3;
  v18[1] = -(v2 * v10 - v8 * v3);
  v19 = v3 * v7 - v4 * v6;
  v20 = -(v3 * v11 - v10 * v6);
  v18[2] = v5 * v10 - v8 * v4;
  v18[3] = -v9;
  v18[4] = v2 * v11 - v8 * v6;
  v18[5] = -(v5 * v11 - v8 * v7);
  v21 = v4 * v11 - v10 * v7;
  v12 = 1.0 / (v11 * v18[0] - v10 * v9 + v8 * v19);
  v26 = 0x3FF0000000000000;
  v22 = xmmword_24BFED240;
  v23 = *algn_24BFED250;
  v24 = xmmword_24BFED260;
  v25 = unk_24BFED270;
  do
  {
    *(&v22 + v1 * 8) = v12 * v18[v1];
    ++v1;
  }

  while (v1 != 9);
  result = *&v24;
  v14 = v25;
  v15 = v26;
  v17 = v22;
  v16 = v23;
  *(a1 + 2) = v24;
  *(a1 + 3) = v14;
  *(a1 + 8) = v15;
  *a1 = v17;
  *(a1 + 1) = v16;
  return result;
}

double sub_24BDBD63C@<D0>(double *a1@<X0>, double *a2@<X1>, float64x2_t *a3@<X2>, float64x2_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a1[1];
  v6 = *a2 - *a1;
  v7 = a2[1] - v5;
  v8 = v7 * v7 + v6 * v6;
  v9 = v6 / v8;
  v10 = v7 / v8;
  v11 = -(v10 * v5) - v9 * *a1;
  v12 = a3[1].f64[0];
  v13 = a4[1].f64[0] - v12;
  v14 = *a3;
  v15 = vsubq_f64(*a4, *a3);
  *a5 = vmulq_n_f64(v15, v9);
  *(a5 + 16) = v9 * v13;
  *(a5 + 24) = vmulq_n_f64(v15, v10);
  *(a5 + 40) = v10 * v13;
  result = v12 + v11 * v13;
  *(a5 + 48) = vaddq_f64(v14, vmulq_n_f64(v15, v11));
  *(a5 + 64) = result;
  return result;
}

uint64_t sub_24BDBD6B8@<X0>(uint64_t result@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = (result + 24);
  do
  {
    *&a2[v4] = *&a2[v4] + v5[3] + *v5 * a4 + *(v5 - 3) * a3;
    ++v5;
    ++v4;
  }

  while (v4 != 3);
  return result;
}

uint64_t sub_24BDBD74C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a2[1] - *a2;
  if (0xAAAAAAAAAAAAAAABLL * (v4 >> 3) != (*(a1 + 160) - *(a1 + 152)) >> 2 || a3[1] - *a3 != v4 || a4[1] - *a4 != v4)
  {
    return 0;
  }

  sub_24BCB2008(v66, 3uLL);
  if (*(a1 + 160) != *(a1 + 152))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      LODWORD(v64.f64[0]) = v8;
      sub_24BCD567C(a1, &v64, v66);
      v9 = *(v66[0] + 1);
      v10 = (*(a1 + 8) + 16 * *(a1 + 176));
      v12 = *v10;
      v11 = v10[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v11);
      }

      v13 = 0;
      v63 = *(*(v12 + 40) + 16 * v9);
      do
      {
        v64.f64[v13] = *(&v63 + v13);
        ++v13;
      }

      while (v13 != 3);
      v14 = *v66[0];
      v15 = (*(a1 + 8) + 16 * *(a1 + 176));
      v17 = *v15;
      v16 = v15[1];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v16);
      }

      v18 = 0;
      v60 = *(*(v17 + 40) + 16 * v14);
      do
      {
        v61.f64[v18] = *(&v60 + v18);
        ++v18;
      }

      while (v18 != 3);
      v19 = vsubq_f64(v64, v61);
      v20 = v65 - v62;
      v21 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v19, v19).f64[1]) + v19.f64[0] * v19.f64[0] + v20 * v20);
      v22 = 0.0;
      _Q18 = xmmword_24BFD29A0;
      if (v21 > 0.0)
      {
        _Q18 = vdivq_f64(v19, vdupq_lane_s64(*&v21, 0));
        v22 = v20 / v21;
      }

      v24 = *(v66[0] + 2);
      v25 = (*(a1 + 8) + 16 * *(a1 + 176));
      v27 = *v25;
      v26 = v25[1];
      v59 = _Q18;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v26);
        _Q18 = v59;
      }

      v28 = 0;
      v63 = *(*(v27 + 40) + 16 * v24);
      do
      {
        v64.f64[v28] = *(&v63 + v28);
        ++v28;
      }

      while (v28 != 3);
      v29 = *v66[0];
      v30 = (*(a1 + 8) + 16 * *(a1 + 176));
      v32 = *v30;
      v31 = v30[1];
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v31);
        _Q18 = v59;
      }

      v33 = 0;
      v60 = *(*(v32 + 40) + 16 * v29);
      do
      {
        v61.f64[v33] = *(&v60 + v33);
        ++v33;
      }

      while (v33 != 3);
      _D2 = v65 - v62;
      __asm { FMLA            D6, D2, V18.D[1] }

      v40 = v22 * (v64.f64[0] - v61.f64[0]) - _Q18.f64[0] * (v65 - v62);
      v41 = _Q18.f64[0] * (v64.f64[1] - v61.f64[1]) - _Q18.f64[1] * (v64.f64[0] - v61.f64[0]);
      v42 = sqrt(v40 * v40 + _D6 * _D6 + v41 * v41);
      v43 = 0.0;
      v44 = 1.0;
      v45 = 1.0;
      v46 = 0.0;
      v47 = 0.0;
      if (v42 > 0.0)
      {
        v45 = _D6 / v42;
        v46 = v40 / v42;
        v47 = v41 / v42;
      }

      v48 = v46 * -v22 + _Q18.f64[1] * v47;
      v49 = v47 * -_Q18.f64[0] + v22 * v45;
      v50 = v45 * -_Q18.f64[1] + _Q18.f64[0] * v46;
      v51 = sqrt(v49 * v49 + v48 * v48 + v50 * v50);
      v52 = 0.0;
      if (v51 > 0.0)
      {
        v44 = v48 / v51;
        v43 = v49 / v51;
        v52 = v50 / v51;
      }

      v53 = *a2 + 24 * v7;
      *v53 = _Q18;
      *(v53 + 16) = v22;
      v54 = (*a3 + 24 * v7);
      *v54 = -v44;
      v54[1] = -v43;
      v54[2] = -v52;
      v55 = (*a4 + 24 * v7);
      *v55 = v45;
      v55[1] = v46;
      v55[2] = v47;
      v7 = ++v8;
    }

    while (v8 < ((*(a1 + 160) - *(a1 + 152)) >> 2));
  }

  if (v66[0])
  {
    v66[1] = v66[0];
    operator delete(v66[0]);
  }

  return 1;
}

void sub_24BDBDB1C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDBDB38(uint64_t a1, int a2, int a3)
{
  v26 = a3;
  v27 = a2;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  LOBYTE(v23[0]) = 0;
  sub_24BC9FEFC(&v25, v4, v23);
  sub_24BCB7458(__p, 3uLL);
  v23[0] = a1;
  v23[1] = __p;
  v23[2] = &v27;
  v23[3] = &v26;
  v6 = *(a1 + 128);
  v5 = *(a1 + 136);
  if (v5 != v6)
  {
    v7 = 0;
    v8 = 1;
    while (1)
    {
      v9 = v7 >> 6;
      v10 = 1 << v7;
      if ((*(v25 + (v7 >> 6)) & (1 << v7)) == 0)
      {
        break;
      }

LABEL_14:
      v7 = v8;
      if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 2) <= v8++)
      {
        goto LABEL_15;
      }
    }

    v22 = v8 - 1;
    v28 = v8 - 1;
    if (*(sub_24BCB9024(a1 + 104, &v28) + 12) != -1)
    {
      v11 = *sub_24BCB9024(a1 + 104, &v22);
      v12 = v25;
      *(v25 + v9) |= v10;
      *&v12[(v11 >> 3) & 0x1FFFFFF8] |= 1 << v11;
      v13 = sub_24BC9ECE4(a1, *(a1 + 180), v22);
      v14 = v22;
      if ((*v13 & v15) != 0)
      {
        v22 = v11;
        v16 = v11;
        LODWORD(v11) = v14;
      }

      else
      {
        v16 = v22;
      }

      v17 = sub_24BDBDD6C(v23, v16);
      v18 = sub_24BC9ECE4(a1, *(a1 + 180), v11);
      if ((*v18 & v19) == 0)
      {
        if (!v17 || !sub_24BDBDD6C(v23, v11))
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }

      if (v17)
      {
LABEL_10:
        sub_24BCD87D0(a1, &v22, 0, 4);
      }
    }

LABEL_13:
    v6 = *(a1 + 128);
    v5 = *(a1 + 136);
    goto LABEL_14;
  }

LABEL_15:
  sub_24BD79520(a1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v25)
  {
    operator delete(v25);
  }

  return 1;
}

void sub_24BDBDD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDBDD6C(uint64_t a1, unsigned int a2)
{
  v21 = a2;
  v20 = *(sub_24BCB9024(*a1 + 104, &v21) + 16);
  sub_24BCD573C(*a1, &v20, *(a1 + 8));
  v3 = 0;
  v4 = -1;
  do
  {
    if (*(**(a1 + 8) + 4 * v3) == v21)
    {
      v4 = v3;
    }

    ++v3;
  }

  while (v3 != 3);
  v5 = *a1;
  v6 = (*(*a1 + 56) + 16 * **(a1 + 24));
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v7);
    v5 = *a1;
  }

  v9 = *(v8 + 40) + 12 * v20;
  v10 = (*(v5 + 80) + 16 * **(a1 + 16));
  v12 = *v10;
  v11 = v10[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v11);
    v13 = (*(*a1 + 80) + 16 * **(a1 + 16));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v9 + 4 * v4);
    v17 = *(v12 + 40);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v14);
    }

    v12 = v15;
  }

  else
  {
    v16 = *(v9 + 4 * v4);
    v17 = *(v12 + 40);
  }

  v18 = vmovn_s64(vcgeq_f64(vdupq_n_s64(0x3F50624DD2F1A9FCuLL), vabdq_f64(vcvtq_f64_f32(*(v17 + 8 * v16)), vcvtq_f64_f32(*(*(v12 + 40) + 8 * *(v9 + 4 * (v4 + 1 - 3 * ((21846 * (v4 + 1)) >> 16))))))));
  return v18.i32[0] & v18.i32[1] & 1;
}

void sub_24BDBDF18(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v62 = *MEMORY[0x277D85DE8];
  if (*(a1 + 160) != *(a1 + 152))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      sub_24BCB2008(__p, 3uLL);
      LODWORD(v56.f64[0]) = v11;
      sub_24BCD567C(a1, &v56, __p);
      v12 = 0;
      v13 = *a3 + 24 * *__p[0];
      do
      {
        v53.f64[v12] = *(v13 + v12 * 8);
        ++v12;
      }

      while (v12 != 3);
      v14 = v53;
      v15 = 1;
      v16 = v54;
      do
      {
        v17 = 0;
        v18 = *(__p[0] + v15);
        v19 = (*a3 + 24 * v18);
        do
        {
          v56.f64[v17] = v19->f64[v17];
          ++v17;
        }

        while (v17 != 3);
        v20 = -v19[1].f64[0];
        v58 = vnegq_f64(*v19);
        v59 = v20;
        v21 = (*a4 + 24 * v18);
        v22 = v21;
        for (i = 6; i != 9; ++i)
        {
          v24 = *v22++;
          v56.f64[i] = v24;
        }

        v25 = -v21[1].f64[0];
        v60 = vnegq_f64(*v21);
        v61 = v25;
        v51 = 0;
        v52 = 0;
        v50 = 0;
        sub_24BDC0C74(&v50, &v56, &v62, 4uLL);
        v28 = 0uLL;
        v29 = 0.0;
        if (v50 != v51)
        {
          v26.i32[0] = -8388609;
          v30 = v50;
          do
          {
            *v27.i64 = vmuld_lane_f64(v14.f64[1], *v30, 1) + v30->f64[0] * v14.f64[0] + v30[1].f64[0] * v16;
            v27.f32[0] = *v27.i64;
            v28 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v27, v26), 0), *v30, v28);
            if (v26.f32[0] < v27.f32[0])
            {
              v29 = v30[1].f64[0];
              v26.f32[0] = v27.f32[0];
            }

            v30 = (v30 + 24);
          }

          while (v30 != v51);
        }

        v53 = vaddq_f64(v28, v53);
        v54 = v29 + v54;
        if (v50)
        {
          v51 = v50;
          operator delete(v50);
        }

        ++v15;
      }

      while (v15 != 3);
      v50 = 0;
      v51 = 0;
      v52 = 0;
      sub_24BD3E458(&v50, &v53, (*a2 + 24 * v10), &v56);
      v31 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v56, v56).f64[1]) + v56.f64[0] * v56.f64[0] + v57 * v57);
      v32 = 0.0;
      v33 = xmmword_24BFD29A0;
      if (v31 > 0.0)
      {
        v33 = vdivq_f64(v56, vdupq_lane_s64(*&v31, 0));
        v32 = v57 / v31;
      }

      v56 = v33;
      v57 = v32;
      v34 = *a5 + 24 * v10;
      *v34 = v33.f64[0];
      *(v34 + 8) = v56.f64[1];
      *(v34 + 16) = v57;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v35 = (*(a1 + 160) - *(a1 + 152)) >> 2;
      v10 = ++v11;
    }

    while (v35 > v11);
    if (v35)
    {
      v36 = (*a2 + 8);
      v37 = (*a5 + 8);
      v38 = (*a6 + 16);
      v39 = 1;
      do
      {
        *&v40.f64[0] = vdupq_laneq_s64(*v36, 1).u64[0];
        *&v40.f64[1] = v36[-1].i64[1];
        *&v41.f64[0] = vdupq_laneq_s64(*v37, 1).u64[0];
        *&v41.f64[1] = v37[-1].i64[1];
        v42 = vmlaq_f64(vmulq_f64(*v37, vnegq_f64(v40)), v41, *v36);
        v43 = *&v36[-1].i64[1] * *v37->i64 - *v36->i64 * v41.f64[1];
        v44 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v42, v42).f64[1]) + v42.f64[0] * v42.f64[0] + v43 * v43);
        v45 = 0.0;
        v46 = xmmword_24BFD29A0;
        if (v44 > 0.0)
        {
          v46 = vdivq_f64(v42, vdupq_lane_s64(*&v44, 0));
          v45 = v43 / v44;
        }

        *(v38 - 1) = v46;
        *v38 = v45;
        v38 += 3;
        v36 = (v36 + 24);
        v37 = (v37 + 24);
      }

      while (v35 > v39++);
    }
  }
}

void sub_24BDBE2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDBE2E8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v83 = *MEMORY[0x277D85DE8];
  if (*(a1 + 160) != *(a1 + 152))
  {
    v14 = a1;
    v15 = 0;
    v67 = 0;
    do
    {
      sub_24BCB2008(v76, 3uLL);
      LODWORD(v77.f64[0]) = v67;
      sub_24BCD567C(v14, &v77, v76);
      v16 = 0;
      v17 = *v76[0];
      v18 = *a3 + 24 * v17;
      do
      {
        v74.f64[v16] = *(v18 + v16 * 8);
        ++v16;
      }

      while (v16 != 3);
      v19 = *(*a5 + 8 * v17);
      v20 = *(*a6 + 8 * v17);
      v21 = v74;
      v22 = v75;
      for (i = 1; i != 3; ++i)
      {
        v24 = 0;
        v25 = *(v76[0] + i);
        v26 = (*a3 + 24 * v25);
        do
        {
          v77.f64[v24] = v26->f64[v24];
          ++v24;
        }

        while (v24 != 3);
        v27 = -v26[1].f64[0];
        v79 = vnegq_f64(*v26);
        v80 = v27;
        v28 = (*a4 + 24 * v25);
        v29 = v28;
        for (j = 6; j != 9; ++j)
        {
          v31 = *v29++;
          v77.f64[j] = v31;
        }

        v32 = -v28[1].f64[0];
        v81 = vnegq_f64(*v28);
        v82 = v32;
        v72 = 0;
        v73 = 0;
        v71 = 0;
        sub_24BDC0C74(&v71, &v77, &v83, 4uLL);
        v33 = *(v76[0] + i);
        v77.f64[0] = *(*a5 + 8 * v33);
        v77.f64[1] = v77.f64[0];
        v78 = *(*a6 + 8 * v33);
        v79.f64[0] = v78;
        v69 = 0;
        v70 = 0;
        __p = 0;
        sub_24BDC0D00(&__p, &v77, &v79.f64[1], 4uLL);
        if (v72 == v71)
        {
          v34 = 0;
        }

        else
        {
          v34 = 0;
          v35 = (v71 + 16);
          v36 = 1;
          v37 = -3.4028e38;
          do
          {
            v38 = *(v35 - 2);
            v39 = *(v35 - 1);
            v40 = *v35;
            v35 += 3;
            v41 = v39 * v21.f64[1] + v38 * v21.f64[0] + v40 * v22;
            if (v37 < v41)
            {
              v37 = v41;
              v34 = v36 - 1;
            }

            v42 = 0xAAAAAAAAAAAAAAABLL * ((v72 - v71) >> 3) > v36++;
          }

          while (v42);
        }

        v43 = (v71 + 24 * v34);
        v44 = v75 + v43[1].f64[0];
        v74 = vaddq_f64(v74, *v43);
        v75 = v44;
        v45 = *(__p + v34);
        v46 = *(__p + (v34 & 3 ^ 2));
        v69 = __p;
        operator delete(__p);
        if (v71)
        {
          v72 = v71;
          operator delete(v71);
        }

        v19 = v19 + v45;
        v20 = v20 + v46;
      }

      v71 = 0;
      v72 = 0;
      v73 = 0;
      sub_24BD3E458(&v71, &v74, (*a2 + 24 * v15), &v77);
      v47 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v77, v77).f64[1]) + v77.f64[0] * v77.f64[0] + v78 * v78);
      v48 = 0.0;
      v49 = xmmword_24BFD29A0;
      v14 = a1;
      if (v47 > 0.0)
      {
        v49 = vdivq_f64(v77, vdupq_lane_s64(*&v47, 0));
        v48 = v78 / v47;
      }

      v77 = v49;
      v78 = v48;
      v50 = *a7 + 24 * v15;
      *v50 = v49.f64[0];
      *(v50 + 8) = v77.f64[1];
      *(v50 + 16) = v78;
      *(*a9 + 8 * v15) = v19 / 3.0;
      *(*a10 + 8 * v15) = v20 / 3.0;
      if (v76[0])
      {
        v76[1] = v76[0];
        operator delete(v76[0]);
      }

      v51 = (*(a1 + 160) - *(a1 + 152)) >> 2;
      v15 = ++v67;
    }

    while (v51 > v67);
    if (v51)
    {
      v52 = (*a2 + 8);
      v53 = (*a7 + 8);
      v54 = (*a8 + 16);
      v55 = 1;
      do
      {
        *&v56.f64[0] = vdupq_laneq_s64(*v52, 1).u64[0];
        *&v56.f64[1] = v52[-1].i64[1];
        *&v57.f64[0] = vdupq_laneq_s64(*v53, 1).u64[0];
        *&v57.f64[1] = v53[-1].i64[1];
        v58 = vmlaq_f64(vmulq_f64(*v53, vnegq_f64(v56)), v57, *v52);
        v59 = *&v52[-1].i64[1] * *v53->i64 - *v52->i64 * v57.f64[1];
        v60 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v58, v58).f64[1]) + v58.f64[0] * v58.f64[0] + v59 * v59);
        v61 = 0.0;
        v62 = xmmword_24BFD29A0;
        if (v60 > 0.0)
        {
          v62 = vdivq_f64(v58, vdupq_lane_s64(*&v60, 0));
          v61 = v59 / v60;
        }

        *(v54 - 1) = v62;
        *v54 = v61;
        v54 += 3;
        v52 = (v52 + 24);
        v53 = (v53 + 24);
        v42 = v51 > v55++;
      }

      while (v42);
    }
  }
}

void sub_24BDBE778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDBE7BC(uint64_t a1, void *a2, void *a3)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  LOBYTE(v20) = 0;
  sub_24BC9FEFC(&__p, v6, &v20);
  v8 = *(a1 + 128);
  v7 = *(a1 + 136);
  v9 = __p;
  if (v7 == v8)
  {
    if (!__p)
    {
      return;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v10 >> 6;
      v14 = 1 << v10;
      if ((v9[v10 >> 6] & (1 << v10)) == 0)
      {
        v15 = v12 - 1;
        v20 = v12 - 1;
        *(*a2 + 4 * v10) = v11;
        *(*a2 + 4 * *sub_24BCB9024(a1 + 104, &v20)) = v11;
        v16 = sub_24BC9ECE4(a1, *(a1 + 180), v20);
        if ((*v16 & v17) != 0)
        {
          v15 = *sub_24BCB9024(a1 + 104, &v20);
        }

        *(*a3 + 4 * v11) = v15;
        *(__p + v13) |= v14;
        v18 = *sub_24BCB9024(a1 + 104, &v20);
        v9 = __p;
        *(__p + ((v18 >> 3) & 0x1FFFFFF8)) |= 1 << v18;
        ++v11;
        v8 = *(a1 + 128);
        v7 = *(a1 + 136);
      }

      v10 = v12;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 2) > v12++);
  }

  operator delete(v9);
}

void sub_24BDBE930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDBE94C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 160) != *(a1 + 152))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      sub_24BCB7458(__p, 3uLL);
      v20 = v7;
      sub_24BCD573C(a1, &v20, __p);
      v8 = 0;
      v9 = 24 * v6;
      do
      {
        v10 = sub_24BCB9024(a1 + 104, (__p[0] + v8));
        *(*(*a2 + v9) + v8) = *(sub_24BCB9024(a1 + 104, v10) + 16);
        v8 += 4;
      }

      while (v8 != 12);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v11 = (*(a1 + 160) - *(a1 + 152)) >> 2;
      v6 = ++v7;
    }

    while (v11 > v7);
    if (v11)
    {
      v12 = 0;
      v13 = *a2;
      do
      {
        v14 = 0;
        v15 = *(v13 + 24 * v12);
        v16 = *a3;
        do
        {
          v17 = *(v15 + 4 * v14);
          if (v17 != -1)
          {
            v18 = 0;
            v19 = *(v13 + 24 * v17);
            while (v12 != *(v19 + 4 * v18))
            {
              if (++v18 == 3)
              {
                goto LABEL_19;
              }
            }

            *(*(v16 + 24 * v12) + 4 * v14) = v18;
          }

LABEL_19:
          ++v14;
        }

        while (v14 != 3);
        ++v12;
      }

      while (v11 > v12);
    }
  }
}

void sub_24BDBEAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BDBEAD8(uint64_t *a1, void *a2, void *a3, void *a4, double a5)
{
  v5 = a4[1] - *a4;
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 - *a1;
  if (v5 == v8 && v7 != v6)
  {
    v11 = (*a4 + 16);
    v12 = (v6 + 16);
    v13 = (*a2 + 16);
    v14 = (*a3 + 16);
    v15 = 1;
    do
    {
      v16 = *(v12 - 2);
      v17 = *(v12 - 1);
      v18 = *v12;
      v12 += 3;
      v19 = v18;
      v20 = sqrt(v17 * v17 + v16 * v16 + v19 * v19);
      v21 = *(v14 - 2);
      v22 = *(v14 - 1);
      v23 = *v14;
      v14 += 3;
      v24 = v23;
      v25 = v17 * v22 + v21 * v16 + v23 * v19;
      v26 = *(v13 - 2);
      v27 = *(v13 - 1);
      v28 = *v13;
      v13 += 3;
      v29 = atan2(v25, v17 * v27 + v26 * v16 + v28 * v19);
      v30 = __sincos_stret(v29 + a5);
      *(v11 - 2) = v26 * (v20 * v30.__cosval) + v21 * (v20 * v30.__sinval);
      *(v11 - 1) = v27 * (v20 * v30.__cosval) + v22 * (v20 * v30.__sinval);
      v31 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) > v15++;
      *v11 = v28 * (v20 * v30.__cosval) + v24 * (v20 * v30.__sinval);
      v11 += 3;
    }

    while (v31);
  }

  return v5 == v8;
}

uint64_t sub_24BDBEC0C(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4, void *a5, uint64_t *a6)
{
  v6 = *a3;
  v7 = a3[1] - *a3;
  if (v7)
  {
    v8 = 0;
    v33 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    v9 = *a2;
    v10 = *a1;
    v11 = *a6;
    v12 = *a5 + 16;
    v13 = *a4 + 8;
    v14 = 1;
    do
    {
      v15 = *(v9 + v8 + 8);
      v34 = *(v9 + v8);
      v16 = *(v9 + v8 + 16);
      v18 = *(v10 + v8);
      v17 = *(v10 + v8 + 8);
      v19 = *(v10 + v8 + 16);
      v20 = atan2(v15 * *(v6 + v8 + 8) + v34 * *(v6 + v8) + v16 * *(v6 + v8 + 16), *(v6 + v8 + 8) * v17 + v18 * *(v6 + v8) + v19 * *(v6 + v8 + 16));
      v21 = fmod(v20 + ceil(fmax(-v20, 0.0) / 6.28318531) * 6.28318531, 6.28318531);
      v22 = atan2(v15 * *(v13 + v8) + v34 * *(v13 + v8 - 8) + v16 * *(v13 + v8 + 8), v17 * *(v13 + v8) + v18 * *(v13 + v8 - 8) + v19 * *(v13 + v8 + 8));
      v23 = fmod(v22 + ceil(fmax(-v22, 0.0) / 6.28318531) * 6.28318531, 6.28318531);
      v24 = fmod((v21 + v23) * 0.5 + ceil(fmax(-((v21 + v23) * 0.5), 0.0) / 6.28318531) * 6.28318531, 6.28318531);
      v25 = fmod(v24 + 1.57079633 + ceil(fmax(-(v24 + 1.57079633), 0.0) / 6.28318531) * 6.28318531, 6.28318531);
      v26 = __sincos_stret(v24);
      v27 = (v12 + v8);
      *(v27 - 2) = v18 * v26.__cosval + v34 * v26.__sinval;
      *(v27 - 1) = v17 * v26.__cosval + v15 * v26.__sinval;
      *v27 = v19 * v26.__cosval + v16 * v26.__sinval;
      v28 = __sincos_stret(v25);
      v29 = *(v10 + v8 + 16) * v28.__cosval + *(v9 + v8 + 16) * v28.__sinval;
      v30 = (v11 + v8);
      *v30 = vaddq_f64(vmulq_n_f64(*(v10 + v8), v28.__cosval), vmulq_n_f64(*(v9 + v8), v28.__sinval));
      v30[1].f64[0] = v29;
      v8 += 24;
    }

    while (v33 > v14++);
  }

  return 1;
}

void sub_24BDBEE5C(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0x3FF0000000000000;
  *a3 = xmmword_24BFED240;
  *(a3 + 16) = *algn_24BFED250;
  *(a3 + 32) = xmmword_24BFED260;
  *(a3 + 48) = unk_24BFED270;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = sqrt(v5 * v5 + v4 * v4 + v6 * v6);
  v8 = 0.0;
  v9 = 1.0;
  v10 = 1.0;
  v11 = 0.0;
  v12 = 0.0;
  if (v7 > 0.0)
  {
    v10 = v4 / v7;
    v11 = v5 / v7;
    v12 = v6 / v7;
  }

  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = sqrt(v14 * v14 + v13 * v13 + v15 * v15);
  v17 = 0.0;
  if (v16 > 0.0)
  {
    v9 = v13 / v16;
    v8 = v14 / v16;
    v17 = v15 / v16;
  }

  if (sqrt((v5 - v14) * (v5 - v14) + (v4 - v13) * (v4 - v13) + (v6 - v15) * (v6 - v15)) < 0.00000001)
  {
    *a3 = xmmword_24BFD29A0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = xmmword_24BFD29A0;
    *(a3 + 48) = 0u;
    v18 = 0x3FF0000000000000;
LABEL_9:
    *(a3 + 64) = v18;
    return;
  }

  if (sqrt((v5 + v14) * (v5 + v14) + (v4 + v13) * (v4 + v13) + (v6 + v15) * (v6 + v15)) < 0.00000001)
  {
    *a3 = xmmword_24BFD29A0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = xmmword_24BFED230;
    *(a3 + 48) = 0u;
    v18 = 0xBFF0000000000000;
    goto LABEL_9;
  }

  v19 = v11 * v8 + v10 * v9 + v12 * v17;
  v20 = v5 * v15 - v6 * v14;
  v21 = v6 * v13 - v4 * v15;
  v22 = v4 * v14 - v5 * v13;
  v23 = sqrt(v21 * v21 + v20 * v20 + v22 * v22);
  v24 = 0.0;
  v25 = 1.0;
  v26 = 0.0;
  if (v23 > 0.0)
  {
    v25 = v20 / v23;
    v24 = v21 / v23;
    v26 = v22 / v23;
  }

  v27 = acos(v19);
  v28 = __sincos_stret(v27);
  v29 = (1.0 - v28.__cosval) * (v25 * v24);
  *a3 = v28.__cosval + v25 * v25 * (1.0 - v28.__cosval);
  *(a3 + 8) = v29 + v26 * v28.__sinval;
  v30 = (1.0 - v28.__cosval) * (v25 * v26);
  *(a3 + 16) = v30 - v24 * v28.__sinval;
  *(a3 + 24) = v29 - v26 * v28.__sinval;
  v31 = (1.0 - v28.__cosval) * (v24 * v26);
  *(a3 + 32) = v28.__cosval + v24 * v24 * (1.0 - v28.__cosval);
  *(a3 + 40) = v31 + v25 * v28.__sinval;
  *(a3 + 48) = v30 + v24 * v28.__sinval;
  *(a3 + 56) = v31 - v25 * v28.__sinval;
  *(a3 + 64) = v28.__cosval + v26 * v26 * (1.0 - v28.__cosval);
}

double sub_24BDBF070(double a1)
{
  v1 = a1 <= 0.0;
  result = -1.0;
  if (!v1)
  {
    return 1.0;
  }

  return result;
}

double sub_24BDBF084@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X2>, double *a4@<X8>)
{
  v5 = a3[1];
  v4 = a3[2];
  v7 = a1[1];
  v6 = a1[2];
  v8 = *a1;
  v9 = v7 * v4 - v6 * v5;
  v10 = v6 * *a3 - *a1 * v4;
  v11 = *a1 * v5 - v7 * *a3;
  v12 = sqrt(v10 * v10 + v9 * v9 + v11 * v11);
  v13 = 0.0;
  v14 = 1.0;
  v15 = 1.0;
  v16 = 0.0;
  if (v12 > 0.0)
  {
    v15 = v9 / v12;
    v13 = v10 / v12;
    v16 = v11 / v12;
  }

  v17 = a2[1];
  v18 = a2[2];
  v19 = v7 * v17 + v8 * *a2 + v6 * v18;
  v20 = v17 * v13 + v15 * *a2 + v16 * v18;
  v21 = fabs(v19);
  v22 = fabs(v20);
  if (v21 < v22)
  {
    v8 = v15;
    v7 = v13;
  }

  else
  {
    v20 = v19;
  }

  if (v21 < v22)
  {
    v6 = v16;
  }

  if (v20 <= 0.0)
  {
    v14 = -1.0;
  }

  result = v6 * v14;
  *a4 = v8 * v14;
  a4[1] = v7 * v14;
  a4[2] = result;
  return result;
}

uint64_t sub_24BDBF140(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a5 != a3)
  {
    sub_24BDC0D74(a5, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  }

  if (a6 != a4)
  {
    sub_24BDC0D74(a6, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  }

  v10 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  LOBYTE(v73.f64[0]) = 0;
  sub_24BC9FEFC(&v87, v10, &v73);
  v86 = 0u;
  memset(v85, 0, sizeof(v85));
  v11 = v88 & 0x3F;
  if (v88 > 0x3F || v11 != 0)
  {
    v13 = v87;
    v14 = &v87[v88 >> 6];
    do
    {
      v15 = 0;
      v16 = v14;
      v17 = v13;
      while (((*v17 >> v15) & 1) != 0)
      {
        if (v15 == 63)
        {
          v16 = v14;
        }

        v17 += v15 == 63;
        if (v15 == 63)
        {
          v15 = 0;
        }

        else
        {
          ++v15;
        }

        if (v15 == v11 && v17 == v16)
        {
          goto LABEL_60;
        }
      }

      LODWORD(v18) = -1;
      do
      {
        v18 = (v18 + 1);
      }

      while (((*(v13 + ((v18 >> 3) & 0x1FFFFFF8)) >> v18) & 1) != 0);
      v84 = v18;
      sub_24BCA09A8(v85, &v84);
      *(v87 + ((v84 >> 3) & 0x1FFFFFF8)) |= 1 << v84;
      v19 = *(&v86 + 1);
      if (*(&v86 + 1))
      {
        v69 = a1;
        do
        {
          v64 = *(*(*(&v85[0] + 1) + ((v86 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v86 & 0x3FF));
          *&v86 = v86 + 1;
          *(&v86 + 1) = v19 - 1;
          if (v86 >= 0x800)
          {
            operator delete(**(&v85[0] + 1));
            *(&v85[0] + 1) += 8;
            *&v86 = v86 - 1024;
          }

          sub_24BCB7458(v83, 3uLL);
          LODWORD(v73.f64[0]) = v64;
          sub_24BCD573C(a1, &v73, v83);
          for (i = 0; i != 3; ++i)
          {
            v21 = sub_24BCB9024(a1 + 104, v83[0] + i);
            v22 = *(sub_24BCB9024(a1 + 104, v21) + 16);
            if (v22 != -1 && (v87[v22 >> 6] & (1 << v22)) == 0)
            {
              v67 = v87[v22 >> 6];
              v68 = v87;
              v23 = 0;
              v24 = (*a5 + 24 * v64);
              *&v25 = vcvt_f32_f64(*v24);
              *&v26 = v24[1].f64[0];
              *(&v25 + 1) = v26;
              v27 = (*a5 + 24 * v22);
              *v28.i8 = vcvt_f32_f64(*v27);
              v66 = v27;
              *&v29 = v27[1].f64[0];
              v28.i64[1] = v29;
              v30 = *a2;
              v31 = (*a2 + 24 * v64);
              *&v32 = vcvt_f32_f64(*v31);
              *&v33 = v31[1].f64[0];
              *(&v32 + 1) = v33;
              v82 = v22;
              v80 = v28;
              v81 = v25;
              v79 = v32;
              v34 = (v30 + 24 * v22);
              *v28.i8 = vcvt_f32_f64(*v34);
              *&v25 = v34[1].f64[0];
              v28.i64[1] = v25;
              v65 = v28;
              v78 = v28;
              do
              {
                v72[v23] = *(&v79 + v23);
                ++v23;
              }

              while (v23 != 3);
              for (j = 0; j != 3; ++j)
              {
                v71[j] = *&v78.i32[j];
              }

              sub_24BDBEE5C(v72, v71, &v73);
              for (k = 0; k != 3; ++k)
              {
                *&v70.i64[k] = *(&v81 + k);
              }

              v37 = 0;
              v75 = 0uLL;
              v38 = &v73;
              v76 = 0.0;
              do
              {
                v39 = 0;
                v40 = 0.0;
                v41 = v38;
                do
                {
                  v42 = *v41;
                  v41 += 3;
                  v40 = v40 + v42 * *&v70.i64[v39++];
                }

                while (v39 != 3);
                v75.f64[v37++] = v40;
                v38 = (v38 + 8);
              }

              while (v37 != 3);
              *v44.f32 = vcvt_f32_f64(v75);
              *&v43 = v76;
              v44.i64[1] = v43;
              v45 = vmulq_f32(v44, v44);
              v45.i32[3] = 0;
              v46 = vpaddq_f32(v45, v45);
              v47 = vpaddq_f32(v46, v46);
              v48 = xmmword_24BFBD1C0;
              if (v47.f32[0] > 0.0)
              {
                v48 = vdivq_f32(v44, vsqrtq_f32(v47));
              }

              v49 = 0;
              v77 = v48;
              do
              {
                v75.f64[v49] = *&v80.i32[v49];
                ++v49;
              }

              while (v49 != 3);
              for (m = 0; m != 3; ++m)
              {
                v72[m] = v77.f32[m];
              }

              for (n = 0; n != 3; ++n)
              {
                v71[n] = *&v78.i32[n];
              }

              sub_24BDBF084(v75.f64, v72, v71, v73.f64);
              v52 = 0;
              *v54.i8 = vcvt_f32_f64(v73);
              *&v53 = v74;
              v54.i64[1] = v53;
              v70 = v54;
              do
              {
                v73.f64[v52] = *&v70.i32[v52];
                ++v52;
              }

              while (v52 != 3);
              *v66 = v73;
              v66[1].f64[0] = v74;
              v55 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v65, vextq_s8(v65, v65, 0xCuLL)), v65), vuzp2q_s32(vextq_s8(v54, v54, 4uLL), v54)), vzip2q_s32(vzip1q_s32(v54, vextq_s8(v54, v54, 0xCuLL)), v54), vuzp2q_s32(vextq_s8(v65, v65, 4uLL), v65));
              v56 = vmulq_f32(v55, v55);
              v56.i32[3] = 0;
              v57 = vpaddq_f32(v56, v56);
              v58 = vpaddq_f32(v57, v57);
              v59 = xmmword_24BFBD1C0;
              if (v58.f32[0] > 0.0)
              {
                v59 = vdivq_f32(v55, vsqrtq_f32(v58));
              }

              v60 = 0;
              v75 = v59;
              do
              {
                v73.f64[v60] = *(v75.f64 + v60);
                ++v60;
              }

              while (v60 != 3);
              v61 = (*a6 + 24 * v22);
              *v61 = v73;
              v61[1].f64[0] = v74;
              v68[v22 >> 6] = v67 | (1 << v22);
              sub_24BCA09A8(v85, &v82);
            }

            a1 = v69;
          }

          if (v83[0])
          {
            v83[1] = v83[0];
            operator delete(v83[0]);
          }

          v19 = *(&v86 + 1);
        }

        while (*(&v86 + 1));
      }

      v13 = v87;
      v14 = &v87[v88 >> 6];
      v11 = v88 & 0x3F;
    }

    while (v88 > 0x3F || (v88 & 0x3F) != 0);
  }

LABEL_60:
  sub_24BCA102C(v85);
  if (v87)
  {
    operator delete(v87);
  }

  return 1;
}

void sub_24BDBF72C(_Unwind_Exception *a1)
{
  sub_24BCA102C((v1 - 160));
  v3 = *(v1 - 112);
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BDBF770(uint64_t *a1, void *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v6 = *a1;
  v7 = *a1 + 24 * a5;
  v31 = *v7;
  v32 = *(v7 + 16);
  v8 = a4;
  v9 = *a3;
  v10 = *a3 + 24 * a4;
  v29 = *v10;
  v30 = *(v10 + 16);
  v11 = (v9 + 24 * a5);
  v27 = *v11;
  v28 = *(v11 + 2);
  v12 = v23;
  sub_24BDBEE5C(&v27, &v29, v23);
  v13 = 0;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  do
  {
    v14 = 0;
    v15 = 0.0;
    v16 = v12;
    do
    {
      v17 = *v16;
      v16 += 3;
      v15 = v15 + v17 * *(&v31 + v14);
      v14 += 8;
    }

    while (v14 != 24);
    *(&v24 + v13++) = v15;
    ++v12;
  }

  while (v13 != 3);
  v18 = sqrt(v25 * v25 + v24 * v24 + v26 * v26);
  if (v18 <= 0.0)
  {
    v20 = 0.0;
    v19 = 1.0;
    v21 = 0.0;
  }

  else
  {
    v19 = v24 / v18;
    v20 = v25 / v18;
    v21 = v26 / v18;
  }

  return vcvtmd_s64_f64(atan2(v20 * *(*a2 + 24 * v8 + 8) + v19 * *(*a2 + 24 * v8) + v21 * *(*a2 + 24 * v8 + 16), v20 * *(v6 + 24 * v8 + 8) + v19 * *(v6 + 24 * v8) + v21 * *(v6 + 24 * v8 + 16)) / 1.57079633 + 0.5) & 3;
}

uint64_t sub_24BDBF8E0(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, void *a5)
{
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  LOBYTE(v35[0]) = 0;
  sub_24BC9FEFC(&v36, v8, v35);
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  LODWORD(__p[0]) = 0;
  sub_24BD0E524(v35, v9, __p);
  v11 = *(a1 + 128);
  v10 = *(a1 + 136);
  if (v10 != v11)
  {
    v12 = 0;
    v13 = v36;
    v14 = 1;
    do
    {
      if ((v13[v12 >> 6] & (1 << v12)) == 0)
      {
        LODWORD(__p[0]) = v14 - 1;
        v34 = *sub_24BCB9024(a1 + 104, __p);
        v15 = sub_24BC9ECE4(a1, *(a1 + 180), __p[0]);
        if ((*v15 & v16) == 0)
        {
          v17 = sub_24BCB9024(a1 + 104, __p);
          v18 = sub_24BC9ECE4(a1, *(a1 + 180), *v17);
          if ((*v18 & v19) == 0)
          {
            v20 = *(sub_24BCB9024(a1 + 104, __p) + 16);
            v21 = sub_24BCB9024(a1 + 104, &v34);
            v22 = sub_24BDBF770(a3, a4, a2, v20, *(v21 + 16));
            v23 = v35[0];
            *(v35[0] + v12) = v22;
            v23[v34] = -v22 & 3;
          }
        }

        v13 = v36;
        *(v36 + (v12 >> 6)) |= 1 << v12;
        *(v13 + ((v34 >> 3) & 0x1FFFFFF8)) |= 1 << v34;
        v11 = *(a1 + 128);
        v10 = *(a1 + 136);
      }

      v12 = v14;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v10 - v11) >> 2) > v14++);
  }

  if (*(a1 + 160) != *(a1 + 152))
  {
    LODWORD(v25) = 0;
    do
    {
      sub_24BCB7458(__p, 3uLL);
      v34 = v25;
      sub_24BCD573C(a1, &v34, __p);
      v26 = 0;
      v27 = __p[0];
      v28 = v35[0];
      v29 = *a5 + 12 * v25;
      do
      {
        *(v29 + v26) = v28[*&v27[v26]];
        v26 += 4;
      }

      while (v26 != 12);
      __p[1] = v27;
      operator delete(v27);
      v25 = (v25 + 1);
    }

    while (v25 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  }

  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (v36)
  {
    operator delete(v36);
  }

  return 1;
}

void sub_24BDBFB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDBFB9C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v28[19] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  sub_24BCB0D30(&v26, v7, 16);
  v9 = *(a2 + 104);
  v8 = *(a2 + 112);
  if (v8 != v9)
  {
    v10 = 0;
    v11 = MEMORY[0x277D82680];
    v12 = 1;
    do
    {
      if (*(*a3 + 4 * v10))
      {
        v24[0] = 0;
        v24[1] = 0;
        *(v24 + *(*a4 + 4 * v10) - 1) = 1065353216;
        v13 = sub_24BC95264(&v26, "v ", 2);
        v15 = (*(a2 + 8) + 16 * *(a2 + 176));
        v17 = *v15;
        v16 = v15[1];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v16);
        }

        v18 = sub_24BD36FE4(v13, (*(v17 + 40) + 16 * v10), v14);
        v19 = sub_24BC95264(v18, " ", 1);
        v21 = sub_24BD36FE4(v19, v24, v20);
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v22 = std::locale::use_facet(&v25, v11);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(&v25);
        std::ostream::put();
        std::ostream::flush();
        v9 = *(a2 + 104);
        v8 = *(a2 + 112);
      }

      v10 = v12++;
    }

    while (v10 < (v8 - v9) >> 2);
  }

  v26 = *MEMORY[0x277D82810];
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x24C2542E0](&v27);
  std::ostream::~ostream();
  return MEMORY[0x24C2547D0](v28);
}

uint64_t sub_24BDBFE60(void *a1, void *a2, uint64_t *a3, void *a4, _DWORD *a5)
{
  v8 = a1[20] - a1[19];
  v9 = (v8 >> 2);
  sub_24BCB2008(__p, 3uLL);
  sub_24BD41DF4(v28, v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if ((v8 & 0x3FFFFFFFCLL) != 0)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      LODWORD(__p[0]) = v11;
      sub_24BCD567C(a1, __p, v28[0] + v10);
      ++v11;
      v10 += 24;
    }

    while (v9 != v11);
  }

  if (a1[14] != a1[13])
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      LODWORD(__p[0]) = v13;
      if (!sub_24BCD93B0(a1, __p))
      {
        v26 = v13;
        sub_24BCB9454(__p, a1 + 13, &v26);
        v26 = sub_24BCB947C(__p);
        if (v26 != -1)
        {
          v15 = 0;
          while (1)
          {
            v16 = sub_24BCB9024((a1 + 13), &v26);
            v17 = 0;
            v18 = *(v16 + 16);
            v19 = -1;
            do
            {
              if (*(*(v28[0] + 24 * v18) + 4 * v17) == v13)
              {
                v19 = v17;
              }

              ++v17;
            }

            while (v17 != 3);
            if (v19 == -1)
            {
              break;
            }

            v15 += *(*a2 + 12 * v18 + 4 * v19);
            v26 = sub_24BCB947C(__p);
            if (v26 == -1)
            {
              v20 = v15 & 3;
              goto LABEL_19;
            }
          }

          v22 = 0;
          goto LABEL_26;
        }

        v20 = 0;
LABEL_19:
        v21 = *a3;
        *(*a3 + 4 * v12) = v20 != 0;
        *(*a4 + 4 * v12) = v20;
        if (*(v21 + 4 * v12))
        {
          ++v14;
        }
      }

      v12 = ++v13;
      if (v13 >= ((a1[14] - a1[13]) >> 2))
      {
        goto LABEL_25;
      }
    }
  }

  v14 = 0;
LABEL_25:
  *a5 += v14;
  v22 = 1;
LABEL_26:
  __p[0] = v28;
  sub_24BC8EE84(__p);
  return v22;
}

void sub_24BDC007C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDC00C4(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (a1[20] - a1[19]) >> 2;
  v7 = v6;
  sub_24BDC0F0C(__p, 3uLL);
  sub_24BDC0F88(v70, v6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  LODWORD(v68[0]) = -1;
  sub_24BD0E524(__p, 3uLL, v68);
  sub_24BDC10C0(v69, v6, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  sub_24BDBE94C(a1, v70, v69);
  LOBYTE(__p[0]) = 0;
  sub_24BC9FEFC(v68, v6, __p);
  LODWORD(v64[0]) = 0;
  if (v6)
  {
    v8 = 0;
    v58 = v6;
    do
    {
      v9 = v8 >> 6;
      if ((*(v68[0] + v9) & (1 << v8)) == 0)
      {
        v66 = 0u;
        v67 = 0u;
        *__p = 0u;
        *(v68[0] + v9) |= 1 << v8;
        sub_24BCA09A8(__p, v64);
        while (*(&v67 + 1))
        {
          v10 = *(*(__p[1] + ((v67 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v67 & 0x3FF));
          *&v67 = v67 + 1;
          --*(&v67 + 1);
          if (v67 >= 0x800)
          {
            operator delete(*__p[1]);
            __p[1] = __p[1] + 8;
            *&v67 = v67 - 1024;
          }

          v11 = 0;
          v12 = 12 * v10;
          do
          {
            v13 = *(*(v70[0] + 24 * v10) + 4 * v11);
            LODWORD(v60) = v13;
            v14 = *(*(v69[0] + 24 * v10) + 4 * v11);
            if (v14 == -1)
            {
              v15 = v10;
            }

            else
            {
              v15 = v13;
            }

            LODWORD(v60) = v15;
            if (!*(*a2 + v12 + 4 * v11))
            {
              if (v14 == -1)
              {
                v16 = v11;
              }

              else
              {
                v16 = v14;
              }

              if (!*(*a2 + 12 * v15 + 4 * v16))
              {
                v17 = v68[0];
                if (((*(v68[0] + ((v15 >> 3) & 0x1FFFFFF8)) >> v15) & 1) == 0)
                {
                  v18 = *a3;
                  *(*a3 + v12 + 4 * v11) = 0;
                  *(v18 + 12 * v60 + 4 * v16) = 0;
                  *&v17[(v60 >> 3) & 0x1FFFFFF8] |= 1 << v60;
                  sub_24BCA09A8(__p, &v60);
                }
              }
            }

            ++v11;
          }

          while (v11 != 3);
        }

        sub_24BCA102C(__p);
        v8 = v64[0];
        LODWORD(v6) = v58;
      }

      LODWORD(v64[0]) = ++v8;
    }

    while (v8 < v6);
  }

  v19 = (a1[14] - a1[13]) >> 2;
  LODWORD(v64[0]) = 0;
  sub_24BD0E524(__p, v19, v64);
  v20 = 0xCCCCCCCCCCCCCCCDLL * ((a1[17] - a1[16]) >> 2);
  LOBYTE(v60) = 0;
  sub_24BC9FEFC(v64, v20, &v60);
  v22 = a1[16];
  v21 = a1[17];
  if (v21 == v22)
  {
LABEL_44:
    v35 = 0;
    do
    {
      if (!v6)
      {
        break;
      }

      v36 = 0;
      v37 = 0;
      v38 = 1;
      do
      {
        sub_24BCB2008(&v60, 3uLL);
        LODWORD(v59[0]) = v37;
        sub_24BCD567C(a1, v59, &v60);
        v39 = 0;
        v40 = *a3;
        v41 = v60;
        v42 = __p[0];
        v43 = v70[0];
        v44 = v69[0];
        v45 = *a2 + v36;
        v46 = *a3 + v36;
        do
        {
          if (*(v46 + 4 * v39) && !*(v45 + 4 * v39) && v42[v41[v39]] == 1)
          {
            *(v46 + 4 * v39) = 0;
            v47 = *(*(v43 + 24 * v37) + 4 * v39);
            if (v47 != -1)
            {
              *(v40 + 12 * v47 + 4 * *(*(v44 + 24 * v37) + 4 * v39)) = 0;
            }

            v38 = 0;
            --v42[v41[v39]];
            if (v39 == 2)
            {
              v48 = 0;
            }

            else
            {
              v48 = v39 + 1;
            }

            --v42[v41[v48]];
          }

          ++v39;
        }

        while (v39 != 3);
        if (v60)
        {
          v61 = v60;
          operator delete(v60);
        }

        ++v37;
        v36 += 12;
      }

      while (v37 != v7);
      v49 = v35++ > 0x2710;
      v50 = v49;
    }

    while (((v50 | v38) & 1) == 0);
    if (v64[0])
    {
      operator delete(v64[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v51 = 1;
    if (v6)
    {
      v52 = 0;
      v53 = 0;
      v54 = *a2;
      do
      {
        v55 = 0;
        v56 = *a3 + v52;
        do
        {
          if (*(v54 + v55))
          {
            *(v56 + v55) = 1;
          }

          v55 += 4;
        }

        while (v55 != 12);
        ++v53;
        v52 += 12;
        v54 += 12;
      }

      while (v53 != v7);
      v51 = 1;
    }

    goto LABEL_77;
  }

  v23 = 0;
  v24 = 0;
  while (1)
  {
    v25 = v23 >> 6;
    v26 = 1 << v23;
    v27 = *(v64[0] + v25);
    if ((v27 & v26) == 0)
    {
      break;
    }

LABEL_43:
    v23 = ++v24;
    if (0xCCCCCCCCCCCCCCCDLL * ((v21 - v22) >> 2) <= v24)
    {
      goto LABEL_44;
    }
  }

  v63 = v24;
  *(v64[0] + v25) = v27 | v26;
  v28 = sub_24BCB9024((a1 + 13), &v63);
  *(v64[0] + ((*v28 >> 3) & 0x1FFFFFF8)) |= 1 << *v28;
  v62 = *(sub_24BCB9024((a1 + 13), &v63) + 16);
  if (v62 != -1 || (v63 = *sub_24BCB9024((a1 + 13), &v63), v62 = *(sub_24BCB9024((a1 + 13), &v63) + 16), v62 != -1))
  {
    sub_24BCB7458(&v60, 3uLL);
    sub_24BCD573C(a1, &v62, &v60);
    sub_24BCB2008(v59, 3uLL);
    sub_24BCD567C(a1, &v62, v59);
    v29 = 0;
    v30 = v60;
    while (*(v60 + v29) != v63)
    {
      if (++v29 == 3)
      {
        v31 = 3;
        goto LABEL_37;
      }
    }

    v31 = v29;
LABEL_37:
    v32 = v59[0];
    if (*(*a3 + 12 * v62 + 4 * v31))
    {
      v33 = __p[0];
      ++*(__p[0] + *(v59[0] + v31));
      v34 = v32[v31 + 1 - 3 * (((v31 + 1) * 0x5555555555555556uLL) >> 64)];
      ++v33[v34];
    }

    else if (!v59[0])
    {
      goto LABEL_41;
    }

    v59[1] = v32;
    operator delete(v32);
    v30 = v60;
    if (!v60)
    {
LABEL_42:
      v22 = a1[16];
      v21 = a1[17];
      goto LABEL_43;
    }

LABEL_41:
    v61 = v30;
    operator delete(v30);
    goto LABEL_42;
  }

  if (v64[0])
  {
    operator delete(v64[0]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v51 = 0;
LABEL_77:
  if (v68[0])
  {
    operator delete(v68[0]);
  }

  __p[0] = v69;
  sub_24BC8EE84(__p);
  __p[0] = v70;
  sub_24BC8EE84(__p);
  return v51;
}

void sub_24BDC0718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  __p = (v27 - 136);
  sub_24BC8EE84(&__p);
  __p = (v27 - 112);
  sub_24BC8EE84(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDC0818(uint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v72 = *MEMORY[0x277D85DE8];
  v8 = (a1 + 160);
  v9 = (a1 + 152);
  sub_24BD4308C(v65, (*(a1 + 160) - *(a1 + 152)) >> 2);
  sub_24BD4308C(v64, (*v8 - *v9) >> 2);
  sub_24BD4308C(__p, (*(a1 + 160) - *(a1 + 152)) >> 2);
  sub_24BDBD74C(a1, v65, v64, __p);
  v10 = *a2;
  if (a2[1] != *a2)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = 0;
      v14 = (v10 + 24 * v11);
      v15 = v10 + 24 * v12;
      do
      {
        (&v66)[v13] = *(v15 + v13 * 8);
        ++v13;
      }

      while (v13 != 3);
      v16 = -v14[1].f64[0];
      v68 = vnegq_f64(*v14);
      v69 = v16;
      v17 = (*a3 + 24 * v11);
      v18 = (*a3 + 24 * v12);
      for (i = 6; i != 9; ++i)
      {
        v20 = *v18++;
        (&v66)[i] = v20;
      }

      v21 = -v17[1].f64[0];
      v70 = vnegq_f64(*v17);
      v71 = v21;
      v61 = 0;
      v62 = 0;
      v60 = 0;
      sub_24BDC0C74(&v60, &v66, &v72, 4uLL);
      sub_24BCA1A48(&v66, 4uLL);
      v22 = 3 * v11;
      v23 = (v64[0] + 8 * v22);
      v24 = (*a4 + 8 * v22);
      v25 = (v65[0] + 8 * v22);
      v26 = atan2(v23[1] * v24[1] + *v23 * *v24 + v23[2] * v24[2], v24[1] * v25[1] + *v25 * *v24 + v25[2] * v24[2]);
      v27 = 0;
      v28 = v60;
      v29 = v60 + 2;
      v30 = v66;
      do
      {
        v31 = *(v29 - 2);
        v32 = *(v29 - 1);
        v33 = *v29;
        v29 += 3;
        v34 = atan2(v23[1] * v32 + *v23 * v31 + v23[2] * v33, v32 * v25[1] + *v25 * v31 + v25[2] * v33);
        v30[v27++] = fmod(v34 - v26 + ceil(fmax(-(v34 - v26), 0.0) / 6.28318531) * 6.28318531, 6.28318531);
      }

      while (v27 != 4);
      v35 = 0;
      if (v30 == v67)
      {
        v37 = v30;
      }

      else
      {
        v36 = v30 + 1;
        v37 = v30;
        if (v30 + 1 != v67)
        {
          v38 = *v30;
          v39 = *v30;
          v40 = v30 + 1;
          v41 = v30;
          v42 = v30 + 1;
          do
          {
            v43 = *v42++;
            v44 = v43;
            if (v43 < v39)
            {
              v39 = v44;
              v41 = v40;
            }

            v40 = v42;
          }

          while (v42 != v67);
          v45 = v41 - v30;
          v37 = v30;
          v46 = v30 + 1;
          do
          {
            v47 = *v46++;
            v48 = v47;
            if (v38 < v47)
            {
              v38 = v48;
              v37 = v36;
            }

            v36 = v46;
          }

          while (v46 != v67);
          v35 = v45 >> 3;
        }
      }

      v49 = v37 - v30;
      v50 = &v28[3 * v35];
      v51 = (*a6 + 8 * v22);
      *v51 = *v50;
      v51[1] = *(v50 + 1);
      v51[2] = *(v50 + 2);
      v52 = &v28[3 * (v49 >> 3)];
      v53 = (*a7 + 8 * v22);
      *v53 = *v52;
      v53[1] = *(v52 + 1);
      v53[2] = *(v52 + 2);
      if (!v30 || (v67 = v30, operator delete(v30), (v28 = v60) != 0))
      {
        v61 = v28;
        operator delete(v28);
      }

      v10 = *a2;
      v11 = ++v12;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v12);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v64[0])
  {
    v64[1] = v64[0];
    operator delete(v64[0]);
  }

  if (v65[0])
  {
    v65[1] = v65[0];
    operator delete(v65[0]);
  }

  return 1;
}

void sub_24BDC0C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
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

uint64_t *sub_24BDC0C74(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCDD9BC(result, a4);
  }

  return result;
}

void sub_24BDC0CE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BDC0D00(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC91F24(result, a4);
  }

  return result;
}

void sub_24BDC0D58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_24BDC0D74(uint64_t *a1, void *a2, void *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
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

      sub_24BCDD9BC(a1, v11);
    }

    sub_24BC8E01C();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = v5[1];
      *(result + 2) = v5[2];
      v5 += 3;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        *(result + 1) = v5[1];
        *(result + 2) = v5[2];
        v5 += 3;
        result += 24;
      }

      while (v5 != v13);
    }

    while (v13 != a3)
    {
      for (i = 0; i != 3; ++i)
      {
        *&v12[i * 8] = v13[i];
      }

      v13 += 3;
      v12 += 24;
    }

    a1[1] = v12;
  }

  return result;
}

uint64_t *sub_24BDC0F0C(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_24BC94FEC(a1, a2);
  }

  return a1;
}

void sub_24BDC0F6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BDC0F88(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_24BC8F47C(a1, a2);
  }

  return a1;
}

uint64_t *sub_24BDC1044(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC94FEC(result, a4);
  }

  return result;
}

void sub_24BDC10A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BDC10C0(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_24BCA04D4(a1, a2);
  }

  return a1;
}

uint64_t sub_24BDC117C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, double **a5, char **a6, double *a7, uint64_t a8, int a9, int a10, char a11, uint64_t a12)
{
  v35 = *MEMORY[0x277D85DE8];
  sub_24BC94F74(v32, *(a2 + 24));
  sub_24BCA1524(v34, a12);
  sub_24BDC1450(a1, a2, a6, v32, v34);
  sub_24BC9F00C(v34);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  *v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  *v26 = 0u;
  *v24 = 0u;
  sub_24BDC1F2C(a1, a2, a3, a4, a5, a6, v32, &v29, v24);
  if (*(a12 + 24))
  {
    sub_24BC836D4(__p, &unk_24C0435AF);
    sub_24BC976F4(a12, __p, 0.6);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_24BCA1524(v33, a12);
  v19 = sub_24BD4D76C(v24, a4, a5, a6, a7, 0, a10, a11, v33);
  sub_24BC9F00C(v33);
  if (v19)
  {
    sub_24BDC2498(a1, a2, v32, &v29, v20);
    sub_24BDC2524(a1, a2, a4, v32, &v29);
    if (*(a12 + 24))
    {
      sub_24BC836D4(__p, &unk_24C0435AF);
      sub_24BC976F4(a12, __p, 0.9);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (v27[1])
  {
    *&v28 = v27[1];
    operator delete(v27[1]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (v24[1])
  {
    *&v25 = v24[1];
    operator delete(v24[1]);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }

  return v19;
}

void sub_24BDC13C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9EE94(&a16);
  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

void sub_24BDC1450(uint64_t a1, uint64_t a2, char **a3, void *a4, uint64_t a5)
{
  sub_24BDC287C(a2);
  v9 = *(a2 + 24);
  v97 = a1;
  v12 = *(a1 + 128);
  v11 = a1 + 128;
  v10 = v12;
  *(v11 + 24) = v9;
  *(v11 + 28) = v9;
    ;
  }

  *(v97 + 136) = v10;
  sub_24BDC28D8(v11, v9);
  if (v9)
  {
    v14 = 0;
    do
    {
      *sub_24BDC2964(v11, v14, v14) = 0x3FF0000000000000;
      ++v14;
    }

    while (v9 != v14);
  }

  v15 = *(a2 + 28);
  a4[1] = *a4;
  v16 = *(a2 + 24);
  LODWORD(v115[0]) = -1;
  sub_24BD7B3FC(a4, v16, v115);
  LOBYTE(v115[0]) = 0;
  sub_24BC9FEFC(&v120, v15, v115);
  v19 = *a3;
  v20 = a3[1] - *a3;
  if (v20)
  {
    v21 = v20 >> 2;
    v22 = v120;
    v23 = 1;
    do
    {
      v24 = *v19++;
      *&v22[(v24 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v24;
    }

    while (v21 > v23++);
  }

  v26 = sub_24BDC3328(v119, *(a2 + 24), *(a2 + 28), v17, v18);
  sub_24BDC29D8(v26, a2);
  memset(v115, 0, sizeof(v115));
  v117 = 0;
  v118 = 0;
  v116 = &v117;
  LODWORD(__p) = 0;
  sub_24BD7B3FC(v115, v9, &__p);
  if (v9)
  {
    for (j = 0; j != v9; ++j)
    {
      v28 = (*a2 + 40 * j);
      v29 = v28[2];
      if (v29)
      {
        v30 = 0;
        do
        {
          if (v29[3] != 0.0)
          {
            ++v30;
          }

          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        v30 = 0;
      }

      LODWORD(__p) = v15 - 1;
      v31 = sub_24BD80E70(v28, &__p);
      if (v31 && *(v31 + 3) != 0.0)
      {
        --v30;
      }

      v32 = *(v115[0] + j) + 1;
      *(v115[0] + j) = v32;
      __p = __PAIR64__(j, v30);
      v108 = v32;
      sub_24BDC3664(&v116, &__p, &__p);
    }
  }

  LOBYTE(__p) = 0;
  sub_24BC9FEFC(&v114, v9, &__p);
  __src = 0;
  v112 = 0;
  v113 = 0;
  sub_24BCB8D20(&__src, v9);
  if (*(a5 + 24))
  {
    sub_24BC836D4(&__p, &unk_24C0435AF);
    sub_24BC976F4(a5, &__p, 0.41);
    if (SHIBYTE(v109) < 0)
    {
      operator delete(__p);
    }
  }

  v96 = v118;
  v95 = v118;
  v33 = v15 - 1;
  while (!sub_24BDC2AF8(v115))
  {
    v34 = v118;
    if (__ROR8__(0x1CAC083126E978D5 * v118, 3) <= 0x4189374BC6A7EFuLL)
    {
      if (*(a5 + 24))
      {
        sub_24BC836D4(&__p, &unk_24C0435AF);
        v46 = ((v96 - v34) / v95 * 18.9 + 41.0) / 100.0;
        sub_24BC976F4(a5, &__p, v46);
        if (SHIBYTE(v109) < 0)
        {
          operator delete(__p);
        }
      }
    }

    v35 = sub_24BDC2B6C(v115);
    v36 = v35;
    v37 = v112;
    if (v112 >= v113)
    {
      v39 = __src;
      v40 = v112 - __src;
      v41 = (v112 - __src) >> 2;
      v42 = v41 + 1;
      if ((v41 + 1) >> 62)
      {
        sub_24BC8E01C();
      }

      v43 = v113 - __src;
      if ((v113 - __src) >> 1 > v42)
      {
        v42 = v43 >> 1;
      }

      v44 = v43 >= 0x7FFFFFFFFFFFFFFCLL;
      v45 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v44)
      {
        v45 = v42;
      }

      if (v45)
      {
        sub_24BC92E0C(&__src, v45);
      }

      *(4 * v41) = v35;
      v38 = 4 * v41 + 4;
      memcpy(0, v39, v40);
      v47 = __src;
      __src = 0;
      v112 = v38;
      v113 = 0;
      if (v47)
      {
        operator delete(v47);
      }
    }

    else
    {
      *v112 = v35;
      v38 = (v37 + 4);
    }

    v112 = v38;
    v48 = v36;
    *(v114 + ((v36 >> 3) & 0x1FFFFFF8)) |= 1 << v36;
    v110 = -1;
    sub_24BDC3790(&__p, *a2 + 40 * v36);
    v49 = v109;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    if (v109)
    {
      LODWORD(v50) = 0;
      v51 = v109;
      do
      {
        if (v51[3] == 0.0)
        {
          v50 = v50;
        }

        else
        {
          v50 = (v50 + 1);
        }

        v51 = *v51;
      }

      while (v51);
    }

    else
    {
      v50 = 0;
    }

    LODWORD(p_p) = -1;
    sub_24BD7B3FC(&v104, v50, &p_p);
    v103 = 0;
    if (v49)
    {
      v52 = 0;
      v53 = v120;
      v54 = 1;
      v55 = -1;
      v56 = v104;
      v57 = -1.79769313e308;
      v58 = 1.79769313e308;
      do
      {
        v59 = *(v49 + 3);
        if (v59 != 0.0)
        {
          v60 = *(v49 + 4);
          if (v60 != v33)
          {
            v61 = fabs(v59);
            if ((*&v53[(v60 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v60))
            {
              v54 = (v61 == v61) & v54;
              v56[v52] = v61;
              v52 = ++v103;
              v62 = fabs(v61 + -1.0);
              if (v61 > 0.00000001 && v62 < v58)
              {
                v58 = v62;
                v55 = v60;
              }
            }

            else if (v61 > v57)
            {
              v110 = *(v49 + 4);
              v57 = v61;
            }
          }
        }

        v49 = *v49;
      }

      while (v49);
      v63 = v58 > 0.000001;
      if (v57 > 0.00000001)
      {
        v55 = v110;
        goto LABEL_66;
      }
    }

    else
    {
      v63 = 1;
      v55 = -1;
      v54 = 1;
    }

    v110 = v55;
LABEL_66:
    *(*a4 + 4 * v36) = v55;
    v64 = v110;
    if (v110 != -1)
    {
      if (((*&v120[(v110 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v110) & v63 & v54 & 1) == 0 || (sub_24BDC2BD4(v97, a2, v36, &v110, &v104, &v103), v64 = v110, v110 != -1))
      {
        v65 = sub_24BDC2964(a2, v36, v64);
        v66 = *(v119[0] + 40 * v110 + 16);
        if (v66)
        {
          v67 = *v65;
          do
          {
            v68 = *(v66 + 4);
            if (((*(v114 + ((v68 >> 3) & 0x1FFFFFF8)) >> v68) & 1) == 0)
            {
              v69 = *(v66 + 3);
              sub_24BDC3790(v102, *a2 + 40 * v48);
              v70 = -v69 / v67;
              sub_24BDC2C70(v68, v102, a2, v119, v70);
              sub_24BCA3B84(v102);
              *sub_24BDC2964(a2, *(v66 + 4), v110) = 0;
              *sub_24BDC2D54(v119, *(v66 + 4), v110) = 0;
              v71 = *(v66 + 4);
              v72 = *(*a2 + 40 * v71 + 16);
              if (v72)
              {
                v73 = 0;
                do
                {
                  if (v72[3] != 0.0)
                  {
                    ++v73;
                  }

                  v72 = *v72;
                }

                while (v72);
              }

              else
              {
                v73 = 0;
              }

              v74 = *sub_24BDC2964(a2, *(v66 + 4), v33) != 0.0;
              v75 = *(v115[0] + v71) + 1;
              *(v115[0] + v71) = v75;
              LODWORD(p_p) = v73 - v74;
              HIDWORD(p_p) = v71;
              v100 = v75;
              sub_24BDC3664(&v116, &p_p, &p_p);
              sub_24BDC3790(&p_p, *v11 + 40 * v48);
              v76 = v101;
              if (v101)
              {
                v77 = (*v11 + 40 * *(v66 + 4));
                do
                {
                  v78 = v70 * *(v76 + 3);
                  *(v76 + 3) = v78;
                  *v121 = v76 + 2;
                  v79 = sub_24BDC3A38(v77, v76 + 4, &unk_24BFEDD60, v121);
                  *(v79 + 3) = v78 + *(v79 + 3);
                  v76 = *v76;
                }

                while (v76);
              }

              sub_24BCA3B84(&p_p);
            }

            v66 = *v66;
          }

          while (v66);
        }
      }
    }

    if (v104)
    {
      v105 = v104;
      operator delete(v104);
    }

    sub_24BCA3B84(&__p);
  }

  sub_24BDC287C(a2);
  sub_24BDC3C70(&__p, *(a2 + 24), *(a2 + 28));
  sub_24BDC2DC8(&__p, a2, v80, v81, v82);
  sub_24BDC3C70(&p_p, *(v97 + 152), *(v97 + 156));
  sub_24BDC2DC8(&p_p, v11, v83, v84, v85);
  v104 = 0;
  v105 = 0;
  v106 = 0;
  sub_24BCC9A1C(&v104, *a4, a4[1], (a4[1] - *a4) >> 2);
  sub_24BC8CAB0(a4, 0);
  v121[0] = -1;
  sub_24BD7B3FC(a4, (v105 - v104) >> 2, v121);
  if (v9)
  {
    v86 = 0;
    v87 = __src;
    v88 = 32;
    do
    {
      v89 = *&v87[v86];
      v90 = __p + 40 * v89;
      v91 = (*a2 + v88 - 32);
      if (v91 != v90)
      {
        *(*a2 + v88) = *(v90 + 8);
        sub_24BDC3CEC(v91, *(v90 + 2), 0);
        v87 = __src;
        v89 = *(__src + v86);
      }

      v92 = &p_p[5 * v89];
      v93 = (*v11 + v88 - 32);
      if (v93 != v92)
      {
        *(*v11 + v88) = *(v92 + 8);
        sub_24BDC3CEC(v93, v92[2], 0);
        v87 = __src;
        v89 = *(__src + v86);
      }

      v94 = v104;
      *(*a4 + v86) = *(v104 + v89);
      v86 += 4;
      v88 += 40;
    }

    while (4 * v9 != v86);
LABEL_96:
    v105 = v94;
    operator delete(v94);
  }

  else
  {
    v94 = v104;
    if (v104)
    {
      goto LABEL_96;
    }
  }

  v104 = &p_p;
  sub_24BDC35E0(&v104);
  p_p = &__p;
  sub_24BDC35E0(&p_p);
  if (__src)
  {
    v112 = __src;
    operator delete(__src);
  }

  if (v114)
  {
    operator delete(v114);
  }

  sub_24BDC4258(v115);
  v115[0] = v119;
  sub_24BDC35E0(v115);
  if (v120)
  {
    operator delete(v120);
  }
}

void sub_24BDC1DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a40)
  {
    operator delete(a40);
  }

  if (a43)
  {
    operator delete(a43);
  }

  sub_24BDC4258(&a46);
  a46 = v46 - 224;
  sub_24BDC35E0(&a46);
  v48 = *(v46 - 192);
  if (v48)
  {
    operator delete(v48);
  }

  _Unwind_Resume(a1);
}

void sub_24BDC1F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char **a5, int **a6, uint64_t *a7, uint64_t *a8, int32x2_t *a9)
{
  v64 = 0;
  v65 = 0;
  v66 = 0;
  sub_24BCB8D20(&v64, (a7[1] - *a7) >> 2);
  v54 = a8;
  v55 = a5;
  *(a1 + 8) = *a1;
  *(a1 + 32) = *(a1 + 24);
  sub_24BCA1A48(&v62, *(a2 + 24));
  v18 = *a7;
  v17 = a7[1];
  if (v17 != *a7)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(v18 + 4 * v19);
      v61 = v21;
      if (v21 != -1)
      {
        v22 = *sub_24BDC2964(a2, v20, v21);
        sub_24BC97D60(&v64, &v61);
        LODWORD(__p[0]) = v61;
        sub_24BC97D60((a1 + 24), __p);
        sub_24BDC3790(__p, *a3 + 40 * v61);
        v23 = (*a2 + 40 * v19);
        LODWORD(v67[0]) = *(a2 + 28) - 1;
        v57[0] = v67;
        v24 = *(sub_24BDC4A90(v23, v67, &unk_24BFEDD60, v57) + 3);
        *(v62 + v19) = -v24;
        LODWORD(v67[0]) = *(a2 + 28) - 1;
        v57[0] = v67;
        sub_24BDC4A90(v23, v67, &unk_24BFEDD60, v57)[3] = 0;
        for (i = v23[2]; i; i = *i)
        {
          for (j = v60; j; j = *j)
          {
            v27 = *(j + 3) * (*(i + 3) / v22);
            if (v27 != 0.0)
            {
              v28 = *(i + 4);
              if (v28 < *(a2 + 28) - 1)
              {
                v29 = sub_24BDC2D54(a3, v28, *(j + 4));
                *v29 = *v29 - v27;
              }
            }
          }

          v30 = *(i + 4);
          if (v30 < *(a2 + 28) - 1)
          {
            sub_24BDC4298(a1, v30, v61, 0, -*(i + 3) / v22);
          }
        }

        sub_24BDC3790(v57, *a3 + 40 * v61);
        for (k = v58; k; k = *k)
        {
          for (m = v23[2]; m; m = *m)
          {
            v33 = *(k + 3) * (*(m + 3) / v22);
            if (v33 != 0.0)
            {
              v34 = *(m + 4);
              if (v34 < *(a2 + 28) - 1)
              {
                v35 = sub_24BDC2D54(a3, *(k + 4), v34);
                *v35 = *v35 - v33;
              }
            }
          }

          sub_24BDC4298(a1, *(k + 4), v20, 1, -*(k + 3) / v22);
        }

        v56 = *(a2 + 28) - 1;
        v67[0] = &v56;
        *(sub_24BDC4A90(v23, &v56, &unk_24BFEDD60, v67) + 3) = v24;
        sub_24BCA3B84(v57);
        sub_24BCA3B84(__p);
        v18 = *a7;
        v17 = a7[1];
      }

      v19 = ++v20;
    }

    while (v20 < ((v17 - v18) >> 2));
  }

  if ((a1 + 184) != &v62)
  {
    sub_24BD07E64((a1 + 184), v62, v63, (v63 - v62) >> 3);
  }

  if ((a1 + 160) != v55)
  {
    sub_24BD07E64((a1 + 160), *v55, v55[1], (v55[1] - *v55) >> 3);
  }

  sub_24BDC43B4(a1, &v62, v55);
  sub_24BDC287C(a3);
  sub_24BDC4430(a3, a9);
  v57[0] = 0;
  sub_24BCA2138(__p, (v65 - v64) >> 2, v57);
  sub_24BDC4560(&v64, __p, a9, a4, v55);
  sub_24BC8CAB0(v54, (*(a3 + 28) + 1));
  v36 = *v54;
  v37 = v54[1];
  v38 = v37 - *v54;
  if (v37 != *v54)
  {
    v39 = 0;
    v40 = v38 >> 2;
    do
    {
      *(v36 + 4 * v39) = v39;
      ++v39;
    }

    while (v40 > v39);
  }

  sub_24BDC493C(&v64, v54, -1, -1);
  v41 = *a6;
  v42 = a6[1];
  v43 = v42 - *a6;
  if (v42 == *a6)
  {
    v52 = 0;
  }

  else
  {
    v44 = 0;
    v45 = v43 >> 2;
    v46 = *v54;
    v47 = 1;
    v48 = *a6;
    do
    {
      v49 = *v48++;
      v50 = *(v46 + 4 * v49);
      if (v50 != -1)
      {
        v41[v44++] = v50;
      }
    }

    while (v45 > v47++);
    v52 = v44;
  }

  sub_24BC8CAB0(a6, v52);
  std::__sort<std::__less<int,int> &,int *>();
  v53 = sub_24BCA29B4(*a6, a6[1]);
  sub_24BC8CAB0(a6, v53 - *a6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }
}

void sub_24BDC23F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BDC2498(uint64_t *a1, uint64_t *a2, char **a3, char **a4, uint64_t a5)
{
  sub_24BDC2DC8(a1 + 12, a2, a3, a4, a5);
  if (a1 + 6 != a3)
  {
    sub_24BCA2A30(a1 + 6, *a3, a3[1], (a3[1] - *a3) >> 2);
  }

  result = a1 + 9;
  if (a1 + 9 != a4)
  {
    v9 = *a4;
    v10 = a4[1];
    v11 = (v10 - *a4) >> 2;

    return sub_24BCA2A30(result, v9, v10, v11);
  }

  return result;
}

void sub_24BDC2524(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  sub_24BC92930(a3, (a5[1] - *a5) >> 2);
  v9 = a3[1];
  *(v9 - 8) = 0x3FF0000000000000;
  v10 = *a5;
  v11 = ((a5[1] - *a5) >> 2) - 2;
  if (v11 >= 0)
  {
    v12 = *a3;
    do
    {
      v13 = *(v10 + 4 * v11);
      if (v13 != -1)
      {
        *(v12 + 8 * v11) = *(v12 + 8 * v13);
      }

      v14 = v11-- <= 0;
    }

    while (!v14);
  }

  v15 = (a4[1] - *a4) >> 2;
  v16 = (v15 - 1);
  if (v15 - 1 >= 0)
  {
    do
    {
      v17 = *(*a4 + 4 * v16);
      if (v17 != -1)
      {
        v18 = sub_24BDC2964(a2, v16, *(*a4 + 4 * v16));
        v19 = *(*a2 + 40 * v16 + 16);
        v20 = *a3;
        for (i = 0.0; v19; v19 = *v19)
        {
          i = i + *(v20 + 8 * *(v19 + 4)) * v19[3];
        }

        *(v20 + 8 * v17) = *(v20 + 8 * v17) - i / *v18;
      }

      v14 = v16-- <= 0;
    }

    while (!v14);
    v9 = a3[1];
  }

  v22 = ((v9 - *a3) >> 3) - 1;

  sub_24BC92930(a3, v22);
}

uint64_t sub_24BDC2670(int **a1, int *a2)
{
  v4 = *a2;
  v5 = -1;
  v6 = 0xFFFFFFFFLL;
  while (1)
  {
    if (v4 >= 2)
    {
      v7 = 0;
      v8 = *a1;
      v9 = 1;
      do
      {
        v10 = v8[v7];
        v11 = v5;
        v12 = v8[v7 + 1];
        if (v10 == 0x80000000)
        {
          v13 = 0;
        }

        else
        {
          v13 = -v10;
        }

        if (v10 >= 0)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        if (v12 == 0x80000000)
        {
          v15 = 0;
        }

        else
        {
          v15 = -v12;
        }

        if (v12 >= 0)
        {
          v16 = v12;
        }

        else
        {
          v16 = v15;
        }

        v17 = sub_24BDC2814(v14, v16);
        if (v17 >= 0)
        {
          v5 = v17;
        }

        else
        {
          v5 = -v17;
        }

        v8 = *a1;
        (*a1)[v7] = v5;
        if (v7)
        {
          v9 &= v11 == v5;
        }

        v4 = *a2;
        if (v5 == 2)
        {
          if (v4 < 1)
          {
            v6 = 2;
            goto LABEL_34;
          }

          v18 = *a2;
          v19 = v8;
          while (1)
          {
            v20 = *v19++;
            if (v20)
            {
              break;
            }

            if (!--v18)
            {
              v6 = 2;
              break;
            }
          }
        }

        if (v7 + 1 >= v4 - 1)
        {
          break;
        }

        ++v7;
      }

      while (v5 != 2);
      if (v5 == 2)
      {
        goto LABEL_34;
      }

      if (v4 >= 2 && (v9 & 1) != 0)
      {
        break;
      }
    }

    if (!--v4)
    {
      v22 = *a1;
      goto LABEL_52;
    }

    *a2 = v4;
  }

  v24 = **a1;
  v23 = (*a1)[1];
  if (v24 == 0x80000000)
  {
    v25 = 0;
  }

  else
  {
    v25 = -v24;
  }

  if (v24 >= 0)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  if (v23 == 0x80000000)
  {
    v27 = 0;
  }

  else
  {
    v27 = -v23;
  }

  if (v23 >= 0)
  {
    v28 = (*a1)[1];
  }

  else
  {
    v28 = v27;
  }

  v29 = sub_24BDC2814(v26, v28);
  if (v29 >= 0)
  {
    v30 = v29;
  }

  else
  {
    v30 = -v29;
  }

  v22 = *a1;
  **a1 = v30;
  *a2 = 1;
LABEL_52:
  v31 = *v22;
  if (v31 * v31 == 1)
  {
    v6 = v6;
  }

  else
  {
    v6 = v31;
  }

  v4 = 1;
LABEL_34:
  *a2 = v4 - 1;
  return v6;
}

uint64_t sub_24BDC2814(uint64_t result, unsigned int a2)
{
  LODWORD(v2) = result;
  v3 = result > a2;
  if (result >= a2)
  {
    result = a2;
  }

  else
  {
    result = result;
  }

  if (v3)
  {
    v2 = v2;
  }

  else
  {
    v2 = a2;
  }

  if (!result)
  {
    return v2;
  }

  v4 = v2 % result;
  if (v2 % result)
  {
    v5 = v4 | result;
    v6 = v4 >> __clz(__rbit32(v4));
    do
    {
      v7 = result >> __clz(__rbit32(result));
      if (v6 <= v7)
      {
        LODWORD(result) = v7 - v6;
      }

      else
      {
        LODWORD(result) = v6 - v7;
      }

      if (v6 >= v7)
      {
        v6 = v7;
      }
    }

    while (result);
    return v6 << __clz(__rbit32(v5));
  }

  return result;
}

uint64_t *sub_24BDC287C(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  while (v1 != v2)
  {
    v3 = v1[2];
    while (v3)
    {
      if (*(v3 + 3) == 0.0)
      {
        result = sub_24BD80CF0(v1, v3);
        v3 = result;
      }

      else
      {
        v3 = *v3;
      }
    }

    v1 += 5;
  }

  return result;
}

uint64_t **sub_24BDC28D8(uint64_t **a1, unint64_t a2)
{
  result = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((result - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return sub_24BDC2EBC(a1, v6);
  }

  else if (!v5)
  {
    v7 = &(*a1)[5 * a2];
    while (result != v7)
    {
      result = sub_24BCA3B84((result - 5));
    }

    a1[1] = v7;
  }

  return result;
}

uint64_t *sub_24BDC2964(void *a1, unsigned int a2, unsigned int a3)
{
  v9 = a3;
  v5 = sub_24BD80E70((*a1 + 40 * a2), &v9);
  if (!v5)
  {
    v6 = (*a1 + 40 * a2);
    LODWORD(v8) = v9;
    *(&v8 + 1) = 0;
    v5 = sub_24BDC30F8(v6, &v8, &v8);
  }

  return v5 + 3;
}

void *sub_24BDC29D8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a2 + 7);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = v4;
  v5 = a1[1];
  v6 = *a1;
  if (v5 != *a1)
  {
    do
    {
      v5 = sub_24BCA3B84(v5 - 40);
    }

    while (v5 != v6);
    v4 = *(a1 + 7);
  }

  a1[1] = v6;
  result = sub_24BDC28D8(a1, v4);
  v15 = 0;
  v9 = *a2;
  v8 = a2[1];
  if (v8 != *a2)
  {
    LODWORD(v10) = 0;
    v11 = 0;
    do
    {
      v12 = *(v9 + 40 * v11 + 16);
      if (v12)
      {
        do
        {
          v13 = v12[3];
          v14 = (*a1 + 40 * *(v12 + 4));
          v16 = &v15;
          result = sub_24BDC3A38(v14, &v15, &unk_24BFEDD60, &v16);
          result[3] = v13;
          v12 = *v12;
        }

        while (v12);
        LODWORD(v10) = v15;
        v9 = *a2;
        v8 = a2[1];
      }

      v10 = (v10 + 1);
      v15 = v10;
      v11 = v10;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 3) > v10);
  }

  return result;
}

BOOL sub_24BDC2AF8(uint64_t **a1)
{
  if (!a1[5])
  {
    return 1;
  }

  do
  {
    v2 = a1[3];
    v3 = v2[9];
    v4 = *(*a1 + v2[8]);
    v5 = v4 != v3;
    if (v4 == v3)
    {
      break;
    }

    sub_24BCADE5C(a1 + 3, a1[3]);
    operator delete(v2);
  }

  while (a1[5]);
  return v5;
}

uint64_t sub_24BDC2B6C(uint64_t **a1)
{
  while (a1[5])
  {
    v2 = a1[3];
    v3 = *(v2 + 8);
    v4 = *(v2 + 9);
    sub_24BCADE5C(a1 + 3, v2);
    operator delete(v2);
    if (*(*a1 + v3) == v4)
    {
      return v3;
    }
  }

  return 0;
}

BOOL sub_24BDC2BD4(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, int **a5, int *a6)
{
  v8 = sub_24BDC2670(a5, a6);
  v9 = fabs(v8);
  if (v9 != 1.0)
  {
    for (i = *(*a2 + 40 * a3 + 16); i; i = *i)
    {
      v11 = *(i + 3) / v8;
      *sub_24BDC2964(a2, a3, *(i + 4)) = v11;
    }
  }

  return v9 != 1.0;
}

double *sub_24BDC2C70(double *result, uint64_t a2, void *a3, void *a4, double a5)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v9 = result;
    do
    {
      v10 = *(v5 + 3);
      v11 = sub_24BDC2964(a3, v9, *(v5 + 4));
      *v11 = *v11 + a5 * v10;
      v12 = *(v5 + 3);
      v13 = sub_24BDC2D54(a4, v9, *(v5 + 4));
      *v13 = *v13 + a5 * v12;
      result = sub_24BDC2964(a3, v9, *(v5 + 4));
      if (fabs(*result) < 0.00000001)
      {
        *sub_24BDC2964(a3, v9, *(v5 + 4)) = 0;
        result = sub_24BDC2D54(a4, v9, *(v5 + 4));
        *result = 0.0;
      }

      v5 = *v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_24BDC2D54(void *a1, unsigned int a2, unsigned int a3)
{
  v9 = a2;
  v5 = sub_24BD80E70((*a1 + 40 * a3), &v9);
  if (!v5)
  {
    v6 = (*a1 + 40 * a3);
    LODWORD(v8) = v9;
    *(&v8 + 1) = 0;
    v5 = sub_24BDC30F8(v6, &v8, &v8);
  }

  return v5 + 3;
}

void sub_24BDC2DC8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1[3] = a2[3];
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  sub_24BDC33A4(a1, v7, v13);
  sub_24BCA3B84(v13);
  v9 = *a1;
  v8 = a1[1];
  if (v8 != *a1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *a2;
      if (v9 != *a2)
      {
        *(v9 + v10 + 32) = *(v12 + v10 + 32);
        sub_24BDC3CEC((v9 + v10), *(v12 + v10 + 16), 0);
        v9 = *a1;
        v8 = a1[1];
      }

      ++v11;
      v10 += 40;
    }

    while (v11 < 0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 3));
  }
}

uint64_t **sub_24BDC2EBC(uint64_t **result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 40 * a2;
      do
      {
        *v4 = 0uLL;
        *(v4 + 16) = 0uLL;
        *(v4 + 32) = 1065353216;
        v4 += 40;
      }

      while (v4 != v10);
      v4 = v10;
    }

    result[1] = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      sub_24BC8E01C();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      sub_24BCCCB14(result, v9);
    }

    v11 = 40 * v6;
    v17 = 0;
    v18 = 40 * v6;
    *(&v19 + 1) = 0;
    v12 = 40 * v6;
    do
    {
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 1065353216;
      v12 += 40;
    }

    while (v12 != 40 * v6 + 40 * a2);
    *&v19 = v11 + 40 * a2;
    v13 = result[1];
    v14 = v11 + *result - v13;
    sub_24BDC3038(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = v3[2];
    *(v3 + 1) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return sub_24BDC30A8(&v17);
  }

  return result;
}

void sub_24BDC3024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BDC30A8(va);
  _Unwind_Resume(a1);
}

void sub_24BDC3038(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_24BD1CBB8(a4, v7);
      v7 += 5;
      a4 = v8 + 40;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_24BCA3B84(v6);
      v6 += 5;
    }
  }
}

uint64_t sub_24BDC30A8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_24BCA3B84(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_24BDC30F8(void *a1, unsigned int *a2, _OWORD *a3)
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
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
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

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t sub_24BDC3328(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 28) = a3;
  memset(v7, 0, sizeof(v7));
  v8 = 1065353216;
  sub_24BDC33A4(a1, a3, v7);
  sub_24BCA3B84(v7);
  return a1;
}

void sub_24BDC3384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_24BCA3B84(&a9);
  sub_24BDC35E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BDC33A4(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  result = a1[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((result - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    return sub_24BDC3430(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 40 * a2;
    while (result != v8)
    {
      result = sub_24BCA3B84((result - 5));
    }

    a1[1] = v8;
  }

  return result;
}

uint64_t *sub_24BDC3430(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = v7 + 40 * a2;
      v13 = 40 * a2;
      do
      {
        result = sub_24BDC3790(v7, a3);
        v7 += 40;
        v13 -= 40;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0x666666666666666)
    {
      sub_24BC8E01C();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    v25 = result;
    if (v11)
    {
      sub_24BCCCB14(result, v11);
    }

    v14 = 40 * v8;
    v22 = 0;
    v23 = v14;
    v24 = v14;
    v15 = 5 * a2;
    v16 = v14 + 40 * a2;
    v17 = 8 * v15;
    do
    {
      sub_24BDC3790(v14, a3);
      v14 += 40;
      v17 -= 40;
    }

    while (v17);
    *&v24 = v16;
    v18 = v5[1];
    v19 = v23 + *v5 - v18;
    sub_24BDC3038(v5, *v5, v18, v19);
    v20 = *v5;
    *v5 = v19;
    v21 = v5[2];
    *(v5 + 1) = v24;
    *&v24 = v20;
    *(&v24 + 1) = v21;
    v22 = v20;
    v23 = v20;
    return sub_24BDC30A8(&v22);
  }

  return result;
}

void sub_24BDC35B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BDC30A8(va);
  _Unwind_Resume(a1);
}

void sub_24BDC35E0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_24BCA3B84(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_24BDC3664(uint64_t **a1, unsigned int *a2, uint64_t a3)
{
  v3 = *sub_24BDC3700(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_24BDC3700(uint64_t a1, uint64_t **a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    do
    {
      while (1)
      {
        v9 = v4;
        v10 = *(v4 + 28);
        if (v6 >= v10)
        {
          if (v6 != v10)
          {
            break;
          }

          v11 = *(v9 + 8);
          if (v7 >= v11 && (v7 != v11 || v8 >= *(v9 + 9)))
          {
            break;
          }
        }

        v4 = *v9;
        result = v9;
        if (!*v9)
        {
          goto LABEL_17;
        }
      }

      if (v10 >= v6)
      {
        v12 = *(v9 + 8);
        if (v12 >= v7 && (v12 != v7 || *(v9 + 9) >= v8))
        {
          break;
        }
      }

      result = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = result;
  }

LABEL_17:
  *a2 = v9;
  return result;
}

uint64_t sub_24BDC3790(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_24BCA3EB4(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_24BDC3808(a1, i + 4, i + 1);
  }

  return a1;
}

uint64_t *sub_24BDC3808(void *a1, unsigned int *a2, _OWORD *a3)
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
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
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

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t *sub_24BDC3A38(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t sub_24BDC3C70(uint64_t a1, unsigned int a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 28) = a3;
  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  sub_24BDC33A4(a1, a2, v5);
  sub_24BCA3B84(v5);
  return a1;
}

void sub_24BDC3CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_24BCA3B84(&a9);
  sub_24BDC35E0(&a9);
  _Unwind_Resume(a1);
}

void sub_24BDC3CEC(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        v8[3] = a2[3];
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_24BDC3E00(a1, v9, v8 + 4);
        sub_24BD1C0D8(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_24BDC41CC(a1, a2 + 1);
  }
}

void sub_24BDC3DCC(void *a1)
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

uint64_t sub_24BDC3E00(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_24BDC3F60(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void sub_24BDC3F60(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_24BDC4050(result, prime);
    }
  }
}

void sub_24BDC4050(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_24BC8DFE8();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_24BDC4258(uint64_t a1)
{
  sub_24BCC8A84(a1 + 24, *(a1 + 32));
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_24BDC4298(uint64_t a1, int a2, int a3, char a4, double a5)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 >= v7)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_24BDC4CC8(a1, v13);
    }

    v14 = 24 * v10;
    *v14 = a2;
    *(v14 + 4) = a3;
    *(v14 + 8) = a5;
    *(v14 + 16) = a4;
    v9 = 24 * v10 + 24;
    v15 = *(a1 + 8) - *a1;
    v16 = (24 * v10 - v15);
    memcpy(v16, *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v8 = a2;
    *(v8 + 4) = a3;
    *(v8 + 8) = a5;
    v9 = v8 + 24;
    *(v8 + 16) = a4;
  }

  *(a1 + 8) = v9;
}

int **sub_24BDC43B4(int **result, uint64_t *a2, uint64_t *a3)
{
  v4 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    v5 = *a3;
    v6 = *a2;
    v7 = -1;
    v8 = 0.0;
    do
    {
      if (*(v4 + 16) == 1)
      {
        *(v5 + 8 * *v4) = *(v5 + 8 * *v4) + *(v4 + 1) * *(v6 + 8 * v4[1]);
      }

      else
      {
        v9 = v4[1];
        if (v9 != v7)
        {
          v8 = *(v5 + 8 * v9);
          v7 = v4[1];
        }

        *(v5 + 8 * *v4) = *(v5 + 8 * *v4) + *(v4 + 1) * v8;
      }

      v4 += 6;
    }

    while (v4 != v3);
  }

  return result;
}

void sub_24BDC4430(uint64_t *a1, unsigned int *a2)
{
  v4 = *(a1 + 6);
  v5 = *(a1 + 7);
  *a2 = v5;
  a2[1] = v4;
  sub_24BC92930(a2 + 1, v5 + 1);
  v6 = *(a2 + 1);
  *v6 = 0;
  v7 = *a2;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = *a1;
    do
    {
      v11 = *(v10 + 40 * v9 + 16);
      if (v11)
      {
        LODWORD(v12) = 0;
        do
        {
          if (v11[3] == 0.0)
          {
            v12 = v12;
          }

          else
          {
            v12 = (v12 + 1);
          }

          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        v12 = 0;
      }

      v8 += v12;
      v6[++v9] = v8;
    }

    while (v9 != v7);
  }

  sub_24BC92930(a2 + 7, v6[v7]);
  sub_24BC8CAB0(a2 + 4, *(*(a2 + 1) + 8 * *a2));
  v13 = *a2;
  if (*a2 >= 1)
  {
    v14 = 0;
    v15 = *a1;
    do
    {
      v16 = *(v15 + 40 * v14 + 16);
      if (v16)
      {
        v17 = 0;
        v18 = *(a2 + 1);
        v19 = *(a2 + 7);
        v20 = *(a2 + 4);
        do
        {
          v21 = v16[3];
          if (v21 != 0.0)
          {
            v22 = *(v18 + 8 * v14) + v17;
            *(v19 + 8 * v22) = v21;
            *(v20 + 4 * v22) = *(v16 + 4);
          }

          ++v17;
          v16 = *v16;
        }

        while (v16);
        v13 = *a2;
      }

      ++v14;
    }

    while (v14 < v13);
  }
}

void sub_24BDC4560(const void **a1, uint64_t *a2, int32x2_t *a3, uint64_t *a4, uint64_t *a5)
{
  v67 = *a3;
  v9 = *a1;
  v10 = a1[1];
  v11 = v10 - *a1;
  v12 = v11 >> 2;
  if ((v11 >> 2))
  {
    v13 = 0;
    v14 = a3[1];
    v15 = a3[4];
    v16 = a3[7];
    v17 = *a2;
    v18 = *a5;
    v19 = (v11 >> 2);
    do
    {
      v20 = v9[v13];
      v21 = *(*&v14 + 8 * v20);
      v22 = *(*&v14 + 8 + 8 * v20);
      if (v21 < v22)
      {
        v23 = v21;
        v24 = v22;
        v25 = (*&v15 + 4 * v21);
        v26 = (*&v16 + 8 * v23);
        v27 = v24 - v23;
        do
        {
          v29 = *v25++;
          v28 = v29;
          v30 = *v26++;
          *(v18 + 8 * v28) = *(v18 + 8 * v28) - *(v17 + 8 * v13) * v30;
          --v27;
        }

        while (v27);
      }

      ++v13;
    }

    while (v13 != v19);
  }

  __src = 0;
  v72 = 0;
  v73 = 0;
  sub_24BCC9A1C(&__src, v9, v10, v12);
  std::__sort<std::__less<int,int> &,int *>();
  v31 = v72;
  if (v72 >= v73)
  {
    v33 = __src;
    v34 = v72 - __src;
    v35 = (v72 - __src) >> 2;
    v36 = v35 + 1;
    if ((v35 + 1) >> 62)
    {
      sub_24BC8E01C();
    }

    v37 = v73 - __src;
    if ((v73 - __src) >> 1 > v36)
    {
      v36 = v37 >> 1;
    }

    v38 = v37 >= 0x7FFFFFFFFFFFFFFCLL;
    v39 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v38)
    {
      v39 = v36;
    }

    if (v39)
    {
      sub_24BC92E0C(&__src, v39);
    }

    *(4 * v35) = 0x7FFFFFFF;
    v32 = 4 * v35 + 4;
    memcpy(0, v33, v34);
    v40 = __src;
    __src = 0;
    v72 = v32;
    v73 = 0;
    if (v40)
    {
      operator delete(v40);
    }
  }

  else
  {
    *v72 = 0x7FFFFFFF;
    v32 = (v31 + 4);
  }

  v41 = (v67.i32[0] - v12);
  v72 = v32;
  sub_24BC91EAC(v70, v41);
  if (v67.i32[0])
  {
    v42 = 0;
    v43 = 0;
    v44 = __src;
    v45 = *a5;
    v46 = *a4;
    v47 = v70[0];
    do
    {
      if (v42 == v44[v43])
      {
        ++v43;
      }

      else
      {
        v48 = v42 - v43;
        *(v45 + 8 * v48) = *(v45 + 8 * v42);
        *(v46 + 8 * v48) = *(v46 + 8 * v42);
        v47[v48] = v42;
      }

      ++v42;
    }

    while (v67.u32[0] != v42);
  }

  sub_24BC92930(a5, v41);
  sub_24BC92930(a4, v41);
  v68 = -1;
  sub_24BD0E524(__p, v67.u32[1], &v68);
  v49 = __src;
  v50 = __p[0];
  if (v67.i32[1] >= 1)
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    do
    {
      if (v51 == *&v49[4 * v53])
      {
        ++v53;
        ++v52;
      }

      else
      {
        v50[v51] = v51 - v52;
      }

      ++v51;
    }

    while (v67.u32[1] != v51);
  }

  if (v67.i32[0])
  {
    v54 = 0;
    LODWORD(v55) = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = a3[1];
    v60 = a3[4];
    do
    {
      if (v54 == *&v49[4 * v56])
      {
        ++v56;
        ++v54;
        v58 += *(*&v59 + 8 * v54) - v55;
        v55 = *(*&v59 + 8 * v54);
      }

      else
      {
        ++v54;
        v55 = *(*&v59 + 8 * v54);
        if (v58 < v55)
        {
          v61 = a3[7];
          v62 = (*&v60 + 4 * v58);
          v63 = (*&v61 + 8 * v58);
          v64 = v55 - v58;
          do
          {
            v65 = *v62++;
            v66 = v50[v65];
            if (v66 != -1)
            {
              *(*&v61 + 8 * v57) = *v63;
              *(*&v60 + 4 * v57++) = v66;
            }

            ++v63;
            --v64;
          }

          while (v64);
          v58 = v55;
        }
      }

      *(*&v59 + 8 * (v54 - v56)) = v57;
    }

    while (v54 != v67.u32[0]);
  }

  *a3 = vadd_s32(vsub_s32(v67, vdup_n_s32((v72 - v49) >> 2)), 0x100000001);
  if (v50)
  {
    __p[1] = v50;
    operator delete(v50);
  }

  if (v70[0])
  {
    v70[1] = v70[0];
    operator delete(v70[0]);
  }

  if (__src)
  {
    v72 = __src;
    operator delete(__src);
  }
}

void sub_24BDC48FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDC493C(uint64_t a1, char **a2, int a3, int a4)
{
  __p = 0;
  v24 = 0;
  v25 = 0;
  sub_24BCC9A1C(&__p, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 2);
  std::__sort<std::__less<int,int> &,int *>();
  v7 = (a2[1] - *a2) >> 2;
  if (a4 != -1)
  {
    LODWORD(v7) = a4;
  }

  sub_24BC94F74(&v21, v7);
  v8 = __p;
  v9 = v21;
  if (v22 != v21)
  {
    v10 = 0;
    v11 = 0;
    v12 = (v22 - v21) >> 2;
    v13 = v24;
    v14 = __p;
    do
    {
      if (v14 == v13 || v10 != *v14)
      {
        *&v9[4 * v10] = v10 - v11;
      }

      else
      {
        *&v9[4 * v10] = a3;
        ++v11;
        ++v14;
      }

      ++v10;
    }

    while (v12 > v10);
  }

  v15 = *a2;
  v16 = a2[1] - *a2;
  if (v16)
  {
    v17 = v16 >> 2;
    v18 = 1;
    do
    {
      v19 = *v15;
      if (v19 != a3)
      {
        *v15 = *&v9[4 * v19];
      }

      v15 += 4;
    }

    while (v17 > v18++);
  }

  if (v9)
  {
    v22 = v9;
    operator delete(v9);
    v8 = __p;
  }

  if (v8)
  {
    v24 = v8;
    operator delete(v8);
  }
}

void sub_24BDC4A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BDC4A90(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_24BDC4CC8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

double sub_24BDC4D20(unsigned int *a1, unsigned int a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(a1 + 1) + 8 * *a1 * a2;
  do
  {
    result = *(v4 + v3);
    *(a3 + v3) = result;
    v3 += 8;
  }

  while (v3 != 24);
  return result;
}

double sub_24BDC4D4C(unsigned int *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 1) + 8 * *a1 * a2;
  *a3 = *v3;
  result = *(v3 + 8);
  *(a3 + 8) = result;
  return result;
}

double sub_24BDC4D70(unsigned int *a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v4 = *(a1 + 1) + 8 * *a1 * a3;
  do
  {
    result = *(a2 + v3);
    *(v4 + v3) = result;
    v3 += 8;
  }

  while (v3 != 24);
  return result;
}

double sub_24BDC4D9C(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = 3 * a2;
  do
  {
    result = *(a1 + 8 * v4);
    *(a3 + v3) = result;
    ++v4;
    v3 += 8;
  }

  while (v3 != 24);
  return result;
}

double sub_24BDC4DC0(uint64_t a1, int a2, uint64_t a3)
{
  *a3 = *(a1 + 8 * (3 * a2));
  result = *(a1 + 8 * (3 * a2 + 1));
  *(a3 + 8) = result;
  return result;
}

double sub_24BDC4DDC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 3 * a3;
  do
  {
    result = *(a2 + v3);
    *(a1 + 8 * v4++) = result;
    v3 += 8;
  }

  while (v3 != 24);
  return result;
}

uint64_t sub_24BDC4E00@<X0>(unsigned int *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  result = sub_24BD07F90(a6, a4, a5);
  if (a4)
  {
    v12 = 0;
    v13 = *a1;
    v14 = *(a1 + 1);
    v15 = *(result + 8);
    v16 = 8 * *result;
    do
    {
      if (a5)
      {
        v17 = a5;
        v18 = v15;
        LODWORD(result) = a3;
        do
        {
          *v18 = *(v14 + 8 * (v12 + a2) + 8 * v13 * result);
          result = (result + 1);
          v18 = (v18 + v16);
          --v17;
        }

        while (v17);
      }

      ++v12;
      ++v15;
    }

    while (v12 != a4);
  }

  return result;
}

void sub_24BDC4EB8(uint64_t a1, unsigned int *a2)
{
  sub_24BD4308C(v66, (*(a1 + 112) - *(a1 + 104)) >> 2);
  if (*(a1 + 112) != *(a1 + 104))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (*(a1 + 8) + 16 * *(a1 + 176));
      v8 = *v6;
      v7 = v6[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v7);
      }

      v9 = 0;
      v10 = *(v8 + 40);
      do
      {
        *&v63[v9] = *(v10 + 16 * v5 + 4 * v9);
        ++v9;
      }

      while (v9 != 3);
      v11 = v66[0] + 24 * v4;
      *v11 = *v63;
      *(v11 + 2) = v64;
      v4 = ++v5;
    }

    while (v5 < ((*(a1 + 112) - *(a1 + 104)) >> 2));
  }

  v63[1] = 0;
  v64 = 0;
  v65 = 0;
  LODWORD(v63[0]) = (*(a1 + 160) - *(a1 + 152)) >> 2;
  HIDWORD(v63[0]) = 3;
  sub_24BC92930(&v63[1], (3 * LODWORD(v63[0])));
  sub_24BCB2008(v62, 3uLL);
  if (*(a1 + 160) == *(a1 + 152))
  {
    v21 = v63[1];
  }

  else
  {
    v12 = 0;
    v13 = 1;
    do
    {
      LODWORD(v58) = v13 - 1;
      sub_24BCD567C(a1, &v58, v62);
      v14 = v62[0];
      v15 = v66[0];
      v16 = (v66[0] + 24 * *(v62[0] + 1));
      v17 = (v66[0] + 24 * *(v62[0] + 2));
      v18 = v16[1] - v17[1];
      v19 = v16[2] - v17[2];
      v20 = LODWORD(v63[0]);
      v21 = v63[1];
      v22 = (v63[1] + 8 * v12);
      *v22 = v18 * v18 + (*v16 - *v17) * (*v16 - *v17) + v19 * v19;
      v23 = &v15[24 * *v14];
      v24 = v17[1] - v23[1];
      v25 = v17[2] - v23[2];
      v22[v20] = v24 * v24 + (*v17 - *v23) * (*v17 - *v23) + v25 * v25;
      v26 = v23[1] - v16[1];
      v27 = v23[2] - v16[2];
      v22[2 * v20] = v26 * v26 + (*v23 - *v16) * (*v23 - *v16) + v27 * v27;
      v12 = v13++;
    }

    while (v12 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  }

  v58 = v63[0];
  v59 = 0;
  v60 = 0;
  v61 = 0;
  sub_24BCA39A4(&v59, v21, v64, (v64 - v21) >> 3);
  v28 = *(a1 + 160) - *(a1 + 152);
  if (v28)
  {
    v29 = (v28 >> 1) + (v28 >> 2);
    v30 = 1;
    v31 = v59;
    do
    {
      *v31 = sqrt(*v31);
      ++v31;
      v32 = v29 > v30++;
    }

    while (v32);
  }

  __p = 0;
  v56 = 0;
  v57 = 0;
  sub_24BC92930(&__p, v58);
  v34 = *(a1 + 152);
  v33 = *(a1 + 160);
  v36 = v33 - v34;
  v35 = v33 == v34;
  v37 = (v33 - v34) >> 2;
  if (!v35)
  {
    v38 = v58;
    v39 = v59;
    v40 = 2 * v58;
    v41 = 1;
    v42 = __p;
    do
    {
      v43 = v39[v38];
      v44 = v39[v40];
      v45 = *v39++;
      *v42++ = sqrt((v45 + v43 - v44) * ((v44 + v45 - v43) * ((v44 - (v45 - v43)) * (v45 + v43 + v44)))) * 0.5;
      v32 = v37 > v41++;
    }

    while (v32);
  }

  *a2 = v36 >> 2;
  a2[1] = 3;
  sub_24BC92930(a2 + 1, (3 * v37));
  v46 = __p;
  if ((v36 >> 2) < 1)
  {
    if (!__p)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v47 = LODWORD(v63[0]);
    v48 = v63[1];
    v49 = 2 * LODWORD(v63[0]);
    v50 = *a2;
    v51 = *(a2 + 1);
    v52 = (v36 >> 2) & 0x7FFFFFFF;
    v53 = __p;
    do
    {
      *v51 = (v48[v47] + v48[v49] - *v48) / *v53 * 0.25;
      v51[v50] = (v48[v49] + *v48 - v48[v47]) / *v53 * 0.25;
      v54 = *v53++;
      v51[2 * v50] = (*v48 + v48[v47] - v48[v49]) / v54 * 0.25;
      ++v48;
      ++v51;
      --v52;
    }

    while (v52);
  }

  v56 = v46;
  operator delete(v46);
LABEL_25:
  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v62[0])
  {
    v62[1] = v62[0];
    operator delete(v62[0]);
  }

  if (v63[1])
  {
    v64 = v63[1];
    operator delete(v63[1]);
  }

  if (v66[0])
  {
    v66[1] = v66[0];
    operator delete(v66[0]);
  }
}

void sub_24BDC52D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
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

  if (a20)
  {
    operator delete(a20);
  }

  v23 = *(v21 - 88);
  if (v23)
  {
    *(v21 - 80) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDC534C(void *a1, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int *a6)
{
  __p = 0;
  v25 = 0;
  v26 = 0;
  v7 = a5 + a3;
  if (v7 > a3)
  {
    v11 = a4 + a2;
    v12 = a3;
    do
    {
      v13 = a1[1];
      v14 = *(v13 + 8 * v12);
      v15 = v12 + 1;
      v16 = *(v13 + 8 * (v12 + 1));
      if (v14 < v16)
      {
        v17 = v12 - a3;
        do
        {
          v18 = *(a1[4] + 4 * v14);
          if (v18 >= a2 && v18 < v11)
          {
            v20 = *(a1[7] + 8 * v14);
            LODWORD(v23) = v18 - a2;
            DWORD1(v23) = v17;
            *(&v23 + 1) = v20;
            sub_24BD6EF1C(&__p, &v23);
          }

          ++v14;
        }

        while (v16 != v14);
      }

      v12 = v15;
    }

    while (v15 != v7);
  }

  sub_24BDCB164(&__p, a5, a4, 1, a6);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }
}

void sub_24BDC5454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDC5474(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  *v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  *v21 = 0u;
  *v19 = 0u;
  v14[0] = 0xC010000000000000;
  sub_24BDCAA98(a1, v14, v19);
  sub_24BDC534C(v19, 0, 0, a5, a5, a3);
  *v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  *v16 = 0u;
  *v14 = 0u;
  sub_24BDC534C(v19, 0, a5, a5, a6, v14);
  v11 = 0xBFF0000000000000;
  sub_24BDCAA98(v14, &v11, v14);
  sub_24BDC4E00(a2, a5, 0, a6, 3, &v11);
  sub_24BDCA998(v14, &v11, a4);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v17[1])
  {
    *&v18 = v17[1];
    operator delete(v17[1]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  if (v14[1])
  {
    *&v15 = v14[1];
    operator delete(v14[1]);
  }

  if (v22[1])
  {
    *&v23 = v22[1];
    operator delete(v22[1]);
  }

  if (v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }

  if (v19[1])
  {
    *&v20 = v19[1];
    operator delete(v19[1]);
  }
}

void sub_24BDC55DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BC9EE94(&a13);
  sub_24BC9EE94(&a23);
  _Unwind_Resume(a1);
}

void sub_24BDC5624(int *a1, unsigned int *a2, unsigned int *a3, unint64_t *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  sub_24BDCAB48(a1, a1, &v45);
  v39 = 0x4010000000000000;
  sub_24BDCAA98(&v45, &v39, &v45);
  *a4 = a6 | (a6 << 32);
  v14 = a4 + 1;
  v13 = a4[1];
  if (v13)
  {
    a4[2] = v13;
    operator delete(v13);
    *v14 = 0;
    a4[2] = 0;
    a4[3] = 0;
  }

  v16 = a4 + 4;
  v15 = a4[4];
  *v14 = 0;
  a4[2] = 0;
  a4[3] = 0;
  if (v15)
  {
    a4[5] = v15;
    operator delete(v15);
    *v16 = 0;
    a4[5] = 0;
    a4[6] = 0;
  }

  v18 = a4 + 7;
  v17 = a4[7];
  *v16 = 0;
  a4[5] = 0;
  a4[6] = 0;
  if (v17)
  {
    a4[8] = v17;
    operator delete(v17);
    *v18 = 0;
    a4[8] = 0;
    a4[9] = 0;
  }

  *v18 = 0;
  a4[8] = 0;
  a4[9] = 0;
  sub_24BDC534C(&v45, 0, 0, a6, a6, a4);
  v39 = __PAIR64__(a6, a7);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  sub_24BDC534C(&v45, 0, a6, a6, a7, &v39);
  *v37 = 0u;
  v38 = 0u;
  sub_24BDC4E00(a2, a6, 0, a7, 3, __p);
  sub_24BDCA998(&v39, __p, v37);
  if (__p[1])
  {
    *&v36 = __p[1];
    operator delete(__p[1]);
  }

  *__p = 0u;
  v36 = 0u;
  sub_24BDCA998(&v45, a3, __p);
  sub_24BDC4E00(__p, 0, 0, a6, 3, &v29);
  v32 = v29;
  v33 = 0uLL;
  v34 = 0;
  sub_24BCA39A4(&v33, v30, v31, (v31 - v30) >> 3);
  v19 = v32;
  if (v32)
  {
    v20 = 0;
    v21 = HIDWORD(v32);
    v22 = v37[1];
    v23 = v33;
    v24 = 8 * LODWORD(v37[0]);
    do
    {
      v25 = v22;
      v26 = v23;
      v27 = v21;
      if (v21)
      {
        do
        {
          *v26 = *v26 - *v25;
          v26 += v19;
          v25 = (v25 + v24);
          --v27;
        }

        while (v27);
      }

      ++v20;
      ++v23;
      ++v22;
    }

    while (v20 != v19);
  }

  *a5 = v32;
  v28 = a5[1];
  if (v28)
  {
    a5[2] = v28;
    operator delete(v28);
    a5[1] = 0;
    a5[2] = 0;
    a5[3] = 0;
  }

  *(a5 + 1) = v33;
  a5[3] = v34;
  v34 = 0;
  v33 = 0uLL;
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (__p[1])
  {
    *&v36 = __p[1];
    operator delete(__p[1]);
  }

  if (v37[1])
  {
    *&v38 = v37[1];
    operator delete(v37[1]);
  }

  if (v43)
  {
    *(&v43 + 1) = v43;
    operator delete(v43);
  }

  if (*(&v41 + 1))
  {
    *&v42 = *(&v41 + 1);
    operator delete(*(&v41 + 1));
  }

  if (v40)
  {
    *(&v40 + 1) = v40;
    operator delete(v40);
  }

  if (*(&v48 + 1))
  {
    *&v49 = *(&v48 + 1);
    operator delete(*(&v48 + 1));
  }

  if (v47)
  {
    *(&v47 + 1) = v47;
    operator delete(v47);
  }

  if (*(&v45 + 1))
  {
    *&v46 = *(&v45 + 1);
    operator delete(*(&v45 + 1));
  }
}

void sub_24BDC5954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a22)
  {
    operator delete(a22);
  }

  sub_24BC9EE94(&a25);
  sub_24BC9EE94((v25 - 160));
  _Unwind_Resume(a1);
}

__n128 sub_24BDC59CC(uint64_t *a1, void *a2, void *a3)
{
  sub_24BC92930(a3, ((a1[1] - *a1) >> 2) + ((a1[1] - *a1) >> 3));
  v5 = *a1;
  if ((-1431655765 * ((a1[1] - *a1) >> 3)) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = (v5 + 24 * v6);
      _Q0 = *v7;
      *&v9 = *(v7 + 2);
      v10 = (*a2 + 24 * v6);
      v11 = v10[1];
      _D3 = v10[2];
      __asm { FMLA            D5, D3, V0.D[1] }

      v18 = *&v9 * *v10 - *&_Q0 * _D3;
      v19 = *&_Q0 * v11 - *(&_Q0 + 1) * *v10;
      v20 = sqrt(v18 * v18 + _D5 * _D5 + v19 * v19);
      if (v20 <= 0.0)
      {
        v22 = 0.0;
        v21 = 1.0;
        v23 = 0.0;
      }

      else
      {
        v21 = _D5 / v20;
        v22 = v18 / v20;
        v23 = v19 / v20;
      }

      *(&v9 + 1) = *v10;
      v72 = _Q0;
      v73 = v9;
      v74 = *&v11;
      v75 = *&_D3;
      v76 = v21;
      v77 = *&v22;
      v78 = v23;
      sub_24BDBD540(&v72);
      v67 = xmmword_24BFED2C0;
      v68 = *algn_24BFED2D0;
      v24.n128_u64[1] = unk_24BFED2F8;
      v69 = xmmword_24BFED2E0;
      v70 = unk_24BFED2F0;
      v71 = 0x3FF0000000000000;
      v62 = xmmword_24BFED2C0;
      v63 = *algn_24BFED2D0;
      v64 = xmmword_24BFED2E0;
      v65 = unk_24BFED2F0;
      v66[0] = 1.0;
      v61[0] = 1.0;
      v57 = xmmword_24BFED2C0;
      v58 = *algn_24BFED2D0;
      v59 = xmmword_24BFED2E0;
      v60 = unk_24BFED2F0;
      v24.n128_u64[0] = *(&v72 + 1);
      v25.n128_u64[0] = v77;
      v26.n128_u64[0] = v73;
      v27.n128_u64[0] = v74;
      v28.n128_u64[0] = v75;
      v29 = &v62;
      sub_24BD05BAC(v72, *(&v73 + 1), *&v76, v24, v27, v25, v26, v28, &v67, &v68 + 1, &v70, &v67 + 1, &v69, &v70 + 1, &v68, &v69 + 1, v78, &v71, &v62, &v63 + 1, &v65, &v62 + 1, &v64, &v65 + 1, &v63, &v64 + 1, v66, &v57, &v58 + 1, &v60, &v57 + 1, &v59, &v60 + 1, &v58, &v59 + 1, v61);
      v30 = 0;
      v56[0] = v57;
      v56[4] = v59;
      v56[1] = *(&v58 + 1);
      v56[2] = v60;
      v56[3] = *(&v57 + 1);
      v56[5] = *(&v60 + 1);
      *&v56[8] = v61[0];
      v56[6] = v58;
      v56[7] = *(&v59 + 1);
      v50 = 0x3FF0000000000000;
      v49[0] = xmmword_24BFED2C0;
      v49[1] = *algn_24BFED2D0;
      v49[2] = xmmword_24BFED2E0;
      v49[3] = unk_24BFED2F0;
      do
      {
        v31 = 0;
        v32 = v56;
        do
        {
          v33 = 0;
          v34 = 0.0;
          v35 = v29;
          do
          {
            v36 = *v35;
            v35 += 3;
            v34 = v34 + v36 * *&v32[v33++];
          }

          while (v33 != 3);
          *(v49 + 3 * v31++ + v30) = v34;
          v32 += 3;
        }

        while (v31 != 3);
        ++v30;
        v29 = (v29 + 8);
      }

      while (v30 != 3);
      v37 = 0;
      v55 = 0x3FF0000000000000;
      v51 = xmmword_24BFED2C0;
      v52 = *algn_24BFED2D0;
      v38 = &v57;
      v53 = xmmword_24BFED2E0;
      v54 = unk_24BFED2F0;
      do
      {
        v39 = 0;
        v40 = v49;
        do
        {
          v41 = 0;
          v42 = 0.0;
          v43 = v38;
          do
          {
            v44 = *v43;
            v43 += 3;
            v42 = v42 + v44 * *(v40 + v41);
            v41 += 8;
          }

          while (v41 != 24);
          *(&v51 + 3 * v39++ + v37) = v42;
          v40 = (v40 + 24);
        }

        while (v39 != 3);
        ++v37;
        v38 = (v38 + 8);
      }

      while (v37 != 3);
      v45 = *a3 + 72 * v6;
      v46 = v54;
      *(v45 + 32) = v53;
      *(v45 + 48) = v46;
      *(v45 + 64) = v55;
      result = v52;
      *v45 = v51;
      *(v45 + 16) = result;
      ++v6;
      v5 = *a1;
    }

    while (v6 < (-1431655765 * ((a1[1] - *a1) >> 3)));
  }

  return result;
}

void sub_24BDC5DA8(uint64_t a1, void *a2)
{
  *a2 = *a1;
  if (a2 != a1)
  {
    sub_24BD07E64(a2 + 1, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  }

  srand(2u);
  if (*a2)
  {
    v3 = 0;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v5 = rand();
        v6 = *a2;
        v7 = a2[1] + 8 * i * v6;
        *(v7 + 8 * v3) = *(v7 + 8 * v3) + v5 / 2147483650.0 * 0.001 * 0.1;
      }

      ++v3;
    }

    while (v3 < v6);
  }
}

BOOL sub_24BDC5E80(void *a1, uint64_t *a2, void *a3, uint64_t *a4, void *a5, void *a6)
{
  v6 = a1;
  v440 = *MEMORY[0x277D85DE8];
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((a1[17] - a1[16]) >> 2);
  sub_24BCA123C(v435, v7);
  sub_24BCA123C(v434, (v7 >> 1));
  sub_24BDBE7BC(v6, v435, v434);
  v340 = v6 + 13;
  sub_24BD07F90(&v431, (v6[14] - v6[13]) >> 2, 3);
  v339 = v6;
  if (v6[14] != v6[13])
  {
    v8 = 0;
    v9 = 0;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v11 = (v339[1] + 16 * *(v339 + 44));
        v13 = *v11;
        v12 = v11[1];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v12);
        }

        *(v432 + i * v431 + v8) = *(*(v13 + 40) + 16 * v9 + 4 * i);
      }

      v6 = v339;
      v8 = ++v9;
    }

    while (v9 < ((v339[14] - v339[13]) >> 2));
  }

  v430 = 0u;
  *v429 = 0u;
  sub_24BDC5DA8(&v431, v429);
  v428 = ((v6[14] - v6[13]) >> 2) - 1;
  v427 = 0u;
  *v426 = 0u;
  sub_24BDC4EB8(v6, v426);
  v419 = (v6[14] - v6[13]) >> 2;
  v420 = v419;
  v421 = 0u;
  v422 = 0u;
  v423 = 0u;
  v424 = 0u;
  v425 = 0;
  sub_24BDC894C(&v385, 3, 2);
  v14 = v385;
  v15 = HIDWORD(v385) * v385;
  if (v15)
  {
    v16 = &dword_24BFED2A8;
    v17 = v386;
    do
    {
      v18 = *v16++;
      *v17++ = v18;
      --v15;
    }

    while (v15);
    v14 = v385;
  }

  v414[1] = 0;
  v414[0] = 0;
  *&v415 = 0;
  sub_24BD6EC64(v414, 4 * v14 * ((v6[20] - v6[19]) >> 2));
  sub_24BCB2008(v406, 3uLL);
  if (v6[20] != v6[19])
  {
    v20 = 0;
    v21 = 0;
    do
    {
      LODWORD(__p[0]) = v21;
      sub_24BCD567C(v6, __p, v406);
      v22 = v385;
      if (v385)
      {
        v23 = 0;
        do
        {
          v24 = (v386 + 4 * v23);
          v26 = *(v406[0] + v24[v22]);
          v27 = *(v426[1] + v23 * LODWORD(v426[0]) + v20);
          LODWORD(__p[0]) = *(v406[0] + *v24);
          v25 = __p[0];
          HIDWORD(__p[0]) = v26;
          __p[1] = v27;
          sub_24BD6EF1C(v414, __p);
          v28 = *(v426[1] + v23 * LODWORD(v426[0]) + v20);
          __p[0] = __PAIR64__(v25, v26);
          __p[1] = v28;
          sub_24BD6EF1C(v414, __p);
          v29 = -*(v426[1] + v23 * LODWORD(v426[0]) + v20);
          LODWORD(__p[0]) = v25;
          HIDWORD(__p[0]) = v25;
          __p[1] = *&v29;
          sub_24BD6EF1C(v414, __p);
          v30 = -*(v426[1] + v23 * LODWORD(v426[0]) + v20);
          LODWORD(__p[0]) = v26;
          HIDWORD(__p[0]) = v26;
          __p[1] = *&v30;
          sub_24BD6EF1C(v414, __p);
          ++v23;
          v22 = v385;
        }

        while (v23 < v385);
      }

      v6 = v339;
      v20 = ++v21;
    }

    while (v21 < ((v339[20] - v339[19]) >> 2));
  }

  v31 = 126 - 2 * __clz((v414[1] - v414[0]) >> 4);
  if (v414[1] == v414[0])
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  sub_24BDC89B0(v414[0], v414[1], v32, 1, v19);
  v436[0] = 0;
  sub_24BC9FEFC(__p, (v414[1] - v414[0]) >> 4, v436);
  v33 = v414[0];
  v34 = (v414[1] - v414[0]) >> 4;
  v35 = (v34 - 1);
  if (v35 >= 1)
  {
    v36 = __p[0];
    v37 = v34 - 2;
    v38 = v35 + 1;
    v39 = (v414[0] + 16 * v35 + 8);
    do
    {
      --v38;
      v40 = &v33[16 * v37];
      if (*(v39 - 2) == *v40 && *(v39 - 1) == *(v40 + 1))
      {
        v40[1] = *v39 + v40[1];
        *&v36[(v38 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v38;
      }

      --v37;
      v39 -= 2;
    }

    while (v38 > 1);
  }

  sub_24BDC827C(v414, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  sub_24BDCB164(v414, v419, v420, 1, &v419);
  if (v406[0])
  {
    v406[1] = v406[0];
    operator delete(v406[0]);
  }

  if (v414[0])
  {
    v414[1] = v414[0];
    operator delete(v414[0]);
  }

  if (v386)
  {
    v387 = v386;
    operator delete(v386);
  }

  v418 = 0u;
  *v417 = 0u;
  *v416 = 0u;
  v415 = 0u;
  *v414 = 0u;
  v412 = 0;
  v411 = 0;
  v413 = 0;
  v410 = 0u;
  *v409 = 0u;
  *v408 = 0u;
  v407 = 0u;
  *v406 = 0u;
  v405 = 0u;
  *v404 = 0u;
  v403 = 0u;
  *v402 = 0u;
  *v401 = 0u;
  v400 = 0u;
  *__p = 0u;
  v398 = 0u;
  *v397 = 0u;
  sub_24BDC5474(&v419, v429, v406, v404, v428, 1);
  sub_24BDC5624(&v419, v429, &v431, __p, v397, v428, 1);
  v395 = 0;
  v394 = 0;
  v396 = 0;
  sub_24BDC59CC(a2, a3, &v394);
  v41 = v6[20] - v6[19];
  sub_24BC92930(&v411, 2 * v41 + (v41 >> 2));
  v393 = 0.1;
  *&v350[0] = 0x3FECCCCCCCCCCCCDLL;
  sub_24BDC839C(v406, v350, &v385);
  sub_24BDC839C(__p, &v393, v436);
  sub_24BDCB600(&v385, v436, v414);
  if (*(&v438 + 1))
  {
    v439 = *(&v438 + 1);
    operator delete(*(&v438 + 1));
  }

  if (v437)
  {
    *(&v437 + 1) = v437;
    operator delete(v437);
  }

  if (*&v436[8])
  {
    *&v436[16] = *&v436[8];
    operator delete(*&v436[8]);
  }

  if (v391)
  {
    v392 = v391;
    operator delete(v391);
  }

  if (v389)
  {
    v390 = v389;
    operator delete(v389);
  }

  if (v386)
  {
    v387 = v386;
    operator delete(v386);
  }

  *v436 = v404[0];
  memset(&v436[8], 0, 24);
  sub_24BCA39A4(&v436[8], v404[1], v405, (v405 - v404[1]) >> 3);
  v42 = *v436;
  if (*v436)
  {
    v43 = 0;
    v44 = *&v436[4];
    v45 = *&v436[8];
    do
    {
      v46 = v45;
      v47 = v44;
      if (v44)
      {
        do
        {
          *v46 = *v46 * 0.9;
          v46 += v42;
          --v47;
        }

        while (v47);
      }

      ++v43;
      ++v45;
    }

    while (v43 != v42);
  }

  *&v350[0] = v397[0];
  memset(v350 + 8, 0, 24);
  sub_24BCA39A4(v350 + 1, v397[1], v398, (v398 - v397[1]) >> 3);
  v48 = LODWORD(v350[0]);
  if (LODWORD(v350[0]))
  {
    v49 = 0;
    v50 = DWORD1(v350[0]);
    v51 = *(&v350[0] + 1);
    do
    {
      v52 = v51;
      v53 = v50;
      if (v50)
      {
        do
        {
          *v52 = v393 * *v52;
          v52 += v48;
          --v53;
        }

        while (v53);
      }

      ++v49;
      ++v51;
    }

    while (v49 != v48);
  }

  v385 = *v436;
  v386 = 0;
  v388 = 0;
  v387 = 0;
  sub_24BCA39A4(&v386, *&v436[8], *&v436[16], (*&v436[16] - *&v436[8]) >> 3);
  v54 = v385;
  v55 = v386;
  v56 = *(&v350[0] + 1);
  v325 = v386;
  if (v385)
  {
    v57 = 0;
    v58 = HIDWORD(v385);
    v59 = 8 * LODWORD(v350[0]);
    do
    {
      v60 = v56;
      v61 = v55;
      v62 = v58;
      if (v58)
      {
        do
        {
          *v61 = *v60 + *v61;
          v61 += v54;
          v60 = (v60 + v59);
          --v62;
        }

        while (v62);
      }

      ++v57;
      ++v55;
      ++v56;
    }

    while (v57 != v54);
    v56 = *(&v350[0] + 1);
  }

  v63 = v385;
  v387 = 0;
  v388 = 0;
  v386 = 0;
  if (v56)
  {
    *&v350[1] = v56;
    operator delete(v56);
  }

  if (*&v436[8])
  {
    *&v436[16] = *&v436[8];
    operator delete(*&v436[8]);
  }

  sub_24BDCBF40(&v385);
  v64 = sub_24BDCC1C8(&v385, v414);
  if (v64)
  {
    v66 = v6[19];
    v65 = v6[20];
    sub_24BCB2008(v436, 3uLL);
    sub_24BD41DF4(v384, (v65 - v66) >> 2);
    if (*v436)
    {
      *&v436[8] = *v436;
      operator delete(*v436);
    }

    sub_24BCB2008(&v382, 3uLL);
    if (v6[20] != v6[19])
    {
      v67 = 0;
      v68 = 1;
      do
      {
        *v436 = v68 - 1;
        sub_24BCD567C(v6, v436, &v382);
        v69 = (v384[0] + 24 * v67);
        if (v69 != &v382)
        {
          sub_24BCA2A30(v69, v382, v383, (v383 - v382) >> 2);
        }

        v67 = v68;
        v6 = v339;
        ++v68;
      }

      while (v67 < (v339[20] - v339[19]) >> 2);
    }

    memset(&v381[3], 0, 24);
    sub_24BDC5DA8(&v431, v429);
    v70 = v6;
    v71 = v6[20] - v6[19];
    sub_24BC95764(v381, 2 * v71 + (v71 >> 2));
    if (v6[20] != v6[19])
    {
      v72 = 0;
      v73 = 0;
      do
      {
        *v436 = v73;
        sub_24BCD567C(v6, v436, &v382);
        v74 = 0;
        v75 = v382;
        v76 = v432;
        v77 = 8 * v431;
        v78 = v381[0] + v72;
        do
        {
          v79 = 0;
          v80 = &v76[8 * v75[v74]];
          do
          {
            v81 = *v80;
            *&v78[v79] = v81;
            v80 = (v80 + v77);
            v79 += 4;
          }

          while (v79 != 12);
          ++v74;
          v78 += 12;
        }

        while (v74 != 3);
        ++v73;
        v72 += 36;
      }

      while (v73 < (v6[20] - v6[19]) >> 2);
    }

    sub_24BC95764(&v379, (v395 - v394) >> 3);
    v82 = v379;
    if (v380 != v379)
    {
      v83 = (v380 - v379) >> 2;
      v84 = v394;
      if (v83 <= 1)
      {
        v83 = 1;
      }

      do
      {
        v85 = *v84++;
        v86 = v85;
        *v82++ = v86;
        --v83;
      }

      while (v83);
    }

    sub_24BC95764(&v378, (LODWORD(v426[0]) * HIDWORD(v426[0])));
    v87 = (v6[20] - v6[19]) >> 2;
    if (v6[20] != v6[19])
    {
      v88 = 0;
      v89 = 0;
      v90 = v426[1];
      v91 = v378;
      v92 = 8 * LODWORD(v426[0]);
      do
      {
        v93 = 3;
        v94 = v90;
        v95 = v88;
        do
        {
          v96 = *v94;
          v91[v95++] = v96;
          v94 = (v94 + v92);
          --v93;
        }

        while (v93);
        ++v89;
        v88 += 3;
        ++v90;
      }

      while (v87 > v89);
    }

    sub_24BC95764(&v377, 9 * v87);
    sub_24BD4BD60(&v376, 3uLL);
    v338 = 8 * v63;
    v103 = v6[20];
    if (v103 == v6[19])
    {
      v115 = 0;
      v114 = v6[20];
    }

    else
    {
      v104 = 0;
      v105 = 0;
      do
      {
        *v436 = v105;
        sub_24BCD567C(v6, v436, &v382);
        v106 = 0;
        v107 = v382;
        v108 = v429[1];
        v109 = 8 * LODWORD(v429[0]);
        v110 = v377 + v104;
        do
        {
          v111 = 0;
          v112 = &v108[8 * v107[v106]];
          do
          {
            v113 = *v112;
            *&v110[v111] = v113;
            v112 = (v112 + v109);
            v111 += 4;
          }

          while (v111 != 12);
          ++v106;
          v110 += 12;
        }

        while (v106 != 3);
        ++v105;
        v103 = v6[19];
        v114 = v6[20];
        v104 += 36;
      }

      while (v105 < (v114 - v103) >> 2);
      v115 = (v114 - v103) >> 2;
    }

    if (v115 < 0x400)
    {
      v168 = xmmword_24BFED308;
      v169 = unk_24BFED318;
      v350[0] = xmmword_24BFED308;
      v350[1] = unk_24BFED318;
      LODWORD(v351) = 1065353216;
      *v344 = xmmword_24BFED308;
      *&v344[16] = unk_24BFED318;
      LODWORD(v345) = 1065353216;
      v375 = 0.0;
      *v373 = 0u;
      v374 = 0u;
      if (v114 != v103)
      {
        v170 = 0;
        v171 = 0;
        v172 = 0;
        v173 = 6;
        do
        {
          v342 = v172;
          v174 = v381[0];
          v175 = 24;
          v176 = v173;
          do
          {
            v177 = v174[v176 - 3];
            v178 = v174[v176 - 6];
            v179 = (v350 + v175);
            *(v179 - 6) = v177 - v178;
            v180 = v174[v176];
            *(v179 - 3) = v180 - v177;
            *v179 = v178 - v180;
            ++v176;
            v175 += 4;
          }

          while (v175 != 36);
          v181 = 0;
          v372 = 1065353216;
          *v370 = v168;
          v371 = v169;
          v182 = v170;
          v183 = v394;
          do
          {
            v184 = v183[v182];
            *(v370 + v181) = v184;
            ++v182;
            v181 += 4;
          }

          while (v181 != 36);
          v185 = 0;
          v369[0] = 1.0;
          v186 = v370;
          v367 = v168;
          v368 = v169;
          do
          {
            v187 = 0;
            v188 = v350;
            do
            {
              v189 = 0;
              v190 = 0.0;
              v191 = v186;
              do
              {
                v192 = *v191;
                v191 += 3;
                v190 = v190 + (v192 * *(v188 + v189));
                v189 += 4;
              }

              while (v189 != 12);
              *(&v367 + 3 * v187++ + v185) = v190;
              v188 = (v188 + 12);
            }

            while (v187 != 3);
            ++v185;
            v186 = (v186 + 4);
          }

          while (v185 != 3);
          v193.n128_u64[1] = *(&v367 + 1);
          v194 = v368;
          v350[0] = v367;
          v350[1] = v368;
          *&v351 = v369[0];
          v195 = v377;
          v196 = 24;
          v197 = v173;
          do
          {
            v198 = v195[v197 - 3];
            v199 = v195[v197 - 6];
            v200 = &v344[v196];
            *(v200 - 6) = v198 - v199;
            v201 = v195[v197];
            *(v200 - 3) = v201 - v198;
            *v200 = v199 - v201;
            ++v197;
            v196 += 4;
          }

          while (v196 != 36);
          v202 = 0;
          v203 = (v426[1] + 8 * v171);
          v204 = v203[2 * LODWORD(v426[0])];
          *v373 = v204;
          v205 = *v203;
          *&v374 = v205;
          v206 = v203[LODWORD(v426[0])];
          v375 = v206;
          v208 = DWORD2(v350[0]);
          v207 = DWORD1(v350[0]);
          v209 = DWORD1(v350[1]);
          *(v350 + 4) = __PAIR64__(DWORD2(v350[1]), HIDWORD(v350[0]));
          HIDWORD(v350[0]) = v207;
          *(&v350[1] + 4) = __PAIR64__(v208, HIDWORD(v350[1]));
          HIDWORD(v350[1]) = v209;
          v366[0] = 1065353216;
          v364 = v168;
          v365 = v169;
          v210 = v373;
          do
          {
            v211 = 0;
            v212 = v350;
            do
            {
              v213 = 0;
              v214 = 0.0;
              v215 = v210;
              do
              {
                v216 = *v215;
                v215 += 3;
                v214 = v214 + (v216 * *(v212 + v213));
                v213 += 4;
              }

              while (v213 != 12);
              *(&v364 + 3 * v211++ + v202) = v214;
              v212 = (v212 + 12);
            }

            while (v211 != 3);
            ++v202;
            v210 = (v210 + 4);
          }

          while (v202 != 3);
          v217 = 0;
          v369[0] = 1.0;
          v218 = v344;
          v367 = v168;
          v368 = v169;
          do
          {
            v219 = 0;
            v220 = &v364;
            do
            {
              v221 = 0;
              v193.n128_u64[0] = 0;
              v222 = v218;
              do
              {
                v223 = *v222;
                v222 += 3;
                v193.n128_f32[0] = v193.n128_f32[0] + (v223 * *(v220 + v221));
                v221 += 4;
              }

              while (v221 != 12);
              *(&v367 + 3 * v219++ + v217) = v193.n128_u32[0];
              v220 = (v220 + 12);
            }

            while (v219 != 3);
            ++v217;
            ++v218;
          }

          while (v217 != 3);
          v98.n128_u32[0] = DWORD1(v367);
          v193.n128_u32[0] = v367;
          v194.n128_u32[0] = HIDWORD(v367);
          v101.n128_u32[0] = DWORD2(v367);
          v102.n128_u32[0] = v368.n128_u32[1];
          v99.n128_u32[0] = v368.n128_u32[0];
          v100.n128_u32[0] = v368.n128_u32[3];
          v97.n128_u32[0] = v368.n128_u32[2];
          v224 = v369[0];
          v367 = v168;
          v368 = v169;
          v369[0] = 1.0;
          v366[0] = 1065353216;
          v364 = v168;
          v365 = v169;
          v363[0] = 1.0;
          v361 = v168;
          v362 = v169;
          *&v324 = v224;
          sub_24BD06594(v193, v194, v97, v98, v99, v100, v101, v102, &v367, &v367 + 3, &v368.n128_f32[2], &v367 + 1, &v368, &v368.n128_f32[3], &v367 + 2, &v368.n128_f32[1], v324, v369, &v364, &v364 + 3, &v365.n128_f32[2], &v364 + 1, &v365, &v365.n128_f32[3], &v364 + 2, &v365.n128_f32[1], v366, &v361, &v361.f64[1] + 1, &v362.n128_f32[2], v361.f64 + 1, &v362, &v362.n128_f32[3], &v361.f64[1], &v362.n128_f32[1], v363);
          v225 = 0;
          v227 = LODWORD(v361.f64[1]);
          v226 = HIDWORD(v361.f64[0]);
          v98.n128_u32[0] = v362.n128_u32[1];
          *(v361.f64 + 4) = __PAIR64__(v362.n128_u32[2], HIDWORD(v361.f64[1]));
          HIDWORD(v361.f64[1]) = v226;
          *(v362.n128_u64 + 4) = __PAIR64__(v227, v362.n128_u32[3]);
          v362.n128_u32[3] = v98.n128_u32[0];
          v169 = unk_24BFED318;
          v168 = xmmword_24BFED308;
          *__src = xmmword_24BFED308;
          v359 = unk_24BFED318;
          v228 = &v367;
          v360 = 1.0;
          do
          {
            v229 = 0;
            v230 = &v361;
            do
            {
              v231 = 0;
              v232 = 0.0;
              v233 = v228;
              do
              {
                v234 = *v233;
                v233 += 3;
                v232 = v232 + (v234 * *(v230->f64 + v231));
                v231 += 4;
              }

              while (v231 != 12);
              *(__src + 3 * v229++ + v225) = v232;
              v230 = (v230 + 12);
            }

            while (v229 != 3);
            ++v225;
            v228 = (v228 + 4);
          }

          while (v225 != 3);
          *&v437 = v360;
          *v436 = *__src;
          *&v436[16] = v359;
          if ((((*v436 * ((v360 * *&v359) - (*(&v359 + 1) * *(&v359 + 3)))) - (*&v436[4] * ((v360 * *(&__src[1] + 1)) - (*(&v359 + 1) * *(&v359 + 2))))) + (*&v436[8] * ((*(&v359 + 3) * *(&__src[1] + 1)) - (*&v359 * *(&v359 + 2))))) < 0.0)
          {
            v235 = 0;
            *&v368.n128_i8[8] = vneg_f32(*&v368.n128_i8[8]);
            v369[0] = -v369[0];
            *__src = xmmword_24BFED308;
            v359 = unk_24BFED318;
            v360 = 1.0;
            v236 = &v367;
            do
            {
              v237 = 0;
              v238 = &v361;
              do
              {
                v239 = 0;
                v240 = 0.0;
                v241 = v236;
                do
                {
                  v242 = *v241;
                  v241 += 3;
                  v240 = v240 + (v242 * *(v238->f64 + v239));
                  v239 += 4;
                }

                while (v239 != 12);
                *(__src + 3 * v237++ + v235) = v240;
                v238 = (v238 + 12);
              }

              while (v237 != 3);
              ++v235;
              v236 = (v236 + 4);
            }

            while (v235 != 3);
            *v436 = *__src;
            *&v436[16] = v359;
            *&v437 = v360;
          }

          v243 = 0;
          v360 = 1.0;
          v244 = v436;
          *__src = xmmword_24BFED308;
          v359 = unk_24BFED318;
          do
          {
            v245 = 0;
            v246 = v370;
            do
            {
              v247 = 0;
              v248 = 0.0;
              v249 = v244;
              do
              {
                v250 = *v249;
                v249 += 3;
                v248 = v248 + (v250 * *(v246 + v247));
                v247 += 4;
              }

              while (v247 != 12);
              *(__src + 3 * v245++ + v243) = v248;
              v246 = (v246 + 12);
            }

            while (v245 != 3);
            ++v243;
            ++v244;
          }

          while (v243 != 3);
          v251 = 0;
          v252 = v411 + 8 * v170;
          do
          {
            *&v252[8 * v251] = *(__src + v251);
            ++v251;
          }

          while (v251 != 9);
          v171 = (v342 + 1);
          v173 += 9;
          v170 += 9;
          v172 = v342 + 1;
        }

        while (v171 < (v6[20] - v6[19]) >> 2);
      }
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v341 = MTLCreateSystemDefaultDevice();
      sub_24BCCEE48(v436, &unk_24C0435AF);
      v335 = sub_24BD4C428(v341, 0, v436, 1);
      if ((v436[23] & 0x80000000) != 0)
      {
        operator delete(*v436);
      }

      v327 = objc_msgSend_newFunctionWithName_(v335, v116, @"ComputeOptimalRotations", v117);
      v336 = objc_msgSend_newComputePipelineStateWithFunction_error_(v341, v118, v327, 0);
      v334 = objc_msgSend_newCommandQueue(v341, v119, v120, v121);
      v122 = v6[20] - v6[19];
      v123 = 4 * (2 * v122 + (v122 >> 2));
      v333 = objc_msgSend_newBufferWithBytes_length_options_(v341, v124, v381[0], v123, 0);
      v332 = objc_msgSend_newBufferWithBytes_length_options_(v341, v125, v379, v123, 0);
      v126 = v122 >> 2;
      v331 = objc_msgSend_newBufferWithBytes_length_options_(v341, v127, v378, 12 * v126, 0);
      v330 = objc_msgSend_newBufferWithBytes_length_options_(v341, v128, v377, v123, 0);
      sub_24BC95764(v436, (v412 - v411) >> 3);
      v337 = objc_msgSend_newBufferWithBytes_length_options_(v341, v129, *v436, v123, 0);
      v133 = objc_msgSend_commandBuffer(v334, v130, v131, v132);
      v137 = objc_msgSend_computeCommandEncoder(v133, v134, v135, v136);
      objc_msgSend_setComputePipelineState_(v137, v138, v336, v139);
      objc_msgSend_setBuffer_offset_atIndex_(v137, v140, v333, 0, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v137, v141, v332, 0, 1);
      objc_msgSend_setBuffer_offset_atIndex_(v137, v142, v331, 0, 2);
      objc_msgSend_setBuffer_offset_atIndex_(v137, v143, v330, 0, 3);
      objc_msgSend_setBuffer_offset_atIndex_(v137, v144, v337, 0, 4);
      v148 = objc_msgSend_maxTotalThreadsPerThreadgroup(v336, v145, v146, v147);
      if (v148 >= v126)
      {
        v150 = v126;
      }

      else
      {
        v150 = v148;
      }

      *&v350[0] = v126;
      *(v350 + 8) = vdupq_n_s64(1uLL);
      *v344 = v150;
      *&v344[8] = *(v350 + 8);
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v137, v149, v350, v344);
      objc_msgSend_endEncoding(v137, v151, v152, v153);
      objc_msgSend_commit(v133, v154, v155, v156);
      objc_msgSend_waitUntilCompleted(v133, v157, v158, v159);
      v160 = v337;
      v164 = objc_msgSend_contents(v337, v161, v162, v163);
      v165 = v411;
      if (v412 != v411)
      {
        v166 = (v412 - v411) >> 3;
        if (v166 <= 1)
        {
          v166 = 1;
        }

        do
        {
          v167 = *v164++;
          *v165++ = v167;
          --v166;
        }

        while (v166);
      }

      if (*v436)
      {
        *&v436[8] = *v436;
        operator delete(*v436);
      }

      objc_autoreleasePoolPop(context);
    }

    sub_24BD07F90(v373, v428, 3);
    v370[1] = 0;
    v371 = 0uLL;
    v367 = 0uLL;
    v368.n128_u64[0] = 0;
    v364 = 0uLL;
    v365.n128_u64[0] = 0;
    v361 = 0uLL;
    v362.n128_u64[0] = 0;
    v370[0] = (v428 | 0x300000000);
    sub_24BC92930(&v370[1], 3 * v428);
    if (v428 >= 1)
    {
      v253 = 0;
      v254 = 0;
      do
      {
        v255 = LODWORD(v373[0]);
        v256 = v373[1] + 8 * v254;
        *v256 = 0;
        v256[v255] = 0;
        v256[2 * v255] = 0;
        __src[1] = 0;
        __src[0] = 0;
        *&v359 = 0;
        v343 = v254;
        *v436 = v254;
        sub_24BCB9454(v357, v340, v436);
        for (j = sub_24BCB947C(v357); ; j = sub_24BCB947C(v357))
        {
          v356 = j;
          if (j == -1)
          {
            break;
          }

          v258 = sub_24BC9ECE4(v70, *(v70 + 180), j);
          if ((*v258 & v259) == 0)
          {
            v260 = sub_24BCB9024(v340, &v356);
            v261 = __src[1];
            if (__src[1] >= v359)
            {
              v263 = (__src[1] - __src[0]) >> 2;
              if ((v263 + 1) >> 62)
              {
                sub_24BC8E01C();
              }

              v264 = (v359 - __src[0]) >> 1;
              if (v264 <= v263 + 1)
              {
                v264 = v263 + 1;
              }

              if (v359 - __src[0] >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v265 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v265 = v264;
              }

              if (v265)
              {
                sub_24BC92E0C(__src, v265);
              }

              v266 = (4 * v263);
              *v266 = *(v260 + 16);
              v262 = (4 * v263 + 4);
              v267 = v266 - (__src[1] - __src[0]);
              memcpy(v267, __src[0], __src[1] - __src[0]);
              v268 = __src[0];
              __src[0] = v267;
              __src[1] = v262;
              *&v359 = 0;
              if (v268)
              {
                operator delete(v268);
              }

              v70 = v339;
            }

            else
            {
              *__src[1] = *(v260 + 16);
              v262 = v261 + 4;
            }

            __src[1] = v262;
          }
        }

        v269 = __src[0];
        if (((__src[1] - __src[0]) >> 2) >= 1)
        {
          v270 = 0;
          v271 = v384[0];
          v272 = v432;
          v273 = v426[0];
          v274 = v426[1];
          v275 = v411;
          v276 = ((__src[1] - __src[0]) >> 2) & 0x7FFFFFFF;
          v277 = v373[1];
          v278 = 8 * v431;
          v279 = 8 * LODWORD(v373[0]);
          do
          {
            v280 = v269[v270];
            v281 = *(v271 + 24 * v280);
            v282 = v281 + 1;
            if (v343 == *v281)
            {
              v283 = 1;
              v284 = 2;
            }

            else if (v343 == v281[1])
            {
              v284 = 0;
              v282 = v281 + 2;
              v283 = 2;
            }

            else
            {
              if (v343 == v281[2])
              {
                v285 = 2;
              }

              else
              {
                v285 = 3;
              }

              v283 = v285 - 2;
              v282 = &v281[v285 - 2];
              v284 = (v285 - 1);
            }

            v286 = 0;
            v287 = *v282;
            v288 = v281[v284];
            v289 = v272;
            do
            {
              v290 = v289[v253];
              *(&v367 + v286) = v289[v287] - v290;
              *(&v364 + v286) = v289[v288] - v290;
              v289 = (v289 + v278);
              v286 += 8;
            }

            while (v286 != 24);
            v291 = 0;
            v292 = v274[v284 * v273 + v280];
            v293 = v274[v283 * v273 + v280];
            v294 = &v275[72 * v280];
            *&v436[16] = *(v294 + 1);
            v437 = *(v294 + 2);
            v438 = *(v294 + 3);
            v439 = *(v294 + 8);
            *v436 = *v294;
            v350[0] = xmmword_24BFED2C0;
            v350[1] = *algn_24BFED2D0;
            v351 = xmmword_24BFED2E0;
            v352 = unk_24BFED2F0;
            v353 = 0x3FF0000000000000;
            do
            {
              *(v350 + v291) = v292 * *&v436[v291];
              v291 += 8;
            }

            while (v291 != 72);
            v295 = 0;
            v354 = 0uLL;
            v296 = v350;
            v355 = 0.0;
            do
            {
              v297 = 0;
              v298 = 0.0;
              v299 = v296;
              do
              {
                v300 = *v299;
                v299 += 3;
                v298 = v298 + v300 * *(&v367 + v297);
                v297 += 8;
              }

              while (v297 != 24);
              v354.f64[v295++] = v298;
              v296 = (v296 + 8);
            }

            while (v295 != 3);
            v301 = 0;
            *v344 = xmmword_24BFED2C0;
            *&v344[16] = *algn_24BFED2D0;
            v345 = xmmword_24BFED2E0;
            v346 = unk_24BFED2F0;
            v347 = 0x3FF0000000000000;
            do
            {
              *&v344[v301] = v293 * *&v436[v301];
              v301 += 8;
            }

            while (v301 != 72);
            v302 = 0;
            v348 = 0uLL;
            v303 = v344;
            v349 = 0.0;
            do
            {
              v304 = 0;
              v305 = 0.0;
              v306 = v303;
              do
              {
                v307 = *v306;
                v306 += 3;
                v305 = v305 + v307 * *(&v364 + v304);
                v304 += 8;
              }

              while (v304 != 24);
              v348.f64[v302++] = v305;
              ++v303;
            }

            while (v302 != 3);
            v308 = 0;
            v361 = vaddq_f64(v354, v348);
            v362.n128_f64[0] = v355 + v349;
            v309 = v277;
            do
            {
              *&v309[v253 * 8] = v361.f64[v308] + *&v309[v253 * 8];
              v309 += v279;
              ++v308;
            }

            while (v308 != 3);
            ++v270;
          }

          while (v270 != v276);
        }

        if (v269)
        {
          __src[1] = v269;
          operator delete(v269);
        }

        v254 = v343 + 1;
        ++v253;
      }

      while (v343 + 1 < v428);
    }

    v310 = LODWORD(v373[0]);
    if (LODWORD(v373[0]))
    {
      v311 = 0;
      v312 = HIDWORD(v373[0]);
      v313 = v373[1];
      v314 = 8 * LODWORD(v373[0]);
      do
      {
        v315 = v313;
        v316 = v312;
        if (v312)
        {
          do
          {
            *v315 = *v315 * -1.8;
            v315 = (v315 + v314);
            --v316;
          }

          while (v316);
        }

        ++v311;
        ++v313;
      }

      while (v311 != v310);
      v317 = 0;
      v318 = v373[1];
      v319 = v325;
      do
      {
        v320 = v319;
        v321 = v318;
        v322 = v312;
        if (v312)
        {
          do
          {
            *v321 = *v320 + *v321;
            v321 = (v321 + v314);
            v320 = (v320 + v338);
            --v322;
          }

          while (v322);
        }

        ++v317;
        ++v318;
        ++v319;
      }

      while (v317 != v310);
    }

    *&v436[24] = 0;
    operator new();
  }

  sub_24BDCBFAC(&v385);
  if (v394)
  {
    v395 = v394;
    operator delete(v394);
  }

  if (v397[1])
  {
    operator delete(v397[1]);
  }

  if (v402[1])
  {
    *&v403 = v402[1];
    operator delete(v402[1]);
  }

  if (v401[0])
  {
    v401[1] = v401[0];
    operator delete(v401[0]);
  }

  if (__p[1])
  {
    *&v400 = __p[1];
    operator delete(__p[1]);
  }

  if (v404[1])
  {
    *&v405 = v404[1];
    operator delete(v404[1]);
  }

  if (v409[1])
  {
    *&v410 = v409[1];
    operator delete(v409[1]);
  }

  if (v408[0])
  {
    v408[1] = v408[0];
    operator delete(v408[0]);
  }

  if (v406[1])
  {
    *&v407 = v406[1];
    operator delete(v406[1]);
  }

  if (v411)
  {
    v412 = v411;
    operator delete(v411);
  }

  if (v325)
  {
    operator delete(v325);
  }

  if (v417[1])
  {
    *&v418 = v417[1];
    operator delete(v417[1]);
  }

  if (v416[0])
  {
    v416[1] = v416[0];
    operator delete(v416[0]);
  }

  if (v414[1])
  {
    *&v415 = v414[1];
    operator delete(v414[1]);
  }

  if (v424)
  {
    *(&v424 + 1) = v424;
    operator delete(v424);
  }

  if (*(&v422 + 1))
  {
    *&v423 = *(&v422 + 1);
    operator delete(*(&v422 + 1));
  }

  if (v421)
  {
    *(&v421 + 1) = v421;
    operator delete(v421);
  }

  if (v426[1])
  {
    *&v427 = v426[1];
    operator delete(v426[1]);
  }

  if (v429[1])
  {
    *&v430 = v429[1];
    operator delete(v429[1]);
  }

  if (v432)
  {
    v433 = v432;
    operator delete(v432);
  }

  if (v434[0])
  {
    v434[1] = v434[0];
    operator delete(v434[0]);
  }

  if (v435[0])
  {
    v435[1] = v435[0];
    operator delete(v435[0]);
  }

  return v64;
}