void sub_23CBC7388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<operations_research::glop::DoubletonFreeColumnPreprocessor::RestoreInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::glop::DoubletonFreeColumnPreprocessor::RestoreInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 88;
        *(a1 + 16) = v2 - 88;
        v5 = *(v2 - 48);
        *(v2 - 48) = 0;
        if (!v5)
        {
          break;
        }

        MEMORY[0x23EED9440](v5, 0x1000C8077774924);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 88;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::deque<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(a1, &v10);
}

void sub_23CBC779C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v163 = a2[-1].n128_i32[0];
        v164 = a2[-1].n128_i32[1];
        v165 = a2 - 1;
        v166 = v12->n128_i32[1];
        v167 = v163 < v12->n128_u32[0];
        v168 = v164 == v166;
        v169 = v164 < v166;
        if (!v168)
        {
          v167 = v169;
        }

        if (v167)
        {
          v295 = *v12;
          *v12 = *v165;
          result = v295;
          *v165 = v295;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *,0>(v12, v12 + 1, v12 + 2, a2 - 1, result).n128_u64[0];
      return result;
    }

    if (v13 == 5)
    {
      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *,0>(v12, v12 + 1, v12 + 2, v12 + 3, result).n128_u64[0];
      v145 = a2[-1].n128_i32[0];
      v146 = a2[-1].n128_i32[1];
      v147 = a2 - 1;
      v148 = v12[3].n128_i32[1];
      v149 = v145 < v12[3].n128_u32[0];
      v168 = v146 == v148;
      v150 = v146 < v148;
      if (!v168)
      {
        v149 = v150;
      }

      if (v149)
      {
        v291 = v12[3];
        v12[3] = *v147;
        result = v291;
        *v147 = v291;
        v151 = v12[3].n128_i32[1];
        v152 = v12[2].n128_i32[1];
        v153 = v12[3].n128_u32[0] < v12[2].n128_u32[0];
        v168 = v151 == v152;
        v154 = v151 < v152;
        if (!v168)
        {
          v153 = v154;
        }

        if (v153)
        {
          v292 = v12[2];
          v12[2] = v12[3];
          result = v292;
          v12[3] = v292;
          v155 = v12[2].n128_i32[1];
          v156 = v12[1].n128_i32[1];
          v157 = v12[2].n128_u32[0] < v12[1].n128_u32[0];
          v168 = v155 == v156;
          v158 = v155 < v156;
          if (!v168)
          {
            v157 = v158;
          }

          if (v157)
          {
            v293 = v12[1];
            v12[1] = v12[2];
            result = v293;
            v12[2] = v293;
            v159 = v12[1].n128_i32[1];
            v160 = v12->n128_i32[1];
            v161 = v12[1].n128_u32[0] < v12->n128_u32[0];
            v168 = v159 == v160;
            v162 = v159 < v160;
            if (!v168)
            {
              v161 = v162;
            }

            if (v161)
            {
              v294 = *v12;
              *v12 = v12[1];
              result = v294;
              v12[1] = v294;
            }
          }
        }
      }

      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v179 = v12 + 1;
      v181 = v12 == a2 || v179 == a2;
      if (a4)
      {
        if (!v181)
        {
          v182 = 0;
          v183 = v12;
          do
          {
            v185 = v179;
            v186 = v183[1].n128_i32[0];
            v187 = v183[1].n128_i32[1];
            v188 = v183->n128_i32[1];
            v189 = v186 < v183->n128_u32[0];
            v168 = v187 == v188;
            v190 = v187 < v188;
            if (!v168)
            {
              v189 = v190;
            }

            if (v189)
            {
              result.n128_u64[0] = v183[1].n128_u64[1];
              v191 = v182;
              do
              {
                v192 = v12 + v191;
                *(v12 + v191 + 16) = *(v12 + v191);
                if (!v191)
                {
                  v184 = v12;
                  goto LABEL_203;
                }

                v194 = *(v192 - 4);
                v193 = *(v192 - 3);
                v195 = v186 < v194;
                v168 = v187 == v193;
                v196 = v187 < v193;
                if (v168)
                {
                  v196 = v195;
                }

                v191 -= 16;
              }

              while (v196);
              v184 = &v12[1] + v191;
LABEL_203:
              *v184 = v186;
              *(v184 + 4) = v187;
              *(v184 + 8) = result.n128_u64[0];
            }

            v179 = v185 + 1;
            v182 += 16;
            v183 = v185;
          }

          while (&v185[1] != a2);
        }
      }

      else if (!v181)
      {
        do
        {
          v253 = v179;
          v254 = a1[1].n128_i32[0];
          v255 = a1[1].n128_i32[1];
          v256 = a1->n128_i32[1];
          v257 = v254 < a1->n128_u32[0];
          v168 = v255 == v256;
          v258 = v255 < v256;
          if (!v168)
          {
            v257 = v258;
          }

          if (v257)
          {
            result.n128_u64[0] = a1[1].n128_u64[1];
            v259 = v253;
            do
            {
              *v259 = v259[-1];
              v260 = v259[-2].n128_i32[0];
              v261 = v259[-2].n128_i32[1];
              --v259;
              v262 = v254 < v260;
              v168 = v255 == v261;
              v263 = v255 < v261;
              if (!v168)
              {
                v262 = v263;
              }
            }

            while (v262);
            v259->n128_u32[0] = v254;
            v259->n128_u32[1] = v255;
            v259->n128_u64[1] = result.n128_u64[0];
          }

          v179 = v253 + 1;
          a1 = v253;
        }

        while (&v253[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v197 = (v13 - 2) >> 1;
        v198 = v197;
        do
        {
          v199 = v198;
          v200 = 16 * v198;
          if (v197 >= (16 * v198) >> 4)
          {
            v201 = (v200 >> 3) | 1;
            v202 = &v12[v201];
            if ((v200 >> 3) + 2 >= v13)
            {
              v207 = v202->n128_u32[0];
            }

            else
            {
              v203 = v202->n128_i32[1];
              v204 = v202[1].n128_i32[1];
              v168 = v203 == v204;
              v205 = v203 < v204;
              if (v168)
              {
                v205 = v202->n128_u32[0] < v202[1].n128_u32[0];
              }

              v206 = !v205;
              if (v205)
              {
                v207 = v202[1].n128_i32[0];
              }

              else
              {
                v207 = v202->n128_u32[0];
              }

              if (!v206)
              {
                ++v202;
                v201 = (v200 >> 3) + 2;
              }
            }

            v208 = &v12[v200 / 0x10];
            v209 = v202->n128_i32[1];
            v210 = v208->n128_u32[0];
            v211 = v208->n128_i32[1];
            v212 = v207 < v208->n128_u32[0];
            v168 = v209 == v211;
            v213 = v209 < v211;
            if (!v168)
            {
              v212 = v213;
            }

            if (!v212)
            {
              v214 = v208->n128_u64[1];
              do
              {
                v222 = v208;
                v208 = v202;
                *v222 = *v202;
                if (v197 < v201)
                {
                  break;
                }

                v223 = (2 * v201) | 1;
                v202 = &v12[v223];
                v201 = 2 * v201 + 2;
                if (v201 < v13)
                {
                  v216 = v202->n128_u32[0];
                  v215 = v202->n128_i32[1];
                  v217 = v202[1].n128_i32[1];
                  v168 = v215 == v217;
                  v218 = v215 < v217;
                  if (v168)
                  {
                    v218 = v202->n128_u32[0] < v202[1].n128_u32[0];
                  }

                  if (v218)
                  {
                    v216 = v202[1].n128_i32[0];
                    ++v202;
                  }

                  else
                  {
                    v201 = v223;
                  }
                }

                else
                {
                  v216 = v202->n128_u32[0];
                  v201 = v223;
                }

                v219 = v202->n128_i32[1];
                v220 = v216 < v210;
                v168 = v219 == v211;
                v221 = v219 < v211;
                if (v168)
                {
                  v221 = v220;
                }
              }

              while (!v221);
              v208->n128_u32[0] = v210;
              v208->n128_u32[1] = v211;
              v208->n128_u64[1] = v214;
            }
          }

          v198 = v199 - 1;
        }

        while (v199);
        do
        {
          v225 = 0;
          v297 = *v12;
          v226 = (v13 - 2) >> 1;
          v227 = v12;
          do
          {
            while (1)
            {
              v234 = &v227[v225];
              v233 = v234 + 1;
              v235 = (2 * v225) | 1;
              v225 = 2 * v225 + 2;
              if (v225 < v13)
              {
                break;
              }

              v225 = v235;
              *v227 = *v233;
              v227 = v234 + 1;
              if (v235 > v226)
              {
                goto LABEL_255;
              }
            }

            v229 = v234[2].n128_i32[0];
            v228 = v234 + 2;
            v230 = v228[-1].n128_i32[1];
            v231 = v228->n128_i32[1];
            v232 = v228[-1].n128_u32[0] < v229;
            if (v230 != v231)
            {
              v232 = v230 < v231;
            }

            if (v232)
            {
              v233 = v228;
            }

            else
            {
              v225 = v235;
            }

            *v227 = *v233;
            v227 = v233;
          }

          while (v225 <= v226);
LABEL_255:
          if (v233 == --a2)
          {
            result = v297;
            *v233 = v297;
          }

          else
          {
            *v233 = *a2;
            result = v297;
            *a2 = v297;
            v236 = (v233 - v12 + 16) >> 4;
            v224 = v236 < 2;
            v237 = v236 - 2;
            if (!v224)
            {
              v238 = v237 >> 1;
              v239 = &v12[v238];
              v240 = v239->n128_i32[1];
              v241 = v233->n128_u32[0];
              v242 = v233->n128_i32[1];
              v243 = v239->n128_u32[0] < v233->n128_u32[0];
              v168 = v240 == v242;
              v244 = v240 < v242;
              if (!v168)
              {
                v243 = v244;
              }

              if (v243)
              {
                result.n128_u64[0] = v233->n128_u64[1];
                do
                {
                  v245 = v233;
                  v233 = v239;
                  *v245 = *v239;
                  if (!v238)
                  {
                    break;
                  }

                  v238 = (v238 - 1) >> 1;
                  v239 = &v12[v238];
                  v246 = v239->n128_i32[1];
                  v247 = v239->n128_u32[0] < v241;
                  v168 = v246 == v242;
                  v248 = v246 < v242;
                  if (!v168)
                  {
                    v247 = v248;
                  }
                }

                while (v247);
                v233->n128_u32[0] = v241;
                v233->n128_u32[1] = v242;
                v233->n128_u64[1] = result.n128_u64[0];
              }
            }
          }

          v224 = v13-- <= 2;
        }

        while (!v224);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v16 = a2[-1].n128_i32[0];
    v15 = a2[-1].n128_i32[1];
    if (v13 < 0x81)
    {
      v23 = v12->n128_i32[1];
      v24 = v14->n128_i32[1];
      v25 = v12->n128_u32[0] < v14->n128_u32[0];
      v168 = v23 == v24;
      v26 = v23 < v24;
      if (!v168)
      {
        v25 = v26;
      }

      v27 = v16 < v12->n128_u32[0];
      v168 = v15 == v23;
      v28 = v15 < v23;
      if (!v168)
      {
        v27 = v28;
      }

      if (v25)
      {
        if (v27)
        {
          v269 = *v14;
          *v14 = *v9;
          goto LABEL_58;
        }

        v278 = *v14;
        *v14 = *v12;
        result.n128_u64[1] = v278.n128_u64[1];
        *v12 = v278;
        v54 = a2[-1].n128_i32[1];
        v55 = v12->n128_i32[1];
        v56 = a2[-1].n128_u32[0] < v12->n128_u32[0];
        v168 = v54 == v55;
        v57 = v54 < v55;
        if (!v168)
        {
          v56 = v57;
        }

        if (v56)
        {
          v269 = *v12;
          *v12 = *v9;
LABEL_58:
          result.n128_u64[1] = v269.n128_u64[1];
          *v9 = v269;
        }
      }

      else if (v27)
      {
        v272 = *v12;
        *v12 = *v9;
        result.n128_u64[1] = v272.n128_u64[1];
        *v9 = v272;
        v33 = v12->n128_i32[1];
        v34 = v14->n128_i32[1];
        v35 = v12->n128_u32[0] < v14->n128_u32[0];
        v168 = v33 == v34;
        v36 = v33 < v34;
        if (!v168)
        {
          v35 = v36;
        }

        if (v35)
        {
          v273 = *v14;
          *v14 = *v12;
          result.n128_u64[1] = v273.n128_u64[1];
          *v12 = v273;
          --a3;
          v37 = v12->n128_u32[0];
          if (a4)
          {
            goto LABEL_60;
          }

          goto LABEL_101;
        }
      }

      --a3;
      v37 = v12->n128_u32[0];
      if (a4)
      {
        goto LABEL_60;
      }

      goto LABEL_101;
    }

    v17 = v14->n128_i32[1];
    v18 = v12->n128_i32[1];
    v19 = v14->n128_u32[0] < v12->n128_u32[0];
    v168 = v17 == v18;
    v20 = v17 < v18;
    if (!v168)
    {
      v19 = v20;
    }

    v21 = v16 < v14->n128_u32[0];
    v168 = v15 == v17;
    v22 = v15 < v17;
    if (!v168)
    {
      v21 = v22;
    }

    if (v19)
    {
      if (v21)
      {
        v268 = *v12;
        *v12 = *v9;
LABEL_41:
        *v9 = v268;
        goto LABEL_42;
      }

      v274 = *v12;
      *v12 = *v14;
      *v14 = v274;
      v38 = a2[-1].n128_i32[1];
      v39 = v14->n128_i32[1];
      v40 = a2[-1].n128_u32[0] < v14->n128_u32[0];
      v168 = v38 == v39;
      v41 = v38 < v39;
      if (!v168)
      {
        v40 = v41;
      }

      if (v40)
      {
        v268 = *v14;
        *v14 = *v9;
        goto LABEL_41;
      }
    }

    else if (v21)
    {
      v270 = *v14;
      *v14 = *v9;
      *v9 = v270;
      v29 = v14->n128_i32[1];
      v30 = v12->n128_i32[1];
      v31 = v14->n128_u32[0] < v12->n128_u32[0];
      v168 = v29 == v30;
      v32 = v29 < v30;
      if (!v168)
      {
        v31 = v32;
      }

      if (v31)
      {
        v271 = *v12;
        *v12 = *v14;
        *v14 = v271;
      }
    }

LABEL_42:
    v42 = v12 + 1;
    v44 = v14[-1].n128_i32[0];
    v45 = v14[-1].n128_i32[1];
    v43 = v14 - 1;
    v46 = v12[1].n128_i32[1];
    v168 = v45 == v46;
    v47 = v45 < v46;
    if (v168)
    {
      v47 = v44 < v12[1].n128_u32[0];
    }

    v48 = a2[-2].n128_i32[1];
    v49 = a2[-2].n128_u32[0] < v44;
    if (v48 != v45)
    {
      v49 = v48 < v45;
    }

    if (v47)
    {
      if (v49)
      {
        v275 = *v42;
        *v42 = *v10;
LABEL_65:
        *v10 = v275;
        goto LABEL_66;
      }

      v279 = *v42;
      *v42 = *v43;
      *v43 = v279;
      v59 = a2[-2].n128_i32[1];
      v60 = v14[-1].n128_i32[1];
      v61 = a2[-2].n128_u32[0] < v43->n128_u32[0];
      v168 = v59 == v60;
      v62 = v59 < v60;
      if (!v168)
      {
        v61 = v62;
      }

      if (v61)
      {
        v275 = *v43;
        *v43 = *v10;
        goto LABEL_65;
      }
    }

    else if (v49)
    {
      v276 = *v43;
      *v43 = *v10;
      *v10 = v276;
      v50 = v14[-1].n128_i32[1];
      v51 = v12[1].n128_i32[1];
      v52 = v43->n128_u32[0] < v12[1].n128_u32[0];
      v168 = v50 == v51;
      v53 = v50 < v51;
      if (!v168)
      {
        v52 = v53;
      }

      if (v52)
      {
        v277 = *v42;
        *v42 = *v43;
        *v43 = v277;
      }
    }

LABEL_66:
    v63 = v12 + 2;
    v65 = v14[1].n128_i32[0];
    v66 = v14[1].n128_i32[1];
    v64 = v14 + 1;
    v67 = v12[2].n128_i32[1];
    v168 = v66 == v67;
    v68 = v66 < v67;
    if (v168)
    {
      v68 = v65 < v12[2].n128_u32[0];
    }

    v69 = a2[-3].n128_i32[1];
    v70 = a2[-3].n128_u32[0] < v65;
    if (v69 != v66)
    {
      v70 = v69 < v66;
    }

    if (v68)
    {
      if (v70)
      {
        v280 = *v63;
        *v63 = *v11;
LABEL_82:
        *v11 = v280;
        goto LABEL_83;
      }

      v283 = *v63;
      *v63 = *v64;
      *v64 = v283;
      v75 = a2[-3].n128_i32[1];
      v76 = v14[1].n128_i32[1];
      v77 = a2[-3].n128_u32[0] < v64->n128_u32[0];
      v168 = v75 == v76;
      v78 = v75 < v76;
      if (!v168)
      {
        v77 = v78;
      }

      if (v77)
      {
        v280 = *v64;
        *v64 = *v11;
        goto LABEL_82;
      }
    }

    else if (v70)
    {
      v281 = *v64;
      *v64 = *v11;
      *v11 = v281;
      v71 = v14[1].n128_i32[1];
      v72 = v12[2].n128_i32[1];
      v73 = v64->n128_u32[0] < v12[2].n128_u32[0];
      v168 = v71 == v72;
      v74 = v71 < v72;
      if (!v168)
      {
        v73 = v74;
      }

      if (v73)
      {
        v282 = *v63;
        *v63 = *v64;
        *v64 = v282;
      }
    }

LABEL_83:
    v79 = v14->n128_i32[1];
    v80 = v14[-1].n128_i32[1];
    v81 = v14->n128_u32[0] < v43->n128_u32[0];
    v168 = v79 == v80;
    v82 = v79 < v80;
    if (!v168)
    {
      v81 = v82;
    }

    v83 = v14[1].n128_i32[1];
    v84 = v64->n128_u32[0] < v14->n128_u32[0];
    v168 = v83 == v79;
    v85 = v83 < v79;
    if (!v168)
    {
      v84 = v85;
    }

    if (v81)
    {
      if (v84)
      {
        v284 = *v43;
        *v43 = *v64;
LABEL_99:
        *v64 = v284;
        goto LABEL_100;
      }

      v287 = *v43;
      *v43 = *v14;
      *v14 = v287;
      v90 = v14[1].n128_i32[1];
      v91 = v14->n128_i32[1];
      v92 = v64->n128_u32[0] < v14->n128_u32[0];
      v168 = v90 == v91;
      v93 = v90 < v91;
      if (!v168)
      {
        v92 = v93;
      }

      if (v92)
      {
        v284 = *v14;
        *v14 = *v64;
        goto LABEL_99;
      }
    }

    else if (v84)
    {
      v285 = *v14;
      *v14 = *v64;
      *v64 = v285;
      v86 = v14->n128_i32[1];
      v87 = v14[-1].n128_i32[1];
      v88 = v14->n128_u32[0] < v43->n128_u32[0];
      v168 = v86 == v87;
      v89 = v86 < v87;
      if (!v168)
      {
        v88 = v89;
      }

      if (v88)
      {
        v286 = *v43;
        *v43 = *v14;
        *v14 = v286;
      }
    }

LABEL_100:
    v288 = *v12;
    *v12 = *v14;
    result.n128_u64[1] = v288.n128_u64[1];
    *v14 = v288;
    --a3;
    v37 = v12->n128_u32[0];
    if (a4)
    {
LABEL_60:
      v58 = v12->n128_i32[1];
      goto LABEL_104;
    }

LABEL_101:
    v94 = v12[-1].n128_i32[1];
    v58 = v12->n128_i32[1];
    v95 = v12[-1].n128_u32[0] < v37;
    v168 = v94 == v58;
    v96 = v94 < v58;
    if (!v168)
    {
      v95 = v96;
    }

    if (v95)
    {
LABEL_104:
      v97 = 0;
      result.n128_u64[0] = v12->n128_u64[1];
      do
      {
        v98 = v12[v97 + 1].n128_i32[1];
        v168 = v98 == v58;
        v99 = v98 < v58;
        if (v168)
        {
          v99 = v12[v97 + 1].n128_u32[0] < v37;
        }

        ++v97;
      }

      while (v99);
      v100 = &v12[v97];
      v101 = a2;
      if (v97 == 1)
      {
        v101 = a2;
        do
        {
          if (v100 >= v101)
          {
            break;
          }

          v106 = v101[-1].n128_i32[0];
          v107 = v101[-1].n128_i32[1];
          --v101;
          v108 = v106 < v37;
          v168 = v107 == v58;
          v109 = v107 < v58;
          if (!v168)
          {
            v108 = v109;
          }
        }

        while (!v108);
      }

      else
      {
        do
        {
          v102 = v101[-1].n128_i32[0];
          v103 = v101[-1].n128_i32[1];
          --v101;
          v104 = v102 < v37;
          v168 = v103 == v58;
          v105 = v103 < v58;
          if (!v168)
          {
            v104 = v105;
          }
        }

        while (!v104);
      }

      v12 = v100;
      if (v100 < v101)
      {
        v110 = v101;
        do
        {
          v289 = *v12;
          *v12 = *v110;
          *v110 = v289;
          do
          {
            v111 = v12[1].n128_i32[0];
            v112 = v12[1].n128_i32[1];
            ++v12;
            v113 = v111 < v37;
            v168 = v112 == v58;
            v114 = v112 < v58;
            if (!v168)
            {
              v113 = v114;
            }
          }

          while (v113);
          do
          {
            v115 = v110[-1].n128_i32[0];
            v116 = v110[-1].n128_i32[1];
            --v110;
            v117 = v115 < v37;
            v168 = v116 == v58;
            v118 = v116 < v58;
            if (!v168)
            {
              v117 = v118;
            }
          }

          while (!v117);
        }

        while (v12 < v110);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      v12[-1].n128_u32[0] = v37;
      v12[-1].n128_u32[1] = v58;
      v12[-1].n128_u64[1] = result.n128_u64[0];
      if (v100 < v101)
      {
        goto LABEL_133;
      }

      v119 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *>(a1, v12 - 1, result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *>(v12, a2, v120))
      {
        a2 = v12 - 1;
        if ((v119 & 1) == 0)
        {
          goto LABEL_1;
        }

        return result;
      }

      if ((v119 & 1) == 0)
      {
LABEL_133:
        result = std::__introsort<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *,false>(a1, v12 - 1, a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      v121 = a2[-1].n128_i32[1];
      v122 = v37 < a2[-1].n128_u32[0];
      v168 = v58 == v121;
      v123 = v58 < v121;
      if (!v168)
      {
        v122 = v123;
      }

      if (v122)
      {
        do
        {
          v124 = v12[1].n128_i32[0];
          v125 = v12[1].n128_i32[1];
          ++v12;
          v126 = v37 < v124;
          v168 = v58 == v125;
          v127 = v58 < v125;
          if (!v168)
          {
            v126 = v127;
          }
        }

        while (!v126);
      }

      else
      {
        v128 = v12 + 1;
        do
        {
          v12 = v128;
          if (v128 >= a2)
          {
            break;
          }

          v129 = v128->n128_i32[1];
          v130 = v37 < v128->n128_u32[0];
          v168 = v58 == v129;
          v131 = v58 < v129;
          if (v168)
          {
            v131 = v130;
          }

          v128 = v12 + 1;
        }

        while (!v131);
      }

      v132 = a2;
      if (v12 < a2)
      {
        v132 = a2;
        do
        {
          v133 = v132[-1].n128_i32[0];
          v134 = v132[-1].n128_i32[1];
          --v132;
          v135 = v37 < v133;
          v168 = v58 == v134;
          v136 = v58 < v134;
          if (!v168)
          {
            v135 = v136;
          }
        }

        while (v135);
      }

      result.n128_u64[0] = a1->n128_u64[1];
      while (v12 < v132)
      {
        v290 = *v12;
        *v12 = *v132;
        *v132 = v290;
        do
        {
          v137 = v12[1].n128_i32[0];
          v138 = v12[1].n128_i32[1];
          ++v12;
          v139 = v37 < v137;
          v168 = v58 == v138;
          v140 = v58 < v138;
          if (!v168)
          {
            v139 = v140;
          }
        }

        while (!v139);
        do
        {
          v141 = v132[-1].n128_i32[0];
          v142 = v132[-1].n128_i32[1];
          --v132;
          v143 = v37 < v141;
          v168 = v58 == v142;
          v144 = v58 < v142;
          if (!v168)
          {
            v143 = v144;
          }
        }

        while (v143);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      a4 = 0;
      v12[-1].n128_u32[0] = v37;
      v12[-1].n128_u32[1] = v58;
      v12[-1].n128_u64[1] = result.n128_u64[0];
    }
  }

  v170 = v12 + 1;
  v171 = v12[1].n128_i32[0];
  v172 = v12[1].n128_i32[1];
  v173 = v12->n128_i32[1];
  v174 = v171 < v12->n128_u32[0];
  v168 = v172 == v173;
  v175 = v172 < v173;
  if (!v168)
  {
    v174 = v175;
  }

  v177 = a2[-1].n128_i32[1];
  v176 = a2 - 1;
  v178 = a2[-1].n128_u32[0] < v171;
  if (v177 != v172)
  {
    v178 = v177 < v172;
  }

  if (v174)
  {
    if (v178)
    {
      v296 = *v12;
      *v12 = *v176;
    }

    else
    {
      v300 = *v12;
      *v12 = *v170;
      result = v300;
      *v170 = v300;
      v264 = a2[-1].n128_i32[1];
      v265 = v12[1].n128_i32[1];
      v266 = a2[-1].n128_u32[0] < v12[1].n128_u32[0];
      v168 = v264 == v265;
      v267 = v264 < v265;
      if (!v168)
      {
        v266 = v267;
      }

      if (!v266)
      {
        return result;
      }

      v296 = *v170;
      *v170 = *v176;
    }

    result = v296;
    *v176 = v296;
    return result;
  }

  if (v178)
  {
    v298 = *v170;
    *v170 = *v176;
    result = v298;
    *v176 = v298;
    v249 = v12[1].n128_i32[1];
    v250 = v12->n128_i32[1];
    v251 = v12[1].n128_u32[0] < v12->n128_u32[0];
    v168 = v249 == v250;
    v252 = v249 < v250;
    if (!v168)
    {
      v251 = v252;
    }

    if (v251)
    {
      v299 = *v12;
      *v12 = *v170;
      result = v299;
      *v170 = v299;
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = a2->n128_i32[1];
  v6 = a1->n128_i32[1];
  v7 = a2->n128_u32[0] < a1->n128_u32[0];
  v8 = v5 == v6;
  v9 = v5 < v6;
  if (!v8)
  {
    v7 = v9;
  }

  v10 = a3->n128_i32[1];
  v11 = a3->n128_u32[0] < a2->n128_u32[0];
  v8 = v10 == v5;
  v12 = v10 < v5;
  if (!v8)
  {
    v11 = v12;
  }

  if (v7)
  {
    if (v11)
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
    v17 = a3->n128_i32[1];
    v18 = a2->n128_i32[1];
    v19 = a3->n128_u32[0] < a2->n128_u32[0];
    v8 = v17 == v18;
    v20 = v17 < v18;
    if (!v8)
    {
      v19 = v20;
    }

    if (v19)
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_17;
    }
  }

  else if (v11)
  {
    result = *a2;
    *a2 = *a3;
    *a3 = result;
    v13 = a2->n128_i32[1];
    v14 = a1->n128_i32[1];
    v15 = a2->n128_u32[0] < a1->n128_u32[0];
    v8 = v13 == v14;
    v16 = v13 < v14;
    if (!v8)
    {
      v15 = v16;
    }

    if (v15)
    {
      result = *a1;
      *a1 = *a2;
      *a2 = result;
    }
  }

LABEL_18:
  v21 = a4->n128_i32[1];
  v22 = a3->n128_i32[1];
  v23 = a4->n128_u32[0] < a3->n128_u32[0];
  v8 = v21 == v22;
  v24 = v21 < v22;
  if (!v8)
  {
    v23 = v24;
  }

  if (v23)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    v25 = a3->n128_i32[1];
    v26 = a2->n128_i32[1];
    v27 = a3->n128_u32[0] < a2->n128_u32[0];
    v8 = v25 == v26;
    v28 = v25 < v26;
    if (!v8)
    {
      v27 = v28;
    }

    if (v27)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      v29 = a2->n128_i32[1];
      v30 = a1->n128_i32[1];
      v31 = a2->n128_u32[0] < a1->n128_u32[0];
      v8 = v29 == v30;
      v32 = v29 < v30;
      if (!v8)
      {
        v31 = v32;
      }

      if (v31)
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v36 = a1 + 1;
        v37 = a1[1].n128_i32[0];
        v38 = a1[1].n128_i32[1];
        v39 = a1->n128_i32[1];
        v40 = v37 < a1->n128_u32[0];
        v9 = v38 == v39;
        v41 = v38 < v39;
        if (!v9)
        {
          v40 = v41;
        }

        v43 = a2[-1].n128_i32[1];
        v42 = a2 - 1;
        v44 = a2[-1].n128_u32[0] < v37;
        if (v43 != v38)
        {
          v44 = v43 < v38;
        }

        if (!v40)
        {
          if (v44)
          {
            v58 = *v36;
            *v36 = *v42;
            *v42 = v58;
            v59 = a1[1].n128_i32[1];
            v60 = a1->n128_i32[1];
            v61 = a1[1].n128_u32[0] < a1->n128_u32[0];
            v9 = v59 == v60;
            v62 = v59 < v60;
            if (!v9)
            {
              v61 = v62;
            }

            if (v61)
            {
              v63 = *a1;
              *a1 = *v36;
              *v36 = v63;
            }
          }

          return 1;
        }

        if (v44)
        {
          v45 = *a1;
          *a1 = *v42;
        }

        else
        {
          v69 = *a1;
          *a1 = *v36;
          *v36 = v69;
          v70 = a2[-1].n128_i32[1];
          v71 = a1[1].n128_i32[1];
          v72 = a2[-1].n128_u32[0] < a1[1].n128_u32[0];
          v9 = v70 == v71;
          v73 = v70 < v71;
          if (!v9)
          {
            v72 = v73;
          }

          if (!v72)
          {
            return 1;
          }

          v45 = *v36;
          *v36 = *v42;
        }

        *v42 = v45;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        break;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v16 = a2[-1].n128_i32[1];
        v15 = a2 - 1;
        v17 = a1[3].n128_i32[1];
        v18 = a2[-1].n128_u32[0] < a1[3].n128_u32[0];
        v9 = v16 == v17;
        v19 = v16 < v17;
        if (!v9)
        {
          v18 = v19;
        }

        if (v18)
        {
          v20 = a1[3];
          a1[3] = *v15;
          *v15 = v20;
          v21 = a1[3].n128_i32[1];
          v22 = a1[2].n128_i32[1];
          v23 = a1[3].n128_u32[0] < a1[2].n128_u32[0];
          v9 = v21 == v22;
          v24 = v21 < v22;
          if (!v9)
          {
            v23 = v24;
          }

          if (v23)
          {
            v25 = a1[2];
            a1[2] = a1[3];
            a1[3] = v25;
            v26 = a1[2].n128_i32[1];
            v27 = a1[1].n128_i32[1];
            v28 = a1[2].n128_u32[0] < a1[1].n128_u32[0];
            v9 = v26 == v27;
            v29 = v26 < v27;
            if (!v9)
            {
              v28 = v29;
            }

            if (v28)
            {
              v30 = a1[1];
              a1[1] = a1[2];
              a1[2] = v30;
              v31 = a1[1].n128_i32[1];
              v32 = a1->n128_i32[1];
              v33 = a1[1].n128_u32[0] < a1->n128_u32[0];
              v9 = v31 == v32;
              v34 = v31 < v32;
              if (!v9)
              {
                v33 = v34;
              }

              if (v33)
              {
                v35 = *a1;
                *a1 = a1[1];
                a1[1] = v35;
                return 1;
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

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_i32[0];
    v6 = a2[-1].n128_i32[1];
    v4 = a2 - 1;
    v7 = a1->n128_i32[1];
    v8 = v5 < a1->n128_u32[0];
    v9 = v6 == v7;
    v10 = v6 < v7;
    if (!v9)
    {
      v8 = v10;
    }

    if (v8)
    {
      v11 = *a1;
      *a1 = *v4;
      *v4 = v11;
      return 1;
    }

    return 1;
  }

LABEL_31:
  v46 = a1 + 2;
  v47 = a1[2].n128_i32[0];
  v48 = a1 + 1;
  v49 = a1[1].n128_i32[0];
  v50 = a1[1].n128_i32[1];
  v52 = a1->n128_u32[0];
  v51 = a1->n128_i32[1];
  v53 = __SPAIR64__(v50, v49) < a1->n128_u64[0];
  v54 = a1[2].n128_i32[1];
  v55 = v47 < v49;
  v9 = v54 == v50;
  v56 = v54 < v50;
  if (!v9)
  {
    v55 = v56;
  }

  if (!v53)
  {
    if (v55)
    {
      v64 = *v48;
      *v48 = *v46;
      *v46 = v64;
      v65 = a1[1].n128_i32[1];
      v66 = a1[1].n128_u32[0] < v52;
      v9 = v65 == v51;
      v67 = v65 < v51;
      if (!v9)
      {
        v66 = v67;
      }

      if (v66)
      {
        v68 = *a1;
        *a1 = *v48;
        *v48 = v68;
      }
    }

    goto LABEL_58;
  }

  if (v55)
  {
    v57 = *a1;
    *a1 = *v46;
  }

  else
  {
    v74 = *a1;
    *a1 = *v48;
    *v48 = v74;
    v75 = a1[1].n128_i32[1];
    v76 = v47 < a1[1].n128_u32[0];
    if (v54 != v75)
    {
      v76 = v54 < v75;
    }

    if (!v76)
    {
      goto LABEL_58;
    }

    v57 = *v48;
    *v48 = *v46;
  }

  *v46 = v57;
LABEL_58:
  v77 = a1 + 3;
  if (&a1[3] == a2)
  {
LABEL_72:
    v94 = 1;
  }

  else
  {
    v78 = 0;
    v79 = 0;
    while (1)
    {
      v80 = v77->n128_u32[0];
      v81 = v77->n128_i32[1];
      v83 = v46->n128_u32[0];
      v82 = v46->n128_i32[1];
      v84 = v77->n128_u32[0] < v83;
      v9 = v81 == v82;
      v85 = v81 < v82;
      if (v9)
      {
        v85 = v84;
      }

      if (v85)
      {
        break;
      }

LABEL_61:
      v46 = v77;
      v78 += 16;
      if (++v77 == a2)
      {
        goto LABEL_72;
      }
    }

    v86 = v77->n128_u64[1];
    v87 = v78;
    do
    {
      v88 = a1 + v87;
      *(a1 + v87 + 48) = *(a1 + v87 + 32);
      if (v87 == -32)
      {
        a1->n128_u32[0] = v80;
        a1->n128_u32[1] = v81;
        a1->n128_u64[1] = v86;
        if (++v79 != 8)
        {
          goto LABEL_61;
        }

        goto LABEL_71;
      }

      v90 = *(v88 + 4);
      v89 = *(v88 + 5);
      v91 = v80 < v90;
      v9 = v81 == v89;
      v92 = v81 < v89;
      if (v9)
      {
        v92 = v91;
      }

      v87 -= 16;
    }

    while (v92);
    v93 = a1 + v87;
    *(v93 + 12) = v80;
    *(v93 + 13) = v81;
    *(v93 + 7) = v86;
    if (++v79 != 8)
    {
      goto LABEL_61;
    }

LABEL_71:
    v94 = 0;
    LODWORD(v77) = &v77[1] == a2;
  }

  return (v94 | v77) & 1;
}

void std::vector<operations_research::glop::SumWithOneMissing<false>>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (24 * a2)
    {
      v11 = v3 + 24 * a2;
      do
      {
        *v3 = 0;
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        v3 += 24;
      }

      while (v3 != v11);
      v3 = v11;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 24 * v5;
    if (24 * a2)
    {
      v9 = v12 + 24 * a2;
      v10 = 24 * v5;
      do
      {
        *v10 = 0;
        *(v10 + 8) = 0;
        *(v10 + 16) = 0;
        v10 += 24;
      }

      while (v10 != v9);
    }

    else
    {
      v9 = 24 * v5;
    }

    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void ***std::__exception_guard_exceptions<std::vector<std::set<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v6 = v4 - 3;
          std::__tree<int>::destroy((v4 - 3), *(v4 - 2));
          v4 = v6;
        }

        while (v6 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

operations_research::glop::PrimalEdgeNorms *operations_research::glop::PrimalEdgeNorms::PrimalEdgeNorms(operations_research::glop::PrimalEdgeNorms *this, const operations_research::glop::CompactSparseMatrix *a2, const operations_research::glop::VariablesInfo *a3, const operations_research::glop::BasisFactorization *a4)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  operations_research::glop::GlopParameters::GlopParameters(this + 24, 0);
  *(this + 88) = 0;
  operations_research::glop::PrimalEdgeNorms::Stats::Stats((this + 360));
  *(this + 761) = 257;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *(this + 104) = 0;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  return this;
}

uint64_t operations_research::glop::PrimalEdgeNorms::Clear(uint64_t this)
{
  *(this + 800) = *(this + 792);
  *(this + 761) = 257;
  v1 = *(this + 936);
  v2 = *(this + 944);
  if (v1 != v2)
  {
    v3 = *(this + 936);
    if (v2 - 1 == v1)
    {
      goto LABEL_9;
    }

    v4 = (((v2 - 1) - v1) >> 3) + 1;
    v3 = &v1[v4 & 0x3FFFFFFFFFFFFFFELL];
    v5 = v1 + 1;
    v6 = v4 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v7 = *v5;
      **(v5 - 1) = 1;
      *v7 = 1;
      v5 += 2;
      v6 -= 2;
    }

    while (v6);
    if (v4 != (v4 & 0x3FFFFFFFFFFFFFFELL))
    {
LABEL_9:
      do
      {
        v8 = *v3++;
        *v8 = 1;
      }

      while (v3 != v2);
    }
  }

  return this;
}

uint64_t operations_research::glop::PrimalEdgeNorms::NeedsBasisRefactorization(operations_research::glop::PrimalEdgeNorms *this)
{
  if (*(this + 88) == 1)
  {
    return *(this + 761) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t operations_research::glop::PrimalEdgeNorms::GetSquaredNorms(operations_research::glop::PrimalEdgeNorms *this)
{
  v1 = *(this + 88);
  if (v1 == 2)
  {
    if (*(this + 762) == 1)
    {
      if (*(this + 251) == 1)
      {
        v5 = *(this + 99);
        v6 = *(this + 100);
        if (v5 == v6)
        {
          v7 = this;
          operations_research::glop::PrimalEdgeNorms::ComputeMatrixColumnNorms(this);
          this = v7;
          v5 = *(v7 + 99);
          v6 = *(v7 + 100);
        }

        v8 = this;
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 102, v5, v6, (v6 - v5) >> 3);
      }

      else
      {
        v10 = *(*this + 4);
        v11 = 0x3FF0000000000000;
        v8 = this;
        std::vector<double>::assign(this + 102, v10, &v11);
      }

      this = v8;
      *(v8 + 210) = 0;
      *(v8 + 762) = 0;
    }

    return *(this + 102);
  }

  else if (v1 == 1)
  {
    if (*(this + 761) == 1)
    {
      v4 = this;
      operations_research::glop::PrimalEdgeNorms::ComputeEdgeSquaredNorms(this);
      this = v4;
    }

    return *(this + 96);
  }

  else
  {
    if (v1)
    {
      return *(this + 88);
    }

    v2 = *(this + 99);
    if (v2 == *(this + 100))
    {
      v3 = this;
      operations_research::glop::PrimalEdgeNorms::ComputeMatrixColumnNorms(this);
      return *(v3 + 99);
    }
  }

  return v2;
}

void operations_research::glop::PrimalEdgeNorms::ComputeEdgeSquaredNorms(operations_research::glop::PrimalEdgeNorms *this)
{
  v2 = *(*this + 4);
  v20[0] = 0;
  v3 = *(this + 96);
  v4 = (*(this + 97) - v3) >> 3;
  if (v2 <= v4)
  {
    if (v2 < v4)
    {
      *(this + 97) = v3 + 8 * v2;
    }
  }

  else
  {
    std::vector<double>::__append(this + 768, v2 - v4, v20);
  }

  IsRelevantBitRow = operations_research::glop::VariablesInfo::GetIsRelevantBitRow(*(this + 1));
  v6 = *(IsRelevantBitRow + 8);
  v7 = (*(IsRelevantBitRow + 16) - v6) >> 3;
  if (*(IsRelevantBitRow + 16) == v6)
  {
    v10 = 0;
    v11 = 0;
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v8 = *v6;
    if (*v6)
    {
      v9 = 0;
    }

    else
    {
      if (v7 == 1)
      {
        goto LABEL_21;
      }

      v19 = 1;
      v9 = 64;
      while (1)
      {
        v8 = v6[v19];
        if (v8)
        {
          break;
        }

        ++v19;
        v9 += 64;
        if (v7 == v19)
        {
          goto LABEL_21;
        }
      }
    }

    v10 = v9 | __clz(__rbit64(v8));
    v11 = (v8 - 1) & v8;
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  v12 = v7 - 1;
  while (1)
  {
    v13 = *(this + 2);
    v14 = *(*this + 56);
    v15 = *(v14 + 8 * v10);
    v16 = *(*this + 32) + 4 * v15;
    v17 = *(*this + 8) + 8 * v15;
    v20[0] = *(v14 + (((v10 << 32) + 0x100000000) >> 29)) - v15;
    v20[1] = v16;
    v20[2] = v17;
    *(*(this + 96) + 8 * v10) = operations_research::glop::BasisFactorization::RightSolveSquaredNorm(v13, v20) + 1.0;
    v18 = v10 >> 6;
    if (!v11)
    {
      break;
    }

LABEL_12:
    v10 = __clz(__rbit64(v11)) | (v18 << 6);
    v11 &= v11 - 1;
  }

  while (v12 != v18)
  {
    v11 = v6[++v18];
    if (v11)
    {
      goto LABEL_12;
    }
  }

LABEL_21:
  *(this + 761) = 0;
}

void operations_research::glop::PrimalEdgeNorms::ComputeMatrixColumnNorms(operations_research::glop::PrimalEdgeNorms *this)
{
  v2 = *this;
  v3 = *(*this + 4);
  v11[0] = 0;
  v4 = *(this + 99);
  v5 = (*(this + 100) - v4) >> 3;
  if (v3 <= v5)
  {
    if (v3 < v5)
    {
      *(this + 100) = v4 + 8 * v3;
    }
  }

  else
  {
    std::vector<double>::__append(this + 792, v3 - v5, v11);
    v2 = *this;
  }

  if (*(v2 + 4) >= 1)
  {
    v6 = 0;
    v7 = *(v2 + 56);
    do
    {
      v8 = (v7 + 8 * v6);
      v9 = *(v2 + 32) + 4 * *v8;
      v10 = *(v2 + 8) + 8 * *v8;
      v11[0] = v8[1] - *v8;
      v11[1] = v9;
      v11[2] = v10;
      *(*(this + 99) + 8 * v6) = operations_research::glop::SquaredNorm(v11);
      v2 = *this;
      v7 = *(*this + 56);
      *(this + 116) += *(v7 + 8 * v6 + 8) - *(v7 + 8 * v6);
      ++v6;
    }

    while (v6 < *(v2 + 4));
  }
}

BOOL operations_research::glop::PrimalEdgeNorms::TestEnteringEdgeNormPrecision(uint64_t a1, const operations_research::glop::ScatteredColumn *a2, operations_research::glop *this)
{
  if (*(a1 + 761))
  {
    return 1;
  }

  v4 = 8 * a2;
  v5 = *(*(a1 + 768) + v4);
  v6 = operations_research::glop::SquaredNorm(this, a2) + 1.0;
  *(*(a1 + 768) + v4) = v6;
  v7 = sqrt(v6);
  v8 = sqrt(v5);
  operations_research::RatioDistribution::Add(a1 + 600, (v7 - v8) / v7);
  if (fabs((v7 - v8) / v7) > *(a1 + 88))
  {
    if (dword_2810C02B0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_15, dword_2810C02B0))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v22, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/primal_edge_norms.cc", 104);
      v18 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v22, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v18, "Recomputing edge norms: ", 0x18uLL);
      v23 = v7;
      v19 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v18, &v23);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v19, " vs ", 4uLL);
      v23 = v8;
      absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v19, &v23);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v22);
    }

    *(a1 + 761) = 1;
    v9 = *(a1 + 936);
    v10 = *(a1 + 944);
    if (v9 != v10)
    {
      v11 = *(a1 + 936);
      if (v10 - 1 == v9)
      {
        goto LABEL_21;
      }

      v12 = (((v10 - 1) - v9) >> 3) + 1;
      v11 = &v9[v12 & 0x3FFFFFFFFFFFFFFELL];
      v13 = v9 + 1;
      v14 = v12 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        v15 = *v13;
        **(v13 - 1) = 1;
        *v15 = 1;
        v13 += 2;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_21:
        do
        {
          v16 = *v11++;
          *v16 = 1;
        }

        while (v11 != v10);
      }
    }
  }

  if (v5 >= v6 * 0.25)
  {
    return 1;
  }

  if (dword_2810C02C8 < 1)
  {
    return 0;
  }

  result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C02C0, dword_2810C02C8);
  if (result)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v22, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/primal_edge_norms.cc", 111);
    v20 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v22, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, "Imprecise norm, reprice. old=", 0x1DuLL);
    v23 = v5;
    v21 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v20, &v23);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, " new=", 5uLL);
    v23 = v6;
    absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v21, &v23);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v22);
    return 0;
  }

  return result;
}

