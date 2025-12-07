uint64_t CMMsl::NonlinearBiasFit::readFrom(CMMsl::NonlinearBiasFit *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v14 = 0;
      v15 = 0;
      v10 = 0;
      v16 = (v7 + v2);
      v17 = v3 >= v2;
      v18 = v3 - v2;
      if (!v17)
      {
        v18 = 0;
      }

      v19 = v2 + 1;
      while (v18)
      {
        v20 = *v16;
        *(a2 + 1) = v19;
        v10 |= (v20 & 0x7F) << v14;
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v14 += 7;
        ++v16;
        --v18;
        ++v19;
        v56 = v15++ > 8;
        if (v56)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v56 = v9++ > 8;
      if (v56)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    v21 = v10 & 7;
    if (v21 == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 4)
    {
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          if (v21 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_415;
            }

            v135 = *(a2 + 1);
            v136 = *(a2 + 2);
            while (v135 < v136 && (*(a2 + 24) & 1) == 0)
            {
              v138 = *(this + 20);
              v137 = *(this + 21);
              if (v138 >= v137)
              {
                v140 = *(this + 19);
                v141 = v138 - v140;
                v142 = (v138 - v140) >> 2;
                v143 = v142 + 1;
                if ((v142 + 1) >> 62)
                {
                  goto LABEL_417;
                }

                v144 = v137 - v140;
                if (v144 >> 1 > v143)
                {
                  v143 = v144 >> 1;
                }

                if (v144 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v145 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v145 = v143;
                }

                if (v145)
                {
                  sub_25AD288E8(v145);
                }

                v146 = (v138 - v140) >> 2;
                v147 = (4 * v142);
                v148 = (4 * v142 - 4 * v146);
                *v147 = 0;
                v139 = v147 + 1;
                memcpy(v148, v140, v141);
                v149 = *(this + 19);
                *(this + 19) = v148;
                *(this + 20) = v139;
                *(this + 21) = 0;
                if (v149)
                {
                  operator delete(v149);
                }
              }

              else
              {
                *v138 = 0;
                v139 = v138 + 4;
              }

              *(this + 20) = v139;
              v150 = *(a2 + 1);
              if (v150 > 0xFFFFFFFFFFFFFFFBLL || v150 + 4 > *(a2 + 2))
              {
LABEL_265:
                *(a2 + 24) = 1;
                goto LABEL_266;
              }

              *(v139 - 1) = *(*a2 + v150);
              v136 = *(a2 + 2);
              v135 = *(a2 + 1) + 4;
              *(a2 + 1) = v135;
            }

            goto LABEL_266;
          }

          v184 = *(this + 20);
          v183 = *(this + 21);
          if (v184 >= v183)
          {
            v205 = *(this + 19);
            v206 = v184 - v205;
            v207 = (v184 - v205) >> 2;
            v208 = v207 + 1;
            if ((v207 + 1) >> 62)
            {
              goto LABEL_417;
            }

            v209 = v183 - v205;
            if (v209 >> 1 > v208)
            {
              v208 = v209 >> 1;
            }

            if (v209 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v210 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v210 = v208;
            }

            if (v210)
            {
              sub_25AD288E8(v210);
            }

            v258 = (v184 - v205) >> 2;
            v259 = (4 * v207);
            v260 = (4 * v207 - 4 * v258);
            *v259 = 0;
            v179 = v259 + 1;
            memcpy(v260, v205, v206);
            v261 = *(this + 19);
            *(this + 19) = v260;
            *(this + 20) = v179;
            *(this + 21) = 0;
            if (v261)
            {
              operator delete(v261);
            }
          }

          else
          {
            *v184 = 0;
            v179 = v184 + 4;
          }

          *(this + 20) = v179;
          goto LABEL_366;
        }

        if (v22 != 4)
        {
          goto LABEL_17;
        }

        *(this + 180) |= 1u;
        v66 = *(a2 + 1);
        if (v66 > 0xFFFFFFFFFFFFFFFBLL || v66 + 4 > *(a2 + 2))
        {
LABEL_368:
          *(a2 + 24) = 1;
          goto LABEL_409;
        }

        *(this + 44) = *(*a2 + v66);
      }

      else
      {
        if (v22 == 1)
        {
          if (v21 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_415;
            }

            v93 = *(a2 + 1);
            v94 = *(a2 + 2);
            while (v93 < v94 && (*(a2 + 24) & 1) == 0)
            {
              v96 = *(this + 17);
              v95 = *(this + 18);
              if (v96 >= v95)
              {
                v98 = *(this + 16);
                v99 = v96 - v98;
                v100 = (v96 - v98) >> 2;
                v101 = v100 + 1;
                if ((v100 + 1) >> 62)
                {
                  goto LABEL_417;
                }

                v102 = v95 - v98;
                if (v102 >> 1 > v101)
                {
                  v101 = v102 >> 1;
                }

                if (v102 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v103 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v103 = v101;
                }

                if (v103)
                {
                  sub_25AD288E8(v103);
                }

                v104 = (v96 - v98) >> 2;
                v105 = (4 * v100);
                v106 = (4 * v100 - 4 * v104);
                *v105 = 0;
                v97 = v105 + 1;
                memcpy(v106, v98, v99);
                v107 = *(this + 16);
                *(this + 16) = v106;
                *(this + 17) = v97;
                *(this + 18) = 0;
                if (v107)
                {
                  operator delete(v107);
                }
              }

              else
              {
                *v96 = 0;
                v97 = v96 + 4;
              }

              *(this + 17) = v97;
              v108 = *(a2 + 1);
              if (v108 > 0xFFFFFFFFFFFFFFFBLL || v108 + 4 > *(a2 + 2))
              {
                goto LABEL_265;
              }

              *(v97 - 1) = *(*a2 + v108);
              v94 = *(a2 + 2);
              v93 = *(a2 + 1) + 4;
              *(a2 + 1) = v93;
            }

            goto LABEL_266;
          }

          v178 = *(this + 17);
          v177 = *(this + 18);
          if (v178 >= v177)
          {
            v193 = *(this + 16);
            v194 = v178 - v193;
            v195 = (v178 - v193) >> 2;
            v196 = v195 + 1;
            if ((v195 + 1) >> 62)
            {
              goto LABEL_417;
            }

            v197 = v177 - v193;
            if (v197 >> 1 > v196)
            {
              v196 = v197 >> 1;
            }

            if (v197 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v198 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v198 = v196;
            }

            if (v198)
            {
              sub_25AD288E8(v198);
            }

            v235 = (v178 - v193) >> 2;
            v236 = (4 * v195);
            v237 = (4 * v195 - 4 * v235);
            *v236 = 0;
            v179 = v236 + 1;
            memcpy(v237, v193, v194);
            v238 = *(this + 16);
            *(this + 16) = v237;
            *(this + 17) = v179;
            *(this + 18) = 0;
            if (v238)
            {
              operator delete(v238);
            }
          }

          else
          {
            *v178 = 0;
            v179 = v178 + 4;
          }

          *(this + 17) = v179;
        }

        else
        {
          if (v22 != 2)
          {
            goto LABEL_17;
          }

          if (v21 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_415;
            }

            v23 = *(a2 + 1);
            v24 = *(a2 + 2);
            while (v23 < v24 && (*(a2 + 24) & 1) == 0)
            {
              v26 = *(this + 14);
              v25 = *(this + 15);
              if (v26 >= v25)
              {
                v28 = *(this + 13);
                v29 = v26 - v28;
                v30 = (v26 - v28) >> 2;
                v31 = v30 + 1;
                if ((v30 + 1) >> 62)
                {
                  goto LABEL_417;
                }

                v32 = v25 - v28;
                if (v32 >> 1 > v31)
                {
                  v31 = v32 >> 1;
                }

                if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v33 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v33 = v31;
                }

                if (v33)
                {
                  sub_25AD288E8(v33);
                }

                v34 = (v26 - v28) >> 2;
                v35 = (4 * v30);
                v36 = (4 * v30 - 4 * v34);
                *v35 = 0;
                v27 = v35 + 1;
                memcpy(v36, v28, v29);
                v37 = *(this + 13);
                *(this + 13) = v36;
                *(this + 14) = v27;
                *(this + 15) = 0;
                if (v37)
                {
                  operator delete(v37);
                }
              }

              else
              {
                *v26 = 0;
                v27 = v26 + 4;
              }

              *(this + 14) = v27;
              v38 = *(a2 + 1);
              if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(a2 + 2))
              {
                goto LABEL_265;
              }

              *(v27 - 1) = *(*a2 + v38);
              v24 = *(a2 + 2);
              v23 = *(a2 + 1) + 4;
              *(a2 + 1) = v23;
            }

LABEL_266:
            PB::Reader::recallMark();
            goto LABEL_409;
          }

          v188 = *(this + 14);
          v187 = *(this + 15);
          if (v188 >= v187)
          {
            v217 = *(this + 13);
            v218 = v188 - v217;
            v219 = (v188 - v217) >> 2;
            v220 = v219 + 1;
            if ((v219 + 1) >> 62)
            {
LABEL_417:
              sub_25AAE66B8();
            }

            v221 = v187 - v217;
            if (v221 >> 1 > v220)
            {
              v220 = v221 >> 1;
            }

            if (v221 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v222 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v222 = v220;
            }

            if (v222)
            {
              sub_25AD288E8(v222);
            }

            v280 = (v188 - v217) >> 2;
            v281 = (4 * v219);
            v282 = (4 * v219 - 4 * v280);
            *v281 = 0;
            v179 = v281 + 1;
            memcpy(v282, v217, v218);
            v283 = *(this + 13);
            *(this + 13) = v282;
            *(this + 14) = v179;
            *(this + 15) = 0;
            if (v283)
            {
              operator delete(v283);
            }
          }

          else
          {
            *v188 = 0;
            v179 = v188 + 4;
          }

          *(this + 14) = v179;
        }

