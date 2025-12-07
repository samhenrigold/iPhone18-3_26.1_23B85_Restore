@interface LSApplicationRecord(Enumeration)
+ (id)displayOrderEnumeratorForViableDefaultAppsForCategory:()Enumeration options:;
+ (void)displayOrderEnumeratorForViableDefaultAppsForCategory:()Enumeration options:;
@end

@implementation LSApplicationRecord(Enumeration)

+ (void)displayOrderEnumeratorForViableDefaultAppsForCategory:()Enumeration options:
{
LABEL_1:
  v223 = a2 - 1;
  j = self;
  v215 = a2;
  while (1)
  {
    v10 = j;
    v11 = a2 - j;
    v222 = j;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(j, j + 1, v223, a3);
          return;
        case 4:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(j, j + 1, j + 2, v223, a3);
          return;
        case 5:

          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(j, j + 1, j + 2, j + 3, v223, a3);
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
      v98 = j + 1;
      v100 = j == a2 || v98 == a2;
      if (a5)
      {
        if (v100)
        {
          return;
        }

        v101 = 0;
        v102 = j;
        while (1)
        {
          v103 = v102;
          v102 = v98;
          v105 = *v103;
          v104 = v103[1];
          v106 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v104);
          v107 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v105);
          v108 = v107;
          if (v104)
          {
            v109 = v105 == 0;
          }

          else
          {
            v109 = 1;
          }

          if (v109)
          {

            v110 = v222;
            if (!v104)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v111 = [v106 localizedStandardCompare:v107];

            v110 = v222;
            if (v111 != -1)
            {
              goto LABEL_149;
            }
          }

          v112 = v103[1];
          v103[1] = *v103;
          v113 = v110;
          if (v103 == v110)
          {
            goto LABEL_148;
          }

          v114 = v101;
          while (1)
          {
            v115 = (v110 + v114);
            v116 = *(v110 + v114 - 4);
            v117 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v112);
            v118 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v116);
            v119 = v118;
            if (v112 && v116)
            {
              v120 = [v117 localizedStandardCompare:v118];

              if (v120 != -1)
              {
                v113 = (v222 + v114);
                goto LABEL_147;
              }

              goto LABEL_144;
            }

            if (!v112)
            {
              break;
            }

LABEL_144:
            --v103;
            *v115 = *(v115 - 1);
            v114 -= 4;
            v110 = v222;
            if (!v114)
            {
              v113 = v222;
              goto LABEL_147;
            }
          }

          v113 = v103;
LABEL_147:
          a2 = v215;
LABEL_148:
          *v113 = v112;
LABEL_149:
          v98 = v102 + 1;
          v101 += 4;
          if (v102 + 1 == a2)
          {
            return;
          }
        }
      }

      if (v100)
      {
        return;
      }

      while (1)
      {
        v194 = v10;
        v195 = v98;
        v197 = *v10;
        v196 = v10[1];
        v198 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v196);
        v199 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v197);
        v200 = v199;
        if (v196)
        {
          v201 = v197 == 0;
        }

        else
        {
          v201 = 1;
        }

        if (v201)
        {

          if (!v196)
          {
            goto LABEL_251;
          }
        }

        else
        {
          v202 = [v198 localizedStandardCompare:v199];

          if (v202 != -1)
          {
            goto LABEL_251;
          }
        }

        v203 = *v195;
        do
        {
          while (1)
          {
            v204 = v194;
            v194[1] = *v194;
            v206 = *--v194;
            v205 = v206;
            v207 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v203);
            v208 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v206);
            v209 = v208;
            if (!v203 || !v205)
            {
              break;
            }

            v210 = [v207 localizedStandardCompare:v208];

            if (v210 != -1)
            {
              goto LABEL_250;
            }
          }
        }

        while (v203);
LABEL_250:
        *v204 = v203;
        a2 = v215;
