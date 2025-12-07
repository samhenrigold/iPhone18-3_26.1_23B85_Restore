unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<unsigned char>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *(a5 + v5);
  v7 = *result;
  v8 = *(a5 + v7);
  v9 = v5 < v7;
  v10 = v6 == v8;
  v11 = v6 < v8;
  v12 = *a3;
  v13 = *(a5 + *a3);
  if (!v10)
  {
    v9 = v11;
  }

  v10 = v13 == v6;
  v14 = v13 < v6;
  if (v10)
  {
    v14 = v12 < v5;
  }

  if (v9)
  {
    if (v14)
    {
      *result = v12;
LABEL_17:
      *a3 = v7;
      goto LABEL_18;
    }

    *result = v5;
    *a2 = v7;
    v12 = *a3;
    v20 = *(a5 + *a3);
    v21 = *(a5 + v7);
    v10 = v20 == v21;
    v22 = v20 < v21;
    if (v10)
    {
      v22 = *a3 < v7;
    }

    if (v22)
    {
      *a2 = v12;
      goto LABEL_17;
    }

    v7 = *a3;
  }

  else if (v14)
  {
    *a2 = v12;
    *a3 = v5;
    v15 = *a2;
    v16 = *(a5 + v15);
    v17 = *result;
    v18 = *(a5 + v17);
    v10 = v16 == v18;
    v19 = v16 < v18;
    if (v10)
    {
      v19 = v15 < v17;
    }

    if (v19)
    {
      *result = v15;
      *a2 = v17;
      v7 = *a3;
LABEL_18:
      v12 = v7;
      goto LABEL_22;
    }

    v7 = v5;
    v12 = v5;
  }

  else
  {
    v7 = *a3;
  }

