__n128 std::__introsort<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,false>(char *a1, char *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 40);
  v10 = a2 - 80;
  v11 = a2 - 120;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        result.n128_u64[0] = *(a2 - 4);
        if (result.n128_f64[0] < *(v12 + 1))
        {
          v294 = *(v12 + 4);
          v226 = *v12;
          v262 = *(v12 + 1);
          v123 = *(a2 - 40);
          v124 = *(a2 - 24);
          *(v12 + 16) = *(a2 - 4);
          *v12 = v123;
          *(v12 + 1) = v124;
          result = v226;
          *(a2 - 4) = v294;
          *(a2 - 24) = v262;
          *(a2 - 40) = v226;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v129 = *(v12 + 6);
      v130 = *(v12 + 11);
      if (v129 >= *(v12 + 1))
      {
        if (v130 < v129)
        {
          v179 = *(v12 + 9);
          result = *(v12 + 40);
          v180 = *(v12 + 6);
          *(v12 + 40) = *(v12 + 5);
          v181 = *(v12 + 56);
          *(v12 + 56) = v180;
          *(v12 + 36) = *(v12 + 56);
          *(v12 + 5) = result;
          *(v12 + 6) = v181;
          *(v12 + 56) = v179;
          if (*(v12 + 6) < *(v12 + 1))
          {
            v299 = *(v12 + 4);
            v233 = *v12;
            v269 = *(v12 + 1);
            v182 = *(v12 + 56);
            *v12 = *(v12 + 40);
            *(v12 + 1) = v182;
            *(v12 + 16) = *(v12 + 36);
            *(v12 + 40) = v233;
            *(v12 + 56) = v269;
            *(v12 + 36) = v299;
          }
        }
      }

      else if (v130 >= v129)
      {
        v302 = *(v12 + 4);
        v236 = *v12;
        v272 = *(v12 + 1);
        v191 = *(v12 + 56);
        *v12 = *(v12 + 40);
        *(v12 + 1) = v191;
        *(v12 + 16) = *(v12 + 36);
        *(v12 + 40) = v236;
        *(v12 + 56) = v272;
        *(v12 + 36) = v302;
        if (v130 < *(v12 + 6))
        {
          v192 = *(v12 + 9);
          result = *(v12 + 56);
          v193 = *(v12 + 40);
          v194 = *(v12 + 6);
          *(v12 + 40) = *(v12 + 5);
          *(v12 + 56) = v194;
          *(v12 + 36) = *(v12 + 56);
          *(v12 + 5) = v193;
          *(v12 + 6) = result;
          *(v12 + 56) = v192;
        }
      }

      else
      {
        v296 = *(v12 + 4);
        v228 = *v12;
        v264 = *(v12 + 1);
        v131 = *(v12 + 6);
        *v12 = *(v12 + 5);
        *(v12 + 1) = v131;
        *(v12 + 16) = *(v12 + 56);
        *(v12 + 5) = v228;
        *(v12 + 6) = v264;
        *(v12 + 56) = v296;
      }

      result.n128_u64[0] = *(a2 - 4);
      if (result.n128_f64[0] >= *(v12 + 11))
      {
        return result;
      }

      v237 = *(v12 + 5);
      v273 = *(v12 + 6);
      v303 = *(v12 + 14);
      v196 = *v9;
      v195 = *(a2 - 24);
      *(v12 + 56) = *(a2 - 4);
      *(v12 + 5) = v196;
      *(v12 + 6) = v195;
      *(a2 - 4) = v303;
      *v9 = v237;
      *(a2 - 24) = v273;
      result.n128_u64[0] = *(v12 + 11);
      if (result.n128_f64[0] >= *(v12 + 6))
      {
        return result;
      }

      v197 = *(v12 + 9);
      result = *(v12 + 40);
      v198 = *(v12 + 6);
      *(v12 + 40) = *(v12 + 5);
      v199 = *(v12 + 56);
      *(v12 + 56) = v198;
      *(v12 + 36) = *(v12 + 56);
      *(v12 + 5) = result;
      *(v12 + 6) = v199;
      *(v12 + 56) = v197;
LABEL_186:
      result.n128_u64[0] = *(v12 + 6);
      if (result.n128_f64[0] < *(v12 + 1))
      {
        v304 = *(v12 + 4);
        v238 = *v12;
        v274 = *(v12 + 1);
        v200 = *(v12 + 56);
        *v12 = *(v12 + 40);
        *(v12 + 1) = v200;
        *(v12 + 16) = *(v12 + 36);
        result = v238;
        *(v12 + 40) = v238;
        *(v12 + 56) = v274;
        *(v12 + 36) = v304;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,0>(v12, (v12 + 40), (v12 + 80), (v12 + 120), (a2 - 40), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 959)
    {
      v132 = v12 + 40;
      v134 = v12 == a2 || v132 == a2;
      if (a4)
      {
        if (!v134)
        {
          v135 = 0;
          v136 = v12;
          do
          {
            v137 = v132;
            result.n128_u64[0] = *(v136 + 6);
            if (result.n128_f64[0] < *(v136 + 1))
            {
              v138 = *v132;
              v229 = *(v136 + 56);
              v265 = *(v136 + 9);
              v139 = v135;
              while (1)
              {
                v140 = &v12[v139];
                v141 = *&v12[v139 + 16];
                *(v140 + 40) = *&v12[v139];
                *(v140 + 56) = v141;
                *(v140 + 36) = *&v12[v139 + 32];
                if (!v139)
                {
                  break;
                }

                v139 -= 40;
                if (result.n128_f64[0] >= *(v140 - 4))
                {
                  v142 = &v12[v139 + 40];
                  goto LABEL_129;
                }
              }

              v142 = v12;
LABEL_129:
              *v142 = v138;
              *(v142 + 8) = result.n128_u64[0];
              result = v229;
              *(v142 + 16) = v229;
              *(v142 + 32) = v265;
            }

            v132 = v137 + 40;
            v135 += 40;
            v136 = v137;
          }

          while (v137 + 40 != a2);
        }
      }

      else if (!v134)
      {
        do
        {
          v183 = v132;
          result.n128_u64[0] = *(a1 + 6);
          if (result.n128_f64[0] < *(a1 + 1))
          {
            v184 = *v132;
            v234 = *(a1 + 56);
            v270 = *(a1 + 9);
            v185 = v132;
            do
            {
              v186 = *(v185 - 24);
              *v185 = *(v185 - 40);
              *(v185 + 1) = v186;
              *(v185 + 16) = *(v185 - 4);
              v187 = *(v185 - 9);
              v185 -= 40;
            }

            while (result.n128_f64[0] < v187);
            *v185 = v184;
            *(v185 + 1) = result.n128_u64[0];
            result = v234;
            *(v185 + 16) = v270;
            *(v185 + 1) = v234;
          }

          v132 += 40;
          a1 = v183;
        }

        while (v183 + 40 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v143 = (v14 - 2) >> 1;
        v144 = v143;
        do
        {
          v145 = v144;
          if (v143 >= v144)
          {
            v146 = (2 * v144) | 1;
            v147 = &v12[40 * v146];
            if (2 * v145 + 2 < v14 && v147[1] < v147[6])
            {
              v147 += 5;
              v146 = 2 * v145 + 2;
            }

            v148 = &v12[40 * v145];
            v149 = v148[1];
            if (v147[1] >= v149)
            {
              v150 = *v148;
              v266 = *(v148 + 4);
              v230 = *(v148 + 1);
              do
              {
                v151 = v148;
                v148 = v147;
                v152 = *v147;
                v153 = *(v147 + 1);
                *(v151 + 16) = *(v147 + 16);
                *v151 = v152;
                *(v151 + 1) = v153;
                if (v143 < v146)
                {
                  break;
                }

                v154 = 2 * v146;
                v146 = (2 * v146) | 1;
                v147 = &v12[40 * v146];
                v155 = v154 + 2;
                if (v155 < v14 && v147[1] < v147[6])
                {
                  v147 += 5;
                  v146 = v155;
                }
              }

              while (v147[1] >= v149);
              *v148 = v150;
              v148[1] = v149;
              *(v148 + 1) = v230;
              *(v148 + 16) = v266;
            }
          }

          v144 = v145 - 1;
        }

        while (v145);
        v156 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
        do
        {
          v157 = 0;
          v297 = *(v12 + 4);
          v231 = *v12;
          v267 = *(v12 + 1);
          v158 = v12;
          do
          {
            v159 = &v158->n128_u64[5 * v157];
            v160 = (v159 + 5);
            v161 = (2 * v157) | 1;
            v157 = 2 * v157 + 2;
            if (v157 >= v156)
            {
              v157 = v161;
            }

            else
            {
              v162 = *(v159 + 6);
              v163 = *(v159 + 11);
              v164 = (v159 + 10);
              if (v162 >= v163)
              {
                v157 = v161;
              }

              else
              {
                v160 = v164;
              }
            }

            v165 = *v160;
            v166 = v160[1];
            v158[2].n128_u16[0] = v160[2].n128_u16[0];
            *v158 = v165;
            v158[1] = v166;
            v158 = v160;
          }

          while (v157 <= ((v156 - 2) >> 1));
          a2 -= 40;
          if (v160 == a2)
          {
            result = v231;
            v160[2].n128_u16[0] = v297;
            *v160 = v231;
            v160[1] = v267;
          }

          else
          {
            v167 = *a2;
            v168 = *(a2 + 1);
            v160[2].n128_u16[0] = *(a2 + 16);
            *v160 = v167;
            v160[1] = v168;
            result = v231;
            *(a2 + 16) = v297;
            *a2 = v231;
            *(a2 + 1) = v267;
            v169 = v160 - v12 + 40;
            if (v169 >= 41)
            {
              v170 = (-2 - 0x3333333333333333 * (v169 >> 3)) >> 1;
              v171 = &v12[40 * v170];
              result.n128_u64[0] = v160->n128_u64[1];
              if (v171->n128_f64[1] < result.n128_f64[0])
              {
                v172 = v160->n128_u64[0];
                v203 = v160[1];
                v206 = v160[2].n128_i64[0];
                do
                {
                  v173 = v160;
                  v160 = v171;
                  v174 = *v171;
                  v175 = v171[1];
                  v173[2].n128_u16[0] = v171[2].n128_u16[0];
                  *v173 = v174;
                  v173[1] = v175;
                  if (!v170)
                  {
                    break;
                  }

                  v170 = (v170 - 1) >> 1;
                  v171 = &v12[40 * v170];
                }

                while (v171->n128_f64[1] < result.n128_f64[0]);
                v160->n128_u64[0] = v172;
                v160->n128_u64[1] = result.n128_u64[0];
                result = v203;
                v160[1] = v203;
                v160[2].n128_u16[0] = v206;
              }
            }
          }
        }

        while (v156-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = &v12[40 * (v14 >> 1)];
    v17 = *(a2 - 4);
    if (v13 >= 0x1401)
    {
      v18 = v16[1];
      if (v18 >= *(v12 + 1))
      {
        if (v17 < v18)
        {
          v277 = *(v16 + 4);
          v209 = *v16;
          v241 = *(v16 + 1);
          v24 = *v9;
          v25 = *(a2 - 24);
          *(v16 + 16) = *(a2 - 4);
          *v16 = v24;
          *(v16 + 1) = v25;
          *(a2 - 4) = v277;
          *v9 = v209;
          *(a2 - 24) = v241;
          if (v16[1] < *(v12 + 1))
          {
            v278 = *(v12 + 4);
            v210 = *v12;
            v242 = *(v12 + 1);
            v26 = *v16;
            v27 = *(v16 + 1);
            *(v12 + 16) = *(v16 + 16);
            *v12 = v26;
            *(v12 + 1) = v27;
            *(v16 + 16) = v278;
            *v16 = v210;
            *(v16 + 1) = v242;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v275 = *(v12 + 4);
          v207 = *v12;
          v239 = *(v12 + 1);
          v19 = *v9;
          v20 = *(a2 - 24);
          *(v12 + 16) = *(a2 - 4);
          *v12 = v19;
          *(v12 + 1) = v20;
          goto LABEL_26;
        }

        v281 = *(v12 + 4);
        v213 = *v12;
        v245 = *(v12 + 1);
        v32 = *v16;
        v33 = *(v16 + 1);
        *(v12 + 16) = *(v16 + 16);
        *v12 = v32;
        *(v12 + 1) = v33;
        *(v16 + 16) = v281;
        *v16 = v213;
        *(v16 + 1) = v245;
        if (*(a2 - 4) < v16[1])
        {
          v275 = *(v16 + 4);
          v207 = *v16;
          v239 = *(v16 + 1);
          v34 = *v9;
          v35 = *(a2 - 24);
          *(v16 + 16) = *(a2 - 4);
          *v16 = v34;
          *(v16 + 1) = v35;
LABEL_26:
          *(a2 - 4) = v275;
          *v9 = v207;
          *(a2 - 24) = v239;
        }
      }

      v36 = &v12[40 * v15];
      v37 = v36 - 5;
      v38 = *(v36 - 4);
      v39 = *(a2 - 9);
      if (v38 >= *(v12 + 6))
      {
        if (v39 < v38)
        {
          v282 = *(v36 - 1);
          v214 = *v37;
          v246 = *(v36 - 3);
          v45 = *v10;
          v46 = *(a2 - 4);
          *(v36 - 4) = *(a2 - 24);
          *v37 = v45;
          *(v36 - 3) = v46;
          *(a2 - 24) = v282;
          *v10 = v214;
          *(a2 - 4) = v246;
          if (*(v36 - 4) < *(v12 + 6))
          {
            v47 = *(v12 + 40);
            v247 = *(v12 + 56);
            v48 = *(v12 + 9);
            v50 = *v37;
            v49 = *(v37 + 1);
            *(v12 + 36) = *(v37 + 16);
            *(v12 + 40) = v50;
            *(v12 + 56) = v49;
            *(v37 + 16) = v48;
            *v37 = v47;
            *(v37 + 1) = v247;
          }
        }
      }

      else
      {
        if (v39 < v38)
        {
          v40 = *(v12 + 40);
          v41 = *(v12 + 56);
          v42 = *(v12 + 9);
          v44 = *v10;
          v43 = *(a2 - 4);
          *(v12 + 36) = *(a2 - 24);
          *(v12 + 40) = v44;
          *(v12 + 56) = v43;
          *(a2 - 24) = v42;
          goto LABEL_38;
        }

        v55 = *(v12 + 40);
        v249 = *(v12 + 56);
        v56 = *(v12 + 9);
        v58 = *v37;
        v57 = *(v37 + 1);
        *(v12 + 36) = *(v37 + 16);
        *(v12 + 40) = v58;
        *(v12 + 56) = v57;
        *(v37 + 16) = v56;
        *v37 = v55;
        *(v37 + 1) = v249;
        if (*(a2 - 9) < v37[1])
        {
          v284 = *(v37 + 4);
          v216 = *v37;
          v250 = *(v37 + 1);
          v59 = *v10;
          v60 = *(a2 - 4);
          *(v37 + 16) = *(a2 - 24);
          *v37 = v59;
          *(v37 + 1) = v60;
          v40 = v216;
          v41 = v250;
          *(a2 - 24) = v284;
LABEL_38:
          *v10 = v40;
          *(a2 - 4) = v41;
        }
      }

      v61 = &v12[40 * v15];
      v62 = *(v61 + 6);
      v63 = *(a2 - 14);
      if (v62 >= *(v12 + 11))
      {
        if (v63 < v62)
        {
          v285 = *(v61 + 9);
          v217 = *(v61 + 40);
          v251 = *(v61 + 56);
          v69 = *v11;
          v70 = *(a2 - 104);
          *(v61 + 36) = *(a2 - 44);
          *(v61 + 56) = v70;
          *(v61 + 40) = v69;
          *(a2 - 44) = v285;
          *v11 = v217;
          *(a2 - 104) = v251;
          if (*(v61 + 6) < *(v12 + 11))
          {
            v71 = *(v12 + 5);
            v252 = *(v12 + 6);
            v72 = *(v12 + 14);
            v73 = *(v61 + 56);
            v74 = *(v61 + 40);
            *(v12 + 56) = *(v61 + 36);
            *(v12 + 5) = v74;
            *(v12 + 6) = v73;
            *(v61 + 56) = v252;
            *(v61 + 36) = v72;
            *(v61 + 40) = v71;
          }
        }
      }

      else
      {
        if (v63 < v62)
        {
          v64 = *(v12 + 5);
          v65 = *(v12 + 6);
          v66 = *(v12 + 14);
          v68 = *v11;
          v67 = *(a2 - 104);
          *(v12 + 56) = *(a2 - 44);
          *(v12 + 5) = v68;
          *(v12 + 6) = v67;
          *(a2 - 44) = v66;
          goto LABEL_47;
        }

        v75 = *(v12 + 5);
        v253 = *(v12 + 6);
        v76 = *(v12 + 14);
        v77 = *(v61 + 56);
        v78 = *(v61 + 40);
        *(v12 + 56) = *(v61 + 36);
        *(v12 + 5) = v78;
        *(v12 + 6) = v77;
        *(v61 + 56) = v253;
        *(v61 + 36) = v76;
        *(v61 + 40) = v75;
        if (*(a2 - 14) < *(v61 + 6))
        {
          v286 = *(v61 + 9);
          v218 = *(v61 + 40);
          v254 = *(v61 + 56);
          v79 = *v11;
          v80 = *(a2 - 104);
          *(v61 + 36) = *(a2 - 44);
          *(v61 + 56) = v80;
          *(v61 + 40) = v79;
          v64 = v218;
          v65 = v254;
          *(a2 - 44) = v286;
LABEL_47:
          *v11 = v64;
          *(a2 - 104) = v65;
        }
      }

      v81 = v16[1];
      v82 = *(v61 + 6);
      if (v81 >= v37[1])
      {
        if (v82 < v81)
        {
          v288 = *(v16 + 4);
          v220 = *v16;
          v256 = *(v16 + 1);
          v84 = *(v61 + 56);
          *v16 = *(v61 + 40);
          *(v16 + 1) = v84;
          *(v16 + 16) = *(v61 + 36);
          *(v61 + 56) = v256;
          *(v61 + 36) = v288;
          *(v61 + 40) = v220;
          if (v16[1] < v37[1])
          {
            v289 = *(v37 + 4);
            v221 = *v37;
            v257 = *(v37 + 1);
            v85 = *(v16 + 1);
            *v37 = *v16;
            *(v37 + 1) = v85;
            *(v37 + 16) = *(v16 + 16);
            *(v16 + 16) = v289;
            *v16 = v221;
            *(v16 + 1) = v257;
          }
        }
      }

      else
      {
        if (v82 < v81)
        {
          v287 = *(v37 + 4);
          v219 = *v37;
          v255 = *(v37 + 1);
          v83 = *(v61 + 56);
          *v37 = *(v61 + 40);
          *(v37 + 1) = v83;
          *(v37 + 16) = *(v61 + 36);
          goto LABEL_56;
        }

        v290 = *(v37 + 4);
        v222 = *v37;
        v258 = *(v37 + 1);
        v86 = *(v16 + 1);
        *v37 = *v16;
        *(v37 + 1) = v86;
        *(v37 + 16) = *(v16 + 16);
        *(v16 + 16) = v290;
        *v16 = v222;
        *(v16 + 1) = v258;
        if (*(v61 + 6) < v16[1])
        {
          v287 = *(v16 + 4);
          v219 = *v16;
          v255 = *(v16 + 1);
          v87 = *(v61 + 56);
          *v16 = *(v61 + 40);
          *(v16 + 1) = v87;
          *(v16 + 16) = *(v61 + 36);
LABEL_56:
          *(v61 + 56) = v255;
          *(v61 + 36) = v287;
          *(v61 + 40) = v219;
        }
      }

      v291 = *(v12 + 4);
      v223 = *v12;
      v259 = *(v12 + 1);
      v88 = *v16;
      v89 = *(v16 + 1);
      *(v12 + 16) = *(v16 + 16);
      *v12 = v88;
      *(v12 + 1) = v89;
      *(v16 + 16) = v291;
      *v16 = v223;
      *(v16 + 1) = v259;
      goto LABEL_58;
    }

    v21 = *(v12 + 1);
    if (v21 >= v16[1])
    {
      if (v17 < v21)
      {
        v279 = *(v12 + 4);
        v211 = *v12;
        v243 = *(v12 + 1);
        v28 = *v9;
        v29 = *(a2 - 24);
        *(v12 + 16) = *(a2 - 4);
        *v12 = v28;
        *(v12 + 1) = v29;
        *(a2 - 4) = v279;
        *v9 = v211;
        *(a2 - 24) = v243;
        if (*(v12 + 1) < v16[1])
        {
          v280 = *(v16 + 4);
          v212 = *v16;
          v244 = *(v16 + 1);
          v30 = *v12;
          v31 = *(v12 + 1);
          *(v16 + 16) = *(v12 + 16);
          *v16 = v30;
          *(v16 + 1) = v31;
          *(v12 + 16) = v280;
          *v12 = v212;
          *(v12 + 1) = v244;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v21)
    {
      v276 = *(v16 + 4);
      v208 = *v16;
      v240 = *(v16 + 1);
      v22 = *v9;
      v23 = *(a2 - 24);
      *(v16 + 16) = *(a2 - 4);
      *v16 = v22;
      *(v16 + 1) = v23;
LABEL_35:
      *(a2 - 4) = v276;
      *v9 = v208;
      *(a2 - 24) = v240;
      goto LABEL_58;
    }

    v283 = *(v16 + 4);
    v215 = *v16;
    v248 = *(v16 + 1);
    v51 = *v12;
    v52 = *(v12 + 1);
    *(v16 + 16) = *(v12 + 16);
    *v16 = v51;
    *(v16 + 1) = v52;
    *(v12 + 16) = v283;
    *v12 = v215;
    *(v12 + 1) = v248;
    if (*(a2 - 4) < *(v12 + 1))
    {
      v276 = *(v12 + 4);
      v208 = *v12;
      v240 = *(v12 + 1);
      v53 = *v9;
      v54 = *(a2 - 24);
      *(v12 + 16) = *(a2 - 4);
      *v12 = v53;
      *(v12 + 1) = v54;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v90 = *(v12 + 1);
LABEL_61:
      v91 = 0;
      v92 = *v12;
      v201 = *(v12 + 1);
      v204 = *(v12 + 4);
      do
      {
        v93 = *&v12[v91 + 48];
        v91 += 40;
      }

      while (v93 < v90);
      v94 = &v12[v91];
      v95 = a2;
      if (v91 == 40)
      {
        v98 = a2;
        while (v94 < v98)
        {
          v96 = v98 - 40;
          v99 = *(v98 - 32);
          v98 -= 40;
          if (v99 < v90)
          {
            goto LABEL_71;
          }
        }

        v96 = v98;
      }

      else
      {
        do
        {
          v96 = v95 - 40;
          v97 = *(v95 - 32);
          v95 -= 40;
        }

        while (v97 >= v90);
      }

LABEL_71:
      v12 = v94;
      if (v94 < v96)
      {
        v100 = v96;
        do
        {
          v292 = *(v12 + 4);
          v224 = *v12;
          v260 = *(v12 + 1);
          v101 = *v100;
          v102 = *(v100 + 16);
          *(v12 + 16) = *(v100 + 32);
          *v12 = v101;
          *(v12 + 1) = v102;
          *(v100 + 32) = v292;
          *v100 = v224;
          *(v100 + 16) = v260;
          do
          {
            v103 = *(v12 + 6);
            v12 += 40;
          }

          while (v103 < v90);
          do
          {
            v104 = *(v100 - 32);
            v100 -= 40;
          }

          while (v104 >= v90);
        }

        while (v12 < v100);
      }

      if (v12 - 40 != a1)
      {
        v105 = *(v12 - 40);
        v106 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 4);
        *a1 = v105;
        *(a1 + 1) = v106;
      }

      *(v12 - 5) = v92;
      *(v12 - 4) = v90;
      result = v201;
      *(v12 - 4) = v204;
      *(v12 - 24) = v201;
      if (v94 < v96)
      {
        goto LABEL_82;
      }

      v107 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*>(a1, (v12 - 40), v201);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*>(v12, a2, v108))
      {
        a2 = v12 - 40;
        if (!v107)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v107)
      {
LABEL_82:
        result = std::__introsort<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,false>(a1, (v12 - 40), a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      v90 = *(v12 + 1);
      if (*(v12 - 4) < v90)
      {
        goto LABEL_61;
      }

      v109 = *v12;
      v202 = *(v12 + 1);
      v205 = *(v12 + 4);
      if (v90 >= *(a2 - 4))
      {
        v112 = (v12 + 40);
        do
        {
          v12 = v112;
          if (v112 >= a2)
          {
            break;
          }

          v113 = *(v112 + 8);
          v112 += 40;
        }

        while (v90 >= v113);
      }

      else
      {
        v110 = v12;
        do
        {
          v12 = v110 + 40;
          v111 = *(v110 + 6);
          v110 += 40;
        }

        while (v90 >= v111);
      }

      v114 = a2;
      if (v12 < a2)
      {
        v115 = a2;
        do
        {
          v114 = v115 - 40;
          v116 = *(v115 - 32);
          v115 -= 40;
        }

        while (v90 < v116);
      }

      while (v12 < v114)
      {
        v293 = *(v12 + 4);
        v225 = *v12;
        v261 = *(v12 + 1);
        v117 = *v114;
        v118 = *(v114 + 16);
        *(v12 + 16) = *(v114 + 32);
        *v12 = v117;
        *(v12 + 1) = v118;
        *(v114 + 32) = v293;
        *v114 = v225;
        *(v114 + 16) = v261;
        do
        {
          v119 = *(v12 + 6);
          v12 += 40;
        }

        while (v90 >= v119);
        do
        {
          v120 = *(v114 - 32);
          v114 -= 40;
        }

        while (v90 < v120);
      }

      if (v12 - 40 != a1)
      {
        v121 = *(v12 - 40);
        v122 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 4);
        *a1 = v121;
        *(a1 + 1) = v122;
      }

      a4 = 0;
      *(v12 - 5) = v109;
      *(v12 - 4) = v90;
      result = v202;
      *(v12 - 4) = v205;
      *(v12 - 24) = v202;
    }
  }

  result.n128_u64[0] = *(v12 + 6);
  v125 = *(a2 - 4);
  if (result.n128_f64[0] >= *(v12 + 1))
  {
    if (v125 >= result.n128_f64[0])
    {
      return result;
    }

    v232 = *(v12 + 40);
    v268 = *(v12 + 56);
    v298 = *(v12 + 9);
    v178 = *v9;
    v177 = *(a2 - 24);
    *(v12 + 36) = *(a2 - 4);
    *(v12 + 40) = v178;
    *(v12 + 56) = v177;
    *(a2 - 4) = v298;
    *v9 = v232;
    *(a2 - 24) = v268;
    goto LABEL_186;
  }

  if (v125 >= result.n128_f64[0])
  {
    v300 = *(v12 + 4);
    v235 = *v12;
    v271 = *(v12 + 1);
    v188 = *(v12 + 56);
    *v12 = *(v12 + 40);
    *(v12 + 1) = v188;
    *(v12 + 16) = *(v12 + 36);
    *(v12 + 40) = v235;
    *(v12 + 56) = v271;
    *(v12 + 36) = v300;
    result.n128_u64[0] = *(a2 - 4);
    if (result.n128_f64[0] >= *(v12 + 6))
    {
      return result;
    }

    result = *(v12 + 40);
    v128 = *(v12 + 56);
    v301 = *(v12 + 9);
    v190 = *v9;
    v189 = *(a2 - 24);
    *(v12 + 36) = *(a2 - 4);
    *(v12 + 40) = v190;
    *(v12 + 56) = v189;
    *(a2 - 4) = v301;
  }

  else
  {
    v295 = *(v12 + 4);
    v227 = *v12;
    v263 = *(v12 + 1);
    v126 = *v9;
    v127 = *(a2 - 24);
    *(v12 + 16) = *(a2 - 4);
    *v12 = v126;
    *(v12 + 1) = v127;
    result = v227;
    v128 = v263;
    *(a2 - 4) = v295;
  }

  *v9 = result;
  *(a2 - 24) = v128;
  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = *(a2 + 8);
  v7 = *(a3 + 8);
  if (v6 >= *(a1 + 8))
  {
    if (v7 < v6)
    {
      v12 = *(a2 + 32);
      result = *a2;
      v13 = *(a2 + 16);
      v14 = *(a3 + 32);
      v15 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v15;
      *(a2 + 32) = v14;
      *a3 = result;
      *(a3 + 16) = v13;
      *(a3 + 32) = v12;
      if (*(a2 + 8) < *(a1 + 8))
      {
        v16 = *(a1 + 32);
        result = *a1;
        v17 = *(a1 + 16);
        v18 = *(a2 + 32);
        v19 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *(a1 + 32) = v18;
        *a2 = result;
        *(a2 + 16) = v17;
        *(a2 + 32) = v16;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *(a1 + 32);
      result = *a1;
      v9 = *(a1 + 16);
      v10 = *(a3 + 32);
      v11 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v11;
      *(a1 + 32) = v10;
LABEL_9:
      *a3 = result;
      *(a3 + 16) = v9;
      *(a3 + 32) = v8;
      goto LABEL_10;
    }

    v20 = *(a1 + 32);
    result = *a1;
    v21 = *(a1 + 16);
    v22 = *(a2 + 32);
    v23 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = v22;
    *a2 = result;
    *(a2 + 16) = v21;
    *(a2 + 32) = v20;
    if (*(a3 + 8) < *(a2 + 8))
    {
      v8 = *(a2 + 32);
      result = *a2;
      v9 = *(a2 + 16);
      v24 = *(a3 + 32);
      v25 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v25;
      *(a2 + 32) = v24;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 8) < *(a3 + 8))
  {
    v26 = *(a3 + 32);
    result = *a3;
    v27 = *(a3 + 16);
    v28 = *(a4 + 32);
    v29 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v29;
    *(a3 + 32) = v28;
    *a4 = result;
    *(a4 + 16) = v27;
    *(a4 + 32) = v26;
    if (*(a3 + 8) < *(a2 + 8))
    {
      v30 = *(a2 + 32);
      result = *a2;
      v31 = *(a2 + 16);
      v32 = *(a3 + 32);
      v33 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v33;
      *(a2 + 32) = v32;
      *a3 = result;
      *(a3 + 16) = v31;
      *(a3 + 32) = v30;
      if (*(a2 + 8) < *(a1 + 8))
      {
        v34 = *(a1 + 32);
        result = *a1;
        v35 = *(a1 + 16);
        v36 = *(a2 + 32);
        v37 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v37;
        *(a1 + 32) = v36;
        *a2 = result;
        *(a2 + 16) = v35;
        *(a2 + 32) = v34;
      }
    }
  }

  result.n128_u64[0] = *(a5 + 8);
  if (result.n128_f64[0] < *(a4 + 8))
  {
    v38 = *(a4 + 32);
    result = *a4;
    v39 = *(a4 + 16);
    v40 = *(a5 + 32);
    v41 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v41;
    *(a4 + 32) = v40;
    *a5 = result;
    *(a5 + 16) = v39;
    *(a5 + 32) = v38;
    result.n128_u64[0] = *(a4 + 8);
    if (result.n128_f64[0] < *(a3 + 8))
    {
      v42 = *(a3 + 32);
      result = *a3;
      v43 = *(a3 + 16);
      v44 = *(a4 + 32);
      v45 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v45;
      *(a3 + 32) = v44;
      *a4 = result;
      *(a4 + 16) = v43;
      *(a4 + 32) = v42;
      result.n128_u64[0] = *(a3 + 8);
      if (result.n128_f64[0] < *(a2 + 8))
      {
        v46 = *(a2 + 32);
        result = *a2;
        v47 = *(a2 + 16);
        v48 = *(a3 + 32);
        v49 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v49;
        *(a2 + 32) = v48;
        *a3 = result;
        *(a3 + 16) = v47;
        *(a3 + 32) = v46;
        result.n128_u64[0] = *(a2 + 8);
        if (result.n128_f64[0] < *(a1 + 8))
        {
          v50 = *(a1 + 32);
          result = *a1;
          v51 = *(a1 + 16);
          v52 = *(a2 + 32);
          v53 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v53;
          *(a1 + 32) = v52;
          *a2 = result;
          *(a2 + 16) = v51;
          *(a2 + 32) = v50;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*>(__int128 *a1, __int128 *a2, __n128 a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v10 = (a2 - 40);
      v11 = *(a1 + 6);
      v12 = *(a2 - 4);
      if (v11 < *(a1 + 1))
      {
        if (v12 >= v11)
        {
          v54 = *(a1 + 4);
          v56 = *a1;
          v55 = a1[1];
          v57 = *(a1 + 56);
          *a1 = *(a1 + 40);
          a1[1] = v57;
          *(a1 + 16) = *(a1 + 36);
          *(a1 + 40) = v56;
          *(a1 + 56) = v55;
          *(a1 + 36) = v54;
          if (*(a2 - 4) >= *(a1 + 6))
          {
            return 1;
          }

          v13 = *(a1 + 9);
          v14 = *(a1 + 40);
          v15 = *(a1 + 56);
          v58 = *(a2 - 4);
          v59 = *(a2 - 24);
          *(a1 + 40) = *v10;
          *(a1 + 56) = v59;
          *(a1 + 36) = v58;
        }

        else
        {
          v13 = *(a1 + 4);
          v14 = *a1;
          v15 = a1[1];
          v16 = *(a2 - 4);
          v17 = *(a2 - 24);
          *a1 = *v10;
          a1[1] = v17;
          *(a1 + 16) = v16;
        }

        *v10 = v14;
        *(a2 - 24) = v15;
        v9 = 1;
        *(a2 - 4) = v13;
        return v9;
      }

      if (v12 >= v11)
      {
        return 1;
      }

      v33 = *(a1 + 9);
      v34 = *(a1 + 40);
      v35 = *(a1 + 56);
      v36 = *(a2 - 4);
      v37 = *(a2 - 24);
      *(a1 + 40) = *v10;
      *(a1 + 56) = v37;
      *(a1 + 36) = v36;
      *v10 = v34;
      *(a2 - 24) = v35;
      *(a2 - 4) = v33;
LABEL_50:
      if (*(a1 + 6) < *(a1 + 1))
      {
        v89 = *(a1 + 4);
        v91 = *a1;
        v90 = a1[1];
        v92 = *(a1 + 56);
        *a1 = *(a1 + 40);
        a1[1] = v92;
        *(a1 + 16) = *(a1 + 36);
        *(a1 + 40) = v91;
        *(a1 + 56) = v90;
        v9 = 1;
        *(a1 + 36) = v89;
        return v9;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,0>(a1, a1 + 40, (a1 + 5), a1 + 120, a2 - 40, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v26 = *(a1 + 6);
    v27 = *(a1 + 1);
    v28 = *(a1 + 11);
    if (v26 >= v27)
    {
      if (v28 < v26)
      {
        v46 = *(a1 + 9);
        v47 = *(a1 + 56);
        v48 = *(a1 + 40);
        v49 = a1[6];
        *(a1 + 40) = a1[5];
        *(a1 + 56) = v49;
        *(a1 + 36) = *(a1 + 56);
        a1[5] = v48;
        a1[6] = v47;
        *(a1 + 56) = v46;
        if (*(a1 + 6) < v27)
        {
          v50 = *(a1 + 4);
          v52 = *a1;
          v51 = a1[1];
          v53 = *(a1 + 56);
          *a1 = *(a1 + 40);
          a1[1] = v53;
          *(a1 + 16) = *(a1 + 36);
          *(a1 + 40) = v52;
          *(a1 + 56) = v51;
          *(a1 + 36) = v50;
        }
      }

      goto LABEL_47;
    }

    if (v28 >= v26)
    {
      v74 = *(a1 + 4);
      v76 = *a1;
      v75 = a1[1];
      v77 = *(a1 + 56);
      *a1 = *(a1 + 40);
      a1[1] = v77;
      *(a1 + 16) = *(a1 + 36);
      *(a1 + 40) = v76;
      *(a1 + 56) = v75;
      *(a1 + 36) = v74;
      if (v28 >= *(a1 + 6))
      {
        goto LABEL_47;
      }

      v29 = *(a1 + 9);
      v30 = *(a1 + 56);
      v31 = *(a1 + 40);
      v78 = a1[6];
      *(a1 + 40) = a1[5];
      *(a1 + 56) = v78;
      *(a1 + 36) = *(a1 + 56);
    }

    else
    {
      v29 = *(a1 + 4);
      v31 = *a1;
      v30 = a1[1];
      v32 = a1[6];
      *a1 = a1[5];
      a1[1] = v32;
      *(a1 + 16) = *(a1 + 56);
    }

    a1[5] = v31;
    a1[6] = v30;
    *(a1 + 56) = v29;
LABEL_47:
    if (*(a2 - 4) >= *(a1 + 11))
    {
      return 1;
    }

    v79 = a2 - 40;
    v80 = *(a1 + 14);
    v81 = a1[5];
    v82 = a1[6];
    v83 = *(a2 - 4);
    v84 = *(a2 - 24);
    a1[5] = *(a2 - 40);
    a1[6] = v84;
    *(a1 + 56) = v83;
    *v79 = v81;
    *(v79 + 16) = v82;
    *(v79 + 32) = v80;
    if (*(a1 + 11) >= *(a1 + 6))
    {
      return 1;
    }

    v85 = *(a1 + 9);
    v86 = *(a1 + 40);
    v87 = a1[6];
    *(a1 + 40) = a1[5];
    v88 = *(a1 + 56);
    *(a1 + 56) = v87;
    *(a1 + 36) = *(a1 + 56);
    a1[5] = v86;
    a1[6] = v88;
    *(a1 + 56) = v85;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 4) < *(a1 + 1))
    {
      v4 = *(a1 + 4);
      v5 = *a1;
      v6 = a1[1];
      v7 = *(a2 - 4);
      v8 = *(a2 - 24);
      *a1 = *(a2 - 40);
      a1[1] = v8;
      *(a1 + 16) = v7;
      *(a2 - 24) = v6;
      *(a2 - 40) = v5;
      v9 = 1;
      *(a2 - 4) = v4;
      return v9;
    }

    return 1;
  }

LABEL_13:
  v18 = (a1 + 5);
  v19 = *(a1 + 6);
  v20 = *(a1 + 1);
  v21 = *(a1 + 11);
  if (v19 >= v20)
  {
    if (v21 < v19)
    {
      v38 = *(a1 + 9);
      v39 = *(a1 + 56);
      v40 = *(a1 + 40);
      v41 = a1[6];
      *(a1 + 40) = *v18;
      *(a1 + 56) = v41;
      *(a1 + 36) = *(a1 + 56);
      *v18 = v40;
      a1[6] = v39;
      *(a1 + 56) = v38;
      if (*(a1 + 6) < v20)
      {
        v42 = *(a1 + 4);
        v44 = *a1;
        v43 = a1[1];
        v45 = *(a1 + 56);
        *a1 = *(a1 + 40);
        a1[1] = v45;
        *(a1 + 16) = *(a1 + 36);
        *(a1 + 40) = v44;
        *(a1 + 56) = v43;
        *(a1 + 36) = v42;
      }
    }
  }

  else
  {
    if (v21 >= v19)
    {
      v60 = *(a1 + 4);
      v62 = *a1;
      v61 = a1[1];
      v63 = *(a1 + 56);
      *a1 = *(a1 + 40);
      a1[1] = v63;
      *(a1 + 16) = *(a1 + 36);
      *(a1 + 40) = v62;
      *(a1 + 56) = v61;
      *(a1 + 36) = v60;
      if (v21 >= *(a1 + 6))
      {
        goto LABEL_33;
      }

      v22 = *(a1 + 9);
      v23 = *(a1 + 56);
      v24 = *(a1 + 40);
      v64 = a1[6];
      *(a1 + 40) = *v18;
      *(a1 + 56) = v64;
      *(a1 + 36) = *(a1 + 56);
    }

    else
    {
      v22 = *(a1 + 4);
      v24 = *a1;
      v23 = a1[1];
      v25 = a1[6];
      *a1 = *v18;
      a1[1] = v25;
      *(a1 + 16) = *(a1 + 56);
    }

    *v18 = v24;
    a1[6] = v23;
    *(a1 + 56) = v22;
  }

LABEL_33:
  v65 = a1 + 15;
  if ((a1 + 120) == a2)
  {
    return 1;
  }

  v66 = 0;
  v67 = 0;
  while (1)
  {
    v68 = v65[1];
    if (v68 < v18[1])
    {
      v69 = *v65;
      v94 = *(v65 + 1);
      v95 = *(v65 + 4);
      v70 = v66;
      while (1)
      {
        v71 = a1 + v70;
        v72 = *(a1 + v70 + 96);
        *(v71 + 120) = *(a1 + v70 + 80);
        *(v71 + 136) = v72;
        *(v71 + 152) = *(a1 + v70 + 112);
        if (v70 == -80)
        {
          break;
        }

        v70 -= 40;
        if (v68 >= *(v71 + 48))
        {
          v73 = a1 + v70 + 120;
          goto LABEL_41;
        }
      }

      v73 = a1;
LABEL_41:
      *v73 = v69;
      *(v73 + 8) = v68;
      *(v73 + 16) = v94;
      *(v73 + 32) = v95;
      if (++v67 == 8)
      {
        return v65 + 5 == a2;
      }
    }

    v18 = v65;
    v66 += 40;
    v65 += 5;
    if (v65 == a2)
    {
      return 1;
    }
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v10 = *(a1 + 32);
  *v14 = a5;
  *&v14[1] = a6;
  *&v14[2] = a7;
  v14[3] = a2;
  v15 = 1;
  v11 = [MEMORY[0x277CBEAA8] distantFuture];
  [v11 timeIntervalSinceReferenceDate];
  v16 = v12 <= a7;

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_primitiveAddSample(v10, v14, a3, a4);
}

void HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::archive(uint64_t a1, int *a2)
{
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0;
  v4 = (a1 + 112);
  *(a1 + 160) = 0;
  *(a1 + 204) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_283BE6208;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  statistics::Statistics::makePrimaryStatistics(a1);
  HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>::archive(v6, (a2 + 2));
  statistics::Statistics::operator=(*(a1 + 128), v6);
  statistics::Statistics::~Statistics(v6);
  v5 = *a2;
  *(a1 + 204) |= 0x100u;
  *(a1 + 136) = v5;
  statistics::Statistics::makeMostRecentDatum(a1);
  v6[0] = &unk_283BEB0A8;
  v10 = 127;
  v7 = vextq_s8(*(a2 + 30), *(a2 + 30), 8uLL);
  v6[1] = *(a2 + 17);
  v6[2] = *(a2 + 18);
  v8 = 0;
  v9 = 0;
  statistics::RawQuantitySample::operator=(*v4, v6);
  PB::Base::~Base(v6);
}

void HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>::archive(uint64_t a1, int8x16_t *a2)
{
  *a1 = &unk_283BE6208;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 160) = 0;
  *(a1 + 204) = 0;
  *(a1 + 16) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  statistics::Statistics::makePrimaryStatistics(a1);
  HDStatisticsDiscrete::archive(a2, v5);
  statistics::Statistics::operator=(*(a1 + 128), v5);
  statistics::Statistics::~Statistics(v5);
  statistics::Statistics::makeAuxiliaryStatistics(a1);
  HDStatisticsTimeInterval::archive(&a2[4].u64[1], v5);
  statistics::Statistics::operator=(*v4, v5);
  statistics::Statistics::~Statistics(v5);
}

double HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::unarchive(uint64_t a1, void *a2)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(a1 + 72) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 138) = 0u;
  v6 = a2[16];
  if (v6)
  {
    HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>::unarchive(v13, *(v6 + 8), *(v6 + 128));
    v7 = v15;
    *(v5 + 64) = v14;
    v8 = v13[3];
    *(v5 + 32) = v13[2];
    *(v5 + 48) = v8;
    v9 = v13[1];
    *v5 = v13[0];
    *(v5 + 16) = v9;
    *(a1 + 80) = v7;
    result = v18;
    v10 = v17;
    *(a1 + 88) = v16;
    *(a1 + 104) = v10;
    *(a1 + 112) = result;
  }

  *a1 = a2[17];
  v11 = a2[14];
  if (v11)
  {
    result = *(v11 + 8);
    v12 = *(v11 + 16);
    *(a1 + 120) = vextq_s8(*(v11 + 24), *(v11 + 24), 8uLL);
    *(a1 + 136) = result;
    *(a1 + 144) = v12;
    *(a1 + 152) = 1;
  }

  return result;
}

double HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>::unarchive(uint64_t a1, HDStatisticsTimeInterval *this, uint64_t a3)
{
  *(a1 + 64) = 0;
  v4 = 0uLL;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  if (a3)
  {
    v5 = *(a3 + 24);
    v6 = *(a3 + 104);
    v7 = *(a3 + 112);
    if (v7)
    {
      v4 = *(v7 + 24);
      v8 = *(v7 + 8);
      v9 = 1;
      v7 = *(v7 + 16);
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    *a1 = vextq_s8(*(a3 + 88), *(a3 + 88), 8uLL);
    *(a1 + 16) = v6;
    *(a1 + 24) = v5;
    v4 = vextq_s8(v4, v4, 8uLL);
    *(a1 + 32) = v4;
    *(a1 + 48) = v8;
    *(a1 + 56) = v7;
    *(a1 + 64) = v9;
    *(a1 + 65) = 0;
  }

  if (this)
  {
    HDStatisticsTimeInterval::unarchive(this, &v12);
    *(a1 + 72) = v12;
    v4.i64[0] = v15;
    v10 = v14;
    *(a1 + 80) = v13;
    *(a1 + 96) = v10;
    *(a1 + 104) = v4.i64[0];
  }

  return *v4.i64;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BECA28;
  v9 = 900.0;
  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = 0;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 1;
  *(a1 + 594) = 0;
  *(a1 + 596) = 0;
  *(a1 + 600) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BECA28;
  v2 = *(a1 + 624);
  if (v2)
  {
    *(a1 + 632) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 560);
  if (v3)
  {
    *(a1 + 568) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 592) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 600) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 76, a2);
  v7 = a2;
  v4 = a1[76];
  v5 = a1[73];
  a1[73] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[73]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = (a1 + 72);
  if (v6 != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v6, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (*(a1 + 40))
  {
    return 1;
  }

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 264) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
  if ((a1 + 184) != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 184), *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (v7)
  {
    return 1;
  }

  v9 = *(*a1 + 128);

  return v9(a1, 0, a3);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::currentStatistics(uint64_t a1)
{
  if ((*(a1 + 592) & 1) == 0)
  {
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::HDStatisticsBucket(v3, a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_updateSourceOrder(v3);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeThroughTime(v3, v4);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, v3);
  }

  return 0;
}

void sub_228EA664C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsBucket(va);
  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = [v6 startDate];
  [v8 timeIntervalSinceReferenceDate];
  if (v9 > *(a2 + 16))
  {
    v14 = 1;
LABEL_8:

    goto LABEL_13;
  }

  v10 = [v7 endDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = *(a2 + 8);

  if (v12 >= v13)
  {
LABEL_4:
    if (*(a1 + 594) == 1)
    {
      if (*(a1 + 593))
      {
        goto LABEL_6;
      }

      if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_earliestStartTimeWithoutInvalidation(a1) > *(a2 + 8))
      {
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 595) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 624, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_13;
  }

LABEL_6:
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 594) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 594) = 1;
  v60 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v59 = v6;
  if (*(a1 + 593))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 616);
  if (!v9)
  {
    v8 = 0;
    v61 = 0;
    goto LABEL_28;
  }

  if (!*(a1 + 40))
  {
LABEL_5:
    v61 = 0;
    v8 = 1;
    goto LABEL_28;
  }

  [v9 sortUsingComparator:&__block_literal_global_567];
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v10 = *(a1 + 616);
  v11 = [v10 countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (!v11)
  {

    v12 = 0;
    goto LABEL_27;
  }

  v12 = 0;
  v13 = *v63;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v63 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v62 + 1) + 8 * i);
      v16 = v15;
      if (v12)
      {
        v17 = [v15 startDate];
        v18 = [v12 endDate];
        v19 = [v17 hk_isBeforeOrEqualToDate:v18];

        if (v19)
        {
          v20 = [v16 endDate];
          v21 = [v12 endDate];
          v22 = [v20 hk_isAfterDate:v21];

          if (!v22)
          {
            goto LABEL_21;
          }

          v23 = objc_alloc(MEMORY[0x277CCA970]);
          v24 = [v12 startDate];
          v25 = [v16 endDate];
          v26 = [v23 initWithStartDate:v24 endDate:v25];
        }

        else
        {
          [v61 addObject:v12];
          v26 = v16;
        }

        v12 = v26;
      }

      else
      {
        v12 = v15;
      }

LABEL_21:
    }

    v11 = [v10 countByEnumeratingWithState:&v62 objects:v66 count:16];
  }

  while (v11);

  if (v12)
  {
    [v61 addObject:v12];
  }

LABEL_27:

  v8 = 0;
LABEL_28:
  v27 = *(a1 + 616);
  *(a1 + 616) = 0;

  *(a1 + 593) = 0;
  if (v8)
  {
    v28 = *(a1 + 624);
    *(a1 + 640) = 0;
    *(a1 + 632) = 0;
    *(a1 + 624) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v61 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 624);
      v39 = *(a1 + 632);
      if (v38 != v39)
      {
        while (*(v38 + 8) >= v37)
        {
          v38 += 40;
          if (v38 == v39)
          {
            goto LABEL_44;
          }
        }

        if (v38 != v39)
        {
          v40 = (v38 + 40);
          if ((v38 + 40) != v39)
          {
            do
            {
              if (*(v40 + 1) >= v37)
              {
                v41 = *v40;
                v42 = v40[1];
                *(v38 + 32) = *(v40 + 16);
                *v38 = v41;
                *(v38 + 16) = v42;
                v38 += 40;
              }

              v40 = (v40 + 40);
            }

            while (v40 != v39);
            v39 = *(a1 + 632);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 632) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 624);
  v29 = *(a1 + 632);
  *(a1 + 640) = 0;
  *(a1 + 624) = 0;
  *(a1 + 632) = 0;
  if ([v61 count])
  {
LABEL_46:
    v44 = v61;
    if (v44)
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v45 = v44;
      v46 = [v45 countByEnumeratingWithState:&v62 objects:v66 count:16];
      if (v46)
      {
        v47 = *v63;
        while (2)
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v63 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v62 + 1) + 8 * j);
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v49, v60);

            if (!v50)
            {

              goto LABEL_68;
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v62 objects:v66 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_58;
    }

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, 0, v60))
    {
      goto LABEL_58;
    }

LABEL_68:
    v54 = 0;
  }

  else
  {
LABEL_58:
    v52 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v29 - v28) >> 3));
    if (v29 == v28)
    {
      v53 = 0;
    }

    else
    {
      v53 = v52;
    }

    v54 = 1;
    std::__introsort<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,false>(v28, v29, v53, 1, v43);
    if (v29 != v28)
    {
      v55 = v28;
      v51 = v60;
      do
      {
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_primitiveAddSample(a1, v55, 1, v51);
        v54 = v56;
        v55 += 40;
        if (v55 == v29)
        {
          v57 = 0;
        }

        else
        {
          v57 = v56;
        }

        v51 = v60;
      }

      while ((v57 & 1) != 0);
    }
  }

  if (*(a1 + 40) && *(a1 + 568) != *(a1 + 560))
  {
    [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
    objc_claimAutoreleasedReturnValue();
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
  }

  *(a1 + 594) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 596) == 1)
    {
      *(a1 + 596) = 0;
      v6 = v59;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
      v7 = 1;
      goto LABEL_80;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v6 = v59;
LABEL_80:
  *(a1 + 594) = 0;
LABEL_81:

  return v7;
}