LABEL_251:
        v10 = v195;
        v98 = v195 + 1;
        if (v195 + 1 == a2)
        {
          return;
        }
      }
    }

    if (!a4)
    {
      if (j == a2)
      {
        return;
      }

      v121 = (v11 - 2) >> 1;
      v122 = v121;
      v219 = a2 - j;
      v213 = v121;
      while (1)
      {
        v123 = v122;
        if (v121 < v122)
        {
          goto LABEL_194;
        }

        v124 = (2 * v122) | 1;
        v125 = &v10[v124];
        if (2 * v122 + 2 >= v11)
        {
          goto LABEL_162;
        }

        v126 = *v125;
        v127 = v125[1];
        v128 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, *v125);
        v129 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v127);
        v130 = v129;
        if (v126)
        {
          v131 = v127 == 0;
        }

        else
        {
          v131 = 1;
        }

        if (v131)
        {

          v10 = v222;
          if (v126)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v140 = [v128 localizedStandardCompare:v129];

          v10 = v222;
          if (v140 == -1)
          {
LABEL_161:
            ++v125;
            v124 = 2 * v123 + 2;
          }
        }

LABEL_162:
        v132 = *v125;
        v133 = v10[v123];
        v134 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, *v125);
        v135 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v133);
        v136 = v135;
        if (v132)
        {
          v137 = v133 == 0;
        }

        else
        {
          v137 = 1;
        }

        v121 = v213;
        a2 = v215;
        if (v137)
        {

          v11 = v219;
          v10 = v222;
          if (v132)
          {
            goto LABEL_194;
          }
        }

        else
        {
          v138 = [v134 localizedStandardCompare:v135];

          v11 = v219;
          v10 = v222;
          if (v138 == -1)
          {
            goto LABEL_194;
          }
        }

        v224 = v10[v123];
        v211 = v123;
        v10[v123] = *v125;
        if (v213 < v124)
        {
          v139 = v224;
          goto LABEL_193;
        }

        v141 = v125;
        while (1)
        {
          v142 = 2 * v124;
          v124 = (2 * v124) | 1;
          v125 = &v10[v124];
          v143 = v142 + 2;
          if (v142 + 2 < v11)
          {
            v144 = *v125;
            v145 = v125[1];
            v146 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, *v125);
            v147 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v145);
            v148 = v147;
            if (v144)
            {
              v149 = v145 == 0;
            }

            else
            {
              v149 = 1;
            }

            if (v149)
            {

              v121 = v213;
              if (v144)
              {
                goto LABEL_182;
              }
            }

            else
            {
              v121 = v213;
              v155 = [v146 localizedStandardCompare:v147];

              if (v155 == -1)
              {
LABEL_182:
                ++v125;
                v124 = v143;
              }
            }
          }

          v150 = *v125;
          v151 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, *v125);
          v139 = v224;
          v152 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v224);
          v153 = v152;
          a2 = v215;
          if (v224 && v150)
          {
            v154 = [v151 localizedStandardCompare:v152];

            if (v154 == -1)
            {
              break;
            }

            goto LABEL_188;
          }

          if (v150)
          {
            break;
          }

LABEL_188:
          *v141 = *v125;
          v141 = v125;
          v11 = v219;
          v10 = v222;
          if (v121 < v124)
          {
            goto LABEL_193;
          }
        }

        v125 = v141;
        v11 = v219;
        v10 = v222;
LABEL_193:
        *v125 = v139;
        v123 = v211;