void sub_23CBC9660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBC9674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

int *operations_research::glop::PrimalEdgeNorms::UpdateBeforeBasisPivot(int *result, int a2, int a3, int a4, char **a5, int **a6)
{
  v10 = result;
  if ((*(result + 761) & 1) == 0)
  {
    operations_research::glop::UpdateRow::ComputeUpdateRow(a6, a4);
    operations_research::glop::PrimalEdgeNorms::ComputeDirectionLeftInverse(v10, v12, a5);
    result = operations_research::glop::PrimalEdgeNorms::UpdateEdgeSquaredNorms(v10, a2, a3, a4, a5, a6);
  }

  if ((*(v10 + 762) & 1) == 0)
  {
    v13 = *(v10 + 840) + 1;
    *(v10 + 840) = v13;
    if (v13 <= *(v10 + 212))
    {
      operations_research::glop::UpdateRow::ComputeUpdateRow(a6, a4);
      v14 = fmax(sqrt(operations_research::glop::PreciseSquaredNorm(a5)) / fabs(*&(*a5)[8 * a4]), 1.0);
      result = operations_research::glop::UpdateRow::GetNonZeroPositions(a6);
      if ((v15 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        v16 = a6[26];
        v17 = *(v10 + 816);
        v18 = 4 * v15;
        do
        {
          v19 = *result++;
          v20 = 8 * v19;
          v21 = fabs(*&v16[v20 / 4]);
          v22 = v14 * v21 * (v14 * v21);
          if (*(v17 + v20) >= v22)
          {
            v22 = *(v17 + v20);
          }

          *(v17 + v20) = v22;
          v18 -= 4;
        }

        while (v18);
      }

      else
      {
        v17 = *(v10 + 816);
      }

      *(v17 + 8 * a3) = v14 * v14;
    }

    else
    {
      *(v10 + 762) = 1;
    }
  }

  return result;
}

void operations_research::glop::PrimalEdgeNorms::ComputeDirectionLeftInverse(uint64_t a1, uint64_t a2, char **a3)
{
  v5 = a3[1];
  v6 = v5 - *a3;
  v7 = (v6 >> 3) * 0.05;
  v8 = (a1 + 848);
  v9 = (a1 + 880);
  v10 = *(a1 + 880);
  v11 = *(a1 + 888);
  if (v10 != v11)
  {
    v12 = (v11 - v10) >> 2;
    if (v7 + v7 > (v12 + ((a3[5] - a3[4]) >> 2)))
    {
      if (v7 <= v12)
      {
        v32 = 0;
        v18 = v6 << 29;
        v19 = (v6 >> 3);
        v20 = *(a1 + 848);
        v21 = (*(a1 + 856) - v20) >> 3;
        if (v19 <= v21)
        {
          if (v19 < v21)
          {
            *(a1 + 856) = &v20[8 * v19];
          }
        }

        else
        {
          std::vector<double>::__append(v8, v19 - v21, &v32);
          v20 = *v8;
        }

        bzero(v20, (v18 >> 29) & 0xFFFFFFFFFFFFFFF8);
        goto LABEL_20;
      }

      v13 = *v8;
      if (v11 - 4 == v10)
      {
        v14 = *(a1 + 880);
      }

      else
      {
        v22 = ((v11 - 4 - v10) >> 2) + 1;
        v14 = &v10[4 * (v22 & 0x7FFFFFFFFFFFFFFELL)];
        v23 = v22 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v24 = *v10;
          v10 += 8;
          v25 = vshrq_n_s64(vshll_n_s32(v24, 0x20uLL), 0x1DuLL);
          *(v13 + v25.i64[0]) = 0;
          *(v13 + v25.i64[1]) = 0;
          v23 -= 2;
        }

        while (v23);
        if (v22 == (v22 & 0x7FFFFFFFFFFFFFFELL))
        {
LABEL_15:
          v32 = 0;
          v27 = (v6 >> 3);
          v28 = (*(a1 + 856) - v13) >> 3;
          if (v27 <= v28)
          {
            if (v27 < v28)
            {
              *(a1 + 856) = v13 + 8 * v27;
            }
          }

          else
          {
            std::vector<double>::__append(a1 + 848, v27 - v28, &v32);
          }

LABEL_20:
          *(a1 + 888) = *(a1 + 880);
          v15 = a3[4];
          v16 = a3[5];
          v17 = (v16 - v15) >> 2;
          if (v17 >= 1)
          {
            v29 = 0;
            v30 = *a3;
            v31 = *v8;
            do
            {
              *(v31 + 8 * *&v15[4 * v29]) = *&v30[8 * *&v15[4 * v29]];
              ++v29;
            }

            while (v17 != v29);
          }

          goto LABEL_23;
        }
      }

      do
      {
        v26 = *v14;
        v14 += 4;
        *(v13 + 8 * v26) = 0;
      }

      while (v14 != v11);
      goto LABEL_15;
    }
  }

  if (v8 != a3)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 848), *a3, v5, v6 >> 3);
    v10 = *v9;
  }

  *(a1 + 888) = v10;
  v15 = a3[4];
  v16 = a3[5];
  v17 = (v16 - v15) >> 2;
LABEL_23:
  if (v9 != a3 + 4 && v7 > v17)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(v9, v15, v16, v17);
  }

  operations_research::glop::BasisFactorization::LeftSolve(*(a1 + 16), v8);
}

uint64_t operations_research::glop::PrimalEdgeNorms::UpdateEdgeSquaredNorms(void *a1, int a2, int a3, int a4, void *a5, operations_research::glop::UpdateRow *this)
{
  v9 = *(*a5 + 8 * a4);
  v10 = a1[96];
  v11 = fmax(*(v10 + 8 * a2) / (v9 * v9), 1.0);
  v12 = *(*a1 + 8);
  v13 = *(*a1 + 32);
  v14 = *(*a1 + 56);
  v15 = a1[106];
  NonZeroPositions = operations_research::glop::UpdateRow::GetNonZeroPositions(this);
  if ((v17 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v18 = 0;
    v19 = &NonZeroPositions[v17];
    v20 = *(this + 26);
    v21 = a1[116];
    do
    {
      v22 = *NonZeroPositions;
      v23 = 8 * v22;
      v24 = *(v14 + v23);
      v25 = *(v14 + (((v22 << 32) + 0x100000000) >> 29));
      v26 = 0.0;
      v27 = v24;
      if (v25 - 3 > v24)
      {
        v28 = 0.0;
        v29 = 0.0;
        v30 = 0.0;
        do
        {
          v26 = v26 + *(v12 + 8 * v27) * *(v15 + 8 * *(v13 + 4 * v27));
          v28 = v28 + *(v12 + 8 * (v27 + 1)) * *(v15 + 8 * *(v13 + 4 * (v27 + 1)));
          v29 = v29 + *(v12 + 8 * (v27 + 2)) * *(v15 + 8 * *(v13 + 4 * (v27 + 2)));
          v30 = v30 + *(v12 + 8 * (v27 + 3)) * *(v15 + 8 * *(v13 + 4 * (v27 + 3)));
          v27 += 4;
        }

        while (v27 < v25 - 3);
        v26 = v26 + v28 + v29 + v30;
      }

      if (v27 < v25)
      {
        v31 = v27;
        v26 = v26 + *(v12 + 8 * v27) * *(v15 + 8 * *(v13 + 4 * v27));
        v32 = v27 + 1;
        if (v32 < v25)
        {
          v26 = v26 + *(v12 + 8 * v32) * *(v15 + 8 * *(v13 + 4 * v32));
          if (v31 + 2 < v25)
          {
            v26 = v26 + *(v12 + 8 * (v31 + 2)) * *(v15 + 8 * *(v13 + 4 * (v31 + 2)));
          }
        }
      }

      v33 = *(v20 + v23);
      v34 = *(v10 + v23) + v33 * (-2.0 / v9 * v26 + v33 * v11);
      *(v10 + v23) = v34;
      v35 = v33 / -v9 * (v33 / -v9) + 1.0;
      if (v34 < v35)
      {
        *(v10 + v23) = v35;
        ++v18;
      }

      v21 += v25 - v24;
      ++NonZeroPositions;
    }

    while (NonZeroPositions != v19);
    a1[116] = v21;
    v36 = v18;
  }

  else
  {
    v36 = 0;
  }

  *(v10 + 8 * a3) = v11;

  return operations_research::IntegerDistribution::Add((a1 + 85), v36);
}

operations_research::glop::PrimalEdgeNorms::Stats *operations_research::glop::PrimalEdgeNorms::Stats::Stats(operations_research::glop::PrimalEdgeNorms::Stats *this)
{
  *(this + 23) = 15;
  strcpy(this, "PrimalEdgeNorms");
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = this + 64;
  operations_research::DistributionStat::DistributionStat(this + 80, "direction_left_inverse_density", 0x1EuLL, this);
  *(this + 10) = &unk_284F44D30;
  operations_research::DistributionStat::DistributionStat(this + 160, "direction_left_inverse_accuracy", 0x1FuLL, this);
  *(this + 20) = &unk_284F44D90;
  operations_research::DistributionStat::DistributionStat(this + 240, "edges_norm_accuracy", 0x13uLL, this);
  *(this + 30) = &unk_284F44D90;
  operations_research::DistributionStat::DistributionStat(this + 320, "lower_bounded_norms", 0x13uLL, this);
  *(this + 40) = &unk_284F44DF0;
  return this;
}

void sub_23CBC9DA8(_Unwind_Exception *a1)
{
  *(v1 + 240) = &unk_284F3A5F8;
  if (*(v1 + 271) < 0)
  {
    operator delete(*(v1 + 248));
    *(v1 + 160) = &unk_284F3A5F8;
    if ((*(v1 + 191) & 0x80000000) == 0)
    {
LABEL_3:
      *(v1 + 80) = &unk_284F3A5F8;
      if ((*(v1 + 111) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    *(v1 + 160) = &unk_284F3A5F8;
    if ((*(v1 + 191) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v1 + 168));
  *(v1 + 80) = &unk_284F3A5F8;
  if ((*(v1 + 111) & 0x80000000) == 0)
  {
LABEL_4:
    operations_research::StatsGroup::~StatsGroup(v1);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*(v1 + 88));
  operations_research::StatsGroup::~StatsGroup(v1);
  _Unwind_Resume(a1);
}

uint64_t operations_research::glop::ReducedCosts::ReducedCosts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  v8 = *a7;
  *(a1 + 56) = *(a7 + 2);
  *(a1 + 40) = v8;
  operations_research::glop::GlopParameters::GlopParameters(a1 + 64, 0);
  operations_research::glop::ReducedCosts::Stats::Stats((a1 + 392));
  *(a1 + 712) = 16843008;
  *(a1 + 716) = 0;
  *(a1 + 718) = 0;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  return a1;
}

double operations_research::glop::ReducedCosts::TestEnteringReducedCostPrecision(operations_research::glop::ReducedCosts *this, int a2, uint64_t *a3)
{
  if (*(this + 714) == 1)
  {
    operations_research::glop::ReducedCosts::ComputeBasicObjective(this);
  }

  v6 = 8 * a2;
  v7 = *(*(this + 96) + v6);
  v8 = *(**(this + 1) + v6) + *(*(this + 93) + v6);
  v9 = v8 - operations_research::glop::ScalarProduct<operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,double>>(this + 90, a3);
  *(*(this + 96) + v6) = v9;
  if ((*(this + 715) & 1) == 0)
  {
    v10 = fabs(v9) > 1.0 ? v9 : 1.0;
    operations_research::RatioDistribution::Add(this + 552, (v7 - v9) / v10);
    if (vabdd_f64(v7, v9) / v10 > *(this + 15))
    {
      if (dword_27E25CEC8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::glop::ReducedCosts::TestEnteringReducedCostPrecision(operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::ScatteredColumn const&)::$_0::operator() const(void)::site, dword_27E25CEC8))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v22, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/reduced_costs.cc", 100);
        v20 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v22, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, "Recomputing reduced costs, value = ", 0x23uLL);
        v23 = v9;
        v21 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v20, &v23);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, " error = ", 9uLL);
        v23 = vabdd_f64(v9, v7);
        absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v21, &v23);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v22);
      }

      if ((*(this + 716) & 1) == 0)
      {
        *(this + 356) = 257;
        *(this + 715) = 1;
        v11 = *(this + 110);
        v12 = *(this + 111);
        if (v11 != v12)
        {
          v13 = *(this + 110);
          if (v12 - 1 == v11)
          {
            goto LABEL_21;
          }

          v14 = (((v12 - 1) - v11) >> 3) + 1;
          v13 = &v11[v14 & 0x3FFFFFFFFFFFFFFELL];
          v15 = v11 + 1;
          v16 = v14 & 0x3FFFFFFFFFFFFFFELL;
          do
          {
            v17 = *v15;
            **(v15 - 1) = 1;
            *v17 = 1;
            v15 += 2;
            v16 -= 2;
          }

          while (v16);
          if (v14 != (v14 & 0x3FFFFFFFFFFFFFFELL))
          {
LABEL_21:
            do
            {
              v18 = *v13++;
              *v18 = 1;
            }

            while (v13 != v12);
          }
        }
      }
    }
  }

  return v9;
}