void sub_228EA6EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 594) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  if (!v6)
  {

    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    if (*(a1 + 594))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 594) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 616);
    *(a1 + 616) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 593) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 593) & 1) == 0)
  {
    v8 = *(a1 + 616);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 616);
      *(a1 + 616) = v9;

      v8 = *(a1 + 616);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 592) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 592) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 592) forKey:@"needs_config"];
  v13 = v3;
  v27 = &unk_283BF1A08;
  v28 = 0;
  v31 = 0;
  v4 = *(a1 + 112);
  LOBYTE(v31) = 1;
  v29 = v4;
  memset(v30, 0, sizeof(v30));
  statistics::StatisticsEngine::makeCurrentBucket(&v27);
  v14 = &unk_283BE6258;
  memset(v17, 0, 24);
  v26 = 511;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v5 = vextq_s8(*(a1 + 120), *(a1 + 120), 8uLL);
  v6 = *(a1 + 136);
  v24 = *(a1 + 144);
  v25 = *(a1 + 145);
  v23 = *(a1 + 148) == 0;
  v7 = vextq_s8(*(a1 + 160), *(a1 + 160), 8uLL);
  v15 = v5;
  v16 = v7;
  v7.i64[0] = *(a1 + 176);
  v17[3] = v6;
  v17[4] = v7.i64[0];
  v8 = *(a1 + 216);
  if (v8 != *(a1 + 224))
  {
    v32 = &unk_283BEB0A8;
    v37 = 127;
    v34 = vextq_s8(*v8, *v8, 8uLL);
    v33 = v8[1];
    v36 = 0;
    HIBYTE(v35) = v8[2].i8[9];
    LOBYTE(v35) = v8[2].i8[10];
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample&>(&v18, &v32);
  }

  statistics::StatisticsBucket::makeStatistics(&v14);
  HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>::archive(&v32, (a1 + 240));
  statistics::Statistics::operator=(*(&v19 + 1), &v32);
  statistics::Statistics::~Statistics(&v32);
  v9 = *(a1 + 352);
  if (v9 != a1 + 360)
  {
    HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>::archive(&v32, (v9 + 40));
    v10 = *(v9 + 32);
    v39 |= 0x200u;
    v38 = v10;
    PB::PtrVector<statistics::Statistics>::emplace_back<statistics::Statistics&>(v21 + 1, &v32);
  }

  v11 = *(a1 + 184);
  if (v11 != *(a1 + 192))
  {
    v32 = &unk_283BF1F08;
    v34.i32[0] = 3;
    v33 = vextq_s8(*v11, *v11, 8uLL);
    PB::PtrVector<statistics::Interval>::emplace_back<statistics::Interval&>(v17, &v32);
  }

  statistics::StatisticsBucket::operator=(v28, &v14);
  statistics::StatisticsBucket::~StatisticsBucket(&v14);
  v12 = *(a1 + 560);
  if (v12 != *(a1 + 568))
  {
    v32 = &unk_283BEB0A8;
    v37 = 127;
    v34 = vextq_s8(*v12, *v12, 8uLL);
    v33 = v12[1];
    v35 = 0;
    v36 = 0;
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample>(v30, &v32);
  }

  PB::Writer::Writer(&v32);
  statistics::StatisticsEngine::writeTo(&v27, &v32);
  [v13 encodeBytes:v33.i64[0] length:v32 - v33.i64[0] forKey:@"hdsce_archived_representation"];
  PB::Writer::~Writer(&v32);
  statistics::StatisticsEngine::~StatisticsEngine(&v27);
}