LABEL_194:
        v122 = v123 - 1;
        if (!v123)
        {
LABEL_195:
          v156 = 0;
          v214 = *v10;
          v157 = (v11 - 2) >> 1;
          v158 = v10;
          v216 = a2;
          v220 = v157;
          while (1)
          {
            v159 = v158;
            v160 = &v158[v156];
            v158 = v160 + 1;
            v161 = 2 * v156;
            v156 = (2 * v156) | 1;
            v162 = v161 + 2;
            if (v161 + 2 < v11)
            {
              v225 = v160 + 1;
              v163 = v11;
              v166 = v160[2];
              v165 = v160 + 2;
              v164 = v166;
              v167 = *(v165 - 1);
              v168 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v167);
              v169 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v166);
              v170 = v169;
              if (v167)
              {
                v171 = v164 == 0;
              }

              else
              {
                v171 = 1;
              }

              if (!v171)
              {
                v172 = [v168 localizedStandardCompare:v169];

                v11 = v163;
                v10 = v222;
                v158 = v225;
                v157 = v220;
                if (v172 != -1)
                {
                  goto LABEL_204;
                }

LABEL_203:
                v158 = v165;
                v156 = v162;
                goto LABEL_204;
              }

              v11 = v163;
              v10 = v222;
              v158 = v225;
              v157 = v220;
              if (v167)
              {
                goto LABEL_203;
              }
            }

LABEL_204:
            *v159 = *v158;
            if (v156 > v157)
            {
              a2 = v216 - 1;
              if (v158 == v216 - 1)
              {
                *v158 = v214;
                goto LABEL_230;
              }

              *v158 = *a2;
              *a2 = v214;
              v173 = (v158 - v10 + 4) >> 2;
              v174 = v173 - 2;
              if (v173 < 2)
              {
                goto LABEL_230;
              }

              v221 = v11;
              v175 = v174 >> 1;
              v176 = &v10[v174 >> 1];
              v177 = *v176;
              v178 = *v158;
              v179 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, *v176);
              v180 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v178);
              v181 = v180;
              if (v177)
              {
                v182 = v178 == 0;
              }

              else
              {
                v182 = 1;
              }

              if (v182)
              {

                v11 = v221;
                v10 = v222;
                if (!v177)
                {
                  goto LABEL_230;
                }
              }

              else
              {
                v183 = [v179 localizedStandardCompare:v180];

                v11 = v221;
                v10 = v222;
                if (v183 != -1)
                {
                  goto LABEL_230;
                }
              }

              v217 = v216 - 1;
              v184 = *v158;
              *v158 = *v176;
              if (v174 < 2)
              {
                v185 = v176;
                goto LABEL_229;
              }

              while (2)
              {
                v186 = v175 - 1;
                v175 = (v175 - 1) >> 1;
                v185 = &v10[v175];
                v187 = *v185;
                v188 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, *v185);
                v189 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v184);
                v190 = v189;
                if (v184 && v187)
                {
                  v191 = [v188 localizedStandardCompare:v189];

                  if (v191 != -1)
                  {
                    break;
                  }

                  goto LABEL_226;
                }

                if (v187)
                {
LABEL_226:
                  *v176 = *v185;
                  v176 = v185;
                  v10 = v222;
                  if (v186 <= 1)
                  {
                    goto LABEL_229;
                  }

                  continue;
                }

                break;
              }

              v185 = v176;
              v10 = v222;
LABEL_229:
              *v185 = v184;
              a2 = v217;
              v11 = v221;
LABEL_230:
              if (v11-- <= 2)
              {
                return;
              }

              goto LABEL_195;
            }
          }
        }
      }
    }

    v12 = v11 >> 1;
    v13 = &j[v11 >> 1];
    if (v11 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(&v10[v11 >> 1], v10, v223, a3);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(v10, &v10[v11 >> 1], v223, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(v10 + 1, v13 - 1, a2 - 2, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(v10 + 2, &v10[v12 + 1], a2 - 3, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(v13 - 1, v13, &v10[v12 + 1], a3);
      v14 = *v10;
      *v10 = *v13;
      *v13 = v14;
    }

    --a4;
    if (a5)
    {
      goto LABEL_30;
    }

    v15 = *(v10 - 1);
    v16 = *v10;
    v17 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v15);
    v18 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v16);
    v19 = v18;
    if (!v15 || !v16)
    {

      if (!v15)
      {
        goto LABEL_18;
      }

      goto LABEL_30;
    }

    v20 = [v17 localizedStandardCompare:v18];

    if (v20 == -1)
    {
LABEL_30:
      v32 = 0;
      v33 = *v10;
      while (1)
      {
        v34 = v10[v32 + 1];
        v35 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v34);
        v36 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v33);
        v37 = v36;
        if (!v33 || !v34)
        {
          break;
        }

        v38 = [v35 localizedStandardCompare:v36];

        if (v38 != -1)
        {
          goto LABEL_37;
        }

LABEL_36:
        ++v32;
      }

      if (v34)
      {
        goto LABEL_36;
      }