LABEL_366:
        v284 = *(a2 + 1);
        if (v284 > 0xFFFFFFFFFFFFFFFBLL || v284 + 4 > *(a2 + 2))
        {
          goto LABEL_368;
        }

        *(v179 - 1) = *(*a2 + v284);
      }

      *(a2 + 1) += 4;
      goto LABEL_409;
    }

    if (v22 > 6)
    {
      if (v22 == 7)
      {
        if (v21 == 2)
        {
          if (PB::Reader::placeMark())
          {
LABEL_415:
            v321 = 0;
            return v321 & 1;
          }

          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v39 = *(this + 5);
            while (1)
            {
              v151 = *(this + 6);
              if (v39 >= v151)
              {
                v152 = *(this + 4);
                v153 = v39 - v152;
                v154 = (v39 - v152) >> 2;
                v155 = v154 + 1;
                if ((v154 + 1) >> 62)
                {
                  goto LABEL_418;
                }

                v156 = v151 - v152;
                if (v156 >> 1 > v155)
                {
                  v155 = v156 >> 1;
                }

                if (v156 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v157 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v157 = v155;
                }

                if (v157)
                {
                  sub_25AD288E8(v157);
                }

                v158 = (v39 - v152) >> 2;
                v159 = (4 * v154);
                v160 = (4 * v154 - 4 * v158);
                *v159 = 0;
                v39 = (v159 + 1);
                memcpy(v160, v152, v153);
                v161 = *(this + 4);
                *(this + 4) = v160;
                *(this + 5) = v39;
                *(this + 6) = 0;
                if (v161)
                {
                  operator delete(v161);
                }
              }

              else
              {
                *v39 = 0;
                v39 += 4;
              }

              *(this + 5) = v39;
              v163 = *(a2 + 1);
              v162 = *(a2 + 2);
              v164 = *a2;
              v165 = 0;
              v166 = 0;
              if (v163 > 0xFFFFFFFFFFFFFFF5 || v163 + 10 > v162)
              {
                break;
              }

              v173 = 0;
              v174 = (v164 + v163);
              v175 = v163 + 1;
              while (1)
              {
                v171 = v175;
                *(a2 + 1) = v175;
                v176 = *v174++;
                v173 |= (v176 & 0x7F) << v165;
                if ((v176 & 0x80) == 0)
                {
                  break;
                }

                v165 += 7;
                ++v175;
                v56 = v166++ > 8;
                if (v56)
                {
                  goto LABEL_244;
                }
              }

LABEL_247:
              *(v39 - 1) = v173;
              if (v171 >= v162 || (*(a2 + 24) & 1) != 0)
              {
                goto LABEL_266;
              }
            }

            v173 = 0;
            v168 = (v164 + v163);
            v169 = v162 - v163;
            if (v162 < v163)
            {
              v169 = 0;
            }

            v170 = v163 + 1;
            while (v169)
            {
              v171 = v170;
              v172 = *v168;
              *(a2 + 1) = v171;
              v173 |= (v172 & 0x7F) << v165;
              if ((v172 & 0x80) == 0)
              {
                if (*(a2 + 24))
                {
                  LODWORD(v173) = 0;
                }

                goto LABEL_247;
              }

              v165 += 7;
              ++v168;
              --v169;
              v170 = v171 + 1;
              v56 = v166++ > 8;
              if (v56)
              {
LABEL_244:
                LODWORD(v173) = 0;
                goto LABEL_247;
              }
            }

LABEL_250:
            *(a2 + 24) = 1;
            *(v39 - 1) = 0;
          }

          goto LABEL_266;
        }

        v186 = *(this + 5);
        v185 = *(this + 6);
        if (v186 >= v185)
        {
          v211 = *(this + 4);
          v212 = v186 - v211;
          v213 = (v186 - v211) >> 2;
          v214 = v213 + 1;
          if ((v213 + 1) >> 62)
          {
            goto LABEL_418;
          }

          v215 = v185 - v211;
          if (v215 >> 1 > v214)
          {
            v214 = v215 >> 1;
          }

          if (v215 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v216 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v216 = v214;
          }

          if (v216)
          {
            sub_25AD288E8(v216);
          }

          v262 = (v186 - v211) >> 2;
          v263 = (4 * v213);
          v264 = (4 * v213 - 4 * v262);
          *v263 = 0;
          v182 = v263 + 1;
          memcpy(v264, v211, v212);
          v265 = *(this + 4);
          *(this + 4) = v264;
          *(this + 5) = v182;
          *(this + 6) = 0;
          if (v265)
          {
            operator delete(v265);
          }
        }

        else
        {
          *v186 = 0;
          v182 = v186 + 4;
        }

        *(this + 5) = v182;
        v267 = *(a2 + 1);
        v266 = *(a2 + 2);
        v268 = *a2;
        if (v267 <= 0xFFFFFFFFFFFFFFF5 && v267 + 10 <= v266)
        {
          v269 = 0;
          v270 = 0;
          v248 = 0;
          v271 = (v268 + v267);
          v272 = v267 + 1;
          while (1)
          {
            *(a2 + 1) = v272;
            v273 = *v271++;
            v248 |= (v273 & 0x7F) << v269;
            if ((v273 & 0x80) == 0)
            {
              goto LABEL_408;
            }

            v269 += 7;
            ++v272;
            v56 = v270++ > 8;
            if (v56)
            {
              goto LABEL_404;
            }
          }
        }

        v274 = 0;
        v275 = 0;
        v248 = 0;
        v276 = (v268 + v267);
        v17 = v266 >= v267;
        v277 = v266 - v267;
        if (!v17)
        {
          v277 = 0;
        }

        v278 = v267 + 1;
        while (v277)
        {
          v279 = *v276;
          *(a2 + 1) = v278;
          v248 |= (v279 & 0x7F) << v274;
          if ((v279 & 0x80) == 0)
          {
LABEL_406:
            if (*(a2 + 24))
            {
              LODWORD(v248) = 0;
            }

            goto LABEL_408;
          }

          v274 += 7;
          ++v276;
          --v277;
          ++v278;
          v56 = v275++ > 8;
          if (v56)
          {
LABEL_404:
            LODWORD(v248) = 0;
            goto LABEL_408;
          }
        }
      }

      else
      {
        if (v22 != 8)
        {
LABEL_17:
          if ((PB::Reader::skip(a2) & 1) == 0)
          {
            goto LABEL_415;
          }

          goto LABEL_409;
        }

        if (v21 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_415;
          }

          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v39 = *(this + 8);
            do
            {
              v67 = *(this + 9);
              if (v39 >= v67)
              {
                v68 = *(this + 7);
                v69 = v39 - v68;
                v70 = (v39 - v68) >> 2;
                v71 = v70 + 1;
                if ((v70 + 1) >> 62)
                {
                  goto LABEL_418;
                }

                v72 = v67 - v68;
                if (v72 >> 1 > v71)
                {
                  v71 = v72 >> 1;
                }

                if (v72 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v73 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v73 = v71;
                }

                if (v73)
                {
                  sub_25AD288E8(v73);
                }

                v74 = (v39 - v68) >> 2;
                v75 = (4 * v70);
                v76 = (4 * v70 - 4 * v74);
                *v75 = 0;
                v39 = (v75 + 1);
                memcpy(v76, v68, v69);
                v77 = *(this + 7);
                *(this + 7) = v76;
                *(this + 8) = v39;
                *(this + 9) = 0;
                if (v77)
                {
                  operator delete(v77);
                }
              }

              else
              {
                *v39 = 0;
                v39 += 4;
              }

              *(this + 8) = v39;
              v79 = *(a2 + 1);
              v78 = *(a2 + 2);
              v80 = *a2;
              v81 = 0;
              v82 = 0;
              if (v79 > 0xFFFFFFFFFFFFFFF5 || v79 + 10 > v78)
              {
                v89 = 0;
                v84 = (v80 + v79);
                v85 = v78 - v79;
                if (v78 < v79)
                {
                  v85 = 0;
                }

                v86 = v79 + 1;
                while (1)
                {
                  if (!v85)
                  {
                    goto LABEL_250;
                  }

                  v87 = v86;
                  v88 = *v84;
                  *(a2 + 1) = v87;
                  v89 |= (v88 & 0x7F) << v81;
                  if ((v88 & 0x80) == 0)
                  {
                    break;
                  }

                  v81 += 7;
                  ++v84;
                  --v85;
                  v86 = v87 + 1;
                  v56 = v82++ > 8;
                  if (v56)
                  {
LABEL_126:
                    LODWORD(v89) = 0;
                    goto LABEL_129;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v89) = 0;
                }
              }

              else
              {
                v89 = 0;
                v90 = (v80 + v79);
                v91 = v79 + 1;
                while (1)
                {
                  v87 = v91;
                  *(a2 + 1) = v91;
                  v92 = *v90++;
                  v89 |= (v92 & 0x7F) << v81;
                  if ((v92 & 0x80) == 0)
                  {
                    break;
                  }

                  v81 += 7;
                  ++v91;
                  v56 = v82++ > 8;
                  if (v56)
                  {
                    goto LABEL_126;
                  }
                }
              }

LABEL_129:
              *(v39 - 1) = v89;
            }

            while (v87 < v78 && (*(a2 + 24) & 1) == 0);
          }

          goto LABEL_266;
        }

        v192 = *(this + 8);
        v191 = *(this + 9);
        if (v192 >= v191)
        {
          v229 = *(this + 7);
          v230 = v192 - v229;
          v231 = (v192 - v229) >> 2;
          v232 = v231 + 1;
          if ((v231 + 1) >> 62)
          {
LABEL_418:
            sub_25AAE66B8();
          }

          v233 = v191 - v229;
          if (v233 >> 1 > v232)
          {
            v232 = v233 >> 1;
          }

          if (v233 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v234 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v234 = v232;
          }

          if (v234)
          {
            sub_25AD288E8(v234);
          }

          v303 = (v192 - v229) >> 2;
          v304 = (4 * v231);
          v305 = (4 * v231 - 4 * v303);
          *v304 = 0;
          v182 = v304 + 1;
          memcpy(v305, v229, v230);
          v306 = *(this + 7);
          *(this + 7) = v305;
          *(this + 8) = v182;
          *(this + 9) = 0;
          if (v306)
          {
            operator delete(v306);
          }
        }

        else
        {
          *v192 = 0;
          v182 = v192 + 4;
        }

        *(this + 8) = v182;
        v308 = *(a2 + 1);
        v307 = *(a2 + 2);
        v309 = *a2;
        if (v308 <= 0xFFFFFFFFFFFFFFF5 && v308 + 10 <= v307)
        {
          v310 = 0;
          v311 = 0;
          v248 = 0;
          v312 = (v309 + v308);
          v313 = v308 + 1;
          while (1)
          {
            *(a2 + 1) = v313;
            v314 = *v312++;
            v248 |= (v314 & 0x7F) << v310;
            if ((v314 & 0x80) == 0)
            {
              goto LABEL_408;
            }

            v310 += 7;
            ++v313;
            v56 = v311++ > 8;
            if (v56)
            {
              goto LABEL_404;
            }
          }
        }

        v315 = 0;
        v316 = 0;
        v248 = 0;
        v317 = (v309 + v308);
        v17 = v307 >= v308;
        v318 = v307 - v308;
        if (!v17)
        {
          v318 = 0;
        }

        v319 = v308 + 1;
        while (v318)
        {
          v320 = *v317;
          *(a2 + 1) = v319;
          v248 |= (v320 & 0x7F) << v315;
          if ((v320 & 0x80) == 0)
          {
            goto LABEL_406;
          }

          v315 += 7;
          ++v317;
          --v318;
          ++v319;
          v56 = v316++ > 8;
          if (v56)
          {
            goto LABEL_404;
          }
        }
      }
    }

    else if (v22 == 5)
    {
      if (v21 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_415;
        }

        if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
        {
          v39 = *(this + 11);
          do
          {
            v109 = *(this + 12);
            if (v39 >= v109)
            {
              v110 = *(this + 10);
              v111 = v39 - v110;
              v112 = (v39 - v110) >> 2;
              v113 = v112 + 1;
              if ((v112 + 1) >> 62)
              {
                goto LABEL_418;
              }

              v114 = v109 - v110;
              if (v114 >> 1 > v113)
              {
                v113 = v114 >> 1;
              }

              if (v114 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v115 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v115 = v113;
              }

              if (v115)
              {
                sub_25AD288E8(v115);
              }

              v116 = (v39 - v110) >> 2;
              v117 = (4 * v112);
              v118 = (4 * v112 - 4 * v116);
              *v117 = 0;
              v39 = (v117 + 1);
              memcpy(v118, v110, v111);
              v119 = *(this + 10);
              *(this + 10) = v118;
              *(this + 11) = v39;
              *(this + 12) = 0;
              if (v119)
              {
                operator delete(v119);
              }
            }

            else
            {
              *v39 = 0;
              v39 += 4;
            }

            *(this + 11) = v39;
            v121 = *(a2 + 1);
            v120 = *(a2 + 2);
            v122 = *a2;
            v123 = 0;
            v124 = 0;
            if (v121 > 0xFFFFFFFFFFFFFFF5 || v121 + 10 > v120)
            {
              v131 = 0;
              v126 = (v122 + v121);
              v127 = v120 - v121;
              if (v120 < v121)
              {
                v127 = 0;
              }

              v128 = v121 + 1;
              while (1)
              {
                if (!v127)
                {
                  goto LABEL_250;
                }

                v129 = v128;
                v130 = *v126;
                *(a2 + 1) = v129;
                v131 |= (v130 & 0x7F) << v123;
                if ((v130 & 0x80) == 0)
                {
                  break;
                }

                v123 += 7;
                ++v126;
                --v127;
                v128 = v129 + 1;
                v56 = v124++ > 8;
                if (v56)
                {
LABEL_185:
                  LODWORD(v131) = 0;
                  goto LABEL_188;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v131) = 0;
              }
            }

            else
            {
              v131 = 0;
              v132 = (v122 + v121);
              v133 = v121 + 1;
              while (1)
              {
                v129 = v133;
                *(a2 + 1) = v133;
                v134 = *v132++;
                v131 |= (v134 & 0x7F) << v123;
                if ((v134 & 0x80) == 0)
                {
                  break;
                }

                v123 += 7;
                ++v133;
                v56 = v124++ > 8;
                if (v56)
                {
                  goto LABEL_185;
                }
              }
            }

LABEL_188:
            *(v39 - 1) = v131;
          }

          while (v129 < v120 && (*(a2 + 24) & 1) == 0);
        }

        goto LABEL_266;
      }

      v181 = *(this + 11);
      v180 = *(this + 12);
      if (v181 >= v180)
      {
        v199 = *(this + 10);
        v200 = v181 - v199;
        v201 = (v181 - v199) >> 2;
        v202 = v201 + 1;
        if ((v201 + 1) >> 62)
        {
          goto LABEL_418;
        }

        v203 = v180 - v199;
        if (v203 >> 1 > v202)
        {
          v202 = v203 >> 1;
        }

        if (v203 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v204 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v204 = v202;
        }

        if (v204)
        {
          sub_25AD288E8(v204);
        }

        v239 = (v181 - v199) >> 2;
        v240 = (4 * v201);
        v241 = (4 * v201 - 4 * v239);
        *v240 = 0;
        v182 = v240 + 1;
        memcpy(v241, v199, v200);
        v242 = *(this + 10);
        *(this + 10) = v241;
        *(this + 11) = v182;
        *(this + 12) = 0;
        if (v242)
        {
          operator delete(v242);
        }
      }

      else
      {
        *v181 = 0;
        v182 = v181 + 4;
      }

      *(this + 11) = v182;
      v244 = *(a2 + 1);
      v243 = *(a2 + 2);
      v245 = *a2;
      if (v244 <= 0xFFFFFFFFFFFFFFF5 && v244 + 10 <= v243)
      {
        v246 = 0;
        v247 = 0;
        v248 = 0;
        v249 = (v245 + v244);
        v250 = v244 + 1;
        while (1)
        {
          *(a2 + 1) = v250;
          v251 = *v249++;
          v248 |= (v251 & 0x7F) << v246;
          if ((v251 & 0x80) == 0)
          {
            goto LABEL_408;
          }

          v246 += 7;
          ++v250;
          v56 = v247++ > 8;
          if (v56)
          {
            goto LABEL_404;
          }
        }
      }

      v252 = 0;
      v253 = 0;
      v248 = 0;
      v254 = (v245 + v244);
      v17 = v243 >= v244;
      v255 = v243 - v244;
      if (!v17)
      {
        v255 = 0;
      }

      v256 = v244 + 1;
      while (v255)
      {
        v257 = *v254;
        *(a2 + 1) = v256;
        v248 |= (v257 & 0x7F) << v252;
        if ((v257 & 0x80) == 0)
        {
          goto LABEL_406;
        }

        v252 += 7;
        ++v254;
        --v255;
        ++v256;
        v56 = v253++ > 8;
        if (v56)
        {
          goto LABEL_404;
        }
      }
    }

    else
    {
      if (v22 != 6)
      {
        goto LABEL_17;
      }

      if (v21 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_415;
        }

        if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
        {
          v39 = *(this + 2);
          do
          {
            v40 = *(this + 3);
            if (v39 >= v40)
            {
              v41 = *(this + 1);
              v42 = v39 - v41;
              v43 = (v39 - v41) >> 2;
              v44 = v43 + 1;
              if ((v43 + 1) >> 62)
              {
                goto LABEL_418;
              }

              v45 = v40 - v41;
              if (v45 >> 1 > v44)
              {
                v44 = v45 >> 1;
              }

              if (v45 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v46 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v46 = v44;
              }

              if (v46)
              {
                sub_25AD288E8(v46);
              }

              v47 = (v39 - v41) >> 2;
              v48 = (4 * v43);
              v49 = (4 * v43 - 4 * v47);
              *v48 = 0;
              v39 = (v48 + 1);
              memcpy(v49, v41, v42);
              v50 = *(this + 1);
              *(this + 1) = v49;
              *(this + 2) = v39;
              *(this + 3) = 0;
              if (v50)
              {
                operator delete(v50);
              }
            }

            else
            {
              *v39 = 0;
              v39 += 4;
            }

            *(this + 2) = v39;
            v52 = *(a2 + 1);
            v51 = *(a2 + 2);
            v53 = *a2;
            v54 = 0;
            v55 = 0;
            v56 = v52 > 0xFFFFFFFFFFFFFFF5 || v52 + 10 > v51;
            if (v56)
            {
              v62 = 0;
              v57 = (v53 + v52);
              v58 = v51 - v52;
              if (v51 < v52)
              {
                v58 = 0;
              }

              v59 = v52 + 1;
              while (1)
              {
                if (!v58)
                {
                  goto LABEL_250;
                }

                v60 = v59;
                v61 = *v57;
                *(a2 + 1) = v60;
                v62 |= (v61 & 0x7F) << v54;
                if ((v61 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                ++v57;
                --v58;
                v59 = v60 + 1;
                v56 = v55++ > 8;
                if (v56)
                {
LABEL_80:
                  LODWORD(v62) = 0;
                  goto LABEL_83;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v62) = 0;
              }
            }

            else
            {
              v62 = 0;
              v63 = (v53 + v52);
              v64 = v52 + 1;
              while (1)
              {
                v60 = v64;
                *(a2 + 1) = v64;
                v65 = *v63++;
                v62 |= (v65 & 0x7F) << v54;
                if ((v65 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                ++v64;
                v56 = v55++ > 8;
                if (v56)
                {
                  goto LABEL_80;
                }
              }
            }

LABEL_83:
            *(v39 - 1) = v62;
          }

          while (v60 < v51 && (*(a2 + 24) & 1) == 0);
        }

        goto LABEL_266;
      }

      v190 = *(this + 2);
      v189 = *(this + 3);
      if (v190 >= v189)
      {
        v223 = *(this + 1);
        v224 = v190 - v223;
        v225 = (v190 - v223) >> 2;
        v226 = v225 + 1;
        if ((v225 + 1) >> 62)
        {
          goto LABEL_418;
        }

        v227 = v189 - v223;
        if (v227 >> 1 > v226)
        {
          v226 = v227 >> 1;
        }

        if (v227 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v228 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v228 = v226;
        }

        if (v228)
        {
          sub_25AD288E8(v228);
        }

        v285 = (v190 - v223) >> 2;
        v286 = (4 * v225);
        v287 = (4 * v225 - 4 * v285);
        *v286 = 0;
        v182 = v286 + 1;
        memcpy(v287, v223, v224);
        v288 = *(this + 1);
        *(this + 1) = v287;
        *(this + 2) = v182;
        *(this + 3) = 0;
        if (v288)
        {
          operator delete(v288);
        }
      }

      else
      {
        *v190 = 0;
        v182 = v190 + 4;
      }

      *(this + 2) = v182;
      v290 = *(a2 + 1);
      v289 = *(a2 + 2);
      v291 = *a2;
      if (v290 <= 0xFFFFFFFFFFFFFFF5 && v290 + 10 <= v289)
      {
        v292 = 0;
        v293 = 0;
        v248 = 0;
        v294 = (v291 + v290);
        v295 = v290 + 1;
        while (1)
        {
          *(a2 + 1) = v295;
          v296 = *v294++;
          v248 |= (v296 & 0x7F) << v292;
          if ((v296 & 0x80) == 0)
          {
            goto LABEL_408;
          }

          v292 += 7;
          ++v295;
          v56 = v293++ > 8;
          if (v56)
          {
            goto LABEL_404;
          }
        }
      }

      v297 = 0;
      v298 = 0;
      v248 = 0;
      v299 = (v291 + v290);
      v17 = v289 >= v290;
      v300 = v289 - v290;
      if (!v17)
      {
        v300 = 0;
      }

      v301 = v290 + 1;
      while (v300)
      {
        v302 = *v299;
        *(a2 + 1) = v301;
        v248 |= (v302 & 0x7F) << v297;
        if ((v302 & 0x80) == 0)
        {
          goto LABEL_406;
        }

        v297 += 7;
        ++v299;
        --v300;
        ++v301;
        v56 = v298++ > 8;
        if (v56)
        {
          goto LABEL_404;
        }
      }
    }

    LODWORD(v248) = 0;
    *(a2 + 24) = 1;
LABEL_408:
    *(v182 - 1) = v248;
LABEL_409:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v321 = v4 ^ 1;
  return v321 & 1;
}

uint64_t CMMsl::NonlinearBiasFit::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 128);
  v5 = *(this + 136);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v7 = *(v3 + 104);
  v8 = *(v3 + 112);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9);
  }

  v10 = *(v3 + 152);
  v11 = *(v3 + 160);
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::write(a2, v12);
  }

  if (*(v3 + 180))
  {
    this = PB::Writer::write(a2, *(v3 + 176));
  }

  v13 = *(v3 + 80);
  v14 = *(v3 + 88);
  while (v13 != v14)
  {
    v13 += 4;
    this = PB::Writer::writeVarInt(a2);
  }

  v15 = *(v3 + 8);
  v16 = *(v3 + 16);
  while (v15 != v16)
  {
    v15 += 4;
    this = PB::Writer::writeVarInt(a2);
  }

  v17 = *(v3 + 32);
  v18 = *(v3 + 40);
  while (v17 != v18)
  {
    v17 += 4;
    this = PB::Writer::writeVarInt(a2);
  }

  v20 = *(v3 + 56);
  v19 = *(v3 + 64);
  while (v20 != v19)
  {
    v20 += 4;
    this = PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t CMMsl::NonlinearBiasFit::hash_value(CMMsl::NonlinearBiasFit *this)
{
  v2 = PBHashBytes();
  v3 = PBHashBytes();
  v4 = PBHashBytes();
  if (*(this + 180))
  {
    v6 = *(this + 44);
    v5 = LODWORD(v6);
    if (v6 == 0.0)
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = v3 ^ v2 ^ v4 ^ v5;
  v8 = PBHashBytes();
  v9 = v8 ^ PBHashBytes();
  v10 = v7 ^ v9 ^ PBHashBytes();
  return v10 ^ PBHashBytes();
}

void CMMsl::NormalGammaCalibrationBin::~NormalGammaCalibrationBin(CMMsl::NormalGammaCalibrationBin *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::NormalGammaCalibrationBin::NormalGammaCalibrationBin(uint64_t this, const CMMsl::NormalGammaCalibrationBin *a2)
{
  *this = &unk_286C22060;
  *(this + 68) = 0;
  v2 = *(a2 + 34);
  if ((v2 & 8) != 0)
  {
    v4 = *(a2 + 4);
    v3 = 8;
    *(this + 68) = 8;
    *(this + 32) = v4;
    v2 = *(a2 + 34);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 5);
    v3 |= 0x10u;
    *(this + 68) = v3;
    *(this + 40) = v5;
    v2 = *(a2 + 34);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 2);
    v3 |= 2u;
    *(this + 68) = v3;
    *(this + 16) = v6;
    v2 = *(a2 + 34);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 68) = v3;
  *(this + 48) = v7;
  v2 = *(a2 + 34);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 1);
  v3 |= 1u;
  *(this + 68) = v3;
  *(this + 8) = v8;
  v2 = *(a2 + 34);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 3);
  v3 |= 4u;
  *(this + 68) = v3;
  *(this + 24) = v9;
  v2 = *(a2 + 34);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 14);
  v3 |= 0x40u;
  *(this + 68) = v3;
  *(this + 56) = v10;
  v2 = *(a2 + 34);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      return this;
    }