LABEL_22:
  v23 = *a4;
  v24 = *(a5 + v23);
  v25 = *(a5 + v7);
  v10 = v24 == v25;
  v26 = v24 < v25;
  if (v10)
  {
    v26 = v23 < v12;
  }

  if (v26)
  {
    *a3 = v23;
    *a4 = v12;
    v27 = *a3;
    v28 = *(a5 + v27);
    v29 = *a2;
    v30 = *(a5 + v29);
    v10 = v28 == v30;
    v31 = v28 < v30;
    if (v10)
    {
      v31 = v27 < v29;
    }

    if (v31)
    {
      *a2 = v27;
      *a3 = v29;
      v32 = *a2;
      v33 = *(a5 + v32);
      v34 = *result;
      v35 = *(a5 + v34);
      v10 = v33 == v35;
      v36 = v33 < v35;
      if (v10)
      {
        v36 = v32 < v34;
      }

      if (v36)
      {
        *result = v32;
        *a2 = v34;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<unsigned char>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v32 = *a3;
        v33 = *a1;
        v34 = a1[1];
        v35 = *(*a3 + v34);
        v36 = *(*a3 + *a1);
        v37 = v34 < *a1;
        v11 = v35 == v36;
        v38 = v35 < v36;
        v39 = *(a2 - 1);
        v40 = *(*a3 + v39);
        if (!v11)
        {
          v37 = v38;
        }

        v11 = v40 == v35;
        v41 = v40 < v35;
        if (v11)
        {
          v41 = v39 < v34;
        }

        if (v37)
        {
          if (v41)
          {
            *a1 = v39;
          }

          else
          {
            *a1 = v34;
            a1[1] = v33;
            v81 = *(a2 - 1);
            v82 = *(v32 + v81);
            v83 = *(v32 + v33);
            v11 = v82 == v83;
            v84 = v82 < v83;
            if (v11)
            {
              v84 = v81 < v33;
            }

            if (!v84)
            {
              return 1;
            }

            a1[1] = v81;
          }

          *(a2 - 1) = v33;
          return 1;
        }

        if (!v41)
        {
          return 1;
        }

        a1[1] = v39;
        *(a2 - 1) = v34;
        v29 = *a1;
        v58 = a1[1];
        v59 = *(v32 + v58);
        v60 = *(v32 + v29);
        v11 = v59 == v60;
        v61 = v59 < v60;
        if (v11)
        {
          v61 = v58 < v29;
        }

        if (!v61)
        {
          return 1;
        }

        *a1 = v58;
        break;
      case 4:
        return 1;
      case 5:
        v13 = *a3;
        v14 = *(a2 - 1);
        v15 = *(*a3 + v14);
        v16 = a1[3];
        v17 = *(*a3 + v16);
        v11 = v15 == v17;
        v18 = v15 < v17;
        if (v11)
        {
          v18 = v14 < v16;
        }

        if (!v18)
        {
          return 1;
        }

        a1[3] = v14;
        *(a2 - 1) = v16;
        v20 = a1[2];
        v19 = a1[3];
        v21 = *(v13 + v19);
        v22 = *(v13 + v20);
        v11 = v21 == v22;
        v23 = v21 < v22;
        if (v11)
        {
          v23 = v19 < v20;
        }

        if (!v23)
        {
          return 1;
        }

        a1[2] = v19;
        a1[3] = v20;
        v24 = *(v13 + v19);
        v25 = a1[1];
        v26 = *(v13 + v25);
        v11 = v24 == v26;
        v27 = v24 < v26;
        if (v11)
        {
          v27 = v19 < v25;
        }

        if (!v27)
        {
          return 1;
        }

        a1[1] = v19;
        a1[2] = v25;
        v28 = *(v13 + v19);
        v29 = *a1;
        v30 = *(v13 + v29);
        v11 = v28 == v30;
        v31 = v28 < v30;
        if (v11)
        {
          v31 = v19 < v29;
        }

        if (!v31)
        {
          return 1;
        }

        *a1 = v19;
        break;
      default:
        goto LABEL_31;
    }

    a1[1] = v29;
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *(*a3 + v7);
    v9 = *a1;
    v10 = *(*a3 + v9);
    v11 = v8 == v10;
    v12 = v8 < v10;
    if (v11)
    {
      v12 = v7 < v9;
    }

    if (v12)
    {
      *a1 = v7;
      *(a2 - 1) = v9;
    }

    return 1;
  }

LABEL_31:
  v42 = a1 + 2;
  v43 = a1[2];
  v44 = a1[1];
  v45 = *a3;
  v46 = *(*a3 + v44);
  v47 = *a1;
  v48 = *(*a3 + *a1);
  v11 = v46 == v48;
  v49 = v46 < v48;
  v50 = *(*a3 + v43);
  if (v11)
  {
    v49 = v44 < *a1;
  }

  v51 = v43 < v44;
  v11 = v50 == v46;
  v52 = v50 < v46;
  if (!v11)
  {
    v51 = v52;
  }

  if (v49)
  {
    v53 = a1;
    v54 = a1 + 2;
    if (!v51)
    {
      *a1 = v44;
      a1[1] = v47;
      v55 = *(v45 + v43);
      v56 = *(v45 + v47);
      v11 = v55 == v56;
      v57 = v55 < v56;
      if (v11)
      {
        v57 = v43 < v47;
      }

      v53 = a1 + 1;
      v54 = a1 + 2;
      if (!v57)
      {
        goto LABEL_53;
      }
    }

LABEL_52:
    *v53 = v43;
    *v54 = v47;
    goto LABEL_53;
  }

  if (v51)
  {
    a1[1] = v43;
    *v42 = v44;
    v62 = *(v45 + v43);
    v63 = *(v45 + v47);
    v11 = v62 == v63;
    v64 = v62 < v63;
    if (v11)
    {
      v64 = v43 < v47;
    }

    v53 = a1;
    v54 = a1 + 1;
    if (v64)
    {
      goto LABEL_52;
    }
  }

LABEL_53:
  v65 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v66 = 0;
  for (i = 12; ; i += 4)
  {
    v68 = *v65;
    v69 = *(v45 + *v65);
    v70 = *v42;
    v71 = *(v45 + v70);
    v11 = v69 == v71;
    v72 = v69 < v71;
    if (v11)
    {
      v72 = *v65 < v70;
    }

    if (v72)
    {
      v73 = i;
      while (1)
      {
        *(a1 + v73) = v70;
        v74 = v73 - 4;
        if (v73 == 4)
        {
          break;
        }

        v75 = a1 + v73;
        v76 = *(v45 + v68);
        v70 = *(v75 - 2);
        v77 = *(v45 + v70);
        v11 = v76 == v77;
        v78 = v76 < v77;
        if (v11)
        {
          v79 = v68 < v70;
        }

        else
        {
          v79 = v78;
        }

        v73 = v74;
        if (!v79)
        {
          v80 = (a1 + v74);
          goto LABEL_66;
        }
      }

      v80 = a1;
LABEL_66:
      *v80 = v68;
      if (++v66 == 8)
      {
        break;
      }
    }

    v42 = v65++;
    if (v65 == a2)
    {
      return 1;
    }
  }

  return v65 + 1 == a2;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<unsigned short>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v170 = *(a2 - 1);
      v171 = *(*a3 + 2 * v170);
      v172 = *v10;
      v173 = *(*a3 + 2 * v172);
      v174 = v171 == v173;
      v175 = v171 < v173;
      if (v174)
      {
        v175 = v170 < v172;
      }

      if (v175)
      {
        *v10 = v170;
LABEL_287:
        *(a2 - 1) = v172;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v185 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v186 = *a3;
            v187 = 4;
            v188 = v10;
            do
            {
              v190 = *v188;
              v189 = v188[1];
              v188 = v185;
              v191 = *(v186 + 2 * v189);
              v192 = *(v186 + 2 * v190);
              v174 = v191 == v192;
              v193 = v191 < v192;
              if (v174)
              {
                v193 = v189 < v190;
              }

              if (v193)
              {
                v194 = v187;
                while (1)
                {
                  *(v10 + v194) = v190;
                  v195 = v194 - 4;
                  if (v194 == 4)
                  {
                    break;
                  }

                  v190 = *(v10 + v194 - 8);
                  v196 = *(v186 + 2 * v190);
                  v197 = v189 < v190;
                  v174 = v191 == v196;
                  v198 = v191 < v196;
                  if (!v174)
                  {
                    v197 = v198;
                  }

                  v194 = v195;
                  if (!v197)
                  {
                    v199 = (v10 + v195);
                    goto LABEL_211;
                  }
                }

                v199 = v10;
LABEL_211:
                *v199 = v189;
              }

              v185 = v188 + 1;
              v187 += 4;
            }

            while (v188 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v252 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v253 = *a3;
          do
          {
            v255 = *v9;
            v254 = v9[1];
            v9 = v252;
            v256 = *(v253 + 2 * v254);
            v257 = *(v253 + 2 * v255);
            v174 = v256 == v257;
            v258 = v256 < v257;
            if (v174)
            {
              v258 = v254 < v255;
            }

            if (v258)
            {
              v259 = v9;
              do
              {
                *v259 = v255;
                v255 = *(v259 - 2);
                v260 = *(v253 + 2 * v255);
                v174 = v256 == v260;
                v261 = v256 < v260;
                if (v174)
                {
                  v261 = v254 < v255;
                }

                --v259;
              }

              while (v261);
              *v259 = v254;
            }

            v252 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v200 = (v11 - 2) >> 1;
        v201 = *a3;
        v202 = v200;
        do
        {
          v203 = v202;
          if (v200 >= v202)
          {
            v204 = (2 * v202) | 1;
            v205 = &v10[v204];
            if (2 * v203 + 2 >= v11)
            {
              LODWORD(v208) = *v205;
            }

            else
            {
              v206 = *v205;
              v207 = *(v201 + 2 * v206);
              v208 = v205[1];
              v209 = *(v201 + 2 * v208);
              v174 = v207 == v209;
              v210 = v207 < v209;
              if (v174)
              {
                v210 = v206 < v208;
              }

              if (v210)
              {
                ++v205;
                v204 = 2 * v203 + 2;
              }

              else
              {
                LODWORD(v208) = *v205;
              }
            }

            v211 = &v10[v203];
            v212 = *(v201 + 2 * v208);
            v213 = *v211;
            v214 = *(v201 + 2 * v213);
            v174 = v212 == v214;
            LODWORD(result) = v212 < v214;
            if (v174)
            {
              result = v208 < v213;
            }

            else
            {
              result = result;
            }

            if ((result & 1) == 0)
            {
              do
              {
                *v211 = v208;
                v211 = v205;
                if (v200 < v204)
                {
                  break;
                }

                v215 = (2 * v204) | 1;
                v205 = &v10[v215];
                v204 = 2 * v204 + 2;
                if (v204 >= v11)
                {
                  LODWORD(v208) = *v205;
                  v204 = v215;
                }

                else
                {
                  v208 = *v205;
                  v216 = *(v201 + 2 * v208);
                  v217 = v205[1];
                  v218 = *(v201 + 2 * v217);
                  v174 = v216 == v218;
                  v219 = v216 < v218;
                  if (v174)
                  {
                    v219 = v208 < v217;
                  }

                  if (v219)
                  {
                    LODWORD(v208) = v205[1];
                    ++v205;
                  }

                  else
                  {
                    v204 = v215;
                  }
                }

                v220 = *(v201 + 2 * v208);
                v174 = v220 == v214;
                LODWORD(result) = v220 < v214;
                result = v174 ? v208 < v213 : result;
              }

              while (result != 1);
              *v211 = v213;
            }
          }

          v202 = v203 - 1;
        }

        while (v203);
        do
        {
          v221 = 0;
          v222 = *v10;
          v223 = *a3;
          v224 = v10;
          do
          {
            v225 = &v224[v221];
            v226 = v225 + 1;
            v227 = (2 * v221) | 1;
            v221 = 2 * v221 + 2;
            if (v221 >= v11)
            {
              v229 = *v226;
              v221 = v227;
            }

            else
            {
              v230 = v225[2];
              v228 = v225 + 2;
              v229 = v230;
              result = *(v228 - 1);
              v231 = *(v223 + 2 * result);
              v232 = *(v223 + 2 * v230);
              v233 = result < v230;
              v174 = v231 == v232;
              v234 = v231 < v232;
              if (v174)
              {
                v234 = v233;
              }

              if (v234)
              {
                v226 = v228;
              }

              else
              {
                v229 = *(v228 - 1);
                v221 = v227;
              }
            }

            *v224 = v229;
            v224 = v226;
          }

          while (v221 <= ((v11 - 2) >> 1));
          if (v226 == --a2)
          {
            *v226 = v222;
          }

          else
          {
            *v226 = *a2;
            *a2 = v222;
            v235 = (v226 - v10 + 4) >> 2;
            v236 = v235 < 2;
            v237 = v235 - 2;
            if (!v236)
            {
              v238 = v237 >> 1;
              v239 = &v10[v238];
              v240 = *v239;
              v241 = *(v223 + 2 * v240);
              v242 = *v226;
              v243 = *(v223 + 2 * v242);
              v174 = v241 == v243;
              v244 = v241 < v243;
              if (v174)
              {
                v244 = v240 < v242;
              }

              if (v244)
              {
                do
                {
                  *v226 = v240;
                  v226 = v239;
                  if (!v238)
                  {
                    break;
                  }

                  v238 = (v238 - 1) >> 1;
                  v239 = &v10[v238];
                  v240 = *v239;
                  v245 = *(v223 + 2 * v240);
                  v174 = v245 == v243;
                  v246 = v245 < v243;
                  if (v174)
                  {
                    v246 = v240 < v242;
                  }
                }

                while (v246);
                *v226 = v242;
              }
            }
          }

          v236 = v11-- <= 2;
        }

        while (!v236);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *a3;
    v15 = *(a2 - 1);
    v16 = *(*a3 + 2 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *(v14 + 2 * v17);
      v19 = *v10;
      v20 = *(v14 + 2 * v19);
      v21 = v17 < v19;
      if (v18 != v20)
      {
        v21 = v18 < v20;
      }

      v174 = v16 == v18;
      v22 = v16 < v18;
      if (v174)
      {
        v22 = v15 < v17;
      }

      if (v21)
      {
        if (v22)
        {
          *v10 = v15;
          goto LABEL_41;
        }

        *v10 = v17;
        *v12 = v19;
        v39 = *(a2 - 1);
        v40 = *(v14 + 2 * v39);
        v174 = v40 == v20;
        v41 = v40 < v20;
        if (v174)
        {
          v41 = v39 < v19;
        }

        if (v41)
        {
          *v12 = v39;
LABEL_41:
          *(a2 - 1) = v19;
        }
      }

      else if (v22)
      {
        *v12 = v15;
        *(a2 - 1) = v17;
        v29 = *v12;
        v30 = *(v14 + 2 * v29);
        v31 = *v10;
        v32 = *(v14 + 2 * v31);
        v174 = v30 == v32;
        v33 = v30 < v32;
        if (v174)
        {
          v33 = v29 < v31;
        }

        if (v33)
        {
          *v10 = v29;
          *v12 = v31;
        }
      }

      v42 = v12 - 1;
      v43 = *(v12 - 1);
      v44 = *(v14 + 2 * v43);
      v45 = v10[1];
      v46 = *(v14 + 2 * v45);
      v47 = v43 < v45;
      v48 = *(a2 - 2);
      v49 = *(v14 + 2 * v48);
      if (v44 != v46)
      {
        v47 = v44 < v46;
      }

      v174 = v49 == v44;
      v50 = v49 < v44;
      if (v174)
      {
        v50 = v48 < v43;
      }

      if (v47)
      {
        if (v50)
        {
          v10[1] = v48;
          goto LABEL_63;
        }

        v10[1] = v43;
        *v42 = v45;
        v59 = *(a2 - 2);
        v60 = *(v14 + 2 * v59);
        v174 = v60 == v46;
        v61 = v60 < v46;
        if (v174)
        {
          v61 = v59 < v45;
        }

        if (v61)
        {
          *v42 = v59;
LABEL_63:
          *(a2 - 2) = v45;
        }
      }

      else if (v50)
      {
        *v42 = v48;
        *(a2 - 2) = v43;
        v51 = *v42;
        v52 = *(v14 + 2 * v51);
        v53 = v10[1];
        v54 = *(v14 + 2 * v53);
        v174 = v52 == v54;
        v55 = v52 < v54;
        if (v174)
        {
          v55 = v51 < v53;
        }

        if (v55)
        {
          v10[1] = v51;
          *v42 = v53;
        }
      }

      v64 = v12[1];
      v62 = v12 + 1;
      v63 = v64;
      v65 = *(v14 + 2 * v64);
      v66 = v10[2];
      v67 = *(v14 + 2 * v66);
      v68 = v64 < v66;
      v69 = *(a2 - 3);
      v70 = *(v14 + 2 * v69);
      if (v65 != v67)
      {
        v68 = v65 < v67;
      }

      v174 = v70 == v65;
      v71 = v70 < v65;
      if (v174)
      {
        v71 = v69 < v63;
      }

      if (v68)
      {
        if (v71)
        {
          v10[2] = v69;
          goto LABEL_80;
        }

        v10[2] = v63;
        *v62 = v66;
        v77 = *(a2 - 3);
        v78 = *(v14 + 2 * v77);
        v174 = v78 == v67;
        v79 = v78 < v67;
        if (v174)
        {
          v79 = v77 < v66;
        }

        if (v79)
        {
          *v62 = v77;
LABEL_80:
          *(a2 - 3) = v66;
        }
      }

      else if (v71)
      {
        *v62 = v69;
        *(a2 - 3) = v63;
        v72 = *v62;
        v73 = *(v14 + 2 * v72);
        v74 = v10[2];
        v75 = *(v14 + 2 * v74);
        v174 = v73 == v75;
        v76 = v73 < v75;
        if (v174)
        {
          v76 = v72 < v74;
        }

        if (v76)
        {
          v10[2] = v72;
          *v62 = v74;
        }
      }

      v80 = *v13;
      v81 = *(v14 + 2 * v80);
      v82 = *v42;
      v83 = *(v14 + 2 * v82);
      v84 = *v62;
      v85 = *(v14 + 2 * v84);
      if (v81 == v83)
      {
        result = v80 < v82;
      }

      else
      {
        result = v81 < v83;
      }

      v174 = v85 == v81;
      v86 = v85 < v81;
      if (v174)
      {
        v86 = v84 < v80;
      }

      if (result)
      {
        if (!v86)
        {
          *v42 = v80;
          *v13 = v82;
          v87 = v85 == v83 ? v84 < v82 : v85 < v83;
          v42 = v13;
          LODWORD(v80) = v84;
          if (!v87)
          {
            LODWORD(v80) = v82;
LABEL_99:
            v89 = *v10;
            *v10 = v80;
            *v13 = v89;
            goto LABEL_100;
          }
        }
      }

      else
      {
        if (!v86)
        {
          goto LABEL_99;
        }

        *v13 = v84;
        *v62 = v80;
        if (v85 == v83)
        {
          v88 = v84 < v82;
        }

        else
        {
          v88 = v85 < v83;
        }

        v62 = v13;
        LODWORD(v80) = v82;
        if (!v88)
        {
          LODWORD(v80) = v84;
          goto LABEL_99;
        }
      }

      *v42 = v84;
      *v62 = v82;
      goto LABEL_99;
    }

    v23 = *v10;
    v24 = *(v14 + 2 * v23);
    v25 = *v13;
    v26 = *(v14 + 2 * v25);
    v27 = v23 < v25;
    if (v24 != v26)
    {
      v27 = v24 < v26;
    }

    v174 = v16 == v24;
    v28 = v16 < v24;
    if (v174)
    {
      v28 = v15 < v23;
    }

    if (v27)
    {
      if (v28)
      {
        *v13 = v15;
LABEL_58:
        *(a2 - 1) = v25;
        goto LABEL_100;
      }

      *v13 = v23;
      *v10 = v25;
      v56 = *(a2 - 1);
      v57 = *(v14 + 2 * v56);
      v174 = v57 == v26;
      v58 = v57 < v26;
      if (v174)
      {
        v58 = v56 < v25;
      }

      if (v58)
      {
        *v10 = v56;
        goto LABEL_58;
      }
    }

    else if (v28)
    {
      *v10 = v15;
      *(a2 - 1) = v23;
      v34 = *v10;
      v35 = *(v14 + 2 * v34);
      v36 = *v13;
      v37 = *(v14 + 2 * v36);
      v174 = v35 == v37;
      v38 = v35 < v37;
      if (v174)
      {
        v38 = v34 < v36;
      }

      if (v38)
      {
        *v13 = v34;
        *v10 = v36;
      }
    }

LABEL_100:
    --a4;
    v90 = *v10;
    if (a5)
    {
      v91 = *(v14 + 2 * v90);
      goto LABEL_105;
    }

    v92 = *(v10 - 1);
    v93 = *(v14 + 2 * v92);
    v91 = *(v14 + 2 * v90);
    v94 = v92 < v90;
    v174 = v93 == v91;
    v95 = v93 < v91;
    if (!v174)
    {
      v94 = v95;
    }

    if (v94)
    {
LABEL_105:
      v96 = 0;
      do
      {
        v97 = v10[v96 + 1];
        v98 = *(v14 + 2 * v97);
        v174 = v98 == v91;
        v99 = v98 < v91;
        if (v174)
        {
          v99 = v97 < v90;
        }

        ++v96;
      }

      while (v99);
      v100 = &v10[v96];
      v101 = a2;
      if (v96 == 1)
      {
        v101 = a2;
        do
        {
          if (v100 >= v101)
          {
            break;
          }

          v106 = *--v101;
          v107 = *(v14 + 2 * v106);
          v108 = v106 < v90;
          v174 = v107 == v91;
          v109 = v107 < v91;
          if (!v174)
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
          v102 = *--v101;
          v103 = *(v14 + 2 * v102);
          v104 = v102 < v90;
          v174 = v103 == v91;
          v105 = v103 < v91;
          if (!v174)
          {
            v104 = v105;
          }
        }

        while (!v104);
      }

      if (v100 >= v101)
      {
        v122 = v100 - 1;
      }

      else
      {
        v110 = *v101;
        v111 = v97;
        v112 = v100;
        v113 = v101;
        do
        {
          *v112 = v110;
          *v113 = v111;
          do
          {
            v114 = v112[1];
            ++v112;
            v111 = v114;
            v115 = *(v14 + 2 * v114);
            v116 = v114 < v90;
            v174 = v115 == v91;
            v117 = v115 < v91;
            if (v174)
            {
              v117 = v116;
            }
          }

          while (v117);
          do
          {
            v118 = *--v113;
            v110 = v118;
            v119 = *(v14 + 2 * v118);
            v120 = v118 < v90;
            v174 = v119 == v91;
            v121 = v119 < v91;
            if (v174)
            {
              v121 = v120;
            }
          }

          while (!v121);
        }

        while (v112 < v113);
        v122 = v112 - 1;
      }

      if (v122 != v10)
      {
        *v10 = *v122;
      }

      *v122 = v90;
      if (v100 < v101)
      {
        goto LABEL_136;
      }

      v10 = v122 + 1;
      if (result)
      {
        a2 = v122;
        if (!v123)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v123)
      {
LABEL_136:
        a5 = 0;
        v10 = v122 + 1;
      }
    }

    else
    {
      v124 = *(a2 - 1);
      v125 = *(v14 + 2 * v124);
      v126 = v90 < v124;
      v174 = v91 == v125;
      v127 = v91 < v125;
      if (!v174)
      {
        v126 = v127;
      }

      if (v126)
      {
        do
        {
          v128 = v10[1];
          ++v10;
          v129 = *(v14 + 2 * v128);
          v130 = v90 < v128;
          v174 = v91 == v129;
          v131 = v91 < v129;
          if (!v174)
          {
            v130 = v131;
          }
        }

        while (!v130);
      }

      else
      {
        v132 = (v10 + 1);
        do
        {
          v10 = v132;
          if (v132 >= a2)
          {
            break;
          }

          v132 += 4;
          v133 = *v10;
          v134 = *(v14 + 2 * v133);
          v135 = v90 < v133;
          v174 = v91 == v134;
          v136 = v91 < v134;
          if (!v174)
          {
            v135 = v136;
          }
        }

        while (!v135);
      }

      v137 = a2;
      if (v10 < a2)
      {
        v137 = a2;
        do
        {
          v138 = *--v137;
          v139 = *(v14 + 2 * v138);
          v140 = v90 < v138;
          v174 = v91 == v139;
          v141 = v91 < v139;
          if (!v174)
          {
            v140 = v141;
          }
        }

        while (v140);
      }

      if (v10 < v137)
      {
        v142 = *v10;
        v143 = *v137;
        do
        {
          *v10 = v143;
          *v137 = v142;
          do
          {
            v144 = v10[1];
            ++v10;
            v142 = v144;
            v145 = *(v14 + 2 * v144);
            v146 = v90 < v144;
            v174 = v91 == v145;
            v147 = v91 < v145;
            if (v174)
            {
              v147 = v146;
            }
          }

          while (!v147);
          do
          {
            v148 = *--v137;
            v143 = v148;
            v149 = *(v14 + 2 * v148);
            v150 = v90 < v148;
            v174 = v91 == v149;
            v151 = v91 < v149;
            if (v174)
            {
              v151 = v150;
            }
          }

          while (v151);
        }

        while (v10 < v137);
      }

      v152 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v152;
      }

      a5 = 0;
      *v152 = v90;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v184 = *a3;
    }

    if (v11 == 5)
    {
      v153 = *a3;
      v154 = *(a2 - 1);
      v155 = *(*a3 + 2 * v154);
      v156 = v10[3];
      v157 = *(*a3 + 2 * v156);
      v174 = v155 == v157;
      v158 = v155 < v157;
      if (v174)
      {
        v158 = v154 < v156;
      }

      if (v158)
      {
        v10[3] = v154;
        *(a2 - 1) = v156;
        v160 = v10[2];
        v159 = v10[3];
        v161 = *(v153 + 2 * v159);
        v162 = *(v153 + 2 * v160);
        v174 = v161 == v162;
        v163 = v161 < v162;
        if (v174)
        {
          v163 = v159 < v160;
        }

        if (v163)
        {
          v10[2] = v159;
          v10[3] = v160;
          v164 = v10[1];
          v165 = *(v153 + 2 * v164);
          v174 = v161 == v165;
          v166 = v161 < v165;
          if (v174)
          {
            v166 = v159 < v164;
          }

          if (v166)
          {
            v10[1] = v159;
            v10[2] = v164;
            v167 = *v10;
            v168 = *(v153 + 2 * v167);
            v174 = v161 == v168;
            v169 = v161 < v168;
            if (v174)
            {
              v169 = v159 < v167;
            }

            if (v169)
            {
              *v10 = v159;
              v10[1] = v167;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_10;
  }

  v176 = *a3;
  v172 = *v10;
  v177 = v10[1];
  v178 = *(*a3 + 2 * v177);
  v179 = *(*a3 + 2 * v172);
  v180 = v177 < v172;
  v181 = *(a2 - 1);
  v182 = *(*a3 + 2 * v181);
  if (v178 != v179)
  {
    v180 = v178 < v179;
  }

  v174 = v182 == v178;
  v183 = v182 < v178;
  if (v174)
  {
    v183 = v181 < v177;
  }

  if (v180)
  {
    if (v183)
    {
      *v10 = v181;
      goto LABEL_287;
    }

    *v10 = v177;
    v10[1] = v172;
    v262 = *(a2 - 1);
    v263 = *(v176 + 2 * v262);
    v174 = v263 == v179;
    v264 = v263 < v179;
    if (v174)
    {
      v264 = v262 < v172;
    }

    if (v264)
    {
      v10[1] = v262;
      goto LABEL_287;
    }
  }

  else if (v183)
  {
    v10[1] = v181;
    *(a2 - 1) = v177;
    v248 = *v10;
    v247 = v10[1];
    v249 = *(v176 + 2 * v247);
    v250 = *(v176 + 2 * v248);
    v174 = v249 == v250;
    v251 = v249 < v250;
    if (v174)
    {
      v251 = v247 < v248;
    }

    if (v251)
    {
      *v10 = v247;
      v10[1] = v248;
    }
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<unsigned short>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *(a5 + 2 * v5);
  v7 = *result;
  v8 = *(a5 + 2 * v7);
  v9 = v5 < v7;
  v10 = *a3;
  v11 = *(a5 + 2 * *a3);
  if (v6 != v8)
  {
    v9 = v6 < v8;
  }

  v12 = v11 == v6;
  v13 = v11 < v6;
  if (v12)
  {
    v13 = v10 < v5;
  }

  if (v9)
  {
    if (v13)
    {
      *result = v10;
LABEL_17:
      *a3 = v7;
      goto LABEL_18;
    }

    *result = v5;
    *a2 = v7;
    v10 = *a3;
    v19 = *(a5 + 2 * *a3);
    v12 = v19 == v8;
    v20 = v19 < v8;
    if (v12)
    {
      v20 = *a3 < v7;
    }

    if (v20)
    {
      *a2 = v10;
      goto LABEL_17;
    }

    v7 = *a3;
  }

  else if (v13)
  {
    *a2 = v10;
    *a3 = v5;
    v14 = *a2;
    v15 = *(a5 + 2 * v14);
    v16 = *result;
    v17 = *(a5 + 2 * v16);
    v12 = v15 == v17;
    v18 = v15 < v17;
    if (v12)
    {
      v18 = v14 < v16;
    }

    if (v18)
    {
      *result = v14;
      *a2 = v16;
      v7 = *a3;
LABEL_18:
      v10 = v7;
      goto LABEL_22;
    }

    v7 = v5;
    v10 = v5;
  }

  else
  {
    v7 = *a3;
  }

LABEL_22:
  v21 = *a4;
  v22 = *(a5 + 2 * v21);
  v23 = *(a5 + 2 * v7);
  v12 = v22 == v23;
  v24 = v22 < v23;
  if (v12)
  {
    v24 = v21 < v10;
  }

  if (v24)
  {
    *a3 = v21;
    *a4 = v10;
    v25 = *a3;
    v26 = *(a5 + 2 * v25);
    v27 = *a2;
    v28 = *(a5 + 2 * v27);
    v12 = v26 == v28;
    v29 = v26 < v28;
    if (v12)
    {
      v29 = v25 < v27;
    }

    if (v29)
    {
      *a2 = v25;
      *a3 = v27;
      v30 = *a2;
      v31 = *(a5 + 2 * v30);
      v32 = *result;
      v33 = *(a5 + 2 * v32);
      v12 = v31 == v33;
      v34 = v31 < v33;
      if (v12)
      {
        v34 = v30 < v32;
      }

      if (v34)
      {
        *result = v30;
        *a2 = v32;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<unsigned short>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v30 = *a3;
      v9 = *a1;
      v31 = a1[1];
      v32 = *(*a3 + 2 * v31);
      v33 = *(*a3 + 2 * v9);
      v34 = v31 < v9;
      v35 = *(a2 - 1);
      v36 = *(*a3 + 2 * v35);
      if (v32 != v33)
      {
        v34 = v32 < v33;
      }

      v11 = v36 == v32;
      v37 = v36 < v32;
      if (v11)
      {
        v37 = v35 < v31;
      }

      if (!v34)
      {
        if (v37)
        {
          a1[1] = v35;
          *(a2 - 1) = v31;
          v55 = *a1;
          v54 = a1[1];
          v56 = *(v30 + 2 * v54);
          v57 = *(v30 + 2 * v55);
          v11 = v56 == v57;
          v58 = v56 < v57;
          if (v11)
          {
            v58 = v54 < v55;
          }

          if (v58)
          {
            *a1 = v54;
            a1[1] = v55;
          }
        }

        return 1;
      }

      if (v37)
      {
        *a1 = v35;
      }

      else
      {
        *a1 = v31;
        a1[1] = v9;
        v75 = *(a2 - 1);
        v76 = *(v30 + 2 * v75);
        v11 = v76 == v33;
        v77 = v76 < v33;
        if (v11)
        {
          v77 = v75 < v9;
        }

        if (!v77)
        {
          return 1;
        }

        a1[1] = v75;
      }

LABEL_71:
      *(a2 - 1) = v9;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        v13 = *a3;
        v14 = *(a2 - 1);
        v15 = *(*a3 + 2 * v14);
        v16 = a1[3];
        v17 = *(*a3 + 2 * v16);
        v11 = v15 == v17;
        v18 = v15 < v17;
        if (v11)
        {
          v18 = v14 < v16;
        }

        if (v18)
        {
          a1[3] = v14;
          *(a2 - 1) = v16;
          v20 = a1[2];
          v19 = a1[3];
          v21 = *(v13 + 2 * v19);
          v22 = *(v13 + 2 * v20);
          v11 = v21 == v22;
          v23 = v21 < v22;
          if (v11)
          {
            v23 = v19 < v20;
          }

          if (v23)
          {
            a1[2] = v19;
            a1[3] = v20;
            v24 = a1[1];
            v25 = *(v13 + 2 * v24);
            v11 = v21 == v25;
            v26 = v21 < v25;
            if (v11)
            {
              v26 = v19 < v24;
            }

            if (v26)
            {
              a1[1] = v19;
              a1[2] = v24;
              v27 = *a1;
              v28 = *(v13 + 2 * v27);
              v11 = v21 == v28;
              v29 = v21 < v28;
              if (v11)
              {
                v29 = v19 < v27;
              }

              if (v29)
              {
                *a1 = v19;
                a1[1] = v27;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_31;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *(*a3 + 2 * v7);
    v9 = *a1;
    v10 = *(*a3 + 2 * v9);
    v11 = v8 == v10;
    v12 = v8 < v10;
    if (v11)
    {
      v12 = v7 < v9;
    }

    if (!v12)
    {
      return 1;
    }

    *a1 = v7;
    goto LABEL_71;
  }

LABEL_31:
  v38 = a1 + 2;
  v39 = a1[2];
  v40 = a1 + 1;
  v41 = a1[1];
  v42 = *a3;
  v43 = *(*a3 + 2 * v41);
  v44 = *a1;
  v45 = *(*a3 + 2 * v44);
  v46 = v41 < v44;
  v47 = *(*a3 + 2 * v39);
  if (v43 != v45)
  {
    v46 = v43 < v45;
  }

  v48 = v39 < v41;
  v11 = v47 == v43;
  v49 = v47 < v43;
  if (!v11)
  {
    v48 = v49;
  }

  if (v46)
  {
    v50 = a1;
    v51 = a1 + 2;
    if (!v48)
    {
      *a1 = v41;
      a1[1] = v44;
      v52 = v39 < v44;
      v11 = v47 == v45;
      v53 = v47 < v45;
      if (!v11)
      {
        v52 = v53;
      }

      v50 = a1 + 1;
      v51 = a1 + 2;
      if (!v52)
      {
        goto LABEL_52;
      }
    }

LABEL_51:
    *v50 = v39;
    *v51 = v44;
    goto LABEL_52;
  }

  if (v48)
  {
    *v40 = v39;
    *v38 = v41;
    v59 = v39 < v44;
    v11 = v47 == v45;
    v60 = v47 < v45;
    if (!v11)
    {
      v59 = v60;
    }

    v50 = a1;
    v51 = a1 + 1;
    if (v59)
    {
      goto LABEL_51;
    }
  }

LABEL_52:
  v61 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v62 = 0;
  for (i = 12; ; i += 4)
  {
    v64 = *v61;
    v65 = *(v42 + 2 * v64);
    v66 = *v38;
    v67 = *(v42 + 2 * v66);
    v11 = v65 == v67;
    v68 = v65 < v67;
    if (v11)
    {
      v68 = v64 < v66;
    }

    if (v68)
    {
      v69 = i;
      while (1)
      {
        *(a1 + v69) = v66;
        v70 = v69 - 4;
        if (v69 == 4)
        {
          break;
        }

        v66 = *(a1 + v69 - 8);
        v71 = *(v42 + 2 * v66);
        v72 = v64 < v66;
        v11 = v65 == v71;
        v73 = v65 < v71;
        if (!v11)
        {
          v72 = v73;
        }

        v69 = v70;
        if (!v72)
        {
          v74 = (a1 + v70);
          goto LABEL_64;
        }
      }

      v74 = a1;
LABEL_64:
      *v74 = v64;
      if (++v62 == 8)
      {
        break;
      }
    }

    v38 = v61++;
    if (v61 == a2)
    {
      return 1;
    }
  }

  return v61 + 1 == a2;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<int>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v187 = *(a2 - 1);
        v188 = *(*a3 + 4 * v187);
        v189 = *v10;
        v190 = *(*a3 + 4 * v189);
        v191 = v188 == v190;
        v192 = v188 < v190;
        if (v191)
        {
          v192 = v187 < v189;
        }

        if (v192)
        {
          *v10 = v187;
          *(a2 - 1) = v189;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v203 = *a3;
    }

    if (v11 == 5)
    {
      v168 = *a3;
      v169 = *(a2 - 1);
      v170 = *(*a3 + 4 * v169);
      v171 = v10[3];
      v172 = *(*a3 + 4 * v171);
      v191 = v170 == v172;
      v173 = v170 < v172;
      if (v191)
      {
        v173 = v169 < v171;
      }

      if (!v173)
      {
        return result;
      }

      v10[3] = v169;
      *(a2 - 1) = v171;
      v175 = v10[2];
      v174 = v10[3];
      v176 = *(v168 + 4 * v174);
      v177 = *(v168 + 4 * v175);
      v191 = v176 == v177;
      v178 = v176 < v177;
      if (v191)
      {
        v178 = v174 < v175;
      }

      if (!v178)
      {
        return result;
      }

      v10[2] = v174;
      v10[3] = v175;
      v179 = *(v168 + 4 * v174);
      v180 = v10[1];
      v181 = *(v168 + 4 * v180);
      v191 = v179 == v181;
      v182 = v179 < v181;
      if (v191)
      {
        v182 = v174 < v180;
      }

      if (!v182)
      {
        return result;
      }

      v10[1] = v174;
      v10[2] = v180;
      v183 = *(v168 + 4 * v174);
      v184 = *v10;
      v185 = *(v168 + 4 * v184);
      v191 = v183 == v185;
      v186 = v183 < v185;
      if (v191)
      {
        v186 = v174 < v184;
      }

      if (!v186)
      {
        return result;
      }

      *v10 = v174;
LABEL_269:
      v10[1] = v184;
      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v204 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v205 = *a3;
            v206 = 4;
            v207 = v10;
            do
            {
              v209 = *v207;
              v208 = v207[1];
              v207 = v204;
              v210 = *(v205 + 4 * v208);
              v211 = *(v205 + 4 * v209);
              LODWORD(v204) = v209;
              v212 = v208 < v209;
              v191 = v210 == v211;
              v213 = v210 < v211;
              if (!v191)
              {
                v212 = v213;
              }

              if (v212)
              {
                v214 = v206;
                while (1)
                {
                  *(v10 + v214) = v204;
                  v215 = v214 - 4;
                  if (v214 == 4)
                  {
                    break;
                  }

                  v216 = v10 + v214;
                  v217 = *(v205 + 4 * v208);
                  v204 = *(v216 - 2);
                  v218 = *(v205 + 4 * v204);
                  v191 = v217 == v218;
                  v219 = v217 < v218;
                  if (v191)
                  {
                    v220 = v208 < v204;
                  }

                  else
                  {
                    v220 = v219;
                  }

                  v214 = v215;
                  if (!v220)
                  {
                    v221 = (v10 + v215);
                    goto LABEL_209;
                  }
                }

                v221 = v10;
LABEL_209:
                *v221 = v208;
              }

              v204 = v207 + 1;
              v206 += 4;
            }

            while (v207 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v277 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v278 = *a3;
          do
          {
            v280 = *v9;
            v279 = v9[1];
            v9 = v277;
            v281 = *(v278 + 4 * v279);
            v282 = *(v278 + 4 * v280);
            LODWORD(v277) = v280;
            v283 = v279 < v280;
            v191 = v281 == v282;
            v284 = v281 < v282;
            if (!v191)
            {
              v283 = v284;
            }

            if (v283)
            {
              v285 = v9;
              do
              {
                *v285 = v277;
                v286 = *(v278 + 4 * v279);
                v277 = *(v285 - 2);
                v287 = *(v278 + 4 * v277);
                v191 = v286 == v287;
                v288 = v286 < v287;
                if (v191)
                {
                  v288 = v279 < v277;
                }

                --v285;
              }

              while (v288);
              *v285 = v279;
            }

            v277 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v222 = (v11 - 2) >> 1;
        v223 = *a3;
        v224 = v222;
        do
        {
          v225 = v224;
          if (v222 >= v224)
          {
            v226 = (2 * v224) | 1;
            v227 = &v10[v226];
            if (2 * v225 + 2 >= v11)
            {
              LODWORD(v234) = *v227;
            }

            else
            {
              v228 = *v227;
              v229 = *(v223 + 4 * v228);
              v230 = v227[1];
              v231 = *(v223 + 4 * v230);
              v191 = v229 == v231;
              v232 = v229 < v231;
              if (v191)
              {
                v232 = v228 < v230;
              }

              v233 = !v232;
              if (v232)
              {
                LODWORD(v234) = v227[1];
              }

              else
              {
                LODWORD(v234) = *v227;
              }

              if (!v233)
              {
                ++v227;
                v226 = 2 * v225 + 2;
              }
            }

            v235 = &v10[v225];
            v236 = *(v223 + 4 * v234);
            v237 = *v235;
            result = *(v223 + 4 * *v235);
            v191 = v236 == result;
            v238 = v236 < result;
            if (v191)
            {
              v238 = v234 < *v235;
            }

            if (!v238)
            {
              do
              {
                *v235 = v234;
                v235 = v227;
                if (v222 < v226)
                {
                  break;
                }

                v239 = (2 * v226) | 1;
                v227 = &v10[v239];
                v226 = 2 * v226 + 2;
                if (v226 >= v11)
                {
                  LODWORD(v234) = *v227;
                  v226 = v239;
                }

                else
                {
                  v234 = *v227;
                  v240 = *(v223 + 4 * v234);
                  v241 = v227[1];
                  v242 = *(v223 + 4 * v241);
                  v191 = v240 == v242;
                  v243 = v240 < v242;
                  if (v191)
                  {
                    v243 = v234 < v241;
                  }

                  if (v243)
                  {
                    LODWORD(v234) = v227[1];
                    ++v227;
                  }

                  else
                  {
                    v226 = v239;
                  }
                }

                v244 = *(v223 + 4 * v234);
                result = *(v223 + 4 * v237);
                v191 = v244 == result;
                v245 = v244 < result;
                if (v191)
                {
                  v245 = v234 < v237;
                }
              }

              while (!v245);
              *v235 = v237;
            }
          }

          v224 = v225 - 1;
        }

        while (v225);
        do
        {
          v246 = 0;
          v247 = *v10;
          v248 = *a3;
          v249 = v10;
          do
          {
            v250 = &v249[v246];
            v251 = v250 + 1;
            v252 = (2 * v246) | 1;
            v246 = 2 * v246 + 2;
            if (v246 >= v11)
            {
              v254 = *v251;
              v246 = v252;
            }

            else
            {
              v255 = v250[2];
              v253 = v250 + 2;
              v254 = v255;
              result = *(v253 - 1);
              v256 = *(v248 + 4 * result);
              v257 = *(v248 + 4 * v255);
              v258 = result < v255;
              v191 = v256 == v257;
              v259 = v256 < v257;
              if (v191)
              {
                v259 = v258;
              }

              if (v259)
              {
                v251 = v253;
              }

              else
              {
                v254 = *(v253 - 1);
                v246 = v252;
              }
            }

            *v249 = v254;
            v249 = v251;
          }

          while (v246 <= ((v11 - 2) >> 1));
          if (v251 == --a2)
          {
            *v251 = v247;
          }

          else
          {
            *v251 = *a2;
            *a2 = v247;
            v260 = (v251 - v10 + 4) >> 2;
            v261 = v260 < 2;
            v262 = v260 - 2;
            if (!v261)
            {
              v263 = v262 >> 1;
              v264 = &v10[v263];
              v265 = *v264;
              v266 = *(v248 + 4 * v265);
              v267 = *v251;
              v268 = *(v248 + 4 * *v251);
              v191 = v266 == v268;
              v269 = v266 < v268;
              if (v191)
              {
                v269 = v265 < *v251;
              }

              if (v269)
              {
                do
                {
                  *v251 = v265;
                  v251 = v264;
                  if (!v263)
                  {
                    break;
                  }

                  v263 = (v263 - 1) >> 1;
                  v264 = &v10[v263];
                  v265 = *v264;
                  v270 = *(v248 + 4 * v265);
                  v271 = *(v248 + 4 * v267);
                  v191 = v270 == v271;
                  v272 = v270 < v271;
                  if (v191)
                  {
                    v272 = v265 < v267;
                  }
                }

                while (v272);
                *v251 = v267;
              }
            }
          }

          v261 = v11-- <= 2;
        }

        while (!v261);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *a3;
    v15 = *(a2 - 1);
    v16 = *(*a3 + 4 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *(v14 + 4 * v17);
      v19 = *v10;
      v20 = *(v14 + 4 * *v10);
      v191 = v18 == v20;
      v21 = v18 < v20;
      if (v191)
      {
        v21 = v17 < *v10;
      }

      v191 = v16 == v18;
      v22 = v16 < v18;
      if (v191)
      {
        v22 = v15 < v17;
      }

      if (v21)
      {
        if (v22)
        {
          *v10 = v15;
          goto LABEL_41;
        }

        *v10 = v17;
        *v12 = v19;
        v39 = *(a2 - 1);
        v40 = *(v14 + 4 * v39);
        v41 = *(v14 + 4 * v19);
        v191 = v40 == v41;
        v42 = v40 < v41;
        if (v191)
        {
          v42 = v39 < v19;
        }

        if (v42)
        {
          *v12 = v39;
LABEL_41:
          *(a2 - 1) = v19;
        }
      }

      else if (v22)
      {
        *v12 = v15;
        *(a2 - 1) = v17;
        v29 = *v12;
        v30 = *(v14 + 4 * v29);
        v31 = *v10;
        v32 = *(v14 + 4 * v31);
        v191 = v30 == v32;
        v33 = v30 < v32;
        if (v191)
        {
          v33 = v29 < v31;
        }

        if (v33)
        {
          *v10 = v29;
          *v12 = v31;
        }
      }

      v43 = v12 - 1;
      v44 = *(v12 - 1);
      v45 = *(v14 + 4 * v44);
      v46 = v10[1];
      v47 = *(v14 + 4 * v46);
      v48 = v44 < v46;
      v191 = v45 == v47;
      v49 = v45 < v47;
      v50 = *(a2 - 2);
      v51 = *(v14 + 4 * v50);
      if (!v191)
      {
        v48 = v49;
      }

      v191 = v51 == v45;
      v52 = v51 < v45;
      if (v191)
      {
        v52 = v50 < v44;
      }

      if (v48)
      {
        if (v52)
        {
          v10[1] = v50;
          goto LABEL_63;
        }

        v10[1] = v44;
        *v43 = v46;
        v62 = *(a2 - 2);
        v63 = *(v14 + 4 * v62);
        v64 = *(v14 + 4 * v46);
        v191 = v63 == v64;
        v65 = v63 < v64;
        if (v191)
        {
          v65 = v62 < v46;
        }

        if (v65)
        {
          *v43 = v62;
LABEL_63:
          *(a2 - 2) = v46;
        }
      }

      else if (v52)
      {
        *v43 = v50;
        *(a2 - 2) = v44;
        v53 = *v43;
        v54 = *(v14 + 4 * v53);
        v55 = v10[1];
        v56 = *(v14 + 4 * v55);
        v191 = v54 == v56;
        v57 = v54 < v56;
        if (v191)
        {
          v57 = v53 < v55;
        }

        if (v57)
        {
          v10[1] = v53;
          *v43 = v55;
        }
      }

      v68 = v12[1];
      v66 = v12 + 1;
      v67 = v68;
      v69 = *(v14 + 4 * v68);
      v70 = v10[2];
      v71 = *(v14 + 4 * v70);
      v72 = v68 < v70;
      v191 = v69 == v71;
      v73 = v69 < v71;
      v74 = *(a2 - 3);
      v75 = *(v14 + 4 * v74);
      if (!v191)
      {
        v72 = v73;
      }

      v191 = v75 == v69;
      v76 = v75 < v69;
      if (v191)
      {
        v76 = v74 < v67;
      }

      if (v72)
      {
        if (v76)
        {
          v10[2] = v74;
          goto LABEL_80;
        }

        v10[2] = v67;
        *v66 = v70;
        v82 = *(a2 - 3);
        v83 = *(v14 + 4 * v82);
        v84 = *(v14 + 4 * v70);
        v191 = v83 == v84;
        v85 = v83 < v84;
        if (v191)
        {
          v85 = v82 < v70;
        }

        if (v85)
        {
          *v66 = v82;
LABEL_80:
          *(a2 - 3) = v70;
        }
      }

      else if (v76)
      {
        *v66 = v74;
        *(a2 - 3) = v67;
        v77 = *v66;
        v78 = *(v14 + 4 * v77);
        v79 = v10[2];
        v80 = *(v14 + 4 * v79);
        v191 = v78 == v80;
        v81 = v78 < v80;
        if (v191)
        {
          v81 = v77 < v79;
        }

        if (v81)
        {
          v10[2] = v77;
          *v66 = v79;
        }
      }

      v86 = *v13;
      v87 = *(v14 + 4 * v86);
      v88 = *v43;
      v89 = *(v14 + 4 * *v43);
      v90 = v86 < *v43;
      v191 = v87 == v89;
      v91 = v87 < v89;
      v92 = *v66;
      result = *(v14 + 4 * *v66);
      if (!v191)
      {
        v90 = v91;
      }

      v191 = result == v87;
      v93 = result < v87;
      if (v191)
      {
        v93 = v92 < v86;
      }

      if (v90)
      {
        if (!v93)
        {
          *v43 = v86;
          *v13 = v88;
          v94 = *(v14 + 4 * v92);
          v95 = *(v14 + 4 * v88);
          v96 = v92 < v88;
          v191 = v94 == v95;
          v97 = v94 < v95;
          if (!v191)
          {
            v96 = v97;
          }

          v43 = v13;
          LODWORD(v86) = v92;
          if (!v96)
          {
            LODWORD(v86) = v88;
LABEL_96:
            v102 = *v10;
            *v10 = v86;
            *v13 = v102;
            goto LABEL_97;
          }
        }
      }

      else
      {
        if (!v93)
        {
          goto LABEL_96;
        }

        *v13 = v92;
        *v66 = v86;
        v98 = *(v14 + 4 * v92);
        v99 = *(v14 + 4 * v88);
        v100 = v92 < v88;
        v191 = v98 == v99;
        v101 = v98 < v99;
        if (!v191)
        {
          v100 = v101;
        }

        v66 = v13;
        LODWORD(v86) = v88;
        if (!v100)
        {
          LODWORD(v86) = v92;
          goto LABEL_96;
        }
      }

      *v43 = v92;
      *v66 = v88;
      goto LABEL_96;
    }

    v23 = *v10;
    v24 = *(v14 + 4 * v23);
    v25 = *v13;
    v26 = *(v14 + 4 * *v13);
    v191 = v24 == v26;
    v27 = v24 < v26;
    if (v191)
    {
      v27 = v23 < *v13;
    }

    v191 = v16 == v24;
    v28 = v16 < v24;
    if (v191)
    {
      v28 = v15 < v23;
    }

    if (v27)
    {
      if (v28)
      {
        *v13 = v15;
LABEL_58:
        *(a2 - 1) = v25;
        goto LABEL_97;
      }

      *v13 = v23;
      *v10 = v25;
      v58 = *(a2 - 1);
      v59 = *(v14 + 4 * v58);
      v60 = *(v14 + 4 * v25);
      v191 = v59 == v60;
      v61 = v59 < v60;
      if (v191)
      {
        v61 = v58 < v25;
      }

      if (v61)
      {
        *v10 = v58;
        goto LABEL_58;
      }
    }

    else if (v28)
    {
      *v10 = v15;
      *(a2 - 1) = v23;
      v34 = *v10;
      v35 = *(v14 + 4 * v34);
      v36 = *v13;
      v37 = *(v14 + 4 * v36);
      v191 = v35 == v37;
      v38 = v35 < v37;
      if (v191)
      {
        v38 = v34 < v36;
      }

      if (v38)
      {
        *v13 = v34;
        *v10 = v36;
      }
    }

LABEL_97:
    --a4;
    v103 = *v10;
    if (a5)
    {
      v104 = *(v14 + 4 * v103);
      goto LABEL_102;
    }

    v105 = *(v10 - 1);
    v106 = *(v14 + 4 * v105);
    v104 = *(v14 + 4 * v103);
    v107 = v105 < v103;
    v191 = v106 == v104;
    v108 = v106 < v104;
    if (!v191)
    {
      v107 = v108;
    }

    if (v107)
    {
LABEL_102:
      v109 = 0;
      do
      {
        v110 = v10[v109 + 1];
        v111 = *(v14 + 4 * v110);
        v191 = v111 == v104;
        v112 = v111 < v104;
        if (v191)
        {
          v112 = v110 < v103;
        }

        ++v109;
      }

      while (v112);
      v113 = &v10[v109];
      v114 = a2;
      if (v109 == 1)
      {
        v114 = a2;
        do
        {
          if (v113 >= v114)
          {
            break;
          }

          v119 = *--v114;
          v120 = *(v14 + 4 * v119);
          v121 = v119 < v103;
          v191 = v120 == v104;
          v122 = v120 < v104;
          if (!v191)
          {
            v121 = v122;
          }
        }

        while (!v121);
      }

      else
      {
        do
        {
          v115 = *--v114;
          v116 = *(v14 + 4 * v115);
          v117 = v115 < v103;
          v191 = v116 == v104;
          v118 = v116 < v104;
          if (!v191)
          {
            v117 = v118;
          }
        }

        while (!v117);
      }

      if (v113 >= v114)
      {
        v136 = v113 - 1;
      }

      else
      {
        v123 = *v114;
        v124 = v110;
        v125 = v113;
        v126 = v114;
        do
        {
          *v125 = v123;
          *v126 = v124;
          v127 = *(v14 + 4 * v103);
          do
          {
            v128 = v125[1];
            ++v125;
            v124 = v128;
            v129 = *(v14 + 4 * v128);
            v130 = v128 < v103;
            v191 = v129 == v127;
            v131 = v129 < v127;
            if (v191)
            {
              v131 = v130;
            }
          }

          while (v131);
          do
          {
            v132 = *--v126;
            v123 = v132;
            v133 = *(v14 + 4 * v132);
            v134 = v132 < v103;
            v191 = v133 == v127;
            v135 = v133 < v127;
            if (v191)
            {
              v135 = v134;
            }
          }

          while (!v135);
        }

        while (v125 < v126);
        v136 = v125 - 1;
      }

      if (v136 != v10)
      {
        *v10 = *v136;
      }

      *v136 = v103;
      if (v113 < v114)
      {
        goto LABEL_133;
      }

      v10 = v136 + 1;
      if (result)
      {
        a2 = v136;
        if (!v137)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v137)
      {
LABEL_133:
        a5 = 0;
        v10 = v136 + 1;
      }
    }

    else
    {
      v138 = *(a2 - 1);
      v139 = *(v14 + 4 * v138);
      v140 = v103 < v138;
      v191 = v104 == v139;
      v141 = v104 < v139;
      if (!v191)
      {
        v140 = v141;
      }

      if (v140)
      {
        do
        {
          v142 = v10[1];
          ++v10;
          v143 = *(v14 + 4 * v142);
          v144 = v103 < v142;
          v191 = v104 == v143;
          v145 = v104 < v143;
          if (!v191)
          {
            v144 = v145;
          }
        }

        while (!v144);
      }

      else
      {
        v146 = (v10 + 1);
        do
        {
          v10 = v146;
          if (v146 >= a2)
          {
            break;
          }

          v146 += 4;
          v147 = *v10;
          v148 = *(v14 + 4 * v147);
          v149 = v103 < v147;
          v191 = v104 == v148;
          v150 = v104 < v148;
          if (!v191)
          {
            v149 = v150;
          }
        }

        while (!v149);
      }

      v151 = a2;
      if (v10 < a2)
      {
        v151 = a2;
        do
        {
          v152 = *--v151;
          v153 = *(v14 + 4 * v152);
          v154 = v103 < v152;
          v191 = v104 == v153;
          v155 = v104 < v153;
          if (!v191)
          {
            v154 = v155;
          }
        }

        while (v154);
      }

      if (v10 < v151)
      {
        v156 = *v10;
        v157 = *v151;
        do
        {
          *v10 = v157;
          *v151 = v156;
          v158 = *(v14 + 4 * v103);
          do
          {
            v159 = v10[1];
            ++v10;
            v156 = v159;
            v160 = *(v14 + 4 * v159);
            v161 = v103 < v159;
            v191 = v158 == v160;
            v162 = v158 < v160;
            if (v191)
            {
              v162 = v161;
            }
          }

          while (!v162);
          do
          {
            v163 = *--v151;
            v157 = v163;
            v164 = *(v14 + 4 * v163);
            v165 = v103 < v163;
            v191 = v158 == v164;
            v166 = v158 < v164;
            if (v191)
            {
              v166 = v165;
            }
          }

          while (v166);
        }

        while (v10 < v151);
      }

      v167 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v167;
      }

      a5 = 0;
      *v167 = v103;
    }
  }

  v193 = *a3;
  v194 = *v10;
  v195 = v10[1];
  v196 = *(*a3 + 4 * v195);
  v197 = *(*a3 + 4 * *v10);
  v198 = v195 < *v10;
  v191 = v196 == v197;
  v199 = v196 < v197;
  v200 = *(a2 - 1);
  v201 = *(*a3 + 4 * v200);
  if (!v191)
  {
    v198 = v199;
  }

  v191 = v201 == v196;
  v202 = v201 < v196;
  if (v191)
  {
    v202 = v200 < v195;
  }

  if (v198)
  {
    if (v202)
    {
      *v10 = v200;
    }

    else
    {
      *v10 = v195;
      v10[1] = v194;
      v289 = *(a2 - 1);
      v290 = *(v193 + 4 * v289);
      v291 = *(v193 + 4 * v194);
      v191 = v290 == v291;
      v292 = v290 < v291;
      if (v191)
      {
        v292 = v289 < v194;
      }

      if (!v292)
      {
        return result;
      }

      v10[1] = v289;
    }

    *(a2 - 1) = v194;
    return result;
  }

  if (v202)
  {
    v10[1] = v200;
    *(a2 - 1) = v195;
    v184 = *v10;
    v273 = v10[1];
    v274 = *(v193 + 4 * v273);
    v275 = *(v193 + 4 * v184);
    v191 = v274 == v275;
    v276 = v274 < v275;
    if (v191)
    {
      v276 = v273 < v184;
    }

    if (v276)
    {
      *v10 = v273;
      goto LABEL_269;
    }
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<int>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *(a5 + 4 * v5);
  v7 = *result;
  v8 = *(a5 + 4 * v7);
  v9 = v5 < v7;
  v10 = v6 == v8;
  v11 = v6 < v8;
  v12 = *a3;
  v13 = *(a5 + 4 * *a3);
  if (!v10)
  {
    v9 = v11;
  }

  v10 = v13 == v6;
  v14 = v13 < v6;
  if (v10)
  {
    v14 = v12 < v5;
  }

  if (v9)
  {
    if (v14)
    {
      *result = v12;
LABEL_17:
      *a3 = v7;
      goto LABEL_18;
    }

    *result = v5;
    *a2 = v7;
    v12 = *a3;
    v20 = *(a5 + 4 * *a3);
    v21 = *(a5 + 4 * v7);
    v10 = v20 == v21;
    v22 = v20 < v21;
    if (v10)
    {
      v22 = *a3 < v7;
    }

    if (v22)
    {
      *a2 = v12;
      goto LABEL_17;
    }

    v7 = *a3;
  }

  else if (v14)
  {
    *a2 = v12;
    *a3 = v5;
    v15 = *a2;
    v16 = *(a5 + 4 * v15);
    v17 = *result;
    v18 = *(a5 + 4 * v17);
    v10 = v16 == v18;
    v19 = v16 < v18;
    if (v10)
    {
      v19 = v15 < v17;
    }

    if (v19)
    {
      *result = v15;
      *a2 = v17;
      v7 = *a3;
LABEL_18:
      v12 = v7;
      goto LABEL_22;
    }

    v7 = v5;
    v12 = v5;
  }

  else
  {
    v7 = *a3;
  }

LABEL_22:
  v23 = *a4;
  v24 = *(a5 + 4 * v23);
  v25 = *(a5 + 4 * v7);
  v10 = v24 == v25;
  v26 = v24 < v25;
  if (v10)
  {
    v26 = v23 < v12;
  }

  if (v26)
  {
    *a3 = v23;
    *a4 = v12;
    v27 = *a3;
    v28 = *(a5 + 4 * v27);
    v29 = *a2;
    v30 = *(a5 + 4 * v29);
    v10 = v28 == v30;
    v31 = v28 < v30;
    if (v10)
    {
      v31 = v27 < v29;
    }

    if (v31)
    {
      *a2 = v27;
      *a3 = v29;
      v32 = *a2;
      v33 = *(a5 + 4 * v32);
      v34 = *result;
      v35 = *(a5 + 4 * v34);
      v10 = v33 == v35;
      v36 = v33 < v35;
      if (v10)
      {
        v36 = v32 < v34;
      }

      if (v36)
      {
        *result = v32;
        *a2 = v34;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<int>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v32 = *a3;
        v33 = *a1;
        v34 = a1[1];
        v35 = *(*a3 + 4 * v34);
        v36 = *(*a3 + 4 * *a1);
        v37 = v34 < *a1;
        v11 = v35 == v36;
        v38 = v35 < v36;
        v39 = *(a2 - 1);
        v40 = *(*a3 + 4 * v39);
        if (!v11)
        {
          v37 = v38;
        }

        v11 = v40 == v35;
        v41 = v40 < v35;
        if (v11)
        {
          v41 = v39 < v34;
        }

        if (v37)
        {
          if (v41)
          {
            *a1 = v39;
          }

          else
          {
            *a1 = v34;
            a1[1] = v33;
            v81 = *(a2 - 1);
            v82 = *(v32 + 4 * v81);
            v83 = *(v32 + 4 * v33);
            v11 = v82 == v83;
            v84 = v82 < v83;
            if (v11)
            {
              v84 = v81 < v33;
            }

            if (!v84)
            {
              return 1;
            }

            a1[1] = v81;
          }

          *(a2 - 1) = v33;
          return 1;
        }

        if (!v41)
        {
          return 1;
        }

        a1[1] = v39;
        *(a2 - 1) = v34;
        v29 = *a1;
        v58 = a1[1];
        v59 = *(v32 + 4 * v58);
        v60 = *(v32 + 4 * v29);
        v11 = v59 == v60;
        v61 = v59 < v60;
        if (v11)
        {
          v61 = v58 < v29;
        }

        if (!v61)
        {
          return 1;
        }

        *a1 = v58;
        break;
      case 4:
        return 1;
      case 5:
        v13 = *a3;
        v14 = *(a2 - 1);
        v15 = *(*a3 + 4 * v14);
        v16 = a1[3];
        v17 = *(*a3 + 4 * v16);
        v11 = v15 == v17;
        v18 = v15 < v17;
        if (v11)
        {
          v18 = v14 < v16;
        }

        if (!v18)
        {
          return 1;
        }

        a1[3] = v14;
        *(a2 - 1) = v16;
        v20 = a1[2];
        v19 = a1[3];
        v21 = *(v13 + 4 * v19);
        v22 = *(v13 + 4 * v20);
        v11 = v21 == v22;
        v23 = v21 < v22;
        if (v11)
        {
          v23 = v19 < v20;
        }

        if (!v23)
        {
          return 1;
        }

        a1[2] = v19;
        a1[3] = v20;
        v24 = *(v13 + 4 * v19);
        v25 = a1[1];
        v26 = *(v13 + 4 * v25);
        v11 = v24 == v26;
        v27 = v24 < v26;
        if (v11)
        {
          v27 = v19 < v25;
        }

        if (!v27)
        {
          return 1;
        }

        a1[1] = v19;
        a1[2] = v25;
        v28 = *(v13 + 4 * v19);
        v29 = *a1;
        v30 = *(v13 + 4 * v29);
        v11 = v28 == v30;
        v31 = v28 < v30;
        if (v11)
        {
          v31 = v19 < v29;
        }

        if (!v31)
        {
          return 1;
        }

        *a1 = v19;
        break;
      default:
        goto LABEL_31;
    }

    a1[1] = v29;
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *(*a3 + 4 * v7);
    v9 = *a1;
    v10 = *(*a3 + 4 * v9);
    v11 = v8 == v10;
    v12 = v8 < v10;
    if (v11)
    {
      v12 = v7 < v9;
    }

    if (v12)
    {
      *a1 = v7;
      *(a2 - 1) = v9;
    }

    return 1;
  }

LABEL_31:
  v42 = a1 + 2;
  v43 = a1[2];
  v44 = a1[1];
  v45 = *a3;
  v46 = *(*a3 + 4 * v44);
  v47 = *a1;
  v48 = *(*a3 + 4 * *a1);
  v11 = v46 == v48;
  v49 = v46 < v48;
  v50 = *(*a3 + 4 * v43);
  if (v11)
  {
    v49 = v44 < *a1;
  }

  v51 = v43 < v44;
  v11 = v50 == v46;
  v52 = v50 < v46;
  if (!v11)
  {
    v51 = v52;
  }

  if (v49)
  {
    v53 = a1;
    v54 = a1 + 2;
    if (!v51)
    {
      *a1 = v44;
      a1[1] = v47;
      v55 = *(v45 + 4 * v43);
      v56 = *(v45 + 4 * v47);
      v11 = v55 == v56;
      v57 = v55 < v56;
      if (v11)
      {
        v57 = v43 < v47;
      }

      v53 = a1 + 1;
      v54 = a1 + 2;
      if (!v57)
      {
        goto LABEL_53;
      }
    }

LABEL_52:
    *v53 = v43;
    *v54 = v47;
    goto LABEL_53;
  }

  if (v51)
  {
    a1[1] = v43;
    *v42 = v44;
    v62 = *(v45 + 4 * v43);
    v63 = *(v45 + 4 * v47);
    v11 = v62 == v63;
    v64 = v62 < v63;
    if (v11)
    {
      v64 = v43 < v47;
    }

    v53 = a1;
    v54 = a1 + 1;
    if (v64)
    {
      goto LABEL_52;
    }
  }

LABEL_53:
  v65 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v66 = 0;
  for (i = 12; ; i += 4)
  {
    v68 = *v65;
    v69 = *(v45 + 4 * *v65);
    v70 = *v42;
    v71 = *(v45 + 4 * v70);
    v11 = v69 == v71;
    v72 = v69 < v71;
    if (v11)
    {
      v72 = *v65 < v70;
    }

    if (v72)
    {
      v73 = i;
      while (1)
      {
        *(a1 + v73) = v70;
        v74 = v73 - 4;
        if (v73 == 4)
        {
          break;
        }

        v75 = a1 + v73;
        v76 = *(v45 + 4 * v68);
        v70 = *(v75 - 2);
        v77 = *(v45 + 4 * v70);
        v11 = v76 == v77;
        v78 = v76 < v77;
        if (v11)
        {
          v79 = v68 < v70;
        }

        else
        {
          v79 = v78;
        }

        v73 = v74;
        if (!v79)
        {
          v80 = (a1 + v74);
          goto LABEL_66;
        }
      }

      v80 = a1;
LABEL_66:
      *v80 = v68;
      if (++v66 == 8)
      {
        break;
      }
    }

    v42 = v65++;
    if (v65 == a2)
    {
      return 1;
    }
  }

  return v65 + 1 == a2;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<unsigned int>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v187 = *(a2 - 1);
        v188 = *(*a3 + 4 * v187);
        v189 = *v10;
        v190 = *(*a3 + 4 * v189);
        v191 = v188 == v190;
        v192 = v188 < v190;
        if (v191)
        {
          v192 = v187 < v189;
        }

        if (v192)
        {
          *v10 = v187;
          *(a2 - 1) = v189;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v203 = *a3;
    }

    if (v11 == 5)
    {
      v168 = *a3;
      v169 = *(a2 - 1);
      v170 = *(*a3 + 4 * v169);
      v171 = v10[3];
      v172 = *(*a3 + 4 * v171);
      v191 = v170 == v172;
      v173 = v170 < v172;
      if (v191)
      {
        v173 = v169 < v171;
      }

      if (!v173)
      {
        return result;
      }

      v10[3] = v169;
      *(a2 - 1) = v171;
      v175 = v10[2];
      v174 = v10[3];
      v176 = *(v168 + 4 * v174);
      v177 = *(v168 + 4 * v175);
      v191 = v176 == v177;
      v178 = v176 < v177;
      if (v191)
      {
        v178 = v174 < v175;
      }

      if (!v178)
      {
        return result;
      }

      v10[2] = v174;
      v10[3] = v175;
      v179 = *(v168 + 4 * v174);
      v180 = v10[1];
      v181 = *(v168 + 4 * v180);
      v191 = v179 == v181;
      v182 = v179 < v181;
      if (v191)
      {
        v182 = v174 < v180;
      }

      if (!v182)
      {
        return result;
      }

      v10[1] = v174;
      v10[2] = v180;
      v183 = *(v168 + 4 * v174);
      v184 = *v10;
      v185 = *(v168 + 4 * v184);
      v191 = v183 == v185;
      v186 = v183 < v185;
      if (v191)
      {
        v186 = v174 < v184;
      }

      if (!v186)
      {
        return result;
      }

      *v10 = v174;
LABEL_269:
      v10[1] = v184;
      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v204 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v205 = *a3;
            v206 = 4;
            v207 = v10;
            do
            {
              v209 = *v207;
              v208 = v207[1];
              v207 = v204;
              v210 = *(v205 + 4 * v208);
              v211 = *(v205 + 4 * v209);
              LODWORD(v204) = v209;
              v212 = v208 < v209;
              v191 = v210 == v211;
              v213 = v210 < v211;
              if (!v191)
              {
                v212 = v213;
              }

              if (v212)
              {
                v214 = v206;
                while (1)
                {
                  *(v10 + v214) = v204;
                  v215 = v214 - 4;
                  if (v214 == 4)
                  {
                    break;
                  }

                  v216 = v10 + v214;
                  v217 = *(v205 + 4 * v208);
                  v204 = *(v216 - 2);
                  v218 = *(v205 + 4 * v204);
                  v191 = v217 == v218;
                  v219 = v217 < v218;
                  if (v191)
                  {
                    v220 = v208 < v204;
                  }

                  else
                  {
                    v220 = v219;
                  }

                  v214 = v215;
                  if (!v220)
                  {
                    v221 = (v10 + v215);
                    goto LABEL_209;
                  }
                }

                v221 = v10;
LABEL_209:
                *v221 = v208;
              }

              v204 = v207 + 1;
              v206 += 4;
            }

            while (v207 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v277 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v278 = *a3;
          do
          {
            v280 = *v9;
            v279 = v9[1];
            v9 = v277;
            v281 = *(v278 + 4 * v279);
            v282 = *(v278 + 4 * v280);
            LODWORD(v277) = v280;
            v283 = v279 < v280;
            v191 = v281 == v282;
            v284 = v281 < v282;
            if (!v191)
            {
              v283 = v284;
            }

            if (v283)
            {
              v285 = v9;
              do
              {
                *v285 = v277;
                v286 = *(v278 + 4 * v279);
                v277 = *(v285 - 2);
                v287 = *(v278 + 4 * v277);
                v191 = v286 == v287;
                v288 = v286 < v287;
                if (v191)
                {
                  v288 = v279 < v277;
                }

                --v285;
              }

              while (v288);
              *v285 = v279;
            }

            v277 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v222 = (v11 - 2) >> 1;
        v223 = *a3;
        v224 = v222;
        do
        {
          v225 = v224;
          if (v222 >= v224)
          {
            v226 = (2 * v224) | 1;
            v227 = &v10[v226];
            if (2 * v225 + 2 >= v11)
            {
              LODWORD(v234) = *v227;
            }

            else
            {
              v228 = *v227;
              v229 = *(v223 + 4 * v228);
              v230 = v227[1];
              v231 = *(v223 + 4 * v230);
              v191 = v229 == v231;
              v232 = v229 < v231;
              if (v191)
              {
                v232 = v228 < v230;
              }

              v233 = !v232;
              if (v232)
              {
                LODWORD(v234) = v227[1];
              }

              else
              {
                LODWORD(v234) = *v227;
              }

              if (!v233)
              {
                ++v227;
                v226 = 2 * v225 + 2;
              }
            }

            v235 = &v10[v225];
            v236 = *(v223 + 4 * v234);
            v237 = *v235;
            result = *(v223 + 4 * *v235);
            v191 = v236 == result;
            v238 = v236 < result;
            if (v191)
            {
              v238 = v234 < *v235;
            }

            if (!v238)
            {
              do
              {
                *v235 = v234;
                v235 = v227;
                if (v222 < v226)
                {
                  break;
                }

                v239 = (2 * v226) | 1;
                v227 = &v10[v239];
                v226 = 2 * v226 + 2;
                if (v226 >= v11)
                {
                  LODWORD(v234) = *v227;
                  v226 = v239;
                }

                else
                {
                  v234 = *v227;
                  v240 = *(v223 + 4 * v234);
                  v241 = v227[1];
                  v242 = *(v223 + 4 * v241);
                  v191 = v240 == v242;
                  v243 = v240 < v242;
                  if (v191)
                  {
                    v243 = v234 < v241;
                  }

                  if (v243)
                  {
                    LODWORD(v234) = v227[1];
                    ++v227;
                  }

                  else
                  {
                    v226 = v239;
                  }
                }

                v244 = *(v223 + 4 * v234);
                result = *(v223 + 4 * v237);
                v191 = v244 == result;
                v245 = v244 < result;
                if (v191)
                {
                  v245 = v234 < v237;
                }
              }

              while (!v245);
              *v235 = v237;
            }
          }

          v224 = v225 - 1;
        }

        while (v225);
        do
        {
          v246 = 0;
          v247 = *v10;
          v248 = *a3;
          v249 = v10;
          do
          {
            v250 = &v249[v246];
            v251 = v250 + 1;
            v252 = (2 * v246) | 1;
            v246 = 2 * v246 + 2;
            if (v246 >= v11)
            {
              v254 = *v251;
              v246 = v252;
            }

            else
            {
              v255 = v250[2];
              v253 = v250 + 2;
              v254 = v255;
              result = *(v253 - 1);
              v256 = *(v248 + 4 * result);
              v257 = *(v248 + 4 * v255);
              v258 = result < v255;
              v191 = v256 == v257;
              v259 = v256 < v257;
              if (v191)
              {
                v259 = v258;
              }

              if (v259)
              {
                v251 = v253;
              }

              else
              {
                v254 = *(v253 - 1);
                v246 = v252;
              }
            }

            *v249 = v254;
            v249 = v251;
          }

          while (v246 <= ((v11 - 2) >> 1));
          if (v251 == --a2)
          {
            *v251 = v247;
          }

          else
          {
            *v251 = *a2;
            *a2 = v247;
            v260 = (v251 - v10 + 4) >> 2;
            v261 = v260 < 2;
            v262 = v260 - 2;
            if (!v261)
            {
              v263 = v262 >> 1;
              v264 = &v10[v263];
              v265 = *v264;
              v266 = *(v248 + 4 * v265);
              v267 = *v251;
              v268 = *(v248 + 4 * *v251);
              v191 = v266 == v268;
              v269 = v266 < v268;
              if (v191)
              {
                v269 = v265 < *v251;
              }

              if (v269)
              {
                do
                {
                  *v251 = v265;
                  v251 = v264;
                  if (!v263)
                  {
                    break;
                  }

                  v263 = (v263 - 1) >> 1;
                  v264 = &v10[v263];
                  v265 = *v264;
                  v270 = *(v248 + 4 * v265);
                  v271 = *(v248 + 4 * v267);
                  v191 = v270 == v271;
                  v272 = v270 < v271;
                  if (v191)
                  {
                    v272 = v265 < v267;
                  }
                }

                while (v272);
                *v251 = v267;
              }
            }
          }

          v261 = v11-- <= 2;
        }

        while (!v261);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *a3;
    v15 = *(a2 - 1);
    v16 = *(*a3 + 4 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *(v14 + 4 * v17);
      v19 = *v10;
      v20 = *(v14 + 4 * *v10);
      v191 = v18 == v20;
      v21 = v18 < v20;
      if (v191)
      {
        v21 = v17 < *v10;
      }

      v191 = v16 == v18;
      v22 = v16 < v18;
      if (v191)
      {
        v22 = v15 < v17;
      }

      if (v21)
      {
        if (v22)
        {
          *v10 = v15;
          goto LABEL_41;
        }

        *v10 = v17;
        *v12 = v19;
        v39 = *(a2 - 1);
        v40 = *(v14 + 4 * v39);
        v41 = *(v14 + 4 * v19);
        v191 = v40 == v41;
        v42 = v40 < v41;
        if (v191)
        {
          v42 = v39 < v19;
        }

        if (v42)
        {
          *v12 = v39;
LABEL_41:
          *(a2 - 1) = v19;
        }
      }

      else if (v22)
      {
        *v12 = v15;
        *(a2 - 1) = v17;
        v29 = *v12;
        v30 = *(v14 + 4 * v29);
        v31 = *v10;
        v32 = *(v14 + 4 * v31);
        v191 = v30 == v32;
        v33 = v30 < v32;
        if (v191)
        {
          v33 = v29 < v31;
        }

        if (v33)
        {
          *v10 = v29;
          *v12 = v31;
        }
      }

      v43 = v12 - 1;
      v44 = *(v12 - 1);
      v45 = *(v14 + 4 * v44);
      v46 = v10[1];
      v47 = *(v14 + 4 * v46);
      v48 = v44 < v46;
      v191 = v45 == v47;
      v49 = v45 < v47;
      v50 = *(a2 - 2);
      v51 = *(v14 + 4 * v50);
      if (!v191)
      {
        v48 = v49;
      }

      v191 = v51 == v45;
      v52 = v51 < v45;
      if (v191)
      {
        v52 = v50 < v44;
      }

      if (v48)
      {
        if (v52)
        {
          v10[1] = v50;
          goto LABEL_63;
        }

        v10[1] = v44;
        *v43 = v46;
        v62 = *(a2 - 2);
        v63 = *(v14 + 4 * v62);
        v64 = *(v14 + 4 * v46);
        v191 = v63 == v64;
        v65 = v63 < v64;
        if (v191)
        {
          v65 = v62 < v46;
        }

        if (v65)
        {
          *v43 = v62;
LABEL_63:
          *(a2 - 2) = v46;
        }
      }

      else if (v52)
      {
        *v43 = v50;
        *(a2 - 2) = v44;
        v53 = *v43;
        v54 = *(v14 + 4 * v53);
        v55 = v10[1];
        v56 = *(v14 + 4 * v55);
        v191 = v54 == v56;
        v57 = v54 < v56;
        if (v191)
        {
          v57 = v53 < v55;
        }

        if (v57)
        {
          v10[1] = v53;
          *v43 = v55;
        }
      }

      v68 = v12[1];
      v66 = v12 + 1;
      v67 = v68;
      v69 = *(v14 + 4 * v68);
      v70 = v10[2];
      v71 = *(v14 + 4 * v70);
      v72 = v68 < v70;
      v191 = v69 == v71;
      v73 = v69 < v71;
      v74 = *(a2 - 3);
      v75 = *(v14 + 4 * v74);
      if (!v191)
      {
        v72 = v73;
      }

      v191 = v75 == v69;
      v76 = v75 < v69;
      if (v191)
      {
        v76 = v74 < v67;
      }

      if (v72)
      {
        if (v76)
        {
          v10[2] = v74;
          goto LABEL_80;
        }

        v10[2] = v67;
        *v66 = v70;
        v82 = *(a2 - 3);
        v83 = *(v14 + 4 * v82);
        v84 = *(v14 + 4 * v70);
        v191 = v83 == v84;
        v85 = v83 < v84;
        if (v191)
        {
          v85 = v82 < v70;
        }

        if (v85)
        {
          *v66 = v82;
LABEL_80:
          *(a2 - 3) = v70;
        }
      }

      else if (v76)
      {
        *v66 = v74;
        *(a2 - 3) = v67;
        v77 = *v66;
        v78 = *(v14 + 4 * v77);
        v79 = v10[2];
        v80 = *(v14 + 4 * v79);
        v191 = v78 == v80;
        v81 = v78 < v80;
        if (v191)
        {
          v81 = v77 < v79;
        }

        if (v81)
        {
          v10[2] = v77;
          *v66 = v79;
        }
      }

      v86 = *v13;
      v87 = *(v14 + 4 * v86);
      v88 = *v43;
      v89 = *(v14 + 4 * *v43);
      v90 = v86 < *v43;
      v191 = v87 == v89;
      v91 = v87 < v89;
      v92 = *v66;
      result = *(v14 + 4 * *v66);
      if (!v191)
      {
        v90 = v91;
      }

      v191 = result == v87;
      v93 = result < v87;
      if (v191)
      {
        v93 = v92 < v86;
      }

      if (v90)
      {
        if (!v93)
        {
          *v43 = v86;
          *v13 = v88;
          v94 = *(v14 + 4 * v92);
          v95 = *(v14 + 4 * v88);
          v96 = v92 < v88;
          v191 = v94 == v95;
          v97 = v94 < v95;
          if (!v191)
          {
            v96 = v97;
          }

          v43 = v13;
          LODWORD(v86) = v92;
          if (!v96)
          {
            LODWORD(v86) = v88;
LABEL_96:
            v102 = *v10;
            *v10 = v86;
            *v13 = v102;
            goto LABEL_97;
          }
        }
      }

      else
      {
        if (!v93)
        {
          goto LABEL_96;
        }

        *v13 = v92;
        *v66 = v86;
        v98 = *(v14 + 4 * v92);
        v99 = *(v14 + 4 * v88);
        v100 = v92 < v88;
        v191 = v98 == v99;
        v101 = v98 < v99;
        if (!v191)
        {
          v100 = v101;
        }

        v66 = v13;
        LODWORD(v86) = v88;
        if (!v100)
        {
          LODWORD(v86) = v92;
          goto LABEL_96;
        }
      }

      *v43 = v92;
      *v66 = v88;
      goto LABEL_96;
    }

    v23 = *v10;
    v24 = *(v14 + 4 * v23);
    v25 = *v13;
    v26 = *(v14 + 4 * *v13);
    v191 = v24 == v26;
    v27 = v24 < v26;
    if (v191)
    {
      v27 = v23 < *v13;
    }

    v191 = v16 == v24;
    v28 = v16 < v24;
    if (v191)
    {
      v28 = v15 < v23;
    }

    if (v27)
    {
      if (v28)
      {
        *v13 = v15;
LABEL_58:
        *(a2 - 1) = v25;
        goto LABEL_97;
      }

      *v13 = v23;
      *v10 = v25;
      v58 = *(a2 - 1);
      v59 = *(v14 + 4 * v58);
      v60 = *(v14 + 4 * v25);
      v191 = v59 == v60;
      v61 = v59 < v60;
      if (v191)
      {
        v61 = v58 < v25;
      }

      if (v61)
      {
        *v10 = v58;
        goto LABEL_58;
      }
    }

    else if (v28)
    {
      *v10 = v15;
      *(a2 - 1) = v23;
      v34 = *v10;
      v35 = *(v14 + 4 * v34);
      v36 = *v13;
      v37 = *(v14 + 4 * v36);
      v191 = v35 == v37;
      v38 = v35 < v37;
      if (v191)
      {
        v38 = v34 < v36;
      }

      if (v38)
      {
        *v13 = v34;
        *v10 = v36;
      }
    }

LABEL_97:
    --a4;
    v103 = *v10;
    if (a5)
    {
      v104 = *(v14 + 4 * v103);
      goto LABEL_102;
    }

    v105 = *(v10 - 1);
    v106 = *(v14 + 4 * v105);
    v104 = *(v14 + 4 * v103);
    v107 = v105 < v103;
    v191 = v106 == v104;
    v108 = v106 < v104;
    if (!v191)
    {
      v107 = v108;
    }

    if (v107)
    {
LABEL_102:
      v109 = 0;
      do
      {
        v110 = v10[v109 + 1];
        v111 = *(v14 + 4 * v110);
        v191 = v111 == v104;
        v112 = v111 < v104;
        if (v191)
        {
          v112 = v110 < v103;
        }

        ++v109;
      }

      while (v112);
      v113 = &v10[v109];
      v114 = a2;
      if (v109 == 1)
      {
        v114 = a2;
        do
        {
          if (v113 >= v114)
          {
            break;
          }

          v119 = *--v114;
          v120 = *(v14 + 4 * v119);
          v121 = v119 < v103;
          v191 = v120 == v104;
          v122 = v120 < v104;
          if (!v191)
          {
            v121 = v122;
          }
        }

        while (!v121);
      }

      else
      {
        do
        {
          v115 = *--v114;
          v116 = *(v14 + 4 * v115);
          v117 = v115 < v103;
          v191 = v116 == v104;
          v118 = v116 < v104;
          if (!v191)
          {
            v117 = v118;
          }
        }

        while (!v117);
      }

      if (v113 >= v114)
      {
        v136 = v113 - 1;
      }

      else
      {
        v123 = *v114;
        v124 = v110;
        v125 = v113;
        v126 = v114;
        do
        {
          *v125 = v123;
          *v126 = v124;
          v127 = *(v14 + 4 * v103);
          do
          {
            v128 = v125[1];
            ++v125;
            v124 = v128;
            v129 = *(v14 + 4 * v128);
            v130 = v128 < v103;
            v191 = v129 == v127;
            v131 = v129 < v127;
            if (v191)
            {
              v131 = v130;
            }
          }

          while (v131);
          do
          {
            v132 = *--v126;
            v123 = v132;
            v133 = *(v14 + 4 * v132);
            v134 = v132 < v103;
            v191 = v133 == v127;
            v135 = v133 < v127;
            if (v191)
            {
              v135 = v134;
            }
          }

          while (!v135);
        }

        while (v125 < v126);
        v136 = v125 - 1;
      }

      if (v136 != v10)
      {
        *v10 = *v136;
      }

      *v136 = v103;
      if (v113 < v114)
      {
        goto LABEL_133;
      }

      v10 = v136 + 1;
      if (result)
      {
        a2 = v136;
        if (!v137)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v137)
      {
LABEL_133:
        a5 = 0;
        v10 = v136 + 1;
      }
    }

    else
    {
      v138 = *(a2 - 1);
      v139 = *(v14 + 4 * v138);
      v140 = v103 < v138;
      v191 = v104 == v139;
      v141 = v104 < v139;
      if (!v191)
      {
        v140 = v141;
      }

      if (v140)
      {
        do
        {
          v142 = v10[1];
          ++v10;
          v143 = *(v14 + 4 * v142);
          v144 = v103 < v142;
          v191 = v104 == v143;
          v145 = v104 < v143;
          if (!v191)
          {
            v144 = v145;
          }
        }

        while (!v144);
      }

      else
      {
        v146 = (v10 + 1);
        do
        {
          v10 = v146;
          if (v146 >= a2)
          {
            break;
          }

          v146 += 4;
          v147 = *v10;
          v148 = *(v14 + 4 * v147);
          v149 = v103 < v147;
          v191 = v104 == v148;
          v150 = v104 < v148;
          if (!v191)
          {
            v149 = v150;
          }
        }

        while (!v149);
      }

      v151 = a2;
      if (v10 < a2)
      {
        v151 = a2;
        do
        {
          v152 = *--v151;
          v153 = *(v14 + 4 * v152);
          v154 = v103 < v152;
          v191 = v104 == v153;
          v155 = v104 < v153;
          if (!v191)
          {
            v154 = v155;
          }
        }

        while (v154);
      }

      if (v10 < v151)
      {
        v156 = *v10;
        v157 = *v151;
        do
        {
          *v10 = v157;
          *v151 = v156;
          v158 = *(v14 + 4 * v103);
          do
          {
            v159 = v10[1];
            ++v10;
            v156 = v159;
            v160 = *(v14 + 4 * v159);
            v161 = v103 < v159;
            v191 = v158 == v160;
            v162 = v158 < v160;
            if (v191)
            {
              v162 = v161;
            }
          }

          while (!v162);
          do
          {
            v163 = *--v151;
            v157 = v163;
            v164 = *(v14 + 4 * v163);
            v165 = v103 < v163;
            v191 = v158 == v164;
            v166 = v158 < v164;
            if (v191)
            {
              v166 = v165;
            }
          }

          while (v166);
        }

        while (v10 < v151);
      }

      v167 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v167;
      }

      a5 = 0;
      *v167 = v103;
    }
  }

  v193 = *a3;
  v194 = *v10;
  v195 = v10[1];
  v196 = *(*a3 + 4 * v195);
  v197 = *(*a3 + 4 * *v10);
  v198 = v195 < *v10;
  v191 = v196 == v197;
  v199 = v196 < v197;
  v200 = *(a2 - 1);
  v201 = *(*a3 + 4 * v200);
  if (!v191)
  {
    v198 = v199;
  }

  v191 = v201 == v196;
  v202 = v201 < v196;
  if (v191)
  {
    v202 = v200 < v195;
  }

  if (v198)
  {
    if (v202)
    {
      *v10 = v200;
    }

    else
    {
      *v10 = v195;
      v10[1] = v194;
      v289 = *(a2 - 1);
      v290 = *(v193 + 4 * v289);
      v291 = *(v193 + 4 * v194);
      v191 = v290 == v291;
      v292 = v290 < v291;
      if (v191)
      {
        v292 = v289 < v194;
      }

      if (!v292)
      {
        return result;
      }

      v10[1] = v289;
    }

    *(a2 - 1) = v194;
    return result;
  }

  if (v202)
  {
    v10[1] = v200;
    *(a2 - 1) = v195;
    v184 = *v10;
    v273 = v10[1];
    v274 = *(v193 + 4 * v273);
    v275 = *(v193 + 4 * v184);
    v191 = v274 == v275;
    v276 = v274 < v275;
    if (v191)
    {
      v276 = v273 < v184;
    }

    if (v276)
    {
      *v10 = v273;
      goto LABEL_269;
    }
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<unsigned int>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *(a5 + 4 * v5);
  v7 = *result;
  v8 = *(a5 + 4 * v7);
  v9 = v5 < v7;
  v10 = v6 == v8;
  v11 = v6 < v8;
  v12 = *a3;
  v13 = *(a5 + 4 * *a3);
  if (!v10)
  {
    v9 = v11;
  }

  v10 = v13 == v6;
  v14 = v13 < v6;
  if (v10)
  {
    v14 = v12 < v5;
  }

  if (v9)
  {
    if (v14)
    {
      *result = v12;
LABEL_17:
      *a3 = v7;
      goto LABEL_18;
    }

    *result = v5;
    *a2 = v7;
    v12 = *a3;
    v20 = *(a5 + 4 * *a3);
    v21 = *(a5 + 4 * v7);
    v10 = v20 == v21;
    v22 = v20 < v21;
    if (v10)
    {
      v22 = *a3 < v7;
    }

    if (v22)
    {
      *a2 = v12;
      goto LABEL_17;
    }

    v7 = *a3;
  }

  else if (v14)
  {
    *a2 = v12;
    *a3 = v5;
    v15 = *a2;
    v16 = *(a5 + 4 * v15);
    v17 = *result;
    v18 = *(a5 + 4 * v17);
    v10 = v16 == v18;
    v19 = v16 < v18;
    if (v10)
    {
      v19 = v15 < v17;
    }

    if (v19)
    {
      *result = v15;
      *a2 = v17;
      v7 = *a3;
LABEL_18:
      v12 = v7;
      goto LABEL_22;
    }

    v7 = v5;
    v12 = v5;
  }

  else
  {
    v7 = *a3;
  }

LABEL_22:
  v23 = *a4;
  v24 = *(a5 + 4 * v23);
  v25 = *(a5 + 4 * v7);
  v10 = v24 == v25;
  v26 = v24 < v25;
  if (v10)
  {
    v26 = v23 < v12;
  }

  if (v26)
  {
    *a3 = v23;
    *a4 = v12;
    v27 = *a3;
    v28 = *(a5 + 4 * v27);
    v29 = *a2;
    v30 = *(a5 + 4 * v29);
    v10 = v28 == v30;
    v31 = v28 < v30;
    if (v10)
    {
      v31 = v27 < v29;
    }

    if (v31)
    {
      *a2 = v27;
      *a3 = v29;
      v32 = *a2;
      v33 = *(a5 + 4 * v32);
      v34 = *result;
      v35 = *(a5 + 4 * v34);
      v10 = v33 == v35;
      v36 = v33 < v35;
      if (v10)
      {
        v36 = v32 < v34;
      }

      if (v36)
      {
        *result = v32;
        *a2 = v34;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<unsigned int>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v32 = *a3;
        v33 = *a1;
        v34 = a1[1];
        v35 = *(*a3 + 4 * v34);
        v36 = *(*a3 + 4 * *a1);
        v37 = v34 < *a1;
        v11 = v35 == v36;
        v38 = v35 < v36;
        v39 = *(a2 - 1);
        v40 = *(*a3 + 4 * v39);
        if (!v11)
        {
          v37 = v38;
        }

        v11 = v40 == v35;
        v41 = v40 < v35;
        if (v11)
        {
          v41 = v39 < v34;
        }

        if (v37)
        {
          if (v41)
          {
            *a1 = v39;
          }

          else
          {
            *a1 = v34;
            a1[1] = v33;
            v81 = *(a2 - 1);
            v82 = *(v32 + 4 * v81);
            v83 = *(v32 + 4 * v33);
            v11 = v82 == v83;
            v84 = v82 < v83;
            if (v11)
            {
              v84 = v81 < v33;
            }

            if (!v84)
            {
              return 1;
            }

            a1[1] = v81;
          }

          *(a2 - 1) = v33;
          return 1;
        }

        if (!v41)
        {
          return 1;
        }

        a1[1] = v39;
        *(a2 - 1) = v34;
        v29 = *a1;
        v58 = a1[1];
        v59 = *(v32 + 4 * v58);
        v60 = *(v32 + 4 * v29);
        v11 = v59 == v60;
        v61 = v59 < v60;
        if (v11)
        {
          v61 = v58 < v29;
        }

        if (!v61)
        {
          return 1;
        }

        *a1 = v58;
        break;
      case 4:
        return 1;
      case 5:
        v13 = *a3;
        v14 = *(a2 - 1);
        v15 = *(*a3 + 4 * v14);
        v16 = a1[3];
        v17 = *(*a3 + 4 * v16);
        v11 = v15 == v17;
        v18 = v15 < v17;
        if (v11)
        {
          v18 = v14 < v16;
        }

        if (!v18)
        {
          return 1;
        }

        a1[3] = v14;
        *(a2 - 1) = v16;
        v20 = a1[2];
        v19 = a1[3];
        v21 = *(v13 + 4 * v19);
        v22 = *(v13 + 4 * v20);
        v11 = v21 == v22;
        v23 = v21 < v22;
        if (v11)
        {
          v23 = v19 < v20;
        }

        if (!v23)
        {
          return 1;
        }

        a1[2] = v19;
        a1[3] = v20;
        v24 = *(v13 + 4 * v19);
        v25 = a1[1];
        v26 = *(v13 + 4 * v25);
        v11 = v24 == v26;
        v27 = v24 < v26;
        if (v11)
        {
          v27 = v19 < v25;
        }

        if (!v27)
        {
          return 1;
        }

        a1[1] = v19;
        a1[2] = v25;
        v28 = *(v13 + 4 * v19);
        v29 = *a1;
        v30 = *(v13 + 4 * v29);
        v11 = v28 == v30;
        v31 = v28 < v30;
        if (v11)
        {
          v31 = v19 < v29;
        }

        if (!v31)
        {
          return 1;
        }

        *a1 = v19;
        break;
      default:
        goto LABEL_31;
    }

    a1[1] = v29;
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *(*a3 + 4 * v7);
    v9 = *a1;
    v10 = *(*a3 + 4 * v9);
    v11 = v8 == v10;
    v12 = v8 < v10;
    if (v11)
    {
      v12 = v7 < v9;
    }

    if (v12)
    {
      *a1 = v7;
      *(a2 - 1) = v9;
    }

    return 1;
  }

LABEL_31:
  v42 = a1 + 2;
  v43 = a1[2];
  v44 = a1[1];
  v45 = *a3;
  v46 = *(*a3 + 4 * v44);
  v47 = *a1;
  v48 = *(*a3 + 4 * *a1);
  v11 = v46 == v48;
  v49 = v46 < v48;
  v50 = *(*a3 + 4 * v43);
  if (v11)
  {
    v49 = v44 < *a1;
  }

  v51 = v43 < v44;
  v11 = v50 == v46;
  v52 = v50 < v46;
  if (!v11)
  {
    v51 = v52;
  }

  if (v49)
  {
    v53 = a1;
    v54 = a1 + 2;
    if (!v51)
    {
      *a1 = v44;
      a1[1] = v47;
      v55 = *(v45 + 4 * v43);
      v56 = *(v45 + 4 * v47);
      v11 = v55 == v56;
      v57 = v55 < v56;
      if (v11)
      {
        v57 = v43 < v47;
      }

      v53 = a1 + 1;
      v54 = a1 + 2;
      if (!v57)
      {
        goto LABEL_53;
      }
    }

LABEL_52:
    *v53 = v43;
    *v54 = v47;
    goto LABEL_53;
  }

  if (v51)
  {
    a1[1] = v43;
    *v42 = v44;
    v62 = *(v45 + 4 * v43);
    v63 = *(v45 + 4 * v47);
    v11 = v62 == v63;
    v64 = v62 < v63;
    if (v11)
    {
      v64 = v43 < v47;
    }

    v53 = a1;
    v54 = a1 + 1;
    if (v64)
    {
      goto LABEL_52;
    }
  }

LABEL_53:
  v65 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v66 = 0;
  for (i = 12; ; i += 4)
  {
    v68 = *v65;
    v69 = *(v45 + 4 * *v65);
    v70 = *v42;
    v71 = *(v45 + 4 * v70);
    v11 = v69 == v71;
    v72 = v69 < v71;
    if (v11)
    {
      v72 = *v65 < v70;
    }

    if (v72)
    {
      v73 = i;
      while (1)
      {
        *(a1 + v73) = v70;
        v74 = v73 - 4;
        if (v73 == 4)
        {
          break;
        }

        v75 = a1 + v73;
        v76 = *(v45 + 4 * v68);
        v70 = *(v75 - 2);
        v77 = *(v45 + 4 * v70);
        v11 = v76 == v77;
        v78 = v76 < v77;
        if (v11)
        {
          v79 = v68 < v70;
        }

        else
        {
          v79 = v78;
        }

        v73 = v74;
        if (!v79)
        {
          v80 = (a1 + v74);
          goto LABEL_66;
        }
      }

      v80 = a1;
LABEL_66:
      *v80 = v68;
      if (++v66 == 8)
      {
        break;
      }
    }

    v42 = v65++;
    if (v65 == a2)
    {
      return 1;
    }
  }

  return v65 + 1 == a2;
}

uint64_t re::internal::addCapsuleCap(unsigned int **a1, unsigned int a2, unsigned int a3, float32x4_t *a4, float a5)
{
  v7 = a2;
  v8 = a1;
  v175 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    _ZF = a1[3] == 0;
  }

  else
  {
    _ZF = 1;
  }

  v10 = !_ZF;
  v151 = v10;
  v11 = *a1;
  v152 = a1[1];
  v153 = a1[2];
  v12 = **a1;
  v13 = *(*a1 + 3);
  v14 = a3 * a2;
  v15 = v12 + 1;
  *v11 = v12 + 1 + a3 * a2;
  *(v11 + 40) = v12 + 1 + a3 * a2;
  v16 = v11[23];
  if (v16)
  {
    v17 = v11[25];
    v5 = 8 * v16;
    do
    {
      v18 = *v17++;
      (*(*v18 + 80))(v18, *(v11 + 40));
      v5 -= 8;
    }

    while (v5);
  }

  v19 = re::internal::GeomAttributeManager::attributeByName((v11 + 6), "vertexPosition");
  v20 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v19);
  v142 = v21;
  if (v12 >= v21)
  {
    goto LABEL_103;
  }

  v22 = v20;
  v23 = 0uLL;
  v24 = vaddq_f32(a4[3], vmlaq_f32(vmlaq_n_f32(vmulq_f32(*a4, 0), a4[1], a5), 0, a4[2]));
  *(v20 + 16 * v12) = vdivq_f32(v24, vdupq_laneq_s32(v24, 3));
  if (v153)
  {
    v25 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v8[2]);
    LODWORD(v5) = v26;
    if (v12 >= v26)
    {
LABEL_107:
      v161 = 0;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      v112 = MEMORY[0x1E69E9C10];
      v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v162 = 136315906;
      v163 = "operator[]";
      v164 = 1024;
      if (v113)
      {
        v114 = 3;
      }

      else
      {
        v114 = 2;
      }

      v165 = 621;
      v166 = 2048;
      v167 = v12;
      v168 = 2048;
      v169 = v5;
      _os_log_send_and_compose_impl(v114, &v161, &v170, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v162, 38, v128, v131);
      _os_crash_msg();
      __break(1u);
      goto LABEL_111;
    }

    *(v25 + 8 * v12) = 0x3F0000003F000000;
    v150 = v26;
    v23 = 0uLL;
  }

  else
  {
    v25 = 0;
    v150 = 0xFFFFFFFFLL;
  }

  v141 = v25;
  if (v152)
  {
    v155 = a4[1];
    v157 = *a4;
    v159 = a4[2];
    v27 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v8[1]);
    LODWORD(v5) = v28;
    if (v12 >= v28)
    {
LABEL_111:
      v161 = 0;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      v115 = MEMORY[0x1E69E9C10];
      v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v162 = 136315906;
      v163 = "operator[]";
      v164 = 1024;
      if (v116)
      {
        v117 = 3;
      }

      else
      {
        v117 = 2;
      }

      v165 = 621;
      v166 = 2048;
      v167 = v12;
      v168 = 2048;
      v169 = v5;
      _os_log_send_and_compose_impl(v117, &v161, &v170, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v162, 38, v128, v131);
      _os_crash_msg();
      __break(1u);
LABEL_115:
      v161 = 0;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      v118 = MEMORY[0x1E69E9C10];
      v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v162 = 136315906;
      v163 = "operator[]";
      v164 = 1024;
      if (v119)
      {
        v120 = 3;
      }

      else
      {
        v120 = 2;
      }

      v165 = 621;
      v166 = 2048;
      v167 = v12;
      v168 = 2048;
      v169 = v8;
      _os_log_send_and_compose_impl(v120, &v161, &v170, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v162, 38, v129, v132);
      _os_crash_msg();
      __break(1u);
      v161 = 0;
      v173 = v121;
      v174 = v121;
      v171 = v121;
      v172 = v121;
      v170 = v121;
      v122 = MEMORY[0x1E69E9C10];
      v124 = v123;
      v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v162 = 136315906;
      v163 = "operator[]";
      v164 = 1024;
      if (v125)
      {
        v126 = 3;
      }

      else
      {
        v126 = 2;
      }

      v165 = 621;
      v166 = 2048;
      v167 = v12;
      v168 = 2048;
      v169 = v124;
      _os_log_send_and_compose_impl(v126, &v161, &v170, 80, &dword_1E1C61000, v122, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v162, 38, v130, v133);
      _os_crash_msg();
      __break(1u);
    }

    v23 = v157;
    v29 = vmlaq_f32(vaddq_f32(vmulq_f32(v157, 0), v155), 0, v159);
    v139 = v27;
    *(v27 + 16 * v12) = v29;
    v30 = vmulq_f32(v29, xmmword_1E3047680);
    v146 = (v30.f32[2] + vaddv_f32(*v30.f32)) > 0.0;
    v149 = v28;
    v31 = v155;
    v32 = v159;
  }

  else
  {
    v139 = 0;
    v146 = 0;
    v149 = 0xFFFFFFFFLL;
    v31 = 0uLL;
    v32 = 0uLL;
  }

  v158 = v23;
  v160 = v32;
  v156 = v31;
  v132 = v11;
  v134 = v12;
  v129 = v13;
  v135 = v12 + 1;
  v127 = v14;
  v140 = v22;
  if (v151)
  {
    v33 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v8[3]);
    v34 = v8[4];
    v8 = v35;
    v143 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v34);
    if (v12 >= v8)
    {
      goto LABEL_115;
    }

    *(v33 + 16 * v12) = vmlaq_f32(vmlaq_f32(v158, 0, v156), 0, v160);
    __asm { FMOV            V0.4S, #-1.0 }

    *(v143 + 16 * v12) = vmlaq_f32(vmlaq_f32(vmulq_f32(v158, 0), 0, v156), _Q0, v160);
    v147 = v36;
    v148 = v8;
    v41 = v33;
  }

  else
  {
    v143 = 0;
    v41 = 0;
    v147 = 0xFFFFFFFFLL;
    v148 = 0xFFFFFFFFLL;
  }

  if (a3)
  {
    v42 = 0;
    v43 = 6.2832 / v7;
    v44 = v7;
    v137 = v7;
    v136 = v41;
    do
    {
      v45 = v42 + 1;
      v46 = __sincosf_stret((1.5708 / a3) * (v42 + 1));
      if (v7)
      {
        v144 = v42 + 1;
        v8 = 0;
        v47 = v42 + 1.0;
        v48 = v15;
        v5 = v143 + 16 * v15;
        v49 = v41 + 16 * v15;
        v50 = v139 + 16 * v15;
        v51 = v47 / a3;
        if (v142 >= v15)
        {
          v12 = v142 - v15;
        }

        else
        {
          v12 = 0;
        }

        v52 = v141 + 8 * v15;
        v138 = v15;
        v53 = v140 + 16 * v15;
        do
        {
          v55 = __sincosf_stret(v43 * v8);
          if (v12 == v8)
          {
            goto LABEL_79;
          }

          v56 = v8 + v48;
          *v54.i32 = v46.__sinval * v55.__cosval;
          v57 = v54;
          v57.i32[1] = LODWORD(v46.__cosval);
          v58 = v57;
          *&v58.i32[2] = v55.__sinval * -v46.__sinval;
          v59 = vmulq_n_f32(v58, a5);
          v60 = vaddq_f32(a4[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, v59.f32[0]), a4[1], *v59.f32, 1), a4[2], v59, 2));
          *(v53 + 16 * v8) = vdivq_f32(v60, vdupq_laneq_s32(v60, 3));
          if (v153)
          {
            if (v150 <= v56)
            {
              goto LABEL_83;
            }

            v61.f32[0] = (v51 * v55.__cosval) + 1.0;
            v61.f32[1] = (v51 * v55.__sinval) + 1.0;
            *(v52 + 8 * v8) = vmul_f32(v61, 0x3F0000003F000000);
          }

          if (v152)
          {
            if (v149 <= v56)
            {
              goto LABEL_87;
            }

            *(v50 + 16 * v8) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v158, *v54.i32), v156, *v57.i8, 1), v160, v58, 2);
          }

          if (v151)
          {
            if (v148 <= v56)
            {
              goto LABEL_91;
            }

            v62.i64[0] = LODWORD(v55.__sinval);
            v62.i64[1] = LODWORD(v55.__cosval);
            v63 = vnegq_f32(v62);
            if (v146)
            {
              v64 = -1;
            }

            else
            {
              v64 = 0;
            }

            v65 = vbslq_s8(vdupq_n_s32(v64), v63, v62);
            *(v49 + 16 * v8) = v65;
            if (v147 <= v56)
            {
              goto LABEL_95;
            }

            v66 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL), vnegq_f32(v65)), v58, vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL));
            *(v5 + 16 * v8) = vnegq_f32(vmlaq_lane_f32(vmlaq_n_f32(vmulq_laneq_f32(v158, v66, 2), v156, v66.f32[0]), v160, *v66.f32, 1));
            *(v49 + 16 * v8) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v158, COERCE_FLOAT(*(v49 + 16 * v8))), v156, *(v49 + 16 * v8), 1), v160, *(v49 + 16 * v8), 2);
          }

          v8 = (v8 + 1);
        }

        while (v44 != v8);
        v15 = v48 + v8;
        v7 = v137;
        v41 = v136;
        v45 = v144;
      }

      v42 = v45;
    }

    while (v45 != a3);
  }

  v67 = v129;
  result = re::DynamicArray<re::GeomCell4>::resize(v132 + 1, v127 + v129);
  *(v132 + 68) = v127 + v129;
  v69 = v132[37];
  if (v69)
  {
    v70 = v132[39];
    v71 = 8 * v69;
    do
    {
      v72 = *v70++;
      result = (*(*v72 + 80))(v72, *(v132 + 68));
      v71 -= 8;
    }

    while (v71);
  }

  v73 = v134;
  if (v7)
  {
    v74 = v129;
    v5 = v132[3];
    v75 = v7 - 1;
    v67 = v129 + v7;
    v76 = v135;
    v77 = v7;
    while (1)
    {
      v12 = v74;
      if (v5 <= v74)
      {
        break;
      }

      if (v75)
      {
        v78 = v76 + 1;
      }

      else
      {
        v78 = v135;
      }

      v79 = (v132[5] + 16 * v74);
      *v79 = v134;
      v79[1] = v76++;
      v79[2] = v78;
      v79[3] = -1;
      --v75;
      ++v74;
      if (!--v77)
      {
        goto LABEL_57;
      }
    }

LABEL_99:
    v161 = 0;
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v170 = 0u;
    v106 = MEMORY[0x1E69E9C10];
    v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v162 = 136315906;
    v163 = "operator[]";
    v164 = 1024;
    if (v107)
    {
      v108 = 3;
    }

    else
    {
      v108 = 2;
    }

    v165 = 789;
    v166 = 2048;
    v167 = v12;
    v168 = 2048;
    v169 = v5;
    _os_log_send_and_compose_impl(v108, &v161, &v170, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v162, 38, v129, v132);
    _os_crash_msg();
    __break(1u);
LABEL_103:
    v161 = 0;
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v170 = 0u;
    v109 = MEMORY[0x1E69E9C10];
    v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v162 = 136315906;
    v163 = "operator[]";
    v164 = 1024;
    if (v110)
    {
      v111 = 3;
    }

    else
    {
      v111 = 2;
    }

    v165 = 621;
    v166 = 2048;
    v167 = v12;
    v168 = 2048;
    v169 = v142;
    _os_log_send_and_compose_impl(v111, &v161, &v170, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v162, 38, v128, v131);
    _os_crash_msg();
    __break(1u);
    goto LABEL_107;
  }

LABEL_57:
  if (a3 == 1)
  {
    return result;
  }

  v80 = 0;
  v81 = v7 - 1;
  v82 = v134 + v7;
  do
  {
    if (!v7)
    {
      goto LABEL_73;
    }

    v83 = 0;
    v84 = v135 + v80 * v7;
    v85 = v132[3];
    do
    {
      v12 = (v67 + v83);
      v86 = v82 + v83 + 2;
      LODWORD(result) = v73 + v83 + 2;
      if (v83 - v7 == -1)
      {
        result = v84;
      }

      else
      {
        result = result;
      }

      if (v83 - v7 == -1)
      {
        v86 = v84 + v7;
        v87 = v84 + v81 + v7;
      }

      else
      {
        v87 = v82 + v83 + 1;
      }

      if (v83 - v7 == -1)
      {
        v88 = v84 + v81;
      }

      else
      {
        v88 = v73 + v83 + 1;
      }

      if (v85 <= v12)
      {
        v161 = 0;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        v170 = 0u;
        v90 = MEMORY[0x1E69E9C10];
        v162 = 136315906;
        v163 = "operator[]";
        v164 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v91 = 3;
        }

        else
        {
          v91 = 2;
        }

        v165 = 789;
        v166 = 2048;
        v167 = v12;
        v168 = 2048;
        v169 = v85;
        _os_log_send_and_compose_impl(v91, &v161, &v170, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v162, 38, v129, v132);
        _os_crash_msg();
        __break(1u);
LABEL_79:
        v161 = 0;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        v170 = 0u;
        v92 = MEMORY[0x1E69E9C10];
        v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v163 = "operator[]";
        v164 = 1024;
        v165 = 621;
        if (v93)
        {
          v94 = 3;
        }

        else
        {
          v94 = 2;
        }

        v162 = 136315906;
        v166 = 2048;
        v167 = v138 + v8;
        v168 = 2048;
        v169 = v142;
        _os_log_send_and_compose_impl(v94, &v161, &v170, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v162, 38, v129, v132);
        _os_crash_msg();
        __break(1u);
LABEL_83:
        v161 = 0;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        v170 = 0u;
        v95 = MEMORY[0x1E69E9C10];
        v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v162 = 136315906;
        v163 = "operator[]";
        if (v96)
        {
          v97 = 3;
        }

        else
        {
          v97 = 2;
        }

        v164 = 1024;
        v165 = 621;
        v166 = 2048;
        v167 = v8 + v138;
        v168 = 2048;
        v169 = v150;
        _os_log_send_and_compose_impl(v97, &v161, &v170, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v162, 38, v129, v132);
        _os_crash_msg();
        __break(1u);
LABEL_87:
        v161 = 0;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        v170 = 0u;
        v5 = MEMORY[0x1E69E9C10];
        v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v162 = 136315906;
        v163 = "operator[]";
        if (v98)
        {
          v99 = 3;
        }

        else
        {
          v99 = 2;
        }

        v164 = 1024;
        v165 = 621;
        v166 = 2048;
        v167 = v8 + v138;
        v168 = 2048;
        v169 = v149;
        _os_log_send_and_compose_impl(v99, &v161, &v170, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v162, 38, v129, v132);
        _os_crash_msg();
        __break(1u);
LABEL_91:
        v161 = 0;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        v170 = 0u;
        v100 = MEMORY[0x1E69E9C10];
        v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v162 = 136315906;
        v163 = "operator[]";
        if (v101)
        {
          v102 = 3;
        }

        else
        {
          v102 = 2;
        }

        v164 = 1024;
        v165 = 621;
        v166 = 2048;
        v167 = v8 + v138;
        v168 = 2048;
        v169 = v148;
        _os_log_send_and_compose_impl(v102, &v161, &v170, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v162, 38, v129, v132);
        _os_crash_msg();
        __break(1u);
LABEL_95:
        v161 = 0;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        v170 = 0u;
        v103 = MEMORY[0x1E69E9C10];
        v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v162 = 136315906;
        v163 = "operator[]";
        if (v104)
        {
          v105 = 3;
        }

        else
        {
          v105 = 2;
        }

        v164 = 1024;
        v165 = 621;
        v166 = 2048;
        v167 = v8 + v138;
        v168 = 2048;
        v169 = v147;
        _os_log_send_and_compose_impl(v105, &v161, &v170, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v162, 38, v129, v132);
        _os_crash_msg();
        __break(1u);
        goto LABEL_99;
      }

      v89 = (v132[5] + 16 * v12);
      *v89 = v88;
      v89[1] = v87;
      v89[2] = v86;
      v89[3] = result;
      ++v83;
    }

    while (v83 != v7);
    v67 += v83;
LABEL_73:
    ++v80;
    v73 += v7;
    v82 += v7;
  }

  while (v80 != a3 - 1);
  return result;
}

uint64_t re::buildCapsule(_anonymous_namespace_ *a1, unsigned __int16 *a2)
{
  v181 = *MEMORY[0x1E69E9840];
  v4 = &v160;
  v162 = 0u;
  v161 = 0u;
  LODWORD(v148) = 0;
  v5 = &v148;
  v152 = 0;
  v149[1] = 0;
  v150 = 0;
  v151 = 0;
  re::DynamicArray<re::BlendNode>::setCapacity(v149, 1uLL);
  ++v151;
  re::internal::GeomAttributeManager::GeomAttributeManager(v153);
  if (*a2 < 3u || !a2[1] || !a2[2])
  {
    re::internal::GeomAttributeManager::addAttribute(v153, "vertexPosition", 1, 7);
    if (*(a2 + 16) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v153, "vertexUV", 1, 6);
    }

    if (*(a2 + 17) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v153, "vertexNormal", 1, 7);
    }

    if (*(a2 + 16) == 1 && *(a2 + 17) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v153, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v153, "vertexBitangent", 1, 7);
    }

    re::GeomMesh::operator=(a1, &v148);
    goto LABEL_14;
  }

  v160 = &v148;
  re::internal::GeomAttributeManager::addAttribute(v153, "vertexPosition", 1, 7);
  if (*(a2 + 17) == 1)
  {
    v6 = re::internal::GeomAttributeManager::addAttribute(v153, "vertexNormal", 1, 7);
    *&v161 = v6;
  }

  else
  {
    v6 = 0;
  }

  v142 = v6;
  if (*(a2 + 16) == 1)
  {
    v8 = 0;
    *(&v161 + 1) = re::internal::GeomAttributeManager::addAttribute(v153, "vertexUV", 1, 6);
    v141 = *(&v161 + 1);
    if (a2[8] & 1) != 0 && (*(a2 + 17))
    {
      v8 = re::internal::GeomAttributeManager::addAttribute(v153, "vertexTangent", 1, 7);
      *&v162 = v8;
      v9 = re::internal::GeomAttributeManager::addAttribute(v153, "vertexBitangent", 1, 7);
      *(&v162 + 1) = v9;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v141 = 0;
  }

  v10 = *(a2 + 2);
  v11 = (*(a2 + 3) + (v10 * -2.0)) * 0.5;
  v147[0] = xmmword_1E3047670;
  v147[1] = xmmword_1E3047680;
  v12.i32[0] = 0;
  v12.f32[1] = v11;
  v12.i32[2] = 0;
  v12.i32[3] = 1.0;
  v136 = v12;
  v147[2] = xmmword_1E30476A0;
  v147[3] = v12;
  *v12.f32 = vrsqrte_f32(1065353216);
  *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(1065353216, vmul_f32(*v12.f32, *v12.f32)));
  v13 = vmulq_n_f32(xmmword_1E3047670, vmul_f32(*v12.f32, vrsqrts_f32(1065353216, vmul_f32(*v12.f32, *v12.f32))).f32[0]);
  v14 = vmulq_f32(v13, v13).f32[0];
  v15 = vmuls_lane_f32(v13.f32[1], *v13.f32, 1);
  v16 = vmuls_lane_f32(v13.f32[2], v13, 2);
  v17 = vmuls_lane_f32(v13.f32[0], *v13.f32, 1);
  v18 = vmuls_lane_f32(v13.f32[0], v13, 2);
  v12.f32[0] = vmuls_lane_f32(v13.f32[1], v13, 2);
  v19 = -0.000000087423 * v13.f32[0];
  v20 = vmuls_lane_f32(-0.000000087423, *v13.f32, 1);
  v13.f32[0] = vmuls_lane_f32(-0.000000087423, v13, 2);
  *&v21 = v16 - (1.0 - v16);
  v22.f32[0] = v14 - (1.0 - v14);
  v22.f32[1] = v13.f32[0] + (v17 * 2.0);
  v22.i64[1] = COERCE_UNSIGNED_INT(-(v20 - (v18 * 2.0)));
  v13.f32[0] = -(v13.f32[0] - (v17 * 2.0));
  v13.f32[1] = v15 - (1.0 - v15);
  v13.i64[1] = COERCE_UNSIGNED_INT(v19 + (v12.f32[0] * 2.0));
  v132 = v13;
  v134 = v22;
  v13.f32[0] = v20 + (v18 * 2.0);
  v13.f32[1] = -(v19 - (v12.f32[0] * 2.0));
  v13.i64[1] = v21;
  v131 = v13;
  v23 = *a2;
  v24 = a2[2];
  re::internal::addCapsuleCap(&v160, *a2, v24, v147, v10);
  v25 = 0;
  v163 = xmmword_1E3047670;
  v164 = xmmword_1E3047680;
  v165 = xmmword_1E30476A0;
  v166 = v136;
  do
  {
    *(&v176 + v25) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v134, COERCE_FLOAT(*(&v163 + v25))), v132, *(&v163 + v25), 1), v131, *(&v163 + v25), 2), xmmword_1E30474D0, *(&v163 + v25), 3);
    v25 += 16;
  }

  while (v25 != 64);
  re::internal::addCapsuleCap(&v160, v23, v24, &v176, v10);
  *&v165 = 0;
  *&v164 = 0;
  v163 = 0uLL;
  DWORD2(v164) = 0;
  v146 = 0;
  v143[1] = 0;
  v144 = 0;
  v143[0] = 0;
  v145 = 0;
  re::DynamicArray<float>::resize(&v163, v23);
  re::DynamicArray<float>::resize(v143, v23);
  v26 = v164;
  if (v23)
  {
    v27 = 0;
    v28 = (v24 - 1) * v23;
    v29 = (2 * v24 - 1) * v23 + 2;
    v30 = v165;
    v31 = v144;
    v32 = v146;
    v33 = v28 + 1;
    v34 = v23;
    while (v26 != v27)
    {
      *(v30 + 4 * v27) = v29 + v34 % v23;
      if (v31 == v27)
      {
        goto LABEL_121;
      }

      *v32++ = v33;
      ++v27;
      ++v33;
      if (!--v34)
      {
        goto LABEL_32;
      }
    }

LABEL_117:
    v167 = 0;
    *(v4 + 232) = 0u;
    *(v4 + 216) = 0u;
    *(v4 + 200) = 0u;
    *(v4 + 184) = 0u;
    *(v4 + 168) = 0u;
    v108 = MEMORY[0x1E69E9C10];
    v31 = v26;
    v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v168 = 136315906;
    *(v4 + 124) = "operator[]";
    v170 = 1024;
    if (v109)
    {
      v110 = 3;
    }

    else
    {
      v110 = 2;
    }

    *(v4 + 134) = 789;
    v172 = 2048;
    *(v4 + 140) = v31;
    v174 = 2048;
    *(v4 + 150) = v31;
    _os_log_send_and_compose_impl(v110, &v167, &v176, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v168, 38, v128, v129);
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v167 = 0;
    *(v4 + 232) = 0u;
    *(v4 + 216) = 0u;
    *(v4 + 200) = 0u;
    *(v4 + 184) = 0u;
    *(v4 + 168) = 0u;
    v111 = MEMORY[0x1E69E9C10];
    v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v168 = 136315906;
    *(v4 + 124) = "operator[]";
    v170 = 1024;
    if (v112)
    {
      v113 = 3;
    }

    else
    {
      v113 = 2;
    }

    *(v4 + 134) = 789;
    v172 = 2048;
    *(v4 + 140) = v31;
    v174 = 2048;
    *(v4 + 150) = v31;
    _os_log_send_and_compose_impl(v113, &v167, &v176, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v168, 38, v128, v129);
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v167 = 0;
    v180 = 0u;
    v179 = 0u;
    v178 = 0u;
    v177 = 0u;
    v176 = 0u;
    v114 = MEMORY[0x1E69E9C10];
    v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v168 = 136315906;
    v169 = "operator[]";
    v170 = 1024;
    if (v115)
    {
      v116 = 3;
    }

    else
    {
      v116 = 2;
    }

    v171 = 797;
    v172 = 2048;
    v173 = v31;
    v174 = 2048;
    v175 = v8;
    _os_log_send_and_compose_impl(v116, &v167, &v176, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v168, 38, v128, v130);
    _os_crash_msg();
    __break(1u);
LABEL_129:
    v167 = 0;
    v31 = &v160;
    v180 = 0u;
    v179 = 0u;
    v178 = 0u;
    v177 = 0u;
    v176 = 0u;
    v117 = MEMORY[0x1E69E9C10];
    v118 = v60;
    v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v168 = 136315906;
    v169 = "operator[]";
    v170 = 1024;
    if (v119)
    {
      v120 = 3;
    }

    else
    {
      v120 = 2;
    }

    v171 = 621;
    v172 = 2048;
    v173 = v8;
    v174 = 2048;
    v175 = v118;
    _os_log_send_and_compose_impl(v120, &v167, &v176, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v168, 38, v128, v130);
    _os_crash_msg();
    __break(1u);
LABEL_133:
    v167 = 0;
    v180 = 0u;
    v179 = 0u;
    v178 = 0u;
    v177 = 0u;
    v176 = 0u;
    v121 = MEMORY[0x1E69E9C10];
    v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v168 = 136315906;
    v169 = "operator[]";
    v170 = 1024;
    if (v122)
    {
      v123 = 3;
    }

    else
    {
      v123 = 2;
    }

    v171 = 797;
    v172 = 2048;
    v173 = v31;
    v174 = 2048;
    v175 = v5;
    _os_log_send_and_compose_impl(v123, &v167, &v176, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v168, 38, v128, v130);
    _os_crash_msg();
    __break(1u);
LABEL_137:
    v167 = 0;
    v180 = 0u;
    v179 = 0u;
    v178 = 0u;
    v177 = 0u;
    v176 = 0u;
    v124 = MEMORY[0x1E69E9C10];
    v125 = v60;
    v126 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v168 = 136315906;
    v169 = "operator[]";
    v170 = 1024;
    if (v126)
    {
      v127 = 3;
    }

    else
    {
      v127 = 2;
    }

    v171 = 621;
    v172 = 2048;
    v173 = v5;
    v174 = 2048;
    v175 = v125;
    _os_log_send_and_compose_impl(v127, &v167, &v176, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v168, 38, v128, v130);
    _os_crash_msg();
    __break(1u);
  }