void sub_23CBCA1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::glop::ReducedCosts::ComputeBasicObjective(operations_research::glop::ReducedCosts *this)
{
  v3 = **this;
  v2 = *(*this + 4);
  v13 = 0;
  v4 = *(this + 93);
  v5 = (*(this + 94) - v4) >> 3;
  if (v2 <= v5)
  {
    if (v2 < v5)
    {
      *(this + 94) = v4 + 8 * v2;
    }
  }

  else
  {
    std::vector<double>::__append(this + 744, v2 - v5, &v13);
  }

  v13 = 0;
  v6 = *(this + 90);
  v7 = (*(this + 91) - v6) >> 3;
  if (v3 <= v7)
  {
    if (v3 < v7)
    {
      *(this + 91) = v6 + 8 * v3;
    }
  }

  else
  {
    std::vector<double>::__append(this + 720, v3 - v7, &v13);
  }

  if (v3 >= 1)
  {
    v8 = **(this + 2);
    v9 = **(this + 1);
    v10 = *(this + 93);
    v11 = *(this + 90);
    do
    {
      v12 = *v8++;
      *v11++ = *(v9 + 8 * v12) + *(v10 + 8 * v12);
      --v3;
    }

    while (v3);
  }

  *(this + 713) = 1;
}

double operations_research::glop::ScalarProduct<operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,double>>(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[4];
  v2 = a2[5];
  if (v3 == v2 || (v4 = v2 - v3, v5 = (v2 - v3) >> 2, v6 = *a2, ((a2[1] - *a2) >> 3) * 0.8 < v5))
  {
    v7 = *a1;
    v8 = (a1[1] - *a1) >> 3;
    v9 = v8 + 3;
    if ((v8 + 3) < 7)
    {
      v10 = 0;
      result = 0.0;
      v12 = (a1[1] - *a1) >> 3;
      if (v8 <= 0)
      {
        return result;
      }

      goto LABEL_25;
    }

    if ((v8 & 0x80000000) == 0)
    {
      v9 = (a1[1] - *a1) >> 3;
    }

    v13 = v9 >> 2;
    v14 = *a2;
    if (v13 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v13;
    }

    if (v13 >= 6 && (v15 - 536870913) > 0xFFFFFFFFDFFFFFFFLL)
    {
      v17 = v15 & 0x3FFFFFFC;
      v18 = 4 * (v15 & 0x3FFFFFFC);
      result = 0.0;
      v21 = 8;
      v22 = v17;
      do
      {
        v23 = 8 * (v21 - 8);
        v24 = (v7 + v23);
        v25 = (v14 + v23);
        v48 = vld4q_f64(v24);
        v49 = vld4q_f64(v25);
        v26 = 8 * v21;
        v27 = (v7 + v26);
        v28 = (v14 + v26);
        v50 = vld4q_f64(v27);
        v51 = vld4q_f64(v28);
        v29 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v48.val[1], v49.val[1]), v49.val[0], v48.val[0]), v49.val[2], v48.val[2]), v49.val[3], v48.val[3]);
        v30 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v50.val[1], v51.val[1]), v51.val[0], v50.val[0]), v51.val[2], v50.val[2]), v51.val[3], v50.val[3]);
        result = result + v29.f64[0] + v29.f64[1] + v30.f64[0] + v30.f64[1];
        v21 += 16;
        v22 -= 4;
      }

      while (v22);
      if (v17 == v15)
      {
LABEL_24:
        v10 = 4 * v15;
        v12 = v8 - v10;
        if (v8 <= v10)
        {
          return result;
        }

LABEL_25:
        v34 = *a2;
        if (v12 <= 0x13 || (v8 - 1 >= v10 ? (v35 = 8 * (v8 - 1) < 8 * v10) : (v35 = 1), v35))
        {
          v41 = v10;
        }

        else
        {
          v41 = v10 + v12 - (v8 & 3);
          do
          {
            v42 = 8 * v10;
            v43 = *(v7 + v42);
            v44 = *(v7 + v42 + 16);
            v45 = (v34 + v42);
            v46 = vmulq_f64(v43, *v45);
            v47 = vmulq_f64(v44, v45[1]);
            result = result + v46.f64[0] + v46.f64[1] + v47.f64[0] + v47.f64[1];
            v10 += 4;
          }

          while (v41 != v10);
          if ((v8 & 3) == 0)
          {
            return result;
          }
        }

        do
        {
          result = result + *(v7 + 8 * v41) * *(v34 + 8 * v41);
          ++v41;
        }

        while (v8 != v41);
        return result;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
      result = 0.0;
    }

    v31 = v15 - v17;
    do
    {
      v32 = *(v7 + 8 * (v18 + 1)) * *(v14 + 8 * (v18 + 1)) + *(v7 + 8 * v18) * *(v14 + 8 * v18) + *(v7 + 8 * (v18 + 2)) * *(v14 + 8 * (v18 + 2));
      v33 = 8 * (v18 + 3);
      v18 += 4;
      result = result + v32 + *(v7 + v33) * *(v14 + v33);
      --v31;
    }

    while (v31);
    goto LABEL_24;
  }

  if (v5 < 1)
  {
    return 0.0;
  }

  v19 = *a1;
  if (v4 == 4)
  {
    v20 = 0;
    result = 0.0;
LABEL_38:
    v38 = (v3 + 4 * v20);
    v39 = v5 - v20;
    do
    {
      v40 = *v38++;
      result = result + *(v19 + 8 * v40) * *(v6 + 8 * v40);
      --v39;
    }

    while (v39);
    return result;
  }

  v20 = v5 & 0x7FFFFFFFFFFFFFFELL;
  v36 = (v3 + 4);
  result = 0.0;
  v37 = v5 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    result = result + *(v19 + 8 * *(v36 - 1)) * *(v6 + 8 * *(v36 - 1)) + *(v19 + 8 * *v36) * *(v6 + 8 * *v36);
    v36 += 2;
    v37 -= 2;
  }

  while (v37);
  if (v5 != v20)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t operations_research::glop::ReducedCosts::MakeReducedCostsPrecise(uint64_t this)
{
  if ((*(this + 716) & 1) == 0)
  {
    *(this + 712) = 257;
    *(this + 715) = 1;
    v1 = *(this + 880);
    v2 = *(this + 888);
    if (v1 != v2)
    {
      v3 = *(this + 880);
      if (v2 - 1 == v1)
      {
        goto LABEL_10;
      }

      v4 = (((v2 - 1) - v1) >> 3) + 1;
      v3 = &v1[v4 & 0x3FFFFFFFFFFFFFFELL];
      v5 = v1 + 1;
      v6 = v4 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        v7 = *v5;
        **(v5 - 1) = 1;
        *v7 = 1;
        v5 += 2;
        v6 -= 2;
      }

      while (v6);
      if (v4 != (v4 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        do
        {
          v8 = *v3++;
          *v8 = 1;
        }

        while (v3 != v2);
      }
    }
  }

  return this;
}

double operations_research::glop::ReducedCosts::ComputeMaximumDualResidual(operations_research::glop::ReducedCosts *this)
{
  v2 = **this;
  if (*(this + 714) == 1)
  {
    operations_research::glop::ReducedCosts::ComputeBasicObjective(this);
  }

  std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 99, *(this + 90), *(this + 91), (*(this + 91) - *(this + 90)) >> 3);
  *(this + 104) = *(this + 103);
  operations_research::glop::BasisFactorization::LeftSolve(*(this + 4), this + 99);
  *(this + 713) = 0;
  if (v2 < 1)
  {
    return 0.0;
  }

  v3 = 0;
  v4 = 4 * v2;
  v5 = 0.0;
  do
  {
    v6 = *(**(this + 2) + v3);
    v7 = vabdd_f64(*(**(this + 1) + 8 * v6) + *(*(this + 93) + 8 * v6), operations_research::glop::CompactSparseMatrix::ColumnScalarProduct(*this, v6, this + 99));
    if (v5 < v7)
    {
      v5 = v7;
    }

    v3 += 4;
  }

  while (v4 != v3);
  return v5;
}

uint64_t operations_research::glop::ReducedCosts::GetDualValues(operations_research::glop::ReducedCosts *this)
{
  if (*(this + 714) == 1)
  {
    operations_research::glop::ReducedCosts::ComputeBasicObjective(this);
  }

  std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 99, *(this + 90), *(this + 91), (*(this + 91) - *(this + 90)) >> 3);
  *(this + 104) = *(this + 103);
  operations_research::glop::BasisFactorization::LeftSolve(*(this + 4), this + 99);
  *(this + 713) = 0;
  return this + 792;
}

uint64_t operations_research::glop::ReducedCosts::ComputeMaximumDualInfeasibility(operations_research::glop::ReducedCosts *this)
{
  if (operations_research::glop::BasisFactorization::IsRefactorized(*(this + 4)))
  {
    *(this + 712) = 0;
  }

  if (*(this + 715) == 1)
  {
    operations_research::glop::ReducedCosts::ComputeReducedCosts(this);
  }

  CanDecreaseBitRow = operations_research::glop::VariablesInfo::GetCanDecreaseBitRow(*(this + 3));
  CanIncreaseBitRow = operations_research::glop::VariablesInfo::GetCanIncreaseBitRow(*(this + 3));
  result = operations_research::glop::VariablesInfo::GetIsRelevantBitRow(*(this + 3));
  v5 = *(result + 8);
  v6 = *(result + 16) - v5;
  v7 = v6 >> 3;
  if (!v6)
  {
    v10 = 0;
    if (!v7)
    {
      return result;
    }

    goto LABEL_9;
  }

  v8 = *v5;
  if (*v5)
  {
    i = 0;
  }

  else
  {
    if (v7 == 1)
    {
      return result;
    }

    v17 = 1;
    for (i = 64; ; i += 64)
    {
      v8 = v5[v17];
      if (v8)
      {
        break;
      }

      if (v7 == ++v17)
      {
        return result;
      }
    }
  }

  v10 = i | __clz(__rbit64(v8));
  v6 = (v8 - 1) & v8;
  if (v7)
  {
LABEL_9:
    v11 = v7 - 1;
    v12 = 0.0;
    while (1)
    {
      v13 = *(*(this + 96) + 8 * v10);
      v14 = v10 >> 6;
      result = *(*(CanIncreaseBitRow + 8) + 8 * v14);
      if ((result & (1 << v10)) != 0 && v13 < 0.0 || (*(*(CanDecreaseBitRow + 8) + 8 * v14) & (1 << v10)) != 0 && v13 > 0.0)
      {
        v15 = fabs(v13);
        if (v12 < v15)
        {
          v12 = v15;
        }
      }

      v16 = v10 >> 6;
      if (!v6)
      {
        break;
      }

LABEL_10:
      v10 = __clz(__rbit64(v6)) | (v16 << 6);
      v6 &= v6 - 1;
    }

    while (v11 != v16)
    {
      v6 = v5[++v16];
      if (v6)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t operations_research::glop::ReducedCosts::GetReducedCosts(operations_research::glop::ReducedCosts *this)
{
  if (operations_research::glop::BasisFactorization::IsRefactorized(*(this + 4)))
  {
    *(this + 712) = 0;
  }

  if (*(this + 715) == 1)
  {
    operations_research::glop::ReducedCosts::ComputeReducedCosts(this);
  }

  return *(this + 96);
}

uint64_t operations_research::glop::ReducedCosts::ComputeMaximumDualInfeasibilityOnNonBoxedVariables(operations_research::glop::ReducedCosts *this)
{
  if (operations_research::glop::BasisFactorization::IsRefactorized(*(this + 4)))
  {
    *(this + 712) = 0;
  }

  if (*(this + 715) == 1)
  {
    operations_research::glop::ReducedCosts::ComputeReducedCosts(this);
  }

  CanDecreaseBitRow = operations_research::glop::VariablesInfo::GetCanDecreaseBitRow(*(this + 3));
  CanIncreaseBitRow = operations_research::glop::VariablesInfo::GetCanIncreaseBitRow(*(this + 3));
  NonBasicBoxedVariables = operations_research::glop::VariablesInfo::GetNonBasicBoxedVariables(*(this + 3));
  result = operations_research::glop::VariablesInfo::GetNotBasicBitRow(*(this + 3));
  v6 = *(result + 8);
  v7 = *(result + 16) - v6;
  v8 = v7 >> 3;
  if (!v7)
  {
    v11 = 0;
    if (!v8)
    {
      return result;
    }

    goto LABEL_9;
  }

  v9 = *v6;
  if (*v6)
  {
    i = 0;
  }

  else
  {
    if (v8 == 1)
    {
      return result;
    }

    v20 = 1;
    for (i = 64; ; i += 64)
    {
      v9 = v6[v20];
      if (v9)
      {
        break;
      }

      if (v8 == ++v20)
      {
        return result;
      }
    }
  }

  v11 = i | __clz(__rbit64(v9));
  v7 = (v9 - 1) & v9;
  if (v8)
  {
LABEL_9:
    v12 = v8 - 1;
    v13 = 0.0;
    while (1)
    {
      v14 = v11;
      v15 = v11 >> 6;
      result = *(*(NonBasicBoxedVariables + 8) + 8 * v15);
      v16 = 1 << v14;
      if ((result & (1 << v14)) == 0)
      {
        if ((v17 = *(*(this + 96) + 8 * v14), result = *(*(CanIncreaseBitRow + 8) + 8 * v15), (result & v16) != 0) && v17 < 0.0 || (*(*(CanDecreaseBitRow + 8) + 8 * v15) & v16) != 0 && v17 > 0.0)
        {
          v18 = fabs(v17);
          if (v13 < v18)
          {
            v13 = v18;
          }
        }
      }

      v19 = v14 >> 6;
      if (!v7)
      {
        break;
      }

LABEL_10:
      v11 = __clz(__rbit64(v7)) | (v19 << 6);
      v7 &= v7 - 1;
    }

    while (v12 != v19)
    {
      v7 = v6[++v19];
      if (v7)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t operations_research::glop::ReducedCosts::ComputeSumOfDualInfeasibilities(operations_research::glop::ReducedCosts *this)
{
  if (operations_research::glop::BasisFactorization::IsRefactorized(*(this + 4)))
  {
    *(this + 712) = 0;
  }

  if (*(this + 715) == 1)
  {
    operations_research::glop::ReducedCosts::ComputeReducedCosts(this);
  }

  CanDecreaseBitRow = operations_research::glop::VariablesInfo::GetCanDecreaseBitRow(*(this + 3));
  CanIncreaseBitRow = operations_research::glop::VariablesInfo::GetCanIncreaseBitRow(*(this + 3));
  result = operations_research::glop::VariablesInfo::GetIsRelevantBitRow(*(this + 3));
  v5 = *(result + 8);
  v6 = *(result + 16) - v5;
  v7 = v6 >> 3;
  if (!v6)
  {
    v10 = 0;
    if (!v7)
    {
      return result;
    }

    goto LABEL_9;
  }

  v8 = *v5;
  if (*v5)
  {
    i = 0;
  }

  else
  {
    if (v7 == 1)
    {
      return result;
    }

    v16 = 1;
    for (i = 64; ; i += 64)
    {
      v8 = v5[v16];
      if (v8)
      {
        break;
      }

      if (v7 == ++v16)
      {
        return result;
      }
    }
  }

  v10 = i | __clz(__rbit64(v8));
  v6 = (v8 - 1) & v8;
  if (v7)
  {
LABEL_9:
    v11 = v7 - 1;
    v12 = 0.0;
    while (1)
    {
      v13 = *(*(this + 96) + 8 * v10);
      v14 = v10 >> 6;
      result = *(*(CanIncreaseBitRow + 8) + 8 * v14);
      if ((result & (1 << v10)) != 0 && v13 < 0.0 || (*(*(CanDecreaseBitRow + 8) + 8 * v14) & (1 << v10)) != 0 && v13 > 0.0)
      {
        v12 = v12 + fabs(v13);
      }

      v15 = v10 >> 6;
      if (!v6)
      {
        break;
      }

LABEL_10:
      v10 = __clz(__rbit64(v6)) | (v15 << 6);
      v6 &= v6 - 1;
    }

    while (v11 != v15)
    {
      v6 = v5[++v15];
      if (v6)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

double operations_research::glop::ReducedCosts::UpdateBeforeBasisPivot(uint64_t a1, int a2, int a3, void *a4, int **a5)
{
  v7 = 8 * a3;
  if (*(a1 + 715) != 1)
  {
    operations_research::glop::ReducedCosts::UpdateReducedCosts(a1, a2, *(**(a1 + 16) + 4 * a3), *(*a4 + 8 * a3), a3, a5);
  }

  result = *(**(a1 + 8) + 8 * a2) + *(*(a1 + 744) + 8 * a2);
  *(*(a1 + 720) + v7) = result;
  *(a1 + 713) = 1;
  return result;
}

int *operations_research::glop::ReducedCosts::UpdateReducedCosts(int *result, int a2, int a3, double a4, uint64_t a5, int **a6)
{
  if ((*(result + 715) & 1) == 0)
  {
    v6 = 8 * a2;
    v7 = *(*(result + 96) + v6);
    if (v7 == 0.0)
    {
      if (dword_27E25CF10 >= 2)
      {
        v18 = result;
        IsEnabled2 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::glop::ReducedCosts::UpdateReducedCosts(operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double,operations_research::glop::UpdateRow *)::$_0::operator() const(void)::site, dword_27E25CF10);
        result = v18;
        if (IsEnabled2)
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v21, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/reduced_costs.cc", 472);
          v20 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v21, 2);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, "Reduced costs didn't change.", 0x1CuLL);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(v21);
          result = v18;
        }
      }

      *(result + 716) = 0;
    }

    else
    {
      *(result + 358) = 0;
      v9 = result;
      operations_research::glop::UpdateRow::ComputeUpdateRow(a6, a5);
      v12 = *(v9 + 768);
      v13 = v7 / -a4;
      v14 = *operations_research::glop::UpdateRow::GetCoefficients(a6);
      result = operations_research::glop::UpdateRow::GetNonZeroPositions(a6);
      if ((v15 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        v16 = 4 * v15;
        do
        {
          v17 = *result++;
          *(v12 + 8 * v17) = *(v12 + 8 * v17) + v13 * *(v14 + 8 * v17);
          v16 -= 4;
        }

        while (v16);
      }

      *(v12 + 8 * a3) = v13;
      *(v12 + v6) = 0;
    }
  }

  return result;
}

double operations_research::glop::ReducedCosts::SetNonBasicVariableCostToZero(uint64_t a1, int a2, void *a3)
{
  v3 = 8 * a2;
  v4 = *(a1 + 768);
  result = *(v4 + v3) - *(**(a1 + 8) + v3);
  *(v4 + v3) = result;
  *a3 = 0;
  return result;
}

uint64_t operations_research::glop::ReducedCosts::ResetForNewObjective(uint64_t this)
{
  *(this + 713) = 65793;
  v1 = *(this + 880);
  v2 = *(this + 888);
  if (v1 != v2)
  {
    v3 = *(this + 880);
    if (v2 - 1 == v1)
    {
      goto LABEL_9;
    }

    v4 = (((v2 - 1) - v1) >> 3) + 1;
    v3 = &v1[v4 & 0x3FFFFFFFFFFFFFFELL];
    v5 = v1 + 1;
    v6 = v4 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v7 = *v5;
      **(v5 - 1) = 1;
      *v7 = 1;
      v5 += 2;
      v6 -= 2;
    }

    while (v6);
    if (v4 != (v4 & 0x3FFFFFFFFFFFFFFELL))
    {
LABEL_9:
      do
      {
        v8 = *v3++;
        *v8 = 1;
      }

      while (v3 != v2);
    }
  }

  return this;
}

void operations_research::glop::ReducedCosts::PerturbCosts(double ***this)
{
  if (dword_27E25CEE0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::glop::ReducedCosts::PerturbCosts(void)::$_0::operator() const(void)::site, dword_27E25CEE0))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/reduced_costs.cc", 242);
    v17 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v18, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, "Perturbing the costs ... ", 0x19uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v18);
  }

  v2 = *(*this + 1);
  v3 = (v2 - **this);
  if (v3 < 1)
  {
    v5 = 0.0;
  }

  else
  {
    v4 = *this[1];
    v5 = 0.0;
    v6 = (v2 - **this);
    do
    {
      v7 = *v4++;
      v8 = fabs(v7);
      if (v5 < v8)
      {
        v5 = v8;
      }

      --v6;
    }

    while (v6);
  }

  v9 = this + 93;
  v18[0] = 0;
  v10 = v2 << 32;
  v11 = this[93];
  v12 = this[94] - v11;
  if (v2 <= v12)
  {
    if (v2 < v12)
    {
      this[94] = &v11[v2];
    }
  }

  else
  {
    std::vector<double>::__append((this + 93), v2 - v12, v18);
    v11 = *v9;
  }

  bzero(v11, v10 >> 29);
  if (v3 >= 1)
  {
    for (i = 0; v3 != i; ++i)
    {
      v15 = (*this[1])[i];
      v14 = (vcvtd_n_f64_u64((this[7])(this[5]), 0x40uLL) + 0.0 + 1.0) * (v5 * *(this + 42) + *(this + 41) * fabs(v15));
      v16 = *(*operations_research::glop::VariablesInfo::GetTypeRow(this[3]) + i);
      if (v16 != 1)
      {
        if (v16 == 3)
        {
          if (v15 > 0.0)
          {
            goto LABEL_16;
          }

          if (v15 >= 0.0)
          {
            continue;
          }
        }

        else if (v16 != 2)
        {
          continue;
        }

        v14 = -v14;
      }

LABEL_16:
      *&(*v9)[i] = v14;
    }
  }
}

double operations_research::glop::ReducedCosts::ShiftCostIfNeeded(uint64_t a1, int a2, int a3)
{
  result = *(a1 + 296) * *(a1 + 872);
  v4 = *(a1 + 768);
  v5 = *(v4 + 8 * a3);
  if (a2)
  {
    if (v5 <= -result)
    {
      return result;
    }

LABEL_6:
    *(*(a1 + 744) + 8 * a3) = *(*(a1 + 744) + 8 * a3) - (result + v5);
    result = -result;
    *(v4 + 8 * a3) = result;
    *(a1 + 718) = 1;
    return result;
  }

  if (v5 < result)
  {
    result = -result;
    goto LABEL_6;
  }

  return result;
}

void operations_research::glop::ReducedCosts::ClearAndRemoveCostShifts(operations_research::glop::ReducedCosts *this)
{
  *(this + 718) = 0;
  v2 = *(*this + 4);
  v15 = 0;
  v3 = v2 << 32;
  v4 = *(this + 94);
  v5 = *(this + 93);
  v6 = (v4 - v5) >> 3;
  if (v2 <= v6)
  {
    if (v2 < v6)
    {
      *(this + 94) = &v5[8 * v2];
    }
  }

  else
  {
    std::vector<double>::__append(this + 744, v2 - v6, &v15);
    v5 = *(this + 93);
  }

  bzero(v5, v3 >> 29);
  *(this + 713) = 65793;
  v7 = *(this + 110);
  v8 = *(this + 111);
  if (v7 != v8)
  {
    v9 = *(this + 110);
    if (v8 - 1 == v7)
    {
      goto LABEL_13;
    }

    v10 = (((v8 - 1) - v7) >> 3) + 1;
    v9 = &v7[v10 & 0x3FFFFFFFFFFFFFFELL];
    v11 = v7 + 1;
    v12 = v10 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v13 = *v11;
      **(v11 - 1) = 1;
      *v13 = 1;
      v11 += 2;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x3FFFFFFFFFFFFFFELL))
    {
LABEL_13:
      do
      {
        v14 = *v9++;
        *v14 = 1;
      }

      while (v9 != v8);
    }
  }
}

uint64_t operations_research::glop::ReducedCosts::GetFullReducedCosts(operations_research::glop::ReducedCosts *this)
{
  if ((*(this + 717) & 1) == 0)
  {
    *(this + 715) = 1;
    v2 = *(this + 110);
    v3 = *(this + 111);
    if (v2 != v3)
    {
      v4 = *(this + 110);
      if (v3 - 1 == v2)
      {
        goto LABEL_15;
      }

      v5 = (((v3 - 1) - v2) >> 3) + 1;
      v4 = &v2[v5 & 0x3FFFFFFFFFFFFFFELL];
      v6 = v2 + 1;
      v7 = v5 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        v8 = *v6;
        **(v6 - 1) = 1;
        *v8 = 1;
        v6 += 2;
        v7 -= 2;
      }

      while (v7);
      if (v5 != (v5 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_15:
        do
        {
          v9 = *v4++;
          *v9 = 1;
        }

        while (v4 != v3);
      }
    }
  }

  if (operations_research::glop::BasisFactorization::IsRefactorized(*(this + 4)))
  {
    *(this + 712) = 0;
  }

  if (*(this + 715) == 1)
  {
    operations_research::glop::ReducedCosts::ComputeReducedCosts(this);
  }

  return *(this + 96);
}

void operations_research::glop::ReducedCosts::ComputeReducedCosts(operations_research::glop::ReducedCosts *this)
{
  if (*(this + 713) == 1)
  {
    if (*(this + 714) == 1)
    {
      operations_research::glop::ReducedCosts::ComputeBasicObjective(this);
    }

    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 99, *(this + 90), *(this + 91), (*(this + 91) - *(this + 90)) >> 3);
    *(this + 104) = *(this + 103);
    operations_research::glop::BasisFactorization::LeftSolve(*(this + 4), this + 99);
    *(this + 713) = 0;
  }

  v2 = *(*this + 4);
  v14[0] = 0;
  v3 = *(this + 96);
  v4 = (*(this + 97) - v3) >> 3;
  if (v2 <= v4)
  {
    if (v2 < v4)
    {
      *(this + 97) = v3 + 8 * v2;
    }
  }

  else
  {
    std::vector<double>::__append(this + 768, v2 - v4, v14);
  }

  IsBasicBitRow = operations_research::glop::VariablesInfo::GetIsBasicBitRow(*(this + 3));
  if (v2 < 1)
  {
    v8 = 0.0;
  }

  else
  {
    v6 = IsBasicBitRow;
    v7 = 0;
    v8 = 0.0;
    do
    {
      v9 = *(**(this + 1) + 8 * v7) + *(*(this + 93) + 8 * v7);
      v10 = operations_research::glop::CompactSparseMatrix::ColumnScalarProduct(*this, v7, this + 99);
      *(*(this + 96) + 8 * v7) = v9 - v10;
      v11 = vabdd_f64(v9, v10);
      if (v8 >= v11)
      {
        v11 = v8;
      }

      if ((*(*(v6 + 8) + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7))
      {
        v8 = v11;
      }

      ++v7;
    }

    while (v2 != v7);
  }

  *(this + 113) = *(this + 113) + ((*(*this + 16) - *(*this + 8)) >> 3) * 0.000000002;
  *(this + 715) = 0;
  *(this + 717) = 1;
  *(this + 716) = operations_research::glop::BasisFactorization::IsRefactorized(*(this + 4));
  v12 = *(this + 18);
  *(this + 109) = v12;
  if (v8 > v12)
  {
    if (dword_27E25CEF8 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::glop::ReducedCosts::ComputeReducedCosts(void)::$_0::operator() const(void)::site, dword_27E25CEF8))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v14, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/reduced_costs.cc", 434);
      v13 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v14, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, "Changing dual_feasibility_tolerance to ", 0x27uLL);
      v15 = v8;
      absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v13, &v15);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v14);
    }

    *(this + 109) = v8;
  }
}

void sub_23CBCB568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL operations_research::glop::ReducedCosts::IsValidPrimalEnteringCandidate(uint64_t a1, int a2)
{
  v4 = *(*(a1 + 768) + 8 * a2);
  CanDecreaseBitRow = operations_research::glop::VariablesInfo::GetCanDecreaseBitRow(*(a1 + 24));
  CanIncreaseBitRow = operations_research::glop::VariablesInfo::GetCanIncreaseBitRow(*(a1 + 24));
  v7 = *(a1 + 872);
  v8 = a2 >> 6;
  v9 = *(*(CanIncreaseBitRow + 8) + 8 * v8);
  result = 1;
  if ((v9 & (1 << a2)) == 0 || v4 >= -v7)
  {
    v12 = (*(*(CanDecreaseBitRow + 8) + 8 * v8) & (1 << a2)) != 0;
    return v4 > v7 && v12;
  }

  return result;
}