LABEL_20:
    v12 = *(a2 + 15);
    *(this + 68) = v3 | 0x80;
    *(this + 60) = v12;
    return this;
  }

LABEL_19:
  v11 = *(a2 + 16);
  v3 |= 0x100u;
  *(this + 68) = v3;
  *(this + 64) = v11;
  if ((*(a2 + 34) & 0x80) != 0)
  {
    goto LABEL_20;
  }

  return this;
}

uint64_t CMMsl::NormalGammaCalibrationBin::operator=(uint64_t a1, const CMMsl::NormalGammaCalibrationBin *a2)
{
  if (a1 != a2)
  {
    CMMsl::NormalGammaCalibrationBin::NormalGammaCalibrationBin(v9, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v12;
    v4 = v11;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v6;
    v12 = v3;
    v7 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v7;
    PB::Base::~Base(v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::NormalGammaCalibrationBin *a2, CMMsl::NormalGammaCalibrationBin *a3)
{
  v3 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  v10 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v10;
  v11 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v12;
  return result;
}

double CMMsl::NormalGammaCalibrationBin::NormalGammaCalibrationBin(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22060;
  *(a1 + 68) = *(a2 + 68);
  *(a2 + 68) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 60) = *(a2 + 60);
  return result;
}

uint64_t CMMsl::NormalGammaCalibrationBin::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::NormalGammaCalibrationBin::NormalGammaCalibrationBin(v9, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v12;
    v4 = v11;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v6;
    v12 = v3;
    v7 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v7;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::NormalGammaCalibrationBin::formatText(CMMsl::NormalGammaCalibrationBin *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 34);
  if (v5)
  {
    PB::TextFormatter::format(a2, "maxMean", *(this + 1));
    v5 = *(this + 34);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "mean", *(this + 2));
  v5 = *(this + 34);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "meanN");
  v5 = *(this + 34);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "minMean", *(this + 3));
  v5 = *(this + 34);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "speedLB", *(this + 4));
  v5 = *(this + 34);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "speedUB", *(this + 5));
  v5 = *(this + 34);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "updateN");
  v5 = *(this + 34);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "variance", *(this + 6));
  if ((*(this + 34) & 0x100) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(a2, "varianceN");
  }

LABEL_11:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::NormalGammaCalibrationBin::readFrom(CMMsl::NormalGammaCalibrationBin *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 4)
    {
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(this + 34) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_63:
            *(a2 + 24) = 1;
            goto LABEL_112;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_96;
        }

        if (v22 == 4)
        {
          *(this + 34) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_63;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_96;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 34) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_63;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_96;
        }

        if (v22 == 2)
        {
          *(this + 34) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_63;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_96;
        }
      }
    }

    else if (v22 <= 6)
    {
      if (v22 == 5)
      {
        *(this + 34) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_63;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_96;
      }

      if (v22 == 6)
      {
        *(this + 34) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_63;
        }

        *(this + 3) = *(*a2 + v2);
LABEL_96:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_112;
      }
    }

    else
    {
      switch(v22)
      {
        case 7:
          *(this + 34) |= 0x40u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v47 = 0;
            v48 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v49 = (v32 + v31);
            v50 = v2 - v31;
            v51 = v31 + 1;
            while (1)
            {
              if (!v50)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_103;
              }

              v52 = v51;
              v53 = *v49;
              *(a2 + 1) = v52;
              v35 |= (v53 & 0x7F) << v47;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              ++v49;
              --v50;
              v51 = v52 + 1;
              v14 = v48++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_102;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_102:
            v2 = v52;
          }

          else
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = (v32 + v31);
            v37 = v31 + 1;
            while (1)
            {
              v2 = v37;
              *(a2 + 1) = v37;
              v38 = *v36++;
              v35 |= (v38 & 0x7F) << v33;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              ++v37;
              v14 = v34++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                break;
              }
            }
          }