LABEL_32:
  v133 = a1;
  if (v9)
  {
    v35 = v8 == 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = !v35;
  LODWORD(v4) = v148;
  v140 = v26;
  v37 = v26 + 1;
  v139 = a2[1];
  LODWORD(v148) = v37 + v37 * v139 + v148;
  v154 = v148;
  if (v155)
  {
    v38 = v156;
    v39 = 8 * v155;
    do
    {
      v40 = *v38++;
      (*(*v40 + 80))(v40, v154);
      v39 -= 8;
    }

    while (v39);
  }

  v41 = re::internal::GeomAttributeManager::attributeByName(v153, "vertexPosition");
  v42 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v41);
  v138 = v44;
  v130 = v8;
  if (v141)
  {
    v5 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v141);
  }

  else
  {
    v5 = 0;
    v45 = -1;
  }

  v137 = v45;
  v46 = v9;
  v135 = a2;
  if (v142)
  {
    v47 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v142);
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = -1;
  }

  v50 = v140;
  v51 = v139;
  if (v36)
  {
    v52 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v8);
    v54 = v53;
    v55 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v46);
    v56 = v52;
    v57 = v54;
    v51 = v139;
    v50 = v140;
    v59 = v58;
  }

  else
  {
    v56 = 0;
    v55 = 0;
    v57 = 0xFFFFFFFFLL;
    v59 = -1;
  }

  v60 = v138;
  v61 = v137;
  v62 = v5;
  v63 = 0;
  v64 = 1.0 / v139;
  do
  {
    v31 = v63 % v50;
    v8 = v164;
    if (v164 <= v31)
    {
      goto LABEL_125;
    }

    v8 = *(v165 + 4 * v31);
    if (v8 >= v138)
    {
      goto LABEL_129;
    }

    v5 = v144;
    if (v144 <= v31)
    {
      goto LABEL_133;
    }

    v5 = v146[v31];
    if (v5 >= v138)
    {
      goto LABEL_137;
    }

    v65 = 0;
    v66 = v63 + v4;
    do
    {
      if (v66 >= v138)
      {
        v167 = 0;
        v67 = &v160;
        v180 = 0u;
        v179 = 0u;
        v178 = 0u;
        v177 = 0u;
        v176 = 0u;
        v85 = MEMORY[0x1E69E9C10];
        v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v168 = 136315906;
        v169 = "operator[]";
        if (v86)
        {
          v87 = 3;
        }

        else
        {
          v87 = 2;
        }

        v170 = 1024;
        v171 = 621;
        v172 = 2048;
        v173 = v66;
        v174 = 2048;
        v175 = v138;
        _os_log_send_and_compose_impl(v87, &v167, &v176, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v168, 38, v128, v130);
        _os_crash_msg();
        __break(1u);
LABEL_93:
        v167 = 0;
        v180 = 0u;
        v179 = 0u;
        v178 = 0u;
        v177 = 0u;
        v176 = 0u;
        v88 = MEMORY[0x1E69E9C10];
        v89 = v61;
        v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v168 = 136315906;
        v169 = "operator[]";
        if (v90)
        {
          v91 = 3;
        }

        else
        {
          v91 = 2;
        }

        v170 = 1024;
        v171 = 621;
        v172 = 2048;
        v173 = v67;
        v174 = 2048;
        v175 = v89;
        _os_log_send_and_compose_impl(v91, &v167, &v176, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v168, 38, v128, v130);
        _os_crash_msg();
        __break(1u);
LABEL_97:
        v167 = 0;
        v180 = 0u;
        v179 = 0u;
        v178 = 0u;
        v177 = 0u;
        v176 = 0u;
        v92 = MEMORY[0x1E69E9C10];
        v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v168 = 136315906;
        v169 = "operator[]";
        if (v93)
        {
          v94 = 3;
        }

        else
        {
          v94 = 2;
        }

        v170 = 1024;
        v171 = 621;
        v172 = 2048;
        v173 = v67;
        v174 = 2048;
        v175 = v49;
        _os_log_send_and_compose_impl(v94, &v167, &v176, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v168, 38, v128, v130);
        _os_crash_msg();
        __break(1u);
LABEL_101:
        v167 = 0;
        v180 = 0u;
        v179 = 0u;
        v178 = 0u;
        v177 = 0u;
        v176 = 0u;
        v95 = MEMORY[0x1E69E9C10];
        v96 = v59;
        v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v168 = 136315906;
        v169 = "operator[]";
        if (v97)
        {
          v98 = 3;
        }

        else
        {
          v98 = 2;
        }

        v170 = 1024;
        v171 = 621;
        v172 = 2048;
        v173 = v67;
        v174 = 2048;
        v175 = v96;
        _os_log_send_and_compose_impl(v98, &v167, &v176, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v168, 38, v128, v130);
        _os_crash_msg();
        __break(1u);
LABEL_105:
        v167 = 0;
        v180 = 0u;
        v179 = 0u;
        v178 = 0u;
        v177 = 0u;
        v176 = 0u;
        v99 = MEMORY[0x1E69E9C10];
        v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v168 = 136315906;
        v169 = "operator[]";
        if (v100)
        {
          v101 = 3;
        }

        else
        {
          v101 = 2;
        }

        v170 = 1024;
        v171 = 621;
        v172 = 2048;
        v173 = v67;
        v174 = 2048;
        v175 = v49;
        _os_log_send_and_compose_impl(v101, &v167, &v176, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v168, 38, v128, v130);
        _os_crash_msg();
        __break(1u);
LABEL_109:
        v167 = 0;
        v180 = 0u;
        v179 = 0u;
        v178 = 0u;
        v177 = 0u;
        v176 = 0u;
        v102 = MEMORY[0x1E69E9C10];
        v4 = v57;
        v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v168 = 136315906;
        v169 = "operator[]";
        if (v103)
        {
          v104 = 3;
        }

        else
        {
          v104 = 2;
        }

        v170 = 1024;
        v171 = 621;
        v172 = 2048;
        v173 = v67;
        v174 = 2048;
        v175 = v4;
        _os_log_send_and_compose_impl(v104, &v167, &v176, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v168, 38, v128, v130);
        _os_crash_msg();
        __break(1u);
LABEL_113:
        v167 = 0;
        v8 = &v160;
        v180 = 0u;
        v179 = 0u;
        v178 = 0u;
        v177 = 0u;
        v176 = 0u;
        v105 = MEMORY[0x1E69E9C10];
        v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v168 = 136315906;
        v169 = "operator[]";
        v170 = 1024;
        if (v106)
        {
          v107 = 3;
        }

        else
        {
          v107 = 2;
        }

        v171 = 789;
        v172 = 2048;
        v173 = v36;
        v174 = 2048;
        v175 = v67;
        _os_log_send_and_compose_impl(v107, &v167, &v176, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v168, 38, v128, v130);
        _os_crash_msg();
        __break(1u);
        goto LABEL_117;
      }

      v67 = v66;
      v68 = (v42 + 16 * v66);
      *v68 = vaddq_f32(vmulq_n_f32(*(v42 + 16 * v8), 1.0 - (v64 * v65)), vmulq_n_f32(*(v42 + 16 * v5), v64 * v65));
      if (v141)
      {
        if (v137 <= v66)
        {
          goto LABEL_93;
        }

        *&v69 = (1.0 / v140) * v63;
        *(&v69 + 1) = v64 * v65;
        *(v62 + 8 * v66) = v69;
      }

      if (v142)
      {
        if (v49 <= v66)
        {
          goto LABEL_97;
        }

        v43.i32[0] = v68->i32[0];
        v43.i32[2] = v68->i32[2];
        v70 = vmulq_f32(v43, v43);
        *&v71 = v70.f32[2] + vaddv_f32(*v70.f32);
        *v70.f32 = vrsqrte_f32(v71);
        *v70.f32 = vmul_f32(*v70.f32, vrsqrts_f32(v71, vmul_f32(*v70.f32, *v70.f32)));
        v43 = vmulq_n_f32(v43, vmul_f32(*v70.f32, vrsqrts_f32(v71, vmul_f32(*v70.f32, *v70.f32))).f32[0]);
        *(v47 + 16 * v66) = v43;
      }

      if (v36)
      {
        if (v59 <= v66)
        {
          goto LABEL_101;
        }

        *(v55 + 16 * v66) = xmmword_1E3047680;
        if (v49 <= v66)
        {
          goto LABEL_105;
        }

        if (v57 <= v66)
        {
          goto LABEL_109;
        }

        v72 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(v47 + 16 * v66), *(v47 + 16 * v66)), *(v47 + 16 * v66), 0xCuLL), xmmword_1E30661D0), xmmword_1E30476A0, *(v47 + 16 * v66));
        v43 = vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL);
        *(v56 + 16 * v66) = v43;
      }

      v66 += v37;
      ++v65;
    }

    while (v51 + 1 != v65);
    ++v63;
  }

  while (v63 <= v50);
  v73 = v150;
  v74 = v150 + v50 * v51;
  v5 = &v148;
  re::DynamicArray<re::GeomCell4>::resize(v149, v74);
  v157 = v74;
  if (v158)
  {
    v75 = v159;
    v76 = 8 * v158;
    do
    {
      v77 = *v75++;
      (*(*v77 + 80))(v77, v157);
      v76 -= 8;
    }

    while (v76);
  }

  if (v139)
  {
    v78 = 0;
    v67 = v150;
    if (v140 <= 1)
    {
      v79 = 1;
    }

    else
    {
      v79 = v140;
    }

    do
    {
      v80 = v152;
      v4 = (v4 + 1);
      v81 = v79;
      do
      {
        v36 = v73;
        if (v67 <= v73)
        {
          goto LABEL_113;
        }

        v82 = (v80 + 16 * v73);
        *v82 = v4 - 1;
        v82[1] = v4;
        v82[2] = v140 + v4 + 1;
        v82[3] = v140 + v4;
        ++v73;
        v4 = (v4 + 1);
        --v81;
      }

      while (v81);
      ++v78;
    }

    while (v78 != v139);
  }

  v83 = re::GeomMesh::operator=(v133, &v148);
  if (v135[9])
  {
    re::internal::mergeVertexPositions(v83, v84);
  }

  if (v143[0] && v146)
  {
    (*(*v143[0] + 40))();
  }

  if (v163 && v165)
  {
    (*(*v163 + 40))();
  }