uint64_t operations_research::glop::PrimalPrices::PrimalPrices(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 1;
  v9 = *a2;
  v10 = *(a2 + 2);
  *(a1 + 32) = 0u;
  *(a1 + 24) = v10;
  *(a1 + 8) = v9;
  *(a1 + 88) = 0;
  *(a1 + 120) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::QueryStats::QueryStats(a1 + 144);
  *(a1 + 488) = a3;
  *(a1 + 496) = a4;
  *(a1 + 504) = a5;
  v12 = a1;
  std::vector<BOOL *>::push_back[abi:ne200100](a5 + 880, &v12);
  v12 = a1;
  std::vector<BOOL *>::push_back[abi:ne200100](a4 + 936, &v12);
  return a1;
}

void sub_23CBCB6E0(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[16] = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      v8 = v1[7];
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[12] = v7;
  operator delete(v7);
  v8 = v1[7];
  if (!v8)
  {
LABEL_4:
    v9 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  v1[8] = v8;
  operator delete(v8);
  v9 = *v2;
  if (!*v2)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  v1[5] = v9;
  operator delete(v9);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::PrimalPrices::UpdateBeforeBasisPivot(_BYTE *result, int a2, operations_research::glop::UpdateRow *this)
{
  if ((*result & 1) == 0)
  {
    v6[0] = operations_research::glop::UpdateRow::GetNonZeroPositions(this);
    v6[1] = v5;
    operations_research::glop::PrimalPrices::UpdateEnteringCandidates<false,absl::lts_20240722::Span<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> const>>(result, v6);
    *(*(result + 11) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << a2);
  }
}

void operations_research::glop::PrimalPrices::UpdateEnteringCandidates<false,absl::lts_20240722::Span<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> const>>(uint64_t a1, int **a2)
{
  v4 = *(*(a1 + 504) + 872);
  v5 = *(operations_research::glop::VariablesInfo::GetCanDecreaseBitRow(*(a1 + 488)) + 8);
  v6 = *(operations_research::glop::VariablesInfo::GetCanIncreaseBitRow(*(a1 + 488)) + 8);
  SquaredNorms = operations_research::glop::PrimalEdgeNorms::GetSquaredNorms(*(a1 + 496));
  v8 = *(a1 + 504);
  if (operations_research::glop::BasisFactorization::IsRefactorized(*(v8 + 32)))
  {
    *(v8 + 712) = 0;
    if (*(v8 + 715) != 1)
    {
LABEL_3:
      v9 = a2[1];
      if ((v9 & 0x3FFFFFFFFFFFFFFFLL) == 0)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if (*(v8 + 715) != 1)
  {
    goto LABEL_3;
  }

  operations_research::glop::ReducedCosts::ComputeReducedCosts(v8);
  v9 = a2[1];
  if ((v9 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    return;
  }

LABEL_7:
  v10 = *(v8 + 768);
  v11 = *a2;
  v12 = 4 * v9;
  do
  {
    v13 = *v11;
    v14 = *(v10 + 8 * *v11);
    v15 = *v11 & 0x3F;
    if ((((v14 < -v4) << v13) & *(v6 + 8 * (v13 >> 6))) == (((v14 > v4) << v13) & *(v5 + 8 * (v13 >> 6))))
    {
      *(*(a1 + 88) + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v15);
    }

    else
    {
      v16 = *(SquaredNorms + 8 * v13);
      *(*(a1 + 88) + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = v14 * v14 / v16;
      *(*(a1 + 56) + 8 * v13) = v17;
      if (*(a1 + 112) <= v17)
      {
        operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::UpdateTopK(a1 + 8, v13, v17);
      }
    }

    ++v11;
    v12 -= 4;
  }

  while (v12);
}

void operations_research::glop::PrimalPrices::RecomputePriceAt(uint64_t a1, int a2)
{
  if ((*a1 & 1) == 0)
  {
    v3 = *(a1 + 504);
    v5 = 8 * a2;
    v6 = *(*(v3 + 768) + v5);
    v7 = a2;
    CanDecreaseBitRow = operations_research::glop::VariablesInfo::GetCanDecreaseBitRow(*(v3 + 24));
    CanIncreaseBitRow = operations_research::glop::VariablesInfo::GetCanIncreaseBitRow(*(v3 + 24));
    v10 = *(v3 + 872);
    v11 = a2 >> 6;
    v12 = 1 << v7;
    v13 = (*(*(CanIncreaseBitRow + 8) + 8 * v11) & v12) != 0 && v6 < -v10;
    if (!v13 && ((*(*(CanDecreaseBitRow + 8) + 8 * v11) & v12) != 0 ? (v14 = v6 <= v10) : (v14 = 1), v14))
    {
      *(*(a1 + 88) + 8 * v11) &= ~v12;
    }

    else
    {
      SquaredNorms = operations_research::glop::PrimalEdgeNorms::GetSquaredNorms(*(a1 + 496));
      v16 = *(a1 + 504);
      if (operations_research::glop::BasisFactorization::IsRefactorized(*(v16 + 32)))
      {
        *(v16 + 712) = 0;
      }

      if (*(v16 + 715) == 1)
      {
        operations_research::glop::ReducedCosts::ComputeReducedCosts(v16);
      }

      v17 = *(*(v16 + 768) + v5) * *(*(v16 + 768) + v5);
      v18 = *(SquaredNorms + v5);
      *(*(a1 + 88) + 8 * v11) |= v12;
      v19 = v17 / v18;
      *(*(a1 + 56) + v5) = v19;
      if (*(a1 + 112) <= v19)
      {

        operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::UpdateTopK(a1 + 8, a2, v19);
      }
    }
  }
}

uint64_t operations_research::glop::PrimalPrices::SetAndDebugCheckThatColumnIsDualFeasible(uint64_t result, int a2)
{
  if ((*result & 1) == 0)
  {
    *(*(result + 88) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << a2);
  }

  return result;
}

uint64_t operations_research::glop::PrimalPrices::GetBestEnteringColumn(operations_research::glop::PrimalPrices *this)
{
  if (*this == 1)
  {
    v2 = *(this + 63);
    if (operations_research::glop::BasisFactorization::IsRefactorized(*(v2 + 32)))
    {
      *(v2 + 712) = 0;
    }

    if (*(v2 + 715) == 1)
    {
      operations_research::glop::ReducedCosts::ComputeReducedCosts(v2);
    }

    v3 = *(v2 + 776) - *(v2 + 768);
    v4 = v3 >> 3;
    v5 = *(this + 7);
    *(this + 16) = *(this + 15);
    *(this + 14) = 0xFFF0000000000000;
    v6 = (v3 >> 3);
    v7 = (*(this + 8) - v5) >> 3;
    if (v6 <= v7)
    {
      if (v6 < v7)
      {
        *(this + 8) = v5 + 8 * v6;
      }
    }

    else
    {
      std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(this + 56, v6 - v7);
    }

    v8 = v4 & ~(v4 >> 31);
    v9 = *(this + 11);
    *(this + 20) = v8;
    v10 = (v8 + 63) >> 6;
    v11 = *(this + 12) - v9;
    v12 = v11 >> 3;
    v16 = 0;
    if (v10 <= v11 >> 3)
    {
      if (v10 < v11 >> 3)
      {
        *(this + 12) = &v9[8 * v10];
      }
    }

    else
    {
      std::vector<unsigned long long>::__append(this + 88, v10 - (v11 >> 3), &v16);
      v9 = *(this + 11);
    }

    if (v10 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    bzero(v9, 8 * v13);
    IsRelevantBitRow = operations_research::glop::VariablesInfo::GetIsRelevantBitRow(*(this + 61));
    operations_research::glop::PrimalPrices::UpdateEnteringCandidates<true,operations_research::Bitset64<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>(this, IsRelevantBitRow);
    *this = 0;
  }

  return operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::GetMaximum(this + 1);
}

void operations_research::glop::PrimalPrices::UpdateEnteringCandidates<true,operations_research::Bitset64<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 504) + 872);
  v5 = *(operations_research::glop::VariablesInfo::GetCanDecreaseBitRow(*(a1 + 488)) + 8);
  v6 = *(operations_research::glop::VariablesInfo::GetCanIncreaseBitRow(*(a1 + 488)) + 8);
  SquaredNorms = operations_research::glop::PrimalEdgeNorms::GetSquaredNorms(*(a1 + 496));
  v8 = *(a1 + 504);
  if (operations_research::glop::BasisFactorization::IsRefactorized(*(v8 + 32)))
  {
    *(v8 + 712) = 0;
    if (*(v8 + 715) != 1)
    {
LABEL_3:
      v9 = *(v8 + 768);
      v10 = *(a2 + 8);
      v11 = (*(a2 + 16) - v10) >> 3;
      if (*(a2 + 16) != v10)
      {
        goto LABEL_4;
      }

LABEL_10:
      v14 = 0;
      v15 = 0;
      if (!v11)
      {
        return;
      }

LABEL_11:
      v16 = v11 - 1;
      while (1)
      {
        v18 = v14;
        v19 = *(v9 + 8 * v14);
        if ((((v19 < -v4) << v18) & *(v6 + 8 * (v18 >> 6))) != (((v19 > v4) << v18) & *(v5 + 8 * (v18 >> 6))))
        {
          v20 = *(SquaredNorms + 8 * v14);
          *(*(a1 + 88) + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v14 & 0x3F);
          v21 = v19 * v19 / v20;
          *(*(a1 + 56) + 8 * v14) = v21;
          if (*(a1 + 112) <= v21)
          {
            operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::UpdateTopK(a1 + 8, v14, v21);
          }
        }

        v17 = v18 >> 6;
        if (!v15)
        {
          break;
        }

LABEL_13:
        v14 = __clz(__rbit64(v15)) | (v17 << 6);
        v15 &= v15 - 1;
      }

      while (v16 != v17)
      {
        v15 = v10[++v17];
        if (v15)
        {
          goto LABEL_13;
        }
      }

      return;
    }
  }

  else if (*(v8 + 715) != 1)
  {
    goto LABEL_3;
  }

  operations_research::glop::ReducedCosts::ComputeReducedCosts(v8);
  v9 = *(v8 + 768);
  v10 = *(a2 + 8);
  v11 = (*(a2 + 16) - v10) >> 3;
  if (*(a2 + 16) == v10)
  {
    goto LABEL_10;
  }

LABEL_4:
  v12 = *v10;
  if (*v10)
  {
    i = 0;
  }

  else
  {
    if (v11 == 1)
    {
      return;
    }

    v22 = 1;
    for (i = 64; ; i += 64)
    {
      v12 = v10[v22];
      if (v12)
      {
        break;
      }

      if (v11 == ++v22)
      {
        return;
      }
    }
  }

  v14 = i | __clz(__rbit64(v12));
  v15 = (v12 - 1) & v12;
  if (v11)
  {
    goto LABEL_11;
  }
}

uint64_t operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::GetMaximum(double *a1)
{
  v2 = (a1 + 3);
  a1[4] = a1[3];
  v3 = a1 + 14;
  v4 = *(a1 + 14);
  v5 = *(a1 + 15);
  if (v4 == v5)
  {
    v7 = 0xFFFFFFFFLL;
    v8 = -INFINITY;
    goto LABEL_21;
  }

  v6 = 0;
  v7 = 0xFFFFFFFFLL;
  v8 = -INFINITY;
  do
  {
    v37 = *v4;
    if (((*(*(a1 + 10) + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v37) & 1) != 0 && *(*(a1 + 6) + 8 * v37) == *(&v37 + 1))
    {
      *(*v3 + 16 * v6) = *v4;
      v9 = *(&v37 + 1);
      if (*(&v37 + 1) < v8)
      {
        goto LABEL_4;
      }

      if (*(&v37 + 1) == v8)
      {
        std::vector<int>::push_back[abi:ne200100](v2, &v37);
LABEL_4:
        ++v6;
        goto LABEL_5;
      }

      a1[4] = a1[3];
      v7 = v37;
      ++v6;
      v8 = v9;
    }

LABEL_5:
    ++v4;
  }

  while (v4 != v5);
  v10 = *(a1 + 14);
  v11 = (*(a1 + 15) - v10) >> 4;
  if (v6 <= v11)
  {
    if (v6 < v11)
    {
      *(a1 + 15) = v10 + 16 * v6;
    }
  }

  else
  {
    std::vector<operations_research::sat::CapacityProfile::QueueElement>::__append(v3, v6 - v11);
  }

  if (!v6)
  {
LABEL_21:
    a1[13] = -INFINITY;
    v15 = *(a1 + 6);
    v16 = *(a1 + 10);
    v17 = (*(a1 + 11) - v16) >> 3;
    if (*(a1 + 11) == v16)
    {
      v20 = 0;
      v21 = 0;
      if (v17)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v18 = *v16;
      if (*v16)
      {
        v19 = 0;
        goto LABEL_24;
      }

      if (v17 != 1)
      {
        v26 = 1;
        v19 = 64;
        while (1)
        {
          v18 = v16[v26];
          if (v18)
          {
            break;
          }

          ++v26;
          v19 += 64;
          if (v17 == v26)
          {
            goto LABEL_42;
          }
        }

LABEL_24:
        v20 = v19 | __clz(__rbit64(v18));
        v21 = (v18 - 1) & v18;
        if (!v17)
        {
          goto LABEL_42;
        }

LABEL_27:
        v22 = v17 - 1;
        while (1)
        {
          LODWORD(v37) = v20;
          v24 = v20;
          v25 = *(v15 + 8 * v20);
          if (v25 >= a1[13])
          {
            operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::UpdateTopK(a1, v20, *(v15 + 8 * v20));
            if (v25 >= v8)
            {
              if (v25 == v8)
              {
                std::vector<int>::push_back[abi:ne200100](v2, &v37);
              }

              else
              {
                a1[4] = a1[3];
                v7 = v37;
                v8 = v25;
              }
            }
          }

          v23 = v24 >> 6;
          if (!v21)
          {
            break;
          }

LABEL_29:
          v20 = __clz(__rbit64(v21)) | (v23 << 6);
          v21 &= v21 - 1;
        }

        while (v22 != v23)
        {
          v21 = v16[++v23];
          if (v21)
          {
            goto LABEL_29;
          }
        }
      }
    }

LABEL_42:
    LODWORD(v37) = v7;
    if (*(a1 + 3) == *(a1 + 4))
    {
      return v7;
    }

    std::vector<int>::push_back[abi:ne200100](v2, &v37);
    operations_research::IntegerDistribution::Add((a1 + 50), (*(a1 + 4) - *(a1 + 3)) >> 2);
    v27 = (*(a1 + 4) - *(a1 + 3)) >> 2;
    if (v27 == 1)
    {
      v28 = 0;
    }

    else if (v27)
    {
      v29 = __clz(v27);
      v30 = -32;
      if (((v27 << v29) & 0x7FFFFFFF) == 0)
      {
        v30 = -31;
      }

      v31 = 0xFFFFFFFFFFFFFFFFLL >> (v30 + (v29 | 0x40u));
      do
      {
        v28 = (*(a1 + 2))(*a1) & v31;
      }

      while (v27 <= v28);
    }

    else
    {
      v28 = (*(a1 + 2))(*a1);
    }

    v12 = *v2;
    v14 = 4 * v28;
    return *(v12 + v14);
  }

  operations_research::IntegerDistribution::Add((a1 + 40), v6);
  LODWORD(v37) = v7;
  if (*(a1 + 3) == *(a1 + 4))
  {
    return v7;
  }

  std::vector<int>::push_back[abi:ne200100](v2, &v37);
  operations_research::IntegerDistribution::Add((a1 + 50), (*(a1 + 4) - *(a1 + 3)) >> 2);
  v12 = *(a1 + 3);
  v13 = (*(a1 + 4) - v12) >> 2;
  if (v13 == 1)
  {
    v14 = 0;
    return *(v12 + v14);
  }

  if (!v13)
  {
    v14 = 4 * (*(a1 + 2))(*a1);
    v12 = *(a1 + 3);
    return *(v12 + v14);
  }

  v33 = __clz(v13);
  v34 = -32;
  if (((v13 << v33) & 0x7FFFFFFF) == 0)
  {
    v34 = -31;
  }

  v35 = 0xFFFFFFFFFFFFFFFFLL >> (v34 + (v33 | 0x40u));
  do
  {
    v36 = (*(a1 + 2))(*a1) & v35;
  }

  while (v13 <= v36);
  return *(*v2 + 4 * v36);
}

operations_research::glop::ReducedCosts::Stats *operations_research::glop::ReducedCosts::Stats::Stats(operations_research::glop::ReducedCosts::Stats *this)
{
  *(this + 23) = 12;
  strcpy(this, "ReducedCosts");
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = this + 64;
  operations_research::DistributionStat::DistributionStat(this + 80, "basic_objective_left_inverse_density", 0x24uLL, this);
  *(this + 10) = &unk_284F44D30;
  operations_research::DistributionStat::DistributionStat(this + 160, "reduced_costs_accuracy", 0x16uLL, this);
  *(this + 20) = &unk_284F44D90;
  operations_research::DistributionStat::DistributionStat(this + 240, "cost_shift", 0xAuLL, this);
  *(this + 30) = &unk_284F44D90;
  return this;
}

void sub_23CBCC328(_Unwind_Exception *a1)
{
  *(v1 + 160) = &unk_284F3A5F8;
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
    *(v1 + 80) = &unk_284F3A5F8;
    if ((*(v1 + 111) & 0x80000000) == 0)
    {
LABEL_3:
      operations_research::StatsGroup::~StatsGroup(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    *(v1 + 80) = &unk_284F3A5F8;
    if ((*(v1 + 111) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v1 + 88));
  operations_research::StatsGroup::~StatsGroup(v1);
  _Unwind_Resume(a1);
}

void std::vector<BOOL *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::QueryStats::QueryStats(uint64_t a1)
{
  *(a1 + 23) = 12;
  strcpy(a1, "PricingStats");
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a1 + 64;
  operations_research::DistributionStat::DistributionStat(a1 + 80, "get_maximum", 0xBuLL, a1);
  *(a1 + 80) = &unk_284F44CD0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  operations_research::DistributionStat::DistributionStat(a1 + 184, "heap_size_on_hit", 0x10uLL, a1);
  *(a1 + 184) = &unk_284F44DF0;
  operations_research::DistributionStat::DistributionStat(a1 + 264, "random_choices", 0xEuLL, a1);
  *(a1 + 264) = &unk_284F44DF0;
  return a1;
}

void sub_23CBCC63C(_Unwind_Exception *a1)
{
  *(v1 + 184) = &unk_284F3A5F8;
  if (*(v1 + 215) < 0)
  {
    operator delete(*(v1 + 192));
    *(v1 + 80) = &unk_284F3A5F8;
    if ((*(v1 + 111) & 0x80000000) == 0)
    {
LABEL_3:
      operations_research::StatsGroup::~StatsGroup(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    *(v1 + 80) = &unk_284F3A5F8;
    if ((*(v1 + 111) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v1 + 88));
  operations_research::StatsGroup::~StatsGroup(v1);
  _Unwind_Resume(a1);
}

void operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::UpdateTopK(uint64_t a1, int a2, double a3)
{
  v6 = *(a1 + 112);
  v5 = *(a1 + 120);
  v7 = (v5 - v6) >> 4;
  if (v7 > 0x1E)
  {
    if (*(v6 + 8) != a3)
    {
      v26 = 0;
      while (1)
      {
        while (1)
        {
          v27 = (2 * v26) | 1;
          v28 = 2 * v26 + 2;
          v25 = *(a1 + 112);
          v29 = v25 + 16 * v27;
          v30 = *(v29 + 8);
          v31 = v25 + 16 * v28;
          v32 = *(v31 + 8);
          if (v30 <= v32)
          {
            break;
          }

          if (v32 >= a3)
          {
            goto LABEL_45;
          }

          *(v25 + 16 * v26) = *v31;
          v26 = 2 * v26 + 2;
          if (v28 >= 15)
          {
LABEL_37:
            v25 = *(a1 + 112);
            goto LABEL_46;
          }
        }

        if (v30 >= a3)
        {
          break;
        }

        v28 = (2 * v26) | 1;
        *(v25 + 16 * v26) = *v29;
        v26 = v28;
        if (v27 >= 15)
        {
          goto LABEL_37;
        }
      }

LABEL_45:
      v28 = v26;
LABEL_46:
      v36 = v25 + 16 * v28;
      *v36 = a2;
      *(v36 + 8) = a3;
      goto LABEL_47;
    }

    *&v38 = 0.5;
    v37 = 0;
    v10 = *(a1 + 8);
    if (v10 == absl::lts_20240722::BitGenRef::NotAMock)
    {
      v33 = 0.5;
      goto LABEL_40;
    }

    if ((v10)(*a1, &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, &v38, &v37))
    {
      if ((v37 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      v33 = *&v38;
LABEL_40:
      while (1)
      {
        v34 = vcvtd_n_s64_f64(v33, 0x20uLL);
        v35 = (*(a1 + 16))(*a1);
        if (v35 != v34)
        {
          break;
        }

        v33 = (v33 + v34 * -2.32830644e-10) * 4294967300.0;
        if (v33 == 0.0)
        {
          return;
        }
      }

      if (v35 >= v34)
      {
        return;
      }
    }

    **(a1 + 112) = a2;
    return;
  }

  v8 = *(a1 + 128);
  if (v5 >= v8)
  {
    v11 = v8 - v6;
    if (v11 >> 3 <= v7 + 1)
    {
      v12 = v7 + 1;
    }

    else
    {
      v12 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (!(v12 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *v5 = a2;
  *(v5 + 8) = a3;
  v9 = v5 + 16;
  *(a1 + 120) = v9;
  if (v9 - v6 == 496)
  {
    v13 = 14;
    do
    {
      v14 = v13;
      v15 = (16 * v13) >> 3;
      v16 = v15 | 1;
      v17 = (v6 + 16 * (v15 | 1));
      v18 = v15 + 2;
      if (v18 < 31 && v17[1] > v17[3])
      {
        v17 += 2;
        v16 = v18;
      }

      v19 = (16 * v14 + v6);
      v20 = v19[1];
      if (v17[1] <= v20)
      {
        v21 = *v19;
        do
        {
          v22 = v19;
          v19 = v17;
          *v22 = *v17;
          if (v16 > 14)
          {
            break;
          }

          v23 = 2 * v16;
          v16 = (2 * v16) | 1;
          v17 = (v6 + 16 * v16);
          v24 = v23 + 2;
          if (v24 < 31 && v17[1] > v17[3])
          {
            v17 += 2;
            v16 = v24;
          }
        }

        while (v17[1] <= v20);
        *v19 = v21;
        v19[1] = v20;
      }

      v13 = v14 - 1;
    }

    while (v14);
    v25 = *(a1 + 112);
LABEL_47:
    *(a1 + 104) = *(v25 + 8);
  }
}

unint64_t AbslFlagHelpGenForsimplex_display_numbers_as_fractions::NonConst@<X0>(void *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    *(a1 + v3) = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForsimplex_stop_after_first_basis::NonConst@<X0>(void *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    *(a1 + v3) = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForsimplex_stop_after_feasibility::NonConst@<X0>(void *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    *(a1 + v3) = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForsimplex_display_stats::NonConst@<X0>(void *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    *(a1 + v3) = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

void operations_research::glop::RevisedSimplex::RevisedSimplex(operations_research::glop::RevisedSimplex *this)
{
  *this = 6;
  *(this + 32) = 0;
  *(this + 264) = 0u;
  *(this + 36) = 0;
  *(this + 312) = 0;
  *(this + 296) = 0u;
  *(this + 91) = 0;
  *(this + 46) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 148) = 0u;
  *(this + 10) = 0u;
  *(this + 12) = 0u;
  v2 = this + 192;
  v3 = this + 15844;
  v4 = (this + 16);
  v12 = this + 96;
  *(this + 23) = 0u;
  v5 = this + 368;
  *(this + 26) = 0u;
  v6 = this + 752;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 54) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 632) = 0;
  *(this + 78) = 0;
  *(this + 38) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  v7 = 5489;
  *(this + 44) = 0u;
  v8 = 1;
  v9 = 95;
  *(this + 94) = 5489;
  do
  {
    v10 = 0x5851F42D4C957F2DLL * (v7 ^ (v7 >> 62));
    v7 = v10 + v8;
    *(this + v9) = v9 + v10 - 94;
    ++v8;
    ++v9;
  }

  while (v9 != 406);
  *(this + 406) = 0;
  absl::lts_20240722::random_internal::Randen::Randen((this + 3528));
  *(this + 440) = 32;
  v11 = (this + ((this + 3256) & 8) + 3256);
  *v11 = 0u;
  v11[1] = 0u;
  v11[2] = 0u;
  v11[3] = 0u;
  v11[4] = 0u;
  v11[5] = 0u;
  v11[6] = 0u;
  v11[7] = 0u;
  v11[8] = 0u;
  v11[9] = 0u;
  v11[10] = 0u;
  v11[11] = 0u;
  v11[12] = 0u;
  v11[13] = 0u;
  v11[14] = 0u;
  v11[15] = 0u;
  absl::lts_20240722::random_internal::randen_engine<unsigned long long>::reseed<absl::lts_20240722::random_internal::RandenPoolSeedSeq>(this + 3256);
  *(this + 442) = v6;
  *(this + 443) = absl::lts_20240722::BitGenRef::NotAMock;
  *(this + 444) = absl::lts_20240722::BitGenRef::ImplFn<std::mersenne_twister_engine<unsigned long long,64ul,312ul,156ul,31ul,13043109905998158313ull,29ul,6148914691236517205ull,17ul,8202884508482404352ull,37ul,18444473444759240704ull,43ul,6364136223846793005ull>>;
  operations_research::SolverLogger::SolverLogger((this + 3560));
  *(this + 457) = this + 3560;
  operations_research::glop::BasisFactorization::BasisFactorization(this + 3664, v4, v5);
  operations_research::glop::VariablesInfo::VariablesInfo((this + 8520), v4);
  operations_research::glop::PrimalEdgeNorms::PrimalEdgeNorms((this + 8880), v4, (this + 8520), (this + 3664));
  operations_research::glop::DualEdgeNorms::DualEdgeNorms((this + 9840), (this + 3664));
  *(this + 1321) = *(this + 444);
  *(this + 10552) = *(this + 221);
  *(this + 1329) = 0;
  *(this + 1331) = 0;
  *(this + 1330) = 0;
  *(this + 1333) = 0;
  *(this + 1335) = 0;
  *(this + 1334) = 0;
  *(this + 661) = 0u;
  *(this + 662) = 0u;
  *(this + 663) = 0u;
  *(this + 2656) = 0;
  operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::QueryStats::QueryStats(this + 10688);
  operations_research::glop::VariableValues::VariableValues(this + 11032, this + 15904, v4, v5, this + 8520, this + 3664, this + 9840, this + 10552);
  operations_research::glop::UpdateRow::UpdateRow(this + 11360, v4, v12, this + 8520, v5, this + 3664);
  v13 = *(this + 221);
  v14 = *(this + 444);
  operations_research::glop::ReducedCosts::ReducedCosts(this + 12264, v4, (v2 + 24), v5, this + 8520, this + 3664, &v13);
  v13 = *(this + 221);
  v14 = *(this + 444);
  operations_research::glop::EnteringVariable::EnteringVariable(this + 13176, this + 8520, &v13, this + 12264);
  v13 = *(this + 221);
  v14 = *(this + 444);
  operations_research::glop::PrimalPrices::PrimalPrices(this + 13760, &v13, this + 8520, this + 8880, this + 12264);
  *(this + 1802) = 0;
  *(this + 900) = 0u;
  *(this + 899) = 0u;
  *(this + 898) = 0u;
  *(this + 897) = 0u;
  *(this + 896) = 0u;
  *(this + 895) = 0u;
  *(this + 894) = 0u;
  *(this + 893) = 0u;
  *(this + 892) = 0u;
  operations_research::glop::RevisedSimplex::IterationStats::IterationStats((this + 14424));
  operations_research::glop::RevisedSimplex::RatioTestStats::RatioTestStats((this + 15184));
  v3[3] = 20;
  *(this + 3960) = 1937006964;
  *(this + 989) = *"SimplexFunctionStats";
  *v3 = 0;
  *(this + 3962) = 0;
  *(this + 1982) = 0;
  *(this + 15864) = 0u;
  *(this + 993) = 0u;
  *(this + 1985) = this + 15888;
  operations_research::glop::GlopParameters::GlopParameters(this + 15904, 0);
  operations_research::glop::GlopParameters::GlopParameters(this + 16232, 0);
  operations_research::glop::LuFactorization::LuFactorization((this + 16560));
  *(v2 + 5065) = 0;
  *(this + 1279) = 0u;
  *(this + 1280) = 0u;
  *(this + 20489) = 0u;
  *(this + 1282) = 0u;
  *(this + 1283) = 0u;
  *(this + 1284) = 0u;
  operations_research::glop::RevisedSimplex::SetParameters(this, (this + 15904));
}

void sub_23CBCD1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, operations_research::SolverLogger *a11, void **a12, void ***a13, operations_research::glop::ScatteredColumn *a14, void **a15, operations_research::glop::CompactSparseMatrix *a16)
{
  v26 = *(v16 + 20536);
  if (v26)
  {
    *(v16 + 20544) = v26;
    operator delete(v26);
  }

  operations_research::glop::RevisedSimplex::RevisedSimplex((v16 + 20512), (v16 + 20464), (v16 + 16560), v16);
  operations_research::glop::GlopParameters::~GlopParameters((v16 + v19));
  operations_research::glop::GlopParameters::~GlopParameters((v16 + v21));
  operations_research::StatsGroup::~StatsGroup((v16 + 15824));
  operations_research::glop::RevisedSimplex::RatioTestStats::~RatioTestStats((v16 + v22));
  operations_research::glop::RevisedSimplex::IterationStats::~IterationStats((v16 + v24));
  v27 = *(v16 + 14320);
  if (v27)
  {
    *(v16 + 14328) = v27;
    operator delete(v27);
  }

  v28 = *(v16 + 14296);
  if (v28)
  {
    *(v16 + 14304) = v28;
    operator delete(v28);
    v29 = *(v16 + 14272);
    if (!v29)
    {
LABEL_8:
      operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::~DynamicMaximum(v16 + 13768);
      operations_research::glop::EnteringVariable::~EnteringVariable((v16 + 13176));
      operations_research::glop::ReducedCosts::~ReducedCosts((v16 + v18));
      operations_research::glop::UpdateRow::~UpdateRow((v16 + 11360));
      operations_research::glop::VariableValues::~VariableValues((v16 + 11032));
      operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::~DynamicMaximum(v16 + 10552);
      operations_research::glop::DualEdgeNorms::~DualEdgeNorms((v16 + 9840));
      operations_research::glop::PrimalEdgeNorms::~PrimalEdgeNorms((v16 + 8880));
      operations_research::glop::VariablesInfo::~VariablesInfo((v16 + 8520));
      operations_research::glop::BasisFactorization::~BasisFactorization((v16 + 3664));
      operations_research::SolverLogger::~SolverLogger(a11);
      v30 = *a12;
      if (*a12)
      {
        *(v16 + 736) = v30;
        operator delete(v30);
      }

      operations_research::glop::ScatteredColumn::~ScatteredColumn((v25 + 448));
      v31 = *(v25 + 416);
      if (v31)
      {
        *(v16 + 616) = v31;
        operator delete(v31);
        v32 = *(v16 + 576);
        if (!v32)
        {
LABEL_12:
          v33 = *(v16 + 552);
          if (!v33)
          {
            goto LABEL_13;
          }

          goto LABEL_25;
        }
      }

      else
      {
        v32 = *(v16 + 576);
        if (!v32)
        {
          goto LABEL_12;
        }
      }

      *(v16 + 584) = v32;
      operator delete(v32);
      v33 = *(v16 + 552);
      if (!v33)
      {
LABEL_13:
        v34 = *(v16 + 528);
        if (!v34)
        {
          goto LABEL_14;
        }

        goto LABEL_26;
      }

LABEL_25:
      *(v16 + 560) = v33;
      operator delete(v33);
      v34 = *(v16 + 528);
      if (!v34)
      {
LABEL_14:
        v35 = *(v16 + 504);
        if (!v35)
        {
          goto LABEL_15;
        }

        goto LABEL_27;
      }

LABEL_26:
      *(v16 + 536) = v34;
      operator delete(v34);
      v35 = *(v16 + 504);
      if (!v35)
      {
LABEL_15:
        v36 = *(v16 + 480);
        if (!v36)
        {
          goto LABEL_16;
        }

        goto LABEL_28;
      }

LABEL_27:
      *(v16 + 512) = v35;
      operator delete(v35);
      v36 = *(v16 + 480);
      if (!v36)
      {
LABEL_16:
        v37 = *v23;
        if (!*v23)
        {
          goto LABEL_17;
        }

        goto LABEL_29;
      }

LABEL_28:
      *(v16 + 488) = v36;
      operator delete(v36);
      v37 = *v23;
      if (!*v23)
      {
LABEL_17:
        std::vector<std::string>::~vector[abi:ne200100](a13);
        v38 = *(v16 + 392);
        if (!v38)
        {
          goto LABEL_18;
        }

        goto LABEL_30;
      }

LABEL_29:
      *(v16 + 464) = v37;
      operator delete(v37);
      std::vector<std::string>::~vector[abi:ne200100](a13);
      v38 = *(v16 + 392);
      if (!v38)
      {
LABEL_18:
        v39 = *v20;
        if (!*v20)
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      }

LABEL_30:
      *(v16 + 400) = v38;
      operator delete(v38);
      v39 = *v20;
      if (!*v20)
      {
LABEL_19:
        operations_research::glop::ScatteredColumn::~ScatteredColumn(a14);
        v40 = *a15;
        if (!*a15)
        {
          goto LABEL_20;
        }

        goto LABEL_32;
      }

LABEL_31:
      *(v16 + 376) = v39;
      operator delete(v39);
      operations_research::glop::ScatteredColumn::~ScatteredColumn(a14);
      v40 = *a15;
      if (!*a15)
      {
LABEL_20:
        v41 = *(v25 + 24);
        if (!v41)
        {
          goto LABEL_21;
        }

        goto LABEL_33;
      }

LABEL_32:
      *(v16 + 264) = v40;
      operator delete(v40);
      v41 = *(v25 + 24);
      if (!v41)
      {
LABEL_21:
        v42 = *v25;
        if (!*v25)
        {
          goto LABEL_22;
        }

        goto LABEL_34;
      }

LABEL_33:
      *(v16 + 224) = v41;
      operator delete(v41);
      v42 = *v25;
      if (!*v25)
      {
LABEL_22:
        operations_research::glop::CompactSparseMatrix::~CompactSparseMatrix(a16);
        operations_research::glop::CompactSparseMatrix::~CompactSparseMatrix(v17);
        _Unwind_Resume(a1);
      }

LABEL_34:
      *(v16 + 200) = v42;
      operator delete(v42);
      operations_research::glop::CompactSparseMatrix::~CompactSparseMatrix(a16);
      operations_research::glop::CompactSparseMatrix::~CompactSparseMatrix(v17);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v29 = *(v16 + 14272);
    if (!v29)
    {
      goto LABEL_8;
    }
  }

  *(v16 + 14280) = v29;
  operator delete(v29);
  goto LABEL_8;
}

void sub_23CBCD4D0()
{
  v3 = *(v0 + v1);
  if (v3)
  {
    v0[1334] = v3;
    operator delete(v3);
    v4 = *(v0 + v2);
    if (!v4)
    {
LABEL_3:
      v5 = v0[1325];
      if (!v5)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(v0 + v2);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  v0[1330] = v4;
  operator delete(v4);
  v5 = v0[1325];
  if (!v5)
  {
LABEL_4:
    v6 = v0[1322];
    if (!v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    v0[1323] = v6;
    operator delete(v6);
LABEL_10:
    JUMPOUT(0x23CBCD2D4);
  }

LABEL_8:
  v0[1326] = v5;
  operator delete(v5);
  v6 = v0[1322];
  if (!v6)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_23CBCD550(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, operations_research::SolverLogger *a11, void *a12)
{
  operations_research::SolverLogger::~SolverLogger(a11);
  if (!*a12)
  {
    JUMPOUT(0x23CBCD31CLL);
  }

  JUMPOUT(0x23CBCD314);
}

void sub_23CBCD56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (!*a12)
  {
    JUMPOUT(0x23CBCD31CLL);
  }

  JUMPOUT(0x23CBCD314);
}

void operations_research::glop::RevisedSimplex::SetParameters(operations_research::glop::RevisedSimplex *this, const operations_research::glop::GlopParameters *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 57);
  *(this + 94) = v2;
  v3 = 1;
  for (i = 95; i != 406; ++i)
  {
    v5 = 0x5851F42D4C957F2DLL * (v2 ^ (v2 >> 62));
    v2 = v5 + v3;
    *(this + i) = i + v5 - 94;
    ++v3;
  }

  *(this + 406) = 0;
  operator new();
}

void sub_23CBCD804(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x23EED9460](v2, v1);
  _Unwind_Resume(a1);
}

void sub_23CBCD82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  absl::lts_20240722::random_internal::SaltedSeedSeq<std::seed_seq>::~SaltedSeedSeq(&a10);
  absl::lts_20240722::random_internal::SaltedSeedSeq<std::seed_seq>::~SaltedSeedSeq(&a9);
  _Unwind_Resume(a1);
}

void operations_research::glop::EnteringVariable::~EnteringVariable(operations_research::glop::EnteringVariable *this)
{
  v2 = *(this + 69);
  if (v2)
  {
    *(this + 70) = v2;
    operator delete(v2);
  }

  v3 = *(this + 66);
  if (v3)
  {
    *(this + 67) = v3;
    operator delete(v3);
  }

  *(this + 56) = &unk_284F3A5F8;
  if (*(this + 479) < 0)
  {
    operator delete(*(this + 57));
  }

  operations_research::StatsGroup::~StatsGroup((this + 368));
  operations_research::glop::GlopParameters::~GlopParameters((this + 40));
}

void *operations_research::glop::RevisedSimplex::ClearStateForNextSolve(void *this)
{
  this[73] = this[72];
  this[77] = this[76];
  return this;
}

char *operations_research::glop::RevisedSimplex::LoadStateForNextSolve(uint64_t a1, uint64_t a2)
{
  result = (a1 + 576);
  if (result != a2)
  {
    result = std::vector<operations_research::glop::VariableStatus>::__assign_with_size[abi:ne200100]<operations_research::glop::VariableStatus*,operations_research::glop::VariableStatus*>(result, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  }

  *(a1 + 600) = 1;
  return result;
}

void operations_research::glop::RevisedSimplex::Solve(void **__return_ptr a1@<X8>, operations_research::glop::RevisedSimplex *this@<X0>, const operations_research::glop::LinearProgram *a3@<X1>, operations_research::TimeLimit *a4@<X2>)
{
  v163 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    operator new();
  }

  v7 = this + 15932;
  v157 = &unk_284F41AB0;
  *&v158 = this;
  *(&v158 + 1) = a4;
  v159 = &v157;
  v162 = &v160;
  v160 = &unk_284F41AB0;
  v161 = v158;
  *(this + 3560) = *(this + 15935);
  *(this + 3561) = *(this + 16194);
  v8 = *(this + 457);
  if (*v8 == 1)
  {
    v156 = 0;
    LOBYTE(__p[0]) = 0;
    v8 = operations_research::SolverLogger::LogInfo(v8, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 170, __p);
    if (v156 < 0)
    {
      operator delete(__p[0]);
    }
  }

  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(v8);
  v10 = *a4;
  operations_research::glop::RevisedSimplex::Initialize(this, a3, a1);
  if (*a1)
  {
    goto LABEL_224;
  }

  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    if (**(this + 457) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  operator delete(a1[1]);
  if (**(this + 457) == 1)
  {
LABEL_10:
    operations_research::glop::RevisedSimplex::DisplayBasicVariableStatistics(this);
  }

LABEL_11:
  *(this + 33) = *(this + 32);
  operations_research::glop::UpdateRow::Invalidate((this + 11360));
  operations_research::glop::LuFactorization::Clear((this + 16560));
  *this = 6;
  v143 = (this + 20452);
  *(this + 5113) = 0;
  v11 = (this + 14344);
  *(this + 14344) = 0u;
  *(this + 14360) = 0u;
  *(this + 899) = 0u;
  *(this + 900) = 0u;
  *(this + 600) = 1;
  if (dword_2810BD398 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::glop::RevisedSimplex::Solve(operations_research::glop::LinearProgram const&,operations_research::TimeLimit *)::$_1::operator() const(void)::site, dword_2810BD398))
  {
    operations_research::glop::RevisedSimplex::ComputeNumberOfEmptyRows(this);
    operations_research::glop::RevisedSimplex::ComputeNumberOfEmptyColumns(this);
    operations_research::glop::RevisedSimplex::DisplayProblem(this);
  }

  explicit = atomic_load_explicit(&qword_2810BD850, memory_order_acquire);
  if (explicit)
  {
    if (explicit)
    {
LABEL_14:
      operations_research::glop::RevisedSimplex::DisplayAllStats(this);
      operations_research::glop::Status::Status(a1);
      goto LABEL_224;
    }
  }

  else if (absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_simplex_stop_after_first_basis))
  {
    goto LABEL_14;
  }

  v13 = *v7;
  v14 = *(this + 457);
  if (*v14 != 1 || (v156 = 0, LOBYTE(__p[0]) = 0, operations_research::SolverLogger::LogInfo(v14, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 214, __p), (v156 & 0x80000000) == 0))
  {
    *(this + 2308) = *(this + 3985);
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_48:
    operations_research::glop::RevisedSimplex::PrimalMinimize(this, a4, a1);
    if (*a1)
    {
      goto LABEL_224;
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(a1[1]);
    }

    if (*this != 1)
    {
      operations_research::glop::RevisedSimplex::InitializeObjectiveAndTestIfUnchanged(this, a3);
      operations_research::glop::ReducedCosts::ResetForNewObjective(this + 12264);
    }

    goto LABEL_53;
  }

  operator delete(__p[0]);
  *(this + 2308) = *(this + 3985);
  if (!v13)
  {
    goto LABEL_48;
  }

LABEL_22:
  if (v7[2] == 1)
  {
    operations_research::glop::ReducedCosts::PerturbCosts(this + 1533);
  }

  if (v7[261] == 1)
  {
    operations_research::glop::VariablesInfo::MakeBoxedVariableRelevant(this + 8520, 0);
    operations_research::glop::RevisedSimplex::DualMinimize(this, a4, *v143 == 0, a1);
    if (*a1)
    {
      goto LABEL_224;
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(a1[1]);
    }

    if (*this != 2)
    {
      operations_research::glop::BasisFactorization::Refactorize((this + 3664), a1);
      if (*a1)
      {
        goto LABEL_224;
      }

      if (*(a1 + 31) < 0)
      {
        operator delete(a1[1]);
      }

      operations_research::glop::RevisedSimplex::PermuteBasis(this);
      operations_research::glop::VariablesInfo::MakeBoxedVariableRelevant(this + 8520, 1);
      operations_research::glop::ReducedCosts::MakeReducedCostsPrecise(this + 12264);
      NonBasicBoxedVariables = operations_research::glop::VariablesInfo::GetNonBasicBoxedVariables((this + 8520));
      operations_research::glop::RevisedSimplex::MakeBoxedVariableDualFeasible<operations_research::Bitset64<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>(this, NonBasicBoxedVariables, 0);
      operations_research::glop::VariableValues::RecomputeBasicVariableValues((this + 11032));
    }

LABEL_53:
    operations_research::glop::RevisedSimplex::DisplayErrors(this);
    *v143 = 1;
    v21 = (CurrentTimeNanos - v10) * 0.000000001;
    *(this + 1799) = (absl::lts_20240722::GetCurrentTimeNanos(v20) - *a4) * 0.000000001 - v21;
    *(this + 2308) = *(this + 3986);
    *(this + 1794) = *(this + 1793);
    OneBool = *(this + 457);
    if (*OneBool == 1)
    {
      v156 = 0;
      LOBYTE(__p[0]) = 0;
      OneBool = operations_research::SolverLogger::LogInfo(OneBool, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 333, __p);
      if (v156 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (*(this + 2023) < 0.0)
    {
      goto LABEL_57;
    }

    v27 = 0.0;
    v28 = 1;
    while (1)
    {
      if ((*(this + 20456) & 1) != 0 || *v11 && *v11 >= *(this + 2009))
      {
        goto LABEL_57;
      }

      OneBool = operations_research::TimeLimit::LimitReached(a4);
      if (OneBool)
      {
        goto LABEL_57;
      }

      v31 = atomic_load_explicit(&qword_2810BD8A8, memory_order_acquire);
      if (v31)
      {
        if (v31)
        {
          goto LABEL_57;
        }
      }

      else
      {
        OneBool = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_simplex_stop_after_feasibility);
        if (OneBool)
        {
          goto LABEL_57;
        }
      }

      v32 = *this;
      if ((v32 - 7) >= 2)
      {
        goto LABEL_57;
      }

      if (v32 == 7)
      {
        operations_research::glop::RevisedSimplex::PrimalMinimize(this, a4, a1);
      }

      else
      {
        operations_research::glop::RevisedSimplex::DualMinimize(this, a4, *v143 == 0, a1);
      }

      if (*a1)
      {
        goto LABEL_224;
      }

      if (*(a1 + 31) < 0)
      {
        operator delete(a1[1]);
      }

      if (*(this + 2567) != *(this + 2568) && !*this)
      {
        operations_research::glop::RevisedSimplex::Polish(this, a4, a1);
        if (*a1)
        {
          goto LABEL_224;
        }

        if (*(a1 + 31) < 0)
        {
          operator delete(a1[1]);
        }
      }

      operations_research::glop::VariableValues::ResetAllNonBasicVariableValues(this + 1379, this + 76);
      operations_research::glop::BasisFactorization::Refactorize((this + 3664), a1);
      if (*a1)
      {
        goto LABEL_224;
      }

      if (*(a1 + 31) < 0)
      {
        operator delete(a1[1]);
      }

      operations_research::glop::RevisedSimplex::PermuteBasis(this);
      operations_research::glop::VariableValues::RecomputeBasicVariableValues((this + 11032));
      operations_research::glop::ReducedCosts::ClearAndRemoveCostShifts((this + 12264));
      operations_research::glop::RevisedSimplex::DisplayErrors(this);
      v33 = *this;
      if (!*this)
      {
        break;
      }

      if (v33 == 5)
      {
        v54 = *(this + 2005);
        if (operations_research::glop::ReducedCosts::ComputeMaximumDualResidual((this + 12264)) > v54 || operations_research::glop::VariableValues::ComputeMaximumPrimalResidual((this + 11032)) > v54 || (OneBool = operations_research::glop::ReducedCosts::ComputeMaximumDualInfeasibility((this + 12264)), v56 > v54))
        {
          v57 = *(this + 457);
          if (*v57 == 1)
          {
            __p[0] = "DUAL_UNBOUNDED was reported, but the residual and/or dual infeasibility is above the tolerance";
            __p[1] = 94;
            absl::lts_20240722::StrCat(__p, &v152);
            OneBool = operations_research::SolverLogger::LogInfo(v57, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 464, &v152);
            if (SHIBYTE(v154[0]) < 0)
            {
              operator delete(v152);
            }
          }

          if (v7[196] == 1)
          {
            *this = 11;
          }
        }

        v58 = *(this + 2);
        if (v58 < 1)
        {
          v62 = 0.0;
          v61 = 0.0;
LABEL_231:
          v119 = *(this + 457);
          if (*v119)
          {
            __p[0] = "Dual ray error=";
            __p[1] = 15;
            v120 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v154, v62, v55);
            v152 = v154;
            v153 = v120;
            v151[0].__r_.__value_.__r.__words[0] = " infeasibility=";
            v151[0].__r_.__value_.__l.__size_ = 15;
            *&v149 = v150;
            *(&v149 + 1) = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v150, v61, v121);
            absl::lts_20240722::StrCat(__p, &v152, v151, &v149, v148);
            OneBool = operations_research::SolverLogger::LogInfo(v119, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 495, v148);
            if (SHIBYTE(v148[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v148[0].__r_.__value_.__l.__data_);
            }
          }

          if (v61 >= v54 && v62 <= v54)
          {
            goto LABEL_57;
          }

          v122 = *(this + 457);
          if (*v122 == 1)
          {
            __p[0] = "DUAL_UNBOUNDED was reported, but the dual ray is not proving infeasibility with high enough tolerance";
            __p[1] = 101;
            absl::lts_20240722::StrCat(__p, &v152);
            OneBool = operations_research::SolverLogger::LogInfo(v122, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 499, &v152);
            goto LABEL_238;
          }

LABEL_240:
          if (v7[196] == 1)
          {
            *this = 11;
          }

          goto LABEL_57;
        }

        v59 = 0;
        v60 = 8 * v58;
        v61 = 0.0;
        v62 = 0.0;
        while (2)
        {
          v64 = *(*(this + 69) + v59);
          if (v64 > 0.0)
          {
            v63 = *(*(this + 1066) + v59);
            if (v63 != -INFINITY)
            {
              goto LABEL_161;
            }

LABEL_154:
            if (v62 < v64)
            {
              v62 = v64;
            }
          }

          else if (v64 < 0.0)
          {
            v63 = *(*(this + 1069) + v59);
            if (v63 == INFINITY)
            {
              v64 = -v64;
              goto LABEL_154;
            }

LABEL_161:
            v61 = v61 + v64 * v63;
          }

          v59 += 8;
          if (v60 == v59)
          {
            goto LABEL_231;
          }

          continue;
        }
      }

      if (v33 == 4)
      {
        v50 = *(this + 2005);
        v51 = operations_research::glop::ReducedCosts::ComputeMaximumDualResidual((this + 12264));
        if (v51 <= v50 && operations_research::glop::VariableValues::ComputeMaximumPrimalResidual((this + 11032)) <= v50 && operations_research::glop::VariableValues::ComputeMaximumPrimalInfeasibility((this + 11032)) <= v50)
        {
          v146 = 0.0;
          *&v147 = INFINITY;
          v124 = *(this + 2);
          if (v124 < 1)
          {
            v130 = 0.0;
            v131 = INFINITY;
            v129 = 0.0;
          }

          else
          {
            v125 = 0;
            v126 = *(this + 63);
            v127 = *(this + 27);
            v128 = 8 * v124;
            v129 = 0.0;
            v130 = 0.0;
            v131 = INFINITY;
            do
            {
              v130 = v130 + *(v126 + v125) * *(v127 + v125);
              v146 = v130;
              v132 = *(v126 + v125);
              if (v132 > 0.0)
              {
                v133 = *(*(this + 1069) + v125);
                if (v133 != INFINITY)
                {
                  v134 = (v50 + v133 - *(*(this + 1387) + v125)) / v132;
                  if (v131 >= v134)
                  {
                    v131 = v134;
                  }

                  *&v147 = v131;
                  v132 = *(v126 + v125);
                  if (v132 >= v129)
                  {
                    v129 = *(v126 + v125);
                  }
                }
              }

              if (v132 < 0.0)
              {
                v135 = *(*(this + 1066) + v125);
                if (v135 != -INFINITY)
                {
                  v136 = (v50 + *(*(this + 1387) + v125) - v135) / -v132;
                  if (v131 >= v136)
                  {
                    v131 = v136;
                  }

                  *&v147 = v131;
                  if (v129 <= -*(v126 + v125))
                  {
                    v129 = -*(v126 + v125);
                  }
                }
              }

              v125 += 8;
            }

            while (v128 != v125);
          }

          v137 = *(this + 457);
          if (*v137)
          {
            __p[0] = "Primal unbounded ray: max blocking magnitude = ";
            __p[1] = 47;
            v138 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v154, v129, v52);
            v152 = v154;
            v153 = v138;
            v151[0].__r_.__value_.__r.__words[0] = ", min distance to bound + ";
            v151[0].__r_.__value_.__l.__size_ = 26;
            *&v149 = v150;
            *(&v149 + 1) = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v150, v50, v139);
            v148[0].__r_.__value_.__r.__words[0] = " = ";
            v148[0].__r_.__value_.__l.__size_ = 3;
            absl::lts_20240722::StrCat<double,char [20],double>(__p, &v152, v151, &v149, v148, &v147, ", ray cost delta = ", &v146, &v145);
            OneBool = operations_research::SolverLogger::LogInfo(v137, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 443, &v145);
            if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v145.__r_.__value_.__l.__data_);
            }

            v130 = v146;
            v131 = *&v147;
          }

          if (v131 * fabs(v130) < 1.0)
          {
            OneBool = operations_research::glop::ReducedCosts::ComputeMaximumDualInfeasibility((this + 12264));
            if (v140 <= v50)
            {
              v141 = *(this + 457);
              if (*v141 == 1)
              {
                __p[0] = "PRIMAL_UNBOUNDED was reported, but the tolerance are good and the unbounded ray is not great.";
                __p[1] = 93;
                absl::lts_20240722::StrCat(__p, &v152);
                OneBool = operations_research::SolverLogger::LogInfo(v141, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 448, &v152);
                if (SHIBYTE(v154[0]) < 0)
                {
                  operator delete(v152);
                }

                v142 = *(this + 457);
                if (*v142)
                {
                  __p[0] = "The difference between unbounded and optimal can depends on a slight change of tolerance, trying to see if we are at OPTIMAL after postsolve.";
                  __p[1] = 141;
                  absl::lts_20240722::StrCat(__p, &v152);
                  OneBool = operations_research::SolverLogger::LogInfo(v142, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 452, &v152);
                  if (SHIBYTE(v154[0]) < 0)
                  {
                    operator delete(v152);
                  }
                }
              }

              *this = 0;
            }
          }

          goto LABEL_57;
        }

        v53 = *(this + 457);
        if (*v53 == 1)
        {
          __p[0] = "PRIMAL_UNBOUNDED was reported, but the residual and/or dual infeasibility is above the tolerance";
          __p[1] = 96;
          absl::lts_20240722::StrCat(__p, &v152);
          OneBool = operations_research::SolverLogger::LogInfo(v53, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 397, &v152);
LABEL_238:
          if (SHIBYTE(v154[0]) < 0)
          {
            operator delete(v152);
          }
        }

        goto LABEL_240;
      }

LABEL_71:
      v27 = v28++;
      if (*(this + 2023) < v27)
      {
        goto LABEL_57;
      }
    }

    v34 = *(this + 2005);
    v35 = operations_research::glop::VariableValues::ComputeMaximumPrimalResidual((this + 11032));
    v36 = operations_research::glop::ReducedCosts::ComputeMaximumDualResidual((this + 12264));
    if (v35 > v34 || v36 > v34)
    {
      if (**(this + 457) == 1)
      {
        operator new();
      }
    }

    else
    {
      if (v35 >= *(this + 1997))
      {
        v37 = v35;
      }

      else
      {
        v37 = *(this + 1997);
      }

      if (v36 >= *(this + 1998))
      {
        v38 = v36;
      }

      else
      {
        v38 = *(this + 1998);
      }

      v39 = operations_research::glop::VariableValues::ComputeMaximumPrimalInfeasibility((this + 11032));
      OneBool = operations_research::glop::ReducedCosts::ComputeMaximumDualInfeasibility((this + 12264));
      if (v39 <= v37 || v40 <= v38)
      {
        if (v39 <= v37)
        {
          if (v40 <= v38)
          {
            goto LABEL_71;
          }

          v44 = *(this + 457);
          if (*(this + 2023) == v27)
          {
            if (*v44)
            {
              __p[0] = "The dual infeasibility is still higher than the requested internal tolerance, but the maximum number of optimization is reached.";
              __p[1] = 128;
              absl::lts_20240722::StrCat(__p, &v152);
              OneBool = operations_research::SolverLogger::LogInfo(v44, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 564, &v152);
              goto LABEL_269;
            }

LABEL_57:
            if (v7[196] != 1 || *this == 2)
            {
              goto LABEL_165;
            }

            v23 = *(this + 2005);
            if (operations_research::glop::VariableValues::ComputeMaximumPrimalResidual((this + 11032)) > v23 || operations_research::glop::ReducedCosts::ComputeMaximumDualResidual((this + 12264)) > v23)
            {
              goto LABEL_164;
            }

            v24 = *this;
            if (v24 > 8)
            {
              goto LABEL_165;
            }

            v25 = 1 << v24;
            if ((v25 & 0x94) == 0)
            {
              if ((v25 & 0x122) != 0)
              {
                OneBool = operations_research::glop::ReducedCosts::ComputeMaximumDualInfeasibility((this + 12264));
                goto LABEL_163;
              }

              goto LABEL_165;
            }

            v26 = operations_research::glop::VariableValues::ComputeMaximumPrimalInfeasibility((this + 11032));
LABEL_163:
            if (v26 > v23)
            {
LABEL_164:
              *this = 11;
            }

LABEL_165:
            StatusRow = absl::lts_20240722::GetCurrentTimeNanos(OneBool);
            v66 = (StatusRow - *a4) * 0.000000001 - v21;
            *(this + 1798) = v66;
            *(this + 1800) = v66 - *(this + 1799);
            *(this + 1795) = *(this + 1793) - *(this + 1794);
            if (*(this + 76) == *(this + 77))
            {
              goto LABEL_188;
            }

            StatusRow = operations_research::glop::VariablesInfo::GetStatusRow((this + 8520));
            v68 = *(this + 2);
            if (v68 < 1)
            {
              goto LABEL_188;
            }

            v69 = StatusRow;
            v70 = 0;
            StatusRow = 0;
            v71 = *v69;
            do
            {
              if (*(v71 + v70) == 4 && *(*(this + 1387) + 8 * v70) != 0.0)
              {
                StatusRow = (StatusRow + 1);
              }

              ++v70;
            }

            while (v68 != v70);
            if (StatusRow < 1)
            {
              goto LABEL_188;
            }

            v72 = *(this + 457);
            if (*v72 == 1)
            {
              __p[0] = "Num super-basic variables left after optimize phase: ";
              __p[1] = 53;
              v73 = absl::lts_20240722::numbers_internal::FastIntToBuffer(StatusRow, v154, v67);
              v152 = v154;
              v153 = v73 - v154;
              absl::lts_20240722::StrCat(__p, &v152, v151);
              StatusRow = operations_research::SolverLogger::LogInfo(v72, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 611, v151);
              if (SHIBYTE(v151[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v151[0].__r_.__value_.__l.__data_);
              }
            }

            if (v7[263] != 1)
            {
              goto LABEL_188;
            }

            v74 = *(this + 457);
            if (*this)
            {
              if (*v74)
              {
                __p[0] = "Skipping push phase because optimize didn't succeed.";
                __p[1] = 52;
                absl::lts_20240722::StrCat(__p, &v152);
                StatusRow = operations_research::SolverLogger::LogInfo(v74, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 621, &v152);
                if (SHIBYTE(v154[0]) < 0)
                {
                  v75 = v152;
                  goto LABEL_187;
                }
              }

              goto LABEL_188;
            }

            if (*v74)
            {
              __p[0] = &byte_23CE7F131;
              __p[1] = 0;
              absl::lts_20240722::StrCat(__p, &v152);
              operations_research::SolverLogger::LogInfo(v74, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 614, &v152);
              if (SHIBYTE(v154[0]) < 0)
              {
                operator delete(v152);
              }
            }

            *v143 = 2;
            operations_research::glop::RevisedSimplex::PrimalPush(this, a4, a1);
            if (!*a1)
            {
              if (*(a1 + 31) < 0)
              {
                v75 = a1[1];
LABEL_187:
                operator delete(v75);
              }

LABEL_188:
              v76 = (absl::lts_20240722::GetCurrentTimeNanos(StatusRow) - *a4) * 0.000000001 - v21;
              *(this + 1798) = v76;
              *(this + 1801) = v76 - *(this + 1799) - *(this + 1800);
              *(this + 1796) = *(this + 1793) - (*(this + 1794) + *(this + 1795));
              v77 = *(this + 27);
              v78 = *(this + 28) - v77;
              if ((v78 >> 3) < 1)
              {
                v87 = 0.0;
              }

              else
              {
                v79 = *(this + 1387);
                v80 = (v78 >> 3) & 0x7FFFFFFF;
                v81 = 0.0;
                v82 = 0.0;
                do
                {
                  v83 = *v77++;
                  v84 = v83;
                  v85 = *v79++;
                  v86 = v82 + v84 * v85;
                  v87 = v81 + v86;
                  v82 = v86 + v81 - (v81 + v86);
                  v81 = v87;
                  --v80;
                }

                while (v80);
              }

              *(this + 56) = *(this + 31) * (v87 + *(this + 30));
              DualValues = operations_research::glop::ReducedCosts::GetDualValues((this + 12264));
              if ((this + 456) != DualValues)
              {
                std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 57, *DualValues, *(DualValues + 8), (*(DualValues + 8) - *DualValues) >> 3);
              }

              ReducedCosts = operations_research::glop::ReducedCosts::GetReducedCosts((this + 12264));
              std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(this + 60, ReducedCosts, &ReducedCosts[8 * v90], v90);
              v91 = operations_research::glop::VariablesInfo::GetStatusRow((this + 8520));
              if ((this + 576) != v91)
              {
                std::vector<operations_research::glop::VariableStatus>::__assign_with_size[abi:ne200100]<operations_research::glop::VariableStatus*,operations_research::glop::VariableStatus*>(this + 72, *v91, *(v91 + 8), *(v91 + 8) - *v91);
              }

              *(this + 600) = 0;
              if (*(a3 + 408) == 1)
              {
                v92 = *(this + 57);
                v93 = *(this + 58) - v92;
                if ((v93 >> 3) >= 1)
                {
                  v94 = (v93 >> 3) & 0x7FFFFFFF;
                  if (v94 < 4)
                  {
                    v95 = 0;
                    goto LABEL_206;
                  }

                  v100 = (v93 >> 3) & 3;
                  v95 = v94 - v100;
                  v101 = v92 + 1;
                  v102 = v94 - v100;
                  do
                  {
                    v103 = vnegq_f64(*v101);
                    v101[-1] = vnegq_f64(v101[-1]);
                    *v101 = v103;
                    v101 += 2;
                    v102 -= 4;
                  }

                  while (v102);
                  if (v100)
                  {
LABEL_206:
                    v104 = v95 - v94;
                    v105 = &v92->f64[v95];
                    do
                    {
                      *v105 = -*v105;
                      ++v105;
                      v106 = __CFADD__(v104++, 1);
                    }

                    while (!v106);
                  }
                }

                v107 = *(this + 60);
                v108 = *(this + 61) - v107;
                if ((v108 >> 3) >= 1)
                {
                  v109 = (v108 >> 3) & 0x7FFFFFFF;
                  if (v109 < 4)
                  {
                    v110 = 0;
                    goto LABEL_215;
                  }

                  v111 = (v108 >> 3) & 3;
                  v110 = v109 - v111;
                  v112 = v107 + 1;
                  v113 = v109 - v111;
                  do
                  {
                    v114 = vnegq_f64(*v112);
                    v112[-1] = vnegq_f64(v112[-1]);
                    *v112 = v114;
                    v112 += 2;
                    v113 -= 4;
                  }

                  while (v113);
                  if (v111)
                  {
LABEL_215:
                    v115 = v110 - v109;
                    v116 = &v107->f64[v110];
                    do
                    {
                      *v116 = -*v116;
                      ++v116;
                      v106 = __CFADD__(v115++, 1);
                    }

                    while (!v106);
                  }
                }

                v117 = *this;
                if ((v117 & 0xFE) == 4)
                {
                  v97 = v117 == 5;
                  v98 = INFINITY;
                  v99 = -INFINITY;
LABEL_220:
                  if (v97)
                  {
                    v98 = v99;
                  }

                  *(this + 56) = v98;
                }
              }

              else
              {
                v96 = *this;
                if ((v96 & 0xFE) == 4)
                {
                  v97 = v96 == 5;
                  v98 = -INFINITY;
                  v99 = INFINITY;
                  goto LABEL_220;
                }
              }

              *(this + 77) = *(this + 76);
              operations_research::glop::RevisedSimplex::DisplayAllStats(this);
              operations_research::glop::Status::Status(a1);
            }

            goto LABEL_224;
          }

          if (*v44)
          {
            __p[0] = &byte_23CE7F131;
            __p[1] = 0;
            absl::lts_20240722::StrCat(__p, &v152);
            OneBool = operations_research::SolverLogger::LogInfo(v44, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 567, &v152);
            if (SHIBYTE(v154[0]) < 0)
            {
              operator delete(v152);
            }

            v45 = *(this + 457);
            if (*v45)
            {
              __p[0] = "Re-optimizing with primal simplex ... ";
              __p[1] = 38;
              absl::lts_20240722::StrCat(__p, &v152);
              OneBool = operations_research::SolverLogger::LogInfo(v45, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 568, &v152);
              if (SHIBYTE(v154[0]) < 0)
              {
                operator delete(v152);
              }
            }
          }

          v30 = 7;
        }

        else
        {
          v42 = *(this + 457);
          if (*(this + 2023) == v27)
          {
            if (*v42)
            {
              __p[0] = "The primal infeasibility is still higher than the requested internal tolerance, but the maximum number of optimization is reached.";
              __p[1] = 130;
              absl::lts_20240722::StrCat(__p, &v152);
              OneBool = operations_research::SolverLogger::LogInfo(v42, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 553, &v152);
LABEL_269:
              if (SHIBYTE(v154[0]) < 0)
              {
                operator delete(v152);
              }
            }

            goto LABEL_57;
          }

          if (*v42)
          {
            __p[0] = &byte_23CE7F131;
            __p[1] = 0;
            absl::lts_20240722::StrCat(__p, &v152);
            OneBool = operations_research::SolverLogger::LogInfo(v42, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 556, &v152);
            if (SHIBYTE(v154[0]) < 0)
            {
              operator delete(v152);
            }

            v43 = *(this + 457);
            if (*v43)
            {
              __p[0] = "Re-optimizing with dual simplex ... ";
              __p[1] = 36;
              absl::lts_20240722::StrCat(__p, &v152);
              OneBool = operations_research::SolverLogger::LogInfo(v43, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 557, &v152);
              if (SHIBYTE(v154[0]) < 0)
              {
                operator delete(v152);
              }
            }
          }

          v30 = 8;
        }

LABEL_70:
        *this = v30;
        goto LABEL_71;
      }

      v41 = *(this + 457);
      if (*v41 == 1)
      {
        __p[0] = "OPTIMAL was reported, yet both of the infeasibility are above the tolerance after the shift/perturbation are removed.";
        __p[1] = 117;
        absl::lts_20240722::StrCat(__p, &v152);
        OneBool = operations_research::SolverLogger::LogInfo(v41, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 544, &v152);
        if (SHIBYTE(v154[0]) < 0)
        {
          operator delete(v152);
        }
      }
    }

    if ((v7[196] & 1) == 0)
    {
      goto LABEL_71;
    }

    v30 = 11;
    goto LABEL_70;
  }

  operations_research::glop::ReducedCosts::MakeReducedCostsPrecise(this + 12264);
  if (operations_research::glop::ReducedCosts::NeedsBasisRefactorization((this + 12264)) && !operations_research::glop::BasisFactorization::IsRefactorized((this + 3664)))
  {
    operations_research::glop::BasisFactorization::Refactorize((this + 3664), a1);
    if (*a1)
    {
      goto LABEL_224;
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(a1[1]);
    }

    operations_research::glop::UpdateRow::Invalidate((this + 11360));
    operations_research::glop::RevisedSimplex::PermuteBasis(this);
  }

  operations_research::glop::Status::Status(a1);
  if (!*a1)
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(a1[1]);
    }

    operations_research::glop::ReducedCosts::ComputeMaximumDualInfeasibilityOnNonBoxedVariables((this + 12264));
    v16 = *(this + 1642);
    if (v17 >= v16)
    {
      v29 = operations_research::glop::ReducedCosts::GetReducedCosts((this + 12264));
      operations_research::glop::VariablesInfo::TransformToDualPhaseIProblem(this + 1065, v29, v16);
      v152 = 0;
      v153 = 0;
      v154[0] = 0;
      operations_research::glop::VariableValues::ResetAllNonBasicVariableValues(this + 1379, &v152);
      operations_research::glop::VariableValues::RecomputeBasicVariableValues((this + 11032));
      operations_research::glop::RevisedSimplex::DisplayErrors(this);
      operations_research::glop::RevisedSimplex::DualMinimize(this, a4, 0, a1);
      if (*a1)
      {
        if (v152)
        {
          v153 = v152;
          operator delete(v152);
        }

        goto LABEL_224;
      }

      if (*(a1 + 31) < 0)
      {
        operator delete(a1[1]);
      }

      v46 = *(this + 1642);
      FullReducedCosts = operations_research::glop::ReducedCosts::GetFullReducedCosts((this + 12264));
      operations_research::glop::VariablesInfo::EndDualPhaseI(this + 1065, FullReducedCosts, v46);
      operations_research::glop::VariableValues::ResetAllNonBasicVariableValues(this + 1379, this + 76);
      operations_research::glop::VariableValues::RecomputeBasicVariableValues((this + 11032));
      if (!*this)
      {
        operations_research::glop::ReducedCosts::ComputeMaximumDualInfeasibility((this + 12264));
        if (v48 >= *(this + 1642) + 0.000001)
        {
          v123 = *(this + 457);
          if (*v123 == 1)
          {
            __p[0] = "Infeasible after first phase.";
            __p[1] = 29;
            absl::lts_20240722::StrCat(__p, v151);
            operations_research::SolverLogger::LogInfo(v123, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 298, v151);
            if (SHIBYTE(v151[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v151[0].__r_.__value_.__l.__data_);
            }
          }

          v49 = 2;
        }

        else
        {
          v49 = 8;
        }

        *this = v49;
      }

      if (v152)
      {
        v153 = v152;
        operator delete(v152);
      }
    }

    else
    {
      v18 = *(this + 457);
      if (*v18 == 1)
      {
        __p[0] = "Initial basis is dual feasible.";
        __p[1] = 31;
        absl::lts_20240722::StrCat(__p, &v152);
        operations_research::SolverLogger::LogInfo(v18, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 258, &v152);
        if (SHIBYTE(v154[0]) < 0)
        {
          operator delete(v152);
        }
      }

      *this = 8;
      v19 = operations_research::glop::VariablesInfo::GetNonBasicBoxedVariables((this + 8520));
      operations_research::glop::RevisedSimplex::MakeBoxedVariableDualFeasible<operations_research::Bitset64<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>(this, v19, 0);
      operations_research::glop::VariableValues::RecomputeBasicVariableValues((this + 11032));
    }

    goto LABEL_53;
  }

LABEL_224:
  if (!v162)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v162 + 6))(v162);
  if (v162 == &v160)
  {
    (*(*v162 + 4))(v162);
  }

  else if (v162)
  {
    (*(*v162 + 5))(v162, v118);
  }
}

void sub_23CBCF128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void operations_research::glop::RevisedSimplex::Initialize(operations_research::glop::RevisedSimplex *this@<X0>, const operations_research::glop::LinearProgram *a2@<X1>, uint64_t a3@<X8>)
{
  v82 = *MEMORY[0x277D85DE8];
  v5 = this + 15932;
  operations_research::glop::GlopParameters::CopyFrom((this + 15904), (this + 16232));
  *(this + 1143) = *(this + 4007);
  *(this + 4568) = v5[198];
  operations_research::glop::GlopParameters::CopyFrom((this + 3832), (this + 15904));
  operations_research::glop::GlopParameters::CopyFrom((this + 6264), (this + 15904));
  operations_research::glop::GlopParameters::CopyFrom((this + 8168), (this + 15904));
  operations_research::glop::EnteringVariable::SetParameters((this + 13176), (this + 15904));
  operations_research::glop::ReducedCosts::SetParameters((this + 12264), (this + 15904));
  operations_research::glop::GlopParameters::CopyFrom((this + 10160), (this + 15904));
  operations_research::glop::GlopParameters::CopyFrom((this + 8904), (this + 15904));
  operations_research::glop::UpdateRow::SetParameters((this + 11360), (this + 15904));
  v7 = operations_research::glop::LinearProgram::IsInEquationForm(a2, v6);
  v69 = 0;
  v68 = 0;
  if (*(this + 72) == *(this + 73) || (*(this + 632) & 1) == 0)
  {
    v9 = operations_research::glop::RevisedSimplex::InitializeMatrixAndTestIfUnchanged(this, a2, v7, &v68 + 1, &v68, &v69);
    v8 = v68;
    if (v68 == 1)
    {
      if (v69 < 1)
      {
        HaveOneBoundAtZero = 0;
      }

      else
      {
        HaveOneBoundAtZero = operations_research::glop::RevisedSimplex::OldBoundsAreUnchangedAndNewVariablesHaveOneBoundAtZero(this, a2, v7, v69);
      }

      v8 = 1;
    }

    else
    {
      HaveOneBoundAtZero = 0;
    }
  }

  else
  {
    v8 = 0;
    HaveOneBoundAtZero = 0;
    v9 = 1;
  }

  *(this + 632) = 0;
  v10 = operations_research::glop::RevisedSimplex::InitializeObjectiveAndTestIfUnchanged(this, a2);
  if (v7)
  {
    BoundsAndReturnTrueIfUnchanged = operations_research::glop::VariablesInfo::LoadBoundsAndReturnTrueIfUnchanged(this + 8520, a2 + 160, a2 + 184);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  else
  {
    BoundsAndReturnTrueIfUnchanged = operations_research::glop::VariablesInfo::LoadBoundsAndReturnTrueIfUnchanged(this + 1065, a2 + 20, a2 + 23, a2 + 8, a2 + 11);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  if (v5[1] == 1)
  {
    if (!(BoundsAndReturnTrueIfUnchanged & 1 | ((v10 & 1) == 0)))
    {
      *v5 = 1;
      *(this + 3980) |= 1u;
      *(this + 1143) = *(this + 4007);
      *(this + 4568) = v5[198];
      operations_research::glop::GlopParameters::CopyFrom((this + 3832), (this + 15904));
      operations_research::glop::GlopParameters::CopyFrom((this + 6264), (this + 15904));
      operations_research::glop::GlopParameters::CopyFrom((this + 8168), (this + 15904));
      operations_research::glop::EnteringVariable::SetParameters((this + 13176), (this + 15904));
      operations_research::glop::ReducedCosts::SetParameters((this + 12264), (this + 15904));
      operations_research::glop::GlopParameters::CopyFrom((this + 10160), (this + 15904));
      operations_research::glop::GlopParameters::CopyFrom((this + 8904), (this + 15904));
      operations_research::glop::UpdateRow::SetParameters((this + 11360), (this + 15904));
    }

    if (!(v10 & 1 | ((BoundsAndReturnTrueIfUnchanged & 1) == 0)))
    {
      *v5 = 0;
      *(this + 3980) |= 1u;
      *(this + 1143) = *(this + 4007);
      *(this + 4568) = v5[198];
      operations_research::glop::GlopParameters::CopyFrom((this + 3832), (this + 15904));
      operations_research::glop::GlopParameters::CopyFrom((this + 6264), (this + 15904));
      operations_research::glop::GlopParameters::CopyFrom((this + 8168), (this + 15904));
      operations_research::glop::EnteringVariable::SetParameters((this + 13176), (this + 15904));
      operations_research::glop::ReducedCosts::SetParameters((this + 12264), (this + 15904));
      operations_research::glop::GlopParameters::CopyFrom((this + 10160), (this + 15904));
      operations_research::glop::GlopParameters::CopyFrom((this + 8904), (this + 15904));
      operations_research::glop::UpdateRow::SetParameters((this + 11360), (this + 15904));
    }
  }

LABEL_19:
  v13 = *(this + 30);
  v12 = *(this + 31);
  v14 = 16120;
  if (v12 >= 0.0)
  {
    v15 = 16120;
  }

  else
  {
    v15 = 16112;
  }

  v16 = *(this + v15) / v12;
  if (v12 >= 0.0)
  {
    v14 = 16112;
  }

  v17 = *(this + v14);
  *(this + 20456) = 0;
  *(this + 22) = v17 / v12 - v13;
  *(this + 23) = v16 - v13;
  if (dword_2810BD3B0 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::glop::RevisedSimplex::Initialize(operations_research::glop::LinearProgram const&)::$_0::operator() const(void)::site, dword_2810BD3B0))
  {
    operations_research::glop::RevisedSimplex::SetVariableNames(this);
  }

  v18 = a3;
  if (*(this + 72) != *(this + 73) && (*(this + 600) & 1) == 0)
  {
    if ((*v5 & 1) == 0)
    {
      operations_research::glop::DualEdgeNorms::Clear(this + 9840);
      *(this + 1785) = *(this + 1784);
      if ((v9 & BoundsAndReturnTrueIfUnchanged) != 1)
      {
        if ((HaveOneBoundAtZero & v8) != 1)
        {
          goto LABEL_27;
        }

        v39 = v69;
        operations_research::glop::VariablesInfo::InitializeFromBasisState((this + 8520), *(this + 3), v69, this + 576);
        operations_research::glop::VariableValues::ResetAllNonBasicVariableValues(this + 1379, this + 76);
        v40 = *(this + 46);
        v41 = *(this + 47);
        if (v40 != v41)
        {
          v42 = *(this + 3) - v39;
          do
          {
            if (*v40 >= v42)
            {
              *v40 += v39;
            }

            ++v40;
          }

          while (v40 != v41);
        }

        operations_research::glop::PrimalEdgeNorms::Clear(this + 8880);
      }

      operations_research::glop::ReducedCosts::ClearAndRemoveCostShifts((this + 12264));
LABEL_113:
      if (**(this + 457) == 1)
      {
        operator new();
      }

      goto LABEL_115;
    }

    operations_research::glop::PrimalEdgeNorms::Clear(this + 8880);
    if (v10)
    {
      if (v9)
      {
        if ((BoundsAndReturnTrueIfUnchanged & 1) == 0)
        {
          operations_research::glop::VariablesInfo::InitializeFromBasisState((this + 8520), *(this + 3), 0, this + 576);
          operations_research::glop::VariableValues::ResetAllNonBasicVariableValues(this + 1379, this + 76);
          operations_research::glop::VariableValues::RecomputeBasicVariableValues((this + 11032));
        }

        goto LABEL_113;
      }

      if (HIBYTE(v68) == 1)
      {
        operations_research::glop::VariablesInfo::InitializeFromBasisState((this + 8520), *(this + 3), 0, this + 576);
        operations_research::glop::DualEdgeNorms::ResizeOnNewRows(this + 9840, *(this + 1));
        operations_research::glop::ReducedCosts::ClearAndRemoveCostShifts((this + 12264));
        *(this + 1785) = *(this + 1784);
        operations_research::glop::RevisedSimplex::InitializeFirstBasis(this, this + 368, &v74);
        v61 = v74;
        if (SHIBYTE(v75) < 0)
        {
          operator delete(*(&v74 + 1));
        }

        if (!v61)
        {
          goto LABEL_113;
        }
      }
    }
  }

LABEL_27:
  if (*(this + 72) == *(this + 73))
  {
    goto LABEL_101;
  }

  operations_research::glop::BasisFactorization::Clear((this + 3664));
  operations_research::glop::ReducedCosts::ClearAndRemoveCostShifts((this + 12264));
  operations_research::glop::PrimalEdgeNorms::Clear(this + 8880);
  operations_research::glop::DualEdgeNorms::Clear(this + 9840);
  *(this + 1785) = *(this + 1784);
  operations_research::glop::VariablesInfo::InitializeFromBasisState((this + 8520), *(this + 3), 0, this + 576);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  IsBasicBitRow = operations_research::glop::VariablesInfo::GetIsBasicBitRow((this + 8520));
  v21 = *(IsBasicBitRow + 8);
  v22 = (*(IsBasicBitRow + 16) - v21) >> 3;
  if (*(IsBasicBitRow + 16) == v21)
  {
    v25 = 0;
    v26 = 0;
    if (!v22)
    {
      goto LABEL_70;
    }

LABEL_39:
    v27 = v66;
    v28 = v22 - 1;
    while (1)
    {
      if (v27 >= v67)
      {
        v30 = v65;
        v31 = v27 - v65;
        v32 = (v27 - v65) >> 2;
        v33 = v32 + 1;
        if ((v32 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v34 = v67 - v65;
        if ((v67 - v65) >> 1 > v33)
        {
          v33 = v34 >> 1;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v35 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v33;
        }

        if (v35)
        {
          if (!(v35 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v36 = v32;
        v37 = (4 * v32);
        v38 = &v37[-v36];
        *v37 = v25;
        v27 = v37 + 1;
        memcpy(v38, v30, v31);
        v65 = v38;
        v66 = v27;
        v67 = 0;
        if (v30)
        {
          operator delete(v30);
        }

        v18 = a3;
        v66 = v27;
        v29 = v25 >> 6;
        if (!v26)
        {
LABEL_56:
          while (v28 != v29)
          {
            v26 = v21[++v29];
            if (v26)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_70;
        }
      }

      else
      {
        *v27++ = v25;
        v66 = v27;
        v29 = v25 >> 6;
        if (!v26)
        {
          goto LABEL_56;
        }
      }

LABEL_40:
      v25 = __clz(__rbit64(v26)) | (v29 << 6);
      v26 &= v26 - 1;
    }
  }

  v23 = *v21;
  if (*v21)
  {
    v24 = 0;
  }

  else
  {
    if (v22 == 1)
    {
      goto LABEL_70;
    }

    v43 = 1;
    v24 = 64;
    while (1)
    {
      v23 = v21[v43];
      if (v23)
      {
        break;
      }

      ++v43;
      v24 += 64;
      if (v22 == v43)
      {
        goto LABEL_70;
      }
    }
  }

  v25 = v24 | __clz(__rbit64(v23));
  v26 = (v23 - 1) & v23;
  if (v22)
  {
    goto LABEL_39;
  }

LABEL_70:
  v44 = *(this + 457);
  v45 = v65;
  if (*v44)
  {
    v46 = absl::lts_20240722::numbers_internal::FastIntToBuffer((v66 - v65) >> 2, v73, v20);
    *&v72 = v73;
    *(&v72 + 1) = v46 - v73;
    v48 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 1), &v71[0].__r_.__value_.__s.__data_[16], v47);
    v71[0].__r_.__value_.__r.__words[0] = &v71[0].__r_.__value_.__r.__words[2];
    v71[0].__r_.__value_.__l.__size_ = v48 - &v71[0].__r_.__value_.__r.__words[2];
    *&v74 = "The warm-start state contains ";
    *(&v74 + 1) = 30;
    v75 = v72;
    v76 = " candidates for the basis (num_rows = ";
    v77 = 38;
    v78 = &v71[0].__r_.__value_.__s.__data_[16];
    v79 = v48 - &v71[0].__r_.__value_.__r.__words[2];
    v80 = ").";
    v81 = 2;
    absl::lts_20240722::strings_internal::CatPieces(&v74, 5, __p);
    operations_research::SolverLogger::LogInfo(v44, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1527, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v45 = v65;
  }

  v49 = v66;
  if (*(this + 1) == ((v66 - v45) >> 2))
  {
    for (*(this + 47) = *(this + 46); v45 != v49; v45 += 4)
    {
      LODWORD(v74) = *v45;
      std::vector<int>::push_back[abi:ne200100](this + 368, &v74);
    }

    operations_research::glop::RevisedSimplex::InitializeFirstBasis(this, this + 368, &v74);
    v50 = v74;
    if (SHIBYTE(v75) < 0)
    {
      operator delete(*(&v74 + 1));
      if (!v50)
      {
        goto LABEL_98;
      }
    }

    else if (!v74)
    {
      goto LABEL_98;
    }
  }

  operations_research::glop::BasisFactorization::ComputeInitialBasis(this + 3664, &v65, &v74);
  v51 = *(this + 46);
  if (v51)
  {
    *(this + 47) = v51;
    operator delete(v51);
    *(this + 46) = 0;
    *(this + 47) = 0;
    *(this + 48) = 0;
  }

  *(this + 23) = v74;
  *(this + 48) = v75;
  v52 = operations_research::glop::VariablesInfo::ChangeUnusedBasicVariablesToFree(this + 8520, this + 46);
  v53 = operations_research::glop::VariablesInfo::SnapFreeVariablesToBound(this + 1065, this + 76, *(this + 2026));
  v55 = *(this + 457);
  if (*v55 == 1)
  {
    v56 = v53;
    *&v74 = "The initial basis did not use ";
    *(&v74 + 1) = 30;
    *&v72 = " BASIC columns from the initial state and used ";
    *(&v72 + 1) = 47;
    v57 = absl::lts_20240722::numbers_internal::FastIntToBuffer((*(this + 1) + v52 - ((v66 - v65) >> 2)), &v71[0].__r_.__value_.__s.__data_[16], v54);
    v71[0].__r_.__value_.__r.__words[0] = &v71[0].__r_.__value_.__r.__words[2];
    v71[0].__r_.__value_.__l.__size_ = v57 - &v71[0].__r_.__value_.__r.__words[2];
    __p[0].__r_.__value_.__r.__words[0] = " slack variables that were not marked BASIC.";
    __p[0].__r_.__value_.__l.__size_ = 44;
    absl::lts_20240722::StrCat(&v74, &v72, v71, __p, &v64);
    operations_research::SolverLogger::LogInfo(v55, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1557, &v64);
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
      if (v56 < 1)
      {
        goto LABEL_91;
      }
    }

    else if (v56 < 1)
    {
      goto LABEL_91;
    }

    v59 = *(this + 457);
    if (*v59 == 1)
    {
      v60 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v56, &v75, v58);
      *&v74 = &v75;
      *(&v74 + 1) = v60 - &v75;
      *&v72 = " of the FREE variables where moved to their bound.";
      *(&v72 + 1) = 50;
      absl::lts_20240722::StrCat(&v74, &v72, v71);
      operations_research::SolverLogger::LogInfo(v59, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1560, v71);
      if (SHIBYTE(v71[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71[0].__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_91:
  operations_research::glop::RevisedSimplex::InitializeFirstBasis(this, this + 368, &v74);
  v50 = v74;
  if (SHIBYTE(v75) < 0)
  {
    operator delete(*(&v74 + 1));
    if (!v50)
    {
      goto LABEL_98;
    }
  }

  else if (!v74)
  {
    goto LABEL_98;
  }

  if (**(this + 457) == 1)
  {
    operator new();
  }

  v50 = 1;
LABEL_98:
  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (!v50)
  {
    goto LABEL_113;
  }

LABEL_101:
  if (**(this + 457) == 1)
  {
    operator new();
  }

  operations_research::glop::BasisFactorization::Clear((this + 3664));
  operations_research::glop::ReducedCosts::ClearAndRemoveCostShifts((this + 12264));
  operations_research::glop::PrimalEdgeNorms::Clear(this + 8880);
  operations_research::glop::DualEdgeNorms::Clear(this + 9840);
  *(this + 1785) = *(this + 1784);
  operations_research::glop::RevisedSimplex::CreateInitialBasis(this, v18);
  if (!*v18)
  {
    if (*(v18 + 31) < 0)
    {
      operator delete(*(v18 + 8));
    }

LABEL_115:
    operations_research::glop::Status::Status(v18);
  }
}

void sub_23CBCFF84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::RevisedSimplex::DisplayBasicVariableStatistics(operations_research::glop::RevisedSimplex *this)
{
  v73 = *MEMORY[0x277D85DE8];
  TypeRow = operations_research::glop::VariablesInfo::GetTypeRow((this + 8520));
  v4 = *(this + 1);
  if (v4 < 1)
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v21 = *(this + 457);
    if ((*v21 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    LODWORD(v5) = 0;
    LODWORD(v6) = 0;
    LODWORD(v7) = 0;
    LODWORD(v8) = 0;
    LODWORD(v9) = 0;
    v10 = *(this + 1997);
    v11 = *(this + 46);
    do
    {
      v13 = *v11++;
      v12 = v13;
      v14 = 8 * v13;
      v15 = *(*(this + 1387) + v14);
      if (*(*TypeRow + v13))
      {
        v6 = v6;
      }

      else
      {
        v6 = (v6 + 1);
      }

      v16 = *(*(this + 1069) + v14);
      v17 = *(*(this + 1066) + v14);
      v18 = v15 < v17 - v10 || v15 > v10 + v16;
      if (v12 < *(this + 3))
      {
        v8 = v8;
      }

      else
      {
        v8 = (v8 + 1);
      }

      v19 = v15 == v16;
      v9 = (v9 + v18);
      if (v15 == v17)
      {
        v19 = 1;
      }

      v20 = v7 + v19;
      if (v17 == v16)
      {
        v7 = v7;
      }

      else
      {
        v7 = v20;
      }

      if (v17 == v16)
      {
        v5 = (v5 + 1);
      }

      else
      {
        v5 = v5;
      }

      --v4;
    }

    while (v4);
    v21 = *(this + 457);
    if ((*v21 & 1) == 0)
    {
      return;
    }
  }

  v22 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 4), &v56[0].__r_.__value_.__s.__data_[16], v3);
  v56[0].__r_.__value_.__r.__words[0] = &v56[0].__r_.__value_.__r.__words[2];
  v56[0].__r_.__value_.__l.__size_ = v22 - &v56[0].__r_.__value_.__r.__words[2];
  v24 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 5), v55, v23);
  v53 = v55;
  v54 = v24 - v55;
  v25 = (*(this + 4) - *(this + 3)) >> 3;
  v60 = "The matrix with slacks has ";
  v61 = 27;
  v62 = *&v56[0].__r_.__value_.__l.__data_;
  v63 = " rows, ";
  v64 = 7;
  v65 = v55;
  v66 = v54;
  v67 = " columns, ";
  v68 = 10;
  v27 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v25, v59, v26);
  v57 = v59;
  v58 = v27 - v59;
  v69 = v59;
  v70 = v27 - v59;
  v71 = " entries.";
  v72 = 9;
  absl::lts_20240722::strings_internal::CatPieces(&v60, 7, &__p);
  operations_research::SolverLogger::LogInfo(v21, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1627, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v29 = *(this + 457);
    if ((*v29 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v29 = *(this + 457);
    if ((*v29 & 1) == 0)
    {
      return;
    }
  }

  v60 = "Number of basic infeasible variables: ";
  v61 = 38;
  v30 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v9, v59, v28);
  v57 = v59;
  v58 = v30 - v59;
  absl::lts_20240722::StrCat(&v60, &v57, v56);
  operations_research::SolverLogger::LogInfo(v29, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1629, v56);
  if (SHIBYTE(v56[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56[0].__r_.__value_.__l.__data_);
    v32 = *(this + 457);
    if ((*v32 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v32 = *(this + 457);
    if ((*v32 & 1) == 0)
    {
      return;
    }
  }

  v60 = "Number of basic slack variables: ";
  v61 = 33;
  v33 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v8, v59, v31);
  v57 = v59;
  v58 = v33 - v59;
  absl::lts_20240722::StrCat(&v60, &v57, v56);
  operations_research::SolverLogger::LogInfo(v32, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1630, v56);
  if (SHIBYTE(v56[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56[0].__r_.__value_.__l.__data_);
    v35 = *(this + 457);
    if ((*v35 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v35 = *(this + 457);
    if ((*v35 & 1) == 0)
    {
      return;
    }
  }

  v60 = "Number of basic variables at bound: ";
  v61 = 36;
  v36 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v7, v59, v34);
  v57 = v59;
  v58 = v36 - v59;
  absl::lts_20240722::StrCat(&v60, &v57, v56);
  operations_research::SolverLogger::LogInfo(v35, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1632, v56);
  if (SHIBYTE(v56[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56[0].__r_.__value_.__l.__data_);
  }

  v38 = *(this + 457);
  if (*v38)
  {
    v60 = "Number of basic fixed variables: ";
    v61 = 33;
    v39 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v5, v59, v37);
    v57 = v59;
    v58 = v39 - v59;
    absl::lts_20240722::StrCat(&v60, &v57, v56);
    operations_research::SolverLogger::LogInfo(v38, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1633, v56);
    if (SHIBYTE(v56[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56[0].__r_.__value_.__l.__data_);
    }

    v41 = *(this + 457);
    if (*v41)
    {
      v60 = "Number of basic free variables: ";
      v61 = 32;
      v42 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v6, v59, v40);
      v57 = v59;
      v58 = v42 - v59;
      absl::lts_20240722::StrCat(&v60, &v57, v56);
      operations_research::SolverLogger::LogInfo(v41, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1634, v56);
      if (SHIBYTE(v56[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56[0].__r_.__value_.__l.__data_);
      }

      v43 = *(this + 457);
      if (*v43)
      {
        v60 = "Number of super-basic variables: ";
        v61 = 33;
        StatusRow = operations_research::glop::VariablesInfo::GetStatusRow((this + 8520));
        v46 = *(this + 2);
        if (v46 < 1)
        {
          v49 = 0;
        }

        else
        {
          v47 = StatusRow;
          v48 = 0;
          v49 = 0;
          v50 = *v47;
          do
          {
            if (*(v50 + v48) == 4 && *(*(this + 1387) + 8 * v48) != 0.0)
            {
              v49 = (v49 + 1);
            }

            ++v48;
          }

          while (v46 != v48);
        }

        v51 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v49, v59, v45);
        v57 = v59;
        v58 = v51 - v59;
        absl::lts_20240722::StrCat(&v60, &v57, v56);
        operations_research::SolverLogger::LogInfo(v43, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1636, v56);
        if (SHIBYTE(v56[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56[0].__r_.__value_.__l.__data_);
        }
      }
    }
  }
}

void sub_23CBD05D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::glop::RevisedSimplex::ComputeNumberOfEmptyRows(operations_research::glop::RevisedSimplex *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v3 = *(this + 2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(this + 9);
    v6 = *(this + 6);
    do
    {
      v7 = *(v5 + 8 * v4);
      v8 = *(v5 + (((v4 << 32) + 0x100000000) >> 29)) - v7;
      if (v8 >= 1)
      {
        v9 = (v6 + 4 * v7);
        do
        {
          v10 = *v9++;
          *((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v10;
          --v8;
        }

        while (v8);
      }

      ++v4;
    }

    while (v4 != v3);
  }

  v17 = 0;
  if (*(this + 1) < 1)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    if (((*((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v12) & 1) == 0)
    {
      v11 = (v11 + 1);
      if (dword_27E25CF28 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::glop::RevisedSimplex::ComputeNumberOfEmptyRows(void)::$_0::operator() const(void)::site, dword_27E25CF28))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v16, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1656);
        v13 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v16, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, "Row ", 4uLL);
        v14 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v13, &v17);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, " is empty.", 0xAuLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v16);
      }
    }

    v12 = v17 + 1;
    v17 = v12;
  }

  while (v12 < *(this + 1));
  operator delete(0);
  return v11;
}

void sub_23CBD0894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t operations_research::glop::RevisedSimplex::ComputeNumberOfEmptyColumns(operations_research::glop::RevisedSimplex *this)
{
  v9 = 0;
  if (*(this + 2) < 1)
  {
    return 0;
  }

  v1 = 0;
  v2 = 0;
  do
  {
    if (*(*(this + 9) + (((v2 << 32) + 0x100000000) >> 29)) == *(*(this + 9) + 8 * v2))
    {
      v1 = (v1 + 1);
      if (dword_27E25CF40 >= 2)
      {
        v4 = v1;
        v5 = this;
        if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::glop::RevisedSimplex::ComputeNumberOfEmptyColumns(void)::$_0::operator() const(void)::site, dword_27E25CF40))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v8, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1667);
          v6 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v8, 2);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "Column ", 7uLL);
          v7 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v6, &v9);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " is empty.", 0xAuLL);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(v8);
        }

        this = v5;
        v1 = v4;
      }
    }

    v2 = v9 + 1;
    v9 = v2;
  }

  while (v2 < *(this + 2));
  return v1;
}

void sub_23CBD09F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::glop::RevisedSimplex::DisplayProblem(operations_research::glop::RevisedSimplex *this)
{
  v38 = *MEMORY[0x277D85DE8];
  if (dword_2810C05B0 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810C05A8, dword_2810C05B0))
  {
    operations_research::glop::RevisedSimplex::DisplayInfoOnVariables(this);
    *(&v35.__r_.__value_.__s + 23) = 5;
    strcpy(&v35, "min: ");
    if (*(this + 2) < 1)
    {
      goto LABEL_20;
    }

    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(this + 27) + 8 * v3);
      v6 = *(this + 52) + v2;
      v7 = *(v6 + 23);
      if ((v7 & 0x8000000000000000) != 0)
      {
        v8 = *v6;
        v7 = *(v6 + 8);
      }

      else
      {
        v8 = (*(this + 52) + v2);
      }

      explicit = atomic_load_explicit(&qword_281A21928, memory_order_acquire);
      if (!explicit)
      {
        LOBYTE(explicit) = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_simplex_display_numbers_as_fractions);
      }

      operations_research::glop::StringifyMonomial(v8, v7, explicit & 1, &__p, v5);
      v10 = v34;
      if ((v34 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v34 & 0x80u) != 0)
      {
        v10 = v33;
      }

      v36 = p_p;
      v37 = v10;
      absl::lts_20240722::StrAppend(&v35, &v36);
      if (v34 < 0)
      {
        operator delete(__p);
      }

      v4 |= v5 != 0.0;
      ++v3;
      v2 += 24;
    }

    while (v3 < *(this + 2));
    if ((v4 & 1) == 0)
    {
LABEL_20:
      v36 = " 0";
      v37 = 2;
      absl::lts_20240722::StrAppend(&v35, &v36);
    }

    if (dword_2810C05C8 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810C05C0, dword_2810C05C8))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(&v36, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3907);
      v29 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v36, 3);
      v30 = absl::lts_20240722::log_internal::LogMessage::operator<<(v29, &v35);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v30, ";", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v36);
    }

    if (*(this + 1) >= 1)
    {
      v12 = 0;
      do
      {
        MEMORY[0x23EED9020](&v35, &byte_23CE7F131);
        if (*(this + 2) >= 1)
        {
          v13 = 0;
          do
          {
            v14 = *(this + 9);
            v15 = *(v14 + 8 * v13);
            v16 = *(v14 + (((v13 << 32) + 0x100000000) >> 29)) - v15;
            if (v16 < 1)
            {
              v19 = 0.0;
            }

            else
            {
              v17 = (*(this + 6) + 4 * v15);
              v18 = (*(this + 3) + 8 * v15);
              v19 = 0.0;
              do
              {
                v20 = *v17++;
                if (v20 == v12)
                {
                  v19 = *v18;
                }

                ++v18;
                --v16;
              }

              while (v16);
            }

            v21 = *(this + 52);
            v22 = (v21 + 24 * v13);
            v23 = SHIBYTE(v22->__r_.__value_.__r.__words[2]);
            if ((v23 & 0x8000000000000000) != 0)
            {
              v22 = v22->__r_.__value_.__r.__words[0];
              v23 = *(v21 + 24 * v13 + 8);
            }

            v24 = atomic_load_explicit(&qword_281A21928, memory_order_acquire);
            if (!v24)
            {
              LOBYTE(v24) = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_simplex_display_numbers_as_fractions);
            }

            operations_research::glop::StringifyMonomial(v22, v23, v24 & 1, &__p, v19);
            v25 = v34;
            if ((v34 & 0x80u) == 0)
            {
              v26 = &__p;
            }

            else
            {
              v26 = __p;
            }

            if ((v34 & 0x80u) != 0)
            {
              v25 = v33;
            }

            v36 = v26;
            v37 = v25;
            absl::lts_20240722::StrAppend(&v35, &v36);
            if (v34 < 0)
            {
              operator delete(__p);
            }

            ++v13;
          }

          while (v13 < *(this + 2));
        }

        if (dword_2810C05E0 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810C05D8, dword_2810C05E0))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(&v36, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3916);
          v27 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v36, 3);
          v28 = absl::lts_20240722::log_internal::LogMessage::operator<<(v27, &v35);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v28, " = 0;", 5uLL);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v36);
        }

        ++v12;
      }

      while (v12 < *(this + 1));
    }

    if (dword_2810C05F8 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810C05F0, dword_2810C05F8))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(&v36, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3918);
      v31 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v36, 3);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v31, "------", 6uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v36);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23CBD0E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::RevisedSimplex::DisplayAllStats(operations_research::glop::RevisedSimplex *this)
{
  v9 = *MEMORY[0x277D85DE8];
  explicit = atomic_load_explicit(&qword_2810BD900, memory_order_acquire);
  if (explicit)
  {
    if ((explicit & 1) == 0)
    {
      return;
    }
  }

  else if ((absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_simplex_display_stats) & 1) == 0)
  {
    return;
  }

  v3 = MEMORY[0x277D85DF8];
  v4 = *MEMORY[0x277D85DF8];
  operations_research::glop::RevisedSimplex::StatString(&__p, this);
  p_p = &__p;
  v8 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  absl::lts_20240722::str_format_internal::FprintF(v4, "%s", 2, &p_p, 1uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v5 = *v3;
  operations_research::glop::RevisedSimplex::GetPrettySolverStats(&__p, this);
  p_p = &__p;
  v8 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  absl::lts_20240722::str_format_internal::FprintF(v5, "%s", 2, &p_p, 1uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23CBD106C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **operations_research::glop::RevisedSimplex::DualMinimize@<X0>(operations_research::glop::RevisedSimplex *this@<X0>, operations_research::TimeLimit *a2@<X2>, int a3@<W1>, uint64_t a4@<X8>)
{
  v8 = 0;
  v114 = *MEMORY[0x277D85DE8];
  v9 = this + 12980;
  v108 = &unk_284F41C30;
  *&v109 = this;
  *(&v109 + 1) = a2;
  v110 = &v108;
  v113 = &v111;
  v111 = &unk_284F41C30;
  v112 = v109;
  v94 = this + 20448;
  *(this + 5112) = 0;
  *(this + 110) = 0;
  v10 = (this + 640);
  *(this + 1791) = *(this + 1790);
  v100 = 0;
  v98 = 0.0;
  v99 = 0.0;
  v97 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v11 = *(this + 1797);
          v12 = *(this + 1646) + operations_research::glop::BasisFactorization::DeterministicTime((this + 3664)) + v11 * 0.000000002 + *(this + 1451) * 0.000000002 + *(this + 1719) * 0.000000002 + *(this + 1226) * 0.000000002;
          *(a2 + 14) = *(a2 + 14) + v12 - *(this + 1802);
          *(this + 1802) = v12;
          if (operations_research::TimeLimit::LimitReached(a2))
          {
LABEL_98:
            operations_research::glop::Status::Status(a4);
            goto LABEL_157;
          }

          if ((v8 & 1) == 0)
          {
            if (operations_research::glop::ReducedCosts::NeedsBasisRefactorization((this + 12264)))
            {
              v13 = 4;
            }

            else
            {
              if (!operations_research::glop::DualEdgeNorms::NeedsBasisRefactorization((this + 9840)))
              {
                goto LABEL_14;
              }

              v13 = 3;
            }

            *(this + 110) = v13;
          }

          if (!operations_research::glop::BasisFactorization::IsRefactorized((this + 3664)))
          {
            operations_research::glop::BasisFactorization::Refactorize((this + 3664), a4);
            if (*a4)
            {
              goto LABEL_157;
            }

            if (*(a4 + 31) < 0)
            {
              operator delete(*(a4 + 8));
            }

            operations_research::glop::UpdateRow::Invalidate((this + 11360));
            operations_research::glop::RevisedSimplex::PermuteBasis(this);
          }

LABEL_14:
          operations_research::glop::Status::Status(a4);
          if (*a4)
          {
            goto LABEL_157;
          }

          if (*(a4 + 31) < 0)
          {
            operator delete(*(a4 + 8));
          }

          if (operations_research::glop::BasisFactorization::IsRefactorized((this + 3664)))
          {
            if ((v8 | a3))
            {
              operations_research::glop::ReducedCosts::MakeReducedCostsPrecise(this + 12264);
            }

            if ((a3 & 1) == 0)
            {
              NonBasicBoxedVariables = operations_research::glop::VariablesInfo::GetNonBasicBoxedVariables((this + 8520));
              operations_research::glop::RevisedSimplex::MakeBoxedVariableDualFeasible<operations_research::Bitset64<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>(this, NonBasicBoxedVariables, 0);
              operations_research::glop::VariableValues::RecomputeBasicVariableValues((this + 11032));
              operations_research::glop::VariableValues::RecomputeDualPrices((this + 11032), v9[2956]);
              if (*(v94 + 1) == 1)
              {
                v16 = *(this + 23);
                if (v16 != INFINITY)
                {
                  v17 = *(this + 27);
                  v18 = *(this + 28) - v17;
                  if ((v18 >> 3) < 1)
                  {
                    if (v16 < 0.0)
                    {
                      goto LABEL_119;
                    }
                  }

                  else
                  {
                    v19 = *(this + 1387);
                    v20 = (v18 >> 3) & 0x7FFFFFFF;
                    v21 = 0.0;
                    v22 = 0.0;
                    do
                    {
                      v23 = *v17++;
                      v24 = v23;
                      v25 = *v19++;
                      v26 = v22 + v24 * v25;
                      v27 = v21 + v26;
                      v22 = v26 + v21 - (v21 + v26);
                      v21 = v27;
                      --v20;
                    }

                    while (v20);
                    if (v27 > v16)
                    {
LABEL_119:
                      v67 = *(this + 457);
                      if (*v67 == 1)
                      {
                        __dst = "Stopping the dual simplex because the objective limit ";
                        v106 = 54;
                        v68 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v104, v16, v15);
                        v102 = COERCE_DOUBLE(v104);
                        v103 = v68;
                        v101[0].__r_.__value_.__r.__words[0] = " has been reached.";
                        v101[0].__r_.__value_.__l.__size_ = 18;
                        absl::lts_20240722::StrCat(&__dst, &v102, v101, &__p);
                        operations_research::SolverLogger::LogInfo(v67, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3175, &__p);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }
                      }

                      *this = 8;
                      v94[8] = 1;
                      goto LABEL_156;
                    }
                  }
                }
              }
            }

            operations_research::glop::RevisedSimplex::DisplayIterationInfo(this, 0, *(this + 110));
            *(this + 110) = 0;
            if (a3)
            {
LABEL_32:
              operations_research::glop::RevisedSimplex::DualPhaseIChooseLeavingVariableRow(this, &v100, &v99, &v98, a4);
              goto LABEL_34;
            }
          }

          else
          {
            if (a3)
            {
              goto LABEL_32;
            }

            operations_research::glop::RevisedSimplex::MakeBoxedVariableDualFeasible<std::vector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>(this, this + 1790, 1);
            *(this + 1791) = *(this + 1790);
            operations_research::glop::VariableValues::UpdateDualPrices((this + 11032), *(this + 84), (*(this + 85) - *(this + 84)) >> 2);
          }

          operations_research::glop::RevisedSimplex::DualChooseLeavingVariableRow(this, &v100, &v99, &v98, a4);
LABEL_34:
          if (*a4)
          {
            goto LABEL_157;
          }

          if (*(a4 + 31) < 0)
          {
            break;
          }

          v28 = v100;
          if (v100 != -1)
          {
            goto LABEL_37;
          }

LABEL_41:
          if (operations_research::glop::BasisFactorization::IsRefactorized((this + 3664)) && v9[2] != 1)
          {
            if (a3)
            {
              if (*(this + 70))
              {
                if (dword_2810C0418 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0410, dword_2810C0418))
                {
                  absl::lts_20240722::log_internal::LogMessage::LogMessage(&__dst, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3227);
                  v92 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&__dst, 1);
                  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v92, "DUAL infeasible in dual phase I.", 0x20uLL);
                  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__dst);
                }

                *this = 2;
              }

              else
              {
                *this = 8;
              }
            }

            else
            {
              *this = 0;
            }

            goto LABEL_156;
          }

          if (dword_2810C0400 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C03F8, dword_2810C0400))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(&__dst, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3212);
            v58 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&__dst, 1);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v58, "Optimal reached, double checking.", 0x21uLL);
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__dst);
          }

          operations_research::glop::ReducedCosts::ClearAndRemoveCostShifts((this + 12264));