LABEL_103:
          *(this + 14) = v35;
          goto LABEL_112;
        case 8:
          *(this + 34) |= 0x100u;
          v39 = *(a2 + 1);
          v2 = *(a2 + 2);
          v40 = *a2;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v61 = 0;
            v62 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(a2 + 1);
            }

            v63 = (v40 + v39);
            v64 = v2 - v39;
            v65 = v39 + 1;
            while (1)
            {
              if (!v64)
              {
                LODWORD(v43) = 0;
                *(a2 + 24) = 1;
                goto LABEL_111;
              }

              v66 = v65;
              v67 = *v63;
              *(a2 + 1) = v66;
              v43 |= (v67 & 0x7F) << v61;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              ++v63;
              --v64;
              v65 = v66 + 1;
              v14 = v62++ > 8;
              if (v14)
              {
                LODWORD(v43) = 0;
                goto LABEL_110;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_110:
            v2 = v66;
          }

          else
          {
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = (v40 + v39);
            v45 = v39 + 1;
            while (1)
            {
              v2 = v45;
              *(a2 + 1) = v45;
              v46 = *v44++;
              v43 |= (v46 & 0x7F) << v41;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              ++v45;
              v14 = v42++ > 8;
              if (v14)
              {
                LODWORD(v43) = 0;
                break;
              }
            }
          }

LABEL_111:
          *(this + 16) = v43;
          goto LABEL_112;
        case 9:
          *(this + 34) |= 0x80u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v54 = 0;
            v55 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v56 = (v24 + v23);
            v57 = v2 - v23;
            v58 = v23 + 1;
            while (1)
            {
              if (!v57)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_107;
              }

              v59 = v58;
              v60 = *v56;
              *(a2 + 1) = v59;
              v27 |= (v60 & 0x7F) << v54;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              ++v56;
              --v57;
              v58 = v59 + 1;
              v14 = v55++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_106;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_106:
            v2 = v59;
          }

          else
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            while (1)
            {
              v2 = v29;
              *(a2 + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                break;
              }
            }
          }

LABEL_107:
          *(this + 15) = v27;
          goto LABEL_112;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v68 = 0;
      return v68 & 1;
    }

    v2 = *(a2 + 1);
LABEL_112:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t CMMsl::NormalGammaCalibrationBin::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 68);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(this + 32));
    v4 = *(v3 + 68);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 68);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 68) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 68);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 0x80) == 0)
  {
    return this;
  }

LABEL_19:

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::NormalGammaCalibrationBin::hash_value(CMMsl::NormalGammaCalibrationBin *this)
{
  v1 = *(this + 34);
  if ((v1 & 8) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_24:
    v3 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_25:
    v4 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_26:
    v5 = 0.0;
    if (v1)
    {
      goto LABEL_12;
    }

LABEL_27:
    v6 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_15;
    }

LABEL_28:
    v7 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

  v2 = *(this + 4);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_24;
  }

LABEL_3:
  v3 = *(this + 5);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_25;
  }

LABEL_6:
  v4 = *(this + 2);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  v5 = *(this + 6);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_12:
  v6 = *(this + 1);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_28;
  }

LABEL_15:
  v7 = *(this + 3);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x40) != 0)
  {
LABEL_18:
    v8 = *(this + 14);
    if ((*(this + 34) & 0x100) != 0)
    {
      goto LABEL_19;
    }

LABEL_30:
    v9 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_20;
    }

LABEL_31:
    v10 = 0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_29:
  v8 = 0;
  if ((*(this + 34) & 0x100) == 0)
  {
    goto LABEL_30;
  }

LABEL_19:
  v9 = *(this + 16);
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_31;
  }

LABEL_20:
  v10 = *(this + 15);
  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ v8 ^ v9 ^ v10;
}

void CMMsl::ODTPose::~ODTPose(CMMsl::ODTPose *this)
{
  *this = &unk_286C22098;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::ODTPose::~ODTPose(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::ODTPose *CMMsl::ODTPose::ODTPose(CMMsl::ODTPose *this, const CMMsl::ODTPose *a2)
{
  *this = &unk_286C22098;
  *(this + 1) = 0;
  v3 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 10) = 0;
  if (*(a2 + 40))
  {
    v4 = *(a2 + 4);
    *(this + 40) = 1;
    *(this + 4) = v4;
  }

  if (this != a2)
  {
    sub_25AD285D4(v3, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  }

  return this;
}

uint64_t CMMsl::ODTPose::operator=(uint64_t a1, const CMMsl::ODTPose *a2)
{
  if (a1 != a2)
  {
    CMMsl::ODTPose::ODTPose(&v8, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v6;
    CMMsl::ODTPose::~ODTPose(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::ODTPose *a2, CMMsl::ODTPose *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  return result;
}

uint64_t CMMsl::ODTPose::ODTPose(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22098;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 32) = *(a2 + 32);
  sub_25AD28758(a1 + 8, (a2 + 8));
  return a1;
}

{
  *a1 = &unk_286C22098;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 32) = *(a2 + 32);
  sub_25AD28758(a1 + 8, (a2 + 8));
  return a1;
}

uint64_t CMMsl::ODTPose::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v12 = &unk_286C22098;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v4 = *(a2 + 32);
    v5 = *(a2 + 24);
    v6 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v7 = *(a1 + 40);
    *(a1 + 40) = v3;
    v16 = v7;
    v8 = *(a1 + 32);
    *(a1 + 32) = v4;
    v15 = v8;
    v9 = *(a1 + 8);
    *(a1 + 8) = v6;
    v13 = v9;
    v10 = *(a1 + 24);
    *(a1 + 24) = v5;
    v14 = v10;
    CMMsl::ODTPose::~ODTPose(&v12);
  }

  return a1;
}

uint64_t CMMsl::ODTPose::formatText(CMMsl::ODTPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "pose", v7);
  }

  if (*(this + 40))
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 4));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ODTPose::readFrom(CMMsl::ODTPose *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_18;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_24;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_18:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    if ((v10 >> 3) == 2)
    {
      if ((v10 & 7) != 2)
      {
        v40 = *(this + 2);
        v39 = *(this + 3);
        if (v40 >= v39)
        {
          v42 = *(this + 1);
          v43 = v40 - v42;
          v44 = (v40 - v42) >> 3;
          v45 = v44 + 1;
          if ((v44 + 1) >> 61)
          {
LABEL_73:
            sub_25AAE66B8();
          }

          v46 = v39 - v42;
          if (v46 >> 2 > v45)
          {
            v45 = v46 >> 2;
          }

          if (v46 >= 0x7FFFFFFFFFFFFFF8)
          {
            v47 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v47 = v45;
          }

          if (v47)
          {
            sub_25AD28710(v47);
          }

          v48 = (v40 - v42) >> 3;
          v49 = (8 * v44);
          v50 = (8 * v44 - 8 * v48);
          *v49 = 0;
          v41 = v49 + 1;
          memcpy(v50, v42, v43);
          v51 = *(this + 1);
          *(this + 1) = v50;
          *(this + 2) = v41;
          *(this + 3) = 0;
          if (v51)
          {
            operator delete(v51);
          }
        }

        else
        {
          *v40 = 0;
          v41 = v40 + 8;
        }

        *(this + 2) = v41;
        v52 = *(a2 + 1);
        if (v52 > 0xFFFFFFFFFFFFFFF7 || v52 + 8 > *(a2 + 2))
        {
LABEL_62:
          *(a2 + 24) = 1;
          goto LABEL_65;
        }

        *(v41 - 1) = *(*a2 + v52);
        goto LABEL_64;
      }

      if (PB::Reader::placeMark())
      {
LABEL_71:
        v53 = 0;
        return v53 & 1;
      }

      v23 = *(a2 + 1);
      v24 = *(a2 + 2);
      while (v23 < v24 && (*(a2 + 24) & 1) == 0)
      {
        v26 = *(this + 2);
        v25 = *(this + 3);
        if (v26 >= v25)
        {
          v28 = *(this + 1);
          v29 = v26 - v28;
          v30 = (v26 - v28) >> 3;
          v31 = v30 + 1;
          if ((v30 + 1) >> 61)
          {
            goto LABEL_73;
          }

          v32 = v25 - v28;
          if (v32 >> 2 > v31)
          {
            v31 = v32 >> 2;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFF8)
          {
            v33 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            sub_25AD28710(v33);
          }

          v34 = (v26 - v28) >> 3;
          v35 = (8 * v30);
          v36 = (8 * v30 - 8 * v34);
          *v35 = 0;
          v27 = v35 + 1;
          memcpy(v36, v28, v29);
          v37 = *(this + 1);
          *(this + 1) = v36;
          *(this + 2) = v27;
          *(this + 3) = 0;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          *v26 = 0;
          v27 = v26 + 8;
        }

        *(this + 2) = v27;
        v38 = *(a2 + 1);
        if (v38 > 0xFFFFFFFFFFFFFFF7 || v38 + 8 > *(a2 + 2))
        {
          *(a2 + 24) = 1;
          break;
        }

        *(v27 - 1) = *(*a2 + v38);
        v24 = *(a2 + 2);
        v23 = *(a2 + 1) + 8;
        *(a2 + 1) = v23;
      }

      PB::Reader::recallMark();
    }

    else
    {
      if ((v10 >> 3) == 1)
      {
        *(this + 40) |= 1u;
        v22 = *(a2 + 1);
        if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(a2 + 2))
        {
          goto LABEL_62;
        }

        *(this + 4) = *(*a2 + v22);
LABEL_64:
        *(a2 + 1) += 8;
        goto LABEL_65;
      }

LABEL_24:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

LABEL_65:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::ODTPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 40))
  {
    this = PB::Writer::write(a2, *(this + 32));
  }

  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  while (v5 != v4)
  {
    v6 = *v5++;
    this = PB::Writer::write(a2, v6);
  }

  return this;
}

uint64_t CMMsl::ODTPose::hash_value(CMMsl::ODTPose *this)
{
  if (*(this + 40))
  {
    if (*(this + 4) == 0.0)
    {
      v1 = 0;
    }

    else
    {
      v1 = *(this + 4);
    }
  }

  else
  {
    v1 = 0;
  }

  return PBHashBytes() ^ v1;
}

void CMMsl::Odometer::~Odometer(CMMsl::Odometer *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::Odometer::Odometer(uint64_t this, const CMMsl::Odometer *a2)
{
  *this = &unk_286C220D0;
  *(this + 100) = 0;
  v2 = *(a2 + 50);
  if ((v2 & 0x80) != 0)
  {
    v4 = *(a2 + 8);
    v3 = 128;
    *(this + 100) = 128;
    *(this + 64) = v4;
    v2 = *(a2 + 50);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 2);
    v3 |= 2u;
    *(this + 100) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 50);
  }

LABEL_6:
  if (v2)
  {
    v6 = *(a2 + 1);
    v3 |= 1u;
    *(this + 100) = v3;
    *(this + 8) = v6;
    v2 = *(a2 + 50);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 3);
  v3 |= 4u;
  *(this + 100) = v3;
  *(this + 24) = v7;
  v2 = *(a2 + 50);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 100) = v3;
  *(this + 56) = v8;
  v2 = *(a2 + 50);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 100) = v3;
  *(this + 48) = v9;
  v2 = *(a2 + 50);
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 100) = v3;
  *(this + 40) = v10;
  v2 = *(a2 + 50);
  if ((v2 & 8) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = *(a2 + 4);
  v3 |= 8u;
  *(this + 100) = v3;
  *(this + 32) = v11;
  v2 = *(a2 + 50);
  if ((v2 & 0x100) == 0)
  {
LABEL_13:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 100) = v3;
  *(this + 72) = v12;
  v2 = *(a2 + 50);
  if ((v2 & 0x400) == 0)
  {
LABEL_14:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = *(a2 + 21);
  v3 |= 0x400u;
  *(this + 100) = v3;
  *(this + 84) = v13;
  v2 = *(a2 + 50);
  if ((v2 & 0x800) == 0)
  {
LABEL_15:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = *(a2 + 22);
  v3 |= 0x800u;
  *(this + 100) = v3;
  *(this + 88) = v14;
  v2 = *(a2 + 50);
  if ((v2 & 0x1000) == 0)
  {
LABEL_16:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v15 = *(a2 + 23);
  v3 |= 0x1000u;
  *(this + 100) = v3;
  *(this + 92) = v15;
  v2 = *(a2 + 50);
  if ((v2 & 0x200) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      return this;
    }

LABEL_30:
    v17 = *(a2 + 96);
    *(this + 100) = v3 | 0x2000;
    *(this + 96) = v17;
    return this;
  }

LABEL_29:
  v16 = *(a2 + 20);
  v3 |= 0x200u;
  *(this + 100) = v3;
  *(this + 80) = v16;
  if ((*(a2 + 50) & 0x2000) != 0)
  {
    goto LABEL_30;
  }

  return this;
}

CMMsl *CMMsl::Odometer::operator=(CMMsl *a1, const CMMsl::Odometer *a2)
{
  if (a1 != a2)
  {
    CMMsl::Odometer::Odometer(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::Odometer *a2, CMMsl::Odometer *a3)
{
  v3 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v8;
  v9 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v9;
  v10 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v10;
  v11 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v11;
  result = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = result;
  v13 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v13;
  v14 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v14;
  v15 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v15;
  v16 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v16;
  LOBYTE(v16) = *(this + 96);
  *(this + 96) = *(a2 + 96);
  *(a2 + 96) = v16;
  return result;
}

double CMMsl::Odometer::Odometer(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C220D0;
  *(a1 + 100) = *(a2 + 100);
  *(a2 + 100) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  return result;
}

CMMsl *CMMsl::Odometer::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::Odometer::Odometer(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::Odometer::formatText(CMMsl::Odometer *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 50);
  if (v5)
  {
    PB::TextFormatter::format(a2, "accuracy", *(this + 1));
    v5 = *(this + 50);
    if ((v5 & 0x200) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*(this + 50) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "batchedLocationFixType");
  v5 = *(this + 50);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "distance", *(this + 2));
  v5 = *(this + 50);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "gpsAltitude", *(this + 3));
  v5 = *(this + 50);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "gpsSpeedAccuracy", *(this + 4));
  v5 = *(this + 50);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "odometer", *(this + 5));
  v5 = *(this + 50);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "originDevice");
  v5 = *(this + 50);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "quality");
  v5 = *(this + 50);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "rawSpeed", *(this + 6));
  v5 = *(this + 50);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "speed", *(this + 7));
  v5 = *(this + 50);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "startTime", *(this + 8));
  v5 = *(this + 50);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "timestampGps", *(this + 9));
  v5 = *(this + 50);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "trackRunOdometerHasBeenCorrected");
  if ((*(this + 50) & 0x1000) != 0)
  {
LABEL_15:
    PB::TextFormatter::format(a2, "type");
  }