void sub_228EA7700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::decodeInternalsWithDecoder(uint64_t a1, void *a2)
{
  v31 = a2;
  *(a1 + 592) = [v31 decodeBoolForKey:@"needs_config"];
  v3 = v31;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::HDStatisticsBucket(&v34.n128_i64[1], 0, -1.79769313e308, 1.79769313e308);
  *v35 = 0u;
  v36 = 0u;
  v70 = 0;
  PB::Reader::Reader(v69, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v70]);
  v62 = &unk_283BF1A08;
  v63 = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  v68 = 0;
  statistics::StatisticsEngine::readFrom(&v62, v69);
  v34.n128_u64[0] = v64;
  if (v63)
  {
    v32 = v3;
    v40 = 0;
    memset(v43, 0, sizeof(v43));
    memset(&v44[96], 0, 32);
    v47[1] = 0;
    v47[0] = 0;
    memset(v44, 0, 90);
    v45 = 0;
    v46 = v47;
    v48 = 0u;
    v49 = 0u;
    v50 = 1065353216;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0;
    v55 = 1065353216;
    v56 = 0u;
    v57 = 0u;
    v58 = 1065353216;
    v59 = 0u;
    v60 = 0u;
    v61 = 1065353216;
    v37 = vextq_s8(*(v63 + 8), *(v63 + 8), 8uLL);
    v4 = *(v63 + 72);
    v38 = *(v63 + 64);
    LOWORD(v39) = *(v63 + 185);
    v41 = vextq_s8(*(v63 + 24), *(v63 + 24), 8uLL);
    v42 = v4;
    v5 = *(v63 + 80);
    v6 = *(v63 + 88);
    for (i = v63; v5 != v6; ++v5)
    {
      v7 = *v5;
      LOWORD(v73) = 1;
      BYTE8(v73) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v71 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v72 = v8;
      *(&v72 + 1) = v9;
      BYTE9(v73) = *(v7 + 41);
      BYTE10(v73) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v44, v71.i8);
    }

    v10 = i[13];
    if (v10)
    {
      HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>::unarchive(&v71, *(v10 + 8), *(v10 + 128));
      *&v44[40] = v72;
      *&v44[56] = v73;
      *&v44[72] = v74;
      *&v44[88] = v75;
      *&v44[24] = v71;
      *&v44[96] = v76;
      if (*&v44[104])
      {
        *&v44[112] = *&v44[104];
        operator delete(*&v44[104]);
      }

      *&v44[104] = v77;
      *&v44[120] = v78;
      v78 = 0;
      v77 = 0uLL;
      v45 = v79;
    }

    v11 = i[17];
    for (j = i[18]; v11 != j; ++v11)
    {
      v13 = *v11;
      HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>::unarchive(&v71, *(*v11 + 8), *(*v11 + 128));
      v14 = *(v13 + 144);
      v15 = v47[0];
      if (!v47[0])
      {
LABEL_15:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v16 = v15;
          v17 = v15[4];
          if (v17 <= v14)
          {
            break;
          }

          v15 = *v16;
          if (!*v16)
          {
            goto LABEL_15;
          }
        }

        if (v17 >= v14)
        {
          break;
        }

        v15 = v16[1];
        if (!v15)
        {
          goto LABEL_15;
        }
      }

      v18 = v16[15];
      v19 = v75;
      v20 = v74;
      *(v16 + 9) = v73;
      *(v16 + 11) = v20;
      v16[13] = v19;
      v21 = v72;
      *(v16 + 5) = v71;
      *(v16 + 7) = v21;
      v16[14] = v76;
      if (v18)
      {
        v16[16] = v18;
        operator delete(v18);
        v16[15] = 0;
        v16[16] = 0;
        v16[17] = 0;
      }

      *(v16 + 15) = v77;
      v16[17] = v78;
      v78 = 0;
      v77 = 0uLL;
      v16[18] = v79;
    }

    v22 = i[5];
    for (k = i[6]; v22 != k; v22 += 8)
    {
      v25 = *(*v22 + 8);
      v24 = *(*v22 + 16);
      if (v25 >= v24)
      {
        v26 = *(*v22 + 16);
      }

      else
      {
        v26 = *(*v22 + 8);
      }

      if (v24 < v25)
      {
        v24 = *(*v22 + 8);
      }

      HKIntervalMask<double>::_insertInterval(v43, v26, v24);
    }

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::operator=(&v34.n128_i64[1], &v37);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v37);
    v3 = v32;
  }

  v27 = v65;
  for (m = v66; v27 != m; v27 += 8)
  {
    v29 = *(*v27 + 8);
    v30 = *(*v27 + 16);
    v37 = vextq_s8(*(*v27 + 24), *(*v27 + 24), 8uLL);
    v38 = v29;
    v39 = v30;
    LOWORD(v40) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](v35, v37.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v62);

  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v34);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v34.n128_i64[1]);
}

void sub_228EA7C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(v13 + 400);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a9);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 320);
  v15 = STACK[0x338];
  if (STACK[0x338])
  {
    STACK[0x340] = v15;
    operator delete(v15);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 256);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::destroy(STACK[0x300]);
  v16 = STACK[0x2D8];
  if (STACK[0x2D8])
  {
    STACK[0x2E0] = v16;
    operator delete(v16);
  }

  v17 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v17;
    operator delete(v17);
  }

  objc_destroyWeak((v13 + 88));
  v18 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v18;
    operator delete(v18);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x3D0]);
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 257;
  *(a1 + 28) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 240) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 170) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 1065353216;
  *(a1 + 344) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 1065353216;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 448);
  if (v2)
  {
    *(a1 + 456) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 400);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 360);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 320);
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 256);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::destroy(*(a1 + 240));
  v3 = *(a1 + 200);
  if (v3)
  {
    *(a1 + 208) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  objc_destroyWeak((a1 + 88));
  v5 = *(a1 + 64);
  if (v5)
  {
    *(a1 + 72) = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::destroy(a1[1]);
    v2 = a1[15];
    if (v2)
    {
      a1[16] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_configureForStartTime(uint64_t a1)
{
  v28 = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v4 = [v2 dateIntervalContainingDate:v3 index:&v28];

    v5 = [v4 startDate];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
LABEL_5:
    v13 = v9;

    goto LABEL_6;
  }

  v10 = *(a1 + 64);
  v4 = v10;
  if (v10)
  {
    v11 = [v10 startDate];
    [v11 timeIntervalSinceReferenceDate];
    v7 = v12;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
    goto LABEL_5;
  }

  v7 = -1.79769313e308;
  v13 = 1.79769313e308;
LABEL_6:

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::HDStatisticsBucket(v21, WeakRetained, v7, v13);

  if (*(a1 + 32) == 1)
  {
    v23 = 1;
  }

  v22 = *(a1 + 56);
  v24 = *(a1 + 24) & 1;
  if (v27 != (a1 + 72))
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v27, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 4);
  }

  objc_storeStrong(&v26, *(a1 + 608));
  if (!*(a1 + 40))
  {
    v25 = 0;
  }

  v15 = v28;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::HDStatisticsBucket(v17, v21);
  v18.n128_u64[0] = v15;
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::HDStatisticsBucket(&v18.n128_i64[1], v17);
  __p = 0u;
  v20 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsBucket(&v18.n128_i64[1]);
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v17);
  *(a1 + 592) = 0;
  return HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::~HDStatisticsBucket(v21);
}

void *HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::operator=(void *a1, __n128 *a2)
{
  *a1 = a2->n128_u64[0];
  HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::operator=((a1 + 1), &a2->n128_i64[1]);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 56), a2 + 28);
  v4 = a2[29].n128_u64[1];
  a2[29].n128_u64[1] = 0;
  v5 = a1[59];
  a1[59] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 56);
  v6 = *(a2 + 40);
  *(a1 + 64) = 0;
  *(a1 + 40) = v6;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 64), *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 4);
  objc_copyWeak((a1 + 88), (a2 + 88));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v7 != v8)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 4);
    if (v9 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v9);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 120) = *(a2 + 120);
  v10 = *(a2 + 136);
  v11 = *(a2 + 152);
  v12 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v12;
  *(a1 + 152) = v11;
  *(a1 + 136) = v10;
  v13 = *(a2 + 192);
  *(a1 + 200) = 0;
  *(a1 + 192) = v13;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 200), *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 4);
  v14 = *(a2 + 224);
  *(a1 + 240) = 0;
  v15 = (a1 + 240);
  *(a1 + 224) = v14;
  *(a1 + 248) = 0;
  *(a1 + 232) = a1 + 240;
  v16 = *(a2 + 232);
  if (v16 != (a2 + 240))
  {
    v17 = 0;
    v18 = (a1 + 240);
    while (1)
    {
      v19 = (a1 + 240);
      if (v18 == v15)
      {
        goto LABEL_12;
      }

      v20 = v17;
      v21 = (a1 + 240);
      if (v17)
      {
        do
        {
          v19 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        do
        {
          v19 = v21[2];
          v22 = *v19 == v21;
          v21 = v19;
        }

        while (v22);
      }

      v23 = v16[4];
      if (v19[4] < v23)
      {
LABEL_12:
        if (v17)
        {
          v24 = v19 + 1;
        }

        else
        {
          v24 = (a1 + 240);
        }

        if (!*v24)
        {
LABEL_23:
          operator new();
        }
      }

      else
      {
        if (!v17)
        {
          goto LABEL_23;
        }

        while (1)
        {
          while (1)
          {
            v25 = v17;
            v26 = v17[4];
            if (v26 <= v23)
            {
              break;
            }

            v17 = *v25;
            if (!*v25)
            {
              goto LABEL_23;
            }
          }

          if (v26 >= v23)
          {
            break;
          }

          v17 = v25[1];
          if (!v17)
          {
            goto LABEL_23;
          }
        }
      }

      v27 = v16[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v16[2];
          v22 = *v28 == v16;
          v16 = v28;
        }

        while (!v22);
      }

      if (v28 == (a2 + 240))
      {
        break;
      }

      v17 = *v15;
      v18 = *(a1 + 232);
      v16 = v28;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 256, a2 + 256);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 296), *(a2 + 296), *(a2 + 304), (*(a2 + 304) - *(a2 + 296)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 320, a2 + 320);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 360, a2 + 360);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 400, a2 + 400);
  return a1;
}

void sub_228EA8608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v13 + 360);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 320);
  v15 = *(v13 + 296);
  if (v15)
  {
    *(v13 + 304) = v15;
    operator delete(v15);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13 + 256);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::destroy(*v12);
  v16 = *a10;
  if (*a10)
  {
    *(v13 + 208) = v16;
    operator delete(v16);
  }

  v17 = *a11;
  if (*a11)
  {
    *(v13 + 104) = v17;
    operator delete(v17);
  }

  objc_destroyWeak((v13 + 88));
  v18 = *a12;
  if (*a12)
  {
    *(v13 + 72) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;

  v7 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v7;
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 64, (a2 + 64));
  WeakRetained = objc_loadWeakRetained((a2 + 88));
  objc_storeWeak((a1 + 88), WeakRetained);

  v9 = *(a1 + 96);
  if (v9)
  {
    *(a1 + 104) = v9;
    operator delete(v9);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  v12 = *(a2 + 184);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 184) = v12;
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 192) = *(a2 + 192);
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 200, (a2 + 200));
  v14 = a1 + 240;
  v13 = *(a1 + 240);
  *(a1 + 224) = *(a2 + 224);
  std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::destroy(v13);
  *(a1 + 232) = *(a2 + 232);
  v16 = *(a2 + 240);
  v17 = *(a2 + 248);
  v15 = (a2 + 240);
  *(a1 + 240) = v16;
  *(a1 + 248) = v17;
  if (v17)
  {
    *(v16 + 16) = v14;
    *(a2 + 232) = v15;
    *v15 = 0;
    *(a2 + 248) = 0;
  }

  else
  {
    *(a1 + 232) = v14;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 256, (a2 + 256));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 296, (a2 + 296));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 320, (a2 + 320));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 360, (a2 + 360));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 400, (a2 + 400));
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v21 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
  if (*(a2 + 8) == 1.79769313e308)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 48)];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 8)];
  }

  v8 = v7;
  v9 = *(a1 + 16);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = *(a1 + 16);
    if ([v10 shouldUseUnderlyingTypeForStatistics])
    {
      v11 = [v10 underlyingSampleType];

      v9 = v11;
    }
  }

  v12 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v21 endDate:v8];
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = *(a2 + 296);
      v16 = *(a2 + 304);
      while (v15 != v16)
      {
        v17 = *v15;
        v18 = objc_loadWeakRetained((a1 + 48));
        v19 = [v18 sourceForSourceID:v17];

        if (v19)
        {
          if (([v14 containsObject:v19] & 1) == 0)
          {
            [v14 addObject:v19];
          }
        }

        ++v15;
      }

      v20 = objc_msgSend_copy(v14);
      [v12 _setSources:v20];
    }
  }

  v22[0] = &unk_283BECC18;
  v22[3] = v22;
  v12;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](v23, v22);
  v24 = 0;
  operator new();
}