LABEL_64:
          *(this + 110) = 6;
          v8 = 1;
        }

        operator delete(*(a4 + 8));
        v28 = v100;
        if (v100 == -1)
        {
          goto LABEL_41;
        }

LABEL_37:
        operations_research::glop::UpdateRow::ComputeUnitRowLeftInverse(this + 11360, v28);
        v29 = v100;
        UnitRowLeftInverse = operations_research::glop::UpdateRow::GetUnitRowLeftInverse((this + 11360));
        if (operations_research::glop::DualEdgeNorms::TestPrecision(this + 9840, v29, UnitRowLeftInverse))
        {
          break;
        }

        if (a3)
        {
          v32 = *(*(this + 1784) + 8 * v100);
          EdgeSquaredNorms = operations_research::glop::DualEdgeNorms::GetEdgeSquaredNorms((this + 9840));
          v8 = 0;
          v34 = v100;
          v35 = 8 * v100;
          v36 = *(EdgeSquaredNorms + v35);
          *(*(this + 1329) + ((v100 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v100;
          v37 = v32 * v32 / v36;
          *(*(this + 1325) + v35) = v37;
          if (*(this + 1332) <= v37)
          {
            operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::UpdateTopK(this + 10552, v34, v37);
            v8 = 0;
          }
        }

        else
        {
          LODWORD(__dst) = v100;
          operations_research::glop::VariableValues::UpdateDualPrices((this + 11032), &__dst, 1);
          v8 = 0;
        }
      }

      operations_research::glop::UpdateRow::ComputeUpdateRow(this + 1420, v100);
      v31 = *v9;
      if (a3)
      {
        operations_research::glop::EnteringVariable::DualPhaseIChooseEnteringColumn((this + 11360), this + 13176, v31, &v97, a4, v99);
      }

      else
      {
        operations_research::glop::EnteringVariable::DualChooseEnteringColumn((this + 11360), this + 13176, v31, this + 1790, &v97, a4, v99);
      }

      if (*a4)
      {
        goto LABEL_157;
      }

      if (*(a4 + 31) < 0)
      {
        operator delete(*(a4 + 8));
        v38 = v97;
        if (v97 != -1)
        {
          goto LABEL_53;
        }

LABEL_62:
        if ((*v9 & 1) == 0)
        {
          if (dword_2810C0430 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0428, dword_2810C0430))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(&__dst, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3269);
            v59 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&__dst, 1);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v59, "No entering column. Double checking...", 0x26uLL);
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__dst);
          }

          goto LABEL_64;
        }

        if (a3)
        {
          if (dword_2810C0448 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0440, dword_2810C0448))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(&__dst, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3278);
            v93 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&__dst, 1);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v93, "Unbounded dual feasibility problem !?", 0x25uLL);
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__dst);
          }

          *this = 9;
          goto LABEL_156;
        }

        *this = 5;
        v69 = operations_research::glop::UpdateRow::GetUnitRowLeftInverse((this + 11360));
        if ((this + 528) != v69)
        {
          std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 66, *v69, *(v69 + 8), (*(v69 + 8) - *v69) >> 3);
        }

        operations_research::glop::UpdateRow::ComputeFullUpdateRow(this + 11360, v100, this + 69);
        if (v99 >= 0.0)
        {
          goto LABEL_156;
        }

        v70 = *(this + 66);
        v71 = *(this + 67) - v70;
        if ((v71 >> 3) >= 1)
        {
          v72 = (v71 >> 3) & 0x7FFFFFFF;
          if (v72 < 4)
          {
            v73 = 0;
LABEL_144:
            v78 = v73 - v72;
            v79 = &v70->f64[v73];
            do
            {
              *v79 = -*v79;
              ++v79;
              v80 = __CFADD__(v78++, 1);
            }

            while (!v80);
            goto LABEL_147;
          }

          v74 = (v71 >> 3) & 3;
          v73 = v72 - v74;
          v75 = v70 + 1;
          v76 = v72 - v74;
          do
          {
            v77 = vnegq_f64(*v75);
            v75[-1] = vnegq_f64(v75[-1]);
            *v75 = v77;
            v75 += 2;
            v76 -= 4;
          }

          while (v76);
          if (v74)
          {
            goto LABEL_144;
          }
        }