LABEL_16:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::Odometer::readFrom(CMMsl::Odometer *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_138:
    v84 = v4 ^ 1;
  }

  else
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_138;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 50) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_77;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_113;
        case 2u:
          *(this + 50) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_77;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_113;
        case 3u:
          *(this + 50) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_77;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_113;
        case 4u:
          *(this + 50) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_77;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_113;
        case 5u:
          *(this + 50) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_77;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_113;
        case 6u:
          *(this + 50) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_77;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_113;
        case 7u:
          *(this + 50) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_77;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_113;
        case 8u:
          *(this + 50) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_77;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_113;
        case 9u:
          *(this + 50) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
          {
            *(this + 9) = *(*a2 + v2);
LABEL_113:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          else
          {
LABEL_77:
            *(a2 + 24) = 1;
          }

          break;
        case 0xAu:
          *(this + 50) |= 0x400u;
          v38 = *(a2 + 1);
          v2 = *(a2 + 2);
          v39 = *a2;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v70 = 0;
            v71 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(a2 + 1);
            }

            v72 = (v39 + v38);
            v73 = v2 - v38;
            v74 = v38 + 1;
            while (1)
            {
              if (!v73)
              {
                LODWORD(v42) = 0;
                *(a2 + 24) = 1;
                goto LABEL_129;
              }

              v75 = v74;
              v76 = *v72;
              *(a2 + 1) = v75;
              v42 |= (v76 & 0x7F) << v70;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              ++v72;
              --v73;
              v74 = v75 + 1;
              v14 = v71++ > 8;
              if (v14)
              {
                LODWORD(v42) = 0;
LABEL_128:
                v2 = v75;
                goto LABEL_129;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_128;
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = (v39 + v38);
          v44 = v38 + 1;
          do
          {
            v2 = v44;
            *(a2 + 1) = v44;
            v45 = *v43++;
            v42 |= (v45 & 0x7F) << v40;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_129;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_129:
          *(this + 21) = v42;
          break;
        case 0xBu:
          *(this + 50) |= 0x800u;
          v48 = *(a2 + 1);
          v2 = *(a2 + 2);
          v49 = *a2;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v77 = 0;
            v78 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(a2 + 1);
            }

            v79 = (v49 + v48);
            v80 = v2 - v48;
            v81 = v48 + 1;
            while (1)
            {
              if (!v80)
              {
                LODWORD(v52) = 0;
                *(a2 + 24) = 1;
                goto LABEL_133;
              }

              v82 = v81;
              v83 = *v79;
              *(a2 + 1) = v82;
              v52 |= (v83 & 0x7F) << v77;
              if ((v83 & 0x80) == 0)
              {
                break;
              }

              v77 += 7;
              ++v79;
              --v80;
              v81 = v82 + 1;
              v14 = v78++ > 8;
              if (v14)
              {
                LODWORD(v52) = 0;
LABEL_132:
                v2 = v82;
                goto LABEL_133;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_132;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = (v49 + v48);
          v54 = v48 + 1;
          do
          {
            v2 = v54;
            *(a2 + 1) = v54;
            v55 = *v53++;
            v52 |= (v55 & 0x7F) << v50;
            if ((v55 & 0x80) == 0)
            {
              goto LABEL_133;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_133:
          *(this + 22) = v52;
          break;
        case 0xCu:
          *(this + 50) |= 0x1000u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v56 = 0;
            v57 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v58 = (v23 + v22);
            v59 = v2 - v22;
            v60 = v22 + 1;
            while (1)
            {
              if (!v59)
              {
                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
                goto LABEL_121;
              }

              v61 = v60;
              v62 = *v58;
              *(a2 + 1) = v61;
              v26 |= (v62 & 0x7F) << v56;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              ++v58;
              --v59;
              v60 = v61 + 1;
              v14 = v57++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_120:
                v2 = v61;
                goto LABEL_121;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_120;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          do
          {
            v2 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_121;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_121:
          *(this + 23) = v26;
          break;
        case 0xDu:
          *(this + 50) |= 0x200u;
          v30 = *(a2 + 1);
          v2 = *(a2 + 2);
          v31 = *a2;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v63 = 0;
            v64 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(a2 + 1);
            }

            v65 = (v31 + v30);
            v66 = v2 - v30;
            v67 = v30 + 1;
            while (1)
            {
              if (!v66)
              {
                LODWORD(v34) = 0;
                *(a2 + 24) = 1;
                goto LABEL_125;
              }

              v68 = v67;
              v69 = *v65;
              *(a2 + 1) = v68;
              v34 |= (v69 & 0x7F) << v63;
              if ((v69 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              ++v65;
              --v66;
              v67 = v68 + 1;
              v14 = v64++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_124:
                v2 = v68;
                goto LABEL_125;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_124;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          do
          {
            v2 = v36;
            *(a2 + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_125;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_125:
          *(this + 20) = v34;
          break;
        case 0xEu:
          *(this + 50) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v47 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v46 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v47 = v46 != 0;
          }

          *(this + 96) = v47;
          break;
        default:
          goto LABEL_17;
      }

LABEL_134:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_138;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    do
    {
      if (!v19)
      {
        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_138;
      }

      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
    }

    while (!v14);
LABEL_17:
    if (PB::Reader::skip(a2))
    {
      v2 = *(a2 + 1);
      goto LABEL_134;
    }

    v84 = 0;
  }

  return v84 & 1;
}

uint64_t CMMsl::Odometer::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 100);
  if ((v4 & 0x80) != 0)
  {
    this = PB::Writer::write(a2, *(this + 64));
    v4 = *(v3 + 100);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 100);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 100);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 100);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 100);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 100);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 100);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 100);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 100);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 100);
  if ((v4 & 0x800) == 0)
  {
LABEL_12:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 100);
  if ((v4 & 0x1000) == 0)
  {
LABEL_13:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 100) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 100);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v4 & 0x2000) == 0)
  {
    return this;
  }

LABEL_29:

  return PB::Writer::write(a2);
}

uint64_t CMMsl::Odometer::hash_value(CMMsl::Odometer *this)
{
  v1 = *(this + 50);
  if ((v1 & 0x80) == 0)
  {
    v2 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_35:
    v3 = 0.0;
    if (v1)
    {
      goto LABEL_6;
    }

LABEL_36:
    v4 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_37:
    v5 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_12;
    }

LABEL_38:
    v6 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_15;
    }

LABEL_39:
    v7 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_18;
    }

LABEL_40:
    v8 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_21;
    }

LABEL_41:
    v9 = 0.0;
    if ((*(this + 50) & 0x100) != 0)
    {
      goto LABEL_24;
    }

LABEL_42:
    v10 = 0.0;
    if ((*(this + 50) & 0x400) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_43;
  }

  v2 = *(this + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_35;
  }

LABEL_3:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_6:
  v4 = *(this + 1);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_37;
  }

LABEL_9:
  v5 = *(this + 3);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_38;
  }

LABEL_12:
  v6 = *(this + 7);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_39;
  }

LABEL_15:
  v7 = *(this + 6);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_40;
  }

LABEL_18:
  v8 = *(this + 5);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_41;
  }

LABEL_21:
  v9 = *(this + 4);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((*(this + 50) & 0x100) == 0)
  {
    goto LABEL_42;
  }