LABEL_14:
  re::internal::GeomAttributeManager::~GeomAttributeManager(v153);
  result = v149[0];
  if (v149[0])
  {
    if (v152)
    {
      return (*(*v149[0] + 40))();
    }
  }

  return result;
}

void re::buildCapsule(re::GeomMesh *a1, unsigned __int16 *a2)
{
  v2 = a2;
  v62 = *MEMORY[0x1E69E9840];
  if (*(a2 + 18) == 1)
  {
    v45 = *(a2 + 4);
    v44 = *a2;
    BYTE2(v45) = 0;
    re::buildCapsule(a1, &v44);
    return;
  }

  re::GeomMesh::GeomMesh(&v44, 0);
  re::buildCapsule(&v44, v2);
  re::DynamicArray<re::GeomMesh>::clear(a1);
  re::DynamicArray<re::GeomMesh>::resize(a1, 3uLL);
  v4 = v2[2];
  if (!v2[2] || (v5 = *v2, v5 < 3) || !v2[1])
  {
    re::DynamicArray<re::GeomMesh>::resize(a1, 3uLL, &v44);
    goto LABEL_27;
  }

  v43 = 0;
  v40 = 0;
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v37 = 0;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  v34[1] = 0;
  v35 = 0;
  v34[0] = 0;
  v6 = v5 * v4;
  v36 = 0;
  re::DynamicArray<float>::resize(v34, v6);
  v7 = 0;
  v8 = 1;
  do
  {
    v9 = 0;
    v10 = v8;
    v11 = v35;
    v12 = v37;
    v13 = v6 * v7;
    do
    {
      if (v11 == v9)
      {
        *v52 = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        v17 = MEMORY[0x1E69E9C10];
        v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v59[0] = 136315906;
        *&v59[1] = "operator[]";
        LOWORD(v59[3]) = 1024;
        if (v18)
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        *(&v59[3] + 2) = 789;
        HIWORD(v59[4]) = 2048;
        *&v59[5] = v11;
        LOWORD(v59[7]) = 2048;
        *(&v59[7] + 2) = v11;
        _os_log_send_and_compose_impl(v19, v52, &v47, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v59, 38, v29, v30);
        _os_crash_msg();
        __break(1u);
LABEL_33:
        v46 = 0;
        v60 = 0u;
        v61 = 0u;
        memset(v59, 0, sizeof(v59));
        v20 = MEMORY[0x1E69E9C10];
        v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v52 = 136315906;
        *&v52[4] = "operator[]";
        v53 = 1024;
        if (v21)
        {
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        v54 = 789;
        v55 = 2048;
        v56 = v7;
        v57 = 2048;
        v58 = v11;
        _os_log_send_and_compose_impl(v22, &v46, v59, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v52, 38, v29, v30);
        _os_crash_msg();
        __break(1u);
        goto LABEL_37;
      }

      *(v12 + 4 * v9++) = v13++;
    }

    while (v6 != v9);
    v32 = v12;
    v33 = v11;
    v30 = 0;
    v31 = 0;
    re::makeMeshFromFaces(&v44, &v32, &v30, v41, v38, &v47);
    v11 = *(a1 + 2);
    if (v11 <= v7)
    {
      goto LABEL_33;
    }

    re::GeomMesh::operator=((*(a1 + 4) + 736 * v7), &v47);
    re::GeomMesh::~GeomMesh(&v47);
    v8 = 0;
    v7 = 1;
  }

  while ((v10 & 1) != 0);
  v2 = (v2[1] * *v2);
  re::DynamicArray<float>::resize(v34, v2);
  v7 = v35;
  if (v2)
  {
    v14 = 0;
    v15 = 2 * v6;
    v16 = v37;
    while (v7 != v14)
    {
      *(v16 + 4 * v14) = v15;
      v14 = (v14 + 1);
      ++v15;
      if (v2 == v14)
      {
        goto LABEL_16;
      }
    }

LABEL_37:
    *v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59[0] = 136315906;
    *&v59[1] = "operator[]";
    LOWORD(v59[3]) = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    *(&v59[3] + 2) = 789;
    HIWORD(v59[4]) = 2048;
    *&v59[5] = v7;
    LOWORD(v59[7]) = 2048;
    *(&v59[7] + 2) = v7;
    _os_log_send_and_compose_impl(v25, v52, &v47, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v59, 38, v29, v30);
    _os_crash_msg();
    __break(1u);
LABEL_41:
    v46 = 0;
    v60 = 0u;
    v61 = 0u;
    memset(v59, 0, sizeof(v59));
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v52 = 136315906;
    *&v52[4] = "operator[]";
    v53 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v54 = 789;
    v55 = 2048;
    v56 = 2;
    v57 = 2048;
    v58 = v2;
    _os_log_send_and_compose_impl(v28, &v46, v59, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v52, 38, v29, v30);
    _os_crash_msg();
    __break(1u);
  }

LABEL_16:
  v32 = v37;
  v33 = v7;
  v30 = 0;
  v31 = 0;
  re::makeMeshFromFaces(&v44, &v32, &v30, v41, v38, &v47);
  v2 = *(a1 + 2);
  if (v2 <= 2)
  {
    goto LABEL_41;
  }

  re::GeomMesh::operator=((*(a1 + 4) + 1472), &v47);
  re::GeomMesh::~GeomMesh(&v47);
  if (v34[0] && v37)
  {
    (*(*v34[0] + 40))();
  }

  if (v38[0] && v40)
  {
    (*(*v38[0] + 40))();
  }

  if (v41[0])
  {
    if (v43)
    {
      (*(*v41[0] + 40))();
    }
  }

LABEL_27:
  re::GeomMesh::~GeomMesh(&v44);
}

void re::DynamicArray<re::GeomMesh>::resize(uint64_t a1, unint64_t a2, int8x16_t **a3)
{
  v5 = *(a1 + 16);
  if (v5 >= a2)
  {
    if (v5 <= a2)
    {
      return;
    }

    v10 = 736 * a2;
    v11 = a2;
    do
    {
      re::GeomMesh::~GeomMesh((*(a1 + 32) + v10));
      ++v11;
      v10 += 736;
    }

    while (v11 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::GeomMesh>::setCapacity(a1, a2);
      v5 = *(a1 + 16);
    }

    v7 = a2 - v5;
    if (a2 > v5)
    {
      v8 = 736 * v5;
      do
      {
        v9 = *(a1 + 32) + v8;
        *v9 = 0;
        *(v9 + 8) = 0;
        bzero((v9 + 16), 0x2C8uLL);
        re::internal::GeomBaseMesh::GeomBaseMesh((v9 + 16));
        *(v9 + 728) = 0;
        re::GeomMesh::copy(a3, v9);
        v8 += 736;
        --v7;
      }

      while (v7);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t re::internal::vertexInFace(unint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (a3 >= a1)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 797;
    v15 = 2048;
    v16 = v4;
    v17 = 2048;
    v18 = a1;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v19[0] = *(a2 + 16 * a3);
  return *(v19 + a4);
}

uint64_t re::internal::findSubmeshFaceVertex(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = *a2;
  v10 = *a2;
  v7 = *(a1 + 140);
  if (v7 == 2)
  {
    v8 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((a1 + 144), &v10);
    if (v8 == -1)
    {
      return 0;
    }

    v6 = *(a1 + 152) + 8 * v8 + 4;
LABEL_10:
    LODWORD(v6) = *v6;
    if (v6 == -1)
    {
      return 0;
    }

LABEL_11:
    *a3 = v6;
    *(a3 + 4) = *(a2 + 4);
    return 1;
  }

  if (v7 == 1)
  {
    if (*(a1 + 160) <= v6)
    {
      return 0;
    }

    v6 = *(a1 + 176) + 4 * v6;
    goto LABEL_10;
  }

  if (*(a1 + 140))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
    return result;
  }

  if (*(a1 + 144) > v6)
  {
    goto LABEL_11;
  }

  return 0;
}

uint64_t re::internal::calculateCompatibleFaceVertexTopology(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a2;
  j = a1;
  v7 = &v124;
  v143 = *MEMORY[0x1E69E9840];
  re::internal::GeomVertexConnectivity::buildVertexConnectivity((a1 + 16), v104);
  v8 = *(j + 16);
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  v91 = a3;
  re::DynamicArray<unsigned int>::resize(a3, 4 * (*(j + 40) & 0x3FFFFFFFLL), &re::kInvalidMeshIndex);
  v9 = *(j + 40);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(a3 + 16);
    v13 = *(a3 + 32);
    v14 = *(j + 56);
    do
    {
      v15 = (4 * v11);
      if (v12 <= v15)
      {
        goto LABEL_131;
      }

      if (v11 == v9)
      {
        goto LABEL_135;
      }

      for (i = 0; i != 16; i += 4)
      {
        *(v13 + 4 * v10 + i) = *(v14 + i);
      }

      if (*(v13 + 4 * v15 + 12) == -1)
      {
        v3 = v15 | 3;
        if (v12 <= v3)
        {
          goto LABEL_143;
        }

        *(v13 + 4 * v3) = -1;
      }

      ++v11;
      v10 += 4;
      v14 += 16;
    }

    while (v11 != v9);
  }

  v129 = 0;
  v125 = 0;
  v126 = 0;
  v124 = 0;
  v127 = 0;
  v103 = 0;
  v100[1] = 0;
  v101 = 0;
  v99 = 0;
  v100[0] = 0;
  v102 = 0;
  v96[1] = 0;
  v97 = 0;
  v95 = 0;
  v96[0] = 0;
  v98 = 0;
  v92[1] = 0;
  v93 = 0;
  v92[0] = 0;
  v94 = 0;
  re::DynamicArray<float *>::setCapacity(&v124, 0x40uLL);
  re::DynamicArray<float *>::setCapacity(v100, 0x40uLL);
  re::DynamicArray<float *>::setCapacity(v96, 0x40uLL);
  re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v92, 0x40uLL);
  v88 = *(j + 16);
  if (!v88)
  {
    goto LABEL_91;
  }

  for (j = 0; j != v88; ++j)
  {
    v93 = 0;
    ++v94;
    v12 = v105;
    if (v105 <= j)
    {
      goto LABEL_151;
    }

    v15 = *(v106 + 4 * j);
    re::DynamicArray<re::internal::GeomVertexConnectivity::FaceVertex>::resize(v92, v15);
    if (v15)
    {
      v9 = 0;
      do
      {
        v17 = re::internal::GeomVertexConnectivity::faceVertex(v104, j, v9);
        v12 = v93;
        if (v93 <= v9)
        {
          goto LABEL_127;
        }

        v18 = &v95[2 * v9];
        *v18 = v17;
        *(v18 + 4) = BYTE4(v17);
      }

      while (++v9 != v15);
    }

    if (re::internal::GeomVertexConnectivity::faceCount(v104, j) > 0x3F)
    {
      v20 = v89;
      if (!*(v89 + 16))
      {
        continue;
      }

      v21 = 0;
      v22 = 0;
      v23 = v93;
      while (1)
      {
        if (!v23)
        {
          goto LABEL_155;
        }

        v24 = *(*(v20 + 32) + 8 * v21);
        if (!re::internal::findSubmeshFaceVertex(v24, v95, &v122))
        {
          goto LABEL_34;
        }

        v25 = re::internal::vertexInFace(*(v24 + 24), *(v24 + 40), v122, BYTE4(v122));
        v23 = v93;
        if (v93 >= 2)
        {
          break;
        }

LABEL_32:
        v20 = v89;
        v21 = ++v22;
        if (*(v89 + 16) <= v22)
        {
          goto LABEL_90;
        }
      }

      v26 = v25;
      v27 = 2;
      v28 = 1;
      while (re::internal::findSubmeshFaceVertex(v24, &v95[2 * v28], &v122) && re::internal::vertexInFace(*(v24 + 24), *(v24 + 40), v122, BYTE4(v122)) == v26)
      {
        v28 = v27;
        v23 = v93;
        v29 = v93 > v27++;
        if (!v29)
        {
          goto LABEL_32;
        }
      }

LABEL_34:
      v30 = re::internal::GeomVertexConnectivity::faceCount(v104, j);
      if (v30 < 2)
      {
        continue;
      }

      v31 = v30;
      v32 = 1;
      v33 = v8;
      while (1)
      {
        v34 = re::internal::GeomVertexConnectivity::faceVertex(v104, j, v32);
        v12 = 4 * v34 + BYTE4(v34);
        v3 = *(v91 + 16);
        if (v3 <= v12)
        {
          break;
        }

        v8 = (v33 + 1);
        *(*(v91 + 32) + 4 * v12) = v33;
        ++v32;
        ++v33;
        if (v31 == v32)
        {
          goto LABEL_90;
        }
      }

LABEL_139:
      v123 = 0;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v138 = 0u;
      v71 = MEMORY[0x1E69E9C10];
      v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v130 = 136315906;
      v131 = "operator[]";
      v132 = 1024;
      if (v72)
      {
        v73 = 3;
      }

      else
      {
        v73 = 2;
      }

      v133 = 789;
      v134 = 2048;
      v135 = v12;
      v136 = 2048;
      v137 = v3;
      _os_log_send_and_compose_impl(v73, &v123, &v138, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v130, 38, v88, v89);
      _os_crash_msg();
      __break(1u);
LABEL_143:
      v100[0] = 0;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v138 = 0u;
      v74 = MEMORY[0x1E69E9C10];
      v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v124) = 136315906;
      *(v7 + 4) = "operator[]";
      WORD2(v125) = 1024;
      if (v75)
      {
        v76 = 3;
      }

      else
      {
        v76 = 2;
      }

      *(v7 + 14) = 789;
      WORD1(v126) = 2048;
      *(v7 + 20) = v3;
      v128 = 2048;
      *(v7 + 30) = v12;
      _os_log_send_and_compose_impl(v76, v100, &v138, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v124, 38, v87, v89);
      _os_crash_msg();
      __break(1u);
LABEL_147:
      v123 = 0;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v138 = 0u;
      v77 = MEMORY[0x1E69E9C10];
      v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v130 = 136315906;
      v131 = "operator[]";
      v132 = 1024;
      if (v78)
      {
        v79 = 3;
      }

      else
      {
        v79 = 2;
      }

      v133 = 789;
      v134 = 2048;
      v135 = v12;
      v136 = 2048;
      v137 = v12;
      _os_log_send_and_compose_impl(v79, &v123, &v138, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v130, 38, v88, v89);
      _os_crash_msg();
      __break(1u);
LABEL_151:
      v123 = 0;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v138 = 0u;
      v80 = MEMORY[0x1E69E9C10];
      v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v130 = 136315906;
      v131 = "operator[]";
      v132 = 1024;
      if (v81)
      {
        v82 = 3;
      }

      else
      {
        v82 = 2;
      }

      v133 = 797;
      v134 = 2048;
      v135 = j;
      v136 = 2048;
      v137 = v12;
      _os_log_send_and_compose_impl(v82, &v123, &v138, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v130, 38, v88, v89);
      _os_crash_msg();
      __break(1u);
LABEL_155:
      v123 = 0;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v138 = 0u;
      v83 = MEMORY[0x1E69E9C10];
      v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v130 = 136315906;
      v131 = "operator[]";
      v132 = 1024;
      if (v84)
      {
        v85 = 3;
      }

      else
      {
        v85 = 2;
      }

      v133 = 797;
      v134 = 2048;
      v135 = 0;
      v136 = 2048;
      v137 = 0;
      _os_log_send_and_compose_impl(v85, &v123, &v138, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v130, 38, v88, v89);
      _os_crash_msg();
      __break(1u);
    }

    v19 = v89;
    if (v126 != 1)
    {
      if (!v126)
      {
        if (v125 || (re::DynamicArray<float *>::setCapacity(&v124, 1uLL), !v126))
        {
          *v129 = 0;
        }
      }

      v126 = 1;
      ++v127;
    }

    v35 = v129;
    *v129 = 0;
    if (v93)
    {
      v36 = 0;
      v37 = 1;
      do
      {
        v3 = 1 << v36;
        v38 = re::Bitset<64>::toWordIndex(v35, v36);
        *(v35 + 8 * v38) |= v3;
        v36 = v37;
        v29 = v93 > v37++;
      }

      while (v29);
    }

    v101 = 0;
    ++v102;
    v97 = 0;
    ++v98;
    if (!*(v89 + 16))
    {
      continue;
    }

    v86 = v8;
    v39 = 0;
    v40 = 0;
    do
    {
      v90 = v40;
      v15 = *(*(v19 + 32) + 8 * v39);
      v101 = 0;
      ++v102;
      v41 = v93;
      v121 = 0;
      v122 = 0;
      if (!v93)
      {
        goto LABEL_63;
      }

      v9 = 0;
      v42 = 1;
      do
      {
        v12 = v93;
        if (v93 <= v9)
        {
          goto LABEL_119;
        }

        v120 = *&v95[2 * v9];
        re::Bitset<64>::toWordIndex(&v121, v9);
        v12 = 1 << v9;
        if ((v121 & (1 << v9)) == 0)
        {
          if (re::internal::findSubmeshFaceVertex(v15, &v120, &v118))
          {
            v117 = 0;
            re::Bitset<64>::toWordIndex(&v117, v9);
            v117 |= v12;
            v4 = re::internal::vertexInFace(*(v15 + 24), *(v15 + 40), v118, v119);
            v7 = v42;
            if (v9 + 1 < v41)
            {
              while (1)
              {
                v3 = v93;
                if (v93 <= v7)
                {
                  break;
                }

                *&v138 = *&v95[2 * v7];
                if (re::internal::findSubmeshFaceVertex(v15, &v138, &v118) && v4 == re::internal::vertexInFace(*(v15 + 24), *(v15 + 40), v118, v119))
                {
                  v3 = 1 << v7;
                  re::Bitset<64>::toWordIndex(&v117, v7);
                  v117 |= 1 << v7;
                  re::Bitset<64>::toWordIndex(&v121, v7);
                  v121 |= 1 << v7;
                }

                if (v41 == ++v7)
                {
                  goto LABEL_57;
                }
              }

              v123 = 0;
              v141 = 0u;
              v142 = 0u;
              v139 = 0u;
              v140 = 0u;
              v138 = 0u;
              v53 = MEMORY[0x1E69E9C10];
              v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v130 = 136315906;
              v131 = "operator[]";
              v132 = 1024;
              if (v54)
              {
                v55 = 3;
              }

              else
              {
                v55 = 2;
              }

              v133 = 797;
              v134 = 2048;
              v135 = v7;
              v136 = 2048;
              v137 = v3;
              _os_log_send_and_compose_impl(v55, &v123, &v138, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v130, 38, v88, v89);
              _os_crash_msg();
              __break(1u);
LABEL_119:
              v123 = 0;
              v141 = 0u;
              v142 = 0u;
              v139 = 0u;
              v140 = 0u;
              v138 = 0u;
              v56 = MEMORY[0x1E69E9C10];
              v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v130 = 136315906;
              v131 = "operator[]";
              v132 = 1024;
              if (v57)
              {
                v58 = 3;
              }

              else
              {
                v58 = 2;
              }

              v133 = 797;
              v134 = 2048;
              v135 = v9;
              v136 = 2048;
              v137 = v12;
              _os_log_send_and_compose_impl(v58, &v123, &v138, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v130, 38, v88, v89);
              _os_crash_msg();
              __break(1u);
LABEL_123:
              v123 = 0;
              v141 = 0u;
              v142 = 0u;
              v139 = 0u;
              v140 = 0u;
              v138 = 0u;
              v59 = MEMORY[0x1E69E9C10];
              v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v130 = 136315906;
              v131 = "operator[]";
              v132 = 1024;
              if (v60)
              {
                v61 = 3;
              }

              else
              {
                v61 = 2;
              }

              v133 = 789;
              v134 = 2048;
              v135 = v4;
              v136 = 2048;
              v137 = v3;
              _os_log_send_and_compose_impl(v61, &v123, &v138, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v130, 38, v88, v89);
              _os_crash_msg();
              __break(1u);
LABEL_127:
              v123 = 0;
              v141 = 0u;
              v142 = 0u;
              v139 = 0u;
              v140 = 0u;
              v138 = 0u;
              v62 = MEMORY[0x1E69E9C10];
              v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v130 = 136315906;
              v131 = "operator[]";
              v132 = 1024;
              if (v63)
              {
                v64 = 3;
              }

              else
              {
                v64 = 2;
              }

              v133 = 789;
              v134 = 2048;
              v135 = v9;
              v136 = 2048;
              v137 = v12;
              _os_log_send_and_compose_impl(v64, &v123, &v138, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v130, 38, v88, v89);
              _os_crash_msg();
              __break(1u);
LABEL_131:
              v100[0] = 0;
              v141 = 0u;
              v142 = 0u;
              v139 = 0u;
              v140 = 0u;
              v138 = 0u;
              v65 = MEMORY[0x1E69E9C10];
              v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v124) = 136315906;
              *(v7 + 4) = "operator[]";
              WORD2(v125) = 1024;
              if (v66)
              {
                v67 = 3;
              }

              else
              {
                v67 = 2;
              }

              *(v7 + 14) = 789;
              WORD1(v126) = 2048;
              *(v7 + 20) = v15;
              v128 = 2048;
              *(v7 + 30) = v12;
              _os_log_send_and_compose_impl(v67, v100, &v138, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v124, 38, v87, v89);
              _os_crash_msg();
              __break(1u);
LABEL_135:
              v100[0] = 0;
              v141 = 0u;
              v142 = 0u;
              v139 = 0u;
              v140 = 0u;
              v138 = 0u;
              v68 = MEMORY[0x1E69E9C10];
              v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v124) = 136315906;
              *(v7 + 4) = "operator[]";
              WORD2(v125) = 1024;
              if (v69)
              {
                v70 = 3;
              }

              else
              {
                v70 = 2;
              }

              *(v7 + 14) = 797;
              WORD1(v126) = 2048;
              *(v7 + 20) = v9;
              v128 = 2048;
              *(v7 + 30) = v9;
              _os_log_send_and_compose_impl(v70, v100, &v138, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v124, 38, v87, v89);
              _os_crash_msg();
              __break(1u);
              goto LABEL_139;
            }

LABEL_57:
            re::DynamicArray<re::DataArrayHandle<re::PerFrameAllocatorImpl>>::add(v100, &v117);
          }

          else
          {
            re::Bitset<64>::toWordIndex(&v122, v9);
            v122 |= v12;
          }

          re::Bitset<64>::toWordIndex(&v121, v9);
          v121 |= v12;
        }

        ++v9;
        ++v42;
      }

      while (v9 != v41);
      if (v122)
      {
        re::DynamicArray<re::DataArrayHandle<re::PerFrameAllocatorImpl>>::add(v100, &v122);
      }

LABEL_63:
      v97 = 0;
      ++v98;
      if (v126)
      {
        v43 = v129;
        v44 = &v129[v126];
        v45 = v103;
        v3 = v101;
        v46 = 8 * v101;
        do
        {
          v7 = v46;
          v4 = v45;
          if (v3)
          {
            do
            {
              *&v138 = *v4 & *v43;
              if (v138)
              {
                re::DynamicArray<re::DataArrayHandle<re::PerFrameAllocatorImpl>>::add(v96, &v138);
              }

              v4 += 8;
              v7 -= 8;
            }

            while (v7);
          }

          ++v43;
        }

        while (v43 != v44);
      }

      if (v124)
      {
        v19 = v89;
        v47 = v90;
        if (v96[0])
        {
          re::DynamicArray<char const*>::copy(&v124, v96);
        }

        else
        {
          v126 = 0;
        }

        ++v127;
      }

      else
      {
        v19 = v89;
        v47 = v90;
        if (v96[0])
        {
          v124 = v96[0];
          re::DynamicArray<float *>::setCapacity(&v124, v97);
          ++v127;
          re::DynamicArray<char const*>::copy(&v124, v96);
        }
      }

      v39 = (v47 + 1);
      v40 = v47 + 1;
    }

    while (*(v19 + 16) > v39);
    v12 = v126;
    if ((v126 & 0xFFFFFFFE) != 0)
    {
      v48 = v129;
      v15 = v126;
      v7 = 1;
      LODWORD(v8) = v86;
      while (1)
      {
        if (v7 == v12)
        {
          goto LABEL_147;
        }

        v49 = v48[v7];
        if (v49)
        {
          break;
        }

LABEL_87:
        v8 = (v8 + 1);
        if (++v7 == v12)
        {
          goto LABEL_90;
        }
      }

      v9 = __clz(__rbit64(v49));
      while (1)
      {
        v50 = re::internal::GeomVertexConnectivity::faceVertex(v104, j, v9);
        v4 = 4 * v50 + BYTE4(v50);
        v3 = *(v91 + 16);
        if (v3 <= v4)
        {
          goto LABEL_123;
        }

        *(*(v91 + 32) + 4 * v4) = v8;
        if (v9 != 63)
        {
          v51 = (v48[v7] & (-2 << v9)) == 0;
          v9 = __clz(__rbit64(v48[v7] & (-2 << v9)));
          if (!v51)
          {
            continue;
          }
        }

        goto LABEL_87;
      }
    }

    v8 = v86;