void sub_228EA9438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__function::__value_func<HDStatisticsDiscrete const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](v38 - 176);
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](&a31);

  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_updateSourceOrder(uint64_t a1)
{
  v1 = *(a1 + 280);
  v2 = *(a1 + 296);
  if (v1 != (*(a1 + 304) - v2) >> 3)
  {
    *(a1 + 304) = v2;
    std::vector<long long>::reserve((a1 + 296), v1);
    for (i = *(a1 + 272); i; i = *i)
    {
      v7 = i[2];
      std::vector<long long>::push_back[abi:ne200100](a1 + 296, &v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 orderSourceIDs:a1 + 296];
    }
  }
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeThroughTime(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0.0 && *(a1 + 8) > a2)
  {
    a2 = v4 * floor(a2 / v4);
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v70 = (a1 + 240);
    while (1)
    {
      v6 = *(a1 + 96);
      v7 = *(a1 + 104);
      v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4);
      if (v8 == 1)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_88;
      }

      v9 = a2;
      v10 = a2;
      v11 = v5;
      v12 = *(a1 + 96);
      if (v6 != v7)
      {
        do
        {
          v13 = v12->n128_f64[1];
          v14 = v12[1].n128_f64[0];
          if (v13 > v11 && v13 < v10)
          {
            v10 = v12->n128_f64[1];
          }

          if (v14 > v5)
          {
            v16 = v12[1].n128_f64[0];
          }

          else
          {
            v16 = v9;
          }

          if (v14 < v9)
          {
            v11 = v5;
            v9 = v16;
          }

          v12 += 3;
        }

        while (v12 != v7);
      }

      if (v9 >= v10)
      {
        v17 = v10;
      }

      else
      {
        v17 = v9;
      }

      v18 = *(a1 + 16);
      if (v18 > 0.0)
      {
        v19 = v18 * floor(v17 / v18);
        v20 = v18 * floor((v18 + v5) / v18);
        if (v19 >= v20)
        {
          v17 = v19;
        }

        else
        {
          v17 = v20;
        }
      }

      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if (v6 != v7)
      {
        if (v8 < 0x555555555555556)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4));
        }

        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_updateSourceOrder(a1);
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        *&v73.var0 = a1;
        v22 = 126 - 2 * __clz(v8);
        if (v6 == v7)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,false>(v6, v7, &v73, v23, 1);
      }

      if (*(a1 + 25) == 1)
      {
        v71 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v71 = 0;
      }

      if (v6 != v7)
      {
        v48 = 0;
        v49 = 0;
        v50 = v6;
        while (1)
        {
          v51 = *(v50 + 1);
          *&v73.var0 = *v50;
          *&v73.var2 = v51;
          *&v73.var4 = v50[4];
          if (v73.var4 && v73.var1 <= v17)
          {
            break;
          }

          std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](a1 + 96, v50);
LABEL_118:
          v50 += 6;
          if (v50 == v7)
          {
            goto LABEL_119;
          }
        }

        var2 = v73.var2;
        if (v73.var2 > v17)
        {
          var2 = v17;
        }

        v73.var2 = var2;
        for (i = *(a1 + 64); i != *(a1 + 72) && v73.var1 >= *i; i += 2)
        {
          if (v73.var1 < i[1])
          {
            goto LABEL_118;
          }
        }

        v54 = *(v50 + 42);
        v55 = *(v50 + 41);
        if (v49)
        {
          var3 = v73.var3;
          if (v48 == v73.var3 || *(a1 + 24) == 1)
          {
            HDStatisticsDiscrete::addSample(a1 + 120, &v73);
            HDStatisticsTimeInterval::addSample((a1 + 192), &v73, v54 ^ 1);
          }
        }

        else
        {
          HDStatisticsDiscrete::addSample(a1 + 120, &v73);
          HDStatisticsTimeInterval::addSample((a1 + 192), &v73, v54 ^ 1);
          var3 = v73.var3;
          v48 = v73.var3;
        }

        if (*(a1 + 25) != 1)
        {
          goto LABEL_117;
        }

        v57 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, var3);
        if (!v57)
        {
          goto LABEL_116;
        }

        v58 = [v71 objectForKeyedSubscript:v57];
        v59 = v58;
        if (v58)
        {
          if ([v58 longLongValue] != var3 && *(a1 + 24) != 1)
          {
LABEL_115:

LABEL_116:
LABEL_117:
            v49 = 1;
            goto LABEL_118;
          }
        }

        else
        {
          v60 = [MEMORY[0x277CCABB0] numberWithLongLong:var3];
          [v71 setObject:v60 forKeyedSubscript:v57];
        }

        v61 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, var3);
        v62 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v61);
        HDStatisticsDiscrete::addSample(v62, &v73);
        HDStatisticsTimeInterval::addSample(v62 + 9, &v73, v55 ^ 1);
        goto LABEL_115;
      }

LABEL_119:
      *(a1 + 224) = HKIntervalMask<double>::removeIntervalsBefore((a1 + 200), v17) + *(a1 + 224);
      v63 = *(a1 + 232);
      if (v63 != v70)
      {
        do
        {
          *(v63 + 18) = HKIntervalMask<double>::removeIntervalsBefore(v63 + 15, v17) + *(v63 + 18);
          v64 = v63[1];
          if (v64)
          {
            do
            {
              v65 = v64;
              v64 = *v64;
            }

            while (v64);
          }

          else
          {
            do
            {
              v65 = v63[2];
              v66 = *v65 == v63;
              v63 = v65;
            }

            while (!v66);
          }

          v63 = v65;
        }

        while (v65 != v70);
      }

      *(a1 + 56) = v17;

      if (v6)
      {
        operator delete(v6);
      }

LABEL_128:
      v67 = *(a1 + 56);
      if (v67 == v5)
      {
        v68 = [MEMORY[0x277CCA890] currentHandler];
        v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete, HDStatisticsTimeInterval>>::_mergeThroughTime(double) [Statistics = HDStatisticsCombined<HDStatisticsDiscrete, HDStatisticsTimeInterval>]"}];
        [v68 handleFailureInFunction:v69 file:@"HDStatisticsBucket.hpp" lineNumber:234 description:@"Failed to make forward progress during statistics merge."];

        v67 = *(a1 + 56);
      }

      v5 = v67;
      if (v67 >= a2)
      {
        return;
      }
    }

    v24 = *(v6 + 42);
    v25 = *(v6 + 41);
    v26 = *(v6 + 40);
    v27 = v6[1];
    v28 = v6[2];
    v29 = *(v6 + 3);
    v30 = *(v6 + 33);
    if (v28 <= a2)
    {
      v31 = v6[2];
    }

    else
    {
      v31 = a2;
    }

    if (v27 < a2)
    {
      v32 = *(v6 + 32);
    }

    else
    {
      v32 = 0;
    }

    if (v27 < a2)
    {
      v33 = 0;
    }

    else
    {
      v33 = *(v6 + 33);
    }

    if (v27 < a2)
    {
      v34 = 0;
    }

    else
    {
      v31 = v6[2];
      v34 = *(v6 + 3);
    }

    if (v27 < a2)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v6[2];
    }

    if (v27 < a2)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = *v6;
    }

    if (v27 < a2)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = v6[1];
    }

    if (v27 < a2)
    {
      v38 = 0;
    }

    else
    {
      v38 = *(v6 + 32);
    }

    if (v6[4])
    {
      v28 = v31;
    }

    else
    {
      v32 = *(v6 + 32);
      v33 = 0;
      v34 = 0;
    }

    if (v6[4])
    {
      v39 = v35;
    }

    else
    {
      v39 = 0.0;
    }

    if (v6[4])
    {
      v40 = v36;
    }

    else
    {
      v40 = 0.0;
    }

    if (v6[4])
    {
      v41 = v37;
    }

    else
    {
      v41 = 0.0;
    }

    if (v6[4])
    {
      v42 = v38;
    }

    else
    {
      v42 = 0;
    }

    v73.var0 = *v6;
    v73.var1 = v27;
    v73.var2 = v28;
    v73.var3 = v29;
    v73.var4 = v32;
    v73.var5 = v30;
    *(&v73.var5 + 1) = *(v6 + 34);
    *(&v73.var5 + 5) = *(v6 + 19);
    *&v74 = v40;
    *(&v74 + 1) = v41;
    *&v75 = v39;
    *(&v75 + 1) = v34;
    LOBYTE(v76) = v42;
    HIBYTE(v76) = v33;
    for (j = *(a1 + 64); j != *(a1 + 72) && v27 >= *j; j += 2)
    {
      if (v27 < j[1])
      {
        goto LABEL_85;
      }
    }

    if (v32)
    {
      HDStatisticsDiscrete::addSample(a1 + 120, &v73);
      HDStatisticsTimeInterval::addSample((a1 + 192), &v73, v24 ^ 1);
      if (*(a1 + 25) == 1)
      {
        v44 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1, v29);
        v45 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsForSource(a1, v44);
        HDStatisticsDiscrete::addSample(v45, &v73);
        HDStatisticsTimeInterval::addSample(v45 + 9, &v73, v25 ^ 1);
      }

      v26 = 1;
      LOBYTE(v25) = 1;
      LOBYTE(v24) = 1;
    }

LABEL_85:
    if (v42)
    {
      LOWORD(v72) = v76;
      v46 = v75;
      v47 = *(a1 + 96);
      *v47 = v74;
      *(v47 + 16) = v46;
      *(v47 + 32) = v72;
      *(v47 + 40) = v26;
      *(v47 + 41) = v25;
      *(v47 + 42) = v24;
    }

    else
    {
      *(a1 + 104) = *(a1 + 96);
    }

LABEL_88:
    *(a1 + 56) = a2;
    goto LABEL_128;
  }
}

uint64_t **HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsForSource(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v4 = *(a1 + 240);
  v2 = (a1 + 240);
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v5 == v2 || v5[4] > a2)
  {
LABEL_8:
    v6 = v2 - 1;
    v9 = &v8;
    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v2 - 1, a2, &v9);
    v9 = &v8;
    v5 = std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v6, v8, &v9);
  }

  return v5 + 5;
}

uint64_t *HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 320), a2);
    if (v5)
    {
      return v5[3];
    }

    else
    {
      v6 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a1, a2);
      v9 = v6;
      v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>((a1 + 360), &v9);
      if (v7)
      {
        a2 = v7[3];
      }

      else
      {
        v10 = &v9;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((a1 + 360), &v9, &v10)[3] = a2;
        v6 = v9;
      }
    }
  }

  return a2;
}

id HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));

  if (WeakRetained)
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>((a1 + 400), a2);
    if (v5)
    {
      WeakRetained = v5[3];
    }

    else
    {
      v6 = objc_loadWeakRetained((a1 + 88));
      WeakRetained = [v6 bundleIdentifierForSourceID:{a2, v9}];

      if (WeakRetained)
      {
        v10 = &v9;
        v7 = std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 400), a2, &v10);
        objc_storeStrong(v7 + 3, WeakRetained);
      }
    }
  }

  return WeakRetained;
}

uint64_t **std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, void **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

