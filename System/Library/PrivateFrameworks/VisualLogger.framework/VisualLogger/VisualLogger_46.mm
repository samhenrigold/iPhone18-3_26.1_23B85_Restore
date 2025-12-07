void sub_2714CD33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_27112D71C(&a27);
  if (a24 < 0)
  {
    operator delete(__p);
    sub_27112D71C(v27 - 208);
    _Unwind_Resume(a1);
  }

  sub_27112D71C(v27 - 208);
  _Unwind_Resume(a1);
}

void sub_2714CD3C4(_Unwind_Exception *a1)
{
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
  }

  _Unwind_Resume(a1);
}

void sub_2714CD3E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v260[25] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 280);
  v5 = 0x86BCA1AF286BCA1BLL * ((*(a1 + 296) - *(a1 + 288)) >> 3);
  if (v4 >= v5 && !*(a1 + 256))
  {
    sub_2714D749C(a2);
  }

  *(a1 + 280) = v4 + 1;
  if (v4 + 1 >= v5)
  {
    sub_2714CBBD0(a1);
  }

  sub_2714CC924(a1);
  v6 = *(a1 + 288) + 152 * v4;
  if (*(v6 + 31) < 0)
  {
    sub_271127178(&v176, *(v6 + 8), *(v6 + 16));
  }

  else
  {
    v7 = *(v6 + 8);
    v177 = *(v6 + 24);
    v176 = v7;
  }

  v178 = *(v6 + 32);
  v8 = *(v6 + 63);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = *(v6 + 40);
    v8 = *(v6 + 48);
    if (*(a1 + 56) != 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v9 = (v6 + 40);
    if (*(a1 + 56) != 1)
    {
      goto LABEL_18;
    }
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (v10 == v11)
  {
    goto LABEL_15;
  }

  while (!sub_2714F3E4C(v10, &v176, v9, v8))
  {
    v10 += 768;
    if (v10 == v11)
    {
      goto LABEL_15;
    }
  }

  if (v10 == v11)
  {
LABEL_15:
    sub_2714D749C(a2);
  }

LABEL_18:
  v116 = (v6 + 40);
  if (*(a1 + 88) == 1)
  {
    v12 = *(a1 + 64);
    v13 = *(a1 + 72);
    if (v12 != v13)
    {
      while (!sub_2714F3E4C(v12, &v176, v9, v8))
      {
        v12 += 800;
        if (v12 == v13)
        {
          v12 = v13;
          break;
        }
      }

      v13 = *(a1 + 72);
    }

    if (v12 != v13)
    {
      v14 = *(v6 + 63);
      if (v14 < 0)
      {
        v40 = *(v6 + 48);
        *&__dst = *(v6 + 40);
        *(&__dst + 1) = v40;
        v15 = *(v12 + 792);
        if (v15)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *&__dst = v6 + 40;
        *(&__dst + 1) = v14;
        v15 = *(v12 + 792);
        if (v15)
        {
LABEL_27:
          (*(*v15 + 48))(v236);
          if (*(v6 + 63) < 0)
          {
            sub_271127178(&v174, *(v6 + 40), *(v6 + 48));
          }

          else
          {
            v16 = *v116;
            v175 = *(v6 + 56);
            v174 = v16;
          }

          LOBYTE(v171) = 0;
          v173 = 0;
          if (*(v6 + 88) == 1)
          {
            if (*(v6 + 87) < 0)
            {
              sub_271127178(&v171, *(v6 + 64), *(v6 + 72));
            }

            else
            {
              v41 = *(v6 + 64);
              v172 = *(v6 + 80);
              v171 = v41;
            }

            v173 = 1;
            __dst = v174;
            v42 = v175;
            v174 = 0uLL;
            v175 = 0;
            *&v249[1] = v171;
            v249[0] = v42;
            v250 = v172;
            v171 = 0uLL;
            v172 = 0;
            LOBYTE(v251) = 1;
          }

          else
          {
            __dst = v174;
            v249[0] = v175;
            v175 = 0;
            v174 = 0uLL;
            LOBYTE(v249[1]) = 0;
            LOBYTE(v251) = 0;
          }

          v43 = SHIBYTE(v249[0]);
          p_dst = &__dst;
          if (SHIBYTE(v249[0]) < 0)
          {
            p_dst = __dst;
          }

          if (SHIBYTE(v249[0]) < 0)
          {
            v43 = *(&__dst + 1);
          }

          if (!v43)
          {
            goto LABEL_196;
          }

          v45 = p_dst;
          if (v43 < 8)
          {
LABEL_383:
            v64 = (p_dst + v43);
            do
            {
              if (*v45 == 58)
              {
                *v45 = 95;
              }

              v45 = (v45 + 1);
            }

            while (v45 != v64);
            goto LABEL_196;
          }

          if (v43 < 0x10)
          {
            v46 = 0;
            goto LABEL_125;
          }

          v46 = v43 & 0xFFFFFFFFFFFFFFF0;
          v50 = p_dst + 7;
          v51.i64[0] = 0x3A3A3A3A3A3A3A3ALL;
          v51.i64[1] = 0x3A3A3A3A3A3A3A3ALL;
          v52 = v43 & 0xFFFFFFFFFFFFFFF0;
          while (1)
          {
            v53 = vceqq_s8(*(v50 - 7), v51);
            if (v53.i8[0])
            {
              *(v50 - 7) = 95;
              if ((v53.i8[1] & 1) == 0)
              {
                goto LABEL_164;
              }
            }

            else if ((v53.i8[1] & 1) == 0)
            {
LABEL_164:
              if (v53.i8[2])
              {
                goto LABEL_165;
              }

              goto LABEL_181;
            }

            *(v50 - 6) = 95;
            if (v53.i8[2])
            {
LABEL_165:
              *(v50 - 5) = 95;
              if ((v53.i8[3] & 1) == 0)
              {
                goto LABEL_166;
              }

              goto LABEL_182;
            }

LABEL_181:
            if ((v53.i8[3] & 1) == 0)
            {
LABEL_166:
              if (v53.i8[4])
              {
                goto LABEL_167;
              }

              goto LABEL_183;
            }

LABEL_182:
            *(v50 - 4) = 95;
            if (v53.i8[4])
            {
LABEL_167:
              *(v50 - 3) = 95;
              if ((v53.i8[5] & 1) == 0)
              {
                goto LABEL_168;
              }

              goto LABEL_184;
            }

LABEL_183:
            if ((v53.i8[5] & 1) == 0)
            {
LABEL_168:
              if (v53.i8[6])
              {
                goto LABEL_169;
              }

              goto LABEL_185;
            }

LABEL_184:
            *(v50 - 2) = 95;
            if (v53.i8[6])
            {
LABEL_169:
              *(v50 - 1) = 95;
              if ((v53.i8[7] & 1) == 0)
              {
                goto LABEL_170;
              }

              goto LABEL_186;
            }

LABEL_185:
            if ((v53.i8[7] & 1) == 0)
            {
LABEL_170:
              if (v53.i8[8])
              {
                goto LABEL_171;
              }

              goto LABEL_187;
            }

LABEL_186:
            *v50 = 95;
            if (v53.i8[8])
            {
LABEL_171:
              v50[1] = 95;
              if ((v53.i8[9] & 1) == 0)
              {
                goto LABEL_172;
              }

              goto LABEL_188;
            }

LABEL_187:
            if ((v53.i8[9] & 1) == 0)
            {
LABEL_172:
              if (v53.i8[10])
              {
                goto LABEL_173;
              }

              goto LABEL_189;
            }

LABEL_188:
            v50[2] = 95;
            if (v53.i8[10])
            {
LABEL_173:
              v50[3] = 95;
              if ((v53.i8[11] & 1) == 0)
              {
                goto LABEL_174;
              }

              goto LABEL_190;
            }

LABEL_189:
            if ((v53.i8[11] & 1) == 0)
            {
LABEL_174:
              if (v53.i8[12])
              {
                goto LABEL_175;
              }

              goto LABEL_191;
            }

LABEL_190:
            v50[4] = 95;
            if (v53.i8[12])
            {
LABEL_175:
              v50[5] = 95;
              if ((v53.i8[13] & 1) == 0)
              {
                goto LABEL_176;
              }

              goto LABEL_192;
            }

LABEL_191:
            if ((v53.i8[13] & 1) == 0)
            {
LABEL_176:
              if (v53.i8[14])
              {
                goto LABEL_177;
              }

              goto LABEL_193;
            }

LABEL_192:
            v50[6] = 95;
            if (v53.i8[14])
            {
LABEL_177:
              v50[7] = 95;
              if (v53.i8[15])
              {
                goto LABEL_194;
              }

              goto LABEL_161;
            }

LABEL_193:
            if (v53.i8[15])
            {
LABEL_194:
              v50[8] = 95;
            }

LABEL_161:
            v50 += 16;
            v52 -= 16;
            if (!v52)
            {
              if (v43 == v46)
              {
                goto LABEL_196;
              }

              if ((v43 & 8) == 0)
              {
                v45 = (p_dst + v46);
                goto LABEL_383;
              }

LABEL_125:
              v45 = (p_dst + (v43 & 0xFFFFFFFFFFFFFFF8));
              v47 = v46 - (v43 & 0xFFFFFFFFFFFFFFF8);
              v48 = p_dst + v46 + 3;
              while (2)
              {
                v49 = vceq_s8(*(v48 - 3), 0x3A3A3A3A3A3A3A3ALL);
                if (v49.i8[0])
                {
                  *(v48 - 3) = 95;
                  if ((v49.i8[1] & 1) == 0)
                  {
                    goto LABEL_129;
                  }

LABEL_137:
                  *(v48 - 2) = 95;
                  if ((v49.i8[2] & 1) == 0)
                  {
                    goto LABEL_138;
                  }

LABEL_130:
                  *(v48 - 1) = 95;
                  if ((v49.i8[3] & 1) == 0)
                  {
                    goto LABEL_131;
                  }

LABEL_139:
                  *v48 = 95;
                  if ((v49.i8[4] & 1) == 0)
                  {
                    goto LABEL_140;
                  }

LABEL_132:
                  v48[1] = 95;
                  if ((v49.i8[5] & 1) == 0)
                  {
                    goto LABEL_133;
                  }

LABEL_141:
                  v48[2] = 95;
                  if ((v49.i8[6] & 1) == 0)
                  {
                    goto LABEL_142;
                  }

LABEL_134:
                  v48[3] = 95;
                  if (v49.i8[7])
                  {
                    goto LABEL_143;
                  }
                }

                else
                {
                  if (v49.i8[1])
                  {
                    goto LABEL_137;
                  }

LABEL_129:
                  if (v49.i8[2])
                  {
                    goto LABEL_130;
                  }

LABEL_138:
                  if (v49.i8[3])
                  {
                    goto LABEL_139;
                  }

LABEL_131:
                  if (v49.i8[4])
                  {
                    goto LABEL_132;
                  }

LABEL_140:
                  if (v49.i8[5])
                  {
                    goto LABEL_141;
                  }

LABEL_133:
                  if (v49.i8[6])
                  {
                    goto LABEL_134;
                  }

LABEL_142:
                  if (v49.i8[7])
                  {
LABEL_143:
                    v48[4] = 95;
                  }
                }

                v48 += 8;
                v47 += 8;
                if (!v47)
                {
                  if (v43 != (v43 & 0xFFFFFFFFFFFFFFF8))
                  {
                    goto LABEL_383;
                  }

LABEL_196:
                  v169 = off_28810C940;
                  v170 = *&v236[8];
                  if (*&v236[16])
                  {
                    atomic_fetch_add_explicit((*&v236[16] + 8), 1uLL, memory_order_relaxed);
                  }

                  sub_271390BA0(&__p, &__dst, &v169);
                }

                continue;
              }
            }
          }
        }
      }

      sub_27112AFFC();
    }
  }

  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v168, *a1, *(a1 + 8));
  }

  else
  {
    v168 = *a1;
  }

  sub_2714D75A8(&v168, (v6 + 96));
  v17 = std::__fs::filesystem::path::__extension((v6 + 96));
  if (v17.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v17.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v249[0]) = v17.__size_;
  if (v17.__size_)
  {
    memmove(&__dst, v17.__data_, v17.__size_);
  }

  *(&v249[-2] + v17.__size_) = 0;
  v167[0] = v249[0];
  *(v167 + 3) = *(v249 + 3);
  v117 = __dst;
  v115 = SHIBYTE(v249[0]);
  if (SHIBYTE(v249[0]) < 0)
  {
    sub_271127178(&__dst, __dst, *(&__dst + 1));
  }

  else
  {
    LODWORD(v249[0]) = v167[0];
    *(v249 + 3) = *(v167 + 3);
  }

  v18 = sub_2714DF79C(&__dst);
  if (SHIBYTE(v249[0]) < 0)
  {
    operator delete(__dst);
  }

  v19 = std::__fs::filesystem::path::__stem(&v168);
  if (v19.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v19.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v249[0]) = v19.__size_;
  if (v19.__size_)
  {
    memmove(&__dst, v19.__data_, v19.__size_);
  }

  *(&v249[-2] + v19.__size_) = 0;
  v20 = *(&__dst + 1);
  v21 = __dst;
  *v236 = v249[0];
  *&v236[3] = *(v249 + 3);
  v22 = SHIBYTE(v249[0]);
  if (SHIBYTE(v249[0]) < 0)
  {
    sub_271127178(&__p, __dst, *(&__dst + 1));
    LOBYTE(v23) = HIBYTE(v260[0]);
    v20 = *(&__p + 1);
  }

  else
  {
    __p = __dst;
    LODWORD(v260[0]) = *v236;
    *(v260 + 3) = *&v236[3];
    HIBYTE(v260[0]) = HIBYTE(v249[0]);
    LOBYTE(v23) = HIBYTE(v249[0]);
  }

  HIBYTE(v249[0]) = 5;
  strcpy(&__dst, "_info");
  v24 = v23;
  if ((v23 & 0x80u) == 0)
  {
    v23 = v23;
  }

  else
  {
    v23 = v20;
  }

  v25 = v23 >= 5;
  v26 = v23 - 5;
  if (!v25)
  {
    v27 = 0;
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if ((v24 & 0x80) == 0)
  {
    if (v24 >= v26)
    {
      if (v24 - v26 >= 5)
      {
        v32 = 5;
      }

      else
      {
        v32 = v24 - v26;
      }

      p_p = &__p;
      goto LABEL_86;
    }

LABEL_678:
    sub_271127FEC();
  }

  if (v20 < v26)
  {
    goto LABEL_678;
  }

  if (v20 - v26 >= 5)
  {
    v32 = 5;
  }

  else
  {
    v32 = v20 - v26;
  }

  p_p = __p;
LABEL_86:
  v38 = memcmp(p_p + v26, &__dst, v32);
  v27 = v32 == 5 && v38 == 0;
  if ((v24 & 0x80) != 0)
  {
LABEL_57:
    operator delete(__p);
  }

LABEL_58:
  if ((v22 & 0x80000000) == 0)
  {
    if (v27)
    {
      goto LABEL_60;
    }

LABEL_74:
    v34 = *(v6 + 120);
    v35 = *(a1 + 24);
    v224[0] = v34;
    (*(*v35 + 368))(&v221);
    v36 = a1 + 160;
    if (v222)
    {
      v37 = (*(*v222 + 16))(v222);
      if (v34)
      {
        std::istream::seekg();
      }

      if (v18 > 2)
      {
        if (v18 == 3)
        {
          sub_2714DB1E0(v236, *(v37 + *(*v37 - 24) + 40), 0);
          sub_27181A058(v236);
        }

        if (v18 != 4)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v18 == 1)
        {
          *&__p = 1;
          sub_271840E38(&__dst, &__p, v37, 10240);
        }

        if (v18 != 2)
        {
          goto LABEL_80;
        }
      }

      LOBYTE(v210) = 0;
      BYTE8(v211) = 0;
      LOBYTE(v196[0]) = 0;
      v197 = 0;
      sub_2714D67F4(&__dst, v37, &v210, v196);
      v192 = &__dst;
      v193 = v36;
      LOBYTE(__p) = 0;
      LOBYTE(v260[14]) = 0;
      v190[0] = &unk_288116A38;
      v190[1] = &__p;
      v190[2] = &v192;
      sub_27184A384(v190, v236);
      if (v246 == 1)
      {
        v235 = v260[13];
        if (LOBYTE(v260[13]) == 1)
        {
          v225[0] = __p;
        }

        else
        {
          *v225 = __p;
          v225[16] = 0;
          v234 = 0;
          if (LOBYTE(v260[12]) == 1)
          {
            v227 = 0;
            if (LOBYTE(v260[3]) == 1)
            {
              *&v225[16] = *v260;
              v226 = v260[2];
              memset(v260, 0, 24);
              v227 = 1;
            }

            LOBYTE(v228) = 0;
            v233 = 0;
            if (LOBYTE(v260[11]) == 1)
            {
              v229 = v260[6];
              v228 = *&v260[4];
              memset(&v260[4], 0, 24);
              v231 = *&v260[8];
              v230 = v260[7];
              v232 = v260[10];
              memset(&v260[8], 0, 24);
              v233 = 1;
            }

            v234 = 1;
          }
        }

        goto LABEL_341;
      }

      v155 = *v236;
      LOBYTE(v156) = 0;
      v165 = 0;
      if (v245 == 1)
      {
        sub_27112F6CC(&v156, &v236[16]);
        v165 = 1;
        *v225 = v155;
        v225[16] = 0;
        v227 = 0;
        if (v158 == 1)
        {
          *&v225[16] = v156;
          v226 = v157;
          v157 = 0;
          v156 = 0uLL;
          v227 = 1;
          LOBYTE(v228) = 0;
          v233 = 0;
          if ((v164 & 1) == 0)
          {
            goto LABEL_158;
          }
        }

        else
        {
          LOBYTE(v228) = 0;
          v233 = 0;
          if ((v164 & 1) == 0)
          {
LABEL_158:
            v234 = 1;
            v235 = 0;
            if (!v158)
            {
              goto LABEL_331;
            }

LABEL_329:
            if (SHIBYTE(v157) < 0)
            {
              operator delete(v156);
            }

            goto LABEL_331;
          }
        }

        v229 = v160;
        v228 = v159;
        v159 = 0uLL;
        v231 = v162;
        v230 = v161;
        v232 = v163;
        v160 = 0;
        v162 = 0uLL;
        v163 = 0;
        v233 = 1;
        v234 = 1;
        v235 = 0;
        if (v158)
        {
          goto LABEL_329;
        }
      }

      else
      {
        *v225 = *v236;
        v225[16] = 0;
        v234 = 0;
        v235 = 0;
      }

LABEL_331:
      if ((v246 & 1) == 0 && v245 == 1)
      {
        if (v244 == 1)
        {
          if (SHIBYTE(v243) < 0)
          {
            operator delete(v242);
          }

          if (SHIBYTE(v240) < 0)
          {
            operator delete(v239);
          }
        }

        if (v238 == 1 && SHIBYTE(v237) < 0)
        {
          operator delete(*&v236[16]);
        }
      }

LABEL_341:
      if (LOBYTE(v260[14]) == 1 && (v260[13] & 1) == 0 && LOBYTE(v260[12]) == 1)
      {
        if (LOBYTE(v260[11]) == 1)
        {
          if (SHIBYTE(v260[10]) < 0)
          {
            operator delete(v260[8]);
          }

          if (SHIBYTE(v260[6]) < 0)
          {
            operator delete(v260[4]);
          }
        }

        if (LOBYTE(v260[3]) == 1 && SHIBYTE(v260[2]) < 0)
        {
          operator delete(v260[0]);
        }
      }

      if (v235 == 1)
      {
        if (v225[0] == 1)
        {
          v209 = v225[0];
          goto LABEL_367;
        }

        sub_27183DFEC(&__dst, &__p);
      }

      else
      {
        sub_27183DDF8(v225, &__p);
      }

      v198 = __p;
      LOBYTE(v199) = 0;
      v208 = 0;
      if (LOBYTE(v260[12]) != 1)
      {
        v209 = 0;
        goto LABEL_367;
      }

      v201 = 0;
      if (LOBYTE(v260[3]) == 1)
      {
        v199 = *v260;
        v200 = v260[2];
        memset(v260, 0, 24);
        v201 = 1;
        LOBYTE(v202) = 0;
        v207 = 0;
        if ((v260[11] & 1) == 0)
        {
          goto LABEL_360;
        }
      }

      else
      {
        LOBYTE(v202) = 0;
        v207 = 0;
        if ((v260[11] & 1) == 0)
        {
LABEL_360:
          v208 = 1;
          v209 = 0;
          if (!LOBYTE(v260[3]))
          {
            goto LABEL_367;
          }

LABEL_365:
          if (SHIBYTE(v260[2]) < 0)
          {
            operator delete(v260[0]);
          }

LABEL_367:
          if ((v235 & 1) == 0 && v234 == 1)
          {
            if (v233 == 1)
            {
              if (SHIBYTE(v232) < 0)
              {
                operator delete(v231);
              }

              if (SHIBYTE(v229) < 0)
              {
                operator delete(v228);
              }
            }

            if (v227 == 1 && SHIBYTE(v226) < 0)
            {
              operator delete(*&v225[16]);
            }
          }

          if ((v209 & 1) == 0)
          {
            sub_271847E00(&v198, &v155);
            sub_2714D98B4(v225, &v168, v224, &v155);
          }

          sub_27183D4A0(&__dst);
          v189 = 1;
          v63 = v223;
          if (!v223)
          {
            goto LABEL_472;
          }

          goto LABEL_471;
        }
      }

      v203 = v260[6];
      v202 = *&v260[4];
      memset(&v260[4], 0, 24);
      v205 = *&v260[8];
      v204 = v260[7];
      v206 = v260[10];
      memset(&v260[8], 0, 24);
      v207 = 1;
      v208 = 1;
      v209 = 0;
      if (!LOBYTE(v260[3]))
      {
        goto LABEL_367;
      }

      goto LABEL_365;
    }

    if (SHIBYTE(v168.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(v236, v168.__pn_.__r_.__value_.__l.__data_, v168.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      *v236 = v168;
    }

    v58 = std::string::insert(v236, 0, "Failed to open file for reading: ", 0x21uLL);
    v60 = v58->__r_.__value_.__r.__words[0];
    size = v58->__r_.__value_.__l.__size_;
    *v225 = v58->__r_.__value_.__r.__words[2];
    *&v225[3] = *(&v58->__r_.__value_.__r.__words[2] + 3);
    v61 = SHIBYTE(v58->__r_.__value_.__r.__words[2]);
    v58->__r_.__value_.__l.__size_ = 0;
    v58->__r_.__value_.__r.__words[2] = 0;
    v58->__r_.__value_.__r.__words[0] = 0;
    if (v61 < 0)
    {
      sub_271127178(&__p, v60, size);
    }

    else
    {
      *&__p = v60;
      *(&__p + 1) = size;
      LODWORD(v260[0]) = *v225;
      *(v260 + 3) = *&v225[3];
      HIBYTE(v260[0]) = v61;
    }

    LOBYTE(v260[1]) = 1;
    LOBYTE(v260[2]) = 0;
    LOBYTE(v260[9]) = 0;
    LOBYTE(v260[10]) = 1;
    sub_27139F524(2, &__p, &__dst);
    *v179 = __dst;
    v179[16] = 0;
    v188 = 0;
    if (v257 != 1)
    {
      v189 = 0;
      goto LABEL_240;
    }

    v181 = 0;
    if (v250 == 1)
    {
      *&v179[16] = *v249;
      v180 = v249[2];
      memset(v249, 0, sizeof(v249));
      v181 = 1;
      LOBYTE(v182) = 0;
      v187 = 0;
      if ((v256 & 1) == 0)
      {
        goto LABEL_233;
      }
    }

    else
    {
      LOBYTE(v182) = 0;
      v187 = 0;
      if ((v256 & 1) == 0)
      {
LABEL_233:
        v188 = 1;
        v189 = 0;
        if (!v250)
        {
          goto LABEL_240;
        }

        goto LABEL_238;
      }
    }

    v183 = v252;
    v182 = v251;
    v251 = 0uLL;
    v185 = v254;
    v184 = v253;
    v186 = v255;
    v252 = 0;
    v254 = 0uLL;
    v255 = 0;
    v187 = 1;
    v188 = 1;
    v189 = 0;
    if (!v250)
    {
      goto LABEL_240;
    }

LABEL_238:
    if (SHIBYTE(v249[2]) < 0)
    {
      operator delete(v249[0]);
    }

LABEL_240:
    if (LOBYTE(v260[10]) == 1)
    {
      if (LOBYTE(v260[9]) == 1)
      {
        if (SHIBYTE(v260[8]) < 0)
        {
          operator delete(v260[6]);
        }

        if (SHIBYTE(v260[4]) < 0)
        {
          operator delete(v260[2]);
        }
      }

      if (LOBYTE(v260[1]) == 1 && SHIBYTE(v260[0]) < 0)
      {
        operator delete(__p);
      }
    }

    if (v61 < 0)
    {
      operator delete(v60);
      if ((v236[23] & 0x80000000) == 0)
      {
LABEL_251:
        v63 = v223;
        if (!v223)
        {
          goto LABEL_472;
        }

LABEL_471:
        if (!atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v63->__on_zero_shared)(v63);
          std::__shared_weak_count::__release_weak(v63);
          if (v189)
          {
LABEL_473:
            sub_27139AAF0(v36, v225);
            v87 = *&v225[8];
            if (*&v225[16])
            {
              atomic_fetch_add_explicit((*&v225[16] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add((*(&v87 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (*(**(&v87 + 1) + 16))(*(&v87 + 1));
                std::__shared_weak_count::__release_weak(*(&v87 + 1));
              }
            }

            if (!v87)
            {
              *&v236[24] = 0;
              *&__p = v236;
              *(&__p + 1) = "Failed to load sequence entry ";
              v260[0] = v236;
              v260[1] = "Failed to load sequence entry ";
              v260[2] = "Failed to load sequence entry ";
              *v179 = &__p;
              sub_2711FE8BC(v179);
              sub_2714DDDF0(v236, v6);
            }

            if (*(v6 + 63) < 0)
            {
              sub_271127178(v123, *(v6 + 40), *(v6 + 48));
            }

            else
            {
              v88 = *v116;
              v124 = *(v6 + 56);
              *v123 = v88;
            }

            LOBYTE(v120[0]) = 0;
            v122 = 0;
            if (*(v6 + 88) == 1)
            {
              if (*(v6 + 87) < 0)
              {
                sub_271127178(v120, *(v6 + 64), *(v6 + 72));
              }

              else
              {
                v89 = *(v6 + 64);
                v121 = *(v6 + 80);
                *v120 = v89;
              }

              v122 = 1;
              __dst = *v123;
              v90 = v124;
              v123[0] = 0;
              v123[1] = 0;
              v124 = 0;
              *&v249[1] = *v120;
              v249[0] = v90;
              v250 = v121;
              v120[0] = 0;
              v120[1] = 0;
              v121 = 0;
              LOBYTE(v251) = 1;
            }

            else
            {
              __dst = *v123;
              v249[0] = v124;
              v123[1] = 0;
              v124 = 0;
              v123[0] = 0;
              LOBYTE(v249[1]) = 0;
              LOBYTE(v251) = 0;
            }

            v91 = SHIBYTE(v249[0]);
            v92 = &__dst;
            if (SHIBYTE(v249[0]) < 0)
            {
              v92 = __dst;
            }

            if (SHIBYTE(v249[0]) < 0)
            {
              v91 = *(&__dst + 1);
            }

            if (!v91)
            {
              goto LABEL_554;
            }

            v93 = v92;
            if (v91 < 8)
            {
LABEL_588:
              v105 = (v92 + v91);
              do
              {
                if (*v93 == 58)
                {
                  *v93 = 95;
                }

                v93 = (v93 + 1);
              }

              while (v93 != v105);
              goto LABEL_554;
            }

            if (v91 < 0x10)
            {
              v94 = 0;
              goto LABEL_497;
            }

            v94 = v91 & 0xFFFFFFFFFFFFFFF0;
            v98 = v92 + 7;
            v99.i64[0] = 0x3A3A3A3A3A3A3A3ALL;
            v99.i64[1] = 0x3A3A3A3A3A3A3A3ALL;
            v100 = v91 & 0xFFFFFFFFFFFFFFF0;
            while (1)
            {
              v101 = vceqq_s8(*(v98 - 7), v99);
              if (v101.i8[0])
              {
                *(v98 - 7) = 95;
                if ((v101.i8[1] & 1) == 0)
                {
                  goto LABEL_522;
                }
              }

              else if ((v101.i8[1] & 1) == 0)
              {
LABEL_522:
                if (v101.i8[2])
                {
                  goto LABEL_523;
                }

                goto LABEL_539;
              }

              *(v98 - 6) = 95;
              if (v101.i8[2])
              {
LABEL_523:
                *(v98 - 5) = 95;
                if ((v101.i8[3] & 1) == 0)
                {
                  goto LABEL_524;
                }

                goto LABEL_540;
              }

LABEL_539:
              if ((v101.i8[3] & 1) == 0)
              {
LABEL_524:
                if (v101.i8[4])
                {
                  goto LABEL_525;
                }

                goto LABEL_541;
              }

LABEL_540:
              *(v98 - 4) = 95;
              if (v101.i8[4])
              {
LABEL_525:
                *(v98 - 3) = 95;
                if ((v101.i8[5] & 1) == 0)
                {
                  goto LABEL_526;
                }

                goto LABEL_542;
              }

LABEL_541:
              if ((v101.i8[5] & 1) == 0)
              {
LABEL_526:
                if (v101.i8[6])
                {
                  goto LABEL_527;
                }

                goto LABEL_543;
              }

LABEL_542:
              *(v98 - 2) = 95;
              if (v101.i8[6])
              {
LABEL_527:
                *(v98 - 1) = 95;
                if ((v101.i8[7] & 1) == 0)
                {
                  goto LABEL_528;
                }

                goto LABEL_544;
              }

LABEL_543:
              if ((v101.i8[7] & 1) == 0)
              {
LABEL_528:
                if (v101.i8[8])
                {
                  goto LABEL_529;
                }

                goto LABEL_545;
              }

LABEL_544:
              *v98 = 95;
              if (v101.i8[8])
              {
LABEL_529:
                v98[1] = 95;
                if ((v101.i8[9] & 1) == 0)
                {
                  goto LABEL_530;
                }

                goto LABEL_546;
              }

LABEL_545:
              if ((v101.i8[9] & 1) == 0)
              {
LABEL_530:
                if (v101.i8[10])
                {
                  goto LABEL_531;
                }

                goto LABEL_547;
              }

LABEL_546:
              v98[2] = 95;
              if (v101.i8[10])
              {
LABEL_531:
                v98[3] = 95;
                if ((v101.i8[11] & 1) == 0)
                {
                  goto LABEL_532;
                }

                goto LABEL_548;
              }

LABEL_547:
              if ((v101.i8[11] & 1) == 0)
              {
LABEL_532:
                if (v101.i8[12])
                {
                  goto LABEL_533;
                }

                goto LABEL_549;
              }

LABEL_548:
              v98[4] = 95;
              if (v101.i8[12])
              {
LABEL_533:
                v98[5] = 95;
                if ((v101.i8[13] & 1) == 0)
                {
                  goto LABEL_534;
                }

                goto LABEL_550;
              }

LABEL_549:
              if ((v101.i8[13] & 1) == 0)
              {
LABEL_534:
                if (v101.i8[14])
                {
                  goto LABEL_535;
                }

                goto LABEL_551;
              }

LABEL_550:
              v98[6] = 95;
              if (v101.i8[14])
              {
LABEL_535:
                v98[7] = 95;
                if (v101.i8[15])
                {
                  goto LABEL_552;
                }

                goto LABEL_519;
              }

LABEL_551:
              if (v101.i8[15])
              {
LABEL_552:
                v98[8] = 95;
              }

LABEL_519:
              v98 += 16;
              v100 -= 16;
              if (!v100)
              {
                if (v91 == v94)
                {
                  goto LABEL_554;
                }

                if ((v91 & 8) == 0)
                {
                  v93 = (v92 + v94);
                  goto LABEL_588;
                }

LABEL_497:
                v93 = (v92 + (v91 & 0xFFFFFFFFFFFFFFF8));
                v95 = v94 - (v91 & 0xFFFFFFFFFFFFFFF8);
                v96 = v92 + v94 + 3;
                while (2)
                {
                  v97 = vceq_s8(*(v96 - 3), 0x3A3A3A3A3A3A3A3ALL);
                  if (v97.i8[0])
                  {
                    *(v96 - 3) = 95;
                    if ((v97.i8[1] & 1) == 0)
                    {
                      goto LABEL_501;
                    }

LABEL_509:
                    *(v96 - 2) = 95;
                    if ((v97.i8[2] & 1) == 0)
                    {
                      goto LABEL_510;
                    }

LABEL_502:
                    *(v96 - 1) = 95;
                    if ((v97.i8[3] & 1) == 0)
                    {
                      goto LABEL_503;
                    }

LABEL_511:
                    *v96 = 95;
                    if ((v97.i8[4] & 1) == 0)
                    {
                      goto LABEL_512;
                    }

LABEL_504:
                    v96[1] = 95;
                    if ((v97.i8[5] & 1) == 0)
                    {
                      goto LABEL_505;
                    }

LABEL_513:
                    v96[2] = 95;
                    if ((v97.i8[6] & 1) == 0)
                    {
                      goto LABEL_514;
                    }

LABEL_506:
                    v96[3] = 95;
                    if (v97.i8[7])
                    {
                      goto LABEL_515;
                    }
                  }

                  else
                  {
                    if (v97.i8[1])
                    {
                      goto LABEL_509;
                    }

LABEL_501:
                    if (v97.i8[2])
                    {
                      goto LABEL_502;
                    }

LABEL_510:
                    if (v97.i8[3])
                    {
                      goto LABEL_511;
                    }

LABEL_503:
                    if (v97.i8[4])
                    {
                      goto LABEL_504;
                    }

LABEL_512:
                    if (v97.i8[5])
                    {
                      goto LABEL_513;
                    }

LABEL_505:
                    if (v97.i8[6])
                    {
                      goto LABEL_506;
                    }

LABEL_514:
                    if (v97.i8[7])
                    {
LABEL_515:
                      v96[4] = 95;
                    }
                  }

                  v96 += 8;
                  v95 += 8;
                  if (!v95)
                  {
                    if (v91 != (v91 & 0xFFFFFFFFFFFFFFF8))
                    {
                      goto LABEL_588;
                    }

LABEL_554:
                    v118 = off_28810C940;
                    v119 = *&v225[8];
                    *&v225[8] = 0uLL;
                    sub_271390BA0(&__p, &__dst, &v118);
                  }

                  continue;
                }
              }
            }
          }

LABEL_480:
          *&v225[24] = 0;
          *v236 = v225;
          *&v236[8] = "while loading sequence entry ";
          *&v236[16] = v225;
          *&v236[24] = "while loading sequence entry ";
          v237 = "while loading sequence entry ";
          *&v155 = v236;
          sub_2712390A4(&v155);
          sub_2714DDDF0(v225, v6);
        }

LABEL_472:
        if (v189)
        {
          goto LABEL_473;
        }

        goto LABEL_480;
      }
    }

    else if ((v236[23] & 0x80000000) == 0)
    {
      goto LABEL_251;
    }

    operator delete(*v236);
    v63 = v223;
    if (!v223)
    {
      goto LABEL_472;
    }

    goto LABEL_471;
  }

  operator delete(v21);
  if (!v27)
  {
    goto LABEL_74;
  }

LABEL_60:
  LOBYTE(__p) = 0;
  memset(v260 + 7, 0, 112);
  memset(&v260[14] + 7, 0, 32);
  memset(&v260[18] + 7, 0, 32);
  *&v260[22] = 0u;
  v28 = *(v6 + 120);
  v29 = *(a1 + 24);
  v195 = v28;
  v30 = v117;
  (*(*v29 + 368))(&v192);
  if (!v193)
  {
    if (SHIBYTE(v168.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(v225, v168.__pn_.__r_.__value_.__l.__data_, v168.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      *v225 = v168;
    }

    v54 = std::string::insert(v225, 0, "Failed to open file for reading: ", 0x21uLL);
    v56 = v54->__r_.__value_.__r.__words[0];
    v55 = v54->__r_.__value_.__l.__size_;
    LODWORD(v198) = v54->__r_.__value_.__r.__words[2];
    *(&v198 + 3) = *(&v54->__r_.__value_.__r.__words[2] + 3);
    v57 = SHIBYTE(v54->__r_.__value_.__r.__words[2]);
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    if (v57 < 0)
    {
      sub_271127178(v236, v56, v55);
    }

    else
    {
      *v236 = v56;
      *&v236[8] = v55;
      *&v236[16] = v198;
      *&v236[19] = *(&v198 + 3);
      v236[23] = v57;
    }

    v236[24] = 1;
    LOBYTE(v237) = 0;
    BYTE8(v242) = 0;
    LOBYTE(v243) = 1;
    sub_27139F524(2, v236, &__dst);
    v155 = __dst;
    LOBYTE(v156) = 0;
    v165 = 0;
    if (v257 != 1)
    {
      v166 = 0;
      goto LABEL_216;
    }

    v158 = 0;
    if (v250 == 1)
    {
      v156 = *v249;
      v157 = v249[2];
      memset(v249, 0, sizeof(v249));
      v158 = 1;
      LOBYTE(v159) = 0;
      v164 = 0;
      if ((v256 & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else
    {
      LOBYTE(v159) = 0;
      v164 = 0;
      if ((v256 & 1) == 0)
      {
LABEL_209:
        v165 = 1;
        v166 = 0;
        if (!v250)
        {
          goto LABEL_216;
        }

        goto LABEL_214;
      }
    }

    v160 = v252;
    v159 = v251;
    v251 = 0uLL;
    v162 = v254;
    v161 = v253;
    v163 = v255;
    v252 = 0;
    v254 = 0uLL;
    v255 = 0;
    v164 = 1;
    v165 = 1;
    v166 = 0;
    if (!v250)
    {
      goto LABEL_216;
    }

LABEL_214:
    if (SHIBYTE(v249[2]) < 0)
    {
      operator delete(v249[0]);
    }

LABEL_216:
    if (v243 == 1)
    {
      if (BYTE8(v242) == 1)
      {
        if (SBYTE7(v242) < 0)
        {
          operator delete(v240);
        }

        if (SBYTE7(v239) < 0)
        {
          operator delete(v237);
        }
      }

      if (v236[24] == 1 && (v236[23] & 0x80000000) != 0)
      {
        operator delete(*v236);
      }
    }

    if (v57 < 0)
    {
      operator delete(v56);
      if ((v225[23] & 0x80000000) == 0)
      {
LABEL_227:
        v62 = v194;
        if (!v194)
        {
          goto LABEL_388;
        }

        goto LABEL_387;
      }
    }

    else if ((v225[23] & 0x80000000) == 0)
    {
      goto LABEL_227;
    }

    operator delete(*v225);
    v62 = v194;
    if (!v194)
    {
      goto LABEL_388;
    }

    goto LABEL_387;
  }

  v31 = (*(*v193 + 16))(v193);
  if (v28)
  {
    std::istream::seekg();
  }

  if (v18 > 2)
  {
    if (v18 == 3)
    {
      sub_2714DB1E0(v236, *(v31 + *(*v31 - 24) + 40), 0);
      sub_27181A058(v236);
    }

    if (v18 == 4)
    {
      goto LABEL_107;
    }

LABEL_80:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIO.cpp", 684, "", 0, "Format cannot be loaded", 0x17uLL, sub_271852CA8);
    abort();
  }

  if (v18 == 1)
  {
    *v236 = 1;
    sub_271840E38(&__dst, v236, v31, 10240);
  }

  if (v18 != 2)
  {
    goto LABEL_80;
  }

LABEL_107:
  LOBYTE(v196[0]) = 0;
  v197 = 0;
  LOBYTE(v190[0]) = 0;
  v191 = 0;
  sub_2714D67F4(&__dst, v31, v196, v190);
  v224[0] = &__dst;
  v224[1] = &__p;
  v236[0] = 0;
  v247 = 0;
  v221 = &unk_288116A10;
  v222 = v236;
  v223 = v224;
  sub_27184A384(&v221, v225);
  if (v235 == 1)
  {
    v209 = v246;
    if (v246 == 1)
    {
      LOBYTE(v198) = v236[0];
    }

    else
    {
      v198 = *v236;
      LOBYTE(v199) = 0;
      v208 = 0;
      if (v245 == 1)
      {
        v201 = 0;
        if (v238 == 1)
        {
          v199 = *&v236[16];
          v200 = v237;
          *&v236[24] = 0;
          v237 = 0;
          *&v236[16] = 0;
          v201 = 1;
        }

        LOBYTE(v202) = 0;
        v207 = 0;
        if (v244 == 1)
        {
          v203 = v240;
          v202 = v239;
          v239 = 0uLL;
          v205 = v242;
          v204 = v241;
          v206 = v243;
          v240 = 0;
          v242 = 0uLL;
          v243 = 0;
          v207 = 1;
        }

        v208 = 1;
      }
    }

    goto LABEL_287;
  }

  v210 = *v225;
  LOBYTE(v211) = 0;
  v220 = 0;
  if (v234 == 1)
  {
    sub_27112F6CC(&v211, &v225[16]);
    v220 = 1;
    v198 = v210;
    LOBYTE(v199) = 0;
    v201 = 0;
    if (v213 == 1)
    {
      v199 = v211;
      v200 = v212;
      v212 = 0;
      v211 = 0uLL;
      v201 = 1;
      LOBYTE(v202) = 0;
      v207 = 0;
      if ((v219 & 1) == 0)
      {
        goto LABEL_153;
      }
    }

    else
    {
      LOBYTE(v202) = 0;
      v207 = 0;
      if ((v219 & 1) == 0)
      {
LABEL_153:
        v208 = 1;
        v209 = 0;
        if (!v213)
        {
          goto LABEL_277;
        }

LABEL_275:
        if (SHIBYTE(v212) < 0)
        {
          operator delete(v211);
        }

        goto LABEL_277;
      }
    }

    v203 = v215;
    v202 = v214;
    v214 = 0uLL;
    v205 = v217;
    v204 = v216;
    v206 = v218;
    v215 = 0;
    v217 = 0uLL;
    v218 = 0;
    v207 = 1;
    v208 = 1;
    v209 = 0;
    if (v213)
    {
      goto LABEL_275;
    }
  }

  else
  {
    v198 = *v225;
    LOBYTE(v199) = 0;
    v208 = 0;
    v209 = 0;
  }

LABEL_277:
  if ((v235 & 1) == 0 && v234 == 1)
  {
    if (v233 == 1)
    {
      if (SHIBYTE(v232) < 0)
      {
        operator delete(v231);
      }

      if (SHIBYTE(v229) < 0)
      {
        operator delete(v228);
      }
    }

    if (v227 == 1 && SHIBYTE(v226) < 0)
    {
      operator delete(*&v225[16]);
    }
  }

LABEL_287:
  if (v247 == 1 && (v246 & 1) == 0 && v245 == 1)
  {
    if (v244 == 1)
    {
      if (SHIBYTE(v243) < 0)
      {
        operator delete(v242);
      }

      if (SHIBYTE(v240) < 0)
      {
        operator delete(v239);
      }
    }

    if (v238 == 1 && SHIBYTE(v237) < 0)
    {
      operator delete(*&v236[16]);
    }
  }

  if (v209 == 1)
  {
    if (v198 == 1)
    {
      v189 = v198;
      goto LABEL_313;
    }

    sub_27183DFEC(&__dst, v236);
  }

  else
  {
    sub_27183DDF8(&v198, v236);
  }

  *v179 = *v236;
  v179[16] = 0;
  v188 = 0;
  if (v245 != 1)
  {
    v189 = 0;
    goto LABEL_313;
  }

  v181 = 0;
  if (v238 == 1)
  {
    *&v179[16] = *&v236[16];
    v180 = v237;
    *&v236[24] = 0;
    v237 = 0;
    *&v236[16] = 0;
    v181 = 1;
    LOBYTE(v182) = 0;
    v187 = 0;
    if ((v244 & 1) == 0)
    {
      goto LABEL_306;
    }

LABEL_310:
    v183 = v240;
    v182 = v239;
    v239 = 0uLL;
    v185 = v242;
    v184 = v241;
    v186 = v243;
    v240 = 0;
    v242 = 0uLL;
    v243 = 0;
    v187 = 1;
    v188 = 1;
    v189 = 0;
    if (!v238)
    {
      goto LABEL_313;
    }

    goto LABEL_311;
  }

  LOBYTE(v182) = 0;
  v187 = 0;
  if (v244)
  {
    goto LABEL_310;
  }

LABEL_306:
  v188 = 1;
  v189 = 0;
  if (!v238)
  {
    goto LABEL_313;
  }

LABEL_311:
  if (SHIBYTE(v237) < 0)
  {
    operator delete(*&v236[16]);
  }

LABEL_313:
  if ((v209 & 1) == 0 && v208 == 1)
  {
    if (v207 == 1)
    {
      if (SHIBYTE(v206) < 0)
      {
        operator delete(v205);
      }

      if (SHIBYTE(v203) < 0)
      {
        operator delete(v202);
      }
    }

    if (v201 == 1 && SHIBYTE(v200) < 0)
    {
      operator delete(v199);
    }
  }

  if ((v189 & 1) == 0)
  {
    sub_271847E00(v179, &v210);
    sub_2714D98B4(&v198, &v168, &v195, &v210);
  }

  sub_27183D4A0(&__dst);
  v166 = 1;
  v62 = v194;
  if (!v194)
  {
LABEL_388:
    if (v166)
    {
      goto LABEL_389;
    }

    goto LABEL_403;
  }

LABEL_387:
  if (atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_388;
  }

  (v62->__on_zero_shared)(v62);
  std::__shared_weak_count::__release_weak(v62);
  if (v166)
  {
LABEL_389:
    v65 = std::__fs::filesystem::path::__parent_path(&v168);
    if (v65.__size_ > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    if (v65.__size_ >= 0x17)
    {
      operator new();
    }

    HIBYTE(v249[0]) = v65.__size_;
    if (v65.__size_)
    {
      memmove(&__dst, v65.__data_, v65.__size_);
    }

    *(&v249[-2] + v65.__size_) = 0;
    v66 = __dst;
    *v236 = v249[0];
    *&v236[3] = *(v249 + 3);
    v67 = SHIBYTE(v260[0]);
    if (SHIBYTE(v260[0]) >= 0)
    {
      v68 = &__p;
    }

    else
    {
      v68 = __p;
    }

    v69 = SHIBYTE(v249[0]);
    __dst = 0uLL;
    v249[0] = 0;
    if (SHIBYTE(v260[0]) < 0)
    {
      v67 = *(&__p + 1);
    }

    sub_271171230(&__dst, v68, &v68[v67]);
    if (v69 < 0)
    {
      sub_271127178(v225, v66, *(&v66 + 1));
    }

    else
    {
      *v225 = v66;
      *&v225[16] = *v236;
      *&v225[19] = *&v236[3];
      v225[23] = v69;
    }

    sub_2714D75A8(v225, &__dst);
    if (SHIBYTE(v249[0]) < 0)
    {
      operator delete(__dst);
    }

    if (v69 < 0)
    {
      operator delete(v66);
    }

    v74 = std::__fs::filesystem::path::__extension(v225);
    if (v74.__size_ > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    if (v74.__size_ >= 0x17)
    {
      operator new();
    }

    HIBYTE(v249[0]) = v74.__size_;
    if (v74.__size_)
    {
      memmove(&__dst, v74.__data_, v74.__size_);
    }

    *(&v249[-2] + v74.__size_) = 0;
    v75 = __dst;
    LODWORD(v196[0]) = v249[0];
    *(v196 + 3) = *(v249 + 3);
    v76 = SHIBYTE(v249[0]);
    *&v199 = 0;
    *&v198 = off_28810C940;
    *(&v198 + 1) = 0;
    v77 = HIBYTE(v177);
    if (v177 < 0)
    {
      v77 = *(&v176 + 1);
    }

    if (v77 == 8)
    {
      v78 = v176;
      if (v177 >= 0)
      {
        v78 = &v176;
      }

      if (*v78 == *"cv3d.viz" && v178 == 1)
      {
        if (SHIBYTE(v249[0]) < 0)
        {
          sub_271127178(&__dst, __dst, *(&__dst + 1));
          v81 = HIBYTE(v249[0]);
          v79 = *(&__dst + 1);
          v80 = __dst;
        }

        else
        {
          LODWORD(v249[0]) = v196[0];
          *(v249 + 3) = *(v196 + 3);
          v79 = *(&__dst + 1);
          v80 = __dst;
          v81 = HIBYTE(v249[0]);
        }

        v72 = v115;
        if ((v81 & 0x80u) == 0)
        {
          v102 = &__dst;
        }

        else
        {
          v102 = v80;
        }

        if ((v81 & 0x80u) == 0)
        {
          v103 = v81;
        }

        else
        {
          v103 = v79;
        }

        v104 = sub_2715E6BF4(v102, v103);
        if (SHIBYTE(v249[0]) < 0)
        {
          operator delete(__dst);
        }

        if ((v104 & 0x100000000) != 0)
        {
          (*(**(a1 + 24) + 368))(v179);
          if (*&v179[8])
          {
            (*(**&v179[8] + 16))(*&v179[8]);
            sub_2713BE068();
          }

          if (SHIBYTE(v168.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_271127178(&v210, v168.__pn_.__r_.__value_.__l.__data_, v168.__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            v210 = *&v168.__pn_.__r_.__value_.__l.__data_;
            *&v211 = *(&v168.__pn_.__r_.__value_.__l + 2);
          }

          sub_2714D199C("Failed to open file for reading: ", &v210, v236);
          if ((v236[23] & 0x80000000) != 0)
          {
            sub_271127178(&v143, *v236, *&v236[8]);
          }

          else
          {
            v143 = *v236;
            v144 = *&v236[16];
          }

          v145 = 1;
          v146 = 0;
          v147 = 0;
          v148 = 1;
          sub_27139F524(2, &v143, &__dst);
          sub_271238E60(a2, &__dst);
          sub_27112D71C(&__dst);
          sub_27112D66C(&v143);
          if ((v236[23] & 0x80000000) != 0)
          {
            operator delete(*v236);
          }

          if (SBYTE7(v211) < 0)
          {
            operator delete(v210);
          }

          sub_2717254C8(v179);
          goto LABEL_630;
        }

        if (v76 < 0)
        {
          sub_271127178(v179, v75, *(&v75 + 1));
        }

        else
        {
          *v179 = v75;
          *&v179[16] = v196[0];
          *&v179[19] = *(v196 + 3);
          v179[23] = v76;
        }

        sub_2714D199C("Unknown image extension: ", v179, v236);
        if ((v236[23] & 0x80000000) != 0)
        {
          sub_271127178(&v149, *v236, *&v236[8]);
        }

        else
        {
          v149 = *v236;
          v150 = *&v236[16];
        }

        v151 = 1;
        v152 = 0;
        v153 = 0;
        v154 = 1;
        sub_27139F524(13, &v149, &__dst);
        sub_271238E60(a2, &__dst);
        sub_27112D71C(&__dst);
        v109 = &v149;
LABEL_617:
        sub_27112D66C(v109);
        if ((v236[23] & 0x80000000) != 0)
        {
          operator delete(*v236);
        }

        if ((v179[23] & 0x80000000) != 0)
        {
          operator delete(*v179);
        }

LABEL_630:
        v110 = v199;
        if (v199 && !atomic_fetch_add((v199 + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v110->__on_zero_shared)(v110);
          std::__shared_weak_count::__release_weak(v110);
        }

        if (v76 < 0)
        {
          operator delete(v75);
        }

        if ((v225[23] & 0x80000000) != 0)
        {
          operator delete(*v225);
        }

        v30 = v117;
        goto LABEL_638;
      }

      if (*v78 == *"cv3d.viz" && v178 == 7)
      {
        if (SHIBYTE(v249[0]) < 0)
        {
          v72 = v115;
          sub_271127178(&__dst, __dst, *(&__dst + 1));
        }

        else
        {
          LODWORD(v249[0]) = v196[0];
          *(v249 + 3) = *(v196 + 3);
          v72 = v115;
        }

        v106 = sub_27171CE28(&__dst);
        if (SHIBYTE(v249[0]) < 0)
        {
          v107 = v106;
          operator delete(__dst);
          v106 = v107;
        }

        if ((v106 & 0x100000000) != 0)
        {
          v108 = sub_27171CBE8(1uLL);
          if ((v225[23] & 0x80000000) != 0)
          {
            sub_271127178(&v135, *v225, *&v225[8]);
          }

          else
          {
            v135 = *v225;
            v136 = *&v225[16];
          }

          sub_27171EACC(&v135, 0, v108, *(a1 + 24), &__dst);
          if (SHIBYTE(v136) < 0)
          {
            operator delete(v135);
          }

          if (v258)
          {
            sub_2713A3334(&v260[2], v236);
            sub_2714DC240(v179, &__dst, v236);
          }

          sub_27112B400(v179, "Failed to load mesh ");
          sub_2714D1A80(&__dst);
          sub_271849FC4(v179, &__dst, v236);
          sub_27139601C(v236);
        }

        if (v76 < 0)
        {
          sub_271127178(v179, v75, *(&v75 + 1));
        }

        else
        {
          *v179 = v75;
          *&v179[16] = v196[0];
          *&v179[19] = *(v196 + 3);
          v179[23] = v76;
        }

        sub_2714D199C("Unknown mesh extension: ", v179, v236);
        if ((v236[23] & 0x80000000) != 0)
        {
          sub_271127178(&v137, *v236, *&v236[8]);
        }

        else
        {
          v137 = *v236;
          v138 = *&v236[16];
        }

        v139 = 1;
        v140 = 0;
        v141 = 0;
        v142 = 1;
        sub_27139F524(13, &v137, &__dst);
        sub_271238E60(a2, &__dst);
        sub_27112D71C(&__dst);
        v109 = &v137;
        goto LABEL_617;
      }
    }

    if (SHIBYTE(v168.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(v236, v168.__pn_.__r_.__value_.__l.__data_, v168.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      *v236 = v168;
    }

    v82 = std::string::insert(v236, 0, "Unexpected info file ", 0x15uLL);
    v84 = v82->__r_.__value_.__r.__words[0];
    v83 = v82->__r_.__value_.__l.__size_;
    *v179 = v82->__r_.__value_.__r.__words[2];
    *&v179[3] = *(&v82->__r_.__value_.__r.__words[2] + 3);
    v85 = SHIBYTE(v82->__r_.__value_.__r.__words[2]);
    v82->__r_.__value_.__l.__size_ = 0;
    v82->__r_.__value_.__r.__words[2] = 0;
    v82->__r_.__value_.__r.__words[0] = 0;
    if (v85 < 0)
    {
      sub_271127178(v125, v84, v83);
    }

    else
    {
      v125[0] = v84;
      v125[1] = v83;
      *v126 = *v179;
      *&v126[3] = *&v179[3];
      v127 = v85;
    }

    v128 = 1;
    LOBYTE(v129) = 0;
    v133 = 0;
    v134 = 1;
    sub_27139F524(13, v125, &__dst);
    *a2 = __dst;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    if (v257 == 1)
    {
      *(a2 + 40) = 0;
      v72 = v115;
      if (v250 == 1)
      {
        *(a2 + 16) = *v249;
        *(a2 + 32) = v249[2];
        memset(v249, 0, sizeof(v249));
        *(a2 + 40) = 1;
      }

      *(a2 + 48) = 0;
      *(a2 + 104) = 0;
      if ((v256 & 1) == 0)
      {
        *(a2 + 112) = 1;
        *(a2 + 120) = 0;
        if (v250 != 1)
        {
          goto LABEL_573;
        }

        goto LABEL_571;
      }

      v86 = v253;
      *(a2 + 64) = v252;
      *(a2 + 48) = v251;
      v251 = 0uLL;
      *(a2 + 72) = v86;
      *(a2 + 80) = v254;
      *(a2 + 96) = v255;
      v255 = 0;
      v252 = 0;
      v254 = 0uLL;
      *(a2 + 104) = 1;
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      if (SHIBYTE(v255) < 0)
      {
        operator delete(v254);
        if ((SHIBYTE(v252) & 0x80000000) == 0)
        {
LABEL_466:
          if (v250 != 1)
          {
            goto LABEL_573;
          }

LABEL_571:
          if (SHIBYTE(v249[2]) < 0)
          {
            operator delete(v249[0]);
          }

          goto LABEL_573;
        }
      }

      else if ((SHIBYTE(v252) & 0x80000000) == 0)
      {
        goto LABEL_466;
      }

      operator delete(v251);
      if (v250 == 1)
      {
        goto LABEL_571;
      }
    }

    else
    {
      *(a2 + 120) = 0;
      v72 = v115;
    }

LABEL_573:
    if (v134 == 1)
    {
      if (v133 == 1)
      {
        if (v132 < 0)
        {
          operator delete(v131);
        }

        if (v130 < 0)
        {
          operator delete(v129);
        }
      }

      if (v128 == 1 && v127 < 0)
      {
        operator delete(v125[0]);
      }
    }

    if (v85 < 0)
    {
      operator delete(v84);
    }

    if ((v236[23] & 0x80000000) != 0)
    {
      operator delete(*v236);
    }

    goto LABEL_630;
  }

LABEL_403:
  DWORD2(v199) = 0;
  *v225 = &v198;
  *&v225[8] = "while loading sequence entry ";
  *&v225[16] = &v198;
  *&v225[24] = "while loading sequence entry ";
  v226 = "while loading sequence entry ";
  *v179 = v225;
  sub_2712390A4(v179);
  std::to_string(v179, *(a1 + 280));
  *v225 = &v198;
  *&v225[8] = v179;
  *&v225[16] = &v198;
  *&v225[24] = v179;
  v226 = v179;
  if (DWORD2(v199) == -1)
  {
    sub_2711308D4();
  }

  v196[0] = v225;
  (off_288132530[DWORD2(v199)])(v196, &v198);
  if ((v179[23] & 0x80000000) != 0)
  {
    operator delete(*v179);
  }

  if (DWORD2(v199) == -1)
  {
    sub_2711308D4();
  }

  *v225 = v179;
  (off_288132410[DWORD2(v199)])(&v210, v225, &v198);
  if (DWORD2(v199) != -1)
  {
    (off_2881323F8[DWORD2(v199)])(v225, &v198);
  }

  sub_2712B2E88(&v155, &v210, v236);
  __dst = *v236;
  LOBYTE(v249[0]) = 0;
  LOBYTE(v257) = 0;
  if (v245 == 1)
  {
    sub_27112F6CC(v249, &v236[16]);
    LOBYTE(v257) = 1;
    *a2 = __dst;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    v70 = v250;
    if (v250 == 1)
    {
      *(a2 + 16) = *v249;
      *(a2 + 32) = v249[2];
      memset(v249, 0, sizeof(v249));
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      v71 = a2 + 48;
      *(a2 + 104) = 0;
      v72 = v115;
      if ((v256 & 1) == 0)
      {
        goto LABEL_412;
      }
    }

    else
    {
      *(a2 + 48) = 0;
      v71 = a2 + 48;
      *(a2 + 104) = 0;
      v72 = v115;
      if ((v256 & 1) == 0)
      {
LABEL_412:
        *(a2 + 112) = 1;
        *(a2 + 120) = 0;
        if (!v70)
        {
          goto LABEL_419;
        }

LABEL_417:
        if (SHIBYTE(v249[2]) < 0)
        {
          operator delete(v249[0]);
        }

        goto LABEL_419;
      }
    }

    v73 = v253;
    *(v71 + 16) = v252;
    *v71 = v251;
    v251 = 0uLL;
    *(a2 + 72) = v73;
    *(a2 + 80) = v254;
    *(a2 + 96) = v255;
    v252 = 0;
    v254 = 0uLL;
    v255 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (v70)
    {
      goto LABEL_417;
    }
  }

  else
  {
    *a2 = *v236;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    v72 = v115;
  }

LABEL_419:
  if (v245 == 1)
  {
    if (v244 == 1)
    {
      if (SHIBYTE(v243) < 0)
      {
        operator delete(v242);
      }

      if (SHIBYTE(v240) < 0)
      {
        operator delete(v239);
      }
    }

    if (v238 == 1 && SHIBYTE(v237) < 0)
    {
      operator delete(*&v236[16]);
    }
  }

  if (SBYTE7(v211) < 0)
  {
    operator delete(v210);
  }

LABEL_638:
  if ((v166 & 1) == 0 && v165 == 1)
  {
    if (v164 == 1)
    {
      if (SHIBYTE(v163) < 0)
      {
        operator delete(v162);
      }

      if (SHIBYTE(v160) < 0)
      {
        operator delete(v159);
      }
    }

    if (v158 == 1 && SHIBYTE(v157) < 0)
    {
      operator delete(v156);
    }
  }

  if (LOBYTE(v260[23]) == 1)
  {
    v111 = v260[20];
    if (v260[20])
    {
      v112 = v260[21];
      v113 = v260[20];
      if (v260[21] != v260[20])
      {
        do
        {
          v114 = *(v112 - 1);
          v112 -= 3;
          if (v114 < 0)
          {
            operator delete(*v112);
          }
        }

        while (v112 != v111);
        v113 = v260[20];
      }

      v260[21] = v111;
      operator delete(v113);
    }
  }

  if (LOBYTE(v260[19]) == 1 && SHIBYTE(v260[18]) < 0)
  {
    operator delete(v260[16]);
  }

  if (LOBYTE(v260[15]) == 1 && SHIBYTE(v260[14]) < 0)
  {
    operator delete(v260[12]);
  }

  if (LOBYTE(v260[8]) == 1 && SHIBYTE(v260[7]) < 0)
  {
    operator delete(v260[5]);
  }

  if (SHIBYTE(v260[0]) < 0)
  {
    operator delete(__p);
    if ((v72 & 0x80000000) == 0)
    {
LABEL_668:
      if ((SHIBYTE(v168.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_669;
      }

      goto LABEL_674;
    }
  }

  else if ((v72 & 0x80000000) == 0)
  {
    goto LABEL_668;
  }

  operator delete(v30);
  if ((SHIBYTE(v168.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_669:
    if ((SHIBYTE(v177) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_670;
  }

LABEL_674:
  operator delete(v168.__pn_.__r_.__value_.__l.__data_);
  if (SHIBYTE(v177) < 0)
  {
LABEL_670:
    operator delete(v176);
  }
}

void sub_2714D122C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, void *a12)
{
  sub_27112D71C(&STACK[0x680]);
  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  sub_2714D1AD8(&STACK[0x750]);
  sub_2714FBE4C(&STACK[0x4E0]);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(STACK[0x600]);
  }

  sub_27112E024(&STACK[0x2E0]);
  sub_2714D7700(&STACK[0x8E0]);
  if (a10 < 0)
  {
    operator delete(a12);
    if ((SLOBYTE(STACK[0x387]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((SLOBYTE(STACK[0x387]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x3F7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  operator delete(STACK[0x370]);
  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x3E0]);
    _Unwind_Resume(a1);
  }

LABEL_13:
  _Unwind_Resume(a1);
}

__n128 sub_2714D199C@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_2714D19FC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(result + 16);
  *(result + 8) = v2;
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

uint64_t sub_2714D1A80(uint64_t result)
{
  if (*(result + 384))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_288108EC0;
    __cxa_throw(exception, &unk_28811C2D8, std::exception::~exception);
  }

  return result;
}

uint64_t *sub_2714D1AD8(uint64_t *result)
{
  if (*(result + 384) == 1)
  {
    return sub_271359728(result);
  }

  if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v1 = result;
        operator delete(result[10]);
        result = v1;
      }

      if (*(result + 71) < 0)
      {
        v2 = result;
        operator delete(result[6]);
        result = v2;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v3 = result;
      operator delete(result[2]);
      return v3;
    }
  }

  return result;
}

uint64_t sub_2714D1B88(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  *v14 = *(a2 + 8);
  *&v14[7] = *(a2 + 15);
  v3 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(result + 15) = *&v14[7];
  *result = v2;
  *(result + 8) = *v14;
  *(result + 23) = v3;
  *(result + 48) = 0;
  if (v3 >= 0)
  {
    v2 = result;
  }

  if (v3 < 0)
  {
    v3 = *v14;
  }

  if (!v3)
  {
    return result;
  }

  v4 = v2;
  if (v3 < 8)
  {
LABEL_69:
    v13 = (v2 + v3);
    do
    {
      if (*v4 == 58)
      {
        *v4 = 95;
      }

      ++v4;
    }

    while (v4 != v13);
    return result;
  }

  if (v3 < 0x10)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFFF0;
  v9 = (v2 + 7);
  v10.i64[0] = 0x3A3A3A3A3A3A3A3ALL;
  v10.i64[1] = 0x3A3A3A3A3A3A3A3ALL;
  v11 = v3 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v12 = vceqq_s8(*(v9 - 7), v10);
    if (v12.i8[0])
    {
      *(v9 - 7) = 95;
      if ((v12.i8[1] & 1) == 0)
      {
LABEL_34:
        if ((v12.i8[2] & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_51;
      }
    }

    else if ((v12.i8[1] & 1) == 0)
    {
      goto LABEL_34;
    }

    *(v9 - 6) = 95;
    if ((v12.i8[2] & 1) == 0)
    {
LABEL_35:
      if ((v12.i8[3] & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_52;
    }

LABEL_51:
    *(v9 - 5) = 95;
    if ((v12.i8[3] & 1) == 0)
    {
LABEL_36:
      if ((v12.i8[4] & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_53;
    }

LABEL_52:
    *(v9 - 4) = 95;
    if ((v12.i8[4] & 1) == 0)
    {
LABEL_37:
      if ((v12.i8[5] & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_54;
    }

LABEL_53:
    *(v9 - 3) = 95;
    if ((v12.i8[5] & 1) == 0)
    {
LABEL_38:
      if ((v12.i8[6] & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_55;
    }

LABEL_54:
    *(v9 - 2) = 95;
    if ((v12.i8[6] & 1) == 0)
    {
LABEL_39:
      if ((v12.i8[7] & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_56;
    }

LABEL_55:
    *(v9 - 1) = 95;
    if ((v12.i8[7] & 1) == 0)
    {
LABEL_40:
      if ((v12.i8[8] & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_57;
    }

LABEL_56:
    *v9 = 95;
    if ((v12.i8[8] & 1) == 0)
    {
LABEL_41:
      if ((v12.i8[9] & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_58;
    }

LABEL_57:
    v9[1] = 95;
    if ((v12.i8[9] & 1) == 0)
    {
LABEL_42:
      if ((v12.i8[10] & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

LABEL_58:
    v9[2] = 95;
    if ((v12.i8[10] & 1) == 0)
    {
LABEL_43:
      if ((v12.i8[11] & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_60;
    }

LABEL_59:
    v9[3] = 95;
    if ((v12.i8[11] & 1) == 0)
    {
LABEL_44:
      if ((v12.i8[12] & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }

LABEL_60:
    v9[4] = 95;
    if ((v12.i8[12] & 1) == 0)
    {
LABEL_45:
      if ((v12.i8[13] & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_62;
    }

LABEL_61:
    v9[5] = 95;
    if ((v12.i8[13] & 1) == 0)
    {
LABEL_46:
      if (v12.i8[14])
      {
        goto LABEL_63;
      }

      goto LABEL_47;
    }

LABEL_62:
    v9[6] = 95;
    if (v12.i8[14])
    {
LABEL_63:
      v9[7] = 95;
      if ((v12.i8[15] & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_64;
    }

LABEL_47:
    if ((v12.i8[15] & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_64:
    v9[8] = 95;
LABEL_31:
    v9 += 16;
    v11 -= 16;
  }

  while (v11);
  if (v3 == v5)
  {
    return result;
  }

  if ((v3 & 8) == 0)
  {
    v4 = (v2 + v5);
    goto LABEL_69;
  }

LABEL_9:
  v4 = (v2 + (v3 & 0xFFFFFFFFFFFFFFF8));
  v6 = v5 - (v3 & 0xFFFFFFFFFFFFFFF8);
  v7 = (v5 + v2 + 3);
  while (2)
  {
    v8 = vceq_s8(*(v7 - 3), 0x3A3A3A3A3A3A3A3ALL);
    if (v8.i8[0])
    {
      *(v7 - 3) = 95;
      if (v8.i8[1])
      {
        goto LABEL_21;
      }

LABEL_13:
      if ((v8.i8[2] & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_22:
      *(v7 - 1) = 95;
      if (v8.i8[3])
      {
        goto LABEL_23;
      }

LABEL_15:
      if ((v8.i8[4] & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_24:
      v7[1] = 95;
      if (v8.i8[5])
      {
        goto LABEL_25;
      }

LABEL_17:
      if ((v8.i8[6] & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_26:
      v7[3] = 95;
      if (v8.i8[7])
      {
LABEL_27:
        v7[4] = 95;
      }
    }

    else
    {
      if ((v8.i8[1] & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_21:
      *(v7 - 2) = 95;
      if (v8.i8[2])
      {
        goto LABEL_22;
      }

LABEL_14:
      if ((v8.i8[3] & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_23:
      *v7 = 95;
      if (v8.i8[4])
      {
        goto LABEL_24;
      }

LABEL_16:
      if ((v8.i8[5] & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_25:
      v7[2] = 95;
      if (v8.i8[6])
      {
        goto LABEL_26;
      }

LABEL_18:
      if (v8.i8[7])
      {
        goto LABEL_27;
      }
    }

    v7 += 8;
    v6 += 8;
    if (v6)
    {
      continue;
    }

    break;
  }

  if (v3 != (v3 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_69;
  }

  return result;
}

void sub_2714D1EBC(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v25 = 12;
  LOBYTE(v26) = 0;
  v37 = 0;
  while (1)
  {
    v5 = *(a1 + 288);
    v6 = *(a1 + 280);
    if (v6 >= 0x86BCA1AF286BCA1BLL * ((*(a1 + 296) - v5) >> 3) && !*(a1 + 256) || *(v5 + 152 * v6) > a2)
    {
      v39 = 0;
      v40 = 0;
      v38 = 0;
      v41.__r_.__value_.__r.__words[0] = &unk_288131488;
      operator new();
    }

    sub_2714CD3E0(a1, &v14);
    if (v24 == 1)
    {
      v7 = v39;
      if (v39 >= v40)
      {
        v8 = sub_271398C6C(&v38, &v14);
      }

      else
      {
        *v39 = v14;
        v14 = 0uLL;
        *(v7 + 2) = off_28810C940;
        *(v7 + 24) = v16;
        v16 = 0uLL;
        v8 = v7 + 40;
      }

      v39 = v8;
      goto LABEL_45;
    }

    if (*(a1 + 128) == 1)
    {
      v9 = *(a1 + 120);
      if (!v9)
      {
        sub_27112AFFC();
      }

      (*(*v9 + 48))(v9, &v14);
      if (v24)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_288108EC0;
        __cxa_throw(exception, &unk_28811C2D8, std::exception::~exception);
      }
    }

    if (v37 == 1)
    {
      if (*(&v14 + 1) != *(&v26 + 1))
      {
        goto LABEL_25;
      }
    }

    else
    {
      *&v26 = v25;
      *(&v26 + 1) = &off_288132220;
      LOBYTE(v27) = 0;
      v36 = 0;
      v37 = 1;
      if (*(&v14 + 1) != &off_288132220)
      {
        goto LABEL_25;
      }
    }

    if (v14 == v26)
    {
      if (v23 != 1 || (v17 & 1) == 0)
      {
        goto LABEL_45;
      }

      sub_271849064(&v26, &v15, v42);
      if ((v37 & 1) == 0)
      {
        v26 = *v42;
        LOBYTE(v27) = 0;
        v36 = 0;
        if (v52 != 1)
        {
          v37 = 1;
          goto LABEL_45;
        }

        v29 = 0;
        if (v45 == 1)
        {
          v27 = v43;
          v28 = v44;
          v44 = 0;
          v43 = 0uLL;
          v29 = 1;
        }

        LOBYTE(v30) = 0;
        v35 = 0;
        if (v51 == 1)
        {
          v30 = v46;
          v31 = v47;
          v47 = 0;
          v46 = 0uLL;
          v32 = v48;
          v33 = __p;
          v34 = v50;
          __p = 0uLL;
          v50 = 0;
          v35 = 1;
          v36 = 1;
          v37 = 1;
          goto LABEL_68;
        }

        v36 = 1;
        v37 = 1;
LABEL_72:
        if (v45 != 1 || (SHIBYTE(v44) & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        v10 = v43;
LABEL_44:
        operator delete(v10);
        goto LABEL_45;
      }

      sub_27112F274(&v26, v42);
      if (v52)
      {
        if (v51)
        {
          if (SHIBYTE(v50) < 0)
          {
            operator delete(__p);
          }

LABEL_68:
          if (SHIBYTE(v47) < 0)
          {
            operator delete(v46);
          }
        }

        goto LABEL_72;
      }

      goto LABEL_45;
    }

LABEL_25:
    sub_271847E00(&v14, &v41);
    sub_271849064(&v26, &v41.__r_.__value_.__l.__data_, v42);
    if (v37)
    {
      sub_27112F274(&v26, v42);
      if ((v52 & 1) == 0)
      {
        goto LABEL_42;
      }

      if ((v51 & 1) == 0)
      {
        goto LABEL_39;
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_35;
    }

    v26 = *v42;
    LOBYTE(v27) = 0;
    v36 = 0;
    if (v52 != 1)
    {
      v37 = 1;
      goto LABEL_42;
    }

    v29 = 0;
    if (v45 == 1)
    {
      v27 = v43;
      v28 = v44;
      v44 = 0;
      v43 = 0uLL;
      v29 = 1;
    }

    LOBYTE(v30) = 0;
    v35 = 0;
    if (v51 == 1)
    {
      v30 = v46;
      v31 = v47;
      v47 = 0;
      v46 = 0uLL;
      v32 = v48;
      v33 = __p;
      v34 = v50;
      __p = 0uLL;
      v50 = 0;
      v35 = 1;
      v36 = 1;
      v37 = 1;
LABEL_35:
      if (SHIBYTE(v47) < 0)
      {
        operator delete(v46);
      }

      goto LABEL_39;
    }

    v36 = 1;
    v37 = 1;
LABEL_39:
    if (v45 == 1 && SHIBYTE(v44) < 0)
    {
      operator delete(v43);
    }

LABEL_42:
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = v41.__r_.__value_.__r.__words[0];
      goto LABEL_44;
    }

LABEL_45:
    if (v24 == 1)
    {
      v11 = *(&v16 + 1);
      if (*(&v16 + 1) && !atomic_fetch_add((*(&v16 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v12 = *(&v14 + 1);
        if (*(&v14 + 1))
        {
          goto LABEL_49;
        }
      }

      else
      {
        v12 = *(&v14 + 1);
        if (*(&v14 + 1))
        {
LABEL_49:
          if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }
        }
      }
    }

    else if (v23 == 1)
    {
      if (v22 == 1)
      {
        if (v21 < 0)
        {
          operator delete(v20);
          if ((v19 & 0x80000000) == 0)
          {
            goto LABEL_55;
          }
        }

        else if ((v19 & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        operator delete(v18);
        if (v17 == 1)
        {
          goto LABEL_56;
        }
      }

      else
      {
LABEL_55:
        if (v17 == 1)
        {
LABEL_56:
          if (SHIBYTE(v16) < 0)
          {
            operator delete(v15);
          }
        }
      }
    }
  }
}

void sub_2714D2A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  sub_27112D66C(va);
  sub_271396440(&a56);
  sub_271398430(&a16);
  sub_27138AE34(&a36);
  sub_271398430(&a53);
  _Unwind_Resume(a1);
}

void sub_2714D2AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a61 < 0)
  {
    operator delete(__p);
  }

  sub_271158CF0(&a19);
  sub_27138AE34(&a36);
  sub_271398430(&a53);
  _Unwind_Resume(a1);
}

void sub_2714D2AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  sub_27138AE34(&a36);
  sub_271398430(&a53);
  _Unwind_Resume(a1);
}

uint64_t sub_2714D2B08(uint64_t a1)
{
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 96));
    if (*(a1 + 88) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 128));
  if (*(a1 + 119) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(a1 + 88) != 1)
  {
LABEL_8:
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    operator delete(*(a1 + 40));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_13;
  }

LABEL_7:
  if ((*(a1 + 87) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*(a1 + 64));
  if (*(a1 + 63) < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_13:
  operator delete(*(a1 + 8));
  return a1;
}

void sub_2714D38D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2714D3AA0(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  *v1 = &unk_28810BFE8;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_2714D78B4(v2);
    MEMORY[0x2743BF050](v4, 0x10F2C4013865076);
    return v3;
  }

  return v1;
}

void sub_2714D3B0C(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_28810BFE8;
  a1[1] = 0;
  if (v1)
  {
    v2 = sub_2714D78B4(v1);
    MEMORY[0x2743BF050](v2, 0x10F2C4013865076);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714D3B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 24);
  if (v9)
  {
    LOBYTE(v18[0]) = 0;
    v19 = 0;
    if (!v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = sub_27139B104(0);
    if (*(a2 + 24) == 1)
    {
      if (v10 == a2)
      {
        LOBYTE(v18[0]) = 0;
        v19 = 0;
      }

      else
      {
        sub_2714D7D18(a2, *v10, v10[1], (v10[1] - *v10) >> 4);
        v11 = *(a2 + 24);
        LOBYTE(v18[0]) = 0;
        v19 = 0;
        if ((v11 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v12 = *v10;
      v13 = v10[1];
      v21 = a2;
      v22 = 0;
      if (v13 != v12)
      {
        if (((v13 - v12) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_271135560();
      }

      *(a2 + 24) = 1;
      v19 = 0;
    }
  }

  memset(v18, 0, sizeof(v18));
  v14 = *a2;
  v15 = *(a2 + 8);
  v21 = v18;
  v22 = 0;
  if (v15 != v14)
  {
    if (((v15 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  v19 = 1;
LABEL_16:
  sub_2711708F8(&v17, a3);
  v23[0] = 0;
  v25 = 0;
  if (*(a4 + 32) == 1)
  {
    v16 = *(a4 + 24);
    if (v16)
    {
      if (v16 == a4)
      {
        v24 = v23;
        (*(*v16 + 24))(v16, v23);
      }

      else
      {
        v24 = *(a4 + 24);
        *(a4 + 24) = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = 1;
  }

  v20 = &unk_28810BFE8;
  sub_2714D2BC0();
}

void sub_2714D40F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714D4148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_2712AF01C(va);
  sub_2712AEC08(&a9);
  sub_2711B08E0(&a17);
  _Unwind_Resume(a1);
}

void sub_2714D416C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2711B08E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714D4180(uint64_t a1)
{
  v2 = a1 + 16;
  v3 = *(a1 + 40);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

uint64_t sub_2714D4280(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881086A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_2714D42C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit3vizlsERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS1_17StoragePreferenceEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit3vizlsERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS1_17StoragePreferenceEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit3vizlsERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS1_17StoragePreferenceEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit3vizlsERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS1_17StoragePreferenceEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_2714D4340(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

BOOL sub_2714D43CC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(*a1 + 24);
  v7 = *(*a2 + 24);
  if (v6 != v7 || v6 == 0)
  {
    if (v6 != v7)
    {
      return 0;
    }

    goto LABEL_22;
  }

  v11 = *v4;
  v10 = v4[1];
  v12 = *v5;
  if (v10 - *v4 != v5[1] - *v5)
  {
    return 0;
  }

  if (v11 == v10)
  {
LABEL_22:
    v19 = *(a1 + 8);
    v20 = *(a2 + 8);
    v21 = *(v19 + 16);
    v22 = *(v20 + 16);
    if (v21 == v22 && v21 != 0)
    {
      v21 = *(v19 + 8);
      v22 = *(v20 + 8);
      if (v21 == v22 && v21 != 0)
      {
        if (*v19 != *v20)
        {
          return 0;
        }

        return **(a1 + 16) == **(a2 + 16);
      }
    }

    if (v21 == v22)
    {
      return **(a1 + 16) == **(a2 + 16);
    }

    return 0;
  }

  v13 = 0;
  while (1)
  {
    v14 = v11 + v13;
    v15 = v12 + v13;
    result = sub_2714F16C0(v11 + v13 + 16, v12 + v13 + 16);
    if (!result)
    {
      return result;
    }

    v16 = *(v14 + 808);
    v17 = *(v15 + 808);
    if (v16 != v17 || v16 == 0)
    {
      if (v16 != v17)
      {
        return 0;
      }
    }

    else if (*(v11 + v13 + 800) | *(v12 + v13 + 800) || *(v14 + 768) != *(v15 + 768))
    {
      return 0;
    }

    v13 += 816;
    if (v11 + v13 == v10)
    {
      goto LABEL_22;
    }
  }
}

uint64_t sub_2714D455C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_2881323C8[v2])(&v4, a1);
  }

  *(a1 + 32) = -1;
  return a1;
}

void sub_2714D45B8(char *__p)
{
  do
  {
    while (1)
    {
      v2 = *__p;
      v3 = *(__p + 6);
      if (v3)
      {
        if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v3->__on_zero_shared)(v3);
          std::__shared_weak_count::__release_weak(v3);
        }
      }

      if (__p[39] < 0)
      {
        break;
      }

      operator delete(__p);
      __p = v2;
      if (!v2)
      {
        return;
      }
    }

    operator delete(*(__p + 2));
    operator delete(__p);
    __p = v2;
  }

  while (v2);
}

void *sub_2714D4680(uint64_t a1)
{
  v2 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v3 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v3, &v6, 1);
  }

  v4 = *(a1 + 24);
  v7 = v2;
  result = sub_271120E64(v4, &v7, 1);
  ++*(a1 + 40);
  return result;
}

uint64_t sub_2714D46EC(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v4, &v6, 1);
  }

  result = MEMORY[0x2743BE7B0](*(a1 + 24), *a2);
  ++*(a1 + 40);
  return result;
}

void sub_2714D4750(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    LOBYTE(__p[0]) = *(a1 + 32);
    sub_271120E64(v4, __p, 1);
  }

  v5 = *(a1 + 24);
  __p[0] = *a2;
  v7 = 1;
  sub_271120E64(v5, __p, 1);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  ++*(a1 + 40);
}

void sub_2714D47D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714D47F4(uint64_t a1, __int16 *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v4, &v6, 1);
  }

  result = MEMORY[0x2743BE820](*(a1 + 24), *a2);
  ++*(a1 + 40);
  return result;
}

uint64_t sub_2714D4858(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v4, &v6, 1);
  }

  result = MEMORY[0x2743BE7E0](*(a1 + 24), *a2);
  ++*(a1 + 40);
  return result;
}

uint64_t sub_2714D48BC(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v4, &v6, 1);
  }

  result = MEMORY[0x2743BE800](*(a1 + 24), *a2);
  ++*(a1 + 40);
  return result;
}

uint64_t sub_2714D4920(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v4, &v6, 1);
  }

  result = MEMORY[0x2743BE840](*(a1 + 24), *a2);
  ++*(a1 + 40);
  return result;
}

uint64_t sub_2714D498C(uint64_t a1, unsigned __int16 *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v4, &v6, 1);
  }

  result = MEMORY[0x2743BE830](*(a1 + 24), *a2);
  ++*(a1 + 40);
  return result;
}

uint64_t sub_2714D49F0(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v4, &v6, 1);
  }

  result = MEMORY[0x2743BE7F0](*(a1 + 24), *a2);
  ++*(a1 + 40);
  return result;
}

uint64_t sub_2714D4A54(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v4, &v6, 1);
  }

  result = MEMORY[0x2743BE810](*(a1 + 24), *a2);
  ++*(a1 + 40);
  return result;
}

uint64_t sub_2714D4AB8(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v4, &v6, 1);
  }

  result = MEMORY[0x2743BE850](*(a1 + 24), *a2);
  ++*(a1 + 40);
  return result;
}

uint64_t sub_2714D4B28(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    v6 = *(result + 40);
    do
    {
      if (v6)
      {
        v8 = *(v5 + 24);
        v9 = *(v5 + 32);
        sub_271120E64(v8, &v9, 1);
      }

      v7 = *a2++;
      result = MEMORY[0x2743BE7B0](*(v5 + 24), v7);
      v6 = *(v5 + 40) + 1;
      *(v5 + 40) = v6;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_2714D4BB0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_271839280(a1, v3);
}

uint64_t sub_2714D4BD8(uint64_t result, __int16 *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(result + 40);
    v6 = 2 * a3;
    do
    {
      if (v5)
      {
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        sub_271120E64(v8, &v9, 1);
      }

      v7 = *a2++;
      result = MEMORY[0x2743BE820](*(v4 + 24), v7);
      v5 = *(v4 + 40) + 1;
      *(v4 + 40) = v5;
      v6 -= 2;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2714D4C60(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(result + 40);
    v6 = 4 * a3;
    do
    {
      if (v5)
      {
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        sub_271120E64(v8, &v9, 1);
      }

      v7 = *a2++;
      result = MEMORY[0x2743BE7E0](*(v4 + 24), v7);
      v5 = *(v4 + 40) + 1;
      *(v4 + 40) = v5;
      v6 -= 4;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2714D4CE8(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(result + 40);
    v6 = 8 * a3;
    do
    {
      if (v5)
      {
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        sub_271120E64(v8, &v9, 1);
      }

      v7 = *a2++;
      result = MEMORY[0x2743BE800](*(v4 + 24), v7);
      v5 = *(v4 + 40) + 1;
      *(v4 + 40) = v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2714D4D70(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(result + 40);
    v6 = 8 * a3;
    do
    {
      if (v5)
      {
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        sub_271120E64(v8, &v9, 1);
      }

      v7 = *a2++;
      result = MEMORY[0x2743BE840](*(v4 + 24), v7);
      v5 = *(v4 + 40) + 1;
      *(v4 + 40) = v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

void sub_2714D4DF8(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      sub_2718388F8(result, a2++);
      --v3;
    }

    while (v3);
  }
}

void sub_2714D4E48(uint64_t result, char *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      sub_271838810(result, a2++);
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_2714D4E98(uint64_t result, unsigned __int16 *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(result + 40);
    v6 = 2 * a3;
    do
    {
      if (v5)
      {
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        sub_271120E64(v8, &v9, 1);
      }

      v7 = *a2++;
      result = MEMORY[0x2743BE830](*(v4 + 24), v7);
      v5 = *(v4 + 40) + 1;
      *(v4 + 40) = v5;
      v6 -= 2;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2714D4F20(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(result + 40);
    v6 = 4 * a3;
    do
    {
      if (v5)
      {
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        sub_271120E64(v8, &v9, 1);
      }

      v7 = *a2++;
      result = MEMORY[0x2743BE7F0](*(v4 + 24), v7);
      v5 = *(v4 + 40) + 1;
      *(v4 + 40) = v5;
      v6 -= 4;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2714D4FA8(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(result + 40);
    v6 = 8 * a3;
    do
    {
      if (v5)
      {
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        sub_271120E64(v8, &v9, 1);
      }

      v7 = *a2++;
      result = MEMORY[0x2743BE810](*(v4 + 24), v7);
      v5 = *(v4 + 40) + 1;
      *(v4 + 40) = v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2714D5030(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(result + 40);
    v6 = 8 * a3;
    do
    {
      if (v5)
      {
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        sub_271120E64(v8, &v9, 1);
      }

      v7 = *a2++;
      result = MEMORY[0x2743BE850](*(v4 + 24), v7);
      v5 = *(v4 + 40) + 1;
      *(v4 + 40) = v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

void sub_2714D50B8(uint64_t result, int *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      sub_271838C54(result, a2++);
      v5 -= 4;
    }

    while (v5);
  }
}

void sub_2714D5108(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      sub_271838EC0(result, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714D5158(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      sub_271839128(result, a2);
      a2 += 24;
      v5 -= 24;
    }

    while (v5);
  }
}

void *sub_2714D51B4(void *result)
{
  v1 = result;
  if (result[5])
  {
    v2 = result[3];
    v3 = *(v1 + 32);
    result = sub_271120E64(v2, &v3, 1);
    ++v1[5];
  }

  else
  {
    result[5] = 1;
  }

  return result;
}

void *sub_2714D5220(void *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    v4 = result[5];
    do
    {
      while (v4)
      {
        v5 = v3[3];
        v6 = *(v3 + 32);
        result = sub_271120E64(v5, &v6, 1);
        v4 = v3[5] + 1;
        v3[5] = v4;
        if (!--v2)
        {
          return result;
        }
      }

      v4 = 1;
      v3[5] = 1;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_2714D52BC(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    v1 = *(result + 40);
    if (!v1 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      if ((*(result + 23) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_16:
      v6 = result;
      operator delete(*v2);
      return v6;
    }

    v5 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v5;
    v2 = v5;
    if (*(v5 + 23) < 0)
    {
      goto LABEL_16;
    }
  }

  else if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v3 = result;
        operator delete(*(result + 80));
        result = v3;
      }

      if (*(result + 71) < 0)
      {
        v4 = result;
        operator delete(*(result + 48));
        result = v4;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v2 = (result + 16);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_2714D53D8(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      do
      {
        while (1)
        {
          v3 = *v2;
          v4 = v2[6];
          if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v4->__on_zero_shared)(v4);
            std::__shared_weak_count::__release_weak(v4);
          }

          if (*(v2 + 39) < 0)
          {
            break;
          }

          operator delete(v2);
          v2 = v3;
          if (!v3)
          {
            goto LABEL_10;
          }
        }

        operator delete(v2[2]);
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

LABEL_10:
    v5 = *a1;
    *a1 = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_2714D54B4(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return a1;
}

void sub_2714D5538(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  JUMPOUT(0x2743BF050);
}

__n128 sub_2714D567C(uint64_t **a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 456))
  {
    v4 = (v3 + 416);
  }

  else
  {
    v4 = 0;
  }

  sub_2714E9080(v3 + 32, (*a1)[2], *a2, *(v3 + 56), v4, *(v3 + 456), &__p);
  v6 = v2[1];
  if (*(v6 + 32) != v9)
  {
    if (!*(v6 + 32))
    {
      result = *&__p.__r_.__value_.__l.__data_;
      *(v6 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v6 = result;
      memset(&__p, 0, sizeof(__p));
      *(v6 + 24) = v8;
      *(v6 + 32) = 1;
      if (v9 != 1)
      {
        return result;
      }

      goto LABEL_15;
    }

    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    *(v6 + 32) = 0;
LABEL_14:
    if (v9 != 1)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (!*(v6 + 32))
  {
    goto LABEL_14;
  }

  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  result = *&__p.__r_.__value_.__l.__data_;
  *(v6 + 16) = *(&__p.__r_.__value_.__l + 2);
  *v6 = result;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  *(v6 + 24) = v8;
  if (v9 == 1)
  {
LABEL_15:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return result;
}

__n128 sub_2714D5794(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  v4 = *v2 + 416;
  v5 = *(*v2 + 456);
  if (!*(*v2 + 456))
  {
    v4 = 0;
  }

  v13 = v4;
  v14 = v5;
  v12 = 6;
  if (!v3)
  {
    sub_27112AFFC();
  }

  (*(*v3 + 48))(__p);
  v7 = v2[1];
  if (*(v7 + 32) != v11)
  {
    if (!*(v7 + 32))
    {
      result = *__p;
      *(v7 + 16) = v9;
      *v7 = result;
      __p[1] = 0;
      v9 = 0;
      __p[0] = 0;
      *(v7 + 24) = v10;
      *(v7 + 32) = 1;
      if (v11 != 1)
      {
        return result;
      }

      goto LABEL_15;
    }

    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    *(v7 + 32) = 0;
    goto LABEL_14;
  }

  if (!*(v7 + 32))
  {
LABEL_14:
    if (v11 != 1)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  result = *__p;
  *(v7 + 16) = v9;
  *v7 = result;
  HIBYTE(v9) = 0;
  LOBYTE(__p[0]) = 0;
  *(v7 + 24) = v10;
  if (v11 == 1)
  {
LABEL_15:
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return result;
}

void *sub_2714D58E8(void *a1)
{
  v2 = a1[7];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = a1[5];
    if (v3 != a1 + 2)
    {
LABEL_4:
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v4 = a1[1];
      if (!v4)
      {
        return a1;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v3 = a1[5];
    if (v3 != a1 + 2)
    {
      goto LABEL_4;
    }
  }

  (*(*v3 + 32))(v3);
  v4 = a1[1];
  if (!v4)
  {
    return a1;
  }

LABEL_10:
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void sub_2714D5A40(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105740;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714D5AC0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288132438;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714D5B14(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_2881323C8[v2])(&v6, a1 + 80);
  }

  *(a1 + 112) = -1;
  v3 = *(a1 + 72);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 48);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t sub_2714D5C0C(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 != -1)
  {
    (off_2881323C8[v2])(&v7, a1 + 56);
  }

  *(a1 + 88) = -1;
  v3 = *(a1 + 48);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 24);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void *sub_2714D5D04(void *a1)
{
  *a1 = &unk_288132498;
  v2 = a1[8];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = a1[6];
    if (v3 != a1 + 3)
    {
LABEL_4:
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v4 = a1[2];
      if (!v4)
      {
        return a1;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v3 = a1[6];
    if (v3 != a1 + 3)
    {
      goto LABEL_4;
    }
  }

  (*(*v3 + 32))(v3);
  v4 = a1[2];
  if (!v4)
  {
    return a1;
  }

LABEL_10:
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void sub_2714D5E58(void *a1)
{
  *a1 = &unk_288132498;
  v2 = a1[8];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = a1[6];
    if (v3 != a1 + 3)
    {
LABEL_4:
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v4 = a1[2];
      if (!v4)
      {
LABEL_12:

        JUMPOUT(0x2743BF050);
      }

LABEL_10:
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }

      goto LABEL_12;
    }
  }

  else
  {
    v3 = a1[6];
    if (v3 != a1 + 3)
    {
      goto LABEL_4;
    }
  }

  (*(*v3 + 32))(v3);
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_12;
  }

  goto LABEL_10;
}

void sub_2714D60C8(_Unwind_Exception *a1)
{
  sub_27112F828(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_2714D60E4(void *a1, void *a2)
{
  *a2 = &unk_288132498;
  v4 = a1[2];
  a2[1] = a1[1];
  a2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  result = a1[6];
  if (!result)
  {
    goto LABEL_6;
  }

  if (result != a1 + 3)
  {
    result = (*(*result + 16))(result);
LABEL_6:
    a2[6] = result;
    goto LABEL_8;
  }

  a2[6] = a2 + 3;
  result = (*(*a1[6] + 24))(a1[6]);
LABEL_8:
  v6 = a1[8];
  a2[7] = a1[7];
  a2[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2714D61F0(char *a1)
{
  sub_2714D6450(a1 + 1);

  operator delete(a1);
}

void sub_2714D622C(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  *v5 = *v2;
  *v2 = 0;
  *(v2 + 8) = 0;
  v7[0] = 0;
  v8 = -1;
  v3 = *(v2 + 88);
  if (v3 != -1)
  {
    v6 = v7;
    (off_288132478[v3])(&v6, v2 + 56);
    v8 = v3;
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    sub_27112AFFC();
  }

  (*(*v4 + 48))(v4, v5, v2 + 16, v7);
  if (v8 != -1)
  {
    (off_2881323C8[v8])(&v6, v7);
  }

  v8 = -1;
  if (v5[1])
  {
    std::__shared_weak_count::__release_weak(v5[1]);
  }

  std::promise<void>::set_value(*(a1 + 8));
}

void sub_2714D6354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::exception_ptr a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

uint64_t sub_2714D63D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3esn6thread6detail28DispatchAsyncAndReturnFutureIvNSt3__18functionIFvNS4_8weak_ptrINS_3kit3viz13VDataExporter4ImplEEERKNS8_11ContextDataENS4_7variantIJNS8_17StoragePreferenceENS5_IFNS4_8optionalINS8_12DataLocationEEERKNS4_4__fs10filesystem4pathESE_SG_RNS7_2fs11IFilesystemENS0_11OptionalRefINS8_15ExportFileStateEEEEEEEEEEEENS1_11IWorkQueueTINS5_IFvvEEEEEJRSB_SE_RKSX_EEENS4_6futureIT_EERT1_OT0_DpOT2_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3esn6thread6detail28DispatchAsyncAndReturnFutureIvNSt3__18functionIFvNS4_8weak_ptrINS_3kit3viz13VDataExporter4ImplEEERKNS8_11ContextDataENS4_7variantIJNS8_17StoragePreferenceENS5_IFNS4_8optionalINS8_12DataLocationEEERKNS4_4__fs10filesystem4pathESE_SG_RNS7_2fs11IFilesystemENS0_11OptionalRefINS8_15ExportFileStateEEEEEEEEEEEENS1_11IWorkQueueTINS5_IFvvEEEEEJRSB_SE_RKSX_EEENS4_6futureIT_EERT1_OT0_DpOT2_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3esn6thread6detail28DispatchAsyncAndReturnFutureIvNSt3__18functionIFvNS4_8weak_ptrINS_3kit3viz13VDataExporter4ImplEEERKNS8_11ContextDataENS4_7variantIJNS8_17StoragePreferenceENS5_IFNS4_8optionalINS8_12DataLocationEEERKNS4_4__fs10filesystem4pathESE_SG_RNS7_2fs11IFilesystemENS0_11OptionalRefINS8_15ExportFileStateEEEEEEEEEEEENS1_11IWorkQueueTINS5_IFvvEEEEEJRSB_SE_RKSX_EEENS4_6futureIT_EERT1_OT0_DpOT2_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3esn6thread6detail28DispatchAsyncAndReturnFutureIvNSt3__18functionIFvNS4_8weak_ptrINS_3kit3viz13VDataExporter4ImplEEERKNS8_11ContextDataENS4_7variantIJNS8_17StoragePreferenceENS5_IFNS4_8optionalINS8_12DataLocationEEERKNS4_4__fs10filesystem4pathESE_SG_RNS7_2fs11IFilesystemENS0_11OptionalRefINS8_15ExportFileStateEEEEEEEEEEEENS1_11IWorkQueueTINS5_IFvvEEEEEJRSB_SE_RKSX_EEENS4_6futureIT_EERT1_OT0_DpOT2_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_2714D6450(void *a1)
{
  v2 = a1[7];
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1[5];
    if (v3 != a1 + 2)
    {
      goto LABEL_4;
    }

LABEL_9:
    (*(*v3 + 32))(v3);
    v4 = a1[1];
    if (!v4)
    {
      return;
    }

    goto LABEL_10;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = a1[5];
  if (v3 == a1 + 2)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[1];
  if (v4)
  {
LABEL_10:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);

      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

uint64_t sub_2714D6590(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void *sub_2714D67F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0x400000001;
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  if (*(a3 + 24) == 1)
  {
    if (*(a3 + 23) < 0)
    {
      v6 = a4;
      sub_271127178(v11, *a3, *(a3 + 8));
      a4 = v6;
    }

    else
    {
      *v11 = *a3;
      v12 = *(a3 + 16);
    }

    v13 = 1;
  }

  LOBYTE(__p[0]) = 0;
  v10 = 0;
  if (*(a4 + 24) == 1)
  {
    if (*(a4 + 23) < 0)
    {
      sub_271127178(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v9 = *(a4 + 16);
    }

    v10 = 1;
  }

  sub_27183D1E0(a1, &v14, a2, v11, __p, 0, 1);
  if (v10 == 1 && SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  *a1 = &unk_288117648;
  return a1;
}

void sub_2714D693C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714D698C(uint64_t a1)
{
  *a1 = &unk_288117510;
  if ((*(a1 + 159) & 0x80000000) == 0)
  {
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 48));
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 136));
  if (*(a1 + 71) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 47) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*(a1 + 24));
  return a1;
}

void sub_2714D6A1C(uint64_t a1)
{
  *a1 = &unk_288117510;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 47) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      operator delete(*(a1 + 24));
LABEL_4:

      JUMPOUT(0x2743BF050);
    }
  }

  else if ((*(a1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 48));
  if ((*(a1 + 47) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  goto LABEL_9;
}

void sub_2714D6AC4(uint64_t a1)
{
  while ((*(a1 + 131) & 1) == 0 && (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a1, __p);
    if (v4 < 0)
    {
      if (__p[1] == 1 && *(a1 + 72) == *__p[0])
      {
LABEL_11:
        v2 = 0;
        if (v4 < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_2;
      }
    }

    else if (v4 == 1 && *(a1 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_11;
    }

    v2 = 1;
    if (v4 < 0)
    {
LABEL_14:
      operator delete(__p[0]);
    }

LABEL_2:
    if ((v2 & 1) == 0)
    {
      return;
    }
  }
}

double sub_2714D6BCC(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
  }

  else
  {
    sub_27183D78C(a1, &v5);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
    ++*(a1 + 104);
  }

  return result;
}

void sub_2714D6C68(uint64_t result, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      sub_27183C3E0(result, a2++);
      --v3;
    }

    while (v3);
  }
}

void sub_2714D6CB8(uint64_t result, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      sub_2718397F4(result, a2++);
      --v3;
    }

    while (v3);
  }
}

void sub_2714D6D08(uint64_t result, _WORD *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 2 * a3;
    do
    {
      sub_271839FEC(result, a2++);
      v5 -= 2;
    }

    while (v5);
  }
}

void sub_2714D6D58(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      sub_27183A66C(result, a2++);
      v5 -= 4;
    }

    while (v5);
  }
}

void sub_2714D6DA8(uint64_t result, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      sub_27183ACEC(result, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714D6DF8(uint64_t result, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      sub_27183B36C(result, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714D6E48(uint64_t result, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      sub_271839D90(result, a2++);
      --v3;
    }

    while (v3);
  }
}

void sub_2714D6E98(uint64_t result, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      sub_271839B34(result, a2++);
      --v3;
    }

    while (v3);
  }
}

void sub_2714D6EE8(uint64_t result, _WORD *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 2 * a3;
    do
    {
      sub_27183A32C(result, a2++);
      v5 -= 2;
    }

    while (v5);
  }
}

void sub_2714D6F38(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      sub_27183A9AC(result, a2++);
      v5 -= 4;
    }

    while (v5);
  }
}

void sub_2714D6F88(uint64_t result, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      sub_27183B02C(result, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714D6FD8(uint64_t result, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      sub_27183B6AC(result, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714D7028(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      sub_27183BD60(result, a2++);
      v5 -= 4;
    }

    while (v5);
  }
}

void sub_2714D7078(uint64_t result, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      sub_27183C0A0(result, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714D70C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      while (1)
      {
        ++*(a1 + 80);
        if (*(a1 + 128) != 1 || *(a1 + 131) != 1)
        {
          break;
        }

        *(a1 + 132) = 1;
        a2 += 24;
        v5 -= 24;
        if (!v5)
        {
          return;
        }
      }

      sub_27183D78C(a1, &v7);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      v6 = v7;
      *(a2 + 16) = v8;
      *a2 = v6;
      a2 += 24;
      ++*(a1 + 104);
      v5 -= 24;
    }

    while (v5);
  }
}

void sub_2714D7194(uint64_t a1)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
  }

  else
  {
    sub_27183D78C(a1, &__p);
    if (v3 < 0)
    {
      operator delete(__p);
    }

    ++*(a1 + 104);
  }
}

void sub_2714D721C(uint64_t a1, uint64_t *a2)
{
  for (i = *a2; i; --i)
  {
    while (1)
    {
      ++*(a1 + 80);
      if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
      {
        break;
      }

      sub_27183D78C(a1, &__p);
      if (v5 < 0)
      {
        operator delete(__p);
        ++*(a1 + 104);
        if (!--i)
        {
          return;
        }
      }

      else
      {
        ++*(a1 + 104);
        if (!--i)
        {
          return;
        }
      }
    }

    *(a1 + 132) = 1;
  }
}

uint64_t *sub_2714D72D4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    *v2 = &unk_288117510;
    if (*(v2 + 159) < 0)
    {
      operator delete(*(v2 + 136));
      if ((*(v2 + 71) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(v2 + 47) & 0x80000000) == 0)
        {
LABEL_5:
          MEMORY[0x2743BF050](v2, 0x10B3C40F5E21753);
          return a1;
        }

LABEL_9:
        operator delete(*(v2 + 24));
        goto LABEL_5;
      }
    }

    else if ((*(v2 + 71) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(v2 + 48));
    if ((*(v2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return a1;
}

char **sub_2714D737C(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 152;
        sub_2714D73E0(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_2714D73E0(uint64_t a1)
{
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 96));
    if (*(a1 + 88) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 128));
  if (*(a1 + 119) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(a1 + 88) != 1)
  {
LABEL_8:
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    operator delete(*(a1 + 40));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_7:
  if ((*(a1 + 87) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*(a1 + 64));
  if (*(a1 + 63) < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return;
  }

LABEL_13:
  v2 = *(a1 + 8);

  operator delete(v2);
}

void sub_2714D749C(void *a1)
{
  v4 = 0;
  v1[2] = 0;
  memset(v2, 0, sizeof(v2));
  LOBYTE(__p) = 0;
  v1[0] = off_28810C940;
  v1[1] = 0;
  sub_271390BA0(a1, v2, v1);
}

void sub_2714D758C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2714FBE4C(&a9);
  sub_271181F68(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714D75A8(uint64_t a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    if (a1 == this)
    {
      return a1;
    }

    v4 = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (*(a1 + 23) < 0)
    {
      if (v4 >= 0)
      {
        v10 = this;
      }

      else
      {
        v10 = this->__pn_.__r_.__value_.__r.__words[0];
      }

      if (v4 >= 0)
      {
        size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = this->__pn_.__r_.__value_.__l.__size_;
      }

      sub_2711289F8(a1, v10, size);
      return a1;
    }

    else
    {
      if ((*(&this->__pn_.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        v5 = *&this->__pn_.__r_.__value_.__l.__data_;
        *(a1 + 16) = *(&this->__pn_.__r_.__value_.__l + 2);
        *a1 = v5;
        return a1;
      }

      sub_271128928(a1, this->__pn_.__r_.__value_.__l.__data_, this->__pn_.__r_.__value_.__l.__size_);
      return a1;
    }
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(a1, 47);
    }

    v7 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v7 >= 0)
    {
      v8 = this;
    }

    else
    {
      v8 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v7 >= 0)
    {
      v9 = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v8, v9);
    return a1;
  }
}

uint64_t sub_2714D7694(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    sub_27112F6CC(a1 + 16, (a2 + 16));
    *(a1 + 112) = 1;
  }

  return a1;
}

uint64_t sub_2714D7700(uint64_t a1)
{
  if (*(a1 + 200) == 1)
  {
    v2 = *(a1 + 176);
    if (v2)
    {
      v3 = *(a1 + 184);
      v4 = *(a1 + 176);
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
        v4 = *(a1 + 176);
      }

      *(a1 + 184) = v2;
      operator delete(v4);
    }
  }

  if (*(a1 + 168) == 1 && *(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
    if (*(a1 + 136) != 1)
    {
      goto LABEL_16;
    }
  }

  else if (*(a1 + 136) != 1)
  {
    goto LABEL_16;
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

LABEL_16:
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

uint64_t sub_2714D7810(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 87) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 96));
  if ((*(a1 + 87) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator delete(*(a1 + 40));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_11;
  }

LABEL_9:
  operator delete(*(a1 + 64));
  if (*(a1 + 63) < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_11:
  operator delete(*(a1 + 8));
  return a1;
}

uint64_t sub_2714D78B4(uint64_t a1)
{
  sub_2714D96EC(*(a1 + 344));
  sub_271167834(a1 + 312, *(a1 + 320));
  v2 = *(a1 + 288);
  if (v2)
  {
    v3 = *(a1 + 296);
    v4 = *(a1 + 288);
    if (v3 != v2)
    {
      do
      {
        v3 -= 152;
        sub_2714D73E0(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 288);
    }

    *(a1 + 296) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 272);
  *(a1 + 272) = 0;
  if (v5)
  {
    *v5 = &unk_288117510;
    if (*(v5 + 159) < 0)
    {
      operator delete(*(v5 + 136));
      if ((*(v5 + 71) & 0x80000000) == 0)
      {
LABEL_9:
        if ((*(v5 + 47) & 0x80000000) == 0)
        {
LABEL_10:
          MEMORY[0x2743BF050](v5, 0x10B3C40F5E21753);
          goto LABEL_11;
        }

LABEL_51:
        operator delete(*(v5 + 24));
        goto LABEL_10;
      }
    }

    else if ((*(v5 + 71) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    operator delete(*(v5 + 48));
    if ((*(v5 + 47) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_11:
  v6 = *(a1 + 264);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a1 + 224);
  if (v7)
  {
    v8 = *(a1 + 232);
    v9 = *(a1 + 224);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 8);
        if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        v8 -= 16;
      }

      while (v8 != v7);
      v9 = *(a1 + 224);
    }

    *(a1 + 232) = v7;
    operator delete(v9);
  }

  v11 = *(a1 + 216);
  if (v11 != -1)
  {
    (off_288132520[v11])(&v29, a1 + 200);
  }

  *(a1 + 216) = -1;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v12 = *(a1 + 136);
  if (v12)
  {
    v13 = *(a1 + 144);
    v14 = *(a1 + 136);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 8);
        if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        v13 -= 16;
      }

      while (v13 != v12);
      v14 = *(a1 + 136);
    }

    *(a1 + 144) = v12;
    operator delete(v14);
  }

  if (*(a1 + 128) != 1)
  {
LABEL_40:
    if (*(a1 + 88) != 1)
    {
      goto LABEL_55;
    }

    goto LABEL_41;
  }

  v16 = *(a1 + 120);
  if (v16 != a1 + 96)
  {
    if (v16)
    {
      (*(*v16 + 40))(v16);
    }

    goto LABEL_40;
  }

  (*(*v16 + 32))(v16);
  if (*(a1 + 88) != 1)
  {
    goto LABEL_55;
  }

LABEL_41:
  v17 = *(a1 + 64);
  if (v17)
  {
    v18 = *(a1 + 72);
    v19 = *(a1 + 64);
    if (v18 != v17)
    {
      v20 = v18 - 32;
      do
      {
        v21 = *(v18 - 8);
        if (v18 - 32 == v21)
        {
          (*(*v21 + 32))(v21);
        }

        else if (v21)
        {
          (*(*v21 + 40))(v21);
        }

        *(v18 - 800) = off_2881327C0;
        sub_271347580(v18 - 784);
        v20 -= 800;
        v18 -= 800;
      }

      while (v18 != v17);
      v19 = *(a1 + 64);
    }

    *(a1 + 72) = v17;
    operator delete(v19);
  }

LABEL_55:
  if (*(a1 + 56) == 1)
  {
    v22 = *(a1 + 32);
    if (v22)
    {
      v23 = *(a1 + 40);
      v24 = *(a1 + 32);
      if (v23 != v22)
      {
        v25 = v23 - 96;
        v26 = v23 - 96;
        do
        {
          (**v26)(v26);
          v25 -= 96;
          v27 = v26 == v22;
          v26 -= 96;
        }

        while (!v27);
        v24 = *(a1 + 32);
      }

      *(a1 + 40) = v22;
      operator delete(v24);
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2714D7D18(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          v10 -= 2;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (!(a4 >> 60))
    {
      v21 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v21 = a4;
      }

      v22 = v7 >= 0x7FFFFFFFFFFFFFF0;
      v23 = 0xFFFFFFFFFFFFFFFLL;
      if (!v22)
      {
        v23 = v21;
      }

      if (!(v23 >> 60))
      {
        operator new();
      }
    }

    sub_271135560();
  }

  v13 = *(a1 + 8);
  if (a4 <= (v13 - v8) >> 4)
  {
    if (a2 != a3)
    {
      do
      {
        v19 = *v5;
        v18 = v5[1];
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        v20 = v8[1];
        *v8 = v19;
        v8[1] = v18;
        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v5 += 2;
        v8 += 2;
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    for (; v13 != v8; v13 -= 2)
    {
      v27 = *(v13 - 1);
      if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v27->__on_zero_shared)(v27);
        std::__shared_weak_count::__release_weak(v27);
      }
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v13 != v8)
    {
      v14 = (a2 + v13 - v8);
      do
      {
        v16 = *v5;
        v15 = v5[1];
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v17 = v8[1];
        *v8 = v16;
        v8[1] = v15;
        if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
        }

        v5 += 2;
        v8 += 2;
      }

      while (v5 != v14);
      v13 = *(a1 + 8);
      v5 = v14;
    }

    v24 = v13;
    if (v5 != a3)
    {
      v24 = v13;
      v25 = v13;
      do
      {
        v26 = v5[1];
        *v25 = *v5;
        v25[1] = v26;
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v5 += 2;
        v25 += 2;
        v24 += 2;
      }

      while (v5 != a3);
    }

    *(a1 + 8) = v24;
  }
}

void sub_2714D82C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714D830C(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  v3 = *a1;
  v13 = 0;
  std::to_string(&v14, v3);
  v15 = v12;
  v16 = &v14;
  v17 = v12;
  v18 = &v14;
  v19 = &v14;
  v20 = &v15;
  (off_288132530[0])(&v20, v12);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 == -1)
  {
    sub_2711308D4();
  }

  v15 = &v14;
  (off_288132410[v13])(&__p, &v15, v12);
  if (v13 != -1)
  {
    (off_2881323F8[v13])(&v15, v12);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    v5 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__p.__r_.__value_.__l.__size_ == v5)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_271120DA8();
      }

LABEL_11:
      operator new();
    }

    size = __p.__r_.__value_.__l.__size_;
    p_p = __p.__r_.__value_.__r.__words[0];
    ++__p.__r_.__value_.__l.__size_;
  }

  else
  {
    if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 22)
    {
      goto LABEL_11;
    }

    *(&__p.__r_.__value_.__s + 23) = (*(&__p.__r_.__value_.__s + 23) + 1) & 0x7F;
    p_p = &__p;
  }

  *(&p_p->__r_.__value_.__l.__data_ + size) = 32;
  v11 = __p;
  memset(&__p, 0, sizeof(__p));
  sub_27184CC10(1, 1000000000, &v15);
  if (SHIBYTE(v17) >= 0)
  {
    v7 = &v15;
  }

  else
  {
    v7 = v15;
  }

  if (SHIBYTE(v17) >= 0)
  {
    v8 = HIBYTE(v17);
  }

  else
  {
    v8 = v16;
  }

  v9 = std::string::append(&v11, v7, v8);
  *a2 = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v15);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_22:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_26:
      operator delete(__p.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_26;
  }
}

void sub_2714D85E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_2714D8654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714D866C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_271130878(&a16);
  _Unwind_Resume(a1);
}

void sub_2714D86B0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106700;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714D8798(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v24[0] = 0;
  v25 = -1;
  v7 = *(a4 + 32);
  if (v7 != -1)
  {
    v12[0] = v24;
    (off_288132478[v7])(v12, a4);
    v25 = v7;
  }

  if (!v5)
  {
    goto LABEL_22;
  }

  v8 = std::__shared_weak_count::lock(v5);
  v23 = v8;
  if (!v8)
  {
    goto LABEL_22;
  }

  v22 = v6;
  if (v6)
  {
    sub_2714C9440(v12, v6, a3, v24);
    if ((v21 & 1) == 0 && *(v6 + 160) == 1)
    {
      v9 = *(v6 + 152);
      if (!v9)
      {
        sub_27112AFFC();
      }

      (*(*v9 + 48))(v9, v6 + 32, a3 + 16, v12);
    }

    std::mutex::lock((v6 + 352));
    atomic_fetch_add((v6 + 296), 0xFFFFFFFF);
    std::condition_variable::notify_one((v22 + 304));
    std::mutex::unlock((v6 + 352));
    if ((v21 & 1) == 0 && v20 == 1)
    {
      if (v19 == 1)
      {
        if (v18 < 0)
        {
          operator delete(__p);
        }

        if (v16 < 0)
        {
          operator delete(v15);
        }
      }

      if (v14 == 1 && v13 < 0)
      {
        operator delete(v12[2]);
      }
    }

    v8 = v23;
    if (!v23)
    {
      goto LABEL_22;
    }
  }

  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_22:
    v10 = v25;
    if (v25 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v11 = v8;
  (v8->__on_zero_shared)();
  std::__shared_weak_count::__release_weak(v11);
  v10 = v25;
  if (v25 != -1)
  {
LABEL_23:
    (off_2881323C8[v10])(v12, v24);
  }

LABEL_24:
  v25 = -1;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_2714D89D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112E024(&a9);
  sub_27112F828(v10 - 96);
  sub_2714D455C(v10 - 80);
  std::__shared_weak_count::__release_weak(v9);
  _Unwind_Resume(a1);
}

void sub_2714D8A08(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

uint64_t sub_2714D8A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit3viz13VDataExporter4Impl16ExportDataAsynchERKNS1_11ContextDataERKNSt3__17variantIJNS1_17StoragePreferenceENS7_8functionIFNS7_8optionalINS1_12DataLocationEEERKNS7_4__fs10filesystem4pathES6_S9_RNS0_2fs11IFilesystemENS_3esn11OptionalRefINS1_15ExportFileStateEEEEEEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit3viz13VDataExporter4Impl16ExportDataAsynchERKNS1_11ContextDataERKNSt3__17variantIJNS1_17StoragePreferenceENS7_8functionIFNS7_8optionalINS1_12DataLocationEEERKNS7_4__fs10filesystem4pathES6_S9_RNS0_2fs11IFilesystemENS_3esn11OptionalRefINS1_15ExportFileStateEEEEEEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit3viz13VDataExporter4Impl16ExportDataAsynchERKNS1_11ContextDataERKNSt3__17variantIJNS1_17StoragePreferenceENS7_8functionIFNS7_8optionalINS1_12DataLocationEEERKNS7_4__fs10filesystem4pathES6_S9_RNS0_2fs11IFilesystemENS_3esn11OptionalRefINS1_15ExportFileStateEEEEEEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit3viz13VDataExporter4Impl16ExportDataAsynchERKNS1_11ContextDataERKNSt3__17variantIJNS1_17StoragePreferenceENS7_8functionIFNS7_8optionalINS1_12DataLocationEEERKNS7_4__fs10filesystem4pathES6_S9_RNS0_2fs11IFilesystemENS_3esn11OptionalRefINS1_15ExportFileStateEEEEEEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_2714D8A9C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_2714D8B28(uint64_t a1, const void **a2, const void **a3)
{
  v3 = a3;
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_118;
  }

  bzero(*a1, 8 * v6);
  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v65 = (a1 + 16);
  if (a2 != v3)
  {
    if (!v7)
    {
      goto LABEL_118;
    }

    while (1)
    {
      v8 = v7 + 2;
      if (v7 + 2 != a2)
      {
        v9 = *(a2 + 23);
        if (*(v7 + 39) < 0)
        {
          if (v9 >= 0)
          {
            v11 = a2;
          }

          else
          {
            v11 = *a2;
          }

          if (v9 >= 0)
          {
            v12 = *(a2 + 23);
          }

          else
          {
            v12 = a2[1];
          }

          sub_2711289F8(v7 + 2, v11, v12);
        }

        else if ((*(a2 + 23) & 0x80) != 0)
        {
          sub_271128928(v7 + 2, *a2, a2[1]);
        }

        else
        {
          v10 = *a2;
          v7[4] = a2[2];
          *v8 = v10;
        }
      }

      v14 = a2[3];
      v13 = a2[4];
      if (v13)
      {
        atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
      }

      v15 = v7[6];
      v7[5] = v14;
      v7[6] = v13;
      if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
        v16 = *v7;
        if ((*(v7 + 39) & 0x80000000) == 0)
        {
LABEL_21:
          *__p = *v8;
          v68 = v7[4];
          goto LABEL_24;
        }
      }

      else
      {
        v16 = *v7;
        if ((*(v7 + 39) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_271127178(__p, v7[2], v7[3]);
LABEL_24:
      if (SHIBYTE(v68) >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      if (SHIBYTE(v68) >= 0)
      {
        v18 = HIBYTE(v68);
      }

      else
      {
        v18 = __p[1];
      }

      v19 = sub_2711284DC(&v69, v17, v18);
      v20 = v19;
      if (SHIBYTE(v68) < 0)
      {
        operator delete(__p[0]);
        v7[1] = v20;
        v21 = *(a1 + 8);
        if (!v21)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v7[1] = v19;
        v21 = *(a1 + 8);
        if (!v21)
        {
          goto LABEL_66;
        }
      }

      v22 = vcnt_s8(v21);
      v22.i16[0] = vaddlv_u8(v22);
      if (v22.u32[0] > 1uLL)
      {
        v23 = v20;
        if (v21 <= v20)
        {
          v23 = v20 % v21;
        }
      }

      else
      {
        v23 = (v21 - 1) & v20;
      }

      v24 = *(*a1 + 8 * v23);
      if (v24)
      {
        v25 = *v24;
        if (*v24)
        {
          if (v22.u32[0] < 2uLL)
          {
            while (1)
            {
              v29 = v25[1];
              if (v29 == v20)
              {
                v30 = *(v7 + 39);
                if (v30 >= 0)
                {
                  v31.__data_ = (v7 + 2);
                }

                else
                {
                  v31.__data_ = v7[2];
                }

                if (v30 >= 0)
                {
                  v31.__size_ = *(v7 + 39);
                }

                else
                {
                  v31.__size_ = v7[3];
                }

                if (!std::__fs::filesystem::path::__compare((v25 + 2), v31))
                {
                  goto LABEL_97;
                }
              }

              else if ((v29 & (v21 - 1)) != v23)
              {
                goto LABEL_66;
              }

              v25 = *v25;
              if (!v25)
              {
                goto LABEL_66;
              }
            }
          }

          do
          {
            v26 = v25[1];
            if (v26 == v20)
            {
              v27 = *(v7 + 39);
              if (v27 >= 0)
              {
                v28.__data_ = (v7 + 2);
              }

              else
              {
                v28.__data_ = v7[2];
              }

              if (v27 >= 0)
              {
                v28.__size_ = *(v7 + 39);
              }

              else
              {
                v28.__size_ = v7[3];
              }

              if (!std::__fs::filesystem::path::__compare((v25 + 2), v28))
              {
                goto LABEL_97;
              }
            }

            else
            {
              if (v26 >= v21)
              {
                v26 %= v21;
              }

              if (v26 != v23)
              {
                break;
              }
            }

            v25 = *v25;
          }

          while (v25);
        }
      }

LABEL_66:
      v32 = (*(a1 + 24) + 1);
      v33 = *(a1 + 32);
      if (!v21 || (v33 * v21) < v32)
      {
        v34 = (v21 & (v21 - 1)) != 0;
        if (v21 < 3)
        {
          v34 = 1;
        }

        v35 = v34 | (2 * v21);
        v36 = vcvtps_u32_f32(v32 / v33);
        if (v35 <= v36)
        {
          prime = v36;
        }

        else
        {
          prime = v35;
        }

        if (prime == 1)
        {
          prime = 2;
        }

        else if ((prime & (prime - 1)) != 0)
        {
          prime = std::__next_prime(prime);
        }

        v38 = *(a1 + 8);
        if (prime > *&v38)
        {
          goto LABEL_78;
        }

        if (prime < *&v38)
        {
          v39 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
          if (*&v38 < 3uLL || (v40 = vcnt_s8(v38), v40.i16[0] = vaddlv_u8(v40), v40.u32[0] > 1uLL))
          {
            v39 = std::__next_prime(v39);
          }

          else
          {
            v41 = 1 << -__clz(v39 - 1);
            if (v39 >= 2)
            {
              v39 = v41;
            }
          }

          if (prime <= v39)
          {
            prime = v39;
          }

          if (prime < *&v38)
          {
LABEL_78:
            sub_2714D9498(a1, prime);
          }
        }
      }

      v42 = *(a1 + 8);
      v43 = v7[1];
      v44 = vcnt_s8(v42);
      v44.i16[0] = vaddlv_u8(v44);
      if (v44.u32[0] > 1uLL)
      {
        if (v43 >= *&v42)
        {
          v43 %= *&v42;
        }
      }

      else
      {
        v43 &= *&v42 - 1;
      }

      v45 = *a1;
      v46 = *(*a1 + 8 * v43);
      if (v46)
      {
        *v7 = *v46;
      }

      else
      {
        *v7 = *v65;
        *v65 = v7;
        v45[v43] = v65;
        if (!*v7)
        {
          goto LABEL_96;
        }

        v47 = *(*v7 + 1);
        if (v44.u32[0] > 1uLL)
        {
          if (v47 >= *&v42)
          {
            v47 %= *&v42;
          }

          v46 = &v45[v47];
        }

        else
        {
          v46 = &v45[v47 & (*&v42 - 1)];
        }
      }

      *v46 = v7;
LABEL_96:
      ++*(a1 + 24);
LABEL_97:
      a2 += 5;
      if (!v16)
      {
        v3 = a3;
        goto LABEL_118;
      }

      v7 = v16;
      v3 = a3;
      if (a2 == a3)
      {
        goto LABEL_108;
      }
    }
  }

  v16 = v7;
LABEL_108:
  if (v16)
  {
    do
    {
      while (1)
      {
        v48 = *v16;
        v49 = v16[6];
        if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v49->__on_zero_shared)(v49);
          std::__shared_weak_count::__release_weak(v49);
        }

        if (*(v16 + 39) < 0)
        {
          break;
        }

        operator delete(v16);
        v16 = v48;
        if (!v48)
        {
          goto LABEL_118;
        }
      }

      operator delete(v16[2]);
      operator delete(v16);
      v16 = v48;
    }

    while (v48);
  }

LABEL_118:
  if (a2 == v3)
  {
    return;
  }

  do
  {
    if (*(a2 + 23) < 0)
    {
      sub_271127178(__p, *a2, a2[1]);
    }

    else
    {
      v50 = *a2;
      v68 = a2[2];
      *__p = v50;
    }

    if (SHIBYTE(v68) >= 0)
    {
      v51 = __p;
    }

    else
    {
      v51 = __p[0];
    }

    if (SHIBYTE(v68) >= 0)
    {
      v52 = HIBYTE(v68);
    }

    else
    {
      v52 = __p[1];
    }

    v53 = sub_2711284DC(&v69, v51, v52);
    if (SHIBYTE(v68) < 0)
    {
      operator delete(__p[0]);
      v54 = *(a1 + 8);
      if (!*&v54)
      {
        goto LABEL_165;
      }
    }

    else
    {
      v54 = *(a1 + 8);
      if (!*&v54)
      {
        goto LABEL_165;
      }
    }

    v55 = vcnt_s8(v54);
    v55.i16[0] = vaddlv_u8(v55);
    if (v55.u32[0] > 1uLL)
    {
      v56 = v53;
      if (v53 >= *&v54)
      {
        v56 = v53 % *&v54;
      }
    }

    else
    {
      v56 = (*&v54 - 1) & v53;
    }

    v57 = *(*a1 + 8 * v56);
    if (!v57 || (v58 = *v57) == 0)
    {
LABEL_165:
      operator new();
    }

    if (v55.u32[0] < 2uLL)
    {
      while (1)
      {
        v62 = v58[1];
        if (v62 == v53)
        {
          v63 = *(a2 + 23);
          if (v63 >= 0)
          {
            v64.__data_ = a2;
          }

          else
          {
            v64.__data_ = *a2;
          }

          if (v63 >= 0)
          {
            v64.__size_ = *(a2 + 23);
          }

          else
          {
            v64.__size_ = a2[1];
          }

          if (!std::__fs::filesystem::path::__compare((v58 + 2), v64))
          {
            goto LABEL_163;
          }
        }

        else if ((v62 & (*&v54 - 1)) != v56)
        {
          goto LABEL_165;
        }

        v58 = *v58;
        if (!v58)
        {
          goto LABEL_165;
        }
      }
    }

    while (1)
    {
      v59 = v58[1];
      if (v59 == v53)
      {
        break;
      }

      if (v59 >= *&v54)
      {
        v59 %= *&v54;
      }

      if (v59 != v56)
      {
        goto LABEL_165;
      }

LABEL_141:
      v58 = *v58;
      if (!v58)
      {
        goto LABEL_165;
      }
    }

    v60 = *(a2 + 23);
    if (v60 >= 0)
    {
      v61.__data_ = a2;
    }

    else
    {
      v61.__data_ = *a2;
    }

    if (v60 >= 0)
    {
      v61.__size_ = *(a2 + 23);
    }

    else
    {
      v61.__size_ = a2[1];
    }

    if (std::__fs::filesystem::path::__compare((v58 + 2), v61))
    {
      goto LABEL_141;
    }

LABEL_163:
    a2 += 5;
  }

  while (a2 != a3);
}

void sub_2714D942C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_2714D45B8(v1);
  __cxa_rethrow();
}

void sub_2714D9458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2714D962C(va);
  _Unwind_Resume(a1);
}

void sub_2714D9498(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_2711270EC();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *sub_2714D962C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 48);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v2;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        v2 = v6;
        if ((*(v6 + 39) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (*(v2 + 39) < 0)
      {
LABEL_6:
        v4 = v2;
        operator delete(*(v2 + 16));
        v2 = v4;
      }
    }

LABEL_7:
    operator delete(v2);
  }

  return a1;
}

void sub_2714D96EC(char *a1)
{
  if (a1)
  {
    sub_2714D96EC(*a1);
    sub_2714D96EC(*(a1 + 1));
    sub_2714D9770(*(a1 + 8));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

void sub_2714D9770(void *a1)
{
  if (a1)
  {
    sub_2714D9770(*a1);
    sub_2714D9770(a1[1]);

    operator delete(a1);
  }
}

uint64_t *sub_2714D97C0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_2714D9770(*(v1 + 64));
      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *sub_2714D981C(void *a1)
{
  *a1 = &unk_288116F00;
  a1[2] = &unk_288117048;
  sub_271841CCC(a1 + 6, 0);
  a1[2] = &unk_288116BC0;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2714D98B4(uint64_t a1, uint64_t a2, unint64_t *a3, std::string *a4)
{
  v7 = 0;
  v9[0] = v6;
  v9[1] = "Failed to parse ";
  v9[2] = v6;
  v9[3] = "Failed to parse ";
  v9[4] = "Failed to parse ";
  v8.__r_.__value_.__r.__words[0] = v9;
  sub_271236FD8(&v8);
  sub_2714D809C(&v5, v6, a2);
}

uint64_t sub_2714D9B28(uint64_t a1)
{
  *a1 = &unk_288114DE0;
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    (*(a1 + 24))();
  }

  return a1;
}

void sub_2714D9BA0(void *a1)
{
  *a1 = &unk_288116F00;
  a1[2] = &unk_288117048;
  sub_271841CCC(a1 + 6, 0);
  a1[2] = &unk_288116BC0;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714D9D18(uint64_t result, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = *(result + 48);
    do
    {
      sub_2718402EC(v5, a2++);
      --v3;
    }

    while (v3);
  }
}

void sub_2714D9D68(uint64_t result, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = *(result + 48);
    do
    {
      sub_27183F6C4(v5, a2++);
      --v3;
    }

    while (v3);
  }
}

void sub_2714D9DB8(uint64_t result, _WORD *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(result + 48);
    v5 = 2 * a3;
    do
    {
      sub_27183F920(v4, a2++);
      v5 -= 2;
    }

    while (v5);
  }
}

void sub_2714D9E08(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(result + 48);
    v5 = 4 * a3;
    do
    {
      sub_27183FACC(v4, a2++);
      v5 -= 4;
    }

    while (v5);
  }
}

void sub_2714D9E58(uint64_t result, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(result + 48);
    v5 = 8 * a3;
    do
    {
      sub_27183FC78(v4, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714D9EA8(uint64_t result, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(result + 48);
    v5 = 8 * a3;
    do
    {
      sub_27183FE6C(v4, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714D9EF8(uint64_t result, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = *(result + 48);
    do
    {
      sub_27183F824(v5, a2++);
      --v3;
    }

    while (v3);
  }
}

void sub_2714D9F48(uint64_t result, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = *(result + 48);
    do
    {
      sub_27183F774(v5, a2++);
      --v3;
    }

    while (v3);
  }
}

void sub_2714D9F98(uint64_t result, _WORD *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(result + 48);
    v5 = 2 * a3;
    do
    {
      sub_27183F9D0(v4, a2++);
      v5 -= 2;
    }

    while (v5);
  }
}

void sub_2714D9FE8(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(result + 48);
    v5 = 4 * a3;
    do
    {
      sub_27183FB7C(v4, a2++);
      v5 -= 4;
    }

    while (v5);
  }
}

void sub_2714DA038(uint64_t result, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(result + 48);
    v5 = 8 * a3;
    do
    {
      sub_27183FD78(v4, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714DA088(uint64_t result, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(result + 48);
    v5 = 8 * a3;
    do
    {
      sub_27183FF6C(v4, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714DA0D8(uint64_t result, float *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(result + 48);
    v5 = 4 * a3;
    do
    {
      sub_271840060(v4, a2++);
      v5 -= 4;
    }

    while (v5);
  }
}

void sub_2714DA128(uint64_t result, double *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(result + 48);
    v5 = 8 * a3;
    do
    {
      sub_2718401A8(v4, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714DA178(uint64_t result, void ***a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(result + 48);
    v5 = 24 * a3;
    do
    {
      sub_2718403E0(v4, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }
}

void sub_2714DA1D8(void *a1)
{
  *(a1 - 2) = &unk_288116F00;
  *a1 = &unk_288117048;
  sub_271841CCC(a1 + 4, 0);
  *a1 = &unk_288116BC0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;

    operator delete(v2);
  }
}

void sub_2714DA280(void *a1)
{
  *(a1 - 2) = &unk_288116F00;
  *a1 = &unk_288117048;
  sub_271841CCC(a1 + 4, 0);
  *a1 = &unk_288116BC0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714DA334(void *a1)
{
  v3 = 0;
  sub_27183FF6C(a1[4], &v3);
  *&v2 = (*(*a1 + 32))(a1);
  *(&v2 + 1) = v3;
  sub_2713BF82C((a1 + 1), &v2);
}

uint64_t sub_2714DA3A8(void *a1)
{
  v2 = a1[2];
  result = (*(*a1 + 32))(a1);
  v4 = *(v2 - 16) - result + *(v2 - 8);
  if (v4)
  {
    result = (*(*a1 + 40))(a1, v4);
  }

  a1[2] -= 16;
  return result;
}

void sub_2714DA434(void *a1, uint64_t a2, unsigned int a3)
{
  v43 = *MEMORY[0x277D85DE8];
  if (a3 > 2)
  {
    v6 = (a1 + 6);
    v5 = a1[6];
    v20[0] = 0;
    sub_27183FF6C(v5, v20);
    *&v36 = (*(a1[2] + 32))(a1 + 2);
    *(&v36 + 1) = v20[0];
    sub_2713BF82C((a1 + 3), &v36);
    sub_2718403E0(*v6, a2);
    sub_27183FF6C(*v6, (a2 + 24));
    LODWORD(v36) = 6;
    sub_27183FB7C(*v6, &v36);
    sub_2713BF6F4(&v36, a1, a2 + 32, v36);
    v7 = a1[4];
    v8 = *(v7 - 16) - (*(a1[2] + 32))(v6 - 4) + *(v7 - 8);
    if (v8)
    {
      (*(a1[2] + 40))(v6 - 4, v8);
    }

    a1[4] -= 16;
    return;
  }

  LOBYTE(v36) = 0;
  *&v37[7] = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  memset(v42, 0, sizeof(v42));
  sub_2718403E0(a1[6], &v36);
  sub_27183FF6C(a1[6], &v37[8]);
  if (a3 == 1)
  {
    LODWORD(v20[0]) = 2;
    sub_27183FB7C(a1[6], v20);
    sub_2713BFE58(v20, a1, &v38 + 1, v20[0]);
  }

  else
  {
    LODWORD(v20[0]) = 6;
    sub_27183FB7C(a1[6], v20);
    sub_2713BF6F4(v20, a1, &v37[16], LODWORD(v20[0]));
  }

  if ((v37[7] & 0x80000000) != 0)
  {
    sub_271127178(v20, v36, *(&v36 + 1));
  }

  else
  {
    *v20 = v36;
    v21 = *v37;
  }

  v22 = *&v37[8];
  sub_2713B3058(v23, &v37[16]);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = *v20;
  v10 = v21;
  v11 = v22;
  HIBYTE(v21) = 0;
  LOBYTE(v20[0]) = 0;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  sub_2713BCEE8(a2 + 32, v23);
  if (v35 == 1)
  {
    v12 = __p;
    if (__p)
    {
      v13 = v34;
      v14 = __p;
      if (v34 != __p)
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

      v34 = v12;
      operator delete(v14);
    }
  }

  if (v32 == 1 && v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
    if (v42[97] != 1)
    {
      goto LABEL_43;
    }

LABEL_35:
    v16 = *&v42[73];
    if (*&v42[73])
    {
      v17 = *&v42[81];
      v18 = *&v42[73];
      if (*&v42[81] != *&v42[73])
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
        v18 = *&v42[73];
      }

      *&v42[81] = v16;
      operator delete(v18);
    }

    goto LABEL_43;
  }

  if (v42[97] == 1)
  {
    goto LABEL_35;
  }

LABEL_43:
  if (v42[65] == 1 && (v42[64] & 0x80000000) != 0)
  {
    operator delete(*&v42[41]);
  }

  if (v42[33] == 1 && (v42[32] & 0x80000000) != 0)
  {
    operator delete(*&v42[9]);
  }

  if (BYTE9(v40) == 1 && SBYTE8(v40) < 0)
  {
    operator delete(*(&v39 + 1));
  }

  if ((v37[7] & 0x80000000) != 0)
  {
    operator delete(v36);
  }
}

uint64_t sub_2714DA8AC(uint64_t result)
{
  if (*(result + 128) == 1 && (*(result + 120) & 1) == 0 && *(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v1 = result;
        operator delete(*(result + 80));
        result = v1;
      }

      if (*(result + 71) < 0)
      {
        v2 = result;
        operator delete(*(result + 48));
        result = v2;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v3 = result;
      operator delete(*(result + 16));
      return v3;
    }
  }

  return result;
}

uint64_t sub_2714DA96C(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *v1;
  v4 = v1[1];
  *(v3 + 128) = 1;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
  *(v3 + 130) = 0;
  *(v3 + 132) = 0;
  LODWORD(v43) = 3;
  sub_27183A9AC(v3, &v43);
  v5 = v43;
  if (v43 > 2)
  {
    ++*(v3 + 80);
    if (*(v3 + 128) == 1 && *(v3 + 131) == 1)
    {
      *(v3 + 132) = 1;
    }

    else
    {
      sub_27183D78C(v3, &v43);
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v6 = v43;
      *(v4 + 16) = *v44;
      *v4 = v6;
      ++*(v3 + 104);
    }

    sub_27183B6AC(v3, (v4 + 24));
    LODWORD(v43) = 6;
    sub_27183A9AC(v3, &v43);
    if (v43 >= 6)
    {
      v7 = 6;
    }

    else
    {
      v7 = v43;
    }

    if (v43 <= 2)
    {
      sub_2713C30AC(&v43, v3, v4 + 32, v7);
      goto LABEL_68;
    }

    sub_2713C32B8(v3, v4 + 32, v7);
    while ((*(v3 + 131) & 1) == 0 && (*(*(v3 + 16) + *(**(v3 + 16) - 24) + 32) & 2) == 0)
    {
      sub_27183D78C(v3, &v43);
      if ((v44[7] & 0x80000000) != 0)
      {
        if (*(&v43 + 1) == 1 && *(v3 + 72) == *v43)
        {
LABEL_25:
          v8 = 0;
          if ((v44[7] & 0x80000000) != 0)
          {
            goto LABEL_28;
          }

          goto LABEL_16;
        }
      }

      else if (v44[7] == 1 && *(v3 + 72) == v43)
      {
        goto LABEL_25;
      }

      v8 = 1;
      if ((v44[7] & 0x80000000) != 0)
      {
LABEL_28:
        operator delete(v43);
      }

LABEL_16:
      if ((v8 & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    while (1)
    {
LABEL_68:
      if ((*(v3 + 131) & 1) != 0 || (*(*(v3 + 16) + *(**(v3 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_128;
      }

      sub_27183D78C(v3, &v43);
      if ((v44[7] & 0x80000000) != 0)
      {
        if (*(&v43 + 1) == 1 && *(v3 + 72) == *v43)
        {
LABEL_76:
          v12 = 0;
          if ((v44[7] & 0x80000000) != 0)
          {
            goto LABEL_79;
          }

          goto LABEL_67;
        }
      }

      else if (v44[7] == 1 && *(v3 + 72) == v43)
      {
        goto LABEL_76;
      }

      v12 = 1;
      if ((v44[7] & 0x80000000) != 0)
      {
LABEL_79:
        operator delete(v43);
      }

LABEL_67:
      if ((v12 & 1) == 0)
      {
        goto LABEL_128;
      }
    }
  }

  LOBYTE(v43) = 0;
  v47 = 0u;
  v48 = 0u;
  memset(v49, 0, sizeof(v49));
  *&v44[7] = 0u;
  v45 = 0u;
  v46 = 0u;
  ++*(v3 + 80);
  if (*(v3 + 128) == 1 && *(v3 + 131) == 1)
  {
    *(v3 + 132) = 1;
  }

  else
  {
    sub_27183D78C(v3, __p);
    if ((v44[7] & 0x80000000) != 0)
    {
      operator delete(v43);
    }

    v43 = *__p;
    *v44 = v28;
    ++*(v3 + 104);
  }

  sub_27183B6AC(v3, &v44[8]);
  if (v5 != 1)
  {
    LODWORD(__p[0]) = 6;
    sub_27183A9AC(v3, __p);
    if (LODWORD(__p[0]) >= 6)
    {
      v10 = 6;
    }

    else
    {
      v10 = LODWORD(__p[0]);
    }

    if (LODWORD(__p[0]) <= 2)
    {
      sub_2713C30AC(__p, v3, &v44[16], v10);
      goto LABEL_82;
    }

    sub_2713C32B8(v3, &v44[16], v10);
    while (1)
    {
      if ((*(v3 + 131) & 1) != 0 || (*(*(v3 + 16) + *(**(v3 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_82;
      }

      sub_27183D78C(v3, __p);
      if (SHIBYTE(v28) < 0)
      {
        if (__p[1] == 1 && *(v3 + 72) == *__p[0])
        {
LABEL_62:
          v11 = 0;
          if (SHIBYTE(v28) < 0)
          {
            goto LABEL_65;
          }

          goto LABEL_53;
        }
      }

      else if (SHIBYTE(v28) == 1 && *(v3 + 72) == LOBYTE(__p[0]))
      {
        goto LABEL_62;
      }

      v11 = 1;
      if (SHIBYTE(v28) < 0)
      {
LABEL_65:
        operator delete(__p[0]);
      }

LABEL_53:
      if ((v11 & 1) == 0)
      {
        goto LABEL_82;
      }
    }
  }

  LODWORD(__p[0]) = 2;
  sub_27183A9AC(v3, __p);
  if (LODWORD(__p[0]) > 1)
  {
    sub_27183B36C(v3, (&v45 + 1));
    LOBYTE(__p[0]) = 0;
    sub_271839D90(v3, __p);
    BYTE9(v45) = __p[0];
    while (1)
    {
      if ((*(v3 + 131) & 1) != 0 || (*(*(v3 + 16) + *(**(v3 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_82;
      }

      sub_27183D78C(v3, __p);
      if (SHIBYTE(v28) < 0)
      {
        if (__p[1] == 1 && *(v3 + 72) == *__p[0])
        {
LABEL_44:
          v9 = 0;
          if (SHIBYTE(v28) < 0)
          {
            goto LABEL_47;
          }

          goto LABEL_35;
        }
      }

      else if (SHIBYTE(v28) == 1 && *(v3 + 72) == LOBYTE(__p[0]))
      {
        goto LABEL_44;
      }

      v9 = 1;
      if (SHIBYTE(v28) < 0)
      {
LABEL_47:
        operator delete(__p[0]);
      }

LABEL_35:
      if ((v9 & 1) == 0)
      {
        goto LABEL_82;
      }
    }
  }

  __p[0] = 0;
  LOBYTE(__p[1]) = 0;
  sub_27183B36C(v3, __p);
  v26 = 0;
  sub_271839D90(v3, &v26);
  *(&v45 + 1) = __p[0];
  BYTE9(v45) = v26;
LABEL_82:
  if ((v44[7] & 0x80000000) != 0)
  {
    sub_271127178(__p, v43, *(&v43 + 1));
  }

  else
  {
    *__p = v43;
    v28 = *v44;
  }

  v29 = *&v44[8];
  sub_2713B3058(v30, &v44[16]);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  v13 = *__p;
  *(v4 + 16) = v28;
  *v4 = v13;
  HIBYTE(v28) = 0;
  LOBYTE(__p[0]) = 0;
  *(v4 + 24) = v29;
  sub_2713BCEE8(v4 + 32, v30);
  if (v42 == 1)
  {
    v14 = v40;
    if (v40)
    {
      v15 = v41;
      v16 = v40;
      if (v41 != v40)
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
        v16 = v40;
      }

      v41 = v14;
      operator delete(v16);
    }
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v33 == 1 && v32 < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
    if (v49[97] != 1)
    {
      goto LABEL_117;
    }

LABEL_109:
    v18 = *&v49[73];
    if (*&v49[73])
    {
      v19 = *&v49[81];
      v20 = *&v49[73];
      if (*&v49[81] != *&v49[73])
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
        v20 = *&v49[73];
      }

      *&v49[81] = v18;
      operator delete(v20);
    }

    goto LABEL_117;
  }

  if (v49[97] == 1)
  {
    goto LABEL_109;
  }

LABEL_117:
  if (v49[65] == 1 && (v49[64] & 0x80000000) != 0)
  {
    operator delete(*&v49[41]);
  }

  if (v49[33] == 1 && (v49[32] & 0x80000000) != 0)
  {
    operator delete(*&v49[9]);
  }

  if (BYTE9(v47) == 1 && SBYTE8(v47) < 0)
  {
    operator delete(*(&v46 + 1));
  }

  if ((v44[7] & 0x80000000) != 0)
  {
    operator delete(v43);
  }

LABEL_128:
  result = sub_27183DB7C(v3);
  if (*(v2 + 128) == 1 && (*(v2 + 120) & 1) == 0 && *(v2 + 112) == 1)
  {
    if (*(v2 + 104) == 1)
    {
      if (*(v2 + 103) < 0)
      {
        v23 = result;
        operator delete(*(v2 + 80));
        result = v23;
      }

      if (*(v2 + 71) < 0)
      {
        v24 = result;
        operator delete(*(v2 + 48));
        result = v24;
      }
    }

    if (*(v2 + 40) == 1 && *(v2 + 39) < 0)
    {
      v25 = result;
      operator delete(*(v2 + 16));
      result = v25;
    }
  }

  *v2 = result;
  *(v2 + 120) = 1;
  *(v2 + 128) = 1;
  return result;
}

void sub_2714DB1E0(std::string *this, void *a2, void *a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  while (1)
  {
    if (!a2)
    {
      if (!a3)
      {
        return;
      }

      a2 = 0;
      if (a3[3] != a3[4])
      {
        goto LABEL_20;
      }

      v6 = 1;
      goto LABEL_17;
    }

    if (a2[3] != a2[4])
    {
      if (!a3)
      {
        goto LABEL_20;
      }

      if (a3[3] != a3[4])
      {
        return;
      }

      v6 = 0;
      goto LABEL_17;
    }

    v7 = (*(*a2 + 72))(a2);
    v6 = v7 == -1;
    if (v7 == -1)
    {
      a2 = 0;
    }

    if (a3)
    {
      break;
    }

    if (v7 == -1)
    {
      return;
    }

    a3 = 0;
    v9 = a2[3];
    if (v9 == a2[4])
    {
LABEL_24:
      v10 = (*(*a2 + 72))(a2);
      goto LABEL_25;
    }

LABEL_21:
    v10 = *v9;
LABEL_25:
    std::string::push_back(this, v10);
    v11 = a2[3];
    if (v11 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v11 + 1;
    }
  }

  if (a3[3] != a3[4])
  {
    if (v7 != -1)
    {
      return;
    }

LABEL_20:
    v9 = a2[3];
    if (v9 == a2[4])
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_17:
  v8 = (*(*a3 + 72))(a3);
  if (v8 == -1)
  {
    a3 = 0;
  }

  if (v6 != (v8 == -1))
  {
    goto LABEL_20;
  }
}

void sub_2714DB38C(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

void sub_2714DB3BC(uint64_t a1)
{
  *a1 = &unk_288114DE0;
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    (*(a1 + 24))();
  }

  JUMPOUT(0x2743BF050);
}

unsigned __int8 *sub_2714DB45C(void *a1, _BYTE *a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v6 = 0;
  result = sub_2715D6D58(v4, &v6);
  *a2 = v6;
  return result;
}

void sub_2714DB4B8(void *a1, void *a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v5 = 0;
  sub_2715D6A90(v4, &v5);
  *a2 = v5;
}

void sub_2714DB508(void *a1, void *a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v5 = 0;
  sub_2715D6A90(v4, &v5);
  *a2 = v5;
}

void sub_2714DB568(void *a1, void *a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v5 = 0;
  sub_2715D693C(v4, &v5);
  *a2 = v5;
}

void sub_2714DB5B8(void *a1, void *a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v5 = 0;
  sub_2715D693C(v4, &v5);
  *a2 = v5;
}

void sub_2714DB608(void *a1, float *a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  *a2 = sub_271833EE4(v4);
}

double sub_2714DB648(void *a1, uint64_t a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v7 = 0;
  v6 = 0uLL;
  sub_2715D6E6C(v4, &v6);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  return result;
}

void sub_2714DB6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DB6D0(void *a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182F798(a1, v3);
}

void sub_2714DB6F8(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  sub_27182ED00(v4, v5);
}

void sub_2714DB73C(void *a1, _WORD *a2, _WORD *a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  sub_27182EEF8(v4, v5);
}

void sub_2714DB780(void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  sub_27182F0F0(v4, v5);
}

void sub_2714DB7C4(void *a1, uint64_t a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_271831164(v4, &v17);
  v5 = v17;
  v6 = v18;
  if (v17 != v18)
  {
    v7 = v18 - v17 - 8;
    v8 = a2;
    v9 = v17;
    if (v7 < 0x18)
    {
      goto LABEL_11;
    }

    v10 = (v7 >> 3) + 1;
    v11 = v10 & 0x3FFFFFFFFFFFFFFCLL;
    v8 = (a2 + v11 * 8);
    v9 = &v17[v11];
    v12 = (v17 + 2);
    v13 = (a2 + 16);
    v14 = v10 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v15 = *v12;
      *(v13 - 1) = *(v12 - 1);
      *v13 = v15;
      v12 += 2;
      v13 += 2;
      v14 -= 4;
    }

    while (v14);
    if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_11:
      do
      {
        v16 = *v9++;
        *v8++ = v16;
      }

      while (v9 != v6);
    }
  }

  if (v5)
  {
    v18 = v5;
    operator delete(v5);
  }
}

void sub_2714DB894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DB8B0(void *a1, void *a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_271831164(v4, &v6);
  v5 = v6;
  if (v7 != v6)
  {
    memmove(a2, v6, v7 - v6);
  }

  if (v5)
  {
    v7 = v5;
    operator delete(v5);
  }
}

void sub_2714DB924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DB940(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  sub_27182D810(v4, v5);
}

void sub_2714DB984(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  sub_27182EDD8(v4, v5);
}

void sub_2714DB9C8(void *a1, _WORD *a2, _WORD *a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  sub_27182F018(v4, v5);
}

void sub_2714DBA0C(void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  sub_27182F1C8(v4, v5);
}

void sub_2714DBA50(void *a1, uint64_t a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_271831430(v4, &v17);
  v5 = v17;
  v6 = v18;
  if (v17 != v18)
  {
    v7 = v18 - v17 - 8;
    v8 = a2;
    v9 = v17;
    if (v7 < 0x18)
    {
      goto LABEL_11;
    }

    v10 = (v7 >> 3) + 1;
    v11 = v10 & 0x3FFFFFFFFFFFFFFCLL;
    v8 = (a2 + v11 * 8);
    v9 = &v17[v11];
    v12 = (v17 + 2);
    v13 = (a2 + 16);
    v14 = v10 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v15 = *v12;
      *(v13 - 1) = *(v12 - 1);
      *v13 = v15;
      v12 += 2;
      v13 += 2;
      v14 -= 4;
    }

    while (v14);
    if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_11:
      do
      {
        v16 = *v9++;
        *v8++ = v16;
      }

      while (v9 != v6);
    }
  }

  if (v5)
  {
    v18 = v5;
    operator delete(v5);
  }
}

void sub_2714DBB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DBB3C(void *a1, void *a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_271831430(v4, &v6);
  v5 = v6;
  if (v7 != v6)
  {
    memmove(a2, v6, v7 - v6);
  }

  if (v5)
  {
    v7 = v5;
    operator delete(v5);
  }
}

void sub_2714DBBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DBBCC(void *a1, float *a2, float *a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  sub_27182F4D4(v4, v5);
}

void sub_2714DBC10(void *a1, double *a2, double *a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  sub_27182F5F0(v4, v5);
}

void sub_2714DBC54(void *a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182F860(a1, v3);
}

void sub_2714DBC7C(void *a1, void *a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];

  sub_27182D810(v4, a2);
}

void sub_2714DBCCC(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  __p[0] = *(a1 + 32);
  v4 = sub_27182D6C4(a1);
  v5 = (a1 + 112);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, __p);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  __p[0] = "version";
  __p[1] = 7;
  *v16 = 3;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, v16);
  v6 = *v16;
  if (*v16 >= 3u)
  {
    v7 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    __p[1] = 0;
    *v16 = 0;
    __p[0] = 0;
    sub_2715D6E6C(v7, __p);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = *__p;
    *(a2 + 16) = *v16;
    v8 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    __p[0] = 0;
    sub_2715D693C(v8, __p);
    *(a2 + 24) = __p[0];
    sub_2713BB450(a1, a2 + 32);
  }

  LOBYTE(__p[0]) = 0;
  *&v16[7] = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v9 = sub_27182D6C4(a1);
  ++*v5;
  v13[1] = 0;
  v14 = 0;
  v13[0] = 0;
  sub_2715D6E6C(v9, v13);
  if ((v16[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  *__p = *v13;
  *v16 = v14;
  v10 = sub_27182D6C4(a1);
  ++*v5;
  v13[0] = 0;
  sub_2715D693C(v10, v13);
  *&v16[8] = v13[0];
  if (v6 == 1)
  {
    v13[0] = *(a1 + 32);
    v11 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    *(a1 + 32) = v11;
    sub_27182D194(a1 + 40, v13);
    sub_2717313F0(a1 + 64, (a1 + 112));
    *(a1 + 112) = 0;
    if (*(a1 + 104) == 1)
    {
      *(a1 + 104) = 0;
    }

    v13[0] = "version";
    v13[1] = 7;
    LODWORD(v14) = 2;
    *(a1 + 88) = "version";
    *(a1 + 96) = 7;
    *(a1 + 104) = 1;
    sub_27182EB6C(a1, &v14);
    if (v14 >= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = v14;
    }

    sub_2713BBD0C(a1, (&v17 + 1), v12);
  }

  sub_2713BB450(a1, &v16[16]);
}