LABEL_24:
  v10 = *(this + 9);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((*(this + 50) & 0x400) != 0)
  {
LABEL_27:
    v11 = *(this + 21);
    if ((*(this + 50) & 0x800) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_44;
  }

LABEL_43:
  v11 = 0;
  if ((*(this + 50) & 0x800) != 0)
  {
LABEL_28:
    v12 = *(this + 22);
    if ((*(this + 50) & 0x1000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_45;
  }

LABEL_44:
  v12 = 0;
  if ((*(this + 50) & 0x1000) != 0)
  {
LABEL_29:
    v13 = *(this + 23);
    if ((*(this + 50) & 0x200) != 0)
    {
      goto LABEL_30;
    }

LABEL_46:
    v14 = 0;
    if ((*(this + 50) & 0x2000) != 0)
    {
      goto LABEL_31;
    }

LABEL_47:
    v15 = 0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
  }

LABEL_45:
  v13 = 0;
  if ((*(this + 50) & 0x200) == 0)
  {
    goto LABEL_46;
  }

LABEL_30:
  v14 = *(this + 20);
  if ((*(this + 50) & 0x2000) == 0)
  {
    goto LABEL_47;
  }

LABEL_31:
  v15 = *(this + 96);
  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

void CMMsl::OdometerWithAltitude::~OdometerWithAltitude(CMMsl::OdometerWithAltitude *this)
{
  *this = &unk_286C22108;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::OdometerWithAltitude::~OdometerWithAltitude(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::OdometerWithAltitude *CMMsl::OdometerWithAltitude::OdometerWithAltitude(CMMsl::OdometerWithAltitude *this, const CMMsl::Odometer **a2)
{
  *this = &unk_286C22108;
  *(this + 9) = 0;
  *(this + 20) = 0;
  if (a2[9])
  {
    operator new();
  }

  v2 = *(a2 + 80);
  if ((v2 & 4) != 0)
  {
    v4 = a2[3];
    *(this + 80) |= 4u;
    *(this + 3) = v4;
    v2 = *(a2 + 80);
    if ((v2 & 8) == 0)
    {
LABEL_5:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((a2[10] & 8) == 0)
  {
    goto LABEL_5;
  }

  v5 = a2[4];
  *(this + 80) |= 8u;
  *(this + 4) = v5;
  v2 = *(a2 + 80);
  if ((v2 & 0x40) == 0)
  {
LABEL_6:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = a2[7];
  *(this + 80) |= 0x40u;
  *(this + 7) = v6;
  v2 = *(a2 + 80);
  if ((v2 & 0x80) == 0)
  {
LABEL_7:
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = a2[8];
  *(this + 80) |= 0x80u;
  *(this + 8) = v7;
  v2 = *(a2 + 80);
  if ((v2 & 2) == 0)
  {
LABEL_8:
    if ((v2 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = a2[2];
  *(this + 80) |= 2u;
  *(this + 2) = v8;
  v2 = *(a2 + 80);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = a2[1];
  *(this + 80) |= 1u;
  *(this + 1) = v9;
  v2 = *(a2 + 80);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_19:
  v10 = a2[6];
  *(this + 80) |= 0x20u;
  *(this + 6) = v10;
  if ((a2[10] & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v3 = a2[5];
  *(this + 80) |= 0x10u;
  *(this + 5) = v3;
  return this;
}

uint64_t CMMsl::OdometerWithAltitude::operator=(uint64_t a1, const CMMsl::Odometer **a2)
{
  if (a1 != a2)
  {
    CMMsl::OdometerWithAltitude::OdometerWithAltitude(v10, a2);
    v3 = *(a1 + 80);
    *(a1 + 80) = v16;
    v16 = v3;
    v4 = *(a1 + 72);
    *(a1 + 72) = v15;
    v15 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v12;
    v6 = *(a1 + 56);
    *(a1 + 56) = v14;
    v7 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v7;
    v12 = v5;
    v8 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v8;
    v14 = v6;
    CMMsl::OdometerWithAltitude::~OdometerWithAltitude(v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::OdometerWithAltitude *a2, CMMsl::OdometerWithAltitude *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  v4 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v7;
  v8 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  v10 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v10;
  v11 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v11;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  return result;
}

uint64_t CMMsl::OdometerWithAltitude::OdometerWithAltitude(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22108;
  *(a1 + 72) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  v4 = *(a2 + 72);
  *(a2 + 72) = 0;
  v5 = *(a1 + 72);
  *(a1 + 72) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t CMMsl::OdometerWithAltitude::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::OdometerWithAltitude::OdometerWithAltitude(v10, a2);
    v3 = *(a1 + 80);
    *(a1 + 80) = v16;
    v16 = v3;
    v4 = *(a1 + 72);
    *(a1 + 72) = v15;
    v15 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v12;
    v6 = *(a1 + 56);
    *(a1 + 56) = v14;
    v7 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v7;
    v12 = v5;
    v8 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v8;
    v14 = v6;
    CMMsl::OdometerWithAltitude::~OdometerWithAltitude(v10);
  }

  return a1;
}

uint64_t CMMsl::OdometerWithAltitude::formatText(CMMsl::OdometerWithAltitude *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 80);
  if (v5)
  {
    PB::TextFormatter::format(a2, "gpsCourseAccuracy", *(this + 1));
    v5 = *(this + 80);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(this + 80) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "gpsCourseRadians", *(this + 2));
  v5 = *(this + 80);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "groundAltitude", *(this + 3));
  v5 = *(this + 80);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "groundAltitudeUncertainty", *(this + 4));
  v5 = *(this + 80);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "maxAbsSlope", *(this + 5));
  v5 = *(this + 80);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    PB::TextFormatter::format(a2, "smoothedGPSAltitude", *(this + 7));
    if ((*(this + 80) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "slope", *(this + 6));
  v5 = *(this + 80);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "smoothedGPSAltitudeUncertainty", *(this + 8));
LABEL_9:
  v6 = *(this + 9);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::OdometerWithAltitude::readFrom(CMMsl::OdometerWithAltitude *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 4)
    {
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(this + 80) |= 8u;
          v27 = *(a2 + 1);
          if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(a2 + 2))
          {
LABEL_56:
            *(a2 + 24) = 1;
            goto LABEL_59;
          }

          *(this + 4) = *(*a2 + v27);
          goto LABEL_58;
        }

        if (v22 == 4)
        {
          *(this + 80) |= 0x40u;
          v25 = *(a2 + 1);
          if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(a2 + 2))
          {
            goto LABEL_56;
          }

          *(this + 7) = *(*a2 + v25);
          goto LABEL_58;
        }
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          *(this + 80) |= 4u;
          v24 = *(a2 + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
          {
            goto LABEL_56;
          }

          *(this + 3) = *(*a2 + v24);
          goto LABEL_58;
        }
      }
    }

    else if (v22 <= 6)
    {
      if (v22 == 5)
      {
        *(this + 80) |= 0x80u;
        v29 = *(a2 + 1);
        if (v29 > 0xFFFFFFFFFFFFFFF7 || v29 + 8 > *(a2 + 2))
        {
          goto LABEL_56;
        }

        *(this + 8) = *(*a2 + v29);
        goto LABEL_58;
      }

      if (v22 == 6)
      {
        *(this + 80) |= 2u;
        v26 = *(a2 + 1);
        if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(a2 + 2))
        {
          goto LABEL_56;
        }

        *(this + 2) = *(*a2 + v26);
        goto LABEL_58;
      }
    }

    else
    {
      switch(v22)
      {
        case 7:
          *(this + 80) |= 1u;
          v28 = *(a2 + 1);
          if (v28 > 0xFFFFFFFFFFFFFFF7 || v28 + 8 > *(a2 + 2))
          {
            goto LABEL_56;
          }

          *(this + 1) = *(*a2 + v28);
          goto LABEL_58;
        case 8:
          *(this + 80) |= 0x20u;
          v30 = *(a2 + 1);
          if (v30 > 0xFFFFFFFFFFFFFFF7 || v30 + 8 > *(a2 + 2))
          {
            goto LABEL_56;
          }

          *(this + 6) = *(*a2 + v30);
          goto LABEL_58;
        case 9:
          *(this + 80) |= 0x10u;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
          {
            goto LABEL_56;
          }

          *(this + 5) = *(*a2 + v23);
LABEL_58:
          *(a2 + 1) += 8;
          goto LABEL_59;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v32 = 0;
      return v32 & 1;
    }

LABEL_59:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v32 = v4 ^ 1;
  return v32 & 1;
}

uint64_t CMMsl::OdometerWithAltitude::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 72);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 80);
  if ((v5 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 24));
    v5 = *(v3 + 80);
    if ((v5 & 8) == 0)
    {
LABEL_5:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v3 + 80) & 8) == 0)
  {
    goto LABEL_5;
  }

  this = PB::Writer::write(a2, *(v3 + 32));
  v5 = *(v3 + 80);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 56));
  v5 = *(v3 + 80);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 64));
  v5 = *(v3 + 80);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 16));
  v5 = *(v3 + 80);
  if ((v5 & 1) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    this = PB::Writer::write(a2, *(v3 + 48));
    if ((*(v3 + 80) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 8));
  v5 = *(v3 + 80);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v5 & 0x10) == 0)
  {
    return this;
  }

LABEL_19:
  v6 = *(v3 + 40);

  return PB::Writer::write(a2, v6);
}

unint64_t CMMsl::OdometerWithAltitude::hash_value(CMMsl::OdometerWithAltitude *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    v2 = CMMsl::Odometer::hash_value(v2);
  }

  if ((*(this + 80) & 4) == 0)
  {
    v3 = 0.0;
    if ((*(this + 80) & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_29:
    v4 = 0.0;
    if ((*(this + 80) & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_30:
    v5 = 0.0;
    if ((*(this + 80) & 0x80) != 0)
    {
      goto LABEL_11;
    }

LABEL_31:
    v6 = 0.0;
    if ((*(this + 80) & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_32:
    v7 = 0.0;
    if (*(this + 80))
    {
      goto LABEL_17;
    }

LABEL_33:
    v8 = 0.0;
    if ((*(this + 80) & 0x20) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

  v3 = *(this + 3);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 80) & 8) == 0)
  {
    goto LABEL_29;
  }

LABEL_5:
  v4 = *(this + 4);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((*(this + 80) & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_8:
  v5 = *(this + 7);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((*(this + 80) & 0x80) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v6 = *(this + 8);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((*(this + 80) & 2) == 0)
  {
    goto LABEL_32;
  }

LABEL_14:
  v7 = *(this + 2);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((*(this + 80) & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_17:
  v8 = *(this + 1);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((*(this + 80) & 0x20) != 0)
  {
LABEL_20:
    v9 = *(this + 6);
    if (v9 == 0.0)
    {
      v9 = 0.0;
    }

    if ((*(this + 80) & 0x10) != 0)
    {
      goto LABEL_23;
    }

LABEL_35:
    v10 = 0.0;
    return *&v3 ^ v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10;
  }

LABEL_34:
  v9 = 0.0;
  if ((*(this + 80) & 0x10) == 0)
  {
    goto LABEL_35;
  }

LABEL_23:
  v10 = *(this + 5);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  return *&v3 ^ v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10;
}

void *CMMsl::OdometerWithAltitude::makeSuper(void *this)
{
  if (!this[9])
  {
    operator new();
  }

  return this;
}

void CMMsl::OnsetHeartRateData::~OnsetHeartRateData(CMMsl::OnsetHeartRateData *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::OnsetHeartRateData::OnsetHeartRateData(uint64_t this, const CMMsl::OnsetHeartRateData *a2)
{
  *this = &unk_286C22140;
  *(this + 68) = 0;
  v2 = *(a2 + 34);
  if ((v2 & 0x40) != 0)
  {
    v4 = *(a2 + 13);
    v3 = 64;
    *(this + 68) = 64;
    *(this + 52) = v4;
    v2 = *(a2 + 34);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x80) != 0)
  {
LABEL_5:
    v5 = *(a2 + 14);
    v3 |= 0x80u;
    *(this + 68) = v3;
    *(this + 56) = v5;
    v2 = *(a2 + 34);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 2);
    v3 |= 2u;
    *(this + 68) = v3;
    *(this + 16) = v6;
    v2 = *(a2 + 34);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 1);
  v3 |= 1u;
  *(this + 68) = v3;
  *(this + 8) = v7;
  v2 = *(a2 + 34);
  if ((v2 & 0x200) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = *(a2 + 64);
  v3 |= 0x200u;
  *(this + 68) = v3;
  *(this + 64) = v8;
  v2 = *(a2 + 34);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 68) = v3;
  *(this + 40) = v9;
  v2 = *(a2 + 34);
  if ((v2 & 8) == 0)
  {
LABEL_11:
    if ((v2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 4);
  v3 |= 8u;
  *(this + 68) = v3;
  *(this + 32) = v10;
  v2 = *(a2 + 34);
  if ((v2 & 4) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = *(a2 + 3);
  v3 |= 4u;
  *(this + 68) = v3;
  *(this + 24) = v11;
  v2 = *(a2 + 34);
  if ((v2 & 0x100) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      return this;
    }

LABEL_22:
    v13 = *(a2 + 12);
    *(this + 68) = v3 | 0x20;
    *(this + 48) = v13;
    return this;
  }

LABEL_21:
  v12 = *(a2 + 15);
  v3 |= 0x100u;
  *(this + 68) = v3;
  *(this + 60) = v12;
  if ((*(a2 + 34) & 0x20) != 0)
  {
    goto LABEL_22;
  }

  return this;
}

uint64_t CMMsl::OnsetHeartRateData::operator=(uint64_t a1, const CMMsl::OnsetHeartRateData *a2)
{
  if (a1 != a2)
  {
    CMMsl::OnsetHeartRateData::OnsetHeartRateData(v11, a2);
    v3 = *(a1 + 68);
    *(a1 + 68) = v19;
    v19 = v3;
    v4 = *(a1 + 52);
    *(a1 + 52) = v16;
    v16 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v12;
    LOBYTE(v3) = *(a1 + 64);
    *(a1 + 64) = v18;
    v18 = v3;
    v6 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v13;
    v12 = v5;
    v13 = v7;
    v8 = *(a1 + 60);
    *(a1 + 60) = v17;
    v17 = v8;
    v9 = *(a1 + 48);
    *(a1 + 48) = v15;
    v15 = v9;
    PB::Base::~Base(v11);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::OnsetHeartRateData *a2, CMMsl::OnsetHeartRateData *a3)
{
  v3 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v3;
  v4 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  v5 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  LOBYTE(v5) = *(this + 64);
  *(this + 64) = *(a2 + 64);
  *(a2 + 64) = v5;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v9;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  v11 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v11;
  v12 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v12;
  return result;
}

double CMMsl::OnsetHeartRateData::OnsetHeartRateData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22140;
  *(a1 + 68) = *(a2 + 68);
  *(a2 + 68) = 0;
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 48) = *(a2 + 48);
  return result;
}

uint64_t CMMsl::OnsetHeartRateData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::OnsetHeartRateData::OnsetHeartRateData(v11, a2);
    v3 = *(a1 + 68);
    *(a1 + 68) = v19;
    v19 = v3;
    v4 = *(a1 + 52);
    *(a1 + 52) = v16;
    v16 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v12;
    LOBYTE(v3) = *(a1 + 64);
    *(a1 + 64) = v18;
    v18 = v3;
    v6 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v13;
    v12 = v5;
    v13 = v7;
    v8 = *(a1 + 60);
    *(a1 + 60) = v17;
    v17 = v8;
    v9 = *(a1 + 48);
    *(a1 + 48) = v15;
    v15 = v9;
    PB::Base::~Base(v11);
  }

  return a1;
}

uint64_t CMMsl::OnsetHeartRateData::formatText(CMMsl::OnsetHeartRateData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 34);
  if (v5)
  {
    PB::TextFormatter::format(a2, "confidence", *(this + 1));
    v5 = *(this + 34);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "context");
  v5 = *(this + 34);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "dataSource");
  v5 = *(this + 34);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "error");
  v5 = *(this + 34);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "heartRate", *(this + 2));
  v5 = *(this + 34);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "interpolation");
  v5 = *(this + 34);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "mode");
  v5 = *(this + 34);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "sinceLastGood", *(this + 3));
  v5 = *(this + 34);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "startTime", *(this + 4));
  if ((*(this + 34) & 0x10) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(a2, "timestamp", *(this + 5));
  }