LABEL_90:
    ;
  }

LABEL_91:
  if (v92[0] && v95)
  {
    (*(*v92[0] + 40))();
  }

  if (v96[0] && v99)
  {
    (*(*v96[0] + 40))();
  }

  if (v100[0] && v103)
  {
    (*(*v100[0] + 40))();
  }

  if (v124 && v129)
  {
    (*(*v124 + 40))();
  }

  if (v112)
  {
    if (v116)
    {
      (*(*v112 + 40))();
    }

    v116 = 0;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    ++v115;
  }

  if (v107)
  {
    if (v111)
    {
      (*(*v107 + 40))();
    }

    v111 = 0;
    v108 = 0;
    v109 = 0;
    v107 = 0;
    ++v110;
  }

  if (v104[0] && v106)
  {
    (*(*v104[0] + 40))();
  }

  return v8;
}

uint64_t re::internal::GeomVertexConnectivity::faceCount(re::internal::GeomVertexConnectivity *this, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 2);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 4) + 4 * a2);
}

re::GeomAttribute *re::internal::createAndCopyVertexAttribute(re::GeomAttribute *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if ((*(result + 16) | 2) != 3)
  {
    return result;
  }

  v6 = result;
  result = re::internal::GeomAttributeManager::addAttribute((a4 + 48), *(result + 1), 1, *(result + 17));
  if (!result)
  {
    return result;
  }

  if (!*(a2 + 16))
  {
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v8 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v18 = 789;
    v19 = 2048;
    v20 = 0;
    v21 = 2048;
    v22 = 0;
    _os_log_send_and_compose_impl(v9, &v14, &v23, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
LABEL_13:
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 789;
    v19 = 2048;
    v20 = 0;
    v21 = 2048;
    v22 = 0;
    _os_log_send_and_compose_impl(v12, &v14, &v23, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  if (!*(a3 + 16))
  {
    goto LABEL_13;
  }

  v7 = *(*v6 + 40);

  return v7(v6, result);
}

re::GeomAttribute *re::internal::GeomBaseMesh::addFaceVaryingAttribute(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, int *a4, uint64_t a5)
{
  v66[11] = *MEMORY[0x1E69E9840];
  v11 = *(a4 + 3);
  v12 = v11;
  v13 = *(a1 + 3);
  if (v11 != v13)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0;
    if (v11)
    {
      v25 = 0;
      while (1)
      {
        v26 = v25;
        v16 = *(a5 + 16);
        if (v16 <= v25)
        {
          break;
        }

        LODWORD(v61) = *(*(a5 + 32) + 4 * v25);
        re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addOrReplace(&v46, &v61, &v45);
        v25 = v45 + 1;
        v45 = v25;
        if (v25 >= v11)
        {
          goto LABEL_17;
        }
      }

      v50 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      v34 = MEMORY[0x1E69E9C10];
      v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v54 = 136315906;
      v55 = "operator[]";
      v56 = 1024;
      if (v35)
      {
        v36 = 3;
      }

      else
      {
        v36 = 2;
      }

      *v57 = 789;
      *&v57[4] = 2048;
      *&v57[6] = v26;
      v58 = 2048;
      v59 = v16;
      _os_log_send_and_compose_impl(v36, &v50, &v61, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v43, v44);
      _os_crash_msg();
      __break(1u);
LABEL_48:
      v50 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      v37 = MEMORY[0x1E69E9C10];
      v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v54 = 136315906;
      v55 = "operator[]";
      v56 = 1024;
      if (v38)
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      *v57 = 789;
      *&v57[4] = 2048;
      *&v57[6] = v11;
      v58 = 2048;
      v59 = v11;
      _os_log_send_and_compose_impl(v39, &v50, &v61, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v43, v44);
      _os_crash_msg();
      __break(1u);
LABEL_52:
      v50 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      v40 = MEMORY[0x1E69E9C10];
      v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v54 = 136315906;
      v55 = "operator[]";
      v56 = 1024;
      if (v41)
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      *v57 = 789;
      *&v57[4] = 2048;
      *&v57[6] = v5;
      v58 = 2048;
      v59 = v16;
      _os_log_send_and_compose_impl(v42, &v50, &v61, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v43, v44);
      _os_crash_msg();
      __break(1u);
    }

LABEL_17:
    re::GeomIndexMap::GeomIndexMap(&v54, a5);
    re::GeomIndexMap::GeomIndexMap(&v50, &v46);
    v27 = *a4;
    *(&v61 + 1) = *(a4 + 1);
    v28 = *(a4 + 1);
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v62 = v28;
    *(&v63 + 1) = *(a4 + 5);
    *(a4 + 5) = 0;
    v29 = a4[8];
    LODWORD(v61) = v27;
    LODWORD(v63) = 1;
    *a4 = 0;
    a4[8] = v29 + 2;
    re::GeomIndexMap::GeomIndexMap(&v64, &v54);
    re::GeomIndexMap::GeomIndexMap(v66, &v50);
    v21 = re::internal::GeomAttributeManager::addFaceVaryingAttribute(a1 + 48, a2, a3, &v61);
    re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v61, v30);
    if (v51)
    {
      if (v51 == 2)
      {
        v32.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v52);
      }

      else
      {
        if (v51 != 1)
        {
          re::internal::assertLog(4, v31, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
          _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
          __break(1u);
          goto LABEL_57;
        }

        if (v52[0])
        {
          v31 = v53;
          if (v53)
          {
            (*(*v52[0] + 40))();
          }
        }
      }
    }

    if (v56)
    {
      if (v56 != 2)
      {
        if (v56 == 1)
        {
          if (*&v57[2] && v60)
          {
            (*(**&v57[2] + 40))(*&v57[2], v32);
          }

          goto LABEL_31;
        }

LABEL_57:
        re::internal::assertLog(4, v31, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
        _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
        __break(1u);
        goto LABEL_58;
      }

      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v57[2]);
    }

LABEL_31:
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v46);
    return v21;
  }

  *&v48 = 0;
  *&v47 = 0;
  v46 = 0uLL;
  DWORD2(v47) = 0;
  re::DynamicArray<unsigned int>::resize(&v46, v13, &re::kInvalidMeshIndex);
  if (v11)
  {
    v14 = 0;
    v11 = *(a5 + 16);
    v15 = *(a5 + 32);
    v16 = v47;
    v17 = v48;
    while (v11 != v14)
    {
      v5 = *(v15 + 4 * v14);
      if (v16 <= v5)
      {
        goto LABEL_52;
      }

      *(v17 + 4 * v5) = v14++;
      if (v12 == v14)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_48;
  }

LABEL_7:
  re::GeomIndexMap::GeomIndexMap(&v54, a5);
  re::GeomIndexMap::GeomIndexMap(&v50, &v46);
  v18 = *a4;
  *(&v61 + 1) = *(a4 + 1);
  v19 = *(a4 + 1);
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v62 = v19;
  *(&v63 + 1) = *(a4 + 5);
  *(a4 + 5) = 0;
  v20 = a4[8];
  LODWORD(v61) = v18;
  LODWORD(v63) = 1;
  *a4 = 0;
  a4[8] = v20 + 2;
  re::GeomIndexMap::GeomIndexMap(&v64, &v54);
  re::GeomIndexMap::GeomIndexMap(v66, &v50);
  v21 = re::internal::GeomAttributeManager::addFaceVaryingAttribute(a1 + 48, a2, a3, &v61);
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v61, v22);
  if (v51)
  {
    if (v51 == 2)
    {
      v24.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v52);
      goto LABEL_33;
    }

    if (v51 == 1)
    {
      if (v52[0])
      {
        v23 = v53;
        if (v53)
        {
          (*(*v52[0] + 40))();
        }
      }

      goto LABEL_33;
    }

LABEL_58:
    re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
    goto LABEL_59;
  }