__n128 std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,false>(unint64_t a1, __n128 *a2, uint64_t *a3, uint64_t a4, char a5)
{
  while (2)
  {
    v10 = a2 - 3;
    v11 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v11;
          v12 = a2 - v11;
          v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 4);
          if (v13 > 2)
          {
            switch(v13)
            {
              case 3:

                result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v11, (v11 + 48), &a2[-3], a3).n128_u64[0];
                return result;
              case 4:

                result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v11, v11 + 48, v11 + 96, &a2[-3], a3).n128_u64[0];
                return result;
              case 5:

                result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v11, (v11 + 48), (v11 + 96), (v11 + 144), &a2[-3], a3).n128_u64[0];
                return result;
            }
          }

          else
          {
            if (v13 < 2)
            {
              return result;
            }

            if (v13 == 2)
            {
              v102 = a2[-2].n128_u64[1];
              v103 = *(v11 + 24);
              if (v102 != v103)
              {
                v104 = *(*a3 + 296);
                v105 = *(*a3 + 304);
                if (v104 == v105)
                {
                  v107 = *(*a3 + 296);
                  v106 = v107;
                }

                else
                {
                  v106 = *(*a3 + 296);
                  v107 = v106;
                  do
                  {
                    if (*v107 == v102)
                    {
                      goto LABEL_188;
                    }

                    v107 += 8;
                  }

                  while (v107 != v105);
                  v107 = *(*a3 + 304);
LABEL_188:
                  while (*v106 != v103)
                  {
                    v106 += 8;
                    if (v106 == v105)
                    {
                      v106 = *(*a3 + 304);
                      break;
                    }
                  }
                }

                if (v107 - v104 < v106 - v104)
                {
                  *v236 = *(v11 + 16);
                  *&v236[16] = *(v11 + 32);
                  v228 = *v11;
                  v220 = *v10;
                  v221 = a2[-2];
                  *(v11 + 27) = *(a2 - 21);
                  *v11 = v220;
                  *(v11 + 16) = v221;
                  result = v228;
                  *(a2 - 21) = *&v236[11];
                  *v10 = v228;
                  a2[-2] = *v236;
                }
              }

              return result;
            }
          }

          if (v12 <= 1151)
          {
            v108 = (v11 + 48);
            v110 = v11 == a2 || v108 == a2;
            if (a5)
            {
              if (!v110)
              {
                v111 = v11;
                do
                {
                  v112 = v111;
                  v111 = v108;
                  v113 = v112[4].n128_i64[1];
                  v114 = v112[1].n128_i64[1];
                  if (v113 != v114)
                  {
                    v115 = *(*a3 + 296);
                    v116 = *(*a3 + 304);
                    if (v115 == v116)
                    {
                      v118 = *(*a3 + 296);
                      v117 = v118;
                    }

                    else
                    {
                      v117 = *(*a3 + 296);
                      v118 = v117;
                      do
                      {
                        if (*v118 == v113)
                        {
                          goto LABEL_212;
                        }

                        v118 += 8;
                      }

                      while (v118 != v116);
                      v118 = *(*a3 + 304);
LABEL_212:
                      while (*v117 != v114)
                      {
                        v117 += 8;
                        if (v117 == v116)
                        {
                          v117 = *(*a3 + 304);
                          break;
                        }
                      }
                    }

                    if (v118 - v115 < v117 - v115)
                    {
                      v232 = v111[1].n128_u64[0];
                      v224 = *v111;
                      v242 = v112[5];
                      v119 = v111;
                      while (1)
                      {
                        v120 = v112[1];
                        *v119 = *v112;
                        *(v119 + 16) = v120;
                        *(v119 + 27) = *(v112 + 27);
                        if (v112 == v11)
                        {
                          break;
                        }

                        v119 = v112;
                        v121 = v112[-2].n128_i64[1];
                        if (v113 != v121)
                        {
                          v122 = *(*a3 + 296);
                          v123 = *(*a3 + 304);
                          if (v122 == v123)
                          {
                            v125 = *(*a3 + 296);
                            v124 = v125;
                          }

                          else
                          {
                            v124 = *(*a3 + 296);
                            v125 = v124;
                            do
                            {
                              if (*v125 == v113)
                              {
                                goto LABEL_225;
                              }

                              v125 += 8;
                            }

                            while (v125 != v123);
                            v125 = *(*a3 + 304);
LABEL_225:
                            while (*v124 != v121)
                            {
                              v124 += 8;
                              if (v124 == v123)
                              {
                                v124 = *(*a3 + 304);
                                break;
                              }
                            }
                          }

                          v112 = (v119 - 48);
                          if (v125 - v122 < v124 - v122)
                          {
                            continue;
                          }
                        }

                        goto LABEL_232;
                      }

                      v119 = v11;
LABEL_232:
                      result = v224;
                      *v119 = v224;
                      *(v119 + 16) = v232;
                      *(v119 + 24) = v113;
                      *(v119 + 32) = v242.n128_u64[0];
                      *(v119 + 39) = *(&v242.n128_u32[1] + 3);
                    }
                  }

                  v108 = v111 + 3;
                }

                while (&v111[3] != a2);
              }
            }

            else if (!v110)
            {
              do
              {
                v205 = a1;
                a1 = v108;
                v206 = *(v205 + 72);
                v207 = *(v205 + 24);
                if (v206 != v207)
                {
                  v208 = *(*a3 + 296);
                  v209 = *(*a3 + 304);
                  if (v208 == v209)
                  {
                    v211 = *(*a3 + 296);
                    v210 = v211;
                  }

                  else
                  {
                    v210 = *(*a3 + 296);
                    v211 = v210;
                    do
                    {
                      if (*v211 == v206)
                      {
                        goto LABEL_351;
                      }

                      v211 += 8;
                    }

                    while (v211 != v209);
                    v211 = *(*a3 + 304);
LABEL_351:
                    while (*v210 != v207)
                    {
                      v210 += 8;
                      if (v210 == v209)
                      {
                        v210 = *(*a3 + 304);
                        break;
                      }
                    }
                  }

                  if (v211 - v208 < v210 - v208)
                  {
                    v235 = *(a1 + 16);
                    v227 = *a1;
                    v245 = *(v205 + 80);
                    v212 = a1;
                    do
                    {
                      v213 = v212;
                      v212 = v205;
                      v214 = *(v205 + 16);
                      *v213 = *v205;
                      v213[1] = v214;
                      *(v213 + 27) = *(v205 + 27);
                      v215 = *(v205 - 24);
                      if (v206 == v215)
                      {
                        break;
                      }

                      v216 = *(*a3 + 296);
                      v217 = *(*a3 + 304);
                      if (v216 == v217)
                      {
                        v219 = *(*a3 + 296);
                        v218 = v219;
                      }

                      else
                      {
                        v218 = *(*a3 + 296);
                        v219 = v218;
                        do
                        {
                          if (*v219 == v206)
                          {
                            goto LABEL_363;
                          }

                          v219 += 8;
                        }

                        while (v219 != v217);
                        v219 = *(*a3 + 304);
LABEL_363:
                        while (*v218 != v215)
                        {
                          v218 += 8;
                          if (v218 == v217)
                          {
                            v218 = *(*a3 + 304);
                            break;
                          }
                        }
                      }

                      v205 = v212 - 48;
                    }

                    while (v219 - v216 < v218 - v216);
                    result = v227;
                    *v212 = v227;
                    *(v212 + 16) = v235;
                    *(v212 + 24) = v206;
                    *(v212 + 32) = v245;
                    *(v212 + 39) = *(&v245 + 7);
                  }
                }

                v108 = (a1 + 48);
              }

              while ((a1 + 48) != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v11 != a2)
            {
              v126 = (v13 - 2) >> 1;
              v127 = v126;
              do
              {
                v128 = v127;
                if (v126 >= v127)
                {
                  v129 = (2 * v127) | 1;
                  v130 = v11 + 48 * v129;
                  if (2 * v128 + 2 < v13)
                  {
                    v131 = *(v130 + 24);
                    v132 = *(v130 + 72);
                    if (v131 != v132)
                    {
                      v134 = *(*a3 + 296);
                      v133 = *(*a3 + 304);
                      if (v134 == v133)
                      {
                        v136 = *(*a3 + 296);
                        v135 = v136;
                      }

                      else
                      {
                        v135 = *(*a3 + 296);
                        v136 = v135;
                        do
                        {
                          if (*v136 == v131)
                          {
                            goto LABEL_245;
                          }

                          v136 += 8;
                        }

                        while (v136 != v133);
                        v136 = *(*a3 + 304);
LABEL_245:
                        while (*v135 != v132)
                        {
                          v135 += 8;
                          if (v135 == v133)
                          {
                            v135 = *(*a3 + 304);
                            break;
                          }
                        }
                      }

                      v137 = (v136 - v134);
                      v138 = (v135 - v134);
                      v139 = v137 < v138;
                      if (v137 >= v138)
                      {
                        v140 = 0;
                      }

                      else
                      {
                        v140 = 48;
                      }

                      v130 += v140;
                      if (v139)
                      {
                        v129 = 2 * v128 + 2;
                      }
                    }
                  }

                  v141 = v11 + 48 * v128;
                  v142 = *(v130 + 24);
                  v143 = *(v141 + 24);
                  if (v142 == v143)
                  {
                    goto LABEL_265;
                  }

                  v145 = *(*a3 + 296);
                  v144 = *(*a3 + 304);
                  if (v145 == v144)
                  {
                    v147 = *(*a3 + 296);
                    v146 = v147;
                  }

                  else
                  {
                    v146 = *(*a3 + 296);
                    v147 = v146;
                    do
                    {
                      if (*v147 == v142)
                      {
                        goto LABEL_260;
                      }

                      v147 += 8;
                    }

                    while (v147 != v144);
                    v147 = *(*a3 + 304);
LABEL_260:
                    while (*v146 != v143)
                    {
                      v146 += 8;
                      if (v146 == v144)
                      {
                        v146 = *(*a3 + 304);
                        break;
                      }
                    }
                  }

                  if (v147 - v145 >= v146 - v145)
                  {
LABEL_265:
                    v233 = *(v141 + 16);
                    v225 = *v141;
                    v243 = *(v141 + 32);
                    v148 = *v130;
                    v149 = *(v130 + 16);
                    *(v141 + 27) = *(v130 + 27);
                    *v141 = v148;
                    *(v141 + 16) = v149;
                    if (v126 >= v129)
                    {
                      while (1)
                      {
                        v151 = 2 * v129;
                        v129 = (2 * v129) | 1;
                        v150 = v11 + 48 * v129;
                        v152 = v151 + 2;
                        if (v152 < v13)
                        {
                          v153 = *(v150 + 24);
                          v154 = *(v150 + 72);
                          if (v153 != v154)
                          {
                            v155 = *(*a3 + 296);
                            v156 = *(*a3 + 304);
                            if (v155 == v156)
                            {
                              v158 = *(*a3 + 296);
                              v157 = v158;
                            }

                            else
                            {
                              v157 = *(*a3 + 296);
                              v158 = v157;
                              do
                              {
                                if (*v158 == v153)
                                {
                                  goto LABEL_274;
                                }

                                v158 += 8;
                              }

                              while (v158 != v156);
                              v158 = *(*a3 + 304);
LABEL_274:
                              while (*v157 != v154)
                              {
                                v157 += 8;
                                if (v157 == v156)
                                {
                                  v157 = *(*a3 + 304);
                                  break;
                                }
                              }
                            }

                            v159 = (v158 - v155);
                            v160 = (v157 - v155);
                            v161 = v159 < v160;
                            if (v159 >= v160)
                            {
                              v162 = 0;
                            }

                            else
                            {
                              v162 = 48;
                            }

                            v150 += v162;
                            if (v161)
                            {
                              v129 = v152;
                            }
                          }
                        }

                        v163 = *(v150 + 24);
                        if (v163 != v143)
                        {
                          v165 = *(*a3 + 296);
                          v164 = *(*a3 + 304);
                          if (v165 == v164)
                          {
                            v167 = *(*a3 + 296);
                            v166 = v167;
                          }

                          else
                          {
                            v166 = *(*a3 + 296);
                            v167 = v166;
                            do
                            {
                              if (*v167 == v163)
                              {
                                goto LABEL_289;
                              }

                              v167 += 8;
                            }

                            while (v167 != v164);
                            v167 = *(*a3 + 304);
LABEL_289:
                            while (*v166 != v143)
                            {
                              v166 += 8;
                              if (v166 == v164)
                              {
                                v166 = *(*a3 + 304);
                                break;
                              }
                            }
                          }

                          if (v167 - v165 < v166 - v165)
                          {
                            break;
                          }
                        }

                        v168 = *v150;
                        v169 = *(v150 + 16);
                        *(v130 + 27) = *(v150 + 27);
                        *v130 = v168;
                        *(v130 + 16) = v169;
                        v130 = v150;
                        if (v126 < v129)
                        {
                          goto LABEL_295;
                        }
                      }
                    }

                    v150 = v130;
LABEL_295:
                    *v150 = v225;
                    *(v150 + 16) = v233;
                    *(v150 + 24) = v143;
                    *(v150 + 32) = v243;
                    *(v150 + 39) = *(&v243 + 7);
                  }
                }

                v127 = v128 - 1;
              }

              while (v128);
              v170 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 4);
              do
              {
                v171 = 0;
                *v234 = *(v11 + 16);
                *&v234[16] = *(v11 + 32);
                v226 = *v11;
                v172 = v11;
                do
                {
                  v173 = v172;
                  v174 = v172 + 48 * v171;
                  v172 = v174 + 48;
                  v175 = 2 * v171;
                  v171 = (2 * v171) | 1;
                  v176 = v175 + 2;
                  if (v175 + 2 < v170)
                  {
                    v177 = *(v174 + 72);
                    v178 = *(v174 + 120);
                    if (v177 != v178)
                    {
                      v180 = *(*a3 + 296);
                      v179 = *(*a3 + 304);
                      if (v180 == v179)
                      {
                        v182 = *(*a3 + 296);
                        v181 = v182;
                      }

                      else
                      {
                        v181 = *(*a3 + 296);
                        v182 = v181;
                        do
                        {
                          if (*v182 == v177)
                          {
                            goto LABEL_306;
                          }

                          v182 += 8;
                        }

                        while (v182 != v179);
                        v182 = *(*a3 + 304);
LABEL_306:
                        while (*v181 != v178)
                        {
                          v181 += 8;
                          if (v181 == v179)
                          {
                            v181 = *(*a3 + 304);
                            break;
                          }
                        }
                      }

                      v183 = v174 + 96;
                      if (v182 - v180 < v181 - v180)
                      {
                        v172 = v183;
                        v171 = v176;
                      }
                    }
                  }

                  v184 = *v172;
                  v185 = *(v172 + 16);
                  *(v173 + 27) = *(v172 + 27);
                  *v173 = v184;
                  v173[1] = v185;
                }

                while (v171 <= (v170 - 2) / 2);
                a2 -= 3;
                if (v172 == a2)
                {
                  result = v226;
                  *(v172 + 27) = *&v234[11];
                  *v172 = v226;
                  *(v172 + 16) = *v234;
                }

                else
                {
                  v186 = *a2;
                  v187 = a2[1];
                  *(v172 + 27) = *(a2 + 27);
                  *v172 = v186;
                  *(v172 + 16) = v187;
                  result = v226;
                  *(a2 + 27) = *&v234[11];
                  *a2 = v226;
                  a2[1] = *v234;
                  v188 = v172 - v11 + 48;
                  if (v188 >= 49)
                  {
                    v189 = (0xAAAAAAAAAAAAAAABLL * (v188 >> 4) - 2) >> 1;
                    v190 = v11 + 48 * v189;
                    v191 = *(v190 + 24);
                    v192 = *(v172 + 24);
                    if (v191 != v192)
                    {
                      v194 = *(*a3 + 296);
                      v193 = *(*a3 + 304);
                      if (v194 == v193)
                      {
                        v196 = *(*a3 + 296);
                        v195 = v196;
                      }

                      else
                      {
                        v195 = *(*a3 + 296);
                        v196 = v195;
                        do
                        {
                          if (*v196 == v191)
                          {
                            goto LABEL_321;
                          }

                          v196 += 8;
                        }

                        while (v196 != v193);
                        v196 = *(*a3 + 304);
LABEL_321:
                        while (*v195 != v192)
                        {
                          v195 += 8;
                          if (v195 == v193)
                          {
                            v195 = *(*a3 + 304);
                            break;
                          }
                        }
                      }

                      if (v196 - v194 < v195 - v194)
                      {
                        v248 = *(v172 + 16);
                        v239 = *(v172 + 32);
                        v244 = *v172;
                        do
                        {
                          v197 = v172;
                          v172 = v190;
                          v198 = *v190;
                          v199 = *(v190 + 16);
                          *(v197 + 27) = *(v190 + 27);
                          *v197 = v198;
                          v197[1] = v199;
                          if (!v189)
                          {
                            break;
                          }

                          v189 = (v189 - 1) >> 1;
                          v190 = v11 + 48 * v189;
                          v200 = *(v190 + 24);
                          if (v200 == v192)
                          {
                            break;
                          }

                          v202 = *(*a3 + 296);
                          v201 = *(*a3 + 304);
                          if (v202 == v201)
                          {
                            v204 = *(*a3 + 296);
                            v203 = v204;
                          }

                          else
                          {
                            v203 = *(*a3 + 296);
                            v204 = v203;
                            do
                            {
                              if (*v204 == v200)
                              {
                                goto LABEL_338;
                              }

                              v204 += 8;
                            }

                            while (v204 != v201);
                            v204 = *(*a3 + 304);
LABEL_338:
                            while (*v203 != v192)
                            {
                              v203 += 8;
                              if (v203 == v201)
                              {
                                v203 = *(*a3 + 304);
                                break;
                              }
                            }
                          }
                        }

                        while (v204 - v202 < v203 - v202);
                        result = v244;
                        *v172 = v244;
                        *(v172 + 16) = v248;
                        *(v172 + 24) = v192;
                        *(v172 + 32) = v239;
                        *(v172 + 39) = *(&v239 + 7);
                      }
                    }
                  }
                }

                v139 = v170-- <= 2;
              }

              while (!v139);
            }

            return result;
          }

          v14 = v13 >> 1;
          v15 = (v11 + 48 * (v13 >> 1));
          if (v12 < 0x1801)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v15, a1, &a2[-3], a3);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, v15, &a2[-3], a3);
            v16 = 3 * v14;
            v17 = (a1 + 48 * v14 - 48);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>((a1 + 48), v17, &a2[-6], a3);
            v18 = (a1 + 48 + 16 * v16);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>((a1 + 96), v18, &a2[-9], a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(v17, v15, v18, a3);
            *v229 = *(a1 + 16);
            *&v229[16] = *(a1 + 32);
            v222 = *a1;
            v19 = *(v15 + 27);
            v20 = v15[1];
            *a1 = *v15;
            *(a1 + 16) = v20;
            *(a1 + 27) = v19;
            *(v15 + 27) = *&v229[11];
            *v15 = v222;
            v15[1] = *v229;
          }

          --a4;
          if (a5)
          {
            v21 = *(a1 + 24);
            v22 = *a3;
            break;
          }

          v23 = *(a1 - 24);
          v21 = *(a1 + 24);
          if (v23 != v21)
          {
            v22 = *a3;
            v24 = *(*a3 + 296);
            v25 = *(*a3 + 304);
            if (v24 == v25)
            {
              v27 = *(*a3 + 296);
              v26 = v27;
            }

            else
            {
              v26 = *(*a3 + 296);
              v27 = v26;
              do
              {
                if (*v27 == v23)
                {
                  goto LABEL_22;
                }

                v27 += 8;
              }

              while (v27 != v25);
              v27 = *(*a3 + 304);
LABEL_22:
              while (*v26 != v21)
              {
                v26 += 8;
                if (v26 == v25)
                {
                  v26 = *(*a3 + 304);
                  break;
                }
              }
            }

            if (v27 - v24 < v26 - v24)
            {
              break;
            }
          }

          v247 = *(a1 + 16);
          v238 = *(a1 + 32);
          v241 = *a1;
          v66 = a2[-2].n128_u64[1];
          if (v21 == v66)
          {
            goto LABEL_122;
          }

          v67 = *(*a3 + 296);
          v68 = *(*a3 + 304);
          v69 = v67;
          if (v67 == v68)
          {
            v70 = *(*a3 + 296);
          }

          else
          {
            while (*v69 != v21)
            {
              v69 += 8;
              if (v69 == v68)
              {
                v69 = *(*a3 + 304);
                break;
              }
            }

            v70 = *(*a3 + 296);
            while (*v70 != v66)
            {
              v70 += 8;
              if (v70 == v68)
              {
                v70 = *(*a3 + 304);
                break;
              }
            }
          }

          if (v69 - v67 >= v70 - v67)
          {
LABEL_122:
            v11 = a1 + 48;
            if (a1 + 48 < a2)
            {
              v74 = *a3;
              v75 = a1;
              do
              {
                v76 = *(v75 + 72);
                v75 = v11;
                if (v21 != v76)
                {
                  v77 = *(v74 + 296);
                  v78 = *(v74 + 304);
                  if (v77 == v78)
                  {
                    v80 = *(v74 + 296);
                    v79 = v80;
                  }

                  else
                  {
                    v79 = *(v74 + 296);
                    v80 = v79;
                    do
                    {
                      if (*v80 == v21)
                      {
                        goto LABEL_130;
                      }

                      v80 += 8;
                    }

                    while (v80 != v78);
                    v80 = *(v74 + 304);
LABEL_130:
                    while (*v79 != v76)
                    {
                      v79 += 8;
                      if (v79 == v78)
                      {
                        v79 = *(v74 + 304);
                        break;
                      }
                    }
                  }

                  if (v80 - v77 < v79 - v77)
                  {
                    break;
                  }
                }

                v11 += 48;
              }

              while (v75 + 48 < a2);
            }
          }

          else
          {
            v11 = a1;
            do
            {
              do
              {
                v71 = *(v11 + 72);
                v11 += 48;
              }

              while (v21 == v71);
              v72 = *(*a3 + 296);
              if (v67 == v68)
              {
                v73 = *(*a3 + 296);
              }

              else
              {
                while (*v72 != v21)
                {
                  v72 += 8;
                  if (v72 == v68)
                  {
                    v72 = *(*a3 + 304);
                    break;
                  }
                }

                v73 = *(*a3 + 296);
                while (*v73 != v71)
                {
                  v73 += 8;
                  if (v73 == v68)
                  {
                    v73 = *(*a3 + 304);
                    break;
                  }
                }
              }
            }

            while (v72 - v67 >= v73 - v67);
          }

          v81 = a2;
          if (v11 < a2)
          {
            v82 = *a3;
            v81 = a2;
            do
            {
              v83 = v81[-2].n128_u64[1];
              v81 -= 3;
              if (v21 == v83)
              {
                break;
              }

              v84 = *(v82 + 296);
              v85 = *(v82 + 304);
              if (v84 == v85)
              {
                v87 = *(v82 + 296);
                v86 = v87;
              }

              else
              {
                v86 = *(v82 + 296);
                v87 = v86;
                do
                {
                  if (*v87 == v21)
                  {
                    goto LABEL_144;
                  }

                  v87 += 8;
                }

                while (v87 != v85);
                v87 = *(v82 + 304);
LABEL_144:
                while (*v86 != v83)
                {
                  v86 += 8;
                  if (v86 == v85)
                  {
                    v86 = *(v82 + 304);
                    break;
                  }
                }
              }
            }

            while (v87 - v84 < v86 - v84);
          }

          while (v11 < v81)
          {
            *v231 = *(v11 + 16);
            *&v231[16] = *(v11 + 32);
            v223 = *v11;
            v88 = *v81;
            v89 = v81[1];
            *(v11 + 27) = *(v81 + 27);
            *v11 = v88;
            *(v11 + 16) = v89;
            *(v81 + 27) = *&v231[11];
            *v81 = v223;
            v81[1] = *v231;
            v90 = *a3;
            do
            {
              do
              {
                v91 = *(v11 + 72);
                v11 += 48;
              }

              while (v21 == v91);
              v92 = *(v90 + 296);
              v93 = *(v90 + 304);
              v94 = v92;
              if (v92 == v93)
              {
                v95 = *(v90 + 296);
              }

              else
              {
                while (*v94 != v21)
                {
                  v94 += 8;
                  if (v94 == v93)
                  {
                    v94 = *(v90 + 304);
                    break;
                  }
                }

                v95 = *(v90 + 296);
                while (*v95 != v91)
                {
                  v95 += 8;
                  if (v95 == v93)
                  {
                    v95 = *(v90 + 304);
                    break;
                  }
                }
              }
            }

            while (v94 - v92 >= v95 - v92);
            do
            {
              v96 = v81[-2].n128_u64[1];
              v81 -= 3;
              if (v21 == v96)
              {
                break;
              }

              v97 = v92;
              if (v92 == v93)
              {
                v98 = v92;
              }

              else
              {
                while (*v97 != v21)
                {
                  v97 += 8;
                  if (v97 == v93)
                  {
                    v97 = v93;
                    break;
                  }
                }

                v98 = v92;
                while (*v98 != v96)
                {
                  v98 += 8;
                  if (v98 == v93)
                  {
                    v98 = v93;
                    break;
                  }
                }
              }
            }

            while (v97 - v92 < v98 - v92);
          }

          v99 = (v11 - 48);
          if (v11 - 48 != a1)
          {
            v100 = *v99;
            v101 = *(v11 - 32);
            *(a1 + 27) = *(v11 - 21);
            *a1 = v100;
            *(a1 + 16) = v101;
          }

          a5 = 0;
          result = v241;
          *v99 = v241;
          *(v11 - 32) = v247;
          *(v11 - 24) = v21;
          *(v11 - 9) = *(&v238 + 7);
          *(v11 - 16) = v238;
        }

        v246 = *(a1 + 16);
        v237 = *(a1 + 32);
        v240 = *a1;
        v28 = a1;
        do
        {
          v29 = v28;
          v28 += 48;
          v30 = *(v29 + 72);
          if (v30 == v21)
          {
            break;
          }

          v31 = *(v22 + 296);
          v32 = *(v22 + 304);
          if (v31 == v32)
          {
            v34 = *(v22 + 296);
            v33 = v34;
          }

          else
          {
            v33 = *(v22 + 296);
            v34 = v33;
            do
            {
              if (*v34 == v30)
              {
                goto LABEL_34;
              }

              v34 += 8;
            }

            while (v34 != v32);
            v34 = *(v22 + 304);
LABEL_34:
            while (*v33 != v21)
            {
              v33 += 8;
              if (v33 == v32)
              {
                v33 = *(v22 + 304);
                break;
              }
            }
          }
        }

        while (v34 - v31 < v33 - v31);
        v35 = a2;
        if (v29 == a1)
        {
          v35 = a2;
          if (v28 < a2)
          {
            v35 = a2;
            do
            {
              v41 = v35[-2].n128_u64[1];
              v35 -= 3;
              if (v41 != v21)
              {
                v42 = *(v22 + 296);
                v43 = *(v22 + 304);
                if (v42 == v43)
                {
                  v45 = *(v22 + 296);
                  v44 = v45;
                }

                else
                {
                  v44 = *(v22 + 296);
                  v45 = v44;
                  do
                  {
                    if (*v45 == v41)
                    {
                      goto LABEL_60;
                    }

                    v45 += 8;
                  }

                  while (v45 != v43);
                  v45 = *(v22 + 304);
LABEL_60:
                  while (*v44 != v21)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(v22 + 304);
                      break;
                    }
                  }
                }

                if (v45 - v42 < v44 - v42)
                {
                  break;
                }
              }
            }

            while (v28 < v35);
          }
        }

        else
        {
          do
          {
            do
            {
              v36 = v35[-2].n128_u64[1];
              v35 -= 3;
            }

            while (v36 == v21);
            v37 = *(v22 + 296);
            v38 = *(v22 + 304);
            if (v37 == v38)
            {
              v40 = *(v22 + 296);
              v39 = v40;
            }

            else
            {
              v39 = *(v22 + 296);
              v40 = v39;
              do
              {
                if (*v40 == v36)
                {
                  goto LABEL_46;
                }

                v40 += 8;
              }

              while (v40 != v38);
              v40 = *(v22 + 304);
LABEL_46:
              while (*v39 != v21)
              {
                v39 += 8;
                if (v39 == v38)
                {
                  v39 = *(v22 + 304);
                  break;
                }
              }
            }
          }

          while (v40 - v37 >= v39 - v37);
        }

        v11 = v28;
        if (v28 < v35)
        {
          v46 = v35;
          do
          {
            *v230 = *(v11 + 16);
            *&v230[16] = *(v11 + 32);
            v47 = *v11;
            v49 = *v46;
            v48 = v46[1];
            *(v11 + 27) = *(v46 + 27);
            *v11 = v49;
            *(v11 + 16) = v48;
            *(v46 + 27) = *&v230[11];
            *v46 = v47;
            v46[1] = *v230;
            v50 = *a3;
            do
            {
              v51 = *(v11 + 72);
              v11 += 48;
              if (v51 == v21)
              {
                break;
              }

              v52 = *(v50 + 296);
              v53 = *(v50 + 304);
              if (v52 == v53)
              {
                v55 = *(v50 + 296);
                v54 = v55;
              }

              else
              {
                v54 = *(v50 + 296);
                v55 = v54;
                do
                {
                  if (*v55 == v51)
                  {
                    goto LABEL_75;
                  }

                  v55 += 8;
                }

                while (v55 != v53);
                v55 = *(v50 + 304);
LABEL_75:
                while (*v54 != v21)
                {
                  v54 += 8;
                  if (v54 == v53)
                  {
                    v54 = *(v50 + 304);
                    break;
                  }
                }
              }
            }

            while (v55 - v52 < v54 - v52);
            do
            {
              do
              {
                v56 = *(v46 - 3);
                v46 -= 3;
              }

              while (v56 == v21);
              v57 = *(v50 + 296);
              v58 = *(v50 + 304);
              if (v57 == v58)
              {
                v60 = *(v50 + 296);
                v59 = v60;
              }

              else
              {
                v59 = *(v50 + 296);
                v60 = v59;
                do
                {
                  if (*v60 == v56)
                  {
                    goto LABEL_86;
                  }

                  v60 += 8;
                }

                while (v60 != v58);
                v60 = *(v50 + 304);
LABEL_86:
                while (*v59 != v21)
                {
                  v59 += 8;
                  if (v59 == v58)
                  {
                    v59 = *(v50 + 304);
                    break;
                  }
                }
              }
            }

            while (v60 - v57 >= v59 - v57);
          }

          while (v11 < v46);
        }

        v61 = (v11 - 48);
        if (v11 - 48 != a1)
        {
          v62 = *v61;
          v63 = *(v11 - 32);
          *(a1 + 27) = *(v11 - 21);
          *a1 = v62;
          *(a1 + 16) = v63;
        }

        *v61 = v240;
        *(v11 - 32) = v246;
        *(v11 - 24) = v21;
        *(v11 - 9) = *(&v237 + 7);
        *(v11 - 16) = v237;
        if (v28 >= v35)
        {
          break;
        }