LABEL_12:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::OnsetHeartRateData::readFrom(CMMsl::OnsetHeartRateData *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 5)
    {
      if (v22 <= 7)
      {
        if (v22 == 6)
        {
          *(this + 34) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_70:
            *(a2 + 24) = 1;
            goto LABEL_134;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_113;
        }

        if (v22 == 7)
        {
          *(this + 34) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_70;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_113;
        }
      }

      else
      {
        switch(v22)
        {
          case 8:
            *(this + 34) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_70;
            }

            *(this + 3) = *(*a2 + v2);
            goto LABEL_113;
          case 9:
            *(this + 34) |= 0x100u;
            v49 = *(a2 + 1);
            v2 = *(a2 + 2);
            v50 = *a2;
            if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
            {
              v78 = 0;
              v79 = 0;
              v53 = 0;
              if (v2 <= v49)
              {
                v2 = *(a2 + 1);
              }

              v80 = (v50 + v49);
              v81 = v2 - v49;
              v82 = v49 + 1;
              while (1)
              {
                if (!v81)
                {
                  LODWORD(v53) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_133;
                }

                v83 = v82;
                v84 = *v80;
                *(a2 + 1) = v83;
                v53 |= (v84 & 0x7F) << v78;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v78 += 7;
                ++v80;
                --v81;
                v82 = v83 + 1;
                v14 = v79++ > 8;
                if (v14)
                {
                  LODWORD(v53) = 0;
                  goto LABEL_132;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v53) = 0;
              }

LABEL_132:
              v2 = v83;
            }

            else
            {
              v51 = 0;
              v52 = 0;
              v53 = 0;
              v54 = (v50 + v49);
              v55 = v49 + 1;
              while (1)
              {
                v2 = v55;
                *(a2 + 1) = v55;
                v56 = *v54++;
                v53 |= (v56 & 0x7F) << v51;
                if ((v56 & 0x80) == 0)
                {
                  break;
                }

                v51 += 7;
                ++v55;
                v14 = v52++ > 8;
                if (v14)
                {
                  LODWORD(v53) = 0;
                  break;
                }
              }
            }

LABEL_133:
            *(this + 15) = v53;
            goto LABEL_134;
          case 0xA:
            *(this + 34) |= 0x20u;
            v25 = *(a2 + 1);
            v2 = *(a2 + 2);
            v26 = *a2;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
            {
              v71 = 0;
              v72 = 0;
              v29 = 0;
              if (v2 <= v25)
              {
                v2 = *(a2 + 1);
              }

              v73 = (v26 + v25);
              v74 = v2 - v25;
              v75 = v25 + 1;
              while (1)
              {
                if (!v74)
                {
                  LODWORD(v29) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_129;
                }

                v76 = v75;
                v77 = *v73;
                *(a2 + 1) = v76;
                v29 |= (v77 & 0x7F) << v71;
                if ((v77 & 0x80) == 0)
                {
                  break;
                }

                v71 += 7;
                ++v73;
                --v74;
                v75 = v76 + 1;
                v14 = v72++ > 8;
                if (v14)
                {
                  LODWORD(v29) = 0;
                  goto LABEL_128;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v29) = 0;
              }

LABEL_128:
              v2 = v76;
            }

            else
            {
              v27 = 0;
              v28 = 0;
              v29 = 0;
              v30 = (v26 + v25);
              v31 = v25 + 1;
              while (1)
              {
                v2 = v31;
                *(a2 + 1) = v31;
                v32 = *v30++;
                v29 |= (v32 & 0x7F) << v27;
                if ((v32 & 0x80) == 0)
                {
                  break;
                }

                v27 += 7;
                ++v31;
                v14 = v28++ > 8;
                if (v14)
                {
                  LODWORD(v29) = 0;
                  break;
                }
              }
            }

LABEL_129:
            *(this + 12) = v29;
            goto LABEL_134;
        }
      }
    }

    else if (v22 <= 2)
    {
      if (v22 == 1)
      {
        *(this + 34) |= 0x40u;
        v41 = *(a2 + 1);
        v2 = *(a2 + 2);
        v42 = *a2;
        if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
        {
          v64 = 0;
          v65 = 0;
          v45 = 0;
          if (v2 <= v41)
          {
            v2 = *(a2 + 1);
          }

          v66 = (v42 + v41);
          v67 = v2 - v41;
          v68 = v41 + 1;
          while (1)
          {
            if (!v67)
            {
              LODWORD(v45) = 0;
              *(a2 + 24) = 1;
              goto LABEL_125;
            }

            v69 = v68;
            v70 = *v66;
            *(a2 + 1) = v69;
            v45 |= (v70 & 0x7F) << v64;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            ++v66;
            --v67;
            v68 = v69 + 1;
            v14 = v65++ > 8;
            if (v14)
            {
              LODWORD(v45) = 0;
              goto LABEL_124;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v45) = 0;
          }

LABEL_124:
          v2 = v69;
        }

        else
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = (v42 + v41);
          v47 = v41 + 1;
          while (1)
          {
            v2 = v47;
            *(a2 + 1) = v47;
            v48 = *v46++;
            v45 |= (v48 & 0x7F) << v43;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            ++v47;
            v14 = v44++ > 8;
            if (v14)
            {
              LODWORD(v45) = 0;
              break;
            }
          }
        }

LABEL_125:
        *(this + 13) = v45;
        goto LABEL_134;
      }

      if (v22 == 2)
      {
        *(this + 34) |= 0x80u;
        v33 = *(a2 + 1);
        v2 = *(a2 + 2);
        v34 = *a2;
        if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
        {
          v57 = 0;
          v58 = 0;
          v37 = 0;
          if (v2 <= v33)
          {
            v2 = *(a2 + 1);
          }

          v59 = (v34 + v33);
          v60 = v2 - v33;
          v61 = v33 + 1;
          while (1)
          {
            if (!v60)
            {
              LODWORD(v37) = 0;
              *(a2 + 24) = 1;
              goto LABEL_121;
            }

            v62 = v61;
            v63 = *v59;
            *(a2 + 1) = v62;
            v37 |= (v63 & 0x7F) << v57;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            ++v59;
            --v60;
            v61 = v62 + 1;
            v14 = v58++ > 8;
            if (v14)
            {
              LODWORD(v37) = 0;
              goto LABEL_120;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v37) = 0;
          }

LABEL_120:
          v2 = v62;
        }

        else
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = (v34 + v33);
          v39 = v33 + 1;
          while (1)
          {
            v2 = v39;
            *(a2 + 1) = v39;
            v40 = *v38++;
            v37 |= (v40 & 0x7F) << v35;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            ++v39;
            v14 = v36++ > 8;
            if (v14)
            {
              LODWORD(v37) = 0;
              break;
            }
          }
        }

LABEL_121:
        *(this + 14) = v37;
        goto LABEL_134;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 34) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_70;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_113;
        case 4:
          *(this + 34) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_70;
          }

          *(this + 1) = *(*a2 + v2);
LABEL_113:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_134;
        case 5:
          *(this + 34) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v24 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v23 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v24 = v23 != 0;
          }

          *(this + 64) = v24;
          goto LABEL_134;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v85 = 0;
      return v85 & 1;
    }

    v2 = *(a2 + 1);
LABEL_134:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v85 = v4 ^ 1;
  return v85 & 1;
}

uint64_t CMMsl::OnsetHeartRateData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 68);
  if ((v4 & 0x40) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 68);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 68);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 68) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 68);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x20) == 0)
  {
    return this;
  }

LABEL_21:

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::OnsetHeartRateData::hash_value(CMMsl::OnsetHeartRateData *this)
{
  v1 = *(this + 34);
  if ((v1 & 0x40) != 0)
  {
    v2 = *(this + 13);
    if ((v1 & 0x80) != 0)
    {
LABEL_3:
      v3 = *(this + 14);
      if ((v1 & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_24:
      v4 = 0.0;
      if (v1)
      {
        goto LABEL_7;
      }

LABEL_25:
      v5 = 0.0;
      if ((*(this + 34) & 0x200) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_4:
  v4 = *(this + 2);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_7:
  v5 = *(this + 1);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((*(this + 34) & 0x200) != 0)
  {
LABEL_10:
    v6 = *(this + 64);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_11;
    }

LABEL_27:
    v7 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v8 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_17;
    }

LABEL_29:
    v9 = 0.0;
    if ((*(this + 34) & 0x100) != 0)
    {
      goto LABEL_20;
    }

LABEL_30:
    v10 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_21;
    }

LABEL_31:
    v11 = 0;
    return v3 ^ v2 ^ *&v4 ^ *&v5 ^ v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ v10 ^ v11;
  }

LABEL_26:
  v6 = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_27;
  }

LABEL_11:
  v7 = *(this + 5);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v8 = *(this + 4);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  v9 = *(this + 3);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((*(this + 34) & 0x100) == 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  v10 = *(this + 15);
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v11 = *(this + 12);
  return v3 ^ v2 ^ *&v4 ^ *&v5 ^ v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ v10 ^ v11;
}

void CMMsl::Orientation::~Orientation(CMMsl::Orientation *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::Orientation::Orientation(uint64_t this, const CMMsl::Orientation *a2)
{
  *this = &unk_286C22178;
  *(this + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

const CMMsl::Orientation *CMMsl::Orientation::operator=(const CMMsl::Orientation *a1, const CMMsl::Orientation *a2)
{
  if (a1 != a2)
  {
    CMMsl::Orientation::Orientation(v7, a2);
    v3 = v9;
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    *(a1 + 1) = v8;
    *(a1 + 2) = v3;
    v8 = v4;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::Orientation *a2, CMMsl::Orientation *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  return result;
}

double CMMsl::Orientation::Orientation(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22178;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C22178;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::Orientation::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8[0] = &unk_286C22178;
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    *(a2 + 20) = 0;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    v8[1] = v5;
    v8[2] = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::Orientation::formatText(CMMsl::Orientation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "orientation");
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::Orientation::readFrom(CMMsl::Orientation *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_24;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_51;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v2 = *(a2 + 1);
          }

          v32 = (v23 + v22);
          v33 = v2 - v22;
          v34 = v22 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v26) = 0;
              *(a2 + 24) = 1;
              goto LABEL_46;
            }

            v35 = v34;
            v36 = *v32;
            *(a2 + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            ++v32;
            --v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_45;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_45:
          v2 = v35;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v2 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_46:
        *(this + 4) = v26;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 20) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
LABEL_24:
        if (!PB::Reader::skip(a2))
        {
          v37 = 0;
          return v37 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_24;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_51:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t CMMsl::Orientation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t CMMsl::Orientation::hash_value(CMMsl::Orientation *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    return v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 4);
  return v2 ^ *&v1;
}

void CMMsl::PDRAlgType::~PDRAlgType(CMMsl::PDRAlgType *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::PDRAlgType::PDRAlgType(uint64_t this, const CMMsl::PDRAlgType *a2)
{
  *this = &unk_286C221B0;
  *(this + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::PDRAlgType::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = &unk_286C221B0;
    v3 = *(a2 + 12);
    v4 = *(a1 + 8);
    *(a1 + 8) = (v3 << 31 >> 31) & *(a2 + 8);
    *(a1 + 12) = v3 & 1;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v6[0] = &unk_286C221B0;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::PDRAlgType *a2, CMMsl::PDRAlgType *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t CMMsl::PDRAlgType::formatText(CMMsl::PDRAlgType *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    PB::TextFormatter::format(a2, "type");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PDRAlgType::readFrom(CMMsl::PDRAlgType *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v3);
      v12 = v3 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_27;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_47;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v32 = (v23 + v22);
          v33 = v3 - v22;
          v34 = v22 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v26) = 0;
              *(a2 + 24) = 1;
              goto LABEL_42;
            }

            v35 = v34;
            v36 = *v32;
            *(a2 + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            ++v32;
            --v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_41;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_41:
          v3 = v35;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v3 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_42:
        *(this + 2) = v26;
      }

      else
      {
LABEL_27:
        if (!PB::Reader::skip(a2))
        {
          v37 = 0;
          return v37 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_47;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v3);
    v18 = v2 >= v3;
    v19 = v2 - v3;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v3 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_27;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_47:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t CMMsl::PDRAlgType::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t CMMsl::PDRAlgType::hash_value(CMMsl::PDRAlgType *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

void CMMsl::PDRDOTEstimatorState::~PDRDOTEstimatorState(CMMsl::PDRDOTEstimatorState *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::PDRDOTEstimatorState::PDRDOTEstimatorState(CMMsl::PDRDOTEstimatorState *this, const CMMsl::PDRDOTEstimatorState *a2)
{
  *this = &unk_286C221E8;
  *(this + 8) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    result = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 1) = result;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 4) != 0)
  {
LABEL_5:
    LODWORD(result) = *(a2 + 6);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 6) = LODWORD(result);
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 2);
    *(this + 32) = v3 | 2;
    *(this + 2) = result;
    return result;
  }

  LODWORD(result) = *(a2 + 7);
  v3 |= 8u;
  *(this + 32) = v3;
  *(this + 7) = LODWORD(result);
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t CMMsl::PDRDOTEstimatorState::operator=(uint64_t a1, const CMMsl::PDRDOTEstimatorState *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRDOTEstimatorState::PDRDOTEstimatorState(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PDRDOTEstimatorState *a2, CMMsl::PDRDOTEstimatorState *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::PDRDOTEstimatorState::PDRDOTEstimatorState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C221E8;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C221E8;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PDRDOTEstimatorState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_286C221E8;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v11 = *(a1 + 32);
    v4 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    v10 = v4;
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a1 + 32) = v3;
    *(a1 + 8) = v6;
    v9 = v5;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::PDRDOTEstimatorState::formatText(CMMsl::PDRDOTEstimatorState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "dot", *(this + 6));
    v5 = *(this + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "dotUnc", *(this + 7));
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  if ((*(this + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestampPast", *(this + 2));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PDRDOTEstimatorState::readFrom(CMMsl::PDRDOTEstimatorState *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 32) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_37:
          *(a2 + 24) = 1;
          goto LABEL_41;
        }

        *(this + 7) = *(*a2 + v2);
LABEL_39:
        v2 = *(a2 + 1) + 4;
LABEL_40:
        *(a2 + 1) = v2;
        goto LABEL_41;
      }

      if (v22 == 4)
      {
        *(this + 32) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_37;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_34:
        v2 = *(a2 + 1) + 8;
        goto LABEL_40;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 32) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_37;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_34;
      }

      if (v22 == 2)
      {
        *(this + 32) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_37;
        }

        *(this + 6) = *(*a2 + v2);
        goto LABEL_39;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_41:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::PDRDOTEstimatorState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 28));
      if ((*(v3 + 32) & 2) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 32);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::PDRDOTEstimatorState::hash_value(CMMsl::PDRDOTEstimatorState *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 6);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 32) & 8) != 0)
  {
LABEL_6:
    v4 = *(this + 7);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v6 = 0.0;
    return v3 ^ *&v1 ^ v5 ^ *&v6;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 2);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return v3 ^ *&v1 ^ v5 ^ *&v6;
}

void CMMsl::PDRDOTEstimatorStateArmSwing::~PDRDOTEstimatorStateArmSwing(CMMsl::PDRDOTEstimatorStateArmSwing *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::PDRDOTEstimatorStateArmSwing::PDRDOTEstimatorStateArmSwing(CMMsl::PDRDOTEstimatorStateArmSwing *this, const CMMsl::PDRDOTEstimatorStateArmSwing *a2)
{
  *this = &unk_286C22220;
  *(this + 8) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    result = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 1) = result;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 4) != 0)
  {
LABEL_5:
    LODWORD(result) = *(a2 + 6);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 6) = LODWORD(result);
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 2);
    *(this + 32) = v3 | 2;
    *(this + 2) = result;
    return result;
  }

  LODWORD(result) = *(a2 + 7);
  v3 |= 8u;
  *(this + 32) = v3;
  *(this + 7) = LODWORD(result);
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t CMMsl::PDRDOTEstimatorStateArmSwing::operator=(uint64_t a1, const CMMsl::PDRDOTEstimatorStateArmSwing *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRDOTEstimatorStateArmSwing::PDRDOTEstimatorStateArmSwing(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PDRDOTEstimatorStateArmSwing *a2, CMMsl::PDRDOTEstimatorStateArmSwing *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::PDRDOTEstimatorStateArmSwing::PDRDOTEstimatorStateArmSwing(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22220;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C22220;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PDRDOTEstimatorStateArmSwing::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_286C22220;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v11 = *(a1 + 32);
    v4 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    v10 = v4;
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a1 + 32) = v3;
    *(a1 + 8) = v6;
    v9 = v5;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::PDRDOTEstimatorStateArmSwing::formatText(CMMsl::PDRDOTEstimatorStateArmSwing *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "dot", *(this + 6));
    v5 = *(this + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "dotUnc", *(this + 7));
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  if ((*(this + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestampPast", *(this + 2));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PDRDOTEstimatorStateArmSwing::readFrom(CMMsl::PDRDOTEstimatorStateArmSwing *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 32) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_37:
          *(a2 + 24) = 1;
          goto LABEL_41;
        }

        *(this + 7) = *(*a2 + v2);
LABEL_39:
        v2 = *(a2 + 1) + 4;
LABEL_40:
        *(a2 + 1) = v2;
        goto LABEL_41;
      }

      if (v22 == 4)
      {
        *(this + 32) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_37;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_34:
        v2 = *(a2 + 1) + 8;
        goto LABEL_40;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 32) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_37;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_34;
      }

      if (v22 == 2)
      {
        *(this + 32) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_37;
        }

        *(this + 6) = *(*a2 + v2);
        goto LABEL_39;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_41:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::PDRDOTEstimatorStateArmSwing::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 28));
      if ((*(v3 + 32) & 2) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 32);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::PDRDOTEstimatorStateArmSwing::hash_value(CMMsl::PDRDOTEstimatorStateArmSwing *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 6);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 32) & 8) != 0)
  {
LABEL_6:
    v4 = *(this + 7);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v6 = 0.0;
    return v3 ^ *&v1 ^ v5 ^ *&v6;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 2);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return v3 ^ *&v1 ^ v5 ^ *&v6;
}