LABEL_33:
  if (!v56)
  {
    goto LABEL_40;
  }

  if (v56 == 2)
  {
    v24.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v57[2]);
LABEL_40:
    if (v46)
    {
      if (v48)
      {
        (*(*v46 + 40))(v24);
      }
    }

    return v21;
  }

  if (v56 == 1)
  {
    if (*&v57[2] && v60)
    {
      (*(**&v57[2] + 40))(*&v57[2], v24);
    }

    goto LABEL_40;
  }

LABEL_59:
  re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
  return result;
}

uint64_t re::internal::createAndCopyAttributesWithRate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  result = re::internal::GeomAttributeManager::attributeCount(a1 + 48, a3);
  if (result)
  {
    v7 = result;
    v8 = 0;
    do
    {
      v9 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 48), v8, v3);
      v10 = re::internal::GeomAttributeManager::addAttribute((a2 + 48), *(v9 + 8), *(v9 + 16), *(v9 + 17));
      result = re::GeomAttribute::copyValues(v9, v10);
      v8 = (v8 + 1);
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t re::internal::buildMeshWithNewFaceVertexTopology(unint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v231 = *MEMORY[0x1E69E9840];
  re::internal::GeomBaseMesh::GeomBaseMesh(&v191);
  LODWORD(v191) = a4;
  v169 = a4;
  v195 = a4;
  if (v196)
  {
    v16 = v197;
    v7 = 8 * v196;
    do
    {
      v17 = *v16++;
      (*(*v17 + 80))(v17, v195);
      v7 -= 8;
    }

    while (v7);
  }

  v18 = *(a1 + 40);
  re::DynamicArray<re::GeomCell4>::resize(v192, v18);
  v198 = v18;
  if (v199)
  {
    v19 = v200;
    v7 = 8 * v199;
    do
    {
      v20 = *v19++;
      (*(*v20 + 80))(v20, v198);
      v7 -= 8;
    }

    while (v7);
  }

  v170 = a1;
  v21 = *(a1 + 40);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    a1 = *(a5 + 16);
    v24 = *(a5 + 32);
    v8 = v192[2];
    v25 = (v193 + 12);
    v26 = *(v170 + 56) + 12;
    while (1)
    {
      if (v21 == v23)
      {
        goto LABEL_188;
      }

      v7 = v22 & 0xFFFFFFFC;
      if (a1 <= v7)
      {
        break;
      }

      v27 = *(v26 + 4 * v22);
      v28 = (v24 + 4 * v7);
      if (v27 != -1)
      {
        v27 = *(v28 + 3);
      }

      if (v8 == v23)
      {
        goto LABEL_196;
      }

      v29 = *v28;
      v30 = *(v28 + 2);
      *(v25 - 3) = v29;
      *(v25 - 1) = v30;
      *v25 = v27;
      ++v23;
      v25 += 4;
      v22 += 4;
      if (v21 == v23)
      {
        goto LABEL_15;
      }
    }

LABEL_192:
    *v206 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v118 = MEMORY[0x1E69E9C10];
    v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v228[0]) = 136315906;
    *(v228 + 4) = "operator[]";
    WORD2(v228[1]) = 1024;
    if (v119)
    {
      v120 = 3;
    }

    else
    {
      v120 = 2;
    }

    *(&v228[1] + 6) = 797;
    WORD1(v228[2]) = 2048;
    *(&v228[2] + 4) = v7;
    WORD2(v228[3]) = 2048;
    *(&v228[3] + 6) = a1;
    _os_log_send_and_compose_impl(v120, v206, &v213, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v228, 38, v161, v162);
    _os_crash_msg();
    __break(1u);