LABEL_97:
        result.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,false>(a1, (v11 - 48), a3, a4, a5 & 1).n128_u64[0];
        a5 = 0;
      }

      v64 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*>(a1, v11 - 48, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*>(v11, a2, a3))
      {
        break;
      }

      if (!v64)
      {
        goto LABEL_97;
      }
    }

    a2 = (v11 - 48);
    if (!v64)
    {
      continue;
    }

    return result;
  }
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 3);
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v6 = *(*a4 + 296);
  v7 = *(*a4 + 304);
  v8 = v6;
  if (v6 == v7)
  {
    v9 = *(*a4 + 296);
  }

  else
  {
    while (*v8 != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(*a4 + 304);
        break;
      }
    }

    v9 = *(*a4 + 296);
    while (*v9 != v5)
    {
      v9 += 8;
      if (v9 == v7)
      {
        v9 = *(*a4 + 304);
        break;
      }
    }
  }

  if (v8 - v6 >= v9 - v6)
  {
LABEL_21:
    v13 = *(a3 + 3);
    if (v13 != v4)
    {
      v14 = *(*a4 + 296);
      v15 = *(*a4 + 304);
      if (v14 == v15)
      {
        v17 = *(*a4 + 296);
        v16 = v17;
      }

      else
      {
        v16 = *(*a4 + 296);
        v17 = v16;
        do
        {
          if (*v17 == v13)
          {
            goto LABEL_27;
          }

          v17 += 8;
        }

        while (v17 != v15);
        v17 = *(*a4 + 304);
LABEL_27:
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v15)
          {
            v16 = *(*a4 + 304);
            break;
          }
        }
      }

      if (v17 - v14 < v16 - v14)
      {
        v18 = *a2;
        *v46 = a2[1];
        *&v46[16] = a2[2];
        v19 = *(a3 + 27);
        v20 = a3[1];
        *a2 = *a3;
        a2[1] = v20;
        *(a2 + 27) = v19;
        *a3 = v18;
        a3[1] = *v46;
        result = *&v46[11];
        *(a3 + 27) = *&v46[11];
        v22 = *(a2 + 3);
        v23 = *(a1 + 3);
        if (v22 != v23)
        {
          v24 = *(*a4 + 296);
          v25 = *(*a4 + 304);
          if (v24 == v25)
          {
            v27 = *(*a4 + 296);
            v26 = v27;
          }

          else
          {
            v26 = *(*a4 + 296);
            v27 = v26;
            do
            {
              if (*v27 == v22)
              {
                goto LABEL_38;
              }

              v27 += 8;
            }

            while (v27 != v25);
            v27 = *(*a4 + 304);
LABEL_38:
            while (*v26 != v23)
            {
              v26 += 8;
              if (v26 == v25)
              {
                v26 = *(*a4 + 304);
                break;
              }
            }
          }

          if (v27 - v24 < v26 - v24)
          {
            v41 = *a1;
            *v48 = a1[1];
            *&v48[16] = a1[2];
            v42 = *(a2 + 27);
            v43 = a2[1];
            *a1 = *a2;
            a1[1] = v43;
            *(a1 + 27) = v42;
            *a2 = v41;
            a2[1] = *v48;
            result = *&v48[11];
            *(a2 + 27) = *&v48[11];
          }
        }
      }
    }
  }

  else
  {
    v10 = *(a3 + 3);
    if (v10 != v4)
    {
      v11 = *(*a4 + 296);
      if (v6 == v7)
      {
        v12 = *(*a4 + 296);
      }

      else
      {
        while (*v11 != v10)
        {
          v11 += 8;
          if (v11 == v7)
          {
            v11 = *(*a4 + 304);
            break;
          }
        }

        v12 = *(*a4 + 296);
        while (*v12 != v4)
        {
          v12 += 8;
          if (v12 == v7)
          {
            v12 = *(*a4 + 304);
            break;
          }
        }
      }

      if (v11 - v6 < v12 - v6)
      {
        v28 = a1[1];
        v29 = *a1;
        *v49 = *(&v28 + 1);
        *&v49[8] = a1[2];
        v30 = *(a3 + 27);
        v31 = a3[1];
        *a1 = *a3;
        a1[1] = v31;
        *(a1 + 27) = v30;
LABEL_59:
        *a3 = v29;
        a3[1] = v28;
        result = *&v49[3];
        *(a3 + 27) = *&v49[3];
        return result;
      }
    }

    v32 = *a1;
    *v47 = a1[1];
    *&v47[16] = a1[2];
    v33 = *(a2 + 27);
    v34 = a2[1];
    *a1 = *a2;
    a1[1] = v34;
    *(a1 + 27) = v33;
    *a2 = v32;
    a2[1] = *v47;
    result = *&v47[11];
    *(a2 + 27) = *&v47[11];
    v35 = *(a3 + 3);
    v36 = *(a2 + 3);
    if (v35 != v36)
    {
      v37 = *(*a4 + 296);
      v38 = *(*a4 + 304);
      if (v37 == v38)
      {
        v40 = *(*a4 + 296);
        v39 = v40;
      }

      else
      {
        v39 = *(*a4 + 296);
        v40 = v39;
        do
        {
          if (*v40 == v35)
          {
            goto LABEL_50;
          }

          v40 += 8;
        }

        while (v40 != v38);
        v40 = *(*a4 + 304);
LABEL_50:
        while (*v39 != v36)
        {
          v39 += 8;
          if (v39 == v38)
          {
            v39 = *(*a4 + 304);
            break;
          }
        }
      }

      if (v40 - v37 < v39 - v37)
      {
        v28 = a2[1];
        v29 = *a2;
        *v49 = *(&v28 + 1);
        *&v49[8] = a2[2];
        v44 = *(a3 + 27);
        v45 = a3[1];
        *a2 = *a3;
        a2[1] = v45;
        *(a2 + 27) = v44;
        goto LABEL_59;
      }
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, a2, a3, a5).n128_u64[0];
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 != v12)
  {
    v13 = *(*a5 + 296);
    v14 = *(*a5 + 304);
    if (v13 == v14)
    {
      v16 = *(*a5 + 296);
      v15 = v16;
    }

    else
    {
      v15 = *(*a5 + 296);
      v16 = v15;
      do
      {
        if (*v16 == v11)
        {
          goto LABEL_7;
        }

        v16 += 8;
      }

      while (v16 != v14);
      v16 = *(*a5 + 304);
LABEL_7:
      while (*v15 != v12)
      {
        v15 += 8;
        if (v15 == v14)
        {
          v15 = *(*a5 + 304);
          break;
        }
      }
    }

    if (v16 - v13 < v15 - v13)
    {
      v17 = *a3;
      *v38 = *(a3 + 16);
      *&v38[16] = *(a3 + 32);
      v18 = *(a4 + 27);
      v19 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v19;
      *(a3 + 27) = v18;
      *a4 = v17;
      *(a4 + 16) = *v38;
      result = *&v38[11];
      *(a4 + 27) = *&v38[11];
      v20 = *(a3 + 24);
      v21 = *(a2 + 24);
      if (v20 != v21)
      {
        v22 = *(*a5 + 296);
        v23 = *(*a5 + 304);
        if (v22 == v23)
        {
          v25 = *(*a5 + 296);
          v24 = v25;
        }

        else
        {
          v24 = *(*a5 + 296);
          v25 = v24;
          do
          {
            if (*v25 == v20)
            {
              goto LABEL_18;
            }

            v25 += 8;
          }

          while (v25 != v23);
          v25 = *(*a5 + 304);
LABEL_18:
          while (*v24 != v21)
          {
            v24 += 8;
            if (v24 == v23)
            {
              v24 = *(*a5 + 304);
              break;
            }
          }
        }

        if (v25 - v22 < v24 - v22)
        {
          v26 = *a2;
          *v39 = *(a2 + 16);
          *&v39[16] = *(a2 + 32);
          v27 = *(a3 + 27);
          v28 = *(a3 + 16);
          *a2 = *a3;
          *(a2 + 16) = v28;
          *(a2 + 27) = v27;
          *a3 = v26;
          *(a3 + 16) = *v39;
          result = *&v39[11];
          *(a3 + 27) = *&v39[11];
          v29 = *(a2 + 24);
          v30 = *(a1 + 24);
          if (v29 != v30)
          {
            v31 = *(*a5 + 296);
            v32 = *(*a5 + 304);
            if (v31 == v32)
            {
              v34 = *(*a5 + 296);
              v33 = v34;
            }

            else
            {
              v33 = *(*a5 + 296);
              v34 = v33;
              do
              {
                if (*v34 == v29)
                {
                  goto LABEL_29;
                }

                v34 += 8;
              }

              while (v34 != v32);
              v34 = *(*a5 + 304);
LABEL_29:
              while (*v33 != v30)
              {
                v33 += 8;
                if (v33 == v32)
                {
                  v33 = *(*a5 + 304);
                  break;
                }
              }
            }

            if (v34 - v31 < v33 - v31)
            {
              v35 = *a1;
              *v40 = *(a1 + 16);
              *&v40[16] = *(a1 + 32);
              v36 = *(a2 + 27);
              v37 = *(a2 + 16);
              *a1 = *a2;
              *(a1 + 16) = v37;
              *(a1 + 27) = v36;
              *a2 = v35;
              *(a2 + 16) = *v40;
              result = *&v40[11];
              *(a2 + 27) = *&v40[11];
            }
          }
        }
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v13 = *(a5 + 3);
  v14 = *(a4 + 3);
  if (v13 != v14)
  {
    v15 = *(*a6 + 296);
    v16 = *(*a6 + 304);
    if (v15 == v16)
    {
      v18 = *(*a6 + 296);
      v17 = v18;
    }

    else
    {
      v17 = *(*a6 + 296);
      v18 = v17;
      do
      {
        if (*v18 == v13)
        {
          goto LABEL_7;
        }

        v18 += 8;
      }

      while (v18 != v16);
      v18 = *(*a6 + 304);
LABEL_7:
      while (*v17 != v14)
      {
        v17 += 8;
        if (v17 == v16)
        {
          v17 = *(*a6 + 304);
          break;
        }
      }
    }

    if (v18 - v15 < v17 - v15)
    {
      v19 = *a4;
      *v49 = a4[1];
      *&v49[16] = a4[2];
      v20 = *(a5 + 27);
      v21 = a5[1];
      *a4 = *a5;
      a4[1] = v21;
      *(a4 + 27) = v20;
      *a5 = v19;
      a5[1] = *v49;
      result = *&v49[11];
      *(a5 + 27) = *&v49[11];
      v22 = *(a4 + 3);
      v23 = *(a3 + 3);
      if (v22 != v23)
      {
        v24 = *(*a6 + 296);
        v25 = *(*a6 + 304);
        if (v24 == v25)
        {
          v27 = *(*a6 + 296);
          v26 = v27;
        }

        else
        {
          v26 = *(*a6 + 296);
          v27 = v26;
          do
          {
            if (*v27 == v22)
            {
              goto LABEL_18;
            }

            v27 += 8;
          }

          while (v27 != v25);
          v27 = *(*a6 + 304);
LABEL_18:
          while (*v26 != v23)
          {
            v26 += 8;
            if (v26 == v25)
            {
              v26 = *(*a6 + 304);
              break;
            }
          }
        }

        if (v27 - v24 < v26 - v24)
        {
          v28 = *a3;
          *v50 = a3[1];
          *&v50[16] = a3[2];
          v29 = *(a4 + 27);
          v30 = a4[1];
          *a3 = *a4;
          a3[1] = v30;
          *(a3 + 27) = v29;
          *a4 = v28;
          a4[1] = *v50;
          result = *&v50[11];
          *(a4 + 27) = *&v50[11];
          v31 = *(a3 + 3);
          v32 = *(a2 + 3);
          if (v31 != v32)
          {
            v33 = *(*a6 + 296);
            v34 = *(*a6 + 304);
            if (v33 == v34)
            {
              v36 = *(*a6 + 296);
              v35 = v36;
            }

            else
            {
              v35 = *(*a6 + 296);
              v36 = v35;
              do
              {
                if (*v36 == v31)
                {
                  goto LABEL_29;
                }

                v36 += 8;
              }

              while (v36 != v34);
              v36 = *(*a6 + 304);
LABEL_29:
              while (*v35 != v32)
              {
                v35 += 8;
                if (v35 == v34)
                {
                  v35 = *(*a6 + 304);
                  break;
                }
              }
            }

            if (v36 - v33 < v35 - v33)
            {
              v37 = *a2;
              *v51 = a2[1];
              *&v51[16] = a2[2];
              v38 = *(a3 + 27);
              v39 = a3[1];
              *a2 = *a3;
              a2[1] = v39;
              *(a2 + 27) = v38;
              *a3 = v37;
              a3[1] = *v51;
              result = *&v51[11];
              *(a3 + 27) = *&v51[11];
              v40 = *(a2 + 3);
              v41 = *(a1 + 3);
              if (v40 != v41)
              {
                v42 = *(*a6 + 296);
                v43 = *(*a6 + 304);
                if (v42 == v43)
                {
                  v45 = *(*a6 + 296);
                  v44 = v45;
                }

                else
                {
                  v44 = *(*a6 + 296);
                  v45 = v44;
                  do
                  {
                    if (*v45 == v40)
                    {
                      goto LABEL_40;
                    }

                    v45 += 8;
                  }

                  while (v45 != v43);
                  v45 = *(*a6 + 304);
LABEL_40:
                  while (*v44 != v41)
                  {
                    v44 += 8;
                    if (v44 == v43)
                    {
                      v44 = *(*a6 + 304);
                      break;
                    }
                  }
                }

                if (v45 - v42 < v44 - v42)
                {
                  v46 = *a1;
                  *v52 = a1[1];
                  *&v52[16] = a1[2];
                  v47 = *(a2 + 27);
                  v48 = a2[1];
                  *a1 = *a2;
                  a1[1] = v48;
                  *(a1 + 27) = v47;
                  *a2 = v46;
                  a2[1] = *v52;
                  result = *&v52[11];
                  *(a2 + 27) = *&v52[11];
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *(a2 - 24);
        v8 = *(a1 + 24);
        if (v7 != v8)
        {
          v9 = *(*a3 + 296);
          v10 = *(*a3 + 304);
          if (v9 == v10)
          {
            v12 = *(*a3 + 296);
            v11 = v12;
          }

          else
          {
            v11 = *(*a3 + 296);
            v12 = v11;
            do
            {
              if (*v12 == v7)
              {
                goto LABEL_10;
              }

              v12 += 8;
            }

            while (v12 != v10);
            v12 = *(*a3 + 304);
LABEL_10:
            while (*v11 != v8)
            {
              v11 += 8;
              if (v11 == v10)
              {
                v11 = *(*a3 + 304);
                break;
              }
            }
          }

          if (v12 - v9 < v11 - v9)
          {
            v30 = (a2 - 48);
            v31 = *a1;
            *v36 = *(a1 + 16);
            *&v36[16] = *(a1 + 32);
            v32 = *(a2 - 21);
            v33 = *(a2 - 32);
            *a1 = *(a2 - 48);
            *(a1 + 16) = v33;
            *(a1 + 27) = v32;
            *v30 = v31;
            v30[1] = *v36;
            *(v30 + 27) = *&v36[11];
          }
        }

        return 1;
      }

      goto LABEL_18;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, (a1 + 48), (a2 - 48), a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, a1 + 48, a1 + 96, a2 - 48, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), (a1 + 144), (a2 - 48), a3);
      return 1;
  }

LABEL_18:
  v13 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeTowardTime(double)::{lambda(HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder const&)#1} &,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_SampleRemainder*,0>(a1, (a1 + 48), (a1 + 96), a3);
  v14 = a1 + 144;
  if (a1 + 144 == a2)
  {
    return 1;
  }

  v15 = 0;
  while (1)
  {
    v16 = *(v14 + 24);
    v17 = *(v13 + 24);
    if (v16 != v17)
    {
      v18 = *(*a3 + 296);
      v19 = *(*a3 + 304);
      if (v18 == v19)
      {
        v21 = *(*a3 + 296);
        v20 = v21;
      }

      else
      {
        v20 = *(*a3 + 296);
        v21 = v20;
        do
        {
          if (*v21 == v16)
          {
            goto LABEL_26;
          }

          v21 += 8;
        }

        while (v21 != v19);
        v21 = *(*a3 + 304);
LABEL_26:
        while (*v20 != v17)
        {
          v20 += 8;
          if (v20 == v19)
          {
            v20 = *(*a3 + 304);
            break;
          }
        }
      }

      if (v21 - v18 < v20 - v18)
      {
        v34 = *v14;
        v35 = *(v14 + 16);
        v37 = *(v14 + 32);
        v22 = v14;
        while (1)
        {
          v23 = *(v13 + 16);
          *v22 = *v13;
          *(v22 + 16) = v23;
          *(v22 + 27) = *(v13 + 27);
          if (v13 == a1)
          {
            break;
          }

          v22 = v13;
          v24 = *(v13 - 24);
          if (v16 != v24)
          {
            v25 = *(*a3 + 296);
            v26 = *(*a3 + 304);
            if (v25 == v26)
            {
              v28 = *(*a3 + 296);
              v27 = v28;
            }

            else
            {
              v27 = *(*a3 + 296);
              v28 = v27;
              do
              {
                if (*v28 == v16)
                {
                  goto LABEL_39;
                }

                v28 += 8;
              }

              while (v28 != v26);
              v28 = *(*a3 + 304);
LABEL_39:
              while (*v27 != v24)
              {
                v27 += 8;
                if (v27 == v26)
                {
                  v27 = *(*a3 + 304);
                  break;
                }
              }
            }

            v13 -= 48;
            if (v28 - v25 < v27 - v25)
            {
              continue;
            }
          }

          goto LABEL_46;
        }

        v22 = a1;
LABEL_46:
        *v22 = v34;
        *(v22 + 16) = v35;
        *(v22 + 24) = v16;
        *(v22 + 32) = v37;
        *(v22 + 39) = *(&v37 + 7);
        if (++v15 == 8)
        {
          return v14 + 48 == a2;
        }
      }
    }

    v13 = v14;
    v14 += 48;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::statisticsByBundleIdentifier(uint64_t *a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  v2 = *(a2 + 232);
  v26 = (a2 + 240);
  if (v2 == (a2 + 240))
  {
    return;
  }

  v25 = a1 + 2;
  do
  {
    v4 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_bundleIdentifierForSourceID(a2, v2[4]);
    v5 = v4;
    if (!v4)
    {
      goto LABEL_25;
    }

    v6 = [v4 hash];
    v7 = v6;
    v8 = a1[1];
    if (!*&v8)
    {
      goto LABEL_21;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v28 = v9.u32[0];
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
LABEL_21:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        break;
      }

      if (v28 > 1)
      {
        if (v13 >= *&v8)
        {
          v13 %= *&v8;
        }
      }

      else
      {
        v13 &= *&v8 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_21;
      }

LABEL_20:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    v14 = v12[2];
    v15 = v5;
    v16 = v5;
    v17 = v16;
    if (v14 != v16)
    {
      v18 = [v14 isEqualToString:v16];

      v5 = v15;
      if (v18)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    v5 = v15;
LABEL_22:
    *(v12 + 3) = *(v2 + 5);
    v19 = *(v2 + 7);
    v20 = *(v2 + 9);
    v21 = *(v2 + 11);
    v12[11] = v2[13];
    *(v12 + 9) = v21;
    *(v12 + 7) = v20;
    *(v12 + 5) = v19;
    v12[12] = v2[14];
    if (v12 + 3 != v2 + 5)
    {
      std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v12 + 13, v2[15], v2[16], (v2[16] - v2[15]) >> 4);
    }

    v12[16] = v2[18];

LABEL_25:
    v22 = v2[1];
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
    }

    else
    {
      do
      {
        v23 = v2[2];
        v24 = *v23 == v2;
        v2 = v23;
      }

      while (!v24);
    }

    v2 = v23;
  }

  while (v23 != v26);
}

void sub_228EAC6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](va);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::~__hash_table(v11);
  _Unwind_Resume(a1);
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,0>(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,0>((v2 + 2));
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

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BECAF8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BECAF8;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 72;
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsTimeInterval const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsDiscrete const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BECB88;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsDiscrete const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__func(void *a1)
{
  *a1 = &unk_283BECB88;
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x22AAC8590);
}

void std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsDiscrete const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsDiscrete const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsDiscrete,HDStatisticsTimeInterval>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&,std::function<HDStatisticsCombined const&<HDStatisticsDiscrete,HDStatisticsTimeInterval> ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#2}>,HDStatisticsDiscrete const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsDiscrete const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1},std::allocator<void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_addStatisticsFromFinishedBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>(HKStatistics *,HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>> const&)::{lambda(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)#1}>,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const& ()(HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_primitiveAddSample(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a1 + 592) == 1)
  {
    if ((a3 & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Cannot configure statistics collection calculator engine with a sample if we cannot merge up to the sample's start date"];
      return 0;
    }

    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  v8 = *(a2 + 8);
  if (v8 >= _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_earliestStartTimeWithoutInvalidation(a1))
  {
    if (*(a1 + 40) && v5)
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_advanceToTime(a1, v8);
    }

    HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::addSample(a1 + 112, a2, v5);
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(a1);
    return 1;
  }

  else
  {
    v9 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v8 end:*(a2 + 16)];
    v10 = (*(*a1 + 128))(a1, v9, a4);
  }

  return v10;
}

double _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_earliestStartTimeWithoutInvalidation(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if ((*(a1 + 592) & 1) == 0)
    {
      v1 = *(a1 + 176);
      result = *(a1 + 120);
      if (v1 <= result)
      {
        v1 = -1.79769313e308;
      }

      else if (*(a1 + 144))
      {
        v1 = -1.79769313e308;
      }

      if (v1 >= result)
      {
        return v1;
      }

      return result;
    }

    return -1.79769313e308;
  }

  result = *(a1 + 176);
  if (result <= *(a1 + 120))
  {
    return -1.79769313e308;
  }

  if (*(a1 + 144))
  {
    return -1.79769313e308;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_advanceToTime(uint64_t a1, double a2)
{
  if (*(a1 + 128) <= a2)
  {
    if (*(a1 + 568) != *(a1 + 560))
    {
      [*(a1 + 40) dateIntervalAtIndex:*(a1 + 112) + 1];
      objc_claimAutoreleasedReturnValue();
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
    }

    v5 = 0;
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [v3 dateIntervalContainingDate:v4 index:&v5];
    objc_claimAutoreleasedReturnValue();

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_updateSourceOrder(a1 + 120);
    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(a1, a1 + 120);
  }
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::addSample(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *(a2 + 32);
  if ((v4 & 1) != 0 && (v5 = *(a2 + 1), v5 >= *(a1 + 8)))
  {
    v6 = *a2;
    v7 = *(a2 + 2);
    v8 = a2[3];
    v9 = *(a2 + 33);
    *(&v42 + 1) = a2[1];
    *&v43 = v7;
    *(&v43 + 1) = v8;
    LOBYTE(v44) = v4;
    HIBYTE(v44) = v9;
    *&v42 = v6;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    v10 = *(a1 + 16);
    if (*(a1 + 36))
    {
      v11 = v5 < v10;
    }

    else
    {
      v11 = v5 <= v10;
    }

    if (v11)
    {
      if (v7 <= v10)
      {
        v13 = v7;
      }

      else
      {
        v13 = *(a1 + 16);
      }

      *&v43 = v13;
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((a1 + 264), v8, &v43 + 1);
      v14 = *(a1 + 112);
      if (v14 == *(a1 + 104) && *(a1 + 152) <= 0)
      {
        v17 = *(a1 + 8);
        v18 = *(a1 + 16);
        if (v5 >= v17)
        {
          v17 = v5;
        }

        if (v18 >= v13)
        {
          v18 = v13;
        }

        *(a1 + 48) = v17;
        *(a1 + 56) = v18;
      }

      else
      {
        if (v5 < *(a1 + 48))
        {
          v15 = *(a1 + 8);
          if (v5 >= v15)
          {
            v15 = v5;
          }

          *(a1 + 48) = v15;
        }

        if (v13 > *(a1 + 56))
        {
          v16 = *(a1 + 16);
          if (v16 >= v13)
          {
            v16 = v13;
          }

          *(a1 + 56) = v16;
        }
      }

      if (*(a1 + 32) == 1)
      {
        v19 = *(a1 + 64);
        if (v5 < v19)
        {
          v19 = v5;
        }

        *(a1 + 64) = v19;
      }

      if (a3 && v5 < *(a1 + 16))
      {
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 8, v5);
        v14 = *(a1 + 112);
      }

      v39 = v42;
      v40 = v43;
      LOWORD(v41) = v44;
      v20 = *(a1 + 120);
      if (v14 >= v20)
      {
        v23 = *(a1 + 104);
        v24 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v23) >> 4);
        v25 = v24 + 1;
        if (v24 + 1 > 0x555555555555555)
        {
          std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
        }

        v26 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v23) >> 4);
        if (2 * v26 > v25)
        {
          v25 = 2 * v26;
        }

        if (v26 >= 0x2AAAAAAAAAAAAAALL)
        {
          v27 = 0x555555555555555;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v27);
        }

        v28 = 48 * v24;
        v29 = v40;
        *v28 = v39;
        *(v28 + 16) = v29;
        *(v28 + 32) = v41;
        *(v28 + 40) = 0;
        *(v28 + 42) = 0;
        v22 = 48 * v24 + 48;
        v30 = *(a1 + 104);
        v31 = *(a1 + 112) - v30;
        v32 = 48 * v24 - v31;
        memcpy((v28 - v31), v30, v31);
        v33 = *(a1 + 104);
        *(a1 + 104) = v32;
        *(a1 + 112) = v22;
        *(a1 + 120) = 0;
        if (v33)
        {
          operator delete(v33);
        }
      }

      else
      {
        v21 = v40;
        *v14 = v39;
        *(v14 + 16) = v21;
        *(v14 + 32) = v41;
        *(v14 + 40) = 0;
        *(v14 + 42) = 0;
        v22 = v14 + 48;
      }

      *(a1 + 112) = v22;
      if (!*(a1 + 192) || *(a1 + 168) <= v5)
      {
        *(a1 + 160) = v6;
        *(a1 + 168) = v5;
        *(a1 + 176) = v7;
        *(a1 + 184) = v8;
        *(a1 + 192) = v4;
        *(a1 + 193) = v9;
      }

      if (*(a1 + 33) == 1)
      {
        v34 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_canonicalSourceIDForSourceID(a1 + 8, v8);
        v35 = HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsForSource(a1 + 8, v34);
        if (!*(v35 + 64) || *(v35 + 5) <= v5)
        {
          v35[4] = v6;
          *(v35 + 5) = v5;
          *(v35 + 6) = v7;
          v35[7] = v8;
          *(v35 + 64) = v4;
          *(v35 + 65) = v9;
        }
      }
    }

    else
    {
      v36 = v42;
      v37 = v43;
      v38 = v44;
      if (v5 >= v10)
      {
        v10 = v5;
      }

      *(&v36 + 1) = v10;
    }
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  if (v38 == 1)
  {
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 448, &v36);
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_notifyForCurrentBucket(uint64_t a1)
{
  if (*(a1 + 594) == 1)
  {
    *(a1 + 596) = 1;
  }

  else
  {
    *(a1 + 596) = 0;
    v2 = _Block_copy(*(a1 + 96));
    if (v2)
    {
      v4 = v2;
      v3 = (*(*a1 + 96))(a1);
      if (v3)
      {
        v4[2](v4, v3);
      }

      v2 = v4;
    }
  }
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::advanceBucket(uint64_t a1, double a2, double a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<HDRawQuantitySample>::__init_with_size[abi:ne200100]<HDRawQuantitySample*,HDRawQuantitySample*>(&v9, *(a1 + 448), *(a1 + 456), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 456) - *(a1 + 448)) >> 3));
  HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::resetToBucket(a1, *a1 + 1, a2, a3);
  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    v8 = v9;
    do
    {
      HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::addSample(a1, v8, 1);
      v8 += 5;
    }

    while (v8 != v7);
  }

  if (v6)
  {

    operator delete(v6);
  }
}

void sub_228EAD83C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HDStatisticsCollectionEngine<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::resetToBucket(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = (a1 + 40);
  objc_storeStrong((a1 + 472), *(a1 + 40));
  v9 = *(a1 + 208);
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 64) = a3;
  *(a1 + 112) = *(a1 + 104);
  v10 = 0uLL;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  if (v9)
  {
    *(a1 + 216) = v9;
    operator delete(v9);
    v10 = 0uLL;
  }

  *(a1 + 208) = v10;
  *(a1 + 224) = v10;
  if (*(a1 + 256))
  {
    v11 = *(a1 + 248);
    v12 = *(a1 + 240);
    *(a1 + 240) = a1 + 248;
    *(v11 + 16) = 0;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    if (v12[1])
    {
      v13 = v12[1];
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      v14 = v13[2];
      if (v14)
      {
        v15 = *v14;
        if (*v14 == v13)
        {
          *v14 = 0;
          while (1)
          {
            v17 = v14[1];
            if (!v17)
            {
              break;
            }

            do
            {
              v14 = v17;
              v17 = *v17;
            }

            while (v17);
          }
        }

        else
        {
          for (v14[1] = 0; v15; v15 = v14[1])
          {
            do
            {
              v14 = v15;
              v15 = *v15;
            }

            while (v15);
          }
        }

        std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::destroy(v13);
        for (i = v14[2]; i; i = i[2])
        {
          v14 = i;
        }

        v13 = v14;
      }
    }

    std::__tree<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::__map_value_compare<long long,std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>>::destroy(v13);
  }

  objc_storeStrong(v8, *(a1 + 472));
  *(a1 + 456) = *(a1 + 448);
  *a1 = a2;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_didChangeBucket(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 596) == 1)
  {
    if (v3)
    {
      v6 = v3;
      v4 = _Block_copy(*(a1 + 96));
      v5 = v4;
      if (v4)
      {
        (*(v4 + 2))(v4, v6);
      }

      v3 = v6;
    }

    *(a1 + 596) = 0;
  }
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_currentBucketInterval(uint64_t a1)
{
  if (*(a1 + 592))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:*(a1 + 120) end:{*(a1 + 128), v1}];
  }

  return v3;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEE38_collapsedPendingInvalidationIntervalsERb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_228EADAF0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_primitiveInvalidateInterval(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    if (v5 && (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_currentBucketInterval(a1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [v5 endDate];
      v9 = [v7 startDate];
      if ([v8 hk_isAfterDate:v9])
      {
        v10 = [v5 startDate];
        v11 = [v7 endDate];
        v12 = [v10 hk_isBeforeOrEqualToDate:v11];
      }

      else
      {
        v12 = 0;
      }

      v13 = _Block_copy(a1[12]);
      if ((v12 & 1) == 0)
      {
        operator new();
      }
    }

    else
    {
      v13 = _Block_copy(a1[12]);
    }

    *(a1 + 592) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke;
    v27[3] = &unk_278629370;
    v15 = v5;
    v28 = v15;
    v16 = v13;
    v29 = v16;
    (*(*a1 + 9))(a1, v27);
    if (v5)
    {
      v17 = [v15 startDate];
      [v17 timeIntervalSinceReferenceDate];
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
    }

    else
    {
      v15 = (*(*a1 + 4))(a1);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2;
    v21[3] = &unk_2786293D8;
    v24 = a1;
    v5 = v15;
    v26 = 1;
    v22 = v5;
    v25 = a1;
    v23 = WeakRetained;
    v14 = (*(*a1 + 14))(a1, v21, a3);
    v18 = _Block_copy(v16);
    v19 = a1[12];
    a1[12] = v18;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to invalidate interval: no data source available."];
    v14 = 0;
  }

  return v14;
}

void sub_228EADF40(_Unwind_Exception *a1)
{
  MEMORY[0x22AAC8590](v4, 0x10F1C40E18B10D7);

  _Unwind_Resume(a1);
}

void ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (!*(a1 + 32) || ([v10 endDate], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "startDate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "hk_isBeforeOrEqualToDate:", v4), v4, v3, (v5 & 1) == 0) && (objc_msgSend(v10, "startDate"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "endDate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "hk_isAfterOrEqualToDate:", v7), v7, v6, (v8 & 1) == 0))
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, v10);
    }
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) startDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = [*(a1 + 32) endDate];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((v4 + 8));
  v13 = *(a1 + 32);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3;
  v20[3] = &__block_descriptor_57_e24_B52__0d8d16d24q32B40__44l;
  v22 = *(a1 + 64);
  v20[4] = v7;
  v20[5] = v10;
  v21 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_4;
  v19[3] = &__block_descriptor_40_e8_v16__0d8l;
  v19[4] = v21;
  v14 = [v11 collectionCalculator:WeakRetained queryForInterval:v13 error:a2 sampleHandler:v20 mergeHandler:v19];

  if (v14)
  {
    v15 = *(a1 + 56);
    if (v15 != v4)
    {
      v16 = [*(a1 + 32) endDate];
      [v16 timeIntervalSinceReferenceDate];
      if (*(v15 + 40) && *(v15 + 120) < v17)
      {
        [*(v15 + 40) dateIntervalAtIndex:*(v15 + 112) + 1];
        objc_claimAutoreleasedReturnValue();
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_updateSourceOrder(v15 + 120);
        HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeThroughTime(v15 + 120, *(v15 + 128));
        _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_statisticsFromFinishedBucket(v15, v15 + 120);
      }
    }
  }

  return v14;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEE28_primitiveInvalidateIntervalEP14NSDateIntervalPU15__autoreleasingP7NSError_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  if (*(a1 + 32) <= a6)
  {
    v9 = 1;
  }

  else
  {
    a2 = 0;
    v9 = 0;
    a7 = 0.0;
    a5 = 0.0;
    a6 = 0.0;
  }

  v18 = v7;
  v19 = v8;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a2;
  v16 = v9;
  v17 = 0;
  if (*(a1 + 56))
  {
    if (v9)
    {
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
    }

    return 1;
  }

  if (v9)
  {
    v11 = *(a1 + 40);
    if (a6 < v11)
    {
      if (a7 <= v11)
      {
        v11 = a7;
      }

      v13 = a6;
      v14 = v11;
      v16 = v9;
      return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_primitiveAddSample(*(a1 + 48), &v12, a3, a4);
    }

    return 1;
  }

  return 1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeToTime(uint64_t a1, double a2)
{
  if (*(a1 + 592) == 1)
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_configureForStartTime(a1);
  }

  if (*(a1 + 40))
  {
    _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_advanceToTime(a1, a2);
  }

  if (*(a1 + 128) > a2)
  {

    HDStatisticsBucket<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_mergeThroughTime(a1 + 120, a2);
  }
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v6 = [v5 dateInterval];
  v9[4] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &__block_descriptor_40_e24_B52__0d8d16d24q32B40__44l;
  v10[4] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_3;
  v9[3] = &__block_descriptor_40_e8_v16__0d8l;
  v7 = [v3 collectionCalculator:v5 queryForInterval:v6 error:a2 sampleHandler:v10 mergeHandler:v9];

  return v7;
}