LABEL_37:
      v218 = a4;
      v39 = &v10[v32];
      v40 = &v10[v32 + 1];
      i = a2 - 1;
      if (v32 * 4)
      {
        while (1)
        {
          v42 = *i;
          v43 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, *i);
          v44 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v33);
          v45 = v44;
          if (v33 && v42)
          {
            v46 = [v43 localizedStandardCompare:v44];

            if (v46 == -1)
            {
              goto LABEL_54;
            }
          }

          else
          {

            if (v42)
            {
              goto LABEL_54;
            }
          }

          --i;
        }
      }

      i = a2;
      if (v40 < a2)
      {
        for (i = a2 - 1; ; --i)
        {
          v47 = *i;
          v48 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, *i);
          v49 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v33);
          v50 = v49;
          if (v33 && v47)
          {
            v51 = [v48 localizedStandardCompare:v49];

            if (v40 >= i || v51 == -1)
            {
              break;
            }
          }

          else
          {

            if (v40 >= i || v47)
            {
              break;
            }
          }
        }
      }

LABEL_54:
      if (v40 >= i)
      {
        goto LABEL_69;
      }

      v52 = v40;
      v53 = i;
      while (2)
      {
        v54 = *v52;
        *v52++ = *v53;
        *v53 = v54;
        while (2)
        {
          v55 = *v52;
          v56 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, *v52);
          v57 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v33);
          v58 = v57;
          if (v33 && v55)
          {
            v59 = [v56 localizedStandardCompare:v57];

            if (v59 != -1)
            {
              goto LABEL_64;
            }

            goto LABEL_62;
          }

          if (v55)
          {
LABEL_62:
            ++v52;
            continue;
          }

          break;
        }

        do
        {
LABEL_64:
          while (1)
          {
            v61 = *--v53;
            v60 = v61;
            v62 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v61);
            v63 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v33);
            v64 = v63;
            if (v33)
            {
              if (v60)
              {
                break;
              }
            }

            if (v60)
            {
              goto LABEL_67;
            }
          }

          v65 = [v62 localizedStandardCompare:v63];
        }

        while (v65 != -1);
LABEL_67:
        if (v52 < v53)
        {
          continue;
        }

        break;
      }

      v39 = v52 - 1;
LABEL_69:
      self = v222;
      if (v39 != v222)
      {
        *v222 = *v39;
      }

      *v39 = v33;
      v66 = v40 >= i;
      a4 = v218;
      if (v66)
      {
        v67 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *>(v222, v39, a3);
        j = v39 + 1;
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *>(v39 + 1, a2, a3))
        {
          a2 = v39;
          if (v67)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v67)
        {
          goto LABEL_75;
        }
      }

      else
      {
LABEL_75:
        std::__introsort<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,false>(v222, v39, a3, v218, a5 & 1);
        a5 = 0;
        j = v39 + 1;
      }
    }

    else
    {
LABEL_18:
      v21 = *v10;
      v22 = *v223;
      v23 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v21);
      v24 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v22);
      v25 = v24;
      if (v21 && v22)
      {
        v26 = [v23 localizedStandardCompare:v24];

        if (v26 == -1)
        {
          goto LABEL_77;
        }
      }

      else
      {

        if (v21)
        {
LABEL_77:
          for (j = v10 + 1; ; ++j)
          {
            v68 = *j;
            v69 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v21);
            v70 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v68);
            v71 = v70;
            if (!v68)
            {
              break;
            }

            v72 = [v69 localizedStandardCompare:v70];

            if (v72 == -1)
            {
              goto LABEL_83;
            }
          }

          goto LABEL_83;
        }
      }

      for (j = v10 + 1; j < a2; ++j)
      {
        v27 = *j;
        v28 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v21);
        v29 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v27);
        v30 = v29;
        if (v21 && v27)
        {
          v31 = [v28 localizedStandardCompare:v29];

          if (v31 == -1)
          {
            break;
          }
        }

        else
        {

          if (v21)
          {
            break;
          }
        }
      }