LABEL_196:
    *v206 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v121 = MEMORY[0x1E69E9C10];
    v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v228[0]) = 136315906;
    *(v228 + 4) = "operator[]";
    WORD2(v228[1]) = 1024;
    if (v122)
    {
      v123 = 3;
    }

    else
    {
      v123 = 2;
    }

    *(&v228[1] + 6) = 789;
    WORD1(v228[2]) = 2048;
    *(&v228[2] + 4) = v8;
    WORD2(v228[3]) = 2048;
    *(&v228[3] + 6) = v8;
    _os_log_send_and_compose_impl(v123, v206, &v213, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v228, 38, v161, v162);
    _os_crash_msg();
    __break(1u);
LABEL_200:
    *v206 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v124 = MEMORY[0x1E69E9C10];
    v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v228[0]) = 136315906;
    *(v228 + 4) = "operator[]";
    WORD2(v228[1]) = 1024;
    if (v125)
    {
      v126 = 3;
    }

    else
    {
      v126 = 2;
    }

    *(&v228[1] + 6) = 789;
    WORD1(v228[2]) = 2048;
    *(&v228[2] + 4) = v7;
    WORD2(v228[3]) = 2048;
    *(&v228[3] + 6) = v7;
    _os_log_send_and_compose_impl(v126, v206, &v213, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v228, 38, v161, v162);
    _os_crash_msg();
    __break(1u);
LABEL_204:
    *v206 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v127 = MEMORY[0x1E69E9C10];
    v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v228[0]) = 136315906;
    *(v228 + 4) = "operator[]";
    WORD2(v228[1]) = 1024;
    if (v128)
    {
      v129 = 3;
    }

    else
    {
      v129 = 2;
    }

    *(&v228[1] + 6) = 789;
    WORD1(v228[2]) = 2048;
    *(&v228[2] + 4) = v21;
    WORD2(v228[3]) = 2048;
    *(&v228[3] + 6) = v21;
    _os_log_send_and_compose_impl(v129, v206, &v213, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v228, 38, v161, v162);
    _os_crash_msg();
    __break(1u);
LABEL_208:
    *v206 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v130 = MEMORY[0x1E69E9C10];
    v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v228[0]) = 136315906;
    *(v228 + 4) = "operator[]";
    WORD2(v228[1]) = 1024;
    if (v131)
    {
      v132 = 3;
    }

    else
    {
      v132 = 2;
    }

    *(&v228[1] + 6) = 797;
    WORD1(v228[2]) = 2048;
    *(&v228[2] + 4) = v21;
    WORD2(v228[3]) = 2048;
    *(&v228[3] + 6) = v21;
    _os_log_send_and_compose_impl(v132, v206, &v213, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v228, 38, v161, v162);
    _os_crash_msg();
    __break(1u);
LABEL_212:
    *v206 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v46 = MEMORY[0x1E69E9C10];
    v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v228[0]) = 136315906;
    *(v228 + 4) = "operator[]";
    WORD2(v228[1]) = 1024;
    if (v133)
    {
      v134 = 3;
    }

    else
    {
      v134 = 2;
    }

    *(&v228[1] + 6) = 797;
    WORD1(v228[2]) = 2048;
    *(&v228[2] + 4) = a6;
    WORD2(v228[3]) = 2048;
    *(&v228[3] + 6) = v7;
    _os_log_send_and_compose_impl(v134, v206, &v213, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v228, 38, v161, v162);
    _os_crash_msg();
    __break(1u);
    goto LABEL_216;
  }