void CMMsl::PDRDOTEstimatorStateBody::~PDRDOTEstimatorStateBody(CMMsl::PDRDOTEstimatorStateBody *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::PDRDOTEstimatorStateBody::PDRDOTEstimatorStateBody(CMMsl::PDRDOTEstimatorStateBody *this, const CMMsl::PDRDOTEstimatorStateBody *a2)
{
  *this = &unk_286C22258;
  *(this + 8) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    result = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 1) = result;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 4) != 0)
  {
LABEL_5:
    LODWORD(result) = *(a2 + 6);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 6) = LODWORD(result);
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 2);
    *(this + 32) = v3 | 2;
    *(this + 2) = result;
    return result;
  }

  LODWORD(result) = *(a2 + 7);
  v3 |= 8u;
  *(this + 32) = v3;
  *(this + 7) = LODWORD(result);
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t CMMsl::PDRDOTEstimatorStateBody::operator=(uint64_t a1, const CMMsl::PDRDOTEstimatorStateBody *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRDOTEstimatorStateBody::PDRDOTEstimatorStateBody(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PDRDOTEstimatorStateBody *a2, CMMsl::PDRDOTEstimatorStateBody *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::PDRDOTEstimatorStateBody::PDRDOTEstimatorStateBody(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22258;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C22258;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PDRDOTEstimatorStateBody::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_286C22258;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v11 = *(a1 + 32);
    v4 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    v10 = v4;
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a1 + 32) = v3;
    *(a1 + 8) = v6;
    v9 = v5;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::PDRDOTEstimatorStateBody::formatText(CMMsl::PDRDOTEstimatorStateBody *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "dot", *(this + 6));
    v5 = *(this + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "dotUnc", *(this + 7));
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  if ((*(this + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestampPast", *(this + 2));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PDRDOTEstimatorStateBody::readFrom(CMMsl::PDRDOTEstimatorStateBody *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 32) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_37:
          *(a2 + 24) = 1;
          goto LABEL_41;
        }

        *(this + 7) = *(*a2 + v2);
LABEL_39:
        v2 = *(a2 + 1) + 4;
LABEL_40:
        *(a2 + 1) = v2;
        goto LABEL_41;
      }

      if (v22 == 4)
      {
        *(this + 32) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_37;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_34:
        v2 = *(a2 + 1) + 8;
        goto LABEL_40;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 32) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_37;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_34;
      }

      if (v22 == 2)
      {
        *(this + 32) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_37;
        }

        *(this + 6) = *(*a2 + v2);
        goto LABEL_39;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_41:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::PDRDOTEstimatorStateBody::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 28));
      if ((*(v3 + 32) & 2) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 32);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::PDRDOTEstimatorStateBody::hash_value(CMMsl::PDRDOTEstimatorStateBody *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 6);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 32) & 8) != 0)
  {
LABEL_6:
    v4 = *(this + 7);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v6 = 0.0;
    return v3 ^ *&v1 ^ v5 ^ *&v6;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 2);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return v3 ^ *&v1 ^ v5 ^ *&v6;
}

void CMMsl::PDRDOTEstimatorStateBodyDebug::~PDRDOTEstimatorStateBodyDebug(CMMsl::PDRDOTEstimatorStateBodyDebug *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::PDRDOTEstimatorStateBodyDebug::PDRDOTEstimatorStateBodyDebug(CMMsl::PDRDOTEstimatorStateBodyDebug *this, const CMMsl::PDRDOTEstimatorStateBodyDebug *a2)
{
  *this = &unk_286C22290;
  *(this + 10) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 40) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 0x10) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 7);
    v3 |= 0x10u;
    *(this + 40) = v3;
    *(this + 7) = v4;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    LODWORD(v4) = *(a2 + 8);
    v3 |= 0x20u;
    *(this + 40) = v3;
    *(this + 8) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 6);
  v3 |= 8u;
  *(this + 40) = v3;
  *(this + 6) = v4;
  v2 = *(a2 + 40);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = *(a2 + 36);
  v3 |= 0x40u;
  *(this + 40) = v3;
  *(this + 36) = v5;
  v2 = *(a2 + 40);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      return *&v4;
    }

    goto LABEL_16;
  }

LABEL_15:
  LODWORD(v4) = *(a2 + 5);
  v3 |= 4u;
  *(this + 40) = v3;
  *(this + 5) = v4;
  if ((*(a2 + 40) & 2) == 0)
  {
    return *&v4;
  }

LABEL_16:
  LODWORD(v4) = *(a2 + 4);
  *(this + 40) = v3 | 2;
  *(this + 4) = v4;
  return *&v4;
}

uint64_t CMMsl::PDRDOTEstimatorStateBodyDebug::operator=(uint64_t a1, const CMMsl::PDRDOTEstimatorStateBodyDebug *a2)
{
  if (a1 != a2)
  {
    CMMsl::PDRDOTEstimatorStateBodyDebug::PDRDOTEstimatorStateBodyDebug(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    LODWORD(v4) = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v4;
    LOBYTE(v3) = *(a1 + 36);
    *(a1 + 36) = v11;
    v11 = v3;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::PDRDOTEstimatorStateBodyDebug *a2, CMMsl::PDRDOTEstimatorStateBodyDebug *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LOBYTE(v3) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v3;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float CMMsl::PDRDOTEstimatorStateBodyDebug::PDRDOTEstimatorStateBodyDebug(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22290;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C22290;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PDRDOTEstimatorStateBodyDebug::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v12[0] = &unk_286C22290;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 32);
    v6 = *(a2 + 36);
    v16 = *(a1 + 40);
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v12[1] = v7;
    v14 = *(a1 + 32);
    v8 = *(a1 + 36);
    *(a1 + 36) = v6;
    v15 = v8;
    v9 = *(a1 + 16);
    v10 = *(a2 + 16);
    *(a1 + 40) = v3;
    *(a1 + 32) = v5;
    *(a1 + 16) = v10;
    v13 = v9;
    PB::Base::~Base(v12);
  }

  return a1;
}

uint64_t CMMsl::PDRDOTEstimatorStateBodyDebug::formatText(CMMsl::PDRDOTEstimatorStateBodyDebug *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "dotAngularRateVar", *(this + 4));
    v5 = *(this + 40);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "dotUncTNB", *(this + 5));
  v5 = *(this + 40);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "dotUncertainty", *(this + 6));
  v5 = *(this + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "dotVectorX", *(this + 7));
  v5 = *(this + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "dotVectorY", *(this + 8));
  v5 = *(this + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "hasValidTNBFrame");
  if (*(this + 40))
  {
LABEL_8:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_9:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PDRDOTEstimatorStateBodyDebug::readFrom(CMMsl::PDRDOTEstimatorStateBodyDebug *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 3)
    {
      switch(v22)
      {
        case 1:
          *(this + 40) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_48:
            *(a2 + 24) = 1;
            goto LABEL_54;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_53;
        case 2:
          *(this + 40) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_48;
          }

          *(this + 7) = *(*a2 + v2);
LABEL_52:
          v2 = *(a2 + 1) + 4;
LABEL_53:
          *(a2 + 1) = v2;
          goto LABEL_54;
        case 3:
          *(this + 40) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_48;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_52;
      }
    }

    else if (v22 > 5)
    {
      if (v22 == 6)
      {
        *(this + 40) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_48;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_52;
      }

      if (v22 == 7)
      {
        *(this + 40) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_48;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_52;
      }
    }

    else
    {
      if (v22 == 4)
      {
        *(this + 40) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_48;
        }

        *(this + 6) = *(*a2 + v2);
        goto LABEL_52;
      }

      if (v22 == 5)
      {
        *(this + 40) |= 0x40u;
        v2 = *(a2 + 1);
        if (v2 >= *(a2 + 2))
        {
          v24 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v23 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v24 = v23 != 0;
        }

        *(this + 36) = v24;
        goto LABEL_54;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v25 = 0;
      return v25 & 1;
    }

    v2 = *(a2 + 1);
LABEL_54:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t CMMsl::PDRDOTEstimatorStateBodyDebug::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 40) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 40);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::write(a2, *(v3 + 20));
    if ((*(v3 + 40) & 2) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 40);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_15:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5);
}