LABEL_147:
        v81 = *(this + 69);
        v82 = *(this + 70) - v81;
        if ((v82 >> 3) >= 1)
        {
          v83 = (v82 >> 3) & 0x7FFFFFFF;
          if (v83 >= 4)
          {
            v85 = (v82 >> 3) & 3;
            v84 = v83 - v85;
            v86 = v81 + 1;
            v87 = v83 - v85;
            do
            {
              v88 = vnegq_f64(*v86);
              v86[-1] = vnegq_f64(v86[-1]);
              *v86 = v88;
              v86 += 2;
              v87 -= 4;
            }

            while (v87);
            if (!v85)
            {
              goto LABEL_156;
            }
          }

          else
          {
            v84 = 0;
          }

          v89 = v84 - v83;
          v90 = &v81->f64[v84];
          do
          {
            *v90 = -*v90;
            ++v90;
            v80 = __CFADD__(v89++, 1);
          }

          while (!v80);
        }

LABEL_156:
        operations_research::glop::Status::Status(a4);
        goto LABEL_157;
      }

      v38 = v97;
      if (v97 == -1)
      {
        goto LABEL_62;
      }

LABEL_53:
      v39 = *(*(this + 1446) + 8 * v38);
      if (fabs(v39) >= *(this + 2012) || (*v9 & 1) != 0)
      {
        break;
      }

      if (dword_2810C0460 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0458, dword_2810C0460))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&__dst, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3301);
        v52 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&__dst, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v52, "Trying not to pivot by ", 0x17uLL);
        v102 = v39;
        absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v52, &v102);