LABEL_15:
  re::internal::createAndCopyAttributesWithRate(v170 + 16, &v191, 0);
  re::internal::createAndCopyAttributesWithRate(v170 + 16, &v191, 2);
  re::internal::createAndCopyAttributesWithRate(v170 + 16, &v191, 4);
  v190 = 0;
  v187[1] = 0;
  v188 = 0;
  v186 = 0;
  v187[0] = 0;
  v189 = 0;
  v183[1] = 0;
  v184 = 0;
  v183[0] = 0;
  v7 = v169;
  v185 = 1;
  v9 = &re::kInvalidMeshIndex;
  re::DynamicArray<unsigned int>::resize(v183, v169, &re::kInvalidMeshIndex);
  v188 = 0;
  ++v189;
  re::DynamicArray<unsigned int>::resize(v187, v169, &re::kInvalidMeshIndex);
  v32 = *(v170 + 16);
  if (v32)
  {
    v33 = 0;
    v7 = v184;
    v34 = v186;
    v21 = v188;
    v35 = v190;
    while (v7 != v33)
    {
      v34[v33] = v33;
      if (v21 == v33)
      {
        goto LABEL_204;
      }

      *(v35 + 4 * v33) = v33;
      if (v32 == ++v33)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_200;
  }

LABEL_20:
  v21 = *(v170 + 40);
  if (!v21)
  {
    goto LABEL_32;
  }

  v36 = 0;
  v37 = 0;
  v38 = *(v170 + 56);
  a1 = *(a5 + 16);
  do
  {
    if (v37 == v21)
    {
      goto LABEL_208;
    }

    *v206 = *(v38 + 16 * v37);
    if (*&v206[12] == -1)
    {
      v39 = 3;
    }

    else
    {
      v39 = 4;
    }

    v40 = *(a5 + 32);
    v8 = v184;
    v41 = v186;
    v42 = v206;
    v10 = v188;
    v43 = v190;
    v44 = v36;
    do
    {
      v7 = v44;
      if (a1 <= v44)
      {
        *v210 = 0;
        v216 = 0u;
        v217 = 0u;
        v214 = 0u;
        v215 = 0u;
        v213 = 0u;
        v52 = MEMORY[0x1E69E9C10];
        v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v228[0]) = 136315906;
        *(v228 + 4) = "operator[]";
        WORD2(v228[1]) = 1024;
        if (v53)
        {
          v54 = 3;
        }

        else
        {
          v54 = 2;
        }

        *(&v228[1] + 6) = 797;
        WORD1(v228[2]) = 2048;
        *(&v228[2] + 4) = v7;
        WORD2(v228[3]) = 2048;
        *(&v228[3] + 6) = a1;
        _os_log_send_and_compose_impl(v54, v210, &v213, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v228, 38, v161, v162);
        _os_crash_msg();
        __break(1u);
        goto LABEL_49;
      }

      v9 = *(v40 + 4 * v44);
      if (v8 <= v9)
      {
        *v210 = 0;
        v216 = 0u;
        v217 = 0u;
        v214 = 0u;
        v215 = 0u;
        v213 = 0u;
        v99 = MEMORY[0x1E69E9C10];
        v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v228[0]) = 136315906;
        *(v228 + 4) = "operator[]";
        WORD2(v228[1]) = 1024;
        if (v100)
        {
          v101 = 3;
        }

        else
        {
          v101 = 2;
        }

        *(&v228[1] + 6) = 789;
        WORD1(v228[2]) = 2048;
        *(&v228[2] + 4) = v9;
        WORD2(v228[3]) = 2048;
        *(&v228[3] + 6) = v8;
        _os_log_send_and_compose_impl(v101, v210, &v213, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v228, 38, v161, v162);
        _os_crash_msg();
        __break(1u);
LABEL_168:
        *v210 = 0;
        v216 = 0u;
        v217 = 0u;
        v214 = 0u;
        v215 = 0u;
        v213 = 0u;
        v65 = MEMORY[0x1E69E9C10];
        v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v228[0]) = 136315906;
        *(v228 + 4) = "operator[]";
        WORD2(v228[1]) = 1024;
        if (v102)
        {
          v103 = 3;
        }

        else
        {
          v103 = 2;
        }

        *(&v228[1] + 6) = 789;
        WORD1(v228[2]) = 2048;
        *(&v228[2] + 4) = v9;
        WORD2(v228[3]) = 2048;
        *(&v228[3] + 6) = v10;
        _os_log_send_and_compose_impl(v103, v210, &v213, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v228, 38, v161, v162);
        _os_crash_msg();
        __break(1u);
LABEL_172:
        *v210 = 0;
        v216 = 0u;
        v217 = 0u;
        v214 = 0u;
        v215 = 0u;
        v213 = 0u;
        v7 = MEMORY[0x1E69E9C10];
        v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v228[0]) = 136315906;
        *(v228 + 4) = "operator[]";
        WORD2(v228[1]) = 1024;
        if (v104)
        {
          v105 = 3;
        }

        else
        {
          v105 = 2;
        }

        *(&v228[1] + 6) = 797;
        WORD1(v228[2]) = 2048;
        *(&v228[2] + 4) = a7;
        WORD2(v228[3]) = 2048;
        *(&v228[3] + 6) = v65;
        _os_log_send_and_compose_impl(v105, v210, &v213, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v228, 38, v161, v162);
        _os_crash_msg();
        __break(1u);
LABEL_176:
        *v210 = 0;
        v216 = 0u;
        v217 = 0u;
        v214 = 0u;
        v215 = 0u;
        v213 = 0u;
        v106 = MEMORY[0x1E69E9C10];
        v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v228[0]) = 136315906;
        *(v228 + 4) = "operator[]";
        WORD2(v228[1]) = 1024;
        if (v107)
        {
          v108 = 3;
        }

        else
        {
          v108 = 2;
        }

        *(&v228[1] + 6) = 789;
        WORD1(v228[2]) = 2048;
        *(&v228[2] + 4) = v21;
        WORD2(v228[3]) = 2048;
        *(&v228[3] + 6) = v8;
        _os_log_send_and_compose_impl(v108, v210, &v213, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v228, 38, v161, v162);
        _os_crash_msg();
        __break(1u);
LABEL_180:
        *v210 = 0;
        v216 = 0u;
        v217 = 0u;
        v214 = 0u;
        v215 = 0u;
        v213 = 0u;
        v109 = MEMORY[0x1E69E9C10];
        v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v228[0]) = 136315906;
        *(v228 + 4) = "operator[]";
        WORD2(v228[1]) = 1024;
        if (v110)
        {
          v111 = 3;
        }

        else
        {
          v111 = 2;
        }

        *(&v228[1] + 6) = 789;
        WORD1(v228[2]) = 2048;
        *(&v228[2] + 4) = v21;
        WORD2(v228[3]) = 2048;
        *(&v228[3] + 6) = v7;
        _os_log_send_and_compose_impl(v111, v210, &v213, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v228, 38, v161, v162);
        _os_crash_msg();
        __break(1u);
        goto LABEL_184;
      }

      v31 = *v42;
      v41[v9] = v31;
      if (v10 <= v9)
      {
        goto LABEL_168;
      }

      *(v43 + 4 * v9) = v9;
      ++v42;
      ++v44;
      --v39;
    }

    while (v39);
    ++v37;
    v36 += 4;
  }

  while (v37 != v21);
LABEL_32:
  if (!a6)
  {
    goto LABEL_53;
  }

  v228[4] = 0;
  memset(v228, 0, 28);
  re::DynamicArray<float>::resize(v228, v169);
  if (v169)
  {
    v45 = 0;
    v46 = v184;
    v47 = v186;
    v48 = v188;
    v49 = v190;
    a1 = v228[2];
    v50 = v228[4];
    while (v46 != v45)
    {
      if (v48 == v45)
      {
        goto LABEL_220;
      }

      v8 = *(v49 + 4 * v45);
      if (a1 <= v8)
      {
        goto LABEL_224;
      }

      *(v50 + 4 * v8) = v47[v45++];
      if (v169 == v45)
      {
        goto LABEL_39;
      }
    }

LABEL_216:
    *v210 = 0;
    v48 = v206;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v135 = MEMORY[0x1E69E9C10];
    v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    if (v136)
    {
      v137 = 3;
    }

    else
    {
      v137 = 2;
    }

    *&v206[14] = 789;
    *&v206[18] = 2048;
    *&v206[20] = v46;
    v207 = 2048;
    *v208 = v46;
    _os_log_send_and_compose_impl(v137, v210, &v213, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v206, 38, v161, v162);
    _os_crash_msg();
    __break(1u);
LABEL_220:
    *v210 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v138 = MEMORY[0x1E69E9C10];
    v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    if (v139)
    {
      v140 = 3;
    }

    else
    {
      v140 = 2;
    }

    *&v206[14] = 789;
    *&v206[18] = 2048;
    *&v206[20] = v48;
    v207 = 2048;
    *v208 = v48;
    _os_log_send_and_compose_impl(v140, v210, &v213, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v206, 38, v161, v162);
    _os_crash_msg();
    __break(1u);
LABEL_224:
    *v210 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v141 = MEMORY[0x1E69E9C10];
    v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    if (v142)
    {
      v143 = 3;
    }

    else
    {
      v143 = 2;
    }

    *&v206[14] = 789;
    *&v206[18] = 2048;
    *&v206[20] = v8;
    v207 = 2048;
    *v208 = a1;
    _os_log_send_and_compose_impl(v143, v210, &v213, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v206, 38, v161, v162);
    _os_crash_msg();
    __break(1u);
LABEL_228:
    v201[0] = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v144 = MEMORY[0x1E69E9C10];
    v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v210 = 136315906;
    *&v210[4] = "operator[]";
    *&v210[12] = 1024;
    if (v145)
    {
      v146 = 3;
    }

    else
    {
      v146 = 2;
    }

    *&v210[14] = 789;
    *&v210[18] = 2048;
    *&v210[20] = a1;
    v211 = 2048;
    *v212 = a1;
    _os_log_send_and_compose_impl(v146, v201, &v213, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v210, 38, v161, v162);
    _os_crash_msg();
    __break(1u);
LABEL_232:
    v201[0] = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v147 = MEMORY[0x1E69E9C10];
    v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v210 = 136315906;
    *&v210[4] = "operator[]";
    *&v210[12] = 1024;
    if (v148)
    {
      v149 = 3;
    }

    else
    {
      v149 = 2;
    }

    *&v210[14] = 789;
    *&v210[18] = 2048;
    *&v210[20] = v8;
    v211 = 2048;
    *v212 = v9;
    _os_log_send_and_compose_impl(v149, v201, &v213, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v210, 38, v161, v162);
    _os_crash_msg();
    __break(1u);
LABEL_236:
    v201[0] = 0;
    v79 = v206;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v150 = MEMORY[0x1E69E9C10];
    v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v210 = 136315906;
    *&v210[4] = "operator[]";
    *&v210[12] = 1024;
    if (v151)
    {
      v152 = 3;
    }

    else
    {
      v152 = 2;
    }

    *&v210[14] = 789;
    *&v210[18] = 2048;
    *&v210[20] = a6;
    v211 = 2048;
    *v212 = v10;
    _os_log_send_and_compose_impl(v152, v201, &v213, 80, &dword_1E1C61000, v150, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v210, 38, v161, v162);
    _os_crash_msg();
    __break(1u);
LABEL_240:
    v201[0] = 0;
    v21 = v206;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v153 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v210 = 136315906;
    *&v210[4] = "operator[]";
    *&v210[12] = 1024;
    if (v153)
    {
      v154 = 3;
    }

    else
    {
      v154 = 2;
    }

    *&v210[14] = 789;
    *&v210[18] = 2048;
    *&v210[20] = v8;
    v211 = 2048;
    *v212 = v79;
    _os_log_send_and_compose_impl(v154, v201, &v213, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v210, 38, v161, v162);
    _os_crash_msg();
    __break(1u);
LABEL_244:
    *v206 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v155 = MEMORY[0x1E69E9C10];
    v156 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v228[0]) = 136315906;
    *(v228 + 4) = "operator[]";
    WORD2(v228[1]) = 1024;
    if (v156)
    {
      v157 = 3;
    }

    else
    {
      v157 = 2;
    }

    *(&v228[1] + 6) = 797;
    WORD1(v228[2]) = 2048;
    *(&v228[2] + 4) = v21;
    WORD2(v228[3]) = 2048;
    *(&v228[3] + 6) = v59;
    _os_log_send_and_compose_impl(v157, v206, &v213, 80, &dword_1E1C61000, v155, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v228, 38, v161, v162);
    _os_crash_msg();
    __break(1u);
LABEL_248:
    *v206 = 0;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v213 = 0u;
    v158 = MEMORY[0x1E69E9C10];
    v159 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v228[0]) = 136315906;
    *(v228 + 4) = "operator[]";
    WORD2(v228[1]) = 1024;
    if (v159)
    {
      v160 = 3;
    }

    else
    {
      v160 = 2;
    }

    *(&v228[1] + 6) = 789;
    WORD1(v228[2]) = 2048;
    *(&v228[2] + 4) = v59;
    WORD2(v228[3]) = 2048;
    *(&v228[3] + 6) = v59;
    _os_log_send_and_compose_impl(v160, v206, &v213, 80, &dword_1E1C61000, v158, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v228, 38, v161, v162);
    _os_crash_msg();
    __break(1u);
LABEL_252:
    re::internal::assertLog(4, v88, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_253:
    re::internal::assertLog(4, v60, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
  }

LABEL_39:
  re::GeomIndexMap::GeomIndexMap(&v213, v228);
  re::GeomIndexMap::operator=(a6, &v213);
  if (!BYTE12(v213))
  {
LABEL_50:
    if (v228[0])
    {
      v31 = v228[4];
      if (v228[4])
      {
        (*(*v228[0] + 40))(v51);
      }
    }

LABEL_53:
    v163 = a7;
    v55 = v170;
    v56 = *(v170 + 200);
    if (v56)
    {
      for (i = 0; i != v56; ++i)
      {
        v9 = re::internal::GeomAttributeContainer::attributeByIndex((v170 + 176), i);
        re::DynamicArray<float>::DynamicArray(v180, v183);
        re::DynamicArray<float>::DynamicArray(v177, v187);
        re::internal::createAndCopyVertexAttribute(v9, v180, v177, &v191);
        if (v177[0])
        {
          v31 = v179;
          if (v179)
          {
            (*(*v177[0] + 40))();
          }

          v179 = 0;
          memset(v177, 0, sizeof(v177));
          ++v178;
        }

        if (v180[0])
        {
          v31 = v182;
          if (v182)
          {
            (*(*v180[0] + 40))();
          }

          v182 = 0;
          memset(v180, 0, sizeof(v180));
          ++v181;
        }
      }
    }

    v58 = a2;
    v164 = *(a2 + 16);
    if (*(a2 + 16))
    {
      v21 = 0;
      while (1)
      {
        v59 = *(v58 + 16);
        if (v59 <= v21)
        {
          goto LABEL_244;
        }

        v166 = *(*(v58 + 32) + 8 * v21);
        v167 = v21;
        v10 = re::internal::accessFaceVaryingAttributeSubmesh(v166, v31);
        v184 = 0;
        ++v185;
        re::DynamicArray<unsigned int>::resize(v183, v169, &re::kInvalidMeshIndex);
        v188 = 0;
        ++v189;
        re::DynamicArray<unsigned int>::resize(v187, v169, &re::kInvalidMeshIndex);
        a1 = *(v10 + 24);
        if (*(v10 + 24))
        {
          break;
        }

LABEL_90:
        v55 = v170;
        if (v169)
        {
          v59 = v184;
          if (v184 <= v169 - 1)
          {
            goto LABEL_248;
          }

          v70 = 0;
          v71 = v186;
          v72 = v169;
          do
          {
            v73 = *v71++;
            if (v73 == -1)
            {
              ++v70;
            }

            --v72;
          }

          while (v72);
          if (v70)
          {
            v228[4] = 0;
            memset(v228, 0, 28);
            *&v208[2] = 0;
            memset(v206, 0, sizeof(v206));
            v74 = v169 - v70;
            re::DynamicArray<float>::resize(v228, v74);
            re::DynamicArray<float>::resize(v206, v74);
            a6 = 0;
            v75 = 0;
            a1 = v184;
            v76 = v186;
            v9 = v228[2];
            v77 = v228[4];
            v10 = v188;
            v78 = v190;
            v79 = *&v206[16];
            v80 = *&v208[2];
            do
            {
              if (a1 == a6)
              {
                goto LABEL_228;
              }

              v81 = v76[a6];
              if (v81 != -1)
              {
                v8 = v75;
                if (v9 <= v75)
                {
                  goto LABEL_232;
                }

                *(v77 + 4 * v75) = v81;
                if (v10 <= a6)
                {
                  goto LABEL_236;
                }

                if (v79 <= v75)
                {
                  goto LABEL_240;
                }

                *(v80 + 4 * v75++) = *(v78 + 4 * a6);
              }

              ++a6;
            }

            while (v169 != a6);
            re::DynamicArray<float>::operator=(v183, v228);
            re::DynamicArray<float>::operator=(v187, v206);
            if (*v206 && *&v208[2])
            {
              (*(**v206 + 40))();
            }

            v55 = v170;
            if (v228[0] && v228[4])
            {
              (*(*v228[0] + 40))();
            }
          }
        }

        re::DynamicArray<float>::DynamicArray(v174, v183);
        re::DynamicArray<float>::DynamicArray(v171, v187);
        re::internal::createAndCopyVertexAttribute(v166, v174, v171, &v191);
        if (v171[0])
        {
          v31 = v173;
          if (v173)
          {
            (*(*v171[0] + 40))();
          }

          v173 = 0;
          memset(v171, 0, sizeof(v171));
          ++v172;
        }

        if (v174[0])
        {
          v31 = v176;
          if (v176)
          {
            (*(*v174[0] + 40))();
          }

          v176 = 0;
          memset(v174, 0, sizeof(v174));
          ++v175;
        }

        v21 = v167 + 1;
        v58 = a2;
        if (v167 + 1 == v164)
        {
          goto LABEL_120;
        }
      }

      a6 = 0;
      while (1)
      {
        v7 = *(v10 + 24);
        if (v7 <= a6)
        {
          goto LABEL_212;
        }

        *v206 = *(*(v10 + 40) + 16 * a6);
        if (*&v206[12] == -1)
        {
          v9 = 3;
        }

        else
        {
          v9 = 4;
        }

        LODWORD(v213) = a6;
        v61 = *(v10 + 60);
        if (v61 == 2)
        {
          v63 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v10 + 64), &v213);
          if (v63 != -1)
          {
            v62 = *(*(v10 + 72) + 8 * v63 + 4);
            goto LABEL_84;
          }
        }

        else
        {
          if (v61 != 1)
          {
            if (*(v10 + 60))
            {
              goto LABEL_253;
            }

            if (a6 >= *(v10 + 64))
            {
              v62 = -1;
            }

            else
            {
              v62 = a6;
            }

            goto LABEL_84;
          }

          if (*(v10 + 80) > a6)
          {
            v62 = *(*(v10 + 96) + 4 * a6);
            goto LABEL_84;
          }
        }

        v62 = -1;
LABEL_84:
        v64 = 4 * v62;
        v65 = *(a5 + 16);
        v66 = *(a5 + 32);
        v8 = v184;
        v67 = v186;
        v68 = v206;
        v7 = v188;
        v69 = v190;
        do
        {
          a7 = v64;
          if (v65 <= v64)
          {
            goto LABEL_172;
          }

          v21 = *(v66 + 4 * v64);
          if (v8 <= v21)
          {
            goto LABEL_176;
          }

          v67[v21] = *v68;
          if (v7 <= v21)
          {
            goto LABEL_180;
          }

          *(v69 + 4 * v21) = v21;
          ++v68;
          ++v64;
          --v9;
        }

        while (v9);
        if (++a6 == a1)
        {
          goto LABEL_90;
        }
      }
    }

LABEL_120:
    v82 = *(a3 + 16);
    if (!v82)
    {
LABEL_154:
      v97 = re::GeomMesh::operator=(v163, &v191);
      re::GeomMesh::setName(v97, *v55);
      if (v183[0] && v186)
      {
        (*(*v183[0] + 40))();
      }

      if (v187[0] && v190)
      {
        (*(*v187[0] + 40))();
      }

      re::internal::GeomAttributeManager::~GeomAttributeManager(&v194);
      result = v192[0];
      if (v192[0])
      {
        if (v193)
        {
          return (*(*v192[0] + 40))();
        }
      }

      return result;
    }

    v83 = *(a3 + 32);
    v84 = &v83[v82];
    a6 = &v213;
    v9 = v206;
    while (1)
    {
      v85 = *v83;
      v86 = re::internal::accessFaceVaryingAttributeSubmesh(*v83, v31);
      re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(&v213, v86);
      v87 = DWORD2(v214);
      *&v212[2] = 0;
      memset(v210, 0, sizeof(v210));
      if (DWORD2(v214))
      {
        break;
      }

LABEL_136:
      *v206 = v213;
      re::DynamicArray<re::GeomCell4>::DynamicArray(&v206[8], &v213 + 1);
      if (!*&v206[16])
      {
        re::DynamicArray<re::BlendNode>::setCapacity(&v206[8], 1uLL);
      }

      v92 = re::internal::GeomBaseMesh::addFaceVaryingAttribute(&v191, *(v85 + 1), *(v85 + 17), v206, v210);
      if (v92)
      {
        v94 = v92;
        v204 = 0;
        v202 = 0;
        v201[0] = 0;
        v201[1] = 0;
        v203 = 0;
        v8 = (*(*v85 + 16))(v85);
        a1 = v8;
        re::DynamicArray<float>::resize(v201, v8);
        if (v8)
        {
          v95 = 0;
          v7 = v202;
          v96 = v204;
          while (v7 != v95)
          {
            *(v96 + 4 * v95) = v95;
            if (v8 == ++v95)
            {
              goto LABEL_143;
            }
          }

LABEL_184:
          v205 = 0;
          v21 = &v220;
          v229 = 0u;
          v230 = 0u;
          memset(v228, 0, sizeof(v228));
          v112 = MEMORY[0x1E69E9C10];
          v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v220 = 136315906;
          v221 = "operator[]";
          v222 = 1024;
          if (v113)
          {
            v114 = 3;
          }

          else
          {
            v114 = 2;
          }

          v223 = 789;
          v224 = 2048;
          v225 = v7;
          v226 = 2048;
          v227 = v7;
          _os_log_send_and_compose_impl(v114, &v205, v228, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v220, 38, v161, v162);
          _os_crash_msg();
          __break(1u);
LABEL_188:
          *v206 = 0;
          v216 = 0u;
          v217 = 0u;
          v214 = 0u;
          v215 = 0u;
          v213 = 0u;
          v115 = MEMORY[0x1E69E9C10];
          v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v228[0]) = 136315906;
          *(v228 + 4) = "operator[]";
          WORD2(v228[1]) = 1024;
          if (v116)
          {
            v117 = 3;
          }

          else
          {
            v117 = 2;
          }

          *(&v228[1] + 6) = 797;
          WORD1(v228[2]) = 2048;
          *(&v228[2] + 4) = v21;
          WORD2(v228[3]) = 2048;
          *(&v228[3] + 6) = v21;
          _os_log_send_and_compose_impl(v117, v206, &v213, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v228, 38, v161, v162);
          _os_crash_msg();
          __break(1u);
          goto LABEL_192;
        }

LABEL_143:
        (*(*v85 + 40))(v85, v94, v8, v204, v204);
        if (v201[0])
        {
          v93 = v204;
          if (v204)
          {
            (*(*v201[0] + 40))();
          }
        }

        v55 = v170;
      }

      if (*&v206[8])
      {
        v93 = v209;
        if (v209)
        {
          (*(**&v206[8] + 40))();
        }
      }

      if (*v210)
      {
        v93 = *&v212[2];
        if (*&v212[2])
        {
          (*(**v210 + 40))();
        }
      }

      re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v213, v93);
      if (++v83 == v84)
      {
        goto LABEL_154;
      }
    }

    re::DynamicArray<int>::setCapacity(v210, DWORD2(v214));
    v89 = 0;
    while (1)
    {
      LODWORD(v228[0]) = v89;
      if (BYTE12(v216) == 2)
      {
        break;
      }

      if (BYTE12(v216) != 1)
      {
        if (BYTE12(v216))
        {
          goto LABEL_252;
        }

        if (v89 >= v217)
        {
          goto LABEL_135;
        }

        LODWORD(v228[0]) = v89;
LABEL_134:
        re::DynamicArray<int>::add(v210, v228);
        goto LABEL_135;
      }

      if (v218 > v89)
      {
        v90 = (v219 + 4 * v89);
LABEL_133:
        LODWORD(v228[0]) = *v90;
        if (LODWORD(v228[0]) != -1)
        {
          goto LABEL_134;
        }
      }

LABEL_135:
      if (++v89 == v87)
      {
        goto LABEL_136;
      }
    }

    v91 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v217, v228);
    if (v91 == -1)
    {
      goto LABEL_135;
    }

    v90 = (*(&v217 + 1) + 8 * v91 + 4);
    goto LABEL_133;
  }

  if (BYTE12(v213) == 2)
  {
LABEL_49:
    v51.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v214);
    goto LABEL_50;
  }

  if (BYTE12(v213) == 1)
  {
    if (v214)
    {
      v31 = v216;
      if (v216)
      {
        (*(*v214 + 40))();
      }
    }

    goto LABEL_50;
  }

  re::internal::assertLog(4, v31, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
  return result;
}