LABEL_83:
      k = a2;
      if (j >= a2)
      {
        goto LABEL_101;
      }

      for (k = a2 - 1; ; --k)
      {
        v74 = *k;
        v75 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v21);
        v76 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v74);
        v77 = v76;
        if (v21)
        {
          if (v74)
          {
            break;
          }
        }

        if (!v21)
        {
          goto LABEL_101;
        }

LABEL_90:
        ;
      }

      v78 = [v75 localizedStandardCompare:v76];

      if (v78 == -1)
      {
        goto LABEL_90;
      }

LABEL_101:
      while (j < k)
      {
        v79 = *j;
        *j++ = *k;
        *k = v79;
        while (1)
        {
          v80 = *j;
          v81 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v21);
          v82 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v80);
          v83 = v82;
          if (!v21 || !v80)
          {
            break;
          }

          v84 = [v81 localizedStandardCompare:v82];

          if (v84 == -1)
          {
            goto LABEL_99;
          }

LABEL_97:
          ++j;
        }

        if (!v21)
        {
          goto LABEL_97;
        }

        do
        {
LABEL_99:
          while (1)
          {
            v85 = *--k;
            v86 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v21);
            v87 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v85);
            v88 = v87;
            if (v85)
            {
              break;
            }
          }

          v89 = [v86 localizedStandardCompare:v87];
        }

        while (v89 == -1);
      }

      v90 = j - 1;
      if (j - 1 != v10)
      {
        *v10 = *v90;
      }

      a5 = 0;
      *v90 = v21;
    }
  }

  v91 = *(a2 - 1);
  v92 = *v10;
  v93 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v91);
  v94 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v92);
  v95 = v94;
  if (v91 && v92)
  {
    v96 = [v93 localizedStandardCompare:v94];

    v97 = v222;
    if (v96 != -1)
    {
      return;
    }
  }

  else
  {

    v97 = v222;
    if (!v91)
    {
      return;
    }
  }

  v193 = *v97;
  *v97 = *(a2 - 1);
  *(a2 - 1) = v193;
}

+ (id)displayOrderEnumeratorForViableDefaultAppsForCategory:()Enumeration options:
{
  v5 = self + 2;
  v4 = self[2];
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = self + 2;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 != v5 && *(v6 + 8) <= a2)
  {
    v16 = v6[5];
  }

  else
  {
LABEL_9:
    v10 = [LSApplicationRecord alloc];
    v11 = *self;
    v20 = 0;
    v12 = [(LSApplicationRecord *)v10 _initWithContext:v11 bundleID:a2 bundleData:0 error:&v20];
    v13 = v20;
    v14 = v13;
    if (!v12)
    {
      v15 = _LSDefaultLog(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName();
      }
    }

    [v12 localizedName];
    v16 = v18 = a2;
    v19 = v16;
    std::__tree<std::__value_type<unsigned int,NSString * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,NSString * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,NSString * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,NSString * {__strong}>>((v5 - 1), &v18, &v18);
  }

  return v16;
}

@end