LABEL_97:
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__dst);
      }

LABEL_90:
      v8 = 1;
      *(this + 110) = 1;
    }

    operations_research::glop::BasisFactorization::RightSolveForProblemColumn(this + 3664, v38, v10);
    v41 = *(this + 84);
    v42 = *(this + 85);
    if (v41 == v42)
    {
      v48 = *(this + 1);
      v43 = *(this + 80);
      LODWORD(__dst) = 0;
      if (v48 < 1)
      {
        v45 = 0.0;
      }

      else
      {
        v49 = 0;
        v45 = 0.0;
        do
        {
          v51 = *&v43[8 * v49];
          if (v51 != 0.0)
          {
            std::vector<int>::push_back[abi:ne200100](this + 672, &__dst);
            v50 = fabs(v51);
            if (v45 < v50)
            {
              v45 = v50;
            }

            v49 = __dst;
          }

          LODWORD(__dst) = ++v49;
        }

        while (v49 < v48);
        v43 = *v10;
      }
    }

    else
    {
      v43 = *v10;
      v44 = v42 - v41;
      v45 = 0.0;
      if (v44 >= 1)
      {
        do
        {
          v46 = *v41++;
          v47 = fabs(*&v43[8 * v46]);
          if (v45 < v47)
          {
            v45 = v47;
          }

          --v44;
        }

        while (v44);
      }
    }

    *(this + 90) = v45;
    v53 = fabs(*&v43[8 * v100]);
    if (v53 < v45 * *(this + 2001) && (*v9 & 1) == 0)
    {
      if (dword_2810C0478 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0470, dword_2810C0478))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&__dst, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3317);
        v60 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&__dst, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v60, "Trying not pivot by ", 0x14uLL);
        v102 = v39;
        v61 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v60, &v102);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v61, " (", 2uLL);
        v102 = *&(*v10)[8 * v100];
        v62 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v61, &v102);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v62, ") because the direction has a norm of ", 0x26uLL);
        v102 = *(this + 90);
        absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v62, &v102);
        goto LABEL_97;
      }

      goto LABEL_90;
    }

    if (v53 <= 1.0e-20)
    {
      break;
    }

    if (*(this + 1793) == *(this + 2009))
    {
      goto LABEL_98;
    }

    operations_research::glop::ReducedCosts::ShiftCostIfNeeded(this + 12264, (v39 <= 0.0) ^ (v99 > 0.0), v97);
    operations_research::glop::ReducedCosts::UpdateBeforeBasisPivot(this + 12264, v97, v100, v10, this + 1420);
    v54 = v97;
    v55 = v100;
    v56 = operations_research::glop::UpdateRow::GetUnitRowLeftInverse((this + 11360));
    operations_research::glop::DualEdgeNorms::UpdateBeforeBasisPivot(this + 1230, v54, v55, v10, v56);
    if (a3)
    {
      operations_research::glop::RevisedSimplex::DualPhaseIUpdatePrice(this, v100, v97);
    }

    else
    {
      operations_research::glop::VariableValues::UpdateOnPivoting(this + 11032, v10, v97, (*(*(this + 1387) + 8 * *(*(this + 46) + 4 * v100)) - v98) / *(*(this + 80) + 8 * v100));
    }

    v57 = *(*(this + 46) + 4 * v100);
    operations_research::glop::RevisedSimplex::UpdateAndPivot(this, v97, v100, a4, v98);
    if (*a4)
    {
      goto LABEL_157;
    }

    if (*(a4 + 31) < 0)
    {
      operator delete(*(a4 + 8));
    }

    operations_research::glop::VariableValues::SetNonBasicVariableValueFromStatus(this + 1379, v57);
    v8 = 0;
    ++*(this + 1793);
  }

  __dst = "trying to pivot with number too small: ";
  v106 = 39;
  v63 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v104, *&v43[8 * v100], v40);
  v102 = COERCE_DOUBLE(v104);
  v103 = v63;
  absl::lts_20240722::StrCat(&__dst, &v102, v101);
  v64 = *(this + 457);
  if (*v64 == 1)
  {
    if ((v101[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = v101;
    }

    else
    {
      v65 = v101[0].__r_.__value_.__r.__words[0];
    }

    if ((v101[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v101[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v101[0].__r_.__value_.__l.__size_;
    }

    if (size >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (size >= 0x17)
    {
      operator new();
    }

    v107 = size;
    if (size)
    {
      memmove(&__dst, v65, size);
    }

    *(&__dst + size) = 0;
    operations_research::SolverLogger::LogInfo(v64, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3335, &__dst);
    if (v107 < 0)
    {
      operator delete(__dst);
    }
  }

  if (SHIBYTE(v101[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v95, v101[0].__r_.__value_.__l.__data_, v101[0].__r_.__value_.__l.__size_);
  }

  else
  {
    v95 = v101[0];
  }

  operations_research::glop::Status::Status(a4, 1, &v95);
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v101[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101[0].__r_.__value_.__l.__data_);
  }

LABEL_157:
  if (!v113)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v113 + 6))(v113);
  result = v113;
  if (v113 == &v111)
  {
    return (*(*v113 + 4))(v113);
  }

  if (v113)
  {
    return (*(*v113 + 5))(v113);
  }

  return result;
}

void operations_research::glop::RevisedSimplex::PermuteBasis(operations_research::glop::RevisedSimplex *this)
{
  if (*(this + 726) != *(this + 727))
  {
    v2 = (this + 392);
    operations_research::glop::ApplyPermutation<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>(this + 726, (this + 368), (this + 392));
    v3 = *(this + 51);
    *(this + 51) = *(this + 48);
    v4 = *v2;
    *v2 = *(this + 23);
    *(this + 23) = v4;
    *(this + 48) = v3;
    if (*(this + 1784) != *(this + 1785))
    {
      operations_research::glop::ApplyPermutation<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>>(this + 726, this + 1784, this + 1787);
      v5 = *(this + 1789);
      v6 = *(this + 14296);
      *(this + 1789) = *(this + 1786);
      *(this + 14296) = *(this + 892);
      *(this + 892) = v6;
      *(this + 1786) = v5;
    }

    operations_research::glop::ReducedCosts::UpdateDataOnBasisPermutation(this + 12264);
    operations_research::glop::DualEdgeNorms::UpdateDataOnBasisPermutation(this + 9840, this + 726);
    *(this + 727) = *(this + 726);
    *(this + 730) = *(this + 729);
  }
}

void operations_research::glop::RevisedSimplex::MakeBoxedVariableDualFeasible<operations_research::Bitset64<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>(double *a1, uint64_t a2, char a3)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v6 = a1[1642];
  ReducedCosts = operations_research::glop::ReducedCosts::GetReducedCosts((a1 + 1533));
  StatusRow = operations_research::glop::VariablesInfo::GetStatusRow((a1 + 1065));
  v7 = *(a2 + 8);
  v8 = (*(a2 + 16) - v7) >> 3;
  if (*(a2 + 16) == v7)
  {
    v11 = 0;
    v12 = 0;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v9 = *v7;
    if (*v7)
    {
      i = 0;
    }

    else
    {
      if (v8 == 1)
      {
        return;
      }

      v24 = 1;
      for (i = 64; ; i += 64)
      {
        v9 = v7[v24];
        if (v9)
        {
          break;
        }

        if (v8 == ++v24)
        {
          return;
        }
      }
    }

    v11 = i | __clz(__rbit64(v9));
    v12 = (v9 - 1) & v9;
    if (!v8)
    {
      return;
    }
  }

  v25 = a3;
  v13 = 0;
  v14 = 0;
  v15 = v8 - 1;
  while (1)
  {
    v16 = *(ReducedCosts + 8 * v11);
    v17 = *(*StatusRow + v11);
    if (v16 > v6 && v17 == 3)
    {
      operations_research::glop::VariablesInfo::UpdateToNonBasicStatus((a1 + 1065), v11, 2);
      v20 = v14;
      v21 = v14 >> 2;
      if ((v21 + 1) >> 62)
      {
        goto LABEL_43;
      }

      if (v21 != -1)
      {
        if (!((v21 + 1) >> 62))
        {
          operator new();
        }

LABEL_44:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v22 = -4;
      goto LABEL_29;
    }

    if (v16 < -v6 && v17 == 2)
    {
      operations_research::glop::VariablesInfo::UpdateToNonBasicStatus((a1 + 1065), v11, 3);
      v20 = v14;
      if (((v14 >> 2) + 1) >> 62)
      {
LABEL_43:
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v14 >> 2 != -1)
      {
        if (!(((v14 >> 2) + 1) >> 62))
        {
          operator new();
        }

        goto LABEL_44;
      }

      v22 = 4 * (v14 >> 2);
LABEL_29:
      *v22 = v11;
      v14 = v22 + 4;
      memcpy(0, 0, v20);
      v28 = 0;
      v30 = 0;
      v13 = 0;
      v29 = v14;
    }

    v23 = v11 >> 6;
    if (!v12)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v12)) | (v23 << 6);
    v12 &= v12 - 1;
  }

  while (v15 != v23)
  {
    v12 = v7[++v23];
    if (v12)
    {
      goto LABEL_8;
    }
  }

  if (v14)
  {
    operations_research::IntegerDistribution::Add((a1 + 1878), v14 >> 2);
    operations_research::glop::VariableValues::UpdateGivenNonBasicVariables((a1 + 1379), &v28, v25);
    v13 = v28;
  }

  if (v13)
  {
    v29 = v13;
    operator delete(v13);
  }
}

void sub_23CBD2454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::RevisedSimplex::DisplayErrors(operations_research::glop::RevisedSimplex *this)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *(this + 457);
  if (*v1 != 1)
  {
    return;
  }

  v27 = "Current status: ";
  v28 = 16;
  operations_research::glop::GetProblemStatusString(*this, v21);
  v3 = v22;
  if ((v22 & 0x80u) == 0)
  {
    v4 = v21;
  }

  else
  {
    v4 = v21[0];
  }

  if ((v22 & 0x80u) != 0)
  {
    v3 = v21[1];
  }

  v24 = v4;
  v25 = v3;
  absl::lts_20240722::StrCat(&v27, &v24, &__p);
  operations_research::SolverLogger::LogInfo(v1, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3729, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_9:
      v5 = *(this + 457);
      if (*v5 != 1)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v21[0]);
  v5 = *(this + 457);
  if (*v5 != 1)
  {
    return;
  }

LABEL_13:
  v27 = "Primal infeasibility (bounds) = ";
  v28 = 32;
  v6 = operations_research::glop::VariableValues::ComputeMaximumPrimalInfeasibility((this + 11032));
  v8 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v26, v6, v7);
  v24 = v26;
  v25 = v8;
  absl::lts_20240722::StrCat(&v27, &v24, &__p);
  operations_research::SolverLogger::LogInfo(v5, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3731, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v9 = *(this + 457);
    if ((*v9 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v9 = *(this + 457);
    if ((*v9 & 1) == 0)
    {
      return;
    }
  }

  v27 = "Primal residual |A.x - b| = ";
  v28 = 28;
  v10 = operations_research::glop::VariableValues::ComputeMaximumPrimalResidual((this + 11032));
  v12 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v26, v10, v11);
  v24 = v26;
  v25 = v12;
  absl::lts_20240722::StrCat(&v27, &v24, &__p);
  operations_research::SolverLogger::LogInfo(v9, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3733, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v13 = *(this + 457);
    if ((*v13 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v13 = *(this + 457);
    if ((*v13 & 1) == 0)
    {
      return;
    }
  }

  v27 = "Dual infeasibility (reduced costs) = ";
  v28 = 37;
  operations_research::glop::ReducedCosts::ComputeMaximumDualInfeasibility((this + 12264));
  v16 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v26, v15, v14);
  v24 = v26;
  v25 = v16;
  absl::lts_20240722::StrCat(&v27, &v24, &__p);
  operations_research::SolverLogger::LogInfo(v13, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3735, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v17 = *(this + 457);
  if (*v17)
  {
    v27 = "Dual residual |c_B - y.B| = ";
    v28 = 28;
    v18 = operations_research::glop::ReducedCosts::ComputeMaximumDualResidual((this + 12264));
    v20 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v26, v18, v19);
    v24 = v26;
    v25 = v20;
    absl::lts_20240722::StrCat(&v27, &v24, &__p);
    operations_research::SolverLogger::LogInfo(v17, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3737, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23CBD2778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::RevisedSimplex::PrimalMinimize(operations_research::glop::RevisedSimplex *this@<X0>, operations_research::TimeLimit *a2@<X1>, uint64_t a3@<X8>)
{
  v131 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    operator new();
  }

  v6 = (this + 20448);
  v7 = this + 12980;
  v125 = &unk_284F41BB0;
  *&v126 = this;
  *(&v126 + 1) = a2;
  v127 = &v125;
  p_p = &__p;
  __p = &unk_284F41BB0;
  *__p_8 = v126;
  *(this + 5112) = 0;
  v122 = 0;
  *(this + 110) = 0;
  *(this + 13760) = 1;
  if (!*(this + 5113))
  {
    v8 = *(this + 27);
    v9 = *(this + 28);
    v10 = *(this + 2);
    v123[0] = 0;
    v11 = (v9 - v8) >> 3;
    if (v10 <= v11)
    {
      if (v10 < v11)
      {
        *(this + 28) = &v8[8 * v10];
      }
    }

    else
    {
      std::vector<double>::__append(this + 216, v10 - v11, v123);
      v8 = *(this + 27);
    }

    bzero(v8, 8 * v10);
    v12 = *(this + 1);
    if (v12 >= 1)
    {
      v13 = *(*(this + 1379) + 72);
      v14 = *(this + 1387);
      v15 = *(this + 1382);
      v16 = *(v15 + 8);
      v17 = *(v15 + 32);
      v18 = **(this + 1381);
      v19 = *(this + 27);
      do
      {
        v20 = *v18++;
        v21 = 8 * v20;
        v22 = *(v14 + v21);
        v23 = 1.0;
        if (v22 - *(v17 + v21) <= v13)
        {
          v23 = 0.0;
          if (*(v16 + v21) - v22 > v13)
          {
            v23 = -1.0;
          }
        }

        if (v23 != *(v19 + v21))
        {
          *(v19 + v21) = v23;
        }

        --v12;
      }

      while (v12);
    }

    operations_research::glop::ReducedCosts::ResetForNewObjective(this + 12264);
  }

  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v24 = *(this + 1797);
            v25 = *(this + 1646) + operations_research::glop::BasisFactorization::DeterministicTime((this + 3664)) + v24 * 0.000000002 + *(this + 1451) * 0.000000002 + *(this + 1719) * 0.000000002 + *(this + 1226) * 0.000000002;
            *(a2 + 14) = *(a2 + 14) + v25 - *(this + 1802);
            *(this + 1802) = v25;
            if (operations_research::TimeLimit::LimitReached(a2))
            {
              goto LABEL_164;
            }

            if (v122)
            {
              goto LABEL_24;
            }

            if (operations_research::glop::ReducedCosts::NeedsBasisRefactorization((this + 12264)))
            {
              v26 = 4;
LABEL_22:
              *(this + 110) = v26;
              v122 = 1;
              goto LABEL_24;
            }

            if ((v122 & 1) == 0)
            {
              if (!operations_research::glop::PrimalEdgeNorms::NeedsBasisRefactorization((this + 8880)))
              {
                if ((v122 & 1) == 0)
                {
                  goto LABEL_29;
                }

                goto LABEL_24;
              }

              v26 = 3;
              goto LABEL_22;
            }

LABEL_24:
            if (!operations_research::glop::BasisFactorization::IsRefactorized((this + 3664)))
            {
              operations_research::glop::BasisFactorization::Refactorize((this + 3664), a3);
              if (*a3)
              {
                goto LABEL_167;
              }

              if (*(a3 + 31) < 0)
              {
                operator delete(*(a3 + 8));
              }

              operations_research::glop::UpdateRow::Invalidate((this + 11360));
              operations_research::glop::RevisedSimplex::PermuteBasis(this);
            }

LABEL_29:
            v122 = 0;
            operations_research::glop::Status::Status(a3);
            if (*a3)
            {
              goto LABEL_167;
            }

            if (*(a3 + 31) < 0)
            {
              operator delete(*(a3 + 8));
            }

            if (operations_research::glop::BasisFactorization::IsRefactorized((this + 3664)))
            {
              operations_research::glop::RevisedSimplex::CorrectErrorsOnVariableValues(this);
              operations_research::glop::RevisedSimplex::DisplayIterationInfo(this, 1, *(this + 110));
              *(this + 110) = 0;
              v27 = v6[1];
              if (v27)
              {
                if (v27 != 1)
                {
                  goto LABEL_41;
                }
              }

              else
              {
                v64 = *(this + 1);
                if (v64 < 1)
                {
                  goto LABEL_41;
                }

                v65 = 0;
                v66 = 0;
                v67 = *(*(this + 1379) + 72);
                v68 = *(this + 1387);
                v69 = *(this + 1382);
                v70 = *(v69 + 8);
                v71 = *(v69 + 32);
                v72 = **(this + 1381);
                v73 = *(this + 27);
                do
                {
                  while (1)
                  {
                    v74 = 8 * *(v72 + 4 * v65);
                    v75 = *(v68 + v74);
                    v76 = 1.0;
                    if (v75 - *(v71 + v74) <= v67)
                    {
                      v76 = 0.0;
                      if (*(v70 + 8 * *(v72 + 4 * v65)) - v75 > v67)
                      {
                        v76 = -1.0;
                      }
                    }

                    if (v76 == *(v73 + 8 * *(v72 + 4 * v65)))
                    {
                      break;
                    }

                    *(v73 + 8 * *(v72 + 4 * v65)) = v76;
                    v66 = 1;
                    if (v64 - 1 == v65++)
                    {
                      goto LABEL_88;
                    }
                  }

                  ++v65;
                }

                while (v64 != v65);
                if ((v66 & 1) == 0)
                {
                  goto LABEL_41;
                }

LABEL_88:
                operations_research::glop::ReducedCosts::ResetForNewObjective(this + 12264);
                if (v6[1] != 1)
                {
                  goto LABEL_41;
                }
              }

              v28 = *(this + 27);
              v29 = *(this + 28) - v28;
              if ((v29 >> 3) < 1)
              {
                if (*(this + 22) > 0.0)
                {
                  goto LABEL_155;
                }
              }

              else
              {
                v30 = *(this + 1387);
                v31 = (v29 >> 3) & 0x7FFFFFFF;
                v32 = 0.0;
                v33 = 0.0;
                do
                {
                  v34 = *v28++;
                  v35 = v34;
                  v36 = *v30++;
                  v37 = v33 + v35 * v36;
                  v38 = v32 + v37;
                  v33 = v37 + v32 - (v32 + v37);
                  v32 = v38;
                  --v31;
                }

                while (v31);
                if (v38 < *(this + 22))
                {
LABEL_155:
                  if (dword_2810C0370 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0368, dword_2810C0370))
                  {
                    absl::lts_20240722::log_internal::LogMessage::LogMessage(v123, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 2839);
                    v115 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v123, 1);
                    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v115, "Stopping the primal simplex because", 0x23uLL);
                    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v115, " the objective limit ", 0x15uLL);
                    v124 = *(this + 22);
                    v116 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v115, &v124);
                    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v116, " has been reached.", 0x12uLL);
                    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v123);
                  }

                  *this = 7;
                  *(v6 + 8) = 1;
                  operations_research::glop::Status::Status(a3);
                  goto LABEL_167;
                }
              }
            }

            else if (!v6[1])
            {
              v51 = *(this + 84);
              v52 = *(this + 85);
              if (v51 != v52)
              {
                v53 = 0;
                v54 = *(*(this + 1379) + 72);
                v55 = *(this + 1387);
                v56 = *(this + 1382);
                v57 = *(v56 + 8);
                v58 = *(v56 + 32);
                v59 = **(this + 1381);
                v60 = *(this + 27);
                do
                {
                  while (1)
                  {
                    v61 = 8 * *(v59 + 4 * *v51);
                    v62 = *(v55 + v61);
                    v63 = 1.0;
                    if (v62 - *(v58 + v61) <= v54)
                    {
                      v63 = 0.0;
                      if (*(v57 + 8 * *(v59 + 4 * *v51)) - v62 > v54)
                      {
                        v63 = -1.0;
                      }
                    }

                    if (v63 == *(v60 + 8 * *(v59 + 4 * *v51)))
                    {
                      break;
                    }

                    *(v60 + 8 * *(v59 + 4 * *v51++)) = v63;
                    v53 = 1;
                    if (v51 == v52)
                    {
                      goto LABEL_86;
                    }
                  }

                  ++v51;
                }

                while (v51 != v52);
                if ((v53 & 1) == 0)
                {
                  goto LABEL_41;
                }

LABEL_86:
                operations_research::glop::ReducedCosts::ResetForNewObjective(this + 12264);
              }
            }