uint64_t ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsCombinedI20HDStatisticsDiscrete24HDStatisticsTimeIntervalEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v10 = *(a1 + 32);
  *v14 = a5;
  *&v14[1] = a6;
  *&v14[2] = a7;
  v14[3] = a2;
  v15 = 1;
  v11 = [MEMORY[0x277CBEAA8] distantFuture];
  [v11 timeIntervalSinceReferenceDate];
  v16 = v12 <= a7;

  return _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>::_primitiveAddSample(v10, v14, a3, a4);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v6 = a3;
  v8 = _HDStatisticsCollectionCalculatorImplementation::_HDStatisticsCollectionCalculatorImplementation(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_283BECCC8;
  v9 = 900.0;
  if ((v6 & 0x10) == 0)
  {
    v9 = 0.0;
  }

  *(v8 + 56) = v9;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = 0;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::HDStatisticsBucket(v8 + 120, 0, -1.79769313e308, 1.79769313e308);
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 1;
  *(a1 + 602) = 0;
  *(a1 + 604) = 0;
  *(a1 + 608) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0;
  return a1;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(uint64_t a1)
{
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::~_HDConcreteStatisticsCollectionCalculatorImplementation(a1);

  JUMPOUT(0x22AAC8590);
}

{
  *a1 = &unk_283BECCC8;
  v2 = *(a1 + 632);
  if (v2)
  {
    *(a1 + 640) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 568);
  if (v3)
  {
    *(a1 + 576) = v3;
    operator delete(v3);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::~HDStatisticsBucket(a1 + 120);
  objc_destroyWeak((a1 + 104));

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  _HDStatisticsCollectionCalculatorImplementation::~_HDStatisticsCollectionCalculatorImplementation(a1);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::setMergeGranularity(uint64_t result, double a2)
{
  if (*(result + 56) != a2)
  {
    *(result + 56) = a2;
    *(result + 600) = 1;
  }

  return result;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::setDateInterval(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_msgSend_copy(v6);
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  v5 = [v6 startDate];
  [v5 timeIntervalSinceReferenceDate];
  _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_configureForStartTime(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::configureMergeAnchor(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 40))
  {
    v5 = v3;
    [v3 timeIntervalSinceReferenceDate];
    *(a1 + 608) = v4;
    v3 = v5;
  }
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::setStatisticsConfiguration(id *a1, void *a2)
{
  objc_storeStrong(a1 + 77, a2);
  v7 = a2;
  v4 = a1[77];
  v5 = a1[74];
  a1[74] = v4;
  v6 = v4;

  objc_storeStrong(a1 + 19, a1[74]);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::setIntervalMask(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = (a1 + 72);
  if (v6 != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v6, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (*(a1 + 40))
  {
    return 1;
  }

  v7 = *(a1 + 224) == *(a1 + 216) && *(a1 + 272) < 1 || HKIntervalMask<double>::firstDifference(*(a1 + 184), *(a1 + 192), *a2, a2[1]) >= *(a1 + 176);
  if ((a1 + 184) != a2)
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 184), *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if (v7)
  {
    return 1;
  }

  v9 = *(*a1 + 128);

  return v9(a1, 0, a3);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::setStatisticsHandler(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_msgSend_copy(v5);
  v4 = *(a1 + 96);
  *(a1 + 96) = v3;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::dataSource(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));

  return WeakRetained;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::currentStatistics(uint64_t a1)
{
  if (*(a1 + 600))
  {
    v1 = 0;
  }

  else
  {
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::HDStatisticsBucket(v4, a1 + 120);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::_updateSourceOrder(v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::_mergeThroughTime(v4, v4[1]);
    v1 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_statisticsFromFinishedBucket(a1, v4);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::~HDStatisticsBucket(v4);
  }

  return v1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::addSample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = [v6 startDate];
  [v8 timeIntervalSinceReferenceDate];
  if (v9 > *(a2 + 16))
  {
    v14 = 1;
LABEL_8:

    goto LABEL_13;
  }

  v10 = [v7 endDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = *(a2 + 8);

  if (v12 >= v13)
  {
LABEL_4:
    if (*(a1 + 602) == 1)
    {
      if (*(a1 + 601))
      {
        goto LABEL_6;
      }

      if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_earliestStartTimeWithoutInvalidation(a1) > *(a2 + 8))
      {
        v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:? end:?];
        v14 = (*(*a1 + 128))(a1, v8, a3);
        goto LABEL_8;
      }

      if (*(a1 + 603) != 1)
      {
        std::vector<HDRawQuantitySample>::push_back[abi:ne200100](a1 + 632, a2);
        goto LABEL_6;
      }
    }

    v14 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_primitiveAddSample(a1, a2, 1, a3);
    goto LABEL_13;
  }

LABEL_6:
  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::performAddSampleTransaction(uint64_t a1, void *a2, uint64_t a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 602) == 1)
  {
    v7 = (*(v5 + 2))(v5, a3);
    goto LABEL_81;
  }

  *(a1 + 602) = 1;
  v67 = a3;
  if (!(*(v5 + 2))(v5, a3))
  {
    v7 = 0;
    goto LABEL_80;
  }

  v66 = v6;
  if (*(a1 + 601))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 624);
  if (!v9)
  {
    v8 = 0;
    v68 = 0;
    goto LABEL_28;
  }

  if (!*(a1 + 40))
  {
LABEL_5:
    v68 = 0;
    v8 = 1;
    goto LABEL_28;
  }

  [v9 sortUsingComparator:&__block_literal_global_576];
  v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = *(a1 + 624);
  v11 = [v10 countByEnumeratingWithState:&v69 objects:v73 count:16];
  if (!v11)
  {

    v12 = 0;
    goto LABEL_27;
  }

  v12 = 0;
  v13 = *v70;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v70 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v69 + 1) + 8 * i);
      v16 = v15;
      if (v12)
      {
        v17 = [v15 startDate];
        v18 = [v12 endDate];
        v19 = [v17 hk_isBeforeOrEqualToDate:v18];

        if (v19)
        {
          v20 = [v16 endDate];
          v21 = [v12 endDate];
          v22 = [v20 hk_isAfterDate:v21];

          if (!v22)
          {
            goto LABEL_21;
          }

          v23 = objc_alloc(MEMORY[0x277CCA970]);
          v24 = [v12 startDate];
          v25 = [v16 endDate];
          v26 = [v23 initWithStartDate:v24 endDate:v25];
        }

        else
        {
          [v68 addObject:v12];
          v26 = v16;
        }

        v12 = v26;
      }

      else
      {
        v12 = v15;
      }

LABEL_21:
    }

    v11 = [v10 countByEnumeratingWithState:&v69 objects:v73 count:16];
  }

  while (v11);

  if (v12)
  {
    [v68 addObject:v12];
  }

LABEL_27:

  v8 = 0;
LABEL_28:
  v27 = *(a1 + 624);
  *(a1 + 624) = 0;

  *(a1 + 601) = 0;
  if (v8)
  {
    v28 = *(a1 + 632);
    *(a1 + 648) = 0;
    *(a1 + 640) = 0;
    *(a1 + 632) = 0;
    v29 = v28;
    goto LABEL_46;
  }

  v30 = [v68 lastObject];
  if (v30)
  {
    v31 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_currentBucketInterval(a1);
    v32 = [v31 endDate];
    v33 = [v30 endDate];
    v34 = [v32 hk_isBeforeOrEqualToDate:v33];

    if (v34)
    {
      v35 = [v30 endDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v36;

      v38 = *(a1 + 632);
      v39 = *(a1 + 640);
      if (v38 != v39)
      {
        while (*(v38 + 8) >= v37)
        {
          v38 += 40;
          if (v38 == v39)
          {
            goto LABEL_44;
          }
        }

        if (v38 != v39)
        {
          v40 = (v38 + 40);
          if ((v38 + 40) != v39)
          {
            do
            {
              if (*(v40 + 1) >= v37)
              {
                v41 = *v40;
                v42 = v40[1];
                *(v38 + 32) = *(v40 + 16);
                *v38 = v41;
                *(v38 + 16) = v42;
                v38 += 40;
              }

              v40 = (v40 + 40);
            }

            while (v40 != v39);
            v39 = *(a1 + 640);
          }
        }
      }

      if (v38 != v39)
      {
        *(a1 + 640) = v38;
      }
    }

LABEL_44:
  }

  v28 = *(a1 + 632);
  v29 = *(a1 + 640);
  *(a1 + 648) = 0;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  if ([v68 count])
  {
LABEL_46:
    v44 = v68;
    if (v44)
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v45 = v44;
      v46 = [v45 countByEnumeratingWithState:&v69 objects:v73 count:16];
      if (v46)
      {
        v47 = *v70;
        while (2)
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v70 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v69 + 1) + 8 * j);
            v50 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_primitiveInvalidateInterval(a1, v49, v67);

            if (!v50)
            {

              goto LABEL_68;
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v69 objects:v73 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_58;
    }

    if (_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_primitiveInvalidateInterval(a1, 0, v67))
    {
      goto LABEL_58;
    }

LABEL_68:
    v54 = 0;
  }

  else
  {
LABEL_58:
    v52 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v29 - v28) >> 3));
    if (v29 == v28)
    {
      v53 = 0;
    }

    else
    {
      v53 = v52;
    }

    v54 = 1;
    std::__introsort<std::_ClassicAlgPolicy,_HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_addPendingSamples(std::vector<HDRawQuantitySample> &,NSError * {__autoreleasing}*)::{lambda(HDRawQuantitySample const&,HDRawQuantitySample const&)#1} &,HDRawQuantitySample*,false>(v28, v29, v53, 1, v43);
    if (v29 != v28)
    {
      v55 = v28;
      v51 = v67;
      do
      {
        v56 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_primitiveAddSample(a1, v55, 1, v51);
        v54 = v56;
        v55 += 40;
        if (v55 == v29)
        {
          v57 = 0;
        }

        else
        {
          v57 = v56;
        }

        v51 = v67;
      }

      while ((v57 & 1) != 0);
    }
  }

  if (*(a1 + 40))
  {
    while (*(a1 + 576) != *(a1 + 568))
    {
      v58 = [*(a1 + 40) dateIntervalAtIndex:{*(a1 + 112) + 1, v51}];
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::_updateSourceOrder(a1 + 120);
      HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::_mergeThroughTime(a1 + 120, *(a1 + 128));
      v59 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_statisticsFromFinishedBucket(a1, a1 + 120);
      v60 = [v58 startDate];
      [v60 timeIntervalSinceReferenceDate];
      v62 = v61;
      v63 = [v58 endDate];
      [v63 timeIntervalSinceReferenceDate];
      HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsDiscrete>>::advanceBucket(a1 + 112, v62, v64);

      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_didChangeBucket(a1, v59);
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_notifyForCurrentBucket(a1);
    }
  }

  *(a1 + 602) = 0;
  if (v28)
  {
    operator delete(v28);
  }

  if (v54)
  {
    if (*(a1 + 604) == 1)
    {
      *(a1 + 604) = 0;
      v6 = v66;
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_notifyForCurrentBucket(a1);
      v7 = 1;
      goto LABEL_80;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v6 = v66;
LABEL_80:
  *(a1 + 602) = 0;
LABEL_81:

  return v7;
}

void sub_228EAF45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    *(v13 + 602) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::invalidateInterval(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  if (!v6)
  {

    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    if (*(a1 + 602))
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v11 = _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_primitiveInvalidateInterval(a1, v7, a3);
    goto LABEL_15;
  }

  v7 = [v6 dateIntervalForIntervalsContainingInterval:v5];

  if ((*(a1 + 602) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_12:
    v12 = *(a1 + 624);
    *(a1 + 624) = 0;

    v7 = 0;
    v11 = 1;
    *(a1 + 601) = 1;
    goto LABEL_15;
  }

  if ((*(a1 + 601) & 1) == 0)
  {
    v8 = *(a1 + 624);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 624);
      *(a1 + 624) = v9;

      v8 = *(a1 + 624);
    }

    [v8 addObject:v7];
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::queryForInitialStatistics(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    *(a1 + 600) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN55_HDConcreteStatisticsCollectionCalculatorImplementationI20HDStatisticsRelativeI20HDStatisticsDiscreteEE25queryForInitialStatisticsEP32HDStatisticsCollectionCalculatorPU15__autoreleasingP7NSError_block_invoke;
    v9[3] = &unk_278624840;
    v12 = a1;
    v10 = v5;
    v11 = WeakRetained;
    v7 = (*(*a1 + 112))(a1, v9, a3);
    if (v7 && *(a1 + 600) == 1 && !*(a1 + 40))
    {
      _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_configureForStartTime(a1);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Unable to query for initial statistics: no data source available."];
    v7 = 0;
  }

  return v7;
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::encodeInternalsWithEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 encodeBool:*(a1 + 600) forKey:@"needs_config"];
  v13 = v3;
  v27 = &unk_283BF1A08;
  v28 = 0;
  v31 = 0;
  v4 = *(a1 + 112);
  LOBYTE(v31) = 1;
  v29 = v4;
  memset(v30, 0, sizeof(v30));
  statistics::StatisticsEngine::makeCurrentBucket(&v27);
  v14 = &unk_283BE6258;
  memset(v17, 0, 24);
  v26 = 511;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v5 = vextq_s8(*(a1 + 120), *(a1 + 120), 8uLL);
  v6 = *(a1 + 136);
  v24 = *(a1 + 144);
  v25 = *(a1 + 145);
  v23 = *(a1 + 148) == 0;
  v7 = vextq_s8(*(a1 + 160), *(a1 + 160), 8uLL);
  v15 = v5;
  v16 = v7;
  v7.i64[0] = *(a1 + 176);
  v17[3] = v6;
  v17[4] = v7.i64[0];
  v8 = *(a1 + 216);
  if (v8 != *(a1 + 224))
  {
    v32 = &unk_283BEB0A8;
    v37 = 127;
    v34 = vextq_s8(*v8, *v8, 8uLL);
    v33 = v8[1];
    v36 = 0;
    HIBYTE(v35) = v8[2].i8[9];
    LOBYTE(v35) = v8[2].i8[10];
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample&>(&v18, &v32);
  }

  statistics::StatisticsBucket::makeStatistics(&v14);
  HDStatisticsRelative<HDStatisticsDiscrete>::archive(&v32, (a1 + 240));
  statistics::Statistics::operator=(*(&v19 + 1), &v32);
  statistics::Statistics::~Statistics(&v32);
  v9 = *(a1 + 360);
  if (v9 != a1 + 368)
  {
    HDStatisticsRelative<HDStatisticsDiscrete>::archive(&v32, (v9 + 40));
    v10 = *(v9 + 32);
    v39 |= 0x200u;
    v38 = v10;
    PB::PtrVector<statistics::Statistics>::emplace_back<statistics::Statistics&>(v21 + 1, &v32);
  }

  v11 = *(a1 + 184);
  if (v11 != *(a1 + 192))
  {
    v32 = &unk_283BF1F08;
    v34.i32[0] = 3;
    v33 = vextq_s8(*v11, *v11, 8uLL);
    PB::PtrVector<statistics::Interval>::emplace_back<statistics::Interval&>(v17, &v32);
  }

  statistics::StatisticsBucket::operator=(v28, &v14);
  statistics::StatisticsBucket::~StatisticsBucket(&v14);
  v12 = *(a1 + 568);
  if (v12 != *(a1 + 576))
  {
    v32 = &unk_283BEB0A8;
    v37 = 127;
    v34 = vextq_s8(*v12, *v12, 8uLL);
    v33 = v12[1];
    v35 = 0;
    v36 = 0;
    PB::PtrVector<statistics::RawQuantitySample>::emplace_back<statistics::RawQuantitySample>(v30, &v32);
  }

  PB::Writer::Writer(&v32);
  statistics::StatisticsEngine::writeTo(&v27, &v32);
  [v13 encodeBytes:v33.i64[0] length:v32 - v33.i64[0] forKey:@"hdsce_archived_representation"];
  PB::Writer::~Writer(&v32);
  statistics::StatisticsEngine::~StatisticsEngine(&v27);
}

void sub_228EAFCA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  statistics::StatisticsEngine::~StatisticsEngine(&a34);

  _Unwind_Resume(a1);
}