LABEL_41:
            BestEnteringColumn = operations_research::glop::PrimalPrices::GetBestEnteringColumn((v7 + 780));
            v121 = BestEnteringColumn;
            if (BestEnteringColumn != -1)
            {
              break;
            }

            if (*v7 == 1 && operations_research::glop::BasisFactorization::IsRefactorized((this + 3664)))
            {
              if (v6[1])
              {
                v96 = 0;
              }

              else
              {
                v97 = operations_research::glop::VariableValues::ComputeMaximumPrimalInfeasibility((this + 11032));
                if (v97 >= *(this + 1997))
                {
                  if (dword_2810C0388 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0380, dword_2810C0388))
                  {
                    absl::lts_20240722::log_internal::LogMessage::LogMessage(v123, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 2866);
                    v117 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v123, 1);
                    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v117, "Infeasible problem! infeasibility = ", 0x24uLL);
                    v124 = v97;
                    absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v117, &v124);
                    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v123);
                  }

                  v96 = 1;
                }

                else
                {
                  v96 = 7;
                }
              }

              goto LABEL_163;
            }

            if (dword_2810C03A0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0398, dword_2810C03A0))
            {
              absl::lts_20240722::log_internal::LogMessage::LogMessage(v123, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 2876);
              v94 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v123, 1);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v94, "Optimal reached, double checking...", 0x23uLL);
              absl::lts_20240722::log_internal::LogMessage::~LogMessage(v123);
            }

LABEL_52:
            operations_research::glop::ReducedCosts::MakeReducedCostsPrecise(this + 12264);
            v122 = 1;
            *(this + 110) = 6;
          }

          operations_research::glop::BasisFactorization::RightSolveForProblemColumn(this + 3664, BestEnteringColumn, this + 80);
          v40 = *(this + 84);
          v41 = *(this + 85);
          if (v40 == v41)
          {
            v46 = *(this + 1);
            v47 = *(this + 80);
            LODWORD(v123[0]) = 0;
            if (v46 < 1)
            {
              v43 = 0.0;
            }

            else
            {
              v48 = 0;
              v43 = 0.0;
              do
              {
                v50 = *(v47 + 8 * v48);
                if (v50 != 0.0)
                {
                  std::vector<int>::push_back[abi:ne200100](this + 672, v123);
                  v49 = fabs(v50);
                  if (v43 < v49)
                  {
                    v43 = v49;
                  }

                  v48 = v123[0];
                }

                LODWORD(v123[0]) = ++v48;
              }

              while (v48 < v46);
            }
          }

          else
          {
            v42 = v41 - v40;
            if (v42 < 1)
            {
              v43 = 0.0;
            }

            else
            {
              v43 = 0.0;
              do
              {
                v44 = *v40++;
                v45 = fabs(*(*(this + 80) + 8 * v44));
                if (v43 < v45)
                {
                  v43 = v45;
                }

                --v42;
              }

              while (v42);
            }
          }

          *(this + 90) = v43;
          if (operations_research::glop::PrimalEdgeNorms::TestEnteringEdgeNormPrecision(this + 8880, v121, (this + 640)))
          {
            break;
          }

          operations_research::glop::PrimalPrices::RecomputePriceAt((v7 + 780), v121);
        }

        v78 = operations_research::glop::ReducedCosts::TestEnteringReducedCostPrecision((this + 12264), v121, this + 80);
        operations_research::glop::PrimalPrices::RecomputePriceAt((v7 + 780), v121);
        if (operations_research::glop::ReducedCosts::IsValidPrimalEnteringCandidate(this + 12264, v121))
        {
          break;
        }

        operations_research::glop::ReducedCosts::MakeReducedCostsPrecise(this + 12264);
        if (dword_2810C03B8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C03B0, dword_2810C03B8))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v123, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 2905);
          v79 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v123, 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v79, "Skipping col #", 0xEuLL);
          v80 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v79, &v121);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v80, " whose reduced cost is no longer valid under precise reduced cost: ", 0x43uLL);
          v124 = v78;
          absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v80, &v124);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(v123);
        }
      }

      if (*(this + 1793) == *(this + 2009))
      {
        goto LABEL_164;
      }

      v124 = 0.0;
      v120 = 0;
      v119 = 0.0;
      if (v6[1])
      {
        operations_research::glop::RevisedSimplex::ChooseLeavingVariableRow(this, v121, &v122, &v120, &v124, &v119, a3, v78);
        if (*a3)
        {
          goto LABEL_167;
        }

        if (*(a3 + 31) < 0)
        {
          operator delete(*(a3 + 8));
        }
      }

      else
      {
        operations_research::glop::RevisedSimplex::PrimalPhaseIChooseLeavingVariableRow(this, v121, &v122, &v120, &v124, &v119, v78);
      }

      if (v122 != 1)
      {
        break;
      }

      *(this + 110) = 1;
    }

    if (fabs(v124) == INFINITY)
    {
      break;
    }

    if (v78 <= 0.0)
    {
      v81 = v124;
    }

    else
    {
      v81 = -v124;
    }

    if (v6[1])
    {
      if (v120 == -1)
      {
        goto LABEL_127;
      }

      v82 = *(*(this + 46) + 4 * v120);
      v83 = -(*(*(this + 80) + 8 * v120) * v81);
      v84 = v83 <= 0.0;
      if (v83 == 0.0)
      {
        goto LABEL_126;
      }
    }

    else
    {
      if (v120 == -1)
      {
LABEL_127:
        v88 = 0;
        v82 = -1;
        goto LABEL_128;
      }

      v85 = *(this + 46);
      v86 = 4 * v120;
      v87 = *(*(this + 80) + 8 * v120);
      v81 = (*(*(this + 1387) + 8 * *(v85 + v86)) - v119) / v87;
      v82 = *(v85 + v86);
      v83 = -(v87 * v81);
      v84 = v83 <= 0.0;
      if (v83 == 0.0)
      {
        goto LABEL_126;
      }
    }

    if (!v84 && *(*(this + 1387) + 8 * v82) >= v119)
    {
LABEL_126:
      v88 = 1;
      goto LABEL_128;
    }

    v88 = v83 < 0.0 && *(*(this + 1387) + 8 * v82) <= v119;
LABEL_128:
    operations_research::glop::VariableValues::UpdateOnPivoting(this + 11032, this + 80, v121, v81);
    if (v120 == -1)
    {
      if (v81 > 0.0)
      {
        v90 = 3;
        goto LABEL_138;
      }

      if (v81 < 0.0)
      {
        v90 = 2;
LABEL_138:
        v91 = v121;
        operations_research::glop::VariablesInfo::UpdateToNonBasicStatus(this + 8520, v121, v90);
        operations_research::glop::VariableValues::SetNonBasicVariableValueFromStatus(this + 1379, v91);
      }

      operations_research::glop::PrimalPrices::SetAndDebugCheckThatColumnIsDualFeasible((v7 + 780), v121);
      goto LABEL_140;
    }

    operations_research::glop::PrimalEdgeNorms::UpdateBeforeBasisPivot(this + 2220, v121, *(*(this + 46) + 4 * v120), v120, this + 80, this + 1420);
    operations_research::glop::ReducedCosts::UpdateBeforeBasisPivot(this + 12264, v121, v120, this + 80, this + 1420);
    operations_research::glop::PrimalPrices::UpdateBeforeBasisPivot(v7 + 780, v121, (this + 11360));
    v89 = v119;
    if (!v88)
    {
      *(*(this + 1387) + 8 * v82) = v119;
    }

    operations_research::glop::RevisedSimplex::UpdateAndPivot(this, v121, v120, a3, v89);
    if (*a3)
    {
      goto LABEL_167;
    }

    if (*(a3 + 31) < 0)
    {
      operator delete(*(a3 + 8));
    }

LABEL_140:
    if (!v6[1] && v120 != -1)
    {
      operations_research::glop::VariableValues::SetNonBasicVariableValueFromStatus(this + 1379, v82);
      operations_research::glop::ReducedCosts::SetNonBasicVariableCostToZero(this + 12264, v82, (*(this + 27) + 8 * v82));
      operations_research::glop::PrimalPrices::RecomputePriceAt((v7 + 780), v82);
    }

    v92 = *v6;
    if (v124 == 0.0)
    {
      v93 = v92 + 1;
    }

    else
    {
      if (v92 < 1)
      {
        goto LABEL_148;
      }

      operations_research::IntegerDistribution::Add(this + 15104, v92);
      v93 = 0;
    }

    *v6 = v93;
LABEL_148:
    ++*(this + 1793);
  }

  if (!operations_research::glop::BasisFactorization::IsRefactorized((this + 3664)) || (*v7 & 1) == 0)
  {
    if (dword_2810C03D0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C03C8, dword_2810C03D0))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v123, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 2941);
      v95 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v123, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v95, "Infinite step length, double checking...", 0x28uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v123);
    }

    goto LABEL_52;
  }

  if (!v6[1])
  {
    if (dword_2810C03E8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C03E0, dword_2810C03E8))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v123, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 2949);
      v118 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v123, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v118, "Unbounded feasibility problem !?", 0x20uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v123);
    }

    v96 = 9;
LABEL_163:
    *this = v96;
    goto LABEL_164;
  }

  *this = 4;
  operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,double>::AssignToZero(this + 63, *(this + 2));
  v99 = *(this + 1);
  v100 = *(this + 63);
  if (v99 >= 1)
  {
    v101 = *(this + 46);
    v102 = *(this + 80);
    do
    {
      v103 = *v102++;
      v104 = -v103;
      LODWORD(v103) = *v101++;
      v100->f64[SLODWORD(v103)] = v104;
      --v99;
    }

    while (v99);
  }

  v100->f64[v121] = 1.0;
  if (v78 > 0.0)
  {
    v105 = *(this + 64) - v100;
    if ((v105 >> 3) >= 1)
    {
      v106 = (v105 >> 3) & 0x7FFFFFFF;
      if (v106 < 4)
      {
        v107 = 0;
        goto LABEL_186;
      }

      v108 = (v105 >> 3) & 3;
      v107 = v106 - v108;
      v109 = v100 + 1;
      v110 = v106 - v108;
      do
      {
        v111 = vnegq_f64(*v109);
        v109[-1] = vnegq_f64(v109[-1]);
        *v109 = v111;
        v109 += 2;
        v110 -= 4;
      }

      while (v110);
      if (v108)
      {
LABEL_186:
        v112 = v107 - v106;
        v113 = &v100->f64[v107];
        do
        {
          *v113 = -*v113;
          ++v113;
        }

        while (!__CFADD__(v112++, 1));
      }
    }
  }

LABEL_164:
  v98 = *v6;
  if (v98 >= 1)
  {
    operations_research::IntegerDistribution::Add(this + 15104, v98);
  }

  operations_research::glop::Status::Status(a3);
LABEL_167:
  if (!p_p)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*p_p + 6))(p_p);
  if (p_p == &__p)
  {
    (*(*p_p + 4))(p_p);
  }

  else if (p_p)
  {
    (*(*p_p + 5))();
  }
}