void _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::decodeInternalsWithDecoder(uint64_t j, void *a2)
{
  v33 = a2;
  *(j + 600) = [v33 decodeBoolForKey:@"needs_config"];
  v3 = v33;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::HDStatisticsBucket(v38, 0, -1.79769313e308, 1.79769313e308);
  __p = 0u;
  v40 = 0u;
  v77 = 0;
  PB::Reader::Reader(v76, [v3 decodeBytesForKey:@"hdsce_archived_representation" returnedLength:&v77]);
  v69 = &unk_283BF1A08;
  v70 = 0;
  v74 = 0;
  v72 = 0;
  v73 = 0;
  v75 = 0;
  statistics::StatisticsEngine::readFrom(&v69, v76);
  v37 = v71;
  if (v70)
  {
    v35 = v3;
    v44 = 0;
    memset(v47, 0, sizeof(v47));
    memset(v48, 0, sizeof(v48));
    memset(&v49[8], 0, 66);
    v50 = 0u;
    v51 = 0u;
    LOWORD(v52) = 0;
    v54[1] = 0;
    *v49 = 0;
    v54[0] = 0;
    v53 = v54;
    v55 = 0u;
    v56 = 0u;
    v57 = 1065353216;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0;
    v62 = 1065353216;
    v63 = 0u;
    v64 = 0u;
    v65 = 1065353216;
    v66 = 0u;
    v67 = 0u;
    v68 = 1065353216;
    v41 = vextq_s8(*(v70 + 8), *(v70 + 8), 8uLL);
    v4 = *(v70 + 72);
    v42 = *(v70 + 64);
    LOWORD(v43) = *(v70 + 185);
    v45 = vextq_s8(*(v70 + 24), *(v70 + 24), 8uLL);
    v46 = v4;
    v5 = *(v70 + 80);
    v6 = *(v70 + 88);
    for (i = v70; v5 != v6; ++v5)
    {
      v7 = *v5;
      LOWORD(v80) = 1;
      BYTE8(v80) = 0;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v78 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
      *&v79 = v8;
      *(&v79 + 1) = v9;
      BYTE9(v80) = *(v7 + 41);
      BYTE10(v80) = *(v7 + 40);
      std::vector<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder,std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>::push_back[abi:ne200100](v48, v78.i8);
    }

    v34 = j;
    v10 = i[13];
    if (v10)
    {
      HDStatisticsRelative<HDStatisticsDiscrete>::unarchive(&v78, v10);
      *&v49[64] = v82;
      v50 = v83;
      v51 = v84;
      *v49 = v78;
      *&v49[16] = v79;
      *&v49[32] = v80;
      v52 = v85;
      *&v49[48] = v81;
    }

    v12 = i[17];
    v11 = i[18];
    while (v12 != v11)
    {
      v13 = *v12;
      HDStatisticsRelative<HDStatisticsDiscrete>::unarchive(&v78, *v12);
      v14 = *(v13 + 144);
      v15 = v54[0];
      if (!v54[0])
      {
LABEL_15:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v16 = v15;
          v17 = v15[4];
          if (v17 <= v14)
          {
            break;
          }

          v15 = *v16;
          if (!*v16)
          {
            goto LABEL_15;
          }
        }

        if (v17 >= v14)
        {
          break;
        }

        v15 = v16[1];
        if (!v15)
        {
          goto LABEL_15;
        }
      }

      v18 = v85;
      v20 = v83;
      v19 = v84;
      *(v16 + 13) = v82;
      *(v16 + 15) = v20;
      *(v16 + 17) = v19;
      v22 = v80;
      v21 = v81;
      v23 = v79;
      *(v16 + 5) = v78;
      v16[19] = v18;
      *(v16 + 7) = v23;
      *(v16 + 9) = v22;
      ++v12;
      *(v16 + 11) = v21;
    }

    v24 = i[5];
    v25 = i[6];
    for (j = v34; v24 != v25; v24 += 8)
    {
      v27 = *(*v24 + 8);
      v26 = *(*v24 + 16);
      if (v27 >= v26)
      {
        v28 = *(*v24 + 16);
      }

      else
      {
        v28 = *(*v24 + 8);
      }

      if (v26 < v27)
      {
        v26 = *(*v24 + 8);
      }

      HKIntervalMask<double>::_insertInterval(v47, v28, v26);
    }

    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::operator=(v38, &v41);
    HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::~HDStatisticsBucket(&v41);
    v3 = v35;
  }

  v29 = v72;
  for (k = v73; v29 != k; v29 += 8)
  {
    v31 = *(*v29 + 8);
    v32 = *(*v29 + 16);
    v41 = vextq_s8(*(*v29 + 24), *(*v29 + 24), 8uLL);
    v42 = v31;
    v43 = v32;
    LOWORD(v44) = 1;
    std::vector<HDRawQuantitySample>::push_back[abi:ne200100](&__p, v41.i8);
  }

  statistics::StatisticsEngine::~StatisticsEngine(&v69);

  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsDiscrete>>::operator=((j + 112), &v37);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::~HDStatisticsBucket(v38);
}

void sub_228EB01C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  statistics::StatisticsEngine::~StatisticsEngine(&STACK[0x3E0]);
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsDiscrete>>::~HDStatisticsCollectionEngine(va);

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::HDStatisticsBucket(uint64_t a1, void *a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 257;
  *(a1 + 28) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  objc_initWeak((a1 + 88), a2);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 240) = a1 + 248;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 1065353216;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 360) = 1065353216;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 1065353216;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 1065353216;
  return a1;
}

uint64_t HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsDiscrete>>::~HDStatisticsCollectionEngine(uint64_t a1)
{
  v2 = *(a1 + 456);
  if (v2)
  {
    *(a1 + 464) = v2;
    operator delete(v2);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::~HDStatisticsBucket(a1 + 8);
  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::~HDStatisticsBucket(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::~__hash_table(a1 + 408);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(a1 + 368);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 328);
  v2 = *(a1 + 304);
  if (v2)
  {
    *(a1 + 312) = v2;
    operator delete(v2);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 264);
  std::__tree<long>::destroy(*(a1 + 248));
  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  objc_destroyWeak((a1 + 88));
  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 72) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_configureForStartTime(uint64_t a1)
{
  v29 = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v4 = [v2 dateIntervalContainingDate:v3 index:&v29];

    v5 = [v4 startDate];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
LABEL_5:
    v13 = v9;

    goto LABEL_6;
  }

  v10 = *(a1 + 64);
  v4 = v10;
  if (v10)
  {
    v11 = [v10 startDate];
    [v11 timeIntervalSinceReferenceDate];
    v7 = v12;

    v8 = [v4 endDate];
    [v8 timeIntervalSinceReferenceDate];
    goto LABEL_5;
  }

  v7 = -1.79769313e308;
  v13 = 1.79769313e308;
LABEL_6:

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::HDStatisticsBucket(v22, WeakRetained, v7, v13);

  if (*(a1 + 32) == 1)
  {
    v24 = 1;
  }

  v23 = *(a1 + 56);
  v25 = *(a1 + 24) & 1;
  if (v28 != (a1 + 72))
  {
    std::vector<HKRawInterval<double>>::__assign_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(v28, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 4);
  }

  objc_storeStrong(&v27, *(a1 + 616));
  if (!*(a1 + 40))
  {
    v26 = 0;
  }

  v15 = v29;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::HDStatisticsBucket(v17, v22);
  v18 = v15;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::HDStatisticsBucket(v19, v17);
  __p = 0u;
  v21 = 0u;
  HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsDiscrete>>::operator=((a1 + 112), &v18);

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::~HDStatisticsBucket(v19);
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::~HDStatisticsBucket(v17);
  *(a1 + 600) = 0;
  return HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::~HDStatisticsBucket(v22);
}

void *HDStatisticsCollectionEngine<HDStatisticsRelative<HDStatisticsDiscrete>>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::operator=((a1 + 1), a2 + 8);
  std::vector<HKRawInterval<double>>::__move_assign((a1 + 57), (a2 + 456));
  v4 = *(a2 + 480);
  *(a2 + 480) = 0;
  v5 = a1[60];
  a1[60] = v4;

  return a1;
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::HDStatisticsBucket(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 56);
  v6 = *(a2 + 40);
  *(a1 + 64) = 0;
  *(a1 + 40) = v6;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 64), *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 4);
  objc_copyWeak((a1 + 88), (a2 + 88));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v7 != v8)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 4);
    if (v9 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HDStatisticsBucket<HDStatisticsRelative<HDStatisticsCombined<HDStatisticsDiscrete,HDStatisticsTimeInterval>>>::_SampleRemainder>>(v9);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  v10 = *(a2 + 184);
  v11 = *(a2 + 200);
  v12 = *(a2 + 216);
  v13 = *(a2 + 232);
  v14 = *(a2 + 120);
  v15 = *(a2 + 136);
  v16 = *(a2 + 152);
  v17 = *(a2 + 168);
  *(a1 + 248) = 0;
  v18 = (a1 + 248);
  *(a1 + 240) = a1 + 248;
  *(a1 + 168) = v17;
  *(a1 + 152) = v16;
  *(a1 + 136) = v15;
  *(a1 + 120) = v14;
  *(a1 + 232) = v13;
  *(a1 + 216) = v12;
  *(a1 + 200) = v11;
  *(a1 + 184) = v10;
  *(a1 + 256) = 0;
  v19 = *(a2 + 240);
  if (v19 != (a2 + 248))
  {
    v20 = 0;
    v21 = (a1 + 248);
    while (1)
    {
      v22 = v19[4];
      v23 = (a1 + 248);
      if (v21 == v18)
      {
        goto LABEL_12;
      }

      v24 = v20;
      v25 = (a1 + 248);
      if (v20)
      {
        do
        {
          v23 = v24;
          v24 = v24[1];
        }

        while (v24);
      }

      else
      {
        do
        {
          v23 = v25[2];
          v26 = *v23 == v25;
          v25 = v23;
        }

        while (v26);
      }

      if (v23[4] < v22)
      {
LABEL_12:
        if (v20)
        {
          v27 = v23 + 1;
        }

        else
        {
          v27 = (a1 + 248);
        }

        if (!*v27)
        {
LABEL_23:
          operator new();
        }
      }

      else
      {
        if (!v20)
        {
          goto LABEL_23;
        }

        while (1)
        {
          while (1)
          {
            v28 = v20;
            v29 = v20[4];
            if (v29 <= v22)
            {
              break;
            }

            v20 = *v28;
            if (!*v28)
            {
              goto LABEL_23;
            }
          }

          if (v29 >= v22)
          {
            break;
          }

          v20 = v28[1];
          if (!v20)
          {
            goto LABEL_23;
          }
        }
      }

      v30 = v19[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v19[2];
          v26 = *v31 == v19;
          v19 = v31;
        }

        while (!v26);
      }

      if (v31 == (a2 + 248))
      {
        break;
      }

      v20 = *v18;
      v21 = *(a1 + 240);
      v19 = v31;
    }
  }

  std::unordered_set<long long>::unordered_set(a1 + 264, a2 + 264);
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 304), *(a2 + 304), *(a2 + 312), (*(a2 + 312) - *(a2 + 304)) >> 3);
  std::unordered_map<long long,long long>::unordered_map(a1 + 328, a2 + 328);
  std::unordered_map<NSString * {__strong},long long,HDStringHash,HDStringEqual,std::allocator<std::pair<NSString * const {__strong},long long>>>::unordered_map(a1 + 368, a2 + 368);
  std::unordered_map<long long,NSString * {__strong}>::unordered_map(a1 + 408, a2 + 408);
  return a1;
}

void sub_228EB0A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::~__hash_table(v10 + 368);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 328);
  v13 = *(v10 + 304);
  if (v13)
  {
    *(v10 + 312) = v13;
    operator delete(v13);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 264);
  std::__tree<long>::destroy(*v11);
  v14 = *a9;
  if (*a9)
  {
    *(v10 + 104) = v14;
    operator delete(v14);
  }

  objc_destroyWeak((v10 + 88));
  v15 = *a10;
  if (*a10)
  {
    *(v10 + 72) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;

  v7 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v7;
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 64, (a2 + 64));
  WeakRetained = objc_loadWeakRetained((a2 + 88));
  objc_storeWeak((a1 + 88), WeakRetained);

  v9 = *(a1 + 96);
  if (v9)
  {
    *(a1 + 104) = v9;
    operator delete(v9);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  v10 = *(a2 + 200);
  v11 = *(a2 + 216);
  v12 = *(a2 + 232);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 232) = v12;
  *(a1 + 216) = v11;
  *(a1 + 200) = v10;
  v13 = *(a2 + 120);
  v14 = *(a2 + 136);
  v15 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v15;
  *(a1 + 136) = v14;
  *(a1 + 120) = v13;
  v16 = a1 + 248;
  std::__tree<long>::destroy(*(a1 + 248));
  *(a1 + 240) = *(a2 + 240);
  v18 = *(a2 + 248);
  v19 = *(a2 + 256);
  v17 = (a2 + 248);
  *(a1 + 248) = v18;
  *(a1 + 256) = v19;
  if (v19)
  {
    *(v18 + 16) = v16;
    *(a2 + 240) = v17;
    *v17 = 0;
    *(a2 + 256) = 0;
  }

  else
  {
    *(a1 + 240) = v16;
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 264, (a2 + 264));
  std::vector<HKRawInterval<double>>::__move_assign(a1 + 304, (a2 + 304));
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__move_assign(a1 + 328, (a2 + 328));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__move_assign(a1 + 368, (a2 + 368));
  std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__move_assign(a1 + 408, (a2 + 408));
  return a1;
}

id _HDConcreteStatisticsCollectionCalculatorImplementation<HDStatisticsRelative<HDStatisticsDiscrete>>::_statisticsFromFinishedBucket(uint64_t a1, uint64_t a2)
{
  v100 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  v6 = 40;
  if (v4 != -1.79769313e308)
  {
    v6 = 0;
  }

  v86 = [v5 initWithTimeIntervalSinceReferenceDate:*(a2 + v6)];
  v84 = a2;
  if (*(a2 + 8) == 1.79769313e308)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 48)];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(a2 + 8)];
  }

  v8 = v7;
  v9 = *(a1 + 16);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = *(a1 + 16);
    if ([v10 shouldUseUnderlyingTypeForStatistics])
    {
      v11 = [v10 underlyingSampleType];

      v9 = v11;
    }
  }

  v12 = [objc_alloc(MEMORY[0x277CCDA50]) initWithDataType:v9 startDate:v86 endDate:v8];
  v13 = a1;
  if (*(a1 + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = *(a2 + 304);
      v17 = *(a2 + 312);
      while (v16 != v17)
      {
        v18 = *v16;
        v19 = objc_loadWeakRetained((a1 + 48));
        v20 = [v19 sourceForSourceID:v18];

        if (v20)
        {
          if (([v15 containsObject:v20] & 1) == 0)
          {
            [v15 addObject:v20];
          }
        }

        ++v16;
      }

      v2 = objc_msgSend_copy(v15);
      [v12 _setSources:v2];

      v13 = a1;
    }
  }

  v98[0] = &unk_283BECD98;
  v99 = v98;
  v87 = v12;
  v89 = *(v13 + 24);
  v21 = *(v84 + 200);
  v94 = *(v84 + 184);
  v95 = v21;
  v96 = *(v84 + 216);
  v97 = *(v84 + 232);
  v22 = *(v84 + 136);
  *__p = *(v84 + 120);
  v91 = v22;
  v23 = *(v84 + 168);
  v92 = *(v84 + 152);
  v93 = v23;
  if (!v99)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v24 = (*(*v99 + 48))(v99, __p);
  v26 = *v24;
  v25 = v24[1];
  v27 = v24[2];
  v28 = *(v24 + 3);
  v30 = v24[4];
  v29 = v24[5];
  v31 = v24[6];
  v32 = *(a1 + 24);
  v33 = _HKStatisticsOptionBaselineRelativeQuantities();
  v34 = *(a1 + 16);
  if ((v33 & v32) != 0)
  {
    [v34 _unitForChangeInCanonicalUnit];
  }

  else
  {
    [v34 canonicalUnit];
  }
  v88 = ;
  if ((v89 & 2) != 0)
  {
    v12 = [MEMORY[0x277CCD7E8] quantityWithUnit:v88 doubleValue:v26];
    [v87 setAverageQuantity:v12];
  }

  if ((v89 & 4) != 0)
  {
    v12 = [MEMORY[0x277CCD7E8] quantityWithUnit:v88 doubleValue:v27];
    [v87 setMinimumQuantity:v12];
  }

  if ((v89 & 8) != 0)
  {
    v12 = [MEMORY[0x277CCD7E8] quantityWithUnit:v88 doubleValue:v25];
    [v87 setMaximumQuantity:v12];
  }

  if ((v89 & 0x20) != 0)
  {
    v35 = [MEMORY[0x277CCD7E8] quantityWithUnit:v88 doubleValue:v30];
    [v87 setMostRecentQuantity:v35];

    v12 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v29 end:v31];
    [v87 setMostRecentQuantityDateInterval:v12];
  }

  [v87 setDataCount:v28];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_99;
  }

  if ((v89 & 2) != 0)
  {
    v81 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v81 = 0;
  }

  if ((v89 & 4) != 0)
  {
    v80 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v80 = 0;
  }

  if ((v89 & 8) != 0)
  {
    v78 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v78 = 0;
  }

  if ((v89 & 0x20) != 0)
  {
    v77 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v79 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    v79 = 0;
    v77 = 0;
  }

  v83 = objc_alloc_init(MEMORY[0x277CBEB38]);
  *__p = 0u;
  v91 = 0u;
  LODWORD(v92) = 1065353216;
  v36 = *(v84 + 240);
  if (v36 == (v84 + 248))
  {
    goto LABEL_90;
  }

  do
  {
    v37 = HDStatisticsBucket<HDStatisticsRelative<HDStatisticsDiscrete>>::_bundleIdentifierForSourceID(v84, v36[4]);
    v38 = v37;
    if (!v37)
    {
      goto LABEL_66;
    }

    v39 = [v37 hash];
    v40 = v39;
    v41 = __p[1];
    if (!__p[1])
    {
      goto LABEL_64;
    }

    v42 = vcnt_s8(__p[1]);
    v42.i16[0] = vaddlv_u8(v42);
    v43 = v42.u32[0];
    if (v42.u32[0] > 1uLL)
    {
      v44 = v39;
      if (v39 >= __p[1])
      {
        v44 = v39 % __p[1];
      }
    }

    else
    {
      v44 = (__p[1] - 1) & v39;
    }

    v45 = *(__p[0] + v44);
    if (!v45 || (v46 = *v45) == 0)
    {
LABEL_64:
      operator new();
    }

    v82 = __p[1] - 1;
    while (1)
    {
      v47 = v46[1];
      if (v47 == v40)
      {
        break;
      }

      if (v43 > 1)
      {
        if (v47 >= v41)
        {
          v47 %= v41;
        }
      }

      else
      {
        v47 &= v82;
      }

      if (v47 != v44)
      {
        goto LABEL_64;
      }

LABEL_63:
      v46 = *v46;
      if (!v46)
      {
        goto LABEL_64;
      }
    }

    v2 = v46[2];
    v48 = v38;
    v49 = v48;
    if (v2 != v48)
    {
      v12 = [v2 isEqualToString:v48];

      if (v12)
      {
        goto LABEL_65;
      }

      goto LABEL_63;
    }

LABEL_65:
    v50 = *(v36 + 5);
    v51 = *(v36 + 7);
    v52 = *(v36 + 9);
    *(v46 + 9) = *(v36 + 11);
    *(v46 + 7) = v52;
    *(v46 + 5) = v51;
    *(v46 + 3) = v50;
    v53 = *(v36 + 13);
    v54 = *(v36 + 15);
    v55 = *(v36 + 17);
    v46[17] = v36[19];
    *(v46 + 15) = v55;
    *(v46 + 13) = v54;
    *(v46 + 11) = v53;

LABEL_66:
    v56 = v36[1];
    if (v56)
    {
      do
      {
        v57 = v56;
        v56 = *v56;
      }

      while (v56);
    }

    else
    {
      do
      {
        v57 = v36[2];
        v58 = *v57 == v36;
        v36 = v57;
      }

      while (!v58);
    }

    v36 = v57;
  }

  while (v57 != (v84 + 248));
  v59 = v91;
  if (v91)
  {
    v2 = 0x277CCD000;
    do
    {
      v60 = v59[2];
      if ((v89 & 2) != 0)
      {
        if (!v99)
        {
          goto LABEL_117;
        }

        v61 = [MEMORY[0x277CCD7E8] quantityWithUnit:v88 doubleValue:{*(*(*v99 + 48))(v99, v59 + 3)}];
        [v81 setObject:v61 forKeyedSubscript:v60];
      }

      if ((v89 & 4) != 0)
      {
        if (!v99)
        {
          goto LABEL_117;
        }

        v62 = [MEMORY[0x277CCD7E8] quantityWithUnit:v88 doubleValue:{*((*(*v99 + 48))(v99, v59 + 3) + 16)}];
        [v80 setObject:v62 forKeyedSubscript:v60];
      }

      if ((v89 & 8) != 0)
      {
        if (!v99)
        {
          goto LABEL_117;
        }

        v63 = [MEMORY[0x277CCD7E8] quantityWithUnit:v88 doubleValue:{*((*(*v99 + 48))(v99, v59 + 3) + 8)}];
        [v78 setObject:v63 forKeyedSubscript:v60];
      }

      if ((v89 & 0x20) != 0)
      {
        if (!v99)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v64 = (*(*v99 + 48))(v99, v59 + 3);
        v65 = *(v64 + 40);
        v66 = *(v64 + 48);
        v67 = [MEMORY[0x277CCD7E8] quantityWithUnit:v88 doubleValue:*(v64 + 32)];
        [v77 setObject:v67 forKeyedSubscript:v60];

        v68 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:v65 end:v66];
        [v79 setObject:v68 forKeyedSubscript:v60];
      }

      if (!v99)
      {
LABEL_117:
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{*((*(*v99 + 48))(v99, v59 + 3) + 24)}];
      [v83 setObject:v12 forKeyedSubscript:v60];

      v59 = *v59;
    }

    while (v59);
  }

LABEL_90:
  std::__hash_table<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringHash,HDStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>,HDStringEqual,HDStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},HDStatisticsRelative<HDStatisticsDiscrete>>>>::~__hash_table(__p);
  if ((v89 & 2) != 0)
  {
    [v87 setAverageQuantityBySource:v81];
  }

  if ((v89 & 4) != 0)
  {
    [v87 setMinimumQuantityBySource:v80];
  }

  if ((v89 & 8) != 0)
  {
    [v87 setMaximumQuantityBySource:v78];
  }

  if ((v89 & 0x20) != 0)
  {
    [v87 setMostRecentQuantityBySource:v77];
    [v87 setMostRecentQuantityDateIntervalBySource:v79];
  }

  [v87 setDataCountBySource:v83];

LABEL_99:
  std::__function::__value_func<HDStatisticsDiscrete const& ()(HDStatisticsRelative<HDStatisticsDiscrete> const&)>::~__value_func[abi:ne200100](v98);
  v69 = [*(a1 + 16) _unitForChangeInCanonicalUnit];
  v70 = [v87 averageQuantity];
  if (v70)
  {
    v12 = [v87 averageQuantity];
    if (([v12 isCompatibleWithUnit:v69] & 1) == 0)
    {

      goto LABEL_113;
    }
  }

  v71 = [v87 minimumQuantity];
  if (v71)
  {
    v2 = [v87 minimumQuantity];
    if (![v2 isCompatibleWithUnit:v69])
    {
      v72 = 1;
      goto LABEL_107;
    }
  }

  v73 = [v87 maximumQuantity];
  if (v73)
  {
    v74 = [v87 maximumQuantity];
    v75 = [v74 isCompatibleWithUnit:v69];

    v72 = v75 ^ 1;
    if (v71)
    {
      goto LABEL_107;
    }

LABEL_111:
    if (!v70)
    {
      goto LABEL_112;
    }

LABEL_108:

    if ((v72 & 1) == 0)
    {
      goto LABEL_114;
    }

LABEL_113:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Expected compatibility with %@", v69}];
    goto LABEL_114;
  }

  v72 = 0;
  if (!v71)
  {
    goto LABEL_111;
  }

LABEL_107:

  if (v70)
  {
    goto LABEL_108;
  }

LABEL_112:

  if (v72)
  {
    goto LABEL_113;
  }

LABEL_114:

  return v87;
}